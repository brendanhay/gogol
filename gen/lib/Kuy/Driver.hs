module Kuy.Driver
  ( execute,
    withManifest,
  )
where

import Kuy.Driver.Query
import Kuy.Driver.Rules qualified as Rules
import Kuy.Store.Manifest
import Kuy.Prelude
import Network.HTTP.Client qualified as Client
import Rock
import UnliftIO qualified
import UnliftIO.IORef qualified as IORef
import UnliftIO.MVar qualified as MVar

execute :: Client.Manager -> FilePath -> Task Query a -> IO a
execute manager store task =
  withManifest (store </> ".manifest.json") $ \manifestVar -> do
    startedVar <- IORef.newIORef mempty
    threadsVar <- IORef.newIORef mempty
    consoleVar <- MVar.newMVar (0 :: Int)

    let ignoreTaskKind ::
          GenRules (Writer TaskKind f) f ->
          Rules f
        ignoreTaskKind rs key =
          fst <$> rs (Writer key)

        traceFetch_ ::
          GenRules (Writer TaskKind Query) Query ->
          GenRules (Writer TaskKind Query) Query
        traceFetch_ =
          traceFetch
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

        rules :: Rules Query
        rules =
          memoiseWithCycleDetection startedVar threadsVar $
            ignoreTaskKind $
              traceFetch_ $
                Rules.rules manager store manifestVar

    runTask rules task

withManifest :: FilePath -> (IORef Manifest -> IO a) -> IO a
withManifest path =
  UnliftIO.bracket
      (IORef.newIORef =<< readManifest path)
      (IORef.readIORef >=> writeManifest path)
