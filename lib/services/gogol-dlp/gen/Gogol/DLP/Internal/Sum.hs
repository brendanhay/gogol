{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.DLP.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.DLP.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * GooglePrivacyDlpV2BigQueryOptions_SampleMethod
    GooglePrivacyDlpV2BigQueryOptions_SampleMethod
      (
        GooglePrivacyDlpV2BigQueryOptions_SampleMethod_SAMPLEMETHODUNSPECIFIED,
        GooglePrivacyDlpV2BigQueryOptions_SampleMethod_Top,
        GooglePrivacyDlpV2BigQueryOptions_SampleMethod_RANDOMSTART,
        ..
      ),

    -- * GooglePrivacyDlpV2ByteContentItem_Type
    GooglePrivacyDlpV2ByteContentItem_Type
      (
        GooglePrivacyDlpV2ByteContentItem_Type_BYTESTYPEUNSPECIFIED,
        GooglePrivacyDlpV2ByteContentItem_Type_Image,
        GooglePrivacyDlpV2ByteContentItem_Type_IMAGEJPEG,
        GooglePrivacyDlpV2ByteContentItem_Type_IMAGEBMP,
        GooglePrivacyDlpV2ByteContentItem_Type_IMAGEPNG,
        GooglePrivacyDlpV2ByteContentItem_Type_IMAGESVG,
        GooglePrivacyDlpV2ByteContentItem_Type_TEXT_UTF8,
        GooglePrivacyDlpV2ByteContentItem_Type_WORDDOCUMENT,
        GooglePrivacyDlpV2ByteContentItem_Type_Pdf,
        GooglePrivacyDlpV2ByteContentItem_Type_POWERPOINTDOCUMENT,
        GooglePrivacyDlpV2ByteContentItem_Type_EXCELDOCUMENT,
        GooglePrivacyDlpV2ByteContentItem_Type_Avro,
        GooglePrivacyDlpV2ByteContentItem_Type_Csv,
        GooglePrivacyDlpV2ByteContentItem_Type_Tsv,
        ..
      ),

    -- * GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore
    GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore
      (
        GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore_COMMONCHARSTOIGNOREUNSPECIFIED,
        GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore_Numeric,
        GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore_ALPHAUPPERCASE,
        GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore_ALPHALOWERCASE,
        GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore_Punctuation,
        GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore_Whitespace,
        ..
      ),

    -- * GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem
    GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem
      (
        GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_FILETYPEUNSPECIFIED,
        GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_BINARYFILE,
        GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_TEXTFILE,
        GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_Image,
        GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_Word,
        GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_Pdf,
        GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_Avro,
        GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_Csv,
        GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_Tsv,
        GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_Powerpoint,
        GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_Excel,
        ..
      ),

    -- * GooglePrivacyDlpV2CloudStorageOptions_SampleMethod
    GooglePrivacyDlpV2CloudStorageOptions_SampleMethod
      (
        GooglePrivacyDlpV2CloudStorageOptions_SampleMethod_SAMPLEMETHODUNSPECIFIED,
        GooglePrivacyDlpV2CloudStorageOptions_SampleMethod_Top,
        GooglePrivacyDlpV2CloudStorageOptions_SampleMethod_RANDOMSTART,
        ..
      ),

    -- * GooglePrivacyDlpV2Condition_Operator
    GooglePrivacyDlpV2Condition_Operator
      (
        GooglePrivacyDlpV2Condition_Operator_RELATIONALOPERATORUNSPECIFIED,
        GooglePrivacyDlpV2Condition_Operator_EQUALTO,
        GooglePrivacyDlpV2Condition_Operator_NOTEQUALTO,
        GooglePrivacyDlpV2Condition_Operator_GREATERTHAN,
        GooglePrivacyDlpV2Condition_Operator_LESSTHAN,
        GooglePrivacyDlpV2Condition_Operator_GREATERTHANOREQUALS,
        GooglePrivacyDlpV2Condition_Operator_LESSTHANOREQUALS,
        GooglePrivacyDlpV2Condition_Operator_Exists,
        ..
      ),

    -- * GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet
    GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet
      (
        GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet_FFXCOMMONNATIVEALPHABETUNSPECIFIED,
        GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet_Numeric,
        GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet_Hexadecimal,
        GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet_UPPERCASEALPHANUMERIC,
        GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet_ALPHANUMERIC,
        ..
      ),

    -- * GooglePrivacyDlpV2CustomInfoType_ExclusionType
    GooglePrivacyDlpV2CustomInfoType_ExclusionType
      (
        GooglePrivacyDlpV2CustomInfoType_ExclusionType_EXCLUSIONTYPEUNSPECIFIED,
        GooglePrivacyDlpV2CustomInfoType_ExclusionType_EXCLUSIONTYPEEXCLUDE,
        ..
      ),

    -- * GooglePrivacyDlpV2CustomInfoType_Likelihood
    GooglePrivacyDlpV2CustomInfoType_Likelihood
      (
        GooglePrivacyDlpV2CustomInfoType_Likelihood_LIKELIHOODUNSPECIFIED,
        GooglePrivacyDlpV2CustomInfoType_Likelihood_VERYUNLIKELY,
        GooglePrivacyDlpV2CustomInfoType_Likelihood_Unlikely,
        GooglePrivacyDlpV2CustomInfoType_Likelihood_Possible,
        GooglePrivacyDlpV2CustomInfoType_Likelihood_Likely,
        GooglePrivacyDlpV2CustomInfoType_Likelihood_VERYLIKELY,
        ..
      ),

    -- * GooglePrivacyDlpV2DateTime_DayOfWeek
    GooglePrivacyDlpV2DateTime_DayOfWeek
      (
        GooglePrivacyDlpV2DateTime_DayOfWeek_DAYOFWEEKUNSPECIFIED,
        GooglePrivacyDlpV2DateTime_DayOfWeek_Monday,
        GooglePrivacyDlpV2DateTime_DayOfWeek_Tuesday,
        GooglePrivacyDlpV2DateTime_DayOfWeek_Wednesday,
        GooglePrivacyDlpV2DateTime_DayOfWeek_Thursday,
        GooglePrivacyDlpV2DateTime_DayOfWeek_Friday,
        GooglePrivacyDlpV2DateTime_DayOfWeek_Saturday,
        GooglePrivacyDlpV2DateTime_DayOfWeek_Sunday,
        ..
      ),

    -- * GooglePrivacyDlpV2DlpJob_State
    GooglePrivacyDlpV2DlpJob_State
      (
        GooglePrivacyDlpV2DlpJob_State_JOBSTATEUNSPECIFIED,
        GooglePrivacyDlpV2DlpJob_State_Pending,
        GooglePrivacyDlpV2DlpJob_State_Running,
        GooglePrivacyDlpV2DlpJob_State_Done,
        GooglePrivacyDlpV2DlpJob_State_Canceled,
        GooglePrivacyDlpV2DlpJob_State_Failed,
        GooglePrivacyDlpV2DlpJob_State_Active,
        ..
      ),

    -- * GooglePrivacyDlpV2DlpJob_Type
    GooglePrivacyDlpV2DlpJob_Type
      (
        GooglePrivacyDlpV2DlpJob_Type_DLPJOBTYPEUNSPECIFIED,
        GooglePrivacyDlpV2DlpJob_Type_INSPECTJOB,
        GooglePrivacyDlpV2DlpJob_Type_RISKANALYSISJOB,
        ..
      ),

    -- * GooglePrivacyDlpV2ExclusionRule_MatchingType
    GooglePrivacyDlpV2ExclusionRule_MatchingType
      (
        GooglePrivacyDlpV2ExclusionRule_MatchingType_MATCHINGTYPEUNSPECIFIED,
        GooglePrivacyDlpV2ExclusionRule_MatchingType_MATCHINGTYPEFULLMATCH,
        GooglePrivacyDlpV2ExclusionRule_MatchingType_MATCHINGTYPEPARTIALMATCH,
        GooglePrivacyDlpV2ExclusionRule_MatchingType_MATCHINGTYPEINVERSEMATCH,
        ..
      ),

    -- * GooglePrivacyDlpV2Expressions_LogicalOperator
    GooglePrivacyDlpV2Expressions_LogicalOperator
      (
        GooglePrivacyDlpV2Expressions_LogicalOperator_LOGICALOPERATORUNSPECIFIED,
        GooglePrivacyDlpV2Expressions_LogicalOperator_And,
        ..
      ),

    -- * GooglePrivacyDlpV2Finding_Likelihood
    GooglePrivacyDlpV2Finding_Likelihood
      (
        GooglePrivacyDlpV2Finding_Likelihood_LIKELIHOODUNSPECIFIED,
        GooglePrivacyDlpV2Finding_Likelihood_VERYUNLIKELY,
        GooglePrivacyDlpV2Finding_Likelihood_Unlikely,
        GooglePrivacyDlpV2Finding_Likelihood_Possible,
        GooglePrivacyDlpV2Finding_Likelihood_Likely,
        GooglePrivacyDlpV2Finding_Likelihood_VERYLIKELY,
        ..
      ),

    -- * GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem
    GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem
      (
        GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem_ENUMTYPEUNSPECIFIED,
        GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem_Inspect,
        GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem_RISKANALYSIS,
        ..
      ),

    -- * GooglePrivacyDlpV2InspectConfig_ContentOptionsItem
    GooglePrivacyDlpV2InspectConfig_ContentOptionsItem
      (
        GooglePrivacyDlpV2InspectConfig_ContentOptionsItem_CONTENTUNSPECIFIED,
        GooglePrivacyDlpV2InspectConfig_ContentOptionsItem_CONTENTTEXT,
        GooglePrivacyDlpV2InspectConfig_ContentOptionsItem_CONTENTIMAGE,
        ..
      ),

    -- * GooglePrivacyDlpV2InspectConfig_MinLikelihood
    GooglePrivacyDlpV2InspectConfig_MinLikelihood
      (
        GooglePrivacyDlpV2InspectConfig_MinLikelihood_LIKELIHOODUNSPECIFIED,
        GooglePrivacyDlpV2InspectConfig_MinLikelihood_VERYUNLIKELY,
        GooglePrivacyDlpV2InspectConfig_MinLikelihood_Unlikely,
        GooglePrivacyDlpV2InspectConfig_MinLikelihood_Possible,
        GooglePrivacyDlpV2InspectConfig_MinLikelihood_Likely,
        GooglePrivacyDlpV2InspectConfig_MinLikelihood_VERYLIKELY,
        ..
      ),

    -- * GooglePrivacyDlpV2JobTrigger_Status
    GooglePrivacyDlpV2JobTrigger_Status
      (
        GooglePrivacyDlpV2JobTrigger_Status_STATUSUNSPECIFIED,
        GooglePrivacyDlpV2JobTrigger_Status_Healthy,
        GooglePrivacyDlpV2JobTrigger_Status_Paused,
        GooglePrivacyDlpV2JobTrigger_Status_Cancelled,
        ..
      ),

    -- * GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood
    GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood
      (
        GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_LIKELIHOODUNSPECIFIED,
        GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_VERYUNLIKELY,
        GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_Unlikely,
        GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_Possible,
        GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_Likely,
        GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_VERYLIKELY,
        ..
      ),

    -- * GooglePrivacyDlpV2MetadataLocation_Type
    GooglePrivacyDlpV2MetadataLocation_Type
      (
        GooglePrivacyDlpV2MetadataLocation_Type_METADATATYPEUNSPECIFIED,
        GooglePrivacyDlpV2MetadataLocation_Type_STORAGEMETADATA,
        ..
      ),

    -- * GooglePrivacyDlpV2OutputStorageConfig_OutputSchema
    GooglePrivacyDlpV2OutputStorageConfig_OutputSchema
      (
        GooglePrivacyDlpV2OutputStorageConfig_OutputSchema_OUTPUTSCHEMAUNSPECIFIED,
        GooglePrivacyDlpV2OutputStorageConfig_OutputSchema_BASICCOLUMNS,
        GooglePrivacyDlpV2OutputStorageConfig_OutputSchema_GCSCOLUMNS,
        GooglePrivacyDlpV2OutputStorageConfig_OutputSchema_DATASTORECOLUMNS,
        GooglePrivacyDlpV2OutputStorageConfig_OutputSchema_BIGQUERYCOLUMNS,
        GooglePrivacyDlpV2OutputStorageConfig_OutputSchema_ALLCOLUMNS,
        ..
      ),

    -- * GooglePrivacyDlpV2StoredInfoTypeVersion_State
    GooglePrivacyDlpV2StoredInfoTypeVersion_State
      (
        GooglePrivacyDlpV2StoredInfoTypeVersion_State_STOREDINFOTYPESTATEUNSPECIFIED,
        GooglePrivacyDlpV2StoredInfoTypeVersion_State_Pending,
        GooglePrivacyDlpV2StoredInfoTypeVersion_State_Ready,
        GooglePrivacyDlpV2StoredInfoTypeVersion_State_Failed,
        GooglePrivacyDlpV2StoredInfoTypeVersion_State_Invalid,
        ..
      ),

    -- * GooglePrivacyDlpV2SummaryResult_Code
    GooglePrivacyDlpV2SummaryResult_Code
      (
        GooglePrivacyDlpV2SummaryResult_Code_TRANSFORMATIONRESULTCODEUNSPECIFIED,
        GooglePrivacyDlpV2SummaryResult_Code_Success,
        GooglePrivacyDlpV2SummaryResult_Code_Error',
        ..
      ),

    -- * GooglePrivacyDlpV2TimePartConfig_PartToExtract
    GooglePrivacyDlpV2TimePartConfig_PartToExtract
      (
        GooglePrivacyDlpV2TimePartConfig_PartToExtract_TIMEPARTUNSPECIFIED,
        GooglePrivacyDlpV2TimePartConfig_PartToExtract_Year,
        GooglePrivacyDlpV2TimePartConfig_PartToExtract_Month,
        GooglePrivacyDlpV2TimePartConfig_PartToExtract_DAYOFMONTH,
        GooglePrivacyDlpV2TimePartConfig_PartToExtract_DAYOFWEEK,
        GooglePrivacyDlpV2TimePartConfig_PartToExtract_WEEKOFYEAR,
        GooglePrivacyDlpV2TimePartConfig_PartToExtract_HOUROFDAY,
        ..
      ),

    -- * GooglePrivacyDlpV2Value_DayOfWeekValue
    GooglePrivacyDlpV2Value_DayOfWeekValue
      (
        GooglePrivacyDlpV2Value_DayOfWeekValue_DAYOFWEEKUNSPECIFIED,
        GooglePrivacyDlpV2Value_DayOfWeekValue_Monday,
        GooglePrivacyDlpV2Value_DayOfWeekValue_Tuesday,
        GooglePrivacyDlpV2Value_DayOfWeekValue_Wednesday,
        GooglePrivacyDlpV2Value_DayOfWeekValue_Thursday,
        GooglePrivacyDlpV2Value_DayOfWeekValue_Friday,
        GooglePrivacyDlpV2Value_DayOfWeekValue_Saturday,
        GooglePrivacyDlpV2Value_DayOfWeekValue_Sunday,
        ..
      ),

    -- * OrganizationsLocationsDlpJobsListType
    OrganizationsLocationsDlpJobsListType
      (
        OrganizationsLocationsDlpJobsListType_DLPJOBTYPEUNSPECIFIED,
        OrganizationsLocationsDlpJobsListType_INSPECTJOB,
        OrganizationsLocationsDlpJobsListType_RISKANALYSISJOB,
        ..
      ),

    -- * OrganizationsLocationsJobTriggersListType
    OrganizationsLocationsJobTriggersListType
      (
        OrganizationsLocationsJobTriggersListType_DLPJOBTYPEUNSPECIFIED,
        OrganizationsLocationsJobTriggersListType_INSPECTJOB,
        OrganizationsLocationsJobTriggersListType_RISKANALYSISJOB,
        ..
      ),

    -- * ProjectsDlpJobsListType
    ProjectsDlpJobsListType
      (
        ProjectsDlpJobsListType_DLPJOBTYPEUNSPECIFIED,
        ProjectsDlpJobsListType_INSPECTJOB,
        ProjectsDlpJobsListType_RISKANALYSISJOB,
        ..
      ),

    -- * ProjectsJobTriggersListType
    ProjectsJobTriggersListType
      (
        ProjectsJobTriggersListType_DLPJOBTYPEUNSPECIFIED,
        ProjectsJobTriggersListType_INSPECTJOB,
        ProjectsJobTriggersListType_RISKANALYSISJOB,
        ..
      ),

    -- * ProjectsLocationsDlpJobsListType
    ProjectsLocationsDlpJobsListType
      (
        ProjectsLocationsDlpJobsListType_DLPJOBTYPEUNSPECIFIED,
        ProjectsLocationsDlpJobsListType_INSPECTJOB,
        ProjectsLocationsDlpJobsListType_RISKANALYSISJOB,
        ..
      ),

    -- * ProjectsLocationsJobTriggersListType
    ProjectsLocationsJobTriggersListType
      (
        ProjectsLocationsJobTriggersListType_DLPJOBTYPEUNSPECIFIED,
        ProjectsLocationsJobTriggersListType_INSPECTJOB,
        ProjectsLocationsJobTriggersListType_RISKANALYSISJOB,
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

newtype GooglePrivacyDlpV2BigQueryOptions_SampleMethod = GooglePrivacyDlpV2BigQueryOptions_SampleMethod { fromGooglePrivacyDlpV2BigQueryOptions_SampleMethod :: Core.Text }
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

-- | 
pattern GooglePrivacyDlpV2BigQueryOptions_SampleMethod_SAMPLEMETHODUNSPECIFIED :: GooglePrivacyDlpV2BigQueryOptions_SampleMethod
pattern GooglePrivacyDlpV2BigQueryOptions_SampleMethod_SAMPLEMETHODUNSPECIFIED = GooglePrivacyDlpV2BigQueryOptions_SampleMethod "SAMPLE_METHOD_UNSPECIFIED"

-- | Scan groups of rows in the order BigQuery provides (default). Multiple groups of rows may be scanned in parallel, so results may not appear in the same order the rows are read.
pattern GooglePrivacyDlpV2BigQueryOptions_SampleMethod_Top :: GooglePrivacyDlpV2BigQueryOptions_SampleMethod
pattern GooglePrivacyDlpV2BigQueryOptions_SampleMethod_Top = GooglePrivacyDlpV2BigQueryOptions_SampleMethod "TOP"

-- | Randomly pick groups of rows to scan.
pattern GooglePrivacyDlpV2BigQueryOptions_SampleMethod_RANDOMSTART :: GooglePrivacyDlpV2BigQueryOptions_SampleMethod
pattern GooglePrivacyDlpV2BigQueryOptions_SampleMethod_RANDOMSTART = GooglePrivacyDlpV2BigQueryOptions_SampleMethod "RANDOM_START"

{-# COMPLETE
  GooglePrivacyDlpV2BigQueryOptions_SampleMethod_SAMPLEMETHODUNSPECIFIED,
  GooglePrivacyDlpV2BigQueryOptions_SampleMethod_Top,
  GooglePrivacyDlpV2BigQueryOptions_SampleMethod_RANDOMSTART,
  GooglePrivacyDlpV2BigQueryOptions_SampleMethod #-}

-- | The type of data stored in the bytes string. Default will be TEXT_UTF8.
newtype GooglePrivacyDlpV2ByteContentItem_Type = GooglePrivacyDlpV2ByteContentItem_Type { fromGooglePrivacyDlpV2ByteContentItem_Type :: Core.Text }
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

-- | Unused
pattern GooglePrivacyDlpV2ByteContentItem_Type_BYTESTYPEUNSPECIFIED :: GooglePrivacyDlpV2ByteContentItem_Type
pattern GooglePrivacyDlpV2ByteContentItem_Type_BYTESTYPEUNSPECIFIED = GooglePrivacyDlpV2ByteContentItem_Type "BYTES_TYPE_UNSPECIFIED"

-- | Any image type.
pattern GooglePrivacyDlpV2ByteContentItem_Type_Image :: GooglePrivacyDlpV2ByteContentItem_Type
pattern GooglePrivacyDlpV2ByteContentItem_Type_Image = GooglePrivacyDlpV2ByteContentItem_Type "IMAGE"

-- | jpeg
pattern GooglePrivacyDlpV2ByteContentItem_Type_IMAGEJPEG :: GooglePrivacyDlpV2ByteContentItem_Type
pattern GooglePrivacyDlpV2ByteContentItem_Type_IMAGEJPEG = GooglePrivacyDlpV2ByteContentItem_Type "IMAGE_JPEG"

-- | bmp
pattern GooglePrivacyDlpV2ByteContentItem_Type_IMAGEBMP :: GooglePrivacyDlpV2ByteContentItem_Type
pattern GooglePrivacyDlpV2ByteContentItem_Type_IMAGEBMP = GooglePrivacyDlpV2ByteContentItem_Type "IMAGE_BMP"

-- | png
pattern GooglePrivacyDlpV2ByteContentItem_Type_IMAGEPNG :: GooglePrivacyDlpV2ByteContentItem_Type
pattern GooglePrivacyDlpV2ByteContentItem_Type_IMAGEPNG = GooglePrivacyDlpV2ByteContentItem_Type "IMAGE_PNG"

-- | svg
pattern GooglePrivacyDlpV2ByteContentItem_Type_IMAGESVG :: GooglePrivacyDlpV2ByteContentItem_Type
pattern GooglePrivacyDlpV2ByteContentItem_Type_IMAGESVG = GooglePrivacyDlpV2ByteContentItem_Type "IMAGE_SVG"

-- | plain text
pattern GooglePrivacyDlpV2ByteContentItem_Type_TEXT_UTF8 :: GooglePrivacyDlpV2ByteContentItem_Type
pattern GooglePrivacyDlpV2ByteContentItem_Type_TEXT_UTF8 = GooglePrivacyDlpV2ByteContentItem_Type "TEXT_UTF8"

-- | docx, docm, dotx, dotm
pattern GooglePrivacyDlpV2ByteContentItem_Type_WORDDOCUMENT :: GooglePrivacyDlpV2ByteContentItem_Type
pattern GooglePrivacyDlpV2ByteContentItem_Type_WORDDOCUMENT = GooglePrivacyDlpV2ByteContentItem_Type "WORD_DOCUMENT"

-- | pdf
pattern GooglePrivacyDlpV2ByteContentItem_Type_Pdf :: GooglePrivacyDlpV2ByteContentItem_Type
pattern GooglePrivacyDlpV2ByteContentItem_Type_Pdf = GooglePrivacyDlpV2ByteContentItem_Type "PDF"

-- | powerpoint
pattern GooglePrivacyDlpV2ByteContentItem_Type_POWERPOINTDOCUMENT :: GooglePrivacyDlpV2ByteContentItem_Type
pattern GooglePrivacyDlpV2ByteContentItem_Type_POWERPOINTDOCUMENT = GooglePrivacyDlpV2ByteContentItem_Type "POWERPOINT_DOCUMENT"

-- | excel
pattern GooglePrivacyDlpV2ByteContentItem_Type_EXCELDOCUMENT :: GooglePrivacyDlpV2ByteContentItem_Type
pattern GooglePrivacyDlpV2ByteContentItem_Type_EXCELDOCUMENT = GooglePrivacyDlpV2ByteContentItem_Type "EXCEL_DOCUMENT"

-- | avro
pattern GooglePrivacyDlpV2ByteContentItem_Type_Avro :: GooglePrivacyDlpV2ByteContentItem_Type
pattern GooglePrivacyDlpV2ByteContentItem_Type_Avro = GooglePrivacyDlpV2ByteContentItem_Type "AVRO"

-- | csv
pattern GooglePrivacyDlpV2ByteContentItem_Type_Csv :: GooglePrivacyDlpV2ByteContentItem_Type
pattern GooglePrivacyDlpV2ByteContentItem_Type_Csv = GooglePrivacyDlpV2ByteContentItem_Type "CSV"

-- | tsv
pattern GooglePrivacyDlpV2ByteContentItem_Type_Tsv :: GooglePrivacyDlpV2ByteContentItem_Type
pattern GooglePrivacyDlpV2ByteContentItem_Type_Tsv = GooglePrivacyDlpV2ByteContentItem_Type "TSV"

{-# COMPLETE
  GooglePrivacyDlpV2ByteContentItem_Type_BYTESTYPEUNSPECIFIED,
  GooglePrivacyDlpV2ByteContentItem_Type_Image,
  GooglePrivacyDlpV2ByteContentItem_Type_IMAGEJPEG,
  GooglePrivacyDlpV2ByteContentItem_Type_IMAGEBMP,
  GooglePrivacyDlpV2ByteContentItem_Type_IMAGEPNG,
  GooglePrivacyDlpV2ByteContentItem_Type_IMAGESVG,
  GooglePrivacyDlpV2ByteContentItem_Type_TEXT_UTF8,
  GooglePrivacyDlpV2ByteContentItem_Type_WORDDOCUMENT,
  GooglePrivacyDlpV2ByteContentItem_Type_Pdf,
  GooglePrivacyDlpV2ByteContentItem_Type_POWERPOINTDOCUMENT,
  GooglePrivacyDlpV2ByteContentItem_Type_EXCELDOCUMENT,
  GooglePrivacyDlpV2ByteContentItem_Type_Avro,
  GooglePrivacyDlpV2ByteContentItem_Type_Csv,
  GooglePrivacyDlpV2ByteContentItem_Type_Tsv,
  GooglePrivacyDlpV2ByteContentItem_Type #-}

-- | Common characters to not transform when masking. Useful to avoid removing punctuation.
newtype GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore = GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore { fromGooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore :: Core.Text }
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

-- | Unused.
pattern GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore_COMMONCHARSTOIGNOREUNSPECIFIED :: GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore
pattern GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore_COMMONCHARSTOIGNOREUNSPECIFIED = GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore "COMMON_CHARS_TO_IGNORE_UNSPECIFIED"

-- | 0-9
pattern GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore_Numeric :: GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore
pattern GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore_Numeric = GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore "NUMERIC"

-- | A-Z
pattern GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore_ALPHAUPPERCASE :: GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore
pattern GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore_ALPHAUPPERCASE = GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore "ALPHA_UPPER_CASE"

-- | a-z
pattern GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore_ALPHALOWERCASE :: GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore
pattern GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore_ALPHALOWERCASE = GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore "ALPHA_LOWER_CASE"

-- | US Punctuation, one of !\"#$%&\'()*+,-.\/:;\<=>?\@[]^_\`{|}~
pattern GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore_Punctuation :: GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore
pattern GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore_Punctuation = GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore "PUNCTUATION"

-- | Whitespace character, one of [ \\t\\n\\x0B\\f\\r]
pattern GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore_Whitespace :: GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore
pattern GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore_Whitespace = GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore "WHITESPACE"

{-# COMPLETE
  GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore_COMMONCHARSTOIGNOREUNSPECIFIED,
  GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore_Numeric,
  GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore_ALPHAUPPERCASE,
  GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore_ALPHALOWERCASE,
  GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore_Punctuation,
  GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore_Whitespace,
  GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore #-}

newtype GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem = GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem { fromGooglePrivacyDlpV2CloudStorageOptions_FileTypesItem :: Core.Text }
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

-- | Includes all files.
pattern GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_FILETYPEUNSPECIFIED :: GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem
pattern GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_FILETYPEUNSPECIFIED = GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem "FILE_TYPE_UNSPECIFIED"

-- | Includes all file extensions not covered by another entry. Binary scanning attempts to convert the content of the file to utf_8 to scan the file. If you wish to avoid this fall back, specify one or more of the other FileType\'s in your storage scan.
pattern GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_BINARYFILE :: GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem
pattern GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_BINARYFILE = GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem "BINARY_FILE"

-- | Included file extensions: asc,asp, aspx, brf, c, cc,cfm, cgi, cpp, csv, cxx, c++, cs, css, dart, dat, dot, eml,, epbub, ged, go, h, hh, hpp, hxx, h++, hs, html, htm, mkd, markdown, m, ml, mli, perl, pl, plist, pm, php, phtml, pht, properties, py, pyw, rb, rbw, rs, rss, rc, scala, sh, sql, swift, tex, shtml, shtm, xhtml, lhs, ics, ini, java, js, json, kix, kml, ocaml, md, txt, text, tsv, vb, vcard, vcs, wml, xcodeproj, xml, xsl, xsd, yml, yaml.
pattern GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_TEXTFILE :: GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem
pattern GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_TEXTFILE = GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem "TEXT_FILE"

-- | Included file extensions: bmp, gif, jpg, jpeg, jpe, png. bytes/limit/per_file has no effect on image files. Image inspection is restricted to \'global\', \'us\', \'asia\', and \'europe\'.
pattern GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_Image :: GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem
pattern GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_Image = GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem "IMAGE"

-- | Word files >30 MB will be scanned as binary files. Included file extensions: docx, dotx, docm, dotm
pattern GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_Word :: GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem
pattern GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_Word = GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem "WORD"

-- | PDF files >30 MB will be scanned as binary files. Included file extensions: pdf
pattern GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_Pdf :: GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem
pattern GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_Pdf = GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem "PDF"

-- | Included file extensions: avro
pattern GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_Avro :: GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem
pattern GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_Avro = GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem "AVRO"

-- | Included file extensions: csv
pattern GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_Csv :: GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem
pattern GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_Csv = GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem "CSV"

-- | Included file extensions: tsv
pattern GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_Tsv :: GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem
pattern GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_Tsv = GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem "TSV"

-- | Powerpoint files >30 MB will be scanned as binary files. Included file extensions: pptx, pptm, potx, potm, pot
pattern GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_Powerpoint :: GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem
pattern GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_Powerpoint = GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem "POWERPOINT"

-- | Excel files >30 MB will be scanned as binary files. Included file extensions: xlsx, xlsm, xltx, xltm
pattern GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_Excel :: GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem
pattern GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_Excel = GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem "EXCEL"

{-# COMPLETE
  GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_FILETYPEUNSPECIFIED,
  GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_BINARYFILE,
  GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_TEXTFILE,
  GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_Image,
  GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_Word,
  GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_Pdf,
  GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_Avro,
  GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_Csv,
  GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_Tsv,
  GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_Powerpoint,
  GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_Excel,
  GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem #-}

newtype GooglePrivacyDlpV2CloudStorageOptions_SampleMethod = GooglePrivacyDlpV2CloudStorageOptions_SampleMethod { fromGooglePrivacyDlpV2CloudStorageOptions_SampleMethod :: Core.Text }
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

-- | 
pattern GooglePrivacyDlpV2CloudStorageOptions_SampleMethod_SAMPLEMETHODUNSPECIFIED :: GooglePrivacyDlpV2CloudStorageOptions_SampleMethod
pattern GooglePrivacyDlpV2CloudStorageOptions_SampleMethod_SAMPLEMETHODUNSPECIFIED = GooglePrivacyDlpV2CloudStorageOptions_SampleMethod "SAMPLE_METHOD_UNSPECIFIED"

-- | Scan from the top (default).
pattern GooglePrivacyDlpV2CloudStorageOptions_SampleMethod_Top :: GooglePrivacyDlpV2CloudStorageOptions_SampleMethod
pattern GooglePrivacyDlpV2CloudStorageOptions_SampleMethod_Top = GooglePrivacyDlpV2CloudStorageOptions_SampleMethod "TOP"

-- | For each file larger than bytes/limit/per_file, randomly pick the offset to start scanning. The scanned bytes are contiguous.
pattern GooglePrivacyDlpV2CloudStorageOptions_SampleMethod_RANDOMSTART :: GooglePrivacyDlpV2CloudStorageOptions_SampleMethod
pattern GooglePrivacyDlpV2CloudStorageOptions_SampleMethod_RANDOMSTART = GooglePrivacyDlpV2CloudStorageOptions_SampleMethod "RANDOM_START"

{-# COMPLETE
  GooglePrivacyDlpV2CloudStorageOptions_SampleMethod_SAMPLEMETHODUNSPECIFIED,
  GooglePrivacyDlpV2CloudStorageOptions_SampleMethod_Top,
  GooglePrivacyDlpV2CloudStorageOptions_SampleMethod_RANDOMSTART,
  GooglePrivacyDlpV2CloudStorageOptions_SampleMethod #-}

-- | Required. Operator used to compare the field or infoType to the value.
newtype GooglePrivacyDlpV2Condition_Operator = GooglePrivacyDlpV2Condition_Operator { fromGooglePrivacyDlpV2Condition_Operator :: Core.Text }
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

-- | Unused
pattern GooglePrivacyDlpV2Condition_Operator_RELATIONALOPERATORUNSPECIFIED :: GooglePrivacyDlpV2Condition_Operator
pattern GooglePrivacyDlpV2Condition_Operator_RELATIONALOPERATORUNSPECIFIED = GooglePrivacyDlpV2Condition_Operator "RELATIONAL_OPERATOR_UNSPECIFIED"

-- | Equal. Attempts to match even with incompatible types.
pattern GooglePrivacyDlpV2Condition_Operator_EQUALTO :: GooglePrivacyDlpV2Condition_Operator
pattern GooglePrivacyDlpV2Condition_Operator_EQUALTO = GooglePrivacyDlpV2Condition_Operator "EQUAL_TO"

-- | Not equal to. Attempts to match even with incompatible types.
pattern GooglePrivacyDlpV2Condition_Operator_NOTEQUALTO :: GooglePrivacyDlpV2Condition_Operator
pattern GooglePrivacyDlpV2Condition_Operator_NOTEQUALTO = GooglePrivacyDlpV2Condition_Operator "NOT_EQUAL_TO"

-- | Greater than.
pattern GooglePrivacyDlpV2Condition_Operator_GREATERTHAN :: GooglePrivacyDlpV2Condition_Operator
pattern GooglePrivacyDlpV2Condition_Operator_GREATERTHAN = GooglePrivacyDlpV2Condition_Operator "GREATER_THAN"

-- | Less than.
pattern GooglePrivacyDlpV2Condition_Operator_LESSTHAN :: GooglePrivacyDlpV2Condition_Operator
pattern GooglePrivacyDlpV2Condition_Operator_LESSTHAN = GooglePrivacyDlpV2Condition_Operator "LESS_THAN"

-- | Greater than or equals.
pattern GooglePrivacyDlpV2Condition_Operator_GREATERTHANOREQUALS :: GooglePrivacyDlpV2Condition_Operator
pattern GooglePrivacyDlpV2Condition_Operator_GREATERTHANOREQUALS = GooglePrivacyDlpV2Condition_Operator "GREATER_THAN_OR_EQUALS"

-- | Less than or equals.
pattern GooglePrivacyDlpV2Condition_Operator_LESSTHANOREQUALS :: GooglePrivacyDlpV2Condition_Operator
pattern GooglePrivacyDlpV2Condition_Operator_LESSTHANOREQUALS = GooglePrivacyDlpV2Condition_Operator "LESS_THAN_OR_EQUALS"

-- | Exists
pattern GooglePrivacyDlpV2Condition_Operator_Exists :: GooglePrivacyDlpV2Condition_Operator
pattern GooglePrivacyDlpV2Condition_Operator_Exists = GooglePrivacyDlpV2Condition_Operator "EXISTS"

{-# COMPLETE
  GooglePrivacyDlpV2Condition_Operator_RELATIONALOPERATORUNSPECIFIED,
  GooglePrivacyDlpV2Condition_Operator_EQUALTO,
  GooglePrivacyDlpV2Condition_Operator_NOTEQUALTO,
  GooglePrivacyDlpV2Condition_Operator_GREATERTHAN,
  GooglePrivacyDlpV2Condition_Operator_LESSTHAN,
  GooglePrivacyDlpV2Condition_Operator_GREATERTHANOREQUALS,
  GooglePrivacyDlpV2Condition_Operator_LESSTHANOREQUALS,
  GooglePrivacyDlpV2Condition_Operator_Exists,
  GooglePrivacyDlpV2Condition_Operator #-}

-- | Common alphabets.
newtype GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet = GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet { fromGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet :: Core.Text }
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

-- | Unused.
pattern GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet_FFXCOMMONNATIVEALPHABETUNSPECIFIED :: GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet
pattern GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet_FFXCOMMONNATIVEALPHABETUNSPECIFIED = GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet "FFX_COMMON_NATIVE_ALPHABET_UNSPECIFIED"

-- | @[0-9]@ (radix of 10)
pattern GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet_Numeric :: GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet
pattern GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet_Numeric = GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet "NUMERIC"

-- | @[0-9A-F]@ (radix of 16)
pattern GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet_Hexadecimal :: GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet
pattern GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet_Hexadecimal = GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet "HEXADECIMAL"

-- | @[0-9A-Z]@ (radix of 36)
pattern GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet_UPPERCASEALPHANUMERIC :: GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet
pattern GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet_UPPERCASEALPHANUMERIC = GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet "UPPER_CASE_ALPHA_NUMERIC"

-- | @[0-9A-Za-z]@ (radix of 62)
pattern GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet_ALPHANUMERIC :: GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet
pattern GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet_ALPHANUMERIC = GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet "ALPHA_NUMERIC"

{-# COMPLETE
  GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet_FFXCOMMONNATIVEALPHABETUNSPECIFIED,
  GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet_Numeric,
  GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet_Hexadecimal,
  GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet_UPPERCASEALPHANUMERIC,
  GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet_ALPHANUMERIC,
  GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet #-}

-- | If set to EXCLUSION/TYPE/EXCLUDE this infoType will not cause a finding to be returned. It still can be used for rules matching.
newtype GooglePrivacyDlpV2CustomInfoType_ExclusionType = GooglePrivacyDlpV2CustomInfoType_ExclusionType { fromGooglePrivacyDlpV2CustomInfoType_ExclusionType :: Core.Text }
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

-- | A finding of this custom info type will not be excluded from results.
pattern GooglePrivacyDlpV2CustomInfoType_ExclusionType_EXCLUSIONTYPEUNSPECIFIED :: GooglePrivacyDlpV2CustomInfoType_ExclusionType
pattern GooglePrivacyDlpV2CustomInfoType_ExclusionType_EXCLUSIONTYPEUNSPECIFIED = GooglePrivacyDlpV2CustomInfoType_ExclusionType "EXCLUSION_TYPE_UNSPECIFIED"

-- | A finding of this custom info type will be excluded from final results, but can still affect rule execution.
pattern GooglePrivacyDlpV2CustomInfoType_ExclusionType_EXCLUSIONTYPEEXCLUDE :: GooglePrivacyDlpV2CustomInfoType_ExclusionType
pattern GooglePrivacyDlpV2CustomInfoType_ExclusionType_EXCLUSIONTYPEEXCLUDE = GooglePrivacyDlpV2CustomInfoType_ExclusionType "EXCLUSION_TYPE_EXCLUDE"

{-# COMPLETE
  GooglePrivacyDlpV2CustomInfoType_ExclusionType_EXCLUSIONTYPEUNSPECIFIED,
  GooglePrivacyDlpV2CustomInfoType_ExclusionType_EXCLUSIONTYPEEXCLUDE,
  GooglePrivacyDlpV2CustomInfoType_ExclusionType #-}

-- | Likelihood to return for this CustomInfoType. This base value can be altered by a detection rule if the finding meets the criteria specified by the rule. Defaults to @VERY_LIKELY@ if not specified.
newtype GooglePrivacyDlpV2CustomInfoType_Likelihood = GooglePrivacyDlpV2CustomInfoType_Likelihood { fromGooglePrivacyDlpV2CustomInfoType_Likelihood :: Core.Text }
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

-- | Default value; same as POSSIBLE.
pattern GooglePrivacyDlpV2CustomInfoType_Likelihood_LIKELIHOODUNSPECIFIED :: GooglePrivacyDlpV2CustomInfoType_Likelihood
pattern GooglePrivacyDlpV2CustomInfoType_Likelihood_LIKELIHOODUNSPECIFIED = GooglePrivacyDlpV2CustomInfoType_Likelihood "LIKELIHOOD_UNSPECIFIED"

-- | Few matching elements.
pattern GooglePrivacyDlpV2CustomInfoType_Likelihood_VERYUNLIKELY :: GooglePrivacyDlpV2CustomInfoType_Likelihood
pattern GooglePrivacyDlpV2CustomInfoType_Likelihood_VERYUNLIKELY = GooglePrivacyDlpV2CustomInfoType_Likelihood "VERY_UNLIKELY"

-- | 
pattern GooglePrivacyDlpV2CustomInfoType_Likelihood_Unlikely :: GooglePrivacyDlpV2CustomInfoType_Likelihood
pattern GooglePrivacyDlpV2CustomInfoType_Likelihood_Unlikely = GooglePrivacyDlpV2CustomInfoType_Likelihood "UNLIKELY"

-- | Some matching elements.
pattern GooglePrivacyDlpV2CustomInfoType_Likelihood_Possible :: GooglePrivacyDlpV2CustomInfoType_Likelihood
pattern GooglePrivacyDlpV2CustomInfoType_Likelihood_Possible = GooglePrivacyDlpV2CustomInfoType_Likelihood "POSSIBLE"

-- | 
pattern GooglePrivacyDlpV2CustomInfoType_Likelihood_Likely :: GooglePrivacyDlpV2CustomInfoType_Likelihood
pattern GooglePrivacyDlpV2CustomInfoType_Likelihood_Likely = GooglePrivacyDlpV2CustomInfoType_Likelihood "LIKELY"

-- | Many matching elements.
pattern GooglePrivacyDlpV2CustomInfoType_Likelihood_VERYLIKELY :: GooglePrivacyDlpV2CustomInfoType_Likelihood
pattern GooglePrivacyDlpV2CustomInfoType_Likelihood_VERYLIKELY = GooglePrivacyDlpV2CustomInfoType_Likelihood "VERY_LIKELY"

{-# COMPLETE
  GooglePrivacyDlpV2CustomInfoType_Likelihood_LIKELIHOODUNSPECIFIED,
  GooglePrivacyDlpV2CustomInfoType_Likelihood_VERYUNLIKELY,
  GooglePrivacyDlpV2CustomInfoType_Likelihood_Unlikely,
  GooglePrivacyDlpV2CustomInfoType_Likelihood_Possible,
  GooglePrivacyDlpV2CustomInfoType_Likelihood_Likely,
  GooglePrivacyDlpV2CustomInfoType_Likelihood_VERYLIKELY,
  GooglePrivacyDlpV2CustomInfoType_Likelihood #-}

-- | Day of week
newtype GooglePrivacyDlpV2DateTime_DayOfWeek = GooglePrivacyDlpV2DateTime_DayOfWeek { fromGooglePrivacyDlpV2DateTime_DayOfWeek :: Core.Text }
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

-- | The day of the week is unspecified.
pattern GooglePrivacyDlpV2DateTime_DayOfWeek_DAYOFWEEKUNSPECIFIED :: GooglePrivacyDlpV2DateTime_DayOfWeek
pattern GooglePrivacyDlpV2DateTime_DayOfWeek_DAYOFWEEKUNSPECIFIED = GooglePrivacyDlpV2DateTime_DayOfWeek "DAY_OF_WEEK_UNSPECIFIED"

-- | Monday
pattern GooglePrivacyDlpV2DateTime_DayOfWeek_Monday :: GooglePrivacyDlpV2DateTime_DayOfWeek
pattern GooglePrivacyDlpV2DateTime_DayOfWeek_Monday = GooglePrivacyDlpV2DateTime_DayOfWeek "MONDAY"

-- | Tuesday
pattern GooglePrivacyDlpV2DateTime_DayOfWeek_Tuesday :: GooglePrivacyDlpV2DateTime_DayOfWeek
pattern GooglePrivacyDlpV2DateTime_DayOfWeek_Tuesday = GooglePrivacyDlpV2DateTime_DayOfWeek "TUESDAY"

-- | Wednesday
pattern GooglePrivacyDlpV2DateTime_DayOfWeek_Wednesday :: GooglePrivacyDlpV2DateTime_DayOfWeek
pattern GooglePrivacyDlpV2DateTime_DayOfWeek_Wednesday = GooglePrivacyDlpV2DateTime_DayOfWeek "WEDNESDAY"

-- | Thursday
pattern GooglePrivacyDlpV2DateTime_DayOfWeek_Thursday :: GooglePrivacyDlpV2DateTime_DayOfWeek
pattern GooglePrivacyDlpV2DateTime_DayOfWeek_Thursday = GooglePrivacyDlpV2DateTime_DayOfWeek "THURSDAY"

-- | Friday
pattern GooglePrivacyDlpV2DateTime_DayOfWeek_Friday :: GooglePrivacyDlpV2DateTime_DayOfWeek
pattern GooglePrivacyDlpV2DateTime_DayOfWeek_Friday = GooglePrivacyDlpV2DateTime_DayOfWeek "FRIDAY"

-- | Saturday
pattern GooglePrivacyDlpV2DateTime_DayOfWeek_Saturday :: GooglePrivacyDlpV2DateTime_DayOfWeek
pattern GooglePrivacyDlpV2DateTime_DayOfWeek_Saturday = GooglePrivacyDlpV2DateTime_DayOfWeek "SATURDAY"

-- | Sunday
pattern GooglePrivacyDlpV2DateTime_DayOfWeek_Sunday :: GooglePrivacyDlpV2DateTime_DayOfWeek
pattern GooglePrivacyDlpV2DateTime_DayOfWeek_Sunday = GooglePrivacyDlpV2DateTime_DayOfWeek "SUNDAY"

{-# COMPLETE
  GooglePrivacyDlpV2DateTime_DayOfWeek_DAYOFWEEKUNSPECIFIED,
  GooglePrivacyDlpV2DateTime_DayOfWeek_Monday,
  GooglePrivacyDlpV2DateTime_DayOfWeek_Tuesday,
  GooglePrivacyDlpV2DateTime_DayOfWeek_Wednesday,
  GooglePrivacyDlpV2DateTime_DayOfWeek_Thursday,
  GooglePrivacyDlpV2DateTime_DayOfWeek_Friday,
  GooglePrivacyDlpV2DateTime_DayOfWeek_Saturday,
  GooglePrivacyDlpV2DateTime_DayOfWeek_Sunday,
  GooglePrivacyDlpV2DateTime_DayOfWeek #-}

-- | State of a job.
newtype GooglePrivacyDlpV2DlpJob_State = GooglePrivacyDlpV2DlpJob_State { fromGooglePrivacyDlpV2DlpJob_State :: Core.Text }
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

-- | Unused.
pattern GooglePrivacyDlpV2DlpJob_State_JOBSTATEUNSPECIFIED :: GooglePrivacyDlpV2DlpJob_State
pattern GooglePrivacyDlpV2DlpJob_State_JOBSTATEUNSPECIFIED = GooglePrivacyDlpV2DlpJob_State "JOB_STATE_UNSPECIFIED"

-- | The job has not yet started.
pattern GooglePrivacyDlpV2DlpJob_State_Pending :: GooglePrivacyDlpV2DlpJob_State
pattern GooglePrivacyDlpV2DlpJob_State_Pending = GooglePrivacyDlpV2DlpJob_State "PENDING"

-- | The job is currently running. Once a job has finished it will transition to FAILED or DONE.
pattern GooglePrivacyDlpV2DlpJob_State_Running :: GooglePrivacyDlpV2DlpJob_State
pattern GooglePrivacyDlpV2DlpJob_State_Running = GooglePrivacyDlpV2DlpJob_State "RUNNING"

-- | The job is no longer running.
pattern GooglePrivacyDlpV2DlpJob_State_Done :: GooglePrivacyDlpV2DlpJob_State
pattern GooglePrivacyDlpV2DlpJob_State_Done = GooglePrivacyDlpV2DlpJob_State "DONE"

-- | The job was canceled before it could complete.
pattern GooglePrivacyDlpV2DlpJob_State_Canceled :: GooglePrivacyDlpV2DlpJob_State
pattern GooglePrivacyDlpV2DlpJob_State_Canceled = GooglePrivacyDlpV2DlpJob_State "CANCELED"

-- | The job had an error and did not complete.
pattern GooglePrivacyDlpV2DlpJob_State_Failed :: GooglePrivacyDlpV2DlpJob_State
pattern GooglePrivacyDlpV2DlpJob_State_Failed = GooglePrivacyDlpV2DlpJob_State "FAILED"

-- | The job is currently accepting findings via hybridInspect. A hybrid job in ACTIVE state may continue to have findings added to it through calling of hybridInspect. After the job has finished no more calls to hybridInspect may be made. ACTIVE jobs can transition to DONE.
pattern GooglePrivacyDlpV2DlpJob_State_Active :: GooglePrivacyDlpV2DlpJob_State
pattern GooglePrivacyDlpV2DlpJob_State_Active = GooglePrivacyDlpV2DlpJob_State "ACTIVE"

{-# COMPLETE
  GooglePrivacyDlpV2DlpJob_State_JOBSTATEUNSPECIFIED,
  GooglePrivacyDlpV2DlpJob_State_Pending,
  GooglePrivacyDlpV2DlpJob_State_Running,
  GooglePrivacyDlpV2DlpJob_State_Done,
  GooglePrivacyDlpV2DlpJob_State_Canceled,
  GooglePrivacyDlpV2DlpJob_State_Failed,
  GooglePrivacyDlpV2DlpJob_State_Active,
  GooglePrivacyDlpV2DlpJob_State #-}

-- | The type of job.
newtype GooglePrivacyDlpV2DlpJob_Type = GooglePrivacyDlpV2DlpJob_Type { fromGooglePrivacyDlpV2DlpJob_Type :: Core.Text }
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

-- | Defaults to INSPECT_JOB.
pattern GooglePrivacyDlpV2DlpJob_Type_DLPJOBTYPEUNSPECIFIED :: GooglePrivacyDlpV2DlpJob_Type
pattern GooglePrivacyDlpV2DlpJob_Type_DLPJOBTYPEUNSPECIFIED = GooglePrivacyDlpV2DlpJob_Type "DLP_JOB_TYPE_UNSPECIFIED"

-- | The job inspected Google Cloud for sensitive data.
pattern GooglePrivacyDlpV2DlpJob_Type_INSPECTJOB :: GooglePrivacyDlpV2DlpJob_Type
pattern GooglePrivacyDlpV2DlpJob_Type_INSPECTJOB = GooglePrivacyDlpV2DlpJob_Type "INSPECT_JOB"

-- | The job executed a Risk Analysis computation.
pattern GooglePrivacyDlpV2DlpJob_Type_RISKANALYSISJOB :: GooglePrivacyDlpV2DlpJob_Type
pattern GooglePrivacyDlpV2DlpJob_Type_RISKANALYSISJOB = GooglePrivacyDlpV2DlpJob_Type "RISK_ANALYSIS_JOB"

{-# COMPLETE
  GooglePrivacyDlpV2DlpJob_Type_DLPJOBTYPEUNSPECIFIED,
  GooglePrivacyDlpV2DlpJob_Type_INSPECTJOB,
  GooglePrivacyDlpV2DlpJob_Type_RISKANALYSISJOB,
  GooglePrivacyDlpV2DlpJob_Type #-}

-- | How the rule is applied, see MatchingType documentation for details.
newtype GooglePrivacyDlpV2ExclusionRule_MatchingType = GooglePrivacyDlpV2ExclusionRule_MatchingType { fromGooglePrivacyDlpV2ExclusionRule_MatchingType :: Core.Text }
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

-- | Invalid.
pattern GooglePrivacyDlpV2ExclusionRule_MatchingType_MATCHINGTYPEUNSPECIFIED :: GooglePrivacyDlpV2ExclusionRule_MatchingType
pattern GooglePrivacyDlpV2ExclusionRule_MatchingType_MATCHINGTYPEUNSPECIFIED = GooglePrivacyDlpV2ExclusionRule_MatchingType "MATCHING_TYPE_UNSPECIFIED"

-- | Full match. - Dictionary: join of Dictionary results matched complete finding quote - Regex: all regex matches fill a finding quote start to end - Exclude info type: completely inside affecting info types findings
pattern GooglePrivacyDlpV2ExclusionRule_MatchingType_MATCHINGTYPEFULLMATCH :: GooglePrivacyDlpV2ExclusionRule_MatchingType
pattern GooglePrivacyDlpV2ExclusionRule_MatchingType_MATCHINGTYPEFULLMATCH = GooglePrivacyDlpV2ExclusionRule_MatchingType "MATCHING_TYPE_FULL_MATCH"

-- | Partial match. - Dictionary: at least one of the tokens in the finding matches - Regex: substring of the finding matches - Exclude info type: intersects with affecting info types findings
pattern GooglePrivacyDlpV2ExclusionRule_MatchingType_MATCHINGTYPEPARTIALMATCH :: GooglePrivacyDlpV2ExclusionRule_MatchingType
pattern GooglePrivacyDlpV2ExclusionRule_MatchingType_MATCHINGTYPEPARTIALMATCH = GooglePrivacyDlpV2ExclusionRule_MatchingType "MATCHING_TYPE_PARTIAL_MATCH"

-- | Inverse match. - Dictionary: no tokens in the finding match the dictionary - Regex: finding doesn\'t match the regex - Exclude info type: no intersection with affecting info types findings
pattern GooglePrivacyDlpV2ExclusionRule_MatchingType_MATCHINGTYPEINVERSEMATCH :: GooglePrivacyDlpV2ExclusionRule_MatchingType
pattern GooglePrivacyDlpV2ExclusionRule_MatchingType_MATCHINGTYPEINVERSEMATCH = GooglePrivacyDlpV2ExclusionRule_MatchingType "MATCHING_TYPE_INVERSE_MATCH"

{-# COMPLETE
  GooglePrivacyDlpV2ExclusionRule_MatchingType_MATCHINGTYPEUNSPECIFIED,
  GooglePrivacyDlpV2ExclusionRule_MatchingType_MATCHINGTYPEFULLMATCH,
  GooglePrivacyDlpV2ExclusionRule_MatchingType_MATCHINGTYPEPARTIALMATCH,
  GooglePrivacyDlpV2ExclusionRule_MatchingType_MATCHINGTYPEINVERSEMATCH,
  GooglePrivacyDlpV2ExclusionRule_MatchingType #-}

-- | The operator to apply to the result of conditions. Default and currently only supported value is @AND@.
newtype GooglePrivacyDlpV2Expressions_LogicalOperator = GooglePrivacyDlpV2Expressions_LogicalOperator { fromGooglePrivacyDlpV2Expressions_LogicalOperator :: Core.Text }
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

-- | Unused
pattern GooglePrivacyDlpV2Expressions_LogicalOperator_LOGICALOPERATORUNSPECIFIED :: GooglePrivacyDlpV2Expressions_LogicalOperator
pattern GooglePrivacyDlpV2Expressions_LogicalOperator_LOGICALOPERATORUNSPECIFIED = GooglePrivacyDlpV2Expressions_LogicalOperator "LOGICAL_OPERATOR_UNSPECIFIED"

-- | Conditional AND
pattern GooglePrivacyDlpV2Expressions_LogicalOperator_And :: GooglePrivacyDlpV2Expressions_LogicalOperator
pattern GooglePrivacyDlpV2Expressions_LogicalOperator_And = GooglePrivacyDlpV2Expressions_LogicalOperator "AND"

{-# COMPLETE
  GooglePrivacyDlpV2Expressions_LogicalOperator_LOGICALOPERATORUNSPECIFIED,
  GooglePrivacyDlpV2Expressions_LogicalOperator_And,
  GooglePrivacyDlpV2Expressions_LogicalOperator #-}

-- | Confidence of how likely it is that the @info_type@ is correct.
newtype GooglePrivacyDlpV2Finding_Likelihood = GooglePrivacyDlpV2Finding_Likelihood { fromGooglePrivacyDlpV2Finding_Likelihood :: Core.Text }
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

-- | Default value; same as POSSIBLE.
pattern GooglePrivacyDlpV2Finding_Likelihood_LIKELIHOODUNSPECIFIED :: GooglePrivacyDlpV2Finding_Likelihood
pattern GooglePrivacyDlpV2Finding_Likelihood_LIKELIHOODUNSPECIFIED = GooglePrivacyDlpV2Finding_Likelihood "LIKELIHOOD_UNSPECIFIED"

-- | Few matching elements.
pattern GooglePrivacyDlpV2Finding_Likelihood_VERYUNLIKELY :: GooglePrivacyDlpV2Finding_Likelihood
pattern GooglePrivacyDlpV2Finding_Likelihood_VERYUNLIKELY = GooglePrivacyDlpV2Finding_Likelihood "VERY_UNLIKELY"

-- | 
pattern GooglePrivacyDlpV2Finding_Likelihood_Unlikely :: GooglePrivacyDlpV2Finding_Likelihood
pattern GooglePrivacyDlpV2Finding_Likelihood_Unlikely = GooglePrivacyDlpV2Finding_Likelihood "UNLIKELY"

-- | Some matching elements.
pattern GooglePrivacyDlpV2Finding_Likelihood_Possible :: GooglePrivacyDlpV2Finding_Likelihood
pattern GooglePrivacyDlpV2Finding_Likelihood_Possible = GooglePrivacyDlpV2Finding_Likelihood "POSSIBLE"

-- | 
pattern GooglePrivacyDlpV2Finding_Likelihood_Likely :: GooglePrivacyDlpV2Finding_Likelihood
pattern GooglePrivacyDlpV2Finding_Likelihood_Likely = GooglePrivacyDlpV2Finding_Likelihood "LIKELY"

-- | Many matching elements.
pattern GooglePrivacyDlpV2Finding_Likelihood_VERYLIKELY :: GooglePrivacyDlpV2Finding_Likelihood
pattern GooglePrivacyDlpV2Finding_Likelihood_VERYLIKELY = GooglePrivacyDlpV2Finding_Likelihood "VERY_LIKELY"

{-# COMPLETE
  GooglePrivacyDlpV2Finding_Likelihood_LIKELIHOODUNSPECIFIED,
  GooglePrivacyDlpV2Finding_Likelihood_VERYUNLIKELY,
  GooglePrivacyDlpV2Finding_Likelihood_Unlikely,
  GooglePrivacyDlpV2Finding_Likelihood_Possible,
  GooglePrivacyDlpV2Finding_Likelihood_Likely,
  GooglePrivacyDlpV2Finding_Likelihood_VERYLIKELY,
  GooglePrivacyDlpV2Finding_Likelihood #-}

newtype GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem = GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem { fromGooglePrivacyDlpV2InfoTypeDescription_SupportedByItem :: Core.Text }
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

-- | Unused.
pattern GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem_ENUMTYPEUNSPECIFIED :: GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem
pattern GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem_ENUMTYPEUNSPECIFIED = GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem "ENUM_TYPE_UNSPECIFIED"

-- | Supported by the inspect operations.
pattern GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem_Inspect :: GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem
pattern GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem_Inspect = GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem "INSPECT"

-- | Supported by the risk analysis operations.
pattern GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem_RISKANALYSIS :: GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem
pattern GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem_RISKANALYSIS = GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem "RISK_ANALYSIS"

{-# COMPLETE
  GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem_ENUMTYPEUNSPECIFIED,
  GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem_Inspect,
  GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem_RISKANALYSIS,
  GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem #-}

newtype GooglePrivacyDlpV2InspectConfig_ContentOptionsItem = GooglePrivacyDlpV2InspectConfig_ContentOptionsItem { fromGooglePrivacyDlpV2InspectConfig_ContentOptionsItem :: Core.Text }
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

-- | Includes entire content of a file or a data stream.
pattern GooglePrivacyDlpV2InspectConfig_ContentOptionsItem_CONTENTUNSPECIFIED :: GooglePrivacyDlpV2InspectConfig_ContentOptionsItem
pattern GooglePrivacyDlpV2InspectConfig_ContentOptionsItem_CONTENTUNSPECIFIED = GooglePrivacyDlpV2InspectConfig_ContentOptionsItem "CONTENT_UNSPECIFIED"

-- | Text content within the data, excluding any metadata.
pattern GooglePrivacyDlpV2InspectConfig_ContentOptionsItem_CONTENTTEXT :: GooglePrivacyDlpV2InspectConfig_ContentOptionsItem
pattern GooglePrivacyDlpV2InspectConfig_ContentOptionsItem_CONTENTTEXT = GooglePrivacyDlpV2InspectConfig_ContentOptionsItem "CONTENT_TEXT"

-- | Images found in the data.
pattern GooglePrivacyDlpV2InspectConfig_ContentOptionsItem_CONTENTIMAGE :: GooglePrivacyDlpV2InspectConfig_ContentOptionsItem
pattern GooglePrivacyDlpV2InspectConfig_ContentOptionsItem_CONTENTIMAGE = GooglePrivacyDlpV2InspectConfig_ContentOptionsItem "CONTENT_IMAGE"

{-# COMPLETE
  GooglePrivacyDlpV2InspectConfig_ContentOptionsItem_CONTENTUNSPECIFIED,
  GooglePrivacyDlpV2InspectConfig_ContentOptionsItem_CONTENTTEXT,
  GooglePrivacyDlpV2InspectConfig_ContentOptionsItem_CONTENTIMAGE,
  GooglePrivacyDlpV2InspectConfig_ContentOptionsItem #-}

-- | Only returns findings equal or above this threshold. The default is POSSIBLE. See https:\/\/cloud.google.com\/dlp\/docs\/likelihood to learn more.
newtype GooglePrivacyDlpV2InspectConfig_MinLikelihood = GooglePrivacyDlpV2InspectConfig_MinLikelihood { fromGooglePrivacyDlpV2InspectConfig_MinLikelihood :: Core.Text }
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

-- | Default value; same as POSSIBLE.
pattern GooglePrivacyDlpV2InspectConfig_MinLikelihood_LIKELIHOODUNSPECIFIED :: GooglePrivacyDlpV2InspectConfig_MinLikelihood
pattern GooglePrivacyDlpV2InspectConfig_MinLikelihood_LIKELIHOODUNSPECIFIED = GooglePrivacyDlpV2InspectConfig_MinLikelihood "LIKELIHOOD_UNSPECIFIED"

-- | Few matching elements.
pattern GooglePrivacyDlpV2InspectConfig_MinLikelihood_VERYUNLIKELY :: GooglePrivacyDlpV2InspectConfig_MinLikelihood
pattern GooglePrivacyDlpV2InspectConfig_MinLikelihood_VERYUNLIKELY = GooglePrivacyDlpV2InspectConfig_MinLikelihood "VERY_UNLIKELY"

-- | 
pattern GooglePrivacyDlpV2InspectConfig_MinLikelihood_Unlikely :: GooglePrivacyDlpV2InspectConfig_MinLikelihood
pattern GooglePrivacyDlpV2InspectConfig_MinLikelihood_Unlikely = GooglePrivacyDlpV2InspectConfig_MinLikelihood "UNLIKELY"

-- | Some matching elements.
pattern GooglePrivacyDlpV2InspectConfig_MinLikelihood_Possible :: GooglePrivacyDlpV2InspectConfig_MinLikelihood
pattern GooglePrivacyDlpV2InspectConfig_MinLikelihood_Possible = GooglePrivacyDlpV2InspectConfig_MinLikelihood "POSSIBLE"

-- | 
pattern GooglePrivacyDlpV2InspectConfig_MinLikelihood_Likely :: GooglePrivacyDlpV2InspectConfig_MinLikelihood
pattern GooglePrivacyDlpV2InspectConfig_MinLikelihood_Likely = GooglePrivacyDlpV2InspectConfig_MinLikelihood "LIKELY"

-- | Many matching elements.
pattern GooglePrivacyDlpV2InspectConfig_MinLikelihood_VERYLIKELY :: GooglePrivacyDlpV2InspectConfig_MinLikelihood
pattern GooglePrivacyDlpV2InspectConfig_MinLikelihood_VERYLIKELY = GooglePrivacyDlpV2InspectConfig_MinLikelihood "VERY_LIKELY"

{-# COMPLETE
  GooglePrivacyDlpV2InspectConfig_MinLikelihood_LIKELIHOODUNSPECIFIED,
  GooglePrivacyDlpV2InspectConfig_MinLikelihood_VERYUNLIKELY,
  GooglePrivacyDlpV2InspectConfig_MinLikelihood_Unlikely,
  GooglePrivacyDlpV2InspectConfig_MinLikelihood_Possible,
  GooglePrivacyDlpV2InspectConfig_MinLikelihood_Likely,
  GooglePrivacyDlpV2InspectConfig_MinLikelihood_VERYLIKELY,
  GooglePrivacyDlpV2InspectConfig_MinLikelihood #-}

-- | Required. A status for this trigger.
newtype GooglePrivacyDlpV2JobTrigger_Status = GooglePrivacyDlpV2JobTrigger_Status { fromGooglePrivacyDlpV2JobTrigger_Status :: Core.Text }
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

-- | Unused.
pattern GooglePrivacyDlpV2JobTrigger_Status_STATUSUNSPECIFIED :: GooglePrivacyDlpV2JobTrigger_Status
pattern GooglePrivacyDlpV2JobTrigger_Status_STATUSUNSPECIFIED = GooglePrivacyDlpV2JobTrigger_Status "STATUS_UNSPECIFIED"

-- | Trigger is healthy.
pattern GooglePrivacyDlpV2JobTrigger_Status_Healthy :: GooglePrivacyDlpV2JobTrigger_Status
pattern GooglePrivacyDlpV2JobTrigger_Status_Healthy = GooglePrivacyDlpV2JobTrigger_Status "HEALTHY"

-- | Trigger is temporarily paused.
pattern GooglePrivacyDlpV2JobTrigger_Status_Paused :: GooglePrivacyDlpV2JobTrigger_Status
pattern GooglePrivacyDlpV2JobTrigger_Status_Paused = GooglePrivacyDlpV2JobTrigger_Status "PAUSED"

-- | Trigger is cancelled and can not be resumed.
pattern GooglePrivacyDlpV2JobTrigger_Status_Cancelled :: GooglePrivacyDlpV2JobTrigger_Status
pattern GooglePrivacyDlpV2JobTrigger_Status_Cancelled = GooglePrivacyDlpV2JobTrigger_Status "CANCELLED"

{-# COMPLETE
  GooglePrivacyDlpV2JobTrigger_Status_STATUSUNSPECIFIED,
  GooglePrivacyDlpV2JobTrigger_Status_Healthy,
  GooglePrivacyDlpV2JobTrigger_Status_Paused,
  GooglePrivacyDlpV2JobTrigger_Status_Cancelled,
  GooglePrivacyDlpV2JobTrigger_Status #-}

-- | Set the likelihood of a finding to a fixed value.
newtype GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood = GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood { fromGooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood :: Core.Text }
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

-- | Default value; same as POSSIBLE.
pattern GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_LIKELIHOODUNSPECIFIED :: GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood
pattern GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_LIKELIHOODUNSPECIFIED = GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood "LIKELIHOOD_UNSPECIFIED"

-- | Few matching elements.
pattern GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_VERYUNLIKELY :: GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood
pattern GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_VERYUNLIKELY = GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood "VERY_UNLIKELY"

-- | 
pattern GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_Unlikely :: GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood
pattern GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_Unlikely = GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood "UNLIKELY"

-- | Some matching elements.
pattern GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_Possible :: GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood
pattern GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_Possible = GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood "POSSIBLE"

-- | 
pattern GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_Likely :: GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood
pattern GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_Likely = GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood "LIKELY"

-- | Many matching elements.
pattern GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_VERYLIKELY :: GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood
pattern GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_VERYLIKELY = GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood "VERY_LIKELY"

{-# COMPLETE
  GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_LIKELIHOODUNSPECIFIED,
  GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_VERYUNLIKELY,
  GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_Unlikely,
  GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_Possible,
  GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_Likely,
  GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_VERYLIKELY,
  GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood #-}

-- | Type of metadata containing the finding.
newtype GooglePrivacyDlpV2MetadataLocation_Type = GooglePrivacyDlpV2MetadataLocation_Type { fromGooglePrivacyDlpV2MetadataLocation_Type :: Core.Text }
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

-- | Unused
pattern GooglePrivacyDlpV2MetadataLocation_Type_METADATATYPEUNSPECIFIED :: GooglePrivacyDlpV2MetadataLocation_Type
pattern GooglePrivacyDlpV2MetadataLocation_Type_METADATATYPEUNSPECIFIED = GooglePrivacyDlpV2MetadataLocation_Type "METADATATYPE_UNSPECIFIED"

-- | General file metadata provided by Cloud Storage.
pattern GooglePrivacyDlpV2MetadataLocation_Type_STORAGEMETADATA :: GooglePrivacyDlpV2MetadataLocation_Type
pattern GooglePrivacyDlpV2MetadataLocation_Type_STORAGEMETADATA = GooglePrivacyDlpV2MetadataLocation_Type "STORAGE_METADATA"

{-# COMPLETE
  GooglePrivacyDlpV2MetadataLocation_Type_METADATATYPEUNSPECIFIED,
  GooglePrivacyDlpV2MetadataLocation_Type_STORAGEMETADATA,
  GooglePrivacyDlpV2MetadataLocation_Type #-}

-- | Schema used for writing the findings for Inspect jobs. This field is only used for Inspect and must be unspecified for Risk jobs. Columns are derived from the @Finding@ object. If appending to an existing table, any columns from the predefined schema that are missing will be added. No columns in the existing table will be deleted. If unspecified, then all available columns will be used for a new table or an (existing) table with no schema, and no changes will be made to an existing table that has a schema. Only for use with external storage.
newtype GooglePrivacyDlpV2OutputStorageConfig_OutputSchema = GooglePrivacyDlpV2OutputStorageConfig_OutputSchema { fromGooglePrivacyDlpV2OutputStorageConfig_OutputSchema :: Core.Text }
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

-- | Unused.
pattern GooglePrivacyDlpV2OutputStorageConfig_OutputSchema_OUTPUTSCHEMAUNSPECIFIED :: GooglePrivacyDlpV2OutputStorageConfig_OutputSchema
pattern GooglePrivacyDlpV2OutputStorageConfig_OutputSchema_OUTPUTSCHEMAUNSPECIFIED = GooglePrivacyDlpV2OutputStorageConfig_OutputSchema "OUTPUT_SCHEMA_UNSPECIFIED"

-- | Basic schema including only @info_type@, @quote@, @certainty@, and @timestamp@.
pattern GooglePrivacyDlpV2OutputStorageConfig_OutputSchema_BASICCOLUMNS :: GooglePrivacyDlpV2OutputStorageConfig_OutputSchema
pattern GooglePrivacyDlpV2OutputStorageConfig_OutputSchema_BASICCOLUMNS = GooglePrivacyDlpV2OutputStorageConfig_OutputSchema "BASIC_COLUMNS"

-- | Schema tailored to findings from scanning Google Cloud Storage.
pattern GooglePrivacyDlpV2OutputStorageConfig_OutputSchema_GCSCOLUMNS :: GooglePrivacyDlpV2OutputStorageConfig_OutputSchema
pattern GooglePrivacyDlpV2OutputStorageConfig_OutputSchema_GCSCOLUMNS = GooglePrivacyDlpV2OutputStorageConfig_OutputSchema "GCS_COLUMNS"

-- | Schema tailored to findings from scanning Google Datastore.
pattern GooglePrivacyDlpV2OutputStorageConfig_OutputSchema_DATASTORECOLUMNS :: GooglePrivacyDlpV2OutputStorageConfig_OutputSchema
pattern GooglePrivacyDlpV2OutputStorageConfig_OutputSchema_DATASTORECOLUMNS = GooglePrivacyDlpV2OutputStorageConfig_OutputSchema "DATASTORE_COLUMNS"

-- | Schema tailored to findings from scanning Google BigQuery.
pattern GooglePrivacyDlpV2OutputStorageConfig_OutputSchema_BIGQUERYCOLUMNS :: GooglePrivacyDlpV2OutputStorageConfig_OutputSchema
pattern GooglePrivacyDlpV2OutputStorageConfig_OutputSchema_BIGQUERYCOLUMNS = GooglePrivacyDlpV2OutputStorageConfig_OutputSchema "BIG_QUERY_COLUMNS"

-- | Schema containing all columns.
pattern GooglePrivacyDlpV2OutputStorageConfig_OutputSchema_ALLCOLUMNS :: GooglePrivacyDlpV2OutputStorageConfig_OutputSchema
pattern GooglePrivacyDlpV2OutputStorageConfig_OutputSchema_ALLCOLUMNS = GooglePrivacyDlpV2OutputStorageConfig_OutputSchema "ALL_COLUMNS"

{-# COMPLETE
  GooglePrivacyDlpV2OutputStorageConfig_OutputSchema_OUTPUTSCHEMAUNSPECIFIED,
  GooglePrivacyDlpV2OutputStorageConfig_OutputSchema_BASICCOLUMNS,
  GooglePrivacyDlpV2OutputStorageConfig_OutputSchema_GCSCOLUMNS,
  GooglePrivacyDlpV2OutputStorageConfig_OutputSchema_DATASTORECOLUMNS,
  GooglePrivacyDlpV2OutputStorageConfig_OutputSchema_BIGQUERYCOLUMNS,
  GooglePrivacyDlpV2OutputStorageConfig_OutputSchema_ALLCOLUMNS,
  GooglePrivacyDlpV2OutputStorageConfig_OutputSchema #-}

-- | Stored info type version state. Read-only, updated by the system during dictionary creation.
newtype GooglePrivacyDlpV2StoredInfoTypeVersion_State = GooglePrivacyDlpV2StoredInfoTypeVersion_State { fromGooglePrivacyDlpV2StoredInfoTypeVersion_State :: Core.Text }
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

-- | Unused
pattern GooglePrivacyDlpV2StoredInfoTypeVersion_State_STOREDINFOTYPESTATEUNSPECIFIED :: GooglePrivacyDlpV2StoredInfoTypeVersion_State
pattern GooglePrivacyDlpV2StoredInfoTypeVersion_State_STOREDINFOTYPESTATEUNSPECIFIED = GooglePrivacyDlpV2StoredInfoTypeVersion_State "STORED_INFO_TYPE_STATE_UNSPECIFIED"

-- | StoredInfoType version is being created.
pattern GooglePrivacyDlpV2StoredInfoTypeVersion_State_Pending :: GooglePrivacyDlpV2StoredInfoTypeVersion_State
pattern GooglePrivacyDlpV2StoredInfoTypeVersion_State_Pending = GooglePrivacyDlpV2StoredInfoTypeVersion_State "PENDING"

-- | StoredInfoType version is ready for use.
pattern GooglePrivacyDlpV2StoredInfoTypeVersion_State_Ready :: GooglePrivacyDlpV2StoredInfoTypeVersion_State
pattern GooglePrivacyDlpV2StoredInfoTypeVersion_State_Ready = GooglePrivacyDlpV2StoredInfoTypeVersion_State "READY"

-- | StoredInfoType creation failed. All relevant error messages are returned in the @StoredInfoTypeVersion@ message.
pattern GooglePrivacyDlpV2StoredInfoTypeVersion_State_Failed :: GooglePrivacyDlpV2StoredInfoTypeVersion_State
pattern GooglePrivacyDlpV2StoredInfoTypeVersion_State_Failed = GooglePrivacyDlpV2StoredInfoTypeVersion_State "FAILED"

-- | StoredInfoType is no longer valid because artifacts stored in user-controlled storage were modified. To fix an invalid StoredInfoType, use the @UpdateStoredInfoType@ method to create a new version.
pattern GooglePrivacyDlpV2StoredInfoTypeVersion_State_Invalid :: GooglePrivacyDlpV2StoredInfoTypeVersion_State
pattern GooglePrivacyDlpV2StoredInfoTypeVersion_State_Invalid = GooglePrivacyDlpV2StoredInfoTypeVersion_State "INVALID"

{-# COMPLETE
  GooglePrivacyDlpV2StoredInfoTypeVersion_State_STOREDINFOTYPESTATEUNSPECIFIED,
  GooglePrivacyDlpV2StoredInfoTypeVersion_State_Pending,
  GooglePrivacyDlpV2StoredInfoTypeVersion_State_Ready,
  GooglePrivacyDlpV2StoredInfoTypeVersion_State_Failed,
  GooglePrivacyDlpV2StoredInfoTypeVersion_State_Invalid,
  GooglePrivacyDlpV2StoredInfoTypeVersion_State #-}

-- | Outcome of the transformation.
newtype GooglePrivacyDlpV2SummaryResult_Code = GooglePrivacyDlpV2SummaryResult_Code { fromGooglePrivacyDlpV2SummaryResult_Code :: Core.Text }
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

-- | Unused
pattern GooglePrivacyDlpV2SummaryResult_Code_TRANSFORMATIONRESULTCODEUNSPECIFIED :: GooglePrivacyDlpV2SummaryResult_Code
pattern GooglePrivacyDlpV2SummaryResult_Code_TRANSFORMATIONRESULTCODEUNSPECIFIED = GooglePrivacyDlpV2SummaryResult_Code "TRANSFORMATION_RESULT_CODE_UNSPECIFIED"

-- | Transformation completed without an error.
pattern GooglePrivacyDlpV2SummaryResult_Code_Success :: GooglePrivacyDlpV2SummaryResult_Code
pattern GooglePrivacyDlpV2SummaryResult_Code_Success = GooglePrivacyDlpV2SummaryResult_Code "SUCCESS"

-- | Transformation had an error.
pattern GooglePrivacyDlpV2SummaryResult_Code_Error' :: GooglePrivacyDlpV2SummaryResult_Code
pattern GooglePrivacyDlpV2SummaryResult_Code_Error' = GooglePrivacyDlpV2SummaryResult_Code "ERROR"

{-# COMPLETE
  GooglePrivacyDlpV2SummaryResult_Code_TRANSFORMATIONRESULTCODEUNSPECIFIED,
  GooglePrivacyDlpV2SummaryResult_Code_Success,
  GooglePrivacyDlpV2SummaryResult_Code_Error',
  GooglePrivacyDlpV2SummaryResult_Code #-}

-- | The part of the time to keep.
newtype GooglePrivacyDlpV2TimePartConfig_PartToExtract = GooglePrivacyDlpV2TimePartConfig_PartToExtract { fromGooglePrivacyDlpV2TimePartConfig_PartToExtract :: Core.Text }
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

-- | Unused
pattern GooglePrivacyDlpV2TimePartConfig_PartToExtract_TIMEPARTUNSPECIFIED :: GooglePrivacyDlpV2TimePartConfig_PartToExtract
pattern GooglePrivacyDlpV2TimePartConfig_PartToExtract_TIMEPARTUNSPECIFIED = GooglePrivacyDlpV2TimePartConfig_PartToExtract "TIME_PART_UNSPECIFIED"

-- | [0-9999]
pattern GooglePrivacyDlpV2TimePartConfig_PartToExtract_Year :: GooglePrivacyDlpV2TimePartConfig_PartToExtract
pattern GooglePrivacyDlpV2TimePartConfig_PartToExtract_Year = GooglePrivacyDlpV2TimePartConfig_PartToExtract "YEAR"

-- | [1-12]
pattern GooglePrivacyDlpV2TimePartConfig_PartToExtract_Month :: GooglePrivacyDlpV2TimePartConfig_PartToExtract
pattern GooglePrivacyDlpV2TimePartConfig_PartToExtract_Month = GooglePrivacyDlpV2TimePartConfig_PartToExtract "MONTH"

-- | [1-31]
pattern GooglePrivacyDlpV2TimePartConfig_PartToExtract_DAYOFMONTH :: GooglePrivacyDlpV2TimePartConfig_PartToExtract
pattern GooglePrivacyDlpV2TimePartConfig_PartToExtract_DAYOFMONTH = GooglePrivacyDlpV2TimePartConfig_PartToExtract "DAY_OF_MONTH"

-- | [1-7]
pattern GooglePrivacyDlpV2TimePartConfig_PartToExtract_DAYOFWEEK :: GooglePrivacyDlpV2TimePartConfig_PartToExtract
pattern GooglePrivacyDlpV2TimePartConfig_PartToExtract_DAYOFWEEK = GooglePrivacyDlpV2TimePartConfig_PartToExtract "DAY_OF_WEEK"

-- | [1-53]
pattern GooglePrivacyDlpV2TimePartConfig_PartToExtract_WEEKOFYEAR :: GooglePrivacyDlpV2TimePartConfig_PartToExtract
pattern GooglePrivacyDlpV2TimePartConfig_PartToExtract_WEEKOFYEAR = GooglePrivacyDlpV2TimePartConfig_PartToExtract "WEEK_OF_YEAR"

-- | [0-23]
pattern GooglePrivacyDlpV2TimePartConfig_PartToExtract_HOUROFDAY :: GooglePrivacyDlpV2TimePartConfig_PartToExtract
pattern GooglePrivacyDlpV2TimePartConfig_PartToExtract_HOUROFDAY = GooglePrivacyDlpV2TimePartConfig_PartToExtract "HOUR_OF_DAY"

{-# COMPLETE
  GooglePrivacyDlpV2TimePartConfig_PartToExtract_TIMEPARTUNSPECIFIED,
  GooglePrivacyDlpV2TimePartConfig_PartToExtract_Year,
  GooglePrivacyDlpV2TimePartConfig_PartToExtract_Month,
  GooglePrivacyDlpV2TimePartConfig_PartToExtract_DAYOFMONTH,
  GooglePrivacyDlpV2TimePartConfig_PartToExtract_DAYOFWEEK,
  GooglePrivacyDlpV2TimePartConfig_PartToExtract_WEEKOFYEAR,
  GooglePrivacyDlpV2TimePartConfig_PartToExtract_HOUROFDAY,
  GooglePrivacyDlpV2TimePartConfig_PartToExtract #-}

-- | day of week
newtype GooglePrivacyDlpV2Value_DayOfWeekValue = GooglePrivacyDlpV2Value_DayOfWeekValue { fromGooglePrivacyDlpV2Value_DayOfWeekValue :: Core.Text }
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

-- | The day of the week is unspecified.
pattern GooglePrivacyDlpV2Value_DayOfWeekValue_DAYOFWEEKUNSPECIFIED :: GooglePrivacyDlpV2Value_DayOfWeekValue
pattern GooglePrivacyDlpV2Value_DayOfWeekValue_DAYOFWEEKUNSPECIFIED = GooglePrivacyDlpV2Value_DayOfWeekValue "DAY_OF_WEEK_UNSPECIFIED"

-- | Monday
pattern GooglePrivacyDlpV2Value_DayOfWeekValue_Monday :: GooglePrivacyDlpV2Value_DayOfWeekValue
pattern GooglePrivacyDlpV2Value_DayOfWeekValue_Monday = GooglePrivacyDlpV2Value_DayOfWeekValue "MONDAY"

-- | Tuesday
pattern GooglePrivacyDlpV2Value_DayOfWeekValue_Tuesday :: GooglePrivacyDlpV2Value_DayOfWeekValue
pattern GooglePrivacyDlpV2Value_DayOfWeekValue_Tuesday = GooglePrivacyDlpV2Value_DayOfWeekValue "TUESDAY"

-- | Wednesday
pattern GooglePrivacyDlpV2Value_DayOfWeekValue_Wednesday :: GooglePrivacyDlpV2Value_DayOfWeekValue
pattern GooglePrivacyDlpV2Value_DayOfWeekValue_Wednesday = GooglePrivacyDlpV2Value_DayOfWeekValue "WEDNESDAY"

-- | Thursday
pattern GooglePrivacyDlpV2Value_DayOfWeekValue_Thursday :: GooglePrivacyDlpV2Value_DayOfWeekValue
pattern GooglePrivacyDlpV2Value_DayOfWeekValue_Thursday = GooglePrivacyDlpV2Value_DayOfWeekValue "THURSDAY"

-- | Friday
pattern GooglePrivacyDlpV2Value_DayOfWeekValue_Friday :: GooglePrivacyDlpV2Value_DayOfWeekValue
pattern GooglePrivacyDlpV2Value_DayOfWeekValue_Friday = GooglePrivacyDlpV2Value_DayOfWeekValue "FRIDAY"

-- | Saturday
pattern GooglePrivacyDlpV2Value_DayOfWeekValue_Saturday :: GooglePrivacyDlpV2Value_DayOfWeekValue
pattern GooglePrivacyDlpV2Value_DayOfWeekValue_Saturday = GooglePrivacyDlpV2Value_DayOfWeekValue "SATURDAY"

-- | Sunday
pattern GooglePrivacyDlpV2Value_DayOfWeekValue_Sunday :: GooglePrivacyDlpV2Value_DayOfWeekValue
pattern GooglePrivacyDlpV2Value_DayOfWeekValue_Sunday = GooglePrivacyDlpV2Value_DayOfWeekValue "SUNDAY"

{-# COMPLETE
  GooglePrivacyDlpV2Value_DayOfWeekValue_DAYOFWEEKUNSPECIFIED,
  GooglePrivacyDlpV2Value_DayOfWeekValue_Monday,
  GooglePrivacyDlpV2Value_DayOfWeekValue_Tuesday,
  GooglePrivacyDlpV2Value_DayOfWeekValue_Wednesday,
  GooglePrivacyDlpV2Value_DayOfWeekValue_Thursday,
  GooglePrivacyDlpV2Value_DayOfWeekValue_Friday,
  GooglePrivacyDlpV2Value_DayOfWeekValue_Saturday,
  GooglePrivacyDlpV2Value_DayOfWeekValue_Sunday,
  GooglePrivacyDlpV2Value_DayOfWeekValue #-}

-- | The type of job. Defaults to @DlpJobType.INSPECT@
newtype OrganizationsLocationsDlpJobsListType = OrganizationsLocationsDlpJobsListType { fromOrganizationsLocationsDlpJobsListType :: Core.Text }
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

-- | Defaults to INSPECT_JOB.
pattern OrganizationsLocationsDlpJobsListType_DLPJOBTYPEUNSPECIFIED :: OrganizationsLocationsDlpJobsListType
pattern OrganizationsLocationsDlpJobsListType_DLPJOBTYPEUNSPECIFIED = OrganizationsLocationsDlpJobsListType "DLP_JOB_TYPE_UNSPECIFIED"

-- | The job inspected Google Cloud for sensitive data.
pattern OrganizationsLocationsDlpJobsListType_INSPECTJOB :: OrganizationsLocationsDlpJobsListType
pattern OrganizationsLocationsDlpJobsListType_INSPECTJOB = OrganizationsLocationsDlpJobsListType "INSPECT_JOB"

-- | The job executed a Risk Analysis computation.
pattern OrganizationsLocationsDlpJobsListType_RISKANALYSISJOB :: OrganizationsLocationsDlpJobsListType
pattern OrganizationsLocationsDlpJobsListType_RISKANALYSISJOB = OrganizationsLocationsDlpJobsListType "RISK_ANALYSIS_JOB"

{-# COMPLETE
  OrganizationsLocationsDlpJobsListType_DLPJOBTYPEUNSPECIFIED,
  OrganizationsLocationsDlpJobsListType_INSPECTJOB,
  OrganizationsLocationsDlpJobsListType_RISKANALYSISJOB,
  OrganizationsLocationsDlpJobsListType #-}

-- | The type of jobs. Will use @DlpJobType.INSPECT@ if not set.
newtype OrganizationsLocationsJobTriggersListType = OrganizationsLocationsJobTriggersListType { fromOrganizationsLocationsJobTriggersListType :: Core.Text }
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

-- | Defaults to INSPECT_JOB.
pattern OrganizationsLocationsJobTriggersListType_DLPJOBTYPEUNSPECIFIED :: OrganizationsLocationsJobTriggersListType
pattern OrganizationsLocationsJobTriggersListType_DLPJOBTYPEUNSPECIFIED = OrganizationsLocationsJobTriggersListType "DLP_JOB_TYPE_UNSPECIFIED"

-- | The job inspected Google Cloud for sensitive data.
pattern OrganizationsLocationsJobTriggersListType_INSPECTJOB :: OrganizationsLocationsJobTriggersListType
pattern OrganizationsLocationsJobTriggersListType_INSPECTJOB = OrganizationsLocationsJobTriggersListType "INSPECT_JOB"

-- | The job executed a Risk Analysis computation.
pattern OrganizationsLocationsJobTriggersListType_RISKANALYSISJOB :: OrganizationsLocationsJobTriggersListType
pattern OrganizationsLocationsJobTriggersListType_RISKANALYSISJOB = OrganizationsLocationsJobTriggersListType "RISK_ANALYSIS_JOB"

{-# COMPLETE
  OrganizationsLocationsJobTriggersListType_DLPJOBTYPEUNSPECIFIED,
  OrganizationsLocationsJobTriggersListType_INSPECTJOB,
  OrganizationsLocationsJobTriggersListType_RISKANALYSISJOB,
  OrganizationsLocationsJobTriggersListType #-}

-- | The type of job. Defaults to @DlpJobType.INSPECT@
newtype ProjectsDlpJobsListType = ProjectsDlpJobsListType { fromProjectsDlpJobsListType :: Core.Text }
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

-- | Defaults to INSPECT_JOB.
pattern ProjectsDlpJobsListType_DLPJOBTYPEUNSPECIFIED :: ProjectsDlpJobsListType
pattern ProjectsDlpJobsListType_DLPJOBTYPEUNSPECIFIED = ProjectsDlpJobsListType "DLP_JOB_TYPE_UNSPECIFIED"

-- | The job inspected Google Cloud for sensitive data.
pattern ProjectsDlpJobsListType_INSPECTJOB :: ProjectsDlpJobsListType
pattern ProjectsDlpJobsListType_INSPECTJOB = ProjectsDlpJobsListType "INSPECT_JOB"

-- | The job executed a Risk Analysis computation.
pattern ProjectsDlpJobsListType_RISKANALYSISJOB :: ProjectsDlpJobsListType
pattern ProjectsDlpJobsListType_RISKANALYSISJOB = ProjectsDlpJobsListType "RISK_ANALYSIS_JOB"

{-# COMPLETE
  ProjectsDlpJobsListType_DLPJOBTYPEUNSPECIFIED,
  ProjectsDlpJobsListType_INSPECTJOB,
  ProjectsDlpJobsListType_RISKANALYSISJOB,
  ProjectsDlpJobsListType #-}

-- | The type of jobs. Will use @DlpJobType.INSPECT@ if not set.
newtype ProjectsJobTriggersListType = ProjectsJobTriggersListType { fromProjectsJobTriggersListType :: Core.Text }
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

-- | Defaults to INSPECT_JOB.
pattern ProjectsJobTriggersListType_DLPJOBTYPEUNSPECIFIED :: ProjectsJobTriggersListType
pattern ProjectsJobTriggersListType_DLPJOBTYPEUNSPECIFIED = ProjectsJobTriggersListType "DLP_JOB_TYPE_UNSPECIFIED"

-- | The job inspected Google Cloud for sensitive data.
pattern ProjectsJobTriggersListType_INSPECTJOB :: ProjectsJobTriggersListType
pattern ProjectsJobTriggersListType_INSPECTJOB = ProjectsJobTriggersListType "INSPECT_JOB"

-- | The job executed a Risk Analysis computation.
pattern ProjectsJobTriggersListType_RISKANALYSISJOB :: ProjectsJobTriggersListType
pattern ProjectsJobTriggersListType_RISKANALYSISJOB = ProjectsJobTriggersListType "RISK_ANALYSIS_JOB"

{-# COMPLETE
  ProjectsJobTriggersListType_DLPJOBTYPEUNSPECIFIED,
  ProjectsJobTriggersListType_INSPECTJOB,
  ProjectsJobTriggersListType_RISKANALYSISJOB,
  ProjectsJobTriggersListType #-}

-- | The type of job. Defaults to @DlpJobType.INSPECT@
newtype ProjectsLocationsDlpJobsListType = ProjectsLocationsDlpJobsListType { fromProjectsLocationsDlpJobsListType :: Core.Text }
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

-- | Defaults to INSPECT_JOB.
pattern ProjectsLocationsDlpJobsListType_DLPJOBTYPEUNSPECIFIED :: ProjectsLocationsDlpJobsListType
pattern ProjectsLocationsDlpJobsListType_DLPJOBTYPEUNSPECIFIED = ProjectsLocationsDlpJobsListType "DLP_JOB_TYPE_UNSPECIFIED"

-- | The job inspected Google Cloud for sensitive data.
pattern ProjectsLocationsDlpJobsListType_INSPECTJOB :: ProjectsLocationsDlpJobsListType
pattern ProjectsLocationsDlpJobsListType_INSPECTJOB = ProjectsLocationsDlpJobsListType "INSPECT_JOB"

-- | The job executed a Risk Analysis computation.
pattern ProjectsLocationsDlpJobsListType_RISKANALYSISJOB :: ProjectsLocationsDlpJobsListType
pattern ProjectsLocationsDlpJobsListType_RISKANALYSISJOB = ProjectsLocationsDlpJobsListType "RISK_ANALYSIS_JOB"

{-# COMPLETE
  ProjectsLocationsDlpJobsListType_DLPJOBTYPEUNSPECIFIED,
  ProjectsLocationsDlpJobsListType_INSPECTJOB,
  ProjectsLocationsDlpJobsListType_RISKANALYSISJOB,
  ProjectsLocationsDlpJobsListType #-}

-- | The type of jobs. Will use @DlpJobType.INSPECT@ if not set.
newtype ProjectsLocationsJobTriggersListType = ProjectsLocationsJobTriggersListType { fromProjectsLocationsJobTriggersListType :: Core.Text }
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

-- | Defaults to INSPECT_JOB.
pattern ProjectsLocationsJobTriggersListType_DLPJOBTYPEUNSPECIFIED :: ProjectsLocationsJobTriggersListType
pattern ProjectsLocationsJobTriggersListType_DLPJOBTYPEUNSPECIFIED = ProjectsLocationsJobTriggersListType "DLP_JOB_TYPE_UNSPECIFIED"

-- | The job inspected Google Cloud for sensitive data.
pattern ProjectsLocationsJobTriggersListType_INSPECTJOB :: ProjectsLocationsJobTriggersListType
pattern ProjectsLocationsJobTriggersListType_INSPECTJOB = ProjectsLocationsJobTriggersListType "INSPECT_JOB"

-- | The job executed a Risk Analysis computation.
pattern ProjectsLocationsJobTriggersListType_RISKANALYSISJOB :: ProjectsLocationsJobTriggersListType
pattern ProjectsLocationsJobTriggersListType_RISKANALYSISJOB = ProjectsLocationsJobTriggersListType "RISK_ANALYSIS_JOB"

{-# COMPLETE
  ProjectsLocationsJobTriggersListType_DLPJOBTYPEUNSPECIFIED,
  ProjectsLocationsJobTriggersListType_INSPECTJOB,
  ProjectsLocationsJobTriggersListType_RISKANALYSISJOB,
  ProjectsLocationsJobTriggersListType #-}
