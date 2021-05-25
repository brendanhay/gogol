{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.CloudErrorReporting
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Groups and counts similar errors from cloud services and applications,
-- reports new errors, and provides access to error groups and their
-- associated errors.
--
-- /See:/ <https://cloud.google.com/error-reporting/ Error Reporting API Reference>
module Network.Google.CloudErrorReporting
    (
    -- * Service Configuration
      cloudErrorReportingService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , CloudErrorReportingAPI

    -- * Resources

    -- ** clouderrorreporting.projects.deleteEvents
    , module Network.Google.Resource.CloudErrorReporting.Projects.DeleteEvents

    -- ** clouderrorreporting.projects.events.list
    , module Network.Google.Resource.CloudErrorReporting.Projects.Events.List

    -- ** clouderrorreporting.projects.events.report
    , module Network.Google.Resource.CloudErrorReporting.Projects.Events.Report

    -- ** clouderrorreporting.projects.groupStats.list
    , module Network.Google.Resource.CloudErrorReporting.Projects.GroupStats.List

    -- ** clouderrorreporting.projects.groups.get
    , module Network.Google.Resource.CloudErrorReporting.Projects.Groups.Get

    -- ** clouderrorreporting.projects.groups.update
    , module Network.Google.Resource.CloudErrorReporting.Projects.Groups.Update

    -- * Types

    -- ** ProjectsEventsListTimeRangePeriod
    , ProjectsEventsListTimeRangePeriod (..)

    -- ** ErrorEvent
    , ErrorEvent
    , errorEvent
    , eeContext
    , eeEventTime
    , eeServiceContext
    , eeMessage

    -- ** ErrorContext
    , ErrorContext
    , errorContext
    , ecHTTPRequest
    , ecUser
    , ecSourceReferences
    , ecReportLocation

    -- ** ErrorGroup
    , ErrorGroup
    , errorGroup
    , egTrackingIssues
    , egName
    , egGroupId
    , egResolutionStatus

    -- ** DeleteEventsResponse
    , DeleteEventsResponse
    , deleteEventsResponse

    -- ** ProjectsGroupStatsListAlignment
    , ProjectsGroupStatsListAlignment (..)

    -- ** ReportedErrorEvent
    , ReportedErrorEvent
    , reportedErrorEvent
    , reeContext
    , reeEventTime
    , reeServiceContext
    , reeMessage

    -- ** HTTPRequestContext
    , HTTPRequestContext
    , hTTPRequestContext
    , httprcRemoteIP
    , httprcURL
    , httprcReferrer
    , httprcMethod
    , httprcResponseStatusCode
    , httprcUserAgent

    -- ** TrackingIssue
    , TrackingIssue
    , trackingIssue
    , tiURL

    -- ** ListEventsResponse
    , ListEventsResponse
    , listEventsResponse
    , lerNextPageToken
    , lerTimeRangeBegin
    , lerErrorEvents

    -- ** ErrorGroupStats
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

    -- ** ProjectsGroupStatsListOrder
    , ProjectsGroupStatsListOrder (..)

    -- ** ListGroupStatsResponse
    , ListGroupStatsResponse
    , listGroupStatsResponse
    , lgsrNextPageToken
    , lgsrTimeRangeBegin
    , lgsrErrorGroupStats

    -- ** ServiceContext
    , ServiceContext
    , serviceContext
    , scResourceType
    , scService
    , scVersion

    -- ** Xgafv
    , Xgafv (..)

    -- ** TimedCount
    , TimedCount
    , timedCount
    , tcStartTime
    , tcCount
    , tcEndTime

    -- ** ProjectsGroupStatsListTimeRangePeriod
    , ProjectsGroupStatsListTimeRangePeriod (..)

    -- ** ErrorGroupResolutionStatus
    , ErrorGroupResolutionStatus (..)

    -- ** SourceLocation
    , SourceLocation
    , sourceLocation
    , slLineNumber
    , slFilePath
    , slFunctionName

    -- ** SourceReference
    , SourceReference
    , sourceReference
    , srRepository
    , srRevisionId

    -- ** ReportErrorEventResponse
    , ReportErrorEventResponse
    , reportErrorEventResponse
    ) where

import Network.Google.Prelude
import Network.Google.CloudErrorReporting.Types
import Network.Google.Resource.CloudErrorReporting.Projects.DeleteEvents
import Network.Google.Resource.CloudErrorReporting.Projects.Events.List
import Network.Google.Resource.CloudErrorReporting.Projects.Events.Report
import Network.Google.Resource.CloudErrorReporting.Projects.GroupStats.List
import Network.Google.Resource.CloudErrorReporting.Projects.Groups.Get
import Network.Google.Resource.CloudErrorReporting.Projects.Groups.Update

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Error Reporting API service.
type CloudErrorReportingAPI =
     ProjectsGroupsGetResource :<|>
       ProjectsGroupsUpdateResource
       :<|> ProjectsGroupStatsListResource
       :<|> ProjectsEventsListResource
       :<|> ProjectsEventsReportResource
       :<|> ProjectsDeleteEventsResource
