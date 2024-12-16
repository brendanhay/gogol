{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.YouTubeReporting.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.YouTubeReporting.Internal.Product
  (

    -- * Empty
    Empty (..),
    newEmpty,

    -- * GdataBlobstore2Info
    GdataBlobstore2Info (..),
    newGdataBlobstore2Info,

    -- * GdataCompositeMedia
    GdataCompositeMedia (..),
    newGdataCompositeMedia,

    -- * GdataContentTypeInfo
    GdataContentTypeInfo (..),
    newGdataContentTypeInfo,

    -- * GdataDiffChecksumsResponse
    GdataDiffChecksumsResponse (..),
    newGdataDiffChecksumsResponse,

    -- * GdataDiffDownloadResponse
    GdataDiffDownloadResponse (..),
    newGdataDiffDownloadResponse,

    -- * GdataDiffUploadRequest
    GdataDiffUploadRequest (..),
    newGdataDiffUploadRequest,

    -- * GdataDiffUploadResponse
    GdataDiffUploadResponse (..),
    newGdataDiffUploadResponse,

    -- * GdataDiffVersionResponse
    GdataDiffVersionResponse (..),
    newGdataDiffVersionResponse,

    -- * GdataDownloadParameters
    GdataDownloadParameters (..),
    newGdataDownloadParameters,

    -- * GdataMedia
    GdataMedia (..),
    newGdataMedia,

    -- * GdataObjectId
    GdataObjectId (..),
    newGdataObjectId,

    -- * Job
    Job (..),
    newJob,

    -- * ListJobsResponse
    ListJobsResponse (..),
    newListJobsResponse,

    -- * ListReportTypesResponse
    ListReportTypesResponse (..),
    newListReportTypesResponse,

    -- * ListReportsResponse
    ListReportsResponse (..),
    newListReportsResponse,

    -- * Report
    Report (..),
    newReport,

    -- * ReportType
    ReportType (..),
    newReportType,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.YouTubeReporting.Internal.Sum

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty 
    ::  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
        parseJSON
          = Core.withObject "Empty" (\ o -> Core.pure Empty)

instance Core.ToJSON Empty where
        toJSON = Core.const Core.emptyObject


-- | gdata
--
-- /See:/ 'newGdataBlobstore2Info' smart constructor.
data GdataBlobstore2Info = GdataBlobstore2Info
    {
      -- | gdata
      blobGeneration :: (Core.Maybe Core.Int64)
      -- | gdata
    , blobId :: (Core.Maybe Core.Text)
      -- | gdata
    , downloadReadHandle :: (Core.Maybe Core.Base64)
      -- | gdata
    , readToken :: (Core.Maybe Core.Text)
      -- | gdata
    , uploadMetadataContainer :: (Core.Maybe Core.Base64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GdataBlobstore2Info' with the minimum fields required to make a request.
newGdataBlobstore2Info 
    ::  GdataBlobstore2Info
newGdataBlobstore2Info =
  GdataBlobstore2Info
    { blobGeneration = Core.Nothing
    , blobId = Core.Nothing
    , downloadReadHandle = Core.Nothing
    , readToken = Core.Nothing
    , uploadMetadataContainer = Core.Nothing
    }

instance Core.FromJSON GdataBlobstore2Info where
        parseJSON
          = Core.withObject "GdataBlobstore2Info"
              (\ o ->
                 GdataBlobstore2Info Core.<$>
                   (o Core..:? "blobGeneration" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "blobId")
                     Core.<*> (o Core..:? "downloadReadHandle")
                     Core.<*> (o Core..:? "readToken")
                     Core.<*> (o Core..:? "uploadMetadataContainer"))

instance Core.ToJSON GdataBlobstore2Info where
        toJSON GdataBlobstore2Info{..}
          = Core.object
              (Core.catMaybes
                 [("blobGeneration" Core..=) Core.. Core.AsText
                    Core.<$> blobGeneration,
                  ("blobId" Core..=) Core.<$> blobId,
                  ("downloadReadHandle" Core..=) Core.<$>
                    downloadReadHandle,
                  ("readToken" Core..=) Core.<$> readToken,
                  ("uploadMetadataContainer" Core..=) Core.<$>
                    uploadMetadataContainer])


-- | gdata
--
-- /See:/ 'newGdataCompositeMedia' smart constructor.
data GdataCompositeMedia = GdataCompositeMedia
    {
      -- | gdata
      blobRef :: (Core.Maybe Core.Base64)
      -- | gdata
    , blobstore2Info :: (Core.Maybe GdataBlobstore2Info)
      -- | gdata
    , cosmoBinaryReference :: (Core.Maybe Core.Base64)
      -- | gdata
    , crc32cHash :: (Core.Maybe Core.Word32)
      -- | gdata
    , inline :: (Core.Maybe Core.Base64)
      -- | gdata
    , length :: (Core.Maybe Core.Int64)
      -- | gdata
    , md5Hash :: (Core.Maybe Core.Base64)
      -- | gdata
    , objectId :: (Core.Maybe GdataObjectId)
      -- | gdata
    , path :: (Core.Maybe Core.Text)
      -- | gdata
    , referenceType :: (Core.Maybe GdataCompositeMedia_ReferenceType)
      -- | gdata
    , sha1Hash :: (Core.Maybe Core.Base64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GdataCompositeMedia' with the minimum fields required to make a request.
newGdataCompositeMedia 
    ::  GdataCompositeMedia
newGdataCompositeMedia =
  GdataCompositeMedia
    { blobRef = Core.Nothing
    , blobstore2Info = Core.Nothing
    , cosmoBinaryReference = Core.Nothing
    , crc32cHash = Core.Nothing
    , inline = Core.Nothing
    , length = Core.Nothing
    , md5Hash = Core.Nothing
    , objectId = Core.Nothing
    , path = Core.Nothing
    , referenceType = Core.Nothing
    , sha1Hash = Core.Nothing
    }

instance Core.FromJSON GdataCompositeMedia where
        parseJSON
          = Core.withObject "GdataCompositeMedia"
              (\ o ->
                 GdataCompositeMedia Core.<$>
                   (o Core..:? "blobRef") Core.<*>
                     (o Core..:? "blobstore2Info")
                     Core.<*> (o Core..:? "cosmoBinaryReference")
                     Core.<*> (o Core..:? "crc32cHash")
                     Core.<*> (o Core..:? "inline")
                     Core.<*>
                     (o Core..:? "length" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "md5Hash")
                     Core.<*> (o Core..:? "objectId")
                     Core.<*> (o Core..:? "path")
                     Core.<*> (o Core..:? "referenceType")
                     Core.<*> (o Core..:? "sha1Hash"))

instance Core.ToJSON GdataCompositeMedia where
        toJSON GdataCompositeMedia{..}
          = Core.object
              (Core.catMaybes
                 [("blobRef" Core..=) Core.<$> blobRef,
                  ("blobstore2Info" Core..=) Core.<$> blobstore2Info,
                  ("cosmoBinaryReference" Core..=) Core.<$>
                    cosmoBinaryReference,
                  ("crc32cHash" Core..=) Core.<$> crc32cHash,
                  ("inline" Core..=) Core.<$> inline,
                  ("length" Core..=) Core.. Core.AsText Core.<$>
                    length,
                  ("md5Hash" Core..=) Core.<$> md5Hash,
                  ("objectId" Core..=) Core.<$> objectId,
                  ("path" Core..=) Core.<$> path,
                  ("referenceType" Core..=) Core.<$> referenceType,
                  ("sha1Hash" Core..=) Core.<$> sha1Hash])


-- | gdata
--
-- /See:/ 'newGdataContentTypeInfo' smart constructor.
data GdataContentTypeInfo = GdataContentTypeInfo
    {
      -- | gdata
      bestGuess :: (Core.Maybe Core.Text)
      -- | gdata
    , fromBytes :: (Core.Maybe Core.Text)
      -- | gdata
    , fromFileName :: (Core.Maybe Core.Text)
      -- | gdata
    , fromHeader :: (Core.Maybe Core.Text)
      -- | gdata
    , fromUrlPath :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GdataContentTypeInfo' with the minimum fields required to make a request.
newGdataContentTypeInfo 
    ::  GdataContentTypeInfo
newGdataContentTypeInfo =
  GdataContentTypeInfo
    { bestGuess = Core.Nothing
    , fromBytes = Core.Nothing
    , fromFileName = Core.Nothing
    , fromHeader = Core.Nothing
    , fromUrlPath = Core.Nothing
    }

instance Core.FromJSON GdataContentTypeInfo where
        parseJSON
          = Core.withObject "GdataContentTypeInfo"
              (\ o ->
                 GdataContentTypeInfo Core.<$>
                   (o Core..:? "bestGuess") Core.<*>
                     (o Core..:? "fromBytes")
                     Core.<*> (o Core..:? "fromFileName")
                     Core.<*> (o Core..:? "fromHeader")
                     Core.<*> (o Core..:? "fromUrlPath"))

instance Core.ToJSON GdataContentTypeInfo where
        toJSON GdataContentTypeInfo{..}
          = Core.object
              (Core.catMaybes
                 [("bestGuess" Core..=) Core.<$> bestGuess,
                  ("fromBytes" Core..=) Core.<$> fromBytes,
                  ("fromFileName" Core..=) Core.<$> fromFileName,
                  ("fromHeader" Core..=) Core.<$> fromHeader,
                  ("fromUrlPath" Core..=) Core.<$> fromUrlPath])


-- | gdata
--
-- /See:/ 'newGdataDiffChecksumsResponse' smart constructor.
data GdataDiffChecksumsResponse = GdataDiffChecksumsResponse
    {
      -- | gdata
      checksumsLocation :: (Core.Maybe GdataCompositeMedia)
      -- | gdata
    , chunkSizeBytes :: (Core.Maybe Core.Int64)
      -- | gdata
    , objectLocation :: (Core.Maybe GdataCompositeMedia)
      -- | gdata
    , objectSizeBytes :: (Core.Maybe Core.Int64)
      -- | gdata
    , objectVersion :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GdataDiffChecksumsResponse' with the minimum fields required to make a request.
newGdataDiffChecksumsResponse 
    ::  GdataDiffChecksumsResponse
newGdataDiffChecksumsResponse =
  GdataDiffChecksumsResponse
    { checksumsLocation = Core.Nothing
    , chunkSizeBytes = Core.Nothing
    , objectLocation = Core.Nothing
    , objectSizeBytes = Core.Nothing
    , objectVersion = Core.Nothing
    }

instance Core.FromJSON GdataDiffChecksumsResponse
         where
        parseJSON
          = Core.withObject "GdataDiffChecksumsResponse"
              (\ o ->
                 GdataDiffChecksumsResponse Core.<$>
                   (o Core..:? "checksumsLocation") Core.<*>
                     (o Core..:? "chunkSizeBytes" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "objectLocation")
                     Core.<*>
                     (o Core..:? "objectSizeBytes" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "objectVersion"))

instance Core.ToJSON GdataDiffChecksumsResponse where
        toJSON GdataDiffChecksumsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("checksumsLocation" Core..=) Core.<$>
                    checksumsLocation,
                  ("chunkSizeBytes" Core..=) Core.. Core.AsText
                    Core.<$> chunkSizeBytes,
                  ("objectLocation" Core..=) Core.<$> objectLocation,
                  ("objectSizeBytes" Core..=) Core.. Core.AsText
                    Core.<$> objectSizeBytes,
                  ("objectVersion" Core..=) Core.<$> objectVersion])


-- | gdata
--
-- /See:/ 'newGdataDiffDownloadResponse' smart constructor.
newtype GdataDiffDownloadResponse = GdataDiffDownloadResponse
    {
      -- | gdata
      objectLocation :: (Core.Maybe GdataCompositeMedia)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GdataDiffDownloadResponse' with the minimum fields required to make a request.
newGdataDiffDownloadResponse 
    ::  GdataDiffDownloadResponse
newGdataDiffDownloadResponse =
  GdataDiffDownloadResponse {objectLocation = Core.Nothing}

instance Core.FromJSON GdataDiffDownloadResponse
         where
        parseJSON
          = Core.withObject "GdataDiffDownloadResponse"
              (\ o ->
                 GdataDiffDownloadResponse Core.<$>
                   (o Core..:? "objectLocation"))

instance Core.ToJSON GdataDiffDownloadResponse where
        toJSON GdataDiffDownloadResponse{..}
          = Core.object
              (Core.catMaybes
                 [("objectLocation" Core..=) Core.<$> objectLocation])


-- | gdata
--
-- /See:/ 'newGdataDiffUploadRequest' smart constructor.
data GdataDiffUploadRequest = GdataDiffUploadRequest
    {
      -- | gdata
      checksumsInfo :: (Core.Maybe GdataCompositeMedia)
      -- | gdata
    , objectInfo :: (Core.Maybe GdataCompositeMedia)
      -- | gdata
    , objectVersion :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GdataDiffUploadRequest' with the minimum fields required to make a request.
newGdataDiffUploadRequest 
    ::  GdataDiffUploadRequest
newGdataDiffUploadRequest =
  GdataDiffUploadRequest
    { checksumsInfo = Core.Nothing
    , objectInfo = Core.Nothing
    , objectVersion = Core.Nothing
    }

instance Core.FromJSON GdataDiffUploadRequest where
        parseJSON
          = Core.withObject "GdataDiffUploadRequest"
              (\ o ->
                 GdataDiffUploadRequest Core.<$>
                   (o Core..:? "checksumsInfo") Core.<*>
                     (o Core..:? "objectInfo")
                     Core.<*> (o Core..:? "objectVersion"))

instance Core.ToJSON GdataDiffUploadRequest where
        toJSON GdataDiffUploadRequest{..}
          = Core.object
              (Core.catMaybes
                 [("checksumsInfo" Core..=) Core.<$> checksumsInfo,
                  ("objectInfo" Core..=) Core.<$> objectInfo,
                  ("objectVersion" Core..=) Core.<$> objectVersion])


-- | gdata
--
-- /See:/ 'newGdataDiffUploadResponse' smart constructor.
data GdataDiffUploadResponse = GdataDiffUploadResponse
    {
      -- | gdata
      objectVersion :: (Core.Maybe Core.Text)
      -- | gdata
    , originalObject :: (Core.Maybe GdataCompositeMedia)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GdataDiffUploadResponse' with the minimum fields required to make a request.
newGdataDiffUploadResponse 
    ::  GdataDiffUploadResponse
newGdataDiffUploadResponse =
  GdataDiffUploadResponse
    {objectVersion = Core.Nothing, originalObject = Core.Nothing}

instance Core.FromJSON GdataDiffUploadResponse where
        parseJSON
          = Core.withObject "GdataDiffUploadResponse"
              (\ o ->
                 GdataDiffUploadResponse Core.<$>
                   (o Core..:? "objectVersion") Core.<*>
                     (o Core..:? "originalObject"))

instance Core.ToJSON GdataDiffUploadResponse where
        toJSON GdataDiffUploadResponse{..}
          = Core.object
              (Core.catMaybes
                 [("objectVersion" Core..=) Core.<$> objectVersion,
                  ("originalObject" Core..=) Core.<$> originalObject])


-- | gdata
--
-- /See:/ 'newGdataDiffVersionResponse' smart constructor.
data GdataDiffVersionResponse = GdataDiffVersionResponse
    {
      -- | gdata
      objectSizeBytes :: (Core.Maybe Core.Int64)
      -- | gdata
    , objectVersion :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GdataDiffVersionResponse' with the minimum fields required to make a request.
newGdataDiffVersionResponse 
    ::  GdataDiffVersionResponse
newGdataDiffVersionResponse =
  GdataDiffVersionResponse
    {objectSizeBytes = Core.Nothing, objectVersion = Core.Nothing}

instance Core.FromJSON GdataDiffVersionResponse where
        parseJSON
          = Core.withObject "GdataDiffVersionResponse"
              (\ o ->
                 GdataDiffVersionResponse Core.<$>
                   (o Core..:? "objectSizeBytes" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "objectVersion"))

instance Core.ToJSON GdataDiffVersionResponse where
        toJSON GdataDiffVersionResponse{..}
          = Core.object
              (Core.catMaybes
                 [("objectSizeBytes" Core..=) Core.. Core.AsText
                    Core.<$> objectSizeBytes,
                  ("objectVersion" Core..=) Core.<$> objectVersion])


-- | gdata
--
-- /See:/ 'newGdataDownloadParameters' smart constructor.
data GdataDownloadParameters = GdataDownloadParameters
    {
      -- | gdata
      allowGzipCompression :: (Core.Maybe Core.Bool)
      -- | gdata
    , ignoreRange :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GdataDownloadParameters' with the minimum fields required to make a request.
newGdataDownloadParameters 
    ::  GdataDownloadParameters
newGdataDownloadParameters =
  GdataDownloadParameters
    {allowGzipCompression = Core.Nothing, ignoreRange = Core.Nothing}

instance Core.FromJSON GdataDownloadParameters where
        parseJSON
          = Core.withObject "GdataDownloadParameters"
              (\ o ->
                 GdataDownloadParameters Core.<$>
                   (o Core..:? "allowGzipCompression") Core.<*>
                     (o Core..:? "ignoreRange"))

instance Core.ToJSON GdataDownloadParameters where
        toJSON GdataDownloadParameters{..}
          = Core.object
              (Core.catMaybes
                 [("allowGzipCompression" Core..=) Core.<$>
                    allowGzipCompression,
                  ("ignoreRange" Core..=) Core.<$> ignoreRange])


-- | gdata
--
-- /See:/ 'newGdataMedia' smart constructor.
data GdataMedia = GdataMedia
    {
      -- | gdata
      algorithm :: (Core.Maybe Core.Text)
      -- | gdata
    , bigstoreObjectRef :: (Core.Maybe Core.Base64)
      -- | gdata
    , blobRef :: (Core.Maybe Core.Base64)
      -- | gdata
    , blobstore2Info :: (Core.Maybe GdataBlobstore2Info)
      -- | gdata
    , compositeMedia :: (Core.Maybe [GdataCompositeMedia])
      -- | gdata
    , contentType :: (Core.Maybe Core.Text)
      -- | gdata
    , contentTypeInfo :: (Core.Maybe GdataContentTypeInfo)
      -- | gdata
    , cosmoBinaryReference :: (Core.Maybe Core.Base64)
      -- | gdata
    , crc32cHash :: (Core.Maybe Core.Word32)
      -- | gdata
    , diffChecksumsResponse :: (Core.Maybe GdataDiffChecksumsResponse)
      -- | gdata
    , diffDownloadResponse :: (Core.Maybe GdataDiffDownloadResponse)
      -- | gdata
    , diffUploadRequest :: (Core.Maybe GdataDiffUploadRequest)
      -- | gdata
    , diffUploadResponse :: (Core.Maybe GdataDiffUploadResponse)
      -- | gdata
    , diffVersionResponse :: (Core.Maybe GdataDiffVersionResponse)
      -- | gdata
    , downloadParameters :: (Core.Maybe GdataDownloadParameters)
      -- | gdata
    , filename :: (Core.Maybe Core.Text)
      -- | gdata
    , hash :: (Core.Maybe Core.Text)
      -- | gdata
    , hashVerified :: (Core.Maybe Core.Bool)
      -- | gdata
    , inline :: (Core.Maybe Core.Base64)
      -- | gdata
    , isPotentialRetry :: (Core.Maybe Core.Bool)
      -- | gdata
    , length :: (Core.Maybe Core.Int64)
      -- | gdata
    , md5Hash :: (Core.Maybe Core.Base64)
      -- | gdata
    , mediaId :: (Core.Maybe Core.Base64)
      -- | gdata
    , objectId :: (Core.Maybe GdataObjectId)
      -- | gdata
    , path :: (Core.Maybe Core.Text)
      -- | gdata
    , referenceType :: (Core.Maybe GdataMedia_ReferenceType)
      -- | gdata
    , sha1Hash :: (Core.Maybe Core.Base64)
      -- | gdata
    , sha256Hash :: (Core.Maybe Core.Base64)
      -- | gdata
    , timestamp :: (Core.Maybe Core.Word64)
      -- | gdata
    , token :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GdataMedia' with the minimum fields required to make a request.
newGdataMedia 
    ::  GdataMedia
newGdataMedia =
  GdataMedia
    { algorithm = Core.Nothing
    , bigstoreObjectRef = Core.Nothing
    , blobRef = Core.Nothing
    , blobstore2Info = Core.Nothing
    , compositeMedia = Core.Nothing
    , contentType = Core.Nothing
    , contentTypeInfo = Core.Nothing
    , cosmoBinaryReference = Core.Nothing
    , crc32cHash = Core.Nothing
    , diffChecksumsResponse = Core.Nothing
    , diffDownloadResponse = Core.Nothing
    , diffUploadRequest = Core.Nothing
    , diffUploadResponse = Core.Nothing
    , diffVersionResponse = Core.Nothing
    , downloadParameters = Core.Nothing
    , filename = Core.Nothing
    , hash = Core.Nothing
    , hashVerified = Core.Nothing
    , inline = Core.Nothing
    , isPotentialRetry = Core.Nothing
    , length = Core.Nothing
    , md5Hash = Core.Nothing
    , mediaId = Core.Nothing
    , objectId = Core.Nothing
    , path = Core.Nothing
    , referenceType = Core.Nothing
    , sha1Hash = Core.Nothing
    , sha256Hash = Core.Nothing
    , timestamp = Core.Nothing
    , token = Core.Nothing
    }

instance Core.FromJSON GdataMedia where
        parseJSON
          = Core.withObject "GdataMedia"
              (\ o ->
                 GdataMedia Core.<$>
                   (o Core..:? "algorithm") Core.<*>
                     (o Core..:? "bigstoreObjectRef")
                     Core.<*> (o Core..:? "blobRef")
                     Core.<*> (o Core..:? "blobstore2Info")
                     Core.<*> (o Core..:? "compositeMedia")
                     Core.<*> (o Core..:? "contentType")
                     Core.<*> (o Core..:? "contentTypeInfo")
                     Core.<*> (o Core..:? "cosmoBinaryReference")
                     Core.<*> (o Core..:? "crc32cHash")
                     Core.<*> (o Core..:? "diffChecksumsResponse")
                     Core.<*> (o Core..:? "diffDownloadResponse")
                     Core.<*> (o Core..:? "diffUploadRequest")
                     Core.<*> (o Core..:? "diffUploadResponse")
                     Core.<*> (o Core..:? "diffVersionResponse")
                     Core.<*> (o Core..:? "downloadParameters")
                     Core.<*> (o Core..:? "filename")
                     Core.<*> (o Core..:? "hash")
                     Core.<*> (o Core..:? "hashVerified")
                     Core.<*> (o Core..:? "inline")
                     Core.<*> (o Core..:? "isPotentialRetry")
                     Core.<*>
                     (o Core..:? "length" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "md5Hash")
                     Core.<*> (o Core..:? "mediaId")
                     Core.<*> (o Core..:? "objectId")
                     Core.<*> (o Core..:? "path")
                     Core.<*> (o Core..:? "referenceType")
                     Core.<*> (o Core..:? "sha1Hash")
                     Core.<*> (o Core..:? "sha256Hash")
                     Core.<*>
                     (o Core..:? "timestamp" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "token"))

instance Core.ToJSON GdataMedia where
        toJSON GdataMedia{..}
          = Core.object
              (Core.catMaybes
                 [("algorithm" Core..=) Core.<$> algorithm,
                  ("bigstoreObjectRef" Core..=) Core.<$>
                    bigstoreObjectRef,
                  ("blobRef" Core..=) Core.<$> blobRef,
                  ("blobstore2Info" Core..=) Core.<$> blobstore2Info,
                  ("compositeMedia" Core..=) Core.<$> compositeMedia,
                  ("contentType" Core..=) Core.<$> contentType,
                  ("contentTypeInfo" Core..=) Core.<$> contentTypeInfo,
                  ("cosmoBinaryReference" Core..=) Core.<$>
                    cosmoBinaryReference,
                  ("crc32cHash" Core..=) Core.<$> crc32cHash,
                  ("diffChecksumsResponse" Core..=) Core.<$>
                    diffChecksumsResponse,
                  ("diffDownloadResponse" Core..=) Core.<$>
                    diffDownloadResponse,
                  ("diffUploadRequest" Core..=) Core.<$>
                    diffUploadRequest,
                  ("diffUploadResponse" Core..=) Core.<$>
                    diffUploadResponse,
                  ("diffVersionResponse" Core..=) Core.<$>
                    diffVersionResponse,
                  ("downloadParameters" Core..=) Core.<$>
                    downloadParameters,
                  ("filename" Core..=) Core.<$> filename,
                  ("hash" Core..=) Core.<$> hash,
                  ("hashVerified" Core..=) Core.<$> hashVerified,
                  ("inline" Core..=) Core.<$> inline,
                  ("isPotentialRetry" Core..=) Core.<$>
                    isPotentialRetry,
                  ("length" Core..=) Core.. Core.AsText Core.<$>
                    length,
                  ("md5Hash" Core..=) Core.<$> md5Hash,
                  ("mediaId" Core..=) Core.<$> mediaId,
                  ("objectId" Core..=) Core.<$> objectId,
                  ("path" Core..=) Core.<$> path,
                  ("referenceType" Core..=) Core.<$> referenceType,
                  ("sha1Hash" Core..=) Core.<$> sha1Hash,
                  ("sha256Hash" Core..=) Core.<$> sha256Hash,
                  ("timestamp" Core..=) Core.. Core.AsText Core.<$>
                    timestamp,
                  ("token" Core..=) Core.<$> token])


-- | gdata
--
-- /See:/ 'newGdataObjectId' smart constructor.
data GdataObjectId = GdataObjectId
    {
      -- | gdata
      bucketName :: (Core.Maybe Core.Text)
      -- | gdata
    , generation :: (Core.Maybe Core.Int64)
      -- | gdata
    , objectName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GdataObjectId' with the minimum fields required to make a request.
newGdataObjectId 
    ::  GdataObjectId
newGdataObjectId =
  GdataObjectId
    { bucketName = Core.Nothing
    , generation = Core.Nothing
    , objectName = Core.Nothing
    }

instance Core.FromJSON GdataObjectId where
        parseJSON
          = Core.withObject "GdataObjectId"
              (\ o ->
                 GdataObjectId Core.<$>
                   (o Core..:? "bucketName") Core.<*>
                     (o Core..:? "generation" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "objectName"))

instance Core.ToJSON GdataObjectId where
        toJSON GdataObjectId{..}
          = Core.object
              (Core.catMaybes
                 [("bucketName" Core..=) Core.<$> bucketName,
                  ("generation" Core..=) Core.. Core.AsText Core.<$>
                    generation,
                  ("objectName" Core..=) Core.<$> objectName])


-- | A job creating reports of a specific type.
--
-- /See:/ 'newJob' smart constructor.
data Job = Job
    {
      -- | The creation date\/time of the job.
      createTime :: (Core.Maybe Core.DateTime)
      -- | The date\/time when this job will expire\/expired. After a job expired, no new reports are generated.
    , expireTime :: (Core.Maybe Core.DateTime)
      -- | The server-generated ID of the job (max. 40 characters).
    , id :: (Core.Maybe Core.Text)
      -- | The name of the job (max. 100 characters).
    , name :: (Core.Maybe Core.Text)
      -- | The type of reports this job creates. Corresponds to the ID of a ReportType.
    , reportTypeId :: (Core.Maybe Core.Text)
      -- | True if this a system-managed job that cannot be modified by the user; otherwise false.
    , systemManaged :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Job' with the minimum fields required to make a request.
newJob 
    ::  Job
newJob =
  Job
    { createTime = Core.Nothing
    , expireTime = Core.Nothing
    , id = Core.Nothing
    , name = Core.Nothing
    , reportTypeId = Core.Nothing
    , systemManaged = Core.Nothing
    }

instance Core.FromJSON Job where
        parseJSON
          = Core.withObject "Job"
              (\ o ->
                 Job Core.<$>
                   (o Core..:? "createTime") Core.<*>
                     (o Core..:? "expireTime")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "reportTypeId")
                     Core.<*> (o Core..:? "systemManaged"))

instance Core.ToJSON Job where
        toJSON Job{..}
          = Core.object
              (Core.catMaybes
                 [("createTime" Core..=) Core.<$> createTime,
                  ("expireTime" Core..=) Core.<$> expireTime,
                  ("id" Core..=) Core.<$> id,
                  ("name" Core..=) Core.<$> name,
                  ("reportTypeId" Core..=) Core.<$> reportTypeId,
                  ("systemManaged" Core..=) Core.<$> systemManaged])


-- | Response message for ReportingService.ListJobs.
--
-- /See:/ 'newListJobsResponse' smart constructor.
data ListJobsResponse = ListJobsResponse
    {
      -- | The list of jobs.
      jobs :: (Core.Maybe [Job])
      -- | A token to retrieve next page of results. Pass this value in the ListJobsRequest.page_token field in the subsequent call to @ListJobs@ method to retrieve the next page of results.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListJobsResponse' with the minimum fields required to make a request.
newListJobsResponse 
    ::  ListJobsResponse
newListJobsResponse =
  ListJobsResponse {jobs = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListJobsResponse where
        parseJSON
          = Core.withObject "ListJobsResponse"
              (\ o ->
                 ListJobsResponse Core.<$>
                   (o Core..:? "jobs") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON ListJobsResponse where
        toJSON ListJobsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("jobs" Core..=) Core.<$> jobs,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Response message for ReportingService.ListReportTypes.
--
-- /See:/ 'newListReportTypesResponse' smart constructor.
data ListReportTypesResponse = ListReportTypesResponse
    {
      -- | A token to retrieve next page of results. Pass this value in the ListReportTypesRequest.page_token field in the subsequent call to @ListReportTypes@ method to retrieve the next page of results.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | The list of report types.
    , reportTypes :: (Core.Maybe [ReportType])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListReportTypesResponse' with the minimum fields required to make a request.
newListReportTypesResponse 
    ::  ListReportTypesResponse
newListReportTypesResponse =
  ListReportTypesResponse
    {nextPageToken = Core.Nothing, reportTypes = Core.Nothing}

instance Core.FromJSON ListReportTypesResponse where
        parseJSON
          = Core.withObject "ListReportTypesResponse"
              (\ o ->
                 ListReportTypesResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "reportTypes"))

instance Core.ToJSON ListReportTypesResponse where
        toJSON ListReportTypesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("reportTypes" Core..=) Core.<$> reportTypes])


-- | Response message for ReportingService.ListReports.
--
-- /See:/ 'newListReportsResponse' smart constructor.
data ListReportsResponse = ListReportsResponse
    {
      -- | A token to retrieve next page of results. Pass this value in the ListReportsRequest.page_token field in the subsequent call to @ListReports@ method to retrieve the next page of results.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | The list of report types.
    , reports :: (Core.Maybe [Report])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListReportsResponse' with the minimum fields required to make a request.
newListReportsResponse 
    ::  ListReportsResponse
newListReportsResponse =
  ListReportsResponse {nextPageToken = Core.Nothing, reports = Core.Nothing}

instance Core.FromJSON ListReportsResponse where
        parseJSON
          = Core.withObject "ListReportsResponse"
              (\ o ->
                 ListReportsResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "reports"))

instance Core.ToJSON ListReportsResponse where
        toJSON ListReportsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("reports" Core..=) Core.<$> reports])


-- | A report\'s metadata including the URL from which the report itself can be downloaded.
--
-- /See:/ 'newReport' smart constructor.
data Report = Report
    {
      -- | The date\/time when this report was created.
      createTime :: (Core.Maybe Core.DateTime)
      -- | The URL from which the report can be downloaded (max. 1000 characters).
    , downloadUrl :: (Core.Maybe Core.Text)
      -- | The end of the time period that the report instance covers. The value is exclusive.
    , endTime :: (Core.Maybe Core.DateTime)
      -- | The server-generated ID of the report.
    , id :: (Core.Maybe Core.Text)
      -- | The date\/time when the job this report belongs to will expire\/expired.
    , jobExpireTime :: (Core.Maybe Core.DateTime)
      -- | The ID of the job that created this report.
    , jobId :: (Core.Maybe Core.Text)
      -- | The start of the time period that the report instance covers. The value is inclusive.
    , startTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Report' with the minimum fields required to make a request.
newReport 
    ::  Report
newReport =
  Report
    { createTime = Core.Nothing
    , downloadUrl = Core.Nothing
    , endTime = Core.Nothing
    , id = Core.Nothing
    , jobExpireTime = Core.Nothing
    , jobId = Core.Nothing
    , startTime = Core.Nothing
    }

instance Core.FromJSON Report where
        parseJSON
          = Core.withObject "Report"
              (\ o ->
                 Report Core.<$>
                   (o Core..:? "createTime") Core.<*>
                     (o Core..:? "downloadUrl")
                     Core.<*> (o Core..:? "endTime")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "jobExpireTime")
                     Core.<*> (o Core..:? "jobId")
                     Core.<*> (o Core..:? "startTime"))

instance Core.ToJSON Report where
        toJSON Report{..}
          = Core.object
              (Core.catMaybes
                 [("createTime" Core..=) Core.<$> createTime,
                  ("downloadUrl" Core..=) Core.<$> downloadUrl,
                  ("endTime" Core..=) Core.<$> endTime,
                  ("id" Core..=) Core.<$> id,
                  ("jobExpireTime" Core..=) Core.<$> jobExpireTime,
                  ("jobId" Core..=) Core.<$> jobId,
                  ("startTime" Core..=) Core.<$> startTime])


-- | A report type.
--
-- /See:/ 'newReportType' smart constructor.
data ReportType = ReportType
    {
      -- | The date\/time when this report type was\/will be deprecated.
      deprecateTime :: (Core.Maybe Core.DateTime)
      -- | The ID of the report type (max. 100 characters).
    , id :: (Core.Maybe Core.Text)
      -- | The name of the report type (max. 100 characters).
    , name :: (Core.Maybe Core.Text)
      -- | True if this a system-managed report type; otherwise false. Reporting jobs for system-managed report types are created automatically and can thus not be used in the @CreateJob@ method.
    , systemManaged :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReportType' with the minimum fields required to make a request.
newReportType 
    ::  ReportType
newReportType =
  ReportType
    { deprecateTime = Core.Nothing
    , id = Core.Nothing
    , name = Core.Nothing
    , systemManaged = Core.Nothing
    }

instance Core.FromJSON ReportType where
        parseJSON
          = Core.withObject "ReportType"
              (\ o ->
                 ReportType Core.<$>
                   (o Core..:? "deprecateTime") Core.<*>
                     (o Core..:? "id")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "systemManaged"))

instance Core.ToJSON ReportType where
        toJSON ReportType{..}
          = Core.object
              (Core.catMaybes
                 [("deprecateTime" Core..=) Core.<$> deprecateTime,
                  ("id" Core..=) Core.<$> id,
                  ("name" Core..=) Core.<$> name,
                  ("systemManaged" Core..=) Core.<$> systemManaged])

