{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ProximityBeacon.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ProximityBeacon.Types.Product where

import           Network.Google.Prelude
import           Network.Google.ProximityBeacon.Types.Sum

-- | An object representing a latitude\/longitude pair. This is expressed as
-- a pair of doubles representing degrees latitude and degrees longitude.
-- Unless specified otherwise, this must conform to the WGS84 standard.
-- Values must be within normalized ranges. Example of normalization code
-- in Python: def NormalizeLongitude(longitude): \"\"\"Wrapsdecimal degrees
-- longitude to [-180.0, 180.0].\"\"\" q, r = divmod(longitude, 360.0) if r
-- > 180.0 or (r == 180.0 and q \<= -1.0): return r - 360.0 return r def
-- NormalizeLatLng(latitude, longitude): \"\"\"Wraps decimal degrees
-- latitude and longitude to [-180.0, 180.0] and [-90.0, 90.0],
-- respectively.\"\"\" r = latitude % 360.0 if r = 270.0: return r - 360,
-- NormalizeLongitude(longitude) else: return 180 - r,
-- NormalizeLongitude(longitude + 180.0) assert 180.0 ==
-- NormalizeLongitude(180.0) assert -180.0 == NormalizeLongitude(-180.0)
-- assert -179.0 == NormalizeLongitude(181.0) assert (0.0, 0.0) ==
-- NormalizeLatLng(360.0, 0.0) assert (0.0, 0.0) == NormalizeLatLng(-360.0,
-- 0.0) assert (85.0, 180.0) == NormalizeLatLng(95.0, 0.0) assert (-85.0,
-- -170.0) == NormalizeLatLng(-95.0, 10.0) assert (90.0, 10.0) ==
-- NormalizeLatLng(90.0, 10.0) assert (-90.0, -10.0) ==
-- NormalizeLatLng(-90.0, -10.0) assert (0.0, -170.0) ==
-- NormalizeLatLng(-180.0, 10.0) assert (0.0, -170.0) ==
-- NormalizeLatLng(180.0, 10.0) assert (-90.0, 10.0) ==
-- NormalizeLatLng(270.0, 10.0) assert (90.0, 10.0) ==
-- NormalizeLatLng(-270.0, 10.0)
--
-- /See:/ 'latLng' smart constructor.
data LatLng = LatLng
    { _llLatitude  :: !(Maybe Double)
    , _llLongitude :: !(Maybe Double)
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
    LatLng
    { _llLatitude = Nothing
    , _llLongitude = Nothing
    }

-- | The latitude in degrees. It must be in the range [-90.0, +90.0].
llLatitude :: Lens' LatLng (Maybe Double)
llLatitude
  = lens _llLatitude (\ s a -> s{_llLatitude = a})

-- | The longitude in degrees. It must be in the range [-180.0, +180.0].
llLongitude :: Lens' LatLng (Maybe Double)
llLongitude
  = lens _llLongitude (\ s a -> s{_llLongitude = a})

instance FromJSON LatLng where
        parseJSON
          = withObject "LatLng"
              (\ o ->
                 LatLng <$>
                   (o .:? "latitude") <*> (o .:? "longitude"))

instance ToJSON LatLng where
        toJSON LatLng{..}
          = object
              (catMaybes
                 [("latitude" .=) <$> _llLatitude,
                  ("longitude" .=) <$> _llLongitude])

-- | A subset of attachment information served via the
-- \`beaconinfo.getforobserved\` method, used when your users encounter
-- your beacons.
--
-- /See:/ 'attachmentInfo' smart constructor.
data AttachmentInfo = AttachmentInfo
    { _aiData           :: !(Maybe Word8)
    , _aiNamespacedType :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AttachmentInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiData'
--
-- * 'aiNamespacedType'
attachmentInfo
    :: AttachmentInfo
attachmentInfo =
    AttachmentInfo
    { _aiData = Nothing
    , _aiNamespacedType = Nothing
    }

-- | An opaque data container for client-provided data.
aiData :: Lens' AttachmentInfo (Maybe Word8)
aiData = lens _aiData (\ s a -> s{_aiData = a})

-- | Specifies what kind of attachment this is. Tells a client how to
-- interpret the \`data\` field. Format is namespace\/type, for example
-- scrupulous-wombat-12345\/welcome-message
aiNamespacedType :: Lens' AttachmentInfo (Maybe Text)
aiNamespacedType
  = lens _aiNamespacedType
      (\ s a -> s{_aiNamespacedType = a})

instance FromJSON AttachmentInfo where
        parseJSON
          = withObject "AttachmentInfo"
              (\ o ->
                 AttachmentInfo <$>
                   (o .:? "data") <*> (o .:? "namespacedType"))

instance ToJSON AttachmentInfo where
        toJSON AttachmentInfo{..}
          = object
              (catMaybes
                 [("data" .=) <$> _aiData,
                  ("namespacedType" .=) <$> _aiNamespacedType])

-- | Properties of the beacon device, for example battery type or firmware
-- version. Optional.
--
-- /See:/ 'beaconProperties' smart constructor.
data BeaconProperties =
    BeaconProperties
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BeaconProperties' with the minimum fields required to make a request.
--
beaconProperties
    :: BeaconProperties
beaconProperties = BeaconProperties

instance FromJSON BeaconProperties where
        parseJSON
          = withObject "BeaconProperties"
              (\ o -> pure BeaconProperties)

instance ToJSON BeaconProperties where
        toJSON = const (Object mempty)

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'empty' smart constructor.
data Empty =
    Empty
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty

instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty)

instance ToJSON Empty where
        toJSON = const (Object mempty)

-- | Response for a request to delete attachments.
--
-- /See:/ 'deleteAttachmentsResponse' smart constructor.
newtype DeleteAttachmentsResponse = DeleteAttachmentsResponse
    { _darNumDeleted :: Maybe Int32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeleteAttachmentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'darNumDeleted'
deleteAttachmentsResponse
    :: DeleteAttachmentsResponse
deleteAttachmentsResponse =
    DeleteAttachmentsResponse
    { _darNumDeleted = Nothing
    }

-- | The number of attachments that were deleted.
darNumDeleted :: Lens' DeleteAttachmentsResponse (Maybe Int32)
darNumDeleted
  = lens _darNumDeleted
      (\ s a -> s{_darNumDeleted = a})

instance FromJSON DeleteAttachmentsResponse where
        parseJSON
          = withObject "DeleteAttachmentsResponse"
              (\ o ->
                 DeleteAttachmentsResponse <$> (o .:? "numDeleted"))

instance ToJSON DeleteAttachmentsResponse where
        toJSON DeleteAttachmentsResponse{..}
          = object
              (catMaybes [("numDeleted" .=) <$> _darNumDeleted])

-- | Request for beacon and attachment information about beacons that a
-- mobile client has encountered \"in the wild\".
--
-- /See:/ 'getInfoForObservedBeaconsRequest' smart constructor.
data GetInfoForObservedBeaconsRequest = GetInfoForObservedBeaconsRequest
    { _gifobrObservations    :: !(Maybe [Observation])
    , _gifobrNamespacedTypes :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetInfoForObservedBeaconsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gifobrObservations'
--
-- * 'gifobrNamespacedTypes'
getInfoForObservedBeaconsRequest
    :: GetInfoForObservedBeaconsRequest
getInfoForObservedBeaconsRequest =
    GetInfoForObservedBeaconsRequest
    { _gifobrObservations = Nothing
    , _gifobrNamespacedTypes = Nothing
    }

-- | The beacons that the client has encountered. At least one must be given.
gifobrObservations :: Lens' GetInfoForObservedBeaconsRequest [Observation]
gifobrObservations
  = lens _gifobrObservations
      (\ s a -> s{_gifobrObservations = a})
      . _Default
      . _Coerce

-- | Specifies what kind of attachments to include in the response. When
-- given, the response will include only attachments of the given types.
-- When empty, no attachments will be returned. Must be in the format
-- namespace\/type. Accepts \`*\` to specify all types in all namespaces.
-- Optional.
gifobrNamespacedTypes :: Lens' GetInfoForObservedBeaconsRequest [Text]
gifobrNamespacedTypes
  = lens _gifobrNamespacedTypes
      (\ s a -> s{_gifobrNamespacedTypes = a})
      . _Default
      . _Coerce

instance FromJSON GetInfoForObservedBeaconsRequest
         where
        parseJSON
          = withObject "GetInfoForObservedBeaconsRequest"
              (\ o ->
                 GetInfoForObservedBeaconsRequest <$>
                   (o .:? "observations" .!= mempty) <*>
                     (o .:? "namespacedTypes" .!= mempty))

instance ToJSON GetInfoForObservedBeaconsRequest
         where
        toJSON GetInfoForObservedBeaconsRequest{..}
          = object
              (catMaybes
                 [("observations" .=) <$> _gifobrObservations,
                  ("namespacedTypes" .=) <$> _gifobrNamespacedTypes])

-- | An attachment namespace defines read and write access for all the
-- attachments created under it. Each namespace is globally unique, and
-- owned by one project which is the only project that can create
-- attachments under it.
--
-- /See:/ 'namespace' smart constructor.
data Namespace = Namespace
    { _nServingVisibility :: !(Maybe Text)
    , _nNamespaceName     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Namespace' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nServingVisibility'
--
-- * 'nNamespaceName'
namespace
    :: Namespace
namespace =
    Namespace
    { _nServingVisibility = Nothing
    , _nNamespaceName = Nothing
    }

-- | Specifies what clients may receive attachments under this namespace via
-- \`beaconinfo.getforobserved\`.
nServingVisibility :: Lens' Namespace (Maybe Text)
nServingVisibility
  = lens _nServingVisibility
      (\ s a -> s{_nServingVisibility = a})

-- | Resource name of this namespace. Namespaces names have the format:
-- namespaces\/namespace.
nNamespaceName :: Lens' Namespace (Maybe Text)
nNamespaceName
  = lens _nNamespaceName
      (\ s a -> s{_nNamespaceName = a})

instance FromJSON Namespace where
        parseJSON
          = withObject "Namespace"
              (\ o ->
                 Namespace <$>
                   (o .:? "servingVisibility") <*>
                     (o .:? "namespaceName"))

instance ToJSON Namespace where
        toJSON Namespace{..}
          = object
              (catMaybes
                 [("servingVisibility" .=) <$> _nServingVisibility,
                  ("namespaceName" .=) <$> _nNamespaceName])

-- | Response to ListNamespacesRequest that contains all the project\'s
-- namespaces.
--
-- /See:/ 'listNamespacesResponse' smart constructor.
newtype ListNamespacesResponse = ListNamespacesResponse
    { _lnrNamespaces :: Maybe [Namespace]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListNamespacesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lnrNamespaces'
listNamespacesResponse
    :: ListNamespacesResponse
listNamespacesResponse =
    ListNamespacesResponse
    { _lnrNamespaces = Nothing
    }

-- | The attachments that corresponded to the request params.
lnrNamespaces :: Lens' ListNamespacesResponse [Namespace]
lnrNamespaces
  = lens _lnrNamespaces
      (\ s a -> s{_lnrNamespaces = a})
      . _Default
      . _Coerce

instance FromJSON ListNamespacesResponse where
        parseJSON
          = withObject "ListNamespacesResponse"
              (\ o ->
                 ListNamespacesResponse <$>
                   (o .:? "namespaces" .!= mempty))

instance ToJSON ListNamespacesResponse where
        toJSON ListNamespacesResponse{..}
          = object
              (catMaybes [("namespaces" .=) <$> _lnrNamespaces])

-- | Represents a whole calendar date, e.g. date of birth. The time of day
-- and time zone are either specified elsewhere or are not significant. The
-- date is relative to the Proleptic Gregorian Calendar. The day may be 0
-- to represent a year and month where the day is not significant, e.g.
-- credit card expiration date. The year may be 0 to represent a month and
-- day independent of year, e.g. anniversary date. Related types are
-- [google.type.TimeOfDay][] and \`google.protobuf.Timestamp\`.
--
-- /See:/ 'date' smart constructor.
data Date = Date
    { _dDay   :: !(Maybe Int32)
    , _dYear  :: !(Maybe Int32)
    , _dMonth :: !(Maybe Int32)
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
    Date
    { _dDay = Nothing
    , _dYear = Nothing
    , _dMonth = Nothing
    }

-- | Day of month. Must be from 1 to 31 and valid for the year and month, or
-- 0 if specifying a year\/month where the day is not sigificant.
dDay :: Lens' Date (Maybe Int32)
dDay = lens _dDay (\ s a -> s{_dDay = a})

-- | Year of date. Must be from 1 to 9,999, or 0 if specifying a date without
-- a year.
dYear :: Lens' Date (Maybe Int32)
dYear = lens _dYear (\ s a -> s{_dYear = a})

-- | Month of year of date. Must be from 1 to 12.
dMonth :: Lens' Date (Maybe Int32)
dMonth = lens _dMonth (\ s a -> s{_dMonth = a})

instance FromJSON Date where
        parseJSON
          = withObject "Date"
              (\ o ->
                 Date <$>
                   (o .:? "day") <*> (o .:? "year") <*> (o .:? "month"))

instance ToJSON Date where
        toJSON Date{..}
          = object
              (catMaybes
                 [("day" .=) <$> _dDay, ("year" .=) <$> _dYear,
                  ("month" .=) <$> _dMonth])

-- | Details of a beacon device.
--
-- /See:/ 'beacon' smart constructor.
data Beacon = Beacon
    { _bLatLng            :: !(Maybe LatLng)
    , _bStatus            :: !(Maybe Text)
    , _bBeaconName        :: !(Maybe Text)
    , _bIndoorLevel       :: !(Maybe IndoorLevel)
    , _bExpectedStability :: !(Maybe Text)
    , _bDescription       :: !(Maybe Text)
    , _bPlaceId           :: !(Maybe Text)
    , _bAdvertisedId      :: !(Maybe AdvertisedId)
    , _bProperties        :: !(Maybe BeaconProperties)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Beacon' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bLatLng'
--
-- * 'bStatus'
--
-- * 'bBeaconName'
--
-- * 'bIndoorLevel'
--
-- * 'bExpectedStability'
--
-- * 'bDescription'
--
-- * 'bPlaceId'
--
-- * 'bAdvertisedId'
--
-- * 'bProperties'
beacon
    :: Beacon
beacon =
    Beacon
    { _bLatLng = Nothing
    , _bStatus = Nothing
    , _bBeaconName = Nothing
    , _bIndoorLevel = Nothing
    , _bExpectedStability = Nothing
    , _bDescription = Nothing
    , _bPlaceId = Nothing
    , _bAdvertisedId = Nothing
    , _bProperties = Nothing
    }

-- | The location of the beacon, expressed as a latitude and longitude pair.
-- This location is given when the beacon is registered or updated. It does
-- not necessarily indicate the actual current location of the beacon.
-- Optional.
bLatLng :: Lens' Beacon (Maybe LatLng)
bLatLng = lens _bLatLng (\ s a -> s{_bLatLng = a})

-- | Current status of the beacon. Required.
bStatus :: Lens' Beacon (Maybe Text)
bStatus = lens _bStatus (\ s a -> s{_bStatus = a})

-- | Resource name of this beacon. A beacon name has the format
-- \"beacons\/N!beaconId\" where the beaconId is the base16 ID broadcast by
-- the beacon and N is a code for the beacon\'s type. Possible values are
-- \`3\` for Eddystone, \`1\` for iBeacon, or \`5\` for AltBeacon. This
-- field must be left empty when registering. After reading a beacon,
-- clients can use the name for future operations.
bBeaconName :: Lens' Beacon (Maybe Text)
bBeaconName
  = lens _bBeaconName (\ s a -> s{_bBeaconName = a})

-- | The indoor level information for this beacon, if known. As returned by
-- the Google Maps API. Optional.
bIndoorLevel :: Lens' Beacon (Maybe IndoorLevel)
bIndoorLevel
  = lens _bIndoorLevel (\ s a -> s{_bIndoorLevel = a})

-- | Expected location stability. This is set when the beacon is registered
-- or updated, not automatically detected in any way. Optional.
bExpectedStability :: Lens' Beacon (Maybe Text)
bExpectedStability
  = lens _bExpectedStability
      (\ s a -> s{_bExpectedStability = a})

-- | Free text used to identify and describe the beacon. Maximum length 140
-- characters. Optional.
bDescription :: Lens' Beacon (Maybe Text)
bDescription
  = lens _bDescription (\ s a -> s{_bDescription = a})

-- | The [Google Places API](\/places\/place-id) Place ID of the place where
-- the beacon is deployed. This is given when the beacon is registered or
-- updated, not automatically detected in any way. Optional.
bPlaceId :: Lens' Beacon (Maybe Text)
bPlaceId = lens _bPlaceId (\ s a -> s{_bPlaceId = a})

-- | The identifier of a beacon as advertised by it. This field must be
-- populated when registering. It may be empty when updating a beacon
-- record because it is ignored in updates.
bAdvertisedId :: Lens' Beacon (Maybe AdvertisedId)
bAdvertisedId
  = lens _bAdvertisedId
      (\ s a -> s{_bAdvertisedId = a})

-- | Properties of the beacon device, for example battery type or firmware
-- version. Optional.
bProperties :: Lens' Beacon (Maybe BeaconProperties)
bProperties
  = lens _bProperties (\ s a -> s{_bProperties = a})

instance FromJSON Beacon where
        parseJSON
          = withObject "Beacon"
              (\ o ->
                 Beacon <$>
                   (o .:? "latLng") <*> (o .:? "status") <*>
                     (o .:? "beaconName")
                     <*> (o .:? "indoorLevel")
                     <*> (o .:? "expectedStability")
                     <*> (o .:? "description")
                     <*> (o .:? "placeId")
                     <*> (o .:? "advertisedId")
                     <*> (o .:? "properties"))

instance ToJSON Beacon where
        toJSON Beacon{..}
          = object
              (catMaybes
                 [("latLng" .=) <$> _bLatLng,
                  ("status" .=) <$> _bStatus,
                  ("beaconName" .=) <$> _bBeaconName,
                  ("indoorLevel" .=) <$> _bIndoorLevel,
                  ("expectedStability" .=) <$> _bExpectedStability,
                  ("description" .=) <$> _bDescription,
                  ("placeId" .=) <$> _bPlaceId,
                  ("advertisedId" .=) <$> _bAdvertisedId,
                  ("properties" .=) <$> _bProperties])

-- | Diagnostics for a single beacon.
--
-- /See:/ 'diagnostics' smart constructor.
data Diagnostics = Diagnostics
    { _dAlerts                  :: !(Maybe [Text])
    , _dBeaconName              :: !(Maybe Text)
    , _dEstimatedLowBatteryDate :: !(Maybe Date)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Diagnostics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dAlerts'
--
-- * 'dBeaconName'
--
-- * 'dEstimatedLowBatteryDate'
diagnostics
    :: Diagnostics
diagnostics =
    Diagnostics
    { _dAlerts = Nothing
    , _dBeaconName = Nothing
    , _dEstimatedLowBatteryDate = Nothing
    }

-- | An unordered list of Alerts that the beacon has.
dAlerts :: Lens' Diagnostics [Text]
dAlerts
  = lens _dAlerts (\ s a -> s{_dAlerts = a}) . _Default
      . _Coerce

-- | Resource name of the beacon.
dBeaconName :: Lens' Diagnostics (Maybe Text)
dBeaconName
  = lens _dBeaconName (\ s a -> s{_dBeaconName = a})

-- | The date when the battery is expected to be low. If the value is missing
-- then there is no estimate for when the battery will be low. This value
-- is only an estimate, not an exact date.
dEstimatedLowBatteryDate :: Lens' Diagnostics (Maybe Date)
dEstimatedLowBatteryDate
  = lens _dEstimatedLowBatteryDate
      (\ s a -> s{_dEstimatedLowBatteryDate = a})

instance FromJSON Diagnostics where
        parseJSON
          = withObject "Diagnostics"
              (\ o ->
                 Diagnostics <$>
                   (o .:? "alerts" .!= mempty) <*> (o .:? "beaconName")
                     <*> (o .:? "estimatedLowBatteryDate"))

instance ToJSON Diagnostics where
        toJSON Diagnostics{..}
          = object
              (catMaybes
                 [("alerts" .=) <$> _dAlerts,
                  ("beaconName" .=) <$> _dBeaconName,
                  ("estimatedLowBatteryDate" .=) <$>
                    _dEstimatedLowBatteryDate])

-- | Response to ListBeaconAttachments that contains the requested
-- attachments.
--
-- /See:/ 'listBeaconAttachmentsResponse' smart constructor.
newtype ListBeaconAttachmentsResponse = ListBeaconAttachmentsResponse
    { _lbarAttachments :: Maybe [BeaconAttachment]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListBeaconAttachmentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbarAttachments'
listBeaconAttachmentsResponse
    :: ListBeaconAttachmentsResponse
listBeaconAttachmentsResponse =
    ListBeaconAttachmentsResponse
    { _lbarAttachments = Nothing
    }

-- | The attachments that corresponded to the request params.
lbarAttachments :: Lens' ListBeaconAttachmentsResponse [BeaconAttachment]
lbarAttachments
  = lens _lbarAttachments
      (\ s a -> s{_lbarAttachments = a})
      . _Default
      . _Coerce

instance FromJSON ListBeaconAttachmentsResponse where
        parseJSON
          = withObject "ListBeaconAttachmentsResponse"
              (\ o ->
                 ListBeaconAttachmentsResponse <$>
                   (o .:? "attachments" .!= mempty))

instance ToJSON ListBeaconAttachmentsResponse where
        toJSON ListBeaconAttachmentsResponse{..}
          = object
              (catMaybes [("attachments" .=) <$> _lbarAttachments])

-- | Indoor level, a human-readable string as returned by Google Maps APIs,
-- useful to indicate which floor of a building a beacon is located on.
--
-- /See:/ 'indoorLevel' smart constructor.
newtype IndoorLevel = IndoorLevel
    { _ilName :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'IndoorLevel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilName'
indoorLevel
    :: IndoorLevel
indoorLevel =
    IndoorLevel
    { _ilName = Nothing
    }

-- | The name of this level.
ilName :: Lens' IndoorLevel (Maybe Text)
ilName = lens _ilName (\ s a -> s{_ilName = a})

instance FromJSON IndoorLevel where
        parseJSON
          = withObject "IndoorLevel"
              (\ o -> IndoorLevel <$> (o .:? "name"))

instance ToJSON IndoorLevel where
        toJSON IndoorLevel{..}
          = object (catMaybes [("name" .=) <$> _ilName])

-- | A subset of beacon information served via the
-- \`beaconinfo.getforobserved\` method, which you call when users of your
-- app encounter your beacons.
--
-- /See:/ 'beaconInfo' smart constructor.
data BeaconInfo = BeaconInfo
    { _biAttachments  :: !(Maybe [AttachmentInfo])
    , _biBeaconName   :: !(Maybe Text)
    , _biDescription  :: !(Maybe Text)
    , _biAdvertisedId :: !(Maybe AdvertisedId)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BeaconInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'biAttachments'
--
-- * 'biBeaconName'
--
-- * 'biDescription'
--
-- * 'biAdvertisedId'
beaconInfo
    :: BeaconInfo
beaconInfo =
    BeaconInfo
    { _biAttachments = Nothing
    , _biBeaconName = Nothing
    , _biDescription = Nothing
    , _biAdvertisedId = Nothing
    }

-- | Attachments matching the type(s) requested. May be empty if no
-- attachment types were requested, or if none matched.
biAttachments :: Lens' BeaconInfo [AttachmentInfo]
biAttachments
  = lens _biAttachments
      (\ s a -> s{_biAttachments = a})
      . _Default
      . _Coerce

-- | The name under which the beacon is registered.
biBeaconName :: Lens' BeaconInfo (Maybe Text)
biBeaconName
  = lens _biBeaconName (\ s a -> s{_biBeaconName = a})

-- | Free text used to identify or describe the beacon in a registered
-- establishment. For example: \"entrance\", \"room 101\", etc. May be
-- empty.
biDescription :: Lens' BeaconInfo (Maybe Text)
biDescription
  = lens _biDescription
      (\ s a -> s{_biDescription = a})

-- | The ID advertised by the beacon.
biAdvertisedId :: Lens' BeaconInfo (Maybe AdvertisedId)
biAdvertisedId
  = lens _biAdvertisedId
      (\ s a -> s{_biAdvertisedId = a})

instance FromJSON BeaconInfo where
        parseJSON
          = withObject "BeaconInfo"
              (\ o ->
                 BeaconInfo <$>
                   (o .:? "attachments" .!= mempty) <*>
                     (o .:? "beaconName")
                     <*> (o .:? "description")
                     <*> (o .:? "advertisedId"))

instance ToJSON BeaconInfo where
        toJSON BeaconInfo{..}
          = object
              (catMaybes
                 [("attachments" .=) <$> _biAttachments,
                  ("beaconName" .=) <$> _biBeaconName,
                  ("description" .=) <$> _biDescription,
                  ("advertisedId" .=) <$> _biAdvertisedId])

-- | Represents one beacon observed once.
--
-- /See:/ 'observation' smart constructor.
data Observation = Observation
    { _oTelemetry    :: !(Maybe Word8)
    , _oTimestampMs  :: !(Maybe Text)
    , _oAdvertisedId :: !(Maybe AdvertisedId)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Observation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oTelemetry'
--
-- * 'oTimestampMs'
--
-- * 'oAdvertisedId'
observation
    :: Observation
observation =
    Observation
    { _oTelemetry = Nothing
    , _oTimestampMs = Nothing
    , _oAdvertisedId = Nothing
    }

-- | The array of telemetry bytes received from the beacon. The server is
-- responsible for parsing it. This field may frequently be empty, as with
-- a beacon that transmits telemetry only occasionally.
oTelemetry :: Lens' Observation (Maybe Word8)
oTelemetry
  = lens _oTelemetry (\ s a -> s{_oTelemetry = a})

-- | Time when the beacon was observed. Being sourced from a mobile device,
-- this time may be suspect.
oTimestampMs :: Lens' Observation (Maybe Text)
oTimestampMs
  = lens _oTimestampMs (\ s a -> s{_oTimestampMs = a})

-- | The ID advertised by the beacon the client has encountered. Required.
oAdvertisedId :: Lens' Observation (Maybe AdvertisedId)
oAdvertisedId
  = lens _oAdvertisedId
      (\ s a -> s{_oAdvertisedId = a})

instance FromJSON Observation where
        parseJSON
          = withObject "Observation"
              (\ o ->
                 Observation <$>
                   (o .:? "telemetry") <*> (o .:? "timestampMs") <*>
                     (o .:? "advertisedId"))

instance ToJSON Observation where
        toJSON Observation{..}
          = object
              (catMaybes
                 [("telemetry" .=) <$> _oTelemetry,
                  ("timestampMs" .=) <$> _oTimestampMs,
                  ("advertisedId" .=) <$> _oAdvertisedId])

-- | Project-specific data associated with a beacon.
--
-- /See:/ 'beaconAttachment' smart constructor.
data BeaconAttachment = BeaconAttachment
    { _baData           :: !(Maybe Word8)
    , _baAttachmentName :: !(Maybe Text)
    , _baNamespacedType :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BeaconAttachment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'baData'
--
-- * 'baAttachmentName'
--
-- * 'baNamespacedType'
beaconAttachment
    :: BeaconAttachment
beaconAttachment =
    BeaconAttachment
    { _baData = Nothing
    , _baAttachmentName = Nothing
    , _baNamespacedType = Nothing
    }

-- | An opaque data container for client-provided data. Must be
-- [base64](http:\/\/tools.ietf.org\/html\/rfc4648#section-4) encoded in
-- HTTP requests, and will be so encoded (with padding) in responses.
-- Required.
baData :: Lens' BeaconAttachment (Maybe Word8)
baData = lens _baData (\ s a -> s{_baData = a})

-- | Resource name of this attachment. Attachment names have the format:
-- beacons\/beacon_id\/attachments\/attachment_id. Leave this empty on
-- creation.
baAttachmentName :: Lens' BeaconAttachment (Maybe Text)
baAttachmentName
  = lens _baAttachmentName
      (\ s a -> s{_baAttachmentName = a})

-- | Specifies what kind of attachment this is. Tells a client how to
-- interpret the \`data\` field. Format is namespace\/type. Namespace
-- provides type separation between clients. Type describes the type of
-- \`data\`, for use by the client when parsing the \`data\` field.
-- Required.
baNamespacedType :: Lens' BeaconAttachment (Maybe Text)
baNamespacedType
  = lens _baNamespacedType
      (\ s a -> s{_baNamespacedType = a})

instance FromJSON BeaconAttachment where
        parseJSON
          = withObject "BeaconAttachment"
              (\ o ->
                 BeaconAttachment <$>
                   (o .:? "data") <*> (o .:? "attachmentName") <*>
                     (o .:? "namespacedType"))

instance ToJSON BeaconAttachment where
        toJSON BeaconAttachment{..}
          = object
              (catMaybes
                 [("data" .=) <$> _baData,
                  ("attachmentName" .=) <$> _baAttachmentName,
                  ("namespacedType" .=) <$> _baNamespacedType])

-- | Response that contains the requested diagnostics.
--
-- /See:/ 'listDiagnosticsResponse' smart constructor.
data ListDiagnosticsResponse = ListDiagnosticsResponse
    { _ldrNextPageToken :: !(Maybe Text)
    , _ldrDiagnostics   :: !(Maybe [Diagnostics])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListDiagnosticsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldrNextPageToken'
--
-- * 'ldrDiagnostics'
listDiagnosticsResponse
    :: ListDiagnosticsResponse
listDiagnosticsResponse =
    ListDiagnosticsResponse
    { _ldrNextPageToken = Nothing
    , _ldrDiagnostics = Nothing
    }

-- | Token that can be used for pagination. Returned only if the request
-- matches more beacons than can be returned in this response.
ldrNextPageToken :: Lens' ListDiagnosticsResponse (Maybe Text)
ldrNextPageToken
  = lens _ldrNextPageToken
      (\ s a -> s{_ldrNextPageToken = a})

-- | The diagnostics matching the given request.
ldrDiagnostics :: Lens' ListDiagnosticsResponse [Diagnostics]
ldrDiagnostics
  = lens _ldrDiagnostics
      (\ s a -> s{_ldrDiagnostics = a})
      . _Default
      . _Coerce

instance FromJSON ListDiagnosticsResponse where
        parseJSON
          = withObject "ListDiagnosticsResponse"
              (\ o ->
                 ListDiagnosticsResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "diagnostics" .!= mempty))

instance ToJSON ListDiagnosticsResponse where
        toJSON ListDiagnosticsResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ldrNextPageToken,
                  ("diagnostics" .=) <$> _ldrDiagnostics])

-- | Defines a unique identifier of a beacon as broadcast by the device.
--
-- /See:/ 'advertisedId' smart constructor.
data AdvertisedId = AdvertisedId
    { _aiId   :: !(Maybe Word8)
    , _aiType :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertisedId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiId'
--
-- * 'aiType'
advertisedId
    :: AdvertisedId
advertisedId =
    AdvertisedId
    { _aiId = Nothing
    , _aiType = Nothing
    }

-- | The actual beacon identifier, as broadcast by the beacon hardware. Must
-- be [base64](http:\/\/tools.ietf.org\/html\/rfc4648#section-4) encoded in
-- HTTP requests, and will be so encoded (with padding) in responses. The
-- base64 encoding should be of the binary byte-stream and not any textual
-- (such as hex) representation thereof. Required.
aiId :: Lens' AdvertisedId (Maybe Word8)
aiId = lens _aiId (\ s a -> s{_aiId = a})

-- | Specifies the identifier type. Required.
aiType :: Lens' AdvertisedId (Maybe Text)
aiType = lens _aiType (\ s a -> s{_aiType = a})

instance FromJSON AdvertisedId where
        parseJSON
          = withObject "AdvertisedId"
              (\ o ->
                 AdvertisedId <$> (o .:? "id") <*> (o .:? "type"))

instance ToJSON AdvertisedId where
        toJSON AdvertisedId{..}
          = object
              (catMaybes
                 [("id" .=) <$> _aiId, ("type" .=) <$> _aiType])

-- | Response that contains list beacon results and pagination help.
--
-- /See:/ 'listBeaconsResponse' smart constructor.
data ListBeaconsResponse = ListBeaconsResponse
    { _lbrNextPageToken :: !(Maybe Text)
    , _lbrBeacons       :: !(Maybe [Beacon])
    , _lbrTotalCount    :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListBeaconsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbrNextPageToken'
--
-- * 'lbrBeacons'
--
-- * 'lbrTotalCount'
listBeaconsResponse
    :: ListBeaconsResponse
listBeaconsResponse =
    ListBeaconsResponse
    { _lbrNextPageToken = Nothing
    , _lbrBeacons = Nothing
    , _lbrTotalCount = Nothing
    }

-- | An opaque pagination token that the client may provide in their next
-- request to retrieve the next page of results.
lbrNextPageToken :: Lens' ListBeaconsResponse (Maybe Text)
lbrNextPageToken
  = lens _lbrNextPageToken
      (\ s a -> s{_lbrNextPageToken = a})

-- | The beacons that matched the search criteria.
lbrBeacons :: Lens' ListBeaconsResponse [Beacon]
lbrBeacons
  = lens _lbrBeacons (\ s a -> s{_lbrBeacons = a}) .
      _Default
      . _Coerce

-- | Estimate of the total number of beacons matched by the query. Higher
-- values may be less accurate.
lbrTotalCount :: Lens' ListBeaconsResponse (Maybe Int64)
lbrTotalCount
  = lens _lbrTotalCount
      (\ s a -> s{_lbrTotalCount = a})

instance FromJSON ListBeaconsResponse where
        parseJSON
          = withObject "ListBeaconsResponse"
              (\ o ->
                 ListBeaconsResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "beacons" .!= mempty)
                     <*> (o .:? "totalCount"))

instance ToJSON ListBeaconsResponse where
        toJSON ListBeaconsResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lbrNextPageToken,
                  ("beacons" .=) <$> _lbrBeacons,
                  ("totalCount" .=) <$> _lbrTotalCount])

-- | Information about the requested beacons, optionally including attachment
-- data.
--
-- /See:/ 'getInfoForObservedBeaconsResponse' smart constructor.
newtype GetInfoForObservedBeaconsResponse = GetInfoForObservedBeaconsResponse
    { _gifobrBeacons :: Maybe [BeaconInfo]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetInfoForObservedBeaconsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gifobrBeacons'
getInfoForObservedBeaconsResponse
    :: GetInfoForObservedBeaconsResponse
getInfoForObservedBeaconsResponse =
    GetInfoForObservedBeaconsResponse
    { _gifobrBeacons = Nothing
    }

-- | Public information about beacons. May be empty if the request matched no
-- beacons.
gifobrBeacons :: Lens' GetInfoForObservedBeaconsResponse [BeaconInfo]
gifobrBeacons
  = lens _gifobrBeacons
      (\ s a -> s{_gifobrBeacons = a})
      . _Default
      . _Coerce

instance FromJSON GetInfoForObservedBeaconsResponse
         where
        parseJSON
          = withObject "GetInfoForObservedBeaconsResponse"
              (\ o ->
                 GetInfoForObservedBeaconsResponse <$>
                   (o .:? "beacons" .!= mempty))

instance ToJSON GetInfoForObservedBeaconsResponse
         where
        toJSON GetInfoForObservedBeaconsResponse{..}
          = object
              (catMaybes [("beacons" .=) <$> _gifobrBeacons])
