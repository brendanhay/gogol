{-# LANGUAGE OverloadedStrings #-}

-- |
-- Module      : Network.Google.Internal.Multipart
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Internal.Multipart where

import           Control.Monad.IO.Class                (MonadIO (..))
import           Data.ByteString                       (ByteString)
import qualified Data.ByteString                       as BS
import           Data.ByteString.Builder.Extra         (byteStringCopy)
import           Data.Monoid                           ((<>))
import           Network.Google.Types                  (GBody (..))
import           Network.HTTP.Client
import           Network.HTTP.Client.MultipartFormData (webkitBoundary)
import           Network.HTTP.Media                    (RenderHeader (..))
import           Network.HTTP.Types                    (Header, hContentType)

-- POST /upload/drive/v2/files?uploadType=multipart HTTP/1.1
-- Host: www.googleapis.com
-- Authorization: Bearer your_auth_token
-- Content-Type: multipart/related; boundary="foo_bar_baz"
-- Content-Length: number_of_bytes_in_entire_request_body

-- --foo_bar_baz
-- Content-Type: application/json; charset=UTF-8N
-- {
--   "title": "My File"
-- }
-- --foo_bar_baz
-- Content-Type: image/jpeg
-- JPEG data
-- --foo_bar_baz--

newtype Boundary = Boundary ByteString

genBoundary :: MonadIO m => m Boundary
genBoundary = Boundary <$> liftIO webkitBoundary

multipartHeader :: Boundary -> Header
multipartHeader (Boundary bs) =
    ( hContentType
    , "multipart/related; boundary=" <> bs
    )

start :: Boundary -> RequestBody
start (Boundary bs) = copy "--" <> copy bs <> copy "\r\n"

part :: Boundary -> RequestBody
part (Boundary bs) = copy "--" <> copy bs <> copy "--\r\n"

copy :: ByteString -> RequestBody
copy bs = RequestBodyBuilder (fromIntegral (BS.length bs)) (byteStringCopy bs)

renderParts :: Boundary -> [GBody] -> RequestBody
renderParts b = (<> part b) . foldMap go
  where
    go (GBody ct x) =
           start b
        <> copy "Content-Type: "
           <> copy (renderHeader ct)
        <> copy "\r\n\r\n"
        <> x
        <> copy "\r\n"
