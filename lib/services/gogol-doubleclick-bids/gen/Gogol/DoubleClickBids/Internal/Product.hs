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
-- Module      : Gogol.DoubleClickBids.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.DoubleClickBids.Internal.Product
  ( -- * ChannelGrouping
    ChannelGrouping (..),
    newChannelGrouping,

    -- * DataRange
    DataRange (..),
    newDataRange,

    -- * Date
    Date (..),
    newDate,

    -- * DisjunctiveMatchStatement
    DisjunctiveMatchStatement (..),
    newDisjunctiveMatchStatement,

    -- * EventFilter
    EventFilter (..),
    newEventFilter,

    -- * FilterPair
    FilterPair (..),
    newFilterPair,

    -- * ListQueriesResponse
    ListQueriesResponse (..),
    newListQueriesResponse,

    -- * ListReportsResponse
    ListReportsResponse (..),
    newListReportsResponse,

    -- * Options
    Options (..),
    newOptions,

    -- * Parameters
    Parameters (..),
    newParameters,

    -- * PathFilter
    PathFilter (..),
    newPathFilter,

    -- * PathQueryOptions
    PathQueryOptions (..),
    newPathQueryOptions,

    -- * PathQueryOptionsFilter
    PathQueryOptionsFilter (..),
    newPathQueryOptionsFilter,

    -- * Query
    Query (..),
    newQuery,

    -- * QueryMetadata
    QueryMetadata (..),
    newQueryMetadata,

    -- * QuerySchedule
    QuerySchedule (..),
    newQuerySchedule,

    -- * Report
    Report (..),
    newReport,

    -- * ReportKey
    ReportKey (..),
    newReportKey,

    -- * ReportMetadata
    ReportMetadata (..),
    newReportMetadata,

    -- * ReportStatus
    ReportStatus (..),
    newReportStatus,

    -- * Rule
    Rule (..),
    newRule,

    -- * RunQueryRequest
    RunQueryRequest (..),
    newRunQueryRequest,
  )
where

import Gogol.DoubleClickBids.Internal.Sum
import qualified Gogol.Prelude as Core

-- | A channel grouping defines a set of rules that can be used to categorize events in a path report.
--
-- /See:/ 'newChannelGrouping' smart constructor.
data ChannelGrouping = ChannelGrouping
  { -- | The name to apply to an event that does not match any of the rules in the channel grouping.
    fallbackName :: (Core.Maybe Core.Text),
    -- | Channel Grouping name.
    name :: (Core.Maybe Core.Text),
    -- | Rules within Channel Grouping. There is a limit of 100 rules that can be set per channel grouping.
    rules :: (Core.Maybe [Rule])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChannelGrouping' with the minimum fields required to make a request.
newChannelGrouping ::
  ChannelGrouping
newChannelGrouping =
  ChannelGrouping
    { fallbackName = Core.Nothing,
      name = Core.Nothing,
      rules = Core.Nothing
    }

instance Core.FromJSON ChannelGrouping where
  parseJSON =
    Core.withObject
      "ChannelGrouping"
      ( \o ->
          ChannelGrouping
            Core.<$> (o Core..:? "fallbackName")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "rules")
      )

instance Core.ToJSON ChannelGrouping where
  toJSON ChannelGrouping {..} =
    Core.object
      ( Core.catMaybes
          [ ("fallbackName" Core..=) Core.<$> fallbackName,
            ("name" Core..=) Core.<$> name,
            ("rules" Core..=) Core.<$> rules
          ]
      )

