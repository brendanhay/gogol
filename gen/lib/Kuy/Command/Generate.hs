module Kuy.Command.Generate where

import Control.Concurrent qualified as Concurrent
import Data.Map.Strict qualified as Map
import Data.Set qualified as Set
import Data.Text qualified as Text
import Distribution.ModuleName qualified as ModuleName
import Distribution.Utils.Generic qualified as Utils
import Kuy.CodeGen qualified as CodeGen
import Kuy.CodeGen.Cabal qualified as Cabal
import Kuy.CodeGen.GHC qualified as GHC
import Kuy.Discovery
import Kuy.Driver qualified as Driver
import Kuy.Driver.Query
import Kuy.Driver.Query (Query (..))
import Kuy.Markdown qualified as Markdown
import Kuy.Prelude
import Rock (MonadFetch, Task, fetch)
import System.FilePath qualified as FilePath
import UnliftIO qualified
import UnliftIO.Async qualified as Async
import UnliftIO.Directory qualified as Directory

generate :: FilePath -> Set (ServiceName, Maybe ServiceVersion) -> IO ()
generate outputDir targets = do
  threads <- Concurrent.getNumCapabilities

  Driver.execute $
    case Set.toList targets of
      -- Build all service's preverred versions found in the index.
      [] -> do
        versions <- preferredVersions <$> fetch DiscoveryIndex

        Async.pooledMapConcurrentlyN_ threads run $
          map (\sid -> (sid.name, Just sid.version)) versions

      -- Avoid pooling overhead if we have exactly one target.
      [x] ->
        run x
      -- Build all supplied targets concurrently.
      xs ->
        Async.pooledMapConcurrentlyN_ threads run xs
  where
    run (name, version) =
      fetch (DiscoveryDescription name version) >>= \case
        Nothing ->
          liftIO $ putStrLn ("Skipping " ++ show (name, version))
        --
        Just description -> do
          -- FIXME: write to temporary directory then move atomically to location,
          -- only if files have different fingerprints to preserve mtime, etc.
          --
          -- What about readonly?

          (package, modules) <-
            either UnliftIO.throwString pure (CodeGen.genPackage description)

          let packageName = Cabal.unPackageName (Cabal.packageName package)
              packageDir = outputDir </> packageName
              packageFile = packageDir </> packageName <.> "cabal"

          createParent packageFile
            *> liftIO (Cabal.writePackageDescription packageFile package)

          for_ (Map.toList modules) $ \(moduleName, module') -> do
            let moduleFile = packageDir </> Cabal.toFilePath moduleName <.> "hs"

            createParent moduleFile
              *> liftIO (GHC.writeModuleFile moduleFile module')

          pure ()

-- Utilities

createParent :: MonadIO m => FilePath -> m ()
createParent = Directory.createDirectoryIfMissing True . FilePath.takeDirectory

writeUTF8File :: MonadIO m => FilePath -> String -> m ()
writeUTF8File path = liftIO . Utils.writeUTF8File path
