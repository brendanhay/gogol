{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

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
-- | This API provides services to register, manage, index, and search
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

    -- ** ProximitybeaconBeaconInfoGetforObserved
    , module Network.Google.Resource.ProximityBeacon.BeaconInfo.GetforObserved

    -- ** ProximitybeaconBeaconsActivate
    , module Network.Google.Resource.ProximityBeacon.Beacons.Activate

    -- ** ProximitybeaconBeaconsAttachmentsBatchDelete
    , module Network.Google.Resource.ProximityBeacon.Beacons.Attachments.BatchDelete

    -- ** ProximitybeaconBeaconsAttachmentsCreate
    , module Network.Google.Resource.ProximityBeacon.Beacons.Attachments.Create

    -- ** ProximitybeaconBeaconsAttachmentsDelete
    , module Network.Google.Resource.ProximityBeacon.Beacons.Attachments.Delete

    -- ** ProximitybeaconBeaconsAttachmentsList
    , module Network.Google.Resource.ProximityBeacon.Beacons.Attachments.List

    -- ** ProximitybeaconBeaconsDeactivate
    , module Network.Google.Resource.ProximityBeacon.Beacons.Deactivate

    -- ** ProximitybeaconBeaconsDecommission
    , module Network.Google.Resource.ProximityBeacon.Beacons.Decommission

    -- ** ProximitybeaconBeaconsDiagnosticsList
    , module Network.Google.Resource.ProximityBeacon.Beacons.Diagnostics.List

    -- ** ProximitybeaconBeaconsGet
    , module Network.Google.Resource.ProximityBeacon.Beacons.Get

    -- ** ProximitybeaconBeaconsList
    , module Network.Google.Resource.ProximityBeacon.Beacons.List

    -- ** ProximitybeaconBeaconsRegister
    , module Network.Google.Resource.ProximityBeacon.Beacons.Register

    -- ** ProximitybeaconBeaconsUpdate
    , module Network.Google.Resource.ProximityBeacon.Beacons.Update

    -- ** ProximitybeaconNamespacesList
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

proximityBeaconAPI :: Proxy ProximityBeaconAPI
proximityBeaconAPI = Proxy
