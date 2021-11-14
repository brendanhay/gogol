{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.ProximityBeacon
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Registers, manages, indexes, and searches beacons.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Proximity Beacon API Reference>
module Network.Google.ProximityBeacon
    (
    -- * Service Configuration
      proximityBeaconService

    -- * OAuth Scopes
    , userlocationBeaconRegistryScope

    -- * API Declaration
    , ProximityBeaconAPI

    -- * Resources

    -- ** proximitybeacon.beaconinfo.getforobserved
    , module Network.Google.Resource.ProximityBeacon.BeaconInfo.GetforObserved

    -- ** proximitybeacon.beacons.activate
    , module Network.Google.Resource.ProximityBeacon.Beacons.Activate

    -- ** proximitybeacon.beacons.attachments.batchDelete
    , module Network.Google.Resource.ProximityBeacon.Beacons.Attachments.BatchDelete

    -- ** proximitybeacon.beacons.attachments.create
    , module Network.Google.Resource.ProximityBeacon.Beacons.Attachments.Create

    -- ** proximitybeacon.beacons.attachments.delete
    , module Network.Google.Resource.ProximityBeacon.Beacons.Attachments.Delete

    -- ** proximitybeacon.beacons.attachments.list
    , module Network.Google.Resource.ProximityBeacon.Beacons.Attachments.List

    -- ** proximitybeacon.beacons.deactivate
    , module Network.Google.Resource.ProximityBeacon.Beacons.Deactivate

    -- ** proximitybeacon.beacons.decommission
    , module Network.Google.Resource.ProximityBeacon.Beacons.Decommission

    -- ** proximitybeacon.beacons.delete
    , module Network.Google.Resource.ProximityBeacon.Beacons.Delete

    -- ** proximitybeacon.beacons.diagnostics.list
    , module Network.Google.Resource.ProximityBeacon.Beacons.Diagnostics.List

    -- ** proximitybeacon.beacons.get
    , module Network.Google.Resource.ProximityBeacon.Beacons.Get

    -- ** proximitybeacon.beacons.list
    , module Network.Google.Resource.ProximityBeacon.Beacons.List

    -- ** proximitybeacon.beacons.register
    , module Network.Google.Resource.ProximityBeacon.Beacons.Register

    -- ** proximitybeacon.beacons.update
    , module Network.Google.Resource.ProximityBeacon.Beacons.Update

    -- ** proximitybeacon.getEidparams
    , module Network.Google.Resource.ProximityBeacon.GetEidparams

    -- ** proximitybeacon.namespaces.list
    , module Network.Google.Resource.ProximityBeacon.Namespaces.List

    -- ** proximitybeacon.namespaces.update
    , module Network.Google.Resource.ProximityBeacon.Namespaces.Update

    -- * Types

    -- ** LatLng
    , LatLng
    , latLng
    , llLatitude
    , llLongitude

    -- ** AttachmentInfo
    , AttachmentInfo
    , attachmentInfo
    , aiMaxDistanceMeters
    , aiData
    , aiNamespacedType

    -- ** BeaconExpectedStability
    , BeaconExpectedStability (..)

    -- ** NamespaceServingVisibility
    , NamespaceServingVisibility (..)

    -- ** BeaconProperties
    , BeaconProperties
    , beaconProperties
    , bpAddtional

    -- ** Empty
    , Empty
    , empty

    -- ** DeleteAttachmentsResponse
    , DeleteAttachmentsResponse
    , deleteAttachmentsResponse
    , darNumDeleted

    -- ** GetInfoForObservedBeaconsRequest
    , GetInfoForObservedBeaconsRequest
    , getInfoForObservedBeaconsRequest
    , gifobrObservations
    , gifobrNamespacedTypes

    -- ** Namespace
    , Namespace
    , namespace
    , nServingVisibility
    , nNamespaceName

    -- ** EphemeralIdRegistration
    , EphemeralIdRegistration
    , ephemeralIdRegistration
    , eirRotationPeriodExponent
    , eirInitialClockValue
    , eirBeaconIdentityKey
    , eirBeaconEcdhPublicKey
    , eirInitialEid
    , eirServiceEcdhPublicKey

    -- ** AdvertisedIdType
    , AdvertisedIdType (..)

    -- ** ListNamespacesResponse
    , ListNamespacesResponse
    , listNamespacesResponse
    , lnrNamespaces

    -- ** Date
    , Date
    , date
    , dDay
    , dYear
    , dMonth

    -- ** Beacon
    , Beacon
    , beacon
    , beaLatLng
    , beaStatus
    , beaBeaconName
    , beaEphemeralIdRegistration
    , beaIndoorLevel
    , beaExpectedStability
    , beaProvisioningKey
    , beaDescription
    , beaPlaceId
    , beaAdvertisedId
    , beaProperties

    -- ** Diagnostics
    , Diagnostics
    , diagnostics
    , dAlerts
    , dBeaconName
    , dEstimatedLowBatteryDate

    -- ** ListBeaconAttachmentsResponse
    , ListBeaconAttachmentsResponse
    , listBeaconAttachmentsResponse
    , lbarAttachments

    -- ** IndoorLevel
    , IndoorLevel
    , indoorLevel
    , ilName

    -- ** EphemeralIdRegistrationParams
    , EphemeralIdRegistrationParams
    , ephemeralIdRegistrationParams
    , eirpMinRotationPeriodExponent
    , eirpMaxRotationPeriodExponent
    , eirpServiceEcdhPublicKey

    -- ** Xgafv
    , Xgafv (..)

    -- ** BeaconInfo
    , BeaconInfo
    , beaconInfo
    , biAttachments
    , biBeaconName
    , biAdvertisedId

    -- ** Observation
    , Observation
    , observation
    , oTelemetry
    , oTimestampMs
    , oAdvertisedId

    -- ** BeaconAttachment
    , BeaconAttachment
    , beaconAttachment
    , baMaxDistanceMeters
    , baCreationTimeMs
    , baData
    , baAttachmentName
    , baNamespacedType

    -- ** ListDiagnosticsResponse
    , ListDiagnosticsResponse
    , listDiagnosticsResponse
    , ldrNextPageToken
    , ldrDiagnostics

    -- ** BeaconStatus
    , BeaconStatus (..)

    -- ** AdvertisedId
    , AdvertisedId
    , advertisedId
    , aiId
    , aiType

    -- ** ListBeaconsResponse
    , ListBeaconsResponse
    , listBeaconsResponse
    , lbrNextPageToken
    , lbrBeacons
    , lbrTotalCount

    -- ** GetInfoForObservedBeaconsResponse
    , GetInfoForObservedBeaconsResponse
    , getInfoForObservedBeaconsResponse
    , gifobrBeacons
    ) where

import Network.Google.Prelude
import Network.Google.ProximityBeacon.Types
import Network.Google.Resource.ProximityBeacon.BeaconInfo.GetforObserved
import Network.Google.Resource.ProximityBeacon.Beacons.Activate
import Network.Google.Resource.ProximityBeacon.Beacons.Attachments.BatchDelete
import Network.Google.Resource.ProximityBeacon.Beacons.Attachments.Create
import Network.Google.Resource.ProximityBeacon.Beacons.Attachments.Delete
import Network.Google.Resource.ProximityBeacon.Beacons.Attachments.List
import Network.Google.Resource.ProximityBeacon.Beacons.Deactivate
import Network.Google.Resource.ProximityBeacon.Beacons.Decommission
import Network.Google.Resource.ProximityBeacon.Beacons.Delete
import Network.Google.Resource.ProximityBeacon.Beacons.Diagnostics.List
import Network.Google.Resource.ProximityBeacon.Beacons.Get
import Network.Google.Resource.ProximityBeacon.Beacons.List
import Network.Google.Resource.ProximityBeacon.Beacons.Register
import Network.Google.Resource.ProximityBeacon.Beacons.Update
import Network.Google.Resource.ProximityBeacon.GetEidparams
import Network.Google.Resource.ProximityBeacon.Namespaces.List
import Network.Google.Resource.ProximityBeacon.Namespaces.Update

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Proximity Beacon API service.
type ProximityBeaconAPI =
     GetEidparamsResource :<|>
       BeaconsAttachmentsListResource
       :<|> BeaconsAttachmentsCreateResource
       :<|> BeaconsAttachmentsBatchDeleteResource
       :<|> BeaconsAttachmentsDeleteResource
       :<|> BeaconsDiagnosticsListResource
       :<|> BeaconsListResource
       :<|> BeaconsDeactivateResource
       :<|> BeaconsGetResource
       :<|> BeaconsActivateResource
       :<|> BeaconsRegisterResource
       :<|> BeaconsDecommissionResource
       :<|> BeaconsDeleteResource
       :<|> BeaconsUpdateResource
       :<|> NamespacesListResource
       :<|> NamespacesUpdateResource
       :<|> BeaconInfoGetforObservedResource
