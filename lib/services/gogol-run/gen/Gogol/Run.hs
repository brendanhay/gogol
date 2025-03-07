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
-- Module      : Gogol.Run
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deploy and manage user provided container images that scale automatically based on incoming requests. The Cloud Run Admin API v1 follows the Knative Serving API specification, while v2 is aligned with Google Cloud AIP-based API standards, as described in https:\/\/google.aip.dev\/.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference>
module Gogol.Run
  ( -- * Configuration
    runService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Resources

    -- ** run.projects.locations.builds.submit
    RunProjectsLocationsBuildsSubmitResource,
    RunProjectsLocationsBuildsSubmit (..),
    newRunProjectsLocationsBuildsSubmit,

    -- ** run.projects.locations.exportImage
    RunProjectsLocationsExportImageResource,
    RunProjectsLocationsExportImage (..),
    newRunProjectsLocationsExportImage,

    -- ** run.projects.locations.exportImageMetadata
    RunProjectsLocationsExportImageMetadataResource,
    RunProjectsLocationsExportImageMetadata (..),
    newRunProjectsLocationsExportImageMetadata,

    -- ** run.projects.locations.exportMetadata
    RunProjectsLocationsExportMetadataResource,
    RunProjectsLocationsExportMetadata (..),
    newRunProjectsLocationsExportMetadata,

    -- ** run.projects.locations.exportProjectMetadata
    RunProjectsLocationsExportProjectMetadataResource,
    RunProjectsLocationsExportProjectMetadata (..),
    newRunProjectsLocationsExportProjectMetadata,

    -- ** run.projects.locations.jobs.create
    RunProjectsLocationsJobsCreateResource,
    RunProjectsLocationsJobsCreate (..),
    newRunProjectsLocationsJobsCreate,

    -- ** run.projects.locations.jobs.delete
    RunProjectsLocationsJobsDeleteResource,
    RunProjectsLocationsJobsDelete (..),
    newRunProjectsLocationsJobsDelete,

    -- ** run.projects.locations.jobs.executions.cancel
    RunProjectsLocationsJobsExecutionsCancelResource,
    RunProjectsLocationsJobsExecutionsCancel (..),
    newRunProjectsLocationsJobsExecutionsCancel,

    -- ** run.projects.locations.jobs.executions.delete
    RunProjectsLocationsJobsExecutionsDeleteResource,
    RunProjectsLocationsJobsExecutionsDelete (..),
    newRunProjectsLocationsJobsExecutionsDelete,

    -- ** run.projects.locations.jobs.executions.exportStatus
    RunProjectsLocationsJobsExecutionsExportStatusResource,
    RunProjectsLocationsJobsExecutionsExportStatus (..),
    newRunProjectsLocationsJobsExecutionsExportStatus,

    -- ** run.projects.locations.jobs.executions.get
    RunProjectsLocationsJobsExecutionsGetResource,
    RunProjectsLocationsJobsExecutionsGet (..),
    newRunProjectsLocationsJobsExecutionsGet,

    -- ** run.projects.locations.jobs.executions.list
    RunProjectsLocationsJobsExecutionsListResource,
    RunProjectsLocationsJobsExecutionsList (..),
    newRunProjectsLocationsJobsExecutionsList,

    -- ** run.projects.locations.jobs.executions.tasks.get
    RunProjectsLocationsJobsExecutionsTasksGetResource,
    RunProjectsLocationsJobsExecutionsTasksGet (..),
    newRunProjectsLocationsJobsExecutionsTasksGet,

    -- ** run.projects.locations.jobs.executions.tasks.list
    RunProjectsLocationsJobsExecutionsTasksListResource,
    RunProjectsLocationsJobsExecutionsTasksList (..),
    newRunProjectsLocationsJobsExecutionsTasksList,

    -- ** run.projects.locations.jobs.get
    RunProjectsLocationsJobsGetResource,
    RunProjectsLocationsJobsGet (..),
    newRunProjectsLocationsJobsGet,

    -- ** run.projects.locations.jobs.getIamPolicy
    RunProjectsLocationsJobsGetIamPolicyResource,
    RunProjectsLocationsJobsGetIamPolicy (..),
    newRunProjectsLocationsJobsGetIamPolicy,

    -- ** run.projects.locations.jobs.list
    RunProjectsLocationsJobsListResource,
    RunProjectsLocationsJobsList (..),
    newRunProjectsLocationsJobsList,

    -- ** run.projects.locations.jobs.patch
    RunProjectsLocationsJobsPatchResource,
    RunProjectsLocationsJobsPatch (..),
    newRunProjectsLocationsJobsPatch,

    -- ** run.projects.locations.jobs.run
    RunProjectsLocationsJobsRunResource,
    RunProjectsLocationsJobsRun (..),
    newRunProjectsLocationsJobsRun,

    -- ** run.projects.locations.jobs.setIamPolicy
    RunProjectsLocationsJobsSetIamPolicyResource,
    RunProjectsLocationsJobsSetIamPolicy (..),
    newRunProjectsLocationsJobsSetIamPolicy,

    -- ** run.projects.locations.jobs.testIamPermissions
    RunProjectsLocationsJobsTestIamPermissionsResource,
    RunProjectsLocationsJobsTestIamPermissions (..),
    newRunProjectsLocationsJobsTestIamPermissions,

    -- ** run.projects.locations.operations.delete
    RunProjectsLocationsOperationsDeleteResource,
    RunProjectsLocationsOperationsDelete (..),
    newRunProjectsLocationsOperationsDelete,

    -- ** run.projects.locations.operations.get
    RunProjectsLocationsOperationsGetResource,
    RunProjectsLocationsOperationsGet (..),
    newRunProjectsLocationsOperationsGet,

    -- ** run.projects.locations.operations.list
    RunProjectsLocationsOperationsListResource,
    RunProjectsLocationsOperationsList (..),
    newRunProjectsLocationsOperationsList,

    -- ** run.projects.locations.operations.wait
    RunProjectsLocationsOperationsWaitResource,
    RunProjectsLocationsOperationsWait (..),
    newRunProjectsLocationsOperationsWait,

    -- ** run.projects.locations.services.create
    RunProjectsLocationsServicesCreateResource,
    RunProjectsLocationsServicesCreate (..),
    newRunProjectsLocationsServicesCreate,

    -- ** run.projects.locations.services.delete
    RunProjectsLocationsServicesDeleteResource,
    RunProjectsLocationsServicesDelete (..),
    newRunProjectsLocationsServicesDelete,

    -- ** run.projects.locations.services.get
    RunProjectsLocationsServicesGetResource,
    RunProjectsLocationsServicesGet (..),
    newRunProjectsLocationsServicesGet,

    -- ** run.projects.locations.services.getIamPolicy
    RunProjectsLocationsServicesGetIamPolicyResource,
    RunProjectsLocationsServicesGetIamPolicy (..),
    newRunProjectsLocationsServicesGetIamPolicy,

    -- ** run.projects.locations.services.list
    RunProjectsLocationsServicesListResource,
    RunProjectsLocationsServicesList (..),
    newRunProjectsLocationsServicesList,

    -- ** run.projects.locations.services.patch
    RunProjectsLocationsServicesPatchResource,
    RunProjectsLocationsServicesPatch (..),
    newRunProjectsLocationsServicesPatch,

    -- ** run.projects.locations.services.revisions.delete
    RunProjectsLocationsServicesRevisionsDeleteResource,
    RunProjectsLocationsServicesRevisionsDelete (..),
    newRunProjectsLocationsServicesRevisionsDelete,

    -- ** run.projects.locations.services.revisions.exportStatus
    RunProjectsLocationsServicesRevisionsExportStatusResource,
    RunProjectsLocationsServicesRevisionsExportStatus (..),
    newRunProjectsLocationsServicesRevisionsExportStatus,

    -- ** run.projects.locations.services.revisions.get
    RunProjectsLocationsServicesRevisionsGetResource,
    RunProjectsLocationsServicesRevisionsGet (..),
    newRunProjectsLocationsServicesRevisionsGet,

    -- ** run.projects.locations.services.revisions.list
    RunProjectsLocationsServicesRevisionsListResource,
    RunProjectsLocationsServicesRevisionsList (..),
    newRunProjectsLocationsServicesRevisionsList,

    -- ** run.projects.locations.services.setIamPolicy
    RunProjectsLocationsServicesSetIamPolicyResource,
    RunProjectsLocationsServicesSetIamPolicy (..),
    newRunProjectsLocationsServicesSetIamPolicy,

    -- ** run.projects.locations.services.testIamPermissions
    RunProjectsLocationsServicesTestIamPermissionsResource,
    RunProjectsLocationsServicesTestIamPermissions (..),
    newRunProjectsLocationsServicesTestIamPermissions,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** GoogleCloudRunV2BinaryAuthorization
    GoogleCloudRunV2BinaryAuthorization (..),
    newGoogleCloudRunV2BinaryAuthorization,

    -- ** GoogleCloudRunV2BuildpacksBuild
    GoogleCloudRunV2BuildpacksBuild (..),
    newGoogleCloudRunV2BuildpacksBuild,

    -- ** GoogleCloudRunV2BuildpacksBuild_EnvironmentVariables
    GoogleCloudRunV2BuildpacksBuild_EnvironmentVariables (..),
    newGoogleCloudRunV2BuildpacksBuild_EnvironmentVariables,

    -- ** GoogleCloudRunV2CancelExecutionRequest
    GoogleCloudRunV2CancelExecutionRequest (..),
    newGoogleCloudRunV2CancelExecutionRequest,

    -- ** GoogleCloudRunV2CloudSqlInstance
    GoogleCloudRunV2CloudSqlInstance (..),
    newGoogleCloudRunV2CloudSqlInstance,

    -- ** GoogleCloudRunV2Condition
    GoogleCloudRunV2Condition (..),
    newGoogleCloudRunV2Condition,

    -- ** GoogleCloudRunV2Condition_ExecutionReason
    GoogleCloudRunV2Condition_ExecutionReason (..),

    -- ** GoogleCloudRunV2Condition_Reason
    GoogleCloudRunV2Condition_Reason (..),

    -- ** GoogleCloudRunV2Condition_RevisionReason
    GoogleCloudRunV2Condition_RevisionReason (..),

    -- ** GoogleCloudRunV2Condition_Severity
    GoogleCloudRunV2Condition_Severity (..),

    -- ** GoogleCloudRunV2Condition_State
    GoogleCloudRunV2Condition_State (..),

    -- ** GoogleCloudRunV2Container
    GoogleCloudRunV2Container (..),
    newGoogleCloudRunV2Container,

    -- ** GoogleCloudRunV2ContainerOverride
    GoogleCloudRunV2ContainerOverride (..),
    newGoogleCloudRunV2ContainerOverride,

    -- ** GoogleCloudRunV2ContainerPort
    GoogleCloudRunV2ContainerPort (..),
    newGoogleCloudRunV2ContainerPort,

    -- ** GoogleCloudRunV2DockerBuild
    GoogleCloudRunV2DockerBuild (..),
    newGoogleCloudRunV2DockerBuild,

    -- ** GoogleCloudRunV2EmptyDirVolumeSource
    GoogleCloudRunV2EmptyDirVolumeSource (..),
    newGoogleCloudRunV2EmptyDirVolumeSource,

    -- ** GoogleCloudRunV2EmptyDirVolumeSource_Medium
    GoogleCloudRunV2EmptyDirVolumeSource_Medium (..),

    -- ** GoogleCloudRunV2EnvVar
    GoogleCloudRunV2EnvVar (..),
    newGoogleCloudRunV2EnvVar,

    -- ** GoogleCloudRunV2EnvVarSource
    GoogleCloudRunV2EnvVarSource (..),
    newGoogleCloudRunV2EnvVarSource,

    -- ** GoogleCloudRunV2Execution
    GoogleCloudRunV2Execution (..),
    newGoogleCloudRunV2Execution,

    -- ** GoogleCloudRunV2Execution_Annotations
    GoogleCloudRunV2Execution_Annotations (..),
    newGoogleCloudRunV2Execution_Annotations,

    -- ** GoogleCloudRunV2Execution_Labels
    GoogleCloudRunV2Execution_Labels (..),
    newGoogleCloudRunV2Execution_Labels,

    -- ** GoogleCloudRunV2Execution_LaunchStage
    GoogleCloudRunV2Execution_LaunchStage (..),

    -- ** GoogleCloudRunV2ExecutionReference
    GoogleCloudRunV2ExecutionReference (..),
    newGoogleCloudRunV2ExecutionReference,

    -- ** GoogleCloudRunV2ExecutionReference_CompletionStatus
    GoogleCloudRunV2ExecutionReference_CompletionStatus (..),

    -- ** GoogleCloudRunV2ExecutionTemplate
    GoogleCloudRunV2ExecutionTemplate (..),
    newGoogleCloudRunV2ExecutionTemplate,

    -- ** GoogleCloudRunV2ExecutionTemplate_Annotations
    GoogleCloudRunV2ExecutionTemplate_Annotations (..),
    newGoogleCloudRunV2ExecutionTemplate_Annotations,

    -- ** GoogleCloudRunV2ExecutionTemplate_Labels
    GoogleCloudRunV2ExecutionTemplate_Labels (..),
    newGoogleCloudRunV2ExecutionTemplate_Labels,

    -- ** GoogleCloudRunV2ExportImageRequest
    GoogleCloudRunV2ExportImageRequest (..),
    newGoogleCloudRunV2ExportImageRequest,

    -- ** GoogleCloudRunV2ExportImageResponse
    GoogleCloudRunV2ExportImageResponse (..),
    newGoogleCloudRunV2ExportImageResponse,

    -- ** GoogleCloudRunV2ExportStatusResponse
    GoogleCloudRunV2ExportStatusResponse (..),
    newGoogleCloudRunV2ExportStatusResponse,

    -- ** GoogleCloudRunV2ExportStatusResponse_OperationState
    GoogleCloudRunV2ExportStatusResponse_OperationState (..),

    -- ** GoogleCloudRunV2GCSVolumeSource
    GoogleCloudRunV2GCSVolumeSource (..),
    newGoogleCloudRunV2GCSVolumeSource,

    -- ** GoogleCloudRunV2GRPCAction
    GoogleCloudRunV2GRPCAction (..),
    newGoogleCloudRunV2GRPCAction,

    -- ** GoogleCloudRunV2HTTPGetAction
    GoogleCloudRunV2HTTPGetAction (..),
    newGoogleCloudRunV2HTTPGetAction,

    -- ** GoogleCloudRunV2HTTPHeader
    GoogleCloudRunV2HTTPHeader (..),
    newGoogleCloudRunV2HTTPHeader,

    -- ** GoogleCloudRunV2ImageExportStatus
    GoogleCloudRunV2ImageExportStatus (..),
    newGoogleCloudRunV2ImageExportStatus,

    -- ** GoogleCloudRunV2ImageExportStatus_ExportJobState
    GoogleCloudRunV2ImageExportStatus_ExportJobState (..),

    -- ** GoogleCloudRunV2Job
    GoogleCloudRunV2Job (..),
    newGoogleCloudRunV2Job,

    -- ** GoogleCloudRunV2Job_Annotations
    GoogleCloudRunV2Job_Annotations (..),
    newGoogleCloudRunV2Job_Annotations,

    -- ** GoogleCloudRunV2Job_Labels
    GoogleCloudRunV2Job_Labels (..),
    newGoogleCloudRunV2Job_Labels,

    -- ** GoogleCloudRunV2Job_LaunchStage
    GoogleCloudRunV2Job_LaunchStage (..),

    -- ** GoogleCloudRunV2ListExecutionsResponse
    GoogleCloudRunV2ListExecutionsResponse (..),
    newGoogleCloudRunV2ListExecutionsResponse,

    -- ** GoogleCloudRunV2ListJobsResponse
    GoogleCloudRunV2ListJobsResponse (..),
    newGoogleCloudRunV2ListJobsResponse,

    -- ** GoogleCloudRunV2ListRevisionsResponse
    GoogleCloudRunV2ListRevisionsResponse (..),
    newGoogleCloudRunV2ListRevisionsResponse,

    -- ** GoogleCloudRunV2ListServicesResponse
    GoogleCloudRunV2ListServicesResponse (..),
    newGoogleCloudRunV2ListServicesResponse,

    -- ** GoogleCloudRunV2ListTasksResponse
    GoogleCloudRunV2ListTasksResponse (..),
    newGoogleCloudRunV2ListTasksResponse,

    -- ** GoogleCloudRunV2Metadata
    GoogleCloudRunV2Metadata (..),
    newGoogleCloudRunV2Metadata,

    -- ** GoogleCloudRunV2NFSVolumeSource
    GoogleCloudRunV2NFSVolumeSource (..),
    newGoogleCloudRunV2NFSVolumeSource,

    -- ** GoogleCloudRunV2NetworkInterface
    GoogleCloudRunV2NetworkInterface (..),
    newGoogleCloudRunV2NetworkInterface,

    -- ** GoogleCloudRunV2NodeSelector
    GoogleCloudRunV2NodeSelector (..),
    newGoogleCloudRunV2NodeSelector,

    -- ** GoogleCloudRunV2Overrides
    GoogleCloudRunV2Overrides (..),
    newGoogleCloudRunV2Overrides,

    -- ** GoogleCloudRunV2Probe
    GoogleCloudRunV2Probe (..),
    newGoogleCloudRunV2Probe,

    -- ** GoogleCloudRunV2ResourceRequirements
    GoogleCloudRunV2ResourceRequirements (..),
    newGoogleCloudRunV2ResourceRequirements,

    -- ** GoogleCloudRunV2ResourceRequirements_Limits
    GoogleCloudRunV2ResourceRequirements_Limits (..),
    newGoogleCloudRunV2ResourceRequirements_Limits,

    -- ** GoogleCloudRunV2Revision
    GoogleCloudRunV2Revision (..),
    newGoogleCloudRunV2Revision,

    -- ** GoogleCloudRunV2Revision_Annotations
    GoogleCloudRunV2Revision_Annotations (..),
    newGoogleCloudRunV2Revision_Annotations,

    -- ** GoogleCloudRunV2Revision_EncryptionKeyRevocationAction
    GoogleCloudRunV2Revision_EncryptionKeyRevocationAction (..),

    -- ** GoogleCloudRunV2Revision_ExecutionEnvironment
    GoogleCloudRunV2Revision_ExecutionEnvironment (..),

    -- ** GoogleCloudRunV2Revision_Labels
    GoogleCloudRunV2Revision_Labels (..),
    newGoogleCloudRunV2Revision_Labels,

    -- ** GoogleCloudRunV2Revision_LaunchStage
    GoogleCloudRunV2Revision_LaunchStage (..),

    -- ** GoogleCloudRunV2RevisionScaling
    GoogleCloudRunV2RevisionScaling (..),
    newGoogleCloudRunV2RevisionScaling,

    -- ** GoogleCloudRunV2RevisionScalingStatus
    GoogleCloudRunV2RevisionScalingStatus (..),
    newGoogleCloudRunV2RevisionScalingStatus,

    -- ** GoogleCloudRunV2RevisionTemplate
    GoogleCloudRunV2RevisionTemplate (..),
    newGoogleCloudRunV2RevisionTemplate,

    -- ** GoogleCloudRunV2RevisionTemplate_Annotations
    GoogleCloudRunV2RevisionTemplate_Annotations (..),
    newGoogleCloudRunV2RevisionTemplate_Annotations,

    -- ** GoogleCloudRunV2RevisionTemplate_EncryptionKeyRevocationAction
    GoogleCloudRunV2RevisionTemplate_EncryptionKeyRevocationAction (..),

    -- ** GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment
    GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment (..),

    -- ** GoogleCloudRunV2RevisionTemplate_Labels
    GoogleCloudRunV2RevisionTemplate_Labels (..),
    newGoogleCloudRunV2RevisionTemplate_Labels,

    -- ** GoogleCloudRunV2RunJobRequest
    GoogleCloudRunV2RunJobRequest (..),
    newGoogleCloudRunV2RunJobRequest,

    -- ** GoogleCloudRunV2SecretKeySelector
    GoogleCloudRunV2SecretKeySelector (..),
    newGoogleCloudRunV2SecretKeySelector,

    -- ** GoogleCloudRunV2SecretVolumeSource
    GoogleCloudRunV2SecretVolumeSource (..),
    newGoogleCloudRunV2SecretVolumeSource,

    -- ** GoogleCloudRunV2Service
    GoogleCloudRunV2Service (..),
    newGoogleCloudRunV2Service,

    -- ** GoogleCloudRunV2Service_Annotations
    GoogleCloudRunV2Service_Annotations (..),
    newGoogleCloudRunV2Service_Annotations,

    -- ** GoogleCloudRunV2Service_Ingress
    GoogleCloudRunV2Service_Ingress (..),

    -- ** GoogleCloudRunV2Service_Labels
    GoogleCloudRunV2Service_Labels (..),
    newGoogleCloudRunV2Service_Labels,

    -- ** GoogleCloudRunV2Service_LaunchStage
    GoogleCloudRunV2Service_LaunchStage (..),

    -- ** GoogleCloudRunV2ServiceMesh
    GoogleCloudRunV2ServiceMesh (..),
    newGoogleCloudRunV2ServiceMesh,

    -- ** GoogleCloudRunV2ServiceScaling
    GoogleCloudRunV2ServiceScaling (..),
    newGoogleCloudRunV2ServiceScaling,

    -- ** GoogleCloudRunV2ServiceScaling_ScalingMode
    GoogleCloudRunV2ServiceScaling_ScalingMode (..),

    -- ** GoogleCloudRunV2StorageSource
    GoogleCloudRunV2StorageSource (..),
    newGoogleCloudRunV2StorageSource,

    -- ** GoogleCloudRunV2SubmitBuildRequest
    GoogleCloudRunV2SubmitBuildRequest (..),
    newGoogleCloudRunV2SubmitBuildRequest,

    -- ** GoogleCloudRunV2SubmitBuildResponse
    GoogleCloudRunV2SubmitBuildResponse (..),
    newGoogleCloudRunV2SubmitBuildResponse,

    -- ** GoogleCloudRunV2TCPSocketAction
    GoogleCloudRunV2TCPSocketAction (..),
    newGoogleCloudRunV2TCPSocketAction,

    -- ** GoogleCloudRunV2Task
    GoogleCloudRunV2Task (..),
    newGoogleCloudRunV2Task,

    -- ** GoogleCloudRunV2Task_Annotations
    GoogleCloudRunV2Task_Annotations (..),
    newGoogleCloudRunV2Task_Annotations,

    -- ** GoogleCloudRunV2Task_ExecutionEnvironment
    GoogleCloudRunV2Task_ExecutionEnvironment (..),

    -- ** GoogleCloudRunV2Task_Labels
    GoogleCloudRunV2Task_Labels (..),
    newGoogleCloudRunV2Task_Labels,

    -- ** GoogleCloudRunV2TaskAttemptResult
    GoogleCloudRunV2TaskAttemptResult (..),
    newGoogleCloudRunV2TaskAttemptResult,

    -- ** GoogleCloudRunV2TaskTemplate
    GoogleCloudRunV2TaskTemplate (..),
    newGoogleCloudRunV2TaskTemplate,

    -- ** GoogleCloudRunV2TaskTemplate_ExecutionEnvironment
    GoogleCloudRunV2TaskTemplate_ExecutionEnvironment (..),

    -- ** GoogleCloudRunV2TrafficTarget
    GoogleCloudRunV2TrafficTarget (..),
    newGoogleCloudRunV2TrafficTarget,

    -- ** GoogleCloudRunV2TrafficTarget_Type
    GoogleCloudRunV2TrafficTarget_Type (..),

    -- ** GoogleCloudRunV2TrafficTargetStatus
    GoogleCloudRunV2TrafficTargetStatus (..),
    newGoogleCloudRunV2TrafficTargetStatus,

    -- ** GoogleCloudRunV2TrafficTargetStatus_Type
    GoogleCloudRunV2TrafficTargetStatus_Type (..),

    -- ** GoogleCloudRunV2VersionToPath
    GoogleCloudRunV2VersionToPath (..),
    newGoogleCloudRunV2VersionToPath,

    -- ** GoogleCloudRunV2Volume
    GoogleCloudRunV2Volume (..),
    newGoogleCloudRunV2Volume,

    -- ** GoogleCloudRunV2VolumeMount
    GoogleCloudRunV2VolumeMount (..),
    newGoogleCloudRunV2VolumeMount,

    -- ** GoogleCloudRunV2VpcAccess
    GoogleCloudRunV2VpcAccess (..),
    newGoogleCloudRunV2VpcAccess,

    -- ** GoogleCloudRunV2VpcAccess_Egress
    GoogleCloudRunV2VpcAccess_Egress (..),

    -- ** GoogleDevtoolsCloudbuildV1ApprovalConfig
    GoogleDevtoolsCloudbuildV1ApprovalConfig (..),
    newGoogleDevtoolsCloudbuildV1ApprovalConfig,

    -- ** GoogleDevtoolsCloudbuildV1ApprovalResult
    GoogleDevtoolsCloudbuildV1ApprovalResult (..),
    newGoogleDevtoolsCloudbuildV1ApprovalResult,

    -- ** GoogleDevtoolsCloudbuildV1ApprovalResult_Decision
    GoogleDevtoolsCloudbuildV1ApprovalResult_Decision (..),

    -- ** GoogleDevtoolsCloudbuildV1ArtifactObjects
    GoogleDevtoolsCloudbuildV1ArtifactObjects (..),
    newGoogleDevtoolsCloudbuildV1ArtifactObjects,

    -- ** GoogleDevtoolsCloudbuildV1Artifacts
    GoogleDevtoolsCloudbuildV1Artifacts (..),
    newGoogleDevtoolsCloudbuildV1Artifacts,

    -- ** GoogleDevtoolsCloudbuildV1Build
    GoogleDevtoolsCloudbuildV1Build (..),
    newGoogleDevtoolsCloudbuildV1Build,

    -- ** GoogleDevtoolsCloudbuildV1Build_Status
    GoogleDevtoolsCloudbuildV1Build_Status (..),

    -- ** GoogleDevtoolsCloudbuildV1Build_Substitutions
    GoogleDevtoolsCloudbuildV1Build_Substitutions (..),
    newGoogleDevtoolsCloudbuildV1Build_Substitutions,

    -- ** GoogleDevtoolsCloudbuildV1Build_Timing
    GoogleDevtoolsCloudbuildV1Build_Timing (..),
    newGoogleDevtoolsCloudbuildV1Build_Timing,

    -- ** GoogleDevtoolsCloudbuildV1BuildApproval
    GoogleDevtoolsCloudbuildV1BuildApproval (..),
    newGoogleDevtoolsCloudbuildV1BuildApproval,

    -- ** GoogleDevtoolsCloudbuildV1BuildApproval_State
    GoogleDevtoolsCloudbuildV1BuildApproval_State (..),

    -- ** GoogleDevtoolsCloudbuildV1BuildOperationMetadata
    GoogleDevtoolsCloudbuildV1BuildOperationMetadata (..),
    newGoogleDevtoolsCloudbuildV1BuildOperationMetadata,

    -- ** GoogleDevtoolsCloudbuildV1BuildOptions
    GoogleDevtoolsCloudbuildV1BuildOptions (..),
    newGoogleDevtoolsCloudbuildV1BuildOptions,

    -- ** GoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior
    GoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior (..),

    -- ** GoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption
    GoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption (..),

    -- ** GoogleDevtoolsCloudbuildV1BuildOptions_Logging
    GoogleDevtoolsCloudbuildV1BuildOptions_Logging (..),

    -- ** GoogleDevtoolsCloudbuildV1BuildOptions_MachineType
    GoogleDevtoolsCloudbuildV1BuildOptions_MachineType (..),

    -- ** GoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption
    GoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption (..),

    -- ** GoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem
    GoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem (..),

    -- ** GoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption
    GoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption (..),

    -- ** GoogleDevtoolsCloudbuildV1BuildStep
    GoogleDevtoolsCloudbuildV1BuildStep (..),
    newGoogleDevtoolsCloudbuildV1BuildStep,

    -- ** GoogleDevtoolsCloudbuildV1BuildStep_Status
    GoogleDevtoolsCloudbuildV1BuildStep_Status (..),

    -- ** GoogleDevtoolsCloudbuildV1BuiltImage
    GoogleDevtoolsCloudbuildV1BuiltImage (..),
    newGoogleDevtoolsCloudbuildV1BuiltImage,

    -- ** GoogleDevtoolsCloudbuildV1ConnectedRepository
    GoogleDevtoolsCloudbuildV1ConnectedRepository (..),
    newGoogleDevtoolsCloudbuildV1ConnectedRepository,

    -- ** GoogleDevtoolsCloudbuildV1DeveloperConnectConfig
    GoogleDevtoolsCloudbuildV1DeveloperConnectConfig (..),
    newGoogleDevtoolsCloudbuildV1DeveloperConnectConfig,

    -- ** GoogleDevtoolsCloudbuildV1FailureInfo
    GoogleDevtoolsCloudbuildV1FailureInfo (..),
    newGoogleDevtoolsCloudbuildV1FailureInfo,

    -- ** GoogleDevtoolsCloudbuildV1FailureInfo_Type
    GoogleDevtoolsCloudbuildV1FailureInfo_Type (..),

    -- ** GoogleDevtoolsCloudbuildV1FileHashes
    GoogleDevtoolsCloudbuildV1FileHashes (..),
    newGoogleDevtoolsCloudbuildV1FileHashes,

    -- ** GoogleDevtoolsCloudbuildV1GitConfig
    GoogleDevtoolsCloudbuildV1GitConfig (..),
    newGoogleDevtoolsCloudbuildV1GitConfig,

    -- ** GoogleDevtoolsCloudbuildV1GitSource
    GoogleDevtoolsCloudbuildV1GitSource (..),
    newGoogleDevtoolsCloudbuildV1GitSource,

    -- ** GoogleDevtoolsCloudbuildV1Hash
    GoogleDevtoolsCloudbuildV1Hash (..),
    newGoogleDevtoolsCloudbuildV1Hash,

    -- ** GoogleDevtoolsCloudbuildV1Hash_Type
    GoogleDevtoolsCloudbuildV1Hash_Type (..),

    -- ** GoogleDevtoolsCloudbuildV1HttpConfig
    GoogleDevtoolsCloudbuildV1HttpConfig (..),
    newGoogleDevtoolsCloudbuildV1HttpConfig,

    -- ** GoogleDevtoolsCloudbuildV1InlineSecret
    GoogleDevtoolsCloudbuildV1InlineSecret (..),
    newGoogleDevtoolsCloudbuildV1InlineSecret,

    -- ** GoogleDevtoolsCloudbuildV1InlineSecret_EnvMap
    GoogleDevtoolsCloudbuildV1InlineSecret_EnvMap (..),
    newGoogleDevtoolsCloudbuildV1InlineSecret_EnvMap,

    -- ** GoogleDevtoolsCloudbuildV1MavenArtifact
    GoogleDevtoolsCloudbuildV1MavenArtifact (..),
    newGoogleDevtoolsCloudbuildV1MavenArtifact,

    -- ** GoogleDevtoolsCloudbuildV1NpmPackage
    GoogleDevtoolsCloudbuildV1NpmPackage (..),
    newGoogleDevtoolsCloudbuildV1NpmPackage,

    -- ** GoogleDevtoolsCloudbuildV1PoolOption
    GoogleDevtoolsCloudbuildV1PoolOption (..),
    newGoogleDevtoolsCloudbuildV1PoolOption,

    -- ** GoogleDevtoolsCloudbuildV1PythonPackage
    GoogleDevtoolsCloudbuildV1PythonPackage (..),
    newGoogleDevtoolsCloudbuildV1PythonPackage,

    -- ** GoogleDevtoolsCloudbuildV1RepoSource
    GoogleDevtoolsCloudbuildV1RepoSource (..),
    newGoogleDevtoolsCloudbuildV1RepoSource,

    -- ** GoogleDevtoolsCloudbuildV1RepoSource_Substitutions
    GoogleDevtoolsCloudbuildV1RepoSource_Substitutions (..),
    newGoogleDevtoolsCloudbuildV1RepoSource_Substitutions,

    -- ** GoogleDevtoolsCloudbuildV1Results
    GoogleDevtoolsCloudbuildV1Results (..),
    newGoogleDevtoolsCloudbuildV1Results,

    -- ** GoogleDevtoolsCloudbuildV1Secret
    GoogleDevtoolsCloudbuildV1Secret (..),
    newGoogleDevtoolsCloudbuildV1Secret,

    -- ** GoogleDevtoolsCloudbuildV1Secret_SecretEnv
    GoogleDevtoolsCloudbuildV1Secret_SecretEnv (..),
    newGoogleDevtoolsCloudbuildV1Secret_SecretEnv,

    -- ** GoogleDevtoolsCloudbuildV1SecretManagerSecret
    GoogleDevtoolsCloudbuildV1SecretManagerSecret (..),
    newGoogleDevtoolsCloudbuildV1SecretManagerSecret,

    -- ** GoogleDevtoolsCloudbuildV1Secrets
    GoogleDevtoolsCloudbuildV1Secrets (..),
    newGoogleDevtoolsCloudbuildV1Secrets,

    -- ** GoogleDevtoolsCloudbuildV1Source
    GoogleDevtoolsCloudbuildV1Source (..),
    newGoogleDevtoolsCloudbuildV1Source,

    -- ** GoogleDevtoolsCloudbuildV1SourceProvenance
    GoogleDevtoolsCloudbuildV1SourceProvenance (..),
    newGoogleDevtoolsCloudbuildV1SourceProvenance,

    -- ** GoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes
    GoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes (..),
    newGoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes,

    -- ** GoogleDevtoolsCloudbuildV1StorageSource
    GoogleDevtoolsCloudbuildV1StorageSource (..),
    newGoogleDevtoolsCloudbuildV1StorageSource,

    -- ** GoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher
    GoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher (..),

    -- ** GoogleDevtoolsCloudbuildV1StorageSourceManifest
    GoogleDevtoolsCloudbuildV1StorageSourceManifest (..),
    newGoogleDevtoolsCloudbuildV1StorageSourceManifest,

    -- ** GoogleDevtoolsCloudbuildV1TimeSpan
    GoogleDevtoolsCloudbuildV1TimeSpan (..),
    newGoogleDevtoolsCloudbuildV1TimeSpan,

    -- ** GoogleDevtoolsCloudbuildV1UploadedMavenArtifact
    GoogleDevtoolsCloudbuildV1UploadedMavenArtifact (..),
    newGoogleDevtoolsCloudbuildV1UploadedMavenArtifact,

    -- ** GoogleDevtoolsCloudbuildV1UploadedNpmPackage
    GoogleDevtoolsCloudbuildV1UploadedNpmPackage (..),
    newGoogleDevtoolsCloudbuildV1UploadedNpmPackage,

    -- ** GoogleDevtoolsCloudbuildV1UploadedPythonPackage
    GoogleDevtoolsCloudbuildV1UploadedPythonPackage (..),
    newGoogleDevtoolsCloudbuildV1UploadedPythonPackage,

    -- ** GoogleDevtoolsCloudbuildV1Volume
    GoogleDevtoolsCloudbuildV1Volume (..),
    newGoogleDevtoolsCloudbuildV1Volume,

    -- ** GoogleDevtoolsCloudbuildV1Warning
    GoogleDevtoolsCloudbuildV1Warning (..),
    newGoogleDevtoolsCloudbuildV1Warning,

    -- ** GoogleDevtoolsCloudbuildV1Warning_Priority
    GoogleDevtoolsCloudbuildV1Warning_Priority (..),

    -- ** GoogleIamV1AuditConfig
    GoogleIamV1AuditConfig (..),
    newGoogleIamV1AuditConfig,

    -- ** GoogleIamV1AuditLogConfig
    GoogleIamV1AuditLogConfig (..),
    newGoogleIamV1AuditLogConfig,

    -- ** GoogleIamV1AuditLogConfig_LogType
    GoogleIamV1AuditLogConfig_LogType (..),

    -- ** GoogleIamV1Binding
    GoogleIamV1Binding (..),
    newGoogleIamV1Binding,

    -- ** GoogleIamV1Policy
    GoogleIamV1Policy (..),
    newGoogleIamV1Policy,

    -- ** GoogleIamV1SetIamPolicyRequest
    GoogleIamV1SetIamPolicyRequest (..),
    newGoogleIamV1SetIamPolicyRequest,

    -- ** GoogleIamV1TestIamPermissionsRequest
    GoogleIamV1TestIamPermissionsRequest (..),
    newGoogleIamV1TestIamPermissionsRequest,

    -- ** GoogleIamV1TestIamPermissionsResponse
    GoogleIamV1TestIamPermissionsResponse (..),
    newGoogleIamV1TestIamPermissionsResponse,

    -- ** GoogleLongrunningListOperationsResponse
    GoogleLongrunningListOperationsResponse (..),
    newGoogleLongrunningListOperationsResponse,

    -- ** GoogleLongrunningOperation
    GoogleLongrunningOperation (..),
    newGoogleLongrunningOperation,

    -- ** GoogleLongrunningOperation_Metadata
    GoogleLongrunningOperation_Metadata (..),
    newGoogleLongrunningOperation_Metadata,

    -- ** GoogleLongrunningOperation_Response
    GoogleLongrunningOperation_Response (..),
    newGoogleLongrunningOperation_Response,

    -- ** GoogleLongrunningWaitOperationRequest
    GoogleLongrunningWaitOperationRequest (..),
    newGoogleLongrunningWaitOperationRequest,

    -- ** GoogleProtobufEmpty
    GoogleProtobufEmpty (..),
    newGoogleProtobufEmpty,

    -- ** GoogleRpcStatus
    GoogleRpcStatus (..),
    newGoogleRpcStatus,

    -- ** GoogleRpcStatus_DetailsItem
    GoogleRpcStatus_DetailsItem (..),
    newGoogleRpcStatus_DetailsItem,

    -- ** GoogleTypeExpr
    GoogleTypeExpr (..),
    newGoogleTypeExpr,

    -- ** Proto2BridgeMessageSet
    Proto2BridgeMessageSet (..),
    newProto2BridgeMessageSet,

    -- ** UtilStatusProto
    UtilStatusProto (..),
    newUtilStatusProto,
  )
