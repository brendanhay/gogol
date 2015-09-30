{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ProximityBeacon.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ProximityBeacon.Types
    (
    -- * Service URL
      proximityBeaconURL

    -- * LatLng
    , LatLng
    , latLng
    , llLatitude
    , llLongitude

    -- * AttachmentInfo
    , AttachmentInfo
    , attachmentInfo
    , aiData
    , aiNamespacedType

    -- * Empty
    , Empty
    , empty

    -- * BeaconProperties
    , BeaconProperties
    , beaconProperties

    -- * DeleteAttachmentsResponse
    , DeleteAttachmentsResponse
    , deleteAttachmentsResponse
    , darNumDeleted

    -- * Namespace
    , Namespace
    , namespace
    , nServingVisibility
    , nNamespaceName

    -- * GetInfoForObservedBeaconsRequest
    , GetInfoForObservedBeaconsRequest
    , getInfoForObservedBeaconsRequest
    , gifobrObservations
    , gifobrNamespacedTypes

    -- * ListNamespacesResponse
    , ListNamespacesResponse
    , listNamespacesResponse
    , lnrNamespaces

    -- * Diagnostics
    , Diagnostics
    , diagnostics
    , dAlerts
    , dBeaconName
    , dEstimatedLowBatteryDate

    -- * Date
    , Date
    , date
    , dDay
    , dYear
    , dMonth

    -- * Beacon
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

    -- * ListBeaconAttachmentsResponse
    , ListBeaconAttachmentsResponse
    , listBeaconAttachmentsResponse
    , lbarAttachments

    -- * IndoorLevel
    , IndoorLevel
    , indoorLevel
    , ilName

    -- * Observation
    , Observation
    , observation
    , oTelemetry
    , oTimestampMs
    , oAdvertisedId

    -- * BeaconInfo
    , BeaconInfo
    , beaconInfo
    , biAttachments
    , biBeaconName
    , biDescription
    , biAdvertisedId

    -- * BeaconAttachment
    , BeaconAttachment
    , beaconAttachment
    , baData
    , baAttachmentName
    , baNamespacedType

    -- * ListDiagnosticsResponse
    , ListDiagnosticsResponse
    , listDiagnosticsResponse
    , ldrNextPageToken
    , ldrDiagnostics

    -- * AdvertisedId
    , AdvertisedId
    , advertisedId
    , aiId
    , aiType

    -- * ListBeaconsResponse
    , ListBeaconsResponse
    , listBeaconsResponse
    , lbrNextPageToken
    , lbrBeacons
    , lbrTotalCount

    -- * GetInfoForObservedBeaconsResponse
    , GetInfoForObservedBeaconsResponse
    , getInfoForObservedBeaconsResponse
    , gifobrBeacons
    ) where

import           Network.Google.Prelude
import           Network.Google.ProximityBeacon.Types.Product
import           Network.Google.ProximityBeacon.Types.Sum

-- | URL referring to version 'v1beta1' of the Google Proximity Beacon API.
proximityBeaconURL :: BaseUrl
proximityBeaconURL
  = BaseUrl Https
      "https://proximitybeacon.googleapis.com/"
      443
