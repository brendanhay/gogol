{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Spectrum.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Spectrum.Types
  ( -- * Configuration
    spectrumService,

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

import Gogol.Prelude qualified as Core
import Gogol.Spectrum.Internal.Product
import Gogol.Spectrum.Internal.Sum

-- | Default request referring to version @v1explorer@ of the Google Spectrum Database API. This contains the host and root path used as a starting point for constructing service requests.
spectrumService :: Core.ServiceConfig
spectrumService =
  Core.defaultService
    (Core.ServiceId "spectrum:v1explorer")
    "www.googleapis.com"
