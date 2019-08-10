{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AnalyticsReporting.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AnalyticsReporting.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | Is the metric \`EQUAL\`, \`LESS_THAN\` or \`GREATER_THAN\` the
-- comparisonValue, the default is \`EQUAL\`. If the operator is
-- \`IS_MISSING\`, checks if the metric is missing and would ignore the
-- comparisonValue.
data MetricFilterOperator
    = OperatorUnspecified
      -- ^ @OPERATOR_UNSPECIFIED@
      -- If the operator is not specified, it is treated as \`EQUAL\`.
    | Equal
      -- ^ @EQUAL@
      -- Should the value of the metric be exactly equal to the comparison value.
    | LessThan
      -- ^ @LESS_THAN@
      -- Should the value of the metric be less than to the comparison value.
    | GreaterThan
      -- ^ @GREATER_THAN@
      -- Should the value of the metric be greater than to the comparison value.
    | IsMissing
      -- ^ @IS_MISSING@
      -- Validates if the metric is missing. Doesn\'t take comparisonValue into
      -- account.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MetricFilterOperator

instance FromHttpApiData MetricFilterOperator where
    parseQueryParam = \case
        "OPERATOR_UNSPECIFIED" -> Right OperatorUnspecified
        "EQUAL" -> Right Equal
        "LESS_THAN" -> Right LessThan
        "GREATER_THAN" -> Right GreaterThan
        "IS_MISSING" -> Right IsMissing
        x -> Left ("Unable to parse MetricFilterOperator from: " <> x)

instance ToHttpApiData MetricFilterOperator where
    toQueryParam = \case
        OperatorUnspecified -> "OPERATOR_UNSPECIFIED"
        Equal -> "EQUAL"
        LessThan -> "LESS_THAN"
        GreaterThan -> "GREATER_THAN"
        IsMissing -> "IS_MISSING"

instance FromJSON MetricFilterOperator where
    parseJSON = parseJSONText "MetricFilterOperator"

instance ToJSON MetricFilterOperator where
    toJSON = toJSONText

-- | The operator for combining multiple dimension filters. If unspecified,
-- it is treated as an \`OR\`.
data DimensionFilterClauseOperator
    = DFCOOperatorUnspecified
      -- ^ @OPERATOR_UNSPECIFIED@
      -- Unspecified operator. It is treated as an \`OR\`.
    | DFCOOR
      -- ^ @OR@
      -- The logical \`OR\` operator.
    | DFCOAnd
      -- ^ @AND@
      -- The logical \`AND\` operator.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DimensionFilterClauseOperator

instance FromHttpApiData DimensionFilterClauseOperator where
    parseQueryParam = \case
        "OPERATOR_UNSPECIFIED" -> Right DFCOOperatorUnspecified
        "OR" -> Right DFCOOR
        "AND" -> Right DFCOAnd
        x -> Left ("Unable to parse DimensionFilterClauseOperator from: " <> x)

instance ToHttpApiData DimensionFilterClauseOperator where
    toQueryParam = \case
        DFCOOperatorUnspecified -> "OPERATOR_UNSPECIFIED"
        DFCOOR -> "OR"
        DFCOAnd -> "AND"

instance FromJSON DimensionFilterClauseOperator where
    parseJSON = parseJSONText "DimensionFilterClauseOperator"

instance ToJSON DimensionFilterClauseOperator where
    toJSON = toJSONText

-- | Type of the cohort. The only supported type as of now is
-- \`FIRST_VISIT_DATE\`. If this field is unspecified the cohort is treated
-- as \`FIRST_VISIT_DATE\` type cohort.
data CohortType
    = UnspecifiedCohortType
      -- ^ @UNSPECIFIED_COHORT_TYPE@
      -- If unspecified it\'s treated as \`FIRST_VISIT_DATE\`.
    | FirstVisitDate
      -- ^ @FIRST_VISIT_DATE@
      -- Cohorts that are selected based on first visit date.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CohortType

instance FromHttpApiData CohortType where
    parseQueryParam = \case
        "UNSPECIFIED_COHORT_TYPE" -> Right UnspecifiedCohortType
        "FIRST_VISIT_DATE" -> Right FirstVisitDate
        x -> Left ("Unable to parse CohortType from: " <> x)

instance ToHttpApiData CohortType where
    toQueryParam = \case
        UnspecifiedCohortType -> "UNSPECIFIED_COHORT_TYPE"
        FirstVisitDate -> "FIRST_VISIT_DATE"

instance FromJSON CohortType where
    parseJSON = parseJSONText "CohortType"

instance ToJSON CohortType where
    toJSON = toJSONText

-- | The order type. The default orderType is \`VALUE\`.
data OrderByOrderType
    = OrderTypeUnspecified
      -- ^ @ORDER_TYPE_UNSPECIFIED@
      -- Unspecified order type will be treated as sort based on value.
    | Value
      -- ^ @VALUE@
      -- The sort order is based on the value of the chosen column; looks only at
      -- the first date range.
    | Delta
      -- ^ @DELTA@
      -- The sort order is based on the difference of the values of the chosen
      -- column between the first two date ranges. Usable only if there are
      -- exactly two date ranges.
    | Smart
      -- ^ @SMART@
      -- The sort order is based on weighted value of the chosen column. If
      -- column has n\/d format, then weighted value of this ratio will be \`(n +
      -- totals.n)\/(d + totals.d)\` Usable only for metrics that represent
      -- ratios.
    | HistogramBucket
      -- ^ @HISTOGRAM_BUCKET@
      -- Histogram order type is applicable only to dimension columns with
      -- non-empty histogram-buckets.
    | DimensionAsInteger
      -- ^ @DIMENSION_AS_INTEGER@
      -- If the dimensions are fixed length numbers, ordinary sort would just
      -- work fine. \`DIMENSION_AS_INTEGER\` can be used if the dimensions are
      -- variable length numbers.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OrderByOrderType

instance FromHttpApiData OrderByOrderType where
    parseQueryParam = \case
        "ORDER_TYPE_UNSPECIFIED" -> Right OrderTypeUnspecified
        "VALUE" -> Right Value
        "DELTA" -> Right Delta
        "SMART" -> Right Smart
        "HISTOGRAM_BUCKET" -> Right HistogramBucket
        "DIMENSION_AS_INTEGER" -> Right DimensionAsInteger
        x -> Left ("Unable to parse OrderByOrderType from: " <> x)

instance ToHttpApiData OrderByOrderType where
    toQueryParam = \case
        OrderTypeUnspecified -> "ORDER_TYPE_UNSPECIFIED"
        Value -> "VALUE"
        Delta -> "DELTA"
        Smart -> "SMART"
        HistogramBucket -> "HISTOGRAM_BUCKET"
        DimensionAsInteger -> "DIMENSION_AS_INTEGER"

instance FromJSON OrderByOrderType where
    parseJSON = parseJSONText "OrderByOrderType"

instance ToJSON OrderByOrderType where
    toJSON = toJSONText

-- | Action associated with this e-commerce action.
data EcommerceDataActionType
    = Unknown
      -- ^ @UNKNOWN@
      -- Action type is not known.
    | Click
      -- ^ @CLICK@
      -- Click through of product lists.
    | DetailsView
      -- ^ @DETAILS_VIEW@
      -- Product detail views.
    | AddToCart
      -- ^ @ADD_TO_CART@
      -- Add product(s) to cart.
    | RemoveFromCart
      -- ^ @REMOVE_FROM_CART@
      -- Remove product(s) from cart.
    | Checkout
      -- ^ @CHECKOUT@
      -- Check out.
    | Payment
      -- ^ @PAYMENT@
      -- Completed purchase.
    | Refund
      -- ^ @REFUND@
      -- Refund of purchase.
    | CheckoutOption
      -- ^ @CHECKOUT_OPTION@
      -- Checkout options.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EcommerceDataActionType

instance FromHttpApiData EcommerceDataActionType where
    parseQueryParam = \case
        "UNKNOWN" -> Right Unknown
        "CLICK" -> Right Click
        "DETAILS_VIEW" -> Right DetailsView
        "ADD_TO_CART" -> Right AddToCart
        "REMOVE_FROM_CART" -> Right RemoveFromCart
        "CHECKOUT" -> Right Checkout
        "PAYMENT" -> Right Payment
        "REFUND" -> Right Refund
        "CHECKOUT_OPTION" -> Right CheckoutOption
        x -> Left ("Unable to parse EcommerceDataActionType from: " <> x)

instance ToHttpApiData EcommerceDataActionType where
    toQueryParam = \case
        Unknown -> "UNKNOWN"
        Click -> "CLICK"
        DetailsView -> "DETAILS_VIEW"
        AddToCart -> "ADD_TO_CART"
        RemoveFromCart -> "REMOVE_FROM_CART"
        Checkout -> "CHECKOUT"
        Payment -> "PAYMENT"
        Refund -> "REFUND"
        CheckoutOption -> "CHECKOUT_OPTION"

instance FromJSON EcommerceDataActionType where
    parseJSON = parseJSONText "EcommerceDataActionType"

instance ToJSON EcommerceDataActionType where
    toJSON = toJSONText

-- | The sorting order for the field.
data OrderBySortOrder
    = SortOrderUnspecified
      -- ^ @SORT_ORDER_UNSPECIFIED@
      -- If the sort order is unspecified, the default is ascending.
    | Ascending
      -- ^ @ASCENDING@
      -- Ascending sort. The field will be sorted in an ascending manner.
    | Descending
      -- ^ @DESCENDING@
      -- Descending sort. The field will be sorted in a descending manner.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OrderBySortOrder

instance FromHttpApiData OrderBySortOrder where
    parseQueryParam = \case
        "SORT_ORDER_UNSPECIFIED" -> Right SortOrderUnspecified
        "ASCENDING" -> Right Ascending
        "DESCENDING" -> Right Descending
        x -> Left ("Unable to parse OrderBySortOrder from: " <> x)

instance ToHttpApiData OrderBySortOrder where
    toQueryParam = \case
        SortOrderUnspecified -> "SORT_ORDER_UNSPECIFIED"
        Ascending -> "ASCENDING"
        Descending -> "DESCENDING"

instance FromJSON OrderBySortOrder where
    parseJSON = parseJSONText "OrderBySortOrder"

instance ToJSON OrderBySortOrder where
    toJSON = toJSONText

-- | Specifies is the operation to perform to compare the metric. The default
-- is \`EQUAL\`.
data SegmentMetricFilterOperator
    = SMFOUnspecifiedOperator
      -- ^ @UNSPECIFIED_OPERATOR@
      -- Unspecified operator is treated as \`LESS_THAN\` operator.
    | SMFOLessThan
      -- ^ @LESS_THAN@
      -- Checks if the metric value is less than comparison value.
    | SMFOGreaterThan
      -- ^ @GREATER_THAN@
      -- Checks if the metric value is greater than comparison value.
    | SMFOEqual
      -- ^ @EQUAL@
      -- Equals operator.
    | SMFOBetween
      -- ^ @BETWEEN@
      -- For between operator, both the minimum and maximum are exclusive. We
      -- will use \`LT\` and \`GT\` for comparison.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SegmentMetricFilterOperator

instance FromHttpApiData SegmentMetricFilterOperator where
    parseQueryParam = \case
        "UNSPECIFIED_OPERATOR" -> Right SMFOUnspecifiedOperator
        "LESS_THAN" -> Right SMFOLessThan
        "GREATER_THAN" -> Right SMFOGreaterThan
        "EQUAL" -> Right SMFOEqual
        "BETWEEN" -> Right SMFOBetween
        x -> Left ("Unable to parse SegmentMetricFilterOperator from: " <> x)

instance ToHttpApiData SegmentMetricFilterOperator where
    toQueryParam = \case
        SMFOUnspecifiedOperator -> "UNSPECIFIED_OPERATOR"
        SMFOLessThan -> "LESS_THAN"
        SMFOGreaterThan -> "GREATER_THAN"
        SMFOEqual -> "EQUAL"
        SMFOBetween -> "BETWEEN"

instance FromJSON SegmentMetricFilterOperator where
    parseJSON = parseJSONText "SegmentMetricFilterOperator"

instance ToJSON SegmentMetricFilterOperator where
    toJSON = toJSONText

-- | The type of the metric, for example \`INTEGER\`.
data MetricHeaderEntryType
    = MetricTypeUnspecified
      -- ^ @METRIC_TYPE_UNSPECIFIED@
      -- Metric type is unspecified.
    | Integer
      -- ^ @INTEGER@
      -- Integer metric.
    | Float
      -- ^ @FLOAT@
      -- Float metric.
    | Currency
      -- ^ @CURRENCY@
      -- Currency metric.
    | Percent
      -- ^ @PERCENT@
      -- Percentage metric.
    | Time
      -- ^ @TIME@
      -- Time metric in \`HH:MM:SS\` format.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MetricHeaderEntryType

instance FromHttpApiData MetricHeaderEntryType where
    parseQueryParam = \case
        "METRIC_TYPE_UNSPECIFIED" -> Right MetricTypeUnspecified
        "INTEGER" -> Right Integer
        "FLOAT" -> Right Float
        "CURRENCY" -> Right Currency
        "PERCENT" -> Right Percent
        "TIME" -> Right Time
        x -> Left ("Unable to parse MetricHeaderEntryType from: " <> x)

instance ToHttpApiData MetricHeaderEntryType where
    toQueryParam = \case
        MetricTypeUnspecified -> "METRIC_TYPE_UNSPECIFIED"
        Integer -> "INTEGER"
        Float -> "FLOAT"
        Currency -> "CURRENCY"
        Percent -> "PERCENT"
        Time -> "TIME"

instance FromJSON MetricHeaderEntryType where
    parseJSON = parseJSONText "MetricHeaderEntryType"

instance ToJSON MetricHeaderEntryType where
    toJSON = toJSONText

-- | The desired report
-- [sample](https:\/\/support.google.com\/analytics\/answer\/2637192) size.
-- If the the \`samplingLevel\` field is unspecified the \`DEFAULT\`
-- sampling level is used. Every [ReportRequest](#ReportRequest) within a
-- \`batchGet\` method must contain the same \`samplingLevel\` definition.
-- See [developer
-- guide](\/analytics\/devguides\/reporting\/core\/v4\/basics#sampling) for
-- details.
data ReportRequestSamplingLevel
    = SamplingUnspecified
      -- ^ @SAMPLING_UNSPECIFIED@
      -- If the \`samplingLevel\` field is unspecified the \`DEFAULT\` sampling
      -- level is used.
    | Default
      -- ^ @DEFAULT@
      -- Returns response with a sample size that balances speed and accuracy.
    | Small
      -- ^ @SMALL@
      -- It returns a fast response with a smaller sampling size.
    | Large
      -- ^ @LARGE@
      -- Returns a more accurate response using a large sampling size. But this
      -- may result in response being slower.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ReportRequestSamplingLevel

instance FromHttpApiData ReportRequestSamplingLevel where
    parseQueryParam = \case
        "SAMPLING_UNSPECIFIED" -> Right SamplingUnspecified
        "DEFAULT" -> Right Default
        "SMALL" -> Right Small
        "LARGE" -> Right Large
        x -> Left ("Unable to parse ReportRequestSamplingLevel from: " <> x)

instance ToHttpApiData ReportRequestSamplingLevel where
    toQueryParam = \case
        SamplingUnspecified -> "SAMPLING_UNSPECIFIED"
        Default -> "DEFAULT"
        Small -> "SMALL"
        Large -> "LARGE"

instance FromJSON ReportRequestSamplingLevel where
    parseJSON = parseJSONText "ReportRequestSamplingLevel"

instance ToJSON ReportRequestSamplingLevel where
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

-- | Specifies if the step immediately precedes or can be any time before the
-- next step.
data SegmentSequenceStepMatchType
    = UnspecifiedMatchType
      -- ^ @UNSPECIFIED_MATCH_TYPE@
      -- Unspecified match type is treated as precedes.
    | Precedes
      -- ^ @PRECEDES@
      -- Operator indicates that the previous step precedes the next step.
    | ImmediatelyPrecedes
      -- ^ @IMMEDIATELY_PRECEDES@
      -- Operator indicates that the previous step immediately precedes the next
      -- step.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SegmentSequenceStepMatchType

instance FromHttpApiData SegmentSequenceStepMatchType where
    parseQueryParam = \case
        "UNSPECIFIED_MATCH_TYPE" -> Right UnspecifiedMatchType
        "PRECEDES" -> Right Precedes
        "IMMEDIATELY_PRECEDES" -> Right ImmediatelyPrecedes
        x -> Left ("Unable to parse SegmentSequenceStepMatchType from: " <> x)

instance ToHttpApiData SegmentSequenceStepMatchType where
    toQueryParam = \case
        UnspecifiedMatchType -> "UNSPECIFIED_MATCH_TYPE"
        Precedes -> "PRECEDES"
        ImmediatelyPrecedes -> "IMMEDIATELY_PRECEDES"

instance FromJSON SegmentSequenceStepMatchType where
    parseJSON = parseJSONText "SegmentSequenceStepMatchType"

instance ToJSON SegmentSequenceStepMatchType where
    toJSON = toJSONText

-- | Scope for a metric defines the level at which that metric is defined.
-- The specified metric scope must be equal to or greater than its primary
-- scope as defined in the data model. The primary scope is defined by if
-- the segment is selecting users or sessions.
data SegmentMetricFilterScope
    = SMFSUnspecifiedScope
      -- ^ @UNSPECIFIED_SCOPE@
      -- If the scope is unspecified, it defaults to the condition scope,
      -- \`USER\` or \`SESSION\` depending on if the segment is trying to choose
      -- users or sessions.
    | SMFSProduct
      -- ^ @PRODUCT@
      -- Product scope.
    | SMFSHit
      -- ^ @HIT@
      -- Hit scope.
    | SMFSSession
      -- ^ @SESSION@
      -- Session scope.
    | SMFSUser
      -- ^ @USER@
      -- User scope.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SegmentMetricFilterScope

instance FromHttpApiData SegmentMetricFilterScope where
    parseQueryParam = \case
        "UNSPECIFIED_SCOPE" -> Right SMFSUnspecifiedScope
        "PRODUCT" -> Right SMFSProduct
        "HIT" -> Right SMFSHit
        "SESSION" -> Right SMFSSession
        "USER" -> Right SMFSUser
        x -> Left ("Unable to parse SegmentMetricFilterScope from: " <> x)

instance ToHttpApiData SegmentMetricFilterScope where
    toQueryParam = \case
        SMFSUnspecifiedScope -> "UNSPECIFIED_SCOPE"
        SMFSProduct -> "PRODUCT"
        SMFSHit -> "HIT"
        SMFSSession -> "SESSION"
        SMFSUser -> "USER"

instance FromJSON SegmentMetricFilterScope where
    parseJSON = parseJSONText "SegmentMetricFilterScope"

instance ToJSON SegmentMetricFilterScope where
    toJSON = toJSONText

-- | The type of this e-commerce activity.
data EcommerceDataEcommerceType
    = EcommerceTypeUnspecified
      -- ^ @ECOMMERCE_TYPE_UNSPECIFIED@
      -- Used when the e-commerce activity type is unspecified.
    | Classic
      -- ^ @CLASSIC@
      -- Used when activity has classic (non-enhanced) e-commerce information.
    | Enhanced
      -- ^ @ENHANCED@
      -- Used when activity has enhanced e-commerce information.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EcommerceDataEcommerceType

instance FromHttpApiData EcommerceDataEcommerceType where
    parseQueryParam = \case
        "ECOMMERCE_TYPE_UNSPECIFIED" -> Right EcommerceTypeUnspecified
        "CLASSIC" -> Right Classic
        "ENHANCED" -> Right Enhanced
        x -> Left ("Unable to parse EcommerceDataEcommerceType from: " <> x)

instance ToHttpApiData EcommerceDataEcommerceType where
    toQueryParam = \case
        EcommerceTypeUnspecified -> "ECOMMERCE_TYPE_UNSPECIFIED"
        Classic -> "CLASSIC"
        Enhanced -> "ENHANCED"

instance FromJSON EcommerceDataEcommerceType where
    parseJSON = parseJSONText "EcommerceDataEcommerceType"

instance ToJSON EcommerceDataEcommerceType where
    toJSON = toJSONText

-- | How to match the dimension to the expression. The default is REGEXP.
data DimensionFilterOperator
    = DFOOperatorUnspecified
      -- ^ @OPERATOR_UNSPECIFIED@
      -- If the match type is unspecified, it is treated as a \`REGEXP\`.
    | DFORegexp
      -- ^ @REGEXP@
      -- The match expression is treated as a regular expression. All match types
      -- are not treated as regular expressions.
    | DFOBeginsWith
      -- ^ @BEGINS_WITH@
      -- Matches the value which begin with the match expression provided.
    | DFOEndsWith
      -- ^ @ENDS_WITH@
      -- Matches the values which end with the match expression provided.
    | DFOPartial
      -- ^ @PARTIAL@
      -- Substring match.
    | DFOExact
      -- ^ @EXACT@
      -- The value should match the match expression entirely.
    | DFONumericEqual
      -- ^ @NUMERIC_EQUAL@
      -- Integer comparison filters. case sensitivity is ignored for these and
      -- the expression is assumed to be a string representing an integer.
      -- Failure conditions: - If expression is not a valid int64, the client
      -- should expect an error. - Input dimensions that are not valid int64
      -- values will never match the filter.
    | DFONumericGreaterThan
      -- ^ @NUMERIC_GREATER_THAN@
      -- Checks if the dimension is numerically greater than the match
      -- expression. Read the description for \`NUMERIC_EQUALS\` for
      -- restrictions.
    | DFONumericLessThan
      -- ^ @NUMERIC_LESS_THAN@
      -- Checks if the dimension is numerically less than the match expression.
      -- Read the description for \`NUMERIC_EQUALS\` for restrictions.
    | DFOInList
      -- ^ @IN_LIST@
      -- This option is used to specify a dimension filter whose expression can
      -- take any value from a selected list of values. This helps avoiding
      -- evaluating multiple exact match dimension filters which are OR\'ed for
      -- every single response row. For example: expressions: [\"A\", \"B\",
      -- \"C\"] Any response row whose dimension has it is value as A, B or C,
      -- matches this DimensionFilter.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DimensionFilterOperator

instance FromHttpApiData DimensionFilterOperator where
    parseQueryParam = \case
        "OPERATOR_UNSPECIFIED" -> Right DFOOperatorUnspecified
        "REGEXP" -> Right DFORegexp
        "BEGINS_WITH" -> Right DFOBeginsWith
        "ENDS_WITH" -> Right DFOEndsWith
        "PARTIAL" -> Right DFOPartial
        "EXACT" -> Right DFOExact
        "NUMERIC_EQUAL" -> Right DFONumericEqual
        "NUMERIC_GREATER_THAN" -> Right DFONumericGreaterThan
        "NUMERIC_LESS_THAN" -> Right DFONumericLessThan
        "IN_LIST" -> Right DFOInList
        x -> Left ("Unable to parse DimensionFilterOperator from: " <> x)

instance ToHttpApiData DimensionFilterOperator where
    toQueryParam = \case
        DFOOperatorUnspecified -> "OPERATOR_UNSPECIFIED"
        DFORegexp -> "REGEXP"
        DFOBeginsWith -> "BEGINS_WITH"
        DFOEndsWith -> "ENDS_WITH"
        DFOPartial -> "PARTIAL"
        DFOExact -> "EXACT"
        DFONumericEqual -> "NUMERIC_EQUAL"
        DFONumericGreaterThan -> "NUMERIC_GREATER_THAN"
        DFONumericLessThan -> "NUMERIC_LESS_THAN"
        DFOInList -> "IN_LIST"

instance FromJSON DimensionFilterOperator where
    parseJSON = parseJSONText "DimensionFilterOperator"

instance ToJSON DimensionFilterOperator where
    toJSON = toJSONText

-- | Type of this activity.
data ActivityActivityType
    = ActivityTypeUnspecified
      -- ^ @ACTIVITY_TYPE_UNSPECIFIED@
      -- ActivityType will never have this value in the response. Using this type
      -- in the request will result in an error.
    | Pageview
      -- ^ @PAGEVIEW@
      -- Used when the activity resulted out of a visitor viewing a page.
    | Screenview
      -- ^ @SCREENVIEW@
      -- Used when the activity resulted out of a visitor using an application on
      -- a mobile device.
    | Goal
      -- ^ @GOAL@
      -- Used to denote that a goal type activity.
    | Ecommerce
      -- ^ @ECOMMERCE@
      -- An e-commerce transaction was performed by the visitor on the page.
    | Event
      -- ^ @EVENT@
      -- Used when the activity is an event.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ActivityActivityType

instance FromHttpApiData ActivityActivityType where
    parseQueryParam = \case
        "ACTIVITY_TYPE_UNSPECIFIED" -> Right ActivityTypeUnspecified
        "PAGEVIEW" -> Right Pageview
        "SCREENVIEW" -> Right Screenview
        "GOAL" -> Right Goal
        "ECOMMERCE" -> Right Ecommerce
        "EVENT" -> Right Event
        x -> Left ("Unable to parse ActivityActivityType from: " <> x)

instance ToHttpApiData ActivityActivityType where
    toQueryParam = \case
        ActivityTypeUnspecified -> "ACTIVITY_TYPE_UNSPECIFIED"
        Pageview -> "PAGEVIEW"
        Screenview -> "SCREENVIEW"
        Goal -> "GOAL"
        Ecommerce -> "ECOMMERCE"
        Event -> "EVENT"

instance FromJSON ActivityActivityType where
    parseJSON = parseJSONText "ActivityActivityType"

instance ToJSON ActivityActivityType where
    toJSON = toJSONText

-- | Specifies how the metric expression should be formatted, for example
-- \`INTEGER\`.
data MetricFormattingType
    = MFTMetricTypeUnspecified
      -- ^ @METRIC_TYPE_UNSPECIFIED@
      -- Metric type is unspecified.
    | MFTInteger
      -- ^ @INTEGER@
      -- Integer metric.
    | MFTFloat
      -- ^ @FLOAT@
      -- Float metric.
    | MFTCurrency
      -- ^ @CURRENCY@
      -- Currency metric.
    | MFTPercent
      -- ^ @PERCENT@
      -- Percentage metric.
    | MFTTime
      -- ^ @TIME@
      -- Time metric in \`HH:MM:SS\` format.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MetricFormattingType

instance FromHttpApiData MetricFormattingType where
    parseQueryParam = \case
        "METRIC_TYPE_UNSPECIFIED" -> Right MFTMetricTypeUnspecified
        "INTEGER" -> Right MFTInteger
        "FLOAT" -> Right MFTFloat
        "CURRENCY" -> Right MFTCurrency
        "PERCENT" -> Right MFTPercent
        "TIME" -> Right MFTTime
        x -> Left ("Unable to parse MetricFormattingType from: " <> x)

instance ToHttpApiData MetricFormattingType where
    toQueryParam = \case
        MFTMetricTypeUnspecified -> "METRIC_TYPE_UNSPECIFIED"
        MFTInteger -> "INTEGER"
        MFTFloat -> "FLOAT"
        MFTCurrency -> "CURRENCY"
        MFTPercent -> "PERCENT"
        MFTTime -> "TIME"

instance FromJSON MetricFormattingType where
    parseJSON = parseJSONText "MetricFormattingType"

instance ToJSON MetricFormattingType where
    toJSON = toJSONText

-- | The operator to use to match the dimension with the expressions.
data SegmentDimensionFilterOperator
    = SDFOOperatorUnspecified
      -- ^ @OPERATOR_UNSPECIFIED@
      -- If the match type is unspecified, it is treated as a REGEXP.
    | SDFORegexp
      -- ^ @REGEXP@
      -- The match expression is treated as a regular expression. All other match
      -- types are not treated as regular expressions.
    | SDFOBeginsWith
      -- ^ @BEGINS_WITH@
      -- Matches the values which begin with the match expression provided.
    | SDFOEndsWith
      -- ^ @ENDS_WITH@
      -- Matches the values which end with the match expression provided.
    | SDFOPartial
      -- ^ @PARTIAL@
      -- Substring match.
    | SDFOExact
      -- ^ @EXACT@
      -- The value should match the match expression entirely.
    | SDFOInList
      -- ^ @IN_LIST@
      -- This option is used to specify a dimension filter whose expression can
      -- take any value from a selected list of values. This helps avoiding
      -- evaluating multiple exact match dimension filters which are OR\'ed for
      -- every single response row. For example: expressions: [\"A\", \"B\",
      -- \"C\"] Any response row whose dimension has it is value as A, B or C,
      -- matches this DimensionFilter.
    | SDFONumericLessThan
      -- ^ @NUMERIC_LESS_THAN@
      -- Integer comparison filters. case sensitivity is ignored for these and
      -- the expression is assumed to be a string representing an integer.
      -- Failure conditions: - if expression is not a valid int64, the client
      -- should expect an error. - input dimensions that are not valid int64
      -- values will never match the filter. Checks if the dimension is
      -- numerically less than the match expression.
    | SDFONumericGreaterThan
      -- ^ @NUMERIC_GREATER_THAN@
      -- Checks if the dimension is numerically greater than the match
      -- expression.
    | SDFONumericBetween
      -- ^ @NUMERIC_BETWEEN@
      -- Checks if the dimension is numerically between the minimum and maximum
      -- of the match expression, boundaries excluded.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SegmentDimensionFilterOperator

instance FromHttpApiData SegmentDimensionFilterOperator where
    parseQueryParam = \case
        "OPERATOR_UNSPECIFIED" -> Right SDFOOperatorUnspecified
        "REGEXP" -> Right SDFORegexp
        "BEGINS_WITH" -> Right SDFOBeginsWith
        "ENDS_WITH" -> Right SDFOEndsWith
        "PARTIAL" -> Right SDFOPartial
        "EXACT" -> Right SDFOExact
        "IN_LIST" -> Right SDFOInList
        "NUMERIC_LESS_THAN" -> Right SDFONumericLessThan
        "NUMERIC_GREATER_THAN" -> Right SDFONumericGreaterThan
        "NUMERIC_BETWEEN" -> Right SDFONumericBetween
        x -> Left ("Unable to parse SegmentDimensionFilterOperator from: " <> x)

instance ToHttpApiData SegmentDimensionFilterOperator where
    toQueryParam = \case
        SDFOOperatorUnspecified -> "OPERATOR_UNSPECIFIED"
        SDFORegexp -> "REGEXP"
        SDFOBeginsWith -> "BEGINS_WITH"
        SDFOEndsWith -> "ENDS_WITH"
        SDFOPartial -> "PARTIAL"
        SDFOExact -> "EXACT"
        SDFOInList -> "IN_LIST"
        SDFONumericLessThan -> "NUMERIC_LESS_THAN"
        SDFONumericGreaterThan -> "NUMERIC_GREATER_THAN"
        SDFONumericBetween -> "NUMERIC_BETWEEN"

instance FromJSON SegmentDimensionFilterOperator where
    parseJSON = parseJSONText "SegmentDimensionFilterOperator"

instance ToJSON SegmentDimensionFilterOperator where
    toJSON = toJSONText

-- | The operator for combining multiple metric filters. If unspecified, it
-- is treated as an \`OR\`.
data MetricFilterClauseOperator
    = MFCOOperatorUnspecified
      -- ^ @OPERATOR_UNSPECIFIED@
      -- Unspecified operator. It is treated as an \`OR\`.
    | MFCOOR
      -- ^ @OR@
      -- The logical \`OR\` operator.
    | MFCOAnd
      -- ^ @AND@
      -- The logical \`AND\` operator.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MetricFilterClauseOperator

instance FromHttpApiData MetricFilterClauseOperator where
    parseQueryParam = \case
        "OPERATOR_UNSPECIFIED" -> Right MFCOOperatorUnspecified
        "OR" -> Right MFCOOR
        "AND" -> Right MFCOAnd
        x -> Left ("Unable to parse MetricFilterClauseOperator from: " <> x)

instance ToHttpApiData MetricFilterClauseOperator where
    toQueryParam = \case
        MFCOOperatorUnspecified -> "OPERATOR_UNSPECIFIED"
        MFCOOR -> "OR"
        MFCOAnd -> "AND"

instance FromJSON MetricFilterClauseOperator where
    parseJSON = parseJSONText "MetricFilterClauseOperator"

instance ToJSON MetricFilterClauseOperator where
    toJSON = toJSONText

-- | Type of the user in the request. The field \`userId\` is associated with
-- this type.
data UserType
    = UserIdTypeUnspecified
      -- ^ @USER_ID_TYPE_UNSPECIFIED@
      -- When the User Id Type is not specified, the default type used will be
      -- CLIENT_ID.
    | UserIdTypeUserId
      -- ^ @USER_ID_TYPE_USER_ID@
      -- A single user, like a signed-in user account, that may interact with
      -- content across one or more devices and \/ or browser instances.
    | UserIdTypeClientId
      -- ^ @USER_ID_TYPE_CLIENT_ID@
      -- Analytics assigned client_id.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UserType

instance FromHttpApiData UserType where
    parseQueryParam = \case
        "USER_ID_TYPE_UNSPECIFIED" -> Right UserIdTypeUnspecified
        "USER_ID_TYPE_USER_ID" -> Right UserIdTypeUserId
        "USER_ID_TYPE_CLIENT_ID" -> Right UserIdTypeClientId
        x -> Left ("Unable to parse UserType from: " <> x)

instance ToHttpApiData UserType where
    toQueryParam = \case
        UserIdTypeUnspecified -> "USER_ID_TYPE_UNSPECIFIED"
        UserIdTypeUserId -> "USER_ID_TYPE_USER_ID"
        UserIdTypeClientId -> "USER_ID_TYPE_CLIENT_ID"

instance FromJSON UserType where
    parseJSON = parseJSONText "UserType"

instance ToJSON UserType where
    toJSON = toJSONText
