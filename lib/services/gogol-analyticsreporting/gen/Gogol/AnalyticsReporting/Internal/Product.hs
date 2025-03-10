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
-- Module      : Gogol.AnalyticsReporting.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AnalyticsReporting.Internal.Product
  ( -- * Activity
    Activity (..),
    newActivity,

    -- * Cohort
    Cohort (..),
    newCohort,

    -- * CohortGroup
    CohortGroup (..),
    newCohortGroup,

    -- * ColumnHeader
    ColumnHeader (..),
    newColumnHeader,

    -- * CustomDimension
    CustomDimension (..),
    newCustomDimension,

    -- * DateRange
    DateRange (..),
    newDateRange,

    -- * DateRangeValues
    DateRangeValues (..),
    newDateRangeValues,

    -- * Dimension
    Dimension (..),
    newDimension,

    -- * DimensionFilter
    DimensionFilter (..),
    newDimensionFilter,

    -- * DimensionFilterClause
    DimensionFilterClause (..),
    newDimensionFilterClause,

    -- * DynamicSegment
    DynamicSegment (..),
    newDynamicSegment,

    -- * EcommerceData
    EcommerceData (..),
    newEcommerceData,

    -- * EventData
    EventData (..),
    newEventData,

    -- * GetReportsRequest
    GetReportsRequest (..),
    newGetReportsRequest,

    -- * GetReportsResponse
    GetReportsResponse (..),
    newGetReportsResponse,

    -- * GoalData
    GoalData (..),
    newGoalData,

    -- * GoalSetData
    GoalSetData (..),
    newGoalSetData,

    -- * Metric
    Metric (..),
    newMetric,

    -- * MetricFilter
    MetricFilter (..),
    newMetricFilter,

    -- * MetricFilterClause
    MetricFilterClause (..),
    newMetricFilterClause,

    -- * MetricHeader
    MetricHeader (..),
    newMetricHeader,

    -- * MetricHeaderEntry
    MetricHeaderEntry (..),
    newMetricHeaderEntry,

    -- * OrFiltersForSegment
    OrFiltersForSegment (..),
    newOrFiltersForSegment,

    -- * OrderBy
    OrderBy (..),
    newOrderBy,

    -- * PageviewData
    PageviewData (..),
    newPageviewData,

    -- * Pivot
    Pivot (..),
    newPivot,

    -- * PivotHeader
    PivotHeader (..),
    newPivotHeader,

    -- * PivotHeaderEntry
    PivotHeaderEntry (..),
    newPivotHeaderEntry,

    -- * PivotValueRegion
    PivotValueRegion (..),
    newPivotValueRegion,

    -- * ProductData
    ProductData (..),
    newProductData,

    -- * Report
    Report (..),
    newReport,

    -- * ReportData
    ReportData (..),
    newReportData,

    -- * ReportRequest
    ReportRequest (..),
    newReportRequest,

    -- * ReportRow
    ReportRow (..),
    newReportRow,

    -- * ResourceQuotasRemaining
    ResourceQuotasRemaining (..),
    newResourceQuotasRemaining,

    -- * ScreenviewData
    ScreenviewData (..),
    newScreenviewData,

    -- * SearchUserActivityRequest
    SearchUserActivityRequest (..),
    newSearchUserActivityRequest,

    -- * SearchUserActivityResponse
    SearchUserActivityResponse (..),
    newSearchUserActivityResponse,

    -- * Segment
    Segment (..),
    newSegment,

    -- * SegmentDefinition
    SegmentDefinition (..),
    newSegmentDefinition,

    -- * SegmentDimensionFilter
    SegmentDimensionFilter (..),
    newSegmentDimensionFilter,

    -- * SegmentFilter
    SegmentFilter (..),
    newSegmentFilter,

    -- * SegmentFilterClause
    SegmentFilterClause (..),
    newSegmentFilterClause,

    -- * SegmentMetricFilter
    SegmentMetricFilter (..),
    newSegmentMetricFilter,

    -- * SegmentSequenceStep
    SegmentSequenceStep (..),
    newSegmentSequenceStep,

    -- * SequenceSegment
    SequenceSegment (..),
    newSequenceSegment,

    -- * SimpleSegment
    SimpleSegment (..),
    newSimpleSegment,

    -- * TransactionData
    TransactionData (..),
    newTransactionData,

    -- * User
    User (..),
    newUser,

    -- * UserActivitySession
    UserActivitySession (..),
    newUserActivitySession,
  )
where

import Gogol.AnalyticsReporting.Internal.Sum
import Gogol.Prelude qualified as Core

