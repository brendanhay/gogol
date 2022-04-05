{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE TemplateHaskell #-}

module Kuy.Store.Cache
  ( -- * Cache-addressable binary storage
    CacheReader,
    CacheWriter,
    getCacheReader,
    writeCache,
    readCache,
  )
where

import Kuy.Store.Fingerprint
import Data.ByteString qualified as ByteString
import Data.GADT.Compare.TH qualified as TH
import Data.Persist qualified as Persist
import Distribution.Utils.Structured
import Kuy.Prelude
import System.FilePath qualified as FilePath
import Type.Reflection (TypeRep, typeRep)
import UnliftIO.Directory qualified as Directory

type CacheReader :: Type -> Type
data CacheReader a = CacheReader
  { hash :: Fingerprint,
    repr :: TypeRep a -- Sadge; carried around only for GEq/GCompare.
  }
  deriving stock (Show, Eq, Ord, Generic)
  deriving anyclass (Hashable)

type CacheWriter :: Type -> Type
newtype CacheWriter a = CacheWriter {hash :: Fingerprint}
  deriving stock (Show, Eq, Ord)
  deriving newtype (Hashable)

getCacheReader :: forall a. Structured a => Fingerprint -> CacheReader a
getCacheReader hash =
  CacheReader
    { hash = fingerprints (pure hash <> pure (fingerprintData (Proxy @a))),
      repr = typeRep @a
    }

readCache ::
  forall a m.
  ( MonadIO m,
    Persist a
  ) =>
  FilePath ->
  CacheReader a ->
  m (Either (CacheWriter a) a)
readCache store reader = do
  let path = store </> "cache" </> renderFingerprint reader.hash

  exists <- Directory.doesPathExist path

  if not exists
    then pure $ Left CacheWriter {hash = reader.hash}
    else do
      -- FIXME: verify the reader's hash prior to reading?

      bytes <- liftIO (ByteString.readFile path)

      -- FIXME: error handling
      either error (pure . Right) (Persist.decode bytes)

writeCache :: (MonadIO m, Persist a) => FilePath -> CacheWriter a -> a -> m ()
writeCache store writer item = do
  let path = store </> "cache" </> renderFingerprint writer.hash

  -- FIXME: verify the writer hash against the written content?

  Directory.createDirectoryIfMissing True (FilePath.takeDirectory path)
    *> liftIO (ByteString.writeFile path (Persist.encode item))

  Directory.getPermissions path
    >>= Directory.setPermissions path
      . Directory.setOwnerWritable False

--

TH.deriveGEq ''CacheReader
TH.deriveGCompare ''CacheReader
