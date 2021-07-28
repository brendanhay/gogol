{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudErrorReporting.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudErrorReporting.Types
    (
    -- * Service Configuration
      cloudErrorReportingService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * ProjectsEventsListTimeRangePeriod
    , ProjectsEventsListTimeRangePeriod (..)

    -- * ErrorEvent
    , ErrorEvent
    , errorEvent
    , eeContext
    , eeEventTime
    , eeServiceContext
    , eeMessage

    -- * ErrorContext
    , ErrorContext
    , errorContext
    , ecHTTPRequest
    , ecUser
    , ecSourceReferences
    , ecReportLocation

    -- * ErrorGroup
    , ErrorGroup
    , errorGroup
    , egTrackingIssues
    , egName
    , egGroupId
    , egResolutionStatus

    -- * DeleteEventsResponse
    , DeleteEventsResponse
    , deleteEventsResponse

    -- * ProjectsGroupStatsListAlignment
    , ProjectsGroupStatsListAlignment (..)

    -- * ReportedErrorEvent
    , ReportedErrorEvent
    , reportedErrorEvent
    , reeContext
    , reeEventTime
    , reeServiceContext
    , reeMessage

    -- * HTTPRequestContext
    , HTTPRequestContext
    , hTTPRequestContext
    , httprcRemoteIP
    , httprcURL
    , httprcReferrer
    , httprcMethod
    , httprcResponseStatusCode
    , httprcUserAgent

    -- * TrackingIssue
    , TrackingIssue
    , trackingIssue
    , tiURL

    -- * ListEventsResponse
    , ListEventsResponse
    , listEventsResponse
    , lerNextPageToken
    , lerTimeRangeBegin
    , lerErrorEvents

    -- * ErrorGroupStats
    , ErrorGroupStats
    , errorGroupStats
    , egsAffectedServices
    , egsGroup
    , egsFirstSeenTime
    , egsAffectedUsersCount
    , egsCount
    , egsTimedCounts
    , egsNumAffectedServices
    , egsLastSeenTime
    , egsRepresentative

    -- * ProjectsGroupStatsListOrder
    , ProjectsGroupStatsListOrder (..)

    -- * ListGroupStatsResponse
    , ListGroupStatsResponse
    , listGroupStatsResponse
    , lgsrNextPageToken
    , lgsrTimeRangeBegin
    , lgsrErrorGroupStats

    -- * ServiceContext
    , ServiceContext
    , serviceContext
    , scResourceType
    , scService
    , scVersion

    -- * Xgafv
    , Xgafv (..)

    -- * TimedCount
    , TimedCount
    , timedCount
    , tcStartTime
    , tcCount
    , tcEndTime

    -- * ProjectsGroupStatsListTimeRangePeriod
    , ProjectsGroupStatsListTimeRangePeriod (..)

    -- * ErrorGroupResolutionStatus
    , ErrorGroupResolutionStatus (..)

    -- * SourceLocation
    , SourceLocation
    , sourceLocation
    , slLineNumber
    , slFilePath
    , slFunctionName

    -- * SourceReference
    , SourceReference
    , sourceReference
    , srRepository
    , srRevisionId

    -- * ReportErrorEventResponse
    , ReportErrorEventResponse
    , reportErrorEventResponse
    ) where

import Network.Google.CloudErrorReporting.Types.Product
import Network.Google.CloudErrorReporting.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1beta1' of the Error Reporting API. This contains the host and root path used as a starting point for constructing service requests.
cloudErrorReportingService :: ServiceConfig
cloudErrorReportingService
  = defaultService
      (ServiceId "clouderrorreporting:v1beta1")
      "clouderrorreporting.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
