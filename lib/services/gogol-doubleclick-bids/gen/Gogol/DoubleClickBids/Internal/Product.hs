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
-- Module      : Gogol.DoubleClickBids.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.DoubleClickBids.Internal.Product
  ( -- * DataRange
    DataRange (..),
    newDataRange,

    -- * Date
    Date (..),
    newDate,

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

    -- * RunQueryRequest
    RunQueryRequest (..),
    newRunQueryRequest,
  )
where

import Gogol.DoubleClickBids.Internal.Sum
import Gogol.Prelude qualified as Core

-- | The date range to be reported on.
--
-- /See:/ 'newDataRange' smart constructor.
data DataRange = DataRange
  { -- | If @CUSTOM_DATES@ is assigned to range, this field specifies the end date for the date range that is reported on. This field is required if using @CUSTOM_DATES@ range and will be ignored otherwise.
    customEndDate :: (Core.Maybe Date),
    -- | If @CUSTOM_DATES@ is assigned to range, this field specifies the starting date for the date range that is reported on. This field is required if using @CUSTOM_DATES@ range and will be ignored otherwise.
    customStartDate :: (Core.Maybe Date),
    -- | The preset date range to be reported on. If @CUSTOM_DATES@ is assigned to this field, fields custom/start/date and custom/end/date must be set to specify the custom date range.
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
newDate =
  Date
    { day = Core.Nothing,
      month = Core.Nothing,
      year = Core.Nothing
    }

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

-- | Represents a single filter rule.
--
-- /See:/ 'newFilterPair' smart constructor.
data FilterPair = FilterPair
  { -- | The type of value to filter by. Defined by a </bid-manager/reference/rest/v2/filters-metrics#filters Filter> value.
    type' :: (Core.Maybe Core.Text),
    -- | The identifying value to filter by, such as a relevant resource ID.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FilterPair' with the minimum fields required to make a request.
newFilterPair ::
  FilterPair
newFilterPair =
  FilterPair {type' = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON FilterPair where
  parseJSON =
    Core.withObject
      "FilterPair"
      ( \o ->
          FilterPair
            Core.<$> (o Core..:? "type")
            Core.<*> (o Core..:? "value")
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
  { -- | A token to retrieve the next page of results. Pass this value in the page_token field in the subsequent call to @queries.list@ method to retrieve the next page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The list of queries. This field will be absent if empty.
    queries :: (Core.Maybe [Query])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListQueriesResponse' with the minimum fields required to make a request.
newListQueriesResponse ::
  ListQueriesResponse
newListQueriesResponse =
  ListQueriesResponse
    { nextPageToken = Core.Nothing,
      queries = Core.Nothing
    }

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
  { -- | A token to retrieve the next page of results. Pass this value in the page_token field in the subsequent call to @queries.reports.list@ method to retrieve the next page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The list of reports. This field will be absent if empty.
    reports :: (Core.Maybe [Report])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListReportsResponse' with the minimum fields required to make a request.
newListReportsResponse ::
  ListReportsResponse
newListReportsResponse =
  ListReportsResponse
    { nextPageToken = Core.Nothing,
      reports = Core.Nothing
    }

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

-- | Report parameter options.
--
-- /See:/ 'newOptions' smart constructor.
newtype Options = Options
  { -- | Whether to include data for audience lists specifically targeted by filtered line items or insertion orders. Requires the use of @FILTER_INSERTION_ORDER@ or @FILTER_LINE_ITEM@ filters.
    includeOnlyTargetedUserLists :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Options' with the minimum fields required to make a request.
newOptions ::
  Options
newOptions = Options {includeOnlyTargetedUserLists = Core.Nothing}

instance Core.FromJSON Options where
  parseJSON =
    Core.withObject
      "Options"
      ( \o ->
          Options Core.<$> (o Core..:? "includeOnlyTargetedUserLists")
      )

instance Core.ToJSON Options where
  toJSON Options {..} =
    Core.object
      ( Core.catMaybes
          [ ("includeOnlyTargetedUserLists" Core..=)
              Core.<$> includeOnlyTargetedUserLists
          ]
      )

-- | Parameters of a generated report.
--
-- /See:/ 'newParameters' smart constructor.
data Parameters = Parameters
  { -- | Filters to limit the scope of reported data.
    filters :: (Core.Maybe [FilterPair]),
    -- | Dimensions by which to segment and group the data. Defined by </bid-manager/reference/rest/v2/filters-metrics#filters Filter> values.
    groupBys :: (Core.Maybe [Core.Text]),
    -- | Metrics to define the data populating the report. Defined by </bid-manager/reference/rest/v2/filters-metrics#metrics Metric> values.
    metrics :: (Core.Maybe [Core.Text]),
    -- | Additional report parameter options.
    options :: (Core.Maybe Options),
    -- | The type of the report. The type of the report determines the dimesions, filters, and metrics that can be used.
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

-- | A single query used to generate a report.
--
-- /See:/ 'newQuery' smart constructor.
data Query = Query
  { -- | The metadata of the query.
    metadata :: (Core.Maybe QueryMetadata),
    -- | The parameters of the report generated by the query.
    params :: (Core.Maybe Parameters),
    -- | Output only. The unique ID of the query.
    queryId :: (Core.Maybe Core.Int64),
    -- | When and how often the query is scheduled to run. If the frequency field is set to @ONE_TIME@, the query will only run when queries.run is called.
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
            Core.<*> (o Core..:? "queryId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "schedule")
      )

instance Core.ToJSON Query where
  toJSON Query {..} =
    Core.object
      ( Core.catMaybes
          [ ("metadata" Core..=) Core.<$> metadata,
            ("params" Core..=) Core.<$> params,
            ("queryId" Core..=) Core.. Core.AsText Core.<$> queryId,
            ("schedule" Core..=) Core.<$> schedule
          ]
      )

-- | The metadata of the query.
--
-- /See:/ 'newQueryMetadata' smart constructor.
data QueryMetadata = QueryMetadata
  { -- | The date range the report generated by the query will report on. This date range will be defined by the time zone as used by the advertiser.
    dataRange :: (Core.Maybe DataRange),
    -- | The format of the report generated by the query.
    format :: (Core.Maybe QueryMetadata_Format),
    -- | Whether an email notification is sent to the query creator when a report generated by the query is ready. This value is @false@ by default.
    sendNotification :: (Core.Maybe Core.Bool),
    -- | List of additional email addresses with which to share the query. If send_notification is @true@, these email addresses will receive a notification when a report generated by the query is ready. If these email addresses are connected to Display & Video 360 users, the query will be available to them in the Display & Video 360 interface.
    shareEmailAddress :: (Core.Maybe [Core.Text]),
    -- | The display name of the query. This value will be used in the file name of reports generated by the query.
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
            ("sendNotification" Core..=) Core.<$> sendNotification,
            ("shareEmailAddress" Core..=) Core.<$> shareEmailAddress,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | Settings on when and how frequently to run a query.
--
-- /See:/ 'newQuerySchedule' smart constructor.
data QuerySchedule = QuerySchedule
  { -- | The date on which to end the scheduled runs. This field is required if frequency is not set to @ONE_TIME@. Otherwise, it will be ignored.
    endDate :: (Core.Maybe Date),
    -- | How frequently to run the query. If set to @ONE_TIME@, the query will only be run when queries.run is called.
    frequency :: (Core.Maybe QuerySchedule_Frequency),
    -- | The canonical code for the timezone the query schedule is based on. Scheduled runs are usually conducted in the morning of a given day. Defaults to @America\/New_York@.
    nextRunTimezoneCode :: (Core.Maybe Core.Text),
    -- | The date on which to begin the scheduled runs. This field is required if frequency is not set to @ONE_TIME@. Otherwise, it will be ignored.
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
            ("nextRunTimezoneCode" Core..=) Core.<$> nextRunTimezoneCode,
            ("startDate" Core..=) Core.<$> startDate
          ]
      )

-- | A single report generated by its parent report.
--
-- /See:/ 'newReport' smart constructor.
data Report = Report
  { -- | The key information identifying the report.
    key :: (Core.Maybe ReportKey),
    -- | The metadata of the report.
    metadata :: (Core.Maybe ReportMetadata),
    -- | The parameters of the report.
    params :: (Core.Maybe Parameters)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Report' with the minimum fields required to make a request.
newReport ::
  Report
newReport =
  Report
    { key = Core.Nothing,
      metadata = Core.Nothing,
      params = Core.Nothing
    }

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

-- | Identifying information of a report.
--
-- /See:/ 'newReportKey' smart constructor.
data ReportKey = ReportKey
  { -- | Output only. The unique ID of the query that generated the report.
    queryId :: (Core.Maybe Core.Int64),
    -- | Output only. The unique ID of the report.
    reportId :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReportKey' with the minimum fields required to make a request.
newReportKey ::
  ReportKey
newReportKey =
  ReportKey {queryId = Core.Nothing, reportId = Core.Nothing}

instance Core.FromJSON ReportKey where
  parseJSON =
    Core.withObject
      "ReportKey"
      ( \o ->
          ReportKey
            Core.<$> (o Core..:? "queryId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "reportId" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON ReportKey where
  toJSON ReportKey {..} =
    Core.object
      ( Core.catMaybes
          [ ("queryId" Core..=) Core.. Core.AsText Core.<$> queryId,
            ("reportId" Core..=) Core.. Core.AsText Core.<$> reportId
          ]
      )

-- | The metadata of a report.
--
-- /See:/ 'newReportMetadata' smart constructor.
data ReportMetadata = ReportMetadata
  { -- | Output only. The location of the generated report file in Google Cloud Storage. This field will be absent if status.state is not @DONE@.
    googleCloudStoragePath :: (Core.Maybe Core.Text),
    -- | The end date of the report data date range.
    reportDataEndDate :: (Core.Maybe Date),
    -- | The start date of the report data date range.
    reportDataStartDate :: (Core.Maybe Date),
    -- | The status of the report.
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
            ("reportDataEndDate" Core..=) Core.<$> reportDataEndDate,
            ("reportDataStartDate" Core..=) Core.<$> reportDataStartDate,
            ("status" Core..=) Core.<$> status
          ]
      )

-- | The status of a report.
--
-- /See:/ 'newReportStatus' smart constructor.
data ReportStatus = ReportStatus
  { -- | Output only. The timestamp of when report generation finished successfully or in failure. This field will not be set unless state is @DONE@ or @FAILED@.
    finishTime :: (Core.Maybe Core.DateTime),
    -- | The format of the generated report file.
    format :: (Core.Maybe ReportStatus_Format),
    -- | Output only. The state of the report generation.
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

-- | Details specifying how to run a query.
--
-- /See:/ 'newRunQueryRequest' smart constructor.
newtype RunQueryRequest = RunQueryRequest
  { -- | The date range used by the query to generate the report. If unspecified, the query\'s original data_range is used.
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
      (\o -> RunQueryRequest Core.<$> (o Core..:? "dataRange"))

instance Core.ToJSON RunQueryRequest where
  toJSON RunQueryRequest {..} =
    Core.object
      (Core.catMaybes [("dataRange" Core..=) Core.<$> dataRange])
