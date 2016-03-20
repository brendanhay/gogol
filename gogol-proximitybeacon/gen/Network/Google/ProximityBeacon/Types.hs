{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ProximityBeacon.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ProximityBeacon.Types
    (
    -- * Service Configuration
      proximityBeaconService

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

    -- * BeaconProperties
    , BeaconProperties
    , beaconProperties
    , bpAddtional

    -- * Empty
    , Empty
    , empty

    -- * DeleteAttachmentsResponse
    , DeleteAttachmentsResponse
    , deleteAttachmentsResponse
    , darNumDeleted

    -- * GetInfoForObservedBeaconsRequest
    , GetInfoForObservedBeaconsRequest
    , getInfoForObservedBeaconsRequest
    , gifobrObservations
    , gifobrNamespacedTypes

    -- * Namespace
    , Namespace
    , namespace
    , nServingVisibility
    , nNamespaceName

    -- * ListNamespacesResponse
    , ListNamespacesResponse
    , listNamespacesResponse
    , lnrNamespaces

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

    -- * ListBeaconAttachmentsResponse
    , ListBeaconAttachmentsResponse
    , listBeaconAttachmentsResponse
    , lbarAttachments

    -- * IndoorLevel
    , IndoorLevel
    , indoorLevel
    , ilName

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

-- | Default request referring to version 'v1beta1' of the Google Proximity Beacon API. This contains the host and root path used as a starting point for constructing service requests.
proximityBeaconService :: Service
proximityBeaconService
  = defaultService
      (ServiceId "proximitybeacon:v1beta1")
      "proximitybeacon.googleapis.com"
