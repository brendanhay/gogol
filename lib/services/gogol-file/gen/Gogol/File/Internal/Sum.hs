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
-- Module      : Gogol.File.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.File.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * Backup_SourceInstanceTier
    Backup_SourceInstanceTier
      ( Backup_SourceInstanceTier_TIERUNSPECIFIED,
        Backup_SourceInstanceTier_Standard,
        Backup_SourceInstanceTier_Premium,
        Backup_SourceInstanceTier_BASICHDD,
        Backup_SourceInstanceTier_BASICSSD,
        Backup_SourceInstanceTier_HIGHSCALESSD,
        Backup_SourceInstanceTier_Enterprise,
        ..
      ),

    -- * Backup_State
    Backup_State
      ( Backup_State_STATEUNSPECIFIED,
        Backup_State_Creating,
        Backup_State_Finalizing,
        Backup_State_Ready,
        Backup_State_Deleting,
        ..
      ),

    -- * GoogleCloudSaasacceleratorManagementProvidersV1Instance_State
    GoogleCloudSaasacceleratorManagementProvidersV1Instance_State
      ( GoogleCloudSaasacceleratorManagementProvidersV1Instance_State_STATEUNSPECIFIED,
        GoogleCloudSaasacceleratorManagementProvidersV1Instance_State_Creating,
        GoogleCloudSaasacceleratorManagementProvidersV1Instance_State_Ready,
        GoogleCloudSaasacceleratorManagementProvidersV1Instance_State_Updating,
        GoogleCloudSaasacceleratorManagementProvidersV1Instance_State_Repairing,
        GoogleCloudSaasacceleratorManagementProvidersV1Instance_State_Deleting,
        GoogleCloudSaasacceleratorManagementProvidersV1Instance_State_Error',
        ..
      ),

    -- * Instance_State
    Instance_State
      ( Instance_State_STATEUNSPECIFIED,
        Instance_State_Creating,
        Instance_State_Ready,
        Instance_State_Repairing,
        Instance_State_Deleting,
        Instance_State_Error',
        Instance_State_Restoring,
        Instance_State_Suspended,
        Instance_State_Suspending,
        Instance_State_Resuming,
        ..
      ),

    -- * Instance_SuspensionReasonsItem
    Instance_SuspensionReasonsItem
      ( Instance_SuspensionReasonsItem_SUSPENSIONREASONUNSPECIFIED,
        Instance_SuspensionReasonsItem_KMSKEYISSUE,
        ..
      ),

    -- * Instance_Tier
    Instance_Tier
      ( Instance_Tier_TIERUNSPECIFIED,
        Instance_Tier_Standard,
        Instance_Tier_Premium,
        Instance_Tier_BASICHDD,
        Instance_Tier_BASICSSD,
        Instance_Tier_HIGHSCALESSD,
        Instance_Tier_Enterprise,
        ..
      ),

    -- * MaintenancePolicy_State
    MaintenancePolicy_State
      ( MaintenancePolicy_State_STATEUNSPECIFIED,
        MaintenancePolicy_State_Ready,
        MaintenancePolicy_State_Deleting,
        ..
      ),

    -- * NetworkConfig_ConnectMode
    NetworkConfig_ConnectMode
      ( NetworkConfig_ConnectMode_CONNECTMODEUNSPECIFIED,
        NetworkConfig_ConnectMode_DIRECTPEERING,
        NetworkConfig_ConnectMode_PRIVATESERVICEACCESS,
        ..
      ),

    -- * NetworkConfig_ModesItem
    NetworkConfig_ModesItem
      ( NetworkConfig_ModesItem_ADDRESSMODEUNSPECIFIED,
        NetworkConfig_ModesItem_MODE_IPV4,
        ..
      ),

    -- * NfsExportOptions_AccessMode
    NfsExportOptions_AccessMode
      ( NfsExportOptions_AccessMode_ACCESSMODEUNSPECIFIED,
        NfsExportOptions_AccessMode_READONLY,
        NfsExportOptions_AccessMode_READWRITE,
        ..
      ),

    -- * NfsExportOptions_SquashMode
    NfsExportOptions_SquashMode
      ( NfsExportOptions_SquashMode_SQUASHMODEUNSPECIFIED,
        NfsExportOptions_SquashMode_NOROOTSQUASH,
        NfsExportOptions_SquashMode_ROOTSQUASH,
        ..
      ),

    -- * Schedule_Day
    Schedule_Day
      ( Schedule_Day_DAYOFWEEKUNSPECIFIED,
        Schedule_Day_Monday,
        Schedule_Day_Tuesday,
        Schedule_Day_Wednesday,
        Schedule_Day_Thursday,
        Schedule_Day_Friday,
        Schedule_Day_Saturday,
        Schedule_Day_Sunday,
        ..
      ),

    -- * Snapshot_State
    Snapshot_State
      ( Snapshot_State_STATEUNSPECIFIED,
        Snapshot_State_Creating,
        Snapshot_State_Ready,
        Snapshot_State_Deleting,
        ..
      ),

    -- * UpdatePolicy_Channel
    UpdatePolicy_Channel
      ( UpdatePolicy_Channel_UPDATECHANNELUNSPECIFIED,
        UpdatePolicy_Channel_Earlier,
        UpdatePolicy_Channel_Later,
        UpdatePolicy_Channel_WEEK1,
        UpdatePolicy_Channel_WEEK2,
        UpdatePolicy_Channel_WEEK5,
        ..
      ),
  )