where

import Gogol.Run.Projects.Locations.Builds.Submit
import Gogol.Run.Projects.Locations.ExportImage
import Gogol.Run.Projects.Locations.ExportImageMetadata
import Gogol.Run.Projects.Locations.ExportMetadata
import Gogol.Run.Projects.Locations.ExportProjectMetadata
import Gogol.Run.Projects.Locations.Jobs.Create
import Gogol.Run.Projects.Locations.Jobs.Delete
import Gogol.Run.Projects.Locations.Jobs.Executions.Cancel
import Gogol.Run.Projects.Locations.Jobs.Executions.Delete
import Gogol.Run.Projects.Locations.Jobs.Executions.ExportStatus
import Gogol.Run.Projects.Locations.Jobs.Executions.Get
import Gogol.Run.Projects.Locations.Jobs.Executions.List
import Gogol.Run.Projects.Locations.Jobs.Executions.Tasks.Get
import Gogol.Run.Projects.Locations.Jobs.Executions.Tasks.List
import Gogol.Run.Projects.Locations.Jobs.Get
import Gogol.Run.Projects.Locations.Jobs.GetIamPolicy
import Gogol.Run.Projects.Locations.Jobs.List
import Gogol.Run.Projects.Locations.Jobs.Patch
import Gogol.Run.Projects.Locations.Jobs.Run
import Gogol.Run.Projects.Locations.Jobs.SetIamPolicy
import Gogol.Run.Projects.Locations.Jobs.TestIamPermissions
import Gogol.Run.Projects.Locations.Operations.Delete
import Gogol.Run.Projects.Locations.Operations.Get
import Gogol.Run.Projects.Locations.Operations.List
import Gogol.Run.Projects.Locations.Operations.Wait
import Gogol.Run.Projects.Locations.Services.Create
import Gogol.Run.Projects.Locations.Services.Delete
import Gogol.Run.Projects.Locations.Services.Get
import Gogol.Run.Projects.Locations.Services.GetIamPolicy
import Gogol.Run.Projects.Locations.Services.List
import Gogol.Run.Projects.Locations.Services.Patch
import Gogol.Run.Projects.Locations.Services.Revisions.Delete
import Gogol.Run.Projects.Locations.Services.Revisions.ExportStatus
import Gogol.Run.Projects.Locations.Services.Revisions.Get
import Gogol.Run.Projects.Locations.Services.Revisions.List
import Gogol.Run.Projects.Locations.Services.SetIamPolicy
import Gogol.Run.Projects.Locations.Services.TestIamPermissions
import Gogol.Run.Types
