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
-- Module      : Network.Google.CloudScheduler
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates and manages jobs run on a regular recurring schedule.
--
-- /See:/ <https://cloud.google.com/scheduler/ Cloud Scheduler API Reference>
module Network.Google.CloudScheduler
  ( -- * Configuration
    cloudSchedulerService,

    -- * OAuth Scopes
    cloudPlatformScope,

    -- * Resources

    -- ** cloudscheduler.projects.locations.get
    CloudSchedulerProjectsLocationsGetResource,
    newCloudSchedulerProjectsLocationsGet,
    CloudSchedulerProjectsLocationsGet,

    -- ** cloudscheduler.projects.locations.jobs.create
    CloudSchedulerProjectsLocationsJobsCreateResource,
    newCloudSchedulerProjectsLocationsJobsCreate,
    CloudSchedulerProjectsLocationsJobsCreate,

    -- ** cloudscheduler.projects.locations.jobs.delete
    CloudSchedulerProjectsLocationsJobsDeleteResource,
    newCloudSchedulerProjectsLocationsJobsDelete,
    CloudSchedulerProjectsLocationsJobsDelete,

    -- ** cloudscheduler.projects.locations.jobs.get
    CloudSchedulerProjectsLocationsJobsGetResource,
    newCloudSchedulerProjectsLocationsJobsGet,
    CloudSchedulerProjectsLocationsJobsGet,

    -- ** cloudscheduler.projects.locations.jobs.list
    CloudSchedulerProjectsLocationsJobsListResource,
    newCloudSchedulerProjectsLocationsJobsList,
    CloudSchedulerProjectsLocationsJobsList,

    -- ** cloudscheduler.projects.locations.jobs.patch
    CloudSchedulerProjectsLocationsJobsPatchResource,
    newCloudSchedulerProjectsLocationsJobsPatch,
    CloudSchedulerProjectsLocationsJobsPatch,

    -- ** cloudscheduler.projects.locations.jobs.pause
    CloudSchedulerProjectsLocationsJobsPauseResource,
    newCloudSchedulerProjectsLocationsJobsPause,
    CloudSchedulerProjectsLocationsJobsPause,

    -- ** cloudscheduler.projects.locations.jobs.resume
    CloudSchedulerProjectsLocationsJobsResumeResource,
    newCloudSchedulerProjectsLocationsJobsResume,
    CloudSchedulerProjectsLocationsJobsResume,

    -- ** cloudscheduler.projects.locations.jobs.run
    CloudSchedulerProjectsLocationsJobsRunResource,
    newCloudSchedulerProjectsLocationsJobsRun,
    CloudSchedulerProjectsLocationsJobsRun,

    -- ** cloudscheduler.projects.locations.list
    CloudSchedulerProjectsLocationsListResource,
    newCloudSchedulerProjectsLocationsList,
    CloudSchedulerProjectsLocationsList,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AppEngineHttpTarget
    AppEngineHttpTarget (..),
    newAppEngineHttpTarget,

    -- ** AppEngineHttpTarget_Headers
    AppEngineHttpTarget_Headers (..),
    newAppEngineHttpTarget_Headers,

    -- ** AppEngineHttpTarget_HttpMethod
    AppEngineHttpTarget_HttpMethod (..),

    -- ** AppEngineRouting
    AppEngineRouting (..),
    newAppEngineRouting,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** HttpTarget
    HttpTarget (..),
    newHttpTarget,

    -- ** HttpTarget_Headers
    HttpTarget_Headers (..),
    newHttpTarget_Headers,

    -- ** HttpTarget_HttpMethod
    HttpTarget_HttpMethod (..),

    -- ** Job
    Job (..),
    newJob,

    -- ** Job_State
    Job_State (..),

    -- ** ListJobsResponse
    ListJobsResponse (..),
    newListJobsResponse,

    -- ** ListLocationsResponse
    ListLocationsResponse (..),
    newListLocationsResponse,

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

    -- ** PauseJobRequest
    PauseJobRequest (..),
    newPauseJobRequest,

    -- ** PubsubMessage
    PubsubMessage (..),
    newPubsubMessage,

    -- ** PubsubMessage_Attributes
    PubsubMessage_Attributes (..),
    newPubsubMessage_Attributes,

    -- ** PubsubTarget
    PubsubTarget (..),
    newPubsubTarget,

    -- ** PubsubTarget_Attributes
    PubsubTarget_Attributes (..),
    newPubsubTarget_Attributes,

    -- ** ResumeJobRequest
    ResumeJobRequest (..),
    newResumeJobRequest,

    -- ** RetryConfig
    RetryConfig (..),
    newRetryConfig,

    -- ** RunJobRequest
    RunJobRequest (..),
    newRunJobRequest,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,
  )
where

import Network.Google.CloudScheduler.Projects.Locations.Get
import Network.Google.CloudScheduler.Projects.Locations.Jobs.Create
import Network.Google.CloudScheduler.Projects.Locations.Jobs.Delete
import Network.Google.CloudScheduler.Projects.Locations.Jobs.Get
import Network.Google.CloudScheduler.Projects.Locations.Jobs.List
import Network.Google.CloudScheduler.Projects.Locations.Jobs.Patch
import Network.Google.CloudScheduler.Projects.Locations.Jobs.Pause
import Network.Google.CloudScheduler.Projects.Locations.Jobs.Resume
import Network.Google.CloudScheduler.Projects.Locations.Jobs.Run
import Network.Google.CloudScheduler.Projects.Locations.List
import Network.Google.CloudScheduler.Types
