module Gogol.Request where

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Char8 as ByteString.Char8
import Gogol.Prelude
import qualified Network.HTTP.Client as Client

-- data Alt
--   = AltJSON
--   | AltMedia

-- data Upload
--   = -- | Upload protocol for media (e.g. "raw", "multipart").
--     UploadProtocol
--   | -- | Legacy upload protocol for media (e.g. "media", "multipart").
--     UploadType
--   deriving stock (Show, Eq, Ord)

deleteQueryParams :: ByteString -> ByteString -> ByteString
deleteQueryParams key query =
  case ByteString.Char8.uncons query of
    Nothing -> query
    Just (h, rest)
      | h == '?' -> go rest
      | otherwise -> go query
  where
    prefix = key `ByteString.Char8.snoc` '='
    inline = '&' `ByteString.Char8.cons` (key `ByteString.Char8.snoc` '=')

    dropPrefix = ByteString.drop (ByteString.length prefix)
    dropInline = ByteString.drop (ByteString.length inline)

    -- Invariant: no leading query '?' is present.
    go bytes
      | ByteString.isPrefixOf prefix bytes =
        dropPrefix bytes
      | ByteString.isInfixOf inline bytes =
        let (a, b) = ByteString.breakSubstring inline bytes
         in go (mconcat [a, dropInline b])
      | otherwise =
        bytes
