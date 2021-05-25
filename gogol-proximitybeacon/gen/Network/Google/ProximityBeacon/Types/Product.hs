{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ProximityBeacon.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ProximityBeacon.Types.Product where

import Network.Google.Prelude
import Network.Google.ProximityBeacon.Types.Sum

-- | An object representing a latitude\/longitude pair. This is expressed as
-- a pair of doubles representing degrees latitude and degrees longitude.
-- Unless specified otherwise, this must conform to the
-- <http://www.unoosa.org/pdf/icg/2012/template/WGS_84.pdf WGS84 standard>.
-- Values must be within normalized ranges.
--
-- /See:/ 'latLng' smart constructor.
data LatLng =
  LatLng'
    { _llLatitude :: !(Maybe (Textual Double))
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

-- | A subset of attachment information served via the
-- \`beaconinfo.getforobserved\` method, used when your users encounter
-- your beacons.
--
-- /See:/ 'attachmentInfo' smart constructor.
data AttachmentInfo =
  AttachmentInfo'
    { _aiMaxDistanceMeters :: !(Maybe (Textual Double))
    , _aiData :: !(Maybe Bytes)
    , _aiNamespacedType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AttachmentInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiMaxDistanceMeters'
--
-- * 'aiData'
--
-- * 'aiNamespacedType'
attachmentInfo
    :: AttachmentInfo
attachmentInfo =
  AttachmentInfo'
    { _aiMaxDistanceMeters = Nothing
    , _aiData = Nothing
    , _aiNamespacedType = Nothing
    }


-- | The distance away from the beacon at which this attachment should be
-- delivered to a mobile app. Setting this to a value greater than zero
-- indicates that the app should behave as if the beacon is \"seen\" when
-- the mobile device is less than this distance away from the beacon.
-- Different attachments on the same beacon can have different max
-- distances. Note that even though this value is expressed with fractional
-- meter precision, real-world behavior is likley to be much less precise
-- than one meter, due to the nature of current Bluetooth radio technology.
-- Optional. When not set or zero, the attachment should be delivered at
-- the beacon\'s outer limit of detection.
aiMaxDistanceMeters :: Lens' AttachmentInfo (Maybe Double)
aiMaxDistanceMeters
  = lens _aiMaxDistanceMeters
      (\ s a -> s{_aiMaxDistanceMeters = a})
      . mapping _Coerce

-- | An opaque data container for client-provided data.
aiData :: Lens' AttachmentInfo (Maybe ByteString)
aiData
  = lens _aiData (\ s a -> s{_aiData = a}) .
      mapping _Bytes

-- | Specifies what kind of attachment this is. Tells a client how to
-- interpret the \`data\` field. Format is 'namespace\/type', for example
-- 'scrupulous-wombat-12345\/welcome-message'
aiNamespacedType :: Lens' AttachmentInfo (Maybe Text)
aiNamespacedType
  = lens _aiNamespacedType
      (\ s a -> s{_aiNamespacedType = a})

instance FromJSON AttachmentInfo where
        parseJSON
          = withObject "AttachmentInfo"
              (\ o ->
                 AttachmentInfo' <$>
                   (o .:? "maxDistanceMeters") <*> (o .:? "data") <*>
                     (o .:? "namespacedType"))

instance ToJSON AttachmentInfo where
        toJSON AttachmentInfo'{..}
          = object
              (catMaybes
                 [("maxDistanceMeters" .=) <$> _aiMaxDistanceMeters,
                  ("data" .=) <$> _aiData,
                  ("namespacedType" .=) <$> _aiNamespacedType])

-- | Properties of the beacon device, for example battery type or firmware
-- version. Optional.
--
-- /See:/ 'beaconProperties' smart constructor.
newtype BeaconProperties =
  BeaconProperties'
    { _bpAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BeaconProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bpAddtional'
beaconProperties
    :: HashMap Text Text -- ^ 'bpAddtional'
    -> BeaconProperties
beaconProperties pBpAddtional_ =
  BeaconProperties' {_bpAddtional = _Coerce # pBpAddtional_}


bpAddtional :: Lens' BeaconProperties (HashMap Text Text)
bpAddtional
  = lens _bpAddtional (\ s a -> s{_bpAddtional = a}) .
      _Coerce

instance FromJSON BeaconProperties where
        parseJSON
          = withObject "BeaconProperties"
              (\ o -> BeaconProperties' <$> (parseJSONObject o))

instance ToJSON BeaconProperties where
        toJSON = toJSON . _bpAddtional

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

-- | Response for a request to delete attachments.
--
-- /See:/ 'deleteAttachmentsResponse' smart constructor.
newtype DeleteAttachmentsResponse =
  DeleteAttachmentsResponse'
    { _darNumDeleted :: Maybe (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeleteAttachmentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'darNumDeleted'
deleteAttachmentsResponse
    :: DeleteAttachmentsResponse
deleteAttachmentsResponse =
  DeleteAttachmentsResponse' {_darNumDeleted = Nothing}


-- | The number of attachments that were deleted.
darNumDeleted :: Lens' DeleteAttachmentsResponse (Maybe Int32)
darNumDeleted
  = lens _darNumDeleted
      (\ s a -> s{_darNumDeleted = a})
      . mapping _Coerce

instance FromJSON DeleteAttachmentsResponse where
        parseJSON
          = withObject "DeleteAttachmentsResponse"
              (\ o ->
                 DeleteAttachmentsResponse' <$> (o .:? "numDeleted"))

instance ToJSON DeleteAttachmentsResponse where
        toJSON DeleteAttachmentsResponse'{..}
          = object
              (catMaybes [("numDeleted" .=) <$> _darNumDeleted])

-- | Request for beacon and attachment information about beacons that a
-- mobile client has encountered \"in the wild\".
--
-- /See:/ 'getInfoForObservedBeaconsRequest' smart constructor.
data GetInfoForObservedBeaconsRequest =
  GetInfoForObservedBeaconsRequest'
    { _gifobrObservations :: !(Maybe [Observation])
    , _gifobrNamespacedTypes :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  GetInfoForObservedBeaconsRequest'
    {_gifobrObservations = Nothing, _gifobrNamespacedTypes = Nothing}


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
-- 'namespace\/type'. Accepts \`*\` to specify all types in all namespaces
-- owned by the client. Optional.
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
                 GetInfoForObservedBeaconsRequest' <$>
                   (o .:? "observations" .!= mempty) <*>
                     (o .:? "namespacedTypes" .!= mempty))

instance ToJSON GetInfoForObservedBeaconsRequest
         where
        toJSON GetInfoForObservedBeaconsRequest'{..}
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
data Namespace =
  Namespace'
    { _nServingVisibility :: !(Maybe NamespaceServingVisibility)
    , _nNamespaceName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  Namespace' {_nServingVisibility = Nothing, _nNamespaceName = Nothing}


-- | Specifies what clients may receive attachments under this namespace via
-- \`beaconinfo.getforobserved\`.
nServingVisibility :: Lens' Namespace (Maybe NamespaceServingVisibility)
nServingVisibility
  = lens _nServingVisibility
      (\ s a -> s{_nServingVisibility = a})

-- | Resource name of this namespace. Namespaces names have the format:
-- 'namespaces\/namespace'.
nNamespaceName :: Lens' Namespace (Maybe Text)
nNamespaceName
  = lens _nNamespaceName
      (\ s a -> s{_nNamespaceName = a})

instance FromJSON Namespace where
        parseJSON
          = withObject "Namespace"
              (\ o ->
                 Namespace' <$>
                   (o .:? "servingVisibility") <*>
                     (o .:? "namespaceName"))

instance ToJSON Namespace where
        toJSON Namespace'{..}
          = object
              (catMaybes
                 [("servingVisibility" .=) <$> _nServingVisibility,
                  ("namespaceName" .=) <$> _nNamespaceName])

-- | Write-only registration parameters for beacons using Eddystone-EID
-- format. Two ways of securely registering an Eddystone-EID beacon with
-- the service are supported: 1. Perform an ECDH key exchange via this API,
-- including a previous call to \`GET \/v1beta1\/eidparams\`. In this case
-- the fields \`beacon_ecdh_public_key\` and \`service_ecdh_public_key\`
-- should be populated and \`beacon_identity_key\` should not be populated.
-- This method ensures that only the two parties in the ECDH key exchange
-- can compute the identity key, which becomes a secret between them. 2.
-- Derive or obtain the beacon\'s identity key via other secure means
-- (perhaps an ECDH key exchange between the beacon and a mobile device or
-- any other secure method), and then submit the resulting identity key to
-- the service. In this case \`beacon_identity_key\` field should be
-- populated, and neither of \`beacon_ecdh_public_key\` nor
-- \`service_ecdh_public_key\` fields should be. The security of this
-- method depends on how securely the parties involved (in particular the
-- bluetooth client) handle the identity key, and obviously on how securely
-- the identity key was generated. See [the Eddystone
-- specification](https:\/\/github.com\/google\/eddystone\/tree\/master\/eddystone-eid)
-- at GitHub.
--
-- /See:/ 'ephemeralIdRegistration' smart constructor.
data EphemeralIdRegistration =
  EphemeralIdRegistration'
    { _eirRotationPeriodExponent :: !(Maybe (Textual Word32))
    , _eirInitialClockValue :: !(Maybe (Textual Word64))
    , _eirBeaconIdentityKey :: !(Maybe Bytes)
    , _eirBeaconEcdhPublicKey :: !(Maybe Bytes)
    , _eirInitialEid :: !(Maybe Bytes)
    , _eirServiceEcdhPublicKey :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EphemeralIdRegistration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eirRotationPeriodExponent'
--
-- * 'eirInitialClockValue'
--
-- * 'eirBeaconIdentityKey'
--
-- * 'eirBeaconEcdhPublicKey'
--
-- * 'eirInitialEid'
--
-- * 'eirServiceEcdhPublicKey'
ephemeralIdRegistration
    :: EphemeralIdRegistration
ephemeralIdRegistration =
  EphemeralIdRegistration'
    { _eirRotationPeriodExponent = Nothing
    , _eirInitialClockValue = Nothing
    , _eirBeaconIdentityKey = Nothing
    , _eirBeaconEcdhPublicKey = Nothing
    , _eirInitialEid = Nothing
    , _eirServiceEcdhPublicKey = Nothing
    }


-- | Indicates the nominal period between each rotation of the beacon\'s
-- ephemeral ID. \"Nominal\" because the beacon should randomize the actual
-- interval. See [the spec at
-- github](https:\/\/github.com\/google\/eddystone\/tree\/master\/eddystone-eid)
-- for details. This value corresponds to a power-of-two scaler on the
-- beacon\'s clock: when the scaler value is K, the beacon will begin
-- broadcasting a new ephemeral ID on average every 2^K seconds.
eirRotationPeriodExponent :: Lens' EphemeralIdRegistration (Maybe Word32)
eirRotationPeriodExponent
  = lens _eirRotationPeriodExponent
      (\ s a -> s{_eirRotationPeriodExponent = a})
      . mapping _Coerce

-- | The initial clock value of the beacon. The beacon\'s clock must have
-- begun counting at this value immediately prior to transmitting this
-- value to the resolving service. Significant delay in transmitting this
-- value to the service risks registration or resolution failures. If a
-- value is not provided, the default is zero.
eirInitialClockValue :: Lens' EphemeralIdRegistration (Maybe Word64)
eirInitialClockValue
  = lens _eirInitialClockValue
      (\ s a -> s{_eirInitialClockValue = a})
      . mapping _Coerce

-- | The private key of the beacon. If this field is populated,
-- \`beacon_ecdh_public_key\` and \`service_ecdh_public_key\` must not be
-- populated.
eirBeaconIdentityKey :: Lens' EphemeralIdRegistration (Maybe ByteString)
eirBeaconIdentityKey
  = lens _eirBeaconIdentityKey
      (\ s a -> s{_eirBeaconIdentityKey = a})
      . mapping _Bytes

-- | The beacon\'s public key used for the Elliptic curve Diffie-Hellman key
-- exchange. When this field is populated, \`service_ecdh_public_key\` must
-- also be populated, and \`beacon_identity_key\` must not be.
eirBeaconEcdhPublicKey :: Lens' EphemeralIdRegistration (Maybe ByteString)
eirBeaconEcdhPublicKey
  = lens _eirBeaconEcdhPublicKey
      (\ s a -> s{_eirBeaconEcdhPublicKey = a})
      . mapping _Bytes

-- | An initial ephemeral ID calculated using the clock value submitted as
-- \`initial_clock_value\`, and the secret key generated by the
-- Diffie-Hellman key exchange using \`service_ecdh_public_key\` and
-- \`service_ecdh_public_key\`. This initial EID value will be used by the
-- service to confirm that the key exchange process was successful.
eirInitialEid :: Lens' EphemeralIdRegistration (Maybe ByteString)
eirInitialEid
  = lens _eirInitialEid
      (\ s a -> s{_eirInitialEid = a})
      . mapping _Bytes

-- | The service\'s public key used for the Elliptic curve Diffie-Hellman key
-- exchange. When this field is populated, \`beacon_ecdh_public_key\` must
-- also be populated, and \`beacon_identity_key\` must not be.
eirServiceEcdhPublicKey :: Lens' EphemeralIdRegistration (Maybe ByteString)
eirServiceEcdhPublicKey
  = lens _eirServiceEcdhPublicKey
      (\ s a -> s{_eirServiceEcdhPublicKey = a})
      . mapping _Bytes

instance FromJSON EphemeralIdRegistration where
        parseJSON
          = withObject "EphemeralIdRegistration"
              (\ o ->
                 EphemeralIdRegistration' <$>
                   (o .:? "rotationPeriodExponent") <*>
                     (o .:? "initialClockValue")
                     <*> (o .:? "beaconIdentityKey")
                     <*> (o .:? "beaconEcdhPublicKey")
                     <*> (o .:? "initialEid")
                     <*> (o .:? "serviceEcdhPublicKey"))

instance ToJSON EphemeralIdRegistration where
        toJSON EphemeralIdRegistration'{..}
          = object
              (catMaybes
                 [("rotationPeriodExponent" .=) <$>
                    _eirRotationPeriodExponent,
                  ("initialClockValue" .=) <$> _eirInitialClockValue,
                  ("beaconIdentityKey" .=) <$> _eirBeaconIdentityKey,
                  ("beaconEcdhPublicKey" .=) <$>
                    _eirBeaconEcdhPublicKey,
                  ("initialEid" .=) <$> _eirInitialEid,
                  ("serviceEcdhPublicKey" .=) <$>
                    _eirServiceEcdhPublicKey])

-- | Response to ListNamespacesRequest that contains all the project\'s
-- namespaces.
--
-- /See:/ 'listNamespacesResponse' smart constructor.
newtype ListNamespacesResponse =
  ListNamespacesResponse'
    { _lnrNamespaces :: Maybe [Namespace]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListNamespacesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lnrNamespaces'
listNamespacesResponse
    :: ListNamespacesResponse
listNamespacesResponse = ListNamespacesResponse' {_lnrNamespaces = Nothing}


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
                 ListNamespacesResponse' <$>
                   (o .:? "namespaces" .!= mempty))

instance ToJSON ListNamespacesResponse where
        toJSON ListNamespacesResponse'{..}
          = object
              (catMaybes [("namespaces" .=) <$> _lnrNamespaces])

-- | Represents a whole or partial calendar date, e.g. a birthday. The time
-- of day and time zone are either specified elsewhere or are not
-- significant. The date is relative to the Proleptic Gregorian Calendar.
-- This can represent: * A full date, with non-zero year, month and day
-- values * A month and day value, with a zero year, e.g. an anniversary *
-- A year on its own, with zero month and day values * A year and month
-- value, with a zero day, e.g. a credit card expiration date Related types
-- are google.type.TimeOfDay and \`google.protobuf.Timestamp\`.
--
-- /See:/ 'date' smart constructor.
data Date =
  Date'
    { _dDay :: !(Maybe (Textual Int32))
    , _dYear :: !(Maybe (Textual Int32))
    , _dMonth :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
date = Date' {_dDay = Nothing, _dYear = Nothing, _dMonth = Nothing}


-- | Day of month. Must be from 1 to 31 and valid for the year and month, or
-- 0 if specifying a year by itself or a year and month where the day is
-- not significant.
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

-- | Month of year. Must be from 1 to 12, or 0 if specifying a year without a
-- month and day.
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

-- | Details of a beacon device.
--
-- /See:/ 'beacon' smart constructor.
data Beacon =
  Beacon'
    { _beaLatLng :: !(Maybe LatLng)
    , _beaStatus :: !(Maybe BeaconStatus)
    , _beaBeaconName :: !(Maybe Text)
    , _beaEphemeralIdRegistration :: !(Maybe EphemeralIdRegistration)
    , _beaIndoorLevel :: !(Maybe IndoorLevel)
    , _beaExpectedStability :: !(Maybe BeaconExpectedStability)
    , _beaProvisioningKey :: !(Maybe Bytes)
    , _beaDescription :: !(Maybe Text)
    , _beaPlaceId :: !(Maybe Text)
    , _beaAdvertisedId :: !(Maybe AdvertisedId)
    , _beaProperties :: !(Maybe BeaconProperties)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Beacon' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'beaLatLng'
--
-- * 'beaStatus'
--
-- * 'beaBeaconName'
--
-- * 'beaEphemeralIdRegistration'
--
-- * 'beaIndoorLevel'
--
-- * 'beaExpectedStability'
--
-- * 'beaProvisioningKey'
--
-- * 'beaDescription'
--
-- * 'beaPlaceId'
--
-- * 'beaAdvertisedId'
--
-- * 'beaProperties'
beacon
    :: Beacon
beacon =
  Beacon'
    { _beaLatLng = Nothing
    , _beaStatus = Nothing
    , _beaBeaconName = Nothing
    , _beaEphemeralIdRegistration = Nothing
    , _beaIndoorLevel = Nothing
    , _beaExpectedStability = Nothing
    , _beaProvisioningKey = Nothing
    , _beaDescription = Nothing
    , _beaPlaceId = Nothing
    , _beaAdvertisedId = Nothing
    , _beaProperties = Nothing
    }


-- | The location of the beacon, expressed as a latitude and longitude pair.
-- This location is given when the beacon is registered or updated. It does
-- not necessarily indicate the actual current location of the beacon.
-- Optional.
beaLatLng :: Lens' Beacon (Maybe LatLng)
beaLatLng
  = lens _beaLatLng (\ s a -> s{_beaLatLng = a})

-- | Current status of the beacon. Required.
beaStatus :: Lens' Beacon (Maybe BeaconStatus)
beaStatus
  = lens _beaStatus (\ s a -> s{_beaStatus = a})

-- | Resource name of this beacon. A beacon name has the format
-- \"beacons\/N!beaconId\" where the beaconId is the base16 ID broadcast by
-- the beacon and N is a code for the beacon\'s type. Possible values are
-- \`3\` for Eddystone, \`1\` for iBeacon, or \`5\` for AltBeacon. This
-- field must be left empty when registering. After reading a beacon,
-- clients can use the name for future operations.
beaBeaconName :: Lens' Beacon (Maybe Text)
beaBeaconName
  = lens _beaBeaconName
      (\ s a -> s{_beaBeaconName = a})

-- | Write-only registration parameters for beacons using Eddystone-EID
-- (remotely resolved ephemeral ID) format. This information will not be
-- populated in API responses. When submitting this data, the
-- \`advertised_id\` field must contain an ID of type Eddystone-UID. Any
-- other ID type will result in an error.
beaEphemeralIdRegistration :: Lens' Beacon (Maybe EphemeralIdRegistration)
beaEphemeralIdRegistration
  = lens _beaEphemeralIdRegistration
      (\ s a -> s{_beaEphemeralIdRegistration = a})

-- | The indoor level information for this beacon, if known. As returned by
-- the Google Maps API. Optional.
beaIndoorLevel :: Lens' Beacon (Maybe IndoorLevel)
beaIndoorLevel
  = lens _beaIndoorLevel
      (\ s a -> s{_beaIndoorLevel = a})

-- | Expected location stability. This is set when the beacon is registered
-- or updated, not automatically detected in any way. Optional.
beaExpectedStability :: Lens' Beacon (Maybe BeaconExpectedStability)
beaExpectedStability
  = lens _beaExpectedStability
      (\ s a -> s{_beaExpectedStability = a})

-- | Some beacons may require a user to provide an authorization key before
-- changing any of its configuration (e.g. broadcast frames, transmit
-- power). This field provides a place to store and control access to that
-- key. This field is populated in responses to \`GET
-- \/v1beta1\/beacons\/3!beaconId\` from users with write access to the
-- given beacon. That is to say: If the user is authorized to write the
-- beacon\'s confidential data in the service, the service considers them
-- authorized to configure the beacon. Note that this key grants nothing on
-- the service, only on the beacon itself.
beaProvisioningKey :: Lens' Beacon (Maybe ByteString)
beaProvisioningKey
  = lens _beaProvisioningKey
      (\ s a -> s{_beaProvisioningKey = a})
      . mapping _Bytes

-- | Free text used to identify and describe the beacon. Maximum length 140
-- characters. Optional.
beaDescription :: Lens' Beacon (Maybe Text)
beaDescription
  = lens _beaDescription
      (\ s a -> s{_beaDescription = a})

-- | The [Google Places API](\/places\/place-id) Place ID of the place where
-- the beacon is deployed. This is given when the beacon is registered or
-- updated, not automatically detected in any way. Optional.
beaPlaceId :: Lens' Beacon (Maybe Text)
beaPlaceId
  = lens _beaPlaceId (\ s a -> s{_beaPlaceId = a})

-- | The identifier of a beacon as advertised by it. This field must be
-- populated when registering. It may be empty when updating a beacon
-- record because it is ignored in updates. When registering a beacon that
-- broadcasts Eddystone-EID, this field should contain a \"stable\"
-- Eddystone-UID that identifies the beacon and links it to its
-- attachments. The stable Eddystone-UID is only used for administering the
-- beacon.
beaAdvertisedId :: Lens' Beacon (Maybe AdvertisedId)
beaAdvertisedId
  = lens _beaAdvertisedId
      (\ s a -> s{_beaAdvertisedId = a})

-- | Properties of the beacon device, for example battery type or firmware
-- version. Optional.
beaProperties :: Lens' Beacon (Maybe BeaconProperties)
beaProperties
  = lens _beaProperties
      (\ s a -> s{_beaProperties = a})

instance FromJSON Beacon where
        parseJSON
          = withObject "Beacon"
              (\ o ->
                 Beacon' <$>
                   (o .:? "latLng") <*> (o .:? "status") <*>
                     (o .:? "beaconName")
                     <*> (o .:? "ephemeralIdRegistration")
                     <*> (o .:? "indoorLevel")
                     <*> (o .:? "expectedStability")
                     <*> (o .:? "provisioningKey")
                     <*> (o .:? "description")
                     <*> (o .:? "placeId")
                     <*> (o .:? "advertisedId")
                     <*> (o .:? "properties"))

instance ToJSON Beacon where
        toJSON Beacon'{..}
          = object
              (catMaybes
                 [("latLng" .=) <$> _beaLatLng,
                  ("status" .=) <$> _beaStatus,
                  ("beaconName" .=) <$> _beaBeaconName,
                  ("ephemeralIdRegistration" .=) <$>
                    _beaEphemeralIdRegistration,
                  ("indoorLevel" .=) <$> _beaIndoorLevel,
                  ("expectedStability" .=) <$> _beaExpectedStability,
                  ("provisioningKey" .=) <$> _beaProvisioningKey,
                  ("description" .=) <$> _beaDescription,
                  ("placeId" .=) <$> _beaPlaceId,
                  ("advertisedId" .=) <$> _beaAdvertisedId,
                  ("properties" .=) <$> _beaProperties])

-- | Diagnostics for a single beacon.
--
-- /See:/ 'diagnostics' smart constructor.
data Diagnostics =
  Diagnostics'
    { _dAlerts :: !(Maybe [Text])
    , _dBeaconName :: !(Maybe Text)
    , _dEstimatedLowBatteryDate :: !(Maybe Date)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  Diagnostics'
    { _dAlerts = Nothing
    , _dBeaconName = Nothing
    , _dEstimatedLowBatteryDate = Nothing
    }


-- | An unordered list of Alerts that the beacon has.
dAlerts :: Lens' Diagnostics [Text]
dAlerts
  = lens _dAlerts (\ s a -> s{_dAlerts = a}) . _Default
      . _Coerce

-- | Resource name of the beacon. For Eddystone-EID beacons, this may be the
-- beacon\'s current EID, or the beacon\'s \"stable\" Eddystone-UID.
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
                 Diagnostics' <$>
                   (o .:? "alerts" .!= mempty) <*> (o .:? "beaconName")
                     <*> (o .:? "estimatedLowBatteryDate"))

instance ToJSON Diagnostics where
        toJSON Diagnostics'{..}
          = object
              (catMaybes
                 [("alerts" .=) <$> _dAlerts,
                  ("beaconName" .=) <$> _dBeaconName,
                  ("estimatedLowBatteryDate" .=) <$>
                    _dEstimatedLowBatteryDate])

-- | Response to \`ListBeaconAttachments\` that contains the requested
-- attachments.
--
-- /See:/ 'listBeaconAttachmentsResponse' smart constructor.
newtype ListBeaconAttachmentsResponse =
  ListBeaconAttachmentsResponse'
    { _lbarAttachments :: Maybe [BeaconAttachment]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListBeaconAttachmentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbarAttachments'
listBeaconAttachmentsResponse
    :: ListBeaconAttachmentsResponse
listBeaconAttachmentsResponse =
  ListBeaconAttachmentsResponse' {_lbarAttachments = Nothing}


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
                 ListBeaconAttachmentsResponse' <$>
                   (o .:? "attachments" .!= mempty))

instance ToJSON ListBeaconAttachmentsResponse where
        toJSON ListBeaconAttachmentsResponse'{..}
          = object
              (catMaybes [("attachments" .=) <$> _lbarAttachments])

-- | Indoor level, a human-readable string as returned by Google Maps APIs,
-- useful to indicate which floor of a building a beacon is located on.
--
-- /See:/ 'indoorLevel' smart constructor.
newtype IndoorLevel =
  IndoorLevel'
    { _ilName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IndoorLevel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilName'
indoorLevel
    :: IndoorLevel
indoorLevel = IndoorLevel' {_ilName = Nothing}


-- | The name of this level.
ilName :: Lens' IndoorLevel (Maybe Text)
ilName = lens _ilName (\ s a -> s{_ilName = a})

instance FromJSON IndoorLevel where
        parseJSON
          = withObject "IndoorLevel"
              (\ o -> IndoorLevel' <$> (o .:? "name"))

instance ToJSON IndoorLevel where
        toJSON IndoorLevel'{..}
          = object (catMaybes [("name" .=) <$> _ilName])

-- | Information a client needs to provision and register beacons that
-- broadcast Eddystone-EID format beacon IDs, using Elliptic curve
-- Diffie-Hellman key exchange. See [the Eddystone
-- specification](https:\/\/github.com\/google\/eddystone\/tree\/master\/eddystone-eid)
-- at GitHub.
--
-- /See:/ 'ephemeralIdRegistrationParams' smart constructor.
data EphemeralIdRegistrationParams =
  EphemeralIdRegistrationParams'
    { _eirpMinRotationPeriodExponent :: !(Maybe (Textual Word32))
    , _eirpMaxRotationPeriodExponent :: !(Maybe (Textual Word32))
    , _eirpServiceEcdhPublicKey :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EphemeralIdRegistrationParams' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eirpMinRotationPeriodExponent'
--
-- * 'eirpMaxRotationPeriodExponent'
--
-- * 'eirpServiceEcdhPublicKey'
ephemeralIdRegistrationParams
    :: EphemeralIdRegistrationParams
ephemeralIdRegistrationParams =
  EphemeralIdRegistrationParams'
    { _eirpMinRotationPeriodExponent = Nothing
    , _eirpMaxRotationPeriodExponent = Nothing
    , _eirpServiceEcdhPublicKey = Nothing
    }


-- | Indicates the minimum rotation period supported by the service. See
-- EddystoneEidRegistration.rotation_period_exponent
eirpMinRotationPeriodExponent :: Lens' EphemeralIdRegistrationParams (Maybe Word32)
eirpMinRotationPeriodExponent
  = lens _eirpMinRotationPeriodExponent
      (\ s a -> s{_eirpMinRotationPeriodExponent = a})
      . mapping _Coerce

-- | Indicates the maximum rotation period supported by the service. See
-- EddystoneEidRegistration.rotation_period_exponent
eirpMaxRotationPeriodExponent :: Lens' EphemeralIdRegistrationParams (Maybe Word32)
eirpMaxRotationPeriodExponent
  = lens _eirpMaxRotationPeriodExponent
      (\ s a -> s{_eirpMaxRotationPeriodExponent = a})
      . mapping _Coerce

-- | The beacon service\'s public key for use by a beacon to derive its
-- Identity Key using Elliptic Curve Diffie-Hellman key exchange.
eirpServiceEcdhPublicKey :: Lens' EphemeralIdRegistrationParams (Maybe ByteString)
eirpServiceEcdhPublicKey
  = lens _eirpServiceEcdhPublicKey
      (\ s a -> s{_eirpServiceEcdhPublicKey = a})
      . mapping _Bytes

instance FromJSON EphemeralIdRegistrationParams where
        parseJSON
          = withObject "EphemeralIdRegistrationParams"
              (\ o ->
                 EphemeralIdRegistrationParams' <$>
                   (o .:? "minRotationPeriodExponent") <*>
                     (o .:? "maxRotationPeriodExponent")
                     <*> (o .:? "serviceEcdhPublicKey"))

instance ToJSON EphemeralIdRegistrationParams where
        toJSON EphemeralIdRegistrationParams'{..}
          = object
              (catMaybes
                 [("minRotationPeriodExponent" .=) <$>
                    _eirpMinRotationPeriodExponent,
                  ("maxRotationPeriodExponent" .=) <$>
                    _eirpMaxRotationPeriodExponent,
                  ("serviceEcdhPublicKey" .=) <$>
                    _eirpServiceEcdhPublicKey])

-- | A subset of beacon information served via the
-- \`beaconinfo.getforobserved\` method, which you call when users of your
-- app encounter your beacons.
--
-- /See:/ 'beaconInfo' smart constructor.
data BeaconInfo =
  BeaconInfo'
    { _biAttachments :: !(Maybe [AttachmentInfo])
    , _biBeaconName :: !(Maybe Text)
    , _biAdvertisedId :: !(Maybe AdvertisedId)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BeaconInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'biAttachments'
--
-- * 'biBeaconName'
--
-- * 'biAdvertisedId'
beaconInfo
    :: BeaconInfo
beaconInfo =
  BeaconInfo'
    { _biAttachments = Nothing
    , _biBeaconName = Nothing
    , _biAdvertisedId = Nothing
    }


-- | Attachments matching the type(s) requested. May be empty if no
-- attachment types were requested.
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

-- | The ID advertised by the beacon.
biAdvertisedId :: Lens' BeaconInfo (Maybe AdvertisedId)
biAdvertisedId
  = lens _biAdvertisedId
      (\ s a -> s{_biAdvertisedId = a})

instance FromJSON BeaconInfo where
        parseJSON
          = withObject "BeaconInfo"
              (\ o ->
                 BeaconInfo' <$>
                   (o .:? "attachments" .!= mempty) <*>
                     (o .:? "beaconName")
                     <*> (o .:? "advertisedId"))

instance ToJSON BeaconInfo where
        toJSON BeaconInfo'{..}
          = object
              (catMaybes
                 [("attachments" .=) <$> _biAttachments,
                  ("beaconName" .=) <$> _biBeaconName,
                  ("advertisedId" .=) <$> _biAdvertisedId])

-- | Represents one beacon observed once.
--
-- /See:/ 'observation' smart constructor.
data Observation =
  Observation'
    { _oTelemetry :: !(Maybe Bytes)
    , _oTimestampMs :: !(Maybe DateTime')
    , _oAdvertisedId :: !(Maybe AdvertisedId)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  Observation'
    {_oTelemetry = Nothing, _oTimestampMs = Nothing, _oAdvertisedId = Nothing}


-- | The array of telemetry bytes received from the beacon. The server is
-- responsible for parsing it. This field may frequently be empty, as with
-- a beacon that transmits telemetry only occasionally.
oTelemetry :: Lens' Observation (Maybe ByteString)
oTelemetry
  = lens _oTelemetry (\ s a -> s{_oTelemetry = a}) .
      mapping _Bytes

-- | Time when the beacon was observed.
oTimestampMs :: Lens' Observation (Maybe UTCTime)
oTimestampMs
  = lens _oTimestampMs (\ s a -> s{_oTimestampMs = a})
      . mapping _DateTime

-- | The ID advertised by the beacon the client has encountered. If the
-- submitted \`advertised_id\` type is Eddystone-EID, then the client must
-- be authorized to resolve the given beacon. Otherwise no data will be
-- returned for that beacon. Required.
oAdvertisedId :: Lens' Observation (Maybe AdvertisedId)
oAdvertisedId
  = lens _oAdvertisedId
      (\ s a -> s{_oAdvertisedId = a})

instance FromJSON Observation where
        parseJSON
          = withObject "Observation"
              (\ o ->
                 Observation' <$>
                   (o .:? "telemetry") <*> (o .:? "timestampMs") <*>
                     (o .:? "advertisedId"))

instance ToJSON Observation where
        toJSON Observation'{..}
          = object
              (catMaybes
                 [("telemetry" .=) <$> _oTelemetry,
                  ("timestampMs" .=) <$> _oTimestampMs,
                  ("advertisedId" .=) <$> _oAdvertisedId])

-- | Project-specific data associated with a beacon.
--
-- /See:/ 'beaconAttachment' smart constructor.
data BeaconAttachment =
  BeaconAttachment'
    { _baMaxDistanceMeters :: !(Maybe (Textual Double))
    , _baCreationTimeMs :: !(Maybe DateTime')
    , _baData :: !(Maybe Bytes)
    , _baAttachmentName :: !(Maybe Text)
    , _baNamespacedType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BeaconAttachment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'baMaxDistanceMeters'
--
-- * 'baCreationTimeMs'
--
-- * 'baData'
--
-- * 'baAttachmentName'
--
-- * 'baNamespacedType'
beaconAttachment
    :: BeaconAttachment
beaconAttachment =
  BeaconAttachment'
    { _baMaxDistanceMeters = Nothing
    , _baCreationTimeMs = Nothing
    , _baData = Nothing
    , _baAttachmentName = Nothing
    , _baNamespacedType = Nothing
    }


-- | The distance away from the beacon at which this attachment should be
-- delivered to a mobile app. Setting this to a value greater than zero
-- indicates that the app should behave as if the beacon is \"seen\" when
-- the mobile device is less than this distance away from the beacon.
-- Different attachments on the same beacon can have different max
-- distances. Note that even though this value is expressed with fractional
-- meter precision, real-world behavior is likley to be much less precise
-- than one meter, due to the nature of current Bluetooth radio technology.
-- Optional. When not set or zero, the attachment should be delivered at
-- the beacon\'s outer limit of detection. Negative values are invalid and
-- return an error.
baMaxDistanceMeters :: Lens' BeaconAttachment (Maybe Double)
baMaxDistanceMeters
  = lens _baMaxDistanceMeters
      (\ s a -> s{_baMaxDistanceMeters = a})
      . mapping _Coerce

-- | The UTC time when this attachment was created, in milliseconds since the
-- UNIX epoch.
baCreationTimeMs :: Lens' BeaconAttachment (Maybe UTCTime)
baCreationTimeMs
  = lens _baCreationTimeMs
      (\ s a -> s{_baCreationTimeMs = a})
      . mapping _DateTime

-- | An opaque data container for client-provided data. Must be
-- [base64](http:\/\/tools.ietf.org\/html\/rfc4648#section-4) encoded in
-- HTTP requests, and will be so encoded (with padding) in responses.
-- Required.
baData :: Lens' BeaconAttachment (Maybe ByteString)
baData
  = lens _baData (\ s a -> s{_baData = a}) .
      mapping _Bytes

-- | Resource name of this attachment. Attachment names have the format:
-- 'beacons\/beacon_id\/attachments\/attachment_id'. Leave this empty on
-- creation.
baAttachmentName :: Lens' BeaconAttachment (Maybe Text)
baAttachmentName
  = lens _baAttachmentName
      (\ s a -> s{_baAttachmentName = a})

-- | Specifies what kind of attachment this is. Tells a client how to
-- interpret the \`data\` field. Format is 'namespace\/type'. Namespace
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
                 BeaconAttachment' <$>
                   (o .:? "maxDistanceMeters") <*>
                     (o .:? "creationTimeMs")
                     <*> (o .:? "data")
                     <*> (o .:? "attachmentName")
                     <*> (o .:? "namespacedType"))

instance ToJSON BeaconAttachment where
        toJSON BeaconAttachment'{..}
          = object
              (catMaybes
                 [("maxDistanceMeters" .=) <$> _baMaxDistanceMeters,
                  ("creationTimeMs" .=) <$> _baCreationTimeMs,
                  ("data" .=) <$> _baData,
                  ("attachmentName" .=) <$> _baAttachmentName,
                  ("namespacedType" .=) <$> _baNamespacedType])

-- | Response that contains the requested diagnostics.
--
-- /See:/ 'listDiagnosticsResponse' smart constructor.
data ListDiagnosticsResponse =
  ListDiagnosticsResponse'
    { _ldrNextPageToken :: !(Maybe Text)
    , _ldrDiagnostics :: !(Maybe [Diagnostics])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  ListDiagnosticsResponse'
    {_ldrNextPageToken = Nothing, _ldrDiagnostics = Nothing}


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
                 ListDiagnosticsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "diagnostics" .!= mempty))

instance ToJSON ListDiagnosticsResponse where
        toJSON ListDiagnosticsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ldrNextPageToken,
                  ("diagnostics" .=) <$> _ldrDiagnostics])

-- | Defines a unique identifier of a beacon as broadcast by the device.
--
-- /See:/ 'advertisedId' smart constructor.
data AdvertisedId =
  AdvertisedId'
    { _aiId :: !(Maybe Bytes)
    , _aiType :: !(Maybe AdvertisedIdType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AdvertisedId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiId'
--
-- * 'aiType'
advertisedId
    :: AdvertisedId
advertisedId = AdvertisedId' {_aiId = Nothing, _aiType = Nothing}


-- | The actual beacon identifier, as broadcast by the beacon hardware. Must
-- be [base64](http:\/\/tools.ietf.org\/html\/rfc4648#section-4) encoded in
-- HTTP requests, and will be so encoded (with padding) in responses. The
-- base64 encoding should be of the binary byte-stream and not any textual
-- (such as hex) representation thereof. Required.
aiId :: Lens' AdvertisedId (Maybe ByteString)
aiId
  = lens _aiId (\ s a -> s{_aiId = a}) . mapping _Bytes

-- | Specifies the identifier type. Required.
aiType :: Lens' AdvertisedId (Maybe AdvertisedIdType)
aiType = lens _aiType (\ s a -> s{_aiType = a})

instance FromJSON AdvertisedId where
        parseJSON
          = withObject "AdvertisedId"
              (\ o ->
                 AdvertisedId' <$> (o .:? "id") <*> (o .:? "type"))

instance ToJSON AdvertisedId where
        toJSON AdvertisedId'{..}
          = object
              (catMaybes
                 [("id" .=) <$> _aiId, ("type" .=) <$> _aiType])

-- | Response that contains list beacon results and pagination help.
--
-- /See:/ 'listBeaconsResponse' smart constructor.
data ListBeaconsResponse =
  ListBeaconsResponse'
    { _lbrNextPageToken :: !(Maybe Text)
    , _lbrBeacons :: !(Maybe [Beacon])
    , _lbrTotalCount :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  ListBeaconsResponse'
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
      . mapping _Coerce

instance FromJSON ListBeaconsResponse where
        parseJSON
          = withObject "ListBeaconsResponse"
              (\ o ->
                 ListBeaconsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "beacons" .!= mempty)
                     <*> (o .:? "totalCount"))

instance ToJSON ListBeaconsResponse where
        toJSON ListBeaconsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lbrNextPageToken,
                  ("beacons" .=) <$> _lbrBeacons,
                  ("totalCount" .=) <$> _lbrTotalCount])

-- | Information about the requested beacons, optionally including attachment
-- data.
--
-- /See:/ 'getInfoForObservedBeaconsResponse' smart constructor.
newtype GetInfoForObservedBeaconsResponse =
  GetInfoForObservedBeaconsResponse'
    { _gifobrBeacons :: Maybe [BeaconInfo]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetInfoForObservedBeaconsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gifobrBeacons'
getInfoForObservedBeaconsResponse
    :: GetInfoForObservedBeaconsResponse
getInfoForObservedBeaconsResponse =
  GetInfoForObservedBeaconsResponse' {_gifobrBeacons = Nothing}


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
                 GetInfoForObservedBeaconsResponse' <$>
                   (o .:? "beacons" .!= mempty))

instance ToJSON GetInfoForObservedBeaconsResponse
         where
        toJSON GetInfoForObservedBeaconsResponse'{..}
          = object
              (catMaybes [("beacons" .=) <$> _gifobrBeacons])
