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
-- Module      : Gogol.AnalyticsReporting.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AnalyticsReporting.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * Activity_ActivityType
    Activity_ActivityType
      ( Activity_ActivityType_ACTIVITYTYPEUNSPECIFIED,
        Activity_ActivityType_Pageview,
        Activity_ActivityType_Screenview,
        Activity_ActivityType_Goal,
        Activity_ActivityType_Ecommerce,
        Activity_ActivityType_Event,
        ..
      ),

    -- * Cohort_Type
    Cohort_Type
      ( Cohort_Type_UNSPECIFIEDCOHORTTYPE,
        Cohort_Type_FIRSTVISITDATE,
        ..
      ),

    -- * DimensionFilter_Operator
    DimensionFilter_Operator
      ( DimensionFilter_Operator_OPERATORUNSPECIFIED,
        DimensionFilter_Operator_Regexp,
        DimensionFilter_Operator_BEGINSWITH,
        DimensionFilter_Operator_ENDSWITH,
        DimensionFilter_Operator_Partial,
        DimensionFilter_Operator_Exact,
        DimensionFilter_Operator_NUMERICEQUAL,
        DimensionFilter_Operator_NUMERICGREATERTHAN,
        DimensionFilter_Operator_NUMERICLESSTHAN,
        DimensionFilter_Operator_INLIST,
        ..
      ),

    -- * DimensionFilterClause_Operator
    DimensionFilterClause_Operator
      ( DimensionFilterClause_Operator_OPERATORUNSPECIFIED,
        DimensionFilterClause_Operator_OR,
        DimensionFilterClause_Operator_And,
        ..
      ),

    -- * EcommerceData_ActionType
    EcommerceData_ActionType
      ( EcommerceData_ActionType_Unknown,
        EcommerceData_ActionType_Click,
        EcommerceData_ActionType_DETAILSVIEW,
        EcommerceData_ActionType_ADDTOCART,
        EcommerceData_ActionType_REMOVEFROMCART,
        EcommerceData_ActionType_Checkout,
        EcommerceData_ActionType_Payment,
        EcommerceData_ActionType_Refund,
        EcommerceData_ActionType_CHECKOUTOPTION,
        ..
      ),

    -- * EcommerceData_EcommerceType
    EcommerceData_EcommerceType
      ( EcommerceData_EcommerceType_ECOMMERCETYPEUNSPECIFIED,
        EcommerceData_EcommerceType_Classic,
        EcommerceData_EcommerceType_Enhanced,
        ..
      ),

    -- * Metric_FormattingType
    Metric_FormattingType
      ( Metric_FormattingType_METRICTYPEUNSPECIFIED,
        Metric_FormattingType_Integer,
        Metric_FormattingType_Float,
        Metric_FormattingType_Currency,
        Metric_FormattingType_Percent,
        Metric_FormattingType_Time,
        ..
      ),

    -- * MetricFilter_Operator
    MetricFilter_Operator
      ( MetricFilter_Operator_OPERATORUNSPECIFIED,
        MetricFilter_Operator_Equal,
        MetricFilter_Operator_LESSTHAN,
        MetricFilter_Operator_GREATERTHAN,
        MetricFilter_Operator_ISMISSING,
        ..
      ),

    -- * MetricFilterClause_Operator
    MetricFilterClause_Operator
      ( MetricFilterClause_Operator_OPERATORUNSPECIFIED,
        MetricFilterClause_Operator_OR,
        MetricFilterClause_Operator_And,
        ..
      ),

    -- * MetricHeaderEntry_Type
    MetricHeaderEntry_Type
      ( MetricHeaderEntry_Type_METRICTYPEUNSPECIFIED,
        MetricHeaderEntry_Type_Integer,
        MetricHeaderEntry_Type_Float,
        MetricHeaderEntry_Type_Currency,
        MetricHeaderEntry_Type_Percent,
        MetricHeaderEntry_Type_Time,
        ..
      ),

    -- * OrderBy_OrderType
    OrderBy_OrderType
      ( OrderBy_OrderType_ORDERTYPEUNSPECIFIED,
        OrderBy_OrderType_Value,
        OrderBy_OrderType_Delta,
        OrderBy_OrderType_Smart,
        OrderBy_OrderType_HISTOGRAMBUCKET,
        OrderBy_OrderType_DIMENSIONASINTEGER,
        ..
      ),

    -- * OrderBy_SortOrder
    OrderBy_SortOrder
      ( OrderBy_SortOrder_SORTORDERUNSPECIFIED,
        OrderBy_SortOrder_Ascending,
        OrderBy_SortOrder_Descending,
        ..
      ),

    -- * ReportRequest_SamplingLevel
    ReportRequest_SamplingLevel
      ( ReportRequest_SamplingLevel_SAMPLINGUNSPECIFIED,
        ReportRequest_SamplingLevel_Default,
        ReportRequest_SamplingLevel_Small,
        ReportRequest_SamplingLevel_Large,
        ..
      ),

    -- * SearchUserActivityRequest_ActivityTypesItem
    SearchUserActivityRequest_ActivityTypesItem
      ( SearchUserActivityRequest_ActivityTypesItem_ACTIVITYTYPEUNSPECIFIED,
        SearchUserActivityRequest_ActivityTypesItem_Pageview,
        SearchUserActivityRequest_ActivityTypesItem_Screenview,
        SearchUserActivityRequest_ActivityTypesItem_Goal,
        SearchUserActivityRequest_ActivityTypesItem_Ecommerce,
        SearchUserActivityRequest_ActivityTypesItem_Event,
        ..
      ),

    -- * SegmentDimensionFilter_Operator
    SegmentDimensionFilter_Operator
      ( SegmentDimensionFilter_Operator_OPERATORUNSPECIFIED,
        SegmentDimensionFilter_Operator_Regexp,
        SegmentDimensionFilter_Operator_BEGINSWITH,
        SegmentDimensionFilter_Operator_ENDSWITH,
        SegmentDimensionFilter_Operator_Partial,
        SegmentDimensionFilter_Operator_Exact,
        SegmentDimensionFilter_Operator_INLIST,
        SegmentDimensionFilter_Operator_NUMERICLESSTHAN,
        SegmentDimensionFilter_Operator_NUMERICGREATERTHAN,
        SegmentDimensionFilter_Operator_NUMERICBETWEEN,
        ..
      ),

    -- * SegmentMetricFilter_Operator
    SegmentMetricFilter_Operator
      ( SegmentMetricFilter_Operator_UNSPECIFIEDOPERATOR,
        SegmentMetricFilter_Operator_LESSTHAN,
        SegmentMetricFilter_Operator_GREATERTHAN,
        SegmentMetricFilter_Operator_Equal,
        SegmentMetricFilter_Operator_Between,
        ..
      ),

    -- * SegmentMetricFilter_Scope
    SegmentMetricFilter_Scope
      ( SegmentMetricFilter_Scope_UNSPECIFIEDSCOPE,
        SegmentMetricFilter_Scope_Product,
        SegmentMetricFilter_Scope_Hit,
        SegmentMetricFilter_Scope_Session,
        SegmentMetricFilter_Scope_User,
        ..
      ),

    -- * SegmentSequenceStep_MatchType
    SegmentSequenceStep_MatchType
      ( SegmentSequenceStep_MatchType_UNSPECIFIEDMATCHTYPE,
        SegmentSequenceStep_MatchType_Precedes,
        SegmentSequenceStep_MatchType_IMMEDIATELYPRECEDES,
        ..
      ),

    -- * User_Type
    User_Type
      ( User_Type_USERIDTYPEUNSPECIFIED,
        User_Type_USERIDTYPEUSERID,
        User_Type_USERIDTYPECLIENTID,
        ..
      ),
  )
