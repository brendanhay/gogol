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
-- Module      : Network.Google.CloudTasks
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages the execution of large numbers of distributed requests.
--
-- /See:/ <https://cloud.google.com/tasks/ Cloud Tasks API Reference>
module Network.Google.CloudTasks
  ( -- * Configuration
    cloudTasksService,

    -- * OAuth Scopes
    cloudPlatformScope,

    -- * Resources

    -- ** cloudtasks.projects.locations.get
    CloudTasksProjectsLocationsGetResource,
    newCloudTasksProjectsLocationsGet,
    CloudTasksProjectsLocationsGet,

    -- ** cloudtasks.projects.locations.list
    CloudTasksProjectsLocationsListResource,
    newCloudTasksProjectsLocationsList,
    CloudTasksProjectsLocationsList,

    -- ** cloudtasks.projects.locations.queues.create
    CloudTasksProjectsLocationsQueuesCreateResource,
    newCloudTasksProjectsLocationsQueuesCreate,
    CloudTasksProjectsLocationsQueuesCreate,

    -- ** cloudtasks.projects.locations.queues.delete
    CloudTasksProjectsLocationsQueuesDeleteResource,
    newCloudTasksProjectsLocationsQueuesDelete,
    CloudTasksProjectsLocationsQueuesDelete,

    -- ** cloudtasks.projects.locations.queues.get
    CloudTasksProjectsLocationsQueuesGetResource,
    newCloudTasksProjectsLocationsQueuesGet,
    CloudTasksProjectsLocationsQueuesGet,

    -- ** cloudtasks.projects.locations.queues.getIamPolicy
    CloudTasksProjectsLocationsQueuesGetIamPolicyResource,
    newCloudTasksProjectsLocationsQueuesGetIamPolicy,
    CloudTasksProjectsLocationsQueuesGetIamPolicy,

    -- ** cloudtasks.projects.locations.queues.list
    CloudTasksProjectsLocationsQueuesListResource,
    newCloudTasksProjectsLocationsQueuesList,
    CloudTasksProjectsLocationsQueuesList,

    -- ** cloudtasks.projects.locations.queues.patch
    CloudTasksProjectsLocationsQueuesPatchResource,
    newCloudTasksProjectsLocationsQueuesPatch,
    CloudTasksProjectsLocationsQueuesPatch,

    -- ** cloudtasks.projects.locations.queues.pause
    CloudTasksProjectsLocationsQueuesPauseResource,
    newCloudTasksProjectsLocationsQueuesPause,
    CloudTasksProjectsLocationsQueuesPause,

    -- ** cloudtasks.projects.locations.queues.purge
    CloudTasksProjectsLocationsQueuesPurgeResource,
    newCloudTasksProjectsLocationsQueuesPurge,
    CloudTasksProjectsLocationsQueuesPurge,

    -- ** cloudtasks.projects.locations.queues.resume
    CloudTasksProjectsLocationsQueuesResumeResource,
    newCloudTasksProjectsLocationsQueuesResume,
    CloudTasksProjectsLocationsQueuesResume,

    -- ** cloudtasks.projects.locations.queues.setIamPolicy
    CloudTasksProjectsLocationsQueuesSetIamPolicyResource,
    newCloudTasksProjectsLocationsQueuesSetIamPolicy,
    CloudTasksProjectsLocationsQueuesSetIamPolicy,

    -- ** cloudtasks.projects.locations.queues.tasks.create
    CloudTasksProjectsLocationsQueuesTasksCreateResource,
    newCloudTasksProjectsLocationsQueuesTasksCreate,
    CloudTasksProjectsLocationsQueuesTasksCreate,

    -- ** cloudtasks.projects.locations.queues.tasks.delete
    CloudTasksProjectsLocationsQueuesTasksDeleteResource,
    newCloudTasksProjectsLocationsQueuesTasksDelete,
    CloudTasksProjectsLocationsQueuesTasksDelete,

    -- ** cloudtasks.projects.locations.queues.tasks.get
    CloudTasksProjectsLocationsQueuesTasksGetResource,
    newCloudTasksProjectsLocationsQueuesTasksGet,
    CloudTasksProjectsLocationsQueuesTasksGet,

    -- ** cloudtasks.projects.locations.queues.tasks.list
    CloudTasksProjectsLocationsQueuesTasksListResource,
    newCloudTasksProjectsLocationsQueuesTasksList,
    CloudTasksProjectsLocationsQueuesTasksList,

    -- ** cloudtasks.projects.locations.queues.tasks.run
    CloudTasksProjectsLocationsQueuesTasksRunResource,
    newCloudTasksProjectsLocationsQueuesTasksRun,
    CloudTasksProjectsLocationsQueuesTasksRun,

    -- ** cloudtasks.projects.locations.queues.testIamPermissions
    CloudTasksProjectsLocationsQueuesTestIamPermissionsResource,
    newCloudTasksProjectsLocationsQueuesTestIamPermissions,
    CloudTasksProjectsLocationsQueuesTestIamPermissions,

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

import Network.Google.CloudTasks.Projects.Locations.Get
import Network.Google.CloudTasks.Projects.Locations.List
import Network.Google.CloudTasks.Projects.Locations.Queues.Create
import Network.Google.CloudTasks.Projects.Locations.Queues.Delete
import Network.Google.CloudTasks.Projects.Locations.Queues.Get
import Network.Google.CloudTasks.Projects.Locations.Queues.GetIamPolicy
import Network.Google.CloudTasks.Projects.Locations.Queues.List
import Network.Google.CloudTasks.Projects.Locations.Queues.Patch
import Network.Google.CloudTasks.Projects.Locations.Queues.Pause
import Network.Google.CloudTasks.Projects.Locations.Queues.Purge
import Network.Google.CloudTasks.Projects.Locations.Queues.Resume
import Network.Google.CloudTasks.Projects.Locations.Queues.SetIamPolicy
import Network.Google.CloudTasks.Projects.Locations.Queues.Tasks.Create
import Network.Google.CloudTasks.Projects.Locations.Queues.Tasks.Delete
import Network.Google.CloudTasks.Projects.Locations.Queues.Tasks.Get
import Network.Google.CloudTasks.Projects.Locations.Queues.Tasks.List
import Network.Google.CloudTasks.Projects.Locations.Queues.Tasks.Run
import Network.Google.CloudTasks.Projects.Locations.Queues.TestIamPermissions
import Network.Google.CloudTasks.Types
