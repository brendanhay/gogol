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
-- Module      : Network.Google.BigtableAdmin
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Administer your Cloud Bigtable tables and instances.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference>
module Network.Google.BigtableAdmin
  ( -- * Configuration
    bigtableAdminService,

    -- * OAuth Scopes
    bigtableAdminScope,
    bigtableAdminClusterScope,
    bigtableAdminInstanceScope,
    bigtableAdminTableScope,
    cloudBigtableAdminScope,
    cloudBigtableAdminClusterScope,
    cloudBigtableAdminTableScope,
    cloudPlatformScope,
    cloudPlatformReadOnlyScope,

    -- * Resources

    -- ** bigtableadmin.operations.cancel
    BigtableAdminOperationsCancelResource,
    newBigtableAdminOperationsCancel,
    BigtableAdminOperationsCancel,

    -- ** bigtableadmin.operations.delete
    BigtableAdminOperationsDeleteResource,
    newBigtableAdminOperationsDelete,
    BigtableAdminOperationsDelete,

    -- ** bigtableadmin.operations.get
    BigtableAdminOperationsGetResource,
    newBigtableAdminOperationsGet,
    BigtableAdminOperationsGet,

    -- ** bigtableadmin.operations.projects.operations.list
    BigtableAdminOperationsProjectsOperationsListResource,
    newBigtableAdminOperationsProjectsOperationsList,
    BigtableAdminOperationsProjectsOperationsList,

    -- ** bigtableadmin.projects.instances.appProfiles.create
    BigtableAdminProjectsInstancesAppProfilesCreateResource,
    newBigtableAdminProjectsInstancesAppProfilesCreate,
    BigtableAdminProjectsInstancesAppProfilesCreate,

    -- ** bigtableadmin.projects.instances.appProfiles.delete
    BigtableAdminProjectsInstancesAppProfilesDeleteResource,
    newBigtableAdminProjectsInstancesAppProfilesDelete,
    BigtableAdminProjectsInstancesAppProfilesDelete,

    -- ** bigtableadmin.projects.instances.appProfiles.get
    BigtableAdminProjectsInstancesAppProfilesGetResource,
    newBigtableAdminProjectsInstancesAppProfilesGet,
    BigtableAdminProjectsInstancesAppProfilesGet,

    -- ** bigtableadmin.projects.instances.appProfiles.list
    BigtableAdminProjectsInstancesAppProfilesListResource,
    newBigtableAdminProjectsInstancesAppProfilesList,
    BigtableAdminProjectsInstancesAppProfilesList,

    -- ** bigtableadmin.projects.instances.appProfiles.patch
    BigtableAdminProjectsInstancesAppProfilesPatchResource,
    newBigtableAdminProjectsInstancesAppProfilesPatch,
    BigtableAdminProjectsInstancesAppProfilesPatch,

    -- ** bigtableadmin.projects.instances.clusters.backups.create
    BigtableAdminProjectsInstancesClustersBackupsCreateResource,
    newBigtableAdminProjectsInstancesClustersBackupsCreate,
    BigtableAdminProjectsInstancesClustersBackupsCreate,

    -- ** bigtableadmin.projects.instances.clusters.backups.delete
    BigtableAdminProjectsInstancesClustersBackupsDeleteResource,
    newBigtableAdminProjectsInstancesClustersBackupsDelete,
    BigtableAdminProjectsInstancesClustersBackupsDelete,

    -- ** bigtableadmin.projects.instances.clusters.backups.get
    BigtableAdminProjectsInstancesClustersBackupsGetResource,
    newBigtableAdminProjectsInstancesClustersBackupsGet,
    BigtableAdminProjectsInstancesClustersBackupsGet,

    -- ** bigtableadmin.projects.instances.clusters.backups.getIamPolicy
    BigtableAdminProjectsInstancesClustersBackupsGetIamPolicyResource,
    newBigtableAdminProjectsInstancesClustersBackupsGetIamPolicy,
    BigtableAdminProjectsInstancesClustersBackupsGetIamPolicy,

    -- ** bigtableadmin.projects.instances.clusters.backups.list
    BigtableAdminProjectsInstancesClustersBackupsListResource,
    newBigtableAdminProjectsInstancesClustersBackupsList,
    BigtableAdminProjectsInstancesClustersBackupsList,

    -- ** bigtableadmin.projects.instances.clusters.backups.patch
    BigtableAdminProjectsInstancesClustersBackupsPatchResource,
    newBigtableAdminProjectsInstancesClustersBackupsPatch,
    BigtableAdminProjectsInstancesClustersBackupsPatch,

    -- ** bigtableadmin.projects.instances.clusters.backups.setIamPolicy
    BigtableAdminProjectsInstancesClustersBackupsSetIamPolicyResource,
    newBigtableAdminProjectsInstancesClustersBackupsSetIamPolicy,
    BigtableAdminProjectsInstancesClustersBackupsSetIamPolicy,

    -- ** bigtableadmin.projects.instances.clusters.backups.testIamPermissions
    BigtableAdminProjectsInstancesClustersBackupsTestIamPermissionsResource,
    newBigtableAdminProjectsInstancesClustersBackupsTestIamPermissions,
    BigtableAdminProjectsInstancesClustersBackupsTestIamPermissions,

    -- ** bigtableadmin.projects.instances.clusters.create
    BigtableAdminProjectsInstancesClustersCreateResource,
    newBigtableAdminProjectsInstancesClustersCreate,
    BigtableAdminProjectsInstancesClustersCreate,

    -- ** bigtableadmin.projects.instances.clusters.delete
    BigtableAdminProjectsInstancesClustersDeleteResource,
    newBigtableAdminProjectsInstancesClustersDelete,
    BigtableAdminProjectsInstancesClustersDelete,

    -- ** bigtableadmin.projects.instances.clusters.get
    BigtableAdminProjectsInstancesClustersGetResource,
    newBigtableAdminProjectsInstancesClustersGet,
    BigtableAdminProjectsInstancesClustersGet,

    -- ** bigtableadmin.projects.instances.clusters.list
    BigtableAdminProjectsInstancesClustersListResource,
    newBigtableAdminProjectsInstancesClustersList,
    BigtableAdminProjectsInstancesClustersList,

    -- ** bigtableadmin.projects.instances.clusters.partialUpdateCluster
    BigtableAdminProjectsInstancesClustersPartialUpdateClusterResource,
    newBigtableAdminProjectsInstancesClustersPartialUpdateCluster,
    BigtableAdminProjectsInstancesClustersPartialUpdateCluster,

    -- ** bigtableadmin.projects.instances.clusters.update
    BigtableAdminProjectsInstancesClustersUpdateResource,
    newBigtableAdminProjectsInstancesClustersUpdate,
    BigtableAdminProjectsInstancesClustersUpdate,

    -- ** bigtableadmin.projects.instances.create
    BigtableAdminProjectsInstancesCreateResource,
    newBigtableAdminProjectsInstancesCreate,
    BigtableAdminProjectsInstancesCreate,

    -- ** bigtableadmin.projects.instances.delete
    BigtableAdminProjectsInstancesDeleteResource,
    newBigtableAdminProjectsInstancesDelete,
    BigtableAdminProjectsInstancesDelete,

    -- ** bigtableadmin.projects.instances.get
    BigtableAdminProjectsInstancesGetResource,
    newBigtableAdminProjectsInstancesGet,
    BigtableAdminProjectsInstancesGet,

    -- ** bigtableadmin.projects.instances.getIamPolicy
    BigtableAdminProjectsInstancesGetIamPolicyResource,
    newBigtableAdminProjectsInstancesGetIamPolicy,
    BigtableAdminProjectsInstancesGetIamPolicy,

    -- ** bigtableadmin.projects.instances.list
    BigtableAdminProjectsInstancesListResource,
    newBigtableAdminProjectsInstancesList,
    BigtableAdminProjectsInstancesList,

    -- ** bigtableadmin.projects.instances.partialUpdateInstance
    BigtableAdminProjectsInstancesPartialUpdateInstanceResource,
    newBigtableAdminProjectsInstancesPartialUpdateInstance,
    BigtableAdminProjectsInstancesPartialUpdateInstance,

    -- ** bigtableadmin.projects.instances.setIamPolicy
    BigtableAdminProjectsInstancesSetIamPolicyResource,
    newBigtableAdminProjectsInstancesSetIamPolicy,
    BigtableAdminProjectsInstancesSetIamPolicy,

    -- ** bigtableadmin.projects.instances.tables.checkConsistency
    BigtableAdminProjectsInstancesTablesCheckConsistencyResource,
    newBigtableAdminProjectsInstancesTablesCheckConsistency,
    BigtableAdminProjectsInstancesTablesCheckConsistency,

    -- ** bigtableadmin.projects.instances.tables.create
    BigtableAdminProjectsInstancesTablesCreateResource,
    newBigtableAdminProjectsInstancesTablesCreate,
    BigtableAdminProjectsInstancesTablesCreate,

    -- ** bigtableadmin.projects.instances.tables.delete
    BigtableAdminProjectsInstancesTablesDeleteResource,
    newBigtableAdminProjectsInstancesTablesDelete,
    BigtableAdminProjectsInstancesTablesDelete,

    -- ** bigtableadmin.projects.instances.tables.dropRowRange
    BigtableAdminProjectsInstancesTablesDropRowRangeResource,
    newBigtableAdminProjectsInstancesTablesDropRowRange,
    BigtableAdminProjectsInstancesTablesDropRowRange,

    -- ** bigtableadmin.projects.instances.tables.generateConsistencyToken
    BigtableAdminProjectsInstancesTablesGenerateConsistencyTokenResource,
    newBigtableAdminProjectsInstancesTablesGenerateConsistencyToken,
    BigtableAdminProjectsInstancesTablesGenerateConsistencyToken,

    -- ** bigtableadmin.projects.instances.tables.get
    BigtableAdminProjectsInstancesTablesGetResource,
    newBigtableAdminProjectsInstancesTablesGet,
    BigtableAdminProjectsInstancesTablesGet,

    -- ** bigtableadmin.projects.instances.tables.getIamPolicy
    BigtableAdminProjectsInstancesTablesGetIamPolicyResource,
    newBigtableAdminProjectsInstancesTablesGetIamPolicy,
    BigtableAdminProjectsInstancesTablesGetIamPolicy,

    -- ** bigtableadmin.projects.instances.tables.list
    BigtableAdminProjectsInstancesTablesListResource,
    newBigtableAdminProjectsInstancesTablesList,
    BigtableAdminProjectsInstancesTablesList,

    -- ** bigtableadmin.projects.instances.tables.modifyColumnFamilies
    BigtableAdminProjectsInstancesTablesModifyColumnFamiliesResource,
    newBigtableAdminProjectsInstancesTablesModifyColumnFamilies,
    BigtableAdminProjectsInstancesTablesModifyColumnFamilies,

    -- ** bigtableadmin.projects.instances.tables.restore
    BigtableAdminProjectsInstancesTablesRestoreResource,
    newBigtableAdminProjectsInstancesTablesRestore,
    BigtableAdminProjectsInstancesTablesRestore,

    -- ** bigtableadmin.projects.instances.tables.setIamPolicy
    BigtableAdminProjectsInstancesTablesSetIamPolicyResource,
    newBigtableAdminProjectsInstancesTablesSetIamPolicy,
    BigtableAdminProjectsInstancesTablesSetIamPolicy,

    -- ** bigtableadmin.projects.instances.tables.testIamPermissions
    BigtableAdminProjectsInstancesTablesTestIamPermissionsResource,
    newBigtableAdminProjectsInstancesTablesTestIamPermissions,
    BigtableAdminProjectsInstancesTablesTestIamPermissions,

    -- ** bigtableadmin.projects.instances.testIamPermissions
    BigtableAdminProjectsInstancesTestIamPermissionsResource,
    newBigtableAdminProjectsInstancesTestIamPermissions,
    BigtableAdminProjectsInstancesTestIamPermissions,

    -- ** bigtableadmin.projects.instances.update
    BigtableAdminProjectsInstancesUpdateResource,
    newBigtableAdminProjectsInstancesUpdate,
    BigtableAdminProjectsInstancesUpdate,

    -- ** bigtableadmin.projects.locations.get
    BigtableAdminProjectsLocationsGetResource,
    newBigtableAdminProjectsLocationsGet,
    BigtableAdminProjectsLocationsGet,

    -- ** bigtableadmin.projects.locations.list
    BigtableAdminProjectsLocationsListResource,
    newBigtableAdminProjectsLocationsList,
    BigtableAdminProjectsLocationsList,

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

    -- ** TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- ** TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

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

    -- ** ProjectsInstancesTablesGetView
    ProjectsInstancesTablesGetView (..),

    -- ** ProjectsInstancesTablesListView
    ProjectsInstancesTablesListView (..),
  )
