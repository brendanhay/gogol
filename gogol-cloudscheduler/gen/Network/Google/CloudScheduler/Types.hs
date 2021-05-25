{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudScheduler.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudScheduler.Types
    (
    -- * Service Configuration
      cloudSchedulerService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * OAuthToken
    , OAuthToken
    , oAuthToken
    , oatScope
    , oatServiceAccountEmail

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * PauseJobRequest
    , PauseJobRequest
    , pauseJobRequest

    -- * ListLocationsResponse
    , ListLocationsResponse
    , listLocationsResponse
    , llrNextPageToken
    , llrLocations

    -- * ResumeJobRequest
    , ResumeJobRequest
    , resumeJobRequest

    -- * OidcToken
    , OidcToken
    , oidcToken
    , otAudience
    , otServiceAccountEmail

    -- * AppEngineHTTPTargetHeaders
    , AppEngineHTTPTargetHeaders
    , appEngineHTTPTargetHeaders
    , aehttpthAddtional

    -- * RetryConfig
    , RetryConfig
    , retryConfig
    , rcMaxDoublings
    , rcMaxRetryDuration
    , rcMinBackoffDuration
    , rcRetryCount
    , rcMaxBackoffDuration

    -- * Location
    , Location
    , location
    , lName
    , lMetadata
    , lDisplayName
    , lLabels
    , lLocationId

    -- * Empty
    , Empty
    , empty

    -- * PubsubTargetAttributes
    , PubsubTargetAttributes
    , pubsubTargetAttributes
    , ptaAddtional

    -- * HTTPTargetHeaders
    , HTTPTargetHeaders
    , hTTPTargetHeaders
    , httpthAddtional

    -- * PubsubMessage
    , PubsubMessage
    , pubsubMessage
    , pmData
    , pmPublishTime
    , pmAttributes
    , pmMessageId
    , pmOrderingKey

    -- * JobState
    , JobState (..)

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * AppEngineHTTPTarget
    , AppEngineHTTPTarget
    , appEngineHTTPTarget
    , aehttptHTTPMethod
    , aehttptRelativeURI
    , aehttptBody
    , aehttptHeaders
    , aehttptAppEngineRouting

    -- * HTTPTarget
    , HTTPTarget
    , hTTPTarget
    , httptOAuthToken
    , httptHTTPMethod
    , httptOidcToken
    , httptBody
    , httptURI
    , httptHeaders

    -- * RunJobRequest
    , RunJobRequest
    , runJobRequest

    -- * Job
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

    -- * PubsubMessageAttributes
    , PubsubMessageAttributes
    , pubsubMessageAttributes
    , pmaAddtional

    -- * PubsubTarget
    , PubsubTarget
    , pubsubTarget
    , ptData
    , ptTopicName
    , ptAttributes

    -- * Xgafv
    , Xgafv (..)

    -- * ListJobsResponse
    , ListJobsResponse
    , listJobsResponse
    , ljrNextPageToken
    , ljrJobs

    -- * LocationLabels
    , LocationLabels
    , locationLabels
    , llAddtional

    -- * LocationMetadata
    , LocationMetadata
    , locationMetadata
    , lmAddtional

    -- * AppEngineRouting
    , AppEngineRouting
    , appEngineRouting
    , aerService
    , aerVersion
    , aerHost
    , aerInstance

    -- * HTTPTargetHTTPMethod
    , HTTPTargetHTTPMethod (..)

    -- * AppEngineHTTPTargetHTTPMethod
    , AppEngineHTTPTargetHTTPMethod (..)
    ) where

import Network.Google.CloudScheduler.Types.Product
import Network.Google.CloudScheduler.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1' of the Cloud Scheduler API. This contains the host and root path used as a starting point for constructing service requests.
cloudSchedulerService :: ServiceConfig
cloudSchedulerService
  = defaultService (ServiceId "cloudscheduler:v1")
      "cloudscheduler.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
