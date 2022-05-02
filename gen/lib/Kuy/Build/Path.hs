module Kuy.Build.Path where

import Kuy.Build.Glob
import Kuy.Discovery (ServiceName (..), ServiceVersion (..))
import Kuy.Prelude
import Kuy.Build.Info
import Kuy.Cabal qualified as Cabal

tempRoot :: MonadInfo m => m FilePath
tempRoot = (.tempRoot) <$> buildInfo

buildRoot :: MonadInfo m => m FilePath
buildRoot = (.buildRoot) <$> buildInfo

outputRoot :: MonadInfo m => m FilePath
outputRoot = (.outputRoot) <$> buildInfo

-- packageDefaultsPath :: FilePath
-- packageDefaultsPath =
--   "gen/kuy.cabal"

directoryListPath :: MonadInfo m => m FilePath
directoryListPath =
  buildRoot <&> (</> "discovery/directory-list.json")

restDescriptionPath :: MonadInfo m => m (Glob '[ServiceName, ServiceVersion])
restDescriptionPath =
  buildRoot <&>
    fromString . (</> "discovery/*/*.json")

servicePackagePath :: MonadInfo m => m (Glob '[ServiceName])
servicePackagePath =
  outputRoot <&>
    fromString . (</> "services/gogol-*")

serviceCabalPath :: MonadInfo m => m (Glob '[ServiceName, Cabal.PackageName])
serviceCabalPath =
  outputRoot <&>
    fromString . (</> "services/gogol-*/*.cabal")

serviceModulePath :: MonadInfo m => m (Glob '[ServiceName, FilePath, String])
serviceModulePath =
  outputRoot <&>
    fromString . (</> "services/gogol-*/gen/**/*.hs")
