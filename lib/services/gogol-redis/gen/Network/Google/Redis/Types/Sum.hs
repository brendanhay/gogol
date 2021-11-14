{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Redis.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Redis.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | Optional. Available data protection modes that the user can choose. If
-- it\'s unspecified, data protection mode will be LIMITED_DATA_LOSS by
-- default.
data FailoverInstanceRequestDataProtectionMode
    = DataProtectionModeUnspecified
      -- ^ @DATA_PROTECTION_MODE_UNSPECIFIED@
      -- Defaults to LIMITED_DATA_LOSS if a data protection mode is not
      -- specified.
    | LimitedDataLoss
      -- ^ @LIMITED_DATA_LOSS@
      -- Instance failover will be protected with data loss control. More
      -- specifically, the failover will only be performed if the current
      -- replication offset diff between primary and replica is under a certain
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

-- | Optional. The TLS mode of the Redis instance. If not provided, TLS is
-- disabled for the instance.
data InstanceTransitEncryptionMode
    = TransitEncryptionModeUnspecified
      -- ^ @TRANSIT_ENCRYPTION_MODE_UNSPECIFIED@
      -- Not set.
    | ServerAuthentication
      -- ^ @SERVER_AUTHENTICATION@
      -- Client to Server traffic encryption enabled with server authentication.
    | Disabled
      -- ^ @DISABLED@
      -- TLS is disabled for the instance.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InstanceTransitEncryptionMode

instance FromHttpApiData InstanceTransitEncryptionMode where
    parseQueryParam = \case
        "TRANSIT_ENCRYPTION_MODE_UNSPECIFIED" -> Right TransitEncryptionModeUnspecified
        "SERVER_AUTHENTICATION" -> Right ServerAuthentication
        "DISABLED" -> Right Disabled
        x -> Left ("Unable to parse InstanceTransitEncryptionMode from: " <> x)

instance ToHttpApiData InstanceTransitEncryptionMode where
    toQueryParam = \case
        TransitEncryptionModeUnspecified -> "TRANSIT_ENCRYPTION_MODE_UNSPECIFIED"
        ServerAuthentication -> "SERVER_AUTHENTICATION"
        Disabled -> "DISABLED"

instance FromJSON InstanceTransitEncryptionMode where
    parseJSON = parseJSONText "InstanceTransitEncryptionMode"

instance ToJSON InstanceTransitEncryptionMode where
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

-- | Optional. The network connect mode of the Redis instance. If not
-- provided, the connect mode defaults to DIRECT_PEERING.
data InstanceConnectMode
    = ConnectModeUnspecified
      -- ^ @CONNECT_MODE_UNSPECIFIED@
      -- Not set.
    | DirectPeering
      -- ^ @DIRECT_PEERING@
      -- Connect via direct peering to the Memorystore for Redis hosted service.
    | PrivateServiceAccess
      -- ^ @PRIVATE_SERVICE_ACCESS@
      -- Connect your Memorystore for Redis instance using Private Service
      -- Access. Private services access provides an IP address range for
      -- multiple Google Cloud services, including Memorystore.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InstanceConnectMode

instance FromHttpApiData InstanceConnectMode where
    parseQueryParam = \case
        "CONNECT_MODE_UNSPECIFIED" -> Right ConnectModeUnspecified
        "DIRECT_PEERING" -> Right DirectPeering
        "PRIVATE_SERVICE_ACCESS" -> Right PrivateServiceAccess
        x -> Left ("Unable to parse InstanceConnectMode from: " <> x)

instance ToHttpApiData InstanceConnectMode where
    toQueryParam = \case
        ConnectModeUnspecified -> "CONNECT_MODE_UNSPECIFIED"
        DirectPeering -> "DIRECT_PEERING"
        PrivateServiceAccess -> "PRIVATE_SERVICE_ACCESS"

instance FromJSON InstanceConnectMode where
    parseJSON = parseJSONText "InstanceConnectMode"

instance ToJSON InstanceConnectMode where
    toJSON = toJSONText

-- | Required. If reschedule type is SPECIFIC_TIME, must set up schedule_time
-- as well.
data RescheduleMaintenanceRequestRescheduleType
    = RescheduleTypeUnspecified
      -- ^ @RESCHEDULE_TYPE_UNSPECIFIED@
      -- Not set.
    | Immediate
      -- ^ @IMMEDIATE@
      -- If the user wants to schedule the maintenance to happen now.
    | NextAvailableWindow
      -- ^ @NEXT_AVAILABLE_WINDOW@
      -- If the user wants to use the existing maintenance policy to find the
      -- next available window.
    | SpecificTime
      -- ^ @SPECIFIC_TIME@
      -- If the user wants to reschedule the maintenance to a specific time.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RescheduleMaintenanceRequestRescheduleType

instance FromHttpApiData RescheduleMaintenanceRequestRescheduleType where
    parseQueryParam = \case
        "RESCHEDULE_TYPE_UNSPECIFIED" -> Right RescheduleTypeUnspecified
        "IMMEDIATE" -> Right Immediate
        "NEXT_AVAILABLE_WINDOW" -> Right NextAvailableWindow
        "SPECIFIC_TIME" -> Right SpecificTime
        x -> Left ("Unable to parse RescheduleMaintenanceRequestRescheduleType from: " <> x)

instance ToHttpApiData RescheduleMaintenanceRequestRescheduleType where
    toQueryParam = \case
        RescheduleTypeUnspecified -> "RESCHEDULE_TYPE_UNSPECIFIED"
        Immediate -> "IMMEDIATE"
        NextAvailableWindow -> "NEXT_AVAILABLE_WINDOW"
        SpecificTime -> "SPECIFIC_TIME"

instance FromJSON RescheduleMaintenanceRequestRescheduleType where
    parseJSON = parseJSONText "RescheduleMaintenanceRequestRescheduleType"

instance ToJSON RescheduleMaintenanceRequestRescheduleType where
    toJSON = toJSONText

-- | Required. The day of week that maintenance updates occur.
data WeeklyMaintenanceWindowDay
    = DayOfWeekUnspecified
      -- ^ @DAY_OF_WEEK_UNSPECIFIED@
      -- The day of the week is unspecified.
    | Monday
      -- ^ @MONDAY@
      -- Monday
    | Tuesday
      -- ^ @TUESDAY@
      -- Tuesday
    | Wednesday
      -- ^ @WEDNESDAY@
      -- Wednesday
    | Thursday
      -- ^ @THURSDAY@
      -- Thursday
    | Friday
      -- ^ @FRIDAY@
      -- Friday
    | Saturday
      -- ^ @SATURDAY@
      -- Saturday
    | Sunday
      -- ^ @SUNDAY@
      -- Sunday
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable WeeklyMaintenanceWindowDay

instance FromHttpApiData WeeklyMaintenanceWindowDay where
    parseQueryParam = \case
        "DAY_OF_WEEK_UNSPECIFIED" -> Right DayOfWeekUnspecified
        "MONDAY" -> Right Monday
        "TUESDAY" -> Right Tuesday
        "WEDNESDAY" -> Right Wednesday
        "THURSDAY" -> Right Thursday
        "FRIDAY" -> Right Friday
        "SATURDAY" -> Right Saturday
        "SUNDAY" -> Right Sunday
        x -> Left ("Unable to parse WeeklyMaintenanceWindowDay from: " <> x)

instance ToHttpApiData WeeklyMaintenanceWindowDay where
    toQueryParam = \case
        DayOfWeekUnspecified -> "DAY_OF_WEEK_UNSPECIFIED"
        Monday -> "MONDAY"
        Tuesday -> "TUESDAY"
        Wednesday -> "WEDNESDAY"
        Thursday -> "THURSDAY"
        Friday -> "FRIDAY"
        Saturday -> "SATURDAY"
        Sunday -> "SUNDAY"

instance FromJSON WeeklyMaintenanceWindowDay where
    parseJSON = parseJSONText "WeeklyMaintenanceWindowDay"

instance ToJSON WeeklyMaintenanceWindowDay where
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
    | Importing
      -- ^ @IMPORTING@
      -- Redis instance is importing data (availability may be affected).
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
        "IMPORTING" -> Right Importing
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
        Importing -> "IMPORTING"
        FailingOver -> "FAILING_OVER"

instance FromJSON InstanceState where
    parseJSON = parseJSONText "InstanceState"

instance ToJSON InstanceState where
    toJSON = toJSONText
