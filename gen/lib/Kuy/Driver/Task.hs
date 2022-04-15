module Kuy.Driver.Task
  ( concurrently,
    execute,
    execute_,
  )
where

import Control.Concurrent qualified as Concurrent
import Data.Atomics qualified as Atomics
import Data.ByteString.Builder qualified as ByteBuilder
import Data.Dependent.HashMap qualified as DHashMap
import Data.Time.Clock.POSIX qualified as Time
import System.Exit qualified as Exit
import Kuy.Driver.Error
import Kuy.Driver.Query
import Kuy.Driver.Rules qualified as Rules
import Kuy.Driver.Trace
import Kuy.Prelude
import Kuy.Store.Manifest
import Network.HTTP.Client qualified as Client
import Network.HTTP.Client.TLS qualified as TLS
import Rock (GenRules, Rules, Task, TaskKind, Writer (..), fetch)
import Rock qualified
import System.FilePath qualified as FilePath
import System.IO qualified as IO
import UnliftIO qualified
import UnliftIO.Async qualified as Async
import UnliftIO.Directory qualified as Directory
import UnliftIO.IORef qualified as IORef
import UnliftIO.MVar qualified as MVar

-- | Concurrently run a list of tasks up to the number of capabilities.
concurrently :: [Task Query a] -> Task Query ()
concurrently = \case
  [] -> pure ()
  [x] -> void x
  xs -> do
    limit <- liftIO Concurrent.getNumCapabilities
    Async.pooledMapConcurrentlyN_ limit id xs

-- | Execute a driver task and save the generated artefact manifest.
execute :: Task Query a -> IO a
execute task =
  execute_ (task `UnliftIO.finally` saveManifest)

-- | Execute a driver task _without_ saving the generated artefact manifest.
--
-- This is useful for implementing a command like @clean@, where you
-- don\'t want to write out an empty manifest after deleting the
-- previous one.
execute_ :: Task Query a -> IO a
execute_ task = do
  manager <- Client.newManager TLS.tlsManagerSettings

  withSummary $
    runTask manager "_build" task

withSummary :: IO (a, Errors) -> IO a
withSummary action = do
  start <- Time.getPOSIXTime
  (result, errors) <- action
  finish <- Time.getPOSIXTime

  let duration = show (finish - start) <> "s"

  count <- reportErrors errors

  putStrLn . unwords $
    case count of
      0 ->
        [ "Completed in",
          duration
        ]
      _ ->
        [ "Completed with",
          show count,
          case count of
            1 -> "error"
            _ -> "errors",
          "in",
          duration
        ]

  unless (count == 0) $
    Exit.exitFailure

  pure result

runTask :: Client.Manager -> FilePath -> Task Query a -> IO (a, Errors)
runTask manager buildDir task = do
  startedVar <- IORef.newIORef mempty
  threadsVar <- IORef.newIORef mempty
  errorsVar <- IORef.newIORef (mempty :: Errors)
  tracesVar <- MVar.newMVar (mempty :: Traces)

  let verbose = False

      writeErrors :: Writer TaskKind Query a -> [Error] -> Task Query ()
      writeErrors (Writer query) errors =
        unless (null errors) $
          liftIO . Atomics.atomicModifyIORefCAS errorsVar $
            (,()) . DHashMap.insertWith mappend query (Const errors)

      ignoreTaskKind :: Query a -> TaskKind -> Task Query ()
      ignoreTaskKind _query _kind =
        pure ()

      traceFetch ::
        GenRules (Writer TaskKind Query) Query ->
        GenRules (Writer TaskKind Query) Query
      traceFetch =
        Rock.traceFetch
          (traceStart verbose tracesVar)
          (traceFinish verbose tracesVar)

      rules :: Rules Query
      rules =
        Rock.memoiseWithCycleDetection startedVar threadsVar $
          Rock.writer ignoreTaskKind $
            traceFetch $
              Rock.writer writeErrors $
                Rules.rules manager buildDir

  Rock.runTask rules $ do
    result <- task
    errors <- IORef.readIORef errorsVar

    -- let errorMessages =
    --       foldMap (\(_ :=> Const errs) -> errs) (DHashMap.toList errors)

    pure (result, errors)

saveManifest :: Task Query ()
saveManifest = do
  path <- (.manifest) <$> fetch BuildInfo

  manifestVar <- fetch StoreManifest
  manifest <- IORef.readIORef manifestVar

  Directory.createDirectoryIfMissing True (FilePath.takeDirectory path)

  liftIO . IO.withBinaryFile path IO.WriteMode $ \handle ->
    ByteBuilder.hPutBuilder handle (renderManifest manifest)
