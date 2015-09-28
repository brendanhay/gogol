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

    -- * DbUpdateSpec
    , DbUpdateSpec
    , dbUpdateSpec
    , dusDatabases

    -- * Vcard
    , Vcard
    , vcard
    , vEmail
    , vAdr
    , vOrg
    , vTel
    , vFn

    -- * Alt
    , Alt (..)

    -- * PawsRegisterRequest
    , PawsRegisterRequest
    , pawsRegisterRequest
    , prrAntenna
    , prrLocation
    , prrDeviceOwner
    , prrVersion
    , prrType
    , prrDeviceDesc

    -- * PawsNotifySpectrumUseResponse
    , PawsNotifySpectrumUseResponse
    , pawsNotifySpectrumUseResponse
    , pnsurKind
    , pnsurVersion
    , pnsurType

    -- * DatabaseSpec
    , DatabaseSpec
    , databaseSpec
    , dsUri
    , dsName

    -- * GeoLocation
    , GeoLocation
    , geoLocation
    , glConfidence
    , glPoint
    , glRegion

    -- * SpectrumMessage
    , SpectrumMessage
    , spectrumMessage
    , smBandwidth
    , smFrequencyRanges

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
    , pvdrVersion
    , pvdrDeviceDescs
    , pvdrType

    -- * PawsGetSpectrumResponse
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

    -- * VcardTelephone
    , VcardTelephone
    , vcardTelephone
    , vtUri

    -- * SpectrumSchedule
    , SpectrumSchedule
    , spectrumSchedule
    , ssSpectra
    , ssEventTime

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

    -- * PawsNotifySpectrumUseRequest
    , PawsNotifySpectrumUseRequest
    , pawsNotifySpectrumUseRequest
    , pSpectra
    , pLocation
    , pVersion
    , pType
    , pDeviceDesc

    -- * PawsRegisterResponse
    , PawsRegisterResponse
    , pawsRegisterResponse
    , pawKind
    , pawVersion
    , pawType
    , pawDatabaseChange

    -- * RulesetInfo
    , RulesetInfo
    , rulesetInfo
    , riRulesetIds
    , riMaxPollingSecs
    , riMaxLocationChange
    , riAuthority

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

    -- * PawsGetSpectrumBatchRequest
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

    -- * GeoSpectrumSchedule
    , GeoSpectrumSchedule
    , geoSpectrumSchedule
    , gssLocation
    , gssSpectrumSchedules

    -- * VcardTypedText
    , VcardTypedText
    , vcardTypedText
    , vttText

    -- * DeviceCapabilities
    , DeviceCapabilities
    , deviceCapabilities
    , dcFrequencyRanges

    -- * PawsInitRequest
    , PawsInitRequest
    , pawsInitRequest
    , piriLocation
    , piriVersion
    , piriType
    , piriDeviceDesc

    -- * PawsVerifyDeviceResponse
    , PawsVerifyDeviceResponse
    , pawsVerifyDeviceResponse
    , pvdrvDeviceValidities
    , pvdrvKind
    , pvdrvVersion
    , pvdrvType
    , pvdrvDatabaseChange

    -- * PawsGetSpectrumRequest
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

    -- * AntennaCharacteristics
    , AntennaCharacteristics
    , antennaCharacteristics
    , acHeight
    , acHeightType
    , acHeightUncertainty

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
    ) where

import           Network.Google.Prelude
import           Network.Google.Spectrum.Types.Product
import           Network.Google.Spectrum.Types.Sum

-- | URL referring to version 'v1explorer' of the Google Spectrum Database API.
spectrumURL :: BaseUrl
spectrumURL
  = BaseUrl Https
      "https://www.googleapis.com/spectrum/v1explorer/paws/"
      443
