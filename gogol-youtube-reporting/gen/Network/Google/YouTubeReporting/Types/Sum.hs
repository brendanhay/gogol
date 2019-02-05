{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.YouTubeReporting.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.YouTubeReporting.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | gdata
data GDataCompositeMediaReferenceType
    = Path
      -- ^ @PATH@
      -- gdata
    | BlobRef
      -- ^ @BLOB_REF@
      -- gdata
    | Inline
      -- ^ @INLINE@
      -- gdata
    | BigstoreRef
      -- ^ @BIGSTORE_REF@
      -- gdata
    | CosmoBinaryReference
      -- ^ @COSMO_BINARY_REFERENCE@
      -- gdata
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GDataCompositeMediaReferenceType

instance FromHttpApiData GDataCompositeMediaReferenceType where
    parseQueryParam = \case
        "PATH" -> Right Path
        "BLOB_REF" -> Right BlobRef
        "INLINE" -> Right Inline
        "BIGSTORE_REF" -> Right BigstoreRef
        "COSMO_BINARY_REFERENCE" -> Right CosmoBinaryReference
        x -> Left ("Unable to parse GDataCompositeMediaReferenceType from: " <> x)

instance ToHttpApiData GDataCompositeMediaReferenceType where
    toQueryParam = \case
        Path -> "PATH"
        BlobRef -> "BLOB_REF"
        Inline -> "INLINE"
        BigstoreRef -> "BIGSTORE_REF"
        CosmoBinaryReference -> "COSMO_BINARY_REFERENCE"

instance FromJSON GDataCompositeMediaReferenceType where
    parseJSON = parseJSONText "GDataCompositeMediaReferenceType"

instance ToJSON GDataCompositeMediaReferenceType where
    toJSON = toJSONText

-- | gdata
data GDataMediaReferenceType
    = GDMRTPath
      -- ^ @PATH@
      -- gdata
    | GDMRTBlobRef
      -- ^ @BLOB_REF@
      -- gdata
    | GDMRTInline
      -- ^ @INLINE@
      -- gdata
    | GDMRTGetMedia
      -- ^ @GET_MEDIA@
      -- gdata
    | GDMRTCompositeMedia
      -- ^ @COMPOSITE_MEDIA@
      -- gdata
    | GDMRTBigstoreRef
      -- ^ @BIGSTORE_REF@
      -- gdata
    | GDMRTDiffVersionResponse
      -- ^ @DIFF_VERSION_RESPONSE@
      -- gdata
    | GDMRTDiffChecksumsResponse
      -- ^ @DIFF_CHECKSUMS_RESPONSE@
      -- gdata
    | GDMRTDiffDownloadResponse
      -- ^ @DIFF_DOWNLOAD_RESPONSE@
      -- gdata
    | GDMRTDiffUploadRequest
      -- ^ @DIFF_UPLOAD_REQUEST@
      -- gdata
    | GDMRTDiffUploadResponse
      -- ^ @DIFF_UPLOAD_RESPONSE@
      -- gdata
    | GDMRTCosmoBinaryReference
      -- ^ @COSMO_BINARY_REFERENCE@
      -- gdata
    | GDMRTArbitraryBytes
      -- ^ @ARBITRARY_BYTES@
      -- gdata
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GDataMediaReferenceType

instance FromHttpApiData GDataMediaReferenceType where
    parseQueryParam = \case
        "PATH" -> Right GDMRTPath
        "BLOB_REF" -> Right GDMRTBlobRef
        "INLINE" -> Right GDMRTInline
        "GET_MEDIA" -> Right GDMRTGetMedia
        "COMPOSITE_MEDIA" -> Right GDMRTCompositeMedia
        "BIGSTORE_REF" -> Right GDMRTBigstoreRef
        "DIFF_VERSION_RESPONSE" -> Right GDMRTDiffVersionResponse
        "DIFF_CHECKSUMS_RESPONSE" -> Right GDMRTDiffChecksumsResponse
        "DIFF_DOWNLOAD_RESPONSE" -> Right GDMRTDiffDownloadResponse
        "DIFF_UPLOAD_REQUEST" -> Right GDMRTDiffUploadRequest
        "DIFF_UPLOAD_RESPONSE" -> Right GDMRTDiffUploadResponse
        "COSMO_BINARY_REFERENCE" -> Right GDMRTCosmoBinaryReference
        "ARBITRARY_BYTES" -> Right GDMRTArbitraryBytes
        x -> Left ("Unable to parse GDataMediaReferenceType from: " <> x)

instance ToHttpApiData GDataMediaReferenceType where
    toQueryParam = \case
        GDMRTPath -> "PATH"
        GDMRTBlobRef -> "BLOB_REF"
        GDMRTInline -> "INLINE"
        GDMRTGetMedia -> "GET_MEDIA"
        GDMRTCompositeMedia -> "COMPOSITE_MEDIA"
        GDMRTBigstoreRef -> "BIGSTORE_REF"
        GDMRTDiffVersionResponse -> "DIFF_VERSION_RESPONSE"
        GDMRTDiffChecksumsResponse -> "DIFF_CHECKSUMS_RESPONSE"
        GDMRTDiffDownloadResponse -> "DIFF_DOWNLOAD_RESPONSE"
        GDMRTDiffUploadRequest -> "DIFF_UPLOAD_REQUEST"
        GDMRTDiffUploadResponse -> "DIFF_UPLOAD_RESPONSE"
        GDMRTCosmoBinaryReference -> "COSMO_BINARY_REFERENCE"
        GDMRTArbitraryBytes -> "ARBITRARY_BYTES"

instance FromJSON GDataMediaReferenceType where
    parseJSON = parseJSONText "GDataMediaReferenceType"

instance ToJSON GDataMediaReferenceType where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText
