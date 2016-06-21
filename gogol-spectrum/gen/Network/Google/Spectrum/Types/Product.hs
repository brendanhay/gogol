{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Spectrum.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Spectrum.Types.Product where

import           Network.Google.Prelude
import           Network.Google.Spectrum.Types.Sum

-- | A region is represented using the polygonal shape.
--
-- /See:/ 'geoLocationPolygon' smart constructor.
newtype GeoLocationPolygon = GeoLocationPolygon'
    { _glpExterior :: Maybe [GeoLocationPoint]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeoLocationPolygon' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glpExterior'
geoLocationPolygon
    :: GeoLocationPolygon
geoLocationPolygon =
    GeoLocationPolygon'
    { _glpExterior = Nothing
    }

-- | When the geolocation describes a region, the exterior field refers to a
-- list of latitude\/longitude points that represent the vertices of a
-- polygon. The first and last points must be the same. Thus, a minimum of
-- four points is required. The following polygon restrictions from RFC5491
-- apply: - A connecting line shall not cross another connecting line of
-- the same polygon. - The vertices must be defined in a counterclockwise
-- order. - The edges of a polygon are defined by the shortest path between
-- two points in space (not a geodesic curve). Consequently, the length
-- between two adjacent vertices should be restricted to a maximum of 130
-- km. - All vertices are assumed to be at the same altitude. - Polygon
-- shapes should be restricted to a maximum of 15 vertices (16 points that
-- include the repeated vertex).
glpExterior :: Lens' GeoLocationPolygon [GeoLocationPoint]
glpExterior
  = lens _glpExterior (\ s a -> s{_glpExterior = a}) .
      _Default
      . _Coerce

instance FromJSON GeoLocationPolygon where
        parseJSON
          = withObject "GeoLocationPolygon"
              (\ o ->
                 GeoLocationPolygon' <$>
                   (o .:? "exterior" .!= mempty))

instance ToJSON GeoLocationPolygon where
        toJSON GeoLocationPolygon'{..}
          = object
              (catMaybes [("exterior" .=) <$> _glpExterior])

-- | A single geolocation on the globe.
--
-- /See:/ 'geoLocationPoint' smart constructor.
data GeoLocationPoint = GeoLocationPoint'
    { _glpLatitude  :: !(Maybe (Textual Double))
    , _glpLongitude :: !(Maybe (Textual Double))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeoLocationPoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glpLatitude'
--
-- * 'glpLongitude'
geoLocationPoint
    :: GeoLocationPoint
geoLocationPoint =
    GeoLocationPoint'
    { _glpLatitude = Nothing
    , _glpLongitude = Nothing
    }

-- | A required floating-point number that expresses the latitude in degrees
-- using the WGS84 datum. For details on this encoding, see the National
-- Imagery and Mapping Agency\'s Technical Report TR8350.2.
glpLatitude :: Lens' GeoLocationPoint (Maybe Double)
glpLatitude
  = lens _glpLatitude (\ s a -> s{_glpLatitude = a}) .
      mapping _Coerce

-- | A required floating-point number that expresses the longitude in degrees
-- using the WGS84 datum. For details on this encoding, see the National
-- Imagery and Mapping Agency\'s Technical Report TR8350.2.
glpLongitude :: Lens' GeoLocationPoint (Maybe Double)
glpLongitude
  = lens _glpLongitude (\ s a -> s{_glpLongitude = a})
      . mapping _Coerce

instance FromJSON GeoLocationPoint where
        parseJSON
          = withObject "GeoLocationPoint"
              (\ o ->
                 GeoLocationPoint' <$>
                   (o .:? "latitude") <*> (o .:? "longitude"))

instance ToJSON GeoLocationPoint where
        toJSON GeoLocationPoint'{..}
          = object
              (catMaybes
                 [("latitude" .=) <$> _glpLatitude,
                  ("longitude" .=) <$> _glpLongitude])

-- | The initialization response message communicates database parameters to
-- the requesting device.
--
-- /See:/ 'pawsInitResponse' smart constructor.
data PawsInitResponse = PawsInitResponse'
    { _pirKind           :: !Text
    , _pirVersion        :: !(Maybe Text)
    , _pirRulesetInfo    :: !(Maybe RulesetInfo)
    , _pirType           :: !(Maybe Text)
    , _pirDatabaseChange :: !(Maybe DBUpdateSpec)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PawsInitResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pirKind'
--
-- * 'pirVersion'
--
-- * 'pirRulesetInfo'
--
-- * 'pirType'
--
-- * 'pirDatabaseChange'
pawsInitResponse
    :: PawsInitResponse
pawsInitResponse =
    PawsInitResponse'
    { _pirKind = "spectrum#pawsInitResponse"
    , _pirVersion = Nothing
    , _pirRulesetInfo = Nothing
    , _pirType = Nothing
    , _pirDatabaseChange = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"spectrum#pawsInitResponse\".
pirKind :: Lens' PawsInitResponse Text
pirKind = lens _pirKind (\ s a -> s{_pirKind = a})

-- | The PAWS version. Must be exactly 1.0. Required field.
pirVersion :: Lens' PawsInitResponse (Maybe Text)
pirVersion
  = lens _pirVersion (\ s a -> s{_pirVersion = a})

-- | The rulesetInfo parameter must be included in the response. This
-- parameter specifies the regulatory domain and parameters applicable to
-- that domain. The database must include the authority field, which
-- defines the regulatory domain for the location specified in the INIT_REQ
-- message.
pirRulesetInfo :: Lens' PawsInitResponse (Maybe RulesetInfo)
pirRulesetInfo
  = lens _pirRulesetInfo
      (\ s a -> s{_pirRulesetInfo = a})

-- | The message type (e.g., INIT_REQ, AVAIL_SPECTRUM_REQ, ...). Required
-- field.
pirType :: Lens' PawsInitResponse (Maybe Text)
pirType = lens _pirType (\ s a -> s{_pirType = a})

-- | A database may include the databaseChange parameter to notify a device
-- of a change to its database URI, providing one or more alternate
-- database URIs. The device should use this information to update its list
-- of pre-configured databases by (only) replacing its entry for the
-- responding database with the list of alternate URIs.
pirDatabaseChange :: Lens' PawsInitResponse (Maybe DBUpdateSpec)
pirDatabaseChange
  = lens _pirDatabaseChange
      (\ s a -> s{_pirDatabaseChange = a})

instance FromJSON PawsInitResponse where
        parseJSON
          = withObject "PawsInitResponse"
              (\ o ->
                 PawsInitResponse' <$>
                   (o .:? "kind" .!= "spectrum#pawsInitResponse") <*>
                     (o .:? "version")
                     <*> (o .:? "rulesetInfo")
                     <*> (o .:? "type")
                     <*> (o .:? "databaseChange"))

instance ToJSON PawsInitResponse where
        toJSON PawsInitResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _pirKind),
                  ("version" .=) <$> _pirVersion,
                  ("rulesetInfo" .=) <$> _pirRulesetInfo,
                  ("type" .=) <$> _pirType,
                  ("databaseChange" .=) <$> _pirDatabaseChange])

-- | The registration response message simply acknowledges receipt of the
-- request and is otherwise empty.
--
-- /See:/ 'pawsRegisterResponse' smart constructor.
data PawsRegisterResponse = PawsRegisterResponse'
    { _prrKind           :: !Text
    , _prrVersion        :: !(Maybe Text)
    , _prrType           :: !(Maybe Text)
    , _prrDatabaseChange :: !(Maybe DBUpdateSpec)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PawsRegisterResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prrKind'
--
-- * 'prrVersion'
--
-- * 'prrType'
--
-- * 'prrDatabaseChange'
pawsRegisterResponse
    :: PawsRegisterResponse
pawsRegisterResponse =
    PawsRegisterResponse'
    { _prrKind = "spectrum#pawsRegisterResponse"
    , _prrVersion = Nothing
    , _prrType = Nothing
    , _prrDatabaseChange = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"spectrum#pawsRegisterResponse\".
prrKind :: Lens' PawsRegisterResponse Text
prrKind = lens _prrKind (\ s a -> s{_prrKind = a})

-- | The PAWS version. Must be exactly 1.0. Required field.
prrVersion :: Lens' PawsRegisterResponse (Maybe Text)
prrVersion
  = lens _prrVersion (\ s a -> s{_prrVersion = a})

-- | The message type (e.g., INIT_REQ, AVAIL_SPECTRUM_REQ, ...). Required
-- field.
prrType :: Lens' PawsRegisterResponse (Maybe Text)
prrType = lens _prrType (\ s a -> s{_prrType = a})

-- | A database may include the databaseChange parameter to notify a device
-- of a change to its database URI, providing one or more alternate
-- database URIs. The device should use this information to update its list
-- of pre-configured databases by (only) replacing its entry for the
-- responding database with the list of alternate URIs.
prrDatabaseChange :: Lens' PawsRegisterResponse (Maybe DBUpdateSpec)
prrDatabaseChange
  = lens _prrDatabaseChange
      (\ s a -> s{_prrDatabaseChange = a})

instance FromJSON PawsRegisterResponse where
        parseJSON
          = withObject "PawsRegisterResponse"
              (\ o ->
                 PawsRegisterResponse' <$>
                   (o .:? "kind" .!= "spectrum#pawsRegisterResponse")
                     <*> (o .:? "version")
                     <*> (o .:? "type")
                     <*> (o .:? "databaseChange"))

instance ToJSON PawsRegisterResponse where
        toJSON PawsRegisterResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _prrKind),
                  ("version" .=) <$> _prrVersion,
                  ("type" .=) <$> _prrType,
                  ("databaseChange" .=) <$> _prrDatabaseChange])

-- | The spectrum-use notification message which must contain the geolocation
-- of the Device and parameters required by the regulatory domain.
--
-- /See:/ 'pawsNotifySpectrumUseRequest' smart constructor.
data PawsNotifySpectrumUseRequest = PawsNotifySpectrumUseRequest'
    { _pnsurSpectra    :: !(Maybe [SpectrumMessage])
    , _pnsurLocation   :: !(Maybe GeoLocation)
    , _pnsurVersion    :: !(Maybe Text)
    , _pnsurType       :: !(Maybe Text)
    , _pnsurDeviceDesc :: !(Maybe DeviceDescriptor)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PawsNotifySpectrumUseRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pnsurSpectra'
--
-- * 'pnsurLocation'
--
-- * 'pnsurVersion'
--
-- * 'pnsurType'
--
-- * 'pnsurDeviceDesc'
pawsNotifySpectrumUseRequest
    :: PawsNotifySpectrumUseRequest
pawsNotifySpectrumUseRequest =
    PawsNotifySpectrumUseRequest'
    { _pnsurSpectra = Nothing
    , _pnsurLocation = Nothing
    , _pnsurVersion = Nothing
    , _pnsurType = Nothing
    , _pnsurDeviceDesc = Nothing
    }

-- | A spectrum list is required in the spectrum-use notification. The list
-- specifies the spectrum that the device expects to use, which includes
-- frequency ranges and maximum power levels. The list may be empty if the
-- device decides not to use any of spectrum. For consistency, the
-- psdBandwidthHz value should match that from one of the spectrum elements
-- in the corresponding available spectrum response previously sent to the
-- device by the database. Note that maximum power levels in the spectrum
-- element must be expressed as power spectral density over the specified
-- psdBandwidthHz value. The actual bandwidth to be used (as computed from
-- the start and stop frequencies) may be different from the psdBandwidthHz
-- value. As an example, when regulatory rules express maximum power
-- spectral density in terms of maximum power over any 100 kHz band, then
-- the psdBandwidthHz value should be set to 100 kHz, even though the
-- actual bandwidth used can be 20 kHz.
pnsurSpectra :: Lens' PawsNotifySpectrumUseRequest [SpectrumMessage]
pnsurSpectra
  = lens _pnsurSpectra (\ s a -> s{_pnsurSpectra = a})
      . _Default
      . _Coerce

-- | The geolocation of the master device (the device that is sending the
-- spectrum-use notification) to the database is required in the
-- spectrum-use notification message.
pnsurLocation :: Lens' PawsNotifySpectrumUseRequest (Maybe GeoLocation)
pnsurLocation
  = lens _pnsurLocation
      (\ s a -> s{_pnsurLocation = a})

-- | The PAWS version. Must be exactly 1.0. Required field.
pnsurVersion :: Lens' PawsNotifySpectrumUseRequest (Maybe Text)
pnsurVersion
  = lens _pnsurVersion (\ s a -> s{_pnsurVersion = a})

-- | The message type (e.g., INIT_REQ, AVAIL_SPECTRUM_REQ, ...). Required
-- field.
pnsurType :: Lens' PawsNotifySpectrumUseRequest (Maybe Text)
pnsurType
  = lens _pnsurType (\ s a -> s{_pnsurType = a})

-- | Device descriptor information is required in the spectrum-use
-- notification message.
pnsurDeviceDesc :: Lens' PawsNotifySpectrumUseRequest (Maybe DeviceDescriptor)
pnsurDeviceDesc
  = lens _pnsurDeviceDesc
      (\ s a -> s{_pnsurDeviceDesc = a})

instance FromJSON PawsNotifySpectrumUseRequest where
        parseJSON
          = withObject "PawsNotifySpectrumUseRequest"
              (\ o ->
                 PawsNotifySpectrumUseRequest' <$>
                   (o .:? "spectra" .!= mempty) <*> (o .:? "location")
                     <*> (o .:? "version")
                     <*> (o .:? "type")
                     <*> (o .:? "deviceDesc"))

instance ToJSON PawsNotifySpectrumUseRequest where
        toJSON PawsNotifySpectrumUseRequest'{..}
          = object
              (catMaybes
                 [("spectra" .=) <$> _pnsurSpectra,
                  ("location" .=) <$> _pnsurLocation,
                  ("version" .=) <$> _pnsurVersion,
                  ("type" .=) <$> _pnsurType,
                  ("deviceDesc" .=) <$> _pnsurDeviceDesc])

-- | A vCard-in-JSON message that contains only the fields needed for PAWS: -
-- fn: Full name of an individual - org: Name of the organization - adr:
-- Address fields - tel: Telephone numbers - email: Email addresses
--
-- /See:/ 'vcard' smart constructor.
data Vcard = Vcard'
    { _vEmail :: !(Maybe VcardTypedText)
    , _vAdr   :: !(Maybe VcardAddress)
    , _vOrg   :: !(Maybe VcardTypedText)
    , _vTel   :: !(Maybe VcardTelephone)
    , _vFn    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Vcard' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vEmail'
--
-- * 'vAdr'
--
-- * 'vOrg'
--
-- * 'vTel'
--
-- * 'vFn'
vcard
    :: Vcard
vcard =
    Vcard'
    { _vEmail = Nothing
    , _vAdr = Nothing
    , _vOrg = Nothing
    , _vTel = Nothing
    , _vFn = Nothing
    }

-- | An email address that can be used to reach the contact.
vEmail :: Lens' Vcard (Maybe VcardTypedText)
vEmail = lens _vEmail (\ s a -> s{_vEmail = a})

-- | The street address of the entity.
vAdr :: Lens' Vcard (Maybe VcardAddress)
vAdr = lens _vAdr (\ s a -> s{_vAdr = a})

-- | The organization associated with the registering entity.
vOrg :: Lens' Vcard (Maybe VcardTypedText)
vOrg = lens _vOrg (\ s a -> s{_vOrg = a})

-- | A telephone number that can be used to call the contact.
vTel :: Lens' Vcard (Maybe VcardTelephone)
vTel = lens _vTel (\ s a -> s{_vTel = a})

-- | The full name of the contact person. For example: John A. Smith.
vFn :: Lens' Vcard (Maybe Text)
vFn = lens _vFn (\ s a -> s{_vFn = a})

instance FromJSON Vcard where
        parseJSON
          = withObject "Vcard"
              (\ o ->
                 Vcard' <$>
                   (o .:? "email") <*> (o .:? "adr") <*> (o .:? "org")
                     <*> (o .:? "tel")
                     <*> (o .:? "fn"))

instance ToJSON Vcard where
        toJSON Vcard'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _vEmail, ("adr" .=) <$> _vAdr,
                  ("org" .=) <$> _vOrg, ("tel" .=) <$> _vTel,
                  ("fn" .=) <$> _vFn])

-- | This message is provided by the database to notify devices of an
-- upcoming change to the database URI.
--
-- /See:/ 'dbUpdateSpec' smart constructor.
newtype DBUpdateSpec = DBUpdateSpec'
    { _dusDatabases :: Maybe [DatabaseSpec]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DBUpdateSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dusDatabases'
dbUpdateSpec
    :: DBUpdateSpec
dbUpdateSpec =
    DBUpdateSpec'
    { _dusDatabases = Nothing
    }

-- | A required list of one or more databases. A device should update its
-- preconfigured list of databases to replace (only) the database that
-- provided the response with the specified entries.
dusDatabases :: Lens' DBUpdateSpec [DatabaseSpec]
dusDatabases
  = lens _dusDatabases (\ s a -> s{_dusDatabases = a})
      . _Default
      . _Coerce

instance FromJSON DBUpdateSpec where
        parseJSON
          = withObject "DBUpdateSpec"
              (\ o ->
                 DBUpdateSpec' <$> (o .:? "databases" .!= mempty))

instance ToJSON DBUpdateSpec where
        toJSON DBUpdateSpec'{..}
          = object
              (catMaybes [("databases" .=) <$> _dusDatabases])

-- | The request message for a batch available spectrum query protocol.
--
-- /See:/ 'pawsGetSpectrumBatchRequest' smart constructor.
data PawsGetSpectrumBatchRequest = PawsGetSpectrumBatchRequest'
    { _pgsbrAntenna          :: !(Maybe AntennaCharacteristics)
    , _pgsbrMasterDeviceDesc :: !(Maybe DeviceDescriptor)
    , _pgsbrOwner            :: !(Maybe DeviceOwner)
    , _pgsbrRequestType      :: !(Maybe Text)
    , _pgsbrVersion          :: !(Maybe Text)
    , _pgsbrType             :: !(Maybe Text)
    , _pgsbrLocations        :: !(Maybe [GeoLocation])
    , _pgsbrCapabilities     :: !(Maybe DeviceCapabilities)
    , _pgsbrDeviceDesc       :: !(Maybe DeviceDescriptor)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PawsGetSpectrumBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgsbrAntenna'
--
-- * 'pgsbrMasterDeviceDesc'
--
-- * 'pgsbrOwner'
--
-- * 'pgsbrRequestType'
--
-- * 'pgsbrVersion'
--
-- * 'pgsbrType'
--
-- * 'pgsbrLocations'
--
-- * 'pgsbrCapabilities'
--
-- * 'pgsbrDeviceDesc'
pawsGetSpectrumBatchRequest
    :: PawsGetSpectrumBatchRequest
pawsGetSpectrumBatchRequest =
    PawsGetSpectrumBatchRequest'
    { _pgsbrAntenna = Nothing
    , _pgsbrMasterDeviceDesc = Nothing
    , _pgsbrOwner = Nothing
    , _pgsbrRequestType = Nothing
    , _pgsbrVersion = Nothing
    , _pgsbrType = Nothing
    , _pgsbrLocations = Nothing
    , _pgsbrCapabilities = Nothing
    , _pgsbrDeviceDesc = Nothing
    }

-- | Depending on device type and regulatory domain, antenna characteristics
-- may be required.
pgsbrAntenna :: Lens' PawsGetSpectrumBatchRequest (Maybe AntennaCharacteristics)
pgsbrAntenna
  = lens _pgsbrAntenna (\ s a -> s{_pgsbrAntenna = a})

-- | When an available spectrum batch request is made by the master device (a
-- device with geolocation capability) on behalf of a slave device (a
-- device without geolocation capability), the rules of the applicable
-- regulatory domain may require the master device to provide its own
-- device descriptor information (in addition to device descriptor
-- information for the slave device in a separate parameter).
pgsbrMasterDeviceDesc :: Lens' PawsGetSpectrumBatchRequest (Maybe DeviceDescriptor)
pgsbrMasterDeviceDesc
  = lens _pgsbrMasterDeviceDesc
      (\ s a -> s{_pgsbrMasterDeviceDesc = a})

-- | Depending on device type and regulatory domain, device owner information
-- may be included in an available spectrum batch request. This allows the
-- device to register and get spectrum-availability information in a single
-- request.
pgsbrOwner :: Lens' PawsGetSpectrumBatchRequest (Maybe DeviceOwner)
pgsbrOwner
  = lens _pgsbrOwner (\ s a -> s{_pgsbrOwner = a})

-- | The request type parameter is an optional parameter that can be used to
-- modify an available spectrum batch request, but its use depends on
-- applicable regulatory rules. For example, It may be used to request
-- generic slave device parameters without having to specify the device
-- descriptor for a specific device. When the requestType parameter is
-- missing, the request is for a specific device (master or slave), and the
-- device descriptor parameter for the device on whose behalf the batch
-- request is made is required.
pgsbrRequestType :: Lens' PawsGetSpectrumBatchRequest (Maybe Text)
pgsbrRequestType
  = lens _pgsbrRequestType
      (\ s a -> s{_pgsbrRequestType = a})

-- | The PAWS version. Must be exactly 1.0. Required field.
pgsbrVersion :: Lens' PawsGetSpectrumBatchRequest (Maybe Text)
pgsbrVersion
  = lens _pgsbrVersion (\ s a -> s{_pgsbrVersion = a})

-- | The message type (e.g., INIT_REQ, AVAIL_SPECTRUM_REQ, ...). Required
-- field.
pgsbrType :: Lens' PawsGetSpectrumBatchRequest (Maybe Text)
pgsbrType
  = lens _pgsbrType (\ s a -> s{_pgsbrType = a})

-- | A geolocation list is required. This allows a device to specify its
-- current location plus additional anticipated locations when allowed by
-- the regulatory domain. At least one location must be included.
-- Geolocation must be given as the location of the radiation center of the
-- device\'s antenna. If a location specifies a region, rather than a
-- point, the database may return an UNIMPLEMENTED error if it does not
-- support query by region. There is no upper limit on the number of
-- locations included in a available spectrum batch request, but the
-- database may restrict the number of locations it supports by returning a
-- response with fewer locations than specified in the batch request. Note
-- that geolocations must be those of the master device (a device with
-- geolocation capability that makes an available spectrum batch request),
-- whether the master device is making the request on its own behalf or on
-- behalf of a slave device (one without geolocation capability).
pgsbrLocations :: Lens' PawsGetSpectrumBatchRequest [GeoLocation]
pgsbrLocations
  = lens _pgsbrLocations
      (\ s a -> s{_pgsbrLocations = a})
      . _Default
      . _Coerce

-- | The master device may include its device capabilities to limit the
-- available-spectrum batch response to the spectrum that is compatible
-- with its capabilities. The database should not return spectrum that is
-- incompatible with the specified capabilities.
pgsbrCapabilities :: Lens' PawsGetSpectrumBatchRequest (Maybe DeviceCapabilities)
pgsbrCapabilities
  = lens _pgsbrCapabilities
      (\ s a -> s{_pgsbrCapabilities = a})

-- | When the available spectrum request is made on behalf of a specific
-- device (a master or slave device), device descriptor information for the
-- device on whose behalf the request is made is required (in such cases,
-- the requestType parameter must be empty). When a requestType value is
-- specified, device descriptor information may be optional or required
-- according to the rules of the applicable regulatory domain.
pgsbrDeviceDesc :: Lens' PawsGetSpectrumBatchRequest (Maybe DeviceDescriptor)
pgsbrDeviceDesc
  = lens _pgsbrDeviceDesc
      (\ s a -> s{_pgsbrDeviceDesc = a})

instance FromJSON PawsGetSpectrumBatchRequest where
        parseJSON
          = withObject "PawsGetSpectrumBatchRequest"
              (\ o ->
                 PawsGetSpectrumBatchRequest' <$>
                   (o .:? "antenna") <*> (o .:? "masterDeviceDesc") <*>
                     (o .:? "owner")
                     <*> (o .:? "requestType")
                     <*> (o .:? "version")
                     <*> (o .:? "type")
                     <*> (o .:? "locations" .!= mempty)
                     <*> (o .:? "capabilities")
                     <*> (o .:? "deviceDesc"))

instance ToJSON PawsGetSpectrumBatchRequest where
        toJSON PawsGetSpectrumBatchRequest'{..}
          = object
              (catMaybes
                 [("antenna" .=) <$> _pgsbrAntenna,
                  ("masterDeviceDesc" .=) <$> _pgsbrMasterDeviceDesc,
                  ("owner" .=) <$> _pgsbrOwner,
                  ("requestType" .=) <$> _pgsbrRequestType,
                  ("version" .=) <$> _pgsbrVersion,
                  ("type" .=) <$> _pgsbrType,
                  ("locations" .=) <$> _pgsbrLocations,
                  ("capabilities" .=) <$> _pgsbrCapabilities,
                  ("deviceDesc" .=) <$> _pgsbrDeviceDesc])

-- | The schedule of spectrum profiles available at a particular geolocation.
--
-- /See:/ 'geoSpectrumSchedule' smart constructor.
data GeoSpectrumSchedule = GeoSpectrumSchedule'
    { _gssLocation          :: !(Maybe GeoLocation)
    , _gssSpectrumSchedules :: !(Maybe [SpectrumSchedule])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeoSpectrumSchedule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gssLocation'
--
-- * 'gssSpectrumSchedules'
geoSpectrumSchedule
    :: GeoSpectrumSchedule
geoSpectrumSchedule =
    GeoSpectrumSchedule'
    { _gssLocation = Nothing
    , _gssSpectrumSchedules = Nothing
    }

-- | The geolocation identifies the location at which the spectrum schedule
-- applies. It will always be present.
gssLocation :: Lens' GeoSpectrumSchedule (Maybe GeoLocation)
gssLocation
  = lens _gssLocation (\ s a -> s{_gssLocation = a})

-- | A list of available spectrum profiles and associated times. It will
-- always be present, and at least one schedule must be included (though it
-- may be empty if there is no available spectrum). More than one schedule
-- may be included to represent future changes to the available spectrum.
gssSpectrumSchedules :: Lens' GeoSpectrumSchedule [SpectrumSchedule]
gssSpectrumSchedules
  = lens _gssSpectrumSchedules
      (\ s a -> s{_gssSpectrumSchedules = a})
      . _Default
      . _Coerce

instance FromJSON GeoSpectrumSchedule where
        parseJSON
          = withObject "GeoSpectrumSchedule"
              (\ o ->
                 GeoSpectrumSchedule' <$>
                   (o .:? "location") <*>
                     (o .:? "spectrumSchedules" .!= mempty))

instance ToJSON GeoSpectrumSchedule where
        toJSON GeoSpectrumSchedule'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _gssLocation,
                  ("spectrumSchedules" .=) <$> _gssSpectrumSchedules])

-- | The structure used to represent an organization and an email address.
--
-- /See:/ 'vcardTypedText' smart constructor.
newtype VcardTypedText = VcardTypedText'
    { _vttText :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VcardTypedText' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vttText'
vcardTypedText
    :: VcardTypedText
vcardTypedText =
    VcardTypedText'
    { _vttText = Nothing
    }

-- | The text string associated with this item. For example, for an org
-- field: ACME, inc. For an email field: smith\'example.com.
vttText :: Lens' VcardTypedText (Maybe Text)
vttText = lens _vttText (\ s a -> s{_vttText = a})

instance FromJSON VcardTypedText where
        parseJSON
          = withObject "VcardTypedText"
              (\ o -> VcardTypedText' <$> (o .:? "text"))

instance ToJSON VcardTypedText where
        toJSON VcardTypedText'{..}
          = object (catMaybes [("text" .=) <$> _vttText])

-- | The spectrum schedule element combines an event time with spectrum
-- profile to define a time period in which the profile is valid.
--
-- /See:/ 'spectrumSchedule' smart constructor.
data SpectrumSchedule = SpectrumSchedule'
    { _ssSpectra   :: !(Maybe [SpectrumMessage])
    , _ssEventTime :: !(Maybe EventTime)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SpectrumSchedule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssSpectra'
--
-- * 'ssEventTime'
spectrumSchedule
    :: SpectrumSchedule
spectrumSchedule =
    SpectrumSchedule'
    { _ssSpectra = Nothing
    , _ssEventTime = Nothing
    }

-- | A list of spectrum messages representing the usable profile. It will
-- always be present, but may be empty when there is no available spectrum.
ssSpectra :: Lens' SpectrumSchedule [SpectrumMessage]
ssSpectra
  = lens _ssSpectra (\ s a -> s{_ssSpectra = a}) .
      _Default
      . _Coerce

-- | The event time expresses when the spectrum profile is valid. It will
-- always be present.
ssEventTime :: Lens' SpectrumSchedule (Maybe EventTime)
ssEventTime
  = lens _ssEventTime (\ s a -> s{_ssEventTime = a})

instance FromJSON SpectrumSchedule where
        parseJSON
          = withObject "SpectrumSchedule"
              (\ o ->
                 SpectrumSchedule' <$>
                   (o .:? "spectra" .!= mempty) <*> (o .:? "eventTime"))

instance ToJSON SpectrumSchedule where
        toJSON SpectrumSchedule'{..}
          = object
              (catMaybes
                 [("spectra" .=) <$> _ssSpectra,
                  ("eventTime" .=) <$> _ssEventTime])

-- | The structure used to represent a telephone number.
--
-- /See:/ 'vcardTelephone' smart constructor.
newtype VcardTelephone = VcardTelephone'
    { _vtURI :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VcardTelephone' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vtURI'
vcardTelephone
    :: VcardTelephone
vcardTelephone =
    VcardTelephone'
    { _vtURI = Nothing
    }

-- | A nested telephone URI of the form: tel:+1-123-456-7890.
vtURI :: Lens' VcardTelephone (Maybe Text)
vtURI = lens _vtURI (\ s a -> s{_vtURI = a})

instance FromJSON VcardTelephone where
        parseJSON
          = withObject "VcardTelephone"
              (\ o -> VcardTelephone' <$> (o .:? "uri"))

instance ToJSON VcardTelephone where
        toJSON VcardTelephone'{..}
          = object (catMaybes [("uri" .=) <$> _vtURI])

-- | This parameter contains device-owner information required as part of
-- device registration. The regulatory domains may require additional
-- parameters. All contact information must be expressed using the
-- structure defined by the vCard format specification. Only the contact
-- fields of vCard are supported: - fn: Full name of an individual - org:
-- Name of the organization - adr: Address fields - tel: Telephone numbers
-- - email: Email addresses Note that the vCard specification defines
-- maximum lengths for each field.
--
-- /See:/ 'deviceOwner' smart constructor.
data DeviceOwner = DeviceOwner'
    { _doOperator :: !(Maybe Vcard)
    , _doOwner    :: !(Maybe Vcard)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeviceOwner' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'doOperator'
--
-- * 'doOwner'
deviceOwner
    :: DeviceOwner
deviceOwner =
    DeviceOwner'
    { _doOperator = Nothing
    , _doOwner = Nothing
    }

-- | The vCard contact information for the device operator is optional, but
-- may be required by specific regulatory domains.
doOperator :: Lens' DeviceOwner (Maybe Vcard)
doOperator
  = lens _doOperator (\ s a -> s{_doOperator = a})

-- | The vCard contact information for the individual or business that owns
-- the device is required.
doOwner :: Lens' DeviceOwner (Maybe Vcard)
doOwner = lens _doOwner (\ s a -> s{_doOwner = a})

instance FromJSON DeviceOwner where
        parseJSON
          = withObject "DeviceOwner"
              (\ o ->
                 DeviceOwner' <$>
                   (o .:? "operator") <*> (o .:? "owner"))

instance ToJSON DeviceOwner where
        toJSON DeviceOwner'{..}
          = object
              (catMaybes
                 [("operator" .=) <$> _doOperator,
                  ("owner" .=) <$> _doOwner])

-- | The start and stop times of an event. This is used to indicate the time
-- period for which a spectrum profile is valid. Both times are expressed
-- using the format, YYYY-MM-DDThh:mm:ssZ, as defined in RFC3339. The times
-- must be expressed using UTC.
--
-- /See:/ 'eventTime' smart constructor.
data EventTime = EventTime'
    { _etStartTime :: !(Maybe Text)
    , _etStopTime  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventTime' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etStartTime'
--
-- * 'etStopTime'
eventTime
    :: EventTime
eventTime =
    EventTime'
    { _etStartTime = Nothing
    , _etStopTime = Nothing
    }

-- | The inclusive start of the event. It will be present.
etStartTime :: Lens' EventTime (Maybe Text)
etStartTime
  = lens _etStartTime (\ s a -> s{_etStartTime = a})

-- | The exclusive end of the event. It will be present.
etStopTime :: Lens' EventTime (Maybe Text)
etStopTime
  = lens _etStopTime (\ s a -> s{_etStopTime = a})

instance FromJSON EventTime where
        parseJSON
          = withObject "EventTime"
              (\ o ->
                 EventTime' <$>
                   (o .:? "startTime") <*> (o .:? "stopTime"))

instance ToJSON EventTime where
        toJSON EventTime'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _etStartTime,
                  ("stopTime" .=) <$> _etStopTime])

-- | The request message for the available spectrum query protocol which must
-- include the device\'s geolocation.
--
-- /See:/ 'pawsGetSpectrumRequest' smart constructor.
data PawsGetSpectrumRequest = PawsGetSpectrumRequest'
    { _pgsrAntenna          :: !(Maybe AntennaCharacteristics)
    , _pgsrMasterDeviceDesc :: !(Maybe DeviceDescriptor)
    , _pgsrLocation         :: !(Maybe GeoLocation)
    , _pgsrOwner            :: !(Maybe DeviceOwner)
    , _pgsrRequestType      :: !(Maybe Text)
    , _pgsrVersion          :: !(Maybe Text)
    , _pgsrType             :: !(Maybe Text)
    , _pgsrCapabilities     :: !(Maybe DeviceCapabilities)
    , _pgsrDeviceDesc       :: !(Maybe DeviceDescriptor)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PawsGetSpectrumRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgsrAntenna'
--
-- * 'pgsrMasterDeviceDesc'
--
-- * 'pgsrLocation'
--
-- * 'pgsrOwner'
--
-- * 'pgsrRequestType'
--
-- * 'pgsrVersion'
--
-- * 'pgsrType'
--
-- * 'pgsrCapabilities'
--
-- * 'pgsrDeviceDesc'
pawsGetSpectrumRequest
    :: PawsGetSpectrumRequest
pawsGetSpectrumRequest =
    PawsGetSpectrumRequest'
    { _pgsrAntenna = Nothing
    , _pgsrMasterDeviceDesc = Nothing
    , _pgsrLocation = Nothing
    , _pgsrOwner = Nothing
    , _pgsrRequestType = Nothing
    , _pgsrVersion = Nothing
    , _pgsrType = Nothing
    , _pgsrCapabilities = Nothing
    , _pgsrDeviceDesc = Nothing
    }

-- | Depending on device type and regulatory domain, the characteristics of
-- the antenna may be required.
pgsrAntenna :: Lens' PawsGetSpectrumRequest (Maybe AntennaCharacteristics)
pgsrAntenna
  = lens _pgsrAntenna (\ s a -> s{_pgsrAntenna = a})

-- | When an available spectrum request is made by the master device (a
-- device with geolocation capability) on behalf of a slave device (a
-- device without geolocation capability), the rules of the applicable
-- regulatory domain may require the master device to provide its own
-- device descriptor information (in addition to device descriptor
-- information for the slave device, which is provided in a separate
-- parameter).
pgsrMasterDeviceDesc :: Lens' PawsGetSpectrumRequest (Maybe DeviceDescriptor)
pgsrMasterDeviceDesc
  = lens _pgsrMasterDeviceDesc
      (\ s a -> s{_pgsrMasterDeviceDesc = a})

-- | The geolocation of the master device (a device with geolocation
-- capability that makes an available spectrum request) is required whether
-- the master device is making the request on its own behalf or on behalf
-- of a slave device (one without geolocation capability). The location
-- must be the location of the radiation center of the master device\'s
-- antenna. To support mobile devices, a regulatory domain may allow the
-- anticipated position of the master device to be given instead. If the
-- location specifies a region, rather than a point, the database may
-- return an UNIMPLEMENTED error code if it does not support query by
-- region.
pgsrLocation :: Lens' PawsGetSpectrumRequest (Maybe GeoLocation)
pgsrLocation
  = lens _pgsrLocation (\ s a -> s{_pgsrLocation = a})

-- | Depending on device type and regulatory domain, device owner information
-- may be included in an available spectrum request. This allows the device
-- to register and get spectrum-availability information in a single
-- request.
pgsrOwner :: Lens' PawsGetSpectrumRequest (Maybe DeviceOwner)
pgsrOwner
  = lens _pgsrOwner (\ s a -> s{_pgsrOwner = a})

-- | The request type parameter is an optional parameter that can be used to
-- modify an available spectrum request, but its use depends on applicable
-- regulatory rules. It may be used, for example, to request generic slave
-- device parameters without having to specify the device descriptor for a
-- specific device. When the requestType parameter is missing, the request
-- is for a specific device (master or slave), and the deviceDesc parameter
-- for the device on whose behalf the request is made is required.
pgsrRequestType :: Lens' PawsGetSpectrumRequest (Maybe Text)
pgsrRequestType
  = lens _pgsrRequestType
      (\ s a -> s{_pgsrRequestType = a})

-- | The PAWS version. Must be exactly 1.0. Required field.
pgsrVersion :: Lens' PawsGetSpectrumRequest (Maybe Text)
pgsrVersion
  = lens _pgsrVersion (\ s a -> s{_pgsrVersion = a})

-- | The message type (e.g., INIT_REQ, AVAIL_SPECTRUM_REQ, ...). Required
-- field.
pgsrType :: Lens' PawsGetSpectrumRequest (Maybe Text)
pgsrType = lens _pgsrType (\ s a -> s{_pgsrType = a})

-- | The master device may include its device capabilities to limit the
-- available-spectrum response to the spectrum that is compatible with its
-- capabilities. The database should not return spectrum that is
-- incompatible with the specified capabilities.
pgsrCapabilities :: Lens' PawsGetSpectrumRequest (Maybe DeviceCapabilities)
pgsrCapabilities
  = lens _pgsrCapabilities
      (\ s a -> s{_pgsrCapabilities = a})

-- | When the available spectrum request is made on behalf of a specific
-- device (a master or slave device), device descriptor information for
-- that device is required (in such cases, the requestType parameter must
-- be empty). When a requestType value is specified, device descriptor
-- information may be optional or required according to the rules of the
-- applicable regulatory domain.
pgsrDeviceDesc :: Lens' PawsGetSpectrumRequest (Maybe DeviceDescriptor)
pgsrDeviceDesc
  = lens _pgsrDeviceDesc
      (\ s a -> s{_pgsrDeviceDesc = a})

instance FromJSON PawsGetSpectrumRequest where
        parseJSON
          = withObject "PawsGetSpectrumRequest"
              (\ o ->
                 PawsGetSpectrumRequest' <$>
                   (o .:? "antenna") <*> (o .:? "masterDeviceDesc") <*>
                     (o .:? "location")
                     <*> (o .:? "owner")
                     <*> (o .:? "requestType")
                     <*> (o .:? "version")
                     <*> (o .:? "type")
                     <*> (o .:? "capabilities")
                     <*> (o .:? "deviceDesc"))

instance ToJSON PawsGetSpectrumRequest where
        toJSON PawsGetSpectrumRequest'{..}
          = object
              (catMaybes
                 [("antenna" .=) <$> _pgsrAntenna,
                  ("masterDeviceDesc" .=) <$> _pgsrMasterDeviceDesc,
                  ("location" .=) <$> _pgsrLocation,
                  ("owner" .=) <$> _pgsrOwner,
                  ("requestType" .=) <$> _pgsrRequestType,
                  ("version" .=) <$> _pgsrVersion,
                  ("type" .=) <$> _pgsrType,
                  ("capabilities" .=) <$> _pgsrCapabilities,
                  ("deviceDesc" .=) <$> _pgsrDeviceDesc])

-- | Antenna characteristics provide additional information, such as the
-- antenna height, antenna type, etc. Whether antenna characteristics must
-- be provided in a request depends on the device type and regulatory
-- domain.
--
-- /See:/ 'antennaCharacteristics' smart constructor.
data AntennaCharacteristics = AntennaCharacteristics'
    { _acHeight            :: !(Maybe (Textual Double))
    , _acHeightType        :: !(Maybe Text)
    , _acHeightUncertainty :: !(Maybe (Textual Double))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AntennaCharacteristics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acHeight'
--
-- * 'acHeightType'
--
-- * 'acHeightUncertainty'
antennaCharacteristics
    :: AntennaCharacteristics
antennaCharacteristics =
    AntennaCharacteristics'
    { _acHeight = Nothing
    , _acHeightType = Nothing
    , _acHeightUncertainty = Nothing
    }

-- | The antenna height in meters. Whether the antenna height is required
-- depends on the device type and the regulatory domain. Note that the
-- height may be negative.
acHeight :: Lens' AntennaCharacteristics (Maybe Double)
acHeight
  = lens _acHeight (\ s a -> s{_acHeight = a}) .
      mapping _Coerce

-- | If the height is required, then the height type (AGL for above ground
-- level or AMSL for above mean sea level) is also required. The default is
-- AGL.
acHeightType :: Lens' AntennaCharacteristics (Maybe Text)
acHeightType
  = lens _acHeightType (\ s a -> s{_acHeightType = a})

-- | The height uncertainty in meters. Whether this is required depends on
-- the regulatory domain.
acHeightUncertainty :: Lens' AntennaCharacteristics (Maybe Double)
acHeightUncertainty
  = lens _acHeightUncertainty
      (\ s a -> s{_acHeightUncertainty = a})
      . mapping _Coerce

instance FromJSON AntennaCharacteristics where
        parseJSON
          = withObject "AntennaCharacteristics"
              (\ o ->
                 AntennaCharacteristics' <$>
                   (o .:? "height") <*> (o .:? "heightType") <*>
                     (o .:? "heightUncertainty"))

instance ToJSON AntennaCharacteristics where
        toJSON AntennaCharacteristics'{..}
          = object
              (catMaybes
                 [("height" .=) <$> _acHeight,
                  ("heightType" .=) <$> _acHeightType,
                  ("heightUncertainty" .=) <$> _acHeightUncertainty])

-- | The device validation response message.
--
-- /See:/ 'pawsVerifyDeviceResponse' smart constructor.
data PawsVerifyDeviceResponse = PawsVerifyDeviceResponse'
    { _pvdrDeviceValidities :: !(Maybe [DeviceValidity])
    , _pvdrKind             :: !Text
    , _pvdrVersion          :: !(Maybe Text)
    , _pvdrType             :: !(Maybe Text)
    , _pvdrDatabaseChange   :: !(Maybe DBUpdateSpec)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PawsVerifyDeviceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pvdrDeviceValidities'
--
-- * 'pvdrKind'
--
-- * 'pvdrVersion'
--
-- * 'pvdrType'
--
-- * 'pvdrDatabaseChange'
pawsVerifyDeviceResponse
    :: PawsVerifyDeviceResponse
pawsVerifyDeviceResponse =
    PawsVerifyDeviceResponse'
    { _pvdrDeviceValidities = Nothing
    , _pvdrKind = "spectrum#pawsVerifyDeviceResponse"
    , _pvdrVersion = Nothing
    , _pvdrType = Nothing
    , _pvdrDatabaseChange = Nothing
    }

-- | A device validities list is required in the device validation response
-- to report whether each slave device listed in a previous device
-- validation request is valid. The number of entries must match the number
-- of device descriptors listed in the previous device validation request.
pvdrDeviceValidities :: Lens' PawsVerifyDeviceResponse [DeviceValidity]
pvdrDeviceValidities
  = lens _pvdrDeviceValidities
      (\ s a -> s{_pvdrDeviceValidities = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"spectrum#pawsVerifyDeviceResponse\".
pvdrKind :: Lens' PawsVerifyDeviceResponse Text
pvdrKind = lens _pvdrKind (\ s a -> s{_pvdrKind = a})

-- | The PAWS version. Must be exactly 1.0. Required field.
pvdrVersion :: Lens' PawsVerifyDeviceResponse (Maybe Text)
pvdrVersion
  = lens _pvdrVersion (\ s a -> s{_pvdrVersion = a})

-- | The message type (e.g., INIT_REQ, AVAIL_SPECTRUM_REQ, ...). Required
-- field.
pvdrType :: Lens' PawsVerifyDeviceResponse (Maybe Text)
pvdrType = lens _pvdrType (\ s a -> s{_pvdrType = a})

-- | A database may include the databaseChange parameter to notify a device
-- of a change to its database URI, providing one or more alternate
-- database URIs. The device should use this information to update its list
-- of pre-configured databases by (only) replacing its entry for the
-- responding database with the list of alternate URIs.
pvdrDatabaseChange :: Lens' PawsVerifyDeviceResponse (Maybe DBUpdateSpec)
pvdrDatabaseChange
  = lens _pvdrDatabaseChange
      (\ s a -> s{_pvdrDatabaseChange = a})

instance FromJSON PawsVerifyDeviceResponse where
        parseJSON
          = withObject "PawsVerifyDeviceResponse"
              (\ o ->
                 PawsVerifyDeviceResponse' <$>
                   (o .:? "deviceValidities" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "spectrum#pawsVerifyDeviceResponse")
                     <*> (o .:? "version")
                     <*> (o .:? "type")
                     <*> (o .:? "databaseChange"))

instance ToJSON PawsVerifyDeviceResponse where
        toJSON PawsVerifyDeviceResponse'{..}
          = object
              (catMaybes
                 [("deviceValidities" .=) <$> _pvdrDeviceValidities,
                  Just ("kind" .= _pvdrKind),
                  ("version" .=) <$> _pvdrVersion,
                  ("type" .=) <$> _pvdrType,
                  ("databaseChange" .=) <$> _pvdrDatabaseChange])

-- | The structure used to represent a street address.
--
-- /See:/ 'vcardAddress' smart constructor.
data VcardAddress = VcardAddress'
    { _vaPobox    :: !(Maybe Text)
    , _vaCountry  :: !(Maybe Text)
    , _vaStreet   :: !(Maybe Text)
    , _vaLocality :: !(Maybe Text)
    , _vaCode     :: !(Maybe Text)
    , _vaRegion   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VcardAddress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vaPobox'
--
-- * 'vaCountry'
--
-- * 'vaStreet'
--
-- * 'vaLocality'
--
-- * 'vaCode'
--
-- * 'vaRegion'
vcardAddress
    :: VcardAddress
vcardAddress =
    VcardAddress'
    { _vaPobox = Nothing
    , _vaCountry = Nothing
    , _vaStreet = Nothing
    , _vaLocality = Nothing
    , _vaCode = Nothing
    , _vaRegion = Nothing
    }

-- | An optional post office box number.
vaPobox :: Lens' VcardAddress (Maybe Text)
vaPobox = lens _vaPobox (\ s a -> s{_vaPobox = a})

-- | The country name. For example: US.
vaCountry :: Lens' VcardAddress (Maybe Text)
vaCountry
  = lens _vaCountry (\ s a -> s{_vaCountry = a})

-- | The street number and name. For example: 123 Any St.
vaStreet :: Lens' VcardAddress (Maybe Text)
vaStreet = lens _vaStreet (\ s a -> s{_vaStreet = a})

-- | The city or local equivalent portion of the address. For example: San
-- Jose.
vaLocality :: Lens' VcardAddress (Maybe Text)
vaLocality
  = lens _vaLocality (\ s a -> s{_vaLocality = a})

-- | The postal code associated with the address. For example: 94423.
vaCode :: Lens' VcardAddress (Maybe Text)
vaCode = lens _vaCode (\ s a -> s{_vaCode = a})

-- | The state or local equivalent portion of the address. For example: CA.
vaRegion :: Lens' VcardAddress (Maybe Text)
vaRegion = lens _vaRegion (\ s a -> s{_vaRegion = a})

instance FromJSON VcardAddress where
        parseJSON
          = withObject "VcardAddress"
              (\ o ->
                 VcardAddress' <$>
                   (o .:? "pobox") <*> (o .:? "country") <*>
                     (o .:? "street")
                     <*> (o .:? "locality")
                     <*> (o .:? "code")
                     <*> (o .:? "region"))

instance ToJSON VcardAddress where
        toJSON VcardAddress'{..}
          = object
              (catMaybes
                 [("pobox" .=) <$> _vaPobox,
                  ("country" .=) <$> _vaCountry,
                  ("street" .=) <$> _vaStreet,
                  ("locality" .=) <$> _vaLocality,
                  ("code" .=) <$> _vaCode,
                  ("region" .=) <$> _vaRegion])

-- | The response message for the batch available spectrum query contains a
-- schedule of available spectrum for the device at multiple locations.
--
-- /See:/ 'pawsGetSpectrumBatchResponse' smart constructor.
data PawsGetSpectrumBatchResponse = PawsGetSpectrumBatchResponse'
    { _pNeedsSpectrumReport  :: !(Maybe Bool)
    , _pKind                 :: !Text
    , _pGeoSpectrumSchedules :: !(Maybe [GeoSpectrumSchedule])
    , _pMaxContiguousBwHz    :: !(Maybe (Textual Double))
    , _pVersion              :: !(Maybe Text)
    , _pRulesetInfo          :: !(Maybe RulesetInfo)
    , _pType                 :: !(Maybe Text)
    , _pDatabaseChange       :: !(Maybe DBUpdateSpec)
    , _pTimestamp            :: !(Maybe Text)
    , _pDeviceDesc           :: !(Maybe DeviceDescriptor)
    , _pMaxTotalBwHz         :: !(Maybe (Textual Double))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PawsGetSpectrumBatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pNeedsSpectrumReport'
--
-- * 'pKind'
--
-- * 'pGeoSpectrumSchedules'
--
-- * 'pMaxContiguousBwHz'
--
-- * 'pVersion'
--
-- * 'pRulesetInfo'
--
-- * 'pType'
--
-- * 'pDatabaseChange'
--
-- * 'pTimestamp'
--
-- * 'pDeviceDesc'
--
-- * 'pMaxTotalBwHz'
pawsGetSpectrumBatchResponse
    :: PawsGetSpectrumBatchResponse
pawsGetSpectrumBatchResponse =
    PawsGetSpectrumBatchResponse'
    { _pNeedsSpectrumReport = Nothing
    , _pKind = "spectrum#pawsGetSpectrumBatchResponse"
    , _pGeoSpectrumSchedules = Nothing
    , _pMaxContiguousBwHz = Nothing
    , _pVersion = Nothing
    , _pRulesetInfo = Nothing
    , _pType = Nothing
    , _pDatabaseChange = Nothing
    , _pTimestamp = Nothing
    , _pDeviceDesc = Nothing
    , _pMaxTotalBwHz = Nothing
    }

-- | For regulatory domains that require a spectrum-usage report from
-- devices, the database must return true for this parameter if the
-- geo-spectrum schedules list is not empty; otherwise, the database should
-- either return false or omit this parameter. If this parameter is present
-- and its value is true, the device must send a spectrum use notify
-- message to the database; otherwise, the device should not send the
-- notification.
pNeedsSpectrumReport :: Lens' PawsGetSpectrumBatchResponse (Maybe Bool)
pNeedsSpectrumReport
  = lens _pNeedsSpectrumReport
      (\ s a -> s{_pNeedsSpectrumReport = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"spectrum#pawsGetSpectrumBatchResponse\".
pKind :: Lens' PawsGetSpectrumBatchResponse Text
pKind = lens _pKind (\ s a -> s{_pKind = a})

-- | The available spectrum batch response must contain a geo-spectrum
-- schedule list, The list may be empty if spectrum is not available. The
-- database may return more than one geo-spectrum schedule to represent
-- future changes to the available spectrum. How far in advance a schedule
-- may be provided depends upon the applicable regulatory domain. The
-- database may return available spectrum for fewer geolocations than
-- requested. The device must not make assumptions about the order of the
-- entries in the list, and must use the geolocation value in each
-- geo-spectrum schedule entry to match available spectrum to a location.
pGeoSpectrumSchedules :: Lens' PawsGetSpectrumBatchResponse [GeoSpectrumSchedule]
pGeoSpectrumSchedules
  = lens _pGeoSpectrumSchedules
      (\ s a -> s{_pGeoSpectrumSchedules = a})
      . _Default
      . _Coerce

-- | The database may return a constraint on the allowed maximum contiguous
-- bandwidth (in Hertz). A regulatory domain may require the database to
-- return this parameter. When this parameter is present in the response,
-- the device must apply this constraint to its spectrum-selection logic to
-- ensure that no single block of spectrum has bandwidth that exceeds this
-- value.
pMaxContiguousBwHz :: Lens' PawsGetSpectrumBatchResponse (Maybe Double)
pMaxContiguousBwHz
  = lens _pMaxContiguousBwHz
      (\ s a -> s{_pMaxContiguousBwHz = a})
      . mapping _Coerce

-- | The PAWS version. Must be exactly 1.0. Required field.
pVersion :: Lens' PawsGetSpectrumBatchResponse (Maybe Text)
pVersion = lens _pVersion (\ s a -> s{_pVersion = a})

-- | The database should return ruleset information, which identifies the
-- applicable regulatory authority and ruleset for the available spectrum
-- batch response. If included, the device must use the corresponding
-- ruleset to interpret the response. Values provided in the returned
-- ruleset information, such as maxLocationChange, take precedence over any
-- conflicting values provided in the ruleset information returned in a
-- prior initialization response sent by the database to the device.
pRulesetInfo :: Lens' PawsGetSpectrumBatchResponse (Maybe RulesetInfo)
pRulesetInfo
  = lens _pRulesetInfo (\ s a -> s{_pRulesetInfo = a})

-- | The message type (e.g., INIT_REQ, AVAIL_SPECTRUM_REQ, ...). Required
-- field.
pType :: Lens' PawsGetSpectrumBatchResponse (Maybe Text)
pType = lens _pType (\ s a -> s{_pType = a})

-- | A database may include the databaseChange parameter to notify a device
-- of a change to its database URI, providing one or more alternate
-- database URIs. The device should use this information to update its list
-- of pre-configured databases by (only) replacing its entry for the
-- responding database with the list of alternate URIs.
pDatabaseChange :: Lens' PawsGetSpectrumBatchResponse (Maybe DBUpdateSpec)
pDatabaseChange
  = lens _pDatabaseChange
      (\ s a -> s{_pDatabaseChange = a})

-- | The database includes a timestamp of the form, YYYY-MM-DDThh:mm:ssZ
-- (Internet timestamp format per RFC3339), in its available spectrum batch
-- response. The timestamp should be used by the device as a reference for
-- the start and stop times specified in the response spectrum schedules.
pTimestamp :: Lens' PawsGetSpectrumBatchResponse (Maybe Text)
pTimestamp
  = lens _pTimestamp (\ s a -> s{_pTimestamp = a})

-- | The database must return in its available spectrum response the device
-- descriptor information it received in the master device\'s available
-- spectrum batch request.
pDeviceDesc :: Lens' PawsGetSpectrumBatchResponse (Maybe DeviceDescriptor)
pDeviceDesc
  = lens _pDeviceDesc (\ s a -> s{_pDeviceDesc = a})

-- | The database may return a constraint on the allowed maximum total
-- bandwidth (in Hertz), which does not need to be contiguous. A regulatory
-- domain may require the database to return this parameter. When this
-- parameter is present in the available spectrum batch response, the
-- device must apply this constraint to its spectrum-selection logic to
-- ensure that total bandwidth does not exceed this value.
pMaxTotalBwHz :: Lens' PawsGetSpectrumBatchResponse (Maybe Double)
pMaxTotalBwHz
  = lens _pMaxTotalBwHz
      (\ s a -> s{_pMaxTotalBwHz = a})
      . mapping _Coerce

instance FromJSON PawsGetSpectrumBatchResponse where
        parseJSON
          = withObject "PawsGetSpectrumBatchResponse"
              (\ o ->
                 PawsGetSpectrumBatchResponse' <$>
                   (o .:? "needsSpectrumReport") <*>
                     (o .:? "kind" .!=
                        "spectrum#pawsGetSpectrumBatchResponse")
                     <*> (o .:? "geoSpectrumSchedules" .!= mempty)
                     <*> (o .:? "maxContiguousBwHz")
                     <*> (o .:? "version")
                     <*> (o .:? "rulesetInfo")
                     <*> (o .:? "type")
                     <*> (o .:? "databaseChange")
                     <*> (o .:? "timestamp")
                     <*> (o .:? "deviceDesc")
                     <*> (o .:? "maxTotalBwHz"))

instance ToJSON PawsGetSpectrumBatchResponse where
        toJSON PawsGetSpectrumBatchResponse'{..}
          = object
              (catMaybes
                 [("needsSpectrumReport" .=) <$>
                    _pNeedsSpectrumReport,
                  Just ("kind" .= _pKind),
                  ("geoSpectrumSchedules" .=) <$>
                    _pGeoSpectrumSchedules,
                  ("maxContiguousBwHz" .=) <$> _pMaxContiguousBwHz,
                  ("version" .=) <$> _pVersion,
                  ("rulesetInfo" .=) <$> _pRulesetInfo,
                  ("type" .=) <$> _pType,
                  ("databaseChange" .=) <$> _pDatabaseChange,
                  ("timestamp" .=) <$> _pTimestamp,
                  ("deviceDesc" .=) <$> _pDeviceDesc,
                  ("maxTotalBwHz" .=) <$> _pMaxTotalBwHz])

-- | The device validity element describes whether a particular device is
-- valid to operate in the regulatory domain.
--
-- /See:/ 'deviceValidity' smart constructor.
data DeviceValidity = DeviceValidity'
    { _dvIsValid    :: !(Maybe Bool)
    , _dvReason     :: !(Maybe Text)
    , _dvDeviceDesc :: !(Maybe DeviceDescriptor)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeviceValidity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvIsValid'
--
-- * 'dvReason'
--
-- * 'dvDeviceDesc'
deviceValidity
    :: DeviceValidity
deviceValidity =
    DeviceValidity'
    { _dvIsValid = Nothing
    , _dvReason = Nothing
    , _dvDeviceDesc = Nothing
    }

-- | The validity status: true if the device is valid for operation, false
-- otherwise. It will always be present.
dvIsValid :: Lens' DeviceValidity (Maybe Bool)
dvIsValid
  = lens _dvIsValid (\ s a -> s{_dvIsValid = a})

-- | If the device identifier is not valid, the database may include a
-- reason. The reason may be in any language. The length of the value
-- should not exceed 128 characters.
dvReason :: Lens' DeviceValidity (Maybe Text)
dvReason = lens _dvReason (\ s a -> s{_dvReason = a})

-- | The descriptor of the device for which the validity check was requested.
-- It will always be present.
dvDeviceDesc :: Lens' DeviceValidity (Maybe DeviceDescriptor)
dvDeviceDesc
  = lens _dvDeviceDesc (\ s a -> s{_dvDeviceDesc = a})

instance FromJSON DeviceValidity where
        parseJSON
          = withObject "DeviceValidity"
              (\ o ->
                 DeviceValidity' <$>
                   (o .:? "isValid") <*> (o .:? "reason") <*>
                     (o .:? "deviceDesc"))

instance ToJSON DeviceValidity where
        toJSON DeviceValidity'{..}
          = object
              (catMaybes
                 [("isValid" .=) <$> _dvIsValid,
                  ("reason" .=) <$> _dvReason,
                  ("deviceDesc" .=) <$> _dvDeviceDesc])

-- | A \"point\" with uncertainty is represented using the Ellipse shape.
--
-- /See:/ 'geoLocationEllipse' smart constructor.
data GeoLocationEllipse = GeoLocationEllipse'
    { _gleSemiMajorAxis :: !(Maybe (Textual Double))
    , _gleCenter        :: !(Maybe GeoLocationPoint)
    , _gleOrientation   :: !(Maybe (Textual Double))
    , _gleSemiMinorAxis :: !(Maybe (Textual Double))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeoLocationEllipse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gleSemiMajorAxis'
--
-- * 'gleCenter'
--
-- * 'gleOrientation'
--
-- * 'gleSemiMinorAxis'
geoLocationEllipse
    :: GeoLocationEllipse
geoLocationEllipse =
    GeoLocationEllipse'
    { _gleSemiMajorAxis = Nothing
    , _gleCenter = Nothing
    , _gleOrientation = Nothing
    , _gleSemiMinorAxis = Nothing
    }

-- | A floating-point number that expresses the location uncertainty along
-- the major axis of the ellipse. May be required by the regulatory domain.
-- When the uncertainty is optional, the default value is 0.
gleSemiMajorAxis :: Lens' GeoLocationEllipse (Maybe Double)
gleSemiMajorAxis
  = lens _gleSemiMajorAxis
      (\ s a -> s{_gleSemiMajorAxis = a})
      . mapping _Coerce

-- | A required geo-spatial point representing the center of the ellipse.
gleCenter :: Lens' GeoLocationEllipse (Maybe GeoLocationPoint)
gleCenter
  = lens _gleCenter (\ s a -> s{_gleCenter = a})

-- | A floating-point number that expresses the orientation of the ellipse,
-- representing the rotation, in degrees, of the semi-major axis from North
-- towards the East. For example, when the uncertainty is greatest along
-- the North-South direction, orientation is 0 degrees; conversely, if the
-- uncertainty is greatest along the East-West direction, orientation is 90
-- degrees. When orientation is not present, the orientation is assumed to
-- be 0.
gleOrientation :: Lens' GeoLocationEllipse (Maybe Double)
gleOrientation
  = lens _gleOrientation
      (\ s a -> s{_gleOrientation = a})
      . mapping _Coerce

-- | A floating-point number that expresses the location uncertainty along
-- the minor axis of the ellipse. May be required by the regulatory domain.
-- When the uncertainty is optional, the default value is 0.
gleSemiMinorAxis :: Lens' GeoLocationEllipse (Maybe Double)
gleSemiMinorAxis
  = lens _gleSemiMinorAxis
      (\ s a -> s{_gleSemiMinorAxis = a})
      . mapping _Coerce

instance FromJSON GeoLocationEllipse where
        parseJSON
          = withObject "GeoLocationEllipse"
              (\ o ->
                 GeoLocationEllipse' <$>
                   (o .:? "semiMajorAxis") <*> (o .:? "center") <*>
                     (o .:? "orientation")
                     <*> (o .:? "semiMinorAxis"))

instance ToJSON GeoLocationEllipse where
        toJSON GeoLocationEllipse'{..}
          = object
              (catMaybes
                 [("semiMajorAxis" .=) <$> _gleSemiMajorAxis,
                  ("center" .=) <$> _gleCenter,
                  ("orientation" .=) <$> _gleOrientation,
                  ("semiMinorAxis" .=) <$> _gleSemiMinorAxis])

-- | This contains parameters for the ruleset of a regulatory domain that is
-- communicated using the initialization and available-spectrum processes.
--
-- /See:/ 'rulesetInfo' smart constructor.
data RulesetInfo = RulesetInfo'
    { _riRulesetIds        :: !(Maybe [Text])
    , _riMaxPollingSecs    :: !(Maybe (Textual Int32))
    , _riMaxLocationChange :: !(Maybe (Textual Double))
    , _riAuthority         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RulesetInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riRulesetIds'
--
-- * 'riMaxPollingSecs'
--
-- * 'riMaxLocationChange'
--
-- * 'riAuthority'
rulesetInfo
    :: RulesetInfo
rulesetInfo =
    RulesetInfo'
    { _riRulesetIds = Nothing
    , _riMaxPollingSecs = Nothing
    , _riMaxLocationChange = Nothing
    , _riAuthority = Nothing
    }

-- | The identifiers of the rulesets supported for the device\'s location.
-- The database should include at least one applicable ruleset in the
-- initialization response. The device may use the ruleset identifiers to
-- determine parameters to include in subsequent requests. Within the
-- context of the available-spectrum responses, the database should include
-- the identifier of the ruleset that it used to determine the
-- available-spectrum response. If included, the device must use the
-- specified ruleset to interpret the response. If the device does not
-- support the indicated ruleset, it must not operate in the spectrum
-- governed by the ruleset.
riRulesetIds :: Lens' RulesetInfo [Text]
riRulesetIds
  = lens _riRulesetIds (\ s a -> s{_riRulesetIds = a})
      . _Default
      . _Coerce

-- | The maximum duration, in seconds, between requests for available
-- spectrum. It is required in the initialization response, but optional
-- otherwise. The device must contact the database to get available
-- spectrum no less frequently than this duration. If the new spectrum
-- information indicates that the device is using spectrum that is no
-- longer available, it must immediately cease use of those frequencies
-- under rules for database-managed spectrum. If this value is provided
-- within the context of an available-spectrum response, it takes
-- precedence over the value within the initialization response.
riMaxPollingSecs :: Lens' RulesetInfo (Maybe Int32)
riMaxPollingSecs
  = lens _riMaxPollingSecs
      (\ s a -> s{_riMaxPollingSecs = a})
      . mapping _Coerce

-- | The maximum location change in meters is required in the initialization
-- response, but optional otherwise. When the device changes location by
-- more than this specified distance, it must contact the database to get
-- the available spectrum for the new location. If the device is using
-- spectrum that is no longer available, it must immediately cease use of
-- the spectrum under rules for database-managed spectrum. If this value is
-- provided within the context of an available-spectrum response, it takes
-- precedence over the value within the initialization response.
riMaxLocationChange :: Lens' RulesetInfo (Maybe Double)
riMaxLocationChange
  = lens _riMaxLocationChange
      (\ s a -> s{_riMaxLocationChange = a})
      . mapping _Coerce

-- | The regulatory domain to which the ruleset belongs is required. It must
-- be a 2-letter country code. The device should use this to determine
-- additional device behavior required by the associated regulatory domain.
riAuthority :: Lens' RulesetInfo (Maybe Text)
riAuthority
  = lens _riAuthority (\ s a -> s{_riAuthority = a})

instance FromJSON RulesetInfo where
        parseJSON
          = withObject "RulesetInfo"
              (\ o ->
                 RulesetInfo' <$>
                   (o .:? "rulesetIds" .!= mempty) <*>
                     (o .:? "maxPollingSecs")
                     <*> (o .:? "maxLocationChange")
                     <*> (o .:? "authority"))

instance ToJSON RulesetInfo where
        toJSON RulesetInfo'{..}
          = object
              (catMaybes
                 [("rulesetIds" .=) <$> _riRulesetIds,
                  ("maxPollingSecs" .=) <$> _riMaxPollingSecs,
                  ("maxLocationChange" .=) <$> _riMaxLocationChange,
                  ("authority" .=) <$> _riAuthority])

-- | The registration request message contains the required registration
-- parameters.
--
-- /See:/ 'pawsRegisterRequest' smart constructor.
data PawsRegisterRequest = PawsRegisterRequest'
    { _pawAntenna     :: !(Maybe AntennaCharacteristics)
    , _pawLocation    :: !(Maybe GeoLocation)
    , _pawDeviceOwner :: !(Maybe DeviceOwner)
    , _pawVersion     :: !(Maybe Text)
    , _pawType        :: !(Maybe Text)
    , _pawDeviceDesc  :: !(Maybe DeviceDescriptor)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PawsRegisterRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pawAntenna'
--
-- * 'pawLocation'
--
-- * 'pawDeviceOwner'
--
-- * 'pawVersion'
--
-- * 'pawType'
--
-- * 'pawDeviceDesc'
pawsRegisterRequest
    :: PawsRegisterRequest
pawsRegisterRequest =
    PawsRegisterRequest'
    { _pawAntenna = Nothing
    , _pawLocation = Nothing
    , _pawDeviceOwner = Nothing
    , _pawVersion = Nothing
    , _pawType = Nothing
    , _pawDeviceDesc = Nothing
    }

-- | Antenna characteristics, including its height and height type.
pawAntenna :: Lens' PawsRegisterRequest (Maybe AntennaCharacteristics)
pawAntenna
  = lens _pawAntenna (\ s a -> s{_pawAntenna = a})

-- | A device\'s geolocation is required.
pawLocation :: Lens' PawsRegisterRequest (Maybe GeoLocation)
pawLocation
  = lens _pawLocation (\ s a -> s{_pawLocation = a})

-- | Device owner information is required.
pawDeviceOwner :: Lens' PawsRegisterRequest (Maybe DeviceOwner)
pawDeviceOwner
  = lens _pawDeviceOwner
      (\ s a -> s{_pawDeviceOwner = a})

-- | The PAWS version. Must be exactly 1.0. Required field.
pawVersion :: Lens' PawsRegisterRequest (Maybe Text)
pawVersion
  = lens _pawVersion (\ s a -> s{_pawVersion = a})

-- | The message type (e.g., INIT_REQ, AVAIL_SPECTRUM_REQ, ...). Required
-- field.
pawType :: Lens' PawsRegisterRequest (Maybe Text)
pawType = lens _pawType (\ s a -> s{_pawType = a})

-- | A DeviceDescriptor is required.
pawDeviceDesc :: Lens' PawsRegisterRequest (Maybe DeviceDescriptor)
pawDeviceDesc
  = lens _pawDeviceDesc
      (\ s a -> s{_pawDeviceDesc = a})

instance FromJSON PawsRegisterRequest where
        parseJSON
          = withObject "PawsRegisterRequest"
              (\ o ->
                 PawsRegisterRequest' <$>
                   (o .:? "antenna") <*> (o .:? "location") <*>
                     (o .:? "deviceOwner")
                     <*> (o .:? "version")
                     <*> (o .:? "type")
                     <*> (o .:? "deviceDesc"))

instance ToJSON PawsRegisterRequest where
        toJSON PawsRegisterRequest'{..}
          = object
              (catMaybes
                 [("antenna" .=) <$> _pawAntenna,
                  ("location" .=) <$> _pawLocation,
                  ("deviceOwner" .=) <$> _pawDeviceOwner,
                  ("version" .=) <$> _pawVersion,
                  ("type" .=) <$> _pawType,
                  ("deviceDesc" .=) <$> _pawDeviceDesc])

-- | An empty response to the notification.
--
-- /See:/ 'pawsNotifySpectrumUseResponse' smart constructor.
data PawsNotifySpectrumUseResponse = PawsNotifySpectrumUseResponse'
    { _pnsurnKind    :: !Text
    , _pnsurnVersion :: !(Maybe Text)
    , _pnsurnType    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PawsNotifySpectrumUseResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pnsurnKind'
--
-- * 'pnsurnVersion'
--
-- * 'pnsurnType'
pawsNotifySpectrumUseResponse
    :: PawsNotifySpectrumUseResponse
pawsNotifySpectrumUseResponse =
    PawsNotifySpectrumUseResponse'
    { _pnsurnKind = "spectrum#pawsNotifySpectrumUseResponse"
    , _pnsurnVersion = Nothing
    , _pnsurnType = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"spectrum#pawsNotifySpectrumUseResponse\".
pnsurnKind :: Lens' PawsNotifySpectrumUseResponse Text
pnsurnKind
  = lens _pnsurnKind (\ s a -> s{_pnsurnKind = a})

-- | The PAWS version. Must be exactly 1.0. Required field.
pnsurnVersion :: Lens' PawsNotifySpectrumUseResponse (Maybe Text)
pnsurnVersion
  = lens _pnsurnVersion
      (\ s a -> s{_pnsurnVersion = a})

-- | The message type (e.g., INIT_REQ, AVAIL_SPECTRUM_REQ, ...). Required
-- field.
pnsurnType :: Lens' PawsNotifySpectrumUseResponse (Maybe Text)
pnsurnType
  = lens _pnsurnType (\ s a -> s{_pnsurnType = a})

instance FromJSON PawsNotifySpectrumUseResponse where
        parseJSON
          = withObject "PawsNotifySpectrumUseResponse"
              (\ o ->
                 PawsNotifySpectrumUseResponse' <$>
                   (o .:? "kind" .!=
                      "spectrum#pawsNotifySpectrumUseResponse")
                     <*> (o .:? "version")
                     <*> (o .:? "type"))

instance ToJSON PawsNotifySpectrumUseResponse where
        toJSON PawsNotifySpectrumUseResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _pnsurnKind),
                  ("version" .=) <$> _pnsurnVersion,
                  ("type" .=) <$> _pnsurnType])

-- | This message contains the name and URI of a database.
--
-- /See:/ 'databaseSpec' smart constructor.
data DatabaseSpec = DatabaseSpec'
    { _dsURI  :: !(Maybe Text)
    , _dsName :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatabaseSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsURI'
--
-- * 'dsName'
databaseSpec
    :: DatabaseSpec
databaseSpec =
    DatabaseSpec'
    { _dsURI = Nothing
    , _dsName = Nothing
    }

-- | The corresponding URI of the database.
dsURI :: Lens' DatabaseSpec (Maybe Text)
dsURI = lens _dsURI (\ s a -> s{_dsURI = a})

-- | The display name for a database.
dsName :: Lens' DatabaseSpec (Maybe Text)
dsName = lens _dsName (\ s a -> s{_dsName = a})

instance FromJSON DatabaseSpec where
        parseJSON
          = withObject "DatabaseSpec"
              (\ o ->
                 DatabaseSpec' <$> (o .:? "uri") <*> (o .:? "name"))

instance ToJSON DatabaseSpec where
        toJSON DatabaseSpec'{..}
          = object
              (catMaybes
                 [("uri" .=) <$> _dsURI, ("name" .=) <$> _dsName])

-- | Available spectrum can be logically characterized by a list of frequency
-- ranges and permissible power levels for each range.
--
-- /See:/ 'spectrumMessage' smart constructor.
data SpectrumMessage = SpectrumMessage'
    { _smBandwidth       :: !(Maybe (Textual Double))
    , _smFrequencyRanges :: !(Maybe [FrequencyRange])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SpectrumMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smBandwidth'
--
-- * 'smFrequencyRanges'
spectrumMessage
    :: SpectrumMessage
spectrumMessage =
    SpectrumMessage'
    { _smBandwidth = Nothing
    , _smFrequencyRanges = Nothing
    }

-- | The bandwidth (in Hertz) for which permissible power levels are
-- specified. For example, FCC regulation would require only one spectrum
-- specification at 6MHz bandwidth, but Ofcom regulation would require two
-- specifications, at 0.1MHz and 8MHz. This parameter may be empty if there
-- is no available spectrum. It will be present otherwise.
smBandwidth :: Lens' SpectrumMessage (Maybe Double)
smBandwidth
  = lens _smBandwidth (\ s a -> s{_smBandwidth = a}) .
      mapping _Coerce

-- | The list of frequency ranges and permissible power levels. The list may
-- be empty if there is no available spectrum, otherwise it will be
-- present.
smFrequencyRanges :: Lens' SpectrumMessage [FrequencyRange]
smFrequencyRanges
  = lens _smFrequencyRanges
      (\ s a -> s{_smFrequencyRanges = a})
      . _Default
      . _Coerce

instance FromJSON SpectrumMessage where
        parseJSON
          = withObject "SpectrumMessage"
              (\ o ->
                 SpectrumMessage' <$>
                   (o .:? "bandwidth") <*>
                     (o .:? "frequencyRanges" .!= mempty))

instance ToJSON SpectrumMessage where
        toJSON SpectrumMessage'{..}
          = object
              (catMaybes
                 [("bandwidth" .=) <$> _smBandwidth,
                  ("frequencyRanges" .=) <$> _smFrequencyRanges])

-- | This parameter is used to specify the geolocation of the device.
--
-- /See:/ 'geoLocation' smart constructor.
data GeoLocation = GeoLocation'
    { _glConfidence :: !(Maybe (Textual Int32))
    , _glPoint      :: !(Maybe GeoLocationEllipse)
    , _glRegion     :: !(Maybe GeoLocationPolygon)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeoLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glConfidence'
--
-- * 'glPoint'
--
-- * 'glRegion'
geoLocation
    :: GeoLocation
geoLocation =
    GeoLocation'
    { _glConfidence = Nothing
    , _glPoint = Nothing
    , _glRegion = Nothing
    }

-- | The location confidence level, as an integer percentage, may be
-- required, depending on the regulatory domain. When the parameter is
-- optional and not provided, its value is assumed to be 95. Valid values
-- range from 0 to 99, since, in practice, 100-percent confidence is not
-- achievable. The confidence value is meaningful only when geolocation
-- refers to a point with uncertainty.
glConfidence :: Lens' GeoLocation (Maybe Int32)
glConfidence
  = lens _glConfidence (\ s a -> s{_glConfidence = a})
      . mapping _Coerce

-- | If present, indicates that the geolocation represents a point.
-- Paradoxically, a point is parameterized using an ellipse, where the
-- center represents the location of the point and the distances along the
-- major and minor axes represent the uncertainty. The uncertainty values
-- may be required, depending on the regulatory domain.
glPoint :: Lens' GeoLocation (Maybe GeoLocationEllipse)
glPoint = lens _glPoint (\ s a -> s{_glPoint = a})

-- | If present, indicates that the geolocation represents a region. Database
-- support for regions is optional.
glRegion :: Lens' GeoLocation (Maybe GeoLocationPolygon)
glRegion = lens _glRegion (\ s a -> s{_glRegion = a})

instance FromJSON GeoLocation where
        parseJSON
          = withObject "GeoLocation"
              (\ o ->
                 GeoLocation' <$>
                   (o .:? "confidence") <*> (o .:? "point") <*>
                     (o .:? "region"))

instance ToJSON GeoLocation where
        toJSON GeoLocation'{..}
          = object
              (catMaybes
                 [("confidence" .=) <$> _glConfidence,
                  ("point" .=) <$> _glPoint,
                  ("region" .=) <$> _glRegion])

-- | A specific range of frequencies together with the associated maximum
-- power level and channel identifier.
--
-- /See:/ 'frequencyRange' smart constructor.
data FrequencyRange = FrequencyRange'
    { _frStopHz      :: !(Maybe (Textual Double))
    , _frMaxPowerDBm :: !(Maybe (Textual Double))
    , _frChannelId   :: !(Maybe Text)
    , _frStartHz     :: !(Maybe (Textual Double))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FrequencyRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'frStopHz'
--
-- * 'frMaxPowerDBm'
--
-- * 'frChannelId'
--
-- * 'frStartHz'
frequencyRange
    :: FrequencyRange
frequencyRange =
    FrequencyRange'
    { _frStopHz = Nothing
    , _frMaxPowerDBm = Nothing
    , _frChannelId = Nothing
    , _frStartHz = Nothing
    }

-- | The required exclusive end of the frequency range (in Hertz).
frStopHz :: Lens' FrequencyRange (Maybe Double)
frStopHz
  = lens _frStopHz (\ s a -> s{_frStopHz = a}) .
      mapping _Coerce

-- | The maximum total power level (EIRP)—computed over the corresponding
-- operating bandwidth—that is permitted within the frequency range.
-- Depending on the context in which the frequency-range element appears,
-- this value may be required. For example, it is required in the
-- available-spectrum response, available-spectrum-batch response, and
-- spectrum-use notification message, but it should not be present (it is
-- not applicable) when the frequency range appears inside a
-- device-capabilities message.
frMaxPowerDBm :: Lens' FrequencyRange (Maybe Double)
frMaxPowerDBm
  = lens _frMaxPowerDBm
      (\ s a -> s{_frMaxPowerDBm = a})
      . mapping _Coerce

-- | The database may include a channel identifier, when applicable. When it
-- is included, the device should treat it as informative. The length of
-- the identifier should not exceed 16 characters.
frChannelId :: Lens' FrequencyRange (Maybe Text)
frChannelId
  = lens _frChannelId (\ s a -> s{_frChannelId = a})

-- | The required inclusive start of the frequency range (in Hertz).
frStartHz :: Lens' FrequencyRange (Maybe Double)
frStartHz
  = lens _frStartHz (\ s a -> s{_frStartHz = a}) .
      mapping _Coerce

instance FromJSON FrequencyRange where
        parseJSON
          = withObject "FrequencyRange"
              (\ o ->
                 FrequencyRange' <$>
                   (o .:? "stopHz") <*> (o .:? "maxPowerDBm") <*>
                     (o .:? "channelId")
                     <*> (o .:? "startHz"))

instance ToJSON FrequencyRange where
        toJSON FrequencyRange'{..}
          = object
              (catMaybes
                 [("stopHz" .=) <$> _frStopHz,
                  ("maxPowerDBm" .=) <$> _frMaxPowerDBm,
                  ("channelId" .=) <$> _frChannelId,
                  ("startHz" .=) <$> _frStartHz])

-- | The response message for the available spectrum query which contains a
-- schedule of available spectrum for the device.
--
-- /See:/ 'pawsGetSpectrumResponse' smart constructor.
data PawsGetSpectrumResponse = PawsGetSpectrumResponse'
    { _pgsrgNeedsSpectrumReport :: !(Maybe Bool)
    , _pgsrgSpectrumSchedules   :: !(Maybe [SpectrumSchedule])
    , _pgsrgKind                :: !Text
    , _pgsrgMaxContiguousBwHz   :: !(Maybe (Textual Double))
    , _pgsrgVersion             :: !(Maybe Text)
    , _pgsrgRulesetInfo         :: !(Maybe RulesetInfo)
    , _pgsrgType                :: !(Maybe Text)
    , _pgsrgDatabaseChange      :: !(Maybe DBUpdateSpec)
    , _pgsrgTimestamp           :: !(Maybe Text)
    , _pgsrgDeviceDesc          :: !(Maybe DeviceDescriptor)
    , _pgsrgMaxTotalBwHz        :: !(Maybe (Textual Double))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PawsGetSpectrumResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgsrgNeedsSpectrumReport'
--
-- * 'pgsrgSpectrumSchedules'
--
-- * 'pgsrgKind'
--
-- * 'pgsrgMaxContiguousBwHz'
--
-- * 'pgsrgVersion'
--
-- * 'pgsrgRulesetInfo'
--
-- * 'pgsrgType'
--
-- * 'pgsrgDatabaseChange'
--
-- * 'pgsrgTimestamp'
--
-- * 'pgsrgDeviceDesc'
--
-- * 'pgsrgMaxTotalBwHz'
pawsGetSpectrumResponse
    :: PawsGetSpectrumResponse
pawsGetSpectrumResponse =
    PawsGetSpectrumResponse'
    { _pgsrgNeedsSpectrumReport = Nothing
    , _pgsrgSpectrumSchedules = Nothing
    , _pgsrgKind = "spectrum#pawsGetSpectrumResponse"
    , _pgsrgMaxContiguousBwHz = Nothing
    , _pgsrgVersion = Nothing
    , _pgsrgRulesetInfo = Nothing
    , _pgsrgType = Nothing
    , _pgsrgDatabaseChange = Nothing
    , _pgsrgTimestamp = Nothing
    , _pgsrgDeviceDesc = Nothing
    , _pgsrgMaxTotalBwHz = Nothing
    }

-- | For regulatory domains that require a spectrum-usage report from
-- devices, the database must return true for this parameter if the
-- spectrum schedule list is not empty; otherwise, the database will either
-- return false or omit this parameter. If this parameter is present and
-- its value is true, the device must send a spectrum use notify message to
-- the database; otherwise, the device must not send the notification.
pgsrgNeedsSpectrumReport :: Lens' PawsGetSpectrumResponse (Maybe Bool)
pgsrgNeedsSpectrumReport
  = lens _pgsrgNeedsSpectrumReport
      (\ s a -> s{_pgsrgNeedsSpectrumReport = a})

-- | The available spectrum response must contain a spectrum schedule list.
-- The list may be empty if spectrum is not available. The database may
-- return more than one spectrum schedule to represent future changes to
-- the available spectrum. How far in advance a schedule may be provided
-- depends on the applicable regulatory domain.
pgsrgSpectrumSchedules :: Lens' PawsGetSpectrumResponse [SpectrumSchedule]
pgsrgSpectrumSchedules
  = lens _pgsrgSpectrumSchedules
      (\ s a -> s{_pgsrgSpectrumSchedules = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"spectrum#pawsGetSpectrumResponse\".
pgsrgKind :: Lens' PawsGetSpectrumResponse Text
pgsrgKind
  = lens _pgsrgKind (\ s a -> s{_pgsrgKind = a})

-- | The database may return a constraint on the allowed maximum contiguous
-- bandwidth (in Hertz). A regulatory domain may require the database to
-- return this parameter. When this parameter is present in the response,
-- the device must apply this constraint to its spectrum-selection logic to
-- ensure that no single block of spectrum has bandwidth that exceeds this
-- value.
pgsrgMaxContiguousBwHz :: Lens' PawsGetSpectrumResponse (Maybe Double)
pgsrgMaxContiguousBwHz
  = lens _pgsrgMaxContiguousBwHz
      (\ s a -> s{_pgsrgMaxContiguousBwHz = a})
      . mapping _Coerce

-- | The PAWS version. Must be exactly 1.0. Required field.
pgsrgVersion :: Lens' PawsGetSpectrumResponse (Maybe Text)
pgsrgVersion
  = lens _pgsrgVersion (\ s a -> s{_pgsrgVersion = a})

-- | The database should return ruleset information, which identifies the
-- applicable regulatory authority and ruleset for the available spectrum
-- response. If included, the device must use the corresponding ruleset to
-- interpret the response. Values provided in the returned ruleset
-- information, such as maxLocationChange, take precedence over any
-- conflicting values provided in the ruleset information returned in a
-- prior initialization response sent by the database to the device.
pgsrgRulesetInfo :: Lens' PawsGetSpectrumResponse (Maybe RulesetInfo)
pgsrgRulesetInfo
  = lens _pgsrgRulesetInfo
      (\ s a -> s{_pgsrgRulesetInfo = a})

-- | The message type (e.g., INIT_REQ, AVAIL_SPECTRUM_REQ, ...). Required
-- field.
pgsrgType :: Lens' PawsGetSpectrumResponse (Maybe Text)
pgsrgType
  = lens _pgsrgType (\ s a -> s{_pgsrgType = a})

-- | A database may include the databaseChange parameter to notify a device
-- of a change to its database URI, providing one or more alternate
-- database URIs. The device should use this information to update its list
-- of pre-configured databases by (only) replacing its entry for the
-- responding database with the list of alternate URIs.
pgsrgDatabaseChange :: Lens' PawsGetSpectrumResponse (Maybe DBUpdateSpec)
pgsrgDatabaseChange
  = lens _pgsrgDatabaseChange
      (\ s a -> s{_pgsrgDatabaseChange = a})

-- | The database includes a timestamp of the form YYYY-MM-DDThh:mm:ssZ
-- (Internet timestamp format per RFC3339) in its available spectrum
-- response. The timestamp should be used by the device as a reference for
-- the start and stop times specified in the response spectrum schedules.
pgsrgTimestamp :: Lens' PawsGetSpectrumResponse (Maybe Text)
pgsrgTimestamp
  = lens _pgsrgTimestamp
      (\ s a -> s{_pgsrgTimestamp = a})

-- | The database must return, in its available spectrum response, the device
-- descriptor information it received in the master device\'s available
-- spectrum request.
pgsrgDeviceDesc :: Lens' PawsGetSpectrumResponse (Maybe DeviceDescriptor)
pgsrgDeviceDesc
  = lens _pgsrgDeviceDesc
      (\ s a -> s{_pgsrgDeviceDesc = a})

-- | The database may return a constraint on the allowed maximum total
-- bandwidth (in Hertz), which need not be contiguous. A regulatory domain
-- may require the database to return this parameter. When this parameter
-- is present in the available spectrum response, the device must apply
-- this constraint to its spectrum-selection logic to ensure that total
-- bandwidth does not exceed this value.
pgsrgMaxTotalBwHz :: Lens' PawsGetSpectrumResponse (Maybe Double)
pgsrgMaxTotalBwHz
  = lens _pgsrgMaxTotalBwHz
      (\ s a -> s{_pgsrgMaxTotalBwHz = a})
      . mapping _Coerce

instance FromJSON PawsGetSpectrumResponse where
        parseJSON
          = withObject "PawsGetSpectrumResponse"
              (\ o ->
                 PawsGetSpectrumResponse' <$>
                   (o .:? "needsSpectrumReport") <*>
                     (o .:? "spectrumSchedules" .!= mempty)
                     <*>
                     (o .:? "kind" .!= "spectrum#pawsGetSpectrumResponse")
                     <*> (o .:? "maxContiguousBwHz")
                     <*> (o .:? "version")
                     <*> (o .:? "rulesetInfo")
                     <*> (o .:? "type")
                     <*> (o .:? "databaseChange")
                     <*> (o .:? "timestamp")
                     <*> (o .:? "deviceDesc")
                     <*> (o .:? "maxTotalBwHz"))

instance ToJSON PawsGetSpectrumResponse where
        toJSON PawsGetSpectrumResponse'{..}
          = object
              (catMaybes
                 [("needsSpectrumReport" .=) <$>
                    _pgsrgNeedsSpectrumReport,
                  ("spectrumSchedules" .=) <$> _pgsrgSpectrumSchedules,
                  Just ("kind" .= _pgsrgKind),
                  ("maxContiguousBwHz" .=) <$> _pgsrgMaxContiguousBwHz,
                  ("version" .=) <$> _pgsrgVersion,
                  ("rulesetInfo" .=) <$> _pgsrgRulesetInfo,
                  ("type" .=) <$> _pgsrgType,
                  ("databaseChange" .=) <$> _pgsrgDatabaseChange,
                  ("timestamp" .=) <$> _pgsrgTimestamp,
                  ("deviceDesc" .=) <$> _pgsrgDeviceDesc,
                  ("maxTotalBwHz" .=) <$> _pgsrgMaxTotalBwHz])

-- | The device validation request message.
--
-- /See:/ 'pawsVerifyDeviceRequest' smart constructor.
data PawsVerifyDeviceRequest = PawsVerifyDeviceRequest'
    { _pvdrvVersion     :: !(Maybe Text)
    , _pvdrvDeviceDescs :: !(Maybe [DeviceDescriptor])
    , _pvdrvType        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PawsVerifyDeviceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pvdrvVersion'
--
-- * 'pvdrvDeviceDescs'
--
-- * 'pvdrvType'
pawsVerifyDeviceRequest
    :: PawsVerifyDeviceRequest
pawsVerifyDeviceRequest =
    PawsVerifyDeviceRequest'
    { _pvdrvVersion = Nothing
    , _pvdrvDeviceDescs = Nothing
    , _pvdrvType = Nothing
    }

-- | The PAWS version. Must be exactly 1.0. Required field.
pvdrvVersion :: Lens' PawsVerifyDeviceRequest (Maybe Text)
pvdrvVersion
  = lens _pvdrvVersion (\ s a -> s{_pvdrvVersion = a})

-- | A list of device descriptors, which specifies the slave devices to be
-- validated, is required.
pvdrvDeviceDescs :: Lens' PawsVerifyDeviceRequest [DeviceDescriptor]
pvdrvDeviceDescs
  = lens _pvdrvDeviceDescs
      (\ s a -> s{_pvdrvDeviceDescs = a})
      . _Default
      . _Coerce

-- | The message type (e.g., INIT_REQ, AVAIL_SPECTRUM_REQ, ...). Required
-- field.
pvdrvType :: Lens' PawsVerifyDeviceRequest (Maybe Text)
pvdrvType
  = lens _pvdrvType (\ s a -> s{_pvdrvType = a})

instance FromJSON PawsVerifyDeviceRequest where
        parseJSON
          = withObject "PawsVerifyDeviceRequest"
              (\ o ->
                 PawsVerifyDeviceRequest' <$>
                   (o .:? "version") <*>
                     (o .:? "deviceDescs" .!= mempty)
                     <*> (o .:? "type"))

instance ToJSON PawsVerifyDeviceRequest where
        toJSON PawsVerifyDeviceRequest'{..}
          = object
              (catMaybes
                 [("version" .=) <$> _pvdrvVersion,
                  ("deviceDescs" .=) <$> _pvdrvDeviceDescs,
                  ("type" .=) <$> _pvdrvType])

-- | The device descriptor contains parameters that identify the specific
-- device, such as its manufacturer serial number, regulatory-specific
-- identifier (e.g., FCC ID), and any other device characteristics required
-- by regulatory domains.
--
-- /See:/ 'deviceDescriptor' smart constructor.
data DeviceDescriptor = DeviceDescriptor'
    { _ddEtsiEnDeviceEmissionsClass :: !(Maybe Text)
    , _ddRulesetIds                 :: !(Maybe [Text])
    , _ddModelId                    :: !(Maybe Text)
    , _ddEtsiEnDeviceType           :: !(Maybe Text)
    , _ddEtsiEnTechnologyId         :: !(Maybe Text)
    , _ddFccId                      :: !(Maybe Text)
    , _ddManufacturerId             :: !(Maybe Text)
    , _ddFccTvbdDeviceType          :: !(Maybe Text)
    , _ddEtsiEnDeviceCategory       :: !(Maybe Text)
    , _ddSerialNumber               :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeviceDescriptor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddEtsiEnDeviceEmissionsClass'
--
-- * 'ddRulesetIds'
--
-- * 'ddModelId'
--
-- * 'ddEtsiEnDeviceType'
--
-- * 'ddEtsiEnTechnologyId'
--
-- * 'ddFccId'
--
-- * 'ddManufacturerId'
--
-- * 'ddFccTvbdDeviceType'
--
-- * 'ddEtsiEnDeviceCategory'
--
-- * 'ddSerialNumber'
deviceDescriptor
    :: DeviceDescriptor
deviceDescriptor =
    DeviceDescriptor'
    { _ddEtsiEnDeviceEmissionsClass = Nothing
    , _ddRulesetIds = Nothing
    , _ddModelId = Nothing
    , _ddEtsiEnDeviceType = Nothing
    , _ddEtsiEnTechnologyId = Nothing
    , _ddFccId = Nothing
    , _ddManufacturerId = Nothing
    , _ddFccTvbdDeviceType = Nothing
    , _ddEtsiEnDeviceCategory = Nothing
    , _ddSerialNumber = Nothing
    }

-- | Specifies the ETSI white space device emissions class. The values are
-- represented by numeric strings, such as 1, 2, etc. Consult the ETSI
-- documentation for details about the device types.
ddEtsiEnDeviceEmissionsClass :: Lens' DeviceDescriptor (Maybe Text)
ddEtsiEnDeviceEmissionsClass
  = lens _ddEtsiEnDeviceEmissionsClass
      (\ s a -> s{_ddEtsiEnDeviceEmissionsClass = a})

-- | The list of identifiers for rulesets supported by the device. A database
-- may require that the device provide this list before servicing the
-- device requests. If the database does not support any of the rulesets
-- specified in the list, the database may refuse to service the device
-- requests. If present, the list must contain at least one entry. For
-- information about the valid requests, see section 9.2 of the PAWS
-- specification. Currently, FccTvBandWhiteSpace-2010 is the only supported
-- ruleset.
ddRulesetIds :: Lens' DeviceDescriptor [Text]
ddRulesetIds
  = lens _ddRulesetIds (\ s a -> s{_ddRulesetIds = a})
      . _Default
      . _Coerce

-- | The device\'s model ID may be required by the regulatory domain. The
-- string value must not exceed 64 characters in length.
ddModelId :: Lens' DeviceDescriptor (Maybe Text)
ddModelId
  = lens _ddModelId (\ s a -> s{_ddModelId = a})

-- | Specifies the ETSI white space device type. Valid values are
-- single-letter strings, such as A, B, etc. Consult the ETSI documentation
-- for details about the device types.
ddEtsiEnDeviceType :: Lens' DeviceDescriptor (Maybe Text)
ddEtsiEnDeviceType
  = lens _ddEtsiEnDeviceType
      (\ s a -> s{_ddEtsiEnDeviceType = a})

-- | Specifies the ETSI white space device technology identifier. The string
-- value must not exceed 64 characters in length. Consult the ETSI
-- documentation for details about the device types.
ddEtsiEnTechnologyId :: Lens' DeviceDescriptor (Maybe Text)
ddEtsiEnTechnologyId
  = lens _ddEtsiEnTechnologyId
      (\ s a -> s{_ddEtsiEnTechnologyId = a})

-- | Specifies the device\'s FCC certification identifier. The value is an
-- identifier string whose length should not exceed 32 characters. Note
-- that, in practice, a valid FCC ID may be limited to 19 characters.
ddFccId :: Lens' DeviceDescriptor (Maybe Text)
ddFccId = lens _ddFccId (\ s a -> s{_ddFccId = a})

-- | The manufacturer\'s ID may be required by the regulatory domain. This
-- should represent the name of the device manufacturer, should be
-- consistent across all devices from the same manufacturer, and should be
-- distinct from that of other manufacturers. The string value must not
-- exceed 64 characters in length.
ddManufacturerId :: Lens' DeviceDescriptor (Maybe Text)
ddManufacturerId
  = lens _ddManufacturerId
      (\ s a -> s{_ddManufacturerId = a})

-- | Specifies the TV Band White Space device type, as defined by the FCC.
-- Valid values are FIXED, MODE_1, MODE_2.
ddFccTvbdDeviceType :: Lens' DeviceDescriptor (Maybe Text)
ddFccTvbdDeviceType
  = lens _ddFccTvbdDeviceType
      (\ s a -> s{_ddFccTvbdDeviceType = a})

-- | Specifies the ETSI white space device category. Valid values are the
-- strings master and slave. This field is case-insensitive. Consult the
-- ETSI documentation for details about the device types.
ddEtsiEnDeviceCategory :: Lens' DeviceDescriptor (Maybe Text)
ddEtsiEnDeviceCategory
  = lens _ddEtsiEnDeviceCategory
      (\ s a -> s{_ddEtsiEnDeviceCategory = a})

-- | The manufacturer\'s device serial number; required by the applicable
-- regulatory domain. The length of the value must not exceed 64
-- characters.
ddSerialNumber :: Lens' DeviceDescriptor (Maybe Text)
ddSerialNumber
  = lens _ddSerialNumber
      (\ s a -> s{_ddSerialNumber = a})

instance FromJSON DeviceDescriptor where
        parseJSON
          = withObject "DeviceDescriptor"
              (\ o ->
                 DeviceDescriptor' <$>
                   (o .:? "etsiEnDeviceEmissionsClass") <*>
                     (o .:? "rulesetIds" .!= mempty)
                     <*> (o .:? "modelId")
                     <*> (o .:? "etsiEnDeviceType")
                     <*> (o .:? "etsiEnTechnologyId")
                     <*> (o .:? "fccId")
                     <*> (o .:? "manufacturerId")
                     <*> (o .:? "fccTvbdDeviceType")
                     <*> (o .:? "etsiEnDeviceCategory")
                     <*> (o .:? "serialNumber"))

instance ToJSON DeviceDescriptor where
        toJSON DeviceDescriptor'{..}
          = object
              (catMaybes
                 [("etsiEnDeviceEmissionsClass" .=) <$>
                    _ddEtsiEnDeviceEmissionsClass,
                  ("rulesetIds" .=) <$> _ddRulesetIds,
                  ("modelId" .=) <$> _ddModelId,
                  ("etsiEnDeviceType" .=) <$> _ddEtsiEnDeviceType,
                  ("etsiEnTechnologyId" .=) <$> _ddEtsiEnTechnologyId,
                  ("fccId" .=) <$> _ddFccId,
                  ("manufacturerId" .=) <$> _ddManufacturerId,
                  ("fccTvbdDeviceType" .=) <$> _ddFccTvbdDeviceType,
                  ("etsiEnDeviceCategory" .=) <$>
                    _ddEtsiEnDeviceCategory,
                  ("serialNumber" .=) <$> _ddSerialNumber])

-- | The initialization request message allows the master device to initiate
-- exchange of capabilities with the database.
--
-- /See:/ 'pawsInitRequest' smart constructor.
data PawsInitRequest = PawsInitRequest'
    { _piriLocation   :: !(Maybe GeoLocation)
    , _piriVersion    :: !(Maybe Text)
    , _piriType       :: !(Maybe Text)
    , _piriDeviceDesc :: !(Maybe DeviceDescriptor)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PawsInitRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piriLocation'
--
-- * 'piriVersion'
--
-- * 'piriType'
--
-- * 'piriDeviceDesc'
pawsInitRequest
    :: PawsInitRequest
pawsInitRequest =
    PawsInitRequest'
    { _piriLocation = Nothing
    , _piriVersion = Nothing
    , _piriType = Nothing
    , _piriDeviceDesc = Nothing
    }

-- | A device\'s geolocation is required.
piriLocation :: Lens' PawsInitRequest (Maybe GeoLocation)
piriLocation
  = lens _piriLocation (\ s a -> s{_piriLocation = a})

-- | The PAWS version. Must be exactly 1.0. Required field.
piriVersion :: Lens' PawsInitRequest (Maybe Text)
piriVersion
  = lens _piriVersion (\ s a -> s{_piriVersion = a})

-- | The message type (e.g., INIT_REQ, AVAIL_SPECTRUM_REQ, ...). Required
-- field.
piriType :: Lens' PawsInitRequest (Maybe Text)
piriType = lens _piriType (\ s a -> s{_piriType = a})

-- | The DeviceDescriptor parameter is required. If the database does not
-- support the device or any of the rulesets specified in the device
-- descriptor, it must return an UNSUPPORTED error code in the error
-- response.
piriDeviceDesc :: Lens' PawsInitRequest (Maybe DeviceDescriptor)
piriDeviceDesc
  = lens _piriDeviceDesc
      (\ s a -> s{_piriDeviceDesc = a})

instance FromJSON PawsInitRequest where
        parseJSON
          = withObject "PawsInitRequest"
              (\ o ->
                 PawsInitRequest' <$>
                   (o .:? "location") <*> (o .:? "version") <*>
                     (o .:? "type")
                     <*> (o .:? "deviceDesc"))

instance ToJSON PawsInitRequest where
        toJSON PawsInitRequest'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _piriLocation,
                  ("version" .=) <$> _piriVersion,
                  ("type" .=) <$> _piriType,
                  ("deviceDesc" .=) <$> _piriDeviceDesc])

-- | Device capabilities provide additional information that may be used by a
-- device to provide additional information to the database that may help
-- it to determine available spectrum. If the database does not support
-- device capabilities it will ignore the parameter altogether.
--
-- /See:/ 'deviceCapabilities' smart constructor.
newtype DeviceCapabilities = DeviceCapabilities'
    { _dcFrequencyRanges :: Maybe [FrequencyRange]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeviceCapabilities' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcFrequencyRanges'
deviceCapabilities
    :: DeviceCapabilities
deviceCapabilities =
    DeviceCapabilities'
    { _dcFrequencyRanges = Nothing
    }

-- | An optional list of frequency ranges supported by the device. Each
-- element must contain start and stop frequencies in which the device can
-- operate. Channel identifiers are optional. When specified, the database
-- should not return available spectrum that falls outside these ranges or
-- channel IDs.
dcFrequencyRanges :: Lens' DeviceCapabilities [FrequencyRange]
dcFrequencyRanges
  = lens _dcFrequencyRanges
      (\ s a -> s{_dcFrequencyRanges = a})
      . _Default
      . _Coerce

instance FromJSON DeviceCapabilities where
        parseJSON
          = withObject "DeviceCapabilities"
              (\ o ->
                 DeviceCapabilities' <$>
                   (o .:? "frequencyRanges" .!= mempty))

instance ToJSON DeviceCapabilities where
        toJSON DeviceCapabilities'{..}
          = object
              (catMaybes
                 [("frequencyRanges" .=) <$> _dcFrequencyRanges])
