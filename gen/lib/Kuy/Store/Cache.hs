type CacheReader :: Type -> Type
data CacheReader a = CacheReader
  { hash :: GHC.Fingerprint,
    repr :: TypeRep a -- Sadge; carried around only for GEq/GCompare.
  }
  deriving stock (Show, Eq, Ord, Generic)
  deriving anyclass (Hashable)

type CacheWriter :: Type -> Type
newtype CacheWriter a = CacheWriter {hash :: GHC.Fingerprint}
  deriving stock (Show, Eq, Ord)
  deriving newtype (Hashable)

newCache :: forall a. Structured a => GHC.Fingerprint -> CacheReader a
newCache key =
  CacheReader
    { hash =
        GHC.fingerprintFingerprints
          [ key.hash,
            structureHash (Proxy @a)
          ],
      repr = typeRep @a
    }

writeCache :: (MonadIO m, Persist a) => Store -> CacheWriter a -> a -> m ()
writeCache store writer item = do
  let path = store.path </> ".cas" </> fingerprintPath writer.hash

  -- FIXME: verify the writer hash against the written content?

  createParent path
    *> liftIO (ByteString.writeFile path (Persist.encode item))
    *> setReadOnly path

readCache ::
  forall a m.
  ( MonadIO m,
    Persist a
  ) =>
  Store ->
  CacheReader a ->
  m (Either (CacheWriter a) a)
readCache store reader = do
  let path = store.path </> ".cas" </> fingerprintPath reader.hash

  exists <- Directory.doesPathExist path

  if not exists
    then pure $ Left CacheWriter {hash = reader.hash}
    else do
      -- FIXME: verify the reader's hash prior to reading?

      bytes <- liftIO (ByteString.readFile path)

      -- FIXME: error handling
      either error (pure . Right) (Persist.decode bytes)

