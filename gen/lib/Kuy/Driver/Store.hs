{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE TemplateHaskell #-}

module Kuy.Driver.Store
  ( Store (..),

    -- * Hash-verified artefact storage
    Artefact (hash),
    newArtefact,
    downloadArtefact,
    readArtefact,

    -- * Cache-addressable binary storage
    CacheReader,
    CacheWriter,
    newCache,
    writeCache,
    readCache,
  )
where

import Data.Aeson qualified as Aeson
import Data.ByteString qualified as ByteString
import Data.ByteString.Lazy qualified as ByteString.Lazy
import Data.ByteString.Lazy.Char8 qualified as ByteString.Lazy.Char8
import Data.ByteString.Builder qualified as ByteBuilder
import Data.Function qualified as Function
import Data.GADT.Compare.TH qualified as TH
import Data.Map.Strict qualified as Map
import Data.Persist qualified as Persist
import Distribution.Utils.Structured
import GHC.Fingerprint qualified as GHC
import GHC.Utils.Fingerprint qualified as GHC.Utils
import Kuy.Prelude
import Network.HTTP.Client qualified as Client
import System.FilePath qualified as FilePath
import Type.Reflection (TypeRep, typeRep)
import UnliftIO qualified
import UnliftIO.Directory qualified as Directory
import UnliftIO.Temporary qualified as Temporary
import Debug.Trace
import Data.List (lines)

newtype Store = Store {path :: FilePath}
  deriving stock (Show)
  deriving newtype (IsString)

-- | An artefact key is proof the filepath exists (at that point in time)
-- with the supplied fingerprint.
data Artefact = Artefact
  { hash :: GHC.Fingerprint,
    name :: Text,
    path :: FilePath,
  }
  deriving stock (Show, Ord, Eq, Generic)

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
        pure (Just Artefact {hash, path})

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

      pure Artefact {hash, path}

readArtefact :: MonadIO m => Artefact -> m ByteString
readArtefact key = liftIO (ByteString.readFile key.path)

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

TH.deriveGEq ''CacheReader
TH.deriveGCompare ''CacheReader
