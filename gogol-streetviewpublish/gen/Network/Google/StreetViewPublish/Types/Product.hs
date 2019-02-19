{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.StreetViewPublish.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.StreetViewPublish.Types.Product where

import           Network.Google.Prelude
import           Network.Google.StreetViewPublish.Types.Sum

-- | An object representing a latitude\/longitude pair. This is expressed as
-- a pair of doubles representing degrees latitude and degrees longitude.
-- Unless specified otherwise, this must conform to the
-- <http://www.unoosa.org/pdf/icg/2012/template/WGS_84.pdf WGS84 standard>.
-- Values must be within normalized ranges.
--
-- /See:/ 'latLng' smart constructor.
data LatLng =
  LatLng'
    { _llLatitude  :: !(Maybe (Textual Double))
    , _llLongitude :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LatLng' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llLatitude'
--
-- * 'llLongitude'
latLng
    :: LatLng
latLng = LatLng' {_llLatitude = Nothing, _llLongitude = Nothing}

-- | The latitude in degrees. It must be in the range [-90.0, +90.0].
llLatitude :: Lens' LatLng (Maybe Double)
llLatitude
  = lens _llLatitude (\ s a -> s{_llLatitude = a}) .
      mapping _Coerce

-- | The longitude in degrees. It must be in the range [-180.0, +180.0].
llLongitude :: Lens' LatLng (Maybe Double)
llLongitude
  = lens _llLongitude (\ s a -> s{_llLongitude = a}) .
      mapping _Coerce

instance FromJSON LatLng where
        parseJSON
          = withObject "LatLng"
              (\ o ->
                 LatLng' <$>
                   (o .:? "latitude") <*> (o .:? "longitude"))

instance ToJSON LatLng where
        toJSON LatLng'{..}
          = object
              (catMaybes
                 [("latitude" .=) <$> _llLatitude,
                  ("longitude" .=) <$> _llLongitude])

-- | Photo is used to store 360 photos along with photo metadata.
--
-- /See:/ 'photo' smart constructor.
data Photo =
  Photo'
    { _pThumbnailURL      :: !(Maybe Text)
    , _pMapsPublishStatus :: !(Maybe PhotoMapsPublishStatus)
    , _pConnections       :: !(Maybe [Connection])
    , _pShareLink         :: !(Maybe Text)
    , _pUploadReference   :: !(Maybe UploadRef)
    , _pCaptureTime       :: !(Maybe DateTime')
    , _pPose              :: !(Maybe Pose)
    , _pDownloadURL       :: !(Maybe Text)
    , _pTransferStatus    :: !(Maybe PhotoTransferStatus)
    , _pPlaces            :: !(Maybe [Place])
    , _pViewCount         :: !(Maybe (Textual Int64))
    , _pPhotoId           :: !(Maybe PhotoId)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Photo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pThumbnailURL'
--
-- * 'pMapsPublishStatus'
--
-- * 'pConnections'
--
-- * 'pShareLink'
--
-- * 'pUploadReference'
--
-- * 'pCaptureTime'
--
-- * 'pPose'
--
-- * 'pDownloadURL'
--
-- * 'pTransferStatus'
--
-- * 'pPlaces'
--
-- * 'pViewCount'
--
-- * 'pPhotoId'
photo
    :: Photo
photo =
  Photo'
    { _pThumbnailURL = Nothing
    , _pMapsPublishStatus = Nothing
    , _pConnections = Nothing
    , _pShareLink = Nothing
    , _pUploadReference = Nothing
    , _pCaptureTime = Nothing
    , _pPose = Nothing
    , _pDownloadURL = Nothing
    , _pTransferStatus = Nothing
    , _pPlaces = Nothing
    , _pViewCount = Nothing
    , _pPhotoId = Nothing
    }

-- | Output only. The thumbnail URL for showing a preview of the given photo.
pThumbnailURL :: Lens' Photo (Maybe Text)
pThumbnailURL
  = lens _pThumbnailURL
      (\ s a -> s{_pThumbnailURL = a})

-- | Output only. Status in Google Maps, whether this photo was published, or
-- rejected for a possibly specified reason.
pMapsPublishStatus :: Lens' Photo (Maybe PhotoMapsPublishStatus)
pMapsPublishStatus
  = lens _pMapsPublishStatus
      (\ s a -> s{_pMapsPublishStatus = a})

-- | Connections to other photos. A connection represents the link from this
-- photo to another photo.
pConnections :: Lens' Photo [Connection]
pConnections
  = lens _pConnections (\ s a -> s{_pConnections = a})
      . _Default
      . _Coerce

-- | Output only. The share link for the photo.
pShareLink :: Lens' Photo (Maybe Text)
pShareLink
  = lens _pShareLink (\ s a -> s{_pShareLink = a})

-- | Required when creating a photo. Input only. The resource URL where the
-- photo bytes are uploaded to.
pUploadReference :: Lens' Photo (Maybe UploadRef)
pUploadReference
  = lens _pUploadReference
      (\ s a -> s{_pUploadReference = a})

-- | Absolute time when the photo was captured. When the photo has no exif
-- timestamp, this is used to set a timestamp in the photo metadata.
pCaptureTime :: Lens' Photo (Maybe UTCTime)
pCaptureTime
  = lens _pCaptureTime (\ s a -> s{_pCaptureTime = a})
      . mapping _DateTime

-- | Pose of the photo.
pPose :: Lens' Photo (Maybe Pose)
pPose = lens _pPose (\ s a -> s{_pPose = a})

-- | Output only. The download URL for the photo bytes. This field is set
-- only when GetPhotoRequest.view is set to PhotoView.INCLUDE_DOWNLOAD_URL.
pDownloadURL :: Lens' Photo (Maybe Text)
pDownloadURL
  = lens _pDownloadURL (\ s a -> s{_pDownloadURL = a})

-- | Output only. Status of rights transfer on this photo.
pTransferStatus :: Lens' Photo (Maybe PhotoTransferStatus)
pTransferStatus
  = lens _pTransferStatus
      (\ s a -> s{_pTransferStatus = a})

-- | Places where this photo belongs.
pPlaces :: Lens' Photo [Place]
pPlaces
  = lens _pPlaces (\ s a -> s{_pPlaces = a}) . _Default
      . _Coerce

-- | Output only. View count of the photo.
pViewCount :: Lens' Photo (Maybe Int64)
pViewCount
  = lens _pViewCount (\ s a -> s{_pViewCount = a}) .
      mapping _Coerce

-- | Required when updating a photo. Output only when creating a photo.
-- Identifier for the photo, which is unique among all photos in Google.
pPhotoId :: Lens' Photo (Maybe PhotoId)
pPhotoId = lens _pPhotoId (\ s a -> s{_pPhotoId = a})

instance FromJSON Photo where
        parseJSON
          = withObject "Photo"
              (\ o ->
                 Photo' <$>
                   (o .:? "thumbnailUrl") <*>
                     (o .:? "mapsPublishStatus")
                     <*> (o .:? "connections" .!= mempty)
                     <*> (o .:? "shareLink")
                     <*> (o .:? "uploadReference")
                     <*> (o .:? "captureTime")
                     <*> (o .:? "pose")
                     <*> (o .:? "downloadUrl")
                     <*> (o .:? "transferStatus")
                     <*> (o .:? "places" .!= mempty)
                     <*> (o .:? "viewCount")
                     <*> (o .:? "photoId"))

instance ToJSON Photo where
        toJSON Photo'{..}
          = object
              (catMaybes
                 [("thumbnailUrl" .=) <$> _pThumbnailURL,
                  ("mapsPublishStatus" .=) <$> _pMapsPublishStatus,
                  ("connections" .=) <$> _pConnections,
                  ("shareLink" .=) <$> _pShareLink,
                  ("uploadReference" .=) <$> _pUploadReference,
                  ("captureTime" .=) <$> _pCaptureTime,
                  ("pose" .=) <$> _pPose,
                  ("downloadUrl" .=) <$> _pDownloadURL,
                  ("transferStatus" .=) <$> _pTransferStatus,
                  ("places" .=) <$> _pPlaces,
                  ("viewCount" .=) <$> _pViewCount,
                  ("photoId" .=) <$> _pPhotoId])

-- | Request to update the metadata of a Photo. Updating the pixels of a
-- photo is not supported.
--
-- /See:/ 'updatePhotoRequest' smart constructor.
data UpdatePhotoRequest =
  UpdatePhotoRequest'
    { _uprPhoto      :: !(Maybe Photo)
    , _uprUpdateMask :: !(Maybe GFieldMask)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdatePhotoRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uprPhoto'
--
-- * 'uprUpdateMask'
updatePhotoRequest
    :: UpdatePhotoRequest
updatePhotoRequest =
  UpdatePhotoRequest' {_uprPhoto = Nothing, _uprUpdateMask = Nothing}

-- | Required. Photo object containing the new metadata.
uprPhoto :: Lens' UpdatePhotoRequest (Maybe Photo)
uprPhoto = lens _uprPhoto (\ s a -> s{_uprPhoto = a})

-- | Mask that identifies fields on the photo metadata to update. If not
-- present, the old Photo metadata will be entirely replaced with the new
-- Photo metadata in this request. The update fails if invalid fields are
-- specified. Multiple fields can be specified in a comma-delimited list.
-- The following fields are valid: * \`pose.heading\` * \`pose.latLngPair\`
-- * \`pose.pitch\` * \`pose.roll\` * \`pose.level\` * \`pose.altitude\` *
-- \`connections\` * \`places\`
-- __Note:__ Repeated fields in updateMask mean the entire set of repeated
-- values will be replaced with the new contents. For example, if
-- updateMask contains \`connections\` and
-- \`UpdatePhotoRequest.photo.connections\` is empty, all connections will
-- be removed.
uprUpdateMask :: Lens' UpdatePhotoRequest (Maybe GFieldMask)
uprUpdateMask
  = lens _uprUpdateMask
      (\ s a -> s{_uprUpdateMask = a})

instance FromJSON UpdatePhotoRequest where
        parseJSON
          = withObject "UpdatePhotoRequest"
              (\ o ->
                 UpdatePhotoRequest' <$>
                   (o .:? "photo") <*> (o .:? "updateMask"))

instance ToJSON UpdatePhotoRequest where
        toJSON UpdatePhotoRequest'{..}
          = object
              (catMaybes
                 [("photo" .=) <$> _uprPhoto,
                  ("updateMask" .=) <$> _uprUpdateMask])

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). The error model is
-- designed to be: - Simple to use and understand for most users - Flexible
-- enough to meet unexpected needs # Overview The \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. The error code should be an enum value of google.rpc.Code, but
-- it may accept additional error codes if needed. The error message should
-- be a developer-facing English message that helps developers *understand*
-- and *resolve* the error. If a localized user-facing error message is
-- needed, put the localized message in the error details or localize it in
-- the client. The optional error details may contain arbitrary information
-- about the error. There is a predefined set of error detail types in the
-- package \`google.rpc\` that can be used for common error conditions. #
-- Language mapping The \`Status\` message is the logical representation of
-- the error model, but it is not necessarily the actual wire format. When
-- the \`Status\` message is exposed in different client libraries and
-- different wire protocols, it can be mapped differently. For example, it
-- will likely be mapped to some exceptions in Java, but more likely mapped
-- to some error codes in C. # Other uses The error model and the
-- \`Status\` message can be used in a variety of environments, either with
-- or without APIs, to provide a consistent developer experience across
-- different environments. Example uses of this error model include: -
-- Partial errors. If a service needs to return partial errors to the
-- client, it may embed the \`Status\` in the normal response to indicate
-- the partial errors. - Workflow errors. A typical workflow has multiple
-- steps. Each step may have a \`Status\` message for error reporting. -
-- Batch operations. If a client uses batch request and batch response, the
-- \`Status\` message should be used directly inside batch response, one
-- for each error sub-response. - Asynchronous operations. If an API call
-- embeds asynchronous operation results in its response, the status of
-- those operations should be represented directly using the \`Status\`
-- message. - Logging. If some API errors are stored in logs, the message
-- \`Status\` could be used directly after any stripping needed for
-- security\/privacy reasons.
--
-- /See:/ 'status' smart constructor.
data Status =
  Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode    :: !(Maybe (Textual Int32))
    , _sMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sDetails'
--
-- * 'sCode'
--
-- * 'sMessage'
status
    :: Status
status = Status' {_sDetails = Nothing, _sCode = Nothing, _sMessage = Nothing}

-- | A list of messages that carry the error details. There is a common set
-- of message types for APIs to use.
sDetails :: Lens' Status [StatusDetailsItem]
sDetails
  = lens _sDetails (\ s a -> s{_sDetails = a}) .
      _Default
      . _Coerce

-- | The status code, which should be an enum value of google.rpc.Code.
sCode :: Lens' Status (Maybe Int32)
sCode
  = lens _sCode (\ s a -> s{_sCode = a}) .
      mapping _Coerce

-- | A developer-facing error message, which should be in English. Any
-- user-facing error message should be localized and sent in the
-- google.rpc.Status.details field, or localized by the client.
sMessage :: Lens' Status (Maybe Text)
sMessage = lens _sMessage (\ s a -> s{_sMessage = a})

instance FromJSON Status where
        parseJSON
          = withObject "Status"
              (\ o ->
                 Status' <$>
                   (o .:? "details" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON Status where
        toJSON Status'{..}
          = object
              (catMaybes
                 [("details" .=) <$> _sDetails,
                  ("code" .=) <$> _sCode,
                  ("message" .=) <$> _sMessage])

-- | Response payload for a single Photo in batch operations including
-- BatchGetPhotos and BatchUpdatePhotos.
--
-- /See:/ 'photoResponse' smart constructor.
data PhotoResponse =
  PhotoResponse'
    { _prPhoto  :: !(Maybe Photo)
    , _prStatus :: !(Maybe Status)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PhotoResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prPhoto'
--
-- * 'prStatus'
photoResponse
    :: PhotoResponse
photoResponse = PhotoResponse' {_prPhoto = Nothing, _prStatus = Nothing}

-- | The Photo resource, if the request was successful.
prPhoto :: Lens' PhotoResponse (Maybe Photo)
prPhoto = lens _prPhoto (\ s a -> s{_prPhoto = a})

-- | The status for the operation to get or update a single photo in the
-- batch request.
prStatus :: Lens' PhotoResponse (Maybe Status)
prStatus = lens _prStatus (\ s a -> s{_prStatus = a})

instance FromJSON PhotoResponse where
        parseJSON
          = withObject "PhotoResponse"
              (\ o ->
                 PhotoResponse' <$>
                   (o .:? "photo") <*> (o .:? "status"))

instance ToJSON PhotoResponse where
        toJSON PhotoResponse'{..}
          = object
              (catMaybes
                 [("photo" .=) <$> _prPhoto,
                  ("status" .=) <$> _prStatus])

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'operation' smart constructor.
data Operation =
  Operation'
    { _oDone     :: !(Maybe Bool)
    , _oError    :: !(Maybe Status)
    , _oResponse :: !(Maybe OperationResponse)
    , _oName     :: !(Maybe Text)
    , _oMetadata :: !(Maybe OperationMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oDone'
--
-- * 'oError'
--
-- * 'oResponse'
--
-- * 'oName'
--
-- * 'oMetadata'
operation
    :: Operation
operation =
  Operation'
    { _oDone = Nothing
    , _oError = Nothing
    , _oResponse = Nothing
    , _oName = Nothing
    , _oMetadata = Nothing
    }

-- | If the value is \`false\`, it means the operation is still in progress.
-- If \`true\`, the operation is completed, and either \`error\` or
-- \`response\` is available.
oDone :: Lens' Operation (Maybe Bool)
oDone = lens _oDone (\ s a -> s{_oDone = a})

-- | The error result of the operation in case of failure or cancellation.
oError :: Lens' Operation (Maybe Status)
oError = lens _oError (\ s a -> s{_oError = a})

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
oResponse :: Lens' Operation (Maybe OperationResponse)
oResponse
  = lens _oResponse (\ s a -> s{_oResponse = a})

-- | The server-assigned name, which is only unique within the same service
-- that originally returns it. If you use the default HTTP mapping, the
-- \`name\` should have the format of \`operations\/some\/unique\/name\`.
oName :: Lens' Operation (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
oMetadata :: Lens' Operation (Maybe OperationMetadata)
oMetadata
  = lens _oMetadata (\ s a -> s{_oMetadata = a})

instance FromJSON Operation where
        parseJSON
          = withObject "Operation"
              (\ o ->
                 Operation' <$>
                   (o .:? "done") <*> (o .:? "error") <*>
                     (o .:? "response")
                     <*> (o .:? "name")
                     <*> (o .:? "metadata"))

instance ToJSON Operation where
        toJSON Operation'{..}
          = object
              (catMaybes
                 [("done" .=) <$> _oDone, ("error" .=) <$> _oError,
                  ("response" .=) <$> _oResponse,
                  ("name" .=) <$> _oName,
                  ("metadata" .=) <$> _oMetadata])

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

--
-- /See:/ 'statusDetailsItem' smart constructor.
newtype StatusDetailsItem =
  StatusDetailsItem'
    { _sdiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'StatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiAddtional'
statusDetailsItem
    :: HashMap Text JSONValue -- ^ 'sdiAddtional'
    -> StatusDetailsItem
statusDetailsItem pSdiAddtional_ =
  StatusDetailsItem' {_sdiAddtional = _Coerce # pSdiAddtional_}

-- | Properties of the object. Contains field \'type with type URL.
sdiAddtional :: Lens' StatusDetailsItem (HashMap Text JSONValue)
sdiAddtional
  = lens _sdiAddtional (\ s a -> s{_sdiAddtional = a})
      . _Coerce

instance FromJSON StatusDetailsItem where
        parseJSON
          = withObject "StatusDetailsItem"
              (\ o -> StatusDetailsItem' <$> (parseJSONObject o))

instance ToJSON StatusDetailsItem where
        toJSON = toJSON . _sdiAddtional

-- | Response to list all photos that belong to a user.
--
-- /See:/ 'listPhotosResponse' smart constructor.
data ListPhotosResponse =
  ListPhotosResponse'
    { _lprNextPageToken :: !(Maybe Text)
    , _lprPhotos        :: !(Maybe [Photo])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListPhotosResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lprNextPageToken'
--
-- * 'lprPhotos'
listPhotosResponse
    :: ListPhotosResponse
listPhotosResponse =
  ListPhotosResponse' {_lprNextPageToken = Nothing, _lprPhotos = Nothing}

-- | Token to retrieve the next page of results, or empty if there are no
-- more results in the list.
lprNextPageToken :: Lens' ListPhotosResponse (Maybe Text)
lprNextPageToken
  = lens _lprNextPageToken
      (\ s a -> s{_lprNextPageToken = a})

-- | List of photos. The maximum number of items returned is based on the
-- pageSize field in the request.
lprPhotos :: Lens' ListPhotosResponse [Photo]
lprPhotos
  = lens _lprPhotos (\ s a -> s{_lprPhotos = a}) .
      _Default
      . _Coerce

instance FromJSON ListPhotosResponse where
        parseJSON
          = withObject "ListPhotosResponse"
              (\ o ->
                 ListPhotosResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "photos" .!= mempty))

instance ToJSON ListPhotosResponse where
        toJSON ListPhotosResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lprNextPageToken,
                  ("photos" .=) <$> _lprPhotos])

-- | A connection is the link from a source photo to a destination photo.
--
-- /See:/ 'connection' smart constructor.
newtype Connection =
  Connection'
    { _cTarget :: Maybe PhotoId
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Connection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cTarget'
connection
    :: Connection
connection = Connection' {_cTarget = Nothing}

-- | Required. The destination of the connection from the containing photo to
-- another photo.
cTarget :: Lens' Connection (Maybe PhotoId)
cTarget = lens _cTarget (\ s a -> s{_cTarget = a})

instance FromJSON Connection where
        parseJSON
          = withObject "Connection"
              (\ o -> Connection' <$> (o .:? "target"))

instance ToJSON Connection where
        toJSON Connection'{..}
          = object (catMaybes [("target" .=) <$> _cTarget])

-- | Response to batch update of metadata of one or more Photos.
--
-- /See:/ 'batchUpdatePhotosResponse' smart constructor.
newtype BatchUpdatePhotosResponse =
  BatchUpdatePhotosResponse'
    { _buprResults :: Maybe [PhotoResponse]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BatchUpdatePhotosResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'buprResults'
batchUpdatePhotosResponse
    :: BatchUpdatePhotosResponse
batchUpdatePhotosResponse = BatchUpdatePhotosResponse' {_buprResults = Nothing}

-- | List of results for each individual Photo updated, in the same order as
-- the request.
buprResults :: Lens' BatchUpdatePhotosResponse [PhotoResponse]
buprResults
  = lens _buprResults (\ s a -> s{_buprResults = a}) .
      _Default
      . _Coerce

instance FromJSON BatchUpdatePhotosResponse where
        parseJSON
          = withObject "BatchUpdatePhotosResponse"
              (\ o ->
                 BatchUpdatePhotosResponse' <$>
                   (o .:? "results" .!= mempty))

instance ToJSON BatchUpdatePhotosResponse where
        toJSON BatchUpdatePhotosResponse'{..}
          = object
              (catMaybes [("results" .=) <$> _buprResults])

-- | Response to batch delete of one or more Photos.
--
-- /See:/ 'batchDeletePhotosResponse' smart constructor.
newtype BatchDeletePhotosResponse =
  BatchDeletePhotosResponse'
    { _bdprStatus :: Maybe [Status]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BatchDeletePhotosResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdprStatus'
batchDeletePhotosResponse
    :: BatchDeletePhotosResponse
batchDeletePhotosResponse = BatchDeletePhotosResponse' {_bdprStatus = Nothing}

-- | The status for the operation to delete a single Photo in the batch
-- request.
bdprStatus :: Lens' BatchDeletePhotosResponse [Status]
bdprStatus
  = lens _bdprStatus (\ s a -> s{_bdprStatus = a}) .
      _Default
      . _Coerce

instance FromJSON BatchDeletePhotosResponse where
        parseJSON
          = withObject "BatchDeletePhotosResponse"
              (\ o ->
                 BatchDeletePhotosResponse' <$>
                   (o .:? "status" .!= mempty))

instance ToJSON BatchDeletePhotosResponse where
        toJSON BatchDeletePhotosResponse'{..}
          = object (catMaybes [("status" .=) <$> _bdprStatus])

-- | Raw pose measurement for an entity.
--
-- /See:/ 'pose' smart constructor.
data Pose =
  Pose'
    { _pRoll           :: !(Maybe (Textual Double))
    , _pHeading        :: !(Maybe (Textual Double))
    , _pLatLngPair     :: !(Maybe LatLng)
    , _pAccuracyMeters :: !(Maybe (Textual Double))
    , _pAltitude       :: !(Maybe (Textual Double))
    , _pLevel          :: !(Maybe Level)
    , _pPitch          :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Pose' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pRoll'
--
-- * 'pHeading'
--
-- * 'pLatLngPair'
--
-- * 'pAccuracyMeters'
--
-- * 'pAltitude'
--
-- * 'pLevel'
--
-- * 'pPitch'
pose
    :: Pose
pose =
  Pose'
    { _pRoll = Nothing
    , _pHeading = Nothing
    , _pLatLngPair = Nothing
    , _pAccuracyMeters = Nothing
    , _pAltitude = Nothing
    , _pLevel = Nothing
    , _pPitch = Nothing
    }

-- | Roll, measured in degrees. Value must be >= 0 and \<360. A value of 0
-- means level with the horizon. NaN indicates an unmeasured quantity.
pRoll :: Lens' Pose (Maybe Double)
pRoll
  = lens _pRoll (\ s a -> s{_pRoll = a}) .
      mapping _Coerce

-- | Compass heading, measured at the center of the photo in degrees
-- clockwise from North. Value must be >=0 and \<360. NaN indicates an
-- unmeasured quantity.
pHeading :: Lens' Pose (Maybe Double)
pHeading
  = lens _pHeading (\ s a -> s{_pHeading = a}) .
      mapping _Coerce

-- | Latitude and longitude pair of the pose, as explained here:
-- https:\/\/cloud.google.com\/datastore\/docs\/reference\/rest\/Shared.Types\/LatLng
-- When creating a Photo, if the latitude and longitude pair are not
-- provided here, the geolocation from the exif header will be used. If the
-- latitude and longitude pair is not provided and cannot be found in the
-- exif header, the create photo process will fail.
pLatLngPair :: Lens' Pose (Maybe LatLng)
pLatLngPair
  = lens _pLatLngPair (\ s a -> s{_pLatLngPair = a})

-- | The estimated horizontal accuracy of this pose in meters with 68%
-- confidence (one standard deviation). For example, on Android, this value
-- is available from this method:
-- https:\/\/developer.android.com\/reference\/android\/location\/Location#getAccuracy().
-- Other platforms have different methods of obtaining similar accuracy
-- estimations.
pAccuracyMeters :: Lens' Pose (Maybe Double)
pAccuracyMeters
  = lens _pAccuracyMeters
      (\ s a -> s{_pAccuracyMeters = a})
      . mapping _Coerce

-- | Altitude of the pose in meters above WGS84 ellipsoid. NaN indicates an
-- unmeasured quantity.
pAltitude :: Lens' Pose (Maybe Double)
pAltitude
  = lens _pAltitude (\ s a -> s{_pAltitude = a}) .
      mapping _Coerce

-- | Level (the floor in a building) used to configure vertical navigation.
pLevel :: Lens' Pose (Maybe Level)
pLevel = lens _pLevel (\ s a -> s{_pLevel = a})

-- | Pitch, measured at the center of the photo in degrees. Value must be
-- >=-90 and \<= 90. A value of -90 means looking directly down, and a
-- value of 90 means looking directly up. NaN indicates an unmeasured
-- quantity.
pPitch :: Lens' Pose (Maybe Double)
pPitch
  = lens _pPitch (\ s a -> s{_pPitch = a}) .
      mapping _Coerce

instance FromJSON Pose where
        parseJSON
          = withObject "Pose"
              (\ o ->
                 Pose' <$>
                   (o .:? "roll") <*> (o .:? "heading") <*>
                     (o .:? "latLngPair")
                     <*> (o .:? "accuracyMeters")
                     <*> (o .:? "altitude")
                     <*> (o .:? "level")
                     <*> (o .:? "pitch"))

instance ToJSON Pose where
        toJSON Pose'{..}
          = object
              (catMaybes
                 [("roll" .=) <$> _pRoll,
                  ("heading" .=) <$> _pHeading,
                  ("latLngPair" .=) <$> _pLatLngPair,
                  ("accuracyMeters" .=) <$> _pAccuracyMeters,
                  ("altitude" .=) <$> _pAltitude,
                  ("level" .=) <$> _pLevel, ("pitch" .=) <$> _pPitch])

-- | Upload reference for media files.
--
-- /See:/ 'uploadRef' smart constructor.
newtype UploadRef =
  UploadRef'
    { _urUploadURL :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UploadRef' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urUploadURL'
uploadRef
    :: UploadRef
uploadRef = UploadRef' {_urUploadURL = Nothing}

-- | Required. An upload reference should be unique for each user. It follows
-- the form:
-- \"https:\/\/streetviewpublish.googleapis.com\/media\/user\/{account_id}\/photo\/{upload_reference}\"
urUploadURL :: Lens' UploadRef (Maybe Text)
urUploadURL
  = lens _urUploadURL (\ s a -> s{_urUploadURL = a})

instance FromJSON UploadRef where
        parseJSON
          = withObject "UploadRef"
              (\ o -> UploadRef' <$> (o .:? "uploadUrl"))

instance ToJSON UploadRef where
        toJSON UploadRef'{..}
          = object
              (catMaybes [("uploadUrl" .=) <$> _urUploadURL])

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
--
-- /See:/ 'operationMetadata' smart constructor.
newtype OperationMetadata =
  OperationMetadata'
    { _omAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omAddtional'
operationMetadata
    :: HashMap Text JSONValue -- ^ 'omAddtional'
    -> OperationMetadata
operationMetadata pOmAddtional_ =
  OperationMetadata' {_omAddtional = _Coerce # pOmAddtional_}

-- | Properties of the object. Contains field \'type with type URL.
omAddtional :: Lens' OperationMetadata (HashMap Text JSONValue)
omAddtional
  = lens _omAddtional (\ s a -> s{_omAddtional = a}) .
      _Coerce

instance FromJSON OperationMetadata where
        parseJSON
          = withObject "OperationMetadata"
              (\ o -> OperationMetadata' <$> (parseJSONObject o))

instance ToJSON OperationMetadata where
        toJSON = toJSON . _omAddtional

-- | Request to update the metadata of photos. Updating the pixels of photos
-- is not supported.
--
-- /See:/ 'batchUpdatePhotosRequest' smart constructor.
newtype BatchUpdatePhotosRequest =
  BatchUpdatePhotosRequest'
    { _buprUpdatePhotoRequests :: Maybe [UpdatePhotoRequest]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BatchUpdatePhotosRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'buprUpdatePhotoRequests'
batchUpdatePhotosRequest
    :: BatchUpdatePhotosRequest
batchUpdatePhotosRequest =
  BatchUpdatePhotosRequest' {_buprUpdatePhotoRequests = Nothing}

-- | Required. List of UpdatePhotoRequests.
buprUpdatePhotoRequests :: Lens' BatchUpdatePhotosRequest [UpdatePhotoRequest]
buprUpdatePhotoRequests
  = lens _buprUpdatePhotoRequests
      (\ s a -> s{_buprUpdatePhotoRequests = a})
      . _Default
      . _Coerce

instance FromJSON BatchUpdatePhotosRequest where
        parseJSON
          = withObject "BatchUpdatePhotosRequest"
              (\ o ->
                 BatchUpdatePhotosRequest' <$>
                   (o .:? "updatePhotoRequests" .!= mempty))

instance ToJSON BatchUpdatePhotosRequest where
        toJSON BatchUpdatePhotosRequest'{..}
          = object
              (catMaybes
                 [("updatePhotoRequests" .=) <$>
                    _buprUpdatePhotoRequests])

-- | Request to delete multiple Photos.
--
-- /See:/ 'batchDeletePhotosRequest' smart constructor.
newtype BatchDeletePhotosRequest =
  BatchDeletePhotosRequest'
    { _bdprPhotoIds :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BatchDeletePhotosRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdprPhotoIds'
batchDeletePhotosRequest
    :: BatchDeletePhotosRequest
batchDeletePhotosRequest = BatchDeletePhotosRequest' {_bdprPhotoIds = Nothing}

-- | Required. IDs of the Photos. For HTTP GET requests, the URL query
-- parameter should be \`photoIds=&photoIds=&...\`.
bdprPhotoIds :: Lens' BatchDeletePhotosRequest [Text]
bdprPhotoIds
  = lens _bdprPhotoIds (\ s a -> s{_bdprPhotoIds = a})
      . _Default
      . _Coerce

instance FromJSON BatchDeletePhotosRequest where
        parseJSON
          = withObject "BatchDeletePhotosRequest"
              (\ o ->
                 BatchDeletePhotosRequest' <$>
                   (o .:? "photoIds" .!= mempty))

instance ToJSON BatchDeletePhotosRequest where
        toJSON BatchDeletePhotosRequest'{..}
          = object
              (catMaybes [("photoIds" .=) <$> _bdprPhotoIds])

-- | Place metadata for an entity.
--
-- /See:/ 'place' smart constructor.
data Place =
  Place'
    { _pLanguageCode :: !(Maybe Text)
    , _pName         :: !(Maybe Text)
    , _pPlaceId      :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Place' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pLanguageCode'
--
-- * 'pName'
--
-- * 'pPlaceId'
place
    :: Place
place = Place' {_pLanguageCode = Nothing, _pName = Nothing, _pPlaceId = Nothing}

-- | Output-only. The language_code that the name is localized with. This
-- should be the language_code specified in the request, but may be a
-- fallback.
pLanguageCode :: Lens' Place (Maybe Text)
pLanguageCode
  = lens _pLanguageCode
      (\ s a -> s{_pLanguageCode = a})

-- | Output-only. The name of the place, localized to the language_code.
pName :: Lens' Place (Maybe Text)
pName = lens _pName (\ s a -> s{_pName = a})

-- | Place identifier, as described in
-- https:\/\/developers.google.com\/places\/place-id.
pPlaceId :: Lens' Place (Maybe Text)
pPlaceId = lens _pPlaceId (\ s a -> s{_pPlaceId = a})

instance FromJSON Place where
        parseJSON
          = withObject "Place"
              (\ o ->
                 Place' <$>
                   (o .:? "languageCode") <*> (o .:? "name") <*>
                     (o .:? "placeId"))

instance ToJSON Place where
        toJSON Place'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _pLanguageCode,
                  ("name" .=) <$> _pName,
                  ("placeId" .=) <$> _pPlaceId])

-- | Level information containing level number and its corresponding name.
--
-- /See:/ 'level' smart constructor.
data Level =
  Level'
    { _lName   :: !(Maybe Text)
    , _lNumber :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Level' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lName'
--
-- * 'lNumber'
level
    :: Level
level = Level' {_lName = Nothing, _lNumber = Nothing}

-- | Required. A name assigned to this Level, restricted to 3 characters.
-- Consider how the elevator buttons would be labeled for this level if
-- there was an elevator.
lName :: Lens' Level (Maybe Text)
lName = lens _lName (\ s a -> s{_lName = a})

-- | Floor number, used for ordering. 0 indicates the ground level, 1
-- indicates the first level above ground level, -1 indicates the first
-- level under ground level. Non-integer values are OK.
lNumber :: Lens' Level (Maybe Double)
lNumber
  = lens _lNumber (\ s a -> s{_lNumber = a}) .
      mapping _Coerce

instance FromJSON Level where
        parseJSON
          = withObject "Level"
              (\ o ->
                 Level' <$> (o .:? "name") <*> (o .:? "number"))

instance ToJSON Level where
        toJSON Level'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _lName, ("number" .=) <$> _lNumber])

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
--
-- /See:/ 'operationResponse' smart constructor.
newtype OperationResponse =
  OperationResponse'
    { _orAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orAddtional'
operationResponse
    :: HashMap Text JSONValue -- ^ 'orAddtional'
    -> OperationResponse
operationResponse pOrAddtional_ =
  OperationResponse' {_orAddtional = _Coerce # pOrAddtional_}

-- | Properties of the object. Contains field \'type with type URL.
orAddtional :: Lens' OperationResponse (HashMap Text JSONValue)
orAddtional
  = lens _orAddtional (\ s a -> s{_orAddtional = a}) .
      _Coerce

instance FromJSON OperationResponse where
        parseJSON
          = withObject "OperationResponse"
              (\ o -> OperationResponse' <$> (parseJSONObject o))

instance ToJSON OperationResponse where
        toJSON = toJSON . _orAddtional

-- | Response to batch get of Photos.
--
-- /See:/ 'batchGetPhotosResponse' smart constructor.
newtype BatchGetPhotosResponse =
  BatchGetPhotosResponse'
    { _bgprResults :: Maybe [PhotoResponse]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BatchGetPhotosResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgprResults'
batchGetPhotosResponse
    :: BatchGetPhotosResponse
batchGetPhotosResponse = BatchGetPhotosResponse' {_bgprResults = Nothing}

-- | List of results for each individual Photo requested, in the same order
-- as the requests in BatchGetPhotos.
bgprResults :: Lens' BatchGetPhotosResponse [PhotoResponse]
bgprResults
  = lens _bgprResults (\ s a -> s{_bgprResults = a}) .
      _Default
      . _Coerce

instance FromJSON BatchGetPhotosResponse where
        parseJSON
          = withObject "BatchGetPhotosResponse"
              (\ o ->
                 BatchGetPhotosResponse' <$>
                   (o .:? "results" .!= mempty))

instance ToJSON BatchGetPhotosResponse where
        toJSON BatchGetPhotosResponse'{..}
          = object
              (catMaybes [("results" .=) <$> _bgprResults])

-- | Identifier for a Photo.
--
-- /See:/ 'photoId' smart constructor.
newtype PhotoId =
  PhotoId'
    { _piId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PhotoId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piId'
photoId
    :: PhotoId
photoId = PhotoId' {_piId = Nothing}

-- | Required. A unique identifier for a photo.
piId :: Lens' PhotoId (Maybe Text)
piId = lens _piId (\ s a -> s{_piId = a})

instance FromJSON PhotoId where
        parseJSON
          = withObject "PhotoId"
              (\ o -> PhotoId' <$> (o .:? "id"))

instance ToJSON PhotoId where
        toJSON PhotoId'{..}
          = object (catMaybes [("id" .=) <$> _piId])
