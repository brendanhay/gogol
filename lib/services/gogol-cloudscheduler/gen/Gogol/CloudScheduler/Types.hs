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
-- Module      : Gogol.CloudScheduler.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.CloudScheduler.Types
  ( -- * Configuration
    cloudSchedulerService,

    -- * OAuth Scopes
    cloudPlatformScope,

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

import Gogol.CloudScheduler.Internal.Product
import Gogol.CloudScheduler.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Default request referring to version @v1@ of the Cloud Scheduler API. This contains the host and root path used as a starting point for constructing service requests.
cloudSchedulerService :: Core.ServiceConfig
cloudSchedulerService =
  Core.defaultService
    (Core.ServiceId "cloudscheduler:v1")
    "cloudscheduler.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy
