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
-- Module      : Gogol.CloudScheduler
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates and manages jobs run on a regular recurring schedule.
--
-- /See:/ <https://cloud.google.com/scheduler/ Cloud Scheduler API Reference>
module Gogol.CloudScheduler
    (
    -- * Configuration
      cloudSchedulerService

    -- * OAuth Scopes
    , CloudPlatform'FullControl

    -- * Resources

    -- ** cloudscheduler.operations.cancel
    , CloudSchedulerOperationsCancelResource
    , CloudSchedulerOperationsCancel (..)
    , newCloudSchedulerOperationsCancel

    -- ** cloudscheduler.operations.delete
    , CloudSchedulerOperationsDeleteResource
    , CloudSchedulerOperationsDelete (..)
    , newCloudSchedulerOperationsDelete

    -- ** cloudscheduler.operations.get
    , CloudSchedulerOperationsGetResource
    , CloudSchedulerOperationsGet (..)
    , newCloudSchedulerOperationsGet

    -- ** cloudscheduler.operations.list
    , CloudSchedulerOperationsListResource
    , CloudSchedulerOperationsList (..)
    , newCloudSchedulerOperationsList

    -- ** cloudscheduler.projects.locations.get
    , CloudSchedulerProjectsLocationsGetResource
    , CloudSchedulerProjectsLocationsGet (..)
    , newCloudSchedulerProjectsLocationsGet

    -- ** cloudscheduler.projects.locations.jobs.create
    , CloudSchedulerProjectsLocationsJobsCreateResource
    , CloudSchedulerProjectsLocationsJobsCreate (..)
    , newCloudSchedulerProjectsLocationsJobsCreate

    -- ** cloudscheduler.projects.locations.jobs.delete
    , CloudSchedulerProjectsLocationsJobsDeleteResource
    , CloudSchedulerProjectsLocationsJobsDelete (..)
    , newCloudSchedulerProjectsLocationsJobsDelete

    -- ** cloudscheduler.projects.locations.jobs.get
    , CloudSchedulerProjectsLocationsJobsGetResource
    , CloudSchedulerProjectsLocationsJobsGet (..)
    , newCloudSchedulerProjectsLocationsJobsGet

    -- ** cloudscheduler.projects.locations.jobs.list
    , CloudSchedulerProjectsLocationsJobsListResource
    , CloudSchedulerProjectsLocationsJobsList (..)
    , newCloudSchedulerProjectsLocationsJobsList

    -- ** cloudscheduler.projects.locations.jobs.patch
    , CloudSchedulerProjectsLocationsJobsPatchResource
    , CloudSchedulerProjectsLocationsJobsPatch (..)
    , newCloudSchedulerProjectsLocationsJobsPatch

    -- ** cloudscheduler.projects.locations.jobs.pause
    , CloudSchedulerProjectsLocationsJobsPauseResource
    , CloudSchedulerProjectsLocationsJobsPause (..)
    , newCloudSchedulerProjectsLocationsJobsPause

    -- ** cloudscheduler.projects.locations.jobs.resume
    , CloudSchedulerProjectsLocationsJobsResumeResource
    , CloudSchedulerProjectsLocationsJobsResume (..)
    , newCloudSchedulerProjectsLocationsJobsResume

    -- ** cloudscheduler.projects.locations.jobs.run
    , CloudSchedulerProjectsLocationsJobsRunResource
    , CloudSchedulerProjectsLocationsJobsRun (..)
    , newCloudSchedulerProjectsLocationsJobsRun

    -- ** cloudscheduler.projects.locations.list
    , CloudSchedulerProjectsLocationsListResource
    , CloudSchedulerProjectsLocationsList (..)
    , newCloudSchedulerProjectsLocationsList

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AppEngineHttpTarget
    , AppEngineHttpTarget (..)
    , newAppEngineHttpTarget

    -- ** AppEngineHttpTarget_Headers
    , AppEngineHttpTarget_Headers (..)
    , newAppEngineHttpTarget_Headers

    -- ** AppEngineHttpTarget_HttpMethod
    , AppEngineHttpTarget_HttpMethod (..)

    -- ** AppEngineRouting
    , AppEngineRouting (..)
    , newAppEngineRouting

    -- ** CancelOperationRequest
    , CancelOperationRequest (..)
    , newCancelOperationRequest

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** HttpTarget
    , HttpTarget (..)
    , newHttpTarget

    -- ** HttpTarget_Headers
    , HttpTarget_Headers (..)
    , newHttpTarget_Headers

    -- ** HttpTarget_HttpMethod
    , HttpTarget_HttpMethod (..)

    -- ** Job
    , Job (..)
    , newJob

    -- ** Job_State
    , Job_State (..)

    -- ** ListJobsResponse
    , ListJobsResponse (..)
    , newListJobsResponse

    -- ** ListLocationsResponse
    , ListLocationsResponse (..)
    , newListLocationsResponse

    -- ** ListOperationsResponse
    , ListOperationsResponse (..)
    , newListOperationsResponse

    -- ** Location
    , Location (..)
    , newLocation

    -- ** Location_Labels
    , Location_Labels (..)
    , newLocation_Labels

    -- ** Location_Metadata
    , Location_Metadata (..)
    , newLocation_Metadata

    -- ** OAuthToken
    , OAuthToken (..)
    , newOAuthToken

    -- ** OidcToken
    , OidcToken (..)
    , newOidcToken

    -- ** Operation
    , Operation (..)
    , newOperation

    -- ** Operation_Metadata
    , Operation_Metadata (..)
    , newOperation_Metadata

    -- ** Operation_Response
    , Operation_Response (..)
    , newOperation_Response

    -- ** OperationMetadata
    , OperationMetadata (..)
    , newOperationMetadata

    -- ** PauseJobRequest
    , PauseJobRequest (..)
    , newPauseJobRequest

    -- ** PubsubMessage
    , PubsubMessage (..)
    , newPubsubMessage

    -- ** PubsubMessage_Attributes
    , PubsubMessage_Attributes (..)
    , newPubsubMessage_Attributes

    -- ** PubsubTarget
    , PubsubTarget (..)
    , newPubsubTarget

    -- ** PubsubTarget_Attributes
    , PubsubTarget_Attributes (..)
    , newPubsubTarget_Attributes

    -- ** ResumeJobRequest
    , ResumeJobRequest (..)
    , newResumeJobRequest

    -- ** RetryConfig
    , RetryConfig (..)
    , newRetryConfig

    -- ** RunJobRequest
    , RunJobRequest (..)
    , newRunJobRequest

    -- ** Status
    , Status (..)
    , newStatus

    -- ** Status_DetailsItem
    , Status_DetailsItem (..)
    , newStatus_DetailsItem
    ) where

import Gogol.CloudScheduler.Operations.Cancel
import Gogol.CloudScheduler.Operations.Delete
import Gogol.CloudScheduler.Operations.Get
import Gogol.CloudScheduler.Operations.List
import Gogol.CloudScheduler.Projects.Locations.Get
import Gogol.CloudScheduler.Projects.Locations.Jobs.Create
import Gogol.CloudScheduler.Projects.Locations.Jobs.Delete
import Gogol.CloudScheduler.Projects.Locations.Jobs.Get
import Gogol.CloudScheduler.Projects.Locations.Jobs.List
import Gogol.CloudScheduler.Projects.Locations.Jobs.Patch
import Gogol.CloudScheduler.Projects.Locations.Jobs.Pause
import Gogol.CloudScheduler.Projects.Locations.Jobs.Resume
import Gogol.CloudScheduler.Projects.Locations.Jobs.Run
import Gogol.CloudScheduler.Projects.Locations.List
import Gogol.CloudScheduler.Types
