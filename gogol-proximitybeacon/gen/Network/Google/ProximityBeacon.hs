-- |
-- Module      : Network.Google.ProximityBeacon
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API provides services to register, manage, index, and search beacons.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Google Proximity Beacon API Reference>
module Network.Google.ProximityBeacon
    (
    -- * API Definition
      ProximityBeacon



    -- * Types

    -- ** AdvertisedId
    , AdvertisedId
    , advertisedId
    , aiId
    , aiType

    -- ** AttachmentInfo
    , AttachmentInfo
    , attachmentInfo
    , aiData
    , aiNamespacedType

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

    -- ** BeaconAttachment
    , BeaconAttachment
    , beaconAttachment
    , baData
    , baAttachmentName
    , baNamespacedType

    -- ** BeaconInfo
    , BeaconInfo
    , beaconInfo
    , biAttachments
    , biBeaconName
    , biDescription
    , biAdvertisedId

    -- ** BeaconProperties
    , BeaconProperties
    , beaconProperties

    -- ** Date
    , Date
    , date
    , dDay
    , dYear
    , dMonth

    -- ** DeleteAttachmentsResponse
    , DeleteAttachmentsResponse
    , deleteAttachmentsResponse
    , darNumDeleted

    -- ** Diagnostics
    , Diagnostics
    , diagnostics
    , dAlerts
    , dBeaconName
    , dEstimatedLowBatteryDate

    -- ** Empty
    , Empty
    , empty

    -- ** GetInfoForObservedBeaconsRequest
    , GetInfoForObservedBeaconsRequest
    , getInfoForObservedBeaconsRequest
    , gifobrObservations
    , gifobrNamespacedTypes

    -- ** GetInfoForObservedBeaconsResponse
    , GetInfoForObservedBeaconsResponse
    , getInfoForObservedBeaconsResponse
    , gifobrBeacons

    -- ** IndoorLevel
    , IndoorLevel
    , indoorLevel
    , ilName

    -- ** LatLng
    , LatLng
    , latLng
    , llLatitude
    , llLongitude

    -- ** ListBeaconAttachmentsResponse
    , ListBeaconAttachmentsResponse
    , listBeaconAttachmentsResponse
    , lbarAttachments

    -- ** ListBeaconsResponse
    , ListBeaconsResponse
    , listBeaconsResponse
    , lbrNextPageToken
    , lbrBeacons
    , lbrTotalCount

    -- ** ListDiagnosticsResponse
    , ListDiagnosticsResponse
    , listDiagnosticsResponse
    , ldrNextPageToken
    , ldrDiagnostics

    -- ** ListNamespacesResponse
    , ListNamespacesResponse
    , listNamespacesResponse
    , lnrNamespaces

    -- ** Namespace
    , Namespace
    , namespace
    , nServingVisibility
    , nNamespaceName

    -- ** Observation
    , Observation
    , observation
    , oTelemetry
    , oTimestampMs
    , oAdvertisedId
    ) where

import           Network.Google.ProximityBeacon.Types

{- $resources
TODO
-}

type ProximityBeacon = ()

proximityBeacon :: Proxy ProximityBeacon
proximityBeacon = Proxy




