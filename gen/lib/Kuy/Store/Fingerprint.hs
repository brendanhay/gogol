module Kuy.Store.Fingerprint
  ( Fingerprint,
    renderFingerprint,
    encodeFingerprint,
    decodeFingerprint,
    fingerprintSize,
    fingerprintData,
    fingerprintFile,
    fingerprintString,
    fingerprints,
  )
where

import Data.ByteString.Base16 qualified as Base16
import Data.ByteString.Char8 qualified as ByteString.Char8
import Data.Persist qualified as Persist
import Data.Text qualified as Text
import Distribution.Utils.Structured (structureHash)
import GHC.Fingerprint qualified as GHC
import Kuy.Prelude

newtype Fingerprint = Fingerprint GHC.Fingerprint
  deriving stock (Eq, Ord)

instance Show Fingerprint where
  showsPrec _ = showString . renderFingerprint

instance Hashable Fingerprint where
  hashWithSalt salt (Fingerprint (GHC.Fingerprint w1 w2)) =
    salt `hashWithSalt` w1 `hashWithSalt` w2

renderFingerprint :: Fingerprint -> String
renderFingerprint = ByteString.Char8.unpack . encodeFingerprint

encodeFingerprint :: Fingerprint -> ByteString
encodeFingerprint (Fingerprint (GHC.Fingerprint w1 w2)) =
  Base16.encodeBase16' $
    Persist.runPut $ do
      Persist.putLE w1
      Persist.putLE w2

decodeFingerprint :: ByteString -> Either String Fingerprint
decodeFingerprint =
  first Text.unpack . Base16.decodeBase16 >=> decodeBytes
  where
    decodeBytes =
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

fingerprintString :: String -> Fingerprint
fingerprintString = Fingerprint . GHC.fingerprintString

fingerprints :: NonEmpty Fingerprint -> Fingerprint
fingerprints =
  Fingerprint
    . GHC.fingerprintFingerprints
    . coerce
    . toList
