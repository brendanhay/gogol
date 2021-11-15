-- |
-- Module      : Gen.Types.Map
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
module Gen.Types.Map where

import qualified Control.Lens as Lens
import qualified Data.HashMap.Strict as HashMap
import Gen.Prelude

vMapMaybe ::
  (Eq k, Hashable k) =>
  (a -> Maybe b) ->
  HashMap k a ->
  HashMap k b
vMapMaybe f =
  runIdentity
    . kvTraverseMaybe (const (pure . f))

kvTraverseMaybe ::
  (Applicative f, Eq k, Hashable k) =>
  (k -> a -> f (Maybe b)) ->
  HashMap k a ->
  f (HashMap k b)
kvTraverseMaybe f =
  fmap (HashMap.map fromJust . HashMap.filter isJust)
    . HashMap.traverseWithKey f
