-- |
-- Module      : Gogol.Data.Body
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
module Gogol.Data.Body
  ( Boundary (..),
    newBoundary,
    Body (..),
    toJSONBody,
    toRequestBody,
    renderParts,
    renderPart,
  )
where

import Data.Aeson (ToJSON)
import qualified Data.Aeson as Aeson
import qualified Data.ByteString as ByteString
import Data.ByteString.Builder.Extra (byteStringCopy)
import qualified Data.CaseInsensitive as CI
import Gogol.Prelude
import qualified Network.HTTP.Client as Client
import qualified Network.HTTP.Client.MultipartFormData as Multipart
import Network.HTTP.Media (MediaType, (//), (/:))
import qualified Network.HTTP.Media as Media
import qualified Network.HTTP.Types as HTTP

newtype Boundary = Boundary ByteString

newBoundary :: MonadIO m => m Boundary
newBoundary = Boundary <$> liftIO Multipart.webkitBoundary

-- | A (potentially)_ multipart request body containing the mime type of the contents,
-- to inform any headers or multipart boundaries which should be set on the request.
data Body
  = Metadata Media.MediaType Client.RequestBody
  | Related (NonEmpty Multipart.Part)

toJSONBody :: ToJSON a => a -> Body
toJSONBody =
  Metadata ("application" // "json")
    . Client.RequestBodyLBS
    . Aeson.encode

toMultipartBody :: ToJSON a => a -> Multipart.Part -> Body
toMultipartBody meta body =
  Related (Multipart.partLBS "metadata" (Aeson.encode meta) :| [body])

toRequestBody :: IO Boundary -> Body -> IO (Media.MediaType, Client.RequestBody)
toRequestBody getBoundary _ = undefined

-- Metadata media body ->
--   pure (media, body)
-- --
-- Related media body parts -> do
--   bdry@(Boundary boundary) <- getBoundary
--   body <- renderParts bdry (toList parts)

--   pure
--     ( "multipart" // "related" /: ("boundary", boundary)
--     , body
--     )

renderParts :: Applicative f => Boundary -> [Multipart.PartM f] -> f Client.RequestBody
renderParts bdry@(Boundary boundary) =
  fmap (\xs -> mconcat (copy "--" : copy boundary : copy "--\r\n" : xs))
    . traverse (renderPart bdry)

renderPart :: Functor f => Boundary -> Multipart.PartM f -> f Client.RequestBody
renderPart (Boundary boundary) part =
  render <$> Multipart.partGetBody part
  where
    render body =
      mconcat
        [ copy "--",
          copy boundary,
          copy "\r\n",
          contentType,
          headers,
          copy "\r\n\r\n",
          body,
          copy "\r\n"
        ]

    contentType =
      case Multipart.partContentType part of
        Just ct -> mconcat [copy "\r\n", copy "Content-Type: ", copy ct]
        Nothing -> mempty

    headers =
      foldMap (\(k, v) -> mconcat [copy "\r\n", copy (CI.original k), copy ": ", copy v]) $
        Multipart.partHeaders part

copy :: ByteString -> Client.RequestBody
copy bytes =
  Client.RequestBodyBuilder
    (fromIntegral (ByteString.length bytes))
    (byteStringCopy bytes)
