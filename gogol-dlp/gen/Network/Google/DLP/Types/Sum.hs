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

import Network.Google.Prelude hiding (Bytes)

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

-- | The part of the time to keep.
data GooglePrivacyDlpV2TimePartConfigPartToExtract
    = TimePartUnspecified
      -- ^ @TIME_PART_UNSPECIFIED@
      -- Unused
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
      -- [1-53]
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

-- | Required. Operator used to compare the field or infoType to the value.
data GooglePrivacyDlpV2ConditionOperator
    = RelationalOperatorUnspecified
      -- ^ @RELATIONAL_OPERATOR_UNSPECIFIED@
      -- Unused
    | EqualTo
      -- ^ @EQUAL_TO@
      -- Equal. Attempts to match even with incompatible types.
    | NotEqualTo
      -- ^ @NOT_EQUAL_TO@
      -- Not equal to. Attempts to match even with incompatible types.
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

-- | The type of job. Defaults to \`DlpJobType.INSPECT\`
data OrganizationsLocationsDlpJobsListType
    = DlpJobTypeUnspecified
      -- ^ @DLP_JOB_TYPE_UNSPECIFIED@
      -- Defaults to INSPECT_JOB.
    | InspectJob
      -- ^ @INSPECT_JOB@
      -- The job inspected Google Cloud for sensitive data.
    | RiskAnalysisJob
      -- ^ @RISK_ANALYSIS_JOB@
      -- The job executed a Risk Analysis computation.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OrganizationsLocationsDlpJobsListType

instance FromHttpApiData OrganizationsLocationsDlpJobsListType where
    parseQueryParam = \case
        "DLP_JOB_TYPE_UNSPECIFIED" -> Right DlpJobTypeUnspecified
        "INSPECT_JOB" -> Right InspectJob
        "RISK_ANALYSIS_JOB" -> Right RiskAnalysisJob
        x -> Left ("Unable to parse OrganizationsLocationsDlpJobsListType from: " <> x)

instance ToHttpApiData OrganizationsLocationsDlpJobsListType where
    toQueryParam = \case
        DlpJobTypeUnspecified -> "DLP_JOB_TYPE_UNSPECIFIED"
        InspectJob -> "INSPECT_JOB"
        RiskAnalysisJob -> "RISK_ANALYSIS_JOB"

instance FromJSON OrganizationsLocationsDlpJobsListType where
    parseJSON = parseJSONText "OrganizationsLocationsDlpJobsListType"

instance ToJSON OrganizationsLocationsDlpJobsListType where
    toJSON = toJSONText

-- | The type of jobs. Will use \`DlpJobType.INSPECT\` if not set.
data ProjectsJobTriggersListType
    = PJTLTDlpJobTypeUnspecified
      -- ^ @DLP_JOB_TYPE_UNSPECIFIED@
      -- Defaults to INSPECT_JOB.
    | PJTLTInspectJob
      -- ^ @INSPECT_JOB@
      -- The job inspected Google Cloud for sensitive data.
    | PJTLTRiskAnalysisJob
      -- ^ @RISK_ANALYSIS_JOB@
      -- The job executed a Risk Analysis computation.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsJobTriggersListType

instance FromHttpApiData ProjectsJobTriggersListType where
    parseQueryParam = \case
        "DLP_JOB_TYPE_UNSPECIFIED" -> Right PJTLTDlpJobTypeUnspecified
        "INSPECT_JOB" -> Right PJTLTInspectJob
        "RISK_ANALYSIS_JOB" -> Right PJTLTRiskAnalysisJob
        x -> Left ("Unable to parse ProjectsJobTriggersListType from: " <> x)

instance ToHttpApiData ProjectsJobTriggersListType where
    toQueryParam = \case
        PJTLTDlpJobTypeUnspecified -> "DLP_JOB_TYPE_UNSPECIFIED"
        PJTLTInspectJob -> "INSPECT_JOB"
        PJTLTRiskAnalysisJob -> "RISK_ANALYSIS_JOB"

instance FromJSON ProjectsJobTriggersListType where
    parseJSON = parseJSONText "ProjectsJobTriggersListType"

instance ToJSON ProjectsJobTriggersListType where
    toJSON = toJSONText

-- | Type of metadata containing the finding.
data GooglePrivacyDlpV2MetadataLocationType
    = MetadatatypeUnspecified
      -- ^ @METADATATYPE_UNSPECIFIED@
      -- Unused
    | StorageMetadata
      -- ^ @STORAGE_METADATA@
      -- General file metadata provided by Cloud Storage.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GooglePrivacyDlpV2MetadataLocationType

instance FromHttpApiData GooglePrivacyDlpV2MetadataLocationType where
    parseQueryParam = \case
        "METADATATYPE_UNSPECIFIED" -> Right MetadatatypeUnspecified
        "STORAGE_METADATA" -> Right StorageMetadata
        x -> Left ("Unable to parse GooglePrivacyDlpV2MetadataLocationType from: " <> x)

instance ToHttpApiData GooglePrivacyDlpV2MetadataLocationType where
    toQueryParam = \case
        MetadatatypeUnspecified -> "METADATATYPE_UNSPECIFIED"
        StorageMetadata -> "STORAGE_METADATA"

instance FromJSON GooglePrivacyDlpV2MetadataLocationType where
    parseJSON = parseJSONText "GooglePrivacyDlpV2MetadataLocationType"

instance ToJSON GooglePrivacyDlpV2MetadataLocationType where
    toJSON = toJSONText

-- | Day of week
data GooglePrivacyDlpV2DateTimeDayOfWeek
    = DayOfWeekUnspecified
      -- ^ @DAY_OF_WEEK_UNSPECIFIED@
      -- The day of the week is unspecified.
    | Monday
      -- ^ @MONDAY@
      -- Monday
    | Tuesday
      -- ^ @TUESDAY@
      -- Tuesday
    | Wednesday
      -- ^ @WEDNESDAY@
      -- Wednesday
    | Thursday
      -- ^ @THURSDAY@
      -- Thursday
    | Friday
      -- ^ @FRIDAY@
      -- Friday
    | Saturday
      -- ^ @SATURDAY@
      -- Saturday
    | Sunday
      -- ^ @SUNDAY@
      -- Sunday
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

data GooglePrivacyDlpV2CloudStorageOptionsFileTypesItem
    = FileTypeUnspecified
      -- ^ @FILE_TYPE_UNSPECIFIED@
      -- Includes all files.
    | BinaryFile
      -- ^ @BINARY_FILE@
      -- Includes all file extensions not covered by another entry. Binary
      -- scanning attempts to convert the content of the file to utf_8 to scan
      -- the file. If you wish to avoid this fall back, specify one or more of
      -- the other FileType\'s in your storage scan.
    | TextFile
      -- ^ @TEXT_FILE@
      -- Included file extensions: asc,asp, aspx, brf, c, cc,cfm, cgi, cpp, csv,
      -- cxx, c++, cs, css, dart, dat, dot, eml,, epbub, ged, go, h, hh, hpp,
      -- hxx, h++, hs, html, htm, mkd, markdown, m, ml, mli, perl, pl, plist, pm,
      -- php, phtml, pht, properties, py, pyw, rb, rbw, rs, rss, rc, scala, sh,
      -- sql, swift, tex, shtml, shtm, xhtml, lhs, ics, ini, java, js, json, kix,
      -- kml, ocaml, md, txt, text, tsv, vb, vcard, vcs, wml, xcodeproj, xml,
      -- xsl, xsd, yml, yaml.
    | Image
      -- ^ @IMAGE@
      -- Included file extensions: bmp, gif, jpg, jpeg, jpe, png.
      -- bytes_limit_per_file has no effect on image files. Image inspection is
      -- restricted to \'global\', \'us\', \'asia\', and \'europe\'.
    | Word
      -- ^ @WORD@
      -- Word files >30 MB will be scanned as binary files. Included file
      -- extensions: docx, dotx, docm, dotm
    | Pdf
      -- ^ @PDF@
      -- PDF files >30 MB will be scanned as binary files. Included file
      -- extensions: pdf
    | Avro
      -- ^ @AVRO@
      -- Included file extensions: avro
    | CSV
      -- ^ @CSV@
      -- Included file extensions: csv
    | Tsv
      -- ^ @TSV@
      -- Included file extensions: tsv
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GooglePrivacyDlpV2CloudStorageOptionsFileTypesItem

instance FromHttpApiData GooglePrivacyDlpV2CloudStorageOptionsFileTypesItem where
    parseQueryParam = \case
        "FILE_TYPE_UNSPECIFIED" -> Right FileTypeUnspecified
        "BINARY_FILE" -> Right BinaryFile
        "TEXT_FILE" -> Right TextFile
        "IMAGE" -> Right Image
        "WORD" -> Right Word
        "PDF" -> Right Pdf
        "AVRO" -> Right Avro
        "CSV" -> Right CSV
        "TSV" -> Right Tsv
        x -> Left ("Unable to parse GooglePrivacyDlpV2CloudStorageOptionsFileTypesItem from: " <> x)

instance ToHttpApiData GooglePrivacyDlpV2CloudStorageOptionsFileTypesItem where
    toQueryParam = \case
        FileTypeUnspecified -> "FILE_TYPE_UNSPECIFIED"
        BinaryFile -> "BINARY_FILE"
        TextFile -> "TEXT_FILE"
        Image -> "IMAGE"
        Word -> "WORD"
        Pdf -> "PDF"
        Avro -> "AVRO"
        CSV -> "CSV"
        Tsv -> "TSV"

instance FromJSON GooglePrivacyDlpV2CloudStorageOptionsFileTypesItem where
    parseJSON = parseJSONText "GooglePrivacyDlpV2CloudStorageOptionsFileTypesItem"

instance ToJSON GooglePrivacyDlpV2CloudStorageOptionsFileTypesItem where
    toJSON = toJSONText

-- | State of a job.
data GooglePrivacyDlpV2DlpJobState
    = JobStateUnspecified
      -- ^ @JOB_STATE_UNSPECIFIED@
      -- Unused.
    | Pending
      -- ^ @PENDING@
      -- The job has not yet started.
    | Running
      -- ^ @RUNNING@
      -- The job is currently running. Once a job has finished it will transition
      -- to FAILED or DONE.
    | Done
      -- ^ @DONE@
      -- The job is no longer running.
    | Canceled
      -- ^ @CANCELED@
      -- The job was canceled before it could complete.
    | Failed
      -- ^ @FAILED@
      -- The job had an error and did not complete.
    | Active
      -- ^ @ACTIVE@
      -- The job is currently accepting findings via hybridInspect. A hybrid job
      -- in ACTIVE state may continue to have findings added to it through
      -- calling of hybridInspect. After the job has finished no more calls to
      -- hybridInspect may be made. ACTIVE jobs can transition to DONE.
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
        "ACTIVE" -> Right Active
        x -> Left ("Unable to parse GooglePrivacyDlpV2DlpJobState from: " <> x)

instance ToHttpApiData GooglePrivacyDlpV2DlpJobState where
    toQueryParam = \case
        JobStateUnspecified -> "JOB_STATE_UNSPECIFIED"
        Pending -> "PENDING"
        Running -> "RUNNING"
        Done -> "DONE"
        Canceled -> "CANCELED"
        Failed -> "FAILED"
        Active -> "ACTIVE"

instance FromJSON GooglePrivacyDlpV2DlpJobState where
    parseJSON = parseJSONText "GooglePrivacyDlpV2DlpJobState"

instance ToJSON GooglePrivacyDlpV2DlpJobState where
    toJSON = toJSONText

-- | Outcome of the transformation.
data GooglePrivacyDlpV2SummaryResultCode
    = TransformationResultCodeUnspecified
      -- ^ @TRANSFORMATION_RESULT_CODE_UNSPECIFIED@
      -- Unused
    | Success
      -- ^ @SUCCESS@
      -- Transformation completed without an error.
    | Error'
      -- ^ @ERROR@
      -- Transformation had an error.
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

-- | The type of job. Defaults to \`DlpJobType.INSPECT\`
data ProjectsLocationsDlpJobsListType
    = PLDJLTDlpJobTypeUnspecified
      -- ^ @DLP_JOB_TYPE_UNSPECIFIED@
      -- Defaults to INSPECT_JOB.
    | PLDJLTInspectJob
      -- ^ @INSPECT_JOB@
      -- The job inspected Google Cloud for sensitive data.
    | PLDJLTRiskAnalysisJob
      -- ^ @RISK_ANALYSIS_JOB@
      -- The job executed a Risk Analysis computation.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsLocationsDlpJobsListType

instance FromHttpApiData ProjectsLocationsDlpJobsListType where
    parseQueryParam = \case
        "DLP_JOB_TYPE_UNSPECIFIED" -> Right PLDJLTDlpJobTypeUnspecified
        "INSPECT_JOB" -> Right PLDJLTInspectJob
        "RISK_ANALYSIS_JOB" -> Right PLDJLTRiskAnalysisJob
        x -> Left ("Unable to parse ProjectsLocationsDlpJobsListType from: " <> x)

instance ToHttpApiData ProjectsLocationsDlpJobsListType where
    toQueryParam = \case
        PLDJLTDlpJobTypeUnspecified -> "DLP_JOB_TYPE_UNSPECIFIED"
        PLDJLTInspectJob -> "INSPECT_JOB"
        PLDJLTRiskAnalysisJob -> "RISK_ANALYSIS_JOB"

instance FromJSON ProjectsLocationsDlpJobsListType where
    parseJSON = parseJSONText "ProjectsLocationsDlpJobsListType"

instance ToJSON ProjectsLocationsDlpJobsListType where
    toJSON = toJSONText

-- | Schema used for writing the findings for Inspect jobs. This field is
-- only used for Inspect and must be unspecified for Risk jobs. Columns are
-- derived from the \`Finding\` object. If appending to an existing table,
-- any columns from the predefined schema that are missing will be added.
-- No columns in the existing table will be deleted. If unspecified, then
-- all available columns will be used for a new table or an (existing)
-- table with no schema, and no changes will be made to an existing table
-- that has a schema. Only for use with external storage.
data GooglePrivacyDlpV2OutputStorageConfigOutputSchema
    = OutputSchemaUnspecified
      -- ^ @OUTPUT_SCHEMA_UNSPECIFIED@
      -- Unused.
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
      -- Scan groups of rows in the order BigQuery provides (default). Multiple
      -- groups of rows may be scanned in parallel, so results may not appear in
      -- the same order the rows are read.
    | RandomStart
      -- ^ @RANDOM_START@
      -- Randomly pick groups of rows to scan.
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
    = GPDVDJTDlpJobTypeUnspecified
      -- ^ @DLP_JOB_TYPE_UNSPECIFIED@
      -- Defaults to INSPECT_JOB.
    | GPDVDJTInspectJob
      -- ^ @INSPECT_JOB@
      -- The job inspected Google Cloud for sensitive data.
    | GPDVDJTRiskAnalysisJob
      -- ^ @RISK_ANALYSIS_JOB@
      -- The job executed a Risk Analysis computation.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GooglePrivacyDlpV2DlpJobType

instance FromHttpApiData GooglePrivacyDlpV2DlpJobType where
    parseQueryParam = \case
        "DLP_JOB_TYPE_UNSPECIFIED" -> Right GPDVDJTDlpJobTypeUnspecified
        "INSPECT_JOB" -> Right GPDVDJTInspectJob
        "RISK_ANALYSIS_JOB" -> Right GPDVDJTRiskAnalysisJob
        x -> Left ("Unable to parse GooglePrivacyDlpV2DlpJobType from: " <> x)

instance ToHttpApiData GooglePrivacyDlpV2DlpJobType where
    toQueryParam = \case
        GPDVDJTDlpJobTypeUnspecified -> "DLP_JOB_TYPE_UNSPECIFIED"
        GPDVDJTInspectJob -> "INSPECT_JOB"
        GPDVDJTRiskAnalysisJob -> "RISK_ANALYSIS_JOB"

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

-- | Common characters to not transform when masking. Useful to avoid
-- removing punctuation.
data GooglePrivacyDlpV2CharsToIgnoreCommonCharactersToIgnore
    = CommonCharsToIgnoreUnspecified
      -- ^ @COMMON_CHARS_TO_IGNORE_UNSPECIFIED@
      -- Unused.
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

-- | Common alphabets.
data GooglePrivacyDlpV2CryptoReplaceFfxFpeConfigCommonAlphabet
    = GPDVCRFFCCAFfxCommonNATiveAlphabetUnspecified
      -- ^ @FFX_COMMON_NATIVE_ALPHABET_UNSPECIFIED@
      -- Unused.
    | GPDVCRFFCCANumeric
      -- ^ @NUMERIC@
      -- \`[0-9]\` (radix of 10)
    | GPDVCRFFCCAHexadecimal
      -- ^ @HEXADECIMAL@
      -- \`[0-9A-F]\` (radix of 16)
    | GPDVCRFFCCAUpperCaseAlphaNumeric
      -- ^ @UPPER_CASE_ALPHA_NUMERIC@
      -- \`[0-9A-Z]\` (radix of 36)
    | GPDVCRFFCCAAlphaNumeric
      -- ^ @ALPHA_NUMERIC@
      -- \`[0-9A-Za-z]\` (radix of 62)
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

-- | day of week
data GooglePrivacyDlpV2ValueDayOfWeekValue
    = GPDVVDOWVDayOfWeekUnspecified
      -- ^ @DAY_OF_WEEK_UNSPECIFIED@
      -- The day of the week is unspecified.
    | GPDVVDOWVMonday
      -- ^ @MONDAY@
      -- Monday
    | GPDVVDOWVTuesday
      -- ^ @TUESDAY@
      -- Tuesday
    | GPDVVDOWVWednesday
      -- ^ @WEDNESDAY@
      -- Wednesday
    | GPDVVDOWVThursday
      -- ^ @THURSDAY@
      -- Thursday
    | GPDVVDOWVFriday
      -- ^ @FRIDAY@
      -- Friday
    | GPDVVDOWVSaturday
      -- ^ @SATURDAY@
      -- Saturday
    | GPDVVDOWVSunday
      -- ^ @SUNDAY@
      -- Sunday
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
    = GPDVBCITBytesTypeUnspecified
      -- ^ @BYTES_TYPE_UNSPECIFIED@
      -- Unused
    | GPDVBCITImage
      -- ^ @IMAGE@
      -- Any image type.
    | GPDVBCITImageJpeg
      -- ^ @IMAGE_JPEG@
      -- jpeg
    | GPDVBCITImageBmp
      -- ^ @IMAGE_BMP@
      -- bmp
    | GPDVBCITImagePng
      -- ^ @IMAGE_PNG@
      -- png
    | GPDVBCITImageSvg
      -- ^ @IMAGE_SVG@
      -- svg
    | GPDVBCITTextUTF8
      -- ^ @TEXT_UTF8@
      -- plain text
    | GPDVBCITWordDocument
      -- ^ @WORD_DOCUMENT@
      -- docx, docm, dotx, dotm
    | GPDVBCITPdf
      -- ^ @PDF@
      -- pdf
    | GPDVBCITAvro
      -- ^ @AVRO@
      -- avro
    | GPDVBCITCSV
      -- ^ @CSV@
      -- csv
    | GPDVBCITTsv
      -- ^ @TSV@
      -- tsv
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GooglePrivacyDlpV2ByteContentItemType

instance FromHttpApiData GooglePrivacyDlpV2ByteContentItemType where
    parseQueryParam = \case
        "BYTES_TYPE_UNSPECIFIED" -> Right GPDVBCITBytesTypeUnspecified
        "IMAGE" -> Right GPDVBCITImage
        "IMAGE_JPEG" -> Right GPDVBCITImageJpeg
        "IMAGE_BMP" -> Right GPDVBCITImageBmp
        "IMAGE_PNG" -> Right GPDVBCITImagePng
        "IMAGE_SVG" -> Right GPDVBCITImageSvg
        "TEXT_UTF8" -> Right GPDVBCITTextUTF8
        "WORD_DOCUMENT" -> Right GPDVBCITWordDocument
        "PDF" -> Right GPDVBCITPdf
        "AVRO" -> Right GPDVBCITAvro
        "CSV" -> Right GPDVBCITCSV
        "TSV" -> Right GPDVBCITTsv
        x -> Left ("Unable to parse GooglePrivacyDlpV2ByteContentItemType from: " <> x)

instance ToHttpApiData GooglePrivacyDlpV2ByteContentItemType where
    toQueryParam = \case
        GPDVBCITBytesTypeUnspecified -> "BYTES_TYPE_UNSPECIFIED"
        GPDVBCITImage -> "IMAGE"
        GPDVBCITImageJpeg -> "IMAGE_JPEG"
        GPDVBCITImageBmp -> "IMAGE_BMP"
        GPDVBCITImagePng -> "IMAGE_PNG"
        GPDVBCITImageSvg -> "IMAGE_SVG"
        GPDVBCITTextUTF8 -> "TEXT_UTF8"
        GPDVBCITWordDocument -> "WORD_DOCUMENT"
        GPDVBCITPdf -> "PDF"
        GPDVBCITAvro -> "AVRO"
        GPDVBCITCSV -> "CSV"
        GPDVBCITTsv -> "TSV"

instance FromJSON GooglePrivacyDlpV2ByteContentItemType where
    parseJSON = parseJSONText "GooglePrivacyDlpV2ByteContentItemType"

instance ToJSON GooglePrivacyDlpV2ByteContentItemType where
    toJSON = toJSONText

-- | Required. A status for this trigger.
data GooglePrivacyDlpV2JobTriggerStatus
    = StatusUnspecified
      -- ^ @STATUS_UNSPECIFIED@
      -- Unused.
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

-- | The type of job. Defaults to \`DlpJobType.INSPECT\`
data ProjectsDlpJobsListType
    = PDJLTDlpJobTypeUnspecified
      -- ^ @DLP_JOB_TYPE_UNSPECIFIED@
      -- Defaults to INSPECT_JOB.
    | PDJLTInspectJob
      -- ^ @INSPECT_JOB@
      -- The job inspected Google Cloud for sensitive data.
    | PDJLTRiskAnalysisJob
      -- ^ @RISK_ANALYSIS_JOB@
      -- The job executed a Risk Analysis computation.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsDlpJobsListType

instance FromHttpApiData ProjectsDlpJobsListType where
    parseQueryParam = \case
        "DLP_JOB_TYPE_UNSPECIFIED" -> Right PDJLTDlpJobTypeUnspecified
        "INSPECT_JOB" -> Right PDJLTInspectJob
        "RISK_ANALYSIS_JOB" -> Right PDJLTRiskAnalysisJob
        x -> Left ("Unable to parse ProjectsDlpJobsListType from: " <> x)

instance ToHttpApiData ProjectsDlpJobsListType where
    toQueryParam = \case
        PDJLTDlpJobTypeUnspecified -> "DLP_JOB_TYPE_UNSPECIFIED"
        PDJLTInspectJob -> "INSPECT_JOB"
        PDJLTRiskAnalysisJob -> "RISK_ANALYSIS_JOB"

instance FromJSON ProjectsDlpJobsListType where
    parseJSON = parseJSONText "ProjectsDlpJobsListType"

instance ToJSON ProjectsDlpJobsListType where
    toJSON = toJSONText

-- | The type of jobs. Will use \`DlpJobType.INSPECT\` if not set.
data OrganizationsLocationsJobTriggersListType
    = OLJTLTDlpJobTypeUnspecified
      -- ^ @DLP_JOB_TYPE_UNSPECIFIED@
      -- Defaults to INSPECT_JOB.
    | OLJTLTInspectJob
      -- ^ @INSPECT_JOB@
      -- The job inspected Google Cloud for sensitive data.
    | OLJTLTRiskAnalysisJob
      -- ^ @RISK_ANALYSIS_JOB@
      -- The job executed a Risk Analysis computation.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OrganizationsLocationsJobTriggersListType

instance FromHttpApiData OrganizationsLocationsJobTriggersListType where
    parseQueryParam = \case
        "DLP_JOB_TYPE_UNSPECIFIED" -> Right OLJTLTDlpJobTypeUnspecified
        "INSPECT_JOB" -> Right OLJTLTInspectJob
        "RISK_ANALYSIS_JOB" -> Right OLJTLTRiskAnalysisJob
        x -> Left ("Unable to parse OrganizationsLocationsJobTriggersListType from: " <> x)

instance ToHttpApiData OrganizationsLocationsJobTriggersListType where
    toQueryParam = \case
        OLJTLTDlpJobTypeUnspecified -> "DLP_JOB_TYPE_UNSPECIFIED"
        OLJTLTInspectJob -> "INSPECT_JOB"
        OLJTLTRiskAnalysisJob -> "RISK_ANALYSIS_JOB"

instance FromJSON OrganizationsLocationsJobTriggersListType where
    parseJSON = parseJSONText "OrganizationsLocationsJobTriggersListType"

instance ToJSON OrganizationsLocationsJobTriggersListType where
    toJSON = toJSONText

data GooglePrivacyDlpV2InspectConfigContentOptionsItem
    = ContentUnspecified
      -- ^ @CONTENT_UNSPECIFIED@
      -- Includes entire content of a file or a data stream.
    | ContentText
      -- ^ @CONTENT_TEXT@
      -- Text content within the data, excluding any metadata.
    | ContentImage
      -- ^ @CONTENT_IMAGE@
      -- Images found in the data.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GooglePrivacyDlpV2InspectConfigContentOptionsItem

instance FromHttpApiData GooglePrivacyDlpV2InspectConfigContentOptionsItem where
    parseQueryParam = \case
        "CONTENT_UNSPECIFIED" -> Right ContentUnspecified
        "CONTENT_TEXT" -> Right ContentText
        "CONTENT_IMAGE" -> Right ContentImage
        x -> Left ("Unable to parse GooglePrivacyDlpV2InspectConfigContentOptionsItem from: " <> x)

instance ToHttpApiData GooglePrivacyDlpV2InspectConfigContentOptionsItem where
    toQueryParam = \case
        ContentUnspecified -> "CONTENT_UNSPECIFIED"
        ContentText -> "CONTENT_TEXT"
        ContentImage -> "CONTENT_IMAGE"

instance FromJSON GooglePrivacyDlpV2InspectConfigContentOptionsItem where
    parseJSON = parseJSONText "GooglePrivacyDlpV2InspectConfigContentOptionsItem"

instance ToJSON GooglePrivacyDlpV2InspectConfigContentOptionsItem where
    toJSON = toJSONText

data GooglePrivacyDlpV2InfoTypeDescriptionSupportedByItem
    = EnumTypeUnspecified
      -- ^ @ENUM_TYPE_UNSPECIFIED@
      -- Unused.
    | Inspect
      -- ^ @INSPECT@
      -- Supported by the inspect operations.
    | RiskAnalysis
      -- ^ @RISK_ANALYSIS@
      -- Supported by the risk analysis operations.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GooglePrivacyDlpV2InfoTypeDescriptionSupportedByItem

instance FromHttpApiData GooglePrivacyDlpV2InfoTypeDescriptionSupportedByItem where
    parseQueryParam = \case
        "ENUM_TYPE_UNSPECIFIED" -> Right EnumTypeUnspecified
        "INSPECT" -> Right Inspect
        "RISK_ANALYSIS" -> Right RiskAnalysis
        x -> Left ("Unable to parse GooglePrivacyDlpV2InfoTypeDescriptionSupportedByItem from: " <> x)

instance ToHttpApiData GooglePrivacyDlpV2InfoTypeDescriptionSupportedByItem where
    toQueryParam = \case
        EnumTypeUnspecified -> "ENUM_TYPE_UNSPECIFIED"
        Inspect -> "INSPECT"
        RiskAnalysis -> "RISK_ANALYSIS"

instance FromJSON GooglePrivacyDlpV2InfoTypeDescriptionSupportedByItem where
    parseJSON = parseJSONText "GooglePrivacyDlpV2InfoTypeDescriptionSupportedByItem"

instance ToJSON GooglePrivacyDlpV2InfoTypeDescriptionSupportedByItem where
    toJSON = toJSONText

-- | Stored info type version state. Read-only, updated by the system during
-- dictionary creation.
data GooglePrivacyDlpV2StoredInfoTypeVersionState
    = GPDVSITVSStoredInfoTypeStateUnspecified
      -- ^ @STORED_INFO_TYPE_STATE_UNSPECIFIED@
      -- Unused
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

-- | The type of jobs. Will use \`DlpJobType.INSPECT\` if not set.
data ProjectsLocationsJobTriggersListType
    = PLJTLTDlpJobTypeUnspecified
      -- ^ @DLP_JOB_TYPE_UNSPECIFIED@
      -- Defaults to INSPECT_JOB.
    | PLJTLTInspectJob
      -- ^ @INSPECT_JOB@
      -- The job inspected Google Cloud for sensitive data.
    | PLJTLTRiskAnalysisJob
      -- ^ @RISK_ANALYSIS_JOB@
      -- The job executed a Risk Analysis computation.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsLocationsJobTriggersListType

instance FromHttpApiData ProjectsLocationsJobTriggersListType where
    parseQueryParam = \case
        "DLP_JOB_TYPE_UNSPECIFIED" -> Right PLJTLTDlpJobTypeUnspecified
        "INSPECT_JOB" -> Right PLJTLTInspectJob
        "RISK_ANALYSIS_JOB" -> Right PLJTLTRiskAnalysisJob
        x -> Left ("Unable to parse ProjectsLocationsJobTriggersListType from: " <> x)

instance ToHttpApiData ProjectsLocationsJobTriggersListType where
    toQueryParam = \case
        PLJTLTDlpJobTypeUnspecified -> "DLP_JOB_TYPE_UNSPECIFIED"
        PLJTLTInspectJob -> "INSPECT_JOB"
        PLJTLTRiskAnalysisJob -> "RISK_ANALYSIS_JOB"

instance FromJSON ProjectsLocationsJobTriggersListType where
    parseJSON = parseJSONText "ProjectsLocationsJobTriggersListType"

instance ToJSON ProjectsLocationsJobTriggersListType where
    toJSON = toJSONText

-- | The operator to apply to the result of conditions. Default and currently
-- only supported value is \`AND\`.
data GooglePrivacyDlpV2ExpressionsLogicalOperator
    = LogicalOperatorUnspecified
      -- ^ @LOGICAL_OPERATOR_UNSPECIFIED@
      -- Unused
    | And
      -- ^ @AND@
      -- Conditional AND
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