where

import qualified Gogol.Prelude as Core

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

-- | Output only. The service tier of the source Filestore instance that this backup is created from.
newtype Backup_SourceInstanceTier = Backup_SourceInstanceTier {fromBackup_SourceInstanceTier :: Core.Text}
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

-- | Not set.
pattern Backup_SourceInstanceTier_TIERUNSPECIFIED :: Backup_SourceInstanceTier
pattern Backup_SourceInstanceTier_TIERUNSPECIFIED = Backup_SourceInstanceTier "TIER_UNSPECIFIED"

-- | STANDARD tier. BASIC_HDD is the preferred term for this tier.
pattern Backup_SourceInstanceTier_Standard :: Backup_SourceInstanceTier
pattern Backup_SourceInstanceTier_Standard = Backup_SourceInstanceTier "STANDARD"

-- | PREMIUM tier. BASIC_SSD is the preferred term for this tier.
pattern Backup_SourceInstanceTier_Premium :: Backup_SourceInstanceTier
pattern Backup_SourceInstanceTier_Premium = Backup_SourceInstanceTier "PREMIUM"

-- | BASIC instances offer a maximum capacity of 63.9 TB. BASIC_HDD is an alias for STANDARD Tier, offering economical performance backed by HDD.
pattern Backup_SourceInstanceTier_BASICHDD :: Backup_SourceInstanceTier
pattern Backup_SourceInstanceTier_BASICHDD = Backup_SourceInstanceTier "BASIC_HDD"

-- | BASIC instances offer a maximum capacity of 63.9 TB. BASIC_SSD is an alias for PREMIUM Tier, and offers improved performance backed by SSD.
pattern Backup_SourceInstanceTier_BASICSSD :: Backup_SourceInstanceTier
pattern Backup_SourceInstanceTier_BASICSSD = Backup_SourceInstanceTier "BASIC_SSD"

-- | HIGH_SCALE instances offer expanded capacity and performance scaling capabilities.
pattern Backup_SourceInstanceTier_HIGHSCALESSD :: Backup_SourceInstanceTier
pattern Backup_SourceInstanceTier_HIGHSCALESSD = Backup_SourceInstanceTier "HIGH_SCALE_SSD"

-- | ENTERPRISE instances offer the features and availability needed for mission-critical workloads.
pattern Backup_SourceInstanceTier_Enterprise :: Backup_SourceInstanceTier
pattern Backup_SourceInstanceTier_Enterprise = Backup_SourceInstanceTier "ENTERPRISE"

