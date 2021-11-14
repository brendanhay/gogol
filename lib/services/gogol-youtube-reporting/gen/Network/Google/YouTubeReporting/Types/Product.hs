{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.YouTubeReporting.Types.Product
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.YouTubeReporting.Types.Product where

import Network.Google.Prelude
import Network.Google.YouTubeReporting.Types.Sum

-- | Response message for ReportingService.ListReports.
--
-- /See:/ 'listReportsResponse' smart constructor.
data ListReportsResponse =
  ListReportsResponse'
    { _lrrNextPageToken :: !(Maybe Text)
    , _lrrReports :: !(Maybe [Report])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListReportsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrrNextPageToken'
--
-- * 'lrrReports'
listReportsResponse
    :: ListReportsResponse
listReportsResponse =
  ListReportsResponse' {_lrrNextPageToken = Nothing, _lrrReports = Nothing}


-- | A token to retrieve next page of results. Pass this value in the
-- ListReportsRequest.page_token field in the subsequent call to
-- \`ListReports\` method to retrieve the next page of results.
lrrNextPageToken :: Lens' ListReportsResponse (Maybe Text)
lrrNextPageToken
  = lens _lrrNextPageToken
      (\ s a -> s{_lrrNextPageToken = a})

-- | The list of report types.
lrrReports :: Lens' ListReportsResponse [Report]
lrrReports
  = lens _lrrReports (\ s a -> s{_lrrReports = a}) .
      _Default
      . _Coerce

instance FromJSON ListReportsResponse where
        parseJSON
          = withObject "ListReportsResponse"
              (\ o ->
                 ListReportsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "reports" .!= mempty))

instance ToJSON ListReportsResponse where
        toJSON ListReportsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lrrNextPageToken,
                  ("reports" .=) <$> _lrrReports])

-- | gdata
--
-- /See:/ 'gDataDiffChecksumsResponse' smart constructor.
data GDataDiffChecksumsResponse =
  GDataDiffChecksumsResponse'
    { _gddcrChecksumsLocation :: !(Maybe GDataCompositeMedia)
    , _gddcrObjectSizeBytes :: !(Maybe (Textual Int64))
    , _gddcrChunkSizeBytes :: !(Maybe (Textual Int64))
    , _gddcrObjectVersion :: !(Maybe Text)
    , _gddcrObjectLocation :: !(Maybe GDataCompositeMedia)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GDataDiffChecksumsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gddcrChecksumsLocation'
--
-- * 'gddcrObjectSizeBytes'
--
-- * 'gddcrChunkSizeBytes'
--
-- * 'gddcrObjectVersion'
--
-- * 'gddcrObjectLocation'
gDataDiffChecksumsResponse
    :: GDataDiffChecksumsResponse
gDataDiffChecksumsResponse =
  GDataDiffChecksumsResponse'
    { _gddcrChecksumsLocation = Nothing
    , _gddcrObjectSizeBytes = Nothing
    , _gddcrChunkSizeBytes = Nothing
    , _gddcrObjectVersion = Nothing
    , _gddcrObjectLocation = Nothing
    }


-- | gdata
gddcrChecksumsLocation :: Lens' GDataDiffChecksumsResponse (Maybe GDataCompositeMedia)
gddcrChecksumsLocation
  = lens _gddcrChecksumsLocation
      (\ s a -> s{_gddcrChecksumsLocation = a})

-- | gdata
gddcrObjectSizeBytes :: Lens' GDataDiffChecksumsResponse (Maybe Int64)
gddcrObjectSizeBytes
  = lens _gddcrObjectSizeBytes
      (\ s a -> s{_gddcrObjectSizeBytes = a})
      . mapping _Coerce

-- | gdata
gddcrChunkSizeBytes :: Lens' GDataDiffChecksumsResponse (Maybe Int64)
gddcrChunkSizeBytes
  = lens _gddcrChunkSizeBytes
      (\ s a -> s{_gddcrChunkSizeBytes = a})
      . mapping _Coerce

-- | gdata
gddcrObjectVersion :: Lens' GDataDiffChecksumsResponse (Maybe Text)
gddcrObjectVersion
  = lens _gddcrObjectVersion
      (\ s a -> s{_gddcrObjectVersion = a})

-- | gdata
gddcrObjectLocation :: Lens' GDataDiffChecksumsResponse (Maybe GDataCompositeMedia)
gddcrObjectLocation
  = lens _gddcrObjectLocation
      (\ s a -> s{_gddcrObjectLocation = a})

instance FromJSON GDataDiffChecksumsResponse where
        parseJSON
          = withObject "GDataDiffChecksumsResponse"
              (\ o ->
                 GDataDiffChecksumsResponse' <$>
                   (o .:? "checksumsLocation") <*>
                     (o .:? "objectSizeBytes")
                     <*> (o .:? "chunkSizeBytes")
                     <*> (o .:? "objectVersion")
                     <*> (o .:? "objectLocation"))

instance ToJSON GDataDiffChecksumsResponse where
        toJSON GDataDiffChecksumsResponse'{..}
          = object
              (catMaybes
                 [("checksumsLocation" .=) <$>
                    _gddcrChecksumsLocation,
                  ("objectSizeBytes" .=) <$> _gddcrObjectSizeBytes,
                  ("chunkSizeBytes" .=) <$> _gddcrChunkSizeBytes,
                  ("objectVersion" .=) <$> _gddcrObjectVersion,
                  ("objectLocation" .=) <$> _gddcrObjectLocation])

-- | gdata
--
-- /See:/ 'gDataObjectId' smart constructor.
data GDataObjectId =
  GDataObjectId'
    { _gdoiObjectName :: !(Maybe Text)
    , _gdoiBucketName :: !(Maybe Text)
    , _gdoiGeneration :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GDataObjectId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdoiObjectName'
--
-- * 'gdoiBucketName'
--
-- * 'gdoiGeneration'
gDataObjectId
    :: GDataObjectId
gDataObjectId =
  GDataObjectId'
    { _gdoiObjectName = Nothing
    , _gdoiBucketName = Nothing
    , _gdoiGeneration = Nothing
    }


-- | gdata
gdoiObjectName :: Lens' GDataObjectId (Maybe Text)
gdoiObjectName
  = lens _gdoiObjectName
      (\ s a -> s{_gdoiObjectName = a})

-- | gdata
gdoiBucketName :: Lens' GDataObjectId (Maybe Text)
gdoiBucketName
  = lens _gdoiBucketName
      (\ s a -> s{_gdoiBucketName = a})

-- | gdata
gdoiGeneration :: Lens' GDataObjectId (Maybe Int64)
gdoiGeneration
  = lens _gdoiGeneration
      (\ s a -> s{_gdoiGeneration = a})
      . mapping _Coerce

instance FromJSON GDataObjectId where
        parseJSON
          = withObject "GDataObjectId"
              (\ o ->
                 GDataObjectId' <$>
                   (o .:? "objectName") <*> (o .:? "bucketName") <*>
                     (o .:? "generation"))

instance ToJSON GDataObjectId where
        toJSON GDataObjectId'{..}
          = object
              (catMaybes
                 [("objectName" .=) <$> _gdoiObjectName,
                  ("bucketName" .=) <$> _gdoiBucketName,
                  ("generation" .=) <$> _gdoiGeneration])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'empty' smart constructor.
data Empty =
  Empty'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty'


instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty')

instance ToJSON Empty where
        toJSON = const emptyObject

-- | gdata
--
-- /See:/ 'gDataContentTypeInfo' smart constructor.
data GDataContentTypeInfo =
  GDataContentTypeInfo'
    { _gdctiFromBytes :: !(Maybe Text)
    , _gdctiFromFileName :: !(Maybe Text)
    , _gdctiFromHeader :: !(Maybe Text)
    , _gdctiBestGuess :: !(Maybe Text)
    , _gdctiFromURLPath :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GDataContentTypeInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdctiFromBytes'
--
-- * 'gdctiFromFileName'
--
-- * 'gdctiFromHeader'
--
-- * 'gdctiBestGuess'
--
-- * 'gdctiFromURLPath'
gDataContentTypeInfo
    :: GDataContentTypeInfo
gDataContentTypeInfo =
  GDataContentTypeInfo'
    { _gdctiFromBytes = Nothing
    , _gdctiFromFileName = Nothing
    , _gdctiFromHeader = Nothing
    , _gdctiBestGuess = Nothing
    , _gdctiFromURLPath = Nothing
    }


-- | gdata
gdctiFromBytes :: Lens' GDataContentTypeInfo (Maybe Text)
gdctiFromBytes
  = lens _gdctiFromBytes
      (\ s a -> s{_gdctiFromBytes = a})

-- | gdata
gdctiFromFileName :: Lens' GDataContentTypeInfo (Maybe Text)
gdctiFromFileName
  = lens _gdctiFromFileName
      (\ s a -> s{_gdctiFromFileName = a})

-- | gdata
gdctiFromHeader :: Lens' GDataContentTypeInfo (Maybe Text)
gdctiFromHeader
  = lens _gdctiFromHeader
      (\ s a -> s{_gdctiFromHeader = a})

-- | gdata
gdctiBestGuess :: Lens' GDataContentTypeInfo (Maybe Text)
gdctiBestGuess
  = lens _gdctiBestGuess
      (\ s a -> s{_gdctiBestGuess = a})

-- | gdata
gdctiFromURLPath :: Lens' GDataContentTypeInfo (Maybe Text)
gdctiFromURLPath
  = lens _gdctiFromURLPath
      (\ s a -> s{_gdctiFromURLPath = a})

instance FromJSON GDataContentTypeInfo where
        parseJSON
          = withObject "GDataContentTypeInfo"
              (\ o ->
                 GDataContentTypeInfo' <$>
                   (o .:? "fromBytes") <*> (o .:? "fromFileName") <*>
                     (o .:? "fromHeader")
                     <*> (o .:? "bestGuess")
                     <*> (o .:? "fromUrlPath"))

instance ToJSON GDataContentTypeInfo where
        toJSON GDataContentTypeInfo'{..}
          = object
              (catMaybes
                 [("fromBytes" .=) <$> _gdctiFromBytes,
                  ("fromFileName" .=) <$> _gdctiFromFileName,
                  ("fromHeader" .=) <$> _gdctiFromHeader,
                  ("bestGuess" .=) <$> _gdctiBestGuess,
                  ("fromUrlPath" .=) <$> _gdctiFromURLPath])

-- | gdata
--
-- /See:/ 'gDataMedia' smart constructor.
data GDataMedia =
  GDataMedia'
    { _gdmLength :: !(Maybe (Textual Int64))
    , _gdmDiffVersionResponse :: !(Maybe GDataDiffVersionResponse)
    , _gdmDiffUploadRequest :: !(Maybe GDataDiffUploadRequest)
    , _gdmBigstoreObjectRef :: !(Maybe Bytes)
    , _gdmHash :: !(Maybe Text)
    , _gdmIsPotentialRetry :: !(Maybe Bool)
    , _gdmCrc32cHash :: !(Maybe (Textual Word32))
    , _gdmBlobRef :: !(Maybe Bytes)
    , _gdmPath :: !(Maybe Text)
    , _gdmObjectId :: !(Maybe GDataObjectId)
    , _gdmToken :: !(Maybe Text)
    , _gdmInline :: !(Maybe Bytes)
    , _gdmMediaId :: !(Maybe Bytes)
    , _gdmSha1Hash :: !(Maybe Bytes)
    , _gdmHashVerified :: !(Maybe Bool)
    , _gdmContentTypeInfo :: !(Maybe GDataContentTypeInfo)
    , _gdmAlgorithm :: !(Maybe Text)
    , _gdmDiffDownloadResponse :: !(Maybe GDataDiffDownloadResponse)
    , _gdmDiffUploadResponse :: !(Maybe GDataDiffUploadResponse)
    , _gdmDiffChecksumsResponse :: !(Maybe GDataDiffChecksumsResponse)
    , _gdmBlobstore2Info :: !(Maybe GDataBlobstore2Info)
    , _gdmReferenceType :: !(Maybe GDataMediaReferenceType)
    , _gdmTimestamp :: !(Maybe (Textual Word64))
    , _gdmMD5Hash :: !(Maybe Bytes)
    , _gdmDownloadParameters :: !(Maybe GDataDownloadParameters)
    , _gdmCosmoBinaryReference :: !(Maybe Bytes)
    , _gdmFilename :: !(Maybe Text)
    , _gdmSha256Hash :: !(Maybe Bytes)
    , _gdmContentType :: !(Maybe Text)
    , _gdmCompositeMedia :: !(Maybe [GDataCompositeMedia])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GDataMedia' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdmLength'
--
-- * 'gdmDiffVersionResponse'
--
-- * 'gdmDiffUploadRequest'
--
-- * 'gdmBigstoreObjectRef'
--
-- * 'gdmHash'
--
-- * 'gdmIsPotentialRetry'
--
-- * 'gdmCrc32cHash'
--
-- * 'gdmBlobRef'
--
-- * 'gdmPath'
--
-- * 'gdmObjectId'
--
-- * 'gdmToken'
--
-- * 'gdmInline'
--
-- * 'gdmMediaId'
--
-- * 'gdmSha1Hash'
--
-- * 'gdmHashVerified'
--
-- * 'gdmContentTypeInfo'
--
-- * 'gdmAlgorithm'
--
-- * 'gdmDiffDownloadResponse'
--
-- * 'gdmDiffUploadResponse'
--
-- * 'gdmDiffChecksumsResponse'
--
-- * 'gdmBlobstore2Info'
--
-- * 'gdmReferenceType'
--
-- * 'gdmTimestamp'
--
-- * 'gdmMD5Hash'
--
-- * 'gdmDownloadParameters'
--
-- * 'gdmCosmoBinaryReference'
--
-- * 'gdmFilename'
--
-- * 'gdmSha256Hash'
--
-- * 'gdmContentType'
--
-- * 'gdmCompositeMedia'
gDataMedia
    :: GDataMedia
gDataMedia =
  GDataMedia'
    { _gdmLength = Nothing
    , _gdmDiffVersionResponse = Nothing
    , _gdmDiffUploadRequest = Nothing
    , _gdmBigstoreObjectRef = Nothing
    , _gdmHash = Nothing
    , _gdmIsPotentialRetry = Nothing
    , _gdmCrc32cHash = Nothing
    , _gdmBlobRef = Nothing
    , _gdmPath = Nothing
    , _gdmObjectId = Nothing
    , _gdmToken = Nothing
    , _gdmInline = Nothing
    , _gdmMediaId = Nothing
    , _gdmSha1Hash = Nothing
    , _gdmHashVerified = Nothing
    , _gdmContentTypeInfo = Nothing
    , _gdmAlgorithm = Nothing
    , _gdmDiffDownloadResponse = Nothing
    , _gdmDiffUploadResponse = Nothing
    , _gdmDiffChecksumsResponse = Nothing
    , _gdmBlobstore2Info = Nothing
    , _gdmReferenceType = Nothing
    , _gdmTimestamp = Nothing
    , _gdmMD5Hash = Nothing
    , _gdmDownloadParameters = Nothing
    , _gdmCosmoBinaryReference = Nothing
    , _gdmFilename = Nothing
    , _gdmSha256Hash = Nothing
    , _gdmContentType = Nothing
    , _gdmCompositeMedia = Nothing
    }


-- | gdata
gdmLength :: Lens' GDataMedia (Maybe Int64)
gdmLength
  = lens _gdmLength (\ s a -> s{_gdmLength = a}) .
      mapping _Coerce

-- | gdata
gdmDiffVersionResponse :: Lens' GDataMedia (Maybe GDataDiffVersionResponse)
gdmDiffVersionResponse
  = lens _gdmDiffVersionResponse
      (\ s a -> s{_gdmDiffVersionResponse = a})

-- | gdata
gdmDiffUploadRequest :: Lens' GDataMedia (Maybe GDataDiffUploadRequest)
gdmDiffUploadRequest
  = lens _gdmDiffUploadRequest
      (\ s a -> s{_gdmDiffUploadRequest = a})

-- | gdata
gdmBigstoreObjectRef :: Lens' GDataMedia (Maybe ByteString)
gdmBigstoreObjectRef
  = lens _gdmBigstoreObjectRef
      (\ s a -> s{_gdmBigstoreObjectRef = a})
      . mapping _Bytes

-- | gdata
gdmHash :: Lens' GDataMedia (Maybe Text)
gdmHash = lens _gdmHash (\ s a -> s{_gdmHash = a})

-- | gdata
gdmIsPotentialRetry :: Lens' GDataMedia (Maybe Bool)
gdmIsPotentialRetry
  = lens _gdmIsPotentialRetry
      (\ s a -> s{_gdmIsPotentialRetry = a})

-- | gdata
gdmCrc32cHash :: Lens' GDataMedia (Maybe Word32)
gdmCrc32cHash
  = lens _gdmCrc32cHash
      (\ s a -> s{_gdmCrc32cHash = a})
      . mapping _Coerce

-- | gdata
gdmBlobRef :: Lens' GDataMedia (Maybe ByteString)
gdmBlobRef
  = lens _gdmBlobRef (\ s a -> s{_gdmBlobRef = a}) .
      mapping _Bytes

-- | gdata
gdmPath :: Lens' GDataMedia (Maybe Text)
gdmPath = lens _gdmPath (\ s a -> s{_gdmPath = a})

-- | gdata
gdmObjectId :: Lens' GDataMedia (Maybe GDataObjectId)
gdmObjectId
  = lens _gdmObjectId (\ s a -> s{_gdmObjectId = a})

-- | gdata
gdmToken :: Lens' GDataMedia (Maybe Text)
gdmToken = lens _gdmToken (\ s a -> s{_gdmToken = a})

-- | gdata
gdmInline :: Lens' GDataMedia (Maybe ByteString)
gdmInline
  = lens _gdmInline (\ s a -> s{_gdmInline = a}) .
      mapping _Bytes

-- | gdata
gdmMediaId :: Lens' GDataMedia (Maybe ByteString)
gdmMediaId
  = lens _gdmMediaId (\ s a -> s{_gdmMediaId = a}) .
      mapping _Bytes

-- | gdata
gdmSha1Hash :: Lens' GDataMedia (Maybe ByteString)
gdmSha1Hash
  = lens _gdmSha1Hash (\ s a -> s{_gdmSha1Hash = a}) .
      mapping _Bytes

-- | gdata
gdmHashVerified :: Lens' GDataMedia (Maybe Bool)
gdmHashVerified
  = lens _gdmHashVerified
      (\ s a -> s{_gdmHashVerified = a})

-- | gdata
gdmContentTypeInfo :: Lens' GDataMedia (Maybe GDataContentTypeInfo)
gdmContentTypeInfo
  = lens _gdmContentTypeInfo
      (\ s a -> s{_gdmContentTypeInfo = a})

-- | gdata
gdmAlgorithm :: Lens' GDataMedia (Maybe Text)
gdmAlgorithm
  = lens _gdmAlgorithm (\ s a -> s{_gdmAlgorithm = a})

-- | gdata
gdmDiffDownloadResponse :: Lens' GDataMedia (Maybe GDataDiffDownloadResponse)
gdmDiffDownloadResponse
  = lens _gdmDiffDownloadResponse
      (\ s a -> s{_gdmDiffDownloadResponse = a})

-- | gdata
gdmDiffUploadResponse :: Lens' GDataMedia (Maybe GDataDiffUploadResponse)
gdmDiffUploadResponse
  = lens _gdmDiffUploadResponse
      (\ s a -> s{_gdmDiffUploadResponse = a})

-- | gdata
gdmDiffChecksumsResponse :: Lens' GDataMedia (Maybe GDataDiffChecksumsResponse)
gdmDiffChecksumsResponse
  = lens _gdmDiffChecksumsResponse
      (\ s a -> s{_gdmDiffChecksumsResponse = a})

-- | gdata
gdmBlobstore2Info :: Lens' GDataMedia (Maybe GDataBlobstore2Info)
gdmBlobstore2Info
  = lens _gdmBlobstore2Info
      (\ s a -> s{_gdmBlobstore2Info = a})

-- | gdata
gdmReferenceType :: Lens' GDataMedia (Maybe GDataMediaReferenceType)
gdmReferenceType
  = lens _gdmReferenceType
      (\ s a -> s{_gdmReferenceType = a})

-- | gdata
gdmTimestamp :: Lens' GDataMedia (Maybe Word64)
gdmTimestamp
  = lens _gdmTimestamp (\ s a -> s{_gdmTimestamp = a})
      . mapping _Coerce

-- | gdata
gdmMD5Hash :: Lens' GDataMedia (Maybe ByteString)
gdmMD5Hash
  = lens _gdmMD5Hash (\ s a -> s{_gdmMD5Hash = a}) .
      mapping _Bytes

-- | gdata
gdmDownloadParameters :: Lens' GDataMedia (Maybe GDataDownloadParameters)
gdmDownloadParameters
  = lens _gdmDownloadParameters
      (\ s a -> s{_gdmDownloadParameters = a})

-- | gdata
gdmCosmoBinaryReference :: Lens' GDataMedia (Maybe ByteString)
gdmCosmoBinaryReference
  = lens _gdmCosmoBinaryReference
      (\ s a -> s{_gdmCosmoBinaryReference = a})
      . mapping _Bytes

-- | gdata
gdmFilename :: Lens' GDataMedia (Maybe Text)
gdmFilename
  = lens _gdmFilename (\ s a -> s{_gdmFilename = a})

-- | gdata
gdmSha256Hash :: Lens' GDataMedia (Maybe ByteString)
gdmSha256Hash
  = lens _gdmSha256Hash
      (\ s a -> s{_gdmSha256Hash = a})
      . mapping _Bytes

-- | gdata
gdmContentType :: Lens' GDataMedia (Maybe Text)
gdmContentType
  = lens _gdmContentType
      (\ s a -> s{_gdmContentType = a})

-- | gdata
gdmCompositeMedia :: Lens' GDataMedia [GDataCompositeMedia]
gdmCompositeMedia
  = lens _gdmCompositeMedia
      (\ s a -> s{_gdmCompositeMedia = a})
      . _Default
      . _Coerce

instance FromJSON GDataMedia where
        parseJSON
          = withObject "GDataMedia"
              (\ o ->
                 GDataMedia' <$>
                   (o .:? "length") <*> (o .:? "diffVersionResponse")
                     <*> (o .:? "diffUploadRequest")
                     <*> (o .:? "bigstoreObjectRef")
                     <*> (o .:? "hash")
                     <*> (o .:? "isPotentialRetry")
                     <*> (o .:? "crc32cHash")
                     <*> (o .:? "blobRef")
                     <*> (o .:? "path")
                     <*> (o .:? "objectId")
                     <*> (o .:? "token")
                     <*> (o .:? "inline")
                     <*> (o .:? "mediaId")
                     <*> (o .:? "sha1Hash")
                     <*> (o .:? "hashVerified")
                     <*> (o .:? "contentTypeInfo")
                     <*> (o .:? "algorithm")
                     <*> (o .:? "diffDownloadResponse")
                     <*> (o .:? "diffUploadResponse")
                     <*> (o .:? "diffChecksumsResponse")
                     <*> (o .:? "blobstore2Info")
                     <*> (o .:? "referenceType")
                     <*> (o .:? "timestamp")
                     <*> (o .:? "md5Hash")
                     <*> (o .:? "downloadParameters")
                     <*> (o .:? "cosmoBinaryReference")
                     <*> (o .:? "filename")
                     <*> (o .:? "sha256Hash")
                     <*> (o .:? "contentType")
                     <*> (o .:? "compositeMedia" .!= mempty))

instance ToJSON GDataMedia where
        toJSON GDataMedia'{..}
          = object
              (catMaybes
                 [("length" .=) <$> _gdmLength,
                  ("diffVersionResponse" .=) <$>
                    _gdmDiffVersionResponse,
                  ("diffUploadRequest" .=) <$> _gdmDiffUploadRequest,
                  ("bigstoreObjectRef" .=) <$> _gdmBigstoreObjectRef,
                  ("hash" .=) <$> _gdmHash,
                  ("isPotentialRetry" .=) <$> _gdmIsPotentialRetry,
                  ("crc32cHash" .=) <$> _gdmCrc32cHash,
                  ("blobRef" .=) <$> _gdmBlobRef,
                  ("path" .=) <$> _gdmPath,
                  ("objectId" .=) <$> _gdmObjectId,
                  ("token" .=) <$> _gdmToken,
                  ("inline" .=) <$> _gdmInline,
                  ("mediaId" .=) <$> _gdmMediaId,
                  ("sha1Hash" .=) <$> _gdmSha1Hash,
                  ("hashVerified" .=) <$> _gdmHashVerified,
                  ("contentTypeInfo" .=) <$> _gdmContentTypeInfo,
                  ("algorithm" .=) <$> _gdmAlgorithm,
                  ("diffDownloadResponse" .=) <$>
                    _gdmDiffDownloadResponse,
                  ("diffUploadResponse" .=) <$> _gdmDiffUploadResponse,
                  ("diffChecksumsResponse" .=) <$>
                    _gdmDiffChecksumsResponse,
                  ("blobstore2Info" .=) <$> _gdmBlobstore2Info,
                  ("referenceType" .=) <$> _gdmReferenceType,
                  ("timestamp" .=) <$> _gdmTimestamp,
                  ("md5Hash" .=) <$> _gdmMD5Hash,
                  ("downloadParameters" .=) <$> _gdmDownloadParameters,
                  ("cosmoBinaryReference" .=) <$>
                    _gdmCosmoBinaryReference,
                  ("filename" .=) <$> _gdmFilename,
                  ("sha256Hash" .=) <$> _gdmSha256Hash,
                  ("contentType" .=) <$> _gdmContentType,
                  ("compositeMedia" .=) <$> _gdmCompositeMedia])

-- | A report\'s metadata including the URL from which the report itself can
-- be downloaded.
--
-- /See:/ 'report' smart constructor.
data Report =
  Report'
    { _rJobId :: !(Maybe Text)
    , _rStartTime :: !(Maybe DateTime')
    , _rDownloadURL :: !(Maybe Text)
    , _rEndTime :: !(Maybe DateTime')
    , _rId :: !(Maybe Text)
    , _rCreateTime :: !(Maybe DateTime')
    , _rJobExpireTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Report' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rJobId'
--
-- * 'rStartTime'
--
-- * 'rDownloadURL'
--
-- * 'rEndTime'
--
-- * 'rId'
--
-- * 'rCreateTime'
--
-- * 'rJobExpireTime'
report
    :: Report
report =
  Report'
    { _rJobId = Nothing
    , _rStartTime = Nothing
    , _rDownloadURL = Nothing
    , _rEndTime = Nothing
    , _rId = Nothing
    , _rCreateTime = Nothing
    , _rJobExpireTime = Nothing
    }


-- | The ID of the job that created this report.
rJobId :: Lens' Report (Maybe Text)
rJobId = lens _rJobId (\ s a -> s{_rJobId = a})

-- | The start of the time period that the report instance covers. The value
-- is inclusive.
rStartTime :: Lens' Report (Maybe UTCTime)
rStartTime
  = lens _rStartTime (\ s a -> s{_rStartTime = a}) .
      mapping _DateTime

-- | The URL from which the report can be downloaded (max. 1000 characters).
rDownloadURL :: Lens' Report (Maybe Text)
rDownloadURL
  = lens _rDownloadURL (\ s a -> s{_rDownloadURL = a})

-- | The end of the time period that the report instance covers. The value is
-- exclusive.
rEndTime :: Lens' Report (Maybe UTCTime)
rEndTime
  = lens _rEndTime (\ s a -> s{_rEndTime = a}) .
      mapping _DateTime

-- | The server-generated ID of the report.
rId :: Lens' Report (Maybe Text)
rId = lens _rId (\ s a -> s{_rId = a})

-- | The date\/time when this report was created.
rCreateTime :: Lens' Report (Maybe UTCTime)
rCreateTime
  = lens _rCreateTime (\ s a -> s{_rCreateTime = a}) .
      mapping _DateTime

-- | The date\/time when the job this report belongs to will expire\/expired.
rJobExpireTime :: Lens' Report (Maybe UTCTime)
rJobExpireTime
  = lens _rJobExpireTime
      (\ s a -> s{_rJobExpireTime = a})
      . mapping _DateTime

instance FromJSON Report where
        parseJSON
          = withObject "Report"
              (\ o ->
                 Report' <$>
                   (o .:? "jobId") <*> (o .:? "startTime") <*>
                     (o .:? "downloadUrl")
                     <*> (o .:? "endTime")
                     <*> (o .:? "id")
                     <*> (o .:? "createTime")
                     <*> (o .:? "jobExpireTime"))

instance ToJSON Report where
        toJSON Report'{..}
          = object
              (catMaybes
                 [("jobId" .=) <$> _rJobId,
                  ("startTime" .=) <$> _rStartTime,
                  ("downloadUrl" .=) <$> _rDownloadURL,
                  ("endTime" .=) <$> _rEndTime, ("id" .=) <$> _rId,
                  ("createTime" .=) <$> _rCreateTime,
                  ("jobExpireTime" .=) <$> _rJobExpireTime])

-- | gdata
--
-- /See:/ 'gDataCompositeMedia' smart constructor.
data GDataCompositeMedia =
  GDataCompositeMedia'
    { _gdcmLength :: !(Maybe (Textual Int64))
    , _gdcmCrc32cHash :: !(Maybe (Textual Word32))
    , _gdcmBlobRef :: !(Maybe Bytes)
    , _gdcmPath :: !(Maybe Text)
    , _gdcmObjectId :: !(Maybe GDataObjectId)
    , _gdcmInline :: !(Maybe Bytes)
    , _gdcmSha1Hash :: !(Maybe Bytes)
    , _gdcmBlobstore2Info :: !(Maybe GDataBlobstore2Info)
    , _gdcmReferenceType :: !(Maybe GDataCompositeMediaReferenceType)
    , _gdcmMD5Hash :: !(Maybe Bytes)
    , _gdcmCosmoBinaryReference :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GDataCompositeMedia' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdcmLength'
--
-- * 'gdcmCrc32cHash'
--
-- * 'gdcmBlobRef'
--
-- * 'gdcmPath'
--
-- * 'gdcmObjectId'
--
-- * 'gdcmInline'
--
-- * 'gdcmSha1Hash'
--
-- * 'gdcmBlobstore2Info'
--
-- * 'gdcmReferenceType'
--
-- * 'gdcmMD5Hash'
--
-- * 'gdcmCosmoBinaryReference'
gDataCompositeMedia
    :: GDataCompositeMedia
gDataCompositeMedia =
  GDataCompositeMedia'
    { _gdcmLength = Nothing
    , _gdcmCrc32cHash = Nothing
    , _gdcmBlobRef = Nothing
    , _gdcmPath = Nothing
    , _gdcmObjectId = Nothing
    , _gdcmInline = Nothing
    , _gdcmSha1Hash = Nothing
    , _gdcmBlobstore2Info = Nothing
    , _gdcmReferenceType = Nothing
    , _gdcmMD5Hash = Nothing
    , _gdcmCosmoBinaryReference = Nothing
    }


-- | gdata
gdcmLength :: Lens' GDataCompositeMedia (Maybe Int64)
gdcmLength
  = lens _gdcmLength (\ s a -> s{_gdcmLength = a}) .
      mapping _Coerce

-- | gdata
gdcmCrc32cHash :: Lens' GDataCompositeMedia (Maybe Word32)
gdcmCrc32cHash
  = lens _gdcmCrc32cHash
      (\ s a -> s{_gdcmCrc32cHash = a})
      . mapping _Coerce

-- | gdata
gdcmBlobRef :: Lens' GDataCompositeMedia (Maybe ByteString)
gdcmBlobRef
  = lens _gdcmBlobRef (\ s a -> s{_gdcmBlobRef = a}) .
      mapping _Bytes

-- | gdata
gdcmPath :: Lens' GDataCompositeMedia (Maybe Text)
gdcmPath = lens _gdcmPath (\ s a -> s{_gdcmPath = a})

-- | gdata
gdcmObjectId :: Lens' GDataCompositeMedia (Maybe GDataObjectId)
gdcmObjectId
  = lens _gdcmObjectId (\ s a -> s{_gdcmObjectId = a})

-- | gdata
gdcmInline :: Lens' GDataCompositeMedia (Maybe ByteString)
gdcmInline
  = lens _gdcmInline (\ s a -> s{_gdcmInline = a}) .
      mapping _Bytes

-- | gdata
gdcmSha1Hash :: Lens' GDataCompositeMedia (Maybe ByteString)
gdcmSha1Hash
  = lens _gdcmSha1Hash (\ s a -> s{_gdcmSha1Hash = a})
      . mapping _Bytes

-- | gdata
gdcmBlobstore2Info :: Lens' GDataCompositeMedia (Maybe GDataBlobstore2Info)
gdcmBlobstore2Info
  = lens _gdcmBlobstore2Info
      (\ s a -> s{_gdcmBlobstore2Info = a})

-- | gdata
gdcmReferenceType :: Lens' GDataCompositeMedia (Maybe GDataCompositeMediaReferenceType)
gdcmReferenceType
  = lens _gdcmReferenceType
      (\ s a -> s{_gdcmReferenceType = a})

-- | gdata
gdcmMD5Hash :: Lens' GDataCompositeMedia (Maybe ByteString)
gdcmMD5Hash
  = lens _gdcmMD5Hash (\ s a -> s{_gdcmMD5Hash = a}) .
      mapping _Bytes

-- | gdata
gdcmCosmoBinaryReference :: Lens' GDataCompositeMedia (Maybe ByteString)
gdcmCosmoBinaryReference
  = lens _gdcmCosmoBinaryReference
      (\ s a -> s{_gdcmCosmoBinaryReference = a})
      . mapping _Bytes

instance FromJSON GDataCompositeMedia where
        parseJSON
          = withObject "GDataCompositeMedia"
              (\ o ->
                 GDataCompositeMedia' <$>
                   (o .:? "length") <*> (o .:? "crc32cHash") <*>
                     (o .:? "blobRef")
                     <*> (o .:? "path")
                     <*> (o .:? "objectId")
                     <*> (o .:? "inline")
                     <*> (o .:? "sha1Hash")
                     <*> (o .:? "blobstore2Info")
                     <*> (o .:? "referenceType")
                     <*> (o .:? "md5Hash")
                     <*> (o .:? "cosmoBinaryReference"))

instance ToJSON GDataCompositeMedia where
        toJSON GDataCompositeMedia'{..}
          = object
              (catMaybes
                 [("length" .=) <$> _gdcmLength,
                  ("crc32cHash" .=) <$> _gdcmCrc32cHash,
                  ("blobRef" .=) <$> _gdcmBlobRef,
                  ("path" .=) <$> _gdcmPath,
                  ("objectId" .=) <$> _gdcmObjectId,
                  ("inline" .=) <$> _gdcmInline,
                  ("sha1Hash" .=) <$> _gdcmSha1Hash,
                  ("blobstore2Info" .=) <$> _gdcmBlobstore2Info,
                  ("referenceType" .=) <$> _gdcmReferenceType,
                  ("md5Hash" .=) <$> _gdcmMD5Hash,
                  ("cosmoBinaryReference" .=) <$>
                    _gdcmCosmoBinaryReference])

-- | gdata
--
-- /See:/ 'gDataDownloadParameters' smart constructor.
data GDataDownloadParameters =
  GDataDownloadParameters'
    { _gddpIgnoreRange :: !(Maybe Bool)
    , _gddpAllowGzipCompression :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GDataDownloadParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gddpIgnoreRange'
--
-- * 'gddpAllowGzipCompression'
gDataDownloadParameters
    :: GDataDownloadParameters
gDataDownloadParameters =
  GDataDownloadParameters'
    {_gddpIgnoreRange = Nothing, _gddpAllowGzipCompression = Nothing}


-- | gdata
gddpIgnoreRange :: Lens' GDataDownloadParameters (Maybe Bool)
gddpIgnoreRange
  = lens _gddpIgnoreRange
      (\ s a -> s{_gddpIgnoreRange = a})

-- | gdata
gddpAllowGzipCompression :: Lens' GDataDownloadParameters (Maybe Bool)
gddpAllowGzipCompression
  = lens _gddpAllowGzipCompression
      (\ s a -> s{_gddpAllowGzipCompression = a})

instance FromJSON GDataDownloadParameters where
        parseJSON
          = withObject "GDataDownloadParameters"
              (\ o ->
                 GDataDownloadParameters' <$>
                   (o .:? "ignoreRange") <*>
                     (o .:? "allowGzipCompression"))

instance ToJSON GDataDownloadParameters where
        toJSON GDataDownloadParameters'{..}
          = object
              (catMaybes
                 [("ignoreRange" .=) <$> _gddpIgnoreRange,
                  ("allowGzipCompression" .=) <$>
                    _gddpAllowGzipCompression])

-- | Response message for ReportingService.ListReportTypes.
--
-- /See:/ 'listReportTypesResponse' smart constructor.
data ListReportTypesResponse =
  ListReportTypesResponse'
    { _lrtrNextPageToken :: !(Maybe Text)
    , _lrtrReportTypes :: !(Maybe [ReportType])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListReportTypesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrtrNextPageToken'
--
-- * 'lrtrReportTypes'
listReportTypesResponse
    :: ListReportTypesResponse
listReportTypesResponse =
  ListReportTypesResponse'
    {_lrtrNextPageToken = Nothing, _lrtrReportTypes = Nothing}


-- | A token to retrieve next page of results. Pass this value in the
-- ListReportTypesRequest.page_token field in the subsequent call to
-- \`ListReportTypes\` method to retrieve the next page of results.
lrtrNextPageToken :: Lens' ListReportTypesResponse (Maybe Text)
lrtrNextPageToken
  = lens _lrtrNextPageToken
      (\ s a -> s{_lrtrNextPageToken = a})

-- | The list of report types.
lrtrReportTypes :: Lens' ListReportTypesResponse [ReportType]
lrtrReportTypes
  = lens _lrtrReportTypes
      (\ s a -> s{_lrtrReportTypes = a})
      . _Default
      . _Coerce

instance FromJSON ListReportTypesResponse where
        parseJSON
          = withObject "ListReportTypesResponse"
              (\ o ->
                 ListReportTypesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "reportTypes" .!= mempty))

instance ToJSON ListReportTypesResponse where
        toJSON ListReportTypesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lrtrNextPageToken,
                  ("reportTypes" .=) <$> _lrtrReportTypes])

-- | gdata
--
-- /See:/ 'gDataBlobstore2Info' smart constructor.
data GDataBlobstore2Info =
  GDataBlobstore2Info'
    { _gdbiBlobGeneration :: !(Maybe (Textual Int64))
    , _gdbiBlobId :: !(Maybe Text)
    , _gdbiReadToken :: !(Maybe Text)
    , _gdbiDownloadReadHandle :: !(Maybe Bytes)
    , _gdbiUploadMetadataContainer :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GDataBlobstore2Info' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdbiBlobGeneration'
--
-- * 'gdbiBlobId'
--
-- * 'gdbiReadToken'
--
-- * 'gdbiDownloadReadHandle'
--
-- * 'gdbiUploadMetadataContainer'
gDataBlobstore2Info
    :: GDataBlobstore2Info
gDataBlobstore2Info =
  GDataBlobstore2Info'
    { _gdbiBlobGeneration = Nothing
    , _gdbiBlobId = Nothing
    , _gdbiReadToken = Nothing
    , _gdbiDownloadReadHandle = Nothing
    , _gdbiUploadMetadataContainer = Nothing
    }


-- | gdata
gdbiBlobGeneration :: Lens' GDataBlobstore2Info (Maybe Int64)
gdbiBlobGeneration
  = lens _gdbiBlobGeneration
      (\ s a -> s{_gdbiBlobGeneration = a})
      . mapping _Coerce

-- | gdata
gdbiBlobId :: Lens' GDataBlobstore2Info (Maybe Text)
gdbiBlobId
  = lens _gdbiBlobId (\ s a -> s{_gdbiBlobId = a})

-- | gdata
gdbiReadToken :: Lens' GDataBlobstore2Info (Maybe Text)
gdbiReadToken
  = lens _gdbiReadToken
      (\ s a -> s{_gdbiReadToken = a})

-- | gdata
gdbiDownloadReadHandle :: Lens' GDataBlobstore2Info (Maybe ByteString)
gdbiDownloadReadHandle
  = lens _gdbiDownloadReadHandle
      (\ s a -> s{_gdbiDownloadReadHandle = a})
      . mapping _Bytes

-- | gdata
gdbiUploadMetadataContainer :: Lens' GDataBlobstore2Info (Maybe ByteString)
gdbiUploadMetadataContainer
  = lens _gdbiUploadMetadataContainer
      (\ s a -> s{_gdbiUploadMetadataContainer = a})
      . mapping _Bytes

instance FromJSON GDataBlobstore2Info where
        parseJSON
          = withObject "GDataBlobstore2Info"
              (\ o ->
                 GDataBlobstore2Info' <$>
                   (o .:? "blobGeneration") <*> (o .:? "blobId") <*>
                     (o .:? "readToken")
                     <*> (o .:? "downloadReadHandle")
                     <*> (o .:? "uploadMetadataContainer"))

instance ToJSON GDataBlobstore2Info where
        toJSON GDataBlobstore2Info'{..}
          = object
              (catMaybes
                 [("blobGeneration" .=) <$> _gdbiBlobGeneration,
                  ("blobId" .=) <$> _gdbiBlobId,
                  ("readToken" .=) <$> _gdbiReadToken,
                  ("downloadReadHandle" .=) <$>
                    _gdbiDownloadReadHandle,
                  ("uploadMetadataContainer" .=) <$>
                    _gdbiUploadMetadataContainer])

-- | A job creating reports of a specific type.
--
-- /See:/ 'job' smart constructor.
data Job =
  Job'
    { _jName :: !(Maybe Text)
    , _jId :: !(Maybe Text)
    , _jSystemManaged :: !(Maybe Bool)
    , _jReportTypeId :: !(Maybe Text)
    , _jExpireTime :: !(Maybe DateTime')
    , _jCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Job' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jName'
--
-- * 'jId'
--
-- * 'jSystemManaged'
--
-- * 'jReportTypeId'
--
-- * 'jExpireTime'
--
-- * 'jCreateTime'
job
    :: Job
job =
  Job'
    { _jName = Nothing
    , _jId = Nothing
    , _jSystemManaged = Nothing
    , _jReportTypeId = Nothing
    , _jExpireTime = Nothing
    , _jCreateTime = Nothing
    }


-- | The name of the job (max. 100 characters).
jName :: Lens' Job (Maybe Text)
jName = lens _jName (\ s a -> s{_jName = a})

-- | The server-generated ID of the job (max. 40 characters).
jId :: Lens' Job (Maybe Text)
jId = lens _jId (\ s a -> s{_jId = a})

-- | True if this a system-managed job that cannot be modified by the user;
-- otherwise false.
jSystemManaged :: Lens' Job (Maybe Bool)
jSystemManaged
  = lens _jSystemManaged
      (\ s a -> s{_jSystemManaged = a})

-- | The type of reports this job creates. Corresponds to the ID of a
-- ReportType.
jReportTypeId :: Lens' Job (Maybe Text)
jReportTypeId
  = lens _jReportTypeId
      (\ s a -> s{_jReportTypeId = a})

-- | The date\/time when this job will expire\/expired. After a job expired,
-- no new reports are generated.
jExpireTime :: Lens' Job (Maybe UTCTime)
jExpireTime
  = lens _jExpireTime (\ s a -> s{_jExpireTime = a}) .
      mapping _DateTime

-- | The creation date\/time of the job.
jCreateTime :: Lens' Job (Maybe UTCTime)
jCreateTime
  = lens _jCreateTime (\ s a -> s{_jCreateTime = a}) .
      mapping _DateTime

instance FromJSON Job where
        parseJSON
          = withObject "Job"
              (\ o ->
                 Job' <$>
                   (o .:? "name") <*> (o .:? "id") <*>
                     (o .:? "systemManaged")
                     <*> (o .:? "reportTypeId")
                     <*> (o .:? "expireTime")
                     <*> (o .:? "createTime"))

instance ToJSON Job where
        toJSON Job'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _jName, ("id" .=) <$> _jId,
                  ("systemManaged" .=) <$> _jSystemManaged,
                  ("reportTypeId" .=) <$> _jReportTypeId,
                  ("expireTime" .=) <$> _jExpireTime,
                  ("createTime" .=) <$> _jCreateTime])

-- | gdata
--
-- /See:/ 'gDataDiffUploadResponse' smart constructor.
data GDataDiffUploadResponse =
  GDataDiffUploadResponse'
    { _gddurOriginalObject :: !(Maybe GDataCompositeMedia)
    , _gddurObjectVersion :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GDataDiffUploadResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gddurOriginalObject'
--
-- * 'gddurObjectVersion'
gDataDiffUploadResponse
    :: GDataDiffUploadResponse
gDataDiffUploadResponse =
  GDataDiffUploadResponse'
    {_gddurOriginalObject = Nothing, _gddurObjectVersion = Nothing}


-- | gdata
gddurOriginalObject :: Lens' GDataDiffUploadResponse (Maybe GDataCompositeMedia)
gddurOriginalObject
  = lens _gddurOriginalObject
      (\ s a -> s{_gddurOriginalObject = a})

-- | gdata
gddurObjectVersion :: Lens' GDataDiffUploadResponse (Maybe Text)
gddurObjectVersion
  = lens _gddurObjectVersion
      (\ s a -> s{_gddurObjectVersion = a})

instance FromJSON GDataDiffUploadResponse where
        parseJSON
          = withObject "GDataDiffUploadResponse"
              (\ o ->
                 GDataDiffUploadResponse' <$>
                   (o .:? "originalObject") <*> (o .:? "objectVersion"))

instance ToJSON GDataDiffUploadResponse where
        toJSON GDataDiffUploadResponse'{..}
          = object
              (catMaybes
                 [("originalObject" .=) <$> _gddurOriginalObject,
                  ("objectVersion" .=) <$> _gddurObjectVersion])

-- | gdata
--
-- /See:/ 'gDataDiffDownloadResponse' smart constructor.
newtype GDataDiffDownloadResponse =
  GDataDiffDownloadResponse'
    { _gdddrObjectLocation :: Maybe GDataCompositeMedia
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GDataDiffDownloadResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdddrObjectLocation'
gDataDiffDownloadResponse
    :: GDataDiffDownloadResponse
gDataDiffDownloadResponse =
  GDataDiffDownloadResponse' {_gdddrObjectLocation = Nothing}


-- | gdata
gdddrObjectLocation :: Lens' GDataDiffDownloadResponse (Maybe GDataCompositeMedia)
gdddrObjectLocation
  = lens _gdddrObjectLocation
      (\ s a -> s{_gdddrObjectLocation = a})

instance FromJSON GDataDiffDownloadResponse where
        parseJSON
          = withObject "GDataDiffDownloadResponse"
              (\ o ->
                 GDataDiffDownloadResponse' <$>
                   (o .:? "objectLocation"))

instance ToJSON GDataDiffDownloadResponse where
        toJSON GDataDiffDownloadResponse'{..}
          = object
              (catMaybes
                 [("objectLocation" .=) <$> _gdddrObjectLocation])

-- | Response message for ReportingService.ListJobs.
--
-- /See:/ 'listJobsResponse' smart constructor.
data ListJobsResponse =
  ListJobsResponse'
    { _ljrNextPageToken :: !(Maybe Text)
    , _ljrJobs :: !(Maybe [Job])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ljrNextPageToken'
--
-- * 'ljrJobs'
listJobsResponse
    :: ListJobsResponse
listJobsResponse =
  ListJobsResponse' {_ljrNextPageToken = Nothing, _ljrJobs = Nothing}


-- | A token to retrieve next page of results. Pass this value in the
-- ListJobsRequest.page_token field in the subsequent call to \`ListJobs\`
-- method to retrieve the next page of results.
ljrNextPageToken :: Lens' ListJobsResponse (Maybe Text)
ljrNextPageToken
  = lens _ljrNextPageToken
      (\ s a -> s{_ljrNextPageToken = a})

-- | The list of jobs.
ljrJobs :: Lens' ListJobsResponse [Job]
ljrJobs
  = lens _ljrJobs (\ s a -> s{_ljrJobs = a}) . _Default
      . _Coerce

instance FromJSON ListJobsResponse where
        parseJSON
          = withObject "ListJobsResponse"
              (\ o ->
                 ListJobsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "jobs" .!= mempty))

instance ToJSON ListJobsResponse where
        toJSON ListJobsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ljrNextPageToken,
                  ("jobs" .=) <$> _ljrJobs])

-- | gdata
--
-- /See:/ 'gDataDiffUploadRequest' smart constructor.
data GDataDiffUploadRequest =
  GDataDiffUploadRequest'
    { _gChecksumsInfo :: !(Maybe GDataCompositeMedia)
    , _gObjectVersion :: !(Maybe Text)
    , _gObjectInfo :: !(Maybe GDataCompositeMedia)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GDataDiffUploadRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gChecksumsInfo'
--
-- * 'gObjectVersion'
--
-- * 'gObjectInfo'
gDataDiffUploadRequest
    :: GDataDiffUploadRequest
gDataDiffUploadRequest =
  GDataDiffUploadRequest'
    { _gChecksumsInfo = Nothing
    , _gObjectVersion = Nothing
    , _gObjectInfo = Nothing
    }


-- | gdata
gChecksumsInfo :: Lens' GDataDiffUploadRequest (Maybe GDataCompositeMedia)
gChecksumsInfo
  = lens _gChecksumsInfo
      (\ s a -> s{_gChecksumsInfo = a})

-- | gdata
gObjectVersion :: Lens' GDataDiffUploadRequest (Maybe Text)
gObjectVersion
  = lens _gObjectVersion
      (\ s a -> s{_gObjectVersion = a})

-- | gdata
gObjectInfo :: Lens' GDataDiffUploadRequest (Maybe GDataCompositeMedia)
gObjectInfo
  = lens _gObjectInfo (\ s a -> s{_gObjectInfo = a})

instance FromJSON GDataDiffUploadRequest where
        parseJSON
          = withObject "GDataDiffUploadRequest"
              (\ o ->
                 GDataDiffUploadRequest' <$>
                   (o .:? "checksumsInfo") <*> (o .:? "objectVersion")
                     <*> (o .:? "objectInfo"))

instance ToJSON GDataDiffUploadRequest where
        toJSON GDataDiffUploadRequest'{..}
          = object
              (catMaybes
                 [("checksumsInfo" .=) <$> _gChecksumsInfo,
                  ("objectVersion" .=) <$> _gObjectVersion,
                  ("objectInfo" .=) <$> _gObjectInfo])

-- | gdata
--
-- /See:/ 'gDataDiffVersionResponse' smart constructor.
data GDataDiffVersionResponse =
  GDataDiffVersionResponse'
    { _gddvrObjectSizeBytes :: !(Maybe (Textual Int64))
    , _gddvrObjectVersion :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GDataDiffVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gddvrObjectSizeBytes'
--
-- * 'gddvrObjectVersion'
gDataDiffVersionResponse
    :: GDataDiffVersionResponse
gDataDiffVersionResponse =
  GDataDiffVersionResponse'
    {_gddvrObjectSizeBytes = Nothing, _gddvrObjectVersion = Nothing}


-- | gdata
gddvrObjectSizeBytes :: Lens' GDataDiffVersionResponse (Maybe Int64)
gddvrObjectSizeBytes
  = lens _gddvrObjectSizeBytes
      (\ s a -> s{_gddvrObjectSizeBytes = a})
      . mapping _Coerce

-- | gdata
gddvrObjectVersion :: Lens' GDataDiffVersionResponse (Maybe Text)
gddvrObjectVersion
  = lens _gddvrObjectVersion
      (\ s a -> s{_gddvrObjectVersion = a})

instance FromJSON GDataDiffVersionResponse where
        parseJSON
          = withObject "GDataDiffVersionResponse"
              (\ o ->
                 GDataDiffVersionResponse' <$>
                   (o .:? "objectSizeBytes") <*>
                     (o .:? "objectVersion"))

instance ToJSON GDataDiffVersionResponse where
        toJSON GDataDiffVersionResponse'{..}
          = object
              (catMaybes
                 [("objectSizeBytes" .=) <$> _gddvrObjectSizeBytes,
                  ("objectVersion" .=) <$> _gddvrObjectVersion])

-- | A report type.
--
-- /See:/ 'reportType' smart constructor.
data ReportType =
  ReportType'
    { _rtName :: !(Maybe Text)
    , _rtId :: !(Maybe Text)
    , _rtDeprecateTime :: !(Maybe DateTime')
    , _rtSystemManaged :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReportType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtName'
--
-- * 'rtId'
--
-- * 'rtDeprecateTime'
--
-- * 'rtSystemManaged'
reportType
    :: ReportType
reportType =
  ReportType'
    { _rtName = Nothing
    , _rtId = Nothing
    , _rtDeprecateTime = Nothing
    , _rtSystemManaged = Nothing
    }


-- | The name of the report type (max. 100 characters).
rtName :: Lens' ReportType (Maybe Text)
rtName = lens _rtName (\ s a -> s{_rtName = a})

-- | The ID of the report type (max. 100 characters).
rtId :: Lens' ReportType (Maybe Text)
rtId = lens _rtId (\ s a -> s{_rtId = a})

-- | The date\/time when this report type was\/will be deprecated.
rtDeprecateTime :: Lens' ReportType (Maybe UTCTime)
rtDeprecateTime
  = lens _rtDeprecateTime
      (\ s a -> s{_rtDeprecateTime = a})
      . mapping _DateTime

-- | True if this a system-managed report type; otherwise false. Reporting
-- jobs for system-managed report types are created automatically and can
-- thus not be used in the \`CreateJob\` method.
rtSystemManaged :: Lens' ReportType (Maybe Bool)
rtSystemManaged
  = lens _rtSystemManaged
      (\ s a -> s{_rtSystemManaged = a})

instance FromJSON ReportType where
        parseJSON
          = withObject "ReportType"
              (\ o ->
                 ReportType' <$>
                   (o .:? "name") <*> (o .:? "id") <*>
                     (o .:? "deprecateTime")
                     <*> (o .:? "systemManaged"))

instance ToJSON ReportType where
        toJSON ReportType'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _rtName, ("id" .=) <$> _rtId,
                  ("deprecateTime" .=) <$> _rtDeprecateTime,
                  ("systemManaged" .=) <$> _rtSystemManaged])
