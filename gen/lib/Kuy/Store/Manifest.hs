module Kuy.Store.Manifest
  ( Manifest,
    renderManifest,
    parseManifest,
    insertArtefact,
    isKnownArtefact,
  )
where

import Data.ByteString qualified as ByteString
import Data.ByteString.Builder qualified as ByteBuilder
import Data.ByteString.Char8 qualified as ByteString.Char8
import Data.Map.Strict qualified as Map
import Data.Tuple qualified as Tuple
import Kuy.Prelude
import Kuy.Store.Artefact
import Kuy.Store.Fingerprint

newtype Manifest = Manifest {hashes :: Map FilePath Fingerprint}
  deriving stock (Show)
  deriving newtype (Semigroup, Monoid)

renderManifest :: Manifest -> ByteBuilder
renderManifest m =
  flip Map.foldMapWithKey m.hashes $ \k v ->
    ByteBuilder.byteString (encodeFingerprint v)
      <> "  "
      <> ByteBuilder.stringUtf8 k
      <> "\n"

parseManifest :: ByteString -> (Manifest, [String])
parseManifest =
  either (mempty,) (,[])
    . validationToEither
    . fmap (Manifest . Map.fromList)
    . traverse parsePair
    . filter (not . ByteString.null)
    . ByteString.Char8.lines
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

insertArtefact :: Artefact -> Manifest -> Manifest
insertArtefact a m = m {hashes = Map.insert a.path a.hash m.hashes}

isKnownArtefact :: Artefact -> Manifest -> Bool
isKnownArtefact a m = maybe False (a.hash ==) (Map.lookup a.path m.hashes)
