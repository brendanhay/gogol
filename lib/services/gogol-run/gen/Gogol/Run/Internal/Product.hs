{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Run.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.Run.Internal.Product
  (

    -- * GoogleCloudRunV2BinaryAuthorization
    GoogleCloudRunV2BinaryAuthorization (..),
    newGoogleCloudRunV2BinaryAuthorization,

    -- * GoogleCloudRunV2BuildpacksBuild
    GoogleCloudRunV2BuildpacksBuild (..),
    newGoogleCloudRunV2BuildpacksBuild,

    -- * GoogleCloudRunV2BuildpacksBuild_EnvironmentVariables
    GoogleCloudRunV2BuildpacksBuild_EnvironmentVariables (..),
    newGoogleCloudRunV2BuildpacksBuild_EnvironmentVariables,

    -- * GoogleCloudRunV2CancelExecutionRequest
    GoogleCloudRunV2CancelExecutionRequest (..),
    newGoogleCloudRunV2CancelExecutionRequest,

    -- * GoogleCloudRunV2CloudSqlInstance
    GoogleCloudRunV2CloudSqlInstance (..),
    newGoogleCloudRunV2CloudSqlInstance,

    -- * GoogleCloudRunV2Condition
    GoogleCloudRunV2Condition (..),
    newGoogleCloudRunV2Condition,

    -- * GoogleCloudRunV2Container
    GoogleCloudRunV2Container (..),
    newGoogleCloudRunV2Container,

    -- * GoogleCloudRunV2ContainerOverride
    GoogleCloudRunV2ContainerOverride (..),
    newGoogleCloudRunV2ContainerOverride,

    -- * GoogleCloudRunV2ContainerPort
    GoogleCloudRunV2ContainerPort (..),
    newGoogleCloudRunV2ContainerPort,

    -- * GoogleCloudRunV2DockerBuild
    GoogleCloudRunV2DockerBuild (..),
    newGoogleCloudRunV2DockerBuild,

    -- * GoogleCloudRunV2EmptyDirVolumeSource
    GoogleCloudRunV2EmptyDirVolumeSource (..),
    newGoogleCloudRunV2EmptyDirVolumeSource,

    -- * GoogleCloudRunV2EnvVar
    GoogleCloudRunV2EnvVar (..),
    newGoogleCloudRunV2EnvVar,

    -- * GoogleCloudRunV2EnvVarSource
    GoogleCloudRunV2EnvVarSource (..),
    newGoogleCloudRunV2EnvVarSource,

    -- * GoogleCloudRunV2Execution
    GoogleCloudRunV2Execution (..),
    newGoogleCloudRunV2Execution,

    -- * GoogleCloudRunV2Execution_Annotations
    GoogleCloudRunV2Execution_Annotations (..),
    newGoogleCloudRunV2Execution_Annotations,

    -- * GoogleCloudRunV2Execution_Labels
    GoogleCloudRunV2Execution_Labels (..),
    newGoogleCloudRunV2Execution_Labels,

    -- * GoogleCloudRunV2ExecutionReference
    GoogleCloudRunV2ExecutionReference (..),
    newGoogleCloudRunV2ExecutionReference,

    -- * GoogleCloudRunV2ExecutionTemplate
    GoogleCloudRunV2ExecutionTemplate (..),
    newGoogleCloudRunV2ExecutionTemplate,

    -- * GoogleCloudRunV2ExecutionTemplate_Annotations
    GoogleCloudRunV2ExecutionTemplate_Annotations (..),
    newGoogleCloudRunV2ExecutionTemplate_Annotations,

    -- * GoogleCloudRunV2ExecutionTemplate_Labels
    GoogleCloudRunV2ExecutionTemplate_Labels (..),
    newGoogleCloudRunV2ExecutionTemplate_Labels,

    -- * GoogleCloudRunV2ExportImageRequest
    GoogleCloudRunV2ExportImageRequest (..),
    newGoogleCloudRunV2ExportImageRequest,

    -- * GoogleCloudRunV2ExportImageResponse
    GoogleCloudRunV2ExportImageResponse (..),
    newGoogleCloudRunV2ExportImageResponse,

    -- * GoogleCloudRunV2ExportStatusResponse
    GoogleCloudRunV2ExportStatusResponse (..),
    newGoogleCloudRunV2ExportStatusResponse,

    -- * GoogleCloudRunV2GCSVolumeSource
    GoogleCloudRunV2GCSVolumeSource (..),
    newGoogleCloudRunV2GCSVolumeSource,

    -- * GoogleCloudRunV2GRPCAction
    GoogleCloudRunV2GRPCAction (..),
    newGoogleCloudRunV2GRPCAction,

    -- * GoogleCloudRunV2HTTPGetAction
    GoogleCloudRunV2HTTPGetAction (..),
    newGoogleCloudRunV2HTTPGetAction,

    -- * GoogleCloudRunV2HTTPHeader
    GoogleCloudRunV2HTTPHeader (..),
    newGoogleCloudRunV2HTTPHeader,

    -- * GoogleCloudRunV2ImageExportStatus
    GoogleCloudRunV2ImageExportStatus (..),
    newGoogleCloudRunV2ImageExportStatus,

    -- * GoogleCloudRunV2Job
    GoogleCloudRunV2Job (..),
    newGoogleCloudRunV2Job,

    -- * GoogleCloudRunV2Job_Annotations
    GoogleCloudRunV2Job_Annotations (..),
    newGoogleCloudRunV2Job_Annotations,

    -- * GoogleCloudRunV2Job_Labels
    GoogleCloudRunV2Job_Labels (..),
    newGoogleCloudRunV2Job_Labels,

    -- * GoogleCloudRunV2ListExecutionsResponse
    GoogleCloudRunV2ListExecutionsResponse (..),
    newGoogleCloudRunV2ListExecutionsResponse,

    -- * GoogleCloudRunV2ListJobsResponse
    GoogleCloudRunV2ListJobsResponse (..),
    newGoogleCloudRunV2ListJobsResponse,

    -- * GoogleCloudRunV2ListRevisionsResponse
    GoogleCloudRunV2ListRevisionsResponse (..),
    newGoogleCloudRunV2ListRevisionsResponse,

    -- * GoogleCloudRunV2ListServicesResponse
    GoogleCloudRunV2ListServicesResponse (..),
    newGoogleCloudRunV2ListServicesResponse,

    -- * GoogleCloudRunV2ListTasksResponse
    GoogleCloudRunV2ListTasksResponse (..),
    newGoogleCloudRunV2ListTasksResponse,

    -- * GoogleCloudRunV2Metadata
    GoogleCloudRunV2Metadata (..),
    newGoogleCloudRunV2Metadata,

    -- * GoogleCloudRunV2NFSVolumeSource
    GoogleCloudRunV2NFSVolumeSource (..),
    newGoogleCloudRunV2NFSVolumeSource,

    -- * GoogleCloudRunV2NetworkInterface
    GoogleCloudRunV2NetworkInterface (..),
    newGoogleCloudRunV2NetworkInterface,

    -- * GoogleCloudRunV2NodeSelector
    GoogleCloudRunV2NodeSelector (..),
    newGoogleCloudRunV2NodeSelector,

    -- * GoogleCloudRunV2Overrides
    GoogleCloudRunV2Overrides (..),
    newGoogleCloudRunV2Overrides,

    -- * GoogleCloudRunV2Probe
    GoogleCloudRunV2Probe (..),
    newGoogleCloudRunV2Probe,

    -- * GoogleCloudRunV2ResourceRequirements
    GoogleCloudRunV2ResourceRequirements (..),
    newGoogleCloudRunV2ResourceRequirements,

    -- * GoogleCloudRunV2ResourceRequirements_Limits
    GoogleCloudRunV2ResourceRequirements_Limits (..),
    newGoogleCloudRunV2ResourceRequirements_Limits,

    -- * GoogleCloudRunV2Revision
    GoogleCloudRunV2Revision (..),
    newGoogleCloudRunV2Revision,

    -- * GoogleCloudRunV2Revision_Annotations
    GoogleCloudRunV2Revision_Annotations (..),
    newGoogleCloudRunV2Revision_Annotations,

    -- * GoogleCloudRunV2Revision_Labels
    GoogleCloudRunV2Revision_Labels (..),
    newGoogleCloudRunV2Revision_Labels,

    -- * GoogleCloudRunV2RevisionScaling
    GoogleCloudRunV2RevisionScaling (..),
    newGoogleCloudRunV2RevisionScaling,

    -- * GoogleCloudRunV2RevisionScalingStatus
    GoogleCloudRunV2RevisionScalingStatus (..),
    newGoogleCloudRunV2RevisionScalingStatus,

    -- * GoogleCloudRunV2RevisionTemplate
    GoogleCloudRunV2RevisionTemplate (..),
    newGoogleCloudRunV2RevisionTemplate,

    -- * GoogleCloudRunV2RevisionTemplate_Annotations
    GoogleCloudRunV2RevisionTemplate_Annotations (..),
    newGoogleCloudRunV2RevisionTemplate_Annotations,

    -- * GoogleCloudRunV2RevisionTemplate_Labels
    GoogleCloudRunV2RevisionTemplate_Labels (..),
    newGoogleCloudRunV2RevisionTemplate_Labels,

    -- * GoogleCloudRunV2RunJobRequest
    GoogleCloudRunV2RunJobRequest (..),
    newGoogleCloudRunV2RunJobRequest,

    -- * GoogleCloudRunV2SecretKeySelector
    GoogleCloudRunV2SecretKeySelector (..),
    newGoogleCloudRunV2SecretKeySelector,

    -- * GoogleCloudRunV2SecretVolumeSource
    GoogleCloudRunV2SecretVolumeSource (..),
    newGoogleCloudRunV2SecretVolumeSource,

    -- * GoogleCloudRunV2Service
    GoogleCloudRunV2Service (..),
    newGoogleCloudRunV2Service,

    -- * GoogleCloudRunV2Service_Annotations
    GoogleCloudRunV2Service_Annotations (..),
    newGoogleCloudRunV2Service_Annotations,

    -- * GoogleCloudRunV2Service_Labels
    GoogleCloudRunV2Service_Labels (..),
    newGoogleCloudRunV2Service_Labels,

    -- * GoogleCloudRunV2ServiceMesh
    GoogleCloudRunV2ServiceMesh (..),
    newGoogleCloudRunV2ServiceMesh,

    -- * GoogleCloudRunV2ServiceScaling
    GoogleCloudRunV2ServiceScaling (..),
    newGoogleCloudRunV2ServiceScaling,

    -- * GoogleCloudRunV2StorageSource
    GoogleCloudRunV2StorageSource (..),
    newGoogleCloudRunV2StorageSource,

    -- * GoogleCloudRunV2SubmitBuildRequest
    GoogleCloudRunV2SubmitBuildRequest (..),
    newGoogleCloudRunV2SubmitBuildRequest,

    -- * GoogleCloudRunV2SubmitBuildResponse
    GoogleCloudRunV2SubmitBuildResponse (..),
    newGoogleCloudRunV2SubmitBuildResponse,

    -- * GoogleCloudRunV2TCPSocketAction
    GoogleCloudRunV2TCPSocketAction (..),
    newGoogleCloudRunV2TCPSocketAction,

    -- * GoogleCloudRunV2Task
    GoogleCloudRunV2Task (..),
    newGoogleCloudRunV2Task,

    -- * GoogleCloudRunV2Task_Annotations
    GoogleCloudRunV2Task_Annotations (..),
    newGoogleCloudRunV2Task_Annotations,

    -- * GoogleCloudRunV2Task_Labels
    GoogleCloudRunV2Task_Labels (..),
    newGoogleCloudRunV2Task_Labels,

    -- * GoogleCloudRunV2TaskAttemptResult
    GoogleCloudRunV2TaskAttemptResult (..),
    newGoogleCloudRunV2TaskAttemptResult,

    -- * GoogleCloudRunV2TaskTemplate
    GoogleCloudRunV2TaskTemplate (..),
    newGoogleCloudRunV2TaskTemplate,

    -- * GoogleCloudRunV2TrafficTarget
    GoogleCloudRunV2TrafficTarget (..),
    newGoogleCloudRunV2TrafficTarget,

    -- * GoogleCloudRunV2TrafficTargetStatus
    GoogleCloudRunV2TrafficTargetStatus (..),
    newGoogleCloudRunV2TrafficTargetStatus,

    -- * GoogleCloudRunV2VersionToPath
    GoogleCloudRunV2VersionToPath (..),
    newGoogleCloudRunV2VersionToPath,

    -- * GoogleCloudRunV2Volume
    GoogleCloudRunV2Volume (..),
    newGoogleCloudRunV2Volume,

    -- * GoogleCloudRunV2VolumeMount
    GoogleCloudRunV2VolumeMount (..),
    newGoogleCloudRunV2VolumeMount,

    -- * GoogleCloudRunV2VpcAccess
    GoogleCloudRunV2VpcAccess (..),
    newGoogleCloudRunV2VpcAccess,

    -- * GoogleDevtoolsCloudbuildV1ApprovalConfig
    GoogleDevtoolsCloudbuildV1ApprovalConfig (..),
    newGoogleDevtoolsCloudbuildV1ApprovalConfig,

    -- * GoogleDevtoolsCloudbuildV1ApprovalResult
    GoogleDevtoolsCloudbuildV1ApprovalResult (..),
    newGoogleDevtoolsCloudbuildV1ApprovalResult,

    -- * GoogleDevtoolsCloudbuildV1ArtifactObjects
    GoogleDevtoolsCloudbuildV1ArtifactObjects (..),
    newGoogleDevtoolsCloudbuildV1ArtifactObjects,

    -- * GoogleDevtoolsCloudbuildV1Artifacts
    GoogleDevtoolsCloudbuildV1Artifacts (..),
    newGoogleDevtoolsCloudbuildV1Artifacts,

    -- * GoogleDevtoolsCloudbuildV1Build
    GoogleDevtoolsCloudbuildV1Build (..),
    newGoogleDevtoolsCloudbuildV1Build,

    -- * GoogleDevtoolsCloudbuildV1Build_Substitutions
    GoogleDevtoolsCloudbuildV1Build_Substitutions (..),
    newGoogleDevtoolsCloudbuildV1Build_Substitutions,

    -- * GoogleDevtoolsCloudbuildV1Build_Timing
    GoogleDevtoolsCloudbuildV1Build_Timing (..),
    newGoogleDevtoolsCloudbuildV1Build_Timing,

    -- * GoogleDevtoolsCloudbuildV1BuildApproval
    GoogleDevtoolsCloudbuildV1BuildApproval (..),
    newGoogleDevtoolsCloudbuildV1BuildApproval,

    -- * GoogleDevtoolsCloudbuildV1BuildOperationMetadata
    GoogleDevtoolsCloudbuildV1BuildOperationMetadata (..),
    newGoogleDevtoolsCloudbuildV1BuildOperationMetadata,

    -- * GoogleDevtoolsCloudbuildV1BuildOptions
    GoogleDevtoolsCloudbuildV1BuildOptions (..),
    newGoogleDevtoolsCloudbuildV1BuildOptions,

    -- * GoogleDevtoolsCloudbuildV1BuildStep
    GoogleDevtoolsCloudbuildV1BuildStep (..),
    newGoogleDevtoolsCloudbuildV1BuildStep,

    -- * GoogleDevtoolsCloudbuildV1BuiltImage
    GoogleDevtoolsCloudbuildV1BuiltImage (..),
    newGoogleDevtoolsCloudbuildV1BuiltImage,

    -- * GoogleDevtoolsCloudbuildV1ConnectedRepository
    GoogleDevtoolsCloudbuildV1ConnectedRepository (..),
    newGoogleDevtoolsCloudbuildV1ConnectedRepository,

    -- * GoogleDevtoolsCloudbuildV1DeveloperConnectConfig
    GoogleDevtoolsCloudbuildV1DeveloperConnectConfig (..),
    newGoogleDevtoolsCloudbuildV1DeveloperConnectConfig,

    -- * GoogleDevtoolsCloudbuildV1FailureInfo
    GoogleDevtoolsCloudbuildV1FailureInfo (..),
    newGoogleDevtoolsCloudbuildV1FailureInfo,

    -- * GoogleDevtoolsCloudbuildV1FileHashes
    GoogleDevtoolsCloudbuildV1FileHashes (..),
    newGoogleDevtoolsCloudbuildV1FileHashes,

    -- * GoogleDevtoolsCloudbuildV1GitConfig
    GoogleDevtoolsCloudbuildV1GitConfig (..),
    newGoogleDevtoolsCloudbuildV1GitConfig,

    -- * GoogleDevtoolsCloudbuildV1GitSource
    GoogleDevtoolsCloudbuildV1GitSource (..),
    newGoogleDevtoolsCloudbuildV1GitSource,

    -- * GoogleDevtoolsCloudbuildV1Hash
    GoogleDevtoolsCloudbuildV1Hash (..),
    newGoogleDevtoolsCloudbuildV1Hash,

    -- * GoogleDevtoolsCloudbuildV1HttpConfig
    GoogleDevtoolsCloudbuildV1HttpConfig (..),
    newGoogleDevtoolsCloudbuildV1HttpConfig,

    -- * GoogleDevtoolsCloudbuildV1InlineSecret
    GoogleDevtoolsCloudbuildV1InlineSecret (..),
    newGoogleDevtoolsCloudbuildV1InlineSecret,

    -- * GoogleDevtoolsCloudbuildV1InlineSecret_EnvMap
    GoogleDevtoolsCloudbuildV1InlineSecret_EnvMap (..),
    newGoogleDevtoolsCloudbuildV1InlineSecret_EnvMap,

    -- * GoogleDevtoolsCloudbuildV1MavenArtifact
    GoogleDevtoolsCloudbuildV1MavenArtifact (..),
    newGoogleDevtoolsCloudbuildV1MavenArtifact,

    -- * GoogleDevtoolsCloudbuildV1NpmPackage
    GoogleDevtoolsCloudbuildV1NpmPackage (..),
    newGoogleDevtoolsCloudbuildV1NpmPackage,

    -- * GoogleDevtoolsCloudbuildV1PoolOption
    GoogleDevtoolsCloudbuildV1PoolOption (..),
    newGoogleDevtoolsCloudbuildV1PoolOption,

    -- * GoogleDevtoolsCloudbuildV1PythonPackage
    GoogleDevtoolsCloudbuildV1PythonPackage (..),
    newGoogleDevtoolsCloudbuildV1PythonPackage,

    -- * GoogleDevtoolsCloudbuildV1RepoSource
    GoogleDevtoolsCloudbuildV1RepoSource (..),
    newGoogleDevtoolsCloudbuildV1RepoSource,

    -- * GoogleDevtoolsCloudbuildV1RepoSource_Substitutions
    GoogleDevtoolsCloudbuildV1RepoSource_Substitutions (..),
    newGoogleDevtoolsCloudbuildV1RepoSource_Substitutions,

    -- * GoogleDevtoolsCloudbuildV1Results
    GoogleDevtoolsCloudbuildV1Results (..),
    newGoogleDevtoolsCloudbuildV1Results,

    -- * GoogleDevtoolsCloudbuildV1Secret
    GoogleDevtoolsCloudbuildV1Secret (..),
    newGoogleDevtoolsCloudbuildV1Secret,

    -- * GoogleDevtoolsCloudbuildV1Secret_SecretEnv
    GoogleDevtoolsCloudbuildV1Secret_SecretEnv (..),
    newGoogleDevtoolsCloudbuildV1Secret_SecretEnv,

    -- * GoogleDevtoolsCloudbuildV1SecretManagerSecret
    GoogleDevtoolsCloudbuildV1SecretManagerSecret (..),
    newGoogleDevtoolsCloudbuildV1SecretManagerSecret,

    -- * GoogleDevtoolsCloudbuildV1Secrets
    GoogleDevtoolsCloudbuildV1Secrets (..),
    newGoogleDevtoolsCloudbuildV1Secrets,

    -- * GoogleDevtoolsCloudbuildV1Source
    GoogleDevtoolsCloudbuildV1Source (..),
    newGoogleDevtoolsCloudbuildV1Source,

    -- * GoogleDevtoolsCloudbuildV1SourceProvenance
    GoogleDevtoolsCloudbuildV1SourceProvenance (..),
    newGoogleDevtoolsCloudbuildV1SourceProvenance,

    -- * GoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes
    GoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes (..),
    newGoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes,

    -- * GoogleDevtoolsCloudbuildV1StorageSource
    GoogleDevtoolsCloudbuildV1StorageSource (..),
    newGoogleDevtoolsCloudbuildV1StorageSource,

    -- * GoogleDevtoolsCloudbuildV1StorageSourceManifest
    GoogleDevtoolsCloudbuildV1StorageSourceManifest (..),
    newGoogleDevtoolsCloudbuildV1StorageSourceManifest,

    -- * GoogleDevtoolsCloudbuildV1TimeSpan
    GoogleDevtoolsCloudbuildV1TimeSpan (..),
    newGoogleDevtoolsCloudbuildV1TimeSpan,

    -- * GoogleDevtoolsCloudbuildV1UploadedMavenArtifact
    GoogleDevtoolsCloudbuildV1UploadedMavenArtifact (..),
    newGoogleDevtoolsCloudbuildV1UploadedMavenArtifact,

    -- * GoogleDevtoolsCloudbuildV1UploadedNpmPackage
    GoogleDevtoolsCloudbuildV1UploadedNpmPackage (..),
    newGoogleDevtoolsCloudbuildV1UploadedNpmPackage,

    -- * GoogleDevtoolsCloudbuildV1UploadedPythonPackage
    GoogleDevtoolsCloudbuildV1UploadedPythonPackage (..),
    newGoogleDevtoolsCloudbuildV1UploadedPythonPackage,

    -- * GoogleDevtoolsCloudbuildV1Volume
    GoogleDevtoolsCloudbuildV1Volume (..),
    newGoogleDevtoolsCloudbuildV1Volume,

    -- * GoogleDevtoolsCloudbuildV1Warning
    GoogleDevtoolsCloudbuildV1Warning (..),
    newGoogleDevtoolsCloudbuildV1Warning,

    -- * GoogleIamV1AuditConfig
    GoogleIamV1AuditConfig (..),
    newGoogleIamV1AuditConfig,

    -- * GoogleIamV1AuditLogConfig
    GoogleIamV1AuditLogConfig (..),
    newGoogleIamV1AuditLogConfig,

    -- * GoogleIamV1Binding
    GoogleIamV1Binding (..),
    newGoogleIamV1Binding,

    -- * GoogleIamV1Policy
    GoogleIamV1Policy (..),
    newGoogleIamV1Policy,

    -- * GoogleIamV1SetIamPolicyRequest
    GoogleIamV1SetIamPolicyRequest (..),
    newGoogleIamV1SetIamPolicyRequest,

    -- * GoogleIamV1TestIamPermissionsRequest
    GoogleIamV1TestIamPermissionsRequest (..),
    newGoogleIamV1TestIamPermissionsRequest,

    -- * GoogleIamV1TestIamPermissionsResponse
    GoogleIamV1TestIamPermissionsResponse (..),
    newGoogleIamV1TestIamPermissionsResponse,

    -- * GoogleLongrunningListOperationsResponse
    GoogleLongrunningListOperationsResponse (..),
    newGoogleLongrunningListOperationsResponse,

    -- * GoogleLongrunningOperation
    GoogleLongrunningOperation (..),
    newGoogleLongrunningOperation,

    -- * GoogleLongrunningOperation_Metadata
    GoogleLongrunningOperation_Metadata (..),
    newGoogleLongrunningOperation_Metadata,

    -- * GoogleLongrunningOperation_Response
    GoogleLongrunningOperation_Response (..),
    newGoogleLongrunningOperation_Response,

    -- * GoogleLongrunningWaitOperationRequest
    GoogleLongrunningWaitOperationRequest (..),
    newGoogleLongrunningWaitOperationRequest,

    -- * GoogleProtobufEmpty
    GoogleProtobufEmpty (..),
    newGoogleProtobufEmpty,

    -- * GoogleRpcStatus
    GoogleRpcStatus (..),
    newGoogleRpcStatus,

    -- * GoogleRpcStatus_DetailsItem
    GoogleRpcStatus_DetailsItem (..),
    newGoogleRpcStatus_DetailsItem,

    -- * GoogleTypeExpr
    GoogleTypeExpr (..),
    newGoogleTypeExpr,

    -- * Proto2BridgeMessageSet
    Proto2BridgeMessageSet (..),
    newProto2BridgeMessageSet,

    -- * UtilStatusProto
    UtilStatusProto (..),
    newUtilStatusProto,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.Run.Internal.Sum

-- | Settings for Binary Authorization feature.
--
-- /See:/ 'newGoogleCloudRunV2BinaryAuthorization' smart constructor.
data GoogleCloudRunV2BinaryAuthorization = GoogleCloudRunV2BinaryAuthorization
    {
      -- | Optional. If present, indicates to use Breakglass using this justification. If use_default is False, then it must be empty. For more information on breakglass, see https:\/\/cloud.google.com\/binary-authorization\/docs\/using-breakglass
      breakglassJustification :: (Core.Maybe Core.Text)
      -- | Optional. The path to a binary authorization policy. Format: @projects\/{project}\/platforms\/cloudRun\/{policy-name}@
    , policy :: (Core.Maybe Core.Text)
      -- | Optional. If True, indicates to use the default project\'s binary authorization policy. If False, binary authorization will be disabled.
    , useDefault :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2BinaryAuthorization' with the minimum fields required to make a request.
newGoogleCloudRunV2BinaryAuthorization 
    ::  GoogleCloudRunV2BinaryAuthorization
newGoogleCloudRunV2BinaryAuthorization =
  GoogleCloudRunV2BinaryAuthorization
    { breakglassJustification = Core.Nothing
    , policy = Core.Nothing
    , useDefault = Core.Nothing
    }

instance Core.FromJSON
           GoogleCloudRunV2BinaryAuthorization
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2BinaryAuthorization"
              (\ o ->
                 GoogleCloudRunV2BinaryAuthorization Core.<$>
                   (o Core..:? "breakglassJustification") Core.<*>
                     (o Core..:? "policy")
                     Core.<*> (o Core..:? "useDefault"))

instance Core.ToJSON
           GoogleCloudRunV2BinaryAuthorization
         where
        toJSON GoogleCloudRunV2BinaryAuthorization{..}
          = Core.object
              (Core.catMaybes
                 [("breakglassJustification" Core..=) Core.<$>
                    breakglassJustification,
                  ("policy" Core..=) Core.<$> policy,
                  ("useDefault" Core..=) Core.<$> useDefault])


-- | Build the source using Buildpacks.
--
-- /See:/ 'newGoogleCloudRunV2BuildpacksBuild' smart constructor.
data GoogleCloudRunV2BuildpacksBuild = GoogleCloudRunV2BuildpacksBuild
    {
      -- | Optional. The base image used to opt into automatic base image updates.
      baseImage :: (Core.Maybe Core.Text)
      -- | Optional. cache/image/uri is the GCR\/AR URL where the cache image will be stored. cache/image/uri is optional and omitting it will disable caching. This URL must be stable across builds. It is used to derive a build-specific temporary URL by substituting the tag with the build ID. The build will clean up the temporary image on a best-effort basis.
    , cacheImageUri :: (Core.Maybe Core.Text)
      -- | Optional. Whether or not the application container will be enrolled in automatic base image updates. When true, the application will be built on a scratch base image, so the base layers can be appended at run time.
    , enableAutomaticUpdates :: (Core.Maybe Core.Bool)
      -- | Optional. User-provided build-time environment variables.
    , environmentVariables :: (Core.Maybe GoogleCloudRunV2BuildpacksBuild_EnvironmentVariables)
      -- | Optional. Name of the function target if the source is a function source. Required for function builds.
    , functionTarget :: (Core.Maybe Core.Text)
      -- | Optional. project_descriptor stores the path to the project descriptor file. When empty, it means that there is no project descriptor file in the source.
    , projectDescriptor :: (Core.Maybe Core.Text)
      -- | The runtime name, e.g. \'go113\'. Leave blank for generic builds.
    , runtime :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2BuildpacksBuild' with the minimum fields required to make a request.
newGoogleCloudRunV2BuildpacksBuild 
    ::  GoogleCloudRunV2BuildpacksBuild
newGoogleCloudRunV2BuildpacksBuild =
  GoogleCloudRunV2BuildpacksBuild
    { baseImage = Core.Nothing
    , cacheImageUri = Core.Nothing
    , enableAutomaticUpdates = Core.Nothing
    , environmentVariables = Core.Nothing
    , functionTarget = Core.Nothing
    , projectDescriptor = Core.Nothing
    , runtime = Core.Nothing
    }

instance Core.FromJSON
           GoogleCloudRunV2BuildpacksBuild
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2BuildpacksBuild"
              (\ o ->
                 GoogleCloudRunV2BuildpacksBuild Core.<$>
                   (o Core..:? "baseImage") Core.<*>
                     (o Core..:? "cacheImageUri")
                     Core.<*> (o Core..:? "enableAutomaticUpdates")
                     Core.<*> (o Core..:? "environmentVariables")
                     Core.<*> (o Core..:? "functionTarget")
                     Core.<*> (o Core..:? "projectDescriptor")
                     Core.<*> (o Core..:? "runtime"))

instance Core.ToJSON GoogleCloudRunV2BuildpacksBuild
         where
        toJSON GoogleCloudRunV2BuildpacksBuild{..}
          = Core.object
              (Core.catMaybes
                 [("baseImage" Core..=) Core.<$> baseImage,
                  ("cacheImageUri" Core..=) Core.<$> cacheImageUri,
                  ("enableAutomaticUpdates" Core..=) Core.<$>
                    enableAutomaticUpdates,
                  ("environmentVariables" Core..=) Core.<$>
                    environmentVariables,
                  ("functionTarget" Core..=) Core.<$> functionTarget,
                  ("projectDescriptor" Core..=) Core.<$>
                    projectDescriptor,
                  ("runtime" Core..=) Core.<$> runtime])


-- | Optional. User-provided build-time environment variables.
--
-- /See:/ 'newGoogleCloudRunV2BuildpacksBuild_EnvironmentVariables' smart constructor.
newtype GoogleCloudRunV2BuildpacksBuild_EnvironmentVariables = GoogleCloudRunV2BuildpacksBuild_EnvironmentVariables
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2BuildpacksBuild_EnvironmentVariables' with the minimum fields required to make a request.
newGoogleCloudRunV2BuildpacksBuild_EnvironmentVariables 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> GoogleCloudRunV2BuildpacksBuild_EnvironmentVariables
newGoogleCloudRunV2BuildpacksBuild_EnvironmentVariables additional =
  GoogleCloudRunV2BuildpacksBuild_EnvironmentVariables {additional = additional}

instance Core.FromJSON
           GoogleCloudRunV2BuildpacksBuild_EnvironmentVariables
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2BuildpacksBuild_EnvironmentVariables"
              (\ o ->
                 GoogleCloudRunV2BuildpacksBuild_EnvironmentVariables
                   Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON
           GoogleCloudRunV2BuildpacksBuild_EnvironmentVariables
         where
        toJSON
          GoogleCloudRunV2BuildpacksBuild_EnvironmentVariables{..}
          = Core.toJSON additional


-- | Request message for deleting an Execution.
--
-- /See:/ 'newGoogleCloudRunV2CancelExecutionRequest' smart constructor.
data GoogleCloudRunV2CancelExecutionRequest = GoogleCloudRunV2CancelExecutionRequest
    {
      -- | A system-generated fingerprint for this version of the resource. This may be used to detect modification conflict during updates.
      etag :: (Core.Maybe Core.Text)
      -- | Indicates that the request should be validated without actually cancelling any resources.
    , validateOnly :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2CancelExecutionRequest' with the minimum fields required to make a request.
newGoogleCloudRunV2CancelExecutionRequest 
    ::  GoogleCloudRunV2CancelExecutionRequest
newGoogleCloudRunV2CancelExecutionRequest =
  GoogleCloudRunV2CancelExecutionRequest
    {etag = Core.Nothing, validateOnly = Core.Nothing}

instance Core.FromJSON
           GoogleCloudRunV2CancelExecutionRequest
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2CancelExecutionRequest"
              (\ o ->
                 GoogleCloudRunV2CancelExecutionRequest Core.<$>
                   (o Core..:? "etag") Core.<*>
                     (o Core..:? "validateOnly"))

instance Core.ToJSON
           GoogleCloudRunV2CancelExecutionRequest
         where
        toJSON GoogleCloudRunV2CancelExecutionRequest{..}
          = Core.object
              (Core.catMaybes
                 [("etag" Core..=) Core.<$> etag,
                  ("validateOnly" Core..=) Core.<$> validateOnly])


-- | Represents a set of Cloud SQL instances. Each one will be available under \/cloudsql\/[instance]. Visit https:\/\/cloud.google.com\/sql\/docs\/mysql\/connect-run for more information on how to connect Cloud SQL and Cloud Run.
--
-- /See:/ 'newGoogleCloudRunV2CloudSqlInstance' smart constructor.
newtype GoogleCloudRunV2CloudSqlInstance = GoogleCloudRunV2CloudSqlInstance
    {
      -- | The Cloud SQL instance connection names, as can be found in https:\/\/console.cloud.google.com\/sql\/instances. Visit https:\/\/cloud.google.com\/sql\/docs\/mysql\/connect-run for more information on how to connect Cloud SQL and Cloud Run. Format: {project}:{location}:{instance}
      instances :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2CloudSqlInstance' with the minimum fields required to make a request.
newGoogleCloudRunV2CloudSqlInstance 
    ::  GoogleCloudRunV2CloudSqlInstance
newGoogleCloudRunV2CloudSqlInstance =
  GoogleCloudRunV2CloudSqlInstance {instances = Core.Nothing}

instance Core.FromJSON
           GoogleCloudRunV2CloudSqlInstance
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2CloudSqlInstance"
              (\ o ->
                 GoogleCloudRunV2CloudSqlInstance Core.<$>
                   (o Core..:? "instances"))

instance Core.ToJSON GoogleCloudRunV2CloudSqlInstance
         where
        toJSON GoogleCloudRunV2CloudSqlInstance{..}
          = Core.object
              (Core.catMaybes
                 [("instances" Core..=) Core.<$> instances])


-- | Defines a status condition for a resource.
--
-- /See:/ 'newGoogleCloudRunV2Condition' smart constructor.
data GoogleCloudRunV2Condition = GoogleCloudRunV2Condition
    {
      -- | Output only. A reason for the execution condition.
      executionReason :: (Core.Maybe GoogleCloudRunV2Condition_ExecutionReason)
      -- | Last time the condition transitioned from one status to another.
    , lastTransitionTime :: (Core.Maybe Core.DateTime)
      -- | Human readable message indicating details about the current status.
    , message :: (Core.Maybe Core.Text)
      -- | Output only. A common (service-level) reason for this condition.
    , reason :: (Core.Maybe GoogleCloudRunV2Condition_Reason)
      -- | Output only. A reason for the revision condition.
    , revisionReason :: (Core.Maybe GoogleCloudRunV2Condition_RevisionReason)
      -- | How to interpret failures of this condition, one of Error, Warning, Info
    , severity :: (Core.Maybe GoogleCloudRunV2Condition_Severity)
      -- | State of the condition.
    , state :: (Core.Maybe GoogleCloudRunV2Condition_State)
      -- | type is used to communicate the status of the reconciliation process. See also: https:\/\/github.com\/knative\/serving\/blob\/main\/docs\/spec\/errors.md#error-conditions-and-reporting Types common to all resources include: * \"Ready\": True when the Resource is ready.
    , type' :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2Condition' with the minimum fields required to make a request.
newGoogleCloudRunV2Condition 
    ::  GoogleCloudRunV2Condition
newGoogleCloudRunV2Condition =
  GoogleCloudRunV2Condition
    { executionReason = Core.Nothing
    , lastTransitionTime = Core.Nothing
    , message = Core.Nothing
    , reason = Core.Nothing
    , revisionReason = Core.Nothing
    , severity = Core.Nothing
    , state = Core.Nothing
    , type' = Core.Nothing
    }

instance Core.FromJSON GoogleCloudRunV2Condition
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2Condition"
              (\ o ->
                 GoogleCloudRunV2Condition Core.<$>
                   (o Core..:? "executionReason") Core.<*>
                     (o Core..:? "lastTransitionTime")
                     Core.<*> (o Core..:? "message")
                     Core.<*> (o Core..:? "reason")
                     Core.<*> (o Core..:? "revisionReason")
                     Core.<*> (o Core..:? "severity")
                     Core.<*> (o Core..:? "state")
                     Core.<*> (o Core..:? "type"))

instance Core.ToJSON GoogleCloudRunV2Condition where
        toJSON GoogleCloudRunV2Condition{..}
          = Core.object
              (Core.catMaybes
                 [("executionReason" Core..=) Core.<$>
                    executionReason,
                  ("lastTransitionTime" Core..=) Core.<$>
                    lastTransitionTime,
                  ("message" Core..=) Core.<$> message,
                  ("reason" Core..=) Core.<$> reason,
                  ("revisionReason" Core..=) Core.<$> revisionReason,
                  ("severity" Core..=) Core.<$> severity,
                  ("state" Core..=) Core.<$> state,
                  ("type" Core..=) Core.<$> type'])


-- | A single application container. This specifies both the container to run, the command to run in the container and the arguments to supply to it. Note that additional arguments can be supplied by the system to the container at runtime.
--
-- /See:/ 'newGoogleCloudRunV2Container' smart constructor.
data GoogleCloudRunV2Container = GoogleCloudRunV2Container
    {
      -- | Arguments to the entrypoint. The docker image\'s CMD is used if this is not provided.
      args :: (Core.Maybe [Core.Text])
      -- | Entrypoint array. Not executed within a shell. The docker image\'s ENTRYPOINT is used if this is not provided.
    , command :: (Core.Maybe [Core.Text])
      -- | Names of the containers that must start before this container.
    , dependsOn :: (Core.Maybe [Core.Text])
      -- | List of environment variables to set in the container.
    , env :: (Core.Maybe [GoogleCloudRunV2EnvVar])
      -- | Required. Name of the container image in Dockerhub, Google Artifact Registry, or Google Container Registry. If the host is not provided, Dockerhub is assumed.
    , image :: (Core.Maybe Core.Text)
      -- | Periodic probe of container liveness. Container will be restarted if the probe fails.
    , livenessProbe :: (Core.Maybe GoogleCloudRunV2Probe)
      -- | Name of the container specified as a DNS_LABEL (RFC 1123).
    , name :: (Core.Maybe Core.Text)
      -- | List of ports to expose from the container. Only a single port can be specified. The specified ports must be listening on all interfaces (0.0.0.0) within the container to be accessible. If omitted, a port number will be chosen and passed to the container through the PORT environment variable for the container to listen on.
    , ports :: (Core.Maybe [GoogleCloudRunV2ContainerPort])
      -- | Compute Resource requirements by this container.
    , resources :: (Core.Maybe GoogleCloudRunV2ResourceRequirements)
      -- | Startup probe of application within the container. All other probes are disabled if a startup probe is provided, until it succeeds. Container will not be added to service endpoints if the probe fails.
    , startupProbe :: (Core.Maybe GoogleCloudRunV2Probe)
      -- | Volume to mount into the container\'s filesystem.
    , volumeMounts :: (Core.Maybe [GoogleCloudRunV2VolumeMount])
      -- | Container\'s working directory. If not specified, the container runtime\'s default will be used, which might be configured in the container image.
    , workingDir :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2Container' with the minimum fields required to make a request.
newGoogleCloudRunV2Container 
    ::  GoogleCloudRunV2Container
newGoogleCloudRunV2Container =
  GoogleCloudRunV2Container
    { args = Core.Nothing
    , command = Core.Nothing
    , dependsOn = Core.Nothing
    , env = Core.Nothing
    , image = Core.Nothing
    , livenessProbe = Core.Nothing
    , name = Core.Nothing
    , ports = Core.Nothing
    , resources = Core.Nothing
    , startupProbe = Core.Nothing
    , volumeMounts = Core.Nothing
    , workingDir = Core.Nothing
    }

instance Core.FromJSON GoogleCloudRunV2Container
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2Container"
              (\ o ->
                 GoogleCloudRunV2Container Core.<$>
                   (o Core..:? "args") Core.<*> (o Core..:? "command")
                     Core.<*> (o Core..:? "dependsOn")
                     Core.<*> (o Core..:? "env")
                     Core.<*> (o Core..:? "image")
                     Core.<*> (o Core..:? "livenessProbe")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "ports")
                     Core.<*> (o Core..:? "resources")
                     Core.<*> (o Core..:? "startupProbe")
                     Core.<*> (o Core..:? "volumeMounts")
                     Core.<*> (o Core..:? "workingDir"))

instance Core.ToJSON GoogleCloudRunV2Container where
        toJSON GoogleCloudRunV2Container{..}
          = Core.object
              (Core.catMaybes
                 [("args" Core..=) Core.<$> args,
                  ("command" Core..=) Core.<$> command,
                  ("dependsOn" Core..=) Core.<$> dependsOn,
                  ("env" Core..=) Core.<$> env,
                  ("image" Core..=) Core.<$> image,
                  ("livenessProbe" Core..=) Core.<$> livenessProbe,
                  ("name" Core..=) Core.<$> name,
                  ("ports" Core..=) Core.<$> ports,
                  ("resources" Core..=) Core.<$> resources,
                  ("startupProbe" Core..=) Core.<$> startupProbe,
                  ("volumeMounts" Core..=) Core.<$> volumeMounts,
                  ("workingDir" Core..=) Core.<$> workingDir])


-- | Per-container override specification.
--
-- /See:/ 'newGoogleCloudRunV2ContainerOverride' smart constructor.
data GoogleCloudRunV2ContainerOverride = GoogleCloudRunV2ContainerOverride
    {
      -- | Optional. Arguments to the entrypoint. Will replace existing args for override.
      args :: (Core.Maybe [Core.Text])
      -- | Optional. True if the intention is to clear out existing args list.
    , clearArgs :: (Core.Maybe Core.Bool)
      -- | List of environment variables to set in the container. Will be merged with existing env for override.
    , env :: (Core.Maybe [GoogleCloudRunV2EnvVar])
      -- | The name of the container specified as a DNS_LABEL.
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2ContainerOverride' with the minimum fields required to make a request.
newGoogleCloudRunV2ContainerOverride 
    ::  GoogleCloudRunV2ContainerOverride
newGoogleCloudRunV2ContainerOverride =
  GoogleCloudRunV2ContainerOverride
    { args = Core.Nothing
    , clearArgs = Core.Nothing
    , env = Core.Nothing
    , name = Core.Nothing
    }

instance Core.FromJSON
           GoogleCloudRunV2ContainerOverride
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2ContainerOverride"
              (\ o ->
                 GoogleCloudRunV2ContainerOverride Core.<$>
                   (o Core..:? "args") Core.<*> (o Core..:? "clearArgs")
                     Core.<*> (o Core..:? "env")
                     Core.<*> (o Core..:? "name"))

instance Core.ToJSON
           GoogleCloudRunV2ContainerOverride
         where
        toJSON GoogleCloudRunV2ContainerOverride{..}
          = Core.object
              (Core.catMaybes
                 [("args" Core..=) Core.<$> args,
                  ("clearArgs" Core..=) Core.<$> clearArgs,
                  ("env" Core..=) Core.<$> env,
                  ("name" Core..=) Core.<$> name])


-- | ContainerPort represents a network port in a single container.
--
-- /See:/ 'newGoogleCloudRunV2ContainerPort' smart constructor.
data GoogleCloudRunV2ContainerPort = GoogleCloudRunV2ContainerPort
    {
      -- | Port number the container listens on. This must be a valid TCP port number, 0 \< container_port \< 65536.
      containerPort :: (Core.Maybe Core.Int32)
      -- | If specified, used to specify which protocol to use. Allowed values are \"http1\" and \"h2c\".
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2ContainerPort' with the minimum fields required to make a request.
newGoogleCloudRunV2ContainerPort 
    ::  GoogleCloudRunV2ContainerPort
newGoogleCloudRunV2ContainerPort =
  GoogleCloudRunV2ContainerPort
    {containerPort = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON GoogleCloudRunV2ContainerPort
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2ContainerPort"
              (\ o ->
                 GoogleCloudRunV2ContainerPort Core.<$>
                   (o Core..:? "containerPort") Core.<*>
                     (o Core..:? "name"))

instance Core.ToJSON GoogleCloudRunV2ContainerPort
         where
        toJSON GoogleCloudRunV2ContainerPort{..}
          = Core.object
              (Core.catMaybes
                 [("containerPort" Core..=) Core.<$> containerPort,
                  ("name" Core..=) Core.<$> name])


-- | Build the source using Docker. This means the source has a Dockerfile.
--
-- /See:/ 'newGoogleCloudRunV2DockerBuild' smart constructor.
data GoogleCloudRunV2DockerBuild = GoogleCloudRunV2DockerBuild
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2DockerBuild' with the minimum fields required to make a request.
newGoogleCloudRunV2DockerBuild 
    ::  GoogleCloudRunV2DockerBuild
newGoogleCloudRunV2DockerBuild = GoogleCloudRunV2DockerBuild

instance Core.FromJSON GoogleCloudRunV2DockerBuild
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2DockerBuild"
              (\ o -> Core.pure GoogleCloudRunV2DockerBuild)

instance Core.ToJSON GoogleCloudRunV2DockerBuild
         where
        toJSON = Core.const Core.emptyObject


-- | In memory (tmpfs) ephemeral storage. It is ephemeral in the sense that when the sandbox is taken down, the data is destroyed with it (it does not persist across sandbox runs).
--
-- /See:/ 'newGoogleCloudRunV2EmptyDirVolumeSource' smart constructor.
data GoogleCloudRunV2EmptyDirVolumeSource = GoogleCloudRunV2EmptyDirVolumeSource
    {
      -- | The medium on which the data is stored. Acceptable values today is only MEMORY or none. When none, the default will currently be backed by memory but could change over time. +optional
      medium :: (Core.Maybe GoogleCloudRunV2EmptyDirVolumeSource_Medium)
      -- | Limit on the storage usable by this EmptyDir volume. The size limit is also applicable for memory medium. The maximum usage on memory medium EmptyDir would be the minimum value between the SizeLimit specified here and the sum of memory limits of all containers. The default is nil which means that the limit is undefined. More info: https:\/\/cloud.google.com\/run\/docs\/configuring\/in-memory-volumes#configure-volume. Info in Kubernetes: https:\/\/kubernetes.io\/docs\/concepts\/storage\/volumes\/#emptydir
    , sizeLimit :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2EmptyDirVolumeSource' with the minimum fields required to make a request.
newGoogleCloudRunV2EmptyDirVolumeSource 
    ::  GoogleCloudRunV2EmptyDirVolumeSource
newGoogleCloudRunV2EmptyDirVolumeSource =
  GoogleCloudRunV2EmptyDirVolumeSource
    {medium = Core.Nothing, sizeLimit = Core.Nothing}

instance Core.FromJSON
           GoogleCloudRunV2EmptyDirVolumeSource
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2EmptyDirVolumeSource"
              (\ o ->
                 GoogleCloudRunV2EmptyDirVolumeSource Core.<$>
                   (o Core..:? "medium") Core.<*>
                     (o Core..:? "sizeLimit"))

instance Core.ToJSON
           GoogleCloudRunV2EmptyDirVolumeSource
         where
        toJSON GoogleCloudRunV2EmptyDirVolumeSource{..}
          = Core.object
              (Core.catMaybes
                 [("medium" Core..=) Core.<$> medium,
                  ("sizeLimit" Core..=) Core.<$> sizeLimit])


-- | EnvVar represents an environment variable present in a Container.
--
-- /See:/ 'newGoogleCloudRunV2EnvVar' smart constructor.
data GoogleCloudRunV2EnvVar = GoogleCloudRunV2EnvVar
    {
      -- | Required. Name of the environment variable. Must not exceed 32768 characters.
      name :: (Core.Maybe Core.Text)
      -- | Literal value of the environment variable. Defaults to \"\", and the maximum length is 32768 bytes. Variable references are not supported in Cloud Run.
    , value :: (Core.Maybe Core.Text)
      -- | Source for the environment variable\'s value.
    , valueSource :: (Core.Maybe GoogleCloudRunV2EnvVarSource)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2EnvVar' with the minimum fields required to make a request.
newGoogleCloudRunV2EnvVar 
    ::  GoogleCloudRunV2EnvVar
newGoogleCloudRunV2EnvVar =
  GoogleCloudRunV2EnvVar
    {name = Core.Nothing, value = Core.Nothing, valueSource = Core.Nothing}

instance Core.FromJSON GoogleCloudRunV2EnvVar where
        parseJSON
          = Core.withObject "GoogleCloudRunV2EnvVar"
              (\ o ->
                 GoogleCloudRunV2EnvVar Core.<$>
                   (o Core..:? "name") Core.<*> (o Core..:? "value")
                     Core.<*> (o Core..:? "valueSource"))

instance Core.ToJSON GoogleCloudRunV2EnvVar where
        toJSON GoogleCloudRunV2EnvVar{..}
          = Core.object
              (Core.catMaybes
                 [("name" Core..=) Core.<$> name,
                  ("value" Core..=) Core.<$> value,
                  ("valueSource" Core..=) Core.<$> valueSource])


-- | EnvVarSource represents a source for the value of an EnvVar.
--
-- /See:/ 'newGoogleCloudRunV2EnvVarSource' smart constructor.
newtype GoogleCloudRunV2EnvVarSource = GoogleCloudRunV2EnvVarSource
    {
      -- | Selects a secret and a specific version from Cloud Secret Manager.
      secretKeyRef :: (Core.Maybe GoogleCloudRunV2SecretKeySelector)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2EnvVarSource' with the minimum fields required to make a request.
newGoogleCloudRunV2EnvVarSource 
    ::  GoogleCloudRunV2EnvVarSource
newGoogleCloudRunV2EnvVarSource =
  GoogleCloudRunV2EnvVarSource {secretKeyRef = Core.Nothing}

instance Core.FromJSON GoogleCloudRunV2EnvVarSource
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2EnvVarSource"
              (\ o ->
                 GoogleCloudRunV2EnvVarSource Core.<$>
                   (o Core..:? "secretKeyRef"))

instance Core.ToJSON GoogleCloudRunV2EnvVarSource
         where
        toJSON GoogleCloudRunV2EnvVarSource{..}
          = Core.object
              (Core.catMaybes
                 [("secretKeyRef" Core..=) Core.<$> secretKeyRef])


-- | Execution represents the configuration of a single execution. A execution an immutable resource that references a container image which is run to completion.
--
-- /See:/ 'newGoogleCloudRunV2Execution' smart constructor.
data GoogleCloudRunV2Execution = GoogleCloudRunV2Execution
    {
      -- | Output only. Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
      annotations :: (Core.Maybe GoogleCloudRunV2Execution_Annotations)
      -- | Output only. The number of tasks which reached phase Cancelled.
    , cancelledCount :: (Core.Maybe Core.Int32)
      -- | Output only. Represents time when the execution was completed. It is not guaranteed to be set in happens-before order across separate operations.
    , completionTime :: (Core.Maybe Core.DateTime)
      -- | Output only. The Condition of this Execution, containing its readiness status, and detailed error information in case it did not reach the desired state.
    , conditions :: (Core.Maybe [GoogleCloudRunV2Condition])
      -- | Output only. Represents time when the execution was acknowledged by the execution controller. It is not guaranteed to be set in happens-before order across separate operations.
    , createTime :: (Core.Maybe Core.DateTime)
      -- | Output only. For a deleted resource, the deletion time. It is only populated as a response to a Delete request.
    , deleteTime :: (Core.Maybe Core.DateTime)
      -- | Output only. A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
    , etag :: (Core.Maybe Core.Text)
      -- | Output only. For a deleted resource, the time after which it will be permamently deleted. It is only populated as a response to a Delete request.
    , expireTime :: (Core.Maybe Core.DateTime)
      -- | Output only. The number of tasks which reached phase Failed.
    , failedCount :: (Core.Maybe Core.Int32)
      -- | Output only. A number that monotonically increases every time the user modifies the desired state.
    , generation :: (Core.Maybe Core.Int64)
      -- | Output only. The name of the parent Job.
    , job :: (Core.Maybe Core.Text)
      -- | Output only. Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google\'s billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https:\/\/cloud.google.com\/resource-manager\/docs\/creating-managing-labels or https:\/\/cloud.google.com\/run\/docs\/configuring\/labels
    , labels :: (Core.Maybe GoogleCloudRunV2Execution_Labels)
      -- | The least stable launch stage needed to create this resource, as defined by <https://cloud.google.com/terms/launch-stages Google Cloud Platform Launch Stages>. Cloud Run supports @ALPHA@, @BETA@, and @GA@. Note that this value might not be what was used as input. For example, if ALPHA was provided as input in the parent resource, but only BETA and GA-level features are were, this field will be BETA.
    , launchStage :: (Core.Maybe GoogleCloudRunV2Execution_LaunchStage)
      -- | Output only. URI where logs for this execution can be found in Cloud Console.
    , logUri :: (Core.Maybe Core.Text)
      -- | Output only. The unique name of this Execution.
    , name :: (Core.Maybe Core.Text)
      -- | Output only. The generation of this Execution. See comments in @reconciling@ for additional information on reconciliation process in Cloud Run.
    , observedGeneration :: (Core.Maybe Core.Int64)
      -- | Output only. Specifies the maximum desired number of tasks the execution should run at any given time. Must be \<= task/count. The actual number of tasks running in steady state will be less than this number when ((.spec.task/count - .status.successful) \< .spec.parallelism), i.e. when the work left to do is less than max parallelism.
    , parallelism :: (Core.Maybe Core.Int32)
      -- | Output only. Indicates whether the resource\'s reconciliation is still in progress. See comments in @Job.reconciling@ for additional information on reconciliation process in Cloud Run.
    , reconciling :: (Core.Maybe Core.Bool)
      -- | Output only. The number of tasks which have retried at least once.
    , retriedCount :: (Core.Maybe Core.Int32)
      -- | Output only. The number of actively running tasks.
    , runningCount :: (Core.Maybe Core.Int32)
      -- | Output only. Reserved for future use.
    , satisfiesPzs :: (Core.Maybe Core.Bool)
      -- | Output only. Represents time when the execution started to run. It is not guaranteed to be set in happens-before order across separate operations.
    , startTime :: (Core.Maybe Core.DateTime)
      -- | Output only. The number of tasks which reached phase Succeeded.
    , succeededCount :: (Core.Maybe Core.Int32)
      -- | Output only. Specifies the desired number of tasks the execution should run. Setting to 1 means that parallelism is limited to 1 and the success of that task signals the success of the execution.
    , taskCount :: (Core.Maybe Core.Int32)
      -- | Output only. The template used to create tasks for this execution.
    , template :: (Core.Maybe GoogleCloudRunV2TaskTemplate)
      -- | Output only. Server assigned unique identifier for the Execution. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
    , uid :: (Core.Maybe Core.Text)
      -- | Output only. The last-modified time.
    , updateTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2Execution' with the minimum fields required to make a request.
newGoogleCloudRunV2Execution 
    ::  GoogleCloudRunV2Execution
newGoogleCloudRunV2Execution =
  GoogleCloudRunV2Execution
    { annotations = Core.Nothing
    , cancelledCount = Core.Nothing
    , completionTime = Core.Nothing
    , conditions = Core.Nothing
    , createTime = Core.Nothing
    , deleteTime = Core.Nothing
    , etag = Core.Nothing
    , expireTime = Core.Nothing
    , failedCount = Core.Nothing
    , generation = Core.Nothing
    , job = Core.Nothing
    , labels = Core.Nothing
    , launchStage = Core.Nothing
    , logUri = Core.Nothing
    , name = Core.Nothing
    , observedGeneration = Core.Nothing
    , parallelism = Core.Nothing
    , reconciling = Core.Nothing
    , retriedCount = Core.Nothing
    , runningCount = Core.Nothing
    , satisfiesPzs = Core.Nothing
    , startTime = Core.Nothing
    , succeededCount = Core.Nothing
    , taskCount = Core.Nothing
    , template = Core.Nothing
    , uid = Core.Nothing
    , updateTime = Core.Nothing
    }

instance Core.FromJSON GoogleCloudRunV2Execution
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2Execution"
              (\ o ->
                 GoogleCloudRunV2Execution Core.<$>
                   (o Core..:? "annotations") Core.<*>
                     (o Core..:? "cancelledCount")
                     Core.<*> (o Core..:? "completionTime")
                     Core.<*> (o Core..:? "conditions")
                     Core.<*> (o Core..:? "createTime")
                     Core.<*> (o Core..:? "deleteTime")
                     Core.<*> (o Core..:? "etag")
                     Core.<*> (o Core..:? "expireTime")
                     Core.<*> (o Core..:? "failedCount")
                     Core.<*>
                     (o Core..:? "generation" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "job")
                     Core.<*> (o Core..:? "labels")
                     Core.<*> (o Core..:? "launchStage")
                     Core.<*> (o Core..:? "logUri")
                     Core.<*> (o Core..:? "name")
                     Core.<*>
                     (o Core..:? "observedGeneration" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "parallelism")
                     Core.<*> (o Core..:? "reconciling")
                     Core.<*> (o Core..:? "retriedCount")
                     Core.<*> (o Core..:? "runningCount")
                     Core.<*> (o Core..:? "satisfiesPzs")
                     Core.<*> (o Core..:? "startTime")
                     Core.<*> (o Core..:? "succeededCount")
                     Core.<*> (o Core..:? "taskCount")
                     Core.<*> (o Core..:? "template")
                     Core.<*> (o Core..:? "uid")
                     Core.<*> (o Core..:? "updateTime"))

instance Core.ToJSON GoogleCloudRunV2Execution where
        toJSON GoogleCloudRunV2Execution{..}
          = Core.object
              (Core.catMaybes
                 [("annotations" Core..=) Core.<$> annotations,
                  ("cancelledCount" Core..=) Core.<$> cancelledCount,
                  ("completionTime" Core..=) Core.<$> completionTime,
                  ("conditions" Core..=) Core.<$> conditions,
                  ("createTime" Core..=) Core.<$> createTime,
                  ("deleteTime" Core..=) Core.<$> deleteTime,
                  ("etag" Core..=) Core.<$> etag,
                  ("expireTime" Core..=) Core.<$> expireTime,
                  ("failedCount" Core..=) Core.<$> failedCount,
                  ("generation" Core..=) Core.. Core.AsText Core.<$>
                    generation,
                  ("job" Core..=) Core.<$> job,
                  ("labels" Core..=) Core.<$> labels,
                  ("launchStage" Core..=) Core.<$> launchStage,
                  ("logUri" Core..=) Core.<$> logUri,
                  ("name" Core..=) Core.<$> name,
                  ("observedGeneration" Core..=) Core.. Core.AsText
                    Core.<$> observedGeneration,
                  ("parallelism" Core..=) Core.<$> parallelism,
                  ("reconciling" Core..=) Core.<$> reconciling,
                  ("retriedCount" Core..=) Core.<$> retriedCount,
                  ("runningCount" Core..=) Core.<$> runningCount,
                  ("satisfiesPzs" Core..=) Core.<$> satisfiesPzs,
                  ("startTime" Core..=) Core.<$> startTime,
                  ("succeededCount" Core..=) Core.<$> succeededCount,
                  ("taskCount" Core..=) Core.<$> taskCount,
                  ("template" Core..=) Core.<$> template,
                  ("uid" Core..=) Core.<$> uid,
                  ("updateTime" Core..=) Core.<$> updateTime])


-- | Output only. Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
--
-- /See:/ 'newGoogleCloudRunV2Execution_Annotations' smart constructor.
newtype GoogleCloudRunV2Execution_Annotations = GoogleCloudRunV2Execution_Annotations
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2Execution_Annotations' with the minimum fields required to make a request.
newGoogleCloudRunV2Execution_Annotations 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> GoogleCloudRunV2Execution_Annotations
newGoogleCloudRunV2Execution_Annotations additional =
  GoogleCloudRunV2Execution_Annotations {additional = additional}

instance Core.FromJSON
           GoogleCloudRunV2Execution_Annotations
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2Execution_Annotations"
              (\ o ->
                 GoogleCloudRunV2Execution_Annotations Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           GoogleCloudRunV2Execution_Annotations
         where
        toJSON GoogleCloudRunV2Execution_Annotations{..}
          = Core.toJSON additional


-- | Output only. Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google\'s billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https:\/\/cloud.google.com\/resource-manager\/docs\/creating-managing-labels or https:\/\/cloud.google.com\/run\/docs\/configuring\/labels
--
-- /See:/ 'newGoogleCloudRunV2Execution_Labels' smart constructor.
newtype GoogleCloudRunV2Execution_Labels = GoogleCloudRunV2Execution_Labels
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2Execution_Labels' with the minimum fields required to make a request.
newGoogleCloudRunV2Execution_Labels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> GoogleCloudRunV2Execution_Labels
newGoogleCloudRunV2Execution_Labels additional =
  GoogleCloudRunV2Execution_Labels {additional = additional}

instance Core.FromJSON
           GoogleCloudRunV2Execution_Labels
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2Execution_Labels"
              (\ o ->
                 GoogleCloudRunV2Execution_Labels Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON GoogleCloudRunV2Execution_Labels
         where
        toJSON GoogleCloudRunV2Execution_Labels{..}
          = Core.toJSON additional


-- | Reference to an Execution. Use \/Executions.GetExecution with the given name to get full execution including the latest status.
--
-- /See:/ 'newGoogleCloudRunV2ExecutionReference' smart constructor.
data GoogleCloudRunV2ExecutionReference = GoogleCloudRunV2ExecutionReference
    {
      -- | Status for the execution completion.
      completionStatus :: (Core.Maybe GoogleCloudRunV2ExecutionReference_CompletionStatus)
      -- | Creation timestamp of the execution.
    , completionTime :: (Core.Maybe Core.DateTime)
      -- | Creation timestamp of the execution.
    , createTime :: (Core.Maybe Core.DateTime)
      -- | The deletion time of the execution. It is only populated as a response to a Delete request.
    , deleteTime :: (Core.Maybe Core.DateTime)
      -- | Name of the execution.
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2ExecutionReference' with the minimum fields required to make a request.
newGoogleCloudRunV2ExecutionReference 
    ::  GoogleCloudRunV2ExecutionReference
newGoogleCloudRunV2ExecutionReference =
  GoogleCloudRunV2ExecutionReference
    { completionStatus = Core.Nothing
    , completionTime = Core.Nothing
    , createTime = Core.Nothing
    , deleteTime = Core.Nothing
    , name = Core.Nothing
    }

instance Core.FromJSON
           GoogleCloudRunV2ExecutionReference
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2ExecutionReference"
              (\ o ->
                 GoogleCloudRunV2ExecutionReference Core.<$>
                   (o Core..:? "completionStatus") Core.<*>
                     (o Core..:? "completionTime")
                     Core.<*> (o Core..:? "createTime")
                     Core.<*> (o Core..:? "deleteTime")
                     Core.<*> (o Core..:? "name"))

instance Core.ToJSON
           GoogleCloudRunV2ExecutionReference
         where
        toJSON GoogleCloudRunV2ExecutionReference{..}
          = Core.object
              (Core.catMaybes
                 [("completionStatus" Core..=) Core.<$>
                    completionStatus,
                  ("completionTime" Core..=) Core.<$> completionTime,
                  ("createTime" Core..=) Core.<$> createTime,
                  ("deleteTime" Core..=) Core.<$> deleteTime,
                  ("name" Core..=) Core.<$> name])


-- | ExecutionTemplate describes the data an execution should have when created from a template.
--
-- /See:/ 'newGoogleCloudRunV2ExecutionTemplate' smart constructor.
data GoogleCloudRunV2ExecutionTemplate = GoogleCloudRunV2ExecutionTemplate
    {
      -- | Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with @run.googleapis.com@, @cloud.googleapis.com@, @serving.knative.dev@, or @autoscaling.knative.dev@ namespaces, and they will be rejected. All system annotations in v1 now have a corresponding field in v2 ExecutionTemplate. This field follows Kubernetes annotations\' namespacing, limits, and rules.
      annotations :: (Core.Maybe GoogleCloudRunV2ExecutionTemplate_Annotations)
      -- | Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google\'s billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https:\/\/cloud.google.com\/resource-manager\/docs\/creating-managing-labels or https:\/\/cloud.google.com\/run\/docs\/configuring\/labels. Cloud Run API v2 does not support labels with @run.googleapis.com@, @cloud.googleapis.com@, @serving.knative.dev@, or @autoscaling.knative.dev@ namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 ExecutionTemplate.
    , labels :: (Core.Maybe GoogleCloudRunV2ExecutionTemplate_Labels)
      -- | Specifies the maximum desired number of tasks the execution should run at given time. Must be \<= task_count. When the job is run, if this field is 0 or unset, the maximum possible value will be used for that execution. The actual number of tasks running in steady state will be less than this number when there are fewer tasks waiting to be completed remaining, i.e. when the work left to do is less than max parallelism.
    , parallelism :: (Core.Maybe Core.Int32)
      -- | Specifies the desired number of tasks the execution should run. Setting to 1 means that parallelism is limited to 1 and the success of that task signals the success of the execution. Defaults to 1.
    , taskCount :: (Core.Maybe Core.Int32)
      -- | Required. Describes the task(s) that will be created when executing an execution.
    , template :: (Core.Maybe GoogleCloudRunV2TaskTemplate)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2ExecutionTemplate' with the minimum fields required to make a request.
newGoogleCloudRunV2ExecutionTemplate 
    ::  GoogleCloudRunV2ExecutionTemplate
newGoogleCloudRunV2ExecutionTemplate =
  GoogleCloudRunV2ExecutionTemplate
    { annotations = Core.Nothing
    , labels = Core.Nothing
    , parallelism = Core.Nothing
    , taskCount = Core.Nothing
    , template = Core.Nothing
    }

instance Core.FromJSON
           GoogleCloudRunV2ExecutionTemplate
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2ExecutionTemplate"
              (\ o ->
                 GoogleCloudRunV2ExecutionTemplate Core.<$>
                   (o Core..:? "annotations") Core.<*>
                     (o Core..:? "labels")
                     Core.<*> (o Core..:? "parallelism")
                     Core.<*> (o Core..:? "taskCount")
                     Core.<*> (o Core..:? "template"))

instance Core.ToJSON
           GoogleCloudRunV2ExecutionTemplate
         where
        toJSON GoogleCloudRunV2ExecutionTemplate{..}
          = Core.object
              (Core.catMaybes
                 [("annotations" Core..=) Core.<$> annotations,
                  ("labels" Core..=) Core.<$> labels,
                  ("parallelism" Core..=) Core.<$> parallelism,
                  ("taskCount" Core..=) Core.<$> taskCount,
                  ("template" Core..=) Core.<$> template])


-- | Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with @run.googleapis.com@, @cloud.googleapis.com@, @serving.knative.dev@, or @autoscaling.knative.dev@ namespaces, and they will be rejected. All system annotations in v1 now have a corresponding field in v2 ExecutionTemplate. This field follows Kubernetes annotations\' namespacing, limits, and rules.
--
-- /See:/ 'newGoogleCloudRunV2ExecutionTemplate_Annotations' smart constructor.
newtype GoogleCloudRunV2ExecutionTemplate_Annotations = GoogleCloudRunV2ExecutionTemplate_Annotations
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2ExecutionTemplate_Annotations' with the minimum fields required to make a request.
newGoogleCloudRunV2ExecutionTemplate_Annotations 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> GoogleCloudRunV2ExecutionTemplate_Annotations
newGoogleCloudRunV2ExecutionTemplate_Annotations additional =
  GoogleCloudRunV2ExecutionTemplate_Annotations {additional = additional}

instance Core.FromJSON
           GoogleCloudRunV2ExecutionTemplate_Annotations
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2ExecutionTemplate_Annotations"
              (\ o ->
                 GoogleCloudRunV2ExecutionTemplate_Annotations
                   Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON
           GoogleCloudRunV2ExecutionTemplate_Annotations
         where
        toJSON
          GoogleCloudRunV2ExecutionTemplate_Annotations{..}
          = Core.toJSON additional


-- | Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google\'s billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https:\/\/cloud.google.com\/resource-manager\/docs\/creating-managing-labels or https:\/\/cloud.google.com\/run\/docs\/configuring\/labels. Cloud Run API v2 does not support labels with @run.googleapis.com@, @cloud.googleapis.com@, @serving.knative.dev@, or @autoscaling.knative.dev@ namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 ExecutionTemplate.
--
-- /See:/ 'newGoogleCloudRunV2ExecutionTemplate_Labels' smart constructor.
newtype GoogleCloudRunV2ExecutionTemplate_Labels = GoogleCloudRunV2ExecutionTemplate_Labels
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2ExecutionTemplate_Labels' with the minimum fields required to make a request.
newGoogleCloudRunV2ExecutionTemplate_Labels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> GoogleCloudRunV2ExecutionTemplate_Labels
newGoogleCloudRunV2ExecutionTemplate_Labels additional =
  GoogleCloudRunV2ExecutionTemplate_Labels {additional = additional}

instance Core.FromJSON
           GoogleCloudRunV2ExecutionTemplate_Labels
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2ExecutionTemplate_Labels"
              (\ o ->
                 GoogleCloudRunV2ExecutionTemplate_Labels Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           GoogleCloudRunV2ExecutionTemplate_Labels
         where
        toJSON GoogleCloudRunV2ExecutionTemplate_Labels{..}
          = Core.toJSON additional


-- | Request message for exporting Cloud Run image.
--
-- /See:/ 'newGoogleCloudRunV2ExportImageRequest' smart constructor.
newtype GoogleCloudRunV2ExportImageRequest = GoogleCloudRunV2ExportImageRequest
    {
      -- | Required. The export destination url (the Artifact Registry repo).
      destinationRepo :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2ExportImageRequest' with the minimum fields required to make a request.
newGoogleCloudRunV2ExportImageRequest 
    ::  GoogleCloudRunV2ExportImageRequest
newGoogleCloudRunV2ExportImageRequest =
  GoogleCloudRunV2ExportImageRequest {destinationRepo = Core.Nothing}

instance Core.FromJSON
           GoogleCloudRunV2ExportImageRequest
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2ExportImageRequest"
              (\ o ->
                 GoogleCloudRunV2ExportImageRequest Core.<$>
                   (o Core..:? "destinationRepo"))

instance Core.ToJSON
           GoogleCloudRunV2ExportImageRequest
         where
        toJSON GoogleCloudRunV2ExportImageRequest{..}
          = Core.object
              (Core.catMaybes
                 [("destinationRepo" Core..=) Core.<$>
                    destinationRepo])


-- | ExportImageResponse contains an operation Id to track the image export operation.
--
-- /See:/ 'newGoogleCloudRunV2ExportImageResponse' smart constructor.
newtype GoogleCloudRunV2ExportImageResponse = GoogleCloudRunV2ExportImageResponse
    {
      -- | An operation ID used to track the status of image exports tied to the original pod ID in the request.
      operationId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2ExportImageResponse' with the minimum fields required to make a request.
newGoogleCloudRunV2ExportImageResponse 
    ::  GoogleCloudRunV2ExportImageResponse
newGoogleCloudRunV2ExportImageResponse =
  GoogleCloudRunV2ExportImageResponse {operationId = Core.Nothing}

instance Core.FromJSON
           GoogleCloudRunV2ExportImageResponse
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2ExportImageResponse"
              (\ o ->
                 GoogleCloudRunV2ExportImageResponse Core.<$>
                   (o Core..:? "operationId"))

instance Core.ToJSON
           GoogleCloudRunV2ExportImageResponse
         where
        toJSON GoogleCloudRunV2ExportImageResponse{..}
          = Core.object
              (Core.catMaybes
                 [("operationId" Core..=) Core.<$> operationId])


-- | ExportStatusResponse contains the status of image export operation, with the status of each image export job.
--
-- /See:/ 'newGoogleCloudRunV2ExportStatusResponse' smart constructor.
data GoogleCloudRunV2ExportStatusResponse = GoogleCloudRunV2ExportStatusResponse
    {
      -- | The status of each image export job.
      imageExportStatuses :: (Core.Maybe [GoogleCloudRunV2ImageExportStatus])
      -- | The operation id.
    , operationId :: (Core.Maybe Core.Text)
      -- | Output only. The state of the overall export operation.
    , operationState :: (Core.Maybe GoogleCloudRunV2ExportStatusResponse_OperationState)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2ExportStatusResponse' with the minimum fields required to make a request.
newGoogleCloudRunV2ExportStatusResponse 
    ::  GoogleCloudRunV2ExportStatusResponse
newGoogleCloudRunV2ExportStatusResponse =
  GoogleCloudRunV2ExportStatusResponse
    { imageExportStatuses = Core.Nothing
    , operationId = Core.Nothing
    , operationState = Core.Nothing
    }

instance Core.FromJSON
           GoogleCloudRunV2ExportStatusResponse
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2ExportStatusResponse"
              (\ o ->
                 GoogleCloudRunV2ExportStatusResponse Core.<$>
                   (o Core..:? "imageExportStatuses") Core.<*>
                     (o Core..:? "operationId")
                     Core.<*> (o Core..:? "operationState"))

instance Core.ToJSON
           GoogleCloudRunV2ExportStatusResponse
         where
        toJSON GoogleCloudRunV2ExportStatusResponse{..}
          = Core.object
              (Core.catMaybes
                 [("imageExportStatuses" Core..=) Core.<$>
                    imageExportStatuses,
                  ("operationId" Core..=) Core.<$> operationId,
                  ("operationState" Core..=) Core.<$> operationState])


-- | Represents a volume backed by a Cloud Storage bucket using Cloud Storage FUSE.
--
-- /See:/ 'newGoogleCloudRunV2GCSVolumeSource' smart constructor.
data GoogleCloudRunV2GCSVolumeSource = GoogleCloudRunV2GCSVolumeSource
    {
      -- | Cloud Storage Bucket name.
      bucket :: (Core.Maybe Core.Text)
      -- | A list of additional flags to pass to the gcsfuse CLI. Options should be specified without the leading \"--\".
    , mountOptions :: (Core.Maybe [Core.Text])
      -- | If true, the volume will be mounted as read only for all mounts.
    , readOnly :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2GCSVolumeSource' with the minimum fields required to make a request.
newGoogleCloudRunV2GCSVolumeSource 
    ::  GoogleCloudRunV2GCSVolumeSource
newGoogleCloudRunV2GCSVolumeSource =
  GoogleCloudRunV2GCSVolumeSource
    { bucket = Core.Nothing
    , mountOptions = Core.Nothing
    , readOnly = Core.Nothing
    }

instance Core.FromJSON
           GoogleCloudRunV2GCSVolumeSource
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2GCSVolumeSource"
              (\ o ->
                 GoogleCloudRunV2GCSVolumeSource Core.<$>
                   (o Core..:? "bucket") Core.<*>
                     (o Core..:? "mountOptions")
                     Core.<*> (o Core..:? "readOnly"))

instance Core.ToJSON GoogleCloudRunV2GCSVolumeSource
         where
        toJSON GoogleCloudRunV2GCSVolumeSource{..}
          = Core.object
              (Core.catMaybes
                 [("bucket" Core..=) Core.<$> bucket,
                  ("mountOptions" Core..=) Core.<$> mountOptions,
                  ("readOnly" Core..=) Core.<$> readOnly])


-- | GRPCAction describes an action involving a GRPC port.
--
-- /See:/ 'newGoogleCloudRunV2GRPCAction' smart constructor.
data GoogleCloudRunV2GRPCAction = GoogleCloudRunV2GRPCAction
    {
      -- | Optional. Port number of the gRPC service. Number must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.
      port :: (Core.Maybe Core.Int32)
      -- | Optional. Service is the name of the service to place in the gRPC HealthCheckRequest (see https:\/\/github.com\/grpc\/grpc\/blob\/master\/doc\/health-checking.md ). If this is not specified, the default behavior is defined by gRPC.
    , service :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2GRPCAction' with the minimum fields required to make a request.
newGoogleCloudRunV2GRPCAction 
    ::  GoogleCloudRunV2GRPCAction
newGoogleCloudRunV2GRPCAction =
  GoogleCloudRunV2GRPCAction {port = Core.Nothing, service = Core.Nothing}

instance Core.FromJSON GoogleCloudRunV2GRPCAction
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2GRPCAction"
              (\ o ->
                 GoogleCloudRunV2GRPCAction Core.<$>
                   (o Core..:? "port") Core.<*> (o Core..:? "service"))

instance Core.ToJSON GoogleCloudRunV2GRPCAction where
        toJSON GoogleCloudRunV2GRPCAction{..}
          = Core.object
              (Core.catMaybes
                 [("port" Core..=) Core.<$> port,
                  ("service" Core..=) Core.<$> service])


-- | HTTPGetAction describes an action based on HTTP Get requests.
--
-- /See:/ 'newGoogleCloudRunV2HTTPGetAction' smart constructor.
data GoogleCloudRunV2HTTPGetAction = GoogleCloudRunV2HTTPGetAction
    {
      -- | Optional. Custom headers to set in the request. HTTP allows repeated headers.
      httpHeaders :: (Core.Maybe [GoogleCloudRunV2HTTPHeader])
      -- | Optional. Path to access on the HTTP server. Defaults to \'\/\'.
    , path :: (Core.Maybe Core.Text)
      -- | Optional. Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.
    , port :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2HTTPGetAction' with the minimum fields required to make a request.
newGoogleCloudRunV2HTTPGetAction 
    ::  GoogleCloudRunV2HTTPGetAction
newGoogleCloudRunV2HTTPGetAction =
  GoogleCloudRunV2HTTPGetAction
    {httpHeaders = Core.Nothing, path = Core.Nothing, port = Core.Nothing}

instance Core.FromJSON GoogleCloudRunV2HTTPGetAction
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2HTTPGetAction"
              (\ o ->
                 GoogleCloudRunV2HTTPGetAction Core.<$>
                   (o Core..:? "httpHeaders") Core.<*>
                     (o Core..:? "path")
                     Core.<*> (o Core..:? "port"))

instance Core.ToJSON GoogleCloudRunV2HTTPGetAction
         where
        toJSON GoogleCloudRunV2HTTPGetAction{..}
          = Core.object
              (Core.catMaybes
                 [("httpHeaders" Core..=) Core.<$> httpHeaders,
                  ("path" Core..=) Core.<$> path,
                  ("port" Core..=) Core.<$> port])


-- | HTTPHeader describes a custom header to be used in HTTP probes
--
-- /See:/ 'newGoogleCloudRunV2HTTPHeader' smart constructor.
data GoogleCloudRunV2HTTPHeader = GoogleCloudRunV2HTTPHeader
    {
      -- | Required. The header field name
      name :: (Core.Maybe Core.Text)
      -- | Optional. The header field value
    , value :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2HTTPHeader' with the minimum fields required to make a request.
newGoogleCloudRunV2HTTPHeader 
    ::  GoogleCloudRunV2HTTPHeader
newGoogleCloudRunV2HTTPHeader =
  GoogleCloudRunV2HTTPHeader {name = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON GoogleCloudRunV2HTTPHeader
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2HTTPHeader"
              (\ o ->
                 GoogleCloudRunV2HTTPHeader Core.<$>
                   (o Core..:? "name") Core.<*> (o Core..:? "value"))

instance Core.ToJSON GoogleCloudRunV2HTTPHeader where
        toJSON GoogleCloudRunV2HTTPHeader{..}
          = Core.object
              (Core.catMaybes
                 [("name" Core..=) Core.<$> name,
                  ("value" Core..=) Core.<$> value])


-- | The status of an image export job.
--
-- /See:/ 'newGoogleCloudRunV2ImageExportStatus' smart constructor.
data GoogleCloudRunV2ImageExportStatus = GoogleCloudRunV2ImageExportStatus
    {
      -- | Output only. Has the image export job finished (regardless of successful or failure).
      exportJobState :: (Core.Maybe GoogleCloudRunV2ImageExportStatus_ExportJobState)
      -- | The exported image ID as it will appear in Artifact Registry.
    , exportedImageDigest :: (Core.Maybe Core.Text)
      -- | The status of the export task if done.
    , status :: (Core.Maybe UtilStatusProto)
      -- | The image tag as it will appear in Artifact Registry.
    , tag :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2ImageExportStatus' with the minimum fields required to make a request.
newGoogleCloudRunV2ImageExportStatus 
    ::  GoogleCloudRunV2ImageExportStatus
newGoogleCloudRunV2ImageExportStatus =
  GoogleCloudRunV2ImageExportStatus
    { exportJobState = Core.Nothing
    , exportedImageDigest = Core.Nothing
    , status = Core.Nothing
    , tag = Core.Nothing
    }

instance Core.FromJSON
           GoogleCloudRunV2ImageExportStatus
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2ImageExportStatus"
              (\ o ->
                 GoogleCloudRunV2ImageExportStatus Core.<$>
                   (o Core..:? "exportJobState") Core.<*>
                     (o Core..:? "exportedImageDigest")
                     Core.<*> (o Core..:? "status")
                     Core.<*> (o Core..:? "tag"))

instance Core.ToJSON
           GoogleCloudRunV2ImageExportStatus
         where
        toJSON GoogleCloudRunV2ImageExportStatus{..}
          = Core.object
              (Core.catMaybes
                 [("exportJobState" Core..=) Core.<$> exportJobState,
                  ("exportedImageDigest" Core..=) Core.<$>
                    exportedImageDigest,
                  ("status" Core..=) Core.<$> status,
                  ("tag" Core..=) Core.<$> tag])


-- | Job represents the configuration of a single job, which references a container image that is run to completion.
--
-- /See:/ 'newGoogleCloudRunV2Job' smart constructor.
data GoogleCloudRunV2Job = GoogleCloudRunV2Job
    {
      -- | Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with @run.googleapis.com@, @cloud.googleapis.com@, @serving.knative.dev@, or @autoscaling.knative.dev@ namespaces, and they will be rejected on new resources. All system annotations in v1 now have a corresponding field in v2 Job. This field follows Kubernetes annotations\' namespacing, limits, and rules.
      annotations :: (Core.Maybe GoogleCloudRunV2Job_Annotations)
      -- | Settings for the Binary Authorization feature.
    , binaryAuthorization :: (Core.Maybe GoogleCloudRunV2BinaryAuthorization)
      -- | Arbitrary identifier for the API client.
    , client :: (Core.Maybe Core.Text)
      -- | Arbitrary version identifier for the API client.
    , clientVersion :: (Core.Maybe Core.Text)
      -- | Output only. The Conditions of all other associated sub-resources. They contain additional diagnostics information in case the Job does not reach its desired state. See comments in @reconciling@ for additional information on reconciliation process in Cloud Run.
    , conditions :: (Core.Maybe [GoogleCloudRunV2Condition])
      -- | Output only. The creation time.
    , createTime :: (Core.Maybe Core.DateTime)
      -- | Output only. Email address of the authenticated creator.
    , creator :: (Core.Maybe Core.Text)
      -- | Output only. The deletion time. It is only populated as a response to a Delete request.
    , deleteTime :: (Core.Maybe Core.DateTime)
      -- | Output only. A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
    , etag :: (Core.Maybe Core.Text)
      -- | Output only. Number of executions created for this job.
    , executionCount :: (Core.Maybe Core.Int32)
      -- | Output only. For a deleted resource, the time after which it will be permamently deleted.
    , expireTime :: (Core.Maybe Core.DateTime)
      -- | Output only. A number that monotonically increases every time the user modifies the desired state.
    , generation :: (Core.Maybe Core.Int64)
      -- | Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google\'s billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https:\/\/cloud.google.com\/resource-manager\/docs\/creating-managing-labels or https:\/\/cloud.google.com\/run\/docs\/configuring\/labels. Cloud Run API v2 does not support labels with @run.googleapis.com@, @cloud.googleapis.com@, @serving.knative.dev@, or @autoscaling.knative.dev@ namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 Job.
    , labels :: (Core.Maybe GoogleCloudRunV2Job_Labels)
      -- | Output only. Email address of the last authenticated modifier.
    , lastModifier :: (Core.Maybe Core.Text)
      -- | Output only. Name of the last created execution.
    , latestCreatedExecution :: (Core.Maybe GoogleCloudRunV2ExecutionReference)
      -- | The launch stage as defined by <https://cloud.google.com/terms/launch-stages Google Cloud Platform Launch Stages>. Cloud Run supports @ALPHA@, @BETA@, and @GA@. If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features. For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
    , launchStage :: (Core.Maybe GoogleCloudRunV2Job_LaunchStage)
      -- | The fully qualified name of this Job. Format: projects\/{project}\/locations\/{location}\/jobs\/{job}
    , name :: (Core.Maybe Core.Text)
      -- | Output only. The generation of this Job. See comments in @reconciling@ for additional information on reconciliation process in Cloud Run.
    , observedGeneration :: (Core.Maybe Core.Int64)
      -- | Output only. Returns true if the Job is currently being acted upon by the system to bring it into the desired state. When a new Job is created, or an existing one is updated, Cloud Run will asynchronously perform all necessary steps to bring the Job to the desired state. This process is called reconciliation. While reconciliation is in process, @observed_generation@ and @latest_succeeded_execution@, will have transient values that might mismatch the intended state: Once reconciliation is over (and this field is false), there are two possible outcomes: reconciliation succeeded and the state matches the Job, or there was an error, and reconciliation failed. This state can be found in @terminal_condition.state@. If reconciliation succeeded, the following fields will match: @observed_generation@ and @generation@, @latest_succeeded_execution@ and @latest_created_execution@. If reconciliation failed, @observed_generation@ and @latest_succeeded_execution@ will have the state of the last succeeded execution or empty
      -- for newly created Job. Additional information on the failure can be found in @terminal_condition@ and @conditions@.
    , reconciling :: (Core.Maybe Core.Bool)
      -- | A unique string used as a suffix for creating a new execution. The Job will become ready when the execution is successfully completed. The sum of job name and token length must be fewer than 63 characters.
    , runExecutionToken :: (Core.Maybe Core.Text)
      -- | Output only. Reserved for future use.
    , satisfiesPzs :: (Core.Maybe Core.Bool)
      -- | A unique string used as a suffix creating a new execution. The Job will become ready when the execution is successfully started. The sum of job name and token length must be fewer than 63 characters.
    , startExecutionToken :: (Core.Maybe Core.Text)
      -- | Required. The template used to create executions for this Job.
    , template :: (Core.Maybe GoogleCloudRunV2ExecutionTemplate)
      -- | Output only. The Condition of this Job, containing its readiness status, and detailed error information in case it did not reach the desired state.
    , terminalCondition :: (Core.Maybe GoogleCloudRunV2Condition)
      -- | Output only. Server assigned unique identifier for the Execution. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
    , uid :: (Core.Maybe Core.Text)
      -- | Output only. The last-modified time.
    , updateTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2Job' with the minimum fields required to make a request.
newGoogleCloudRunV2Job 
    ::  GoogleCloudRunV2Job
newGoogleCloudRunV2Job =
  GoogleCloudRunV2Job
    { annotations = Core.Nothing
    , binaryAuthorization = Core.Nothing
    , client = Core.Nothing
    , clientVersion = Core.Nothing
    , conditions = Core.Nothing
    , createTime = Core.Nothing
    , creator = Core.Nothing
    , deleteTime = Core.Nothing
    , etag = Core.Nothing
    , executionCount = Core.Nothing
    , expireTime = Core.Nothing
    , generation = Core.Nothing
    , labels = Core.Nothing
    , lastModifier = Core.Nothing
    , latestCreatedExecution = Core.Nothing
    , launchStage = Core.Nothing
    , name = Core.Nothing
    , observedGeneration = Core.Nothing
    , reconciling = Core.Nothing
    , runExecutionToken = Core.Nothing
    , satisfiesPzs = Core.Nothing
    , startExecutionToken = Core.Nothing
    , template = Core.Nothing
    , terminalCondition = Core.Nothing
    , uid = Core.Nothing
    , updateTime = Core.Nothing
    }

instance Core.FromJSON GoogleCloudRunV2Job where
        parseJSON
          = Core.withObject "GoogleCloudRunV2Job"
              (\ o ->
                 GoogleCloudRunV2Job Core.<$>
                   (o Core..:? "annotations") Core.<*>
                     (o Core..:? "binaryAuthorization")
                     Core.<*> (o Core..:? "client")
                     Core.<*> (o Core..:? "clientVersion")
                     Core.<*> (o Core..:? "conditions")
                     Core.<*> (o Core..:? "createTime")
                     Core.<*> (o Core..:? "creator")
                     Core.<*> (o Core..:? "deleteTime")
                     Core.<*> (o Core..:? "etag")
                     Core.<*> (o Core..:? "executionCount")
                     Core.<*> (o Core..:? "expireTime")
                     Core.<*>
                     (o Core..:? "generation" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "labels")
                     Core.<*> (o Core..:? "lastModifier")
                     Core.<*> (o Core..:? "latestCreatedExecution")
                     Core.<*> (o Core..:? "launchStage")
                     Core.<*> (o Core..:? "name")
                     Core.<*>
                     (o Core..:? "observedGeneration" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "reconciling")
                     Core.<*> (o Core..:? "runExecutionToken")
                     Core.<*> (o Core..:? "satisfiesPzs")
                     Core.<*> (o Core..:? "startExecutionToken")
                     Core.<*> (o Core..:? "template")
                     Core.<*> (o Core..:? "terminalCondition")
                     Core.<*> (o Core..:? "uid")
                     Core.<*> (o Core..:? "updateTime"))

instance Core.ToJSON GoogleCloudRunV2Job where
        toJSON GoogleCloudRunV2Job{..}
          = Core.object
              (Core.catMaybes
                 [("annotations" Core..=) Core.<$> annotations,
                  ("binaryAuthorization" Core..=) Core.<$>
                    binaryAuthorization,
                  ("client" Core..=) Core.<$> client,
                  ("clientVersion" Core..=) Core.<$> clientVersion,
                  ("conditions" Core..=) Core.<$> conditions,
                  ("createTime" Core..=) Core.<$> createTime,
                  ("creator" Core..=) Core.<$> creator,
                  ("deleteTime" Core..=) Core.<$> deleteTime,
                  ("etag" Core..=) Core.<$> etag,
                  ("executionCount" Core..=) Core.<$> executionCount,
                  ("expireTime" Core..=) Core.<$> expireTime,
                  ("generation" Core..=) Core.. Core.AsText Core.<$>
                    generation,
                  ("labels" Core..=) Core.<$> labels,
                  ("lastModifier" Core..=) Core.<$> lastModifier,
                  ("latestCreatedExecution" Core..=) Core.<$>
                    latestCreatedExecution,
                  ("launchStage" Core..=) Core.<$> launchStage,
                  ("name" Core..=) Core.<$> name,
                  ("observedGeneration" Core..=) Core.. Core.AsText
                    Core.<$> observedGeneration,
                  ("reconciling" Core..=) Core.<$> reconciling,
                  ("runExecutionToken" Core..=) Core.<$>
                    runExecutionToken,
                  ("satisfiesPzs" Core..=) Core.<$> satisfiesPzs,
                  ("startExecutionToken" Core..=) Core.<$>
                    startExecutionToken,
                  ("template" Core..=) Core.<$> template,
                  ("terminalCondition" Core..=) Core.<$>
                    terminalCondition,
                  ("uid" Core..=) Core.<$> uid,
                  ("updateTime" Core..=) Core.<$> updateTime])


-- | Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with @run.googleapis.com@, @cloud.googleapis.com@, @serving.knative.dev@, or @autoscaling.knative.dev@ namespaces, and they will be rejected on new resources. All system annotations in v1 now have a corresponding field in v2 Job. This field follows Kubernetes annotations\' namespacing, limits, and rules.
--
-- /See:/ 'newGoogleCloudRunV2Job_Annotations' smart constructor.
newtype GoogleCloudRunV2Job_Annotations = GoogleCloudRunV2Job_Annotations
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2Job_Annotations' with the minimum fields required to make a request.
newGoogleCloudRunV2Job_Annotations 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> GoogleCloudRunV2Job_Annotations
newGoogleCloudRunV2Job_Annotations additional =
  GoogleCloudRunV2Job_Annotations {additional = additional}

instance Core.FromJSON
           GoogleCloudRunV2Job_Annotations
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2Job_Annotations"
              (\ o ->
                 GoogleCloudRunV2Job_Annotations Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON GoogleCloudRunV2Job_Annotations
         where
        toJSON GoogleCloudRunV2Job_Annotations{..}
          = Core.toJSON additional


-- | Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google\'s billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https:\/\/cloud.google.com\/resource-manager\/docs\/creating-managing-labels or https:\/\/cloud.google.com\/run\/docs\/configuring\/labels. Cloud Run API v2 does not support labels with @run.googleapis.com@, @cloud.googleapis.com@, @serving.knative.dev@, or @autoscaling.knative.dev@ namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 Job.
--
-- /See:/ 'newGoogleCloudRunV2Job_Labels' smart constructor.
newtype GoogleCloudRunV2Job_Labels = GoogleCloudRunV2Job_Labels
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2Job_Labels' with the minimum fields required to make a request.
newGoogleCloudRunV2Job_Labels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> GoogleCloudRunV2Job_Labels
newGoogleCloudRunV2Job_Labels additional =
  GoogleCloudRunV2Job_Labels {additional = additional}

instance Core.FromJSON GoogleCloudRunV2Job_Labels
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2Job_Labels"
              (\ o ->
                 GoogleCloudRunV2Job_Labels Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON GoogleCloudRunV2Job_Labels where
        toJSON GoogleCloudRunV2Job_Labels{..}
          = Core.toJSON additional


-- | Response message containing a list of Executions.
--
-- /See:/ 'newGoogleCloudRunV2ListExecutionsResponse' smart constructor.
data GoogleCloudRunV2ListExecutionsResponse = GoogleCloudRunV2ListExecutionsResponse
    {
      -- | The resulting list of Executions.
      executions :: (Core.Maybe [GoogleCloudRunV2Execution])
      -- | A token indicating there are more items than page_size. Use it in the next ListExecutions request to continue.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2ListExecutionsResponse' with the minimum fields required to make a request.
newGoogleCloudRunV2ListExecutionsResponse 
    ::  GoogleCloudRunV2ListExecutionsResponse
newGoogleCloudRunV2ListExecutionsResponse =
  GoogleCloudRunV2ListExecutionsResponse
    {executions = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON
           GoogleCloudRunV2ListExecutionsResponse
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2ListExecutionsResponse"
              (\ o ->
                 GoogleCloudRunV2ListExecutionsResponse Core.<$>
                   (o Core..:? "executions") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON
           GoogleCloudRunV2ListExecutionsResponse
         where
        toJSON GoogleCloudRunV2ListExecutionsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("executions" Core..=) Core.<$> executions,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Response message containing a list of Jobs.
--
-- /See:/ 'newGoogleCloudRunV2ListJobsResponse' smart constructor.
data GoogleCloudRunV2ListJobsResponse = GoogleCloudRunV2ListJobsResponse
    {
      -- | The resulting list of Jobs.
      jobs :: (Core.Maybe [GoogleCloudRunV2Job])
      -- | A token indicating there are more items than page_size. Use it in the next ListJobs request to continue.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2ListJobsResponse' with the minimum fields required to make a request.
newGoogleCloudRunV2ListJobsResponse 
    ::  GoogleCloudRunV2ListJobsResponse
newGoogleCloudRunV2ListJobsResponse =
  GoogleCloudRunV2ListJobsResponse
    {jobs = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON
           GoogleCloudRunV2ListJobsResponse
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2ListJobsResponse"
              (\ o ->
                 GoogleCloudRunV2ListJobsResponse Core.<$>
                   (o Core..:? "jobs") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON GoogleCloudRunV2ListJobsResponse
         where
        toJSON GoogleCloudRunV2ListJobsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("jobs" Core..=) Core.<$> jobs,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Response message containing a list of Revisions.
--
-- /See:/ 'newGoogleCloudRunV2ListRevisionsResponse' smart constructor.
data GoogleCloudRunV2ListRevisionsResponse = GoogleCloudRunV2ListRevisionsResponse
    {
      -- | A token indicating there are more items than page_size. Use it in the next ListRevisions request to continue.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | The resulting list of Revisions.
    , revisions :: (Core.Maybe [GoogleCloudRunV2Revision])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2ListRevisionsResponse' with the minimum fields required to make a request.
newGoogleCloudRunV2ListRevisionsResponse 
    ::  GoogleCloudRunV2ListRevisionsResponse
newGoogleCloudRunV2ListRevisionsResponse =
  GoogleCloudRunV2ListRevisionsResponse
    {nextPageToken = Core.Nothing, revisions = Core.Nothing}

instance Core.FromJSON
           GoogleCloudRunV2ListRevisionsResponse
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2ListRevisionsResponse"
              (\ o ->
                 GoogleCloudRunV2ListRevisionsResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "revisions"))

instance Core.ToJSON
           GoogleCloudRunV2ListRevisionsResponse
         where
        toJSON GoogleCloudRunV2ListRevisionsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("revisions" Core..=) Core.<$> revisions])


-- | Response message containing a list of Services.
--
-- /See:/ 'newGoogleCloudRunV2ListServicesResponse' smart constructor.
data GoogleCloudRunV2ListServicesResponse = GoogleCloudRunV2ListServicesResponse
    {
      -- | A token indicating there are more items than page_size. Use it in the next ListServices request to continue.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | The resulting list of Services.
    , services :: (Core.Maybe [GoogleCloudRunV2Service])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2ListServicesResponse' with the minimum fields required to make a request.
newGoogleCloudRunV2ListServicesResponse 
    ::  GoogleCloudRunV2ListServicesResponse
newGoogleCloudRunV2ListServicesResponse =
  GoogleCloudRunV2ListServicesResponse
    {nextPageToken = Core.Nothing, services = Core.Nothing}

instance Core.FromJSON
           GoogleCloudRunV2ListServicesResponse
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2ListServicesResponse"
              (\ o ->
                 GoogleCloudRunV2ListServicesResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "services"))

instance Core.ToJSON
           GoogleCloudRunV2ListServicesResponse
         where
        toJSON GoogleCloudRunV2ListServicesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("services" Core..=) Core.<$> services])


-- | Response message containing a list of Tasks.
--
-- /See:/ 'newGoogleCloudRunV2ListTasksResponse' smart constructor.
data GoogleCloudRunV2ListTasksResponse = GoogleCloudRunV2ListTasksResponse
    {
      -- | A token indicating there are more items than page_size. Use it in the next ListTasks request to continue.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | The resulting list of Tasks.
    , tasks :: (Core.Maybe [GoogleCloudRunV2Task])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2ListTasksResponse' with the minimum fields required to make a request.
newGoogleCloudRunV2ListTasksResponse 
    ::  GoogleCloudRunV2ListTasksResponse
newGoogleCloudRunV2ListTasksResponse =
  GoogleCloudRunV2ListTasksResponse
    {nextPageToken = Core.Nothing, tasks = Core.Nothing}

instance Core.FromJSON
           GoogleCloudRunV2ListTasksResponse
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2ListTasksResponse"
              (\ o ->
                 GoogleCloudRunV2ListTasksResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "tasks"))

instance Core.ToJSON
           GoogleCloudRunV2ListTasksResponse
         where
        toJSON GoogleCloudRunV2ListTasksResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("tasks" Core..=) Core.<$> tasks])


-- | Metadata represents the JSON encoded generated customer metadata.
--
-- /See:/ 'newGoogleCloudRunV2Metadata' smart constructor.
newtype GoogleCloudRunV2Metadata = GoogleCloudRunV2Metadata
    {
      -- | JSON encoded Google-generated Customer Metadata for a given resource\/project.
      metadata :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2Metadata' with the minimum fields required to make a request.
newGoogleCloudRunV2Metadata 
    ::  GoogleCloudRunV2Metadata
newGoogleCloudRunV2Metadata = GoogleCloudRunV2Metadata {metadata = Core.Nothing}

instance Core.FromJSON GoogleCloudRunV2Metadata where
        parseJSON
          = Core.withObject "GoogleCloudRunV2Metadata"
              (\ o ->
                 GoogleCloudRunV2Metadata Core.<$>
                   (o Core..:? "metadata"))

instance Core.ToJSON GoogleCloudRunV2Metadata where
        toJSON GoogleCloudRunV2Metadata{..}
          = Core.object
              (Core.catMaybes
                 [("metadata" Core..=) Core.<$> metadata])


-- | Represents an NFS mount.
--
-- /See:/ 'newGoogleCloudRunV2NFSVolumeSource' smart constructor.
data GoogleCloudRunV2NFSVolumeSource = GoogleCloudRunV2NFSVolumeSource
    {
      -- | Path that is exported by the NFS server.
      path :: (Core.Maybe Core.Text)
      -- | If true, the volume will be mounted as read only for all mounts.
    , readOnly :: (Core.Maybe Core.Bool)
      -- | Hostname or IP address of the NFS server
    , server :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2NFSVolumeSource' with the minimum fields required to make a request.
newGoogleCloudRunV2NFSVolumeSource 
    ::  GoogleCloudRunV2NFSVolumeSource
newGoogleCloudRunV2NFSVolumeSource =
  GoogleCloudRunV2NFSVolumeSource
    {path = Core.Nothing, readOnly = Core.Nothing, server = Core.Nothing}

instance Core.FromJSON
           GoogleCloudRunV2NFSVolumeSource
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2NFSVolumeSource"
              (\ o ->
                 GoogleCloudRunV2NFSVolumeSource Core.<$>
                   (o Core..:? "path") Core.<*> (o Core..:? "readOnly")
                     Core.<*> (o Core..:? "server"))

instance Core.ToJSON GoogleCloudRunV2NFSVolumeSource
         where
        toJSON GoogleCloudRunV2NFSVolumeSource{..}
          = Core.object
              (Core.catMaybes
                 [("path" Core..=) Core.<$> path,
                  ("readOnly" Core..=) Core.<$> readOnly,
                  ("server" Core..=) Core.<$> server])


-- | Direct VPC egress settings.
--
-- /See:/ 'newGoogleCloudRunV2NetworkInterface' smart constructor.
data GoogleCloudRunV2NetworkInterface = GoogleCloudRunV2NetworkInterface
    {
      -- | Optional. The VPC network that the Cloud Run resource will be able to send traffic to. At least one of network or subnetwork must be specified. If both network and subnetwork are specified, the given VPC subnetwork must belong to the given VPC network. If network is not specified, it will be looked up from the subnetwork.
      network :: (Core.Maybe Core.Text)
      -- | Optional. The VPC subnetwork that the Cloud Run resource will get IPs from. At least one of network or subnetwork must be specified. If both network and subnetwork are specified, the given VPC subnetwork must belong to the given VPC network. If subnetwork is not specified, the subnetwork with the same name with the network will be used.
    , subnetwork :: (Core.Maybe Core.Text)
      -- | Optional. Network tags applied to this Cloud Run resource.
    , tags :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2NetworkInterface' with the minimum fields required to make a request.
newGoogleCloudRunV2NetworkInterface 
    ::  GoogleCloudRunV2NetworkInterface
newGoogleCloudRunV2NetworkInterface =
  GoogleCloudRunV2NetworkInterface
    {network = Core.Nothing, subnetwork = Core.Nothing, tags = Core.Nothing}

instance Core.FromJSON
           GoogleCloudRunV2NetworkInterface
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2NetworkInterface"
              (\ o ->
                 GoogleCloudRunV2NetworkInterface Core.<$>
                   (o Core..:? "network") Core.<*>
                     (o Core..:? "subnetwork")
                     Core.<*> (o Core..:? "tags"))

instance Core.ToJSON GoogleCloudRunV2NetworkInterface
         where
        toJSON GoogleCloudRunV2NetworkInterface{..}
          = Core.object
              (Core.catMaybes
                 [("network" Core..=) Core.<$> network,
                  ("subnetwork" Core..=) Core.<$> subnetwork,
                  ("tags" Core..=) Core.<$> tags])


-- | Hardware constraints configuration.
--
-- /See:/ 'newGoogleCloudRunV2NodeSelector' smart constructor.
newtype GoogleCloudRunV2NodeSelector = GoogleCloudRunV2NodeSelector
    {
      -- | Required. GPU accelerator type to attach to an instance.
      accelerator :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2NodeSelector' with the minimum fields required to make a request.
newGoogleCloudRunV2NodeSelector 
    ::  GoogleCloudRunV2NodeSelector
newGoogleCloudRunV2NodeSelector =
  GoogleCloudRunV2NodeSelector {accelerator = Core.Nothing}

instance Core.FromJSON GoogleCloudRunV2NodeSelector
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2NodeSelector"
              (\ o ->
                 GoogleCloudRunV2NodeSelector Core.<$>
                   (o Core..:? "accelerator"))

instance Core.ToJSON GoogleCloudRunV2NodeSelector
         where
        toJSON GoogleCloudRunV2NodeSelector{..}
          = Core.object
              (Core.catMaybes
                 [("accelerator" Core..=) Core.<$> accelerator])


-- | RunJob Overrides that contains Execution fields to be overridden.
--
-- /See:/ 'newGoogleCloudRunV2Overrides' smart constructor.
data GoogleCloudRunV2Overrides = GoogleCloudRunV2Overrides
    {
      -- | Per container override specification.
      containerOverrides :: (Core.Maybe [GoogleCloudRunV2ContainerOverride])
      -- | Optional. The desired number of tasks the execution should run. Will replace existing task_count value.
    , taskCount :: (Core.Maybe Core.Int32)
      -- | Duration in seconds the task may be active before the system will actively try to mark it failed and kill associated containers. Will replace existing timeout_seconds value.
    , timeout :: (Core.Maybe Core.Duration)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2Overrides' with the minimum fields required to make a request.
newGoogleCloudRunV2Overrides 
    ::  GoogleCloudRunV2Overrides
newGoogleCloudRunV2Overrides =
  GoogleCloudRunV2Overrides
    { containerOverrides = Core.Nothing
    , taskCount = Core.Nothing
    , timeout = Core.Nothing
    }

instance Core.FromJSON GoogleCloudRunV2Overrides
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2Overrides"
              (\ o ->
                 GoogleCloudRunV2Overrides Core.<$>
                   (o Core..:? "containerOverrides") Core.<*>
                     (o Core..:? "taskCount")
                     Core.<*> (o Core..:? "timeout"))

instance Core.ToJSON GoogleCloudRunV2Overrides where
        toJSON GoogleCloudRunV2Overrides{..}
          = Core.object
              (Core.catMaybes
                 [("containerOverrides" Core..=) Core.<$>
                    containerOverrides,
                  ("taskCount" Core..=) Core.<$> taskCount,
                  ("timeout" Core..=) Core.<$> timeout])


-- | Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.
--
-- /See:/ 'newGoogleCloudRunV2Probe' smart constructor.
data GoogleCloudRunV2Probe = GoogleCloudRunV2Probe
    {
      -- | Optional. Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
      failureThreshold :: (Core.Maybe Core.Int32)
      -- | Optional. GRPC specifies an action involving a gRPC port. Exactly one of httpGet, tcpSocket, or grpc must be specified.
    , grpc :: (Core.Maybe GoogleCloudRunV2GRPCAction)
      -- | Optional. HTTPGet specifies the http request to perform. Exactly one of httpGet, tcpSocket, or grpc must be specified.
    , httpGet :: (Core.Maybe GoogleCloudRunV2HTTPGetAction)
      -- | Optional. Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240.
    , initialDelaySeconds :: (Core.Maybe Core.Int32)
      -- | Optional. How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeout_seconds.
    , periodSeconds :: (Core.Maybe Core.Int32)
      -- | Optional. TCPSocket specifies an action involving a TCP port. Exactly one of httpGet, tcpSocket, or grpc must be specified.
    , tcpSocket :: (Core.Maybe GoogleCloudRunV2TCPSocketAction)
      -- | Optional. Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than period_seconds.
    , timeoutSeconds :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2Probe' with the minimum fields required to make a request.
newGoogleCloudRunV2Probe 
    ::  GoogleCloudRunV2Probe
newGoogleCloudRunV2Probe =
  GoogleCloudRunV2Probe
    { failureThreshold = Core.Nothing
    , grpc = Core.Nothing
    , httpGet = Core.Nothing
    , initialDelaySeconds = Core.Nothing
    , periodSeconds = Core.Nothing
    , tcpSocket = Core.Nothing
    , timeoutSeconds = Core.Nothing
    }

instance Core.FromJSON GoogleCloudRunV2Probe where
        parseJSON
          = Core.withObject "GoogleCloudRunV2Probe"
              (\ o ->
                 GoogleCloudRunV2Probe Core.<$>
                   (o Core..:? "failureThreshold") Core.<*>
                     (o Core..:? "grpc")
                     Core.<*> (o Core..:? "httpGet")
                     Core.<*> (o Core..:? "initialDelaySeconds")
                     Core.<*> (o Core..:? "periodSeconds")
                     Core.<*> (o Core..:? "tcpSocket")
                     Core.<*> (o Core..:? "timeoutSeconds"))

instance Core.ToJSON GoogleCloudRunV2Probe where
        toJSON GoogleCloudRunV2Probe{..}
          = Core.object
              (Core.catMaybes
                 [("failureThreshold" Core..=) Core.<$>
                    failureThreshold,
                  ("grpc" Core..=) Core.<$> grpc,
                  ("httpGet" Core..=) Core.<$> httpGet,
                  ("initialDelaySeconds" Core..=) Core.<$>
                    initialDelaySeconds,
                  ("periodSeconds" Core..=) Core.<$> periodSeconds,
                  ("tcpSocket" Core..=) Core.<$> tcpSocket,
                  ("timeoutSeconds" Core..=) Core.<$> timeoutSeconds])


-- | ResourceRequirements describes the compute resource requirements.
--
-- /See:/ 'newGoogleCloudRunV2ResourceRequirements' smart constructor.
data GoogleCloudRunV2ResourceRequirements = GoogleCloudRunV2ResourceRequirements
    {
      -- | Determines whether CPU is only allocated during requests (true by default). However, if ResourceRequirements is set, the caller must explicitly set this field to true to preserve the default behavior.
      cpuIdle :: (Core.Maybe Core.Bool)
      -- | Only @memory@ and @cpu@ keys in the map are supported. Notes: * The only supported values for CPU are \'1\', \'2\', \'4\', and \'8\'. Setting 4 CPU requires at least 2Gi of memory. For more information, go to https:\/\/cloud.google.com\/run\/docs\/configuring\/cpu. * For supported \'memory\' values and syntax, go to https:\/\/cloud.google.com\/run\/docs\/configuring\/memory-limits
    , limits :: (Core.Maybe GoogleCloudRunV2ResourceRequirements_Limits)
      -- | Determines whether CPU should be boosted on startup of a new container instance above the requested CPU threshold, this can help reduce cold-start latency.
    , startupCpuBoost :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2ResourceRequirements' with the minimum fields required to make a request.
newGoogleCloudRunV2ResourceRequirements 
    ::  GoogleCloudRunV2ResourceRequirements
newGoogleCloudRunV2ResourceRequirements =
  GoogleCloudRunV2ResourceRequirements
    { cpuIdle = Core.Nothing
    , limits = Core.Nothing
    , startupCpuBoost = Core.Nothing
    }

instance Core.FromJSON
           GoogleCloudRunV2ResourceRequirements
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2ResourceRequirements"
              (\ o ->
                 GoogleCloudRunV2ResourceRequirements Core.<$>
                   (o Core..:? "cpuIdle") Core.<*> (o Core..:? "limits")
                     Core.<*> (o Core..:? "startupCpuBoost"))

instance Core.ToJSON
           GoogleCloudRunV2ResourceRequirements
         where
        toJSON GoogleCloudRunV2ResourceRequirements{..}
          = Core.object
              (Core.catMaybes
                 [("cpuIdle" Core..=) Core.<$> cpuIdle,
                  ("limits" Core..=) Core.<$> limits,
                  ("startupCpuBoost" Core..=) Core.<$>
                    startupCpuBoost])


-- | Only @memory@ and @cpu@ keys in the map are supported. Notes: * The only supported values for CPU are \'1\', \'2\', \'4\', and \'8\'. Setting 4 CPU requires at least 2Gi of memory. For more information, go to https:\/\/cloud.google.com\/run\/docs\/configuring\/cpu. * For supported \'memory\' values and syntax, go to https:\/\/cloud.google.com\/run\/docs\/configuring\/memory-limits
--
-- /See:/ 'newGoogleCloudRunV2ResourceRequirements_Limits' smart constructor.
newtype GoogleCloudRunV2ResourceRequirements_Limits = GoogleCloudRunV2ResourceRequirements_Limits
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2ResourceRequirements_Limits' with the minimum fields required to make a request.
newGoogleCloudRunV2ResourceRequirements_Limits 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> GoogleCloudRunV2ResourceRequirements_Limits
newGoogleCloudRunV2ResourceRequirements_Limits additional =
  GoogleCloudRunV2ResourceRequirements_Limits {additional = additional}

instance Core.FromJSON
           GoogleCloudRunV2ResourceRequirements_Limits
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2ResourceRequirements_Limits"
              (\ o ->
                 GoogleCloudRunV2ResourceRequirements_Limits Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           GoogleCloudRunV2ResourceRequirements_Limits
         where
        toJSON
          GoogleCloudRunV2ResourceRequirements_Limits{..}
          = Core.toJSON additional


-- | A Revision is an immutable snapshot of code and configuration. A Revision references a container image. Revisions are only created by updates to its parent Service.
--
-- /See:/ 'newGoogleCloudRunV2Revision' smart constructor.
data GoogleCloudRunV2Revision = GoogleCloudRunV2Revision
    {
      -- | Output only. Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
      annotations :: (Core.Maybe GoogleCloudRunV2Revision_Annotations)
      -- | Output only. The Condition of this Revision, containing its readiness status, and detailed error information in case it did not reach a serving state.
    , conditions :: (Core.Maybe [GoogleCloudRunV2Condition])
      -- | Holds the single container that defines the unit of execution for this Revision.
    , containers :: (Core.Maybe [GoogleCloudRunV2Container])
      -- | Output only. The creation time.
    , createTime :: (Core.Maybe Core.DateTime)
      -- | Output only. For a deleted resource, the deletion time. It is only populated as a response to a Delete request.
    , deleteTime :: (Core.Maybe Core.DateTime)
      -- | A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https:\/\/cloud.google.com\/run\/docs\/securing\/using-cmek
    , encryptionKey :: (Core.Maybe Core.Text)
      -- | The action to take if the encryption key is revoked.
    , encryptionKeyRevocationAction :: (Core.Maybe GoogleCloudRunV2Revision_EncryptionKeyRevocationAction)
      -- | If encryption/key/revocation_action is SHUTDOWN, the duration before shutting down all instances. The minimum increment is 1 hour.
    , encryptionKeyShutdownDuration :: (Core.Maybe Core.Duration)
      -- | Output only. A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
    , etag :: (Core.Maybe Core.Text)
      -- | The execution environment being used to host this Revision.
    , executionEnvironment :: (Core.Maybe GoogleCloudRunV2Revision_ExecutionEnvironment)
      -- | Output only. For a deleted resource, the time after which it will be permamently deleted. It is only populated as a response to a Delete request.
    , expireTime :: (Core.Maybe Core.DateTime)
      -- | Output only. A number that monotonically increases every time the user modifies the desired state.
    , generation :: (Core.Maybe Core.Int64)
      -- | Output only. Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google\'s billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https:\/\/cloud.google.com\/resource-manager\/docs\/creating-managing-labels or https:\/\/cloud.google.com\/run\/docs\/configuring\/labels.
    , labels :: (Core.Maybe GoogleCloudRunV2Revision_Labels)
      -- | The least stable launch stage needed to create this resource, as defined by <https://cloud.google.com/terms/launch-stages Google Cloud Platform Launch Stages>. Cloud Run supports @ALPHA@, @BETA@, and @GA@. Note that this value might not be what was used as input. For example, if ALPHA was provided as input in the parent resource, but only BETA and GA-level features are were, this field will be BETA.
    , launchStage :: (Core.Maybe GoogleCloudRunV2Revision_LaunchStage)
      -- | Output only. The Google Console URI to obtain logs for the Revision.
    , logUri :: (Core.Maybe Core.Text)
      -- | Sets the maximum number of requests that each serving instance can receive.
    , maxInstanceRequestConcurrency :: (Core.Maybe Core.Int32)
      -- | Output only. The unique name of this Revision.
    , name :: (Core.Maybe Core.Text)
      -- | The node selector for the revision.
    , nodeSelector :: (Core.Maybe GoogleCloudRunV2NodeSelector)
      -- | Output only. The generation of this Revision currently serving traffic. See comments in @reconciling@ for additional information on reconciliation process in Cloud Run.
    , observedGeneration :: (Core.Maybe Core.Int64)
      -- | Output only. Indicates whether the resource\'s reconciliation is still in progress. See comments in @Service.reconciling@ for additional information on reconciliation process in Cloud Run.
    , reconciling :: (Core.Maybe Core.Bool)
      -- | Output only. Reserved for future use.
    , satisfiesPzs :: (Core.Maybe Core.Bool)
      -- | Scaling settings for this revision.
    , scaling :: (Core.Maybe GoogleCloudRunV2RevisionScaling)
      -- | Output only. The current effective scaling settings for the revision.
    , scalingStatus :: (Core.Maybe GoogleCloudRunV2RevisionScalingStatus)
      -- | Output only. The name of the parent service.
    , service :: (Core.Maybe Core.Text)
      -- | Email address of the IAM service account associated with the revision of the service. The service account represents the identity of the running revision, and determines what permissions the revision has.
    , serviceAccount :: (Core.Maybe Core.Text)
      -- | Enables service mesh connectivity.
    , serviceMesh :: (Core.Maybe GoogleCloudRunV2ServiceMesh)
      -- | Enable session affinity.
    , sessionAffinity :: (Core.Maybe Core.Bool)
      -- | Max allowed time for an instance to respond to a request.
    , timeout :: (Core.Maybe Core.Duration)
      -- | Output only. Server assigned unique identifier for the Revision. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
    , uid :: (Core.Maybe Core.Text)
      -- | Output only. The last-modified time.
    , updateTime :: (Core.Maybe Core.DateTime)
      -- | A list of Volumes to make available to containers.
    , volumes :: (Core.Maybe [GoogleCloudRunV2Volume])
      -- | VPC Access configuration for this Revision. For more information, visit https:\/\/cloud.google.com\/run\/docs\/configuring\/connecting-vpc.
    , vpcAccess :: (Core.Maybe GoogleCloudRunV2VpcAccess)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2Revision' with the minimum fields required to make a request.
newGoogleCloudRunV2Revision 
    ::  GoogleCloudRunV2Revision
newGoogleCloudRunV2Revision =
  GoogleCloudRunV2Revision
    { annotations = Core.Nothing
    , conditions = Core.Nothing
    , containers = Core.Nothing
    , createTime = Core.Nothing
    , deleteTime = Core.Nothing
    , encryptionKey = Core.Nothing
    , encryptionKeyRevocationAction = Core.Nothing
    , encryptionKeyShutdownDuration = Core.Nothing
    , etag = Core.Nothing
    , executionEnvironment = Core.Nothing
    , expireTime = Core.Nothing
    , generation = Core.Nothing
    , labels = Core.Nothing
    , launchStage = Core.Nothing
    , logUri = Core.Nothing
    , maxInstanceRequestConcurrency = Core.Nothing
    , name = Core.Nothing
    , nodeSelector = Core.Nothing
    , observedGeneration = Core.Nothing
    , reconciling = Core.Nothing
    , satisfiesPzs = Core.Nothing
    , scaling = Core.Nothing
    , scalingStatus = Core.Nothing
    , service = Core.Nothing
    , serviceAccount = Core.Nothing
    , serviceMesh = Core.Nothing
    , sessionAffinity = Core.Nothing
    , timeout = Core.Nothing
    , uid = Core.Nothing
    , updateTime = Core.Nothing
    , volumes = Core.Nothing
    , vpcAccess = Core.Nothing
    }

instance Core.FromJSON GoogleCloudRunV2Revision where
        parseJSON
          = Core.withObject "GoogleCloudRunV2Revision"
              (\ o ->
                 GoogleCloudRunV2Revision Core.<$>
                   (o Core..:? "annotations") Core.<*>
                     (o Core..:? "conditions")
                     Core.<*> (o Core..:? "containers")
                     Core.<*> (o Core..:? "createTime")
                     Core.<*> (o Core..:? "deleteTime")
                     Core.<*> (o Core..:? "encryptionKey")
                     Core.<*> (o Core..:? "encryptionKeyRevocationAction")
                     Core.<*> (o Core..:? "encryptionKeyShutdownDuration")
                     Core.<*> (o Core..:? "etag")
                     Core.<*> (o Core..:? "executionEnvironment")
                     Core.<*> (o Core..:? "expireTime")
                     Core.<*>
                     (o Core..:? "generation" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "labels")
                     Core.<*> (o Core..:? "launchStage")
                     Core.<*> (o Core..:? "logUri")
                     Core.<*> (o Core..:? "maxInstanceRequestConcurrency")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "nodeSelector")
                     Core.<*>
                     (o Core..:? "observedGeneration" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "reconciling")
                     Core.<*> (o Core..:? "satisfiesPzs")
                     Core.<*> (o Core..:? "scaling")
                     Core.<*> (o Core..:? "scalingStatus")
                     Core.<*> (o Core..:? "service")
                     Core.<*> (o Core..:? "serviceAccount")
                     Core.<*> (o Core..:? "serviceMesh")
                     Core.<*> (o Core..:? "sessionAffinity")
                     Core.<*> (o Core..:? "timeout")
                     Core.<*> (o Core..:? "uid")
                     Core.<*> (o Core..:? "updateTime")
                     Core.<*> (o Core..:? "volumes")
                     Core.<*> (o Core..:? "vpcAccess"))

instance Core.ToJSON GoogleCloudRunV2Revision where
        toJSON GoogleCloudRunV2Revision{..}
          = Core.object
              (Core.catMaybes
                 [("annotations" Core..=) Core.<$> annotations,
                  ("conditions" Core..=) Core.<$> conditions,
                  ("containers" Core..=) Core.<$> containers,
                  ("createTime" Core..=) Core.<$> createTime,
                  ("deleteTime" Core..=) Core.<$> deleteTime,
                  ("encryptionKey" Core..=) Core.<$> encryptionKey,
                  ("encryptionKeyRevocationAction" Core..=) Core.<$>
                    encryptionKeyRevocationAction,
                  ("encryptionKeyShutdownDuration" Core..=) Core.<$>
                    encryptionKeyShutdownDuration,
                  ("etag" Core..=) Core.<$> etag,
                  ("executionEnvironment" Core..=) Core.<$>
                    executionEnvironment,
                  ("expireTime" Core..=) Core.<$> expireTime,
                  ("generation" Core..=) Core.. Core.AsText Core.<$>
                    generation,
                  ("labels" Core..=) Core.<$> labels,
                  ("launchStage" Core..=) Core.<$> launchStage,
                  ("logUri" Core..=) Core.<$> logUri,
                  ("maxInstanceRequestConcurrency" Core..=) Core.<$>
                    maxInstanceRequestConcurrency,
                  ("name" Core..=) Core.<$> name,
                  ("nodeSelector" Core..=) Core.<$> nodeSelector,
                  ("observedGeneration" Core..=) Core.. Core.AsText
                    Core.<$> observedGeneration,
                  ("reconciling" Core..=) Core.<$> reconciling,
                  ("satisfiesPzs" Core..=) Core.<$> satisfiesPzs,
                  ("scaling" Core..=) Core.<$> scaling,
                  ("scalingStatus" Core..=) Core.<$> scalingStatus,
                  ("service" Core..=) Core.<$> service,
                  ("serviceAccount" Core..=) Core.<$> serviceAccount,
                  ("serviceMesh" Core..=) Core.<$> serviceMesh,
                  ("sessionAffinity" Core..=) Core.<$> sessionAffinity,
                  ("timeout" Core..=) Core.<$> timeout,
                  ("uid" Core..=) Core.<$> uid,
                  ("updateTime" Core..=) Core.<$> updateTime,
                  ("volumes" Core..=) Core.<$> volumes,
                  ("vpcAccess" Core..=) Core.<$> vpcAccess])


-- | Output only. Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
--
-- /See:/ 'newGoogleCloudRunV2Revision_Annotations' smart constructor.
newtype GoogleCloudRunV2Revision_Annotations = GoogleCloudRunV2Revision_Annotations
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2Revision_Annotations' with the minimum fields required to make a request.
newGoogleCloudRunV2Revision_Annotations 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> GoogleCloudRunV2Revision_Annotations
newGoogleCloudRunV2Revision_Annotations additional =
  GoogleCloudRunV2Revision_Annotations {additional = additional}

instance Core.FromJSON
           GoogleCloudRunV2Revision_Annotations
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2Revision_Annotations"
              (\ o ->
                 GoogleCloudRunV2Revision_Annotations Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           GoogleCloudRunV2Revision_Annotations
         where
        toJSON GoogleCloudRunV2Revision_Annotations{..}
          = Core.toJSON additional


-- | Output only. Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google\'s billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https:\/\/cloud.google.com\/resource-manager\/docs\/creating-managing-labels or https:\/\/cloud.google.com\/run\/docs\/configuring\/labels.
--
-- /See:/ 'newGoogleCloudRunV2Revision_Labels' smart constructor.
newtype GoogleCloudRunV2Revision_Labels = GoogleCloudRunV2Revision_Labels
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2Revision_Labels' with the minimum fields required to make a request.
newGoogleCloudRunV2Revision_Labels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> GoogleCloudRunV2Revision_Labels
newGoogleCloudRunV2Revision_Labels additional =
  GoogleCloudRunV2Revision_Labels {additional = additional}

instance Core.FromJSON
           GoogleCloudRunV2Revision_Labels
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2Revision_Labels"
              (\ o ->
                 GoogleCloudRunV2Revision_Labels Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON GoogleCloudRunV2Revision_Labels
         where
        toJSON GoogleCloudRunV2Revision_Labels{..}
          = Core.toJSON additional


-- | Settings for revision-level scaling settings.
--
-- /See:/ 'newGoogleCloudRunV2RevisionScaling' smart constructor.
data GoogleCloudRunV2RevisionScaling = GoogleCloudRunV2RevisionScaling
    {
      -- | Optional. Maximum number of serving instances that this resource should have. When unspecified, the field is set to the server default value of 100. For more information see https:\/\/cloud.google.com\/run\/docs\/configuring\/max-instances
      maxInstanceCount :: (Core.Maybe Core.Int32)
      -- | Optional. Minimum number of serving instances that this resource should have.
    , minInstanceCount :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2RevisionScaling' with the minimum fields required to make a request.
newGoogleCloudRunV2RevisionScaling 
    ::  GoogleCloudRunV2RevisionScaling
newGoogleCloudRunV2RevisionScaling =
  GoogleCloudRunV2RevisionScaling
    {maxInstanceCount = Core.Nothing, minInstanceCount = Core.Nothing}

instance Core.FromJSON
           GoogleCloudRunV2RevisionScaling
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2RevisionScaling"
              (\ o ->
                 GoogleCloudRunV2RevisionScaling Core.<$>
                   (o Core..:? "maxInstanceCount") Core.<*>
                     (o Core..:? "minInstanceCount"))

instance Core.ToJSON GoogleCloudRunV2RevisionScaling
         where
        toJSON GoogleCloudRunV2RevisionScaling{..}
          = Core.object
              (Core.catMaybes
                 [("maxInstanceCount" Core..=) Core.<$>
                    maxInstanceCount,
                  ("minInstanceCount" Core..=) Core.<$>
                    minInstanceCount])


-- | Effective settings for the current revision
--
-- /See:/ 'newGoogleCloudRunV2RevisionScalingStatus' smart constructor.
newtype GoogleCloudRunV2RevisionScalingStatus = GoogleCloudRunV2RevisionScalingStatus
    {
      -- | The current number of min instances provisioned for this revision.
      desiredMinInstanceCount :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2RevisionScalingStatus' with the minimum fields required to make a request.
newGoogleCloudRunV2RevisionScalingStatus 
    ::  GoogleCloudRunV2RevisionScalingStatus
newGoogleCloudRunV2RevisionScalingStatus =
  GoogleCloudRunV2RevisionScalingStatus {desiredMinInstanceCount = Core.Nothing}

instance Core.FromJSON
           GoogleCloudRunV2RevisionScalingStatus
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2RevisionScalingStatus"
              (\ o ->
                 GoogleCloudRunV2RevisionScalingStatus Core.<$>
                   (o Core..:? "desiredMinInstanceCount"))

instance Core.ToJSON
           GoogleCloudRunV2RevisionScalingStatus
         where
        toJSON GoogleCloudRunV2RevisionScalingStatus{..}
          = Core.object
              (Core.catMaybes
                 [("desiredMinInstanceCount" Core..=) Core.<$>
                    desiredMinInstanceCount])


-- | RevisionTemplate describes the data a revision should have when created from a template.
--
-- /See:/ 'newGoogleCloudRunV2RevisionTemplate' smart constructor.
data GoogleCloudRunV2RevisionTemplate = GoogleCloudRunV2RevisionTemplate
    {
      -- | Optional. Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with @run.googleapis.com@, @cloud.googleapis.com@, @serving.knative.dev@, or @autoscaling.knative.dev@ namespaces, and they will be rejected. All system annotations in v1 now have a corresponding field in v2 RevisionTemplate. This field follows Kubernetes annotations\' namespacing, limits, and rules.
      annotations :: (Core.Maybe GoogleCloudRunV2RevisionTemplate_Annotations)
      -- | Holds the single container that defines the unit of execution for this Revision.
    , containers :: (Core.Maybe [GoogleCloudRunV2Container])
      -- | A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https:\/\/cloud.google.com\/run\/docs\/securing\/using-cmek
    , encryptionKey :: (Core.Maybe Core.Text)
      -- | Optional. The action to take if the encryption key is revoked.
    , encryptionKeyRevocationAction :: (Core.Maybe
   GoogleCloudRunV2RevisionTemplate_EncryptionKeyRevocationAction)
      -- | Optional. If encryption/key/revocation_action is SHUTDOWN, the duration before shutting down all instances. The minimum increment is 1 hour.
    , encryptionKeyShutdownDuration :: (Core.Maybe Core.Duration)
      -- | Optional. The sandbox environment to host this Revision.
    , executionEnvironment :: (Core.Maybe GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment)
      -- | Optional. Disables health checking containers during deployment.
    , healthCheckDisabled :: (Core.Maybe Core.Bool)
      -- | Optional. Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google\'s billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https:\/\/cloud.google.com\/resource-manager\/docs\/creating-managing-labels or https:\/\/cloud.google.com\/run\/docs\/configuring\/labels. Cloud Run API v2 does not support labels with @run.googleapis.com@, @cloud.googleapis.com@, @serving.knative.dev@, or @autoscaling.knative.dev@ namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 RevisionTemplate.
    , labels :: (Core.Maybe GoogleCloudRunV2RevisionTemplate_Labels)
      -- | Optional. Sets the maximum number of requests that each serving instance can receive. If not specified or 0, concurrency defaults to 80 when requested @CPU >= 1@ and defaults to 1 when requested @CPU \< 1@.
    , maxInstanceRequestConcurrency :: (Core.Maybe Core.Int32)
      -- | Optional. The node selector for the revision template.
    , nodeSelector :: (Core.Maybe GoogleCloudRunV2NodeSelector)
      -- | Optional. The unique name for the revision. If this field is omitted, it will be automatically generated based on the Service name.
    , revision :: (Core.Maybe Core.Text)
      -- | Optional. Scaling settings for this Revision.
    , scaling :: (Core.Maybe GoogleCloudRunV2RevisionScaling)
      -- | Optional. Email address of the IAM service account associated with the revision of the service. The service account represents the identity of the running revision, and determines what permissions the revision has. If not provided, the revision will use the project\'s default service account.
    , serviceAccount :: (Core.Maybe Core.Text)
      -- | Optional. Enables service mesh connectivity.
    , serviceMesh :: (Core.Maybe GoogleCloudRunV2ServiceMesh)
      -- | Optional. Enable session affinity.
    , sessionAffinity :: (Core.Maybe Core.Bool)
      -- | Optional. Max allowed time for an instance to respond to a request.
    , timeout :: (Core.Maybe Core.Duration)
      -- | Optional. A list of Volumes to make available to containers.
    , volumes :: (Core.Maybe [GoogleCloudRunV2Volume])
      -- | Optional. VPC Access configuration to use for this Revision. For more information, visit https:\/\/cloud.google.com\/run\/docs\/configuring\/connecting-vpc.
    , vpcAccess :: (Core.Maybe GoogleCloudRunV2VpcAccess)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2RevisionTemplate' with the minimum fields required to make a request.
newGoogleCloudRunV2RevisionTemplate 
    ::  GoogleCloudRunV2RevisionTemplate
newGoogleCloudRunV2RevisionTemplate =
  GoogleCloudRunV2RevisionTemplate
    { annotations = Core.Nothing
    , containers = Core.Nothing
    , encryptionKey = Core.Nothing
    , encryptionKeyRevocationAction = Core.Nothing
    , encryptionKeyShutdownDuration = Core.Nothing
    , executionEnvironment = Core.Nothing
    , healthCheckDisabled = Core.Nothing
    , labels = Core.Nothing
    , maxInstanceRequestConcurrency = Core.Nothing
    , nodeSelector = Core.Nothing
    , revision = Core.Nothing
    , scaling = Core.Nothing
    , serviceAccount = Core.Nothing
    , serviceMesh = Core.Nothing
    , sessionAffinity = Core.Nothing
    , timeout = Core.Nothing
    , volumes = Core.Nothing
    , vpcAccess = Core.Nothing
    }

instance Core.FromJSON
           GoogleCloudRunV2RevisionTemplate
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2RevisionTemplate"
              (\ o ->
                 GoogleCloudRunV2RevisionTemplate Core.<$>
                   (o Core..:? "annotations") Core.<*>
                     (o Core..:? "containers")
                     Core.<*> (o Core..:? "encryptionKey")
                     Core.<*> (o Core..:? "encryptionKeyRevocationAction")
                     Core.<*> (o Core..:? "encryptionKeyShutdownDuration")
                     Core.<*> (o Core..:? "executionEnvironment")
                     Core.<*> (o Core..:? "healthCheckDisabled")
                     Core.<*> (o Core..:? "labels")
                     Core.<*> (o Core..:? "maxInstanceRequestConcurrency")
                     Core.<*> (o Core..:? "nodeSelector")
                     Core.<*> (o Core..:? "revision")
                     Core.<*> (o Core..:? "scaling")
                     Core.<*> (o Core..:? "serviceAccount")
                     Core.<*> (o Core..:? "serviceMesh")
                     Core.<*> (o Core..:? "sessionAffinity")
                     Core.<*> (o Core..:? "timeout")
                     Core.<*> (o Core..:? "volumes")
                     Core.<*> (o Core..:? "vpcAccess"))

instance Core.ToJSON GoogleCloudRunV2RevisionTemplate
         where
        toJSON GoogleCloudRunV2RevisionTemplate{..}
          = Core.object
              (Core.catMaybes
                 [("annotations" Core..=) Core.<$> annotations,
                  ("containers" Core..=) Core.<$> containers,
                  ("encryptionKey" Core..=) Core.<$> encryptionKey,
                  ("encryptionKeyRevocationAction" Core..=) Core.<$>
                    encryptionKeyRevocationAction,
                  ("encryptionKeyShutdownDuration" Core..=) Core.<$>
                    encryptionKeyShutdownDuration,
                  ("executionEnvironment" Core..=) Core.<$>
                    executionEnvironment,
                  ("healthCheckDisabled" Core..=) Core.<$>
                    healthCheckDisabled,
                  ("labels" Core..=) Core.<$> labels,
                  ("maxInstanceRequestConcurrency" Core..=) Core.<$>
                    maxInstanceRequestConcurrency,
                  ("nodeSelector" Core..=) Core.<$> nodeSelector,
                  ("revision" Core..=) Core.<$> revision,
                  ("scaling" Core..=) Core.<$> scaling,
                  ("serviceAccount" Core..=) Core.<$> serviceAccount,
                  ("serviceMesh" Core..=) Core.<$> serviceMesh,
                  ("sessionAffinity" Core..=) Core.<$> sessionAffinity,
                  ("timeout" Core..=) Core.<$> timeout,
                  ("volumes" Core..=) Core.<$> volumes,
                  ("vpcAccess" Core..=) Core.<$> vpcAccess])


-- | Optional. Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with @run.googleapis.com@, @cloud.googleapis.com@, @serving.knative.dev@, or @autoscaling.knative.dev@ namespaces, and they will be rejected. All system annotations in v1 now have a corresponding field in v2 RevisionTemplate. This field follows Kubernetes annotations\' namespacing, limits, and rules.
--
-- /See:/ 'newGoogleCloudRunV2RevisionTemplate_Annotations' smart constructor.
newtype GoogleCloudRunV2RevisionTemplate_Annotations = GoogleCloudRunV2RevisionTemplate_Annotations
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2RevisionTemplate_Annotations' with the minimum fields required to make a request.
newGoogleCloudRunV2RevisionTemplate_Annotations 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> GoogleCloudRunV2RevisionTemplate_Annotations
newGoogleCloudRunV2RevisionTemplate_Annotations additional =
  GoogleCloudRunV2RevisionTemplate_Annotations {additional = additional}

instance Core.FromJSON
           GoogleCloudRunV2RevisionTemplate_Annotations
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2RevisionTemplate_Annotations"
              (\ o ->
                 GoogleCloudRunV2RevisionTemplate_Annotations Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           GoogleCloudRunV2RevisionTemplate_Annotations
         where
        toJSON
          GoogleCloudRunV2RevisionTemplate_Annotations{..}
          = Core.toJSON additional


-- | Optional. Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google\'s billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https:\/\/cloud.google.com\/resource-manager\/docs\/creating-managing-labels or https:\/\/cloud.google.com\/run\/docs\/configuring\/labels. Cloud Run API v2 does not support labels with @run.googleapis.com@, @cloud.googleapis.com@, @serving.knative.dev@, or @autoscaling.knative.dev@ namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 RevisionTemplate.
--
-- /See:/ 'newGoogleCloudRunV2RevisionTemplate_Labels' smart constructor.
newtype GoogleCloudRunV2RevisionTemplate_Labels = GoogleCloudRunV2RevisionTemplate_Labels
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2RevisionTemplate_Labels' with the minimum fields required to make a request.
newGoogleCloudRunV2RevisionTemplate_Labels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> GoogleCloudRunV2RevisionTemplate_Labels
newGoogleCloudRunV2RevisionTemplate_Labels additional =
  GoogleCloudRunV2RevisionTemplate_Labels {additional = additional}

instance Core.FromJSON
           GoogleCloudRunV2RevisionTemplate_Labels
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2RevisionTemplate_Labels"
              (\ o ->
                 GoogleCloudRunV2RevisionTemplate_Labels Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           GoogleCloudRunV2RevisionTemplate_Labels
         where
        toJSON GoogleCloudRunV2RevisionTemplate_Labels{..}
          = Core.toJSON additional


-- | Request message to create a new Execution of a Job.
--
-- /See:/ 'newGoogleCloudRunV2RunJobRequest' smart constructor.
data GoogleCloudRunV2RunJobRequest = GoogleCloudRunV2RunJobRequest
    {
      -- | A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
      etag :: (Core.Maybe Core.Text)
      -- | Overrides specification for a given execution of a job. If provided, overrides will be applied to update the execution or task spec.
    , overrides :: (Core.Maybe GoogleCloudRunV2Overrides)
      -- | Indicates that the request should be validated without actually deleting any resources.
    , validateOnly :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2RunJobRequest' with the minimum fields required to make a request.
newGoogleCloudRunV2RunJobRequest 
    ::  GoogleCloudRunV2RunJobRequest
newGoogleCloudRunV2RunJobRequest =
  GoogleCloudRunV2RunJobRequest
    {etag = Core.Nothing, overrides = Core.Nothing, validateOnly = Core.Nothing}

instance Core.FromJSON GoogleCloudRunV2RunJobRequest
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2RunJobRequest"
              (\ o ->
                 GoogleCloudRunV2RunJobRequest Core.<$>
                   (o Core..:? "etag") Core.<*> (o Core..:? "overrides")
                     Core.<*> (o Core..:? "validateOnly"))

instance Core.ToJSON GoogleCloudRunV2RunJobRequest
         where
        toJSON GoogleCloudRunV2RunJobRequest{..}
          = Core.object
              (Core.catMaybes
                 [("etag" Core..=) Core.<$> etag,
                  ("overrides" Core..=) Core.<$> overrides,
                  ("validateOnly" Core..=) Core.<$> validateOnly])


-- | SecretEnvVarSource represents a source for the value of an EnvVar.
--
-- /See:/ 'newGoogleCloudRunV2SecretKeySelector' smart constructor.
data GoogleCloudRunV2SecretKeySelector = GoogleCloudRunV2SecretKeySelector
    {
      -- | Required. The name of the secret in Cloud Secret Manager. Format: {secret/name} if the secret is in the same project. projects\/{project}\/secrets\/{secret/name} if the secret is in a different project.
      secret :: (Core.Maybe Core.Text)
      -- | The Cloud Secret Manager secret version. Can be \'latest\' for the latest version, an integer for a specific version, or a version alias.
    , version :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2SecretKeySelector' with the minimum fields required to make a request.
newGoogleCloudRunV2SecretKeySelector 
    ::  GoogleCloudRunV2SecretKeySelector
newGoogleCloudRunV2SecretKeySelector =
  GoogleCloudRunV2SecretKeySelector
    {secret = Core.Nothing, version = Core.Nothing}

instance Core.FromJSON
           GoogleCloudRunV2SecretKeySelector
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2SecretKeySelector"
              (\ o ->
                 GoogleCloudRunV2SecretKeySelector Core.<$>
                   (o Core..:? "secret") Core.<*>
                     (o Core..:? "version"))

instance Core.ToJSON
           GoogleCloudRunV2SecretKeySelector
         where
        toJSON GoogleCloudRunV2SecretKeySelector{..}
          = Core.object
              (Core.catMaybes
                 [("secret" Core..=) Core.<$> secret,
                  ("version" Core..=) Core.<$> version])


-- | The secret\'s value will be presented as the content of a file whose name is defined in the item path. If no items are defined, the name of the file is the secret.
--
-- /See:/ 'newGoogleCloudRunV2SecretVolumeSource' smart constructor.
data GoogleCloudRunV2SecretVolumeSource = GoogleCloudRunV2SecretVolumeSource
    {
      -- | Integer representation of mode bits to use on created files by default. Must be a value between 0000 and 0777 (octal), defaulting to 0444. Directories within the path are not affected by this setting. Notes * Internally, a umask of 0222 will be applied to any non-zero value. * This is an integer representation of the mode bits. So, the octal integer value should look exactly as the chmod numeric notation with a leading zero. Some examples: for chmod 640 (u=rw,g=r), set to 0640 (octal) or 416 (base-10). For chmod 755 (u=rwx,g=rx,o=rx), set to 0755 (octal) or 493 (base-10). * This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set. This might be in conflict with other options that affect the file mode, like fsGroup, and as a result, other mode bits could be set.
      defaultMode :: (Core.Maybe Core.Int32)
      -- | If unspecified, the volume will expose a file whose name is the secret, relative to VolumeMount.mount_path. If specified, the key will be used as the version to fetch from Cloud Secret Manager and the path will be the name of the file exposed in the volume. When items are defined, they must specify a path and a version.
    , items :: (Core.Maybe [GoogleCloudRunV2VersionToPath])
      -- | Required. The name of the secret in Cloud Secret Manager. Format: {secret} if the secret is in the same project. projects\/{project}\/secrets\/{secret} if the secret is in a different project.
    , secret :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2SecretVolumeSource' with the minimum fields required to make a request.
newGoogleCloudRunV2SecretVolumeSource 
    ::  GoogleCloudRunV2SecretVolumeSource
newGoogleCloudRunV2SecretVolumeSource =
  GoogleCloudRunV2SecretVolumeSource
    {defaultMode = Core.Nothing, items = Core.Nothing, secret = Core.Nothing}

instance Core.FromJSON
           GoogleCloudRunV2SecretVolumeSource
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2SecretVolumeSource"
              (\ o ->
                 GoogleCloudRunV2SecretVolumeSource Core.<$>
                   (o Core..:? "defaultMode") Core.<*>
                     (o Core..:? "items")
                     Core.<*> (o Core..:? "secret"))

instance Core.ToJSON
           GoogleCloudRunV2SecretVolumeSource
         where
        toJSON GoogleCloudRunV2SecretVolumeSource{..}
          = Core.object
              (Core.catMaybes
                 [("defaultMode" Core..=) Core.<$> defaultMode,
                  ("items" Core..=) Core.<$> items,
                  ("secret" Core..=) Core.<$> secret])


-- | Service acts as a top-level container that manages a set of configurations and revision templates which implement a network service. Service exists to provide a singular abstraction which can be access controlled, reasoned about, and which encapsulates software lifecycle decisions such as rollout policy and team resource ownership.
--
-- /See:/ 'newGoogleCloudRunV2Service' smart constructor.
data GoogleCloudRunV2Service = GoogleCloudRunV2Service
    {
      -- | Optional. Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with @run.googleapis.com@, @cloud.googleapis.com@, @serving.knative.dev@, or @autoscaling.knative.dev@ namespaces, and they will be rejected in new resources. All system annotations in v1 now have a corresponding field in v2 Service. This field follows Kubernetes annotations\' namespacing, limits, and rules.
      annotations :: (Core.Maybe GoogleCloudRunV2Service_Annotations)
      -- | Optional. Settings for the Binary Authorization feature.
    , binaryAuthorization :: (Core.Maybe GoogleCloudRunV2BinaryAuthorization)
      -- | Arbitrary identifier for the API client.
    , client :: (Core.Maybe Core.Text)
      -- | Arbitrary version identifier for the API client.
    , clientVersion :: (Core.Maybe Core.Text)
      -- | Output only. The Conditions of all other associated sub-resources. They contain additional diagnostics information in case the Service does not reach its Serving state. See comments in @reconciling@ for additional information on reconciliation process in Cloud Run.
    , conditions :: (Core.Maybe [GoogleCloudRunV2Condition])
      -- | Output only. The creation time.
    , createTime :: (Core.Maybe Core.DateTime)
      -- | Output only. Email address of the authenticated creator.
    , creator :: (Core.Maybe Core.Text)
      -- | One or more custom audiences that you want this service to support. Specify each custom audience as the full URL in a string. The custom audiences are encoded in the token and used to authenticate requests. For more information, see https:\/\/cloud.google.com\/run\/docs\/configuring\/custom-audiences.
    , customAudiences :: (Core.Maybe [Core.Text])
      -- | Optional. Disables public resolution of the default URI of this service.
    , defaultUriDisabled :: (Core.Maybe Core.Bool)
      -- | Output only. The deletion time. It is only populated as a response to a Delete request.
    , deleteTime :: (Core.Maybe Core.DateTime)
      -- | User-provided description of the Service. This field currently has a 512-character limit.
    , description :: (Core.Maybe Core.Text)
      -- | Output only. A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
    , etag :: (Core.Maybe Core.Text)
      -- | Output only. For a deleted resource, the time after which it will be permamently deleted.
    , expireTime :: (Core.Maybe Core.DateTime)
      -- | Output only. A number that monotonically increases every time the user modifies the desired state. Please note that unlike v1, this is an int64 value. As with most Google APIs, its JSON representation will be a @string@ instead of an @integer@.
    , generation :: (Core.Maybe Core.Int64)
      -- | Optional. Provides the ingress settings for this Service. On output, returns the currently observed ingress settings, or INGRESS/TRAFFIC/UNSPECIFIED if no revision is active.
    , ingress :: (Core.Maybe GoogleCloudRunV2Service_Ingress)
      -- | Optional. Disables IAM permission check for run.routes.invoke for callers of this service. This feature is available by invitation only. For more information, visit https:\/\/cloud.google.com\/run\/docs\/securing\/managing-access#invoker_check.
    , invokerIamDisabled :: (Core.Maybe Core.Bool)
      -- | Optional. Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google\'s billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https:\/\/cloud.google.com\/resource-manager\/docs\/creating-managing-labels or https:\/\/cloud.google.com\/run\/docs\/configuring\/labels. Cloud Run API v2 does not support labels with @run.googleapis.com@, @cloud.googleapis.com@, @serving.knative.dev@, or @autoscaling.knative.dev@ namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 Service.
    , labels :: (Core.Maybe GoogleCloudRunV2Service_Labels)
      -- | Output only. Email address of the last authenticated modifier.
    , lastModifier :: (Core.Maybe Core.Text)
      -- | Output only. Name of the last created revision. See comments in @reconciling@ for additional information on reconciliation process in Cloud Run.
    , latestCreatedRevision :: (Core.Maybe Core.Text)
      -- | Output only. Name of the latest revision that is serving traffic. See comments in @reconciling@ for additional information on reconciliation process in Cloud Run.
    , latestReadyRevision :: (Core.Maybe Core.Text)
      -- | Optional. The launch stage as defined by <https://cloud.google.com/terms/launch-stages Google Cloud Platform Launch Stages>. Cloud Run supports @ALPHA@, @BETA@, and @GA@. If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features. For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
    , launchStage :: (Core.Maybe GoogleCloudRunV2Service_LaunchStage)
      -- | The fully qualified name of this Service. In CreateServiceRequest, this field is ignored, and instead composed from CreateServiceRequest.parent and CreateServiceRequest.service/id. Format: projects\/{project}\/locations\/{location}\/services\/{service/id}
    , name :: (Core.Maybe Core.Text)
      -- | Output only. The generation of this Service currently serving traffic. See comments in @reconciling@ for additional information on reconciliation process in Cloud Run. Please note that unlike v1, this is an int64 value. As with most Google APIs, its JSON representation will be a @string@ instead of an @integer@.
    , observedGeneration :: (Core.Maybe Core.Int64)
      -- | Output only. Returns true if the Service is currently being acted upon by the system to bring it into the desired state. When a new Service is created, or an existing one is updated, Cloud Run will asynchronously perform all necessary steps to bring the Service to the desired serving state. This process is called reconciliation. While reconciliation is in process, @observed_generation@, @latest_ready_revison@, @traffic_statuses@, and @uri@ will have transient values that might mismatch the intended state: Once reconciliation is over (and this field is false), there are two possible outcomes: reconciliation succeeded and the serving state matches the Service, or there was an error, and reconciliation failed. This state can be found in @terminal_condition.state@. If reconciliation succeeded, the following fields will match: @traffic@ and @traffic_statuses@, @observed_generation@ and @generation@, @latest_ready_revision@ and @latest_created_revision@. If reconciliation failed, @traffic_statuses@,
      -- @observed_generation@, and @latest_ready_revision@ will have the state of the last serving revision, or empty for newly created Services. Additional information on the failure can be found in @terminal_condition@ and @conditions@.
    , reconciling :: (Core.Maybe Core.Bool)
      -- | Output only. Reserved for future use.
    , satisfiesPzs :: (Core.Maybe Core.Bool)
      -- | Optional. Specifies service-level scaling settings
    , scaling :: (Core.Maybe GoogleCloudRunV2ServiceScaling)
      -- | Required. The template used to create revisions for this Service.
    , template :: (Core.Maybe GoogleCloudRunV2RevisionTemplate)
      -- | Output only. The Condition of this Service, containing its readiness status, and detailed error information in case it did not reach a serving state. See comments in @reconciling@ for additional information on reconciliation process in Cloud Run.
    , terminalCondition :: (Core.Maybe GoogleCloudRunV2Condition)
      -- | Optional. Specifies how to distribute traffic over a collection of Revisions belonging to the Service. If traffic is empty or not provided, defaults to 100% traffic to the latest @Ready@ Revision.
    , traffic :: (Core.Maybe [GoogleCloudRunV2TrafficTarget])
      -- | Output only. Detailed status information for corresponding traffic targets. See comments in @reconciling@ for additional information on reconciliation process in Cloud Run.
    , trafficStatuses :: (Core.Maybe [GoogleCloudRunV2TrafficTargetStatus])
      -- | Output only. Server assigned unique identifier for the trigger. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
    , uid :: (Core.Maybe Core.Text)
      -- | Output only. The last-modified time.
    , updateTime :: (Core.Maybe Core.DateTime)
      -- | Output only. The main URI in which this Service is serving traffic.
    , uri :: (Core.Maybe Core.Text)
      -- | Output only. All URLs serving traffic for this Service.
    , urls :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2Service' with the minimum fields required to make a request.
newGoogleCloudRunV2Service 
    ::  GoogleCloudRunV2Service
newGoogleCloudRunV2Service =
  GoogleCloudRunV2Service
    { annotations = Core.Nothing
    , binaryAuthorization = Core.Nothing
    , client = Core.Nothing
    , clientVersion = Core.Nothing
    , conditions = Core.Nothing
    , createTime = Core.Nothing
    , creator = Core.Nothing
    , customAudiences = Core.Nothing
    , defaultUriDisabled = Core.Nothing
    , deleteTime = Core.Nothing
    , description = Core.Nothing
    , etag = Core.Nothing
    , expireTime = Core.Nothing
    , generation = Core.Nothing
    , ingress = Core.Nothing
    , invokerIamDisabled = Core.Nothing
    , labels = Core.Nothing
    , lastModifier = Core.Nothing
    , latestCreatedRevision = Core.Nothing
    , latestReadyRevision = Core.Nothing
    , launchStage = Core.Nothing
    , name = Core.Nothing
    , observedGeneration = Core.Nothing
    , reconciling = Core.Nothing
    , satisfiesPzs = Core.Nothing
    , scaling = Core.Nothing
    , template = Core.Nothing
    , terminalCondition = Core.Nothing
    , traffic = Core.Nothing
    , trafficStatuses = Core.Nothing
    , uid = Core.Nothing
    , updateTime = Core.Nothing
    , uri = Core.Nothing
    , urls = Core.Nothing
    }

instance Core.FromJSON GoogleCloudRunV2Service where
        parseJSON
          = Core.withObject "GoogleCloudRunV2Service"
              (\ o ->
                 GoogleCloudRunV2Service Core.<$>
                   (o Core..:? "annotations") Core.<*>
                     (o Core..:? "binaryAuthorization")
                     Core.<*> (o Core..:? "client")
                     Core.<*> (o Core..:? "clientVersion")
                     Core.<*> (o Core..:? "conditions")
                     Core.<*> (o Core..:? "createTime")
                     Core.<*> (o Core..:? "creator")
                     Core.<*> (o Core..:? "customAudiences")
                     Core.<*> (o Core..:? "defaultUriDisabled")
                     Core.<*> (o Core..:? "deleteTime")
                     Core.<*> (o Core..:? "description")
                     Core.<*> (o Core..:? "etag")
                     Core.<*> (o Core..:? "expireTime")
                     Core.<*>
                     (o Core..:? "generation" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "ingress")
                     Core.<*> (o Core..:? "invokerIamDisabled")
                     Core.<*> (o Core..:? "labels")
                     Core.<*> (o Core..:? "lastModifier")
                     Core.<*> (o Core..:? "latestCreatedRevision")
                     Core.<*> (o Core..:? "latestReadyRevision")
                     Core.<*> (o Core..:? "launchStage")
                     Core.<*> (o Core..:? "name")
                     Core.<*>
                     (o Core..:? "observedGeneration" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "reconciling")
                     Core.<*> (o Core..:? "satisfiesPzs")
                     Core.<*> (o Core..:? "scaling")
                     Core.<*> (o Core..:? "template")
                     Core.<*> (o Core..:? "terminalCondition")
                     Core.<*> (o Core..:? "traffic")
                     Core.<*> (o Core..:? "trafficStatuses")
                     Core.<*> (o Core..:? "uid")
                     Core.<*> (o Core..:? "updateTime")
                     Core.<*> (o Core..:? "uri")
                     Core.<*> (o Core..:? "urls"))

instance Core.ToJSON GoogleCloudRunV2Service where
        toJSON GoogleCloudRunV2Service{..}
          = Core.object
              (Core.catMaybes
                 [("annotations" Core..=) Core.<$> annotations,
                  ("binaryAuthorization" Core..=) Core.<$>
                    binaryAuthorization,
                  ("client" Core..=) Core.<$> client,
                  ("clientVersion" Core..=) Core.<$> clientVersion,
                  ("conditions" Core..=) Core.<$> conditions,
                  ("createTime" Core..=) Core.<$> createTime,
                  ("creator" Core..=) Core.<$> creator,
                  ("customAudiences" Core..=) Core.<$> customAudiences,
                  ("defaultUriDisabled" Core..=) Core.<$>
                    defaultUriDisabled,
                  ("deleteTime" Core..=) Core.<$> deleteTime,
                  ("description" Core..=) Core.<$> description,
                  ("etag" Core..=) Core.<$> etag,
                  ("expireTime" Core..=) Core.<$> expireTime,
                  ("generation" Core..=) Core.. Core.AsText Core.<$>
                    generation,
                  ("ingress" Core..=) Core.<$> ingress,
                  ("invokerIamDisabled" Core..=) Core.<$>
                    invokerIamDisabled,
                  ("labels" Core..=) Core.<$> labels,
                  ("lastModifier" Core..=) Core.<$> lastModifier,
                  ("latestCreatedRevision" Core..=) Core.<$>
                    latestCreatedRevision,
                  ("latestReadyRevision" Core..=) Core.<$>
                    latestReadyRevision,
                  ("launchStage" Core..=) Core.<$> launchStage,
                  ("name" Core..=) Core.<$> name,
                  ("observedGeneration" Core..=) Core.. Core.AsText
                    Core.<$> observedGeneration,
                  ("reconciling" Core..=) Core.<$> reconciling,
                  ("satisfiesPzs" Core..=) Core.<$> satisfiesPzs,
                  ("scaling" Core..=) Core.<$> scaling,
                  ("template" Core..=) Core.<$> template,
                  ("terminalCondition" Core..=) Core.<$>
                    terminalCondition,
                  ("traffic" Core..=) Core.<$> traffic,
                  ("trafficStatuses" Core..=) Core.<$> trafficStatuses,
                  ("uid" Core..=) Core.<$> uid,
                  ("updateTime" Core..=) Core.<$> updateTime,
                  ("uri" Core..=) Core.<$> uri,
                  ("urls" Core..=) Core.<$> urls])


-- | Optional. Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with @run.googleapis.com@, @cloud.googleapis.com@, @serving.knative.dev@, or @autoscaling.knative.dev@ namespaces, and they will be rejected in new resources. All system annotations in v1 now have a corresponding field in v2 Service. This field follows Kubernetes annotations\' namespacing, limits, and rules.
--
-- /See:/ 'newGoogleCloudRunV2Service_Annotations' smart constructor.
newtype GoogleCloudRunV2Service_Annotations = GoogleCloudRunV2Service_Annotations
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2Service_Annotations' with the minimum fields required to make a request.
newGoogleCloudRunV2Service_Annotations 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> GoogleCloudRunV2Service_Annotations
newGoogleCloudRunV2Service_Annotations additional =
  GoogleCloudRunV2Service_Annotations {additional = additional}

instance Core.FromJSON
           GoogleCloudRunV2Service_Annotations
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2Service_Annotations"
              (\ o ->
                 GoogleCloudRunV2Service_Annotations Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           GoogleCloudRunV2Service_Annotations
         where
        toJSON GoogleCloudRunV2Service_Annotations{..}
          = Core.toJSON additional


-- | Optional. Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google\'s billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https:\/\/cloud.google.com\/resource-manager\/docs\/creating-managing-labels or https:\/\/cloud.google.com\/run\/docs\/configuring\/labels. Cloud Run API v2 does not support labels with @run.googleapis.com@, @cloud.googleapis.com@, @serving.knative.dev@, or @autoscaling.knative.dev@ namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 Service.
--
-- /See:/ 'newGoogleCloudRunV2Service_Labels' smart constructor.
newtype GoogleCloudRunV2Service_Labels = GoogleCloudRunV2Service_Labels
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2Service_Labels' with the minimum fields required to make a request.
newGoogleCloudRunV2Service_Labels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> GoogleCloudRunV2Service_Labels
newGoogleCloudRunV2Service_Labels additional =
  GoogleCloudRunV2Service_Labels {additional = additional}

instance Core.FromJSON GoogleCloudRunV2Service_Labels
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2Service_Labels"
              (\ o ->
                 GoogleCloudRunV2Service_Labels Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON GoogleCloudRunV2Service_Labels
         where
        toJSON GoogleCloudRunV2Service_Labels{..}
          = Core.toJSON additional


-- | Settings for Cloud Service Mesh. For more information see https:\/\/cloud.google.com\/service-mesh\/docs\/overview.
--
-- /See:/ 'newGoogleCloudRunV2ServiceMesh' smart constructor.
newtype GoogleCloudRunV2ServiceMesh = GoogleCloudRunV2ServiceMesh
    {
      -- | The Mesh resource name. Format: @projects\/{project}\/locations\/global\/meshes\/{mesh}@, where @{project}@ can be project id or number.
      mesh :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2ServiceMesh' with the minimum fields required to make a request.
newGoogleCloudRunV2ServiceMesh 
    ::  GoogleCloudRunV2ServiceMesh
newGoogleCloudRunV2ServiceMesh =
  GoogleCloudRunV2ServiceMesh {mesh = Core.Nothing}

instance Core.FromJSON GoogleCloudRunV2ServiceMesh
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2ServiceMesh"
              (\ o ->
                 GoogleCloudRunV2ServiceMesh Core.<$>
                   (o Core..:? "mesh"))

instance Core.ToJSON GoogleCloudRunV2ServiceMesh
         where
        toJSON GoogleCloudRunV2ServiceMesh{..}
          = Core.object
              (Core.catMaybes [("mesh" Core..=) Core.<$> mesh])


-- | Scaling settings applied at the service level rather than at the revision level.
--
-- /See:/ 'newGoogleCloudRunV2ServiceScaling' smart constructor.
data GoogleCloudRunV2ServiceScaling = GoogleCloudRunV2ServiceScaling
    {
      -- | Optional. total instance count for the service in manual scaling mode. This number of instances is divided among all revisions with specified traffic based on the percent of traffic they are receiving.
      manualInstanceCount :: (Core.Maybe Core.Int32)
      -- | Optional. total min instances for the service. This number of instances is divided among all revisions with specified traffic based on the percent of traffic they are receiving.
    , minInstanceCount :: (Core.Maybe Core.Int32)
      -- | Optional. The scaling mode for the service.
    , scalingMode :: (Core.Maybe GoogleCloudRunV2ServiceScaling_ScalingMode)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2ServiceScaling' with the minimum fields required to make a request.
newGoogleCloudRunV2ServiceScaling 
    ::  GoogleCloudRunV2ServiceScaling
newGoogleCloudRunV2ServiceScaling =
  GoogleCloudRunV2ServiceScaling
    { manualInstanceCount = Core.Nothing
    , minInstanceCount = Core.Nothing
    , scalingMode = Core.Nothing
    }

instance Core.FromJSON GoogleCloudRunV2ServiceScaling
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2ServiceScaling"
              (\ o ->
                 GoogleCloudRunV2ServiceScaling Core.<$>
                   (o Core..:? "manualInstanceCount") Core.<*>
                     (o Core..:? "minInstanceCount")
                     Core.<*> (o Core..:? "scalingMode"))

instance Core.ToJSON GoogleCloudRunV2ServiceScaling
         where
        toJSON GoogleCloudRunV2ServiceScaling{..}
          = Core.object
              (Core.catMaybes
                 [("manualInstanceCount" Core..=) Core.<$>
                    manualInstanceCount,
                  ("minInstanceCount" Core..=) Core.<$>
                    minInstanceCount,
                  ("scalingMode" Core..=) Core.<$> scalingMode])


-- | Location of the source in an archive file in Google Cloud Storage.
--
-- /See:/ 'newGoogleCloudRunV2StorageSource' smart constructor.
data GoogleCloudRunV2StorageSource = GoogleCloudRunV2StorageSource
    {
      -- | Required. Google Cloud Storage bucket containing the source (see <https://cloud.google.com/storage/docs/bucket-naming#requirements Bucket Name Requirements>).
      bucket :: (Core.Maybe Core.Text)
      -- | Optional. Google Cloud Storage generation for the object. If the generation is omitted, the latest generation will be used.
    , generation :: (Core.Maybe Core.Int64)
      -- | Required. Google Cloud Storage object containing the source. This object must be a gzipped archive file (@.tar.gz@) containing source to build.
    , object :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2StorageSource' with the minimum fields required to make a request.
newGoogleCloudRunV2StorageSource 
    ::  GoogleCloudRunV2StorageSource
newGoogleCloudRunV2StorageSource =
  GoogleCloudRunV2StorageSource
    {bucket = Core.Nothing, generation = Core.Nothing, object = Core.Nothing}

instance Core.FromJSON GoogleCloudRunV2StorageSource
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2StorageSource"
              (\ o ->
                 GoogleCloudRunV2StorageSource Core.<$>
                   (o Core..:? "bucket") Core.<*>
                     (o Core..:? "generation" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "object"))

instance Core.ToJSON GoogleCloudRunV2StorageSource
         where
        toJSON GoogleCloudRunV2StorageSource{..}
          = Core.object
              (Core.catMaybes
                 [("bucket" Core..=) Core.<$> bucket,
                  ("generation" Core..=) Core.. Core.AsText Core.<$>
                    generation,
                  ("object" Core..=) Core.<$> object])


-- | Request message for submitting a Build.
--
-- /See:/ 'newGoogleCloudRunV2SubmitBuildRequest' smart constructor.
data GoogleCloudRunV2SubmitBuildRequest = GoogleCloudRunV2SubmitBuildRequest
    {
      -- | Build the source using Buildpacks.
      buildpackBuild :: (Core.Maybe GoogleCloudRunV2BuildpacksBuild)
      -- | Build the source using Docker. This means the source has a Dockerfile.
    , dockerBuild :: (Core.Maybe GoogleCloudRunV2DockerBuild)
      -- | Required. Artifact Registry URI to store the built image.
    , imageUri :: (Core.Maybe Core.Text)
      -- | Optional. The service account to use for the build. If not set, the default Cloud Build service account for the project will be used.
    , serviceAccount :: (Core.Maybe Core.Text)
      -- | Required. Source for the build.
    , storageSource :: (Core.Maybe GoogleCloudRunV2StorageSource)
      -- | Optional. Additional tags to annotate the build.
    , tags :: (Core.Maybe [Core.Text])
      -- | Optional. Name of the Cloud Build Custom Worker Pool that should be used to build the function. The format of this field is @projects\/{project}\/locations\/{region}\/workerPools\/{workerPool}@ where @{project}@ and @{region}@ are the project id and region respectively where the worker pool is defined and @{workerPool}@ is the short name of the worker pool.
    , workerPool :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2SubmitBuildRequest' with the minimum fields required to make a request.
newGoogleCloudRunV2SubmitBuildRequest 
    ::  GoogleCloudRunV2SubmitBuildRequest
newGoogleCloudRunV2SubmitBuildRequest =
  GoogleCloudRunV2SubmitBuildRequest
    { buildpackBuild = Core.Nothing
    , dockerBuild = Core.Nothing
    , imageUri = Core.Nothing
    , serviceAccount = Core.Nothing
    , storageSource = Core.Nothing
    , tags = Core.Nothing
    , workerPool = Core.Nothing
    }

instance Core.FromJSON
           GoogleCloudRunV2SubmitBuildRequest
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2SubmitBuildRequest"
              (\ o ->
                 GoogleCloudRunV2SubmitBuildRequest Core.<$>
                   (o Core..:? "buildpackBuild") Core.<*>
                     (o Core..:? "dockerBuild")
                     Core.<*> (o Core..:? "imageUri")
                     Core.<*> (o Core..:? "serviceAccount")
                     Core.<*> (o Core..:? "storageSource")
                     Core.<*> (o Core..:? "tags")
                     Core.<*> (o Core..:? "workerPool"))

instance Core.ToJSON
           GoogleCloudRunV2SubmitBuildRequest
         where
        toJSON GoogleCloudRunV2SubmitBuildRequest{..}
          = Core.object
              (Core.catMaybes
                 [("buildpackBuild" Core..=) Core.<$> buildpackBuild,
                  ("dockerBuild" Core..=) Core.<$> dockerBuild,
                  ("imageUri" Core..=) Core.<$> imageUri,
                  ("serviceAccount" Core..=) Core.<$> serviceAccount,
                  ("storageSource" Core..=) Core.<$> storageSource,
                  ("tags" Core..=) Core.<$> tags,
                  ("workerPool" Core..=) Core.<$> workerPool])


-- | Response message for submitting a Build.
--
-- /See:/ 'newGoogleCloudRunV2SubmitBuildResponse' smart constructor.
data GoogleCloudRunV2SubmitBuildResponse = GoogleCloudRunV2SubmitBuildResponse
    {
      -- | URI of the base builder image in Artifact Registry being used in the build. Used to opt into automatic base image updates.
      baseImageUri :: (Core.Maybe Core.Text)
      -- | Warning message for the base image.
    , baseImageWarning :: (Core.Maybe Core.Text)
      -- | Cloud Build operation to be polled via CloudBuild API.
    , buildOperation :: (Core.Maybe GoogleLongrunningOperation)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2SubmitBuildResponse' with the minimum fields required to make a request.
newGoogleCloudRunV2SubmitBuildResponse 
    ::  GoogleCloudRunV2SubmitBuildResponse
newGoogleCloudRunV2SubmitBuildResponse =
  GoogleCloudRunV2SubmitBuildResponse
    { baseImageUri = Core.Nothing
    , baseImageWarning = Core.Nothing
    , buildOperation = Core.Nothing
    }

instance Core.FromJSON
           GoogleCloudRunV2SubmitBuildResponse
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2SubmitBuildResponse"
              (\ o ->
                 GoogleCloudRunV2SubmitBuildResponse Core.<$>
                   (o Core..:? "baseImageUri") Core.<*>
                     (o Core..:? "baseImageWarning")
                     Core.<*> (o Core..:? "buildOperation"))

instance Core.ToJSON
           GoogleCloudRunV2SubmitBuildResponse
         where
        toJSON GoogleCloudRunV2SubmitBuildResponse{..}
          = Core.object
              (Core.catMaybes
                 [("baseImageUri" Core..=) Core.<$> baseImageUri,
                  ("baseImageWarning" Core..=) Core.<$>
                    baseImageWarning,
                  ("buildOperation" Core..=) Core.<$> buildOperation])


-- | TCPSocketAction describes an action based on opening a socket
--
-- /See:/ 'newGoogleCloudRunV2TCPSocketAction' smart constructor.
newtype GoogleCloudRunV2TCPSocketAction = GoogleCloudRunV2TCPSocketAction
    {
      -- | Optional. Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.
      port :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2TCPSocketAction' with the minimum fields required to make a request.
newGoogleCloudRunV2TCPSocketAction 
    ::  GoogleCloudRunV2TCPSocketAction
newGoogleCloudRunV2TCPSocketAction =
  GoogleCloudRunV2TCPSocketAction {port = Core.Nothing}

instance Core.FromJSON
           GoogleCloudRunV2TCPSocketAction
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2TCPSocketAction"
              (\ o ->
                 GoogleCloudRunV2TCPSocketAction Core.<$>
                   (o Core..:? "port"))

instance Core.ToJSON GoogleCloudRunV2TCPSocketAction
         where
        toJSON GoogleCloudRunV2TCPSocketAction{..}
          = Core.object
              (Core.catMaybes [("port" Core..=) Core.<$> port])


-- | Task represents a single run of a container to completion.
--
-- /See:/ 'newGoogleCloudRunV2Task' smart constructor.
data GoogleCloudRunV2Task = GoogleCloudRunV2Task
    {
      -- | Output only. Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
      annotations :: (Core.Maybe GoogleCloudRunV2Task_Annotations)
      -- | Output only. Represents time when the Task was completed. It is not guaranteed to be set in happens-before order across separate operations.
    , completionTime :: (Core.Maybe Core.DateTime)
      -- | Output only. The Condition of this Task, containing its readiness status, and detailed error information in case it did not reach the desired state.
    , conditions :: (Core.Maybe [GoogleCloudRunV2Condition])
      -- | Holds the single container that defines the unit of execution for this task.
    , containers :: (Core.Maybe [GoogleCloudRunV2Container])
      -- | Output only. Represents time when the task was created by the system. It is not guaranteed to be set in happens-before order across separate operations.
    , createTime :: (Core.Maybe Core.DateTime)
      -- | Output only. For a deleted resource, the deletion time. It is only populated as a response to a Delete request.
    , deleteTime :: (Core.Maybe Core.DateTime)
      -- | Output only. A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https:\/\/cloud.google.com\/run\/docs\/securing\/using-cmek
    , encryptionKey :: (Core.Maybe Core.Text)
      -- | Output only. A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
    , etag :: (Core.Maybe Core.Text)
      -- | Output only. The name of the parent Execution.
    , execution :: (Core.Maybe Core.Text)
      -- | The execution environment being used to host this Task.
    , executionEnvironment :: (Core.Maybe GoogleCloudRunV2Task_ExecutionEnvironment)
      -- | Output only. For a deleted resource, the time after which it will be permamently deleted. It is only populated as a response to a Delete request.
    , expireTime :: (Core.Maybe Core.DateTime)
      -- | Output only. A number that monotonically increases every time the user modifies the desired state.
    , generation :: (Core.Maybe Core.Int64)
      -- | Output only. Index of the Task, unique per execution, and beginning at 0.
    , index :: (Core.Maybe Core.Int32)
      -- | Output only. The name of the parent Job.
    , job :: (Core.Maybe Core.Text)
      -- | Output only. Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google\'s billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https:\/\/cloud.google.com\/resource-manager\/docs\/creating-managing-labels or https:\/\/cloud.google.com\/run\/docs\/configuring\/labels
    , labels :: (Core.Maybe GoogleCloudRunV2Task_Labels)
      -- | Output only. Result of the last attempt of this Task.
    , lastAttemptResult :: (Core.Maybe GoogleCloudRunV2TaskAttemptResult)
      -- | Output only. URI where logs for this execution can be found in Cloud Console.
    , logUri :: (Core.Maybe Core.Text)
      -- | Number of retries allowed per Task, before marking this Task failed.
    , maxRetries :: (Core.Maybe Core.Int32)
      -- | Output only. The unique name of this Task.
    , name :: (Core.Maybe Core.Text)
      -- | Output only. The generation of this Task. See comments in @Job.reconciling@ for additional information on reconciliation process in Cloud Run.
    , observedGeneration :: (Core.Maybe Core.Int64)
      -- | Output only. Indicates whether the resource\'s reconciliation is still in progress. See comments in @Job.reconciling@ for additional information on reconciliation process in Cloud Run.
    , reconciling :: (Core.Maybe Core.Bool)
      -- | Output only. The number of times this Task was retried. Tasks are retried when they fail up to the maxRetries limit.
    , retried :: (Core.Maybe Core.Int32)
      -- | Output only. Reserved for future use.
    , satisfiesPzs :: (Core.Maybe Core.Bool)
      -- | Output only. Represents time when the task was scheduled to run by the system. It is not guaranteed to be set in happens-before order across separate operations.
    , scheduledTime :: (Core.Maybe Core.DateTime)
      -- | Email address of the IAM service account associated with the Task of a Job. The service account represents the identity of the running task, and determines what permissions the task has. If not provided, the task will use the project\'s default service account.
    , serviceAccount :: (Core.Maybe Core.Text)
      -- | Output only. Represents time when the task started to run. It is not guaranteed to be set in happens-before order across separate operations.
    , startTime :: (Core.Maybe Core.DateTime)
      -- | Max allowed time duration the Task may be active before the system will actively try to mark it failed and kill associated containers. This applies per attempt of a task, meaning each retry can run for the full timeout.
    , timeout :: (Core.Maybe Core.Duration)
      -- | Output only. Server assigned unique identifier for the Task. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
    , uid :: (Core.Maybe Core.Text)
      -- | Output only. The last-modified time.
    , updateTime :: (Core.Maybe Core.DateTime)
      -- | A list of Volumes to make available to containers.
    , volumes :: (Core.Maybe [GoogleCloudRunV2Volume])
      -- | Output only. VPC Access configuration to use for this Task. For more information, visit https:\/\/cloud.google.com\/run\/docs\/configuring\/connecting-vpc.
    , vpcAccess :: (Core.Maybe GoogleCloudRunV2VpcAccess)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2Task' with the minimum fields required to make a request.
newGoogleCloudRunV2Task 
    ::  GoogleCloudRunV2Task
newGoogleCloudRunV2Task =
  GoogleCloudRunV2Task
    { annotations = Core.Nothing
    , completionTime = Core.Nothing
    , conditions = Core.Nothing
    , containers = Core.Nothing
    , createTime = Core.Nothing
    , deleteTime = Core.Nothing
    , encryptionKey = Core.Nothing
    , etag = Core.Nothing
    , execution = Core.Nothing
    , executionEnvironment = Core.Nothing
    , expireTime = Core.Nothing
    , generation = Core.Nothing
    , index = Core.Nothing
    , job = Core.Nothing
    , labels = Core.Nothing
    , lastAttemptResult = Core.Nothing
    , logUri = Core.Nothing
    , maxRetries = Core.Nothing
    , name = Core.Nothing
    , observedGeneration = Core.Nothing
    , reconciling = Core.Nothing
    , retried = Core.Nothing
    , satisfiesPzs = Core.Nothing
    , scheduledTime = Core.Nothing
    , serviceAccount = Core.Nothing
    , startTime = Core.Nothing
    , timeout = Core.Nothing
    , uid = Core.Nothing
    , updateTime = Core.Nothing
    , volumes = Core.Nothing
    , vpcAccess = Core.Nothing
    }

instance Core.FromJSON GoogleCloudRunV2Task where
        parseJSON
          = Core.withObject "GoogleCloudRunV2Task"
              (\ o ->
                 GoogleCloudRunV2Task Core.<$>
                   (o Core..:? "annotations") Core.<*>
                     (o Core..:? "completionTime")
                     Core.<*> (o Core..:? "conditions")
                     Core.<*> (o Core..:? "containers")
                     Core.<*> (o Core..:? "createTime")
                     Core.<*> (o Core..:? "deleteTime")
                     Core.<*> (o Core..:? "encryptionKey")
                     Core.<*> (o Core..:? "etag")
                     Core.<*> (o Core..:? "execution")
                     Core.<*> (o Core..:? "executionEnvironment")
                     Core.<*> (o Core..:? "expireTime")
                     Core.<*>
                     (o Core..:? "generation" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "index")
                     Core.<*> (o Core..:? "job")
                     Core.<*> (o Core..:? "labels")
                     Core.<*> (o Core..:? "lastAttemptResult")
                     Core.<*> (o Core..:? "logUri")
                     Core.<*> (o Core..:? "maxRetries")
                     Core.<*> (o Core..:? "name")
                     Core.<*>
                     (o Core..:? "observedGeneration" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "reconciling")
                     Core.<*> (o Core..:? "retried")
                     Core.<*> (o Core..:? "satisfiesPzs")
                     Core.<*> (o Core..:? "scheduledTime")
                     Core.<*> (o Core..:? "serviceAccount")
                     Core.<*> (o Core..:? "startTime")
                     Core.<*> (o Core..:? "timeout")
                     Core.<*> (o Core..:? "uid")
                     Core.<*> (o Core..:? "updateTime")
                     Core.<*> (o Core..:? "volumes")
                     Core.<*> (o Core..:? "vpcAccess"))

instance Core.ToJSON GoogleCloudRunV2Task where
        toJSON GoogleCloudRunV2Task{..}
          = Core.object
              (Core.catMaybes
                 [("annotations" Core..=) Core.<$> annotations,
                  ("completionTime" Core..=) Core.<$> completionTime,
                  ("conditions" Core..=) Core.<$> conditions,
                  ("containers" Core..=) Core.<$> containers,
                  ("createTime" Core..=) Core.<$> createTime,
                  ("deleteTime" Core..=) Core.<$> deleteTime,
                  ("encryptionKey" Core..=) Core.<$> encryptionKey,
                  ("etag" Core..=) Core.<$> etag,
                  ("execution" Core..=) Core.<$> execution,
                  ("executionEnvironment" Core..=) Core.<$>
                    executionEnvironment,
                  ("expireTime" Core..=) Core.<$> expireTime,
                  ("generation" Core..=) Core.. Core.AsText Core.<$>
                    generation,
                  ("index" Core..=) Core.<$> index,
                  ("job" Core..=) Core.<$> job,
                  ("labels" Core..=) Core.<$> labels,
                  ("lastAttemptResult" Core..=) Core.<$>
                    lastAttemptResult,
                  ("logUri" Core..=) Core.<$> logUri,
                  ("maxRetries" Core..=) Core.<$> maxRetries,
                  ("name" Core..=) Core.<$> name,
                  ("observedGeneration" Core..=) Core.. Core.AsText
                    Core.<$> observedGeneration,
                  ("reconciling" Core..=) Core.<$> reconciling,
                  ("retried" Core..=) Core.<$> retried,
                  ("satisfiesPzs" Core..=) Core.<$> satisfiesPzs,
                  ("scheduledTime" Core..=) Core.<$> scheduledTime,
                  ("serviceAccount" Core..=) Core.<$> serviceAccount,
                  ("startTime" Core..=) Core.<$> startTime,
                  ("timeout" Core..=) Core.<$> timeout,
                  ("uid" Core..=) Core.<$> uid,
                  ("updateTime" Core..=) Core.<$> updateTime,
                  ("volumes" Core..=) Core.<$> volumes,
                  ("vpcAccess" Core..=) Core.<$> vpcAccess])


-- | Output only. Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
--
-- /See:/ 'newGoogleCloudRunV2Task_Annotations' smart constructor.
newtype GoogleCloudRunV2Task_Annotations = GoogleCloudRunV2Task_Annotations
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2Task_Annotations' with the minimum fields required to make a request.
newGoogleCloudRunV2Task_Annotations 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> GoogleCloudRunV2Task_Annotations
newGoogleCloudRunV2Task_Annotations additional =
  GoogleCloudRunV2Task_Annotations {additional = additional}

instance Core.FromJSON
           GoogleCloudRunV2Task_Annotations
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2Task_Annotations"
              (\ o ->
                 GoogleCloudRunV2Task_Annotations Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON GoogleCloudRunV2Task_Annotations
         where
        toJSON GoogleCloudRunV2Task_Annotations{..}
          = Core.toJSON additional


-- | Output only. Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google\'s billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https:\/\/cloud.google.com\/resource-manager\/docs\/creating-managing-labels or https:\/\/cloud.google.com\/run\/docs\/configuring\/labels
--
-- /See:/ 'newGoogleCloudRunV2Task_Labels' smart constructor.
newtype GoogleCloudRunV2Task_Labels = GoogleCloudRunV2Task_Labels
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2Task_Labels' with the minimum fields required to make a request.
newGoogleCloudRunV2Task_Labels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> GoogleCloudRunV2Task_Labels
newGoogleCloudRunV2Task_Labels additional =
  GoogleCloudRunV2Task_Labels {additional = additional}

instance Core.FromJSON GoogleCloudRunV2Task_Labels
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2Task_Labels"
              (\ o ->
                 GoogleCloudRunV2Task_Labels Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON GoogleCloudRunV2Task_Labels
         where
        toJSON GoogleCloudRunV2Task_Labels{..}
          = Core.toJSON additional


-- | Result of a task attempt.
--
-- /See:/ 'newGoogleCloudRunV2TaskAttemptResult' smart constructor.
data GoogleCloudRunV2TaskAttemptResult = GoogleCloudRunV2TaskAttemptResult
    {
      -- | Output only. The exit code of this attempt. This may be unset if the container was unable to exit cleanly with a code due to some other failure. See status field for possible failure details.
      exitCode :: (Core.Maybe Core.Int32)
      -- | Output only. The status of this attempt. If the status code is OK, then the attempt succeeded.
    , status :: (Core.Maybe GoogleRpcStatus)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2TaskAttemptResult' with the minimum fields required to make a request.
newGoogleCloudRunV2TaskAttemptResult 
    ::  GoogleCloudRunV2TaskAttemptResult
newGoogleCloudRunV2TaskAttemptResult =
  GoogleCloudRunV2TaskAttemptResult
    {exitCode = Core.Nothing, status = Core.Nothing}

instance Core.FromJSON
           GoogleCloudRunV2TaskAttemptResult
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2TaskAttemptResult"
              (\ o ->
                 GoogleCloudRunV2TaskAttemptResult Core.<$>
                   (o Core..:? "exitCode") Core.<*>
                     (o Core..:? "status"))

instance Core.ToJSON
           GoogleCloudRunV2TaskAttemptResult
         where
        toJSON GoogleCloudRunV2TaskAttemptResult{..}
          = Core.object
              (Core.catMaybes
                 [("exitCode" Core..=) Core.<$> exitCode,
                  ("status" Core..=) Core.<$> status])


-- | TaskTemplate describes the data a task should have when created from a template.
--
-- /See:/ 'newGoogleCloudRunV2TaskTemplate' smart constructor.
data GoogleCloudRunV2TaskTemplate = GoogleCloudRunV2TaskTemplate
    {
      -- | Holds the single container that defines the unit of execution for this task.
      containers :: (Core.Maybe [GoogleCloudRunV2Container])
      -- | A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https:\/\/cloud.google.com\/run\/docs\/securing\/using-cmek
    , encryptionKey :: (Core.Maybe Core.Text)
      -- | Optional. The execution environment being used to host this Task.
    , executionEnvironment :: (Core.Maybe GoogleCloudRunV2TaskTemplate_ExecutionEnvironment)
      -- | Number of retries allowed per Task, before marking this Task failed. Defaults to 3.
    , maxRetries :: (Core.Maybe Core.Int32)
      -- | Optional. Email address of the IAM service account associated with the Task of a Job. The service account represents the identity of the running task, and determines what permissions the task has. If not provided, the task will use the project\'s default service account.
    , serviceAccount :: (Core.Maybe Core.Text)
      -- | Optional. Max allowed time duration the Task may be active before the system will actively try to mark it failed and kill associated containers. This applies per attempt of a task, meaning each retry can run for the full timeout. Defaults to 600 seconds.
    , timeout :: (Core.Maybe Core.Duration)
      -- | Optional. A list of Volumes to make available to containers.
    , volumes :: (Core.Maybe [GoogleCloudRunV2Volume])
      -- | Optional. VPC Access configuration to use for this Task. For more information, visit https:\/\/cloud.google.com\/run\/docs\/configuring\/connecting-vpc.
    , vpcAccess :: (Core.Maybe GoogleCloudRunV2VpcAccess)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2TaskTemplate' with the minimum fields required to make a request.
newGoogleCloudRunV2TaskTemplate 
    ::  GoogleCloudRunV2TaskTemplate
newGoogleCloudRunV2TaskTemplate =
  GoogleCloudRunV2TaskTemplate
    { containers = Core.Nothing
    , encryptionKey = Core.Nothing
    , executionEnvironment = Core.Nothing
    , maxRetries = Core.Nothing
    , serviceAccount = Core.Nothing
    , timeout = Core.Nothing
    , volumes = Core.Nothing
    , vpcAccess = Core.Nothing
    }

instance Core.FromJSON GoogleCloudRunV2TaskTemplate
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2TaskTemplate"
              (\ o ->
                 GoogleCloudRunV2TaskTemplate Core.<$>
                   (o Core..:? "containers") Core.<*>
                     (o Core..:? "encryptionKey")
                     Core.<*> (o Core..:? "executionEnvironment")
                     Core.<*> (o Core..:? "maxRetries")
                     Core.<*> (o Core..:? "serviceAccount")
                     Core.<*> (o Core..:? "timeout")
                     Core.<*> (o Core..:? "volumes")
                     Core.<*> (o Core..:? "vpcAccess"))

instance Core.ToJSON GoogleCloudRunV2TaskTemplate
         where
        toJSON GoogleCloudRunV2TaskTemplate{..}
          = Core.object
              (Core.catMaybes
                 [("containers" Core..=) Core.<$> containers,
                  ("encryptionKey" Core..=) Core.<$> encryptionKey,
                  ("executionEnvironment" Core..=) Core.<$>
                    executionEnvironment,
                  ("maxRetries" Core..=) Core.<$> maxRetries,
                  ("serviceAccount" Core..=) Core.<$> serviceAccount,
                  ("timeout" Core..=) Core.<$> timeout,
                  ("volumes" Core..=) Core.<$> volumes,
                  ("vpcAccess" Core..=) Core.<$> vpcAccess])


-- | Holds a single traffic routing entry for the Service. Allocations can be done to a specific Revision name, or pointing to the latest Ready Revision.
--
-- /See:/ 'newGoogleCloudRunV2TrafficTarget' smart constructor.
data GoogleCloudRunV2TrafficTarget = GoogleCloudRunV2TrafficTarget
    {
      -- | Specifies percent of the traffic to this Revision. This defaults to zero if unspecified.
      percent :: (Core.Maybe Core.Int32)
      -- | Revision to which to send this portion of traffic, if traffic allocation is by revision.
    , revision :: (Core.Maybe Core.Text)
      -- | Indicates a string to be part of the URI to exclusively reference this target.
    , tag :: (Core.Maybe Core.Text)
      -- | The allocation type for this traffic target.
    , type' :: (Core.Maybe GoogleCloudRunV2TrafficTarget_Type)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2TrafficTarget' with the minimum fields required to make a request.
newGoogleCloudRunV2TrafficTarget 
    ::  GoogleCloudRunV2TrafficTarget
newGoogleCloudRunV2TrafficTarget =
  GoogleCloudRunV2TrafficTarget
    { percent = Core.Nothing
    , revision = Core.Nothing
    , tag = Core.Nothing
    , type' = Core.Nothing
    }

instance Core.FromJSON GoogleCloudRunV2TrafficTarget
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2TrafficTarget"
              (\ o ->
                 GoogleCloudRunV2TrafficTarget Core.<$>
                   (o Core..:? "percent") Core.<*>
                     (o Core..:? "revision")
                     Core.<*> (o Core..:? "tag")
                     Core.<*> (o Core..:? "type"))

instance Core.ToJSON GoogleCloudRunV2TrafficTarget
         where
        toJSON GoogleCloudRunV2TrafficTarget{..}
          = Core.object
              (Core.catMaybes
                 [("percent" Core..=) Core.<$> percent,
                  ("revision" Core..=) Core.<$> revision,
                  ("tag" Core..=) Core.<$> tag,
                  ("type" Core..=) Core.<$> type'])


-- | Represents the observed state of a single @TrafficTarget@ entry.
--
-- /See:/ 'newGoogleCloudRunV2TrafficTargetStatus' smart constructor.
data GoogleCloudRunV2TrafficTargetStatus = GoogleCloudRunV2TrafficTargetStatus
    {
      -- | Specifies percent of the traffic to this Revision.
      percent :: (Core.Maybe Core.Int32)
      -- | Revision to which this traffic is sent.
    , revision :: (Core.Maybe Core.Text)
      -- | Indicates the string used in the URI to exclusively reference this target.
    , tag :: (Core.Maybe Core.Text)
      -- | The allocation type for this traffic target.
    , type' :: (Core.Maybe GoogleCloudRunV2TrafficTargetStatus_Type)
      -- | Displays the target URI.
    , uri :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2TrafficTargetStatus' with the minimum fields required to make a request.
newGoogleCloudRunV2TrafficTargetStatus 
    ::  GoogleCloudRunV2TrafficTargetStatus
newGoogleCloudRunV2TrafficTargetStatus =
  GoogleCloudRunV2TrafficTargetStatus
    { percent = Core.Nothing
    , revision = Core.Nothing
    , tag = Core.Nothing
    , type' = Core.Nothing
    , uri = Core.Nothing
    }

instance Core.FromJSON
           GoogleCloudRunV2TrafficTargetStatus
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2TrafficTargetStatus"
              (\ o ->
                 GoogleCloudRunV2TrafficTargetStatus Core.<$>
                   (o Core..:? "percent") Core.<*>
                     (o Core..:? "revision")
                     Core.<*> (o Core..:? "tag")
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "uri"))

instance Core.ToJSON
           GoogleCloudRunV2TrafficTargetStatus
         where
        toJSON GoogleCloudRunV2TrafficTargetStatus{..}
          = Core.object
              (Core.catMaybes
                 [("percent" Core..=) Core.<$> percent,
                  ("revision" Core..=) Core.<$> revision,
                  ("tag" Core..=) Core.<$> tag,
                  ("type" Core..=) Core.<$> type',
                  ("uri" Core..=) Core.<$> uri])


-- | VersionToPath maps a specific version of a secret to a relative file to mount to, relative to VolumeMount\'s mount_path.
--
-- /See:/ 'newGoogleCloudRunV2VersionToPath' smart constructor.
data GoogleCloudRunV2VersionToPath = GoogleCloudRunV2VersionToPath
    {
      -- | Integer octal mode bits to use on this file, must be a value between 01 and 0777 (octal). If 0 or not set, the Volume\'s default mode will be used. Notes * Internally, a umask of 0222 will be applied to any non-zero value. * This is an integer representation of the mode bits. So, the octal integer value should look exactly as the chmod numeric notation with a leading zero. Some examples: for chmod 640 (u=rw,g=r), set to 0640 (octal) or 416 (base-10). For chmod 755 (u=rwx,g=rx,o=rx), set to 0755 (octal) or 493 (base-10). * This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
      mode :: (Core.Maybe Core.Int32)
      -- | Required. The relative path of the secret in the container.
    , path :: (Core.Maybe Core.Text)
      -- | The Cloud Secret Manager secret version. Can be \'latest\' for the latest value, or an integer or a secret alias for a specific version.
    , version :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2VersionToPath' with the minimum fields required to make a request.
newGoogleCloudRunV2VersionToPath 
    ::  GoogleCloudRunV2VersionToPath
newGoogleCloudRunV2VersionToPath =
  GoogleCloudRunV2VersionToPath
    {mode = Core.Nothing, path = Core.Nothing, version = Core.Nothing}

instance Core.FromJSON GoogleCloudRunV2VersionToPath
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2VersionToPath"
              (\ o ->
                 GoogleCloudRunV2VersionToPath Core.<$>
                   (o Core..:? "mode") Core.<*> (o Core..:? "path")
                     Core.<*> (o Core..:? "version"))

instance Core.ToJSON GoogleCloudRunV2VersionToPath
         where
        toJSON GoogleCloudRunV2VersionToPath{..}
          = Core.object
              (Core.catMaybes
                 [("mode" Core..=) Core.<$> mode,
                  ("path" Core..=) Core.<$> path,
                  ("version" Core..=) Core.<$> version])


-- | Volume represents a named volume in a container.
--
-- /See:/ 'newGoogleCloudRunV2Volume' smart constructor.
data GoogleCloudRunV2Volume = GoogleCloudRunV2Volume
    {
      -- | For Cloud SQL volumes, contains the specific instances that should be mounted. Visit https:\/\/cloud.google.com\/sql\/docs\/mysql\/connect-run for more information on how to connect Cloud SQL and Cloud Run.
      cloudSqlInstance :: (Core.Maybe GoogleCloudRunV2CloudSqlInstance)
      -- | Ephemeral storage used as a shared volume.
    , emptyDir :: (Core.Maybe GoogleCloudRunV2EmptyDirVolumeSource)
      -- | Persistent storage backed by a Google Cloud Storage bucket.
    , gcs :: (Core.Maybe GoogleCloudRunV2GCSVolumeSource)
      -- | Required. Volume\'s name.
    , name :: (Core.Maybe Core.Text)
      -- | For NFS Voumes, contains the path to the nfs Volume
    , nfs :: (Core.Maybe GoogleCloudRunV2NFSVolumeSource)
      -- | Secret represents a secret that should populate this volume.
    , secret :: (Core.Maybe GoogleCloudRunV2SecretVolumeSource)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2Volume' with the minimum fields required to make a request.
newGoogleCloudRunV2Volume 
    ::  GoogleCloudRunV2Volume
newGoogleCloudRunV2Volume =
  GoogleCloudRunV2Volume
    { cloudSqlInstance = Core.Nothing
    , emptyDir = Core.Nothing
    , gcs = Core.Nothing
    , name = Core.Nothing
    , nfs = Core.Nothing
    , secret = Core.Nothing
    }

instance Core.FromJSON GoogleCloudRunV2Volume where
        parseJSON
          = Core.withObject "GoogleCloudRunV2Volume"
              (\ o ->
                 GoogleCloudRunV2Volume Core.<$>
                   (o Core..:? "cloudSqlInstance") Core.<*>
                     (o Core..:? "emptyDir")
                     Core.<*> (o Core..:? "gcs")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "nfs")
                     Core.<*> (o Core..:? "secret"))

instance Core.ToJSON GoogleCloudRunV2Volume where
        toJSON GoogleCloudRunV2Volume{..}
          = Core.object
              (Core.catMaybes
                 [("cloudSqlInstance" Core..=) Core.<$>
                    cloudSqlInstance,
                  ("emptyDir" Core..=) Core.<$> emptyDir,
                  ("gcs" Core..=) Core.<$> gcs,
                  ("name" Core..=) Core.<$> name,
                  ("nfs" Core..=) Core.<$> nfs,
                  ("secret" Core..=) Core.<$> secret])


-- | VolumeMount describes a mounting of a Volume within a container.
--
-- /See:/ 'newGoogleCloudRunV2VolumeMount' smart constructor.
data GoogleCloudRunV2VolumeMount = GoogleCloudRunV2VolumeMount
    {
      -- | Required. Path within the container at which the volume should be mounted. Must not contain \':\'. For Cloud SQL volumes, it can be left empty, or must otherwise be @\/cloudsql@. All instances defined in the Volume will be available as @\/cloudsql\/[instance]@. For more information on Cloud SQL volumes, visit https:\/\/cloud.google.com\/sql\/docs\/mysql\/connect-run
      mountPath :: (Core.Maybe Core.Text)
      -- | Required. This must match the Name of a Volume.
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2VolumeMount' with the minimum fields required to make a request.
newGoogleCloudRunV2VolumeMount 
    ::  GoogleCloudRunV2VolumeMount
newGoogleCloudRunV2VolumeMount =
  GoogleCloudRunV2VolumeMount {mountPath = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON GoogleCloudRunV2VolumeMount
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2VolumeMount"
              (\ o ->
                 GoogleCloudRunV2VolumeMount Core.<$>
                   (o Core..:? "mountPath") Core.<*>
                     (o Core..:? "name"))

instance Core.ToJSON GoogleCloudRunV2VolumeMount
         where
        toJSON GoogleCloudRunV2VolumeMount{..}
          = Core.object
              (Core.catMaybes
                 [("mountPath" Core..=) Core.<$> mountPath,
                  ("name" Core..=) Core.<$> name])


-- | VPC Access settings. For more information on sending traffic to a VPC network, visit https:\/\/cloud.google.com\/run\/docs\/configuring\/connecting-vpc.
--
-- /See:/ 'newGoogleCloudRunV2VpcAccess' smart constructor.
data GoogleCloudRunV2VpcAccess = GoogleCloudRunV2VpcAccess
    {
      -- | VPC Access connector name. Format: @projects\/{project}\/locations\/{location}\/connectors\/{connector}@, where @{project}@ can be project id or number. For more information on sending traffic to a VPC network via a connector, visit https:\/\/cloud.google.com\/run\/docs\/configuring\/vpc-connectors.
      connector :: (Core.Maybe Core.Text)
      -- | Optional. Traffic VPC egress settings. If not provided, it defaults to PRIVATE/RANGES/ONLY.
    , egress :: (Core.Maybe GoogleCloudRunV2VpcAccess_Egress)
      -- | Optional. Direct VPC egress settings. Currently only single network interface is supported.
    , networkInterfaces :: (Core.Maybe [GoogleCloudRunV2NetworkInterface])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2VpcAccess' with the minimum fields required to make a request.
newGoogleCloudRunV2VpcAccess 
    ::  GoogleCloudRunV2VpcAccess
newGoogleCloudRunV2VpcAccess =
  GoogleCloudRunV2VpcAccess
    { connector = Core.Nothing
    , egress = Core.Nothing
    , networkInterfaces = Core.Nothing
    }

instance Core.FromJSON GoogleCloudRunV2VpcAccess
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2VpcAccess"
              (\ o ->
                 GoogleCloudRunV2VpcAccess Core.<$>
                   (o Core..:? "connector") Core.<*>
                     (o Core..:? "egress")
                     Core.<*> (o Core..:? "networkInterfaces"))

instance Core.ToJSON GoogleCloudRunV2VpcAccess where
        toJSON GoogleCloudRunV2VpcAccess{..}
          = Core.object
              (Core.catMaybes
                 [("connector" Core..=) Core.<$> connector,
                  ("egress" Core..=) Core.<$> egress,
                  ("networkInterfaces" Core..=) Core.<$>
                    networkInterfaces])


-- | ApprovalConfig describes configuration for manual approval of a build.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1ApprovalConfig' smart constructor.
newtype GoogleDevtoolsCloudbuildV1ApprovalConfig = GoogleDevtoolsCloudbuildV1ApprovalConfig
    {
      -- | Whether or not approval is needed. If this is set on a build, it will become pending when created, and will need to be explicitly approved to start.
      approvalRequired :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1ApprovalConfig' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1ApprovalConfig 
    ::  GoogleDevtoolsCloudbuildV1ApprovalConfig
newGoogleDevtoolsCloudbuildV1ApprovalConfig =
  GoogleDevtoolsCloudbuildV1ApprovalConfig {approvalRequired = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1ApprovalConfig
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsCloudbuildV1ApprovalConfig"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1ApprovalConfig Core.<$>
                   (o Core..:? "approvalRequired"))

instance Core.ToJSON
           GoogleDevtoolsCloudbuildV1ApprovalConfig
         where
        toJSON GoogleDevtoolsCloudbuildV1ApprovalConfig{..}
          = Core.object
              (Core.catMaybes
                 [("approvalRequired" Core..=) Core.<$>
                    approvalRequired])


-- | ApprovalResult describes the decision and associated metadata of a manual approval of a build.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1ApprovalResult' smart constructor.
data GoogleDevtoolsCloudbuildV1ApprovalResult = GoogleDevtoolsCloudbuildV1ApprovalResult
    {
      -- | Output only. The time when the approval decision was made.
      approvalTime :: (Core.Maybe Core.DateTime)
      -- | Output only. Email of the user that called the ApproveBuild API to approve or reject a build at the time that the API was called.
    , approverAccount :: (Core.Maybe Core.Text)
      -- | Optional. An optional comment for this manual approval result.
    , comment :: (Core.Maybe Core.Text)
      -- | Required. The decision of this manual approval.
    , decision :: (Core.Maybe GoogleDevtoolsCloudbuildV1ApprovalResult_Decision)
      -- | Optional. An optional URL tied to this manual approval result. This field is essentially the same as comment, except that it will be rendered by the UI differently. An example use case is a link to an external job that approved this Build.
    , url :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1ApprovalResult' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1ApprovalResult 
    ::  GoogleDevtoolsCloudbuildV1ApprovalResult
newGoogleDevtoolsCloudbuildV1ApprovalResult =
  GoogleDevtoolsCloudbuildV1ApprovalResult
    { approvalTime = Core.Nothing
    , approverAccount = Core.Nothing
    , comment = Core.Nothing
    , decision = Core.Nothing
    , url = Core.Nothing
    }

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1ApprovalResult
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsCloudbuildV1ApprovalResult"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1ApprovalResult Core.<$>
                   (o Core..:? "approvalTime") Core.<*>
                     (o Core..:? "approverAccount")
                     Core.<*> (o Core..:? "comment")
                     Core.<*> (o Core..:? "decision")
                     Core.<*> (o Core..:? "url"))

instance Core.ToJSON
           GoogleDevtoolsCloudbuildV1ApprovalResult
         where
        toJSON GoogleDevtoolsCloudbuildV1ApprovalResult{..}
          = Core.object
              (Core.catMaybes
                 [("approvalTime" Core..=) Core.<$> approvalTime,
                  ("approverAccount" Core..=) Core.<$> approverAccount,
                  ("comment" Core..=) Core.<$> comment,
                  ("decision" Core..=) Core.<$> decision,
                  ("url" Core..=) Core.<$> url])


-- | Files in the workspace to upload to Cloud Storage upon successful completion of all build steps.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1ArtifactObjects' smart constructor.
data GoogleDevtoolsCloudbuildV1ArtifactObjects = GoogleDevtoolsCloudbuildV1ArtifactObjects
    {
      -- | Cloud Storage bucket and optional object path, in the form \"gs:\/\/bucket\/path\/to\/somewhere\/\". (see <https://cloud.google.com/storage/docs/bucket-naming#requirements Bucket Name Requirements>). Files in the workspace matching any path pattern will be uploaded to Cloud Storage with this location as a prefix.
      location :: (Core.Maybe Core.Text)
      -- | Path globs used to match files in the build\'s workspace.
    , paths :: (Core.Maybe [Core.Text])
      -- | Output only. Stores timing information for pushing all artifact objects.
    , timing :: (Core.Maybe GoogleDevtoolsCloudbuildV1TimeSpan)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1ArtifactObjects' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1ArtifactObjects 
    ::  GoogleDevtoolsCloudbuildV1ArtifactObjects
newGoogleDevtoolsCloudbuildV1ArtifactObjects =
  GoogleDevtoolsCloudbuildV1ArtifactObjects
    {location = Core.Nothing, paths = Core.Nothing, timing = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1ArtifactObjects
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsCloudbuildV1ArtifactObjects"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1ArtifactObjects Core.<$>
                   (o Core..:? "location") Core.<*> (o Core..:? "paths")
                     Core.<*> (o Core..:? "timing"))

instance Core.ToJSON
           GoogleDevtoolsCloudbuildV1ArtifactObjects
         where
        toJSON GoogleDevtoolsCloudbuildV1ArtifactObjects{..}
          = Core.object
              (Core.catMaybes
                 [("location" Core..=) Core.<$> location,
                  ("paths" Core..=) Core.<$> paths,
                  ("timing" Core..=) Core.<$> timing])


-- | Artifacts produced by a build that should be uploaded upon successful completion of all build steps.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1Artifacts' smart constructor.
data GoogleDevtoolsCloudbuildV1Artifacts = GoogleDevtoolsCloudbuildV1Artifacts
    {
      -- | A list of images to be pushed upon the successful completion of all build steps. The images will be pushed using the builder service account\'s credentials. The digests of the pushed images will be stored in the Build resource\'s results field. If any of the images fail to be pushed, the build is marked FAILURE.
      images :: (Core.Maybe [Core.Text])
      -- | A list of Maven artifacts to be uploaded to Artifact Registry upon successful completion of all build steps. Artifacts in the workspace matching specified paths globs will be uploaded to the specified Artifact Registry repository using the builder service account\'s credentials. If any artifacts fail to be pushed, the build is marked FAILURE.
    , mavenArtifacts :: (Core.Maybe [GoogleDevtoolsCloudbuildV1MavenArtifact])
      -- | A list of npm packages to be uploaded to Artifact Registry upon successful completion of all build steps. Npm packages in the specified paths will be uploaded to the specified Artifact Registry repository using the builder service account\'s credentials. If any packages fail to be pushed, the build is marked FAILURE.
    , npmPackages :: (Core.Maybe [GoogleDevtoolsCloudbuildV1NpmPackage])
      -- | A list of objects to be uploaded to Cloud Storage upon successful completion of all build steps. Files in the workspace matching specified paths globs will be uploaded to the specified Cloud Storage location using the builder service account\'s credentials. The location and generation of the uploaded objects will be stored in the Build resource\'s results field. If any objects fail to be pushed, the build is marked FAILURE.
    , objects :: (Core.Maybe GoogleDevtoolsCloudbuildV1ArtifactObjects)
      -- | A list of Python packages to be uploaded to Artifact Registry upon successful completion of all build steps. The build service account credentials will be used to perform the upload. If any objects fail to be pushed, the build is marked FAILURE.
    , pythonPackages :: (Core.Maybe [GoogleDevtoolsCloudbuildV1PythonPackage])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1Artifacts' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1Artifacts 
    ::  GoogleDevtoolsCloudbuildV1Artifacts
newGoogleDevtoolsCloudbuildV1Artifacts =
  GoogleDevtoolsCloudbuildV1Artifacts
    { images = Core.Nothing
    , mavenArtifacts = Core.Nothing
    , npmPackages = Core.Nothing
    , objects = Core.Nothing
    , pythonPackages = Core.Nothing
    }

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1Artifacts
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsCloudbuildV1Artifacts"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1Artifacts Core.<$>
                   (o Core..:? "images") Core.<*>
                     (o Core..:? "mavenArtifacts")
                     Core.<*> (o Core..:? "npmPackages")
                     Core.<*> (o Core..:? "objects")
                     Core.<*> (o Core..:? "pythonPackages"))

instance Core.ToJSON
           GoogleDevtoolsCloudbuildV1Artifacts
         where
        toJSON GoogleDevtoolsCloudbuildV1Artifacts{..}
          = Core.object
              (Core.catMaybes
                 [("images" Core..=) Core.<$> images,
                  ("mavenArtifacts" Core..=) Core.<$> mavenArtifacts,
                  ("npmPackages" Core..=) Core.<$> npmPackages,
                  ("objects" Core..=) Core.<$> objects,
                  ("pythonPackages" Core..=) Core.<$> pythonPackages])


-- | A build resource in the Cloud Build API. At a high level, a @Build@ describes where to find source code, how to build it (for example, the builder image to run on the source), and where to store the built artifacts. Fields can include the following variables, which will be expanded when the build is created: - $PROJECT/ID: the project ID of the build. - $PROJECT/NUMBER: the project number of the build. - $LOCATION: the location\/region of the build. - $BUILD/ID: the autogenerated ID of the build. - $REPO/NAME: the source repository name specified by RepoSource. - $BRANCH/NAME: the branch name specified by RepoSource. - $TAG/NAME: the tag name specified by RepoSource. - $REVISION/ID or $COMMIT/SHA: the commit SHA specified by RepoSource or resolved from the specified branch or tag. - $SHORT/SHA: first 7 characters of $REVISION/ID or $COMMIT_SHA.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1Build' smart constructor.
data GoogleDevtoolsCloudbuildV1Build = GoogleDevtoolsCloudbuildV1Build
    {
      -- | Output only. Describes this build\'s approval configuration, status, and result.
      approval :: (Core.Maybe GoogleDevtoolsCloudbuildV1BuildApproval)
      -- | Artifacts produced by the build that should be uploaded upon successful completion of all build steps.
    , artifacts :: (Core.Maybe GoogleDevtoolsCloudbuildV1Artifacts)
      -- | Secrets and secret environment variables.
    , availableSecrets :: (Core.Maybe GoogleDevtoolsCloudbuildV1Secrets)
      -- | Output only. The ID of the @BuildTrigger@ that triggered this build, if it was triggered automatically.
    , buildTriggerId :: (Core.Maybe Core.Text)
      -- | Output only. Time at which the request to create the build was received.
    , createTime :: (Core.Maybe Core.DateTime)
      -- | Output only. Contains information about the build when status=FAILURE.
    , failureInfo :: (Core.Maybe GoogleDevtoolsCloudbuildV1FailureInfo)
      -- | Output only. Time at which execution of the build was finished. The difference between finish/time and start/time is the duration of the build\'s execution.
    , finishTime :: (Core.Maybe Core.DateTime)
      -- | Optional. Configuration for git operations.
    , gitConfig :: (Core.Maybe GoogleDevtoolsCloudbuildV1GitConfig)
      -- | Output only. Unique identifier of the build.
    , id :: (Core.Maybe Core.Text)
      -- | A list of images to be pushed upon the successful completion of all build steps. The images are pushed using the builder service account\'s credentials. The digests of the pushed images will be stored in the @Build@ resource\'s results field. If any of the images fail to be pushed, the build status is marked @FAILURE@.
    , images :: (Core.Maybe [Core.Text])
      -- | Output only. URL to logs for this build in Google Cloud Console.
    , logUrl :: (Core.Maybe Core.Text)
      -- | Cloud Storage bucket where logs should be written (see <https://cloud.google.com/storage/docs/bucket-naming#requirements Bucket Name Requirements>). Logs file names will be of the format @${logs_bucket}\/log-${build_id}.txt@.
    , logsBucket :: (Core.Maybe Core.Text)
      -- | Output only. The \'Build\' name with format: @projects\/{project}\/locations\/{location}\/builds\/{build}@, where {build} is a unique identifier generated by the service.
    , name :: (Core.Maybe Core.Text)
      -- | Special options for this build.
    , options :: (Core.Maybe GoogleDevtoolsCloudbuildV1BuildOptions)
      -- | Output only. ID of the project.
    , projectId :: (Core.Maybe Core.Text)
      -- | TTL in queue for this build. If provided and the build is enqueued longer than this value, the build will expire and the build status will be @EXPIRED@. The TTL starts ticking from create_time.
    , queueTtl :: (Core.Maybe Core.Duration)
      -- | Output only. Results of the build.
    , results :: (Core.Maybe GoogleDevtoolsCloudbuildV1Results)
      -- | Secrets to decrypt using Cloud Key Management Service. Note: Secret Manager is the recommended technique for managing sensitive data with Cloud Build. Use @available_secrets@ to configure builds to access secrets from Secret Manager. For instructions, see: https:\/\/cloud.google.com\/cloud-build\/docs\/securing-builds\/use-secrets
    , secrets :: (Core.Maybe [GoogleDevtoolsCloudbuildV1Secret])
      -- | IAM service account whose credentials will be used at build runtime. Must be of the format @projects\/{PROJECT_ID}\/serviceAccounts\/{ACCOUNT}@. ACCOUNT can be email address or uniqueId of the service account.
    , serviceAccount :: (Core.Maybe Core.Text)
      -- | Optional. The location of the source files to build.
    , source :: (Core.Maybe GoogleDevtoolsCloudbuildV1Source)
      -- | Output only. A permanent fixed identifier for source.
    , sourceProvenance :: (Core.Maybe GoogleDevtoolsCloudbuildV1SourceProvenance)
      -- | Output only. Time at which execution of the build was started.
    , startTime :: (Core.Maybe Core.DateTime)
      -- | Output only. Status of the build.
    , status :: (Core.Maybe GoogleDevtoolsCloudbuildV1Build_Status)
      -- | Output only. Customer-readable message about the current status.
    , statusDetail :: (Core.Maybe Core.Text)
      -- | Required. The operations to be performed on the workspace.
    , steps :: (Core.Maybe [GoogleDevtoolsCloudbuildV1BuildStep])
      -- | Substitutions data for @Build@ resource.
    , substitutions :: (Core.Maybe GoogleDevtoolsCloudbuildV1Build_Substitutions)
      -- | Tags for annotation of a @Build@. These are not docker tags.
    , tags :: (Core.Maybe [Core.Text])
      -- | Amount of time that this build should be allowed to run, to second granularity. If this amount of time elapses, work on the build will cease and the build status will be @TIMEOUT@. @timeout@ starts ticking from @startTime@. Default time is 60 minutes.
    , timeout :: (Core.Maybe Core.Duration)
      -- | Output only. Stores timing information for phases of the build. Valid keys are: * BUILD: time to execute all build steps. * PUSH: time to push all artifacts including docker images and non docker artifacts. * FETCHSOURCE: time to fetch source. * SETUPBUILD: time to set up build. If the build does not specify source or images, these keys will not be included.
    , timing :: (Core.Maybe GoogleDevtoolsCloudbuildV1Build_Timing)
      -- | Output only. Non-fatal problems encountered during the execution of the build.
    , warnings :: (Core.Maybe [GoogleDevtoolsCloudbuildV1Warning])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1Build' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1Build 
    ::  GoogleDevtoolsCloudbuildV1Build
newGoogleDevtoolsCloudbuildV1Build =
  GoogleDevtoolsCloudbuildV1Build
    { approval = Core.Nothing
    , artifacts = Core.Nothing
    , availableSecrets = Core.Nothing
    , buildTriggerId = Core.Nothing
    , createTime = Core.Nothing
    , failureInfo = Core.Nothing
    , finishTime = Core.Nothing
    , gitConfig = Core.Nothing
    , id = Core.Nothing
    , images = Core.Nothing
    , logUrl = Core.Nothing
    , logsBucket = Core.Nothing
    , name = Core.Nothing
    , options = Core.Nothing
    , projectId = Core.Nothing
    , queueTtl = Core.Nothing
    , results = Core.Nothing
    , secrets = Core.Nothing
    , serviceAccount = Core.Nothing
    , source = Core.Nothing
    , sourceProvenance = Core.Nothing
    , startTime = Core.Nothing
    , status = Core.Nothing
    , statusDetail = Core.Nothing
    , steps = Core.Nothing
    , substitutions = Core.Nothing
    , tags = Core.Nothing
    , timeout = Core.Nothing
    , timing = Core.Nothing
    , warnings = Core.Nothing
    }

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1Build
         where
        parseJSON
          = Core.withObject "GoogleDevtoolsCloudbuildV1Build"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1Build Core.<$>
                   (o Core..:? "approval") Core.<*>
                     (o Core..:? "artifacts")
                     Core.<*> (o Core..:? "availableSecrets")
                     Core.<*> (o Core..:? "buildTriggerId")
                     Core.<*> (o Core..:? "createTime")
                     Core.<*> (o Core..:? "failureInfo")
                     Core.<*> (o Core..:? "finishTime")
                     Core.<*> (o Core..:? "gitConfig")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "images")
                     Core.<*> (o Core..:? "logUrl")
                     Core.<*> (o Core..:? "logsBucket")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "options")
                     Core.<*> (o Core..:? "projectId")
                     Core.<*> (o Core..:? "queueTtl")
                     Core.<*> (o Core..:? "results")
                     Core.<*> (o Core..:? "secrets")
                     Core.<*> (o Core..:? "serviceAccount")
                     Core.<*> (o Core..:? "source")
                     Core.<*> (o Core..:? "sourceProvenance")
                     Core.<*> (o Core..:? "startTime")
                     Core.<*> (o Core..:? "status")
                     Core.<*> (o Core..:? "statusDetail")
                     Core.<*> (o Core..:? "steps")
                     Core.<*> (o Core..:? "substitutions")
                     Core.<*> (o Core..:? "tags")
                     Core.<*> (o Core..:? "timeout")
                     Core.<*> (o Core..:? "timing")
                     Core.<*> (o Core..:? "warnings"))

instance Core.ToJSON GoogleDevtoolsCloudbuildV1Build
         where
        toJSON GoogleDevtoolsCloudbuildV1Build{..}
          = Core.object
              (Core.catMaybes
                 [("approval" Core..=) Core.<$> approval,
                  ("artifacts" Core..=) Core.<$> artifacts,
                  ("availableSecrets" Core..=) Core.<$>
                    availableSecrets,
                  ("buildTriggerId" Core..=) Core.<$> buildTriggerId,
                  ("createTime" Core..=) Core.<$> createTime,
                  ("failureInfo" Core..=) Core.<$> failureInfo,
                  ("finishTime" Core..=) Core.<$> finishTime,
                  ("gitConfig" Core..=) Core.<$> gitConfig,
                  ("id" Core..=) Core.<$> id,
                  ("images" Core..=) Core.<$> images,
                  ("logUrl" Core..=) Core.<$> logUrl,
                  ("logsBucket" Core..=) Core.<$> logsBucket,
                  ("name" Core..=) Core.<$> name,
                  ("options" Core..=) Core.<$> options,
                  ("projectId" Core..=) Core.<$> projectId,
                  ("queueTtl" Core..=) Core.<$> queueTtl,
                  ("results" Core..=) Core.<$> results,
                  ("secrets" Core..=) Core.<$> secrets,
                  ("serviceAccount" Core..=) Core.<$> serviceAccount,
                  ("source" Core..=) Core.<$> source,
                  ("sourceProvenance" Core..=) Core.<$>
                    sourceProvenance,
                  ("startTime" Core..=) Core.<$> startTime,
                  ("status" Core..=) Core.<$> status,
                  ("statusDetail" Core..=) Core.<$> statusDetail,
                  ("steps" Core..=) Core.<$> steps,
                  ("substitutions" Core..=) Core.<$> substitutions,
                  ("tags" Core..=) Core.<$> tags,
                  ("timeout" Core..=) Core.<$> timeout,
                  ("timing" Core..=) Core.<$> timing,
                  ("warnings" Core..=) Core.<$> warnings])


-- | Substitutions data for @Build@ resource.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1Build_Substitutions' smart constructor.
newtype GoogleDevtoolsCloudbuildV1Build_Substitutions = GoogleDevtoolsCloudbuildV1Build_Substitutions
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1Build_Substitutions' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1Build_Substitutions 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> GoogleDevtoolsCloudbuildV1Build_Substitutions
newGoogleDevtoolsCloudbuildV1Build_Substitutions additional =
  GoogleDevtoolsCloudbuildV1Build_Substitutions {additional = additional}

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1Build_Substitutions
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsCloudbuildV1Build_Substitutions"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1Build_Substitutions
                   Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON
           GoogleDevtoolsCloudbuildV1Build_Substitutions
         where
        toJSON
          GoogleDevtoolsCloudbuildV1Build_Substitutions{..}
          = Core.toJSON additional


-- | Output only. Stores timing information for phases of the build. Valid keys are: * BUILD: time to execute all build steps. * PUSH: time to push all artifacts including docker images and non docker artifacts. * FETCHSOURCE: time to fetch source. * SETUPBUILD: time to set up build. If the build does not specify source or images, these keys will not be included.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1Build_Timing' smart constructor.
newtype GoogleDevtoolsCloudbuildV1Build_Timing = GoogleDevtoolsCloudbuildV1Build_Timing
    {
      -- | 
      additional :: (Core.HashMap Core.Text GoogleDevtoolsCloudbuildV1TimeSpan)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1Build_Timing' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1Build_Timing 
    ::  Core.HashMap Core.Text GoogleDevtoolsCloudbuildV1TimeSpan
       -- ^  See 'additional'.
    -> GoogleDevtoolsCloudbuildV1Build_Timing
newGoogleDevtoolsCloudbuildV1Build_Timing additional =
  GoogleDevtoolsCloudbuildV1Build_Timing {additional = additional}

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1Build_Timing
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsCloudbuildV1Build_Timing"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1Build_Timing Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           GoogleDevtoolsCloudbuildV1Build_Timing
         where
        toJSON GoogleDevtoolsCloudbuildV1Build_Timing{..}
          = Core.toJSON additional


-- | BuildApproval describes a build\'s approval configuration, state, and result.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1BuildApproval' smart constructor.
data GoogleDevtoolsCloudbuildV1BuildApproval = GoogleDevtoolsCloudbuildV1BuildApproval
    {
      -- | Output only. Configuration for manual approval of this build.
      config :: (Core.Maybe GoogleDevtoolsCloudbuildV1ApprovalConfig)
      -- | Output only. Result of manual approval for this Build.
    , result :: (Core.Maybe GoogleDevtoolsCloudbuildV1ApprovalResult)
      -- | Output only. The state of this build\'s approval.
    , state :: (Core.Maybe GoogleDevtoolsCloudbuildV1BuildApproval_State)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1BuildApproval' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1BuildApproval 
    ::  GoogleDevtoolsCloudbuildV1BuildApproval
newGoogleDevtoolsCloudbuildV1BuildApproval =
  GoogleDevtoolsCloudbuildV1BuildApproval
    {config = Core.Nothing, result = Core.Nothing, state = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1BuildApproval
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsCloudbuildV1BuildApproval"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1BuildApproval Core.<$>
                   (o Core..:? "config") Core.<*> (o Core..:? "result")
                     Core.<*> (o Core..:? "state"))

instance Core.ToJSON
           GoogleDevtoolsCloudbuildV1BuildApproval
         where
        toJSON GoogleDevtoolsCloudbuildV1BuildApproval{..}
          = Core.object
              (Core.catMaybes
                 [("config" Core..=) Core.<$> config,
                  ("result" Core..=) Core.<$> result,
                  ("state" Core..=) Core.<$> state])


-- | Metadata for build operations.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1BuildOperationMetadata' smart constructor.
newtype GoogleDevtoolsCloudbuildV1BuildOperationMetadata = GoogleDevtoolsCloudbuildV1BuildOperationMetadata
    {
      -- | The build that the operation is tracking.
      build :: (Core.Maybe GoogleDevtoolsCloudbuildV1Build)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1BuildOperationMetadata' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1BuildOperationMetadata 
    ::  GoogleDevtoolsCloudbuildV1BuildOperationMetadata
newGoogleDevtoolsCloudbuildV1BuildOperationMetadata =
  GoogleDevtoolsCloudbuildV1BuildOperationMetadata {build = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1BuildOperationMetadata
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsCloudbuildV1BuildOperationMetadata"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1BuildOperationMetadata
                   Core.<$> (o Core..:? "build"))

instance Core.ToJSON
           GoogleDevtoolsCloudbuildV1BuildOperationMetadata
         where
        toJSON
          GoogleDevtoolsCloudbuildV1BuildOperationMetadata{..}
          = Core.object
              (Core.catMaybes [("build" Core..=) Core.<$> build])


-- | Optional arguments to enable specific features of builds.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1BuildOptions' smart constructor.
data GoogleDevtoolsCloudbuildV1BuildOptions = GoogleDevtoolsCloudbuildV1BuildOptions
    {
      -- | Option to include built-in and custom substitutions as env variables for all build steps.
      automapSubstitutions :: (Core.Maybe Core.Bool)
      -- | Optional. Option to specify how default logs buckets are setup.
    , defaultLogsBucketBehavior :: (Core.Maybe
   GoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior)
      -- | Requested disk size for the VM that runs the build. Note that this is /NOT/ \"disk free\"; some of the space will be used by the operating system and build utilities. Also note that this is the minimum disk size that will be allocated for the build -- the build may run with a larger disk than requested. At present, the maximum disk size is 4000GB; builds that request more than the maximum are rejected with an error.
    , diskSizeGb :: (Core.Maybe Core.Int64)
      -- | Option to specify whether or not to apply bash style string operations to the substitutions. NOTE: this is always enabled for triggered builds and cannot be overridden in the build configuration file.
    , dynamicSubstitutions :: (Core.Maybe Core.Bool)
      -- | A list of global environment variable definitions that will exist for all build steps in this build. If a variable is defined in both globally and in a build step, the variable will use the build step value. The elements are of the form \"KEY=VALUE\" for the environment variable \"KEY\" being given the value \"VALUE\".
    , env :: (Core.Maybe [Core.Text])
      -- | Option to define build log streaming behavior to Cloud Storage.
    , logStreamingOption :: (Core.Maybe
   GoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption)
      -- | Option to specify the logging mode, which determines if and where build logs are stored.
    , logging :: (Core.Maybe GoogleDevtoolsCloudbuildV1BuildOptions_Logging)
      -- | Compute Engine machine type on which to run the build.
    , machineType :: (Core.Maybe GoogleDevtoolsCloudbuildV1BuildOptions_MachineType)
      -- | Optional. Specification for execution on a @WorkerPool@. See <https://cloud.google.com/build/docs/private-pools/run-builds-in-private-pool running builds in a private pool> for more information.
    , pool :: (Core.Maybe GoogleDevtoolsCloudbuildV1PoolOption)
      -- | Requested verifiability options.
    , requestedVerifyOption :: (Core.Maybe
   GoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption)
      -- | A list of global environment variables, which are encrypted using a Cloud Key Management Service crypto key. These values must be specified in the build\'s @Secret@. These variables will be available to all build steps in this build.
    , secretEnv :: (Core.Maybe [Core.Text])
      -- | Requested hash for SourceProvenance.
    , sourceProvenanceHash :: (Core.Maybe
   [GoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem])
      -- | Option to specify behavior when there is an error in the substitution checks. NOTE: this is always set to ALLOW_LOOSE for triggered builds and cannot be overridden in the build configuration file.
    , substitutionOption :: (Core.Maybe
   GoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption)
      -- | Global list of volumes to mount for ALL build steps Each volume is created as an empty volume prior to starting the build process. Upon completion of the build, volumes and their contents are discarded. Global volume names and paths cannot conflict with the volumes defined a build step. Using a global volume in a build with only one step is not valid as it is indicative of a build request with an incorrect configuration.
    , volumes :: (Core.Maybe [GoogleDevtoolsCloudbuildV1Volume])
      -- | This field deprecated; please use @pool.name@ instead.
    , workerPool :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1BuildOptions' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1BuildOptions 
    ::  GoogleDevtoolsCloudbuildV1BuildOptions
newGoogleDevtoolsCloudbuildV1BuildOptions =
  GoogleDevtoolsCloudbuildV1BuildOptions
    { automapSubstitutions = Core.Nothing
    , defaultLogsBucketBehavior = Core.Nothing
    , diskSizeGb = Core.Nothing
    , dynamicSubstitutions = Core.Nothing
    , env = Core.Nothing
    , logStreamingOption = Core.Nothing
    , logging = Core.Nothing
    , machineType = Core.Nothing
    , pool = Core.Nothing
    , requestedVerifyOption = Core.Nothing
    , secretEnv = Core.Nothing
    , sourceProvenanceHash = Core.Nothing
    , substitutionOption = Core.Nothing
    , volumes = Core.Nothing
    , workerPool = Core.Nothing
    }

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1BuildOptions
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsCloudbuildV1BuildOptions"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1BuildOptions Core.<$>
                   (o Core..:? "automapSubstitutions") Core.<*>
                     (o Core..:? "defaultLogsBucketBehavior")
                     Core.<*>
                     (o Core..:? "diskSizeGb" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "dynamicSubstitutions")
                     Core.<*> (o Core..:? "env")
                     Core.<*> (o Core..:? "logStreamingOption")
                     Core.<*> (o Core..:? "logging")
                     Core.<*> (o Core..:? "machineType")
                     Core.<*> (o Core..:? "pool")
                     Core.<*> (o Core..:? "requestedVerifyOption")
                     Core.<*> (o Core..:? "secretEnv")
                     Core.<*> (o Core..:? "sourceProvenanceHash")
                     Core.<*> (o Core..:? "substitutionOption")
                     Core.<*> (o Core..:? "volumes")
                     Core.<*> (o Core..:? "workerPool"))

instance Core.ToJSON
           GoogleDevtoolsCloudbuildV1BuildOptions
         where
        toJSON GoogleDevtoolsCloudbuildV1BuildOptions{..}
          = Core.object
              (Core.catMaybes
                 [("automapSubstitutions" Core..=) Core.<$>
                    automapSubstitutions,
                  ("defaultLogsBucketBehavior" Core..=) Core.<$>
                    defaultLogsBucketBehavior,
                  ("diskSizeGb" Core..=) Core.. Core.AsText Core.<$>
                    diskSizeGb,
                  ("dynamicSubstitutions" Core..=) Core.<$>
                    dynamicSubstitutions,
                  ("env" Core..=) Core.<$> env,
                  ("logStreamingOption" Core..=) Core.<$>
                    logStreamingOption,
                  ("logging" Core..=) Core.<$> logging,
                  ("machineType" Core..=) Core.<$> machineType,
                  ("pool" Core..=) Core.<$> pool,
                  ("requestedVerifyOption" Core..=) Core.<$>
                    requestedVerifyOption,
                  ("secretEnv" Core..=) Core.<$> secretEnv,
                  ("sourceProvenanceHash" Core..=) Core.<$>
                    sourceProvenanceHash,
                  ("substitutionOption" Core..=) Core.<$>
                    substitutionOption,
                  ("volumes" Core..=) Core.<$> volumes,
                  ("workerPool" Core..=) Core.<$> workerPool])


-- | A step in the build pipeline.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1BuildStep' smart constructor.
data GoogleDevtoolsCloudbuildV1BuildStep = GoogleDevtoolsCloudbuildV1BuildStep
    {
      -- | Allow this build step to fail without failing the entire build if and only if the exit code is one of the specified codes. If allow_failure is also specified, this field will take precedence.
      allowExitCodes :: (Core.Maybe [Core.Int32])
      -- | Allow this build step to fail without failing the entire build. If false, the entire build will fail if this step fails. Otherwise, the build will succeed, but this step will still have a failure status. Error information will be reported in the failure_detail field.
    , allowFailure :: (Core.Maybe Core.Bool)
      -- | A list of arguments that will be presented to the step when it is started. If the image used to run the step\'s container has an entrypoint, the @args@ are used as arguments to that entrypoint. If the image does not define an entrypoint, the first element in args is used as the entrypoint, and the remainder will be used as arguments.
    , args :: (Core.Maybe [Core.Text])
      -- | Option to include built-in and custom substitutions as env variables for this build step. This option will override the global option in BuildOption.
    , automapSubstitutions :: (Core.Maybe Core.Bool)
      -- | Working directory to use when running this step\'s container. If this value is a relative path, it is relative to the build\'s working directory. If this value is absolute, it may be outside the build\'s working directory, in which case the contents of the path may not be persisted across build step executions, unless a @volume@ for that path is specified. If the build specifies a @RepoSource@ with @dir@ and a step with a @dir@, which specifies an absolute path, the @RepoSource@ @dir@ is ignored for the step\'s execution.
    , dir :: (Core.Maybe Core.Text)
      -- | Entrypoint to be used instead of the build step image\'s default entrypoint. If unset, the image\'s default entrypoint is used.
    , entrypoint :: (Core.Maybe Core.Text)
      -- | A list of environment variable definitions to be used when running a step. The elements are of the form \"KEY=VALUE\" for the environment variable \"KEY\" being given the value \"VALUE\".
    , env :: (Core.Maybe [Core.Text])
      -- | Output only. Return code from running the step.
    , exitCode :: (Core.Maybe Core.Int32)
      -- | Unique identifier for this build step, used in @wait_for@ to reference this build step as a dependency.
    , id :: (Core.Maybe Core.Text)
      -- | Required. The name of the container image that will run this particular build step. If the image is available in the host\'s Docker daemon\'s cache, it will be run directly. If not, the host will attempt to pull the image first, using the builder service account\'s credentials if necessary. The Docker daemon\'s cache will already have the latest versions of all of the officially supported build steps (<https://github.com/GoogleCloudPlatform/cloud-builders>). The Docker daemon will also have cached many of the layers for some popular images, like \"ubuntu\", \"debian\", but they will be refreshed at the time you attempt to use them. If you built an image in a previous build step, it will be stored in the host\'s Docker daemon\'s cache and is available to use as the name for a later build step.
    , name :: (Core.Maybe Core.Text)
      -- | Output only. Stores timing information for pulling this build step\'s builder image only.
    , pullTiming :: (Core.Maybe GoogleDevtoolsCloudbuildV1TimeSpan)
      -- | A shell script to be executed in the step. When script is provided, the user cannot specify the entrypoint or args.
    , script :: (Core.Maybe Core.Text)
      -- | A list of environment variables which are encrypted using a Cloud Key Management Service crypto key. These values must be specified in the build\'s @Secret@.
    , secretEnv :: (Core.Maybe [Core.Text])
      -- | Output only. Status of the build step. At this time, build step status is only updated on build completion; step status is not updated in real-time as the build progresses.
    , status :: (Core.Maybe GoogleDevtoolsCloudbuildV1BuildStep_Status)
      -- | Time limit for executing this build step. If not defined, the step has no time limit and will be allowed to continue to run until either it completes or the build itself times out.
    , timeout :: (Core.Maybe Core.Duration)
      -- | Output only. Stores timing information for executing this build step.
    , timing :: (Core.Maybe GoogleDevtoolsCloudbuildV1TimeSpan)
      -- | List of volumes to mount into the build step. Each volume is created as an empty volume prior to execution of the build step. Upon completion of the build, volumes and their contents are discarded. Using a named volume in only one step is not valid as it is indicative of a build request with an incorrect configuration.
    , volumes :: (Core.Maybe [GoogleDevtoolsCloudbuildV1Volume])
      -- | The ID(s) of the step(s) that this build step depends on. This build step will not start until all the build steps in @wait_for@ have completed successfully. If @wait_for@ is empty, this build step will start when all previous build steps in the @Build.Steps@ list have completed successfully.
    , waitFor :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1BuildStep' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1BuildStep 
    ::  GoogleDevtoolsCloudbuildV1BuildStep
newGoogleDevtoolsCloudbuildV1BuildStep =
  GoogleDevtoolsCloudbuildV1BuildStep
    { allowExitCodes = Core.Nothing
    , allowFailure = Core.Nothing
    , args = Core.Nothing
    , automapSubstitutions = Core.Nothing
    , dir = Core.Nothing
    , entrypoint = Core.Nothing
    , env = Core.Nothing
    , exitCode = Core.Nothing
    , id = Core.Nothing
    , name = Core.Nothing
    , pullTiming = Core.Nothing
    , script = Core.Nothing
    , secretEnv = Core.Nothing
    , status = Core.Nothing
    , timeout = Core.Nothing
    , timing = Core.Nothing
    , volumes = Core.Nothing
    , waitFor = Core.Nothing
    }

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1BuildStep
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsCloudbuildV1BuildStep"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1BuildStep Core.<$>
                   (o Core..:? "allowExitCodes") Core.<*>
                     (o Core..:? "allowFailure")
                     Core.<*> (o Core..:? "args")
                     Core.<*> (o Core..:? "automapSubstitutions")
                     Core.<*> (o Core..:? "dir")
                     Core.<*> (o Core..:? "entrypoint")
                     Core.<*> (o Core..:? "env")
                     Core.<*> (o Core..:? "exitCode")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "pullTiming")
                     Core.<*> (o Core..:? "script")
                     Core.<*> (o Core..:? "secretEnv")
                     Core.<*> (o Core..:? "status")
                     Core.<*> (o Core..:? "timeout")
                     Core.<*> (o Core..:? "timing")
                     Core.<*> (o Core..:? "volumes")
                     Core.<*> (o Core..:? "waitFor"))

instance Core.ToJSON
           GoogleDevtoolsCloudbuildV1BuildStep
         where
        toJSON GoogleDevtoolsCloudbuildV1BuildStep{..}
          = Core.object
              (Core.catMaybes
                 [("allowExitCodes" Core..=) Core.<$> allowExitCodes,
                  ("allowFailure" Core..=) Core.<$> allowFailure,
                  ("args" Core..=) Core.<$> args,
                  ("automapSubstitutions" Core..=) Core.<$>
                    automapSubstitutions,
                  ("dir" Core..=) Core.<$> dir,
                  ("entrypoint" Core..=) Core.<$> entrypoint,
                  ("env" Core..=) Core.<$> env,
                  ("exitCode" Core..=) Core.<$> exitCode,
                  ("id" Core..=) Core.<$> id,
                  ("name" Core..=) Core.<$> name,
                  ("pullTiming" Core..=) Core.<$> pullTiming,
                  ("script" Core..=) Core.<$> script,
                  ("secretEnv" Core..=) Core.<$> secretEnv,
                  ("status" Core..=) Core.<$> status,
                  ("timeout" Core..=) Core.<$> timeout,
                  ("timing" Core..=) Core.<$> timing,
                  ("volumes" Core..=) Core.<$> volumes,
                  ("waitFor" Core..=) Core.<$> waitFor])


-- | An image built by the pipeline.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1BuiltImage' smart constructor.
data GoogleDevtoolsCloudbuildV1BuiltImage = GoogleDevtoolsCloudbuildV1BuiltImage
    {
      -- | Docker Registry 2.0 digest.
      digest :: (Core.Maybe Core.Text)
      -- | Name used to push the container image to Google Container Registry, as presented to @docker push@.
    , name :: (Core.Maybe Core.Text)
      -- | Output only. Stores timing information for pushing the specified image.
    , pushTiming :: (Core.Maybe GoogleDevtoolsCloudbuildV1TimeSpan)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1BuiltImage' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1BuiltImage 
    ::  GoogleDevtoolsCloudbuildV1BuiltImage
newGoogleDevtoolsCloudbuildV1BuiltImage =
  GoogleDevtoolsCloudbuildV1BuiltImage
    {digest = Core.Nothing, name = Core.Nothing, pushTiming = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1BuiltImage
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsCloudbuildV1BuiltImage"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1BuiltImage Core.<$>
                   (o Core..:? "digest") Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "pushTiming"))

instance Core.ToJSON
           GoogleDevtoolsCloudbuildV1BuiltImage
         where
        toJSON GoogleDevtoolsCloudbuildV1BuiltImage{..}
          = Core.object
              (Core.catMaybes
                 [("digest" Core..=) Core.<$> digest,
                  ("name" Core..=) Core.<$> name,
                  ("pushTiming" Core..=) Core.<$> pushTiming])


-- | Location of the source in a 2nd-gen Google Cloud Build repository resource.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1ConnectedRepository' smart constructor.
data GoogleDevtoolsCloudbuildV1ConnectedRepository = GoogleDevtoolsCloudbuildV1ConnectedRepository
    {
      -- | Optional. Directory, relative to the source root, in which to run the build.
      dir :: (Core.Maybe Core.Text)
      -- | Required. Name of the Google Cloud Build repository, formatted as @projects\/*\/locations\/*\/connections\/*\/repositories\/*@.
    , repository :: (Core.Maybe Core.Text)
      -- | Required. The revision to fetch from the Git repository such as a branch, a tag, a commit SHA, or any Git ref.
    , revision :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1ConnectedRepository' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1ConnectedRepository 
    ::  GoogleDevtoolsCloudbuildV1ConnectedRepository
newGoogleDevtoolsCloudbuildV1ConnectedRepository =
  GoogleDevtoolsCloudbuildV1ConnectedRepository
    {dir = Core.Nothing, repository = Core.Nothing, revision = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1ConnectedRepository
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsCloudbuildV1ConnectedRepository"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1ConnectedRepository
                   Core.<$>
                   (o Core..:? "dir") Core.<*> (o Core..:? "repository")
                     Core.<*> (o Core..:? "revision"))

instance Core.ToJSON
           GoogleDevtoolsCloudbuildV1ConnectedRepository
         where
        toJSON
          GoogleDevtoolsCloudbuildV1ConnectedRepository{..}
          = Core.object
              (Core.catMaybes
                 [("dir" Core..=) Core.<$> dir,
                  ("repository" Core..=) Core.<$> repository,
                  ("revision" Core..=) Core.<$> revision])


-- | This config defines the location of a source through Developer Connect.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1DeveloperConnectConfig' smart constructor.
data GoogleDevtoolsCloudbuildV1DeveloperConnectConfig = GoogleDevtoolsCloudbuildV1DeveloperConnectConfig
    {
      -- | Required. Directory, relative to the source root, in which to run the build.
      dir :: (Core.Maybe Core.Text)
      -- | Required. The Developer Connect Git repository link, formatted as @projects\/*\/locations\/*\/connections\/*\/gitRepositoryLink\/*@.
    , gitRepositoryLink :: (Core.Maybe Core.Text)
      -- | Required. The revision to fetch from the Git repository such as a branch, a tag, a commit SHA, or any Git ref.
    , revision :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1DeveloperConnectConfig' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1DeveloperConnectConfig 
    ::  GoogleDevtoolsCloudbuildV1DeveloperConnectConfig
newGoogleDevtoolsCloudbuildV1DeveloperConnectConfig =
  GoogleDevtoolsCloudbuildV1DeveloperConnectConfig
    { dir = Core.Nothing
    , gitRepositoryLink = Core.Nothing
    , revision = Core.Nothing
    }

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1DeveloperConnectConfig
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsCloudbuildV1DeveloperConnectConfig"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1DeveloperConnectConfig
                   Core.<$>
                   (o Core..:? "dir") Core.<*>
                     (o Core..:? "gitRepositoryLink")
                     Core.<*> (o Core..:? "revision"))

instance Core.ToJSON
           GoogleDevtoolsCloudbuildV1DeveloperConnectConfig
         where
        toJSON
          GoogleDevtoolsCloudbuildV1DeveloperConnectConfig{..}
          = Core.object
              (Core.catMaybes
                 [("dir" Core..=) Core.<$> dir,
                  ("gitRepositoryLink" Core..=) Core.<$>
                    gitRepositoryLink,
                  ("revision" Core..=) Core.<$> revision])


-- | A fatal problem encountered during the execution of the build.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1FailureInfo' smart constructor.
data GoogleDevtoolsCloudbuildV1FailureInfo = GoogleDevtoolsCloudbuildV1FailureInfo
    {
      -- | Explains the failure issue in more detail using hard-coded text.
      detail :: (Core.Maybe Core.Text)
      -- | The name of the failure.
    , type' :: (Core.Maybe GoogleDevtoolsCloudbuildV1FailureInfo_Type)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1FailureInfo' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1FailureInfo 
    ::  GoogleDevtoolsCloudbuildV1FailureInfo
newGoogleDevtoolsCloudbuildV1FailureInfo =
  GoogleDevtoolsCloudbuildV1FailureInfo
    {detail = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1FailureInfo
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsCloudbuildV1FailureInfo"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1FailureInfo Core.<$>
                   (o Core..:? "detail") Core.<*> (o Core..:? "type"))

instance Core.ToJSON
           GoogleDevtoolsCloudbuildV1FailureInfo
         where
        toJSON GoogleDevtoolsCloudbuildV1FailureInfo{..}
          = Core.object
              (Core.catMaybes
                 [("detail" Core..=) Core.<$> detail,
                  ("type" Core..=) Core.<$> type'])


-- | Container message for hashes of byte content of files, used in SourceProvenance messages to verify integrity of source input to the build.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1FileHashes' smart constructor.
newtype GoogleDevtoolsCloudbuildV1FileHashes = GoogleDevtoolsCloudbuildV1FileHashes
    {
      -- | Collection of file hashes.
      fileHash :: (Core.Maybe [GoogleDevtoolsCloudbuildV1Hash])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1FileHashes' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1FileHashes 
    ::  GoogleDevtoolsCloudbuildV1FileHashes
newGoogleDevtoolsCloudbuildV1FileHashes =
  GoogleDevtoolsCloudbuildV1FileHashes {fileHash = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1FileHashes
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsCloudbuildV1FileHashes"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1FileHashes Core.<$>
                   (o Core..:? "fileHash"))

instance Core.ToJSON
           GoogleDevtoolsCloudbuildV1FileHashes
         where
        toJSON GoogleDevtoolsCloudbuildV1FileHashes{..}
          = Core.object
              (Core.catMaybes
                 [("fileHash" Core..=) Core.<$> fileHash])


-- | GitConfig is a configuration for git operations.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1GitConfig' smart constructor.
newtype GoogleDevtoolsCloudbuildV1GitConfig = GoogleDevtoolsCloudbuildV1GitConfig
    {
      -- | Configuration for HTTP related git operations.
      http :: (Core.Maybe GoogleDevtoolsCloudbuildV1HttpConfig)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1GitConfig' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1GitConfig 
    ::  GoogleDevtoolsCloudbuildV1GitConfig
newGoogleDevtoolsCloudbuildV1GitConfig =
  GoogleDevtoolsCloudbuildV1GitConfig {http = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1GitConfig
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsCloudbuildV1GitConfig"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1GitConfig Core.<$>
                   (o Core..:? "http"))

instance Core.ToJSON
           GoogleDevtoolsCloudbuildV1GitConfig
         where
        toJSON GoogleDevtoolsCloudbuildV1GitConfig{..}
          = Core.object
              (Core.catMaybes [("http" Core..=) Core.<$> http])


-- | Location of the source in any accessible Git repository.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1GitSource' smart constructor.
data GoogleDevtoolsCloudbuildV1GitSource = GoogleDevtoolsCloudbuildV1GitSource
    {
      -- | Optional. Directory, relative to the source root, in which to run the build. This must be a relative path. If a step\'s @dir@ is specified and is an absolute path, this value is ignored for that step\'s execution.
      dir :: (Core.Maybe Core.Text)
      -- | Optional. The revision to fetch from the Git repository such as a branch, a tag, a commit SHA, or any Git ref. Cloud Build uses @git fetch@ to fetch the revision from the Git repository; therefore make sure that the string you provide for @revision@ is parsable by the command. For information on string values accepted by @git fetch@, see https:\/\/git-scm.com\/docs\/gitrevisions#/specifying/revisions. For information on @git fetch@, see https:\/\/git-scm.com\/docs\/git-fetch.
    , revision :: (Core.Maybe Core.Text)
      -- | Required. Location of the Git repo to build. This will be used as a @git remote@, see https:\/\/git-scm.com\/docs\/git-remote.
    , url :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1GitSource' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1GitSource 
    ::  GoogleDevtoolsCloudbuildV1GitSource
newGoogleDevtoolsCloudbuildV1GitSource =
  GoogleDevtoolsCloudbuildV1GitSource
    {dir = Core.Nothing, revision = Core.Nothing, url = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1GitSource
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsCloudbuildV1GitSource"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1GitSource Core.<$>
                   (o Core..:? "dir") Core.<*> (o Core..:? "revision")
                     Core.<*> (o Core..:? "url"))

instance Core.ToJSON
           GoogleDevtoolsCloudbuildV1GitSource
         where
        toJSON GoogleDevtoolsCloudbuildV1GitSource{..}
          = Core.object
              (Core.catMaybes
                 [("dir" Core..=) Core.<$> dir,
                  ("revision" Core..=) Core.<$> revision,
                  ("url" Core..=) Core.<$> url])


-- | Container message for hash values.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1Hash' smart constructor.
data GoogleDevtoolsCloudbuildV1Hash = GoogleDevtoolsCloudbuildV1Hash
    {
      -- | The type of hash that was performed.
      type' :: (Core.Maybe GoogleDevtoolsCloudbuildV1Hash_Type)
      -- | The hash value.
    , value :: (Core.Maybe Core.Base64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1Hash' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1Hash 
    ::  GoogleDevtoolsCloudbuildV1Hash
newGoogleDevtoolsCloudbuildV1Hash =
  GoogleDevtoolsCloudbuildV1Hash {type' = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON GoogleDevtoolsCloudbuildV1Hash
         where
        parseJSON
          = Core.withObject "GoogleDevtoolsCloudbuildV1Hash"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1Hash Core.<$>
                   (o Core..:? "type") Core.<*> (o Core..:? "value"))

instance Core.ToJSON GoogleDevtoolsCloudbuildV1Hash
         where
        toJSON GoogleDevtoolsCloudbuildV1Hash{..}
          = Core.object
              (Core.catMaybes
                 [("type" Core..=) Core.<$> type',
                  ("value" Core..=) Core.<$> value])


-- | HttpConfig is a configuration for HTTP related git operations.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1HttpConfig' smart constructor.
newtype GoogleDevtoolsCloudbuildV1HttpConfig = GoogleDevtoolsCloudbuildV1HttpConfig
    {
      -- | SecretVersion resource of the HTTP proxy URL. The Service Account used in the build (either the default Service Account or user-specified Service Account) should have @secretmanager.versions.access@ permissions on this secret. The proxy URL should be in format @protocol:\/\/\@]proxyhost[:port]@.
      proxySecretVersionName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1HttpConfig' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1HttpConfig 
    ::  GoogleDevtoolsCloudbuildV1HttpConfig
newGoogleDevtoolsCloudbuildV1HttpConfig =
  GoogleDevtoolsCloudbuildV1HttpConfig {proxySecretVersionName = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1HttpConfig
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsCloudbuildV1HttpConfig"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1HttpConfig Core.<$>
                   (o Core..:? "proxySecretVersionName"))

instance Core.ToJSON
           GoogleDevtoolsCloudbuildV1HttpConfig
         where
        toJSON GoogleDevtoolsCloudbuildV1HttpConfig{..}
          = Core.object
              (Core.catMaybes
                 [("proxySecretVersionName" Core..=) Core.<$>
                    proxySecretVersionName])


-- | Pairs a set of secret environment variables mapped to encrypted values with the Cloud KMS key to use to decrypt the value.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1InlineSecret' smart constructor.
data GoogleDevtoolsCloudbuildV1InlineSecret = GoogleDevtoolsCloudbuildV1InlineSecret
    {
      -- | Map of environment variable name to its encrypted value. Secret environment variables must be unique across all of a build\'s secrets, and must be used by at least one build step. Values can be at most 64 KB in size. There can be at most 100 secret values across all of a build\'s secrets.
      envMap :: (Core.Maybe GoogleDevtoolsCloudbuildV1InlineSecret_EnvMap)
      -- | Resource name of Cloud KMS crypto key to decrypt the encrypted value. In format: projects\//\/locations\//\/keyRings\//\/cryptoKeys\//
    , kmsKeyName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1InlineSecret' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1InlineSecret 
    ::  GoogleDevtoolsCloudbuildV1InlineSecret
newGoogleDevtoolsCloudbuildV1InlineSecret =
  GoogleDevtoolsCloudbuildV1InlineSecret
    {envMap = Core.Nothing, kmsKeyName = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1InlineSecret
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsCloudbuildV1InlineSecret"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1InlineSecret Core.<$>
                   (o Core..:? "envMap") Core.<*>
                     (o Core..:? "kmsKeyName"))

instance Core.ToJSON
           GoogleDevtoolsCloudbuildV1InlineSecret
         where
        toJSON GoogleDevtoolsCloudbuildV1InlineSecret{..}
          = Core.object
              (Core.catMaybes
                 [("envMap" Core..=) Core.<$> envMap,
                  ("kmsKeyName" Core..=) Core.<$> kmsKeyName])


-- | Map of environment variable name to its encrypted value. Secret environment variables must be unique across all of a build\'s secrets, and must be used by at least one build step. Values can be at most 64 KB in size. There can be at most 100 secret values across all of a build\'s secrets.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1InlineSecret_EnvMap' smart constructor.
newtype GoogleDevtoolsCloudbuildV1InlineSecret_EnvMap = GoogleDevtoolsCloudbuildV1InlineSecret_EnvMap
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Base64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1InlineSecret_EnvMap' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1InlineSecret_EnvMap 
    ::  Core.HashMap Core.Text Core.Base64
       -- ^  See 'additional'.
    -> GoogleDevtoolsCloudbuildV1InlineSecret_EnvMap
newGoogleDevtoolsCloudbuildV1InlineSecret_EnvMap additional =
  GoogleDevtoolsCloudbuildV1InlineSecret_EnvMap {additional = additional}

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1InlineSecret_EnvMap
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsCloudbuildV1InlineSecret_EnvMap"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1InlineSecret_EnvMap
                   Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON
           GoogleDevtoolsCloudbuildV1InlineSecret_EnvMap
         where
        toJSON
          GoogleDevtoolsCloudbuildV1InlineSecret_EnvMap{..}
          = Core.toJSON additional


-- | A Maven artifact to upload to Artifact Registry upon successful completion of all build steps.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1MavenArtifact' smart constructor.
data GoogleDevtoolsCloudbuildV1MavenArtifact = GoogleDevtoolsCloudbuildV1MavenArtifact
    {
      -- | Maven @artifactId@ value used when uploading the artifact to Artifact Registry.
      artifactId :: (Core.Maybe Core.Text)
      -- | Maven @groupId@ value used when uploading the artifact to Artifact Registry.
    , groupId :: (Core.Maybe Core.Text)
      -- | Path to an artifact in the build\'s workspace to be uploaded to Artifact Registry. This can be either an absolute path, e.g. \/workspace\/my-app\/target\/my-app-1.0.SNAPSHOT.jar or a relative path from \/workspace, e.g. my-app\/target\/my-app-1.0.SNAPSHOT.jar.
    , path :: (Core.Maybe Core.Text)
      -- | Artifact Registry repository, in the form \"https:\/\/$REGION-maven.pkg.dev\/$PROJECT\/$REPOSITORY\" Artifact in the workspace specified by path will be uploaded to Artifact Registry with this location as a prefix.
    , repository :: (Core.Maybe Core.Text)
      -- | Maven @version@ value used when uploading the artifact to Artifact Registry.
    , version :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1MavenArtifact' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1MavenArtifact 
    ::  GoogleDevtoolsCloudbuildV1MavenArtifact
newGoogleDevtoolsCloudbuildV1MavenArtifact =
  GoogleDevtoolsCloudbuildV1MavenArtifact
    { artifactId = Core.Nothing
    , groupId = Core.Nothing
    , path = Core.Nothing
    , repository = Core.Nothing
    , version = Core.Nothing
    }

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1MavenArtifact
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsCloudbuildV1MavenArtifact"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1MavenArtifact Core.<$>
                   (o Core..:? "artifactId") Core.<*>
                     (o Core..:? "groupId")
                     Core.<*> (o Core..:? "path")
                     Core.<*> (o Core..:? "repository")
                     Core.<*> (o Core..:? "version"))

instance Core.ToJSON
           GoogleDevtoolsCloudbuildV1MavenArtifact
         where
        toJSON GoogleDevtoolsCloudbuildV1MavenArtifact{..}
          = Core.object
              (Core.catMaybes
                 [("artifactId" Core..=) Core.<$> artifactId,
                  ("groupId" Core..=) Core.<$> groupId,
                  ("path" Core..=) Core.<$> path,
                  ("repository" Core..=) Core.<$> repository,
                  ("version" Core..=) Core.<$> version])


-- | Npm package to upload to Artifact Registry upon successful completion of all build steps.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1NpmPackage' smart constructor.
data GoogleDevtoolsCloudbuildV1NpmPackage = GoogleDevtoolsCloudbuildV1NpmPackage
    {
      -- | Path to the package.json. e.g. workspace\/path\/to\/package
      packagePath :: (Core.Maybe Core.Text)
      -- | Artifact Registry repository, in the form \"https:\/\/$REGION-npm.pkg.dev\/$PROJECT\/$REPOSITORY\" Npm package in the workspace specified by path will be zipped and uploaded to Artifact Registry with this location as a prefix.
    , repository :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1NpmPackage' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1NpmPackage 
    ::  GoogleDevtoolsCloudbuildV1NpmPackage
newGoogleDevtoolsCloudbuildV1NpmPackage =
  GoogleDevtoolsCloudbuildV1NpmPackage
    {packagePath = Core.Nothing, repository = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1NpmPackage
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsCloudbuildV1NpmPackage"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1NpmPackage Core.<$>
                   (o Core..:? "packagePath") Core.<*>
                     (o Core..:? "repository"))

instance Core.ToJSON
           GoogleDevtoolsCloudbuildV1NpmPackage
         where
        toJSON GoogleDevtoolsCloudbuildV1NpmPackage{..}
          = Core.object
              (Core.catMaybes
                 [("packagePath" Core..=) Core.<$> packagePath,
                  ("repository" Core..=) Core.<$> repository])


-- | Details about how a build should be executed on a @WorkerPool@. See <https://cloud.google.com/build/docs/private-pools/run-builds-in-private-pool running builds in a private pool> for more information.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1PoolOption' smart constructor.
newtype GoogleDevtoolsCloudbuildV1PoolOption = GoogleDevtoolsCloudbuildV1PoolOption
    {
      -- | The @WorkerPool@ resource to execute the build on. You must have @cloudbuild.workerpools.use@ on the project hosting the WorkerPool. Format projects\/{project}\/locations\/{location}\/workerPools\/{workerPoolId}
      name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1PoolOption' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1PoolOption 
    ::  GoogleDevtoolsCloudbuildV1PoolOption
newGoogleDevtoolsCloudbuildV1PoolOption =
  GoogleDevtoolsCloudbuildV1PoolOption {name = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1PoolOption
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsCloudbuildV1PoolOption"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1PoolOption Core.<$>
                   (o Core..:? "name"))

instance Core.ToJSON
           GoogleDevtoolsCloudbuildV1PoolOption
         where
        toJSON GoogleDevtoolsCloudbuildV1PoolOption{..}
          = Core.object
              (Core.catMaybes [("name" Core..=) Core.<$> name])


-- | Python package to upload to Artifact Registry upon successful completion of all build steps. A package can encapsulate multiple objects to be uploaded to a single repository.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1PythonPackage' smart constructor.
data GoogleDevtoolsCloudbuildV1PythonPackage = GoogleDevtoolsCloudbuildV1PythonPackage
    {
      -- | Path globs used to match files in the build\'s workspace. For Python\/ Twine, this is usually @dist\/*@, and sometimes additionally an @.asc@ file.
      paths :: (Core.Maybe [Core.Text])
      -- | Artifact Registry repository, in the form \"https:\/\/$REGION-python.pkg.dev\/$PROJECT\/$REPOSITORY\" Files in the workspace matching any path pattern will be uploaded to Artifact Registry with this location as a prefix.
    , repository :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1PythonPackage' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1PythonPackage 
    ::  GoogleDevtoolsCloudbuildV1PythonPackage
newGoogleDevtoolsCloudbuildV1PythonPackage =
  GoogleDevtoolsCloudbuildV1PythonPackage
    {paths = Core.Nothing, repository = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1PythonPackage
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsCloudbuildV1PythonPackage"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1PythonPackage Core.<$>
                   (o Core..:? "paths") Core.<*>
                     (o Core..:? "repository"))

instance Core.ToJSON
           GoogleDevtoolsCloudbuildV1PythonPackage
         where
        toJSON GoogleDevtoolsCloudbuildV1PythonPackage{..}
          = Core.object
              (Core.catMaybes
                 [("paths" Core..=) Core.<$> paths,
                  ("repository" Core..=) Core.<$> repository])


-- | Location of the source in a Google Cloud Source Repository.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1RepoSource' smart constructor.
data GoogleDevtoolsCloudbuildV1RepoSource = GoogleDevtoolsCloudbuildV1RepoSource
    {
      -- | Regex matching branches to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https:\/\/github.com\/google\/re2\/wiki\/Syntax
      branchName :: (Core.Maybe Core.Text)
      -- | Explicit commit SHA to build.
    , commitSha :: (Core.Maybe Core.Text)
      -- | Optional. Directory, relative to the source root, in which to run the build. This must be a relative path. If a step\'s @dir@ is specified and is an absolute path, this value is ignored for that step\'s execution.
    , dir :: (Core.Maybe Core.Text)
      -- | Optional. Only trigger a build if the revision regex does NOT match the revision regex.
    , invertRegex :: (Core.Maybe Core.Bool)
      -- | Optional. ID of the project that owns the Cloud Source Repository. If omitted, the project ID requesting the build is assumed.
    , projectId :: (Core.Maybe Core.Text)
      -- | Required. Name of the Cloud Source Repository.
    , repoName :: (Core.Maybe Core.Text)
      -- | Optional. Substitutions to use in a triggered build. Should only be used with RunBuildTrigger
    , substitutions :: (Core.Maybe GoogleDevtoolsCloudbuildV1RepoSource_Substitutions)
      -- | Regex matching tags to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https:\/\/github.com\/google\/re2\/wiki\/Syntax
    , tagName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1RepoSource' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1RepoSource 
    ::  GoogleDevtoolsCloudbuildV1RepoSource
newGoogleDevtoolsCloudbuildV1RepoSource =
  GoogleDevtoolsCloudbuildV1RepoSource
    { branchName = Core.Nothing
    , commitSha = Core.Nothing
    , dir = Core.Nothing
    , invertRegex = Core.Nothing
    , projectId = Core.Nothing
    , repoName = Core.Nothing
    , substitutions = Core.Nothing
    , tagName = Core.Nothing
    }

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1RepoSource
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsCloudbuildV1RepoSource"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1RepoSource Core.<$>
                   (o Core..:? "branchName") Core.<*>
                     (o Core..:? "commitSha")
                     Core.<*> (o Core..:? "dir")
                     Core.<*> (o Core..:? "invertRegex")
                     Core.<*> (o Core..:? "projectId")
                     Core.<*> (o Core..:? "repoName")
                     Core.<*> (o Core..:? "substitutions")
                     Core.<*> (o Core..:? "tagName"))

instance Core.ToJSON
           GoogleDevtoolsCloudbuildV1RepoSource
         where
        toJSON GoogleDevtoolsCloudbuildV1RepoSource{..}
          = Core.object
              (Core.catMaybes
                 [("branchName" Core..=) Core.<$> branchName,
                  ("commitSha" Core..=) Core.<$> commitSha,
                  ("dir" Core..=) Core.<$> dir,
                  ("invertRegex" Core..=) Core.<$> invertRegex,
                  ("projectId" Core..=) Core.<$> projectId,
                  ("repoName" Core..=) Core.<$> repoName,
                  ("substitutions" Core..=) Core.<$> substitutions,
                  ("tagName" Core..=) Core.<$> tagName])


-- | Optional. Substitutions to use in a triggered build. Should only be used with RunBuildTrigger
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1RepoSource_Substitutions' smart constructor.
newtype GoogleDevtoolsCloudbuildV1RepoSource_Substitutions = GoogleDevtoolsCloudbuildV1RepoSource_Substitutions
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1RepoSource_Substitutions' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1RepoSource_Substitutions 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> GoogleDevtoolsCloudbuildV1RepoSource_Substitutions
newGoogleDevtoolsCloudbuildV1RepoSource_Substitutions additional =
  GoogleDevtoolsCloudbuildV1RepoSource_Substitutions {additional = additional}

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1RepoSource_Substitutions
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsCloudbuildV1RepoSource_Substitutions"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1RepoSource_Substitutions
                   Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON
           GoogleDevtoolsCloudbuildV1RepoSource_Substitutions
         where
        toJSON
          GoogleDevtoolsCloudbuildV1RepoSource_Substitutions{..}
          = Core.toJSON additional


-- | Artifacts created by the build pipeline.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1Results' smart constructor.
data GoogleDevtoolsCloudbuildV1Results = GoogleDevtoolsCloudbuildV1Results
    {
      -- | Path to the artifact manifest for non-container artifacts uploaded to Cloud Storage. Only populated when artifacts are uploaded to Cloud Storage.
      artifactManifest :: (Core.Maybe Core.Text)
      -- | Time to push all non-container artifacts to Cloud Storage.
    , artifactTiming :: (Core.Maybe GoogleDevtoolsCloudbuildV1TimeSpan)
      -- | List of build step digests, in the order corresponding to build step indices.
    , buildStepImages :: (Core.Maybe [Core.Text])
      -- | List of build step outputs, produced by builder images, in the order corresponding to build step indices. <https://cloud.google.com/cloud-build/docs/cloud-builders Cloud Builders> can produce this output by writing to @$BUILDER_OUTPUT\/output@. Only the first 50KB of data is stored. Note that the @$BUILDER_OUTPUT@ variable is read-only and can\'t be substituted.
    , buildStepOutputs :: (Core.Maybe [Core.Base64])
      -- | Container images that were built as a part of the build.
    , images :: (Core.Maybe [GoogleDevtoolsCloudbuildV1BuiltImage])
      -- | Maven artifacts uploaded to Artifact Registry at the end of the build.
    , mavenArtifacts :: (Core.Maybe [GoogleDevtoolsCloudbuildV1UploadedMavenArtifact])
      -- | Npm packages uploaded to Artifact Registry at the end of the build.
    , npmPackages :: (Core.Maybe [GoogleDevtoolsCloudbuildV1UploadedNpmPackage])
      -- | Number of non-container artifacts uploaded to Cloud Storage. Only populated when artifacts are uploaded to Cloud Storage.
    , numArtifacts :: (Core.Maybe Core.Int64)
      -- | Python artifacts uploaded to Artifact Registry at the end of the build.
    , pythonPackages :: (Core.Maybe [GoogleDevtoolsCloudbuildV1UploadedPythonPackage])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1Results' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1Results 
    ::  GoogleDevtoolsCloudbuildV1Results
newGoogleDevtoolsCloudbuildV1Results =
  GoogleDevtoolsCloudbuildV1Results
    { artifactManifest = Core.Nothing
    , artifactTiming = Core.Nothing
    , buildStepImages = Core.Nothing
    , buildStepOutputs = Core.Nothing
    , images = Core.Nothing
    , mavenArtifacts = Core.Nothing
    , npmPackages = Core.Nothing
    , numArtifacts = Core.Nothing
    , pythonPackages = Core.Nothing
    }

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1Results
         where
        parseJSON
          = Core.withObject "GoogleDevtoolsCloudbuildV1Results"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1Results Core.<$>
                   (o Core..:? "artifactManifest") Core.<*>
                     (o Core..:? "artifactTiming")
                     Core.<*> (o Core..:? "buildStepImages")
                     Core.<*> (o Core..:? "buildStepOutputs")
                     Core.<*> (o Core..:? "images")
                     Core.<*> (o Core..:? "mavenArtifacts")
                     Core.<*> (o Core..:? "npmPackages")
                     Core.<*>
                     (o Core..:? "numArtifacts" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "pythonPackages"))

instance Core.ToJSON
           GoogleDevtoolsCloudbuildV1Results
         where
        toJSON GoogleDevtoolsCloudbuildV1Results{..}
          = Core.object
              (Core.catMaybes
                 [("artifactManifest" Core..=) Core.<$>
                    artifactManifest,
                  ("artifactTiming" Core..=) Core.<$> artifactTiming,
                  ("buildStepImages" Core..=) Core.<$> buildStepImages,
                  ("buildStepOutputs" Core..=) Core.<$>
                    buildStepOutputs,
                  ("images" Core..=) Core.<$> images,
                  ("mavenArtifacts" Core..=) Core.<$> mavenArtifacts,
                  ("npmPackages" Core..=) Core.<$> npmPackages,
                  ("numArtifacts" Core..=) Core.. Core.AsText Core.<$>
                    numArtifacts,
                  ("pythonPackages" Core..=) Core.<$> pythonPackages])


-- | Pairs a set of secret environment variables containing encrypted values with the Cloud KMS key to use to decrypt the value. Note: Use @kmsKeyName@ with @available_secrets@ instead of using @kmsKeyName@ with @secret@. For instructions see: https:\/\/cloud.google.com\/cloud-build\/docs\/securing-builds\/use-encrypted-credentials.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1Secret' smart constructor.
data GoogleDevtoolsCloudbuildV1Secret = GoogleDevtoolsCloudbuildV1Secret
    {
      -- | Cloud KMS key name to use to decrypt these envs.
      kmsKeyName :: (Core.Maybe Core.Text)
      -- | Map of environment variable name to its encrypted value. Secret environment variables must be unique across all of a build\'s secrets, and must be used by at least one build step. Values can be at most 64 KB in size. There can be at most 100 secret values across all of a build\'s secrets.
    , secretEnv :: (Core.Maybe GoogleDevtoolsCloudbuildV1Secret_SecretEnv)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1Secret' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1Secret 
    ::  GoogleDevtoolsCloudbuildV1Secret
newGoogleDevtoolsCloudbuildV1Secret =
  GoogleDevtoolsCloudbuildV1Secret
    {kmsKeyName = Core.Nothing, secretEnv = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1Secret
         where
        parseJSON
          = Core.withObject "GoogleDevtoolsCloudbuildV1Secret"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1Secret Core.<$>
                   (o Core..:? "kmsKeyName") Core.<*>
                     (o Core..:? "secretEnv"))

instance Core.ToJSON GoogleDevtoolsCloudbuildV1Secret
         where
        toJSON GoogleDevtoolsCloudbuildV1Secret{..}
          = Core.object
              (Core.catMaybes
                 [("kmsKeyName" Core..=) Core.<$> kmsKeyName,
                  ("secretEnv" Core..=) Core.<$> secretEnv])


-- | Map of environment variable name to its encrypted value. Secret environment variables must be unique across all of a build\'s secrets, and must be used by at least one build step. Values can be at most 64 KB in size. There can be at most 100 secret values across all of a build\'s secrets.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1Secret_SecretEnv' smart constructor.
newtype GoogleDevtoolsCloudbuildV1Secret_SecretEnv = GoogleDevtoolsCloudbuildV1Secret_SecretEnv
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Base64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1Secret_SecretEnv' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1Secret_SecretEnv 
    ::  Core.HashMap Core.Text Core.Base64
       -- ^  See 'additional'.
    -> GoogleDevtoolsCloudbuildV1Secret_SecretEnv
newGoogleDevtoolsCloudbuildV1Secret_SecretEnv additional =
  GoogleDevtoolsCloudbuildV1Secret_SecretEnv {additional = additional}

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1Secret_SecretEnv
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsCloudbuildV1Secret_SecretEnv"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1Secret_SecretEnv Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           GoogleDevtoolsCloudbuildV1Secret_SecretEnv
         where
        toJSON GoogleDevtoolsCloudbuildV1Secret_SecretEnv{..}
          = Core.toJSON additional


-- | Pairs a secret environment variable with a SecretVersion in Secret Manager.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1SecretManagerSecret' smart constructor.
data GoogleDevtoolsCloudbuildV1SecretManagerSecret = GoogleDevtoolsCloudbuildV1SecretManagerSecret
    {
      -- | Environment variable name to associate with the secret. Secret environment variables must be unique across all of a build\'s secrets, and must be used by at least one build step.
      env :: (Core.Maybe Core.Text)
      -- | Resource name of the SecretVersion. In format: projects\//\/secrets\//\/versions\/*
    , versionName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1SecretManagerSecret' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1SecretManagerSecret 
    ::  GoogleDevtoolsCloudbuildV1SecretManagerSecret
newGoogleDevtoolsCloudbuildV1SecretManagerSecret =
  GoogleDevtoolsCloudbuildV1SecretManagerSecret
    {env = Core.Nothing, versionName = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1SecretManagerSecret
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsCloudbuildV1SecretManagerSecret"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1SecretManagerSecret
                   Core.<$>
                   (o Core..:? "env") Core.<*>
                     (o Core..:? "versionName"))

instance Core.ToJSON
           GoogleDevtoolsCloudbuildV1SecretManagerSecret
         where
        toJSON
          GoogleDevtoolsCloudbuildV1SecretManagerSecret{..}
          = Core.object
              (Core.catMaybes
                 [("env" Core..=) Core.<$> env,
                  ("versionName" Core..=) Core.<$> versionName])


-- | Secrets and secret environment variables.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1Secrets' smart constructor.
data GoogleDevtoolsCloudbuildV1Secrets = GoogleDevtoolsCloudbuildV1Secrets
    {
      -- | Secrets encrypted with KMS key and the associated secret environment variable.
      inline :: (Core.Maybe [GoogleDevtoolsCloudbuildV1InlineSecret])
      -- | Secrets in Secret Manager and associated secret environment variable.
    , secretManager :: (Core.Maybe [GoogleDevtoolsCloudbuildV1SecretManagerSecret])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1Secrets' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1Secrets 
    ::  GoogleDevtoolsCloudbuildV1Secrets
newGoogleDevtoolsCloudbuildV1Secrets =
  GoogleDevtoolsCloudbuildV1Secrets
    {inline = Core.Nothing, secretManager = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1Secrets
         where
        parseJSON
          = Core.withObject "GoogleDevtoolsCloudbuildV1Secrets"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1Secrets Core.<$>
                   (o Core..:? "inline") Core.<*>
                     (o Core..:? "secretManager"))

instance Core.ToJSON
           GoogleDevtoolsCloudbuildV1Secrets
         where
        toJSON GoogleDevtoolsCloudbuildV1Secrets{..}
          = Core.object
              (Core.catMaybes
                 [("inline" Core..=) Core.<$> inline,
                  ("secretManager" Core..=) Core.<$> secretManager])


-- | Location of the source in a supported storage service.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1Source' smart constructor.
data GoogleDevtoolsCloudbuildV1Source = GoogleDevtoolsCloudbuildV1Source
    {
      -- | Optional. If provided, get the source from this 2nd-gen Google Cloud Build repository resource.
      connectedRepository :: (Core.Maybe GoogleDevtoolsCloudbuildV1ConnectedRepository)
      -- | If provided, get the source from this Developer Connect config.
    , developerConnectConfig :: (Core.Maybe GoogleDevtoolsCloudbuildV1DeveloperConnectConfig)
      -- | If provided, get the source from this Git repository.
    , gitSource :: (Core.Maybe GoogleDevtoolsCloudbuildV1GitSource)
      -- | If provided, get the source from this location in a Cloud Source Repository.
    , repoSource :: (Core.Maybe GoogleDevtoolsCloudbuildV1RepoSource)
      -- | If provided, get the source from this location in Cloud Storage.
    , storageSource :: (Core.Maybe GoogleDevtoolsCloudbuildV1StorageSource)
      -- | If provided, get the source from this manifest in Cloud Storage. This feature is in Preview; see description <https://github.com/GoogleCloudPlatform/cloud-builders/tree/master/gcs-fetcher here>.
    , storageSourceManifest :: (Core.Maybe GoogleDevtoolsCloudbuildV1StorageSourceManifest)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1Source' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1Source 
    ::  GoogleDevtoolsCloudbuildV1Source
newGoogleDevtoolsCloudbuildV1Source =
  GoogleDevtoolsCloudbuildV1Source
    { connectedRepository = Core.Nothing
    , developerConnectConfig = Core.Nothing
    , gitSource = Core.Nothing
    , repoSource = Core.Nothing
    , storageSource = Core.Nothing
    , storageSourceManifest = Core.Nothing
    }

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1Source
         where
        parseJSON
          = Core.withObject "GoogleDevtoolsCloudbuildV1Source"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1Source Core.<$>
                   (o Core..:? "connectedRepository") Core.<*>
                     (o Core..:? "developerConnectConfig")
                     Core.<*> (o Core..:? "gitSource")
                     Core.<*> (o Core..:? "repoSource")
                     Core.<*> (o Core..:? "storageSource")
                     Core.<*> (o Core..:? "storageSourceManifest"))

instance Core.ToJSON GoogleDevtoolsCloudbuildV1Source
         where
        toJSON GoogleDevtoolsCloudbuildV1Source{..}
          = Core.object
              (Core.catMaybes
                 [("connectedRepository" Core..=) Core.<$>
                    connectedRepository,
                  ("developerConnectConfig" Core..=) Core.<$>
                    developerConnectConfig,
                  ("gitSource" Core..=) Core.<$> gitSource,
                  ("repoSource" Core..=) Core.<$> repoSource,
                  ("storageSource" Core..=) Core.<$> storageSource,
                  ("storageSourceManifest" Core..=) Core.<$>
                    storageSourceManifest])


-- | Provenance of the source. Ways to find the original source, or verify that some source was used for this build.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1SourceProvenance' smart constructor.
data GoogleDevtoolsCloudbuildV1SourceProvenance = GoogleDevtoolsCloudbuildV1SourceProvenance
    {
      -- | Output only. Hash(es) of the build source, which can be used to verify that the original source integrity was maintained in the build. Note that @FileHashes@ will only be populated if @BuildOptions@ has requested a @SourceProvenanceHash@. The keys to this map are file paths used as build source and the values contain the hash values for those files. If the build source came in a single package such as a gzipped tarfile (@.tar.gz@), the @FileHash@ will be for the single path to that file.
      fileHashes :: (Core.Maybe GoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes)
      -- | Output only. A copy of the build\'s @source.connected_repository@, if exists, with any revisions resolved.
    , resolvedConnectedRepository :: (Core.Maybe GoogleDevtoolsCloudbuildV1ConnectedRepository)
      -- | Output only. A copy of the build\'s @source.git_source@, if exists, with any revisions resolved.
    , resolvedGitSource :: (Core.Maybe GoogleDevtoolsCloudbuildV1GitSource)
      -- | A copy of the build\'s @source.repo_source@, if exists, with any revisions resolved.
    , resolvedRepoSource :: (Core.Maybe GoogleDevtoolsCloudbuildV1RepoSource)
      -- | A copy of the build\'s @source.storage_source@, if exists, with any generations resolved.
    , resolvedStorageSource :: (Core.Maybe GoogleDevtoolsCloudbuildV1StorageSource)
      -- | A copy of the build\'s @source.storage_source_manifest@, if exists, with any revisions resolved. This feature is in Preview.
    , resolvedStorageSourceManifest :: (Core.Maybe GoogleDevtoolsCloudbuildV1StorageSourceManifest)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1SourceProvenance' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1SourceProvenance 
    ::  GoogleDevtoolsCloudbuildV1SourceProvenance
newGoogleDevtoolsCloudbuildV1SourceProvenance =
  GoogleDevtoolsCloudbuildV1SourceProvenance
    { fileHashes = Core.Nothing
    , resolvedConnectedRepository = Core.Nothing
    , resolvedGitSource = Core.Nothing
    , resolvedRepoSource = Core.Nothing
    , resolvedStorageSource = Core.Nothing
    , resolvedStorageSourceManifest = Core.Nothing
    }

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1SourceProvenance
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsCloudbuildV1SourceProvenance"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1SourceProvenance Core.<$>
                   (o Core..:? "fileHashes") Core.<*>
                     (o Core..:? "resolvedConnectedRepository")
                     Core.<*> (o Core..:? "resolvedGitSource")
                     Core.<*> (o Core..:? "resolvedRepoSource")
                     Core.<*> (o Core..:? "resolvedStorageSource")
                     Core.<*>
                     (o Core..:? "resolvedStorageSourceManifest"))

instance Core.ToJSON
           GoogleDevtoolsCloudbuildV1SourceProvenance
         where
        toJSON GoogleDevtoolsCloudbuildV1SourceProvenance{..}
          = Core.object
              (Core.catMaybes
                 [("fileHashes" Core..=) Core.<$> fileHashes,
                  ("resolvedConnectedRepository" Core..=) Core.<$>
                    resolvedConnectedRepository,
                  ("resolvedGitSource" Core..=) Core.<$>
                    resolvedGitSource,
                  ("resolvedRepoSource" Core..=) Core.<$>
                    resolvedRepoSource,
                  ("resolvedStorageSource" Core..=) Core.<$>
                    resolvedStorageSource,
                  ("resolvedStorageSourceManifest" Core..=) Core.<$>
                    resolvedStorageSourceManifest])


-- | Output only. Hash(es) of the build source, which can be used to verify that the original source integrity was maintained in the build. Note that @FileHashes@ will only be populated if @BuildOptions@ has requested a @SourceProvenanceHash@. The keys to this map are file paths used as build source and the values contain the hash values for those files. If the build source came in a single package such as a gzipped tarfile (@.tar.gz@), the @FileHash@ will be for the single path to that file.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes' smart constructor.
newtype GoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes = GoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes
    {
      -- | 
      additional :: (Core.HashMap Core.Text GoogleDevtoolsCloudbuildV1FileHashes)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes 
    ::  Core.HashMap Core.Text GoogleDevtoolsCloudbuildV1FileHashes
       -- ^  See 'additional'.
    -> GoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes
newGoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes additional =
  GoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes
    {additional = additional}

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes
                   Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON
           GoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes
         where
        toJSON
          GoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes{..}
          = Core.toJSON additional


-- | Location of the source in an archive file in Cloud Storage.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1StorageSource' smart constructor.
data GoogleDevtoolsCloudbuildV1StorageSource = GoogleDevtoolsCloudbuildV1StorageSource
    {
      -- | Cloud Storage bucket containing the source (see <https://cloud.google.com/storage/docs/bucket-naming#requirements Bucket Name Requirements>).
      bucket :: (Core.Maybe Core.Text)
      -- | Optional. Cloud Storage generation for the object. If the generation is omitted, the latest generation will be used.
    , generation :: (Core.Maybe Core.Int64)
      -- | Required. Cloud Storage object containing the source. This object must be a zipped (@.zip@) or gzipped archive file (@.tar.gz@) containing source to build.
    , object :: (Core.Maybe Core.Text)
      -- | Optional. Option to specify the tool to fetch the source file for the build.
    , sourceFetcher :: (Core.Maybe GoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1StorageSource' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1StorageSource 
    ::  GoogleDevtoolsCloudbuildV1StorageSource
newGoogleDevtoolsCloudbuildV1StorageSource =
  GoogleDevtoolsCloudbuildV1StorageSource
    { bucket = Core.Nothing
    , generation = Core.Nothing
    , object = Core.Nothing
    , sourceFetcher = Core.Nothing
    }

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1StorageSource
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsCloudbuildV1StorageSource"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1StorageSource Core.<$>
                   (o Core..:? "bucket") Core.<*>
                     (o Core..:? "generation" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "object")
                     Core.<*> (o Core..:? "sourceFetcher"))

instance Core.ToJSON
           GoogleDevtoolsCloudbuildV1StorageSource
         where
        toJSON GoogleDevtoolsCloudbuildV1StorageSource{..}
          = Core.object
              (Core.catMaybes
                 [("bucket" Core..=) Core.<$> bucket,
                  ("generation" Core..=) Core.. Core.AsText Core.<$>
                    generation,
                  ("object" Core..=) Core.<$> object,
                  ("sourceFetcher" Core..=) Core.<$> sourceFetcher])


-- | Location of the source manifest in Cloud Storage. This feature is in Preview; see description <https://github.com/GoogleCloudPlatform/cloud-builders/tree/master/gcs-fetcher here>.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1StorageSourceManifest' smart constructor.
data GoogleDevtoolsCloudbuildV1StorageSourceManifest = GoogleDevtoolsCloudbuildV1StorageSourceManifest
    {
      -- | Required. Cloud Storage bucket containing the source manifest (see <https://cloud.google.com/storage/docs/bucket-naming#requirements Bucket Name Requirements>).
      bucket :: (Core.Maybe Core.Text)
      -- | Cloud Storage generation for the object. If the generation is omitted, the latest generation will be used.
    , generation :: (Core.Maybe Core.Int64)
      -- | Required. Cloud Storage object containing the source manifest. This object must be a JSON file.
    , object :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1StorageSourceManifest' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1StorageSourceManifest 
    ::  GoogleDevtoolsCloudbuildV1StorageSourceManifest
newGoogleDevtoolsCloudbuildV1StorageSourceManifest =
  GoogleDevtoolsCloudbuildV1StorageSourceManifest
    {bucket = Core.Nothing, generation = Core.Nothing, object = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1StorageSourceManifest
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsCloudbuildV1StorageSourceManifest"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1StorageSourceManifest
                   Core.<$>
                   (o Core..:? "bucket") Core.<*>
                     (o Core..:? "generation" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "object"))

instance Core.ToJSON
           GoogleDevtoolsCloudbuildV1StorageSourceManifest
         where
        toJSON
          GoogleDevtoolsCloudbuildV1StorageSourceManifest{..}
          = Core.object
              (Core.catMaybes
                 [("bucket" Core..=) Core.<$> bucket,
                  ("generation" Core..=) Core.. Core.AsText Core.<$>
                    generation,
                  ("object" Core..=) Core.<$> object])


-- | Start and end times for a build execution phase.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1TimeSpan' smart constructor.
data GoogleDevtoolsCloudbuildV1TimeSpan = GoogleDevtoolsCloudbuildV1TimeSpan
    {
      -- | End of time span.
      endTime :: (Core.Maybe Core.DateTime)
      -- | Start of time span.
    , startTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1TimeSpan' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1TimeSpan 
    ::  GoogleDevtoolsCloudbuildV1TimeSpan
newGoogleDevtoolsCloudbuildV1TimeSpan =
  GoogleDevtoolsCloudbuildV1TimeSpan
    {endTime = Core.Nothing, startTime = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1TimeSpan
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsCloudbuildV1TimeSpan"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1TimeSpan Core.<$>
                   (o Core..:? "endTime") Core.<*>
                     (o Core..:? "startTime"))

instance Core.ToJSON
           GoogleDevtoolsCloudbuildV1TimeSpan
         where
        toJSON GoogleDevtoolsCloudbuildV1TimeSpan{..}
          = Core.object
              (Core.catMaybes
                 [("endTime" Core..=) Core.<$> endTime,
                  ("startTime" Core..=) Core.<$> startTime])


-- | A Maven artifact uploaded using the MavenArtifact directive.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1UploadedMavenArtifact' smart constructor.
data GoogleDevtoolsCloudbuildV1UploadedMavenArtifact = GoogleDevtoolsCloudbuildV1UploadedMavenArtifact
    {
      -- | Hash types and values of the Maven Artifact.
      fileHashes :: (Core.Maybe GoogleDevtoolsCloudbuildV1FileHashes)
      -- | Output only. Stores timing information for pushing the specified artifact.
    , pushTiming :: (Core.Maybe GoogleDevtoolsCloudbuildV1TimeSpan)
      -- | URI of the uploaded artifact.
    , uri :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1UploadedMavenArtifact' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1UploadedMavenArtifact 
    ::  GoogleDevtoolsCloudbuildV1UploadedMavenArtifact
newGoogleDevtoolsCloudbuildV1UploadedMavenArtifact =
  GoogleDevtoolsCloudbuildV1UploadedMavenArtifact
    {fileHashes = Core.Nothing, pushTiming = Core.Nothing, uri = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1UploadedMavenArtifact
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsCloudbuildV1UploadedMavenArtifact"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1UploadedMavenArtifact
                   Core.<$>
                   (o Core..:? "fileHashes") Core.<*>
                     (o Core..:? "pushTiming")
                     Core.<*> (o Core..:? "uri"))

instance Core.ToJSON
           GoogleDevtoolsCloudbuildV1UploadedMavenArtifact
         where
        toJSON
          GoogleDevtoolsCloudbuildV1UploadedMavenArtifact{..}
          = Core.object
              (Core.catMaybes
                 [("fileHashes" Core..=) Core.<$> fileHashes,
                  ("pushTiming" Core..=) Core.<$> pushTiming,
                  ("uri" Core..=) Core.<$> uri])


-- | An npm package uploaded to Artifact Registry using the NpmPackage directive.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1UploadedNpmPackage' smart constructor.
data GoogleDevtoolsCloudbuildV1UploadedNpmPackage = GoogleDevtoolsCloudbuildV1UploadedNpmPackage
    {
      -- | Hash types and values of the npm package.
      fileHashes :: (Core.Maybe GoogleDevtoolsCloudbuildV1FileHashes)
      -- | Output only. Stores timing information for pushing the specified artifact.
    , pushTiming :: (Core.Maybe GoogleDevtoolsCloudbuildV1TimeSpan)
      -- | URI of the uploaded npm package.
    , uri :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1UploadedNpmPackage' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1UploadedNpmPackage 
    ::  GoogleDevtoolsCloudbuildV1UploadedNpmPackage
newGoogleDevtoolsCloudbuildV1UploadedNpmPackage =
  GoogleDevtoolsCloudbuildV1UploadedNpmPackage
    {fileHashes = Core.Nothing, pushTiming = Core.Nothing, uri = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1UploadedNpmPackage
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsCloudbuildV1UploadedNpmPackage"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1UploadedNpmPackage Core.<$>
                   (o Core..:? "fileHashes") Core.<*>
                     (o Core..:? "pushTiming")
                     Core.<*> (o Core..:? "uri"))

instance Core.ToJSON
           GoogleDevtoolsCloudbuildV1UploadedNpmPackage
         where
        toJSON
          GoogleDevtoolsCloudbuildV1UploadedNpmPackage{..}
          = Core.object
              (Core.catMaybes
                 [("fileHashes" Core..=) Core.<$> fileHashes,
                  ("pushTiming" Core..=) Core.<$> pushTiming,
                  ("uri" Core..=) Core.<$> uri])


-- | Artifact uploaded using the PythonPackage directive.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1UploadedPythonPackage' smart constructor.
data GoogleDevtoolsCloudbuildV1UploadedPythonPackage = GoogleDevtoolsCloudbuildV1UploadedPythonPackage
    {
      -- | Hash types and values of the Python Artifact.
      fileHashes :: (Core.Maybe GoogleDevtoolsCloudbuildV1FileHashes)
      -- | Output only. Stores timing information for pushing the specified artifact.
    , pushTiming :: (Core.Maybe GoogleDevtoolsCloudbuildV1TimeSpan)
      -- | URI of the uploaded artifact.
    , uri :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1UploadedPythonPackage' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1UploadedPythonPackage 
    ::  GoogleDevtoolsCloudbuildV1UploadedPythonPackage
newGoogleDevtoolsCloudbuildV1UploadedPythonPackage =
  GoogleDevtoolsCloudbuildV1UploadedPythonPackage
    {fileHashes = Core.Nothing, pushTiming = Core.Nothing, uri = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1UploadedPythonPackage
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsCloudbuildV1UploadedPythonPackage"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1UploadedPythonPackage
                   Core.<$>
                   (o Core..:? "fileHashes") Core.<*>
                     (o Core..:? "pushTiming")
                     Core.<*> (o Core..:? "uri"))

instance Core.ToJSON
           GoogleDevtoolsCloudbuildV1UploadedPythonPackage
         where
        toJSON
          GoogleDevtoolsCloudbuildV1UploadedPythonPackage{..}
          = Core.object
              (Core.catMaybes
                 [("fileHashes" Core..=) Core.<$> fileHashes,
                  ("pushTiming" Core..=) Core.<$> pushTiming,
                  ("uri" Core..=) Core.<$> uri])


-- | Volume describes a Docker container volume which is mounted into build steps in order to persist files across build step execution.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1Volume' smart constructor.
data GoogleDevtoolsCloudbuildV1Volume = GoogleDevtoolsCloudbuildV1Volume
    {
      -- | Name of the volume to mount. Volume names must be unique per build step and must be valid names for Docker volumes. Each named volume must be used by at least two build steps.
      name :: (Core.Maybe Core.Text)
      -- | Path at which to mount the volume. Paths must be absolute and cannot conflict with other volume paths on the same build step or with certain reserved volume paths.
    , path :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1Volume' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1Volume 
    ::  GoogleDevtoolsCloudbuildV1Volume
newGoogleDevtoolsCloudbuildV1Volume =
  GoogleDevtoolsCloudbuildV1Volume {name = Core.Nothing, path = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1Volume
         where
        parseJSON
          = Core.withObject "GoogleDevtoolsCloudbuildV1Volume"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1Volume Core.<$>
                   (o Core..:? "name") Core.<*> (o Core..:? "path"))

instance Core.ToJSON GoogleDevtoolsCloudbuildV1Volume
         where
        toJSON GoogleDevtoolsCloudbuildV1Volume{..}
          = Core.object
              (Core.catMaybes
                 [("name" Core..=) Core.<$> name,
                  ("path" Core..=) Core.<$> path])


-- | A non-fatal problem encountered during the execution of the build.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV1Warning' smart constructor.
data GoogleDevtoolsCloudbuildV1Warning = GoogleDevtoolsCloudbuildV1Warning
    {
      -- | The priority for this warning.
      priority :: (Core.Maybe GoogleDevtoolsCloudbuildV1Warning_Priority)
      -- | Explanation of the warning generated.
    , text :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV1Warning' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV1Warning 
    ::  GoogleDevtoolsCloudbuildV1Warning
newGoogleDevtoolsCloudbuildV1Warning =
  GoogleDevtoolsCloudbuildV1Warning
    {priority = Core.Nothing, text = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsCloudbuildV1Warning
         where
        parseJSON
          = Core.withObject "GoogleDevtoolsCloudbuildV1Warning"
              (\ o ->
                 GoogleDevtoolsCloudbuildV1Warning Core.<$>
                   (o Core..:? "priority") Core.<*> (o Core..:? "text"))

instance Core.ToJSON
           GoogleDevtoolsCloudbuildV1Warning
         where
        toJSON GoogleDevtoolsCloudbuildV1Warning{..}
          = Core.object
              (Core.catMaybes
                 [("priority" Core..=) Core.<$> priority,
                  ("text" Core..=) Core.<$> text])


-- | Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both @allServices@ and a specific service, the union of the two AuditConfigs is used for that service: the log/types specified in each AuditConfig are enabled, and the exempted/members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { \"audit/configs\": [ { \"service\": \"allServices\", \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\", \"exempted/members\": [ \"user:jose\@example.com\" ] }, { \"log/type\": \"DATA/WRITE\" }, { \"log/type\": \"ADMIN/READ\" } ] }, { \"service\": \"sampleservice.googleapis.com\", \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\" }, { \"log/type\": \"DATA/WRITE\", \"exempted/members\": [ \"user:aliya\@example.com\" ] } ] } ] } For sampleservice, this policy enables DATA/READ, DATA/WRITE and
-- ADMIN/READ logging. It also exempts @jose\@example.com@ from DATA/READ logging, and @aliya\@example.com@ from DATA/WRITE logging.
--
-- /See:/ 'newGoogleIamV1AuditConfig' smart constructor.
data GoogleIamV1AuditConfig = GoogleIamV1AuditConfig
    {
      -- | The configuration for logging of each type of permission.
      auditLogConfigs :: (Core.Maybe [GoogleIamV1AuditLogConfig])
      -- | Specifies a service that will be enabled for audit logging. For example, @storage.googleapis.com@, @cloudsql.googleapis.com@. @allServices@ is a special value that covers all services.
    , service :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV1AuditConfig' with the minimum fields required to make a request.
newGoogleIamV1AuditConfig 
    ::  GoogleIamV1AuditConfig
newGoogleIamV1AuditConfig =
  GoogleIamV1AuditConfig
    {auditLogConfigs = Core.Nothing, service = Core.Nothing}

instance Core.FromJSON GoogleIamV1AuditConfig where
        parseJSON
          = Core.withObject "GoogleIamV1AuditConfig"
              (\ o ->
                 GoogleIamV1AuditConfig Core.<$>
                   (o Core..:? "auditLogConfigs") Core.<*>
                     (o Core..:? "service"))

instance Core.ToJSON GoogleIamV1AuditConfig where
        toJSON GoogleIamV1AuditConfig{..}
          = Core.object
              (Core.catMaybes
                 [("auditLogConfigs" Core..=) Core.<$>
                    auditLogConfigs,
                  ("service" Core..=) Core.<$> service])


-- | Provides the configuration for logging a type of permissions. Example: { \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\", \"exempted/members\": [ \"user:jose\@example.com\" ] }, { \"log/type\": \"DATA/WRITE\" } ] } This enables \'DATA/READ\' and \'DATA/WRITE\' logging, while exempting jose\@example.com from DATA/READ logging.
--
-- /See:/ 'newGoogleIamV1AuditLogConfig' smart constructor.
data GoogleIamV1AuditLogConfig = GoogleIamV1AuditLogConfig
    {
      -- | Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
      exemptedMembers :: (Core.Maybe [Core.Text])
      -- | The log type that this config enables.
    , logType :: (Core.Maybe GoogleIamV1AuditLogConfig_LogType)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV1AuditLogConfig' with the minimum fields required to make a request.
newGoogleIamV1AuditLogConfig 
    ::  GoogleIamV1AuditLogConfig
newGoogleIamV1AuditLogConfig =
  GoogleIamV1AuditLogConfig
    {exemptedMembers = Core.Nothing, logType = Core.Nothing}

instance Core.FromJSON GoogleIamV1AuditLogConfig
         where
        parseJSON
          = Core.withObject "GoogleIamV1AuditLogConfig"
              (\ o ->
                 GoogleIamV1AuditLogConfig Core.<$>
                   (o Core..:? "exemptedMembers") Core.<*>
                     (o Core..:? "logType"))

instance Core.ToJSON GoogleIamV1AuditLogConfig where
        toJSON GoogleIamV1AuditLogConfig{..}
          = Core.object
              (Core.catMaybes
                 [("exemptedMembers" Core..=) Core.<$>
                    exemptedMembers,
                  ("logType" Core..=) Core.<$> logType])


-- | Associates @members@, or principals, with a @role@.
--
-- /See:/ 'newGoogleIamV1Binding' smart constructor.
data GoogleIamV1Binding = GoogleIamV1Binding
    {
      -- | The condition that is associated with this binding. If the condition evaluates to @true@, then this binding applies to the current request. If the condition evaluates to @false@, then this binding does not apply to the current request. However, a different role binding might grant the same role to one or more of the principals in this binding. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
      condition :: (Core.Maybe GoogleTypeExpr)
      -- | Specifies the principals requesting access for a Google Cloud resource. @members@ can have the following values: * @allUsers@: A special identifier that represents anyone who is on the internet; with or without a Google account. * @allAuthenticatedUsers@: A special identifier that represents anyone who is authenticated with a Google account or a service account. Does not include identities that come from external identity providers (IdPs) through identity federation. * @user:{emailid}@: An email address that represents a specific Google account. For example, @alice\@example.com@ . * @serviceAccount:{emailid}@: An email address that represents a Google service account. For example, @my-other-app\@appspot.gserviceaccount.com@. * @serviceAccount:{projectid}.svc.id.goog[{namespace}\/{kubernetes-sa}]@: An identifier for a <https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts Kubernetes service account>. For example, @my-project.svc.id.goog[my-namespace\/my-kubernetes-sa]@. *
      -- @group:{emailid}@: An email address that represents a Google group. For example, @admins\@example.com@. * @domain:{domain}@: The G Suite domain (primary) that represents all the users of that domain. For example, @google.com@ or @example.com@. * @principal:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/subject\/{subject_attribute_value}@: A single identity in a workforce identity pool. * @principalSet:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/group\/{group_id}@: All workforce identities in a group. * @principalSet:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/attribute.{attribute_name}\/{attribute_value}@: All workforce identities with a specific attribute value. * @principalSet:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/*@: All identities in a workforce identity pool. *
      -- @principal:\/\/iam.googleapis.com\/projects\/{project_number}\/locations\/global\/workloadIdentityPools\/{pool_id}\/subject\/{subject_attribute_value}@: A single identity in a workload identity pool. * @principalSet:\/\/iam.googleapis.com\/projects\/{project_number}\/locations\/global\/workloadIdentityPools\/{pool_id}\/group\/{group_id}@: A workload identity pool group. * @principalSet:\/\/iam.googleapis.com\/projects\/{project_number}\/locations\/global\/workloadIdentityPools\/{pool_id}\/attribute.{attribute_name}\/{attribute_value}@: All identities in a workload identity pool with a certain attribute. * @principalSet:\/\/iam.googleapis.com\/projects\/{project_number}\/locations\/global\/workloadIdentityPools\/{pool_id}\/*@: All identities in a workload identity pool. * @deleted:user:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a user that has been recently deleted. For example, @alice\@example.com?uid=123456789012345678901@. If the user is recovered, this value reverts
      -- to @user:{emailid}@ and the recovered user retains the role in the binding. * @deleted:serviceAccount:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a service account that has been recently deleted. For example, @my-other-app\@appspot.gserviceaccount.com?uid=123456789012345678901@. If the service account is undeleted, this value reverts to @serviceAccount:{emailid}@ and the undeleted service account retains the role in the binding. * @deleted:group:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a Google group that has been recently deleted. For example, @admins\@example.com?uid=123456789012345678901@. If the group is recovered, this value reverts to @group:{emailid}@ and the recovered group retains the role in the binding. * @deleted:principal:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/subject\/{subject_attribute_value}@: Deleted single identity in a workforce identity pool. For example,
      -- @deleted:principal:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/my-pool-id\/subject\/my-subject-attribute-value@.
    , members :: (Core.Maybe [Core.Text])
      -- | Role that is assigned to the list of @members@, or principals. For example, @roles\/viewer@, @roles\/editor@, or @roles\/owner@. For an overview of the IAM roles and permissions, see the <https://cloud.google.com/iam/docs/roles-overview IAM documentation>. For a list of the available pre-defined roles, see <https://cloud.google.com/iam/docs/understanding-roles here>.
    , role' :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV1Binding' with the minimum fields required to make a request.
newGoogleIamV1Binding 
    ::  GoogleIamV1Binding
newGoogleIamV1Binding =
  GoogleIamV1Binding
    {condition = Core.Nothing, members = Core.Nothing, role' = Core.Nothing}

instance Core.FromJSON GoogleIamV1Binding where
        parseJSON
          = Core.withObject "GoogleIamV1Binding"
              (\ o ->
                 GoogleIamV1Binding Core.<$>
                   (o Core..:? "condition") Core.<*>
                     (o Core..:? "members")
                     Core.<*> (o Core..:? "role"))

instance Core.ToJSON GoogleIamV1Binding where
        toJSON GoogleIamV1Binding{..}
          = Core.object
              (Core.catMaybes
                 [("condition" Core..=) Core.<$> condition,
                  ("members" Core..=) Core.<$> members,
                  ("role" Core..=) Core.<$> role'])


-- | An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A @Policy@ is a collection of @bindings@. A @binding@ binds one or more @members@, or principals, to a single @role@. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A @role@ is a named list of permissions; each @role@ can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a @binding@ can also specify a @condition@, which is a logical expression that allows access to a resource only if the expression evaluates to @true@. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>. __JSON example:__
-- @{ \"bindings\": [ { \"role\": \"roles\/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike\@example.com\", \"group:admins\@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id\@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles\/resourcemanager.organizationViewer\", \"members\": [ \"user:eve\@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time \< timestamp(\'2020-10-01T00:00:00.000Z\')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 }@ __YAML example:__
-- @bindings: - members: - user:mike\@example.com - group:admins\@example.com - domain:google.com - serviceAccount:my-project-id\@appspot.gserviceaccount.com role: roles\/resourcemanager.organizationAdmin - members: - user:eve\@example.com role: roles\/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time \< timestamp(\'2020-10-01T00:00:00.000Z\') etag: BwWWja0YfJA= version: 3@ For a description of IAM and its features, see the <https://cloud.google.com/iam/docs/ IAM documentation>.
--
-- /See:/ 'newGoogleIamV1Policy' smart constructor.
data GoogleIamV1Policy = GoogleIamV1Policy
    {
      -- | Specifies cloud audit logging configuration for this policy.
      auditConfigs :: (Core.Maybe [GoogleIamV1AuditConfig])
      -- | Associates a list of @members@, or principals, with a @role@. Optionally, may specify a @condition@ that determines how and when the @bindings@ are applied. Each of the @bindings@ must contain at least one principal. The @bindings@ in a @Policy@ can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the @bindings@ grant 50 different roles to @user:alice\@example.com@, and not to any other principal, then you can add another 1,450 principals to the @bindings@ in the @Policy@.
    , bindings :: (Core.Maybe [GoogleIamV1Binding])
      -- | @etag@ is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the @etag@ in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An @etag@ is returned in the response to @getIamPolicy@, and systems are expected to put that etag in the request to @setIamPolicy@ to ensure that their change will be applied to the same version of the policy. __Important:__ If you use IAM Conditions, you must include the @etag@ field whenever you call @setIamPolicy@. If you omit this field, then IAM allows you to overwrite a version @3@ policy with a version @1@ policy, and all of the conditions in the version @3@ policy are lost.
    , etag :: (Core.Maybe Core.Base64)
      -- | Specifies the format of the policy. Valid values are @0@, @1@, and @3@. Requests that specify an invalid value are rejected. Any operation that affects conditional role bindings must specify version @3@. This requirement applies to the following operations: * Getting a policy that includes a conditional role binding * Adding a conditional role binding to a policy * Changing a conditional role binding in a policy * Removing any role binding, with or without a condition, from a policy that includes conditions __Important:__ If you use IAM Conditions, you must include the @etag@ field whenever you call @setIamPolicy@. If you omit this field, then IAM allows you to overwrite a version @3@ policy with a version @1@ policy, and all of the conditions in the version @3@ policy are lost. If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset. To learn which resources support conditions in their IAM policies, see the
      -- <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    , version :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV1Policy' with the minimum fields required to make a request.
newGoogleIamV1Policy 
    ::  GoogleIamV1Policy
newGoogleIamV1Policy =
  GoogleIamV1Policy
    { auditConfigs = Core.Nothing
    , bindings = Core.Nothing
    , etag = Core.Nothing
    , version = Core.Nothing
    }

instance Core.FromJSON GoogleIamV1Policy where
        parseJSON
          = Core.withObject "GoogleIamV1Policy"
              (\ o ->
                 GoogleIamV1Policy Core.<$>
                   (o Core..:? "auditConfigs") Core.<*>
                     (o Core..:? "bindings")
                     Core.<*> (o Core..:? "etag")
                     Core.<*> (o Core..:? "version"))

instance Core.ToJSON GoogleIamV1Policy where
        toJSON GoogleIamV1Policy{..}
          = Core.object
              (Core.catMaybes
                 [("auditConfigs" Core..=) Core.<$> auditConfigs,
                  ("bindings" Core..=) Core.<$> bindings,
                  ("etag" Core..=) Core.<$> etag,
                  ("version" Core..=) Core.<$> version])


-- | Request message for @SetIamPolicy@ method.
--
-- /See:/ 'newGoogleIamV1SetIamPolicyRequest' smart constructor.
data GoogleIamV1SetIamPolicyRequest = GoogleIamV1SetIamPolicyRequest
    {
      -- | REQUIRED: The complete policy to be applied to the @resource@. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Google Cloud services (such as Projects) might reject them.
      policy :: (Core.Maybe GoogleIamV1Policy)
      -- | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used: @paths: \"bindings, etag\"@
    , updateMask :: (Core.Maybe Core.FieldMask)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV1SetIamPolicyRequest' with the minimum fields required to make a request.
newGoogleIamV1SetIamPolicyRequest 
    ::  GoogleIamV1SetIamPolicyRequest
newGoogleIamV1SetIamPolicyRequest =
  GoogleIamV1SetIamPolicyRequest
    {policy = Core.Nothing, updateMask = Core.Nothing}

instance Core.FromJSON GoogleIamV1SetIamPolicyRequest
         where
        parseJSON
          = Core.withObject "GoogleIamV1SetIamPolicyRequest"
              (\ o ->
                 GoogleIamV1SetIamPolicyRequest Core.<$>
                   (o Core..:? "policy") Core.<*>
                     (o Core..:? "updateMask"))

instance Core.ToJSON GoogleIamV1SetIamPolicyRequest
         where
        toJSON GoogleIamV1SetIamPolicyRequest{..}
          = Core.object
              (Core.catMaybes
                 [("policy" Core..=) Core.<$> policy,
                  ("updateMask" Core..=) Core.<$> updateMask])


-- | Request message for @TestIamPermissions@ method.
--
-- /See:/ 'newGoogleIamV1TestIamPermissionsRequest' smart constructor.
newtype GoogleIamV1TestIamPermissionsRequest = GoogleIamV1TestIamPermissionsRequest
    {
      -- | The set of permissions to check for the @resource@. Permissions with wildcards (such as @*@ or @storage.*@) are not allowed. For more information see <https://cloud.google.com/iam/docs/overview#permissions IAM Overview>.
      permissions :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV1TestIamPermissionsRequest' with the minimum fields required to make a request.
newGoogleIamV1TestIamPermissionsRequest 
    ::  GoogleIamV1TestIamPermissionsRequest
newGoogleIamV1TestIamPermissionsRequest =
  GoogleIamV1TestIamPermissionsRequest {permissions = Core.Nothing}

instance Core.FromJSON
           GoogleIamV1TestIamPermissionsRequest
         where
        parseJSON
          = Core.withObject
              "GoogleIamV1TestIamPermissionsRequest"
              (\ o ->
                 GoogleIamV1TestIamPermissionsRequest Core.<$>
                   (o Core..:? "permissions"))

instance Core.ToJSON
           GoogleIamV1TestIamPermissionsRequest
         where
        toJSON GoogleIamV1TestIamPermissionsRequest{..}
          = Core.object
              (Core.catMaybes
                 [("permissions" Core..=) Core.<$> permissions])


-- | Response message for @TestIamPermissions@ method.
--
-- /See:/ 'newGoogleIamV1TestIamPermissionsResponse' smart constructor.
newtype GoogleIamV1TestIamPermissionsResponse = GoogleIamV1TestIamPermissionsResponse
    {
      -- | A subset of @TestPermissionsRequest.permissions@ that the caller is allowed.
      permissions :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV1TestIamPermissionsResponse' with the minimum fields required to make a request.
newGoogleIamV1TestIamPermissionsResponse 
    ::  GoogleIamV1TestIamPermissionsResponse
newGoogleIamV1TestIamPermissionsResponse =
  GoogleIamV1TestIamPermissionsResponse {permissions = Core.Nothing}

instance Core.FromJSON
           GoogleIamV1TestIamPermissionsResponse
         where
        parseJSON
          = Core.withObject
              "GoogleIamV1TestIamPermissionsResponse"
              (\ o ->
                 GoogleIamV1TestIamPermissionsResponse Core.<$>
                   (o Core..:? "permissions"))

instance Core.ToJSON
           GoogleIamV1TestIamPermissionsResponse
         where
        toJSON GoogleIamV1TestIamPermissionsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("permissions" Core..=) Core.<$> permissions])


-- | The response message for Operations.ListOperations.
--
-- /See:/ 'newGoogleLongrunningListOperationsResponse' smart constructor.
data GoogleLongrunningListOperationsResponse = GoogleLongrunningListOperationsResponse
    {
      -- | The standard List next-page token.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | A list of operations that matches the specified filter in the request.
    , operations :: (Core.Maybe [GoogleLongrunningOperation])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleLongrunningListOperationsResponse' with the minimum fields required to make a request.
newGoogleLongrunningListOperationsResponse 
    ::  GoogleLongrunningListOperationsResponse
newGoogleLongrunningListOperationsResponse =
  GoogleLongrunningListOperationsResponse
    {nextPageToken = Core.Nothing, operations = Core.Nothing}

instance Core.FromJSON
           GoogleLongrunningListOperationsResponse
         where
        parseJSON
          = Core.withObject
              "GoogleLongrunningListOperationsResponse"
              (\ o ->
                 GoogleLongrunningListOperationsResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "operations"))

instance Core.ToJSON
           GoogleLongrunningListOperationsResponse
         where
        toJSON GoogleLongrunningListOperationsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("operations" Core..=) Core.<$> operations])


-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newGoogleLongrunningOperation' smart constructor.
data GoogleLongrunningOperation = GoogleLongrunningOperation
    {
      -- | If the value is @false@, it means the operation is still in progress. If @true@, the operation is completed, and either @error@ or @response@ is available.
      done :: (Core.Maybe Core.Bool)
      -- | The error result of the operation in case of failure or cancellation.
    , error :: (Core.Maybe GoogleRpcStatus)
      -- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
    , metadata :: (Core.Maybe GoogleLongrunningOperation_Metadata)
      -- | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the @name@ should be a resource name ending with @operations\/{unique_id}@.
    , name :: (Core.Maybe Core.Text)
      -- | The normal, successful response of the operation. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
    , response :: (Core.Maybe GoogleLongrunningOperation_Response)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleLongrunningOperation' with the minimum fields required to make a request.
newGoogleLongrunningOperation 
    ::  GoogleLongrunningOperation
newGoogleLongrunningOperation =
  GoogleLongrunningOperation
    { done = Core.Nothing
    , error = Core.Nothing
    , metadata = Core.Nothing
    , name = Core.Nothing
    , response = Core.Nothing
    }

instance Core.FromJSON GoogleLongrunningOperation
         where
        parseJSON
          = Core.withObject "GoogleLongrunningOperation"
              (\ o ->
                 GoogleLongrunningOperation Core.<$>
                   (o Core..:? "done") Core.<*> (o Core..:? "error")
                     Core.<*> (o Core..:? "metadata")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "response"))

instance Core.ToJSON GoogleLongrunningOperation where
        toJSON GoogleLongrunningOperation{..}
          = Core.object
              (Core.catMaybes
                 [("done" Core..=) Core.<$> done,
                  ("error" Core..=) Core.<$> error,
                  ("metadata" Core..=) Core.<$> metadata,
                  ("name" Core..=) Core.<$> name,
                  ("response" Core..=) Core.<$> response])


-- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
--
-- /See:/ 'newGoogleLongrunningOperation_Metadata' smart constructor.
newtype GoogleLongrunningOperation_Metadata = GoogleLongrunningOperation_Metadata
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleLongrunningOperation_Metadata' with the minimum fields required to make a request.
newGoogleLongrunningOperation_Metadata 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> GoogleLongrunningOperation_Metadata
newGoogleLongrunningOperation_Metadata additional =
  GoogleLongrunningOperation_Metadata {additional = additional}

instance Core.FromJSON
           GoogleLongrunningOperation_Metadata
         where
        parseJSON
          = Core.withObject
              "GoogleLongrunningOperation_Metadata"
              (\ o ->
                 GoogleLongrunningOperation_Metadata Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           GoogleLongrunningOperation_Metadata
         where
        toJSON GoogleLongrunningOperation_Metadata{..}
          = Core.toJSON additional


-- | The normal, successful response of the operation. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
--
-- /See:/ 'newGoogleLongrunningOperation_Response' smart constructor.
newtype GoogleLongrunningOperation_Response = GoogleLongrunningOperation_Response
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleLongrunningOperation_Response' with the minimum fields required to make a request.
newGoogleLongrunningOperation_Response 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> GoogleLongrunningOperation_Response
newGoogleLongrunningOperation_Response additional =
  GoogleLongrunningOperation_Response {additional = additional}

instance Core.FromJSON
           GoogleLongrunningOperation_Response
         where
        parseJSON
          = Core.withObject
              "GoogleLongrunningOperation_Response"
              (\ o ->
                 GoogleLongrunningOperation_Response Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           GoogleLongrunningOperation_Response
         where
        toJSON GoogleLongrunningOperation_Response{..}
          = Core.toJSON additional


-- | The request message for Operations.WaitOperation.
--
-- /See:/ 'newGoogleLongrunningWaitOperationRequest' smart constructor.
newtype GoogleLongrunningWaitOperationRequest = GoogleLongrunningWaitOperationRequest
    {
      -- | The maximum duration to wait before timing out. If left blank, the wait will be at most the time permitted by the underlying HTTP\/RPC protocol. If RPC context deadline is also specified, the shorter one will be used.
      timeout :: (Core.Maybe Core.Duration)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleLongrunningWaitOperationRequest' with the minimum fields required to make a request.
newGoogleLongrunningWaitOperationRequest 
    ::  GoogleLongrunningWaitOperationRequest
newGoogleLongrunningWaitOperationRequest =
  GoogleLongrunningWaitOperationRequest {timeout = Core.Nothing}

instance Core.FromJSON
           GoogleLongrunningWaitOperationRequest
         where
        parseJSON
          = Core.withObject
              "GoogleLongrunningWaitOperationRequest"
              (\ o ->
                 GoogleLongrunningWaitOperationRequest Core.<$>
                   (o Core..:? "timeout"))

instance Core.ToJSON
           GoogleLongrunningWaitOperationRequest
         where
        toJSON GoogleLongrunningWaitOperationRequest{..}
          = Core.object
              (Core.catMaybes
                 [("timeout" Core..=) Core.<$> timeout])


-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
--
-- /See:/ 'newGoogleProtobufEmpty' smart constructor.
data GoogleProtobufEmpty = GoogleProtobufEmpty
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleProtobufEmpty' with the minimum fields required to make a request.
newGoogleProtobufEmpty 
    ::  GoogleProtobufEmpty
newGoogleProtobufEmpty = GoogleProtobufEmpty

instance Core.FromJSON GoogleProtobufEmpty where
        parseJSON
          = Core.withObject "GoogleProtobufEmpty"
              (\ o -> Core.pure GoogleProtobufEmpty)

instance Core.ToJSON GoogleProtobufEmpty where
        toJSON = Core.const Core.emptyObject


-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newGoogleRpcStatus' smart constructor.
data GoogleRpcStatus = GoogleRpcStatus
    {
      -- | The status code, which should be an enum value of google.rpc.Code.
      code :: (Core.Maybe Core.Int32)
      -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    , details :: (Core.Maybe [GoogleRpcStatus_DetailsItem])
      -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    , message :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleRpcStatus' with the minimum fields required to make a request.
newGoogleRpcStatus 
    ::  GoogleRpcStatus
newGoogleRpcStatus =
  GoogleRpcStatus
    {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON GoogleRpcStatus where
        parseJSON
          = Core.withObject "GoogleRpcStatus"
              (\ o ->
                 GoogleRpcStatus Core.<$>
                   (o Core..:? "code") Core.<*> (o Core..:? "details")
                     Core.<*> (o Core..:? "message"))

instance Core.ToJSON GoogleRpcStatus where
        toJSON GoogleRpcStatus{..}
          = Core.object
              (Core.catMaybes
                 [("code" Core..=) Core.<$> code,
                  ("details" Core..=) Core.<$> details,
                  ("message" Core..=) Core.<$> message])


--
-- /See:/ 'newGoogleRpcStatus_DetailsItem' smart constructor.
newtype GoogleRpcStatus_DetailsItem = GoogleRpcStatus_DetailsItem
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleRpcStatus_DetailsItem' with the minimum fields required to make a request.
newGoogleRpcStatus_DetailsItem 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> GoogleRpcStatus_DetailsItem
newGoogleRpcStatus_DetailsItem additional =
  GoogleRpcStatus_DetailsItem {additional = additional}

instance Core.FromJSON GoogleRpcStatus_DetailsItem
         where
        parseJSON
          = Core.withObject "GoogleRpcStatus_DetailsItem"
              (\ o ->
                 GoogleRpcStatus_DetailsItem Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON GoogleRpcStatus_DetailsItem
         where
        toJSON GoogleRpcStatus_DetailsItem{..}
          = Core.toJSON additional


-- | Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https:\/\/github.com\/google\/cel-spec. Example (Comparison): title: \"Summary size limit\" description: \"Determines if a summary is less than 100 chars\" expression: \"document.summary.size() \< 100\" Example (Equality): title: \"Requestor is owner\" description: \"Determines if requestor is the document owner\" expression: \"document.owner == request.auth.claims.email\" Example (Logic): title: \"Public documents\" description: \"Determine whether the document should be publicly visible\" expression: \"document.type != \'private\' && document.type != \'internal\'\" Example (Data Manipulation): title: \"Notification string\" description: \"Create a notification string with a timestamp.\" expression: \"\'New message received at \' + string(document.create_time)\" The exact variables and functions that may be referenced within an expression are
-- determined by the service that evaluates it. See the service documentation for additional information.
--
-- /See:/ 'newGoogleTypeExpr' smart constructor.
data GoogleTypeExpr = GoogleTypeExpr
    {
      -- | Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.
      description :: (Core.Maybe Core.Text)
      -- | Textual representation of an expression in Common Expression Language syntax.
    , expression :: (Core.Maybe Core.Text)
      -- | Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file.
    , location :: (Core.Maybe Core.Text)
      -- | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression.
    , title :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleTypeExpr' with the minimum fields required to make a request.
newGoogleTypeExpr 
    ::  GoogleTypeExpr
newGoogleTypeExpr =
  GoogleTypeExpr
    { description = Core.Nothing
    , expression = Core.Nothing
    , location = Core.Nothing
    , title = Core.Nothing
    }

instance Core.FromJSON GoogleTypeExpr where
        parseJSON
          = Core.withObject "GoogleTypeExpr"
              (\ o ->
                 GoogleTypeExpr Core.<$>
                   (o Core..:? "description") Core.<*>
                     (o Core..:? "expression")
                     Core.<*> (o Core..:? "location")
                     Core.<*> (o Core..:? "title"))

instance Core.ToJSON GoogleTypeExpr where
        toJSON GoogleTypeExpr{..}
          = Core.object
              (Core.catMaybes
                 [("description" Core..=) Core.<$> description,
                  ("expression" Core..=) Core.<$> expression,
                  ("location" Core..=) Core.<$> location,
                  ("title" Core..=) Core.<$> title])


-- | This is proto2\'s version of MessageSet.
--
-- /See:/ 'newProto2BridgeMessageSet' smart constructor.
data Proto2BridgeMessageSet = Proto2BridgeMessageSet
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Proto2BridgeMessageSet' with the minimum fields required to make a request.
newProto2BridgeMessageSet 
    ::  Proto2BridgeMessageSet
newProto2BridgeMessageSet = Proto2BridgeMessageSet

instance Core.FromJSON Proto2BridgeMessageSet where
        parseJSON
          = Core.withObject "Proto2BridgeMessageSet"
              (\ o -> Core.pure Proto2BridgeMessageSet)

instance Core.ToJSON Proto2BridgeMessageSet where
        toJSON = Core.const Core.emptyObject


-- | Wire-format for a Status object
--
-- /See:/ 'newUtilStatusProto' smart constructor.
data UtilStatusProto = UtilStatusProto
    {
      -- | The canonical error code (see codes.proto) that most closely corresponds to this status. This may be missing, and in the common case of the generic space, it definitely will be.
      canonicalCode :: (Core.Maybe Core.Int32)
      -- | Numeric code drawn from the space specified below. Often, this is the canonical error space, and code is drawn from google3\/util\/task\/codes.proto
    , code :: (Core.Maybe Core.Int32)
      -- | Detail message
    , message :: (Core.Maybe Core.Text)
      -- | message_set associates an arbitrary proto message with the status.
    , messageSet :: (Core.Maybe Proto2BridgeMessageSet)
      -- | The following are usually only present when code != 0 Space to which this status belongs
    , space :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UtilStatusProto' with the minimum fields required to make a request.
newUtilStatusProto 
    ::  UtilStatusProto
newUtilStatusProto =
  UtilStatusProto
    { canonicalCode = Core.Nothing
    , code = Core.Nothing
    , message = Core.Nothing
    , messageSet = Core.Nothing
    , space = Core.Nothing
    }

instance Core.FromJSON UtilStatusProto where
        parseJSON
          = Core.withObject "UtilStatusProto"
              (\ o ->
                 UtilStatusProto Core.<$>
                   (o Core..:? "canonicalCode") Core.<*>
                     (o Core..:? "code")
                     Core.<*> (o Core..:? "message")
                     Core.<*> (o Core..:? "messageSet")
                     Core.<*> (o Core..:? "space"))

instance Core.ToJSON UtilStatusProto where
        toJSON UtilStatusProto{..}
          = Core.object
              (Core.catMaybes
                 [("canonicalCode" Core..=) Core.<$> canonicalCode,
                  ("code" Core..=) Core.<$> code,
                  ("message" Core..=) Core.<$> message,
                  ("messageSet" Core..=) Core.<$> messageSet,
                  ("space" Core..=) Core.<$> space])

