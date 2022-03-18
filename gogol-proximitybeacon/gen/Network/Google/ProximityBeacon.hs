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
-- Module      : Network.Google.ProximityBeacon
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Registers, manages, indexes, and searches beacons.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Proximity Beacon API Reference>
module Network.Google.ProximityBeacon
  ( -- * Configuration
    proximityBeaconService,

    -- * OAuth Scopes
    userlocationBeaconRegistryScope,

    -- * Resources

    -- ** proximitybeacon.beaconinfo.getforobserved
    ProximityBeaconBeaconinfoGetforobservedResource,
    newProximityBeaconBeaconinfoGetforobserved,
    ProximityBeaconBeaconinfoGetforobserved,

    -- ** proximitybeacon.beacons.activate
    ProximityBeaconBeaconsActivateResource,
    newProximityBeaconBeaconsActivate,
    ProximityBeaconBeaconsActivate,

    -- ** proximitybeacon.beacons.attachments.batchDelete
    ProximityBeaconBeaconsAttachmentsBatchDeleteResource,
    newProximityBeaconBeaconsAttachmentsBatchDelete,
    ProximityBeaconBeaconsAttachmentsBatchDelete,

    -- ** proximitybeacon.beacons.attachments.create
    ProximityBeaconBeaconsAttachmentsCreateResource,
    newProximityBeaconBeaconsAttachmentsCreate,
    ProximityBeaconBeaconsAttachmentsCreate,

    -- ** proximitybeacon.beacons.attachments.delete
    ProximityBeaconBeaconsAttachmentsDeleteResource,
    newProximityBeaconBeaconsAttachmentsDelete,
    ProximityBeaconBeaconsAttachmentsDelete,

    -- ** proximitybeacon.beacons.attachments.list
    ProximityBeaconBeaconsAttachmentsListResource,
    newProximityBeaconBeaconsAttachmentsList,
    ProximityBeaconBeaconsAttachmentsList,

    -- ** proximitybeacon.beacons.deactivate
    ProximityBeaconBeaconsDeactivateResource,
    newProximityBeaconBeaconsDeactivate,
    ProximityBeaconBeaconsDeactivate,

    -- ** proximitybeacon.beacons.decommission
    ProximityBeaconBeaconsDecommissionResource,
    newProximityBeaconBeaconsDecommission,
    ProximityBeaconBeaconsDecommission,

    -- ** proximitybeacon.beacons.delete
    ProximityBeaconBeaconsDeleteResource,
    newProximityBeaconBeaconsDelete,
    ProximityBeaconBeaconsDelete,

    -- ** proximitybeacon.beacons.diagnostics.list
    ProximityBeaconBeaconsDiagnosticsListResource,
    newProximityBeaconBeaconsDiagnosticsList,
    ProximityBeaconBeaconsDiagnosticsList,

    -- ** proximitybeacon.beacons.get
    ProximityBeaconBeaconsGetResource,
    newProximityBeaconBeaconsGet,
    ProximityBeaconBeaconsGet,

    -- ** proximitybeacon.beacons.list
    ProximityBeaconBeaconsListResource,
    newProximityBeaconBeaconsList,
    ProximityBeaconBeaconsList,

    -- ** proximitybeacon.beacons.register
    ProximityBeaconBeaconsRegisterResource,
    newProximityBeaconBeaconsRegister,
    ProximityBeaconBeaconsRegister,

    -- ** proximitybeacon.beacons.update
    ProximityBeaconBeaconsUpdateResource,
    newProximityBeaconBeaconsUpdate,
    ProximityBeaconBeaconsUpdate,

    -- ** proximitybeacon.getEidparams
    ProximityBeaconGetEidparamsResource,
    newProximityBeaconGetEidparams,
    ProximityBeaconGetEidparams,

    -- ** proximitybeacon.namespaces.list
    ProximityBeaconNamespacesListResource,
    newProximityBeaconNamespacesList,
    ProximityBeaconNamespacesList,

    -- ** proximitybeacon.namespaces.update
    ProximityBeaconNamespacesUpdateResource,
    newProximityBeaconNamespacesUpdate,
    ProximityBeaconNamespacesUpdate,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AdvertisedId
    AdvertisedId (..),
    newAdvertisedId,

    -- ** AdvertisedId_Type
    AdvertisedId_Type (..),

    -- ** AttachmentInfo
    AttachmentInfo (..),
    newAttachmentInfo,

    -- ** Beacon
    Beacon (..),
    newBeacon,

    -- ** Beacon_ExpectedStability
    Beacon_ExpectedStability (..),

    -- ** Beacon_Properties
    Beacon_Properties (..),
    newBeacon_Properties,

    -- ** Beacon_Status
    Beacon_Status (..),

    -- ** BeaconAttachment
    BeaconAttachment (..),
    newBeaconAttachment,

    -- ** BeaconInfo
    BeaconInfo (..),
    newBeaconInfo,

    -- ** Date
    Date (..),
    newDate,

    -- ** DeleteAttachmentsResponse
    DeleteAttachmentsResponse (..),
    newDeleteAttachmentsResponse,

    -- ** Diagnostics
    Diagnostics (..),
    newDiagnostics,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** EphemeralIdRegistration
    EphemeralIdRegistration (..),
    newEphemeralIdRegistration,

    -- ** EphemeralIdRegistrationParams
    EphemeralIdRegistrationParams (..),
    newEphemeralIdRegistrationParams,

    -- ** GetInfoForObservedBeaconsRequest
    GetInfoForObservedBeaconsRequest (..),
    newGetInfoForObservedBeaconsRequest,

    -- ** GetInfoForObservedBeaconsResponse
    GetInfoForObservedBeaconsResponse (..),
    newGetInfoForObservedBeaconsResponse,

    -- ** IndoorLevel
    IndoorLevel (..),
    newIndoorLevel,

    -- ** LatLng
    LatLng (..),
    newLatLng,

    -- ** ListBeaconAttachmentsResponse
    ListBeaconAttachmentsResponse (..),
    newListBeaconAttachmentsResponse,

    -- ** ListBeaconsResponse
    ListBeaconsResponse (..),
    newListBeaconsResponse,

    -- ** ListDiagnosticsResponse
    ListDiagnosticsResponse (..),
    newListDiagnosticsResponse,

    -- ** ListNamespacesResponse
    ListNamespacesResponse (..),
    newListNamespacesResponse,

    -- ** Namespace
    Namespace (..),
    newNamespace,

    -- ** Namespace_ServingVisibility
    Namespace_ServingVisibility (..),

    -- ** Observation
    Observation (..),
    newObservation,
  )
where

import Network.Google.ProximityBeacon.Beaconinfo.Getforobserved
import Network.Google.ProximityBeacon.Beacons.Activate
import Network.Google.ProximityBeacon.Beacons.Attachments.BatchDelete
import Network.Google.ProximityBeacon.Beacons.Attachments.Create
import Network.Google.ProximityBeacon.Beacons.Attachments.Delete
import Network.Google.ProximityBeacon.Beacons.Attachments.List
import Network.Google.ProximityBeacon.Beacons.Deactivate
import Network.Google.ProximityBeacon.Beacons.Decommission
import Network.Google.ProximityBeacon.Beacons.Delete
import Network.Google.ProximityBeacon.Beacons.Diagnostics.List
import Network.Google.ProximityBeacon.Beacons.Get
import Network.Google.ProximityBeacon.Beacons.List
import Network.Google.ProximityBeacon.Beacons.Register
import Network.Google.ProximityBeacon.Beacons.Update
import Network.Google.ProximityBeacon.GetEidparams
import Network.Google.ProximityBeacon.Namespaces.List
import Network.Google.ProximityBeacon.Namespaces.Update
import Network.Google.ProximityBeacon.Types
