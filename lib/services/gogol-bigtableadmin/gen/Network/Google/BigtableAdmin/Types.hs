{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.BigtableAdmin.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.BigtableAdmin.Types
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

    -- * SingleClusterRouting
    , SingleClusterRouting
    , singleClusterRouting
    , scrAllowTransactionalWrites
    , scrClusterId

    -- * InstanceLabels
    , InstanceLabels
    , instanceLabels
    , ilAddtional

    -- * ListBackupsResponse
    , ListBackupsResponse
    , listBackupsResponse
    , lbrNextPageToken
    , lbrBackups

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * CreateInstanceRequest
    , CreateInstanceRequest
    , createInstanceRequest
    , cirParent
    , cirInstanceId
    , cirClusters
    , cirInstance

    -- * AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs

    -- * GenerateConsistencyTokenRequest
    , GenerateConsistencyTokenRequest
    , generateConsistencyTokenRequest

    -- * ModifyColumnFamiliesRequest
    , ModifyColumnFamiliesRequest
    , modifyColumnFamiliesRequest
    , mcfrModifications

    -- * Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- * ListLocationsResponse
    , ListLocationsResponse
    , listLocationsResponse
    , llrNextPageToken
    , llrLocations

    -- * ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- * CreateClusterRequest
    , CreateClusterRequest
    , createClusterRequest
    , ccrParent
    , ccrCluster
    , ccrClusterId

    -- * GetIAMPolicyRequest
    , GetIAMPolicyRequest
    , getIAMPolicyRequest
    , giprOptions

    -- * Cluster
    , Cluster
    , cluster
    , cState
    , cDefaultStorageType
    , cLocation
    , cServeNodes
    , cName
    , cEncryptionConfig

    -- * Split
    , Split
    , split
    , sKey

    -- * MultiClusterRoutingUseAny
    , MultiClusterRoutingUseAny
    , multiClusterRoutingUseAny

    -- * ClusterState
    , ClusterState
    , clusterState
    , csReplicationState
    , csEncryptionInfo

    -- * Location
    , Location
    , location
    , lName
    , lMetadata
    , lDisplayName
    , lLabels
    , lLocationId

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- * Empty
    , Empty
    , empty

    -- * ClusterDefaultStorageType
    , ClusterDefaultStorageType (..)

    -- * ListAppProFilesResponse
    , ListAppProFilesResponse
    , listAppProFilesResponse
    , lapfrNextPageToken
    , lapfrFailedLocations
    , lapfrAppProFiles

    -- * OperationProgress
    , OperationProgress
    , operationProgress
    , opStartTime
    , opProgressPercent
    , opEndTime

    -- * TableClusterStates
    , TableClusterStates
    , tableClusterStates
    , tcsAddtional

    -- * TableColumnFamilies
    , TableColumnFamilies
    , tableColumnFamilies
    , tcfAddtional

    -- * CreateTableRequest
    , CreateTableRequest
    , createTableRequest
    , ctrInitialSplits
    , ctrTableId
    , ctrTable

    -- * RestoreInfoSourceType
    , RestoreInfoSourceType (..)

    -- * CreateClusterMetadata
    , CreateClusterMetadata
    , createClusterMetadata
    , ccmRequestTime
    , ccmTables
    , ccmOriginalRequest
    , ccmFinishTime

    -- * TableProgress
    , TableProgress
    , tableProgress
    , tpState
    , tpEstimatedSizeBytes
    , tpEstimatedCopiedBytes

    -- * Union
    , Union
    , union
    , uRules

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * CreateClusterMetadataTables
    , CreateClusterMetadataTables
    , createClusterMetadataTables
    , ccmtAddtional

    -- * ProjectsInstancesTablesListView
    , ProjectsInstancesTablesListView (..)

    -- * EncryptionInfoEncryptionType
    , EncryptionInfoEncryptionType (..)

    -- * UpdateAppProFileMetadata
    , UpdateAppProFileMetadata
    , updateAppProFileMetadata

    -- * RestoreTableMetadataSourceType
    , RestoreTableMetadataSourceType (..)

    -- * GetPolicyOptions
    , GetPolicyOptions
    , getPolicyOptions
    , gpoRequestedPolicyVersion

    -- * Backup
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

    -- * UpdateClusterMetadata
    , UpdateClusterMetadata
    , updateClusterMetadata
    , ucmRequestTime
    , ucmOriginalRequest
    , ucmFinishTime

    -- * ClusterStateReplicationState
    , ClusterStateReplicationState (..)

    -- * SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprUpdateMask
    , siprPolicy

    -- * InstanceType
    , InstanceType (..)

    -- * FailureTrace
    , FailureTrace
    , failureTrace
    , ftFrames

    -- * CheckConsistencyRequest
    , CheckConsistencyRequest
    , checkConsistencyRequest
    , ccrConsistencyToken

    -- * ListTablesResponse
    , ListTablesResponse
    , listTablesResponse
    , ltrNextPageToken
    , ltrTables

    -- * TableProgressState
    , TableProgressState (..)

    -- * RestoreTableRequest
    , RestoreTableRequest
    , restoreTableRequest
    , rtrBackup
    , rtrTableId

    -- * CreateBackupMetadata
    , CreateBackupMetadata
    , createBackupMetadata
    , cbmStartTime
    , cbmSourceTable
    , cbmName
    , cbmEndTime

    -- * AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- * PartialUpdateInstanceRequest
    , PartialUpdateInstanceRequest
    , partialUpdateInstanceRequest
    , puirUpdateMask
    , puirInstance

    -- * Xgafv
    , Xgafv (..)

    -- * TableGranularity
    , TableGranularity (..)

    -- * GcRule
    , GcRule
    , gcRule
    , grMaxAge
    , grUnion
    , grIntersection
    , grMaxNumVersions

    -- * TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- * ClusterType
    , ClusterType (..)

    -- * ProjectsInstancesTablesGetView
    , ProjectsInstancesTablesGetView (..)

    -- * AppProFile
    , AppProFile
    , appProFile
    , apfSingleClusterRouting
    , apfEtag
    , apfMultiClusterRoutingUseAny
    , apfName
    , apfDescription

    -- * Frame
    , Frame
    , frame
    , fWorkflowGuid
    , fZoneId
    , fTargetName

    -- * CreateInstanceRequestClusters
    , CreateInstanceRequestClusters
    , createInstanceRequestClusters
    , circAddtional

    -- * GenerateConsistencyTokenResponse
    , GenerateConsistencyTokenResponse
    , generateConsistencyTokenResponse
    , gctrConsistencyToken

    -- * EncryptionConfig
    , EncryptionConfig
    , encryptionConfig
    , ecKmsKeyName

    -- * DropRowRangeRequest
    , DropRowRangeRequest
    , dropRowRangeRequest
    , drrrRowKeyPrefix
    , drrrDeleteAllDataFromTable

    -- * UpdateInstanceMetadata
    , UpdateInstanceMetadata
    , updateInstanceMetadata
    , uimRequestTime
    , uimOriginalRequest
    , uimFinishTime

    -- * Intersection
    , Intersection
    , intersection
    , iRules

    -- * ColumnFamily
    , ColumnFamily
    , columnFamily
    , cfGcRule

    -- * TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- * ListClustersResponse
    , ListClustersResponse
    , listClustersResponse
    , lcrNextPageToken
    , lcrFailedLocations
    , lcrClusters

    -- * BackupInfo
    , BackupInfo
    , backupInfo
    , biStartTime
    , biSourceTable
    , biBackup
    , biEndTime

    -- * Policy
    , Policy
    , policy
    , pAuditConfigs
    , pEtag
    , pVersion
    , pBindings

    -- * LocationLabels
    , LocationLabels
    , locationLabels
    , llAddtional

    -- * CreateInstanceMetadata
    , CreateInstanceMetadata
    , createInstanceMetadata
    , cimRequestTime
    , cimOriginalRequest
    , cimFinishTime

    -- * LocationMetadata
    , LocationMetadata
    , locationMetadata
    , lmAddtional

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- * AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- * ListInstancesResponse
    , ListInstancesResponse
    , listInstancesResponse
    , lirNextPageToken
    , lirFailedLocations
    , lirInstances

    -- * RestoreTableMetadata
    , RestoreTableMetadata
    , restoreTableMetadata
    , rtmOptimizeTableOperationName
    , rtmSourceType
    , rtmProgress
    , rtmName
    , rtmBackupInfo

    -- * CheckConsistencyResponse
    , CheckConsistencyResponse
    , checkConsistencyResponse
    , ccrConsistent

    -- * InstanceState
    , InstanceState (..)

    -- * Modification
    , Modification
    , modification
    , mDrop
    , mCreate
    , mId
    , mUpdate

    -- * Table
    , Table
    , table
    , tGranularity
    , tName
    , tRestoreInfo
    , tClusterStates
    , tColumnFamilies

    -- * OptimizeRestoredTableMetadata
    , OptimizeRestoredTableMetadata
    , optimizeRestoredTableMetadata
    , ortmProgress
    , ortmName

    -- * RestoreInfo
    , RestoreInfo
    , restoreInfo
    , riSourceType
    , riBackupInfo

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * BackupState
    , BackupState (..)

    -- * EncryptionInfo
    , EncryptionInfo
    , encryptionInfo
    , eiEncryptionType
    , eiKmsKeyVersion
    , eiEncryptionStatus

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition

    -- * Instance
    , Instance
    , instance'
    , iState
    , iName
    , iDisplayName
    , iLabels
    , iType
    ) where

