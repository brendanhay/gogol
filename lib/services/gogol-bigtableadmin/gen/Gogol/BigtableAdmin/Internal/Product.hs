{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.BigtableAdmin.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.BigtableAdmin.Internal.Product
  (

    -- * AppProfile
    AppProfile (..),
    newAppProfile,

    -- * AuditConfig
    AuditConfig (..),
    newAuditConfig,

    -- * AuditLogConfig
    AuditLogConfig (..),
    newAuditLogConfig,

    -- * AuthorizedView
    AuthorizedView (..),
    newAuthorizedView,

    -- * AutomatedBackupPolicy
    AutomatedBackupPolicy (..),
    newAutomatedBackupPolicy,

    -- * AutoscalingLimits
    AutoscalingLimits (..),
    newAutoscalingLimits,

    -- * AutoscalingTargets
    AutoscalingTargets (..),
    newAutoscalingTargets,

    -- * Backup
    Backup (..),
    newBackup,

    -- * BackupInfo
    BackupInfo (..),
    newBackupInfo,

    -- * Binding
    Binding (..),
    newBinding,

    -- * ChangeStreamConfig
    ChangeStreamConfig (..),
    newChangeStreamConfig,

    -- * CheckConsistencyRequest
    CheckConsistencyRequest (..),
    newCheckConsistencyRequest,

    -- * CheckConsistencyResponse
    CheckConsistencyResponse (..),
    newCheckConsistencyResponse,

    -- * Cluster
    Cluster (..),
    newCluster,

    -- * ClusterAutoscalingConfig
    ClusterAutoscalingConfig (..),
    newClusterAutoscalingConfig,

    -- * ClusterConfig
    ClusterConfig (..),
    newClusterConfig,

    -- * ClusterState
    ClusterState (..),
    newClusterState,

    -- * ColumnFamily
    ColumnFamily (..),
    newColumnFamily,

    -- * ColumnFamilyStats
    ColumnFamilyStats (..),
    newColumnFamilyStats,

    -- * CopyBackupMetadata
    CopyBackupMetadata (..),
    newCopyBackupMetadata,

    -- * CopyBackupRequest
    CopyBackupRequest (..),
    newCopyBackupRequest,

    -- * CreateAuthorizedViewMetadata
    CreateAuthorizedViewMetadata (..),
    newCreateAuthorizedViewMetadata,

    -- * CreateAuthorizedViewRequest
    CreateAuthorizedViewRequest (..),
    newCreateAuthorizedViewRequest,

    -- * CreateBackupMetadata
    CreateBackupMetadata (..),
    newCreateBackupMetadata,

    -- * CreateClusterMetadata
    CreateClusterMetadata (..),
    newCreateClusterMetadata,

    -- * CreateClusterMetadata_Tables
    CreateClusterMetadata_Tables (..),
    newCreateClusterMetadata_Tables,

    -- * CreateClusterRequest
    CreateClusterRequest (..),
    newCreateClusterRequest,

    -- * CreateInstanceMetadata
    CreateInstanceMetadata (..),
    newCreateInstanceMetadata,

    -- * CreateInstanceRequest
    CreateInstanceRequest (..),
    newCreateInstanceRequest,

    -- * CreateInstanceRequest_Clusters
    CreateInstanceRequest_Clusters (..),
    newCreateInstanceRequest_Clusters,

    -- * CreateTableRequest
    CreateTableRequest (..),
    newCreateTableRequest,

    -- * DataBoostIsolationReadOnly
    DataBoostIsolationReadOnly (..),
    newDataBoostIsolationReadOnly,

    -- * DataBoostReadLocalWrites
    DataBoostReadLocalWrites (..),
    newDataBoostReadLocalWrites,

    -- * DropRowRangeRequest
    DropRowRangeRequest (..),
    newDropRowRangeRequest,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * EncryptionConfig
    EncryptionConfig (..),
    newEncryptionConfig,

    -- * EncryptionInfo
    EncryptionInfo (..),
    newEncryptionInfo,

    -- * Expr
    Expr (..),
    newExpr,

    -- * GcRule
    GcRule (..),
    newGcRule,

    -- * GenerateConsistencyTokenRequest
    GenerateConsistencyTokenRequest (..),
    newGenerateConsistencyTokenRequest,

    -- * GenerateConsistencyTokenResponse
    GenerateConsistencyTokenResponse (..),
    newGenerateConsistencyTokenResponse,

    -- * GetIamPolicyRequest
    GetIamPolicyRequest (..),
    newGetIamPolicyRequest,

    -- * GetPolicyOptions
    GetPolicyOptions (..),
    newGetPolicyOptions,

    -- * GoogleBigtableAdminV2AuthorizedViewFamilySubsets
    GoogleBigtableAdminV2AuthorizedViewFamilySubsets (..),
    newGoogleBigtableAdminV2AuthorizedViewFamilySubsets,

    -- * GoogleBigtableAdminV2AuthorizedViewSubsetView
    GoogleBigtableAdminV2AuthorizedViewSubsetView (..),
    newGoogleBigtableAdminV2AuthorizedViewSubsetView,

    -- * GoogleBigtableAdminV2AuthorizedViewSubsetView_FamilySubsets
    GoogleBigtableAdminV2AuthorizedViewSubsetView_FamilySubsets (..),
    newGoogleBigtableAdminV2AuthorizedViewSubsetView_FamilySubsets,

    -- * GoogleBigtableAdminV2TypeAggregate
    GoogleBigtableAdminV2TypeAggregate (..),
    newGoogleBigtableAdminV2TypeAggregate,

    -- * GoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount
    GoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount (..),
    newGoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount,

    -- * GoogleBigtableAdminV2TypeAggregateMax
    GoogleBigtableAdminV2TypeAggregateMax (..),
    newGoogleBigtableAdminV2TypeAggregateMax,

    -- * GoogleBigtableAdminV2TypeAggregateMin
    GoogleBigtableAdminV2TypeAggregateMin (..),
    newGoogleBigtableAdminV2TypeAggregateMin,

    -- * GoogleBigtableAdminV2TypeAggregateSum
    GoogleBigtableAdminV2TypeAggregateSum (..),
    newGoogleBigtableAdminV2TypeAggregateSum,

    -- * GoogleBigtableAdminV2TypeArray
    GoogleBigtableAdminV2TypeArray (..),
    newGoogleBigtableAdminV2TypeArray,

    -- * GoogleBigtableAdminV2TypeBool
    GoogleBigtableAdminV2TypeBool (..),
    newGoogleBigtableAdminV2TypeBool,

    -- * GoogleBigtableAdminV2TypeBytes
    GoogleBigtableAdminV2TypeBytes (..),
    newGoogleBigtableAdminV2TypeBytes,

    -- * GoogleBigtableAdminV2TypeBytesEncoding
    GoogleBigtableAdminV2TypeBytesEncoding (..),
    newGoogleBigtableAdminV2TypeBytesEncoding,

    -- * GoogleBigtableAdminV2TypeBytesEncodingRaw
    GoogleBigtableAdminV2TypeBytesEncodingRaw (..),
    newGoogleBigtableAdminV2TypeBytesEncodingRaw,

    -- * GoogleBigtableAdminV2TypeDate
    GoogleBigtableAdminV2TypeDate (..),
    newGoogleBigtableAdminV2TypeDate,

    -- * GoogleBigtableAdminV2TypeFloat32
    GoogleBigtableAdminV2TypeFloat32 (..),
    newGoogleBigtableAdminV2TypeFloat32,

    -- * GoogleBigtableAdminV2TypeFloat64
    GoogleBigtableAdminV2TypeFloat64 (..),
    newGoogleBigtableAdminV2TypeFloat64,

    -- * GoogleBigtableAdminV2TypeInt64
    GoogleBigtableAdminV2TypeInt64 (..),
    newGoogleBigtableAdminV2TypeInt64,

    -- * GoogleBigtableAdminV2TypeInt64Encoding
    GoogleBigtableAdminV2TypeInt64Encoding (..),
    newGoogleBigtableAdminV2TypeInt64Encoding,

    -- * GoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes
    GoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes (..),
    newGoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes,

    -- * GoogleBigtableAdminV2TypeMap
    GoogleBigtableAdminV2TypeMap (..),
    newGoogleBigtableAdminV2TypeMap,

    -- * GoogleBigtableAdminV2TypeString
    GoogleBigtableAdminV2TypeString (..),
    newGoogleBigtableAdminV2TypeString,

    -- * GoogleBigtableAdminV2TypeStringEncoding
    GoogleBigtableAdminV2TypeStringEncoding (..),
    newGoogleBigtableAdminV2TypeStringEncoding,

    -- * GoogleBigtableAdminV2TypeStringEncodingUtf8Bytes
    GoogleBigtableAdminV2TypeStringEncodingUtf8Bytes (..),
    newGoogleBigtableAdminV2TypeStringEncodingUtf8Bytes,

    -- * GoogleBigtableAdminV2TypeStringEncodingUtf8Raw
    GoogleBigtableAdminV2TypeStringEncodingUtf8Raw (..),
    newGoogleBigtableAdminV2TypeStringEncodingUtf8Raw,

    -- * GoogleBigtableAdminV2TypeStruct
    GoogleBigtableAdminV2TypeStruct (..),
    newGoogleBigtableAdminV2TypeStruct,

    -- * GoogleBigtableAdminV2TypeStructField
    GoogleBigtableAdminV2TypeStructField (..),
    newGoogleBigtableAdminV2TypeStructField,

    -- * GoogleBigtableAdminV2TypeTimestamp
    GoogleBigtableAdminV2TypeTimestamp (..),
    newGoogleBigtableAdminV2TypeTimestamp,

    -- * HotTablet
    HotTablet (..),
    newHotTablet,

    -- * Instance
    Instance (..),
    newInstance,

    -- * Instance_Labels
    Instance_Labels (..),
    newInstance_Labels,

    -- * Intersection
    Intersection (..),
    newIntersection,

    -- * ListAppProfilesResponse
    ListAppProfilesResponse (..),
    newListAppProfilesResponse,

    -- * ListAuthorizedViewsResponse
    ListAuthorizedViewsResponse (..),
    newListAuthorizedViewsResponse,

    -- * ListBackupsResponse
    ListBackupsResponse (..),
    newListBackupsResponse,

    -- * ListClustersResponse
    ListClustersResponse (..),
    newListClustersResponse,

    -- * ListHotTabletsResponse
    ListHotTabletsResponse (..),
    newListHotTabletsResponse,

    -- * ListInstancesResponse
    ListInstancesResponse (..),
    newListInstancesResponse,

    -- * ListLocationsResponse
    ListLocationsResponse (..),
    newListLocationsResponse,

    -- * ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- * ListTablesResponse
    ListTablesResponse (..),
    newListTablesResponse,

    -- * Location
    Location (..),
    newLocation,

    -- * Location_Labels
    Location_Labels (..),
    newLocation_Labels,

    -- * Location_Metadata
    Location_Metadata (..),
    newLocation_Metadata,

    -- * Modification
    Modification (..),
    newModification,

    -- * ModifyColumnFamiliesRequest
    ModifyColumnFamiliesRequest (..),
    newModifyColumnFamiliesRequest,

    -- * MultiClusterRoutingUseAny
    MultiClusterRoutingUseAny (..),
    newMultiClusterRoutingUseAny,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- * Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- * OperationProgress
    OperationProgress (..),
    newOperationProgress,

    -- * OptimizeRestoredTableMetadata
    OptimizeRestoredTableMetadata (..),
    newOptimizeRestoredTableMetadata,

    -- * PartialUpdateClusterMetadata
    PartialUpdateClusterMetadata (..),
    newPartialUpdateClusterMetadata,

    -- * PartialUpdateClusterRequest
    PartialUpdateClusterRequest (..),
    newPartialUpdateClusterRequest,

    -- * PartialUpdateInstanceRequest
    PartialUpdateInstanceRequest (..),
    newPartialUpdateInstanceRequest,

    -- * Policy
    Policy (..),
    newPolicy,

    -- * RestoreInfo
    RestoreInfo (..),
    newRestoreInfo,

    -- * RestoreTableMetadata
    RestoreTableMetadata (..),
    newRestoreTableMetadata,

    -- * RestoreTableRequest
    RestoreTableRequest (..),
    newRestoreTableRequest,

    -- * RowAffinity
    RowAffinity (..),
    newRowAffinity,

    -- * SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- * SingleClusterRouting
    SingleClusterRouting (..),
    newSingleClusterRouting,

    -- * Split
    Split (..),
    newSplit,

    -- * StandardIsolation
    StandardIsolation (..),
    newStandardIsolation,

    -- * StandardReadRemoteWrites
    StandardReadRemoteWrites (..),
    newStandardReadRemoteWrites,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * Table
    Table (..),
    newTable,

    -- * Table_ClusterStates
    Table_ClusterStates (..),
    newTable_ClusterStates,

    -- * Table_ColumnFamilies
    Table_ColumnFamilies (..),
    newTable_ColumnFamilies,

    -- * TableProgress
    TableProgress (..),
    newTableProgress,

    -- * TableStats
    TableStats (..),
    newTableStats,

    -- * TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- * TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- * Type
    Type (..),
    newType,

    -- * UndeleteTableMetadata
    UndeleteTableMetadata (..),
    newUndeleteTableMetadata,

    -- * UndeleteTableRequest
    UndeleteTableRequest (..),
    newUndeleteTableRequest,

    -- * Union
    Union (..),
    newUnion,

    -- * UpdateAppProfileMetadata
    UpdateAppProfileMetadata (..),
    newUpdateAppProfileMetadata,

    -- * UpdateAuthorizedViewMetadata
    UpdateAuthorizedViewMetadata (..),
    newUpdateAuthorizedViewMetadata,

    -- * UpdateAuthorizedViewRequest
    UpdateAuthorizedViewRequest (..),
    newUpdateAuthorizedViewRequest,

    -- * UpdateClusterMetadata
    UpdateClusterMetadata (..),
    newUpdateClusterMetadata,

    -- * UpdateInstanceMetadata
    UpdateInstanceMetadata (..),
    newUpdateInstanceMetadata,

    -- * UpdateTableMetadata
    UpdateTableMetadata (..),
    newUpdateTableMetadata,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.BigtableAdmin.Internal.Sum

-- | A configuration object describing how Cloud Bigtable should treat traffic from a particular end user application.
--
-- /See:/ 'newAppProfile' smart constructor.
data AppProfile = AppProfile
    {
      -- | Specifies that this app profile is intended for read-only usage via the Data Boost feature.
      dataBoostIsolationReadOnly :: (Core.Maybe DataBoostIsolationReadOnly)
      -- | Long form description of the use case for this AppProfile.
    , description :: (Core.Maybe Core.Text)
      -- | Strongly validated etag for optimistic concurrency control. Preserve the value returned from @GetAppProfile@ when calling @UpdateAppProfile@ to fail the request if there has been a modification in the mean time. The @update_mask@ of the request need not include @etag@ for this protection to apply. See <https://en.wikipedia.org/wiki/HTTP_ETag Wikipedia> and <https://tools.ietf.org/html/rfc7232#section-2.3 RFC 7232> for more details.
    , etag :: (Core.Maybe Core.Text)
      -- | Use a multi-cluster routing policy.
    , multiClusterRoutingUseAny :: (Core.Maybe MultiClusterRoutingUseAny)
      -- | The unique name of the app profile. Values are of the form @projects\/{project}\/instances\/{instance}\/appProfiles\/_a-zA-Z0-9*@.
    , name :: (Core.Maybe Core.Text)
      -- | This field has been deprecated in favor of @standard_isolation.priority@. If you set this field, @standard_isolation.priority@ will be set instead. The priority of requests sent using this app profile.
    , priority :: (Core.Maybe AppProfile_Priority)
      -- | Use a single-cluster routing policy.
    , singleClusterRouting :: (Core.Maybe SingleClusterRouting)
      -- | The standard options used for isolating this app profile\'s traffic from other use cases.
    , standardIsolation :: (Core.Maybe StandardIsolation)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppProfile' with the minimum fields required to make a request.
newAppProfile 
    ::  AppProfile
newAppProfile =
  AppProfile
    { dataBoostIsolationReadOnly = Core.Nothing
    , description = Core.Nothing
    , etag = Core.Nothing
    , multiClusterRoutingUseAny = Core.Nothing
    , name = Core.Nothing
    , priority = Core.Nothing
    , singleClusterRouting = Core.Nothing
    , standardIsolation = Core.Nothing
    }

instance Core.FromJSON AppProfile where
        parseJSON
          = Core.withObject "AppProfile"
              (\ o ->
                 AppProfile Core.<$>
                   (o Core..:? "dataBoostIsolationReadOnly") Core.<*>
                     (o Core..:? "description")
                     Core.<*> (o Core..:? "etag")
                     Core.<*> (o Core..:? "multiClusterRoutingUseAny")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "priority")
                     Core.<*> (o Core..:? "singleClusterRouting")
                     Core.<*> (o Core..:? "standardIsolation"))

instance Core.ToJSON AppProfile where
        toJSON AppProfile{..}
          = Core.object
              (Core.catMaybes
                 [("dataBoostIsolationReadOnly" Core..=) Core.<$>
                    dataBoostIsolationReadOnly,
                  ("description" Core..=) Core.<$> description,
                  ("etag" Core..=) Core.<$> etag,
                  ("multiClusterRoutingUseAny" Core..=) Core.<$>
                    multiClusterRoutingUseAny,
                  ("name" Core..=) Core.<$> name,
                  ("priority" Core..=) Core.<$> priority,
                  ("singleClusterRouting" Core..=) Core.<$>
                    singleClusterRouting,
                  ("standardIsolation" Core..=) Core.<$>
                    standardIsolation])


-- | Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both @allServices@ and a specific service, the union of the two AuditConfigs is used for that service: the log/types specified in each AuditConfig are enabled, and the exempted/members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { \"audit/configs\": [ { \"service\": \"allServices\", \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\", \"exempted/members\": [ \"user:jose\@example.com\" ] }, { \"log/type\": \"DATA/WRITE\" }, { \"log/type\": \"ADMIN/READ\" } ] }, { \"service\": \"sampleservice.googleapis.com\", \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\" }, { \"log/type\": \"DATA/WRITE\", \"exempted/members\": [ \"user:aliya\@example.com\" ] } ] } ] } For sampleservice, this policy enables DATA/READ, DATA/WRITE and
-- ADMIN/READ logging. It also exempts @jose\@example.com@ from DATA/READ logging, and @aliya\@example.com@ from DATA/WRITE logging.
--
-- /See:/ 'newAuditConfig' smart constructor.
data AuditConfig = AuditConfig
    {
      -- | The configuration for logging of each type of permission.
      auditLogConfigs :: (Core.Maybe [AuditLogConfig])
      -- | Specifies a service that will be enabled for audit logging. For example, @storage.googleapis.com@, @cloudsql.googleapis.com@. @allServices@ is a special value that covers all services.
    , service :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuditConfig' with the minimum fields required to make a request.
newAuditConfig 
    ::  AuditConfig
newAuditConfig =
  AuditConfig {auditLogConfigs = Core.Nothing, service = Core.Nothing}

instance Core.FromJSON AuditConfig where
        parseJSON
          = Core.withObject "AuditConfig"
              (\ o ->
                 AuditConfig Core.<$>
                   (o Core..:? "auditLogConfigs") Core.<*>
                     (o Core..:? "service"))

instance Core.ToJSON AuditConfig where
        toJSON AuditConfig{..}
          = Core.object
              (Core.catMaybes
                 [("auditLogConfigs" Core..=) Core.<$>
                    auditLogConfigs,
                  ("service" Core..=) Core.<$> service])


-- | Provides the configuration for logging a type of permissions. Example: { \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\", \"exempted/members\": [ \"user:jose\@example.com\" ] }, { \"log/type\": \"DATA/WRITE\" } ] } This enables \'DATA/READ\' and \'DATA/WRITE\' logging, while exempting jose\@example.com from DATA/READ logging.
--
-- /See:/ 'newAuditLogConfig' smart constructor.
data AuditLogConfig = AuditLogConfig
    {
      -- | Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
      exemptedMembers :: (Core.Maybe [Core.Text])
      -- | The log type that this config enables.
    , logType :: (Core.Maybe AuditLogConfig_LogType)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuditLogConfig' with the minimum fields required to make a request.
newAuditLogConfig 
    ::  AuditLogConfig
newAuditLogConfig =
  AuditLogConfig {exemptedMembers = Core.Nothing, logType = Core.Nothing}

instance Core.FromJSON AuditLogConfig where
        parseJSON
          = Core.withObject "AuditLogConfig"
              (\ o ->
                 AuditLogConfig Core.<$>
                   (o Core..:? "exemptedMembers") Core.<*>
                     (o Core..:? "logType"))

instance Core.ToJSON AuditLogConfig where
        toJSON AuditLogConfig{..}
          = Core.object
              (Core.catMaybes
                 [("exemptedMembers" Core..=) Core.<$>
                    exemptedMembers,
                  ("logType" Core..=) Core.<$> logType])


-- | An Authorized View of a Cloud Bigtable Table.
--
-- /See:/ 'newAuthorizedView' smart constructor.
data AuthorizedView = AuthorizedView
    {
      -- | Set to true to make the AuthorizedView protected against deletion. The parent Table and containing Instance cannot be deleted if an AuthorizedView has this bit set.
      deletionProtection :: (Core.Maybe Core.Bool)
      -- | The etag for this AuthorizedView. If this is provided on update, it must match the server\'s etag. The server returns ABORTED error on a mismatched etag.
    , etag :: (Core.Maybe Core.Text)
      -- | Identifier. The name of this AuthorizedView. Values are of the form @projects\/{project}\/instances\/{instance}\/tables\/{table}\/authorizedViews\/{authorized_view}@
    , name :: (Core.Maybe Core.Text)
      -- | An AuthorizedView permitting access to an explicit subset of a Table.
    , subsetView :: (Core.Maybe GoogleBigtableAdminV2AuthorizedViewSubsetView)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuthorizedView' with the minimum fields required to make a request.
newAuthorizedView 
    ::  AuthorizedView
newAuthorizedView =
  AuthorizedView
    { deletionProtection = Core.Nothing
    , etag = Core.Nothing
    , name = Core.Nothing
    , subsetView = Core.Nothing
    }

instance Core.FromJSON AuthorizedView where
        parseJSON
          = Core.withObject "AuthorizedView"
              (\ o ->
                 AuthorizedView Core.<$>
                   (o Core..:? "deletionProtection") Core.<*>
                     (o Core..:? "etag")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "subsetView"))

instance Core.ToJSON AuthorizedView where
        toJSON AuthorizedView{..}
          = Core.object
              (Core.catMaybes
                 [("deletionProtection" Core..=) Core.<$>
                    deletionProtection,
                  ("etag" Core..=) Core.<$> etag,
                  ("name" Core..=) Core.<$> name,
                  ("subsetView" Core..=) Core.<$> subsetView])


-- | Defines an automated backup policy for a table
--
-- /See:/ 'newAutomatedBackupPolicy' smart constructor.
data AutomatedBackupPolicy = AutomatedBackupPolicy
    {
      -- | How frequently automated backups should occur. The only supported value at this time is 24 hours. An undefined frequency is treated as 24 hours.
      frequency :: (Core.Maybe Core.Duration)
      -- | Required. How long the automated backups should be retained. Values must be at least 3 days and at most 90 days.
    , retentionPeriod :: (Core.Maybe Core.Duration)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AutomatedBackupPolicy' with the minimum fields required to make a request.
newAutomatedBackupPolicy 
    ::  AutomatedBackupPolicy
newAutomatedBackupPolicy =
  AutomatedBackupPolicy
    {frequency = Core.Nothing, retentionPeriod = Core.Nothing}

instance Core.FromJSON AutomatedBackupPolicy where
        parseJSON
          = Core.withObject "AutomatedBackupPolicy"
              (\ o ->
                 AutomatedBackupPolicy Core.<$>
                   (o Core..:? "frequency") Core.<*>
                     (o Core..:? "retentionPeriod"))

instance Core.ToJSON AutomatedBackupPolicy where
        toJSON AutomatedBackupPolicy{..}
          = Core.object
              (Core.catMaybes
                 [("frequency" Core..=) Core.<$> frequency,
                  ("retentionPeriod" Core..=) Core.<$>
                    retentionPeriod])


-- | Limits for the number of nodes a Cluster can autoscale up\/down to.
--
-- /See:/ 'newAutoscalingLimits' smart constructor.
data AutoscalingLimits = AutoscalingLimits
    {
      -- | Required. Maximum number of nodes to scale up to.
      maxServeNodes :: (Core.Maybe Core.Int32)
      -- | Required. Minimum number of nodes to scale down to.
    , minServeNodes :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AutoscalingLimits' with the minimum fields required to make a request.
newAutoscalingLimits 
    ::  AutoscalingLimits
newAutoscalingLimits =
  AutoscalingLimits {maxServeNodes = Core.Nothing, minServeNodes = Core.Nothing}

instance Core.FromJSON AutoscalingLimits where
        parseJSON
          = Core.withObject "AutoscalingLimits"
              (\ o ->
                 AutoscalingLimits Core.<$>
                   (o Core..:? "maxServeNodes") Core.<*>
                     (o Core..:? "minServeNodes"))

instance Core.ToJSON AutoscalingLimits where
        toJSON AutoscalingLimits{..}
          = Core.object
              (Core.catMaybes
                 [("maxServeNodes" Core..=) Core.<$> maxServeNodes,
                  ("minServeNodes" Core..=) Core.<$> minServeNodes])


-- | The Autoscaling targets for a Cluster. These determine the recommended nodes.
--
-- /See:/ 'newAutoscalingTargets' smart constructor.
data AutoscalingTargets = AutoscalingTargets
    {
      -- | The cpu utilization that the Autoscaler should be trying to achieve. This number is on a scale from 0 (no utilization) to 100 (total utilization), and is limited between 10 and 80, otherwise it will return INVALID_ARGUMENT error.
      cpuUtilizationPercent :: (Core.Maybe Core.Int32)
      -- | The storage utilization that the Autoscaler should be trying to achieve. This number is limited between 2560 (2.5TiB) and 5120 (5TiB) for a SSD cluster and between 8192 (8TiB) and 16384 (16TiB) for an HDD cluster, otherwise it will return INVALID_ARGUMENT error. If this value is set to 0, it will be treated as if it were set to the default value: 2560 for SSD, 8192 for HDD.
    , storageUtilizationGibPerNode :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AutoscalingTargets' with the minimum fields required to make a request.
newAutoscalingTargets 
    ::  AutoscalingTargets
newAutoscalingTargets =
  AutoscalingTargets
    { cpuUtilizationPercent = Core.Nothing
    , storageUtilizationGibPerNode = Core.Nothing
    }

instance Core.FromJSON AutoscalingTargets where
        parseJSON
          = Core.withObject "AutoscalingTargets"
              (\ o ->
                 AutoscalingTargets Core.<$>
                   (o Core..:? "cpuUtilizationPercent") Core.<*>
                     (o Core..:? "storageUtilizationGibPerNode"))

instance Core.ToJSON AutoscalingTargets where
        toJSON AutoscalingTargets{..}
          = Core.object
              (Core.catMaybes
                 [("cpuUtilizationPercent" Core..=) Core.<$>
                    cpuUtilizationPercent,
                  ("storageUtilizationGibPerNode" Core..=) Core.<$>
                    storageUtilizationGibPerNode])


-- | A backup of a Cloud Bigtable table.
--
-- /See:/ 'newBackup' smart constructor.
data Backup = Backup
    {
      -- | Indicates the backup type of the backup.
      backupType :: (Core.Maybe Backup_BackupType)
      -- | Output only. The encryption information for the backup.
    , encryptionInfo :: (Core.Maybe EncryptionInfo)
      -- | Output only. @end_time@ is the time that the backup was finished. The row data in the backup will be no newer than this timestamp.
    , endTime :: (Core.Maybe Core.DateTime)
      -- | Required. The expiration time of the backup. When creating a backup or updating its @expire_time@, the value must be greater than the backup creation time by: - At least 6 hours - At most 90 days Once the @expire_time@ has passed, Cloud Bigtable will delete the backup.
    , expireTime :: (Core.Maybe Core.DateTime)
      -- | The time at which the hot backup will be converted to a standard backup. Once the @hot_to_standard_time@ has passed, Cloud Bigtable will convert the hot backup to a standard backup. This value must be greater than the backup creation time by: - At least 24 hours This field only applies for hot backups. When creating or updating a standard backup, attempting to set this field will fail the request.
    , hotToStandardTime :: (Core.Maybe Core.DateTime)
      -- | A globally unique identifier for the backup which cannot be changed. Values are of the form @projects\/{project}\/instances\/{instance}\/clusters\/{cluster}\/ backups\/_a-zA-Z0-9*@ The final segment of the name must be between 1 and 50 characters in length. The backup is stored in the cluster identified by the prefix of the backup name of the form @projects\/{project}\/instances\/{instance}\/clusters\/{cluster}@.
    , name :: (Core.Maybe Core.Text)
      -- | Output only. Size of the backup in bytes.
    , sizeBytes :: (Core.Maybe Core.Int64)
      -- | Output only. Name of the backup from which this backup was copied. If a backup is not created by copying a backup, this field will be empty. Values are of the form: projects\/\/instances\/\/clusters\/\/backups\/
    , sourceBackup :: (Core.Maybe Core.Text)
      -- | Required. Immutable. Name of the table from which this backup was created. This needs to be in the same instance as the backup. Values are of the form @projects\/{project}\/instances\/{instance}\/tables\/{source_table}@.
    , sourceTable :: (Core.Maybe Core.Text)
      -- | Output only. @start_time@ is the time that the backup was started (i.e. approximately the time the CreateBackup request is received). The row data in this backup will be no older than this timestamp.
    , startTime :: (Core.Maybe Core.DateTime)
      -- | Output only. The current state of the backup.
    , state :: (Core.Maybe Backup_State)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Backup' with the minimum fields required to make a request.
newBackup 
    ::  Backup
newBackup =
  Backup
    { backupType = Core.Nothing
    , encryptionInfo = Core.Nothing
    , endTime = Core.Nothing
    , expireTime = Core.Nothing
    , hotToStandardTime = Core.Nothing
    , name = Core.Nothing
    , sizeBytes = Core.Nothing
    , sourceBackup = Core.Nothing
    , sourceTable = Core.Nothing
    , startTime = Core.Nothing
    , state = Core.Nothing
    }

instance Core.FromJSON Backup where
        parseJSON
          = Core.withObject "Backup"
              (\ o ->
                 Backup Core.<$>
                   (o Core..:? "backupType") Core.<*>
                     (o Core..:? "encryptionInfo")
                     Core.<*> (o Core..:? "endTime")
                     Core.<*> (o Core..:? "expireTime")
                     Core.<*> (o Core..:? "hotToStandardTime")
                     Core.<*> (o Core..:? "name")
                     Core.<*>
                     (o Core..:? "sizeBytes" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "sourceBackup")
                     Core.<*> (o Core..:? "sourceTable")
                     Core.<*> (o Core..:? "startTime")
                     Core.<*> (o Core..:? "state"))

instance Core.ToJSON Backup where
        toJSON Backup{..}
          = Core.object
              (Core.catMaybes
                 [("backupType" Core..=) Core.<$> backupType,
                  ("encryptionInfo" Core..=) Core.<$> encryptionInfo,
                  ("endTime" Core..=) Core.<$> endTime,
                  ("expireTime" Core..=) Core.<$> expireTime,
                  ("hotToStandardTime" Core..=) Core.<$>
                    hotToStandardTime,
                  ("name" Core..=) Core.<$> name,
                  ("sizeBytes" Core..=) Core.. Core.AsText Core.<$>
                    sizeBytes,
                  ("sourceBackup" Core..=) Core.<$> sourceBackup,
                  ("sourceTable" Core..=) Core.<$> sourceTable,
                  ("startTime" Core..=) Core.<$> startTime,
                  ("state" Core..=) Core.<$> state])


-- | Information about a backup.
--
-- /See:/ 'newBackupInfo' smart constructor.
data BackupInfo = BackupInfo
    {
      -- | Output only. Name of the backup.
      backup :: (Core.Maybe Core.Text)
      -- | Output only. This time that the backup was finished. Row data in the backup will be no newer than this timestamp.
    , endTime :: (Core.Maybe Core.DateTime)
      -- | Output only. Name of the backup from which this backup was copied. If a backup is not created by copying a backup, this field will be empty. Values are of the form: projects\/\/instances\/\/clusters\/\/backups\/
    , sourceBackup :: (Core.Maybe Core.Text)
      -- | Output only. Name of the table the backup was created from.
    , sourceTable :: (Core.Maybe Core.Text)
      -- | Output only. The time that the backup was started. Row data in the backup will be no older than this timestamp.
    , startTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BackupInfo' with the minimum fields required to make a request.
newBackupInfo 
    ::  BackupInfo
newBackupInfo =
  BackupInfo
    { backup = Core.Nothing
    , endTime = Core.Nothing
    , sourceBackup = Core.Nothing
    , sourceTable = Core.Nothing
    , startTime = Core.Nothing
    }

instance Core.FromJSON BackupInfo where
        parseJSON
          = Core.withObject "BackupInfo"
              (\ o ->
                 BackupInfo Core.<$>
                   (o Core..:? "backup") Core.<*> (o Core..:? "endTime")
                     Core.<*> (o Core..:? "sourceBackup")
                     Core.<*> (o Core..:? "sourceTable")
                     Core.<*> (o Core..:? "startTime"))

instance Core.ToJSON BackupInfo where
        toJSON BackupInfo{..}
          = Core.object
              (Core.catMaybes
                 [("backup" Core..=) Core.<$> backup,
                  ("endTime" Core..=) Core.<$> endTime,
                  ("sourceBackup" Core..=) Core.<$> sourceBackup,
                  ("sourceTable" Core..=) Core.<$> sourceTable,
                  ("startTime" Core..=) Core.<$> startTime])


-- | Associates @members@, or principals, with a @role@.
--
-- /See:/ 'newBinding' smart constructor.
data Binding = Binding
    {
      -- | The condition that is associated with this binding. If the condition evaluates to @true@, then this binding applies to the current request. If the condition evaluates to @false@, then this binding does not apply to the current request. However, a different role binding might grant the same role to one or more of the principals in this binding. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
      condition :: (Core.Maybe Expr)
      -- | Specifies the principals requesting access for a Google Cloud resource. @members@ can have the following values: * @allUsers@: A special identifier that represents anyone who is on the internet; with or without a Google account. * @allAuthenticatedUsers@: A special identifier that represents anyone who is authenticated with a Google account or a service account. Does not include identities that come from external identity providers (IdPs) through identity federation. * @user:{emailid}@: An email address that represents a specific Google account. For example, @alice\@example.com@ . * @serviceAccount:{emailid}@: An email address that represents a Google service account. For example, @my-other-app\@appspot.gserviceaccount.com@. * @serviceAccount:{projectid}.svc.id.goog[{namespace}\/{kubernetes-sa}]@: An identifier for a <https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts Kubernetes service account>. For example, @my-project.svc.id.goog[my-namespace\/my-kubernetes-sa]@. *
      -- @group:{emailid}@: An email address that represents a Google group. For example, @admins\@example.com@. * @domain:{domain}@: The G Suite domain (primary) that represents all the users of that domain. For example, @google.com@ or @example.com@. * @principal:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/subject\/{subject_attribute_value}@: A single identity in a workforce identity pool. * @principalSet:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/group\/{group_id}@: All workforce identities in a group. * @principalSet:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/attribute.{attribute_name}\/{attribute_value}@: All workforce identities with a specific attribute value. * @principalSet:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/*@: All identities in a workforce identity pool. *
      -- @principal:\/\/iam.googleapis.com\/projects\/{project_number}\/locations\/global\/workloadIdentityPools\/{pool_id}\/subject\/{subject_attribute_value}@: A single identity in a workload identity pool. * @principalSet:\/\/iam.googleapis.com\/projects\/{project_number}\/locations\/global\/workloadIdentityPools\/{pool_id}\/group\/{group_id}@: A workload identity pool group. * @principalSet:\/\/iam.googleapis.com\/projects\/{project_number}\/locations\/global\/workloadIdentityPools\/{pool_id}\/attribute.{attribute_name}\/{attribute_value}@: All identities in a workload identity pool with a certain attribute. * @principalSet:\/\/iam.googleapis.com\/projects\/{project_number}\/locations\/global\/workloadIdentityPools\/{pool_id}\/*@: All identities in a workload identity pool. * @deleted:user:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a user that has been recently deleted. For example, @alice\@example.com?uid=123456789012345678901@. If the user is recovered, this value reverts
      -- to @user:{emailid}@ and the recovered user retains the role in the binding. * @deleted:serviceAccount:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a service account that has been recently deleted. For example, @my-other-app\@appspot.gserviceaccount.com?uid=123456789012345678901@. If the service account is undeleted, this value reverts to @serviceAccount:{emailid}@ and the undeleted service account retains the role in the binding. * @deleted:group:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a Google group that has been recently deleted. For example, @admins\@example.com?uid=123456789012345678901@. If the group is recovered, this value reverts to @group:{emailid}@ and the recovered group retains the role in the binding. * @deleted:principal:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/subject\/{subject_attribute_value}@: Deleted single identity in a workforce identity pool. For example,
      -- @deleted:principal:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/my-pool-id\/subject\/my-subject-attribute-value@.
    , members :: (Core.Maybe [Core.Text])
      -- | Role that is assigned to the list of @members@, or principals. For example, @roles\/viewer@, @roles\/editor@, or @roles\/owner@. For an overview of the IAM roles and permissions, see the <https://cloud.google.com/iam/docs/roles-overview IAM documentation>. For a list of the available pre-defined roles, see <https://cloud.google.com/iam/docs/understanding-roles here>.
    , role' :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Binding' with the minimum fields required to make a request.
newBinding 
    ::  Binding
newBinding =
  Binding
    {condition = Core.Nothing, members = Core.Nothing, role' = Core.Nothing}

instance Core.FromJSON Binding where
        parseJSON
          = Core.withObject "Binding"
              (\ o ->
                 Binding Core.<$>
                   (o Core..:? "condition") Core.<*>
                     (o Core..:? "members")
                     Core.<*> (o Core..:? "role"))

instance Core.ToJSON Binding where
        toJSON Binding{..}
          = Core.object
              (Core.catMaybes
                 [("condition" Core..=) Core.<$> condition,
                  ("members" Core..=) Core.<$> members,
                  ("role" Core..=) Core.<$> role'])


-- | Change stream configuration.
--
-- /See:/ 'newChangeStreamConfig' smart constructor.
newtype ChangeStreamConfig = ChangeStreamConfig
    {
      -- | How long the change stream should be retained. Change stream data older than the retention period will not be returned when reading the change stream from the table. Values must be at least 1 day and at most 7 days, and will be truncated to microsecond granularity.
      retentionPeriod :: (Core.Maybe Core.Duration)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChangeStreamConfig' with the minimum fields required to make a request.
newChangeStreamConfig 
    ::  ChangeStreamConfig
newChangeStreamConfig = ChangeStreamConfig {retentionPeriod = Core.Nothing}

instance Core.FromJSON ChangeStreamConfig where
        parseJSON
          = Core.withObject "ChangeStreamConfig"
              (\ o ->
                 ChangeStreamConfig Core.<$>
                   (o Core..:? "retentionPeriod"))

instance Core.ToJSON ChangeStreamConfig where
        toJSON ChangeStreamConfig{..}
          = Core.object
              (Core.catMaybes
                 [("retentionPeriod" Core..=) Core.<$>
                    retentionPeriod])


-- | Request message for google.bigtable.admin.v2.BigtableTableAdmin.CheckConsistency
--
-- /See:/ 'newCheckConsistencyRequest' smart constructor.
data CheckConsistencyRequest = CheckConsistencyRequest
    {
      -- | Required. The token created using GenerateConsistencyToken for the Table.
      consistencyToken :: (Core.Maybe Core.Text)
      -- | Checks that reads using an app profile with @DataBoostIsolationReadOnly@ can see all writes committed before the token was created, but only if the read and write target the same cluster.
    , dataBoostReadLocalWrites :: (Core.Maybe DataBoostReadLocalWrites)
      -- | Checks that reads using an app profile with @StandardIsolation@ can see all writes committed before the token was created, even if the read and write target different clusters.
    , standardReadRemoteWrites :: (Core.Maybe StandardReadRemoteWrites)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CheckConsistencyRequest' with the minimum fields required to make a request.
newCheckConsistencyRequest 
    ::  CheckConsistencyRequest
newCheckConsistencyRequest =
  CheckConsistencyRequest
    { consistencyToken = Core.Nothing
    , dataBoostReadLocalWrites = Core.Nothing
    , standardReadRemoteWrites = Core.Nothing
    }

instance Core.FromJSON CheckConsistencyRequest where
        parseJSON
          = Core.withObject "CheckConsistencyRequest"
              (\ o ->
                 CheckConsistencyRequest Core.<$>
                   (o Core..:? "consistencyToken") Core.<*>
                     (o Core..:? "dataBoostReadLocalWrites")
                     Core.<*> (o Core..:? "standardReadRemoteWrites"))

instance Core.ToJSON CheckConsistencyRequest where
        toJSON CheckConsistencyRequest{..}
          = Core.object
              (Core.catMaybes
                 [("consistencyToken" Core..=) Core.<$>
                    consistencyToken,
                  ("dataBoostReadLocalWrites" Core..=) Core.<$>
                    dataBoostReadLocalWrites,
                  ("standardReadRemoteWrites" Core..=) Core.<$>
                    standardReadRemoteWrites])


-- | Response message for google.bigtable.admin.v2.BigtableTableAdmin.CheckConsistency
--
-- /See:/ 'newCheckConsistencyResponse' smart constructor.
newtype CheckConsistencyResponse = CheckConsistencyResponse
    {
      -- | True only if the token is consistent. A token is consistent if replication has caught up with the restrictions specified in the request.
      consistent :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CheckConsistencyResponse' with the minimum fields required to make a request.
newCheckConsistencyResponse 
    ::  CheckConsistencyResponse
newCheckConsistencyResponse =
  CheckConsistencyResponse {consistent = Core.Nothing}

instance Core.FromJSON CheckConsistencyResponse where
        parseJSON
          = Core.withObject "CheckConsistencyResponse"
              (\ o ->
                 CheckConsistencyResponse Core.<$>
                   (o Core..:? "consistent"))

instance Core.ToJSON CheckConsistencyResponse where
        toJSON CheckConsistencyResponse{..}
          = Core.object
              (Core.catMaybes
                 [("consistent" Core..=) Core.<$> consistent])


-- | A resizable group of nodes in a particular cloud location, capable of serving all Tables in the parent Instance.
--
-- /See:/ 'newCluster' smart constructor.
data Cluster = Cluster
    {
      -- | Configuration for this cluster.
      clusterConfig :: (Core.Maybe ClusterConfig)
      -- | Immutable. The type of storage used by this cluster to serve its parent instance\'s tables, unless explicitly overridden.
    , defaultStorageType :: (Core.Maybe Cluster_DefaultStorageType)
      -- | Immutable. The encryption configuration for CMEK-protected clusters.
    , encryptionConfig :: (Core.Maybe EncryptionConfig)
      -- | Immutable. The location where this cluster\'s nodes and storage reside. For best performance, clients should be located as close as possible to this cluster. Currently only zones are supported, so values should be of the form @projects\/{project}\/locations\/{zone}@.
    , location :: (Core.Maybe Core.Text)
      -- | The unique name of the cluster. Values are of the form @projects\/{project}\/instances\/{instance}\/clusters\/a-z*@.
    , name :: (Core.Maybe Core.Text)
      -- | Immutable. The node scaling factor of this cluster.
    , nodeScalingFactor :: (Core.Maybe Cluster_NodeScalingFactor)
      -- | The number of nodes in the cluster. If no value is set, Cloud Bigtable automatically allocates nodes based on your data footprint and optimized for 50% storage utilization.
    , serveNodes :: (Core.Maybe Core.Int32)
      -- | Output only. The current state of the cluster.
    , state :: (Core.Maybe Cluster_State)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Cluster' with the minimum fields required to make a request.
newCluster 
    ::  Cluster
newCluster =
  Cluster
    { clusterConfig = Core.Nothing
    , defaultStorageType = Core.Nothing
    , encryptionConfig = Core.Nothing
    , location = Core.Nothing
    , name = Core.Nothing
    , nodeScalingFactor = Core.Nothing
    , serveNodes = Core.Nothing
    , state = Core.Nothing
    }

instance Core.FromJSON Cluster where
        parseJSON
          = Core.withObject "Cluster"
              (\ o ->
                 Cluster Core.<$>
                   (o Core..:? "clusterConfig") Core.<*>
                     (o Core..:? "defaultStorageType")
                     Core.<*> (o Core..:? "encryptionConfig")
                     Core.<*> (o Core..:? "location")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "nodeScalingFactor")
                     Core.<*> (o Core..:? "serveNodes")
                     Core.<*> (o Core..:? "state"))

instance Core.ToJSON Cluster where
        toJSON Cluster{..}
          = Core.object
              (Core.catMaybes
                 [("clusterConfig" Core..=) Core.<$> clusterConfig,
                  ("defaultStorageType" Core..=) Core.<$>
                    defaultStorageType,
                  ("encryptionConfig" Core..=) Core.<$>
                    encryptionConfig,
                  ("location" Core..=) Core.<$> location,
                  ("name" Core..=) Core.<$> name,
                  ("nodeScalingFactor" Core..=) Core.<$>
                    nodeScalingFactor,
                  ("serveNodes" Core..=) Core.<$> serveNodes,
                  ("state" Core..=) Core.<$> state])


-- | Autoscaling config for a cluster.
--
-- /See:/ 'newClusterAutoscalingConfig' smart constructor.
data ClusterAutoscalingConfig = ClusterAutoscalingConfig
    {
      -- | Required. Autoscaling limits for this cluster.
      autoscalingLimits :: (Core.Maybe AutoscalingLimits)
      -- | Required. Autoscaling targets for this cluster.
    , autoscalingTargets :: (Core.Maybe AutoscalingTargets)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClusterAutoscalingConfig' with the minimum fields required to make a request.
newClusterAutoscalingConfig 
    ::  ClusterAutoscalingConfig
newClusterAutoscalingConfig =
  ClusterAutoscalingConfig
    {autoscalingLimits = Core.Nothing, autoscalingTargets = Core.Nothing}

instance Core.FromJSON ClusterAutoscalingConfig where
        parseJSON
          = Core.withObject "ClusterAutoscalingConfig"
              (\ o ->
                 ClusterAutoscalingConfig Core.<$>
                   (o Core..:? "autoscalingLimits") Core.<*>
                     (o Core..:? "autoscalingTargets"))

instance Core.ToJSON ClusterAutoscalingConfig where
        toJSON ClusterAutoscalingConfig{..}
          = Core.object
              (Core.catMaybes
                 [("autoscalingLimits" Core..=) Core.<$>
                    autoscalingLimits,
                  ("autoscalingTargets" Core..=) Core.<$>
                    autoscalingTargets])


-- | Configuration for a cluster.
--
-- /See:/ 'newClusterConfig' smart constructor.
newtype ClusterConfig = ClusterConfig
    {
      -- | Autoscaling configuration for this cluster.
      clusterAutoscalingConfig :: (Core.Maybe ClusterAutoscalingConfig)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClusterConfig' with the minimum fields required to make a request.
newClusterConfig 
    ::  ClusterConfig
newClusterConfig = ClusterConfig {clusterAutoscalingConfig = Core.Nothing}

instance Core.FromJSON ClusterConfig where
        parseJSON
          = Core.withObject "ClusterConfig"
              (\ o ->
                 ClusterConfig Core.<$>
                   (o Core..:? "clusterAutoscalingConfig"))

instance Core.ToJSON ClusterConfig where
        toJSON ClusterConfig{..}
          = Core.object
              (Core.catMaybes
                 [("clusterAutoscalingConfig" Core..=) Core.<$>
                    clusterAutoscalingConfig])


-- | The state of a table\'s data in a particular cluster.
--
-- /See:/ 'newClusterState' smart constructor.
data ClusterState = ClusterState
    {
      -- | Output only. The encryption information for the table in this cluster. If the encryption key protecting this resource is customer managed, then its version can be rotated in Cloud Key Management Service (Cloud KMS). The primary version of the key and its status will be reflected here when changes propagate from Cloud KMS.
      encryptionInfo :: (Core.Maybe [EncryptionInfo])
      -- | Output only. The state of replication for the table in this cluster.
    , replicationState :: (Core.Maybe ClusterState_ReplicationState)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClusterState' with the minimum fields required to make a request.
newClusterState 
    ::  ClusterState
newClusterState =
  ClusterState {encryptionInfo = Core.Nothing, replicationState = Core.Nothing}

instance Core.FromJSON ClusterState where
        parseJSON
          = Core.withObject "ClusterState"
              (\ o ->
                 ClusterState Core.<$>
                   (o Core..:? "encryptionInfo") Core.<*>
                     (o Core..:? "replicationState"))

instance Core.ToJSON ClusterState where
        toJSON ClusterState{..}
          = Core.object
              (Core.catMaybes
                 [("encryptionInfo" Core..=) Core.<$> encryptionInfo,
                  ("replicationState" Core..=) Core.<$>
                    replicationState])


-- | A set of columns within a table which share a common configuration.
--
-- /See:/ 'newColumnFamily' smart constructor.
data ColumnFamily = ColumnFamily
    {
      -- | Garbage collection rule specified as a protobuf. Must serialize to at most 500 bytes. NOTE: Garbage collection executes opportunistically in the background, and so it\'s possible for reads to return a cell even if it matches the active GC expression for its family.
      gcRule :: (Core.Maybe GcRule)
      -- | Output only. Only available with STATS_VIEW, this includes summary statistics about column family contents. For statistics over an entire table, see TableStats above.
    , stats :: (Core.Maybe ColumnFamilyStats)
      -- | The type of data stored in each of this family\'s cell values, including its full encoding. If omitted, the family only serves raw untyped bytes. For now, only the @Aggregate@ type is supported. @Aggregate@ can only be set at family creation and is immutable afterwards. If @value_type@ is @Aggregate@, written data must be compatible with: * @value_type.input_type@ for @AddInput@ mutations
    , valueType :: (Core.Maybe Type)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ColumnFamily' with the minimum fields required to make a request.
newColumnFamily 
    ::  ColumnFamily
newColumnFamily =
  ColumnFamily
    {gcRule = Core.Nothing, stats = Core.Nothing, valueType = Core.Nothing}

instance Core.FromJSON ColumnFamily where
        parseJSON
          = Core.withObject "ColumnFamily"
              (\ o ->
                 ColumnFamily Core.<$>
                   (o Core..:? "gcRule") Core.<*> (o Core..:? "stats")
                     Core.<*> (o Core..:? "valueType"))

instance Core.ToJSON ColumnFamily where
        toJSON ColumnFamily{..}
          = Core.object
              (Core.catMaybes
                 [("gcRule" Core..=) Core.<$> gcRule,
                  ("stats" Core..=) Core.<$> stats,
                  ("valueType" Core..=) Core.<$> valueType])


-- | Approximate statistics related to a single column family within a table. This information may change rapidly, interpreting these values at a point in time may already preset out-of-date information. Everything below is approximate, unless otherwise specified.
--
-- /See:/ 'newColumnFamilyStats' smart constructor.
data ColumnFamilyStats = ColumnFamilyStats
    {
      -- | How many cells are present per column qualifier in this column family, averaged over all rows containing any column in the column family. e.g. For column family \"family\" in a table with 3 rows: * A row with 3 cells in \"family:col\" and 1 cell in \"other:col\" (3 cells \/ 1 column in \"family\") * A row with 1 cell in \"family:col\", 7 cells in \"family:other_col\", and 7 cells in \"other:data\" (8 cells \/ 2 columns in \"family\") * A row with 3 cells in \"other:col\" (0 columns in \"family\", \"family\" not present) would report (3 + 8 + 0)\/(1 + 2 + 0) = 3.66 in this field.
      averageCellsPerColumn :: (Core.Maybe Core.Double)
      -- | How many column qualifiers are present in this column family, averaged over all rows in the table. e.g. For column family \"family\" in a table with 3 rows: * A row with cells in \"family:col\" and \"other:col\" (1 column in \"family\") * A row with cells in \"family:col\", \"family:other_col\", and \"other:data\" (2 columns in \"family\") * A row with cells in \"other:col\" (0 columns in \"family\", \"family\" not present) would report (1 + 2 + 0)\/3 = 1.5 in this field.
    , averageColumnsPerRow :: (Core.Maybe Core.Double)
      -- | How much space the data in the column family occupies. This is roughly how many bytes would be needed to read the contents of the entire column family (e.g. by streaming all contents out).
    , logicalDataBytes :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ColumnFamilyStats' with the minimum fields required to make a request.
newColumnFamilyStats 
    ::  ColumnFamilyStats
newColumnFamilyStats =
  ColumnFamilyStats
    { averageCellsPerColumn = Core.Nothing
    , averageColumnsPerRow = Core.Nothing
    , logicalDataBytes = Core.Nothing
    }

instance Core.FromJSON ColumnFamilyStats where
        parseJSON
          = Core.withObject "ColumnFamilyStats"
              (\ o ->
                 ColumnFamilyStats Core.<$>
                   (o Core..:? "averageCellsPerColumn") Core.<*>
                     (o Core..:? "averageColumnsPerRow")
                     Core.<*>
                     (o Core..:? "logicalDataBytes" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON ColumnFamilyStats where
        toJSON ColumnFamilyStats{..}
          = Core.object
              (Core.catMaybes
                 [("averageCellsPerColumn" Core..=) Core.<$>
                    averageCellsPerColumn,
                  ("averageColumnsPerRow" Core..=) Core.<$>
                    averageColumnsPerRow,
                  ("logicalDataBytes" Core..=) Core.. Core.AsText
                    Core.<$> logicalDataBytes])


-- | Metadata type for the google.longrunning.Operation returned by CopyBackup.
--
-- /See:/ 'newCopyBackupMetadata' smart constructor.
data CopyBackupMetadata = CopyBackupMetadata
    {
      -- | The name of the backup being created through the copy operation. Values are of the form @projects\/\/instances\/\/clusters\/\/backups\/@.
      name :: (Core.Maybe Core.Text)
      -- | The progress of the CopyBackup operation.
    , progress :: (Core.Maybe OperationProgress)
      -- | Information about the source backup that is being copied from.
    , sourceBackupInfo :: (Core.Maybe BackupInfo)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CopyBackupMetadata' with the minimum fields required to make a request.
newCopyBackupMetadata 
    ::  CopyBackupMetadata
newCopyBackupMetadata =
  CopyBackupMetadata
    { name = Core.Nothing
    , progress = Core.Nothing
    , sourceBackupInfo = Core.Nothing
    }

instance Core.FromJSON CopyBackupMetadata where
        parseJSON
          = Core.withObject "CopyBackupMetadata"
              (\ o ->
                 CopyBackupMetadata Core.<$>
                   (o Core..:? "name") Core.<*> (o Core..:? "progress")
                     Core.<*> (o Core..:? "sourceBackupInfo"))

instance Core.ToJSON CopyBackupMetadata where
        toJSON CopyBackupMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("name" Core..=) Core.<$> name,
                  ("progress" Core..=) Core.<$> progress,
                  ("sourceBackupInfo" Core..=) Core.<$>
                    sourceBackupInfo])


-- | The request for CopyBackup.
--
-- /See:/ 'newCopyBackupRequest' smart constructor.
data CopyBackupRequest = CopyBackupRequest
    {
      -- | Required. The id of the new backup. The @backup_id@ along with @parent@ are combined as {parent}\/backups\/{backup/id} to create the full backup name, of the form: @projects\/{project}\/instances\/{instance}\/clusters\/{cluster}\/backups\/{backup_id}@. This string must be between 1 and 50 characters in length and match the regex /a-zA-Z0-9*.
      backupId :: (Core.Maybe Core.Text)
      -- | Required. Required. The expiration time of the copied backup with microsecond granularity that must be at least 6 hours and at most 30 days from the time the request is received. Once the @expire_time@ has passed, Cloud Bigtable will delete the backup and free the resources used by the backup.
    , expireTime :: (Core.Maybe Core.DateTime)
      -- | Required. The source backup to be copied from. The source backup needs to be in READY state for it to be copied. Copying a copied backup is not allowed. Once CopyBackup is in progress, the source backup cannot be deleted or cleaned up on expiration until CopyBackup is finished. Values are of the form: @projects\/\/instances\/\/clusters\/\/backups\/@.
    , sourceBackup :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CopyBackupRequest' with the minimum fields required to make a request.
newCopyBackupRequest 
    ::  CopyBackupRequest
newCopyBackupRequest =
  CopyBackupRequest
    { backupId = Core.Nothing
    , expireTime = Core.Nothing
    , sourceBackup = Core.Nothing
    }

instance Core.FromJSON CopyBackupRequest where
        parseJSON
          = Core.withObject "CopyBackupRequest"
              (\ o ->
                 CopyBackupRequest Core.<$>
                   (o Core..:? "backupId") Core.<*>
                     (o Core..:? "expireTime")
                     Core.<*> (o Core..:? "sourceBackup"))

instance Core.ToJSON CopyBackupRequest where
        toJSON CopyBackupRequest{..}
          = Core.object
              (Core.catMaybes
                 [("backupId" Core..=) Core.<$> backupId,
                  ("expireTime" Core..=) Core.<$> expireTime,
                  ("sourceBackup" Core..=) Core.<$> sourceBackup])


-- | The metadata for the Operation returned by CreateAuthorizedView.
--
-- /See:/ 'newCreateAuthorizedViewMetadata' smart constructor.
data CreateAuthorizedViewMetadata = CreateAuthorizedViewMetadata
    {
      -- | The time at which the operation failed or was completed successfully.
      finishTime :: (Core.Maybe Core.DateTime)
      -- | The request that prompted the initiation of this CreateAuthorizedView operation.
    , originalRequest :: (Core.Maybe CreateAuthorizedViewRequest)
      -- | The time at which the original request was received.
    , requestTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateAuthorizedViewMetadata' with the minimum fields required to make a request.
newCreateAuthorizedViewMetadata 
    ::  CreateAuthorizedViewMetadata
newCreateAuthorizedViewMetadata =
  CreateAuthorizedViewMetadata
    { finishTime = Core.Nothing
    , originalRequest = Core.Nothing
    , requestTime = Core.Nothing
    }

instance Core.FromJSON CreateAuthorizedViewMetadata
         where
        parseJSON
          = Core.withObject "CreateAuthorizedViewMetadata"
              (\ o ->
                 CreateAuthorizedViewMetadata Core.<$>
                   (o Core..:? "finishTime") Core.<*>
                     (o Core..:? "originalRequest")
                     Core.<*> (o Core..:? "requestTime"))

instance Core.ToJSON CreateAuthorizedViewMetadata
         where
        toJSON CreateAuthorizedViewMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("finishTime" Core..=) Core.<$> finishTime,
                  ("originalRequest" Core..=) Core.<$> originalRequest,
                  ("requestTime" Core..=) Core.<$> requestTime])


-- | The request for CreateAuthorizedView
--
-- /See:/ 'newCreateAuthorizedViewRequest' smart constructor.
data CreateAuthorizedViewRequest = CreateAuthorizedViewRequest
    {
      -- | Required. The AuthorizedView to create.
      authorizedView :: (Core.Maybe AuthorizedView)
      -- | Required. The id of the AuthorizedView to create. This AuthorizedView must not already exist. The @authorized_view_id@ appended to @parent@ forms the full AuthorizedView name of the form @projects\/{project}\/instances\/{instance}\/tables\/{table}\/authorizedView\/{authorized_view}@.
    , authorizedViewId :: (Core.Maybe Core.Text)
      -- | Required. This is the name of the table the AuthorizedView belongs to. Values are of the form @projects\/{project}\/instances\/{instance}\/tables\/{table}@.
    , parent :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateAuthorizedViewRequest' with the minimum fields required to make a request.
newCreateAuthorizedViewRequest 
    ::  CreateAuthorizedViewRequest
newCreateAuthorizedViewRequest =
  CreateAuthorizedViewRequest
    { authorizedView = Core.Nothing
    , authorizedViewId = Core.Nothing
    , parent = Core.Nothing
    }

instance Core.FromJSON CreateAuthorizedViewRequest
         where
        parseJSON
          = Core.withObject "CreateAuthorizedViewRequest"
              (\ o ->
                 CreateAuthorizedViewRequest Core.<$>
                   (o Core..:? "authorizedView") Core.<*>
                     (o Core..:? "authorizedViewId")
                     Core.<*> (o Core..:? "parent"))

instance Core.ToJSON CreateAuthorizedViewRequest
         where
        toJSON CreateAuthorizedViewRequest{..}
          = Core.object
              (Core.catMaybes
                 [("authorizedView" Core..=) Core.<$> authorizedView,
                  ("authorizedViewId" Core..=) Core.<$>
                    authorizedViewId,
                  ("parent" Core..=) Core.<$> parent])


-- | Metadata type for the operation returned by CreateBackup.
--
-- /See:/ 'newCreateBackupMetadata' smart constructor.
data CreateBackupMetadata = CreateBackupMetadata
    {
      -- | If set, the time at which this operation finished or was cancelled.
      endTime :: (Core.Maybe Core.DateTime)
      -- | The name of the backup being created.
    , name :: (Core.Maybe Core.Text)
      -- | The name of the table the backup is created from.
    , sourceTable :: (Core.Maybe Core.Text)
      -- | The time at which this operation started.
    , startTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateBackupMetadata' with the minimum fields required to make a request.
newCreateBackupMetadata 
    ::  CreateBackupMetadata
newCreateBackupMetadata =
  CreateBackupMetadata
    { endTime = Core.Nothing
    , name = Core.Nothing
    , sourceTable = Core.Nothing
    , startTime = Core.Nothing
    }

instance Core.FromJSON CreateBackupMetadata where
        parseJSON
          = Core.withObject "CreateBackupMetadata"
              (\ o ->
                 CreateBackupMetadata Core.<$>
                   (o Core..:? "endTime") Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "sourceTable")
                     Core.<*> (o Core..:? "startTime"))

instance Core.ToJSON CreateBackupMetadata where
        toJSON CreateBackupMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("endTime" Core..=) Core.<$> endTime,
                  ("name" Core..=) Core.<$> name,
                  ("sourceTable" Core..=) Core.<$> sourceTable,
                  ("startTime" Core..=) Core.<$> startTime])


-- | The metadata for the Operation returned by CreateCluster.
--
-- /See:/ 'newCreateClusterMetadata' smart constructor.
data CreateClusterMetadata = CreateClusterMetadata
    {
      -- | The time at which the operation failed or was completed successfully.
      finishTime :: (Core.Maybe Core.DateTime)
      -- | The request that prompted the initiation of this CreateCluster operation.
    , originalRequest :: (Core.Maybe CreateClusterRequest)
      -- | The time at which the original request was received.
    , requestTime :: (Core.Maybe Core.DateTime)
      -- | Keys: the full @name@ of each table that existed in the instance when CreateCluster was first called, i.e. @projects\/\/instances\/\/tables\/@. Any table added to the instance by a later API call will be created in the new cluster by that API call, not this one. Values: information on how much of a table\'s data has been copied to the newly-created cluster so far.
    , tables :: (Core.Maybe CreateClusterMetadata_Tables)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateClusterMetadata' with the minimum fields required to make a request.
newCreateClusterMetadata 
    ::  CreateClusterMetadata
newCreateClusterMetadata =
  CreateClusterMetadata
    { finishTime = Core.Nothing
    , originalRequest = Core.Nothing
    , requestTime = Core.Nothing
    , tables = Core.Nothing
    }

instance Core.FromJSON CreateClusterMetadata where
        parseJSON
          = Core.withObject "CreateClusterMetadata"
              (\ o ->
                 CreateClusterMetadata Core.<$>
                   (o Core..:? "finishTime") Core.<*>
                     (o Core..:? "originalRequest")
                     Core.<*> (o Core..:? "requestTime")
                     Core.<*> (o Core..:? "tables"))

instance Core.ToJSON CreateClusterMetadata where
        toJSON CreateClusterMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("finishTime" Core..=) Core.<$> finishTime,
                  ("originalRequest" Core..=) Core.<$> originalRequest,
                  ("requestTime" Core..=) Core.<$> requestTime,
                  ("tables" Core..=) Core.<$> tables])


-- | Keys: the full @name@ of each table that existed in the instance when CreateCluster was first called, i.e. @projects\/\/instances\/\/tables\/@. Any table added to the instance by a later API call will be created in the new cluster by that API call, not this one. Values: information on how much of a table\'s data has been copied to the newly-created cluster so far.
--
-- /See:/ 'newCreateClusterMetadata_Tables' smart constructor.
newtype CreateClusterMetadata_Tables = CreateClusterMetadata_Tables
    {
      -- | 
      additional :: (Core.HashMap Core.Text TableProgress)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateClusterMetadata_Tables' with the minimum fields required to make a request.
newCreateClusterMetadata_Tables 
    ::  Core.HashMap Core.Text TableProgress
       -- ^  See 'additional'.
    -> CreateClusterMetadata_Tables
newCreateClusterMetadata_Tables additional =
  CreateClusterMetadata_Tables {additional = additional}

instance Core.FromJSON CreateClusterMetadata_Tables
         where
        parseJSON
          = Core.withObject "CreateClusterMetadata_Tables"
              (\ o ->
                 CreateClusterMetadata_Tables Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON CreateClusterMetadata_Tables
         where
        toJSON CreateClusterMetadata_Tables{..}
          = Core.toJSON additional


-- | Request message for BigtableInstanceAdmin.CreateCluster.
--
-- /See:/ 'newCreateClusterRequest' smart constructor.
data CreateClusterRequest = CreateClusterRequest
    {
      -- | Required. The cluster to be created. Fields marked @OutputOnly@ must be left blank.
      cluster :: (Core.Maybe Cluster)
      -- | Required. The ID to be used when referring to the new cluster within its instance, e.g., just @mycluster@ rather than @projects\/myproject\/instances\/myinstance\/clusters\/mycluster@.
    , clusterId :: (Core.Maybe Core.Text)
      -- | Required. The unique name of the instance in which to create the new cluster. Values are of the form @projects\/{project}\/instances\/{instance}@.
    , parent :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateClusterRequest' with the minimum fields required to make a request.
newCreateClusterRequest 
    ::  CreateClusterRequest
newCreateClusterRequest =
  CreateClusterRequest
    {cluster = Core.Nothing, clusterId = Core.Nothing, parent = Core.Nothing}

instance Core.FromJSON CreateClusterRequest where
        parseJSON
          = Core.withObject "CreateClusterRequest"
              (\ o ->
                 CreateClusterRequest Core.<$>
                   (o Core..:? "cluster") Core.<*>
                     (o Core..:? "clusterId")
                     Core.<*> (o Core..:? "parent"))

instance Core.ToJSON CreateClusterRequest where
        toJSON CreateClusterRequest{..}
          = Core.object
              (Core.catMaybes
                 [("cluster" Core..=) Core.<$> cluster,
                  ("clusterId" Core..=) Core.<$> clusterId,
                  ("parent" Core..=) Core.<$> parent])


-- | The metadata for the Operation returned by CreateInstance.
--
-- /See:/ 'newCreateInstanceMetadata' smart constructor.
data CreateInstanceMetadata = CreateInstanceMetadata
    {
      -- | The time at which the operation failed or was completed successfully.
      finishTime :: (Core.Maybe Core.DateTime)
      -- | The request that prompted the initiation of this CreateInstance operation.
    , originalRequest :: (Core.Maybe CreateInstanceRequest)
      -- | The time at which the original request was received.
    , requestTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateInstanceMetadata' with the minimum fields required to make a request.
newCreateInstanceMetadata 
    ::  CreateInstanceMetadata
newCreateInstanceMetadata =
  CreateInstanceMetadata
    { finishTime = Core.Nothing
    , originalRequest = Core.Nothing
    , requestTime = Core.Nothing
    }

instance Core.FromJSON CreateInstanceMetadata where
        parseJSON
          = Core.withObject "CreateInstanceMetadata"
              (\ o ->
                 CreateInstanceMetadata Core.<$>
                   (o Core..:? "finishTime") Core.<*>
                     (o Core..:? "originalRequest")
                     Core.<*> (o Core..:? "requestTime"))

instance Core.ToJSON CreateInstanceMetadata where
        toJSON CreateInstanceMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("finishTime" Core..=) Core.<$> finishTime,
                  ("originalRequest" Core..=) Core.<$> originalRequest,
                  ("requestTime" Core..=) Core.<$> requestTime])


-- | Request message for BigtableInstanceAdmin.CreateInstance.
--
-- /See:/ 'newCreateInstanceRequest' smart constructor.
data CreateInstanceRequest = CreateInstanceRequest
    {
      -- | Required. The clusters to be created within the instance, mapped by desired cluster ID, e.g., just @mycluster@ rather than @projects\/myproject\/instances\/myinstance\/clusters\/mycluster@. Fields marked @OutputOnly@ must be left blank.
      clusters :: (Core.Maybe CreateInstanceRequest_Clusters)
      -- | Required. The instance to create. Fields marked @OutputOnly@ must be left blank.
    , instance' :: (Core.Maybe Instance)
      -- | Required. The ID to be used when referring to the new instance within its project, e.g., just @myinstance@ rather than @projects\/myproject\/instances\/myinstance@.
    , instanceId :: (Core.Maybe Core.Text)
      -- | Required. The unique name of the project in which to create the new instance. Values are of the form @projects\/{project}@.
    , parent :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateInstanceRequest' with the minimum fields required to make a request.
newCreateInstanceRequest 
    ::  CreateInstanceRequest
newCreateInstanceRequest =
  CreateInstanceRequest
    { clusters = Core.Nothing
    , instance' = Core.Nothing
    , instanceId = Core.Nothing
    , parent = Core.Nothing
    }

instance Core.FromJSON CreateInstanceRequest where
        parseJSON
          = Core.withObject "CreateInstanceRequest"
              (\ o ->
                 CreateInstanceRequest Core.<$>
                   (o Core..:? "clusters") Core.<*>
                     (o Core..:? "instance")
                     Core.<*> (o Core..:? "instanceId")
                     Core.<*> (o Core..:? "parent"))

instance Core.ToJSON CreateInstanceRequest where
        toJSON CreateInstanceRequest{..}
          = Core.object
              (Core.catMaybes
                 [("clusters" Core..=) Core.<$> clusters,
                  ("instance" Core..=) Core.<$> instance',
                  ("instanceId" Core..=) Core.<$> instanceId,
                  ("parent" Core..=) Core.<$> parent])


-- | Required. The clusters to be created within the instance, mapped by desired cluster ID, e.g., just @mycluster@ rather than @projects\/myproject\/instances\/myinstance\/clusters\/mycluster@. Fields marked @OutputOnly@ must be left blank.
--
-- /See:/ 'newCreateInstanceRequest_Clusters' smart constructor.
newtype CreateInstanceRequest_Clusters = CreateInstanceRequest_Clusters
    {
      -- | 
      additional :: (Core.HashMap Core.Text Cluster)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateInstanceRequest_Clusters' with the minimum fields required to make a request.
newCreateInstanceRequest_Clusters 
    ::  Core.HashMap Core.Text Cluster
       -- ^  See 'additional'.
    -> CreateInstanceRequest_Clusters
newCreateInstanceRequest_Clusters additional =
  CreateInstanceRequest_Clusters {additional = additional}

instance Core.FromJSON CreateInstanceRequest_Clusters
         where
        parseJSON
          = Core.withObject "CreateInstanceRequest_Clusters"
              (\ o ->
                 CreateInstanceRequest_Clusters Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON CreateInstanceRequest_Clusters
         where
        toJSON CreateInstanceRequest_Clusters{..}
          = Core.toJSON additional


-- | Request message for google.bigtable.admin.v2.BigtableTableAdmin.CreateTable
--
-- /See:/ 'newCreateTableRequest' smart constructor.
data CreateTableRequest = CreateTableRequest
    {
      -- | The optional list of row keys that will be used to initially split the table into several tablets (tablets are similar to HBase regions). Given two split keys, @s1@ and @s2@, three tablets will be created, spanning the key ranges: @[, s1), [s1, s2), [s2, )@. Example: * Row keys := @[\"a\", \"apple\", \"custom\", \"customer_1\", \"customer_2\",@ @\"other\", \"zz\"]@ * initial/split/keys := @[\"apple\", \"customer_1\", \"customer_2\", \"other\"]@ * Key assignment: - Tablet 1 @[, apple) => {\"a\"}.@ - Tablet 2 @[apple, customer_1) => {\"apple\", \"custom\"}.@ - Tablet 3 @[customer_1, customer_2) => {\"customer_1\"}.@ - Tablet 4 @[customer_2, other) => {\"customer_2\"}.@ - Tablet 5 @[other, ) => {\"other\", \"zz\"}.@
      initialSplits :: (Core.Maybe [Split])
      -- | Required. The Table to create.
    , table :: (Core.Maybe Table)
      -- | Required. The name by which the new table should be referred to within the parent instance, e.g., @foobar@ rather than @{parent}\/tables\/foobar@. Maximum 50 characters.
    , tableId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateTableRequest' with the minimum fields required to make a request.
newCreateTableRequest 
    ::  CreateTableRequest
newCreateTableRequest =
  CreateTableRequest
    {initialSplits = Core.Nothing, table = Core.Nothing, tableId = Core.Nothing}

instance Core.FromJSON CreateTableRequest where
        parseJSON
          = Core.withObject "CreateTableRequest"
              (\ o ->
                 CreateTableRequest Core.<$>
                   (o Core..:? "initialSplits") Core.<*>
                     (o Core..:? "table")
                     Core.<*> (o Core..:? "tableId"))

instance Core.ToJSON CreateTableRequest where
        toJSON CreateTableRequest{..}
          = Core.object
              (Core.catMaybes
                 [("initialSplits" Core..=) Core.<$> initialSplits,
                  ("table" Core..=) Core.<$> table,
                  ("tableId" Core..=) Core.<$> tableId])


-- | Data Boost is a serverless compute capability that lets you run high-throughput read jobs and queries on your Bigtable data, without impacting the performance of the clusters that handle your application traffic. Data Boost supports read-only use cases with single-cluster routing.
--
-- /See:/ 'newDataBoostIsolationReadOnly' smart constructor.
newtype DataBoostIsolationReadOnly = DataBoostIsolationReadOnly
    {
      -- | The Compute Billing Owner for this Data Boost App Profile.
      computeBillingOwner :: (Core.Maybe DataBoostIsolationReadOnly_ComputeBillingOwner)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataBoostIsolationReadOnly' with the minimum fields required to make a request.
newDataBoostIsolationReadOnly 
    ::  DataBoostIsolationReadOnly
newDataBoostIsolationReadOnly =
  DataBoostIsolationReadOnly {computeBillingOwner = Core.Nothing}

instance Core.FromJSON DataBoostIsolationReadOnly
         where
        parseJSON
          = Core.withObject "DataBoostIsolationReadOnly"
              (\ o ->
                 DataBoostIsolationReadOnly Core.<$>
                   (o Core..:? "computeBillingOwner"))

instance Core.ToJSON DataBoostIsolationReadOnly where
        toJSON DataBoostIsolationReadOnly{..}
          = Core.object
              (Core.catMaybes
                 [("computeBillingOwner" Core..=) Core.<$>
                    computeBillingOwner])


-- | Checks that all writes before the consistency token was generated in the same cluster are readable by Databoost.
--
-- /See:/ 'newDataBoostReadLocalWrites' smart constructor.
data DataBoostReadLocalWrites = DataBoostReadLocalWrites
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataBoostReadLocalWrites' with the minimum fields required to make a request.
newDataBoostReadLocalWrites 
    ::  DataBoostReadLocalWrites
newDataBoostReadLocalWrites = DataBoostReadLocalWrites

instance Core.FromJSON DataBoostReadLocalWrites where
        parseJSON
          = Core.withObject "DataBoostReadLocalWrites"
              (\ o -> Core.pure DataBoostReadLocalWrites)

instance Core.ToJSON DataBoostReadLocalWrites where
        toJSON = Core.const Core.emptyObject


-- | Request message for google.bigtable.admin.v2.BigtableTableAdmin.DropRowRange
--
-- /See:/ 'newDropRowRangeRequest' smart constructor.
data DropRowRangeRequest = DropRowRangeRequest
    {
      -- | Delete all rows in the table. Setting this to false is a no-op.
      deleteAllDataFromTable :: (Core.Maybe Core.Bool)
      -- | Delete all rows that start with this row key prefix. Prefix cannot be zero length.
    , rowKeyPrefix :: (Core.Maybe Core.Base64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DropRowRangeRequest' with the minimum fields required to make a request.
newDropRowRangeRequest 
    ::  DropRowRangeRequest
newDropRowRangeRequest =
  DropRowRangeRequest
    {deleteAllDataFromTable = Core.Nothing, rowKeyPrefix = Core.Nothing}

instance Core.FromJSON DropRowRangeRequest where
        parseJSON
          = Core.withObject "DropRowRangeRequest"
              (\ o ->
                 DropRowRangeRequest Core.<$>
                   (o Core..:? "deleteAllDataFromTable") Core.<*>
                     (o Core..:? "rowKeyPrefix"))

instance Core.ToJSON DropRowRangeRequest where
        toJSON DropRowRangeRequest{..}
          = Core.object
              (Core.catMaybes
                 [("deleteAllDataFromTable" Core..=) Core.<$>
                    deleteAllDataFromTable,
                  ("rowKeyPrefix" Core..=) Core.<$> rowKeyPrefix])


-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty 
    ::  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
        parseJSON
          = Core.withObject "Empty" (\ o -> Core.pure Empty)

instance Core.ToJSON Empty where
        toJSON = Core.const Core.emptyObject


-- | Cloud Key Management Service (Cloud KMS) settings for a CMEK-protected cluster.
--
-- /See:/ 'newEncryptionConfig' smart constructor.
newtype EncryptionConfig = EncryptionConfig
    {
      -- | Describes the Cloud KMS encryption key that will be used to protect the destination Bigtable cluster. The requirements for this key are: 1) The Cloud Bigtable service account associated with the project that contains this cluster must be granted the @cloudkms.cryptoKeyEncrypterDecrypter@ role on the CMEK key. 2) Only regional keys can be used and the region of the CMEK key must match the region of the cluster. Values are of the form @projects\/{project}\/locations\/{location}\/keyRings\/{keyring}\/cryptoKeys\/{key}@
      kmsKeyName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EncryptionConfig' with the minimum fields required to make a request.
newEncryptionConfig 
    ::  EncryptionConfig
newEncryptionConfig = EncryptionConfig {kmsKeyName = Core.Nothing}

instance Core.FromJSON EncryptionConfig where
        parseJSON
          = Core.withObject "EncryptionConfig"
              (\ o ->
                 EncryptionConfig Core.<$> (o Core..:? "kmsKeyName"))

instance Core.ToJSON EncryptionConfig where
        toJSON EncryptionConfig{..}
          = Core.object
              (Core.catMaybes
                 [("kmsKeyName" Core..=) Core.<$> kmsKeyName])


-- | Encryption information for a given resource. If this resource is protected with customer managed encryption, the in-use Cloud Key Management Service (Cloud KMS) key version is specified along with its status.
--
-- /See:/ 'newEncryptionInfo' smart constructor.
data EncryptionInfo = EncryptionInfo
    {
      -- | Output only. The status of encrypt\/decrypt calls on underlying data for this resource. Regardless of status, the existing data is always encrypted at rest.
      encryptionStatus :: (Core.Maybe Status)
      -- | Output only. The type of encryption used to protect this resource.
    , encryptionType :: (Core.Maybe EncryptionInfo_EncryptionType)
      -- | Output only. The version of the Cloud KMS key specified in the parent cluster that is in use for the data underlying this table.
    , kmsKeyVersion :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EncryptionInfo' with the minimum fields required to make a request.
newEncryptionInfo 
    ::  EncryptionInfo
newEncryptionInfo =
  EncryptionInfo
    { encryptionStatus = Core.Nothing
    , encryptionType = Core.Nothing
    , kmsKeyVersion = Core.Nothing
    }

instance Core.FromJSON EncryptionInfo where
        parseJSON
          = Core.withObject "EncryptionInfo"
              (\ o ->
                 EncryptionInfo Core.<$>
                   (o Core..:? "encryptionStatus") Core.<*>
                     (o Core..:? "encryptionType")
                     Core.<*> (o Core..:? "kmsKeyVersion"))

instance Core.ToJSON EncryptionInfo where
        toJSON EncryptionInfo{..}
          = Core.object
              (Core.catMaybes
                 [("encryptionStatus" Core..=) Core.<$>
                    encryptionStatus,
                  ("encryptionType" Core..=) Core.<$> encryptionType,
                  ("kmsKeyVersion" Core..=) Core.<$> kmsKeyVersion])


-- | Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https:\/\/github.com\/google\/cel-spec. Example (Comparison): title: \"Summary size limit\" description: \"Determines if a summary is less than 100 chars\" expression: \"document.summary.size() \< 100\" Example (Equality): title: \"Requestor is owner\" description: \"Determines if requestor is the document owner\" expression: \"document.owner == request.auth.claims.email\" Example (Logic): title: \"Public documents\" description: \"Determine whether the document should be publicly visible\" expression: \"document.type != \'private\' && document.type != \'internal\'\" Example (Data Manipulation): title: \"Notification string\" description: \"Create a notification string with a timestamp.\" expression: \"\'New message received at \' + string(document.create_time)\" The exact variables and functions that may be referenced within an expression are
-- determined by the service that evaluates it. See the service documentation for additional information.
--
-- /See:/ 'newExpr' smart constructor.
data Expr = Expr
    {
      -- | Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.
      description :: (Core.Maybe Core.Text)
      -- | Textual representation of an expression in Common Expression Language syntax.
    , expression :: (Core.Maybe Core.Text)
      -- | Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file.
    , location :: (Core.Maybe Core.Text)
      -- | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression.
    , title :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Expr' with the minimum fields required to make a request.
newExpr 
    ::  Expr
newExpr =
  Expr
    { description = Core.Nothing
    , expression = Core.Nothing
    , location = Core.Nothing
    , title = Core.Nothing
    }

instance Core.FromJSON Expr where
        parseJSON
          = Core.withObject "Expr"
              (\ o ->
                 Expr Core.<$>
                   (o Core..:? "description") Core.<*>
                     (o Core..:? "expression")
                     Core.<*> (o Core..:? "location")
                     Core.<*> (o Core..:? "title"))

instance Core.ToJSON Expr where
        toJSON Expr{..}
          = Core.object
              (Core.catMaybes
                 [("description" Core..=) Core.<$> description,
                  ("expression" Core..=) Core.<$> expression,
                  ("location" Core..=) Core.<$> location,
                  ("title" Core..=) Core.<$> title])


-- | Rule for determining which cells to delete during garbage collection.
--
-- /See:/ 'newGcRule' smart constructor.
data GcRule = GcRule
    {
      -- | Delete cells that would be deleted by every nested rule.
      intersection :: (Core.Maybe Intersection)
      -- | Delete cells in a column older than the given age. Values must be at least one millisecond, and will be truncated to microsecond granularity.
    , maxAge :: (Core.Maybe Core.Duration)
      -- | Delete all cells in a column except the most recent N.
    , maxNumVersions :: (Core.Maybe Core.Int32)
      -- | Delete cells that would be deleted by any nested rule.
    , union :: (Core.Maybe Union)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GcRule' with the minimum fields required to make a request.
newGcRule 
    ::  GcRule
newGcRule =
  GcRule
    { intersection = Core.Nothing
    , maxAge = Core.Nothing
    , maxNumVersions = Core.Nothing
    , union = Core.Nothing
    }

instance Core.FromJSON GcRule where
        parseJSON
          = Core.withObject "GcRule"
              (\ o ->
                 GcRule Core.<$>
                   (o Core..:? "intersection") Core.<*>
                     (o Core..:? "maxAge")
                     Core.<*> (o Core..:? "maxNumVersions")
                     Core.<*> (o Core..:? "union"))

instance Core.ToJSON GcRule where
        toJSON GcRule{..}
          = Core.object
              (Core.catMaybes
                 [("intersection" Core..=) Core.<$> intersection,
                  ("maxAge" Core..=) Core.<$> maxAge,
                  ("maxNumVersions" Core..=) Core.<$> maxNumVersions,
                  ("union" Core..=) Core.<$> union])


-- | Request message for google.bigtable.admin.v2.BigtableTableAdmin.GenerateConsistencyToken
--
-- /See:/ 'newGenerateConsistencyTokenRequest' smart constructor.
data GenerateConsistencyTokenRequest = GenerateConsistencyTokenRequest
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GenerateConsistencyTokenRequest' with the minimum fields required to make a request.
newGenerateConsistencyTokenRequest 
    ::  GenerateConsistencyTokenRequest
newGenerateConsistencyTokenRequest = GenerateConsistencyTokenRequest

instance Core.FromJSON
           GenerateConsistencyTokenRequest
         where
        parseJSON
          = Core.withObject "GenerateConsistencyTokenRequest"
              (\ o -> Core.pure GenerateConsistencyTokenRequest)

instance Core.ToJSON GenerateConsistencyTokenRequest
         where
        toJSON = Core.const Core.emptyObject


-- | Response message for google.bigtable.admin.v2.BigtableTableAdmin.GenerateConsistencyToken
--
-- /See:/ 'newGenerateConsistencyTokenResponse' smart constructor.
newtype GenerateConsistencyTokenResponse = GenerateConsistencyTokenResponse
    {
      -- | The generated consistency token.
      consistencyToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GenerateConsistencyTokenResponse' with the minimum fields required to make a request.
newGenerateConsistencyTokenResponse 
    ::  GenerateConsistencyTokenResponse
newGenerateConsistencyTokenResponse =
  GenerateConsistencyTokenResponse {consistencyToken = Core.Nothing}

instance Core.FromJSON
           GenerateConsistencyTokenResponse
         where
        parseJSON
          = Core.withObject "GenerateConsistencyTokenResponse"
              (\ o ->
                 GenerateConsistencyTokenResponse Core.<$>
                   (o Core..:? "consistencyToken"))

instance Core.ToJSON GenerateConsistencyTokenResponse
         where
        toJSON GenerateConsistencyTokenResponse{..}
          = Core.object
              (Core.catMaybes
                 [("consistencyToken" Core..=) Core.<$>
                    consistencyToken])


-- | Request message for @GetIamPolicy@ method.
--
-- /See:/ 'newGetIamPolicyRequest' smart constructor.
newtype GetIamPolicyRequest = GetIamPolicyRequest
    {
      -- | OPTIONAL: A @GetPolicyOptions@ object for specifying options to @GetIamPolicy@.
      options :: (Core.Maybe GetPolicyOptions)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetIamPolicyRequest' with the minimum fields required to make a request.
newGetIamPolicyRequest 
    ::  GetIamPolicyRequest
newGetIamPolicyRequest = GetIamPolicyRequest {options = Core.Nothing}

instance Core.FromJSON GetIamPolicyRequest where
        parseJSON
          = Core.withObject "GetIamPolicyRequest"
              (\ o ->
                 GetIamPolicyRequest Core.<$> (o Core..:? "options"))

instance Core.ToJSON GetIamPolicyRequest where
        toJSON GetIamPolicyRequest{..}
          = Core.object
              (Core.catMaybes
                 [("options" Core..=) Core.<$> options])


-- | Encapsulates settings provided to GetIamPolicy.
--
-- /See:/ 'newGetPolicyOptions' smart constructor.
newtype GetPolicyOptions = GetPolicyOptions
    {
      -- | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
      requestedPolicyVersion :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetPolicyOptions' with the minimum fields required to make a request.
newGetPolicyOptions 
    ::  GetPolicyOptions
newGetPolicyOptions = GetPolicyOptions {requestedPolicyVersion = Core.Nothing}

instance Core.FromJSON GetPolicyOptions where
        parseJSON
          = Core.withObject "GetPolicyOptions"
              (\ o ->
                 GetPolicyOptions Core.<$>
                   (o Core..:? "requestedPolicyVersion"))

instance Core.ToJSON GetPolicyOptions where
        toJSON GetPolicyOptions{..}
          = Core.object
              (Core.catMaybes
                 [("requestedPolicyVersion" Core..=) Core.<$>
                    requestedPolicyVersion])


-- | Subsets of a column family that are included in this AuthorizedView.
--
-- /See:/ 'newGoogleBigtableAdminV2AuthorizedViewFamilySubsets' smart constructor.
data GoogleBigtableAdminV2AuthorizedViewFamilySubsets = GoogleBigtableAdminV2AuthorizedViewFamilySubsets
    {
      -- | Prefixes for qualifiers to be included in the AuthorizedView. Every qualifier starting with one of these prefixes is included in the AuthorizedView. To provide access to all qualifiers, include the empty string as a prefix (\"\").
      qualifierPrefixes :: (Core.Maybe [Core.Base64])
      -- | Individual exact column qualifiers to be included in the AuthorizedView.
    , qualifiers :: (Core.Maybe [Core.Base64])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleBigtableAdminV2AuthorizedViewFamilySubsets' with the minimum fields required to make a request.
newGoogleBigtableAdminV2AuthorizedViewFamilySubsets 
    ::  GoogleBigtableAdminV2AuthorizedViewFamilySubsets
newGoogleBigtableAdminV2AuthorizedViewFamilySubsets =
  GoogleBigtableAdminV2AuthorizedViewFamilySubsets
    {qualifierPrefixes = Core.Nothing, qualifiers = Core.Nothing}

instance Core.FromJSON
           GoogleBigtableAdminV2AuthorizedViewFamilySubsets
         where
        parseJSON
          = Core.withObject
              "GoogleBigtableAdminV2AuthorizedViewFamilySubsets"
              (\ o ->
                 GoogleBigtableAdminV2AuthorizedViewFamilySubsets
                   Core.<$>
                   (o Core..:? "qualifierPrefixes") Core.<*>
                     (o Core..:? "qualifiers"))

instance Core.ToJSON
           GoogleBigtableAdminV2AuthorizedViewFamilySubsets
         where
        toJSON
          GoogleBigtableAdminV2AuthorizedViewFamilySubsets{..}
          = Core.object
              (Core.catMaybes
                 [("qualifierPrefixes" Core..=) Core.<$>
                    qualifierPrefixes,
                  ("qualifiers" Core..=) Core.<$> qualifiers])


-- | Defines a simple AuthorizedView that is a subset of the underlying Table.
--
-- /See:/ 'newGoogleBigtableAdminV2AuthorizedViewSubsetView' smart constructor.
data GoogleBigtableAdminV2AuthorizedViewSubsetView = GoogleBigtableAdminV2AuthorizedViewSubsetView
    {
      -- | Map from column family name to the columns in this family to be included in the AuthorizedView.
      familySubsets :: (Core.Maybe
   GoogleBigtableAdminV2AuthorizedViewSubsetView_FamilySubsets)
      -- | Row prefixes to be included in the AuthorizedView. To provide access to all rows, include the empty string as a prefix (\"\").
    , rowPrefixes :: (Core.Maybe [Core.Base64])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleBigtableAdminV2AuthorizedViewSubsetView' with the minimum fields required to make a request.
newGoogleBigtableAdminV2AuthorizedViewSubsetView 
    ::  GoogleBigtableAdminV2AuthorizedViewSubsetView
newGoogleBigtableAdminV2AuthorizedViewSubsetView =
  GoogleBigtableAdminV2AuthorizedViewSubsetView
    {familySubsets = Core.Nothing, rowPrefixes = Core.Nothing}

instance Core.FromJSON
           GoogleBigtableAdminV2AuthorizedViewSubsetView
         where
        parseJSON
          = Core.withObject
              "GoogleBigtableAdminV2AuthorizedViewSubsetView"
              (\ o ->
                 GoogleBigtableAdminV2AuthorizedViewSubsetView
                   Core.<$>
                   (o Core..:? "familySubsets") Core.<*>
                     (o Core..:? "rowPrefixes"))

instance Core.ToJSON
           GoogleBigtableAdminV2AuthorizedViewSubsetView
         where
        toJSON
          GoogleBigtableAdminV2AuthorizedViewSubsetView{..}
          = Core.object
              (Core.catMaybes
                 [("familySubsets" Core..=) Core.<$> familySubsets,
                  ("rowPrefixes" Core..=) Core.<$> rowPrefixes])


-- | Map from column family name to the columns in this family to be included in the AuthorizedView.
--
-- /See:/ 'newGoogleBigtableAdminV2AuthorizedViewSubsetView_FamilySubsets' smart constructor.
newtype GoogleBigtableAdminV2AuthorizedViewSubsetView_FamilySubsets = GoogleBigtableAdminV2AuthorizedViewSubsetView_FamilySubsets
    {
      -- | 
      additional :: (Core.HashMap Core.Text
   GoogleBigtableAdminV2AuthorizedViewFamilySubsets)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleBigtableAdminV2AuthorizedViewSubsetView_FamilySubsets' with the minimum fields required to make a request.
newGoogleBigtableAdminV2AuthorizedViewSubsetView_FamilySubsets 
    ::  Core.HashMap Core.Text GoogleBigtableAdminV2AuthorizedViewFamilySubsets
       -- ^  See 'additional'.
    -> GoogleBigtableAdminV2AuthorizedViewSubsetView_FamilySubsets
newGoogleBigtableAdminV2AuthorizedViewSubsetView_FamilySubsets additional =
  GoogleBigtableAdminV2AuthorizedViewSubsetView_FamilySubsets
    {additional = additional}

instance Core.FromJSON
           GoogleBigtableAdminV2AuthorizedViewSubsetView_FamilySubsets
         where
        parseJSON
          = Core.withObject
              "GoogleBigtableAdminV2AuthorizedViewSubsetView_FamilySubsets"
              (\ o ->
                 GoogleBigtableAdminV2AuthorizedViewSubsetView_FamilySubsets
                   Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON
           GoogleBigtableAdminV2AuthorizedViewSubsetView_FamilySubsets
         where
        toJSON
          GoogleBigtableAdminV2AuthorizedViewSubsetView_FamilySubsets{..}
          = Core.toJSON additional


-- | A value that combines incremental updates into a summarized value. Data is never directly written or read using type @Aggregate@. Writes provide either the @input_type@ or @state_type@, and reads always return the @state_type@ .
--
-- /See:/ 'newGoogleBigtableAdminV2TypeAggregate' smart constructor.
data GoogleBigtableAdminV2TypeAggregate = GoogleBigtableAdminV2TypeAggregate
    {
      -- | HyperLogLogPlusPlusUniqueCount aggregator.
      hllppUniqueCount :: (Core.Maybe
   GoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount)
      -- | Type of the inputs that are accumulated by this @Aggregate@. Use @AddInput@ mutations to accumulate new inputs.
    , inputType :: (Core.Maybe Type)
      -- | Max aggregator.
    , max :: (Core.Maybe GoogleBigtableAdminV2TypeAggregateMax)
      -- | Min aggregator.
    , min :: (Core.Maybe GoogleBigtableAdminV2TypeAggregateMin)
      -- | Output only. Type that holds the internal accumulator state for the @Aggregate@. This is a function of the @input_type@ and @aggregator@ chosen.
    , stateType :: (Core.Maybe Type)
      -- | Sum aggregator.
    , sum :: (Core.Maybe GoogleBigtableAdminV2TypeAggregateSum)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleBigtableAdminV2TypeAggregate' with the minimum fields required to make a request.
newGoogleBigtableAdminV2TypeAggregate 
    ::  GoogleBigtableAdminV2TypeAggregate
newGoogleBigtableAdminV2TypeAggregate =
  GoogleBigtableAdminV2TypeAggregate
    { hllppUniqueCount = Core.Nothing
    , inputType = Core.Nothing
    , max = Core.Nothing
    , min = Core.Nothing
    , stateType = Core.Nothing
    , sum = Core.Nothing
    }

instance Core.FromJSON
           GoogleBigtableAdminV2TypeAggregate
         where
        parseJSON
          = Core.withObject
              "GoogleBigtableAdminV2TypeAggregate"
              (\ o ->
                 GoogleBigtableAdminV2TypeAggregate Core.<$>
                   (o Core..:? "hllppUniqueCount") Core.<*>
                     (o Core..:? "inputType")
                     Core.<*> (o Core..:? "max")
                     Core.<*> (o Core..:? "min")
                     Core.<*> (o Core..:? "stateType")
                     Core.<*> (o Core..:? "sum"))

instance Core.ToJSON
           GoogleBigtableAdminV2TypeAggregate
         where
        toJSON GoogleBigtableAdminV2TypeAggregate{..}
          = Core.object
              (Core.catMaybes
                 [("hllppUniqueCount" Core..=) Core.<$>
                    hllppUniqueCount,
                  ("inputType" Core..=) Core.<$> inputType,
                  ("max" Core..=) Core.<$> max,
                  ("min" Core..=) Core.<$> min,
                  ("stateType" Core..=) Core.<$> stateType,
                  ("sum" Core..=) Core.<$> sum])


-- | Computes an approximate unique count over the input values. When using raw data as input, be careful to use a consistent encoding. Otherwise the same value encoded differently could count more than once, or two distinct values could count as identical. Input: Any, or omit for Raw State: TBD Special state conversions: @Int64@ (the unique count estimate)
--
-- /See:/ 'newGoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount' smart constructor.
data GoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount = GoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount' with the minimum fields required to make a request.
newGoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount 
    ::  GoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount
newGoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount =
  GoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount

instance Core.FromJSON
           GoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount
         where
        parseJSON
          = Core.withObject
              "GoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount"
              (\ o ->
                 Core.pure
                   GoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount)

instance Core.ToJSON
           GoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount
         where
        toJSON = Core.const Core.emptyObject


-- | Computes the max of the input values. Allowed input: @Int64@ State: same as input
--
-- /See:/ 'newGoogleBigtableAdminV2TypeAggregateMax' smart constructor.
data GoogleBigtableAdminV2TypeAggregateMax = GoogleBigtableAdminV2TypeAggregateMax
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleBigtableAdminV2TypeAggregateMax' with the minimum fields required to make a request.
newGoogleBigtableAdminV2TypeAggregateMax 
    ::  GoogleBigtableAdminV2TypeAggregateMax
newGoogleBigtableAdminV2TypeAggregateMax = GoogleBigtableAdminV2TypeAggregateMax

instance Core.FromJSON
           GoogleBigtableAdminV2TypeAggregateMax
         where
        parseJSON
          = Core.withObject
              "GoogleBigtableAdminV2TypeAggregateMax"
              (\ o ->
                 Core.pure GoogleBigtableAdminV2TypeAggregateMax)

instance Core.ToJSON
           GoogleBigtableAdminV2TypeAggregateMax
         where
        toJSON = Core.const Core.emptyObject


-- | Computes the min of the input values. Allowed input: @Int64@ State: same as input
--
-- /See:/ 'newGoogleBigtableAdminV2TypeAggregateMin' smart constructor.
data GoogleBigtableAdminV2TypeAggregateMin = GoogleBigtableAdminV2TypeAggregateMin
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleBigtableAdminV2TypeAggregateMin' with the minimum fields required to make a request.
newGoogleBigtableAdminV2TypeAggregateMin 
    ::  GoogleBigtableAdminV2TypeAggregateMin
newGoogleBigtableAdminV2TypeAggregateMin = GoogleBigtableAdminV2TypeAggregateMin

instance Core.FromJSON
           GoogleBigtableAdminV2TypeAggregateMin
         where
        parseJSON
          = Core.withObject
              "GoogleBigtableAdminV2TypeAggregateMin"
              (\ o ->
                 Core.pure GoogleBigtableAdminV2TypeAggregateMin)

instance Core.ToJSON
           GoogleBigtableAdminV2TypeAggregateMin
         where
        toJSON = Core.const Core.emptyObject


-- | Computes the sum of the input values. Allowed input: @Int64@ State: same as input
--
-- /See:/ 'newGoogleBigtableAdminV2TypeAggregateSum' smart constructor.
data GoogleBigtableAdminV2TypeAggregateSum = GoogleBigtableAdminV2TypeAggregateSum
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleBigtableAdminV2TypeAggregateSum' with the minimum fields required to make a request.
newGoogleBigtableAdminV2TypeAggregateSum 
    ::  GoogleBigtableAdminV2TypeAggregateSum
newGoogleBigtableAdminV2TypeAggregateSum = GoogleBigtableAdminV2TypeAggregateSum

instance Core.FromJSON
           GoogleBigtableAdminV2TypeAggregateSum
         where
        parseJSON
          = Core.withObject
              "GoogleBigtableAdminV2TypeAggregateSum"
              (\ o ->
                 Core.pure GoogleBigtableAdminV2TypeAggregateSum)

instance Core.ToJSON
           GoogleBigtableAdminV2TypeAggregateSum
         where
        toJSON = Core.const Core.emptyObject


-- | An ordered list of elements of a given type. Values of type @Array@ are stored in @Value.array_value@.
--
-- /See:/ 'newGoogleBigtableAdminV2TypeArray' smart constructor.
newtype GoogleBigtableAdminV2TypeArray = GoogleBigtableAdminV2TypeArray
    {
      -- | The type of the elements in the array. This must not be @Array@.
      elementType :: (Core.Maybe Type)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleBigtableAdminV2TypeArray' with the minimum fields required to make a request.
newGoogleBigtableAdminV2TypeArray 
    ::  GoogleBigtableAdminV2TypeArray
newGoogleBigtableAdminV2TypeArray =
  GoogleBigtableAdminV2TypeArray {elementType = Core.Nothing}

instance Core.FromJSON GoogleBigtableAdminV2TypeArray
         where
        parseJSON
          = Core.withObject "GoogleBigtableAdminV2TypeArray"
              (\ o ->
                 GoogleBigtableAdminV2TypeArray Core.<$>
                   (o Core..:? "elementType"))

instance Core.ToJSON GoogleBigtableAdminV2TypeArray
         where
        toJSON GoogleBigtableAdminV2TypeArray{..}
          = Core.object
              (Core.catMaybes
                 [("elementType" Core..=) Core.<$> elementType])


-- | bool Values of type @Bool@ are stored in @Value.bool_value@.
--
-- /See:/ 'newGoogleBigtableAdminV2TypeBool' smart constructor.
data GoogleBigtableAdminV2TypeBool = GoogleBigtableAdminV2TypeBool
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleBigtableAdminV2TypeBool' with the minimum fields required to make a request.
newGoogleBigtableAdminV2TypeBool 
    ::  GoogleBigtableAdminV2TypeBool
newGoogleBigtableAdminV2TypeBool = GoogleBigtableAdminV2TypeBool

instance Core.FromJSON GoogleBigtableAdminV2TypeBool
         where
        parseJSON
          = Core.withObject "GoogleBigtableAdminV2TypeBool"
              (\ o -> Core.pure GoogleBigtableAdminV2TypeBool)

instance Core.ToJSON GoogleBigtableAdminV2TypeBool
         where
        toJSON = Core.const Core.emptyObject


-- | Bytes Values of type @Bytes@ are stored in @Value.bytes_value@.
--
-- /See:/ 'newGoogleBigtableAdminV2TypeBytes' smart constructor.
newtype GoogleBigtableAdminV2TypeBytes = GoogleBigtableAdminV2TypeBytes
    {
      -- | The encoding to use when converting to or from lower level types.
      encoding :: (Core.Maybe GoogleBigtableAdminV2TypeBytesEncoding)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleBigtableAdminV2TypeBytes' with the minimum fields required to make a request.
newGoogleBigtableAdminV2TypeBytes 
    ::  GoogleBigtableAdminV2TypeBytes
newGoogleBigtableAdminV2TypeBytes =
  GoogleBigtableAdminV2TypeBytes {encoding = Core.Nothing}

instance Core.FromJSON GoogleBigtableAdminV2TypeBytes
         where
        parseJSON
          = Core.withObject "GoogleBigtableAdminV2TypeBytes"
              (\ o ->
                 GoogleBigtableAdminV2TypeBytes Core.<$>
                   (o Core..:? "encoding"))

instance Core.ToJSON GoogleBigtableAdminV2TypeBytes
         where
        toJSON GoogleBigtableAdminV2TypeBytes{..}
          = Core.object
              (Core.catMaybes
                 [("encoding" Core..=) Core.<$> encoding])


-- | Rules used to convert to or from lower level types.
--
-- /See:/ 'newGoogleBigtableAdminV2TypeBytesEncoding' smart constructor.
newtype GoogleBigtableAdminV2TypeBytesEncoding = GoogleBigtableAdminV2TypeBytesEncoding
    {
      -- | Use @Raw@ encoding.
      raw :: (Core.Maybe GoogleBigtableAdminV2TypeBytesEncodingRaw)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleBigtableAdminV2TypeBytesEncoding' with the minimum fields required to make a request.
newGoogleBigtableAdminV2TypeBytesEncoding 
    ::  GoogleBigtableAdminV2TypeBytesEncoding
newGoogleBigtableAdminV2TypeBytesEncoding =
  GoogleBigtableAdminV2TypeBytesEncoding {raw = Core.Nothing}

instance Core.FromJSON
           GoogleBigtableAdminV2TypeBytesEncoding
         where
        parseJSON
          = Core.withObject
              "GoogleBigtableAdminV2TypeBytesEncoding"
              (\ o ->
                 GoogleBigtableAdminV2TypeBytesEncoding Core.<$>
                   (o Core..:? "raw"))

instance Core.ToJSON
           GoogleBigtableAdminV2TypeBytesEncoding
         where
        toJSON GoogleBigtableAdminV2TypeBytesEncoding{..}
          = Core.object
              (Core.catMaybes [("raw" Core..=) Core.<$> raw])


-- | Leaves the value as-is. Sorted mode: all values are supported. Distinct mode: all values are supported.
--
-- /See:/ 'newGoogleBigtableAdminV2TypeBytesEncodingRaw' smart constructor.
data GoogleBigtableAdminV2TypeBytesEncodingRaw = GoogleBigtableAdminV2TypeBytesEncodingRaw
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleBigtableAdminV2TypeBytesEncodingRaw' with the minimum fields required to make a request.
newGoogleBigtableAdminV2TypeBytesEncodingRaw 
    ::  GoogleBigtableAdminV2TypeBytesEncodingRaw
newGoogleBigtableAdminV2TypeBytesEncodingRaw =
  GoogleBigtableAdminV2TypeBytesEncodingRaw

instance Core.FromJSON
           GoogleBigtableAdminV2TypeBytesEncodingRaw
         where
        parseJSON
          = Core.withObject
              "GoogleBigtableAdminV2TypeBytesEncodingRaw"
              (\ o ->
                 Core.pure GoogleBigtableAdminV2TypeBytesEncodingRaw)

instance Core.ToJSON
           GoogleBigtableAdminV2TypeBytesEncodingRaw
         where
        toJSON = Core.const Core.emptyObject


-- | Date Values of type @Date@ are stored in @Value.date_value@.
--
-- /See:/ 'newGoogleBigtableAdminV2TypeDate' smart constructor.
data GoogleBigtableAdminV2TypeDate = GoogleBigtableAdminV2TypeDate
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleBigtableAdminV2TypeDate' with the minimum fields required to make a request.
newGoogleBigtableAdminV2TypeDate 
    ::  GoogleBigtableAdminV2TypeDate
newGoogleBigtableAdminV2TypeDate = GoogleBigtableAdminV2TypeDate

instance Core.FromJSON GoogleBigtableAdminV2TypeDate
         where
        parseJSON
          = Core.withObject "GoogleBigtableAdminV2TypeDate"
              (\ o -> Core.pure GoogleBigtableAdminV2TypeDate)

instance Core.ToJSON GoogleBigtableAdminV2TypeDate
         where
        toJSON = Core.const Core.emptyObject


-- | Float32 Values of type @Float32@ are stored in @Value.float_value@.
--
-- /See:/ 'newGoogleBigtableAdminV2TypeFloat32' smart constructor.
data GoogleBigtableAdminV2TypeFloat32 = GoogleBigtableAdminV2TypeFloat32
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleBigtableAdminV2TypeFloat32' with the minimum fields required to make a request.
newGoogleBigtableAdminV2TypeFloat32 
    ::  GoogleBigtableAdminV2TypeFloat32
newGoogleBigtableAdminV2TypeFloat32 = GoogleBigtableAdminV2TypeFloat32

instance Core.FromJSON
           GoogleBigtableAdminV2TypeFloat32
         where
        parseJSON
          = Core.withObject "GoogleBigtableAdminV2TypeFloat32"
              (\ o -> Core.pure GoogleBigtableAdminV2TypeFloat32)

instance Core.ToJSON GoogleBigtableAdminV2TypeFloat32
         where
        toJSON = Core.const Core.emptyObject


-- | Float64 Values of type @Float64@ are stored in @Value.float_value@.
--
-- /See:/ 'newGoogleBigtableAdminV2TypeFloat64' smart constructor.
data GoogleBigtableAdminV2TypeFloat64 = GoogleBigtableAdminV2TypeFloat64
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleBigtableAdminV2TypeFloat64' with the minimum fields required to make a request.
newGoogleBigtableAdminV2TypeFloat64 
    ::  GoogleBigtableAdminV2TypeFloat64
newGoogleBigtableAdminV2TypeFloat64 = GoogleBigtableAdminV2TypeFloat64

instance Core.FromJSON
           GoogleBigtableAdminV2TypeFloat64
         where
        parseJSON
          = Core.withObject "GoogleBigtableAdminV2TypeFloat64"
              (\ o -> Core.pure GoogleBigtableAdminV2TypeFloat64)

instance Core.ToJSON GoogleBigtableAdminV2TypeFloat64
         where
        toJSON = Core.const Core.emptyObject


-- | Int64 Values of type @Int64@ are stored in @Value.int_value@.
--
-- /See:/ 'newGoogleBigtableAdminV2TypeInt64' smart constructor.
newtype GoogleBigtableAdminV2TypeInt64 = GoogleBigtableAdminV2TypeInt64
    {
      -- | The encoding to use when converting to or from lower level types.
      encoding :: (Core.Maybe GoogleBigtableAdminV2TypeInt64Encoding)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleBigtableAdminV2TypeInt64' with the minimum fields required to make a request.
newGoogleBigtableAdminV2TypeInt64 
    ::  GoogleBigtableAdminV2TypeInt64
newGoogleBigtableAdminV2TypeInt64 =
  GoogleBigtableAdminV2TypeInt64 {encoding = Core.Nothing}

instance Core.FromJSON GoogleBigtableAdminV2TypeInt64
         where
        parseJSON
          = Core.withObject "GoogleBigtableAdminV2TypeInt64"
              (\ o ->
                 GoogleBigtableAdminV2TypeInt64 Core.<$>
                   (o Core..:? "encoding"))

instance Core.ToJSON GoogleBigtableAdminV2TypeInt64
         where
        toJSON GoogleBigtableAdminV2TypeInt64{..}
          = Core.object
              (Core.catMaybes
                 [("encoding" Core..=) Core.<$> encoding])


-- | Rules used to convert to or from lower level types.
--
-- /See:/ 'newGoogleBigtableAdminV2TypeInt64Encoding' smart constructor.
newtype GoogleBigtableAdminV2TypeInt64Encoding = GoogleBigtableAdminV2TypeInt64Encoding
    {
      -- | Use @BigEndianBytes@ encoding.
      bigEndianBytes :: (Core.Maybe GoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleBigtableAdminV2TypeInt64Encoding' with the minimum fields required to make a request.
newGoogleBigtableAdminV2TypeInt64Encoding 
    ::  GoogleBigtableAdminV2TypeInt64Encoding
newGoogleBigtableAdminV2TypeInt64Encoding =
  GoogleBigtableAdminV2TypeInt64Encoding {bigEndianBytes = Core.Nothing}

instance Core.FromJSON
           GoogleBigtableAdminV2TypeInt64Encoding
         where
        parseJSON
          = Core.withObject
              "GoogleBigtableAdminV2TypeInt64Encoding"
              (\ o ->
                 GoogleBigtableAdminV2TypeInt64Encoding Core.<$>
                   (o Core..:? "bigEndianBytes"))

instance Core.ToJSON
           GoogleBigtableAdminV2TypeInt64Encoding
         where
        toJSON GoogleBigtableAdminV2TypeInt64Encoding{..}
          = Core.object
              (Core.catMaybes
                 [("bigEndianBytes" Core..=) Core.<$> bigEndianBytes])


-- | Encodes the value as an 8-byte big-endian two\'s complement value. Sorted mode: non-negative values are supported. Distinct mode: all values are supported. Compatible with: - BigQuery @BINARY@ encoding - HBase @Bytes.toBytes@ - Java @ByteBuffer.putLong()@ with @ByteOrder.BIG_ENDIAN@
--
-- /See:/ 'newGoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes' smart constructor.
newtype GoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes = GoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes
    {
      -- | Deprecated: ignored if set.
      bytesType :: (Core.Maybe GoogleBigtableAdminV2TypeBytes)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes' with the minimum fields required to make a request.
newGoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes 
    ::  GoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes
newGoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes =
  GoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes
    {bytesType = Core.Nothing}

instance Core.FromJSON
           GoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes
         where
        parseJSON
          = Core.withObject
              "GoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes"
              (\ o ->
                 GoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes
                   Core.<$> (o Core..:? "bytesType"))

instance Core.ToJSON
           GoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes
         where
        toJSON
          GoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes{..}
          = Core.object
              (Core.catMaybes
                 [("bytesType" Core..=) Core.<$> bytesType])


-- | A mapping of keys to values of a given type. Values of type @Map@ are stored in a @Value.array_value@ where each entry is another @Value.array_value@ with two elements (the key and the value, in that order). Normally encoded Map values won\'t have repeated keys, however, clients are expected to handle the case in which they do. If the same key appears multiple times, the /last/ value takes precedence.
--
-- /See:/ 'newGoogleBigtableAdminV2TypeMap' smart constructor.
data GoogleBigtableAdminV2TypeMap = GoogleBigtableAdminV2TypeMap
    {
      -- | The type of a map key. Only @Bytes@, @String@, and @Int64@ are allowed as key types.
      keyType :: (Core.Maybe Type)
      -- | The type of the values in a map.
    , valueType :: (Core.Maybe Type)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleBigtableAdminV2TypeMap' with the minimum fields required to make a request.
newGoogleBigtableAdminV2TypeMap 
    ::  GoogleBigtableAdminV2TypeMap
newGoogleBigtableAdminV2TypeMap =
  GoogleBigtableAdminV2TypeMap
    {keyType = Core.Nothing, valueType = Core.Nothing}

instance Core.FromJSON GoogleBigtableAdminV2TypeMap
         where
        parseJSON
          = Core.withObject "GoogleBigtableAdminV2TypeMap"
              (\ o ->
                 GoogleBigtableAdminV2TypeMap Core.<$>
                   (o Core..:? "keyType") Core.<*>
                     (o Core..:? "valueType"))

instance Core.ToJSON GoogleBigtableAdminV2TypeMap
         where
        toJSON GoogleBigtableAdminV2TypeMap{..}
          = Core.object
              (Core.catMaybes
                 [("keyType" Core..=) Core.<$> keyType,
                  ("valueType" Core..=) Core.<$> valueType])


-- | String Values of type @String@ are stored in @Value.string_value@.
--
-- /See:/ 'newGoogleBigtableAdminV2TypeString' smart constructor.
newtype GoogleBigtableAdminV2TypeString = GoogleBigtableAdminV2TypeString
    {
      -- | The encoding to use when converting to or from lower level types.
      encoding :: (Core.Maybe GoogleBigtableAdminV2TypeStringEncoding)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleBigtableAdminV2TypeString' with the minimum fields required to make a request.
newGoogleBigtableAdminV2TypeString 
    ::  GoogleBigtableAdminV2TypeString
newGoogleBigtableAdminV2TypeString =
  GoogleBigtableAdminV2TypeString {encoding = Core.Nothing}

instance Core.FromJSON
           GoogleBigtableAdminV2TypeString
         where
        parseJSON
          = Core.withObject "GoogleBigtableAdminV2TypeString"
              (\ o ->
                 GoogleBigtableAdminV2TypeString Core.<$>
                   (o Core..:? "encoding"))

instance Core.ToJSON GoogleBigtableAdminV2TypeString
         where
        toJSON GoogleBigtableAdminV2TypeString{..}
          = Core.object
              (Core.catMaybes
                 [("encoding" Core..=) Core.<$> encoding])


-- | Rules used to convert to or from lower level types.
--
-- /See:/ 'newGoogleBigtableAdminV2TypeStringEncoding' smart constructor.
data GoogleBigtableAdminV2TypeStringEncoding = GoogleBigtableAdminV2TypeStringEncoding
    {
      -- | Use @Utf8Bytes@ encoding.
      utf8Bytes :: (Core.Maybe GoogleBigtableAdminV2TypeStringEncodingUtf8Bytes)
      -- | Deprecated: if set, converts to an empty @utf8_bytes@.
    , utf8Raw :: (Core.Maybe GoogleBigtableAdminV2TypeStringEncodingUtf8Raw)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleBigtableAdminV2TypeStringEncoding' with the minimum fields required to make a request.
newGoogleBigtableAdminV2TypeStringEncoding 
    ::  GoogleBigtableAdminV2TypeStringEncoding
newGoogleBigtableAdminV2TypeStringEncoding =
  GoogleBigtableAdminV2TypeStringEncoding
    {utf8Bytes = Core.Nothing, utf8Raw = Core.Nothing}

instance Core.FromJSON
           GoogleBigtableAdminV2TypeStringEncoding
         where
        parseJSON
          = Core.withObject
              "GoogleBigtableAdminV2TypeStringEncoding"
              (\ o ->
                 GoogleBigtableAdminV2TypeStringEncoding Core.<$>
                   (o Core..:? "utf8Bytes") Core.<*>
                     (o Core..:? "utf8Raw"))

instance Core.ToJSON
           GoogleBigtableAdminV2TypeStringEncoding
         where
        toJSON GoogleBigtableAdminV2TypeStringEncoding{..}
          = Core.object
              (Core.catMaybes
                 [("utf8Bytes" Core..=) Core.<$> utf8Bytes,
                  ("utf8Raw" Core..=) Core.<$> utf8Raw])


-- | UTF-8 encoding. Sorted mode: - All values are supported. - Code point order is preserved. Distinct mode: all values are supported. Compatible with: - BigQuery @TEXT@ encoding - HBase @Bytes.toBytes@ - Java @String#getBytes(StandardCharsets.UTF_8)@
--
-- /See:/ 'newGoogleBigtableAdminV2TypeStringEncodingUtf8Bytes' smart constructor.
data GoogleBigtableAdminV2TypeStringEncodingUtf8Bytes = GoogleBigtableAdminV2TypeStringEncodingUtf8Bytes
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleBigtableAdminV2TypeStringEncodingUtf8Bytes' with the minimum fields required to make a request.
newGoogleBigtableAdminV2TypeStringEncodingUtf8Bytes 
    ::  GoogleBigtableAdminV2TypeStringEncodingUtf8Bytes
newGoogleBigtableAdminV2TypeStringEncodingUtf8Bytes =
  GoogleBigtableAdminV2TypeStringEncodingUtf8Bytes

instance Core.FromJSON
           GoogleBigtableAdminV2TypeStringEncodingUtf8Bytes
         where
        parseJSON
          = Core.withObject
              "GoogleBigtableAdminV2TypeStringEncodingUtf8Bytes"
              (\ o ->
                 Core.pure
                   GoogleBigtableAdminV2TypeStringEncodingUtf8Bytes)

instance Core.ToJSON
           GoogleBigtableAdminV2TypeStringEncodingUtf8Bytes
         where
        toJSON = Core.const Core.emptyObject


-- | Deprecated: prefer the equivalent @Utf8Bytes@.
--
-- /See:/ 'newGoogleBigtableAdminV2TypeStringEncodingUtf8Raw' smart constructor.
data GoogleBigtableAdminV2TypeStringEncodingUtf8Raw = GoogleBigtableAdminV2TypeStringEncodingUtf8Raw
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleBigtableAdminV2TypeStringEncodingUtf8Raw' with the minimum fields required to make a request.
newGoogleBigtableAdminV2TypeStringEncodingUtf8Raw 
    ::  GoogleBigtableAdminV2TypeStringEncodingUtf8Raw
newGoogleBigtableAdminV2TypeStringEncodingUtf8Raw =
  GoogleBigtableAdminV2TypeStringEncodingUtf8Raw

instance Core.FromJSON
           GoogleBigtableAdminV2TypeStringEncodingUtf8Raw
         where
        parseJSON
          = Core.withObject
              "GoogleBigtableAdminV2TypeStringEncodingUtf8Raw"
              (\ o ->
                 Core.pure
                   GoogleBigtableAdminV2TypeStringEncodingUtf8Raw)

instance Core.ToJSON
           GoogleBigtableAdminV2TypeStringEncodingUtf8Raw
         where
        toJSON = Core.const Core.emptyObject


-- | A structured data value, consisting of fields which map to dynamically typed values. Values of type @Struct@ are stored in @Value.array_value@ where entries are in the same order and number as @field_types@.
--
-- /See:/ 'newGoogleBigtableAdminV2TypeStruct' smart constructor.
newtype GoogleBigtableAdminV2TypeStruct = GoogleBigtableAdminV2TypeStruct
    {
      -- | The names and types of the fields in this struct.
      fields :: (Core.Maybe [GoogleBigtableAdminV2TypeStructField])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleBigtableAdminV2TypeStruct' with the minimum fields required to make a request.
newGoogleBigtableAdminV2TypeStruct 
    ::  GoogleBigtableAdminV2TypeStruct
newGoogleBigtableAdminV2TypeStruct =
  GoogleBigtableAdminV2TypeStruct {fields = Core.Nothing}

instance Core.FromJSON
           GoogleBigtableAdminV2TypeStruct
         where
        parseJSON
          = Core.withObject "GoogleBigtableAdminV2TypeStruct"
              (\ o ->
                 GoogleBigtableAdminV2TypeStruct Core.<$>
                   (o Core..:? "fields"))

instance Core.ToJSON GoogleBigtableAdminV2TypeStruct
         where
        toJSON GoogleBigtableAdminV2TypeStruct{..}
          = Core.object
              (Core.catMaybes [("fields" Core..=) Core.<$> fields])


-- | A struct field and its type.
--
-- /See:/ 'newGoogleBigtableAdminV2TypeStructField' smart constructor.
data GoogleBigtableAdminV2TypeStructField = GoogleBigtableAdminV2TypeStructField
    {
      -- | The field name (optional). Fields without a @field_name@ are considered anonymous and cannot be referenced by name.
      fieldName :: (Core.Maybe Core.Text)
      -- | The type of values in this field.
    , type' :: (Core.Maybe Type)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleBigtableAdminV2TypeStructField' with the minimum fields required to make a request.
newGoogleBigtableAdminV2TypeStructField 
    ::  GoogleBigtableAdminV2TypeStructField
newGoogleBigtableAdminV2TypeStructField =
  GoogleBigtableAdminV2TypeStructField
    {fieldName = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON
           GoogleBigtableAdminV2TypeStructField
         where
        parseJSON
          = Core.withObject
              "GoogleBigtableAdminV2TypeStructField"
              (\ o ->
                 GoogleBigtableAdminV2TypeStructField Core.<$>
                   (o Core..:? "fieldName") Core.<*>
                     (o Core..:? "type"))

instance Core.ToJSON
           GoogleBigtableAdminV2TypeStructField
         where
        toJSON GoogleBigtableAdminV2TypeStructField{..}
          = Core.object
              (Core.catMaybes
                 [("fieldName" Core..=) Core.<$> fieldName,
                  ("type" Core..=) Core.<$> type'])


-- | Timestamp Values of type @Timestamp@ are stored in @Value.timestamp_value@.
--
-- /See:/ 'newGoogleBigtableAdminV2TypeTimestamp' smart constructor.
data GoogleBigtableAdminV2TypeTimestamp = GoogleBigtableAdminV2TypeTimestamp
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleBigtableAdminV2TypeTimestamp' with the minimum fields required to make a request.
newGoogleBigtableAdminV2TypeTimestamp 
    ::  GoogleBigtableAdminV2TypeTimestamp
newGoogleBigtableAdminV2TypeTimestamp = GoogleBigtableAdminV2TypeTimestamp

instance Core.FromJSON
           GoogleBigtableAdminV2TypeTimestamp
         where
        parseJSON
          = Core.withObject
              "GoogleBigtableAdminV2TypeTimestamp"
              (\ o -> Core.pure GoogleBigtableAdminV2TypeTimestamp)

instance Core.ToJSON
           GoogleBigtableAdminV2TypeTimestamp
         where
        toJSON = Core.const Core.emptyObject


-- | A tablet is a defined by a start and end key and is explained in https:\/\/cloud.google.com\/bigtable\/docs\/overview#architecture and https:\/\/cloud.google.com\/bigtable\/docs\/performance#optimization. A Hot tablet is a tablet that exhibits high average cpu usage during the time interval from start time to end time.
--
-- /See:/ 'newHotTablet' smart constructor.
data HotTablet = HotTablet
    {
      -- | Tablet End Key (inclusive).
      endKey :: (Core.Maybe Core.Text)
      -- | Output only. The end time of the hot tablet.
    , endTime :: (Core.Maybe Core.DateTime)
      -- | The unique name of the hot tablet. Values are of the form @projects\/{project}\/instances\/{instance}\/clusters\/{cluster}\/hotTablets\/[a-zA-Z0-9_-]*@.
    , name :: (Core.Maybe Core.Text)
      -- | Output only. The average CPU usage spent by a node on this tablet over the start/time to end/time time range. The percentage is the amount of CPU used by the node to serve the tablet, from 0% (tablet was not interacted with) to 100% (the node spent all cycles serving the hot tablet).
    , nodeCpuUsagePercent :: (Core.Maybe Core.Double)
      -- | Tablet Start Key (inclusive).
    , startKey :: (Core.Maybe Core.Text)
      -- | Output only. The start time of the hot tablet.
    , startTime :: (Core.Maybe Core.DateTime)
      -- | Name of the table that contains the tablet. Values are of the form @projects\/{project}\/instances\/{instance}\/tables\/_a-zA-Z0-9*@.
    , tableName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HotTablet' with the minimum fields required to make a request.
newHotTablet 
    ::  HotTablet
newHotTablet =
  HotTablet
    { endKey = Core.Nothing
    , endTime = Core.Nothing
    , name = Core.Nothing
    , nodeCpuUsagePercent = Core.Nothing
    , startKey = Core.Nothing
    , startTime = Core.Nothing
    , tableName = Core.Nothing
    }

instance Core.FromJSON HotTablet where
        parseJSON
          = Core.withObject "HotTablet"
              (\ o ->
                 HotTablet Core.<$>
                   (o Core..:? "endKey") Core.<*> (o Core..:? "endTime")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "nodeCpuUsagePercent")
                     Core.<*> (o Core..:? "startKey")
                     Core.<*> (o Core..:? "startTime")
                     Core.<*> (o Core..:? "tableName"))

instance Core.ToJSON HotTablet where
        toJSON HotTablet{..}
          = Core.object
              (Core.catMaybes
                 [("endKey" Core..=) Core.<$> endKey,
                  ("endTime" Core..=) Core.<$> endTime,
                  ("name" Core..=) Core.<$> name,
                  ("nodeCpuUsagePercent" Core..=) Core.<$>
                    nodeCpuUsagePercent,
                  ("startKey" Core..=) Core.<$> startKey,
                  ("startTime" Core..=) Core.<$> startTime,
                  ("tableName" Core..=) Core.<$> tableName])


-- | A collection of Bigtable Tables and the resources that serve them. All tables in an instance are served from all Clusters in the instance.
--
-- /See:/ 'newInstance' smart constructor.
data Instance = Instance
    {
      -- | Output only. A commit timestamp representing when this Instance was created. For instances created before this field was added (August 2021), this value is @seconds: 0, nanos: 1@.
      createTime :: (Core.Maybe Core.DateTime)
      -- | Required. The descriptive name for this instance as it appears in UIs. Can be changed at any time, but should be kept globally unique to avoid confusion.
    , displayName :: (Core.Maybe Core.Text)
      -- | Labels are a flexible and lightweight mechanism for organizing cloud resources into groups that reflect a customer\'s organizational needs and deployment strategies. They can be used to filter resources and aggregate metrics. * Label keys must be between 1 and 63 characters long and must conform to the regular expression: @\\p{Ll}\\p{Lo}{0,62}@. * Label values must be between 0 and 63 characters long and must conform to the regular expression: @[\\p{Ll}\\p{Lo}\\p{N}_-]{0,63}@. * No more than 64 labels can be associated with a given resource. * Keys and values must both be under 128 bytes.
    , labels :: (Core.Maybe Instance_Labels)
      -- | The unique name of the instance. Values are of the form @projects\/{project}\/instances\/a-z+[a-z0-9]@.
    , name :: (Core.Maybe Core.Text)
      -- | Output only. Reserved for future use.
    , satisfiesPzi :: (Core.Maybe Core.Bool)
      -- | Output only. Reserved for future use.
    , satisfiesPzs :: (Core.Maybe Core.Bool)
      -- | Output only. The current state of the instance.
    , state :: (Core.Maybe Instance_State)
      -- | The type of the instance. Defaults to @PRODUCTION@.
    , type' :: (Core.Maybe Instance_Type)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Instance' with the minimum fields required to make a request.
newInstance 
    ::  Instance
newInstance =
  Instance
    { createTime = Core.Nothing
    , displayName = Core.Nothing
    , labels = Core.Nothing
    , name = Core.Nothing
    , satisfiesPzi = Core.Nothing
    , satisfiesPzs = Core.Nothing
    , state = Core.Nothing
    , type' = Core.Nothing
    }

instance Core.FromJSON Instance where
        parseJSON
          = Core.withObject "Instance"
              (\ o ->
                 Instance Core.<$>
                   (o Core..:? "createTime") Core.<*>
                     (o Core..:? "displayName")
                     Core.<*> (o Core..:? "labels")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "satisfiesPzi")
                     Core.<*> (o Core..:? "satisfiesPzs")
                     Core.<*> (o Core..:? "state")
                     Core.<*> (o Core..:? "type"))

instance Core.ToJSON Instance where
        toJSON Instance{..}
          = Core.object
              (Core.catMaybes
                 [("createTime" Core..=) Core.<$> createTime,
                  ("displayName" Core..=) Core.<$> displayName,
                  ("labels" Core..=) Core.<$> labels,
                  ("name" Core..=) Core.<$> name,
                  ("satisfiesPzi" Core..=) Core.<$> satisfiesPzi,
                  ("satisfiesPzs" Core..=) Core.<$> satisfiesPzs,
                  ("state" Core..=) Core.<$> state,
                  ("type" Core..=) Core.<$> type'])


-- | Labels are a flexible and lightweight mechanism for organizing cloud resources into groups that reflect a customer\'s organizational needs and deployment strategies. They can be used to filter resources and aggregate metrics. * Label keys must be between 1 and 63 characters long and must conform to the regular expression: @\\p{Ll}\\p{Lo}{0,62}@. * Label values must be between 0 and 63 characters long and must conform to the regular expression: @[\\p{Ll}\\p{Lo}\\p{N}_-]{0,63}@. * No more than 64 labels can be associated with a given resource. * Keys and values must both be under 128 bytes.
--
-- /See:/ 'newInstance_Labels' smart constructor.
newtype Instance_Labels = Instance_Labels
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Instance_Labels' with the minimum fields required to make a request.
newInstance_Labels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> Instance_Labels
newInstance_Labels additional = Instance_Labels {additional = additional}

instance Core.FromJSON Instance_Labels where
        parseJSON
          = Core.withObject "Instance_Labels"
              (\ o ->
                 Instance_Labels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Instance_Labels where
        toJSON Instance_Labels{..} = Core.toJSON additional


-- | A GcRule which deletes cells matching all of the given rules.
--
-- /See:/ 'newIntersection' smart constructor.
newtype Intersection = Intersection
    {
      -- | Only delete cells which would be deleted by every element of @rules@.
      rules :: (Core.Maybe [GcRule])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Intersection' with the minimum fields required to make a request.
newIntersection 
    ::  Intersection
newIntersection = Intersection {rules = Core.Nothing}

instance Core.FromJSON Intersection where
        parseJSON
          = Core.withObject "Intersection"
              (\ o -> Intersection Core.<$> (o Core..:? "rules"))

instance Core.ToJSON Intersection where
        toJSON Intersection{..}
          = Core.object
              (Core.catMaybes [("rules" Core..=) Core.<$> rules])


-- | Response message for BigtableInstanceAdmin.ListAppProfiles.
--
-- /See:/ 'newListAppProfilesResponse' smart constructor.
data ListAppProfilesResponse = ListAppProfilesResponse
    {
      -- | The list of requested app profiles.
      appProfiles :: (Core.Maybe [AppProfile])
      -- | Locations from which AppProfile information could not be retrieved, due to an outage or some other transient condition. AppProfiles from these locations may be missing from @app_profiles@. Values are of the form @projects\/\/locations\/@
    , failedLocations :: (Core.Maybe [Core.Text])
      -- | Set if not all app profiles could be returned in a single response. Pass this value to @page_token@ in another request to get the next page of results.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListAppProfilesResponse' with the minimum fields required to make a request.
newListAppProfilesResponse 
    ::  ListAppProfilesResponse
newListAppProfilesResponse =
  ListAppProfilesResponse
    { appProfiles = Core.Nothing
    , failedLocations = Core.Nothing
    , nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListAppProfilesResponse where
        parseJSON
          = Core.withObject "ListAppProfilesResponse"
              (\ o ->
                 ListAppProfilesResponse Core.<$>
                   (o Core..:? "appProfiles") Core.<*>
                     (o Core..:? "failedLocations")
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON ListAppProfilesResponse where
        toJSON ListAppProfilesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("appProfiles" Core..=) Core.<$> appProfiles,
                  ("failedLocations" Core..=) Core.<$> failedLocations,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Response message for google.bigtable.admin.v2.BigtableTableAdmin.ListAuthorizedViews
--
-- /See:/ 'newListAuthorizedViewsResponse' smart constructor.
data ListAuthorizedViewsResponse = ListAuthorizedViewsResponse
    {
      -- | The AuthorizedViews present in the requested table.
      authorizedViews :: (Core.Maybe [AuthorizedView])
      -- | Set if not all tables could be returned in a single response. Pass this value to @page_token@ in another request to get the next page of results.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListAuthorizedViewsResponse' with the minimum fields required to make a request.
newListAuthorizedViewsResponse 
    ::  ListAuthorizedViewsResponse
newListAuthorizedViewsResponse =
  ListAuthorizedViewsResponse
    {authorizedViews = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListAuthorizedViewsResponse
         where
        parseJSON
          = Core.withObject "ListAuthorizedViewsResponse"
              (\ o ->
                 ListAuthorizedViewsResponse Core.<$>
                   (o Core..:? "authorizedViews") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON ListAuthorizedViewsResponse
         where
        toJSON ListAuthorizedViewsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("authorizedViews" Core..=) Core.<$>
                    authorizedViews,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | The response for ListBackups.
--
-- /See:/ 'newListBackupsResponse' smart constructor.
data ListBackupsResponse = ListBackupsResponse
    {
      -- | The list of matching backups.
      backups :: (Core.Maybe [Backup])
      -- | @next_page_token@ can be sent in a subsequent ListBackups call to fetch more of the matching backups.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListBackupsResponse' with the minimum fields required to make a request.
newListBackupsResponse 
    ::  ListBackupsResponse
newListBackupsResponse =
  ListBackupsResponse {backups = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListBackupsResponse where
        parseJSON
          = Core.withObject "ListBackupsResponse"
              (\ o ->
                 ListBackupsResponse Core.<$>
                   (o Core..:? "backups") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON ListBackupsResponse where
        toJSON ListBackupsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("backups" Core..=) Core.<$> backups,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Response message for BigtableInstanceAdmin.ListClusters.
--
-- /See:/ 'newListClustersResponse' smart constructor.
data ListClustersResponse = ListClustersResponse
    {
      -- | The list of requested clusters.
      clusters :: (Core.Maybe [Cluster])
      -- | Locations from which Cluster information could not be retrieved, due to an outage or some other transient condition. Clusters from these locations may be missing from @clusters@, or may only have partial information returned. Values are of the form @projects\/\/locations\/@
    , failedLocations :: (Core.Maybe [Core.Text])
      -- | DEPRECATED: This field is unused and ignored.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListClustersResponse' with the minimum fields required to make a request.
newListClustersResponse 
    ::  ListClustersResponse
newListClustersResponse =
  ListClustersResponse
    { clusters = Core.Nothing
    , failedLocations = Core.Nothing
    , nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListClustersResponse where
        parseJSON
          = Core.withObject "ListClustersResponse"
              (\ o ->
                 ListClustersResponse Core.<$>
                   (o Core..:? "clusters") Core.<*>
                     (o Core..:? "failedLocations")
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON ListClustersResponse where
        toJSON ListClustersResponse{..}
          = Core.object
              (Core.catMaybes
                 [("clusters" Core..=) Core.<$> clusters,
                  ("failedLocations" Core..=) Core.<$> failedLocations,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Response message for BigtableInstanceAdmin.ListHotTablets.
--
-- /See:/ 'newListHotTabletsResponse' smart constructor.
data ListHotTabletsResponse = ListHotTabletsResponse
    {
      -- | List of hot tablets in the tables of the requested cluster that fall within the requested time range. Hot tablets are ordered by node cpu usage percent. If there are multiple hot tablets that correspond to the same tablet within a 15-minute interval, only the hot tablet with the highest node cpu usage will be included in the response.
      hotTablets :: (Core.Maybe [HotTablet])
      -- | Set if not all hot tablets could be returned in a single response. Pass this value to @page_token@ in another request to get the next page of results.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListHotTabletsResponse' with the minimum fields required to make a request.
newListHotTabletsResponse 
    ::  ListHotTabletsResponse
newListHotTabletsResponse =
  ListHotTabletsResponse
    {hotTablets = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListHotTabletsResponse where
        parseJSON
          = Core.withObject "ListHotTabletsResponse"
              (\ o ->
                 ListHotTabletsResponse Core.<$>
                   (o Core..:? "hotTablets") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON ListHotTabletsResponse where
        toJSON ListHotTabletsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("hotTablets" Core..=) Core.<$> hotTablets,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Response message for BigtableInstanceAdmin.ListInstances.
--
-- /See:/ 'newListInstancesResponse' smart constructor.
data ListInstancesResponse = ListInstancesResponse
    {
      -- | Locations from which Instance information could not be retrieved, due to an outage or some other transient condition. Instances whose Clusters are all in one of the failed locations may be missing from @instances@, and Instances with at least one Cluster in a failed location may only have partial information returned. Values are of the form @projects\/\/locations\/@
      failedLocations :: (Core.Maybe [Core.Text])
      -- | The list of requested instances.
    , instances :: (Core.Maybe [Instance])
      -- | DEPRECATED: This field is unused and ignored.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListInstancesResponse' with the minimum fields required to make a request.
newListInstancesResponse 
    ::  ListInstancesResponse
newListInstancesResponse =
  ListInstancesResponse
    { failedLocations = Core.Nothing
    , instances = Core.Nothing
    , nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListInstancesResponse where
        parseJSON
          = Core.withObject "ListInstancesResponse"
              (\ o ->
                 ListInstancesResponse Core.<$>
                   (o Core..:? "failedLocations") Core.<*>
                     (o Core..:? "instances")
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON ListInstancesResponse where
        toJSON ListInstancesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("failedLocations" Core..=) Core.<$>
                    failedLocations,
                  ("instances" Core..=) Core.<$> instances,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | The response message for Locations.ListLocations.
--
-- /See:/ 'newListLocationsResponse' smart constructor.
data ListLocationsResponse = ListLocationsResponse
    {
      -- | A list of locations that matches the specified filter in the request.
      locations :: (Core.Maybe [Location])
      -- | The standard List next-page token.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListLocationsResponse' with the minimum fields required to make a request.
newListLocationsResponse 
    ::  ListLocationsResponse
newListLocationsResponse =
  ListLocationsResponse {locations = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListLocationsResponse where
        parseJSON
          = Core.withObject "ListLocationsResponse"
              (\ o ->
                 ListLocationsResponse Core.<$>
                   (o Core..:? "locations") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON ListLocationsResponse where
        toJSON ListLocationsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("locations" Core..=) Core.<$> locations,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | The response message for Operations.ListOperations.
--
-- /See:/ 'newListOperationsResponse' smart constructor.
data ListOperationsResponse = ListOperationsResponse
    {
      -- | The standard List next-page token.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | A list of operations that matches the specified filter in the request.
    , operations :: (Core.Maybe [Operation])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListOperationsResponse' with the minimum fields required to make a request.
newListOperationsResponse 
    ::  ListOperationsResponse
newListOperationsResponse =
  ListOperationsResponse
    {nextPageToken = Core.Nothing, operations = Core.Nothing}

instance Core.FromJSON ListOperationsResponse where
        parseJSON
          = Core.withObject "ListOperationsResponse"
              (\ o ->
                 ListOperationsResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "operations"))

instance Core.ToJSON ListOperationsResponse where
        toJSON ListOperationsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("operations" Core..=) Core.<$> operations])


-- | Response message for google.bigtable.admin.v2.BigtableTableAdmin.ListTables
--
-- /See:/ 'newListTablesResponse' smart constructor.
data ListTablesResponse = ListTablesResponse
    {
      -- | Set if not all tables could be returned in a single response. Pass this value to @page_token@ in another request to get the next page of results.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | The tables present in the requested instance.
    , tables :: (Core.Maybe [Table])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListTablesResponse' with the minimum fields required to make a request.
newListTablesResponse 
    ::  ListTablesResponse
newListTablesResponse =
  ListTablesResponse {nextPageToken = Core.Nothing, tables = Core.Nothing}

instance Core.FromJSON ListTablesResponse where
        parseJSON
          = Core.withObject "ListTablesResponse"
              (\ o ->
                 ListTablesResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "tables"))

instance Core.ToJSON ListTablesResponse where
        toJSON ListTablesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("tables" Core..=) Core.<$> tables])


-- | A resource that represents a Google Cloud location.
--
-- /See:/ 'newLocation' smart constructor.
data Location = Location
    {
      -- | The friendly name for this location, typically a nearby city name. For example, \"Tokyo\".
      displayName :: (Core.Maybe Core.Text)
      -- | Cross-service attributes for the location. For example {\"cloud.googleapis.com\/region\": \"us-east1\"}
    , labels :: (Core.Maybe Location_Labels)
      -- | The canonical id for this location. For example: @\"us-east1\"@.
    , locationId :: (Core.Maybe Core.Text)
      -- | Service-specific metadata. For example the available capacity at the given location.
    , metadata :: (Core.Maybe Location_Metadata)
      -- | Resource name for the location, which may vary between implementations. For example: @\"projects\/example-project\/locations\/us-east1\"@
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location' with the minimum fields required to make a request.
newLocation 
    ::  Location
newLocation =
  Location
    { displayName = Core.Nothing
    , labels = Core.Nothing
    , locationId = Core.Nothing
    , metadata = Core.Nothing
    , name = Core.Nothing
    }

instance Core.FromJSON Location where
        parseJSON
          = Core.withObject "Location"
              (\ o ->
                 Location Core.<$>
                   (o Core..:? "displayName") Core.<*>
                     (o Core..:? "labels")
                     Core.<*> (o Core..:? "locationId")
                     Core.<*> (o Core..:? "metadata")
                     Core.<*> (o Core..:? "name"))

instance Core.ToJSON Location where
        toJSON Location{..}
          = Core.object
              (Core.catMaybes
                 [("displayName" Core..=) Core.<$> displayName,
                  ("labels" Core..=) Core.<$> labels,
                  ("locationId" Core..=) Core.<$> locationId,
                  ("metadata" Core..=) Core.<$> metadata,
                  ("name" Core..=) Core.<$> name])


-- | Cross-service attributes for the location. For example {\"cloud.googleapis.com\/region\": \"us-east1\"}
--
-- /See:/ 'newLocation_Labels' smart constructor.
newtype Location_Labels = Location_Labels
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location_Labels' with the minimum fields required to make a request.
newLocation_Labels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> Location_Labels
newLocation_Labels additional = Location_Labels {additional = additional}

instance Core.FromJSON Location_Labels where
        parseJSON
          = Core.withObject "Location_Labels"
              (\ o ->
                 Location_Labels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Location_Labels where
        toJSON Location_Labels{..} = Core.toJSON additional


-- | Service-specific metadata. For example the available capacity at the given location.
--
-- /See:/ 'newLocation_Metadata' smart constructor.
newtype Location_Metadata = Location_Metadata
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location_Metadata' with the minimum fields required to make a request.
newLocation_Metadata 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> Location_Metadata
newLocation_Metadata additional = Location_Metadata {additional = additional}

instance Core.FromJSON Location_Metadata where
        parseJSON
          = Core.withObject "Location_Metadata"
              (\ o ->
                 Location_Metadata Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Location_Metadata where
        toJSON Location_Metadata{..} = Core.toJSON additional


-- | A create, update, or delete of a particular column family.
--
-- /See:/ 'newModification' smart constructor.
data Modification = Modification
    {
      -- | Create a new column family with the specified schema, or fail if one already exists with the given ID.
      create :: (Core.Maybe ColumnFamily)
      -- | Drop (delete) the column family with the given ID, or fail if no such family exists.
    , drop :: (Core.Maybe Core.Bool)
      -- | The ID of the column family to be modified.
    , id :: (Core.Maybe Core.Text)
      -- | Update an existing column family to the specified schema, or fail if no column family exists with the given ID.
    , update :: (Core.Maybe ColumnFamily)
      -- | Optional. A mask specifying which fields (e.g. @gc_rule@) in the @update@ mod should be updated, ignored for other modification types. If unset or empty, we treat it as updating @gc_rule@ to be backward compatible.
    , updateMask :: (Core.Maybe Core.FieldMask)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Modification' with the minimum fields required to make a request.
newModification 
    ::  Modification
newModification =
  Modification
    { create = Core.Nothing
    , drop = Core.Nothing
    , id = Core.Nothing
    , update = Core.Nothing
    , updateMask = Core.Nothing
    }

instance Core.FromJSON Modification where
        parseJSON
          = Core.withObject "Modification"
              (\ o ->
                 Modification Core.<$>
                   (o Core..:? "create") Core.<*> (o Core..:? "drop")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "update")
                     Core.<*> (o Core..:? "updateMask"))

instance Core.ToJSON Modification where
        toJSON Modification{..}
          = Core.object
              (Core.catMaybes
                 [("create" Core..=) Core.<$> create,
                  ("drop" Core..=) Core.<$> drop,
                  ("id" Core..=) Core.<$> id,
                  ("update" Core..=) Core.<$> update,
                  ("updateMask" Core..=) Core.<$> updateMask])


-- | Request message for google.bigtable.admin.v2.BigtableTableAdmin.ModifyColumnFamilies
--
-- /See:/ 'newModifyColumnFamiliesRequest' smart constructor.
data ModifyColumnFamiliesRequest = ModifyColumnFamiliesRequest
    {
      -- | Optional. If true, ignore safety checks when modifying the column families.
      ignoreWarnings :: (Core.Maybe Core.Bool)
      -- | Required. Modifications to be atomically applied to the specified table\'s families. Entries are applied in order, meaning that earlier modifications can be masked by later ones (in the case of repeated updates to the same family, for example).
    , modifications :: (Core.Maybe [Modification])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ModifyColumnFamiliesRequest' with the minimum fields required to make a request.
newModifyColumnFamiliesRequest 
    ::  ModifyColumnFamiliesRequest
newModifyColumnFamiliesRequest =
  ModifyColumnFamiliesRequest
    {ignoreWarnings = Core.Nothing, modifications = Core.Nothing}

instance Core.FromJSON ModifyColumnFamiliesRequest
         where
        parseJSON
          = Core.withObject "ModifyColumnFamiliesRequest"
              (\ o ->
                 ModifyColumnFamiliesRequest Core.<$>
                   (o Core..:? "ignoreWarnings") Core.<*>
                     (o Core..:? "modifications"))

instance Core.ToJSON ModifyColumnFamiliesRequest
         where
        toJSON ModifyColumnFamiliesRequest{..}
          = Core.object
              (Core.catMaybes
                 [("ignoreWarnings" Core..=) Core.<$> ignoreWarnings,
                  ("modifications" Core..=) Core.<$> modifications])


-- | Read\/write requests are routed to the nearest cluster in the instance, and will fail over to the nearest cluster that is available in the event of transient errors or delays. Clusters in a region are considered equidistant. Choosing this option sacrifices read-your-writes consistency to improve availability.
--
-- /See:/ 'newMultiClusterRoutingUseAny' smart constructor.
data MultiClusterRoutingUseAny = MultiClusterRoutingUseAny
    {
      -- | The set of clusters to route to. The order is ignored; clusters will be tried in order of distance. If left empty, all clusters are eligible.
      clusterIds :: (Core.Maybe [Core.Text])
      -- | Row affinity sticky routing based on the row key of the request. Requests that span multiple rows are routed non-deterministically.
    , rowAffinity :: (Core.Maybe RowAffinity)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MultiClusterRoutingUseAny' with the minimum fields required to make a request.
newMultiClusterRoutingUseAny 
    ::  MultiClusterRoutingUseAny
newMultiClusterRoutingUseAny =
  MultiClusterRoutingUseAny
    {clusterIds = Core.Nothing, rowAffinity = Core.Nothing}

instance Core.FromJSON MultiClusterRoutingUseAny
         where
        parseJSON
          = Core.withObject "MultiClusterRoutingUseAny"
              (\ o ->
                 MultiClusterRoutingUseAny Core.<$>
                   (o Core..:? "clusterIds") Core.<*>
                     (o Core..:? "rowAffinity"))

instance Core.ToJSON MultiClusterRoutingUseAny where
        toJSON MultiClusterRoutingUseAny{..}
          = Core.object
              (Core.catMaybes
                 [("clusterIds" Core..=) Core.<$> clusterIds,
                  ("rowAffinity" Core..=) Core.<$> rowAffinity])


-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newOperation' smart constructor.
data Operation = Operation
    {
      -- | If the value is @false@, it means the operation is still in progress. If @true@, the operation is completed, and either @error@ or @response@ is available.
      done :: (Core.Maybe Core.Bool)
      -- | The error result of the operation in case of failure or cancellation.
    , error :: (Core.Maybe Status)
      -- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
    , metadata :: (Core.Maybe Operation_Metadata)
      -- | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the @name@ should be a resource name ending with @operations\/{unique_id}@.
    , name :: (Core.Maybe Core.Text)
      -- | The normal, successful response of the operation. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
    , response :: (Core.Maybe Operation_Response)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
newOperation 
    ::  Operation
newOperation =
  Operation
    { done = Core.Nothing
    , error = Core.Nothing
    , metadata = Core.Nothing
    , name = Core.Nothing
    , response = Core.Nothing
    }

instance Core.FromJSON Operation where
        parseJSON
          = Core.withObject "Operation"
              (\ o ->
                 Operation Core.<$>
                   (o Core..:? "done") Core.<*> (o Core..:? "error")
                     Core.<*> (o Core..:? "metadata")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "response"))

instance Core.ToJSON Operation where
        toJSON Operation{..}
          = Core.object
              (Core.catMaybes
                 [("done" Core..=) Core.<$> done,
                  ("error" Core..=) Core.<$> error,
                  ("metadata" Core..=) Core.<$> metadata,
                  ("name" Core..=) Core.<$> name,
                  ("response" Core..=) Core.<$> response])


-- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
--
-- /See:/ 'newOperation_Metadata' smart constructor.
newtype Operation_Metadata = Operation_Metadata
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Metadata' with the minimum fields required to make a request.
newOperation_Metadata 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> Operation_Metadata
newOperation_Metadata additional = Operation_Metadata {additional = additional}

instance Core.FromJSON Operation_Metadata where
        parseJSON
          = Core.withObject "Operation_Metadata"
              (\ o ->
                 Operation_Metadata Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Operation_Metadata where
        toJSON Operation_Metadata{..}
          = Core.toJSON additional


-- | The normal, successful response of the operation. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
--
-- /See:/ 'newOperation_Response' smart constructor.
newtype Operation_Response = Operation_Response
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Response' with the minimum fields required to make a request.
newOperation_Response 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> Operation_Response
newOperation_Response additional = Operation_Response {additional = additional}

instance Core.FromJSON Operation_Response where
        parseJSON
          = Core.withObject "Operation_Response"
              (\ o ->
                 Operation_Response Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Operation_Response where
        toJSON Operation_Response{..}
          = Core.toJSON additional


-- | Encapsulates progress related information for a Cloud Bigtable long running operation.
--
-- /See:/ 'newOperationProgress' smart constructor.
data OperationProgress = OperationProgress
    {
      -- | If set, the time at which this operation failed or was completed successfully.
      endTime :: (Core.Maybe Core.DateTime)
      -- | Percent completion of the operation. Values are between 0 and 100 inclusive.
    , progressPercent :: (Core.Maybe Core.Int32)
      -- | Time the request was received.
    , startTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OperationProgress' with the minimum fields required to make a request.
newOperationProgress 
    ::  OperationProgress
newOperationProgress =
  OperationProgress
    { endTime = Core.Nothing
    , progressPercent = Core.Nothing
    , startTime = Core.Nothing
    }

instance Core.FromJSON OperationProgress where
        parseJSON
          = Core.withObject "OperationProgress"
              (\ o ->
                 OperationProgress Core.<$>
                   (o Core..:? "endTime") Core.<*>
                     (o Core..:? "progressPercent")
                     Core.<*> (o Core..:? "startTime"))

instance Core.ToJSON OperationProgress where
        toJSON OperationProgress{..}
          = Core.object
              (Core.catMaybes
                 [("endTime" Core..=) Core.<$> endTime,
                  ("progressPercent" Core..=) Core.<$> progressPercent,
                  ("startTime" Core..=) Core.<$> startTime])


-- | Metadata type for the long-running operation used to track the progress of optimizations performed on a newly restored table. This long-running operation is automatically created by the system after the successful completion of a table restore, and cannot be cancelled.
--
-- /See:/ 'newOptimizeRestoredTableMetadata' smart constructor.
data OptimizeRestoredTableMetadata = OptimizeRestoredTableMetadata
    {
      -- | Name of the restored table being optimized.
      name :: (Core.Maybe Core.Text)
      -- | The progress of the post-restore optimizations.
    , progress :: (Core.Maybe OperationProgress)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OptimizeRestoredTableMetadata' with the minimum fields required to make a request.
newOptimizeRestoredTableMetadata 
    ::  OptimizeRestoredTableMetadata
newOptimizeRestoredTableMetadata =
  OptimizeRestoredTableMetadata {name = Core.Nothing, progress = Core.Nothing}

instance Core.FromJSON OptimizeRestoredTableMetadata
         where
        parseJSON
          = Core.withObject "OptimizeRestoredTableMetadata"
              (\ o ->
                 OptimizeRestoredTableMetadata Core.<$>
                   (o Core..:? "name") Core.<*> (o Core..:? "progress"))

instance Core.ToJSON OptimizeRestoredTableMetadata
         where
        toJSON OptimizeRestoredTableMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("name" Core..=) Core.<$> name,
                  ("progress" Core..=) Core.<$> progress])


-- | The metadata for the Operation returned by PartialUpdateCluster.
--
-- /See:/ 'newPartialUpdateClusterMetadata' smart constructor.
data PartialUpdateClusterMetadata = PartialUpdateClusterMetadata
    {
      -- | The time at which the operation failed or was completed successfully.
      finishTime :: (Core.Maybe Core.DateTime)
      -- | The original request for PartialUpdateCluster.
    , originalRequest :: (Core.Maybe PartialUpdateClusterRequest)
      -- | The time at which the original request was received.
    , requestTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PartialUpdateClusterMetadata' with the minimum fields required to make a request.
newPartialUpdateClusterMetadata 
    ::  PartialUpdateClusterMetadata
newPartialUpdateClusterMetadata =
  PartialUpdateClusterMetadata
    { finishTime = Core.Nothing
    , originalRequest = Core.Nothing
    , requestTime = Core.Nothing
    }

instance Core.FromJSON PartialUpdateClusterMetadata
         where
        parseJSON
          = Core.withObject "PartialUpdateClusterMetadata"
              (\ o ->
                 PartialUpdateClusterMetadata Core.<$>
                   (o Core..:? "finishTime") Core.<*>
                     (o Core..:? "originalRequest")
                     Core.<*> (o Core..:? "requestTime"))

instance Core.ToJSON PartialUpdateClusterMetadata
         where
        toJSON PartialUpdateClusterMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("finishTime" Core..=) Core.<$> finishTime,
                  ("originalRequest" Core..=) Core.<$> originalRequest,
                  ("requestTime" Core..=) Core.<$> requestTime])


-- | Request message for BigtableInstanceAdmin.PartialUpdateCluster.
--
-- /See:/ 'newPartialUpdateClusterRequest' smart constructor.
data PartialUpdateClusterRequest = PartialUpdateClusterRequest
    {
      -- | Required. The Cluster which contains the partial updates to be applied, subject to the update_mask.
      cluster :: (Core.Maybe Cluster)
      -- | Required. The subset of Cluster fields which should be replaced.
    , updateMask :: (Core.Maybe Core.FieldMask)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PartialUpdateClusterRequest' with the minimum fields required to make a request.
newPartialUpdateClusterRequest 
    ::  PartialUpdateClusterRequest
newPartialUpdateClusterRequest =
  PartialUpdateClusterRequest
    {cluster = Core.Nothing, updateMask = Core.Nothing}

instance Core.FromJSON PartialUpdateClusterRequest
         where
        parseJSON
          = Core.withObject "PartialUpdateClusterRequest"
              (\ o ->
                 PartialUpdateClusterRequest Core.<$>
                   (o Core..:? "cluster") Core.<*>
                     (o Core..:? "updateMask"))

instance Core.ToJSON PartialUpdateClusterRequest
         where
        toJSON PartialUpdateClusterRequest{..}
          = Core.object
              (Core.catMaybes
                 [("cluster" Core..=) Core.<$> cluster,
                  ("updateMask" Core..=) Core.<$> updateMask])


-- | Request message for BigtableInstanceAdmin.PartialUpdateInstance.
--
-- /See:/ 'newPartialUpdateInstanceRequest' smart constructor.
data PartialUpdateInstanceRequest = PartialUpdateInstanceRequest
    {
      -- | Required. The Instance which will (partially) replace the current value.
      instance' :: (Core.Maybe Instance)
      -- | Required. The subset of Instance fields which should be replaced. Must be explicitly set.
    , updateMask :: (Core.Maybe Core.FieldMask)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PartialUpdateInstanceRequest' with the minimum fields required to make a request.
newPartialUpdateInstanceRequest 
    ::  PartialUpdateInstanceRequest
newPartialUpdateInstanceRequest =
  PartialUpdateInstanceRequest
    {instance' = Core.Nothing, updateMask = Core.Nothing}

instance Core.FromJSON PartialUpdateInstanceRequest
         where
        parseJSON
          = Core.withObject "PartialUpdateInstanceRequest"
              (\ o ->
                 PartialUpdateInstanceRequest Core.<$>
                   (o Core..:? "instance") Core.<*>
                     (o Core..:? "updateMask"))

instance Core.ToJSON PartialUpdateInstanceRequest
         where
        toJSON PartialUpdateInstanceRequest{..}
          = Core.object
              (Core.catMaybes
                 [("instance" Core..=) Core.<$> instance',
                  ("updateMask" Core..=) Core.<$> updateMask])


-- | An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A @Policy@ is a collection of @bindings@. A @binding@ binds one or more @members@, or principals, to a single @role@. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A @role@ is a named list of permissions; each @role@ can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a @binding@ can also specify a @condition@, which is a logical expression that allows access to a resource only if the expression evaluates to @true@. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>. __JSON example:__
-- @{ \"bindings\": [ { \"role\": \"roles\/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike\@example.com\", \"group:admins\@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id\@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles\/resourcemanager.organizationViewer\", \"members\": [ \"user:eve\@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time \< timestamp(\'2020-10-01T00:00:00.000Z\')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 }@ __YAML example:__
-- @bindings: - members: - user:mike\@example.com - group:admins\@example.com - domain:google.com - serviceAccount:my-project-id\@appspot.gserviceaccount.com role: roles\/resourcemanager.organizationAdmin - members: - user:eve\@example.com role: roles\/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time \< timestamp(\'2020-10-01T00:00:00.000Z\') etag: BwWWja0YfJA= version: 3@ For a description of IAM and its features, see the <https://cloud.google.com/iam/docs/ IAM documentation>.
--
-- /See:/ 'newPolicy' smart constructor.
data Policy = Policy
    {
      -- | Specifies cloud audit logging configuration for this policy.
      auditConfigs :: (Core.Maybe [AuditConfig])
      -- | Associates a list of @members@, or principals, with a @role@. Optionally, may specify a @condition@ that determines how and when the @bindings@ are applied. Each of the @bindings@ must contain at least one principal. The @bindings@ in a @Policy@ can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the @bindings@ grant 50 different roles to @user:alice\@example.com@, and not to any other principal, then you can add another 1,450 principals to the @bindings@ in the @Policy@.
    , bindings :: (Core.Maybe [Binding])
      -- | @etag@ is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the @etag@ in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An @etag@ is returned in the response to @getIamPolicy@, and systems are expected to put that etag in the request to @setIamPolicy@ to ensure that their change will be applied to the same version of the policy. __Important:__ If you use IAM Conditions, you must include the @etag@ field whenever you call @setIamPolicy@. If you omit this field, then IAM allows you to overwrite a version @3@ policy with a version @1@ policy, and all of the conditions in the version @3@ policy are lost.
    , etag :: (Core.Maybe Core.Base64)
      -- | Specifies the format of the policy. Valid values are @0@, @1@, and @3@. Requests that specify an invalid value are rejected. Any operation that affects conditional role bindings must specify version @3@. This requirement applies to the following operations: * Getting a policy that includes a conditional role binding * Adding a conditional role binding to a policy * Changing a conditional role binding in a policy * Removing any role binding, with or without a condition, from a policy that includes conditions __Important:__ If you use IAM Conditions, you must include the @etag@ field whenever you call @setIamPolicy@. If you omit this field, then IAM allows you to overwrite a version @3@ policy with a version @1@ policy, and all of the conditions in the version @3@ policy are lost. If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset. To learn which resources support conditions in their IAM policies, see the
      -- <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    , version :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Policy' with the minimum fields required to make a request.
newPolicy 
    ::  Policy
newPolicy =
  Policy
    { auditConfigs = Core.Nothing
    , bindings = Core.Nothing
    , etag = Core.Nothing
    , version = Core.Nothing
    }

instance Core.FromJSON Policy where
        parseJSON
          = Core.withObject "Policy"
              (\ o ->
                 Policy Core.<$>
                   (o Core..:? "auditConfigs") Core.<*>
                     (o Core..:? "bindings")
                     Core.<*> (o Core..:? "etag")
                     Core.<*> (o Core..:? "version"))

instance Core.ToJSON Policy where
        toJSON Policy{..}
          = Core.object
              (Core.catMaybes
                 [("auditConfigs" Core..=) Core.<$> auditConfigs,
                  ("bindings" Core..=) Core.<$> bindings,
                  ("etag" Core..=) Core.<$> etag,
                  ("version" Core..=) Core.<$> version])


-- | Information about a table restore.
--
-- /See:/ 'newRestoreInfo' smart constructor.
data RestoreInfo = RestoreInfo
    {
      -- | Information about the backup used to restore the table. The backup may no longer exist.
      backupInfo :: (Core.Maybe BackupInfo)
      -- | The type of the restore source.
    , sourceType :: (Core.Maybe RestoreInfo_SourceType)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RestoreInfo' with the minimum fields required to make a request.
newRestoreInfo 
    ::  RestoreInfo
newRestoreInfo =
  RestoreInfo {backupInfo = Core.Nothing, sourceType = Core.Nothing}

instance Core.FromJSON RestoreInfo where
        parseJSON
          = Core.withObject "RestoreInfo"
              (\ o ->
                 RestoreInfo Core.<$>
                   (o Core..:? "backupInfo") Core.<*>
                     (o Core..:? "sourceType"))

instance Core.ToJSON RestoreInfo where
        toJSON RestoreInfo{..}
          = Core.object
              (Core.catMaybes
                 [("backupInfo" Core..=) Core.<$> backupInfo,
                  ("sourceType" Core..=) Core.<$> sourceType])


-- | Metadata type for the long-running operation returned by RestoreTable.
--
-- /See:/ 'newRestoreTableMetadata' smart constructor.
data RestoreTableMetadata = RestoreTableMetadata
    {
      -- | 
      backupInfo :: (Core.Maybe BackupInfo)
      -- | Name of the table being created and restored to.
    , name :: (Core.Maybe Core.Text)
      -- | If exists, the name of the long-running operation that will be used to track the post-restore optimization process to optimize the performance of the restored table. The metadata type of the long-running operation is OptimizeRestoredTableMetadata. The response type is Empty. This long-running operation may be automatically created by the system if applicable after the RestoreTable long-running operation completes successfully. This operation may not be created if the table is already optimized or the restore was not successful.
    , optimizeTableOperationName :: (Core.Maybe Core.Text)
      -- | The progress of the RestoreTable operation.
    , progress :: (Core.Maybe OperationProgress)
      -- | The type of the restore source.
    , sourceType :: (Core.Maybe RestoreTableMetadata_SourceType)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RestoreTableMetadata' with the minimum fields required to make a request.
newRestoreTableMetadata 
    ::  RestoreTableMetadata
newRestoreTableMetadata =
  RestoreTableMetadata
    { backupInfo = Core.Nothing
    , name = Core.Nothing
    , optimizeTableOperationName = Core.Nothing
    , progress = Core.Nothing
    , sourceType = Core.Nothing
    }

instance Core.FromJSON RestoreTableMetadata where
        parseJSON
          = Core.withObject "RestoreTableMetadata"
              (\ o ->
                 RestoreTableMetadata Core.<$>
                   (o Core..:? "backupInfo") Core.<*>
                     (o Core..:? "name")
                     Core.<*> (o Core..:? "optimizeTableOperationName")
                     Core.<*> (o Core..:? "progress")
                     Core.<*> (o Core..:? "sourceType"))

instance Core.ToJSON RestoreTableMetadata where
        toJSON RestoreTableMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("backupInfo" Core..=) Core.<$> backupInfo,
                  ("name" Core..=) Core.<$> name,
                  ("optimizeTableOperationName" Core..=) Core.<$>
                    optimizeTableOperationName,
                  ("progress" Core..=) Core.<$> progress,
                  ("sourceType" Core..=) Core.<$> sourceType])


-- | The request for RestoreTable.
--
-- /See:/ 'newRestoreTableRequest' smart constructor.
data RestoreTableRequest = RestoreTableRequest
    {
      -- | Name of the backup from which to restore. Values are of the form @projects\/\/instances\/\/clusters\/\/backups\/@.
      backup :: (Core.Maybe Core.Text)
      -- | Required. The id of the table to create and restore to. This table must not already exist. The @table_id@ appended to @parent@ forms the full table name of the form @projects\/\/instances\/\/tables\/@.
    , tableId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RestoreTableRequest' with the minimum fields required to make a request.
newRestoreTableRequest 
    ::  RestoreTableRequest
newRestoreTableRequest =
  RestoreTableRequest {backup = Core.Nothing, tableId = Core.Nothing}

instance Core.FromJSON RestoreTableRequest where
        parseJSON
          = Core.withObject "RestoreTableRequest"
              (\ o ->
                 RestoreTableRequest Core.<$>
                   (o Core..:? "backup") Core.<*>
                     (o Core..:? "tableId"))

instance Core.ToJSON RestoreTableRequest where
        toJSON RestoreTableRequest{..}
          = Core.object
              (Core.catMaybes
                 [("backup" Core..=) Core.<$> backup,
                  ("tableId" Core..=) Core.<$> tableId])


-- | If enabled, Bigtable will route the request based on the row key of the request, rather than randomly. Instead, each row key will be assigned to a cluster, and will stick to that cluster. If clusters are added or removed, then this may affect which row keys stick to which clusters. To avoid this, users can use a cluster group to specify which clusters are to be used. In this case, new clusters that are not a part of the cluster group will not be routed to, and routing will be unaffected by the new cluster. Moreover, clusters specified in the cluster group cannot be deleted unless removed from the cluster group.
--
-- /See:/ 'newRowAffinity' smart constructor.
data RowAffinity = RowAffinity
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RowAffinity' with the minimum fields required to make a request.
newRowAffinity 
    ::  RowAffinity
newRowAffinity = RowAffinity

instance Core.FromJSON RowAffinity where
        parseJSON
          = Core.withObject "RowAffinity"
              (\ o -> Core.pure RowAffinity)

instance Core.ToJSON RowAffinity where
        toJSON = Core.const Core.emptyObject


-- | Request message for @SetIamPolicy@ method.
--
-- /See:/ 'newSetIamPolicyRequest' smart constructor.
data SetIamPolicyRequest = SetIamPolicyRequest
    {
      -- | REQUIRED: The complete policy to be applied to the @resource@. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Google Cloud services (such as Projects) might reject them.
      policy :: (Core.Maybe Policy)
      -- | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used: @paths: \"bindings, etag\"@
    , updateMask :: (Core.Maybe Core.FieldMask)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetIamPolicyRequest' with the minimum fields required to make a request.
newSetIamPolicyRequest 
    ::  SetIamPolicyRequest
newSetIamPolicyRequest =
  SetIamPolicyRequest {policy = Core.Nothing, updateMask = Core.Nothing}

instance Core.FromJSON SetIamPolicyRequest where
        parseJSON
          = Core.withObject "SetIamPolicyRequest"
              (\ o ->
                 SetIamPolicyRequest Core.<$>
                   (o Core..:? "policy") Core.<*>
                     (o Core..:? "updateMask"))

instance Core.ToJSON SetIamPolicyRequest where
        toJSON SetIamPolicyRequest{..}
          = Core.object
              (Core.catMaybes
                 [("policy" Core..=) Core.<$> policy,
                  ("updateMask" Core..=) Core.<$> updateMask])


-- | Unconditionally routes all read\/write requests to a specific cluster. This option preserves read-your-writes consistency but does not improve availability.
--
-- /See:/ 'newSingleClusterRouting' smart constructor.
data SingleClusterRouting = SingleClusterRouting
    {
      -- | Whether or not @CheckAndMutateRow@ and @ReadModifyWriteRow@ requests are allowed by this app profile. It is unsafe to send these requests to the same table\/row\/column in multiple clusters.
      allowTransactionalWrites :: (Core.Maybe Core.Bool)
      -- | The cluster to which read\/write requests should be routed.
    , clusterId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SingleClusterRouting' with the minimum fields required to make a request.
newSingleClusterRouting 
    ::  SingleClusterRouting
newSingleClusterRouting =
  SingleClusterRouting
    {allowTransactionalWrites = Core.Nothing, clusterId = Core.Nothing}

instance Core.FromJSON SingleClusterRouting where
        parseJSON
          = Core.withObject "SingleClusterRouting"
              (\ o ->
                 SingleClusterRouting Core.<$>
                   (o Core..:? "allowTransactionalWrites") Core.<*>
                     (o Core..:? "clusterId"))

instance Core.ToJSON SingleClusterRouting where
        toJSON SingleClusterRouting{..}
          = Core.object
              (Core.catMaybes
                 [("allowTransactionalWrites" Core..=) Core.<$>
                    allowTransactionalWrites,
                  ("clusterId" Core..=) Core.<$> clusterId])


-- | An initial split point for a newly created table.
--
-- /See:/ 'newSplit' smart constructor.
newtype Split = Split
    {
      -- | Row key to use as an initial tablet boundary.
      key :: (Core.Maybe Core.Base64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Split' with the minimum fields required to make a request.
newSplit 
    ::  Split
newSplit = Split {key = Core.Nothing}

instance Core.FromJSON Split where
        parseJSON
          = Core.withObject "Split"
              (\ o -> Split Core.<$> (o Core..:? "key"))

instance Core.ToJSON Split where
        toJSON Split{..}
          = Core.object
              (Core.catMaybes [("key" Core..=) Core.<$> key])


-- | Standard options for isolating this app profile\'s traffic from other use cases.
--
-- /See:/ 'newStandardIsolation' smart constructor.
newtype StandardIsolation = StandardIsolation
    {
      -- | The priority of requests sent using this app profile.
      priority :: (Core.Maybe StandardIsolation_Priority)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StandardIsolation' with the minimum fields required to make a request.
newStandardIsolation 
    ::  StandardIsolation
newStandardIsolation = StandardIsolation {priority = Core.Nothing}

instance Core.FromJSON StandardIsolation where
        parseJSON
          = Core.withObject "StandardIsolation"
              (\ o ->
                 StandardIsolation Core.<$> (o Core..:? "priority"))

instance Core.ToJSON StandardIsolation where
        toJSON StandardIsolation{..}
          = Core.object
              (Core.catMaybes
                 [("priority" Core..=) Core.<$> priority])


-- | Checks that all writes before the consistency token was generated are replicated in every cluster and readable.
--
-- /See:/ 'newStandardReadRemoteWrites' smart constructor.
data StandardReadRemoteWrites = StandardReadRemoteWrites
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StandardReadRemoteWrites' with the minimum fields required to make a request.
newStandardReadRemoteWrites 
    ::  StandardReadRemoteWrites
newStandardReadRemoteWrites = StandardReadRemoteWrites

instance Core.FromJSON StandardReadRemoteWrites where
        parseJSON
          = Core.withObject "StandardReadRemoteWrites"
              (\ o -> Core.pure StandardReadRemoteWrites)

instance Core.ToJSON StandardReadRemoteWrites where
        toJSON = Core.const Core.emptyObject


-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
    {
      -- | The status code, which should be an enum value of google.rpc.Code.
      code :: (Core.Maybe Core.Int32)
      -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    , details :: (Core.Maybe [Status_DetailsItem])
      -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    , message :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus 
    ::  Status
newStatus =
  Status {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Status where
        parseJSON
          = Core.withObject "Status"
              (\ o ->
                 Status Core.<$>
                   (o Core..:? "code") Core.<*> (o Core..:? "details")
                     Core.<*> (o Core..:? "message"))

instance Core.ToJSON Status where
        toJSON Status{..}
          = Core.object
              (Core.catMaybes
                 [("code" Core..=) Core.<$> code,
                  ("details" Core..=) Core.<$> details,
                  ("message" Core..=) Core.<$> message])


--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> Status_DetailsItem
newStatus_DetailsItem additional = Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
        parseJSON
          = Core.withObject "Status_DetailsItem"
              (\ o ->
                 Status_DetailsItem Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Status_DetailsItem where
        toJSON Status_DetailsItem{..}
          = Core.toJSON additional


-- | A collection of user data indexed by row, column, and timestamp. Each table is served using the resources of its parent cluster.
--
-- /See:/ 'newTable' smart constructor.
data Table = Table
    {
      -- | If specified, automated backups are enabled for this table. Otherwise, automated backups are disabled.
      automatedBackupPolicy :: (Core.Maybe AutomatedBackupPolicy)
      -- | If specified, enable the change stream on this table. Otherwise, the change stream is disabled and the change stream is not retained.
    , changeStreamConfig :: (Core.Maybe ChangeStreamConfig)
      -- | Output only. Map from cluster ID to per-cluster table state. If it could not be determined whether or not the table has data in a particular cluster (for example, if its zone is unavailable), then there will be an entry for the cluster with UNKNOWN @replication_status@. Views: @REPLICATION_VIEW@, @ENCRYPTION_VIEW@, @FULL@
    , clusterStates :: (Core.Maybe Table_ClusterStates)
      -- | The column families configured for this table, mapped by column family ID. Views: @SCHEMA_VIEW@, @STATS_VIEW@, @FULL@
    , columnFamilies :: (Core.Maybe Table_ColumnFamilies)
      -- | Set to true to make the table protected against data loss. i.e. deleting the following resources through Admin APIs are prohibited: * The table. * The column families in the table. * The instance containing the table. Note one can still delete the data stored in the table through Data APIs.
    , deletionProtection :: (Core.Maybe Core.Bool)
      -- | Immutable. The granularity (i.e. @MILLIS@) at which timestamps are stored in this table. Timestamps not matching the granularity will be rejected. If unspecified at creation time, the value will be set to @MILLIS@. Views: @SCHEMA_VIEW@, @FULL@.
    , granularity :: (Core.Maybe Table_Granularity)
      -- | The unique name of the table. Values are of the form @projects\/{project}\/instances\/{instance}\/tables\/_a-zA-Z0-9*@. Views: @NAME_ONLY@, @SCHEMA_VIEW@, @REPLICATION_VIEW@, @STATS_VIEW@, @FULL@
    , name :: (Core.Maybe Core.Text)
      -- | Output only. If this table was restored from another data source (e.g. a backup), this field will be populated with information about the restore.
    , restoreInfo :: (Core.Maybe RestoreInfo)
      -- | Output only. Only available with STATS_VIEW, this includes summary statistics about the entire table contents. For statistics about a specific column family, see ColumnFamilyStats in the mapped ColumnFamily collection above.
    , stats :: (Core.Maybe TableStats)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Table' with the minimum fields required to make a request.
newTable 
    ::  Table
newTable =
  Table
    { automatedBackupPolicy = Core.Nothing
    , changeStreamConfig = Core.Nothing
    , clusterStates = Core.Nothing
    , columnFamilies = Core.Nothing
    , deletionProtection = Core.Nothing
    , granularity = Core.Nothing
    , name = Core.Nothing
    , restoreInfo = Core.Nothing
    , stats = Core.Nothing
    }

instance Core.FromJSON Table where
        parseJSON
          = Core.withObject "Table"
              (\ o ->
                 Table Core.<$>
                   (o Core..:? "automatedBackupPolicy") Core.<*>
                     (o Core..:? "changeStreamConfig")
                     Core.<*> (o Core..:? "clusterStates")
                     Core.<*> (o Core..:? "columnFamilies")
                     Core.<*> (o Core..:? "deletionProtection")
                     Core.<*> (o Core..:? "granularity")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "restoreInfo")
                     Core.<*> (o Core..:? "stats"))

instance Core.ToJSON Table where
        toJSON Table{..}
          = Core.object
              (Core.catMaybes
                 [("automatedBackupPolicy" Core..=) Core.<$>
                    automatedBackupPolicy,
                  ("changeStreamConfig" Core..=) Core.<$>
                    changeStreamConfig,
                  ("clusterStates" Core..=) Core.<$> clusterStates,
                  ("columnFamilies" Core..=) Core.<$> columnFamilies,
                  ("deletionProtection" Core..=) Core.<$>
                    deletionProtection,
                  ("granularity" Core..=) Core.<$> granularity,
                  ("name" Core..=) Core.<$> name,
                  ("restoreInfo" Core..=) Core.<$> restoreInfo,
                  ("stats" Core..=) Core.<$> stats])


-- | Output only. Map from cluster ID to per-cluster table state. If it could not be determined whether or not the table has data in a particular cluster (for example, if its zone is unavailable), then there will be an entry for the cluster with UNKNOWN @replication_status@. Views: @REPLICATION_VIEW@, @ENCRYPTION_VIEW@, @FULL@
--
-- /See:/ 'newTable_ClusterStates' smart constructor.
newtype Table_ClusterStates = Table_ClusterStates
    {
      -- | 
      additional :: (Core.HashMap Core.Text ClusterState)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Table_ClusterStates' with the minimum fields required to make a request.
newTable_ClusterStates 
    ::  Core.HashMap Core.Text ClusterState
       -- ^  See 'additional'.
    -> Table_ClusterStates
newTable_ClusterStates additional =
  Table_ClusterStates {additional = additional}

instance Core.FromJSON Table_ClusterStates where
        parseJSON
          = Core.withObject "Table_ClusterStates"
              (\ o ->
                 Table_ClusterStates Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON Table_ClusterStates where
        toJSON Table_ClusterStates{..}
          = Core.toJSON additional


-- | The column families configured for this table, mapped by column family ID. Views: @SCHEMA_VIEW@, @STATS_VIEW@, @FULL@
--
-- /See:/ 'newTable_ColumnFamilies' smart constructor.
newtype Table_ColumnFamilies = Table_ColumnFamilies
    {
      -- | 
      additional :: (Core.HashMap Core.Text ColumnFamily)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Table_ColumnFamilies' with the minimum fields required to make a request.
newTable_ColumnFamilies 
    ::  Core.HashMap Core.Text ColumnFamily
       -- ^  See 'additional'.
    -> Table_ColumnFamilies
newTable_ColumnFamilies additional =
  Table_ColumnFamilies {additional = additional}

instance Core.FromJSON Table_ColumnFamilies where
        parseJSON
          = Core.withObject "Table_ColumnFamilies"
              (\ o ->
                 Table_ColumnFamilies Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON Table_ColumnFamilies where
        toJSON Table_ColumnFamilies{..}
          = Core.toJSON additional


-- | Progress info for copying a table\'s data to the new cluster.
--
-- /See:/ 'newTableProgress' smart constructor.
data TableProgress = TableProgress
    {
      -- | Estimate of the number of bytes copied so far for this table. This will eventually reach \'estimated/size/bytes\' unless the table copy is CANCELLED.
      estimatedCopiedBytes :: (Core.Maybe Core.Int64)
      -- | Estimate of the size of the table to be copied.
    , estimatedSizeBytes :: (Core.Maybe Core.Int64)
      -- | 
    , state :: (Core.Maybe TableProgress_State)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableProgress' with the minimum fields required to make a request.
newTableProgress 
    ::  TableProgress
newTableProgress =
  TableProgress
    { estimatedCopiedBytes = Core.Nothing
    , estimatedSizeBytes = Core.Nothing
    , state = Core.Nothing
    }

instance Core.FromJSON TableProgress where
        parseJSON
          = Core.withObject "TableProgress"
              (\ o ->
                 TableProgress Core.<$>
                   (o Core..:? "estimatedCopiedBytes" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "estimatedSizeBytes" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "state"))

instance Core.ToJSON TableProgress where
        toJSON TableProgress{..}
          = Core.object
              (Core.catMaybes
                 [("estimatedCopiedBytes" Core..=) Core.. Core.AsText
                    Core.<$> estimatedCopiedBytes,
                  ("estimatedSizeBytes" Core..=) Core.. Core.AsText
                    Core.<$> estimatedSizeBytes,
                  ("state" Core..=) Core.<$> state])


-- | Approximate statistics related to a table. These statistics are calculated infrequently, while simultaneously, data in the table can change rapidly. Thus the values reported here (e.g. row count) are very likely out-of date, even the instant they are received in this API. Thus, only treat these values as approximate. IMPORTANT: Everything below is approximate, unless otherwise specified.
--
-- /See:/ 'newTableStats' smart constructor.
data TableStats = TableStats
    {
      -- | How many cells are present per column (column family, column qualifier) combinations, averaged over all columns in all rows in the table. e.g. A table with 2 rows: * A row with 3 cells in \"family:col\" and 1 cell in \"other:col\" (4 cells \/ 2 columns) * A row with 1 cell in \"family:col\", 7 cells in \"family:other_col\", and 7 cells in \"other:data\" (15 cells \/ 3 columns) would report (4 + 15)\/(2 + 3) = 3.8 in this field.
      averageCellsPerColumn :: (Core.Maybe Core.Double)
      -- | How many (column family, column qualifier) combinations are present per row in the table, averaged over all rows in the table. e.g. A table with 2 rows: * A row with cells in \"family:col\" and \"other:col\" (2 distinct columns) * A row with cells in \"family:col\", \"family:other_col\", and \"other:data\" (3 distinct columns) would report (2 + 3)\/2 = 2.5 in this field.
    , averageColumnsPerRow :: (Core.Maybe Core.Double)
      -- | This is roughly how many bytes would be needed to read the entire table (e.g. by streaming all contents out).
    , logicalDataBytes :: (Core.Maybe Core.Int64)
      -- | How many rows are in the table.
    , rowCount :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableStats' with the minimum fields required to make a request.
newTableStats 
    ::  TableStats
newTableStats =
  TableStats
    { averageCellsPerColumn = Core.Nothing
    , averageColumnsPerRow = Core.Nothing
    , logicalDataBytes = Core.Nothing
    , rowCount = Core.Nothing
    }

instance Core.FromJSON TableStats where
        parseJSON
          = Core.withObject "TableStats"
              (\ o ->
                 TableStats Core.<$>
                   (o Core..:? "averageCellsPerColumn") Core.<*>
                     (o Core..:? "averageColumnsPerRow")
                     Core.<*>
                     (o Core..:? "logicalDataBytes" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "rowCount" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON TableStats where
        toJSON TableStats{..}
          = Core.object
              (Core.catMaybes
                 [("averageCellsPerColumn" Core..=) Core.<$>
                    averageCellsPerColumn,
                  ("averageColumnsPerRow" Core..=) Core.<$>
                    averageColumnsPerRow,
                  ("logicalDataBytes" Core..=) Core.. Core.AsText
                    Core.<$> logicalDataBytes,
                  ("rowCount" Core..=) Core.. Core.AsText Core.<$>
                    rowCount])


-- | Request message for @TestIamPermissions@ method.
--
-- /See:/ 'newTestIamPermissionsRequest' smart constructor.
newtype TestIamPermissionsRequest = TestIamPermissionsRequest
    {
      -- | The set of permissions to check for the @resource@. Permissions with wildcards (such as @*@ or @storage.*@) are not allowed. For more information see <https://cloud.google.com/iam/docs/overview#permissions IAM Overview>.
      permissions :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestIamPermissionsRequest' with the minimum fields required to make a request.
newTestIamPermissionsRequest 
    ::  TestIamPermissionsRequest
newTestIamPermissionsRequest =
  TestIamPermissionsRequest {permissions = Core.Nothing}

instance Core.FromJSON TestIamPermissionsRequest
         where
        parseJSON
          = Core.withObject "TestIamPermissionsRequest"
              (\ o ->
                 TestIamPermissionsRequest Core.<$>
                   (o Core..:? "permissions"))

instance Core.ToJSON TestIamPermissionsRequest where
        toJSON TestIamPermissionsRequest{..}
          = Core.object
              (Core.catMaybes
                 [("permissions" Core..=) Core.<$> permissions])


-- | Response message for @TestIamPermissions@ method.
--
-- /See:/ 'newTestIamPermissionsResponse' smart constructor.
newtype TestIamPermissionsResponse = TestIamPermissionsResponse
    {
      -- | A subset of @TestPermissionsRequest.permissions@ that the caller is allowed.
      permissions :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestIamPermissionsResponse' with the minimum fields required to make a request.
newTestIamPermissionsResponse 
    ::  TestIamPermissionsResponse
newTestIamPermissionsResponse =
  TestIamPermissionsResponse {permissions = Core.Nothing}

instance Core.FromJSON TestIamPermissionsResponse
         where
        parseJSON
          = Core.withObject "TestIamPermissionsResponse"
              (\ o ->
                 TestIamPermissionsResponse Core.<$>
                   (o Core..:? "permissions"))

instance Core.ToJSON TestIamPermissionsResponse where
        toJSON TestIamPermissionsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("permissions" Core..=) Core.<$> permissions])


-- | @Type@ represents the type of data that is written to, read from, or stored in Bigtable. It is heavily based on the GoogleSQL standard to help maintain familiarity and consistency across products and features. For compatibility with Bigtable\'s existing untyped APIs, each @Type@ includes an @Encoding@ which describes how to convert to or from the underlying data. Each encoding can operate in one of two modes: - Sorted: In this mode, Bigtable guarantees that @Encode(X) \<= Encode(Y)@ if and only if @X \<= Y@. This is useful anywhere sort order is important, for example when encoding keys. - Distinct: In this mode, Bigtable guarantees that if @X != Y@ then @Encode(X) != Encode(Y)@. However, the converse is not guaranteed. For example, both \"{\'foo\': \'1\', \'bar\': \'2\'}\" and \"{\'bar\': \'2\', \'foo\': \'1\'}\" are valid encodings of the same JSON value. The API clearly documents which mode is used wherever an encoding can be configured. Each encoding also documents which values are supported in which
-- modes. For example, when encoding INT64 as a numeric STRING, negative numbers cannot be encoded in sorted mode. This is because @INT64(1) > INT64(-1)@, but @STRING(\"-00001\") > STRING(\"00001\")@.
--
-- /See:/ 'newType' smart constructor.
data Type = Type
    {
      -- | Aggregate
      aggregateType :: (Core.Maybe GoogleBigtableAdminV2TypeAggregate)
      -- | Array
    , arrayType :: (Core.Maybe GoogleBigtableAdminV2TypeArray)
      -- | Bool
    , boolType :: (Core.Maybe GoogleBigtableAdminV2TypeBool)
      -- | Bytes
    , bytesType :: (Core.Maybe GoogleBigtableAdminV2TypeBytes)
      -- | Date
    , dateType :: (Core.Maybe GoogleBigtableAdminV2TypeDate)
      -- | Float32
    , float32Type :: (Core.Maybe GoogleBigtableAdminV2TypeFloat32)
      -- | Float64
    , float64Type :: (Core.Maybe GoogleBigtableAdminV2TypeFloat64)
      -- | Int64
    , int64Type :: (Core.Maybe GoogleBigtableAdminV2TypeInt64)
      -- | Map
    , mapType :: (Core.Maybe GoogleBigtableAdminV2TypeMap)
      -- | String
    , stringType :: (Core.Maybe GoogleBigtableAdminV2TypeString)
      -- | Struct
    , structType :: (Core.Maybe GoogleBigtableAdminV2TypeStruct)
      -- | Timestamp
    , timestampType :: (Core.Maybe GoogleBigtableAdminV2TypeTimestamp)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Type' with the minimum fields required to make a request.
newType 
    ::  Type
newType =
  Type
    { aggregateType = Core.Nothing
    , arrayType = Core.Nothing
    , boolType = Core.Nothing
    , bytesType = Core.Nothing
    , dateType = Core.Nothing
    , float32Type = Core.Nothing
    , float64Type = Core.Nothing
    , int64Type = Core.Nothing
    , mapType = Core.Nothing
    , stringType = Core.Nothing
    , structType = Core.Nothing
    , timestampType = Core.Nothing
    }

instance Core.FromJSON Type where
        parseJSON
          = Core.withObject "Type"
              (\ o ->
                 Type Core.<$>
                   (o Core..:? "aggregateType") Core.<*>
                     (o Core..:? "arrayType")
                     Core.<*> (o Core..:? "boolType")
                     Core.<*> (o Core..:? "bytesType")
                     Core.<*> (o Core..:? "dateType")
                     Core.<*> (o Core..:? "float32Type")
                     Core.<*> (o Core..:? "float64Type")
                     Core.<*> (o Core..:? "int64Type")
                     Core.<*> (o Core..:? "mapType")
                     Core.<*> (o Core..:? "stringType")
                     Core.<*> (o Core..:? "structType")
                     Core.<*> (o Core..:? "timestampType"))

instance Core.ToJSON Type where
        toJSON Type{..}
          = Core.object
              (Core.catMaybes
                 [("aggregateType" Core..=) Core.<$> aggregateType,
                  ("arrayType" Core..=) Core.<$> arrayType,
                  ("boolType" Core..=) Core.<$> boolType,
                  ("bytesType" Core..=) Core.<$> bytesType,
                  ("dateType" Core..=) Core.<$> dateType,
                  ("float32Type" Core..=) Core.<$> float32Type,
                  ("float64Type" Core..=) Core.<$> float64Type,
                  ("int64Type" Core..=) Core.<$> int64Type,
                  ("mapType" Core..=) Core.<$> mapType,
                  ("stringType" Core..=) Core.<$> stringType,
                  ("structType" Core..=) Core.<$> structType,
                  ("timestampType" Core..=) Core.<$> timestampType])


-- | Metadata type for the operation returned by google.bigtable.admin.v2.BigtableTableAdmin.UndeleteTable.
--
-- /See:/ 'newUndeleteTableMetadata' smart constructor.
data UndeleteTableMetadata = UndeleteTableMetadata
    {
      -- | If set, the time at which this operation finished or was cancelled.
      endTime :: (Core.Maybe Core.DateTime)
      -- | The name of the table being restored.
    , name :: (Core.Maybe Core.Text)
      -- | The time at which this operation started.
    , startTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UndeleteTableMetadata' with the minimum fields required to make a request.
newUndeleteTableMetadata 
    ::  UndeleteTableMetadata
newUndeleteTableMetadata =
  UndeleteTableMetadata
    {endTime = Core.Nothing, name = Core.Nothing, startTime = Core.Nothing}

instance Core.FromJSON UndeleteTableMetadata where
        parseJSON
          = Core.withObject "UndeleteTableMetadata"
              (\ o ->
                 UndeleteTableMetadata Core.<$>
                   (o Core..:? "endTime") Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "startTime"))

instance Core.ToJSON UndeleteTableMetadata where
        toJSON UndeleteTableMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("endTime" Core..=) Core.<$> endTime,
                  ("name" Core..=) Core.<$> name,
                  ("startTime" Core..=) Core.<$> startTime])


-- | Request message for google.bigtable.admin.v2.BigtableTableAdmin.UndeleteTable
--
-- /See:/ 'newUndeleteTableRequest' smart constructor.
data UndeleteTableRequest = UndeleteTableRequest
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UndeleteTableRequest' with the minimum fields required to make a request.
newUndeleteTableRequest 
    ::  UndeleteTableRequest
newUndeleteTableRequest = UndeleteTableRequest

instance Core.FromJSON UndeleteTableRequest where
        parseJSON
          = Core.withObject "UndeleteTableRequest"
              (\ o -> Core.pure UndeleteTableRequest)

instance Core.ToJSON UndeleteTableRequest where
        toJSON = Core.const Core.emptyObject


-- | A GcRule which deletes cells matching any of the given rules.
--
-- /See:/ 'newUnion' smart constructor.
newtype Union = Union
    {
      -- | Delete cells which would be deleted by any element of @rules@.
      rules :: (Core.Maybe [GcRule])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Union' with the minimum fields required to make a request.
newUnion 
    ::  Union
newUnion = Union {rules = Core.Nothing}

instance Core.FromJSON Union where
        parseJSON
          = Core.withObject "Union"
              (\ o -> Union Core.<$> (o Core..:? "rules"))

instance Core.ToJSON Union where
        toJSON Union{..}
          = Core.object
              (Core.catMaybes [("rules" Core..=) Core.<$> rules])


-- | The metadata for the Operation returned by UpdateAppProfile.
--
-- /See:/ 'newUpdateAppProfileMetadata' smart constructor.
data UpdateAppProfileMetadata = UpdateAppProfileMetadata
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateAppProfileMetadata' with the minimum fields required to make a request.
newUpdateAppProfileMetadata 
    ::  UpdateAppProfileMetadata
newUpdateAppProfileMetadata = UpdateAppProfileMetadata

instance Core.FromJSON UpdateAppProfileMetadata where
        parseJSON
          = Core.withObject "UpdateAppProfileMetadata"
              (\ o -> Core.pure UpdateAppProfileMetadata)

instance Core.ToJSON UpdateAppProfileMetadata where
        toJSON = Core.const Core.emptyObject


-- | Metadata for the google.longrunning.Operation returned by UpdateAuthorizedView.
--
-- /See:/ 'newUpdateAuthorizedViewMetadata' smart constructor.
data UpdateAuthorizedViewMetadata = UpdateAuthorizedViewMetadata
    {
      -- | The time at which the operation failed or was completed successfully.
      finishTime :: (Core.Maybe Core.DateTime)
      -- | The request that prompted the initiation of this UpdateAuthorizedView operation.
    , originalRequest :: (Core.Maybe UpdateAuthorizedViewRequest)
      -- | The time at which the original request was received.
    , requestTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateAuthorizedViewMetadata' with the minimum fields required to make a request.
newUpdateAuthorizedViewMetadata 
    ::  UpdateAuthorizedViewMetadata
newUpdateAuthorizedViewMetadata =
  UpdateAuthorizedViewMetadata
    { finishTime = Core.Nothing
    , originalRequest = Core.Nothing
    , requestTime = Core.Nothing
    }

instance Core.FromJSON UpdateAuthorizedViewMetadata
         where
        parseJSON
          = Core.withObject "UpdateAuthorizedViewMetadata"
              (\ o ->
                 UpdateAuthorizedViewMetadata Core.<$>
                   (o Core..:? "finishTime") Core.<*>
                     (o Core..:? "originalRequest")
                     Core.<*> (o Core..:? "requestTime"))

instance Core.ToJSON UpdateAuthorizedViewMetadata
         where
        toJSON UpdateAuthorizedViewMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("finishTime" Core..=) Core.<$> finishTime,
                  ("originalRequest" Core..=) Core.<$> originalRequest,
                  ("requestTime" Core..=) Core.<$> requestTime])


-- | The request for UpdateAuthorizedView.
--
-- /See:/ 'newUpdateAuthorizedViewRequest' smart constructor.
data UpdateAuthorizedViewRequest = UpdateAuthorizedViewRequest
    {
      -- | Required. The AuthorizedView to update. The @name@ in @authorized_view@ is used to identify the AuthorizedView. AuthorizedView name must in this format: @projects\/{project}\/instances\/{instance}\/tables\/{table}\/authorizedViews\/{authorized_view}@.
      authorizedView :: (Core.Maybe AuthorizedView)
      -- | Optional. If true, ignore the safety checks when updating the AuthorizedView.
    , ignoreWarnings :: (Core.Maybe Core.Bool)
      -- | Optional. The list of fields to update. A mask specifying which fields in the AuthorizedView resource should be updated. This mask is relative to the AuthorizedView resource, not to the request message. A field will be overwritten if it is in the mask. If empty, all fields set in the request will be overwritten. A special value @*@ means to overwrite all fields (including fields not set in the request).
    , updateMask :: (Core.Maybe Core.FieldMask)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateAuthorizedViewRequest' with the minimum fields required to make a request.
newUpdateAuthorizedViewRequest 
    ::  UpdateAuthorizedViewRequest
newUpdateAuthorizedViewRequest =
  UpdateAuthorizedViewRequest
    { authorizedView = Core.Nothing
    , ignoreWarnings = Core.Nothing
    , updateMask = Core.Nothing
    }

instance Core.FromJSON UpdateAuthorizedViewRequest
         where
        parseJSON
          = Core.withObject "UpdateAuthorizedViewRequest"
              (\ o ->
                 UpdateAuthorizedViewRequest Core.<$>
                   (o Core..:? "authorizedView") Core.<*>
                     (o Core..:? "ignoreWarnings")
                     Core.<*> (o Core..:? "updateMask"))

instance Core.ToJSON UpdateAuthorizedViewRequest
         where
        toJSON UpdateAuthorizedViewRequest{..}
          = Core.object
              (Core.catMaybes
                 [("authorizedView" Core..=) Core.<$> authorizedView,
                  ("ignoreWarnings" Core..=) Core.<$> ignoreWarnings,
                  ("updateMask" Core..=) Core.<$> updateMask])


-- | The metadata for the Operation returned by UpdateCluster.
--
-- /See:/ 'newUpdateClusterMetadata' smart constructor.
data UpdateClusterMetadata = UpdateClusterMetadata
    {
      -- | The time at which the operation failed or was completed successfully.
      finishTime :: (Core.Maybe Core.DateTime)
      -- | The request that prompted the initiation of this UpdateCluster operation.
    , originalRequest :: (Core.Maybe Cluster)
      -- | The time at which the original request was received.
    , requestTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateClusterMetadata' with the minimum fields required to make a request.
newUpdateClusterMetadata 
    ::  UpdateClusterMetadata
newUpdateClusterMetadata =
  UpdateClusterMetadata
    { finishTime = Core.Nothing
    , originalRequest = Core.Nothing
    , requestTime = Core.Nothing
    }

instance Core.FromJSON UpdateClusterMetadata where
        parseJSON
          = Core.withObject "UpdateClusterMetadata"
              (\ o ->
                 UpdateClusterMetadata Core.<$>
                   (o Core..:? "finishTime") Core.<*>
                     (o Core..:? "originalRequest")
                     Core.<*> (o Core..:? "requestTime"))

instance Core.ToJSON UpdateClusterMetadata where
        toJSON UpdateClusterMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("finishTime" Core..=) Core.<$> finishTime,
                  ("originalRequest" Core..=) Core.<$> originalRequest,
                  ("requestTime" Core..=) Core.<$> requestTime])


-- | The metadata for the Operation returned by UpdateInstance.
--
-- /See:/ 'newUpdateInstanceMetadata' smart constructor.
data UpdateInstanceMetadata = UpdateInstanceMetadata
    {
      -- | The time at which the operation failed or was completed successfully.
      finishTime :: (Core.Maybe Core.DateTime)
      -- | The request that prompted the initiation of this UpdateInstance operation.
    , originalRequest :: (Core.Maybe PartialUpdateInstanceRequest)
      -- | The time at which the original request was received.
    , requestTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateInstanceMetadata' with the minimum fields required to make a request.
newUpdateInstanceMetadata 
    ::  UpdateInstanceMetadata
newUpdateInstanceMetadata =
  UpdateInstanceMetadata
    { finishTime = Core.Nothing
    , originalRequest = Core.Nothing
    , requestTime = Core.Nothing
    }

instance Core.FromJSON UpdateInstanceMetadata where
        parseJSON
          = Core.withObject "UpdateInstanceMetadata"
              (\ o ->
                 UpdateInstanceMetadata Core.<$>
                   (o Core..:? "finishTime") Core.<*>
                     (o Core..:? "originalRequest")
                     Core.<*> (o Core..:? "requestTime"))

instance Core.ToJSON UpdateInstanceMetadata where
        toJSON UpdateInstanceMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("finishTime" Core..=) Core.<$> finishTime,
                  ("originalRequest" Core..=) Core.<$> originalRequest,
                  ("requestTime" Core..=) Core.<$> requestTime])


-- | Metadata type for the operation returned by UpdateTable.
--
-- /See:/ 'newUpdateTableMetadata' smart constructor.
data UpdateTableMetadata = UpdateTableMetadata
    {
      -- | If set, the time at which this operation finished or was canceled.
      endTime :: (Core.Maybe Core.DateTime)
      -- | The name of the table being updated.
    , name :: (Core.Maybe Core.Text)
      -- | The time at which this operation started.
    , startTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateTableMetadata' with the minimum fields required to make a request.
newUpdateTableMetadata 
    ::  UpdateTableMetadata
newUpdateTableMetadata =
  UpdateTableMetadata
    {endTime = Core.Nothing, name = Core.Nothing, startTime = Core.Nothing}

instance Core.FromJSON UpdateTableMetadata where
        parseJSON
          = Core.withObject "UpdateTableMetadata"
              (\ o ->
                 UpdateTableMetadata Core.<$>
                   (o Core..:? "endTime") Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "startTime"))

instance Core.ToJSON UpdateTableMetadata where
        toJSON UpdateTableMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("endTime" Core..=) Core.<$> endTime,
                  ("name" Core..=) Core.<$> name,
                  ("startTime" Core..=) Core.<$> startTime])

