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

    -- * Diagnostics
    , Diagnostics
    , diagnostics
    , dAlerts
    , dBeaconName
    , dEstimatedLowBatteryDate

    -- * IndoorLevel
    , IndoorLevel
    , indoorLevel
    , ilName

    -- * ListBeaconAttachmentsResponse
    , ListBeaconAttachmentsResponse
    , listBeaconAttachmentsResponse
    , lbarAttachments

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

    -- * GetInfoForObservedBeaconsResponse
    , GetInfoForObservedBeaconsResponse
    , getInfoForObservedBeaconsResponse
    , gifobrBeacons

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

    -- * BeaconInfo
    , BeaconInfo
    , beaconInfo
    , biAttachments
    , biBeaconName
    , biDescription
    , biAdvertisedId

    -- * Observation
    , Observation
    , observation
    , oTelemetry
    , oTimestampMs
    , oAdvertisedId

    -- * Empty
    , Empty
    , empty

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

    -- * ListBeaconsResponse
    , ListBeaconsResponse
    , listBeaconsResponse
    , lbrNextPageToken
    , lbrBeacons
    , lbrTotalCount

    -- * AdvertisedId
    , AdvertisedId
    , advertisedId
    , aiId
    , aiType

    -- * BeaconProperties
    , BeaconProperties
    , beaconProperties

    -- * ListNamespacesResponse
    , ListNamespacesResponse
    , listNamespacesResponse
    , lnrNamespaces
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
