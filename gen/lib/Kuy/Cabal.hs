module Kuy.Cabal
  ( PackageName,
    PackageIdentifier (..),
    PackageDescription (..),
    Library (..),
    ModuleName,
    packageName,
    unPackageName,
    toFilePath,
    mkPackageName,
    -- mkPackageDescription,
    mkLibrary,

    -- * IO
    PrettyPrint.writePackageDescription,
    parsePackageDescription,
  )
where

import Distribution.Parsec.Error (PError)
import Distribution.CabalSpecVersion (CabalSpecVersion (..))
import Distribution.ModuleName (ModuleName, toFilePath)
import Distribution.PackageDescription
import Distribution.PackageDescription.Parsec qualified as Parsec
import Distribution.PackageDescription.PrettyPrint qualified as PrettyPrint
import Distribution.Simple
import Distribution.Utils.Path (unsafeMakeSymbolicPath)
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

-- Conversions

parsePackageDescription :: ByteString -> Either (NonEmpty String) PackageDescription
parsePackageDescription =
  bimap (fmap show . snd) packageDescription
    . snd
    . Parsec.runParseResult
    . Parsec.parseGenericPackageDescription

-- convertModuleName :: GHC.ModuleName -> ModuleName
-- convertModuleName = fromString . GHC.moduleNameString
