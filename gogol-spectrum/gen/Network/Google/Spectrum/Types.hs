{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Spectrum.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Spectrum.Types
    (
    -- * Service Configuration
      spectrumService

    -- * GeoLocationPolygon
    , GeoLocationPolygon
    , geoLocationPolygon
    , glpExterior

    -- * GeoLocationPoint
    , GeoLocationPoint
    , geoLocationPoint
    , glpLatitude
    , glpLongitude

    -- * PawsInitResponse
    , PawsInitResponse
    , pawsInitResponse
    , pirKind
    , pirVersion
    , pirRulesetInfo
    , pirType
    , pirDatabaseChange

    -- * PawsRegisterResponse
    , PawsRegisterResponse
    , pawsRegisterResponse
    , prrKind
    , prrVersion
    , prrType
    , prrDatabaseChange

    -- * PawsNotifySpectrumUseRequest
    , PawsNotifySpectrumUseRequest
    , pawsNotifySpectrumUseRequest
    , pnsurSpectra
    , pnsurLocation
    , pnsurVersion
    , pnsurType
    , pnsurDeviceDesc

    -- * Vcard
    , Vcard
    , vcard
    , vEmail
    , vAdr
    , vOrg
    , vTel
    , vFn

    -- * DBUpdateSpec
    , DBUpdateSpec
    , dbUpdateSpec
    , dusDatabases

    -- * PawsGetSpectrumBatchRequest
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

    -- * GeoSpectrumSchedule
    , GeoSpectrumSchedule
    , geoSpectrumSchedule
    , gssLocation
    , gssSpectrumSchedules

    -- * VcardTypedText
    , VcardTypedText
    , vcardTypedText
    , vttText

    -- * SpectrumSchedule
    , SpectrumSchedule
    , spectrumSchedule
    , ssSpectra
    , ssEventTime

    -- * VcardTelephone
    , VcardTelephone
    , vcardTelephone
    , vtURI

    -- * DeviceOwner
    , DeviceOwner
    , deviceOwner
    , doOperator
    , doOwner

    -- * EventTime
    , EventTime
    , eventTime
    , etStartTime
    , etStopTime

    -- * PawsGetSpectrumRequest
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

    -- * AntennaCharacteristics
    , AntennaCharacteristics
    , antennaCharacteristics
    , acHeight
    , acHeightType
    , acHeightUncertainty

    -- * PawsVerifyDeviceResponse
    , PawsVerifyDeviceResponse
    , pawsVerifyDeviceResponse
    , pvdrDeviceValidities
    , pvdrKind
    , pvdrVersion
    , pvdrType
    , pvdrDatabaseChange

    -- * VcardAddress
    , VcardAddress
    , vcardAddress
    , vaPobox
    , vaCountry
    , vaStreet
    , vaLocality
    , vaCode
    , vaRegion

    -- * PawsGetSpectrumBatchResponse
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

    -- * DeviceValidity
    , DeviceValidity
    , deviceValidity
    , dvIsValid
    , dvReason
    , dvDeviceDesc

    -- * GeoLocationEllipse
    , GeoLocationEllipse
    , geoLocationEllipse
    , gleSemiMajorAxis
    , gleCenter
    , gleOrientation
    , gleSemiMinorAxis

    -- * RulesetInfo
    , RulesetInfo
    , rulesetInfo
    , riRulesetIds
    , riMaxPollingSecs
    , riMaxLocationChange
    , riAuthority

    -- * PawsRegisterRequest
    , PawsRegisterRequest
    , pawsRegisterRequest
    , pawAntenna
    , pawLocation
    , pawDeviceOwner
    , pawVersion
    , pawType
    , pawDeviceDesc

    -- * PawsNotifySpectrumUseResponse
    , PawsNotifySpectrumUseResponse
    , pawsNotifySpectrumUseResponse
    , pnsurnKind
    , pnsurnVersion
    , pnsurnType

    -- * DatabaseSpec
    , DatabaseSpec
    , databaseSpec
    , dsURI
    , dsName

    -- * SpectrumMessage
    , SpectrumMessage
    , spectrumMessage
    , smBandwidth
    , smFrequencyRanges

    -- * GeoLocation
    , GeoLocation
    , geoLocation
    , glConfidence
    , glPoint
    , glRegion

    -- * FrequencyRange
    , FrequencyRange
    , frequencyRange
    , frStopHz
    , frMaxPowerDBm
    , frChannelId
    , frStartHz

    -- * PawsGetSpectrumResponse
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

    -- * PawsVerifyDeviceRequest
    , PawsVerifyDeviceRequest
    , pawsVerifyDeviceRequest
    , pvdrvVersion
    , pvdrvDeviceDescs
    , pvdrvType

    -- * DeviceDescriptor
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

    -- * PawsInitRequest
    , PawsInitRequest
    , pawsInitRequest
    , piriLocation
    , piriVersion
    , piriType
    , piriDeviceDesc

    -- * DeviceCapabilities
    , DeviceCapabilities
    , deviceCapabilities
    , dcFrequencyRanges
    ) where

import Network.Google.Prelude
import Network.Google.Spectrum.Types.Product
import Network.Google.Spectrum.Types.Sum

-- | Default request referring to version 'v1explorer' of the Google Spectrum Database API. This contains the host and root path used as a starting point for constructing service requests.
spectrumService :: ServiceConfig
spectrumService
  = defaultService (ServiceId "spectrum:v1explorer")
      "www.googleapis.com"
