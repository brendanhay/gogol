{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

-- |
-- Module      : Network.Google.SpectrumDatabase.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.SpectrumDatabase.Types.Product where

import           Network.Google.Prelude
import           Network.Google.SpectrumDatabase.Types.Sum

-- | Antenna characteristics provide additional information, such as the
-- antenna height, antenna type, etc. Whether antenna characteristics must
-- be provided in a request depends on the device type and regulatory
-- domain.
--
-- /See:/ 'antennaCharacteristics' smart constructor.
data AntennaCharacteristics = AntennaCharacteristics
    { _acHeight            :: !(Maybe Double)
    , _acHeightType        :: !(Maybe Text)
    , _acHeightUncertainty :: !(Maybe Double)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    AntennaCharacteristics
    { _acHeight = Nothing
    , _acHeightType = Nothing
    , _acHeightUncertainty = Nothing
    }

-- | The antenna height in meters. Whether the antenna height is required
-- depends on the device type and the regulatory domain. Note that the
-- height may be negative.
acHeight :: Lens' AntennaCharacteristics (Maybe Double)
acHeight = lens _acHeight (\ s a -> s{_acHeight = a})

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

-- | This message contains the name and URI of a database.
--
-- /See:/ 'databaseSpec' smart constructor.
data DatabaseSpec = DatabaseSpec
    { _dsUri  :: !(Maybe Text)
    , _dsName :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatabaseSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsUri'
--
-- * 'dsName'
databaseSpec
    :: DatabaseSpec
databaseSpec =
    DatabaseSpec
    { _dsUri = Nothing
    , _dsName = Nothing
    }

-- | The corresponding URI of the database.
dsUri :: Lens' DatabaseSpec (Maybe Text)
dsUri = lens _dsUri (\ s a -> s{_dsUri = a})

-- | The display name for a database.
dsName :: Lens' DatabaseSpec (Maybe Text)
dsName = lens _dsName (\ s a -> s{_dsName = a})

-- | This message is provided by the database to notify devices of an
-- upcoming change to the database URI.
--
-- /See:/ 'dbUpdateSpec' smart constructor.
newtype DbUpdateSpec = DbUpdateSpec
    { _dusDatabases :: Maybe [Maybe DatabaseSpec]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DbUpdateSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dusDatabases'
dbUpdateSpec
    :: DbUpdateSpec
dbUpdateSpec =
    DbUpdateSpec
    { _dusDatabases = Nothing
    }

-- | A required list of one or more databases. A device should update its
-- preconfigured list of databases to replace (only) the database that
-- provided the response with the specified entries.
dusDatabases :: Lens' DbUpdateSpec [Maybe DatabaseSpec]
dusDatabases
  = lens _dusDatabases (\ s a -> s{_dusDatabases = a})
      . _Default
      . _Coerce

-- | Device capabilities provide additional information that may be used by a
-- device to provide additional information to the database that may help
-- it to determine available spectrum. If the database does not support
-- device capabilities it will ignore the parameter altogether.
--
-- /See:/ 'deviceCapabilities' smart constructor.
newtype DeviceCapabilities = DeviceCapabilities
    { _dcFrequencyRanges :: Maybe [Maybe FrequencyRange]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeviceCapabilities' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcFrequencyRanges'
deviceCapabilities
    :: DeviceCapabilities
deviceCapabilities =
    DeviceCapabilities
    { _dcFrequencyRanges = Nothing
    }

-- | An optional list of frequency ranges supported by the device. Each
-- element must contain start and stop frequencies in which the device can
-- operate. Channel identifiers are optional. When specified, the database
-- should not return available spectrum that falls outside these ranges or
-- channel IDs.
dcFrequencyRanges :: Lens' DeviceCapabilities [Maybe FrequencyRange]
dcFrequencyRanges
  = lens _dcFrequencyRanges
      (\ s a -> s{_dcFrequencyRanges = a})
      . _Default
      . _Coerce

-- | The device descriptor contains parameters that identify the specific
-- device, such as its manufacturer serial number, regulatory-specific
-- identifier (e.g., FCC ID), and any other device characteristics required
-- by regulatory domains.
--
-- /See:/ 'deviceDescriptor' smart constructor.
data DeviceDescriptor = DeviceDescriptor
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
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    DeviceDescriptor
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
data DeviceOwner = DeviceOwner
    { _doOperator :: !(Maybe (Maybe Vcard))
    , _doOwner    :: !(Maybe (Maybe Vcard))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    DeviceOwner
    { _doOperator = Nothing
    , _doOwner = Nothing
    }

-- | The vCard contact information for the device operator is optional, but
-- may be required by specific regulatory domains.
doOperator :: Lens' DeviceOwner (Maybe (Maybe Vcard))
doOperator
  = lens _doOperator (\ s a -> s{_doOperator = a})

-- | The vCard contact information for the individual or business that owns
-- the device is required.
doOwner :: Lens' DeviceOwner (Maybe (Maybe Vcard))
doOwner = lens _doOwner (\ s a -> s{_doOwner = a})

-- | The device validity element describes whether a particular device is
-- valid to operate in the regulatory domain.
--
-- /See:/ 'deviceValidity' smart constructor.
data DeviceValidity = DeviceValidity
    { _dvIsValid    :: !(Maybe Bool)
    , _dvReason     :: !(Maybe Text)
    , _dvDeviceDesc :: !(Maybe (Maybe DeviceDescriptor))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    DeviceValidity
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
dvDeviceDesc :: Lens' DeviceValidity (Maybe (Maybe DeviceDescriptor))
dvDeviceDesc
  = lens _dvDeviceDesc (\ s a -> s{_dvDeviceDesc = a})

-- | The start and stop times of an event. This is used to indicate the time
-- period for which a spectrum profile is valid. Both times are expressed
-- using the format, YYYY-MM-DDThh:mm:ssZ, as defined in RFC3339. The times
-- must be expressed using UTC.
--
-- /See:/ 'eventTime' smart constructor.
data EventTime = EventTime
    { _etStartTime :: !(Maybe Text)
    , _etStopTime  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    EventTime
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

-- | A specific range of frequencies together with the associated maximum
-- power level and channel identifier.
--
-- /See:/ 'frequencyRange' smart constructor.
data FrequencyRange = FrequencyRange
    { _frStopHz      :: !(Maybe Double)
    , _frMaxPowerDBm :: !(Maybe Double)
    , _frChannelId   :: !(Maybe Text)
    , _frStartHz     :: !(Maybe Double)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    FrequencyRange
    { _frStopHz = Nothing
    , _frMaxPowerDBm = Nothing
    , _frChannelId = Nothing
    , _frStartHz = Nothing
    }

-- | The required exclusive end of the frequency range (in Hertz).
frStopHz :: Lens' FrequencyRange (Maybe Double)
frStopHz = lens _frStopHz (\ s a -> s{_frStopHz = a})

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

-- | The database may include a channel identifier, when applicable. When it
-- is included, the device should treat it as informative. The length of
-- the identifier should not exceed 16 characters.
frChannelId :: Lens' FrequencyRange (Maybe Text)
frChannelId
  = lens _frChannelId (\ s a -> s{_frChannelId = a})

-- | The required inclusive start of the frequency range (in Hertz).
frStartHz :: Lens' FrequencyRange (Maybe Double)
frStartHz
  = lens _frStartHz (\ s a -> s{_frStartHz = a})

-- | This parameter is used to specify the geolocation of the device.
--
-- /See:/ 'geoLocation' smart constructor.
data GeoLocation = GeoLocation
    { _glConfidence :: !(Maybe Int32)
    , _glPoint      :: !(Maybe (Maybe GeoLocationEllipse))
    , _glRegion     :: !(Maybe (Maybe GeoLocationPolygon))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    GeoLocation
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

-- | If present, indicates that the geolocation represents a point.
-- Paradoxically, a point is parameterized using an ellipse, where the
-- center represents the location of the point and the distances along the
-- major and minor axes represent the uncertainty. The uncertainty values
-- may be required, depending on the regulatory domain.
glPoint :: Lens' GeoLocation (Maybe (Maybe GeoLocationEllipse))
glPoint = lens _glPoint (\ s a -> s{_glPoint = a})

-- | If present, indicates that the geolocation represents a region. Database
-- support for regions is optional.
glRegion :: Lens' GeoLocation (Maybe (Maybe GeoLocationPolygon))
glRegion = lens _glRegion (\ s a -> s{_glRegion = a})

-- | A \"point\" with uncertainty is represented using the Ellipse shape.
--
-- /See:/ 'geoLocationEllipse' smart constructor.
data GeoLocationEllipse = GeoLocationEllipse
    { _gleSemiMajorAxis :: !(Maybe Double)
    , _gleCenter        :: !(Maybe (Maybe GeoLocationPoint))
    , _gleOrientation   :: !(Maybe Double)
    , _gleSemiMinorAxis :: !(Maybe Double)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    GeoLocationEllipse
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

-- | A required geo-spatial point representing the center of the ellipse.
gleCenter :: Lens' GeoLocationEllipse (Maybe (Maybe GeoLocationPoint))
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

-- | A floating-point number that expresses the location uncertainty along
-- the minor axis of the ellipse. May be required by the regulatory domain.
-- When the uncertainty is optional, the default value is 0.
gleSemiMinorAxis :: Lens' GeoLocationEllipse (Maybe Double)
gleSemiMinorAxis
  = lens _gleSemiMinorAxis
      (\ s a -> s{_gleSemiMinorAxis = a})

-- | A single geolocation on the globe.
--
-- /See:/ 'geoLocationPoint' smart constructor.
data GeoLocationPoint = GeoLocationPoint
    { _glpLatitude  :: !(Maybe Double)
    , _glpLongitude :: !(Maybe Double)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    GeoLocationPoint
    { _glpLatitude = Nothing
    , _glpLongitude = Nothing
    }

-- | A required floating-point number that expresses the latitude in degrees
-- using the WGS84 datum. For details on this encoding, see the National
-- Imagery and Mapping Agency\'s Technical Report TR8350.2.
glpLatitude :: Lens' GeoLocationPoint (Maybe Double)
glpLatitude
  = lens _glpLatitude (\ s a -> s{_glpLatitude = a})

-- | A required floating-point number that expresses the longitude in degrees
-- using the WGS84 datum. For details on this encoding, see the National
-- Imagery and Mapping Agency\'s Technical Report TR8350.2.
glpLongitude :: Lens' GeoLocationPoint (Maybe Double)
glpLongitude
  = lens _glpLongitude (\ s a -> s{_glpLongitude = a})

-- | A region is represented using the polygonal shape.
--
-- /See:/ 'geoLocationPolygon' smart constructor.
newtype GeoLocationPolygon = GeoLocationPolygon
    { _glpExterior :: Maybe [Maybe GeoLocationPoint]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeoLocationPolygon' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glpExterior'
geoLocationPolygon
    :: GeoLocationPolygon
geoLocationPolygon =
    GeoLocationPolygon
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
glpExterior :: Lens' GeoLocationPolygon [Maybe GeoLocationPoint]
glpExterior
  = lens _glpExterior (\ s a -> s{_glpExterior = a}) .
      _Default
      . _Coerce

-- | The schedule of spectrum profiles available at a particular geolocation.
--
-- /See:/ 'geoSpectrumSchedule' smart constructor.
data GeoSpectrumSchedule = GeoSpectrumSchedule
    { _gssLocation          :: !(Maybe (Maybe GeoLocation))
    , _gssSpectrumSchedules :: !(Maybe [Maybe SpectrumSchedule])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    GeoSpectrumSchedule
    { _gssLocation = Nothing
    , _gssSpectrumSchedules = Nothing
    }

-- | The geolocation identifies the location at which the spectrum schedule
-- applies. It will always be present.
gssLocation :: Lens' GeoSpectrumSchedule (Maybe (Maybe GeoLocation))
gssLocation
  = lens _gssLocation (\ s a -> s{_gssLocation = a})

-- | A list of available spectrum profiles and associated times. It will
-- always be present, and at least one schedule must be included (though it
-- may be empty if there is no available spectrum). More than one schedule
-- may be included to represent future changes to the available spectrum.
gssSpectrumSchedules :: Lens' GeoSpectrumSchedule [Maybe SpectrumSchedule]
gssSpectrumSchedules
  = lens _gssSpectrumSchedules
      (\ s a -> s{_gssSpectrumSchedules = a})
      . _Default
      . _Coerce

-- | The request message for a batch available spectrum query protocol.
--
-- /See:/ 'pawsGetSpectrumBatchRequest' smart constructor.
data PawsGetSpectrumBatchRequest = PawsGetSpectrumBatchRequest
    { _pgsbrgAntenna          :: !(Maybe (Maybe AntennaCharacteristics))
    , _pgsbrgMasterDeviceDesc :: !(Maybe (Maybe DeviceDescriptor))
    , _pgsbrgOwner            :: !(Maybe (Maybe DeviceOwner))
    , _pgsbrgRequestType      :: !(Maybe Text)
    , _pgsbrgVersion          :: !(Maybe Text)
    , _pgsbrgType             :: !(Maybe Text)
    , _pgsbrgLocations        :: !(Maybe [Maybe GeoLocation])
    , _pgsbrgCapabilities     :: !(Maybe (Maybe DeviceCapabilities))
    , _pgsbrgDeviceDesc       :: !(Maybe (Maybe DeviceDescriptor))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PawsGetSpectrumBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgsbrgAntenna'
--
-- * 'pgsbrgMasterDeviceDesc'
--
-- * 'pgsbrgOwner'
--
-- * 'pgsbrgRequestType'
--
-- * 'pgsbrgVersion'
--
-- * 'pgsbrgType'
--
-- * 'pgsbrgLocations'
--
-- * 'pgsbrgCapabilities'
--
-- * 'pgsbrgDeviceDesc'
pawsGetSpectrumBatchRequest
    :: PawsGetSpectrumBatchRequest
pawsGetSpectrumBatchRequest =
    PawsGetSpectrumBatchRequest
    { _pgsbrgAntenna = Nothing
    , _pgsbrgMasterDeviceDesc = Nothing
    , _pgsbrgOwner = Nothing
    , _pgsbrgRequestType = Nothing
    , _pgsbrgVersion = Nothing
    , _pgsbrgType = Nothing
    , _pgsbrgLocations = Nothing
    , _pgsbrgCapabilities = Nothing
    , _pgsbrgDeviceDesc = Nothing
    }

-- | Depending on device type and regulatory domain, antenna characteristics
-- may be required.
pgsbrgAntenna :: Lens' PawsGetSpectrumBatchRequest (Maybe (Maybe AntennaCharacteristics))
pgsbrgAntenna
  = lens _pgsbrgAntenna
      (\ s a -> s{_pgsbrgAntenna = a})

-- | When an available spectrum batch request is made by the master device (a
-- device with geolocation capability) on behalf of a slave device (a
-- device without geolocation capability), the rules of the applicable
-- regulatory domain may require the master device to provide its own
-- device descriptor information (in addition to device descriptor
-- information for the slave device in a separate parameter).
pgsbrgMasterDeviceDesc :: Lens' PawsGetSpectrumBatchRequest (Maybe (Maybe DeviceDescriptor))
pgsbrgMasterDeviceDesc
  = lens _pgsbrgMasterDeviceDesc
      (\ s a -> s{_pgsbrgMasterDeviceDesc = a})

-- | Depending on device type and regulatory domain, device owner information
-- may be included in an available spectrum batch request. This allows the
-- device to register and get spectrum-availability information in a single
-- request.
pgsbrgOwner :: Lens' PawsGetSpectrumBatchRequest (Maybe (Maybe DeviceOwner))
pgsbrgOwner
  = lens _pgsbrgOwner (\ s a -> s{_pgsbrgOwner = a})

-- | The request type parameter is an optional parameter that can be used to
-- modify an available spectrum batch request, but its use depends on
-- applicable regulatory rules. For example, It may be used to request
-- generic slave device parameters without having to specify the device
-- descriptor for a specific device. When the requestType parameter is
-- missing, the request is for a specific device (master or slave), and the
-- device descriptor parameter for the device on whose behalf the batch
-- request is made is required.
pgsbrgRequestType :: Lens' PawsGetSpectrumBatchRequest (Maybe Text)
pgsbrgRequestType
  = lens _pgsbrgRequestType
      (\ s a -> s{_pgsbrgRequestType = a})

-- | The PAWS version. Must be exactly 1.0. Required field.
pgsbrgVersion :: Lens' PawsGetSpectrumBatchRequest (Maybe Text)
pgsbrgVersion
  = lens _pgsbrgVersion
      (\ s a -> s{_pgsbrgVersion = a})

-- | The message type (e.g., INIT_REQ, AVAIL_SPECTRUM_REQ, ...). Required
-- field.
pgsbrgType :: Lens' PawsGetSpectrumBatchRequest (Maybe Text)
pgsbrgType
  = lens _pgsbrgType (\ s a -> s{_pgsbrgType = a})

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
pgsbrgLocations :: Lens' PawsGetSpectrumBatchRequest [Maybe GeoLocation]
pgsbrgLocations
  = lens _pgsbrgLocations
      (\ s a -> s{_pgsbrgLocations = a})
      . _Default
      . _Coerce

-- | The master device may include its device capabilities to limit the
-- available-spectrum batch response to the spectrum that is compatible
-- with its capabilities. The database should not return spectrum that is
-- incompatible with the specified capabilities.
pgsbrgCapabilities :: Lens' PawsGetSpectrumBatchRequest (Maybe (Maybe DeviceCapabilities))
pgsbrgCapabilities
  = lens _pgsbrgCapabilities
      (\ s a -> s{_pgsbrgCapabilities = a})

-- | When the available spectrum request is made on behalf of a specific
-- device (a master or slave device), device descriptor information for the
-- device on whose behalf the request is made is required (in such cases,
-- the requestType parameter must be empty). When a requestType value is
-- specified, device descriptor information may be optional or required
-- according to the rules of the applicable regulatory domain.
pgsbrgDeviceDesc :: Lens' PawsGetSpectrumBatchRequest (Maybe (Maybe DeviceDescriptor))
pgsbrgDeviceDesc
  = lens _pgsbrgDeviceDesc
      (\ s a -> s{_pgsbrgDeviceDesc = a})

-- | The response message for the batch available spectrum query contains a
-- schedule of available spectrum for the device at multiple locations.
--
-- /See:/ 'pawsGetSpectrumBatchResponse' smart constructor.
data PawsGetSpectrumBatchResponse = PawsGetSpectrumBatchResponse
    { _pgsbrNeedsSpectrumReport  :: !(Maybe Bool)
    , _pgsbrKind                 :: !Text
    , _pgsbrGeoSpectrumSchedules :: !(Maybe [Maybe GeoSpectrumSchedule])
    , _pgsbrMaxContiguousBwHz    :: !(Maybe Double)
    , _pgsbrVersion              :: !(Maybe Text)
    , _pgsbrRulesetInfo          :: !(Maybe (Maybe RulesetInfo))
    , _pgsbrType                 :: !(Maybe Text)
    , _pgsbrDatabaseChange       :: !(Maybe (Maybe DbUpdateSpec))
    , _pgsbrTimestamp            :: !(Maybe Text)
    , _pgsbrDeviceDesc           :: !(Maybe (Maybe DeviceDescriptor))
    , _pgsbrMaxTotalBwHz         :: !(Maybe Double)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PawsGetSpectrumBatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgsbrNeedsSpectrumReport'
--
-- * 'pgsbrKind'
--
-- * 'pgsbrGeoSpectrumSchedules'
--
-- * 'pgsbrMaxContiguousBwHz'
--
-- * 'pgsbrVersion'
--
-- * 'pgsbrRulesetInfo'
--
-- * 'pgsbrType'
--
-- * 'pgsbrDatabaseChange'
--
-- * 'pgsbrTimestamp'
--
-- * 'pgsbrDeviceDesc'
--
-- * 'pgsbrMaxTotalBwHz'
pawsGetSpectrumBatchResponse
    :: PawsGetSpectrumBatchResponse
pawsGetSpectrumBatchResponse =
    PawsGetSpectrumBatchResponse
    { _pgsbrNeedsSpectrumReport = Nothing
    , _pgsbrKind = "spectrum#pawsGetSpectrumBatchResponse"
    , _pgsbrGeoSpectrumSchedules = Nothing
    , _pgsbrMaxContiguousBwHz = Nothing
    , _pgsbrVersion = Nothing
    , _pgsbrRulesetInfo = Nothing
    , _pgsbrType = Nothing
    , _pgsbrDatabaseChange = Nothing
    , _pgsbrTimestamp = Nothing
    , _pgsbrDeviceDesc = Nothing
    , _pgsbrMaxTotalBwHz = Nothing
    }

-- | For regulatory domains that require a spectrum-usage report from
-- devices, the database must return true for this parameter if the
-- geo-spectrum schedules list is not empty; otherwise, the database should
-- either return false or omit this parameter. If this parameter is present
-- and its value is true, the device must send a spectrum use notify
-- message to the database; otherwise, the device should not send the
-- notification.
pgsbrNeedsSpectrumReport :: Lens' PawsGetSpectrumBatchResponse (Maybe Bool)
pgsbrNeedsSpectrumReport
  = lens _pgsbrNeedsSpectrumReport
      (\ s a -> s{_pgsbrNeedsSpectrumReport = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"spectrum#pawsGetSpectrumBatchResponse\".
pgsbrKind :: Lens' PawsGetSpectrumBatchResponse Text
pgsbrKind
  = lens _pgsbrKind (\ s a -> s{_pgsbrKind = a})

-- | The available spectrum batch response must contain a geo-spectrum
-- schedule list, The list may be empty if spectrum is not available. The
-- database may return more than one geo-spectrum schedule to represent
-- future changes to the available spectrum. How far in advance a schedule
-- may be provided depends upon the applicable regulatory domain. The
-- database may return available spectrum for fewer geolocations than
-- requested. The device must not make assumptions about the order of the
-- entries in the list, and must use the geolocation value in each
-- geo-spectrum schedule entry to match available spectrum to a location.
pgsbrGeoSpectrumSchedules :: Lens' PawsGetSpectrumBatchResponse [Maybe GeoSpectrumSchedule]
pgsbrGeoSpectrumSchedules
  = lens _pgsbrGeoSpectrumSchedules
      (\ s a -> s{_pgsbrGeoSpectrumSchedules = a})
      . _Default
      . _Coerce

-- | The database may return a constraint on the allowed maximum contiguous
-- bandwidth (in Hertz). A regulatory domain may require the database to
-- return this parameter. When this parameter is present in the response,
-- the device must apply this constraint to its spectrum-selection logic to
-- ensure that no single block of spectrum has bandwidth that exceeds this
-- value.
pgsbrMaxContiguousBwHz :: Lens' PawsGetSpectrumBatchResponse (Maybe Double)
pgsbrMaxContiguousBwHz
  = lens _pgsbrMaxContiguousBwHz
      (\ s a -> s{_pgsbrMaxContiguousBwHz = a})

-- | The PAWS version. Must be exactly 1.0. Required field.
pgsbrVersion :: Lens' PawsGetSpectrumBatchResponse (Maybe Text)
pgsbrVersion
  = lens _pgsbrVersion (\ s a -> s{_pgsbrVersion = a})

-- | The database should return ruleset information, which identifies the
-- applicable regulatory authority and ruleset for the available spectrum
-- batch response. If included, the device must use the corresponding
-- ruleset to interpret the response. Values provided in the returned
-- ruleset information, such as maxLocationChange, take precedence over any
-- conflicting values provided in the ruleset information returned in a
-- prior initialization response sent by the database to the device.
pgsbrRulesetInfo :: Lens' PawsGetSpectrumBatchResponse (Maybe (Maybe RulesetInfo))
pgsbrRulesetInfo
  = lens _pgsbrRulesetInfo
      (\ s a -> s{_pgsbrRulesetInfo = a})

-- | The message type (e.g., INIT_REQ, AVAIL_SPECTRUM_REQ, ...). Required
-- field.
pgsbrType :: Lens' PawsGetSpectrumBatchResponse (Maybe Text)
pgsbrType
  = lens _pgsbrType (\ s a -> s{_pgsbrType = a})

-- | A database may include the databaseChange parameter to notify a device
-- of a change to its database URI, providing one or more alternate
-- database URIs. The device should use this information to update its list
-- of pre-configured databases by (only) replacing its entry for the
-- responding database with the list of alternate URIs.
pgsbrDatabaseChange :: Lens' PawsGetSpectrumBatchResponse (Maybe (Maybe DbUpdateSpec))
pgsbrDatabaseChange
  = lens _pgsbrDatabaseChange
      (\ s a -> s{_pgsbrDatabaseChange = a})

-- | The database includes a timestamp of the form, YYYY-MM-DDThh:mm:ssZ
-- (Internet timestamp format per RFC3339), in its available spectrum batch
-- response. The timestamp should be used by the device as a reference for
-- the start and stop times specified in the response spectrum schedules.
pgsbrTimestamp :: Lens' PawsGetSpectrumBatchResponse (Maybe Text)
pgsbrTimestamp
  = lens _pgsbrTimestamp
      (\ s a -> s{_pgsbrTimestamp = a})

-- | The database must return in its available spectrum response the device
-- descriptor information it received in the master device\'s available
-- spectrum batch request.
pgsbrDeviceDesc :: Lens' PawsGetSpectrumBatchResponse (Maybe (Maybe DeviceDescriptor))
pgsbrDeviceDesc
  = lens _pgsbrDeviceDesc
      (\ s a -> s{_pgsbrDeviceDesc = a})

-- | The database may return a constraint on the allowed maximum total
-- bandwidth (in Hertz), which does not need to be contiguous. A regulatory
-- domain may require the database to return this parameter. When this
-- parameter is present in the available spectrum batch response, the
-- device must apply this constraint to its spectrum-selection logic to
-- ensure that total bandwidth does not exceed this value.
pgsbrMaxTotalBwHz :: Lens' PawsGetSpectrumBatchResponse (Maybe Double)
pgsbrMaxTotalBwHz
  = lens _pgsbrMaxTotalBwHz
      (\ s a -> s{_pgsbrMaxTotalBwHz = a})

-- | The request message for the available spectrum query protocol which must
-- include the device\'s geolocation.
--
-- /See:/ 'pawsGetSpectrumRequest' smart constructor.
data PawsGetSpectrumRequest = PawsGetSpectrumRequest
    { _pgsrgAntenna          :: !(Maybe (Maybe AntennaCharacteristics))
    , _pgsrgMasterDeviceDesc :: !(Maybe (Maybe DeviceDescriptor))
    , _pgsrgLocation         :: !(Maybe (Maybe GeoLocation))
    , _pgsrgOwner            :: !(Maybe (Maybe DeviceOwner))
    , _pgsrgRequestType      :: !(Maybe Text)
    , _pgsrgVersion          :: !(Maybe Text)
    , _pgsrgType             :: !(Maybe Text)
    , _pgsrgCapabilities     :: !(Maybe (Maybe DeviceCapabilities))
    , _pgsrgDeviceDesc       :: !(Maybe (Maybe DeviceDescriptor))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PawsGetSpectrumRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgsrgAntenna'
--
-- * 'pgsrgMasterDeviceDesc'
--
-- * 'pgsrgLocation'
--
-- * 'pgsrgOwner'
--
-- * 'pgsrgRequestType'
--
-- * 'pgsrgVersion'
--
-- * 'pgsrgType'
--
-- * 'pgsrgCapabilities'
--
-- * 'pgsrgDeviceDesc'
pawsGetSpectrumRequest
    :: PawsGetSpectrumRequest
pawsGetSpectrumRequest =
    PawsGetSpectrumRequest
    { _pgsrgAntenna = Nothing
    , _pgsrgMasterDeviceDesc = Nothing
    , _pgsrgLocation = Nothing
    , _pgsrgOwner = Nothing
    , _pgsrgRequestType = Nothing
    , _pgsrgVersion = Nothing
    , _pgsrgType = Nothing
    , _pgsrgCapabilities = Nothing
    , _pgsrgDeviceDesc = Nothing
    }

-- | Depending on device type and regulatory domain, the characteristics of
-- the antenna may be required.
pgsrgAntenna :: Lens' PawsGetSpectrumRequest (Maybe (Maybe AntennaCharacteristics))
pgsrgAntenna
  = lens _pgsrgAntenna (\ s a -> s{_pgsrgAntenna = a})

-- | When an available spectrum request is made by the master device (a
-- device with geolocation capability) on behalf of a slave device (a
-- device without geolocation capability), the rules of the applicable
-- regulatory domain may require the master device to provide its own
-- device descriptor information (in addition to device descriptor
-- information for the slave device, which is provided in a separate
-- parameter).
pgsrgMasterDeviceDesc :: Lens' PawsGetSpectrumRequest (Maybe (Maybe DeviceDescriptor))
pgsrgMasterDeviceDesc
  = lens _pgsrgMasterDeviceDesc
      (\ s a -> s{_pgsrgMasterDeviceDesc = a})

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
pgsrgLocation :: Lens' PawsGetSpectrumRequest (Maybe (Maybe GeoLocation))
pgsrgLocation
  = lens _pgsrgLocation
      (\ s a -> s{_pgsrgLocation = a})

-- | Depending on device type and regulatory domain, device owner information
-- may be included in an available spectrum request. This allows the device
-- to register and get spectrum-availability information in a single
-- request.
pgsrgOwner :: Lens' PawsGetSpectrumRequest (Maybe (Maybe DeviceOwner))
pgsrgOwner
  = lens _pgsrgOwner (\ s a -> s{_pgsrgOwner = a})

-- | The request type parameter is an optional parameter that can be used to
-- modify an available spectrum request, but its use depends on applicable
-- regulatory rules. It may be used, for example, to request generic slave
-- device parameters without having to specify the device descriptor for a
-- specific device. When the requestType parameter is missing, the request
-- is for a specific device (master or slave), and the deviceDesc parameter
-- for the device on whose behalf the request is made is required.
pgsrgRequestType :: Lens' PawsGetSpectrumRequest (Maybe Text)
pgsrgRequestType
  = lens _pgsrgRequestType
      (\ s a -> s{_pgsrgRequestType = a})

-- | The PAWS version. Must be exactly 1.0. Required field.
pgsrgVersion :: Lens' PawsGetSpectrumRequest (Maybe Text)
pgsrgVersion
  = lens _pgsrgVersion (\ s a -> s{_pgsrgVersion = a})

-- | The message type (e.g., INIT_REQ, AVAIL_SPECTRUM_REQ, ...). Required
-- field.
pgsrgType :: Lens' PawsGetSpectrumRequest (Maybe Text)
pgsrgType
  = lens _pgsrgType (\ s a -> s{_pgsrgType = a})

-- | The master device may include its device capabilities to limit the
-- available-spectrum response to the spectrum that is compatible with its
-- capabilities. The database should not return spectrum that is
-- incompatible with the specified capabilities.
pgsrgCapabilities :: Lens' PawsGetSpectrumRequest (Maybe (Maybe DeviceCapabilities))
pgsrgCapabilities
  = lens _pgsrgCapabilities
      (\ s a -> s{_pgsrgCapabilities = a})

-- | When the available spectrum request is made on behalf of a specific
-- device (a master or slave device), device descriptor information for
-- that device is required (in such cases, the requestType parameter must
-- be empty). When a requestType value is specified, device descriptor
-- information may be optional or required according to the rules of the
-- applicable regulatory domain.
pgsrgDeviceDesc :: Lens' PawsGetSpectrumRequest (Maybe (Maybe DeviceDescriptor))
pgsrgDeviceDesc
  = lens _pgsrgDeviceDesc
      (\ s a -> s{_pgsrgDeviceDesc = a})

-- | The response message for the available spectrum query which contains a
-- schedule of available spectrum for the device.
--
-- /See:/ 'pawsGetSpectrumResponse' smart constructor.
data PawsGetSpectrumResponse = PawsGetSpectrumResponse
    { _pgsrNeedsSpectrumReport :: !(Maybe Bool)
    , _pgsrSpectrumSchedules   :: !(Maybe [Maybe SpectrumSchedule])
    , _pgsrKind                :: !Text
    , _pgsrMaxContiguousBwHz   :: !(Maybe Double)
    , _pgsrVersion             :: !(Maybe Text)
    , _pgsrRulesetInfo         :: !(Maybe (Maybe RulesetInfo))
    , _pgsrType                :: !(Maybe Text)
    , _pgsrDatabaseChange      :: !(Maybe (Maybe DbUpdateSpec))
    , _pgsrTimestamp           :: !(Maybe Text)
    , _pgsrDeviceDesc          :: !(Maybe (Maybe DeviceDescriptor))
    , _pgsrMaxTotalBwHz        :: !(Maybe Double)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PawsGetSpectrumResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgsrNeedsSpectrumReport'
--
-- * 'pgsrSpectrumSchedules'
--
-- * 'pgsrKind'
--
-- * 'pgsrMaxContiguousBwHz'
--
-- * 'pgsrVersion'
--
-- * 'pgsrRulesetInfo'
--
-- * 'pgsrType'
--
-- * 'pgsrDatabaseChange'
--
-- * 'pgsrTimestamp'
--
-- * 'pgsrDeviceDesc'
--
-- * 'pgsrMaxTotalBwHz'
pawsGetSpectrumResponse
    :: PawsGetSpectrumResponse
pawsGetSpectrumResponse =
    PawsGetSpectrumResponse
    { _pgsrNeedsSpectrumReport = Nothing
    , _pgsrSpectrumSchedules = Nothing
    , _pgsrKind = "spectrum#pawsGetSpectrumResponse"
    , _pgsrMaxContiguousBwHz = Nothing
    , _pgsrVersion = Nothing
    , _pgsrRulesetInfo = Nothing
    , _pgsrType = Nothing
    , _pgsrDatabaseChange = Nothing
    , _pgsrTimestamp = Nothing
    , _pgsrDeviceDesc = Nothing
    , _pgsrMaxTotalBwHz = Nothing
    }

-- | For regulatory domains that require a spectrum-usage report from
-- devices, the database must return true for this parameter if the
-- spectrum schedule list is not empty; otherwise, the database will either
-- return false or omit this parameter. If this parameter is present and
-- its value is true, the device must send a spectrum use notify message to
-- the database; otherwise, the device must not send the notification.
pgsrNeedsSpectrumReport :: Lens' PawsGetSpectrumResponse (Maybe Bool)
pgsrNeedsSpectrumReport
  = lens _pgsrNeedsSpectrumReport
      (\ s a -> s{_pgsrNeedsSpectrumReport = a})

-- | The available spectrum response must contain a spectrum schedule list.
-- The list may be empty if spectrum is not available. The database may
-- return more than one spectrum schedule to represent future changes to
-- the available spectrum. How far in advance a schedule may be provided
-- depends on the applicable regulatory domain.
pgsrSpectrumSchedules :: Lens' PawsGetSpectrumResponse [Maybe SpectrumSchedule]
pgsrSpectrumSchedules
  = lens _pgsrSpectrumSchedules
      (\ s a -> s{_pgsrSpectrumSchedules = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"spectrum#pawsGetSpectrumResponse\".
pgsrKind :: Lens' PawsGetSpectrumResponse Text
pgsrKind = lens _pgsrKind (\ s a -> s{_pgsrKind = a})

-- | The database may return a constraint on the allowed maximum contiguous
-- bandwidth (in Hertz). A regulatory domain may require the database to
-- return this parameter. When this parameter is present in the response,
-- the device must apply this constraint to its spectrum-selection logic to
-- ensure that no single block of spectrum has bandwidth that exceeds this
-- value.
pgsrMaxContiguousBwHz :: Lens' PawsGetSpectrumResponse (Maybe Double)
pgsrMaxContiguousBwHz
  = lens _pgsrMaxContiguousBwHz
      (\ s a -> s{_pgsrMaxContiguousBwHz = a})

-- | The PAWS version. Must be exactly 1.0. Required field.
pgsrVersion :: Lens' PawsGetSpectrumResponse (Maybe Text)
pgsrVersion
  = lens _pgsrVersion (\ s a -> s{_pgsrVersion = a})

-- | The database should return ruleset information, which identifies the
-- applicable regulatory authority and ruleset for the available spectrum
-- response. If included, the device must use the corresponding ruleset to
-- interpret the response. Values provided in the returned ruleset
-- information, such as maxLocationChange, take precedence over any
-- conflicting values provided in the ruleset information returned in a
-- prior initialization response sent by the database to the device.
pgsrRulesetInfo :: Lens' PawsGetSpectrumResponse (Maybe (Maybe RulesetInfo))
pgsrRulesetInfo
  = lens _pgsrRulesetInfo
      (\ s a -> s{_pgsrRulesetInfo = a})

-- | The message type (e.g., INIT_REQ, AVAIL_SPECTRUM_REQ, ...). Required
-- field.
pgsrType :: Lens' PawsGetSpectrumResponse (Maybe Text)
pgsrType = lens _pgsrType (\ s a -> s{_pgsrType = a})

-- | A database may include the databaseChange parameter to notify a device
-- of a change to its database URI, providing one or more alternate
-- database URIs. The device should use this information to update its list
-- of pre-configured databases by (only) replacing its entry for the
-- responding database with the list of alternate URIs.
pgsrDatabaseChange :: Lens' PawsGetSpectrumResponse (Maybe (Maybe DbUpdateSpec))
pgsrDatabaseChange
  = lens _pgsrDatabaseChange
      (\ s a -> s{_pgsrDatabaseChange = a})

-- | The database includes a timestamp of the form YYYY-MM-DDThh:mm:ssZ
-- (Internet timestamp format per RFC3339) in its available spectrum
-- response. The timestamp should be used by the device as a reference for
-- the start and stop times specified in the response spectrum schedules.
pgsrTimestamp :: Lens' PawsGetSpectrumResponse (Maybe Text)
pgsrTimestamp
  = lens _pgsrTimestamp
      (\ s a -> s{_pgsrTimestamp = a})

-- | The database must return, in its available spectrum response, the device
-- descriptor information it received in the master device\'s available
-- spectrum request.
pgsrDeviceDesc :: Lens' PawsGetSpectrumResponse (Maybe (Maybe DeviceDescriptor))
pgsrDeviceDesc
  = lens _pgsrDeviceDesc
      (\ s a -> s{_pgsrDeviceDesc = a})

-- | The database may return a constraint on the allowed maximum total
-- bandwidth (in Hertz), which need not be contiguous. A regulatory domain
-- may require the database to return this parameter. When this parameter
-- is present in the available spectrum response, the device must apply
-- this constraint to its spectrum-selection logic to ensure that total
-- bandwidth does not exceed this value.
pgsrMaxTotalBwHz :: Lens' PawsGetSpectrumResponse (Maybe Double)
pgsrMaxTotalBwHz
  = lens _pgsrMaxTotalBwHz
      (\ s a -> s{_pgsrMaxTotalBwHz = a})

-- | The initialization request message allows the master device to initiate
-- exchange of capabilities with the database.
--
-- /See:/ 'pawsInitRequest' smart constructor.
data PawsInitRequest = PawsInitRequest
    { _piriLocation   :: !(Maybe (Maybe GeoLocation))
    , _piriVersion    :: !(Maybe Text)
    , _piriType       :: !(Maybe Text)
    , _piriDeviceDesc :: !(Maybe (Maybe DeviceDescriptor))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    PawsInitRequest
    { _piriLocation = Nothing
    , _piriVersion = Nothing
    , _piriType = Nothing
    , _piriDeviceDesc = Nothing
    }

-- | A device\'s geolocation is required.
piriLocation :: Lens' PawsInitRequest (Maybe (Maybe GeoLocation))
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
piriDeviceDesc :: Lens' PawsInitRequest (Maybe (Maybe DeviceDescriptor))
piriDeviceDesc
  = lens _piriDeviceDesc
      (\ s a -> s{_piriDeviceDesc = a})

-- | The initialization response message communicates database parameters to
-- the requesting device.
--
-- /See:/ 'pawsInitResponse' smart constructor.
data PawsInitResponse = PawsInitResponse
    { _pirKind           :: !Text
    , _pirVersion        :: !(Maybe Text)
    , _pirRulesetInfo    :: !(Maybe (Maybe RulesetInfo))
    , _pirType           :: !(Maybe Text)
    , _pirDatabaseChange :: !(Maybe (Maybe DbUpdateSpec))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    PawsInitResponse
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
pirRulesetInfo :: Lens' PawsInitResponse (Maybe (Maybe RulesetInfo))
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
pirDatabaseChange :: Lens' PawsInitResponse (Maybe (Maybe DbUpdateSpec))
pirDatabaseChange
  = lens _pirDatabaseChange
      (\ s a -> s{_pirDatabaseChange = a})

-- | The spectrum-use notification message which must contain the geolocation
-- of the Device and parameters required by the regulatory domain.
--
-- /See:/ 'pawsNotifySpectrumUseRequest' smart constructor.
data PawsNotifySpectrumUseRequest = PawsNotifySpectrumUseRequest
    { _pSpectra    :: !(Maybe [Maybe SpectrumMessage])
    , _pLocation   :: !(Maybe (Maybe GeoLocation))
    , _pVersion    :: !(Maybe Text)
    , _pType       :: !(Maybe Text)
    , _pDeviceDesc :: !(Maybe (Maybe DeviceDescriptor))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PawsNotifySpectrumUseRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pSpectra'
--
-- * 'pLocation'
--
-- * 'pVersion'
--
-- * 'pType'
--
-- * 'pDeviceDesc'
pawsNotifySpectrumUseRequest
    :: PawsNotifySpectrumUseRequest
pawsNotifySpectrumUseRequest =
    PawsNotifySpectrumUseRequest
    { _pSpectra = Nothing
    , _pLocation = Nothing
    , _pVersion = Nothing
    , _pType = Nothing
    , _pDeviceDesc = Nothing
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
pSpectra :: Lens' PawsNotifySpectrumUseRequest [Maybe SpectrumMessage]
pSpectra
  = lens _pSpectra (\ s a -> s{_pSpectra = a}) .
      _Default
      . _Coerce

-- | The geolocation of the master device (the device that is sending the
-- spectrum-use notification) to the database is required in the
-- spectrum-use notification message.
pLocation :: Lens' PawsNotifySpectrumUseRequest (Maybe (Maybe GeoLocation))
pLocation
  = lens _pLocation (\ s a -> s{_pLocation = a})

-- | The PAWS version. Must be exactly 1.0. Required field.
pVersion :: Lens' PawsNotifySpectrumUseRequest (Maybe Text)
pVersion = lens _pVersion (\ s a -> s{_pVersion = a})

-- | The message type (e.g., INIT_REQ, AVAIL_SPECTRUM_REQ, ...). Required
-- field.
pType :: Lens' PawsNotifySpectrumUseRequest (Maybe Text)
pType = lens _pType (\ s a -> s{_pType = a})

-- | Device descriptor information is required in the spectrum-use
-- notification message.
pDeviceDesc :: Lens' PawsNotifySpectrumUseRequest (Maybe (Maybe DeviceDescriptor))
pDeviceDesc
  = lens _pDeviceDesc (\ s a -> s{_pDeviceDesc = a})

-- | An empty response to the notification.
--
-- /See:/ 'pawsNotifySpectrumUseResponse' smart constructor.
data PawsNotifySpectrumUseResponse = PawsNotifySpectrumUseResponse
    { _pnsurKind    :: !Text
    , _pnsurVersion :: !(Maybe Text)
    , _pnsurType    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PawsNotifySpectrumUseResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pnsurKind'
--
-- * 'pnsurVersion'
--
-- * 'pnsurType'
pawsNotifySpectrumUseResponse
    :: PawsNotifySpectrumUseResponse
pawsNotifySpectrumUseResponse =
    PawsNotifySpectrumUseResponse
    { _pnsurKind = "spectrum#pawsNotifySpectrumUseResponse"
    , _pnsurVersion = Nothing
    , _pnsurType = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"spectrum#pawsNotifySpectrumUseResponse\".
pnsurKind :: Lens' PawsNotifySpectrumUseResponse Text
pnsurKind
  = lens _pnsurKind (\ s a -> s{_pnsurKind = a})

-- | The PAWS version. Must be exactly 1.0. Required field.
pnsurVersion :: Lens' PawsNotifySpectrumUseResponse (Maybe Text)
pnsurVersion
  = lens _pnsurVersion (\ s a -> s{_pnsurVersion = a})

-- | The message type (e.g., INIT_REQ, AVAIL_SPECTRUM_REQ, ...). Required
-- field.
pnsurType :: Lens' PawsNotifySpectrumUseResponse (Maybe Text)
pnsurType
  = lens _pnsurType (\ s a -> s{_pnsurType = a})

-- | The registration request message contains the required registration
-- parameters.
--
-- /See:/ 'pawsRegisterRequest' smart constructor.
data PawsRegisterRequest = PawsRegisterRequest
    { _prrAntenna     :: !(Maybe (Maybe AntennaCharacteristics))
    , _prrLocation    :: !(Maybe (Maybe GeoLocation))
    , _prrDeviceOwner :: !(Maybe (Maybe DeviceOwner))
    , _prrVersion     :: !(Maybe Text)
    , _prrType        :: !(Maybe Text)
    , _prrDeviceDesc  :: !(Maybe (Maybe DeviceDescriptor))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PawsRegisterRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prrAntenna'
--
-- * 'prrLocation'
--
-- * 'prrDeviceOwner'
--
-- * 'prrVersion'
--
-- * 'prrType'
--
-- * 'prrDeviceDesc'
pawsRegisterRequest
    :: PawsRegisterRequest
pawsRegisterRequest =
    PawsRegisterRequest
    { _prrAntenna = Nothing
    , _prrLocation = Nothing
    , _prrDeviceOwner = Nothing
    , _prrVersion = Nothing
    , _prrType = Nothing
    , _prrDeviceDesc = Nothing
    }

-- | Antenna characteristics, including its height and height type.
prrAntenna :: Lens' PawsRegisterRequest (Maybe (Maybe AntennaCharacteristics))
prrAntenna
  = lens _prrAntenna (\ s a -> s{_prrAntenna = a})

-- | A device\'s geolocation is required.
prrLocation :: Lens' PawsRegisterRequest (Maybe (Maybe GeoLocation))
prrLocation
  = lens _prrLocation (\ s a -> s{_prrLocation = a})

-- | Device owner information is required.
prrDeviceOwner :: Lens' PawsRegisterRequest (Maybe (Maybe DeviceOwner))
prrDeviceOwner
  = lens _prrDeviceOwner
      (\ s a -> s{_prrDeviceOwner = a})

-- | The PAWS version. Must be exactly 1.0. Required field.
prrVersion :: Lens' PawsRegisterRequest (Maybe Text)
prrVersion
  = lens _prrVersion (\ s a -> s{_prrVersion = a})

-- | The message type (e.g., INIT_REQ, AVAIL_SPECTRUM_REQ, ...). Required
-- field.
prrType :: Lens' PawsRegisterRequest (Maybe Text)
prrType = lens _prrType (\ s a -> s{_prrType = a})

-- | A DeviceDescriptor is required.
prrDeviceDesc :: Lens' PawsRegisterRequest (Maybe (Maybe DeviceDescriptor))
prrDeviceDesc
  = lens _prrDeviceDesc
      (\ s a -> s{_prrDeviceDesc = a})

-- | The registration response message simply acknowledges receipt of the
-- request and is otherwise empty.
--
-- /See:/ 'pawsRegisterResponse' smart constructor.
data PawsRegisterResponse = PawsRegisterResponse
    { _pawKind           :: !Text
    , _pawVersion        :: !(Maybe Text)
    , _pawType           :: !(Maybe Text)
    , _pawDatabaseChange :: !(Maybe (Maybe DbUpdateSpec))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PawsRegisterResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pawKind'
--
-- * 'pawVersion'
--
-- * 'pawType'
--
-- * 'pawDatabaseChange'
pawsRegisterResponse
    :: PawsRegisterResponse
pawsRegisterResponse =
    PawsRegisterResponse
    { _pawKind = "spectrum#pawsRegisterResponse"
    , _pawVersion = Nothing
    , _pawType = Nothing
    , _pawDatabaseChange = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"spectrum#pawsRegisterResponse\".
pawKind :: Lens' PawsRegisterResponse Text
pawKind = lens _pawKind (\ s a -> s{_pawKind = a})

-- | The PAWS version. Must be exactly 1.0. Required field.
pawVersion :: Lens' PawsRegisterResponse (Maybe Text)
pawVersion
  = lens _pawVersion (\ s a -> s{_pawVersion = a})

-- | The message type (e.g., INIT_REQ, AVAIL_SPECTRUM_REQ, ...). Required
-- field.
pawType :: Lens' PawsRegisterResponse (Maybe Text)
pawType = lens _pawType (\ s a -> s{_pawType = a})

-- | A database may include the databaseChange parameter to notify a device
-- of a change to its database URI, providing one or more alternate
-- database URIs. The device should use this information to update its list
-- of pre-configured databases by (only) replacing its entry for the
-- responding database with the list of alternate URIs.
pawDatabaseChange :: Lens' PawsRegisterResponse (Maybe (Maybe DbUpdateSpec))
pawDatabaseChange
  = lens _pawDatabaseChange
      (\ s a -> s{_pawDatabaseChange = a})

-- | The device validation request message.
--
-- /See:/ 'pawsVerifyDeviceRequest' smart constructor.
data PawsVerifyDeviceRequest = PawsVerifyDeviceRequest
    { _pvdrVersion     :: !(Maybe Text)
    , _pvdrDeviceDescs :: !(Maybe [Maybe DeviceDescriptor])
    , _pvdrType        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PawsVerifyDeviceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pvdrVersion'
--
-- * 'pvdrDeviceDescs'
--
-- * 'pvdrType'
pawsVerifyDeviceRequest
    :: PawsVerifyDeviceRequest
pawsVerifyDeviceRequest =
    PawsVerifyDeviceRequest
    { _pvdrVersion = Nothing
    , _pvdrDeviceDescs = Nothing
    , _pvdrType = Nothing
    }

-- | The PAWS version. Must be exactly 1.0. Required field.
pvdrVersion :: Lens' PawsVerifyDeviceRequest (Maybe Text)
pvdrVersion
  = lens _pvdrVersion (\ s a -> s{_pvdrVersion = a})

-- | A list of device descriptors, which specifies the slave devices to be
-- validated, is required.
pvdrDeviceDescs :: Lens' PawsVerifyDeviceRequest [Maybe DeviceDescriptor]
pvdrDeviceDescs
  = lens _pvdrDeviceDescs
      (\ s a -> s{_pvdrDeviceDescs = a})
      . _Default
      . _Coerce

-- | The message type (e.g., INIT_REQ, AVAIL_SPECTRUM_REQ, ...). Required
-- field.
pvdrType :: Lens' PawsVerifyDeviceRequest (Maybe Text)
pvdrType = lens _pvdrType (\ s a -> s{_pvdrType = a})

-- | The device validation response message.
--
-- /See:/ 'pawsVerifyDeviceResponse' smart constructor.
data PawsVerifyDeviceResponse = PawsVerifyDeviceResponse
    { _pvdrvDeviceValidities :: !(Maybe [Maybe DeviceValidity])
    , _pvdrvKind             :: !Text
    , _pvdrvVersion          :: !(Maybe Text)
    , _pvdrvType             :: !(Maybe Text)
    , _pvdrvDatabaseChange   :: !(Maybe (Maybe DbUpdateSpec))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PawsVerifyDeviceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pvdrvDeviceValidities'
--
-- * 'pvdrvKind'
--
-- * 'pvdrvVersion'
--
-- * 'pvdrvType'
--
-- * 'pvdrvDatabaseChange'
pawsVerifyDeviceResponse
    :: PawsVerifyDeviceResponse
pawsVerifyDeviceResponse =
    PawsVerifyDeviceResponse
    { _pvdrvDeviceValidities = Nothing
    , _pvdrvKind = "spectrum#pawsVerifyDeviceResponse"
    , _pvdrvVersion = Nothing
    , _pvdrvType = Nothing
    , _pvdrvDatabaseChange = Nothing
    }

-- | A device validities list is required in the device validation response
-- to report whether each slave device listed in a previous device
-- validation request is valid. The number of entries must match the number
-- of device descriptors listed in the previous device validation request.
pvdrvDeviceValidities :: Lens' PawsVerifyDeviceResponse [Maybe DeviceValidity]
pvdrvDeviceValidities
  = lens _pvdrvDeviceValidities
      (\ s a -> s{_pvdrvDeviceValidities = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"spectrum#pawsVerifyDeviceResponse\".
pvdrvKind :: Lens' PawsVerifyDeviceResponse Text
pvdrvKind
  = lens _pvdrvKind (\ s a -> s{_pvdrvKind = a})

-- | The PAWS version. Must be exactly 1.0. Required field.
pvdrvVersion :: Lens' PawsVerifyDeviceResponse (Maybe Text)
pvdrvVersion
  = lens _pvdrvVersion (\ s a -> s{_pvdrvVersion = a})

-- | The message type (e.g., INIT_REQ, AVAIL_SPECTRUM_REQ, ...). Required
-- field.
pvdrvType :: Lens' PawsVerifyDeviceResponse (Maybe Text)
pvdrvType
  = lens _pvdrvType (\ s a -> s{_pvdrvType = a})

-- | A database may include the databaseChange parameter to notify a device
-- of a change to its database URI, providing one or more alternate
-- database URIs. The device should use this information to update its list
-- of pre-configured databases by (only) replacing its entry for the
-- responding database with the list of alternate URIs.
pvdrvDatabaseChange :: Lens' PawsVerifyDeviceResponse (Maybe (Maybe DbUpdateSpec))
pvdrvDatabaseChange
  = lens _pvdrvDatabaseChange
      (\ s a -> s{_pvdrvDatabaseChange = a})

-- | This contains parameters for the ruleset of a regulatory domain that is
-- communicated using the initialization and available-spectrum processes.
--
-- /See:/ 'rulesetInfo' smart constructor.
data RulesetInfo = RulesetInfo
    { _riRulesetIds        :: !(Maybe [Text])
    , _riMaxPollingSecs    :: !(Maybe Int32)
    , _riMaxLocationChange :: !(Maybe Double)
    , _riAuthority         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    RulesetInfo
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

-- | The regulatory domain to which the ruleset belongs is required. It must
-- be a 2-letter country code. The device should use this to determine
-- additional device behavior required by the associated regulatory domain.
riAuthority :: Lens' RulesetInfo (Maybe Text)
riAuthority
  = lens _riAuthority (\ s a -> s{_riAuthority = a})

-- | Available spectrum can be logically characterized by a list of frequency
-- ranges and permissible power levels for each range.
--
-- /See:/ 'spectrumMessage' smart constructor.
data SpectrumMessage = SpectrumMessage
    { _smBandwidth       :: !(Maybe Double)
    , _smFrequencyRanges :: !(Maybe [Maybe FrequencyRange])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    SpectrumMessage
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
  = lens _smBandwidth (\ s a -> s{_smBandwidth = a})

-- | The list of frequency ranges and permissible power levels. The list may
-- be empty if there is no available spectrum, otherwise it will be
-- present.
smFrequencyRanges :: Lens' SpectrumMessage [Maybe FrequencyRange]
smFrequencyRanges
  = lens _smFrequencyRanges
      (\ s a -> s{_smFrequencyRanges = a})
      . _Default
      . _Coerce

-- | The spectrum schedule element combines an event time with spectrum
-- profile to define a time period in which the profile is valid.
--
-- /See:/ 'spectrumSchedule' smart constructor.
data SpectrumSchedule = SpectrumSchedule
    { _ssSpectra   :: !(Maybe [Maybe SpectrumMessage])
    , _ssEventTime :: !(Maybe (Maybe EventTime))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    SpectrumSchedule
    { _ssSpectra = Nothing
    , _ssEventTime = Nothing
    }

-- | A list of spectrum messages representing the usable profile. It will
-- always be present, but may be empty when there is no available spectrum.
ssSpectra :: Lens' SpectrumSchedule [Maybe SpectrumMessage]
ssSpectra
  = lens _ssSpectra (\ s a -> s{_ssSpectra = a}) .
      _Default
      . _Coerce

-- | The event time expresses when the spectrum profile is valid. It will
-- always be present.
ssEventTime :: Lens' SpectrumSchedule (Maybe (Maybe EventTime))
ssEventTime
  = lens _ssEventTime (\ s a -> s{_ssEventTime = a})

-- | A vCard-in-JSON message that contains only the fields needed for PAWS: -
-- fn: Full name of an individual - org: Name of the organization - adr:
-- Address fields - tel: Telephone numbers - email: Email addresses
--
-- /See:/ 'vcard' smart constructor.
data Vcard = Vcard
    { _vEmail :: !(Maybe (Maybe VcardTypedText))
    , _vAdr   :: !(Maybe (Maybe VcardAddress))
    , _vOrg   :: !(Maybe (Maybe VcardTypedText))
    , _vTel   :: !(Maybe (Maybe VcardTelephone))
    , _vFn    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    Vcard
    { _vEmail = Nothing
    , _vAdr = Nothing
    , _vOrg = Nothing
    , _vTel = Nothing
    , _vFn = Nothing
    }

-- | An email address that can be used to reach the contact.
vEmail :: Lens' Vcard (Maybe (Maybe VcardTypedText))
vEmail = lens _vEmail (\ s a -> s{_vEmail = a})

-- | The street address of the entity.
vAdr :: Lens' Vcard (Maybe (Maybe VcardAddress))
vAdr = lens _vAdr (\ s a -> s{_vAdr = a})

-- | The organization associated with the registering entity.
vOrg :: Lens' Vcard (Maybe (Maybe VcardTypedText))
vOrg = lens _vOrg (\ s a -> s{_vOrg = a})

-- | A telephone number that can be used to call the contact.
vTel :: Lens' Vcard (Maybe (Maybe VcardTelephone))
vTel = lens _vTel (\ s a -> s{_vTel = a})

-- | The full name of the contact person. For example: John A. Smith.
vFn :: Lens' Vcard (Maybe Text)
vFn = lens _vFn (\ s a -> s{_vFn = a})

-- | The structure used to represent a street address.
--
-- /See:/ 'vcardAddress' smart constructor.
data VcardAddress = VcardAddress
    { _vaPobox    :: !(Maybe Text)
    , _vaCountry  :: !(Maybe Text)
    , _vaStreet   :: !(Maybe Text)
    , _vaLocality :: !(Maybe Text)
    , _vaCode     :: !(Maybe Text)
    , _vaRegion   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    VcardAddress
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

-- | The structure used to represent a telephone number.
--
-- /See:/ 'vcardTelephone' smart constructor.
newtype VcardTelephone = VcardTelephone
    { _vtUri :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VcardTelephone' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vtUri'
vcardTelephone
    :: VcardTelephone
vcardTelephone =
    VcardTelephone
    { _vtUri = Nothing
    }

-- | A nested telephone URI of the form: tel:+1-123-456-7890.
vtUri :: Lens' VcardTelephone (Maybe Text)
vtUri = lens _vtUri (\ s a -> s{_vtUri = a})

-- | The structure used to represent an organization and an email address.
--
-- /See:/ 'vcardTypedText' smart constructor.
newtype VcardTypedText = VcardTypedText
    { _vttText :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VcardTypedText' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vttText'
vcardTypedText
    :: VcardTypedText
vcardTypedText =
    VcardTypedText
    { _vttText = Nothing
    }

-- | The text string associated with this item. For example, for an org
-- field: ACME, inc. For an email field: smith\'example.com.
vttText :: Lens' VcardTypedText (Maybe Text)
vttText = lens _vttText (\ s a -> s{_vttText = a})
