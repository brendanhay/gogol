{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.ProximityBeacon.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.ProximityBeacon.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AdvertisedId_Type
    AdvertisedId_Type
      ( AdvertisedId_Type_TYPEUNSPECIFIED,
        AdvertisedId_Type_Eddystone,
        AdvertisedId_Type_Ibeacon,
        AdvertisedId_Type_Altbeacon,
        AdvertisedId_Type_EDDYSTONEEID,
        ..
      ),

    -- * Beacon_ExpectedStability
    Beacon_ExpectedStability
      ( Beacon_ExpectedStability_STABILITYUNSPECIFIED,
        Beacon_ExpectedStability_Stable,
        Beacon_ExpectedStability_Portable,
        Beacon_ExpectedStability_Mobile,
        Beacon_ExpectedStability_Roving,
        ..
      ),

    -- * Beacon_Status
    Beacon_Status
      ( Beacon_Status_STATUSUNSPECIFIED,
        Beacon_Status_Active,
        Beacon_Status_Decommissioned,
        Beacon_Status_Inactive,
        ..
      ),

    -- * Namespace_ServingVisibility
    Namespace_ServingVisibility
      ( Namespace_ServingVisibility_VISIBILITYUNSPECIFIED,
        Namespace_ServingVisibility_Unlisted,
        Namespace_ServingVisibility_Public,
        ..
      ),
  )
where

import qualified Network.Google.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

-- | Specifies the identifier type. Required.
newtype AdvertisedId_Type = AdvertisedId_Type {fromAdvertisedId_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Do not use this value.
pattern AdvertisedId_Type_TYPEUNSPECIFIED :: AdvertisedId_Type
pattern AdvertisedId_Type_TYPEUNSPECIFIED = AdvertisedId_Type "TYPE_UNSPECIFIED"

-- | Eddystone, an open beacon format that supports Android and iOS devices https:\/\/github.com\/google\/eddystone\/wiki\/Beacon-Specification
pattern AdvertisedId_Type_Eddystone :: AdvertisedId_Type
pattern AdvertisedId_Type_Eddystone = AdvertisedId_Type "EDDYSTONE"

-- | Apple iBeacon compatible beacon
pattern AdvertisedId_Type_Ibeacon :: AdvertisedId_Type
pattern AdvertisedId_Type_Ibeacon = AdvertisedId_Type "IBEACON"

-- | See http:\/\/altbeacon.org and\/or https:\/\/github.com\/AltBeacon\/spec.
pattern AdvertisedId_Type_Altbeacon :: AdvertisedId_Type
pattern AdvertisedId_Type_Altbeacon = AdvertisedId_Type "ALTBEACON"

-- | Eddystone Ephemeral ID
pattern AdvertisedId_Type_EDDYSTONEEID :: AdvertisedId_Type
pattern AdvertisedId_Type_EDDYSTONEEID = AdvertisedId_Type "EDDYSTONE_EID"

{-# COMPLETE
  AdvertisedId_Type_TYPEUNSPECIFIED,
  AdvertisedId_Type_Eddystone,
  AdvertisedId_Type_Ibeacon,
  AdvertisedId_Type_Altbeacon,
  AdvertisedId_Type_EDDYSTONEEID,
  AdvertisedId_Type
  #-}

-- | Expected location stability. This is set when the beacon is registered or updated, not automatically detected in any way. Optional.
newtype Beacon_ExpectedStability = Beacon_ExpectedStability {fromBeacon_ExpectedStability :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Do not use this value.
pattern Beacon_ExpectedStability_STABILITYUNSPECIFIED :: Beacon_ExpectedStability
pattern Beacon_ExpectedStability_STABILITYUNSPECIFIED = Beacon_ExpectedStability "STABILITY_UNSPECIFIED"

-- | Not expected to move, for example a store\'s front door.
pattern Beacon_ExpectedStability_Stable :: Beacon_ExpectedStability
pattern Beacon_ExpectedStability_Stable = Beacon_ExpectedStability "STABLE"

-- | Usually stable but may move rarely, usually within a single place, for example a store display.
pattern Beacon_ExpectedStability_Portable :: Beacon_ExpectedStability
pattern Beacon_ExpectedStability_Portable = Beacon_ExpectedStability "PORTABLE"

-- | Moves frequently, for example a personal item or food truck.
pattern Beacon_ExpectedStability_Mobile :: Beacon_ExpectedStability
pattern Beacon_ExpectedStability_Mobile = Beacon_ExpectedStability "MOBILE"

-- | Moves continuously in service, for example a bus or train.
pattern Beacon_ExpectedStability_Roving :: Beacon_ExpectedStability
pattern Beacon_ExpectedStability_Roving = Beacon_ExpectedStability "ROVING"

{-# COMPLETE
  Beacon_ExpectedStability_STABILITYUNSPECIFIED,
  Beacon_ExpectedStability_Stable,
  Beacon_ExpectedStability_Portable,
  Beacon_ExpectedStability_Mobile,
  Beacon_ExpectedStability_Roving,
  Beacon_ExpectedStability
  #-}

-- | Current status of the beacon. Required.
newtype Beacon_Status = Beacon_Status {fromBeacon_Status :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Do not use this value.
pattern Beacon_Status_STATUSUNSPECIFIED :: Beacon_Status
pattern Beacon_Status_STATUSUNSPECIFIED = Beacon_Status "STATUS_UNSPECIFIED"

-- | The \"normal\" in-use state of a beacon.
pattern Beacon_Status_Active :: Beacon_Status
pattern Beacon_Status_Active = Beacon_Status "ACTIVE"

-- | Beacon should no longer be used for any purpose. This is irreversible.
pattern Beacon_Status_Decommissioned :: Beacon_Status
pattern Beacon_Status_Decommissioned = Beacon_Status "DECOMMISSIONED"

-- | The beacon should not be visible to mobile devices. This is reversible.
pattern Beacon_Status_Inactive :: Beacon_Status
pattern Beacon_Status_Inactive = Beacon_Status "INACTIVE"

{-# COMPLETE
  Beacon_Status_STATUSUNSPECIFIED,
  Beacon_Status_Active,
  Beacon_Status_Decommissioned,
  Beacon_Status_Inactive,
  Beacon_Status
  #-}

-- | Specifies what clients may receive attachments under this namespace via @beaconinfo.getforobserved@.
newtype Namespace_ServingVisibility = Namespace_ServingVisibility {fromNamespace_ServingVisibility :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Do not use this value.
pattern Namespace_ServingVisibility_VISIBILITYUNSPECIFIED :: Namespace_ServingVisibility
pattern Namespace_ServingVisibility_VISIBILITYUNSPECIFIED = Namespace_ServingVisibility "VISIBILITY_UNSPECIFIED"

-- | Served only to the project that owns the namespace.
pattern Namespace_ServingVisibility_Unlisted :: Namespace_ServingVisibility
pattern Namespace_ServingVisibility_Unlisted = Namespace_ServingVisibility "UNLISTED"

-- | Any project can subscribe to attachments under the namespace.
pattern Namespace_ServingVisibility_Public :: Namespace_ServingVisibility
pattern Namespace_ServingVisibility_Public = Namespace_ServingVisibility "PUBLIC"

{-# COMPLETE
  Namespace_ServingVisibility_VISIBILITYUNSPECIFIED,
  Namespace_ServingVisibility_Unlisted,
  Namespace_ServingVisibility_Public,
  Namespace_ServingVisibility
  #-}
