{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AnalyticsReporting
-- Copyright   : (c) 2015-2021 Brendan Hay
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

    -- ** analyticsreporting.userActivity.search
    , module Network.Google.Resource.AnalyticsReporting.UserActivity.Search

    -- * Types

    -- ** MetricFilter
    , MetricFilter
    , metricFilter
    , mfNot
    , mfOperator
    , mfMetricName
    , mfComparisonValue

    -- ** EventData
    , EventData
    , eventData
    , edEventCategory
    , edEventCount
    , edEventValue
    , edEventLabel
    , edEventAction

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

    -- ** GoalSetData
    , GoalSetData
    , goalSetData
    , gsdGoals

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

    -- ** SearchUserActivityRequestActivityTypesItem
    , SearchUserActivityRequestActivityTypesItem (..)

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

    -- ** SearchUserActivityRequest
    , SearchUserActivityRequest
    , searchUserActivityRequest
    , suarViewId
    , suarDateRange
    , suarUser
    , suarPageToken
    , suarPageSize
    , suarActivityTypes

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

    -- ** PageviewData
    , PageviewData
    , pageviewData
    , pdPageTitle
    , pdPagePath

    -- ** EcommerceDataActionType
    , EcommerceDataActionType (..)

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

    -- ** User
    , User
    , user
    , uUserId
    , uType

    -- ** Pivot
    , Pivot
    , pivot
    , pStartGroup
    , pMetrics
    , pMaxGroupCount
    , pDimensions
    , pDimensionFilterClauses

    -- ** TransactionData
    , TransactionData
    , transactionData
    , tdTransactionId
    , tdTransactionTax
    , tdTransactionShipping
    , tdTransactionRevenue

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

    -- ** UserActivitySession
    , UserActivitySession
    , userActivitySession
    , uasPlatform
    , uasDeviceCategory
    , uasActivities
    , uasSessionDate
    , uasDataSource
    , uasSessionId

    -- ** SegmentSequenceStepMatchType
    , SegmentSequenceStepMatchType (..)

    -- ** GoalData
    , GoalData
    , goalData
    , gdGoalPreviousStep2
    , gdGoalName
    , gdGoalPreviousStep3
    , gdGoalIndex
    , gdGoalCompletionLocation
    , gdGoalPreviousStep1
    , gdGoalCompletions
    , gdGoalValue

    -- ** Activity
    , Activity
    , activity
    , aEvent
    , aHostname
    , aActivityType
    , aMedium
    , aPageview
    , aCampaign
    , aGoals
    , aChannelGrouping
    , aAppview
    , aSource
    , aActivityTime
    , aEcommerce
    , aCustomDimension
    , aKeyword
    , aLandingPagePath

    -- ** Cohort
    , Cohort
    , cohort
    , cDateRange
    , cName
    , cType

    -- ** SegmentMetricFilterScope
    , SegmentMetricFilterScope (..)

    -- ** EcommerceData
    , EcommerceData
    , ecommerceData
    , edEcommerceType
    , edTransaction
    , edProducts
    , edActionType

    -- ** EcommerceDataEcommerceType
    , EcommerceDataEcommerceType (..)

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

    -- ** ActivityActivityType
    , ActivityActivityType (..)

    -- ** MetricFormattingType
    , MetricFormattingType (..)

    -- ** CustomDimension
    , CustomDimension
    , customDimension
    , cdValue
    , cdIndex

    -- ** Segment
    , Segment
    , segment
    , sDynamicSegment
    , sSegmentId

    -- ** ProductData
    , ProductData
    , productData
    , pdProductName
    , pdProductSKU
    , pdItemRevenue
    , pdProductQuantity

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

    -- ** UserType
    , UserType (..)

    -- ** ColumnHeader
    , ColumnHeader
    , columnHeader
    , chMetricHeader
    , chDimensions

    -- ** SearchUserActivityResponse
    , SearchUserActivityResponse
    , searchUserActivityResponse
    , suarNextPageToken
    , suarSampleRate
    , suarSessions
    , suarTotalRows

    -- ** ScreenviewData
    , ScreenviewData
    , screenviewData
    , sdMobileDeviceModel
    , sdMobileDeviceBranding
    , sdAppName
    , sdScreenName
    ) where

import Network.Google.Prelude
import Network.Google.AnalyticsReporting.Types
import Network.Google.Resource.AnalyticsReporting.Reports.BatchGet
import Network.Google.Resource.AnalyticsReporting.UserActivity.Search

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Analytics Reporting API service.
type AnalyticsReportingAPI =
     ReportsBatchGetResource :<|>
       UserActivitySearchResource
