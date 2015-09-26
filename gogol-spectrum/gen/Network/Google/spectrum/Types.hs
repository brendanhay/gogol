{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.spectrum.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.spectrum.Types
    (

    -- * AntennaCharacteristics
      AntennaCharacteristics
    , antennaCharacteristics
    , acHeight
    , acHeightType
    , acHeightUncertainty

    -- * DatabaseSpec
    , DatabaseSpec
    , databaseSpec
    , dsUri
    , dsName

    -- * DbUpdateSpec
    , DbUpdateSpec
    , dbUpdateSpec
    , dusDatabases

    -- * DeviceCapabilities
    , DeviceCapabilities
    , deviceCapabilities
    , dcFrequencyRanges

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

    -- * DeviceOwner
    , DeviceOwner
    , deviceOwner
    , doOperator
    , doOwner

    -- * DeviceValidity
    , DeviceValidity
    , deviceValidity
    , dvIsValid
    , dvReason
    , dvDeviceDesc

    -- * EventTime
    , EventTime
    , eventTime
    , etStartTime
    , etStopTime

    -- * FrequencyRange
    , FrequencyRange
    , frequencyRange
    , frStopHz
    , frMaxPowerDBm
    , frChannelId
    , frStartHz

    -- * GeoLocation
    , GeoLocation
    , geoLocation
    , glConfidence
    , glPoint
    , glRegion

    -- * GeoLocationEllipse
    , GeoLocationEllipse
    , geoLocationEllipse
    , gleSemiMajorAxis
    , gleCenter
    , gleOrientation
    , gleSemiMinorAxis

    -- * GeoLocationPoint
    , GeoLocationPoint
    , geoLocationPoint
    , glpLatitude
    , glpLongitude

    -- * GeoLocationPolygon
    , GeoLocationPolygon
    , geoLocationPolygon
    , glpExterior

    -- * GeoSpectrumSchedule
    , GeoSpectrumSchedule
    , geoSpectrumSchedule
    , gssLocation
    , gssSpectrumSchedules

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

    -- * PawsInitRequest
    , PawsInitRequest
    , pawsInitRequest
    , piriLocation
    , piriVersion
    , piriType
    , piriDeviceDesc

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

    -- * PawsNotifySpectrumUseResponse
    , PawsNotifySpectrumUseResponse
    , pawsNotifySpectrumUseResponse
    , pnsurKind
    , pnsurVersion
    , pnsurType

    -- * PawsRegisterRequest
    , PawsRegisterRequest
    , pawsRegisterRequest
    , prrAntenna
    , prrLocation
    , prrDeviceOwner
    , prrVersion
    , prrType
    , prrDeviceDesc

    -- * PawsRegisterResponse
    , PawsRegisterResponse
    , pawsRegisterResponse
    , pawKind
    , pawVersion
    , pawType
    , pawDatabaseChange

    -- * PawsVerifyDeviceRequest
    , PawsVerifyDeviceRequest
    , pawsVerifyDeviceRequest
    , pvdrVersion
    , pvdrDeviceDescs
    , pvdrType

    -- * PawsVerifyDeviceResponse
    , PawsVerifyDeviceResponse
    , pawsVerifyDeviceResponse
    , pvdrvDeviceValidities
    , pvdrvKind
    , pvdrvVersion
    , pvdrvType
    , pvdrvDatabaseChange

    -- * RulesetInfo
    , RulesetInfo
    , rulesetInfo
    , riRulesetIds
    , riMaxPollingSecs
    , riMaxLocationChange
    , riAuthority

    -- * SpectrumMessage
    , SpectrumMessage
    , spectrumMessage
    , smBandwidth
    , smFrequencyRanges

    -- * SpectrumSchedule
    , SpectrumSchedule
    , spectrumSchedule
    , ssSpectra
    , ssEventTime

    -- * Vcard
    , Vcard
    , vcard
    , vEmail
    , vAdr
    , vOrg
    , vTel
    , vFn

    -- * VcardAddress
    , VcardAddress
    , vcardAddress
    , vaPobox
    , vaCountry
    , vaStreet
    , vaLocality
    , vaCode
    , vaRegion

    -- * VcardTelephone
    , VcardTelephone
    , vcardTelephone
    , vtUri

    -- * VcardTypedText
    , VcardTypedText
    , vcardTypedText
    , vttText
    ) where

import Network.Google.Prelude
import Network.Google.spectrum.Types.Product
import Network.Google.spectrum.Types.Sum
