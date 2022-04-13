module Kuy.Command.Build where

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

ignored :: Set Target
ignored =
  Set.fromList
    [ ("analyticshub", Just "v1beta1"),
      ("container", Just "v1")
    ]

build :: Set Target -> IO ()
build targets =
  Driver.execute $ do
    selected <-
      if not (Set.null targets)
        then pure targets
        else do
          index <- fetch DiscoveryIndex

          let services =
                Set.fromList
                  [ (item.name, Just item.version)
                    | item <- preferredVersions index
                  ]

          pure (services `Set.difference` ignored)

    Driver.concurrently $
      map buildPackage (Set.toList selected)

buildPackage :: Target -> Task Query ()
buildPackage target = do
  fetch (uncurry DiscoveryDescription target) >>= \case
    Nothing ->
      liftIO . putStrLn $
        "Skipping invalid " ++ show target
    --
    Just description ->
      CodeGen.genPackage description
        >>= uncurry writePackage

writePackage ::
  Cabal.PackageDescription ->
  Map Cabal.ModuleName GHC.HsModule ->
  Task Query ()
writePackage package modules = do
  info <- fetch BuildInfo

  let packageName = Cabal.unPackageName (Cabal.packageName package)
      packageDir = info.output </> packageName

  Directory.createDirectoryIfMissing True info.temporary

  -- We can't reliably use withSystemTempDirectory here as I use tmpfs
  -- and end up with 'Invalid cross-device link' errors trying to use
  -- renameDirectory across devices.

  Temporary.withTempDirectory info.temporary packageName $ \workDir -> do
    -- Write the package's cabal file.
    liftIO (Cabal.writePackageDescription (workDir </> packageName <.> "cabal") package)

    -- I've initially hardcoded the concurrency here since:
    --
    -- a) IO-bound
    -- b) Potentially fanned out targets, wide vs deep, etc.
    --
    -- It is still desirable though, since we're pretty-printing the haskell
    -- sources and then parsing them again, to format them via ormolu and
    -- potentially exact print comments.
    --
    -- Possibly could allow wide-vs-deep configuration, where if you are processing
    -- less targets than the number of capabilities, you go deep - spinning up more
    -- threads within a target.
    Async.pooledForConcurrentlyN_ 4 (Map.toList modules) $ \(moduleName, module') -> do
      -- Write an individual haskell module.
      let moduleFile = workDir </> Cabal.toFilePath moduleName <.> "hs"

      createParent moduleFile
        *> liftIO (GHC.writeModuleFile moduleFile module')

    -- FIXME: Make everything readonly before copying
    Directory.removePathForcibly packageDir
      *> createParent packageDir
      *> Directory.renameDirectory workDir packageDir

createParent :: MonadIO m => FilePath -> m ()
createParent =
  Directory.createDirectoryIfMissing True
    . FilePath.takeDirectory
