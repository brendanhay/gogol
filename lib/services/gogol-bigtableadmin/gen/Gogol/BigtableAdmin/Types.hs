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
-- Module      : Gogol.BigtableAdmin.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.BigtableAdmin.Types
  ( -- * Configuration
    bigtableAdminService,

    -- * OAuth Scopes
    Bigtable'Admin,
    Bigtable'Admin'Cluster,
    Bigtable'Admin'Instance,
    Bigtable'Admin'Table,
    CloudBigtable'Admin,
    CloudBigtable'Admin'Cluster,
    CloudBigtable'Admin'Table,
    CloudPlatform'FullControl,
    CloudPlatform'ReadOnly,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AppProfile
    AppProfile (..),
    newAppProfile,

    -- ** AuditConfig
    AuditConfig (..),
    newAuditConfig,

    -- ** AuditLogConfig
    AuditLogConfig (..),
    newAuditLogConfig,

    -- ** AuditLogConfig_LogType
    AuditLogConfig_LogType (..),

    -- ** AutoscalingLimits
    AutoscalingLimits (..),
    newAutoscalingLimits,

    -- ** AutoscalingTargets
    AutoscalingTargets (..),
    newAutoscalingTargets,

    -- ** Backup
    Backup (..),
    newBackup,

    -- ** Backup_State
    Backup_State (..),

    -- ** BackupInfo
    BackupInfo (..),
    newBackupInfo,

    -- ** Binding
    Binding (..),
    newBinding,

    -- ** CheckConsistencyRequest
    CheckConsistencyRequest (..),
    newCheckConsistencyRequest,

    -- ** CheckConsistencyResponse
    CheckConsistencyResponse (..),
    newCheckConsistencyResponse,

    -- ** Cluster
    Cluster (..),
    newCluster,

    -- ** Cluster_DefaultStorageType
    Cluster_DefaultStorageType (..),

    -- ** Cluster_State
    Cluster_State (..),

    -- ** ClusterAutoscalingConfig
    ClusterAutoscalingConfig (..),
    newClusterAutoscalingConfig,

    -- ** ClusterConfig
    ClusterConfig (..),
    newClusterConfig,

    -- ** ClusterState
    ClusterState (..),
    newClusterState,

    -- ** ClusterState_ReplicationState
    ClusterState_ReplicationState (..),

    -- ** ColumnFamily
    ColumnFamily (..),
    newColumnFamily,

    -- ** ColumnFamilyStats
    ColumnFamilyStats (..),
    newColumnFamilyStats,

    -- ** CopyBackupMetadata
    CopyBackupMetadata (..),
    newCopyBackupMetadata,

    -- ** CopyBackupRequest
    CopyBackupRequest (..),
    newCopyBackupRequest,

    -- ** CreateBackupMetadata
    CreateBackupMetadata (..),
    newCreateBackupMetadata,

    -- ** CreateClusterMetadata
    CreateClusterMetadata (..),
    newCreateClusterMetadata,

    -- ** CreateClusterMetadata_Tables
    CreateClusterMetadata_Tables (..),
    newCreateClusterMetadata_Tables,

    -- ** CreateClusterRequest
    CreateClusterRequest (..),
    newCreateClusterRequest,

    -- ** CreateInstanceMetadata
    CreateInstanceMetadata (..),
    newCreateInstanceMetadata,

    -- ** CreateInstanceRequest
    CreateInstanceRequest (..),
    newCreateInstanceRequest,

    -- ** CreateInstanceRequest_Clusters
    CreateInstanceRequest_Clusters (..),
    newCreateInstanceRequest_Clusters,

    -- ** CreateTableRequest
    CreateTableRequest (..),
    newCreateTableRequest,

    -- ** DropRowRangeRequest
    DropRowRangeRequest (..),
    newDropRowRangeRequest,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** EncryptionConfig
    EncryptionConfig (..),
    newEncryptionConfig,

    -- ** EncryptionInfo
    EncryptionInfo (..),
    newEncryptionInfo,

    -- ** EncryptionInfo_EncryptionType
    EncryptionInfo_EncryptionType (..),

    -- ** Expr
    Expr (..),
    newExpr,

    -- ** GcRule
    GcRule (..),
    newGcRule,

    -- ** GenerateConsistencyTokenRequest
    GenerateConsistencyTokenRequest (..),
    newGenerateConsistencyTokenRequest,

    -- ** GenerateConsistencyTokenResponse
    GenerateConsistencyTokenResponse (..),
    newGenerateConsistencyTokenResponse,

    -- ** GetIamPolicyRequest
    GetIamPolicyRequest (..),
    newGetIamPolicyRequest,

    -- ** GetPolicyOptions
    GetPolicyOptions (..),
    newGetPolicyOptions,

    -- ** HotTablet
    HotTablet (..),
    newHotTablet,

    -- ** Instance
    Instance (..),
    newInstance,

    -- ** Instance_Labels
    Instance_Labels (..),
    newInstance_Labels,

    -- ** Instance_State
    Instance_State (..),

    -- ** Instance_Type
    Instance_Type (..),

    -- ** Intersection
    Intersection (..),
    newIntersection,

    -- ** ListAppProfilesResponse
    ListAppProfilesResponse (..),
    newListAppProfilesResponse,

    -- ** ListBackupsResponse
    ListBackupsResponse (..),
    newListBackupsResponse,

    -- ** ListClustersResponse
    ListClustersResponse (..),
    newListClustersResponse,

    -- ** ListHotTabletsResponse
    ListHotTabletsResponse (..),
    newListHotTabletsResponse,

    -- ** ListInstancesResponse
    ListInstancesResponse (..),
    newListInstancesResponse,

    -- ** ListLocationsResponse
    ListLocationsResponse (..),
    newListLocationsResponse,

    -- ** ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- ** ListTablesResponse
    ListTablesResponse (..),
    newListTablesResponse,

    -- ** Location
    Location (..),
    newLocation,

    -- ** Location_Labels
    Location_Labels (..),
    newLocation_Labels,

    -- ** Location_Metadata
    Location_Metadata (..),
    newLocation_Metadata,

    -- ** Modification
    Modification (..),
    newModification,

    -- ** ModifyColumnFamiliesRequest
    ModifyColumnFamiliesRequest (..),
    newModifyColumnFamiliesRequest,

    -- ** MultiClusterRoutingUseAny
    MultiClusterRoutingUseAny (..),
    newMultiClusterRoutingUseAny,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** OperationProgress
    OperationProgress (..),
    newOperationProgress,

    -- ** OptimizeRestoredTableMetadata
    OptimizeRestoredTableMetadata (..),
    newOptimizeRestoredTableMetadata,

    -- ** PartialUpdateClusterMetadata
    PartialUpdateClusterMetadata (..),
    newPartialUpdateClusterMetadata,

    -- ** PartialUpdateClusterRequest
    PartialUpdateClusterRequest (..),
    newPartialUpdateClusterRequest,

    -- ** PartialUpdateInstanceRequest
    PartialUpdateInstanceRequest (..),
    newPartialUpdateInstanceRequest,

    -- ** Policy
    Policy (..),
    newPolicy,

    -- ** RestoreInfo
    RestoreInfo (..),
    newRestoreInfo,

    -- ** RestoreInfo_SourceType
    RestoreInfo_SourceType (..),

    -- ** RestoreTableMetadata
    RestoreTableMetadata (..),
    newRestoreTableMetadata,

    -- ** RestoreTableMetadata_SourceType
    RestoreTableMetadata_SourceType (..),

    -- ** RestoreTableRequest
    RestoreTableRequest (..),
    newRestoreTableRequest,

    -- ** SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- ** SingleClusterRouting
    SingleClusterRouting (..),
    newSingleClusterRouting,

    -- ** Split
    Split (..),
    newSplit,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** Table
    Table (..),
    newTable,

    -- ** Table_ClusterStates
    Table_ClusterStates (..),
    newTable_ClusterStates,

    -- ** Table_ColumnFamilies
    Table_ColumnFamilies (..),
    newTable_ColumnFamilies,

    -- ** Table_Granularity
    Table_Granularity (..),

    -- ** TableProgress
    TableProgress (..),
    newTableProgress,

    -- ** TableProgress_State
    TableProgress_State (..),

    -- ** TableStats
    TableStats (..),
    newTableStats,

    -- ** TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- ** TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- ** UndeleteTableMetadata
    UndeleteTableMetadata (..),
    newUndeleteTableMetadata,

    -- ** UndeleteTableRequest
    UndeleteTableRequest (..),
    newUndeleteTableRequest,

    -- ** Union
    Union (..),
    newUnion,

    -- ** UpdateAppProfileMetadata
    UpdateAppProfileMetadata (..),
    newUpdateAppProfileMetadata,

    -- ** UpdateClusterMetadata
    UpdateClusterMetadata (..),
    newUpdateClusterMetadata,

    -- ** UpdateInstanceMetadata
    UpdateInstanceMetadata (..),
    newUpdateInstanceMetadata,

    -- ** UpdateTableMetadata
    UpdateTableMetadata (..),
    newUpdateTableMetadata,

    -- ** ProjectsInstancesTablesGetView
    ProjectsInstancesTablesGetView (..),

    -- ** ProjectsInstancesTablesListView
    ProjectsInstancesTablesListView (..),
  )
