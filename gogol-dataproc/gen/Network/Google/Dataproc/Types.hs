{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
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
    , cloudPlatformScope

    -- * SecurityConfig
    , SecurityConfig
    , securityConfig
    , scIdentityConfig
    , scKerberosConfig

    -- * JobReference
    , JobReference
    , jobReference
    , jrJobId
    , jrProjectId

    -- * JobStatusState
    , JobStatusState (..)

    -- * WorkflowNodeState
    , WorkflowNodeState (..)

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

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
    , igcPreemptibility
    , igcImageURI
    , igcAccelerators
    , igcInstanceNames
    , igcManagedGroupConfig
    , igcMachineTypeURI
    , igcMinCPUPlatform
    , igcInstanceReferences

    -- * IdentityConfig
    , IdentityConfig
    , identityConfig
    , icUserServiceAccountMApping

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

    -- * WorkflowGraph
    , WorkflowGraph
    , workflowGraph
    , wgNodes

    -- * ClusterOperation
    , ClusterOperation
    , clusterOperation
    , coDone
    , coError
    , coOperationId

    -- * ProjectsRegionsJobsListJobStateMatcher
    , ProjectsRegionsJobsListJobStateMatcher (..)

    -- * LoggingConfigDriverLogLevelsAdditional
    , LoggingConfigDriverLogLevelsAdditional (..)

    -- * ClusterSelector
    , ClusterSelector
    , clusterSelector
    , csZone
    , csClusterLabels

    -- * KerberosConfig
    , KerberosConfig
    , kerberosConfig
    , kcEnableKerberos
    , kcCrossRealmTrustAdminServer
    , kcCrossRealmTrustRealm
    , kcKeyPasswordURI
    , kcKeystorePasswordURI
    , kcKmsKeyURI
    , kcRealm
    , kcTgtLifetimeHours
    , kcTruststorePasswordURI
    , kcTruststoreURI
    , kcCrossRealmTrustSharedPasswordURI
    , kcRootPrincipalPasswordURI
    , kcKdcDBKeyURI
    , kcKeystoreURI
    , kcCrossRealmTrustKdc

    -- * JobScheduling
    , JobScheduling
    , jobScheduling
    , jsMaxFailuresTotal
    , jsMaxFailuresPerHour

    -- * DiskConfig
    , DiskConfig
    , diskConfig
    , dcNumLocalSsds
    , dcBootDiskType
    , dcBootDiskSizeGb

    -- * ClusterOperationMetadataLabels
    , ClusterOperationMetadataLabels
    , clusterOperationMetadataLabels
    , comlAddtional

    -- * Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- * ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- * HiveJobScriptVariables
    , HiveJobScriptVariables
    , hiveJobScriptVariables
    , hjsvAddtional

    -- * GetIAMPolicyRequest
    , GetIAMPolicyRequest
    , getIAMPolicyRequest
    , giprOptions

    -- * WorkflowTemplatePlacement
    , WorkflowTemplatePlacement
    , workflowTemplatePlacement
    , wtpClusterSelector
    , wtpManagedCluster

    -- * Cluster
    , Cluster
    , cluster
    , cStatus
    , cMetrics
    , cClusterUuid
    , cConfig
    , cClusterName
    , cLabels
    , cProjectId
    , cStatusHistory

    -- * ManagedClusterLabels
    , ManagedClusterLabels
    , managedClusterLabels
    , mclAddtional

    -- * ParameterValidation
    , ParameterValidation
    , parameterValidation
    , pvRegex
    , pvValues

    -- * InstanceReference
    , InstanceReference
    , instanceReference
    , irInstanceId
    , irPublicEciesKey
    , irPublicKey
    , irInstanceName

    -- * SoftwareConfigOptionalComponentsItem
    , SoftwareConfigOptionalComponentsItem (..)

    -- * JobLabels
    , JobLabels
    , jobLabels
    , jlAddtional

    -- * SubmitJobRequest
    , SubmitJobRequest
    , submitJobRequest
    , sjrRequestId
    , sjrJob

    -- * ReservationAffinity
    , ReservationAffinity
    , reservationAffinity
    , raConsumeReservationType
    , raValues
    , raKey

    -- * JobMetadata
    , JobMetadata
    , jobMetadata
    , jmStatus
    , jmJobId
    , jmStartTime
    , jmOperationType

    -- * ClusterStatusSubState
    , ClusterStatusSubState (..)

    -- * ClusterMetrics
    , ClusterMetrics
    , clusterMetrics
    , cmYarnMetrics
    , cmHdfsMetrics

    -- * InstanceGroupConfigPreemptibility
    , InstanceGroupConfigPreemptibility (..)

    -- * NodeGroupAffinity
    , NodeGroupAffinity
    , nodeGroupAffinity
    , ngaNodeGroupURI

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

    -- * ListAutoscalingPoliciesResponse
    , ListAutoscalingPoliciesResponse
    , listAutoscalingPoliciesResponse
    , laprNextPageToken
    , laprPolicies

    -- * OrderedJobLabels
    , OrderedJobLabels
    , orderedJobLabels
    , ojlAddtional

    -- * AutoscalingConfig
    , AutoscalingConfig
    , autoscalingConfig
    , acPolicyURI

    -- * ClusterSelectorClusterLabels
    , ClusterSelectorClusterLabels
    , clusterSelectorClusterLabels
    , csclAddtional

    -- * SparkSQLJobScriptVariables
    , SparkSQLJobScriptVariables
    , sparkSQLJobScriptVariables
    , ssqljsvAddtional

    -- * PigJobProperties
    , PigJobProperties
    , pigJobProperties
    , pjpAddtional

    -- * PrestoJob
    , PrestoJob
    , prestoJob
    , pjQueryFileURI
    , pjClientTags
    , pjOutputFormat
    , pjQueryList
    , pjContinueOnFailure
    , pjLoggingConfig
    , pjProperties

    -- * ClusterConfig
    , ClusterConfig
    , clusterConfig
    , ccSecurityConfig
    , ccWorkerConfig
    , ccTempBucket
    , ccInitializationActions
    , ccAutoscalingConfig
    , ccMasterConfig
    , ccGceClusterConfig
    , ccLifecycleConfig
    , ccConfigBucket
    , ccEncryptionConfig
    , ccSoftwareConfig
    , ccMetastoreConfig
    , ccSecondaryWorkerConfig
    , ccGkeClusterConfig
    , ccEndpointConfig

    -- * GceClusterConfigPrivateIPv6GoogleAccess
    , GceClusterConfigPrivateIPv6GoogleAccess (..)

    -- * InstantiateWorkflowTemplateRequest
    , InstantiateWorkflowTemplateRequest
    , instantiateWorkflowTemplateRequest
    , iwtrRequestId
    , iwtrVersion
    , iwtrParameters

    -- * HadoopJobProperties
    , HadoopJobProperties
    , hadoopJobProperties
    , hjpAddtional

    -- * StopClusterRequest
    , StopClusterRequest
    , stopClusterRequest
    , scrRequestId
    , scrClusterUuid

    -- * EndpointConfigHTTPPorts
    , EndpointConfigHTTPPorts
    , endpointConfigHTTPPorts
    , echttppAddtional

    -- * WorkflowTemplate
    , WorkflowTemplate
    , workflowTemplate
    , wtJobs
    , wtUpdateTime
    , wtName
    , wtVersion
    , wtParameters
    , wtId
    , wtLabels
    , wtCreateTime
    , wtDagTimeout
    , wtPlacement

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

    -- * WorkflowTemplateLabels
    , WorkflowTemplateLabels
    , workflowTemplateLabels
    , wtlAddtional

    -- * NodeInitializationAction
    , NodeInitializationAction
    , nodeInitializationAction
    , niaExecutionTimeout
    , niaExecutableFile

    -- * ClusterMetricsYarnMetrics
    , ClusterMetricsYarnMetrics
    , clusterMetricsYarnMetrics
    , cmymAddtional

    -- * GetPolicyOptions
    , GetPolicyOptions
    , getPolicyOptions
    , gpoRequestedPolicyVersion

    -- * RegexValidation
    , RegexValidation
    , regexValidation
    , rvRegexes

    -- * JobPlacement
    , JobPlacement
    , jobPlacement
    , jpClusterUuid
    , jpClusterLabels
    , jpClusterName

    -- * NamespacedGkeDeploymentTarget
    , NamespacedGkeDeploymentTarget
    , namespacedGkeDeploymentTarget
    , ngdtTargetGkeCluster
    , ngdtClusterNamespace

    -- * SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprPolicy

    -- * InstanceGroupAutoscalingPolicyConfig
    , InstanceGroupAutoscalingPolicyConfig
    , instanceGroupAutoscalingPolicyConfig
    , igapcWeight
    , igapcMinInstances
    , igapcMaxInstances

    -- * ConfidentialInstanceConfig
    , ConfidentialInstanceConfig
    , confidentialInstanceConfig
    , cicEnableConfidentialCompute

    -- * BatchOperationMetadataOperationType
    , BatchOperationMetadataOperationType (..)

    -- * TemplateParameter
    , TemplateParameter
    , templateParameter
    , tpName
    , tpValidation
    , tpDescription
    , tpFields

    -- * GceClusterConfig
    , GceClusterConfig
    , gceClusterConfig
    , gccSubnetworkURI
    , gccReservationAffinity
    , gccInternalIPOnly
    , gccNodeGroupAffinity
    , gccNetworkURI
    , gccZoneURI
    , gccConfidentialInstanceConfig
    , gccServiceAccount
    , gccMetadata
    , gccServiceAccountScopes
    , gccShieldedInstanceConfig
    , gccTags
    , gccPrivateIPv6GoogleAccess

    -- * WorkflowMetadataState
    , WorkflowMetadataState (..)

    -- * JobPlacementClusterLabels
    , JobPlacementClusterLabels
    , jobPlacementClusterLabels
    , jpclAddtional

    -- * YarnApplicationState
    , YarnApplicationState (..)

    -- * BatchOperationMetadataLabels
    , BatchOperationMetadataLabels
    , batchOperationMetadataLabels
    , bomlAddtional

    -- * ClusterStatusState
    , ClusterStatusState (..)

    -- * ListWorkflowTemplatesResponse
    , ListWorkflowTemplatesResponse
    , listWorkflowTemplatesResponse
    , lwtrNextPageToken
    , lwtrTemplates

    -- * GceClusterConfigMetadata
    , GceClusterConfigMetadata
    , gceClusterConfigMetadata
    , gccmAddtional

    -- * ClusterOperationStatusState
    , ClusterOperationStatusState (..)

    -- * HiveJobProperties
    , HiveJobProperties
    , hiveJobProperties
    , hAddtional

    -- * BatchOperationMetadata
    , BatchOperationMetadata
    , batchOperationMetadata
    , bomBatch
    , bomDoneTime
    , bomWarnings
    , bomBatchUuid
    , bomLabels
    , bomOperationType
    , bomDescription
    , bomCreateTime

    -- * WorkflowMetadataParameters
    , WorkflowMetadataParameters
    , workflowMetadataParameters
    , wmpAddtional

    -- * LifecycleConfig
    , LifecycleConfig
    , lifecycleConfig
    , lcIdleStartTime
    , lcIdleDeleteTtl
    , lcAutoDeleteTtl
    , lcAutoDeleteTime

    -- * ManagedCluster
    , ManagedCluster
    , managedCluster
    , mcConfig
    , mcClusterName
    , mcLabels

    -- * BasicAutoscalingAlgorithm
    , BasicAutoscalingAlgorithm
    , basicAutoscalingAlgorithm
    , baaCooldownPeriod
    , baaYarnConfig

    -- * ClusterLabels
    , ClusterLabels
    , clusterLabels
    , clAddtional

    -- * Job
    , Job
    , job
    , jSparkJob
    , jStatus
    , jDriverControlFilesURI
    , jHiveJob
    , jDone
    , jPrestoJob
    , jReference
    , jSparkSQLJob
    , jHadoopJob
    , jJobUuid
    , jYarnApplications
    , jLabels
    , jPysparkJob
    , jDriverOutputResourceURI
    , jScheduling
    , jSparkRJob
    , jStatusHistory
    , jPlacement
    , jPigJob

    -- * DiagnoseClusterRequest
    , DiagnoseClusterRequest
    , diagnoseClusterRequest

    -- * SparkRJobProperties
    , SparkRJobProperties
    , sparkRJobProperties
    , srjpAddtional

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

    -- * Xgafv
    , Xgafv (..)

    -- * InstantiateWorkflowTemplateRequestParameters
    , InstantiateWorkflowTemplateRequestParameters
    , instantiateWorkflowTemplateRequestParameters
    , iwtrpAddtional

    -- * ClusterOperationMetadata
    , ClusterOperationMetadata
    , clusterOperationMetadata
    , comStatus
    , comClusterUuid
    , comWarnings
    , comClusterName
    , comLabels
    , comOperationType
    , comStatusHistory
    , comDescription

    -- * AutoscalingPolicy
    , AutoscalingPolicy
    , autoscalingPolicy
    , apWorkerConfig
    , apName
    , apBasicAlgorithm
    , apId
    , apSecondaryWorkerConfig

    -- * TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

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
    , scOptionalComponents
    , scImageVersion
    , scProperties

    -- * ListJobsResponse
    , ListJobsResponse
    , listJobsResponse
    , ljrNextPageToken
    , ljrJobs

    -- * IdentityConfigUserServiceAccountMApping
    , IdentityConfigUserServiceAccountMApping
    , identityConfigUserServiceAccountMApping
    , icusamaAddtional

    -- * ShieldedInstanceConfig
    , ShieldedInstanceConfig
    , shieldedInstanceConfig
    , sicEnableVtpm
    , sicEnableIntegrityMonitoring
    , sicEnableSecureBoot

    -- * AcceleratorConfig
    , AcceleratorConfig
    , acceleratorConfig
    , acAcceleratorCount
    , acAcceleratorTypeURI

    -- * SparkJobProperties
    , SparkJobProperties
    , sparkJobProperties
    , sjpAddtional

    -- * EncryptionConfig
    , EncryptionConfig
    , encryptionConfig
    , ecGcePdKmsKeyName

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

    -- * MetastoreConfig
    , MetastoreConfig
    , metastoreConfig
    , mcDataprocMetastoreService

    -- * ManagedGroupConfig
    , ManagedGroupConfig
    , managedGroupConfig
    , mgcInstanceTemplateName
    , mgcInstanceGroupManagerName

    -- * TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- * ListClustersResponse
    , ListClustersResponse
    , listClustersResponse
    , lcrNextPageToken
    , lcrClusters

    -- * ValueValidation
    , ValueValidation
    , valueValidation
    , vvValues

    -- * JobStatusSubState
    , JobStatusSubState (..)

    -- * Policy
    , Policy
    , policy
    , pEtag
    , pVersion
    , pBindings

    -- * OrderedJob
    , OrderedJob
    , orderedJob
    , ojSparkJob
    , ojStepId
    , ojPrerequisiteStepIds
    , ojHiveJob
    , ojPrestoJob
    , ojSparkSQLJob
    , ojHadoopJob
    , ojLabels
    , ojPysparkJob
    , ojScheduling
    , ojSparkRJob
    , ojPigJob

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
    , omAddtional

    -- * JobStatus
    , JobStatus
    , jobStatus
    , jsState
    , jsSubState
    , jsStateStartTime
    , jsDetails

    -- * StartClusterRequest
    , StartClusterRequest
    , startClusterRequest
    , sRequestId
    , sClusterUuid

    -- * PigJobScriptVariables
    , PigJobScriptVariables
    , pigJobScriptVariables
    , pjsvAddtional

    -- * ClusterMetricsHdfsMetrics
    , ClusterMetricsHdfsMetrics
    , clusterMetricsHdfsMetrics
    , cmhmAddtional

    -- * WorkflowNode
    , WorkflowNode
    , workflowNode
    , wnState
    , wnStepId
    , wnJobId
    , wnPrerequisiteStepIds
    , wnError

    -- * RepairClusterRequest
    , RepairClusterRequest
    , repairClusterRequest
    , rcrRequestId
    , rcrClusterUuid

    -- * WorkflowMetadata
    , WorkflowMetadata
    , workflowMetadata
    , wmGraph
    , wmState
    , wmDagStartTime
    , wmClusterUuid
    , wmStartTime
    , wmDeleteCluster
    , wmCreateCluster
    , wmVersion
    , wmEndTime
    , wmParameters
    , wmClusterName
    , wmDagEndTime
    , wmTemplate
    , wmDagTimeout

    -- * InjectCredentialsRequest
    , InjectCredentialsRequest
    , injectCredentialsRequest
    , icrClusterUuid
    , icrCredentialsCiphertext

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * LoggingConfigDriverLogLevels
    , LoggingConfigDriverLogLevels
    , loggingConfigDriverLogLevels
    , lcdllAddtional

    -- * BasicYarnAutoscalingConfig
    , BasicYarnAutoscalingConfig
    , basicYarnAutoscalingConfig
    , byacScaleDownFactor
    , byacScaleUpFactor
    , byacScaleUpMinWorkerFraction
    , byacScaleDownMinWorkerFraction
    , byacGracefulDecommissionTimeout

    -- * ClusterStatus
    , ClusterStatus
    , clusterStatus
    , csState
    , csSubState
    , csStateStartTime
    , csDetail

    -- * YarnApplication
    , YarnApplication
    , yarnApplication
    , yaTrackingURL
    , yaState
    , yaProgress
    , yaName

    -- * SparkRJob
    , SparkRJob
    , sparkRJob
    , srjArgs
    , srjFileURIs
    , srjMainRFileURI
    , srjArchiveURIs
    , srjLoggingConfig
    , srjProperties

    -- * ReservationAffinityConsumeReservationType
    , ReservationAffinityConsumeReservationType (..)

    -- * EndpointConfig
    , EndpointConfig
    , endpointConfig
    , ecEnableHTTPPortAccess
    , ecHTTPPorts

    -- * PigJob
    , PigJob
    , pigJob
    , pQueryFileURI
    , pJarFileURIs
    , pScriptVariables
    , pQueryList
    , pContinueOnFailure
    , pLoggingConfig
    , pProperties

    -- * PrestoJobProperties
    , PrestoJobProperties
    , prestoJobProperties
    , pAddtional

    -- * LoggingConfig
    , LoggingConfig
    , loggingConfig
    , lcDriverLogLevels

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition

    -- * GkeClusterConfig
    , GkeClusterConfig
    , gkeClusterConfig
    , gccNamespacedGkeDeploymentTarget
    ) where

import Network.Google.Dataproc.Types.Product
import Network.Google.Dataproc.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1' of the Cloud Dataproc API. This contains the host and root path used as a starting point for constructing service requests.
dataprocService :: ServiceConfig
dataprocService
  = defaultService (ServiceId "dataproc:v1")
      "dataproc.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
