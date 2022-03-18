{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.Spectrum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- API for spectrum-management functions.
--
-- /See:/ <http://developers.google.com/spectrum Google Spectrum Database API Reference>
module Network.Google.Spectrum
  ( -- * Configuration
    spectrumService,

    -- * Resources

    -- ** spectrum.paws.getSpectrum
    SpectrumPawsGetSpectrumResource,
    newSpectrumPawsGetSpectrum,
    SpectrumPawsGetSpectrum,

    -- ** spectrum.paws.getSpectrumBatch
    SpectrumPawsGetSpectrumBatchResource,
    newSpectrumPawsGetSpectrumBatch,
    SpectrumPawsGetSpectrumBatch,

    -- ** spectrum.paws.init
    SpectrumPawsInitResource,
    newSpectrumPawsInit,
    SpectrumPawsInit,

    -- ** spectrum.paws.notifySpectrumUse
    SpectrumPawsNotifySpectrumUseResource,
    newSpectrumPawsNotifySpectrumUse,
    SpectrumPawsNotifySpectrumUse,

    -- ** spectrum.paws.register
    SpectrumPawsRegisterResource,
    newSpectrumPawsRegister,
    SpectrumPawsRegister,

    -- ** spectrum.paws.verifyDevice
    SpectrumPawsVerifyDeviceResource,
    newSpectrumPawsVerifyDevice,
    SpectrumPawsVerifyDevice,

    -- * Types

    -- ** AntennaCharacteristics
    AntennaCharacteristics (..),
    newAntennaCharacteristics,

    -- ** DatabaseSpec
    DatabaseSpec (..),
    newDatabaseSpec,

    -- ** DbUpdateSpec
    DbUpdateSpec (..),
    newDbUpdateSpec,

    -- ** DeviceCapabilities
    DeviceCapabilities (..),
    newDeviceCapabilities,

    -- ** DeviceDescriptor
    DeviceDescriptor (..),
    newDeviceDescriptor,

    -- ** DeviceOwner
    DeviceOwner (..),
    newDeviceOwner,

    -- ** DeviceValidity
    DeviceValidity (..),
    newDeviceValidity,

    -- ** EventTime
    EventTime (..),
    newEventTime,

    -- ** FrequencyRange
    FrequencyRange (..),
    newFrequencyRange,

    -- ** GeoLocation
    GeoLocation (..),
    newGeoLocation,

    -- ** GeoLocationEllipse
    GeoLocationEllipse (..),
    newGeoLocationEllipse,

    -- ** GeoLocationPoint
    GeoLocationPoint (..),
    newGeoLocationPoint,

    -- ** GeoLocationPolygon
    GeoLocationPolygon (..),
    newGeoLocationPolygon,

    -- ** GeoSpectrumSchedule
    GeoSpectrumSchedule (..),
    newGeoSpectrumSchedule,

    -- ** PawsGetSpectrumBatchRequest
    PawsGetSpectrumBatchRequest (..),
    newPawsGetSpectrumBatchRequest,

    -- ** PawsGetSpectrumBatchResponse
    PawsGetSpectrumBatchResponse (..),
    newPawsGetSpectrumBatchResponse,

    -- ** PawsGetSpectrumRequest
    PawsGetSpectrumRequest (..),
    newPawsGetSpectrumRequest,

    -- ** PawsGetSpectrumResponse
    PawsGetSpectrumResponse (..),
    newPawsGetSpectrumResponse,

    -- ** PawsInitRequest
    PawsInitRequest (..),
    newPawsInitRequest,

    -- ** PawsInitResponse
    PawsInitResponse (..),
    newPawsInitResponse,

    -- ** PawsNotifySpectrumUseRequest
    PawsNotifySpectrumUseRequest (..),
    newPawsNotifySpectrumUseRequest,

    -- ** PawsNotifySpectrumUseResponse
    PawsNotifySpectrumUseResponse (..),
    newPawsNotifySpectrumUseResponse,

    -- ** PawsRegisterRequest
    PawsRegisterRequest (..),
    newPawsRegisterRequest,

    -- ** PawsRegisterResponse
    PawsRegisterResponse (..),
    newPawsRegisterResponse,

    -- ** PawsVerifyDeviceRequest
    PawsVerifyDeviceRequest (..),
    newPawsVerifyDeviceRequest,

    -- ** PawsVerifyDeviceResponse
    PawsVerifyDeviceResponse (..),
    newPawsVerifyDeviceResponse,

    -- ** RulesetInfo
    RulesetInfo (..),
    newRulesetInfo,

    -- ** SpectrumMessage
    SpectrumMessage (..),
    newSpectrumMessage,

    -- ** SpectrumSchedule
    SpectrumSchedule (..),
    newSpectrumSchedule,

    -- ** Vcard
    Vcard (..),
    newVcard,

    -- ** VcardAddress
    VcardAddress (..),
    newVcardAddress,

    -- ** VcardTelephone
    VcardTelephone (..),
    newVcardTelephone,

    -- ** VcardTypedText
    VcardTypedText (..),
    newVcardTypedText,
  )
where

import Network.Google.Spectrum.Paws.GetSpectrum
import Network.Google.Spectrum.Paws.GetSpectrumBatch
import Network.Google.Spectrum.Paws.Init
import Network.Google.Spectrum.Paws.NotifySpectrumUse
import Network.Google.Spectrum.Paws.Register
import Network.Google.Spectrum.Paws.VerifyDevice
import Network.Google.Spectrum.Types
