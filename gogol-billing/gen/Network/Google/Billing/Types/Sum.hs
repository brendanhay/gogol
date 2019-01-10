{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Billing.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Billing.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

data AggregationInfoAggregationLevel
    = AggregationLevelUnspecified
      -- ^ @AGGREGATION_LEVEL_UNSPECIFIED@
    | Account
      -- ^ @ACCOUNT@
    | Project
      -- ^ @PROJECT@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AggregationInfoAggregationLevel

instance FromHttpApiData AggregationInfoAggregationLevel where
    parseQueryParam = \case
        "AGGREGATION_LEVEL_UNSPECIFIED" -> Right AggregationLevelUnspecified
        "ACCOUNT" -> Right Account
        "PROJECT" -> Right Project
        x -> Left ("Unable to parse AggregationInfoAggregationLevel from: " <> x)

instance ToHttpApiData AggregationInfoAggregationLevel where
    toQueryParam = \case
        AggregationLevelUnspecified -> "AGGREGATION_LEVEL_UNSPECIFIED"
        Account -> "ACCOUNT"
        Project -> "PROJECT"

instance FromJSON AggregationInfoAggregationLevel where
    parseJSON = parseJSONText "AggregationInfoAggregationLevel"

instance ToJSON AggregationInfoAggregationLevel where
    toJSON = toJSONText

-- | The log type that this config enables.
data AuditLogConfigLogType
    = LogTypeUnspecified
      -- ^ @LOG_TYPE_UNSPECIFIED@
      -- Default case. Should never be this.
    | AdminRead
      -- ^ @ADMIN_READ@
      -- Admin reads. Example: CloudIAM getIamPolicy
    | DataWrite
      -- ^ @DATA_WRITE@
      -- Data writes. Example: CloudSQL Users create
    | DataRead
      -- ^ @DATA_READ@
      -- Data reads. Example: CloudSQL Users list
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AuditLogConfigLogType

instance FromHttpApiData AuditLogConfigLogType where
    parseQueryParam = \case
        "LOG_TYPE_UNSPECIFIED" -> Right LogTypeUnspecified
        "ADMIN_READ" -> Right AdminRead
        "DATA_WRITE" -> Right DataWrite
        "DATA_READ" -> Right DataRead
        x -> Left ("Unable to parse AuditLogConfigLogType from: " <> x)

instance ToHttpApiData AuditLogConfigLogType where
    toQueryParam = \case
        LogTypeUnspecified -> "LOG_TYPE_UNSPECIFIED"
        AdminRead -> "ADMIN_READ"
        DataWrite -> "DATA_WRITE"
        DataRead -> "DATA_READ"

instance FromJSON AuditLogConfigLogType where
    parseJSON = parseJSONText "AuditLogConfigLogType"

instance ToJSON AuditLogConfigLogType where
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

data AggregationInfoAggregationInterval
    = AggregationIntervalUnspecified
      -- ^ @AGGREGATION_INTERVAL_UNSPECIFIED@
    | Daily
      -- ^ @DAILY@
    | Monthly
      -- ^ @MONTHLY@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AggregationInfoAggregationInterval

instance FromHttpApiData AggregationInfoAggregationInterval where
    parseQueryParam = \case
        "AGGREGATION_INTERVAL_UNSPECIFIED" -> Right AggregationIntervalUnspecified
        "DAILY" -> Right Daily
        "MONTHLY" -> Right Monthly
        x -> Left ("Unable to parse AggregationInfoAggregationInterval from: " <> x)

instance ToHttpApiData AggregationInfoAggregationInterval where
    toQueryParam = \case
        AggregationIntervalUnspecified -> "AGGREGATION_INTERVAL_UNSPECIFIED"
        Daily -> "DAILY"
        Monthly -> "MONTHLY"

instance FromJSON AggregationInfoAggregationInterval where
    parseJSON = parseJSONText "AggregationInfoAggregationInterval"

instance ToJSON AggregationInfoAggregationInterval where
    toJSON = toJSONText
