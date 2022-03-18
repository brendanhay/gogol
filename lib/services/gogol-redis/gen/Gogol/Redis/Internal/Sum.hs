{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Redis.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.Redis.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * FailoverInstanceRequest_DataProtectionMode
    FailoverInstanceRequest_DataProtectionMode
      (
        FailoverInstanceRequest_DataProtectionMode_DATAPROTECTIONMODEUNSPECIFIED,
        FailoverInstanceRequest_DataProtectionMode_LIMITEDDATALOSS,
        FailoverInstanceRequest_DataProtectionMode_FORCEDATALOSS,
        ..
      ),

    -- * Instance_ConnectMode
    Instance_ConnectMode
      (
        Instance_ConnectMode_CONNECTMODEUNSPECIFIED,
        Instance_ConnectMode_DIRECTPEERING,
        Instance_ConnectMode_PRIVATESERVICEACCESS,
        ..
      ),

    -- * Instance_ReadReplicasMode
    Instance_ReadReplicasMode
      (
        Instance_ReadReplicasMode_READREPLICASMODEUNSPECIFIED,
        Instance_ReadReplicasMode_READREPLICASDISABLED,
        Instance_ReadReplicasMode_READREPLICASENABLED,
        ..
      ),

    -- * Instance_State
    Instance_State
      (
        Instance_State_STATEUNSPECIFIED,
        Instance_State_Creating,
        Instance_State_Ready,
        Instance_State_Updating,
        Instance_State_Deleting,
        Instance_State_Repairing,
        Instance_State_Maintenance,
        Instance_State_Importing,
        Instance_State_FAILINGOVER,
        ..
      ),

    -- * Instance_Tier
    Instance_Tier
      (
        Instance_Tier_TIERUNSPECIFIED,
        Instance_Tier_Basic,
        Instance_Tier_STANDARDHA,
        ..
      ),

    -- * Instance_TransitEncryptionMode
    Instance_TransitEncryptionMode
      (
        Instance_TransitEncryptionMode_TRANSITENCRYPTIONMODEUNSPECIFIED,
        Instance_TransitEncryptionMode_SERVERAUTHENTICATION,
        Instance_TransitEncryptionMode_Disabled,
        ..
      ),

    -- * PersistenceConfig_PersistenceMode
    PersistenceConfig_PersistenceMode
      (
        PersistenceConfig_PersistenceMode_PERSISTENCEMODEUNSPECIFIED,
        PersistenceConfig_PersistenceMode_Disabled,
        PersistenceConfig_PersistenceMode_Rdb,
        ..
      ),

    -- * PersistenceConfig_RdbSnapshotPeriod
    PersistenceConfig_RdbSnapshotPeriod
      (
        PersistenceConfig_RdbSnapshotPeriod_SNAPSHOTPERIODUNSPECIFIED,
        PersistenceConfig_RdbSnapshotPeriod_ONEHOUR,
        PersistenceConfig_RdbSnapshotPeriod_SIXHOURS,
        PersistenceConfig_RdbSnapshotPeriod_TWELVEHOURS,
        PersistenceConfig_RdbSnapshotPeriod_TWENTYFOURHOURS,
        ..
      ),

    -- * RescheduleMaintenanceRequest_RescheduleType
    RescheduleMaintenanceRequest_RescheduleType
      (
        RescheduleMaintenanceRequest_RescheduleType_RESCHEDULETYPEUNSPECIFIED,
        RescheduleMaintenanceRequest_RescheduleType_Immediate,
        RescheduleMaintenanceRequest_RescheduleType_NEXTAVAILABLEWINDOW,
        RescheduleMaintenanceRequest_RescheduleType_SPECIFICTIME,
        ..
      ),

    -- * WeeklyMaintenanceWindow_Day
    WeeklyMaintenanceWindow_Day
      (
        WeeklyMaintenanceWindow_Day_DAYOFWEEKUNSPECIFIED,
        WeeklyMaintenanceWindow_Day_Monday,
        WeeklyMaintenanceWindow_Day_Tuesday,
        WeeklyMaintenanceWindow_Day_Wednesday,
        WeeklyMaintenanceWindow_Day_Thursday,
        WeeklyMaintenanceWindow_Day_Friday,
        WeeklyMaintenanceWindow_Day_Saturday,
        WeeklyMaintenanceWindow_Day_Sunday,
        ..
      ),
  ) where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv { fromXgafv :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  Xgafv #-}

-- | Optional. Available data protection modes that the user can choose. If it\'s unspecified, data protection mode will be LIMITED/DATA/LOSS by default.
newtype FailoverInstanceRequest_DataProtectionMode = FailoverInstanceRequest_DataProtectionMode { fromFailoverInstanceRequest_DataProtectionMode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Defaults to LIMITED/DATA/LOSS if a data protection mode is not specified.
pattern FailoverInstanceRequest_DataProtectionMode_DATAPROTECTIONMODEUNSPECIFIED :: FailoverInstanceRequest_DataProtectionMode
pattern FailoverInstanceRequest_DataProtectionMode_DATAPROTECTIONMODEUNSPECIFIED = FailoverInstanceRequest_DataProtectionMode "DATA_PROTECTION_MODE_UNSPECIFIED"

-- | Instance failover will be protected with data loss control. More specifically, the failover will only be performed if the current replication offset diff between primary and replica is under a certain threshold.
pattern FailoverInstanceRequest_DataProtectionMode_LIMITEDDATALOSS :: FailoverInstanceRequest_DataProtectionMode
pattern FailoverInstanceRequest_DataProtectionMode_LIMITEDDATALOSS = FailoverInstanceRequest_DataProtectionMode "LIMITED_DATA_LOSS"

-- | Instance failover will be performed without data loss control.
pattern FailoverInstanceRequest_DataProtectionMode_FORCEDATALOSS :: FailoverInstanceRequest_DataProtectionMode
pattern FailoverInstanceRequest_DataProtectionMode_FORCEDATALOSS = FailoverInstanceRequest_DataProtectionMode "FORCE_DATA_LOSS"

{-# COMPLETE
  FailoverInstanceRequest_DataProtectionMode_DATAPROTECTIONMODEUNSPECIFIED,
  FailoverInstanceRequest_DataProtectionMode_LIMITEDDATALOSS,
  FailoverInstanceRequest_DataProtectionMode_FORCEDATALOSS,
  FailoverInstanceRequest_DataProtectionMode #-}

-- | Optional. The network connect mode of the Redis instance. If not provided, the connect mode defaults to DIRECT_PEERING.
newtype Instance_ConnectMode = Instance_ConnectMode { fromInstance_ConnectMode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not set.
pattern Instance_ConnectMode_CONNECTMODEUNSPECIFIED :: Instance_ConnectMode
pattern Instance_ConnectMode_CONNECTMODEUNSPECIFIED = Instance_ConnectMode "CONNECT_MODE_UNSPECIFIED"

-- | Connect via direct peering to the Memorystore for Redis hosted service.
pattern Instance_ConnectMode_DIRECTPEERING :: Instance_ConnectMode
pattern Instance_ConnectMode_DIRECTPEERING = Instance_ConnectMode "DIRECT_PEERING"

-- | Connect your Memorystore for Redis instance using Private Service Access. Private services access provides an IP address range for multiple Google Cloud services, including Memorystore.
pattern Instance_ConnectMode_PRIVATESERVICEACCESS :: Instance_ConnectMode
pattern Instance_ConnectMode_PRIVATESERVICEACCESS = Instance_ConnectMode "PRIVATE_SERVICE_ACCESS"

{-# COMPLETE
  Instance_ConnectMode_CONNECTMODEUNSPECIFIED,
  Instance_ConnectMode_DIRECTPEERING,
  Instance_ConnectMode_PRIVATESERVICEACCESS,
  Instance_ConnectMode #-}

-- | Optional. Read replicas mode for the instance. Defaults to READ/REPLICAS/DISABLED.
newtype Instance_ReadReplicasMode = Instance_ReadReplicasMode { fromInstance_ReadReplicasMode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | If not set, Memorystore Redis backend will default to READ/REPLICAS/DISABLED.
pattern Instance_ReadReplicasMode_READREPLICASMODEUNSPECIFIED :: Instance_ReadReplicasMode
pattern Instance_ReadReplicasMode_READREPLICASMODEUNSPECIFIED = Instance_ReadReplicasMode "READ_REPLICAS_MODE_UNSPECIFIED"

-- | If disabled, read endpoint will not be provided and the instance cannot scale up or down the number of replicas.
pattern Instance_ReadReplicasMode_READREPLICASDISABLED :: Instance_ReadReplicasMode
pattern Instance_ReadReplicasMode_READREPLICASDISABLED = Instance_ReadReplicasMode "READ_REPLICAS_DISABLED"

-- | If enabled, read endpoint will be provided and the instance can scale up and down the number of replicas. Not valid for basic tier.
pattern Instance_ReadReplicasMode_READREPLICASENABLED :: Instance_ReadReplicasMode
pattern Instance_ReadReplicasMode_READREPLICASENABLED = Instance_ReadReplicasMode "READ_REPLICAS_ENABLED"

{-# COMPLETE
  Instance_ReadReplicasMode_READREPLICASMODEUNSPECIFIED,
  Instance_ReadReplicasMode_READREPLICASDISABLED,
  Instance_ReadReplicasMode_READREPLICASENABLED,
  Instance_ReadReplicasMode #-}

-- | Output only. The current state of this instance.
newtype Instance_State = Instance_State { fromInstance_State :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not set.
pattern Instance_State_STATEUNSPECIFIED :: Instance_State
pattern Instance_State_STATEUNSPECIFIED = Instance_State "STATE_UNSPECIFIED"

-- | Redis instance is being created.
pattern Instance_State_Creating :: Instance_State
pattern Instance_State_Creating = Instance_State "CREATING"

-- | Redis instance has been created and is fully usable.
pattern Instance_State_Ready :: Instance_State
pattern Instance_State_Ready = Instance_State "READY"

-- | Redis instance configuration is being updated. Certain kinds of updates may cause the instance to become unusable while the update is in progress.
pattern Instance_State_Updating :: Instance_State
pattern Instance_State_Updating = Instance_State "UPDATING"

-- | Redis instance is being deleted.
pattern Instance_State_Deleting :: Instance_State
pattern Instance_State_Deleting = Instance_State "DELETING"

-- | Redis instance is being repaired and may be unusable.
pattern Instance_State_Repairing :: Instance_State
pattern Instance_State_Repairing = Instance_State "REPAIRING"

-- | Maintenance is being performed on this Redis instance.
pattern Instance_State_Maintenance :: Instance_State
pattern Instance_State_Maintenance = Instance_State "MAINTENANCE"

-- | Redis instance is importing data (availability may be affected).
pattern Instance_State_Importing :: Instance_State
pattern Instance_State_Importing = Instance_State "IMPORTING"

-- | Redis instance is failing over (availability may be affected).
pattern Instance_State_FAILINGOVER :: Instance_State
pattern Instance_State_FAILINGOVER = Instance_State "FAILING_OVER"

{-# COMPLETE
  Instance_State_STATEUNSPECIFIED,
  Instance_State_Creating,
  Instance_State_Ready,
  Instance_State_Updating,
  Instance_State_Deleting,
  Instance_State_Repairing,
  Instance_State_Maintenance,
  Instance_State_Importing,
  Instance_State_FAILINGOVER,
  Instance_State #-}

-- | Required. The service tier of the instance.
newtype Instance_Tier = Instance_Tier { fromInstance_Tier :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not set.
pattern Instance_Tier_TIERUNSPECIFIED :: Instance_Tier
pattern Instance_Tier_TIERUNSPECIFIED = Instance_Tier "TIER_UNSPECIFIED"

-- | BASIC tier: standalone instance
pattern Instance_Tier_Basic :: Instance_Tier
pattern Instance_Tier_Basic = Instance_Tier "BASIC"

-- | STANDARD_HA tier: highly available primary\/replica instances
pattern Instance_Tier_STANDARDHA :: Instance_Tier
pattern Instance_Tier_STANDARDHA = Instance_Tier "STANDARD_HA"

{-# COMPLETE
  Instance_Tier_TIERUNSPECIFIED,
  Instance_Tier_Basic,
  Instance_Tier_STANDARDHA,
  Instance_Tier #-}

-- | Optional. The TLS mode of the Redis instance. If not provided, TLS is disabled for the instance.
newtype Instance_TransitEncryptionMode = Instance_TransitEncryptionMode { fromInstance_TransitEncryptionMode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not set.
pattern Instance_TransitEncryptionMode_TRANSITENCRYPTIONMODEUNSPECIFIED :: Instance_TransitEncryptionMode
pattern Instance_TransitEncryptionMode_TRANSITENCRYPTIONMODEUNSPECIFIED = Instance_TransitEncryptionMode "TRANSIT_ENCRYPTION_MODE_UNSPECIFIED"

-- | Client to Server traffic encryption enabled with server authentication.
pattern Instance_TransitEncryptionMode_SERVERAUTHENTICATION :: Instance_TransitEncryptionMode
pattern Instance_TransitEncryptionMode_SERVERAUTHENTICATION = Instance_TransitEncryptionMode "SERVER_AUTHENTICATION"

-- | TLS is disabled for the instance.
pattern Instance_TransitEncryptionMode_Disabled :: Instance_TransitEncryptionMode
pattern Instance_TransitEncryptionMode_Disabled = Instance_TransitEncryptionMode "DISABLED"

{-# COMPLETE
  Instance_TransitEncryptionMode_TRANSITENCRYPTIONMODEUNSPECIFIED,
  Instance_TransitEncryptionMode_SERVERAUTHENTICATION,
  Instance_TransitEncryptionMode_Disabled,
  Instance_TransitEncryptionMode #-}

-- | Optional. Controls whether Persistence features are enabled. If not provided, the existing value will be used.
newtype PersistenceConfig_PersistenceMode = PersistenceConfig_PersistenceMode { fromPersistenceConfig_PersistenceMode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not set.
pattern PersistenceConfig_PersistenceMode_PERSISTENCEMODEUNSPECIFIED :: PersistenceConfig_PersistenceMode
pattern PersistenceConfig_PersistenceMode_PERSISTENCEMODEUNSPECIFIED = PersistenceConfig_PersistenceMode "PERSISTENCE_MODE_UNSPECIFIED"

-- | Persistence is disabled for the instance, and any existing snapshots are deleted.
pattern PersistenceConfig_PersistenceMode_Disabled :: PersistenceConfig_PersistenceMode
pattern PersistenceConfig_PersistenceMode_Disabled = PersistenceConfig_PersistenceMode "DISABLED"

-- | RDB based Persistence is enabled.
pattern PersistenceConfig_PersistenceMode_Rdb :: PersistenceConfig_PersistenceMode
pattern PersistenceConfig_PersistenceMode_Rdb = PersistenceConfig_PersistenceMode "RDB"

{-# COMPLETE
  PersistenceConfig_PersistenceMode_PERSISTENCEMODEUNSPECIFIED,
  PersistenceConfig_PersistenceMode_Disabled,
  PersistenceConfig_PersistenceMode_Rdb,
  PersistenceConfig_PersistenceMode #-}

-- | Optional. Period between RDB snapshots. Snapshots will be attempted every period starting from the provided snapshot start time. For example, a start time of 01\/01\/2033 06:45 and SIX/HOURS snapshot period will do nothing until 01\/01\/2033, and then trigger snapshots every day at 06:45, 12:45, 18:45, and 00:45 the next day, and so on. If not provided, TWENTY/FOUR_HOURS will be used as default.
newtype PersistenceConfig_RdbSnapshotPeriod = PersistenceConfig_RdbSnapshotPeriod { fromPersistenceConfig_RdbSnapshotPeriod :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not set.
pattern PersistenceConfig_RdbSnapshotPeriod_SNAPSHOTPERIODUNSPECIFIED :: PersistenceConfig_RdbSnapshotPeriod
pattern PersistenceConfig_RdbSnapshotPeriod_SNAPSHOTPERIODUNSPECIFIED = PersistenceConfig_RdbSnapshotPeriod "SNAPSHOT_PERIOD_UNSPECIFIED"

-- | Snapshot every 1 hour.
pattern PersistenceConfig_RdbSnapshotPeriod_ONEHOUR :: PersistenceConfig_RdbSnapshotPeriod
pattern PersistenceConfig_RdbSnapshotPeriod_ONEHOUR = PersistenceConfig_RdbSnapshotPeriod "ONE_HOUR"

-- | Snapshot every 6 hours.
pattern PersistenceConfig_RdbSnapshotPeriod_SIXHOURS :: PersistenceConfig_RdbSnapshotPeriod
pattern PersistenceConfig_RdbSnapshotPeriod_SIXHOURS = PersistenceConfig_RdbSnapshotPeriod "SIX_HOURS"

-- | Snapshot every 12 hours.
pattern PersistenceConfig_RdbSnapshotPeriod_TWELVEHOURS :: PersistenceConfig_RdbSnapshotPeriod
pattern PersistenceConfig_RdbSnapshotPeriod_TWELVEHOURS = PersistenceConfig_RdbSnapshotPeriod "TWELVE_HOURS"

-- | Snapshot every 24 horus.
pattern PersistenceConfig_RdbSnapshotPeriod_TWENTYFOURHOURS :: PersistenceConfig_RdbSnapshotPeriod
pattern PersistenceConfig_RdbSnapshotPeriod_TWENTYFOURHOURS = PersistenceConfig_RdbSnapshotPeriod "TWENTY_FOUR_HOURS"

{-# COMPLETE
  PersistenceConfig_RdbSnapshotPeriod_SNAPSHOTPERIODUNSPECIFIED,
  PersistenceConfig_RdbSnapshotPeriod_ONEHOUR,
  PersistenceConfig_RdbSnapshotPeriod_SIXHOURS,
  PersistenceConfig_RdbSnapshotPeriod_TWELVEHOURS,
  PersistenceConfig_RdbSnapshotPeriod_TWENTYFOURHOURS,
  PersistenceConfig_RdbSnapshotPeriod #-}

-- | Required. If reschedule type is SPECIFIC/TIME, must set up schedule/time as well.
newtype RescheduleMaintenanceRequest_RescheduleType = RescheduleMaintenanceRequest_RescheduleType { fromRescheduleMaintenanceRequest_RescheduleType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not set.
pattern RescheduleMaintenanceRequest_RescheduleType_RESCHEDULETYPEUNSPECIFIED :: RescheduleMaintenanceRequest_RescheduleType
pattern RescheduleMaintenanceRequest_RescheduleType_RESCHEDULETYPEUNSPECIFIED = RescheduleMaintenanceRequest_RescheduleType "RESCHEDULE_TYPE_UNSPECIFIED"

-- | If the user wants to schedule the maintenance to happen now.
pattern RescheduleMaintenanceRequest_RescheduleType_Immediate :: RescheduleMaintenanceRequest_RescheduleType
pattern RescheduleMaintenanceRequest_RescheduleType_Immediate = RescheduleMaintenanceRequest_RescheduleType "IMMEDIATE"

-- | If the user wants to use the existing maintenance policy to find the next available window.
pattern RescheduleMaintenanceRequest_RescheduleType_NEXTAVAILABLEWINDOW :: RescheduleMaintenanceRequest_RescheduleType
pattern RescheduleMaintenanceRequest_RescheduleType_NEXTAVAILABLEWINDOW = RescheduleMaintenanceRequest_RescheduleType "NEXT_AVAILABLE_WINDOW"

-- | If the user wants to reschedule the maintenance to a specific time.
pattern RescheduleMaintenanceRequest_RescheduleType_SPECIFICTIME :: RescheduleMaintenanceRequest_RescheduleType
pattern RescheduleMaintenanceRequest_RescheduleType_SPECIFICTIME = RescheduleMaintenanceRequest_RescheduleType "SPECIFIC_TIME"

{-# COMPLETE
  RescheduleMaintenanceRequest_RescheduleType_RESCHEDULETYPEUNSPECIFIED,
  RescheduleMaintenanceRequest_RescheduleType_Immediate,
  RescheduleMaintenanceRequest_RescheduleType_NEXTAVAILABLEWINDOW,
  RescheduleMaintenanceRequest_RescheduleType_SPECIFICTIME,
  RescheduleMaintenanceRequest_RescheduleType #-}

-- | Required. The day of week that maintenance updates occur.
newtype WeeklyMaintenanceWindow_Day = WeeklyMaintenanceWindow_Day { fromWeeklyMaintenanceWindow_Day :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | The day of the week is unspecified.
pattern WeeklyMaintenanceWindow_Day_DAYOFWEEKUNSPECIFIED :: WeeklyMaintenanceWindow_Day
pattern WeeklyMaintenanceWindow_Day_DAYOFWEEKUNSPECIFIED = WeeklyMaintenanceWindow_Day "DAY_OF_WEEK_UNSPECIFIED"

-- | Monday
pattern WeeklyMaintenanceWindow_Day_Monday :: WeeklyMaintenanceWindow_Day
pattern WeeklyMaintenanceWindow_Day_Monday = WeeklyMaintenanceWindow_Day "MONDAY"

-- | Tuesday
pattern WeeklyMaintenanceWindow_Day_Tuesday :: WeeklyMaintenanceWindow_Day
pattern WeeklyMaintenanceWindow_Day_Tuesday = WeeklyMaintenanceWindow_Day "TUESDAY"

-- | Wednesday
pattern WeeklyMaintenanceWindow_Day_Wednesday :: WeeklyMaintenanceWindow_Day
pattern WeeklyMaintenanceWindow_Day_Wednesday = WeeklyMaintenanceWindow_Day "WEDNESDAY"

-- | Thursday
pattern WeeklyMaintenanceWindow_Day_Thursday :: WeeklyMaintenanceWindow_Day
pattern WeeklyMaintenanceWindow_Day_Thursday = WeeklyMaintenanceWindow_Day "THURSDAY"

-- | Friday
pattern WeeklyMaintenanceWindow_Day_Friday :: WeeklyMaintenanceWindow_Day
pattern WeeklyMaintenanceWindow_Day_Friday = WeeklyMaintenanceWindow_Day "FRIDAY"

-- | Saturday
pattern WeeklyMaintenanceWindow_Day_Saturday :: WeeklyMaintenanceWindow_Day
pattern WeeklyMaintenanceWindow_Day_Saturday = WeeklyMaintenanceWindow_Day "SATURDAY"

-- | Sunday
pattern WeeklyMaintenanceWindow_Day_Sunday :: WeeklyMaintenanceWindow_Day
pattern WeeklyMaintenanceWindow_Day_Sunday = WeeklyMaintenanceWindow_Day "SUNDAY"

{-# COMPLETE
  WeeklyMaintenanceWindow_Day_DAYOFWEEKUNSPECIFIED,
  WeeklyMaintenanceWindow_Day_Monday,
  WeeklyMaintenanceWindow_Day_Tuesday,
  WeeklyMaintenanceWindow_Day_Wednesday,
  WeeklyMaintenanceWindow_Day_Thursday,
  WeeklyMaintenanceWindow_Day_Friday,
  WeeklyMaintenanceWindow_Day_Saturday,
  WeeklyMaintenanceWindow_Day_Sunday,
  WeeklyMaintenanceWindow_Day #-}
