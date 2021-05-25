{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Dataproc
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages Hadoop-based clusters and jobs on Google Cloud Platform.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference>
module Network.Google.Dataproc
    (
    -- * Service Configuration
      dataprocService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , DataprocAPI

    -- * Resources

    -- ** dataproc.projects.locations.autoscalingPolicies.create
    , module Network.Google.Resource.Dataproc.Projects.Locations.AutoscalingPolicies.Create

    -- ** dataproc.projects.locations.autoscalingPolicies.delete
    , module Network.Google.Resource.Dataproc.Projects.Locations.AutoscalingPolicies.Delete

    -- ** dataproc.projects.locations.autoscalingPolicies.get
    , module Network.Google.Resource.Dataproc.Projects.Locations.AutoscalingPolicies.Get

    -- ** dataproc.projects.locations.autoscalingPolicies.getIamPolicy
    , module Network.Google.Resource.Dataproc.Projects.Locations.AutoscalingPolicies.GetIAMPolicy

    -- ** dataproc.projects.locations.autoscalingPolicies.list
    , module Network.Google.Resource.Dataproc.Projects.Locations.AutoscalingPolicies.List

    -- ** dataproc.projects.locations.autoscalingPolicies.setIamPolicy
    , module Network.Google.Resource.Dataproc.Projects.Locations.AutoscalingPolicies.SetIAMPolicy

    -- ** dataproc.projects.locations.autoscalingPolicies.testIamPermissions
    , module Network.Google.Resource.Dataproc.Projects.Locations.AutoscalingPolicies.TestIAMPermissions

    -- ** dataproc.projects.locations.autoscalingPolicies.update
    , module Network.Google.Resource.Dataproc.Projects.Locations.AutoscalingPolicies.Update

    -- ** dataproc.projects.locations.workflowTemplates.create
    , module Network.Google.Resource.Dataproc.Projects.Locations.WorkflowTemplates.Create

    -- ** dataproc.projects.locations.workflowTemplates.delete
    , module Network.Google.Resource.Dataproc.Projects.Locations.WorkflowTemplates.Delete

    -- ** dataproc.projects.locations.workflowTemplates.get
    , module Network.Google.Resource.Dataproc.Projects.Locations.WorkflowTemplates.Get

    -- ** dataproc.projects.locations.workflowTemplates.getIamPolicy
    , module Network.Google.Resource.Dataproc.Projects.Locations.WorkflowTemplates.GetIAMPolicy

    -- ** dataproc.projects.locations.workflowTemplates.instantiate
    , module Network.Google.Resource.Dataproc.Projects.Locations.WorkflowTemplates.Instantiate

    -- ** dataproc.projects.locations.workflowTemplates.instantiateInline
    , module Network.Google.Resource.Dataproc.Projects.Locations.WorkflowTemplates.InstantiateInline

    -- ** dataproc.projects.locations.workflowTemplates.list
    , module Network.Google.Resource.Dataproc.Projects.Locations.WorkflowTemplates.List

    -- ** dataproc.projects.locations.workflowTemplates.setIamPolicy
    , module Network.Google.Resource.Dataproc.Projects.Locations.WorkflowTemplates.SetIAMPolicy

    -- ** dataproc.projects.locations.workflowTemplates.testIamPermissions
    , module Network.Google.Resource.Dataproc.Projects.Locations.WorkflowTemplates.TestIAMPermissions

    -- ** dataproc.projects.locations.workflowTemplates.update
    , module Network.Google.Resource.Dataproc.Projects.Locations.WorkflowTemplates.Update

    -- ** dataproc.projects.regions.autoscalingPolicies.create
    , module Network.Google.Resource.Dataproc.Projects.Regions.AutoscalingPolicies.Create

    -- ** dataproc.projects.regions.autoscalingPolicies.delete
    , module Network.Google.Resource.Dataproc.Projects.Regions.AutoscalingPolicies.Delete

    -- ** dataproc.projects.regions.autoscalingPolicies.get
    , module Network.Google.Resource.Dataproc.Projects.Regions.AutoscalingPolicies.Get

    -- ** dataproc.projects.regions.autoscalingPolicies.getIamPolicy
    , module Network.Google.Resource.Dataproc.Projects.Regions.AutoscalingPolicies.GetIAMPolicy

    -- ** dataproc.projects.regions.autoscalingPolicies.list
    , module Network.Google.Resource.Dataproc.Projects.Regions.AutoscalingPolicies.List

    -- ** dataproc.projects.regions.autoscalingPolicies.setIamPolicy
    , module Network.Google.Resource.Dataproc.Projects.Regions.AutoscalingPolicies.SetIAMPolicy

    -- ** dataproc.projects.regions.autoscalingPolicies.testIamPermissions
    , module Network.Google.Resource.Dataproc.Projects.Regions.AutoscalingPolicies.TestIAMPermissions

    -- ** dataproc.projects.regions.autoscalingPolicies.update
    , module Network.Google.Resource.Dataproc.Projects.Regions.AutoscalingPolicies.Update

    -- ** dataproc.projects.regions.clusters.create
    , module Network.Google.Resource.Dataproc.Projects.Regions.Clusters.Create

    -- ** dataproc.projects.regions.clusters.delete
    , module Network.Google.Resource.Dataproc.Projects.Regions.Clusters.Delete

    -- ** dataproc.projects.regions.clusters.diagnose
    , module Network.Google.Resource.Dataproc.Projects.Regions.Clusters.Diagnose

    -- ** dataproc.projects.regions.clusters.get
    , module Network.Google.Resource.Dataproc.Projects.Regions.Clusters.Get

    -- ** dataproc.projects.regions.clusters.getIamPolicy
    , module Network.Google.Resource.Dataproc.Projects.Regions.Clusters.GetIAMPolicy

    -- ** dataproc.projects.regions.clusters.injectCredentials
    , module Network.Google.Resource.Dataproc.Projects.Regions.Clusters.InjectCredentials

    -- ** dataproc.projects.regions.clusters.list
    , module Network.Google.Resource.Dataproc.Projects.Regions.Clusters.List

    -- ** dataproc.projects.regions.clusters.patch
    , module Network.Google.Resource.Dataproc.Projects.Regions.Clusters.Patch

    -- ** dataproc.projects.regions.clusters.repair
    , module Network.Google.Resource.Dataproc.Projects.Regions.Clusters.Repair

    -- ** dataproc.projects.regions.clusters.setIamPolicy
    , module Network.Google.Resource.Dataproc.Projects.Regions.Clusters.SetIAMPolicy

    -- ** dataproc.projects.regions.clusters.start
    , module Network.Google.Resource.Dataproc.Projects.Regions.Clusters.Start

    -- ** dataproc.projects.regions.clusters.stop
    , module Network.Google.Resource.Dataproc.Projects.Regions.Clusters.Stop

    -- ** dataproc.projects.regions.clusters.testIamPermissions
    , module Network.Google.Resource.Dataproc.Projects.Regions.Clusters.TestIAMPermissions

    -- ** dataproc.projects.regions.jobs.cancel
    , module Network.Google.Resource.Dataproc.Projects.Regions.Jobs.Cancel

    -- ** dataproc.projects.regions.jobs.delete
    , module Network.Google.Resource.Dataproc.Projects.Regions.Jobs.Delete

    -- ** dataproc.projects.regions.jobs.get
    , module Network.Google.Resource.Dataproc.Projects.Regions.Jobs.Get

    -- ** dataproc.projects.regions.jobs.getIamPolicy
    , module Network.Google.Resource.Dataproc.Projects.Regions.Jobs.GetIAMPolicy

    -- ** dataproc.projects.regions.jobs.list
    , module Network.Google.Resource.Dataproc.Projects.Regions.Jobs.List

    -- ** dataproc.projects.regions.jobs.patch
    , module Network.Google.Resource.Dataproc.Projects.Regions.Jobs.Patch

    -- ** dataproc.projects.regions.jobs.setIamPolicy
    , module Network.Google.Resource.Dataproc.Projects.Regions.Jobs.SetIAMPolicy

    -- ** dataproc.projects.regions.jobs.submit
    , module Network.Google.Resource.Dataproc.Projects.Regions.Jobs.Submit

    -- ** dataproc.projects.regions.jobs.submitAsOperation
    , module Network.Google.Resource.Dataproc.Projects.Regions.Jobs.SubmitAsOperation

    -- ** dataproc.projects.regions.jobs.testIamPermissions
    , module Network.Google.Resource.Dataproc.Projects.Regions.Jobs.TestIAMPermissions

    -- ** dataproc.projects.regions.operations.cancel
    , module Network.Google.Resource.Dataproc.Projects.Regions.Operations.Cancel

    -- ** dataproc.projects.regions.operations.delete
    , module Network.Google.Resource.Dataproc.Projects.Regions.Operations.Delete

    -- ** dataproc.projects.regions.operations.get
    , module Network.Google.Resource.Dataproc.Projects.Regions.Operations.Get

    -- ** dataproc.projects.regions.operations.getIamPolicy
    , module Network.Google.Resource.Dataproc.Projects.Regions.Operations.GetIAMPolicy

    -- ** dataproc.projects.regions.operations.list
    , module Network.Google.Resource.Dataproc.Projects.Regions.Operations.List

    -- ** dataproc.projects.regions.operations.setIamPolicy
    , module Network.Google.Resource.Dataproc.Projects.Regions.Operations.SetIAMPolicy

    -- ** dataproc.projects.regions.operations.testIamPermissions
    , module Network.Google.Resource.Dataproc.Projects.Regions.Operations.TestIAMPermissions

    -- ** dataproc.projects.regions.workflowTemplates.create
    , module Network.Google.Resource.Dataproc.Projects.Regions.WorkflowTemplates.Create

    -- ** dataproc.projects.regions.workflowTemplates.delete
    , module Network.Google.Resource.Dataproc.Projects.Regions.WorkflowTemplates.Delete

    -- ** dataproc.projects.regions.workflowTemplates.get
    , module Network.Google.Resource.Dataproc.Projects.Regions.WorkflowTemplates.Get

    -- ** dataproc.projects.regions.workflowTemplates.getIamPolicy
    , module Network.Google.Resource.Dataproc.Projects.Regions.WorkflowTemplates.GetIAMPolicy

    -- ** dataproc.projects.regions.workflowTemplates.instantiate
    , module Network.Google.Resource.Dataproc.Projects.Regions.WorkflowTemplates.Instantiate

    -- ** dataproc.projects.regions.workflowTemplates.instantiateInline
    , module Network.Google.Resource.Dataproc.Projects.Regions.WorkflowTemplates.InstantiateInline

    -- ** dataproc.projects.regions.workflowTemplates.list
    , module Network.Google.Resource.Dataproc.Projects.Regions.WorkflowTemplates.List

    -- ** dataproc.projects.regions.workflowTemplates.setIamPolicy
    , module Network.Google.Resource.Dataproc.Projects.Regions.WorkflowTemplates.SetIAMPolicy

    -- ** dataproc.projects.regions.workflowTemplates.testIamPermissions
    , module Network.Google.Resource.Dataproc.Projects.Regions.WorkflowTemplates.TestIAMPermissions

    -- ** dataproc.projects.regions.workflowTemplates.update
    , module Network.Google.Resource.Dataproc.Projects.Regions.WorkflowTemplates.Update

    -- * Types

    -- ** SecurityConfig
    , SecurityConfig
    , securityConfig
    , scIdentityConfig
    , scKerberosConfig

    -- ** JobReference
    , JobReference
    , jobReference
    , jrJobId
    , jrProjectId

    -- ** JobStatusState
    , JobStatusState (..)

    -- ** WorkflowNodeState
    , WorkflowNodeState (..)

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** PySparkJobProperties
    , PySparkJobProperties
    , pySparkJobProperties
    , psjpAddtional

    -- ** DiagnoseClusterResults
    , DiagnoseClusterResults
    , diagnoseClusterResults
    , dcrOutputURI

    -- ** InstanceGroupConfig
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

    -- ** IdentityConfig
    , IdentityConfig
    , identityConfig
    , icUserServiceAccountMApping

    -- ** SparkJob
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

    -- ** SoftwareConfigProperties
    , SoftwareConfigProperties
    , softwareConfigProperties
    , scpAddtional

    -- ** WorkflowGraph
    , WorkflowGraph
    , workflowGraph
    , wgNodes

    -- ** ClusterOperation
    , ClusterOperation
    , clusterOperation
    , coDone
    , coError
    , coOperationId

    -- ** ProjectsRegionsJobsListJobStateMatcher
    , ProjectsRegionsJobsListJobStateMatcher (..)

    -- ** LoggingConfigDriverLogLevelsAdditional
    , LoggingConfigDriverLogLevelsAdditional (..)

    -- ** ClusterSelector
    , ClusterSelector
    , clusterSelector
    , csZone
    , csClusterLabels

    -- ** KerberosConfig
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

    -- ** JobScheduling
    , JobScheduling
    , jobScheduling
    , jsMaxFailuresTotal
    , jsMaxFailuresPerHour

    -- ** DiskConfig
    , DiskConfig
    , diskConfig
    , dcNumLocalSsds
    , dcBootDiskType
    , dcBootDiskSizeGb

    -- ** ClusterOperationMetadataLabels
    , ClusterOperationMetadataLabels
    , clusterOperationMetadataLabels
    , comlAddtional

    -- ** Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- ** ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- ** HiveJobScriptVariables
    , HiveJobScriptVariables
    , hiveJobScriptVariables
    , hjsvAddtional

    -- ** GetIAMPolicyRequest
    , GetIAMPolicyRequest
    , getIAMPolicyRequest
    , giprOptions

    -- ** WorkflowTemplatePlacement
    , WorkflowTemplatePlacement
    , workflowTemplatePlacement
    , wtpClusterSelector
    , wtpManagedCluster

    -- ** Cluster
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

    -- ** ManagedClusterLabels
    , ManagedClusterLabels
    , managedClusterLabels
    , mclAddtional

    -- ** ParameterValidation
    , ParameterValidation
    , parameterValidation
    , pvRegex
    , pvValues

    -- ** InstanceReference
    , InstanceReference
    , instanceReference
    , irInstanceId
    , irPublicEciesKey
    , irPublicKey
    , irInstanceName

    -- ** SoftwareConfigOptionalComponentsItem
    , SoftwareConfigOptionalComponentsItem (..)

    -- ** JobLabels
    , JobLabels
    , jobLabels
    , jlAddtional

    -- ** SubmitJobRequest
    , SubmitJobRequest
    , submitJobRequest
    , sjrRequestId
    , sjrJob

    -- ** ReservationAffinity
    , ReservationAffinity
    , reservationAffinity
    , raConsumeReservationType
    , raValues
    , raKey

    -- ** JobMetadata
    , JobMetadata
    , jobMetadata
    , jmStatus
    , jmJobId
    , jmStartTime
    , jmOperationType

    -- ** ClusterStatusSubState
    , ClusterStatusSubState (..)

    -- ** ClusterMetrics
    , ClusterMetrics
    , clusterMetrics
    , cmYarnMetrics
    , cmHdfsMetrics

    -- ** InstanceGroupConfigPreemptibility
    , InstanceGroupConfigPreemptibility (..)

    -- ** NodeGroupAffinity
    , NodeGroupAffinity
    , nodeGroupAffinity
    , ngaNodeGroupURI

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

    -- ** HiveJob
    , HiveJob
    , hiveJob
    , hjQueryFileURI
    , hjJarFileURIs
    , hjScriptVariables
    , hjQueryList
    , hjContinueOnFailure
    , hjProperties

    -- ** ListAutoscalingPoliciesResponse
    , ListAutoscalingPoliciesResponse
    , listAutoscalingPoliciesResponse
    , laprNextPageToken
    , laprPolicies

    -- ** OrderedJobLabels
    , OrderedJobLabels
    , orderedJobLabels
    , ojlAddtional

    -- ** AutoscalingConfig
    , AutoscalingConfig
    , autoscalingConfig
    , acPolicyURI

    -- ** ClusterSelectorClusterLabels
    , ClusterSelectorClusterLabels
    , clusterSelectorClusterLabels
    , csclAddtional

    -- ** SparkSQLJobScriptVariables
    , SparkSQLJobScriptVariables
    , sparkSQLJobScriptVariables
    , ssqljsvAddtional

    -- ** PigJobProperties
    , PigJobProperties
    , pigJobProperties
    , pjpAddtional

    -- ** PrestoJob
    , PrestoJob
    , prestoJob
    , pjQueryFileURI
    , pjClientTags
    , pjOutputFormat
    , pjQueryList
    , pjContinueOnFailure
    , pjLoggingConfig
    , pjProperties

    -- ** ClusterConfig
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

    -- ** GceClusterConfigPrivateIPv6GoogleAccess
    , GceClusterConfigPrivateIPv6GoogleAccess (..)

    -- ** InstantiateWorkflowTemplateRequest
    , InstantiateWorkflowTemplateRequest
    , instantiateWorkflowTemplateRequest
    , iwtrRequestId
    , iwtrVersion
    , iwtrParameters

    -- ** HadoopJobProperties
    , HadoopJobProperties
    , hadoopJobProperties
    , hjpAddtional

    -- ** StopClusterRequest
    , StopClusterRequest
    , stopClusterRequest
    , scrRequestId
    , scrClusterUuid

    -- ** EndpointConfigHTTPPorts
    , EndpointConfigHTTPPorts
    , endpointConfigHTTPPorts
    , echttppAddtional

    -- ** WorkflowTemplate
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

    -- ** ClusterOperationStatus
    , ClusterOperationStatus
    , clusterOperationStatus
    , cosState
    , cosInnerState
    , cosStateStartTime
    , cosDetails

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** SparkSQLJobProperties
    , SparkSQLJobProperties
    , sparkSQLJobProperties
    , ssqljpAddtional

    -- ** WorkflowTemplateLabels
    , WorkflowTemplateLabels
    , workflowTemplateLabels
    , wtlAddtional

    -- ** NodeInitializationAction
    , NodeInitializationAction
    , nodeInitializationAction
    , niaExecutionTimeout
    , niaExecutableFile

    -- ** ClusterMetricsYarnMetrics
    , ClusterMetricsYarnMetrics
    , clusterMetricsYarnMetrics
    , cmymAddtional

    -- ** GetPolicyOptions
    , GetPolicyOptions
    , getPolicyOptions
    , gpoRequestedPolicyVersion

    -- ** RegexValidation
    , RegexValidation
    , regexValidation
    , rvRegexes

    -- ** JobPlacement
    , JobPlacement
    , jobPlacement
    , jpClusterUuid
    , jpClusterLabels
    , jpClusterName

    -- ** NamespacedGkeDeploymentTarget
    , NamespacedGkeDeploymentTarget
    , namespacedGkeDeploymentTarget
    , ngdtTargetGkeCluster
    , ngdtClusterNamespace

    -- ** SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprPolicy

    -- ** InstanceGroupAutoscalingPolicyConfig
    , InstanceGroupAutoscalingPolicyConfig
    , instanceGroupAutoscalingPolicyConfig
    , igapcWeight
    , igapcMinInstances
    , igapcMaxInstances

    -- ** ConfidentialInstanceConfig
    , ConfidentialInstanceConfig
    , confidentialInstanceConfig
    , cicEnableConfidentialCompute

    -- ** BatchOperationMetadataOperationType
    , BatchOperationMetadataOperationType (..)

    -- ** TemplateParameter
    , TemplateParameter
    , templateParameter
    , tpName
    , tpValidation
    , tpDescription
    , tpFields

    -- ** GceClusterConfig
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

    -- ** WorkflowMetadataState
    , WorkflowMetadataState (..)

    -- ** JobPlacementClusterLabels
    , JobPlacementClusterLabels
    , jobPlacementClusterLabels
    , jpclAddtional

    -- ** YarnApplicationState
    , YarnApplicationState (..)

    -- ** BatchOperationMetadataLabels
    , BatchOperationMetadataLabels
    , batchOperationMetadataLabels
    , bomlAddtional

    -- ** ClusterStatusState
    , ClusterStatusState (..)

    -- ** ListWorkflowTemplatesResponse
    , ListWorkflowTemplatesResponse
    , listWorkflowTemplatesResponse
    , lwtrNextPageToken
    , lwtrTemplates

    -- ** GceClusterConfigMetadata
    , GceClusterConfigMetadata
    , gceClusterConfigMetadata
    , gccmAddtional

    -- ** ClusterOperationStatusState
    , ClusterOperationStatusState (..)

    -- ** HiveJobProperties
    , HiveJobProperties
    , hiveJobProperties
    , hAddtional

    -- ** BatchOperationMetadata
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

    -- ** WorkflowMetadataParameters
    , WorkflowMetadataParameters
    , workflowMetadataParameters
    , wmpAddtional

    -- ** LifecycleConfig
    , LifecycleConfig
    , lifecycleConfig
    , lcIdleStartTime
    , lcIdleDeleteTtl
    , lcAutoDeleteTtl
    , lcAutoDeleteTime

    -- ** ManagedCluster
    , ManagedCluster
    , managedCluster
    , mcConfig
    , mcClusterName
    , mcLabels

    -- ** BasicAutoscalingAlgorithm
    , BasicAutoscalingAlgorithm
    , basicAutoscalingAlgorithm
    , baaCooldownPeriod
    , baaYarnConfig

    -- ** ClusterLabels
    , ClusterLabels
    , clusterLabels
    , clAddtional

    -- ** Job
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

    -- ** DiagnoseClusterRequest
    , DiagnoseClusterRequest
    , diagnoseClusterRequest

    -- ** SparkRJobProperties
    , SparkRJobProperties
    , sparkRJobProperties
    , srjpAddtional

    -- ** HadoopJob
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

    -- ** Xgafv
    , Xgafv (..)

    -- ** InstantiateWorkflowTemplateRequestParameters
    , InstantiateWorkflowTemplateRequestParameters
    , instantiateWorkflowTemplateRequestParameters
    , iwtrpAddtional

    -- ** ClusterOperationMetadata
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

    -- ** AutoscalingPolicy
    , AutoscalingPolicy
    , autoscalingPolicy
    , apWorkerConfig
    , apName
    , apBasicAlgorithm
    , apId
    , apSecondaryWorkerConfig

    -- ** TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- ** SparkSQLJob
    , SparkSQLJob
    , sparkSQLJob
    , ssqljQueryFileURI
    , ssqljJarFileURIs
    , ssqljScriptVariables
    , ssqljQueryList
    , ssqljLoggingConfig
    , ssqljProperties

    -- ** SoftwareConfig
    , SoftwareConfig
    , softwareConfig
    , scOptionalComponents
    , scImageVersion
    , scProperties

    -- ** ListJobsResponse
    , ListJobsResponse
    , listJobsResponse
    , ljrNextPageToken
    , ljrJobs

    -- ** IdentityConfigUserServiceAccountMApping
    , IdentityConfigUserServiceAccountMApping
    , identityConfigUserServiceAccountMApping
    , icusamaAddtional

    -- ** ShieldedInstanceConfig
    , ShieldedInstanceConfig
    , shieldedInstanceConfig
    , sicEnableVtpm
    , sicEnableIntegrityMonitoring
    , sicEnableSecureBoot

    -- ** AcceleratorConfig
    , AcceleratorConfig
    , acceleratorConfig
    , acAcceleratorCount
    , acAcceleratorTypeURI

    -- ** SparkJobProperties
    , SparkJobProperties
    , sparkJobProperties
    , sjpAddtional

    -- ** EncryptionConfig
    , EncryptionConfig
    , encryptionConfig
    , ecGcePdKmsKeyName

    -- ** PySparkJob
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

    -- ** MetastoreConfig
    , MetastoreConfig
    , metastoreConfig
    , mcDataprocMetastoreService

    -- ** ManagedGroupConfig
    , ManagedGroupConfig
    , managedGroupConfig
    , mgcInstanceTemplateName
    , mgcInstanceGroupManagerName

    -- ** TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- ** ListClustersResponse
    , ListClustersResponse
    , listClustersResponse
    , lcrNextPageToken
    , lcrClusters

    -- ** ValueValidation
    , ValueValidation
    , valueValidation
    , vvValues

    -- ** JobStatusSubState
    , JobStatusSubState (..)

    -- ** Policy
    , Policy
    , policy
    , pEtag
    , pVersion
    , pBindings

    -- ** OrderedJob
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

    -- ** CancelJobRequest
    , CancelJobRequest
    , cancelJobRequest

    -- ** QueryList
    , QueryList
    , queryList
    , qlQueries

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- ** JobStatus
    , JobStatus
    , jobStatus
    , jsState
    , jsSubState
    , jsStateStartTime
    , jsDetails

    -- ** StartClusterRequest
    , StartClusterRequest
    , startClusterRequest
    , sRequestId
    , sClusterUuid

    -- ** PigJobScriptVariables
    , PigJobScriptVariables
    , pigJobScriptVariables
    , pjsvAddtional

    -- ** ClusterMetricsHdfsMetrics
    , ClusterMetricsHdfsMetrics
    , clusterMetricsHdfsMetrics
    , cmhmAddtional

    -- ** WorkflowNode
    , WorkflowNode
    , workflowNode
    , wnState
    , wnStepId
    , wnJobId
    , wnPrerequisiteStepIds
    , wnError

    -- ** RepairClusterRequest
    , RepairClusterRequest
    , repairClusterRequest
    , rcrRequestId
    , rcrClusterUuid

    -- ** WorkflowMetadata
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

    -- ** InjectCredentialsRequest
    , InjectCredentialsRequest
    , injectCredentialsRequest
    , icrClusterUuid
    , icrCredentialsCiphertext

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** LoggingConfigDriverLogLevels
    , LoggingConfigDriverLogLevels
    , loggingConfigDriverLogLevels
    , lcdllAddtional

    -- ** BasicYarnAutoscalingConfig
    , BasicYarnAutoscalingConfig
    , basicYarnAutoscalingConfig
    , byacScaleDownFactor
    , byacScaleUpFactor
    , byacScaleUpMinWorkerFraction
    , byacScaleDownMinWorkerFraction
    , byacGracefulDecommissionTimeout

    -- ** ClusterStatus
    , ClusterStatus
    , clusterStatus
    , csState
    , csSubState
    , csStateStartTime
    , csDetail

    -- ** YarnApplication
    , YarnApplication
    , yarnApplication
    , yaTrackingURL
    , yaState
    , yaProgress
    , yaName

    -- ** SparkRJob
    , SparkRJob
    , sparkRJob
    , srjArgs
    , srjFileURIs
    , srjMainRFileURI
    , srjArchiveURIs
    , srjLoggingConfig
    , srjProperties

    -- ** ReservationAffinityConsumeReservationType
    , ReservationAffinityConsumeReservationType (..)

    -- ** EndpointConfig
    , EndpointConfig
    , endpointConfig
    , ecEnableHTTPPortAccess
    , ecHTTPPorts

    -- ** PigJob
    , PigJob
    , pigJob
    , pQueryFileURI
    , pJarFileURIs
    , pScriptVariables
    , pQueryList
    , pContinueOnFailure
    , pLoggingConfig
    , pProperties

    -- ** PrestoJobProperties
    , PrestoJobProperties
    , prestoJobProperties
    , pAddtional

    -- ** LoggingConfig
    , LoggingConfig
    , loggingConfig
    , lcDriverLogLevels

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition

    -- ** GkeClusterConfig
    , GkeClusterConfig
    , gkeClusterConfig
    , gccNamespacedGkeDeploymentTarget
    ) where

import Network.Google.Prelude
import Network.Google.Dataproc.Types
import Network.Google.Resource.Dataproc.Projects.Locations.AutoscalingPolicies.Create
import Network.Google.Resource.Dataproc.Projects.Locations.AutoscalingPolicies.Delete
import Network.Google.Resource.Dataproc.Projects.Locations.AutoscalingPolicies.Get
import Network.Google.Resource.Dataproc.Projects.Locations.AutoscalingPolicies.GetIAMPolicy
import Network.Google.Resource.Dataproc.Projects.Locations.AutoscalingPolicies.List
import Network.Google.Resource.Dataproc.Projects.Locations.AutoscalingPolicies.SetIAMPolicy
import Network.Google.Resource.Dataproc.Projects.Locations.AutoscalingPolicies.TestIAMPermissions
import Network.Google.Resource.Dataproc.Projects.Locations.AutoscalingPolicies.Update
import Network.Google.Resource.Dataproc.Projects.Locations.WorkflowTemplates.Create
import Network.Google.Resource.Dataproc.Projects.Locations.WorkflowTemplates.Delete
import Network.Google.Resource.Dataproc.Projects.Locations.WorkflowTemplates.Get
import Network.Google.Resource.Dataproc.Projects.Locations.WorkflowTemplates.GetIAMPolicy
import Network.Google.Resource.Dataproc.Projects.Locations.WorkflowTemplates.Instantiate
import Network.Google.Resource.Dataproc.Projects.Locations.WorkflowTemplates.InstantiateInline
import Network.Google.Resource.Dataproc.Projects.Locations.WorkflowTemplates.List
import Network.Google.Resource.Dataproc.Projects.Locations.WorkflowTemplates.SetIAMPolicy
import Network.Google.Resource.Dataproc.Projects.Locations.WorkflowTemplates.TestIAMPermissions
import Network.Google.Resource.Dataproc.Projects.Locations.WorkflowTemplates.Update
import Network.Google.Resource.Dataproc.Projects.Regions.AutoscalingPolicies.Create
import Network.Google.Resource.Dataproc.Projects.Regions.AutoscalingPolicies.Delete
import Network.Google.Resource.Dataproc.Projects.Regions.AutoscalingPolicies.Get
import Network.Google.Resource.Dataproc.Projects.Regions.AutoscalingPolicies.GetIAMPolicy
import Network.Google.Resource.Dataproc.Projects.Regions.AutoscalingPolicies.List
import Network.Google.Resource.Dataproc.Projects.Regions.AutoscalingPolicies.SetIAMPolicy
import Network.Google.Resource.Dataproc.Projects.Regions.AutoscalingPolicies.TestIAMPermissions
import Network.Google.Resource.Dataproc.Projects.Regions.AutoscalingPolicies.Update
import Network.Google.Resource.Dataproc.Projects.Regions.Clusters.Create
import Network.Google.Resource.Dataproc.Projects.Regions.Clusters.Delete
import Network.Google.Resource.Dataproc.Projects.Regions.Clusters.Diagnose
import Network.Google.Resource.Dataproc.Projects.Regions.Clusters.Get
import Network.Google.Resource.Dataproc.Projects.Regions.Clusters.GetIAMPolicy
import Network.Google.Resource.Dataproc.Projects.Regions.Clusters.InjectCredentials
import Network.Google.Resource.Dataproc.Projects.Regions.Clusters.List
import Network.Google.Resource.Dataproc.Projects.Regions.Clusters.Patch
import Network.Google.Resource.Dataproc.Projects.Regions.Clusters.Repair
import Network.Google.Resource.Dataproc.Projects.Regions.Clusters.SetIAMPolicy
import Network.Google.Resource.Dataproc.Projects.Regions.Clusters.Start
import Network.Google.Resource.Dataproc.Projects.Regions.Clusters.Stop
import Network.Google.Resource.Dataproc.Projects.Regions.Clusters.TestIAMPermissions
import Network.Google.Resource.Dataproc.Projects.Regions.Jobs.Cancel
import Network.Google.Resource.Dataproc.Projects.Regions.Jobs.Delete
import Network.Google.Resource.Dataproc.Projects.Regions.Jobs.Get
import Network.Google.Resource.Dataproc.Projects.Regions.Jobs.GetIAMPolicy
import Network.Google.Resource.Dataproc.Projects.Regions.Jobs.List
import Network.Google.Resource.Dataproc.Projects.Regions.Jobs.Patch
import Network.Google.Resource.Dataproc.Projects.Regions.Jobs.SetIAMPolicy
import Network.Google.Resource.Dataproc.Projects.Regions.Jobs.Submit
import Network.Google.Resource.Dataproc.Projects.Regions.Jobs.SubmitAsOperation
import Network.Google.Resource.Dataproc.Projects.Regions.Jobs.TestIAMPermissions
import Network.Google.Resource.Dataproc.Projects.Regions.Operations.Cancel
import Network.Google.Resource.Dataproc.Projects.Regions.Operations.Delete
import Network.Google.Resource.Dataproc.Projects.Regions.Operations.Get
import Network.Google.Resource.Dataproc.Projects.Regions.Operations.GetIAMPolicy
import Network.Google.Resource.Dataproc.Projects.Regions.Operations.List
import Network.Google.Resource.Dataproc.Projects.Regions.Operations.SetIAMPolicy
import Network.Google.Resource.Dataproc.Projects.Regions.Operations.TestIAMPermissions
import Network.Google.Resource.Dataproc.Projects.Regions.WorkflowTemplates.Create
import Network.Google.Resource.Dataproc.Projects.Regions.WorkflowTemplates.Delete
import Network.Google.Resource.Dataproc.Projects.Regions.WorkflowTemplates.Get
import Network.Google.Resource.Dataproc.Projects.Regions.WorkflowTemplates.GetIAMPolicy
import Network.Google.Resource.Dataproc.Projects.Regions.WorkflowTemplates.Instantiate
import Network.Google.Resource.Dataproc.Projects.Regions.WorkflowTemplates.InstantiateInline
import Network.Google.Resource.Dataproc.Projects.Regions.WorkflowTemplates.List
import Network.Google.Resource.Dataproc.Projects.Regions.WorkflowTemplates.SetIAMPolicy
import Network.Google.Resource.Dataproc.Projects.Regions.WorkflowTemplates.TestIAMPermissions
import Network.Google.Resource.Dataproc.Projects.Regions.WorkflowTemplates.Update

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Dataproc API service.
type DataprocAPI =
     ProjectsRegionsAutoscalingPoliciesListResource :<|>
       ProjectsRegionsAutoscalingPoliciesGetIAMPolicyResource
       :<|> ProjectsRegionsAutoscalingPoliciesGetResource
       :<|> ProjectsRegionsAutoscalingPoliciesCreateResource
       :<|>
       ProjectsRegionsAutoscalingPoliciesSetIAMPolicyResource
       :<|>
       ProjectsRegionsAutoscalingPoliciesTestIAMPermissionsResource
       :<|> ProjectsRegionsAutoscalingPoliciesDeleteResource
       :<|> ProjectsRegionsAutoscalingPoliciesUpdateResource
       :<|> ProjectsRegionsWorkflowTemplatesListResource
       :<|>
       ProjectsRegionsWorkflowTemplatesInstantiateResource
       :<|>
       ProjectsRegionsWorkflowTemplatesInstantiateInlineResource
       :<|>
       ProjectsRegionsWorkflowTemplatesGetIAMPolicyResource
       :<|> ProjectsRegionsWorkflowTemplatesGetResource
       :<|> ProjectsRegionsWorkflowTemplatesCreateResource
       :<|>
       ProjectsRegionsWorkflowTemplatesSetIAMPolicyResource
       :<|>
       ProjectsRegionsWorkflowTemplatesTestIAMPermissionsResource
       :<|> ProjectsRegionsWorkflowTemplatesDeleteResource
       :<|> ProjectsRegionsWorkflowTemplatesUpdateResource
       :<|> ProjectsRegionsJobsListResource
       :<|> ProjectsRegionsJobsGetIAMPolicyResource
       :<|> ProjectsRegionsJobsPatchResource
       :<|> ProjectsRegionsJobsGetResource
       :<|> ProjectsRegionsJobsSubmitResource
       :<|> ProjectsRegionsJobsSetIAMPolicyResource
       :<|> ProjectsRegionsJobsSubmitAsOperationResource
       :<|> ProjectsRegionsJobsTestIAMPermissionsResource
       :<|> ProjectsRegionsJobsCancelResource
       :<|> ProjectsRegionsJobsDeleteResource
       :<|> ProjectsRegionsOperationsListResource
       :<|> ProjectsRegionsOperationsGetIAMPolicyResource
       :<|> ProjectsRegionsOperationsGetResource
       :<|> ProjectsRegionsOperationsSetIAMPolicyResource
       :<|>
       ProjectsRegionsOperationsTestIAMPermissionsResource
       :<|> ProjectsRegionsOperationsCancelResource
       :<|> ProjectsRegionsOperationsDeleteResource
       :<|> ProjectsRegionsClustersDiagnoseResource
       :<|> ProjectsRegionsClustersInjectCredentialsResource
       :<|> ProjectsRegionsClustersListResource
       :<|> ProjectsRegionsClustersStartResource
       :<|> ProjectsRegionsClustersGetIAMPolicyResource
       :<|> ProjectsRegionsClustersPatchResource
       :<|> ProjectsRegionsClustersGetResource
       :<|> ProjectsRegionsClustersCreateResource
       :<|> ProjectsRegionsClustersSetIAMPolicyResource
       :<|> ProjectsRegionsClustersRepairResource
       :<|> ProjectsRegionsClustersStopResource
       :<|>
       ProjectsRegionsClustersTestIAMPermissionsResource
       :<|> ProjectsRegionsClustersDeleteResource
       :<|> ProjectsLocationsAutoscalingPoliciesListResource
       :<|>
       ProjectsLocationsAutoscalingPoliciesGetIAMPolicyResource
       :<|> ProjectsLocationsAutoscalingPoliciesGetResource
       :<|>
       ProjectsLocationsAutoscalingPoliciesCreateResource
       :<|>
       ProjectsLocationsAutoscalingPoliciesSetIAMPolicyResource
       :<|>
       ProjectsLocationsAutoscalingPoliciesTestIAMPermissionsResource
       :<|>
       ProjectsLocationsAutoscalingPoliciesDeleteResource
       :<|>
       ProjectsLocationsAutoscalingPoliciesUpdateResource
       :<|> ProjectsLocationsWorkflowTemplatesListResource
       :<|>
       ProjectsLocationsWorkflowTemplatesInstantiateResource
       :<|>
       ProjectsLocationsWorkflowTemplatesInstantiateInlineResource
       :<|>
       ProjectsLocationsWorkflowTemplatesGetIAMPolicyResource
       :<|> ProjectsLocationsWorkflowTemplatesGetResource
       :<|> ProjectsLocationsWorkflowTemplatesCreateResource
       :<|>
       ProjectsLocationsWorkflowTemplatesSetIAMPolicyResource
       :<|>
       ProjectsLocationsWorkflowTemplatesTestIAMPermissionsResource
       :<|> ProjectsLocationsWorkflowTemplatesDeleteResource
       :<|> ProjectsLocationsWorkflowTemplatesUpdateResource
