{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Spectrum.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Spectrum.Types
    (
    -- * Service URL
      spectrumURL

    -- * PawsInitResponse
    , PawsInitResponse
    , pawsInitResponse
    , pirKind
    , pirVersion
    , pirRulesetInfo
    , pirType
    , pirDatabaseChange

    -- * GeoLocationPoint
    , GeoLocationPoint
    , geoLocationPoint
    , glpLatitude
    , glpLongitude

    -- * GeoLocationPolygon
    , GeoLocationPolygon
    , geoLocationPolygon
    , glpExterior

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
    , dBUpdateSpec
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

    -- * VcardTypedText
    , VcardTypedText
    , vcardTypedText
    , vttText

    -- * GeoSpectrumSchedule
    , GeoSpectrumSchedule
    , geoSpectrumSchedule
    , gssLocation
    , gssSpectrumSchedules

    -- * SpectrumSchedule
    , SpectrumSchedule
    , spectrumSchedule
    , ssSpectra
    , ssEventTime

    -- * VcardTelephone
    , VcardTelephone
    , vcardTelephone
    , vtUri

    -- * DeviceOwner
    , DeviceOwner
    , deviceOwner
    , doOperator
    , doOwner

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

    -- * EventTime
    , EventTime
    , eventTime
    , etStartTime
    , etStopTime

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

    -- * GeoLocationEllipse
    , GeoLocationEllipse
    , geoLocationEllipse
    , gleSemiMajorAxis
    , gleCenter
    , gleOrientation
    , gleSemiMinorAxis

    -- * DeviceValidity
    , DeviceValidity
    , deviceValidity
    , dvIsValid
    , dvReason
    , dvDeviceDesc

    -- * RulesetInfo
    , RulesetInfo
    , rulesetInfo
    , riRulesetIds
    , riMaxPollingSecs
    , riMaxLocationChange
    , riAuthority

    -- * PawsNotifySpectrumUseResponse
    , PawsNotifySpectrumUseResponse
    , pawsNotifySpectrumUseResponse
    , pawKind
    , pawVersion
    , pawType

    -- * PawsRegisterRequest
    , PawsRegisterRequest
    , pawsRegisterRequest
    , prrrAntenna
    , prrrLocation
    , prrrDeviceOwner
    , prrrVersion
    , prrrType
    , prrrDeviceDesc

    -- * DatabaseSpec
    , DatabaseSpec
    , databaseSpec
    , dsUri
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

import           Network.Google.Prelude
import           Network.Google.Spectrum.Types.Product
import           Network.Google.Spectrum.Types.Sum

-- | URL referring to version 'v1explorer' of the Google Spectrum Database API.
spectrumURL :: BaseURL
spectrumURL
  = BaseUrl Https
      "https://www.googleapis.com/spectrum/v1explorer/paws/"
      443