where

import Network.Google.BigtableAdmin.Operations.Cancel
import Network.Google.BigtableAdmin.Operations.Delete
import Network.Google.BigtableAdmin.Operations.Get
import Network.Google.BigtableAdmin.Operations.Projects.Operations.List
import Network.Google.BigtableAdmin.Projects.Instances.AppProfiles.Create
import Network.Google.BigtableAdmin.Projects.Instances.AppProfiles.Delete
import Network.Google.BigtableAdmin.Projects.Instances.AppProfiles.Get
import Network.Google.BigtableAdmin.Projects.Instances.AppProfiles.List
import Network.Google.BigtableAdmin.Projects.Instances.AppProfiles.Patch
import Network.Google.BigtableAdmin.Projects.Instances.Clusters.Backups.Create
import Network.Google.BigtableAdmin.Projects.Instances.Clusters.Backups.Delete
import Network.Google.BigtableAdmin.Projects.Instances.Clusters.Backups.Get
import Network.Google.BigtableAdmin.Projects.Instances.Clusters.Backups.GetIamPolicy
import Network.Google.BigtableAdmin.Projects.Instances.Clusters.Backups.List
import Network.Google.BigtableAdmin.Projects.Instances.Clusters.Backups.Patch
import Network.Google.BigtableAdmin.Projects.Instances.Clusters.Backups.SetIamPolicy
import Network.Google.BigtableAdmin.Projects.Instances.Clusters.Backups.TestIamPermissions
import Network.Google.BigtableAdmin.Projects.Instances.Clusters.Create
import Network.Google.BigtableAdmin.Projects.Instances.Clusters.Delete
import Network.Google.BigtableAdmin.Projects.Instances.Clusters.Get
import Network.Google.BigtableAdmin.Projects.Instances.Clusters.List
import Network.Google.BigtableAdmin.Projects.Instances.Clusters.PartialUpdateCluster
import Network.Google.BigtableAdmin.Projects.Instances.Clusters.Update
import Network.Google.BigtableAdmin.Projects.Instances.Create
import Network.Google.BigtableAdmin.Projects.Instances.Delete
import Network.Google.BigtableAdmin.Projects.Instances.Get
import Network.Google.BigtableAdmin.Projects.Instances.GetIamPolicy
import Network.Google.BigtableAdmin.Projects.Instances.List
import Network.Google.BigtableAdmin.Projects.Instances.PartialUpdateInstance
import Network.Google.BigtableAdmin.Projects.Instances.SetIamPolicy
import Network.Google.BigtableAdmin.Projects.Instances.Tables.CheckConsistency
import Network.Google.BigtableAdmin.Projects.Instances.Tables.Create
import Network.Google.BigtableAdmin.Projects.Instances.Tables.Delete
import Network.Google.BigtableAdmin.Projects.Instances.Tables.DropRowRange
import Network.Google.BigtableAdmin.Projects.Instances.Tables.GenerateConsistencyToken
import Network.Google.BigtableAdmin.Projects.Instances.Tables.Get
import Network.Google.BigtableAdmin.Projects.Instances.Tables.GetIamPolicy
import Network.Google.BigtableAdmin.Projects.Instances.Tables.List
import Network.Google.BigtableAdmin.Projects.Instances.Tables.ModifyColumnFamilies
import Network.Google.BigtableAdmin.Projects.Instances.Tables.Restore
import Network.Google.BigtableAdmin.Projects.Instances.Tables.SetIamPolicy
import Network.Google.BigtableAdmin.Projects.Instances.Tables.TestIamPermissions
import Network.Google.BigtableAdmin.Projects.Instances.TestIamPermissions
import Network.Google.BigtableAdmin.Projects.Instances.Update
import Network.Google.BigtableAdmin.Projects.Locations.Get
import Network.Google.BigtableAdmin.Projects.Locations.List
import Network.Google.BigtableAdmin.Types
