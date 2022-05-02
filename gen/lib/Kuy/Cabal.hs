module Kuy.Cabal
  ( PackageName,
    PackageIdentifier (..),
    PackageDescription (..),
    Library (..),
    ModuleName,
    packageName,
    unPackageName,
    mkPackageName,
    packageFiles,
    toFilePath,
    mkLibrary,

    -- * Parsing and pretty printing

    -- parsePackageDescription,
    verbose,
    packageDescription,
    Parsec.readGenericPackageDescription,
    PrettyPrint.writePackageDescription,
    PrettyPrint.showPackageDescription,
    -- emptyPackageDescription,
  )
where

import Data.DList qualified as DList
import Distribution.ModuleName (ModuleName, toFilePath)
import Distribution.PackageDescription
import Distribution.PackageDescription.Parsec qualified as Parsec
import Distribution.PackageDescription.PrettyPrint qualified as PrettyPrint
import Distribution.Simple
import Distribution.Utils.Path (unsafeMakeSymbolicPath, getSymbolicPath)
import Distribution.Verbosity
import Kuy.Prelude

-- mkPackageDescription :: PackageName -> [Int] -> Library -> PackageDescription
-- mkPackageDescription name version lib =
--   emptyPackageDescription
--     { specVersion = CabalSpecV3_0,
--       package =
--         PackageIdentifier
--           { pkgName = name,
--             pkgVersion = mkVersion version
--           },
--       -- licenseRaw = Right (MPL (mkVersion [2, 0])),
--       -- copyright = "Copyright (c) 2013-2022 Brendan Hay",
--       -- author = "Brendan Hay",
--       -- maintainer = "Brendan Hay <brendan.g.hay+gogol@gmail.com",
--       -- category = "Google",
--       -- homepage = "https://github.com/brendanhay/gogol",
--       -- synopsis = fromString (Text.unpack desc.title),
--       -- description,
--       licenseRaw = Right (MPL (mkVersion [2, 0])),
--       library = Just lib
--     }

mkLibrary :: [ModuleName] -> Library
mkLibrary exposedModules =
  emptyLibrary
    { libName = LMainLibName,
      libExposed = True,
      libVisibility = LibraryVisibilityPublic,
      libBuildInfo =
        emptyBuildInfo
          { buildable = True,
            defaultLanguage = Just GHC2021,
            hsSourceDirs = [unsafeMakeSymbolicPath "lib"],
            otherModules = [],
            targetBuildDepends = [dependency "base" [4, 12]],
            options = PerCompilerFlavor ["-Wall"] []
          },
      exposedModules
    }

dependency :: PackageName -> [Int] -> Dependency
dependency name version =
  mkDependency name (majorBoundVersion (mkVersion version)) mainLibSet

-- Note: we're not recursing into 'BuildInfo' and looking for includes, etc.
packageFiles :: PackageDescription -> [FilePath]
packageFiles PackageDescription{..} =
  DList.toList $
      DList.fromList (map getSymbolicPath licenseFiles)
        <> DList.fromList dataFiles
        <> DList.fromList extraSrcFiles
        <> DList.fromList extraTmpFiles
        <> DList.fromList extraDocFiles

-- Just ModuleName is insufficient, we need the directory the file is in too,
-- but this could be one of multiple directories for each library.

-- packageModules :: PackageDescription -> DList ModuleName
-- packageModules desc@PackageDescription{..} =
--   foldMap (DList.fromList . explicitLibModules) (allLibraries desc)
--     <> foldMap (DList.fromList . exeModules) executables
--     <> foldMap (DList.fromList . foreignLibModules) foreignLibs
--     <> foldMap (DList.fromList . testModules) testSuites
--     <> foldMap (DList.fromList . benchmarkModules) benchmarkModules
