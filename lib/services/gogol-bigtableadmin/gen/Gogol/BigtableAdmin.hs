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
-- Module      : Gogol.BigtableAdmin
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Administer your Cloud Bigtable tables and instances.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference>
module Gogol.BigtableAdmin
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

    -- * Resources

    -- ** bigtableadmin.operations.cancel
    BigtableAdminOperationsCancelResource,
    BigtableAdminOperationsCancel (..),
    newBigtableAdminOperationsCancel,

    -- ** bigtableadmin.operations.delete
    BigtableAdminOperationsDeleteResource,
    BigtableAdminOperationsDelete (..),
    newBigtableAdminOperationsDelete,

    -- ** bigtableadmin.operations.get
    BigtableAdminOperationsGetResource,
    BigtableAdminOperationsGet (..),
    newBigtableAdminOperationsGet,

    -- ** bigtableadmin.operations.projects.operations.list
    BigtableAdminOperationsProjectsOperationsListResource,
    BigtableAdminOperationsProjectsOperationsList (..),
    newBigtableAdminOperationsProjectsOperationsList,

    -- ** bigtableadmin.projects.instances.appProfiles.create
    BigtableAdminProjectsInstancesAppProfilesCreateResource,
    BigtableAdminProjectsInstancesAppProfilesCreate (..),
    newBigtableAdminProjectsInstancesAppProfilesCreate,

    -- ** bigtableadmin.projects.instances.appProfiles.delete
    BigtableAdminProjectsInstancesAppProfilesDeleteResource,
    BigtableAdminProjectsInstancesAppProfilesDelete (..),
    newBigtableAdminProjectsInstancesAppProfilesDelete,

    -- ** bigtableadmin.projects.instances.appProfiles.get
    BigtableAdminProjectsInstancesAppProfilesGetResource,
    BigtableAdminProjectsInstancesAppProfilesGet (..),
    newBigtableAdminProjectsInstancesAppProfilesGet,

    -- ** bigtableadmin.projects.instances.appProfiles.list
    BigtableAdminProjectsInstancesAppProfilesListResource,
    BigtableAdminProjectsInstancesAppProfilesList (..),
    newBigtableAdminProjectsInstancesAppProfilesList,

    -- ** bigtableadmin.projects.instances.appProfiles.patch
    BigtableAdminProjectsInstancesAppProfilesPatchResource,
    BigtableAdminProjectsInstancesAppProfilesPatch (..),
    newBigtableAdminProjectsInstancesAppProfilesPatch,

    -- ** bigtableadmin.projects.instances.clusters.backups.copy
    BigtableAdminProjectsInstancesClustersBackupsCopyResource,
    BigtableAdminProjectsInstancesClustersBackupsCopy (..),
    newBigtableAdminProjectsInstancesClustersBackupsCopy,

    -- ** bigtableadmin.projects.instances.clusters.backups.create
    BigtableAdminProjectsInstancesClustersBackupsCreateResource,
    BigtableAdminProjectsInstancesClustersBackupsCreate (..),
    newBigtableAdminProjectsInstancesClustersBackupsCreate,

    -- ** bigtableadmin.projects.instances.clusters.backups.delete
    BigtableAdminProjectsInstancesClustersBackupsDeleteResource,
    BigtableAdminProjectsInstancesClustersBackupsDelete (..),
    newBigtableAdminProjectsInstancesClustersBackupsDelete,

    -- ** bigtableadmin.projects.instances.clusters.backups.get
    BigtableAdminProjectsInstancesClustersBackupsGetResource,
    BigtableAdminProjectsInstancesClustersBackupsGet (..),
    newBigtableAdminProjectsInstancesClustersBackupsGet,

    -- ** bigtableadmin.projects.instances.clusters.backups.getIamPolicy
    BigtableAdminProjectsInstancesClustersBackupsGetIamPolicyResource,
    BigtableAdminProjectsInstancesClustersBackupsGetIamPolicy (..),
    newBigtableAdminProjectsInstancesClustersBackupsGetIamPolicy,

    -- ** bigtableadmin.projects.instances.clusters.backups.list
    BigtableAdminProjectsInstancesClustersBackupsListResource,
    BigtableAdminProjectsInstancesClustersBackupsList (..),
    newBigtableAdminProjectsInstancesClustersBackupsList,

    -- ** bigtableadmin.projects.instances.clusters.backups.patch
    BigtableAdminProjectsInstancesClustersBackupsPatchResource,
    BigtableAdminProjectsInstancesClustersBackupsPatch (..),
    newBigtableAdminProjectsInstancesClustersBackupsPatch,

    -- ** bigtableadmin.projects.instances.clusters.backups.setIamPolicy
    BigtableAdminProjectsInstancesClustersBackupsSetIamPolicyResource,
    BigtableAdminProjectsInstancesClustersBackupsSetIamPolicy (..),
    newBigtableAdminProjectsInstancesClustersBackupsSetIamPolicy,

    -- ** bigtableadmin.projects.instances.clusters.backups.testIamPermissions
    BigtableAdminProjectsInstancesClustersBackupsTestIamPermissionsResource,
    BigtableAdminProjectsInstancesClustersBackupsTestIamPermissions (..),
    newBigtableAdminProjectsInstancesClustersBackupsTestIamPermissions,

    -- ** bigtableadmin.projects.instances.clusters.create
    BigtableAdminProjectsInstancesClustersCreateResource,
    BigtableAdminProjectsInstancesClustersCreate (..),
    newBigtableAdminProjectsInstancesClustersCreate,

    -- ** bigtableadmin.projects.instances.clusters.delete
    BigtableAdminProjectsInstancesClustersDeleteResource,
    BigtableAdminProjectsInstancesClustersDelete (..),
    newBigtableAdminProjectsInstancesClustersDelete,

    -- ** bigtableadmin.projects.instances.clusters.get
    BigtableAdminProjectsInstancesClustersGetResource,
    BigtableAdminProjectsInstancesClustersGet (..),
    newBigtableAdminProjectsInstancesClustersGet,

    -- ** bigtableadmin.projects.instances.clusters.hotTablets.list
    BigtableAdminProjectsInstancesClustersHotTabletsListResource,
    BigtableAdminProjectsInstancesClustersHotTabletsList (..),
    newBigtableAdminProjectsInstancesClustersHotTabletsList,

    -- ** bigtableadmin.projects.instances.clusters.list
    BigtableAdminProjectsInstancesClustersListResource,
    BigtableAdminProjectsInstancesClustersList (..),
    newBigtableAdminProjectsInstancesClustersList,

    -- ** bigtableadmin.projects.instances.clusters.partialUpdateCluster
    BigtableAdminProjectsInstancesClustersPartialUpdateClusterResource,
    BigtableAdminProjectsInstancesClustersPartialUpdateCluster (..),
    newBigtableAdminProjectsInstancesClustersPartialUpdateCluster,

    -- ** bigtableadmin.projects.instances.clusters.update
    BigtableAdminProjectsInstancesClustersUpdateResource,
    BigtableAdminProjectsInstancesClustersUpdate (..),
    newBigtableAdminProjectsInstancesClustersUpdate,

    -- ** bigtableadmin.projects.instances.create
    BigtableAdminProjectsInstancesCreateResource,
    BigtableAdminProjectsInstancesCreate (..),
    newBigtableAdminProjectsInstancesCreate,

    -- ** bigtableadmin.projects.instances.delete
    BigtableAdminProjectsInstancesDeleteResource,
    BigtableAdminProjectsInstancesDelete (..),
    newBigtableAdminProjectsInstancesDelete,

    -- ** bigtableadmin.projects.instances.get
    BigtableAdminProjectsInstancesGetResource,
    BigtableAdminProjectsInstancesGet (..),
    newBigtableAdminProjectsInstancesGet,

    -- ** bigtableadmin.projects.instances.getIamPolicy
    BigtableAdminProjectsInstancesGetIamPolicyResource,
    BigtableAdminProjectsInstancesGetIamPolicy (..),
    newBigtableAdminProjectsInstancesGetIamPolicy,

    -- ** bigtableadmin.projects.instances.list
    BigtableAdminProjectsInstancesListResource,
    BigtableAdminProjectsInstancesList (..),
    newBigtableAdminProjectsInstancesList,

    -- ** bigtableadmin.projects.instances.partialUpdateInstance
    BigtableAdminProjectsInstancesPartialUpdateInstanceResource,
    BigtableAdminProjectsInstancesPartialUpdateInstance (..),
    newBigtableAdminProjectsInstancesPartialUpdateInstance,

    -- ** bigtableadmin.projects.instances.setIamPolicy
    BigtableAdminProjectsInstancesSetIamPolicyResource,
    BigtableAdminProjectsInstancesSetIamPolicy (..),
    newBigtableAdminProjectsInstancesSetIamPolicy,

    -- ** bigtableadmin.projects.instances.tables.checkConsistency
    BigtableAdminProjectsInstancesTablesCheckConsistencyResource,
    BigtableAdminProjectsInstancesTablesCheckConsistency (..),
    newBigtableAdminProjectsInstancesTablesCheckConsistency,

    -- ** bigtableadmin.projects.instances.tables.create
    BigtableAdminProjectsInstancesTablesCreateResource,
    BigtableAdminProjectsInstancesTablesCreate (..),
    newBigtableAdminProjectsInstancesTablesCreate,

    -- ** bigtableadmin.projects.instances.tables.delete
    BigtableAdminProjectsInstancesTablesDeleteResource,
    BigtableAdminProjectsInstancesTablesDelete (..),
    newBigtableAdminProjectsInstancesTablesDelete,

    -- ** bigtableadmin.projects.instances.tables.dropRowRange
    BigtableAdminProjectsInstancesTablesDropRowRangeResource,
    BigtableAdminProjectsInstancesTablesDropRowRange (..),
    newBigtableAdminProjectsInstancesTablesDropRowRange,

    -- ** bigtableadmin.projects.instances.tables.generateConsistencyToken
    BigtableAdminProjectsInstancesTablesGenerateConsistencyTokenResource,
    BigtableAdminProjectsInstancesTablesGenerateConsistencyToken (..),
    newBigtableAdminProjectsInstancesTablesGenerateConsistencyToken,

    -- ** bigtableadmin.projects.instances.tables.get
    BigtableAdminProjectsInstancesTablesGetResource,
    BigtableAdminProjectsInstancesTablesGet (..),
    newBigtableAdminProjectsInstancesTablesGet,

    -- ** bigtableadmin.projects.instances.tables.getIamPolicy
    BigtableAdminProjectsInstancesTablesGetIamPolicyResource,
    BigtableAdminProjectsInstancesTablesGetIamPolicy (..),
    newBigtableAdminProjectsInstancesTablesGetIamPolicy,

    -- ** bigtableadmin.projects.instances.tables.list
    BigtableAdminProjectsInstancesTablesListResource,
    BigtableAdminProjectsInstancesTablesList (..),
    newBigtableAdminProjectsInstancesTablesList,

    -- ** bigtableadmin.projects.instances.tables.modifyColumnFamilies
    BigtableAdminProjectsInstancesTablesModifyColumnFamiliesResource,
    BigtableAdminProjectsInstancesTablesModifyColumnFamilies (..),
    newBigtableAdminProjectsInstancesTablesModifyColumnFamilies,

    -- ** bigtableadmin.projects.instances.tables.patch
    BigtableAdminProjectsInstancesTablesPatchResource,
    BigtableAdminProjectsInstancesTablesPatch (..),
    newBigtableAdminProjectsInstancesTablesPatch,

    -- ** bigtableadmin.projects.instances.tables.restore
    BigtableAdminProjectsInstancesTablesRestoreResource,
    BigtableAdminProjectsInstancesTablesRestore (..),
    newBigtableAdminProjectsInstancesTablesRestore,

    -- ** bigtableadmin.projects.instances.tables.setIamPolicy
    BigtableAdminProjectsInstancesTablesSetIamPolicyResource,
    BigtableAdminProjectsInstancesTablesSetIamPolicy (..),
    newBigtableAdminProjectsInstancesTablesSetIamPolicy,

    -- ** bigtableadmin.projects.instances.tables.testIamPermissions
    BigtableAdminProjectsInstancesTablesTestIamPermissionsResource,
    BigtableAdminProjectsInstancesTablesTestIamPermissions (..),
    newBigtableAdminProjectsInstancesTablesTestIamPermissions,

    -- ** bigtableadmin.projects.instances.tables.undelete
    BigtableAdminProjectsInstancesTablesUndeleteResource,
    BigtableAdminProjectsInstancesTablesUndelete (..),
    newBigtableAdminProjectsInstancesTablesUndelete,

    -- ** bigtableadmin.projects.instances.testIamPermissions
    BigtableAdminProjectsInstancesTestIamPermissionsResource,
    BigtableAdminProjectsInstancesTestIamPermissions (..),
    newBigtableAdminProjectsInstancesTestIamPermissions,

    -- ** bigtableadmin.projects.instances.update
    BigtableAdminProjectsInstancesUpdateResource,
    BigtableAdminProjectsInstancesUpdate (..),
    newBigtableAdminProjectsInstancesUpdate,

    -- ** bigtableadmin.projects.locations.get
    BigtableAdminProjectsLocationsGetResource,
    BigtableAdminProjectsLocationsGet (..),
    newBigtableAdminProjectsLocationsGet,

    -- ** bigtableadmin.projects.locations.list
    BigtableAdminProjectsLocationsListResource,
    BigtableAdminProjectsLocationsList (..),
    newBigtableAdminProjectsLocationsList,

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

