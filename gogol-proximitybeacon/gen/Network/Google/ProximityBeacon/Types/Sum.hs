{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ProximityBeacon.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ProximityBeacon.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | Expected location stability. This is set when the beacon is registered
-- or updated, not automatically detected in any way. Optional.
data BeaconExpectedStability
    = StabilityUnspecified
      -- ^ @STABILITY_UNSPECIFIED@
      -- Do not use this value.
    | Stable
      -- ^ @STABLE@
      -- Not expected to move, for example a store\'s front door.
    | Portable
      -- ^ @PORTABLE@
      -- Usually stable but may move rarely, usually within a single place, for
      -- example a store display.
    | Mobile
      -- ^ @MOBILE@
      -- Moves frequently, for example a personal item or food truck.
    | Roving
      -- ^ @ROVING@
      -- Moves continuously in service, for example a bus or train.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BeaconExpectedStability

instance FromHttpApiData BeaconExpectedStability where
    parseQueryParam = \case
        "STABILITY_UNSPECIFIED" -> Right StabilityUnspecified
        "STABLE" -> Right Stable
        "PORTABLE" -> Right Portable
        "MOBILE" -> Right Mobile
        "ROVING" -> Right Roving
        x -> Left ("Unable to parse BeaconExpectedStability from: " <> x)

instance ToHttpApiData BeaconExpectedStability where
    toQueryParam = \case
        StabilityUnspecified -> "STABILITY_UNSPECIFIED"
        Stable -> "STABLE"
        Portable -> "PORTABLE"
        Mobile -> "MOBILE"
        Roving -> "ROVING"

instance FromJSON BeaconExpectedStability where
    parseJSON = parseJSONText "BeaconExpectedStability"

instance ToJSON BeaconExpectedStability where
    toJSON = toJSONText

-- | Specifies what clients may receive attachments under this namespace via
-- \`beaconinfo.getforobserved\`.
data NamespaceServingVisibility
    = VisibilityUnspecified
      -- ^ @VISIBILITY_UNSPECIFIED@
      -- Do not use this value.
    | UnListed
      -- ^ @UNLISTED@
      -- Served only to the project that owns the namespace.
    | Public
      -- ^ @PUBLIC@
      -- Any project can subscribe to attachments under the namespace.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NamespaceServingVisibility

instance FromHttpApiData NamespaceServingVisibility where
    parseQueryParam = \case
        "VISIBILITY_UNSPECIFIED" -> Right VisibilityUnspecified
        "UNLISTED" -> Right UnListed
        "PUBLIC" -> Right Public
        x -> Left ("Unable to parse NamespaceServingVisibility from: " <> x)

instance ToHttpApiData NamespaceServingVisibility where
    toQueryParam = \case
        VisibilityUnspecified -> "VISIBILITY_UNSPECIFIED"
        UnListed -> "UNLISTED"
        Public -> "PUBLIC"

instance FromJSON NamespaceServingVisibility where
    parseJSON = parseJSONText "NamespaceServingVisibility"

instance ToJSON NamespaceServingVisibility where
    toJSON = toJSONText

-- | Specifies the identifier type. Required.
data AdvertisedIdType
    = TypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- Do not use this value.
    | Eddystone
      -- ^ @EDDYSTONE@
      -- Eddystone, an open beacon format that supports Android and iOS devices
      -- https:\/\/github.com\/google\/eddystone\/wiki\/Beacon-Specification
    | Ibeacon
      -- ^ @IBEACON@
      -- Apple iBeacon compatible beacon
    | Altbeacon
      -- ^ @ALTBEACON@
      -- See http:\/\/altbeacon.org and\/or
      -- https:\/\/github.com\/AltBeacon\/spec.
    | EddystoneEid
      -- ^ @EDDYSTONE_EID@
      -- Eddystone Ephemeral ID
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AdvertisedIdType

instance FromHttpApiData AdvertisedIdType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right TypeUnspecified
        "EDDYSTONE" -> Right Eddystone
        "IBEACON" -> Right Ibeacon
        "ALTBEACON" -> Right Altbeacon
        "EDDYSTONE_EID" -> Right EddystoneEid
        x -> Left ("Unable to parse AdvertisedIdType from: " <> x)

instance ToHttpApiData AdvertisedIdType where
    toQueryParam = \case
        TypeUnspecified -> "TYPE_UNSPECIFIED"
        Eddystone -> "EDDYSTONE"
        Ibeacon -> "IBEACON"
        Altbeacon -> "ALTBEACON"
        EddystoneEid -> "EDDYSTONE_EID"

instance FromJSON AdvertisedIdType where
    parseJSON = parseJSONText "AdvertisedIdType"

instance ToJSON AdvertisedIdType where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | Current status of the beacon. Required.
data BeaconStatus
    = StatusUnspecified
      -- ^ @STATUS_UNSPECIFIED@
      -- Do not use this value.
    | Active
      -- ^ @ACTIVE@
      -- The \"normal\" in-use state of a beacon.
    | Decommissioned
      -- ^ @DECOMMISSIONED@
      -- Beacon should no longer be used for any purpose. This is irreversible.
    | Inactive
      -- ^ @INACTIVE@
      -- The beacon should not be visible to mobile devices. This is reversible.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BeaconStatus

instance FromHttpApiData BeaconStatus where
    parseQueryParam = \case
        "STATUS_UNSPECIFIED" -> Right StatusUnspecified
        "ACTIVE" -> Right Active
        "DECOMMISSIONED" -> Right Decommissioned
        "INACTIVE" -> Right Inactive
        x -> Left ("Unable to parse BeaconStatus from: " <> x)

instance ToHttpApiData BeaconStatus where
    toQueryParam = \case
        StatusUnspecified -> "STATUS_UNSPECIFIED"
        Active -> "ACTIVE"
        Decommissioned -> "DECOMMISSIONED"
        Inactive -> "INACTIVE"

instance FromJSON BeaconStatus where
    parseJSON = parseJSONText "BeaconStatus"

instance ToJSON BeaconStatus where
    toJSON = toJSONText
