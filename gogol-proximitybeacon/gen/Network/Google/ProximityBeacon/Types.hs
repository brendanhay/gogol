{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
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

    -- * OAuth Scopes
    , userlocationBeaconRegistryScope

    -- * LatLng
    , LatLng
    , latLng
    , llLatitude
    , llLongitude

    -- * AttachmentInfo
    , AttachmentInfo
    , attachmentInfo
    , aiMaxDistanceMeters
    , aiData
    , aiNamespacedType

    -- * BeaconExpectedStability
    , BeaconExpectedStability (..)

    -- * NamespaceServingVisibility
    , NamespaceServingVisibility (..)

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

    -- * EphemeralIdRegistration
    , EphemeralIdRegistration
    , ephemeralIdRegistration
    , eirRotationPeriodExponent
    , eirInitialClockValue
    , eirBeaconIdentityKey
    , eirBeaconEcdhPublicKey
    , eirInitialEid
    , eirServiceEcdhPublicKey

    -- * AdvertisedIdType
    , AdvertisedIdType (..)

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

    -- * EphemeralIdRegistrationParams
    , EphemeralIdRegistrationParams
    , ephemeralIdRegistrationParams
    , eirpMinRotationPeriodExponent
    , eirpMaxRotationPeriodExponent
    , eirpServiceEcdhPublicKey

    -- * Xgafv
    , Xgafv (..)

    -- * BeaconInfo
    , BeaconInfo
    , beaconInfo
    , biAttachments
    , biBeaconName
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
    , baMaxDistanceMeters
    , baCreationTimeMs
    , baData
    , baAttachmentName
    , baNamespacedType

    -- * ListDiagnosticsResponse
    , ListDiagnosticsResponse
    , listDiagnosticsResponse
    , ldrNextPageToken
    , ldrDiagnostics

    -- * BeaconStatus
    , BeaconStatus (..)

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

import Network.Google.Prelude
import Network.Google.ProximityBeacon.Types.Product
import Network.Google.ProximityBeacon.Types.Sum

-- | Default request referring to version 'v1beta1' of the Proximity Beacon API. This contains the host and root path used as a starting point for constructing service requests.
proximityBeaconService :: ServiceConfig
proximityBeaconService
  = defaultService
      (ServiceId "proximitybeacon:v1beta1")
      "proximitybeacon.googleapis.com"

-- | View and modify your beacons
userlocationBeaconRegistryScope :: Proxy '["https://www.googleapis.com/auth/userlocation.beacon.registry"]
userlocationBeaconRegistryScope = Proxy
