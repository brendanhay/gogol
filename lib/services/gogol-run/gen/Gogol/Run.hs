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
-- Module      : Gogol.Run
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
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

    -- ** run.projects.locations.jobs.create
    RunProjectsLocationsJobsCreateResource,
    RunProjectsLocationsJobsCreate (..),
    newRunProjectsLocationsJobsCreate,

    -- ** run.projects.locations.jobs.delete
    RunProjectsLocationsJobsDeleteResource,
    RunProjectsLocationsJobsDelete (..),
    newRunProjectsLocationsJobsDelete,

    -- ** run.projects.locations.jobs.executions.delete
    RunProjectsLocationsJobsExecutionsDeleteResource,
    RunProjectsLocationsJobsExecutionsDelete (..),
    newRunProjectsLocationsJobsExecutionsDelete,

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

    -- ** GoogleCloudRunV2ContainerPort
    GoogleCloudRunV2ContainerPort (..),
    newGoogleCloudRunV2ContainerPort,

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

    -- ** GoogleCloudRunV2ExecutionTemplate
    GoogleCloudRunV2ExecutionTemplate (..),
    newGoogleCloudRunV2ExecutionTemplate,

    -- ** GoogleCloudRunV2ExecutionTemplate_Annotations
    GoogleCloudRunV2ExecutionTemplate_Annotations (..),
    newGoogleCloudRunV2ExecutionTemplate_Annotations,

    -- ** GoogleCloudRunV2ExecutionTemplate_Labels
    GoogleCloudRunV2ExecutionTemplate_Labels (..),
    newGoogleCloudRunV2ExecutionTemplate_Labels,

    -- ** GoogleCloudRunV2GRPCAction
    GoogleCloudRunV2GRPCAction (..),
    newGoogleCloudRunV2GRPCAction,

    -- ** GoogleCloudRunV2HTTPGetAction
    GoogleCloudRunV2HTTPGetAction (..),
    newGoogleCloudRunV2HTTPGetAction,

    -- ** GoogleCloudRunV2HTTPHeader
    GoogleCloudRunV2HTTPHeader (..),
    newGoogleCloudRunV2HTTPHeader,

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

    -- ** GoogleCloudRunV2RevisionTemplate
    GoogleCloudRunV2RevisionTemplate (..),
    newGoogleCloudRunV2RevisionTemplate,

    -- ** GoogleCloudRunV2RevisionTemplate_Annotations
    GoogleCloudRunV2RevisionTemplate_Annotations (..),
    newGoogleCloudRunV2RevisionTemplate_Annotations,

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
  )
where

import Gogol.Run.Projects.Locations.Jobs.Create
import Gogol.Run.Projects.Locations.Jobs.Delete
import Gogol.Run.Projects.Locations.Jobs.Executions.Delete
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
import Gogol.Run.Projects.Locations.Services.Revisions.Get
import Gogol.Run.Projects.Locations.Services.Revisions.List
import Gogol.Run.Projects.Locations.Services.SetIamPolicy
import Gogol.Run.Projects.Locations.Services.TestIamPermissions
import Gogol.Run.Types
