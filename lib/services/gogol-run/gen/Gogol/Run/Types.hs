{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Run.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.Run.Types
    (
    -- * Configuration
      runService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** GoogleCloudRunV2BinaryAuthorization
    , GoogleCloudRunV2BinaryAuthorization (..)
    , newGoogleCloudRunV2BinaryAuthorization

    -- ** GoogleCloudRunV2CloudSqlInstance
    , GoogleCloudRunV2CloudSqlInstance (..)
    , newGoogleCloudRunV2CloudSqlInstance

    -- ** GoogleCloudRunV2Condition
    , GoogleCloudRunV2Condition (..)
    , newGoogleCloudRunV2Condition

    -- ** GoogleCloudRunV2Condition_DomainMappingReason
    , GoogleCloudRunV2Condition_DomainMappingReason (..)

    -- ** GoogleCloudRunV2Condition_ExecutionReason
    , GoogleCloudRunV2Condition_ExecutionReason (..)

    -- ** GoogleCloudRunV2Condition_InternalReason
    , GoogleCloudRunV2Condition_InternalReason (..)

    -- ** GoogleCloudRunV2Condition_Reason
    , GoogleCloudRunV2Condition_Reason (..)

    -- ** GoogleCloudRunV2Condition_RevisionReason
    , GoogleCloudRunV2Condition_RevisionReason (..)

    -- ** GoogleCloudRunV2Condition_Severity
    , GoogleCloudRunV2Condition_Severity (..)

    -- ** GoogleCloudRunV2Condition_State
    , GoogleCloudRunV2Condition_State (..)

    -- ** GoogleCloudRunV2Container
    , GoogleCloudRunV2Container (..)
    , newGoogleCloudRunV2Container

    -- ** GoogleCloudRunV2ContainerPort
    , GoogleCloudRunV2ContainerPort (..)
    , newGoogleCloudRunV2ContainerPort

    -- ** GoogleCloudRunV2EnvVar
    , GoogleCloudRunV2EnvVar (..)
    , newGoogleCloudRunV2EnvVar

    -- ** GoogleCloudRunV2EnvVarSource
    , GoogleCloudRunV2EnvVarSource (..)
    , newGoogleCloudRunV2EnvVarSource

    -- ** GoogleCloudRunV2ListRevisionsResponse
    , GoogleCloudRunV2ListRevisionsResponse (..)
    , newGoogleCloudRunV2ListRevisionsResponse

    -- ** GoogleCloudRunV2ListServicesResponse
    , GoogleCloudRunV2ListServicesResponse (..)
    , newGoogleCloudRunV2ListServicesResponse

    -- ** GoogleCloudRunV2ResourceRequirements
    , GoogleCloudRunV2ResourceRequirements (..)
    , newGoogleCloudRunV2ResourceRequirements

    -- ** GoogleCloudRunV2ResourceRequirements_Limits
    , GoogleCloudRunV2ResourceRequirements_Limits (..)
    , newGoogleCloudRunV2ResourceRequirements_Limits

    -- ** GoogleCloudRunV2Revision
    , GoogleCloudRunV2Revision (..)
    , newGoogleCloudRunV2Revision

    -- ** GoogleCloudRunV2Revision_Annotations
    , GoogleCloudRunV2Revision_Annotations (..)
    , newGoogleCloudRunV2Revision_Annotations

    -- ** GoogleCloudRunV2Revision_ExecutionEnvironment
    , GoogleCloudRunV2Revision_ExecutionEnvironment (..)

    -- ** GoogleCloudRunV2Revision_Labels
    , GoogleCloudRunV2Revision_Labels (..)
    , newGoogleCloudRunV2Revision_Labels

    -- ** GoogleCloudRunV2Revision_LaunchStage
    , GoogleCloudRunV2Revision_LaunchStage (..)

    -- ** GoogleCloudRunV2RevisionScaling
    , GoogleCloudRunV2RevisionScaling (..)
    , newGoogleCloudRunV2RevisionScaling

    -- ** GoogleCloudRunV2RevisionTemplate
    , GoogleCloudRunV2RevisionTemplate (..)
    , newGoogleCloudRunV2RevisionTemplate

    -- ** GoogleCloudRunV2RevisionTemplate_Annotations
    , GoogleCloudRunV2RevisionTemplate_Annotations (..)
    , newGoogleCloudRunV2RevisionTemplate_Annotations

    -- ** GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment
    , GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment (..)

    -- ** GoogleCloudRunV2RevisionTemplate_Labels
    , GoogleCloudRunV2RevisionTemplate_Labels (..)
    , newGoogleCloudRunV2RevisionTemplate_Labels

    -- ** GoogleCloudRunV2SecretKeySelector
    , GoogleCloudRunV2SecretKeySelector (..)
    , newGoogleCloudRunV2SecretKeySelector

    -- ** GoogleCloudRunV2SecretVolumeSource
    , GoogleCloudRunV2SecretVolumeSource (..)
    , newGoogleCloudRunV2SecretVolumeSource

    -- ** GoogleCloudRunV2Service
    , GoogleCloudRunV2Service (..)
    , newGoogleCloudRunV2Service

    -- ** GoogleCloudRunV2Service_Annotations
    , GoogleCloudRunV2Service_Annotations (..)
    , newGoogleCloudRunV2Service_Annotations

    -- ** GoogleCloudRunV2Service_Ingress
    , GoogleCloudRunV2Service_Ingress (..)

    -- ** GoogleCloudRunV2Service_Labels
    , GoogleCloudRunV2Service_Labels (..)
    , newGoogleCloudRunV2Service_Labels

    -- ** GoogleCloudRunV2Service_LaunchStage
    , GoogleCloudRunV2Service_LaunchStage (..)

    -- ** GoogleCloudRunV2TrafficTarget
    , GoogleCloudRunV2TrafficTarget (..)
    , newGoogleCloudRunV2TrafficTarget

    -- ** GoogleCloudRunV2TrafficTarget_Type
    , GoogleCloudRunV2TrafficTarget_Type (..)

    -- ** GoogleCloudRunV2TrafficTargetStatus
    , GoogleCloudRunV2TrafficTargetStatus (..)
    , newGoogleCloudRunV2TrafficTargetStatus

    -- ** GoogleCloudRunV2TrafficTargetStatus_Type
    , GoogleCloudRunV2TrafficTargetStatus_Type (..)

    -- ** GoogleCloudRunV2VersionToPath
    , GoogleCloudRunV2VersionToPath (..)
    , newGoogleCloudRunV2VersionToPath

    -- ** GoogleCloudRunV2Volume
    , GoogleCloudRunV2Volume (..)
    , newGoogleCloudRunV2Volume

    -- ** GoogleCloudRunV2VolumeMount
    , GoogleCloudRunV2VolumeMount (..)
    , newGoogleCloudRunV2VolumeMount

    -- ** GoogleCloudRunV2VpcAccess
    , GoogleCloudRunV2VpcAccess (..)
    , newGoogleCloudRunV2VpcAccess

    -- ** GoogleCloudRunV2VpcAccess_Egress
    , GoogleCloudRunV2VpcAccess_Egress (..)

    -- ** GoogleIamV1AuditConfig
    , GoogleIamV1AuditConfig (..)
    , newGoogleIamV1AuditConfig

    -- ** GoogleIamV1AuditLogConfig
    , GoogleIamV1AuditLogConfig (..)
    , newGoogleIamV1AuditLogConfig

    -- ** GoogleIamV1AuditLogConfig_LogType
    , GoogleIamV1AuditLogConfig_LogType (..)

    -- ** GoogleIamV1Binding
    , GoogleIamV1Binding (..)
    , newGoogleIamV1Binding

    -- ** GoogleIamV1Policy
    , GoogleIamV1Policy (..)
    , newGoogleIamV1Policy

    -- ** GoogleIamV1SetIamPolicyRequest
    , GoogleIamV1SetIamPolicyRequest (..)
    , newGoogleIamV1SetIamPolicyRequest

    -- ** GoogleIamV1TestIamPermissionsRequest
    , GoogleIamV1TestIamPermissionsRequest (..)
    , newGoogleIamV1TestIamPermissionsRequest

    -- ** GoogleIamV1TestIamPermissionsResponse
    , GoogleIamV1TestIamPermissionsResponse (..)
    , newGoogleIamV1TestIamPermissionsResponse

    -- ** GoogleLongrunningListOperationsResponse
    , GoogleLongrunningListOperationsResponse (..)
    , newGoogleLongrunningListOperationsResponse

    -- ** GoogleLongrunningOperation
    , GoogleLongrunningOperation (..)
    , newGoogleLongrunningOperation

    -- ** GoogleLongrunningOperation_Metadata
    , GoogleLongrunningOperation_Metadata (..)
    , newGoogleLongrunningOperation_Metadata

    -- ** GoogleLongrunningOperation_Response
    , GoogleLongrunningOperation_Response (..)
    , newGoogleLongrunningOperation_Response

    -- ** GoogleProtobufEmpty
    , GoogleProtobufEmpty (..)
    , newGoogleProtobufEmpty

    -- ** GoogleRpcStatus
    , GoogleRpcStatus (..)
    , newGoogleRpcStatus

    -- ** GoogleRpcStatus_DetailsItem
    , GoogleRpcStatus_DetailsItem (..)
    , newGoogleRpcStatus_DetailsItem

    -- ** GoogleTypeExpr
    , GoogleTypeExpr (..)
    , newGoogleTypeExpr
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Run.Internal.Product
import Gogol.Run.Internal.Sum

-- | Default request referring to version @v2@ of the Cloud Run Admin API. This contains the host and root path used as a starting point for constructing service requests.
runService :: Core.ServiceConfig
runService
  = Core.defaultService (Core.ServiceId "run:v2")
      "run.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy
