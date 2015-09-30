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
    -- * API
      SpectrumAPI
    , spectrumAPI
    , spectrumURL

    -- * Service Methods

    -- * REST Resources

    -- ** SpectrumPawsGetSpectrum
    , module Spectrum.Paws.GetSpectrum

    -- ** SpectrumPawsGetSpectrumBatch
    , module Spectrum.Paws.GetSpectrumBatch

    -- ** SpectrumPawsInit
    , module Spectrum.Paws.Init

    -- ** SpectrumPawsNotifySpectrumUse
    , module Spectrum.Paws.NotifySpectrumUse

    -- ** SpectrumPawsRegister
    , module Spectrum.Paws.Register

    -- ** SpectrumPawsVerifyDevice
    , module Spectrum.Paws.VerifyDevice

    -- * Types

    -- ** PawsInitResponse
    , PawsInitResponse
    , pawsInitResponse
    , pirKind
    , pirVersion
    , pirRulesetInfo
    , pirType
    , pirDatabaseChange

    -- ** GeoLocationPoint
    , GeoLocationPoint
    , geoLocationPoint
    , glpLatitude
    , glpLongitude

    -- ** GeoLocationPolygon
    , GeoLocationPolygon
    , geoLocationPolygon
    , glpExterior

    -- ** PawsRegisterResponse
    , PawsRegisterResponse
    , pawsRegisterResponse
    , prrKind
    , prrVersion
    , prrType
    , prrDatabaseChange

    -- ** PawsNotifySpectrumUseRequest
    , PawsNotifySpectrumUseRequest
    , pawsNotifySpectrumUseRequest
    , pnsurSpectra
    , pnsurLocation
    , pnsurVersion
    , pnsurType
    , pnsurDeviceDesc

    -- ** Vcard
    , Vcard
    , vcard
    , vEmail
    , vAdr
    , vOrg
    , vTel
    , vFn

    -- ** DBUpdateSpec
    , DBUpdateSpec
    , dBUpdateSpec
    , dusDatabases

    -- ** PawsGetSpectrumBatchRequest
    , PawsGetSpectrumBatchRequest
    , pawsGetSpectrumBatchRequest
    , pgsbrAntenna
    , pgsbrMasterDeviceDesc
    , pgsbrOwner
    , pgsbrRequestType
    , pgsbrVersion
    , pgsbrType
    , pgsbrLocations
    , pgsbrCapabilities
    , pgsbrDeviceDesc

    -- ** VcardTypedText
    , VcardTypedText
    , vcardTypedText
    , vttText

    -- ** GeoSpectrumSchedule
    , GeoSpectrumSchedule
    , geoSpectrumSchedule
    , gssLocation
    , gssSpectrumSchedules

    -- ** SpectrumSchedule
    , SpectrumSchedule
    , spectrumSchedule
    , ssSpectra
    , ssEventTime

    -- ** VcardTelephone
    , VcardTelephone
    , vcardTelephone
    , vtUri

    -- ** DeviceOwner
    , DeviceOwner
    , deviceOwner
    , doOperator
    , doOwner

    -- ** AntennaCharacteristics
    , AntennaCharacteristics
    , antennaCharacteristics
    , acHeight
    , acHeightType
    , acHeightUncertainty

    -- ** PawsVerifyDeviceResponse
    , PawsVerifyDeviceResponse
    , pawsVerifyDeviceResponse
    , pvdrDeviceValidities
    , pvdrKind
    , pvdrVersion
    , pvdrType
    , pvdrDatabaseChange

    -- ** PawsGetSpectrumRequest
    , PawsGetSpectrumRequest
    , pawsGetSpectrumRequest
    , pgsrAntenna
    , pgsrMasterDeviceDesc
    , pgsrLocation
    , pgsrOwner
    , pgsrRequestType
    , pgsrVersion
    , pgsrType
    , pgsrCapabilities
    , pgsrDeviceDesc

    -- ** EventTime
    , EventTime
    , eventTime
    , etStartTime
    , etStopTime

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
    , pNeedsSpectrumReport
    , pKind
    , pGeoSpectrumSchedules
    , pMaxContiguousBwHz
    , pVersion
    , pRulesetInfo
    , pType
    , pDatabaseChange
    , pTimestamp
    , pDeviceDesc
    , pMaxTotalBwHz

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

    -- ** RulesetInfo
    , RulesetInfo
    , rulesetInfo
    , riRulesetIds
    , riMaxPollingSecs
    , riMaxLocationChange
    , riAuthority

    -- ** PawsNotifySpectrumUseResponse
    , PawsNotifySpectrumUseResponse
    , pawsNotifySpectrumUseResponse
    , pawKind
    , pawVersion
    , pawType

    -- ** PawsRegisterRequest
    , PawsRegisterRequest
    , pawsRegisterRequest
    , prrrAntenna
    , prrrLocation
    , prrrDeviceOwner
    , prrrVersion
    , prrrType
    , prrrDeviceDesc

    -- ** DatabaseSpec
    , DatabaseSpec
    , databaseSpec
    , dsUri
    , dsName

    -- ** SpectrumMessage
    , SpectrumMessage
    , spectrumMessage
    , smBandwidth
    , smFrequencyRanges

    -- ** GeoLocation
    , GeoLocation
    , geoLocation
    , glConfidence
    , glPoint
    , glRegion

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
    , pvdrvVersion
    , pvdrvDeviceDescs
    , pvdrvType

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

    -- ** PawsGetSpectrumResponse
    , PawsGetSpectrumResponse
    , pawsGetSpectrumResponse
    , pgsrgNeedsSpectrumReport
    , pgsrgSpectrumSchedules
    , pgsrgKind
    , pgsrgMaxContiguousBwHz
    , pgsrgVersion
    , pgsrgRulesetInfo
    , pgsrgType
    , pgsrgDatabaseChange
    , pgsrgTimestamp
    , pgsrgDeviceDesc
    , pgsrgMaxTotalBwHz

    -- ** PawsInitRequest
    , PawsInitRequest
    , pawsInitRequest
    , piriLocation
    , piriVersion
    , piriType
    , piriDeviceDesc

    -- ** DeviceCapabilities
    , DeviceCapabilities
    , deviceCapabilities
    , dcFrequencyRanges
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.Spectrum.Paws.GetSpectrum
import           Network.Google.Resource.Spectrum.Paws.GetSpectrumBatch
import           Network.Google.Resource.Spectrum.Paws.Init
import           Network.Google.Resource.Spectrum.Paws.NotifySpectrumUse
import           Network.Google.Resource.Spectrum.Paws.Register
import           Network.Google.Resource.Spectrum.Paws.VerifyDevice
import           Network.Google.Spectrum.Types

{- $resources
TODO
-}

type SpectrumAPI = Paws

spectrumAPI :: Proxy SpectrumAPI
spectrumAPI = Proxy
