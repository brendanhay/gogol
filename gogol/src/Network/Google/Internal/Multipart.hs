{-# LANGUAGE OverloadedStrings #-}

-- |
-- Module      : Network.Google.Internal.Multipart
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Internal.Multipart where

import           Control.Monad.IO.Class
import           Data.ByteString                       (ByteString)
import qualified Data.ByteString                       as BS
import           Data.ByteString.Builder.Extra
import qualified Data.CaseInsensitive                  as CI
import           Data.Monoid
import           Network.Google.Types
import           Network.HTTP.Client
import qualified Network.HTTP.Client.Conduit           as Client
import           Network.HTTP.Client.MultipartFormData (webkitBoundary)
import           Network.HTTP.Media
import           Network.HTTP.Types

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
    , "multipart/related; boundary=\"" <> bs <> "\""
    )

start :: Boundary -> RequestBody
start (Boundary bs) = copy "--" <> copy bs <> copy "\r\n"

part :: Boundary -> RequestBody
part (Boundary bs) = copy "--" <> copy bs <> copy "--\r\n"

copy :: ByteString -> RequestBody
copy bs = RequestBodyBuilder (fromIntegral (BS.length bs)) (byteStringCopy bs)

renderParts :: Boundary -> [Part] -> RequestBody
renderParts b = (<> part b) . foldMap go
  where
    go (Part ct hs x) =
           start b
        <> copy "Content-Type: "
           <> copy (renderHeader ct)
        <> foldMap (\(k, v) ->
              copy "\r\n"
           <> copy (CI.original k)
           <> copy ": "
           <> copy v) hs
        <> copy "\r\n\r\n"
        <> Client.requestBodySourceChunked x
        <> copy "\r\n"
