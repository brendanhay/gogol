{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DLP.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DLP.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | Likelihood to return for this CustomInfoType. This base value can be
-- altered by a detection rule if the finding meets the criteria specified
-- by the rule. Defaults to \`VERY_LIKELY\` if not specified.
data GooglePrivacyDlpV2CustomInfoTypeLikelihood
    = LikelihoodUnspecified
      -- ^ @LIKELIHOOD_UNSPECIFIED@
      -- Default value; same as POSSIBLE.
    | VeryUnlikely
      -- ^ @VERY_UNLIKELY@
      -- Few matching elements.
    | Unlikely
      -- ^ @UNLIKELY@
    | Possible
      -- ^ @POSSIBLE@
      -- Some matching elements.
    | Likely
      -- ^ @LIKELY@
    | VeryLikely
      -- ^ @VERY_LIKELY@
      -- Many matching elements.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GooglePrivacyDlpV2CustomInfoTypeLikelihood

instance FromHttpApiData GooglePrivacyDlpV2CustomInfoTypeLikelihood where
    parseQueryParam = \case
        "LIKELIHOOD_UNSPECIFIED" -> Right LikelihoodUnspecified
        "VERY_UNLIKELY" -> Right VeryUnlikely
        "UNLIKELY" -> Right Unlikely
        "POSSIBLE" -> Right Possible
        "LIKELY" -> Right Likely
        "VERY_LIKELY" -> Right VeryLikely
        x -> Left ("Unable to parse GooglePrivacyDlpV2CustomInfoTypeLikelihood from: " <> x)

instance ToHttpApiData GooglePrivacyDlpV2CustomInfoTypeLikelihood where
    toQueryParam = \case
        LikelihoodUnspecified -> "LIKELIHOOD_UNSPECIFIED"
        VeryUnlikely -> "VERY_UNLIKELY"
        Unlikely -> "UNLIKELY"
        Possible -> "POSSIBLE"
        Likely -> "LIKELY"
        VeryLikely -> "VERY_LIKELY"

instance FromJSON GooglePrivacyDlpV2CustomInfoTypeLikelihood where
    parseJSON = parseJSONText "GooglePrivacyDlpV2CustomInfoTypeLikelihood"

instance ToJSON GooglePrivacyDlpV2CustomInfoTypeLikelihood where
    toJSON = toJSONText

-- | Confidence of how likely it is that the \`info_type\` is correct.
data GooglePrivacyDlpV2FindingLikelihood
    = GPDVFLLikelihoodUnspecified
      -- ^ @LIKELIHOOD_UNSPECIFIED@
      -- Default value; same as POSSIBLE.
    | GPDVFLVeryUnlikely
      -- ^ @VERY_UNLIKELY@
      -- Few matching elements.
    | GPDVFLUnlikely
      -- ^ @UNLIKELY@
    | GPDVFLPossible
      -- ^ @POSSIBLE@
      -- Some matching elements.
    | GPDVFLLikely
      -- ^ @LIKELY@
    | GPDVFLVeryLikely
      -- ^ @VERY_LIKELY@
      -- Many matching elements.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GooglePrivacyDlpV2FindingLikelihood

instance FromHttpApiData GooglePrivacyDlpV2FindingLikelihood where
    parseQueryParam = \case
        "LIKELIHOOD_UNSPECIFIED" -> Right GPDVFLLikelihoodUnspecified
        "VERY_UNLIKELY" -> Right GPDVFLVeryUnlikely
        "UNLIKELY" -> Right GPDVFLUnlikely
        "POSSIBLE" -> Right GPDVFLPossible
        "LIKELY" -> Right GPDVFLLikely
        "VERY_LIKELY" -> Right GPDVFLVeryLikely
        x -> Left ("Unable to parse GooglePrivacyDlpV2FindingLikelihood from: " <> x)

instance ToHttpApiData GooglePrivacyDlpV2FindingLikelihood where
    toQueryParam = \case
        GPDVFLLikelihoodUnspecified -> "LIKELIHOOD_UNSPECIFIED"
        GPDVFLVeryUnlikely -> "VERY_UNLIKELY"
        GPDVFLUnlikely -> "UNLIKELY"
        GPDVFLPossible -> "POSSIBLE"
        GPDVFLLikely -> "LIKELY"
        GPDVFLVeryLikely -> "VERY_LIKELY"

instance FromJSON GooglePrivacyDlpV2FindingLikelihood where
    parseJSON = parseJSONText "GooglePrivacyDlpV2FindingLikelihood"

instance ToJSON GooglePrivacyDlpV2FindingLikelihood where
    toJSON = toJSONText

-- | If set to EXCLUSION_TYPE_EXCLUDE this infoType will not cause a finding
-- to be returned. It still can be used for rules matching.
data GooglePrivacyDlpV2CustomInfoTypeExclusionType
    = ExclusionTypeUnspecified
      -- ^ @EXCLUSION_TYPE_UNSPECIFIED@
      -- A finding of this custom info type will not be excluded from results.
    | ExclusionTypeExclude
      -- ^ @EXCLUSION_TYPE_EXCLUDE@
      -- A finding of this custom info type will be excluded from final results,
      -- but can still affect rule execution.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GooglePrivacyDlpV2CustomInfoTypeExclusionType

instance FromHttpApiData GooglePrivacyDlpV2CustomInfoTypeExclusionType where
    parseQueryParam = \case
        "EXCLUSION_TYPE_UNSPECIFIED" -> Right ExclusionTypeUnspecified
        "EXCLUSION_TYPE_EXCLUDE" -> Right ExclusionTypeExclude
        x -> Left ("Unable to parse GooglePrivacyDlpV2CustomInfoTypeExclusionType from: " <> x)

instance ToHttpApiData GooglePrivacyDlpV2CustomInfoTypeExclusionType where
    toQueryParam = \case
        ExclusionTypeUnspecified -> "EXCLUSION_TYPE_UNSPECIFIED"
        ExclusionTypeExclude -> "EXCLUSION_TYPE_EXCLUDE"

instance FromJSON GooglePrivacyDlpV2CustomInfoTypeExclusionType where
    parseJSON = parseJSONText "GooglePrivacyDlpV2CustomInfoTypeExclusionType"

instance ToJSON GooglePrivacyDlpV2CustomInfoTypeExclusionType where
    toJSON = toJSONText

-- | Set the likelihood of a finding to a fixed value.
data GooglePrivacyDlpV2LikelihoodAdjustmentFixedLikelihood
    = GPDVLAFLLikelihoodUnspecified
      -- ^ @LIKELIHOOD_UNSPECIFIED@
      -- Default value; same as POSSIBLE.
    | GPDVLAFLVeryUnlikely
      -- ^ @VERY_UNLIKELY@
      -- Few matching elements.
    | GPDVLAFLUnlikely
      -- ^ @UNLIKELY@
    | GPDVLAFLPossible
      -- ^ @POSSIBLE@
      -- Some matching elements.
    | GPDVLAFLLikely
      -- ^ @LIKELY@
    | GPDVLAFLVeryLikely
      -- ^ @VERY_LIKELY@
      -- Many matching elements.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GooglePrivacyDlpV2LikelihoodAdjustmentFixedLikelihood

instance FromHttpApiData GooglePrivacyDlpV2LikelihoodAdjustmentFixedLikelihood where
    parseQueryParam = \case
        "LIKELIHOOD_UNSPECIFIED" -> Right GPDVLAFLLikelihoodUnspecified
        "VERY_UNLIKELY" -> Right GPDVLAFLVeryUnlikely
        "UNLIKELY" -> Right GPDVLAFLUnlikely
        "POSSIBLE" -> Right GPDVLAFLPossible
        "LIKELY" -> Right GPDVLAFLLikely
        "VERY_LIKELY" -> Right GPDVLAFLVeryLikely
        x -> Left ("Unable to parse GooglePrivacyDlpV2LikelihoodAdjustmentFixedLikelihood from: " <> x)

instance ToHttpApiData GooglePrivacyDlpV2LikelihoodAdjustmentFixedLikelihood where
    toQueryParam = \case
        GPDVLAFLLikelihoodUnspecified -> "LIKELIHOOD_UNSPECIFIED"
        GPDVLAFLVeryUnlikely -> "VERY_UNLIKELY"
        GPDVLAFLUnlikely -> "UNLIKELY"
        GPDVLAFLPossible -> "POSSIBLE"
        GPDVLAFLLikely -> "LIKELY"
        GPDVLAFLVeryLikely -> "VERY_LIKELY"

instance FromJSON GooglePrivacyDlpV2LikelihoodAdjustmentFixedLikelihood where
    parseJSON = parseJSONText "GooglePrivacyDlpV2LikelihoodAdjustmentFixedLikelihood"

instance ToJSON GooglePrivacyDlpV2LikelihoodAdjustmentFixedLikelihood where
    toJSON = toJSONText

data GooglePrivacyDlpV2TimePartConfigPartToExtract
    = TimePartUnspecified
      -- ^ @TIME_PART_UNSPECIFIED@
    | Year
      -- ^ @YEAR@
      -- [0-9999]
    | Month
      -- ^ @MONTH@
      -- [1-12]
    | DayOfMonth
      -- ^ @DAY_OF_MONTH@
      -- [1-31]
    | DayOfWeek
      -- ^ @DAY_OF_WEEK@
      -- [1-7]
    | WeekOfYear
      -- ^ @WEEK_OF_YEAR@
      -- [1-52]
    | HourOfDay
      -- ^ @HOUR_OF_DAY@
      -- [0-23]
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GooglePrivacyDlpV2TimePartConfigPartToExtract

instance FromHttpApiData GooglePrivacyDlpV2TimePartConfigPartToExtract where
    parseQueryParam = \case
        "TIME_PART_UNSPECIFIED" -> Right TimePartUnspecified
        "YEAR" -> Right Year
        "MONTH" -> Right Month
        "DAY_OF_MONTH" -> Right DayOfMonth
        "DAY_OF_WEEK" -> Right DayOfWeek
        "WEEK_OF_YEAR" -> Right WeekOfYear
        "HOUR_OF_DAY" -> Right HourOfDay
        x -> Left ("Unable to parse GooglePrivacyDlpV2TimePartConfigPartToExtract from: " <> x)

instance ToHttpApiData GooglePrivacyDlpV2TimePartConfigPartToExtract where
    toQueryParam = \case
        TimePartUnspecified -> "TIME_PART_UNSPECIFIED"
        Year -> "YEAR"
        Month -> "MONTH"
        DayOfMonth -> "DAY_OF_MONTH"
        DayOfWeek -> "DAY_OF_WEEK"
        WeekOfYear -> "WEEK_OF_YEAR"
        HourOfDay -> "HOUR_OF_DAY"

instance FromJSON GooglePrivacyDlpV2TimePartConfigPartToExtract where
    parseJSON = parseJSONText "GooglePrivacyDlpV2TimePartConfigPartToExtract"

instance ToJSON GooglePrivacyDlpV2TimePartConfigPartToExtract where
    toJSON = toJSONText

-- | Operator used to compare the field or infoType to the value. [required]
data GooglePrivacyDlpV2ConditionOperator
    = RelationalOperatorUnspecified
      -- ^ @RELATIONAL_OPERATOR_UNSPECIFIED@
    | EqualTo
      -- ^ @EQUAL_TO@
      -- Equal.
    | NotEqualTo
      -- ^ @NOT_EQUAL_TO@
      -- Not equal to.
    | GreaterThan
      -- ^ @GREATER_THAN@
      -- Greater than.
    | LessThan
      -- ^ @LESS_THAN@
      -- Less than.
    | GreaterThanOrEquals
      -- ^ @GREATER_THAN_OR_EQUALS@
      -- Greater than or equals.
    | LessThanOrEquals
      -- ^ @LESS_THAN_OR_EQUALS@
      -- Less than or equals.
    | Exists
      -- ^ @EXISTS@
      -- Exists
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GooglePrivacyDlpV2ConditionOperator

instance FromHttpApiData GooglePrivacyDlpV2ConditionOperator where
    parseQueryParam = \case
        "RELATIONAL_OPERATOR_UNSPECIFIED" -> Right RelationalOperatorUnspecified
        "EQUAL_TO" -> Right EqualTo
        "NOT_EQUAL_TO" -> Right NotEqualTo
        "GREATER_THAN" -> Right GreaterThan
        "LESS_THAN" -> Right LessThan
        "GREATER_THAN_OR_EQUALS" -> Right GreaterThanOrEquals
        "LESS_THAN_OR_EQUALS" -> Right LessThanOrEquals
        "EXISTS" -> Right Exists
        x -> Left ("Unable to parse GooglePrivacyDlpV2ConditionOperator from: " <> x)

instance ToHttpApiData GooglePrivacyDlpV2ConditionOperator where
    toQueryParam = \case
        RelationalOperatorUnspecified -> "RELATIONAL_OPERATOR_UNSPECIFIED"
        EqualTo -> "EQUAL_TO"
        NotEqualTo -> "NOT_EQUAL_TO"
        GreaterThan -> "GREATER_THAN"
        LessThan -> "LESS_THAN"
        GreaterThanOrEquals -> "GREATER_THAN_OR_EQUALS"
        LessThanOrEquals -> "LESS_THAN_OR_EQUALS"
        Exists -> "EXISTS"

instance FromJSON GooglePrivacyDlpV2ConditionOperator where
    parseJSON = parseJSONText "GooglePrivacyDlpV2ConditionOperator"

instance ToJSON GooglePrivacyDlpV2ConditionOperator where
    toJSON = toJSONText

data GooglePrivacyDlpV2DateTimeDayOfWeek
    = DayOfWeekUnspecified
      -- ^ @DAY_OF_WEEK_UNSPECIFIED@
      -- The unspecified day-of-week.
    | Monday
      -- ^ @MONDAY@
      -- The day-of-week of Monday.
    | Tuesday
      -- ^ @TUESDAY@
      -- The day-of-week of Tuesday.
    | Wednesday
      -- ^ @WEDNESDAY@
      -- The day-of-week of Wednesday.
    | Thursday
      -- ^ @THURSDAY@
      -- The day-of-week of Thursday.
    | Friday
      -- ^ @FRIDAY@
      -- The day-of-week of Friday.
    | Saturday
      -- ^ @SATURDAY@
      -- The day-of-week of Saturday.
    | Sunday
      -- ^ @SUNDAY@
      -- The day-of-week of Sunday.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GooglePrivacyDlpV2DateTimeDayOfWeek

instance FromHttpApiData GooglePrivacyDlpV2DateTimeDayOfWeek where
    parseQueryParam = \case
        "DAY_OF_WEEK_UNSPECIFIED" -> Right DayOfWeekUnspecified
        "MONDAY" -> Right Monday
        "TUESDAY" -> Right Tuesday
        "WEDNESDAY" -> Right Wednesday
        "THURSDAY" -> Right Thursday
        "FRIDAY" -> Right Friday
        "SATURDAY" -> Right Saturday
        "SUNDAY" -> Right Sunday
        x -> Left ("Unable to parse GooglePrivacyDlpV2DateTimeDayOfWeek from: " <> x)

instance ToHttpApiData GooglePrivacyDlpV2DateTimeDayOfWeek where
    toQueryParam = \case
        DayOfWeekUnspecified -> "DAY_OF_WEEK_UNSPECIFIED"
        Monday -> "MONDAY"
        Tuesday -> "TUESDAY"
        Wednesday -> "WEDNESDAY"
        Thursday -> "THURSDAY"
        Friday -> "FRIDAY"
        Saturday -> "SATURDAY"
        Sunday -> "SUNDAY"

instance FromJSON GooglePrivacyDlpV2DateTimeDayOfWeek where
    parseJSON = parseJSONText "GooglePrivacyDlpV2DateTimeDayOfWeek"

instance ToJSON GooglePrivacyDlpV2DateTimeDayOfWeek where
    toJSON = toJSONText

-- | State of a job.
data GooglePrivacyDlpV2DlpJobState
    = JobStateUnspecified
      -- ^ @JOB_STATE_UNSPECIFIED@
    | Pending
      -- ^ @PENDING@
      -- The job has not yet started.
    | Running
      -- ^ @RUNNING@
      -- The job is currently running.
    | Done
      -- ^ @DONE@
      -- The job is no longer running.
    | Canceled
      -- ^ @CANCELED@
      -- The job was canceled before it could complete.
    | Failed
      -- ^ @FAILED@
      -- The job had an error and did not complete.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GooglePrivacyDlpV2DlpJobState

instance FromHttpApiData GooglePrivacyDlpV2DlpJobState where
    parseQueryParam = \case
        "JOB_STATE_UNSPECIFIED" -> Right JobStateUnspecified
        "PENDING" -> Right Pending
        "RUNNING" -> Right Running
        "DONE" -> Right Done
        "CANCELED" -> Right Canceled
        "FAILED" -> Right Failed
        x -> Left ("Unable to parse GooglePrivacyDlpV2DlpJobState from: " <> x)

instance ToHttpApiData GooglePrivacyDlpV2DlpJobState where
    toQueryParam = \case
        JobStateUnspecified -> "JOB_STATE_UNSPECIFIED"
        Pending -> "PENDING"
        Running -> "RUNNING"
        Done -> "DONE"
        Canceled -> "CANCELED"
        Failed -> "FAILED"

instance FromJSON GooglePrivacyDlpV2DlpJobState where
    parseJSON = parseJSONText "GooglePrivacyDlpV2DlpJobState"

instance ToJSON GooglePrivacyDlpV2DlpJobState where
    toJSON = toJSONText

data GooglePrivacyDlpV2SummaryResultCode
    = TransformationResultCodeUnspecified
      -- ^ @TRANSFORMATION_RESULT_CODE_UNSPECIFIED@
    | Success
      -- ^ @SUCCESS@
    | Error'
      -- ^ @ERROR@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GooglePrivacyDlpV2SummaryResultCode

instance FromHttpApiData GooglePrivacyDlpV2SummaryResultCode where
    parseQueryParam = \case
        "TRANSFORMATION_RESULT_CODE_UNSPECIFIED" -> Right TransformationResultCodeUnspecified
        "SUCCESS" -> Right Success
        "ERROR" -> Right Error'
        x -> Left ("Unable to parse GooglePrivacyDlpV2SummaryResultCode from: " <> x)

instance ToHttpApiData GooglePrivacyDlpV2SummaryResultCode where
    toQueryParam = \case
        TransformationResultCodeUnspecified -> "TRANSFORMATION_RESULT_CODE_UNSPECIFIED"
        Success -> "SUCCESS"
        Error' -> "ERROR"

instance FromJSON GooglePrivacyDlpV2SummaryResultCode where
    parseJSON = parseJSONText "GooglePrivacyDlpV2SummaryResultCode"

instance ToJSON GooglePrivacyDlpV2SummaryResultCode where
    toJSON = toJSONText

-- | Schema used for writing the findings for Inspect jobs. This field is
-- only used for Inspect and must be unspecified for Risk jobs. Columns are
-- derived from the \`Finding\` object. If appending to an existing table,
-- any columns from the predefined schema that are missing will be added.
-- No columns in the existing table will be deleted. If unspecified, then
-- all available columns will be used for a new table or an (existing)
-- table with no schema, and no changes will be made to an existing table
-- that has a schema.
data GooglePrivacyDlpV2OutputStorageConfigOutputSchema
    = OutputSchemaUnspecified
      -- ^ @OUTPUT_SCHEMA_UNSPECIFIED@
    | BasicColumns
      -- ^ @BASIC_COLUMNS@
      -- Basic schema including only \`info_type\`, \`quote\`, \`certainty\`, and
      -- \`timestamp\`.
    | GcsColumns
      -- ^ @GCS_COLUMNS@
      -- Schema tailored to findings from scanning Google Cloud Storage.
    | DatastoreColumns
      -- ^ @DATASTORE_COLUMNS@
      -- Schema tailored to findings from scanning Google Datastore.
    | BigQueryColumns
      -- ^ @BIG_QUERY_COLUMNS@
      -- Schema tailored to findings from scanning Google BigQuery.
    | AllColumns
      -- ^ @ALL_COLUMNS@
      -- Schema containing all columns.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GooglePrivacyDlpV2OutputStorageConfigOutputSchema

instance FromHttpApiData GooglePrivacyDlpV2OutputStorageConfigOutputSchema where
    parseQueryParam = \case
        "OUTPUT_SCHEMA_UNSPECIFIED" -> Right OutputSchemaUnspecified
        "BASIC_COLUMNS" -> Right BasicColumns
        "GCS_COLUMNS" -> Right GcsColumns
        "DATASTORE_COLUMNS" -> Right DatastoreColumns
        "BIG_QUERY_COLUMNS" -> Right BigQueryColumns
        "ALL_COLUMNS" -> Right AllColumns
        x -> Left ("Unable to parse GooglePrivacyDlpV2OutputStorageConfigOutputSchema from: " <> x)

instance ToHttpApiData GooglePrivacyDlpV2OutputStorageConfigOutputSchema where
    toQueryParam = \case
        OutputSchemaUnspecified -> "OUTPUT_SCHEMA_UNSPECIFIED"
        BasicColumns -> "BASIC_COLUMNS"
        GcsColumns -> "GCS_COLUMNS"
        DatastoreColumns -> "DATASTORE_COLUMNS"
        BigQueryColumns -> "BIG_QUERY_COLUMNS"
        AllColumns -> "ALL_COLUMNS"

instance FromJSON GooglePrivacyDlpV2OutputStorageConfigOutputSchema where
    parseJSON = parseJSONText "GooglePrivacyDlpV2OutputStorageConfigOutputSchema"

instance ToJSON GooglePrivacyDlpV2OutputStorageConfigOutputSchema where
    toJSON = toJSONText

data GooglePrivacyDlpV2BigQueryOptionsSampleMethod
    = SampleMethodUnspecified
      -- ^ @SAMPLE_METHOD_UNSPECIFIED@
    | Top
      -- ^ @TOP@
      -- Scan from the top (default).
    | RandomStart
      -- ^ @RANDOM_START@
      -- Randomly pick the row to start scanning. The scanned rows are
      -- contiguous.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GooglePrivacyDlpV2BigQueryOptionsSampleMethod

instance FromHttpApiData GooglePrivacyDlpV2BigQueryOptionsSampleMethod where
    parseQueryParam = \case
        "SAMPLE_METHOD_UNSPECIFIED" -> Right SampleMethodUnspecified
        "TOP" -> Right Top
        "RANDOM_START" -> Right RandomStart
        x -> Left ("Unable to parse GooglePrivacyDlpV2BigQueryOptionsSampleMethod from: " <> x)

instance ToHttpApiData GooglePrivacyDlpV2BigQueryOptionsSampleMethod where
    toQueryParam = \case
        SampleMethodUnspecified -> "SAMPLE_METHOD_UNSPECIFIED"
        Top -> "TOP"
        RandomStart -> "RANDOM_START"

instance FromJSON GooglePrivacyDlpV2BigQueryOptionsSampleMethod where
    parseJSON = parseJSONText "GooglePrivacyDlpV2BigQueryOptionsSampleMethod"

instance ToJSON GooglePrivacyDlpV2BigQueryOptionsSampleMethod where
    toJSON = toJSONText

-- | The type of job.
data GooglePrivacyDlpV2DlpJobType
    = DlpJobTypeUnspecified
      -- ^ @DLP_JOB_TYPE_UNSPECIFIED@
    | InspectJob
      -- ^ @INSPECT_JOB@
      -- The job inspected Google Cloud for sensitive data.
    | RiskAnalysisJob
      -- ^ @RISK_ANALYSIS_JOB@
      -- The job executed a Risk Analysis computation.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GooglePrivacyDlpV2DlpJobType

instance FromHttpApiData GooglePrivacyDlpV2DlpJobType where
    parseQueryParam = \case
        "DLP_JOB_TYPE_UNSPECIFIED" -> Right DlpJobTypeUnspecified
        "INSPECT_JOB" -> Right InspectJob
        "RISK_ANALYSIS_JOB" -> Right RiskAnalysisJob
        x -> Left ("Unable to parse GooglePrivacyDlpV2DlpJobType from: " <> x)

instance ToHttpApiData GooglePrivacyDlpV2DlpJobType where
    toQueryParam = \case
        DlpJobTypeUnspecified -> "DLP_JOB_TYPE_UNSPECIFIED"
        InspectJob -> "INSPECT_JOB"
        RiskAnalysisJob -> "RISK_ANALYSIS_JOB"

instance FromJSON GooglePrivacyDlpV2DlpJobType where
    parseJSON = parseJSONText "GooglePrivacyDlpV2DlpJobType"

instance ToJSON GooglePrivacyDlpV2DlpJobType where
    toJSON = toJSONText

-- | Only returns findings equal or above this threshold. The default is
-- POSSIBLE. See https:\/\/cloud.google.com\/dlp\/docs\/likelihood to learn
-- more.
data GooglePrivacyDlpV2InspectConfigMinLikelihood
    = GPDVICMLLikelihoodUnspecified
      -- ^ @LIKELIHOOD_UNSPECIFIED@
      -- Default value; same as POSSIBLE.
    | GPDVICMLVeryUnlikely
      -- ^ @VERY_UNLIKELY@
      -- Few matching elements.
    | GPDVICMLUnlikely
      -- ^ @UNLIKELY@
    | GPDVICMLPossible
      -- ^ @POSSIBLE@
      -- Some matching elements.
    | GPDVICMLLikely
      -- ^ @LIKELY@
    | GPDVICMLVeryLikely
      -- ^ @VERY_LIKELY@
      -- Many matching elements.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GooglePrivacyDlpV2InspectConfigMinLikelihood

instance FromHttpApiData GooglePrivacyDlpV2InspectConfigMinLikelihood where
    parseQueryParam = \case
        "LIKELIHOOD_UNSPECIFIED" -> Right GPDVICMLLikelihoodUnspecified
        "VERY_UNLIKELY" -> Right GPDVICMLVeryUnlikely
        "UNLIKELY" -> Right GPDVICMLUnlikely
        "POSSIBLE" -> Right GPDVICMLPossible
        "LIKELY" -> Right GPDVICMLLikely
        "VERY_LIKELY" -> Right GPDVICMLVeryLikely
        x -> Left ("Unable to parse GooglePrivacyDlpV2InspectConfigMinLikelihood from: " <> x)

instance ToHttpApiData GooglePrivacyDlpV2InspectConfigMinLikelihood where
    toQueryParam = \case
        GPDVICMLLikelihoodUnspecified -> "LIKELIHOOD_UNSPECIFIED"
        GPDVICMLVeryUnlikely -> "VERY_UNLIKELY"
        GPDVICMLUnlikely -> "UNLIKELY"
        GPDVICMLPossible -> "POSSIBLE"
        GPDVICMLLikely -> "LIKELY"
        GPDVICMLVeryLikely -> "VERY_LIKELY"

instance FromJSON GooglePrivacyDlpV2InspectConfigMinLikelihood where
    parseJSON = parseJSONText "GooglePrivacyDlpV2InspectConfigMinLikelihood"

instance ToJSON GooglePrivacyDlpV2InspectConfigMinLikelihood where
    toJSON = toJSONText

data GooglePrivacyDlpV2CharsToIgnoreCommonCharactersToIgnore
    = CommonCharsToIgnoreUnspecified
      -- ^ @COMMON_CHARS_TO_IGNORE_UNSPECIFIED@
    | Numeric
      -- ^ @NUMERIC@
      -- 0-9
    | AlphaUpperCase
      -- ^ @ALPHA_UPPER_CASE@
      -- A-Z
    | AlphaLowerCase
      -- ^ @ALPHA_LOWER_CASE@
      -- a-z
    | Punctuation
      -- ^ @PUNCTUATION@
      -- US Punctuation, one of !\"#$%&\'()*+,-.\/:;\<=>?\@[\\]^_\`{|}~
    | Whitespace
      -- ^ @WHITESPACE@
      -- Whitespace character, one of [ \\t\\n\\x0B\\f\\r]
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GooglePrivacyDlpV2CharsToIgnoreCommonCharactersToIgnore

instance FromHttpApiData GooglePrivacyDlpV2CharsToIgnoreCommonCharactersToIgnore where
    parseQueryParam = \case
        "COMMON_CHARS_TO_IGNORE_UNSPECIFIED" -> Right CommonCharsToIgnoreUnspecified
        "NUMERIC" -> Right Numeric
        "ALPHA_UPPER_CASE" -> Right AlphaUpperCase
        "ALPHA_LOWER_CASE" -> Right AlphaLowerCase
        "PUNCTUATION" -> Right Punctuation
        "WHITESPACE" -> Right Whitespace
        x -> Left ("Unable to parse GooglePrivacyDlpV2CharsToIgnoreCommonCharactersToIgnore from: " <> x)

instance ToHttpApiData GooglePrivacyDlpV2CharsToIgnoreCommonCharactersToIgnore where
    toQueryParam = \case
        CommonCharsToIgnoreUnspecified -> "COMMON_CHARS_TO_IGNORE_UNSPECIFIED"
        Numeric -> "NUMERIC"
        AlphaUpperCase -> "ALPHA_UPPER_CASE"
        AlphaLowerCase -> "ALPHA_LOWER_CASE"
        Punctuation -> "PUNCTUATION"
        Whitespace -> "WHITESPACE"

instance FromJSON GooglePrivacyDlpV2CharsToIgnoreCommonCharactersToIgnore where
    parseJSON = parseJSONText "GooglePrivacyDlpV2CharsToIgnoreCommonCharactersToIgnore"

instance ToJSON GooglePrivacyDlpV2CharsToIgnoreCommonCharactersToIgnore where
    toJSON = toJSONText

data GooglePrivacyDlpV2CryptoReplaceFfxFpeConfigCommonAlphabet
    = GPDVCRFFCCAFfxCommonNATiveAlphabetUnspecified
      -- ^ @FFX_COMMON_NATIVE_ALPHABET_UNSPECIFIED@
    | GPDVCRFFCCANumeric
      -- ^ @NUMERIC@
      -- [0-9] (radix of 10)
    | GPDVCRFFCCAHexadecimal
      -- ^ @HEXADECIMAL@
      -- [0-9A-F] (radix of 16)
    | GPDVCRFFCCAUpperCaseAlphaNumeric
      -- ^ @UPPER_CASE_ALPHA_NUMERIC@
      -- [0-9A-Z] (radix of 36)
    | GPDVCRFFCCAAlphaNumeric
      -- ^ @ALPHA_NUMERIC@
      -- [0-9A-Za-z] (radix of 62)
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GooglePrivacyDlpV2CryptoReplaceFfxFpeConfigCommonAlphabet

instance FromHttpApiData GooglePrivacyDlpV2CryptoReplaceFfxFpeConfigCommonAlphabet where
    parseQueryParam = \case
        "FFX_COMMON_NATIVE_ALPHABET_UNSPECIFIED" -> Right GPDVCRFFCCAFfxCommonNATiveAlphabetUnspecified
        "NUMERIC" -> Right GPDVCRFFCCANumeric
        "HEXADECIMAL" -> Right GPDVCRFFCCAHexadecimal
        "UPPER_CASE_ALPHA_NUMERIC" -> Right GPDVCRFFCCAUpperCaseAlphaNumeric
        "ALPHA_NUMERIC" -> Right GPDVCRFFCCAAlphaNumeric
        x -> Left ("Unable to parse GooglePrivacyDlpV2CryptoReplaceFfxFpeConfigCommonAlphabet from: " <> x)

instance ToHttpApiData GooglePrivacyDlpV2CryptoReplaceFfxFpeConfigCommonAlphabet where
    toQueryParam = \case
        GPDVCRFFCCAFfxCommonNATiveAlphabetUnspecified -> "FFX_COMMON_NATIVE_ALPHABET_UNSPECIFIED"
        GPDVCRFFCCANumeric -> "NUMERIC"
        GPDVCRFFCCAHexadecimal -> "HEXADECIMAL"
        GPDVCRFFCCAUpperCaseAlphaNumeric -> "UPPER_CASE_ALPHA_NUMERIC"
        GPDVCRFFCCAAlphaNumeric -> "ALPHA_NUMERIC"

instance FromJSON GooglePrivacyDlpV2CryptoReplaceFfxFpeConfigCommonAlphabet where
    parseJSON = parseJSONText "GooglePrivacyDlpV2CryptoReplaceFfxFpeConfigCommonAlphabet"

instance ToJSON GooglePrivacyDlpV2CryptoReplaceFfxFpeConfigCommonAlphabet where
    toJSON = toJSONText

data GooglePrivacyDlpV2CloudStorageOptionsSampleMethod
    = GPDVCSOSMSampleMethodUnspecified
      -- ^ @SAMPLE_METHOD_UNSPECIFIED@
    | GPDVCSOSMTop
      -- ^ @TOP@
      -- Scan from the top (default).
    | GPDVCSOSMRandomStart
      -- ^ @RANDOM_START@
      -- For each file larger than bytes_limit_per_file, randomly pick the offset
      -- to start scanning. The scanned bytes are contiguous.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GooglePrivacyDlpV2CloudStorageOptionsSampleMethod

instance FromHttpApiData GooglePrivacyDlpV2CloudStorageOptionsSampleMethod where
    parseQueryParam = \case
        "SAMPLE_METHOD_UNSPECIFIED" -> Right GPDVCSOSMSampleMethodUnspecified
        "TOP" -> Right GPDVCSOSMTop
        "RANDOM_START" -> Right GPDVCSOSMRandomStart
        x -> Left ("Unable to parse GooglePrivacyDlpV2CloudStorageOptionsSampleMethod from: " <> x)

instance ToHttpApiData GooglePrivacyDlpV2CloudStorageOptionsSampleMethod where
    toQueryParam = \case
        GPDVCSOSMSampleMethodUnspecified -> "SAMPLE_METHOD_UNSPECIFIED"
        GPDVCSOSMTop -> "TOP"
        GPDVCSOSMRandomStart -> "RANDOM_START"

instance FromJSON GooglePrivacyDlpV2CloudStorageOptionsSampleMethod where
    parseJSON = parseJSONText "GooglePrivacyDlpV2CloudStorageOptionsSampleMethod"

instance ToJSON GooglePrivacyDlpV2CloudStorageOptionsSampleMethod where
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

-- | How the rule is applied, see MatchingType documentation for details.
data GooglePrivacyDlpV2ExclusionRuleMatchingType
    = MatchingTypeUnspecified
      -- ^ @MATCHING_TYPE_UNSPECIFIED@
      -- Invalid.
    | MatchingTypeFullMatch
      -- ^ @MATCHING_TYPE_FULL_MATCH@
      -- Full match. - Dictionary: join of Dictionary results matched complete
      -- finding quote - Regex: all regex matches fill a finding quote start to
      -- end - Exclude info type: completely inside affecting info types findings
    | MatchingTypePartialMatch
      -- ^ @MATCHING_TYPE_PARTIAL_MATCH@
      -- Partial match. - Dictionary: at least one of the tokens in the finding
      -- matches - Regex: substring of the finding matches - Exclude info type:
      -- intersects with affecting info types findings
    | MatchingTypeInverseMatch
      -- ^ @MATCHING_TYPE_INVERSE_MATCH@
      -- Inverse match. - Dictionary: no tokens in the finding match the
      -- dictionary - Regex: finding doesn\'t match the regex - Exclude info
      -- type: no intersection with affecting info types findings
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GooglePrivacyDlpV2ExclusionRuleMatchingType

instance FromHttpApiData GooglePrivacyDlpV2ExclusionRuleMatchingType where
    parseQueryParam = \case
        "MATCHING_TYPE_UNSPECIFIED" -> Right MatchingTypeUnspecified
        "MATCHING_TYPE_FULL_MATCH" -> Right MatchingTypeFullMatch
        "MATCHING_TYPE_PARTIAL_MATCH" -> Right MatchingTypePartialMatch
        "MATCHING_TYPE_INVERSE_MATCH" -> Right MatchingTypeInverseMatch
        x -> Left ("Unable to parse GooglePrivacyDlpV2ExclusionRuleMatchingType from: " <> x)

instance ToHttpApiData GooglePrivacyDlpV2ExclusionRuleMatchingType where
    toQueryParam = \case
        MatchingTypeUnspecified -> "MATCHING_TYPE_UNSPECIFIED"
        MatchingTypeFullMatch -> "MATCHING_TYPE_FULL_MATCH"
        MatchingTypePartialMatch -> "MATCHING_TYPE_PARTIAL_MATCH"
        MatchingTypeInverseMatch -> "MATCHING_TYPE_INVERSE_MATCH"

instance FromJSON GooglePrivacyDlpV2ExclusionRuleMatchingType where
    parseJSON = parseJSONText "GooglePrivacyDlpV2ExclusionRuleMatchingType"

instance ToJSON GooglePrivacyDlpV2ExclusionRuleMatchingType where
    toJSON = toJSONText

data GooglePrivacyDlpV2ValueDayOfWeekValue
    = GPDVVDOWVDayOfWeekUnspecified
      -- ^ @DAY_OF_WEEK_UNSPECIFIED@
      -- The unspecified day-of-week.
    | GPDVVDOWVMonday
      -- ^ @MONDAY@
      -- The day-of-week of Monday.
    | GPDVVDOWVTuesday
      -- ^ @TUESDAY@
      -- The day-of-week of Tuesday.
    | GPDVVDOWVWednesday
      -- ^ @WEDNESDAY@
      -- The day-of-week of Wednesday.
    | GPDVVDOWVThursday
      -- ^ @THURSDAY@
      -- The day-of-week of Thursday.
    | GPDVVDOWVFriday
      -- ^ @FRIDAY@
      -- The day-of-week of Friday.
    | GPDVVDOWVSaturday
      -- ^ @SATURDAY@
      -- The day-of-week of Saturday.
    | GPDVVDOWVSunday
      -- ^ @SUNDAY@
      -- The day-of-week of Sunday.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GooglePrivacyDlpV2ValueDayOfWeekValue

instance FromHttpApiData GooglePrivacyDlpV2ValueDayOfWeekValue where
    parseQueryParam = \case
        "DAY_OF_WEEK_UNSPECIFIED" -> Right GPDVVDOWVDayOfWeekUnspecified
        "MONDAY" -> Right GPDVVDOWVMonday
        "TUESDAY" -> Right GPDVVDOWVTuesday
        "WEDNESDAY" -> Right GPDVVDOWVWednesday
        "THURSDAY" -> Right GPDVVDOWVThursday
        "FRIDAY" -> Right GPDVVDOWVFriday
        "SATURDAY" -> Right GPDVVDOWVSaturday
        "SUNDAY" -> Right GPDVVDOWVSunday
        x -> Left ("Unable to parse GooglePrivacyDlpV2ValueDayOfWeekValue from: " <> x)

instance ToHttpApiData GooglePrivacyDlpV2ValueDayOfWeekValue where
    toQueryParam = \case
        GPDVVDOWVDayOfWeekUnspecified -> "DAY_OF_WEEK_UNSPECIFIED"
        GPDVVDOWVMonday -> "MONDAY"
        GPDVVDOWVTuesday -> "TUESDAY"
        GPDVVDOWVWednesday -> "WEDNESDAY"
        GPDVVDOWVThursday -> "THURSDAY"
        GPDVVDOWVFriday -> "FRIDAY"
        GPDVVDOWVSaturday -> "SATURDAY"
        GPDVVDOWVSunday -> "SUNDAY"

instance FromJSON GooglePrivacyDlpV2ValueDayOfWeekValue where
    parseJSON = parseJSONText "GooglePrivacyDlpV2ValueDayOfWeekValue"

instance ToJSON GooglePrivacyDlpV2ValueDayOfWeekValue where
    toJSON = toJSONText

-- | The type of data stored in the bytes string. Default will be TEXT_UTF8.
data GooglePrivacyDlpV2ByteContentItemType
    = BytesTypeUnspecified
      -- ^ @BYTES_TYPE_UNSPECIFIED@
    | Image
      -- ^ @IMAGE@
    | ImageJpeg
      -- ^ @IMAGE_JPEG@
    | ImageBmp
      -- ^ @IMAGE_BMP@
    | ImagePng
      -- ^ @IMAGE_PNG@
    | ImageSvg
      -- ^ @IMAGE_SVG@
    | TextUTF8
      -- ^ @TEXT_UTF8@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GooglePrivacyDlpV2ByteContentItemType

instance FromHttpApiData GooglePrivacyDlpV2ByteContentItemType where
    parseQueryParam = \case
        "BYTES_TYPE_UNSPECIFIED" -> Right BytesTypeUnspecified
        "IMAGE" -> Right Image
        "IMAGE_JPEG" -> Right ImageJpeg
        "IMAGE_BMP" -> Right ImageBmp
        "IMAGE_PNG" -> Right ImagePng
        "IMAGE_SVG" -> Right ImageSvg
        "TEXT_UTF8" -> Right TextUTF8
        x -> Left ("Unable to parse GooglePrivacyDlpV2ByteContentItemType from: " <> x)

instance ToHttpApiData GooglePrivacyDlpV2ByteContentItemType where
    toQueryParam = \case
        BytesTypeUnspecified -> "BYTES_TYPE_UNSPECIFIED"
        Image -> "IMAGE"
        ImageJpeg -> "IMAGE_JPEG"
        ImageBmp -> "IMAGE_BMP"
        ImagePng -> "IMAGE_PNG"
        ImageSvg -> "IMAGE_SVG"
        TextUTF8 -> "TEXT_UTF8"

instance FromJSON GooglePrivacyDlpV2ByteContentItemType where
    parseJSON = parseJSONText "GooglePrivacyDlpV2ByteContentItemType"

instance ToJSON GooglePrivacyDlpV2ByteContentItemType where
    toJSON = toJSONText

-- | A status for this trigger. [required]
data GooglePrivacyDlpV2JobTriggerStatus
    = StatusUnspecified
      -- ^ @STATUS_UNSPECIFIED@
    | Healthy
      -- ^ @HEALTHY@
      -- Trigger is healthy.
    | Paused
      -- ^ @PAUSED@
      -- Trigger is temporarily paused.
    | Cancelled
      -- ^ @CANCELLED@
      -- Trigger is cancelled and can not be resumed.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GooglePrivacyDlpV2JobTriggerStatus

instance FromHttpApiData GooglePrivacyDlpV2JobTriggerStatus where
    parseQueryParam = \case
        "STATUS_UNSPECIFIED" -> Right StatusUnspecified
        "HEALTHY" -> Right Healthy
        "PAUSED" -> Right Paused
        "CANCELLED" -> Right Cancelled
        x -> Left ("Unable to parse GooglePrivacyDlpV2JobTriggerStatus from: " <> x)

instance ToHttpApiData GooglePrivacyDlpV2JobTriggerStatus where
    toQueryParam = \case
        StatusUnspecified -> "STATUS_UNSPECIFIED"
        Healthy -> "HEALTHY"
        Paused -> "PAUSED"
        Cancelled -> "CANCELLED"

instance FromJSON GooglePrivacyDlpV2JobTriggerStatus where
    parseJSON = parseJSONText "GooglePrivacyDlpV2JobTriggerStatus"

instance ToJSON GooglePrivacyDlpV2JobTriggerStatus where
    toJSON = toJSONText

-- | Stored info type version state. Read-only, updated by the system during
-- dictionary creation.
data GooglePrivacyDlpV2StoredInfoTypeVersionState
    = GPDVSITVSStoredInfoTypeStateUnspecified
      -- ^ @STORED_INFO_TYPE_STATE_UNSPECIFIED@
    | GPDVSITVSPending
      -- ^ @PENDING@
      -- StoredInfoType version is being created.
    | GPDVSITVSReady
      -- ^ @READY@
      -- StoredInfoType version is ready for use.
    | GPDVSITVSFailed
      -- ^ @FAILED@
      -- StoredInfoType creation failed. All relevant error messages are returned
      -- in the \`StoredInfoTypeVersion\` message.
    | GPDVSITVSInvalid
      -- ^ @INVALID@
      -- StoredInfoType is no longer valid because artifacts stored in
      -- user-controlled storage were modified. To fix an invalid StoredInfoType,
      -- use the \`UpdateStoredInfoType\` method to create a new version.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GooglePrivacyDlpV2StoredInfoTypeVersionState

instance FromHttpApiData GooglePrivacyDlpV2StoredInfoTypeVersionState where
    parseQueryParam = \case
        "STORED_INFO_TYPE_STATE_UNSPECIFIED" -> Right GPDVSITVSStoredInfoTypeStateUnspecified
        "PENDING" -> Right GPDVSITVSPending
        "READY" -> Right GPDVSITVSReady
        "FAILED" -> Right GPDVSITVSFailed
        "INVALID" -> Right GPDVSITVSInvalid
        x -> Left ("Unable to parse GooglePrivacyDlpV2StoredInfoTypeVersionState from: " <> x)

instance ToHttpApiData GooglePrivacyDlpV2StoredInfoTypeVersionState where
    toQueryParam = \case
        GPDVSITVSStoredInfoTypeStateUnspecified -> "STORED_INFO_TYPE_STATE_UNSPECIFIED"
        GPDVSITVSPending -> "PENDING"
        GPDVSITVSReady -> "READY"
        GPDVSITVSFailed -> "FAILED"
        GPDVSITVSInvalid -> "INVALID"

instance FromJSON GooglePrivacyDlpV2StoredInfoTypeVersionState where
    parseJSON = parseJSONText "GooglePrivacyDlpV2StoredInfoTypeVersionState"

instance ToJSON GooglePrivacyDlpV2StoredInfoTypeVersionState where
    toJSON = toJSONText

-- | The operator to apply to the result of conditions. Default and currently
-- only supported value is \`AND\`.
data GooglePrivacyDlpV2ExpressionsLogicalOperator
    = LogicalOperatorUnspecified
      -- ^ @LOGICAL_OPERATOR_UNSPECIFIED@
    | And
      -- ^ @AND@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GooglePrivacyDlpV2ExpressionsLogicalOperator

instance FromHttpApiData GooglePrivacyDlpV2ExpressionsLogicalOperator where
    parseQueryParam = \case
        "LOGICAL_OPERATOR_UNSPECIFIED" -> Right LogicalOperatorUnspecified
        "AND" -> Right And
        x -> Left ("Unable to parse GooglePrivacyDlpV2ExpressionsLogicalOperator from: " <> x)

instance ToHttpApiData GooglePrivacyDlpV2ExpressionsLogicalOperator where
    toQueryParam = \case
        LogicalOperatorUnspecified -> "LOGICAL_OPERATOR_UNSPECIFIED"
        And -> "AND"

instance FromJSON GooglePrivacyDlpV2ExpressionsLogicalOperator where
    parseJSON = parseJSONText "GooglePrivacyDlpV2ExpressionsLogicalOperator"

instance ToJSON GooglePrivacyDlpV2ExpressionsLogicalOperator where
    toJSON = toJSONText
