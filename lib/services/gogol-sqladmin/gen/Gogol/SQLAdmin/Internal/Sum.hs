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
-- Module      : Gogol.SQLAdmin.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.SQLAdmin.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * ApiWarning_Code
    ApiWarning_Code
      ( ApiWarning_Code_SQLAPIWARNINGCODEUNSPECIFIED,
        ApiWarning_Code_REGIONUNREACHABLE,
        ApiWarning_Code_MAXRESULTSEXCEEDSLIMIT,
        ..
      ),

    -- * BackupRetentionSettings_RetentionUnit
    BackupRetentionSettings_RetentionUnit
      ( BackupRetentionSettings_RetentionUnit_RETENTIONUNITUNSPECIFIED,
        BackupRetentionSettings_RetentionUnit_Count,
        ..
      ),

    -- * BackupRun_BackupKind
    BackupRun_BackupKind
      ( BackupRun_BackupKind_SQLBACKUPKINDUNSPECIFIED,
        BackupRun_BackupKind_Snapshot,
        BackupRun_BackupKind_Physical,
        ..
      ),

    -- * BackupRun_Status
    BackupRun_Status
      ( BackupRun_Status_SQLBACKUPRUNSTATUSUNSPECIFIED,
        BackupRun_Status_Enqueued,
        BackupRun_Status_Overdue,
        BackupRun_Status_Running,
        BackupRun_Status_Failed,
        BackupRun_Status_Successful,
        BackupRun_Status_Skipped,
        BackupRun_Status_DELETIONPENDING,
        BackupRun_Status_DELETIONFAILED,
        BackupRun_Status_Deleted,
        ..
      ),

    -- * BackupRun_Type
    BackupRun_Type
      ( BackupRun_Type_SQLBACKUPRUNTYPEUNSPECIFIED,
        BackupRun_Type_Automated,
        BackupRun_Type_ONDEMAND,
        ..
      ),

    -- * ConnectSettings_BackendType
    ConnectSettings_BackendType
      ( ConnectSettings_BackendType_SQLBACKENDTYPEUNSPECIFIED,
        ConnectSettings_BackendType_FIRSTGEN,
        ConnectSettings_BackendType_SECONDGEN,
        ConnectSettings_BackendType_External,
        ..
      ),

    -- * ConnectSettings_DatabaseVersion
    ConnectSettings_DatabaseVersion
      ( ConnectSettings_DatabaseVersion_SQLDATABASEVERSIONUNSPECIFIED,
        ConnectSettings_DatabaseVersion_MYSQL_5_1,
        ConnectSettings_DatabaseVersion_MYSQL_5_5,
        ConnectSettings_DatabaseVersion_MYSQL_5_6,
        ConnectSettings_DatabaseVersion_MYSQL_5_7,
        ConnectSettings_DatabaseVersion_SQLSERVER2017STANDARD,
        ConnectSettings_DatabaseVersion_SQLSERVER2017ENTERPRISE,
        ConnectSettings_DatabaseVersion_SQLSERVER2017EXPRESS,
        ConnectSettings_DatabaseVersion_SQLSERVER2017WEB,
        ConnectSettings_DatabaseVersion_POSTGRES_9_6,
        ConnectSettings_DatabaseVersion_POSTGRES_10,
        ConnectSettings_DatabaseVersion_POSTGRES_11,
        ConnectSettings_DatabaseVersion_POSTGRES_12,
        ConnectSettings_DatabaseVersion_POSTGRES_13,
        ConnectSettings_DatabaseVersion_POSTGRES_14,
        ConnectSettings_DatabaseVersion_MYSQL_8_0,
        ConnectSettings_DatabaseVersion_MYSQL_8_0_18,
        ConnectSettings_DatabaseVersion_MYSQL_8_0_26,
        ConnectSettings_DatabaseVersion_MYSQL_8_0_27,
        ConnectSettings_DatabaseVersion_MYSQL_8_0_28,
        ConnectSettings_DatabaseVersion_MYSQL_8_0_29,
        ConnectSettings_DatabaseVersion_MYSQL_8_0_30,
        ConnectSettings_DatabaseVersion_MYSQL_8_0_31,
        ConnectSettings_DatabaseVersion_MYSQL_8_0_32,
        ConnectSettings_DatabaseVersion_SQLSERVER2019STANDARD,
        ConnectSettings_DatabaseVersion_SQLSERVER2019ENTERPRISE,
        ConnectSettings_DatabaseVersion_SQLSERVER2019EXPRESS,
        ConnectSettings_DatabaseVersion_SQLSERVER2019WEB,
        ..
      ),

    -- * DatabaseInstance_BackendType
    DatabaseInstance_BackendType
      ( DatabaseInstance_BackendType_SQLBACKENDTYPEUNSPECIFIED,
        DatabaseInstance_BackendType_FIRSTGEN,
        DatabaseInstance_BackendType_SECONDGEN,
        DatabaseInstance_BackendType_External,
        ..
      ),

    -- * DatabaseInstance_DatabaseVersion
    DatabaseInstance_DatabaseVersion
      ( DatabaseInstance_DatabaseVersion_SQLDATABASEVERSIONUNSPECIFIED,
        DatabaseInstance_DatabaseVersion_MYSQL_5_1,
        DatabaseInstance_DatabaseVersion_MYSQL_5_5,
        DatabaseInstance_DatabaseVersion_MYSQL_5_6,
        DatabaseInstance_DatabaseVersion_MYSQL_5_7,
        DatabaseInstance_DatabaseVersion_SQLSERVER2017STANDARD,
        DatabaseInstance_DatabaseVersion_SQLSERVER2017ENTERPRISE,
        DatabaseInstance_DatabaseVersion_SQLSERVER2017EXPRESS,
        DatabaseInstance_DatabaseVersion_SQLSERVER2017WEB,
        DatabaseInstance_DatabaseVersion_POSTGRES_9_6,
        DatabaseInstance_DatabaseVersion_POSTGRES_10,
        DatabaseInstance_DatabaseVersion_POSTGRES_11,
        DatabaseInstance_DatabaseVersion_POSTGRES_12,
        DatabaseInstance_DatabaseVersion_POSTGRES_13,
        DatabaseInstance_DatabaseVersion_POSTGRES_14,
        DatabaseInstance_DatabaseVersion_MYSQL_8_0,
        DatabaseInstance_DatabaseVersion_MYSQL_8_0_18,
        DatabaseInstance_DatabaseVersion_MYSQL_8_0_26,
        DatabaseInstance_DatabaseVersion_MYSQL_8_0_27,
        DatabaseInstance_DatabaseVersion_MYSQL_8_0_28,
        DatabaseInstance_DatabaseVersion_MYSQL_8_0_29,
        DatabaseInstance_DatabaseVersion_MYSQL_8_0_30,
        DatabaseInstance_DatabaseVersion_MYSQL_8_0_31,
        DatabaseInstance_DatabaseVersion_MYSQL_8_0_32,
        DatabaseInstance_DatabaseVersion_SQLSERVER2019STANDARD,
        DatabaseInstance_DatabaseVersion_SQLSERVER2019ENTERPRISE,
        DatabaseInstance_DatabaseVersion_SQLSERVER2019EXPRESS,
        DatabaseInstance_DatabaseVersion_SQLSERVER2019WEB,
        ..
      ),

    -- * DatabaseInstance_InstanceType
    DatabaseInstance_InstanceType
      ( DatabaseInstance_InstanceType_SQLINSTANCETYPEUNSPECIFIED,
        DatabaseInstance_InstanceType_CLOUDSQLINSTANCE,
        DatabaseInstance_InstanceType_ONPREMISESINSTANCE,
        DatabaseInstance_InstanceType_READREPLICAINSTANCE,
        ..
      ),

    -- * DatabaseInstance_State
    DatabaseInstance_State
      ( DatabaseInstance_State_SQLINSTANCESTATEUNSPECIFIED,
        DatabaseInstance_State_Runnable,
        DatabaseInstance_State_Suspended,
        DatabaseInstance_State_PENDINGDELETE,
        DatabaseInstance_State_PENDINGCREATE,
        DatabaseInstance_State_Maintenance,
        DatabaseInstance_State_Failed,
        DatabaseInstance_State_ONLINEMAINTENANCE,
        ..
      ),

    -- * DatabaseInstance_SuspensionReasonItem
    DatabaseInstance_SuspensionReasonItem
      ( DatabaseInstance_SuspensionReasonItem_SQLSUSPENSIONREASONUNSPECIFIED,
        DatabaseInstance_SuspensionReasonItem_BILLINGISSUE,
        DatabaseInstance_SuspensionReasonItem_LEGALISSUE,
        DatabaseInstance_SuspensionReasonItem_OPERATIONALISSUE,
        DatabaseInstance_SuspensionReasonItem_KMSKEYISSUE,
        ..
      ),

    -- * ExportContext_FileType
    ExportContext_FileType
      ( ExportContext_FileType_SQLFILETYPEUNSPECIFIED,
        ExportContext_FileType_Sql,
        ExportContext_FileType_Csv,
        ExportContext_FileType_Bak,
        ..
      ),

    -- * Flag_AppliesToItem
    Flag_AppliesToItem
      ( Flag_AppliesToItem_SQLDATABASEVERSIONUNSPECIFIED,
        Flag_AppliesToItem_MYSQL_5_1,
        Flag_AppliesToItem_MYSQL_5_5,
        Flag_AppliesToItem_MYSQL_5_6,
        Flag_AppliesToItem_MYSQL_5_7,
        Flag_AppliesToItem_SQLSERVER2017STANDARD,
        Flag_AppliesToItem_SQLSERVER2017ENTERPRISE,
        Flag_AppliesToItem_SQLSERVER2017EXPRESS,
        Flag_AppliesToItem_SQLSERVER2017WEB,
        Flag_AppliesToItem_POSTGRES_9_6,
        Flag_AppliesToItem_POSTGRES_10,
        Flag_AppliesToItem_POSTGRES_11,
        Flag_AppliesToItem_POSTGRES_12,
        Flag_AppliesToItem_POSTGRES_13,
        Flag_AppliesToItem_POSTGRES_14,
        Flag_AppliesToItem_MYSQL_8_0,
        Flag_AppliesToItem_MYSQL_8_0_18,
        Flag_AppliesToItem_MYSQL_8_0_26,
        Flag_AppliesToItem_MYSQL_8_0_27,
        Flag_AppliesToItem_MYSQL_8_0_28,
        Flag_AppliesToItem_MYSQL_8_0_29,
        Flag_AppliesToItem_MYSQL_8_0_30,
        Flag_AppliesToItem_MYSQL_8_0_31,
        Flag_AppliesToItem_MYSQL_8_0_32,
        Flag_AppliesToItem_SQLSERVER2019STANDARD,
        Flag_AppliesToItem_SQLSERVER2019ENTERPRISE,
        Flag_AppliesToItem_SQLSERVER2019EXPRESS,
        Flag_AppliesToItem_SQLSERVER2019WEB,
        ..
      ),

    -- * Flag_Type
    Flag_Type
      ( Flag_Type_SQLFLAGTYPEUNSPECIFIED,
        Flag_Type_Boolean,
        Flag_Type_String,
        Flag_Type_Integer,
        Flag_Type_None,
        Flag_Type_MYSQLTIMEZONEOFFSET,
        Flag_Type_Float,
        Flag_Type_REPEATEDSTRING,
        ..
      ),

    -- * ImportContext_FileType
    ImportContext_FileType
      ( ImportContext_FileType_SQLFILETYPEUNSPECIFIED,
        ImportContext_FileType_Sql,
        ImportContext_FileType_Csv,
        ImportContext_FileType_Bak,
        ..
      ),

    -- * IpMapping_Type
    IpMapping_Type
      ( IpMapping_Type_SQLIPADDRESSTYPEUNSPECIFIED,
        IpMapping_Type_Primary,
        IpMapping_Type_Outgoing,
        IpMapping_Type_Private,
        IpMapping_Type_MIGRATED1STGEN,
        ..
      ),

    -- * MaintenanceWindow_UpdateTrack
    MaintenanceWindow_UpdateTrack
      ( MaintenanceWindow_UpdateTrack_SQLUPDATETRACKUNSPECIFIED,
        MaintenanceWindow_UpdateTrack_Canary,
        MaintenanceWindow_UpdateTrack_Stable,
        ..
      ),

    -- * Operation_OperationType
    Operation_OperationType
      ( Operation_OperationType_SQLOPERATIONTYPEUNSPECIFIED,
        Operation_OperationType_Import,
        Operation_OperationType_Export,
        Operation_OperationType_Create,
        Operation_OperationType_Update,
        Operation_OperationType_Delete',
        Operation_OperationType_Restart,
        Operation_OperationType_Backup,
        Operation_OperationType_Snapshot,
        Operation_OperationType_BACKUPVOLUME,
        Operation_OperationType_DELETEVOLUME,
        Operation_OperationType_RESTOREVOLUME,
        Operation_OperationType_INJECTUSER,
        Operation_OperationType_Clone,
        Operation_OperationType_STOPREPLICA,
        Operation_OperationType_STARTREPLICA,
        Operation_OperationType_PROMOTEREPLICA,
        Operation_OperationType_CREATEREPLICA,
        Operation_OperationType_CREATEUSER,
        Operation_OperationType_DELETEUSER,
        Operation_OperationType_UPDATEUSER,
        Operation_OperationType_CREATEDATABASE,
        Operation_OperationType_DELETEDATABASE,
        Operation_OperationType_UPDATEDATABASE,
        Operation_OperationType_Failover,
        Operation_OperationType_DELETEBACKUP,
        Operation_OperationType_RECREATEREPLICA,
        Operation_OperationType_TRUNCATELOG,
        Operation_OperationType_DEMOTEMASTER,
        Operation_OperationType_Maintenance,
        Operation_OperationType_ENABLEPRIVATEIP,
        Operation_OperationType_DEFERMAINTENANCE,
        Operation_OperationType_CREATECLONE,
        Operation_OperationType_RESCHEDULEMAINTENANCE,
        Operation_OperationType_STARTEXTERNALSYNC,
        Operation_OperationType_LOGCLEANUP,
        Operation_OperationType_AUTORESTART,
        Operation_OperationType_Reencrypt,
        ..
      ),

    -- * Operation_Status
    Operation_Status
      ( Operation_Status_SQLOPERATIONSTATUSUNSPECIFIED,
        Operation_Status_Pending,
        Operation_Status_Running,
        Operation_Status_Done,
        ..
      ),

    -- * PasswordValidationPolicy_Complexity
    PasswordValidationPolicy_Complexity
      ( PasswordValidationPolicy_Complexity_COMPLEXITYUNSPECIFIED,
        PasswordValidationPolicy_Complexity_COMPLEXITYDEFAULT,
        ..
      ),

    -- * Reschedule_RescheduleType
    Reschedule_RescheduleType
      ( Reschedule_RescheduleType_RESCHEDULETYPEUNSPECIFIED,
        Reschedule_RescheduleType_Immediate,
        Reschedule_RescheduleType_NEXTAVAILABLEWINDOW,
        Reschedule_RescheduleType_SPECIFICTIME,
        ..
      ),

    -- * Settings_ActivationPolicy
    Settings_ActivationPolicy
      ( Settings_ActivationPolicy_SQLACTIVATIONPOLICYUNSPECIFIED,
        Settings_ActivationPolicy_Always,
        Settings_ActivationPolicy_Never,
        Settings_ActivationPolicy_ONDEMAND,
        ..
      ),

    -- * Settings_AvailabilityType
    Settings_AvailabilityType
      ( Settings_AvailabilityType_SQLAVAILABILITYTYPEUNSPECIFIED,
        Settings_AvailabilityType_Zonal,
        Settings_AvailabilityType_Regional,
        ..
      ),

    -- * Settings_ConnectorEnforcement
    Settings_ConnectorEnforcement
      ( Settings_ConnectorEnforcement_CONNECTORENFORCEMENTUNSPECIFIED,
        Settings_ConnectorEnforcement_NOTREQUIRED,
        Settings_ConnectorEnforcement_Required,
        ..
      ),

    -- * Settings_DataDiskType
    Settings_DataDiskType
      ( Settings_DataDiskType_SQLDATADISKTYPEUNSPECIFIED,
        Settings_DataDiskType_PDSSD,
        Settings_DataDiskType_PDHDD,
        Settings_DataDiskType_OBSOLETELOCALSSD,
        ..
      ),

    -- * Settings_PricingPlan
    Settings_PricingPlan
      ( Settings_PricingPlan_SQLPRICINGPLANUNSPECIFIED,
        Settings_PricingPlan_Package,
        Settings_PricingPlan_PERUSE,
        ..
      ),

    -- * Settings_ReplicationType
    Settings_ReplicationType
      ( Settings_ReplicationType_SQLREPLICATIONTYPEUNSPECIFIED,
        Settings_ReplicationType_Synchronous,
        Settings_ReplicationType_Asynchronous,
        ..
      ),

    -- * SqlExternalSyncSettingError_Type
    SqlExternalSyncSettingError_Type
      ( SqlExternalSyncSettingError_Type_SQLEXTERNALSYNCSETTINGERRORTYPEUNSPECIFIED,
        SqlExternalSyncSettingError_Type_CONNECTIONFAILURE,
        SqlExternalSyncSettingError_Type_BINLOGNOTENABLED,
        SqlExternalSyncSettingError_Type_INCOMPATIBLEDATABASEVERSION,
        SqlExternalSyncSettingError_Type_REPLICAALREADYSETUP,
        SqlExternalSyncSettingError_Type_INSUFFICIENTPRIVILEGE,
        SqlExternalSyncSettingError_Type_UNSUPPORTEDMIGRATIONTYPE,
        SqlExternalSyncSettingError_Type_NOPGLOGICALINSTALLED,
        SqlExternalSyncSettingError_Type_PGLOGICALNODEALREADYEXISTS,
        SqlExternalSyncSettingError_Type_INVALIDWALLEVEL,
        SqlExternalSyncSettingError_Type_INVALIDSHAREDPRELOADLIBRARY,
        SqlExternalSyncSettingError_Type_INSUFFICIENTMAXREPLICATIONSLOTS,
        SqlExternalSyncSettingError_Type_INSUFFICIENTMAXWALSENDERS,
        SqlExternalSyncSettingError_Type_INSUFFICIENTMAXWORKERPROCESSES,
        SqlExternalSyncSettingError_Type_UNSUPPORTEDEXTENSIONS,
        SqlExternalSyncSettingError_Type_INVALIDRDSLOGICALREPLICATION,
        SqlExternalSyncSettingError_Type_INVALIDLOGGINGSETUP,
        SqlExternalSyncSettingError_Type_INVALIDDBPARAM,
        SqlExternalSyncSettingError_Type_UNSUPPORTEDGTIDMODE,
        SqlExternalSyncSettingError_Type_SQLSERVERAGENTNOTRUNNING,
        SqlExternalSyncSettingError_Type_UNSUPPORTEDTABLEDEFINITION,
        SqlExternalSyncSettingError_Type_UNSUPPORTEDDEFINER,
        SqlExternalSyncSettingError_Type_SQLSERVERSERVERNAMEMISMATCH,
        SqlExternalSyncSettingError_Type_PRIMARYALREADYSETUP,
        SqlExternalSyncSettingError_Type_UNSUPPORTEDBINLOGFORMAT,
        SqlExternalSyncSettingError_Type_BINLOGRETENTIONSETTING,
        SqlExternalSyncSettingError_Type_UNSUPPORTEDSTORAGEENGINE,
        SqlExternalSyncSettingError_Type_LIMITEDSUPPORTTABLES,
        SqlExternalSyncSettingError_Type_EXISTINGDATAINREPLICA,
        ..
      ),

    -- * SqlInstancesStartExternalSyncRequest_SyncMode
    SqlInstancesStartExternalSyncRequest_SyncMode
      ( SqlInstancesStartExternalSyncRequest_SyncMode_EXTERNALSYNCMODEUNSPECIFIED,
        SqlInstancesStartExternalSyncRequest_SyncMode_Online,
        SqlInstancesStartExternalSyncRequest_SyncMode_Offline,
        ..
      ),

    -- * SqlInstancesVerifyExternalSyncSettingsRequest_SyncMode
    SqlInstancesVerifyExternalSyncSettingsRequest_SyncMode
      ( SqlInstancesVerifyExternalSyncSettingsRequest_SyncMode_EXTERNALSYNCMODEUNSPECIFIED,
        SqlInstancesVerifyExternalSyncSettingsRequest_SyncMode_Online,
        SqlInstancesVerifyExternalSyncSettingsRequest_SyncMode_Offline,
        ..
      ),

    -- * SqlOutOfDiskReport_SqlOutOfDiskState
    SqlOutOfDiskReport_SqlOutOfDiskState
      ( SqlOutOfDiskReport_SqlOutOfDiskState_SQLOUTOFDISKSTATEUNSPECIFIED,
        SqlOutOfDiskReport_SqlOutOfDiskState_Normal,
        SqlOutOfDiskReport_SqlOutOfDiskState_SOFTSHUTDOWN,
        ..
      ),

    -- * User_DualPasswordType
    User_DualPasswordType
      ( User_DualPasswordType_DUALPASSWORDTYPEUNSPECIFIED,
        User_DualPasswordType_NOMODIFYDUALPASSWORD,
        User_DualPasswordType_NODUALPASSWORD,
        User_DualPasswordType_DUALPASSWORD,
        ..
      ),

    -- * User_Type
    User_Type
      ( User_Type_BUILTIN,
        User_Type_CLOUDIAMUSER,
        User_Type_CLOUDIAMSERVICEACCOUNT,
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

-- | Code to uniquely identify the warning type.
newtype ApiWarning_Code = ApiWarning_Code {fromApiWarning_Code :: Core.Text}
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

-- | An unknown or unset warning type from Cloud SQL API.
pattern ApiWarning_Code_SQLAPIWARNINGCODEUNSPECIFIED :: ApiWarning_Code
pattern ApiWarning_Code_SQLAPIWARNINGCODEUNSPECIFIED = ApiWarning_Code "SQL_API_WARNING_CODE_UNSPECIFIED"

-- | Warning when one or more regions are not reachable. The returned result set may be incomplete.
pattern ApiWarning_Code_REGIONUNREACHABLE :: ApiWarning_Code
pattern ApiWarning_Code_REGIONUNREACHABLE = ApiWarning_Code "REGION_UNREACHABLE"

-- | Warning when user provided maxResults parameter exceeds the limit. The returned result set may be incomplete.
pattern ApiWarning_Code_MAXRESULTSEXCEEDSLIMIT :: ApiWarning_Code
pattern ApiWarning_Code_MAXRESULTSEXCEEDSLIMIT = ApiWarning_Code "MAX_RESULTS_EXCEEDS_LIMIT"

{-# COMPLETE
  ApiWarning_Code_SQLAPIWARNINGCODEUNSPECIFIED,
  ApiWarning_Code_REGIONUNREACHABLE,
  ApiWarning_Code_MAXRESULTSEXCEEDSLIMIT,
  ApiWarning_Code
  #-}

-- | The unit that \'retained_backups\' represents.
newtype BackupRetentionSettings_RetentionUnit = BackupRetentionSettings_RetentionUnit {fromBackupRetentionSettings_RetentionUnit :: Core.Text}
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

-- | Backup retention unit is unspecified, will be treated as COUNT.
pattern BackupRetentionSettings_RetentionUnit_RETENTIONUNITUNSPECIFIED :: BackupRetentionSettings_RetentionUnit
pattern BackupRetentionSettings_RetentionUnit_RETENTIONUNITUNSPECIFIED = BackupRetentionSettings_RetentionUnit "RETENTION_UNIT_UNSPECIFIED"

-- | Retention will be by count, eg. \"retain the most recent 7 backups\".
pattern BackupRetentionSettings_RetentionUnit_Count :: BackupRetentionSettings_RetentionUnit
pattern BackupRetentionSettings_RetentionUnit_Count = BackupRetentionSettings_RetentionUnit "COUNT"

{-# COMPLETE
  BackupRetentionSettings_RetentionUnit_RETENTIONUNITUNSPECIFIED,
  BackupRetentionSettings_RetentionUnit_Count,
  BackupRetentionSettings_RetentionUnit
  #-}

-- | Specifies the kind of backup, PHYSICAL or DEFAULT_SNAPSHOT.
newtype BackupRun_BackupKind = BackupRun_BackupKind {fromBackupRun_BackupKind :: Core.Text}
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

-- | This is an unknown BackupKind.
pattern BackupRun_BackupKind_SQLBACKUPKINDUNSPECIFIED :: BackupRun_BackupKind
pattern BackupRun_BackupKind_SQLBACKUPKINDUNSPECIFIED = BackupRun_BackupKind "SQL_BACKUP_KIND_UNSPECIFIED"

-- | The snapshot based backups
pattern BackupRun_BackupKind_Snapshot :: BackupRun_BackupKind
pattern BackupRun_BackupKind_Snapshot = BackupRun_BackupKind "SNAPSHOT"

-- | Physical backups
pattern BackupRun_BackupKind_Physical :: BackupRun_BackupKind
pattern BackupRun_BackupKind_Physical = BackupRun_BackupKind "PHYSICAL"

{-# COMPLETE
  BackupRun_BackupKind_SQLBACKUPKINDUNSPECIFIED,
  BackupRun_BackupKind_Snapshot,
  BackupRun_BackupKind_Physical,
  BackupRun_BackupKind
  #-}

-- | The status of this run.
newtype BackupRun_Status = BackupRun_Status {fromBackupRun_Status :: Core.Text}
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

-- | The status of the run is unknown.
pattern BackupRun_Status_SQLBACKUPRUNSTATUSUNSPECIFIED :: BackupRun_Status
pattern BackupRun_Status_SQLBACKUPRUNSTATUSUNSPECIFIED = BackupRun_Status "SQL_BACKUP_RUN_STATUS_UNSPECIFIED"

-- | The backup operation was enqueued.
pattern BackupRun_Status_Enqueued :: BackupRun_Status
pattern BackupRun_Status_Enqueued = BackupRun_Status "ENQUEUED"

-- | The backup is overdue across a given backup window. Indicates a problem. Example: Long-running operation in progress during the whole window.
pattern BackupRun_Status_Overdue :: BackupRun_Status
pattern BackupRun_Status_Overdue = BackupRun_Status "OVERDUE"

-- | The backup is in progress.
pattern BackupRun_Status_Running :: BackupRun_Status
pattern BackupRun_Status_Running = BackupRun_Status "RUNNING"

-- | The backup failed.
pattern BackupRun_Status_Failed :: BackupRun_Status
pattern BackupRun_Status_Failed = BackupRun_Status "FAILED"

-- | The backup was successful.
pattern BackupRun_Status_Successful :: BackupRun_Status
pattern BackupRun_Status_Successful = BackupRun_Status "SUCCESSFUL"

-- | The backup was skipped (without problems) for a given backup window. Example: Instance was idle.
pattern BackupRun_Status_Skipped :: BackupRun_Status
pattern BackupRun_Status_Skipped = BackupRun_Status "SKIPPED"

-- | The backup is about to be deleted.
pattern BackupRun_Status_DELETIONPENDING :: BackupRun_Status
pattern BackupRun_Status_DELETIONPENDING = BackupRun_Status "DELETION_PENDING"

-- | The backup deletion failed.
pattern BackupRun_Status_DELETIONFAILED :: BackupRun_Status
pattern BackupRun_Status_DELETIONFAILED = BackupRun_Status "DELETION_FAILED"

-- | The backup has been deleted.
pattern BackupRun_Status_Deleted :: BackupRun_Status
pattern BackupRun_Status_Deleted = BackupRun_Status "DELETED"

{-# COMPLETE
  BackupRun_Status_SQLBACKUPRUNSTATUSUNSPECIFIED,
  BackupRun_Status_Enqueued,
  BackupRun_Status_Overdue,
  BackupRun_Status_Running,
  BackupRun_Status_Failed,
  BackupRun_Status_Successful,
  BackupRun_Status_Skipped,
  BackupRun_Status_DELETIONPENDING,
  BackupRun_Status_DELETIONFAILED,
  BackupRun_Status_Deleted,
  BackupRun_Status
  #-}

-- | The type of this run; can be either \"AUTOMATED\" or \"ON/DEMAND\" or \"FINAL\". This field defaults to \"ON/DEMAND\" and is ignored, when specified for insert requests.
newtype BackupRun_Type = BackupRun_Type {fromBackupRun_Type :: Core.Text}
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

-- | This is an unknown BackupRun type.
pattern BackupRun_Type_SQLBACKUPRUNTYPEUNSPECIFIED :: BackupRun_Type
pattern BackupRun_Type_SQLBACKUPRUNTYPEUNSPECIFIED = BackupRun_Type "SQL_BACKUP_RUN_TYPE_UNSPECIFIED"

-- | The backup schedule automatically triggers a backup.
pattern BackupRun_Type_Automated :: BackupRun_Type
pattern BackupRun_Type_Automated = BackupRun_Type "AUTOMATED"

-- | The user manually triggers a backup.
pattern BackupRun_Type_ONDEMAND :: BackupRun_Type
pattern BackupRun_Type_ONDEMAND = BackupRun_Type "ON_DEMAND"

{-# COMPLETE
  BackupRun_Type_SQLBACKUPRUNTYPEUNSPECIFIED,
  BackupRun_Type_Automated,
  BackupRun_Type_ONDEMAND,
  BackupRun_Type
  #-}

-- | @SECOND_GEN@: Cloud SQL database instance. @EXTERNAL@: A database server that is not managed by Google. This property is read-only; use the @tier@ property in the @settings@ object to determine the database type.
newtype ConnectSettings_BackendType = ConnectSettings_BackendType {fromConnectSettings_BackendType :: Core.Text}
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

-- | This is an unknown backend type for instance.
pattern ConnectSettings_BackendType_SQLBACKENDTYPEUNSPECIFIED :: ConnectSettings_BackendType
pattern ConnectSettings_BackendType_SQLBACKENDTYPEUNSPECIFIED = ConnectSettings_BackendType "SQL_BACKEND_TYPE_UNSPECIFIED"

-- | V1 speckle instance.
pattern ConnectSettings_BackendType_FIRSTGEN :: ConnectSettings_BackendType
pattern ConnectSettings_BackendType_FIRSTGEN = ConnectSettings_BackendType "FIRST_GEN"

-- | V2 speckle instance.
pattern ConnectSettings_BackendType_SECONDGEN :: ConnectSettings_BackendType
pattern ConnectSettings_BackendType_SECONDGEN = ConnectSettings_BackendType "SECOND_GEN"

-- | On premises instance.
pattern ConnectSettings_BackendType_External :: ConnectSettings_BackendType
pattern ConnectSettings_BackendType_External = ConnectSettings_BackendType "EXTERNAL"

{-# COMPLETE
  ConnectSettings_BackendType_SQLBACKENDTYPEUNSPECIFIED,
  ConnectSettings_BackendType_FIRSTGEN,
  ConnectSettings_BackendType_SECONDGEN,
  ConnectSettings_BackendType_External,
  ConnectSettings_BackendType
  #-}

-- | The database engine type and version. The @databaseVersion@ field cannot be changed after instance creation. MySQL instances: @MYSQL_8_0@, @MYSQL_5_7@ (default), or @MYSQL_5_6@. PostgreSQL instances: @POSTGRES_9_6@, @POSTGRES_10@, @POSTGRES_11@, @POSTGRES_12@ (default), @POSTGRES_13@, or @POSTGRES_14@. SQL Server instances: @SQLSERVER_2017_STANDARD@ (default), @SQLSERVER_2017_ENTERPRISE@, @SQLSERVER_2017_EXPRESS@, @SQLSERVER_2017_WEB@, @SQLSERVER_2019_STANDARD@, @SQLSERVER_2019_ENTERPRISE@, @SQLSERVER_2019_EXPRESS@, or @SQLSERVER_2019_WEB@.
newtype ConnectSettings_DatabaseVersion = ConnectSettings_DatabaseVersion {fromConnectSettings_DatabaseVersion :: Core.Text}
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

-- | This is an unknown database version.
pattern ConnectSettings_DatabaseVersion_SQLDATABASEVERSIONUNSPECIFIED :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_SQLDATABASEVERSIONUNSPECIFIED = ConnectSettings_DatabaseVersion "SQL_DATABASE_VERSION_UNSPECIFIED"

-- | The database version is MySQL 5.1.
pattern ConnectSettings_DatabaseVersion_MYSQL_5_1 :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_MYSQL_5_1 = ConnectSettings_DatabaseVersion "MYSQL_5_1"

-- | The database version is MySQL 5.5.
pattern ConnectSettings_DatabaseVersion_MYSQL_5_5 :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_MYSQL_5_5 = ConnectSettings_DatabaseVersion "MYSQL_5_5"

-- | The database version is MySQL 5.6.
pattern ConnectSettings_DatabaseVersion_MYSQL_5_6 :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_MYSQL_5_6 = ConnectSettings_DatabaseVersion "MYSQL_5_6"

-- | The database version is MySQL 5.7.
pattern ConnectSettings_DatabaseVersion_MYSQL_5_7 :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_MYSQL_5_7 = ConnectSettings_DatabaseVersion "MYSQL_5_7"

-- | The database version is SQL Server 2017 Standard.
pattern ConnectSettings_DatabaseVersion_SQLSERVER2017STANDARD :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_SQLSERVER2017STANDARD = ConnectSettings_DatabaseVersion "SQLSERVER_2017_STANDARD"

-- | The database version is SQL Server 2017 Enterprise.
pattern ConnectSettings_DatabaseVersion_SQLSERVER2017ENTERPRISE :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_SQLSERVER2017ENTERPRISE = ConnectSettings_DatabaseVersion "SQLSERVER_2017_ENTERPRISE"

-- | The database version is SQL Server 2017 Express.
pattern ConnectSettings_DatabaseVersion_SQLSERVER2017EXPRESS :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_SQLSERVER2017EXPRESS = ConnectSettings_DatabaseVersion "SQLSERVER_2017_EXPRESS"

-- | The database version is SQL Server 2017 Web.
pattern ConnectSettings_DatabaseVersion_SQLSERVER2017WEB :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_SQLSERVER2017WEB = ConnectSettings_DatabaseVersion "SQLSERVER_2017_WEB"

-- | The database version is PostgreSQL 9.6.
pattern ConnectSettings_DatabaseVersion_POSTGRES_9_6 :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_POSTGRES_9_6 = ConnectSettings_DatabaseVersion "POSTGRES_9_6"

-- | The database version is PostgreSQL 10.
pattern ConnectSettings_DatabaseVersion_POSTGRES_10 :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_POSTGRES_10 = ConnectSettings_DatabaseVersion "POSTGRES_10"

-- | The database version is PostgreSQL 11.
pattern ConnectSettings_DatabaseVersion_POSTGRES_11 :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_POSTGRES_11 = ConnectSettings_DatabaseVersion "POSTGRES_11"

-- | The database version is PostgreSQL 12.
pattern ConnectSettings_DatabaseVersion_POSTGRES_12 :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_POSTGRES_12 = ConnectSettings_DatabaseVersion "POSTGRES_12"

-- | The database version is PostgreSQL 13.
pattern ConnectSettings_DatabaseVersion_POSTGRES_13 :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_POSTGRES_13 = ConnectSettings_DatabaseVersion "POSTGRES_13"

-- | The database version is PostgreSQL 14.
pattern ConnectSettings_DatabaseVersion_POSTGRES_14 :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_POSTGRES_14 = ConnectSettings_DatabaseVersion "POSTGRES_14"

-- | The database version is MySQL 8.
pattern ConnectSettings_DatabaseVersion_MYSQL_8_0 :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_MYSQL_8_0 = ConnectSettings_DatabaseVersion "MYSQL_8_0"

-- | The database major version is MySQL 8.0 and the minor version is 18.
pattern ConnectSettings_DatabaseVersion_MYSQL_8_0_18 :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_MYSQL_8_0_18 = ConnectSettings_DatabaseVersion "MYSQL_8_0_18"

-- | The database major version is MySQL 8.0 and the minor version is 26.
pattern ConnectSettings_DatabaseVersion_MYSQL_8_0_26 :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_MYSQL_8_0_26 = ConnectSettings_DatabaseVersion "MYSQL_8_0_26"

-- | The database major version is MySQL 8.0 and the minor version is 27.
pattern ConnectSettings_DatabaseVersion_MYSQL_8_0_27 :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_MYSQL_8_0_27 = ConnectSettings_DatabaseVersion "MYSQL_8_0_27"

-- | The database major version is MySQL 8.0 and the minor version is 28.
pattern ConnectSettings_DatabaseVersion_MYSQL_8_0_28 :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_MYSQL_8_0_28 = ConnectSettings_DatabaseVersion "MYSQL_8_0_28"

-- | The database major version is MySQL 8.0 and the minor version is 29.
pattern ConnectSettings_DatabaseVersion_MYSQL_8_0_29 :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_MYSQL_8_0_29 = ConnectSettings_DatabaseVersion "MYSQL_8_0_29"

-- | The database major version is MySQL 8.0 and the minor version is 30.
pattern ConnectSettings_DatabaseVersion_MYSQL_8_0_30 :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_MYSQL_8_0_30 = ConnectSettings_DatabaseVersion "MYSQL_8_0_30"

-- | The database major version is MySQL 8.0 and the minor version is 31.
pattern ConnectSettings_DatabaseVersion_MYSQL_8_0_31 :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_MYSQL_8_0_31 = ConnectSettings_DatabaseVersion "MYSQL_8_0_31"

-- | The database major version is MySQL 8.0 and the minor version is 32.
pattern ConnectSettings_DatabaseVersion_MYSQL_8_0_32 :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_MYSQL_8_0_32 = ConnectSettings_DatabaseVersion "MYSQL_8_0_32"

-- | The database version is SQL Server 2019 Standard.
pattern ConnectSettings_DatabaseVersion_SQLSERVER2019STANDARD :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_SQLSERVER2019STANDARD = ConnectSettings_DatabaseVersion "SQLSERVER_2019_STANDARD"

-- | The database version is SQL Server 2019 Enterprise.
pattern ConnectSettings_DatabaseVersion_SQLSERVER2019ENTERPRISE :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_SQLSERVER2019ENTERPRISE = ConnectSettings_DatabaseVersion "SQLSERVER_2019_ENTERPRISE"

-- | The database version is SQL Server 2019 Express.
pattern ConnectSettings_DatabaseVersion_SQLSERVER2019EXPRESS :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_SQLSERVER2019EXPRESS = ConnectSettings_DatabaseVersion "SQLSERVER_2019_EXPRESS"

-- | The database version is SQL Server 2019 Web.
pattern ConnectSettings_DatabaseVersion_SQLSERVER2019WEB :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_SQLSERVER2019WEB = ConnectSettings_DatabaseVersion "SQLSERVER_2019_WEB"

{-# COMPLETE
  ConnectSettings_DatabaseVersion_SQLDATABASEVERSIONUNSPECIFIED,
  ConnectSettings_DatabaseVersion_MYSQL_5_1,
  ConnectSettings_DatabaseVersion_MYSQL_5_5,
  ConnectSettings_DatabaseVersion_MYSQL_5_6,
  ConnectSettings_DatabaseVersion_MYSQL_5_7,
  ConnectSettings_DatabaseVersion_SQLSERVER2017STANDARD,
  ConnectSettings_DatabaseVersion_SQLSERVER2017ENTERPRISE,
  ConnectSettings_DatabaseVersion_SQLSERVER2017EXPRESS,
  ConnectSettings_DatabaseVersion_SQLSERVER2017WEB,
  ConnectSettings_DatabaseVersion_POSTGRES_9_6,
  ConnectSettings_DatabaseVersion_POSTGRES_10,
  ConnectSettings_DatabaseVersion_POSTGRES_11,
  ConnectSettings_DatabaseVersion_POSTGRES_12,
  ConnectSettings_DatabaseVersion_POSTGRES_13,
  ConnectSettings_DatabaseVersion_POSTGRES_14,
  ConnectSettings_DatabaseVersion_MYSQL_8_0,
  ConnectSettings_DatabaseVersion_MYSQL_8_0_18,
  ConnectSettings_DatabaseVersion_MYSQL_8_0_26,
  ConnectSettings_DatabaseVersion_MYSQL_8_0_27,
  ConnectSettings_DatabaseVersion_MYSQL_8_0_28,
  ConnectSettings_DatabaseVersion_MYSQL_8_0_29,
  ConnectSettings_DatabaseVersion_MYSQL_8_0_30,
  ConnectSettings_DatabaseVersion_MYSQL_8_0_31,
  ConnectSettings_DatabaseVersion_MYSQL_8_0_32,
  ConnectSettings_DatabaseVersion_SQLSERVER2019STANDARD,
  ConnectSettings_DatabaseVersion_SQLSERVER2019ENTERPRISE,
  ConnectSettings_DatabaseVersion_SQLSERVER2019EXPRESS,
  ConnectSettings_DatabaseVersion_SQLSERVER2019WEB,
  ConnectSettings_DatabaseVersion
  #-}

-- | The backend type. @SECOND_GEN@: Cloud SQL database instance. @EXTERNAL@: A database server that is not managed by Google. This property is read-only; use the @tier@ property in the @settings@ object to determine the database type.
newtype DatabaseInstance_BackendType = DatabaseInstance_BackendType {fromDatabaseInstance_BackendType :: Core.Text}
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

-- | This is an unknown backend type for instance.
pattern DatabaseInstance_BackendType_SQLBACKENDTYPEUNSPECIFIED :: DatabaseInstance_BackendType
pattern DatabaseInstance_BackendType_SQLBACKENDTYPEUNSPECIFIED = DatabaseInstance_BackendType "SQL_BACKEND_TYPE_UNSPECIFIED"

-- | V1 speckle instance.
pattern DatabaseInstance_BackendType_FIRSTGEN :: DatabaseInstance_BackendType
pattern DatabaseInstance_BackendType_FIRSTGEN = DatabaseInstance_BackendType "FIRST_GEN"

-- | V2 speckle instance.
pattern DatabaseInstance_BackendType_SECONDGEN :: DatabaseInstance_BackendType
pattern DatabaseInstance_BackendType_SECONDGEN = DatabaseInstance_BackendType "SECOND_GEN"

-- | On premises instance.
pattern DatabaseInstance_BackendType_External :: DatabaseInstance_BackendType
pattern DatabaseInstance_BackendType_External = DatabaseInstance_BackendType "EXTERNAL"

{-# COMPLETE
  DatabaseInstance_BackendType_SQLBACKENDTYPEUNSPECIFIED,
  DatabaseInstance_BackendType_FIRSTGEN,
  DatabaseInstance_BackendType_SECONDGEN,
  DatabaseInstance_BackendType_External,
  DatabaseInstance_BackendType
  #-}

-- | The database engine type and version. The @databaseVersion@ field cannot be changed after instance creation.
newtype DatabaseInstance_DatabaseVersion = DatabaseInstance_DatabaseVersion {fromDatabaseInstance_DatabaseVersion :: Core.Text}
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

-- | This is an unknown database version.
pattern DatabaseInstance_DatabaseVersion_SQLDATABASEVERSIONUNSPECIFIED :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_SQLDATABASEVERSIONUNSPECIFIED = DatabaseInstance_DatabaseVersion "SQL_DATABASE_VERSION_UNSPECIFIED"

-- | The database version is MySQL 5.1.
pattern DatabaseInstance_DatabaseVersion_MYSQL_5_1 :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_MYSQL_5_1 = DatabaseInstance_DatabaseVersion "MYSQL_5_1"

-- | The database version is MySQL 5.5.
pattern DatabaseInstance_DatabaseVersion_MYSQL_5_5 :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_MYSQL_5_5 = DatabaseInstance_DatabaseVersion "MYSQL_5_5"

-- | The database version is MySQL 5.6.
pattern DatabaseInstance_DatabaseVersion_MYSQL_5_6 :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_MYSQL_5_6 = DatabaseInstance_DatabaseVersion "MYSQL_5_6"

-- | The database version is MySQL 5.7.
pattern DatabaseInstance_DatabaseVersion_MYSQL_5_7 :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_MYSQL_5_7 = DatabaseInstance_DatabaseVersion "MYSQL_5_7"

-- | The database version is SQL Server 2017 Standard.
pattern DatabaseInstance_DatabaseVersion_SQLSERVER2017STANDARD :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_SQLSERVER2017STANDARD = DatabaseInstance_DatabaseVersion "SQLSERVER_2017_STANDARD"

-- | The database version is SQL Server 2017 Enterprise.
pattern DatabaseInstance_DatabaseVersion_SQLSERVER2017ENTERPRISE :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_SQLSERVER2017ENTERPRISE = DatabaseInstance_DatabaseVersion "SQLSERVER_2017_ENTERPRISE"

-- | The database version is SQL Server 2017 Express.
pattern DatabaseInstance_DatabaseVersion_SQLSERVER2017EXPRESS :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_SQLSERVER2017EXPRESS = DatabaseInstance_DatabaseVersion "SQLSERVER_2017_EXPRESS"

-- | The database version is SQL Server 2017 Web.
pattern DatabaseInstance_DatabaseVersion_SQLSERVER2017WEB :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_SQLSERVER2017WEB = DatabaseInstance_DatabaseVersion "SQLSERVER_2017_WEB"

-- | The database version is PostgreSQL 9.6.
pattern DatabaseInstance_DatabaseVersion_POSTGRES_9_6 :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_POSTGRES_9_6 = DatabaseInstance_DatabaseVersion "POSTGRES_9_6"

-- | The database version is PostgreSQL 10.
pattern DatabaseInstance_DatabaseVersion_POSTGRES_10 :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_POSTGRES_10 = DatabaseInstance_DatabaseVersion "POSTGRES_10"

-- | The database version is PostgreSQL 11.
pattern DatabaseInstance_DatabaseVersion_POSTGRES_11 :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_POSTGRES_11 = DatabaseInstance_DatabaseVersion "POSTGRES_11"

-- | The database version is PostgreSQL 12.
pattern DatabaseInstance_DatabaseVersion_POSTGRES_12 :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_POSTGRES_12 = DatabaseInstance_DatabaseVersion "POSTGRES_12"

-- | The database version is PostgreSQL 13.
pattern DatabaseInstance_DatabaseVersion_POSTGRES_13 :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_POSTGRES_13 = DatabaseInstance_DatabaseVersion "POSTGRES_13"

-- | The database version is PostgreSQL 14.
pattern DatabaseInstance_DatabaseVersion_POSTGRES_14 :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_POSTGRES_14 = DatabaseInstance_DatabaseVersion "POSTGRES_14"

-- | The database version is MySQL 8.
pattern DatabaseInstance_DatabaseVersion_MYSQL_8_0 :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_MYSQL_8_0 = DatabaseInstance_DatabaseVersion "MYSQL_8_0"

-- | The database major version is MySQL 8.0 and the minor version is 18.
pattern DatabaseInstance_DatabaseVersion_MYSQL_8_0_18 :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_MYSQL_8_0_18 = DatabaseInstance_DatabaseVersion "MYSQL_8_0_18"

-- | The database major version is MySQL 8.0 and the minor version is 26.
pattern DatabaseInstance_DatabaseVersion_MYSQL_8_0_26 :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_MYSQL_8_0_26 = DatabaseInstance_DatabaseVersion "MYSQL_8_0_26"

-- | The database major version is MySQL 8.0 and the minor version is 27.
pattern DatabaseInstance_DatabaseVersion_MYSQL_8_0_27 :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_MYSQL_8_0_27 = DatabaseInstance_DatabaseVersion "MYSQL_8_0_27"

-- | The database major version is MySQL 8.0 and the minor version is 28.
pattern DatabaseInstance_DatabaseVersion_MYSQL_8_0_28 :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_MYSQL_8_0_28 = DatabaseInstance_DatabaseVersion "MYSQL_8_0_28"

-- | The database major version is MySQL 8.0 and the minor version is 29.
pattern DatabaseInstance_DatabaseVersion_MYSQL_8_0_29 :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_MYSQL_8_0_29 = DatabaseInstance_DatabaseVersion "MYSQL_8_0_29"

-- | The database major version is MySQL 8.0 and the minor version is 30.
pattern DatabaseInstance_DatabaseVersion_MYSQL_8_0_30 :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_MYSQL_8_0_30 = DatabaseInstance_DatabaseVersion "MYSQL_8_0_30"

-- | The database major version is MySQL 8.0 and the minor version is 31.
pattern DatabaseInstance_DatabaseVersion_MYSQL_8_0_31 :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_MYSQL_8_0_31 = DatabaseInstance_DatabaseVersion "MYSQL_8_0_31"

-- | The database major version is MySQL 8.0 and the minor version is 32.
pattern DatabaseInstance_DatabaseVersion_MYSQL_8_0_32 :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_MYSQL_8_0_32 = DatabaseInstance_DatabaseVersion "MYSQL_8_0_32"

-- | The database version is SQL Server 2019 Standard.
pattern DatabaseInstance_DatabaseVersion_SQLSERVER2019STANDARD :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_SQLSERVER2019STANDARD = DatabaseInstance_DatabaseVersion "SQLSERVER_2019_STANDARD"

-- | The database version is SQL Server 2019 Enterprise.
pattern DatabaseInstance_DatabaseVersion_SQLSERVER2019ENTERPRISE :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_SQLSERVER2019ENTERPRISE = DatabaseInstance_DatabaseVersion "SQLSERVER_2019_ENTERPRISE"

-- | The database version is SQL Server 2019 Express.
pattern DatabaseInstance_DatabaseVersion_SQLSERVER2019EXPRESS :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_SQLSERVER2019EXPRESS = DatabaseInstance_DatabaseVersion "SQLSERVER_2019_EXPRESS"

-- | The database version is SQL Server 2019 Web.
pattern DatabaseInstance_DatabaseVersion_SQLSERVER2019WEB :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_SQLSERVER2019WEB = DatabaseInstance_DatabaseVersion "SQLSERVER_2019_WEB"

{-# COMPLETE
  DatabaseInstance_DatabaseVersion_SQLDATABASEVERSIONUNSPECIFIED,
  DatabaseInstance_DatabaseVersion_MYSQL_5_1,
  DatabaseInstance_DatabaseVersion_MYSQL_5_5,
  DatabaseInstance_DatabaseVersion_MYSQL_5_6,
  DatabaseInstance_DatabaseVersion_MYSQL_5_7,
  DatabaseInstance_DatabaseVersion_SQLSERVER2017STANDARD,
  DatabaseInstance_DatabaseVersion_SQLSERVER2017ENTERPRISE,
  DatabaseInstance_DatabaseVersion_SQLSERVER2017EXPRESS,
  DatabaseInstance_DatabaseVersion_SQLSERVER2017WEB,
  DatabaseInstance_DatabaseVersion_POSTGRES_9_6,
  DatabaseInstance_DatabaseVersion_POSTGRES_10,
  DatabaseInstance_DatabaseVersion_POSTGRES_11,
  DatabaseInstance_DatabaseVersion_POSTGRES_12,
  DatabaseInstance_DatabaseVersion_POSTGRES_13,
  DatabaseInstance_DatabaseVersion_POSTGRES_14,
  DatabaseInstance_DatabaseVersion_MYSQL_8_0,
  DatabaseInstance_DatabaseVersion_MYSQL_8_0_18,
  DatabaseInstance_DatabaseVersion_MYSQL_8_0_26,
  DatabaseInstance_DatabaseVersion_MYSQL_8_0_27,
  DatabaseInstance_DatabaseVersion_MYSQL_8_0_28,
  DatabaseInstance_DatabaseVersion_MYSQL_8_0_29,
  DatabaseInstance_DatabaseVersion_MYSQL_8_0_30,
  DatabaseInstance_DatabaseVersion_MYSQL_8_0_31,
  DatabaseInstance_DatabaseVersion_MYSQL_8_0_32,
  DatabaseInstance_DatabaseVersion_SQLSERVER2019STANDARD,
  DatabaseInstance_DatabaseVersion_SQLSERVER2019ENTERPRISE,
  DatabaseInstance_DatabaseVersion_SQLSERVER2019EXPRESS,
  DatabaseInstance_DatabaseVersion_SQLSERVER2019WEB,
  DatabaseInstance_DatabaseVersion
  #-}

-- | The instance type.
newtype DatabaseInstance_InstanceType = DatabaseInstance_InstanceType {fromDatabaseInstance_InstanceType :: Core.Text}
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

-- | This is an unknown Cloud SQL instance type.
pattern DatabaseInstance_InstanceType_SQLINSTANCETYPEUNSPECIFIED :: DatabaseInstance_InstanceType
pattern DatabaseInstance_InstanceType_SQLINSTANCETYPEUNSPECIFIED = DatabaseInstance_InstanceType "SQL_INSTANCE_TYPE_UNSPECIFIED"

-- | A regular Cloud SQL instance that is not replicating from a primary instance.
pattern DatabaseInstance_InstanceType_CLOUDSQLINSTANCE :: DatabaseInstance_InstanceType
pattern DatabaseInstance_InstanceType_CLOUDSQLINSTANCE = DatabaseInstance_InstanceType "CLOUD_SQL_INSTANCE"

-- | An instance running on the customer\'s premises that is not managed by Cloud SQL.
pattern DatabaseInstance_InstanceType_ONPREMISESINSTANCE :: DatabaseInstance_InstanceType
pattern DatabaseInstance_InstanceType_ONPREMISESINSTANCE = DatabaseInstance_InstanceType "ON_PREMISES_INSTANCE"

-- | A Cloud SQL instance acting as a read-replica.
pattern DatabaseInstance_InstanceType_READREPLICAINSTANCE :: DatabaseInstance_InstanceType
pattern DatabaseInstance_InstanceType_READREPLICAINSTANCE = DatabaseInstance_InstanceType "READ_REPLICA_INSTANCE"

{-# COMPLETE
  DatabaseInstance_InstanceType_SQLINSTANCETYPEUNSPECIFIED,
  DatabaseInstance_InstanceType_CLOUDSQLINSTANCE,
  DatabaseInstance_InstanceType_ONPREMISESINSTANCE,
  DatabaseInstance_InstanceType_READREPLICAINSTANCE,
  DatabaseInstance_InstanceType
  #-}

-- | The current serving state of the Cloud SQL instance.
newtype DatabaseInstance_State = DatabaseInstance_State {fromDatabaseInstance_State :: Core.Text}
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

-- | The state of the instance is unknown.
pattern DatabaseInstance_State_SQLINSTANCESTATEUNSPECIFIED :: DatabaseInstance_State
pattern DatabaseInstance_State_SQLINSTANCESTATEUNSPECIFIED = DatabaseInstance_State "SQL_INSTANCE_STATE_UNSPECIFIED"

-- | The instance is running, or has been stopped by owner.
pattern DatabaseInstance_State_Runnable :: DatabaseInstance_State
pattern DatabaseInstance_State_Runnable = DatabaseInstance_State "RUNNABLE"

-- | The instance is not available, for example due to problems with billing.
pattern DatabaseInstance_State_Suspended :: DatabaseInstance_State
pattern DatabaseInstance_State_Suspended = DatabaseInstance_State "SUSPENDED"

-- | The instance is being deleted.
pattern DatabaseInstance_State_PENDINGDELETE :: DatabaseInstance_State
pattern DatabaseInstance_State_PENDINGDELETE = DatabaseInstance_State "PENDING_DELETE"

-- | The instance is being created.
pattern DatabaseInstance_State_PENDINGCREATE :: DatabaseInstance_State
pattern DatabaseInstance_State_PENDINGCREATE = DatabaseInstance_State "PENDING_CREATE"

-- | The instance is down for maintenance.
pattern DatabaseInstance_State_Maintenance :: DatabaseInstance_State
pattern DatabaseInstance_State_Maintenance = DatabaseInstance_State "MAINTENANCE"

-- | The creation of the instance failed or a fatal error occurred during maintenance.
pattern DatabaseInstance_State_Failed :: DatabaseInstance_State
pattern DatabaseInstance_State_Failed = DatabaseInstance_State "FAILED"

-- | Deprecated
pattern DatabaseInstance_State_ONLINEMAINTENANCE :: DatabaseInstance_State
pattern DatabaseInstance_State_ONLINEMAINTENANCE = DatabaseInstance_State "ONLINE_MAINTENANCE"

{-# COMPLETE
  DatabaseInstance_State_SQLINSTANCESTATEUNSPECIFIED,
  DatabaseInstance_State_Runnable,
  DatabaseInstance_State_Suspended,
  DatabaseInstance_State_PENDINGDELETE,
  DatabaseInstance_State_PENDINGCREATE,
  DatabaseInstance_State_Maintenance,
  DatabaseInstance_State_Failed,
  DatabaseInstance_State_ONLINEMAINTENANCE,
  DatabaseInstance_State
  #-}

newtype DatabaseInstance_SuspensionReasonItem = DatabaseInstance_SuspensionReasonItem {fromDatabaseInstance_SuspensionReasonItem :: Core.Text}
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

-- | This is an unknown suspension reason.
pattern DatabaseInstance_SuspensionReasonItem_SQLSUSPENSIONREASONUNSPECIFIED :: DatabaseInstance_SuspensionReasonItem
pattern DatabaseInstance_SuspensionReasonItem_SQLSUSPENSIONREASONUNSPECIFIED = DatabaseInstance_SuspensionReasonItem "SQL_SUSPENSION_REASON_UNSPECIFIED"

-- | The instance is suspended due to billing issues (for example:, GCP account issue)
pattern DatabaseInstance_SuspensionReasonItem_BILLINGISSUE :: DatabaseInstance_SuspensionReasonItem
pattern DatabaseInstance_SuspensionReasonItem_BILLINGISSUE = DatabaseInstance_SuspensionReasonItem "BILLING_ISSUE"

-- | The instance is suspended due to illegal content (for example:, child pornography, copyrighted material, etc.).
pattern DatabaseInstance_SuspensionReasonItem_LEGALISSUE :: DatabaseInstance_SuspensionReasonItem
pattern DatabaseInstance_SuspensionReasonItem_LEGALISSUE = DatabaseInstance_SuspensionReasonItem "LEGAL_ISSUE"

-- | The instance is causing operational issues (for example:, causing the database to crash).
pattern DatabaseInstance_SuspensionReasonItem_OPERATIONALISSUE :: DatabaseInstance_SuspensionReasonItem
pattern DatabaseInstance_SuspensionReasonItem_OPERATIONALISSUE = DatabaseInstance_SuspensionReasonItem "OPERATIONAL_ISSUE"

-- | The KMS key used by the instance is either revoked or denied access to
pattern DatabaseInstance_SuspensionReasonItem_KMSKEYISSUE :: DatabaseInstance_SuspensionReasonItem
pattern DatabaseInstance_SuspensionReasonItem_KMSKEYISSUE = DatabaseInstance_SuspensionReasonItem "KMS_KEY_ISSUE"

{-# COMPLETE
  DatabaseInstance_SuspensionReasonItem_SQLSUSPENSIONREASONUNSPECIFIED,
  DatabaseInstance_SuspensionReasonItem_BILLINGISSUE,
  DatabaseInstance_SuspensionReasonItem_LEGALISSUE,
  DatabaseInstance_SuspensionReasonItem_OPERATIONALISSUE,
  DatabaseInstance_SuspensionReasonItem_KMSKEYISSUE,
  DatabaseInstance_SuspensionReasonItem
  #-}

-- | The file type for the specified uri.
newtype ExportContext_FileType = ExportContext_FileType {fromExportContext_FileType :: Core.Text}
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

-- | Unknown file type.
pattern ExportContext_FileType_SQLFILETYPEUNSPECIFIED :: ExportContext_FileType
pattern ExportContext_FileType_SQLFILETYPEUNSPECIFIED = ExportContext_FileType "SQL_FILE_TYPE_UNSPECIFIED"

-- | File containing SQL statements.
pattern ExportContext_FileType_Sql :: ExportContext_FileType
pattern ExportContext_FileType_Sql = ExportContext_FileType "SQL"

-- | File in CSV format.
pattern ExportContext_FileType_Csv :: ExportContext_FileType
pattern ExportContext_FileType_Csv = ExportContext_FileType "CSV"

-- |
pattern ExportContext_FileType_Bak :: ExportContext_FileType
pattern ExportContext_FileType_Bak = ExportContext_FileType "BAK"

{-# COMPLETE
  ExportContext_FileType_SQLFILETYPEUNSPECIFIED,
  ExportContext_FileType_Sql,
  ExportContext_FileType_Csv,
  ExportContext_FileType_Bak,
  ExportContext_FileType
  #-}

newtype Flag_AppliesToItem = Flag_AppliesToItem {fromFlag_AppliesToItem :: Core.Text}
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

-- | This is an unknown database version.
pattern Flag_AppliesToItem_SQLDATABASEVERSIONUNSPECIFIED :: Flag_AppliesToItem
pattern Flag_AppliesToItem_SQLDATABASEVERSIONUNSPECIFIED = Flag_AppliesToItem "SQL_DATABASE_VERSION_UNSPECIFIED"

-- | The database version is MySQL 5.1.
pattern Flag_AppliesToItem_MYSQL_5_1 :: Flag_AppliesToItem
pattern Flag_AppliesToItem_MYSQL_5_1 = Flag_AppliesToItem "MYSQL_5_1"

-- | The database version is MySQL 5.5.
pattern Flag_AppliesToItem_MYSQL_5_5 :: Flag_AppliesToItem
pattern Flag_AppliesToItem_MYSQL_5_5 = Flag_AppliesToItem "MYSQL_5_5"

-- | The database version is MySQL 5.6.
pattern Flag_AppliesToItem_MYSQL_5_6 :: Flag_AppliesToItem
pattern Flag_AppliesToItem_MYSQL_5_6 = Flag_AppliesToItem "MYSQL_5_6"

-- | The database version is MySQL 5.7.
pattern Flag_AppliesToItem_MYSQL_5_7 :: Flag_AppliesToItem
pattern Flag_AppliesToItem_MYSQL_5_7 = Flag_AppliesToItem "MYSQL_5_7"

-- | The database version is SQL Server 2017 Standard.
pattern Flag_AppliesToItem_SQLSERVER2017STANDARD :: Flag_AppliesToItem
pattern Flag_AppliesToItem_SQLSERVER2017STANDARD = Flag_AppliesToItem "SQLSERVER_2017_STANDARD"

-- | The database version is SQL Server 2017 Enterprise.
pattern Flag_AppliesToItem_SQLSERVER2017ENTERPRISE :: Flag_AppliesToItem
pattern Flag_AppliesToItem_SQLSERVER2017ENTERPRISE = Flag_AppliesToItem "SQLSERVER_2017_ENTERPRISE"

-- | The database version is SQL Server 2017 Express.
pattern Flag_AppliesToItem_SQLSERVER2017EXPRESS :: Flag_AppliesToItem
pattern Flag_AppliesToItem_SQLSERVER2017EXPRESS = Flag_AppliesToItem "SQLSERVER_2017_EXPRESS"

-- | The database version is SQL Server 2017 Web.
pattern Flag_AppliesToItem_SQLSERVER2017WEB :: Flag_AppliesToItem
pattern Flag_AppliesToItem_SQLSERVER2017WEB = Flag_AppliesToItem "SQLSERVER_2017_WEB"

-- | The database version is PostgreSQL 9.6.
pattern Flag_AppliesToItem_POSTGRES_9_6 :: Flag_AppliesToItem
pattern Flag_AppliesToItem_POSTGRES_9_6 = Flag_AppliesToItem "POSTGRES_9_6"

-- | The database version is PostgreSQL 10.
pattern Flag_AppliesToItem_POSTGRES_10 :: Flag_AppliesToItem
pattern Flag_AppliesToItem_POSTGRES_10 = Flag_AppliesToItem "POSTGRES_10"

-- | The database version is PostgreSQL 11.
pattern Flag_AppliesToItem_POSTGRES_11 :: Flag_AppliesToItem
pattern Flag_AppliesToItem_POSTGRES_11 = Flag_AppliesToItem "POSTGRES_11"

-- | The database version is PostgreSQL 12.
pattern Flag_AppliesToItem_POSTGRES_12 :: Flag_AppliesToItem
pattern Flag_AppliesToItem_POSTGRES_12 = Flag_AppliesToItem "POSTGRES_12"

-- | The database version is PostgreSQL 13.
pattern Flag_AppliesToItem_POSTGRES_13 :: Flag_AppliesToItem
pattern Flag_AppliesToItem_POSTGRES_13 = Flag_AppliesToItem "POSTGRES_13"

-- | The database version is PostgreSQL 14.
pattern Flag_AppliesToItem_POSTGRES_14 :: Flag_AppliesToItem
pattern Flag_AppliesToItem_POSTGRES_14 = Flag_AppliesToItem "POSTGRES_14"

-- | The database version is MySQL 8.
pattern Flag_AppliesToItem_MYSQL_8_0 :: Flag_AppliesToItem
pattern Flag_AppliesToItem_MYSQL_8_0 = Flag_AppliesToItem "MYSQL_8_0"

-- | The database major version is MySQL 8.0 and the minor version is 18.
pattern Flag_AppliesToItem_MYSQL_8_0_18 :: Flag_AppliesToItem
pattern Flag_AppliesToItem_MYSQL_8_0_18 = Flag_AppliesToItem "MYSQL_8_0_18"

-- | The database major version is MySQL 8.0 and the minor version is 26.
pattern Flag_AppliesToItem_MYSQL_8_0_26 :: Flag_AppliesToItem
pattern Flag_AppliesToItem_MYSQL_8_0_26 = Flag_AppliesToItem "MYSQL_8_0_26"

-- | The database major version is MySQL 8.0 and the minor version is 27.
pattern Flag_AppliesToItem_MYSQL_8_0_27 :: Flag_AppliesToItem
pattern Flag_AppliesToItem_MYSQL_8_0_27 = Flag_AppliesToItem "MYSQL_8_0_27"

-- | The database major version is MySQL 8.0 and the minor version is 28.
pattern Flag_AppliesToItem_MYSQL_8_0_28 :: Flag_AppliesToItem
pattern Flag_AppliesToItem_MYSQL_8_0_28 = Flag_AppliesToItem "MYSQL_8_0_28"

-- | The database major version is MySQL 8.0 and the minor version is 29.
pattern Flag_AppliesToItem_MYSQL_8_0_29 :: Flag_AppliesToItem
pattern Flag_AppliesToItem_MYSQL_8_0_29 = Flag_AppliesToItem "MYSQL_8_0_29"

-- | The database major version is MySQL 8.0 and the minor version is 30.
pattern Flag_AppliesToItem_MYSQL_8_0_30 :: Flag_AppliesToItem
pattern Flag_AppliesToItem_MYSQL_8_0_30 = Flag_AppliesToItem "MYSQL_8_0_30"

-- | The database major version is MySQL 8.0 and the minor version is 31.
pattern Flag_AppliesToItem_MYSQL_8_0_31 :: Flag_AppliesToItem
pattern Flag_AppliesToItem_MYSQL_8_0_31 = Flag_AppliesToItem "MYSQL_8_0_31"

-- | The database major version is MySQL 8.0 and the minor version is 32.
pattern Flag_AppliesToItem_MYSQL_8_0_32 :: Flag_AppliesToItem
pattern Flag_AppliesToItem_MYSQL_8_0_32 = Flag_AppliesToItem "MYSQL_8_0_32"

-- | The database version is SQL Server 2019 Standard.
pattern Flag_AppliesToItem_SQLSERVER2019STANDARD :: Flag_AppliesToItem
pattern Flag_AppliesToItem_SQLSERVER2019STANDARD = Flag_AppliesToItem "SQLSERVER_2019_STANDARD"

-- | The database version is SQL Server 2019 Enterprise.
pattern Flag_AppliesToItem_SQLSERVER2019ENTERPRISE :: Flag_AppliesToItem
pattern Flag_AppliesToItem_SQLSERVER2019ENTERPRISE = Flag_AppliesToItem "SQLSERVER_2019_ENTERPRISE"

-- | The database version is SQL Server 2019 Express.
pattern Flag_AppliesToItem_SQLSERVER2019EXPRESS :: Flag_AppliesToItem
pattern Flag_AppliesToItem_SQLSERVER2019EXPRESS = Flag_AppliesToItem "SQLSERVER_2019_EXPRESS"

-- | The database version is SQL Server 2019 Web.
pattern Flag_AppliesToItem_SQLSERVER2019WEB :: Flag_AppliesToItem
pattern Flag_AppliesToItem_SQLSERVER2019WEB = Flag_AppliesToItem "SQLSERVER_2019_WEB"

{-# COMPLETE
  Flag_AppliesToItem_SQLDATABASEVERSIONUNSPECIFIED,
  Flag_AppliesToItem_MYSQL_5_1,
  Flag_AppliesToItem_MYSQL_5_5,
  Flag_AppliesToItem_MYSQL_5_6,
  Flag_AppliesToItem_MYSQL_5_7,
  Flag_AppliesToItem_SQLSERVER2017STANDARD,
  Flag_AppliesToItem_SQLSERVER2017ENTERPRISE,
  Flag_AppliesToItem_SQLSERVER2017EXPRESS,
  Flag_AppliesToItem_SQLSERVER2017WEB,
  Flag_AppliesToItem_POSTGRES_9_6,
  Flag_AppliesToItem_POSTGRES_10,
  Flag_AppliesToItem_POSTGRES_11,
  Flag_AppliesToItem_POSTGRES_12,
  Flag_AppliesToItem_POSTGRES_13,
  Flag_AppliesToItem_POSTGRES_14,
  Flag_AppliesToItem_MYSQL_8_0,
  Flag_AppliesToItem_MYSQL_8_0_18,
  Flag_AppliesToItem_MYSQL_8_0_26,
  Flag_AppliesToItem_MYSQL_8_0_27,
  Flag_AppliesToItem_MYSQL_8_0_28,
  Flag_AppliesToItem_MYSQL_8_0_29,
  Flag_AppliesToItem_MYSQL_8_0_30,
  Flag_AppliesToItem_MYSQL_8_0_31,
  Flag_AppliesToItem_MYSQL_8_0_32,
  Flag_AppliesToItem_SQLSERVER2019STANDARD,
  Flag_AppliesToItem_SQLSERVER2019ENTERPRISE,
  Flag_AppliesToItem_SQLSERVER2019EXPRESS,
  Flag_AppliesToItem_SQLSERVER2019WEB,
  Flag_AppliesToItem
  #-}

-- | The type of the flag. Flags are typed to being @BOOLEAN@, @STRING@, @INTEGER@ or @NONE@. @NONE@ is used for flags that do not take a value, such as @skip_grant_tables@.
newtype Flag_Type = Flag_Type {fromFlag_Type :: Core.Text}
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

-- | This is an unknown flag type.
pattern Flag_Type_SQLFLAGTYPEUNSPECIFIED :: Flag_Type
pattern Flag_Type_SQLFLAGTYPEUNSPECIFIED = Flag_Type "SQL_FLAG_TYPE_UNSPECIFIED"

-- | Boolean type flag.
pattern Flag_Type_Boolean :: Flag_Type
pattern Flag_Type_Boolean = Flag_Type "BOOLEAN"

-- | String type flag.
pattern Flag_Type_String :: Flag_Type
pattern Flag_Type_String = Flag_Type "STRING"

-- | Integer type flag.
pattern Flag_Type_Integer :: Flag_Type
pattern Flag_Type_Integer = Flag_Type "INTEGER"

-- | Flag type used for a server startup option.
pattern Flag_Type_None :: Flag_Type
pattern Flag_Type_None = Flag_Type "NONE"

-- | Type introduced specially for MySQL TimeZone offset. Accept a string value with the format [-12:59, 13:00].
pattern Flag_Type_MYSQLTIMEZONEOFFSET :: Flag_Type
pattern Flag_Type_MYSQLTIMEZONEOFFSET = Flag_Type "MYSQL_TIMEZONE_OFFSET"

-- | Float type flag.
pattern Flag_Type_Float :: Flag_Type
pattern Flag_Type_Float = Flag_Type "FLOAT"

-- | Comma-separated list of the strings in a SqlFlagType enum.
pattern Flag_Type_REPEATEDSTRING :: Flag_Type
pattern Flag_Type_REPEATEDSTRING = Flag_Type "REPEATED_STRING"

{-# COMPLETE
  Flag_Type_SQLFLAGTYPEUNSPECIFIED,
  Flag_Type_Boolean,
  Flag_Type_String,
  Flag_Type_Integer,
  Flag_Type_None,
  Flag_Type_MYSQLTIMEZONEOFFSET,
  Flag_Type_Float,
  Flag_Type_REPEATEDSTRING,
  Flag_Type
  #-}

-- | The file type for the specified uri.\`SQL@: The file contains SQL statements. \\@CSV\`: The file contains CSV data.
newtype ImportContext_FileType = ImportContext_FileType {fromImportContext_FileType :: Core.Text}
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

-- | Unknown file type.
pattern ImportContext_FileType_SQLFILETYPEUNSPECIFIED :: ImportContext_FileType
pattern ImportContext_FileType_SQLFILETYPEUNSPECIFIED = ImportContext_FileType "SQL_FILE_TYPE_UNSPECIFIED"

-- | File containing SQL statements.
pattern ImportContext_FileType_Sql :: ImportContext_FileType
pattern ImportContext_FileType_Sql = ImportContext_FileType "SQL"

-- | File in CSV format.
pattern ImportContext_FileType_Csv :: ImportContext_FileType
pattern ImportContext_FileType_Csv = ImportContext_FileType "CSV"

-- |
pattern ImportContext_FileType_Bak :: ImportContext_FileType
pattern ImportContext_FileType_Bak = ImportContext_FileType "BAK"

{-# COMPLETE
  ImportContext_FileType_SQLFILETYPEUNSPECIFIED,
  ImportContext_FileType_Sql,
  ImportContext_FileType_Csv,
  ImportContext_FileType_Bak,
  ImportContext_FileType
  #-}

-- | The type of this IP address. A @PRIMARY@ address is a public address that can accept incoming connections. A @PRIVATE@ address is a private address that can accept incoming connections. An @OUTGOING@ address is the source address of connections originating from the instance, if supported.
newtype IpMapping_Type = IpMapping_Type {fromIpMapping_Type :: Core.Text}
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

-- | This is an unknown IP address type.
pattern IpMapping_Type_SQLIPADDRESSTYPEUNSPECIFIED :: IpMapping_Type
pattern IpMapping_Type_SQLIPADDRESSTYPEUNSPECIFIED = IpMapping_Type "SQL_IP_ADDRESS_TYPE_UNSPECIFIED"

-- | IP address the customer is supposed to connect to. Usually this is the load balancer\'s IP address
pattern IpMapping_Type_Primary :: IpMapping_Type
pattern IpMapping_Type_Primary = IpMapping_Type "PRIMARY"

-- | Source IP address of the connection a read replica establishes to its external primary instance. This IP address can be allowlisted by the customer in case it has a firewall that filters incoming connection to its on premises primary instance.
pattern IpMapping_Type_Outgoing :: IpMapping_Type
pattern IpMapping_Type_Outgoing = IpMapping_Type "OUTGOING"

-- | Private IP used when using private IPs and network peering.
pattern IpMapping_Type_Private :: IpMapping_Type
pattern IpMapping_Type_Private = IpMapping_Type "PRIVATE"

-- | V1 IP of a migrated instance. We want the user to decommission this IP as soon as the migration is complete. Note: V1 instances with V1 ip addresses will be counted as PRIMARY.
pattern IpMapping_Type_MIGRATED1STGEN :: IpMapping_Type
pattern IpMapping_Type_MIGRATED1STGEN = IpMapping_Type "MIGRATED_1ST_GEN"

{-# COMPLETE
  IpMapping_Type_SQLIPADDRESSTYPEUNSPECIFIED,
  IpMapping_Type_Primary,
  IpMapping_Type_Outgoing,
  IpMapping_Type_Private,
  IpMapping_Type_MIGRATED1STGEN,
  IpMapping_Type
  #-}

-- | Maintenance timing setting: @canary@ (Earlier) or @stable@ (Later). <https://cloud.google.com/sql/docs/mysql/instance-settings#maintenance-timing-2ndgen Learn more>.
newtype MaintenanceWindow_UpdateTrack = MaintenanceWindow_UpdateTrack {fromMaintenanceWindow_UpdateTrack :: Core.Text}
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

-- | This is an unknown maintenance timing preference.
pattern MaintenanceWindow_UpdateTrack_SQLUPDATETRACKUNSPECIFIED :: MaintenanceWindow_UpdateTrack
pattern MaintenanceWindow_UpdateTrack_SQLUPDATETRACKUNSPECIFIED = MaintenanceWindow_UpdateTrack "SQL_UPDATE_TRACK_UNSPECIFIED"

-- | For instance update that requires a restart, this update track indicates your instance prefer to restart for new version early in maintenance window.
pattern MaintenanceWindow_UpdateTrack_Canary :: MaintenanceWindow_UpdateTrack
pattern MaintenanceWindow_UpdateTrack_Canary = MaintenanceWindow_UpdateTrack "canary"

-- | For instance update that requires a restart, this update track indicates your instance prefer to let Cloud SQL choose the timing of restart (within its Maintenance window, if applicable).
pattern MaintenanceWindow_UpdateTrack_Stable :: MaintenanceWindow_UpdateTrack
pattern MaintenanceWindow_UpdateTrack_Stable = MaintenanceWindow_UpdateTrack "stable"

{-# COMPLETE
  MaintenanceWindow_UpdateTrack_SQLUPDATETRACKUNSPECIFIED,
  MaintenanceWindow_UpdateTrack_Canary,
  MaintenanceWindow_UpdateTrack_Stable,
  MaintenanceWindow_UpdateTrack
  #-}

-- | The type of the operation. Valid values are: * @CREATE@ * @DELETE@ * @UPDATE@ * @RESTART@ * @IMPORT@ * @EXPORT@ * @BACKUP_VOLUME@ * @RESTORE_VOLUME@ * @CREATE_USER@ * @DELETE_USER@ * @CREATE_DATABASE@ * @DELETE_DATABASE@
newtype Operation_OperationType = Operation_OperationType {fromOperation_OperationType :: Core.Text}
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

-- | Unknown operation type.
pattern Operation_OperationType_SQLOPERATIONTYPEUNSPECIFIED :: Operation_OperationType
pattern Operation_OperationType_SQLOPERATIONTYPEUNSPECIFIED = Operation_OperationType "SQL_OPERATION_TYPE_UNSPECIFIED"

-- | Imports data into a Cloud SQL instance.
pattern Operation_OperationType_Import :: Operation_OperationType
pattern Operation_OperationType_Import = Operation_OperationType "IMPORT"

-- | Exports data from a Cloud SQL instance to a Cloud Storage bucket.
pattern Operation_OperationType_Export :: Operation_OperationType
pattern Operation_OperationType_Export = Operation_OperationType "EXPORT"

-- | Creates a new Cloud SQL instance.
pattern Operation_OperationType_Create :: Operation_OperationType
pattern Operation_OperationType_Create = Operation_OperationType "CREATE"

-- | Updates the settings of a Cloud SQL instance.
pattern Operation_OperationType_Update :: Operation_OperationType
pattern Operation_OperationType_Update = Operation_OperationType "UPDATE"

-- | Deletes a Cloud SQL instance.
pattern Operation_OperationType_Delete' :: Operation_OperationType
pattern Operation_OperationType_Delete' = Operation_OperationType "DELETE"

-- | Restarts the Cloud SQL instance.
pattern Operation_OperationType_Restart :: Operation_OperationType
pattern Operation_OperationType_Restart = Operation_OperationType "RESTART"

-- |
pattern Operation_OperationType_Backup :: Operation_OperationType
pattern Operation_OperationType_Backup = Operation_OperationType "BACKUP"

-- |
pattern Operation_OperationType_Snapshot :: Operation_OperationType
pattern Operation_OperationType_Snapshot = Operation_OperationType "SNAPSHOT"

-- | Performs instance backup.
pattern Operation_OperationType_BACKUPVOLUME :: Operation_OperationType
pattern Operation_OperationType_BACKUPVOLUME = Operation_OperationType "BACKUP_VOLUME"

-- | Deletes an instance backup.
pattern Operation_OperationType_DELETEVOLUME :: Operation_OperationType
pattern Operation_OperationType_DELETEVOLUME = Operation_OperationType "DELETE_VOLUME"

-- | Restores an instance backup.
pattern Operation_OperationType_RESTOREVOLUME :: Operation_OperationType
pattern Operation_OperationType_RESTOREVOLUME = Operation_OperationType "RESTORE_VOLUME"

-- | Injects a privileged user in mysql for MOB instances.
pattern Operation_OperationType_INJECTUSER :: Operation_OperationType
pattern Operation_OperationType_INJECTUSER = Operation_OperationType "INJECT_USER"

-- | Clones a Cloud SQL instance.
pattern Operation_OperationType_Clone :: Operation_OperationType
pattern Operation_OperationType_Clone = Operation_OperationType "CLONE"

-- | Stops replication on a Cloud SQL read replica instance.
pattern Operation_OperationType_STOPREPLICA :: Operation_OperationType
pattern Operation_OperationType_STOPREPLICA = Operation_OperationType "STOP_REPLICA"

-- | Starts replication on a Cloud SQL read replica instance.
pattern Operation_OperationType_STARTREPLICA :: Operation_OperationType
pattern Operation_OperationType_STARTREPLICA = Operation_OperationType "START_REPLICA"

-- | Promotes a Cloud SQL replica instance.
pattern Operation_OperationType_PROMOTEREPLICA :: Operation_OperationType
pattern Operation_OperationType_PROMOTEREPLICA = Operation_OperationType "PROMOTE_REPLICA"

-- | Creates a Cloud SQL replica instance.
pattern Operation_OperationType_CREATEREPLICA :: Operation_OperationType
pattern Operation_OperationType_CREATEREPLICA = Operation_OperationType "CREATE_REPLICA"

-- | Creates a new user in a Cloud SQL instance.
pattern Operation_OperationType_CREATEUSER :: Operation_OperationType
pattern Operation_OperationType_CREATEUSER = Operation_OperationType "CREATE_USER"

-- | Deletes a user from a Cloud SQL instance.
pattern Operation_OperationType_DELETEUSER :: Operation_OperationType
pattern Operation_OperationType_DELETEUSER = Operation_OperationType "DELETE_USER"

-- | Updates an existing user in a Cloud SQL instance.
pattern Operation_OperationType_UPDATEUSER :: Operation_OperationType
pattern Operation_OperationType_UPDATEUSER = Operation_OperationType "UPDATE_USER"

-- | Creates a database in the Cloud SQL instance.
pattern Operation_OperationType_CREATEDATABASE :: Operation_OperationType
pattern Operation_OperationType_CREATEDATABASE = Operation_OperationType "CREATE_DATABASE"

-- | Deletes a database in the Cloud SQL instance.
pattern Operation_OperationType_DELETEDATABASE :: Operation_OperationType
pattern Operation_OperationType_DELETEDATABASE = Operation_OperationType "DELETE_DATABASE"

-- | Updates a database in the Cloud SQL instance.
pattern Operation_OperationType_UPDATEDATABASE :: Operation_OperationType
pattern Operation_OperationType_UPDATEDATABASE = Operation_OperationType "UPDATE_DATABASE"

-- | Performs failover of an HA-enabled Cloud SQL failover replica.
pattern Operation_OperationType_Failover :: Operation_OperationType
pattern Operation_OperationType_Failover = Operation_OperationType "FAILOVER"

-- | Deletes the backup taken by a backup run.
pattern Operation_OperationType_DELETEBACKUP :: Operation_OperationType
pattern Operation_OperationType_DELETEBACKUP = Operation_OperationType "DELETE_BACKUP"

-- |
pattern Operation_OperationType_RECREATEREPLICA :: Operation_OperationType
pattern Operation_OperationType_RECREATEREPLICA = Operation_OperationType "RECREATE_REPLICA"

-- | Truncates a general or slow log table in MySQL.
pattern Operation_OperationType_TRUNCATELOG :: Operation_OperationType
pattern Operation_OperationType_TRUNCATELOG = Operation_OperationType "TRUNCATE_LOG"

-- | Demotes the stand-alone instance to be a Cloud SQL read replica for an external database server.
pattern Operation_OperationType_DEMOTEMASTER :: Operation_OperationType
pattern Operation_OperationType_DEMOTEMASTER = Operation_OperationType "DEMOTE_MASTER"

-- | Indicates that the instance is currently in maintenance. Maintenance typically causes the instance to be unavailable for 1-3 minutes.
pattern Operation_OperationType_Maintenance :: Operation_OperationType
pattern Operation_OperationType_Maintenance = Operation_OperationType "MAINTENANCE"

-- | This field is deprecated, and will be removed in future version of API.
pattern Operation_OperationType_ENABLEPRIVATEIP :: Operation_OperationType
pattern Operation_OperationType_ENABLEPRIVATEIP = Operation_OperationType "ENABLE_PRIVATE_IP"

-- |
pattern Operation_OperationType_DEFERMAINTENANCE :: Operation_OperationType
pattern Operation_OperationType_DEFERMAINTENANCE = Operation_OperationType "DEFER_MAINTENANCE"

-- | Creates clone instance.
pattern Operation_OperationType_CREATECLONE :: Operation_OperationType
pattern Operation_OperationType_CREATECLONE = Operation_OperationType "CREATE_CLONE"

-- | Reschedule maintenance to another time.
pattern Operation_OperationType_RESCHEDULEMAINTENANCE :: Operation_OperationType
pattern Operation_OperationType_RESCHEDULEMAINTENANCE = Operation_OperationType "RESCHEDULE_MAINTENANCE"

-- | Starts external sync of a Cloud SQL EM replica to an external primary instance.
pattern Operation_OperationType_STARTEXTERNALSYNC :: Operation_OperationType
pattern Operation_OperationType_STARTEXTERNALSYNC = Operation_OperationType "START_EXTERNAL_SYNC"

-- | Recovers logs from an instance\'s old data disk.
pattern Operation_OperationType_LOGCLEANUP :: Operation_OperationType
pattern Operation_OperationType_LOGCLEANUP = Operation_OperationType "LOG_CLEANUP"

-- | Performs auto-restart of an HA-enabled Cloud SQL database for auto recovery.
pattern Operation_OperationType_AUTORESTART :: Operation_OperationType
pattern Operation_OperationType_AUTORESTART = Operation_OperationType "AUTO_RESTART"

-- | Re-encrypts CMEK instances with latest key version.
pattern Operation_OperationType_Reencrypt :: Operation_OperationType
pattern Operation_OperationType_Reencrypt = Operation_OperationType "REENCRYPT"

{-# COMPLETE
  Operation_OperationType_SQLOPERATIONTYPEUNSPECIFIED,
  Operation_OperationType_Import,
  Operation_OperationType_Export,
  Operation_OperationType_Create,
  Operation_OperationType_Update,
  Operation_OperationType_Delete',
  Operation_OperationType_Restart,
  Operation_OperationType_Backup,
  Operation_OperationType_Snapshot,
  Operation_OperationType_BACKUPVOLUME,
  Operation_OperationType_DELETEVOLUME,
  Operation_OperationType_RESTOREVOLUME,
  Operation_OperationType_INJECTUSER,
  Operation_OperationType_Clone,
  Operation_OperationType_STOPREPLICA,
  Operation_OperationType_STARTREPLICA,
  Operation_OperationType_PROMOTEREPLICA,
  Operation_OperationType_CREATEREPLICA,
  Operation_OperationType_CREATEUSER,
  Operation_OperationType_DELETEUSER,
  Operation_OperationType_UPDATEUSER,
  Operation_OperationType_CREATEDATABASE,
  Operation_OperationType_DELETEDATABASE,
  Operation_OperationType_UPDATEDATABASE,
  Operation_OperationType_Failover,
  Operation_OperationType_DELETEBACKUP,
  Operation_OperationType_RECREATEREPLICA,
  Operation_OperationType_TRUNCATELOG,
  Operation_OperationType_DEMOTEMASTER,
  Operation_OperationType_Maintenance,
  Operation_OperationType_ENABLEPRIVATEIP,
  Operation_OperationType_DEFERMAINTENANCE,
  Operation_OperationType_CREATECLONE,
  Operation_OperationType_RESCHEDULEMAINTENANCE,
  Operation_OperationType_STARTEXTERNALSYNC,
  Operation_OperationType_LOGCLEANUP,
  Operation_OperationType_AUTORESTART,
  Operation_OperationType_Reencrypt,
  Operation_OperationType
  #-}

-- | The status of an operation.
newtype Operation_Status = Operation_Status {fromOperation_Status :: Core.Text}
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

-- | The state of the operation is unknown.
pattern Operation_Status_SQLOPERATIONSTATUSUNSPECIFIED :: Operation_Status
pattern Operation_Status_SQLOPERATIONSTATUSUNSPECIFIED = Operation_Status "SQL_OPERATION_STATUS_UNSPECIFIED"

-- | The operation has been queued, but has not started yet.
pattern Operation_Status_Pending :: Operation_Status
pattern Operation_Status_Pending = Operation_Status "PENDING"

-- | The operation is running.
pattern Operation_Status_Running :: Operation_Status
pattern Operation_Status_Running = Operation_Status "RUNNING"

-- | The operation completed.
pattern Operation_Status_Done :: Operation_Status
pattern Operation_Status_Done = Operation_Status "DONE"

{-# COMPLETE
  Operation_Status_SQLOPERATIONSTATUSUNSPECIFIED,
  Operation_Status_Pending,
  Operation_Status_Running,
  Operation_Status_Done,
  Operation_Status
  #-}

-- | The complexity of the password.
newtype PasswordValidationPolicy_Complexity = PasswordValidationPolicy_Complexity {fromPasswordValidationPolicy_Complexity :: Core.Text}
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

-- | Complexity check is not specified.
pattern PasswordValidationPolicy_Complexity_COMPLEXITYUNSPECIFIED :: PasswordValidationPolicy_Complexity
pattern PasswordValidationPolicy_Complexity_COMPLEXITYUNSPECIFIED = PasswordValidationPolicy_Complexity "COMPLEXITY_UNSPECIFIED"

-- | A combination of lowercase, uppercase, numeric, and non-alphanumeric characters.
pattern PasswordValidationPolicy_Complexity_COMPLEXITYDEFAULT :: PasswordValidationPolicy_Complexity
pattern PasswordValidationPolicy_Complexity_COMPLEXITYDEFAULT = PasswordValidationPolicy_Complexity "COMPLEXITY_DEFAULT"

{-# COMPLETE
  PasswordValidationPolicy_Complexity_COMPLEXITYUNSPECIFIED,
  PasswordValidationPolicy_Complexity_COMPLEXITYDEFAULT,
  PasswordValidationPolicy_Complexity
  #-}

-- | Required. The type of the reschedule.
newtype Reschedule_RescheduleType = Reschedule_RescheduleType {fromReschedule_RescheduleType :: Core.Text}
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

-- |
pattern Reschedule_RescheduleType_RESCHEDULETYPEUNSPECIFIED :: Reschedule_RescheduleType
pattern Reschedule_RescheduleType_RESCHEDULETYPEUNSPECIFIED = Reschedule_RescheduleType "RESCHEDULE_TYPE_UNSPECIFIED"

-- | Reschedules maintenance to happen now (within 5 minutes).
pattern Reschedule_RescheduleType_Immediate :: Reschedule_RescheduleType
pattern Reschedule_RescheduleType_Immediate = Reschedule_RescheduleType "IMMEDIATE"

-- | Reschedules maintenance to occur within one week from the originally scheduled day and time.
pattern Reschedule_RescheduleType_NEXTAVAILABLEWINDOW :: Reschedule_RescheduleType
pattern Reschedule_RescheduleType_NEXTAVAILABLEWINDOW = Reschedule_RescheduleType "NEXT_AVAILABLE_WINDOW"

-- | Reschedules maintenance to a specific time and day.
pattern Reschedule_RescheduleType_SPECIFICTIME :: Reschedule_RescheduleType
pattern Reschedule_RescheduleType_SPECIFICTIME = Reschedule_RescheduleType "SPECIFIC_TIME"

{-# COMPLETE
  Reschedule_RescheduleType_RESCHEDULETYPEUNSPECIFIED,
  Reschedule_RescheduleType_Immediate,
  Reschedule_RescheduleType_NEXTAVAILABLEWINDOW,
  Reschedule_RescheduleType_SPECIFICTIME,
  Reschedule_RescheduleType
  #-}

-- | The activation policy specifies when the instance is activated; it is applicable only when the instance state is RUNNABLE. Valid values: * @ALWAYS@: The instance is on, and remains so even in the absence of connection requests. * @NEVER@: The instance is off; it is not activated, even if a connection request arrives.
newtype Settings_ActivationPolicy = Settings_ActivationPolicy {fromSettings_ActivationPolicy :: Core.Text}
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

-- | Unknown activation plan.
pattern Settings_ActivationPolicy_SQLACTIVATIONPOLICYUNSPECIFIED :: Settings_ActivationPolicy
pattern Settings_ActivationPolicy_SQLACTIVATIONPOLICYUNSPECIFIED = Settings_ActivationPolicy "SQL_ACTIVATION_POLICY_UNSPECIFIED"

-- | The instance is always up and running.
pattern Settings_ActivationPolicy_Always :: Settings_ActivationPolicy
pattern Settings_ActivationPolicy_Always = Settings_ActivationPolicy "ALWAYS"

-- | The instance never starts.
pattern Settings_ActivationPolicy_Never :: Settings_ActivationPolicy
pattern Settings_ActivationPolicy_Never = Settings_ActivationPolicy "NEVER"

-- | The instance starts upon receiving requests.
pattern Settings_ActivationPolicy_ONDEMAND :: Settings_ActivationPolicy
pattern Settings_ActivationPolicy_ONDEMAND = Settings_ActivationPolicy "ON_DEMAND"

{-# COMPLETE
  Settings_ActivationPolicy_SQLACTIVATIONPOLICYUNSPECIFIED,
  Settings_ActivationPolicy_Always,
  Settings_ActivationPolicy_Never,
  Settings_ActivationPolicy_ONDEMAND,
  Settings_ActivationPolicy
  #-}

-- | Availability type. Potential values: * @ZONAL@: The instance serves data from only one zone. Outages in that zone affect data accessibility. * @REGIONAL@: The instance can serve data from more than one zone in a region (it is highly available).\/ For more information, see <https://cloud.google.com/sql/docs/mysql/high-availability Overview of the High Availability Configuration>.
newtype Settings_AvailabilityType = Settings_AvailabilityType {fromSettings_AvailabilityType :: Core.Text}
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

-- | This is an unknown Availability type.
pattern Settings_AvailabilityType_SQLAVAILABILITYTYPEUNSPECIFIED :: Settings_AvailabilityType
pattern Settings_AvailabilityType_SQLAVAILABILITYTYPEUNSPECIFIED = Settings_AvailabilityType "SQL_AVAILABILITY_TYPE_UNSPECIFIED"

-- | Zonal available instance.
pattern Settings_AvailabilityType_Zonal :: Settings_AvailabilityType
pattern Settings_AvailabilityType_Zonal = Settings_AvailabilityType "ZONAL"

-- | Regional available instance.
pattern Settings_AvailabilityType_Regional :: Settings_AvailabilityType
pattern Settings_AvailabilityType_Regional = Settings_AvailabilityType "REGIONAL"

{-# COMPLETE
  Settings_AvailabilityType_SQLAVAILABILITYTYPEUNSPECIFIED,
  Settings_AvailabilityType_Zonal,
  Settings_AvailabilityType_Regional,
  Settings_AvailabilityType
  #-}

-- | Specifies if connections must use Cloud SQL connectors. Option values include the following: @NOT_REQUIRED@ (Cloud SQL instances can be connected without Cloud SQL Connectors) and @REQUIRED@ (Only allow connections that use Cloud SQL Connectors). Note that using REQUIRED disables all existing authorized networks. If this field is not specified when creating a new instance, NOT_REQUIRED is used. If this field is not specified when patching or updating an existing instance, it is left unchanged in the instance.
newtype Settings_ConnectorEnforcement = Settings_ConnectorEnforcement {fromSettings_ConnectorEnforcement :: Core.Text}
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

-- | The requirement for Cloud SQL connectors is unknown.
pattern Settings_ConnectorEnforcement_CONNECTORENFORCEMENTUNSPECIFIED :: Settings_ConnectorEnforcement
pattern Settings_ConnectorEnforcement_CONNECTORENFORCEMENTUNSPECIFIED = Settings_ConnectorEnforcement "CONNECTOR_ENFORCEMENT_UNSPECIFIED"

-- | Do not require Cloud SQL connectors.
pattern Settings_ConnectorEnforcement_NOTREQUIRED :: Settings_ConnectorEnforcement
pattern Settings_ConnectorEnforcement_NOTREQUIRED = Settings_ConnectorEnforcement "NOT_REQUIRED"

-- | Require all connections to use Cloud SQL connectors, including the Cloud SQL Auth Proxy and Cloud SQL Java, Python, and Go connectors. Note: This disables all existing authorized networks.
pattern Settings_ConnectorEnforcement_Required :: Settings_ConnectorEnforcement
pattern Settings_ConnectorEnforcement_Required = Settings_ConnectorEnforcement "REQUIRED"

{-# COMPLETE
  Settings_ConnectorEnforcement_CONNECTORENFORCEMENTUNSPECIFIED,
  Settings_ConnectorEnforcement_NOTREQUIRED,
  Settings_ConnectorEnforcement_Required,
  Settings_ConnectorEnforcement
  #-}

-- | The type of data disk: @PD_SSD@ (default) or @PD_HDD@. Not used for First Generation instances.
newtype Settings_DataDiskType = Settings_DataDiskType {fromSettings_DataDiskType :: Core.Text}
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

-- | This is an unknown data disk type.
pattern Settings_DataDiskType_SQLDATADISKTYPEUNSPECIFIED :: Settings_DataDiskType
pattern Settings_DataDiskType_SQLDATADISKTYPEUNSPECIFIED = Settings_DataDiskType "SQL_DATA_DISK_TYPE_UNSPECIFIED"

-- | An SSD data disk.
pattern Settings_DataDiskType_PDSSD :: Settings_DataDiskType
pattern Settings_DataDiskType_PDSSD = Settings_DataDiskType "PD_SSD"

-- | An HDD data disk.
pattern Settings_DataDiskType_PDHDD :: Settings_DataDiskType
pattern Settings_DataDiskType_PDHDD = Settings_DataDiskType "PD_HDD"

-- | This field is deprecated and will be removed from a future version of the API.
pattern Settings_DataDiskType_OBSOLETELOCALSSD :: Settings_DataDiskType
pattern Settings_DataDiskType_OBSOLETELOCALSSD = Settings_DataDiskType "OBSOLETE_LOCAL_SSD"

{-# COMPLETE
  Settings_DataDiskType_SQLDATADISKTYPEUNSPECIFIED,
  Settings_DataDiskType_PDSSD,
  Settings_DataDiskType_PDHDD,
  Settings_DataDiskType_OBSOLETELOCALSSD,
  Settings_DataDiskType
  #-}

-- | The pricing plan for this instance. This can be either @PER_USE@ or @PACKAGE@. Only @PER_USE@ is supported for Second Generation instances.
newtype Settings_PricingPlan = Settings_PricingPlan {fromSettings_PricingPlan :: Core.Text}
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

-- | This is an unknown pricing plan for this instance.
pattern Settings_PricingPlan_SQLPRICINGPLANUNSPECIFIED :: Settings_PricingPlan
pattern Settings_PricingPlan_SQLPRICINGPLANUNSPECIFIED = Settings_PricingPlan "SQL_PRICING_PLAN_UNSPECIFIED"

-- | The instance is billed at a monthly flat rate.
pattern Settings_PricingPlan_Package :: Settings_PricingPlan
pattern Settings_PricingPlan_Package = Settings_PricingPlan "PACKAGE"

-- | The instance is billed per usage.
pattern Settings_PricingPlan_PERUSE :: Settings_PricingPlan
pattern Settings_PricingPlan_PERUSE = Settings_PricingPlan "PER_USE"

{-# COMPLETE
  Settings_PricingPlan_SQLPRICINGPLANUNSPECIFIED,
  Settings_PricingPlan_Package,
  Settings_PricingPlan_PERUSE,
  Settings_PricingPlan
  #-}

-- | The type of replication this instance uses. This can be either @ASYNCHRONOUS@ or @SYNCHRONOUS@. (Deprecated) This property was only applicable to First Generation instances.
newtype Settings_ReplicationType = Settings_ReplicationType {fromSettings_ReplicationType :: Core.Text}
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

-- | This is an unknown replication type for a Cloud SQL instance.
pattern Settings_ReplicationType_SQLREPLICATIONTYPEUNSPECIFIED :: Settings_ReplicationType
pattern Settings_ReplicationType_SQLREPLICATIONTYPEUNSPECIFIED = Settings_ReplicationType "SQL_REPLICATION_TYPE_UNSPECIFIED"

-- | The synchronous replication mode for First Generation instances. It is the default value.
pattern Settings_ReplicationType_Synchronous :: Settings_ReplicationType
pattern Settings_ReplicationType_Synchronous = Settings_ReplicationType "SYNCHRONOUS"

-- | The asynchronous replication mode for First Generation instances. It provides a slight performance gain, but if an outage occurs while this option is set to asynchronous, you can lose up to a few seconds of updates to your data.
pattern Settings_ReplicationType_Asynchronous :: Settings_ReplicationType
pattern Settings_ReplicationType_Asynchronous = Settings_ReplicationType "ASYNCHRONOUS"

{-# COMPLETE
  Settings_ReplicationType_SQLREPLICATIONTYPEUNSPECIFIED,
  Settings_ReplicationType_Synchronous,
  Settings_ReplicationType_Asynchronous,
  Settings_ReplicationType
  #-}

-- | Identifies the specific error that occurred.
newtype SqlExternalSyncSettingError_Type = SqlExternalSyncSettingError_Type {fromSqlExternalSyncSettingError_Type :: Core.Text}
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

-- |
pattern SqlExternalSyncSettingError_Type_SQLEXTERNALSYNCSETTINGERRORTYPEUNSPECIFIED :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_SQLEXTERNALSYNCSETTINGERRORTYPEUNSPECIFIED = SqlExternalSyncSettingError_Type "SQL_EXTERNAL_SYNC_SETTING_ERROR_TYPE_UNSPECIFIED"

-- |
pattern SqlExternalSyncSettingError_Type_CONNECTIONFAILURE :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_CONNECTIONFAILURE = SqlExternalSyncSettingError_Type "CONNECTION_FAILURE"

-- |
pattern SqlExternalSyncSettingError_Type_BINLOGNOTENABLED :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_BINLOGNOTENABLED = SqlExternalSyncSettingError_Type "BINLOG_NOT_ENABLED"

-- |
pattern SqlExternalSyncSettingError_Type_INCOMPATIBLEDATABASEVERSION :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_INCOMPATIBLEDATABASEVERSION = SqlExternalSyncSettingError_Type "INCOMPATIBLE_DATABASE_VERSION"

-- |
pattern SqlExternalSyncSettingError_Type_REPLICAALREADYSETUP :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_REPLICAALREADYSETUP = SqlExternalSyncSettingError_Type "REPLICA_ALREADY_SETUP"

-- |
pattern SqlExternalSyncSettingError_Type_INSUFFICIENTPRIVILEGE :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_INSUFFICIENTPRIVILEGE = SqlExternalSyncSettingError_Type "INSUFFICIENT_PRIVILEGE"

-- | Unsupported migration type.
pattern SqlExternalSyncSettingError_Type_UNSUPPORTEDMIGRATIONTYPE :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_UNSUPPORTEDMIGRATIONTYPE = SqlExternalSyncSettingError_Type "UNSUPPORTED_MIGRATION_TYPE"

-- | No pglogical extension installed on databases, applicable for postgres.
pattern SqlExternalSyncSettingError_Type_NOPGLOGICALINSTALLED :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_NOPGLOGICALINSTALLED = SqlExternalSyncSettingError_Type "NO_PGLOGICAL_INSTALLED"

-- | pglogical node already exists on databases, applicable for postgres.
pattern SqlExternalSyncSettingError_Type_PGLOGICALNODEALREADYEXISTS :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_PGLOGICALNODEALREADYEXISTS = SqlExternalSyncSettingError_Type "PGLOGICAL_NODE_ALREADY_EXISTS"

-- | The value of parameter wal_level is not set to logical.
pattern SqlExternalSyncSettingError_Type_INVALIDWALLEVEL :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_INVALIDWALLEVEL = SqlExternalSyncSettingError_Type "INVALID_WAL_LEVEL"

-- | The value of parameter shared/preload/libraries does not include pglogical.
pattern SqlExternalSyncSettingError_Type_INVALIDSHAREDPRELOADLIBRARY :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_INVALIDSHAREDPRELOADLIBRARY = SqlExternalSyncSettingError_Type "INVALID_SHARED_PRELOAD_LIBRARY"

-- | The value of parameter max/replication/slots is not sufficient.
pattern SqlExternalSyncSettingError_Type_INSUFFICIENTMAXREPLICATIONSLOTS :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_INSUFFICIENTMAXREPLICATIONSLOTS = SqlExternalSyncSettingError_Type "INSUFFICIENT_MAX_REPLICATION_SLOTS"

-- | The value of parameter max/wal/senders is not sufficient.
pattern SqlExternalSyncSettingError_Type_INSUFFICIENTMAXWALSENDERS :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_INSUFFICIENTMAXWALSENDERS = SqlExternalSyncSettingError_Type "INSUFFICIENT_MAX_WAL_SENDERS"

-- | The value of parameter max/worker/processes is not sufficient.
pattern SqlExternalSyncSettingError_Type_INSUFFICIENTMAXWORKERPROCESSES :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_INSUFFICIENTMAXWORKERPROCESSES = SqlExternalSyncSettingError_Type "INSUFFICIENT_MAX_WORKER_PROCESSES"

-- | Extensions installed are either not supported or having unsupported versions
pattern SqlExternalSyncSettingError_Type_UNSUPPORTEDEXTENSIONS :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_UNSUPPORTEDEXTENSIONS = SqlExternalSyncSettingError_Type "UNSUPPORTED_EXTENSIONS"

-- | The value of parameter rds.logical_replication is not set to 1.
pattern SqlExternalSyncSettingError_Type_INVALIDRDSLOGICALREPLICATION :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_INVALIDRDSLOGICALREPLICATION = SqlExternalSyncSettingError_Type "INVALID_RDS_LOGICAL_REPLICATION"

-- | The primary instance logging setup doesn\'t allow EM sync.
pattern SqlExternalSyncSettingError_Type_INVALIDLOGGINGSETUP :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_INVALIDLOGGINGSETUP = SqlExternalSyncSettingError_Type "INVALID_LOGGING_SETUP"

-- | The primary instance database parameter setup doesn\'t allow EM sync.
pattern SqlExternalSyncSettingError_Type_INVALIDDBPARAM :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_INVALIDDBPARAM = SqlExternalSyncSettingError_Type "INVALID_DB_PARAM"

-- | The gtid_mode is not supported, applicable for MySQL.
pattern SqlExternalSyncSettingError_Type_UNSUPPORTEDGTIDMODE :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_UNSUPPORTEDGTIDMODE = SqlExternalSyncSettingError_Type "UNSUPPORTED_GTID_MODE"

-- | SQL Server Agent is not running.
pattern SqlExternalSyncSettingError_Type_SQLSERVERAGENTNOTRUNNING :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_SQLSERVERAGENTNOTRUNNING = SqlExternalSyncSettingError_Type "SQLSERVER_AGENT_NOT_RUNNING"

-- | The table definition is not support due to missing primary key or replica identity, applicable for postgres.
pattern SqlExternalSyncSettingError_Type_UNSUPPORTEDTABLEDEFINITION :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_UNSUPPORTEDTABLEDEFINITION = SqlExternalSyncSettingError_Type "UNSUPPORTED_TABLE_DEFINITION"

-- | The customer has a definer that will break EM setup.
pattern SqlExternalSyncSettingError_Type_UNSUPPORTEDDEFINER :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_UNSUPPORTEDDEFINER = SqlExternalSyncSettingError_Type "UNSUPPORTED_DEFINER"

-- | SQL Server \@\@SERVERNAME does not match actual host name
pattern SqlExternalSyncSettingError_Type_SQLSERVERSERVERNAMEMISMATCH :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_SQLSERVERSERVERNAMEMISMATCH = SqlExternalSyncSettingError_Type "SQLSERVER_SERVERNAME_MISMATCH"

-- | The primary instance has been setup and will fail the setup.
pattern SqlExternalSyncSettingError_Type_PRIMARYALREADYSETUP :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_PRIMARYALREADYSETUP = SqlExternalSyncSettingError_Type "PRIMARY_ALREADY_SETUP"

-- | The primary instance has unsupported binary log format.
pattern SqlExternalSyncSettingError_Type_UNSUPPORTEDBINLOGFORMAT :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_UNSUPPORTEDBINLOGFORMAT = SqlExternalSyncSettingError_Type "UNSUPPORTED_BINLOG_FORMAT"

-- | The primary instance\'s binary log retention setting.
pattern SqlExternalSyncSettingError_Type_BINLOGRETENTIONSETTING :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_BINLOGRETENTIONSETTING = SqlExternalSyncSettingError_Type "BINLOG_RETENTION_SETTING"

-- | The primary instance has tables with unsupported storage engine.
pattern SqlExternalSyncSettingError_Type_UNSUPPORTEDSTORAGEENGINE :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_UNSUPPORTEDSTORAGEENGINE = SqlExternalSyncSettingError_Type "UNSUPPORTED_STORAGE_ENGINE"

-- | Source has tables with limited support eg: PostgreSQL tables without primary keys
pattern SqlExternalSyncSettingError_Type_LIMITEDSUPPORTTABLES :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_LIMITEDSUPPORTTABLES = SqlExternalSyncSettingError_Type "LIMITED_SUPPORT_TABLES"

-- | The replica instance contains existing data.
pattern SqlExternalSyncSettingError_Type_EXISTINGDATAINREPLICA :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_EXISTINGDATAINREPLICA = SqlExternalSyncSettingError_Type "EXISTING_DATA_IN_REPLICA"

{-# COMPLETE
  SqlExternalSyncSettingError_Type_SQLEXTERNALSYNCSETTINGERRORTYPEUNSPECIFIED,
  SqlExternalSyncSettingError_Type_CONNECTIONFAILURE,
  SqlExternalSyncSettingError_Type_BINLOGNOTENABLED,
  SqlExternalSyncSettingError_Type_INCOMPATIBLEDATABASEVERSION,
  SqlExternalSyncSettingError_Type_REPLICAALREADYSETUP,
  SqlExternalSyncSettingError_Type_INSUFFICIENTPRIVILEGE,
  SqlExternalSyncSettingError_Type_UNSUPPORTEDMIGRATIONTYPE,
  SqlExternalSyncSettingError_Type_NOPGLOGICALINSTALLED,
  SqlExternalSyncSettingError_Type_PGLOGICALNODEALREADYEXISTS,
  SqlExternalSyncSettingError_Type_INVALIDWALLEVEL,
  SqlExternalSyncSettingError_Type_INVALIDSHAREDPRELOADLIBRARY,
  SqlExternalSyncSettingError_Type_INSUFFICIENTMAXREPLICATIONSLOTS,
  SqlExternalSyncSettingError_Type_INSUFFICIENTMAXWALSENDERS,
  SqlExternalSyncSettingError_Type_INSUFFICIENTMAXWORKERPROCESSES,
  SqlExternalSyncSettingError_Type_UNSUPPORTEDEXTENSIONS,
  SqlExternalSyncSettingError_Type_INVALIDRDSLOGICALREPLICATION,
  SqlExternalSyncSettingError_Type_INVALIDLOGGINGSETUP,
  SqlExternalSyncSettingError_Type_INVALIDDBPARAM,
  SqlExternalSyncSettingError_Type_UNSUPPORTEDGTIDMODE,
  SqlExternalSyncSettingError_Type_SQLSERVERAGENTNOTRUNNING,
  SqlExternalSyncSettingError_Type_UNSUPPORTEDTABLEDEFINITION,
  SqlExternalSyncSettingError_Type_UNSUPPORTEDDEFINER,
  SqlExternalSyncSettingError_Type_SQLSERVERSERVERNAMEMISMATCH,
  SqlExternalSyncSettingError_Type_PRIMARYALREADYSETUP,
  SqlExternalSyncSettingError_Type_UNSUPPORTEDBINLOGFORMAT,
  SqlExternalSyncSettingError_Type_BINLOGRETENTIONSETTING,
  SqlExternalSyncSettingError_Type_UNSUPPORTEDSTORAGEENGINE,
  SqlExternalSyncSettingError_Type_LIMITEDSUPPORTTABLES,
  SqlExternalSyncSettingError_Type_EXISTINGDATAINREPLICA,
  SqlExternalSyncSettingError_Type
  #-}

-- | External sync mode.
newtype SqlInstancesStartExternalSyncRequest_SyncMode = SqlInstancesStartExternalSyncRequest_SyncMode {fromSqlInstancesStartExternalSyncRequest_SyncMode :: Core.Text}
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

-- | Unknown external sync mode, will be defaulted to ONLINE mode
pattern SqlInstancesStartExternalSyncRequest_SyncMode_EXTERNALSYNCMODEUNSPECIFIED :: SqlInstancesStartExternalSyncRequest_SyncMode
pattern SqlInstancesStartExternalSyncRequest_SyncMode_EXTERNALSYNCMODEUNSPECIFIED = SqlInstancesStartExternalSyncRequest_SyncMode "EXTERNAL_SYNC_MODE_UNSPECIFIED"

-- | Online external sync will set up replication after initial data external sync
pattern SqlInstancesStartExternalSyncRequest_SyncMode_Online :: SqlInstancesStartExternalSyncRequest_SyncMode
pattern SqlInstancesStartExternalSyncRequest_SyncMode_Online = SqlInstancesStartExternalSyncRequest_SyncMode "ONLINE"

-- | Offline external sync only dumps and loads a one-time snapshot of the primary instance\'s data
pattern SqlInstancesStartExternalSyncRequest_SyncMode_Offline :: SqlInstancesStartExternalSyncRequest_SyncMode
pattern SqlInstancesStartExternalSyncRequest_SyncMode_Offline = SqlInstancesStartExternalSyncRequest_SyncMode "OFFLINE"

{-# COMPLETE
  SqlInstancesStartExternalSyncRequest_SyncMode_EXTERNALSYNCMODEUNSPECIFIED,
  SqlInstancesStartExternalSyncRequest_SyncMode_Online,
  SqlInstancesStartExternalSyncRequest_SyncMode_Offline,
  SqlInstancesStartExternalSyncRequest_SyncMode
  #-}

-- | External sync mode
newtype SqlInstancesVerifyExternalSyncSettingsRequest_SyncMode = SqlInstancesVerifyExternalSyncSettingsRequest_SyncMode {fromSqlInstancesVerifyExternalSyncSettingsRequest_SyncMode :: Core.Text}
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

-- | Unknown external sync mode, will be defaulted to ONLINE mode
pattern SqlInstancesVerifyExternalSyncSettingsRequest_SyncMode_EXTERNALSYNCMODEUNSPECIFIED :: SqlInstancesVerifyExternalSyncSettingsRequest_SyncMode
pattern SqlInstancesVerifyExternalSyncSettingsRequest_SyncMode_EXTERNALSYNCMODEUNSPECIFIED = SqlInstancesVerifyExternalSyncSettingsRequest_SyncMode "EXTERNAL_SYNC_MODE_UNSPECIFIED"

-- | Online external sync will set up replication after initial data external sync
pattern SqlInstancesVerifyExternalSyncSettingsRequest_SyncMode_Online :: SqlInstancesVerifyExternalSyncSettingsRequest_SyncMode
pattern SqlInstancesVerifyExternalSyncSettingsRequest_SyncMode_Online = SqlInstancesVerifyExternalSyncSettingsRequest_SyncMode "ONLINE"

-- | Offline external sync only dumps and loads a one-time snapshot of the primary instance\'s data
pattern SqlInstancesVerifyExternalSyncSettingsRequest_SyncMode_Offline :: SqlInstancesVerifyExternalSyncSettingsRequest_SyncMode
pattern SqlInstancesVerifyExternalSyncSettingsRequest_SyncMode_Offline = SqlInstancesVerifyExternalSyncSettingsRequest_SyncMode "OFFLINE"

{-# COMPLETE
  SqlInstancesVerifyExternalSyncSettingsRequest_SyncMode_EXTERNALSYNCMODEUNSPECIFIED,
  SqlInstancesVerifyExternalSyncSettingsRequest_SyncMode_Online,
  SqlInstancesVerifyExternalSyncSettingsRequest_SyncMode_Offline,
  SqlInstancesVerifyExternalSyncSettingsRequest_SyncMode
  #-}

-- | This field represents the state generated by the proactive database wellness job for OutOfDisk issues. * Writers: * the proactive database wellness job for OOD. * Readers: * the proactive database wellness job
newtype SqlOutOfDiskReport_SqlOutOfDiskState = SqlOutOfDiskReport_SqlOutOfDiskState {fromSqlOutOfDiskReport_SqlOutOfDiskState :: Core.Text}
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

-- | Unspecified state
pattern SqlOutOfDiskReport_SqlOutOfDiskState_SQLOUTOFDISKSTATEUNSPECIFIED :: SqlOutOfDiskReport_SqlOutOfDiskState
pattern SqlOutOfDiskReport_SqlOutOfDiskState_SQLOUTOFDISKSTATEUNSPECIFIED = SqlOutOfDiskReport_SqlOutOfDiskState "SQL_OUT_OF_DISK_STATE_UNSPECIFIED"

-- | The instance has plenty space on data disk
pattern SqlOutOfDiskReport_SqlOutOfDiskState_Normal :: SqlOutOfDiskReport_SqlOutOfDiskState
pattern SqlOutOfDiskReport_SqlOutOfDiskState_Normal = SqlOutOfDiskReport_SqlOutOfDiskState "NORMAL"

-- | Data disk is almost used up. It is shutdown to prevent data corruption.
pattern SqlOutOfDiskReport_SqlOutOfDiskState_SOFTSHUTDOWN :: SqlOutOfDiskReport_SqlOutOfDiskState
pattern SqlOutOfDiskReport_SqlOutOfDiskState_SOFTSHUTDOWN = SqlOutOfDiskReport_SqlOutOfDiskState "SOFT_SHUTDOWN"

{-# COMPLETE
  SqlOutOfDiskReport_SqlOutOfDiskState_SQLOUTOFDISKSTATEUNSPECIFIED,
  SqlOutOfDiskReport_SqlOutOfDiskState_Normal,
  SqlOutOfDiskReport_SqlOutOfDiskState_SOFTSHUTDOWN,
  SqlOutOfDiskReport_SqlOutOfDiskState
  #-}

-- | Dual password status for the user.
newtype User_DualPasswordType = User_DualPasswordType {fromUser_DualPasswordType :: Core.Text}
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

-- | The default value.
pattern User_DualPasswordType_DUALPASSWORDTYPEUNSPECIFIED :: User_DualPasswordType
pattern User_DualPasswordType_DUALPASSWORDTYPEUNSPECIFIED = User_DualPasswordType "DUAL_PASSWORD_TYPE_UNSPECIFIED"

-- | Do not update the user\'s dual password status.
pattern User_DualPasswordType_NOMODIFYDUALPASSWORD :: User_DualPasswordType
pattern User_DualPasswordType_NOMODIFYDUALPASSWORD = User_DualPasswordType "NO_MODIFY_DUAL_PASSWORD"

-- | No dual password usable for connecting using this user.
pattern User_DualPasswordType_NODUALPASSWORD :: User_DualPasswordType
pattern User_DualPasswordType_NODUALPASSWORD = User_DualPasswordType "NO_DUAL_PASSWORD"

-- | Dual password usable for connecting using this user.
pattern User_DualPasswordType_DUALPASSWORD :: User_DualPasswordType
pattern User_DualPasswordType_DUALPASSWORD = User_DualPasswordType "DUAL_PASSWORD"

{-# COMPLETE
  User_DualPasswordType_DUALPASSWORDTYPEUNSPECIFIED,
  User_DualPasswordType_NOMODIFYDUALPASSWORD,
  User_DualPasswordType_NODUALPASSWORD,
  User_DualPasswordType_DUALPASSWORD,
  User_DualPasswordType
  #-}

-- | The user type. It determines the method to authenticate the user during login. The default is the database\'s built-in user type.
newtype User_Type = User_Type {fromUser_Type :: Core.Text}
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

-- | The database\'s built-in user type.
pattern User_Type_BUILTIN :: User_Type
pattern User_Type_BUILTIN = User_Type "BUILT_IN"

-- | Cloud IAM user.
pattern User_Type_CLOUDIAMUSER :: User_Type
pattern User_Type_CLOUDIAMUSER = User_Type "CLOUD_IAM_USER"

-- | Cloud IAM service account.
pattern User_Type_CLOUDIAMSERVICEACCOUNT :: User_Type
pattern User_Type_CLOUDIAMSERVICEACCOUNT = User_Type "CLOUD_IAM_SERVICE_ACCOUNT"

{-# COMPLETE
  User_Type_BUILTIN,
  User_Type_CLOUDIAMUSER,
  User_Type_CLOUDIAMSERVICEACCOUNT,
  User_Type
  #-}
