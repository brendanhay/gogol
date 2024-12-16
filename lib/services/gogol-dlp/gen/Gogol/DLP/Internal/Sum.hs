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

    -- * GooglePrivacyDlpV2AmazonS3BucketConditions_BucketTypesItem
    GooglePrivacyDlpV2AmazonS3BucketConditions_BucketTypesItem
      (
        GooglePrivacyDlpV2AmazonS3BucketConditions_BucketTypesItem_TYPEUNSPECIFIED,
        GooglePrivacyDlpV2AmazonS3BucketConditions_BucketTypesItem_TYPEALLSUPPORTED,
        GooglePrivacyDlpV2AmazonS3BucketConditions_BucketTypesItem_TYPEGENERALPURPOSE,
        ..
      ),

    -- * GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem
    GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem
      (
        GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem_Unspecified,
        GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem_ALLSUPPORTEDCLASSES,
        GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem_Standard,
        GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem_STANDARDINFREQUENTACCESS,
        GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem_GLACIERINSTANTRETRIEVAL,
        GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem_INTELLIGENTTIERING,
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

    -- * GooglePrivacyDlpV2BigQueryTableTypes_TypesItem
    GooglePrivacyDlpV2BigQueryTableTypes_TypesItem
      (
        GooglePrivacyDlpV2BigQueryTableTypes_TypesItem_BIGQUERYTABLETYPEUNSPECIFIED,
        GooglePrivacyDlpV2BigQueryTableTypes_TypesItem_BIGQUERYTABLETYPETABLE,
        GooglePrivacyDlpV2BigQueryTableTypes_TypesItem_BIGQUERYTABLETYPEEXTERNALBIGLAKE,
        GooglePrivacyDlpV2BigQueryTableTypes_TypesItem_BIGQUERYTABLETYPESNAPSHOT,
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
        GooglePrivacyDlpV2ByteContentItem_Type_Audio,
        GooglePrivacyDlpV2ByteContentItem_Type_Video,
        GooglePrivacyDlpV2ByteContentItem_Type_Executable,
        GooglePrivacyDlpV2ByteContentItem_Type_AIMODEL,
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

    -- * GooglePrivacyDlpV2CloudSqlProperties_DatabaseEngine
    GooglePrivacyDlpV2CloudSqlProperties_DatabaseEngine
      (
        GooglePrivacyDlpV2CloudSqlProperties_DatabaseEngine_DATABASEENGINEUNKNOWN,
        GooglePrivacyDlpV2CloudSqlProperties_DatabaseEngine_DATABASEENGINEMYSQL,
        GooglePrivacyDlpV2CloudSqlProperties_DatabaseEngine_DATABASEENGINEPOSTGRES,
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

    -- * GooglePrivacyDlpV2ColumnDataProfile_ColumnType
    GooglePrivacyDlpV2ColumnDataProfile_ColumnType
      (
        GooglePrivacyDlpV2ColumnDataProfile_ColumnType_COLUMNDATATYPEUNSPECIFIED,
        GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPE_INT64,
        GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPEBOOL,
        GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPE_FLOAT64,
        GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPESTRING,
        GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPEBYTES,
        GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPETIMESTAMP,
        GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPEDATE,
        GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPETIME,
        GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPEDATETIME,
        GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPEGEOGRAPHY,
        GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPENUMERIC,
        GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPERECORD,
        GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPEBIGNUMERIC,
        GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPEJSON,
        GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPEINTERVAL,
        GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPERANGEDATE,
        GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPERANGEDATETIME,
        GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPERANGETIMESTAMP,
        ..
      ),

    -- * GooglePrivacyDlpV2ColumnDataProfile_EstimatedNullPercentage
    GooglePrivacyDlpV2ColumnDataProfile_EstimatedNullPercentage
      (
        GooglePrivacyDlpV2ColumnDataProfile_EstimatedNullPercentage_NULLPERCENTAGELEVELUNSPECIFIED,
        GooglePrivacyDlpV2ColumnDataProfile_EstimatedNullPercentage_NULLPERCENTAGEVERYLOW,
        GooglePrivacyDlpV2ColumnDataProfile_EstimatedNullPercentage_NULLPERCENTAGELOW,
        GooglePrivacyDlpV2ColumnDataProfile_EstimatedNullPercentage_NULLPERCENTAGEMEDIUM,
        GooglePrivacyDlpV2ColumnDataProfile_EstimatedNullPercentage_NULLPERCENTAGEHIGH,
        ..
      ),

    -- * GooglePrivacyDlpV2ColumnDataProfile_EstimatedUniquenessScore
    GooglePrivacyDlpV2ColumnDataProfile_EstimatedUniquenessScore
      (
        GooglePrivacyDlpV2ColumnDataProfile_EstimatedUniquenessScore_UNIQUENESSSCORELEVELUNSPECIFIED,
        GooglePrivacyDlpV2ColumnDataProfile_EstimatedUniquenessScore_UNIQUENESSSCORELOW,
        GooglePrivacyDlpV2ColumnDataProfile_EstimatedUniquenessScore_UNIQUENESSSCOREMEDIUM,
        GooglePrivacyDlpV2ColumnDataProfile_EstimatedUniquenessScore_UNIQUENESSSCOREHIGH,
        ..
      ),

    -- * GooglePrivacyDlpV2ColumnDataProfile_PolicyState
    GooglePrivacyDlpV2ColumnDataProfile_PolicyState
      (
        GooglePrivacyDlpV2ColumnDataProfile_PolicyState_COLUMNPOLICYSTATEUNSPECIFIED,
        GooglePrivacyDlpV2ColumnDataProfile_PolicyState_COLUMNPOLICYTAGGED,
        ..
      ),

    -- * GooglePrivacyDlpV2ColumnDataProfile_State
    GooglePrivacyDlpV2ColumnDataProfile_State
      (
        GooglePrivacyDlpV2ColumnDataProfile_State_STATEUNSPECIFIED,
        GooglePrivacyDlpV2ColumnDataProfile_State_Running,
        GooglePrivacyDlpV2ColumnDataProfile_State_Done,
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

    -- * GooglePrivacyDlpV2Connection_State
    GooglePrivacyDlpV2Connection_State
      (
        GooglePrivacyDlpV2Connection_State_CONNECTIONSTATEUNSPECIFIED,
        GooglePrivacyDlpV2Connection_State_MISSINGCREDENTIALS,
        GooglePrivacyDlpV2Connection_State_Available,
        GooglePrivacyDlpV2Connection_State_Error',
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

    -- * GooglePrivacyDlpV2DataProfilePubSubMessage_Event
    GooglePrivacyDlpV2DataProfilePubSubMessage_Event
      (
        GooglePrivacyDlpV2DataProfilePubSubMessage_Event_EVENTTYPEUNSPECIFIED,
        GooglePrivacyDlpV2DataProfilePubSubMessage_Event_NEWPROFILE,
        GooglePrivacyDlpV2DataProfilePubSubMessage_Event_CHANGEDPROFILE,
        GooglePrivacyDlpV2DataProfilePubSubMessage_Event_SCOREINCREASED,
        GooglePrivacyDlpV2DataProfilePubSubMessage_Event_ERRORCHANGED,
        ..
      ),

    -- * GooglePrivacyDlpV2DataRiskLevel_Score
    GooglePrivacyDlpV2DataRiskLevel_Score
      (
        GooglePrivacyDlpV2DataRiskLevel_Score_RISKSCOREUNSPECIFIED,
        GooglePrivacyDlpV2DataRiskLevel_Score_RISKLOW,
        GooglePrivacyDlpV2DataRiskLevel_Score_RISKUNKNOWN,
        GooglePrivacyDlpV2DataRiskLevel_Score_RISKMODERATE,
        GooglePrivacyDlpV2DataRiskLevel_Score_RISKHIGH,
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

    -- * GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem
    GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem
      (
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
        ..
      ),

    -- * GooglePrivacyDlpV2DiscoveryBigQueryConditions_TypeCollection
    GooglePrivacyDlpV2DiscoveryBigQueryConditions_TypeCollection
      (
        GooglePrivacyDlpV2DiscoveryBigQueryConditions_TypeCollection_BIGQUERYCOLLECTIONUNSPECIFIED,
        GooglePrivacyDlpV2DiscoveryBigQueryConditions_TypeCollection_BIGQUERYCOLLECTIONALLTYPES,
        GooglePrivacyDlpV2DiscoveryBigQueryConditions_TypeCollection_BIGQUERYCOLLECTIONONLYSUPPORTEDTYPES,
        ..
      ),

    -- * GooglePrivacyDlpV2DiscoveryCloudSqlConditions_DatabaseEnginesItem
    GooglePrivacyDlpV2DiscoveryCloudSqlConditions_DatabaseEnginesItem
      (
        GooglePrivacyDlpV2DiscoveryCloudSqlConditions_DatabaseEnginesItem_DATABASEENGINEUNSPECIFIED,
        GooglePrivacyDlpV2DiscoveryCloudSqlConditions_DatabaseEnginesItem_ALLSUPPORTEDDATABASEENGINES,
        GooglePrivacyDlpV2DiscoveryCloudSqlConditions_DatabaseEnginesItem_Mysql,
        GooglePrivacyDlpV2DiscoveryCloudSqlConditions_DatabaseEnginesItem_Postgres,
        ..
      ),

    -- * GooglePrivacyDlpV2DiscoveryCloudSqlConditions_TypesItem
    GooglePrivacyDlpV2DiscoveryCloudSqlConditions_TypesItem
      (
        GooglePrivacyDlpV2DiscoveryCloudSqlConditions_TypesItem_DATABASERESOURCETYPEUNSPECIFIED,
        GooglePrivacyDlpV2DiscoveryCloudSqlConditions_TypesItem_DATABASERESOURCETYPEALLSUPPORTEDTYPES,
        GooglePrivacyDlpV2DiscoveryCloudSqlConditions_TypesItem_DATABASERESOURCETYPETABLE,
        ..
      ),

    -- * GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence_RefreshFrequency
    GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence_RefreshFrequency
      (
        GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence_RefreshFrequency_UPDATEFREQUENCYUNSPECIFIED,
        GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence_RefreshFrequency_UPDATEFREQUENCYNEVER,
        GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence_RefreshFrequency_UPDATEFREQUENCYDAILY,
        GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence_RefreshFrequency_UPDATEFREQUENCYMONTHLY,
        ..
      ),

    -- * GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedBucketAttributesItem
    GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedBucketAttributesItem
      (
        GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedBucketAttributesItem_CLOUDSTORAGEBUCKETATTRIBUTEUNSPECIFIED,
        GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedBucketAttributesItem_ALLSUPPORTEDBUCKETS,
        GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedBucketAttributesItem_AUTOCLASSDISABLED,
        GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedBucketAttributesItem_AUTOCLASSENABLED,
        ..
      ),

    -- * GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem
    GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem
      (
        GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem_CLOUDSTORAGEOBJECTATTRIBUTEUNSPECIFIED,
        GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem_ALLSUPPORTEDOBJECTS,
        GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem_Standard,
        GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem_Nearline,
        GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem_Coldline,
        GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem_Archive,
        GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem_Regional,
        GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem_MULTIREGIONAL,
        GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem_DURABLEREDUCEDAVAILABILITY,
        ..
      ),

    -- * GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence_RefreshFrequency
    GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence_RefreshFrequency
      (
        GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence_RefreshFrequency_UPDATEFREQUENCYUNSPECIFIED,
        GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence_RefreshFrequency_UPDATEFREQUENCYNEVER,
        GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence_RefreshFrequency_UPDATEFREQUENCYDAILY,
        GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence_RefreshFrequency_UPDATEFREQUENCYMONTHLY,
        ..
      ),

    -- * GooglePrivacyDlpV2DiscoveryConfig_Status
    GooglePrivacyDlpV2DiscoveryConfig_Status
      (
        GooglePrivacyDlpV2DiscoveryConfig_Status_STATUSUNSPECIFIED,
        GooglePrivacyDlpV2DiscoveryConfig_Status_Running,
        GooglePrivacyDlpV2DiscoveryConfig_Status_Paused,
        ..
      ),

    -- * GooglePrivacyDlpV2DiscoveryGenerationCadence_RefreshFrequency
    GooglePrivacyDlpV2DiscoveryGenerationCadence_RefreshFrequency
      (
        GooglePrivacyDlpV2DiscoveryGenerationCadence_RefreshFrequency_UPDATEFREQUENCYUNSPECIFIED,
        GooglePrivacyDlpV2DiscoveryGenerationCadence_RefreshFrequency_UPDATEFREQUENCYNEVER,
        GooglePrivacyDlpV2DiscoveryGenerationCadence_RefreshFrequency_UPDATEFREQUENCYDAILY,
        GooglePrivacyDlpV2DiscoveryGenerationCadence_RefreshFrequency_UPDATEFREQUENCYMONTHLY,
        ..
      ),

    -- * GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence_Frequency
    GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence_Frequency
      (
        GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence_Frequency_UPDATEFREQUENCYUNSPECIFIED,
        GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence_Frequency_UPDATEFREQUENCYNEVER,
        GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence_Frequency_UPDATEFREQUENCYDAILY,
        GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence_Frequency_UPDATEFREQUENCYMONTHLY,
        ..
      ),

    -- * GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence_RefreshFrequency
    GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence_RefreshFrequency
      (
        GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence_RefreshFrequency_UPDATEFREQUENCYUNSPECIFIED,
        GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence_RefreshFrequency_UPDATEFREQUENCYNEVER,
        GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence_RefreshFrequency_UPDATEFREQUENCYDAILY,
        GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence_RefreshFrequency_UPDATEFREQUENCYMONTHLY,
        ..
      ),

    -- * GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_Frequency
    GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_Frequency
      (
        GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_Frequency_UPDATEFREQUENCYUNSPECIFIED,
        GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_Frequency_UPDATEFREQUENCYNEVER,
        GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_Frequency_UPDATEFREQUENCYDAILY,
        GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_Frequency_UPDATEFREQUENCYMONTHLY,
        ..
      ),

    -- * GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_TypesItem
    GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_TypesItem
      (
        GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_TypesItem_SCHEMAMODIFICATIONUNSPECIFIED,
        GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_TypesItem_SCHEMANEWCOLUMNS,
        GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_TypesItem_SCHEMAREMOVEDCOLUMNS,
        ..
      ),

    -- * GooglePrivacyDlpV2DiscoveryTableModifiedCadence_Frequency
    GooglePrivacyDlpV2DiscoveryTableModifiedCadence_Frequency
      (
        GooglePrivacyDlpV2DiscoveryTableModifiedCadence_Frequency_UPDATEFREQUENCYUNSPECIFIED,
        GooglePrivacyDlpV2DiscoveryTableModifiedCadence_Frequency_UPDATEFREQUENCYNEVER,
        GooglePrivacyDlpV2DiscoveryTableModifiedCadence_Frequency_UPDATEFREQUENCYDAILY,
        GooglePrivacyDlpV2DiscoveryTableModifiedCadence_Frequency_UPDATEFREQUENCYMONTHLY,
        ..
      ),

    -- * GooglePrivacyDlpV2DiscoveryTableModifiedCadence_TypesItem
    GooglePrivacyDlpV2DiscoveryTableModifiedCadence_TypesItem
      (
        GooglePrivacyDlpV2DiscoveryTableModifiedCadence_TypesItem_TABLEMODIFICATIONUNSPECIFIED,
        GooglePrivacyDlpV2DiscoveryTableModifiedCadence_TypesItem_TABLEMODIFIEDTIMESTAMP,
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

    -- * GooglePrivacyDlpV2Error_ExtraInfo
    GooglePrivacyDlpV2Error_ExtraInfo
      (
        GooglePrivacyDlpV2Error_ExtraInfo_ERRORINFOUNSPECIFIED,
        GooglePrivacyDlpV2Error_ExtraInfo_IMAGESCANUNAVAILABLEINREGION,
        GooglePrivacyDlpV2Error_ExtraInfo_FILESTORECLUSTERUNSUPPORTED,
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

    -- * GooglePrivacyDlpV2FileClusterType_Cluster
    GooglePrivacyDlpV2FileClusterType_Cluster
      (
        GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTERUNSPECIFIED,
        GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTERUNKNOWN,
        GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTERTEXT,
        GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTERSTRUCTUREDDATA,
        GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTERSOURCECODE,
        GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTERRICHDOCUMENT,
        GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTERIMAGE,
        GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTERARCHIVE,
        GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTERMULTIMEDIA,
        GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTEREXECUTABLE,
        GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTERAIMODEL,
        ..
      ),

    -- * GooglePrivacyDlpV2FileStoreDataProfile_ResourceVisibility
    GooglePrivacyDlpV2FileStoreDataProfile_ResourceVisibility
      (
        GooglePrivacyDlpV2FileStoreDataProfile_ResourceVisibility_RESOURCEVISIBILITYUNSPECIFIED,
        GooglePrivacyDlpV2FileStoreDataProfile_ResourceVisibility_RESOURCEVISIBILITYPUBLIC,
        GooglePrivacyDlpV2FileStoreDataProfile_ResourceVisibility_RESOURCEVISIBILITYINCONCLUSIVE,
        GooglePrivacyDlpV2FileStoreDataProfile_ResourceVisibility_RESOURCEVISIBILITYRESTRICTED,
        ..
      ),

    -- * GooglePrivacyDlpV2FileStoreDataProfile_State
    GooglePrivacyDlpV2FileStoreDataProfile_State
      (
        GooglePrivacyDlpV2FileStoreDataProfile_State_STATEUNSPECIFIED,
        GooglePrivacyDlpV2FileStoreDataProfile_State_Running,
        GooglePrivacyDlpV2FileStoreDataProfile_State_Done,
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

    -- * GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory
    GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory
      (
        GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory_INDUSTRYUNSPECIFIED,
        GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory_Finance,
        GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory_Health,
        GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory_Telecommunications,
        ..
      ),

    -- * GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
    GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
      (
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_LOCATIONUNSPECIFIED,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Global,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Argentina,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Armenia,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Australia,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Azerbaijan,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Belarus,
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
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Kazakhstan,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Korea,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Mexico,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_THENETHERLANDS,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_NEWZEALAND,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Norway,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Paraguay,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Peru,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Poland,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Portugal,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Russia,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Singapore,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_SOUTHAFRICA,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Spain,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Sweden,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Switzerland,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Taiwan,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Thailand,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Turkey,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Ukraine,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_UNITEDKINGDOM,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_UNITEDSTATES,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Uruguay,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Uzbekistan,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Venezuela,
        GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Internal,
        ..
      ),

    -- * GooglePrivacyDlpV2InfoTypeCategory_TypeCategory
    GooglePrivacyDlpV2InfoTypeCategory_TypeCategory
      (
        GooglePrivacyDlpV2InfoTypeCategory_TypeCategory_TYPEUNSPECIFIED,
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
      (
        GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem_ENUMTYPEUNSPECIFIED,
        GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem_Inspect,
        GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem_RISKANALYSIS,
        ..
      ),

    -- * GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood
    GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood
      (
        GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood_LIKELIHOODUNSPECIFIED,
        GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood_VERYUNLIKELY,
        GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood_Unlikely,
        GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood_Possible,
        GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood_Likely,
        GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood_VERYLIKELY,
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

    -- * GooglePrivacyDlpV2PubSubCondition_MinimumRiskScore
    GooglePrivacyDlpV2PubSubCondition_MinimumRiskScore
      (
        GooglePrivacyDlpV2PubSubCondition_MinimumRiskScore_PROFILESCOREBUCKETUNSPECIFIED,
        GooglePrivacyDlpV2PubSubCondition_MinimumRiskScore_High,
        GooglePrivacyDlpV2PubSubCondition_MinimumRiskScore_MEDIUMORHIGH,
        ..
      ),

    -- * GooglePrivacyDlpV2PubSubCondition_MinimumSensitivityScore
    GooglePrivacyDlpV2PubSubCondition_MinimumSensitivityScore
      (
        GooglePrivacyDlpV2PubSubCondition_MinimumSensitivityScore_PROFILESCOREBUCKETUNSPECIFIED,
        GooglePrivacyDlpV2PubSubCondition_MinimumSensitivityScore_High,
        GooglePrivacyDlpV2PubSubCondition_MinimumSensitivityScore_MEDIUMORHIGH,
        ..
      ),

    -- * GooglePrivacyDlpV2PubSubExpressions_LogicalOperator
    GooglePrivacyDlpV2PubSubExpressions_LogicalOperator
      (
        GooglePrivacyDlpV2PubSubExpressions_LogicalOperator_LOGICALOPERATORUNSPECIFIED,
        GooglePrivacyDlpV2PubSubExpressions_LogicalOperator_OR,
        GooglePrivacyDlpV2PubSubExpressions_LogicalOperator_And,
        ..
      ),

    -- * GooglePrivacyDlpV2PubSubNotification_DetailOfMessage
    GooglePrivacyDlpV2PubSubNotification_DetailOfMessage
      (
        GooglePrivacyDlpV2PubSubNotification_DetailOfMessage_DETAILLEVELUNSPECIFIED,
        GooglePrivacyDlpV2PubSubNotification_DetailOfMessage_TABLEPROFILE,
        GooglePrivacyDlpV2PubSubNotification_DetailOfMessage_RESOURCENAME,
        GooglePrivacyDlpV2PubSubNotification_DetailOfMessage_FILESTOREPROFILE,
        ..
      ),

    -- * GooglePrivacyDlpV2PubSubNotification_Event
    GooglePrivacyDlpV2PubSubNotification_Event
      (
        GooglePrivacyDlpV2PubSubNotification_Event_EVENTTYPEUNSPECIFIED,
        GooglePrivacyDlpV2PubSubNotification_Event_NEWPROFILE,
        GooglePrivacyDlpV2PubSubNotification_Event_CHANGEDPROFILE,
        GooglePrivacyDlpV2PubSubNotification_Event_SCOREINCREASED,
        GooglePrivacyDlpV2PubSubNotification_Event_ERRORCHANGED,
        ..
      ),

    -- * GooglePrivacyDlpV2SchemaModifiedCadence_Frequency
    GooglePrivacyDlpV2SchemaModifiedCadence_Frequency
      (
        GooglePrivacyDlpV2SchemaModifiedCadence_Frequency_UPDATEFREQUENCYUNSPECIFIED,
        GooglePrivacyDlpV2SchemaModifiedCadence_Frequency_UPDATEFREQUENCYNEVER,
        GooglePrivacyDlpV2SchemaModifiedCadence_Frequency_UPDATEFREQUENCYDAILY,
        GooglePrivacyDlpV2SchemaModifiedCadence_Frequency_UPDATEFREQUENCYMONTHLY,
        ..
      ),

    -- * GooglePrivacyDlpV2SchemaModifiedCadence_TypesItem
    GooglePrivacyDlpV2SchemaModifiedCadence_TypesItem
      (
        GooglePrivacyDlpV2SchemaModifiedCadence_TypesItem_SQLSCHEMAMODIFICATIONUNSPECIFIED,
        GooglePrivacyDlpV2SchemaModifiedCadence_TypesItem_NEWCOLUMNS,
        GooglePrivacyDlpV2SchemaModifiedCadence_TypesItem_REMOVEDCOLUMNS,
        ..
      ),

    -- * GooglePrivacyDlpV2SensitivityScore_Score
    GooglePrivacyDlpV2SensitivityScore_Score
      (
        GooglePrivacyDlpV2SensitivityScore_Score_SENSITIVITYSCOREUNSPECIFIED,
        GooglePrivacyDlpV2SensitivityScore_Score_SENSITIVITYLOW,
        GooglePrivacyDlpV2SensitivityScore_Score_SENSITIVITYUNKNOWN,
        GooglePrivacyDlpV2SensitivityScore_Score_SENSITIVITYMODERATE,
        GooglePrivacyDlpV2SensitivityScore_Score_SENSITIVITYHIGH,
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

    -- * GooglePrivacyDlpV2TableDataProfile_EncryptionStatus
    GooglePrivacyDlpV2TableDataProfile_EncryptionStatus
      (
        GooglePrivacyDlpV2TableDataProfile_EncryptionStatus_ENCRYPTIONSTATUSUNSPECIFIED,
        GooglePrivacyDlpV2TableDataProfile_EncryptionStatus_ENCRYPTIONGOOGLEMANAGED,
        GooglePrivacyDlpV2TableDataProfile_EncryptionStatus_ENCRYPTIONCUSTOMERMANAGED,
        ..
      ),

    -- * GooglePrivacyDlpV2TableDataProfile_ResourceVisibility
    GooglePrivacyDlpV2TableDataProfile_ResourceVisibility
      (
        GooglePrivacyDlpV2TableDataProfile_ResourceVisibility_RESOURCEVISIBILITYUNSPECIFIED,
        GooglePrivacyDlpV2TableDataProfile_ResourceVisibility_RESOURCEVISIBILITYPUBLIC,
        GooglePrivacyDlpV2TableDataProfile_ResourceVisibility_RESOURCEVISIBILITYINCONCLUSIVE,
        GooglePrivacyDlpV2TableDataProfile_ResourceVisibility_RESOURCEVISIBILITYRESTRICTED,
        ..
      ),

    -- * GooglePrivacyDlpV2TableDataProfile_State
    GooglePrivacyDlpV2TableDataProfile_State
      (
        GooglePrivacyDlpV2TableDataProfile_State_STATEUNSPECIFIED,
        GooglePrivacyDlpV2TableDataProfile_State_Running,
        GooglePrivacyDlpV2TableDataProfile_State_Done,
        ..
      ),

    -- * GooglePrivacyDlpV2TagResources_ProfileGenerationsToTagItem
    GooglePrivacyDlpV2TagResources_ProfileGenerationsToTagItem
      (
        GooglePrivacyDlpV2TagResources_ProfileGenerationsToTagItem_PROFILEGENERATIONUNSPECIFIED,
        GooglePrivacyDlpV2TagResources_ProfileGenerationsToTagItem_PROFILEGENERATIONNEW,
        GooglePrivacyDlpV2TagResources_ProfileGenerationsToTagItem_PROFILEGENERATIONUPDATE,
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

    -- * GooglePrivacyDlpV2TransformationDescription_Type
    GooglePrivacyDlpV2TransformationDescription_Type
      (
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
        ..
      ),

    -- * GooglePrivacyDlpV2TransformationLocation_ContainerType
    GooglePrivacyDlpV2TransformationLocation_ContainerType
      (
        GooglePrivacyDlpV2TransformationLocation_ContainerType_TRANSFORMUNKNOWNCONTAINER,
        GooglePrivacyDlpV2TransformationLocation_ContainerType_TRANSFORMBODY,
        GooglePrivacyDlpV2TransformationLocation_ContainerType_TRANSFORMMETADATA,
        GooglePrivacyDlpV2TransformationLocation_ContainerType_TRANSFORMTABLE,
        ..
      ),

    -- * GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType
    GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType
      (
        GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType_STATETYPEUNSPECIFIED,
        GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType_INVALIDTRANSFORM,
        GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType_BIGQUERYMAXROWSIZEEXCEEDED,
        GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType_METADATAUNRETRIEVABLE,
        GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType_Success,
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

newtype GooglePrivacyDlpV2AmazonS3BucketConditions_BucketTypesItem = GooglePrivacyDlpV2AmazonS3BucketConditions_BucketTypesItem { fromGooglePrivacyDlpV2AmazonS3BucketConditions_BucketTypesItem :: Core.Text }
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
pattern GooglePrivacyDlpV2AmazonS3BucketConditions_BucketTypesItem_TYPEUNSPECIFIED :: GooglePrivacyDlpV2AmazonS3BucketConditions_BucketTypesItem
pattern GooglePrivacyDlpV2AmazonS3BucketConditions_BucketTypesItem_TYPEUNSPECIFIED = GooglePrivacyDlpV2AmazonS3BucketConditions_BucketTypesItem "TYPE_UNSPECIFIED"

-- | All supported classes.
pattern GooglePrivacyDlpV2AmazonS3BucketConditions_BucketTypesItem_TYPEALLSUPPORTED :: GooglePrivacyDlpV2AmazonS3BucketConditions_BucketTypesItem
pattern GooglePrivacyDlpV2AmazonS3BucketConditions_BucketTypesItem_TYPEALLSUPPORTED = GooglePrivacyDlpV2AmazonS3BucketConditions_BucketTypesItem "TYPE_ALL_SUPPORTED"

-- | A general purpose Amazon S3 bucket.
pattern GooglePrivacyDlpV2AmazonS3BucketConditions_BucketTypesItem_TYPEGENERALPURPOSE :: GooglePrivacyDlpV2AmazonS3BucketConditions_BucketTypesItem
pattern GooglePrivacyDlpV2AmazonS3BucketConditions_BucketTypesItem_TYPEGENERALPURPOSE = GooglePrivacyDlpV2AmazonS3BucketConditions_BucketTypesItem "TYPE_GENERAL_PURPOSE"

{-# COMPLETE
  GooglePrivacyDlpV2AmazonS3BucketConditions_BucketTypesItem_TYPEUNSPECIFIED,
  GooglePrivacyDlpV2AmazonS3BucketConditions_BucketTypesItem_TYPEALLSUPPORTED,
  GooglePrivacyDlpV2AmazonS3BucketConditions_BucketTypesItem_TYPEGENERALPURPOSE,
  GooglePrivacyDlpV2AmazonS3BucketConditions_BucketTypesItem #-}

newtype GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem = GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem { fromGooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem :: Core.Text }
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
pattern GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem_Unspecified :: GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem
pattern GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem_Unspecified = GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem "UNSPECIFIED"

-- | All supported classes.
pattern GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem_ALLSUPPORTEDCLASSES :: GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem
pattern GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem_ALLSUPPORTEDCLASSES = GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem "ALL_SUPPORTED_CLASSES"

-- | Standard object class.
pattern GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem_Standard :: GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem
pattern GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem_Standard = GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem "STANDARD"

-- | Standard - infrequent access object class.
pattern GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem_STANDARDINFREQUENTACCESS :: GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem
pattern GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem_STANDARDINFREQUENTACCESS = GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem "STANDARD_INFREQUENT_ACCESS"

-- | Glacier - instant retrieval object class.
pattern GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem_GLACIERINSTANTRETRIEVAL :: GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem
pattern GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem_GLACIERINSTANTRETRIEVAL = GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem "GLACIER_INSTANT_RETRIEVAL"

-- | Objects in the S3 Intelligent-Tiering access tiers.
pattern GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem_INTELLIGENTTIERING :: GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem
pattern GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem_INTELLIGENTTIERING = GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem "INTELLIGENT_TIERING"

{-# COMPLETE
  GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem_Unspecified,
  GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem_ALLSUPPORTEDCLASSES,
  GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem_Standard,
  GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem_STANDARDINFREQUENTACCESS,
  GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem_GLACIERINSTANTRETRIEVAL,
  GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem_INTELLIGENTTIERING,
  GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem #-}

-- | How to sample the data.
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

-- | No sampling.
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

newtype GooglePrivacyDlpV2BigQueryTableTypes_TypesItem = GooglePrivacyDlpV2BigQueryTableTypes_TypesItem { fromGooglePrivacyDlpV2BigQueryTableTypes_TypesItem :: Core.Text }
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
pattern GooglePrivacyDlpV2BigQueryTableTypes_TypesItem_BIGQUERYTABLETYPEUNSPECIFIED :: GooglePrivacyDlpV2BigQueryTableTypes_TypesItem
pattern GooglePrivacyDlpV2BigQueryTableTypes_TypesItem_BIGQUERYTABLETYPEUNSPECIFIED = GooglePrivacyDlpV2BigQueryTableTypes_TypesItem "BIG_QUERY_TABLE_TYPE_UNSPECIFIED"

-- | A normal BigQuery table.
pattern GooglePrivacyDlpV2BigQueryTableTypes_TypesItem_BIGQUERYTABLETYPETABLE :: GooglePrivacyDlpV2BigQueryTableTypes_TypesItem
pattern GooglePrivacyDlpV2BigQueryTableTypes_TypesItem_BIGQUERYTABLETYPETABLE = GooglePrivacyDlpV2BigQueryTableTypes_TypesItem "BIG_QUERY_TABLE_TYPE_TABLE"

-- | A table that references data stored in Cloud Storage.
pattern GooglePrivacyDlpV2BigQueryTableTypes_TypesItem_BIGQUERYTABLETYPEEXTERNALBIGLAKE :: GooglePrivacyDlpV2BigQueryTableTypes_TypesItem
pattern GooglePrivacyDlpV2BigQueryTableTypes_TypesItem_BIGQUERYTABLETYPEEXTERNALBIGLAKE = GooglePrivacyDlpV2BigQueryTableTypes_TypesItem "BIG_QUERY_TABLE_TYPE_EXTERNAL_BIG_LAKE"

-- | A snapshot of a BigQuery table.
pattern GooglePrivacyDlpV2BigQueryTableTypes_TypesItem_BIGQUERYTABLETYPESNAPSHOT :: GooglePrivacyDlpV2BigQueryTableTypes_TypesItem
pattern GooglePrivacyDlpV2BigQueryTableTypes_TypesItem_BIGQUERYTABLETYPESNAPSHOT = GooglePrivacyDlpV2BigQueryTableTypes_TypesItem "BIG_QUERY_TABLE_TYPE_SNAPSHOT"

{-# COMPLETE
  GooglePrivacyDlpV2BigQueryTableTypes_TypesItem_BIGQUERYTABLETYPEUNSPECIFIED,
  GooglePrivacyDlpV2BigQueryTableTypes_TypesItem_BIGQUERYTABLETYPETABLE,
  GooglePrivacyDlpV2BigQueryTableTypes_TypesItem_BIGQUERYTABLETYPEEXTERNALBIGLAKE,
  GooglePrivacyDlpV2BigQueryTableTypes_TypesItem_BIGQUERYTABLETYPESNAPSHOT,
  GooglePrivacyDlpV2BigQueryTableTypes_TypesItem #-}

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

-- | Audio file types. Only used for profiling.
pattern GooglePrivacyDlpV2ByteContentItem_Type_Audio :: GooglePrivacyDlpV2ByteContentItem_Type
pattern GooglePrivacyDlpV2ByteContentItem_Type_Audio = GooglePrivacyDlpV2ByteContentItem_Type "AUDIO"

-- | Video file types. Only used for profiling.
pattern GooglePrivacyDlpV2ByteContentItem_Type_Video :: GooglePrivacyDlpV2ByteContentItem_Type
pattern GooglePrivacyDlpV2ByteContentItem_Type_Video = GooglePrivacyDlpV2ByteContentItem_Type "VIDEO"

-- | Executable file types. Only used for profiling.
pattern GooglePrivacyDlpV2ByteContentItem_Type_Executable :: GooglePrivacyDlpV2ByteContentItem_Type
pattern GooglePrivacyDlpV2ByteContentItem_Type_Executable = GooglePrivacyDlpV2ByteContentItem_Type "EXECUTABLE"

-- | AI model file types. Only used for profiling.
pattern GooglePrivacyDlpV2ByteContentItem_Type_AIMODEL :: GooglePrivacyDlpV2ByteContentItem_Type
pattern GooglePrivacyDlpV2ByteContentItem_Type_AIMODEL = GooglePrivacyDlpV2ByteContentItem_Type "AI_MODEL"

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
  GooglePrivacyDlpV2ByteContentItem_Type_Audio,
  GooglePrivacyDlpV2ByteContentItem_Type_Video,
  GooglePrivacyDlpV2ByteContentItem_Type_Executable,
  GooglePrivacyDlpV2ByteContentItem_Type_AIMODEL,
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

-- | Required. The database engine used by the Cloud SQL instance that this connection configures.
newtype GooglePrivacyDlpV2CloudSqlProperties_DatabaseEngine = GooglePrivacyDlpV2CloudSqlProperties_DatabaseEngine { fromGooglePrivacyDlpV2CloudSqlProperties_DatabaseEngine :: Core.Text }
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

-- | An engine that is not currently supported by Sensitive Data Protection.
pattern GooglePrivacyDlpV2CloudSqlProperties_DatabaseEngine_DATABASEENGINEUNKNOWN :: GooglePrivacyDlpV2CloudSqlProperties_DatabaseEngine
pattern GooglePrivacyDlpV2CloudSqlProperties_DatabaseEngine_DATABASEENGINEUNKNOWN = GooglePrivacyDlpV2CloudSqlProperties_DatabaseEngine "DATABASE_ENGINE_UNKNOWN"

-- | Cloud SQL for MySQL instance.
pattern GooglePrivacyDlpV2CloudSqlProperties_DatabaseEngine_DATABASEENGINEMYSQL :: GooglePrivacyDlpV2CloudSqlProperties_DatabaseEngine
pattern GooglePrivacyDlpV2CloudSqlProperties_DatabaseEngine_DATABASEENGINEMYSQL = GooglePrivacyDlpV2CloudSqlProperties_DatabaseEngine "DATABASE_ENGINE_MYSQL"

-- | Cloud SQL for PostgreSQL instance.
pattern GooglePrivacyDlpV2CloudSqlProperties_DatabaseEngine_DATABASEENGINEPOSTGRES :: GooglePrivacyDlpV2CloudSqlProperties_DatabaseEngine
pattern GooglePrivacyDlpV2CloudSqlProperties_DatabaseEngine_DATABASEENGINEPOSTGRES = GooglePrivacyDlpV2CloudSqlProperties_DatabaseEngine "DATABASE_ENGINE_POSTGRES"

{-# COMPLETE
  GooglePrivacyDlpV2CloudSqlProperties_DatabaseEngine_DATABASEENGINEUNKNOWN,
  GooglePrivacyDlpV2CloudSqlProperties_DatabaseEngine_DATABASEENGINEMYSQL,
  GooglePrivacyDlpV2CloudSqlProperties_DatabaseEngine_DATABASEENGINEPOSTGRES,
  GooglePrivacyDlpV2CloudSqlProperties_DatabaseEngine #-}

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

-- | Includes all file extensions not covered by another entry. Binary scanning attempts to convert the content of the file to utf_8 to scan the file. If you wish to avoid this fall back, specify one or more of the other file types in your storage scan.
pattern GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_BINARYFILE :: GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem
pattern GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_BINARYFILE = GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem "BINARY_FILE"

-- | Included file extensions: asc,asp, aspx, brf, c, cc,cfm, cgi, cpp, csv, cxx, c++, cs, css, dart, dat, dot, eml,, epbub, ged, go, h, hh, hpp, hxx, h++, hs, html, htm, mkd, markdown, m, ml, mli, perl, pl, plist, pm, php, phtml, pht, properties, py, pyw, rb, rbw, rs, rss, rc, scala, sh, sql, swift, tex, shtml, shtm, xhtml, lhs, ics, ini, java, js, json, jsonl, kix, kml, ocaml, md, txt, text, tsv, vb, vcard, vcs, wml, xcodeproj, xml, xsl, xsd, yml, yaml.
pattern GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_TEXTFILE :: GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem
pattern GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_TEXTFILE = GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem "TEXT_FILE"

-- | Included file extensions: bmp, gif, jpg, jpeg, jpe, png. Setting bytes/limit/per/file or bytes/limit/per/file_percent has no effect on image files. Image inspection is restricted to the @global@, @us@, @asia@, and @europe@ regions.
pattern GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_Image :: GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem
pattern GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_Image = GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem "IMAGE"

-- | Microsoft Word files larger than 30 MB will be scanned as binary files. Included file extensions: docx, dotx, docm, dotm. Setting @bytes_limit_per_file@ or @bytes_limit_per_file_percent@ has no effect on Word files.
pattern GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_Word :: GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem
pattern GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_Word = GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem "WORD"

-- | PDF files larger than 30 MB will be scanned as binary files. Included file extensions: pdf. Setting @bytes_limit_per_file@ or @bytes_limit_per_file_percent@ has no effect on PDF files.
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

-- | Microsoft PowerPoint files larger than 30 MB will be scanned as binary files. Included file extensions: pptx, pptm, potx, potm, pot. Setting @bytes_limit_per_file@ or @bytes_limit_per_file_percent@ has no effect on PowerPoint files.
pattern GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_Powerpoint :: GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem
pattern GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem_Powerpoint = GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem "POWERPOINT"

-- | Microsoft Excel files larger than 30 MB will be scanned as binary files. Included file extensions: xlsx, xlsm, xltx, xltm. Setting @bytes_limit_per_file@ or @bytes_limit_per_file_percent@ has no effect on Excel files.
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

-- | How to sample the data.
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

-- | No sampling.
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

-- | The data type of a given column.
newtype GooglePrivacyDlpV2ColumnDataProfile_ColumnType = GooglePrivacyDlpV2ColumnDataProfile_ColumnType { fromGooglePrivacyDlpV2ColumnDataProfile_ColumnType :: Core.Text }
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

-- | Invalid type.
pattern GooglePrivacyDlpV2ColumnDataProfile_ColumnType_COLUMNDATATYPEUNSPECIFIED :: GooglePrivacyDlpV2ColumnDataProfile_ColumnType
pattern GooglePrivacyDlpV2ColumnDataProfile_ColumnType_COLUMNDATATYPEUNSPECIFIED = GooglePrivacyDlpV2ColumnDataProfile_ColumnType "COLUMN_DATA_TYPE_UNSPECIFIED"

-- | Encoded as a string in decimal format.
pattern GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPE_INT64 :: GooglePrivacyDlpV2ColumnDataProfile_ColumnType
pattern GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPE_INT64 = GooglePrivacyDlpV2ColumnDataProfile_ColumnType "TYPE_INT64"

-- | Encoded as a boolean \"false\" or \"true\".
pattern GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPEBOOL :: GooglePrivacyDlpV2ColumnDataProfile_ColumnType
pattern GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPEBOOL = GooglePrivacyDlpV2ColumnDataProfile_ColumnType "TYPE_BOOL"

-- | Encoded as a number, or string \"NaN\", \"Infinity\" or \"-Infinity\".
pattern GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPE_FLOAT64 :: GooglePrivacyDlpV2ColumnDataProfile_ColumnType
pattern GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPE_FLOAT64 = GooglePrivacyDlpV2ColumnDataProfile_ColumnType "TYPE_FLOAT64"

-- | Encoded as a string value.
pattern GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPESTRING :: GooglePrivacyDlpV2ColumnDataProfile_ColumnType
pattern GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPESTRING = GooglePrivacyDlpV2ColumnDataProfile_ColumnType "TYPE_STRING"

-- | Encoded as a base64 string per RFC 4648, section 4.
pattern GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPEBYTES :: GooglePrivacyDlpV2ColumnDataProfile_ColumnType
pattern GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPEBYTES = GooglePrivacyDlpV2ColumnDataProfile_ColumnType "TYPE_BYTES"

-- | Encoded as an RFC 3339 timestamp with mandatory \"Z\" time zone string: 1985-04-12T23:20:50.52Z
pattern GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPETIMESTAMP :: GooglePrivacyDlpV2ColumnDataProfile_ColumnType
pattern GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPETIMESTAMP = GooglePrivacyDlpV2ColumnDataProfile_ColumnType "TYPE_TIMESTAMP"

-- | Encoded as RFC 3339 full-date format string: 1985-04-12
pattern GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPEDATE :: GooglePrivacyDlpV2ColumnDataProfile_ColumnType
pattern GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPEDATE = GooglePrivacyDlpV2ColumnDataProfile_ColumnType "TYPE_DATE"

-- | Encoded as RFC 3339 partial-time format string: 23:20:50.52
pattern GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPETIME :: GooglePrivacyDlpV2ColumnDataProfile_ColumnType
pattern GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPETIME = GooglePrivacyDlpV2ColumnDataProfile_ColumnType "TYPE_TIME"

-- | Encoded as RFC 3339 full-date \"T\" partial-time: 1985-04-12T23:20:50.52
pattern GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPEDATETIME :: GooglePrivacyDlpV2ColumnDataProfile_ColumnType
pattern GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPEDATETIME = GooglePrivacyDlpV2ColumnDataProfile_ColumnType "TYPE_DATETIME"

-- | Encoded as WKT
pattern GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPEGEOGRAPHY :: GooglePrivacyDlpV2ColumnDataProfile_ColumnType
pattern GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPEGEOGRAPHY = GooglePrivacyDlpV2ColumnDataProfile_ColumnType "TYPE_GEOGRAPHY"

-- | Encoded as a decimal string.
pattern GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPENUMERIC :: GooglePrivacyDlpV2ColumnDataProfile_ColumnType
pattern GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPENUMERIC = GooglePrivacyDlpV2ColumnDataProfile_ColumnType "TYPE_NUMERIC"

-- | Container of ordered fields, each with a type and field name.
pattern GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPERECORD :: GooglePrivacyDlpV2ColumnDataProfile_ColumnType
pattern GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPERECORD = GooglePrivacyDlpV2ColumnDataProfile_ColumnType "TYPE_RECORD"

-- | Decimal type.
pattern GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPEBIGNUMERIC :: GooglePrivacyDlpV2ColumnDataProfile_ColumnType
pattern GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPEBIGNUMERIC = GooglePrivacyDlpV2ColumnDataProfile_ColumnType "TYPE_BIGNUMERIC"

-- | Json type.
pattern GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPEJSON :: GooglePrivacyDlpV2ColumnDataProfile_ColumnType
pattern GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPEJSON = GooglePrivacyDlpV2ColumnDataProfile_ColumnType "TYPE_JSON"

-- | Interval type.
pattern GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPEINTERVAL :: GooglePrivacyDlpV2ColumnDataProfile_ColumnType
pattern GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPEINTERVAL = GooglePrivacyDlpV2ColumnDataProfile_ColumnType "TYPE_INTERVAL"

-- | @Range@ type.
pattern GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPERANGEDATE :: GooglePrivacyDlpV2ColumnDataProfile_ColumnType
pattern GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPERANGEDATE = GooglePrivacyDlpV2ColumnDataProfile_ColumnType "TYPE_RANGE_DATE"

-- | @Range@ type.
pattern GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPERANGEDATETIME :: GooglePrivacyDlpV2ColumnDataProfile_ColumnType
pattern GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPERANGEDATETIME = GooglePrivacyDlpV2ColumnDataProfile_ColumnType "TYPE_RANGE_DATETIME"

-- | @Range@ type.
pattern GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPERANGETIMESTAMP :: GooglePrivacyDlpV2ColumnDataProfile_ColumnType
pattern GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPERANGETIMESTAMP = GooglePrivacyDlpV2ColumnDataProfile_ColumnType "TYPE_RANGE_TIMESTAMP"

{-# COMPLETE
  GooglePrivacyDlpV2ColumnDataProfile_ColumnType_COLUMNDATATYPEUNSPECIFIED,
  GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPE_INT64,
  GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPEBOOL,
  GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPE_FLOAT64,
  GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPESTRING,
  GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPEBYTES,
  GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPETIMESTAMP,
  GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPEDATE,
  GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPETIME,
  GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPEDATETIME,
  GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPEGEOGRAPHY,
  GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPENUMERIC,
  GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPERECORD,
  GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPEBIGNUMERIC,
  GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPEJSON,
  GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPEINTERVAL,
  GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPERANGEDATE,
  GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPERANGEDATETIME,
  GooglePrivacyDlpV2ColumnDataProfile_ColumnType_TYPERANGETIMESTAMP,
  GooglePrivacyDlpV2ColumnDataProfile_ColumnType #-}

-- | Approximate percentage of entries being null in the column.
newtype GooglePrivacyDlpV2ColumnDataProfile_EstimatedNullPercentage = GooglePrivacyDlpV2ColumnDataProfile_EstimatedNullPercentage { fromGooglePrivacyDlpV2ColumnDataProfile_EstimatedNullPercentage :: Core.Text }
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
pattern GooglePrivacyDlpV2ColumnDataProfile_EstimatedNullPercentage_NULLPERCENTAGELEVELUNSPECIFIED :: GooglePrivacyDlpV2ColumnDataProfile_EstimatedNullPercentage
pattern GooglePrivacyDlpV2ColumnDataProfile_EstimatedNullPercentage_NULLPERCENTAGELEVELUNSPECIFIED = GooglePrivacyDlpV2ColumnDataProfile_EstimatedNullPercentage "NULL_PERCENTAGE_LEVEL_UNSPECIFIED"

-- | Very few null entries.
pattern GooglePrivacyDlpV2ColumnDataProfile_EstimatedNullPercentage_NULLPERCENTAGEVERYLOW :: GooglePrivacyDlpV2ColumnDataProfile_EstimatedNullPercentage
pattern GooglePrivacyDlpV2ColumnDataProfile_EstimatedNullPercentage_NULLPERCENTAGEVERYLOW = GooglePrivacyDlpV2ColumnDataProfile_EstimatedNullPercentage "NULL_PERCENTAGE_VERY_LOW"

-- | Some null entries.
pattern GooglePrivacyDlpV2ColumnDataProfile_EstimatedNullPercentage_NULLPERCENTAGELOW :: GooglePrivacyDlpV2ColumnDataProfile_EstimatedNullPercentage
pattern GooglePrivacyDlpV2ColumnDataProfile_EstimatedNullPercentage_NULLPERCENTAGELOW = GooglePrivacyDlpV2ColumnDataProfile_EstimatedNullPercentage "NULL_PERCENTAGE_LOW"

-- | A few null entries.
pattern GooglePrivacyDlpV2ColumnDataProfile_EstimatedNullPercentage_NULLPERCENTAGEMEDIUM :: GooglePrivacyDlpV2ColumnDataProfile_EstimatedNullPercentage
pattern GooglePrivacyDlpV2ColumnDataProfile_EstimatedNullPercentage_NULLPERCENTAGEMEDIUM = GooglePrivacyDlpV2ColumnDataProfile_EstimatedNullPercentage "NULL_PERCENTAGE_MEDIUM"

-- | A lot of null entries.
pattern GooglePrivacyDlpV2ColumnDataProfile_EstimatedNullPercentage_NULLPERCENTAGEHIGH :: GooglePrivacyDlpV2ColumnDataProfile_EstimatedNullPercentage
pattern GooglePrivacyDlpV2ColumnDataProfile_EstimatedNullPercentage_NULLPERCENTAGEHIGH = GooglePrivacyDlpV2ColumnDataProfile_EstimatedNullPercentage "NULL_PERCENTAGE_HIGH"

{-# COMPLETE
  GooglePrivacyDlpV2ColumnDataProfile_EstimatedNullPercentage_NULLPERCENTAGELEVELUNSPECIFIED,
  GooglePrivacyDlpV2ColumnDataProfile_EstimatedNullPercentage_NULLPERCENTAGEVERYLOW,
  GooglePrivacyDlpV2ColumnDataProfile_EstimatedNullPercentage_NULLPERCENTAGELOW,
  GooglePrivacyDlpV2ColumnDataProfile_EstimatedNullPercentage_NULLPERCENTAGEMEDIUM,
  GooglePrivacyDlpV2ColumnDataProfile_EstimatedNullPercentage_NULLPERCENTAGEHIGH,
  GooglePrivacyDlpV2ColumnDataProfile_EstimatedNullPercentage #-}

-- | Approximate uniqueness of the column.
newtype GooglePrivacyDlpV2ColumnDataProfile_EstimatedUniquenessScore = GooglePrivacyDlpV2ColumnDataProfile_EstimatedUniquenessScore { fromGooglePrivacyDlpV2ColumnDataProfile_EstimatedUniquenessScore :: Core.Text }
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

-- | Some columns do not have estimated uniqueness. Possible reasons include having too few values.
pattern GooglePrivacyDlpV2ColumnDataProfile_EstimatedUniquenessScore_UNIQUENESSSCORELEVELUNSPECIFIED :: GooglePrivacyDlpV2ColumnDataProfile_EstimatedUniquenessScore
pattern GooglePrivacyDlpV2ColumnDataProfile_EstimatedUniquenessScore_UNIQUENESSSCORELEVELUNSPECIFIED = GooglePrivacyDlpV2ColumnDataProfile_EstimatedUniquenessScore "UNIQUENESS_SCORE_LEVEL_UNSPECIFIED"

-- | Low uniqueness, possibly a boolean, enum or similiarly typed column.
pattern GooglePrivacyDlpV2ColumnDataProfile_EstimatedUniquenessScore_UNIQUENESSSCORELOW :: GooglePrivacyDlpV2ColumnDataProfile_EstimatedUniquenessScore
pattern GooglePrivacyDlpV2ColumnDataProfile_EstimatedUniquenessScore_UNIQUENESSSCORELOW = GooglePrivacyDlpV2ColumnDataProfile_EstimatedUniquenessScore "UNIQUENESS_SCORE_LOW"

-- | Medium uniqueness.
pattern GooglePrivacyDlpV2ColumnDataProfile_EstimatedUniquenessScore_UNIQUENESSSCOREMEDIUM :: GooglePrivacyDlpV2ColumnDataProfile_EstimatedUniquenessScore
pattern GooglePrivacyDlpV2ColumnDataProfile_EstimatedUniquenessScore_UNIQUENESSSCOREMEDIUM = GooglePrivacyDlpV2ColumnDataProfile_EstimatedUniquenessScore "UNIQUENESS_SCORE_MEDIUM"

-- | High uniqueness, possibly a column of free text or unique identifiers.
pattern GooglePrivacyDlpV2ColumnDataProfile_EstimatedUniquenessScore_UNIQUENESSSCOREHIGH :: GooglePrivacyDlpV2ColumnDataProfile_EstimatedUniquenessScore
pattern GooglePrivacyDlpV2ColumnDataProfile_EstimatedUniquenessScore_UNIQUENESSSCOREHIGH = GooglePrivacyDlpV2ColumnDataProfile_EstimatedUniquenessScore "UNIQUENESS_SCORE_HIGH"

{-# COMPLETE
  GooglePrivacyDlpV2ColumnDataProfile_EstimatedUniquenessScore_UNIQUENESSSCORELEVELUNSPECIFIED,
  GooglePrivacyDlpV2ColumnDataProfile_EstimatedUniquenessScore_UNIQUENESSSCORELOW,
  GooglePrivacyDlpV2ColumnDataProfile_EstimatedUniquenessScore_UNIQUENESSSCOREMEDIUM,
  GooglePrivacyDlpV2ColumnDataProfile_EstimatedUniquenessScore_UNIQUENESSSCOREHIGH,
  GooglePrivacyDlpV2ColumnDataProfile_EstimatedUniquenessScore #-}

-- | Indicates if a policy tag has been applied to the column.
newtype GooglePrivacyDlpV2ColumnDataProfile_PolicyState = GooglePrivacyDlpV2ColumnDataProfile_PolicyState { fromGooglePrivacyDlpV2ColumnDataProfile_PolicyState :: Core.Text }
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

-- | No policy tags.
pattern GooglePrivacyDlpV2ColumnDataProfile_PolicyState_COLUMNPOLICYSTATEUNSPECIFIED :: GooglePrivacyDlpV2ColumnDataProfile_PolicyState
pattern GooglePrivacyDlpV2ColumnDataProfile_PolicyState_COLUMNPOLICYSTATEUNSPECIFIED = GooglePrivacyDlpV2ColumnDataProfile_PolicyState "COLUMN_POLICY_STATE_UNSPECIFIED"

-- | Column has policy tag applied.
pattern GooglePrivacyDlpV2ColumnDataProfile_PolicyState_COLUMNPOLICYTAGGED :: GooglePrivacyDlpV2ColumnDataProfile_PolicyState
pattern GooglePrivacyDlpV2ColumnDataProfile_PolicyState_COLUMNPOLICYTAGGED = GooglePrivacyDlpV2ColumnDataProfile_PolicyState "COLUMN_POLICY_TAGGED"

{-# COMPLETE
  GooglePrivacyDlpV2ColumnDataProfile_PolicyState_COLUMNPOLICYSTATEUNSPECIFIED,
  GooglePrivacyDlpV2ColumnDataProfile_PolicyState_COLUMNPOLICYTAGGED,
  GooglePrivacyDlpV2ColumnDataProfile_PolicyState #-}

-- | State of a profile.
newtype GooglePrivacyDlpV2ColumnDataProfile_State = GooglePrivacyDlpV2ColumnDataProfile_State { fromGooglePrivacyDlpV2ColumnDataProfile_State :: Core.Text }
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
pattern GooglePrivacyDlpV2ColumnDataProfile_State_STATEUNSPECIFIED :: GooglePrivacyDlpV2ColumnDataProfile_State
pattern GooglePrivacyDlpV2ColumnDataProfile_State_STATEUNSPECIFIED = GooglePrivacyDlpV2ColumnDataProfile_State "STATE_UNSPECIFIED"

-- | The profile is currently running. Once a profile has finished it will transition to DONE.
pattern GooglePrivacyDlpV2ColumnDataProfile_State_Running :: GooglePrivacyDlpV2ColumnDataProfile_State
pattern GooglePrivacyDlpV2ColumnDataProfile_State_Running = GooglePrivacyDlpV2ColumnDataProfile_State "RUNNING"

-- | The profile is no longer generating. If profile_status.status.code is 0, the profile succeeded, otherwise, it failed.
pattern GooglePrivacyDlpV2ColumnDataProfile_State_Done :: GooglePrivacyDlpV2ColumnDataProfile_State
pattern GooglePrivacyDlpV2ColumnDataProfile_State_Done = GooglePrivacyDlpV2ColumnDataProfile_State "DONE"

{-# COMPLETE
  GooglePrivacyDlpV2ColumnDataProfile_State_STATEUNSPECIFIED,
  GooglePrivacyDlpV2ColumnDataProfile_State_Running,
  GooglePrivacyDlpV2ColumnDataProfile_State_Done,
  GooglePrivacyDlpV2ColumnDataProfile_State #-}

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

-- | Required. The connection\'s state in its lifecycle.
newtype GooglePrivacyDlpV2Connection_State = GooglePrivacyDlpV2Connection_State { fromGooglePrivacyDlpV2Connection_State :: Core.Text }
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
pattern GooglePrivacyDlpV2Connection_State_CONNECTIONSTATEUNSPECIFIED :: GooglePrivacyDlpV2Connection_State
pattern GooglePrivacyDlpV2Connection_State_CONNECTIONSTATEUNSPECIFIED = GooglePrivacyDlpV2Connection_State "CONNECTION_STATE_UNSPECIFIED"

-- | The DLP API automatically created this connection during an initial scan, and it is awaiting full configuration by a user.
pattern GooglePrivacyDlpV2Connection_State_MISSINGCREDENTIALS :: GooglePrivacyDlpV2Connection_State
pattern GooglePrivacyDlpV2Connection_State_MISSINGCREDENTIALS = GooglePrivacyDlpV2Connection_State "MISSING_CREDENTIALS"

-- | A configured connection that has not encountered any errors.
pattern GooglePrivacyDlpV2Connection_State_Available :: GooglePrivacyDlpV2Connection_State
pattern GooglePrivacyDlpV2Connection_State_Available = GooglePrivacyDlpV2Connection_State "AVAILABLE"

-- | A configured connection that encountered errors during its last use. It will not be used again until it is set to AVAILABLE. If the resolution requires external action, then the client must send a request to set the status to AVAILABLE when the connection is ready for use. If the resolution doesn\'t require external action, then any changes to the connection properties will automatically mark it as AVAILABLE.
pattern GooglePrivacyDlpV2Connection_State_Error' :: GooglePrivacyDlpV2Connection_State
pattern GooglePrivacyDlpV2Connection_State_Error' = GooglePrivacyDlpV2Connection_State "ERROR"

{-# COMPLETE
  GooglePrivacyDlpV2Connection_State_CONNECTIONSTATEUNSPECIFIED,
  GooglePrivacyDlpV2Connection_State_MISSINGCREDENTIALS,
  GooglePrivacyDlpV2Connection_State_Available,
  GooglePrivacyDlpV2Connection_State_Error',
  GooglePrivacyDlpV2Connection_State #-}

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
  GooglePrivacyDlpV2CustomInfoType_Likelihood #-}

-- | The event that caused the Pub\/Sub message to be sent.
newtype GooglePrivacyDlpV2DataProfilePubSubMessage_Event = GooglePrivacyDlpV2DataProfilePubSubMessage_Event { fromGooglePrivacyDlpV2DataProfilePubSubMessage_Event :: Core.Text }
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
pattern GooglePrivacyDlpV2DataProfilePubSubMessage_Event_EVENTTYPEUNSPECIFIED :: GooglePrivacyDlpV2DataProfilePubSubMessage_Event
pattern GooglePrivacyDlpV2DataProfilePubSubMessage_Event_EVENTTYPEUNSPECIFIED = GooglePrivacyDlpV2DataProfilePubSubMessage_Event "EVENT_TYPE_UNSPECIFIED"

-- | New profile (not a re-profile).
pattern GooglePrivacyDlpV2DataProfilePubSubMessage_Event_NEWPROFILE :: GooglePrivacyDlpV2DataProfilePubSubMessage_Event
pattern GooglePrivacyDlpV2DataProfilePubSubMessage_Event_NEWPROFILE = GooglePrivacyDlpV2DataProfilePubSubMessage_Event "NEW_PROFILE"

-- | One of the following profile metrics changed: Data risk score, Sensitivity score, Resource visibility, Encryption type, Predicted infoTypes, Other infoTypes
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
  GooglePrivacyDlpV2DataProfilePubSubMessage_Event #-}

-- | The score applied to the resource.
newtype GooglePrivacyDlpV2DataRiskLevel_Score = GooglePrivacyDlpV2DataRiskLevel_Score { fromGooglePrivacyDlpV2DataRiskLevel_Score :: Core.Text }
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
pattern GooglePrivacyDlpV2DataRiskLevel_Score_RISKSCOREUNSPECIFIED :: GooglePrivacyDlpV2DataRiskLevel_Score
pattern GooglePrivacyDlpV2DataRiskLevel_Score_RISKSCOREUNSPECIFIED = GooglePrivacyDlpV2DataRiskLevel_Score "RISK_SCORE_UNSPECIFIED"

-- | Low risk - Lower indication of sensitive data that appears to have additional access restrictions in place or no indication of sensitive data found.
pattern GooglePrivacyDlpV2DataRiskLevel_Score_RISKLOW :: GooglePrivacyDlpV2DataRiskLevel_Score
pattern GooglePrivacyDlpV2DataRiskLevel_Score_RISKLOW = GooglePrivacyDlpV2DataRiskLevel_Score "RISK_LOW"

-- | Unable to determine risk.
pattern GooglePrivacyDlpV2DataRiskLevel_Score_RISKUNKNOWN :: GooglePrivacyDlpV2DataRiskLevel_Score
pattern GooglePrivacyDlpV2DataRiskLevel_Score_RISKUNKNOWN = GooglePrivacyDlpV2DataRiskLevel_Score "RISK_UNKNOWN"

-- | Medium risk - Sensitive data may be present but additional access or fine grain access restrictions appear to be present. Consider limiting access even further or transform data to mask.
pattern GooglePrivacyDlpV2DataRiskLevel_Score_RISKMODERATE :: GooglePrivacyDlpV2DataRiskLevel_Score
pattern GooglePrivacyDlpV2DataRiskLevel_Score_RISKMODERATE = GooglePrivacyDlpV2DataRiskLevel_Score "RISK_MODERATE"

-- | High risk – SPII may be present. Access controls may include public ACLs. Exfiltration of data may lead to user data loss. Re-identification of users may be possible. Consider limiting usage and or removing SPII.
pattern GooglePrivacyDlpV2DataRiskLevel_Score_RISKHIGH :: GooglePrivacyDlpV2DataRiskLevel_Score
pattern GooglePrivacyDlpV2DataRiskLevel_Score_RISKHIGH = GooglePrivacyDlpV2DataRiskLevel_Score "RISK_HIGH"

{-# COMPLETE
  GooglePrivacyDlpV2DataRiskLevel_Score_RISKSCOREUNSPECIFIED,
  GooglePrivacyDlpV2DataRiskLevel_Score_RISKLOW,
  GooglePrivacyDlpV2DataRiskLevel_Score_RISKUNKNOWN,
  GooglePrivacyDlpV2DataRiskLevel_Score_RISKMODERATE,
  GooglePrivacyDlpV2DataRiskLevel_Score_RISKHIGH,
  GooglePrivacyDlpV2DataRiskLevel_Score #-}

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

newtype GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem = GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem { fromGooglePrivacyDlpV2Deidentify_FileTypesToTransformItem :: Core.Text }
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
pattern GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_FILETYPEUNSPECIFIED :: GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem
pattern GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_FILETYPEUNSPECIFIED = GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem "FILE_TYPE_UNSPECIFIED"

-- | Includes all file extensions not covered by another entry. Binary scanning attempts to convert the content of the file to utf_8 to scan the file. If you wish to avoid this fall back, specify one or more of the other file types in your storage scan.
pattern GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_BINARYFILE :: GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem
pattern GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_BINARYFILE = GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem "BINARY_FILE"

-- | Included file extensions: asc,asp, aspx, brf, c, cc,cfm, cgi, cpp, csv, cxx, c++, cs, css, dart, dat, dot, eml,, epbub, ged, go, h, hh, hpp, hxx, h++, hs, html, htm, mkd, markdown, m, ml, mli, perl, pl, plist, pm, php, phtml, pht, properties, py, pyw, rb, rbw, rs, rss, rc, scala, sh, sql, swift, tex, shtml, shtm, xhtml, lhs, ics, ini, java, js, json, jsonl, kix, kml, ocaml, md, txt, text, tsv, vb, vcard, vcs, wml, xcodeproj, xml, xsl, xsd, yml, yaml.
pattern GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_TEXTFILE :: GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem
pattern GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_TEXTFILE = GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem "TEXT_FILE"

-- | Included file extensions: bmp, gif, jpg, jpeg, jpe, png. Setting bytes/limit/per/file or bytes/limit/per/file_percent has no effect on image files. Image inspection is restricted to the @global@, @us@, @asia@, and @europe@ regions.
pattern GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_Image :: GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem
pattern GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_Image = GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem "IMAGE"

-- | Microsoft Word files larger than 30 MB will be scanned as binary files. Included file extensions: docx, dotx, docm, dotm. Setting @bytes_limit_per_file@ or @bytes_limit_per_file_percent@ has no effect on Word files.
pattern GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_Word :: GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem
pattern GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_Word = GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem "WORD"

-- | PDF files larger than 30 MB will be scanned as binary files. Included file extensions: pdf. Setting @bytes_limit_per_file@ or @bytes_limit_per_file_percent@ has no effect on PDF files.
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

-- | Microsoft PowerPoint files larger than 30 MB will be scanned as binary files. Included file extensions: pptx, pptm, potx, potm, pot. Setting @bytes_limit_per_file@ or @bytes_limit_per_file_percent@ has no effect on PowerPoint files.
pattern GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_Powerpoint :: GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem
pattern GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem_Powerpoint = GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem "POWERPOINT"

-- | Microsoft Excel files larger than 30 MB will be scanned as binary files. Included file extensions: xlsx, xlsm, xltx, xltm. Setting @bytes_limit_per_file@ or @bytes_limit_per_file_percent@ has no effect on Excel files.
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
  GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem #-}

-- | Restrict discovery to categories of table types.
newtype GooglePrivacyDlpV2DiscoveryBigQueryConditions_TypeCollection = GooglePrivacyDlpV2DiscoveryBigQueryConditions_TypeCollection { fromGooglePrivacyDlpV2DiscoveryBigQueryConditions_TypeCollection :: Core.Text }
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
pattern GooglePrivacyDlpV2DiscoveryBigQueryConditions_TypeCollection_BIGQUERYCOLLECTIONUNSPECIFIED :: GooglePrivacyDlpV2DiscoveryBigQueryConditions_TypeCollection
pattern GooglePrivacyDlpV2DiscoveryBigQueryConditions_TypeCollection_BIGQUERYCOLLECTIONUNSPECIFIED = GooglePrivacyDlpV2DiscoveryBigQueryConditions_TypeCollection "BIG_QUERY_COLLECTION_UNSPECIFIED"

-- | Automatically generate profiles for all tables, even if the table type is not yet fully supported for analysis. Profiles for unsupported tables will be generated with errors to indicate their partial support. When full support is added, the tables will automatically be profiled during the next scheduled run.
pattern GooglePrivacyDlpV2DiscoveryBigQueryConditions_TypeCollection_BIGQUERYCOLLECTIONALLTYPES :: GooglePrivacyDlpV2DiscoveryBigQueryConditions_TypeCollection
pattern GooglePrivacyDlpV2DiscoveryBigQueryConditions_TypeCollection_BIGQUERYCOLLECTIONALLTYPES = GooglePrivacyDlpV2DiscoveryBigQueryConditions_TypeCollection "BIG_QUERY_COLLECTION_ALL_TYPES"

-- | Only those types fully supported will be profiled. Will expand automatically as Cloud DLP adds support for new table types. Unsupported table types will not have partial profiles generated.
pattern GooglePrivacyDlpV2DiscoveryBigQueryConditions_TypeCollection_BIGQUERYCOLLECTIONONLYSUPPORTEDTYPES :: GooglePrivacyDlpV2DiscoveryBigQueryConditions_TypeCollection
pattern GooglePrivacyDlpV2DiscoveryBigQueryConditions_TypeCollection_BIGQUERYCOLLECTIONONLYSUPPORTEDTYPES = GooglePrivacyDlpV2DiscoveryBigQueryConditions_TypeCollection "BIG_QUERY_COLLECTION_ONLY_SUPPORTED_TYPES"

{-# COMPLETE
  GooglePrivacyDlpV2DiscoveryBigQueryConditions_TypeCollection_BIGQUERYCOLLECTIONUNSPECIFIED,
  GooglePrivacyDlpV2DiscoveryBigQueryConditions_TypeCollection_BIGQUERYCOLLECTIONALLTYPES,
  GooglePrivacyDlpV2DiscoveryBigQueryConditions_TypeCollection_BIGQUERYCOLLECTIONONLYSUPPORTEDTYPES,
  GooglePrivacyDlpV2DiscoveryBigQueryConditions_TypeCollection #-}

newtype GooglePrivacyDlpV2DiscoveryCloudSqlConditions_DatabaseEnginesItem = GooglePrivacyDlpV2DiscoveryCloudSqlConditions_DatabaseEnginesItem { fromGooglePrivacyDlpV2DiscoveryCloudSqlConditions_DatabaseEnginesItem :: Core.Text }
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
pattern GooglePrivacyDlpV2DiscoveryCloudSqlConditions_DatabaseEnginesItem_DATABASEENGINEUNSPECIFIED :: GooglePrivacyDlpV2DiscoveryCloudSqlConditions_DatabaseEnginesItem
pattern GooglePrivacyDlpV2DiscoveryCloudSqlConditions_DatabaseEnginesItem_DATABASEENGINEUNSPECIFIED = GooglePrivacyDlpV2DiscoveryCloudSqlConditions_DatabaseEnginesItem "DATABASE_ENGINE_UNSPECIFIED"

-- | Include all supported database engines.
pattern GooglePrivacyDlpV2DiscoveryCloudSqlConditions_DatabaseEnginesItem_ALLSUPPORTEDDATABASEENGINES :: GooglePrivacyDlpV2DiscoveryCloudSqlConditions_DatabaseEnginesItem
pattern GooglePrivacyDlpV2DiscoveryCloudSqlConditions_DatabaseEnginesItem_ALLSUPPORTEDDATABASEENGINES = GooglePrivacyDlpV2DiscoveryCloudSqlConditions_DatabaseEnginesItem "ALL_SUPPORTED_DATABASE_ENGINES"

-- | MySQL database.
pattern GooglePrivacyDlpV2DiscoveryCloudSqlConditions_DatabaseEnginesItem_Mysql :: GooglePrivacyDlpV2DiscoveryCloudSqlConditions_DatabaseEnginesItem
pattern GooglePrivacyDlpV2DiscoveryCloudSqlConditions_DatabaseEnginesItem_Mysql = GooglePrivacyDlpV2DiscoveryCloudSqlConditions_DatabaseEnginesItem "MYSQL"

-- | PostgreSQL database.
pattern GooglePrivacyDlpV2DiscoveryCloudSqlConditions_DatabaseEnginesItem_Postgres :: GooglePrivacyDlpV2DiscoveryCloudSqlConditions_DatabaseEnginesItem
pattern GooglePrivacyDlpV2DiscoveryCloudSqlConditions_DatabaseEnginesItem_Postgres = GooglePrivacyDlpV2DiscoveryCloudSqlConditions_DatabaseEnginesItem "POSTGRES"

{-# COMPLETE
  GooglePrivacyDlpV2DiscoveryCloudSqlConditions_DatabaseEnginesItem_DATABASEENGINEUNSPECIFIED,
  GooglePrivacyDlpV2DiscoveryCloudSqlConditions_DatabaseEnginesItem_ALLSUPPORTEDDATABASEENGINES,
  GooglePrivacyDlpV2DiscoveryCloudSqlConditions_DatabaseEnginesItem_Mysql,
  GooglePrivacyDlpV2DiscoveryCloudSqlConditions_DatabaseEnginesItem_Postgres,
  GooglePrivacyDlpV2DiscoveryCloudSqlConditions_DatabaseEnginesItem #-}

newtype GooglePrivacyDlpV2DiscoveryCloudSqlConditions_TypesItem = GooglePrivacyDlpV2DiscoveryCloudSqlConditions_TypesItem { fromGooglePrivacyDlpV2DiscoveryCloudSqlConditions_TypesItem :: Core.Text }
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
pattern GooglePrivacyDlpV2DiscoveryCloudSqlConditions_TypesItem_DATABASERESOURCETYPEUNSPECIFIED :: GooglePrivacyDlpV2DiscoveryCloudSqlConditions_TypesItem
pattern GooglePrivacyDlpV2DiscoveryCloudSqlConditions_TypesItem_DATABASERESOURCETYPEUNSPECIFIED = GooglePrivacyDlpV2DiscoveryCloudSqlConditions_TypesItem "DATABASE_RESOURCE_TYPE_UNSPECIFIED"

-- | Includes database resource types that become supported at a later time.
pattern GooglePrivacyDlpV2DiscoveryCloudSqlConditions_TypesItem_DATABASERESOURCETYPEALLSUPPORTEDTYPES :: GooglePrivacyDlpV2DiscoveryCloudSqlConditions_TypesItem
pattern GooglePrivacyDlpV2DiscoveryCloudSqlConditions_TypesItem_DATABASERESOURCETYPEALLSUPPORTEDTYPES = GooglePrivacyDlpV2DiscoveryCloudSqlConditions_TypesItem "DATABASE_RESOURCE_TYPE_ALL_SUPPORTED_TYPES"

-- | Tables.
pattern GooglePrivacyDlpV2DiscoveryCloudSqlConditions_TypesItem_DATABASERESOURCETYPETABLE :: GooglePrivacyDlpV2DiscoveryCloudSqlConditions_TypesItem
pattern GooglePrivacyDlpV2DiscoveryCloudSqlConditions_TypesItem_DATABASERESOURCETYPETABLE = GooglePrivacyDlpV2DiscoveryCloudSqlConditions_TypesItem "DATABASE_RESOURCE_TYPE_TABLE"

{-# COMPLETE
  GooglePrivacyDlpV2DiscoveryCloudSqlConditions_TypesItem_DATABASERESOURCETYPEUNSPECIFIED,
  GooglePrivacyDlpV2DiscoveryCloudSqlConditions_TypesItem_DATABASERESOURCETYPEALLSUPPORTEDTYPES,
  GooglePrivacyDlpV2DiscoveryCloudSqlConditions_TypesItem_DATABASERESOURCETYPETABLE,
  GooglePrivacyDlpV2DiscoveryCloudSqlConditions_TypesItem #-}

-- | Data changes (non-schema changes) in Cloud SQL tables can\'t trigger reprofiling. If you set this field, profiles are refreshed at this frequency regardless of whether the underlying tables have changed. Defaults to never.
newtype GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence_RefreshFrequency = GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence_RefreshFrequency { fromGooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence_RefreshFrequency :: Core.Text }
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

-- | Unspecified.
pattern GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence_RefreshFrequency_UPDATEFREQUENCYUNSPECIFIED :: GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence_RefreshFrequency
pattern GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence_RefreshFrequency_UPDATEFREQUENCYUNSPECIFIED = GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence_RefreshFrequency "UPDATE_FREQUENCY_UNSPECIFIED"

-- | After the data profile is created, it will never be updated.
pattern GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence_RefreshFrequency_UPDATEFREQUENCYNEVER :: GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence_RefreshFrequency
pattern GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence_RefreshFrequency_UPDATEFREQUENCYNEVER = GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence_RefreshFrequency "UPDATE_FREQUENCY_NEVER"

-- | The data profile can be updated up to once every 24 hours.
pattern GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence_RefreshFrequency_UPDATEFREQUENCYDAILY :: GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence_RefreshFrequency
pattern GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence_RefreshFrequency_UPDATEFREQUENCYDAILY = GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence_RefreshFrequency "UPDATE_FREQUENCY_DAILY"

-- | The data profile can be updated up to once every 30 days. Default.
pattern GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence_RefreshFrequency_UPDATEFREQUENCYMONTHLY :: GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence_RefreshFrequency
pattern GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence_RefreshFrequency_UPDATEFREQUENCYMONTHLY = GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence_RefreshFrequency "UPDATE_FREQUENCY_MONTHLY"

{-# COMPLETE
  GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence_RefreshFrequency_UPDATEFREQUENCYUNSPECIFIED,
  GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence_RefreshFrequency_UPDATEFREQUENCYNEVER,
  GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence_RefreshFrequency_UPDATEFREQUENCYDAILY,
  GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence_RefreshFrequency_UPDATEFREQUENCYMONTHLY,
  GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence_RefreshFrequency #-}

newtype GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedBucketAttributesItem = GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedBucketAttributesItem { fromGooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedBucketAttributesItem :: Core.Text }
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
pattern GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedBucketAttributesItem_CLOUDSTORAGEBUCKETATTRIBUTEUNSPECIFIED :: GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedBucketAttributesItem
pattern GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedBucketAttributesItem_CLOUDSTORAGEBUCKETATTRIBUTEUNSPECIFIED = GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedBucketAttributesItem "CLOUD_STORAGE_BUCKET_ATTRIBUTE_UNSPECIFIED"

-- | Scan buckets regardless of the attribute.
pattern GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedBucketAttributesItem_ALLSUPPORTEDBUCKETS :: GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedBucketAttributesItem
pattern GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedBucketAttributesItem_ALLSUPPORTEDBUCKETS = GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedBucketAttributesItem "ALL_SUPPORTED_BUCKETS"

-- | Buckets with autoclass disabled (https:\/\/cloud.google.com\/storage\/docs\/autoclass). Only one of AUTOCLASS/DISABLED or AUTOCLASS/ENABLED should be set.
pattern GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedBucketAttributesItem_AUTOCLASSDISABLED :: GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedBucketAttributesItem
pattern GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedBucketAttributesItem_AUTOCLASSDISABLED = GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedBucketAttributesItem "AUTOCLASS_DISABLED"

-- | Buckets with autoclass enabled (https:\/\/cloud.google.com\/storage\/docs\/autoclass). Only one of AUTOCLASS/DISABLED or AUTOCLASS/ENABLED should be set. Scanning Autoclass-enabled buckets can affect object storage classes.
pattern GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedBucketAttributesItem_AUTOCLASSENABLED :: GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedBucketAttributesItem
pattern GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedBucketAttributesItem_AUTOCLASSENABLED = GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedBucketAttributesItem "AUTOCLASS_ENABLED"

{-# COMPLETE
  GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedBucketAttributesItem_CLOUDSTORAGEBUCKETATTRIBUTEUNSPECIFIED,
  GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedBucketAttributesItem_ALLSUPPORTEDBUCKETS,
  GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedBucketAttributesItem_AUTOCLASSDISABLED,
  GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedBucketAttributesItem_AUTOCLASSENABLED,
  GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedBucketAttributesItem #-}

newtype GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem = GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem { fromGooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem :: Core.Text }
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
pattern GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem_CLOUDSTORAGEOBJECTATTRIBUTEUNSPECIFIED :: GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem
pattern GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem_CLOUDSTORAGEOBJECTATTRIBUTEUNSPECIFIED = GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem "CLOUD_STORAGE_OBJECT_ATTRIBUTE_UNSPECIFIED"

-- | Scan objects regardless of the attribute.
pattern GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem_ALLSUPPORTEDOBJECTS :: GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem
pattern GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem_ALLSUPPORTEDOBJECTS = GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem "ALL_SUPPORTED_OBJECTS"

-- | Scan objects with the standard storage class.
pattern GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem_Standard :: GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem
pattern GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem_Standard = GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem "STANDARD"

-- | Scan objects with the nearline storage class. This will incur retrieval fees.
pattern GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem_Nearline :: GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem
pattern GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem_Nearline = GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem "NEARLINE"

-- | Scan objects with the coldline storage class. This will incur retrieval fees.
pattern GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem_Coldline :: GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem
pattern GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem_Coldline = GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem "COLDLINE"

-- | Scan objects with the archive storage class. This will incur retrieval fees.
pattern GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem_Archive :: GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem
pattern GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem_Archive = GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem "ARCHIVE"

-- | Scan objects with the regional storage class.
pattern GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem_Regional :: GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem
pattern GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem_Regional = GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem "REGIONAL"

-- | Scan objects with the multi-regional storage class.
pattern GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem_MULTIREGIONAL :: GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem
pattern GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem_MULTIREGIONAL = GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem "MULTI_REGIONAL"

-- | Scan objects with the dual-regional storage class. This will incur retrieval fees.
pattern GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem_DURABLEREDUCEDAVAILABILITY :: GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem
pattern GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem_DURABLEREDUCEDAVAILABILITY = GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem "DURABLE_REDUCED_AVAILABILITY"

{-# COMPLETE
  GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem_CLOUDSTORAGEOBJECTATTRIBUTEUNSPECIFIED,
  GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem_ALLSUPPORTEDOBJECTS,
  GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem_Standard,
  GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem_Nearline,
  GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem_Coldline,
  GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem_Archive,
  GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem_Regional,
  GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem_MULTIREGIONAL,
  GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem_DURABLEREDUCEDAVAILABILITY,
  GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem #-}

-- | Optional. Data changes in Cloud Storage can\'t trigger reprofiling. If you set this field, profiles are refreshed at this frequency regardless of whether the underlying buckets have changed. Defaults to never.
newtype GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence_RefreshFrequency = GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence_RefreshFrequency { fromGooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence_RefreshFrequency :: Core.Text }
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

-- | Unspecified.
pattern GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence_RefreshFrequency_UPDATEFREQUENCYUNSPECIFIED :: GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence_RefreshFrequency
pattern GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence_RefreshFrequency_UPDATEFREQUENCYUNSPECIFIED = GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence_RefreshFrequency "UPDATE_FREQUENCY_UNSPECIFIED"

-- | After the data profile is created, it will never be updated.
pattern GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence_RefreshFrequency_UPDATEFREQUENCYNEVER :: GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence_RefreshFrequency
pattern GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence_RefreshFrequency_UPDATEFREQUENCYNEVER = GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence_RefreshFrequency "UPDATE_FREQUENCY_NEVER"

-- | The data profile can be updated up to once every 24 hours.
pattern GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence_RefreshFrequency_UPDATEFREQUENCYDAILY :: GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence_RefreshFrequency
pattern GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence_RefreshFrequency_UPDATEFREQUENCYDAILY = GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence_RefreshFrequency "UPDATE_FREQUENCY_DAILY"

-- | The data profile can be updated up to once every 30 days. Default.
pattern GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence_RefreshFrequency_UPDATEFREQUENCYMONTHLY :: GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence_RefreshFrequency
pattern GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence_RefreshFrequency_UPDATEFREQUENCYMONTHLY = GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence_RefreshFrequency "UPDATE_FREQUENCY_MONTHLY"

{-# COMPLETE
  GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence_RefreshFrequency_UPDATEFREQUENCYUNSPECIFIED,
  GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence_RefreshFrequency_UPDATEFREQUENCYNEVER,
  GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence_RefreshFrequency_UPDATEFREQUENCYDAILY,
  GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence_RefreshFrequency_UPDATEFREQUENCYMONTHLY,
  GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence_RefreshFrequency #-}

-- | Required. A status for this configuration.
newtype GooglePrivacyDlpV2DiscoveryConfig_Status = GooglePrivacyDlpV2DiscoveryConfig_Status { fromGooglePrivacyDlpV2DiscoveryConfig_Status :: Core.Text }
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
pattern GooglePrivacyDlpV2DiscoveryConfig_Status_STATUSUNSPECIFIED :: GooglePrivacyDlpV2DiscoveryConfig_Status
pattern GooglePrivacyDlpV2DiscoveryConfig_Status_STATUSUNSPECIFIED = GooglePrivacyDlpV2DiscoveryConfig_Status "STATUS_UNSPECIFIED"

-- | The discovery config is currently active.
pattern GooglePrivacyDlpV2DiscoveryConfig_Status_Running :: GooglePrivacyDlpV2DiscoveryConfig_Status
pattern GooglePrivacyDlpV2DiscoveryConfig_Status_Running = GooglePrivacyDlpV2DiscoveryConfig_Status "RUNNING"

-- | The discovery config is paused temporarily.
pattern GooglePrivacyDlpV2DiscoveryConfig_Status_Paused :: GooglePrivacyDlpV2DiscoveryConfig_Status
pattern GooglePrivacyDlpV2DiscoveryConfig_Status_Paused = GooglePrivacyDlpV2DiscoveryConfig_Status "PAUSED"

{-# COMPLETE
  GooglePrivacyDlpV2DiscoveryConfig_Status_STATUSUNSPECIFIED,
  GooglePrivacyDlpV2DiscoveryConfig_Status_Running,
  GooglePrivacyDlpV2DiscoveryConfig_Status_Paused,
  GooglePrivacyDlpV2DiscoveryConfig_Status #-}

-- | Frequency at which profiles should be updated, regardless of whether the underlying resource has changed. Defaults to never.
newtype GooglePrivacyDlpV2DiscoveryGenerationCadence_RefreshFrequency = GooglePrivacyDlpV2DiscoveryGenerationCadence_RefreshFrequency { fromGooglePrivacyDlpV2DiscoveryGenerationCadence_RefreshFrequency :: Core.Text }
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

-- | Unspecified.
pattern GooglePrivacyDlpV2DiscoveryGenerationCadence_RefreshFrequency_UPDATEFREQUENCYUNSPECIFIED :: GooglePrivacyDlpV2DiscoveryGenerationCadence_RefreshFrequency
pattern GooglePrivacyDlpV2DiscoveryGenerationCadence_RefreshFrequency_UPDATEFREQUENCYUNSPECIFIED = GooglePrivacyDlpV2DiscoveryGenerationCadence_RefreshFrequency "UPDATE_FREQUENCY_UNSPECIFIED"

-- | After the data profile is created, it will never be updated.
pattern GooglePrivacyDlpV2DiscoveryGenerationCadence_RefreshFrequency_UPDATEFREQUENCYNEVER :: GooglePrivacyDlpV2DiscoveryGenerationCadence_RefreshFrequency
pattern GooglePrivacyDlpV2DiscoveryGenerationCadence_RefreshFrequency_UPDATEFREQUENCYNEVER = GooglePrivacyDlpV2DiscoveryGenerationCadence_RefreshFrequency "UPDATE_FREQUENCY_NEVER"

-- | The data profile can be updated up to once every 24 hours.
pattern GooglePrivacyDlpV2DiscoveryGenerationCadence_RefreshFrequency_UPDATEFREQUENCYDAILY :: GooglePrivacyDlpV2DiscoveryGenerationCadence_RefreshFrequency
pattern GooglePrivacyDlpV2DiscoveryGenerationCadence_RefreshFrequency_UPDATEFREQUENCYDAILY = GooglePrivacyDlpV2DiscoveryGenerationCadence_RefreshFrequency "UPDATE_FREQUENCY_DAILY"

-- | The data profile can be updated up to once every 30 days. Default.
pattern GooglePrivacyDlpV2DiscoveryGenerationCadence_RefreshFrequency_UPDATEFREQUENCYMONTHLY :: GooglePrivacyDlpV2DiscoveryGenerationCadence_RefreshFrequency
pattern GooglePrivacyDlpV2DiscoveryGenerationCadence_RefreshFrequency_UPDATEFREQUENCYMONTHLY = GooglePrivacyDlpV2DiscoveryGenerationCadence_RefreshFrequency "UPDATE_FREQUENCY_MONTHLY"

{-# COMPLETE
  GooglePrivacyDlpV2DiscoveryGenerationCadence_RefreshFrequency_UPDATEFREQUENCYUNSPECIFIED,
  GooglePrivacyDlpV2DiscoveryGenerationCadence_RefreshFrequency_UPDATEFREQUENCYNEVER,
  GooglePrivacyDlpV2DiscoveryGenerationCadence_RefreshFrequency_UPDATEFREQUENCYDAILY,
  GooglePrivacyDlpV2DiscoveryGenerationCadence_RefreshFrequency_UPDATEFREQUENCYMONTHLY,
  GooglePrivacyDlpV2DiscoveryGenerationCadence_RefreshFrequency #-}

-- | How frequently data profiles can be updated when the template is modified. Defaults to never.
newtype GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence_Frequency = GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence_Frequency { fromGooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence_Frequency :: Core.Text }
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

-- | Unspecified.
pattern GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence_Frequency_UPDATEFREQUENCYUNSPECIFIED :: GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence_Frequency
pattern GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence_Frequency_UPDATEFREQUENCYUNSPECIFIED = GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence_Frequency "UPDATE_FREQUENCY_UNSPECIFIED"

-- | After the data profile is created, it will never be updated.
pattern GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence_Frequency_UPDATEFREQUENCYNEVER :: GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence_Frequency
pattern GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence_Frequency_UPDATEFREQUENCYNEVER = GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence_Frequency "UPDATE_FREQUENCY_NEVER"

-- | The data profile can be updated up to once every 24 hours.
pattern GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence_Frequency_UPDATEFREQUENCYDAILY :: GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence_Frequency
pattern GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence_Frequency_UPDATEFREQUENCYDAILY = GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence_Frequency "UPDATE_FREQUENCY_DAILY"

-- | The data profile can be updated up to once every 30 days. Default.
pattern GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence_Frequency_UPDATEFREQUENCYMONTHLY :: GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence_Frequency
pattern GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence_Frequency_UPDATEFREQUENCYMONTHLY = GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence_Frequency "UPDATE_FREQUENCY_MONTHLY"

{-# COMPLETE
  GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence_Frequency_UPDATEFREQUENCYUNSPECIFIED,
  GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence_Frequency_UPDATEFREQUENCYNEVER,
  GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence_Frequency_UPDATEFREQUENCYDAILY,
  GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence_Frequency_UPDATEFREQUENCYMONTHLY,
  GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence_Frequency #-}

-- | Optional. Frequency to update profiles regardless of whether the underlying resource has changes. Defaults to never.
newtype GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence_RefreshFrequency = GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence_RefreshFrequency { fromGooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence_RefreshFrequency :: Core.Text }
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

-- | Unspecified.
pattern GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence_RefreshFrequency_UPDATEFREQUENCYUNSPECIFIED :: GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence_RefreshFrequency
pattern GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence_RefreshFrequency_UPDATEFREQUENCYUNSPECIFIED = GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence_RefreshFrequency "UPDATE_FREQUENCY_UNSPECIFIED"

-- | After the data profile is created, it will never be updated.
pattern GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence_RefreshFrequency_UPDATEFREQUENCYNEVER :: GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence_RefreshFrequency
pattern GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence_RefreshFrequency_UPDATEFREQUENCYNEVER = GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence_RefreshFrequency "UPDATE_FREQUENCY_NEVER"

-- | The data profile can be updated up to once every 24 hours.
pattern GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence_RefreshFrequency_UPDATEFREQUENCYDAILY :: GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence_RefreshFrequency
pattern GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence_RefreshFrequency_UPDATEFREQUENCYDAILY = GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence_RefreshFrequency "UPDATE_FREQUENCY_DAILY"

-- | The data profile can be updated up to once every 30 days. Default.
pattern GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence_RefreshFrequency_UPDATEFREQUENCYMONTHLY :: GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence_RefreshFrequency
pattern GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence_RefreshFrequency_UPDATEFREQUENCYMONTHLY = GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence_RefreshFrequency "UPDATE_FREQUENCY_MONTHLY"

{-# COMPLETE
  GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence_RefreshFrequency_UPDATEFREQUENCYUNSPECIFIED,
  GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence_RefreshFrequency_UPDATEFREQUENCYNEVER,
  GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence_RefreshFrequency_UPDATEFREQUENCYDAILY,
  GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence_RefreshFrequency_UPDATEFREQUENCYMONTHLY,
  GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence_RefreshFrequency #-}

-- | How frequently profiles may be updated when schemas are modified. Defaults to monthly.
newtype GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_Frequency = GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_Frequency { fromGooglePrivacyDlpV2DiscoverySchemaModifiedCadence_Frequency :: Core.Text }
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

-- | Unspecified.
pattern GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_Frequency_UPDATEFREQUENCYUNSPECIFIED :: GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_Frequency
pattern GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_Frequency_UPDATEFREQUENCYUNSPECIFIED = GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_Frequency "UPDATE_FREQUENCY_UNSPECIFIED"

-- | After the data profile is created, it will never be updated.
pattern GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_Frequency_UPDATEFREQUENCYNEVER :: GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_Frequency
pattern GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_Frequency_UPDATEFREQUENCYNEVER = GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_Frequency "UPDATE_FREQUENCY_NEVER"

-- | The data profile can be updated up to once every 24 hours.
pattern GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_Frequency_UPDATEFREQUENCYDAILY :: GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_Frequency
pattern GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_Frequency_UPDATEFREQUENCYDAILY = GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_Frequency "UPDATE_FREQUENCY_DAILY"

-- | The data profile can be updated up to once every 30 days. Default.
pattern GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_Frequency_UPDATEFREQUENCYMONTHLY :: GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_Frequency
pattern GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_Frequency_UPDATEFREQUENCYMONTHLY = GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_Frequency "UPDATE_FREQUENCY_MONTHLY"

{-# COMPLETE
  GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_Frequency_UPDATEFREQUENCYUNSPECIFIED,
  GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_Frequency_UPDATEFREQUENCYNEVER,
  GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_Frequency_UPDATEFREQUENCYDAILY,
  GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_Frequency_UPDATEFREQUENCYMONTHLY,
  GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_Frequency #-}

newtype GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_TypesItem = GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_TypesItem { fromGooglePrivacyDlpV2DiscoverySchemaModifiedCadence_TypesItem :: Core.Text }
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
pattern GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_TypesItem_SCHEMAMODIFICATIONUNSPECIFIED :: GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_TypesItem
pattern GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_TypesItem_SCHEMAMODIFICATIONUNSPECIFIED = GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_TypesItem "SCHEMA_MODIFICATION_UNSPECIFIED"

-- | Profiles should be regenerated when new columns are added to the table. Default.
pattern GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_TypesItem_SCHEMANEWCOLUMNS :: GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_TypesItem
pattern GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_TypesItem_SCHEMANEWCOLUMNS = GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_TypesItem "SCHEMA_NEW_COLUMNS"

-- | Profiles should be regenerated when columns are removed from the table.
pattern GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_TypesItem_SCHEMAREMOVEDCOLUMNS :: GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_TypesItem
pattern GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_TypesItem_SCHEMAREMOVEDCOLUMNS = GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_TypesItem "SCHEMA_REMOVED_COLUMNS"

{-# COMPLETE
  GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_TypesItem_SCHEMAMODIFICATIONUNSPECIFIED,
  GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_TypesItem_SCHEMANEWCOLUMNS,
  GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_TypesItem_SCHEMAREMOVEDCOLUMNS,
  GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_TypesItem #-}

-- | How frequently data profiles can be updated when tables are modified. Defaults to never.
newtype GooglePrivacyDlpV2DiscoveryTableModifiedCadence_Frequency = GooglePrivacyDlpV2DiscoveryTableModifiedCadence_Frequency { fromGooglePrivacyDlpV2DiscoveryTableModifiedCadence_Frequency :: Core.Text }
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

-- | Unspecified.
pattern GooglePrivacyDlpV2DiscoveryTableModifiedCadence_Frequency_UPDATEFREQUENCYUNSPECIFIED :: GooglePrivacyDlpV2DiscoveryTableModifiedCadence_Frequency
pattern GooglePrivacyDlpV2DiscoveryTableModifiedCadence_Frequency_UPDATEFREQUENCYUNSPECIFIED = GooglePrivacyDlpV2DiscoveryTableModifiedCadence_Frequency "UPDATE_FREQUENCY_UNSPECIFIED"

-- | After the data profile is created, it will never be updated.
pattern GooglePrivacyDlpV2DiscoveryTableModifiedCadence_Frequency_UPDATEFREQUENCYNEVER :: GooglePrivacyDlpV2DiscoveryTableModifiedCadence_Frequency
pattern GooglePrivacyDlpV2DiscoveryTableModifiedCadence_Frequency_UPDATEFREQUENCYNEVER = GooglePrivacyDlpV2DiscoveryTableModifiedCadence_Frequency "UPDATE_FREQUENCY_NEVER"

-- | The data profile can be updated up to once every 24 hours.
pattern GooglePrivacyDlpV2DiscoveryTableModifiedCadence_Frequency_UPDATEFREQUENCYDAILY :: GooglePrivacyDlpV2DiscoveryTableModifiedCadence_Frequency
pattern GooglePrivacyDlpV2DiscoveryTableModifiedCadence_Frequency_UPDATEFREQUENCYDAILY = GooglePrivacyDlpV2DiscoveryTableModifiedCadence_Frequency "UPDATE_FREQUENCY_DAILY"

-- | The data profile can be updated up to once every 30 days. Default.
pattern GooglePrivacyDlpV2DiscoveryTableModifiedCadence_Frequency_UPDATEFREQUENCYMONTHLY :: GooglePrivacyDlpV2DiscoveryTableModifiedCadence_Frequency
pattern GooglePrivacyDlpV2DiscoveryTableModifiedCadence_Frequency_UPDATEFREQUENCYMONTHLY = GooglePrivacyDlpV2DiscoveryTableModifiedCadence_Frequency "UPDATE_FREQUENCY_MONTHLY"

{-# COMPLETE
  GooglePrivacyDlpV2DiscoveryTableModifiedCadence_Frequency_UPDATEFREQUENCYUNSPECIFIED,
  GooglePrivacyDlpV2DiscoveryTableModifiedCadence_Frequency_UPDATEFREQUENCYNEVER,
  GooglePrivacyDlpV2DiscoveryTableModifiedCadence_Frequency_UPDATEFREQUENCYDAILY,
  GooglePrivacyDlpV2DiscoveryTableModifiedCadence_Frequency_UPDATEFREQUENCYMONTHLY,
  GooglePrivacyDlpV2DiscoveryTableModifiedCadence_Frequency #-}

newtype GooglePrivacyDlpV2DiscoveryTableModifiedCadence_TypesItem = GooglePrivacyDlpV2DiscoveryTableModifiedCadence_TypesItem { fromGooglePrivacyDlpV2DiscoveryTableModifiedCadence_TypesItem :: Core.Text }
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
pattern GooglePrivacyDlpV2DiscoveryTableModifiedCadence_TypesItem_TABLEMODIFICATIONUNSPECIFIED :: GooglePrivacyDlpV2DiscoveryTableModifiedCadence_TypesItem
pattern GooglePrivacyDlpV2DiscoveryTableModifiedCadence_TypesItem_TABLEMODIFICATIONUNSPECIFIED = GooglePrivacyDlpV2DiscoveryTableModifiedCadence_TypesItem "TABLE_MODIFICATION_UNSPECIFIED"

-- | A table will be considered modified when the last/modified/time from BigQuery has been updated.
pattern GooglePrivacyDlpV2DiscoveryTableModifiedCadence_TypesItem_TABLEMODIFIEDTIMESTAMP :: GooglePrivacyDlpV2DiscoveryTableModifiedCadence_TypesItem
pattern GooglePrivacyDlpV2DiscoveryTableModifiedCadence_TypesItem_TABLEMODIFIEDTIMESTAMP = GooglePrivacyDlpV2DiscoveryTableModifiedCadence_TypesItem "TABLE_MODIFIED_TIMESTAMP"

{-# COMPLETE
  GooglePrivacyDlpV2DiscoveryTableModifiedCadence_TypesItem_TABLEMODIFICATIONUNSPECIFIED,
  GooglePrivacyDlpV2DiscoveryTableModifiedCadence_TypesItem_TABLEMODIFIEDTIMESTAMP,
  GooglePrivacyDlpV2DiscoveryTableModifiedCadence_TypesItem #-}

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

-- | Additional information about the error.
newtype GooglePrivacyDlpV2Error_ExtraInfo = GooglePrivacyDlpV2Error_ExtraInfo { fromGooglePrivacyDlpV2Error_ExtraInfo :: Core.Text }
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
pattern GooglePrivacyDlpV2Error_ExtraInfo_ERRORINFOUNSPECIFIED :: GooglePrivacyDlpV2Error_ExtraInfo
pattern GooglePrivacyDlpV2Error_ExtraInfo_ERRORINFOUNSPECIFIED = GooglePrivacyDlpV2Error_ExtraInfo "ERROR_INFO_UNSPECIFIED"

-- | Image scan is not available in the region.
pattern GooglePrivacyDlpV2Error_ExtraInfo_IMAGESCANUNAVAILABLEINREGION :: GooglePrivacyDlpV2Error_ExtraInfo
pattern GooglePrivacyDlpV2Error_ExtraInfo_IMAGESCANUNAVAILABLEINREGION = GooglePrivacyDlpV2Error_ExtraInfo "IMAGE_SCAN_UNAVAILABLE_IN_REGION"

-- | File store cluster is not supported for profile generation.
pattern GooglePrivacyDlpV2Error_ExtraInfo_FILESTORECLUSTERUNSUPPORTED :: GooglePrivacyDlpV2Error_ExtraInfo
pattern GooglePrivacyDlpV2Error_ExtraInfo_FILESTORECLUSTERUNSUPPORTED = GooglePrivacyDlpV2Error_ExtraInfo "FILE_STORE_CLUSTER_UNSUPPORTED"

{-# COMPLETE
  GooglePrivacyDlpV2Error_ExtraInfo_ERRORINFOUNSPECIFIED,
  GooglePrivacyDlpV2Error_ExtraInfo_IMAGESCANUNAVAILABLEINREGION,
  GooglePrivacyDlpV2Error_ExtraInfo_FILESTORECLUSTERUNSUPPORTED,
  GooglePrivacyDlpV2Error_ExtraInfo #-}

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

-- | Cluster type.
newtype GooglePrivacyDlpV2FileClusterType_Cluster = GooglePrivacyDlpV2FileClusterType_Cluster { fromGooglePrivacyDlpV2FileClusterType_Cluster :: Core.Text }
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
pattern GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTERUNSPECIFIED :: GooglePrivacyDlpV2FileClusterType_Cluster
pattern GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTERUNSPECIFIED = GooglePrivacyDlpV2FileClusterType_Cluster "CLUSTER_UNSPECIFIED"

-- | Unsupported files.
pattern GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTERUNKNOWN :: GooglePrivacyDlpV2FileClusterType_Cluster
pattern GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTERUNKNOWN = GooglePrivacyDlpV2FileClusterType_Cluster "CLUSTER_UNKNOWN"

-- | Plain text.
pattern GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTERTEXT :: GooglePrivacyDlpV2FileClusterType_Cluster
pattern GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTERTEXT = GooglePrivacyDlpV2FileClusterType_Cluster "CLUSTER_TEXT"

-- | Structured data like CSV, TSV etc.
pattern GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTERSTRUCTUREDDATA :: GooglePrivacyDlpV2FileClusterType_Cluster
pattern GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTERSTRUCTUREDDATA = GooglePrivacyDlpV2FileClusterType_Cluster "CLUSTER_STRUCTURED_DATA"

-- | Source code.
pattern GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTERSOURCECODE :: GooglePrivacyDlpV2FileClusterType_Cluster
pattern GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTERSOURCECODE = GooglePrivacyDlpV2FileClusterType_Cluster "CLUSTER_SOURCE_CODE"

-- | Rich document like docx, xlsx etc.
pattern GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTERRICHDOCUMENT :: GooglePrivacyDlpV2FileClusterType_Cluster
pattern GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTERRICHDOCUMENT = GooglePrivacyDlpV2FileClusterType_Cluster "CLUSTER_RICH_DOCUMENT"

-- | Images like jpeg, bmp.
pattern GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTERIMAGE :: GooglePrivacyDlpV2FileClusterType_Cluster
pattern GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTERIMAGE = GooglePrivacyDlpV2FileClusterType_Cluster "CLUSTER_IMAGE"

-- | Archives and containers like .zip, .tar etc.
pattern GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTERARCHIVE :: GooglePrivacyDlpV2FileClusterType_Cluster
pattern GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTERARCHIVE = GooglePrivacyDlpV2FileClusterType_Cluster "CLUSTER_ARCHIVE"

-- | Multimedia like .mp4, .avi etc.
pattern GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTERMULTIMEDIA :: GooglePrivacyDlpV2FileClusterType_Cluster
pattern GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTERMULTIMEDIA = GooglePrivacyDlpV2FileClusterType_Cluster "CLUSTER_MULTIMEDIA"

-- | Executable files like .exe, .class, .apk etc.
pattern GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTEREXECUTABLE :: GooglePrivacyDlpV2FileClusterType_Cluster
pattern GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTEREXECUTABLE = GooglePrivacyDlpV2FileClusterType_Cluster "CLUSTER_EXECUTABLE"

-- | AI models like .tflite etc.
pattern GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTERAIMODEL :: GooglePrivacyDlpV2FileClusterType_Cluster
pattern GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTERAIMODEL = GooglePrivacyDlpV2FileClusterType_Cluster "CLUSTER_AI_MODEL"

{-# COMPLETE
  GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTERUNSPECIFIED,
  GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTERUNKNOWN,
  GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTERTEXT,
  GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTERSTRUCTUREDDATA,
  GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTERSOURCECODE,
  GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTERRICHDOCUMENT,
  GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTERIMAGE,
  GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTERARCHIVE,
  GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTERMULTIMEDIA,
  GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTEREXECUTABLE,
  GooglePrivacyDlpV2FileClusterType_Cluster_CLUSTERAIMODEL,
  GooglePrivacyDlpV2FileClusterType_Cluster #-}

-- | How broadly a resource has been shared.
newtype GooglePrivacyDlpV2FileStoreDataProfile_ResourceVisibility = GooglePrivacyDlpV2FileStoreDataProfile_ResourceVisibility { fromGooglePrivacyDlpV2FileStoreDataProfile_ResourceVisibility :: Core.Text }
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
pattern GooglePrivacyDlpV2FileStoreDataProfile_ResourceVisibility_RESOURCEVISIBILITYUNSPECIFIED :: GooglePrivacyDlpV2FileStoreDataProfile_ResourceVisibility
pattern GooglePrivacyDlpV2FileStoreDataProfile_ResourceVisibility_RESOURCEVISIBILITYUNSPECIFIED = GooglePrivacyDlpV2FileStoreDataProfile_ResourceVisibility "RESOURCE_VISIBILITY_UNSPECIFIED"

-- | Visible to any user.
pattern GooglePrivacyDlpV2FileStoreDataProfile_ResourceVisibility_RESOURCEVISIBILITYPUBLIC :: GooglePrivacyDlpV2FileStoreDataProfile_ResourceVisibility
pattern GooglePrivacyDlpV2FileStoreDataProfile_ResourceVisibility_RESOURCEVISIBILITYPUBLIC = GooglePrivacyDlpV2FileStoreDataProfile_ResourceVisibility "RESOURCE_VISIBILITY_PUBLIC"

-- | May contain public items. For example, if a Cloud Storage bucket has uniform bucket level access disabled, some objects inside it may be public, but none are known yet.
pattern GooglePrivacyDlpV2FileStoreDataProfile_ResourceVisibility_RESOURCEVISIBILITYINCONCLUSIVE :: GooglePrivacyDlpV2FileStoreDataProfile_ResourceVisibility
pattern GooglePrivacyDlpV2FileStoreDataProfile_ResourceVisibility_RESOURCEVISIBILITYINCONCLUSIVE = GooglePrivacyDlpV2FileStoreDataProfile_ResourceVisibility "RESOURCE_VISIBILITY_INCONCLUSIVE"

-- | Visible only to specific users.
pattern GooglePrivacyDlpV2FileStoreDataProfile_ResourceVisibility_RESOURCEVISIBILITYRESTRICTED :: GooglePrivacyDlpV2FileStoreDataProfile_ResourceVisibility
pattern GooglePrivacyDlpV2FileStoreDataProfile_ResourceVisibility_RESOURCEVISIBILITYRESTRICTED = GooglePrivacyDlpV2FileStoreDataProfile_ResourceVisibility "RESOURCE_VISIBILITY_RESTRICTED"

{-# COMPLETE
  GooglePrivacyDlpV2FileStoreDataProfile_ResourceVisibility_RESOURCEVISIBILITYUNSPECIFIED,
  GooglePrivacyDlpV2FileStoreDataProfile_ResourceVisibility_RESOURCEVISIBILITYPUBLIC,
  GooglePrivacyDlpV2FileStoreDataProfile_ResourceVisibility_RESOURCEVISIBILITYINCONCLUSIVE,
  GooglePrivacyDlpV2FileStoreDataProfile_ResourceVisibility_RESOURCEVISIBILITYRESTRICTED,
  GooglePrivacyDlpV2FileStoreDataProfile_ResourceVisibility #-}

-- | State of a profile.
newtype GooglePrivacyDlpV2FileStoreDataProfile_State = GooglePrivacyDlpV2FileStoreDataProfile_State { fromGooglePrivacyDlpV2FileStoreDataProfile_State :: Core.Text }
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
pattern GooglePrivacyDlpV2FileStoreDataProfile_State_STATEUNSPECIFIED :: GooglePrivacyDlpV2FileStoreDataProfile_State
pattern GooglePrivacyDlpV2FileStoreDataProfile_State_STATEUNSPECIFIED = GooglePrivacyDlpV2FileStoreDataProfile_State "STATE_UNSPECIFIED"

-- | The profile is currently running. Once a profile has finished it will transition to DONE.
pattern GooglePrivacyDlpV2FileStoreDataProfile_State_Running :: GooglePrivacyDlpV2FileStoreDataProfile_State
pattern GooglePrivacyDlpV2FileStoreDataProfile_State_Running = GooglePrivacyDlpV2FileStoreDataProfile_State "RUNNING"

-- | The profile is no longer generating. If profile_status.status.code is 0, the profile succeeded, otherwise, it failed.
pattern GooglePrivacyDlpV2FileStoreDataProfile_State_Done :: GooglePrivacyDlpV2FileStoreDataProfile_State
pattern GooglePrivacyDlpV2FileStoreDataProfile_State_Done = GooglePrivacyDlpV2FileStoreDataProfile_State "DONE"

{-# COMPLETE
  GooglePrivacyDlpV2FileStoreDataProfile_State_STATEUNSPECIFIED,
  GooglePrivacyDlpV2FileStoreDataProfile_State_Running,
  GooglePrivacyDlpV2FileStoreDataProfile_State_Done,
  GooglePrivacyDlpV2FileStoreDataProfile_State #-}

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
  GooglePrivacyDlpV2Finding_Likelihood #-}

-- | The group of relevant businesses where this infoType is commonly used
newtype GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory = GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory { fromGooglePrivacyDlpV2InfoTypeCategory_IndustryCategory :: Core.Text }
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
  GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory #-}

-- | The region or country that issued the ID or document represented by the infoType.
newtype GooglePrivacyDlpV2InfoTypeCategory_LocationCategory = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory { fromGooglePrivacyDlpV2InfoTypeCategory_LocationCategory :: Core.Text }
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

-- | Unused location
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_LOCATIONUNSPECIFIED :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_LOCATIONUNSPECIFIED = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "LOCATION_UNSPECIFIED"

-- | The infoType is not issued by or tied to a specific region, but is used almost everywhere.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Global :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Global = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "GLOBAL"

-- | The infoType is typically used in Argentina.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Argentina :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Argentina = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "ARGENTINA"

-- | The infoType is typically used in Armenia.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Armenia :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Armenia = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "ARMENIA"

-- | The infoType is typically used in Australia.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Australia :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Australia = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "AUSTRALIA"

-- | The infoType is typically used in Azerbaijan.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Azerbaijan :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Azerbaijan = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "AZERBAIJAN"

-- | The infoType is typically used in Belarus.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Belarus :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Belarus = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "BELARUS"

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

-- | The infoType is typically used in Kazakhstan.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Kazakhstan :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Kazakhstan = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "KAZAKHSTAN"

-- | The infoType is typically used in Korea.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Korea :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Korea = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "KOREA"

-- | The infoType is typically used in Mexico.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Mexico :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Mexico = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "MEXICO"

-- | The infoType is typically used in the Netherlands.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_THENETHERLANDS :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_THENETHERLANDS = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "THE_NETHERLANDS"

-- | The infoType is typically used in New Zealand.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_NEWZEALAND :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_NEWZEALAND = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "NEW_ZEALAND"

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

-- | The infoType is typically used in Russia.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Russia :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Russia = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "RUSSIA"

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

-- | The infoType is typically used in Switzerland.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Switzerland :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Switzerland = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "SWITZERLAND"

-- | The infoType is typically used in Taiwan.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Taiwan :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Taiwan = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "TAIWAN"

-- | The infoType is typically used in Thailand.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Thailand :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Thailand = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "THAILAND"

-- | The infoType is typically used in Turkey.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Turkey :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Turkey = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "TURKEY"

-- | The infoType is typically used in Ukraine.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Ukraine :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Ukraine = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "UKRAINE"

-- | The infoType is typically used in the United Kingdom.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_UNITEDKINGDOM :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_UNITEDKINGDOM = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "UNITED_KINGDOM"

-- | The infoType is typically used in the United States.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_UNITEDSTATES :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_UNITEDSTATES = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "UNITED_STATES"

-- | The infoType is typically used in Uruguay.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Uruguay :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Uruguay = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "URUGUAY"

-- | The infoType is typically used in Uzbekistan.
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Uzbekistan :: GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
pattern GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Uzbekistan = GooglePrivacyDlpV2InfoTypeCategory_LocationCategory "UZBEKISTAN"

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
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Armenia,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Australia,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Azerbaijan,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Belarus,
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
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Kazakhstan,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Korea,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Mexico,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_THENETHERLANDS,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_NEWZEALAND,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Norway,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Paraguay,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Peru,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Poland,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Portugal,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Russia,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Singapore,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_SOUTHAFRICA,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Spain,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Sweden,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Switzerland,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Taiwan,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Thailand,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Turkey,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Ukraine,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_UNITEDKINGDOM,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_UNITEDSTATES,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Uruguay,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Uzbekistan,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Venezuela,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory_Internal,
  GooglePrivacyDlpV2InfoTypeCategory_LocationCategory #-}

-- | The class of identifiers where this infoType belongs
newtype GooglePrivacyDlpV2InfoTypeCategory_TypeCategory = GooglePrivacyDlpV2InfoTypeCategory_TypeCategory { fromGooglePrivacyDlpV2InfoTypeCategory_TypeCategory :: Core.Text }
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
  GooglePrivacyDlpV2InfoTypeCategory_TypeCategory #-}

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

-- | Only returns findings equal to or above this threshold. This field is required or else the configuration fails.
newtype GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood = GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood { fromGooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood :: Core.Text }
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
pattern GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood_LIKELIHOODUNSPECIFIED :: GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood
pattern GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood_LIKELIHOODUNSPECIFIED = GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood "LIKELIHOOD_UNSPECIFIED"

-- | Highest chance of a false positive.
pattern GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood_VERYUNLIKELY :: GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood
pattern GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood_VERYUNLIKELY = GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood "VERY_UNLIKELY"

-- | High chance of a false positive.
pattern GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood_Unlikely :: GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood
pattern GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood_Unlikely = GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood "UNLIKELY"

-- | Some matching signals. The default value.
pattern GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood_Possible :: GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood
pattern GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood_Possible = GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood "POSSIBLE"

-- | Low chance of a false positive.
pattern GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood_Likely :: GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood
pattern GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood_Likely = GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood "LIKELY"

-- | Confidence level is high. Lowest chance of a false positive.
pattern GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood_VERYLIKELY :: GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood
pattern GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood_VERYLIKELY = GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood "VERY_LIKELY"

{-# COMPLETE
  GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood_LIKELIHOODUNSPECIFIED,
  GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood_VERYUNLIKELY,
  GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood_Unlikely,
  GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood_Possible,
  GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood_Likely,
  GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood_VERYLIKELY,
  GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood #-}

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

-- | Only returns findings equal to or above this threshold. The default is POSSIBLE. In general, the highest likelihood setting yields the fewest findings in results and the lowest chance of a false positive. For more information, see <https://cloud.google.com/sensitive-data-protection/docs/likelihood Match likelihood>.
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
  GooglePrivacyDlpV2OutputStorageConfig_OutputSchema #-}

-- | The minimum data risk score that triggers the condition.
newtype GooglePrivacyDlpV2PubSubCondition_MinimumRiskScore = GooglePrivacyDlpV2PubSubCondition_MinimumRiskScore { fromGooglePrivacyDlpV2PubSubCondition_MinimumRiskScore :: Core.Text }
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
  GooglePrivacyDlpV2PubSubCondition_MinimumRiskScore #-}

-- | The minimum sensitivity level that triggers the condition.
newtype GooglePrivacyDlpV2PubSubCondition_MinimumSensitivityScore = GooglePrivacyDlpV2PubSubCondition_MinimumSensitivityScore { fromGooglePrivacyDlpV2PubSubCondition_MinimumSensitivityScore :: Core.Text }
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
  GooglePrivacyDlpV2PubSubCondition_MinimumSensitivityScore #-}

-- | The operator to apply to the collection of conditions.
newtype GooglePrivacyDlpV2PubSubExpressions_LogicalOperator = GooglePrivacyDlpV2PubSubExpressions_LogicalOperator { fromGooglePrivacyDlpV2PubSubExpressions_LogicalOperator :: Core.Text }
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
  GooglePrivacyDlpV2PubSubExpressions_LogicalOperator #-}

-- | How much data to include in the Pub\/Sub message. If the user wishes to limit the size of the message, they can use resource_name and fetch the profile fields they wish to. Per table profile (not per column).
newtype GooglePrivacyDlpV2PubSubNotification_DetailOfMessage = GooglePrivacyDlpV2PubSubNotification_DetailOfMessage { fromGooglePrivacyDlpV2PubSubNotification_DetailOfMessage :: Core.Text }
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
pattern GooglePrivacyDlpV2PubSubNotification_DetailOfMessage_DETAILLEVELUNSPECIFIED :: GooglePrivacyDlpV2PubSubNotification_DetailOfMessage
pattern GooglePrivacyDlpV2PubSubNotification_DetailOfMessage_DETAILLEVELUNSPECIFIED = GooglePrivacyDlpV2PubSubNotification_DetailOfMessage "DETAIL_LEVEL_UNSPECIFIED"

-- | The full table data profile.
pattern GooglePrivacyDlpV2PubSubNotification_DetailOfMessage_TABLEPROFILE :: GooglePrivacyDlpV2PubSubNotification_DetailOfMessage
pattern GooglePrivacyDlpV2PubSubNotification_DetailOfMessage_TABLEPROFILE = GooglePrivacyDlpV2PubSubNotification_DetailOfMessage "TABLE_PROFILE"

-- | The name of the profiled resource.
pattern GooglePrivacyDlpV2PubSubNotification_DetailOfMessage_RESOURCENAME :: GooglePrivacyDlpV2PubSubNotification_DetailOfMessage
pattern GooglePrivacyDlpV2PubSubNotification_DetailOfMessage_RESOURCENAME = GooglePrivacyDlpV2PubSubNotification_DetailOfMessage "RESOURCE_NAME"

-- | The full file store data profile.
pattern GooglePrivacyDlpV2PubSubNotification_DetailOfMessage_FILESTOREPROFILE :: GooglePrivacyDlpV2PubSubNotification_DetailOfMessage
pattern GooglePrivacyDlpV2PubSubNotification_DetailOfMessage_FILESTOREPROFILE = GooglePrivacyDlpV2PubSubNotification_DetailOfMessage "FILE_STORE_PROFILE"

{-# COMPLETE
  GooglePrivacyDlpV2PubSubNotification_DetailOfMessage_DETAILLEVELUNSPECIFIED,
  GooglePrivacyDlpV2PubSubNotification_DetailOfMessage_TABLEPROFILE,
  GooglePrivacyDlpV2PubSubNotification_DetailOfMessage_RESOURCENAME,
  GooglePrivacyDlpV2PubSubNotification_DetailOfMessage_FILESTOREPROFILE,
  GooglePrivacyDlpV2PubSubNotification_DetailOfMessage #-}

-- | The type of event that triggers a Pub\/Sub. At most one @PubSubNotification@ per EventType is permitted.
newtype GooglePrivacyDlpV2PubSubNotification_Event = GooglePrivacyDlpV2PubSubNotification_Event { fromGooglePrivacyDlpV2PubSubNotification_Event :: Core.Text }
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
pattern GooglePrivacyDlpV2PubSubNotification_Event_EVENTTYPEUNSPECIFIED :: GooglePrivacyDlpV2PubSubNotification_Event
pattern GooglePrivacyDlpV2PubSubNotification_Event_EVENTTYPEUNSPECIFIED = GooglePrivacyDlpV2PubSubNotification_Event "EVENT_TYPE_UNSPECIFIED"

-- | New profile (not a re-profile).
pattern GooglePrivacyDlpV2PubSubNotification_Event_NEWPROFILE :: GooglePrivacyDlpV2PubSubNotification_Event
pattern GooglePrivacyDlpV2PubSubNotification_Event_NEWPROFILE = GooglePrivacyDlpV2PubSubNotification_Event "NEW_PROFILE"

-- | One of the following profile metrics changed: Data risk score, Sensitivity score, Resource visibility, Encryption type, Predicted infoTypes, Other infoTypes
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
  GooglePrivacyDlpV2PubSubNotification_Event #-}

-- | Frequency to regenerate data profiles when the schema is modified. Defaults to monthly.
newtype GooglePrivacyDlpV2SchemaModifiedCadence_Frequency = GooglePrivacyDlpV2SchemaModifiedCadence_Frequency { fromGooglePrivacyDlpV2SchemaModifiedCadence_Frequency :: Core.Text }
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

-- | Unspecified.
pattern GooglePrivacyDlpV2SchemaModifiedCadence_Frequency_UPDATEFREQUENCYUNSPECIFIED :: GooglePrivacyDlpV2SchemaModifiedCadence_Frequency
pattern GooglePrivacyDlpV2SchemaModifiedCadence_Frequency_UPDATEFREQUENCYUNSPECIFIED = GooglePrivacyDlpV2SchemaModifiedCadence_Frequency "UPDATE_FREQUENCY_UNSPECIFIED"

-- | After the data profile is created, it will never be updated.
pattern GooglePrivacyDlpV2SchemaModifiedCadence_Frequency_UPDATEFREQUENCYNEVER :: GooglePrivacyDlpV2SchemaModifiedCadence_Frequency
pattern GooglePrivacyDlpV2SchemaModifiedCadence_Frequency_UPDATEFREQUENCYNEVER = GooglePrivacyDlpV2SchemaModifiedCadence_Frequency "UPDATE_FREQUENCY_NEVER"

-- | The data profile can be updated up to once every 24 hours.
pattern GooglePrivacyDlpV2SchemaModifiedCadence_Frequency_UPDATEFREQUENCYDAILY :: GooglePrivacyDlpV2SchemaModifiedCadence_Frequency
pattern GooglePrivacyDlpV2SchemaModifiedCadence_Frequency_UPDATEFREQUENCYDAILY = GooglePrivacyDlpV2SchemaModifiedCadence_Frequency "UPDATE_FREQUENCY_DAILY"

-- | The data profile can be updated up to once every 30 days. Default.
pattern GooglePrivacyDlpV2SchemaModifiedCadence_Frequency_UPDATEFREQUENCYMONTHLY :: GooglePrivacyDlpV2SchemaModifiedCadence_Frequency
pattern GooglePrivacyDlpV2SchemaModifiedCadence_Frequency_UPDATEFREQUENCYMONTHLY = GooglePrivacyDlpV2SchemaModifiedCadence_Frequency "UPDATE_FREQUENCY_MONTHLY"

{-# COMPLETE
  GooglePrivacyDlpV2SchemaModifiedCadence_Frequency_UPDATEFREQUENCYUNSPECIFIED,
  GooglePrivacyDlpV2SchemaModifiedCadence_Frequency_UPDATEFREQUENCYNEVER,
  GooglePrivacyDlpV2SchemaModifiedCadence_Frequency_UPDATEFREQUENCYDAILY,
  GooglePrivacyDlpV2SchemaModifiedCadence_Frequency_UPDATEFREQUENCYMONTHLY,
  GooglePrivacyDlpV2SchemaModifiedCadence_Frequency #-}

newtype GooglePrivacyDlpV2SchemaModifiedCadence_TypesItem = GooglePrivacyDlpV2SchemaModifiedCadence_TypesItem { fromGooglePrivacyDlpV2SchemaModifiedCadence_TypesItem :: Core.Text }
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
pattern GooglePrivacyDlpV2SchemaModifiedCadence_TypesItem_SQLSCHEMAMODIFICATIONUNSPECIFIED :: GooglePrivacyDlpV2SchemaModifiedCadence_TypesItem
pattern GooglePrivacyDlpV2SchemaModifiedCadence_TypesItem_SQLSCHEMAMODIFICATIONUNSPECIFIED = GooglePrivacyDlpV2SchemaModifiedCadence_TypesItem "SQL_SCHEMA_MODIFICATION_UNSPECIFIED"

-- | New columns have appeared.
pattern GooglePrivacyDlpV2SchemaModifiedCadence_TypesItem_NEWCOLUMNS :: GooglePrivacyDlpV2SchemaModifiedCadence_TypesItem
pattern GooglePrivacyDlpV2SchemaModifiedCadence_TypesItem_NEWCOLUMNS = GooglePrivacyDlpV2SchemaModifiedCadence_TypesItem "NEW_COLUMNS"

-- | Columns have been removed from the table.
pattern GooglePrivacyDlpV2SchemaModifiedCadence_TypesItem_REMOVEDCOLUMNS :: GooglePrivacyDlpV2SchemaModifiedCadence_TypesItem
pattern GooglePrivacyDlpV2SchemaModifiedCadence_TypesItem_REMOVEDCOLUMNS = GooglePrivacyDlpV2SchemaModifiedCadence_TypesItem "REMOVED_COLUMNS"

{-# COMPLETE
  GooglePrivacyDlpV2SchemaModifiedCadence_TypesItem_SQLSCHEMAMODIFICATIONUNSPECIFIED,
  GooglePrivacyDlpV2SchemaModifiedCadence_TypesItem_NEWCOLUMNS,
  GooglePrivacyDlpV2SchemaModifiedCadence_TypesItem_REMOVEDCOLUMNS,
  GooglePrivacyDlpV2SchemaModifiedCadence_TypesItem #-}

-- | The sensitivity score applied to the resource.
newtype GooglePrivacyDlpV2SensitivityScore_Score = GooglePrivacyDlpV2SensitivityScore_Score { fromGooglePrivacyDlpV2SensitivityScore_Score :: Core.Text }
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
pattern GooglePrivacyDlpV2SensitivityScore_Score_SENSITIVITYSCOREUNSPECIFIED :: GooglePrivacyDlpV2SensitivityScore_Score
pattern GooglePrivacyDlpV2SensitivityScore_Score_SENSITIVITYSCOREUNSPECIFIED = GooglePrivacyDlpV2SensitivityScore_Score "SENSITIVITY_SCORE_UNSPECIFIED"

-- | No sensitive information detected. The resource isn\'t publicly accessible.
pattern GooglePrivacyDlpV2SensitivityScore_Score_SENSITIVITYLOW :: GooglePrivacyDlpV2SensitivityScore_Score
pattern GooglePrivacyDlpV2SensitivityScore_Score_SENSITIVITYLOW = GooglePrivacyDlpV2SensitivityScore_Score "SENSITIVITY_LOW"

-- | Unable to determine sensitivity.
pattern GooglePrivacyDlpV2SensitivityScore_Score_SENSITIVITYUNKNOWN :: GooglePrivacyDlpV2SensitivityScore_Score
pattern GooglePrivacyDlpV2SensitivityScore_Score_SENSITIVITYUNKNOWN = GooglePrivacyDlpV2SensitivityScore_Score "SENSITIVITY_UNKNOWN"

-- | Medium risk. Contains personally identifiable information (PII), potentially sensitive data, or fields with free-text data that are at a higher risk of having intermittent sensitive data. Consider limiting access.
pattern GooglePrivacyDlpV2SensitivityScore_Score_SENSITIVITYMODERATE :: GooglePrivacyDlpV2SensitivityScore_Score
pattern GooglePrivacyDlpV2SensitivityScore_Score_SENSITIVITYMODERATE = GooglePrivacyDlpV2SensitivityScore_Score "SENSITIVITY_MODERATE"

-- | High risk. Sensitive personally identifiable information (SPII) can be present. Exfiltration of data can lead to user data loss. Re-identification of users might be possible. Consider limiting usage and or removing SPII.
pattern GooglePrivacyDlpV2SensitivityScore_Score_SENSITIVITYHIGH :: GooglePrivacyDlpV2SensitivityScore_Score
pattern GooglePrivacyDlpV2SensitivityScore_Score_SENSITIVITYHIGH = GooglePrivacyDlpV2SensitivityScore_Score "SENSITIVITY_HIGH"

{-# COMPLETE
  GooglePrivacyDlpV2SensitivityScore_Score_SENSITIVITYSCOREUNSPECIFIED,
  GooglePrivacyDlpV2SensitivityScore_Score_SENSITIVITYLOW,
  GooglePrivacyDlpV2SensitivityScore_Score_SENSITIVITYUNKNOWN,
  GooglePrivacyDlpV2SensitivityScore_Score_SENSITIVITYMODERATE,
  GooglePrivacyDlpV2SensitivityScore_Score_SENSITIVITYHIGH,
  GooglePrivacyDlpV2SensitivityScore_Score #-}

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

-- | How the table is encrypted.
newtype GooglePrivacyDlpV2TableDataProfile_EncryptionStatus = GooglePrivacyDlpV2TableDataProfile_EncryptionStatus { fromGooglePrivacyDlpV2TableDataProfile_EncryptionStatus :: Core.Text }
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
  GooglePrivacyDlpV2TableDataProfile_EncryptionStatus #-}

-- | How broadly a resource has been shared.
newtype GooglePrivacyDlpV2TableDataProfile_ResourceVisibility = GooglePrivacyDlpV2TableDataProfile_ResourceVisibility { fromGooglePrivacyDlpV2TableDataProfile_ResourceVisibility :: Core.Text }
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
pattern GooglePrivacyDlpV2TableDataProfile_ResourceVisibility_RESOURCEVISIBILITYUNSPECIFIED :: GooglePrivacyDlpV2TableDataProfile_ResourceVisibility
pattern GooglePrivacyDlpV2TableDataProfile_ResourceVisibility_RESOURCEVISIBILITYUNSPECIFIED = GooglePrivacyDlpV2TableDataProfile_ResourceVisibility "RESOURCE_VISIBILITY_UNSPECIFIED"

-- | Visible to any user.
pattern GooglePrivacyDlpV2TableDataProfile_ResourceVisibility_RESOURCEVISIBILITYPUBLIC :: GooglePrivacyDlpV2TableDataProfile_ResourceVisibility
pattern GooglePrivacyDlpV2TableDataProfile_ResourceVisibility_RESOURCEVISIBILITYPUBLIC = GooglePrivacyDlpV2TableDataProfile_ResourceVisibility "RESOURCE_VISIBILITY_PUBLIC"

-- | May contain public items. For example, if a Cloud Storage bucket has uniform bucket level access disabled, some objects inside it may be public, but none are known yet.
pattern GooglePrivacyDlpV2TableDataProfile_ResourceVisibility_RESOURCEVISIBILITYINCONCLUSIVE :: GooglePrivacyDlpV2TableDataProfile_ResourceVisibility
pattern GooglePrivacyDlpV2TableDataProfile_ResourceVisibility_RESOURCEVISIBILITYINCONCLUSIVE = GooglePrivacyDlpV2TableDataProfile_ResourceVisibility "RESOURCE_VISIBILITY_INCONCLUSIVE"

-- | Visible only to specific users.
pattern GooglePrivacyDlpV2TableDataProfile_ResourceVisibility_RESOURCEVISIBILITYRESTRICTED :: GooglePrivacyDlpV2TableDataProfile_ResourceVisibility
pattern GooglePrivacyDlpV2TableDataProfile_ResourceVisibility_RESOURCEVISIBILITYRESTRICTED = GooglePrivacyDlpV2TableDataProfile_ResourceVisibility "RESOURCE_VISIBILITY_RESTRICTED"

{-# COMPLETE
  GooglePrivacyDlpV2TableDataProfile_ResourceVisibility_RESOURCEVISIBILITYUNSPECIFIED,
  GooglePrivacyDlpV2TableDataProfile_ResourceVisibility_RESOURCEVISIBILITYPUBLIC,
  GooglePrivacyDlpV2TableDataProfile_ResourceVisibility_RESOURCEVISIBILITYINCONCLUSIVE,
  GooglePrivacyDlpV2TableDataProfile_ResourceVisibility_RESOURCEVISIBILITYRESTRICTED,
  GooglePrivacyDlpV2TableDataProfile_ResourceVisibility #-}

-- | State of a profile.
newtype GooglePrivacyDlpV2TableDataProfile_State = GooglePrivacyDlpV2TableDataProfile_State { fromGooglePrivacyDlpV2TableDataProfile_State :: Core.Text }
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
  GooglePrivacyDlpV2TableDataProfile_State #-}

newtype GooglePrivacyDlpV2TagResources_ProfileGenerationsToTagItem = GooglePrivacyDlpV2TagResources_ProfileGenerationsToTagItem { fromGooglePrivacyDlpV2TagResources_ProfileGenerationsToTagItem :: Core.Text }
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
pattern GooglePrivacyDlpV2TagResources_ProfileGenerationsToTagItem_PROFILEGENERATIONUNSPECIFIED :: GooglePrivacyDlpV2TagResources_ProfileGenerationsToTagItem
pattern GooglePrivacyDlpV2TagResources_ProfileGenerationsToTagItem_PROFILEGENERATIONUNSPECIFIED = GooglePrivacyDlpV2TagResources_ProfileGenerationsToTagItem "PROFILE_GENERATION_UNSPECIFIED"

-- | The profile is the first profile for the resource.
pattern GooglePrivacyDlpV2TagResources_ProfileGenerationsToTagItem_PROFILEGENERATIONNEW :: GooglePrivacyDlpV2TagResources_ProfileGenerationsToTagItem
pattern GooglePrivacyDlpV2TagResources_ProfileGenerationsToTagItem_PROFILEGENERATIONNEW = GooglePrivacyDlpV2TagResources_ProfileGenerationsToTagItem "PROFILE_GENERATION_NEW"

-- | The profile is an update to a previous profile.
pattern GooglePrivacyDlpV2TagResources_ProfileGenerationsToTagItem_PROFILEGENERATIONUPDATE :: GooglePrivacyDlpV2TagResources_ProfileGenerationsToTagItem
pattern GooglePrivacyDlpV2TagResources_ProfileGenerationsToTagItem_PROFILEGENERATIONUPDATE = GooglePrivacyDlpV2TagResources_ProfileGenerationsToTagItem "PROFILE_GENERATION_UPDATE"

{-# COMPLETE
  GooglePrivacyDlpV2TagResources_ProfileGenerationsToTagItem_PROFILEGENERATIONUNSPECIFIED,
  GooglePrivacyDlpV2TagResources_ProfileGenerationsToTagItem_PROFILEGENERATIONNEW,
  GooglePrivacyDlpV2TagResources_ProfileGenerationsToTagItem_PROFILEGENERATIONUPDATE,
  GooglePrivacyDlpV2TagResources_ProfileGenerationsToTagItem #-}

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

-- | The transformation type.
newtype GooglePrivacyDlpV2TransformationDescription_Type = GooglePrivacyDlpV2TransformationDescription_Type { fromGooglePrivacyDlpV2TransformationDescription_Type :: Core.Text }
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
  GooglePrivacyDlpV2TransformationDescription_Type #-}

-- | Information about the functionality of the container where this finding occurred, if available.
newtype GooglePrivacyDlpV2TransformationLocation_ContainerType = GooglePrivacyDlpV2TransformationLocation_ContainerType { fromGooglePrivacyDlpV2TransformationLocation_ContainerType :: Core.Text }
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
pattern GooglePrivacyDlpV2TransformationLocation_ContainerType_TRANSFORMUNKNOWNCONTAINER :: GooglePrivacyDlpV2TransformationLocation_ContainerType
pattern GooglePrivacyDlpV2TransformationLocation_ContainerType_TRANSFORMUNKNOWNCONTAINER = GooglePrivacyDlpV2TransformationLocation_ContainerType "TRANSFORM_UNKNOWN_CONTAINER"

-- | Body of a file.
pattern GooglePrivacyDlpV2TransformationLocation_ContainerType_TRANSFORMBODY :: GooglePrivacyDlpV2TransformationLocation_ContainerType
pattern GooglePrivacyDlpV2TransformationLocation_ContainerType_TRANSFORMBODY = GooglePrivacyDlpV2TransformationLocation_ContainerType "TRANSFORM_BODY"

-- | Metadata for a file.
pattern GooglePrivacyDlpV2TransformationLocation_ContainerType_TRANSFORMMETADATA :: GooglePrivacyDlpV2TransformationLocation_ContainerType
pattern GooglePrivacyDlpV2TransformationLocation_ContainerType_TRANSFORMMETADATA = GooglePrivacyDlpV2TransformationLocation_ContainerType "TRANSFORM_METADATA"

-- | A table.
pattern GooglePrivacyDlpV2TransformationLocation_ContainerType_TRANSFORMTABLE :: GooglePrivacyDlpV2TransformationLocation_ContainerType
pattern GooglePrivacyDlpV2TransformationLocation_ContainerType_TRANSFORMTABLE = GooglePrivacyDlpV2TransformationLocation_ContainerType "TRANSFORM_TABLE"

{-# COMPLETE
  GooglePrivacyDlpV2TransformationLocation_ContainerType_TRANSFORMUNKNOWNCONTAINER,
  GooglePrivacyDlpV2TransformationLocation_ContainerType_TRANSFORMBODY,
  GooglePrivacyDlpV2TransformationLocation_ContainerType_TRANSFORMMETADATA,
  GooglePrivacyDlpV2TransformationLocation_ContainerType_TRANSFORMTABLE,
  GooglePrivacyDlpV2TransformationLocation_ContainerType #-}

-- | Transformation result status type, this will be either SUCCESS, or it will be the reason for why the transformation was not completely successful.
newtype GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType = GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType { fromGooglePrivacyDlpV2TransformationResultStatus_ResultStatusType :: Core.Text }
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
  GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType #-}

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
