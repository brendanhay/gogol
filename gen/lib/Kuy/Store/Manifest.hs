module Kuy.Store.Manifest where

import Data.ByteString qualified as ByteString
import Data.ByteString.Builder qualified as ByteBuilder
import Data.ByteString.Char8 qualified as ByteString.Char8
import Data.ByteString.Lazy qualified as ByteString.Lazy
import Data.Map.Strict qualified as Map
import Data.Tuple qualified as Tuple
import Kuy.Prelude
import Kuy.Store.Artefact
import Kuy.Store.Fingerprint
import System.FilePath qualified as FilePath
import UnliftIO qualified
import UnliftIO.Directory qualified as Directory

newtype Manifest = Manifest {hashes :: Map FilePath Fingerprint}
  deriving stock (Show)
  deriving newtype (Semigroup, Monoid)

encodeManifest :: Manifest -> ByteStringLazy
encodeManifest m =
  flip Map.foldMapWithKey m.hashes $ \k v ->
    ByteBuilder.toLazyByteString $
      ByteBuilder.byteString (encodeFingerprint v)
        <> "  "
        <> ByteBuilder.stringUtf8 k
        <> "\n"

decodeManifest :: [ByteString] -> Validation [String] Manifest
decodeManifest =
  fmap (Manifest . Map.fromList)
    . traverse parsePair
    . filter (not . ByteString.null)
  where
    parsePair =
      bitraverse parseKey parseVal
        . Tuple.swap
        . ByteString.splitAt fingerprintSize
        . ByteString.Char8.strip

    parseKey =
      Success
        . ByteString.Char8.unpack
        . ByteString.Char8.strip

    parseVal =
      eitherToValidation
        . first (: [])
        . decodeFingerprint

isKnownArtefact :: Artefact -> Manifest -> Bool
isKnownArtefact x m = maybe False (x.hash ==) (Map.lookup x.path m.hashes)

insertArtefact :: Artefact -> Manifest -> Manifest
insertArtefact x m = m {hashes = Map.insert x.path x.hash m.hashes}

readManifest :: MonadIO m => FilePath -> m Manifest
readManifest path = do
  exists <- Directory.doesPathExist path

  if not exists
    then pure mempty
    else do
      bytes <- liftIO (ByteString.readFile path)

      case decodeManifest (ByteString.Char8.lines bytes) of
        Success ok -> pure ok
        Failure err ->
          UnliftIO.throwString $
            "(readManifest) failed parsing fingerprints from  "
              ++ path
              ++ " with "
              ++ show err

writeManifest :: MonadIO m => FilePath -> Manifest -> m ()
writeManifest path manifest =
  Directory.createDirectoryIfMissing True (FilePath.takeDirectory path)
    *> liftIO (ByteString.Lazy.writeFile path (encodeManifest manifest))