-- | An Activity represents data for an activity of a user. Note that an Activity is different from a hit. A hit might result in multiple Activity\'s. For example, if a hit includes a transaction and a goal completion, there will be two Activity protos for this hit, one for ECOMMERCE and one for GOAL. Conversely, multiple hits can also construct one Activity. In classic e-commerce, data for one transaction might be sent through multiple hits. These hits will be merged into one ECOMMERCE Activity.
--
-- /See:/ 'newActivity' smart constructor.
data Activity = Activity
  { -- | Timestamp of the activity. If activities for a visit cross midnight and occur in two separate dates, then two sessions (one per date) share the session identifier. For example, say session ID 113472 has activity within 2019-08-20, and session ID 243742 has activity within 2019-08-25 and 2019-08-26. Session ID 113472 is one session, and session ID 243742 is two sessions.
    activityTime :: (Core.Maybe Core.DateTime),
    -- | Type of this activity.
    activityType :: (Core.Maybe Activity_ActivityType),
    -- | This will be set if @activity_type@ equals @SCREEN_VIEW@.
    appview :: (Core.Maybe ScreenviewData),
    -- | For manual campaign tracking, it is the value of the utm_campaign campaign tracking parameter. For AdWords autotagging, it is the name(s) of the online ad campaign(s) you use for the property. If you use neither, its value is (not set).
    campaign :: (Core.Maybe Core.Text),
    -- | The Channel Group associated with an end user\'s session for this View (defined by the View\'s Channel Groupings).
    channelGrouping :: (Core.Maybe Core.Text),
    -- | A list of all custom dimensions associated with this activity.
    customDimension :: (Core.Maybe [CustomDimension]),
    -- | This will be set if @activity_type@ equals @ECOMMERCE@.
    ecommerce :: (Core.Maybe EcommerceData),
    -- | This field contains all the details pertaining to an event and will be set if @activity_type@ equals @EVENT@.
    event :: (Core.Maybe EventData),
    -- | This field contains a list of all the goals that were reached in this activity when @activity_type@ equals @GOAL@.
    goals :: (Core.Maybe GoalSetData),
    -- | The hostname from which the tracking request was made.
    hostname :: (Core.Maybe Core.Text),
    -- | For manual campaign tracking, it is the value of the utm/term campaign tracking parameter. For AdWords traffic, it contains the best matching targeting criteria. For the display network, where multiple targeting criteria could have caused the ad to show up, it returns the best matching targeting criteria as selected by Ads. This could be display/keyword, site placement, boomuserlist, user_interest, age, or gender. Otherwise its value is (not set).
    keyword :: (Core.Maybe Core.Text),
    -- | The first page in users\' sessions, or the landing page.
    landingPagePath :: (Core.Maybe Core.Text),
    -- | The type of referrals. For manual campaign tracking, it is the value of the utm_medium campaign tracking parameter. For AdWords autotagging, it is cpc. If users came from a search engine detected by Google Analytics, it is organic. If the referrer is not a search engine, it is referral. If users came directly to the property and document.referrer is empty, its value is (none).
    medium :: (Core.Maybe Core.Text),
    -- | This will be set if @activity_type@ equals @PAGEVIEW@. This field contains all the details about the visitor and the page that was visited.
    pageview :: (Core.Maybe PageviewData),
    -- | The source of referrals. For manual campaign tracking, it is the value of the utm_source campaign tracking parameter. For AdWords autotagging, it is google. If you use neither, it is the domain of the source (e.g., document.referrer) referring the users. It may also contain a port address. If users arrived without a referrer, its value is (direct).
    source :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity' with the minimum fields required to make a request.
newActivity ::
  Activity
newActivity =
  Activity
    { activityTime = Core.Nothing,
      activityType = Core.Nothing,
      appview = Core.Nothing,
      campaign = Core.Nothing,
      channelGrouping = Core.Nothing,
      customDimension = Core.Nothing,
      ecommerce = Core.Nothing,
      event = Core.Nothing,
      goals = Core.Nothing,
      hostname = Core.Nothing,
      keyword = Core.Nothing,
      landingPagePath = Core.Nothing,
      medium = Core.Nothing,
      pageview = Core.Nothing,
      source = Core.Nothing
    }

instance Core.FromJSON Activity where
  parseJSON =
    Core.withObject
      "Activity"
      ( \o ->
          Activity
            Core.<$> (o Core..:? "activityTime")
            Core.<*> (o Core..:? "activityType")
            Core.<*> (o Core..:? "appview")
            Core.<*> (o Core..:? "campaign")
            Core.<*> (o Core..:? "channelGrouping")
            Core.<*> (o Core..:? "customDimension")
            Core.<*> (o Core..:? "ecommerce")
            Core.<*> (o Core..:? "event")
            Core.<*> (o Core..:? "goals")
            Core.<*> (o Core..:? "hostname")
            Core.<*> (o Core..:? "keyword")
            Core.<*> (o Core..:? "landingPagePath")
            Core.<*> (o Core..:? "medium")
            Core.<*> (o Core..:? "pageview")
            Core.<*> (o Core..:? "source")
      )

instance Core.ToJSON Activity where
  toJSON Activity {..} =
    Core.object
      ( Core.catMaybes
          [ ("activityTime" Core..=) Core.<$> activityTime,
            ("activityType" Core..=) Core.<$> activityType,
            ("appview" Core..=) Core.<$> appview,
            ("campaign" Core..=) Core.<$> campaign,
            ("channelGrouping" Core..=) Core.<$> channelGrouping,
            ("customDimension" Core..=) Core.<$> customDimension,
            ("ecommerce" Core..=) Core.<$> ecommerce,
            ("event" Core..=) Core.<$> event,
            ("goals" Core..=) Core.<$> goals,
            ("hostname" Core..=) Core.<$> hostname,
            ("keyword" Core..=) Core.<$> keyword,
            ("landingPagePath" Core..=) Core.<$> landingPagePath,
            ("medium" Core..=) Core.<$> medium,
            ("pageview" Core..=) Core.<$> pageview,
            ("source" Core..=) Core.<$> source
          ]
      )

-- | Defines a cohort. A cohort is a group of users who share a common characteristic. For example, all users with the same acquisition date belong to the same cohort.
--
-- /See:/ 'newCohort' smart constructor.
data Cohort = Cohort
  { -- | This is used for @FIRST_VISIT_DATE@ cohort, the cohort selects users whose first visit date is between start date and end date defined in the DateRange. The date ranges should be aligned for cohort requests. If the request contains @ga:cohortNthDay@ it should be exactly one day long, if @ga:cohortNthWeek@ it should be aligned to the week boundary (starting at Sunday and ending Saturday), and for @ga:cohortNthMonth@ the date range should be aligned to the month (starting at the first and ending on the last day of the month). For LTV requests there are no such restrictions. You do not need to supply a date range for the @reportsRequest.dateRanges@ field.
    dateRange :: (Core.Maybe DateRange),
    -- | A unique name for the cohort. If not defined name will be auto-generated with values cohort_[1234...].
    name :: (Core.Maybe Core.Text),
    -- | Type of the cohort. The only supported type as of now is @FIRST_VISIT_DATE@. If this field is unspecified the cohort is treated as @FIRST_VISIT_DATE@ type cohort.
    type' :: (Core.Maybe Cohort_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Cohort' with the minimum fields required to make a request.
newCohort ::
  Cohort
newCohort =
  Cohort
    { dateRange = Core.Nothing,
      name = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Cohort where
  parseJSON =
    Core.withObject
      "Cohort"
      ( \o ->
          Cohort
            Core.<$> (o Core..:? "dateRange")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Cohort where
  toJSON Cohort {..} =
    Core.object
      ( Core.catMaybes
          [ ("dateRange" Core..=) Core.<$> dateRange,
            ("name" Core..=) Core.<$> name,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Defines a cohort group. For example: \"cohortGroup\": { \"cohorts\": [{ \"name\": \"cohort 1\", \"type\": \"FIRST/VISIT/DATE\", \"dateRange\": { \"startDate\": \"2015-08-01\", \"endDate\": \"2015-08-01\" } },{ \"name\": \"cohort 2\" \"type\": \"FIRST/VISIT/DATE\" \"dateRange\": { \"startDate\": \"2015-07-01\", \"endDate\": \"2015-07-01\" } }] }
--
-- /See:/ 'newCohortGroup' smart constructor.
data CohortGroup = CohortGroup
  { -- | The definition for the cohort.
    cohorts :: (Core.Maybe [Cohort]),
    -- | Enable Life Time Value (LTV). LTV measures lifetime value for users acquired through different channels. Please see: <https://support.google.com/analytics/answer/6074676 Cohort Analysis> and <https://support.google.com/analytics/answer/6182550 Lifetime Value> If the value of lifetimeValue is false: - The metric values are similar to the values in the web interface cohort report. - The cohort definition date ranges must be aligned to the calendar week and month. i.e. while requesting @ga:cohortNthWeek@ the @startDate@ in the cohort definition should be a Sunday and the @endDate@ should be the following Saturday, and for @ga:cohortNthMonth@, the @startDate@ should be the 1st of the month and @endDate@ should be the last day of the month. When the lifetimeValue is true: - The metric values will correspond to the values in the web interface LifeTime value report. - The Lifetime Value report shows you how user value (Revenue) and engagement (Appviews, Goal Completions, Sessions, and Session Duration) grow during
    -- the 90 days after a user is acquired. - The metrics are calculated as a cumulative average per user per the time increment. - The cohort definition date ranges need not be aligned to the calendar week and month boundaries. - The @viewId@ must be an <https://support.google.com/analytics/answer/2649553#WebVersusAppViews app view ID>
    lifetimeValue :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CohortGroup' with the minimum fields required to make a request.
newCohortGroup ::
  CohortGroup
newCohortGroup =
  CohortGroup {cohorts = Core.Nothing, lifetimeValue = Core.Nothing}

instance Core.FromJSON CohortGroup where
  parseJSON =
    Core.withObject
      "CohortGroup"
      ( \o ->
          CohortGroup
            Core.<$> (o Core..:? "cohorts")
            Core.<*> (o Core..:? "lifetimeValue")
      )

instance Core.ToJSON CohortGroup where
  toJSON CohortGroup {..} =
    Core.object
      ( Core.catMaybes
          [ ("cohorts" Core..=) Core.<$> cohorts,
            ("lifetimeValue" Core..=) Core.<$> lifetimeValue
          ]
      )

-- | Column headers.
--
-- /See:/ 'newColumnHeader' smart constructor.
data ColumnHeader = ColumnHeader
  { -- | The dimension names in the response.
    dimensions :: (Core.Maybe [Core.Text]),
    -- | Metric headers for the metrics in the response.
    metricHeader :: (Core.Maybe MetricHeader)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ColumnHeader' with the minimum fields required to make a request.
newColumnHeader ::
  ColumnHeader
newColumnHeader =
  ColumnHeader
    { dimensions = Core.Nothing,
      metricHeader = Core.Nothing
    }

instance Core.FromJSON ColumnHeader where
  parseJSON =
    Core.withObject
      "ColumnHeader"
      ( \o ->
          ColumnHeader
            Core.<$> (o Core..:? "dimensions")
            Core.<*> (o Core..:? "metricHeader")
      )

instance Core.ToJSON ColumnHeader where
  toJSON ColumnHeader {..} =
    Core.object
      ( Core.catMaybes
          [ ("dimensions" Core..=) Core.<$> dimensions,
            ("metricHeader" Core..=) Core.<$> metricHeader
          ]
      )

-- | Custom dimension.
--
-- /See:/ 'newCustomDimension' smart constructor.
data CustomDimension = CustomDimension
  { -- | Slot number of custom dimension.
    index :: (Core.Maybe Core.Int32),
    -- | Value of the custom dimension. Default value (i.e. empty string) indicates clearing sesion\/visitor scope custom dimension value.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomDimension' with the minimum fields required to make a request.
newCustomDimension ::
  CustomDimension
newCustomDimension =
  CustomDimension {index = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON CustomDimension where
  parseJSON =
    Core.withObject
      "CustomDimension"
      ( \o ->
          CustomDimension
            Core.<$> (o Core..:? "index")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON CustomDimension where
  toJSON CustomDimension {..} =
    Core.object
      ( Core.catMaybes
          [ ("index" Core..=) Core.<$> index,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | A contiguous set of days: startDate, startDate + 1 day, ..., endDate. The start and end dates are specified in <https://en.wikipedia.org/wiki/ISO_8601 ISO8601> date format @YYYY-MM-DD@.
--
-- /See:/ 'newDateRange' smart constructor.
data DateRange = DateRange
  { -- | The end date for the query in the format @YYYY-MM-DD@.
    endDate :: (Core.Maybe Core.Text),
    -- | The start date for the query in the format @YYYY-MM-DD@.
    startDate :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DateRange' with the minimum fields required to make a request.
newDateRange ::
  DateRange
newDateRange =
  DateRange {endDate = Core.Nothing, startDate = Core.Nothing}

instance Core.FromJSON DateRange where
  parseJSON =
    Core.withObject
      "DateRange"
      ( \o ->
          DateRange
            Core.<$> (o Core..:? "endDate")
            Core.<*> (o Core..:? "startDate")
      )

instance Core.ToJSON DateRange where
  toJSON DateRange {..} =
    Core.object
      ( Core.catMaybes
          [ ("endDate" Core..=) Core.<$> endDate,
            ("startDate" Core..=) Core.<$> startDate
          ]
      )

-- | Used to return a list of metrics for a single DateRange \/ dimension combination
--
-- /See:/ 'newDateRangeValues' smart constructor.
data DateRangeValues = DateRangeValues
  { -- | The values of each pivot region.
    pivotValueRegions :: (Core.Maybe [PivotValueRegion]),
    -- | Each value corresponds to each Metric in the request.
    values :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DateRangeValues' with the minimum fields required to make a request.
newDateRangeValues ::
  DateRangeValues
newDateRangeValues =
  DateRangeValues
    { pivotValueRegions = Core.Nothing,
      values = Core.Nothing
    }

instance Core.FromJSON DateRangeValues where
  parseJSON =
    Core.withObject
      "DateRangeValues"
      ( \o ->
          DateRangeValues
            Core.<$> (o Core..:? "pivotValueRegions")
            Core.<*> (o Core..:? "values")
      )

instance Core.ToJSON DateRangeValues where
  toJSON DateRangeValues {..} =
    Core.object
      ( Core.catMaybes
          [ ("pivotValueRegions" Core..=) Core.<$> pivotValueRegions,
            ("values" Core..=) Core.<$> values
          ]
      )

-- | <https://support.google.com/analytics/answer/1033861 Dimensions> are attributes of your data. For example, the dimension @ga:city@ indicates the city, for example, \"Paris\" or \"New York\", from which a session originates.
--
-- /See:/ 'newDimension' smart constructor.
data Dimension = Dimension
  { -- | If non-empty, we place dimension values into buckets after string to int64. Dimension values that are not the string representation of an integral value will be converted to zero. The bucket values have to be in increasing order. Each bucket is closed on the lower end, and open on the upper end. The \"first\" bucket includes all values less than the first boundary, the \"last\" bucket includes all values up to infinity. Dimension values that fall in a bucket get transformed to a new dimension value. For example, if one gives a list of \"0, 1, 3, 4, 7\", then we return the following buckets: - bucket #1: values \< 0, dimension value \"\<0\" - bucket #2: values in [0,1), dimension value \"0\" - bucket #3: values in [1,3), dimension value \"1-2\" - bucket #4: values in [3,4), dimension value \"3\" - bucket #5: values in [4,7), dimension value \"4-6\" - bucket #6: values >= 7, dimension value \"7+\" NOTE: If you are applying histogram mutation on any dimension, and using that dimension in sort, you will want to
    -- use the sort type @HISTOGRAM_BUCKET@ for that purpose. Without that the dimension values will be sorted according to dictionary (lexicographic) order. For example the ascending dictionary order is: \"\<50\", \"1001+\", \"121-1000\", \"50-120\" And the ascending @HISTOGRAM_BUCKET@ order is: \"\<50\", \"50-120\", \"121-1000\", \"1001+\" The client has to explicitly request @\"orderType\": \"HISTOGRAM_BUCKET\"@ for a histogram-mutated dimension.
    histogramBuckets :: (Core.Maybe [Core.Int64]),
    -- | Name of the dimension to fetch, for example @ga:browser@.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Dimension' with the minimum fields required to make a request.
newDimension ::
  Dimension
newDimension =
  Dimension {histogramBuckets = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON Dimension where
  parseJSON =
    Core.withObject
      "Dimension"
      ( \o ->
          Dimension
            Core.<$> ( o
                         Core..:? "histogramBuckets"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON Dimension where
  toJSON Dimension {..} =
    Core.object
      ( Core.catMaybes
          [ ("histogramBuckets" Core..=)
              Core.. Core.fmap Core.AsText
              Core.<$> histogramBuckets,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Dimension filter specifies the filtering options on a dimension.
--
-- /See:/ 'newDimensionFilter' smart constructor.
data DimensionFilter = DimensionFilter
  { -- | Should the match be case sensitive? Default is false.
    caseSensitive :: (Core.Maybe Core.Bool),
    -- | The dimension to filter on. A DimensionFilter must contain a dimension.
    dimensionName :: (Core.Maybe Core.Text),
    -- | Strings or regular expression to match against. Only the first value of the list is used for comparison unless the operator is @IN_LIST@. If @IN_LIST@ operator, then the entire list is used to filter the dimensions as explained in the description of the @IN_LIST@ operator.
    expressions :: (Core.Maybe [Core.Text]),
    -- | Logical @NOT@ operator. If this boolean is set to true, then the matching dimension values will be excluded in the report. The default is false.
    not :: (Core.Maybe Core.Bool),
    -- | How to match the dimension to the expression. The default is REGEXP.
    operator :: (Core.Maybe DimensionFilter_Operator)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DimensionFilter' with the minimum fields required to make a request.
newDimensionFilter ::
  DimensionFilter
newDimensionFilter =
  DimensionFilter
    { caseSensitive = Core.Nothing,
      dimensionName = Core.Nothing,
      expressions = Core.Nothing,
      not = Core.Nothing,
      operator = Core.Nothing
    }

instance Core.FromJSON DimensionFilter where
  parseJSON =
    Core.withObject
      "DimensionFilter"
      ( \o ->
          DimensionFilter
            Core.<$> (o Core..:? "caseSensitive")
            Core.<*> (o Core..:? "dimensionName")
            Core.<*> (o Core..:? "expressions")
            Core.<*> (o Core..:? "not")
            Core.<*> (o Core..:? "operator")
      )

instance Core.ToJSON DimensionFilter where
  toJSON DimensionFilter {..} =
    Core.object
      ( Core.catMaybes
          [ ("caseSensitive" Core..=) Core.<$> caseSensitive,
            ("dimensionName" Core..=) Core.<$> dimensionName,
            ("expressions" Core..=) Core.<$> expressions,
            ("not" Core..=) Core.<$> not,
            ("operator" Core..=) Core.<$> operator
          ]
      )

-- | A group of dimension filters. Set the operator value to specify how the filters are logically combined.
--
-- /See:/ 'newDimensionFilterClause' smart constructor.
data DimensionFilterClause = DimensionFilterClause
  { -- | The repeated set of filters. They are logically combined based on the operator specified.
    filters :: (Core.Maybe [DimensionFilter]),
    -- | The operator for combining multiple dimension filters. If unspecified, it is treated as an @OR@.
    operator :: (Core.Maybe DimensionFilterClause_Operator)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DimensionFilterClause' with the minimum fields required to make a request.
newDimensionFilterClause ::
  DimensionFilterClause
newDimensionFilterClause =
  DimensionFilterClause
    { filters = Core.Nothing,
      operator = Core.Nothing
    }

instance Core.FromJSON DimensionFilterClause where
  parseJSON =
    Core.withObject
      "DimensionFilterClause"
      ( \o ->
          DimensionFilterClause
            Core.<$> (o Core..:? "filters")
            Core.<*> (o Core..:? "operator")
      )

instance Core.ToJSON DimensionFilterClause where
  toJSON DimensionFilterClause {..} =
    Core.object
      ( Core.catMaybes
          [ ("filters" Core..=) Core.<$> filters,
            ("operator" Core..=) Core.<$> operator
          ]
      )

-- | Dynamic segment definition for defining the segment within the request. A segment can select users, sessions or both.
--
-- /See:/ 'newDynamicSegment' smart constructor.
data DynamicSegment = DynamicSegment
  { -- | The name of the dynamic segment.
    name :: (Core.Maybe Core.Text),
    -- | Session Segment to select sessions to include in the segment.
    sessionSegment :: (Core.Maybe SegmentDefinition),
    -- | User Segment to select users to include in the segment.
    userSegment :: (Core.Maybe SegmentDefinition)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DynamicSegment' with the minimum fields required to make a request.
newDynamicSegment ::
  DynamicSegment
newDynamicSegment =
  DynamicSegment
    { name = Core.Nothing,
      sessionSegment = Core.Nothing,
      userSegment = Core.Nothing
    }

instance Core.FromJSON DynamicSegment where
  parseJSON =
    Core.withObject
      "DynamicSegment"
      ( \o ->
          DynamicSegment
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "sessionSegment")
            Core.<*> (o Core..:? "userSegment")
      )

instance Core.ToJSON DynamicSegment where
  toJSON DynamicSegment {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("sessionSegment" Core..=) Core.<$> sessionSegment,
            ("userSegment" Core..=) Core.<$> userSegment
          ]
      )

-- | E-commerce details associated with the user activity.
--
-- /See:/ 'newEcommerceData' smart constructor.
data EcommerceData = EcommerceData
  { -- | Action associated with this e-commerce action.
    actionType :: (Core.Maybe EcommerceData_ActionType),
    -- | The type of this e-commerce activity.
    ecommerceType :: (Core.Maybe EcommerceData_EcommerceType),
    -- | Details of the products in this transaction.
    products :: (Core.Maybe [ProductData]),
    -- | Transaction details of this e-commerce action.
    transaction :: (Core.Maybe TransactionData)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EcommerceData' with the minimum fields required to make a request.
newEcommerceData ::
  EcommerceData
newEcommerceData =
  EcommerceData
    { actionType = Core.Nothing,
      ecommerceType = Core.Nothing,
      products = Core.Nothing,
      transaction = Core.Nothing
    }

instance Core.FromJSON EcommerceData where
  parseJSON =
    Core.withObject
      "EcommerceData"
      ( \o ->
          EcommerceData
            Core.<$> (o Core..:? "actionType")
            Core.<*> (o Core..:? "ecommerceType")
            Core.<*> (o Core..:? "products")
            Core.<*> (o Core..:? "transaction")
      )

instance Core.ToJSON EcommerceData where
  toJSON EcommerceData {..} =
    Core.object
      ( Core.catMaybes
          [ ("actionType" Core..=) Core.<$> actionType,
            ("ecommerceType" Core..=) Core.<$> ecommerceType,
            ("products" Core..=) Core.<$> products,
            ("transaction" Core..=) Core.<$> transaction
          ]
      )

-- | Represents all the details pertaining to an event.
--
-- /See:/ 'newEventData' smart constructor.
data EventData = EventData
  { -- | Type of interaction with the object. Eg: \'play\'.
    eventAction :: (Core.Maybe Core.Text),
    -- | The object on the page that was interacted with. Eg: \'Video\'.
    eventCategory :: (Core.Maybe Core.Text),
    -- | Number of such events in this activity.
    eventCount :: (Core.Maybe Core.Int64),
    -- | Label attached with the event.
    eventLabel :: (Core.Maybe Core.Text),
    -- | Numeric value associated with the event.
    eventValue :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EventData' with the minimum fields required to make a request.
newEventData ::
  EventData
newEventData =
  EventData
    { eventAction = Core.Nothing,
      eventCategory = Core.Nothing,
      eventCount = Core.Nothing,
      eventLabel = Core.Nothing,
      eventValue = Core.Nothing
    }

instance Core.FromJSON EventData where
  parseJSON =
    Core.withObject
      "EventData"
      ( \o ->
          EventData
            Core.<$> (o Core..:? "eventAction")
            Core.<*> (o Core..:? "eventCategory")
            Core.<*> (o Core..:? "eventCount" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "eventLabel")
            Core.<*> (o Core..:? "eventValue" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON EventData where
  toJSON EventData {..} =
    Core.object
      ( Core.catMaybes
          [ ("eventAction" Core..=) Core.<$> eventAction,
            ("eventCategory" Core..=) Core.<$> eventCategory,
            ("eventCount" Core..=) Core.. Core.AsText Core.<$> eventCount,
            ("eventLabel" Core..=) Core.<$> eventLabel,
            ("eventValue" Core..=) Core.. Core.AsText Core.<$> eventValue
          ]
      )

-- | The batch request containing multiple report request.
--
-- /See:/ 'newGetReportsRequest' smart constructor.
data GetReportsRequest = GetReportsRequest
  { -- | Requests, each request will have a separate response. There can be a maximum of 5 requests. All requests should have the same @dateRanges@, @viewId@, @segments@, @samplingLevel@, and @cohortGroup@.
    reportRequests :: (Core.Maybe [ReportRequest]),
    -- | Enables </analytics/devguides/reporting/core/v4/limits-quotas#analytics_reporting_api_v4 resource based quotas>, (defaults to @False@). If this field is set to @True@ the per view (profile) quotas are governed by the computational cost of the request. Note that using cost based quotas will higher enable sampling rates. (10 Million for @SMALL@, 100M for @LARGE@. See the </analytics/devguides/reporting/core/v4/limits-quotas#analytics_reporting_api_v4 limits and quotas documentation> for details.
    useResourceQuotas :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetReportsRequest' with the minimum fields required to make a request.
newGetReportsRequest ::
  GetReportsRequest
newGetReportsRequest =
  GetReportsRequest
    { reportRequests = Core.Nothing,
      useResourceQuotas = Core.Nothing
    }

instance Core.FromJSON GetReportsRequest where
  parseJSON =
    Core.withObject
      "GetReportsRequest"
      ( \o ->
          GetReportsRequest
            Core.<$> (o Core..:? "reportRequests")
            Core.<*> (o Core..:? "useResourceQuotas")
      )

instance Core.ToJSON GetReportsRequest where
  toJSON GetReportsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("reportRequests" Core..=) Core.<$> reportRequests,
            ("useResourceQuotas" Core..=) Core.<$> useResourceQuotas
          ]
      )

-- | The main response class which holds the reports from the Reporting API @batchGet@ call.
--
-- /See:/ 'newGetReportsResponse' smart constructor.
data GetReportsResponse = GetReportsResponse
  { -- | The amount of resource quota tokens deducted to execute the query. Includes all responses.
    queryCost :: (Core.Maybe Core.Int32),
    -- | Responses corresponding to each of the request.
    reports :: (Core.Maybe [Report]),
    -- | The amount of resource quota remaining for the property.
    resourceQuotasRemaining :: (Core.Maybe ResourceQuotasRemaining)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetReportsResponse' with the minimum fields required to make a request.
newGetReportsResponse ::
  GetReportsResponse
newGetReportsResponse =
  GetReportsResponse
    { queryCost = Core.Nothing,
      reports = Core.Nothing,
      resourceQuotasRemaining = Core.Nothing
    }

instance Core.FromJSON GetReportsResponse where
  parseJSON =
    Core.withObject
      "GetReportsResponse"
      ( \o ->
          GetReportsResponse
            Core.<$> (o Core..:? "queryCost")
            Core.<*> (o Core..:? "reports")
            Core.<*> (o Core..:? "resourceQuotasRemaining")
      )

instance Core.ToJSON GetReportsResponse where
  toJSON GetReportsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("queryCost" Core..=) Core.<$> queryCost,
            ("reports" Core..=) Core.<$> reports,
            ("resourceQuotasRemaining" Core..=)
              Core.<$> resourceQuotasRemaining
          ]
      )

-- | Represents all the details pertaining to a goal.
--
-- /See:/ 'newGoalData' smart constructor.
data GoalData = GoalData
  { -- | URL of the page where this goal was completed.
    goalCompletionLocation :: (Core.Maybe Core.Text),
    -- | Total number of goal completions in this activity.
    goalCompletions :: (Core.Maybe Core.Int64),
    -- | This identifies the goal as configured for the profile.
    goalIndex :: (Core.Maybe Core.Int32),
    -- | Name of the goal.
    goalName :: (Core.Maybe Core.Text),
    -- | URL of the page one step prior to the goal completion.
    goalPreviousStep1 :: (Core.Maybe Core.Text),
    -- | URL of the page two steps prior to the goal completion.
    goalPreviousStep2 :: (Core.Maybe Core.Text),
    -- | URL of the page three steps prior to the goal completion.
    goalPreviousStep3 :: (Core.Maybe Core.Text),
    -- | Value in this goal.
    goalValue :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoalData' with the minimum fields required to make a request.
newGoalData ::
  GoalData
newGoalData =
  GoalData
    { goalCompletionLocation = Core.Nothing,
      goalCompletions = Core.Nothing,
      goalIndex = Core.Nothing,
      goalName = Core.Nothing,
      goalPreviousStep1 = Core.Nothing,
      goalPreviousStep2 = Core.Nothing,
      goalPreviousStep3 = Core.Nothing,
      goalValue = Core.Nothing
    }

instance Core.FromJSON GoalData where
  parseJSON =
    Core.withObject
      "GoalData"
      ( \o ->
          GoalData
            Core.<$> (o Core..:? "goalCompletionLocation")
            Core.<*> (o Core..:? "goalCompletions" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "goalIndex")
            Core.<*> (o Core..:? "goalName")
            Core.<*> (o Core..:? "goalPreviousStep1")
            Core.<*> (o Core..:? "goalPreviousStep2")
            Core.<*> (o Core..:? "goalPreviousStep3")
            Core.<*> (o Core..:? "goalValue")
      )

instance Core.ToJSON GoalData where
  toJSON GoalData {..} =
    Core.object
      ( Core.catMaybes
          [ ("goalCompletionLocation" Core..=)
              Core.<$> goalCompletionLocation,
            ("goalCompletions" Core..=)
              Core.. Core.AsText
              Core.<$> goalCompletions,
            ("goalIndex" Core..=) Core.<$> goalIndex,
            ("goalName" Core..=) Core.<$> goalName,
            ("goalPreviousStep1" Core..=) Core.<$> goalPreviousStep1,
            ("goalPreviousStep2" Core..=) Core.<$> goalPreviousStep2,
            ("goalPreviousStep3" Core..=) Core.<$> goalPreviousStep3,
            ("goalValue" Core..=) Core.<$> goalValue
          ]
      )

-- | Represents a set of goals that were reached in an activity.
--
-- /See:/ 'newGoalSetData' smart constructor.
newtype GoalSetData = GoalSetData
  { -- | All the goals that were reached in the current activity.
    goals :: (Core.Maybe [GoalData])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoalSetData' with the minimum fields required to make a request.
newGoalSetData ::
  GoalSetData
newGoalSetData = GoalSetData {goals = Core.Nothing}

instance Core.FromJSON GoalSetData where
  parseJSON =
    Core.withObject
      "GoalSetData"
      (\o -> GoalSetData Core.<$> (o Core..:? "goals"))

instance Core.ToJSON GoalSetData where
  toJSON GoalSetData {..} =
    Core.object (Core.catMaybes [("goals" Core..=) Core.<$> goals])

-- | <https://support.google.com/analytics/answer/1033861 Metrics> are the quantitative measurements. For example, the metric @ga:users@ indicates the total number of users for the requested time period.
--
-- /See:/ 'newMetric' smart constructor.
data Metric = Metric
  { -- | An alias for the metric expression is an alternate name for the expression. The alias can be used for filtering and sorting. This field is optional and is useful if the expression is not a single metric but a complex expression which cannot be used in filtering and sorting. The alias is also used in the response column header.
    alias :: (Core.Maybe Core.Text),
    -- | A metric expression in the request. An expression is constructed from one or more metrics and numbers. Accepted operators include: Plus (+), Minus (-), Negation (Unary -), Divided by (\/), Multiplied by (*), Parenthesis, Positive cardinal numbers (0-9), can include decimals and is limited to 1024 characters. Example @ga:totalRefunds\/ga:users@, in most cases the metric expression is just a single metric name like @ga:users@. Adding mixed @MetricType@ (E.g., @CURRENCY@ + @PERCENTAGE@) metrics will result in unexpected results.
    expression :: (Core.Maybe Core.Text),
    -- | Specifies how the metric expression should be formatted, for example @INTEGER@.
    formattingType :: (Core.Maybe Metric_FormattingType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Metric' with the minimum fields required to make a request.
newMetric ::
  Metric
newMetric =
  Metric
    { alias = Core.Nothing,
      expression = Core.Nothing,
      formattingType = Core.Nothing
    }

instance Core.FromJSON Metric where
  parseJSON =
    Core.withObject
      "Metric"
      ( \o ->
          Metric
            Core.<$> (o Core..:? "alias")
            Core.<*> (o Core..:? "expression")
            Core.<*> (o Core..:? "formattingType")
      )

instance Core.ToJSON Metric where
  toJSON Metric {..} =
    Core.object
      ( Core.catMaybes
          [ ("alias" Core..=) Core.<$> alias,
            ("expression" Core..=) Core.<$> expression,
            ("formattingType" Core..=) Core.<$> formattingType
          ]
      )

-- | MetricFilter specifies the filter on a metric.
--
-- /See:/ 'newMetricFilter' smart constructor.
data MetricFilter = MetricFilter
  { -- | The value to compare against.
    comparisonValue :: (Core.Maybe Core.Text),
    -- | The metric that will be filtered on. A metricFilter must contain a metric name. A metric name can be an alias earlier defined as a metric or it can also be a metric expression.
    metricName :: (Core.Maybe Core.Text),
    -- | Logical @NOT@ operator. If this boolean is set to true, then the matching metric values will be excluded in the report. The default is false.
    not :: (Core.Maybe Core.Bool),
    -- | Is the metric @EQUAL@, @LESS_THAN@ or @GREATER_THAN@ the comparisonValue, the default is @EQUAL@. If the operator is @IS_MISSING@, checks if the metric is missing and would ignore the comparisonValue.
    operator :: (Core.Maybe MetricFilter_Operator)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MetricFilter' with the minimum fields required to make a request.
newMetricFilter ::
  MetricFilter
newMetricFilter =
  MetricFilter
    { comparisonValue = Core.Nothing,
      metricName = Core.Nothing,
      not = Core.Nothing,
      operator = Core.Nothing
    }

instance Core.FromJSON MetricFilter where
  parseJSON =
    Core.withObject
      "MetricFilter"
      ( \o ->
          MetricFilter
            Core.<$> (o Core..:? "comparisonValue")
            Core.<*> (o Core..:? "metricName")
            Core.<*> (o Core..:? "not")
            Core.<*> (o Core..:? "operator")
      )

instance Core.ToJSON MetricFilter where
  toJSON MetricFilter {..} =
    Core.object
      ( Core.catMaybes
          [ ("comparisonValue" Core..=) Core.<$> comparisonValue,
            ("metricName" Core..=) Core.<$> metricName,
            ("not" Core..=) Core.<$> not,
            ("operator" Core..=) Core.<$> operator
          ]
      )

-- | Represents a group of metric filters. Set the operator value to specify how the filters are logically combined.
--
-- /See:/ 'newMetricFilterClause' smart constructor.
data MetricFilterClause = MetricFilterClause
  { -- | The repeated set of filters. They are logically combined based on the operator specified.
    filters :: (Core.Maybe [MetricFilter]),
    -- | The operator for combining multiple metric filters. If unspecified, it is treated as an @OR@.
    operator :: (Core.Maybe MetricFilterClause_Operator)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MetricFilterClause' with the minimum fields required to make a request.
newMetricFilterClause ::
  MetricFilterClause
newMetricFilterClause =
  MetricFilterClause
    { filters = Core.Nothing,
      operator = Core.Nothing
    }

instance Core.FromJSON MetricFilterClause where
  parseJSON =
    Core.withObject
      "MetricFilterClause"
      ( \o ->
          MetricFilterClause
            Core.<$> (o Core..:? "filters")
            Core.<*> (o Core..:? "operator")
      )

instance Core.ToJSON MetricFilterClause where
  toJSON MetricFilterClause {..} =
    Core.object
      ( Core.catMaybes
          [ ("filters" Core..=) Core.<$> filters,
            ("operator" Core..=) Core.<$> operator
          ]
      )

-- | The headers for the metrics.
--
-- /See:/ 'newMetricHeader' smart constructor.
data MetricHeader = MetricHeader
  { -- | Headers for the metrics in the response.
    metricHeaderEntries :: (Core.Maybe [MetricHeaderEntry]),
    -- | Headers for the pivots in the response.
    pivotHeaders :: (Core.Maybe [PivotHeader])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MetricHeader' with the minimum fields required to make a request.
newMetricHeader ::
  MetricHeader
newMetricHeader =
  MetricHeader
    { metricHeaderEntries = Core.Nothing,
      pivotHeaders = Core.Nothing
    }

instance Core.FromJSON MetricHeader where
  parseJSON =
    Core.withObject
      "MetricHeader"
      ( \o ->
          MetricHeader
            Core.<$> (o Core..:? "metricHeaderEntries")
            Core.<*> (o Core..:? "pivotHeaders")
      )

instance Core.ToJSON MetricHeader where
  toJSON MetricHeader {..} =
    Core.object
      ( Core.catMaybes
          [ ("metricHeaderEntries" Core..=) Core.<$> metricHeaderEntries,
            ("pivotHeaders" Core..=) Core.<$> pivotHeaders
          ]
      )

-- | Header for the metrics.
--
-- /See:/ 'newMetricHeaderEntry' smart constructor.
data MetricHeaderEntry = MetricHeaderEntry
  { -- | The name of the header.
    name :: (Core.Maybe Core.Text),
    -- | The type of the metric, for example @INTEGER@.
    type' :: (Core.Maybe MetricHeaderEntry_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MetricHeaderEntry' with the minimum fields required to make a request.
newMetricHeaderEntry ::
  MetricHeaderEntry
newMetricHeaderEntry =
  MetricHeaderEntry {name = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON MetricHeaderEntry where
  parseJSON =
    Core.withObject
      "MetricHeaderEntry"
      ( \o ->
          MetricHeaderEntry
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON MetricHeaderEntry where
  toJSON MetricHeaderEntry {..} =
    Core.object
      ( Core.catMaybes
          [("name" Core..=) Core.<$> name, ("type" Core..=) Core.<$> type']
      )

-- | A list of segment filters in the @OR@ group are combined with the logical OR operator.
--
-- /See:/ 'newOrFiltersForSegment' smart constructor.
newtype OrFiltersForSegment = OrFiltersForSegment
  { -- | List of segment filters to be combined with a @OR@ operator.
    segmentFilterClauses :: (Core.Maybe [SegmentFilterClause])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrFiltersForSegment' with the minimum fields required to make a request.
newOrFiltersForSegment ::
  OrFiltersForSegment
newOrFiltersForSegment =
  OrFiltersForSegment {segmentFilterClauses = Core.Nothing}

instance Core.FromJSON OrFiltersForSegment where
  parseJSON =
    Core.withObject
      "OrFiltersForSegment"
      ( \o ->
          OrFiltersForSegment Core.<$> (o Core..:? "segmentFilterClauses")
      )

instance Core.ToJSON OrFiltersForSegment where
  toJSON OrFiltersForSegment {..} =
    Core.object
      ( Core.catMaybes
          [("segmentFilterClauses" Core..=) Core.<$> segmentFilterClauses]
      )

-- | Specifies the sorting options.
--
-- /See:/ 'newOrderBy' smart constructor.
data OrderBy = OrderBy
  { -- | The field which to sort by. The default sort order is ascending. Example: @ga:browser@. Note, that you can only specify one field for sort here. For example, @ga:browser, ga:city@ is not valid.
    fieldName :: (Core.Maybe Core.Text),
    -- | The order type. The default orderType is @VALUE@.
    orderType :: (Core.Maybe OrderBy_OrderType),
    -- | The sorting order for the field.
    sortOrder :: (Core.Maybe OrderBy_SortOrder)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderBy' with the minimum fields required to make a request.
newOrderBy ::
  OrderBy
newOrderBy =
  OrderBy
    { fieldName = Core.Nothing,
      orderType = Core.Nothing,
      sortOrder = Core.Nothing
    }

instance Core.FromJSON OrderBy where
  parseJSON =
    Core.withObject
      "OrderBy"
      ( \o ->
          OrderBy
            Core.<$> (o Core..:? "fieldName")
            Core.<*> (o Core..:? "orderType")
            Core.<*> (o Core..:? "sortOrder")
      )

instance Core.ToJSON OrderBy where
  toJSON OrderBy {..} =
    Core.object
      ( Core.catMaybes
          [ ("fieldName" Core..=) Core.<$> fieldName,
            ("orderType" Core..=) Core.<$> orderType,
            ("sortOrder" Core..=) Core.<$> sortOrder
          ]
      )

-- | Represents details collected when the visitor views a page.
--
-- /See:/ 'newPageviewData' smart constructor.
data PageviewData = PageviewData
  { -- | The URL of the page that the visitor viewed.
    pagePath :: (Core.Maybe Core.Text),
    -- | The title of the page that the visitor viewed.
    pageTitle :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PageviewData' with the minimum fields required to make a request.
newPageviewData ::
  PageviewData
newPageviewData =
  PageviewData {pagePath = Core.Nothing, pageTitle = Core.Nothing}

instance Core.FromJSON PageviewData where
  parseJSON =
    Core.withObject
      "PageviewData"
      ( \o ->
          PageviewData
            Core.<$> (o Core..:? "pagePath")
            Core.<*> (o Core..:? "pageTitle")
      )

instance Core.ToJSON PageviewData where
  toJSON PageviewData {..} =
    Core.object
      ( Core.catMaybes
          [ ("pagePath" Core..=) Core.<$> pagePath,
            ("pageTitle" Core..=) Core.<$> pageTitle
          ]
      )

-- | The Pivot describes the pivot section in the request. The Pivot helps rearrange the information in the table for certain reports by pivoting your data on a second dimension.
--
-- /See:/ 'newPivot' smart constructor.
data Pivot = Pivot
  { -- | DimensionFilterClauses are logically combined with an @AND@ operator: only data that is included by all these DimensionFilterClauses contributes to the values in this pivot region. Dimension filters can be used to restrict the columns shown in the pivot region. For example if you have @ga:browser@ as the requested dimension in the pivot region, and you specify key filters to restrict @ga:browser@ to only \"IE\" or \"Firefox\", then only those two browsers would show up as columns.
    dimensionFilterClauses :: (Core.Maybe [DimensionFilterClause]),
    -- | A list of dimensions to show as pivot columns. A Pivot can have a maximum of 4 dimensions. Pivot dimensions are part of the restriction on the total number of dimensions allowed in the request.
    dimensions :: (Core.Maybe [Dimension]),
    -- | Specifies the maximum number of groups to return. The default value is 10, also the maximum value is 1,000.
    maxGroupCount :: (Core.Maybe Core.Int32),
    -- | The pivot metrics. Pivot metrics are part of the restriction on total number of metrics allowed in the request.
    metrics :: (Core.Maybe [Metric]),
    -- | If k metrics were requested, then the response will contain some data-dependent multiple of k columns in the report. E.g., if you pivoted on the dimension @ga:browser@ then you\'d get k columns for \"Firefox\", k columns for \"IE\", k columns for \"Chrome\", etc. The ordering of the groups of columns is determined by descending order of \"total\" for the first of the k values. Ties are broken by lexicographic ordering of the first pivot dimension, then lexicographic ordering of the second pivot dimension, and so on. E.g., if the totals for the first value for Firefox, IE, and Chrome were 8, 2, 8, respectively, the order of columns would be Chrome, Firefox, IE. The following let you choose which of the groups of k columns are included in the response.
    startGroup :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Pivot' with the minimum fields required to make a request.
newPivot ::
  Pivot
newPivot =
  Pivot
    { dimensionFilterClauses = Core.Nothing,
      dimensions = Core.Nothing,
      maxGroupCount = Core.Nothing,
      metrics = Core.Nothing,
      startGroup = Core.Nothing
    }

instance Core.FromJSON Pivot where
  parseJSON =
    Core.withObject
      "Pivot"
      ( \o ->
          Pivot
            Core.<$> (o Core..:? "dimensionFilterClauses")
            Core.<*> (o Core..:? "dimensions")
            Core.<*> (o Core..:? "maxGroupCount")
            Core.<*> (o Core..:? "metrics")
            Core.<*> (o Core..:? "startGroup")
      )

instance Core.ToJSON Pivot where
  toJSON Pivot {..} =
    Core.object
      ( Core.catMaybes
          [ ("dimensionFilterClauses" Core..=)
              Core.<$> dimensionFilterClauses,
            ("dimensions" Core..=) Core.<$> dimensions,
            ("maxGroupCount" Core..=) Core.<$> maxGroupCount,
            ("metrics" Core..=) Core.<$> metrics,
            ("startGroup" Core..=) Core.<$> startGroup
          ]
      )

-- | The headers for each of the pivot sections defined in the request.
--
-- /See:/ 'newPivotHeader' smart constructor.
data PivotHeader = PivotHeader
  { -- | A single pivot section header.
    pivotHeaderEntries :: (Core.Maybe [PivotHeaderEntry]),
    -- | The total number of groups for this pivot.
    totalPivotGroupsCount :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PivotHeader' with the minimum fields required to make a request.
newPivotHeader ::
  PivotHeader
newPivotHeader =
  PivotHeader
    { pivotHeaderEntries = Core.Nothing,
      totalPivotGroupsCount = Core.Nothing
    }

instance Core.FromJSON PivotHeader where
  parseJSON =
    Core.withObject
      "PivotHeader"
      ( \o ->
          PivotHeader
            Core.<$> (o Core..:? "pivotHeaderEntries")
            Core.<*> (o Core..:? "totalPivotGroupsCount")
      )

instance Core.ToJSON PivotHeader where
  toJSON PivotHeader {..} =
    Core.object
      ( Core.catMaybes
          [ ("pivotHeaderEntries" Core..=) Core.<$> pivotHeaderEntries,
            ("totalPivotGroupsCount" Core..=) Core.<$> totalPivotGroupsCount
          ]
      )

-- | The headers for the each of the metric column corresponding to the metrics requested in the pivots section of the response.
--
-- /See:/ 'newPivotHeaderEntry' smart constructor.
data PivotHeaderEntry = PivotHeaderEntry
  { -- | The name of the dimensions in the pivot response.
    dimensionNames :: (Core.Maybe [Core.Text]),
    -- | The values for the dimensions in the pivot.
    dimensionValues :: (Core.Maybe [Core.Text]),
    -- | The metric header for the metric in the pivot.
    metric :: (Core.Maybe MetricHeaderEntry)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PivotHeaderEntry' with the minimum fields required to make a request.
newPivotHeaderEntry ::
  PivotHeaderEntry
newPivotHeaderEntry =
  PivotHeaderEntry
    { dimensionNames = Core.Nothing,
      dimensionValues = Core.Nothing,
      metric = Core.Nothing
    }

instance Core.FromJSON PivotHeaderEntry where
  parseJSON =
    Core.withObject
      "PivotHeaderEntry"
      ( \o ->
          PivotHeaderEntry
            Core.<$> (o Core..:? "dimensionNames")
            Core.<*> (o Core..:? "dimensionValues")
            Core.<*> (o Core..:? "metric")
      )

instance Core.ToJSON PivotHeaderEntry where
  toJSON PivotHeaderEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("dimensionNames" Core..=) Core.<$> dimensionNames,
            ("dimensionValues" Core..=) Core.<$> dimensionValues,
            ("metric" Core..=) Core.<$> metric
          ]
      )

-- | The metric values in the pivot region.
--
-- /See:/ 'newPivotValueRegion' smart constructor.
newtype PivotValueRegion = PivotValueRegion
  { -- | The values of the metrics in each of the pivot regions.
    values :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PivotValueRegion' with the minimum fields required to make a request.
newPivotValueRegion ::
  PivotValueRegion
newPivotValueRegion = PivotValueRegion {values = Core.Nothing}

instance Core.FromJSON PivotValueRegion where
  parseJSON =
    Core.withObject
      "PivotValueRegion"
      (\o -> PivotValueRegion Core.<$> (o Core..:? "values"))

instance Core.ToJSON PivotValueRegion where
  toJSON PivotValueRegion {..} =
    Core.object (Core.catMaybes [("values" Core..=) Core.<$> values])

-- | Details of the products in an e-commerce transaction.
--
-- /See:/ 'newProductData' smart constructor.
data ProductData = ProductData
  { -- | The total revenue from purchased product items.
    itemRevenue :: (Core.Maybe Core.Double),
    -- | The product name, supplied by the e-commerce tracking application, for the purchased items.
    productName :: (Core.Maybe Core.Text),
    -- | Total number of this product units in the transaction.
    productQuantity :: (Core.Maybe Core.Int64),
    -- | Unique code that represents the product.
    productSku :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductData' with the minimum fields required to make a request.
newProductData ::
  ProductData
newProductData =
  ProductData
    { itemRevenue = Core.Nothing,
      productName = Core.Nothing,
      productQuantity = Core.Nothing,
      productSku = Core.Nothing
    }

instance Core.FromJSON ProductData where
  parseJSON =
    Core.withObject
      "ProductData"
      ( \o ->
          ProductData
            Core.<$> (o Core..:? "itemRevenue")
            Core.<*> (o Core..:? "productName")
            Core.<*> (o Core..:? "productQuantity" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "productSku")
      )

instance Core.ToJSON ProductData where
  toJSON ProductData {..} =
    Core.object
      ( Core.catMaybes
          [ ("itemRevenue" Core..=) Core.<$> itemRevenue,
            ("productName" Core..=) Core.<$> productName,
            ("productQuantity" Core..=)
              Core.. Core.AsText
              Core.<$> productQuantity,
            ("productSku" Core..=) Core.<$> productSku
          ]
      )

-- | The data response corresponding to the request.
--
-- /See:/ 'newReport' smart constructor.
data Report = Report
  { -- | The column headers.
    columnHeader :: (Core.Maybe ColumnHeader),
    -- | Response data.
    data' :: (Core.Maybe ReportData),
    -- | Page token to retrieve the next page of results in the list.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Report' with the minimum fields required to make a request.
newReport ::
  Report
newReport =
  Report
    { columnHeader = Core.Nothing,
      data' = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON Report where
  parseJSON =
    Core.withObject
      "Report"
      ( \o ->
          Report
            Core.<$> (o Core..:? "columnHeader")
            Core.<*> (o Core..:? "data")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON Report where
  toJSON Report {..} =
    Core.object
      ( Core.catMaybes
          [ ("columnHeader" Core..=) Core.<$> columnHeader,
            ("data" Core..=) Core.<$> data',
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | The data part of the report.
--
-- /See:/ 'newReportData' smart constructor.
data ReportData = ReportData
  { -- | The last time the data in the report was refreshed. All the hits received before this timestamp are included in the calculation of the report.
    dataLastRefreshed :: (Core.Maybe Core.DateTime),
    -- | If empty reason is specified, the report is empty for this reason.
    emptyReason :: (Core.Maybe Core.Text),
    -- | Indicates if response to this request is golden or not. Data is golden when the exact same request will not produce any new results if asked at a later point in time.
    isDataGolden :: (Core.Maybe Core.Bool),
    -- | Minimum and maximum values seen over all matching rows. These are both empty when @hideValueRanges@ in the request is false, or when rowCount is zero.
    maximums :: (Core.Maybe [DateRangeValues]),
    -- | Minimum and maximum values seen over all matching rows. These are both empty when @hideValueRanges@ in the request is false, or when rowCount is zero.
    minimums :: (Core.Maybe [DateRangeValues]),
    -- | Total number of matching rows for this query.
    rowCount :: (Core.Maybe Core.Int32),
    -- | There\'s one ReportRow for every unique combination of dimensions.
    rows :: (Core.Maybe [ReportRow]),
    -- | If the results are <https://support.google.com/analytics/answer/2637192 sampled>, this returns the total number of samples read, one entry per date range. If the results are not sampled this field will not be defined. See </analytics/devguides/reporting/core/v4/basics#sampling developer guide> for details.
    samplesReadCounts :: (Core.Maybe [Core.Int64]),
    -- | If the results are <https://support.google.com/analytics/answer/2637192 sampled>, this returns the total number of samples present, one entry per date range. If the results are not sampled this field will not be defined. See </analytics/devguides/reporting/core/v4/basics#sampling developer guide> for details.
    samplingSpaceSizes :: (Core.Maybe [Core.Int64]),
    -- | For each requested date range, for the set of all rows that match the query, every requested value format gets a total. The total for a value format is computed by first totaling the metrics mentioned in the value format and then evaluating the value format as a scalar expression. E.g., The \"totals\" for @3 \/ (ga:sessions + 2)@ we compute @3 \/ ((sum of all relevant ga:sessions) + 2)@. Totals are computed before pagination.
    totals :: (Core.Maybe [DateRangeValues])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReportData' with the minimum fields required to make a request.
newReportData ::
  ReportData
newReportData =
  ReportData
    { dataLastRefreshed = Core.Nothing,
      emptyReason = Core.Nothing,
      isDataGolden = Core.Nothing,
      maximums = Core.Nothing,
      minimums = Core.Nothing,
      rowCount = Core.Nothing,
      rows = Core.Nothing,
      samplesReadCounts = Core.Nothing,
      samplingSpaceSizes = Core.Nothing,
      totals = Core.Nothing
    }

instance Core.FromJSON ReportData where
  parseJSON =
    Core.withObject
      "ReportData"
      ( \o ->
          ReportData
            Core.<$> (o Core..:? "dataLastRefreshed")
            Core.<*> (o Core..:? "emptyReason")
            Core.<*> (o Core..:? "isDataGolden")
            Core.<*> (o Core..:? "maximums")
            Core.<*> (o Core..:? "minimums")
            Core.<*> (o Core..:? "rowCount")
            Core.<*> (o Core..:? "rows")
            Core.<*> ( o
                         Core..:? "samplesReadCounts"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
            Core.<*> ( o
                         Core..:? "samplingSpaceSizes"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
            Core.<*> (o Core..:? "totals")
      )

instance Core.ToJSON ReportData where
  toJSON ReportData {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataLastRefreshed" Core..=) Core.<$> dataLastRefreshed,
            ("emptyReason" Core..=) Core.<$> emptyReason,
            ("isDataGolden" Core..=) Core.<$> isDataGolden,
            ("maximums" Core..=) Core.<$> maximums,
            ("minimums" Core..=) Core.<$> minimums,
            ("rowCount" Core..=) Core.<$> rowCount,
            ("rows" Core..=) Core.<$> rows,
            ("samplesReadCounts" Core..=)
              Core.. Core.fmap Core.AsText
              Core.<$> samplesReadCounts,
            ("samplingSpaceSizes" Core..=)
              Core.. Core.fmap Core.AsText
              Core.<$> samplingSpaceSizes,
            ("totals" Core..=) Core.<$> totals
          ]
      )

-- | The main request class which specifies the Reporting API request.
--
-- /See:/ 'newReportRequest' smart constructor.
data ReportRequest = ReportRequest
  { -- | Cohort group associated with this request. If there is a cohort group in the request the @ga:cohort@ dimension must be present. Every <#ReportRequest ReportRequest> within a @batchGet@ method must contain the same @cohortGroup@ definition.
    cohortGroup :: (Core.Maybe CohortGroup),
    -- | Date ranges in the request. The request can have a maximum of 2 date ranges. The response will contain a set of metric values for each combination of the dimensions for each date range in the request. So, if there are two date ranges, there will be two set of metric values, one for the original date range and one for the second date range. The @reportRequest.dateRanges@ field should not be specified for cohorts or Lifetime value requests. If a date range is not provided, the default date range is (startDate: current date - 7 days, endDate: current date - 1 day). Every <#ReportRequest ReportRequest> within a @batchGet@ method must contain the same @dateRanges@ definition.
    dateRanges :: (Core.Maybe [DateRange]),
    -- | The dimension filter clauses for filtering Dimension Values. They are logically combined with the @AND@ operator. Note that filtering occurs before any dimensions are aggregated, so that the returned metrics represent the total for only the relevant dimensions.
    dimensionFilterClauses :: (Core.Maybe [DimensionFilterClause]),
    -- | The dimensions requested. Requests can have a total of 9 dimensions.
    dimensions :: (Core.Maybe [Dimension]),
    -- | Dimension or metric filters that restrict the data returned for your request. To use the @filtersExpression@, supply a dimension or metric on which to filter, followed by the filter expression. For example, the following expression selects @ga:browser@ dimension which starts with Firefox; @ga:browser=~^Firefox@. For more information on dimensions and metric filters, see <https://developers.google.com/analytics/devguides/reporting/core/v3/reference#filters Filters reference>.
    filtersExpression :: (Core.Maybe Core.Text),
    -- | If set to true, hides the total of all metrics for all the matching rows, for every date range. The default false and will return the totals.
    hideTotals :: (Core.Maybe Core.Bool),
    -- | If set to true, hides the minimum and maximum across all matching rows. The default is false and the value ranges are returned.
    hideValueRanges :: (Core.Maybe Core.Bool),
    -- | If set to false, the response does not include rows if all the retrieved metrics are equal to zero. The default is false which will exclude these rows.
    includeEmptyRows :: (Core.Maybe Core.Bool),
    -- | The metric filter clauses. They are logically combined with the @AND@ operator. Metric filters look at only the first date range and not the comparing date range. Note that filtering on metrics occurs after the metrics are aggregated.
    metricFilterClauses :: (Core.Maybe [MetricFilterClause]),
    -- | The metrics requested. Requests must specify at least one metric. Requests can have a total of 10 metrics.
    metrics :: (Core.Maybe [Metric]),
    -- | Sort order on output rows. To compare two rows, the elements of the following are applied in order until a difference is found. All date ranges in the output get the same row order.
    orderBys :: (Core.Maybe [OrderBy]),
    -- | Page size is for paging and specifies the maximum number of returned rows. Page size should be >= 0. A query returns the default of 1,000 rows. The Analytics Core Reporting API returns a maximum of 100,000 rows per request, no matter how many you ask for. It can also return fewer rows than requested, if there aren\'t as many dimension segments as you expect. For instance, there are fewer than 300 possible values for @ga:country@, so when segmenting only by country, you can\'t get more than 300 rows, even if you set @pageSize@ to a higher value.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A continuation token to get the next page of the results. Adding this to the request will return the rows after the pageToken. The pageToken should be the value returned in the nextPageToken parameter in the response to the GetReports request.
    pageToken :: (Core.Maybe Core.Text),
    -- | The pivot definitions. Requests can have a maximum of 2 pivots.
    pivots :: (Core.Maybe [Pivot]),
    -- | The desired report <https://support.google.com/analytics/answer/2637192 sample> size. If the the @samplingLevel@ field is unspecified the @DEFAULT@ sampling level is used. Every <#ReportRequest ReportRequest> within a @batchGet@ method must contain the same @samplingLevel@ definition. See </analytics/devguides/reporting/core/v4/basics#sampling developer guide> for details.
    samplingLevel :: (Core.Maybe ReportRequest_SamplingLevel),
    -- | Segment the data returned for the request. A segment definition helps look at a subset of the segment request. A request can contain up to four segments. Every <#ReportRequest ReportRequest> within a @batchGet@ method must contain the same @segments@ definition. Requests with segments must have the @ga:segment@ dimension.
    segments :: (Core.Maybe [Segment]),
    -- | The Analytics <https://support.google.com/analytics/answer/1009618 view ID> from which to retrieve data. Every <#ReportRequest ReportRequest> within a @batchGet@ method must contain the same @viewId@.
    viewId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReportRequest' with the minimum fields required to make a request.
newReportRequest ::
  ReportRequest
newReportRequest =
  ReportRequest
    { cohortGroup = Core.Nothing,
      dateRanges = Core.Nothing,
      dimensionFilterClauses = Core.Nothing,
      dimensions = Core.Nothing,
      filtersExpression = Core.Nothing,
      hideTotals = Core.Nothing,
      hideValueRanges = Core.Nothing,
      includeEmptyRows = Core.Nothing,
      metricFilterClauses = Core.Nothing,
      metrics = Core.Nothing,
      orderBys = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      pivots = Core.Nothing,
      samplingLevel = Core.Nothing,
      segments = Core.Nothing,
      viewId = Core.Nothing
    }

instance Core.FromJSON ReportRequest where
  parseJSON =
    Core.withObject
      "ReportRequest"
      ( \o ->
          ReportRequest
            Core.<$> (o Core..:? "cohortGroup")
            Core.<*> (o Core..:? "dateRanges")
            Core.<*> (o Core..:? "dimensionFilterClauses")
            Core.<*> (o Core..:? "dimensions")
            Core.<*> (o Core..:? "filtersExpression")
            Core.<*> (o Core..:? "hideTotals")
            Core.<*> (o Core..:? "hideValueRanges")
            Core.<*> (o Core..:? "includeEmptyRows")
            Core.<*> (o Core..:? "metricFilterClauses")
            Core.<*> (o Core..:? "metrics")
            Core.<*> (o Core..:? "orderBys")
            Core.<*> (o Core..:? "pageSize")
            Core.<*> (o Core..:? "pageToken")
            Core.<*> (o Core..:? "pivots")
            Core.<*> (o Core..:? "samplingLevel")
            Core.<*> (o Core..:? "segments")
            Core.<*> (o Core..:? "viewId")
      )

instance Core.ToJSON ReportRequest where
  toJSON ReportRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("cohortGroup" Core..=) Core.<$> cohortGroup,
            ("dateRanges" Core..=) Core.<$> dateRanges,
            ("dimensionFilterClauses" Core..=) Core.<$> dimensionFilterClauses,
            ("dimensions" Core..=) Core.<$> dimensions,
            ("filtersExpression" Core..=) Core.<$> filtersExpression,
            ("hideTotals" Core..=) Core.<$> hideTotals,
            ("hideValueRanges" Core..=) Core.<$> hideValueRanges,
            ("includeEmptyRows" Core..=) Core.<$> includeEmptyRows,
            ("metricFilterClauses" Core..=) Core.<$> metricFilterClauses,
            ("metrics" Core..=) Core.<$> metrics,
            ("orderBys" Core..=) Core.<$> orderBys,
            ("pageSize" Core..=) Core.<$> pageSize,
            ("pageToken" Core..=) Core.<$> pageToken,
            ("pivots" Core..=) Core.<$> pivots,
            ("samplingLevel" Core..=) Core.<$> samplingLevel,
            ("segments" Core..=) Core.<$> segments,
            ("viewId" Core..=) Core.<$> viewId
          ]
      )

-- | A row in the report.
--
-- /See:/ 'newReportRow' smart constructor.
data ReportRow = ReportRow
  { -- | List of requested dimensions.
    dimensions :: (Core.Maybe [Core.Text]),
    -- | List of metrics for each requested DateRange.
    metrics :: (Core.Maybe [DateRangeValues])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReportRow' with the minimum fields required to make a request.
newReportRow ::
  ReportRow
newReportRow =
  ReportRow {dimensions = Core.Nothing, metrics = Core.Nothing}

instance Core.FromJSON ReportRow where
  parseJSON =
    Core.withObject
      "ReportRow"
      ( \o ->
          ReportRow
            Core.<$> (o Core..:? "dimensions")
            Core.<*> (o Core..:? "metrics")
      )

instance Core.ToJSON ReportRow where
  toJSON ReportRow {..} =
    Core.object
      ( Core.catMaybes
          [ ("dimensions" Core..=) Core.<$> dimensions,
            ("metrics" Core..=) Core.<$> metrics
          ]
      )

-- | The resource quota tokens remaining for the property after the request is completed.
--
-- /See:/ 'newResourceQuotasRemaining' smart constructor.
data ResourceQuotasRemaining = ResourceQuotasRemaining
  { -- | Daily resource quota remaining remaining.
    dailyQuotaTokensRemaining :: (Core.Maybe Core.Int32),
    -- | Hourly resource quota tokens remaining.
    hourlyQuotaTokensRemaining :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResourceQuotasRemaining' with the minimum fields required to make a request.
newResourceQuotasRemaining ::
  ResourceQuotasRemaining
newResourceQuotasRemaining =
  ResourceQuotasRemaining
    { dailyQuotaTokensRemaining = Core.Nothing,
      hourlyQuotaTokensRemaining = Core.Nothing
    }

instance Core.FromJSON ResourceQuotasRemaining where
  parseJSON =
    Core.withObject
      "ResourceQuotasRemaining"
      ( \o ->
          ResourceQuotasRemaining
            Core.<$> (o Core..:? "dailyQuotaTokensRemaining")
            Core.<*> (o Core..:? "hourlyQuotaTokensRemaining")
      )

instance Core.ToJSON ResourceQuotasRemaining where
  toJSON ResourceQuotasRemaining {..} =
    Core.object
      ( Core.catMaybes
          [ ("dailyQuotaTokensRemaining" Core..=)
              Core.<$> dailyQuotaTokensRemaining,
            ("hourlyQuotaTokensRemaining" Core..=)
              Core.<$> hourlyQuotaTokensRemaining
          ]
      )

--
-- /See:/ 'newScreenviewData' smart constructor.
data ScreenviewData = ScreenviewData
  { -- | The application name.
    appName :: (Core.Maybe Core.Text),
    -- | Mobile manufacturer or branded name. Eg: \"Google\", \"Apple\" etc.
    mobileDeviceBranding :: (Core.Maybe Core.Text),
    -- | Mobile device model. Eg: \"Pixel\", \"iPhone\" etc.
    mobileDeviceModel :: (Core.Maybe Core.Text),
    -- | The name of the screen.
    screenName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ScreenviewData' with the minimum fields required to make a request.
newScreenviewData ::
  ScreenviewData
newScreenviewData =
  ScreenviewData
    { appName = Core.Nothing,
      mobileDeviceBranding = Core.Nothing,
      mobileDeviceModel = Core.Nothing,
      screenName = Core.Nothing
    }

instance Core.FromJSON ScreenviewData where
  parseJSON =
    Core.withObject
      "ScreenviewData"
      ( \o ->
          ScreenviewData
            Core.<$> (o Core..:? "appName")
            Core.<*> (o Core..:? "mobileDeviceBranding")
            Core.<*> (o Core..:? "mobileDeviceModel")
            Core.<*> (o Core..:? "screenName")
      )

instance Core.ToJSON ScreenviewData where
  toJSON ScreenviewData {..} =
    Core.object
      ( Core.catMaybes
          [ ("appName" Core..=) Core.<$> appName,
            ("mobileDeviceBranding" Core..=) Core.<$> mobileDeviceBranding,
            ("mobileDeviceModel" Core..=) Core.<$> mobileDeviceModel,
            ("screenName" Core..=) Core.<$> screenName
          ]
      )

-- | The request to fetch User Report from Reporting API @userActivity:get@ call.
--
-- /See:/ 'newSearchUserActivityRequest' smart constructor.
data SearchUserActivityRequest = SearchUserActivityRequest
  { -- | Set of all activity types being requested. Only acvities matching these types will be returned in the response. If empty, all activies will be returned.
    activityTypes :: (Core.Maybe [SearchUserActivityRequest_ActivityTypesItem]),
    -- | Date range for which to retrieve the user activity. If a date range is not provided, the default date range is (startDate: current date - 7 days, endDate: current date - 1 day).
    dateRange :: (Core.Maybe DateRange),
    -- | Page size is for paging and specifies the maximum number of returned rows. Page size should be > 0. If the value is 0 or if the field isn\'t specified, the request returns the default of 1000 rows per page.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A continuation token to get the next page of the results. Adding this to the request will return the rows after the pageToken. The pageToken should be the value returned in the nextPageToken parameter in the response to the <#SearchUserActivityRequest SearchUserActivityRequest> request.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. Unique user Id to query for. Every <#SearchUserActivityRequest SearchUserActivityRequest> must contain this field.
    user :: (Core.Maybe User),
    -- | Required. The Analytics <https://support.google.com/analytics/answer/1009618 view ID> from which to retrieve data. Every <#SearchUserActivityRequest SearchUserActivityRequest> must contain the @viewId@.
    viewId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchUserActivityRequest' with the minimum fields required to make a request.
newSearchUserActivityRequest ::
  SearchUserActivityRequest
newSearchUserActivityRequest =
  SearchUserActivityRequest
    { activityTypes = Core.Nothing,
      dateRange = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      user = Core.Nothing,
      viewId = Core.Nothing
    }

instance Core.FromJSON SearchUserActivityRequest where
  parseJSON =
    Core.withObject
      "SearchUserActivityRequest"
      ( \o ->
          SearchUserActivityRequest
            Core.<$> (o Core..:? "activityTypes")
            Core.<*> (o Core..:? "dateRange")
            Core.<*> (o Core..:? "pageSize")
            Core.<*> (o Core..:? "pageToken")
            Core.<*> (o Core..:? "user")
            Core.<*> (o Core..:? "viewId")
      )

instance Core.ToJSON SearchUserActivityRequest where
  toJSON SearchUserActivityRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("activityTypes" Core..=) Core.<$> activityTypes,
            ("dateRange" Core..=) Core.<$> dateRange,
            ("pageSize" Core..=) Core.<$> pageSize,
            ("pageToken" Core..=) Core.<$> pageToken,
            ("user" Core..=) Core.<$> user,
            ("viewId" Core..=) Core.<$> viewId
          ]
      )

-- | The response from @userActivity:get@ call.
--
-- /See:/ 'newSearchUserActivityResponse' smart constructor.
data SearchUserActivityResponse = SearchUserActivityResponse
  { -- | This token should be passed to <#SearchUserActivityRequest SearchUserActivityRequest> to retrieve the next page.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | This field represents the <https://support.google.com/analytics/answer/2637192 sampling rate> for the given request and is a number between 0.0 to 1.0. See </analytics/devguides/reporting/core/v4/basics#sampling developer guide> for details.
    sampleRate :: (Core.Maybe Core.Double),
    -- | Each record represents a session (device details, duration, etc).
    sessions :: (Core.Maybe [UserActivitySession]),
    -- | Total rows returned by this query (across different pages).
    totalRows :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchUserActivityResponse' with the minimum fields required to make a request.
newSearchUserActivityResponse ::
  SearchUserActivityResponse
newSearchUserActivityResponse =
  SearchUserActivityResponse
    { nextPageToken = Core.Nothing,
      sampleRate = Core.Nothing,
      sessions = Core.Nothing,
      totalRows = Core.Nothing
    }

instance Core.FromJSON SearchUserActivityResponse where
  parseJSON =
    Core.withObject
      "SearchUserActivityResponse"
      ( \o ->
          SearchUserActivityResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "sampleRate")
            Core.<*> (o Core..:? "sessions")
            Core.<*> (o Core..:? "totalRows")
      )

instance Core.ToJSON SearchUserActivityResponse where
  toJSON SearchUserActivityResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("sampleRate" Core..=) Core.<$> sampleRate,
            ("sessions" Core..=) Core.<$> sessions,
            ("totalRows" Core..=) Core.<$> totalRows
          ]
      )

-- | The segment definition, if the report needs to be segmented. A Segment is a subset of the Analytics data. For example, of the entire set of users, one Segment might be users from a particular country or city.
--
-- /See:/ 'newSegment' smart constructor.
data Segment = Segment
  { -- | A dynamic segment definition in the request.
    dynamicSegment :: (Core.Maybe DynamicSegment),
    -- | The segment ID of a built-in or custom segment, for example @gaid::-3@.
    segmentId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Segment' with the minimum fields required to make a request.
newSegment ::
  Segment
newSegment =
  Segment {dynamicSegment = Core.Nothing, segmentId = Core.Nothing}

instance Core.FromJSON Segment where
  parseJSON =
    Core.withObject
      "Segment"
      ( \o ->
          Segment
            Core.<$> (o Core..:? "dynamicSegment")
            Core.<*> (o Core..:? "segmentId")
      )

instance Core.ToJSON Segment where
  toJSON Segment {..} =
    Core.object
      ( Core.catMaybes
          [ ("dynamicSegment" Core..=) Core.<$> dynamicSegment,
            ("segmentId" Core..=) Core.<$> segmentId
          ]
      )

-- | SegmentDefinition defines the segment to be a set of SegmentFilters which are combined together with a logical @AND@ operation.
--
-- /See:/ 'newSegmentDefinition' smart constructor.
newtype SegmentDefinition = SegmentDefinition
  { -- | A segment is defined by a set of segment filters which are combined together with a logical @AND@ operation.
    segmentFilters :: (Core.Maybe [SegmentFilter])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SegmentDefinition' with the minimum fields required to make a request.
newSegmentDefinition ::
  SegmentDefinition
newSegmentDefinition =
  SegmentDefinition {segmentFilters = Core.Nothing}

instance Core.FromJSON SegmentDefinition where
  parseJSON =
    Core.withObject
      "SegmentDefinition"
      (\o -> SegmentDefinition Core.<$> (o Core..:? "segmentFilters"))

instance Core.ToJSON SegmentDefinition where
  toJSON SegmentDefinition {..} =
    Core.object
      ( Core.catMaybes
          [("segmentFilters" Core..=) Core.<$> segmentFilters]
      )

-- | Dimension filter specifies the filtering options on a dimension.
--
-- /See:/ 'newSegmentDimensionFilter' smart constructor.
data SegmentDimensionFilter = SegmentDimensionFilter
  { -- | Should the match be case sensitive, ignored for @IN_LIST@ operator.
    caseSensitive :: (Core.Maybe Core.Bool),
    -- | Name of the dimension for which the filter is being applied.
    dimensionName :: (Core.Maybe Core.Text),
    -- | The list of expressions, only the first element is used for all operators
    expressions :: (Core.Maybe [Core.Text]),
    -- | Maximum comparison values for @BETWEEN@ match type.
    maxComparisonValue :: (Core.Maybe Core.Text),
    -- | Minimum comparison values for @BETWEEN@ match type.
    minComparisonValue :: (Core.Maybe Core.Text),
    -- | The operator to use to match the dimension with the expressions.
    operator :: (Core.Maybe SegmentDimensionFilter_Operator)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SegmentDimensionFilter' with the minimum fields required to make a request.
newSegmentDimensionFilter ::
  SegmentDimensionFilter
newSegmentDimensionFilter =
  SegmentDimensionFilter
    { caseSensitive = Core.Nothing,
      dimensionName = Core.Nothing,
      expressions = Core.Nothing,
      maxComparisonValue = Core.Nothing,
      minComparisonValue = Core.Nothing,
      operator = Core.Nothing
    }

instance Core.FromJSON SegmentDimensionFilter where
  parseJSON =
    Core.withObject
      "SegmentDimensionFilter"
      ( \o ->
          SegmentDimensionFilter
            Core.<$> (o Core..:? "caseSensitive")
            Core.<*> (o Core..:? "dimensionName")
            Core.<*> (o Core..:? "expressions")
            Core.<*> (o Core..:? "maxComparisonValue")
            Core.<*> (o Core..:? "minComparisonValue")
            Core.<*> (o Core..:? "operator")
      )

instance Core.ToJSON SegmentDimensionFilter where
  toJSON SegmentDimensionFilter {..} =
    Core.object
      ( Core.catMaybes
          [ ("caseSensitive" Core..=) Core.<$> caseSensitive,
            ("dimensionName" Core..=) Core.<$> dimensionName,
            ("expressions" Core..=) Core.<$> expressions,
            ("maxComparisonValue" Core..=) Core.<$> maxComparisonValue,
            ("minComparisonValue" Core..=) Core.<$> minComparisonValue,
            ("operator" Core..=) Core.<$> operator
          ]
      )

-- | SegmentFilter defines the segment to be either a simple or a sequence segment. A simple segment condition contains dimension and metric conditions to select the sessions or users. A sequence segment condition can be used to select users or sessions based on sequential conditions.
--
-- /See:/ 'newSegmentFilter' smart constructor.
data SegmentFilter = SegmentFilter
  { -- | If true, match the complement of simple or sequence segment. For example, to match all visits not from \"New York\", we can define the segment as follows: \"sessionSegment\": { \"segmentFilters\": [{ \"simpleSegment\" :{ \"orFiltersForSegment\": [{ \"segmentFilterClauses\":[{ \"dimensionFilter\": { \"dimensionName\": \"ga:city\", \"expressions\": [\"New York\"] } }] }] }, \"not\": \"True\" }] },
    not :: (Core.Maybe Core.Bool),
    -- | Sequence conditions consist of one or more steps, where each step is defined by one or more dimension\/metric conditions. Multiple steps can be combined with special sequence operators.
    sequenceSegment :: (Core.Maybe SequenceSegment),
    -- | A Simple segment conditions consist of one or more dimension\/metric conditions that can be combined
    simpleSegment :: (Core.Maybe SimpleSegment)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SegmentFilter' with the minimum fields required to make a request.
newSegmentFilter ::
  SegmentFilter
newSegmentFilter =
  SegmentFilter
    { not = Core.Nothing,
      sequenceSegment = Core.Nothing,
      simpleSegment = Core.Nothing
    }

instance Core.FromJSON SegmentFilter where
  parseJSON =
    Core.withObject
      "SegmentFilter"
      ( \o ->
          SegmentFilter
            Core.<$> (o Core..:? "not")
            Core.<*> (o Core..:? "sequenceSegment")
            Core.<*> (o Core..:? "simpleSegment")
      )

instance Core.ToJSON SegmentFilter where
  toJSON SegmentFilter {..} =
    Core.object
      ( Core.catMaybes
          [ ("not" Core..=) Core.<$> not,
            ("sequenceSegment" Core..=) Core.<$> sequenceSegment,
            ("simpleSegment" Core..=) Core.<$> simpleSegment
          ]
      )

-- | Filter Clause to be used in a segment definition, can be wither a metric or a dimension filter.
--
-- /See:/ 'newSegmentFilterClause' smart constructor.
data SegmentFilterClause = SegmentFilterClause
  { -- | Dimension Filter for the segment definition.
    dimensionFilter :: (Core.Maybe SegmentDimensionFilter),
    -- | Metric Filter for the segment definition.
    metricFilter :: (Core.Maybe SegmentMetricFilter),
    -- | Matches the complement (@!@) of the filter.
    not :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SegmentFilterClause' with the minimum fields required to make a request.
newSegmentFilterClause ::
  SegmentFilterClause
newSegmentFilterClause =
  SegmentFilterClause
    { dimensionFilter = Core.Nothing,
      metricFilter = Core.Nothing,
      not = Core.Nothing
    }

instance Core.FromJSON SegmentFilterClause where
  parseJSON =
    Core.withObject
      "SegmentFilterClause"
      ( \o ->
          SegmentFilterClause
            Core.<$> (o Core..:? "dimensionFilter")
            Core.<*> (o Core..:? "metricFilter")
            Core.<*> (o Core..:? "not")
      )

instance Core.ToJSON SegmentFilterClause where
  toJSON SegmentFilterClause {..} =
    Core.object
      ( Core.catMaybes
          [ ("dimensionFilter" Core..=) Core.<$> dimensionFilter,
            ("metricFilter" Core..=) Core.<$> metricFilter,
            ("not" Core..=) Core.<$> not
          ]
      )

-- | Metric filter to be used in a segment filter clause.
--
-- /See:/ 'newSegmentMetricFilter' smart constructor.
data SegmentMetricFilter = SegmentMetricFilter
  { -- | The value to compare against. If the operator is @BETWEEN@, this value is treated as minimum comparison value.
    comparisonValue :: (Core.Maybe Core.Text),
    -- | Max comparison value is only used for @BETWEEN@ operator.
    maxComparisonValue :: (Core.Maybe Core.Text),
    -- | The metric that will be filtered on. A @metricFilter@ must contain a metric name.
    metricName :: (Core.Maybe Core.Text),
    -- | Specifies is the operation to perform to compare the metric. The default is @EQUAL@.
    operator :: (Core.Maybe SegmentMetricFilter_Operator),
    -- | Scope for a metric defines the level at which that metric is defined. The specified metric scope must be equal to or greater than its primary scope as defined in the data model. The primary scope is defined by if the segment is selecting users or sessions.
    scope :: (Core.Maybe SegmentMetricFilter_Scope)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SegmentMetricFilter' with the minimum fields required to make a request.
newSegmentMetricFilter ::
  SegmentMetricFilter
newSegmentMetricFilter =
  SegmentMetricFilter
    { comparisonValue = Core.Nothing,
      maxComparisonValue = Core.Nothing,
      metricName = Core.Nothing,
      operator = Core.Nothing,
      scope = Core.Nothing
    }

instance Core.FromJSON SegmentMetricFilter where
  parseJSON =
    Core.withObject
      "SegmentMetricFilter"
      ( \o ->
          SegmentMetricFilter
            Core.<$> (o Core..:? "comparisonValue")
            Core.<*> (o Core..:? "maxComparisonValue")
            Core.<*> (o Core..:? "metricName")
            Core.<*> (o Core..:? "operator")
            Core.<*> (o Core..:? "scope")
      )

instance Core.ToJSON SegmentMetricFilter where
  toJSON SegmentMetricFilter {..} =
    Core.object
      ( Core.catMaybes
          [ ("comparisonValue" Core..=) Core.<$> comparisonValue,
            ("maxComparisonValue" Core..=) Core.<$> maxComparisonValue,
            ("metricName" Core..=) Core.<$> metricName,
            ("operator" Core..=) Core.<$> operator,
            ("scope" Core..=) Core.<$> scope
          ]
      )

-- | A segment sequence definition.
--
-- /See:/ 'newSegmentSequenceStep' smart constructor.
data SegmentSequenceStep = SegmentSequenceStep
  { -- | Specifies if the step immediately precedes or can be any time before the next step.
    matchType :: (Core.Maybe SegmentSequenceStep_MatchType),
    -- | A sequence is specified with a list of Or grouped filters which are combined with @AND@ operator.
    orFiltersForSegment :: (Core.Maybe [OrFiltersForSegment])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SegmentSequenceStep' with the minimum fields required to make a request.
newSegmentSequenceStep ::
  SegmentSequenceStep
newSegmentSequenceStep =
  SegmentSequenceStep
    { matchType = Core.Nothing,
      orFiltersForSegment = Core.Nothing
    }

instance Core.FromJSON SegmentSequenceStep where
  parseJSON =
    Core.withObject
      "SegmentSequenceStep"
      ( \o ->
          SegmentSequenceStep
            Core.<$> (o Core..:? "matchType")
            Core.<*> (o Core..:? "orFiltersForSegment")
      )

instance Core.ToJSON SegmentSequenceStep where
  toJSON SegmentSequenceStep {..} =
    Core.object
      ( Core.catMaybes
          [ ("matchType" Core..=) Core.<$> matchType,
            ("orFiltersForSegment" Core..=) Core.<$> orFiltersForSegment
          ]
      )

-- | Sequence conditions consist of one or more steps, where each step is defined by one or more dimension\/metric conditions. Multiple steps can be combined with special sequence operators.
--
-- /See:/ 'newSequenceSegment' smart constructor.
data SequenceSegment = SequenceSegment
  { -- | If set, first step condition must match the first hit of the visitor (in the date range).
    firstStepShouldMatchFirstHit :: (Core.Maybe Core.Bool),
    -- | The list of steps in the sequence.
    segmentSequenceSteps :: (Core.Maybe [SegmentSequenceStep])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SequenceSegment' with the minimum fields required to make a request.
newSequenceSegment ::
  SequenceSegment
newSequenceSegment =
  SequenceSegment
    { firstStepShouldMatchFirstHit = Core.Nothing,
      segmentSequenceSteps = Core.Nothing
    }

instance Core.FromJSON SequenceSegment where
  parseJSON =
    Core.withObject
      "SequenceSegment"
      ( \o ->
          SequenceSegment
            Core.<$> (o Core..:? "firstStepShouldMatchFirstHit")
            Core.<*> (o Core..:? "segmentSequenceSteps")
      )

instance Core.ToJSON SequenceSegment where
  toJSON SequenceSegment {..} =
    Core.object
      ( Core.catMaybes
          [ ("firstStepShouldMatchFirstHit" Core..=)
              Core.<$> firstStepShouldMatchFirstHit,
            ("segmentSequenceSteps" Core..=) Core.<$> segmentSequenceSteps
          ]
      )

-- | A Simple segment conditions consist of one or more dimension\/metric conditions that can be combined.
--
-- /See:/ 'newSimpleSegment' smart constructor.
newtype SimpleSegment = SimpleSegment
  { -- | A list of segment filters groups which are combined with logical @AND@ operator.
    orFiltersForSegment :: (Core.Maybe [OrFiltersForSegment])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SimpleSegment' with the minimum fields required to make a request.
newSimpleSegment ::
  SimpleSegment
newSimpleSegment =
  SimpleSegment {orFiltersForSegment = Core.Nothing}

instance Core.FromJSON SimpleSegment where
  parseJSON =
    Core.withObject
      "SimpleSegment"
      (\o -> SimpleSegment Core.<$> (o Core..:? "orFiltersForSegment"))

instance Core.ToJSON SimpleSegment where
  toJSON SimpleSegment {..} =
    Core.object
      ( Core.catMaybes
          [("orFiltersForSegment" Core..=) Core.<$> orFiltersForSegment]
      )

-- | Represents details collected when the visitor performs a transaction on the page.
--
-- /See:/ 'newTransactionData' smart constructor.
data TransactionData = TransactionData
  { -- | The transaction ID, supplied by the e-commerce tracking method, for the purchase in the shopping cart.
    transactionId :: (Core.Maybe Core.Text),
    -- | The total sale revenue (excluding shipping and tax) of the transaction.
    transactionRevenue :: (Core.Maybe Core.Double),
    -- | Total cost of shipping.
    transactionShipping :: (Core.Maybe Core.Double),
    -- | Total tax for the transaction.
    transactionTax :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TransactionData' with the minimum fields required to make a request.
newTransactionData ::
  TransactionData
newTransactionData =
  TransactionData
    { transactionId = Core.Nothing,
      transactionRevenue = Core.Nothing,
      transactionShipping = Core.Nothing,
      transactionTax = Core.Nothing
    }

instance Core.FromJSON TransactionData where
  parseJSON =
    Core.withObject
      "TransactionData"
      ( \o ->
          TransactionData
            Core.<$> (o Core..:? "transactionId")
            Core.<*> (o Core..:? "transactionRevenue")
            Core.<*> (o Core..:? "transactionShipping")
            Core.<*> (o Core..:? "transactionTax")
      )

instance Core.ToJSON TransactionData where
  toJSON TransactionData {..} =
    Core.object
      ( Core.catMaybes
          [ ("transactionId" Core..=) Core.<$> transactionId,
            ("transactionRevenue" Core..=) Core.<$> transactionRevenue,
            ("transactionShipping" Core..=) Core.<$> transactionShipping,
            ("transactionTax" Core..=) Core.<$> transactionTax
          ]
      )

-- | Contains information to identify a particular user uniquely.
--
-- /See:/ 'newUser' smart constructor.
data User = User
  { -- | Type of the user in the request. The field @userId@ is associated with this type.
    type' :: (Core.Maybe User_Type),
    -- | Unique Id of the user for which the data is being requested.
    userId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'User' with the minimum fields required to make a request.
newUser ::
  User
newUser = User {type' = Core.Nothing, userId = Core.Nothing}

instance Core.FromJSON User where
  parseJSON =
    Core.withObject
      "User"
      ( \o ->
          User Core.<$> (o Core..:? "type") Core.<*> (o Core..:? "userId")
      )

instance Core.ToJSON User where
  toJSON User {..} =
    Core.object
      ( Core.catMaybes
          [ ("type" Core..=) Core.<$> type',
            ("userId" Core..=) Core.<$> userId
          ]
      )

-- | This represents a user session performed on a specific device at a certain time over a period of time.
--
-- /See:/ 'newUserActivitySession' smart constructor.
data UserActivitySession = UserActivitySession
  { -- | Represents a detailed view into each of the activity in this session.
    activities :: (Core.Maybe [Activity]),
    -- | The data source of a hit. By default, hits sent from analytics.js are reported as \"web\" and hits sent from the mobile SDKs are reported as \"app\". These values can be overridden in the Measurement Protocol.
    dataSource :: (Core.Maybe Core.Text),
    -- | The type of device used: \"mobile\", \"tablet\" etc.
    deviceCategory :: (Core.Maybe Core.Text),
    -- | Platform on which the activity happened: \"android\", \"ios\" etc.
    platform :: (Core.Maybe Core.Text),
    -- | Date of this session in ISO-8601 format.
    sessionDate :: (Core.Maybe Core.Text),
    -- | Unique ID of the session.
    sessionId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserActivitySession' with the minimum fields required to make a request.
newUserActivitySession ::
  UserActivitySession
newUserActivitySession =
  UserActivitySession
    { activities = Core.Nothing,
      dataSource = Core.Nothing,
      deviceCategory = Core.Nothing,
      platform = Core.Nothing,
      sessionDate = Core.Nothing,
      sessionId = Core.Nothing
    }

instance Core.FromJSON UserActivitySession where
  parseJSON =
    Core.withObject
      "UserActivitySession"
      ( \o ->
          UserActivitySession
            Core.<$> (o Core..:? "activities")
            Core.<*> (o Core..:? "dataSource")
            Core.<*> (o Core..:? "deviceCategory")
            Core.<*> (o Core..:? "platform")
            Core.<*> (o Core..:? "sessionDate")
            Core.<*> (o Core..:? "sessionId")
      )

instance Core.ToJSON UserActivitySession where
  toJSON UserActivitySession {..} =
    Core.object
      ( Core.catMaybes
          [ ("activities" Core..=) Core.<$> activities,
            ("dataSource" Core..=) Core.<$> dataSource,
            ("deviceCategory" Core..=) Core.<$> deviceCategory,
            ("platform" Core..=) Core.<$> platform,
            ("sessionDate" Core..=) Core.<$> sessionDate,
            ("sessionId" Core..=) Core.<$> sessionId
          ]
      )
