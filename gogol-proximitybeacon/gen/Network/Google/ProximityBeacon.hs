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
    -- * REST Resources

    -- ** Google Proximity Beacon API
      ProximityBeacon
    , proximityBeacon
    , proximityBeaconURL

    -- ** proximitybeacon.beaconinfo.getforobserved
    , module Network.Google.API.ProximityBeacon.Beaconinfo.Getforobserved

    -- ** proximitybeacon.beacons.attachments.batchDelete
    , module Network.Google.API.ProximityBeacon.Beacons.Attachments.BatchDelete

    -- ** proximitybeacon.beacons.attachments.create
    , module Network.Google.API.ProximityBeacon.Beacons.Attachments.Create

    -- ** proximitybeacon.beacons.attachments.delete
    , module Network.Google.API.ProximityBeacon.Beacons.Attachments.Delete

    -- ** proximitybeacon.beacons.attachments.list
    , module Network.Google.API.ProximityBeacon.Beacons.Attachments.List

    -- ** proximitybeacon.beacons.diagnostics.list
    , module Network.Google.API.ProximityBeacon.Beacons.Diagnostics.List

    -- ** proximitybeacon.namespaces.list
    , module Network.Google.API.ProximityBeacon.Namespaces.List

    -- * Types

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

    -- ** IndoorLevel
    , IndoorLevel
    , indoorLevel
    , ilName

    -- ** ListBeaconAttachmentsResponse
    , ListBeaconAttachmentsResponse
    , listBeaconAttachmentsResponse
    , lbarAttachments

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

    -- ** GetInfoForObservedBeaconsResponse
    , GetInfoForObservedBeaconsResponse
    , getInfoForObservedBeaconsResponse
    , gifobrBeacons

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

    -- ** ListBeaconsResponse
    , ListBeaconsResponse
    , listBeaconsResponse
    , lbrNextPageToken
    , lbrBeacons
    , lbrTotalCount

    -- ** AdvertisedId
    , AdvertisedId
    , advertisedId
    , aiId
    , aiType

    -- ** BeaconProperties
    , BeaconProperties
    , beaconProperties

    -- ** ListNamespacesResponse
    , ListNamespacesResponse
    , listNamespacesResponse
    , lnrNamespaces
    ) where

import           Network.Google.API.ProximityBeacon.Beaconinfo.Getforobserved
import           Network.Google.API.ProximityBeacon.Beacons.Attachments.BatchDelete
import           Network.Google.API.ProximityBeacon.Beacons.Attachments.Create
import           Network.Google.API.ProximityBeacon.Beacons.Attachments.Delete
import           Network.Google.API.ProximityBeacon.Beacons.Attachments.List
import           Network.Google.API.ProximityBeacon.Beacons.Diagnostics.List
import           Network.Google.API.ProximityBeacon.Namespaces.List
import           Network.Google.Prelude
import           Network.Google.ProximityBeacon.Types

{- $resources
TODO
-}

type ProximityBeacon =
     BeaconsAttachmentsBatchDeleteAPI :<|>
       NamespacesListAPI
       :<|> BeaconsAttachmentsListAPI
       :<|> BeaconsAttachmentsDeleteAPI
       :<|> BeaconsDiagnosticsListAPI
       :<|> BeaconinfoGetforobservedAPI
       :<|> BeaconsAttachmentsCreateAPI

proximityBeacon :: Proxy ProximityBeacon
proximityBeacon = Proxy
