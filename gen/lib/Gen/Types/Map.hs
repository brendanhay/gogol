-- Module      : Gen.Types.Map
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)

module Gen.Types.Map where

import Control.Lens
import Data.Map.Strict (Map)
import qualified Data.Map.Strict as Map
import Data.Maybe

vMapMaybe ::
  Ord k =>
  (a -> Maybe b) ->
  Map k a ->
  Map k b
vMapMaybe f = runIdentity . kvTraverseMaybe (const (pure . f))

kvTraverseMaybe ::
  (Applicative f, Ord k) =>
  (k -> a -> f (Maybe b)) ->
  Map k a ->
  f (Map k b)
kvTraverseMaybe f =
  fmap (Map.map fromJust . Map.filter isJust)
    . Map.traverseWithKey f
