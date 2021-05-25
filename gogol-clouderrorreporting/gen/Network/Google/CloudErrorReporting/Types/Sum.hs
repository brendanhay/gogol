{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudErrorReporting.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudErrorReporting.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | Restricts the query to the specified time range.
data ProjectsEventsListTimeRangePeriod
    = PeriodUnspecified
      -- ^ @PERIOD_UNSPECIFIED@
      -- Do not use.
    | Period1Hour
      -- ^ @PERIOD_1_HOUR@
      -- Retrieve data for the last hour. Recommended minimum timed count
      -- duration: 1 min.
    | Period6Hours
      -- ^ @PERIOD_6_HOURS@
      -- Retrieve data for the last 6 hours. Recommended minimum timed count
      -- duration: 10 min.
    | Period1Day
      -- ^ @PERIOD_1_DAY@
      -- Retrieve data for the last day. Recommended minimum timed count
      -- duration: 1 hour.
    | Period1Week
      -- ^ @PERIOD_1_WEEK@
      -- Retrieve data for the last week. Recommended minimum timed count
      -- duration: 6 hours.
    | Period30Days
      -- ^ @PERIOD_30_DAYS@
      -- Retrieve data for the last 30 days. Recommended minimum timed count
      -- duration: 1 day.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsEventsListTimeRangePeriod

instance FromHttpApiData ProjectsEventsListTimeRangePeriod where
    parseQueryParam = \case
        "PERIOD_UNSPECIFIED" -> Right PeriodUnspecified
        "PERIOD_1_HOUR" -> Right Period1Hour
        "PERIOD_6_HOURS" -> Right Period6Hours
        "PERIOD_1_DAY" -> Right Period1Day
        "PERIOD_1_WEEK" -> Right Period1Week
        "PERIOD_30_DAYS" -> Right Period30Days
        x -> Left ("Unable to parse ProjectsEventsListTimeRangePeriod from: " <> x)

instance ToHttpApiData ProjectsEventsListTimeRangePeriod where
    toQueryParam = \case
        PeriodUnspecified -> "PERIOD_UNSPECIFIED"
        Period1Hour -> "PERIOD_1_HOUR"
        Period6Hours -> "PERIOD_6_HOURS"
        Period1Day -> "PERIOD_1_DAY"
        Period1Week -> "PERIOD_1_WEEK"
        Period30Days -> "PERIOD_30_DAYS"

instance FromJSON ProjectsEventsListTimeRangePeriod where
    parseJSON = parseJSONText "ProjectsEventsListTimeRangePeriod"

instance ToJSON ProjectsEventsListTimeRangePeriod where
    toJSON = toJSONText

-- | Optional. The alignment of the timed counts to be returned. Default is
-- \`ALIGNMENT_EQUAL_AT_END\`.
data ProjectsGroupStatsListAlignment
    = ErrorCountAlignmentUnspecified
      -- ^ @ERROR_COUNT_ALIGNMENT_UNSPECIFIED@
      -- No alignment specified.
    | AlignmentEqualRounded
      -- ^ @ALIGNMENT_EQUAL_ROUNDED@
      -- The time periods shall be consecutive, have width equal to the requested
      -- duration, and be aligned at the \`alignment_time\` provided in the
      -- request. The \`alignment_time\` does not have to be inside the query
      -- period but even if it is outside, only time periods are returned which
      -- overlap with the query period. A rounded alignment will typically result
      -- in a different size of the first or the last time period.
    | AlignmentEqualAtEnd
      -- ^ @ALIGNMENT_EQUAL_AT_END@
      -- The time periods shall be consecutive, have width equal to the requested
      -- duration, and be aligned at the end of the requested time period. This
      -- can result in a different size of the first time period.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsGroupStatsListAlignment

instance FromHttpApiData ProjectsGroupStatsListAlignment where
    parseQueryParam = \case
        "ERROR_COUNT_ALIGNMENT_UNSPECIFIED" -> Right ErrorCountAlignmentUnspecified
        "ALIGNMENT_EQUAL_ROUNDED" -> Right AlignmentEqualRounded
        "ALIGNMENT_EQUAL_AT_END" -> Right AlignmentEqualAtEnd
        x -> Left ("Unable to parse ProjectsGroupStatsListAlignment from: " <> x)

instance ToHttpApiData ProjectsGroupStatsListAlignment where
    toQueryParam = \case
        ErrorCountAlignmentUnspecified -> "ERROR_COUNT_ALIGNMENT_UNSPECIFIED"
        AlignmentEqualRounded -> "ALIGNMENT_EQUAL_ROUNDED"
        AlignmentEqualAtEnd -> "ALIGNMENT_EQUAL_AT_END"

instance FromJSON ProjectsGroupStatsListAlignment where
    parseJSON = parseJSONText "ProjectsGroupStatsListAlignment"

instance ToJSON ProjectsGroupStatsListAlignment where
    toJSON = toJSONText

-- | Optional. The sort order in which the results are returned. Default is
-- \`COUNT_DESC\`.
data ProjectsGroupStatsListOrder
    = GroupOrderUnspecified
      -- ^ @GROUP_ORDER_UNSPECIFIED@
      -- No group order specified.
    | CountDesc
      -- ^ @COUNT_DESC@
      -- Total count of errors in the given time window in descending order.
    | LastSeenDesc
      -- ^ @LAST_SEEN_DESC@
      -- Timestamp when the group was last seen in the given time window in
      -- descending order.
    | CreatedDesc
      -- ^ @CREATED_DESC@
      -- Timestamp when the group was created in descending order.
    | AffectedUsersDesc
      -- ^ @AFFECTED_USERS_DESC@
      -- Number of affected users in the given time window in descending order.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsGroupStatsListOrder

instance FromHttpApiData ProjectsGroupStatsListOrder where
    parseQueryParam = \case
        "GROUP_ORDER_UNSPECIFIED" -> Right GroupOrderUnspecified
        "COUNT_DESC" -> Right CountDesc
        "LAST_SEEN_DESC" -> Right LastSeenDesc
        "CREATED_DESC" -> Right CreatedDesc
        "AFFECTED_USERS_DESC" -> Right AffectedUsersDesc
        x -> Left ("Unable to parse ProjectsGroupStatsListOrder from: " <> x)

instance ToHttpApiData ProjectsGroupStatsListOrder where
    toQueryParam = \case
        GroupOrderUnspecified -> "GROUP_ORDER_UNSPECIFIED"
        CountDesc -> "COUNT_DESC"
        LastSeenDesc -> "LAST_SEEN_DESC"
        CreatedDesc -> "CREATED_DESC"
        AffectedUsersDesc -> "AFFECTED_USERS_DESC"

instance FromJSON ProjectsGroupStatsListOrder where
    parseJSON = parseJSONText "ProjectsGroupStatsListOrder"

instance ToJSON ProjectsGroupStatsListOrder where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | Restricts the query to the specified time range.
data ProjectsGroupStatsListTimeRangePeriod
    = PGSLTRPPeriodUnspecified
      -- ^ @PERIOD_UNSPECIFIED@
      -- Do not use.
    | PGSLTRPPeriod1Hour
      -- ^ @PERIOD_1_HOUR@
      -- Retrieve data for the last hour. Recommended minimum timed count
      -- duration: 1 min.
    | PGSLTRPPeriod6Hours
      -- ^ @PERIOD_6_HOURS@
      -- Retrieve data for the last 6 hours. Recommended minimum timed count
      -- duration: 10 min.
    | PGSLTRPPeriod1Day
      -- ^ @PERIOD_1_DAY@
      -- Retrieve data for the last day. Recommended minimum timed count
      -- duration: 1 hour.
    | PGSLTRPPeriod1Week
      -- ^ @PERIOD_1_WEEK@
      -- Retrieve data for the last week. Recommended minimum timed count
      -- duration: 6 hours.
    | PGSLTRPPeriod30Days
      -- ^ @PERIOD_30_DAYS@
      -- Retrieve data for the last 30 days. Recommended minimum timed count
      -- duration: 1 day.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsGroupStatsListTimeRangePeriod

instance FromHttpApiData ProjectsGroupStatsListTimeRangePeriod where
    parseQueryParam = \case
        "PERIOD_UNSPECIFIED" -> Right PGSLTRPPeriodUnspecified
        "PERIOD_1_HOUR" -> Right PGSLTRPPeriod1Hour
        "PERIOD_6_HOURS" -> Right PGSLTRPPeriod6Hours
        "PERIOD_1_DAY" -> Right PGSLTRPPeriod1Day
        "PERIOD_1_WEEK" -> Right PGSLTRPPeriod1Week
        "PERIOD_30_DAYS" -> Right PGSLTRPPeriod30Days
        x -> Left ("Unable to parse ProjectsGroupStatsListTimeRangePeriod from: " <> x)

instance ToHttpApiData ProjectsGroupStatsListTimeRangePeriod where
    toQueryParam = \case
        PGSLTRPPeriodUnspecified -> "PERIOD_UNSPECIFIED"
        PGSLTRPPeriod1Hour -> "PERIOD_1_HOUR"
        PGSLTRPPeriod6Hours -> "PERIOD_6_HOURS"
        PGSLTRPPeriod1Day -> "PERIOD_1_DAY"
        PGSLTRPPeriod1Week -> "PERIOD_1_WEEK"
        PGSLTRPPeriod30Days -> "PERIOD_30_DAYS"

instance FromJSON ProjectsGroupStatsListTimeRangePeriod where
    parseJSON = parseJSONText "ProjectsGroupStatsListTimeRangePeriod"

instance ToJSON ProjectsGroupStatsListTimeRangePeriod where
    toJSON = toJSONText

-- | Error group\'s resolution status. An unspecified resolution status will
-- be interpreted as OPEN
data ErrorGroupResolutionStatus
    = ResolutionStatusUnspecified
      -- ^ @RESOLUTION_STATUS_UNSPECIFIED@
      -- Status is unknown. When left unspecified in requests, it is treated like
      -- OPEN.
    | Open
      -- ^ @OPEN@
      -- The error group is not being addressed. This is the default for new
      -- groups. It is also used for errors re-occurring after marked RESOLVED.
    | Acknowledged
      -- ^ @ACKNOWLEDGED@
      -- Error Group manually acknowledged, it can have an issue link attached.
    | Resolved
      -- ^ @RESOLVED@
      -- Error Group manually resolved, more events for this group are not
      -- expected to occur.
    | Muted
      -- ^ @MUTED@
      -- The error group is muted and excluded by default on group stats
      -- requests.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ErrorGroupResolutionStatus

instance FromHttpApiData ErrorGroupResolutionStatus where
    parseQueryParam = \case
        "RESOLUTION_STATUS_UNSPECIFIED" -> Right ResolutionStatusUnspecified
        "OPEN" -> Right Open
        "ACKNOWLEDGED" -> Right Acknowledged
        "RESOLVED" -> Right Resolved
        "MUTED" -> Right Muted
        x -> Left ("Unable to parse ErrorGroupResolutionStatus from: " <> x)

instance ToHttpApiData ErrorGroupResolutionStatus where
    toQueryParam = \case
        ResolutionStatusUnspecified -> "RESOLUTION_STATUS_UNSPECIFIED"
        Open -> "OPEN"
        Acknowledged -> "ACKNOWLEDGED"
        Resolved -> "RESOLVED"
        Muted -> "MUTED"

instance FromJSON ErrorGroupResolutionStatus where
    parseJSON = parseJSONText "ErrorGroupResolutionStatus"

instance ToJSON ErrorGroupResolutionStatus where
    toJSON = toJSONText
