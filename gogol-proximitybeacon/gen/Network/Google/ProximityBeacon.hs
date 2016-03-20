{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.ProximityBeacon
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API provides services to register, manage, index, and search
-- beacons.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Google Proximity Beacon API Reference>
module Network.Google.ProximityBeacon
    (
    -- * Service Configuration
      proximityBeaconService

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

    -- ** proximitybeacon.namespaces.list
    , module Network.Google.Resource.ProximityBeacon.Namespaces.List

    -- * Types

    -- ** LatLng
    , LatLng
    , latLng
    , llLatitude
    , llLongitude

    -- ** AttachmentInfo
    , AttachmentInfo
    , attachmentInfo
    , aiData
    , aiNamespacedType

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
    , bLatLng
    , bStatus
    , bBeaconName
    , bIndoorLevel
    , bExpectedStability
    , bDescription
    , bPlaceId
    , bAdvertisedId
    , bProperties

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

    -- ** BeaconInfo
    , BeaconInfo
    , beaconInfo
    , biAttachments
    , biBeaconName
    , biDescription
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
    , baData
    , baAttachmentName
    , baNamespacedType

    -- ** ListDiagnosticsResponse
    , ListDiagnosticsResponse
    , listDiagnosticsResponse
    , ldrNextPageToken
    , ldrDiagnostics

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

import           Network.Google.Prelude
import           Network.Google.ProximityBeacon.Types
import           Network.Google.Resource.ProximityBeacon.BeaconInfo.GetforObserved
import           Network.Google.Resource.ProximityBeacon.Beacons.Activate
import           Network.Google.Resource.ProximityBeacon.Beacons.Attachments.BatchDelete
import           Network.Google.Resource.ProximityBeacon.Beacons.Attachments.Create
import           Network.Google.Resource.ProximityBeacon.Beacons.Attachments.Delete
import           Network.Google.Resource.ProximityBeacon.Beacons.Attachments.List
import           Network.Google.Resource.ProximityBeacon.Beacons.Deactivate
import           Network.Google.Resource.ProximityBeacon.Beacons.Decommission
import           Network.Google.Resource.ProximityBeacon.Beacons.Diagnostics.List
import           Network.Google.Resource.ProximityBeacon.Beacons.Get
import           Network.Google.Resource.ProximityBeacon.Beacons.List
import           Network.Google.Resource.ProximityBeacon.Beacons.Register
import           Network.Google.Resource.ProximityBeacon.Beacons.Update
import           Network.Google.Resource.ProximityBeacon.Namespaces.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Proximity Beacon API service.
type ProximityBeaconAPI =
     BeaconsAttachmentsListResource :<|>
       BeaconsAttachmentsCreateResource
       :<|> BeaconsAttachmentsBatchDeleteResource
       :<|> BeaconsAttachmentsDeleteResource
       :<|> BeaconsDiagnosticsListResource
       :<|> BeaconsListResource
       :<|> BeaconsDeactivateResource
       :<|> BeaconsGetResource
       :<|> BeaconsActivateResource
       :<|> BeaconsRegisterResource
       :<|> BeaconsDecommissionResource
       :<|> BeaconsUpdateResource
       :<|> NamespacesListResource
       :<|> BeaconInfoGetforObservedResource