{-# COMPLETE
  Backup_SourceInstanceTier_TIERUNSPECIFIED,
  Backup_SourceInstanceTier_Standard,
  Backup_SourceInstanceTier_Premium,
  Backup_SourceInstanceTier_BASICHDD,
  Backup_SourceInstanceTier_BASICSSD,
  Backup_SourceInstanceTier_HIGHSCALESSD,
  Backup_SourceInstanceTier_Enterprise,
  Backup_SourceInstanceTier
  #-}

-- | Output only. The backup state.
newtype Backup_State = Backup_State {fromBackup_State :: Core.Text}
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

-- | State not set.
pattern Backup_State_STATEUNSPECIFIED :: Backup_State
pattern Backup_State_STATEUNSPECIFIED = Backup_State "STATE_UNSPECIFIED"

-- | Backup is being created.
pattern Backup_State_Creating :: Backup_State
pattern Backup_State_Creating = Backup_State "CREATING"

-- | Backup has been taken and the operation is being finalized. At this point, changes to the file share will not be reflected in the backup.
pattern Backup_State_Finalizing :: Backup_State
pattern Backup_State_Finalizing = Backup_State "FINALIZING"

-- | Backup is available for use.
pattern Backup_State_Ready :: Backup_State
pattern Backup_State_Ready = Backup_State "READY"

-- | Backup is being deleted.
pattern Backup_State_Deleting :: Backup_State
pattern Backup_State_Deleting = Backup_State "DELETING"

{-# COMPLETE
  Backup_State_STATEUNSPECIFIED,
  Backup_State_Creating,
  Backup_State_Finalizing,
  Backup_State_Ready,
  Backup_State_Deleting,
  Backup_State
  #-}

-- | Output only. Current lifecycle state of the resource (e.g. if it\'s being created or ready to use).
newtype GoogleCloudSaasacceleratorManagementProvidersV1Instance_State = GoogleCloudSaasacceleratorManagementProvidersV1Instance_State {fromGoogleCloudSaasacceleratorManagementProvidersV1Instance_State :: Core.Text}
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

-- | Unspecified state.
pattern GoogleCloudSaasacceleratorManagementProvidersV1Instance_State_STATEUNSPECIFIED :: GoogleCloudSaasacceleratorManagementProvidersV1Instance_State
pattern GoogleCloudSaasacceleratorManagementProvidersV1Instance_State_STATEUNSPECIFIED = GoogleCloudSaasacceleratorManagementProvidersV1Instance_State "STATE_UNSPECIFIED"

-- | Instance is being created.
pattern GoogleCloudSaasacceleratorManagementProvidersV1Instance_State_Creating :: GoogleCloudSaasacceleratorManagementProvidersV1Instance_State
pattern GoogleCloudSaasacceleratorManagementProvidersV1Instance_State_Creating = GoogleCloudSaasacceleratorManagementProvidersV1Instance_State "CREATING"

-- | Instance has been created and is ready to use.
pattern GoogleCloudSaasacceleratorManagementProvidersV1Instance_State_Ready :: GoogleCloudSaasacceleratorManagementProvidersV1Instance_State
pattern GoogleCloudSaasacceleratorManagementProvidersV1Instance_State_Ready = GoogleCloudSaasacceleratorManagementProvidersV1Instance_State "READY"

-- | Instance is being updated.
pattern GoogleCloudSaasacceleratorManagementProvidersV1Instance_State_Updating :: GoogleCloudSaasacceleratorManagementProvidersV1Instance_State
pattern GoogleCloudSaasacceleratorManagementProvidersV1Instance_State_Updating = GoogleCloudSaasacceleratorManagementProvidersV1Instance_State "UPDATING"

-- | Instance is unheathy and under repair.
pattern GoogleCloudSaasacceleratorManagementProvidersV1Instance_State_Repairing :: GoogleCloudSaasacceleratorManagementProvidersV1Instance_State
pattern GoogleCloudSaasacceleratorManagementProvidersV1Instance_State_Repairing = GoogleCloudSaasacceleratorManagementProvidersV1Instance_State "REPAIRING"

-- | Instance is being deleted.
pattern GoogleCloudSaasacceleratorManagementProvidersV1Instance_State_Deleting :: GoogleCloudSaasacceleratorManagementProvidersV1Instance_State
pattern GoogleCloudSaasacceleratorManagementProvidersV1Instance_State_Deleting = GoogleCloudSaasacceleratorManagementProvidersV1Instance_State "DELETING"

-- | Instance encountered an error and is in indeterministic state.
pattern GoogleCloudSaasacceleratorManagementProvidersV1Instance_State_Error' :: GoogleCloudSaasacceleratorManagementProvidersV1Instance_State
pattern GoogleCloudSaasacceleratorManagementProvidersV1Instance_State_Error' = GoogleCloudSaasacceleratorManagementProvidersV1Instance_State "ERROR"

{-# COMPLETE
  GoogleCloudSaasacceleratorManagementProvidersV1Instance_State_STATEUNSPECIFIED,
  GoogleCloudSaasacceleratorManagementProvidersV1Instance_State_Creating,
  GoogleCloudSaasacceleratorManagementProvidersV1Instance_State_Ready,
  GoogleCloudSaasacceleratorManagementProvidersV1Instance_State_Updating,
  GoogleCloudSaasacceleratorManagementProvidersV1Instance_State_Repairing,
  GoogleCloudSaasacceleratorManagementProvidersV1Instance_State_Deleting,
  GoogleCloudSaasacceleratorManagementProvidersV1Instance_State_Error',
  GoogleCloudSaasacceleratorManagementProvidersV1Instance_State
  #-}

-- | Output only. The instance state.
newtype Instance_State = Instance_State {fromInstance_State :: Core.Text}
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

-- | State not set.
pattern Instance_State_STATEUNSPECIFIED :: Instance_State
pattern Instance_State_STATEUNSPECIFIED = Instance_State "STATE_UNSPECIFIED"

-- | The instance is being created.
pattern Instance_State_Creating :: Instance_State
pattern Instance_State_Creating = Instance_State "CREATING"

-- | The instance is available for use.
pattern Instance_State_Ready :: Instance_State
pattern Instance_State_Ready = Instance_State "READY"

-- | Work is being done on the instance. You can get further details from the @statusMessage@ field of the @Instance@ resource.
pattern Instance_State_Repairing :: Instance_State
pattern Instance_State_Repairing = Instance_State "REPAIRING"

-- | The instance is shutting down.
pattern Instance_State_Deleting :: Instance_State
pattern Instance_State_Deleting = Instance_State "DELETING"

-- | The instance is experiencing an issue and might be unusable. You can get further details from the @statusMessage@ field of the @Instance@ resource.
pattern Instance_State_Error' :: Instance_State
pattern Instance_State_Error' = Instance_State "ERROR"

-- | The instance is restoring a backup to an existing file share and may be unusable during this time.
pattern Instance_State_Restoring :: Instance_State
pattern Instance_State_Restoring = Instance_State "RESTORING"

-- | The instance is suspended. You can get further details from the @suspension_reasons@ field of the @Instance@ resource.
pattern Instance_State_Suspended :: Instance_State
pattern Instance_State_Suspended = Instance_State "SUSPENDED"

-- | The instance is in the process of becoming suspended.
pattern Instance_State_Suspending :: Instance_State
pattern Instance_State_Suspending = Instance_State "SUSPENDING"

-- | The instance is in the process of becoming active.
pattern Instance_State_Resuming :: Instance_State
pattern Instance_State_Resuming = Instance_State "RESUMING"

{-# COMPLETE
  Instance_State_STATEUNSPECIFIED,
  Instance_State_Creating,
  Instance_State_Ready,
  Instance_State_Repairing,
  Instance_State_Deleting,
  Instance_State_Error',
  Instance_State_Restoring,
  Instance_State_Suspended,
  Instance_State_Suspending,
  Instance_State_Resuming,
  Instance_State
  #-}

newtype Instance_SuspensionReasonsItem = Instance_SuspensionReasonsItem {fromInstance_SuspensionReasonsItem :: Core.Text}
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

-- | Not set.
pattern Instance_SuspensionReasonsItem_SUSPENSIONREASONUNSPECIFIED :: Instance_SuspensionReasonsItem
pattern Instance_SuspensionReasonsItem_SUSPENSIONREASONUNSPECIFIED = Instance_SuspensionReasonsItem "SUSPENSION_REASON_UNSPECIFIED"

-- | The KMS key used by the instance is either revoked or denied access to.
pattern Instance_SuspensionReasonsItem_KMSKEYISSUE :: Instance_SuspensionReasonsItem
pattern Instance_SuspensionReasonsItem_KMSKEYISSUE = Instance_SuspensionReasonsItem "KMS_KEY_ISSUE"

{-# COMPLETE
  Instance_SuspensionReasonsItem_SUSPENSIONREASONUNSPECIFIED,
  Instance_SuspensionReasonsItem_KMSKEYISSUE,
  Instance_SuspensionReasonsItem
  #-}

-- | The service tier of the instance.
newtype Instance_Tier = Instance_Tier {fromInstance_Tier :: Core.Text}
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

-- | Not set.
pattern Instance_Tier_TIERUNSPECIFIED :: Instance_Tier
pattern Instance_Tier_TIERUNSPECIFIED = Instance_Tier "TIER_UNSPECIFIED"

-- | STANDARD tier. BASIC_HDD is the preferred term for this tier.
pattern Instance_Tier_Standard :: Instance_Tier
pattern Instance_Tier_Standard = Instance_Tier "STANDARD"

-- | PREMIUM tier. BASIC_SSD is the preferred term for this tier.
pattern Instance_Tier_Premium :: Instance_Tier
pattern Instance_Tier_Premium = Instance_Tier "PREMIUM"

-- | BASIC instances offer a maximum capacity of 63.9 TB. BASIC_HDD is an alias for STANDARD Tier, offering economical performance backed by HDD.
pattern Instance_Tier_BASICHDD :: Instance_Tier
pattern Instance_Tier_BASICHDD = Instance_Tier "BASIC_HDD"

-- | BASIC instances offer a maximum capacity of 63.9 TB. BASIC_SSD is an alias for PREMIUM Tier, and offers improved performance backed by SSD.
pattern Instance_Tier_BASICSSD :: Instance_Tier
pattern Instance_Tier_BASICSSD = Instance_Tier "BASIC_SSD"

-- | HIGH_SCALE instances offer expanded capacity and performance scaling capabilities.
pattern Instance_Tier_HIGHSCALESSD :: Instance_Tier
pattern Instance_Tier_HIGHSCALESSD = Instance_Tier "HIGH_SCALE_SSD"

-- | ENTERPRISE instances offer the features and availability needed for mission-critical workloads.
pattern Instance_Tier_Enterprise :: Instance_Tier
pattern Instance_Tier_Enterprise = Instance_Tier "ENTERPRISE"

{-# COMPLETE
  Instance_Tier_TIERUNSPECIFIED,
  Instance_Tier_Standard,
  Instance_Tier_Premium,
  Instance_Tier_BASICHDD,
  Instance_Tier_BASICSSD,
  Instance_Tier_HIGHSCALESSD,
  Instance_Tier_Enterprise,
  Instance_Tier
  #-}

-- | Optional. The state of the policy.
newtype MaintenancePolicy_State = MaintenancePolicy_State {fromMaintenancePolicy_State :: Core.Text}
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

-- | Unspecified state.
pattern MaintenancePolicy_State_STATEUNSPECIFIED :: MaintenancePolicy_State
pattern MaintenancePolicy_State_STATEUNSPECIFIED = MaintenancePolicy_State "STATE_UNSPECIFIED"

-- | Resource is ready to be used.
pattern MaintenancePolicy_State_Ready :: MaintenancePolicy_State
pattern MaintenancePolicy_State_Ready = MaintenancePolicy_State "READY"

-- | Resource is being deleted. It can no longer be attached to instances.
pattern MaintenancePolicy_State_Deleting :: MaintenancePolicy_State
pattern MaintenancePolicy_State_Deleting = MaintenancePolicy_State "DELETING"

{-# COMPLETE
  MaintenancePolicy_State_STATEUNSPECIFIED,
  MaintenancePolicy_State_Ready,
  MaintenancePolicy_State_Deleting,
  MaintenancePolicy_State
  #-}

-- | The network connect mode of the Filestore instance. If not provided, the connect mode defaults to DIRECT_PEERING.
newtype NetworkConfig_ConnectMode = NetworkConfig_ConnectMode {fromNetworkConfig_ConnectMode :: Core.Text}
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

-- | Not set.
pattern NetworkConfig_ConnectMode_CONNECTMODEUNSPECIFIED :: NetworkConfig_ConnectMode
pattern NetworkConfig_ConnectMode_CONNECTMODEUNSPECIFIED = NetworkConfig_ConnectMode "CONNECT_MODE_UNSPECIFIED"

-- | Connect via direct peering to the Filestore service.
pattern NetworkConfig_ConnectMode_DIRECTPEERING :: NetworkConfig_ConnectMode
pattern NetworkConfig_ConnectMode_DIRECTPEERING = NetworkConfig_ConnectMode "DIRECT_PEERING"

-- | Connect to your Filestore instance using Private Service Access. Private services access provides an IP address range for multiple Google Cloud services, including Filestore.
pattern NetworkConfig_ConnectMode_PRIVATESERVICEACCESS :: NetworkConfig_ConnectMode
pattern NetworkConfig_ConnectMode_PRIVATESERVICEACCESS = NetworkConfig_ConnectMode "PRIVATE_SERVICE_ACCESS"

{-# COMPLETE
  NetworkConfig_ConnectMode_CONNECTMODEUNSPECIFIED,
  NetworkConfig_ConnectMode_DIRECTPEERING,
  NetworkConfig_ConnectMode_PRIVATESERVICEACCESS,
  NetworkConfig_ConnectMode
  #-}

newtype NetworkConfig_ModesItem = NetworkConfig_ModesItem {fromNetworkConfig_ModesItem :: Core.Text}
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

-- | Internet protocol not set.
pattern NetworkConfig_ModesItem_ADDRESSMODEUNSPECIFIED :: NetworkConfig_ModesItem
pattern NetworkConfig_ModesItem_ADDRESSMODEUNSPECIFIED = NetworkConfig_ModesItem "ADDRESS_MODE_UNSPECIFIED"

-- | Use the IPv4 internet protocol.
pattern NetworkConfig_ModesItem_MODE_IPV4 :: NetworkConfig_ModesItem
pattern NetworkConfig_ModesItem_MODE_IPV4 = NetworkConfig_ModesItem "MODE_IPV4"

{-# COMPLETE
  NetworkConfig_ModesItem_ADDRESSMODEUNSPECIFIED,
  NetworkConfig_ModesItem_MODE_IPV4,
  NetworkConfig_ModesItem
  #-}

-- | Either READ/ONLY, for allowing only read requests on the exported directory, or READ/WRITE, for allowing both read and write requests. The default is READ_WRITE.
newtype NfsExportOptions_AccessMode = NfsExportOptions_AccessMode {fromNfsExportOptions_AccessMode :: Core.Text}
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

-- | AccessMode not set.
pattern NfsExportOptions_AccessMode_ACCESSMODEUNSPECIFIED :: NfsExportOptions_AccessMode
pattern NfsExportOptions_AccessMode_ACCESSMODEUNSPECIFIED = NfsExportOptions_AccessMode "ACCESS_MODE_UNSPECIFIED"

-- | The client can only read the file share.
pattern NfsExportOptions_AccessMode_READONLY :: NfsExportOptions_AccessMode
pattern NfsExportOptions_AccessMode_READONLY = NfsExportOptions_AccessMode "READ_ONLY"

-- | The client can read and write the file share (default).
pattern NfsExportOptions_AccessMode_READWRITE :: NfsExportOptions_AccessMode
pattern NfsExportOptions_AccessMode_READWRITE = NfsExportOptions_AccessMode "READ_WRITE"

{-# COMPLETE
  NfsExportOptions_AccessMode_ACCESSMODEUNSPECIFIED,
  NfsExportOptions_AccessMode_READONLY,
  NfsExportOptions_AccessMode_READWRITE,
  NfsExportOptions_AccessMode
  #-}

-- | Either NO/ROOT/SQUASH, for allowing root access on the exported directory, or ROOT/SQUASH, for not allowing root access. The default is NO/ROOT_SQUASH.
newtype NfsExportOptions_SquashMode = NfsExportOptions_SquashMode {fromNfsExportOptions_SquashMode :: Core.Text}
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

-- | SquashMode not set.
pattern NfsExportOptions_SquashMode_SQUASHMODEUNSPECIFIED :: NfsExportOptions_SquashMode
pattern NfsExportOptions_SquashMode_SQUASHMODEUNSPECIFIED = NfsExportOptions_SquashMode "SQUASH_MODE_UNSPECIFIED"

-- | The Root user has root access to the file share (default).
pattern NfsExportOptions_SquashMode_NOROOTSQUASH :: NfsExportOptions_SquashMode
pattern NfsExportOptions_SquashMode_NOROOTSQUASH = NfsExportOptions_SquashMode "NO_ROOT_SQUASH"

-- | The Root user has squashed access to the anonymous uid\/gid.
pattern NfsExportOptions_SquashMode_ROOTSQUASH :: NfsExportOptions_SquashMode
pattern NfsExportOptions_SquashMode_ROOTSQUASH = NfsExportOptions_SquashMode "ROOT_SQUASH"

{-# COMPLETE
  NfsExportOptions_SquashMode_SQUASHMODEUNSPECIFIED,
  NfsExportOptions_SquashMode_NOROOTSQUASH,
  NfsExportOptions_SquashMode_ROOTSQUASH,
  NfsExportOptions_SquashMode
  #-}

-- | Allows to define schedule that runs specified day of the week.
newtype Schedule_Day = Schedule_Day {fromSchedule_Day :: Core.Text}
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

-- | The day of the week is unspecified.
pattern Schedule_Day_DAYOFWEEKUNSPECIFIED :: Schedule_Day
pattern Schedule_Day_DAYOFWEEKUNSPECIFIED = Schedule_Day "DAY_OF_WEEK_UNSPECIFIED"

-- | Monday
pattern Schedule_Day_Monday :: Schedule_Day
pattern Schedule_Day_Monday = Schedule_Day "MONDAY"

-- | Tuesday
pattern Schedule_Day_Tuesday :: Schedule_Day
pattern Schedule_Day_Tuesday = Schedule_Day "TUESDAY"

-- | Wednesday
pattern Schedule_Day_Wednesday :: Schedule_Day
pattern Schedule_Day_Wednesday = Schedule_Day "WEDNESDAY"

-- | Thursday
pattern Schedule_Day_Thursday :: Schedule_Day
pattern Schedule_Day_Thursday = Schedule_Day "THURSDAY"

-- | Friday
pattern Schedule_Day_Friday :: Schedule_Day
pattern Schedule_Day_Friday = Schedule_Day "FRIDAY"

-- | Saturday
pattern Schedule_Day_Saturday :: Schedule_Day
pattern Schedule_Day_Saturday = Schedule_Day "SATURDAY"

-- | Sunday
pattern Schedule_Day_Sunday :: Schedule_Day
pattern Schedule_Day_Sunday = Schedule_Day "SUNDAY"

{-# COMPLETE
  Schedule_Day_DAYOFWEEKUNSPECIFIED,
  Schedule_Day_Monday,
  Schedule_Day_Tuesday,
  Schedule_Day_Wednesday,
  Schedule_Day_Thursday,
  Schedule_Day_Friday,
  Schedule_Day_Saturday,
  Schedule_Day_Sunday,
  Schedule_Day
  #-}

-- | Output only. The snapshot state.
newtype Snapshot_State = Snapshot_State {fromSnapshot_State :: Core.Text}
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

-- | State not set.
pattern Snapshot_State_STATEUNSPECIFIED :: Snapshot_State
pattern Snapshot_State_STATEUNSPECIFIED = Snapshot_State "STATE_UNSPECIFIED"

-- | Snapshot is being created.
pattern Snapshot_State_Creating :: Snapshot_State
pattern Snapshot_State_Creating = Snapshot_State "CREATING"

-- | Snapshot is available for use.
pattern Snapshot_State_Ready :: Snapshot_State
pattern Snapshot_State_Ready = Snapshot_State "READY"

-- | Snapshot is being deleted.
pattern Snapshot_State_Deleting :: Snapshot_State
pattern Snapshot_State_Deleting = Snapshot_State "DELETING"

{-# COMPLETE
  Snapshot_State_STATEUNSPECIFIED,
  Snapshot_State_Creating,
  Snapshot_State_Ready,
  Snapshot_State_Deleting,
  Snapshot_State
  #-}

-- | Optional. Relative scheduling channel applied to resource.
newtype UpdatePolicy_Channel = UpdatePolicy_Channel {fromUpdatePolicy_Channel :: Core.Text}
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

-- | Unspecified channel.
pattern UpdatePolicy_Channel_UPDATECHANNELUNSPECIFIED :: UpdatePolicy_Channel
pattern UpdatePolicy_Channel_UPDATECHANNELUNSPECIFIED = UpdatePolicy_Channel "UPDATE_CHANNEL_UNSPECIFIED"

-- | Early channel within a customer project.
pattern UpdatePolicy_Channel_Earlier :: UpdatePolicy_Channel
pattern UpdatePolicy_Channel_Earlier = UpdatePolicy_Channel "EARLIER"

-- | Later channel within a customer project.
pattern UpdatePolicy_Channel_Later :: UpdatePolicy_Channel
pattern UpdatePolicy_Channel_Later = UpdatePolicy_Channel "LATER"

-- | ! ! The follow channels can ONLY be used if you adopt the new MW system! ! ! NOTE: all WEEK channels are assumed to be under a weekly window. ! There is currently no dedicated channel definitions for Daily windows. ! If you use Daily window, the system will assume a 1d (24Hours) advanced ! notification period b\/w EARLY and LATER. ! We may consider support more flexible daily channel specifications in ! the future. WEEK1 == EARLIER with minimum 7d advanced notification. {7d, 14d} The system will treat them equally and will use WEEK1 whenever it can. New customers are encouraged to use this channel annotation.
pattern UpdatePolicy_Channel_WEEK1 :: UpdatePolicy_Channel
pattern UpdatePolicy_Channel_WEEK1 = UpdatePolicy_Channel "WEEK1"

-- | WEEK2 == LATER with minimum 14d advanced notification {14d, 21d}.
pattern UpdatePolicy_Channel_WEEK2 :: UpdatePolicy_Channel
pattern UpdatePolicy_Channel_WEEK2 = UpdatePolicy_Channel "WEEK2"

-- | WEEK5 == 40d support. minimum 35d advanced notification {35d, 42d}.
pattern UpdatePolicy_Channel_WEEK5 :: UpdatePolicy_Channel
pattern UpdatePolicy_Channel_WEEK5 = UpdatePolicy_Channel "WEEK5"

{-# COMPLETE
  UpdatePolicy_Channel_UPDATECHANNELUNSPECIFIED,
  UpdatePolicy_Channel_Earlier,
  UpdatePolicy_Channel_Later,
  UpdatePolicy_Channel_WEEK1,
  UpdatePolicy_Channel_WEEK2,
  UpdatePolicy_Channel_WEEK5,
  UpdatePolicy_Channel
  #-}
