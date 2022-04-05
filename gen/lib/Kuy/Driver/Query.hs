{-# LANGUAGE TemplateHaskell #-}

module Kuy.Driver.Query where

import Data.GADT.Compare.TH qualified as TH
import Data.GADT.Show.TH qualified as TH
import Data.Hashable qualified as Hashable
import Data.Some (Some (Some))
import Kuy.Discovery
import Kuy.Store.Cache
import Kuy.Store.Artefact
import Kuy.Prelude

type Query :: Type -> Type
data Query a where
  -- Cache content is either absent, in which case we return a unique slot
  -- to write to, or we returned the read bytes.
  CachedBytes ::
    Persist a =>
    CacheReader a ->
    Query (Either (CacheWriter a) a)
  -- If you have an ArtefactKey it's proof the file must exist.
  ArtefactBytes ::
    Artefact ->
    Query ByteString
  -- We can only attempt to read a local artefact as it might not exist.
  LocalArtefact ::
    FilePath ->
    Query (Maybe Artefact)
  -- We download a remote artefact using the supplied url, or die trying.
  RemoteArtefact ::
    String ->
    FilePath ->
    Query Artefact
  --
  DiscoveryIndex ::
    Query DirectoryIndex
  --
  DiscoveryItem ::
    ServiceName ->
    Maybe ServiceVersion ->
    Query (Maybe DirectoryItem)
  --
  DiscoveryDescription ::
    ServiceName ->
    Maybe ServiceVersion ->
    Query (Maybe Description)

deriving instance Show (Query a)

deriving instance Eq (Query a)

TH.deriveGEq ''Query
TH.deriveGCompare ''Query
TH.deriveGShow ''Query

instance Hashable (Query a) where
  hashWithSalt salt = \case
    CachedBytes a -> tag salt 1 a
    ArtefactBytes a -> tag salt 2 a
    LocalArtefact a -> tag salt 3 a
    RemoteArtefact a b -> tag salt 4 (a, b)
    DiscoveryIndex -> tag salt 5 ()
    DiscoveryItem a b -> tag salt 6 (a, b)
    DiscoveryDescription a b -> tag salt 7 (a, b)
  {-# INLINE hashWithSalt #-}

instance Hashable (Some Query) where
  hashWithSalt salt (Some query) = salt `Hashable.hashWithSalt` query
  {-# INLINE hashWithSalt #-}

tag :: Hashable a => Int -> Int -> a -> Int
tag salt tag payload =
  salt
    `Hashable.hashWithSalt` tag
    `Hashable.hashWithSalt` payload
{-# INLINE tag #-}
