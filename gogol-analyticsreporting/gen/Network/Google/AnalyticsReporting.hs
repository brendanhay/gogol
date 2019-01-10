{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AnalyticsReporting
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Accesses Analytics report data.
--
-- /See:/ <https://developers.google.com/analytics/devguides/reporting/core/v4/ Analytics Reporting API Reference>
module Network.Google.AnalyticsReporting
    (
    -- * Service Configuration
      analyticsReportingService

    -- * OAuth Scopes
    , analyticsScope
    , analyticsReadOnlyScope

    -- * API Declaration
    , AnalyticsReportingAPI

    -- * Resources

    -- ** analyticsreporting.reports.batchGet
    , module Network.Google.Resource.AnalyticsReporting.Reports.BatchGet

    -- * Types

    -- ** MetricFilter
    , MetricFilter
    , metricFilter
    , mfNot
    , mfOperator
    , mfMetricName
    , mfComparisonValue

    -- ** MetricFilterOperator
    , MetricFilterOperator (..)

    -- ** ReportRow
    , ReportRow
    , reportRow
    , rrMetrics
    , rrDimensions

    -- ** PivotHeaderEntry
    , PivotHeaderEntry
    , pivotHeaderEntry
    , pheDimensionValues
    , pheDimensionNames
    , pheMetric

    -- ** PivotValueRegion
    , PivotValueRegion
    , pivotValueRegion
    , pvrValues

    -- ** ReportRequest
    , ReportRequest
    , reportRequest
    , rMetrics
    , rPivots
    , rCohortGroup
    , rSamplingLevel
    , rIncludeEmptyRows
    , rDateRanges
    , rViewId
    , rHideTotals
    , rHideValueRanges
    , rMetricFilterClauses
    , rSegments
    , rPageToken
    , rDimensions
    , rDimensionFilterClauses
    , rPageSize
    , rOrderBys
    , rFiltersExpression

    -- ** MetricHeaderEntry
    , MetricHeaderEntry
    , metricHeaderEntry
    , mheName
    , mheType

    -- ** CohortGroup
    , CohortGroup
    , cohortGroup
    , cgCohorts
    , cgLifetimeValue

    -- ** SimpleSegment
    , SimpleSegment
    , simpleSegment
    , ssOrFiltersForSegment

    -- ** DimensionFilterClause
    , DimensionFilterClause
    , dimensionFilterClause
    , dfcOperator
    , dfcFilters

    -- ** DimensionFilterClauseOperator
    , DimensionFilterClauseOperator (..)

    -- ** CohortType
    , CohortType (..)

    -- ** OrderBy
    , OrderBy
    , orderBy
    , obOrderType
    , obSortOrder
    , obFieldName

    -- ** Dimension
    , Dimension
    , dimension
    , dName
    , dHistogramBuckets

    -- ** DateRangeValues
    , DateRangeValues
    , dateRangeValues
    , drvPivotValueRegions
    , drvValues

    -- ** PivotHeader
    , PivotHeader
    , pivotHeader
    , phTotalPivotGroupsCount
    , phPivotHeaderEntries

    -- ** MetricHeader
    , MetricHeader
    , metricHeader
    , mhPivotHeaders
    , mhMetricHeaderEntries

    -- ** SegmentFilter
    , SegmentFilter
    , segmentFilter
    , sfNot
    , sfSimpleSegment
    , sfSequenceSegment

    -- ** OrderByOrderType
    , OrderByOrderType (..)

    -- ** DateRange
    , DateRange
    , dateRange
    , drEndDate
    , drStartDate

    -- ** Report
    , Report
    , report
    , rNextPageToken
    , rData
    , rColumnHeader

    -- ** ReportData
    , ReportData
    , reportData
    , rdMinimums
    , rdRows
    , rdTotals
    , rdSamplesReadCounts
    , rdMaximums
    , rdDataLastRefreshed
    , rdRowCount
    , rdSamplingSpaceSizes
    , rdIsDataGolden

    -- ** SegmentFilterClause
    , SegmentFilterClause
    , segmentFilterClause
    , sfcMetricFilter
    , sfcNot
    , sfcDimensionFilter

    -- ** SegmentSequenceStep
    , SegmentSequenceStep
    , segmentSequenceStep
    , sssMatchType
    , sssOrFiltersForSegment

    -- ** OrFiltersForSegment
    , OrFiltersForSegment
    , orFiltersForSegment
    , offsSegmentFilterClauses

    -- ** SegmentDefinition
    , SegmentDefinition
    , segmentDefinition
    , sdSegmentFilters

    -- ** OrderBySortOrder
    , OrderBySortOrder (..)

    -- ** Pivot
    , Pivot
    , pivot
    , pStartGroup
    , pMetrics
    , pMaxGroupCount
    , pDimensions
    , pDimensionFilterClauses

    -- ** SequenceSegment
    , SequenceSegment
    , sequenceSegment
    , ssFirstStepShouldMatchFirstHit
    , ssSegmentSequenceSteps

    -- ** Metric
    , Metric
    , metric
    , mFormattingType
    , mAlias
    , mExpression

    -- ** SegmentMetricFilterOperator
    , SegmentMetricFilterOperator (..)

    -- ** MetricHeaderEntryType
    , MetricHeaderEntryType (..)

    -- ** SegmentMetricFilter
    , SegmentMetricFilter
    , segmentMetricFilter
    , smfOperator
    , smfMetricName
    , smfMaxComparisonValue
    , smfScope
    , smfComparisonValue

    -- ** ReportRequestSamplingLevel
    , ReportRequestSamplingLevel (..)

    -- ** Xgafv
    , Xgafv (..)

    -- ** GetReportsRequest
    , GetReportsRequest
    , getReportsRequest
    , grrUseResourceQuotas
    , grrReportRequests

    -- ** SegmentSequenceStepMatchType
    , SegmentSequenceStepMatchType (..)

    -- ** Cohort
    , Cohort
    , cohort
    , cDateRange
    , cName
    , cType

    -- ** SegmentMetricFilterScope
    , SegmentMetricFilterScope (..)

    -- ** DimensionFilter
    , DimensionFilter
    , dimensionFilter
    , dfNot
    , dfOperator
    , dfExpressions
    , dfDimensionName
    , dfCaseSensitive

    -- ** GetReportsResponse
    , GetReportsResponse
    , getReportsResponse
    , grrReports
    , grrResourceQuotasRemaining
    , grrQueryCost

    -- ** DimensionFilterOperator
    , DimensionFilterOperator (..)

    -- ** MetricFormattingType
    , MetricFormattingType (..)

    -- ** Segment
    , Segment
    , segment
    , sDynamicSegment
    , sSegmentId

    -- ** SegmentDimensionFilterOperator
    , SegmentDimensionFilterOperator (..)

    -- ** ResourceQuotasRemaining
    , ResourceQuotasRemaining
    , resourceQuotasRemaining
    , rqrHourlyQuotaTokensRemaining
    , rqrDailyQuotaTokensRemaining

    -- ** SegmentDimensionFilter
    , SegmentDimensionFilter
    , segmentDimensionFilter
    , sdfOperator
    , sdfMinComparisonValue
    , sdfMaxComparisonValue
    , sdfExpressions
    , sdfDimensionName
    , sdfCaseSensitive

    -- ** DynamicSegment
    , DynamicSegment
    , dynamicSegment
    , dsUserSegment
    , dsName
    , dsSessionSegment

    -- ** MetricFilterClause
    , MetricFilterClause
    , metricFilterClause
    , mfcOperator
    , mfcFilters

    -- ** MetricFilterClauseOperator
    , MetricFilterClauseOperator (..)

    -- ** ColumnHeader
    , ColumnHeader
    , columnHeader
    , chMetricHeader
    , chDimensions
    ) where

import           Network.Google.AnalyticsReporting.Types
import           Network.Google.Prelude
import           Network.Google.Resource.AnalyticsReporting.Reports.BatchGet

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Analytics Reporting API service.
type AnalyticsReportingAPI = ReportsBatchGetResource
