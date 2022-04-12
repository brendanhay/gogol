module Kuy.Command.Generate where

import Control.Concurrent qualified as Concurrent
import Data.Map.Strict qualified as Map
import Data.Set qualified as Set
import Kuy.Cabal qualified as Cabal
import Kuy.CodeGen qualified as CodeGen
import Kuy.Discovery
import Kuy.Driver qualified as Driver
import Kuy.Driver.Query
import Kuy.GHC qualified as GHC
import Kuy.Prelude
import Rock (Task, fetch)
import System.FilePath qualified as FilePath
import UnliftIO qualified
import UnliftIO.Async qualified as Async
import UnliftIO.Directory qualified as Directory

type Target = (ServiceName, Maybe ServiceVersion)

generate :: FilePath -> Set Target -> IO ()
generate outputDir targets = do
  threads <- Concurrent.getNumCapabilities
  Driver.execute (generateAll outputDir threads targets)

generateAll :: FilePath -> Int -> Set Target -> Task Query ()
generateAll outputDir threads targets' =
  case Set.toList targets' of
    -- If no targets were specified, determine all service's preferred version
    -- and generate them concurrently.
    [] ->
      fetch DiscoveryIndex
        >>= Async.pooledMapConcurrentlyN_ threads (generateOne outputDir)
          . map (\s -> (s.name, Just s.version))
          . preferredVersions
    --
    -- If a single target was specified, generate with no conccurrency.
    [target] ->
      generateOne outputDir target
    --
    -- If a set of targets was specified, generate them all concurrently.
    targets ->
      Async.pooledMapConcurrentlyN_ threads (generateOne outputDir) targets

generateOne :: FilePath -> Target -> Task Query ()
generateOne outputDir target@(serviceName, serviceVersion) = do
  fetch (DiscoveryDescription serviceName serviceVersion) >>= \case
    Nothing ->
      liftIO $ putStrLn ("Skipping invalid " ++ show target)
    --
    Just description -> do
      -- FIXME: write to temporary directory then move atomically to location,
      -- only if files have different fingerprints to preserve mtime, etc.
      --
      -- What about readonly?
      (package, modules) <-
        either (UnliftIO.throwString . unlines) pure $
          CodeGen.genPackage description

      let packageName = Cabal.unPackageName (Cabal.packageName package)
          packageDir = outputDir </> packageName
          packageFile = packageDir </> packageName <.> "cabal"

      createParent packageFile
        *> liftIO (Cabal.writePackageDescription packageFile package)

      for_ (Map.toList modules) $ \(moduleName, module') -> do
        let moduleFile = packageDir </> Cabal.toFilePath moduleName <.> "hs"

        createParent moduleFile
          *> liftIO (GHC.writeModuleFile moduleFile module')

createParent :: MonadIO m => FilePath -> m ()
createParent =
  Directory.createDirectoryIfMissing True
    . FilePath.takeDirectory
