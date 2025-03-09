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
-- Module      : Gogol.Run.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Run.Types
  ( -- * Configuration
    runService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** GoogleCloudRunV2BinaryAuthorization
    GoogleCloudRunV2BinaryAuthorization (..),
    newGoogleCloudRunV2BinaryAuthorization,

    -- ** GoogleCloudRunV2BuildConfig
    GoogleCloudRunV2BuildConfig (..),
    newGoogleCloudRunV2BuildConfig,

    -- ** GoogleCloudRunV2BuildConfig_EnvironmentVariables
    GoogleCloudRunV2BuildConfig_EnvironmentVariables (..),
    newGoogleCloudRunV2BuildConfig_EnvironmentVariables,

    -- ** GoogleCloudRunV2BuildInfo
    GoogleCloudRunV2BuildInfo (..),
    newGoogleCloudRunV2BuildInfo,

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

    -- ** GoogleCloudRunV2InstanceSplit
    GoogleCloudRunV2InstanceSplit (..),
    newGoogleCloudRunV2InstanceSplit,

    -- ** GoogleCloudRunV2InstanceSplit_Type
    GoogleCloudRunV2InstanceSplit_Type (..),

    -- ** GoogleCloudRunV2InstanceSplitStatus
    GoogleCloudRunV2InstanceSplitStatus (..),
    newGoogleCloudRunV2InstanceSplitStatus,

    -- ** GoogleCloudRunV2InstanceSplitStatus_Type
    GoogleCloudRunV2InstanceSplitStatus_Type (..),

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

    -- ** GoogleCloudRunV2ListWorkerPoolsResponse
    GoogleCloudRunV2ListWorkerPoolsResponse (..),
    newGoogleCloudRunV2ListWorkerPoolsResponse,

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

    -- ** GoogleCloudRunV2WorkerPool
    GoogleCloudRunV2WorkerPool (..),
    newGoogleCloudRunV2WorkerPool,

    -- ** GoogleCloudRunV2WorkerPool_Annotations
    GoogleCloudRunV2WorkerPool_Annotations (..),
    newGoogleCloudRunV2WorkerPool_Annotations,

    -- ** GoogleCloudRunV2WorkerPool_Labels
    GoogleCloudRunV2WorkerPool_Labels (..),
    newGoogleCloudRunV2WorkerPool_Labels,

    -- ** GoogleCloudRunV2WorkerPool_LaunchStage
    GoogleCloudRunV2WorkerPool_LaunchStage (..),

    -- ** GoogleCloudRunV2WorkerPoolRevisionTemplate
    GoogleCloudRunV2WorkerPoolRevisionTemplate (..),
    newGoogleCloudRunV2WorkerPoolRevisionTemplate,

    -- ** GoogleCloudRunV2WorkerPoolRevisionTemplate_Annotations
    GoogleCloudRunV2WorkerPoolRevisionTemplate_Annotations (..),
    newGoogleCloudRunV2WorkerPoolRevisionTemplate_Annotations,

    -- ** GoogleCloudRunV2WorkerPoolRevisionTemplate_EncryptionKeyRevocationAction
    GoogleCloudRunV2WorkerPoolRevisionTemplate_EncryptionKeyRevocationAction (..),

    -- ** GoogleCloudRunV2WorkerPoolRevisionTemplate_Labels
    GoogleCloudRunV2WorkerPoolRevisionTemplate_Labels (..),
    newGoogleCloudRunV2WorkerPoolRevisionTemplate_Labels,

    -- ** GoogleCloudRunV2WorkerPoolScaling
    GoogleCloudRunV2WorkerPoolScaling (..),
    newGoogleCloudRunV2WorkerPoolScaling,

    -- ** GoogleCloudRunV2WorkerPoolScaling_ScalingMode
    GoogleCloudRunV2WorkerPoolScaling_ScalingMode (..),

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

    -- ** GoogleDevtoolsCloudbuildV1Dependency
    GoogleDevtoolsCloudbuildV1Dependency (..),
    newGoogleDevtoolsCloudbuildV1Dependency,

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

    -- ** GoogleDevtoolsCloudbuildV1GitSourceDependency
    GoogleDevtoolsCloudbuildV1GitSourceDependency (..),
    newGoogleDevtoolsCloudbuildV1GitSourceDependency,

    -- ** GoogleDevtoolsCloudbuildV1GitSourceRepository
    GoogleDevtoolsCloudbuildV1GitSourceRepository (..),
    newGoogleDevtoolsCloudbuildV1GitSourceRepository,

    -- ** GoogleDevtoolsCloudbuildV1GoModule
    GoogleDevtoolsCloudbuildV1GoModule (..),
    newGoogleDevtoolsCloudbuildV1GoModule,

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

    -- ** GoogleDevtoolsCloudbuildV1UploadedGoModule
    GoogleDevtoolsCloudbuildV1UploadedGoModule (..),
    newGoogleDevtoolsCloudbuildV1UploadedGoModule,

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

import Gogol.Prelude qualified as Core
import Gogol.Run.Internal.Product
import Gogol.Run.Internal.Sum

-- | Default request referring to version @v2@ of the Cloud Run Admin API. This contains the host and root path used as a starting point for constructing service requests.
runService :: Core.ServiceConfig
runService =
  Core.defaultService
    (Core.ServiceId "run:v2")
    "run.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl =
  "https://www.googleapis.com/auth/cloud-platform"
