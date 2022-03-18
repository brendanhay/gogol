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
-- Module      : Gogol.CloudErrorReporting.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.CloudErrorReporting.Types
  ( -- * Configuration
    cloudErrorReportingService,

    -- * OAuth Scopes
    cloudPlatformScope,

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
  )
where

import Gogol.CloudErrorReporting.Internal.Product
import Gogol.CloudErrorReporting.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Default request referring to version @v1beta1@ of the Error Reporting API. This contains the host and root path used as a starting point for constructing service requests.
cloudErrorReportingService :: Core.ServiceConfig
cloudErrorReportingService =
  Core.defaultService
    (Core.ServiceId "clouderrorreporting:v1beta1")
    "clouderrorreporting.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy
