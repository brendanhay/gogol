{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.BigtableAdmin
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Administer your Cloud Bigtable tables and instances.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference>
module Network.Google.BigtableAdmin
    (
    -- * Service Configuration
      bigtableAdminService

    -- * OAuth Scopes
    , bigtableAdminClusterScope
    , cloudBigtableAdminTableScope
    , cloudPlatformReadOnlyScope
    , bigtableAdminScope
    , cloudPlatformScope
    , cloudBigtableAdminScope
    , cloudBigtableAdminClusterScope
    , bigtableAdminTableScope
    , bigtableAdminInstanceScope

    -- * API Declaration
    , BigtableAdminAPI

    -- * Resources

    -- ** bigtableadmin.operations.cancel
    , module Network.Google.Resource.BigtableAdmin.Operations.Cancel

    -- ** bigtableadmin.operations.delete
    , module Network.Google.Resource.BigtableAdmin.Operations.Delete

    -- ** bigtableadmin.operations.get
    , module Network.Google.Resource.BigtableAdmin.Operations.Get

    -- ** bigtableadmin.operations.projects.operations.list
    , module Network.Google.Resource.BigtableAdmin.Operations.Projects.Operations.List

    -- ** bigtableadmin.projects.instances.appProfiles.create
    , module Network.Google.Resource.BigtableAdmin.Projects.Instances.AppProFiles.Create

    -- ** bigtableadmin.projects.instances.appProfiles.delete
    , module Network.Google.Resource.BigtableAdmin.Projects.Instances.AppProFiles.Delete

    -- ** bigtableadmin.projects.instances.appProfiles.get
    , module Network.Google.Resource.BigtableAdmin.Projects.Instances.AppProFiles.Get

    -- ** bigtableadmin.projects.instances.appProfiles.list
    , module Network.Google.Resource.BigtableAdmin.Projects.Instances.AppProFiles.List

    -- ** bigtableadmin.projects.instances.appProfiles.patch
    , module Network.Google.Resource.BigtableAdmin.Projects.Instances.AppProFiles.Patch

    -- ** bigtableadmin.projects.instances.clusters.backups.create
    , module Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Backups.Create

    -- ** bigtableadmin.projects.instances.clusters.backups.delete
    , module Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Backups.Delete

    -- ** bigtableadmin.projects.instances.clusters.backups.get
    , module Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Backups.Get

    -- ** bigtableadmin.projects.instances.clusters.backups.getIamPolicy
    , module Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Backups.GetIAMPolicy

    -- ** bigtableadmin.projects.instances.clusters.backups.list
    , module Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Backups.List

    -- ** bigtableadmin.projects.instances.clusters.backups.patch
    , module Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Backups.Patch

    -- ** bigtableadmin.projects.instances.clusters.backups.setIamPolicy
    , module Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Backups.SetIAMPolicy

    -- ** bigtableadmin.projects.instances.clusters.backups.testIamPermissions
    , module Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Backups.TestIAMPermissions

    -- ** bigtableadmin.projects.instances.clusters.create
    , module Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Create

    -- ** bigtableadmin.projects.instances.clusters.delete
    , module Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Delete

    -- ** bigtableadmin.projects.instances.clusters.get
    , module Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Get

    -- ** bigtableadmin.projects.instances.clusters.list
    , module Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.List

    -- ** bigtableadmin.projects.instances.clusters.partialUpdateCluster
    , module Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.PartialUpdateCluster

    -- ** bigtableadmin.projects.instances.clusters.update
    , module Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Update

    -- ** bigtableadmin.projects.instances.create
    , module Network.Google.Resource.BigtableAdmin.Projects.Instances.Create

    -- ** bigtableadmin.projects.instances.delete
    , module Network.Google.Resource.BigtableAdmin.Projects.Instances.Delete

    -- ** bigtableadmin.projects.instances.get
    , module Network.Google.Resource.BigtableAdmin.Projects.Instances.Get

    -- ** bigtableadmin.projects.instances.getIamPolicy
    , module Network.Google.Resource.BigtableAdmin.Projects.Instances.GetIAMPolicy

    -- ** bigtableadmin.projects.instances.list
    , module Network.Google.Resource.BigtableAdmin.Projects.Instances.List

    -- ** bigtableadmin.projects.instances.partialUpdateInstance
    , module Network.Google.Resource.BigtableAdmin.Projects.Instances.PartialUpdateInstance

    -- ** bigtableadmin.projects.instances.setIamPolicy
    , module Network.Google.Resource.BigtableAdmin.Projects.Instances.SetIAMPolicy

    -- ** bigtableadmin.projects.instances.tables.checkConsistency
    , module Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.CheckConsistency

    -- ** bigtableadmin.projects.instances.tables.create
    , module Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.Create

    -- ** bigtableadmin.projects.instances.tables.delete
    , module Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.Delete

    -- ** bigtableadmin.projects.instances.tables.dropRowRange
    , module Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.DropRowRange

    -- ** bigtableadmin.projects.instances.tables.generateConsistencyToken
    , module Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.GenerateConsistencyToken

    -- ** bigtableadmin.projects.instances.tables.get
    , module Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.Get

    -- ** bigtableadmin.projects.instances.tables.getIamPolicy
    , module Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.GetIAMPolicy

    -- ** bigtableadmin.projects.instances.tables.list
    , module Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.List

    -- ** bigtableadmin.projects.instances.tables.modifyColumnFamilies
    , module Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.ModifyColumnFamilies

    -- ** bigtableadmin.projects.instances.tables.restore
    , module Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.Restore

    -- ** bigtableadmin.projects.instances.tables.setIamPolicy
    , module Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.SetIAMPolicy

    -- ** bigtableadmin.projects.instances.tables.testIamPermissions
    , module Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.TestIAMPermissions

    -- ** bigtableadmin.projects.instances.testIamPermissions
    , module Network.Google.Resource.BigtableAdmin.Projects.Instances.TestIAMPermissions

    -- ** bigtableadmin.projects.instances.update
    , module Network.Google.Resource.BigtableAdmin.Projects.Instances.Update

    -- ** bigtableadmin.projects.locations.get
    , module Network.Google.Resource.BigtableAdmin.Projects.Locations.Get

    -- ** bigtableadmin.projects.locations.list
    , module Network.Google.Resource.BigtableAdmin.Projects.Locations.List

    -- * Types

    -- ** SingleClusterRouting
    , SingleClusterRouting
    , singleClusterRouting
    , scrAllowTransactionalWrites
    , scrClusterId

    -- ** InstanceLabels
    , InstanceLabels
    , instanceLabels
    , ilAddtional

    -- ** ListBackupsResponse
    , ListBackupsResponse
    , listBackupsResponse
    , lbrNextPageToken
    , lbrBackups

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** CreateInstanceRequest
    , CreateInstanceRequest
    , createInstanceRequest
    , cirParent
    , cirInstanceId
    , cirClusters
    , cirInstance

    -- ** AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs

    -- ** GenerateConsistencyTokenRequest
    , GenerateConsistencyTokenRequest
    , generateConsistencyTokenRequest

    -- ** ModifyColumnFamiliesRequest
    , ModifyColumnFamiliesRequest
    , modifyColumnFamiliesRequest
    , mcfrModifications

    -- ** Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- ** ListLocationsResponse
    , ListLocationsResponse
    , listLocationsResponse
    , llrNextPageToken
    , llrLocations

    -- ** ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- ** CreateClusterRequest
    , CreateClusterRequest
    , createClusterRequest
    , ccrParent
    , ccrCluster
    , ccrClusterId

    -- ** GetIAMPolicyRequest
    , GetIAMPolicyRequest
    , getIAMPolicyRequest
    , giprOptions

    -- ** Cluster
    , Cluster
    , cluster
    , cState
    , cDefaultStorageType
    , cLocation
    , cServeNodes
    , cName
    , cEncryptionConfig

    -- ** Split
    , Split
    , split
    , sKey

    -- ** MultiClusterRoutingUseAny
    , MultiClusterRoutingUseAny
    , multiClusterRoutingUseAny

    -- ** ClusterState
    , ClusterState
    , clusterState
    , csReplicationState
    , csEncryptionInfo

    -- ** Location
    , Location
    , location
    , lName
    , lMetadata
    , lDisplayName
    , lLabels
    , lLocationId

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- ** Empty
    , Empty
    , empty

    -- ** ClusterDefaultStorageType
    , ClusterDefaultStorageType (..)

    -- ** ListAppProFilesResponse
    , ListAppProFilesResponse
    , listAppProFilesResponse
    , lapfrNextPageToken
    , lapfrFailedLocations
    , lapfrAppProFiles

    -- ** OperationProgress
    , OperationProgress
    , operationProgress
    , opStartTime
    , opProgressPercent
    , opEndTime

    -- ** TableClusterStates
    , TableClusterStates
    , tableClusterStates
    , tcsAddtional

    -- ** TableColumnFamilies
    , TableColumnFamilies
    , tableColumnFamilies
    , tcfAddtional

    -- ** CreateTableRequest
    , CreateTableRequest
    , createTableRequest
    , ctrInitialSplits
    , ctrTableId
    , ctrTable

    -- ** RestoreInfoSourceType
    , RestoreInfoSourceType (..)

    -- ** CreateClusterMetadata
    , CreateClusterMetadata
    , createClusterMetadata
    , ccmRequestTime
    , ccmTables
    , ccmOriginalRequest
    , ccmFinishTime

    -- ** TableProgress
    , TableProgress
    , tableProgress
    , tpState
    , tpEstimatedSizeBytes
    , tpEstimatedCopiedBytes

    -- ** Union
    , Union
    , union
    , uRules

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** CreateClusterMetadataTables
    , CreateClusterMetadataTables
    , createClusterMetadataTables
    , ccmtAddtional

    -- ** ProjectsInstancesTablesListView
    , ProjectsInstancesTablesListView (..)

    -- ** EncryptionInfoEncryptionType
    , EncryptionInfoEncryptionType (..)

    -- ** UpdateAppProFileMetadata
    , UpdateAppProFileMetadata
    , updateAppProFileMetadata

    -- ** RestoreTableMetadataSourceType
    , RestoreTableMetadataSourceType (..)

    -- ** GetPolicyOptions
    , GetPolicyOptions
    , getPolicyOptions
    , gpoRequestedPolicyVersion

    -- ** Backup
    , Backup
    , backup
    , bSizeBytes
    , bState
    , bStartTime
    , bSourceTable
    , bName
    , bEndTime
    , bExpireTime
    , bEncryptionInfo

    -- ** UpdateClusterMetadata
    , UpdateClusterMetadata
    , updateClusterMetadata
    , ucmRequestTime
    , ucmOriginalRequest
    , ucmFinishTime

    -- ** ClusterStateReplicationState
    , ClusterStateReplicationState (..)

    -- ** SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprUpdateMask
    , siprPolicy

    -- ** InstanceType
    , InstanceType (..)

    -- ** FailureTrace
    , FailureTrace
    , failureTrace
    , ftFrames

    -- ** CheckConsistencyRequest
    , CheckConsistencyRequest
    , checkConsistencyRequest
    , ccrConsistencyToken

    -- ** ListTablesResponse
    , ListTablesResponse
    , listTablesResponse
    , ltrNextPageToken
    , ltrTables

    -- ** TableProgressState
    , TableProgressState (..)

    -- ** RestoreTableRequest
    , RestoreTableRequest
    , restoreTableRequest
    , rtrBackup
    , rtrTableId

    -- ** CreateBackupMetadata
    , CreateBackupMetadata
    , createBackupMetadata
    , cbmStartTime
    , cbmSourceTable
    , cbmName
    , cbmEndTime

    -- ** AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- ** PartialUpdateInstanceRequest
    , PartialUpdateInstanceRequest
    , partialUpdateInstanceRequest
    , puirUpdateMask
    , puirInstance

    -- ** Xgafv
    , Xgafv (..)

    -- ** TableGranularity
    , TableGranularity (..)

    -- ** GcRule
    , GcRule
    , gcRule
    , grMaxAge
    , grUnion
    , grIntersection
    , grMaxNumVersions

    -- ** TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- ** ClusterType
    , ClusterType (..)

    -- ** ProjectsInstancesTablesGetView
    , ProjectsInstancesTablesGetView (..)

    -- ** AppProFile
    , AppProFile
    , appProFile
    , apfSingleClusterRouting
    , apfEtag
    , apfMultiClusterRoutingUseAny
    , apfName
    , apfDescription

    -- ** Frame
    , Frame
    , frame
    , fWorkflowGuid
    , fZoneId
    , fTargetName

    -- ** CreateInstanceRequestClusters
    , CreateInstanceRequestClusters
    , createInstanceRequestClusters
    , circAddtional

    -- ** GenerateConsistencyTokenResponse
    , GenerateConsistencyTokenResponse
    , generateConsistencyTokenResponse
    , gctrConsistencyToken

    -- ** EncryptionConfig
    , EncryptionConfig
    , encryptionConfig
    , ecKmsKeyName

    -- ** DropRowRangeRequest
    , DropRowRangeRequest
    , dropRowRangeRequest
    , drrrRowKeyPrefix
    , drrrDeleteAllDataFromTable

    -- ** UpdateInstanceMetadata
    , UpdateInstanceMetadata
    , updateInstanceMetadata
    , uimRequestTime
    , uimOriginalRequest
    , uimFinishTime

    -- ** Intersection
    , Intersection
    , intersection
    , iRules

    -- ** ColumnFamily
    , ColumnFamily
    , columnFamily
    , cfGcRule

    -- ** TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- ** ListClustersResponse
    , ListClustersResponse
    , listClustersResponse
    , lcrNextPageToken
    , lcrFailedLocations
    , lcrClusters

    -- ** BackupInfo
    , BackupInfo
    , backupInfo
    , biStartTime
    , biSourceTable
    , biBackup
    , biEndTime

    -- ** Policy
    , Policy
    , policy
    , pAuditConfigs
    , pEtag
    , pVersion
    , pBindings

    -- ** LocationLabels
    , LocationLabels
    , locationLabels
    , llAddtional

    -- ** CreateInstanceMetadata
    , CreateInstanceMetadata
    , createInstanceMetadata
    , cimRequestTime
    , cimOriginalRequest
    , cimFinishTime

    -- ** LocationMetadata
    , LocationMetadata
    , locationMetadata
    , lmAddtional

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- ** AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- ** ListInstancesResponse
    , ListInstancesResponse
    , listInstancesResponse
    , lirNextPageToken
    , lirFailedLocations
    , lirInstances

    -- ** RestoreTableMetadata
    , RestoreTableMetadata
    , restoreTableMetadata
    , rtmOptimizeTableOperationName
    , rtmSourceType
    , rtmProgress
    , rtmName
    , rtmBackupInfo

    -- ** CheckConsistencyResponse
    , CheckConsistencyResponse
    , checkConsistencyResponse
    , ccrConsistent

    -- ** InstanceState
    , InstanceState (..)

    -- ** Modification
    , Modification
    , modification
    , mDrop
    , mCreate
    , mId
    , mUpdate

    -- ** Table
    , Table
    , table
    , tGranularity
    , tName
    , tRestoreInfo
    , tClusterStates
    , tColumnFamilies

    -- ** OptimizeRestoredTableMetadata
    , OptimizeRestoredTableMetadata
    , optimizeRestoredTableMetadata
    , ortmProgress
    , ortmName

    -- ** RestoreInfo
    , RestoreInfo
    , restoreInfo
    , riSourceType
    , riBackupInfo

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** BackupState
    , BackupState (..)

    -- ** EncryptionInfo
    , EncryptionInfo
    , encryptionInfo
    , eiEncryptionType
    , eiKmsKeyVersion
    , eiEncryptionStatus

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition

    -- ** Instance
    , Instance
    , instance'
    , iState
    , iName
    , iDisplayName
    , iLabels
    , iType
    ) where

import Network.Google.Prelude
import Network.Google.BigtableAdmin.Types
import Network.Google.Resource.BigtableAdmin.Operations.Cancel
import Network.Google.Resource.BigtableAdmin.Operations.Delete
import Network.Google.Resource.BigtableAdmin.Operations.Get
import Network.Google.Resource.BigtableAdmin.Operations.Projects.Operations.List
import Network.Google.Resource.BigtableAdmin.Projects.Instances.AppProFiles.Create
import Network.Google.Resource.BigtableAdmin.Projects.Instances.AppProFiles.Delete
import Network.Google.Resource.BigtableAdmin.Projects.Instances.AppProFiles.Get
import Network.Google.Resource.BigtableAdmin.Projects.Instances.AppProFiles.List
import Network.Google.Resource.BigtableAdmin.Projects.Instances.AppProFiles.Patch
import Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Backups.Create
import Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Backups.Delete
import Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Backups.Get
import Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Backups.GetIAMPolicy
import Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Backups.List
import Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Backups.Patch
import Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Backups.SetIAMPolicy
import Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Backups.TestIAMPermissions
import Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Create
import Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Delete
import Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Get
import Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.List
import Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.PartialUpdateCluster
import Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Update
import Network.Google.Resource.BigtableAdmin.Projects.Instances.Create
import Network.Google.Resource.BigtableAdmin.Projects.Instances.Delete
import Network.Google.Resource.BigtableAdmin.Projects.Instances.Get
import Network.Google.Resource.BigtableAdmin.Projects.Instances.GetIAMPolicy
import Network.Google.Resource.BigtableAdmin.Projects.Instances.List
import Network.Google.Resource.BigtableAdmin.Projects.Instances.PartialUpdateInstance
import Network.Google.Resource.BigtableAdmin.Projects.Instances.SetIAMPolicy
import Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.CheckConsistency
import Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.Create
import Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.Delete
import Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.DropRowRange
import Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.GenerateConsistencyToken
import Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.Get
import Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.GetIAMPolicy
import Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.List
import Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.ModifyColumnFamilies
import Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.Restore
import Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.SetIAMPolicy
import Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.TestIAMPermissions
import Network.Google.Resource.BigtableAdmin.Projects.Instances.TestIAMPermissions
import Network.Google.Resource.BigtableAdmin.Projects.Instances.Update
import Network.Google.Resource.BigtableAdmin.Projects.Locations.Get
import Network.Google.Resource.BigtableAdmin.Projects.Locations.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Bigtable Admin API service.
type BigtableAdminAPI =
     OperationsProjectsOperationsListResource :<|>
       OperationsGetResource
       :<|> OperationsCancelResource
       :<|> OperationsDeleteResource
       :<|> ProjectsInstancesAppProFilesListResource
       :<|> ProjectsInstancesAppProFilesPatchResource
       :<|> ProjectsInstancesAppProFilesGetResource
       :<|> ProjectsInstancesAppProFilesCreateResource
       :<|> ProjectsInstancesAppProFilesDeleteResource
       :<|> ProjectsInstancesTablesDropRowRangeResource
       :<|> ProjectsInstancesTablesListResource
       :<|> ProjectsInstancesTablesRestoreResource
       :<|> ProjectsInstancesTablesGetIAMPolicyResource
       :<|>
       ProjectsInstancesTablesGenerateConsistencyTokenResource
       :<|> ProjectsInstancesTablesGetResource
       :<|>
       ProjectsInstancesTablesModifyColumnFamiliesResource
       :<|> ProjectsInstancesTablesCreateResource
       :<|> ProjectsInstancesTablesSetIAMPolicyResource
       :<|> ProjectsInstancesTablesCheckConsistencyResource
       :<|>
       ProjectsInstancesTablesTestIAMPermissionsResource
       :<|> ProjectsInstancesTablesDeleteResource
       :<|> ProjectsInstancesClustersBackupsListResource
       :<|>
       ProjectsInstancesClustersBackupsGetIAMPolicyResource
       :<|> ProjectsInstancesClustersBackupsPatchResource
       :<|> ProjectsInstancesClustersBackupsGetResource
       :<|> ProjectsInstancesClustersBackupsCreateResource
       :<|>
       ProjectsInstancesClustersBackupsSetIAMPolicyResource
       :<|>
       ProjectsInstancesClustersBackupsTestIAMPermissionsResource
       :<|> ProjectsInstancesClustersBackupsDeleteResource
       :<|> ProjectsInstancesClustersListResource
       :<|>
       ProjectsInstancesClustersPartialUpdateClusterResource
       :<|> ProjectsInstancesClustersGetResource
       :<|> ProjectsInstancesClustersCreateResource
       :<|> ProjectsInstancesClustersDeleteResource
       :<|> ProjectsInstancesClustersUpdateResource
       :<|> ProjectsInstancesListResource
       :<|> ProjectsInstancesGetIAMPolicyResource
       :<|> ProjectsInstancesGetResource
       :<|> ProjectsInstancesCreateResource
       :<|> ProjectsInstancesSetIAMPolicyResource
       :<|> ProjectsInstancesPartialUpdateInstanceResource
       :<|> ProjectsInstancesTestIAMPermissionsResource
       :<|> ProjectsInstancesDeleteResource
       :<|> ProjectsInstancesUpdateResource
       :<|> ProjectsLocationsListResource
       :<|> ProjectsLocationsGetResource
