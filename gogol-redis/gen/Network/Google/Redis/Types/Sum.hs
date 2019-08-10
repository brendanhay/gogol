{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Redis.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Redis.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | Optional. Available data protection modes that the user can choose. If
-- it\'s unspecified, data protection mode will be LIMITED_DATA_LOSS by
-- default.
data FailoverInstanceRequestDataProtectionMode
    = DataProtectionModeUnspecified
      -- ^ @DATA_PROTECTION_MODE_UNSPECIFIED@
    | LimitedDataLoss
      -- ^ @LIMITED_DATA_LOSS@
      -- Instance failover will be protected with data loss control. More
      -- specifically, the failover will only be performed if the current
      -- replication offset diff between master and replica is under a certain
      -- threshold.
    | ForceDataLoss
      -- ^ @FORCE_DATA_LOSS@
      -- Instance failover will be performed without data loss control.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FailoverInstanceRequestDataProtectionMode

instance FromHttpApiData FailoverInstanceRequestDataProtectionMode where
    parseQueryParam = \case
        "DATA_PROTECTION_MODE_UNSPECIFIED" -> Right DataProtectionModeUnspecified
        "LIMITED_DATA_LOSS" -> Right LimitedDataLoss
        "FORCE_DATA_LOSS" -> Right ForceDataLoss
        x -> Left ("Unable to parse FailoverInstanceRequestDataProtectionMode from: " <> x)

instance ToHttpApiData FailoverInstanceRequestDataProtectionMode where
    toQueryParam = \case
        DataProtectionModeUnspecified -> "DATA_PROTECTION_MODE_UNSPECIFIED"
        LimitedDataLoss -> "LIMITED_DATA_LOSS"
        ForceDataLoss -> "FORCE_DATA_LOSS"

instance FromJSON FailoverInstanceRequestDataProtectionMode where
    parseJSON = parseJSONText "FailoverInstanceRequestDataProtectionMode"

instance ToJSON FailoverInstanceRequestDataProtectionMode where
    toJSON = toJSONText

-- | Required. The service tier of the instance.
data InstanceTier
    = TierUnspecified
      -- ^ @TIER_UNSPECIFIED@
      -- Not set.
    | Basic
      -- ^ @BASIC@
      -- BASIC tier: standalone instance
    | StandardHa
      -- ^ @STANDARD_HA@
      -- STANDARD_HA tier: highly available primary\/replica instances
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InstanceTier

instance FromHttpApiData InstanceTier where
    parseQueryParam = \case
        "TIER_UNSPECIFIED" -> Right TierUnspecified
        "BASIC" -> Right Basic
        "STANDARD_HA" -> Right StandardHa
        x -> Left ("Unable to parse InstanceTier from: " <> x)

instance ToHttpApiData InstanceTier where
    toQueryParam = \case
        TierUnspecified -> "TIER_UNSPECIFIED"
        Basic -> "BASIC"
        StandardHa -> "STANDARD_HA"

instance FromJSON InstanceTier where
    parseJSON = parseJSONText "InstanceTier"

instance ToJSON InstanceTier where
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

-- | Output only. The current state of this instance.
data InstanceState
    = StateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- Not set.
    | Creating
      -- ^ @CREATING@
      -- Redis instance is being created.
    | Ready
      -- ^ @READY@
      -- Redis instance has been created and is fully usable.
    | Updating
      -- ^ @UPDATING@
      -- Redis instance configuration is being updated. Certain kinds of updates
      -- may cause the instance to become unusable while the update is in
      -- progress.
    | Deleting
      -- ^ @DELETING@
      -- Redis instance is being deleted.
    | Repairing
      -- ^ @REPAIRING@
      -- Redis instance is being repaired and may be unusable.
    | Maintenance
      -- ^ @MAINTENANCE@
      -- Maintenance is being performed on this Redis instance.
    | FailingOver
      -- ^ @FAILING_OVER@
      -- Redis instance is failing over (availability may be affected).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InstanceState

instance FromHttpApiData InstanceState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right StateUnspecified
        "CREATING" -> Right Creating
        "READY" -> Right Ready
        "UPDATING" -> Right Updating
        "DELETING" -> Right Deleting
        "REPAIRING" -> Right Repairing
        "MAINTENANCE" -> Right Maintenance
        "FAILING_OVER" -> Right FailingOver
        x -> Left ("Unable to parse InstanceState from: " <> x)

instance ToHttpApiData InstanceState where
    toQueryParam = \case
        StateUnspecified -> "STATE_UNSPECIFIED"
        Creating -> "CREATING"
        Ready -> "READY"
        Updating -> "UPDATING"
        Deleting -> "DELETING"
        Repairing -> "REPAIRING"
        Maintenance -> "MAINTENANCE"
        FailingOver -> "FAILING_OVER"

instance FromJSON InstanceState where
    parseJSON = parseJSONText "InstanceState"

instance ToJSON InstanceState where
    toJSON = toJSONText
