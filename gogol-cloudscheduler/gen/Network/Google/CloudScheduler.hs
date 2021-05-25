{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.CloudScheduler
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates and manages jobs run on a regular recurring schedule.
--
-- /See:/ <https://cloud.google.com/scheduler/ Cloud Scheduler API Reference>
module Network.Google.CloudScheduler
    (
    -- * Service Configuration
      cloudSchedulerService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , CloudSchedulerAPI

    -- * Resources

    -- ** cloudscheduler.projects.locations.get
    , module Network.Google.Resource.CloudScheduler.Projects.Locations.Get

    -- ** cloudscheduler.projects.locations.jobs.create
    , module Network.Google.Resource.CloudScheduler.Projects.Locations.Jobs.Create

    -- ** cloudscheduler.projects.locations.jobs.delete
    , module Network.Google.Resource.CloudScheduler.Projects.Locations.Jobs.Delete

    -- ** cloudscheduler.projects.locations.jobs.get
    , module Network.Google.Resource.CloudScheduler.Projects.Locations.Jobs.Get

    -- ** cloudscheduler.projects.locations.jobs.list
    , module Network.Google.Resource.CloudScheduler.Projects.Locations.Jobs.List

    -- ** cloudscheduler.projects.locations.jobs.patch
    , module Network.Google.Resource.CloudScheduler.Projects.Locations.Jobs.Patch

    -- ** cloudscheduler.projects.locations.jobs.pause
    , module Network.Google.Resource.CloudScheduler.Projects.Locations.Jobs.Pause

    -- ** cloudscheduler.projects.locations.jobs.resume
    , module Network.Google.Resource.CloudScheduler.Projects.Locations.Jobs.Resume

    -- ** cloudscheduler.projects.locations.jobs.run
    , module Network.Google.Resource.CloudScheduler.Projects.Locations.Jobs.Run

    -- ** cloudscheduler.projects.locations.list
    , module Network.Google.Resource.CloudScheduler.Projects.Locations.List

    -- * Types

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

    -- ** PauseJobRequest
    , PauseJobRequest
    , pauseJobRequest

    -- ** ListLocationsResponse
    , ListLocationsResponse
    , listLocationsResponse
    , llrNextPageToken
    , llrLocations

    -- ** ResumeJobRequest
    , ResumeJobRequest
    , resumeJobRequest

    -- ** OidcToken
    , OidcToken
    , oidcToken
    , otAudience
    , otServiceAccountEmail

    -- ** AppEngineHTTPTargetHeaders
    , AppEngineHTTPTargetHeaders
    , appEngineHTTPTargetHeaders
    , aehttpthAddtional

    -- ** RetryConfig
    , RetryConfig
    , retryConfig
    , rcMaxDoublings
    , rcMaxRetryDuration
    , rcMinBackoffDuration
    , rcRetryCount
    , rcMaxBackoffDuration

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

    -- ** PubsubTargetAttributes
    , PubsubTargetAttributes
    , pubsubTargetAttributes
    , ptaAddtional

    -- ** HTTPTargetHeaders
    , HTTPTargetHeaders
    , hTTPTargetHeaders
    , httpthAddtional

    -- ** PubsubMessage
    , PubsubMessage
    , pubsubMessage
    , pmData
    , pmPublishTime
    , pmAttributes
    , pmMessageId
    , pmOrderingKey

    -- ** JobState
    , JobState (..)

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** AppEngineHTTPTarget
    , AppEngineHTTPTarget
    , appEngineHTTPTarget
    , aehttptHTTPMethod
    , aehttptRelativeURI
    , aehttptBody
    , aehttptHeaders
    , aehttptAppEngineRouting

    -- ** HTTPTarget
    , HTTPTarget
    , hTTPTarget
    , httptOAuthToken
    , httptHTTPMethod
    , httptOidcToken
    , httptBody
    , httptURI
    , httptHeaders

    -- ** RunJobRequest
    , RunJobRequest
    , runJobRequest

    -- ** Job
    , Job
    , job
    , jStatus
    , jAttemptDeadline
    , jState
    , jLastAttemptTime
    , jRetryConfig
    , jSchedule
    , jScheduleTime
    , jAppEngineHTTPTarget
    , jHTTPTarget
    , jName
    , jPubsubTarget
    , jUserUpdateTime
    , jTimeZone
    , jDescription

    -- ** PubsubMessageAttributes
    , PubsubMessageAttributes
    , pubsubMessageAttributes
    , pmaAddtional

    -- ** PubsubTarget
    , PubsubTarget
    , pubsubTarget
    , ptData
    , ptTopicName
    , ptAttributes

    -- ** Xgafv
    , Xgafv (..)

    -- ** ListJobsResponse
    , ListJobsResponse
    , listJobsResponse
    , ljrNextPageToken
    , ljrJobs

    -- ** LocationLabels
    , LocationLabels
    , locationLabels
    , llAddtional

    -- ** LocationMetadata
    , LocationMetadata
    , locationMetadata
    , lmAddtional

    -- ** AppEngineRouting
    , AppEngineRouting
    , appEngineRouting
    , aerService
    , aerVersion
    , aerHost
    , aerInstance

    -- ** HTTPTargetHTTPMethod
    , HTTPTargetHTTPMethod (..)

    -- ** AppEngineHTTPTargetHTTPMethod
    , AppEngineHTTPTargetHTTPMethod (..)
    ) where

import Network.Google.Prelude
import Network.Google.CloudScheduler.Types
import Network.Google.Resource.CloudScheduler.Projects.Locations.Get
import Network.Google.Resource.CloudScheduler.Projects.Locations.Jobs.Create
import Network.Google.Resource.CloudScheduler.Projects.Locations.Jobs.Delete
import Network.Google.Resource.CloudScheduler.Projects.Locations.Jobs.Get
import Network.Google.Resource.CloudScheduler.Projects.Locations.Jobs.List
import Network.Google.Resource.CloudScheduler.Projects.Locations.Jobs.Patch
import Network.Google.Resource.CloudScheduler.Projects.Locations.Jobs.Pause
import Network.Google.Resource.CloudScheduler.Projects.Locations.Jobs.Resume
import Network.Google.Resource.CloudScheduler.Projects.Locations.Jobs.Run
import Network.Google.Resource.CloudScheduler.Projects.Locations.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Scheduler API service.
type CloudSchedulerAPI =
     ProjectsLocationsJobsListResource :<|>
       ProjectsLocationsJobsPatchResource
       :<|> ProjectsLocationsJobsGetResource
       :<|> ProjectsLocationsJobsRunResource
       :<|> ProjectsLocationsJobsCreateResource
       :<|> ProjectsLocationsJobsPauseResource
       :<|> ProjectsLocationsJobsDeleteResource
       :<|> ProjectsLocationsJobsResumeResource
       :<|> ProjectsLocationsListResource
       :<|> ProjectsLocationsGetResource
