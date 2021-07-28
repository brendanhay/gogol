{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.CloudTasks
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages the execution of large numbers of distributed requests.
--
-- /See:/ <https://cloud.google.com/tasks/ Cloud Tasks API Reference>
module Network.Google.CloudTasks
    (
    -- * Service Configuration
      cloudTasksService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , CloudTasksAPI

    -- * Resources

    -- ** cloudtasks.projects.locations.get
    , module Network.Google.Resource.CloudTasks.Projects.Locations.Get

    -- ** cloudtasks.projects.locations.list
    , module Network.Google.Resource.CloudTasks.Projects.Locations.List

    -- ** cloudtasks.projects.locations.queues.create
    , module Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Create

    -- ** cloudtasks.projects.locations.queues.delete
    , module Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Delete

    -- ** cloudtasks.projects.locations.queues.get
    , module Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Get

    -- ** cloudtasks.projects.locations.queues.getIamPolicy
    , module Network.Google.Resource.CloudTasks.Projects.Locations.Queues.GetIAMPolicy

    -- ** cloudtasks.projects.locations.queues.list
    , module Network.Google.Resource.CloudTasks.Projects.Locations.Queues.List

    -- ** cloudtasks.projects.locations.queues.patch
    , module Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Patch

    -- ** cloudtasks.projects.locations.queues.pause
    , module Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Pause

    -- ** cloudtasks.projects.locations.queues.purge
    , module Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Purge

    -- ** cloudtasks.projects.locations.queues.resume
    , module Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Resume

    -- ** cloudtasks.projects.locations.queues.setIamPolicy
    , module Network.Google.Resource.CloudTasks.Projects.Locations.Queues.SetIAMPolicy

    -- ** cloudtasks.projects.locations.queues.tasks.create
    , module Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Tasks.Create

    -- ** cloudtasks.projects.locations.queues.tasks.delete
    , module Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Tasks.Delete

    -- ** cloudtasks.projects.locations.queues.tasks.get
    , module Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Tasks.Get

    -- ** cloudtasks.projects.locations.queues.tasks.list
    , module Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Tasks.List

    -- ** cloudtasks.projects.locations.queues.tasks.run
    , module Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Tasks.Run

    -- ** cloudtasks.projects.locations.queues.testIamPermissions
    , module Network.Google.Resource.CloudTasks.Projects.Locations.Queues.TestIAMPermissions

    -- * Types

    -- ** RateLimits
    , RateLimits
    , rateLimits
    , rlMaxConcurrentDispatches
    , rlMaxDispatchesPerSecond
    , rlMaxBurstSize

    -- ** OAuthToken
    , OAuthToken
    , oAuthToken
    , oatScope
    , oatServiceAccountEmail

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- ** ListLocationsResponse
    , ListLocationsResponse
    , listLocationsResponse
    , llrNextPageToken
    , llrLocations

    -- ** GetIAMPolicyRequest
    , GetIAMPolicyRequest
    , getIAMPolicyRequest
    , giprOptions

    -- ** OidcToken
    , OidcToken
    , oidcToken
    , otAudience
    , otServiceAccountEmail

    -- ** RetryConfig
    , RetryConfig
    , retryConfig
    , rcMaxDoublings
    , rcMaxRetryDuration
    , rcMaxAttempts
    , rcMaxBackoff
    , rcMinBackoff

    -- ** RunTaskRequest
    , RunTaskRequest
    , runTaskRequest
    , rtrResponseView

    -- ** HTTPRequestHeaders
    , HTTPRequestHeaders
    , hTTPRequestHeaders
    , httprhAddtional

    -- ** Location
    , Location
    , location
    , lName
    , lMetadata
    , lDisplayName
    , lLabels
    , lLocationId

    -- ** Empty
    , Empty
    , empty

    -- ** CreateTaskRequest
    , CreateTaskRequest
    , createTaskRequest
    , ctrResponseView
    , ctrTask

    -- ** TaskView
    , TaskView (..)

    -- ** ListQueuesResponse
    , ListQueuesResponse
    , listQueuesResponse
    , lqrNextPageToken
    , lqrQueues

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** QueueState
    , QueueState (..)

    -- ** GetPolicyOptions
    , GetPolicyOptions
    , getPolicyOptions
    , gpoRequestedPolicyVersion

    -- ** CreateTaskRequestResponseView
    , CreateTaskRequestResponseView (..)

    -- ** SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprPolicy

    -- ** Queue
    , Queue
    , queue
    , qRateLimits
    , qAppEngineRoutingOverride
    , qState
    , qRetryConfig
    , qStackdriverLoggingConfig
    , qName
    , qPurgeTime

    -- ** AppEngineHTTPRequestHTTPMethod
    , AppEngineHTTPRequestHTTPMethod (..)

    -- ** HTTPRequest
    , HTTPRequest
    , hTTPRequest
    , httprOAuthToken
    , httprHTTPMethod
    , httprOidcToken
    , httprBody
    , httprURL
    , httprHeaders

    -- ** StackdriverLoggingConfig
    , StackdriverLoggingConfig
    , stackdriverLoggingConfig
    , slcSamplingRatio

    -- ** ListTasksResponse
    , ListTasksResponse
    , listTasksResponse
    , ltrNextPageToken
    , ltrTasks

    -- ** AppEngineHTTPRequestHeaders
    , AppEngineHTTPRequestHeaders
    , appEngineHTTPRequestHeaders
    , aehttprhAddtional

    -- ** Xgafv
    , Xgafv (..)

    -- ** PauseQueueRequest
    , PauseQueueRequest
    , pauseQueueRequest

    -- ** TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- ** Attempt
    , Attempt
    , attempt
    , aResponseStatus
    , aScheduleTime
    , aDispatchTime
    , aResponseTime

    -- ** PurgeQueueRequest
    , PurgeQueueRequest
    , purgeQueueRequest

    -- ** Task
    , Task
    , task
    , tLastAttempt
    , tDispatchDeadline
    , tScheduleTime
    , tHTTPRequest
    , tName
    , tFirstAttempt
    , tView
    , tResponseCount
    , tDispatchCount
    , tAppEngineHTTPRequest
    , tCreateTime

    -- ** TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- ** Policy
    , Policy
    , policy
    , pEtag
    , pVersion
    , pBindings

    -- ** LocationLabels
    , LocationLabels
    , locationLabels
    , llAddtional

    -- ** LocationMetadata
    , LocationMetadata
    , locationMetadata
    , lmAddtional

    -- ** RunTaskRequestResponseView
    , RunTaskRequestResponseView (..)

    -- ** AppEngineRouting
    , AppEngineRouting
    , appEngineRouting
    , aerService
    , aerVersion
    , aerHost
    , aerInstance

    -- ** HTTPRequestHTTPMethod
    , HTTPRequestHTTPMethod (..)

    -- ** AppEngineHTTPRequest
    , AppEngineHTTPRequest
    , appEngineHTTPRequest
    , aehttprHTTPMethod
    , aehttprRelativeURI
    , aehttprBody
    , aehttprHeaders
    , aehttprAppEngineRouting

    -- ** ResumeQueueRequest
    , ResumeQueueRequest
    , resumeQueueRequest

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition
    ) where

import Network.Google.Prelude
import Network.Google.CloudTasks.Types
import Network.Google.Resource.CloudTasks.Projects.Locations.Get
import Network.Google.Resource.CloudTasks.Projects.Locations.List
import Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Create
import Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Delete
import Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Get
import Network.Google.Resource.CloudTasks.Projects.Locations.Queues.GetIAMPolicy
import Network.Google.Resource.CloudTasks.Projects.Locations.Queues.List
import Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Patch
import Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Pause
import Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Purge
import Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Resume
import Network.Google.Resource.CloudTasks.Projects.Locations.Queues.SetIAMPolicy
import Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Tasks.Create
import Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Tasks.Delete
import Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Tasks.Get
import Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Tasks.List
import Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Tasks.Run
import Network.Google.Resource.CloudTasks.Projects.Locations.Queues.TestIAMPermissions

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Tasks API service.
type CloudTasksAPI =
     ProjectsLocationsQueuesTasksListResource :<|>
       ProjectsLocationsQueuesTasksGetResource
       :<|> ProjectsLocationsQueuesTasksRunResource
       :<|> ProjectsLocationsQueuesTasksCreateResource
       :<|> ProjectsLocationsQueuesTasksDeleteResource
       :<|> ProjectsLocationsQueuesListResource
       :<|> ProjectsLocationsQueuesGetIAMPolicyResource
       :<|> ProjectsLocationsQueuesPatchResource
       :<|> ProjectsLocationsQueuesGetResource
       :<|> ProjectsLocationsQueuesCreateResource
       :<|> ProjectsLocationsQueuesSetIAMPolicyResource
       :<|> ProjectsLocationsQueuesPauseResource
       :<|> ProjectsLocationsQueuesPurgeResource
       :<|>
       ProjectsLocationsQueuesTestIAMPermissionsResource
       :<|> ProjectsLocationsQueuesDeleteResource
       :<|> ProjectsLocationsQueuesResumeResource
       :<|> ProjectsLocationsListResource
       :<|> ProjectsLocationsGetResource