where

import Gogol.Prelude qualified as Core

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

-- | Type of this activity.
newtype Activity_ActivityType = Activity_ActivityType {fromActivity_ActivityType :: Core.Text}
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

-- | ActivityType will never have this value in the response. Using this type in the request will result in an error.
pattern Activity_ActivityType_ACTIVITYTYPEUNSPECIFIED :: Activity_ActivityType
pattern Activity_ActivityType_ACTIVITYTYPEUNSPECIFIED = Activity_ActivityType "ACTIVITY_TYPE_UNSPECIFIED"

-- | Used when the activity resulted out of a visitor viewing a page.
pattern Activity_ActivityType_Pageview :: Activity_ActivityType
pattern Activity_ActivityType_Pageview = Activity_ActivityType "PAGEVIEW"

-- | Used when the activity resulted out of a visitor using an application on a mobile device.
pattern Activity_ActivityType_Screenview :: Activity_ActivityType
pattern Activity_ActivityType_Screenview = Activity_ActivityType "SCREENVIEW"

-- | Used to denote that a goal type activity.
pattern Activity_ActivityType_Goal :: Activity_ActivityType
pattern Activity_ActivityType_Goal = Activity_ActivityType "GOAL"

-- | An e-commerce transaction was performed by the visitor on the page.
pattern Activity_ActivityType_Ecommerce :: Activity_ActivityType
pattern Activity_ActivityType_Ecommerce = Activity_ActivityType "ECOMMERCE"

-- | Used when the activity is an event.
pattern Activity_ActivityType_Event :: Activity_ActivityType
pattern Activity_ActivityType_Event = Activity_ActivityType "EVENT"

