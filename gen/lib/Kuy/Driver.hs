module Kuy.Driver
  ( execute,
    execute_,
    concurrently,
  )
where

import Control.Concurrent qualified as Concurrent
import Data.Atomics qualified as Atomics
import Data.ByteString.Builder qualified as ByteBuilder
import Data.Dependent.HashMap (DHashMap)
import Data.Dependent.HashMap qualified as DHashMap
import Data.Dependent.Sum (DSum ((:=>)))
import Data.Time.Clock.POSIX qualified as Time
import Kuy.Driver.Query
import Kuy.Driver.Rules qualified as Rules
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
import UnliftIO.MVar (MVar)
import UnliftIO.MVar qualified as MVar

type Error = String

type Errors = DHashMap Query (Const [Error])

type Traces = DHashMap Query (Const NominalDiffTime)

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

  (start, (result, errors), finish) <-
    (,,)
      <$> Time.getPOSIXTime
      <*> runTask manager "_build" task
      <*> Time.getPOSIXTime

  for_ errors putStrLn

  putStrLn . mconcat $
    [ "Completed in ",
      show (finish - start),
      "."
    ]

  pure result

-- | Concurrently run a list of tasks up to the number of capabilities.
concurrently :: [Task Query a] -> Task Query ()
concurrently = \case
  [] -> pure ()
  [x] -> void x
  xs -> do
    threads <- liftIO (Concurrent.getNumCapabilities)
    Async.pooledMapConcurrentlyN_ threads id xs

runTask :: Client.Manager -> FilePath -> Task Query a -> IO (a, [Error])
runTask manager buildDir task = do
  startedVar <- IORef.newIORef mempty
  threadsVar <- IORef.newIORef mempty
  errorsVar <- IORef.newIORef (mempty :: Errors)
  timingsVar <- MVar.newMVar (mempty :: Traces)

  let verbose = False

      writeErrors :: Writer TaskKind Query a -> [Error] -> Task Query ()
      writeErrors (Writer query) errors =
        unless (null errors) $
          liftIO . Atomics.atomicModifyIORefCAS errorsVar $
            (,()) . DHashMap.insert query (Const errors)

      ignoreTaskKind :: Query a -> TaskKind -> Task Query ()
      ignoreTaskKind _query _kind =
        pure ()

      traceFetch ::
        GenRules (Writer TaskKind Query) Query ->
        GenRules (Writer TaskKind Query) Query
      traceFetch =
        Rock.traceFetch
          (traceStart verbose timingsVar)
          (traceFinish verbose timingsVar)

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

    let errorMessages =
          foldMap (\(_ :=> Const errs) -> errs) (DHashMap.toList errors)

    pure (result, errorMessages)

saveManifest :: Task Query ()
saveManifest = do
  path <- (.manifest) <$> fetch BuildInfo

  manifestVar <- fetch ArtefactManifest
  manifest <- IORef.readIORef manifestVar

  Directory.createDirectoryIfMissing True (FilePath.takeDirectory path)

  liftIO . IO.withBinaryFile path IO.WriteMode $ \handle ->
    ByteBuilder.hPutBuilder handle (renderManifest manifest)

traceStart :: MonadIO m => Bool -> MVar Traces -> Writer TaskKind Query a -> m ()
traceStart verbose timingsVar (Writer query) =
  liftIO . MVar.modifyMVar_ timingsVar $ \m -> do
    for_ (renderQuery verbose query) $ \message ->
      putStrLn message

    start <- Time.getPOSIXTime

    pure (DHashMap.insert query (Const start) m)

traceFinish :: MonadIO m => Bool -> MVar Traces -> Writer TaskKind Query a -> a -> m ()
traceFinish verbose timingsVar (Writer query) _value =
  liftIO . MVar.withMVar timingsVar $ \m ->
    void . runMaybeT $ do
      guard (isTimedQuery query)

      Const start <- liftMaybe (DHashMap.lookup query m)
      message <- liftMaybe (renderQuery verbose query)
      finish <- lift Time.getPOSIXTime

      lift . putStrLn $
        message
          ++ " completed in "
          ++ show (finish - start)
          ++ "s"
