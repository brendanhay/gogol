{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.spectrum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | API for spectrum-management functions.
--
-- /See:/ <http://developers.google.com/spectrum Google Spectrum Database API Reference>
module Network.Google.spectrum
    (
    -- * Resources
      Spectrum
    , PawsAPI
    , PawsVerifyDevice
    , PawsInit
    , PawsGetSpectrum
    , PawsNotifySpectrumUse
    , PawsRegister
    , PawsGetSpectrumBatch

    -- * Types

    -- ** AntennaCharacteristics
    , AntennaCharacteristics
    , antennaCharacteristics
    , acHeight
    , acHeightType
    , acHeightUncertainty

    -- ** DatabaseSpec
    , DatabaseSpec
    , databaseSpec
    , dsUri
    , dsName

    -- ** DbUpdateSpec
    , DbUpdateSpec
    , dbUpdateSpec
    , dusDatabases

    -- ** DeviceCapabilities
    , DeviceCapabilities
    , deviceCapabilities
    , dcFrequencyRanges

    -- ** DeviceDescriptor
    , DeviceDescriptor
    , deviceDescriptor
    , ddEtsiEnDeviceEmissionsClass
    , ddRulesetIds
    , ddModelId
    , ddEtsiEnDeviceType
    , ddEtsiEnTechnologyId
    , ddFccId
    , ddManufacturerId
    , ddFccTvbdDeviceType
    , ddEtsiEnDeviceCategory
    , ddSerialNumber

    -- ** DeviceOwner
    , DeviceOwner
    , deviceOwner
    , doOperator
    , doOwner

    -- ** DeviceValidity
    , DeviceValidity
    , deviceValidity
    , dvIsValid
    , dvReason
    , dvDeviceDesc

    -- ** EventTime
    , EventTime
    , eventTime
    , etStartTime
    , etStopTime

    -- ** FrequencyRange
    , FrequencyRange
    , frequencyRange
    , frStopHz
    , frMaxPowerDBm
    , frChannelId
    , frStartHz

    -- ** GeoLocation
    , GeoLocation
    , geoLocation
    , glConfidence
    , glPoint
    , glRegion

    -- ** GeoLocationEllipse
    , GeoLocationEllipse
    , geoLocationEllipse
    , gleSemiMajorAxis
    , gleCenter
    , gleOrientation
    , gleSemiMinorAxis

    -- ** GeoLocationPoint
    , GeoLocationPoint
    , geoLocationPoint
    , glpLatitude
    , glpLongitude

    -- ** GeoLocationPolygon
    , GeoLocationPolygon
    , geoLocationPolygon
    , glpExterior

    -- ** GeoSpectrumSchedule
    , GeoSpectrumSchedule
    , geoSpectrumSchedule
    , gssLocation
    , gssSpectrumSchedules

    -- ** PawsGetSpectrumBatchRequest
    , PawsGetSpectrumBatchRequest
    , pawsGetSpectrumBatchRequest
    , pgsbrgAntenna
    , pgsbrgMasterDeviceDesc
    , pgsbrgOwner
    , pgsbrgRequestType
    , pgsbrgVersion
    , pgsbrgType
    , pgsbrgLocations
    , pgsbrgCapabilities
    , pgsbrgDeviceDesc

    -- ** PawsGetSpectrumBatchResponse
    , PawsGetSpectrumBatchResponse
    , pawsGetSpectrumBatchResponse
    , pgsbrNeedsSpectrumReport
    , pgsbrKind
    , pgsbrGeoSpectrumSchedules
    , pgsbrMaxContiguousBwHz
    , pgsbrVersion
    , pgsbrRulesetInfo
    , pgsbrType
    , pgsbrDatabaseChange
    , pgsbrTimestamp
    , pgsbrDeviceDesc
    , pgsbrMaxTotalBwHz

    -- ** PawsGetSpectrumRequest
    , PawsGetSpectrumRequest
    , pawsGetSpectrumRequest
    , pgsrgAntenna
    , pgsrgMasterDeviceDesc
    , pgsrgLocation
    , pgsrgOwner
    , pgsrgRequestType
    , pgsrgVersion
    , pgsrgType
    , pgsrgCapabilities
    , pgsrgDeviceDesc

    -- ** PawsGetSpectrumResponse
    , PawsGetSpectrumResponse
    , pawsGetSpectrumResponse
    , pgsrNeedsSpectrumReport
    , pgsrSpectrumSchedules
    , pgsrKind
    , pgsrMaxContiguousBwHz
    , pgsrVersion
    , pgsrRulesetInfo
    , pgsrType
    , pgsrDatabaseChange
    , pgsrTimestamp
    , pgsrDeviceDesc
    , pgsrMaxTotalBwHz

    -- ** PawsInitRequest
    , PawsInitRequest
    , pawsInitRequest
    , piriLocation
    , piriVersion
    , piriType
    , piriDeviceDesc

    -- ** PawsInitResponse
    , PawsInitResponse
    , pawsInitResponse
    , pirKind
    , pirVersion
    , pirRulesetInfo
    , pirType
    , pirDatabaseChange

    -- ** PawsNotifySpectrumUseRequest
    , PawsNotifySpectrumUseRequest
    , pawsNotifySpectrumUseRequest
    , pSpectra
    , pLocation
    , pVersion
    , pType
    , pDeviceDesc

    -- ** PawsNotifySpectrumUseResponse
    , PawsNotifySpectrumUseResponse
    , pawsNotifySpectrumUseResponse
    , pnsurKind
    , pnsurVersion
    , pnsurType

    -- ** PawsRegisterRequest
    , PawsRegisterRequest
    , pawsRegisterRequest
    , prrAntenna
    , prrLocation
    , prrDeviceOwner
    , prrVersion
    , prrType
    , prrDeviceDesc

    -- ** PawsRegisterResponse
    , PawsRegisterResponse
    , pawsRegisterResponse
    , pawKind
    , pawVersion
    , pawType
    , pawDatabaseChange

    -- ** PawsVerifyDeviceRequest
    , PawsVerifyDeviceRequest
    , pawsVerifyDeviceRequest
    , pvdrVersion
    , pvdrDeviceDescs
    , pvdrType

    -- ** PawsVerifyDeviceResponse
    , PawsVerifyDeviceResponse
    , pawsVerifyDeviceResponse
    , pvdrvDeviceValidities
    , pvdrvKind
    , pvdrvVersion
    , pvdrvType
    , pvdrvDatabaseChange

    -- ** RulesetInfo
    , RulesetInfo
    , rulesetInfo
    , riRulesetIds
    , riMaxPollingSecs
    , riMaxLocationChange
    , riAuthority

    -- ** SpectrumMessage
    , SpectrumMessage
    , spectrumMessage
    , smBandwidth
    , smFrequencyRanges

    -- ** SpectrumSchedule
    , SpectrumSchedule
    , spectrumSchedule
    , ssSpectra
    , ssEventTime

    -- ** Vcard
    , Vcard
    , vcard
    , vEmail
    , vAdr
    , vOrg
    , vTel
    , vFn

    -- ** VcardAddress
    , VcardAddress
    , vcardAddress
    , vaPobox
    , vaCountry
    , vaStreet
    , vaLocality
    , vaCode
    , vaRegion

    -- ** VcardTelephone
    , VcardTelephone
    , vcardTelephone
    , vtUri

    -- ** VcardTypedText
    , VcardTypedText
    , vcardTypedText
    , vttText
    ) where

import Network.Google.Prelude
import Network.Google.spectrum.Types

{- $resources
TODO
-}

type Spectrum = PawsAPI

type PawsAPI =
     PawsVerifyDevice :<|> PawsInit :<|> PawsGetSpectrum
       :<|> PawsNotifySpectrumUse
       :<|> PawsRegister
       :<|> PawsGetSpectrumBatch

-- | Validates a device for white space use in accordance with regulatory
-- rules. The Google Spectrum Database does not support master\/slave
-- configurations, so this always yields an UNIMPLEMENTED error.
type PawsVerifyDevice =
     "spectrum" :> "v1explorer" :> "paws" :>
       "verifyDevice"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Initializes the connection between a white space device and the
-- database.
type PawsInit =
     "spectrum" :> "v1explorer" :> "paws" :> "init" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Requests information about the available spectrum for a device at a
-- location. Requests from a fixed-mode device must include owner
-- information so the device can be registered with the database.
type PawsGetSpectrum =
     "spectrum" :> "v1explorer" :> "paws" :> "getSpectrum"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Notifies the database that the device has selected certain frequency
-- ranges for transmission. Only to be invoked when required by the
-- regulator. The Google Spectrum Database does not operate in domains that
-- require notification, so this always yields an UNIMPLEMENTED error.
type PawsNotifySpectrumUse =
     "spectrum" :> "v1explorer" :> "paws" :>
       "notifySpectrumUse"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | The Google Spectrum Database implements registration in the getSpectrum
-- method. As such this always returns an UNIMPLEMENTED error.
type PawsRegister =
     "spectrum" :> "v1explorer" :> "paws" :> "register" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | The Google Spectrum Database does not support batch requests, so this
-- method always yields an UNIMPLEMENTED error.
type PawsGetSpectrumBatch =
     "spectrum" :> "v1explorer" :> "paws" :>
       "getSpectrumBatch"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
