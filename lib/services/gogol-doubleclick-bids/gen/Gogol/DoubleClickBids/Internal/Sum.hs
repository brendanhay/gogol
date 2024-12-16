{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.DoubleClickBids.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.DoubleClickBids.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * DataRange_Range
    DataRange_Range
      (
        DataRange_Range_RANGEUNSPECIFIED,
        DataRange_Range_CUSTOMDATES,
        DataRange_Range_CURRENTDAY,
        DataRange_Range_PREVIOUSDAY,
        DataRange_Range_WEEKTODATE,
        DataRange_Range_MONTHTODATE,
        DataRange_Range_QUARTERTODATE,
        DataRange_Range_YEARTODATE,
        DataRange_Range_PREVIOUSWEEK,
        DataRange_Range_PREVIOUSMONTH,
        DataRange_Range_PREVIOUSQUARTER,
        DataRange_Range_PREVIOUSYEAR,
        DataRange_Range_LAST7DAYS,
        DataRange_Range_LAST30DAYS,
        DataRange_Range_LAST90DAYS,
        DataRange_Range_LAST365DAYS,
        DataRange_Range_ALLTIME,
        DataRange_Range_LAST14DAYS,
        DataRange_Range_LAST60DAYS,
        ..
      ),

    -- * Parameters_Type
    Parameters_Type
      (
        Parameters_Type_REPORTTYPEUNSPECIFIED,
        Parameters_Type_Standard,
        Parameters_Type_INVENTORYAVAILABILITY,
        Parameters_Type_AUDIENCECOMPOSITION,
        Parameters_Type_Floodlight,
        Parameters_Type_Youtube,
        Parameters_Type_Grp,
        Parameters_Type_YOUTUBEPROGRAMMATICGUARANTEED,
        Parameters_Type_Reach,
        Parameters_Type_UNIQUEREACHAUDIENCE,
        Parameters_Type_FULLPATH,
        Parameters_Type_PATHATTRIBUTION,
        ..
      ),

    -- * QueryMetadata_Format
    QueryMetadata_Format
      (
        QueryMetadata_Format_FORMATUNSPECIFIED,
        QueryMetadata_Format_Csv,
        QueryMetadata_Format_Xlsx,
        ..
      ),

    -- * QuerySchedule_Frequency
    QuerySchedule_Frequency
      (
        QuerySchedule_Frequency_FREQUENCYUNSPECIFIED,
        QuerySchedule_Frequency_ONETIME,
        QuerySchedule_Frequency_Daily,
        QuerySchedule_Frequency_Weekly,
        QuerySchedule_Frequency_SEMIMONTHLY,
        QuerySchedule_Frequency_Monthly,
        QuerySchedule_Frequency_Quarterly,
        QuerySchedule_Frequency_Yearly,
        ..
      ),

    -- * ReportStatus_Format
    ReportStatus_Format
      (
        ReportStatus_Format_FORMATUNSPECIFIED,
        ReportStatus_Format_Csv,
        ReportStatus_Format_Xlsx,
        ..
      ),

    -- * ReportStatus_State
    ReportStatus_State
      (
        ReportStatus_State_STATEUNSPECIFIED,
        ReportStatus_State_Queued,
        ReportStatus_State_Running,
        ReportStatus_State_Done,
        ReportStatus_State_Failed,
        ..
      ),
  ) where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv { fromXgafv :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv #-}

-- | The preset date range to be reported on. If @CUSTOM_DATES@ is assigned to this field, fields custom/start/date and custom/end/date must be set to specify the custom date range.
newtype DataRange_Range = DataRange_Range { fromDataRange_Range :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Default value when range is not specified or is unknown in this version.
pattern DataRange_Range_RANGEUNSPECIFIED :: DataRange_Range
pattern DataRange_Range_RANGEUNSPECIFIED = DataRange_Range "RANGE_UNSPECIFIED"

-- | Custom date range.
pattern DataRange_Range_CUSTOMDATES :: DataRange_Range
pattern DataRange_Range_CUSTOMDATES = DataRange_Range "CUSTOM_DATES"

-- | Current day.
pattern DataRange_Range_CURRENTDAY :: DataRange_Range
pattern DataRange_Range_CURRENTDAY = DataRange_Range "CURRENT_DAY"

-- | Previous day.
pattern DataRange_Range_PREVIOUSDAY :: DataRange_Range
pattern DataRange_Range_PREVIOUSDAY = DataRange_Range "PREVIOUS_DAY"

-- | All days, including the current day, since the most recent Sunday.
pattern DataRange_Range_WEEKTODATE :: DataRange_Range
pattern DataRange_Range_WEEKTODATE = DataRange_Range "WEEK_TO_DATE"

-- | All days, including the current day, since the start of the current month.
pattern DataRange_Range_MONTHTODATE :: DataRange_Range
pattern DataRange_Range_MONTHTODATE = DataRange_Range "MONTH_TO_DATE"

-- | All days, including the current day, since the start of the current quarter.
pattern DataRange_Range_QUARTERTODATE :: DataRange_Range
pattern DataRange_Range_QUARTERTODATE = DataRange_Range "QUARTER_TO_DATE"

-- | All days, including the current day, since the start of the current calendar year.
pattern DataRange_Range_YEARTODATE :: DataRange_Range
pattern DataRange_Range_YEARTODATE = DataRange_Range "YEAR_TO_DATE"

-- | The previous completed week, beginning from Sunday.
pattern DataRange_Range_PREVIOUSWEEK :: DataRange_Range
pattern DataRange_Range_PREVIOUSWEEK = DataRange_Range "PREVIOUS_WEEK"

-- | The previous completed calendar month.
pattern DataRange_Range_PREVIOUSMONTH :: DataRange_Range
pattern DataRange_Range_PREVIOUSMONTH = DataRange_Range "PREVIOUS_MONTH"

-- | The previous completed quarter.
pattern DataRange_Range_PREVIOUSQUARTER :: DataRange_Range
pattern DataRange_Range_PREVIOUSQUARTER = DataRange_Range "PREVIOUS_QUARTER"

-- | The previous completed calendar year.
pattern DataRange_Range_PREVIOUSYEAR :: DataRange_Range
pattern DataRange_Range_PREVIOUSYEAR = DataRange_Range "PREVIOUS_YEAR"

-- | The previous 7 days, excluding the current day.
pattern DataRange_Range_LAST7DAYS :: DataRange_Range
pattern DataRange_Range_LAST7DAYS = DataRange_Range "LAST_7_DAYS"

-- | The previous 30 days, excluding the current day.
pattern DataRange_Range_LAST30DAYS :: DataRange_Range
pattern DataRange_Range_LAST30DAYS = DataRange_Range "LAST_30_DAYS"

-- | The previous 90 days, excluding the current day.
pattern DataRange_Range_LAST90DAYS :: DataRange_Range
pattern DataRange_Range_LAST90DAYS = DataRange_Range "LAST_90_DAYS"

-- | The previous 365 days, excluding the current day.
pattern DataRange_Range_LAST365DAYS :: DataRange_Range
pattern DataRange_Range_LAST365DAYS = DataRange_Range "LAST_365_DAYS"

-- | All time for which data is available, excluding the current day.
pattern DataRange_Range_ALLTIME :: DataRange_Range
pattern DataRange_Range_ALLTIME = DataRange_Range "ALL_TIME"

-- | The previous 14 days, excluding the current day.
pattern DataRange_Range_LAST14DAYS :: DataRange_Range
pattern DataRange_Range_LAST14DAYS = DataRange_Range "LAST_14_DAYS"

-- | The previous 60 days, excluding the current day.
pattern DataRange_Range_LAST60DAYS :: DataRange_Range
pattern DataRange_Range_LAST60DAYS = DataRange_Range "LAST_60_DAYS"

{-# COMPLETE
  DataRange_Range_RANGEUNSPECIFIED,
  DataRange_Range_CUSTOMDATES,
  DataRange_Range_CURRENTDAY,
  DataRange_Range_PREVIOUSDAY,
  DataRange_Range_WEEKTODATE,
  DataRange_Range_MONTHTODATE,
  DataRange_Range_QUARTERTODATE,
  DataRange_Range_YEARTODATE,
  DataRange_Range_PREVIOUSWEEK,
  DataRange_Range_PREVIOUSMONTH,
  DataRange_Range_PREVIOUSQUARTER,
  DataRange_Range_PREVIOUSYEAR,
  DataRange_Range_LAST7DAYS,
  DataRange_Range_LAST30DAYS,
  DataRange_Range_LAST90DAYS,
  DataRange_Range_LAST365DAYS,
  DataRange_Range_ALLTIME,
  DataRange_Range_LAST14DAYS,
  DataRange_Range_LAST60DAYS,
  DataRange_Range #-}

-- | The type of the report. The type of the report determines the dimesions, filters, and metrics that can be used.
newtype Parameters_Type = Parameters_Type { fromParameters_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Default value when report type is not specified or is unknown in this version.
pattern Parameters_Type_REPORTTYPEUNSPECIFIED :: Parameters_Type
pattern Parameters_Type_REPORTTYPEUNSPECIFIED = Parameters_Type "REPORT_TYPE_UNSPECIFIED"

-- | Standard report.
pattern Parameters_Type_Standard :: Parameters_Type
pattern Parameters_Type_Standard = Parameters_Type "STANDARD"

-- | Inventory Availability report.
pattern Parameters_Type_INVENTORYAVAILABILITY :: Parameters_Type
pattern Parameters_Type_INVENTORYAVAILABILITY = Parameters_Type "INVENTORY_AVAILABILITY"

-- | Audience Composition report.
pattern Parameters_Type_AUDIENCECOMPOSITION :: Parameters_Type
pattern Parameters_Type_AUDIENCECOMPOSITION = Parameters_Type "AUDIENCE_COMPOSITION"

-- | Floodlight report.
pattern Parameters_Type_Floodlight :: Parameters_Type
pattern Parameters_Type_Floodlight = Parameters_Type "FLOODLIGHT"

-- | YouTube report.
pattern Parameters_Type_Youtube :: Parameters_Type
pattern Parameters_Type_Youtube = Parameters_Type "YOUTUBE"

-- | GRP report.
pattern Parameters_Type_Grp :: Parameters_Type
pattern Parameters_Type_Grp = Parameters_Type "GRP"

-- | YouTube Programmatic Guaranteed report.
pattern Parameters_Type_YOUTUBEPROGRAMMATICGUARANTEED :: Parameters_Type
pattern Parameters_Type_YOUTUBEPROGRAMMATICGUARANTEED = Parameters_Type "YOUTUBE_PROGRAMMATIC_GUARANTEED"

-- | Reach report.
pattern Parameters_Type_Reach :: Parameters_Type
pattern Parameters_Type_Reach = Parameters_Type "REACH"

-- | Unique Reach Audience report.
pattern Parameters_Type_UNIQUEREACHAUDIENCE :: Parameters_Type
pattern Parameters_Type_UNIQUEREACHAUDIENCE = Parameters_Type "UNIQUE_REACH_AUDIENCE"

-- | Full Path report.
pattern Parameters_Type_FULLPATH :: Parameters_Type
pattern Parameters_Type_FULLPATH = Parameters_Type "FULL_PATH"

-- | Path Attribution report.
pattern Parameters_Type_PATHATTRIBUTION :: Parameters_Type
pattern Parameters_Type_PATHATTRIBUTION = Parameters_Type "PATH_ATTRIBUTION"

{-# COMPLETE
  Parameters_Type_REPORTTYPEUNSPECIFIED,
  Parameters_Type_Standard,
  Parameters_Type_INVENTORYAVAILABILITY,
  Parameters_Type_AUDIENCECOMPOSITION,
  Parameters_Type_Floodlight,
  Parameters_Type_Youtube,
  Parameters_Type_Grp,
  Parameters_Type_YOUTUBEPROGRAMMATICGUARANTEED,
  Parameters_Type_Reach,
  Parameters_Type_UNIQUEREACHAUDIENCE,
  Parameters_Type_FULLPATH,
  Parameters_Type_PATHATTRIBUTION,
  Parameters_Type #-}

-- | The format of the report generated by the query.
newtype QueryMetadata_Format = QueryMetadata_Format { fromQueryMetadata_Format :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Default value when format is not specified or is unknown in this version.
pattern QueryMetadata_Format_FORMATUNSPECIFIED :: QueryMetadata_Format
pattern QueryMetadata_Format_FORMATUNSPECIFIED = QueryMetadata_Format "FORMAT_UNSPECIFIED"

-- | CSV.
pattern QueryMetadata_Format_Csv :: QueryMetadata_Format
pattern QueryMetadata_Format_Csv = QueryMetadata_Format "CSV"

-- | Excel.
pattern QueryMetadata_Format_Xlsx :: QueryMetadata_Format
pattern QueryMetadata_Format_Xlsx = QueryMetadata_Format "XLSX"

{-# COMPLETE
  QueryMetadata_Format_FORMATUNSPECIFIED,
  QueryMetadata_Format_Csv,
  QueryMetadata_Format_Xlsx,
  QueryMetadata_Format #-}

-- | How frequently to run the query. If set to @ONE_TIME@, the query will only be run when queries.run is called.
newtype QuerySchedule_Frequency = QuerySchedule_Frequency { fromQuerySchedule_Frequency :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Default value when frequency is not specified or is unknown in this version.
pattern QuerySchedule_Frequency_FREQUENCYUNSPECIFIED :: QuerySchedule_Frequency
pattern QuerySchedule_Frequency_FREQUENCYUNSPECIFIED = QuerySchedule_Frequency "FREQUENCY_UNSPECIFIED"

-- | Only when the query is run manually.
pattern QuerySchedule_Frequency_ONETIME :: QuerySchedule_Frequency
pattern QuerySchedule_Frequency_ONETIME = QuerySchedule_Frequency "ONE_TIME"

-- | Once a day.
pattern QuerySchedule_Frequency_Daily :: QuerySchedule_Frequency
pattern QuerySchedule_Frequency_Daily = QuerySchedule_Frequency "DAILY"

-- | Once a week.
pattern QuerySchedule_Frequency_Weekly :: QuerySchedule_Frequency
pattern QuerySchedule_Frequency_Weekly = QuerySchedule_Frequency "WEEKLY"

-- | Twice a month.
pattern QuerySchedule_Frequency_SEMIMONTHLY :: QuerySchedule_Frequency
pattern QuerySchedule_Frequency_SEMIMONTHLY = QuerySchedule_Frequency "SEMI_MONTHLY"

-- | Once a month.
pattern QuerySchedule_Frequency_Monthly :: QuerySchedule_Frequency
pattern QuerySchedule_Frequency_Monthly = QuerySchedule_Frequency "MONTHLY"

-- | Once a quarter.
pattern QuerySchedule_Frequency_Quarterly :: QuerySchedule_Frequency
pattern QuerySchedule_Frequency_Quarterly = QuerySchedule_Frequency "QUARTERLY"

-- | Once a year.
pattern QuerySchedule_Frequency_Yearly :: QuerySchedule_Frequency
pattern QuerySchedule_Frequency_Yearly = QuerySchedule_Frequency "YEARLY"

{-# COMPLETE
  QuerySchedule_Frequency_FREQUENCYUNSPECIFIED,
  QuerySchedule_Frequency_ONETIME,
  QuerySchedule_Frequency_Daily,
  QuerySchedule_Frequency_Weekly,
  QuerySchedule_Frequency_SEMIMONTHLY,
  QuerySchedule_Frequency_Monthly,
  QuerySchedule_Frequency_Quarterly,
  QuerySchedule_Frequency_Yearly,
  QuerySchedule_Frequency #-}

-- | The format of the generated report file.
newtype ReportStatus_Format = ReportStatus_Format { fromReportStatus_Format :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Default value when format is not specified or is unknown in this version.
pattern ReportStatus_Format_FORMATUNSPECIFIED :: ReportStatus_Format
pattern ReportStatus_Format_FORMATUNSPECIFIED = ReportStatus_Format "FORMAT_UNSPECIFIED"

-- | CSV.
pattern ReportStatus_Format_Csv :: ReportStatus_Format
pattern ReportStatus_Format_Csv = ReportStatus_Format "CSV"

-- | Excel.
pattern ReportStatus_Format_Xlsx :: ReportStatus_Format
pattern ReportStatus_Format_Xlsx = ReportStatus_Format "XLSX"

{-# COMPLETE
  ReportStatus_Format_FORMATUNSPECIFIED,
  ReportStatus_Format_Csv,
  ReportStatus_Format_Xlsx,
  ReportStatus_Format #-}

-- | Output only. The state of the report generation.
newtype ReportStatus_State = ReportStatus_State { fromReportStatus_State :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Default value when state is not specified or is unknown in this version.
pattern ReportStatus_State_STATEUNSPECIFIED :: ReportStatus_State
pattern ReportStatus_State_STATEUNSPECIFIED = ReportStatus_State "STATE_UNSPECIFIED"

-- | The report is queued to run.
pattern ReportStatus_State_Queued :: ReportStatus_State
pattern ReportStatus_State_Queued = ReportStatus_State "QUEUED"

-- | The report is currently running.
pattern ReportStatus_State_Running :: ReportStatus_State
pattern ReportStatus_State_Running = ReportStatus_State "RUNNING"

-- | The report has finished running successfully.
pattern ReportStatus_State_Done :: ReportStatus_State
pattern ReportStatus_State_Done = ReportStatus_State "DONE"

-- | The report has finished running in failure.
pattern ReportStatus_State_Failed :: ReportStatus_State
pattern ReportStatus_State_Failed = ReportStatus_State "FAILED"

{-# COMPLETE
  ReportStatus_State_STATEUNSPECIFIED,
  ReportStatus_State_Queued,
  ReportStatus_State_Running,
  ReportStatus_State_Done,
  ReportStatus_State_Failed,
  ReportStatus_State #-}
