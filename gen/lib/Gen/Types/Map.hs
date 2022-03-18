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