import Gogol.BigtableAdmin.Operations.Cancel
import Gogol.BigtableAdmin.Operations.Delete
import Gogol.BigtableAdmin.Operations.Get
import Gogol.BigtableAdmin.Operations.Projects.Operations.List
import Gogol.BigtableAdmin.Projects.Instances.AppProfiles.Create
import Gogol.BigtableAdmin.Projects.Instances.AppProfiles.Delete
import Gogol.BigtableAdmin.Projects.Instances.AppProfiles.Get
import Gogol.BigtableAdmin.Projects.Instances.AppProfiles.List
import Gogol.BigtableAdmin.Projects.Instances.AppProfiles.Patch
import Gogol.BigtableAdmin.Projects.Instances.Clusters.Backups.Copy
import Gogol.BigtableAdmin.Projects.Instances.Clusters.Backups.Create
import Gogol.BigtableAdmin.Projects.Instances.Clusters.Backups.Delete
import Gogol.BigtableAdmin.Projects.Instances.Clusters.Backups.Get
import Gogol.BigtableAdmin.Projects.Instances.Clusters.Backups.GetIamPolicy
import Gogol.BigtableAdmin.Projects.Instances.Clusters.Backups.List
import Gogol.BigtableAdmin.Projects.Instances.Clusters.Backups.Patch
import Gogol.BigtableAdmin.Projects.Instances.Clusters.Backups.SetIamPolicy
import Gogol.BigtableAdmin.Projects.Instances.Clusters.Backups.TestIamPermissions
import Gogol.BigtableAdmin.Projects.Instances.Clusters.Create
import Gogol.BigtableAdmin.Projects.Instances.Clusters.Delete
import Gogol.BigtableAdmin.Projects.Instances.Clusters.Get
import Gogol.BigtableAdmin.Projects.Instances.Clusters.HotTablets.List
import Gogol.BigtableAdmin.Projects.Instances.Clusters.List
import Gogol.BigtableAdmin.Projects.Instances.Clusters.PartialUpdateCluster
import Gogol.BigtableAdmin.Projects.Instances.Clusters.Update
import Gogol.BigtableAdmin.Projects.Instances.Create
import Gogol.BigtableAdmin.Projects.Instances.Delete
import Gogol.BigtableAdmin.Projects.Instances.Get
import Gogol.BigtableAdmin.Projects.Instances.GetIamPolicy
import Gogol.BigtableAdmin.Projects.Instances.List
import Gogol.BigtableAdmin.Projects.Instances.PartialUpdateInstance
import Gogol.BigtableAdmin.Projects.Instances.SetIamPolicy
import Gogol.BigtableAdmin.Projects.Instances.Tables.CheckConsistency
import Gogol.BigtableAdmin.Projects.Instances.Tables.Create
import Gogol.BigtableAdmin.Projects.Instances.Tables.Delete
import Gogol.BigtableAdmin.Projects.Instances.Tables.DropRowRange
import Gogol.BigtableAdmin.Projects.Instances.Tables.GenerateConsistencyToken
import Gogol.BigtableAdmin.Projects.Instances.Tables.Get
import Gogol.BigtableAdmin.Projects.Instances.Tables.GetIamPolicy
import Gogol.BigtableAdmin.Projects.Instances.Tables.List
import Gogol.BigtableAdmin.Projects.Instances.Tables.ModifyColumnFamilies
import Gogol.BigtableAdmin.Projects.Instances.Tables.Patch
import Gogol.BigtableAdmin.Projects.Instances.Tables.Restore
import Gogol.BigtableAdmin.Projects.Instances.Tables.SetIamPolicy
import Gogol.BigtableAdmin.Projects.Instances.Tables.TestIamPermissions
import Gogol.BigtableAdmin.Projects.Instances.Tables.Undelete
import Gogol.BigtableAdmin.Projects.Instances.TestIamPermissions
import Gogol.BigtableAdmin.Projects.Instances.Update
import Gogol.BigtableAdmin.Projects.Locations.Get
import Gogol.BigtableAdmin.Projects.Locations.List
import Gogol.BigtableAdmin.Types
