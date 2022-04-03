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
-- Module      : Gogol.AnalyticsReporting
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Accesses Analytics report data.
--
-- /See:/ <https://developers.google.com/analytics/devguides/reporting/core/v4/ Analytics Reporting API Reference>
module Gogol.AnalyticsReporting
  ( -- * Configuration
    analyticsReportingService,

    -- * OAuth Scopes
    Analytics'FullControl,
    Analytics'Readonly,

    -- * Resources

    -- ** analyticsreporting.reports.batchGet
    AnalyticsReportingReportsBatchGetResource,
    AnalyticsReportingReportsBatchGet (..),
    newAnalyticsReportingReportsBatchGet,

    -- ** analyticsreporting.userActivity.search
    AnalyticsReportingUserActivitySearchResource,
    AnalyticsReportingUserActivitySearch (..),
    newAnalyticsReportingUserActivitySearch,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Activity
    Activity (..),
    newActivity,

    -- ** Activity_ActivityType
    Activity_ActivityType (..),

    -- ** Cohort
    Cohort (..),
    newCohort,

    -- ** Cohort_Type
    Cohort_Type (..),

    -- ** CohortGroup
    CohortGroup (..),
    newCohortGroup,

    -- ** ColumnHeader
    ColumnHeader (..),
    newColumnHeader,

    -- ** CustomDimension
    CustomDimension (..),
    newCustomDimension,

    -- ** DateRange
    DateRange (..),
    newDateRange,

    -- ** DateRangeValues
    DateRangeValues (..),
    newDateRangeValues,

    -- ** Dimension
    Dimension (..),
    newDimension,

    -- ** DimensionFilter
    DimensionFilter (..),
    newDimensionFilter,

    -- ** DimensionFilter_Operator
    DimensionFilter_Operator (..),

    -- ** DimensionFilterClause
    DimensionFilterClause (..),
    newDimensionFilterClause,

    -- ** DimensionFilterClause_Operator
    DimensionFilterClause_Operator (..),

    -- ** DynamicSegment
    DynamicSegment (..),
    newDynamicSegment,

    -- ** EcommerceData
    EcommerceData (..),
    newEcommerceData,

    -- ** EcommerceData_ActionType
    EcommerceData_ActionType (..),

    -- ** EcommerceData_EcommerceType
    EcommerceData_EcommerceType (..),

    -- ** EventData
    EventData (..),
    newEventData,

    -- ** GetReportsRequest
    GetReportsRequest (..),
    newGetReportsRequest,

    -- ** GetReportsResponse
    GetReportsResponse (..),
    newGetReportsResponse,

    -- ** GoalData
    GoalData (..),
    newGoalData,

    -- ** GoalSetData
    GoalSetData (..),
    newGoalSetData,

    -- ** Metric
    Metric (..),
    newMetric,

    -- ** Metric_FormattingType
    Metric_FormattingType (..),

    -- ** MetricFilter
    MetricFilter (..),
    newMetricFilter,

    -- ** MetricFilter_Operator
    MetricFilter_Operator (..),

    -- ** MetricFilterClause
    MetricFilterClause (..),
    newMetricFilterClause,

    -- ** MetricFilterClause_Operator
    MetricFilterClause_Operator (..),

    -- ** MetricHeader
    MetricHeader (..),
    newMetricHeader,

    -- ** MetricHeaderEntry
    MetricHeaderEntry (..),
    newMetricHeaderEntry,

    -- ** MetricHeaderEntry_Type
    MetricHeaderEntry_Type (..),

    -- ** OrFiltersForSegment
    OrFiltersForSegment (..),
    newOrFiltersForSegment,

    -- ** OrderBy
    OrderBy (..),
    newOrderBy,

    -- ** OrderBy_OrderType
    OrderBy_OrderType (..),

    -- ** OrderBy_SortOrder
    OrderBy_SortOrder (..),

    -- ** PageviewData
    PageviewData (..),
    newPageviewData,

    -- ** Pivot
    Pivot (..),
    newPivot,

    -- ** PivotHeader
    PivotHeader (..),
    newPivotHeader,

    -- ** PivotHeaderEntry
    PivotHeaderEntry (..),
    newPivotHeaderEntry,

    -- ** PivotValueRegion
    PivotValueRegion (..),
    newPivotValueRegion,

    -- ** ProductData
    ProductData (..),
    newProductData,

    -- ** Report
    Report (..),
    newReport,

    -- ** ReportData
    ReportData (..),
    newReportData,

    -- ** ReportRequest
    ReportRequest (..),
    newReportRequest,

    -- ** ReportRequest_SamplingLevel
    ReportRequest_SamplingLevel (..),

    -- ** ReportRow
    ReportRow (..),
    newReportRow,

    -- ** ResourceQuotasRemaining
    ResourceQuotasRemaining (..),
    newResourceQuotasRemaining,

    -- ** ScreenviewData
    ScreenviewData (..),
    newScreenviewData,

    -- ** SearchUserActivityRequest
    SearchUserActivityRequest (..),
    newSearchUserActivityRequest,

    -- ** SearchUserActivityRequest_ActivityTypesItem
    SearchUserActivityRequest_ActivityTypesItem (..),

    -- ** SearchUserActivityResponse
    SearchUserActivityResponse (..),
    newSearchUserActivityResponse,

    -- ** Segment
    Segment (..),
    newSegment,

    -- ** SegmentDefinition
    SegmentDefinition (..),
    newSegmentDefinition,

    -- ** SegmentDimensionFilter
    SegmentDimensionFilter (..),
    newSegmentDimensionFilter,

    -- ** SegmentDimensionFilter_Operator
    SegmentDimensionFilter_Operator (..),

    -- ** SegmentFilter
    SegmentFilter (..),
    newSegmentFilter,

    -- ** SegmentFilterClause
    SegmentFilterClause (..),
    newSegmentFilterClause,

    -- ** SegmentMetricFilter
    SegmentMetricFilter (..),
    newSegmentMetricFilter,

    -- ** SegmentMetricFilter_Operator
    SegmentMetricFilter_Operator (..),

    -- ** SegmentMetricFilter_Scope
    SegmentMetricFilter_Scope (..),

    -- ** SegmentSequenceStep
    SegmentSequenceStep (..),
    newSegmentSequenceStep,

    -- ** SegmentSequenceStep_MatchType
    SegmentSequenceStep_MatchType (..),

    -- ** SequenceSegment
    SequenceSegment (..),
    newSequenceSegment,

    -- ** SimpleSegment
    SimpleSegment (..),
    newSimpleSegment,

    -- ** TransactionData
    TransactionData (..),
    newTransactionData,

    -- ** User
    User (..),
    newUser,

    -- ** User_Type
    User_Type (..),

    -- ** UserActivitySession
    UserActivitySession (..),
    newUserActivitySession,
  )
where

import Gogol.AnalyticsReporting.Reports.BatchGet
import Gogol.AnalyticsReporting.Types
import Gogol.AnalyticsReporting.UserActivity.Search
