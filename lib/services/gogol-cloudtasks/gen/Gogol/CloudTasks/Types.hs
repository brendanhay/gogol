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
-- Module      : Gogol.CloudTasks.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.CloudTasks.Types
  ( -- * Configuration
    cloudTasksService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AppEngineHttpRequest
    AppEngineHttpRequest (..),
    newAppEngineHttpRequest,

    -- ** AppEngineHttpRequest_Headers
    AppEngineHttpRequest_Headers (..),
    newAppEngineHttpRequest_Headers,

    -- ** AppEngineHttpRequest_HttpMethod
    AppEngineHttpRequest_HttpMethod (..),

    -- ** AppEngineRouting
    AppEngineRouting (..),
    newAppEngineRouting,

    -- ** Attempt
    Attempt (..),
    newAttempt,

    -- ** Binding
    Binding (..),
    newBinding,

    -- ** BufferTaskRequest
    BufferTaskRequest (..),
    newBufferTaskRequest,

    -- ** BufferTaskResponse
    BufferTaskResponse (..),
    newBufferTaskResponse,

    -- ** CmekConfig
    CmekConfig (..),
    newCmekConfig,

    -- ** CreateTaskRequest
    CreateTaskRequest (..),
    newCreateTaskRequest,

    -- ** CreateTaskRequest_ResponseView
    CreateTaskRequest_ResponseView (..),

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** Expr
    Expr (..),
    newExpr,

    -- ** GetIamPolicyRequest
    GetIamPolicyRequest (..),
    newGetIamPolicyRequest,

    -- ** GetPolicyOptions
    GetPolicyOptions (..),
    newGetPolicyOptions,

    -- ** Header
    Header (..),
    newHeader,

    -- ** HeaderOverride
    HeaderOverride (..),
    newHeaderOverride,

    -- ** HttpBody
    HttpBody (..),
    newHttpBody,

    -- ** HttpBody_ExtensionsItem
    HttpBody_ExtensionsItem (..),
    newHttpBody_ExtensionsItem,

    -- ** HttpRequest
    HttpRequest (..),
    newHttpRequest,

    -- ** HttpRequest_Headers
    HttpRequest_Headers (..),
    newHttpRequest_Headers,

    -- ** HttpRequest_HttpMethod
    HttpRequest_HttpMethod (..),

    -- ** HttpTarget
    HttpTarget (..),
    newHttpTarget,

    -- ** HttpTarget_HttpMethod
    HttpTarget_HttpMethod (..),

    -- ** ListLocationsResponse
    ListLocationsResponse (..),
    newListLocationsResponse,

    -- ** ListQueuesResponse
    ListQueuesResponse (..),
    newListQueuesResponse,

    -- ** ListTasksResponse
    ListTasksResponse (..),
    newListTasksResponse,

    -- ** Location
    Location (..),
    newLocation,

    -- ** Location_Labels
    Location_Labels (..),
    newLocation_Labels,

    -- ** Location_Metadata
    Location_Metadata (..),
    newLocation_Metadata,

    -- ** OAuthToken
    OAuthToken (..),
    newOAuthToken,

    -- ** OidcToken
    OidcToken (..),
    newOidcToken,

    -- ** PathOverride
    PathOverride (..),
    newPathOverride,

    -- ** PauseQueueRequest
    PauseQueueRequest (..),
    newPauseQueueRequest,

    -- ** Policy
    Policy (..),
    newPolicy,

    -- ** PurgeQueueRequest
    PurgeQueueRequest (..),
    newPurgeQueueRequest,

    -- ** QueryOverride
    QueryOverride (..),
    newQueryOverride,

    -- ** Queue
    Queue (..),
    newQueue,

    -- ** Queue_State
    Queue_State (..),

    -- ** RateLimits
    RateLimits (..),
    newRateLimits,

    -- ** ResumeQueueRequest
    ResumeQueueRequest (..),
    newResumeQueueRequest,

    -- ** RetryConfig
    RetryConfig (..),
    newRetryConfig,

    -- ** RunTaskRequest
    RunTaskRequest (..),
    newRunTaskRequest,

    -- ** RunTaskRequest_ResponseView
    RunTaskRequest_ResponseView (..),

    -- ** SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- ** StackdriverLoggingConfig
    StackdriverLoggingConfig (..),
    newStackdriverLoggingConfig,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** Task
    Task (..),
    newTask,

    -- ** Task_View
    Task_View (..),

    -- ** TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- ** TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- ** UriOverride
    UriOverride (..),
    newUriOverride,

    -- ** UriOverride_Scheme
    UriOverride_Scheme (..),

    -- ** UriOverride_UriOverrideEnforceMode
    UriOverride_UriOverrideEnforceMode (..),

    -- ** ProjectsLocationsQueuesTasksGetResponseView
    ProjectsLocationsQueuesTasksGetResponseView (..),

    -- ** ProjectsLocationsQueuesTasksListResponseView
    ProjectsLocationsQueuesTasksListResponseView (..),
  )
where

import Gogol.CloudTasks.Internal.Product
import Gogol.CloudTasks.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v2@ of the Cloud Tasks API. This contains the host and root path used as a starting point for constructing service requests.
cloudTasksService :: Core.ServiceConfig
cloudTasksService =
  Core.defaultService
    (Core.ServiceId "cloudtasks:v2")
    "cloudtasks.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl =
  "https://www.googleapis.com/auth/cloud-platform"