-- | Report data range.
--
-- /See:/ 'newDataRange' smart constructor.
data DataRange = DataRange
  { -- | The ending date for the data that is shown in the report. Note, @customEndDate@ is required if @range@ is @CUSTOM_DATES@ and ignored otherwise.
    customEndDate :: (Core.Maybe Date),
    -- | The starting data for the data that is shown in the report. Note, @customStartDate@ is required if @range@ is @CUSTOM_DATES@ and ignored otherwise.
    customStartDate :: (Core.Maybe Date),
    -- | Report data range used to generate the report.
    range :: (Core.Maybe DataRange_Range)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataRange' with the minimum fields required to make a request.
newDataRange ::
  DataRange
newDataRange =
  DataRange
    { customEndDate = Core.Nothing,
      customStartDate = Core.Nothing,
      range = Core.Nothing
    }

instance Core.FromJSON DataRange where
  parseJSON =
    Core.withObject
      "DataRange"
      ( \o ->
          DataRange
            Core.<$> (o Core..:? "customEndDate")
            Core.<*> (o Core..:? "customStartDate")
            Core.<*> (o Core..:? "range")
      )

instance Core.ToJSON DataRange where
  toJSON DataRange {..} =
    Core.object
      ( Core.catMaybes
          [ ("customEndDate" Core..=) Core.<$> customEndDate,
            ("customStartDate" Core..=) Core.<$> customStartDate,
            ("range" Core..=) Core.<$> range
          ]
      )

-- | Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
--
-- /See:/ 'newDate' smart constructor.
data Date = Date
  { -- | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn\'t significant.
    day :: (Core.Maybe Core.Int32),
    -- | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.
    month :: (Core.Maybe Core.Int32),
    -- | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.
    year :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Date' with the minimum fields required to make a request.
newDate ::
  Date
newDate = Date {day = Core.Nothing, month = Core.Nothing, year = Core.Nothing}

instance Core.FromJSON Date where
  parseJSON =
    Core.withObject
      "Date"
      ( \o ->
          Date
            Core.<$> (o Core..:? "day")
            Core.<*> (o Core..:? "month")
            Core.<*> (o Core..:? "year")
      )

instance Core.ToJSON Date where
  toJSON Date {..} =
    Core.object
      ( Core.catMaybes
          [ ("day" Core..=) Core.<$> day,
            ("month" Core..=) Core.<$> month,
            ("year" Core..=) Core.<$> year
          ]
      )

-- | DisjunctiveMatchStatement that OR\'s all contained filters.
--
-- /See:/ 'newDisjunctiveMatchStatement' smart constructor.
newtype DisjunctiveMatchStatement = DisjunctiveMatchStatement
  { -- | Filters. There is a limit of 100 filters that can be set per disjunctive match statement.
    eventFilters :: (Core.Maybe [EventFilter])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DisjunctiveMatchStatement' with the minimum fields required to make a request.
newDisjunctiveMatchStatement ::
  DisjunctiveMatchStatement
newDisjunctiveMatchStatement =
  DisjunctiveMatchStatement {eventFilters = Core.Nothing}

instance Core.FromJSON DisjunctiveMatchStatement where
  parseJSON =
    Core.withObject
      "DisjunctiveMatchStatement"
      ( \o ->
          DisjunctiveMatchStatement
            Core.<$> (o Core..:? "eventFilters")
      )

instance Core.ToJSON DisjunctiveMatchStatement where
  toJSON DisjunctiveMatchStatement {..} =
    Core.object
      ( Core.catMaybes
          [("eventFilters" Core..=) Core.<$> eventFilters]
      )

-- | Defines the type of filter to be applied to the path, a DV360 event dimension filter.
--
-- /See:/ 'newEventFilter' smart constructor.
newtype EventFilter = EventFilter
  { -- | Filter on a dimension.
    dimensionFilter :: (Core.Maybe PathQueryOptionsFilter)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EventFilter' with the minimum fields required to make a request.
newEventFilter ::
  EventFilter
newEventFilter = EventFilter {dimensionFilter = Core.Nothing}

instance Core.FromJSON EventFilter where
  parseJSON =
    Core.withObject
      "EventFilter"
      ( \o ->
          EventFilter Core.<$> (o Core..:? "dimensionFilter")
      )

instance Core.ToJSON EventFilter where
  toJSON EventFilter {..} =
    Core.object
      ( Core.catMaybes
          [ ("dimensionFilter" Core..=)
              Core.<$> dimensionFilter
          ]
      )

-- | Filter used to match traffic data in your report.
--
-- /See:/ 'newFilterPair' smart constructor.
data FilterPair = FilterPair
  { -- | Filter type.
    type' :: (Core.Maybe Core.Text),
    -- | Filter value.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FilterPair' with the minimum fields required to make a request.
newFilterPair ::
  FilterPair
newFilterPair = FilterPair {type' = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON FilterPair where
  parseJSON =
    Core.withObject
      "FilterPair"
      ( \o ->
          FilterPair
            Core.<$> (o Core..:? "type") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON FilterPair where
  toJSON FilterPair {..} =
    Core.object
      ( Core.catMaybes
          [ ("type" Core..=) Core.<$> type',
            ("value" Core..=) Core.<$> value
          ]
      )

--
-- /See:/ 'newListQueriesResponse' smart constructor.
data ListQueriesResponse = ListQueriesResponse
  { -- | A token, which can be sent as page_token to retrieve the next page of queries. If this field is omitted, there are no subsequent pages.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The list of queries.
    queries :: (Core.Maybe [Query])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListQueriesResponse' with the minimum fields required to make a request.
newListQueriesResponse ::
  ListQueriesResponse
newListQueriesResponse =
  ListQueriesResponse {nextPageToken = Core.Nothing, queries = Core.Nothing}

instance Core.FromJSON ListQueriesResponse where
  parseJSON =
    Core.withObject
      "ListQueriesResponse"
      ( \o ->
          ListQueriesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "queries")
      )

instance Core.ToJSON ListQueriesResponse where
  toJSON ListQueriesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("queries" Core..=) Core.<$> queries
          ]
      )

--
-- /See:/ 'newListReportsResponse' smart constructor.
data ListReportsResponse = ListReportsResponse
  { -- | A token, which can be sent as page_token to retrieve the next page of reports. If this field is omitted, there are no subsequent pages.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Retrieved reports.
    reports :: (Core.Maybe [Report])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListReportsResponse' with the minimum fields required to make a request.
newListReportsResponse ::
  ListReportsResponse
newListReportsResponse =
  ListReportsResponse {nextPageToken = Core.Nothing, reports = Core.Nothing}

instance Core.FromJSON ListReportsResponse where
  parseJSON =
    Core.withObject
      "ListReportsResponse"
      ( \o ->
          ListReportsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "reports")
      )

instance Core.ToJSON ListReportsResponse where
  toJSON ListReportsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("reports" Core..=) Core.<$> reports
          ]
      )

-- | Additional query options.
--
-- /See:/ 'newOptions' smart constructor.
data Options = Options
  { -- | Set to true and filter your report by @FILTER_INSERTION_ORDER@ or @FILTER_LINE_ITEM@ to include data for audience lists specifically targeted by those items.
    includeOnlyTargetedUserLists :: (Core.Maybe Core.Bool),
    -- | Options that contain Path Filters and Custom Channel Groupings.
    pathQueryOptions :: (Core.Maybe PathQueryOptions)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Options' with the minimum fields required to make a request.
newOptions ::
  Options
newOptions =
  Options
    { includeOnlyTargetedUserLists = Core.Nothing,
      pathQueryOptions = Core.Nothing
    }

instance Core.FromJSON Options where
  parseJSON =
    Core.withObject
      "Options"
      ( \o ->
          Options
            Core.<$> (o Core..:? "includeOnlyTargetedUserLists")
            Core.<*> (o Core..:? "pathQueryOptions")
      )

instance Core.ToJSON Options where
  toJSON Options {..} =
    Core.object
      ( Core.catMaybes
          [ ("includeOnlyTargetedUserLists" Core..=)
              Core.<$> includeOnlyTargetedUserLists,
            ("pathQueryOptions" Core..=)
              Core.<$> pathQueryOptions
          ]
      )

-- | Parameters of a query or report.
--
-- /See:/ 'newParameters' smart constructor.
data Parameters = Parameters
  { -- | Filters used to match traffic data in your report.
    filters :: (Core.Maybe [FilterPair]),
    -- | Data is grouped by the filters listed in this field.
    groupBys :: (Core.Maybe [Core.Text]),
    -- | Metrics to include as columns in your report.
    metrics :: (Core.Maybe [Core.Text]),
    -- | Additional query options.
    options :: (Core.Maybe Options),
    -- | The type of the report. The type of the report will dictate what dimesions, filters, and metrics can be used.
    type' :: (Core.Maybe Parameters_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Parameters' with the minimum fields required to make a request.
newParameters ::
  Parameters
newParameters =
  Parameters
    { filters = Core.Nothing,
      groupBys = Core.Nothing,
      metrics = Core.Nothing,
      options = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Parameters where
  parseJSON =
    Core.withObject
      "Parameters"
      ( \o ->
          Parameters
            Core.<$> (o Core..:? "filters")
            Core.<*> (o Core..:? "groupBys")
            Core.<*> (o Core..:? "metrics")
            Core.<*> (o Core..:? "options")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Parameters where
  toJSON Parameters {..} =
    Core.object
      ( Core.catMaybes
          [ ("filters" Core..=) Core.<$> filters,
            ("groupBys" Core..=) Core.<$> groupBys,
            ("metrics" Core..=) Core.<$> metrics,
            ("options" Core..=) Core.<$> options,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Path filters specify which paths to include in a report. A path is the result of combining DV360 events based on User ID to create a workflow of users\' actions. When a path filter is set, the resulting report will only include paths that match the specified event at the specified position. All other paths will be excluded.
--
-- /See:/ 'newPathFilter' smart constructor.
data PathFilter = PathFilter
  { -- | Filter on an event to be applied to some part of the path.
    eventFilters :: (Core.Maybe [EventFilter]),
    -- | The position of the path the filter should match to (first, last, or any event in path).
    pathMatchPosition :: (Core.Maybe PathFilter_PathMatchPosition)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PathFilter' with the minimum fields required to make a request.
newPathFilter ::
  PathFilter
newPathFilter =
  PathFilter {eventFilters = Core.Nothing, pathMatchPosition = Core.Nothing}

instance Core.FromJSON PathFilter where
  parseJSON =
    Core.withObject
      "PathFilter"
      ( \o ->
          PathFilter
            Core.<$> (o Core..:? "eventFilters")
            Core.<*> (o Core..:? "pathMatchPosition")
      )

instance Core.ToJSON PathFilter where
  toJSON PathFilter {..} =
    Core.object
      ( Core.catMaybes
          [ ("eventFilters" Core..=) Core.<$> eventFilters,
            ("pathMatchPosition" Core..=)
              Core.<$> pathMatchPosition
          ]
      )

-- | Path Query Options for Report Options.
--
-- /See:/ 'newPathQueryOptions' smart constructor.
data PathQueryOptions = PathQueryOptions
  { -- | Custom Channel Groupings.
    channelGrouping :: (Core.Maybe ChannelGrouping),
    -- | Path Filters. There is a limit of 100 path filters that can be set per report.
    pathFilters :: (Core.Maybe [PathFilter])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PathQueryOptions' with the minimum fields required to make a request.
newPathQueryOptions ::
  PathQueryOptions
newPathQueryOptions =
  PathQueryOptions {channelGrouping = Core.Nothing, pathFilters = Core.Nothing}

instance Core.FromJSON PathQueryOptions where
  parseJSON =
    Core.withObject
      "PathQueryOptions"
      ( \o ->
          PathQueryOptions
            Core.<$> (o Core..:? "channelGrouping")
            Core.<*> (o Core..:? "pathFilters")
      )

instance Core.ToJSON PathQueryOptions where
  toJSON PathQueryOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("channelGrouping" Core..=)
              Core.<$> channelGrouping,
            ("pathFilters" Core..=) Core.<$> pathFilters
          ]
      )

-- | Dimension filter on path events.
--
-- /See:/ 'newPathQueryOptionsFilter' smart constructor.
data PathQueryOptionsFilter = PathQueryOptionsFilter
  { -- | Dimension the filter is applied to.
    filter :: (Core.Maybe Core.Text),
    -- | Match logic of the filter.
    match :: (Core.Maybe PathQueryOptionsFilter_Match),
    -- | Values to filter on.
    values :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PathQueryOptionsFilter' with the minimum fields required to make a request.
newPathQueryOptionsFilter ::
  PathQueryOptionsFilter
newPathQueryOptionsFilter =
  PathQueryOptionsFilter
    { filter = Core.Nothing,
      match = Core.Nothing,
      values = Core.Nothing
    }

instance Core.FromJSON PathQueryOptionsFilter where
  parseJSON =
    Core.withObject
      "PathQueryOptionsFilter"
      ( \o ->
          PathQueryOptionsFilter
            Core.<$> (o Core..:? "filter")
            Core.<*> (o Core..:? "match")
            Core.<*> (o Core..:? "values")
      )

instance Core.ToJSON PathQueryOptionsFilter where
  toJSON PathQueryOptionsFilter {..} =
    Core.object
      ( Core.catMaybes
          [ ("filter" Core..=) Core.<$> filter,
            ("match" Core..=) Core.<$> match,
            ("values" Core..=) Core.<$> values
          ]
      )

-- | Represents a query.
--
-- /See:/ 'newQuery' smart constructor.
data Query = Query
  { -- | Query metadata.
    metadata :: (Core.Maybe QueryMetadata),
    -- | Query parameters.
    params :: (Core.Maybe Parameters),
    -- | Output only. Query ID.
    queryId :: (Core.Maybe Core.Int64),
    -- | Information on how often and when to run a query. If @ONE_TIME@ is set to the frequency field, the query will only be run at the time of creation.
    schedule :: (Core.Maybe QuerySchedule)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Query' with the minimum fields required to make a request.
newQuery ::
  Query
newQuery =
  Query
    { metadata = Core.Nothing,
      params = Core.Nothing,
      queryId = Core.Nothing,
      schedule = Core.Nothing
    }

instance Core.FromJSON Query where
  parseJSON =
    Core.withObject
      "Query"
      ( \o ->
          Query
            Core.<$> (o Core..:? "metadata")
            Core.<*> (o Core..:? "params")
            Core.<*> ( o Core..:? "queryId"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "schedule")
      )

instance Core.ToJSON Query where
  toJSON Query {..} =
    Core.object
      ( Core.catMaybes
          [ ("metadata" Core..=) Core.<$> metadata,
            ("params" Core..=) Core.<$> params,
            ("queryId" Core..=) Core.. Core.AsText
              Core.<$> queryId,
            ("schedule" Core..=) Core.<$> schedule
          ]
      )

-- | Query metadata.
--
-- /See:/ 'newQueryMetadata' smart constructor.
data QueryMetadata = QueryMetadata
  { -- | Range of report data. All reports will be based on the same time zone as used by the advertiser.
    dataRange :: (Core.Maybe DataRange),
    -- | Format of the generated report.
    format :: (Core.Maybe QueryMetadata_Format),
    -- | Whether to send an email notification when a report is ready. Defaults to false.
    sendNotification :: (Core.Maybe Core.Bool),
    -- | List of email addresses which are sent email notifications when the report is finished. Separate from send_notification.
    shareEmailAddress :: (Core.Maybe [Core.Text]),
    -- | Query title. It is used to name the reports generated from this query.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QueryMetadata' with the minimum fields required to make a request.
newQueryMetadata ::
  QueryMetadata
newQueryMetadata =
  QueryMetadata
    { dataRange = Core.Nothing,
      format = Core.Nothing,
      sendNotification = Core.Nothing,
      shareEmailAddress = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON QueryMetadata where
  parseJSON =
    Core.withObject
      "QueryMetadata"
      ( \o ->
          QueryMetadata
            Core.<$> (o Core..:? "dataRange")
            Core.<*> (o Core..:? "format")
            Core.<*> (o Core..:? "sendNotification")
            Core.<*> (o Core..:? "shareEmailAddress")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON QueryMetadata where
  toJSON QueryMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataRange" Core..=) Core.<$> dataRange,
            ("format" Core..=) Core.<$> format,
            ("sendNotification" Core..=)
              Core.<$> sendNotification,
            ("shareEmailAddress" Core..=)
              Core.<$> shareEmailAddress,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | Information on when and how frequently to run a query.
--
-- /See:/ 'newQuerySchedule' smart constructor.
data QuerySchedule = QuerySchedule
  { -- | Date to periodically run the query until. Not applicable to @ONE_TIME@ frequency.
    endDate :: (Core.Maybe Date),
    -- | How often the query is run.
    frequency :: (Core.Maybe QuerySchedule_Frequency),
    -- | Canonical timezone code for report generation time. Defaults to @America\/New_York@.
    nextRunTimezoneCode :: (Core.Maybe Core.Text),
    -- | When to start running the query. Not applicable to @ONE_TIME@ frequency.
    startDate :: (Core.Maybe Date)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QuerySchedule' with the minimum fields required to make a request.
newQuerySchedule ::
  QuerySchedule
newQuerySchedule =
  QuerySchedule
    { endDate = Core.Nothing,
      frequency = Core.Nothing,
      nextRunTimezoneCode = Core.Nothing,
      startDate = Core.Nothing
    }

instance Core.FromJSON QuerySchedule where
  parseJSON =
    Core.withObject
      "QuerySchedule"
      ( \o ->
          QuerySchedule
            Core.<$> (o Core..:? "endDate")
            Core.<*> (o Core..:? "frequency")
            Core.<*> (o Core..:? "nextRunTimezoneCode")
            Core.<*> (o Core..:? "startDate")
      )

instance Core.ToJSON QuerySchedule where
  toJSON QuerySchedule {..} =
    Core.object
      ( Core.catMaybes
          [ ("endDate" Core..=) Core.<$> endDate,
            ("frequency" Core..=) Core.<$> frequency,
            ("nextRunTimezoneCode" Core..=)
              Core.<$> nextRunTimezoneCode,
            ("startDate" Core..=) Core.<$> startDate
          ]
      )

-- | Represents a report.
--
-- /See:/ 'newReport' smart constructor.
data Report = Report
  { -- | Key used to identify a report.
    key :: (Core.Maybe ReportKey),
    -- | Report metadata.
    metadata :: (Core.Maybe ReportMetadata),
    -- | Report parameters.
    params :: (Core.Maybe Parameters)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Report' with the minimum fields required to make a request.
newReport ::
  Report
newReport =
  Report {key = Core.Nothing, metadata = Core.Nothing, params = Core.Nothing}

instance Core.FromJSON Report where
  parseJSON =
    Core.withObject
      "Report"
      ( \o ->
          Report
            Core.<$> (o Core..:? "key")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "params")
      )

instance Core.ToJSON Report where
  toJSON Report {..} =
    Core.object
      ( Core.catMaybes
          [ ("key" Core..=) Core.<$> key,
            ("metadata" Core..=) Core.<$> metadata,
            ("params" Core..=) Core.<$> params
          ]
      )

-- | Key used to identify a report.
--
-- /See:/ 'newReportKey' smart constructor.
data ReportKey = ReportKey
  { -- | Output only. Query ID.
    queryId :: (Core.Maybe Core.Int64),
    -- | Output only. Report ID.
    reportId :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReportKey' with the minimum fields required to make a request.
newReportKey ::
  ReportKey
newReportKey = ReportKey {queryId = Core.Nothing, reportId = Core.Nothing}

instance Core.FromJSON ReportKey where
  parseJSON =
    Core.withObject
      "ReportKey"
      ( \o ->
          ReportKey
            Core.<$> ( o Core..:? "queryId"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "reportId"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON ReportKey where
  toJSON ReportKey {..} =
    Core.object
      ( Core.catMaybes
          [ ("queryId" Core..=) Core.. Core.AsText
              Core.<$> queryId,
            ("reportId" Core..=) Core.. Core.AsText
              Core.<$> reportId
          ]
      )

-- | Report metadata.
--
-- /See:/ 'newReportMetadata' smart constructor.
data ReportMetadata = ReportMetadata
  { -- | Output only. The path to the location in Google Cloud Storage where the report is stored.
    googleCloudStoragePath :: (Core.Maybe Core.Text),
    -- | The ending time for the data that is shown in the report.
    reportDataEndDate :: (Core.Maybe Date),
    -- | The starting time for the data that is shown in the report.
    reportDataStartDate :: (Core.Maybe Date),
    -- | Report status.
    status :: (Core.Maybe ReportStatus)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReportMetadata' with the minimum fields required to make a request.
newReportMetadata ::
  ReportMetadata
newReportMetadata =
  ReportMetadata
    { googleCloudStoragePath = Core.Nothing,
      reportDataEndDate = Core.Nothing,
      reportDataStartDate = Core.Nothing,
      status = Core.Nothing
    }

instance Core.FromJSON ReportMetadata where
  parseJSON =
    Core.withObject
      "ReportMetadata"
      ( \o ->
          ReportMetadata
            Core.<$> (o Core..:? "googleCloudStoragePath")
            Core.<*> (o Core..:? "reportDataEndDate")
            Core.<*> (o Core..:? "reportDataStartDate")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON ReportMetadata where
  toJSON ReportMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("googleCloudStoragePath" Core..=)
              Core.<$> googleCloudStoragePath,
            ("reportDataEndDate" Core..=)
              Core.<$> reportDataEndDate,
            ("reportDataStartDate" Core..=)
              Core.<$> reportDataStartDate,
            ("status" Core..=) Core.<$> status
          ]
      )

-- | Report status.
--
-- /See:/ 'newReportStatus' smart constructor.
data ReportStatus = ReportStatus
  { -- | Output only. The time when this report either completed successfully or failed.
    finishTime :: (Core.Maybe Core.DateTime),
    -- | The file type of the report.
    format :: (Core.Maybe ReportStatus_Format),
    -- | Output only. The state of the report.
    state :: (Core.Maybe ReportStatus_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReportStatus' with the minimum fields required to make a request.
newReportStatus ::
  ReportStatus
newReportStatus =
  ReportStatus
    { finishTime = Core.Nothing,
      format = Core.Nothing,
      state = Core.Nothing
    }

instance Core.FromJSON ReportStatus where
  parseJSON =
    Core.withObject
      "ReportStatus"
      ( \o ->
          ReportStatus
            Core.<$> (o Core..:? "finishTime")
            Core.<*> (o Core..:? "format")
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON ReportStatus where
  toJSON ReportStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("finishTime" Core..=) Core.<$> finishTime,
            ("format" Core..=) Core.<$> format,
            ("state" Core..=) Core.<$> state
          ]
      )

-- | A Rule defines a name, and a boolean expression in [conjunctive normal form] (http:\/\/mathworld.wolfram.com\/ConjunctiveNormalForm.html){.external} that can be applied to a path event to determine if that name should be applied.
--
-- /See:/ 'newRule' smart constructor.
data Rule = Rule
  { -- | DisjunctiveMatchStatements within a Rule. DisjunctiveMatchStatement OR\'s all contained filters.
    disjunctiveMatchStatements :: (Core.Maybe [DisjunctiveMatchStatement]),
    -- | Rule name.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Rule' with the minimum fields required to make a request.
newRule ::
  Rule
newRule = Rule {disjunctiveMatchStatements = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON Rule where
  parseJSON =
    Core.withObject
      "Rule"
      ( \o ->
          Rule
            Core.<$> (o Core..:? "disjunctiveMatchStatements")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON Rule where
  toJSON Rule {..} =
    Core.object
      ( Core.catMaybes
          [ ("disjunctiveMatchStatements" Core..=)
              Core.<$> disjunctiveMatchStatements,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Request to run a stored query to generate a report.
--
-- /See:/ 'newRunQueryRequest' smart constructor.
newtype RunQueryRequest = RunQueryRequest
  { -- | Report data range used to generate the report. If unspecified, the original parent query\'s data range is used.
    dataRange :: (Core.Maybe DataRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunQueryRequest' with the minimum fields required to make a request.
newRunQueryRequest ::
  RunQueryRequest
newRunQueryRequest = RunQueryRequest {dataRange = Core.Nothing}

instance Core.FromJSON RunQueryRequest where
  parseJSON =
    Core.withObject
      "RunQueryRequest"
      ( \o ->
          RunQueryRequest Core.<$> (o Core..:? "dataRange")
      )

instance Core.ToJSON RunQueryRequest where
  toJSON RunQueryRequest {..} =
    Core.object
      ( Core.catMaybes
          [("dataRange" Core..=) Core.<$> dataRange]
      )
