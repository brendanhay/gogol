{-# LANGUAGE TemplateHaskell #-}

module Kuy.Driver.Query where

import Data.GADT.Compare.TH qualified as TH
import Data.GADT.Show.TH qualified as TH
import Data.Hashable qualified as Hashable
import Data.Some (Some (Some))
import Kuy.Cabal qualified as Cabal
import Kuy.Discovery
import Kuy.GHC qualified as GHC
import Kuy.Prelude
import Kuy.Store.Artefact
import Kuy.Store.Cache
import Kuy.Store.Fingerprint
import Kuy.TH qualified as TH
import Kuy.Unit (Unit)

-- type Query :: Type -> Type
data Query a where
  --
  FileBytes ::
    FilePath ->
    Query ByteString
  --
  FileHash ::
    FilePath ->
    Query Fingerprint
  -- Cache content is either absent, in which case we return a unique slot
  -- to write to, or we returned the sucessfully read bytes.
  CachedBytes ::
    Persist a =>
    CacheKey a ->
    Query (Either (CacheWriter a) a)
  -- If you have an ArtefactKey it's proof the file must exist.
  ArtefactBytes ::
    Artefact ->
    Query ByteString
  -- We can only attempt to read a local artefact as it might not exist.
  StoredArtefact ::
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
  DiscoveryDescription ::
    ServiceName ->
    Maybe ServiceVersion ->
    Query (Maybe Description)
  --
  PackageDefaults ::
    Query Cabal.PackageDescription
  --
  CompiledUnit ::
    TH.ModName ->
    Unit ->
    Query ([GHC.HsDecl'], Set TH.ModName, Set TH.Name)

deriving instance Show (Query a)

deriving instance Eq (Query a)

TH.deriveGEq ''Query
TH.deriveGCompare ''Query
TH.deriveGShow ''Query

instance Hashable (Query a) where
  hashWithSalt salt = \case
    FileBytes a -> tag salt 0 a
    FileHash a -> tag salt 1 a
    CachedBytes a -> tag salt 2 a
    ArtefactBytes a -> tag salt 3 a
    StoredArtefact a -> tag salt 4 a
    RemoteArtefact a b -> tag salt 5 (a, b)
    DiscoveryIndex -> tag salt 6 ()
    DiscoveryDescription a b -> tag salt 7 (a, b)
    PackageDefaults -> tag salt 8 ()
    CompiledUnit a b -> tag salt 9 (a, b)
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
