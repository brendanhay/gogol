{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

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
-- | API for spectrum-management functions.
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
    , module Network.Google.Resource.Spectrum.Paws.GetSpectrum

    -- ** SpectrumPawsGetSpectrumBatch
    , module Network.Google.Resource.Spectrum.Paws.GetSpectrumBatch

    -- ** SpectrumPawsInit
    , module Network.Google.Resource.Spectrum.Paws.Init

    -- ** SpectrumPawsNotifySpectrumUse
    , module Network.Google.Resource.Spectrum.Paws.NotifySpectrumUse

    -- ** SpectrumPawsRegister
    , module Network.Google.Resource.Spectrum.Paws.Register

    -- ** SpectrumPawsVerifyDevice
    , module Network.Google.Resource.Spectrum.Paws.VerifyDevice

    -- * Types

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
    , dbUpdateSpec
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

    -- ** GeoSpectrumSchedule
    , GeoSpectrumSchedule
    , geoSpectrumSchedule
    , gssLocation
    , gssSpectrumSchedules

    -- ** VcardTypedText
    , VcardTypedText
    , vcardTypedText
    , vttText

    -- ** SpectrumSchedule
    , SpectrumSchedule
    , spectrumSchedule
    , ssSpectra
    , ssEventTime

    -- ** VcardTelephone
    , VcardTelephone
    , vcardTelephone
    , vtURI

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

    -- ** DeviceValidity
    , DeviceValidity
    , deviceValidity
    , dvIsValid
    , dvReason
    , dvDeviceDesc

    -- ** GeoLocationEllipse
    , GeoLocationEllipse
    , geoLocationEllipse
    , gleSemiMajorAxis
    , gleCenter
    , gleOrientation
    , gleSemiMinorAxis

    -- ** RulesetInfo
    , RulesetInfo
    , rulesetInfo
    , riRulesetIds
    , riMaxPollingSecs
    , riMaxLocationChange
    , riAuthority

    -- ** PawsRegisterRequest
    , PawsRegisterRequest
    , pawsRegisterRequest
    , pawAntenna
    , pawLocation
    , pawDeviceOwner
    , pawVersion
    , pawType
    , pawDeviceDesc

    -- ** PawsNotifySpectrumUseResponse
    , PawsNotifySpectrumUseResponse
    , pawsNotifySpectrumUseResponse
    , pnsurnKind
    , pnsurnVersion
    , pnsurnType

    -- ** DatabaseSpec
    , DatabaseSpec
    , databaseSpec
    , dsURI
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

type SpectrumAPI =
     PawsVerifyDeviceResource :<|> PawsInitResource :<|>
       PawsGetSpectrumResource
       :<|> PawsNotifySpectrumUseResource
       :<|> PawsRegisterResource
       :<|> PawsGetSpectrumBatchResource

spectrumAPI :: Proxy SpectrumAPI
spectrumAPI = Proxy
