{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.PhotosLibrary.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.PhotosLibrary.Types.Product where

import           Network.Google.PhotosLibrary.Types.Sum
import           Network.Google.Prelude

-- | An object representing a latitude\/longitude pair. This is expressed as
-- a pair of doubles representing degrees latitude and degrees longitude.
-- Unless specified otherwise, this must conform to the
-- <http://www.unoosa.org/pdf/icg/2012/template/WGS_84.pdf WGS84 standard>.
-- Values must be within normalized ranges.
--
-- /See:/ 'latLng' smart constructor.
data LatLng = LatLng'
    { _llLatitude  :: !(Maybe (Textual Double))
    , _llLongitude :: !(Maybe (Textual Double))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LatLng' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llLatitude'
--
-- * 'llLongitude'
latLng
    :: LatLng
latLng =
    LatLng'
    { _llLatitude = Nothing
    , _llLongitude = Nothing
    }

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

-- | An enrichment containing a single location.
--
-- /See:/ 'locationEnrichment' smart constructor.
newtype LocationEnrichment = LocationEnrichment'
    { _leLocation :: Maybe Location
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LocationEnrichment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'leLocation'
locationEnrichment
    :: LocationEnrichment
locationEnrichment =
    LocationEnrichment'
    { _leLocation = Nothing
    }

-- | Location for this enrichment item.
leLocation :: Lens' LocationEnrichment (Maybe Location)
leLocation
  = lens _leLocation (\ s a -> s{_leLocation = a})

instance FromJSON LocationEnrichment where
        parseJSON
          = withObject "LocationEnrichment"
              (\ o -> LocationEnrichment' <$> (o .:? "location"))

instance ToJSON LocationEnrichment where
        toJSON LocationEnrichment'{..}
          = object
              (catMaybes [("location" .=) <$> _leLocation])

-- | This filter defines the allowed dates or date ranges for the media
-- returned. It is possible to pick a set of specific dates and a set of
-- date ranges.
--
-- /See:/ 'dateFilter' smart constructor.
data DateFilter = DateFilter'
    { _dfDates  :: !(Maybe [Date])
    , _dfRanges :: !(Maybe [DateRange])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DateFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfDates'
--
-- * 'dfRanges'
dateFilter
    :: DateFilter
dateFilter =
    DateFilter'
    { _dfDates = Nothing
    , _dfRanges = Nothing
    }

-- | List of dates that the media items must have been created on. There is a
-- maximum of 5 dates that can be included per request.
dfDates :: Lens' DateFilter [Date]
dfDates
  = lens _dfDates (\ s a -> s{_dfDates = a}) . _Default
      . _Coerce

-- | List of dates ranges that the media items must have been created in.
-- There is a maximum of 5 dates ranges that can be included per request.
dfRanges :: Lens' DateFilter [DateRange]
dfRanges
  = lens _dfRanges (\ s a -> s{_dfRanges = a}) .
      _Default
      . _Coerce

instance FromJSON DateFilter where
        parseJSON
          = withObject "DateFilter"
              (\ o ->
                 DateFilter' <$>
                   (o .:? "dates" .!= mempty) <*>
                     (o .:? "ranges" .!= mempty))

instance ToJSON DateFilter where
        toJSON DateFilter'{..}
          = object
              (catMaybes
                 [("dates" .=) <$> _dfDates,
                  ("ranges" .=) <$> _dfRanges])

-- | Metadata that is specific to a photo, for example, ISO, focal length and
-- exposure time. Some of these fields may be null or not included.
--
-- /See:/ 'photo' smart constructor.
data Photo = Photo'
    { _pFocalLength     :: !(Maybe (Textual Double))
    , _pCameraMake      :: !(Maybe Text)
    , _pExposureTime    :: !(Maybe GDuration)
    , _pCameraModel     :: !(Maybe Text)
    , _pIsoEquivalent   :: !(Maybe (Textual Int32))
    , _pApertureFNumber :: !(Maybe (Textual Double))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Photo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pFocalLength'
--
-- * 'pCameraMake'
--
-- * 'pExposureTime'
--
-- * 'pCameraModel'
--
-- * 'pIsoEquivalent'
--
-- * 'pApertureFNumber'
photo
    :: Photo
photo =
    Photo'
    { _pFocalLength = Nothing
    , _pCameraMake = Nothing
    , _pExposureTime = Nothing
    , _pCameraModel = Nothing
    , _pIsoEquivalent = Nothing
    , _pApertureFNumber = Nothing
    }

-- | Focal length of the photo.
pFocalLength :: Lens' Photo (Maybe Double)
pFocalLength
  = lens _pFocalLength (\ s a -> s{_pFocalLength = a})
      . mapping _Coerce

-- | Brand of the camera which took the photo.
pCameraMake :: Lens' Photo (Maybe Text)
pCameraMake
  = lens _pCameraMake (\ s a -> s{_pCameraMake = a})

-- | Exposure time of the photo.
pExposureTime :: Lens' Photo (Maybe Scientific)
pExposureTime
  = lens _pExposureTime
      (\ s a -> s{_pExposureTime = a})
      . mapping _GDuration

-- | Model of the camera which took the photo.
pCameraModel :: Lens' Photo (Maybe Text)
pCameraModel
  = lens _pCameraModel (\ s a -> s{_pCameraModel = a})

-- | ISO of the photo.
pIsoEquivalent :: Lens' Photo (Maybe Int32)
pIsoEquivalent
  = lens _pIsoEquivalent
      (\ s a -> s{_pIsoEquivalent = a})
      . mapping _Coerce

-- | Apeture f number of the photo.
pApertureFNumber :: Lens' Photo (Maybe Double)
pApertureFNumber
  = lens _pApertureFNumber
      (\ s a -> s{_pApertureFNumber = a})
      . mapping _Coerce

instance FromJSON Photo where
        parseJSON
          = withObject "Photo"
              (\ o ->
                 Photo' <$>
                   (o .:? "focalLength") <*> (o .:? "cameraMake") <*>
                     (o .:? "exposureTime")
                     <*> (o .:? "cameraModel")
                     <*> (o .:? "isoEquivalent")
                     <*> (o .:? "apertureFNumber"))

instance ToJSON Photo where
        toJSON Photo'{..}
          = object
              (catMaybes
                 [("focalLength" .=) <$> _pFocalLength,
                  ("cameraMake" .=) <$> _pCameraMake,
                  ("exposureTime" .=) <$> _pExposureTime,
                  ("cameraModel" .=) <$> _pCameraModel,
                  ("isoEquivalent" .=) <$> _pIsoEquivalent,
                  ("apertureFNumber" .=) <$> _pApertureFNumber])

-- | An enrichment containing text.
--
-- /See:/ 'textEnrichment' smart constructor.
newtype TextEnrichment = TextEnrichment'
    { _teText :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TextEnrichment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'teText'
textEnrichment
    :: TextEnrichment
textEnrichment =
    TextEnrichment'
    { _teText = Nothing
    }

-- | Text for this text enrichment item.
teText :: Lens' TextEnrichment (Maybe Text)
teText = lens _teText (\ s a -> s{_teText = a})

instance FromJSON TextEnrichment where
        parseJSON
          = withObject "TextEnrichment"
              (\ o -> TextEnrichment' <$> (o .:? "text"))

instance ToJSON TextEnrichment where
        toJSON TextEnrichment'{..}
          = object (catMaybes [("text" .=) <$> _teText])

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
data Status = Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode    :: !(Maybe (Textual Int32))
    , _sMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
status =
    Status'
    { _sDetails = Nothing
    , _sCode = Nothing
    , _sMessage = Nothing
    }

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

--
-- /See:/ 'addEnrichmentToAlbumResponse' smart constructor.
newtype AddEnrichmentToAlbumResponse = AddEnrichmentToAlbumResponse'
    { _aetarEnrichmentItem :: Maybe EnrichmentItem
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddEnrichmentToAlbumResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aetarEnrichmentItem'
addEnrichmentToAlbumResponse
    :: AddEnrichmentToAlbumResponse
addEnrichmentToAlbumResponse =
    AddEnrichmentToAlbumResponse'
    { _aetarEnrichmentItem = Nothing
    }

-- | [Output only] Enrichment which was added.
aetarEnrichmentItem :: Lens' AddEnrichmentToAlbumResponse (Maybe EnrichmentItem)
aetarEnrichmentItem
  = lens _aetarEnrichmentItem
      (\ s a -> s{_aetarEnrichmentItem = a})

instance FromJSON AddEnrichmentToAlbumResponse where
        parseJSON
          = withObject "AddEnrichmentToAlbumResponse"
              (\ o ->
                 AddEnrichmentToAlbumResponse' <$>
                   (o .:? "enrichmentItem"))

instance ToJSON AddEnrichmentToAlbumResponse where
        toJSON AddEnrichmentToAlbumResponse'{..}
          = object
              (catMaybes
                 [("enrichmentItem" .=) <$> _aetarEnrichmentItem])

--
-- /See:/ 'searchMediaItemsResponse' smart constructor.
data SearchMediaItemsResponse = SearchMediaItemsResponse'
    { _smirNextPageToken :: !(Maybe Text)
    , _smirMediaItems    :: !(Maybe [MediaItem])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchMediaItemsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smirNextPageToken'
--
-- * 'smirMediaItems'
searchMediaItemsResponse
    :: SearchMediaItemsResponse
searchMediaItemsResponse =
    SearchMediaItemsResponse'
    { _smirNextPageToken = Nothing
    , _smirMediaItems = Nothing
    }

-- | [Output only] Token to use to get the next set of media items. Its
-- presence is the only reliable indicator of more media items being
-- available in the next request.
smirNextPageToken :: Lens' SearchMediaItemsResponse (Maybe Text)
smirNextPageToken
  = lens _smirNextPageToken
      (\ s a -> s{_smirNextPageToken = a})

-- | [Output only] List of media items that match the search parameters.
smirMediaItems :: Lens' SearchMediaItemsResponse [MediaItem]
smirMediaItems
  = lens _smirMediaItems
      (\ s a -> s{_smirMediaItems = a})
      . _Default
      . _Coerce

instance FromJSON SearchMediaItemsResponse where
        parseJSON
          = withObject "SearchMediaItemsResponse"
              (\ o ->
                 SearchMediaItemsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "mediaItems" .!= mempty))

instance ToJSON SearchMediaItemsResponse where
        toJSON SearchMediaItemsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _smirNextPageToken,
                  ("mediaItems" .=) <$> _smirMediaItems])

-- | Response to successfully joining the shared album on behalf of the user.
--
-- /See:/ 'joinSharedAlbumResponse' smart constructor.
data JoinSharedAlbumResponse =
    JoinSharedAlbumResponse'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'JoinSharedAlbumResponse' with the minimum fields required to make a request.
--
joinSharedAlbumResponse
    :: JoinSharedAlbumResponse
joinSharedAlbumResponse = JoinSharedAlbumResponse'

instance FromJSON JoinSharedAlbumResponse where
        parseJSON
          = withObject "JoinSharedAlbumResponse"
              (\ o -> pure JoinSharedAlbumResponse')

instance ToJSON JoinSharedAlbumResponse where
        toJSON = const emptyObject

-- | Request to create an album in Google Photos.
--
-- /See:/ 'createAlbumRequest' smart constructor.
newtype CreateAlbumRequest = CreateAlbumRequest'
    { _carAlbum :: Maybe Album
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreateAlbumRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'carAlbum'
createAlbumRequest
    :: CreateAlbumRequest
createAlbumRequest =
    CreateAlbumRequest'
    { _carAlbum = Nothing
    }

-- | The album to be created.
carAlbum :: Lens' CreateAlbumRequest (Maybe Album)
carAlbum = lens _carAlbum (\ s a -> s{_carAlbum = a})

instance FromJSON CreateAlbumRequest where
        parseJSON
          = withObject "CreateAlbumRequest"
              (\ o -> CreateAlbumRequest' <$> (o .:? "album"))

instance ToJSON CreateAlbumRequest where
        toJSON CreateAlbumRequest'{..}
          = object (catMaybes [("album" .=) <$> _carAlbum])

-- | Represents a physical location.
--
-- /See:/ 'location' smart constructor.
data Location = Location'
    { _lLatlng       :: !(Maybe LatLng)
    , _lLocationName :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Location' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lLatlng'
--
-- * 'lLocationName'
location
    :: Location
location =
    Location'
    { _lLatlng = Nothing
    , _lLocationName = Nothing
    }

-- | Position of the location on the map.
lLatlng :: Lens' Location (Maybe LatLng)
lLatlng = lens _lLatlng (\ s a -> s{_lLatlng = a})

-- | Name of the location to be displayed.
lLocationName :: Lens' Location (Maybe Text)
lLocationName
  = lens _lLocationName
      (\ s a -> s{_lLocationName = a})

instance FromJSON Location where
        parseJSON
          = withObject "Location"
              (\ o ->
                 Location' <$>
                   (o .:? "latlng") <*> (o .:? "locationName"))

instance ToJSON Location where
        toJSON Location'{..}
          = object
              (catMaybes
                 [("latlng" .=) <$> _lLatlng,
                  ("locationName" .=) <$> _lLocationName])

-- | A new enrichment item to be added to an album, used by the
-- AddEnrichmentToAlbum call.
--
-- /See:/ 'newEnrichmentItem' smart constructor.
data NewEnrichmentItem = NewEnrichmentItem'
    { _neiLocationEnrichment :: !(Maybe LocationEnrichment)
    , _neiTextEnrichment     :: !(Maybe TextEnrichment)
    , _neiMapEnrichment      :: !(Maybe MapEnrichment)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NewEnrichmentItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'neiLocationEnrichment'
--
-- * 'neiTextEnrichment'
--
-- * 'neiMapEnrichment'
newEnrichmentItem
    :: NewEnrichmentItem
newEnrichmentItem =
    NewEnrichmentItem'
    { _neiLocationEnrichment = Nothing
    , _neiTextEnrichment = Nothing
    , _neiMapEnrichment = Nothing
    }

-- | Location to be added to the album.
neiLocationEnrichment :: Lens' NewEnrichmentItem (Maybe LocationEnrichment)
neiLocationEnrichment
  = lens _neiLocationEnrichment
      (\ s a -> s{_neiLocationEnrichment = a})

-- | Text to be added to the album.
neiTextEnrichment :: Lens' NewEnrichmentItem (Maybe TextEnrichment)
neiTextEnrichment
  = lens _neiTextEnrichment
      (\ s a -> s{_neiTextEnrichment = a})

-- | Map to be added to the album.
neiMapEnrichment :: Lens' NewEnrichmentItem (Maybe MapEnrichment)
neiMapEnrichment
  = lens _neiMapEnrichment
      (\ s a -> s{_neiMapEnrichment = a})

instance FromJSON NewEnrichmentItem where
        parseJSON
          = withObject "NewEnrichmentItem"
              (\ o ->
                 NewEnrichmentItem' <$>
                   (o .:? "locationEnrichment") <*>
                     (o .:? "textEnrichment")
                     <*> (o .:? "mapEnrichment"))

instance ToJSON NewEnrichmentItem where
        toJSON NewEnrichmentItem'{..}
          = object
              (catMaybes
                 [("locationEnrichment" .=) <$>
                    _neiLocationEnrichment,
                  ("textEnrichment" .=) <$> _neiTextEnrichment,
                  ("mapEnrichment" .=) <$> _neiMapEnrichment])

-- | Information about albums that are shared. Note that this information is
-- only included if the album was created by you and you have the sharing
-- scope.
--
-- /See:/ 'shareInfo' smart constructor.
data ShareInfo = ShareInfo'
    { _siShareableURL       :: !(Maybe Text)
    , _siShareToken         :: !(Maybe Text)
    , _siSharedAlbumOptions :: !(Maybe SharedAlbumOptions)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ShareInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siShareableURL'
--
-- * 'siShareToken'
--
-- * 'siSharedAlbumOptions'
shareInfo
    :: ShareInfo
shareInfo =
    ShareInfo'
    { _siShareableURL = Nothing
    , _siShareToken = Nothing
    , _siSharedAlbumOptions = Nothing
    }

-- | A link to the album that\'s now shared on the Google Photos website and
-- app. Anyone with the link can access this shared album and see all of
-- the items present in the album.
siShareableURL :: Lens' ShareInfo (Maybe Text)
siShareableURL
  = lens _siShareableURL
      (\ s a -> s{_siShareableURL = a})

-- | A token which can be used to join this shared album on behalf of other
-- users via the API.
siShareToken :: Lens' ShareInfo (Maybe Text)
siShareToken
  = lens _siShareToken (\ s a -> s{_siShareToken = a})

-- | Options set for the shared album.
siSharedAlbumOptions :: Lens' ShareInfo (Maybe SharedAlbumOptions)
siSharedAlbumOptions
  = lens _siSharedAlbumOptions
      (\ s a -> s{_siSharedAlbumOptions = a})

instance FromJSON ShareInfo where
        parseJSON
          = withObject "ShareInfo"
              (\ o ->
                 ShareInfo' <$>
                   (o .:? "shareableUrl") <*> (o .:? "shareToken") <*>
                     (o .:? "sharedAlbumOptions"))

instance ToJSON ShareInfo where
        toJSON ShareInfo'{..}
          = object
              (catMaybes
                 [("shareableUrl" .=) <$> _siShareableURL,
                  ("shareToken" .=) <$> _siShareToken,
                  ("sharedAlbumOptions" .=) <$> _siSharedAlbumOptions])

-- | Request to create one or more media items in a user\'s Google Photos
-- library. If an 'albumid' is specified, the media items are also added to
-- that album. 'albumPosition' is optional and can only be specified if an
-- 'albumId' is set.
--
-- /See:/ 'batchCreateMediaItemsRequest' smart constructor.
data BatchCreateMediaItemsRequest = BatchCreateMediaItemsRequest'
    { _bcmirAlbumId       :: !(Maybe Text)
    , _bcmirNewMediaItems :: !(Maybe [NewMediaItem])
    , _bcmirAlbumPosition :: !(Maybe AlbumPosition)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BatchCreateMediaItemsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bcmirAlbumId'
--
-- * 'bcmirNewMediaItems'
--
-- * 'bcmirAlbumPosition'
batchCreateMediaItemsRequest
    :: BatchCreateMediaItemsRequest
batchCreateMediaItemsRequest =
    BatchCreateMediaItemsRequest'
    { _bcmirAlbumId = Nothing
    , _bcmirNewMediaItems = Nothing
    , _bcmirAlbumPosition = Nothing
    }

-- | Identifier of the album where the media item(s) will be added. They will
-- also be added to the user\'s library. This is an optional field.
bcmirAlbumId :: Lens' BatchCreateMediaItemsRequest (Maybe Text)
bcmirAlbumId
  = lens _bcmirAlbumId (\ s a -> s{_bcmirAlbumId = a})

-- | List of media items to be created.
bcmirNewMediaItems :: Lens' BatchCreateMediaItemsRequest [NewMediaItem]
bcmirNewMediaItems
  = lens _bcmirNewMediaItems
      (\ s a -> s{_bcmirNewMediaItems = a})
      . _Default
      . _Coerce

-- | Position in the album where the media item(s) will be added. If not
-- specified, the media item(s) will be added to the end of the album (as
-- per the default value which is LAST_IN_ALBUM). The request will fail if
-- this field is present but no album_id is specified.
bcmirAlbumPosition :: Lens' BatchCreateMediaItemsRequest (Maybe AlbumPosition)
bcmirAlbumPosition
  = lens _bcmirAlbumPosition
      (\ s a -> s{_bcmirAlbumPosition = a})

instance FromJSON BatchCreateMediaItemsRequest where
        parseJSON
          = withObject "BatchCreateMediaItemsRequest"
              (\ o ->
                 BatchCreateMediaItemsRequest' <$>
                   (o .:? "albumId") <*>
                     (o .:? "newMediaItems" .!= mempty)
                     <*> (o .:? "albumPosition"))

instance ToJSON BatchCreateMediaItemsRequest where
        toJSON BatchCreateMediaItemsRequest'{..}
          = object
              (catMaybes
                 [("albumId" .=) <$> _bcmirAlbumId,
                  ("newMediaItems" .=) <$> _bcmirNewMediaItems,
                  ("albumPosition" .=) <$> _bcmirAlbumPosition])

-- | Filters that can be applied to a media item search. If multiple filter
-- options are specified, they are treated as AND with each other.
--
-- /See:/ 'filters' smart constructor.
data Filters = Filters'
    { _fDateFilter           :: !(Maybe DateFilter)
    , _fIncludeArchivedMedia :: !(Maybe Bool)
    , _fMediaTypeFilter      :: !(Maybe MediaTypeFilter)
    , _fContentFilter        :: !(Maybe ContentFilter)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Filters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fDateFilter'
--
-- * 'fIncludeArchivedMedia'
--
-- * 'fMediaTypeFilter'
--
-- * 'fContentFilter'
filters
    :: Filters
filters =
    Filters'
    { _fDateFilter = Nothing
    , _fIncludeArchivedMedia = Nothing
    , _fMediaTypeFilter = Nothing
    , _fContentFilter = Nothing
    }

-- | Filters the media items based on their creation date.
fDateFilter :: Lens' Filters (Maybe DateFilter)
fDateFilter
  = lens _fDateFilter (\ s a -> s{_fDateFilter = a})

-- | If set, the results will include media items that the user has archived.
-- Defaults to false (archived media items are not included).
fIncludeArchivedMedia :: Lens' Filters (Maybe Bool)
fIncludeArchivedMedia
  = lens _fIncludeArchivedMedia
      (\ s a -> s{_fIncludeArchivedMedia = a})

-- | Filters the media items based on the type of media.
fMediaTypeFilter :: Lens' Filters (Maybe MediaTypeFilter)
fMediaTypeFilter
  = lens _fMediaTypeFilter
      (\ s a -> s{_fMediaTypeFilter = a})

-- | Filters the media items based on their content.
fContentFilter :: Lens' Filters (Maybe ContentFilter)
fContentFilter
  = lens _fContentFilter
      (\ s a -> s{_fContentFilter = a})

instance FromJSON Filters where
        parseJSON
          = withObject "Filters"
              (\ o ->
                 Filters' <$>
                   (o .:? "dateFilter") <*>
                     (o .:? "includeArchivedMedia")
                     <*> (o .:? "mediaTypeFilter")
                     <*> (o .:? "contentFilter"))

instance ToJSON Filters where
        toJSON Filters'{..}
          = object
              (catMaybes
                 [("dateFilter" .=) <$> _fDateFilter,
                  ("includeArchivedMedia" .=) <$>
                    _fIncludeArchivedMedia,
                  ("mediaTypeFilter" .=) <$> _fMediaTypeFilter,
                  ("contentFilter" .=) <$> _fContentFilter])

--
-- /See:/ 'statusDetailsItem' smart constructor.
newtype StatusDetailsItem = StatusDetailsItem'
    { _sdiAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiAddtional'
statusDetailsItem
    :: HashMap Text JSONValue -- ^ 'sdiAddtional'
    -> StatusDetailsItem
statusDetailsItem pSdiAddtional_ =
    StatusDetailsItem'
    { _sdiAddtional = _Coerce # pSdiAddtional_
    }

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

-- | Defines a range of dates. Both dates must be of the same format (see
-- Date definition for more).
--
-- /See:/ 'dateRange' smart constructor.
data DateRange = DateRange'
    { _drEndDate   :: !(Maybe Date)
    , _drStartDate :: !(Maybe Date)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DateRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drEndDate'
--
-- * 'drStartDate'
dateRange
    :: DateRange
dateRange =
    DateRange'
    { _drEndDate = Nothing
    , _drStartDate = Nothing
    }

-- | The end date (included as part of the range) in the same format as the
-- start date.
drEndDate :: Lens' DateRange (Maybe Date)
drEndDate
  = lens _drEndDate (\ s a -> s{_drEndDate = a})

-- | The start date (included as part of the range) in one of the formats
-- described.
drStartDate :: Lens' DateRange (Maybe Date)
drStartDate
  = lens _drStartDate (\ s a -> s{_drStartDate = a})

instance FromJSON DateRange where
        parseJSON
          = withObject "DateRange"
              (\ o ->
                 DateRange' <$>
                   (o .:? "endDate") <*> (o .:? "startDate"))

instance ToJSON DateRange where
        toJSON DateRange'{..}
          = object
              (catMaybes
                 [("endDate" .=) <$> _drEndDate,
                  ("startDate" .=) <$> _drStartDate])

-- | Options that control the sharing of an album.
--
-- /See:/ 'sharedAlbumOptions' smart constructor.
data SharedAlbumOptions = SharedAlbumOptions'
    { _saoIsCollaborative :: !(Maybe Bool)
    , _saoIsCommentable   :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SharedAlbumOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saoIsCollaborative'
--
-- * 'saoIsCommentable'
sharedAlbumOptions
    :: SharedAlbumOptions
sharedAlbumOptions =
    SharedAlbumOptions'
    { _saoIsCollaborative = Nothing
    , _saoIsCommentable = Nothing
    }

-- | True if the shared album allows collaborators (users who have joined the
-- album) to add media items to it. Defaults to false.
saoIsCollaborative :: Lens' SharedAlbumOptions (Maybe Bool)
saoIsCollaborative
  = lens _saoIsCollaborative
      (\ s a -> s{_saoIsCollaborative = a})

-- | True if the shared album allows the owner and the collaborators (users
-- who have joined the album) to add comments to the album. Defaults to
-- false.
saoIsCommentable :: Lens' SharedAlbumOptions (Maybe Bool)
saoIsCommentable
  = lens _saoIsCommentable
      (\ s a -> s{_saoIsCommentable = a})

instance FromJSON SharedAlbumOptions where
        parseJSON
          = withObject "SharedAlbumOptions"
              (\ o ->
                 SharedAlbumOptions' <$>
                   (o .:? "isCollaborative") <*>
                     (o .:? "isCommentable"))

instance ToJSON SharedAlbumOptions where
        toJSON SharedAlbumOptions'{..}
          = object
              (catMaybes
                 [("isCollaborative" .=) <$> _saoIsCollaborative,
                  ("isCommentable" .=) <$> _saoIsCommentable])

-- | Metadata for a media item.
--
-- /See:/ 'mediaMetadata' smart constructor.
data MediaMetadata = MediaMetadata'
    { _mmCreationTime :: !(Maybe DateTime')
    , _mmPhoto        :: !(Maybe Photo)
    , _mmHeight       :: !(Maybe (Textual Int64))
    , _mmWidth        :: !(Maybe (Textual Int64))
    , _mmVideo        :: !(Maybe Video)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MediaMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mmCreationTime'
--
-- * 'mmPhoto'
--
-- * 'mmHeight'
--
-- * 'mmWidth'
--
-- * 'mmVideo'
mediaMetadata
    :: MediaMetadata
mediaMetadata =
    MediaMetadata'
    { _mmCreationTime = Nothing
    , _mmPhoto = Nothing
    , _mmHeight = Nothing
    , _mmWidth = Nothing
    , _mmVideo = Nothing
    }

-- | Time when the media item was first created (not when it was uploaded to
-- Google Photos).
mmCreationTime :: Lens' MediaMetadata (Maybe UTCTime)
mmCreationTime
  = lens _mmCreationTime
      (\ s a -> s{_mmCreationTime = a})
      . mapping _DateTime

-- | Metadata for a photo media type.
mmPhoto :: Lens' MediaMetadata (Maybe Photo)
mmPhoto = lens _mmPhoto (\ s a -> s{_mmPhoto = a})

-- | Original height (in pixels) of the media item.
mmHeight :: Lens' MediaMetadata (Maybe Int64)
mmHeight
  = lens _mmHeight (\ s a -> s{_mmHeight = a}) .
      mapping _Coerce

-- | Original width (in pixels) of the media item.
mmWidth :: Lens' MediaMetadata (Maybe Int64)
mmWidth
  = lens _mmWidth (\ s a -> s{_mmWidth = a}) .
      mapping _Coerce

-- | Metadata for a video media type.
mmVideo :: Lens' MediaMetadata (Maybe Video)
mmVideo = lens _mmVideo (\ s a -> s{_mmVideo = a})

instance FromJSON MediaMetadata where
        parseJSON
          = withObject "MediaMetadata"
              (\ o ->
                 MediaMetadata' <$>
                   (o .:? "creationTime") <*> (o .:? "photo") <*>
                     (o .:? "height")
                     <*> (o .:? "width")
                     <*> (o .:? "video"))

instance ToJSON MediaMetadata where
        toJSON MediaMetadata'{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _mmCreationTime,
                  ("photo" .=) <$> _mmPhoto,
                  ("height" .=) <$> _mmHeight,
                  ("width" .=) <$> _mmWidth,
                  ("video" .=) <$> _mmVideo])

--
-- /See:/ 'shareAlbumResponse' smart constructor.
newtype ShareAlbumResponse = ShareAlbumResponse'
    { _sarShareInfo :: Maybe ShareInfo
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ShareAlbumResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sarShareInfo'
shareAlbumResponse
    :: ShareAlbumResponse
shareAlbumResponse =
    ShareAlbumResponse'
    { _sarShareInfo = Nothing
    }

-- | [Output only] Information about the shared album.
sarShareInfo :: Lens' ShareAlbumResponse (Maybe ShareInfo)
sarShareInfo
  = lens _sarShareInfo (\ s a -> s{_sarShareInfo = a})

instance FromJSON ShareAlbumResponse where
        parseJSON
          = withObject "ShareAlbumResponse"
              (\ o -> ShareAlbumResponse' <$> (o .:? "shareInfo"))

instance ToJSON ShareAlbumResponse where
        toJSON ShareAlbumResponse'{..}
          = object
              (catMaybes [("shareInfo" .=) <$> _sarShareInfo])

-- | Metadata that is specific to a video, for example, fps and processing
-- status. Some of these fields may be null or not included.
--
-- /See:/ 'video' smart constructor.
data Video = Video'
    { _vStatus      :: !(Maybe VideoStatus)
    , _vCameraMake  :: !(Maybe Text)
    , _vCameraModel :: !(Maybe Text)
    , _vFps         :: !(Maybe (Textual Double))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Video' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vStatus'
--
-- * 'vCameraMake'
--
-- * 'vCameraModel'
--
-- * 'vFps'
video
    :: Video
video =
    Video'
    { _vStatus = Nothing
    , _vCameraMake = Nothing
    , _vCameraModel = Nothing
    , _vFps = Nothing
    }

-- | Processing status of the video.
vStatus :: Lens' Video (Maybe VideoStatus)
vStatus = lens _vStatus (\ s a -> s{_vStatus = a})

-- | Brand of the camera which took the video.
vCameraMake :: Lens' Video (Maybe Text)
vCameraMake
  = lens _vCameraMake (\ s a -> s{_vCameraMake = a})

-- | Model of the camera which took the video.
vCameraModel :: Lens' Video (Maybe Text)
vCameraModel
  = lens _vCameraModel (\ s a -> s{_vCameraModel = a})

-- | Frame rate of the video.
vFps :: Lens' Video (Maybe Double)
vFps
  = lens _vFps (\ s a -> s{_vFps = a}) .
      mapping _Coerce

instance FromJSON Video where
        parseJSON
          = withObject "Video"
              (\ o ->
                 Video' <$>
                   (o .:? "status") <*> (o .:? "cameraMake") <*>
                     (o .:? "cameraModel")
                     <*> (o .:? "fps"))

instance ToJSON Video where
        toJSON Video'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _vStatus,
                  ("cameraMake" .=) <$> _vCameraMake,
                  ("cameraModel" .=) <$> _vCameraModel,
                  ("fps" .=) <$> _vFps])

-- | Representation of a media item (e.g. photo, video etc.) in Google
-- Photos.
--
-- /See:/ 'mediaItem' smart constructor.
data MediaItem = MediaItem'
    { _miProductURL      :: !(Maybe Text)
    , _miBaseURL         :: !(Maybe Text)
    , _miMediaMetadata   :: !(Maybe MediaMetadata)
    , _miMimeType        :: !(Maybe Text)
    , _miId              :: !(Maybe Text)
    , _miContributorInfo :: !(Maybe ContributorInfo)
    , _miDescription     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MediaItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'miProductURL'
--
-- * 'miBaseURL'
--
-- * 'miMediaMetadata'
--
-- * 'miMimeType'
--
-- * 'miId'
--
-- * 'miContributorInfo'
--
-- * 'miDescription'
mediaItem
    :: MediaItem
mediaItem =
    MediaItem'
    { _miProductURL = Nothing
    , _miBaseURL = Nothing
    , _miMediaMetadata = Nothing
    , _miMimeType = Nothing
    , _miId = Nothing
    , _miContributorInfo = Nothing
    , _miDescription = Nothing
    }

-- | Google Photos URL for the media item. This link will only be available
-- to the user if they\'re signed in.
miProductURL :: Lens' MediaItem (Maybe Text)
miProductURL
  = lens _miProductURL (\ s a -> s{_miProductURL = a})

-- | A URL to the media item\'s bytes. This should not be used as is. For
-- example, \'=w2048-h1024\' will set the dimensions of a media item of
-- type photo to have a width of 2048 px and height of 1024 px.
miBaseURL :: Lens' MediaItem (Maybe Text)
miBaseURL
  = lens _miBaseURL (\ s a -> s{_miBaseURL = a})

-- | Metadata related to the media item, for example the height, width or
-- creation time.
miMediaMetadata :: Lens' MediaItem (Maybe MediaMetadata)
miMediaMetadata
  = lens _miMediaMetadata
      (\ s a -> s{_miMediaMetadata = a})

-- | MIME type of the media item.
miMimeType :: Lens' MediaItem (Maybe Text)
miMimeType
  = lens _miMimeType (\ s a -> s{_miMimeType = a})

-- | Identifier for the media item. This is a persistent identifier that can
-- be used between sessions to identify this media item.
miId :: Lens' MediaItem (Maybe Text)
miId = lens _miId (\ s a -> s{_miId = a})

-- | Information about the user who created this media item.
miContributorInfo :: Lens' MediaItem (Maybe ContributorInfo)
miContributorInfo
  = lens _miContributorInfo
      (\ s a -> s{_miContributorInfo = a})

-- | Description of the media item. This is shown to the user in the item\'s
-- info section in the Google Photos app.
miDescription :: Lens' MediaItem (Maybe Text)
miDescription
  = lens _miDescription
      (\ s a -> s{_miDescription = a})

instance FromJSON MediaItem where
        parseJSON
          = withObject "MediaItem"
              (\ o ->
                 MediaItem' <$>
                   (o .:? "productUrl") <*> (o .:? "baseUrl") <*>
                     (o .:? "mediaMetadata")
                     <*> (o .:? "mimeType")
                     <*> (o .:? "id")
                     <*> (o .:? "contributorInfo")
                     <*> (o .:? "description"))

instance ToJSON MediaItem where
        toJSON MediaItem'{..}
          = object
              (catMaybes
                 [("productUrl" .=) <$> _miProductURL,
                  ("baseUrl" .=) <$> _miBaseURL,
                  ("mediaMetadata" .=) <$> _miMediaMetadata,
                  ("mimeType" .=) <$> _miMimeType, ("id" .=) <$> _miId,
                  ("contributorInfo" .=) <$> _miContributorInfo,
                  ("description" .=) <$> _miDescription])

-- | Represents a whole calendar date. The day may be 0 to represent a year
-- and month where the day is not significant, e.g. a whole calendar month.
-- The month may be 0 to represent a a day and a year where the month is
-- not signficant, e.g. when you want to specify the same day in every
-- month of a year or a specific year. The year may be 0 to represent a
-- month and day independent of year, e.g. anniversary date.
--
-- /See:/ 'date' smart constructor.
data Date = Date'
    { _dDay   :: !(Maybe (Textual Int32))
    , _dYear  :: !(Maybe (Textual Int32))
    , _dMonth :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Date' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dDay'
--
-- * 'dYear'
--
-- * 'dMonth'
date
    :: Date
date =
    Date'
    { _dDay = Nothing
    , _dYear = Nothing
    , _dMonth = Nothing
    }

-- | Day of month. Must be from 1 to 31 and valid for the year and month, or
-- 0 if specifying a year\/month where the day is not significant.
dDay :: Lens' Date (Maybe Int32)
dDay
  = lens _dDay (\ s a -> s{_dDay = a}) .
      mapping _Coerce

-- | Year of date. Must be from 1 to 9999, or 0 if specifying a date without
-- a year.
dYear :: Lens' Date (Maybe Int32)
dYear
  = lens _dYear (\ s a -> s{_dYear = a}) .
      mapping _Coerce

-- | Month of year. Must be from 1 to 12, or 0 if specifying a date without a
-- month.
dMonth :: Lens' Date (Maybe Int32)
dMonth
  = lens _dMonth (\ s a -> s{_dMonth = a}) .
      mapping _Coerce

instance FromJSON Date where
        parseJSON
          = withObject "Date"
              (\ o ->
                 Date' <$>
                   (o .:? "day") <*> (o .:? "year") <*> (o .:? "month"))

instance ToJSON Date where
        toJSON Date'{..}
          = object
              (catMaybes
                 [("day" .=) <$> _dDay, ("year" .=) <$> _dYear,
                  ("month" .=) <$> _dMonth])

-- | An enrichment item.
--
-- /See:/ 'enrichmentItem' smart constructor.
newtype EnrichmentItem = EnrichmentItem'
    { _eiId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EnrichmentItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eiId'
enrichmentItem
    :: EnrichmentItem
enrichmentItem =
    EnrichmentItem'
    { _eiId = Nothing
    }

-- | Identifier of the enrichment item.
eiId :: Lens' EnrichmentItem (Maybe Text)
eiId = lens _eiId (\ s a -> s{_eiId = a})

instance FromJSON EnrichmentItem where
        parseJSON
          = withObject "EnrichmentItem"
              (\ o -> EnrichmentItem' <$> (o .:? "id"))

instance ToJSON EnrichmentItem where
        toJSON EnrichmentItem'{..}
          = object (catMaybes [("id" .=) <$> _eiId])

--
-- /See:/ 'listSharedAlbumsResponse' smart constructor.
data ListSharedAlbumsResponse = ListSharedAlbumsResponse'
    { _lsarNextPageToken :: !(Maybe Text)
    , _lsarSharedAlbums  :: !(Maybe [Album])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListSharedAlbumsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsarNextPageToken'
--
-- * 'lsarSharedAlbums'
listSharedAlbumsResponse
    :: ListSharedAlbumsResponse
listSharedAlbumsResponse =
    ListSharedAlbumsResponse'
    { _lsarNextPageToken = Nothing
    , _lsarSharedAlbums = Nothing
    }

-- | [Output only] Token to use to get the next set of shared albums.
-- Populated if there are more shared albums to retrieve for this request.
lsarNextPageToken :: Lens' ListSharedAlbumsResponse (Maybe Text)
lsarNextPageToken
  = lens _lsarNextPageToken
      (\ s a -> s{_lsarNextPageToken = a})

-- | [Output only] List of shared albums that were requested.
lsarSharedAlbums :: Lens' ListSharedAlbumsResponse [Album]
lsarSharedAlbums
  = lens _lsarSharedAlbums
      (\ s a -> s{_lsarSharedAlbums = a})
      . _Default
      . _Coerce

instance FromJSON ListSharedAlbumsResponse where
        parseJSON
          = withObject "ListSharedAlbumsResponse"
              (\ o ->
                 ListSharedAlbumsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "sharedAlbums" .!= mempty))

instance ToJSON ListSharedAlbumsResponse where
        toJSON ListSharedAlbumsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lsarNextPageToken,
                  ("sharedAlbums" .=) <$> _lsarSharedAlbums])

-- | This filter defines the type of media items to be returned, for example
-- videos or photos. All the specified media types are treated as an OR
-- with each other.
--
-- /See:/ 'mediaTypeFilter' smart constructor.
newtype MediaTypeFilter = MediaTypeFilter'
    { _mtfMediaTypes :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MediaTypeFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtfMediaTypes'
mediaTypeFilter
    :: MediaTypeFilter
mediaTypeFilter =
    MediaTypeFilter'
    { _mtfMediaTypes = Nothing
    }

-- | The types of media items to be included. This field should only be
-- populated with one media type, multiple media types will result in an
-- error response.
mtfMediaTypes :: Lens' MediaTypeFilter [Text]
mtfMediaTypes
  = lens _mtfMediaTypes
      (\ s a -> s{_mtfMediaTypes = a})
      . _Default
      . _Coerce

instance FromJSON MediaTypeFilter where
        parseJSON
          = withObject "MediaTypeFilter"
              (\ o ->
                 MediaTypeFilter' <$> (o .:? "mediaTypes" .!= mempty))

instance ToJSON MediaTypeFilter where
        toJSON MediaTypeFilter'{..}
          = object
              (catMaybes [("mediaTypes" .=) <$> _mtfMediaTypes])

-- | Result of creating a new media item.
--
-- /See:/ 'newMediaItemResult' smart constructor.
data NewMediaItemResult = NewMediaItemResult'
    { _nmirStatus      :: !(Maybe Status)
    , _nmirUploadToken :: !(Maybe Text)
    , _nmirMediaItem   :: !(Maybe MediaItem)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NewMediaItemResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nmirStatus'
--
-- * 'nmirUploadToken'
--
-- * 'nmirMediaItem'
newMediaItemResult
    :: NewMediaItemResult
newMediaItemResult =
    NewMediaItemResult'
    { _nmirStatus = Nothing
    , _nmirUploadToken = Nothing
    , _nmirMediaItem = Nothing
    }

-- | If an error occurred during the creation of this media item, this field
-- will be populated with information related to the error. Details of this
-- status can be found down below.
nmirStatus :: Lens' NewMediaItemResult (Maybe Status)
nmirStatus
  = lens _nmirStatus (\ s a -> s{_nmirStatus = a})

-- | The upload token used to create this new media item.
nmirUploadToken :: Lens' NewMediaItemResult (Maybe Text)
nmirUploadToken
  = lens _nmirUploadToken
      (\ s a -> s{_nmirUploadToken = a})

-- | Media item created with the upload token. It is populated if no errors
-- occurred and the media item was created successfully.
nmirMediaItem :: Lens' NewMediaItemResult (Maybe MediaItem)
nmirMediaItem
  = lens _nmirMediaItem
      (\ s a -> s{_nmirMediaItem = a})

instance FromJSON NewMediaItemResult where
        parseJSON
          = withObject "NewMediaItemResult"
              (\ o ->
                 NewMediaItemResult' <$>
                   (o .:? "status") <*> (o .:? "uploadToken") <*>
                     (o .:? "mediaItem"))

instance ToJSON NewMediaItemResult where
        toJSON NewMediaItemResult'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _nmirStatus,
                  ("uploadToken" .=) <$> _nmirUploadToken,
                  ("mediaItem" .=) <$> _nmirMediaItem])

-- | Representation of an album in Google Photos. Albums are a container for
-- media items. They contain an additional shareInfo property if they have
-- been shared by the application.
--
-- /See:/ 'album' smart constructor.
data Album = Album'
    { _aIsWriteable       :: !(Maybe Bool)
    , _aProductURL        :: !(Maybe Text)
    , _aShareInfo         :: !(Maybe ShareInfo)
    , _aCoverPhotoBaseURL :: !(Maybe Text)
    , _aId                :: !(Maybe Text)
    , _aTotalMediaItems   :: !(Maybe (Textual Int64))
    , _aTitle             :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Album' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aIsWriteable'
--
-- * 'aProductURL'
--
-- * 'aShareInfo'
--
-- * 'aCoverPhotoBaseURL'
--
-- * 'aId'
--
-- * 'aTotalMediaItems'
--
-- * 'aTitle'
album
    :: Album
album =
    Album'
    { _aIsWriteable = Nothing
    , _aProductURL = Nothing
    , _aShareInfo = Nothing
    , _aCoverPhotoBaseURL = Nothing
    , _aId = Nothing
    , _aTotalMediaItems = Nothing
    , _aTitle = Nothing
    }

-- | [Output only] True if media items can be created in the album. This
-- field is based on the scopes granted and permissions of the album. If
-- the scopes are changed or permissions of the album are changed, this
-- field will be updated.
aIsWriteable :: Lens' Album (Maybe Bool)
aIsWriteable
  = lens _aIsWriteable (\ s a -> s{_aIsWriteable = a})

-- | [Output only] Google Photos URL for the album. The user needs to be
-- signed in to their Google Photos account to access this link.
aProductURL :: Lens' Album (Maybe Text)
aProductURL
  = lens _aProductURL (\ s a -> s{_aProductURL = a})

-- | [Output only] Information related to shared albums. This field is only
-- populated if the album is a shared album, the developer created the
-- album and the user has granted photoslibrary.sharing scope.
aShareInfo :: Lens' Album (Maybe ShareInfo)
aShareInfo
  = lens _aShareInfo (\ s a -> s{_aShareInfo = a})

-- | [Output only] A URL to the cover photo\'s bytes. This should not be used
-- as is. Parameters should be appended to this URL before use. For
-- example, \'=w2048-h1024\' will set the dimensions of the cover photo to
-- have a width of 2048 px and height of 1024 px.
aCoverPhotoBaseURL :: Lens' Album (Maybe Text)
aCoverPhotoBaseURL
  = lens _aCoverPhotoBaseURL
      (\ s a -> s{_aCoverPhotoBaseURL = a})

-- | [Ouput only] Identifier for the album. This is a persistent identifier
-- that can be used between sessions to identify this album.
aId :: Lens' Album (Maybe Text)
aId = lens _aId (\ s a -> s{_aId = a})

-- | [Output only] The number of media items in the album
aTotalMediaItems :: Lens' Album (Maybe Int64)
aTotalMediaItems
  = lens _aTotalMediaItems
      (\ s a -> s{_aTotalMediaItems = a})
      . mapping _Coerce

-- | Name of the album displayed to the user in their Google Photos account.
-- This string should not be more than 500 characters.
aTitle :: Lens' Album (Maybe Text)
aTitle = lens _aTitle (\ s a -> s{_aTitle = a})

instance FromJSON Album where
        parseJSON
          = withObject "Album"
              (\ o ->
                 Album' <$>
                   (o .:? "isWriteable") <*> (o .:? "productUrl") <*>
                     (o .:? "shareInfo")
                     <*> (o .:? "coverPhotoBaseUrl")
                     <*> (o .:? "id")
                     <*> (o .:? "totalMediaItems")
                     <*> (o .:? "title"))

instance ToJSON Album where
        toJSON Album'{..}
          = object
              (catMaybes
                 [("isWriteable" .=) <$> _aIsWriteable,
                  ("productUrl" .=) <$> _aProductURL,
                  ("shareInfo" .=) <$> _aShareInfo,
                  ("coverPhotoBaseUrl" .=) <$> _aCoverPhotoBaseURL,
                  ("id" .=) <$> _aId,
                  ("totalMediaItems" .=) <$> _aTotalMediaItems,
                  ("title" .=) <$> _aTitle])

-- | A simple media item to be created in Google Photos via an upload token.
--
-- /See:/ 'simpleMediaItem' smart constructor.
newtype SimpleMediaItem = SimpleMediaItem'
    { _smiUploadToken :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SimpleMediaItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smiUploadToken'
simpleMediaItem
    :: SimpleMediaItem
simpleMediaItem =
    SimpleMediaItem'
    { _smiUploadToken = Nothing
    }

-- | Token identifying the media bytes which have been uploaded to Google.
smiUploadToken :: Lens' SimpleMediaItem (Maybe Text)
smiUploadToken
  = lens _smiUploadToken
      (\ s a -> s{_smiUploadToken = a})

instance FromJSON SimpleMediaItem where
        parseJSON
          = withObject "SimpleMediaItem"
              (\ o -> SimpleMediaItem' <$> (o .:? "uploadToken"))

instance ToJSON SimpleMediaItem where
        toJSON SimpleMediaItem'{..}
          = object
              (catMaybes [("uploadToken" .=) <$> _smiUploadToken])

-- | Information about a user who contributed the media item. Note that this
-- information is only included if the album containing the media item is
-- shared, was created by you and you have the sharing scope.
--
-- /See:/ 'contributorInfo' smart constructor.
data ContributorInfo = ContributorInfo'
    { _ciProFilePictureBaseURL :: !(Maybe Text)
    , _ciDisplayName           :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContributorInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciProFilePictureBaseURL'
--
-- * 'ciDisplayName'
contributorInfo
    :: ContributorInfo
contributorInfo =
    ContributorInfo'
    { _ciProFilePictureBaseURL = Nothing
    , _ciDisplayName = Nothing
    }

-- | URL to the profile picture of the contributor.
ciProFilePictureBaseURL :: Lens' ContributorInfo (Maybe Text)
ciProFilePictureBaseURL
  = lens _ciProFilePictureBaseURL
      (\ s a -> s{_ciProFilePictureBaseURL = a})

-- | Display name of the contributor.
ciDisplayName :: Lens' ContributorInfo (Maybe Text)
ciDisplayName
  = lens _ciDisplayName
      (\ s a -> s{_ciDisplayName = a})

instance FromJSON ContributorInfo where
        parseJSON
          = withObject "ContributorInfo"
              (\ o ->
                 ContributorInfo' <$>
                   (o .:? "profilePictureBaseUrl") <*>
                     (o .:? "displayName"))

instance ToJSON ContributorInfo where
        toJSON ContributorInfo'{..}
          = object
              (catMaybes
                 [("profilePictureBaseUrl" .=) <$>
                    _ciProFilePictureBaseURL,
                  ("displayName" .=) <$> _ciDisplayName])

--
-- /See:/ 'listAlbumsResponse' smart constructor.
data ListAlbumsResponse = ListAlbumsResponse'
    { _larNextPageToken :: !(Maybe Text)
    , _larAlbums        :: !(Maybe [Album])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListAlbumsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'larNextPageToken'
--
-- * 'larAlbums'
listAlbumsResponse
    :: ListAlbumsResponse
listAlbumsResponse =
    ListAlbumsResponse'
    { _larNextPageToken = Nothing
    , _larAlbums = Nothing
    }

-- | [Output only] Token to use to get the next set of albums. Populated if
-- there are more albums to retrieve for this request.
larNextPageToken :: Lens' ListAlbumsResponse (Maybe Text)
larNextPageToken
  = lens _larNextPageToken
      (\ s a -> s{_larNextPageToken = a})

-- | [Output only] List of albums that were created by the user.
larAlbums :: Lens' ListAlbumsResponse [Album]
larAlbums
  = lens _larAlbums (\ s a -> s{_larAlbums = a}) .
      _Default
      . _Coerce

instance FromJSON ListAlbumsResponse where
        parseJSON
          = withObject "ListAlbumsResponse"
              (\ o ->
                 ListAlbumsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "albums" .!= mempty))

instance ToJSON ListAlbumsResponse where
        toJSON ListAlbumsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _larNextPageToken,
                  ("albums" .=) <$> _larAlbums])

-- | An enrichment containing a map, showing origin and destination
-- locations.
--
-- /See:/ 'mapEnrichment' smart constructor.
data MapEnrichment = MapEnrichment'
    { _meDestination :: !(Maybe Location)
    , _meOrigin      :: !(Maybe Location)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapEnrichment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'meDestination'
--
-- * 'meOrigin'
mapEnrichment
    :: MapEnrichment
mapEnrichment =
    MapEnrichment'
    { _meDestination = Nothing
    , _meOrigin = Nothing
    }

-- | Destination location for this enrichemt item.
meDestination :: Lens' MapEnrichment (Maybe Location)
meDestination
  = lens _meDestination
      (\ s a -> s{_meDestination = a})

-- | Origin location for this enrichment item.
meOrigin :: Lens' MapEnrichment (Maybe Location)
meOrigin = lens _meOrigin (\ s a -> s{_meOrigin = a})

instance FromJSON MapEnrichment where
        parseJSON
          = withObject "MapEnrichment"
              (\ o ->
                 MapEnrichment' <$>
                   (o .:? "destination") <*> (o .:? "origin"))

instance ToJSON MapEnrichment where
        toJSON MapEnrichment'{..}
          = object
              (catMaybes
                 [("destination" .=) <$> _meDestination,
                  ("origin" .=) <$> _meOrigin])

-- | Request to search for media items in a user\'s library. If the album id
-- is specified, this call will return the list of media items in the
-- album. If neither filters nor album id are specified, this call will
-- return all media items in a user\'s Google Photos library. If filters
-- are specified, this call will return all media items in the user\'s
-- library which fulfills the criteria based upon the filters. Filters and
-- album id must not both be set, as this will result in an invalid
-- request.
--
-- /See:/ 'searchMediaItemsRequest' smart constructor.
data SearchMediaItemsRequest = SearchMediaItemsRequest'
    { _smirAlbumId   :: !(Maybe Text)
    , _smirFilters   :: !(Maybe Filters)
    , _smirPageToken :: !(Maybe Text)
    , _smirPageSize  :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchMediaItemsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smirAlbumId'
--
-- * 'smirFilters'
--
-- * 'smirPageToken'
--
-- * 'smirPageSize'
searchMediaItemsRequest
    :: SearchMediaItemsRequest
searchMediaItemsRequest =
    SearchMediaItemsRequest'
    { _smirAlbumId = Nothing
    , _smirFilters = Nothing
    , _smirPageToken = Nothing
    , _smirPageSize = Nothing
    }

-- | Identifier of an album. If populated will list all media items in
-- specified album. Cannot be set in conjunction with any filters.
smirAlbumId :: Lens' SearchMediaItemsRequest (Maybe Text)
smirAlbumId
  = lens _smirAlbumId (\ s a -> s{_smirAlbumId = a})

-- | Filters to apply to the request. Cannot be set in conjuction with an
-- albumId.
smirFilters :: Lens' SearchMediaItemsRequest (Maybe Filters)
smirFilters
  = lens _smirFilters (\ s a -> s{_smirFilters = a})

-- | A continuation token to get the next page of the results. Adding this to
-- the request will return the rows after the pageToken. The pageToken
-- should be the value returned in the nextPageToken parameter in the
-- response to the searchMediaItems request.
smirPageToken :: Lens' SearchMediaItemsRequest (Maybe Text)
smirPageToken
  = lens _smirPageToken
      (\ s a -> s{_smirPageToken = a})

-- | Maximum number of media items to return in the response. The default
-- number of media items to return at a time is 100. The maximum page size
-- is 500.
smirPageSize :: Lens' SearchMediaItemsRequest (Maybe Int32)
smirPageSize
  = lens _smirPageSize (\ s a -> s{_smirPageSize = a})
      . mapping _Coerce

instance FromJSON SearchMediaItemsRequest where
        parseJSON
          = withObject "SearchMediaItemsRequest"
              (\ o ->
                 SearchMediaItemsRequest' <$>
                   (o .:? "albumId") <*> (o .:? "filters") <*>
                     (o .:? "pageToken")
                     <*> (o .:? "pageSize"))

instance ToJSON SearchMediaItemsRequest where
        toJSON SearchMediaItemsRequest'{..}
          = object
              (catMaybes
                 [("albumId" .=) <$> _smirAlbumId,
                  ("filters" .=) <$> _smirFilters,
                  ("pageToken" .=) <$> _smirPageToken,
                  ("pageSize" .=) <$> _smirPageSize])

-- | New media item that will be created in a user\'s Google Photos account.
--
-- /See:/ 'newMediaItem' smart constructor.
data NewMediaItem = NewMediaItem'
    { _nmiSimpleMediaItem :: !(Maybe SimpleMediaItem)
    , _nmiDescription     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NewMediaItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nmiSimpleMediaItem'
--
-- * 'nmiDescription'
newMediaItem
    :: NewMediaItem
newMediaItem =
    NewMediaItem'
    { _nmiSimpleMediaItem = Nothing
    , _nmiDescription = Nothing
    }

-- | A new media item that has been uploaded via the included uploadToken.
nmiSimpleMediaItem :: Lens' NewMediaItem (Maybe SimpleMediaItem)
nmiSimpleMediaItem
  = lens _nmiSimpleMediaItem
      (\ s a -> s{_nmiSimpleMediaItem = a})

-- | Description of the media item. This will be shown to the user in the
-- item\'s info section in the Google Photos app. This string should not be
-- more than 1000 characters.
nmiDescription :: Lens' NewMediaItem (Maybe Text)
nmiDescription
  = lens _nmiDescription
      (\ s a -> s{_nmiDescription = a})

instance FromJSON NewMediaItem where
        parseJSON
          = withObject "NewMediaItem"
              (\ o ->
                 NewMediaItem' <$>
                   (o .:? "simpleMediaItem") <*> (o .:? "description"))

instance ToJSON NewMediaItem where
        toJSON NewMediaItem'{..}
          = object
              (catMaybes
                 [("simpleMediaItem" .=) <$> _nmiSimpleMediaItem,
                  ("description" .=) <$> _nmiDescription])

-- | Request to add an enrichment to a specific album at a specific position.
--
-- /See:/ 'addEnrichmentToAlbumRequest' smart constructor.
data AddEnrichmentToAlbumRequest = AddEnrichmentToAlbumRequest'
    { _aetarNewEnrichmentItem :: !(Maybe NewEnrichmentItem)
    , _aetarAlbumPosition     :: !(Maybe AlbumPosition)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddEnrichmentToAlbumRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aetarNewEnrichmentItem'
--
-- * 'aetarAlbumPosition'
addEnrichmentToAlbumRequest
    :: AddEnrichmentToAlbumRequest
addEnrichmentToAlbumRequest =
    AddEnrichmentToAlbumRequest'
    { _aetarNewEnrichmentItem = Nothing
    , _aetarAlbumPosition = Nothing
    }

-- | The enrichment to be added.
aetarNewEnrichmentItem :: Lens' AddEnrichmentToAlbumRequest (Maybe NewEnrichmentItem)
aetarNewEnrichmentItem
  = lens _aetarNewEnrichmentItem
      (\ s a -> s{_aetarNewEnrichmentItem = a})

-- | The position where the enrichment will be inserted.
aetarAlbumPosition :: Lens' AddEnrichmentToAlbumRequest (Maybe AlbumPosition)
aetarAlbumPosition
  = lens _aetarAlbumPosition
      (\ s a -> s{_aetarAlbumPosition = a})

instance FromJSON AddEnrichmentToAlbumRequest where
        parseJSON
          = withObject "AddEnrichmentToAlbumRequest"
              (\ o ->
                 AddEnrichmentToAlbumRequest' <$>
                   (o .:? "newEnrichmentItem") <*>
                     (o .:? "albumPosition"))

instance ToJSON AddEnrichmentToAlbumRequest where
        toJSON AddEnrichmentToAlbumRequest'{..}
          = object
              (catMaybes
                 [("newEnrichmentItem" .=) <$>
                    _aetarNewEnrichmentItem,
                  ("albumPosition" .=) <$> _aetarAlbumPosition])

-- | Request to join a shared album on behalf of the user. This uses a
-- shareToken which can be acquired via the shareAlbum or listSharedAlbums
-- calls.
--
-- /See:/ 'joinSharedAlbumRequest' smart constructor.
newtype JoinSharedAlbumRequest = JoinSharedAlbumRequest'
    { _jsarShareToken :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'JoinSharedAlbumRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jsarShareToken'
joinSharedAlbumRequest
    :: JoinSharedAlbumRequest
joinSharedAlbumRequest =
    JoinSharedAlbumRequest'
    { _jsarShareToken = Nothing
    }

-- | Token indicating the shared album to join on behalf of the user.
jsarShareToken :: Lens' JoinSharedAlbumRequest (Maybe Text)
jsarShareToken
  = lens _jsarShareToken
      (\ s a -> s{_jsarShareToken = a})

instance FromJSON JoinSharedAlbumRequest where
        parseJSON
          = withObject "JoinSharedAlbumRequest"
              (\ o ->
                 JoinSharedAlbumRequest' <$> (o .:? "shareToken"))

instance ToJSON JoinSharedAlbumRequest where
        toJSON JoinSharedAlbumRequest'{..}
          = object
              (catMaybes [("shareToken" .=) <$> _jsarShareToken])

-- | Request to make an album shared in Google Photos.
--
-- /See:/ 'shareAlbumRequest' smart constructor.
newtype ShareAlbumRequest = ShareAlbumRequest'
    { _sarSharedAlbumOptions :: Maybe SharedAlbumOptions
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ShareAlbumRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sarSharedAlbumOptions'
shareAlbumRequest
    :: ShareAlbumRequest
shareAlbumRequest =
    ShareAlbumRequest'
    { _sarSharedAlbumOptions = Nothing
    }

-- | Options to be set when converting the album to a shared album.
sarSharedAlbumOptions :: Lens' ShareAlbumRequest (Maybe SharedAlbumOptions)
sarSharedAlbumOptions
  = lens _sarSharedAlbumOptions
      (\ s a -> s{_sarSharedAlbumOptions = a})

instance FromJSON ShareAlbumRequest where
        parseJSON
          = withObject "ShareAlbumRequest"
              (\ o ->
                 ShareAlbumRequest' <$> (o .:? "sharedAlbumOptions"))

instance ToJSON ShareAlbumRequest where
        toJSON ShareAlbumRequest'{..}
          = object
              (catMaybes
                 [("sharedAlbumOptions" .=) <$>
                    _sarSharedAlbumOptions])

-- | Specifies a position in an album.
--
-- /See:/ 'albumPosition' smart constructor.
data AlbumPosition = AlbumPosition'
    { _apRelativeMediaItemId      :: !(Maybe Text)
    , _apRelativeEnrichmentItemId :: !(Maybe Text)
    , _apPosition                 :: !(Maybe AlbumPositionPosition)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AlbumPosition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apRelativeMediaItemId'
--
-- * 'apRelativeEnrichmentItemId'
--
-- * 'apPosition'
albumPosition
    :: AlbumPosition
albumPosition =
    AlbumPosition'
    { _apRelativeMediaItemId = Nothing
    , _apRelativeEnrichmentItemId = Nothing
    , _apPosition = Nothing
    }

-- | The media item to which the position is relative to. Only used when
-- position type is AFTER_MEDIA_ITEM.
apRelativeMediaItemId :: Lens' AlbumPosition (Maybe Text)
apRelativeMediaItemId
  = lens _apRelativeMediaItemId
      (\ s a -> s{_apRelativeMediaItemId = a})

-- | The enrichment item to which the position is relative to. Only used when
-- position type is AFTER_ENRICHMENT_ITEM.
apRelativeEnrichmentItemId :: Lens' AlbumPosition (Maybe Text)
apRelativeEnrichmentItemId
  = lens _apRelativeEnrichmentItemId
      (\ s a -> s{_apRelativeEnrichmentItemId = a})

-- | Type of position, for a media or enrichment item.
apPosition :: Lens' AlbumPosition (Maybe AlbumPositionPosition)
apPosition
  = lens _apPosition (\ s a -> s{_apPosition = a})

instance FromJSON AlbumPosition where
        parseJSON
          = withObject "AlbumPosition"
              (\ o ->
                 AlbumPosition' <$>
                   (o .:? "relativeMediaItemId") <*>
                     (o .:? "relativeEnrichmentItemId")
                     <*> (o .:? "position"))

instance ToJSON AlbumPosition where
        toJSON AlbumPosition'{..}
          = object
              (catMaybes
                 [("relativeMediaItemId" .=) <$>
                    _apRelativeMediaItemId,
                  ("relativeEnrichmentItemId" .=) <$>
                    _apRelativeEnrichmentItemId,
                  ("position" .=) <$> _apPosition])

-- | This filter is used to define which results to return based on the
-- contents of the media item. It is possible to specify a list of
-- categories to include, and\/or a list of categories to exclude. Within
-- each list, the categories are combined with an OR. For example, if the
-- content filter looks like: included_content_categories: [c1, c2, c3] It
-- would get media items that contain (c1 OR c2 OR c3). And if the content
-- filter looks like: excluded_content_categories: [c1, c2, c3] It would
-- get media items that contain NOT (c1 OR c2 OR c3). You can also include
-- some categories while excluding others, as in this proto:
-- included_content_categories: [c1, c2], excluded_content_category: [c3,
-- c4] It would get media items that contain (c1 OR c2) AND NOT (c3 OR c4).
-- A category that appears in 'includedContentategories' must not appear in
-- 'excludedContentCategories'.
--
-- /See:/ 'contentFilter' smart constructor.
data ContentFilter = ContentFilter'
    { _cfIncludedContentCategories :: !(Maybe [Text])
    , _cfExcludedContentCategories :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContentFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfIncludedContentCategories'
--
-- * 'cfExcludedContentCategories'
contentFilter
    :: ContentFilter
contentFilter =
    ContentFilter'
    { _cfIncludedContentCategories = Nothing
    , _cfExcludedContentCategories = Nothing
    }

-- | The set of categories that must be present in the media items in the
-- result. The items in the set are ORed. There is a maximum of 10
-- includedContentCategories per request.
cfIncludedContentCategories :: Lens' ContentFilter [Text]
cfIncludedContentCategories
  = lens _cfIncludedContentCategories
      (\ s a -> s{_cfIncludedContentCategories = a})
      . _Default
      . _Coerce

-- | The set of categories that must NOT be present in the media items in the
-- result. The items in the set are ORed. There is a maximum of 10
-- excludedContentCategories per request.
cfExcludedContentCategories :: Lens' ContentFilter [Text]
cfExcludedContentCategories
  = lens _cfExcludedContentCategories
      (\ s a -> s{_cfExcludedContentCategories = a})
      . _Default
      . _Coerce

instance FromJSON ContentFilter where
        parseJSON
          = withObject "ContentFilter"
              (\ o ->
                 ContentFilter' <$>
                   (o .:? "includedContentCategories" .!= mempty) <*>
                     (o .:? "excludedContentCategories" .!= mempty))

instance ToJSON ContentFilter where
        toJSON ContentFilter'{..}
          = object
              (catMaybes
                 [("includedContentCategories" .=) <$>
                    _cfIncludedContentCategories,
                  ("excludedContentCategories" .=) <$>
                    _cfExcludedContentCategories])

--
-- /See:/ 'batchCreateMediaItemsResponse' smart constructor.
newtype BatchCreateMediaItemsResponse = BatchCreateMediaItemsResponse'
    { _bcmirNewMediaItemResults :: Maybe [NewMediaItemResult]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BatchCreateMediaItemsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bcmirNewMediaItemResults'
batchCreateMediaItemsResponse
    :: BatchCreateMediaItemsResponse
batchCreateMediaItemsResponse =
    BatchCreateMediaItemsResponse'
    { _bcmirNewMediaItemResults = Nothing
    }

-- | [Output only] List of media items which were created.
bcmirNewMediaItemResults :: Lens' BatchCreateMediaItemsResponse [NewMediaItemResult]
bcmirNewMediaItemResults
  = lens _bcmirNewMediaItemResults
      (\ s a -> s{_bcmirNewMediaItemResults = a})
      . _Default
      . _Coerce

instance FromJSON BatchCreateMediaItemsResponse where
        parseJSON
          = withObject "BatchCreateMediaItemsResponse"
              (\ o ->
                 BatchCreateMediaItemsResponse' <$>
                   (o .:? "newMediaItemResults" .!= mempty))

instance ToJSON BatchCreateMediaItemsResponse where
        toJSON BatchCreateMediaItemsResponse'{..}
          = object
              (catMaybes
                 [("newMediaItemResults" .=) <$>
                    _bcmirNewMediaItemResults])
