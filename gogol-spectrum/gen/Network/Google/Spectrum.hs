{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Spectrum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | API for spectrum-management functions.
--
-- /See:/ <http://developers.google.com/spectrum Google Spectrum Database API Reference>
module Network.Google.Spectrum
    (
    -- * REST Resources

    -- ** Google Spectrum Database API
      Spectrum
    , spectrum
    , spectrumURL

    -- ** spectrum.paws.getSpectrum
    , module Network.Google.API.Spectrum.Paws.GetSpectrum

    -- ** spectrum.paws.getSpectrumBatch
    , module Network.Google.API.Spectrum.Paws.GetSpectrumBatch

    -- ** spectrum.paws.init
    , module Network.Google.API.Spectrum.Paws.Init

    -- ** spectrum.paws.notifySpectrumUse
    , module Network.Google.API.Spectrum.Paws.NotifySpectrumUse

    -- ** spectrum.paws.register
    , module Network.Google.API.Spectrum.Paws.Register

    -- ** spectrum.paws.verifyDevice
    , module Network.Google.API.Spectrum.Paws.VerifyDevice

    -- * Types

    -- ** VcardAddress
    , VcardAddress
    , vcardAddress
    , vaPobox
    , vaCountry
    , vaStreet
    , vaLocality
    , vaCode
    , vaRegion

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

    -- ** DbUpdateSpec
    , DbUpdateSpec
    , dbUpdateSpec
    , dusDatabases

    -- ** Vcard
    , Vcard
    , vcard
    , vEmail
    , vAdr
    , vOrg
    , vTel
    , vFn

    -- ** Alt
    , Alt (..)

    -- ** PawsRegisterRequest
    , PawsRegisterRequest
    , pawsRegisterRequest
    , prrAntenna
    , prrLocation
    , prrDeviceOwner
    , prrVersion
    , prrType
    , prrDeviceDesc

    -- ** PawsNotifySpectrumUseResponse
    , PawsNotifySpectrumUseResponse
    , pawsNotifySpectrumUseResponse
    , pnsurKind
    , pnsurVersion
    , pnsurType

    -- ** DatabaseSpec
    , DatabaseSpec
    , databaseSpec
    , dsUri
    , dsName

    -- ** GeoLocation
    , GeoLocation
    , geoLocation
    , glConfidence
    , glPoint
    , glRegion

    -- ** SpectrumMessage
    , SpectrumMessage
    , spectrumMessage
    , smBandwidth
    , smFrequencyRanges

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

    -- ** FrequencyRange
    , FrequencyRange
    , frequencyRange
    , frStopHz
    , frMaxPowerDBm
    , frChannelId
    , frStartHz

    -- ** PawsVerifyDeviceRequest
    , PawsVerifyDeviceRequest
    , pawsVerifyDeviceRequest
    , pvdrVersion
    , pvdrDeviceDescs
    , pvdrType

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

    -- ** VcardTelephone
    , VcardTelephone
    , vcardTelephone
    , vtUri

    -- ** SpectrumSchedule
    , SpectrumSchedule
    , spectrumSchedule
    , ssSpectra
    , ssEventTime

    -- ** GeoLocationPolygon
    , GeoLocationPolygon
    , geoLocationPolygon
    , glpExterior

    -- ** GeoLocationPoint
    , GeoLocationPoint
    , geoLocationPoint
    , glpLatitude
    , glpLongitude

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

    -- ** PawsRegisterResponse
    , PawsRegisterResponse
    , pawsRegisterResponse
    , pawKind
    , pawVersion
    , pawType
    , pawDatabaseChange

    -- ** RulesetInfo
    , RulesetInfo
    , rulesetInfo
    , riRulesetIds
    , riMaxPollingSecs
    , riMaxLocationChange
    , riAuthority

    -- ** GeoLocationEllipse
    , GeoLocationEllipse
    , geoLocationEllipse
    , gleSemiMajorAxis
    , gleCenter
    , gleOrientation
    , gleSemiMinorAxis

    -- ** DeviceValidity
    , DeviceValidity
    , deviceValidity
    , dvIsValid
    , dvReason
    , dvDeviceDesc

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

    -- ** GeoSpectrumSchedule
    , GeoSpectrumSchedule
    , geoSpectrumSchedule
    , gssLocation
    , gssSpectrumSchedules

    -- ** VcardTypedText
    , VcardTypedText
    , vcardTypedText
    , vttText

    -- ** DeviceCapabilities
    , DeviceCapabilities
    , deviceCapabilities
    , dcFrequencyRanges

    -- ** PawsInitRequest
    , PawsInitRequest
    , pawsInitRequest
    , piriLocation
    , piriVersion
    , piriType
    , piriDeviceDesc

    -- ** PawsVerifyDeviceResponse
    , PawsVerifyDeviceResponse
    , pawsVerifyDeviceResponse
    , pvdrvDeviceValidities
    , pvdrvKind
    , pvdrvVersion
    , pvdrvType
    , pvdrvDatabaseChange

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

    -- ** AntennaCharacteristics
    , AntennaCharacteristics
    , antennaCharacteristics
    , acHeight
    , acHeightType
    , acHeightUncertainty

    -- ** DeviceOwner
    , DeviceOwner
    , deviceOwner
    , doOperator
    , doOwner

    -- ** EventTime
    , EventTime
    , eventTime
    , etStartTime
    , etStopTime
    ) where

import           Network.Google.API.Spectrum.Paws.GetSpectrum
import           Network.Google.API.Spectrum.Paws.GetSpectrumBatch
import           Network.Google.API.Spectrum.Paws.Init
import           Network.Google.API.Spectrum.Paws.NotifySpectrumUse
import           Network.Google.API.Spectrum.Paws.Register
import           Network.Google.API.Spectrum.Paws.VerifyDevice
import           Network.Google.Prelude
import           Network.Google.Spectrum.Types

{- $resources
TODO
-}

type Spectrum =
     PawsRegisterAPI :<|> PawsGetSpectrumAPI :<|>
       PawsVerifyDeviceAPI
       :<|> PawsGetSpectrumBatchAPI
       :<|> PawsNotifySpectrumUseAPI
       :<|> PawsInitAPI

spectrum :: Proxy Spectrum
spectrum = Proxy
