{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ProximityBeacon.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.ProximityBeacon.Types
    (
    -- * Configuration
      proximityBeaconService

    -- * OAuth Scopes
    , userlocationBeaconRegistryScope

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AdvertisedId
    , AdvertisedId (..)
    , newAdvertisedId

    -- ** AdvertisedId_Type
    , AdvertisedId_Type (..)

    -- ** AttachmentInfo
    , AttachmentInfo (..)
    , newAttachmentInfo

    -- ** Beacon
    , Beacon (..)
    , newBeacon

    -- ** Beacon_ExpectedStability
    , Beacon_ExpectedStability (..)

    -- ** Beacon_Properties
    , Beacon_Properties (..)
    , newBeacon_Properties

    -- ** Beacon_Status
    , Beacon_Status (..)

    -- ** BeaconAttachment
    , BeaconAttachment (..)
    , newBeaconAttachment

    -- ** BeaconInfo
    , BeaconInfo (..)
    , newBeaconInfo

    -- ** Date
    , Date (..)
    , newDate

    -- ** DeleteAttachmentsResponse
    , DeleteAttachmentsResponse (..)
    , newDeleteAttachmentsResponse

    -- ** Diagnostics
    , Diagnostics (..)
    , newDiagnostics

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** EphemeralIdRegistration
    , EphemeralIdRegistration (..)
    , newEphemeralIdRegistration

    -- ** EphemeralIdRegistrationParams
    , EphemeralIdRegistrationParams (..)
    , newEphemeralIdRegistrationParams

    -- ** GetInfoForObservedBeaconsRequest
    , GetInfoForObservedBeaconsRequest (..)
    , newGetInfoForObservedBeaconsRequest

    -- ** GetInfoForObservedBeaconsResponse
    , GetInfoForObservedBeaconsResponse (..)
    , newGetInfoForObservedBeaconsResponse

    -- ** IndoorLevel
    , IndoorLevel (..)
    , newIndoorLevel

    -- ** LatLng
    , LatLng (..)
    , newLatLng

    -- ** ListBeaconAttachmentsResponse
    , ListBeaconAttachmentsResponse (..)
    , newListBeaconAttachmentsResponse

    -- ** ListBeaconsResponse
    , ListBeaconsResponse (..)
    , newListBeaconsResponse

    -- ** ListDiagnosticsResponse
    , ListDiagnosticsResponse (..)
    , newListDiagnosticsResponse

    -- ** ListNamespacesResponse
    , ListNamespacesResponse (..)
    , newListNamespacesResponse

    -- ** Namespace
    , Namespace (..)
    , newNamespace

    -- ** Namespace_ServingVisibility
    , Namespace_ServingVisibility (..)

    -- ** Observation
    , Observation (..)
    , newObservation
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ProximityBeacon.Internal.Product
import Gogol.ProximityBeacon.Internal.Sum

-- | Default request referring to version @v1beta1@ of the Proximity Beacon API. This contains the host and root path used as a starting point for constructing service requests.
proximityBeaconService :: Core.ServiceConfig
proximityBeaconService
  = Core.defaultService
      (Core.ServiceId "proximitybeacon:v1beta1")
      "proximitybeacon.googleapis.com"

-- | View and modify your beacons
userlocationBeaconRegistryScope :: Core.Proxy '["https://www.googleapis.com/auth/userlocation.beacon.registry"]
userlocationBeaconRegistryScope = Core.Proxy
