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
-- Module      : Network.Google.CloudErrorReporting.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.CloudErrorReporting.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * ErrorGroup_ResolutionStatus
    ErrorGroup_ResolutionStatus
      ( ErrorGroup_ResolutionStatus_RESOLUTIONSTATUSUNSPECIFIED,
        ErrorGroup_ResolutionStatus_Open,
        ErrorGroup_ResolutionStatus_Acknowledged,
        ErrorGroup_ResolutionStatus_Resolved,
        ErrorGroup_ResolutionStatus_Muted,
        ..
      ),

    -- * ProjectsEventsListTimeRangePeriod
    ProjectsEventsListTimeRangePeriod
      ( ProjectsEventsListTimeRangePeriod_PERIODUNSPECIFIED,
        ProjectsEventsListTimeRangePeriod_PERIOD1HOUR,
        ProjectsEventsListTimeRangePeriod_PERIOD6HOURS,
        ProjectsEventsListTimeRangePeriod_PERIOD1DAY,
        ProjectsEventsListTimeRangePeriod_PERIOD1WEEK,
        ProjectsEventsListTimeRangePeriod_PERIOD30DAYS,
        ..
      ),

    -- * ProjectsGroupStatsListAlignment
    ProjectsGroupStatsListAlignment
      ( ProjectsGroupStatsListAlignment_ERRORCOUNTALIGNMENTUNSPECIFIED,
        ProjectsGroupStatsListAlignment_ALIGNMENTEQUALROUNDED,
        ProjectsGroupStatsListAlignment_ALIGNMENTEQUALATEND,
        ..
      ),

    -- * ProjectsGroupStatsListOrder
    ProjectsGroupStatsListOrder
      ( ProjectsGroupStatsListOrder_GROUPORDERUNSPECIFIED,
        ProjectsGroupStatsListOrder_COUNTDESC,
        ProjectsGroupStatsListOrder_LASTSEENDESC,
        ProjectsGroupStatsListOrder_CREATEDDESC,
        ProjectsGroupStatsListOrder_AFFECTEDUSERSDESC,
        ..
      ),

    -- * ProjectsGroupStatsListTimeRangePeriod
    ProjectsGroupStatsListTimeRangePeriod
      ( ProjectsGroupStatsListTimeRangePeriod_PERIODUNSPECIFIED,
        ProjectsGroupStatsListTimeRangePeriod_PERIOD1HOUR,
        ProjectsGroupStatsListTimeRangePeriod_PERIOD6HOURS,
        ProjectsGroupStatsListTimeRangePeriod_PERIOD1DAY,
        ProjectsGroupStatsListTimeRangePeriod_PERIOD1WEEK,
        ProjectsGroupStatsListTimeRangePeriod_PERIOD30DAYS,
        ..
      ),
  )
where

import qualified Network.Google.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
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
  Xgafv
  #-}

