module Kuy.Command.Generate where

import Data.Map.Strict qualified as Map
import Data.Set qualified as Set
import Data.Text qualified as Text
import Development.Shake
import Kuy.Build.Action
import Kuy.Build.Info
import Kuy.Build.Path
import Kuy.Build.Oracle
import Kuy.Build.Rule
import Kuy.Cabal qualified as Cabal
import Kuy.Discovery
import Kuy.Prelude
import Kuy.Text.Markdown qualified as Markdown

type Target = (ServiceName, Maybe ServiceVersion)

ignoredTargets :: Set Target
ignoredTargets =
  Set.fromList
    [ ("analyticshub", Just "v1beta1"),
      ("container", Just "v1")
    ]

generate :: Set Target -> Action ()
generate targets = do
  selected <-
    if not (Set.null targets)
      then pure targets
      else do
        index <- askOracle DiscoveryIndex

        let services =
              Set.fromList
                [ (item.name, Just item.version)
                  | item <- preferredVersions index
                ]

        pure (services `Set.difference` ignoredTargets)

  root <- outputRoot

  need [ root </> "services/gogol-" <> Text.unpack name.text </> "gogol-" <> Text.unpack name.text <.> "cabal"
       | (name, _version) <- Set.toList selected
       ]

  -- void . forP (Set.toList selected) $ \(name, mversion) ->
  --   generatePackage name mversion
