{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudErrorReporting
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Groups and counts similar errors from cloud services and applications, reports new errors, and provides access to error groups and their associated errors.
--
-- /See:/ <https://cloud.google.com/error-reporting/ Error Reporting API Reference>
module Gogol.CloudErrorReporting
  ( -- * Configuration
    cloudErrorReportingService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Resources

    -- ** clouderrorreporting.projects.deleteEvents
    CloudErrorReportingProjectsDeleteEventsResource,
    CloudErrorReportingProjectsDeleteEvents (..),
    newCloudErrorReportingProjectsDeleteEvents,

    -- ** clouderrorreporting.projects.events.list
    CloudErrorReportingProjectsEventsListResource,
    CloudErrorReportingProjectsEventsList (..),
    newCloudErrorReportingProjectsEventsList,

    -- ** clouderrorreporting.projects.events.report
    CloudErrorReportingProjectsEventsReportResource,
    CloudErrorReportingProjectsEventsReport (..),
    newCloudErrorReportingProjectsEventsReport,

    -- ** clouderrorreporting.projects.groupStats.list
    CloudErrorReportingProjectsGroupStatsListResource,
    CloudErrorReportingProjectsGroupStatsList (..),
    newCloudErrorReportingProjectsGroupStatsList,

    -- ** clouderrorreporting.projects.groups.get
    CloudErrorReportingProjectsGroupsGetResource,
    CloudErrorReportingProjectsGroupsGet (..),
    newCloudErrorReportingProjectsGroupsGet,

    -- ** clouderrorreporting.projects.groups.update
    CloudErrorReportingProjectsGroupsUpdateResource,
    CloudErrorReportingProjectsGroupsUpdate (..),
    newCloudErrorReportingProjectsGroupsUpdate,

    -- ** clouderrorreporting.projects.locations.deleteEvents
    CloudErrorReportingProjectsLocationsDeleteEventsResource,
    CloudErrorReportingProjectsLocationsDeleteEvents (..),
    newCloudErrorReportingProjectsLocationsDeleteEvents,

    -- ** clouderrorreporting.projects.locations.events.list
    CloudErrorReportingProjectsLocationsEventsListResource,
    CloudErrorReportingProjectsLocationsEventsList (..),
    newCloudErrorReportingProjectsLocationsEventsList,

    -- ** clouderrorreporting.projects.locations.groupStats.list
    CloudErrorReportingProjectsLocationsGroupStatsListResource,
    CloudErrorReportingProjectsLocationsGroupStatsList (..),
    newCloudErrorReportingProjectsLocationsGroupStatsList,

    -- ** clouderrorreporting.projects.locations.groups.get
    CloudErrorReportingProjectsLocationsGroupsGetResource,
    CloudErrorReportingProjectsLocationsGroupsGet (..),
    newCloudErrorReportingProjectsLocationsGroupsGet,

    -- ** clouderrorreporting.projects.locations.groups.update
    CloudErrorReportingProjectsLocationsGroupsUpdateResource,
    CloudErrorReportingProjectsLocationsGroupsUpdate (..),
    newCloudErrorReportingProjectsLocationsGroupsUpdate,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** DeleteEventsResponse
    DeleteEventsResponse (..),
    newDeleteEventsResponse,

    -- ** ErrorContext
    ErrorContext (..),
    newErrorContext,

    -- ** ErrorEvent
    ErrorEvent (..),
    newErrorEvent,

    -- ** ErrorGroup
    ErrorGroup (..),
    newErrorGroup,

    -- ** ErrorGroup_ResolutionStatus
    ErrorGroup_ResolutionStatus (..),

    -- ** ErrorGroupStats
    ErrorGroupStats (..),
    newErrorGroupStats,

    -- ** HttpRequestContext
    HttpRequestContext (..),
    newHttpRequestContext,

    -- ** ListEventsResponse
    ListEventsResponse (..),
    newListEventsResponse,

    -- ** ListGroupStatsResponse
    ListGroupStatsResponse (..),
    newListGroupStatsResponse,

    -- ** ReportErrorEventResponse
    ReportErrorEventResponse (..),
    newReportErrorEventResponse,

    -- ** ReportedErrorEvent
    ReportedErrorEvent (..),
    newReportedErrorEvent,

    -- ** ServiceContext
    ServiceContext (..),
    newServiceContext,

    -- ** SourceLocation
    SourceLocation (..),
    newSourceLocation,

    -- ** SourceReference
    SourceReference (..),
    newSourceReference,

    -- ** TimedCount
    TimedCount (..),
    newTimedCount,

    -- ** TrackingIssue
    TrackingIssue (..),
    newTrackingIssue,

    -- ** ProjectsEventsListTimeRangePeriod
    ProjectsEventsListTimeRangePeriod (..),

    -- ** ProjectsGroupStatsListAlignment
    ProjectsGroupStatsListAlignment (..),

    -- ** ProjectsGroupStatsListOrder
    ProjectsGroupStatsListOrder (..),

    -- ** ProjectsGroupStatsListTimeRangePeriod
    ProjectsGroupStatsListTimeRangePeriod (..),

    -- ** ProjectsLocationsEventsListTimeRangePeriod
    ProjectsLocationsEventsListTimeRangePeriod (..),

    -- ** ProjectsLocationsGroupStatsListAlignment
    ProjectsLocationsGroupStatsListAlignment (..),

    -- ** ProjectsLocationsGroupStatsListOrder
    ProjectsLocationsGroupStatsListOrder (..),

    -- ** ProjectsLocationsGroupStatsListTimeRangePeriod
    ProjectsLocationsGroupStatsListTimeRangePeriod (..),
  )
where

import Gogol.CloudErrorReporting.Projects.DeleteEvents
import Gogol.CloudErrorReporting.Projects.Events.List
import Gogol.CloudErrorReporting.Projects.Events.Report
import Gogol.CloudErrorReporting.Projects.GroupStats.List
import Gogol.CloudErrorReporting.Projects.Groups.Get
import Gogol.CloudErrorReporting.Projects.Groups.Update
import Gogol.CloudErrorReporting.Projects.Locations.DeleteEvents
import Gogol.CloudErrorReporting.Projects.Locations.Events.List
import Gogol.CloudErrorReporting.Projects.Locations.GroupStats.List
import Gogol.CloudErrorReporting.Projects.Locations.Groups.Get
import Gogol.CloudErrorReporting.Projects.Locations.Groups.Update
import Gogol.CloudErrorReporting.Types
