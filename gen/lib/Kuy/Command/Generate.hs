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
import UnliftIO.Async qualified as Async
import UnliftIO.Directory qualified as Directory
import UnliftIO.Temporary qualified as Temporary

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
    [] -> do
      services <- preferredVersions <$> fetch DiscoveryIndex

      Async.pooledMapConcurrentlyN_ threads (generateOne outputDir) $
        map (\s -> (s.name, Just s.version)) services
    --
    -- If a single target was specified, generate with no conccurrency.
    [target] ->
      generateOne outputDir target
    --
    -- If a set of targets was specified, generate them all concurrently.
    targets ->
      Async.pooledMapConcurrentlyN_ threads (generateOne outputDir) targets

generateOne :: FilePath -> Target -> Task Query ()
generateOne outputDir target = do
  package <- fetch PackageDescription
  description <- fetch (uncurry DiscoveryDescription target)

  liftIO $
    case CodeGen.genPackage package <$> description of
      Nothing ->
        putStrLn $
          "Skipping invalid " ++ show target
      --
      Just (Left errs) ->
        putStrLn $
          "Error " ++ unlines (show target : errs)
      --
      Just (Right result) ->
        uncurry (writePackage outputDir) result

writePackage ::
  FilePath ->
  Cabal.PackageDescription ->
  Map Cabal.ModuleName GHC.HsModule ->
  IO ()
writePackage outputDir package modules = do
  let packageName = Cabal.unPackageName (Cabal.packageName package)
      packageDir = outputDir </> packageName

  Directory.createDirectoryIfMissing True Driver.tempDir

  -- We can't reliably use withSystemTempDirectory here as I use tmpfs
  -- and end up with 'Invalid cross-device link' errors trying to use
  -- renameDirectory across devices.
  Temporary.withTempDirectory Driver.tempDir packageName $ \tempDir -> do
    -- Write the package's cabal file.
    Cabal.writePackageDescription (tempDir </> packageName <.> "cabal") package

    for_ (Map.toList modules) $ \(moduleName, module') -> do
      -- Write an individual haskell module.
      let moduleFile = tempDir </> Cabal.toFilePath moduleName <.> "hs"

      createParent moduleFile
        *> GHC.writeModuleFile moduleFile module'

    -- FIXME: Make everything readonly before copying
    Directory.removePathForcibly packageDir
      *> createParent packageDir
      *> Directory.renameDirectory tempDir packageDir

createParent :: MonadIO m => FilePath -> m ()
createParent =
  Directory.createDirectoryIfMissing True
    . FilePath.takeDirectory
