module Kuy.Driver
  ( execute,
    withHashes,
  )
where

import System.FilePath qualified as FilePath
import Data.Aeson qualified as Aeson
import Kuy.Driver.Query
import Kuy.Driver.Rules qualified as Rules
import Kuy.Driver.Store
import Kuy.Prelude
import Network.HTTP.Client qualified as Client
import Data.ByteString.Lazy qualified as ByteString.Lazy
import Rock
import Data.ByteString.Builder qualified as ByteBuilder
import UnliftIO qualified
import UnliftIO.Directory qualified as Directory
import UnliftIO.IORef qualified as IORef
import UnliftIO.MVar qualified as MVar

execute :: Client.Manager -> Store -> Task Query a -> IO a
execute manager store task =
  withHashes (store.path </> ".hashes.json") $ \hashesVar -> do
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
                Rules.rules manager store hashesVar

    runTask rules task

withHashes :: FilePath -> (IORef Hashes -> IO a) -> IO a
withHashes path =
  UnliftIO.bracket create commit
  where
    commit hashes = do
      Directory.createDirectoryIfMissing True (FilePath.takeDirectory path)

      IORef.readIORef hashes
        >>= ByteString.Lazy.writeFile path
          . ByteBuilder.toLazyByteString
          . encodeHashes

    create = do
      exists <- Directory.doesPathExist path
      hashes <-
        if not exists
          then mempty
          else do
            h <- decodeHashes <$> readFile path

            print h

            pure h

      IORef.newIORef hashes

    -- readJSON =
    --   Aeson.eitherDecodeFileStrict' path >>= \case
    --     Right hashes ->
    --       pure hashes
    --     --
    --     Left err ->
    --       UnliftIO.throwString $
    --         "(withHashes) failed to parse hashes from "
    --           ++ path
    --           ++ " with "
    --           ++ err
