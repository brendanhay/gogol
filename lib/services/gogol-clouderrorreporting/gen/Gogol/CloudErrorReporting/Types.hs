{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.CloudErrorReporting.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.CloudErrorReporting.Types
  ( -- * Configuration
    cloudErrorReportingService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

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

import Gogol.CloudErrorReporting.Internal.Product
import Gogol.CloudErrorReporting.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v1beta1@ of the Error Reporting API. This contains the host and root path used as a starting point for constructing service requests.
cloudErrorReportingService :: Core.ServiceConfig
cloudErrorReportingService =
  Core.defaultService
    (Core.ServiceId "clouderrorreporting:v1beta1")
    "clouderrorreporting.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl =
  "https://www.googleapis.com/auth/cloud-platform"