-- | Error group\'s resolution status. An unspecified resolution status will be interpreted as OPEN
newtype ErrorGroup_ResolutionStatus = ErrorGroup_ResolutionStatus {fromErrorGroup_ResolutionStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Status is unknown. When left unspecified in requests, it is treated like OPEN.
pattern ErrorGroup_ResolutionStatus_RESOLUTIONSTATUSUNSPECIFIED :: ErrorGroup_ResolutionStatus
pattern ErrorGroup_ResolutionStatus_RESOLUTIONSTATUSUNSPECIFIED = ErrorGroup_ResolutionStatus "RESOLUTION_STATUS_UNSPECIFIED"

-- | The error group is not being addressed. This is the default for new groups. It is also used for errors re-occurring after marked RESOLVED.
pattern ErrorGroup_ResolutionStatus_Open :: ErrorGroup_ResolutionStatus
pattern ErrorGroup_ResolutionStatus_Open = ErrorGroup_ResolutionStatus "OPEN"

-- | Error Group manually acknowledged, it can have an issue link attached.
pattern ErrorGroup_ResolutionStatus_Acknowledged :: ErrorGroup_ResolutionStatus
pattern ErrorGroup_ResolutionStatus_Acknowledged = ErrorGroup_ResolutionStatus "ACKNOWLEDGED"

-- | Error Group manually resolved, more events for this group are not expected to occur.
pattern ErrorGroup_ResolutionStatus_Resolved :: ErrorGroup_ResolutionStatus
pattern ErrorGroup_ResolutionStatus_Resolved = ErrorGroup_ResolutionStatus "RESOLVED"

-- | The error group is muted and excluded by default on group stats requests.
pattern ErrorGroup_ResolutionStatus_Muted :: ErrorGroup_ResolutionStatus
pattern ErrorGroup_ResolutionStatus_Muted = ErrorGroup_ResolutionStatus "MUTED"

{-# COMPLETE
  ErrorGroup_ResolutionStatus_RESOLUTIONSTATUSUNSPECIFIED,
  ErrorGroup_ResolutionStatus_Open,
  ErrorGroup_ResolutionStatus_Acknowledged,
  ErrorGroup_ResolutionStatus_Resolved,
  ErrorGroup_ResolutionStatus_Muted,
  ErrorGroup_ResolutionStatus
  #-}

-- | Restricts the query to the specified time range.
newtype ProjectsEventsListTimeRangePeriod = ProjectsEventsListTimeRangePeriod {fromProjectsEventsListTimeRangePeriod :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Do not use.
pattern ProjectsEventsListTimeRangePeriod_PERIODUNSPECIFIED :: ProjectsEventsListTimeRangePeriod
pattern ProjectsEventsListTimeRangePeriod_PERIODUNSPECIFIED = ProjectsEventsListTimeRangePeriod "PERIOD_UNSPECIFIED"

-- | Retrieve data for the last hour. Recommended minimum timed count duration: 1 min.
pattern ProjectsEventsListTimeRangePeriod_PERIOD1HOUR :: ProjectsEventsListTimeRangePeriod
pattern ProjectsEventsListTimeRangePeriod_PERIOD1HOUR = ProjectsEventsListTimeRangePeriod "PERIOD_1_HOUR"

-- | Retrieve data for the last 6 hours. Recommended minimum timed count duration: 10 min.
pattern ProjectsEventsListTimeRangePeriod_PERIOD6HOURS :: ProjectsEventsListTimeRangePeriod
pattern ProjectsEventsListTimeRangePeriod_PERIOD6HOURS = ProjectsEventsListTimeRangePeriod "PERIOD_6_HOURS"

-- | Retrieve data for the last day. Recommended minimum timed count duration: 1 hour.
pattern ProjectsEventsListTimeRangePeriod_PERIOD1DAY :: ProjectsEventsListTimeRangePeriod
pattern ProjectsEventsListTimeRangePeriod_PERIOD1DAY = ProjectsEventsListTimeRangePeriod "PERIOD_1_DAY"

-- | Retrieve data for the last week. Recommended minimum timed count duration: 6 hours.
pattern ProjectsEventsListTimeRangePeriod_PERIOD1WEEK :: ProjectsEventsListTimeRangePeriod
pattern ProjectsEventsListTimeRangePeriod_PERIOD1WEEK = ProjectsEventsListTimeRangePeriod "PERIOD_1_WEEK"

-- | Retrieve data for the last 30 days. Recommended minimum timed count duration: 1 day.
pattern ProjectsEventsListTimeRangePeriod_PERIOD30DAYS :: ProjectsEventsListTimeRangePeriod
pattern ProjectsEventsListTimeRangePeriod_PERIOD30DAYS = ProjectsEventsListTimeRangePeriod "PERIOD_30_DAYS"

{-# COMPLETE
  ProjectsEventsListTimeRangePeriod_PERIODUNSPECIFIED,
  ProjectsEventsListTimeRangePeriod_PERIOD1HOUR,
  ProjectsEventsListTimeRangePeriod_PERIOD6HOURS,
  ProjectsEventsListTimeRangePeriod_PERIOD1DAY,
  ProjectsEventsListTimeRangePeriod_PERIOD1WEEK,
  ProjectsEventsListTimeRangePeriod_PERIOD30DAYS,
  ProjectsEventsListTimeRangePeriod
  #-}

-- | Optional. The alignment of the timed counts to be returned. Default is @ALIGNMENT_EQUAL_AT_END@.
newtype ProjectsGroupStatsListAlignment = ProjectsGroupStatsListAlignment {fromProjectsGroupStatsListAlignment :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | No alignment specified.
pattern ProjectsGroupStatsListAlignment_ERRORCOUNTALIGNMENTUNSPECIFIED :: ProjectsGroupStatsListAlignment
pattern ProjectsGroupStatsListAlignment_ERRORCOUNTALIGNMENTUNSPECIFIED = ProjectsGroupStatsListAlignment "ERROR_COUNT_ALIGNMENT_UNSPECIFIED"

-- | The time periods shall be consecutive, have width equal to the requested duration, and be aligned at the @alignment_time@ provided in the request. The @alignment_time@ does not have to be inside the query period but even if it is outside, only time periods are returned which overlap with the query period. A rounded alignment will typically result in a different size of the first or the last time period.
pattern ProjectsGroupStatsListAlignment_ALIGNMENTEQUALROUNDED :: ProjectsGroupStatsListAlignment
pattern ProjectsGroupStatsListAlignment_ALIGNMENTEQUALROUNDED = ProjectsGroupStatsListAlignment "ALIGNMENT_EQUAL_ROUNDED"

-- | The time periods shall be consecutive, have width equal to the requested duration, and be aligned at the end of the requested time period. This can result in a different size of the first time period.
pattern ProjectsGroupStatsListAlignment_ALIGNMENTEQUALATEND :: ProjectsGroupStatsListAlignment
pattern ProjectsGroupStatsListAlignment_ALIGNMENTEQUALATEND = ProjectsGroupStatsListAlignment "ALIGNMENT_EQUAL_AT_END"

{-# COMPLETE
  ProjectsGroupStatsListAlignment_ERRORCOUNTALIGNMENTUNSPECIFIED,
  ProjectsGroupStatsListAlignment_ALIGNMENTEQUALROUNDED,
  ProjectsGroupStatsListAlignment_ALIGNMENTEQUALATEND,
  ProjectsGroupStatsListAlignment
  #-}

-- | Optional. The sort order in which the results are returned. Default is @COUNT_DESC@.
newtype ProjectsGroupStatsListOrder = ProjectsGroupStatsListOrder {fromProjectsGroupStatsListOrder :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | No group order specified.
pattern ProjectsGroupStatsListOrder_GROUPORDERUNSPECIFIED :: ProjectsGroupStatsListOrder
pattern ProjectsGroupStatsListOrder_GROUPORDERUNSPECIFIED = ProjectsGroupStatsListOrder "GROUP_ORDER_UNSPECIFIED"

-- | Total count of errors in the given time window in descending order.
pattern ProjectsGroupStatsListOrder_COUNTDESC :: ProjectsGroupStatsListOrder
pattern ProjectsGroupStatsListOrder_COUNTDESC = ProjectsGroupStatsListOrder "COUNT_DESC"

-- | Timestamp when the group was last seen in the given time window in descending order.
pattern ProjectsGroupStatsListOrder_LASTSEENDESC :: ProjectsGroupStatsListOrder
pattern ProjectsGroupStatsListOrder_LASTSEENDESC = ProjectsGroupStatsListOrder "LAST_SEEN_DESC"

-- | Timestamp when the group was created in descending order.
pattern ProjectsGroupStatsListOrder_CREATEDDESC :: ProjectsGroupStatsListOrder
pattern ProjectsGroupStatsListOrder_CREATEDDESC = ProjectsGroupStatsListOrder "CREATED_DESC"

-- | Number of affected users in the given time window in descending order.
pattern ProjectsGroupStatsListOrder_AFFECTEDUSERSDESC :: ProjectsGroupStatsListOrder
pattern ProjectsGroupStatsListOrder_AFFECTEDUSERSDESC = ProjectsGroupStatsListOrder "AFFECTED_USERS_DESC"

{-# COMPLETE
  ProjectsGroupStatsListOrder_GROUPORDERUNSPECIFIED,
  ProjectsGroupStatsListOrder_COUNTDESC,
  ProjectsGroupStatsListOrder_LASTSEENDESC,
  ProjectsGroupStatsListOrder_CREATEDDESC,
  ProjectsGroupStatsListOrder_AFFECTEDUSERSDESC,
  ProjectsGroupStatsListOrder
  #-}

-- | Restricts the query to the specified time range.
newtype ProjectsGroupStatsListTimeRangePeriod = ProjectsGroupStatsListTimeRangePeriod {fromProjectsGroupStatsListTimeRangePeriod :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Do not use.
pattern ProjectsGroupStatsListTimeRangePeriod_PERIODUNSPECIFIED :: ProjectsGroupStatsListTimeRangePeriod
pattern ProjectsGroupStatsListTimeRangePeriod_PERIODUNSPECIFIED = ProjectsGroupStatsListTimeRangePeriod "PERIOD_UNSPECIFIED"

-- | Retrieve data for the last hour. Recommended minimum timed count duration: 1 min.
pattern ProjectsGroupStatsListTimeRangePeriod_PERIOD1HOUR :: ProjectsGroupStatsListTimeRangePeriod
pattern ProjectsGroupStatsListTimeRangePeriod_PERIOD1HOUR = ProjectsGroupStatsListTimeRangePeriod "PERIOD_1_HOUR"

-- | Retrieve data for the last 6 hours. Recommended minimum timed count duration: 10 min.
pattern ProjectsGroupStatsListTimeRangePeriod_PERIOD6HOURS :: ProjectsGroupStatsListTimeRangePeriod
pattern ProjectsGroupStatsListTimeRangePeriod_PERIOD6HOURS = ProjectsGroupStatsListTimeRangePeriod "PERIOD_6_HOURS"

-- | Retrieve data for the last day. Recommended minimum timed count duration: 1 hour.
pattern ProjectsGroupStatsListTimeRangePeriod_PERIOD1DAY :: ProjectsGroupStatsListTimeRangePeriod
pattern ProjectsGroupStatsListTimeRangePeriod_PERIOD1DAY = ProjectsGroupStatsListTimeRangePeriod "PERIOD_1_DAY"

-- | Retrieve data for the last week. Recommended minimum timed count duration: 6 hours.
pattern ProjectsGroupStatsListTimeRangePeriod_PERIOD1WEEK :: ProjectsGroupStatsListTimeRangePeriod
pattern ProjectsGroupStatsListTimeRangePeriod_PERIOD1WEEK = ProjectsGroupStatsListTimeRangePeriod "PERIOD_1_WEEK"

-- | Retrieve data for the last 30 days. Recommended minimum timed count duration: 1 day.
pattern ProjectsGroupStatsListTimeRangePeriod_PERIOD30DAYS :: ProjectsGroupStatsListTimeRangePeriod
pattern ProjectsGroupStatsListTimeRangePeriod_PERIOD30DAYS = ProjectsGroupStatsListTimeRangePeriod "PERIOD_30_DAYS"

{-# COMPLETE
  ProjectsGroupStatsListTimeRangePeriod_PERIODUNSPECIFIED,
  ProjectsGroupStatsListTimeRangePeriod_PERIOD1HOUR,
  ProjectsGroupStatsListTimeRangePeriod_PERIOD6HOURS,
  ProjectsGroupStatsListTimeRangePeriod_PERIOD1DAY,
  ProjectsGroupStatsListTimeRangePeriod_PERIOD1WEEK,
  ProjectsGroupStatsListTimeRangePeriod_PERIOD30DAYS,
  ProjectsGroupStatsListTimeRangePeriod
  #-}
