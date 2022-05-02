module Kuy.Build.Rule where

import Data.List qualified as List
import Kuy.Cabal qualified as Cabal
import Kuy.CodeGen qualified as CodeGen
import Data.Text qualified as Text
import Kuy.Text.Markdown qualified as Markdown
import Development.Shake
import Kuy.Build.Action
import Kuy.Build.Info
import Kuy.Build.Oracle qualified as Oracle
import Kuy.Build.Path
import Kuy.Build.Console
import Kuy.Discovery
import Kuy.Prelude
import Kuy.Build.Glob
import Data.Map.Strict qualified as Map
import Kuy.GHC qualified as GHC

discoveryRules :: Rules ()
discoveryRules = do
  downloadDirectoryList
  downloadRestDescription
  generatePackage

downloadDirectoryList :: Rules ()
downloadDirectoryList = do
  path <- directoryListPath
  path %> downloadURL "https://discovery.googleapis.com/discovery/v1/apis"

downloadRestDescription :: Rules ()
downloadRestDescription = do
  restDescriptionPath -%> \(name, version) path -> do
    item <- Oracle.getDiscoveryItem name (Just version)
    downloadURL item.discoveryRestUrl path

-- generatorRules :: Rules ()
-- generatorRules = do
--   generatePackage

-- FIXME: have a copy command to move build outputs to final location
-- -- Build
--     traced "cabal-copy" $
--         C.defaultMainWithHooksNoReadArgs C.autoconfUserHooks gpd
--             [ "copy", "--builddir", ctxPath, "--target-package-db", pkgDbPath, v ]

generatePackage :: Rules ()
generatePackage = do
    -- root <- outputRoot

    moduleCache <- generateModules

    serviceCabalPath -%> \(serviceName, packageName) path -> do
      packageRoot <- renderGlob (Solo serviceName) <$> servicePackagePath

      description@Description
        { title,
            description = markdown
        } <- Oracle.getDiscoveryDescription serviceName Nothing

      moduleNames <- Map.keys <$> moduleCache serviceName description.version

      defaults <- askOracle (Oracle.CabalFile "gen/kuy.cabal")

      let packageId =
            defaults.package
              { Cabal.pkgName = packageName
              }

          package =
            defaults
                { Cabal.package = packageId,
                Cabal.synopsis = fromString (Text.unpack title),
                Cabal.description = fromString (Text.unpack (Markdown.renderHaddock markdown)),
                Cabal.library = Just (Cabal.mkLibrary moduleNames)
                }

          packageFiles =
            [packageRoot </> file | file <- Cabal.packageFiles package]

          moduleFiles =
            [packageRoot </> "gen" </> Cabal.toFilePath name <.> "hs" | name <- moduleNames]

      need packageFiles -- ++ moduleFiles)

      -- produces moduleFiles

      -- Write the package's cabal file.
      writeFile' path (Cabal.showPackageDescription package)



generateModules :: Rules (ServiceName -> ServiceVersion -> Action (Map Cabal.ModuleName GHC.HsModule))
generateModules = do
  fmap curry . newCache $ \(name, version) -> do
      description <- Oracle.getDiscoveryDescription name (Just version)

      case CodeGen.genModules description of
        Right ms -> pure ms
        Left errs -> do
          traverse_ putFailure errs

          let count = length errs

          fail . unwords $
              [ "package generation failed with"
              , show count
              , case count of
                  1 -> "error"
                  _ -> "errors"
              ]

    -- void . forP (Cabal.packageFiles defaults) $ \path ->
    --   copyFileChanged ("gen" </> path) (packagePath </> path)

    -- description@Description
    --    { title,
    --      description = markdown
    --    } <- Oracle.getDiscoveryDescription name mversion

    -- let package =
    --       defaults
    --         { Cabal.package =
    --             defaults.package { Cabal.pkgName = Cabal.mkPackageName packageName },
    --           Cabal.synopsis =
    --           fromString (Text.unpack title),
    --           Cabal.description =
    --           fromString (Text.unpack (Markdown.renderHaddock markdown)),
    --           Cabal.library =
    --           Just (Cabal.mkLibrary [])
    --         }

    -- modules <-
    --   case CodeGen.genModules description of
    --     Right ms -> pure ms
    --     Left errs -> do
    --       traverse_ putFailure errs

    --       let count = length errs

    --       fail . unwords $
    --           [ "package generation failed with"
    --           , show count
    --           , case count of
    --               1 -> "error"
    --               _ -> "errors"
    --           ]

    -- -- Write the package's cabal file.
    -- writeFile' (packagePath </> packageName <.> "cabal") (Cabal.showPackageDescription package)

    -- -- Write the individual haskell modules.
    -- void . forP (Map.toList modules) $ \(moduleName, module') -> do
    --   let moduleFile = packagePath </> "gen" </> Cabal.toFilePath moduleName <.> "hs"

    --   GHC.writeModuleFile moduleFile module'
    --       >>= writeFileText moduleFile