{-# COMPLETE
  Activity_ActivityType_ACTIVITYTYPEUNSPECIFIED,
  Activity_ActivityType_Pageview,
  Activity_ActivityType_Screenview,
  Activity_ActivityType_Goal,
  Activity_ActivityType_Ecommerce,
  Activity_ActivityType_Event,
  Activity_ActivityType
  #-}

-- | Type of the cohort. The only supported type as of now is @FIRST_VISIT_DATE@. If this field is unspecified the cohort is treated as @FIRST_VISIT_DATE@ type cohort.
newtype Cohort_Type = Cohort_Type {fromCohort_Type :: Core.Text}
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

-- | If unspecified it\'s treated as @FIRST_VISIT_DATE@.
pattern Cohort_Type_UNSPECIFIEDCOHORTTYPE :: Cohort_Type
pattern Cohort_Type_UNSPECIFIEDCOHORTTYPE = Cohort_Type "UNSPECIFIED_COHORT_TYPE"

-- | Cohorts that are selected based on first visit date.
pattern Cohort_Type_FIRSTVISITDATE :: Cohort_Type
pattern Cohort_Type_FIRSTVISITDATE = Cohort_Type "FIRST_VISIT_DATE"

{-# COMPLETE
  Cohort_Type_UNSPECIFIEDCOHORTTYPE,
  Cohort_Type_FIRSTVISITDATE,
  Cohort_Type
  #-}

-- | How to match the dimension to the expression. The default is REGEXP.
newtype DimensionFilter_Operator = DimensionFilter_Operator {fromDimensionFilter_Operator :: Core.Text}
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

-- | If the match type is unspecified, it is treated as a @REGEXP@.
pattern DimensionFilter_Operator_OPERATORUNSPECIFIED :: DimensionFilter_Operator
pattern DimensionFilter_Operator_OPERATORUNSPECIFIED = DimensionFilter_Operator "OPERATOR_UNSPECIFIED"

-- | The match expression is treated as a regular expression. All match types are not treated as regular expressions.
pattern DimensionFilter_Operator_Regexp :: DimensionFilter_Operator
pattern DimensionFilter_Operator_Regexp = DimensionFilter_Operator "REGEXP"

-- | Matches the value which begin with the match expression provided.
pattern DimensionFilter_Operator_BEGINSWITH :: DimensionFilter_Operator
pattern DimensionFilter_Operator_BEGINSWITH = DimensionFilter_Operator "BEGINS_WITH"

-- | Matches the values which end with the match expression provided.
pattern DimensionFilter_Operator_ENDSWITH :: DimensionFilter_Operator
pattern DimensionFilter_Operator_ENDSWITH = DimensionFilter_Operator "ENDS_WITH"

-- | Substring match.
pattern DimensionFilter_Operator_Partial :: DimensionFilter_Operator
pattern DimensionFilter_Operator_Partial = DimensionFilter_Operator "PARTIAL"

-- | The value should match the match expression entirely.
pattern DimensionFilter_Operator_Exact :: DimensionFilter_Operator
pattern DimensionFilter_Operator_Exact = DimensionFilter_Operator "EXACT"

-- | Integer comparison filters. case sensitivity is ignored for these and the expression is assumed to be a string representing an integer. Failure conditions: - If expression is not a valid int64, the client should expect an error. - Input dimensions that are not valid int64 values will never match the filter.
pattern DimensionFilter_Operator_NUMERICEQUAL :: DimensionFilter_Operator
pattern DimensionFilter_Operator_NUMERICEQUAL = DimensionFilter_Operator "NUMERIC_EQUAL"

-- | Checks if the dimension is numerically greater than the match expression. Read the description for @NUMERIC_EQUALS@ for restrictions.
pattern DimensionFilter_Operator_NUMERICGREATERTHAN :: DimensionFilter_Operator
pattern DimensionFilter_Operator_NUMERICGREATERTHAN = DimensionFilter_Operator "NUMERIC_GREATER_THAN"

-- | Checks if the dimension is numerically less than the match expression. Read the description for @NUMERIC_EQUALS@ for restrictions.
pattern DimensionFilter_Operator_NUMERICLESSTHAN :: DimensionFilter_Operator
pattern DimensionFilter_Operator_NUMERICLESSTHAN = DimensionFilter_Operator "NUMERIC_LESS_THAN"

-- | This option is used to specify a dimension filter whose expression can take any value from a selected list of values. This helps avoiding evaluating multiple exact match dimension filters which are OR\'ed for every single response row. For example: expressions: [\"A\", \"B\", \"C\"] Any response row whose dimension has it is value as A, B or C, matches this DimensionFilter.
pattern DimensionFilter_Operator_INLIST :: DimensionFilter_Operator
pattern DimensionFilter_Operator_INLIST = DimensionFilter_Operator "IN_LIST"

{-# COMPLETE
  DimensionFilter_Operator_OPERATORUNSPECIFIED,
  DimensionFilter_Operator_Regexp,
  DimensionFilter_Operator_BEGINSWITH,
  DimensionFilter_Operator_ENDSWITH,
  DimensionFilter_Operator_Partial,
  DimensionFilter_Operator_Exact,
  DimensionFilter_Operator_NUMERICEQUAL,
  DimensionFilter_Operator_NUMERICGREATERTHAN,
  DimensionFilter_Operator_NUMERICLESSTHAN,
  DimensionFilter_Operator_INLIST,
  DimensionFilter_Operator
  #-}

-- | The operator for combining multiple dimension filters. If unspecified, it is treated as an @OR@.
newtype DimensionFilterClause_Operator = DimensionFilterClause_Operator {fromDimensionFilterClause_Operator :: Core.Text}
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

-- | Unspecified operator. It is treated as an @OR@.
pattern DimensionFilterClause_Operator_OPERATORUNSPECIFIED :: DimensionFilterClause_Operator
pattern DimensionFilterClause_Operator_OPERATORUNSPECIFIED = DimensionFilterClause_Operator "OPERATOR_UNSPECIFIED"

-- | The logical @OR@ operator.
pattern DimensionFilterClause_Operator_OR :: DimensionFilterClause_Operator
pattern DimensionFilterClause_Operator_OR = DimensionFilterClause_Operator "OR"

-- | The logical @AND@ operator.
pattern DimensionFilterClause_Operator_And :: DimensionFilterClause_Operator
pattern DimensionFilterClause_Operator_And = DimensionFilterClause_Operator "AND"

{-# COMPLETE
  DimensionFilterClause_Operator_OPERATORUNSPECIFIED,
  DimensionFilterClause_Operator_OR,
  DimensionFilterClause_Operator_And,
  DimensionFilterClause_Operator
  #-}

-- | Action associated with this e-commerce action.
newtype EcommerceData_ActionType = EcommerceData_ActionType {fromEcommerceData_ActionType :: Core.Text}
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

-- | Action type is not known.
pattern EcommerceData_ActionType_Unknown :: EcommerceData_ActionType
pattern EcommerceData_ActionType_Unknown = EcommerceData_ActionType "UNKNOWN"

-- | Click through of product lists.
pattern EcommerceData_ActionType_Click :: EcommerceData_ActionType
pattern EcommerceData_ActionType_Click = EcommerceData_ActionType "CLICK"

-- | Product detail views.
pattern EcommerceData_ActionType_DETAILSVIEW :: EcommerceData_ActionType
pattern EcommerceData_ActionType_DETAILSVIEW = EcommerceData_ActionType "DETAILS_VIEW"

-- | Add product(s) to cart.
pattern EcommerceData_ActionType_ADDTOCART :: EcommerceData_ActionType
pattern EcommerceData_ActionType_ADDTOCART = EcommerceData_ActionType "ADD_TO_CART"

-- | Remove product(s) from cart.
pattern EcommerceData_ActionType_REMOVEFROMCART :: EcommerceData_ActionType
pattern EcommerceData_ActionType_REMOVEFROMCART = EcommerceData_ActionType "REMOVE_FROM_CART"

-- | Check out.
pattern EcommerceData_ActionType_Checkout :: EcommerceData_ActionType
pattern EcommerceData_ActionType_Checkout = EcommerceData_ActionType "CHECKOUT"

-- | Completed purchase.
pattern EcommerceData_ActionType_Payment :: EcommerceData_ActionType
pattern EcommerceData_ActionType_Payment = EcommerceData_ActionType "PAYMENT"

-- | Refund of purchase.
pattern EcommerceData_ActionType_Refund :: EcommerceData_ActionType
pattern EcommerceData_ActionType_Refund = EcommerceData_ActionType "REFUND"

-- | Checkout options.
pattern EcommerceData_ActionType_CHECKOUTOPTION :: EcommerceData_ActionType
pattern EcommerceData_ActionType_CHECKOUTOPTION = EcommerceData_ActionType "CHECKOUT_OPTION"

{-# COMPLETE
  EcommerceData_ActionType_Unknown,
  EcommerceData_ActionType_Click,
  EcommerceData_ActionType_DETAILSVIEW,
  EcommerceData_ActionType_ADDTOCART,
  EcommerceData_ActionType_REMOVEFROMCART,
  EcommerceData_ActionType_Checkout,
  EcommerceData_ActionType_Payment,
  EcommerceData_ActionType_Refund,
  EcommerceData_ActionType_CHECKOUTOPTION,
  EcommerceData_ActionType
  #-}

-- | The type of this e-commerce activity.
newtype EcommerceData_EcommerceType = EcommerceData_EcommerceType {fromEcommerceData_EcommerceType :: Core.Text}
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

-- | Used when the e-commerce activity type is unspecified.
pattern EcommerceData_EcommerceType_ECOMMERCETYPEUNSPECIFIED :: EcommerceData_EcommerceType
pattern EcommerceData_EcommerceType_ECOMMERCETYPEUNSPECIFIED = EcommerceData_EcommerceType "ECOMMERCE_TYPE_UNSPECIFIED"

-- | Used when activity has classic (non-enhanced) e-commerce information.
pattern EcommerceData_EcommerceType_Classic :: EcommerceData_EcommerceType
pattern EcommerceData_EcommerceType_Classic = EcommerceData_EcommerceType "CLASSIC"

-- | Used when activity has enhanced e-commerce information.
pattern EcommerceData_EcommerceType_Enhanced :: EcommerceData_EcommerceType
pattern EcommerceData_EcommerceType_Enhanced = EcommerceData_EcommerceType "ENHANCED"

{-# COMPLETE
  EcommerceData_EcommerceType_ECOMMERCETYPEUNSPECIFIED,
  EcommerceData_EcommerceType_Classic,
  EcommerceData_EcommerceType_Enhanced,
  EcommerceData_EcommerceType
  #-}

-- | Specifies how the metric expression should be formatted, for example @INTEGER@.
newtype Metric_FormattingType = Metric_FormattingType {fromMetric_FormattingType :: Core.Text}
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

-- | Metric type is unspecified.
pattern Metric_FormattingType_METRICTYPEUNSPECIFIED :: Metric_FormattingType
pattern Metric_FormattingType_METRICTYPEUNSPECIFIED = Metric_FormattingType "METRIC_TYPE_UNSPECIFIED"

-- | Integer metric.
pattern Metric_FormattingType_Integer :: Metric_FormattingType
pattern Metric_FormattingType_Integer = Metric_FormattingType "INTEGER"

-- | Float metric.
pattern Metric_FormattingType_Float :: Metric_FormattingType
pattern Metric_FormattingType_Float = Metric_FormattingType "FLOAT"

-- | Currency metric.
pattern Metric_FormattingType_Currency :: Metric_FormattingType
pattern Metric_FormattingType_Currency = Metric_FormattingType "CURRENCY"

-- | Percentage metric.
pattern Metric_FormattingType_Percent :: Metric_FormattingType
pattern Metric_FormattingType_Percent = Metric_FormattingType "PERCENT"

-- | Time metric in @HH:MM:SS@ format.
pattern Metric_FormattingType_Time :: Metric_FormattingType
pattern Metric_FormattingType_Time = Metric_FormattingType "TIME"

{-# COMPLETE
  Metric_FormattingType_METRICTYPEUNSPECIFIED,
  Metric_FormattingType_Integer,
  Metric_FormattingType_Float,
  Metric_FormattingType_Currency,
  Metric_FormattingType_Percent,
  Metric_FormattingType_Time,
  Metric_FormattingType
  #-}

-- | Is the metric @EQUAL@, @LESS_THAN@ or @GREATER_THAN@ the comparisonValue, the default is @EQUAL@. If the operator is @IS_MISSING@, checks if the metric is missing and would ignore the comparisonValue.
newtype MetricFilter_Operator = MetricFilter_Operator {fromMetricFilter_Operator :: Core.Text}
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

-- | If the operator is not specified, it is treated as @EQUAL@.
pattern MetricFilter_Operator_OPERATORUNSPECIFIED :: MetricFilter_Operator
pattern MetricFilter_Operator_OPERATORUNSPECIFIED = MetricFilter_Operator "OPERATOR_UNSPECIFIED"

-- | Should the value of the metric be exactly equal to the comparison value.
pattern MetricFilter_Operator_Equal :: MetricFilter_Operator
pattern MetricFilter_Operator_Equal = MetricFilter_Operator "EQUAL"

-- | Should the value of the metric be less than to the comparison value.
pattern MetricFilter_Operator_LESSTHAN :: MetricFilter_Operator
pattern MetricFilter_Operator_LESSTHAN = MetricFilter_Operator "LESS_THAN"

-- | Should the value of the metric be greater than to the comparison value.
pattern MetricFilter_Operator_GREATERTHAN :: MetricFilter_Operator
pattern MetricFilter_Operator_GREATERTHAN = MetricFilter_Operator "GREATER_THAN"

-- | Validates if the metric is missing. Doesn\'t take comparisonValue into account.
pattern MetricFilter_Operator_ISMISSING :: MetricFilter_Operator
pattern MetricFilter_Operator_ISMISSING = MetricFilter_Operator "IS_MISSING"

{-# COMPLETE
  MetricFilter_Operator_OPERATORUNSPECIFIED,
  MetricFilter_Operator_Equal,
  MetricFilter_Operator_LESSTHAN,
  MetricFilter_Operator_GREATERTHAN,
  MetricFilter_Operator_ISMISSING,
  MetricFilter_Operator
  #-}

-- | The operator for combining multiple metric filters. If unspecified, it is treated as an @OR@.
newtype MetricFilterClause_Operator = MetricFilterClause_Operator {fromMetricFilterClause_Operator :: Core.Text}
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

-- | Unspecified operator. It is treated as an @OR@.
pattern MetricFilterClause_Operator_OPERATORUNSPECIFIED :: MetricFilterClause_Operator
pattern MetricFilterClause_Operator_OPERATORUNSPECIFIED = MetricFilterClause_Operator "OPERATOR_UNSPECIFIED"

-- | The logical @OR@ operator.
pattern MetricFilterClause_Operator_OR :: MetricFilterClause_Operator
pattern MetricFilterClause_Operator_OR = MetricFilterClause_Operator "OR"

-- | The logical @AND@ operator.
pattern MetricFilterClause_Operator_And :: MetricFilterClause_Operator
pattern MetricFilterClause_Operator_And = MetricFilterClause_Operator "AND"

{-# COMPLETE
  MetricFilterClause_Operator_OPERATORUNSPECIFIED,
  MetricFilterClause_Operator_OR,
  MetricFilterClause_Operator_And,
  MetricFilterClause_Operator
  #-}

-- | The type of the metric, for example @INTEGER@.
newtype MetricHeaderEntry_Type = MetricHeaderEntry_Type {fromMetricHeaderEntry_Type :: Core.Text}
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

-- | Metric type is unspecified.
pattern MetricHeaderEntry_Type_METRICTYPEUNSPECIFIED :: MetricHeaderEntry_Type
pattern MetricHeaderEntry_Type_METRICTYPEUNSPECIFIED = MetricHeaderEntry_Type "METRIC_TYPE_UNSPECIFIED"

-- | Integer metric.
pattern MetricHeaderEntry_Type_Integer :: MetricHeaderEntry_Type
pattern MetricHeaderEntry_Type_Integer = MetricHeaderEntry_Type "INTEGER"

-- | Float metric.
pattern MetricHeaderEntry_Type_Float :: MetricHeaderEntry_Type
pattern MetricHeaderEntry_Type_Float = MetricHeaderEntry_Type "FLOAT"

-- | Currency metric.
pattern MetricHeaderEntry_Type_Currency :: MetricHeaderEntry_Type
pattern MetricHeaderEntry_Type_Currency = MetricHeaderEntry_Type "CURRENCY"

-- | Percentage metric.
pattern MetricHeaderEntry_Type_Percent :: MetricHeaderEntry_Type
pattern MetricHeaderEntry_Type_Percent = MetricHeaderEntry_Type "PERCENT"

-- | Time metric in @HH:MM:SS@ format.
pattern MetricHeaderEntry_Type_Time :: MetricHeaderEntry_Type
pattern MetricHeaderEntry_Type_Time = MetricHeaderEntry_Type "TIME"

{-# COMPLETE
  MetricHeaderEntry_Type_METRICTYPEUNSPECIFIED,
  MetricHeaderEntry_Type_Integer,
  MetricHeaderEntry_Type_Float,
  MetricHeaderEntry_Type_Currency,
  MetricHeaderEntry_Type_Percent,
  MetricHeaderEntry_Type_Time,
  MetricHeaderEntry_Type
  #-}

-- | The order type. The default orderType is @VALUE@.
newtype OrderBy_OrderType = OrderBy_OrderType {fromOrderBy_OrderType :: Core.Text}
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

-- | Unspecified order type will be treated as sort based on value.
pattern OrderBy_OrderType_ORDERTYPEUNSPECIFIED :: OrderBy_OrderType
pattern OrderBy_OrderType_ORDERTYPEUNSPECIFIED = OrderBy_OrderType "ORDER_TYPE_UNSPECIFIED"

-- | The sort order is based on the value of the chosen column; looks only at the first date range.
pattern OrderBy_OrderType_Value :: OrderBy_OrderType
pattern OrderBy_OrderType_Value = OrderBy_OrderType "VALUE"

-- | The sort order is based on the difference of the values of the chosen column between the first two date ranges. Usable only if there are exactly two date ranges.
pattern OrderBy_OrderType_Delta :: OrderBy_OrderType
pattern OrderBy_OrderType_Delta = OrderBy_OrderType "DELTA"

-- | The sort order is based on weighted value of the chosen column. If column has n\/d format, then weighted value of this ratio will be @(n + totals.n)\/(d + totals.d)@ Usable only for metrics that represent ratios.
pattern OrderBy_OrderType_Smart :: OrderBy_OrderType
pattern OrderBy_OrderType_Smart = OrderBy_OrderType "SMART"

-- | Histogram order type is applicable only to dimension columns with non-empty histogram-buckets.
pattern OrderBy_OrderType_HISTOGRAMBUCKET :: OrderBy_OrderType
pattern OrderBy_OrderType_HISTOGRAMBUCKET = OrderBy_OrderType "HISTOGRAM_BUCKET"

-- | If the dimensions are fixed length numbers, ordinary sort would just work fine. @DIMENSION_AS_INTEGER@ can be used if the dimensions are variable length numbers.
pattern OrderBy_OrderType_DIMENSIONASINTEGER :: OrderBy_OrderType
pattern OrderBy_OrderType_DIMENSIONASINTEGER = OrderBy_OrderType "DIMENSION_AS_INTEGER"

{-# COMPLETE
  OrderBy_OrderType_ORDERTYPEUNSPECIFIED,
  OrderBy_OrderType_Value,
  OrderBy_OrderType_Delta,
  OrderBy_OrderType_Smart,
  OrderBy_OrderType_HISTOGRAMBUCKET,
  OrderBy_OrderType_DIMENSIONASINTEGER,
  OrderBy_OrderType
  #-}

-- | The sorting order for the field.
newtype OrderBy_SortOrder = OrderBy_SortOrder {fromOrderBy_SortOrder :: Core.Text}
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

-- | If the sort order is unspecified, the default is ascending.
pattern OrderBy_SortOrder_SORTORDERUNSPECIFIED :: OrderBy_SortOrder
pattern OrderBy_SortOrder_SORTORDERUNSPECIFIED = OrderBy_SortOrder "SORT_ORDER_UNSPECIFIED"

-- | Ascending sort. The field will be sorted in an ascending manner.
pattern OrderBy_SortOrder_Ascending :: OrderBy_SortOrder
pattern OrderBy_SortOrder_Ascending = OrderBy_SortOrder "ASCENDING"

-- | Descending sort. The field will be sorted in a descending manner.
pattern OrderBy_SortOrder_Descending :: OrderBy_SortOrder
pattern OrderBy_SortOrder_Descending = OrderBy_SortOrder "DESCENDING"

{-# COMPLETE
  OrderBy_SortOrder_SORTORDERUNSPECIFIED,
  OrderBy_SortOrder_Ascending,
  OrderBy_SortOrder_Descending,
  OrderBy_SortOrder
  #-}

-- | The desired report <https://support.google.com/analytics/answer/2637192 sample> size. If the the @samplingLevel@ field is unspecified the @DEFAULT@ sampling level is used. Every <#ReportRequest ReportRequest> within a @batchGet@ method must contain the same @samplingLevel@ definition. See </analytics/devguides/reporting/core/v4/basics#sampling developer guide> for details.
newtype ReportRequest_SamplingLevel = ReportRequest_SamplingLevel {fromReportRequest_SamplingLevel :: Core.Text}
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

-- | If the @samplingLevel@ field is unspecified the @DEFAULT@ sampling level is used.
pattern ReportRequest_SamplingLevel_SAMPLINGUNSPECIFIED :: ReportRequest_SamplingLevel
pattern ReportRequest_SamplingLevel_SAMPLINGUNSPECIFIED = ReportRequest_SamplingLevel "SAMPLING_UNSPECIFIED"

-- | Returns response with a sample size that balances speed and accuracy.
pattern ReportRequest_SamplingLevel_Default :: ReportRequest_SamplingLevel
pattern ReportRequest_SamplingLevel_Default = ReportRequest_SamplingLevel "DEFAULT"

-- | It returns a fast response with a smaller sampling size.
pattern ReportRequest_SamplingLevel_Small :: ReportRequest_SamplingLevel
pattern ReportRequest_SamplingLevel_Small = ReportRequest_SamplingLevel "SMALL"

-- | Returns a more accurate response using a large sampling size. But this may result in response being slower.
pattern ReportRequest_SamplingLevel_Large :: ReportRequest_SamplingLevel
pattern ReportRequest_SamplingLevel_Large = ReportRequest_SamplingLevel "LARGE"

{-# COMPLETE
  ReportRequest_SamplingLevel_SAMPLINGUNSPECIFIED,
  ReportRequest_SamplingLevel_Default,
  ReportRequest_SamplingLevel_Small,
  ReportRequest_SamplingLevel_Large,
  ReportRequest_SamplingLevel
  #-}

newtype SearchUserActivityRequest_ActivityTypesItem = SearchUserActivityRequest_ActivityTypesItem {fromSearchUserActivityRequest_ActivityTypesItem :: Core.Text}
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

-- | ActivityType will never have this value in the response. Using this type in the request will result in an error.
pattern SearchUserActivityRequest_ActivityTypesItem_ACTIVITYTYPEUNSPECIFIED :: SearchUserActivityRequest_ActivityTypesItem
pattern SearchUserActivityRequest_ActivityTypesItem_ACTIVITYTYPEUNSPECIFIED = SearchUserActivityRequest_ActivityTypesItem "ACTIVITY_TYPE_UNSPECIFIED"

-- | Used when the activity resulted out of a visitor viewing a page.
pattern SearchUserActivityRequest_ActivityTypesItem_Pageview :: SearchUserActivityRequest_ActivityTypesItem
pattern SearchUserActivityRequest_ActivityTypesItem_Pageview = SearchUserActivityRequest_ActivityTypesItem "PAGEVIEW"

-- | Used when the activity resulted out of a visitor using an application on a mobile device.
pattern SearchUserActivityRequest_ActivityTypesItem_Screenview :: SearchUserActivityRequest_ActivityTypesItem
pattern SearchUserActivityRequest_ActivityTypesItem_Screenview = SearchUserActivityRequest_ActivityTypesItem "SCREENVIEW"

-- | Used to denote that a goal type activity.
pattern SearchUserActivityRequest_ActivityTypesItem_Goal :: SearchUserActivityRequest_ActivityTypesItem
pattern SearchUserActivityRequest_ActivityTypesItem_Goal = SearchUserActivityRequest_ActivityTypesItem "GOAL"

-- | An e-commerce transaction was performed by the visitor on the page.
pattern SearchUserActivityRequest_ActivityTypesItem_Ecommerce :: SearchUserActivityRequest_ActivityTypesItem
pattern SearchUserActivityRequest_ActivityTypesItem_Ecommerce = SearchUserActivityRequest_ActivityTypesItem "ECOMMERCE"

-- | Used when the activity is an event.
pattern SearchUserActivityRequest_ActivityTypesItem_Event :: SearchUserActivityRequest_ActivityTypesItem
pattern SearchUserActivityRequest_ActivityTypesItem_Event = SearchUserActivityRequest_ActivityTypesItem "EVENT"

{-# COMPLETE
  SearchUserActivityRequest_ActivityTypesItem_ACTIVITYTYPEUNSPECIFIED,
  SearchUserActivityRequest_ActivityTypesItem_Pageview,
  SearchUserActivityRequest_ActivityTypesItem_Screenview,
  SearchUserActivityRequest_ActivityTypesItem_Goal,
  SearchUserActivityRequest_ActivityTypesItem_Ecommerce,
  SearchUserActivityRequest_ActivityTypesItem_Event,
  SearchUserActivityRequest_ActivityTypesItem
  #-}

-- | The operator to use to match the dimension with the expressions.
newtype SegmentDimensionFilter_Operator = SegmentDimensionFilter_Operator {fromSegmentDimensionFilter_Operator :: Core.Text}
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

-- | If the match type is unspecified, it is treated as a REGEXP.
pattern SegmentDimensionFilter_Operator_OPERATORUNSPECIFIED :: SegmentDimensionFilter_Operator
pattern SegmentDimensionFilter_Operator_OPERATORUNSPECIFIED = SegmentDimensionFilter_Operator "OPERATOR_UNSPECIFIED"

-- | The match expression is treated as a regular expression. All other match types are not treated as regular expressions.
pattern SegmentDimensionFilter_Operator_Regexp :: SegmentDimensionFilter_Operator
pattern SegmentDimensionFilter_Operator_Regexp = SegmentDimensionFilter_Operator "REGEXP"

-- | Matches the values which begin with the match expression provided.
pattern SegmentDimensionFilter_Operator_BEGINSWITH :: SegmentDimensionFilter_Operator
pattern SegmentDimensionFilter_Operator_BEGINSWITH = SegmentDimensionFilter_Operator "BEGINS_WITH"

-- | Matches the values which end with the match expression provided.
pattern SegmentDimensionFilter_Operator_ENDSWITH :: SegmentDimensionFilter_Operator
pattern SegmentDimensionFilter_Operator_ENDSWITH = SegmentDimensionFilter_Operator "ENDS_WITH"

-- | Substring match.
pattern SegmentDimensionFilter_Operator_Partial :: SegmentDimensionFilter_Operator
pattern SegmentDimensionFilter_Operator_Partial = SegmentDimensionFilter_Operator "PARTIAL"

-- | The value should match the match expression entirely.
pattern SegmentDimensionFilter_Operator_Exact :: SegmentDimensionFilter_Operator
pattern SegmentDimensionFilter_Operator_Exact = SegmentDimensionFilter_Operator "EXACT"

-- | This option is used to specify a dimension filter whose expression can take any value from a selected list of values. This helps avoiding evaluating multiple exact match dimension filters which are OR\'ed for every single response row. For example: expressions: [\"A\", \"B\", \"C\"] Any response row whose dimension has it is value as A, B or C, matches this DimensionFilter.
pattern SegmentDimensionFilter_Operator_INLIST :: SegmentDimensionFilter_Operator
pattern SegmentDimensionFilter_Operator_INLIST = SegmentDimensionFilter_Operator "IN_LIST"

-- | Integer comparison filters. case sensitivity is ignored for these and the expression is assumed to be a string representing an integer. Failure conditions: - if expression is not a valid int64, the client should expect an error. - input dimensions that are not valid int64 values will never match the filter. Checks if the dimension is numerically less than the match expression.
pattern SegmentDimensionFilter_Operator_NUMERICLESSTHAN :: SegmentDimensionFilter_Operator
pattern SegmentDimensionFilter_Operator_NUMERICLESSTHAN = SegmentDimensionFilter_Operator "NUMERIC_LESS_THAN"

-- | Checks if the dimension is numerically greater than the match expression.
pattern SegmentDimensionFilter_Operator_NUMERICGREATERTHAN :: SegmentDimensionFilter_Operator
pattern SegmentDimensionFilter_Operator_NUMERICGREATERTHAN = SegmentDimensionFilter_Operator "NUMERIC_GREATER_THAN"

-- | Checks if the dimension is numerically between the minimum and maximum of the match expression, boundaries excluded.
pattern SegmentDimensionFilter_Operator_NUMERICBETWEEN :: SegmentDimensionFilter_Operator
pattern SegmentDimensionFilter_Operator_NUMERICBETWEEN = SegmentDimensionFilter_Operator "NUMERIC_BETWEEN"

{-# COMPLETE
  SegmentDimensionFilter_Operator_OPERATORUNSPECIFIED,
  SegmentDimensionFilter_Operator_Regexp,
  SegmentDimensionFilter_Operator_BEGINSWITH,
  SegmentDimensionFilter_Operator_ENDSWITH,
  SegmentDimensionFilter_Operator_Partial,
  SegmentDimensionFilter_Operator_Exact,
  SegmentDimensionFilter_Operator_INLIST,
  SegmentDimensionFilter_Operator_NUMERICLESSTHAN,
  SegmentDimensionFilter_Operator_NUMERICGREATERTHAN,
  SegmentDimensionFilter_Operator_NUMERICBETWEEN,
  SegmentDimensionFilter_Operator
  #-}

-- | Specifies is the operation to perform to compare the metric. The default is @EQUAL@.
newtype SegmentMetricFilter_Operator = SegmentMetricFilter_Operator {fromSegmentMetricFilter_Operator :: Core.Text}
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

-- | Unspecified operator is treated as @LESS_THAN@ operator.
pattern SegmentMetricFilter_Operator_UNSPECIFIEDOPERATOR :: SegmentMetricFilter_Operator
pattern SegmentMetricFilter_Operator_UNSPECIFIEDOPERATOR = SegmentMetricFilter_Operator "UNSPECIFIED_OPERATOR"

-- | Checks if the metric value is less than comparison value.
pattern SegmentMetricFilter_Operator_LESSTHAN :: SegmentMetricFilter_Operator
pattern SegmentMetricFilter_Operator_LESSTHAN = SegmentMetricFilter_Operator "LESS_THAN"

-- | Checks if the metric value is greater than comparison value.
pattern SegmentMetricFilter_Operator_GREATERTHAN :: SegmentMetricFilter_Operator
pattern SegmentMetricFilter_Operator_GREATERTHAN = SegmentMetricFilter_Operator "GREATER_THAN"

-- | Equals operator.
pattern SegmentMetricFilter_Operator_Equal :: SegmentMetricFilter_Operator
pattern SegmentMetricFilter_Operator_Equal = SegmentMetricFilter_Operator "EQUAL"

-- | For between operator, both the minimum and maximum are exclusive. We will use @LT@ and @GT@ for comparison.
pattern SegmentMetricFilter_Operator_Between :: SegmentMetricFilter_Operator
pattern SegmentMetricFilter_Operator_Between = SegmentMetricFilter_Operator "BETWEEN"

{-# COMPLETE
  SegmentMetricFilter_Operator_UNSPECIFIEDOPERATOR,
  SegmentMetricFilter_Operator_LESSTHAN,
  SegmentMetricFilter_Operator_GREATERTHAN,
  SegmentMetricFilter_Operator_Equal,
  SegmentMetricFilter_Operator_Between,
  SegmentMetricFilter_Operator
  #-}

-- | Scope for a metric defines the level at which that metric is defined. The specified metric scope must be equal to or greater than its primary scope as defined in the data model. The primary scope is defined by if the segment is selecting users or sessions.
newtype SegmentMetricFilter_Scope = SegmentMetricFilter_Scope {fromSegmentMetricFilter_Scope :: Core.Text}
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

-- | If the scope is unspecified, it defaults to the condition scope, @USER@ or @SESSION@ depending on if the segment is trying to choose users or sessions.
pattern SegmentMetricFilter_Scope_UNSPECIFIEDSCOPE :: SegmentMetricFilter_Scope
pattern SegmentMetricFilter_Scope_UNSPECIFIEDSCOPE = SegmentMetricFilter_Scope "UNSPECIFIED_SCOPE"

-- | Product scope.
pattern SegmentMetricFilter_Scope_Product :: SegmentMetricFilter_Scope
pattern SegmentMetricFilter_Scope_Product = SegmentMetricFilter_Scope "PRODUCT"

-- | Hit scope.
pattern SegmentMetricFilter_Scope_Hit :: SegmentMetricFilter_Scope
pattern SegmentMetricFilter_Scope_Hit = SegmentMetricFilter_Scope "HIT"

-- | Session scope.
pattern SegmentMetricFilter_Scope_Session :: SegmentMetricFilter_Scope
pattern SegmentMetricFilter_Scope_Session = SegmentMetricFilter_Scope "SESSION"

-- | User scope.
pattern SegmentMetricFilter_Scope_User :: SegmentMetricFilter_Scope
pattern SegmentMetricFilter_Scope_User = SegmentMetricFilter_Scope "USER"

{-# COMPLETE
  SegmentMetricFilter_Scope_UNSPECIFIEDSCOPE,
  SegmentMetricFilter_Scope_Product,
  SegmentMetricFilter_Scope_Hit,
  SegmentMetricFilter_Scope_Session,
  SegmentMetricFilter_Scope_User,
  SegmentMetricFilter_Scope
  #-}

-- | Specifies if the step immediately precedes or can be any time before the next step.
newtype SegmentSequenceStep_MatchType = SegmentSequenceStep_MatchType {fromSegmentSequenceStep_MatchType :: Core.Text}
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

-- | Unspecified match type is treated as precedes.
pattern SegmentSequenceStep_MatchType_UNSPECIFIEDMATCHTYPE :: SegmentSequenceStep_MatchType
pattern SegmentSequenceStep_MatchType_UNSPECIFIEDMATCHTYPE = SegmentSequenceStep_MatchType "UNSPECIFIED_MATCH_TYPE"

-- | Operator indicates that the previous step precedes the next step.
pattern SegmentSequenceStep_MatchType_Precedes :: SegmentSequenceStep_MatchType
pattern SegmentSequenceStep_MatchType_Precedes = SegmentSequenceStep_MatchType "PRECEDES"

-- | Operator indicates that the previous step immediately precedes the next step.
pattern SegmentSequenceStep_MatchType_IMMEDIATELYPRECEDES :: SegmentSequenceStep_MatchType
pattern SegmentSequenceStep_MatchType_IMMEDIATELYPRECEDES = SegmentSequenceStep_MatchType "IMMEDIATELY_PRECEDES"

{-# COMPLETE
  SegmentSequenceStep_MatchType_UNSPECIFIEDMATCHTYPE,
  SegmentSequenceStep_MatchType_Precedes,
  SegmentSequenceStep_MatchType_IMMEDIATELYPRECEDES,
  SegmentSequenceStep_MatchType
  #-}

-- | Type of the user in the request. The field @userId@ is associated with this type.
newtype User_Type = User_Type {fromUser_Type :: Core.Text}
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

-- | When the User Id Type is not specified, the default type used will be CLIENT_ID.
pattern User_Type_USERIDTYPEUNSPECIFIED :: User_Type
pattern User_Type_USERIDTYPEUNSPECIFIED = User_Type "USER_ID_TYPE_UNSPECIFIED"

-- | A single user, like a signed-in user account, that may interact with content across one or more devices and \/ or browser instances.
pattern User_Type_USERIDTYPEUSERID :: User_Type
pattern User_Type_USERIDTYPEUSERID = User_Type "USER_ID_TYPE_USER_ID"

-- | Analytics assigned client_id.
pattern User_Type_USERIDTYPECLIENTID :: User_Type
pattern User_Type_USERIDTYPECLIENTID = User_Type "USER_ID_TYPE_CLIENT_ID"

{-# COMPLETE
  User_Type_USERIDTYPEUNSPECIFIED,
  User_Type_USERIDTYPEUSERID,
  User_Type_USERIDTYPECLIENTID,
  User_Type
  #-}
