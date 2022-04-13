module Kuy.Driver where

import Data.Dependent.HashMap (DHashMap)
import Data.Dependent.HashMap qualified as DHashMap
import Data.Dependent.Sum (DSum ((:=>)))
import Data.Time qualified as Time
import Kuy.Driver.Query (Query (..))
import Kuy.Driver.Rules qualified as Rules
import Kuy.Prelude
import Kuy.Store.Manifest
import Network.HTTP.Client qualified as Client
import Network.HTTP.Client.TLS qualified as TLS
import Rock (GenRules, Rules, Task, TaskKind, Writer (..))
import Rock qualified
import UnliftIO qualified
import UnliftIO.IORef qualified as IORef
import UnliftIO.MVar qualified as MVar

buildDir :: FilePath
buildDir = "_build"

tempDir :: FilePath
tempDir = buildDir </> "tmp"

execute :: Task Query a -> IO a
execute task = do
  manager <- Client.newManager TLS.tlsManagerSettings

  withTimeSummary $ do
    (result, errors) <- runTask manager buildDir task

    for_ errors putStrLn

    pure result

runTask :: Client.Manager -> FilePath -> Task Query a -> IO (a, [String])
runTask manager store task =
  withManifest store $ \manifestVar -> do
    startedVar <- IORef.newIORef mempty
    threadsVar <- IORef.newIORef mempty
    errorsVar <- IORef.newIORef (mempty :: DHashMap Query (Const [String]))
    consoleVar <- MVar.newMVar ()

    let writeErrors :: Writer TaskKind Query a -> [String] -> Task Query ()
        writeErrors (Writer q) errs =
          unless (null errs) $
            IORef.atomicModifyIORef' errorsVar $
              (,()) . DHashMap.insert q (Const errs)

        ignoreTaskKind :: Query a -> TaskKind -> Task Query ()
        ignoreTaskKind _ _ = pure ()

        traceFetch ::
          GenRules (Writer TaskKind Query) Query ->
          GenRules (Writer TaskKind Query) Query
        traceFetch =
          Rock.traceFetch
            ( \(Writer key) ->
                liftIO $ MVar.withMVar consoleVar $ \() -> putStrLn ("Fetch " <> show key)
            )
            ( \(Writer _key) _ ->
                pure ()
            )

        rules :: Rules Query
        rules =
          Rock.memoiseWithCycleDetection startedVar threadsVar $
            Rock.writer ignoreTaskKind $
              traceFetch $
                Rock.writer writeErrors $
                  Rules.rules manager store manifestVar

    Rock.runTask rules $ do
      result <- task
      errors <- IORef.readIORef errorsVar

      let errorMessages =
            foldMap (\(_ :=> Const errs) -> errs) (DHashMap.toList errors)

      pure (result, errorMessages)

withManifest :: FilePath -> (IORef Manifest -> IO a) -> IO a
withManifest store =
  UnliftIO.bracket
    (IORef.newIORef =<< readManifest path)
    (IORef.readIORef >=> writeManifest path)
  where
    path = store </> "manifest.md5sum"

withTimeSummary :: IO a -> IO a
withTimeSummary action = do
  startTime <- Time.getCurrentTime
  result <- action
  endTime <- Time.getCurrentTime

  putStrLn . mconcat $
    [ "Completed in ",
      show (Time.diffUTCTime endTime startTime),
      "."
    ]

  pure result
