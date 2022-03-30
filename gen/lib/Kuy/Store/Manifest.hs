module Kuy.Store.Manifest where

import UnliftIO.IORef qualified as IORef
import Data.Char qualified as Char
import Data.ByteString.Char8 qualified as ByteString.Char8
import Data.Aeson qualified as Aeson
import Data.ByteString qualified as ByteString
import Data.ByteString.Lazy qualified as ByteString.Lazy
import Data.ByteString.Lazy.Char8 qualified as ByteString.Lazy.Char8
import Data.ByteString.Builder qualified as ByteBuilder
import Data.Function qualified as Function
import Data.GADT.Compare.TH qualified as TH
import Data.Map.Strict qualified as Map
import Data.Persist qualified as Persist
import Kuy.Prelude
import Network.HTTP.Client qualified as Client
import System.FilePath qualified as FilePath
import Type.Reflection (TypeRep, typeRep)
import UnliftIO qualified
import UnliftIO.Directory qualified as Directory
import UnliftIO.Temporary qualified as Temporary
import Kuy.Store.Fingerprint

newtype Manifest = Manifest { fingerprints :: Map FilePath Fingerprint}
  deriving stock (Show)
  deriving newtype (Semigroup, Monoid)

encodeManifest :: Manifest -> ByteBuilder
encodeManifest m =
  Map.foldMapWithKey
    (\k v -> encodeFingerprint v <> " " <> ByteBuilder.stringUtf8 k <> "\n")
    m.fingerprints

decodeManifest :: [ByteString] -> Manifest
decodeManifest =
  Manifest
    . Map.fromList
    . map (second ByteString.Char8.strip . ByteString.splitAt fingerprintSize)
    . filter (not . ByteString.null)

--   filter empty lines

--   ignore invalid parses
--  Hashes
--   . Map.fromList
--   . map (\x ->
--            case splitAt 32 x of
--              (hash, path) -> 
--                ( drop 1 path
--                , let !fp = GHC.Utils.readHexFingerprint hash in fp
--                )
--         )
--   . lines

member :: FilePath -> Fingerprint -> Manifest -> Bool
member k v m = maybe False (v ==) (Map.lookup k m.fingerprints)

insert :: FilePath -> Fingerprint -> Manifest -> Manifest
insert k v m = m { fingerprints = Map.insert k v m.fingerprints }
