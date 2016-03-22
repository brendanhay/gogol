{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Dataproc.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Dataproc.Types
    (
    -- * Service Configuration
      dataprocService

    -- * OAuth Scopes
    , loggingAdminScope
    , loggingReadScope
    , loggingWriteScope
    , cloudPlatformScope

    -- * JobReference
    , JobReference
    , jobReference
    , jrJobId
    , jrProjectId

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * OperationSchema
    , OperationSchema
    , operationSchema
    , osAddtional

    -- * PySparkJobProperties
    , PySparkJobProperties
    , pySparkJobProperties
    , psjpAddtional

    -- * DiagnoseClusterResults
    , DiagnoseClusterResults
    , diagnoseClusterResults
    , dcrOutputURI

    -- * InstanceGroupConfig
    , InstanceGroupConfig
    , instanceGroupConfig
    , igcNumInstances
    , igcDiskConfig
    , igcIsPreemptible
    , igcImageURI
    , igcInstanceNames
    , igcManagedGroupConfig
    , igcMachineTypeURI

    -- * SparkJob
    , SparkJob
    , sparkJob
    , sjArgs
    , sjMainJarFileURI
    , sjJarFileURIs
    , sjFileURIs
    , sjArchiveURIs
    , sjMainClass
    , sjLoggingConfig
    , sjProperties

    -- * SoftwareConfigProperties
    , SoftwareConfigProperties
    , softwareConfigProperties
    , scpAddtional

    -- * DiskConfig
    , DiskConfig
    , diskConfig
    , dcNumLocalSsds
    , dcBootDiskSizeGb

    -- * ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- * HiveJobScriptVariables
    , HiveJobScriptVariables
    , hiveJobScriptVariables
    , hjsvAddtional

    -- * Cluster
    , Cluster
    , cluster
    , cStatus
    , cClusterUuid
    , cConfig
    , cClusterName
    , cProjectId
    , cStatusHistory

    -- * SubmitJobRequest
    , SubmitJobRequest
    , submitJobRequest
    , sjrJob

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

    -- * HiveJob
    , HiveJob
    , hiveJob
    , hjQueryFileURI
    , hjJarFileURIs
    , hjScriptVariables
    , hjQueryList
    , hjContinueOnFailure
    , hjProperties

    -- * SparkSQLJobScriptVariables
    , SparkSQLJobScriptVariables
    , sparkSQLJobScriptVariables
    , ssqljsvAddtional

    -- * PigJobProperties
    , PigJobProperties
    , pigJobProperties
    , pjpAddtional

    -- * ClusterConfig
    , ClusterConfig
    , clusterConfig
    , ccWorkerConfig
    , ccInitializationActions
    , ccMasterConfig
    , ccGceClusterConfig
    , ccConfigBucket
    , ccSoftwareConfig
    , ccSecondaryWorkerConfig

    -- * HadoopJobProperties
    , HadoopJobProperties
    , hadoopJobProperties
    , hjpAddtional

    -- * ClusterOperationStatus
    , ClusterOperationStatus
    , clusterOperationStatus
    , cosState
    , cosInnerState
    , cosStateStartTime
    , cosDetails

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * SparkSQLJobProperties
    , SparkSQLJobProperties
    , sparkSQLJobProperties
    , ssqljpAddtional

    -- * NodeInitializationAction
    , NodeInitializationAction
    , nodeInitializationAction
    , niaExecutionTimeout
    , niaExecutableFile

    -- * JobPlacement
    , JobPlacement
    , jobPlacement
    , jpClusterUuid
    , jpClusterName

    -- * GceClusterConfig
    , GceClusterConfig
    , gceClusterConfig
    , gccSubnetworkURI
    , gccNetworkURI
    , gccZoneURI
    , gccMetadata
    , gccServiceAccountScopes
    , gccTags

    -- * OperationStatus
    , OperationStatus
    , operationStatus
    , osState
    , osInnerState
    , osStateStartTime
    , osDetails

    -- * GceClusterConfigMetadata
    , GceClusterConfigMetadata
    , gceClusterConfigMetadata
    , gccmAddtional

    -- * HiveJobProperties
    , HiveJobProperties
    , hiveJobProperties
    , hAddtional

    -- * Media
    , Media
    , media
    , mResourceName

    -- * DiagnoseClusterOutputLocation
    , DiagnoseClusterOutputLocation
    , diagnoseClusterOutputLocation
    , dcolOutputURI

    -- * Job
    , Job
    , job
    , jSparkJob
    , jStatus
    , jDriverControlFilesURI
    , jHiveJob
    , jReference
    , jSparkSQLJob
    , jHadoopJob
    , jPysparkJob
    , jDriverOutputResourceURI
    , jStatusHistory
    , jPlacement
    , jPigJob

    -- * DiagnoseClusterRequest
    , DiagnoseClusterRequest
    , diagnoseClusterRequest

    -- * HadoopJob
    , HadoopJob
    , hadoopJob
    , hArgs
    , hMainJarFileURI
    , hJarFileURIs
    , hFileURIs
    , hArchiveURIs
    , hMainClass
    , hLoggingConfig
    , hProperties

    -- * ClusterOperationMetadata
    , ClusterOperationMetadata
    , clusterOperationMetadata
    , comStatus
    , comClusterUuid
    , comClusterName
    , comOperationType
    , comStatusHistory
    , comDescription

    -- * SparkSQLJob
    , SparkSQLJob
    , sparkSQLJob
    , ssqljQueryFileURI
    , ssqljJarFileURIs
    , ssqljScriptVariables
    , ssqljQueryList
    , ssqljLoggingConfig
    , ssqljProperties

    -- * SoftwareConfig
    , SoftwareConfig
    , softwareConfig
    , scImageVersion
    , scProperties

    -- * ListJobsResponse
    , ListJobsResponse
    , listJobsResponse
    , ljrNextPageToken
    , ljrJobs

    -- * SparkJobProperties
    , SparkJobProperties
    , sparkJobProperties
    , sjpAddtional

    -- * PySparkJob
    , PySparkJob
    , pySparkJob
    , psjPythonFileURIs
    , psjMainPythonFileURI
    , psjArgs
    , psjJarFileURIs
    , psjFileURIs
    , psjArchiveURIs
    , psjLoggingConfig
    , psjProperties

    -- * ManagedGroupConfig
    , ManagedGroupConfig
    , managedGroupConfig
    , mgcInstanceTemplateName
    , mgcInstanceGroupManagerName

    -- * ListClustersResponse
    , ListClustersResponse
    , listClustersResponse
    , lcrNextPageToken
    , lcrClusters

    -- * CancelJobRequest
    , CancelJobRequest
    , cancelJobRequest

    -- * QueryList
    , QueryList
    , queryList
    , qlQueries

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omStatus
    , omState
    , omClusterUuid
    , omInsertTime
    , omStartTime
    , omInnerState
    , omEndTime
    , omDetails
    , omClusterName
    , omOperationType
    , omStatusHistory
    , omDescription

    -- * JobStatus
    , JobStatus
    , jobStatus
    , jsState
    , jsStateStartTime
    , jsDetails

    -- * PigJobScriptVariables
    , PigJobScriptVariables
    , pigJobScriptVariables
    , pjsvAddtional

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * LoggingConfigDriverLogLevels
    , LoggingConfigDriverLogLevels
    , loggingConfigDriverLogLevels
    , lcdllAddtional

    -- * ClusterStatus
    , ClusterStatus
    , clusterStatus
    , csState
    , csStateStartTime
    , csDetail

    -- * PigJob
    , PigJob
    , pigJob
    , pjQueryFileURI
    , pjJarFileURIs
    , pjScriptVariables
    , pjQueryList
    , pjContinueOnFailure
    , pjLoggingConfig
    , pjProperties

    -- * LoggingConfig
    , LoggingConfig
    , loggingConfig
    , lcDriverLogLevels
    ) where

import           Network.Google.Dataproc.Types.Product
import           Network.Google.Dataproc.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Google Cloud Dataproc API. This contains the host and root path used as a starting point for constructing service requests.
dataprocService :: ServiceConfig
dataprocService
  = defaultService (ServiceId "dataproc:v1")
      "dataproc.googleapis.com"

-- | Administrate log data for your projects
loggingAdminScope :: Proxy '["https://www.googleapis.com/auth/logging.admin"]
loggingAdminScope = Proxy;

-- | View log data for your projects
loggingReadScope :: Proxy '["https://www.googleapis.com/auth/logging.read"]
loggingReadScope = Proxy;

-- | Submit log data for your projects
loggingWriteScope :: Proxy '["https://www.googleapis.com/auth/logging.write"]
loggingWriteScope = Proxy;

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy;