where

import Gogol.BigtableAdmin.Internal.Product
import Gogol.BigtableAdmin.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Default request referring to version @v2@ of the Cloud Bigtable Admin API. This contains the host and root path used as a starting point for constructing service requests.
bigtableAdminService :: Core.ServiceConfig
bigtableAdminService =
  Core.defaultService
    (Core.ServiceId "bigtableadmin:v2")
    "bigtableadmin.googleapis.com"

-- | Administer your Cloud Bigtable tables and clusters
type Bigtable'Admin = "https://www.googleapis.com/auth/bigtable.admin"

-- | Administer your Cloud Bigtable clusters
type Bigtable'Admin'Cluster = "https://www.googleapis.com/auth/bigtable.admin.cluster"

-- | Administer your Cloud Bigtable clusters
type Bigtable'Admin'Instance = "https://www.googleapis.com/auth/bigtable.admin.instance"

-- | Administer your Cloud Bigtable tables
type Bigtable'Admin'Table = "https://www.googleapis.com/auth/bigtable.admin.table"

-- | Administer your Cloud Bigtable tables and clusters
type CloudBigtable'Admin = "https://www.googleapis.com/auth/cloud-bigtable.admin"

-- | Administer your Cloud Bigtable clusters
type CloudBigtable'Admin'Cluster = "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster"

-- | Administer your Cloud Bigtable tables
type CloudBigtable'Admin'Table = "https://www.googleapis.com/auth/cloud-bigtable.admin.table"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl = "https://www.googleapis.com/auth/cloud-platform"

-- | View your data across Google Cloud services and see the email address of your Google Account
type CloudPlatform'ReadOnly = "https://www.googleapis.com/auth/cloud-platform.read-only"
