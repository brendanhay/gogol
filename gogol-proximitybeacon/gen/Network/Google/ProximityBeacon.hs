{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.ProximityBeacon
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | This API provides services to register, manage, index, and search
-- beacons.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Google Proximity Beacon API Reference>
module Network.Google.ProximityBeacon
    (
    -- * API
      ProximityBeaconAPI
    , proximityBeaconAPI
    , proximityBeaconURL

    -- * Service Methods

    -- * REST Resources

    -- ** ProximitybeaconBeaconinfoGetforobserved
    , module ProximityBeacon.Beaconinfo.Getforobserved

    -- ** ProximitybeaconBeaconsActivate
    , module ProximityBeacon.Beacons.Activate

    -- ** ProximitybeaconBeaconsAttachmentsBatchDelete
    , module ProximityBeacon.Beacons.Attachments.BatchDelete

    -- ** ProximitybeaconBeaconsAttachmentsCreate
    , module ProximityBeacon.Beacons.Attachments.Create

    -- ** ProximitybeaconBeaconsAttachmentsDelete
    , module ProximityBeacon.Beacons.Attachments.Delete

    -- ** ProximitybeaconBeaconsAttachmentsList
    , module ProximityBeacon.Beacons.Attachments.List

    -- ** ProximitybeaconBeaconsDeactivate
    , module ProximityBeacon.Beacons.Deactivate

    -- ** ProximitybeaconBeaconsDecommission
    , module ProximityBeacon.Beacons.Decommission

    -- ** ProximitybeaconBeaconsDiagnosticsList
    , module ProximityBeacon.Beacons.Diagnostics.List

    -- ** ProximitybeaconBeaconsGet
    , module ProximityBeacon.Beacons.Get

    -- ** ProximitybeaconBeaconsList
    , module ProximityBeacon.Beacons.List

    -- ** ProximitybeaconBeaconsRegister
    , module ProximityBeacon.Beacons.Register

    -- ** ProximitybeaconBeaconsUpdate
    , module ProximityBeacon.Beacons.Update

    -- ** ProximitybeaconNamespacesList
    , module ProximityBeacon.Namespaces.List

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

    -- ** Empty
    , Empty
    , empty

    -- ** DeleteAttachmentsResponse
    , DeleteAttachmentsResponse
    , deleteAttachmentsResponse
    , darNumDeleted

    -- ** Namespace
    , Namespace
    , namespace
    , nServingVisibility
    , nNamespaceName

    -- ** GetInfoForObservedBeaconsRequest
    , GetInfoForObservedBeaconsRequest
    , getInfoForObservedBeaconsRequest
    , gifobrObservations
    , gifobrNamespacedTypes

    -- ** ListNamespacesResponse
    , ListNamespacesResponse
    , listNamespacesResponse
    , lnrNamespaces

    -- ** Diagnostics
    , Diagnostics
    , diagnostics
    , dAlerts
    , dBeaconName
    , dEstimatedLowBatteryDate

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

    -- ** ListBeaconAttachmentsResponse
    , ListBeaconAttachmentsResponse
    , listBeaconAttachmentsResponse
    , lbarAttachments

    -- ** IndoorLevel
    , IndoorLevel
    , indoorLevel
    , ilName

    -- ** Observation
    , Observation
    , observation
    , oTelemetry
    , oTimestampMs
    , oAdvertisedId

    -- ** BeaconInfo
    , BeaconInfo
    , beaconInfo
    , biAttachments
    , biBeaconName
    , biDescription
    , biAdvertisedId

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
import           Network.Google.Resource.ProximityBeacon.Beaconinfo.Getforobserved
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

type ProximityBeaconAPI =
     Beacons :<|> Namespaces :<|> Beaconinfo

proximityBeaconAPI :: Proxy ProximityBeaconAPI
proximityBeaconAPI = Proxy
