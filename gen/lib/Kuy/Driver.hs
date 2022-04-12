module Kuy.Driver where

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

execute :: Task Query a -> IO a
execute task = do
  manager <- Client.newManager TLS.tlsManagerSettings

  withTimeSummary $
    runTask manager "_kuy" task

runTask :: Client.Manager -> FilePath -> Task Query a -> IO a
runTask manager store task =
  withManifest (store </> "manifest.json") $ \manifestVar -> do
    startedVar <- IORef.newIORef mempty
    threadsVar <- IORef.newIORef mempty
    consoleVar <- MVar.newMVar (0 :: Int)

    let ignoreTaskKind_ ::
          GenRules (Writer TaskKind f) f ->
          Rules f
        ignoreTaskKind_ rules key =
          fst <$> rules (Writer key)

        traceFetch_ ::
          GenRules (Writer TaskKind Query) Query ->
          GenRules (Writer TaskKind Query) Query
        traceFetch_ =
          Rock.traceFetch
            ( \(Writer key) -> liftIO $
                MVar.modifyMVar_ consoleVar $ \n -> do
                  putStrLn $ "Fetch " <> show key
                  pure $ n + 1
            )
            ( \(Writer _key) _ -> liftIO $
                MVar.modifyMVar_ consoleVar $ \n -> do
                  -- putStrLn $ "Complete " <> show key
                  pure $ n - 1
            )

        -- (\(Writer key) -> liftIO $ MVar.modifyMVar_ consoleVar $ \n -> do
        --   putStrLn $ fold (replicate n "| ") <> "fetching " <> show key
        --   pure $ n + 1)
        -- (\_ _ -> liftIO $ MVar.modifyMVar_ consoleVar $ \n -> do
        --   putStrLn$ fold (replicate (n - 1) "| ") <> "*"
        --   pure $ n - 1)

        rules_ :: Rules Query
        rules_ =
          Rock.memoiseWithCycleDetection startedVar threadsVar $
            ignoreTaskKind_ (traceFetch_ (Rules.rules manager store manifestVar))

    Rock.runTask rules_ task

withManifest :: FilePath -> (IORef Manifest -> IO a) -> IO a
withManifest path =
  UnliftIO.bracket
    (IORef.newIORef =<< readManifest path)
    (IORef.readIORef >=> writeManifest path)

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