import Network.Google.BigtableAdmin.Types.Product
import Network.Google.BigtableAdmin.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v2' of the Cloud Bigtable Admin API. This contains the host and root path used as a starting point for constructing service requests.
bigtableAdminService :: ServiceConfig
bigtableAdminService
  = defaultService (ServiceId "bigtableadmin:v2")
      "bigtableadmin.googleapis.com"

-- | Administer your Cloud Bigtable clusters
bigtableAdminClusterScope :: Proxy '["https://www.googleapis.com/auth/bigtable.admin.cluster"]
bigtableAdminClusterScope = Proxy

-- | Administer your Cloud Bigtable tables
cloudBigtableAdminTableScope :: Proxy '["https://www.googleapis.com/auth/cloud-bigtable.admin.table"]
cloudBigtableAdminTableScope = Proxy

-- | View your data across Google Cloud Platform services
cloudPlatformReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform.read-only"]
cloudPlatformReadOnlyScope = Proxy

-- | Administer your Cloud Bigtable tables and clusters
bigtableAdminScope :: Proxy '["https://www.googleapis.com/auth/bigtable.admin"]
bigtableAdminScope = Proxy

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy

-- | Administer your Cloud Bigtable tables and clusters
cloudBigtableAdminScope :: Proxy '["https://www.googleapis.com/auth/cloud-bigtable.admin"]
cloudBigtableAdminScope = Proxy

-- | Administer your Cloud Bigtable clusters
cloudBigtableAdminClusterScope :: Proxy '["https://www.googleapis.com/auth/cloud-bigtable.admin.cluster"]
cloudBigtableAdminClusterScope = Proxy

-- | Administer your Cloud Bigtable tables
bigtableAdminTableScope :: Proxy '["https://www.googleapis.com/auth/bigtable.admin.table"]
bigtableAdminTableScope = Proxy

-- | Administer your Cloud Bigtable clusters
bigtableAdminInstanceScope :: Proxy '["https://www.googleapis.com/auth/bigtable.admin.instance"]
bigtableAdminInstanceScope = Proxy
