{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.SQLAdmin.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
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
        ApiWarning_Code_COMPROMISEDCREDENTIALS,
        ApiWarning_Code_INTERNALSTATEFAILURE,
        ..
      ),

    -- * Backup_BackupKind
    Backup_BackupKind
      ( Backup_BackupKind_SQLBACKUPKINDUNSPECIFIED,
        Backup_BackupKind_Snapshot,
        Backup_BackupKind_Physical,
        ..
      ),

    -- * Backup_State
    Backup_State
      ( Backup_State_SQLBACKUPSTATEUNSPECIFIED,
        Backup_State_Enqueued,
        Backup_State_Running,
        Backup_State_Failed,
        Backup_State_Successful,
        Backup_State_Deleting,
        Backup_State_DELETIONFAILED,
        ..
      ),

    -- * Backup_Type
    Backup_Type
      ( Backup_Type_SQLBACKUPTYPEUNSPECIFIED,
        Backup_Type_Automated,
        Backup_Type_ONDEMAND,
        Backup_Type_Final,
        ..
      ),

    -- * BackupConfiguration_TransactionalLogStorageState
    BackupConfiguration_TransactionalLogStorageState
      ( BackupConfiguration_TransactionalLogStorageState_TRANSACTIONALLOGSTORAGESTATEUNSPECIFIED,
        BackupConfiguration_TransactionalLogStorageState_Disk,
        BackupConfiguration_TransactionalLogStorageState_SWITCHINGTOCLOUDSTORAGE,
        BackupConfiguration_TransactionalLogStorageState_SWITCHEDTOCLOUDSTORAGE,
        BackupConfiguration_TransactionalLogStorageState_CLOUDSTORAGE,
        ..
      ),

    -- * BackupReencryptionConfig_BackupType
    BackupReencryptionConfig_BackupType
      ( BackupReencryptionConfig_BackupType_BACKUPTYPEUNSPECIFIED,
        BackupReencryptionConfig_BackupType_Automated,
        BackupReencryptionConfig_BackupType_ONDEMAND,
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
        ConnectSettings_DatabaseVersion_MYSQL_8_0,
        ConnectSettings_DatabaseVersion_MYSQL_8_0_18,
        ConnectSettings_DatabaseVersion_MYSQL_8_0_26,
        ConnectSettings_DatabaseVersion_MYSQL_8_0_27,
        ConnectSettings_DatabaseVersion_MYSQL_8_0_28,
        ConnectSettings_DatabaseVersion_MYSQL_8_0_29,
        ConnectSettings_DatabaseVersion_MYSQL_8_0_30,
        ConnectSettings_DatabaseVersion_MYSQL_8_0_31,
        ConnectSettings_DatabaseVersion_MYSQL_8_0_32,
        ConnectSettings_DatabaseVersion_MYSQL_8_0_33,
        ConnectSettings_DatabaseVersion_MYSQL_8_0_34,
        ConnectSettings_DatabaseVersion_MYSQL_8_0_35,
        ConnectSettings_DatabaseVersion_MYSQL_8_0_36,
        ConnectSettings_DatabaseVersion_MYSQL_8_0_37,
        ConnectSettings_DatabaseVersion_MYSQL_8_0_38,
        ConnectSettings_DatabaseVersion_MYSQL_8_0_39,
        ConnectSettings_DatabaseVersion_MYSQL_8_0_40,
        ConnectSettings_DatabaseVersion_MYSQL_8_0_41,
        ConnectSettings_DatabaseVersion_MYSQL_8_0_42,
        ConnectSettings_DatabaseVersion_MYSQL_8_4,
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
        ConnectSettings_DatabaseVersion_POSTGRES_15,
        ConnectSettings_DatabaseVersion_POSTGRES_16,
        ConnectSettings_DatabaseVersion_POSTGRES_17,
        ConnectSettings_DatabaseVersion_SQLSERVER2019STANDARD,
        ConnectSettings_DatabaseVersion_SQLSERVER2019ENTERPRISE,
        ConnectSettings_DatabaseVersion_SQLSERVER2019EXPRESS,
        ConnectSettings_DatabaseVersion_SQLSERVER2019WEB,
        ConnectSettings_DatabaseVersion_SQLSERVER2022STANDARD,
        ConnectSettings_DatabaseVersion_SQLSERVER2022ENTERPRISE,
        ConnectSettings_DatabaseVersion_SQLSERVER2022EXPRESS,
        ConnectSettings_DatabaseVersion_SQLSERVER2022WEB,
        ..
      ),

    -- * ConnectSettings_ServerCaMode
    ConnectSettings_ServerCaMode
      ( ConnectSettings_ServerCaMode_CAMODEUNSPECIFIED,
        ConnectSettings_ServerCaMode_GOOGLEMANAGEDINTERNALCA,
        ConnectSettings_ServerCaMode_GOOGLEMANAGEDCASCA,
        ConnectSettings_ServerCaMode_CUSTOMERMANAGEDCASCA,
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
        DatabaseInstance_DatabaseVersion_MYSQL_8_0,
        DatabaseInstance_DatabaseVersion_MYSQL_8_0_18,
        DatabaseInstance_DatabaseVersion_MYSQL_8_0_26,
        DatabaseInstance_DatabaseVersion_MYSQL_8_0_27,
        DatabaseInstance_DatabaseVersion_MYSQL_8_0_28,
        DatabaseInstance_DatabaseVersion_MYSQL_8_0_29,
        DatabaseInstance_DatabaseVersion_MYSQL_8_0_30,
        DatabaseInstance_DatabaseVersion_MYSQL_8_0_31,
        DatabaseInstance_DatabaseVersion_MYSQL_8_0_32,
        DatabaseInstance_DatabaseVersion_MYSQL_8_0_33,
        DatabaseInstance_DatabaseVersion_MYSQL_8_0_34,
        DatabaseInstance_DatabaseVersion_MYSQL_8_0_35,
        DatabaseInstance_DatabaseVersion_MYSQL_8_0_36,
        DatabaseInstance_DatabaseVersion_MYSQL_8_0_37,
        DatabaseInstance_DatabaseVersion_MYSQL_8_0_38,
        DatabaseInstance_DatabaseVersion_MYSQL_8_0_39,
        DatabaseInstance_DatabaseVersion_MYSQL_8_0_40,
        DatabaseInstance_DatabaseVersion_MYSQL_8_0_41,
        DatabaseInstance_DatabaseVersion_MYSQL_8_0_42,
        DatabaseInstance_DatabaseVersion_MYSQL_8_4,
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
        DatabaseInstance_DatabaseVersion_POSTGRES_15,
        DatabaseInstance_DatabaseVersion_POSTGRES_16,
        DatabaseInstance_DatabaseVersion_POSTGRES_17,
        DatabaseInstance_DatabaseVersion_SQLSERVER2019STANDARD,
        DatabaseInstance_DatabaseVersion_SQLSERVER2019ENTERPRISE,
        DatabaseInstance_DatabaseVersion_SQLSERVER2019EXPRESS,
        DatabaseInstance_DatabaseVersion_SQLSERVER2019WEB,
        DatabaseInstance_DatabaseVersion_SQLSERVER2022STANDARD,
        DatabaseInstance_DatabaseVersion_SQLSERVER2022ENTERPRISE,
        DatabaseInstance_DatabaseVersion_SQLSERVER2022EXPRESS,
        DatabaseInstance_DatabaseVersion_SQLSERVER2022WEB,
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

    -- * DatabaseInstance_SqlNetworkArchitecture
    DatabaseInstance_SqlNetworkArchitecture
      ( DatabaseInstance_SqlNetworkArchitecture_SQLNETWORKARCHITECTUREUNSPECIFIED,
        DatabaseInstance_SqlNetworkArchitecture_NEWNETWORKARCHITECTURE,
        DatabaseInstance_SqlNetworkArchitecture_OLDNETWORKARCHITECTURE,
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

    -- * DnsNameMapping_ConnectionType
    DnsNameMapping_ConnectionType
      ( DnsNameMapping_ConnectionType_CONNECTIONTYPEUNSPECIFIED,
        DnsNameMapping_ConnectionType_Public,
        DnsNameMapping_ConnectionType_PRIVATESERVICESACCESS,
        DnsNameMapping_ConnectionType_PRIVATESERVICECONNECT,
        ..
      ),

    -- * DnsNameMapping_DnsScope
    DnsNameMapping_DnsScope
      ( DnsNameMapping_DnsScope_DNSSCOPEUNSPECIFIED,
        DnsNameMapping_DnsScope_Instance,
        ..
      ),

    -- * ExportContext_BakExportOptions_BakType
    ExportContext_BakExportOptions_BakType
      ( ExportContext_BakExportOptions_BakType_BAKTYPEUNSPECIFIED,
        ExportContext_BakExportOptions_BakType_Full,
        ExportContext_BakExportOptions_BakType_Diff,
        ExportContext_BakExportOptions_BakType_Tlog,
        ..
      ),

    -- * ExportContext_FileType
    ExportContext_FileType
      ( ExportContext_FileType_SQLFILETYPEUNSPECIFIED,
        ExportContext_FileType_Sql,
        ExportContext_FileType_Csv,
        ExportContext_FileType_Bak,
        ExportContext_FileType_Tde,
        ..
      ),

    -- * Flag_AppliesToItem
    Flag_AppliesToItem
      ( Flag_AppliesToItem_SQLDATABASEVERSIONUNSPECIFIED,
        Flag_AppliesToItem_MYSQL_5_1,
        Flag_AppliesToItem_MYSQL_5_5,
        Flag_AppliesToItem_MYSQL_5_6,
        Flag_AppliesToItem_MYSQL_5_7,
        Flag_AppliesToItem_MYSQL_8_0,
        Flag_AppliesToItem_MYSQL_8_0_18,
        Flag_AppliesToItem_MYSQL_8_0_26,
        Flag_AppliesToItem_MYSQL_8_0_27,
        Flag_AppliesToItem_MYSQL_8_0_28,
        Flag_AppliesToItem_MYSQL_8_0_29,
        Flag_AppliesToItem_MYSQL_8_0_30,
        Flag_AppliesToItem_MYSQL_8_0_31,
        Flag_AppliesToItem_MYSQL_8_0_32,
        Flag_AppliesToItem_MYSQL_8_0_33,
        Flag_AppliesToItem_MYSQL_8_0_34,
        Flag_AppliesToItem_MYSQL_8_0_35,
        Flag_AppliesToItem_MYSQL_8_0_36,
        Flag_AppliesToItem_MYSQL_8_0_37,
        Flag_AppliesToItem_MYSQL_8_0_38,
        Flag_AppliesToItem_MYSQL_8_0_39,
        Flag_AppliesToItem_MYSQL_8_0_40,
        Flag_AppliesToItem_MYSQL_8_0_41,
        Flag_AppliesToItem_MYSQL_8_0_42,
        Flag_AppliesToItem_MYSQL_8_4,
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
        Flag_AppliesToItem_POSTGRES_15,
        Flag_AppliesToItem_POSTGRES_16,
        Flag_AppliesToItem_POSTGRES_17,
        Flag_AppliesToItem_SQLSERVER2019STANDARD,
        Flag_AppliesToItem_SQLSERVER2019ENTERPRISE,
        Flag_AppliesToItem_SQLSERVER2019EXPRESS,
        Flag_AppliesToItem_SQLSERVER2019WEB,
        Flag_AppliesToItem_SQLSERVER2022STANDARD,
        Flag_AppliesToItem_SQLSERVER2022ENTERPRISE,
        Flag_AppliesToItem_SQLSERVER2022EXPRESS,
        Flag_AppliesToItem_SQLSERVER2022WEB,
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

    -- * ImportContext_BakImportOptions_BakType
    ImportContext_BakImportOptions_BakType
      ( ImportContext_BakImportOptions_BakType_BAKTYPEUNSPECIFIED,
        ImportContext_BakImportOptions_BakType_Full,
        ImportContext_BakImportOptions_BakType_Diff,
        ImportContext_BakImportOptions_BakType_Tlog,
        ..
      ),

    -- * ImportContext_FileType
    ImportContext_FileType
      ( ImportContext_FileType_SQLFILETYPEUNSPECIFIED,
        ImportContext_FileType_Sql,
        ImportContext_FileType_Csv,
        ImportContext_FileType_Bak,
        ImportContext_FileType_Tde,
        ..
      ),

    -- * IpConfiguration_ServerCaMode
    IpConfiguration_ServerCaMode
      ( IpConfiguration_ServerCaMode_CAMODEUNSPECIFIED,
        IpConfiguration_ServerCaMode_GOOGLEMANAGEDINTERNALCA,
        IpConfiguration_ServerCaMode_GOOGLEMANAGEDCASCA,
        IpConfiguration_ServerCaMode_CUSTOMERMANAGEDCASCA,
        ..
      ),

    -- * IpConfiguration_SslMode
    IpConfiguration_SslMode
      ( IpConfiguration_SslMode_SSLMODEUNSPECIFIED,
        IpConfiguration_SslMode_ALLOWUNENCRYPTEDANDENCRYPTED,
        IpConfiguration_SslMode_ENCRYPTEDONLY,
        IpConfiguration_SslMode_TRUSTEDCLIENTCERTIFICATEREQUIRED,
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
        MaintenanceWindow_UpdateTrack_WEEK5,
        ..
      ),

    -- * OnPremisesConfiguration_SslOption
    OnPremisesConfiguration_SslOption
      ( OnPremisesConfiguration_SslOption_SSLOPTIONUNSPECIFIED,
        OnPremisesConfiguration_SslOption_Disable,
        OnPremisesConfiguration_SslOption_Require,
        OnPremisesConfiguration_SslOption_VERIFYCA,
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
        Operation_OperationType_Switchover,
        Operation_OperationType_UPDATEBACKUP,
        Operation_OperationType_ACQUIRESSRSLEASE,
        Operation_OperationType_RELEASESSRSLEASE,
        Operation_OperationType_RECONFIGUREOLDPRIMARY,
        Operation_OperationType_CLUSTERMAINTENANCE,
        Operation_OperationType_SELFSERVICEMAINTENANCE,
        Operation_OperationType_SWITCHOVERTOREPLICA,
        Operation_OperationType_MAJORVERSIONUPGRADE,
        Operation_OperationType_ADVANCEDBACKUP,
        Operation_OperationType_MANAGEBACKUP,
        Operation_OperationType_ENHANCEDBACKUP,
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
        Settings_DataDiskType_HYPERDISKBALANCED,
        ..
      ),

    -- * Settings_Edition
    Settings_Edition
      ( Settings_Edition_EDITIONUNSPECIFIED,
        Settings_Edition_Enterprise,
        Settings_Edition_ENTERPRISEPLUS,
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
        SqlExternalSyncSettingError_Type_MISSINGOPTIONALPRIVILEGES,
        SqlExternalSyncSettingError_Type_RISKYBACKUPADMINPRIVILEGE,
        SqlExternalSyncSettingError_Type_INSUFFICIENTGCSPERMISSIONS,
        SqlExternalSyncSettingError_Type_INVALIDFILEINFO,
        SqlExternalSyncSettingError_Type_UNSUPPORTEDDATABASESETTINGS,
        SqlExternalSyncSettingError_Type_MYSQLPARALLELIMPORTINSUFFICIENTPRIVILEGE,
        SqlExternalSyncSettingError_Type_LOCALINFILEOFF,
        SqlExternalSyncSettingError_Type_TURNONPITRAFTERPROMOTE,
        SqlExternalSyncSettingError_Type_INCOMPATIBLEDATABASEMINORVERSION,
        SqlExternalSyncSettingError_Type_SOURCEMAXSUBSCRIPTIONS,
        SqlExternalSyncSettingError_Type_UNABLETOVERIFYDEFINERS,
        SqlExternalSyncSettingError_Type_SUBSCRIPTIONCALCULATIONSTATUS,
        SqlExternalSyncSettingError_Type_PGSUBSCRIPTIONCOUNT,
        SqlExternalSyncSettingError_Type_PGSYNCPARALLELLEVEL,
        SqlExternalSyncSettingError_Type_INSUFFICIENTDISKSIZE,
        SqlExternalSyncSettingError_Type_INSUFFICIENTMACHINETIER,
        SqlExternalSyncSettingError_Type_UNSUPPORTEDEXTENSIONSNOTMIGRATED,
        SqlExternalSyncSettingError_Type_EXTENSIONSNOTMIGRATED,
        SqlExternalSyncSettingError_Type_PGCRONFLAGENABLEDINREPLICA,
        SqlExternalSyncSettingError_Type_EXTENSIONSNOTENABLEDINREPLICA,
        SqlExternalSyncSettingError_Type_UNSUPPORTEDCOLUMNS,
        SqlExternalSyncSettingError_Type_USERSNOTCREATEDINREPLICA,
        SqlExternalSyncSettingError_Type_UNSUPPORTEDSYSTEMOBJECTS,
        SqlExternalSyncSettingError_Type_UNSUPPORTEDTABLESWITHREPLICAIDENTITY,
        SqlExternalSyncSettingError_Type_SELECTEDOBJECTSNOTEXISTONSOURCE,
        ..
      ),

    -- * SqlInstancesStartExternalSyncRequest_MigrationType
    SqlInstancesStartExternalSyncRequest_MigrationType
      ( SqlInstancesStartExternalSyncRequest_MigrationType_MIGRATIONTYPEUNSPECIFIED,
        SqlInstancesStartExternalSyncRequest_MigrationType_Logical,
        SqlInstancesStartExternalSyncRequest_MigrationType_Physical,
        ..
      ),

    -- * SqlInstancesStartExternalSyncRequest_SyncMode
    SqlInstancesStartExternalSyncRequest_SyncMode
      ( SqlInstancesStartExternalSyncRequest_SyncMode_EXTERNALSYNCMODEUNSPECIFIED,
        SqlInstancesStartExternalSyncRequest_SyncMode_Online,
        SqlInstancesStartExternalSyncRequest_SyncMode_Offline,
        ..
      ),

    -- * SqlInstancesStartExternalSyncRequest_SyncParallelLevel
    SqlInstancesStartExternalSyncRequest_SyncParallelLevel
      ( SqlInstancesStartExternalSyncRequest_SyncParallelLevel_EXTERNALSYNCPARALLELLEVELUNSPECIFIED,
        SqlInstancesStartExternalSyncRequest_SyncParallelLevel_Min,
        SqlInstancesStartExternalSyncRequest_SyncParallelLevel_Optimal,
        SqlInstancesStartExternalSyncRequest_SyncParallelLevel_Max,
        ..
      ),

    -- * SqlInstancesVerifyExternalSyncSettingsRequest_MigrationType
    SqlInstancesVerifyExternalSyncSettingsRequest_MigrationType
      ( SqlInstancesVerifyExternalSyncSettingsRequest_MigrationType_MIGRATIONTYPEUNSPECIFIED,
        SqlInstancesVerifyExternalSyncSettingsRequest_MigrationType_Logical,
        SqlInstancesVerifyExternalSyncSettingsRequest_MigrationType_Physical,
        ..
      ),

    -- * SqlInstancesVerifyExternalSyncSettingsRequest_SyncMode
    SqlInstancesVerifyExternalSyncSettingsRequest_SyncMode
      ( SqlInstancesVerifyExternalSyncSettingsRequest_SyncMode_EXTERNALSYNCMODEUNSPECIFIED,
        SqlInstancesVerifyExternalSyncSettingsRequest_SyncMode_Online,
        SqlInstancesVerifyExternalSyncSettingsRequest_SyncMode_Offline,
        ..
      ),

    -- * SqlInstancesVerifyExternalSyncSettingsRequest_SyncParallelLevel
    SqlInstancesVerifyExternalSyncSettingsRequest_SyncParallelLevel
      ( SqlInstancesVerifyExternalSyncSettingsRequest_SyncParallelLevel_EXTERNALSYNCPARALLELLEVELUNSPECIFIED,
        SqlInstancesVerifyExternalSyncSettingsRequest_SyncParallelLevel_Min,
        SqlInstancesVerifyExternalSyncSettingsRequest_SyncParallelLevel_Optimal,
        SqlInstancesVerifyExternalSyncSettingsRequest_SyncParallelLevel_Max,
        ..
      ),

    -- * SqlOutOfDiskReport_SqlOutOfDiskState
    SqlOutOfDiskReport_SqlOutOfDiskState
      ( SqlOutOfDiskReport_SqlOutOfDiskState_SQLOUTOFDISKSTATEUNSPECIFIED,
        SqlOutOfDiskReport_SqlOutOfDiskState_Normal,
        SqlOutOfDiskReport_SqlOutOfDiskState_SOFTSHUTDOWN,
        ..
      ),

    -- * SqlSubOperationType_MaintenanceType
    SqlSubOperationType_MaintenanceType
      ( SqlSubOperationType_MaintenanceType_SQLMAINTENANCETYPEUNSPECIFIED,
        SqlSubOperationType_MaintenanceType_INSTANCEMAINTENANCE,
        SqlSubOperationType_MaintenanceType_REPLICAINCLUDEDMAINTENANCE,
        SqlSubOperationType_MaintenanceType_INSTANCESELFSERVICEMAINTENANCE,
        SqlSubOperationType_MaintenanceType_REPLICAINCLUDEDSELFSERVICEMAINTENANCE,
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
        User_Type_CLOUDIAMGROUP,
        User_Type_CLOUDIAMGROUPUSER,
        User_Type_CLOUDIAMGROUPSERVICEACCOUNT,
        ..
      ),
  )
where

import Gogol.Prelude qualified as Core

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

-- | Warning when user tries to create\/update a user with credentials that have previously been compromised by a public data breach.
pattern ApiWarning_Code_COMPROMISEDCREDENTIALS :: ApiWarning_Code
pattern ApiWarning_Code_COMPROMISEDCREDENTIALS = ApiWarning_Code "COMPROMISED_CREDENTIALS"

-- | Warning when the operation succeeds but some non-critical workflow state failed.
pattern ApiWarning_Code_INTERNALSTATEFAILURE :: ApiWarning_Code
pattern ApiWarning_Code_INTERNALSTATEFAILURE = ApiWarning_Code "INTERNAL_STATE_FAILURE"

{-# COMPLETE
  ApiWarning_Code_SQLAPIWARNINGCODEUNSPECIFIED,
  ApiWarning_Code_REGIONUNREACHABLE,
  ApiWarning_Code_MAXRESULTSEXCEEDSLIMIT,
  ApiWarning_Code_COMPROMISEDCREDENTIALS,
  ApiWarning_Code_INTERNALSTATEFAILURE,
  ApiWarning_Code
  #-}

-- | Output only. Specifies the kind of backup, PHYSICAL or DEFAULT_SNAPSHOT.
newtype Backup_BackupKind = Backup_BackupKind {fromBackup_BackupKind :: Core.Text}
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
pattern Backup_BackupKind_SQLBACKUPKINDUNSPECIFIED :: Backup_BackupKind
pattern Backup_BackupKind_SQLBACKUPKINDUNSPECIFIED = Backup_BackupKind "SQL_BACKUP_KIND_UNSPECIFIED"

-- | Snapshot-based backups.
pattern Backup_BackupKind_Snapshot :: Backup_BackupKind
pattern Backup_BackupKind_Snapshot = Backup_BackupKind "SNAPSHOT"

-- | Physical backups.
pattern Backup_BackupKind_Physical :: Backup_BackupKind
pattern Backup_BackupKind_Physical = Backup_BackupKind "PHYSICAL"

{-# COMPLETE
  Backup_BackupKind_SQLBACKUPKINDUNSPECIFIED,
  Backup_BackupKind_Snapshot,
  Backup_BackupKind_Physical,
  Backup_BackupKind
  #-}

-- | Output only. The status of this backup.
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

-- | The state of the backup is unknown.
pattern Backup_State_SQLBACKUPSTATEUNSPECIFIED :: Backup_State
pattern Backup_State_SQLBACKUPSTATEUNSPECIFIED = Backup_State "SQL_BACKUP_STATE_UNSPECIFIED"

-- | The backup that\'s added to a queue.
pattern Backup_State_Enqueued :: Backup_State
pattern Backup_State_Enqueued = Backup_State "ENQUEUED"

-- | The backup is in progress.
pattern Backup_State_Running :: Backup_State
pattern Backup_State_Running = Backup_State "RUNNING"

-- | The backup failed.
pattern Backup_State_Failed :: Backup_State
pattern Backup_State_Failed = Backup_State "FAILED"

-- | The backup is successful.
pattern Backup_State_Successful :: Backup_State
pattern Backup_State_Successful = Backup_State "SUCCESSFUL"

-- | The backup is being deleted.
pattern Backup_State_Deleting :: Backup_State
pattern Backup_State_Deleting = Backup_State "DELETING"

-- | Deletion of the backup failed.
pattern Backup_State_DELETIONFAILED :: Backup_State
pattern Backup_State_DELETIONFAILED = Backup_State "DELETION_FAILED"

{-# COMPLETE
  Backup_State_SQLBACKUPSTATEUNSPECIFIED,
  Backup_State_Enqueued,
  Backup_State_Running,
  Backup_State_Failed,
  Backup_State_Successful,
  Backup_State_Deleting,
  Backup_State_DELETIONFAILED,
  Backup_State
  #-}

-- | Output only. The type of this backup. The type can be \"AUTOMATED\", \"ON_DEMAND\" or “FINAL”.
newtype Backup_Type = Backup_Type {fromBackup_Type :: Core.Text}
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

-- | This is an unknown backup type.
pattern Backup_Type_SQLBACKUPTYPEUNSPECIFIED :: Backup_Type
pattern Backup_Type_SQLBACKUPTYPEUNSPECIFIED = Backup_Type "SQL_BACKUP_TYPE_UNSPECIFIED"

-- | The backup schedule triggers a backup automatically.
pattern Backup_Type_Automated :: Backup_Type
pattern Backup_Type_Automated = Backup_Type "AUTOMATED"

-- | The user triggers a backup manually.
pattern Backup_Type_ONDEMAND :: Backup_Type
pattern Backup_Type_ONDEMAND = Backup_Type "ON_DEMAND"

-- | The backup created when instance is deleted.
pattern Backup_Type_Final :: Backup_Type
pattern Backup_Type_Final = Backup_Type "FINAL"

{-# COMPLETE
  Backup_Type_SQLBACKUPTYPEUNSPECIFIED,
  Backup_Type_Automated,
  Backup_Type_ONDEMAND,
  Backup_Type_Final,
  Backup_Type
  #-}

-- | Output only. This value contains the storage location of transactional logs used to perform point-in-time recovery (PITR) for the database.
newtype BackupConfiguration_TransactionalLogStorageState = BackupConfiguration_TransactionalLogStorageState {fromBackupConfiguration_TransactionalLogStorageState :: Core.Text}
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

-- | Unspecified.
pattern BackupConfiguration_TransactionalLogStorageState_TRANSACTIONALLOGSTORAGESTATEUNSPECIFIED :: BackupConfiguration_TransactionalLogStorageState
pattern BackupConfiguration_TransactionalLogStorageState_TRANSACTIONALLOGSTORAGESTATEUNSPECIFIED = BackupConfiguration_TransactionalLogStorageState "TRANSACTIONAL_LOG_STORAGE_STATE_UNSPECIFIED"

-- | The transaction logs used for PITR for the instance are stored on a data disk.
pattern BackupConfiguration_TransactionalLogStorageState_Disk :: BackupConfiguration_TransactionalLogStorageState
pattern BackupConfiguration_TransactionalLogStorageState_Disk = BackupConfiguration_TransactionalLogStorageState "DISK"

-- | The transaction logs used for PITR for the instance are switching from being stored on a data disk to being stored in Cloud Storage. Only applicable to MySQL.
pattern BackupConfiguration_TransactionalLogStorageState_SWITCHINGTOCLOUDSTORAGE :: BackupConfiguration_TransactionalLogStorageState
pattern BackupConfiguration_TransactionalLogStorageState_SWITCHINGTOCLOUDSTORAGE = BackupConfiguration_TransactionalLogStorageState "SWITCHING_TO_CLOUD_STORAGE"

-- | The transaction logs used for PITR for the instance are now stored in Cloud Storage. Previously, they were stored on a data disk. Only applicable to MySQL.
pattern BackupConfiguration_TransactionalLogStorageState_SWITCHEDTOCLOUDSTORAGE :: BackupConfiguration_TransactionalLogStorageState
pattern BackupConfiguration_TransactionalLogStorageState_SWITCHEDTOCLOUDSTORAGE = BackupConfiguration_TransactionalLogStorageState "SWITCHED_TO_CLOUD_STORAGE"

-- | The transaction logs used for PITR for the instance are stored in Cloud Storage. Only applicable to MySQL and PostgreSQL.
pattern BackupConfiguration_TransactionalLogStorageState_CLOUDSTORAGE :: BackupConfiguration_TransactionalLogStorageState
pattern BackupConfiguration_TransactionalLogStorageState_CLOUDSTORAGE = BackupConfiguration_TransactionalLogStorageState "CLOUD_STORAGE"

{-# COMPLETE
  BackupConfiguration_TransactionalLogStorageState_TRANSACTIONALLOGSTORAGESTATEUNSPECIFIED,
  BackupConfiguration_TransactionalLogStorageState_Disk,
  BackupConfiguration_TransactionalLogStorageState_SWITCHINGTOCLOUDSTORAGE,
  BackupConfiguration_TransactionalLogStorageState_SWITCHEDTOCLOUDSTORAGE,
  BackupConfiguration_TransactionalLogStorageState_CLOUDSTORAGE,
  BackupConfiguration_TransactionalLogStorageState
  #-}

-- | Type of backups users want to re-encrypt.
newtype BackupReencryptionConfig_BackupType = BackupReencryptionConfig_BackupType {fromBackupReencryptionConfig_BackupType :: Core.Text}
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

-- | Unknown backup type, will be defaulted to AUTOMATIC backup type
pattern BackupReencryptionConfig_BackupType_BACKUPTYPEUNSPECIFIED :: BackupReencryptionConfig_BackupType
pattern BackupReencryptionConfig_BackupType_BACKUPTYPEUNSPECIFIED = BackupReencryptionConfig_BackupType "BACKUP_TYPE_UNSPECIFIED"

-- | Reencrypt automatic backups
pattern BackupReencryptionConfig_BackupType_Automated :: BackupReencryptionConfig_BackupType
pattern BackupReencryptionConfig_BackupType_Automated = BackupReencryptionConfig_BackupType "AUTOMATED"

-- | Reencrypt on-demand backups
pattern BackupReencryptionConfig_BackupType_ONDEMAND :: BackupReencryptionConfig_BackupType
pattern BackupReencryptionConfig_BackupType_ONDEMAND = BackupReencryptionConfig_BackupType "ON_DEMAND"

{-# COMPLETE
  BackupReencryptionConfig_BackupType_BACKUPTYPEUNSPECIFIED,
  BackupReencryptionConfig_BackupType_Automated,
  BackupReencryptionConfig_BackupType_ONDEMAND,
  BackupReencryptionConfig_BackupType
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

-- | Snapshot-based backups.
pattern BackupRun_BackupKind_Snapshot :: BackupRun_BackupKind
pattern BackupRun_BackupKind_Snapshot = BackupRun_BackupKind "SNAPSHOT"

-- | Physical backups.
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

-- | The database major version is MySQL 8.0 and the minor version is 33.
pattern ConnectSettings_DatabaseVersion_MYSQL_8_0_33 :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_MYSQL_8_0_33 = ConnectSettings_DatabaseVersion "MYSQL_8_0_33"

-- | The database major version is MySQL 8.0 and the minor version is 34.
pattern ConnectSettings_DatabaseVersion_MYSQL_8_0_34 :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_MYSQL_8_0_34 = ConnectSettings_DatabaseVersion "MYSQL_8_0_34"

-- | The database major version is MySQL 8.0 and the minor version is 35.
pattern ConnectSettings_DatabaseVersion_MYSQL_8_0_35 :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_MYSQL_8_0_35 = ConnectSettings_DatabaseVersion "MYSQL_8_0_35"

-- | The database major version is MySQL 8.0 and the minor version is 36.
pattern ConnectSettings_DatabaseVersion_MYSQL_8_0_36 :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_MYSQL_8_0_36 = ConnectSettings_DatabaseVersion "MYSQL_8_0_36"

-- | The database major version is MySQL 8.0 and the minor version is 37.
pattern ConnectSettings_DatabaseVersion_MYSQL_8_0_37 :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_MYSQL_8_0_37 = ConnectSettings_DatabaseVersion "MYSQL_8_0_37"

-- | The database major version is MySQL 8.0 and the minor version is 38.
pattern ConnectSettings_DatabaseVersion_MYSQL_8_0_38 :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_MYSQL_8_0_38 = ConnectSettings_DatabaseVersion "MYSQL_8_0_38"

-- | The database major version is MySQL 8.0 and the minor version is 39.
pattern ConnectSettings_DatabaseVersion_MYSQL_8_0_39 :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_MYSQL_8_0_39 = ConnectSettings_DatabaseVersion "MYSQL_8_0_39"

-- | The database major version is MySQL 8.0 and the minor version is 40.
pattern ConnectSettings_DatabaseVersion_MYSQL_8_0_40 :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_MYSQL_8_0_40 = ConnectSettings_DatabaseVersion "MYSQL_8_0_40"

-- | The database major version is MySQL 8.0 and the minor version is 41.
pattern ConnectSettings_DatabaseVersion_MYSQL_8_0_41 :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_MYSQL_8_0_41 = ConnectSettings_DatabaseVersion "MYSQL_8_0_41"

-- | The database major version is MySQL 8.0 and the minor version is 42.
pattern ConnectSettings_DatabaseVersion_MYSQL_8_0_42 :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_MYSQL_8_0_42 = ConnectSettings_DatabaseVersion "MYSQL_8_0_42"

-- | The database version is MySQL 8.4.
pattern ConnectSettings_DatabaseVersion_MYSQL_8_4 :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_MYSQL_8_4 = ConnectSettings_DatabaseVersion "MYSQL_8_4"

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

-- | The database version is PostgreSQL 15.
pattern ConnectSettings_DatabaseVersion_POSTGRES_15 :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_POSTGRES_15 = ConnectSettings_DatabaseVersion "POSTGRES_15"

-- | The database version is PostgreSQL 16.
pattern ConnectSettings_DatabaseVersion_POSTGRES_16 :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_POSTGRES_16 = ConnectSettings_DatabaseVersion "POSTGRES_16"

-- | The database version is PostgreSQL 17.
pattern ConnectSettings_DatabaseVersion_POSTGRES_17 :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_POSTGRES_17 = ConnectSettings_DatabaseVersion "POSTGRES_17"

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

-- | The database version is SQL Server 2022 Standard.
pattern ConnectSettings_DatabaseVersion_SQLSERVER2022STANDARD :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_SQLSERVER2022STANDARD = ConnectSettings_DatabaseVersion "SQLSERVER_2022_STANDARD"

-- | The database version is SQL Server 2022 Enterprise.
pattern ConnectSettings_DatabaseVersion_SQLSERVER2022ENTERPRISE :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_SQLSERVER2022ENTERPRISE = ConnectSettings_DatabaseVersion "SQLSERVER_2022_ENTERPRISE"

-- | The database version is SQL Server 2022 Express.
pattern ConnectSettings_DatabaseVersion_SQLSERVER2022EXPRESS :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_SQLSERVER2022EXPRESS = ConnectSettings_DatabaseVersion "SQLSERVER_2022_EXPRESS"

-- | The database version is SQL Server 2022 Web.
pattern ConnectSettings_DatabaseVersion_SQLSERVER2022WEB :: ConnectSettings_DatabaseVersion
pattern ConnectSettings_DatabaseVersion_SQLSERVER2022WEB = ConnectSettings_DatabaseVersion "SQLSERVER_2022_WEB"

{-# COMPLETE
  ConnectSettings_DatabaseVersion_SQLDATABASEVERSIONUNSPECIFIED,
  ConnectSettings_DatabaseVersion_MYSQL_5_1,
  ConnectSettings_DatabaseVersion_MYSQL_5_5,
  ConnectSettings_DatabaseVersion_MYSQL_5_6,
  ConnectSettings_DatabaseVersion_MYSQL_5_7,
  ConnectSettings_DatabaseVersion_MYSQL_8_0,
  ConnectSettings_DatabaseVersion_MYSQL_8_0_18,
  ConnectSettings_DatabaseVersion_MYSQL_8_0_26,
  ConnectSettings_DatabaseVersion_MYSQL_8_0_27,
  ConnectSettings_DatabaseVersion_MYSQL_8_0_28,
  ConnectSettings_DatabaseVersion_MYSQL_8_0_29,
  ConnectSettings_DatabaseVersion_MYSQL_8_0_30,
  ConnectSettings_DatabaseVersion_MYSQL_8_0_31,
  ConnectSettings_DatabaseVersion_MYSQL_8_0_32,
  ConnectSettings_DatabaseVersion_MYSQL_8_0_33,
  ConnectSettings_DatabaseVersion_MYSQL_8_0_34,
  ConnectSettings_DatabaseVersion_MYSQL_8_0_35,
  ConnectSettings_DatabaseVersion_MYSQL_8_0_36,
  ConnectSettings_DatabaseVersion_MYSQL_8_0_37,
  ConnectSettings_DatabaseVersion_MYSQL_8_0_38,
  ConnectSettings_DatabaseVersion_MYSQL_8_0_39,
  ConnectSettings_DatabaseVersion_MYSQL_8_0_40,
  ConnectSettings_DatabaseVersion_MYSQL_8_0_41,
  ConnectSettings_DatabaseVersion_MYSQL_8_0_42,
  ConnectSettings_DatabaseVersion_MYSQL_8_4,
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
  ConnectSettings_DatabaseVersion_POSTGRES_15,
  ConnectSettings_DatabaseVersion_POSTGRES_16,
  ConnectSettings_DatabaseVersion_POSTGRES_17,
  ConnectSettings_DatabaseVersion_SQLSERVER2019STANDARD,
  ConnectSettings_DatabaseVersion_SQLSERVER2019ENTERPRISE,
  ConnectSettings_DatabaseVersion_SQLSERVER2019EXPRESS,
  ConnectSettings_DatabaseVersion_SQLSERVER2019WEB,
  ConnectSettings_DatabaseVersion_SQLSERVER2022STANDARD,
  ConnectSettings_DatabaseVersion_SQLSERVER2022ENTERPRISE,
  ConnectSettings_DatabaseVersion_SQLSERVER2022EXPRESS,
  ConnectSettings_DatabaseVersion_SQLSERVER2022WEB,
  ConnectSettings_DatabaseVersion
  #-}

-- | Specify what type of CA is used for the server certificate.
newtype ConnectSettings_ServerCaMode = ConnectSettings_ServerCaMode {fromConnectSettings_ServerCaMode :: Core.Text}
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

-- | CA mode is unknown.
pattern ConnectSettings_ServerCaMode_CAMODEUNSPECIFIED :: ConnectSettings_ServerCaMode
pattern ConnectSettings_ServerCaMode_CAMODEUNSPECIFIED = ConnectSettings_ServerCaMode "CA_MODE_UNSPECIFIED"

-- | Google-managed self-signed internal CA.
pattern ConnectSettings_ServerCaMode_GOOGLEMANAGEDINTERNALCA :: ConnectSettings_ServerCaMode
pattern ConnectSettings_ServerCaMode_GOOGLEMANAGEDINTERNALCA = ConnectSettings_ServerCaMode "GOOGLE_MANAGED_INTERNAL_CA"

-- | Google-managed regional CA part of root CA hierarchy hosted on Google Cloud\'s Certificate Authority Service (CAS).
pattern ConnectSettings_ServerCaMode_GOOGLEMANAGEDCASCA :: ConnectSettings_ServerCaMode
pattern ConnectSettings_ServerCaMode_GOOGLEMANAGEDCASCA = ConnectSettings_ServerCaMode "GOOGLE_MANAGED_CAS_CA"

-- | Customer-managed CA hosted on Google Cloud\'s Certificate Authority Service (CAS).
pattern ConnectSettings_ServerCaMode_CUSTOMERMANAGEDCASCA :: ConnectSettings_ServerCaMode
pattern ConnectSettings_ServerCaMode_CUSTOMERMANAGEDCASCA = ConnectSettings_ServerCaMode "CUSTOMER_MANAGED_CAS_CA"

{-# COMPLETE
  ConnectSettings_ServerCaMode_CAMODEUNSPECIFIED,
  ConnectSettings_ServerCaMode_GOOGLEMANAGEDINTERNALCA,
  ConnectSettings_ServerCaMode_GOOGLEMANAGEDCASCA,
  ConnectSettings_ServerCaMode_CUSTOMERMANAGEDCASCA,
  ConnectSettings_ServerCaMode
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

-- | The database major version is MySQL 8.0 and the minor version is 33.
pattern DatabaseInstance_DatabaseVersion_MYSQL_8_0_33 :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_MYSQL_8_0_33 = DatabaseInstance_DatabaseVersion "MYSQL_8_0_33"

-- | The database major version is MySQL 8.0 and the minor version is 34.
pattern DatabaseInstance_DatabaseVersion_MYSQL_8_0_34 :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_MYSQL_8_0_34 = DatabaseInstance_DatabaseVersion "MYSQL_8_0_34"

-- | The database major version is MySQL 8.0 and the minor version is 35.
pattern DatabaseInstance_DatabaseVersion_MYSQL_8_0_35 :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_MYSQL_8_0_35 = DatabaseInstance_DatabaseVersion "MYSQL_8_0_35"

-- | The database major version is MySQL 8.0 and the minor version is 36.
pattern DatabaseInstance_DatabaseVersion_MYSQL_8_0_36 :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_MYSQL_8_0_36 = DatabaseInstance_DatabaseVersion "MYSQL_8_0_36"

-- | The database major version is MySQL 8.0 and the minor version is 37.
pattern DatabaseInstance_DatabaseVersion_MYSQL_8_0_37 :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_MYSQL_8_0_37 = DatabaseInstance_DatabaseVersion "MYSQL_8_0_37"

-- | The database major version is MySQL 8.0 and the minor version is 38.
pattern DatabaseInstance_DatabaseVersion_MYSQL_8_0_38 :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_MYSQL_8_0_38 = DatabaseInstance_DatabaseVersion "MYSQL_8_0_38"

-- | The database major version is MySQL 8.0 and the minor version is 39.
pattern DatabaseInstance_DatabaseVersion_MYSQL_8_0_39 :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_MYSQL_8_0_39 = DatabaseInstance_DatabaseVersion "MYSQL_8_0_39"

-- | The database major version is MySQL 8.0 and the minor version is 40.
pattern DatabaseInstance_DatabaseVersion_MYSQL_8_0_40 :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_MYSQL_8_0_40 = DatabaseInstance_DatabaseVersion "MYSQL_8_0_40"

-- | The database major version is MySQL 8.0 and the minor version is 41.
pattern DatabaseInstance_DatabaseVersion_MYSQL_8_0_41 :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_MYSQL_8_0_41 = DatabaseInstance_DatabaseVersion "MYSQL_8_0_41"

-- | The database major version is MySQL 8.0 and the minor version is 42.
pattern DatabaseInstance_DatabaseVersion_MYSQL_8_0_42 :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_MYSQL_8_0_42 = DatabaseInstance_DatabaseVersion "MYSQL_8_0_42"

-- | The database version is MySQL 8.4.
pattern DatabaseInstance_DatabaseVersion_MYSQL_8_4 :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_MYSQL_8_4 = DatabaseInstance_DatabaseVersion "MYSQL_8_4"

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

-- | The database version is PostgreSQL 15.
pattern DatabaseInstance_DatabaseVersion_POSTGRES_15 :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_POSTGRES_15 = DatabaseInstance_DatabaseVersion "POSTGRES_15"

-- | The database version is PostgreSQL 16.
pattern DatabaseInstance_DatabaseVersion_POSTGRES_16 :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_POSTGRES_16 = DatabaseInstance_DatabaseVersion "POSTGRES_16"

-- | The database version is PostgreSQL 17.
pattern DatabaseInstance_DatabaseVersion_POSTGRES_17 :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_POSTGRES_17 = DatabaseInstance_DatabaseVersion "POSTGRES_17"

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

-- | The database version is SQL Server 2022 Standard.
pattern DatabaseInstance_DatabaseVersion_SQLSERVER2022STANDARD :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_SQLSERVER2022STANDARD = DatabaseInstance_DatabaseVersion "SQLSERVER_2022_STANDARD"

-- | The database version is SQL Server 2022 Enterprise.
pattern DatabaseInstance_DatabaseVersion_SQLSERVER2022ENTERPRISE :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_SQLSERVER2022ENTERPRISE = DatabaseInstance_DatabaseVersion "SQLSERVER_2022_ENTERPRISE"

-- | The database version is SQL Server 2022 Express.
pattern DatabaseInstance_DatabaseVersion_SQLSERVER2022EXPRESS :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_SQLSERVER2022EXPRESS = DatabaseInstance_DatabaseVersion "SQLSERVER_2022_EXPRESS"

-- | The database version is SQL Server 2022 Web.
pattern DatabaseInstance_DatabaseVersion_SQLSERVER2022WEB :: DatabaseInstance_DatabaseVersion
pattern DatabaseInstance_DatabaseVersion_SQLSERVER2022WEB = DatabaseInstance_DatabaseVersion "SQLSERVER_2022_WEB"

{-# COMPLETE
  DatabaseInstance_DatabaseVersion_SQLDATABASEVERSIONUNSPECIFIED,
  DatabaseInstance_DatabaseVersion_MYSQL_5_1,
  DatabaseInstance_DatabaseVersion_MYSQL_5_5,
  DatabaseInstance_DatabaseVersion_MYSQL_5_6,
  DatabaseInstance_DatabaseVersion_MYSQL_5_7,
  DatabaseInstance_DatabaseVersion_MYSQL_8_0,
  DatabaseInstance_DatabaseVersion_MYSQL_8_0_18,
  DatabaseInstance_DatabaseVersion_MYSQL_8_0_26,
  DatabaseInstance_DatabaseVersion_MYSQL_8_0_27,
  DatabaseInstance_DatabaseVersion_MYSQL_8_0_28,
  DatabaseInstance_DatabaseVersion_MYSQL_8_0_29,
  DatabaseInstance_DatabaseVersion_MYSQL_8_0_30,
  DatabaseInstance_DatabaseVersion_MYSQL_8_0_31,
  DatabaseInstance_DatabaseVersion_MYSQL_8_0_32,
  DatabaseInstance_DatabaseVersion_MYSQL_8_0_33,
  DatabaseInstance_DatabaseVersion_MYSQL_8_0_34,
  DatabaseInstance_DatabaseVersion_MYSQL_8_0_35,
  DatabaseInstance_DatabaseVersion_MYSQL_8_0_36,
  DatabaseInstance_DatabaseVersion_MYSQL_8_0_37,
  DatabaseInstance_DatabaseVersion_MYSQL_8_0_38,
  DatabaseInstance_DatabaseVersion_MYSQL_8_0_39,
  DatabaseInstance_DatabaseVersion_MYSQL_8_0_40,
  DatabaseInstance_DatabaseVersion_MYSQL_8_0_41,
  DatabaseInstance_DatabaseVersion_MYSQL_8_0_42,
  DatabaseInstance_DatabaseVersion_MYSQL_8_4,
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
  DatabaseInstance_DatabaseVersion_POSTGRES_15,
  DatabaseInstance_DatabaseVersion_POSTGRES_16,
  DatabaseInstance_DatabaseVersion_POSTGRES_17,
  DatabaseInstance_DatabaseVersion_SQLSERVER2019STANDARD,
  DatabaseInstance_DatabaseVersion_SQLSERVER2019ENTERPRISE,
  DatabaseInstance_DatabaseVersion_SQLSERVER2019EXPRESS,
  DatabaseInstance_DatabaseVersion_SQLSERVER2019WEB,
  DatabaseInstance_DatabaseVersion_SQLSERVER2022STANDARD,
  DatabaseInstance_DatabaseVersion_SQLSERVER2022ENTERPRISE,
  DatabaseInstance_DatabaseVersion_SQLSERVER2022EXPRESS,
  DatabaseInstance_DatabaseVersion_SQLSERVER2022WEB,
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

newtype DatabaseInstance_SqlNetworkArchitecture = DatabaseInstance_SqlNetworkArchitecture {fromDatabaseInstance_SqlNetworkArchitecture :: Core.Text}
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

pattern DatabaseInstance_SqlNetworkArchitecture_SQLNETWORKARCHITECTUREUNSPECIFIED :: DatabaseInstance_SqlNetworkArchitecture
pattern DatabaseInstance_SqlNetworkArchitecture_SQLNETWORKARCHITECTUREUNSPECIFIED = DatabaseInstance_SqlNetworkArchitecture "SQL_NETWORK_ARCHITECTURE_UNSPECIFIED"

-- | The instance uses the new network architecture.
pattern DatabaseInstance_SqlNetworkArchitecture_NEWNETWORKARCHITECTURE :: DatabaseInstance_SqlNetworkArchitecture
pattern DatabaseInstance_SqlNetworkArchitecture_NEWNETWORKARCHITECTURE = DatabaseInstance_SqlNetworkArchitecture "NEW_NETWORK_ARCHITECTURE"

-- | The instance uses the old network architecture.
pattern DatabaseInstance_SqlNetworkArchitecture_OLDNETWORKARCHITECTURE :: DatabaseInstance_SqlNetworkArchitecture
pattern DatabaseInstance_SqlNetworkArchitecture_OLDNETWORKARCHITECTURE = DatabaseInstance_SqlNetworkArchitecture "OLD_NETWORK_ARCHITECTURE"

{-# COMPLETE
  DatabaseInstance_SqlNetworkArchitecture_SQLNETWORKARCHITECTUREUNSPECIFIED,
  DatabaseInstance_SqlNetworkArchitecture_NEWNETWORKARCHITECTURE,
  DatabaseInstance_SqlNetworkArchitecture_OLDNETWORKARCHITECTURE,
  DatabaseInstance_SqlNetworkArchitecture
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

-- | Output only. The connection type of the DNS name.
newtype DnsNameMapping_ConnectionType = DnsNameMapping_ConnectionType {fromDnsNameMapping_ConnectionType :: Core.Text}
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

-- | Unknown connection type.
pattern DnsNameMapping_ConnectionType_CONNECTIONTYPEUNSPECIFIED :: DnsNameMapping_ConnectionType
pattern DnsNameMapping_ConnectionType_CONNECTIONTYPEUNSPECIFIED = DnsNameMapping_ConnectionType "CONNECTION_TYPE_UNSPECIFIED"

-- | Public IP.
pattern DnsNameMapping_ConnectionType_Public :: DnsNameMapping_ConnectionType
pattern DnsNameMapping_ConnectionType_Public = DnsNameMapping_ConnectionType "PUBLIC"

-- | Private services access (private IP).
pattern DnsNameMapping_ConnectionType_PRIVATESERVICESACCESS :: DnsNameMapping_ConnectionType
pattern DnsNameMapping_ConnectionType_PRIVATESERVICESACCESS = DnsNameMapping_ConnectionType "PRIVATE_SERVICES_ACCESS"

-- | Private Service Connect.
pattern DnsNameMapping_ConnectionType_PRIVATESERVICECONNECT :: DnsNameMapping_ConnectionType
pattern DnsNameMapping_ConnectionType_PRIVATESERVICECONNECT = DnsNameMapping_ConnectionType "PRIVATE_SERVICE_CONNECT"

{-# COMPLETE
  DnsNameMapping_ConnectionType_CONNECTIONTYPEUNSPECIFIED,
  DnsNameMapping_ConnectionType_Public,
  DnsNameMapping_ConnectionType_PRIVATESERVICESACCESS,
  DnsNameMapping_ConnectionType_PRIVATESERVICECONNECT,
  DnsNameMapping_ConnectionType
  #-}

-- | Output only. The scope that the DNS name applies to.
newtype DnsNameMapping_DnsScope = DnsNameMapping_DnsScope {fromDnsNameMapping_DnsScope :: Core.Text}
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

-- | Unknown DNS scope.
pattern DnsNameMapping_DnsScope_DNSSCOPEUNSPECIFIED :: DnsNameMapping_DnsScope
pattern DnsNameMapping_DnsScope_DNSSCOPEUNSPECIFIED = DnsNameMapping_DnsScope "DNS_SCOPE_UNSPECIFIED"

-- | Indicates a instance-level DNS name.
pattern DnsNameMapping_DnsScope_Instance :: DnsNameMapping_DnsScope
pattern DnsNameMapping_DnsScope_Instance = DnsNameMapping_DnsScope "INSTANCE"

{-# COMPLETE
  DnsNameMapping_DnsScope_DNSSCOPEUNSPECIFIED,
  DnsNameMapping_DnsScope_Instance,
  DnsNameMapping_DnsScope
  #-}

-- | Type of this bak file will be export, FULL or DIFF, SQL Server only
newtype ExportContext_BakExportOptions_BakType = ExportContext_BakExportOptions_BakType {fromExportContext_BakExportOptions_BakType :: Core.Text}
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

-- | Default type.
pattern ExportContext_BakExportOptions_BakType_BAKTYPEUNSPECIFIED :: ExportContext_BakExportOptions_BakType
pattern ExportContext_BakExportOptions_BakType_BAKTYPEUNSPECIFIED = ExportContext_BakExportOptions_BakType "BAK_TYPE_UNSPECIFIED"

-- | Full backup.
pattern ExportContext_BakExportOptions_BakType_Full :: ExportContext_BakExportOptions_BakType
pattern ExportContext_BakExportOptions_BakType_Full = ExportContext_BakExportOptions_BakType "FULL"

-- | Differential backup.
pattern ExportContext_BakExportOptions_BakType_Diff :: ExportContext_BakExportOptions_BakType
pattern ExportContext_BakExportOptions_BakType_Diff = ExportContext_BakExportOptions_BakType "DIFF"

-- | Transaction Log backup
pattern ExportContext_BakExportOptions_BakType_Tlog :: ExportContext_BakExportOptions_BakType
pattern ExportContext_BakExportOptions_BakType_Tlog = ExportContext_BakExportOptions_BakType "TLOG"

{-# COMPLETE
  ExportContext_BakExportOptions_BakType_BAKTYPEUNSPECIFIED,
  ExportContext_BakExportOptions_BakType_Full,
  ExportContext_BakExportOptions_BakType_Diff,
  ExportContext_BakExportOptions_BakType_Tlog,
  ExportContext_BakExportOptions_BakType
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

pattern ExportContext_FileType_Bak :: ExportContext_FileType
pattern ExportContext_FileType_Bak = ExportContext_FileType "BAK"

-- | TDE certificate.
pattern ExportContext_FileType_Tde :: ExportContext_FileType
pattern ExportContext_FileType_Tde = ExportContext_FileType "TDE"

{-# COMPLETE
  ExportContext_FileType_SQLFILETYPEUNSPECIFIED,
  ExportContext_FileType_Sql,
  ExportContext_FileType_Csv,
  ExportContext_FileType_Bak,
  ExportContext_FileType_Tde,
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

-- | The database major version is MySQL 8.0 and the minor version is 33.
pattern Flag_AppliesToItem_MYSQL_8_0_33 :: Flag_AppliesToItem
pattern Flag_AppliesToItem_MYSQL_8_0_33 = Flag_AppliesToItem "MYSQL_8_0_33"

-- | The database major version is MySQL 8.0 and the minor version is 34.
pattern Flag_AppliesToItem_MYSQL_8_0_34 :: Flag_AppliesToItem
pattern Flag_AppliesToItem_MYSQL_8_0_34 = Flag_AppliesToItem "MYSQL_8_0_34"

-- | The database major version is MySQL 8.0 and the minor version is 35.
pattern Flag_AppliesToItem_MYSQL_8_0_35 :: Flag_AppliesToItem
pattern Flag_AppliesToItem_MYSQL_8_0_35 = Flag_AppliesToItem "MYSQL_8_0_35"

-- | The database major version is MySQL 8.0 and the minor version is 36.
pattern Flag_AppliesToItem_MYSQL_8_0_36 :: Flag_AppliesToItem
pattern Flag_AppliesToItem_MYSQL_8_0_36 = Flag_AppliesToItem "MYSQL_8_0_36"

-- | The database major version is MySQL 8.0 and the minor version is 37.
pattern Flag_AppliesToItem_MYSQL_8_0_37 :: Flag_AppliesToItem
pattern Flag_AppliesToItem_MYSQL_8_0_37 = Flag_AppliesToItem "MYSQL_8_0_37"

-- | The database major version is MySQL 8.0 and the minor version is 38.
pattern Flag_AppliesToItem_MYSQL_8_0_38 :: Flag_AppliesToItem
pattern Flag_AppliesToItem_MYSQL_8_0_38 = Flag_AppliesToItem "MYSQL_8_0_38"

-- | The database major version is MySQL 8.0 and the minor version is 39.
pattern Flag_AppliesToItem_MYSQL_8_0_39 :: Flag_AppliesToItem
pattern Flag_AppliesToItem_MYSQL_8_0_39 = Flag_AppliesToItem "MYSQL_8_0_39"

-- | The database major version is MySQL 8.0 and the minor version is 40.
pattern Flag_AppliesToItem_MYSQL_8_0_40 :: Flag_AppliesToItem
pattern Flag_AppliesToItem_MYSQL_8_0_40 = Flag_AppliesToItem "MYSQL_8_0_40"

-- | The database major version is MySQL 8.0 and the minor version is 41.
pattern Flag_AppliesToItem_MYSQL_8_0_41 :: Flag_AppliesToItem
pattern Flag_AppliesToItem_MYSQL_8_0_41 = Flag_AppliesToItem "MYSQL_8_0_41"

-- | The database major version is MySQL 8.0 and the minor version is 42.
pattern Flag_AppliesToItem_MYSQL_8_0_42 :: Flag_AppliesToItem
pattern Flag_AppliesToItem_MYSQL_8_0_42 = Flag_AppliesToItem "MYSQL_8_0_42"

-- | The database version is MySQL 8.4.
pattern Flag_AppliesToItem_MYSQL_8_4 :: Flag_AppliesToItem
pattern Flag_AppliesToItem_MYSQL_8_4 = Flag_AppliesToItem "MYSQL_8_4"

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

-- | The database version is PostgreSQL 15.
pattern Flag_AppliesToItem_POSTGRES_15 :: Flag_AppliesToItem
pattern Flag_AppliesToItem_POSTGRES_15 = Flag_AppliesToItem "POSTGRES_15"

-- | The database version is PostgreSQL 16.
pattern Flag_AppliesToItem_POSTGRES_16 :: Flag_AppliesToItem
pattern Flag_AppliesToItem_POSTGRES_16 = Flag_AppliesToItem "POSTGRES_16"

-- | The database version is PostgreSQL 17.
pattern Flag_AppliesToItem_POSTGRES_17 :: Flag_AppliesToItem
pattern Flag_AppliesToItem_POSTGRES_17 = Flag_AppliesToItem "POSTGRES_17"

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

-- | The database version is SQL Server 2022 Standard.
pattern Flag_AppliesToItem_SQLSERVER2022STANDARD :: Flag_AppliesToItem
pattern Flag_AppliesToItem_SQLSERVER2022STANDARD = Flag_AppliesToItem "SQLSERVER_2022_STANDARD"

-- | The database version is SQL Server 2022 Enterprise.
pattern Flag_AppliesToItem_SQLSERVER2022ENTERPRISE :: Flag_AppliesToItem
pattern Flag_AppliesToItem_SQLSERVER2022ENTERPRISE = Flag_AppliesToItem "SQLSERVER_2022_ENTERPRISE"

-- | The database version is SQL Server 2022 Express.
pattern Flag_AppliesToItem_SQLSERVER2022EXPRESS :: Flag_AppliesToItem
pattern Flag_AppliesToItem_SQLSERVER2022EXPRESS = Flag_AppliesToItem "SQLSERVER_2022_EXPRESS"

-- | The database version is SQL Server 2022 Web.
pattern Flag_AppliesToItem_SQLSERVER2022WEB :: Flag_AppliesToItem
pattern Flag_AppliesToItem_SQLSERVER2022WEB = Flag_AppliesToItem "SQLSERVER_2022_WEB"

{-# COMPLETE
  Flag_AppliesToItem_SQLDATABASEVERSIONUNSPECIFIED,
  Flag_AppliesToItem_MYSQL_5_1,
  Flag_AppliesToItem_MYSQL_5_5,
  Flag_AppliesToItem_MYSQL_5_6,
  Flag_AppliesToItem_MYSQL_5_7,
  Flag_AppliesToItem_MYSQL_8_0,
  Flag_AppliesToItem_MYSQL_8_0_18,
  Flag_AppliesToItem_MYSQL_8_0_26,
  Flag_AppliesToItem_MYSQL_8_0_27,
  Flag_AppliesToItem_MYSQL_8_0_28,
  Flag_AppliesToItem_MYSQL_8_0_29,
  Flag_AppliesToItem_MYSQL_8_0_30,
  Flag_AppliesToItem_MYSQL_8_0_31,
  Flag_AppliesToItem_MYSQL_8_0_32,
  Flag_AppliesToItem_MYSQL_8_0_33,
  Flag_AppliesToItem_MYSQL_8_0_34,
  Flag_AppliesToItem_MYSQL_8_0_35,
  Flag_AppliesToItem_MYSQL_8_0_36,
  Flag_AppliesToItem_MYSQL_8_0_37,
  Flag_AppliesToItem_MYSQL_8_0_38,
  Flag_AppliesToItem_MYSQL_8_0_39,
  Flag_AppliesToItem_MYSQL_8_0_40,
  Flag_AppliesToItem_MYSQL_8_0_41,
  Flag_AppliesToItem_MYSQL_8_0_42,
  Flag_AppliesToItem_MYSQL_8_4,
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
  Flag_AppliesToItem_POSTGRES_15,
  Flag_AppliesToItem_POSTGRES_16,
  Flag_AppliesToItem_POSTGRES_17,
  Flag_AppliesToItem_SQLSERVER2019STANDARD,
  Flag_AppliesToItem_SQLSERVER2019ENTERPRISE,
  Flag_AppliesToItem_SQLSERVER2019EXPRESS,
  Flag_AppliesToItem_SQLSERVER2019WEB,
  Flag_AppliesToItem_SQLSERVER2022STANDARD,
  Flag_AppliesToItem_SQLSERVER2022ENTERPRISE,
  Flag_AppliesToItem_SQLSERVER2022EXPRESS,
  Flag_AppliesToItem_SQLSERVER2022WEB,
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

-- | Type of the bak content, FULL or DIFF
newtype ImportContext_BakImportOptions_BakType = ImportContext_BakImportOptions_BakType {fromImportContext_BakImportOptions_BakType :: Core.Text}
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

-- | Default type.
pattern ImportContext_BakImportOptions_BakType_BAKTYPEUNSPECIFIED :: ImportContext_BakImportOptions_BakType
pattern ImportContext_BakImportOptions_BakType_BAKTYPEUNSPECIFIED = ImportContext_BakImportOptions_BakType "BAK_TYPE_UNSPECIFIED"

-- | Full backup.
pattern ImportContext_BakImportOptions_BakType_Full :: ImportContext_BakImportOptions_BakType
pattern ImportContext_BakImportOptions_BakType_Full = ImportContext_BakImportOptions_BakType "FULL"

-- | Differential backup.
pattern ImportContext_BakImportOptions_BakType_Diff :: ImportContext_BakImportOptions_BakType
pattern ImportContext_BakImportOptions_BakType_Diff = ImportContext_BakImportOptions_BakType "DIFF"

-- | Transaction Log backup
pattern ImportContext_BakImportOptions_BakType_Tlog :: ImportContext_BakImportOptions_BakType
pattern ImportContext_BakImportOptions_BakType_Tlog = ImportContext_BakImportOptions_BakType "TLOG"

{-# COMPLETE
  ImportContext_BakImportOptions_BakType_BAKTYPEUNSPECIFIED,
  ImportContext_BakImportOptions_BakType_Full,
  ImportContext_BakImportOptions_BakType_Diff,
  ImportContext_BakImportOptions_BakType_Tlog,
  ImportContext_BakImportOptions_BakType
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

pattern ImportContext_FileType_Bak :: ImportContext_FileType
pattern ImportContext_FileType_Bak = ImportContext_FileType "BAK"

-- | TDE certificate.
pattern ImportContext_FileType_Tde :: ImportContext_FileType
pattern ImportContext_FileType_Tde = ImportContext_FileType "TDE"

{-# COMPLETE
  ImportContext_FileType_SQLFILETYPEUNSPECIFIED,
  ImportContext_FileType_Sql,
  ImportContext_FileType_Csv,
  ImportContext_FileType_Bak,
  ImportContext_FileType_Tde,
  ImportContext_FileType
  #-}

-- | Specify what type of CA is used for the server certificate.
newtype IpConfiguration_ServerCaMode = IpConfiguration_ServerCaMode {fromIpConfiguration_ServerCaMode :: Core.Text}
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

-- | CA mode is unspecified. It is effectively the same as @GOOGLE_MANAGED_INTERNAL_CA@.
pattern IpConfiguration_ServerCaMode_CAMODEUNSPECIFIED :: IpConfiguration_ServerCaMode
pattern IpConfiguration_ServerCaMode_CAMODEUNSPECIFIED = IpConfiguration_ServerCaMode "CA_MODE_UNSPECIFIED"

-- | Google-managed self-signed internal CA.
pattern IpConfiguration_ServerCaMode_GOOGLEMANAGEDINTERNALCA :: IpConfiguration_ServerCaMode
pattern IpConfiguration_ServerCaMode_GOOGLEMANAGEDINTERNALCA = IpConfiguration_ServerCaMode "GOOGLE_MANAGED_INTERNAL_CA"

-- | Google-managed regional CA part of root CA hierarchy hosted on Google Cloud\'s Certificate Authority Service (CAS).
pattern IpConfiguration_ServerCaMode_GOOGLEMANAGEDCASCA :: IpConfiguration_ServerCaMode
pattern IpConfiguration_ServerCaMode_GOOGLEMANAGEDCASCA = IpConfiguration_ServerCaMode "GOOGLE_MANAGED_CAS_CA"

-- | Customer-managed CA hosted on Google Cloud\'s Certificate Authority Service (CAS).
pattern IpConfiguration_ServerCaMode_CUSTOMERMANAGEDCASCA :: IpConfiguration_ServerCaMode
pattern IpConfiguration_ServerCaMode_CUSTOMERMANAGEDCASCA = IpConfiguration_ServerCaMode "CUSTOMER_MANAGED_CAS_CA"

{-# COMPLETE
  IpConfiguration_ServerCaMode_CAMODEUNSPECIFIED,
  IpConfiguration_ServerCaMode_GOOGLEMANAGEDINTERNALCA,
  IpConfiguration_ServerCaMode_GOOGLEMANAGEDCASCA,
  IpConfiguration_ServerCaMode_CUSTOMERMANAGEDCASCA,
  IpConfiguration_ServerCaMode
  #-}

-- | Specify how SSL\/TLS is enforced in database connections. If you must use the @require_ssl@ flag for backward compatibility, then only the following value pairs are valid: For PostgreSQL and MySQL: * @ssl_mode=ALLOW_UNENCRYPTED_AND_ENCRYPTED@ and @require_ssl=false@ * @ssl_mode=ENCRYPTED_ONLY@ and @require_ssl=false@ * @ssl_mode=TRUSTED_CLIENT_CERTIFICATE_REQUIRED@ and @require_ssl=true@ For SQL Server: * @ssl_mode=ALLOW_UNENCRYPTED_AND_ENCRYPTED@ and @require_ssl=false@ * @ssl_mode=ENCRYPTED_ONLY@ and @require_ssl=true@ The value of @ssl_mode@ has priority over the value of @require_ssl@. For example, for the pair @ssl_mode=ENCRYPTED_ONLY@ and @require_ssl=false@, @ssl_mode=ENCRYPTED_ONLY@ means accept only SSL connections, while @require_ssl=false@ means accept both non-SSL and SSL connections. In this case, MySQL and PostgreSQL databases respect @ssl_mode@ and accepts only SSL connections.
newtype IpConfiguration_SslMode = IpConfiguration_SslMode {fromIpConfiguration_SslMode :: Core.Text}
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

-- | The SSL mode is unknown.
pattern IpConfiguration_SslMode_SSLMODEUNSPECIFIED :: IpConfiguration_SslMode
pattern IpConfiguration_SslMode_SSLMODEUNSPECIFIED = IpConfiguration_SslMode "SSL_MODE_UNSPECIFIED"

-- | Allow non-SSL\/non-TLS and SSL\/TLS connections. For SSL connections to MySQL and PostgreSQL, the client certificate isn\'t verified. When this value is used, the legacy @require_ssl@ flag must be false or cleared to avoid a conflict between the values of the two flags.
pattern IpConfiguration_SslMode_ALLOWUNENCRYPTEDANDENCRYPTED :: IpConfiguration_SslMode
pattern IpConfiguration_SslMode_ALLOWUNENCRYPTEDANDENCRYPTED = IpConfiguration_SslMode "ALLOW_UNENCRYPTED_AND_ENCRYPTED"

-- | Only allow connections encrypted with SSL\/TLS. For SSL connections to MySQL and PostgreSQL, the client certificate isn\'t verified. When this value is used, the legacy @require_ssl@ flag must be false or cleared to avoid a conflict between the values of the two flags.
pattern IpConfiguration_SslMode_ENCRYPTEDONLY :: IpConfiguration_SslMode
pattern IpConfiguration_SslMode_ENCRYPTEDONLY = IpConfiguration_SslMode "ENCRYPTED_ONLY"

-- | Only allow connections encrypted with SSL\/TLS and with valid client certificates. When this value is used, the legacy @require_ssl@ flag must be true or cleared to avoid the conflict between values of two flags. PostgreSQL clients or users that connect using IAM database authentication must use either the <https://cloud.google.com/sql/docs/postgres/connect-auth-proxy Cloud SQL Auth Proxy> or <https://cloud.google.com/sql/docs/postgres/connect-connectors Cloud SQL Connectors> to enforce client identity verification. Only applicable to MySQL and PostgreSQL. Not applicable to SQL Server.
pattern IpConfiguration_SslMode_TRUSTEDCLIENTCERTIFICATEREQUIRED :: IpConfiguration_SslMode
pattern IpConfiguration_SslMode_TRUSTEDCLIENTCERTIFICATEREQUIRED = IpConfiguration_SslMode "TRUSTED_CLIENT_CERTIFICATE_REQUIRED"

{-# COMPLETE
  IpConfiguration_SslMode_SSLMODEUNSPECIFIED,
  IpConfiguration_SslMode_ALLOWUNENCRYPTEDANDENCRYPTED,
  IpConfiguration_SslMode_ENCRYPTEDONLY,
  IpConfiguration_SslMode_TRUSTEDCLIENTCERTIFICATEREQUIRED,
  IpConfiguration_SslMode
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

-- | Maintenance timing settings: @canary@, @stable@, or @week5@. For more information, see <https://cloud.google.com/sql/docs/mysql/maintenance About maintenance on Cloud SQL instances>.
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

-- | For an instance with a scheduled maintenance window, this maintenance timing indicates that the maintenance update is scheduled 7 to 14 days after the notification is sent out. Also referred to as @Week 1@ (Console) and @preview@ (gcloud CLI).
pattern MaintenanceWindow_UpdateTrack_Canary :: MaintenanceWindow_UpdateTrack
pattern MaintenanceWindow_UpdateTrack_Canary = MaintenanceWindow_UpdateTrack "canary"

-- | For an instance with a scheduled maintenance window, this maintenance timing indicates that the maintenance update is scheduled 15 to 21 days after the notification is sent out. Also referred to as @Week 2@ (Console) and @production@ (gcloud CLI).
pattern MaintenanceWindow_UpdateTrack_Stable :: MaintenanceWindow_UpdateTrack
pattern MaintenanceWindow_UpdateTrack_Stable = MaintenanceWindow_UpdateTrack "stable"

-- | For instance with a scheduled maintenance window, this maintenance timing indicates that the maintenance update is scheduled 35 to 42 days after the notification is sent out.
pattern MaintenanceWindow_UpdateTrack_WEEK5 :: MaintenanceWindow_UpdateTrack
pattern MaintenanceWindow_UpdateTrack_WEEK5 = MaintenanceWindow_UpdateTrack "week5"

{-# COMPLETE
  MaintenanceWindow_UpdateTrack_SQLUPDATETRACKUNSPECIFIED,
  MaintenanceWindow_UpdateTrack_Canary,
  MaintenanceWindow_UpdateTrack_Stable,
  MaintenanceWindow_UpdateTrack_WEEK5,
  MaintenanceWindow_UpdateTrack
  #-}

-- | Optional. SSL option for replica connection to the on-premises source.
newtype OnPremisesConfiguration_SslOption = OnPremisesConfiguration_SslOption {fromOnPremisesConfiguration_SslOption :: Core.Text}
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

-- | Unknown SSL option i.e. SSL option not specified by user.
pattern OnPremisesConfiguration_SslOption_SSLOPTIONUNSPECIFIED :: OnPremisesConfiguration_SslOption
pattern OnPremisesConfiguration_SslOption_SSLOPTIONUNSPECIFIED = OnPremisesConfiguration_SslOption "SSL_OPTION_UNSPECIFIED"

-- | SSL is not used for replica connection to the on-premises source.
pattern OnPremisesConfiguration_SslOption_Disable :: OnPremisesConfiguration_SslOption
pattern OnPremisesConfiguration_SslOption_Disable = OnPremisesConfiguration_SslOption "DISABLE"

-- | SSL is required for replica connection to the on-premises source.
pattern OnPremisesConfiguration_SslOption_Require :: OnPremisesConfiguration_SslOption
pattern OnPremisesConfiguration_SslOption_Require = OnPremisesConfiguration_SslOption "REQUIRE"

-- | Verify CA is required for replica connection to the on-premises source.
pattern OnPremisesConfiguration_SslOption_VERIFYCA :: OnPremisesConfiguration_SslOption
pattern OnPremisesConfiguration_SslOption_VERIFYCA = OnPremisesConfiguration_SslOption "VERIFY_CA"

{-# COMPLETE
  OnPremisesConfiguration_SslOption_SSLOPTIONUNSPECIFIED,
  OnPremisesConfiguration_SslOption_Disable,
  OnPremisesConfiguration_SslOption_Require,
  OnPremisesConfiguration_SslOption_VERIFYCA,
  OnPremisesConfiguration_SslOption
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

pattern Operation_OperationType_Backup :: Operation_OperationType
pattern Operation_OperationType_Backup = Operation_OperationType "BACKUP"

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

-- | Switches the roles of the primary and replica pair. The target instance should be the replica.
pattern Operation_OperationType_Switchover :: Operation_OperationType
pattern Operation_OperationType_Switchover = Operation_OperationType "SWITCHOVER"

-- | Update a backup.
pattern Operation_OperationType_UPDATEBACKUP :: Operation_OperationType
pattern Operation_OperationType_UPDATEBACKUP = Operation_OperationType "UPDATE_BACKUP"

-- | Acquire a lease for the setup of SQL Server Reporting Services (SSRS).
pattern Operation_OperationType_ACQUIRESSRSLEASE :: Operation_OperationType
pattern Operation_OperationType_ACQUIRESSRSLEASE = Operation_OperationType "ACQUIRE_SSRS_LEASE"

-- | Release a lease for the setup of SQL Server Reporting Services (SSRS).
pattern Operation_OperationType_RELEASESSRSLEASE :: Operation_OperationType
pattern Operation_OperationType_RELEASESSRSLEASE = Operation_OperationType "RELEASE_SSRS_LEASE"

-- | Reconfigures old primary after a promote replica operation. Effect of a promote operation to the old primary is executed in this operation, asynchronously from the promote replica operation executed to the replica.
pattern Operation_OperationType_RECONFIGUREOLDPRIMARY :: Operation_OperationType
pattern Operation_OperationType_RECONFIGUREOLDPRIMARY = Operation_OperationType "RECONFIGURE_OLD_PRIMARY"

-- | Indicates that the instance, its read replicas, and its cascading replicas are in maintenance. Maintenance typically gets initiated on groups of replicas first, followed by the primary instance. For each instance, maintenance typically causes the instance to be unavailable for 1-3 minutes.
pattern Operation_OperationType_CLUSTERMAINTENANCE :: Operation_OperationType
pattern Operation_OperationType_CLUSTERMAINTENANCE = Operation_OperationType "CLUSTER_MAINTENANCE"

-- | Indicates that the instance (and any of its replicas) are currently in maintenance. This is initiated as a self-service request by using SSM. Maintenance typically causes the instance to be unavailable for 1-3 minutes.
pattern Operation_OperationType_SELFSERVICEMAINTENANCE :: Operation_OperationType
pattern Operation_OperationType_SELFSERVICEMAINTENANCE = Operation_OperationType "SELF_SERVICE_MAINTENANCE"

-- | Switches a primary instance to a replica. This operation runs as part of a switchover operation to the original primary instance.
pattern Operation_OperationType_SWITCHOVERTOREPLICA :: Operation_OperationType
pattern Operation_OperationType_SWITCHOVERTOREPLICA = Operation_OperationType "SWITCHOVER_TO_REPLICA"

-- | Updates the major version of a Cloud SQL instance.
pattern Operation_OperationType_MAJORVERSIONUPGRADE :: Operation_OperationType
pattern Operation_OperationType_MAJORVERSIONUPGRADE = Operation_OperationType "MAJOR_VERSION_UPGRADE"

-- | Deprecated: ADVANCED/BACKUP is deprecated. Use ENHANCED/BACKUP instead.
pattern Operation_OperationType_ADVANCEDBACKUP :: Operation_OperationType
pattern Operation_OperationType_ADVANCEDBACKUP = Operation_OperationType "ADVANCED_BACKUP"

-- | Changes the BackupTier of a Cloud SQL instance.
pattern Operation_OperationType_MANAGEBACKUP :: Operation_OperationType
pattern Operation_OperationType_MANAGEBACKUP = Operation_OperationType "MANAGE_BACKUP"

-- | Creates a backup for an Enhanced BackupTier Cloud SQL instance.
pattern Operation_OperationType_ENHANCEDBACKUP :: Operation_OperationType
pattern Operation_OperationType_ENHANCEDBACKUP = Operation_OperationType "ENHANCED_BACKUP"

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
  Operation_OperationType_Switchover,
  Operation_OperationType_UPDATEBACKUP,
  Operation_OperationType_ACQUIRESSRSLEASE,
  Operation_OperationType_RELEASESSRSLEASE,
  Operation_OperationType_RECONFIGUREOLDPRIMARY,
  Operation_OperationType_CLUSTERMAINTENANCE,
  Operation_OperationType_SELFSERVICEMAINTENANCE,
  Operation_OperationType_SWITCHOVERTOREPLICA,
  Operation_OperationType_MAJORVERSIONUPGRADE,
  Operation_OperationType_ADVANCEDBACKUP,
  Operation_OperationType_MANAGEBACKUP,
  Operation_OperationType_ENHANCEDBACKUP,
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

-- | A Hyperdisk Balanced data disk.
pattern Settings_DataDiskType_HYPERDISKBALANCED :: Settings_DataDiskType
pattern Settings_DataDiskType_HYPERDISKBALANCED = Settings_DataDiskType "HYPERDISK_BALANCED"

{-# COMPLETE
  Settings_DataDiskType_SQLDATADISKTYPEUNSPECIFIED,
  Settings_DataDiskType_PDSSD,
  Settings_DataDiskType_PDHDD,
  Settings_DataDiskType_OBSOLETELOCALSSD,
  Settings_DataDiskType_HYPERDISKBALANCED,
  Settings_DataDiskType
  #-}

-- | Optional. The edition of the instance.
newtype Settings_Edition = Settings_Edition {fromSettings_Edition :: Core.Text}
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

-- | The instance did not specify the edition.
pattern Settings_Edition_EDITIONUNSPECIFIED :: Settings_Edition
pattern Settings_Edition_EDITIONUNSPECIFIED = Settings_Edition "EDITION_UNSPECIFIED"

-- | The instance is an enterprise edition.
pattern Settings_Edition_Enterprise :: Settings_Edition
pattern Settings_Edition_Enterprise = Settings_Edition "ENTERPRISE"

-- | The instance is an Enterprise Plus edition.
pattern Settings_Edition_ENTERPRISEPLUS :: Settings_Edition
pattern Settings_Edition_ENTERPRISEPLUS = Settings_Edition "ENTERPRISE_PLUS"

{-# COMPLETE
  Settings_Edition_EDITIONUNSPECIFIED,
  Settings_Edition_Enterprise,
  Settings_Edition_ENTERPRISEPLUS,
  Settings_Edition
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

pattern SqlExternalSyncSettingError_Type_SQLEXTERNALSYNCSETTINGERRORTYPEUNSPECIFIED :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_SQLEXTERNALSYNCSETTINGERRORTYPEUNSPECIFIED = SqlExternalSyncSettingError_Type "SQL_EXTERNAL_SYNC_SETTING_ERROR_TYPE_UNSPECIFIED"

pattern SqlExternalSyncSettingError_Type_CONNECTIONFAILURE :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_CONNECTIONFAILURE = SqlExternalSyncSettingError_Type "CONNECTION_FAILURE"

pattern SqlExternalSyncSettingError_Type_BINLOGNOTENABLED :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_BINLOGNOTENABLED = SqlExternalSyncSettingError_Type "BINLOG_NOT_ENABLED"

pattern SqlExternalSyncSettingError_Type_INCOMPATIBLEDATABASEVERSION :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_INCOMPATIBLEDATABASEVERSION = SqlExternalSyncSettingError_Type "INCOMPATIBLE_DATABASE_VERSION"

pattern SqlExternalSyncSettingError_Type_REPLICAALREADYSETUP :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_REPLICAALREADYSETUP = SqlExternalSyncSettingError_Type "REPLICA_ALREADY_SETUP"

-- | The replication user is missing privileges that are required.
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

-- | Extensions installed are either not supported or having unsupported versions.
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

-- | The table definition is not support due to missing primary key or replica identity, applicable for postgres. Note that this is a warning and won\'t block the migration.
pattern SqlExternalSyncSettingError_Type_UNSUPPORTEDTABLEDEFINITION :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_UNSUPPORTEDTABLEDEFINITION = SqlExternalSyncSettingError_Type "UNSUPPORTED_TABLE_DEFINITION"

-- | The customer has a definer that will break EM setup.
pattern SqlExternalSyncSettingError_Type_UNSUPPORTEDDEFINER :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_UNSUPPORTEDDEFINER = SqlExternalSyncSettingError_Type "UNSUPPORTED_DEFINER"

-- | SQL Server \@\@SERVERNAME does not match actual host name.
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

-- | Source has tables with limited support eg: PostgreSQL tables without primary keys.
pattern SqlExternalSyncSettingError_Type_LIMITEDSUPPORTTABLES :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_LIMITEDSUPPORTTABLES = SqlExternalSyncSettingError_Type "LIMITED_SUPPORT_TABLES"

-- | The replica instance contains existing data.
pattern SqlExternalSyncSettingError_Type_EXISTINGDATAINREPLICA :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_EXISTINGDATAINREPLICA = SqlExternalSyncSettingError_Type "EXISTING_DATA_IN_REPLICA"

-- | The replication user is missing privileges that are optional.
pattern SqlExternalSyncSettingError_Type_MISSINGOPTIONALPRIVILEGES :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_MISSINGOPTIONALPRIVILEGES = SqlExternalSyncSettingError_Type "MISSING_OPTIONAL_PRIVILEGES"

-- | Additional BACKUP_ADMIN privilege is granted to the replication user which may lock source MySQL 8 instance for DDLs during initial sync.
pattern SqlExternalSyncSettingError_Type_RISKYBACKUPADMINPRIVILEGE :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_RISKYBACKUPADMINPRIVILEGE = SqlExternalSyncSettingError_Type "RISKY_BACKUP_ADMIN_PRIVILEGE"

-- | The Cloud Storage bucket is missing necessary permissions.
pattern SqlExternalSyncSettingError_Type_INSUFFICIENTGCSPERMISSIONS :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_INSUFFICIENTGCSPERMISSIONS = SqlExternalSyncSettingError_Type "INSUFFICIENT_GCS_PERMISSIONS"

-- | The Cloud Storage bucket has an error in the file or contains invalid file information.
pattern SqlExternalSyncSettingError_Type_INVALIDFILEINFO :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_INVALIDFILEINFO = SqlExternalSyncSettingError_Type "INVALID_FILE_INFO"

-- | The source instance has unsupported database settings for migration.
pattern SqlExternalSyncSettingError_Type_UNSUPPORTEDDATABASESETTINGS :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_UNSUPPORTEDDATABASESETTINGS = SqlExternalSyncSettingError_Type "UNSUPPORTED_DATABASE_SETTINGS"

-- | The replication user is missing parallel import specific privileges. (e.g. LOCK TABLES) for MySQL.
pattern SqlExternalSyncSettingError_Type_MYSQLPARALLELIMPORTINSUFFICIENTPRIVILEGE :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_MYSQLPARALLELIMPORTINSUFFICIENTPRIVILEGE = SqlExternalSyncSettingError_Type "MYSQL_PARALLEL_IMPORT_INSUFFICIENT_PRIVILEGE"

-- | The global variable local_infile is off on external server replica.
pattern SqlExternalSyncSettingError_Type_LOCALINFILEOFF :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_LOCALINFILEOFF = SqlExternalSyncSettingError_Type "LOCAL_INFILE_OFF"

-- | This code instructs customers to turn on point-in-time recovery manually for the instance after promoting the Cloud SQL for PostgreSQL instance.
pattern SqlExternalSyncSettingError_Type_TURNONPITRAFTERPROMOTE :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_TURNONPITRAFTERPROMOTE = SqlExternalSyncSettingError_Type "TURN_ON_PITR_AFTER_PROMOTE"

-- | The minor version of replica database is incompatible with the source.
pattern SqlExternalSyncSettingError_Type_INCOMPATIBLEDATABASEMINORVERSION :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_INCOMPATIBLEDATABASEMINORVERSION = SqlExternalSyncSettingError_Type "INCOMPATIBLE_DATABASE_MINOR_VERSION"

-- | This warning message indicates that Cloud SQL uses the maximum number of subscriptions to migrate data from the source to the destination.
pattern SqlExternalSyncSettingError_Type_SOURCEMAXSUBSCRIPTIONS :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_SOURCEMAXSUBSCRIPTIONS = SqlExternalSyncSettingError_Type "SOURCE_MAX_SUBSCRIPTIONS"

-- | Unable to verify definers on the source for MySQL.
pattern SqlExternalSyncSettingError_Type_UNABLETOVERIFYDEFINERS :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_UNABLETOVERIFYDEFINERS = SqlExternalSyncSettingError_Type "UNABLE_TO_VERIFY_DEFINERS"

-- | If a time out occurs while the subscription counts are calculated, then this value is set to 1. Otherwise, this value is set to 2.
pattern SqlExternalSyncSettingError_Type_SUBSCRIPTIONCALCULATIONSTATUS :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_SUBSCRIPTIONCALCULATIONSTATUS = SqlExternalSyncSettingError_Type "SUBSCRIPTION_CALCULATION_STATUS"

-- | Count of subscriptions needed to sync source data for PostgreSQL database.
pattern SqlExternalSyncSettingError_Type_PGSUBSCRIPTIONCOUNT :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_PGSUBSCRIPTIONCOUNT = SqlExternalSyncSettingError_Type "PG_SUBSCRIPTION_COUNT"

-- | Final parallel level that is used to do migration.
pattern SqlExternalSyncSettingError_Type_PGSYNCPARALLELLEVEL :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_PGSYNCPARALLELLEVEL = SqlExternalSyncSettingError_Type "PG_SYNC_PARALLEL_LEVEL"

-- | The disk size of the replica instance is smaller than the data size of the source instance.
pattern SqlExternalSyncSettingError_Type_INSUFFICIENTDISKSIZE :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_INSUFFICIENTDISKSIZE = SqlExternalSyncSettingError_Type "INSUFFICIENT_DISK_SIZE"

-- | The data size of the source instance is greater than 1 TB, the number of cores of the replica instance is less than 8, and the memory of the replica is less than 32 GB.
pattern SqlExternalSyncSettingError_Type_INSUFFICIENTMACHINETIER :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_INSUFFICIENTMACHINETIER = SqlExternalSyncSettingError_Type "INSUFFICIENT_MACHINE_TIER"

-- | The warning message indicates the unsupported extensions will not be migrated to the destination.
pattern SqlExternalSyncSettingError_Type_UNSUPPORTEDEXTENSIONSNOTMIGRATED :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_UNSUPPORTEDEXTENSIONSNOTMIGRATED = SqlExternalSyncSettingError_Type "UNSUPPORTED_EXTENSIONS_NOT_MIGRATED"

-- | The warning message indicates the pg_cron extension and settings will not be migrated to the destination.
pattern SqlExternalSyncSettingError_Type_EXTENSIONSNOTMIGRATED :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_EXTENSIONSNOTMIGRATED = SqlExternalSyncSettingError_Type "EXTENSIONS_NOT_MIGRATED"

-- | The error message indicates that pg_cron flags are enabled on the destination which is not supported during the migration.
pattern SqlExternalSyncSettingError_Type_PGCRONFLAGENABLEDINREPLICA :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_PGCRONFLAGENABLEDINREPLICA = SqlExternalSyncSettingError_Type "PG_CRON_FLAG_ENABLED_IN_REPLICA"

-- | This error message indicates that the specified extensions are not enabled on destination instance. For example, before you can migrate data to the destination instance, you must enable the PGAudit extension on the instance.
pattern SqlExternalSyncSettingError_Type_EXTENSIONSNOTENABLEDINREPLICA :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_EXTENSIONSNOTENABLEDINREPLICA = SqlExternalSyncSettingError_Type "EXTENSIONS_NOT_ENABLED_IN_REPLICA"

-- | The source database has generated columns that can\'t be migrated. Please change them to regular columns before migration.
pattern SqlExternalSyncSettingError_Type_UNSUPPORTEDCOLUMNS :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_UNSUPPORTEDCOLUMNS = SqlExternalSyncSettingError_Type "UNSUPPORTED_COLUMNS"

-- | The source database has users that aren\'t created in the replica. First, create all users, which are in the pg/user/mappings table of the source database, in the destination instance. Then, perform the migration.
pattern SqlExternalSyncSettingError_Type_USERSNOTCREATEDINREPLICA :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_USERSNOTCREATEDINREPLICA = SqlExternalSyncSettingError_Type "USERS_NOT_CREATED_IN_REPLICA"

-- | The selected objects include system objects that aren\'t supported for migration.
pattern SqlExternalSyncSettingError_Type_UNSUPPORTEDSYSTEMOBJECTS :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_UNSUPPORTEDSYSTEMOBJECTS = SqlExternalSyncSettingError_Type "UNSUPPORTED_SYSTEM_OBJECTS"

-- | The source database has tables with the FULL or NOTHING replica identity. Before starting your migration, either remove the identity or change it to DEFAULT. Note that this is an error and will block the migration.
pattern SqlExternalSyncSettingError_Type_UNSUPPORTEDTABLESWITHREPLICAIDENTITY :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_UNSUPPORTEDTABLESWITHREPLICAIDENTITY = SqlExternalSyncSettingError_Type "UNSUPPORTED_TABLES_WITH_REPLICA_IDENTITY"

-- | The selected objects don\'t exist on the source instance.
pattern SqlExternalSyncSettingError_Type_SELECTEDOBJECTSNOTEXISTONSOURCE :: SqlExternalSyncSettingError_Type
pattern SqlExternalSyncSettingError_Type_SELECTEDOBJECTSNOTEXISTONSOURCE = SqlExternalSyncSettingError_Type "SELECTED_OBJECTS_NOT_EXIST_ON_SOURCE"

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
  SqlExternalSyncSettingError_Type_MISSINGOPTIONALPRIVILEGES,
  SqlExternalSyncSettingError_Type_RISKYBACKUPADMINPRIVILEGE,
  SqlExternalSyncSettingError_Type_INSUFFICIENTGCSPERMISSIONS,
  SqlExternalSyncSettingError_Type_INVALIDFILEINFO,
  SqlExternalSyncSettingError_Type_UNSUPPORTEDDATABASESETTINGS,
  SqlExternalSyncSettingError_Type_MYSQLPARALLELIMPORTINSUFFICIENTPRIVILEGE,
  SqlExternalSyncSettingError_Type_LOCALINFILEOFF,
  SqlExternalSyncSettingError_Type_TURNONPITRAFTERPROMOTE,
  SqlExternalSyncSettingError_Type_INCOMPATIBLEDATABASEMINORVERSION,
  SqlExternalSyncSettingError_Type_SOURCEMAXSUBSCRIPTIONS,
  SqlExternalSyncSettingError_Type_UNABLETOVERIFYDEFINERS,
  SqlExternalSyncSettingError_Type_SUBSCRIPTIONCALCULATIONSTATUS,
  SqlExternalSyncSettingError_Type_PGSUBSCRIPTIONCOUNT,
  SqlExternalSyncSettingError_Type_PGSYNCPARALLELLEVEL,
  SqlExternalSyncSettingError_Type_INSUFFICIENTDISKSIZE,
  SqlExternalSyncSettingError_Type_INSUFFICIENTMACHINETIER,
  SqlExternalSyncSettingError_Type_UNSUPPORTEDEXTENSIONSNOTMIGRATED,
  SqlExternalSyncSettingError_Type_EXTENSIONSNOTMIGRATED,
  SqlExternalSyncSettingError_Type_PGCRONFLAGENABLEDINREPLICA,
  SqlExternalSyncSettingError_Type_EXTENSIONSNOTENABLEDINREPLICA,
  SqlExternalSyncSettingError_Type_UNSUPPORTEDCOLUMNS,
  SqlExternalSyncSettingError_Type_USERSNOTCREATEDINREPLICA,
  SqlExternalSyncSettingError_Type_UNSUPPORTEDSYSTEMOBJECTS,
  SqlExternalSyncSettingError_Type_UNSUPPORTEDTABLESWITHREPLICAIDENTITY,
  SqlExternalSyncSettingError_Type_SELECTEDOBJECTSNOTEXISTONSOURCE,
  SqlExternalSyncSettingError_Type
  #-}

-- | Optional. MigrationType configures the migration to use physical files or logical dump files. If not set, then the logical dump file configuration is used. Valid values are @LOGICAL@ or @PHYSICAL@. Only applicable to MySQL.
newtype SqlInstancesStartExternalSyncRequest_MigrationType = SqlInstancesStartExternalSyncRequest_MigrationType {fromSqlInstancesStartExternalSyncRequest_MigrationType :: Core.Text}
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

-- | Default value is a logical dump file-based migration
pattern SqlInstancesStartExternalSyncRequest_MigrationType_MIGRATIONTYPEUNSPECIFIED :: SqlInstancesStartExternalSyncRequest_MigrationType
pattern SqlInstancesStartExternalSyncRequest_MigrationType_MIGRATIONTYPEUNSPECIFIED = SqlInstancesStartExternalSyncRequest_MigrationType "MIGRATION_TYPE_UNSPECIFIED"

-- | Logical dump file-based migration
pattern SqlInstancesStartExternalSyncRequest_MigrationType_Logical :: SqlInstancesStartExternalSyncRequest_MigrationType
pattern SqlInstancesStartExternalSyncRequest_MigrationType_Logical = SqlInstancesStartExternalSyncRequest_MigrationType "LOGICAL"

-- | Physical file-based migration
pattern SqlInstancesStartExternalSyncRequest_MigrationType_Physical :: SqlInstancesStartExternalSyncRequest_MigrationType
pattern SqlInstancesStartExternalSyncRequest_MigrationType_Physical = SqlInstancesStartExternalSyncRequest_MigrationType "PHYSICAL"

{-# COMPLETE
  SqlInstancesStartExternalSyncRequest_MigrationType_MIGRATIONTYPEUNSPECIFIED,
  SqlInstancesStartExternalSyncRequest_MigrationType_Logical,
  SqlInstancesStartExternalSyncRequest_MigrationType_Physical,
  SqlInstancesStartExternalSyncRequest_MigrationType
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

-- | Optional. Parallel level for initial data sync. Currently only applicable for MySQL.
newtype SqlInstancesStartExternalSyncRequest_SyncParallelLevel = SqlInstancesStartExternalSyncRequest_SyncParallelLevel {fromSqlInstancesStartExternalSyncRequest_SyncParallelLevel :: Core.Text}
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

-- | Unknown sync parallel level. Will be defaulted to OPTIMAL.
pattern SqlInstancesStartExternalSyncRequest_SyncParallelLevel_EXTERNALSYNCPARALLELLEVELUNSPECIFIED :: SqlInstancesStartExternalSyncRequest_SyncParallelLevel
pattern SqlInstancesStartExternalSyncRequest_SyncParallelLevel_EXTERNALSYNCPARALLELLEVELUNSPECIFIED = SqlInstancesStartExternalSyncRequest_SyncParallelLevel "EXTERNAL_SYNC_PARALLEL_LEVEL_UNSPECIFIED"

-- | Minimal parallel level.
pattern SqlInstancesStartExternalSyncRequest_SyncParallelLevel_Min :: SqlInstancesStartExternalSyncRequest_SyncParallelLevel
pattern SqlInstancesStartExternalSyncRequest_SyncParallelLevel_Min = SqlInstancesStartExternalSyncRequest_SyncParallelLevel "MIN"

-- | Optimal parallel level.
pattern SqlInstancesStartExternalSyncRequest_SyncParallelLevel_Optimal :: SqlInstancesStartExternalSyncRequest_SyncParallelLevel
pattern SqlInstancesStartExternalSyncRequest_SyncParallelLevel_Optimal = SqlInstancesStartExternalSyncRequest_SyncParallelLevel "OPTIMAL"

-- | Maximum parallel level.
pattern SqlInstancesStartExternalSyncRequest_SyncParallelLevel_Max :: SqlInstancesStartExternalSyncRequest_SyncParallelLevel
pattern SqlInstancesStartExternalSyncRequest_SyncParallelLevel_Max = SqlInstancesStartExternalSyncRequest_SyncParallelLevel "MAX"

{-# COMPLETE
  SqlInstancesStartExternalSyncRequest_SyncParallelLevel_EXTERNALSYNCPARALLELLEVELUNSPECIFIED,
  SqlInstancesStartExternalSyncRequest_SyncParallelLevel_Min,
  SqlInstancesStartExternalSyncRequest_SyncParallelLevel_Optimal,
  SqlInstancesStartExternalSyncRequest_SyncParallelLevel_Max,
  SqlInstancesStartExternalSyncRequest_SyncParallelLevel
  #-}

-- | Optional. MigrationType configures the migration to use physical files or logical dump files. If not set, then the logical dump file configuration is used. Valid values are @LOGICAL@ or @PHYSICAL@. Only applicable to MySQL.
newtype SqlInstancesVerifyExternalSyncSettingsRequest_MigrationType = SqlInstancesVerifyExternalSyncSettingsRequest_MigrationType {fromSqlInstancesVerifyExternalSyncSettingsRequest_MigrationType :: Core.Text}
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

-- | Default value is a logical dump file-based migration
pattern SqlInstancesVerifyExternalSyncSettingsRequest_MigrationType_MIGRATIONTYPEUNSPECIFIED :: SqlInstancesVerifyExternalSyncSettingsRequest_MigrationType
pattern SqlInstancesVerifyExternalSyncSettingsRequest_MigrationType_MIGRATIONTYPEUNSPECIFIED = SqlInstancesVerifyExternalSyncSettingsRequest_MigrationType "MIGRATION_TYPE_UNSPECIFIED"

-- | Logical dump file-based migration
pattern SqlInstancesVerifyExternalSyncSettingsRequest_MigrationType_Logical :: SqlInstancesVerifyExternalSyncSettingsRequest_MigrationType
pattern SqlInstancesVerifyExternalSyncSettingsRequest_MigrationType_Logical = SqlInstancesVerifyExternalSyncSettingsRequest_MigrationType "LOGICAL"

-- | Physical file-based migration
pattern SqlInstancesVerifyExternalSyncSettingsRequest_MigrationType_Physical :: SqlInstancesVerifyExternalSyncSettingsRequest_MigrationType
pattern SqlInstancesVerifyExternalSyncSettingsRequest_MigrationType_Physical = SqlInstancesVerifyExternalSyncSettingsRequest_MigrationType "PHYSICAL"

{-# COMPLETE
  SqlInstancesVerifyExternalSyncSettingsRequest_MigrationType_MIGRATIONTYPEUNSPECIFIED,
  SqlInstancesVerifyExternalSyncSettingsRequest_MigrationType_Logical,
  SqlInstancesVerifyExternalSyncSettingsRequest_MigrationType_Physical,
  SqlInstancesVerifyExternalSyncSettingsRequest_MigrationType
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

-- | Optional. Parallel level for initial data sync. Only applicable for PostgreSQL.
newtype SqlInstancesVerifyExternalSyncSettingsRequest_SyncParallelLevel = SqlInstancesVerifyExternalSyncSettingsRequest_SyncParallelLevel {fromSqlInstancesVerifyExternalSyncSettingsRequest_SyncParallelLevel :: Core.Text}
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

-- | Unknown sync parallel level. Will be defaulted to OPTIMAL.
pattern SqlInstancesVerifyExternalSyncSettingsRequest_SyncParallelLevel_EXTERNALSYNCPARALLELLEVELUNSPECIFIED :: SqlInstancesVerifyExternalSyncSettingsRequest_SyncParallelLevel
pattern SqlInstancesVerifyExternalSyncSettingsRequest_SyncParallelLevel_EXTERNALSYNCPARALLELLEVELUNSPECIFIED = SqlInstancesVerifyExternalSyncSettingsRequest_SyncParallelLevel "EXTERNAL_SYNC_PARALLEL_LEVEL_UNSPECIFIED"

-- | Minimal parallel level.
pattern SqlInstancesVerifyExternalSyncSettingsRequest_SyncParallelLevel_Min :: SqlInstancesVerifyExternalSyncSettingsRequest_SyncParallelLevel
pattern SqlInstancesVerifyExternalSyncSettingsRequest_SyncParallelLevel_Min = SqlInstancesVerifyExternalSyncSettingsRequest_SyncParallelLevel "MIN"

-- | Optimal parallel level.
pattern SqlInstancesVerifyExternalSyncSettingsRequest_SyncParallelLevel_Optimal :: SqlInstancesVerifyExternalSyncSettingsRequest_SyncParallelLevel
pattern SqlInstancesVerifyExternalSyncSettingsRequest_SyncParallelLevel_Optimal = SqlInstancesVerifyExternalSyncSettingsRequest_SyncParallelLevel "OPTIMAL"

-- | Maximum parallel level.
pattern SqlInstancesVerifyExternalSyncSettingsRequest_SyncParallelLevel_Max :: SqlInstancesVerifyExternalSyncSettingsRequest_SyncParallelLevel
pattern SqlInstancesVerifyExternalSyncSettingsRequest_SyncParallelLevel_Max = SqlInstancesVerifyExternalSyncSettingsRequest_SyncParallelLevel "MAX"

{-# COMPLETE
  SqlInstancesVerifyExternalSyncSettingsRequest_SyncParallelLevel_EXTERNALSYNCPARALLELLEVELUNSPECIFIED,
  SqlInstancesVerifyExternalSyncSettingsRequest_SyncParallelLevel_Min,
  SqlInstancesVerifyExternalSyncSettingsRequest_SyncParallelLevel_Optimal,
  SqlInstancesVerifyExternalSyncSettingsRequest_SyncParallelLevel_Max,
  SqlInstancesVerifyExternalSyncSettingsRequest_SyncParallelLevel
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

-- | The type of maintenance to be performed on the instance.
newtype SqlSubOperationType_MaintenanceType = SqlSubOperationType_MaintenanceType {fromSqlSubOperationType_MaintenanceType :: Core.Text}
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

-- | Maintenance type is unspecified.
pattern SqlSubOperationType_MaintenanceType_SQLMAINTENANCETYPEUNSPECIFIED :: SqlSubOperationType_MaintenanceType
pattern SqlSubOperationType_MaintenanceType_SQLMAINTENANCETYPEUNSPECIFIED = SqlSubOperationType_MaintenanceType "SQL_MAINTENANCE_TYPE_UNSPECIFIED"

-- | Indicates that a standalone instance is undergoing maintenance. The instance can be either a primary instance or a replica.
pattern SqlSubOperationType_MaintenanceType_INSTANCEMAINTENANCE :: SqlSubOperationType_MaintenanceType
pattern SqlSubOperationType_MaintenanceType_INSTANCEMAINTENANCE = SqlSubOperationType_MaintenanceType "INSTANCE_MAINTENANCE"

-- | Indicates that the primary instance and all of its replicas, including cascading replicas, are undergoing maintenance. Maintenance is performed on groups of replicas first, followed by the primary instance.
pattern SqlSubOperationType_MaintenanceType_REPLICAINCLUDEDMAINTENANCE :: SqlSubOperationType_MaintenanceType
pattern SqlSubOperationType_MaintenanceType_REPLICAINCLUDEDMAINTENANCE = SqlSubOperationType_MaintenanceType "REPLICA_INCLUDED_MAINTENANCE"

-- | Indicates that the standalone instance is undergoing maintenance, initiated by self-service. The instance can be either a primary instance or a replica.
pattern SqlSubOperationType_MaintenanceType_INSTANCESELFSERVICEMAINTENANCE :: SqlSubOperationType_MaintenanceType
pattern SqlSubOperationType_MaintenanceType_INSTANCESELFSERVICEMAINTENANCE = SqlSubOperationType_MaintenanceType "INSTANCE_SELF_SERVICE_MAINTENANCE"

-- | Indicates that the primary instance and all of its replicas are undergoing maintenance, initiated by self-service. Maintenance is performed on groups of replicas first, followed by the primary instance.
pattern SqlSubOperationType_MaintenanceType_REPLICAINCLUDEDSELFSERVICEMAINTENANCE :: SqlSubOperationType_MaintenanceType
pattern SqlSubOperationType_MaintenanceType_REPLICAINCLUDEDSELFSERVICEMAINTENANCE = SqlSubOperationType_MaintenanceType "REPLICA_INCLUDED_SELF_SERVICE_MAINTENANCE"

{-# COMPLETE
  SqlSubOperationType_MaintenanceType_SQLMAINTENANCETYPEUNSPECIFIED,
  SqlSubOperationType_MaintenanceType_INSTANCEMAINTENANCE,
  SqlSubOperationType_MaintenanceType_REPLICAINCLUDEDMAINTENANCE,
  SqlSubOperationType_MaintenanceType_INSTANCESELFSERVICEMAINTENANCE,
  SqlSubOperationType_MaintenanceType_REPLICAINCLUDEDSELFSERVICEMAINTENANCE,
  SqlSubOperationType_MaintenanceType
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

-- | Cloud IAM group. Not used for login.
pattern User_Type_CLOUDIAMGROUP :: User_Type
pattern User_Type_CLOUDIAMGROUP = User_Type "CLOUD_IAM_GROUP"

-- | Read-only. Login for a user that belongs to the Cloud IAM group.
pattern User_Type_CLOUDIAMGROUPUSER :: User_Type
pattern User_Type_CLOUDIAMGROUPUSER = User_Type "CLOUD_IAM_GROUP_USER"

-- | Read-only. Login for a service account that belongs to the Cloud IAM group.
pattern User_Type_CLOUDIAMGROUPSERVICEACCOUNT :: User_Type
pattern User_Type_CLOUDIAMGROUPSERVICEACCOUNT = User_Type "CLOUD_IAM_GROUP_SERVICE_ACCOUNT"

{-# COMPLETE
  User_Type_BUILTIN,
  User_Type_CLOUDIAMUSER,
  User_Type_CLOUDIAMSERVICEACCOUNT,
  User_Type_CLOUDIAMGROUP,
  User_Type_CLOUDIAMGROUPUSER,
  User_Type_CLOUDIAMGROUPSERVICEACCOUNT,
  User_Type
  #-}
