module Kuy.Build.Oracle where

import Development.Shake
import Kuy.Cabal qualified as Cabal
import Kuy.Build.Glob
import Kuy.Discovery
import Kuy.Build.Action
import Kuy.Build.Path
import Kuy.Prelude

data CabalFile = CabalFile FilePath
  deriving stock (Show, Eq, Generic)
  deriving anyclass (NFData, Hashable, Binary)

type instance RuleResult CabalFile = Cabal.PackageDescription

data DiscoveryList = DiscoveryList
  deriving stock (Show, Eq, Generic)
  deriving anyclass (NFData, Hashable, Binary)

type instance RuleResult DiscoveryList = DirectoryList

data DiscoveryIndex = DiscoveryIndex
  deriving stock (Show, Eq, Generic)
  deriving anyclass (NFData, Hashable, Binary)

type instance RuleResult DiscoveryIndex = DirectoryIndex

data DiscoveryDescription = DiscoveryDescription ServiceName ServiceVersion
  deriving stock (Show, Eq, Generic)
  deriving anyclass (NFData, Hashable, Binary)

type instance RuleResult DiscoveryDescription = Description

-- Oracles

oracleRules :: Rules ()
oracleRules = do
  cabalFileOracle
  discoveryListOracle
  discoveryIndexOracle
  discoveryDescriptionOracle

-- Cabal

cabalFileOracle :: Rules ()
cabalFileOracle =
  void . addOracleCache $ \(CabalFile path) -> do
    need [path]

    package <-
      traced_ "cabal-read" $
        Cabal.readGenericPackageDescription Cabal.verbose path

    pure (Cabal.packageDescription package)

-- Google Discovery Service

discoveryListOracle :: Rules ()
discoveryListOracle =
  void . addOracleCache $ \DiscoveryList ->
    readFileJSON =<< directoryListPath

discoveryIndexOracle :: Rules ()
discoveryIndexOracle =
  void . addOracleCache $ \DiscoveryIndex ->
    askOracle DiscoveryList <&> \list ->
      newDirectoryIndex list.items

discoveryDescriptionOracle :: Rules ()
discoveryDescriptionOracle =
  void . addOracleCache $ \(DiscoveryDescription name version) -> do
    readFileJSON =<< fmap (renderGlob (name, version)) restDescriptionPath

-- Queries

-- getPackageDefaults :: Action Cabal.PackageDescription
-- getPackageDefaults = askOracle (CabalFile packageDefaultsPath)

getDiscoveryItem :: ServiceName -> Maybe ServiceVersion -> Action DirectoryItem
getDiscoveryItem name mversion = do
  index <- askOracle DiscoveryIndex

  case findPreferredVersion name mversion index of
    Nothing ->
      fail $ "unable to determine discovery description url for "
        ++ show (name, mversion)
    Just item ->
      pure item

getDiscoveryDescription :: ServiceName -> Maybe ServiceVersion -> Action Description
getDiscoveryDescription name mversion = do
  item <- getDiscoveryItem name mversion
  askOracle (DiscoveryDescription item.name item.version)
