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
-- Module      : Gogol.DoubleClickBids
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- DoubleClick Bid Manager API allows users to manage and create campaigns and reports.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference>
module Gogol.DoubleClickBids
  ( -- * Configuration
    doubleClickBidsService,

    -- * OAuth Scopes
    Doubleclickbidmanager'FullControl,

    -- * Resources

    -- ** doubleclickbidmanager.queries.createquery
    DoubleclickbidmanagerQueriesCreatequeryResource,
    DoubleclickbidmanagerQueriesCreatequery (..),
    newDoubleclickbidmanagerQueriesCreatequery,

    -- ** doubleclickbidmanager.queries.deletequery
    DoubleclickbidmanagerQueriesDeletequeryResource,
    DoubleclickbidmanagerQueriesDeletequery (..),
    newDoubleclickbidmanagerQueriesDeletequery,

    -- ** doubleclickbidmanager.queries.getquery
    DoubleclickbidmanagerQueriesGetqueryResource,
    DoubleclickbidmanagerQueriesGetquery (..),
    newDoubleclickbidmanagerQueriesGetquery,

    -- ** doubleclickbidmanager.queries.listqueries
    DoubleclickbidmanagerQueriesListqueriesResource,
    DoubleclickbidmanagerQueriesListqueries (..),
    newDoubleclickbidmanagerQueriesListqueries,

    -- ** doubleclickbidmanager.queries.runquery
    DoubleclickbidmanagerQueriesRunqueryResource,
    DoubleclickbidmanagerQueriesRunquery (..),
    newDoubleclickbidmanagerQueriesRunquery,

    -- ** doubleclickbidmanager.reports.listreports
    DoubleclickbidmanagerReportsListreportsResource,
    DoubleclickbidmanagerReportsListreports (..),
    newDoubleclickbidmanagerReportsListreports,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** ChannelGrouping
    ChannelGrouping (..),
    newChannelGrouping,

    -- ** DisjunctiveMatchStatement
    DisjunctiveMatchStatement (..),
    newDisjunctiveMatchStatement,

    -- ** EventFilter
    EventFilter (..),
    newEventFilter,

    -- ** FilterPair
    FilterPair (..),
    newFilterPair,

    -- ** FilterPair_Type
    FilterPair_Type (..),

    -- ** ListQueriesResponse
    ListQueriesResponse (..),
    newListQueriesResponse,

    -- ** ListReportsResponse
    ListReportsResponse (..),
    newListReportsResponse,

    -- ** Options
    Options (..),
    newOptions,

    -- ** Parameters
    Parameters (..),
    newParameters,

    -- ** Parameters_GroupBysItem
    Parameters_GroupBysItem (..),

    -- ** Parameters_MetricsItem
    Parameters_MetricsItem (..),

    -- ** Parameters_Type
    Parameters_Type (..),

    -- ** PathFilter
    PathFilter (..),
    newPathFilter,

    -- ** PathFilter_PathMatchPosition
    PathFilter_PathMatchPosition (..),

    -- ** PathQueryOptions
    PathQueryOptions (..),
    newPathQueryOptions,

    -- ** PathQueryOptionsFilter
    PathQueryOptionsFilter (..),
    newPathQueryOptionsFilter,

    -- ** PathQueryOptionsFilter_Filter
    PathQueryOptionsFilter_Filter (..),

    -- ** PathQueryOptionsFilter_Match
    PathQueryOptionsFilter_Match (..),

    -- ** Query
    Query (..),
    newQuery,

    -- ** QueryMetadata
    QueryMetadata (..),
    newQueryMetadata,

    -- ** QueryMetadata_DataRange
    QueryMetadata_DataRange (..),

    -- ** QueryMetadata_Format
    QueryMetadata_Format (..),

    -- ** QuerySchedule
    QuerySchedule (..),
    newQuerySchedule,

    -- ** QuerySchedule_Frequency
    QuerySchedule_Frequency (..),

    -- ** Report
    Report (..),
    newReport,

    -- ** ReportFailure
    ReportFailure (..),
    newReportFailure,

    -- ** ReportFailure_ErrorCode
    ReportFailure_ErrorCode (..),

    -- ** ReportKey
    ReportKey (..),
    newReportKey,

    -- ** ReportMetadata
    ReportMetadata (..),
    newReportMetadata,

    -- ** ReportStatus
    ReportStatus (..),
    newReportStatus,

    -- ** ReportStatus_Format
    ReportStatus_Format (..),

    -- ** ReportStatus_State
    ReportStatus_State (..),

    -- ** Rule
    Rule (..),
    newRule,

    -- ** RunQueryRequest
    RunQueryRequest (..),
    newRunQueryRequest,

    -- ** RunQueryRequest_DataRange
    RunQueryRequest_DataRange (..),
  )
where

import Gogol.DoubleClickBids.Doubleclickbidmanager.Queries.Createquery
import Gogol.DoubleClickBids.Doubleclickbidmanager.Queries.Deletequery
import Gogol.DoubleClickBids.Doubleclickbidmanager.Queries.Getquery
import Gogol.DoubleClickBids.Doubleclickbidmanager.Queries.Listqueries
import Gogol.DoubleClickBids.Doubleclickbidmanager.Queries.Runquery
import Gogol.DoubleClickBids.Doubleclickbidmanager.Reports.Listreports
import Gogol.DoubleClickBids.Types
