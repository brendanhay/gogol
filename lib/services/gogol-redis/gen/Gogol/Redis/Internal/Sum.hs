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
-- Module      : Gogol.Redis.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Redis.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AOFConfig_AppendFsync
    AOFConfig_AppendFsync
      ( AOFConfig_AppendFsync_APPENDFSYNCUNSPECIFIED,
        AOFConfig_AppendFsync_NO,
        AOFConfig_AppendFsync_Everysec,
        AOFConfig_AppendFsync_Always,
        ..
      ),

    -- * AutomatedBackupConfig_AutomatedBackupMode
    AutomatedBackupConfig_AutomatedBackupMode
      ( AutomatedBackupConfig_AutomatedBackupMode_AUTOMATEDBACKUPMODEUNSPECIFIED,
        AutomatedBackupConfig_AutomatedBackupMode_Disabled,
        AutomatedBackupConfig_AutomatedBackupMode_Enabled,
        ..
      ),

    -- * AvailabilityConfiguration_AvailabilityType
    AvailabilityConfiguration_AvailabilityType
      ( AvailabilityConfiguration_AvailabilityType_AVAILABILITYTYPEUNSPECIFIED,
        AvailabilityConfiguration_AvailabilityType_Zonal,
        AvailabilityConfiguration_AvailabilityType_Regional,
        AvailabilityConfiguration_AvailabilityType_MULTIREGIONAL,
        AvailabilityConfiguration_AvailabilityType_AVAILABILITYTYPEOTHER,
        ..
      ),

    -- * Backup_BackupType
    Backup_BackupType
      ( Backup_BackupType_BACKUPTYPEUNSPECIFIED,
        Backup_BackupType_ONDEMAND,
        Backup_BackupType_Automated,
        ..
      ),

    -- * Backup_NodeType
    Backup_NodeType
      ( Backup_NodeType_NODETYPEUNSPECIFIED,
        Backup_NodeType_REDISSHAREDCORENANO,
        Backup_NodeType_REDISHIGHMEMMEDIUM,
        Backup_NodeType_REDISHIGHMEMXLARGE,
        Backup_NodeType_REDISSTANDARDSMALL,
        ..
      ),

    -- * Backup_State
    Backup_State
      ( Backup_State_STATEUNSPECIFIED,
        Backup_State_Creating,
        Backup_State_Active,
        Backup_State_Deleting,
        Backup_State_Suspended,
        ..
      ),

    -- * BackupRun_Status
    BackupRun_Status
      ( BackupRun_Status_STATUSUNSPECIFIED,
        BackupRun_Status_Successful,
        BackupRun_Status_Failed,
        ..
      ),

    -- * Cluster_AuthorizationMode
    Cluster_AuthorizationMode
      ( Cluster_AuthorizationMode_AUTHMODEUNSPECIFIED,
        Cluster_AuthorizationMode_AUTHMODEIAMAUTH,
        Cluster_AuthorizationMode_AUTHMODEDISABLED,
        ..
      ),

    -- * Cluster_NodeType
    Cluster_NodeType
      ( Cluster_NodeType_NODETYPEUNSPECIFIED,
        Cluster_NodeType_REDISSHAREDCORENANO,
        Cluster_NodeType_REDISHIGHMEMMEDIUM,
        Cluster_NodeType_REDISHIGHMEMXLARGE,
        Cluster_NodeType_REDISSTANDARDSMALL,
        ..
      ),

    -- * Cluster_State
    Cluster_State
      ( Cluster_State_STATEUNSPECIFIED,
        Cluster_State_Creating,
        Cluster_State_Active,
        Cluster_State_Updating,
        Cluster_State_Deleting,
        ..
      ),

    -- * Cluster_TransitEncryptionMode
    Cluster_TransitEncryptionMode
      ( Cluster_TransitEncryptionMode_TRANSITENCRYPTIONMODEUNSPECIFIED,
        Cluster_TransitEncryptionMode_TRANSITENCRYPTIONMODEDISABLED,
        Cluster_TransitEncryptionMode_TRANSITENCRYPTIONMODESERVERAUTHENTICATION,
        ..
      ),

    -- * ClusterPersistenceConfig_Mode
    ClusterPersistenceConfig_Mode
      ( ClusterPersistenceConfig_Mode_PERSISTENCEMODEUNSPECIFIED,
        ClusterPersistenceConfig_Mode_Disabled,
        ClusterPersistenceConfig_Mode_Rdb,
        ClusterPersistenceConfig_Mode_Aof,
        ..
      ),

    -- * ClusterWeeklyMaintenanceWindow_Day
    ClusterWeeklyMaintenanceWindow_Day
      ( ClusterWeeklyMaintenanceWindow_Day_DAYOFWEEKUNSPECIFIED,
        ClusterWeeklyMaintenanceWindow_Day_Monday,
        ClusterWeeklyMaintenanceWindow_Day_Tuesday,
        ClusterWeeklyMaintenanceWindow_Day_Wednesday,
        ClusterWeeklyMaintenanceWindow_Day_Thursday,
        ClusterWeeklyMaintenanceWindow_Day_Friday,
        ClusterWeeklyMaintenanceWindow_Day_Saturday,
        ClusterWeeklyMaintenanceWindow_Day_Sunday,
        ..
      ),

    -- * CrossClusterReplicationConfig_ClusterRole
    CrossClusterReplicationConfig_ClusterRole
      ( CrossClusterReplicationConfig_ClusterRole_CLUSTERROLEUNSPECIFIED,
        CrossClusterReplicationConfig_ClusterRole_None,
        CrossClusterReplicationConfig_ClusterRole_Primary,
        CrossClusterReplicationConfig_ClusterRole_Secondary,
        ..
      ),

    -- * DatabaseResourceFeed_FeedType
    DatabaseResourceFeed_FeedType
      ( DatabaseResourceFeed_FeedType_FEEDTYPEUNSPECIFIED,
        DatabaseResourceFeed_FeedType_RESOURCEMETADATA,
        DatabaseResourceFeed_FeedType_OBSERVABILITYDATA,
        DatabaseResourceFeed_FeedType_SECURITYFINDINGDATA,
        DatabaseResourceFeed_FeedType_RECOMMENDATIONSIGNALDATA,
        ..
      ),

    -- * DatabaseResourceHealthSignalData_Provider
    DatabaseResourceHealthSignalData_Provider
      ( DatabaseResourceHealthSignalData_Provider_PROVIDERUNSPECIFIED,
        DatabaseResourceHealthSignalData_Provider_Gcp,
        DatabaseResourceHealthSignalData_Provider_Aws,
        DatabaseResourceHealthSignalData_Provider_Azure,
        DatabaseResourceHealthSignalData_Provider_Onprem,
        DatabaseResourceHealthSignalData_Provider_Selfmanaged,
        DatabaseResourceHealthSignalData_Provider_PROVIDEROTHER,
        ..
      ),

    -- * DatabaseResourceHealthSignalData_SignalClass
    DatabaseResourceHealthSignalData_SignalClass
      ( DatabaseResourceHealthSignalData_SignalClass_CLASSUNSPECIFIED,
        DatabaseResourceHealthSignalData_SignalClass_Threat,
        DatabaseResourceHealthSignalData_SignalClass_Vulnerability,
        DatabaseResourceHealthSignalData_SignalClass_Misconfiguration,
        DatabaseResourceHealthSignalData_SignalClass_Observation,
        DatabaseResourceHealthSignalData_SignalClass_Error',
        ..
      ),

    -- * DatabaseResourceHealthSignalData_SignalSeverity
    DatabaseResourceHealthSignalData_SignalSeverity
      ( DatabaseResourceHealthSignalData_SignalSeverity_SIGNALSEVERITYUNSPECIFIED,
        DatabaseResourceHealthSignalData_SignalSeverity_Critical,
        DatabaseResourceHealthSignalData_SignalSeverity_High,
        DatabaseResourceHealthSignalData_SignalSeverity_Medium,
        DatabaseResourceHealthSignalData_SignalSeverity_Low,
        ..
      ),

    -- * DatabaseResourceHealthSignalData_SignalType
    DatabaseResourceHealthSignalData_SignalType
      ( DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEUNSPECIFIED,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPENOTPROTECTEDBYAUTOMATICFAILOVER,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEGROUPNOTREPLICATINGACROSSREGIONS,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPENOTAVAILABLEINMULTIPLEZONES,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPENOTAVAILABLEINMULTIPLEREGIONS,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPENOPROMOTABLEREPLICA,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPENOAUTOMATEDBACKUPPOLICY,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPESHORTBACKUPRETENTION,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPELASTBACKUPFAILED,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPELASTBACKUPOLD,
        DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_2_0,
        DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_3,
        DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_2,
        DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_1,
        DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_0,
        DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_CONTROLS_V8_0,
        DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_NIST_800_53,
        DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_NIST_800_53_R5,
        DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_NIST_CYBERSECURITY_FRAMEWORK_V1_0,
        DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_ISO_27001,
        DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_ISO_27001_V2022,
        DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_PCI_DSS_V3_2_1,
        DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_PCI_DSS_V4_0,
        DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CLOUD_CONTROLS_MATRIX_V4,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEVIOLATESHIPAA,
        DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_SOC2_V2017,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPELOGSNOTOPTIMIZEDFORTROUBLESHOOTING,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEQUERYDURATIONSNOTLOGGED,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEVERBOSEERRORLOGGING,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEQUERYLOCKWAITSNOTLOGGED,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPELOGGINGMOSTERRORS,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPELOGGINGONLYCRITICALERRORS,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEMINIMALERRORLOGGING,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEQUERYSTATISTICSLOGGED,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEEXCESSIVELOGGINGOFCLIENTHOSTNAME,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEEXCESSIVELOGGINGOFPARSERSTATISTICS,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEEXCESSIVELOGGINGOFPLANNERSTATISTICS,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPENOTLOGGINGONLYDDLSTATEMENTS,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPELOGGINGQUERYSTATISTICS,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPENOTLOGGINGTEMPORARYFILES,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPECONNECTIONMAXNOTCONFIGURED,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEUSEROPTIONSCONFIGURED,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEEXPOSEDTOPUBLICACCESS,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEUNENCRYPTEDCONNECTIONS,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPENOROOTPASSWORD,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEWEAKROOTPASSWORD,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEENCRYPTIONKEYNOTCUSTOMERMANAGED,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPESERVERAUTHENTICATIONNOTREQUIRED,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEEXPOSEDBYOWNERSHIPCHAINING,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEEXPOSEDTOEXTERNALSCRIPTS,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEEXPOSEDTOLOCALDATALOADS,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPECONNECTIONATTEMPTSNOTLOGGED,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEDISCONNECTIONSNOTLOGGED,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPELOGGINGEXCESSIVESTATEMENTINFO,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEEXPOSEDTOREMOTEACCESS,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEDATABASENAMESEXPOSED,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPESENSITIVETRACEINFONOTMASKED,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEPUBLICIPENABLED,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEIDLE,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEOVERPROVISIONED,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEHIGHNUMBEROFOPENTABLES,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEHIGHNUMBEROFTABLES,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEHIGHTRANSACTIONIDUTILIZATION,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEUNDERPROVISIONED,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEOUTOFDISK,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPESERVERCERTIFICATENEAREXPIRY,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEDATABASEAUDITINGDISABLED,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPERESTRICTAUTHORIZEDNETWORKS,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEVIOLATEPOLICYRESTRICTPUBLICIP,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEQUOTALIMIT,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPENOPASSWORDPOLICY,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPECONNECTIONSPERFORMANCEIMPACT,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPETMPTABLESPERFORMANCEIMPACT,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPETRANSLOGSPERFORMANCEIMPACT,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEHIGHJOINSWITHOUTINDEXES,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPESUPERUSERWRITINGTOUSERTABLES,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEUSERGRANTEDALLPERMISSIONS,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEDATAEXPORTTOEXTERNALCLOUDSTORAGEBUCKET,
        DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEDATAEXPORTTOPUBLICCLOUDSTORAGEBUCKET,
        ..
      ),

    -- * DatabaseResourceHealthSignalData_State
    DatabaseResourceHealthSignalData_State
      ( DatabaseResourceHealthSignalData_State_STATEUNSPECIFIED,
        DatabaseResourceHealthSignalData_State_Active,
        DatabaseResourceHealthSignalData_State_Resolved,
        DatabaseResourceHealthSignalData_State_Muted,
        ..
      ),

    -- * DatabaseResourceId_Provider
    DatabaseResourceId_Provider
      ( DatabaseResourceId_Provider_PROVIDERUNSPECIFIED,
        DatabaseResourceId_Provider_Gcp,
        DatabaseResourceId_Provider_Aws,
        DatabaseResourceId_Provider_Azure,
        DatabaseResourceId_Provider_Onprem,
        DatabaseResourceId_Provider_Selfmanaged,
        DatabaseResourceId_Provider_PROVIDEROTHER,
        ..
      ),

    -- * DatabaseResourceMetadata_CurrentState
    DatabaseResourceMetadata_CurrentState
      ( DatabaseResourceMetadata_CurrentState_STATEUNSPECIFIED,
        DatabaseResourceMetadata_CurrentState_Healthy,
        DatabaseResourceMetadata_CurrentState_Unhealthy,
        DatabaseResourceMetadata_CurrentState_Suspended,
        DatabaseResourceMetadata_CurrentState_Deleted,
        DatabaseResourceMetadata_CurrentState_STATEOTHER,
        ..
      ),

    -- * DatabaseResourceMetadata_Edition
    DatabaseResourceMetadata_Edition
      ( DatabaseResourceMetadata_Edition_EDITIONUNSPECIFIED,
        DatabaseResourceMetadata_Edition_EDITIONENTERPRISE,
        DatabaseResourceMetadata_Edition_EDITIONENTERPRISEPLUS,
        ..
      ),

    -- * DatabaseResourceMetadata_ExpectedState
    DatabaseResourceMetadata_ExpectedState
      ( DatabaseResourceMetadata_ExpectedState_STATEUNSPECIFIED,
        DatabaseResourceMetadata_ExpectedState_Healthy,
        DatabaseResourceMetadata_ExpectedState_Unhealthy,
        DatabaseResourceMetadata_ExpectedState_Suspended,
        DatabaseResourceMetadata_ExpectedState_Deleted,
        DatabaseResourceMetadata_ExpectedState_STATEOTHER,
        ..
      ),

    -- * DatabaseResourceMetadata_InstanceType
    DatabaseResourceMetadata_InstanceType
      ( DatabaseResourceMetadata_InstanceType_INSTANCETYPEUNSPECIFIED,
        DatabaseResourceMetadata_InstanceType_SUBRESOURCETYPEUNSPECIFIED,
        DatabaseResourceMetadata_InstanceType_Primary,
        DatabaseResourceMetadata_InstanceType_Secondary,
        DatabaseResourceMetadata_InstanceType_READREPLICA,
        DatabaseResourceMetadata_InstanceType_Other,
        DatabaseResourceMetadata_InstanceType_SUBRESOURCETYPEPRIMARY,
        DatabaseResourceMetadata_InstanceType_SUBRESOURCETYPESECONDARY,
        DatabaseResourceMetadata_InstanceType_SUBRESOURCETYPEREADREPLICA,
        DatabaseResourceMetadata_InstanceType_SUBRESOURCETYPEOTHER,
        ..
      ),

    -- * DatabaseResourceRecommendationSignalData_RecommendationState
    DatabaseResourceRecommendationSignalData_RecommendationState
      ( DatabaseResourceRecommendationSignalData_RecommendationState_Unspecified,
        DatabaseResourceRecommendationSignalData_RecommendationState_Active,
        DatabaseResourceRecommendationSignalData_RecommendationState_Claimed,
        DatabaseResourceRecommendationSignalData_RecommendationState_Succeeded,
        DatabaseResourceRecommendationSignalData_RecommendationState_Failed,
        DatabaseResourceRecommendationSignalData_RecommendationState_Dismissed,
        ..
      ),

    -- * DatabaseResourceRecommendationSignalData_SignalType
    DatabaseResourceRecommendationSignalData_SignalType
      ( DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEUNSPECIFIED,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPENOTPROTECTEDBYAUTOMATICFAILOVER,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEGROUPNOTREPLICATINGACROSSREGIONS,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPENOTAVAILABLEINMULTIPLEZONES,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPENOTAVAILABLEINMULTIPLEREGIONS,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPENOPROMOTABLEREPLICA,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPENOAUTOMATEDBACKUPPOLICY,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPESHORTBACKUPRETENTION,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPELASTBACKUPFAILED,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPELASTBACKUPOLD,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_2_0,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_3,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_2,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_1,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_0,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_CONTROLS_V8_0,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_NIST_800_53,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_NIST_800_53_R5,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_NIST_CYBERSECURITY_FRAMEWORK_V1_0,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_ISO_27001,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_ISO_27001_V2022,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_PCI_DSS_V3_2_1,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_PCI_DSS_V4_0,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CLOUD_CONTROLS_MATRIX_V4,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEVIOLATESHIPAA,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_SOC2_V2017,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPELOGSNOTOPTIMIZEDFORTROUBLESHOOTING,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEQUERYDURATIONSNOTLOGGED,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEVERBOSEERRORLOGGING,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEQUERYLOCKWAITSNOTLOGGED,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPELOGGINGMOSTERRORS,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPELOGGINGONLYCRITICALERRORS,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEMINIMALERRORLOGGING,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEQUERYSTATISTICSLOGGED,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEEXCESSIVELOGGINGOFCLIENTHOSTNAME,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEEXCESSIVELOGGINGOFPARSERSTATISTICS,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEEXCESSIVELOGGINGOFPLANNERSTATISTICS,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPENOTLOGGINGONLYDDLSTATEMENTS,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPELOGGINGQUERYSTATISTICS,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPENOTLOGGINGTEMPORARYFILES,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPECONNECTIONMAXNOTCONFIGURED,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEUSEROPTIONSCONFIGURED,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEEXPOSEDTOPUBLICACCESS,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEUNENCRYPTEDCONNECTIONS,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPENOROOTPASSWORD,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEWEAKROOTPASSWORD,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEENCRYPTIONKEYNOTCUSTOMERMANAGED,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPESERVERAUTHENTICATIONNOTREQUIRED,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEEXPOSEDBYOWNERSHIPCHAINING,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEEXPOSEDTOEXTERNALSCRIPTS,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEEXPOSEDTOLOCALDATALOADS,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPECONNECTIONATTEMPTSNOTLOGGED,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEDISCONNECTIONSNOTLOGGED,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPELOGGINGEXCESSIVESTATEMENTINFO,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEEXPOSEDTOREMOTEACCESS,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEDATABASENAMESEXPOSED,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPESENSITIVETRACEINFONOTMASKED,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEPUBLICIPENABLED,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEIDLE,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEOVERPROVISIONED,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEHIGHNUMBEROFOPENTABLES,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEHIGHNUMBEROFTABLES,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEHIGHTRANSACTIONIDUTILIZATION,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEUNDERPROVISIONED,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEOUTOFDISK,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPESERVERCERTIFICATENEAREXPIRY,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEDATABASEAUDITINGDISABLED,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPERESTRICTAUTHORIZEDNETWORKS,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEVIOLATEPOLICYRESTRICTPUBLICIP,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEQUOTALIMIT,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPENOPASSWORDPOLICY,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPECONNECTIONSPERFORMANCEIMPACT,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPETMPTABLESPERFORMANCEIMPACT,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPETRANSLOGSPERFORMANCEIMPACT,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEHIGHJOINSWITHOUTINDEXES,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPESUPERUSERWRITINGTOUSERTABLES,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEUSERGRANTEDALLPERMISSIONS,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEDATAEXPORTTOEXTERNALCLOUDSTORAGEBUCKET,
        DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEDATAEXPORTTOPUBLICCLOUDSTORAGEBUCKET,
        ..
      ),

    -- * Entitlement_EntitlementState
    Entitlement_EntitlementState
      ( Entitlement_EntitlementState_ENTITLEMENTSTATEUNSPECIFIED,
        Entitlement_EntitlementState_Entitled,
        Entitlement_EntitlementState_Revoked,
        ..
      ),

    -- * Entitlement_Type
    Entitlement_Type
      ( Entitlement_Type_ENTITLEMENTTYPEUNSPECIFIED,
        Entitlement_Type_Gemini,
        ..
      ),

    -- * FailoverInstanceRequest_DataProtectionMode
    FailoverInstanceRequest_DataProtectionMode
      ( FailoverInstanceRequest_DataProtectionMode_DATAPROTECTIONMODEUNSPECIFIED,
        FailoverInstanceRequest_DataProtectionMode_LIMITEDDATALOSS,
        FailoverInstanceRequest_DataProtectionMode_FORCEDATALOSS,
        ..
      ),

    -- * Instance_ConnectMode
    Instance_ConnectMode
      ( Instance_ConnectMode_CONNECTMODEUNSPECIFIED,
        Instance_ConnectMode_DIRECTPEERING,
        Instance_ConnectMode_PRIVATESERVICEACCESS,
        ..
      ),

    -- * Instance_ReadReplicasMode
    Instance_ReadReplicasMode
      ( Instance_ReadReplicasMode_READREPLICASMODEUNSPECIFIED,
        Instance_ReadReplicasMode_READREPLICASDISABLED,
        Instance_ReadReplicasMode_READREPLICASENABLED,
        ..
      ),

    -- * Instance_State
    Instance_State
      ( Instance_State_STATEUNSPECIFIED,
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

    -- * Instance_SuspensionReasonsItem
    Instance_SuspensionReasonsItem
      ( Instance_SuspensionReasonsItem_SUSPENSIONREASONUNSPECIFIED,
        Instance_SuspensionReasonsItem_CUSTOMERMANAGEDKEYISSUE,
        ..
      ),

    -- * Instance_Tier
    Instance_Tier
      ( Instance_Tier_TIERUNSPECIFIED,
        Instance_Tier_Basic,
        Instance_Tier_STANDARDHA,
        ..
      ),

    -- * Instance_TransitEncryptionMode
    Instance_TransitEncryptionMode
      ( Instance_TransitEncryptionMode_TRANSITENCRYPTIONMODEUNSPECIFIED,
        Instance_TransitEncryptionMode_SERVERAUTHENTICATION,
        Instance_TransitEncryptionMode_Disabled,
        ..
      ),

    -- * ObservabilityMetricData_AggregationType
    ObservabilityMetricData_AggregationType
      ( ObservabilityMetricData_AggregationType_AGGREGATIONTYPEUNSPECIFIED,
        ObservabilityMetricData_AggregationType_Peak,
        ObservabilityMetricData_AggregationType_P99,
        ObservabilityMetricData_AggregationType_P95,
        ObservabilityMetricData_AggregationType_Current,
        ..
      ),

    -- * ObservabilityMetricData_MetricType
    ObservabilityMetricData_MetricType
      ( ObservabilityMetricData_MetricType_METRICTYPEUNSPECIFIED,
        ObservabilityMetricData_MetricType_CPUUTILIZATION,
        ObservabilityMetricData_MetricType_MEMORYUTILIZATION,
        ObservabilityMetricData_MetricType_NETWORKCONNECTIONS,
        ObservabilityMetricData_MetricType_STORAGEUTILIZATION,
        ObservabilityMetricData_MetricType_STORAGEUSEDBYTES,
        ..
      ),

    -- * OperationError_ErrorType
    OperationError_ErrorType
      ( OperationError_ErrorType_OPERATIONERRORTYPEUNSPECIFIED,
        OperationError_ErrorType_KMSKEYERROR,
        OperationError_ErrorType_DATABASEERROR,
        OperationError_ErrorType_STOCKOUTERROR,
        OperationError_ErrorType_CANCELLATIONERROR,
        OperationError_ErrorType_SQLSERVERERROR,
        OperationError_ErrorType_INTERNALERROR,
        ..
      ),

    -- * PersistenceConfig_PersistenceMode
    PersistenceConfig_PersistenceMode
      ( PersistenceConfig_PersistenceMode_PERSISTENCEMODEUNSPECIFIED,
        PersistenceConfig_PersistenceMode_Disabled,
        PersistenceConfig_PersistenceMode_Rdb,
        ..
      ),

    -- * PersistenceConfig_RdbSnapshotPeriod
    PersistenceConfig_RdbSnapshotPeriod
      ( PersistenceConfig_RdbSnapshotPeriod_SNAPSHOTPERIODUNSPECIFIED,
        PersistenceConfig_RdbSnapshotPeriod_ONEHOUR,
        PersistenceConfig_RdbSnapshotPeriod_SIXHOURS,
        PersistenceConfig_RdbSnapshotPeriod_TWELVEHOURS,
        PersistenceConfig_RdbSnapshotPeriod_TWENTYFOURHOURS,
        ..
      ),

    -- * Product_Engine
    Product_Engine
      ( Product_Engine_ENGINEUNSPECIFIED,
        Product_Engine_ENGINEMYSQL,
        Product_Engine_Mysql,
        Product_Engine_ENGINEPOSTGRES,
        Product_Engine_Postgres,
        Product_Engine_ENGINESQLSERVER,
        Product_Engine_SQLSERVER,
        Product_Engine_ENGINENATIVE,
        Product_Engine_Native,
        Product_Engine_ENGINECLOUDSPANNERWITHPOSTGRESDIALECT,
        Product_Engine_ENGINECLOUDSPANNERWITHGOOGLESQLDIALECT,
        Product_Engine_ENGINEMEMORYSTOREFORREDIS,
        Product_Engine_ENGINEMEMORYSTOREFORREDISCLUSTER,
        Product_Engine_ENGINEOTHER,
        Product_Engine_ENGINEFIRESTOREWITHNATIVEMODE,
        Product_Engine_ENGINEFIRESTOREWITHDATASTOREMODE,
        ..
      ),

    -- * Product_Type
    Product_Type
      ( Product_Type_PRODUCTTYPEUNSPECIFIED,
        Product_Type_PRODUCTTYPECLOUDSQL,
        Product_Type_CLOUDSQL,
        Product_Type_PRODUCTTYPEALLOYDB,
        Product_Type_Alloydb,
        Product_Type_PRODUCTTYPESPANNER,
        Product_Type_PRODUCTTYPEONPREM,
        Product_Type_ONPREM,
        Product_Type_PRODUCTTYPEMEMORYSTORE,
        Product_Type_PRODUCTTYPEBIGTABLE,
        Product_Type_PRODUCTTYPEOTHER,
        Product_Type_PRODUCTTYPEFIRESTORE,
        ..
      ),

    -- * PscAutoConnection_ConnectionType
    PscAutoConnection_ConnectionType
      ( PscAutoConnection_ConnectionType_CONNECTIONTYPEUNSPECIFIED,
        PscAutoConnection_ConnectionType_CONNECTIONTYPEDISCOVERY,
        PscAutoConnection_ConnectionType_CONNECTIONTYPEPRIMARY,
        PscAutoConnection_ConnectionType_CONNECTIONTYPEREADER,
        ..
      ),

    -- * PscAutoConnection_PscConnectionStatus
    PscAutoConnection_PscConnectionStatus
      ( PscAutoConnection_PscConnectionStatus_PSCCONNECTIONSTATUSUNSPECIFIED,
        PscAutoConnection_PscConnectionStatus_PSCCONNECTIONSTATUSACTIVE,
        PscAutoConnection_PscConnectionStatus_PSCCONNECTIONSTATUSNOTFOUND,
        ..
      ),

    -- * PscConnection_ConnectionType
    PscConnection_ConnectionType
      ( PscConnection_ConnectionType_CONNECTIONTYPEUNSPECIFIED,
        PscConnection_ConnectionType_CONNECTIONTYPEDISCOVERY,
        PscConnection_ConnectionType_CONNECTIONTYPEPRIMARY,
        PscConnection_ConnectionType_CONNECTIONTYPEREADER,
        ..
      ),

    -- * PscConnection_PscConnectionStatus
    PscConnection_PscConnectionStatus
      ( PscConnection_PscConnectionStatus_PSCCONNECTIONSTATUSUNSPECIFIED,
        PscConnection_PscConnectionStatus_PSCCONNECTIONSTATUSACTIVE,
        PscConnection_PscConnectionStatus_PSCCONNECTIONSTATUSNOTFOUND,
        ..
      ),

    -- * PscServiceAttachment_ConnectionType
    PscServiceAttachment_ConnectionType
      ( PscServiceAttachment_ConnectionType_CONNECTIONTYPEUNSPECIFIED,
        PscServiceAttachment_ConnectionType_CONNECTIONTYPEDISCOVERY,
        PscServiceAttachment_ConnectionType_CONNECTIONTYPEPRIMARY,
        PscServiceAttachment_ConnectionType_CONNECTIONTYPEREADER,
        ..
      ),

    -- * RDBConfig_RdbSnapshotPeriod
    RDBConfig_RdbSnapshotPeriod
      ( RDBConfig_RdbSnapshotPeriod_SNAPSHOTPERIODUNSPECIFIED,
        RDBConfig_RdbSnapshotPeriod_ONEHOUR,
        RDBConfig_RdbSnapshotPeriod_SIXHOURS,
        RDBConfig_RdbSnapshotPeriod_TWELVEHOURS,
        RDBConfig_RdbSnapshotPeriod_TWENTYFOURHOURS,
        ..
      ),

    -- * ReconciliationOperationMetadata_ExclusiveAction
    ReconciliationOperationMetadata_ExclusiveAction
      ( ReconciliationOperationMetadata_ExclusiveAction_UNKNOWNREPAIRACTION,
        ReconciliationOperationMetadata_ExclusiveAction_Delete',
        ReconciliationOperationMetadata_ExclusiveAction_Retry,
        ..
      ),

    -- * RescheduleClusterMaintenanceRequest_RescheduleType
    RescheduleClusterMaintenanceRequest_RescheduleType
      ( RescheduleClusterMaintenanceRequest_RescheduleType_RESCHEDULETYPEUNSPECIFIED,
        RescheduleClusterMaintenanceRequest_RescheduleType_Immediate,
        RescheduleClusterMaintenanceRequest_RescheduleType_SPECIFICTIME,
        ..
      ),

    -- * RescheduleMaintenanceRequest_RescheduleType
    RescheduleMaintenanceRequest_RescheduleType
      ( RescheduleMaintenanceRequest_RescheduleType_RESCHEDULETYPEUNSPECIFIED,
        RescheduleMaintenanceRequest_RescheduleType_Immediate,
        RescheduleMaintenanceRequest_RescheduleType_NEXTAVAILABLEWINDOW,
        RescheduleMaintenanceRequest_RescheduleType_SPECIFICTIME,
        ..
      ),

    -- * RetentionSettings_RetentionUnit
    RetentionSettings_RetentionUnit
      ( RetentionSettings_RetentionUnit_RETENTIONUNITUNSPECIFIED,
        RetentionSettings_RetentionUnit_Count,
        RetentionSettings_RetentionUnit_Time,
        RetentionSettings_RetentionUnit_Duration,
        RetentionSettings_RetentionUnit_RETENTIONUNITOTHER,
        ..
      ),

    -- * WeeklyMaintenanceWindow_Day
    WeeklyMaintenanceWindow_Day
      ( WeeklyMaintenanceWindow_Day_DAYOFWEEKUNSPECIFIED,
        WeeklyMaintenanceWindow_Day_Monday,
        WeeklyMaintenanceWindow_Day_Tuesday,
        WeeklyMaintenanceWindow_Day_Wednesday,
        WeeklyMaintenanceWindow_Day_Thursday,
        WeeklyMaintenanceWindow_Day_Friday,
        WeeklyMaintenanceWindow_Day_Saturday,
        WeeklyMaintenanceWindow_Day_Sunday,
        ..
      ),

    -- * ZoneDistributionConfig_Mode
    ZoneDistributionConfig_Mode
      ( ZoneDistributionConfig_Mode_ZONEDISTRIBUTIONMODEUNSPECIFIED,
        ZoneDistributionConfig_Mode_MULTIZONE,
        ZoneDistributionConfig_Mode_SINGLEZONE,
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

-- | Optional. fsync configuration.
newtype AOFConfig_AppendFsync = AOFConfig_AppendFsync {fromAOFConfig_AppendFsync :: Core.Text}
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

-- | Not set. Default: EVERYSEC
pattern AOFConfig_AppendFsync_APPENDFSYNCUNSPECIFIED :: AOFConfig_AppendFsync
pattern AOFConfig_AppendFsync_APPENDFSYNCUNSPECIFIED = AOFConfig_AppendFsync "APPEND_FSYNC_UNSPECIFIED"

-- | Never fsync. Normally Linux will flush data every 30 seconds with this configuration, but it\'s up to the kernel\'s exact tuning.
pattern AOFConfig_AppendFsync_NO :: AOFConfig_AppendFsync
pattern AOFConfig_AppendFsync_NO = AOFConfig_AppendFsync "NO"

-- | fsync every second. Fast enough, and you may lose 1 second of data if there is a disaster
pattern AOFConfig_AppendFsync_Everysec :: AOFConfig_AppendFsync
pattern AOFConfig_AppendFsync_Everysec = AOFConfig_AppendFsync "EVERYSEC"

-- | fsync every time new write commands are appended to the AOF. It has the best data loss protection at the cost of performance
pattern AOFConfig_AppendFsync_Always :: AOFConfig_AppendFsync
pattern AOFConfig_AppendFsync_Always = AOFConfig_AppendFsync "ALWAYS"

{-# COMPLETE
  AOFConfig_AppendFsync_APPENDFSYNCUNSPECIFIED,
  AOFConfig_AppendFsync_NO,
  AOFConfig_AppendFsync_Everysec,
  AOFConfig_AppendFsync_Always,
  AOFConfig_AppendFsync
  #-}

-- | Optional. The automated backup mode. If the mode is disabled, the other fields will be ignored.
newtype AutomatedBackupConfig_AutomatedBackupMode = AutomatedBackupConfig_AutomatedBackupMode {fromAutomatedBackupConfig_AutomatedBackupMode :: Core.Text}
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

-- | Default value. Automated backup config is not specified.
pattern AutomatedBackupConfig_AutomatedBackupMode_AUTOMATEDBACKUPMODEUNSPECIFIED :: AutomatedBackupConfig_AutomatedBackupMode
pattern AutomatedBackupConfig_AutomatedBackupMode_AUTOMATEDBACKUPMODEUNSPECIFIED = AutomatedBackupConfig_AutomatedBackupMode "AUTOMATED_BACKUP_MODE_UNSPECIFIED"

-- | Automated backup config disabled.
pattern AutomatedBackupConfig_AutomatedBackupMode_Disabled :: AutomatedBackupConfig_AutomatedBackupMode
pattern AutomatedBackupConfig_AutomatedBackupMode_Disabled = AutomatedBackupConfig_AutomatedBackupMode "DISABLED"

-- | Automated backup config enabled.
pattern AutomatedBackupConfig_AutomatedBackupMode_Enabled :: AutomatedBackupConfig_AutomatedBackupMode
pattern AutomatedBackupConfig_AutomatedBackupMode_Enabled = AutomatedBackupConfig_AutomatedBackupMode "ENABLED"

{-# COMPLETE
  AutomatedBackupConfig_AutomatedBackupMode_AUTOMATEDBACKUPMODEUNSPECIFIED,
  AutomatedBackupConfig_AutomatedBackupMode_Disabled,
  AutomatedBackupConfig_AutomatedBackupMode_Enabled,
  AutomatedBackupConfig_AutomatedBackupMode
  #-}

-- | Availability type. Potential values: * @ZONAL@: The instance serves data from only one zone. Outages in that zone affect data accessibility. * @REGIONAL@: The instance can serve data from more than one zone in a region (it is highly available).
newtype AvailabilityConfiguration_AvailabilityType = AvailabilityConfiguration_AvailabilityType {fromAvailabilityConfiguration_AvailabilityType :: Core.Text}
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

pattern AvailabilityConfiguration_AvailabilityType_AVAILABILITYTYPEUNSPECIFIED :: AvailabilityConfiguration_AvailabilityType
pattern AvailabilityConfiguration_AvailabilityType_AVAILABILITYTYPEUNSPECIFIED = AvailabilityConfiguration_AvailabilityType "AVAILABILITY_TYPE_UNSPECIFIED"

-- | Zonal available instance.
pattern AvailabilityConfiguration_AvailabilityType_Zonal :: AvailabilityConfiguration_AvailabilityType
pattern AvailabilityConfiguration_AvailabilityType_Zonal = AvailabilityConfiguration_AvailabilityType "ZONAL"

-- | Regional available instance.
pattern AvailabilityConfiguration_AvailabilityType_Regional :: AvailabilityConfiguration_AvailabilityType
pattern AvailabilityConfiguration_AvailabilityType_Regional = AvailabilityConfiguration_AvailabilityType "REGIONAL"

-- | Multi regional instance
pattern AvailabilityConfiguration_AvailabilityType_MULTIREGIONAL :: AvailabilityConfiguration_AvailabilityType
pattern AvailabilityConfiguration_AvailabilityType_MULTIREGIONAL = AvailabilityConfiguration_AvailabilityType "MULTI_REGIONAL"

-- | For rest of the other category
pattern AvailabilityConfiguration_AvailabilityType_AVAILABILITYTYPEOTHER :: AvailabilityConfiguration_AvailabilityType
pattern AvailabilityConfiguration_AvailabilityType_AVAILABILITYTYPEOTHER = AvailabilityConfiguration_AvailabilityType "AVAILABILITY_TYPE_OTHER"

{-# COMPLETE
  AvailabilityConfiguration_AvailabilityType_AVAILABILITYTYPEUNSPECIFIED,
  AvailabilityConfiguration_AvailabilityType_Zonal,
  AvailabilityConfiguration_AvailabilityType_Regional,
  AvailabilityConfiguration_AvailabilityType_MULTIREGIONAL,
  AvailabilityConfiguration_AvailabilityType_AVAILABILITYTYPEOTHER,
  AvailabilityConfiguration_AvailabilityType
  #-}

-- | Output only. Type of the backup.
newtype Backup_BackupType = Backup_BackupType {fromBackup_BackupType :: Core.Text}
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

-- | The default value, not set.
pattern Backup_BackupType_BACKUPTYPEUNSPECIFIED :: Backup_BackupType
pattern Backup_BackupType_BACKUPTYPEUNSPECIFIED = Backup_BackupType "BACKUP_TYPE_UNSPECIFIED"

-- | On-demand backup.
pattern Backup_BackupType_ONDEMAND :: Backup_BackupType
pattern Backup_BackupType_ONDEMAND = Backup_BackupType "ON_DEMAND"

-- | Automated backup.
pattern Backup_BackupType_Automated :: Backup_BackupType
pattern Backup_BackupType_Automated = Backup_BackupType "AUTOMATED"

{-# COMPLETE
  Backup_BackupType_BACKUPTYPEUNSPECIFIED,
  Backup_BackupType_ONDEMAND,
  Backup_BackupType_Automated,
  Backup_BackupType
  #-}

-- | Output only. Node type of the cluster.
newtype Backup_NodeType = Backup_NodeType {fromBackup_NodeType :: Core.Text}
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

-- | Node type unspecified
pattern Backup_NodeType_NODETYPEUNSPECIFIED :: Backup_NodeType
pattern Backup_NodeType_NODETYPEUNSPECIFIED = Backup_NodeType "NODE_TYPE_UNSPECIFIED"

-- | Redis shared core nano node_type.
pattern Backup_NodeType_REDISSHAREDCORENANO :: Backup_NodeType
pattern Backup_NodeType_REDISSHAREDCORENANO = Backup_NodeType "REDIS_SHARED_CORE_NANO"

-- | Redis highmem medium node_type.
pattern Backup_NodeType_REDISHIGHMEMMEDIUM :: Backup_NodeType
pattern Backup_NodeType_REDISHIGHMEMMEDIUM = Backup_NodeType "REDIS_HIGHMEM_MEDIUM"

-- | Redis highmem xlarge node_type.
pattern Backup_NodeType_REDISHIGHMEMXLARGE :: Backup_NodeType
pattern Backup_NodeType_REDISHIGHMEMXLARGE = Backup_NodeType "REDIS_HIGHMEM_XLARGE"

-- | Redis standard small node_type.
pattern Backup_NodeType_REDISSTANDARDSMALL :: Backup_NodeType
pattern Backup_NodeType_REDISSTANDARDSMALL = Backup_NodeType "REDIS_STANDARD_SMALL"

{-# COMPLETE
  Backup_NodeType_NODETYPEUNSPECIFIED,
  Backup_NodeType_REDISSHAREDCORENANO,
  Backup_NodeType_REDISHIGHMEMMEDIUM,
  Backup_NodeType_REDISHIGHMEMXLARGE,
  Backup_NodeType_REDISSTANDARDSMALL,
  Backup_NodeType
  #-}

-- | Output only. State of the backup.
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

-- | The default value, not set.
pattern Backup_State_STATEUNSPECIFIED :: Backup_State
pattern Backup_State_STATEUNSPECIFIED = Backup_State "STATE_UNSPECIFIED"

-- | The backup is being created.
pattern Backup_State_Creating :: Backup_State
pattern Backup_State_Creating = Backup_State "CREATING"

-- | The backup is active to be used.
pattern Backup_State_Active :: Backup_State
pattern Backup_State_Active = Backup_State "ACTIVE"

-- | The backup is being deleted.
pattern Backup_State_Deleting :: Backup_State
pattern Backup_State_Deleting = Backup_State "DELETING"

-- | The backup is currently suspended due to reasons like project deletion, billing account closure, etc.
pattern Backup_State_Suspended :: Backup_State
pattern Backup_State_Suspended = Backup_State "SUSPENDED"

{-# COMPLETE
  Backup_State_STATEUNSPECIFIED,
  Backup_State_Creating,
  Backup_State_Active,
  Backup_State_Deleting,
  Backup_State_Suspended,
  Backup_State
  #-}

-- | The status of this run. REQUIRED
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

pattern BackupRun_Status_STATUSUNSPECIFIED :: BackupRun_Status
pattern BackupRun_Status_STATUSUNSPECIFIED = BackupRun_Status "STATUS_UNSPECIFIED"

-- | The backup was successful.
pattern BackupRun_Status_Successful :: BackupRun_Status
pattern BackupRun_Status_Successful = BackupRun_Status "SUCCESSFUL"

-- | The backup was unsuccessful.
pattern BackupRun_Status_Failed :: BackupRun_Status
pattern BackupRun_Status_Failed = BackupRun_Status "FAILED"

{-# COMPLETE
  BackupRun_Status_STATUSUNSPECIFIED,
  BackupRun_Status_Successful,
  BackupRun_Status_Failed,
  BackupRun_Status
  #-}

-- | Optional. The authorization mode of the Redis cluster. If not provided, auth feature is disabled for the cluster.
newtype Cluster_AuthorizationMode = Cluster_AuthorizationMode {fromCluster_AuthorizationMode :: Core.Text}
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
pattern Cluster_AuthorizationMode_AUTHMODEUNSPECIFIED :: Cluster_AuthorizationMode
pattern Cluster_AuthorizationMode_AUTHMODEUNSPECIFIED = Cluster_AuthorizationMode "AUTH_MODE_UNSPECIFIED"

-- | IAM basic authorization mode
pattern Cluster_AuthorizationMode_AUTHMODEIAMAUTH :: Cluster_AuthorizationMode
pattern Cluster_AuthorizationMode_AUTHMODEIAMAUTH = Cluster_AuthorizationMode "AUTH_MODE_IAM_AUTH"

-- | Authorization disabled mode
pattern Cluster_AuthorizationMode_AUTHMODEDISABLED :: Cluster_AuthorizationMode
pattern Cluster_AuthorizationMode_AUTHMODEDISABLED = Cluster_AuthorizationMode "AUTH_MODE_DISABLED"

{-# COMPLETE
  Cluster_AuthorizationMode_AUTHMODEUNSPECIFIED,
  Cluster_AuthorizationMode_AUTHMODEIAMAUTH,
  Cluster_AuthorizationMode_AUTHMODEDISABLED,
  Cluster_AuthorizationMode
  #-}

-- | Optional. The type of a redis node in the cluster. NodeType determines the underlying machine-type of a redis node.
newtype Cluster_NodeType = Cluster_NodeType {fromCluster_NodeType :: Core.Text}
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

-- | Node type unspecified
pattern Cluster_NodeType_NODETYPEUNSPECIFIED :: Cluster_NodeType
pattern Cluster_NodeType_NODETYPEUNSPECIFIED = Cluster_NodeType "NODE_TYPE_UNSPECIFIED"

-- | Redis shared core nano node_type.
pattern Cluster_NodeType_REDISSHAREDCORENANO :: Cluster_NodeType
pattern Cluster_NodeType_REDISSHAREDCORENANO = Cluster_NodeType "REDIS_SHARED_CORE_NANO"

-- | Redis highmem medium node_type.
pattern Cluster_NodeType_REDISHIGHMEMMEDIUM :: Cluster_NodeType
pattern Cluster_NodeType_REDISHIGHMEMMEDIUM = Cluster_NodeType "REDIS_HIGHMEM_MEDIUM"

-- | Redis highmem xlarge node_type.
pattern Cluster_NodeType_REDISHIGHMEMXLARGE :: Cluster_NodeType
pattern Cluster_NodeType_REDISHIGHMEMXLARGE = Cluster_NodeType "REDIS_HIGHMEM_XLARGE"

-- | Redis standard small node_type.
pattern Cluster_NodeType_REDISSTANDARDSMALL :: Cluster_NodeType
pattern Cluster_NodeType_REDISSTANDARDSMALL = Cluster_NodeType "REDIS_STANDARD_SMALL"

{-# COMPLETE
  Cluster_NodeType_NODETYPEUNSPECIFIED,
  Cluster_NodeType_REDISSHAREDCORENANO,
  Cluster_NodeType_REDISHIGHMEMMEDIUM,
  Cluster_NodeType_REDISHIGHMEMXLARGE,
  Cluster_NodeType_REDISSTANDARDSMALL,
  Cluster_NodeType
  #-}

-- | Output only. The current state of this cluster. Can be CREATING, READY, UPDATING, DELETING and SUSPENDED
newtype Cluster_State = Cluster_State {fromCluster_State :: Core.Text}
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
pattern Cluster_State_STATEUNSPECIFIED :: Cluster_State
pattern Cluster_State_STATEUNSPECIFIED = Cluster_State "STATE_UNSPECIFIED"

-- | Redis cluster is being created.
pattern Cluster_State_Creating :: Cluster_State
pattern Cluster_State_Creating = Cluster_State "CREATING"

-- | Redis cluster has been created and is fully usable.
pattern Cluster_State_Active :: Cluster_State
pattern Cluster_State_Active = Cluster_State "ACTIVE"

-- | Redis cluster configuration is being updated.
pattern Cluster_State_Updating :: Cluster_State
pattern Cluster_State_Updating = Cluster_State "UPDATING"

-- | Redis cluster is being deleted.
pattern Cluster_State_Deleting :: Cluster_State
pattern Cluster_State_Deleting = Cluster_State "DELETING"

{-# COMPLETE
  Cluster_State_STATEUNSPECIFIED,
  Cluster_State_Creating,
  Cluster_State_Active,
  Cluster_State_Updating,
  Cluster_State_Deleting,
  Cluster_State
  #-}

-- | Optional. The in-transit encryption for the Redis cluster. If not provided, encryption is disabled for the cluster.
newtype Cluster_TransitEncryptionMode = Cluster_TransitEncryptionMode {fromCluster_TransitEncryptionMode :: Core.Text}
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

-- | In-transit encryption not set.
pattern Cluster_TransitEncryptionMode_TRANSITENCRYPTIONMODEUNSPECIFIED :: Cluster_TransitEncryptionMode
pattern Cluster_TransitEncryptionMode_TRANSITENCRYPTIONMODEUNSPECIFIED = Cluster_TransitEncryptionMode "TRANSIT_ENCRYPTION_MODE_UNSPECIFIED"

-- | In-transit encryption disabled.
pattern Cluster_TransitEncryptionMode_TRANSITENCRYPTIONMODEDISABLED :: Cluster_TransitEncryptionMode
pattern Cluster_TransitEncryptionMode_TRANSITENCRYPTIONMODEDISABLED = Cluster_TransitEncryptionMode "TRANSIT_ENCRYPTION_MODE_DISABLED"

-- | Use server managed encryption for in-transit encryption.
pattern Cluster_TransitEncryptionMode_TRANSITENCRYPTIONMODESERVERAUTHENTICATION :: Cluster_TransitEncryptionMode
pattern Cluster_TransitEncryptionMode_TRANSITENCRYPTIONMODESERVERAUTHENTICATION = Cluster_TransitEncryptionMode "TRANSIT_ENCRYPTION_MODE_SERVER_AUTHENTICATION"

{-# COMPLETE
  Cluster_TransitEncryptionMode_TRANSITENCRYPTIONMODEUNSPECIFIED,
  Cluster_TransitEncryptionMode_TRANSITENCRYPTIONMODEDISABLED,
  Cluster_TransitEncryptionMode_TRANSITENCRYPTIONMODESERVERAUTHENTICATION,
  Cluster_TransitEncryptionMode
  #-}

-- | Optional. The mode of persistence.
newtype ClusterPersistenceConfig_Mode = ClusterPersistenceConfig_Mode {fromClusterPersistenceConfig_Mode :: Core.Text}
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
pattern ClusterPersistenceConfig_Mode_PERSISTENCEMODEUNSPECIFIED :: ClusterPersistenceConfig_Mode
pattern ClusterPersistenceConfig_Mode_PERSISTENCEMODEUNSPECIFIED = ClusterPersistenceConfig_Mode "PERSISTENCE_MODE_UNSPECIFIED"

-- | Persistence is disabled, and any snapshot data is deleted.
pattern ClusterPersistenceConfig_Mode_Disabled :: ClusterPersistenceConfig_Mode
pattern ClusterPersistenceConfig_Mode_Disabled = ClusterPersistenceConfig_Mode "DISABLED"

-- | RDB based persistence is enabled.
pattern ClusterPersistenceConfig_Mode_Rdb :: ClusterPersistenceConfig_Mode
pattern ClusterPersistenceConfig_Mode_Rdb = ClusterPersistenceConfig_Mode "RDB"

-- | AOF based persistence is enabled.
pattern ClusterPersistenceConfig_Mode_Aof :: ClusterPersistenceConfig_Mode
pattern ClusterPersistenceConfig_Mode_Aof = ClusterPersistenceConfig_Mode "AOF"

{-# COMPLETE
  ClusterPersistenceConfig_Mode_PERSISTENCEMODEUNSPECIFIED,
  ClusterPersistenceConfig_Mode_Disabled,
  ClusterPersistenceConfig_Mode_Rdb,
  ClusterPersistenceConfig_Mode_Aof,
  ClusterPersistenceConfig_Mode
  #-}

-- | Allows to define schedule that runs specified day of the week.
newtype ClusterWeeklyMaintenanceWindow_Day = ClusterWeeklyMaintenanceWindow_Day {fromClusterWeeklyMaintenanceWindow_Day :: Core.Text}
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
pattern ClusterWeeklyMaintenanceWindow_Day_DAYOFWEEKUNSPECIFIED :: ClusterWeeklyMaintenanceWindow_Day
pattern ClusterWeeklyMaintenanceWindow_Day_DAYOFWEEKUNSPECIFIED = ClusterWeeklyMaintenanceWindow_Day "DAY_OF_WEEK_UNSPECIFIED"

-- | Monday
pattern ClusterWeeklyMaintenanceWindow_Day_Monday :: ClusterWeeklyMaintenanceWindow_Day
pattern ClusterWeeklyMaintenanceWindow_Day_Monday = ClusterWeeklyMaintenanceWindow_Day "MONDAY"

-- | Tuesday
pattern ClusterWeeklyMaintenanceWindow_Day_Tuesday :: ClusterWeeklyMaintenanceWindow_Day
pattern ClusterWeeklyMaintenanceWindow_Day_Tuesday = ClusterWeeklyMaintenanceWindow_Day "TUESDAY"

-- | Wednesday
pattern ClusterWeeklyMaintenanceWindow_Day_Wednesday :: ClusterWeeklyMaintenanceWindow_Day
pattern ClusterWeeklyMaintenanceWindow_Day_Wednesday = ClusterWeeklyMaintenanceWindow_Day "WEDNESDAY"

-- | Thursday
pattern ClusterWeeklyMaintenanceWindow_Day_Thursday :: ClusterWeeklyMaintenanceWindow_Day
pattern ClusterWeeklyMaintenanceWindow_Day_Thursday = ClusterWeeklyMaintenanceWindow_Day "THURSDAY"

-- | Friday
pattern ClusterWeeklyMaintenanceWindow_Day_Friday :: ClusterWeeklyMaintenanceWindow_Day
pattern ClusterWeeklyMaintenanceWindow_Day_Friday = ClusterWeeklyMaintenanceWindow_Day "FRIDAY"

-- | Saturday
pattern ClusterWeeklyMaintenanceWindow_Day_Saturday :: ClusterWeeklyMaintenanceWindow_Day
pattern ClusterWeeklyMaintenanceWindow_Day_Saturday = ClusterWeeklyMaintenanceWindow_Day "SATURDAY"

-- | Sunday
pattern ClusterWeeklyMaintenanceWindow_Day_Sunday :: ClusterWeeklyMaintenanceWindow_Day
pattern ClusterWeeklyMaintenanceWindow_Day_Sunday = ClusterWeeklyMaintenanceWindow_Day "SUNDAY"

{-# COMPLETE
  ClusterWeeklyMaintenanceWindow_Day_DAYOFWEEKUNSPECIFIED,
  ClusterWeeklyMaintenanceWindow_Day_Monday,
  ClusterWeeklyMaintenanceWindow_Day_Tuesday,
  ClusterWeeklyMaintenanceWindow_Day_Wednesday,
  ClusterWeeklyMaintenanceWindow_Day_Thursday,
  ClusterWeeklyMaintenanceWindow_Day_Friday,
  ClusterWeeklyMaintenanceWindow_Day_Saturday,
  ClusterWeeklyMaintenanceWindow_Day_Sunday,
  ClusterWeeklyMaintenanceWindow_Day
  #-}

-- | The role of the cluster in cross cluster replication.
newtype CrossClusterReplicationConfig_ClusterRole = CrossClusterReplicationConfig_ClusterRole {fromCrossClusterReplicationConfig_ClusterRole :: Core.Text}
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

-- | Cluster role is not set. The behavior is equivalent to NONE.
pattern CrossClusterReplicationConfig_ClusterRole_CLUSTERROLEUNSPECIFIED :: CrossClusterReplicationConfig_ClusterRole
pattern CrossClusterReplicationConfig_ClusterRole_CLUSTERROLEUNSPECIFIED = CrossClusterReplicationConfig_ClusterRole "CLUSTER_ROLE_UNSPECIFIED"

-- | This cluster does not participate in cross cluster replication. It is an independent cluster and does not replicate to or from any other clusters.
pattern CrossClusterReplicationConfig_ClusterRole_None :: CrossClusterReplicationConfig_ClusterRole
pattern CrossClusterReplicationConfig_ClusterRole_None = CrossClusterReplicationConfig_ClusterRole "NONE"

-- | A cluster that allows both reads and writes. Any data written to this cluster is also replicated to the attached secondary clusters.
pattern CrossClusterReplicationConfig_ClusterRole_Primary :: CrossClusterReplicationConfig_ClusterRole
pattern CrossClusterReplicationConfig_ClusterRole_Primary = CrossClusterReplicationConfig_ClusterRole "PRIMARY"

-- | A cluster that allows only reads and replicates data from a primary cluster.
pattern CrossClusterReplicationConfig_ClusterRole_Secondary :: CrossClusterReplicationConfig_ClusterRole
pattern CrossClusterReplicationConfig_ClusterRole_Secondary = CrossClusterReplicationConfig_ClusterRole "SECONDARY"

{-# COMPLETE
  CrossClusterReplicationConfig_ClusterRole_CLUSTERROLEUNSPECIFIED,
  CrossClusterReplicationConfig_ClusterRole_None,
  CrossClusterReplicationConfig_ClusterRole_Primary,
  CrossClusterReplicationConfig_ClusterRole_Secondary,
  CrossClusterReplicationConfig_ClusterRole
  #-}

-- | Required. Type feed to be ingested into condor
newtype DatabaseResourceFeed_FeedType = DatabaseResourceFeed_FeedType {fromDatabaseResourceFeed_FeedType :: Core.Text}
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

pattern DatabaseResourceFeed_FeedType_FEEDTYPEUNSPECIFIED :: DatabaseResourceFeed_FeedType
pattern DatabaseResourceFeed_FeedType_FEEDTYPEUNSPECIFIED = DatabaseResourceFeed_FeedType "FEEDTYPE_UNSPECIFIED"

-- | Database resource metadata feed from control plane
pattern DatabaseResourceFeed_FeedType_RESOURCEMETADATA :: DatabaseResourceFeed_FeedType
pattern DatabaseResourceFeed_FeedType_RESOURCEMETADATA = DatabaseResourceFeed_FeedType "RESOURCE_METADATA"

-- | Database resource monitoring data
pattern DatabaseResourceFeed_FeedType_OBSERVABILITYDATA :: DatabaseResourceFeed_FeedType
pattern DatabaseResourceFeed_FeedType_OBSERVABILITYDATA = DatabaseResourceFeed_FeedType "OBSERVABILITY_DATA"

-- | Database resource security health signal data
pattern DatabaseResourceFeed_FeedType_SECURITYFINDINGDATA :: DatabaseResourceFeed_FeedType
pattern DatabaseResourceFeed_FeedType_SECURITYFINDINGDATA = DatabaseResourceFeed_FeedType "SECURITY_FINDING_DATA"

-- | Database resource recommendation signal data
pattern DatabaseResourceFeed_FeedType_RECOMMENDATIONSIGNALDATA :: DatabaseResourceFeed_FeedType
pattern DatabaseResourceFeed_FeedType_RECOMMENDATIONSIGNALDATA = DatabaseResourceFeed_FeedType "RECOMMENDATION_SIGNAL_DATA"

{-# COMPLETE
  DatabaseResourceFeed_FeedType_FEEDTYPEUNSPECIFIED,
  DatabaseResourceFeed_FeedType_RESOURCEMETADATA,
  DatabaseResourceFeed_FeedType_OBSERVABILITYDATA,
  DatabaseResourceFeed_FeedType_SECURITYFINDINGDATA,
  DatabaseResourceFeed_FeedType_RECOMMENDATIONSIGNALDATA,
  DatabaseResourceFeed_FeedType
  #-}

-- | Cloud provider name. Ex: GCP\/AWS\/Azure\/OnPrem\/SelfManaged
newtype DatabaseResourceHealthSignalData_Provider = DatabaseResourceHealthSignalData_Provider {fromDatabaseResourceHealthSignalData_Provider :: Core.Text}
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

pattern DatabaseResourceHealthSignalData_Provider_PROVIDERUNSPECIFIED :: DatabaseResourceHealthSignalData_Provider
pattern DatabaseResourceHealthSignalData_Provider_PROVIDERUNSPECIFIED = DatabaseResourceHealthSignalData_Provider "PROVIDER_UNSPECIFIED"

-- | Google cloud platform provider
pattern DatabaseResourceHealthSignalData_Provider_Gcp :: DatabaseResourceHealthSignalData_Provider
pattern DatabaseResourceHealthSignalData_Provider_Gcp = DatabaseResourceHealthSignalData_Provider "GCP"

-- | Amazon web service
pattern DatabaseResourceHealthSignalData_Provider_Aws :: DatabaseResourceHealthSignalData_Provider
pattern DatabaseResourceHealthSignalData_Provider_Aws = DatabaseResourceHealthSignalData_Provider "AWS"

-- | Azure web service
pattern DatabaseResourceHealthSignalData_Provider_Azure :: DatabaseResourceHealthSignalData_Provider
pattern DatabaseResourceHealthSignalData_Provider_Azure = DatabaseResourceHealthSignalData_Provider "AZURE"

-- | On-prem database resources.
pattern DatabaseResourceHealthSignalData_Provider_Onprem :: DatabaseResourceHealthSignalData_Provider
pattern DatabaseResourceHealthSignalData_Provider_Onprem = DatabaseResourceHealthSignalData_Provider "ONPREM"

-- | Self-managed database provider. These are resources on a cloud platform, e.g., database resource installed in a GCE VM, but not a managed database service.
pattern DatabaseResourceHealthSignalData_Provider_Selfmanaged :: DatabaseResourceHealthSignalData_Provider
pattern DatabaseResourceHealthSignalData_Provider_Selfmanaged = DatabaseResourceHealthSignalData_Provider "SELFMANAGED"

-- | For the rest of the other categories. Other refers to the rest of other database service providers, this could be smaller cloud provider. This needs to be provided when the provider is known, but it is not present in the existing set of enum values.
pattern DatabaseResourceHealthSignalData_Provider_PROVIDEROTHER :: DatabaseResourceHealthSignalData_Provider
pattern DatabaseResourceHealthSignalData_Provider_PROVIDEROTHER = DatabaseResourceHealthSignalData_Provider "PROVIDER_OTHER"

{-# COMPLETE
  DatabaseResourceHealthSignalData_Provider_PROVIDERUNSPECIFIED,
  DatabaseResourceHealthSignalData_Provider_Gcp,
  DatabaseResourceHealthSignalData_Provider_Aws,
  DatabaseResourceHealthSignalData_Provider_Azure,
  DatabaseResourceHealthSignalData_Provider_Onprem,
  DatabaseResourceHealthSignalData_Provider_Selfmanaged,
  DatabaseResourceHealthSignalData_Provider_PROVIDEROTHER,
  DatabaseResourceHealthSignalData_Provider
  #-}

-- | Required. The class of the signal, such as if it\'s a THREAT or VULNERABILITY.
newtype DatabaseResourceHealthSignalData_SignalClass = DatabaseResourceHealthSignalData_SignalClass {fromDatabaseResourceHealthSignalData_SignalClass :: Core.Text}
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

-- | Unspecified signal class.
pattern DatabaseResourceHealthSignalData_SignalClass_CLASSUNSPECIFIED :: DatabaseResourceHealthSignalData_SignalClass
pattern DatabaseResourceHealthSignalData_SignalClass_CLASSUNSPECIFIED = DatabaseResourceHealthSignalData_SignalClass "CLASS_UNSPECIFIED"

-- | Describes unwanted or malicious activity.
pattern DatabaseResourceHealthSignalData_SignalClass_Threat :: DatabaseResourceHealthSignalData_SignalClass
pattern DatabaseResourceHealthSignalData_SignalClass_Threat = DatabaseResourceHealthSignalData_SignalClass "THREAT"

-- | Describes a potential weakness in software that increases risk to Confidentiality & Integrity & Availability.
pattern DatabaseResourceHealthSignalData_SignalClass_Vulnerability :: DatabaseResourceHealthSignalData_SignalClass
pattern DatabaseResourceHealthSignalData_SignalClass_Vulnerability = DatabaseResourceHealthSignalData_SignalClass "VULNERABILITY"

-- | Describes a potential weakness in cloud resource\/asset configuration that increases risk.
pattern DatabaseResourceHealthSignalData_SignalClass_Misconfiguration :: DatabaseResourceHealthSignalData_SignalClass
pattern DatabaseResourceHealthSignalData_SignalClass_Misconfiguration = DatabaseResourceHealthSignalData_SignalClass "MISCONFIGURATION"

-- | Describes a security observation that is for informational purposes.
pattern DatabaseResourceHealthSignalData_SignalClass_Observation :: DatabaseResourceHealthSignalData_SignalClass
pattern DatabaseResourceHealthSignalData_SignalClass_Observation = DatabaseResourceHealthSignalData_SignalClass "OBSERVATION"

-- | Describes an error that prevents some SCC functionality.
pattern DatabaseResourceHealthSignalData_SignalClass_Error' :: DatabaseResourceHealthSignalData_SignalClass
pattern DatabaseResourceHealthSignalData_SignalClass_Error' = DatabaseResourceHealthSignalData_SignalClass "ERROR"

{-# COMPLETE
  DatabaseResourceHealthSignalData_SignalClass_CLASSUNSPECIFIED,
  DatabaseResourceHealthSignalData_SignalClass_Threat,
  DatabaseResourceHealthSignalData_SignalClass_Vulnerability,
  DatabaseResourceHealthSignalData_SignalClass_Misconfiguration,
  DatabaseResourceHealthSignalData_SignalClass_Observation,
  DatabaseResourceHealthSignalData_SignalClass_Error',
  DatabaseResourceHealthSignalData_SignalClass
  #-}

-- | The severity of the signal, such as if it\'s a HIGH or LOW severity.
newtype DatabaseResourceHealthSignalData_SignalSeverity = DatabaseResourceHealthSignalData_SignalSeverity {fromDatabaseResourceHealthSignalData_SignalSeverity :: Core.Text}
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

-- | This value is used for findings when a source doesn\'t write a severity value.
pattern DatabaseResourceHealthSignalData_SignalSeverity_SIGNALSEVERITYUNSPECIFIED :: DatabaseResourceHealthSignalData_SignalSeverity
pattern DatabaseResourceHealthSignalData_SignalSeverity_SIGNALSEVERITYUNSPECIFIED = DatabaseResourceHealthSignalData_SignalSeverity "SIGNAL_SEVERITY_UNSPECIFIED"

-- | A critical vulnerability is easily discoverable by an external actor, exploitable.
pattern DatabaseResourceHealthSignalData_SignalSeverity_Critical :: DatabaseResourceHealthSignalData_SignalSeverity
pattern DatabaseResourceHealthSignalData_SignalSeverity_Critical = DatabaseResourceHealthSignalData_SignalSeverity "CRITICAL"

-- | A high risk vulnerability can be easily discovered and exploited in combination with other vulnerabilities.
pattern DatabaseResourceHealthSignalData_SignalSeverity_High :: DatabaseResourceHealthSignalData_SignalSeverity
pattern DatabaseResourceHealthSignalData_SignalSeverity_High = DatabaseResourceHealthSignalData_SignalSeverity "HIGH"

-- | A medium risk vulnerability could be used by an actor to gain access to resources or privileges that enable them to eventually gain access and the ability to execute arbitrary code or exfiltrate data.
pattern DatabaseResourceHealthSignalData_SignalSeverity_Medium :: DatabaseResourceHealthSignalData_SignalSeverity
pattern DatabaseResourceHealthSignalData_SignalSeverity_Medium = DatabaseResourceHealthSignalData_SignalSeverity "MEDIUM"

-- | A low risk vulnerability hampers a security organization\'s ability to detect vulnerabilities or active threats in their deployment.
pattern DatabaseResourceHealthSignalData_SignalSeverity_Low :: DatabaseResourceHealthSignalData_SignalSeverity
pattern DatabaseResourceHealthSignalData_SignalSeverity_Low = DatabaseResourceHealthSignalData_SignalSeverity "LOW"

{-# COMPLETE
  DatabaseResourceHealthSignalData_SignalSeverity_SIGNALSEVERITYUNSPECIFIED,
  DatabaseResourceHealthSignalData_SignalSeverity_Critical,
  DatabaseResourceHealthSignalData_SignalSeverity_High,
  DatabaseResourceHealthSignalData_SignalSeverity_Medium,
  DatabaseResourceHealthSignalData_SignalSeverity_Low,
  DatabaseResourceHealthSignalData_SignalSeverity
  #-}

-- | Required. Type of signal, for example, @AVAILABLE_IN_MULTIPLE_ZONES@, @LOGGING_MOST_ERRORS@, etc.
newtype DatabaseResourceHealthSignalData_SignalType = DatabaseResourceHealthSignalData_SignalType {fromDatabaseResourceHealthSignalData_SignalType :: Core.Text}
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
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEUNSPECIFIED :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEUNSPECIFIED = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_UNSPECIFIED"

-- | Represents if a resource is protected by automatic failover. Checks for resources that are configured to have redundancy within a region that enables automatic failover.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPENOTPROTECTEDBYAUTOMATICFAILOVER :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPENOTPROTECTEDBYAUTOMATICFAILOVER = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_NOT_PROTECTED_BY_AUTOMATIC_FAILOVER"

-- | Represents if a group is replicating across regions. Checks for resources that are configured to have redundancy, and ongoing replication, across regions.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEGROUPNOTREPLICATINGACROSSREGIONS :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEGROUPNOTREPLICATINGACROSSREGIONS = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_GROUP_NOT_REPLICATING_ACROSS_REGIONS"

-- | Represents if the resource is available in multiple zones or not.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPENOTAVAILABLEINMULTIPLEZONES :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPENOTAVAILABLEINMULTIPLEZONES = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_NOT_AVAILABLE_IN_MULTIPLE_ZONES"

-- | Represents if a resource is available in multiple regions.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPENOTAVAILABLEINMULTIPLEREGIONS :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPENOTAVAILABLEINMULTIPLEREGIONS = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_NOT_AVAILABLE_IN_MULTIPLE_REGIONS"

-- | Represents if a resource has a promotable replica.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPENOPROMOTABLEREPLICA :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPENOPROMOTABLEREPLICA = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_NO_PROMOTABLE_REPLICA"

-- | Represents if a resource has an automated backup policy.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPENOAUTOMATEDBACKUPPOLICY :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPENOAUTOMATEDBACKUPPOLICY = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_NO_AUTOMATED_BACKUP_POLICY"

-- | Represents if a resources has a short backup retention period.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPESHORTBACKUPRETENTION :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPESHORTBACKUPRETENTION = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_SHORT_BACKUP_RETENTION"

-- | Represents if the last backup of a resource failed.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPELASTBACKUPFAILED :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPELASTBACKUPFAILED = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_LAST_BACKUP_FAILED"

-- | Represents if the last backup of a resource is older than some threshold value.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPELASTBACKUPOLD :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPELASTBACKUPOLD = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_LAST_BACKUP_OLD"

-- | Represents if a resource violates CIS GCP Foundation 2.0.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_2_0 :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_2_0 = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_2_0"

-- | Represents if a resource violates CIS GCP Foundation 1.3.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_3 :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_3 = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_3"

-- | Represents if a resource violates CIS GCP Foundation 1.2.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_2 :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_2 = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_2"

-- | Represents if a resource violates CIS GCP Foundation 1.1.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_1 :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_1 = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_1"

-- | Represents if a resource violates CIS GCP Foundation 1.0.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_0 :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_0 = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_0"

-- | Represents if a resource violates CIS Controls 8.0.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_CONTROLS_V8_0 :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_CONTROLS_V8_0 = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_VIOLATES_CIS_CONTROLS_V8_0"

-- | Represents if a resource violates NIST 800-53.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_NIST_800_53 :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_NIST_800_53 = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_VIOLATES_NIST_800_53"

-- | Represents if a resource violates NIST 800-53 R5.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_NIST_800_53_R5 :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_NIST_800_53_R5 = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_VIOLATES_NIST_800_53_R5"

-- | Represents if a resource violates NIST Cybersecurity Framework 1.0.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_NIST_CYBERSECURITY_FRAMEWORK_V1_0 :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_NIST_CYBERSECURITY_FRAMEWORK_V1_0 = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_VIOLATES_NIST_CYBERSECURITY_FRAMEWORK_V1_0"

-- | Represents if a resource violates ISO-27001.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_ISO_27001 :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_ISO_27001 = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_VIOLATES_ISO_27001"

-- | Represents if a resource violates ISO 27001 2022.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_ISO_27001_V2022 :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_ISO_27001_V2022 = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_VIOLATES_ISO_27001_V2022"

-- | Represents if a resource violates PCI-DSS v3.2.1.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_PCI_DSS_V3_2_1 :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_PCI_DSS_V3_2_1 = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_VIOLATES_PCI_DSS_V3_2_1"

-- | Represents if a resource violates PCI-DSS v4.0.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_PCI_DSS_V4_0 :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_PCI_DSS_V4_0 = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_VIOLATES_PCI_DSS_V4_0"

-- | Represents if a resource violates Cloud Controls Matrix v4.0.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CLOUD_CONTROLS_MATRIX_V4 :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CLOUD_CONTROLS_MATRIX_V4 = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_VIOLATES_CLOUD_CONTROLS_MATRIX_V4"

-- | Represents if a resource violates HIPAA.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEVIOLATESHIPAA :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEVIOLATESHIPAA = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_VIOLATES_HIPAA"

-- | Represents if a resource violates SOC2 v2017.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_SOC2_V2017 :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_SOC2_V2017 = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_VIOLATES_SOC2_V2017"

-- | Represents if log_checkpoints database flag for a Cloud SQL for PostgreSQL instance is not set to on.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPELOGSNOTOPTIMIZEDFORTROUBLESHOOTING :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPELOGSNOTOPTIMIZEDFORTROUBLESHOOTING = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_LOGS_NOT_OPTIMIZED_FOR_TROUBLESHOOTING"

-- | Represents if the log_duration database flag for a Cloud SQL for PostgreSQL instance is not set to on.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEQUERYDURATIONSNOTLOGGED :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEQUERYDURATIONSNOTLOGGED = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_QUERY_DURATIONS_NOT_LOGGED"

-- | Represents if the log/error/verbosity database flag for a Cloud SQL for PostgreSQL instance is not set to default or stricter (default or terse).
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEVERBOSEERRORLOGGING :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEVERBOSEERRORLOGGING = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_VERBOSE_ERROR_LOGGING"

-- | Represents if the log/lock/waits database flag for a Cloud SQL for PostgreSQL instance is not set to on.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEQUERYLOCKWAITSNOTLOGGED :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEQUERYLOCKWAITSNOTLOGGED = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_QUERY_LOCK_WAITS_NOT_LOGGED"

-- | Represents if the log/min/error_statement database flag for a Cloud SQL for PostgreSQL instance is not set appropriately.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPELOGGINGMOSTERRORS :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPELOGGINGMOSTERRORS = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_LOGGING_MOST_ERRORS"

-- | Represents if the log/min/error_statement database flag for a Cloud SQL for PostgreSQL instance does not have an appropriate severity level.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPELOGGINGONLYCRITICALERRORS :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPELOGGINGONLYCRITICALERRORS = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_LOGGING_ONLY_CRITICAL_ERRORS"

-- | Represents if the log/min/messages database flag for a Cloud SQL for PostgreSQL instance is not set to warning or another recommended value.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEMINIMALERRORLOGGING :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEMINIMALERRORLOGGING = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_MINIMAL_ERROR_LOGGING"

-- | Represents if the databaseFlags property of instance metadata for the log/executor/status field is set to on.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEQUERYSTATISTICSLOGGED :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEQUERYSTATISTICSLOGGED = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_QUERY_STATISTICS_LOGGED"

-- | Represents if the log_hostname database flag for a Cloud SQL for PostgreSQL instance is not set to off.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEEXCESSIVELOGGINGOFCLIENTHOSTNAME :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEEXCESSIVELOGGINGOFCLIENTHOSTNAME = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_EXCESSIVE_LOGGING_OF_CLIENT_HOSTNAME"

-- | Represents if the log/parser/stats database flag for a Cloud SQL for PostgreSQL instance is not set to off.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEEXCESSIVELOGGINGOFPARSERSTATISTICS :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEEXCESSIVELOGGINGOFPARSERSTATISTICS = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_EXCESSIVE_LOGGING_OF_PARSER_STATISTICS"

-- | Represents if the log/planner/stats database flag for a Cloud SQL for PostgreSQL instance is not set to off.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEEXCESSIVELOGGINGOFPLANNERSTATISTICS :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEEXCESSIVELOGGINGOFPLANNERSTATISTICS = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_EXCESSIVE_LOGGING_OF_PLANNER_STATISTICS"

-- | Represents if the log_statement database flag for a Cloud SQL for PostgreSQL instance is not set to DDL (all data definition statements).
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPENOTLOGGINGONLYDDLSTATEMENTS :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPENOTLOGGINGONLYDDLSTATEMENTS = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_NOT_LOGGING_ONLY_DDL_STATEMENTS"

-- | Represents if the log/statement/stats database flag for a Cloud SQL for PostgreSQL instance is not set to off.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPELOGGINGQUERYSTATISTICS :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPELOGGINGQUERYSTATISTICS = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_LOGGING_QUERY_STATISTICS"

-- | Represents if the log/temp/files database flag for a Cloud SQL for PostgreSQL instance is not set to \"0\". (NOTE: 0 = ON)
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPENOTLOGGINGTEMPORARYFILES :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPENOTLOGGINGTEMPORARYFILES = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_NOT_LOGGING_TEMPORARY_FILES"

-- | Represents if the user connections database flag for a Cloud SQL for SQL Server instance is configured.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPECONNECTIONMAXNOTCONFIGURED :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPECONNECTIONMAXNOTCONFIGURED = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_CONNECTION_MAX_NOT_CONFIGURED"

-- | Represents if the user options database flag for Cloud SQL SQL Server instance is configured or not.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEUSEROPTIONSCONFIGURED :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEUSEROPTIONSCONFIGURED = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_USER_OPTIONS_CONFIGURED"

-- | Represents if a resource is exposed to public access.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEEXPOSEDTOPUBLICACCESS :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEEXPOSEDTOPUBLICACCESS = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_EXPOSED_TO_PUBLIC_ACCESS"

-- | Represents if a resources requires all incoming connections to use SSL or not.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEUNENCRYPTEDCONNECTIONS :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEUNENCRYPTEDCONNECTIONS = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_UNENCRYPTED_CONNECTIONS"

-- | Represents if a Cloud SQL database has a password configured for the root account or not.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPENOROOTPASSWORD :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPENOROOTPASSWORD = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_NO_ROOT_PASSWORD"

-- | Represents if a Cloud SQL database has a weak password configured for the root account.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEWEAKROOTPASSWORD :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEWEAKROOTPASSWORD = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_WEAK_ROOT_PASSWORD"

-- | Represents if a SQL database instance is not encrypted with customer-managed encryption keys (CMEK).
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEENCRYPTIONKEYNOTCUSTOMERMANAGED :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEENCRYPTIONKEYNOTCUSTOMERMANAGED = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_ENCRYPTION_KEY_NOT_CUSTOMER_MANAGED"

-- | Represents if The contained database authentication database flag for a Cloud SQL for SQL Server instance is not set to off.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPESERVERAUTHENTICATIONNOTREQUIRED :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPESERVERAUTHENTICATIONNOTREQUIRED = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_SERVER_AUTHENTICATION_NOT_REQUIRED"

-- | Represents if the cross/db/ownership_chaining database flag for a Cloud SQL for SQL Server instance is not set to off.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEEXPOSEDBYOWNERSHIPCHAINING :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEEXPOSEDBYOWNERSHIPCHAINING = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_EXPOSED_BY_OWNERSHIP_CHAINING"

-- | Represents if he external scripts enabled database flag for a Cloud SQL for SQL Server instance is not set to off.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEEXPOSEDTOEXTERNALSCRIPTS :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEEXPOSEDTOEXTERNALSCRIPTS = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_EXPOSED_TO_EXTERNAL_SCRIPTS"

-- | Represents if the local_infile database flag for a Cloud SQL for MySQL instance is not set to off.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEEXPOSEDTOLOCALDATALOADS :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEEXPOSEDTOLOCALDATALOADS = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_EXPOSED_TO_LOCAL_DATA_LOADS"

-- | Represents if the log_connections database flag for a Cloud SQL for PostgreSQL instance is not set to on.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPECONNECTIONATTEMPTSNOTLOGGED :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPECONNECTIONATTEMPTSNOTLOGGED = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_CONNECTION_ATTEMPTS_NOT_LOGGED"

-- | Represents if the log_disconnections database flag for a Cloud SQL for PostgreSQL instance is not set to on.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEDISCONNECTIONSNOTLOGGED :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEDISCONNECTIONSNOTLOGGED = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_DISCONNECTIONS_NOT_LOGGED"

-- | Represents if the log/min/duration_statement database flag for a Cloud SQL for PostgreSQL instance is not set to -1.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPELOGGINGEXCESSIVESTATEMENTINFO :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPELOGGINGEXCESSIVESTATEMENTINFO = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_LOGGING_EXCESSIVE_STATEMENT_INFO"

-- | Represents if the remote access database flag for a Cloud SQL for SQL Server instance is not set to off.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEEXPOSEDTOREMOTEACCESS :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEEXPOSEDTOREMOTEACCESS = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_EXPOSED_TO_REMOTE_ACCESS"

-- | Represents if the skip/show/database database flag for a Cloud SQL for MySQL instance is not set to on.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEDATABASENAMESEXPOSED :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEDATABASENAMESEXPOSED = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_DATABASE_NAMES_EXPOSED"

-- | Represents if the 3625 (trace flag) database flag for a Cloud SQL for SQL Server instance is not set to on.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPESENSITIVETRACEINFONOTMASKED :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPESENSITIVETRACEINFONOTMASKED = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_SENSITIVE_TRACE_INFO_NOT_MASKED"

-- | Represents if public IP is enabled.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEPUBLICIPENABLED :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEPUBLICIPENABLED = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_PUBLIC_IP_ENABLED"

-- | Represents Idle instance helps to reduce costs.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEIDLE :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEIDLE = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_IDLE"

-- | Represents instances that are unnecessarily large for given workload.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEOVERPROVISIONED :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEOVERPROVISIONED = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_OVERPROVISIONED"

-- | Represents high number of concurrently opened tables.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEHIGHNUMBEROFOPENTABLES :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEHIGHNUMBEROFOPENTABLES = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_HIGH_NUMBER_OF_OPEN_TABLES"

-- | Represents high table count close to SLA limit.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEHIGHNUMBEROFTABLES :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEHIGHNUMBEROFTABLES = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_HIGH_NUMBER_OF_TABLES"

-- | Represents high number of unvacuumed transactions
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEHIGHTRANSACTIONIDUTILIZATION :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEHIGHTRANSACTIONIDUTILIZATION = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_HIGH_TRANSACTION_ID_UTILIZATION"

-- | Represents need for more CPU and\/or memory
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEUNDERPROVISIONED :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEUNDERPROVISIONED = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_UNDERPROVISIONED"

-- | Represents out of disk.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEOUTOFDISK :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEOUTOFDISK = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_OUT_OF_DISK"

-- | Represents server certificate is near expiry.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPESERVERCERTIFICATENEAREXPIRY :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPESERVERCERTIFICATENEAREXPIRY = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_SERVER_CERTIFICATE_NEAR_EXPIRY"

-- | Represents database auditing is disabled.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEDATABASEAUDITINGDISABLED :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEDATABASEAUDITINGDISABLED = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_DATABASE_AUDITING_DISABLED"

-- | Represents not restricted to authorized networks.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPERESTRICTAUTHORIZEDNETWORKS :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPERESTRICTAUTHORIZEDNETWORKS = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_RESTRICT_AUTHORIZED_NETWORKS"

-- | Represents violate org policy restrict public ip.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEVIOLATEPOLICYRESTRICTPUBLICIP :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEVIOLATEPOLICYRESTRICTPUBLICIP = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_VIOLATE_POLICY_RESTRICT_PUBLIC_IP"

-- | Cluster nearing quota limit
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEQUOTALIMIT :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEQUOTALIMIT = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_QUOTA_LIMIT"

-- | No password policy set on resources
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPENOPASSWORDPOLICY :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPENOPASSWORDPOLICY = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_NO_PASSWORD_POLICY"

-- | Performance impact of connections settings
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPECONNECTIONSPERFORMANCEIMPACT :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPECONNECTIONSPERFORMANCEIMPACT = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_CONNECTIONS_PERFORMANCE_IMPACT"

-- | Performance impact of temporary tables settings
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPETMPTABLESPERFORMANCEIMPACT :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPETMPTABLESPERFORMANCEIMPACT = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_TMP_TABLES_PERFORMANCE_IMPACT"

-- | Performance impact of transaction logs settings
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPETRANSLOGSPERFORMANCEIMPACT :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPETRANSLOGSPERFORMANCEIMPACT = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_TRANS_LOGS_PERFORMANCE_IMPACT"

-- | Performance impact of high joins without indexes
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEHIGHJOINSWITHOUTINDEXES :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEHIGHJOINSWITHOUTINDEXES = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_HIGH_JOINS_WITHOUT_INDEXES"

-- | Detects events where a Cloud SQL superuser (postgres for PostgreSQL servers or root for MySQL users) writes to non-system tables.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPESUPERUSERWRITINGTOUSERTABLES :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPESUPERUSERWRITINGTOUSERTABLES = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_SUPERUSER_WRITING_TO_USER_TABLES"

-- | Detects events where a database user or role has been granted all privileges to a database, or to all tables, procedures, or functions in a schema.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEUSERGRANTEDALLPERMISSIONS :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEUSERGRANTEDALLPERMISSIONS = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_USER_GRANTED_ALL_PERMISSIONS"

-- | Detects if database instance data exported to a Cloud Storage bucket outside of the organization.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEDATAEXPORTTOEXTERNALCLOUDSTORAGEBUCKET :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEDATAEXPORTTOEXTERNALCLOUDSTORAGEBUCKET = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_DATA_EXPORT_TO_EXTERNAL_CLOUD_STORAGE_BUCKET"

-- | Detects if database instance data exported to a Cloud Storage bucket that is owned by the organization and is publicly accessible.
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEDATAEXPORTTOPUBLICCLOUDSTORAGEBUCKET :: DatabaseResourceHealthSignalData_SignalType
pattern DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEDATAEXPORTTOPUBLICCLOUDSTORAGEBUCKET = DatabaseResourceHealthSignalData_SignalType "SIGNAL_TYPE_DATA_EXPORT_TO_PUBLIC_CLOUD_STORAGE_BUCKET"

{-# COMPLETE
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEUNSPECIFIED,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPENOTPROTECTEDBYAUTOMATICFAILOVER,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEGROUPNOTREPLICATINGACROSSREGIONS,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPENOTAVAILABLEINMULTIPLEZONES,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPENOTAVAILABLEINMULTIPLEREGIONS,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPENOPROMOTABLEREPLICA,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPENOAUTOMATEDBACKUPPOLICY,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPESHORTBACKUPRETENTION,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPELASTBACKUPFAILED,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPELASTBACKUPOLD,
  DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_2_0,
  DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_3,
  DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_2,
  DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_1,
  DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_0,
  DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_CONTROLS_V8_0,
  DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_NIST_800_53,
  DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_NIST_800_53_R5,
  DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_NIST_CYBERSECURITY_FRAMEWORK_V1_0,
  DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_ISO_27001,
  DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_ISO_27001_V2022,
  DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_PCI_DSS_V3_2_1,
  DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_PCI_DSS_V4_0,
  DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CLOUD_CONTROLS_MATRIX_V4,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEVIOLATESHIPAA,
  DatabaseResourceHealthSignalData_SignalType_SIGNAL_TYPE_VIOLATES_SOC2_V2017,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPELOGSNOTOPTIMIZEDFORTROUBLESHOOTING,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEQUERYDURATIONSNOTLOGGED,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEVERBOSEERRORLOGGING,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEQUERYLOCKWAITSNOTLOGGED,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPELOGGINGMOSTERRORS,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPELOGGINGONLYCRITICALERRORS,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEMINIMALERRORLOGGING,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEQUERYSTATISTICSLOGGED,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEEXCESSIVELOGGINGOFCLIENTHOSTNAME,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEEXCESSIVELOGGINGOFPARSERSTATISTICS,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEEXCESSIVELOGGINGOFPLANNERSTATISTICS,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPENOTLOGGINGONLYDDLSTATEMENTS,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPELOGGINGQUERYSTATISTICS,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPENOTLOGGINGTEMPORARYFILES,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPECONNECTIONMAXNOTCONFIGURED,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEUSEROPTIONSCONFIGURED,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEEXPOSEDTOPUBLICACCESS,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEUNENCRYPTEDCONNECTIONS,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPENOROOTPASSWORD,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEWEAKROOTPASSWORD,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEENCRYPTIONKEYNOTCUSTOMERMANAGED,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPESERVERAUTHENTICATIONNOTREQUIRED,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEEXPOSEDBYOWNERSHIPCHAINING,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEEXPOSEDTOEXTERNALSCRIPTS,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEEXPOSEDTOLOCALDATALOADS,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPECONNECTIONATTEMPTSNOTLOGGED,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEDISCONNECTIONSNOTLOGGED,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPELOGGINGEXCESSIVESTATEMENTINFO,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEEXPOSEDTOREMOTEACCESS,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEDATABASENAMESEXPOSED,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPESENSITIVETRACEINFONOTMASKED,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEPUBLICIPENABLED,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEIDLE,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEOVERPROVISIONED,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEHIGHNUMBEROFOPENTABLES,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEHIGHNUMBEROFTABLES,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEHIGHTRANSACTIONIDUTILIZATION,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEUNDERPROVISIONED,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEOUTOFDISK,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPESERVERCERTIFICATENEAREXPIRY,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEDATABASEAUDITINGDISABLED,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPERESTRICTAUTHORIZEDNETWORKS,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEVIOLATEPOLICYRESTRICTPUBLICIP,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEQUOTALIMIT,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPENOPASSWORDPOLICY,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPECONNECTIONSPERFORMANCEIMPACT,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPETMPTABLESPERFORMANCEIMPACT,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPETRANSLOGSPERFORMANCEIMPACT,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEHIGHJOINSWITHOUTINDEXES,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPESUPERUSERWRITINGTOUSERTABLES,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEUSERGRANTEDALLPERMISSIONS,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEDATAEXPORTTOEXTERNALCLOUDSTORAGEBUCKET,
  DatabaseResourceHealthSignalData_SignalType_SIGNALTYPEDATAEXPORTTOPUBLICCLOUDSTORAGEBUCKET,
  DatabaseResourceHealthSignalData_SignalType
  #-}

newtype DatabaseResourceHealthSignalData_State = DatabaseResourceHealthSignalData_State {fromDatabaseResourceHealthSignalData_State :: Core.Text}
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
pattern DatabaseResourceHealthSignalData_State_STATEUNSPECIFIED :: DatabaseResourceHealthSignalData_State
pattern DatabaseResourceHealthSignalData_State_STATEUNSPECIFIED = DatabaseResourceHealthSignalData_State "STATE_UNSPECIFIED"

-- | The signal requires attention and has not been addressed yet.
pattern DatabaseResourceHealthSignalData_State_Active :: DatabaseResourceHealthSignalData_State
pattern DatabaseResourceHealthSignalData_State_Active = DatabaseResourceHealthSignalData_State "ACTIVE"

-- | The signal has been fixed, triaged as a non-issue or otherwise addressed and is no longer active.
pattern DatabaseResourceHealthSignalData_State_Resolved :: DatabaseResourceHealthSignalData_State
pattern DatabaseResourceHealthSignalData_State_Resolved = DatabaseResourceHealthSignalData_State "RESOLVED"

-- | The signal has been muted.
pattern DatabaseResourceHealthSignalData_State_Muted :: DatabaseResourceHealthSignalData_State
pattern DatabaseResourceHealthSignalData_State_Muted = DatabaseResourceHealthSignalData_State "MUTED"

{-# COMPLETE
  DatabaseResourceHealthSignalData_State_STATEUNSPECIFIED,
  DatabaseResourceHealthSignalData_State_Active,
  DatabaseResourceHealthSignalData_State_Resolved,
  DatabaseResourceHealthSignalData_State_Muted,
  DatabaseResourceHealthSignalData_State
  #-}

-- | Required. Cloud provider name. Ex: GCP\/AWS\/Azure\/OnPrem\/SelfManaged
newtype DatabaseResourceId_Provider = DatabaseResourceId_Provider {fromDatabaseResourceId_Provider :: Core.Text}
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

pattern DatabaseResourceId_Provider_PROVIDERUNSPECIFIED :: DatabaseResourceId_Provider
pattern DatabaseResourceId_Provider_PROVIDERUNSPECIFIED = DatabaseResourceId_Provider "PROVIDER_UNSPECIFIED"

-- | Google cloud platform provider
pattern DatabaseResourceId_Provider_Gcp :: DatabaseResourceId_Provider
pattern DatabaseResourceId_Provider_Gcp = DatabaseResourceId_Provider "GCP"

-- | Amazon web service
pattern DatabaseResourceId_Provider_Aws :: DatabaseResourceId_Provider
pattern DatabaseResourceId_Provider_Aws = DatabaseResourceId_Provider "AWS"

-- | Azure web service
pattern DatabaseResourceId_Provider_Azure :: DatabaseResourceId_Provider
pattern DatabaseResourceId_Provider_Azure = DatabaseResourceId_Provider "AZURE"

-- | On-prem database resources.
pattern DatabaseResourceId_Provider_Onprem :: DatabaseResourceId_Provider
pattern DatabaseResourceId_Provider_Onprem = DatabaseResourceId_Provider "ONPREM"

-- | Self-managed database provider. These are resources on a cloud platform, e.g., database resource installed in a GCE VM, but not a managed database service.
pattern DatabaseResourceId_Provider_Selfmanaged :: DatabaseResourceId_Provider
pattern DatabaseResourceId_Provider_Selfmanaged = DatabaseResourceId_Provider "SELFMANAGED"

-- | For the rest of the other categories. Other refers to the rest of other database service providers, this could be smaller cloud provider. This needs to be provided when the provider is known, but it is not present in the existing set of enum values.
pattern DatabaseResourceId_Provider_PROVIDEROTHER :: DatabaseResourceId_Provider
pattern DatabaseResourceId_Provider_PROVIDEROTHER = DatabaseResourceId_Provider "PROVIDER_OTHER"

{-# COMPLETE
  DatabaseResourceId_Provider_PROVIDERUNSPECIFIED,
  DatabaseResourceId_Provider_Gcp,
  DatabaseResourceId_Provider_Aws,
  DatabaseResourceId_Provider_Azure,
  DatabaseResourceId_Provider_Onprem,
  DatabaseResourceId_Provider_Selfmanaged,
  DatabaseResourceId_Provider_PROVIDEROTHER,
  DatabaseResourceId_Provider
  #-}

-- | Current state of the instance.
newtype DatabaseResourceMetadata_CurrentState = DatabaseResourceMetadata_CurrentState {fromDatabaseResourceMetadata_CurrentState :: Core.Text}
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

pattern DatabaseResourceMetadata_CurrentState_STATEUNSPECIFIED :: DatabaseResourceMetadata_CurrentState
pattern DatabaseResourceMetadata_CurrentState_STATEUNSPECIFIED = DatabaseResourceMetadata_CurrentState "STATE_UNSPECIFIED"

-- | The instance is running.
pattern DatabaseResourceMetadata_CurrentState_Healthy :: DatabaseResourceMetadata_CurrentState
pattern DatabaseResourceMetadata_CurrentState_Healthy = DatabaseResourceMetadata_CurrentState "HEALTHY"

-- | Instance being created, updated, deleted or under maintenance
pattern DatabaseResourceMetadata_CurrentState_Unhealthy :: DatabaseResourceMetadata_CurrentState
pattern DatabaseResourceMetadata_CurrentState_Unhealthy = DatabaseResourceMetadata_CurrentState "UNHEALTHY"

-- | When instance is suspended
pattern DatabaseResourceMetadata_CurrentState_Suspended :: DatabaseResourceMetadata_CurrentState
pattern DatabaseResourceMetadata_CurrentState_Suspended = DatabaseResourceMetadata_CurrentState "SUSPENDED"

-- | Instance is deleted.
pattern DatabaseResourceMetadata_CurrentState_Deleted :: DatabaseResourceMetadata_CurrentState
pattern DatabaseResourceMetadata_CurrentState_Deleted = DatabaseResourceMetadata_CurrentState "DELETED"

-- | For rest of the other category
pattern DatabaseResourceMetadata_CurrentState_STATEOTHER :: DatabaseResourceMetadata_CurrentState
pattern DatabaseResourceMetadata_CurrentState_STATEOTHER = DatabaseResourceMetadata_CurrentState "STATE_OTHER"

{-# COMPLETE
  DatabaseResourceMetadata_CurrentState_STATEUNSPECIFIED,
  DatabaseResourceMetadata_CurrentState_Healthy,
  DatabaseResourceMetadata_CurrentState_Unhealthy,
  DatabaseResourceMetadata_CurrentState_Suspended,
  DatabaseResourceMetadata_CurrentState_Deleted,
  DatabaseResourceMetadata_CurrentState_STATEOTHER,
  DatabaseResourceMetadata_CurrentState
  #-}

-- | Optional. Edition represents whether the instance is ENTERPRISE or ENTERPRISE_PLUS. This information is core to Cloud SQL only and is used to identify the edition of the instance.
newtype DatabaseResourceMetadata_Edition = DatabaseResourceMetadata_Edition {fromDatabaseResourceMetadata_Edition :: Core.Text}
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

-- | Default, to make it consistent with instance edition enum.
pattern DatabaseResourceMetadata_Edition_EDITIONUNSPECIFIED :: DatabaseResourceMetadata_Edition
pattern DatabaseResourceMetadata_Edition_EDITIONUNSPECIFIED = DatabaseResourceMetadata_Edition "EDITION_UNSPECIFIED"

-- | Represents the enterprise edition.
pattern DatabaseResourceMetadata_Edition_EDITIONENTERPRISE :: DatabaseResourceMetadata_Edition
pattern DatabaseResourceMetadata_Edition_EDITIONENTERPRISE = DatabaseResourceMetadata_Edition "EDITION_ENTERPRISE"

-- | Represents the enterprise plus edition.
pattern DatabaseResourceMetadata_Edition_EDITIONENTERPRISEPLUS :: DatabaseResourceMetadata_Edition
pattern DatabaseResourceMetadata_Edition_EDITIONENTERPRISEPLUS = DatabaseResourceMetadata_Edition "EDITION_ENTERPRISE_PLUS"

{-# COMPLETE
  DatabaseResourceMetadata_Edition_EDITIONUNSPECIFIED,
  DatabaseResourceMetadata_Edition_EDITIONENTERPRISE,
  DatabaseResourceMetadata_Edition_EDITIONENTERPRISEPLUS,
  DatabaseResourceMetadata_Edition
  #-}

-- | The state that the instance is expected to be in. For example, an instance state can transition to UNHEALTHY due to wrong patch update, while the expected state will remain at the HEALTHY.
newtype DatabaseResourceMetadata_ExpectedState = DatabaseResourceMetadata_ExpectedState {fromDatabaseResourceMetadata_ExpectedState :: Core.Text}
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

pattern DatabaseResourceMetadata_ExpectedState_STATEUNSPECIFIED :: DatabaseResourceMetadata_ExpectedState
pattern DatabaseResourceMetadata_ExpectedState_STATEUNSPECIFIED = DatabaseResourceMetadata_ExpectedState "STATE_UNSPECIFIED"

-- | The instance is running.
pattern DatabaseResourceMetadata_ExpectedState_Healthy :: DatabaseResourceMetadata_ExpectedState
pattern DatabaseResourceMetadata_ExpectedState_Healthy = DatabaseResourceMetadata_ExpectedState "HEALTHY"

-- | Instance being created, updated, deleted or under maintenance
pattern DatabaseResourceMetadata_ExpectedState_Unhealthy :: DatabaseResourceMetadata_ExpectedState
pattern DatabaseResourceMetadata_ExpectedState_Unhealthy = DatabaseResourceMetadata_ExpectedState "UNHEALTHY"

-- | When instance is suspended
pattern DatabaseResourceMetadata_ExpectedState_Suspended :: DatabaseResourceMetadata_ExpectedState
pattern DatabaseResourceMetadata_ExpectedState_Suspended = DatabaseResourceMetadata_ExpectedState "SUSPENDED"

-- | Instance is deleted.
pattern DatabaseResourceMetadata_ExpectedState_Deleted :: DatabaseResourceMetadata_ExpectedState
pattern DatabaseResourceMetadata_ExpectedState_Deleted = DatabaseResourceMetadata_ExpectedState "DELETED"

-- | For rest of the other category
pattern DatabaseResourceMetadata_ExpectedState_STATEOTHER :: DatabaseResourceMetadata_ExpectedState
pattern DatabaseResourceMetadata_ExpectedState_STATEOTHER = DatabaseResourceMetadata_ExpectedState "STATE_OTHER"

{-# COMPLETE
  DatabaseResourceMetadata_ExpectedState_STATEUNSPECIFIED,
  DatabaseResourceMetadata_ExpectedState_Healthy,
  DatabaseResourceMetadata_ExpectedState_Unhealthy,
  DatabaseResourceMetadata_ExpectedState_Suspended,
  DatabaseResourceMetadata_ExpectedState_Deleted,
  DatabaseResourceMetadata_ExpectedState_STATEOTHER,
  DatabaseResourceMetadata_ExpectedState
  #-}

-- | The type of the instance. Specified at creation time.
newtype DatabaseResourceMetadata_InstanceType = DatabaseResourceMetadata_InstanceType {fromDatabaseResourceMetadata_InstanceType :: Core.Text}
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

pattern DatabaseResourceMetadata_InstanceType_INSTANCETYPEUNSPECIFIED :: DatabaseResourceMetadata_InstanceType
pattern DatabaseResourceMetadata_InstanceType_INSTANCETYPEUNSPECIFIED = DatabaseResourceMetadata_InstanceType "INSTANCE_TYPE_UNSPECIFIED"

-- | For rest of the other categories.
pattern DatabaseResourceMetadata_InstanceType_SUBRESOURCETYPEUNSPECIFIED :: DatabaseResourceMetadata_InstanceType
pattern DatabaseResourceMetadata_InstanceType_SUBRESOURCETYPEUNSPECIFIED = DatabaseResourceMetadata_InstanceType "SUB_RESOURCE_TYPE_UNSPECIFIED"

-- | A regular primary database instance.
pattern DatabaseResourceMetadata_InstanceType_Primary :: DatabaseResourceMetadata_InstanceType
pattern DatabaseResourceMetadata_InstanceType_Primary = DatabaseResourceMetadata_InstanceType "PRIMARY"

-- | A cluster or an instance acting as a secondary.
pattern DatabaseResourceMetadata_InstanceType_Secondary :: DatabaseResourceMetadata_InstanceType
pattern DatabaseResourceMetadata_InstanceType_Secondary = DatabaseResourceMetadata_InstanceType "SECONDARY"

-- | An instance acting as a read-replica.
pattern DatabaseResourceMetadata_InstanceType_READREPLICA :: DatabaseResourceMetadata_InstanceType
pattern DatabaseResourceMetadata_InstanceType_READREPLICA = DatabaseResourceMetadata_InstanceType "READ_REPLICA"

-- | For rest of the other categories.
pattern DatabaseResourceMetadata_InstanceType_Other :: DatabaseResourceMetadata_InstanceType
pattern DatabaseResourceMetadata_InstanceType_Other = DatabaseResourceMetadata_InstanceType "OTHER"

-- | A regular primary database instance.
pattern DatabaseResourceMetadata_InstanceType_SUBRESOURCETYPEPRIMARY :: DatabaseResourceMetadata_InstanceType
pattern DatabaseResourceMetadata_InstanceType_SUBRESOURCETYPEPRIMARY = DatabaseResourceMetadata_InstanceType "SUB_RESOURCE_TYPE_PRIMARY"

-- | A cluster or an instance acting as a secondary.
pattern DatabaseResourceMetadata_InstanceType_SUBRESOURCETYPESECONDARY :: DatabaseResourceMetadata_InstanceType
pattern DatabaseResourceMetadata_InstanceType_SUBRESOURCETYPESECONDARY = DatabaseResourceMetadata_InstanceType "SUB_RESOURCE_TYPE_SECONDARY"

-- | An instance acting as a read-replica.
pattern DatabaseResourceMetadata_InstanceType_SUBRESOURCETYPEREADREPLICA :: DatabaseResourceMetadata_InstanceType
pattern DatabaseResourceMetadata_InstanceType_SUBRESOURCETYPEREADREPLICA = DatabaseResourceMetadata_InstanceType "SUB_RESOURCE_TYPE_READ_REPLICA"

-- | For rest of the other categories.
pattern DatabaseResourceMetadata_InstanceType_SUBRESOURCETYPEOTHER :: DatabaseResourceMetadata_InstanceType
pattern DatabaseResourceMetadata_InstanceType_SUBRESOURCETYPEOTHER = DatabaseResourceMetadata_InstanceType "SUB_RESOURCE_TYPE_OTHER"

{-# COMPLETE
  DatabaseResourceMetadata_InstanceType_INSTANCETYPEUNSPECIFIED,
  DatabaseResourceMetadata_InstanceType_SUBRESOURCETYPEUNSPECIFIED,
  DatabaseResourceMetadata_InstanceType_Primary,
  DatabaseResourceMetadata_InstanceType_Secondary,
  DatabaseResourceMetadata_InstanceType_READREPLICA,
  DatabaseResourceMetadata_InstanceType_Other,
  DatabaseResourceMetadata_InstanceType_SUBRESOURCETYPEPRIMARY,
  DatabaseResourceMetadata_InstanceType_SUBRESOURCETYPESECONDARY,
  DatabaseResourceMetadata_InstanceType_SUBRESOURCETYPEREADREPLICA,
  DatabaseResourceMetadata_InstanceType_SUBRESOURCETYPEOTHER,
  DatabaseResourceMetadata_InstanceType
  #-}

-- | Required. Recommendation state
newtype DatabaseResourceRecommendationSignalData_RecommendationState = DatabaseResourceRecommendationSignalData_RecommendationState {fromDatabaseResourceRecommendationSignalData_RecommendationState :: Core.Text}
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

pattern DatabaseResourceRecommendationSignalData_RecommendationState_Unspecified :: DatabaseResourceRecommendationSignalData_RecommendationState
pattern DatabaseResourceRecommendationSignalData_RecommendationState_Unspecified = DatabaseResourceRecommendationSignalData_RecommendationState "UNSPECIFIED"

-- | Recommendation is active and can be applied. ACTIVE recommendations can be marked as CLAIMED, SUCCEEDED, or FAILED.
pattern DatabaseResourceRecommendationSignalData_RecommendationState_Active :: DatabaseResourceRecommendationSignalData_RecommendationState
pattern DatabaseResourceRecommendationSignalData_RecommendationState_Active = DatabaseResourceRecommendationSignalData_RecommendationState "ACTIVE"

-- | Recommendation is in claimed state. Recommendations content is immutable and cannot be updated by Google. CLAIMED recommendations can be marked as CLAIMED, SUCCEEDED, or FAILED.
pattern DatabaseResourceRecommendationSignalData_RecommendationState_Claimed :: DatabaseResourceRecommendationSignalData_RecommendationState
pattern DatabaseResourceRecommendationSignalData_RecommendationState_Claimed = DatabaseResourceRecommendationSignalData_RecommendationState "CLAIMED"

-- | Recommendation is in succeeded state. Recommendations content is immutable and cannot be updated by Google. SUCCEEDED recommendations can be marked as SUCCEEDED, or FAILED.
pattern DatabaseResourceRecommendationSignalData_RecommendationState_Succeeded :: DatabaseResourceRecommendationSignalData_RecommendationState
pattern DatabaseResourceRecommendationSignalData_RecommendationState_Succeeded = DatabaseResourceRecommendationSignalData_RecommendationState "SUCCEEDED"

-- | Recommendation is in failed state. Recommendations content is immutable and cannot be updated by Google. FAILED recommendations can be marked as SUCCEEDED, or FAILED.
pattern DatabaseResourceRecommendationSignalData_RecommendationState_Failed :: DatabaseResourceRecommendationSignalData_RecommendationState
pattern DatabaseResourceRecommendationSignalData_RecommendationState_Failed = DatabaseResourceRecommendationSignalData_RecommendationState "FAILED"

-- | Recommendation is in dismissed state. Recommendation content can be updated by Google. DISMISSED recommendations can be marked as ACTIVE.
pattern DatabaseResourceRecommendationSignalData_RecommendationState_Dismissed :: DatabaseResourceRecommendationSignalData_RecommendationState
pattern DatabaseResourceRecommendationSignalData_RecommendationState_Dismissed = DatabaseResourceRecommendationSignalData_RecommendationState "DISMISSED"

{-# COMPLETE
  DatabaseResourceRecommendationSignalData_RecommendationState_Unspecified,
  DatabaseResourceRecommendationSignalData_RecommendationState_Active,
  DatabaseResourceRecommendationSignalData_RecommendationState_Claimed,
  DatabaseResourceRecommendationSignalData_RecommendationState_Succeeded,
  DatabaseResourceRecommendationSignalData_RecommendationState_Failed,
  DatabaseResourceRecommendationSignalData_RecommendationState_Dismissed,
  DatabaseResourceRecommendationSignalData_RecommendationState
  #-}

-- | Required. Type of signal, for example, @SIGNAL_TYPE_IDLE@, @SIGNAL_TYPE_HIGH_NUMBER_OF_TABLES@, etc.
newtype DatabaseResourceRecommendationSignalData_SignalType = DatabaseResourceRecommendationSignalData_SignalType {fromDatabaseResourceRecommendationSignalData_SignalType :: Core.Text}
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
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEUNSPECIFIED :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEUNSPECIFIED = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_UNSPECIFIED"

-- | Represents if a resource is protected by automatic failover. Checks for resources that are configured to have redundancy within a region that enables automatic failover.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPENOTPROTECTEDBYAUTOMATICFAILOVER :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPENOTPROTECTEDBYAUTOMATICFAILOVER = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_NOT_PROTECTED_BY_AUTOMATIC_FAILOVER"

-- | Represents if a group is replicating across regions. Checks for resources that are configured to have redundancy, and ongoing replication, across regions.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEGROUPNOTREPLICATINGACROSSREGIONS :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEGROUPNOTREPLICATINGACROSSREGIONS = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_GROUP_NOT_REPLICATING_ACROSS_REGIONS"

-- | Represents if the resource is available in multiple zones or not.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPENOTAVAILABLEINMULTIPLEZONES :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPENOTAVAILABLEINMULTIPLEZONES = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_NOT_AVAILABLE_IN_MULTIPLE_ZONES"

-- | Represents if a resource is available in multiple regions.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPENOTAVAILABLEINMULTIPLEREGIONS :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPENOTAVAILABLEINMULTIPLEREGIONS = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_NOT_AVAILABLE_IN_MULTIPLE_REGIONS"

-- | Represents if a resource has a promotable replica.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPENOPROMOTABLEREPLICA :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPENOPROMOTABLEREPLICA = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_NO_PROMOTABLE_REPLICA"

-- | Represents if a resource has an automated backup policy.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPENOAUTOMATEDBACKUPPOLICY :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPENOAUTOMATEDBACKUPPOLICY = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_NO_AUTOMATED_BACKUP_POLICY"

-- | Represents if a resources has a short backup retention period.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPESHORTBACKUPRETENTION :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPESHORTBACKUPRETENTION = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_SHORT_BACKUP_RETENTION"

-- | Represents if the last backup of a resource failed.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPELASTBACKUPFAILED :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPELASTBACKUPFAILED = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_LAST_BACKUP_FAILED"

-- | Represents if the last backup of a resource is older than some threshold value.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPELASTBACKUPOLD :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPELASTBACKUPOLD = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_LAST_BACKUP_OLD"

-- | Represents if a resource violates CIS GCP Foundation 2.0.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_2_0 :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_2_0 = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_2_0"

-- | Represents if a resource violates CIS GCP Foundation 1.3.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_3 :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_3 = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_3"

-- | Represents if a resource violates CIS GCP Foundation 1.2.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_2 :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_2 = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_2"

-- | Represents if a resource violates CIS GCP Foundation 1.1.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_1 :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_1 = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_1"

-- | Represents if a resource violates CIS GCP Foundation 1.0.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_0 :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_0 = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_0"

-- | Represents if a resource violates CIS Controls 8.0.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_CONTROLS_V8_0 :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_CONTROLS_V8_0 = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_VIOLATES_CIS_CONTROLS_V8_0"

-- | Represents if a resource violates NIST 800-53.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_NIST_800_53 :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_NIST_800_53 = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_VIOLATES_NIST_800_53"

-- | Represents if a resource violates NIST 800-53 R5.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_NIST_800_53_R5 :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_NIST_800_53_R5 = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_VIOLATES_NIST_800_53_R5"

-- | Represents if a resource violates NIST Cybersecurity Framework 1.0.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_NIST_CYBERSECURITY_FRAMEWORK_V1_0 :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_NIST_CYBERSECURITY_FRAMEWORK_V1_0 = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_VIOLATES_NIST_CYBERSECURITY_FRAMEWORK_V1_0"

-- | Represents if a resource violates ISO-27001.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_ISO_27001 :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_ISO_27001 = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_VIOLATES_ISO_27001"

-- | Represents if a resource violates ISO 27001 2022.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_ISO_27001_V2022 :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_ISO_27001_V2022 = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_VIOLATES_ISO_27001_V2022"

-- | Represents if a resource violates PCI-DSS v3.2.1.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_PCI_DSS_V3_2_1 :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_PCI_DSS_V3_2_1 = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_VIOLATES_PCI_DSS_V3_2_1"

-- | Represents if a resource violates PCI-DSS v4.0.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_PCI_DSS_V4_0 :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_PCI_DSS_V4_0 = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_VIOLATES_PCI_DSS_V4_0"

-- | Represents if a resource violates Cloud Controls Matrix v4.0.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CLOUD_CONTROLS_MATRIX_V4 :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CLOUD_CONTROLS_MATRIX_V4 = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_VIOLATES_CLOUD_CONTROLS_MATRIX_V4"

-- | Represents if a resource violates HIPAA.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEVIOLATESHIPAA :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEVIOLATESHIPAA = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_VIOLATES_HIPAA"

-- | Represents if a resource violates SOC2 v2017.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_SOC2_V2017 :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_SOC2_V2017 = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_VIOLATES_SOC2_V2017"

-- | Represents if log_checkpoints database flag for a Cloud SQL for PostgreSQL instance is not set to on.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPELOGSNOTOPTIMIZEDFORTROUBLESHOOTING :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPELOGSNOTOPTIMIZEDFORTROUBLESHOOTING = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_LOGS_NOT_OPTIMIZED_FOR_TROUBLESHOOTING"

-- | Represents if the log_duration database flag for a Cloud SQL for PostgreSQL instance is not set to on.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEQUERYDURATIONSNOTLOGGED :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEQUERYDURATIONSNOTLOGGED = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_QUERY_DURATIONS_NOT_LOGGED"

-- | Represents if the log/error/verbosity database flag for a Cloud SQL for PostgreSQL instance is not set to default or stricter (default or terse).
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEVERBOSEERRORLOGGING :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEVERBOSEERRORLOGGING = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_VERBOSE_ERROR_LOGGING"

-- | Represents if the log/lock/waits database flag for a Cloud SQL for PostgreSQL instance is not set to on.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEQUERYLOCKWAITSNOTLOGGED :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEQUERYLOCKWAITSNOTLOGGED = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_QUERY_LOCK_WAITS_NOT_LOGGED"

-- | Represents if the log/min/error_statement database flag for a Cloud SQL for PostgreSQL instance is not set appropriately.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPELOGGINGMOSTERRORS :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPELOGGINGMOSTERRORS = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_LOGGING_MOST_ERRORS"

-- | Represents if the log/min/error_statement database flag for a Cloud SQL for PostgreSQL instance does not have an appropriate severity level.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPELOGGINGONLYCRITICALERRORS :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPELOGGINGONLYCRITICALERRORS = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_LOGGING_ONLY_CRITICAL_ERRORS"

-- | Represents if the log/min/messages database flag for a Cloud SQL for PostgreSQL instance is not set to warning or another recommended value.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEMINIMALERRORLOGGING :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEMINIMALERRORLOGGING = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_MINIMAL_ERROR_LOGGING"

-- | Represents if the databaseFlags property of instance metadata for the log/executor/status field is set to on.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEQUERYSTATISTICSLOGGED :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEQUERYSTATISTICSLOGGED = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_QUERY_STATISTICS_LOGGED"

-- | Represents if the log_hostname database flag for a Cloud SQL for PostgreSQL instance is not set to off.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEEXCESSIVELOGGINGOFCLIENTHOSTNAME :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEEXCESSIVELOGGINGOFCLIENTHOSTNAME = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_EXCESSIVE_LOGGING_OF_CLIENT_HOSTNAME"

-- | Represents if the log/parser/stats database flag for a Cloud SQL for PostgreSQL instance is not set to off.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEEXCESSIVELOGGINGOFPARSERSTATISTICS :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEEXCESSIVELOGGINGOFPARSERSTATISTICS = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_EXCESSIVE_LOGGING_OF_PARSER_STATISTICS"

-- | Represents if the log/planner/stats database flag for a Cloud SQL for PostgreSQL instance is not set to off.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEEXCESSIVELOGGINGOFPLANNERSTATISTICS :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEEXCESSIVELOGGINGOFPLANNERSTATISTICS = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_EXCESSIVE_LOGGING_OF_PLANNER_STATISTICS"

-- | Represents if the log_statement database flag for a Cloud SQL for PostgreSQL instance is not set to DDL (all data definition statements).
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPENOTLOGGINGONLYDDLSTATEMENTS :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPENOTLOGGINGONLYDDLSTATEMENTS = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_NOT_LOGGING_ONLY_DDL_STATEMENTS"

-- | Represents if the log/statement/stats database flag for a Cloud SQL for PostgreSQL instance is not set to off.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPELOGGINGQUERYSTATISTICS :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPELOGGINGQUERYSTATISTICS = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_LOGGING_QUERY_STATISTICS"

-- | Represents if the log/temp/files database flag for a Cloud SQL for PostgreSQL instance is not set to \"0\". (NOTE: 0 = ON)
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPENOTLOGGINGTEMPORARYFILES :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPENOTLOGGINGTEMPORARYFILES = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_NOT_LOGGING_TEMPORARY_FILES"

-- | Represents if the user connections database flag for a Cloud SQL for SQL Server instance is configured.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPECONNECTIONMAXNOTCONFIGURED :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPECONNECTIONMAXNOTCONFIGURED = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_CONNECTION_MAX_NOT_CONFIGURED"

-- | Represents if the user options database flag for Cloud SQL SQL Server instance is configured or not.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEUSEROPTIONSCONFIGURED :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEUSEROPTIONSCONFIGURED = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_USER_OPTIONS_CONFIGURED"

-- | Represents if a resource is exposed to public access.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEEXPOSEDTOPUBLICACCESS :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEEXPOSEDTOPUBLICACCESS = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_EXPOSED_TO_PUBLIC_ACCESS"

-- | Represents if a resources requires all incoming connections to use SSL or not.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEUNENCRYPTEDCONNECTIONS :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEUNENCRYPTEDCONNECTIONS = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_UNENCRYPTED_CONNECTIONS"

-- | Represents if a Cloud SQL database has a password configured for the root account or not.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPENOROOTPASSWORD :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPENOROOTPASSWORD = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_NO_ROOT_PASSWORD"

-- | Represents if a Cloud SQL database has a weak password configured for the root account.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEWEAKROOTPASSWORD :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEWEAKROOTPASSWORD = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_WEAK_ROOT_PASSWORD"

-- | Represents if a SQL database instance is not encrypted with customer-managed encryption keys (CMEK).
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEENCRYPTIONKEYNOTCUSTOMERMANAGED :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEENCRYPTIONKEYNOTCUSTOMERMANAGED = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_ENCRYPTION_KEY_NOT_CUSTOMER_MANAGED"

-- | Represents if The contained database authentication database flag for a Cloud SQL for SQL Server instance is not set to off.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPESERVERAUTHENTICATIONNOTREQUIRED :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPESERVERAUTHENTICATIONNOTREQUIRED = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_SERVER_AUTHENTICATION_NOT_REQUIRED"

-- | Represents if the cross/db/ownership_chaining database flag for a Cloud SQL for SQL Server instance is not set to off.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEEXPOSEDBYOWNERSHIPCHAINING :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEEXPOSEDBYOWNERSHIPCHAINING = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_EXPOSED_BY_OWNERSHIP_CHAINING"

-- | Represents if he external scripts enabled database flag for a Cloud SQL for SQL Server instance is not set to off.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEEXPOSEDTOEXTERNALSCRIPTS :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEEXPOSEDTOEXTERNALSCRIPTS = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_EXPOSED_TO_EXTERNAL_SCRIPTS"

-- | Represents if the local_infile database flag for a Cloud SQL for MySQL instance is not set to off.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEEXPOSEDTOLOCALDATALOADS :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEEXPOSEDTOLOCALDATALOADS = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_EXPOSED_TO_LOCAL_DATA_LOADS"

-- | Represents if the log_connections database flag for a Cloud SQL for PostgreSQL instance is not set to on.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPECONNECTIONATTEMPTSNOTLOGGED :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPECONNECTIONATTEMPTSNOTLOGGED = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_CONNECTION_ATTEMPTS_NOT_LOGGED"

-- | Represents if the log_disconnections database flag for a Cloud SQL for PostgreSQL instance is not set to on.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEDISCONNECTIONSNOTLOGGED :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEDISCONNECTIONSNOTLOGGED = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_DISCONNECTIONS_NOT_LOGGED"

-- | Represents if the log/min/duration_statement database flag for a Cloud SQL for PostgreSQL instance is not set to -1.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPELOGGINGEXCESSIVESTATEMENTINFO :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPELOGGINGEXCESSIVESTATEMENTINFO = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_LOGGING_EXCESSIVE_STATEMENT_INFO"

-- | Represents if the remote access database flag for a Cloud SQL for SQL Server instance is not set to off.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEEXPOSEDTOREMOTEACCESS :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEEXPOSEDTOREMOTEACCESS = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_EXPOSED_TO_REMOTE_ACCESS"

-- | Represents if the skip/show/database database flag for a Cloud SQL for MySQL instance is not set to on.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEDATABASENAMESEXPOSED :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEDATABASENAMESEXPOSED = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_DATABASE_NAMES_EXPOSED"

-- | Represents if the 3625 (trace flag) database flag for a Cloud SQL for SQL Server instance is not set to on.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPESENSITIVETRACEINFONOTMASKED :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPESENSITIVETRACEINFONOTMASKED = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_SENSITIVE_TRACE_INFO_NOT_MASKED"

-- | Represents if public IP is enabled.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEPUBLICIPENABLED :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEPUBLICIPENABLED = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_PUBLIC_IP_ENABLED"

-- | Represents Idle instance helps to reduce costs.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEIDLE :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEIDLE = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_IDLE"

-- | Represents instances that are unnecessarily large for given workload.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEOVERPROVISIONED :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEOVERPROVISIONED = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_OVERPROVISIONED"

-- | Represents high number of concurrently opened tables.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEHIGHNUMBEROFOPENTABLES :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEHIGHNUMBEROFOPENTABLES = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_HIGH_NUMBER_OF_OPEN_TABLES"

-- | Represents high table count close to SLA limit.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEHIGHNUMBEROFTABLES :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEHIGHNUMBEROFTABLES = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_HIGH_NUMBER_OF_TABLES"

-- | Represents high number of unvacuumed transactions
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEHIGHTRANSACTIONIDUTILIZATION :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEHIGHTRANSACTIONIDUTILIZATION = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_HIGH_TRANSACTION_ID_UTILIZATION"

-- | Represents need for more CPU and\/or memory
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEUNDERPROVISIONED :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEUNDERPROVISIONED = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_UNDERPROVISIONED"

-- | Represents out of disk.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEOUTOFDISK :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEOUTOFDISK = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_OUT_OF_DISK"

-- | Represents server certificate is near expiry.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPESERVERCERTIFICATENEAREXPIRY :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPESERVERCERTIFICATENEAREXPIRY = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_SERVER_CERTIFICATE_NEAR_EXPIRY"

-- | Represents database auditing is disabled.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEDATABASEAUDITINGDISABLED :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEDATABASEAUDITINGDISABLED = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_DATABASE_AUDITING_DISABLED"

-- | Represents not restricted to authorized networks.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPERESTRICTAUTHORIZEDNETWORKS :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPERESTRICTAUTHORIZEDNETWORKS = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_RESTRICT_AUTHORIZED_NETWORKS"

-- | Represents violate org policy restrict public ip.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEVIOLATEPOLICYRESTRICTPUBLICIP :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEVIOLATEPOLICYRESTRICTPUBLICIP = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_VIOLATE_POLICY_RESTRICT_PUBLIC_IP"

-- | Cluster nearing quota limit
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEQUOTALIMIT :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEQUOTALIMIT = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_QUOTA_LIMIT"

-- | No password policy set on resources
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPENOPASSWORDPOLICY :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPENOPASSWORDPOLICY = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_NO_PASSWORD_POLICY"

-- | Performance impact of connections settings
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPECONNECTIONSPERFORMANCEIMPACT :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPECONNECTIONSPERFORMANCEIMPACT = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_CONNECTIONS_PERFORMANCE_IMPACT"

-- | Performance impact of temporary tables settings
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPETMPTABLESPERFORMANCEIMPACT :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPETMPTABLESPERFORMANCEIMPACT = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_TMP_TABLES_PERFORMANCE_IMPACT"

-- | Performance impact of transaction logs settings
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPETRANSLOGSPERFORMANCEIMPACT :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPETRANSLOGSPERFORMANCEIMPACT = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_TRANS_LOGS_PERFORMANCE_IMPACT"

-- | Performance impact of high joins without indexes
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEHIGHJOINSWITHOUTINDEXES :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEHIGHJOINSWITHOUTINDEXES = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_HIGH_JOINS_WITHOUT_INDEXES"

-- | Detects events where a Cloud SQL superuser (postgres for PostgreSQL servers or root for MySQL users) writes to non-system tables.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPESUPERUSERWRITINGTOUSERTABLES :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPESUPERUSERWRITINGTOUSERTABLES = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_SUPERUSER_WRITING_TO_USER_TABLES"

-- | Detects events where a database user or role has been granted all privileges to a database, or to all tables, procedures, or functions in a schema.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEUSERGRANTEDALLPERMISSIONS :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEUSERGRANTEDALLPERMISSIONS = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_USER_GRANTED_ALL_PERMISSIONS"

-- | Detects if database instance data exported to a Cloud Storage bucket outside of the organization.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEDATAEXPORTTOEXTERNALCLOUDSTORAGEBUCKET :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEDATAEXPORTTOEXTERNALCLOUDSTORAGEBUCKET = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_DATA_EXPORT_TO_EXTERNAL_CLOUD_STORAGE_BUCKET"

-- | Detects if database instance data exported to a Cloud Storage bucket that is owned by the organization and is publicly accessible.
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEDATAEXPORTTOPUBLICCLOUDSTORAGEBUCKET :: DatabaseResourceRecommendationSignalData_SignalType
pattern DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEDATAEXPORTTOPUBLICCLOUDSTORAGEBUCKET = DatabaseResourceRecommendationSignalData_SignalType "SIGNAL_TYPE_DATA_EXPORT_TO_PUBLIC_CLOUD_STORAGE_BUCKET"

{-# COMPLETE
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEUNSPECIFIED,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPENOTPROTECTEDBYAUTOMATICFAILOVER,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEGROUPNOTREPLICATINGACROSSREGIONS,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPENOTAVAILABLEINMULTIPLEZONES,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPENOTAVAILABLEINMULTIPLEREGIONS,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPENOPROMOTABLEREPLICA,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPENOAUTOMATEDBACKUPPOLICY,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPESHORTBACKUPRETENTION,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPELASTBACKUPFAILED,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPELASTBACKUPOLD,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_2_0,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_3,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_2,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_1,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_0,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CIS_CONTROLS_V8_0,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_NIST_800_53,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_NIST_800_53_R5,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_NIST_CYBERSECURITY_FRAMEWORK_V1_0,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_ISO_27001,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_ISO_27001_V2022,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_PCI_DSS_V3_2_1,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_PCI_DSS_V4_0,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_CLOUD_CONTROLS_MATRIX_V4,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEVIOLATESHIPAA,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNAL_TYPE_VIOLATES_SOC2_V2017,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPELOGSNOTOPTIMIZEDFORTROUBLESHOOTING,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEQUERYDURATIONSNOTLOGGED,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEVERBOSEERRORLOGGING,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEQUERYLOCKWAITSNOTLOGGED,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPELOGGINGMOSTERRORS,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPELOGGINGONLYCRITICALERRORS,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEMINIMALERRORLOGGING,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEQUERYSTATISTICSLOGGED,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEEXCESSIVELOGGINGOFCLIENTHOSTNAME,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEEXCESSIVELOGGINGOFPARSERSTATISTICS,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEEXCESSIVELOGGINGOFPLANNERSTATISTICS,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPENOTLOGGINGONLYDDLSTATEMENTS,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPELOGGINGQUERYSTATISTICS,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPENOTLOGGINGTEMPORARYFILES,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPECONNECTIONMAXNOTCONFIGURED,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEUSEROPTIONSCONFIGURED,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEEXPOSEDTOPUBLICACCESS,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEUNENCRYPTEDCONNECTIONS,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPENOROOTPASSWORD,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEWEAKROOTPASSWORD,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEENCRYPTIONKEYNOTCUSTOMERMANAGED,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPESERVERAUTHENTICATIONNOTREQUIRED,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEEXPOSEDBYOWNERSHIPCHAINING,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEEXPOSEDTOEXTERNALSCRIPTS,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEEXPOSEDTOLOCALDATALOADS,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPECONNECTIONATTEMPTSNOTLOGGED,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEDISCONNECTIONSNOTLOGGED,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPELOGGINGEXCESSIVESTATEMENTINFO,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEEXPOSEDTOREMOTEACCESS,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEDATABASENAMESEXPOSED,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPESENSITIVETRACEINFONOTMASKED,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEPUBLICIPENABLED,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEIDLE,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEOVERPROVISIONED,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEHIGHNUMBEROFOPENTABLES,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEHIGHNUMBEROFTABLES,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEHIGHTRANSACTIONIDUTILIZATION,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEUNDERPROVISIONED,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEOUTOFDISK,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPESERVERCERTIFICATENEAREXPIRY,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEDATABASEAUDITINGDISABLED,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPERESTRICTAUTHORIZEDNETWORKS,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEVIOLATEPOLICYRESTRICTPUBLICIP,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEQUOTALIMIT,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPENOPASSWORDPOLICY,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPECONNECTIONSPERFORMANCEIMPACT,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPETMPTABLESPERFORMANCEIMPACT,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPETRANSLOGSPERFORMANCEIMPACT,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEHIGHJOINSWITHOUTINDEXES,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPESUPERUSERWRITINGTOUSERTABLES,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEUSERGRANTEDALLPERMISSIONS,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEDATAEXPORTTOEXTERNALCLOUDSTORAGEBUCKET,
  DatabaseResourceRecommendationSignalData_SignalType_SIGNALTYPEDATAEXPORTTOPUBLICCLOUDSTORAGEBUCKET,
  DatabaseResourceRecommendationSignalData_SignalType
  #-}

-- | The current state of user\'s accessibility to a feature\/benefit.
newtype Entitlement_EntitlementState = Entitlement_EntitlementState {fromEntitlement_EntitlementState :: Core.Text}
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

pattern Entitlement_EntitlementState_ENTITLEMENTSTATEUNSPECIFIED :: Entitlement_EntitlementState
pattern Entitlement_EntitlementState_ENTITLEMENTSTATEUNSPECIFIED = Entitlement_EntitlementState "ENTITLEMENT_STATE_UNSPECIFIED"

-- | User is entitled to a feature\/benefit, but whether it has been successfully provisioned is decided by provisioning state.
pattern Entitlement_EntitlementState_Entitled :: Entitlement_EntitlementState
pattern Entitlement_EntitlementState_Entitled = Entitlement_EntitlementState "ENTITLED"

-- | User is entitled to a feature\/benefit, but it was requested to be revoked. Whether the revoke has been successful is decided by provisioning state.
pattern Entitlement_EntitlementState_Revoked :: Entitlement_EntitlementState
pattern Entitlement_EntitlementState_Revoked = Entitlement_EntitlementState "REVOKED"

{-# COMPLETE
  Entitlement_EntitlementState_ENTITLEMENTSTATEUNSPECIFIED,
  Entitlement_EntitlementState_Entitled,
  Entitlement_EntitlementState_Revoked,
  Entitlement_EntitlementState
  #-}

-- | An enum that represents the type of this entitlement.
newtype Entitlement_Type = Entitlement_Type {fromEntitlement_Type :: Core.Text}
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

pattern Entitlement_Type_ENTITLEMENTTYPEUNSPECIFIED :: Entitlement_Type
pattern Entitlement_Type_ENTITLEMENTTYPEUNSPECIFIED = Entitlement_Type "ENTITLEMENT_TYPE_UNSPECIFIED"

-- | The root entitlement representing Gemini package ownership.
pattern Entitlement_Type_Gemini :: Entitlement_Type
pattern Entitlement_Type_Gemini = Entitlement_Type "GEMINI"

{-# COMPLETE
  Entitlement_Type_ENTITLEMENTTYPEUNSPECIFIED,
  Entitlement_Type_Gemini,
  Entitlement_Type
  #-}

-- | Optional. Available data protection modes that the user can choose. If it\'s unspecified, data protection mode will be LIMITED/DATA/LOSS by default.
newtype FailoverInstanceRequest_DataProtectionMode = FailoverInstanceRequest_DataProtectionMode {fromFailoverInstanceRequest_DataProtectionMode :: Core.Text}
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
  FailoverInstanceRequest_DataProtectionMode
  #-}

-- | Optional. The network connect mode of the Redis instance. If not provided, the connect mode defaults to DIRECT_PEERING.
newtype Instance_ConnectMode = Instance_ConnectMode {fromInstance_ConnectMode :: Core.Text}
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
  Instance_ConnectMode
  #-}

-- | Optional. Read replicas mode for the instance. Defaults to READ/REPLICAS/DISABLED.
newtype Instance_ReadReplicasMode = Instance_ReadReplicasMode {fromInstance_ReadReplicasMode :: Core.Text}
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
  Instance_ReadReplicasMode
  #-}

-- | Output only. The current state of this instance.
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

-- | Something wrong with the CMEK key provided by customer.
pattern Instance_SuspensionReasonsItem_CUSTOMERMANAGEDKEYISSUE :: Instance_SuspensionReasonsItem
pattern Instance_SuspensionReasonsItem_CUSTOMERMANAGEDKEYISSUE = Instance_SuspensionReasonsItem "CUSTOMER_MANAGED_KEY_ISSUE"

{-# COMPLETE
  Instance_SuspensionReasonsItem_SUSPENSIONREASONUNSPECIFIED,
  Instance_SuspensionReasonsItem_CUSTOMERMANAGEDKEYISSUE,
  Instance_SuspensionReasonsItem
  #-}

-- | Required. The service tier of the instance.
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
  Instance_Tier
  #-}

-- | Optional. The TLS mode of the Redis instance. If not provided, TLS is disabled for the instance.
newtype Instance_TransitEncryptionMode = Instance_TransitEncryptionMode {fromInstance_TransitEncryptionMode :: Core.Text}
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
  Instance_TransitEncryptionMode
  #-}

-- | Required. Type of aggregation performed on the metric.
newtype ObservabilityMetricData_AggregationType = ObservabilityMetricData_AggregationType {fromObservabilityMetricData_AggregationType :: Core.Text}
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

-- | Unspecified aggregation type.
pattern ObservabilityMetricData_AggregationType_AGGREGATIONTYPEUNSPECIFIED :: ObservabilityMetricData_AggregationType
pattern ObservabilityMetricData_AggregationType_AGGREGATIONTYPEUNSPECIFIED = ObservabilityMetricData_AggregationType "AGGREGATION_TYPE_UNSPECIFIED"

-- | PEAK aggregation type.
pattern ObservabilityMetricData_AggregationType_Peak :: ObservabilityMetricData_AggregationType
pattern ObservabilityMetricData_AggregationType_Peak = ObservabilityMetricData_AggregationType "PEAK"

-- | P99 aggregation type.
pattern ObservabilityMetricData_AggregationType_P99 :: ObservabilityMetricData_AggregationType
pattern ObservabilityMetricData_AggregationType_P99 = ObservabilityMetricData_AggregationType "P99"

-- | P95 aggregation type.
pattern ObservabilityMetricData_AggregationType_P95 :: ObservabilityMetricData_AggregationType
pattern ObservabilityMetricData_AggregationType_P95 = ObservabilityMetricData_AggregationType "P95"

-- | current aggregation type.
pattern ObservabilityMetricData_AggregationType_Current :: ObservabilityMetricData_AggregationType
pattern ObservabilityMetricData_AggregationType_Current = ObservabilityMetricData_AggregationType "CURRENT"

{-# COMPLETE
  ObservabilityMetricData_AggregationType_AGGREGATIONTYPEUNSPECIFIED,
  ObservabilityMetricData_AggregationType_Peak,
  ObservabilityMetricData_AggregationType_P99,
  ObservabilityMetricData_AggregationType_P95,
  ObservabilityMetricData_AggregationType_Current,
  ObservabilityMetricData_AggregationType
  #-}

-- | Required. Type of metric like CPU, Memory, etc.
newtype ObservabilityMetricData_MetricType = ObservabilityMetricData_MetricType {fromObservabilityMetricData_MetricType :: Core.Text}
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

-- | Unspecified metric type.
pattern ObservabilityMetricData_MetricType_METRICTYPEUNSPECIFIED :: ObservabilityMetricData_MetricType
pattern ObservabilityMetricData_MetricType_METRICTYPEUNSPECIFIED = ObservabilityMetricData_MetricType "METRIC_TYPE_UNSPECIFIED"

-- | CPU utilization for a resource. The value is a fraction between 0.0 and 1.0 (may momentarily exceed 1.0 in some cases).
pattern ObservabilityMetricData_MetricType_CPUUTILIZATION :: ObservabilityMetricData_MetricType
pattern ObservabilityMetricData_MetricType_CPUUTILIZATION = ObservabilityMetricData_MetricType "CPU_UTILIZATION"

-- | Memory utilization for a resource. The value is a fraction between 0.0 and 1.0 (may momentarily exceed 1.0 in some cases).
pattern ObservabilityMetricData_MetricType_MEMORYUTILIZATION :: ObservabilityMetricData_MetricType
pattern ObservabilityMetricData_MetricType_MEMORYUTILIZATION = ObservabilityMetricData_MetricType "MEMORY_UTILIZATION"

-- | Number of network connections for a resource.
pattern ObservabilityMetricData_MetricType_NETWORKCONNECTIONS :: ObservabilityMetricData_MetricType
pattern ObservabilityMetricData_MetricType_NETWORKCONNECTIONS = ObservabilityMetricData_MetricType "NETWORK_CONNECTIONS"

-- | Storage utilization for a resource. The value is a fraction between 0.0 and 1.0 (may momentarily exceed 1.0 in some cases).
pattern ObservabilityMetricData_MetricType_STORAGEUTILIZATION :: ObservabilityMetricData_MetricType
pattern ObservabilityMetricData_MetricType_STORAGEUTILIZATION = ObservabilityMetricData_MetricType "STORAGE_UTILIZATION"

-- | Sotrage used by a resource.
pattern ObservabilityMetricData_MetricType_STORAGEUSEDBYTES :: ObservabilityMetricData_MetricType
pattern ObservabilityMetricData_MetricType_STORAGEUSEDBYTES = ObservabilityMetricData_MetricType "STORAGE_USED_BYTES"

{-# COMPLETE
  ObservabilityMetricData_MetricType_METRICTYPEUNSPECIFIED,
  ObservabilityMetricData_MetricType_CPUUTILIZATION,
  ObservabilityMetricData_MetricType_MEMORYUTILIZATION,
  ObservabilityMetricData_MetricType_NETWORKCONNECTIONS,
  ObservabilityMetricData_MetricType_STORAGEUTILIZATION,
  ObservabilityMetricData_MetricType_STORAGEUSEDBYTES,
  ObservabilityMetricData_MetricType
  #-}

newtype OperationError_ErrorType = OperationError_ErrorType {fromOperationError_ErrorType :: Core.Text}
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

-- | UNSPECIFIED means product type is not known or available.
pattern OperationError_ErrorType_OPERATIONERRORTYPEUNSPECIFIED :: OperationError_ErrorType
pattern OperationError_ErrorType_OPERATIONERRORTYPEUNSPECIFIED = OperationError_ErrorType "OPERATION_ERROR_TYPE_UNSPECIFIED"

-- | key destroyed, expired, not found, unreachable or permission denied.
pattern OperationError_ErrorType_KMSKEYERROR :: OperationError_ErrorType
pattern OperationError_ErrorType_KMSKEYERROR = OperationError_ErrorType "KMS_KEY_ERROR"

-- | Database is not accessible
pattern OperationError_ErrorType_DATABASEERROR :: OperationError_ErrorType
pattern OperationError_ErrorType_DATABASEERROR = OperationError_ErrorType "DATABASE_ERROR"

-- | The zone or region does not have sufficient resources to handle the request at the moment
pattern OperationError_ErrorType_STOCKOUTERROR :: OperationError_ErrorType
pattern OperationError_ErrorType_STOCKOUTERROR = OperationError_ErrorType "STOCKOUT_ERROR"

-- | User initiated cancellation
pattern OperationError_ErrorType_CANCELLATIONERROR :: OperationError_ErrorType
pattern OperationError_ErrorType_CANCELLATIONERROR = OperationError_ErrorType "CANCELLATION_ERROR"

-- | SQL server specific error
pattern OperationError_ErrorType_SQLSERVERERROR :: OperationError_ErrorType
pattern OperationError_ErrorType_SQLSERVERERROR = OperationError_ErrorType "SQLSERVER_ERROR"

-- | Any other internal error.
pattern OperationError_ErrorType_INTERNALERROR :: OperationError_ErrorType
pattern OperationError_ErrorType_INTERNALERROR = OperationError_ErrorType "INTERNAL_ERROR"

{-# COMPLETE
  OperationError_ErrorType_OPERATIONERRORTYPEUNSPECIFIED,
  OperationError_ErrorType_KMSKEYERROR,
  OperationError_ErrorType_DATABASEERROR,
  OperationError_ErrorType_STOCKOUTERROR,
  OperationError_ErrorType_CANCELLATIONERROR,
  OperationError_ErrorType_SQLSERVERERROR,
  OperationError_ErrorType_INTERNALERROR,
  OperationError_ErrorType
  #-}

-- | Optional. Controls whether Persistence features are enabled. If not provided, the existing value will be used.
newtype PersistenceConfig_PersistenceMode = PersistenceConfig_PersistenceMode {fromPersistenceConfig_PersistenceMode :: Core.Text}
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
  PersistenceConfig_PersistenceMode
  #-}

-- | Optional. Period between RDB snapshots. Snapshots will be attempted every period starting from the provided snapshot start time. For example, a start time of 01\/01\/2033 06:45 and SIX/HOURS snapshot period will do nothing until 01\/01\/2033, and then trigger snapshots every day at 06:45, 12:45, 18:45, and 00:45 the next day, and so on. If not provided, TWENTY/FOUR_HOURS will be used as default.
newtype PersistenceConfig_RdbSnapshotPeriod = PersistenceConfig_RdbSnapshotPeriod {fromPersistenceConfig_RdbSnapshotPeriod :: Core.Text}
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

-- | Snapshot every 24 hours.
pattern PersistenceConfig_RdbSnapshotPeriod_TWENTYFOURHOURS :: PersistenceConfig_RdbSnapshotPeriod
pattern PersistenceConfig_RdbSnapshotPeriod_TWENTYFOURHOURS = PersistenceConfig_RdbSnapshotPeriod "TWENTY_FOUR_HOURS"

{-# COMPLETE
  PersistenceConfig_RdbSnapshotPeriod_SNAPSHOTPERIODUNSPECIFIED,
  PersistenceConfig_RdbSnapshotPeriod_ONEHOUR,
  PersistenceConfig_RdbSnapshotPeriod_SIXHOURS,
  PersistenceConfig_RdbSnapshotPeriod_TWELVEHOURS,
  PersistenceConfig_RdbSnapshotPeriod_TWENTYFOURHOURS,
  PersistenceConfig_RdbSnapshotPeriod
  #-}

-- | The specific engine that the underlying database is running.
newtype Product_Engine = Product_Engine {fromProduct_Engine :: Core.Text}
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

-- | UNSPECIFIED means engine type is not known or available.
pattern Product_Engine_ENGINEUNSPECIFIED :: Product_Engine
pattern Product_Engine_ENGINEUNSPECIFIED = Product_Engine "ENGINE_UNSPECIFIED"

-- | MySQL binary running as an engine in the database instance.
pattern Product_Engine_ENGINEMYSQL :: Product_Engine
pattern Product_Engine_ENGINEMYSQL = Product_Engine "ENGINE_MYSQL"

-- | MySQL binary running as engine in database instance.
pattern Product_Engine_Mysql :: Product_Engine
pattern Product_Engine_Mysql = Product_Engine "MYSQL"

-- | Postgres binary running as engine in database instance.
pattern Product_Engine_ENGINEPOSTGRES :: Product_Engine
pattern Product_Engine_ENGINEPOSTGRES = Product_Engine "ENGINE_POSTGRES"

-- | Postgres binary running as engine in database instance.
pattern Product_Engine_Postgres :: Product_Engine
pattern Product_Engine_Postgres = Product_Engine "POSTGRES"

-- | SQLServer binary running as engine in database instance.
pattern Product_Engine_ENGINESQLSERVER :: Product_Engine
pattern Product_Engine_ENGINESQLSERVER = Product_Engine "ENGINE_SQL_SERVER"

-- | SQLServer binary running as engine in database instance.
pattern Product_Engine_SQLSERVER :: Product_Engine
pattern Product_Engine_SQLSERVER = Product_Engine "SQL_SERVER"

-- | Native database binary running as engine in instance.
pattern Product_Engine_ENGINENATIVE :: Product_Engine
pattern Product_Engine_ENGINENATIVE = Product_Engine "ENGINE_NATIVE"

-- | Native database binary running as engine in instance.
pattern Product_Engine_Native :: Product_Engine
pattern Product_Engine_Native = Product_Engine "NATIVE"

-- | Cloud Spanner with PostgreSQL dialect.
pattern Product_Engine_ENGINECLOUDSPANNERWITHPOSTGRESDIALECT :: Product_Engine
pattern Product_Engine_ENGINECLOUDSPANNERWITHPOSTGRESDIALECT = Product_Engine "ENGINE_CLOUD_SPANNER_WITH_POSTGRES_DIALECT"

-- | Cloud Spanner with Google SQL dialect.
pattern Product_Engine_ENGINECLOUDSPANNERWITHGOOGLESQLDIALECT :: Product_Engine
pattern Product_Engine_ENGINECLOUDSPANNERWITHGOOGLESQLDIALECT = Product_Engine "ENGINE_CLOUD_SPANNER_WITH_GOOGLESQL_DIALECT"

-- | Memorystore with Redis dialect.
pattern Product_Engine_ENGINEMEMORYSTOREFORREDIS :: Product_Engine
pattern Product_Engine_ENGINEMEMORYSTOREFORREDIS = Product_Engine "ENGINE_MEMORYSTORE_FOR_REDIS"

-- | Memorystore with Redis cluster dialect.
pattern Product_Engine_ENGINEMEMORYSTOREFORREDISCLUSTER :: Product_Engine
pattern Product_Engine_ENGINEMEMORYSTOREFORREDISCLUSTER = Product_Engine "ENGINE_MEMORYSTORE_FOR_REDIS_CLUSTER"

-- | Other refers to rest of other database engine. This is to be when engine is known, but it is not present in this enum.
pattern Product_Engine_ENGINEOTHER :: Product_Engine
pattern Product_Engine_ENGINEOTHER = Product_Engine "ENGINE_OTHER"

-- | Firestore with native mode.
pattern Product_Engine_ENGINEFIRESTOREWITHNATIVEMODE :: Product_Engine
pattern Product_Engine_ENGINEFIRESTOREWITHNATIVEMODE = Product_Engine "ENGINE_FIRESTORE_WITH_NATIVE_MODE"

-- | Firestore with datastore mode.
pattern Product_Engine_ENGINEFIRESTOREWITHDATASTOREMODE :: Product_Engine
pattern Product_Engine_ENGINEFIRESTOREWITHDATASTOREMODE = Product_Engine "ENGINE_FIRESTORE_WITH_DATASTORE_MODE"

{-# COMPLETE
  Product_Engine_ENGINEUNSPECIFIED,
  Product_Engine_ENGINEMYSQL,
  Product_Engine_Mysql,
  Product_Engine_ENGINEPOSTGRES,
  Product_Engine_Postgres,
  Product_Engine_ENGINESQLSERVER,
  Product_Engine_SQLSERVER,
  Product_Engine_ENGINENATIVE,
  Product_Engine_Native,
  Product_Engine_ENGINECLOUDSPANNERWITHPOSTGRESDIALECT,
  Product_Engine_ENGINECLOUDSPANNERWITHGOOGLESQLDIALECT,
  Product_Engine_ENGINEMEMORYSTOREFORREDIS,
  Product_Engine_ENGINEMEMORYSTOREFORREDISCLUSTER,
  Product_Engine_ENGINEOTHER,
  Product_Engine_ENGINEFIRESTOREWITHNATIVEMODE,
  Product_Engine_ENGINEFIRESTOREWITHDATASTOREMODE,
  Product_Engine
  #-}

-- | Type of specific database product. It could be CloudSQL, AlloyDB etc..
newtype Product_Type = Product_Type {fromProduct_Type :: Core.Text}
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

-- | UNSPECIFIED means product type is not known or available.
pattern Product_Type_PRODUCTTYPEUNSPECIFIED :: Product_Type
pattern Product_Type_PRODUCTTYPEUNSPECIFIED = Product_Type "PRODUCT_TYPE_UNSPECIFIED"

-- | Cloud SQL product area in GCP
pattern Product_Type_PRODUCTTYPECLOUDSQL :: Product_Type
pattern Product_Type_PRODUCTTYPECLOUDSQL = Product_Type "PRODUCT_TYPE_CLOUD_SQL"

-- | Cloud SQL product area in GCP
pattern Product_Type_CLOUDSQL :: Product_Type
pattern Product_Type_CLOUDSQL = Product_Type "CLOUD_SQL"

-- | AlloyDB product area in GCP
pattern Product_Type_PRODUCTTYPEALLOYDB :: Product_Type
pattern Product_Type_PRODUCTTYPEALLOYDB = Product_Type "PRODUCT_TYPE_ALLOYDB"

-- | AlloyDB product area in GCP
pattern Product_Type_Alloydb :: Product_Type
pattern Product_Type_Alloydb = Product_Type "ALLOYDB"

-- | Spanner product area in GCP
pattern Product_Type_PRODUCTTYPESPANNER :: Product_Type
pattern Product_Type_PRODUCTTYPESPANNER = Product_Type "PRODUCT_TYPE_SPANNER"

-- | On premises database product.
pattern Product_Type_PRODUCTTYPEONPREM :: Product_Type
pattern Product_Type_PRODUCTTYPEONPREM = Product_Type "PRODUCT_TYPE_ON_PREM"

-- | On premises database product.
pattern Product_Type_ONPREM :: Product_Type
pattern Product_Type_ONPREM = Product_Type "ON_PREM"

-- | Memorystore product area in GCP
pattern Product_Type_PRODUCTTYPEMEMORYSTORE :: Product_Type
pattern Product_Type_PRODUCTTYPEMEMORYSTORE = Product_Type "PRODUCT_TYPE_MEMORYSTORE"

-- | Bigtable product area in GCP
pattern Product_Type_PRODUCTTYPEBIGTABLE :: Product_Type
pattern Product_Type_PRODUCTTYPEBIGTABLE = Product_Type "PRODUCT_TYPE_BIGTABLE"

-- | Other refers to rest of other product type. This is to be when product type is known, but it is not present in this enum.
pattern Product_Type_PRODUCTTYPEOTHER :: Product_Type
pattern Product_Type_PRODUCTTYPEOTHER = Product_Type "PRODUCT_TYPE_OTHER"

-- | Firestore product area in GCP.
pattern Product_Type_PRODUCTTYPEFIRESTORE :: Product_Type
pattern Product_Type_PRODUCTTYPEFIRESTORE = Product_Type "PRODUCT_TYPE_FIRESTORE"

{-# COMPLETE
  Product_Type_PRODUCTTYPEUNSPECIFIED,
  Product_Type_PRODUCTTYPECLOUDSQL,
  Product_Type_CLOUDSQL,
  Product_Type_PRODUCTTYPEALLOYDB,
  Product_Type_Alloydb,
  Product_Type_PRODUCTTYPESPANNER,
  Product_Type_PRODUCTTYPEONPREM,
  Product_Type_ONPREM,
  Product_Type_PRODUCTTYPEMEMORYSTORE,
  Product_Type_PRODUCTTYPEBIGTABLE,
  Product_Type_PRODUCTTYPEOTHER,
  Product_Type_PRODUCTTYPEFIRESTORE,
  Product_Type
  #-}

-- | Output only. Type of the PSC connection.
newtype PscAutoConnection_ConnectionType = PscAutoConnection_ConnectionType {fromPscAutoConnection_ConnectionType :: Core.Text}
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

-- | Cluster endpoint Type is not set
pattern PscAutoConnection_ConnectionType_CONNECTIONTYPEUNSPECIFIED :: PscAutoConnection_ConnectionType
pattern PscAutoConnection_ConnectionType_CONNECTIONTYPEUNSPECIFIED = PscAutoConnection_ConnectionType "CONNECTION_TYPE_UNSPECIFIED"

-- | Cluster endpoint that will be used as for cluster topology discovery.
pattern PscAutoConnection_ConnectionType_CONNECTIONTYPEDISCOVERY :: PscAutoConnection_ConnectionType
pattern PscAutoConnection_ConnectionType_CONNECTIONTYPEDISCOVERY = PscAutoConnection_ConnectionType "CONNECTION_TYPE_DISCOVERY"

-- | Cluster endpoint that will be used as primary endpoint to access primary.
pattern PscAutoConnection_ConnectionType_CONNECTIONTYPEPRIMARY :: PscAutoConnection_ConnectionType
pattern PscAutoConnection_ConnectionType_CONNECTIONTYPEPRIMARY = PscAutoConnection_ConnectionType "CONNECTION_TYPE_PRIMARY"

-- | Cluster endpoint that will be used as reader endpoint to access replicas.
pattern PscAutoConnection_ConnectionType_CONNECTIONTYPEREADER :: PscAutoConnection_ConnectionType
pattern PscAutoConnection_ConnectionType_CONNECTIONTYPEREADER = PscAutoConnection_ConnectionType "CONNECTION_TYPE_READER"

{-# COMPLETE
  PscAutoConnection_ConnectionType_CONNECTIONTYPEUNSPECIFIED,
  PscAutoConnection_ConnectionType_CONNECTIONTYPEDISCOVERY,
  PscAutoConnection_ConnectionType_CONNECTIONTYPEPRIMARY,
  PscAutoConnection_ConnectionType_CONNECTIONTYPEREADER,
  PscAutoConnection_ConnectionType
  #-}

-- | Output only. The status of the PSC connection. Please note that this value is updated periodically. Please use Private Service Connect APIs for the latest status.
newtype PscAutoConnection_PscConnectionStatus = PscAutoConnection_PscConnectionStatus {fromPscAutoConnection_PscConnectionStatus :: Core.Text}
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

-- | PSC connection status is not specified.
pattern PscAutoConnection_PscConnectionStatus_PSCCONNECTIONSTATUSUNSPECIFIED :: PscAutoConnection_PscConnectionStatus
pattern PscAutoConnection_PscConnectionStatus_PSCCONNECTIONSTATUSUNSPECIFIED = PscAutoConnection_PscConnectionStatus "PSC_CONNECTION_STATUS_UNSPECIFIED"

-- | The connection is active
pattern PscAutoConnection_PscConnectionStatus_PSCCONNECTIONSTATUSACTIVE :: PscAutoConnection_PscConnectionStatus
pattern PscAutoConnection_PscConnectionStatus_PSCCONNECTIONSTATUSACTIVE = PscAutoConnection_PscConnectionStatus "PSC_CONNECTION_STATUS_ACTIVE"

-- | Connection not found
pattern PscAutoConnection_PscConnectionStatus_PSCCONNECTIONSTATUSNOTFOUND :: PscAutoConnection_PscConnectionStatus
pattern PscAutoConnection_PscConnectionStatus_PSCCONNECTIONSTATUSNOTFOUND = PscAutoConnection_PscConnectionStatus "PSC_CONNECTION_STATUS_NOT_FOUND"

{-# COMPLETE
  PscAutoConnection_PscConnectionStatus_PSCCONNECTIONSTATUSUNSPECIFIED,
  PscAutoConnection_PscConnectionStatus_PSCCONNECTIONSTATUSACTIVE,
  PscAutoConnection_PscConnectionStatus_PSCCONNECTIONSTATUSNOTFOUND,
  PscAutoConnection_PscConnectionStatus
  #-}

-- | Output only. Type of the PSC connection.
newtype PscConnection_ConnectionType = PscConnection_ConnectionType {fromPscConnection_ConnectionType :: Core.Text}
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

-- | Cluster endpoint Type is not set
pattern PscConnection_ConnectionType_CONNECTIONTYPEUNSPECIFIED :: PscConnection_ConnectionType
pattern PscConnection_ConnectionType_CONNECTIONTYPEUNSPECIFIED = PscConnection_ConnectionType "CONNECTION_TYPE_UNSPECIFIED"

-- | Cluster endpoint that will be used as for cluster topology discovery.
pattern PscConnection_ConnectionType_CONNECTIONTYPEDISCOVERY :: PscConnection_ConnectionType
pattern PscConnection_ConnectionType_CONNECTIONTYPEDISCOVERY = PscConnection_ConnectionType "CONNECTION_TYPE_DISCOVERY"

-- | Cluster endpoint that will be used as primary endpoint to access primary.
pattern PscConnection_ConnectionType_CONNECTIONTYPEPRIMARY :: PscConnection_ConnectionType
pattern PscConnection_ConnectionType_CONNECTIONTYPEPRIMARY = PscConnection_ConnectionType "CONNECTION_TYPE_PRIMARY"

-- | Cluster endpoint that will be used as reader endpoint to access replicas.
pattern PscConnection_ConnectionType_CONNECTIONTYPEREADER :: PscConnection_ConnectionType
pattern PscConnection_ConnectionType_CONNECTIONTYPEREADER = PscConnection_ConnectionType "CONNECTION_TYPE_READER"

{-# COMPLETE
  PscConnection_ConnectionType_CONNECTIONTYPEUNSPECIFIED,
  PscConnection_ConnectionType_CONNECTIONTYPEDISCOVERY,
  PscConnection_ConnectionType_CONNECTIONTYPEPRIMARY,
  PscConnection_ConnectionType_CONNECTIONTYPEREADER,
  PscConnection_ConnectionType
  #-}

-- | Output only. The status of the PSC connection. Please note that this value is updated periodically. To get the latest status of a PSC connection, follow https:\/\/cloud.google.com\/vpc\/docs\/configure-private-service-connect-services#endpoint-details.
newtype PscConnection_PscConnectionStatus = PscConnection_PscConnectionStatus {fromPscConnection_PscConnectionStatus :: Core.Text}
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

-- | PSC connection status is not specified.
pattern PscConnection_PscConnectionStatus_PSCCONNECTIONSTATUSUNSPECIFIED :: PscConnection_PscConnectionStatus
pattern PscConnection_PscConnectionStatus_PSCCONNECTIONSTATUSUNSPECIFIED = PscConnection_PscConnectionStatus "PSC_CONNECTION_STATUS_UNSPECIFIED"

-- | The connection is active
pattern PscConnection_PscConnectionStatus_PSCCONNECTIONSTATUSACTIVE :: PscConnection_PscConnectionStatus
pattern PscConnection_PscConnectionStatus_PSCCONNECTIONSTATUSACTIVE = PscConnection_PscConnectionStatus "PSC_CONNECTION_STATUS_ACTIVE"

-- | Connection not found
pattern PscConnection_PscConnectionStatus_PSCCONNECTIONSTATUSNOTFOUND :: PscConnection_PscConnectionStatus
pattern PscConnection_PscConnectionStatus_PSCCONNECTIONSTATUSNOTFOUND = PscConnection_PscConnectionStatus "PSC_CONNECTION_STATUS_NOT_FOUND"

{-# COMPLETE
  PscConnection_PscConnectionStatus_PSCCONNECTIONSTATUSUNSPECIFIED,
  PscConnection_PscConnectionStatus_PSCCONNECTIONSTATUSACTIVE,
  PscConnection_PscConnectionStatus_PSCCONNECTIONSTATUSNOTFOUND,
  PscConnection_PscConnectionStatus
  #-}

-- | Output only. Type of a PSC connection targeting this service attachment.
newtype PscServiceAttachment_ConnectionType = PscServiceAttachment_ConnectionType {fromPscServiceAttachment_ConnectionType :: Core.Text}
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

-- | Cluster endpoint Type is not set
pattern PscServiceAttachment_ConnectionType_CONNECTIONTYPEUNSPECIFIED :: PscServiceAttachment_ConnectionType
pattern PscServiceAttachment_ConnectionType_CONNECTIONTYPEUNSPECIFIED = PscServiceAttachment_ConnectionType "CONNECTION_TYPE_UNSPECIFIED"

-- | Cluster endpoint that will be used as for cluster topology discovery.
pattern PscServiceAttachment_ConnectionType_CONNECTIONTYPEDISCOVERY :: PscServiceAttachment_ConnectionType
pattern PscServiceAttachment_ConnectionType_CONNECTIONTYPEDISCOVERY = PscServiceAttachment_ConnectionType "CONNECTION_TYPE_DISCOVERY"

-- | Cluster endpoint that will be used as primary endpoint to access primary.
pattern PscServiceAttachment_ConnectionType_CONNECTIONTYPEPRIMARY :: PscServiceAttachment_ConnectionType
pattern PscServiceAttachment_ConnectionType_CONNECTIONTYPEPRIMARY = PscServiceAttachment_ConnectionType "CONNECTION_TYPE_PRIMARY"

-- | Cluster endpoint that will be used as reader endpoint to access replicas.
pattern PscServiceAttachment_ConnectionType_CONNECTIONTYPEREADER :: PscServiceAttachment_ConnectionType
pattern PscServiceAttachment_ConnectionType_CONNECTIONTYPEREADER = PscServiceAttachment_ConnectionType "CONNECTION_TYPE_READER"

{-# COMPLETE
  PscServiceAttachment_ConnectionType_CONNECTIONTYPEUNSPECIFIED,
  PscServiceAttachment_ConnectionType_CONNECTIONTYPEDISCOVERY,
  PscServiceAttachment_ConnectionType_CONNECTIONTYPEPRIMARY,
  PscServiceAttachment_ConnectionType_CONNECTIONTYPEREADER,
  PscServiceAttachment_ConnectionType
  #-}

-- | Optional. Period between RDB snapshots.
newtype RDBConfig_RdbSnapshotPeriod = RDBConfig_RdbSnapshotPeriod {fromRDBConfig_RdbSnapshotPeriod :: Core.Text}
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
pattern RDBConfig_RdbSnapshotPeriod_SNAPSHOTPERIODUNSPECIFIED :: RDBConfig_RdbSnapshotPeriod
pattern RDBConfig_RdbSnapshotPeriod_SNAPSHOTPERIODUNSPECIFIED = RDBConfig_RdbSnapshotPeriod "SNAPSHOT_PERIOD_UNSPECIFIED"

-- | One hour.
pattern RDBConfig_RdbSnapshotPeriod_ONEHOUR :: RDBConfig_RdbSnapshotPeriod
pattern RDBConfig_RdbSnapshotPeriod_ONEHOUR = RDBConfig_RdbSnapshotPeriod "ONE_HOUR"

-- | Six hours.
pattern RDBConfig_RdbSnapshotPeriod_SIXHOURS :: RDBConfig_RdbSnapshotPeriod
pattern RDBConfig_RdbSnapshotPeriod_SIXHOURS = RDBConfig_RdbSnapshotPeriod "SIX_HOURS"

-- | Twelve hours.
pattern RDBConfig_RdbSnapshotPeriod_TWELVEHOURS :: RDBConfig_RdbSnapshotPeriod
pattern RDBConfig_RdbSnapshotPeriod_TWELVEHOURS = RDBConfig_RdbSnapshotPeriod "TWELVE_HOURS"

-- | Twenty four hours.
pattern RDBConfig_RdbSnapshotPeriod_TWENTYFOURHOURS :: RDBConfig_RdbSnapshotPeriod
pattern RDBConfig_RdbSnapshotPeriod_TWENTYFOURHOURS = RDBConfig_RdbSnapshotPeriod "TWENTY_FOUR_HOURS"

{-# COMPLETE
  RDBConfig_RdbSnapshotPeriod_SNAPSHOTPERIODUNSPECIFIED,
  RDBConfig_RdbSnapshotPeriod_ONEHOUR,
  RDBConfig_RdbSnapshotPeriod_SIXHOURS,
  RDBConfig_RdbSnapshotPeriod_TWELVEHOURS,
  RDBConfig_RdbSnapshotPeriod_TWENTYFOURHOURS,
  RDBConfig_RdbSnapshotPeriod
  #-}

-- | Excluisive action returned by the CLH.
newtype ReconciliationOperationMetadata_ExclusiveAction = ReconciliationOperationMetadata_ExclusiveAction {fromReconciliationOperationMetadata_ExclusiveAction :: Core.Text}
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

-- | Unknown repair action.
pattern ReconciliationOperationMetadata_ExclusiveAction_UNKNOWNREPAIRACTION :: ReconciliationOperationMetadata_ExclusiveAction
pattern ReconciliationOperationMetadata_ExclusiveAction_UNKNOWNREPAIRACTION = ReconciliationOperationMetadata_ExclusiveAction "UNKNOWN_REPAIR_ACTION"

-- | The resource has to be deleted. When using this bit, the CLH should fail the operation. DEPRECATED. Instead use DELETE_RESOURCE OperationSignal in SideChannel.
pattern ReconciliationOperationMetadata_ExclusiveAction_Delete' :: ReconciliationOperationMetadata_ExclusiveAction
pattern ReconciliationOperationMetadata_ExclusiveAction_Delete' = ReconciliationOperationMetadata_ExclusiveAction "DELETE"

-- | This resource could not be repaired but the repair should be tried again at a later time. This can happen if there is a dependency that needs to be resolved first- e.g. if a parent resource must be repaired before a child resource.
pattern ReconciliationOperationMetadata_ExclusiveAction_Retry :: ReconciliationOperationMetadata_ExclusiveAction
pattern ReconciliationOperationMetadata_ExclusiveAction_Retry = ReconciliationOperationMetadata_ExclusiveAction "RETRY"

{-# COMPLETE
  ReconciliationOperationMetadata_ExclusiveAction_UNKNOWNREPAIRACTION,
  ReconciliationOperationMetadata_ExclusiveAction_Delete',
  ReconciliationOperationMetadata_ExclusiveAction_Retry,
  ReconciliationOperationMetadata_ExclusiveAction
  #-}

-- | Required. If reschedule type is SPECIFIC/TIME, must set up schedule/time as well.
newtype RescheduleClusterMaintenanceRequest_RescheduleType = RescheduleClusterMaintenanceRequest_RescheduleType {fromRescheduleClusterMaintenanceRequest_RescheduleType :: Core.Text}
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
pattern RescheduleClusterMaintenanceRequest_RescheduleType_RESCHEDULETYPEUNSPECIFIED :: RescheduleClusterMaintenanceRequest_RescheduleType
pattern RescheduleClusterMaintenanceRequest_RescheduleType_RESCHEDULETYPEUNSPECIFIED = RescheduleClusterMaintenanceRequest_RescheduleType "RESCHEDULE_TYPE_UNSPECIFIED"

-- | If the user wants to schedule the maintenance to happen now.
pattern RescheduleClusterMaintenanceRequest_RescheduleType_Immediate :: RescheduleClusterMaintenanceRequest_RescheduleType
pattern RescheduleClusterMaintenanceRequest_RescheduleType_Immediate = RescheduleClusterMaintenanceRequest_RescheduleType "IMMEDIATE"

-- | If the user wants to reschedule the maintenance to a specific time.
pattern RescheduleClusterMaintenanceRequest_RescheduleType_SPECIFICTIME :: RescheduleClusterMaintenanceRequest_RescheduleType
pattern RescheduleClusterMaintenanceRequest_RescheduleType_SPECIFICTIME = RescheduleClusterMaintenanceRequest_RescheduleType "SPECIFIC_TIME"

{-# COMPLETE
  RescheduleClusterMaintenanceRequest_RescheduleType_RESCHEDULETYPEUNSPECIFIED,
  RescheduleClusterMaintenanceRequest_RescheduleType_Immediate,
  RescheduleClusterMaintenanceRequest_RescheduleType_SPECIFICTIME,
  RescheduleClusterMaintenanceRequest_RescheduleType
  #-}

-- | Required. If reschedule type is SPECIFIC/TIME, must set up schedule/time as well.
newtype RescheduleMaintenanceRequest_RescheduleType = RescheduleMaintenanceRequest_RescheduleType {fromRescheduleMaintenanceRequest_RescheduleType :: Core.Text}
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
  RescheduleMaintenanceRequest_RescheduleType
  #-}

-- | The unit that \'retained_backups\' represents.
newtype RetentionSettings_RetentionUnit = RetentionSettings_RetentionUnit {fromRetentionSettings_RetentionUnit :: Core.Text}
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
pattern RetentionSettings_RetentionUnit_RETENTIONUNITUNSPECIFIED :: RetentionSettings_RetentionUnit
pattern RetentionSettings_RetentionUnit_RETENTIONUNITUNSPECIFIED = RetentionSettings_RetentionUnit "RETENTION_UNIT_UNSPECIFIED"

-- | Retention will be by count, eg. \"retain the most recent 7 backups\".
pattern RetentionSettings_RetentionUnit_Count :: RetentionSettings_RetentionUnit
pattern RetentionSettings_RetentionUnit_Count = RetentionSettings_RetentionUnit "COUNT"

-- | Retention will be by Time, eg. \"retain backups till a specific time\" i.e. till 2024-05-01T00:00:00Z.
pattern RetentionSettings_RetentionUnit_Time :: RetentionSettings_RetentionUnit
pattern RetentionSettings_RetentionUnit_Time = RetentionSettings_RetentionUnit "TIME"

-- | Retention will be by duration, eg. \"retain the backups for 172800 seconds (2 days)\".
pattern RetentionSettings_RetentionUnit_Duration :: RetentionSettings_RetentionUnit
pattern RetentionSettings_RetentionUnit_Duration = RetentionSettings_RetentionUnit "DURATION"

-- | For rest of the other category
pattern RetentionSettings_RetentionUnit_RETENTIONUNITOTHER :: RetentionSettings_RetentionUnit
pattern RetentionSettings_RetentionUnit_RETENTIONUNITOTHER = RetentionSettings_RetentionUnit "RETENTION_UNIT_OTHER"

{-# COMPLETE
  RetentionSettings_RetentionUnit_RETENTIONUNITUNSPECIFIED,
  RetentionSettings_RetentionUnit_Count,
  RetentionSettings_RetentionUnit_Time,
  RetentionSettings_RetentionUnit_Duration,
  RetentionSettings_RetentionUnit_RETENTIONUNITOTHER,
  RetentionSettings_RetentionUnit
  #-}

-- | Required. The day of week that maintenance updates occur.
newtype WeeklyMaintenanceWindow_Day = WeeklyMaintenanceWindow_Day {fromWeeklyMaintenanceWindow_Day :: Core.Text}
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
  WeeklyMaintenanceWindow_Day
  #-}

-- | Optional. The mode of zone distribution. Defaults to MULTI_ZONE, when not specified.
newtype ZoneDistributionConfig_Mode = ZoneDistributionConfig_Mode {fromZoneDistributionConfig_Mode :: Core.Text}
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

-- | Not Set. Default: MULTI_ZONE
pattern ZoneDistributionConfig_Mode_ZONEDISTRIBUTIONMODEUNSPECIFIED :: ZoneDistributionConfig_Mode
pattern ZoneDistributionConfig_Mode_ZONEDISTRIBUTIONMODEUNSPECIFIED = ZoneDistributionConfig_Mode "ZONE_DISTRIBUTION_MODE_UNSPECIFIED"

-- | Distribute all resources across 3 zones picked at random, within the region.
pattern ZoneDistributionConfig_Mode_MULTIZONE :: ZoneDistributionConfig_Mode
pattern ZoneDistributionConfig_Mode_MULTIZONE = ZoneDistributionConfig_Mode "MULTI_ZONE"

-- | Distribute all resources in a single zone. The zone field must be specified, when this mode is selected.
pattern ZoneDistributionConfig_Mode_SINGLEZONE :: ZoneDistributionConfig_Mode
pattern ZoneDistributionConfig_Mode_SINGLEZONE = ZoneDistributionConfig_Mode "SINGLE_ZONE"

{-# COMPLETE
  ZoneDistributionConfig_Mode_ZONEDISTRIBUTIONMODEUNSPECIFIED,
  ZoneDistributionConfig_Mode_MULTIZONE,
  ZoneDistributionConfig_Mode_SINGLEZONE,
  ZoneDistributionConfig_Mode
  #-}
