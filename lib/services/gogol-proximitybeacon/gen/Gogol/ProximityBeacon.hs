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
-- Module      : Gogol.ProximityBeacon
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Registers, manages, indexes, and searches beacons.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Proximity Beacon API Reference>
module Gogol.ProximityBeacon
  ( -- * Configuration
    proximityBeaconService,

    -- * OAuth Scopes
    Userlocation'Beacon'Registry,

    -- * Resources

    -- ** proximitybeacon.beaconinfo.getforobserved
    ProximityBeaconBeaconinfoGetforobservedResource,
    ProximityBeaconBeaconinfoGetforobserved (..),
    newProximityBeaconBeaconinfoGetforobserved,

    -- ** proximitybeacon.beacons.activate
    ProximityBeaconBeaconsActivateResource,
    ProximityBeaconBeaconsActivate (..),
    newProximityBeaconBeaconsActivate,

    -- ** proximitybeacon.beacons.attachments.batchDelete
    ProximityBeaconBeaconsAttachmentsBatchDeleteResource,
    ProximityBeaconBeaconsAttachmentsBatchDelete (..),
    newProximityBeaconBeaconsAttachmentsBatchDelete,

    -- ** proximitybeacon.beacons.attachments.create
    ProximityBeaconBeaconsAttachmentsCreateResource,
    ProximityBeaconBeaconsAttachmentsCreate (..),
    newProximityBeaconBeaconsAttachmentsCreate,

    -- ** proximitybeacon.beacons.attachments.delete
    ProximityBeaconBeaconsAttachmentsDeleteResource,
    ProximityBeaconBeaconsAttachmentsDelete (..),
    newProximityBeaconBeaconsAttachmentsDelete,

    -- ** proximitybeacon.beacons.attachments.list
    ProximityBeaconBeaconsAttachmentsListResource,
    ProximityBeaconBeaconsAttachmentsList (..),
    newProximityBeaconBeaconsAttachmentsList,

    -- ** proximitybeacon.beacons.deactivate
    ProximityBeaconBeaconsDeactivateResource,
    ProximityBeaconBeaconsDeactivate (..),
    newProximityBeaconBeaconsDeactivate,

    -- ** proximitybeacon.beacons.decommission
    ProximityBeaconBeaconsDecommissionResource,
    ProximityBeaconBeaconsDecommission (..),
    newProximityBeaconBeaconsDecommission,

    -- ** proximitybeacon.beacons.delete
    ProximityBeaconBeaconsDeleteResource,
    ProximityBeaconBeaconsDelete (..),
    newProximityBeaconBeaconsDelete,

    -- ** proximitybeacon.beacons.diagnostics.list
    ProximityBeaconBeaconsDiagnosticsListResource,
    ProximityBeaconBeaconsDiagnosticsList (..),
    newProximityBeaconBeaconsDiagnosticsList,

    -- ** proximitybeacon.beacons.get
    ProximityBeaconBeaconsGetResource,
    ProximityBeaconBeaconsGet (..),
    newProximityBeaconBeaconsGet,

    -- ** proximitybeacon.beacons.list
    ProximityBeaconBeaconsListResource,
    ProximityBeaconBeaconsList (..),
    newProximityBeaconBeaconsList,

    -- ** proximitybeacon.beacons.register
    ProximityBeaconBeaconsRegisterResource,
    ProximityBeaconBeaconsRegister (..),
    newProximityBeaconBeaconsRegister,

    -- ** proximitybeacon.beacons.update
    ProximityBeaconBeaconsUpdateResource,
    ProximityBeaconBeaconsUpdate (..),
    newProximityBeaconBeaconsUpdate,

    -- ** proximitybeacon.getEidparams
    ProximityBeaconGetEidparamsResource,
    ProximityBeaconGetEidparams (..),
    newProximityBeaconGetEidparams,

    -- ** proximitybeacon.namespaces.list
    ProximityBeaconNamespacesListResource,
    ProximityBeaconNamespacesList (..),
    newProximityBeaconNamespacesList,

    -- ** proximitybeacon.namespaces.update
    ProximityBeaconNamespacesUpdateResource,
    ProximityBeaconNamespacesUpdate (..),
    newProximityBeaconNamespacesUpdate,

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

import Gogol.ProximityBeacon.Beaconinfo.Getforobserved
import Gogol.ProximityBeacon.Beacons.Activate
import Gogol.ProximityBeacon.Beacons.Attachments.BatchDelete
import Gogol.ProximityBeacon.Beacons.Attachments.Create
import Gogol.ProximityBeacon.Beacons.Attachments.Delete
import Gogol.ProximityBeacon.Beacons.Attachments.List
import Gogol.ProximityBeacon.Beacons.Deactivate
import Gogol.ProximityBeacon.Beacons.Decommission
import Gogol.ProximityBeacon.Beacons.Delete
import Gogol.ProximityBeacon.Beacons.Diagnostics.List
import Gogol.ProximityBeacon.Beacons.Get
import Gogol.ProximityBeacon.Beacons.List
import Gogol.ProximityBeacon.Beacons.Register
import Gogol.ProximityBeacon.Beacons.Update
import Gogol.ProximityBeacon.GetEidparams
import Gogol.ProximityBeacon.Namespaces.List
import Gogol.ProximityBeacon.Namespaces.Update
import Gogol.ProximityBeacon.Types
