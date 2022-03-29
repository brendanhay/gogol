module Kuy.Driver
  ( execute
  , withHashes
  ) where

import UnliftIO.Directory qualified as Directory
import UnliftIO qualified
import UnliftIO.IORef qualified as IORef
import UnliftIO.MVar qualified as MVar
import Kuy.Prelude
import Rock
import Kuy.Driver.Query
import Kuy.Driver.Rules  qualified as Rules
import Network.HTTP.Client qualified as Client
import Data.Aeson qualified as Aeson
import Kuy.Driver.Store

execute :: Client.Manager -> Store -> Task Query a -> IO a
execute manager store task = 
 withHashes store $ \hashes -> do
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
          (\(Writer key) -> liftIO $ MVar.modifyMVar_ consoleVar $ \n -> do
            putStrLn $ "Fetch " <> show key
            pure $ n + 1)
          (\(Writer _key) _ -> liftIO $ MVar.modifyMVar_ consoleVar $ \n -> do
            -- putStrLn $ "Complete " <> show key
            pure $ n - 1)

          -- (\(Writer key) -> liftIO $ MVar.modifyMVar_ consoleVar $ \n -> do
          --   putStrLn $ fold (replicate n "| ") <> "fetching " <> show key
          --   pure $ n + 1)
          -- (\_ _ -> liftIO $ MVar.modifyMVar_ consoleVar $ \n -> do
          --   putStrLn$ fold (replicate (n - 1) "| ") <> "*"
          --   pure $ n - 1)

      rules :: Rules Query
      rules =
         memoiseWithCycleDetection startedVar threadsVar
          $ ignoreTaskKind
          $ traceFetch_
          $ Rules.rules manager store hashes

  runTask rules task

withHashes :: Store -> (IORef Hashes -> IO a) -> IO a
withHashes store =
  UnliftIO.bracket create commit
 where
    path = store.path </> ".hashes.json"

    commit hashes = do
      hashes <- IORef.readIORef hashes
      Aeson.encodeFile path hashes

    create = do
      exists <- Directory.doesPathExist path
      hashes <-
        if not exists
          then mempty <$ Directory.createDirectoryIfMissing True store.path
          else readHashes

      IORef.newIORef hashes

    readHashes =
       Aeson.eitherDecodeFileStrict' path >>= \case
            Right ok -> pure ok
            Left err ->
                UnliftIO.throwString $
                    "failed to deserialise hashes from "
                    ++ path
                    ++ " with "
                    ++ err

