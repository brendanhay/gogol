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
-- Module      : Network.Google.CloudTasks.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.CloudTasks.Types
  ( -- * Configuration
    cloudTasksService,

    -- * OAuth Scopes
    cloudPlatformScope,

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

    -- ** HttpRequest
    HttpRequest (..),
    newHttpRequest,

    -- ** HttpRequest_Headers
    HttpRequest_Headers (..),
    newHttpRequest_Headers,

    -- ** HttpRequest_HttpMethod
    HttpRequest_HttpMethod (..),

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

    -- ** PauseQueueRequest
    PauseQueueRequest (..),
    newPauseQueueRequest,

    -- ** Policy
    Policy (..),
    newPolicy,

    -- ** PurgeQueueRequest
    PurgeQueueRequest (..),
    newPurgeQueueRequest,

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

    -- ** ProjectsLocationsQueuesTasksGetResponseView
    ProjectsLocationsQueuesTasksGetResponseView (..),

    -- ** ProjectsLocationsQueuesTasksListResponseView
    ProjectsLocationsQueuesTasksListResponseView (..),
  )
where

import Network.Google.CloudTasks.Internal.Product
import Network.Google.CloudTasks.Internal.Sum
import qualified Network.Google.Prelude as Core

-- | Default request referring to version @v2@ of the Cloud Tasks API. This contains the host and root path used as a starting point for constructing service requests.
cloudTasksService :: Core.ServiceConfig
cloudTasksService =
  Core.defaultService
    (Core.ServiceId "cloudtasks:v2")
    "cloudtasks.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy
