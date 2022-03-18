{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Spectrum.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.Spectrum.Internal.Product
  (

    -- * AntennaCharacteristics
    AntennaCharacteristics (..),
    newAntennaCharacteristics,

    -- * DatabaseSpec
    DatabaseSpec (..),
    newDatabaseSpec,

    -- * DbUpdateSpec
    DbUpdateSpec (..),
    newDbUpdateSpec,

    -- * DeviceCapabilities
    DeviceCapabilities (..),
    newDeviceCapabilities,

    -- * DeviceDescriptor
    DeviceDescriptor (..),
    newDeviceDescriptor,

    -- * DeviceOwner
    DeviceOwner (..),
    newDeviceOwner,

    -- * DeviceValidity
    DeviceValidity (..),
    newDeviceValidity,

    -- * EventTime
    EventTime (..),
    newEventTime,

    -- * FrequencyRange
    FrequencyRange (..),
    newFrequencyRange,

    -- * GeoLocation
    GeoLocation (..),
    newGeoLocation,

    -- * GeoLocationEllipse
    GeoLocationEllipse (..),
    newGeoLocationEllipse,

    -- * GeoLocationPoint
    GeoLocationPoint (..),
    newGeoLocationPoint,

    -- * GeoLocationPolygon
    GeoLocationPolygon (..),
    newGeoLocationPolygon,

    -- * GeoSpectrumSchedule
    GeoSpectrumSchedule (..),
    newGeoSpectrumSchedule,

    -- * PawsGetSpectrumBatchRequest
    PawsGetSpectrumBatchRequest (..),
    newPawsGetSpectrumBatchRequest,

    -- * PawsGetSpectrumBatchResponse
    PawsGetSpectrumBatchResponse (..),
    newPawsGetSpectrumBatchResponse,

    -- * PawsGetSpectrumRequest
    PawsGetSpectrumRequest (..),
    newPawsGetSpectrumRequest,

    -- * PawsGetSpectrumResponse
    PawsGetSpectrumResponse (..),
    newPawsGetSpectrumResponse,

    -- * PawsInitRequest
    PawsInitRequest (..),
    newPawsInitRequest,

    -- * PawsInitResponse
    PawsInitResponse (..),
    newPawsInitResponse,

    -- * PawsNotifySpectrumUseRequest
    PawsNotifySpectrumUseRequest (..),
    newPawsNotifySpectrumUseRequest,

    -- * PawsNotifySpectrumUseResponse
    PawsNotifySpectrumUseResponse (..),
    newPawsNotifySpectrumUseResponse,

    -- * PawsRegisterRequest
    PawsRegisterRequest (..),
    newPawsRegisterRequest,

    -- * PawsRegisterResponse
    PawsRegisterResponse (..),
    newPawsRegisterResponse,

    -- * PawsVerifyDeviceRequest
    PawsVerifyDeviceRequest (..),
    newPawsVerifyDeviceRequest,

    -- * PawsVerifyDeviceResponse
    PawsVerifyDeviceResponse (..),
    newPawsVerifyDeviceResponse,

    -- * RulesetInfo
    RulesetInfo (..),
    newRulesetInfo,

    -- * SpectrumMessage
    SpectrumMessage (..),
    newSpectrumMessage,

    -- * SpectrumSchedule
    SpectrumSchedule (..),
    newSpectrumSchedule,

    -- * Vcard
    Vcard (..),
    newVcard,

    -- * VcardAddress
    VcardAddress (..),
    newVcardAddress,

    -- * VcardTelephone
    VcardTelephone (..),
    newVcardTelephone,

    -- * VcardTypedText
    VcardTypedText (..),
    newVcardTypedText,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.Spectrum.Internal.Sum

-- | Antenna characteristics provide additional information, such as the antenna height, antenna type, etc. Whether antenna characteristics must be provided in a request depends on the device type and regulatory domain.
--
-- /See:/ 'newAntennaCharacteristics' smart constructor.
data AntennaCharacteristics = AntennaCharacteristics
    {
      -- | The antenna height in meters. Whether the antenna height is required depends on the device type and the regulatory domain. Note that the height may be negative.
      height :: (Core.Maybe Core.Double)
      -- | If the height is required, then the height type (AGL for above ground level or AMSL for above mean sea level) is also required. The default is AGL.
    , heightType :: (Core.Maybe Core.Text)
      -- | The height uncertainty in meters. Whether this is required depends on the regulatory domain.
    , heightUncertainty :: (Core.Maybe Core.Double)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AntennaCharacteristics' with the minimum fields required to make a request.
newAntennaCharacteristics 
    ::  AntennaCharacteristics
newAntennaCharacteristics =
  AntennaCharacteristics
    { height = Core.Nothing
    , heightType = Core.Nothing
    , heightUncertainty = Core.Nothing
    }

instance Core.FromJSON AntennaCharacteristics where
        parseJSON
          = Core.withObject "AntennaCharacteristics"
              (\ o ->
                 AntennaCharacteristics Core.<$>
                   (o Core..:? "height") Core.<*>
                     (o Core..:? "heightType")
                     Core.<*> (o Core..:? "heightUncertainty"))

instance Core.ToJSON AntennaCharacteristics where
        toJSON AntennaCharacteristics{..}
          = Core.object
              (Core.catMaybes
                 [("height" Core..=) Core.<$> height,
                  ("heightType" Core..=) Core.<$> heightType,
                  ("heightUncertainty" Core..=) Core.<$>
                    heightUncertainty])


-- | This message contains the name and URI of a database.
--
-- /See:/ 'newDatabaseSpec' smart constructor.
data DatabaseSpec = DatabaseSpec
    {
      -- | The display name for a database.
      name :: (Core.Maybe Core.Text)
      -- | The corresponding URI of the database.
    , uri :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatabaseSpec' with the minimum fields required to make a request.
newDatabaseSpec 
    ::  DatabaseSpec
newDatabaseSpec = DatabaseSpec {name = Core.Nothing, uri = Core.Nothing}

instance Core.FromJSON DatabaseSpec where
        parseJSON
          = Core.withObject "DatabaseSpec"
              (\ o ->
                 DatabaseSpec Core.<$>
                   (o Core..:? "name") Core.<*> (o Core..:? "uri"))

instance Core.ToJSON DatabaseSpec where
        toJSON DatabaseSpec{..}
          = Core.object
              (Core.catMaybes
                 [("name" Core..=) Core.<$> name,
                  ("uri" Core..=) Core.<$> uri])


-- | This message is provided by the database to notify devices of an upcoming change to the database URI.
--
-- /See:/ 'newDbUpdateSpec' smart constructor.
newtype DbUpdateSpec = DbUpdateSpec
    {
      -- | A required list of one or more databases. A device should update its preconfigured list of databases to replace (only) the database that provided the response with the specified entries.
      databases :: (Core.Maybe [DatabaseSpec])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DbUpdateSpec' with the minimum fields required to make a request.
newDbUpdateSpec 
    ::  DbUpdateSpec
newDbUpdateSpec = DbUpdateSpec {databases = Core.Nothing}

instance Core.FromJSON DbUpdateSpec where
        parseJSON
          = Core.withObject "DbUpdateSpec"
              (\ o ->
                 DbUpdateSpec Core.<$>
                   (o Core..:? "databases" Core..!= Core.mempty))

instance Core.ToJSON DbUpdateSpec where
        toJSON DbUpdateSpec{..}
          = Core.object
              (Core.catMaybes
                 [("databases" Core..=) Core.<$> databases])


-- | Device capabilities provide additional information that may be used by a device to provide additional information to the database that may help it to determine available spectrum. If the database does not support device capabilities it will ignore the parameter altogether.
--
-- /See:/ 'newDeviceCapabilities' smart constructor.
newtype DeviceCapabilities = DeviceCapabilities
    {
      -- | An optional list of frequency ranges supported by the device. Each element must contain start and stop frequencies in which the device can operate. Channel identifiers are optional. When specified, the database should not return available spectrum that falls outside these ranges or channel IDs.
      frequencyRanges :: (Core.Maybe [FrequencyRange])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeviceCapabilities' with the minimum fields required to make a request.
newDeviceCapabilities 
    ::  DeviceCapabilities
newDeviceCapabilities = DeviceCapabilities {frequencyRanges = Core.Nothing}

instance Core.FromJSON DeviceCapabilities where
        parseJSON
          = Core.withObject "DeviceCapabilities"
              (\ o ->
                 DeviceCapabilities Core.<$>
                   (o Core..:? "frequencyRanges" Core..!= Core.mempty))

instance Core.ToJSON DeviceCapabilities where
        toJSON DeviceCapabilities{..}
          = Core.object
              (Core.catMaybes
                 [("frequencyRanges" Core..=) Core.<$>
                    frequencyRanges])


-- | The device descriptor contains parameters that identify the specific device, such as its manufacturer serial number, regulatory-specific identifier (e.g., FCC ID), and any other device characteristics required by regulatory domains.
--
-- /See:/ 'newDeviceDescriptor' smart constructor.
data DeviceDescriptor = DeviceDescriptor
    {
      -- | Specifies the ETSI white space device category. Valid values are the strings master and slave. This field is case-insensitive. Consult the ETSI documentation for details about the device types.
      etsiEnDeviceCategory :: (Core.Maybe Core.Text)
      -- | Specifies the ETSI white space device emissions class. The values are represented by numeric strings, such as 1, 2, etc. Consult the ETSI documentation for details about the device types.
    , etsiEnDeviceEmissionsClass :: (Core.Maybe Core.Text)
      -- | Specifies the ETSI white space device type. Valid values are single-letter strings, such as A, B, etc. Consult the ETSI documentation for details about the device types.
    , etsiEnDeviceType :: (Core.Maybe Core.Text)
      -- | Specifies the ETSI white space device technology identifier. The string value must not exceed 64 characters in length. Consult the ETSI documentation for details about the device types.
    , etsiEnTechnologyId :: (Core.Maybe Core.Text)
      -- | Specifies the device\'s FCC certification identifier. The value is an identifier string whose length should not exceed 32 characters. Note that, in practice, a valid FCC ID may be limited to 19 characters.
    , fccId :: (Core.Maybe Core.Text)
      -- | Specifies the TV Band White Space device type, as defined by the FCC. Valid values are FIXED, MODE/1, MODE/2.
    , fccTvbdDeviceType :: (Core.Maybe Core.Text)
      -- | The manufacturer\'s ID may be required by the regulatory domain. This should represent the name of the device manufacturer, should be consistent across all devices from the same manufacturer, and should be distinct from that of other manufacturers. The string value must not exceed 64 characters in length.
    , manufacturerId :: (Core.Maybe Core.Text)
      -- | The device\'s model ID may be required by the regulatory domain. The string value must not exceed 64 characters in length.
    , modelId :: (Core.Maybe Core.Text)
      -- | The list of identifiers for rulesets supported by the device. A database may require that the device provide this list before servicing the device requests. If the database does not support any of the rulesets specified in the list, the database may refuse to service the device requests. If present, the list must contain at least one entry.
      -- 
      -- For information about the valid requests, see section 9.2 of the PAWS specification. Currently, FccTvBandWhiteSpace-2010 is the only supported ruleset.
    , rulesetIds :: (Core.Maybe [Core.Text])
      -- | The manufacturer\'s device serial number; required by the applicable regulatory domain. The length of the value must not exceed 64 characters.
    , serialNumber :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeviceDescriptor' with the minimum fields required to make a request.
newDeviceDescriptor 
    ::  DeviceDescriptor
newDeviceDescriptor =
  DeviceDescriptor
    { etsiEnDeviceCategory = Core.Nothing
    , etsiEnDeviceEmissionsClass = Core.Nothing
    , etsiEnDeviceType = Core.Nothing
    , etsiEnTechnologyId = Core.Nothing
    , fccId = Core.Nothing
    , fccTvbdDeviceType = Core.Nothing
    , manufacturerId = Core.Nothing
    , modelId = Core.Nothing
    , rulesetIds = Core.Nothing
    , serialNumber = Core.Nothing
    }

instance Core.FromJSON DeviceDescriptor where
        parseJSON
          = Core.withObject "DeviceDescriptor"
              (\ o ->
                 DeviceDescriptor Core.<$>
                   (o Core..:? "etsiEnDeviceCategory") Core.<*>
                     (o Core..:? "etsiEnDeviceEmissionsClass")
                     Core.<*> (o Core..:? "etsiEnDeviceType")
                     Core.<*> (o Core..:? "etsiEnTechnologyId")
                     Core.<*> (o Core..:? "fccId")
                     Core.<*> (o Core..:? "fccTvbdDeviceType")
                     Core.<*> (o Core..:? "manufacturerId")
                     Core.<*> (o Core..:? "modelId")
                     Core.<*>
                     (o Core..:? "rulesetIds" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "serialNumber"))

instance Core.ToJSON DeviceDescriptor where
        toJSON DeviceDescriptor{..}
          = Core.object
              (Core.catMaybes
                 [("etsiEnDeviceCategory" Core..=) Core.<$>
                    etsiEnDeviceCategory,
                  ("etsiEnDeviceEmissionsClass" Core..=) Core.<$>
                    etsiEnDeviceEmissionsClass,
                  ("etsiEnDeviceType" Core..=) Core.<$>
                    etsiEnDeviceType,
                  ("etsiEnTechnologyId" Core..=) Core.<$>
                    etsiEnTechnologyId,
                  ("fccId" Core..=) Core.<$> fccId,
                  ("fccTvbdDeviceType" Core..=) Core.<$>
                    fccTvbdDeviceType,
                  ("manufacturerId" Core..=) Core.<$> manufacturerId,
                  ("modelId" Core..=) Core.<$> modelId,
                  ("rulesetIds" Core..=) Core.<$> rulesetIds,
                  ("serialNumber" Core..=) Core.<$> serialNumber])


-- | This parameter contains device-owner information required as part of device registration. The regulatory domains may require additional parameters.
-- 
-- All contact information must be expressed using the structure defined by the vCard format specification. Only the contact fields of vCard are supported:
-- - fn: Full name of an individual - org: Name of the organization - adr: Address fields - tel: Telephone numbers - email: Email addresses
-- 
-- Note that the vCard specification defines maximum lengths for each field.
--
-- /See:/ 'newDeviceOwner' smart constructor.
data DeviceOwner = DeviceOwner
    {
      -- | The vCard contact information for the device operator is optional, but may be required by specific regulatory domains.
      operator :: (Core.Maybe Vcard)
      -- | The vCard contact information for the individual or business that owns the device is required.
    , owner :: (Core.Maybe Vcard)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeviceOwner' with the minimum fields required to make a request.
newDeviceOwner 
    ::  DeviceOwner
newDeviceOwner = DeviceOwner {operator = Core.Nothing, owner = Core.Nothing}

instance Core.FromJSON DeviceOwner where
        parseJSON
          = Core.withObject "DeviceOwner"
              (\ o ->
                 DeviceOwner Core.<$>
                   (o Core..:? "operator") Core.<*>
                     (o Core..:? "owner"))

instance Core.ToJSON DeviceOwner where
        toJSON DeviceOwner{..}
          = Core.object
              (Core.catMaybes
                 [("operator" Core..=) Core.<$> operator,
                  ("owner" Core..=) Core.<$> owner])


-- | The device validity element describes whether a particular device is valid to operate in the regulatory domain.
--
-- /See:/ 'newDeviceValidity' smart constructor.
data DeviceValidity = DeviceValidity
    {
      -- | The descriptor of the device for which the validity check was requested. It will always be present.
      deviceDesc :: (Core.Maybe DeviceDescriptor)
      -- | The validity status: true if the device is valid for operation, false otherwise. It will always be present.
    , isValid :: (Core.Maybe Core.Bool)
      -- | If the device identifier is not valid, the database may include a reason. The reason may be in any language. The length of the value should not exceed 128 characters.
    , reason :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeviceValidity' with the minimum fields required to make a request.
newDeviceValidity 
    ::  DeviceValidity
newDeviceValidity =
  DeviceValidity
    {deviceDesc = Core.Nothing, isValid = Core.Nothing, reason = Core.Nothing}

instance Core.FromJSON DeviceValidity where
        parseJSON
          = Core.withObject "DeviceValidity"
              (\ o ->
                 DeviceValidity Core.<$>
                   (o Core..:? "deviceDesc") Core.<*>
                     (o Core..:? "isValid")
                     Core.<*> (o Core..:? "reason"))

instance Core.ToJSON DeviceValidity where
        toJSON DeviceValidity{..}
          = Core.object
              (Core.catMaybes
                 [("deviceDesc" Core..=) Core.<$> deviceDesc,
                  ("isValid" Core..=) Core.<$> isValid,
                  ("reason" Core..=) Core.<$> reason])


-- | The start and stop times of an event. This is used to indicate the time period for which a spectrum profile is valid.
-- 
-- Both times are expressed using the format, YYYY-MM-DDThh:mm:ssZ, as defined in RFC3339. The times must be expressed using UTC.
--
-- /See:/ 'newEventTime' smart constructor.
data EventTime = EventTime
    {
      -- | The inclusive start of the event. It will be present.
      startTime :: (Core.Maybe Core.Text)
      -- | The exclusive end of the event. It will be present.
    , stopTime :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EventTime' with the minimum fields required to make a request.
newEventTime 
    ::  EventTime
newEventTime = EventTime {startTime = Core.Nothing, stopTime = Core.Nothing}

instance Core.FromJSON EventTime where
        parseJSON
          = Core.withObject "EventTime"
              (\ o ->
                 EventTime Core.<$>
                   (o Core..:? "startTime") Core.<*>
                     (o Core..:? "stopTime"))

instance Core.ToJSON EventTime where
        toJSON EventTime{..}
          = Core.object
              (Core.catMaybes
                 [("startTime" Core..=) Core.<$> startTime,
                  ("stopTime" Core..=) Core.<$> stopTime])


-- | A specific range of frequencies together with the associated maximum power level and channel identifier.
--
-- /See:/ 'newFrequencyRange' smart constructor.
data FrequencyRange = FrequencyRange
    {
      -- | The database may include a channel identifier, when applicable. When it is included, the device should treat it as informative. The length of the identifier should not exceed 16 characters.
      channelId :: (Core.Maybe Core.Text)
      -- | The maximum total power level (EIRP)—computed over the corresponding operating bandwidth—that is permitted within the frequency range. Depending on the context in which the frequency-range element appears, this value may be required. For example, it is required in the available-spectrum response, available-spectrum-batch response, and spectrum-use notification message, but it should not be present (it is not applicable) when the frequency range appears inside a device-capabilities message.
    , maxPowerDBm :: (Core.Maybe Core.Double)
      -- | The required inclusive start of the frequency range (in Hertz).
    , startHz :: (Core.Maybe Core.Double)
      -- | The required exclusive end of the frequency range (in Hertz).
    , stopHz :: (Core.Maybe Core.Double)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FrequencyRange' with the minimum fields required to make a request.
newFrequencyRange 
    ::  FrequencyRange
newFrequencyRange =
  FrequencyRange
    { channelId = Core.Nothing
    , maxPowerDBm = Core.Nothing
    , startHz = Core.Nothing
    , stopHz = Core.Nothing
    }

instance Core.FromJSON FrequencyRange where
        parseJSON
          = Core.withObject "FrequencyRange"
              (\ o ->
                 FrequencyRange Core.<$>
                   (o Core..:? "channelId") Core.<*>
                     (o Core..:? "maxPowerDBm")
                     Core.<*> (o Core..:? "startHz")
                     Core.<*> (o Core..:? "stopHz"))

instance Core.ToJSON FrequencyRange where
        toJSON FrequencyRange{..}
          = Core.object
              (Core.catMaybes
                 [("channelId" Core..=) Core.<$> channelId,
                  ("maxPowerDBm" Core..=) Core.<$> maxPowerDBm,
                  ("startHz" Core..=) Core.<$> startHz,
                  ("stopHz" Core..=) Core.<$> stopHz])


-- | This parameter is used to specify the geolocation of the device.
--
-- /See:/ 'newGeoLocation' smart constructor.
data GeoLocation = GeoLocation
    {
      -- | The location confidence level, as an integer percentage, may be required, depending on the regulatory domain. When the parameter is optional and not provided, its value is assumed to be 95. Valid values range from 0 to 99, since, in practice, 100-percent confidence is not achievable. The confidence value is meaningful only when geolocation refers to a point with uncertainty.
      confidence :: (Core.Maybe Core.Int32)
      -- | If present, indicates that the geolocation represents a point. Paradoxically, a point is parameterized using an ellipse, where the center represents the location of the point and the distances along the major and minor axes represent the uncertainty. The uncertainty values may be required, depending on the regulatory domain.
    , point :: (Core.Maybe GeoLocationEllipse)
      -- | If present, indicates that the geolocation represents a region. Database support for regions is optional.
    , region :: (Core.Maybe GeoLocationPolygon)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GeoLocation' with the minimum fields required to make a request.
newGeoLocation 
    ::  GeoLocation
newGeoLocation =
  GeoLocation
    {confidence = Core.Nothing, point = Core.Nothing, region = Core.Nothing}

instance Core.FromJSON GeoLocation where
        parseJSON
          = Core.withObject "GeoLocation"
              (\ o ->
                 GeoLocation Core.<$>
                   (o Core..:? "confidence") Core.<*>
                     (o Core..:? "point")
                     Core.<*> (o Core..:? "region"))

instance Core.ToJSON GeoLocation where
        toJSON GeoLocation{..}
          = Core.object
              (Core.catMaybes
                 [("confidence" Core..=) Core.<$> confidence,
                  ("point" Core..=) Core.<$> point,
                  ("region" Core..=) Core.<$> region])


-- | A \"point\" with uncertainty is represented using the Ellipse shape.
--
-- /See:/ 'newGeoLocationEllipse' smart constructor.
data GeoLocationEllipse = GeoLocationEllipse
    {
      -- | A required geo-spatial point representing the center of the ellipse.
      center :: (Core.Maybe GeoLocationPoint)
      -- | A floating-point number that expresses the orientation of the ellipse, representing the rotation, in degrees, of the semi-major axis from North towards the East. For example, when the uncertainty is greatest along the North-South direction, orientation is 0 degrees; conversely, if the uncertainty is greatest along the East-West direction, orientation is 90 degrees. When orientation is not present, the orientation is assumed to be 0.
    , orientation :: (Core.Maybe Core.Double)
      -- | A floating-point number that expresses the location uncertainty along the major axis of the ellipse. May be required by the regulatory domain. When the uncertainty is optional, the default value is 0.
    , semiMajorAxis :: (Core.Maybe Core.Double)
      -- | A floating-point number that expresses the location uncertainty along the minor axis of the ellipse. May be required by the regulatory domain. When the uncertainty is optional, the default value is 0.
    , semiMinorAxis :: (Core.Maybe Core.Double)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GeoLocationEllipse' with the minimum fields required to make a request.
newGeoLocationEllipse 
    ::  GeoLocationEllipse
newGeoLocationEllipse =
  GeoLocationEllipse
    { center = Core.Nothing
    , orientation = Core.Nothing
    , semiMajorAxis = Core.Nothing
    , semiMinorAxis = Core.Nothing
    }

instance Core.FromJSON GeoLocationEllipse where
        parseJSON
          = Core.withObject "GeoLocationEllipse"
              (\ o ->
                 GeoLocationEllipse Core.<$>
                   (o Core..:? "center") Core.<*>
                     (o Core..:? "orientation")
                     Core.<*> (o Core..:? "semiMajorAxis")
                     Core.<*> (o Core..:? "semiMinorAxis"))

instance Core.ToJSON GeoLocationEllipse where
        toJSON GeoLocationEllipse{..}
          = Core.object
              (Core.catMaybes
                 [("center" Core..=) Core.<$> center,
                  ("orientation" Core..=) Core.<$> orientation,
                  ("semiMajorAxis" Core..=) Core.<$> semiMajorAxis,
                  ("semiMinorAxis" Core..=) Core.<$> semiMinorAxis])


-- | A single geolocation on the globe.
--
-- /See:/ 'newGeoLocationPoint' smart constructor.
data GeoLocationPoint = GeoLocationPoint
    {
      -- | A required floating-point number that expresses the latitude in degrees using the WGS84 datum. For details on this encoding, see the National Imagery and Mapping Agency\'s Technical Report TR8350.2.
      latitude :: (Core.Maybe Core.Double)
      -- | A required floating-point number that expresses the longitude in degrees using the WGS84 datum. For details on this encoding, see the National Imagery and Mapping Agency\'s Technical Report TR8350.2.
    , longitude :: (Core.Maybe Core.Double)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GeoLocationPoint' with the minimum fields required to make a request.
newGeoLocationPoint 
    ::  GeoLocationPoint
newGeoLocationPoint =
  GeoLocationPoint {latitude = Core.Nothing, longitude = Core.Nothing}

instance Core.FromJSON GeoLocationPoint where
        parseJSON
          = Core.withObject "GeoLocationPoint"
              (\ o ->
                 GeoLocationPoint Core.<$>
                   (o Core..:? "latitude") Core.<*>
                     (o Core..:? "longitude"))

instance Core.ToJSON GeoLocationPoint where
        toJSON GeoLocationPoint{..}
          = Core.object
              (Core.catMaybes
                 [("latitude" Core..=) Core.<$> latitude,
                  ("longitude" Core..=) Core.<$> longitude])


-- | A region is represented using the polygonal shape.
--
-- /See:/ 'newGeoLocationPolygon' smart constructor.
newtype GeoLocationPolygon = GeoLocationPolygon
    {
      -- | When the geolocation describes a region, the exterior field refers to a list of latitude\/longitude points that represent the vertices of a polygon. The first and last points must be the same. Thus, a minimum of four points is required. The following polygon restrictions from RFC5491 apply:
      -- - A connecting line shall not cross another connecting line of the same polygon. - The vertices must be defined in a counterclockwise order. - The edges of a polygon are defined by the shortest path between two points in space (not a geodesic curve). Consequently, the length between two adjacent vertices should be restricted to a maximum of 130 km. - All vertices are assumed to be at the same altitude. - Polygon shapes should be restricted to a maximum of 15 vertices (16 points that include the repeated vertex).
      exterior :: (Core.Maybe [GeoLocationPoint])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GeoLocationPolygon' with the minimum fields required to make a request.
newGeoLocationPolygon 
    ::  GeoLocationPolygon
newGeoLocationPolygon = GeoLocationPolygon {exterior = Core.Nothing}

instance Core.FromJSON GeoLocationPolygon where
        parseJSON
          = Core.withObject "GeoLocationPolygon"
              (\ o ->
                 GeoLocationPolygon Core.<$>
                   (o Core..:? "exterior" Core..!= Core.mempty))

instance Core.ToJSON GeoLocationPolygon where
        toJSON GeoLocationPolygon{..}
          = Core.object
              (Core.catMaybes
                 [("exterior" Core..=) Core.<$> exterior])


-- | The schedule of spectrum profiles available at a particular geolocation.
--
-- /See:/ 'newGeoSpectrumSchedule' smart constructor.
data GeoSpectrumSchedule = GeoSpectrumSchedule
    {
      -- | The geolocation identifies the location at which the spectrum schedule applies. It will always be present.
      location :: (Core.Maybe GeoLocation)
      -- | A list of available spectrum profiles and associated times. It will always be present, and at least one schedule must be included (though it may be empty if there is no available spectrum). More than one schedule may be included to represent future changes to the available spectrum.
    , spectrumSchedules :: (Core.Maybe [SpectrumSchedule])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GeoSpectrumSchedule' with the minimum fields required to make a request.
newGeoSpectrumSchedule 
    ::  GeoSpectrumSchedule
newGeoSpectrumSchedule =
  GeoSpectrumSchedule
    {location = Core.Nothing, spectrumSchedules = Core.Nothing}

instance Core.FromJSON GeoSpectrumSchedule where
        parseJSON
          = Core.withObject "GeoSpectrumSchedule"
              (\ o ->
                 GeoSpectrumSchedule Core.<$>
                   (o Core..:? "location") Core.<*>
                     (o Core..:? "spectrumSchedules" Core..!=
                        Core.mempty))

instance Core.ToJSON GeoSpectrumSchedule where
        toJSON GeoSpectrumSchedule{..}
          = Core.object
              (Core.catMaybes
                 [("location" Core..=) Core.<$> location,
                  ("spectrumSchedules" Core..=) Core.<$>
                    spectrumSchedules])


-- | The request message for a batch available spectrum query protocol.
--
-- /See:/ 'newPawsGetSpectrumBatchRequest' smart constructor.
data PawsGetSpectrumBatchRequest = PawsGetSpectrumBatchRequest
    {
      -- | Depending on device type and regulatory domain, antenna characteristics may be required.
      antenna :: (Core.Maybe AntennaCharacteristics)
      -- | The master device may include its device capabilities to limit the available-spectrum batch response to the spectrum that is compatible with its capabilities. The database should not return spectrum that is incompatible with the specified capabilities.
    , capabilities :: (Core.Maybe DeviceCapabilities)
      -- | When the available spectrum request is made on behalf of a specific device (a master or slave device), device descriptor information for the device on whose behalf the request is made is required (in such cases, the requestType parameter must be empty). When a requestType value is specified, device descriptor information may be optional or required according to the rules of the applicable regulatory domain.
    , deviceDesc :: (Core.Maybe DeviceDescriptor)
      -- | A geolocation list is required. This allows a device to specify its current location plus additional anticipated locations when allowed by the regulatory domain. At least one location must be included. Geolocation must be given as the location of the radiation center of the device\'s antenna. If a location specifies a region, rather than a point, the database may return an UNIMPLEMENTED error if it does not support query by region.
      -- 
      -- There is no upper limit on the number of locations included in a available spectrum batch request, but the database may restrict the number of locations it supports by returning a response with fewer locations than specified in the batch request. Note that geolocations must be those of the master device (a device with geolocation capability that makes an available spectrum batch request), whether the master device is making the request on its own behalf or on behalf of a slave device (one without geolocation capability).
    , locations :: (Core.Maybe [GeoLocation])
      -- | When an available spectrum batch request is made by the master device (a device with geolocation capability) on behalf of a slave device (a device without geolocation capability), the rules of the applicable regulatory domain may require the master device to provide its own device descriptor information (in addition to device descriptor information for the slave device in a separate parameter).
    , masterDeviceDesc :: (Core.Maybe DeviceDescriptor)
      -- | Depending on device type and regulatory domain, device owner information may be included in an available spectrum batch request. This allows the device to register and get spectrum-availability information in a single request.
    , owner :: (Core.Maybe DeviceOwner)
      -- | The request type parameter is an optional parameter that can be used to modify an available spectrum batch request, but its use depends on applicable regulatory rules. For example, It may be used to request generic slave device parameters without having to specify the device descriptor for a specific device. When the requestType parameter is missing, the request is for a specific device (master or slave), and the device descriptor parameter for the device on whose behalf the batch request is made is required.
    , requestType :: (Core.Maybe Core.Text)
      -- | The message type (e.g., INIT/REQ, AVAIL/SPECTRUM_REQ, ...).
      -- 
      -- Required field.
    , type' :: (Core.Maybe Core.Text)
      -- | The PAWS version. Must be exactly 1.0.
      -- 
      -- Required field.
    , version :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PawsGetSpectrumBatchRequest' with the minimum fields required to make a request.
newPawsGetSpectrumBatchRequest 
    ::  PawsGetSpectrumBatchRequest
newPawsGetSpectrumBatchRequest =
  PawsGetSpectrumBatchRequest
    { antenna = Core.Nothing
    , capabilities = Core.Nothing
    , deviceDesc = Core.Nothing
    , locations = Core.Nothing
    , masterDeviceDesc = Core.Nothing
    , owner = Core.Nothing
    , requestType = Core.Nothing
    , type' = Core.Nothing
    , version = Core.Nothing
    }

instance Core.FromJSON PawsGetSpectrumBatchRequest
         where
        parseJSON
          = Core.withObject "PawsGetSpectrumBatchRequest"
              (\ o ->
                 PawsGetSpectrumBatchRequest Core.<$>
                   (o Core..:? "antenna") Core.<*>
                     (o Core..:? "capabilities")
                     Core.<*> (o Core..:? "deviceDesc")
                     Core.<*>
                     (o Core..:? "locations" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "masterDeviceDesc")
                     Core.<*> (o Core..:? "owner")
                     Core.<*> (o Core..:? "requestType")
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "version"))

instance Core.ToJSON PawsGetSpectrumBatchRequest
         where
        toJSON PawsGetSpectrumBatchRequest{..}
          = Core.object
              (Core.catMaybes
                 [("antenna" Core..=) Core.<$> antenna,
                  ("capabilities" Core..=) Core.<$> capabilities,
                  ("deviceDesc" Core..=) Core.<$> deviceDesc,
                  ("locations" Core..=) Core.<$> locations,
                  ("masterDeviceDesc" Core..=) Core.<$>
                    masterDeviceDesc,
                  ("owner" Core..=) Core.<$> owner,
                  ("requestType" Core..=) Core.<$> requestType,
                  ("type" Core..=) Core.<$> type',
                  ("version" Core..=) Core.<$> version])


-- | The response message for the batch available spectrum query contains a schedule of available spectrum for the device at multiple locations.
--
-- /See:/ 'newPawsGetSpectrumBatchResponse' smart constructor.
data PawsGetSpectrumBatchResponse = PawsGetSpectrumBatchResponse
    {
      -- | A database may include the databaseChange parameter to notify a device of a change to its database URI, providing one or more alternate database URIs. The device should use this information to update its list of pre-configured databases by (only) replacing its entry for the responding database with the list of alternate URIs.
      databaseChange :: (Core.Maybe DbUpdateSpec)
      -- | The database must return in its available spectrum response the device descriptor information it received in the master device\'s available spectrum batch request.
    , deviceDesc :: (Core.Maybe DeviceDescriptor)
      -- | The available spectrum batch response must contain a geo-spectrum schedule list, The list may be empty if spectrum is not available. The database may return more than one geo-spectrum schedule to represent future changes to the available spectrum. How far in advance a schedule may be provided depends upon the applicable regulatory domain. The database may return available spectrum for fewer geolocations than requested. The device must not make assumptions about the order of the entries in the list, and must use the geolocation value in each geo-spectrum schedule entry to match available spectrum to a location.
    , geoSpectrumSchedules :: (Core.Maybe [GeoSpectrumSchedule])
      -- | Identifies what kind of resource this is. Value: the fixed string \"spectrum#pawsGetSpectrumBatchResponse\".
    , kind :: Core.Text
      -- | The database may return a constraint on the allowed maximum contiguous bandwidth (in Hertz). A regulatory domain may require the database to return this parameter. When this parameter is present in the response, the device must apply this constraint to its spectrum-selection logic to ensure that no single block of spectrum has bandwidth that exceeds this value.
    , maxContiguousBwHz :: (Core.Maybe Core.Double)
      -- | The database may return a constraint on the allowed maximum total bandwidth (in Hertz), which does not need to be contiguous. A regulatory domain may require the database to return this parameter. When this parameter is present in the available spectrum batch response, the device must apply this constraint to its spectrum-selection logic to ensure that total bandwidth does not exceed this value.
    , maxTotalBwHz :: (Core.Maybe Core.Double)
      -- | For regulatory domains that require a spectrum-usage report from devices, the database must return true for this parameter if the geo-spectrum schedules list is not empty; otherwise, the database should either return false or omit this parameter. If this parameter is present and its value is true, the device must send a spectrum use notify message to the database; otherwise, the device should not send the notification.
    , needsSpectrumReport :: (Core.Maybe Core.Bool)
      -- | The database should return ruleset information, which identifies the applicable regulatory authority and ruleset for the available spectrum batch response. If included, the device must use the corresponding ruleset to interpret the response. Values provided in the returned ruleset information, such as maxLocationChange, take precedence over any conflicting values provided in the ruleset information returned in a prior initialization response sent by the database to the device.
    , rulesetInfo :: (Core.Maybe RulesetInfo)
      -- | The database includes a timestamp of the form, YYYY-MM-DDThh:mm:ssZ (Internet timestamp format per RFC3339), in its available spectrum batch response. The timestamp should be used by the device as a reference for the start and stop times specified in the response spectrum schedules.
    , timestamp :: (Core.Maybe Core.Text)
      -- | The message type (e.g., INIT/REQ, AVAIL/SPECTRUM_REQ, ...).
      -- 
      -- Required field.
    , type' :: (Core.Maybe Core.Text)
      -- | The PAWS version. Must be exactly 1.0.
      -- 
      -- Required field.
    , version :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PawsGetSpectrumBatchResponse' with the minimum fields required to make a request.
newPawsGetSpectrumBatchResponse 
    ::  PawsGetSpectrumBatchResponse
newPawsGetSpectrumBatchResponse =
  PawsGetSpectrumBatchResponse
    { databaseChange = Core.Nothing
    , deviceDesc = Core.Nothing
    , geoSpectrumSchedules = Core.Nothing
    , kind = "spectrum#pawsGetSpectrumBatchResponse"
    , maxContiguousBwHz = Core.Nothing
    , maxTotalBwHz = Core.Nothing
    , needsSpectrumReport = Core.Nothing
    , rulesetInfo = Core.Nothing
    , timestamp = Core.Nothing
    , type' = Core.Nothing
    , version = Core.Nothing
    }

instance Core.FromJSON PawsGetSpectrumBatchResponse
         where
        parseJSON
          = Core.withObject "PawsGetSpectrumBatchResponse"
              (\ o ->
                 PawsGetSpectrumBatchResponse Core.<$>
                   (o Core..:? "databaseChange") Core.<*>
                     (o Core..:? "deviceDesc")
                     Core.<*>
                     (o Core..:? "geoSpectrumSchedules" Core..!=
                        Core.mempty)
                     Core.<*>
                     (o Core..:? "kind" Core..!=
                        "spectrum#pawsGetSpectrumBatchResponse")
                     Core.<*> (o Core..:? "maxContiguousBwHz")
                     Core.<*> (o Core..:? "maxTotalBwHz")
                     Core.<*> (o Core..:? "needsSpectrumReport")
                     Core.<*> (o Core..:? "rulesetInfo")
                     Core.<*> (o Core..:? "timestamp")
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "version"))

instance Core.ToJSON PawsGetSpectrumBatchResponse
         where
        toJSON PawsGetSpectrumBatchResponse{..}
          = Core.object
              (Core.catMaybes
                 [("databaseChange" Core..=) Core.<$> databaseChange,
                  ("deviceDesc" Core..=) Core.<$> deviceDesc,
                  ("geoSpectrumSchedules" Core..=) Core.<$>
                    geoSpectrumSchedules,
                  Core.Just ("kind" Core..= kind),
                  ("maxContiguousBwHz" Core..=) Core.<$>
                    maxContiguousBwHz,
                  ("maxTotalBwHz" Core..=) Core.<$> maxTotalBwHz,
                  ("needsSpectrumReport" Core..=) Core.<$>
                    needsSpectrumReport,
                  ("rulesetInfo" Core..=) Core.<$> rulesetInfo,
                  ("timestamp" Core..=) Core.<$> timestamp,
                  ("type" Core..=) Core.<$> type',
                  ("version" Core..=) Core.<$> version])


-- | The request message for the available spectrum query protocol which must include the device\'s geolocation.
--
-- /See:/ 'newPawsGetSpectrumRequest' smart constructor.
data PawsGetSpectrumRequest = PawsGetSpectrumRequest
    {
      -- | Depending on device type and regulatory domain, the characteristics of the antenna may be required.
      antenna :: (Core.Maybe AntennaCharacteristics)
      -- | The master device may include its device capabilities to limit the available-spectrum response to the spectrum that is compatible with its capabilities. The database should not return spectrum that is incompatible with the specified capabilities.
    , capabilities :: (Core.Maybe DeviceCapabilities)
      -- | When the available spectrum request is made on behalf of a specific device (a master or slave device), device descriptor information for that device is required (in such cases, the requestType parameter must be empty). When a requestType value is specified, device descriptor information may be optional or required according to the rules of the applicable regulatory domain.
    , deviceDesc :: (Core.Maybe DeviceDescriptor)
      -- | The geolocation of the master device (a device with geolocation capability that makes an available spectrum request) is required whether the master device is making the request on its own behalf or on behalf of a slave device (one without geolocation capability). The location must be the location of the radiation center of the master device\'s antenna. To support mobile devices, a regulatory domain may allow the anticipated position of the master device to be given instead. If the location specifies a region, rather than a point, the database may return an UNIMPLEMENTED error code if it does not support query by region.
    , location :: (Core.Maybe GeoLocation)
      -- | When an available spectrum request is made by the master device (a device with geolocation capability) on behalf of a slave device (a device without geolocation capability), the rules of the applicable regulatory domain may require the master device to provide its own device descriptor information (in addition to device descriptor information for the slave device, which is provided in a separate parameter).
    , masterDeviceDesc :: (Core.Maybe DeviceDescriptor)
      -- | Depending on device type and regulatory domain, device owner information may be included in an available spectrum request. This allows the device to register and get spectrum-availability information in a single request.
    , owner :: (Core.Maybe DeviceOwner)
      -- | The request type parameter is an optional parameter that can be used to modify an available spectrum request, but its use depends on applicable regulatory rules. It may be used, for example, to request generic slave device parameters without having to specify the device descriptor for a specific device. When the requestType parameter is missing, the request is for a specific device (master or slave), and the deviceDesc parameter for the device on whose behalf the request is made is required.
    , requestType :: (Core.Maybe Core.Text)
      -- | The message type (e.g., INIT/REQ, AVAIL/SPECTRUM_REQ, ...).
      -- 
      -- Required field.
    , type' :: (Core.Maybe Core.Text)
      -- | The PAWS version. Must be exactly 1.0.
      -- 
      -- Required field.
    , version :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PawsGetSpectrumRequest' with the minimum fields required to make a request.
newPawsGetSpectrumRequest 
    ::  PawsGetSpectrumRequest
newPawsGetSpectrumRequest =
  PawsGetSpectrumRequest
    { antenna = Core.Nothing
    , capabilities = Core.Nothing
    , deviceDesc = Core.Nothing
    , location = Core.Nothing
    , masterDeviceDesc = Core.Nothing
    , owner = Core.Nothing
    , requestType = Core.Nothing
    , type' = Core.Nothing
    , version = Core.Nothing
    }

instance Core.FromJSON PawsGetSpectrumRequest where
        parseJSON
          = Core.withObject "PawsGetSpectrumRequest"
              (\ o ->
                 PawsGetSpectrumRequest Core.<$>
                   (o Core..:? "antenna") Core.<*>
                     (o Core..:? "capabilities")
                     Core.<*> (o Core..:? "deviceDesc")
                     Core.<*> (o Core..:? "location")
                     Core.<*> (o Core..:? "masterDeviceDesc")
                     Core.<*> (o Core..:? "owner")
                     Core.<*> (o Core..:? "requestType")
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "version"))

instance Core.ToJSON PawsGetSpectrumRequest where
        toJSON PawsGetSpectrumRequest{..}
          = Core.object
              (Core.catMaybes
                 [("antenna" Core..=) Core.<$> antenna,
                  ("capabilities" Core..=) Core.<$> capabilities,
                  ("deviceDesc" Core..=) Core.<$> deviceDesc,
                  ("location" Core..=) Core.<$> location,
                  ("masterDeviceDesc" Core..=) Core.<$>
                    masterDeviceDesc,
                  ("owner" Core..=) Core.<$> owner,
                  ("requestType" Core..=) Core.<$> requestType,
                  ("type" Core..=) Core.<$> type',
                  ("version" Core..=) Core.<$> version])


-- | The response message for the available spectrum query which contains a schedule of available spectrum for the device.
--
-- /See:/ 'newPawsGetSpectrumResponse' smart constructor.
data PawsGetSpectrumResponse = PawsGetSpectrumResponse
    {
      -- | A database may include the databaseChange parameter to notify a device of a change to its database URI, providing one or more alternate database URIs. The device should use this information to update its list of pre-configured databases by (only) replacing its entry for the responding database with the list of alternate URIs.
      databaseChange :: (Core.Maybe DbUpdateSpec)
      -- | The database must return, in its available spectrum response, the device descriptor information it received in the master device\'s available spectrum request.
    , deviceDesc :: (Core.Maybe DeviceDescriptor)
      -- | Identifies what kind of resource this is. Value: the fixed string \"spectrum#pawsGetSpectrumResponse\".
    , kind :: Core.Text
      -- | The database may return a constraint on the allowed maximum contiguous bandwidth (in Hertz). A regulatory domain may require the database to return this parameter. When this parameter is present in the response, the device must apply this constraint to its spectrum-selection logic to ensure that no single block of spectrum has bandwidth that exceeds this value.
    , maxContiguousBwHz :: (Core.Maybe Core.Double)
      -- | The database may return a constraint on the allowed maximum total bandwidth (in Hertz), which need not be contiguous. A regulatory domain may require the database to return this parameter. When this parameter is present in the available spectrum response, the device must apply this constraint to its spectrum-selection logic to ensure that total bandwidth does not exceed this value.
    , maxTotalBwHz :: (Core.Maybe Core.Double)
      -- | For regulatory domains that require a spectrum-usage report from devices, the database must return true for this parameter if the spectrum schedule list is not empty; otherwise, the database will either return false or omit this parameter. If this parameter is present and its value is true, the device must send a spectrum use notify message to the database; otherwise, the device must not send the notification.
    , needsSpectrumReport :: (Core.Maybe Core.Bool)
      -- | The database should return ruleset information, which identifies the applicable regulatory authority and ruleset for the available spectrum response. If included, the device must use the corresponding ruleset to interpret the response. Values provided in the returned ruleset information, such as maxLocationChange, take precedence over any conflicting values provided in the ruleset information returned in a prior initialization response sent by the database to the device.
    , rulesetInfo :: (Core.Maybe RulesetInfo)
      -- | The available spectrum response must contain a spectrum schedule list. The list may be empty if spectrum is not available. The database may return more than one spectrum schedule to represent future changes to the available spectrum. How far in advance a schedule may be provided depends on the applicable regulatory domain.
    , spectrumSchedules :: (Core.Maybe [SpectrumSchedule])
      -- | The database includes a timestamp of the form YYYY-MM-DDThh:mm:ssZ (Internet timestamp format per RFC3339) in its available spectrum response. The timestamp should be used by the device as a reference for the start and stop times specified in the response spectrum schedules.
    , timestamp :: (Core.Maybe Core.Text)
      -- | The message type (e.g., INIT/REQ, AVAIL/SPECTRUM_REQ, ...).
      -- 
      -- Required field.
    , type' :: (Core.Maybe Core.Text)
      -- | The PAWS version. Must be exactly 1.0.
      -- 
      -- Required field.
    , version :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PawsGetSpectrumResponse' with the minimum fields required to make a request.
newPawsGetSpectrumResponse 
    ::  PawsGetSpectrumResponse
newPawsGetSpectrumResponse =
  PawsGetSpectrumResponse
    { databaseChange = Core.Nothing
    , deviceDesc = Core.Nothing
    , kind = "spectrum#pawsGetSpectrumResponse"
    , maxContiguousBwHz = Core.Nothing
    , maxTotalBwHz = Core.Nothing
    , needsSpectrumReport = Core.Nothing
    , rulesetInfo = Core.Nothing
    , spectrumSchedules = Core.Nothing
    , timestamp = Core.Nothing
    , type' = Core.Nothing
    , version = Core.Nothing
    }

instance Core.FromJSON PawsGetSpectrumResponse where
        parseJSON
          = Core.withObject "PawsGetSpectrumResponse"
              (\ o ->
                 PawsGetSpectrumResponse Core.<$>
                   (o Core..:? "databaseChange") Core.<*>
                     (o Core..:? "deviceDesc")
                     Core.<*>
                     (o Core..:? "kind" Core..!=
                        "spectrum#pawsGetSpectrumResponse")
                     Core.<*> (o Core..:? "maxContiguousBwHz")
                     Core.<*> (o Core..:? "maxTotalBwHz")
                     Core.<*> (o Core..:? "needsSpectrumReport")
                     Core.<*> (o Core..:? "rulesetInfo")
                     Core.<*>
                     (o Core..:? "spectrumSchedules" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "timestamp")
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "version"))

instance Core.ToJSON PawsGetSpectrumResponse where
        toJSON PawsGetSpectrumResponse{..}
          = Core.object
              (Core.catMaybes
                 [("databaseChange" Core..=) Core.<$> databaseChange,
                  ("deviceDesc" Core..=) Core.<$> deviceDesc,
                  Core.Just ("kind" Core..= kind),
                  ("maxContiguousBwHz" Core..=) Core.<$>
                    maxContiguousBwHz,
                  ("maxTotalBwHz" Core..=) Core.<$> maxTotalBwHz,
                  ("needsSpectrumReport" Core..=) Core.<$>
                    needsSpectrumReport,
                  ("rulesetInfo" Core..=) Core.<$> rulesetInfo,
                  ("spectrumSchedules" Core..=) Core.<$>
                    spectrumSchedules,
                  ("timestamp" Core..=) Core.<$> timestamp,
                  ("type" Core..=) Core.<$> type',
                  ("version" Core..=) Core.<$> version])


-- | The initialization request message allows the master device to initiate exchange of capabilities with the database.
--
-- /See:/ 'newPawsInitRequest' smart constructor.
data PawsInitRequest = PawsInitRequest
    {
      -- | The DeviceDescriptor parameter is required. If the database does not support the device or any of the rulesets specified in the device descriptor, it must return an UNSUPPORTED error code in the error response.
      deviceDesc :: (Core.Maybe DeviceDescriptor)
      -- | A device\'s geolocation is required.
    , location :: (Core.Maybe GeoLocation)
      -- | The message type (e.g., INIT/REQ, AVAIL/SPECTRUM_REQ, ...).
      -- 
      -- Required field.
    , type' :: (Core.Maybe Core.Text)
      -- | The PAWS version. Must be exactly 1.0.
      -- 
      -- Required field.
    , version :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PawsInitRequest' with the minimum fields required to make a request.
newPawsInitRequest 
    ::  PawsInitRequest
newPawsInitRequest =
  PawsInitRequest
    { deviceDesc = Core.Nothing
    , location = Core.Nothing
    , type' = Core.Nothing
    , version = Core.Nothing
    }

instance Core.FromJSON PawsInitRequest where
        parseJSON
          = Core.withObject "PawsInitRequest"
              (\ o ->
                 PawsInitRequest Core.<$>
                   (o Core..:? "deviceDesc") Core.<*>
                     (o Core..:? "location")
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "version"))

instance Core.ToJSON PawsInitRequest where
        toJSON PawsInitRequest{..}
          = Core.object
              (Core.catMaybes
                 [("deviceDesc" Core..=) Core.<$> deviceDesc,
                  ("location" Core..=) Core.<$> location,
                  ("type" Core..=) Core.<$> type',
                  ("version" Core..=) Core.<$> version])


-- | The initialization response message communicates database parameters to the requesting device.
--
-- /See:/ 'newPawsInitResponse' smart constructor.
data PawsInitResponse = PawsInitResponse
    {
      -- | A database may include the databaseChange parameter to notify a device of a change to its database URI, providing one or more alternate database URIs. The device should use this information to update its list of pre-configured databases by (only) replacing its entry for the responding database with the list of alternate URIs.
      databaseChange :: (Core.Maybe DbUpdateSpec)
      -- | Identifies what kind of resource this is. Value: the fixed string \"spectrum#pawsInitResponse\".
    , kind :: Core.Text
      -- | The rulesetInfo parameter must be included in the response. This parameter specifies the regulatory domain and parameters applicable to that domain. The database must include the authority field, which defines the regulatory domain for the location specified in the INIT_REQ message.
    , rulesetInfo :: (Core.Maybe RulesetInfo)
      -- | The message type (e.g., INIT/REQ, AVAIL/SPECTRUM_REQ, ...).
      -- 
      -- Required field.
    , type' :: (Core.Maybe Core.Text)
      -- | The PAWS version. Must be exactly 1.0.
      -- 
      -- Required field.
    , version :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PawsInitResponse' with the minimum fields required to make a request.
newPawsInitResponse 
    ::  PawsInitResponse
newPawsInitResponse =
  PawsInitResponse
    { databaseChange = Core.Nothing
    , kind = "spectrum#pawsInitResponse"
    , rulesetInfo = Core.Nothing
    , type' = Core.Nothing
    , version = Core.Nothing
    }

instance Core.FromJSON PawsInitResponse where
        parseJSON
          = Core.withObject "PawsInitResponse"
              (\ o ->
                 PawsInitResponse Core.<$>
                   (o Core..:? "databaseChange") Core.<*>
                     (o Core..:? "kind" Core..!=
                        "spectrum#pawsInitResponse")
                     Core.<*> (o Core..:? "rulesetInfo")
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "version"))

instance Core.ToJSON PawsInitResponse where
        toJSON PawsInitResponse{..}
          = Core.object
              (Core.catMaybes
                 [("databaseChange" Core..=) Core.<$> databaseChange,
                  Core.Just ("kind" Core..= kind),
                  ("rulesetInfo" Core..=) Core.<$> rulesetInfo,
                  ("type" Core..=) Core.<$> type',
                  ("version" Core..=) Core.<$> version])


-- | The spectrum-use notification message which must contain the geolocation of the Device and parameters required by the regulatory domain.
--
-- /See:/ 'newPawsNotifySpectrumUseRequest' smart constructor.
data PawsNotifySpectrumUseRequest = PawsNotifySpectrumUseRequest
    {
      -- | Device descriptor information is required in the spectrum-use notification message.
      deviceDesc :: (Core.Maybe DeviceDescriptor)
      -- | The geolocation of the master device (the device that is sending the spectrum-use notification) to the database is required in the spectrum-use notification message.
    , location :: (Core.Maybe GeoLocation)
      -- | A spectrum list is required in the spectrum-use notification. The list specifies the spectrum that the device expects to use, which includes frequency ranges and maximum power levels. The list may be empty if the device decides not to use any of spectrum. For consistency, the psdBandwidthHz value should match that from one of the spectrum elements in the corresponding available spectrum response previously sent to the device by the database. Note that maximum power levels in the spectrum element must be expressed as power spectral density over the specified psdBandwidthHz value. The actual bandwidth to be used (as computed from the start and stop frequencies) may be different from the psdBandwidthHz value. As an example, when regulatory rules express maximum power spectral density in terms of maximum power over any 100 kHz band, then the psdBandwidthHz value should be set to 100 kHz, even though the actual bandwidth used can be 20 kHz.
    , spectra :: (Core.Maybe [SpectrumMessage])
      -- | The message type (e.g., INIT/REQ, AVAIL/SPECTRUM_REQ, ...).
      -- 
      -- Required field.
    , type' :: (Core.Maybe Core.Text)
      -- | The PAWS version. Must be exactly 1.0.
      -- 
      -- Required field.
    , version :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PawsNotifySpectrumUseRequest' with the minimum fields required to make a request.
newPawsNotifySpectrumUseRequest 
    ::  PawsNotifySpectrumUseRequest
newPawsNotifySpectrumUseRequest =
  PawsNotifySpectrumUseRequest
    { deviceDesc = Core.Nothing
    , location = Core.Nothing
    , spectra = Core.Nothing
    , type' = Core.Nothing
    , version = Core.Nothing
    }

instance Core.FromJSON PawsNotifySpectrumUseRequest
         where
        parseJSON
          = Core.withObject "PawsNotifySpectrumUseRequest"
              (\ o ->
                 PawsNotifySpectrumUseRequest Core.<$>
                   (o Core..:? "deviceDesc") Core.<*>
                     (o Core..:? "location")
                     Core.<*> (o Core..:? "spectra" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "version"))

instance Core.ToJSON PawsNotifySpectrumUseRequest
         where
        toJSON PawsNotifySpectrumUseRequest{..}
          = Core.object
              (Core.catMaybes
                 [("deviceDesc" Core..=) Core.<$> deviceDesc,
                  ("location" Core..=) Core.<$> location,
                  ("spectra" Core..=) Core.<$> spectra,
                  ("type" Core..=) Core.<$> type',
                  ("version" Core..=) Core.<$> version])


-- | An empty response to the notification.
--
-- /See:/ 'newPawsNotifySpectrumUseResponse' smart constructor.
data PawsNotifySpectrumUseResponse = PawsNotifySpectrumUseResponse
    {
      -- | Identifies what kind of resource this is. Value: the fixed string \"spectrum#pawsNotifySpectrumUseResponse\".
      kind :: Core.Text
      -- | The message type (e.g., INIT/REQ, AVAIL/SPECTRUM_REQ, ...).
      -- 
      -- Required field.
    , type' :: (Core.Maybe Core.Text)
      -- | The PAWS version. Must be exactly 1.0.
      -- 
      -- Required field.
    , version :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PawsNotifySpectrumUseResponse' with the minimum fields required to make a request.
newPawsNotifySpectrumUseResponse 
    ::  PawsNotifySpectrumUseResponse
newPawsNotifySpectrumUseResponse =
  PawsNotifySpectrumUseResponse
    { kind = "spectrum#pawsNotifySpectrumUseResponse"
    , type' = Core.Nothing
    , version = Core.Nothing
    }

instance Core.FromJSON PawsNotifySpectrumUseResponse
         where
        parseJSON
          = Core.withObject "PawsNotifySpectrumUseResponse"
              (\ o ->
                 PawsNotifySpectrumUseResponse Core.<$>
                   (o Core..:? "kind" Core..!=
                      "spectrum#pawsNotifySpectrumUseResponse")
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "version"))

instance Core.ToJSON PawsNotifySpectrumUseResponse
         where
        toJSON PawsNotifySpectrumUseResponse{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("kind" Core..= kind),
                  ("type" Core..=) Core.<$> type',
                  ("version" Core..=) Core.<$> version])


-- | The registration request message contains the required registration parameters.
--
-- /See:/ 'newPawsRegisterRequest' smart constructor.
data PawsRegisterRequest = PawsRegisterRequest
    {
      -- | Antenna characteristics, including its height and height type.
      antenna :: (Core.Maybe AntennaCharacteristics)
      -- | A DeviceDescriptor is required.
    , deviceDesc :: (Core.Maybe DeviceDescriptor)
      -- | Device owner information is required.
    , deviceOwner :: (Core.Maybe DeviceOwner)
      -- | A device\'s geolocation is required.
    , location :: (Core.Maybe GeoLocation)
      -- | The message type (e.g., INIT/REQ, AVAIL/SPECTRUM_REQ, ...).
      -- 
      -- Required field.
    , type' :: (Core.Maybe Core.Text)
      -- | The PAWS version. Must be exactly 1.0.
      -- 
      -- Required field.
    , version :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PawsRegisterRequest' with the minimum fields required to make a request.
newPawsRegisterRequest 
    ::  PawsRegisterRequest
newPawsRegisterRequest =
  PawsRegisterRequest
    { antenna = Core.Nothing
    , deviceDesc = Core.Nothing
    , deviceOwner = Core.Nothing
    , location = Core.Nothing
    , type' = Core.Nothing
    , version = Core.Nothing
    }

instance Core.FromJSON PawsRegisterRequest where
        parseJSON
          = Core.withObject "PawsRegisterRequest"
              (\ o ->
                 PawsRegisterRequest Core.<$>
                   (o Core..:? "antenna") Core.<*>
                     (o Core..:? "deviceDesc")
                     Core.<*> (o Core..:? "deviceOwner")
                     Core.<*> (o Core..:? "location")
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "version"))

instance Core.ToJSON PawsRegisterRequest where
        toJSON PawsRegisterRequest{..}
          = Core.object
              (Core.catMaybes
                 [("antenna" Core..=) Core.<$> antenna,
                  ("deviceDesc" Core..=) Core.<$> deviceDesc,
                  ("deviceOwner" Core..=) Core.<$> deviceOwner,
                  ("location" Core..=) Core.<$> location,
                  ("type" Core..=) Core.<$> type',
                  ("version" Core..=) Core.<$> version])


-- | The registration response message simply acknowledges receipt of the request and is otherwise empty.
--
-- /See:/ 'newPawsRegisterResponse' smart constructor.
data PawsRegisterResponse = PawsRegisterResponse
    {
      -- | A database may include the databaseChange parameter to notify a device of a change to its database URI, providing one or more alternate database URIs. The device should use this information to update its list of pre-configured databases by (only) replacing its entry for the responding database with the list of alternate URIs.
      databaseChange :: (Core.Maybe DbUpdateSpec)
      -- | Identifies what kind of resource this is. Value: the fixed string \"spectrum#pawsRegisterResponse\".
    , kind :: Core.Text
      -- | The message type (e.g., INIT/REQ, AVAIL/SPECTRUM_REQ, ...).
      -- 
      -- Required field.
    , type' :: (Core.Maybe Core.Text)
      -- | The PAWS version. Must be exactly 1.0.
      -- 
      -- Required field.
    , version :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PawsRegisterResponse' with the minimum fields required to make a request.
newPawsRegisterResponse 
    ::  PawsRegisterResponse
newPawsRegisterResponse =
  PawsRegisterResponse
    { databaseChange = Core.Nothing
    , kind = "spectrum#pawsRegisterResponse"
    , type' = Core.Nothing
    , version = Core.Nothing
    }

instance Core.FromJSON PawsRegisterResponse where
        parseJSON
          = Core.withObject "PawsRegisterResponse"
              (\ o ->
                 PawsRegisterResponse Core.<$>
                   (o Core..:? "databaseChange") Core.<*>
                     (o Core..:? "kind" Core..!=
                        "spectrum#pawsRegisterResponse")
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "version"))

instance Core.ToJSON PawsRegisterResponse where
        toJSON PawsRegisterResponse{..}
          = Core.object
              (Core.catMaybes
                 [("databaseChange" Core..=) Core.<$> databaseChange,
                  Core.Just ("kind" Core..= kind),
                  ("type" Core..=) Core.<$> type',
                  ("version" Core..=) Core.<$> version])


-- | The device validation request message.
--
-- /See:/ 'newPawsVerifyDeviceRequest' smart constructor.
data PawsVerifyDeviceRequest = PawsVerifyDeviceRequest
    {
      -- | A list of device descriptors, which specifies the slave devices to be validated, is required.
      deviceDescs :: (Core.Maybe [DeviceDescriptor])
      -- | The message type (e.g., INIT/REQ, AVAIL/SPECTRUM_REQ, ...).
      -- 
      -- Required field.
    , type' :: (Core.Maybe Core.Text)
      -- | The PAWS version. Must be exactly 1.0.
      -- 
      -- Required field.
    , version :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PawsVerifyDeviceRequest' with the minimum fields required to make a request.
newPawsVerifyDeviceRequest 
    ::  PawsVerifyDeviceRequest
newPawsVerifyDeviceRequest =
  PawsVerifyDeviceRequest
    {deviceDescs = Core.Nothing, type' = Core.Nothing, version = Core.Nothing}

instance Core.FromJSON PawsVerifyDeviceRequest where
        parseJSON
          = Core.withObject "PawsVerifyDeviceRequest"
              (\ o ->
                 PawsVerifyDeviceRequest Core.<$>
                   (o Core..:? "deviceDescs" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "version"))

instance Core.ToJSON PawsVerifyDeviceRequest where
        toJSON PawsVerifyDeviceRequest{..}
          = Core.object
              (Core.catMaybes
                 [("deviceDescs" Core..=) Core.<$> deviceDescs,
                  ("type" Core..=) Core.<$> type',
                  ("version" Core..=) Core.<$> version])


-- | The device validation response message.
--
-- /See:/ 'newPawsVerifyDeviceResponse' smart constructor.
data PawsVerifyDeviceResponse = PawsVerifyDeviceResponse
    {
      -- | A database may include the databaseChange parameter to notify a device of a change to its database URI, providing one or more alternate database URIs. The device should use this information to update its list of pre-configured databases by (only) replacing its entry for the responding database with the list of alternate URIs.
      databaseChange :: (Core.Maybe DbUpdateSpec)
      -- | A device validities list is required in the device validation response to report whether each slave device listed in a previous device validation request is valid. The number of entries must match the number of device descriptors listed in the previous device validation request.
    , deviceValidities :: (Core.Maybe [DeviceValidity])
      -- | Identifies what kind of resource this is. Value: the fixed string \"spectrum#pawsVerifyDeviceResponse\".
    , kind :: Core.Text
      -- | The message type (e.g., INIT/REQ, AVAIL/SPECTRUM_REQ, ...).
      -- 
      -- Required field.
    , type' :: (Core.Maybe Core.Text)
      -- | The PAWS version. Must be exactly 1.0.
      -- 
      -- Required field.
    , version :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PawsVerifyDeviceResponse' with the minimum fields required to make a request.
newPawsVerifyDeviceResponse 
    ::  PawsVerifyDeviceResponse
newPawsVerifyDeviceResponse =
  PawsVerifyDeviceResponse
    { databaseChange = Core.Nothing
    , deviceValidities = Core.Nothing
    , kind = "spectrum#pawsVerifyDeviceResponse"
    , type' = Core.Nothing
    , version = Core.Nothing
    }

instance Core.FromJSON PawsVerifyDeviceResponse where
        parseJSON
          = Core.withObject "PawsVerifyDeviceResponse"
              (\ o ->
                 PawsVerifyDeviceResponse Core.<$>
                   (o Core..:? "databaseChange") Core.<*>
                     (o Core..:? "deviceValidities" Core..!= Core.mempty)
                     Core.<*>
                     (o Core..:? "kind" Core..!=
                        "spectrum#pawsVerifyDeviceResponse")
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "version"))

instance Core.ToJSON PawsVerifyDeviceResponse where
        toJSON PawsVerifyDeviceResponse{..}
          = Core.object
              (Core.catMaybes
                 [("databaseChange" Core..=) Core.<$> databaseChange,
                  ("deviceValidities" Core..=) Core.<$>
                    deviceValidities,
                  Core.Just ("kind" Core..= kind),
                  ("type" Core..=) Core.<$> type',
                  ("version" Core..=) Core.<$> version])


-- | This contains parameters for the ruleset of a regulatory domain that is communicated using the initialization and available-spectrum processes.
--
-- /See:/ 'newRulesetInfo' smart constructor.
data RulesetInfo = RulesetInfo
    {
      -- | The regulatory domain to which the ruleset belongs is required. It must be a 2-letter country code. The device should use this to determine additional device behavior required by the associated regulatory domain.
      authority :: (Core.Maybe Core.Text)
      -- | The maximum location change in meters is required in the initialization response, but optional otherwise. When the device changes location by more than this specified distance, it must contact the database to get the available spectrum for the new location. If the device is using spectrum that is no longer available, it must immediately cease use of the spectrum under rules for database-managed spectrum. If this value is provided within the context of an available-spectrum response, it takes precedence over the value within the initialization response.
    , maxLocationChange :: (Core.Maybe Core.Double)
      -- | The maximum duration, in seconds, between requests for available spectrum. It is required in the initialization response, but optional otherwise. The device must contact the database to get available spectrum no less frequently than this duration. If the new spectrum information indicates that the device is using spectrum that is no longer available, it must immediately cease use of those frequencies under rules for database-managed spectrum. If this value is provided within the context of an available-spectrum response, it takes precedence over the value within the initialization response.
    , maxPollingSecs :: (Core.Maybe Core.Int32)
      -- | The identifiers of the rulesets supported for the device\'s location. The database should include at least one applicable ruleset in the initialization response. The device may use the ruleset identifiers to determine parameters to include in subsequent requests. Within the context of the available-spectrum responses, the database should include the identifier of the ruleset that it used to determine the available-spectrum response. If included, the device must use the specified ruleset to interpret the response. If the device does not support the indicated ruleset, it must not operate in the spectrum governed by the ruleset.
    , rulesetIds :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RulesetInfo' with the minimum fields required to make a request.
newRulesetInfo 
    ::  RulesetInfo
newRulesetInfo =
  RulesetInfo
    { authority = Core.Nothing
    , maxLocationChange = Core.Nothing
    , maxPollingSecs = Core.Nothing
    , rulesetIds = Core.Nothing
    }

instance Core.FromJSON RulesetInfo where
        parseJSON
          = Core.withObject "RulesetInfo"
              (\ o ->
                 RulesetInfo Core.<$>
                   (o Core..:? "authority") Core.<*>
                     (o Core..:? "maxLocationChange")
                     Core.<*> (o Core..:? "maxPollingSecs")
                     Core.<*>
                     (o Core..:? "rulesetIds" Core..!= Core.mempty))

instance Core.ToJSON RulesetInfo where
        toJSON RulesetInfo{..}
          = Core.object
              (Core.catMaybes
                 [("authority" Core..=) Core.<$> authority,
                  ("maxLocationChange" Core..=) Core.<$>
                    maxLocationChange,
                  ("maxPollingSecs" Core..=) Core.<$> maxPollingSecs,
                  ("rulesetIds" Core..=) Core.<$> rulesetIds])


-- | Available spectrum can be logically characterized by a list of frequency ranges and permissible power levels for each range.
--
-- /See:/ 'newSpectrumMessage' smart constructor.
data SpectrumMessage = SpectrumMessage
    {
      -- | The bandwidth (in Hertz) for which permissible power levels are specified. For example, FCC regulation would require only one spectrum specification at 6MHz bandwidth, but Ofcom regulation would require two specifications, at 0.1MHz and 8MHz. This parameter may be empty if there is no available spectrum. It will be present otherwise.
      bandwidth :: (Core.Maybe Core.Double)
      -- | The list of frequency ranges and permissible power levels. The list may be empty if there is no available spectrum, otherwise it will be present.
    , frequencyRanges :: (Core.Maybe [FrequencyRange])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpectrumMessage' with the minimum fields required to make a request.
newSpectrumMessage 
    ::  SpectrumMessage
newSpectrumMessage =
  SpectrumMessage {bandwidth = Core.Nothing, frequencyRanges = Core.Nothing}

instance Core.FromJSON SpectrumMessage where
        parseJSON
          = Core.withObject "SpectrumMessage"
              (\ o ->
                 SpectrumMessage Core.<$>
                   (o Core..:? "bandwidth") Core.<*>
                     (o Core..:? "frequencyRanges" Core..!= Core.mempty))

instance Core.ToJSON SpectrumMessage where
        toJSON SpectrumMessage{..}
          = Core.object
              (Core.catMaybes
                 [("bandwidth" Core..=) Core.<$> bandwidth,
                  ("frequencyRanges" Core..=) Core.<$>
                    frequencyRanges])


-- | The spectrum schedule element combines an event time with spectrum profile to define a time period in which the profile is valid.
--
-- /See:/ 'newSpectrumSchedule' smart constructor.
data SpectrumSchedule = SpectrumSchedule
    {
      -- | The event time expresses when the spectrum profile is valid. It will always be present.
      eventTime :: (Core.Maybe EventTime)
      -- | A list of spectrum messages representing the usable profile. It will always be present, but may be empty when there is no available spectrum.
    , spectra :: (Core.Maybe [SpectrumMessage])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpectrumSchedule' with the minimum fields required to make a request.
newSpectrumSchedule 
    ::  SpectrumSchedule
newSpectrumSchedule =
  SpectrumSchedule {eventTime = Core.Nothing, spectra = Core.Nothing}

instance Core.FromJSON SpectrumSchedule where
        parseJSON
          = Core.withObject "SpectrumSchedule"
              (\ o ->
                 SpectrumSchedule Core.<$>
                   (o Core..:? "eventTime") Core.<*>
                     (o Core..:? "spectra" Core..!= Core.mempty))

instance Core.ToJSON SpectrumSchedule where
        toJSON SpectrumSchedule{..}
          = Core.object
              (Core.catMaybes
                 [("eventTime" Core..=) Core.<$> eventTime,
                  ("spectra" Core..=) Core.<$> spectra])


-- | A vCard-in-JSON message that contains only the fields needed for PAWS:
-- - fn: Full name of an individual - org: Name of the organization - adr: Address fields - tel: Telephone numbers - email: Email addresses
--
-- /See:/ 'newVcard' smart constructor.
data Vcard = Vcard
    {
      -- | The street address of the entity.
      adr :: (Core.Maybe VcardAddress)
      -- | An email address that can be used to reach the contact.
    , email :: (Core.Maybe VcardTypedText)
      -- | The full name of the contact person. For example: John A. Smith.
    , fn :: (Core.Maybe Core.Text)
      -- | The organization associated with the registering entity.
    , org :: (Core.Maybe VcardTypedText)
      -- | A telephone number that can be used to call the contact.
    , tel :: (Core.Maybe VcardTelephone)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Vcard' with the minimum fields required to make a request.
newVcard 
    ::  Vcard
newVcard =
  Vcard
    { adr = Core.Nothing
    , email = Core.Nothing
    , fn = Core.Nothing
    , org = Core.Nothing
    , tel = Core.Nothing
    }

instance Core.FromJSON Vcard where
        parseJSON
          = Core.withObject "Vcard"
              (\ o ->
                 Vcard Core.<$>
                   (o Core..:? "adr") Core.<*> (o Core..:? "email")
                     Core.<*> (o Core..:? "fn")
                     Core.<*> (o Core..:? "org")
                     Core.<*> (o Core..:? "tel"))

instance Core.ToJSON Vcard where
        toJSON Vcard{..}
          = Core.object
              (Core.catMaybes
                 [("adr" Core..=) Core.<$> adr,
                  ("email" Core..=) Core.<$> email,
                  ("fn" Core..=) Core.<$> fn,
                  ("org" Core..=) Core.<$> org,
                  ("tel" Core..=) Core.<$> tel])


-- | The structure used to represent a street address.
--
-- /See:/ 'newVcardAddress' smart constructor.
data VcardAddress = VcardAddress
    {
      -- | The postal code associated with the address. For example: 94423.
      code :: (Core.Maybe Core.Text)
      -- | The country name. For example: US.
    , country :: (Core.Maybe Core.Text)
      -- | The city or local equivalent portion of the address. For example: San Jose.
    , locality :: (Core.Maybe Core.Text)
      -- | An optional post office box number.
    , pobox :: (Core.Maybe Core.Text)
      -- | The state or local equivalent portion of the address. For example: CA.
    , region :: (Core.Maybe Core.Text)
      -- | The street number and name. For example: 123 Any St.
    , street :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VcardAddress' with the minimum fields required to make a request.
newVcardAddress 
    ::  VcardAddress
newVcardAddress =
  VcardAddress
    { code = Core.Nothing
    , country = Core.Nothing
    , locality = Core.Nothing
    , pobox = Core.Nothing
    , region = Core.Nothing
    , street = Core.Nothing
    }

instance Core.FromJSON VcardAddress where
        parseJSON
          = Core.withObject "VcardAddress"
              (\ o ->
                 VcardAddress Core.<$>
                   (o Core..:? "code") Core.<*> (o Core..:? "country")
                     Core.<*> (o Core..:? "locality")
                     Core.<*> (o Core..:? "pobox")
                     Core.<*> (o Core..:? "region")
                     Core.<*> (o Core..:? "street"))

instance Core.ToJSON VcardAddress where
        toJSON VcardAddress{..}
          = Core.object
              (Core.catMaybes
                 [("code" Core..=) Core.<$> code,
                  ("country" Core..=) Core.<$> country,
                  ("locality" Core..=) Core.<$> locality,
                  ("pobox" Core..=) Core.<$> pobox,
                  ("region" Core..=) Core.<$> region,
                  ("street" Core..=) Core.<$> street])


-- | The structure used to represent a telephone number.
--
-- /See:/ 'newVcardTelephone' smart constructor.
newtype VcardTelephone = VcardTelephone
    {
      -- | A nested telephone URI of the form: tel:+1-123-456-7890.
      uri :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VcardTelephone' with the minimum fields required to make a request.
newVcardTelephone 
    ::  VcardTelephone
newVcardTelephone = VcardTelephone {uri = Core.Nothing}

instance Core.FromJSON VcardTelephone where
        parseJSON
          = Core.withObject "VcardTelephone"
              (\ o -> VcardTelephone Core.<$> (o Core..:? "uri"))

instance Core.ToJSON VcardTelephone where
        toJSON VcardTelephone{..}
          = Core.object
              (Core.catMaybes [("uri" Core..=) Core.<$> uri])


-- | The structure used to represent an organization and an email address.
--
-- /See:/ 'newVcardTypedText' smart constructor.
newtype VcardTypedText = VcardTypedText
    {
      -- | The text string associated with this item. For example, for an org field: ACME, inc. For an email field: smith\@example.com.
      text :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VcardTypedText' with the minimum fields required to make a request.
newVcardTypedText 
    ::  VcardTypedText
newVcardTypedText = VcardTypedText {text = Core.Nothing}

instance Core.FromJSON VcardTypedText where
        parseJSON
          = Core.withObject "VcardTypedText"
              (\ o -> VcardTypedText Core.<$> (o Core..:? "text"))

instance Core.ToJSON VcardTypedText where
        toJSON VcardTypedText{..}
          = Core.object
              (Core.catMaybes [("text" Core..=) Core.<$> text])

