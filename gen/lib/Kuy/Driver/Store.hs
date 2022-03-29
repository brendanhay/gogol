{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE TemplateHaskell #-}

module Kuy.Driver.Store
  ( Store (..),

    -- * Hashes
    Hashes,
    isKnownHash,
    insertHash,

    -- * Hash-verified artefact storage
    Artefact,
    newArtefact,
    downloadArtefact,
    readArtefact,

     -- * Content-addressable binary storage
    ContentReader,
    ContentWriter,
    newContent,
    writeContent,
    readContent,
  ) where

import Data.GADT.Compare.TH qualified as TH
import Data.GADT.Show.TH qualified as TH
import Type.Reflection (TypeRep, typeRep)
import System.FilePath qualified as FilePath
import Data.Function qualified as Function
import Network.HTTP.Client qualified as Client
import Data.Persist qualified as Persist
import UnliftIO.Directory qualified as Directory
import UnliftIO.Temporary qualified as Temporary
import UnliftIO qualified
import Data.ByteString qualified as ByteString
import Data.Coerce (coerce)
import Distribution.Utils.Structured
import GHC.Fingerprint qualified as GHC
import Data.Aeson qualified as Aeson
import Data.Text qualified as Text
import Kuy.Prelude
import Data.Map.Strict qualified as Map
import GHC.Utils.Fingerprint qualified as GHC.Utils
import Data.Some

newtype Store = Store { path :: FilePath }
  deriving stock (Show)
  deriving newtype (IsString)

newtype Hashes = Hashes { hashes :: Map FilePath GHC.Fingerprint }
  deriving stock (Show)
  deriving newtype (Semigroup, Monoid)

instance ToJSON Hashes where
  toJSON (Hashes m) = Aeson.toJSON (Map.map show m)

instance FromJSON Hashes where
  parseJSON value = do
    m <- Aeson.parseJSON value
    pure $! Hashes (Map.map GHC.Utils.readHexFingerprint m)

isKnownHash :: Artefact -> Hashes -> Bool
isKnownHash x m =
  fromMaybe False $ do
    hash <- Map.lookup x.path m.hashes
    pure (x.hash == hash)

insertHash :: Artefact -> Hashes -> Hashes
insertHash x m =
  m { hashes = Map.insert x.path x.hash m.hashes
    }

-- | An artefact key is proof the filepath exists (at that point in time)
-- with the supplied fingerprint.
data Artefact = Artefact
  { hash :: GHC.Fingerprint,
    path :: FilePath
  }
  deriving stock (Show, Ord, Generic)

instance Eq Artefact where
  a == b = a.hash == b.hash

instance Hashable Artefact where
  hashWithSalt salt k = salt `hashWithSalt` k.hash

newArtefact :: MonadIO m => Store -> FilePath -> m (Maybe Artefact)
newArtefact store name =
  liftIO $ do
    let path = store.path </> "ac" </> name

    exists <- Directory.doesPathExist path

    if not exists
      then pure Nothing
      else do
        hash <- GHC.getFileHash path
        pure (Just Artefact{hash, path})

downloadArtefact ::
  MonadIO m =>
  Client.Manager ->
  Store ->
  String ->
  FilePath ->
  m Artefact
downloadArtefact manager store url name =
 liftIO $ do
  let path = store.path </> "ac" </> name

  request <-
    Client.parseUrlThrow url <&> \initial ->
      initial
        { Client.requestHeaders =
          [ ("User-Agent", "gogol/haskell")
          ]
        }

  Temporary.withSystemTempFile "kuy.download" $ \temp handle -> do
    Client.withResponse request manager $ \response -> do
      Function.fix $ \loop -> do
        bytes <- Client.brRead (Client.responseBody response)

        unless (ByteString.null bytes) $
          ByteString.hPut handle bytes
            *> loop

    UnliftIO.hClose handle
        *> createParent path
        *> Directory.copyFile temp path

    hash <- GHC.getFileHash path

    pure Artefact{hash, path}

readArtefact :: MonadIO m => Artefact -> m ByteString
readArtefact key = liftIO (ByteString.readFile key.path)

type ContentReader :: Type -> Type

data ContentReader a = ContentReader
  { hash :: GHC.Fingerprint
  , repr :: TypeRep a -- Sadge; carried around only for GEq/GCompare.
  }
  deriving stock (Show, Eq, Ord, Generic)
  deriving anyclass (Hashable)

type ContentWriter :: Type -> Type

newtype ContentWriter a = ContentWriter { hash :: GHC.Fingerprint }
  deriving stock (Show, Eq, Ord)
  deriving newtype (Hashable)

newContent :: forall a. Structured a => Artefact -> ContentReader a
newContent key =
   ContentReader
     {
    hash =
      GHC.fingerprintFingerprints
        [ key.hash,
          structureHash (Proxy @a)
        ],
    repr = typeRep @a
    }

writeContent :: (MonadIO m, Persist a) => Store -> ContentWriter a -> a -> m ()
writeContent store writer item = do
  let path = store.path </> ".cas" </> fingerprintPath writer.hash

  -- FIXME: verify the written hash?

  createParent path
    *> liftIO (ByteString.writeFile path (Persist.encode item))
    *> setReadOnly path

readContent ::
  forall a m.
  (MonadIO m,
   Persist a
  ) =>
  Store ->
  ContentReader a ->
  m (Either (ContentWriter a) a)
readContent store reader = do
  let path = store.path </> ".cas" </> fingerprintPath reader.hash

  exists <- Directory.doesPathExist path

  if not exists
    then pure $ Left Content{hash = reader.hash}
    else do
      -- FIXME: verify the reaer's hash?

      bytes <- liftIO (ByteString.readFile path)

      case Persist.decode bytes of
         Right ok -> pure (Right ok)
         Left err -> error err -- FIXME:

-- Utilities

fingerprintPath :: GHC.Fingerprint -> FilePath
fingerprintPath = show

createParent :: MonadIO m => FilePath -> m ()
createParent =
  Directory.createDirectoryIfMissing True
    . FilePath.takeDirectory

setReadOnly :: MonadIO m => FilePath -> m ()
setReadOnly path =
  Directory.getPermissions path
    >>= Directory.setPermissions path
      . Directory.setOwnerWritable False

--

TH.deriveGEq ''ContentReader
TH.deriveGCompare ''ContentReader
