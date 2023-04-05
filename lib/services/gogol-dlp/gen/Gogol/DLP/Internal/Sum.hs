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
-- Module      : Gogol.DLP.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.DLP.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * GooglePrivacyDlpV2BigQueryOptions_SampleMethod
    GooglePrivacyDlpV2BigQueryOptions_SampleMethod
      ( GooglePrivacyDlpV2BigQueryOptions_SampleMethod_SAMPLEMETHODUNSPECIFIED,
        GooglePrivacyDlpV2BigQueryOptions_SampleMethod_Top,
        GooglePrivacyDlpV2BigQueryOptions_SampleMethod_RANDOMSTART,
        ..
      ),

    -- * GooglePrivacyDlpV2ByteContentItem_Type
    GooglePrivacyDlpV2ByteContentItem_Type
      ( GooglePrivacyDlpV2ByteContentItem_Type_BYTESTYPEUNSPECIFIED,
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
      ( GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore_COMMONCHARSTOIGNOREUNSPECIFIED,
        GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore_Numeric,
        GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore_ALPHAUPPERCASE,
        GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore_ALPHALOWERCASE,
        GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore_Punctuation,
        GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore_Whitespace,
        ..
      ),

    -- * GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem
    GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem
      ( GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_FILETYPEUNSPECIFIED,
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
      ( GooglePrivacyDlpV2CloudStorageOptions_SampleMethod_SAMPLEMETHODUNSPECIFIED,
        GooglePrivacyDlpV2CloudStorageOptions_SampleMethod_Top,
        GooglePrivacyDlpV2CloudStorageOptions_SampleMethod_RANDOMSTART,
        ..
      ),

    -- * GooglePrivacyDlpV2Condition_Operator
    GooglePrivacyDlpV2Condition_Operator
      ( GooglePrivacyDlpV2Condition_Operator_RELATIONALOPERATORUNSPECIFIED,
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
      ( GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet_FFXCOMMONNATIVEALPHABETUNSPECIFIED,
        GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet_Numeric,
        GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet_Hexadecimal,
        GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet_UPPERCASEALPHANUMERIC,
        GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet_ALPHANUMERIC,
        ..
      ),

    -- * GooglePrivacyDlpV2CustomInfoType_ExclusionType
    GooglePrivacyDlpV2CustomInfoType_ExclusionType
      ( GooglePrivacyDlpV2CustomInfoType_ExclusionType_EXCLUSIONTYPEUNSPECIFIED,
        GooglePrivacyDlpV2CustomInfoType_ExclusionType_EXCLUSIONTYPEEXCLUDE,
        ..
      ),

    -- * GooglePrivacyDlpV2CustomInfoType_Likelihood
    GooglePrivacyDlpV2CustomInfoType_Likelihood
      ( GooglePrivacyDlpV2CustomInfoType_Likelihood_LIKELIHOODUNSPECIFIED,
        GooglePrivacyDlpV2CustomInfoType_Likelihood_VERYUNLIKELY,
        GooglePrivacyDlpV2CustomInfoType_Likelihood_Unlikely,
        GooglePrivacyDlpV2CustomInfoType_Likelihood_Possible,
        GooglePrivacyDlpV2CustomInfoType_Likelihood_Likely,
        GooglePrivacyDlpV2CustomInfoType_Likelihood_VERYLIKELY,
        ..
      ),

    -- * GooglePrivacyDlpV2DataProfilePubSubMessage_Event
    GooglePrivacyDlpV2DataProfilePubSubMessage_Event
      ( GooglePrivacyDlpV2DataProfilePubSubMessage_Event_EVENTTYPEUNSPECIFIED,
        GooglePrivacyDlpV2DataProfilePubSubMessage_Event_NEWPROFILE,
        GooglePrivacyDlpV2DataProfilePubSubMessage_Event_CHANGEDPROFILE,
        GooglePrivacyDlpV2DataProfilePubSubMessage_Event_SCOREINCREASED,
        GooglePrivacyDlpV2DataProfilePubSubMessage_Event_ERRORCHANGED,
        ..
      ),

    -- * GooglePrivacyDlpV2DataRiskLevel_Score
    GooglePrivacyDlpV2DataRiskLevel_Score
      ( GooglePrivacyDlpV2DataRiskLevel_Score_RISKSCOREUNSPECIFIED,
        GooglePrivacyDlpV2DataRiskLevel_Score_RISKLOW,
        GooglePrivacyDlpV2DataRiskLevel_Score_RISKMODERATE,
        GooglePrivacyDlpV2DataRiskLevel_Score_RISKHIGH,
        ..
      ),

    -- * GooglePrivacyDlpV2DateTime_DayOfWeek
    GooglePrivacyDlpV2DateTime_DayOfWeek
      ( GooglePrivacyDlpV2DateTime_DayOfWeek_DAYOFWEEKUNSPECIFIED,
        GooglePrivacyDlpV2DateTime_DayOfWeek_Monday,
        GooglePrivacyDlpV2DateTime_DayOfWeek_Tuesday,
        GooglePrivacyDlpV2DateTime_DayOfWeek_Wednesday,
        GooglePrivacyDlpV2DateTime_DayOfWeek_Thursday,
        GooglePrivacyDlpV2DateTime_DayOfWeek_Friday,
        GooglePrivacyDlpV2DateTime_DayOfWeek_Saturday,
        GooglePrivacyDlpV2DateTime_DayOfWeek_Sunday,
        ..
      ),

    -- * GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem
    GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem
      ( GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_FILETYPEUNSPECIFIED,
        GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_BINARYFILE,
        GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_TEXTFILE,
        GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_Image,
        GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_Word,
        GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_Pdf,
        GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_Avro,
        GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_Csv,
        GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_Tsv,
        GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_Powerpoint,
        GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_Excel,
        ..
      ),

    -- * GooglePrivacyDlpV2DlpJob_State
    GooglePrivacyDlpV2DlpJob_State
      ( GooglePrivacyDlpV2DlpJob_State_JOBSTATEUNSPECIFIED,
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
      ( GooglePrivacyDlpV2DlpJob_Type_DLPJOBTYPEUNSPECIFIED,
        GooglePrivacyDlpV2DlpJob_Type_INSPECTJOB,
        GooglePrivacyDlpV2DlpJob_Type_RISKANALYSISJOB,
        ..
      ),

    -- * GooglePrivacyDlpV2ExclusionRule_MatchingType
    GooglePrivacyDlpV2ExclusionRule_MatchingType
      ( GooglePrivacyDlpV2ExclusionRule_MatchingType_MATCHINGTYPEUNSPECIFIED,
        GooglePrivacyDlpV2ExclusionRule_MatchingType_MATCHINGTYPEFULLMATCH,
        GooglePrivacyDlpV2ExclusionRule_MatchingType_MATCHINGTYPEPARTIALMATCH,
        GooglePrivacyDlpV2ExclusionRule_MatchingType_MATCHINGTYPEINVERSEMATCH,
        ..
      ),

    -- * GooglePrivacyDlpV2Expressions_LogicalOperator
    GooglePrivacyDlpV2Expressions_LogicalOperator
      ( GooglePrivacyDlpV2Expressions_LogicalOperator_LOGICALOPERATORUNSPECIFIED,
        GooglePrivacyDlpV2Expressions_LogicalOperator_And,
        ..
      ),

    -- * GooglePrivacyDlpV2Finding_Likelihood
    GooglePrivacyDlpV2Finding_Likelihood
      ( GooglePrivacyDlpV2Finding_Likelihood_LIKELIHOODUNSPECIFIED,
        GooglePrivacyDlpV2Finding_Likelihood_VERYUNLIKELY,
        GooglePrivacyDlpV2Finding_Likelihood_Unlikely,
        GooglePrivacyDlpV2Finding_Likelihood_Possible,
        GooglePrivacyDlpV2Finding_Likelihood_Likely,
        GooglePrivacyDlpV2Finding_Likelihood_VERYLIKELY,
        ..
      ),

    -- * GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory
    GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory
      ( GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory_INDUSTRYUNSPECIFIED,
        GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory_Finance,
        GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory_Health,
        GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory_Telecommunications,
        ..
      ),

    -- * GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
    GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
      ( GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_LOCATIONUNSPECIFIED,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Global,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Argentina,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Australia,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Belgium,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Brazil,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Canada,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Chile,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_China,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Colombia,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Croatia,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Denmark,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_France,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Finland,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Germany,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_HONGKONG,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_India,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Indonesia,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Ireland,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Israel,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Italy,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Japan,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Korea,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Mexico,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_NEWZEALAND,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_THENETHERLANDS,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Norway,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Paraguay,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Peru,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Poland,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Portugal,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Singapore,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_SOUTHAFRICA,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Spain,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Sweden,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Taiwan,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Thailand,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Turkey,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_UNITEDKINGDOM,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_UNITEDSTATES,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Uruguay,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Venezuela,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Internal,
        ..
      ),

    -- * GooglePrivacyDlpV2InfoTypeCategory_TypeCategory
    GooglePrivacyDlpV2InfoTypeCategory_TypeCategory
      ( GooglePrivacyDlpV2InfoTypeCategory_TypeCategory_TYPEUNSPECIFIED,
        GooglePrivacyDlpV2InfoTypeCategory_TypeCategory_Pii,
        GooglePrivacyDlpV2InfoTypeCategory_TypeCategory_Spii,
        GooglePrivacyDlpV2InfoTypeCategory_TypeCategory_Demographic,
        GooglePrivacyDlpV2InfoTypeCategory_TypeCategory_Credential,
        GooglePrivacyDlpV2InfoTypeCategory_TypeCategory_GOVERNMENTID,
        GooglePrivacyDlpV2InfoTypeCategory_TypeCategory_Document,
        GooglePrivacyDlpV2InfoTypeCategory_TypeCategory_CONTEXTUALINFORMATION,
        ..
      ),

    -- * GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem
    GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem
      ( GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem_ENUMTYPEUNSPECIFIED,
        GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem_Inspect,
        GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem_RISKANALYSIS,
        ..
      ),

    -- * GooglePrivacyDlpV2InspectConfig_ContentOptionsItem
    GooglePrivacyDlpV2InspectConfig_ContentOptionsItem
      ( GooglePrivacyDlpV2InspectConfig_ContentOptionsItem_CONTENTUNSPECIFIED,
        GooglePrivacyDlpV2InspectConfig_ContentOptionsItem_CONTENTTEXT,
        GooglePrivacyDlpV2InspectConfig_ContentOptionsItem_CONTENTIMAGE,
        ..
      ),

    -- * GooglePrivacyDlpV2InspectConfig_MinLikelihood
    GooglePrivacyDlpV2InspectConfig_MinLikelihood
      ( GooglePrivacyDlpV2InspectConfig_MinLikelihood_LIKELIHOODUNSPECIFIED,
        GooglePrivacyDlpV2InspectConfig_MinLikelihood_VERYUNLIKELY,
        GooglePrivacyDlpV2InspectConfig_MinLikelihood_Unlikely,
        GooglePrivacyDlpV2InspectConfig_MinLikelihood_Possible,
        GooglePrivacyDlpV2InspectConfig_MinLikelihood_Likely,
        GooglePrivacyDlpV2InspectConfig_MinLikelihood_VERYLIKELY,
        ..
      ),

    -- * GooglePrivacyDlpV2JobTrigger_Status
    GooglePrivacyDlpV2JobTrigger_Status
      ( GooglePrivacyDlpV2JobTrigger_Status_STATUSUNSPECIFIED,
        GooglePrivacyDlpV2JobTrigger_Status_Healthy,
        GooglePrivacyDlpV2JobTrigger_Status_Paused,
        GooglePrivacyDlpV2JobTrigger_Status_Cancelled,
        ..
      ),

    -- * GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood
    GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood
      ( GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_LIKELIHOODUNSPECIFIED,
        GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_VERYUNLIKELY,
        GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_Unlikely,
        GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_Possible,
        GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_Likely,
        GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_VERYLIKELY,
        ..
      ),

    -- * GooglePrivacyDlpV2MetadataLocation_Type
    GooglePrivacyDlpV2MetadataLocation_Type
      ( GooglePrivacyDlpV2MetadataLocation_Type_METADATATYPEUNSPECIFIED,
        GooglePrivacyDlpV2MetadataLocation_Type_STORAGEMETADATA,
        ..
      ),

    -- * GooglePrivacyDlpV2OutputStorageConfig_OutputSchema
    GooglePrivacyDlpV2OutputStorageConfig_OutputSchema
      ( GooglePrivacyDlpV2OutputStorageConfig_OutputSchema_OUTPUTSCHEMAUNSPECIFIED,
        GooglePrivacyDlpV2OutputStorageConfig_OutputSchema_BASICCOLUMNS,
        GooglePrivacyDlpV2OutputStorageConfig_OutputSchema_GCSCOLUMNS,
        GooglePrivacyDlpV2OutputStorageConfig_OutputSchema_DATASTORECOLUMNS,
        GooglePrivacyDlpV2OutputStorageConfig_OutputSchema_BIGQUERYCOLUMNS,
        GooglePrivacyDlpV2OutputStorageConfig_OutputSchema_ALLCOLUMNS,
        ..
      ),

    -- * GooglePrivacyDlpV2PubSubCondition_MinimumRiskScore
    GooglePrivacyDlpV2PubSubCondition_MinimumRiskScore
      ( GooglePrivacyDlpV2PubSubCondition_MinimumRiskScore_PROFILESCOREBUCKETUNSPECIFIED,
        GooglePrivacyDlpV2PubSubCondition_MinimumRiskScore_High,
        GooglePrivacyDlpV2PubSubCondition_MinimumRiskScore_MEDIUMORHIGH,
        ..
      ),

    -- * GooglePrivacyDlpV2PubSubCondition_MinimumSensitivityScore
    GooglePrivacyDlpV2PubSubCondition_MinimumSensitivityScore
      ( GooglePrivacyDlpV2PubSubCondition_MinimumSensitivityScore_PROFILESCOREBUCKETUNSPECIFIED,
        GooglePrivacyDlpV2PubSubCondition_MinimumSensitivityScore_High,
        GooglePrivacyDlpV2PubSubCondition_MinimumSensitivityScore_MEDIUMORHIGH,
        ..
      ),

    -- * GooglePrivacyDlpV2PubSubExpressions_LogicalOperator
    GooglePrivacyDlpV2PubSubExpressions_LogicalOperator
      ( GooglePrivacyDlpV2PubSubExpressions_LogicalOperator_LOGICALOPERATORUNSPECIFIED,
        GooglePrivacyDlpV2PubSubExpressions_LogicalOperator_OR,
        GooglePrivacyDlpV2PubSubExpressions_LogicalOperator_And,
        ..
      ),

    -- * GooglePrivacyDlpV2PubSubNotification_DetailOfMessage
    GooglePrivacyDlpV2PubSubNotification_DetailOfMessage
      ( GooglePrivacyDlpV2PubSubNotification_DetailOfMessage_DETAILLEVELUNSPECIFIED,
        GooglePrivacyDlpV2PubSubNotification_DetailOfMessage_TABLEPROFILE,
        GooglePrivacyDlpV2PubSubNotification_DetailOfMessage_RESOURCENAME,
        ..
      ),

    -- * GooglePrivacyDlpV2PubSubNotification_Event
    GooglePrivacyDlpV2PubSubNotification_Event
      ( GooglePrivacyDlpV2PubSubNotification_Event_EVENTTYPEUNSPECIFIED,
        GooglePrivacyDlpV2PubSubNotification_Event_NEWPROFILE,
        GooglePrivacyDlpV2PubSubNotification_Event_CHANGEDPROFILE,
        GooglePrivacyDlpV2PubSubNotification_Event_SCOREINCREASED,
        GooglePrivacyDlpV2PubSubNotification_Event_ERRORCHANGED,
        ..
      ),

    -- * GooglePrivacyDlpV2SensitivityScore_Score
    GooglePrivacyDlpV2SensitivityScore_Score
      ( GooglePrivacyDlpV2SensitivityScore_Score_SENSITIVITYSCOREUNSPECIFIED,
        GooglePrivacyDlpV2SensitivityScore_Score_SENSITIVITYLOW,
        GooglePrivacyDlpV2SensitivityScore_Score_SENSITIVITYMODERATE,
        GooglePrivacyDlpV2SensitivityScore_Score_SENSITIVITYHIGH,
        ..
      ),

    -- * GooglePrivacyDlpV2StoredInfoTypeVersion_State
    GooglePrivacyDlpV2StoredInfoTypeVersion_State
      ( GooglePrivacyDlpV2StoredInfoTypeVersion_State_STOREDINFOTYPESTATEUNSPECIFIED,
        GooglePrivacyDlpV2StoredInfoTypeVersion_State_Pending,
        GooglePrivacyDlpV2StoredInfoTypeVersion_State_Ready,
        GooglePrivacyDlpV2StoredInfoTypeVersion_State_Failed,
        GooglePrivacyDlpV2StoredInfoTypeVersion_State_Invalid,
        ..
      ),

    -- * GooglePrivacyDlpV2SummaryResult_Code
    GooglePrivacyDlpV2SummaryResult_Code
      ( GooglePrivacyDlpV2SummaryResult_Code_TRANSFORMATIONRESULTCODEUNSPECIFIED,
        GooglePrivacyDlpV2SummaryResult_Code_Success,
        GooglePrivacyDlpV2SummaryResult_Code_Error',
        ..
      ),

    -- * GooglePrivacyDlpV2TableDataProfile_EncryptionStatus
    GooglePrivacyDlpV2TableDataProfile_EncryptionStatus
      ( GooglePrivacyDlpV2TableDataProfile_EncryptionStatus_ENCRYPTIONSTATUSUNSPECIFIED,
        GooglePrivacyDlpV2TableDataProfile_EncryptionStatus_ENCRYPTIONGOOGLEMANAGED,
        GooglePrivacyDlpV2TableDataProfile_EncryptionStatus_ENCRYPTIONCUSTOMERMANAGED,
        ..
      ),

    -- * GooglePrivacyDlpV2TableDataProfile_ResourceVisibility
    GooglePrivacyDlpV2TableDataProfile_ResourceVisibility
      ( GooglePrivacyDlpV2TableDataProfile_ResourceVisibility_RESOURCEVISIBILITYUNSPECIFIED,
        GooglePrivacyDlpV2TableDataProfile_ResourceVisibility_RESOURCEVISIBILITYPUBLIC,
        GooglePrivacyDlpV2TableDataProfile_ResourceVisibility_RESOURCEVISIBILITYRESTRICTED,
        ..
      ),

    -- * GooglePrivacyDlpV2TableDataProfile_State
    GooglePrivacyDlpV2TableDataProfile_State
      ( GooglePrivacyDlpV2TableDataProfile_State_STATEUNSPECIFIED,
        GooglePrivacyDlpV2TableDataProfile_State_Running,
        GooglePrivacyDlpV2TableDataProfile_State_Done,
        ..
      ),

    -- * GooglePrivacyDlpV2TimePartConfig_PartToExtract
    GooglePrivacyDlpV2TimePartConfig_PartToExtract
      ( GooglePrivacyDlpV2TimePartConfig_PartToExtract_TIMEPARTUNSPECIFIED,
        GooglePrivacyDlpV2TimePartConfig_PartToExtract_Year,
        GooglePrivacyDlpV2TimePartConfig_PartToExtract_Month,
        GooglePrivacyDlpV2TimePartConfig_PartToExtract_DAYOFMONTH,
        GooglePrivacyDlpV2TimePartConfig_PartToExtract_DAYOFWEEK,
        GooglePrivacyDlpV2TimePartConfig_PartToExtract_WEEKOFYEAR,
        GooglePrivacyDlpV2TimePartConfig_PartToExtract_HOUROFDAY,
        ..
      ),

    -- * GooglePrivacyDlpV2TransformationDescription_Type
    GooglePrivacyDlpV2TransformationDescription_Type
      ( GooglePrivacyDlpV2TransformationDescription_Type_TRANSFORMATIONTYPEUNSPECIFIED,
        GooglePrivacyDlpV2TransformationDescription_Type_RECORDSUPPRESSION,
        GooglePrivacyDlpV2TransformationDescription_Type_REPLACEVALUE,
        GooglePrivacyDlpV2TransformationDescription_Type_REPLACEDICTIONARY,
        GooglePrivacyDlpV2TransformationDescription_Type_Redact,
        GooglePrivacyDlpV2TransformationDescription_Type_CHARACTERMASK,
        GooglePrivacyDlpV2TransformationDescription_Type_CRYPTOREPLACEFFXFPE,
        GooglePrivacyDlpV2TransformationDescription_Type_FIXEDSIZEBUCKETING,
        GooglePrivacyDlpV2TransformationDescription_Type_Bucketing,
        GooglePrivacyDlpV2TransformationDescription_Type_REPLACEWITHINFOTYPE,
        GooglePrivacyDlpV2TransformationDescription_Type_TIMEPART,
        GooglePrivacyDlpV2TransformationDescription_Type_CRYPTOHASH,
        GooglePrivacyDlpV2TransformationDescription_Type_DATESHIFT,
        GooglePrivacyDlpV2TransformationDescription_Type_CRYPTODETERMINISTICCONFIG,
        GooglePrivacyDlpV2TransformationDescription_Type_REDACTIMAGE,
        ..
      ),

    -- * GooglePrivacyDlpV2TransformationLocation_ContainerType
    GooglePrivacyDlpV2TransformationLocation_ContainerType
      ( GooglePrivacyDlpV2TransformationLocation_ContainerType_TRANSFORMUNKNOWNCONTAINER,
        GooglePrivacyDlpV2TransformationLocation_ContainerType_TRANSFORMBODY,
        GooglePrivacyDlpV2TransformationLocation_ContainerType_TRANSFORMMETADATA,
        GooglePrivacyDlpV2TransformationLocation_ContainerType_TRANSFORMTABLE,
        ..
      ),

    -- * GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType
    GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType
      ( GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType_STATETYPEUNSPECIFIED,
        GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType_INVALIDTRANSFORM,
        GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType_BIGQUERYMAXROWSIZEEXCEEDED,
        GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType_METADATAUNRETRIEVABLE,
        GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType_Success,
        ..
      ),

    -- * GooglePrivacyDlpV2Value_DayOfWeekValue
    GooglePrivacyDlpV2Value_DayOfWeekValue
      ( GooglePrivacyDlpV2Value_DayOfWeekValue_DAYOFWEEKUNSPECIFIED,
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
      ( OrganizationsLocationsDlpJobsListType_DLPJOBTYPEUNSPECIFIED,
        OrganizationsLocationsDlpJobsListType_INSPECTJOB,
        OrganizationsLocationsDlpJobsListType_RISKANALYSISJOB,
        ..
      ),

    -- * OrganizationsLocationsJobTriggersListType
    OrganizationsLocationsJobTriggersListType
      ( OrganizationsLocationsJobTriggersListType_DLPJOBTYPEUNSPECIFIED,
        OrganizationsLocationsJobTriggersListType_INSPECTJOB,
        OrganizationsLocationsJobTriggersListType_RISKANALYSISJOB,
        ..
      ),

    -- * ProjectsDlpJobsListType
    ProjectsDlpJobsListType
      ( ProjectsDlpJobsListType_DLPJOBTYPEUNSPECIFIED,
        ProjectsDlpJobsListType_INSPECTJOB,
        ProjectsDlpJobsListType_RISKANALYSISJOB,
        ..
      ),

    -- * ProjectsJobTriggersListType
    ProjectsJobTriggersListType
      ( ProjectsJobTriggersListType_DLPJOBTYPEUNSPECIFIED,
        ProjectsJobTriggersListType_INSPECTJOB,
        ProjectsJobTriggersListType_RISKANALYSISJOB,
        ..
      ),

    -- * ProjectsLocationsDlpJobsListType
    ProjectsLocationsDlpJobsListType
      ( ProjectsLocationsDlpJobsListType_DLPJOBTYPEUNSPECIFIED,
        ProjectsLocationsDlpJobsListType_INSPECTJOB,
        ProjectsLocationsDlpJobsListType_RISKANALYSISJOB,
        ..
      ),

    -- * ProjectsLocationsJobTriggersListType
    ProjectsLocationsJobTriggersListType
      ( ProjectsLocationsJobTriggersListType_DLPJOBTYPEUNSPECIFIED,
        ProjectsLocationsJobTriggersListType_INSPECTJOB,
        ProjectsLocationsJobTriggersListType_RISKANALYSISJOB,
        ..
      ),
  )
where

import qualified Gogol.Prelude as Core

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

newtype GooglePrivacyDlpV2BigQueryOptions_SampleMethod = GooglePrivacyDlpV2BigQueryOptions_SampleMethod {fromGooglePrivacyDlpV2BigQueryOptions_SampleMethod :: Core.Text}
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
  GooglePrivacyDlpV2BigQueryOptions_SampleMethod
  #-}

-- | The type of data stored in the bytes string. Default will be TEXT_UTF8.
newtype GooglePrivacyDlpV2ByteContentItem_Type = GooglePrivacyDlpV2ByteContentItem_Type {fromGooglePrivacyDlpV2ByteContentItem_Type :: Core.Text}
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

-- | pptx, pptm, potx, potm, pot
pattern GooglePrivacyDlpV2ByteContentItem_Type_POWERPOINTDOCUMENT :: GooglePrivacyDlpV2ByteContentItem_Type
pattern GooglePrivacyDlpV2ByteContentItem_Type_POWERPOINTDOCUMENT = GooglePrivacyDlpV2ByteContentItem_Type "POWERPOINT_DOCUMENT"

-- | xlsx, xlsm, xltx, xltm
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
  GooglePrivacyDlpV2ByteContentItem_Type
  #-}

-- | Common characters to not transform when masking. Useful to avoid removing punctuation.
newtype GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore = GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore {fromGooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore :: Core.Text}
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
  GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore
  #-}

newtype GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem = GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem {fromGooglePrivacyDlpV2CloudStorageOptions_FileTypesItem :: Core.Text}
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
  GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem
  #-}

newtype GooglePrivacyDlpV2CloudStorageOptions_SampleMethod = GooglePrivacyDlpV2CloudStorageOptions_SampleMethod {fromGooglePrivacyDlpV2CloudStorageOptions_SampleMethod :: Core.Text}
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
  GooglePrivacyDlpV2CloudStorageOptions_SampleMethod
  #-}

-- | Required. Operator used to compare the field or infoType to the value.
newtype GooglePrivacyDlpV2Condition_Operator = GooglePrivacyDlpV2Condition_Operator {fromGooglePrivacyDlpV2Condition_Operator :: Core.Text}
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
  GooglePrivacyDlpV2Condition_Operator
  #-}

-- | Common alphabets.
newtype GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet = GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet {fromGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet :: Core.Text}
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
  GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet
  #-}

-- | If set to EXCLUSION/TYPE/EXCLUDE this infoType will not cause a finding to be returned. It still can be used for rules matching.
newtype GooglePrivacyDlpV2CustomInfoType_ExclusionType = GooglePrivacyDlpV2CustomInfoType_ExclusionType {fromGooglePrivacyDlpV2CustomInfoType_ExclusionType :: Core.Text}
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

-- | A finding of this custom info type will not be excluded from results.
pattern GooglePrivacyDlpV2CustomInfoType_ExclusionType_EXCLUSIONTYPEUNSPECIFIED :: GooglePrivacyDlpV2CustomInfoType_ExclusionType
pattern GooglePrivacyDlpV2CustomInfoType_ExclusionType_EXCLUSIONTYPEUNSPECIFIED = GooglePrivacyDlpV2CustomInfoType_ExclusionType "EXCLUSION_TYPE_UNSPECIFIED"

-- | A finding of this custom info type will be excluded from final results, but can still affect rule execution.
pattern GooglePrivacyDlpV2CustomInfoType_ExclusionType_EXCLUSIONTYPEEXCLUDE :: GooglePrivacyDlpV2CustomInfoType_ExclusionType
pattern GooglePrivacyDlpV2CustomInfoType_ExclusionType_EXCLUSIONTYPEEXCLUDE = GooglePrivacyDlpV2CustomInfoType_ExclusionType "EXCLUSION_TYPE_EXCLUDE"

{-# COMPLETE
  GooglePrivacyDlpV2CustomInfoType_ExclusionType_EXCLUSIONTYPEUNSPECIFIED,
  GooglePrivacyDlpV2CustomInfoType_ExclusionType_EXCLUSIONTYPEEXCLUDE,
  GooglePrivacyDlpV2CustomInfoType_ExclusionType
  #-}

-- | Likelihood to return for this CustomInfoType. This base value can be altered by a detection rule if the finding meets the criteria specified by the rule. Defaults to @VERY_LIKELY@ if not specified.
newtype GooglePrivacyDlpV2CustomInfoType_Likelihood = GooglePrivacyDlpV2CustomInfoType_Likelihood {fromGooglePrivacyDlpV2CustomInfoType_Likelihood :: Core.Text}
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

-- | Default value; same as POSSIBLE.
pattern GooglePrivacyDlpV2CustomInfoType_Likelihood_LIKELIHOODUNSPECIFIED :: GooglePrivacyDlpV2CustomInfoType_Likelihood
pattern GooglePrivacyDlpV2CustomInfoType_Likelihood_LIKELIHOODUNSPECIFIED = GooglePrivacyDlpV2CustomInfoType_Likelihood "LIKELIHOOD_UNSPECIFIED"

-- | Highest chance of a false positive.
pattern GooglePrivacyDlpV2CustomInfoType_Likelihood_VERYUNLIKELY :: GooglePrivacyDlpV2CustomInfoType_Likelihood
pattern GooglePrivacyDlpV2CustomInfoType_Likelihood_VERYUNLIKELY = GooglePrivacyDlpV2CustomInfoType_Likelihood "VERY_UNLIKELY"

-- | High chance of a false positive.
pattern GooglePrivacyDlpV2CustomInfoType_Likelihood_Unlikely :: GooglePrivacyDlpV2CustomInfoType_Likelihood
pattern GooglePrivacyDlpV2CustomInfoType_Likelihood_Unlikely = GooglePrivacyDlpV2CustomInfoType_Likelihood "UNLIKELY"

-- | Some matching signals. The default value.
pattern GooglePrivacyDlpV2CustomInfoType_Likelihood_Possible :: GooglePrivacyDlpV2CustomInfoType_Likelihood
pattern GooglePrivacyDlpV2CustomInfoType_Likelihood_Possible = GooglePrivacyDlpV2CustomInfoType_Likelihood "POSSIBLE"

-- | Low chance of a false positive.
pattern GooglePrivacyDlpV2CustomInfoType_Likelihood_Likely :: GooglePrivacyDlpV2CustomInfoType_Likelihood
pattern GooglePrivacyDlpV2CustomInfoType_Likelihood_Likely = GooglePrivacyDlpV2CustomInfoType_Likelihood "LIKELY"

-- | Confidence level is high. Lowest chance of a false positive.
pattern GooglePrivacyDlpV2CustomInfoType_Likelihood_VERYLIKELY :: GooglePrivacyDlpV2CustomInfoType_Likelihood
pattern GooglePrivacyDlpV2CustomInfoType_Likelihood_VERYLIKELY = GooglePrivacyDlpV2CustomInfoType_Likelihood "VERY_LIKELY"

{-# COMPLETE
  GooglePrivacyDlpV2CustomInfoType_Likelihood_LIKELIHOODUNSPECIFIED,
  GooglePrivacyDlpV2CustomInfoType_Likelihood_VERYUNLIKELY,
  GooglePrivacyDlpV2CustomInfoType_Likelihood_Unlikely,
  GooglePrivacyDlpV2CustomInfoType_Likelihood_Possible,
  GooglePrivacyDlpV2CustomInfoType_Likelihood_Likely,
  GooglePrivacyDlpV2CustomInfoType_Likelihood_VERYLIKELY,
  GooglePrivacyDlpV2CustomInfoType_Likelihood
  #-}

-- | The event that caused the Pub\/Sub message to be sent.
newtype GooglePrivacyDlpV2DataProfilePubSubMessage_Event = GooglePrivacyDlpV2DataProfilePubSubMessage_Event {fromGooglePrivacyDlpV2DataProfilePubSubMessage_Event :: Core.Text}
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

-- | Unused.
pattern GooglePrivacyDlpV2DataProfilePubSubMessage_Event_EVENTTYPEUNSPECIFIED :: GooglePrivacyDlpV2DataProfilePubSubMessage_Event
pattern GooglePrivacyDlpV2DataProfilePubSubMessage_Event_EVENTTYPEUNSPECIFIED = GooglePrivacyDlpV2DataProfilePubSubMessage_Event "EVENT_TYPE_UNSPECIFIED"

-- | New profile (not a re-profile).
pattern GooglePrivacyDlpV2DataProfilePubSubMessage_Event_NEWPROFILE :: GooglePrivacyDlpV2DataProfilePubSubMessage_Event
pattern GooglePrivacyDlpV2DataProfilePubSubMessage_Event_NEWPROFILE = GooglePrivacyDlpV2DataProfilePubSubMessage_Event "NEW_PROFILE"

-- | Changed one of the following profile metrics: * Table data risk score * Table sensitivity score * Table resource visibility * Table encryption type * Table predicted infoTypes * Table other infoTypes
pattern GooglePrivacyDlpV2DataProfilePubSubMessage_Event_CHANGEDPROFILE :: GooglePrivacyDlpV2DataProfilePubSubMessage_Event
pattern GooglePrivacyDlpV2DataProfilePubSubMessage_Event_CHANGEDPROFILE = GooglePrivacyDlpV2DataProfilePubSubMessage_Event "CHANGED_PROFILE"

-- | Table data risk score or sensitivity score increased.
pattern GooglePrivacyDlpV2DataProfilePubSubMessage_Event_SCOREINCREASED :: GooglePrivacyDlpV2DataProfilePubSubMessage_Event
pattern GooglePrivacyDlpV2DataProfilePubSubMessage_Event_SCOREINCREASED = GooglePrivacyDlpV2DataProfilePubSubMessage_Event "SCORE_INCREASED"

-- | A user (non-internal) error occurred.
pattern GooglePrivacyDlpV2DataProfilePubSubMessage_Event_ERRORCHANGED :: GooglePrivacyDlpV2DataProfilePubSubMessage_Event
pattern GooglePrivacyDlpV2DataProfilePubSubMessage_Event_ERRORCHANGED = GooglePrivacyDlpV2DataProfilePubSubMessage_Event "ERROR_CHANGED"

{-# COMPLETE
  GooglePrivacyDlpV2DataProfilePubSubMessage_Event_EVENTTYPEUNSPECIFIED,
  GooglePrivacyDlpV2DataProfilePubSubMessage_Event_NEWPROFILE,
  GooglePrivacyDlpV2DataProfilePubSubMessage_Event_CHANGEDPROFILE,
  GooglePrivacyDlpV2DataProfilePubSubMessage_Event_SCOREINCREASED,
  GooglePrivacyDlpV2DataProfilePubSubMessage_Event_ERRORCHANGED,
  GooglePrivacyDlpV2DataProfilePubSubMessage_Event
  #-}

-- | The score applied to the resource.
newtype GooglePrivacyDlpV2DataRiskLevel_Score = GooglePrivacyDlpV2DataRiskLevel_Score {fromGooglePrivacyDlpV2DataRiskLevel_Score :: Core.Text}
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

-- | Unused.
pattern GooglePrivacyDlpV2DataRiskLevel_Score_RISKSCOREUNSPECIFIED :: GooglePrivacyDlpV2DataRiskLevel_Score
pattern GooglePrivacyDlpV2DataRiskLevel_Score_RISKSCOREUNSPECIFIED = GooglePrivacyDlpV2DataRiskLevel_Score "RISK_SCORE_UNSPECIFIED"

-- | Low risk - Lower indication of sensitive data that appears to have additional access restrictions in place or no indication of sensitive data found.
pattern GooglePrivacyDlpV2DataRiskLevel_Score_RISKLOW :: GooglePrivacyDlpV2DataRiskLevel_Score
pattern GooglePrivacyDlpV2DataRiskLevel_Score_RISKLOW = GooglePrivacyDlpV2DataRiskLevel_Score "RISK_LOW"

-- | Medium risk - Sensitive data may be present but additional access or fine grain access restrictions appear to be present. Consider limiting access even further or transform data to mask.
pattern GooglePrivacyDlpV2DataRiskLevel_Score_RISKMODERATE :: GooglePrivacyDlpV2DataRiskLevel_Score
pattern GooglePrivacyDlpV2DataRiskLevel_Score_RISKMODERATE = GooglePrivacyDlpV2DataRiskLevel_Score "RISK_MODERATE"

-- | High risk – SPII may be present. Access controls may include public ACLs. Exfiltration of data may lead to user data loss. Re-identification of users may be possible. Consider limiting usage and or removing SPII.
pattern GooglePrivacyDlpV2DataRiskLevel_Score_RISKHIGH :: GooglePrivacyDlpV2DataRiskLevel_Score
pattern GooglePrivacyDlpV2DataRiskLevel_Score_RISKHIGH = GooglePrivacyDlpV2DataRiskLevel_Score "RISK_HIGH"

{-# COMPLETE
  GooglePrivacyDlpV2DataRiskLevel_Score_RISKSCOREUNSPECIFIED,
  GooglePrivacyDlpV2DataRiskLevel_Score_RISKLOW,
  GooglePrivacyDlpV2DataRiskLevel_Score_RISKMODERATE,
  GooglePrivacyDlpV2DataRiskLevel_Score_RISKHIGH,
  GooglePrivacyDlpV2DataRiskLevel_Score
  #-}

-- | Day of week
newtype GooglePrivacyDlpV2DateTime_DayOfWeek = GooglePrivacyDlpV2DateTime_DayOfWeek {fromGooglePrivacyDlpV2DateTime_DayOfWeek :: Core.Text}
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
  GooglePrivacyDlpV2DateTime_DayOfWeek
  #-}

newtype GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem = GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem {fromGooglePrivacyDlpV2Deidentify_FileTypesToTransformItem :: Core.Text}
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

-- | Includes all files.
pattern GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_FILETYPEUNSPECIFIED :: GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem
pattern GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_FILETYPEUNSPECIFIED = GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem "FILE_TYPE_UNSPECIFIED"

-- | Includes all file extensions not covered by another entry. Binary scanning attempts to convert the content of the file to utf_8 to scan the file. If you wish to avoid this fall back, specify one or more of the other FileType\'s in your storage scan.
pattern GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_BINARYFILE :: GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem
pattern GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_BINARYFILE = GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem "BINARY_FILE"

-- | Included file extensions: asc,asp, aspx, brf, c, cc,cfm, cgi, cpp, csv, cxx, c++, cs, css, dart, dat, dot, eml,, epbub, ged, go, h, hh, hpp, hxx, h++, hs, html, htm, mkd, markdown, m, ml, mli, perl, pl, plist, pm, php, phtml, pht, properties, py, pyw, rb, rbw, rs, rss, rc, scala, sh, sql, swift, tex, shtml, shtm, xhtml, lhs, ics, ini, java, js, json, kix, kml, ocaml, md, txt, text, tsv, vb, vcard, vcs, wml, xcodeproj, xml, xsl, xsd, yml, yaml.
pattern GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_TEXTFILE :: GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem
pattern GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_TEXTFILE = GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem "TEXT_FILE"

-- | Included file extensions: bmp, gif, jpg, jpeg, jpe, png. bytes/limit/per_file has no effect on image files. Image inspection is restricted to \'global\', \'us\', \'asia\', and \'europe\'.
pattern GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_Image :: GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem
pattern GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_Image = GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem "IMAGE"

-- | Word files >30 MB will be scanned as binary files. Included file extensions: docx, dotx, docm, dotm
pattern GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_Word :: GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem
pattern GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_Word = GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem "WORD"

-- | PDF files >30 MB will be scanned as binary files. Included file extensions: pdf
pattern GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_Pdf :: GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem
pattern GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_Pdf = GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem "PDF"

-- | Included file extensions: avro
pattern GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_Avro :: GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem
pattern GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_Avro = GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem "AVRO"

-- | Included file extensions: csv
pattern GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_Csv :: GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem
pattern GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_Csv = GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem "CSV"

-- | Included file extensions: tsv
pattern GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_Tsv :: GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem
pattern GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_Tsv = GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem "TSV"

-- | Powerpoint files >30 MB will be scanned as binary files. Included file extensions: pptx, pptm, potx, potm, pot
pattern GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_Powerpoint :: GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem
pattern GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_Powerpoint = GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem "POWERPOINT"

-- | Excel files >30 MB will be scanned as binary files. Included file extensions: xlsx, xlsm, xltx, xltm
pattern GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_Excel :: GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem
pattern GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_Excel = GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem "EXCEL"

{-# COMPLETE
  GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_FILETYPEUNSPECIFIED,
  GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_BINARYFILE,
  GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_TEXTFILE,
  GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_Image,
  GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_Word,
  GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_Pdf,
  GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_Avro,
  GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_Csv,
  GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_Tsv,
  GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_Powerpoint,
  GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_Excel,
  GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem
  #-}

-- | State of a job.
newtype GooglePrivacyDlpV2DlpJob_State = GooglePrivacyDlpV2DlpJob_State {fromGooglePrivacyDlpV2DlpJob_State :: Core.Text}
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

-- | The job was canceled before it could be completed.
pattern GooglePrivacyDlpV2DlpJob_State_Canceled :: GooglePrivacyDlpV2DlpJob_State
pattern GooglePrivacyDlpV2DlpJob_State_Canceled = GooglePrivacyDlpV2DlpJob_State "CANCELED"

-- | The job had an error and did not complete.
pattern GooglePrivacyDlpV2DlpJob_State_Failed :: GooglePrivacyDlpV2DlpJob_State
pattern GooglePrivacyDlpV2DlpJob_State_Failed = GooglePrivacyDlpV2DlpJob_State "FAILED"

-- | The job is currently accepting findings via hybridInspect. A hybrid job in ACTIVE state may continue to have findings added to it through the calling of hybridInspect. After the job has finished no more calls to hybridInspect may be made. ACTIVE jobs can transition to DONE.
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
  GooglePrivacyDlpV2DlpJob_State
  #-}

-- | The type of job.
newtype GooglePrivacyDlpV2DlpJob_Type = GooglePrivacyDlpV2DlpJob_Type {fromGooglePrivacyDlpV2DlpJob_Type :: Core.Text}
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
  GooglePrivacyDlpV2DlpJob_Type
  #-}

-- | How the rule is applied, see MatchingType documentation for details.
newtype GooglePrivacyDlpV2ExclusionRule_MatchingType = GooglePrivacyDlpV2ExclusionRule_MatchingType {fromGooglePrivacyDlpV2ExclusionRule_MatchingType :: Core.Text}
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
  GooglePrivacyDlpV2ExclusionRule_MatchingType
  #-}

-- | The operator to apply to the result of conditions. Default and currently only supported value is @AND@.
newtype GooglePrivacyDlpV2Expressions_LogicalOperator = GooglePrivacyDlpV2Expressions_LogicalOperator {fromGooglePrivacyDlpV2Expressions_LogicalOperator :: Core.Text}
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

-- | Unused
pattern GooglePrivacyDlpV2Expressions_LogicalOperator_LOGICALOPERATORUNSPECIFIED :: GooglePrivacyDlpV2Expressions_LogicalOperator
pattern GooglePrivacyDlpV2Expressions_LogicalOperator_LOGICALOPERATORUNSPECIFIED = GooglePrivacyDlpV2Expressions_LogicalOperator "LOGICAL_OPERATOR_UNSPECIFIED"

-- | Conditional AND
pattern GooglePrivacyDlpV2Expressions_LogicalOperator_And :: GooglePrivacyDlpV2Expressions_LogicalOperator
pattern GooglePrivacyDlpV2Expressions_LogicalOperator_And = GooglePrivacyDlpV2Expressions_LogicalOperator "AND"

{-# COMPLETE
  GooglePrivacyDlpV2Expressions_LogicalOperator_LOGICALOPERATORUNSPECIFIED,
  GooglePrivacyDlpV2Expressions_LogicalOperator_And,
  GooglePrivacyDlpV2Expressions_LogicalOperator
  #-}

-- | Confidence of how likely it is that the @info_type@ is correct.
newtype GooglePrivacyDlpV2Finding_Likelihood = GooglePrivacyDlpV2Finding_Likelihood {fromGooglePrivacyDlpV2Finding_Likelihood :: Core.Text}
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

-- | Default value; same as POSSIBLE.
pattern GooglePrivacyDlpV2Finding_Likelihood_LIKELIHOODUNSPECIFIED :: GooglePrivacyDlpV2Finding_Likelihood
pattern GooglePrivacyDlpV2Finding_Likelihood_LIKELIHOODUNSPECIFIED = GooglePrivacyDlpV2Finding_Likelihood "LIKELIHOOD_UNSPECIFIED"

-- | Highest chance of a false positive.
pattern GooglePrivacyDlpV2Finding_Likelihood_VERYUNLIKELY :: GooglePrivacyDlpV2Finding_Likelihood
pattern GooglePrivacyDlpV2Finding_Likelihood_VERYUNLIKELY = GooglePrivacyDlpV2Finding_Likelihood "VERY_UNLIKELY"

-- | High chance of a false positive.
pattern GooglePrivacyDlpV2Finding_Likelihood_Unlikely :: GooglePrivacyDlpV2Finding_Likelihood
pattern GooglePrivacyDlpV2Finding_Likelihood_Unlikely = GooglePrivacyDlpV2Finding_Likelihood "UNLIKELY"

-- | Some matching signals. The default value.
pattern GooglePrivacyDlpV2Finding_Likelihood_Possible :: GooglePrivacyDlpV2Finding_Likelihood
pattern GooglePrivacyDlpV2Finding_Likelihood_Possible = GooglePrivacyDlpV2Finding_Likelihood "POSSIBLE"

-- | Low chance of a false positive.
pattern GooglePrivacyDlpV2Finding_Likelihood_Likely :: GooglePrivacyDlpV2Finding_Likelihood
pattern GooglePrivacyDlpV2Finding_Likelihood_Likely = GooglePrivacyDlpV2Finding_Likelihood "LIKELY"

-- | Confidence level is high. Lowest chance of a false positive.
pattern GooglePrivacyDlpV2Finding_Likelihood_VERYLIKELY :: GooglePrivacyDlpV2Finding_Likelihood
pattern GooglePrivacyDlpV2Finding_Likelihood_VERYLIKELY = GooglePrivacyDlpV2Finding_Likelihood "VERY_LIKELY"

{-# COMPLETE
  GooglePrivacyDlpV2Finding_Likelihood_LIKELIHOODUNSPECIFIED,
  GooglePrivacyDlpV2Finding_Likelihood_VERYUNLIKELY,
  GooglePrivacyDlpV2Finding_Likelihood_Unlikely,
  GooglePrivacyDlpV2Finding_Likelihood_Possible,
  GooglePrivacyDlpV2Finding_Likelihood_Likely,
  GooglePrivacyDlpV2Finding_Likelihood_VERYLIKELY,
  GooglePrivacyDlpV2Finding_Likelihood
  #-}

-- | The group of relevant businesses where this infoType is commonly used
newtype GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory = GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory {fromGooglePrivacyDlpV2InfoTypeCategory_IndustryCategory :: Core.Text}
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

-- | Unused industry
pattern GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory_INDUSTRYUNSPECIFIED :: GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory_INDUSTRYUNSPECIFIED = GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory "INDUSTRY_UNSPECIFIED"

-- | The infoType is typically used in the finance industry.
pattern GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory_Finance :: GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory_Finance = GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory "FINANCE"

-- | The infoType is typically used in the health industry.
pattern GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory_Health :: GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory_Health = GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory "HEALTH"

-- | The infoType is typically used in the telecommunications industry.
pattern GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory_Telecommunications :: GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory_Telecommunications = GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory "TELECOMMUNICATIONS"

{-# COMPLETE
  GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory_INDUSTRYUNSPECIFIED,
  GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory_Finance,
  GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory_Health,
  GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory_Telecommunications,
  GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory
  #-}

-- | The region or country that issued the ID or document represented by the infoType.
newtype GooglePrivacyDlpV2InfoTypeCategory_LocationCategory = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory {fromGooglePrivacyDlpV2InfoTypeCategory_LocationCategory :: Core.Text}
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

-- | Unused location
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_LOCATIONUNSPECIFIED :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_LOCATIONUNSPECIFIED = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "LOCATION_UNSPECIFIED"

-- | The infoType is not issued by or tied to a specific region, but is used almost everywhere.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Global :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Global = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "GLOBAL"

-- | The infoType is typically used in Argentina.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Argentina :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Argentina = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "ARGENTINA"

-- | The infoType is typically used in Australia.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Australia :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Australia = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "AUSTRALIA"

-- | The infoType is typically used in Belgium.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Belgium :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Belgium = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "BELGIUM"

-- | The infoType is typically used in Brazil.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Brazil :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Brazil = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "BRAZIL"

-- | The infoType is typically used in Canada.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Canada :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Canada = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "CANADA"

-- | The infoType is typically used in Chile.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Chile :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Chile = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "CHILE"

-- | The infoType is typically used in China.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_China :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_China = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "CHINA"

-- | The infoType is typically used in Colombia.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Colombia :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Colombia = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "COLOMBIA"

-- | The infoType is typically used in Croatia.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Croatia :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Croatia = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "CROATIA"

-- | The infoType is typically used in Denmark.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Denmark :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Denmark = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "DENMARK"

-- | The infoType is typically used in France.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_France :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_France = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "FRANCE"

-- | The infoType is typically used in Finland.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Finland :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Finland = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "FINLAND"

-- | The infoType is typically used in Germany.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Germany :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Germany = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "GERMANY"

-- | The infoType is typically used in Hong Kong.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_HONGKONG :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_HONGKONG = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "HONG_KONG"

-- | The infoType is typically used in India.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_India :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_India = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "INDIA"

-- | The infoType is typically used in Indonesia.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Indonesia :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Indonesia = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "INDONESIA"

-- | The infoType is typically used in Ireland.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Ireland :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Ireland = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "IRELAND"

-- | The infoType is typically used in Israel.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Israel :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Israel = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "ISRAEL"

-- | The infoType is typically used in Italy.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Italy :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Italy = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "ITALY"

-- | The infoType is typically used in Japan.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Japan :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Japan = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "JAPAN"

-- | The infoType is typically used in Korea.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Korea :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Korea = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "KOREA"

-- | The infoType is typically used in Mexico.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Mexico :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Mexico = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "MEXICO"

-- | The infoType is typically used in New Zealand.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_NEWZEALAND :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_NEWZEALAND = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "NEW_ZEALAND"

-- | The infoType is typically used in the Netherlands.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_THENETHERLANDS :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_THENETHERLANDS = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "THE_NETHERLANDS"

-- | The infoType is typically used in Norway.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Norway :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Norway = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "NORWAY"

-- | The infoType is typically used in Paraguay.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Paraguay :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Paraguay = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "PARAGUAY"

-- | The infoType is typically used in Peru.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Peru :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Peru = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "PERU"

-- | The infoType is typically used in Poland.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Poland :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Poland = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "POLAND"

-- | The infoType is typically used in Portugal.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Portugal :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Portugal = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "PORTUGAL"

-- | The infoType is typically used in Singapore.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Singapore :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Singapore = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "SINGAPORE"

-- | The infoType is typically used in South Africa.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_SOUTHAFRICA :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_SOUTHAFRICA = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "SOUTH_AFRICA"

-- | The infoType is typically used in Spain.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Spain :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Spain = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "SPAIN"

-- | The infoType is typically used in Sweden.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Sweden :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Sweden = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "SWEDEN"

-- | The infoType is typically used in Taiwan.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Taiwan :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Taiwan = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "TAIWAN"

-- | The infoType is typically used in Thailand.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Thailand :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Thailand = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "THAILAND"

-- | The infoType is typically used in Turkey.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Turkey :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Turkey = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "TURKEY"

-- | The infoType is typically used in the United Kingdom.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_UNITEDKINGDOM :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_UNITEDKINGDOM = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "UNITED_KINGDOM"

-- | The infoType is typically used in the United States.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_UNITEDSTATES :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_UNITEDSTATES = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "UNITED_STATES"

-- | The infoType is typically used in Uruguay.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Uruguay :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Uruguay = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "URUGUAY"

-- | The infoType is typically used in Venezuela.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Venezuela :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Venezuela = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "VENEZUELA"

-- | The infoType is typically used in Google internally.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Internal :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Internal = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "INTERNAL"

{-# COMPLETE
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_LOCATIONUNSPECIFIED,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Global,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Argentina,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Australia,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Belgium,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Brazil,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Canada,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Chile,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_China,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Colombia,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Croatia,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Denmark,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_France,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Finland,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Germany,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_HONGKONG,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_India,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Indonesia,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Ireland,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Israel,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Italy,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Japan,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Korea,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Mexico,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_NEWZEALAND,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_THENETHERLANDS,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Norway,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Paraguay,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Peru,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Poland,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Portugal,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Singapore,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_SOUTHAFRICA,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Spain,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Sweden,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Taiwan,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Thailand,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Turkey,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_UNITEDKINGDOM,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_UNITEDSTATES,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Uruguay,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Venezuela,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Internal,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
  #-}

-- | The class of identifiers where this infoType belongs
newtype GooglePrivacyDlpV2InfoTypeCategory_TypeCategory = GooglePrivacyDlpV2InfoTypeCategory_TypeCategory {fromGooglePrivacyDlpV2InfoTypeCategory_TypeCategory :: Core.Text}
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

-- | Unused type
pattern GooglePrivacyDlpV2InfoTypeCategory_TypeCategory_TYPEUNSPECIFIED :: GooglePrivacyDlpV2InfoTypeCategory_TypeCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_TypeCategory_TYPEUNSPECIFIED = GooglePrivacyDlpV2InfoTypeCategory_TypeCategory "TYPE_UNSPECIFIED"

-- | Personally identifiable information, for example, a name or phone number
pattern GooglePrivacyDlpV2InfoTypeCategory_TypeCategory_Pii :: GooglePrivacyDlpV2InfoTypeCategory_TypeCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_TypeCategory_Pii = GooglePrivacyDlpV2InfoTypeCategory_TypeCategory "PII"

-- | Personally identifiable information that is especially sensitive, for example, a passport number.
pattern GooglePrivacyDlpV2InfoTypeCategory_TypeCategory_Spii :: GooglePrivacyDlpV2InfoTypeCategory_TypeCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_TypeCategory_Spii = GooglePrivacyDlpV2InfoTypeCategory_TypeCategory "SPII"

-- | Attributes that can partially identify someone, especially in combination with other attributes, like age, height, and gender.
pattern GooglePrivacyDlpV2InfoTypeCategory_TypeCategory_Demographic :: GooglePrivacyDlpV2InfoTypeCategory_TypeCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_TypeCategory_Demographic = GooglePrivacyDlpV2InfoTypeCategory_TypeCategory "DEMOGRAPHIC"

-- | Confidential or secret information, for example, a password.
pattern GooglePrivacyDlpV2InfoTypeCategory_TypeCategory_Credential :: GooglePrivacyDlpV2InfoTypeCategory_TypeCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_TypeCategory_Credential = GooglePrivacyDlpV2InfoTypeCategory_TypeCategory "CREDENTIAL"

-- | An identification document issued by a government.
pattern GooglePrivacyDlpV2InfoTypeCategory_TypeCategory_GOVERNMENTID :: GooglePrivacyDlpV2InfoTypeCategory_TypeCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_TypeCategory_GOVERNMENTID = GooglePrivacyDlpV2InfoTypeCategory_TypeCategory "GOVERNMENT_ID"

-- | A document, for example, a resume or source code.
pattern GooglePrivacyDlpV2InfoTypeCategory_TypeCategory_Document :: GooglePrivacyDlpV2InfoTypeCategory_TypeCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_TypeCategory_Document = GooglePrivacyDlpV2InfoTypeCategory_TypeCategory "DOCUMENT"

-- | Information that is not sensitive on its own, but provides details about the circumstances surrounding an entity or an event.
pattern GooglePrivacyDlpV2InfoTypeCategory_TypeCategory_CONTEXTUALINFORMATION :: GooglePrivacyDlpV2InfoTypeCategory_TypeCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_TypeCategory_CONTEXTUALINFORMATION = GooglePrivacyDlpV2InfoTypeCategory_TypeCategory "CONTEXTUAL_INFORMATION"

{-# COMPLETE
  GooglePrivacyDlpV2InfoTypeCategory_TypeCategory_TYPEUNSPECIFIED,
  GooglePrivacyDlpV2InfoTypeCategory_TypeCategory_Pii,
  GooglePrivacyDlpV2InfoTypeCategory_TypeCategory_Spii,
  GooglePrivacyDlpV2InfoTypeCategory_TypeCategory_Demographic,
  GooglePrivacyDlpV2InfoTypeCategory_TypeCategory_Credential,
  GooglePrivacyDlpV2InfoTypeCategory_TypeCategory_GOVERNMENTID,
  GooglePrivacyDlpV2InfoTypeCategory_TypeCategory_Document,
  GooglePrivacyDlpV2InfoTypeCategory_TypeCategory_CONTEXTUALINFORMATION,
  GooglePrivacyDlpV2InfoTypeCategory_TypeCategory
  #-}

newtype GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem = GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem {fromGooglePrivacyDlpV2InfoTypeDescription_SupportedByItem :: Core.Text}
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
  GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem
  #-}

newtype GooglePrivacyDlpV2InspectConfig_ContentOptionsItem = GooglePrivacyDlpV2InspectConfig_ContentOptionsItem {fromGooglePrivacyDlpV2InspectConfig_ContentOptionsItem :: Core.Text}
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
  GooglePrivacyDlpV2InspectConfig_ContentOptionsItem
  #-}

-- | Only returns findings equal or above this threshold. The default is POSSIBLE. See https:\/\/cloud.google.com\/dlp\/docs\/likelihood to learn more.
newtype GooglePrivacyDlpV2InspectConfig_MinLikelihood = GooglePrivacyDlpV2InspectConfig_MinLikelihood {fromGooglePrivacyDlpV2InspectConfig_MinLikelihood :: Core.Text}
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

-- | Default value; same as POSSIBLE.
pattern GooglePrivacyDlpV2InspectConfig_MinLikelihood_LIKELIHOODUNSPECIFIED :: GooglePrivacyDlpV2InspectConfig_MinLikelihood
pattern GooglePrivacyDlpV2InspectConfig_MinLikelihood_LIKELIHOODUNSPECIFIED = GooglePrivacyDlpV2InspectConfig_MinLikelihood "LIKELIHOOD_UNSPECIFIED"

-- | Highest chance of a false positive.
pattern GooglePrivacyDlpV2InspectConfig_MinLikelihood_VERYUNLIKELY :: GooglePrivacyDlpV2InspectConfig_MinLikelihood
pattern GooglePrivacyDlpV2InspectConfig_MinLikelihood_VERYUNLIKELY = GooglePrivacyDlpV2InspectConfig_MinLikelihood "VERY_UNLIKELY"

-- | High chance of a false positive.
pattern GooglePrivacyDlpV2InspectConfig_MinLikelihood_Unlikely :: GooglePrivacyDlpV2InspectConfig_MinLikelihood
pattern GooglePrivacyDlpV2InspectConfig_MinLikelihood_Unlikely = GooglePrivacyDlpV2InspectConfig_MinLikelihood "UNLIKELY"

-- | Some matching signals. The default value.
pattern GooglePrivacyDlpV2InspectConfig_MinLikelihood_Possible :: GooglePrivacyDlpV2InspectConfig_MinLikelihood
pattern GooglePrivacyDlpV2InspectConfig_MinLikelihood_Possible = GooglePrivacyDlpV2InspectConfig_MinLikelihood "POSSIBLE"

-- | Low chance of a false positive.
pattern GooglePrivacyDlpV2InspectConfig_MinLikelihood_Likely :: GooglePrivacyDlpV2InspectConfig_MinLikelihood
pattern GooglePrivacyDlpV2InspectConfig_MinLikelihood_Likely = GooglePrivacyDlpV2InspectConfig_MinLikelihood "LIKELY"

-- | Confidence level is high. Lowest chance of a false positive.
pattern GooglePrivacyDlpV2InspectConfig_MinLikelihood_VERYLIKELY :: GooglePrivacyDlpV2InspectConfig_MinLikelihood
pattern GooglePrivacyDlpV2InspectConfig_MinLikelihood_VERYLIKELY = GooglePrivacyDlpV2InspectConfig_MinLikelihood "VERY_LIKELY"

{-# COMPLETE
  GooglePrivacyDlpV2InspectConfig_MinLikelihood_LIKELIHOODUNSPECIFIED,
  GooglePrivacyDlpV2InspectConfig_MinLikelihood_VERYUNLIKELY,
  GooglePrivacyDlpV2InspectConfig_MinLikelihood_Unlikely,
  GooglePrivacyDlpV2InspectConfig_MinLikelihood_Possible,
  GooglePrivacyDlpV2InspectConfig_MinLikelihood_Likely,
  GooglePrivacyDlpV2InspectConfig_MinLikelihood_VERYLIKELY,
  GooglePrivacyDlpV2InspectConfig_MinLikelihood
  #-}

-- | Required. A status for this trigger.
newtype GooglePrivacyDlpV2JobTrigger_Status = GooglePrivacyDlpV2JobTrigger_Status {fromGooglePrivacyDlpV2JobTrigger_Status :: Core.Text}
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
  GooglePrivacyDlpV2JobTrigger_Status
  #-}

-- | Set the likelihood of a finding to a fixed value.
newtype GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood = GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood {fromGooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood :: Core.Text}
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

-- | Default value; same as POSSIBLE.
pattern GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_LIKELIHOODUNSPECIFIED :: GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood
pattern GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_LIKELIHOODUNSPECIFIED = GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood "LIKELIHOOD_UNSPECIFIED"

-- | Highest chance of a false positive.
pattern GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_VERYUNLIKELY :: GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood
pattern GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_VERYUNLIKELY = GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood "VERY_UNLIKELY"

-- | High chance of a false positive.
pattern GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_Unlikely :: GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood
pattern GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_Unlikely = GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood "UNLIKELY"

-- | Some matching signals. The default value.
pattern GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_Possible :: GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood
pattern GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_Possible = GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood "POSSIBLE"

-- | Low chance of a false positive.
pattern GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_Likely :: GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood
pattern GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_Likely = GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood "LIKELY"

-- | Confidence level is high. Lowest chance of a false positive.
pattern GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_VERYLIKELY :: GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood
pattern GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_VERYLIKELY = GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood "VERY_LIKELY"

{-# COMPLETE
  GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_LIKELIHOODUNSPECIFIED,
  GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_VERYUNLIKELY,
  GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_Unlikely,
  GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_Possible,
  GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_Likely,
  GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood_VERYLIKELY,
  GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood
  #-}

-- | Type of metadata containing the finding.
newtype GooglePrivacyDlpV2MetadataLocation_Type = GooglePrivacyDlpV2MetadataLocation_Type {fromGooglePrivacyDlpV2MetadataLocation_Type :: Core.Text}
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

-- | Unused
pattern GooglePrivacyDlpV2MetadataLocation_Type_METADATATYPEUNSPECIFIED :: GooglePrivacyDlpV2MetadataLocation_Type
pattern GooglePrivacyDlpV2MetadataLocation_Type_METADATATYPEUNSPECIFIED = GooglePrivacyDlpV2MetadataLocation_Type "METADATATYPE_UNSPECIFIED"

-- | General file metadata provided by Cloud Storage.
pattern GooglePrivacyDlpV2MetadataLocation_Type_STORAGEMETADATA :: GooglePrivacyDlpV2MetadataLocation_Type
pattern GooglePrivacyDlpV2MetadataLocation_Type_STORAGEMETADATA = GooglePrivacyDlpV2MetadataLocation_Type "STORAGE_METADATA"

{-# COMPLETE
  GooglePrivacyDlpV2MetadataLocation_Type_METADATATYPEUNSPECIFIED,
  GooglePrivacyDlpV2MetadataLocation_Type_STORAGEMETADATA,
  GooglePrivacyDlpV2MetadataLocation_Type
  #-}

-- | Schema used for writing the findings for Inspect jobs. This field is only used for Inspect and must be unspecified for Risk jobs. Columns are derived from the @Finding@ object. If appending to an existing table, any columns from the predefined schema that are missing will be added. No columns in the existing table will be deleted. If unspecified, then all available columns will be used for a new table or an (existing) table with no schema, and no changes will be made to an existing table that has a schema. Only for use with external storage.
newtype GooglePrivacyDlpV2OutputStorageConfig_OutputSchema = GooglePrivacyDlpV2OutputStorageConfig_OutputSchema {fromGooglePrivacyDlpV2OutputStorageConfig_OutputSchema :: Core.Text}
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

-- | Unused.
pattern GooglePrivacyDlpV2OutputStorageConfig_OutputSchema_OUTPUTSCHEMAUNSPECIFIED :: GooglePrivacyDlpV2OutputStorageConfig_OutputSchema
pattern GooglePrivacyDlpV2OutputStorageConfig_OutputSchema_OUTPUTSCHEMAUNSPECIFIED = GooglePrivacyDlpV2OutputStorageConfig_OutputSchema "OUTPUT_SCHEMA_UNSPECIFIED"

-- | Basic schema including only @info_type@, @quote@, @certainty@, and @timestamp@.
pattern GooglePrivacyDlpV2OutputStorageConfig_OutputSchema_BASICCOLUMNS :: GooglePrivacyDlpV2OutputStorageConfig_OutputSchema
pattern GooglePrivacyDlpV2OutputStorageConfig_OutputSchema_BASICCOLUMNS = GooglePrivacyDlpV2OutputStorageConfig_OutputSchema "BASIC_COLUMNS"

-- | Schema tailored to findings from scanning Cloud Storage.
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
  GooglePrivacyDlpV2OutputStorageConfig_OutputSchema
  #-}

-- | The minimum data risk score that triggers the condition.
newtype GooglePrivacyDlpV2PubSubCondition_MinimumRiskScore = GooglePrivacyDlpV2PubSubCondition_MinimumRiskScore {fromGooglePrivacyDlpV2PubSubCondition_MinimumRiskScore :: Core.Text}
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

-- | Unused.
pattern GooglePrivacyDlpV2PubSubCondition_MinimumRiskScore_PROFILESCOREBUCKETUNSPECIFIED :: GooglePrivacyDlpV2PubSubCondition_MinimumRiskScore
pattern GooglePrivacyDlpV2PubSubCondition_MinimumRiskScore_PROFILESCOREBUCKETUNSPECIFIED = GooglePrivacyDlpV2PubSubCondition_MinimumRiskScore "PROFILE_SCORE_BUCKET_UNSPECIFIED"

-- | High risk\/sensitivity detected.
pattern GooglePrivacyDlpV2PubSubCondition_MinimumRiskScore_High :: GooglePrivacyDlpV2PubSubCondition_MinimumRiskScore
pattern GooglePrivacyDlpV2PubSubCondition_MinimumRiskScore_High = GooglePrivacyDlpV2PubSubCondition_MinimumRiskScore "HIGH"

-- | Medium or high risk\/sensitivity detected.
pattern GooglePrivacyDlpV2PubSubCondition_MinimumRiskScore_MEDIUMORHIGH :: GooglePrivacyDlpV2PubSubCondition_MinimumRiskScore
pattern GooglePrivacyDlpV2PubSubCondition_MinimumRiskScore_MEDIUMORHIGH = GooglePrivacyDlpV2PubSubCondition_MinimumRiskScore "MEDIUM_OR_HIGH"

{-# COMPLETE
  GooglePrivacyDlpV2PubSubCondition_MinimumRiskScore_PROFILESCOREBUCKETUNSPECIFIED,
  GooglePrivacyDlpV2PubSubCondition_MinimumRiskScore_High,
  GooglePrivacyDlpV2PubSubCondition_MinimumRiskScore_MEDIUMORHIGH,
  GooglePrivacyDlpV2PubSubCondition_MinimumRiskScore
  #-}

-- | The minimum sensitivity level that triggers the condition.
newtype GooglePrivacyDlpV2PubSubCondition_MinimumSensitivityScore = GooglePrivacyDlpV2PubSubCondition_MinimumSensitivityScore {fromGooglePrivacyDlpV2PubSubCondition_MinimumSensitivityScore :: Core.Text}
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

-- | Unused.
pattern GooglePrivacyDlpV2PubSubCondition_MinimumSensitivityScore_PROFILESCOREBUCKETUNSPECIFIED :: GooglePrivacyDlpV2PubSubCondition_MinimumSensitivityScore
pattern GooglePrivacyDlpV2PubSubCondition_MinimumSensitivityScore_PROFILESCOREBUCKETUNSPECIFIED = GooglePrivacyDlpV2PubSubCondition_MinimumSensitivityScore "PROFILE_SCORE_BUCKET_UNSPECIFIED"

-- | High risk\/sensitivity detected.
pattern GooglePrivacyDlpV2PubSubCondition_MinimumSensitivityScore_High :: GooglePrivacyDlpV2PubSubCondition_MinimumSensitivityScore
pattern GooglePrivacyDlpV2PubSubCondition_MinimumSensitivityScore_High = GooglePrivacyDlpV2PubSubCondition_MinimumSensitivityScore "HIGH"

-- | Medium or high risk\/sensitivity detected.
pattern GooglePrivacyDlpV2PubSubCondition_MinimumSensitivityScore_MEDIUMORHIGH :: GooglePrivacyDlpV2PubSubCondition_MinimumSensitivityScore
pattern GooglePrivacyDlpV2PubSubCondition_MinimumSensitivityScore_MEDIUMORHIGH = GooglePrivacyDlpV2PubSubCondition_MinimumSensitivityScore "MEDIUM_OR_HIGH"

{-# COMPLETE
  GooglePrivacyDlpV2PubSubCondition_MinimumSensitivityScore_PROFILESCOREBUCKETUNSPECIFIED,
  GooglePrivacyDlpV2PubSubCondition_MinimumSensitivityScore_High,
  GooglePrivacyDlpV2PubSubCondition_MinimumSensitivityScore_MEDIUMORHIGH,
  GooglePrivacyDlpV2PubSubCondition_MinimumSensitivityScore
  #-}

-- | The operator to apply to the collection of conditions.
newtype GooglePrivacyDlpV2PubSubExpressions_LogicalOperator = GooglePrivacyDlpV2PubSubExpressions_LogicalOperator {fromGooglePrivacyDlpV2PubSubExpressions_LogicalOperator :: Core.Text}
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

-- | Unused.
pattern GooglePrivacyDlpV2PubSubExpressions_LogicalOperator_LOGICALOPERATORUNSPECIFIED :: GooglePrivacyDlpV2PubSubExpressions_LogicalOperator
pattern GooglePrivacyDlpV2PubSubExpressions_LogicalOperator_LOGICALOPERATORUNSPECIFIED = GooglePrivacyDlpV2PubSubExpressions_LogicalOperator "LOGICAL_OPERATOR_UNSPECIFIED"

-- | Conditional OR.
pattern GooglePrivacyDlpV2PubSubExpressions_LogicalOperator_OR :: GooglePrivacyDlpV2PubSubExpressions_LogicalOperator
pattern GooglePrivacyDlpV2PubSubExpressions_LogicalOperator_OR = GooglePrivacyDlpV2PubSubExpressions_LogicalOperator "OR"

-- | Conditional AND.
pattern GooglePrivacyDlpV2PubSubExpressions_LogicalOperator_And :: GooglePrivacyDlpV2PubSubExpressions_LogicalOperator
pattern GooglePrivacyDlpV2PubSubExpressions_LogicalOperator_And = GooglePrivacyDlpV2PubSubExpressions_LogicalOperator "AND"

{-# COMPLETE
  GooglePrivacyDlpV2PubSubExpressions_LogicalOperator_LOGICALOPERATORUNSPECIFIED,
  GooglePrivacyDlpV2PubSubExpressions_LogicalOperator_OR,
  GooglePrivacyDlpV2PubSubExpressions_LogicalOperator_And,
  GooglePrivacyDlpV2PubSubExpressions_LogicalOperator
  #-}

-- | How much data to include in the Pub\/Sub message. If the user wishes to limit the size of the message, they can use resource_name and fetch the profile fields they wish to. Per table profile (not per column).
newtype GooglePrivacyDlpV2PubSubNotification_DetailOfMessage = GooglePrivacyDlpV2PubSubNotification_DetailOfMessage {fromGooglePrivacyDlpV2PubSubNotification_DetailOfMessage :: Core.Text}
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

-- | Unused.
pattern GooglePrivacyDlpV2PubSubNotification_DetailOfMessage_DETAILLEVELUNSPECIFIED :: GooglePrivacyDlpV2PubSubNotification_DetailOfMessage
pattern GooglePrivacyDlpV2PubSubNotification_DetailOfMessage_DETAILLEVELUNSPECIFIED = GooglePrivacyDlpV2PubSubNotification_DetailOfMessage "DETAIL_LEVEL_UNSPECIFIED"

-- | The full table data profile.
pattern GooglePrivacyDlpV2PubSubNotification_DetailOfMessage_TABLEPROFILE :: GooglePrivacyDlpV2PubSubNotification_DetailOfMessage
pattern GooglePrivacyDlpV2PubSubNotification_DetailOfMessage_TABLEPROFILE = GooglePrivacyDlpV2PubSubNotification_DetailOfMessage "TABLE_PROFILE"

-- | The resource name of the table.
pattern GooglePrivacyDlpV2PubSubNotification_DetailOfMessage_RESOURCENAME :: GooglePrivacyDlpV2PubSubNotification_DetailOfMessage
pattern GooglePrivacyDlpV2PubSubNotification_DetailOfMessage_RESOURCENAME = GooglePrivacyDlpV2PubSubNotification_DetailOfMessage "RESOURCE_NAME"

{-# COMPLETE
  GooglePrivacyDlpV2PubSubNotification_DetailOfMessage_DETAILLEVELUNSPECIFIED,
  GooglePrivacyDlpV2PubSubNotification_DetailOfMessage_TABLEPROFILE,
  GooglePrivacyDlpV2PubSubNotification_DetailOfMessage_RESOURCENAME,
  GooglePrivacyDlpV2PubSubNotification_DetailOfMessage
  #-}

-- | The type of event that triggers a Pub\/Sub. At most one @PubSubNotification@ per EventType is permitted.
newtype GooglePrivacyDlpV2PubSubNotification_Event = GooglePrivacyDlpV2PubSubNotification_Event {fromGooglePrivacyDlpV2PubSubNotification_Event :: Core.Text}
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

-- | Unused.
pattern GooglePrivacyDlpV2PubSubNotification_Event_EVENTTYPEUNSPECIFIED :: GooglePrivacyDlpV2PubSubNotification_Event
pattern GooglePrivacyDlpV2PubSubNotification_Event_EVENTTYPEUNSPECIFIED = GooglePrivacyDlpV2PubSubNotification_Event "EVENT_TYPE_UNSPECIFIED"

-- | New profile (not a re-profile).
pattern GooglePrivacyDlpV2PubSubNotification_Event_NEWPROFILE :: GooglePrivacyDlpV2PubSubNotification_Event
pattern GooglePrivacyDlpV2PubSubNotification_Event_NEWPROFILE = GooglePrivacyDlpV2PubSubNotification_Event "NEW_PROFILE"

-- | Changed one of the following profile metrics: * Table data risk score * Table sensitivity score * Table resource visibility * Table encryption type * Table predicted infoTypes * Table other infoTypes
pattern GooglePrivacyDlpV2PubSubNotification_Event_CHANGEDPROFILE :: GooglePrivacyDlpV2PubSubNotification_Event
pattern GooglePrivacyDlpV2PubSubNotification_Event_CHANGEDPROFILE = GooglePrivacyDlpV2PubSubNotification_Event "CHANGED_PROFILE"

-- | Table data risk score or sensitivity score increased.
pattern GooglePrivacyDlpV2PubSubNotification_Event_SCOREINCREASED :: GooglePrivacyDlpV2PubSubNotification_Event
pattern GooglePrivacyDlpV2PubSubNotification_Event_SCOREINCREASED = GooglePrivacyDlpV2PubSubNotification_Event "SCORE_INCREASED"

-- | A user (non-internal) error occurred.
pattern GooglePrivacyDlpV2PubSubNotification_Event_ERRORCHANGED :: GooglePrivacyDlpV2PubSubNotification_Event
pattern GooglePrivacyDlpV2PubSubNotification_Event_ERRORCHANGED = GooglePrivacyDlpV2PubSubNotification_Event "ERROR_CHANGED"

{-# COMPLETE
  GooglePrivacyDlpV2PubSubNotification_Event_EVENTTYPEUNSPECIFIED,
  GooglePrivacyDlpV2PubSubNotification_Event_NEWPROFILE,
  GooglePrivacyDlpV2PubSubNotification_Event_CHANGEDPROFILE,
  GooglePrivacyDlpV2PubSubNotification_Event_SCOREINCREASED,
  GooglePrivacyDlpV2PubSubNotification_Event_ERRORCHANGED,
  GooglePrivacyDlpV2PubSubNotification_Event
  #-}

-- | The score applied to the resource.
newtype GooglePrivacyDlpV2SensitivityScore_Score = GooglePrivacyDlpV2SensitivityScore_Score {fromGooglePrivacyDlpV2SensitivityScore_Score :: Core.Text}
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

-- | Unused.
pattern GooglePrivacyDlpV2SensitivityScore_Score_SENSITIVITYSCOREUNSPECIFIED :: GooglePrivacyDlpV2SensitivityScore_Score
pattern GooglePrivacyDlpV2SensitivityScore_Score_SENSITIVITYSCOREUNSPECIFIED = GooglePrivacyDlpV2SensitivityScore_Score "SENSITIVITY_SCORE_UNSPECIFIED"

-- | No sensitive information detected. Limited access.
pattern GooglePrivacyDlpV2SensitivityScore_Score_SENSITIVITYLOW :: GooglePrivacyDlpV2SensitivityScore_Score
pattern GooglePrivacyDlpV2SensitivityScore_Score_SENSITIVITYLOW = GooglePrivacyDlpV2SensitivityScore_Score "SENSITIVITY_LOW"

-- | Medium risk - PII, potentially sensitive data, or fields with free-text data that are at higher risk of having intermittent sensitive data. Consider limiting access.
pattern GooglePrivacyDlpV2SensitivityScore_Score_SENSITIVITYMODERATE :: GooglePrivacyDlpV2SensitivityScore_Score
pattern GooglePrivacyDlpV2SensitivityScore_Score_SENSITIVITYMODERATE = GooglePrivacyDlpV2SensitivityScore_Score "SENSITIVITY_MODERATE"

-- | High risk – SPII may be present. Exfiltration of data may lead to user data loss. Re-identification of users may be possible. Consider limiting usage and or removing SPII.
pattern GooglePrivacyDlpV2SensitivityScore_Score_SENSITIVITYHIGH :: GooglePrivacyDlpV2SensitivityScore_Score
pattern GooglePrivacyDlpV2SensitivityScore_Score_SENSITIVITYHIGH = GooglePrivacyDlpV2SensitivityScore_Score "SENSITIVITY_HIGH"

{-# COMPLETE
  GooglePrivacyDlpV2SensitivityScore_Score_SENSITIVITYSCOREUNSPECIFIED,
  GooglePrivacyDlpV2SensitivityScore_Score_SENSITIVITYLOW,
  GooglePrivacyDlpV2SensitivityScore_Score_SENSITIVITYMODERATE,
  GooglePrivacyDlpV2SensitivityScore_Score_SENSITIVITYHIGH,
  GooglePrivacyDlpV2SensitivityScore_Score
  #-}

-- | Stored info type version state. Read-only, updated by the system during dictionary creation.
newtype GooglePrivacyDlpV2StoredInfoTypeVersion_State = GooglePrivacyDlpV2StoredInfoTypeVersion_State {fromGooglePrivacyDlpV2StoredInfoTypeVersion_State :: Core.Text}
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
  GooglePrivacyDlpV2StoredInfoTypeVersion_State
  #-}

-- | Outcome of the transformation.
newtype GooglePrivacyDlpV2SummaryResult_Code = GooglePrivacyDlpV2SummaryResult_Code {fromGooglePrivacyDlpV2SummaryResult_Code :: Core.Text}
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
  GooglePrivacyDlpV2SummaryResult_Code
  #-}

-- | How the table is encrypted.
newtype GooglePrivacyDlpV2TableDataProfile_EncryptionStatus = GooglePrivacyDlpV2TableDataProfile_EncryptionStatus {fromGooglePrivacyDlpV2TableDataProfile_EncryptionStatus :: Core.Text}
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

-- | Unused.
pattern GooglePrivacyDlpV2TableDataProfile_EncryptionStatus_ENCRYPTIONSTATUSUNSPECIFIED :: GooglePrivacyDlpV2TableDataProfile_EncryptionStatus
pattern GooglePrivacyDlpV2TableDataProfile_EncryptionStatus_ENCRYPTIONSTATUSUNSPECIFIED = GooglePrivacyDlpV2TableDataProfile_EncryptionStatus "ENCRYPTION_STATUS_UNSPECIFIED"

-- | Google manages server-side encryption keys on your behalf.
pattern GooglePrivacyDlpV2TableDataProfile_EncryptionStatus_ENCRYPTIONGOOGLEMANAGED :: GooglePrivacyDlpV2TableDataProfile_EncryptionStatus
pattern GooglePrivacyDlpV2TableDataProfile_EncryptionStatus_ENCRYPTIONGOOGLEMANAGED = GooglePrivacyDlpV2TableDataProfile_EncryptionStatus "ENCRYPTION_GOOGLE_MANAGED"

-- | Customer provides the key.
pattern GooglePrivacyDlpV2TableDataProfile_EncryptionStatus_ENCRYPTIONCUSTOMERMANAGED :: GooglePrivacyDlpV2TableDataProfile_EncryptionStatus
pattern GooglePrivacyDlpV2TableDataProfile_EncryptionStatus_ENCRYPTIONCUSTOMERMANAGED = GooglePrivacyDlpV2TableDataProfile_EncryptionStatus "ENCRYPTION_CUSTOMER_MANAGED"

{-# COMPLETE
  GooglePrivacyDlpV2TableDataProfile_EncryptionStatus_ENCRYPTIONSTATUSUNSPECIFIED,
  GooglePrivacyDlpV2TableDataProfile_EncryptionStatus_ENCRYPTIONGOOGLEMANAGED,
  GooglePrivacyDlpV2TableDataProfile_EncryptionStatus_ENCRYPTIONCUSTOMERMANAGED,
  GooglePrivacyDlpV2TableDataProfile_EncryptionStatus
  #-}

-- | How broadly a resource has been shared.
newtype GooglePrivacyDlpV2TableDataProfile_ResourceVisibility = GooglePrivacyDlpV2TableDataProfile_ResourceVisibility {fromGooglePrivacyDlpV2TableDataProfile_ResourceVisibility :: Core.Text}
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

-- | Unused.
pattern GooglePrivacyDlpV2TableDataProfile_ResourceVisibility_RESOURCEVISIBILITYUNSPECIFIED :: GooglePrivacyDlpV2TableDataProfile_ResourceVisibility
pattern GooglePrivacyDlpV2TableDataProfile_ResourceVisibility_RESOURCEVISIBILITYUNSPECIFIED = GooglePrivacyDlpV2TableDataProfile_ResourceVisibility "RESOURCE_VISIBILITY_UNSPECIFIED"

-- | Visible to any user.
pattern GooglePrivacyDlpV2TableDataProfile_ResourceVisibility_RESOURCEVISIBILITYPUBLIC :: GooglePrivacyDlpV2TableDataProfile_ResourceVisibility
pattern GooglePrivacyDlpV2TableDataProfile_ResourceVisibility_RESOURCEVISIBILITYPUBLIC = GooglePrivacyDlpV2TableDataProfile_ResourceVisibility "RESOURCE_VISIBILITY_PUBLIC"

-- | Visible only to specific users.
pattern GooglePrivacyDlpV2TableDataProfile_ResourceVisibility_RESOURCEVISIBILITYRESTRICTED :: GooglePrivacyDlpV2TableDataProfile_ResourceVisibility
pattern GooglePrivacyDlpV2TableDataProfile_ResourceVisibility_RESOURCEVISIBILITYRESTRICTED = GooglePrivacyDlpV2TableDataProfile_ResourceVisibility "RESOURCE_VISIBILITY_RESTRICTED"

{-# COMPLETE
  GooglePrivacyDlpV2TableDataProfile_ResourceVisibility_RESOURCEVISIBILITYUNSPECIFIED,
  GooglePrivacyDlpV2TableDataProfile_ResourceVisibility_RESOURCEVISIBILITYPUBLIC,
  GooglePrivacyDlpV2TableDataProfile_ResourceVisibility_RESOURCEVISIBILITYRESTRICTED,
  GooglePrivacyDlpV2TableDataProfile_ResourceVisibility
  #-}

-- | State of a profile.
newtype GooglePrivacyDlpV2TableDataProfile_State = GooglePrivacyDlpV2TableDataProfile_State {fromGooglePrivacyDlpV2TableDataProfile_State :: Core.Text}
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

-- | Unused.
pattern GooglePrivacyDlpV2TableDataProfile_State_STATEUNSPECIFIED :: GooglePrivacyDlpV2TableDataProfile_State
pattern GooglePrivacyDlpV2TableDataProfile_State_STATEUNSPECIFIED = GooglePrivacyDlpV2TableDataProfile_State "STATE_UNSPECIFIED"

-- | The profile is currently running. Once a profile has finished it will transition to DONE.
pattern GooglePrivacyDlpV2TableDataProfile_State_Running :: GooglePrivacyDlpV2TableDataProfile_State
pattern GooglePrivacyDlpV2TableDataProfile_State_Running = GooglePrivacyDlpV2TableDataProfile_State "RUNNING"

-- | The profile is no longer generating. If profile_status.status.code is 0, the profile succeeded, otherwise, it failed.
pattern GooglePrivacyDlpV2TableDataProfile_State_Done :: GooglePrivacyDlpV2TableDataProfile_State
pattern GooglePrivacyDlpV2TableDataProfile_State_Done = GooglePrivacyDlpV2TableDataProfile_State "DONE"

{-# COMPLETE
  GooglePrivacyDlpV2TableDataProfile_State_STATEUNSPECIFIED,
  GooglePrivacyDlpV2TableDataProfile_State_Running,
  GooglePrivacyDlpV2TableDataProfile_State_Done,
  GooglePrivacyDlpV2TableDataProfile_State
  #-}

-- | The part of the time to keep.
newtype GooglePrivacyDlpV2TimePartConfig_PartToExtract = GooglePrivacyDlpV2TimePartConfig_PartToExtract {fromGooglePrivacyDlpV2TimePartConfig_PartToExtract :: Core.Text}
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
  GooglePrivacyDlpV2TimePartConfig_PartToExtract
  #-}

-- | The transformation type.
newtype GooglePrivacyDlpV2TransformationDescription_Type = GooglePrivacyDlpV2TransformationDescription_Type {fromGooglePrivacyDlpV2TransformationDescription_Type :: Core.Text}
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

-- | Unused
pattern GooglePrivacyDlpV2TransformationDescription_Type_TRANSFORMATIONTYPEUNSPECIFIED :: GooglePrivacyDlpV2TransformationDescription_Type
pattern GooglePrivacyDlpV2TransformationDescription_Type_TRANSFORMATIONTYPEUNSPECIFIED = GooglePrivacyDlpV2TransformationDescription_Type "TRANSFORMATION_TYPE_UNSPECIFIED"

-- | Record suppression
pattern GooglePrivacyDlpV2TransformationDescription_Type_RECORDSUPPRESSION :: GooglePrivacyDlpV2TransformationDescription_Type
pattern GooglePrivacyDlpV2TransformationDescription_Type_RECORDSUPPRESSION = GooglePrivacyDlpV2TransformationDescription_Type "RECORD_SUPPRESSION"

-- | Replace value
pattern GooglePrivacyDlpV2TransformationDescription_Type_REPLACEVALUE :: GooglePrivacyDlpV2TransformationDescription_Type
pattern GooglePrivacyDlpV2TransformationDescription_Type_REPLACEVALUE = GooglePrivacyDlpV2TransformationDescription_Type "REPLACE_VALUE"

-- | Replace value using a dictionary.
pattern GooglePrivacyDlpV2TransformationDescription_Type_REPLACEDICTIONARY :: GooglePrivacyDlpV2TransformationDescription_Type
pattern GooglePrivacyDlpV2TransformationDescription_Type_REPLACEDICTIONARY = GooglePrivacyDlpV2TransformationDescription_Type "REPLACE_DICTIONARY"

-- | Redact
pattern GooglePrivacyDlpV2TransformationDescription_Type_Redact :: GooglePrivacyDlpV2TransformationDescription_Type
pattern GooglePrivacyDlpV2TransformationDescription_Type_Redact = GooglePrivacyDlpV2TransformationDescription_Type "REDACT"

-- | Character mask
pattern GooglePrivacyDlpV2TransformationDescription_Type_CHARACTERMASK :: GooglePrivacyDlpV2TransformationDescription_Type
pattern GooglePrivacyDlpV2TransformationDescription_Type_CHARACTERMASK = GooglePrivacyDlpV2TransformationDescription_Type "CHARACTER_MASK"

-- | FFX-FPE
pattern GooglePrivacyDlpV2TransformationDescription_Type_CRYPTOREPLACEFFXFPE :: GooglePrivacyDlpV2TransformationDescription_Type
pattern GooglePrivacyDlpV2TransformationDescription_Type_CRYPTOREPLACEFFXFPE = GooglePrivacyDlpV2TransformationDescription_Type "CRYPTO_REPLACE_FFX_FPE"

-- | Fixed size bucketing
pattern GooglePrivacyDlpV2TransformationDescription_Type_FIXEDSIZEBUCKETING :: GooglePrivacyDlpV2TransformationDescription_Type
pattern GooglePrivacyDlpV2TransformationDescription_Type_FIXEDSIZEBUCKETING = GooglePrivacyDlpV2TransformationDescription_Type "FIXED_SIZE_BUCKETING"

-- | Bucketing
pattern GooglePrivacyDlpV2TransformationDescription_Type_Bucketing :: GooglePrivacyDlpV2TransformationDescription_Type
pattern GooglePrivacyDlpV2TransformationDescription_Type_Bucketing = GooglePrivacyDlpV2TransformationDescription_Type "BUCKETING"

-- | Replace with info type
pattern GooglePrivacyDlpV2TransformationDescription_Type_REPLACEWITHINFOTYPE :: GooglePrivacyDlpV2TransformationDescription_Type
pattern GooglePrivacyDlpV2TransformationDescription_Type_REPLACEWITHINFOTYPE = GooglePrivacyDlpV2TransformationDescription_Type "REPLACE_WITH_INFO_TYPE"

-- | Time part
pattern GooglePrivacyDlpV2TransformationDescription_Type_TIMEPART :: GooglePrivacyDlpV2TransformationDescription_Type
pattern GooglePrivacyDlpV2TransformationDescription_Type_TIMEPART = GooglePrivacyDlpV2TransformationDescription_Type "TIME_PART"

-- | Crypto hash
pattern GooglePrivacyDlpV2TransformationDescription_Type_CRYPTOHASH :: GooglePrivacyDlpV2TransformationDescription_Type
pattern GooglePrivacyDlpV2TransformationDescription_Type_CRYPTOHASH = GooglePrivacyDlpV2TransformationDescription_Type "CRYPTO_HASH"

-- | Date shift
pattern GooglePrivacyDlpV2TransformationDescription_Type_DATESHIFT :: GooglePrivacyDlpV2TransformationDescription_Type
pattern GooglePrivacyDlpV2TransformationDescription_Type_DATESHIFT = GooglePrivacyDlpV2TransformationDescription_Type "DATE_SHIFT"

-- | Deterministic crypto
pattern GooglePrivacyDlpV2TransformationDescription_Type_CRYPTODETERMINISTICCONFIG :: GooglePrivacyDlpV2TransformationDescription_Type
pattern GooglePrivacyDlpV2TransformationDescription_Type_CRYPTODETERMINISTICCONFIG = GooglePrivacyDlpV2TransformationDescription_Type "CRYPTO_DETERMINISTIC_CONFIG"

-- | Redact image
pattern GooglePrivacyDlpV2TransformationDescription_Type_REDACTIMAGE :: GooglePrivacyDlpV2TransformationDescription_Type
pattern GooglePrivacyDlpV2TransformationDescription_Type_REDACTIMAGE = GooglePrivacyDlpV2TransformationDescription_Type "REDACT_IMAGE"

{-# COMPLETE
  GooglePrivacyDlpV2TransformationDescription_Type_TRANSFORMATIONTYPEUNSPECIFIED,
  GooglePrivacyDlpV2TransformationDescription_Type_RECORDSUPPRESSION,
  GooglePrivacyDlpV2TransformationDescription_Type_REPLACEVALUE,
  GooglePrivacyDlpV2TransformationDescription_Type_REPLACEDICTIONARY,
  GooglePrivacyDlpV2TransformationDescription_Type_Redact,
  GooglePrivacyDlpV2TransformationDescription_Type_CHARACTERMASK,
  GooglePrivacyDlpV2TransformationDescription_Type_CRYPTOREPLACEFFXFPE,
  GooglePrivacyDlpV2TransformationDescription_Type_FIXEDSIZEBUCKETING,
  GooglePrivacyDlpV2TransformationDescription_Type_Bucketing,
  GooglePrivacyDlpV2TransformationDescription_Type_REPLACEWITHINFOTYPE,
  GooglePrivacyDlpV2TransformationDescription_Type_TIMEPART,
  GooglePrivacyDlpV2TransformationDescription_Type_CRYPTOHASH,
  GooglePrivacyDlpV2TransformationDescription_Type_DATESHIFT,
  GooglePrivacyDlpV2TransformationDescription_Type_CRYPTODETERMINISTICCONFIG,
  GooglePrivacyDlpV2TransformationDescription_Type_REDACTIMAGE,
  GooglePrivacyDlpV2TransformationDescription_Type
  #-}

-- | Information about the functionality of the container where this finding occurred, if available.
newtype GooglePrivacyDlpV2TransformationLocation_ContainerType = GooglePrivacyDlpV2TransformationLocation_ContainerType {fromGooglePrivacyDlpV2TransformationLocation_ContainerType :: Core.Text}
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

-- |
pattern GooglePrivacyDlpV2TransformationLocation_ContainerType_TRANSFORMUNKNOWNCONTAINER :: GooglePrivacyDlpV2TransformationLocation_ContainerType
pattern GooglePrivacyDlpV2TransformationLocation_ContainerType_TRANSFORMUNKNOWNCONTAINER = GooglePrivacyDlpV2TransformationLocation_ContainerType "TRANSFORM_UNKNOWN_CONTAINER"

-- |
pattern GooglePrivacyDlpV2TransformationLocation_ContainerType_TRANSFORMBODY :: GooglePrivacyDlpV2TransformationLocation_ContainerType
pattern GooglePrivacyDlpV2TransformationLocation_ContainerType_TRANSFORMBODY = GooglePrivacyDlpV2TransformationLocation_ContainerType "TRANSFORM_BODY"

-- |
pattern GooglePrivacyDlpV2TransformationLocation_ContainerType_TRANSFORMMETADATA :: GooglePrivacyDlpV2TransformationLocation_ContainerType
pattern GooglePrivacyDlpV2TransformationLocation_ContainerType_TRANSFORMMETADATA = GooglePrivacyDlpV2TransformationLocation_ContainerType "TRANSFORM_METADATA"

-- |
pattern GooglePrivacyDlpV2TransformationLocation_ContainerType_TRANSFORMTABLE :: GooglePrivacyDlpV2TransformationLocation_ContainerType
pattern GooglePrivacyDlpV2TransformationLocation_ContainerType_TRANSFORMTABLE = GooglePrivacyDlpV2TransformationLocation_ContainerType "TRANSFORM_TABLE"

{-# COMPLETE
  GooglePrivacyDlpV2TransformationLocation_ContainerType_TRANSFORMUNKNOWNCONTAINER,
  GooglePrivacyDlpV2TransformationLocation_ContainerType_TRANSFORMBODY,
  GooglePrivacyDlpV2TransformationLocation_ContainerType_TRANSFORMMETADATA,
  GooglePrivacyDlpV2TransformationLocation_ContainerType_TRANSFORMTABLE,
  GooglePrivacyDlpV2TransformationLocation_ContainerType
  #-}

-- | Transformation result status type, this will be either SUCCESS, or it will be the reason for why the transformation was not completely successful.
newtype GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType = GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType {fromGooglePrivacyDlpV2TransformationResultStatus_ResultStatusType :: Core.Text}
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

-- |
pattern GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType_STATETYPEUNSPECIFIED :: GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType
pattern GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType_STATETYPEUNSPECIFIED = GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType "STATE_TYPE_UNSPECIFIED"

-- | This will be set when a finding could not be transformed (i.e. outside user set bucket range).
pattern GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType_INVALIDTRANSFORM :: GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType
pattern GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType_INVALIDTRANSFORM = GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType "INVALID_TRANSFORM"

-- | This will be set when a BigQuery transformation was successful but could not be stored back in BigQuery because the transformed row exceeds BigQuery\'s max row size.
pattern GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType_BIGQUERYMAXROWSIZEEXCEEDED :: GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType
pattern GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType_BIGQUERYMAXROWSIZEEXCEEDED = GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType "BIGQUERY_MAX_ROW_SIZE_EXCEEDED"

-- | This will be set when there is a finding in the custom metadata of a file, but at the write time of the transformed file, this key \/ value pair is unretrievable.
pattern GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType_METADATAUNRETRIEVABLE :: GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType
pattern GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType_METADATAUNRETRIEVABLE = GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType "METADATA_UNRETRIEVABLE"

-- | This will be set when the transformation and storing of it is successful.
pattern GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType_Success :: GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType
pattern GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType_Success = GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType "SUCCESS"

{-# COMPLETE
  GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType_STATETYPEUNSPECIFIED,
  GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType_INVALIDTRANSFORM,
  GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType_BIGQUERYMAXROWSIZEEXCEEDED,
  GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType_METADATAUNRETRIEVABLE,
  GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType_Success,
  GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType
  #-}

-- | day of week
newtype GooglePrivacyDlpV2Value_DayOfWeekValue = GooglePrivacyDlpV2Value_DayOfWeekValue {fromGooglePrivacyDlpV2Value_DayOfWeekValue :: Core.Text}
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
  GooglePrivacyDlpV2Value_DayOfWeekValue
  #-}

-- | The type of job. Defaults to @DlpJobType.INSPECT@
newtype OrganizationsLocationsDlpJobsListType = OrganizationsLocationsDlpJobsListType {fromOrganizationsLocationsDlpJobsListType :: Core.Text}
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
  OrganizationsLocationsDlpJobsListType
  #-}

-- | The type of jobs. Will use @DlpJobType.INSPECT@ if not set.
newtype OrganizationsLocationsJobTriggersListType = OrganizationsLocationsJobTriggersListType {fromOrganizationsLocationsJobTriggersListType :: Core.Text}
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
  OrganizationsLocationsJobTriggersListType
  #-}

-- | The type of job. Defaults to @DlpJobType.INSPECT@
newtype ProjectsDlpJobsListType = ProjectsDlpJobsListType {fromProjectsDlpJobsListType :: Core.Text}
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
  ProjectsDlpJobsListType
  #-}

-- | The type of jobs. Will use @DlpJobType.INSPECT@ if not set.
newtype ProjectsJobTriggersListType = ProjectsJobTriggersListType {fromProjectsJobTriggersListType :: Core.Text}
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
  ProjectsJobTriggersListType
  #-}

-- | The type of job. Defaults to @DlpJobType.INSPECT@
newtype ProjectsLocationsDlpJobsListType = ProjectsLocationsDlpJobsListType {fromProjectsLocationsDlpJobsListType :: Core.Text}
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
  ProjectsLocationsDlpJobsListType
  #-}

-- | The type of jobs. Will use @DlpJobType.INSPECT@ if not set.
newtype ProjectsLocationsJobTriggersListType = ProjectsLocationsJobTriggersListType {fromProjectsLocationsJobTriggersListType :: Core.Text}
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
  ProjectsLocationsJobTriggersListType
  #-}
