module Kuy.Store.Fingerprint
  ( Fingerprint,
    renderFingerprint,
    encodeFingerprint,
    decodeFingerprint,
    fingerprintSize,
    fingerprintData,
    fingerprintFile,
    fingerprints,
  ) where

import Data.Persist qualified as Persist
import Data.ByteString.Base16 qualified as Base16
import Kuy.Prelude
import Distribution.Utils.Structured (structureHash)
import GHC.Fingerprint qualified as GHC
import Data.Text qualified as Text

newtype Fingerprint = Fingerprint { fp :: GHC.Fingerprint }
  deriving stock (Show, Eq, Ord)

instance Hashable Fingerprint where
  hashWithSalt salt (Fingerprint (GHC.Fingerprint w1 w2)) =
    salt `hashWithSalt` w1 `hashWithSalt` w2

renderFingerprint :: Fingerprint -> String
renderFingerprint = Text.unpack . Base16.encodeBase16 . encodeFingerprint

encodeFingerprint :: Fingerprint -> ByteString
encodeFingerprint x =
  case x.fp of
    GHC.Fingerprint w1 w2 ->
      Persist.runPut $ do
        Persist.putLE w1
        Persist.putLE w2

decodeFingerprint :: ByteString -> Either String Fingerprint
decodeFingerprint =
  Persist.runGet $ do
    w1 <- Persist.getLE
    w2 <- Persist.getLE
    pure (Fingerprint (GHC.Fingerprint w1 w2))

fingerprintSize :: Int
fingerprintSize = 32

fingerprintData :: Structured a => Proxy a -> Fingerprint
fingerprintData = Fingerprint . structureHash

fingerprintFile :: MonadIO m => FilePath -> m Fingerprint
fingerprintFile = liftIO . fmap Fingerprint . GHC.getFileHash

fingerprints :: NonEmpty Fingerprint -> Fingerprint
fingerprints =
  Fingerprint
   . GHC.fingerprintFingerprints
   . coerce
   . toList
