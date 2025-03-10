{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.DLP.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.DLP.Types
  ( -- * Configuration
    dLPService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** GooglePrivacyDlpV2Action
    GooglePrivacyDlpV2Action (..),
    newGooglePrivacyDlpV2Action,

    -- ** GooglePrivacyDlpV2ActionDetails
    GooglePrivacyDlpV2ActionDetails (..),
    newGooglePrivacyDlpV2ActionDetails,

    -- ** GooglePrivacyDlpV2ActivateJobTriggerRequest
    GooglePrivacyDlpV2ActivateJobTriggerRequest (..),
    newGooglePrivacyDlpV2ActivateJobTriggerRequest,

    -- ** GooglePrivacyDlpV2AllInfoTypes
    GooglePrivacyDlpV2AllInfoTypes (..),
    newGooglePrivacyDlpV2AllInfoTypes,

    -- ** GooglePrivacyDlpV2AllOtherBigQueryTables
    GooglePrivacyDlpV2AllOtherBigQueryTables (..),
    newGooglePrivacyDlpV2AllOtherBigQueryTables,

    -- ** GooglePrivacyDlpV2AllOtherDatabaseResources
    GooglePrivacyDlpV2AllOtherDatabaseResources (..),
    newGooglePrivacyDlpV2AllOtherDatabaseResources,

    -- ** GooglePrivacyDlpV2AllOtherResources
    GooglePrivacyDlpV2AllOtherResources (..),
    newGooglePrivacyDlpV2AllOtherResources,

    -- ** GooglePrivacyDlpV2AllText
    GooglePrivacyDlpV2AllText (..),
    newGooglePrivacyDlpV2AllText,

    -- ** GooglePrivacyDlpV2AmazonS3Bucket
    GooglePrivacyDlpV2AmazonS3Bucket (..),
    newGooglePrivacyDlpV2AmazonS3Bucket,

    -- ** GooglePrivacyDlpV2AmazonS3BucketConditions
    GooglePrivacyDlpV2AmazonS3BucketConditions (..),
    newGooglePrivacyDlpV2AmazonS3BucketConditions,

    -- ** GooglePrivacyDlpV2AmazonS3BucketConditions_BucketTypesItem
    GooglePrivacyDlpV2AmazonS3BucketConditions_BucketTypesItem (..),

    -- ** GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem
    GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem (..),

    -- ** GooglePrivacyDlpV2AmazonS3BucketRegex
    GooglePrivacyDlpV2AmazonS3BucketRegex (..),
    newGooglePrivacyDlpV2AmazonS3BucketRegex,

    -- ** GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails
    GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails (..),
    newGooglePrivacyDlpV2AnalyzeDataSourceRiskDetails,

    -- ** GooglePrivacyDlpV2AuxiliaryTable
    GooglePrivacyDlpV2AuxiliaryTable (..),
    newGooglePrivacyDlpV2AuxiliaryTable,

    -- ** GooglePrivacyDlpV2AwsAccount
    GooglePrivacyDlpV2AwsAccount (..),
    newGooglePrivacyDlpV2AwsAccount,

    -- ** GooglePrivacyDlpV2AwsAccountRegex
    GooglePrivacyDlpV2AwsAccountRegex (..),
    newGooglePrivacyDlpV2AwsAccountRegex,

    -- ** GooglePrivacyDlpV2AwsDiscoveryStartingLocation
    GooglePrivacyDlpV2AwsDiscoveryStartingLocation (..),
    newGooglePrivacyDlpV2AwsDiscoveryStartingLocation,

    -- ** GooglePrivacyDlpV2BigQueryDiscoveryTarget
    GooglePrivacyDlpV2BigQueryDiscoveryTarget (..),
    newGooglePrivacyDlpV2BigQueryDiscoveryTarget,

    -- ** GooglePrivacyDlpV2BigQueryField
    GooglePrivacyDlpV2BigQueryField (..),
    newGooglePrivacyDlpV2BigQueryField,

    -- ** GooglePrivacyDlpV2BigQueryKey
    GooglePrivacyDlpV2BigQueryKey (..),
    newGooglePrivacyDlpV2BigQueryKey,

    -- ** GooglePrivacyDlpV2BigQueryOptions
    GooglePrivacyDlpV2BigQueryOptions (..),
    newGooglePrivacyDlpV2BigQueryOptions,

    -- ** GooglePrivacyDlpV2BigQueryOptions_SampleMethod
    GooglePrivacyDlpV2BigQueryOptions_SampleMethod (..),

    -- ** GooglePrivacyDlpV2BigQueryRegex
    GooglePrivacyDlpV2BigQueryRegex (..),
    newGooglePrivacyDlpV2BigQueryRegex,

    -- ** GooglePrivacyDlpV2BigQueryRegexes
    GooglePrivacyDlpV2BigQueryRegexes (..),
    newGooglePrivacyDlpV2BigQueryRegexes,

    -- ** GooglePrivacyDlpV2BigQueryTable
    GooglePrivacyDlpV2BigQueryTable (..),
    newGooglePrivacyDlpV2BigQueryTable,

    -- ** GooglePrivacyDlpV2BigQueryTableCollection
    GooglePrivacyDlpV2BigQueryTableCollection (..),
    newGooglePrivacyDlpV2BigQueryTableCollection,

    -- ** GooglePrivacyDlpV2BigQueryTableTypes
    GooglePrivacyDlpV2BigQueryTableTypes (..),
    newGooglePrivacyDlpV2BigQueryTableTypes,

    -- ** GooglePrivacyDlpV2BigQueryTableTypes_TypesItem
    GooglePrivacyDlpV2BigQueryTableTypes_TypesItem (..),

    -- ** GooglePrivacyDlpV2BoundingBox
    GooglePrivacyDlpV2BoundingBox (..),
    newGooglePrivacyDlpV2BoundingBox,

    -- ** GooglePrivacyDlpV2Bucket
    GooglePrivacyDlpV2Bucket (..),
    newGooglePrivacyDlpV2Bucket,

    -- ** GooglePrivacyDlpV2BucketingConfig
    GooglePrivacyDlpV2BucketingConfig (..),
    newGooglePrivacyDlpV2BucketingConfig,

    -- ** GooglePrivacyDlpV2ByteContentItem
    GooglePrivacyDlpV2ByteContentItem (..),
    newGooglePrivacyDlpV2ByteContentItem,

    -- ** GooglePrivacyDlpV2ByteContentItem_Type
    GooglePrivacyDlpV2ByteContentItem_Type (..),

    -- ** GooglePrivacyDlpV2CancelDlpJobRequest
    GooglePrivacyDlpV2CancelDlpJobRequest (..),
    newGooglePrivacyDlpV2CancelDlpJobRequest,

    -- ** GooglePrivacyDlpV2CategoricalStatsConfig
    GooglePrivacyDlpV2CategoricalStatsConfig (..),
    newGooglePrivacyDlpV2CategoricalStatsConfig,

    -- ** GooglePrivacyDlpV2CategoricalStatsHistogramBucket
    GooglePrivacyDlpV2CategoricalStatsHistogramBucket (..),
    newGooglePrivacyDlpV2CategoricalStatsHistogramBucket,

    -- ** GooglePrivacyDlpV2CategoricalStatsResult
    GooglePrivacyDlpV2CategoricalStatsResult (..),
    newGooglePrivacyDlpV2CategoricalStatsResult,

    -- ** GooglePrivacyDlpV2CharacterMaskConfig
    GooglePrivacyDlpV2CharacterMaskConfig (..),
    newGooglePrivacyDlpV2CharacterMaskConfig,

    -- ** GooglePrivacyDlpV2CharsToIgnore
    GooglePrivacyDlpV2CharsToIgnore (..),
    newGooglePrivacyDlpV2CharsToIgnore,

    -- ** GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore
    GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore (..),

    -- ** GooglePrivacyDlpV2CloudSqlDiscoveryTarget
    GooglePrivacyDlpV2CloudSqlDiscoveryTarget (..),
    newGooglePrivacyDlpV2CloudSqlDiscoveryTarget,

    -- ** GooglePrivacyDlpV2CloudSqlIamCredential
    GooglePrivacyDlpV2CloudSqlIamCredential (..),
    newGooglePrivacyDlpV2CloudSqlIamCredential,

    -- ** GooglePrivacyDlpV2CloudSqlProperties
    GooglePrivacyDlpV2CloudSqlProperties (..),
    newGooglePrivacyDlpV2CloudSqlProperties,

    -- ** GooglePrivacyDlpV2CloudSqlProperties_DatabaseEngine
    GooglePrivacyDlpV2CloudSqlProperties_DatabaseEngine (..),

    -- ** GooglePrivacyDlpV2CloudStorageDiscoveryTarget
    GooglePrivacyDlpV2CloudStorageDiscoveryTarget (..),
    newGooglePrivacyDlpV2CloudStorageDiscoveryTarget,

    -- ** GooglePrivacyDlpV2CloudStorageFileSet
    GooglePrivacyDlpV2CloudStorageFileSet (..),
    newGooglePrivacyDlpV2CloudStorageFileSet,

    -- ** GooglePrivacyDlpV2CloudStorageOptions
    GooglePrivacyDlpV2CloudStorageOptions (..),
    newGooglePrivacyDlpV2CloudStorageOptions,

    -- ** GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem
    GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem (..),

    -- ** GooglePrivacyDlpV2CloudStorageOptions_SampleMethod
    GooglePrivacyDlpV2CloudStorageOptions_SampleMethod (..),

    -- ** GooglePrivacyDlpV2CloudStoragePath
    GooglePrivacyDlpV2CloudStoragePath (..),
    newGooglePrivacyDlpV2CloudStoragePath,

    -- ** GooglePrivacyDlpV2CloudStorageRegex
    GooglePrivacyDlpV2CloudStorageRegex (..),
    newGooglePrivacyDlpV2CloudStorageRegex,

    -- ** GooglePrivacyDlpV2CloudStorageRegexFileSet
    GooglePrivacyDlpV2CloudStorageRegexFileSet (..),
    newGooglePrivacyDlpV2CloudStorageRegexFileSet,

    -- ** GooglePrivacyDlpV2CloudStorageResourceReference
    GooglePrivacyDlpV2CloudStorageResourceReference (..),
    newGooglePrivacyDlpV2CloudStorageResourceReference,

    -- ** GooglePrivacyDlpV2Color
    GooglePrivacyDlpV2Color (..),
    newGooglePrivacyDlpV2Color,

    -- ** GooglePrivacyDlpV2ColumnDataProfile
    GooglePrivacyDlpV2ColumnDataProfile (..),
    newGooglePrivacyDlpV2ColumnDataProfile,

    -- ** GooglePrivacyDlpV2ColumnDataProfile_ColumnType
    GooglePrivacyDlpV2ColumnDataProfile_ColumnType (..),

    -- ** GooglePrivacyDlpV2ColumnDataProfile_EstimatedNullPercentage
    GooglePrivacyDlpV2ColumnDataProfile_EstimatedNullPercentage (..),

    -- ** GooglePrivacyDlpV2ColumnDataProfile_EstimatedUniquenessScore
    GooglePrivacyDlpV2ColumnDataProfile_EstimatedUniquenessScore (..),

    -- ** GooglePrivacyDlpV2ColumnDataProfile_PolicyState
    GooglePrivacyDlpV2ColumnDataProfile_PolicyState (..),

    -- ** GooglePrivacyDlpV2ColumnDataProfile_State
    GooglePrivacyDlpV2ColumnDataProfile_State (..),

    -- ** GooglePrivacyDlpV2Condition
    GooglePrivacyDlpV2Condition (..),
    newGooglePrivacyDlpV2Condition,

    -- ** GooglePrivacyDlpV2Condition_Operator
    GooglePrivacyDlpV2Condition_Operator (..),

    -- ** GooglePrivacyDlpV2Conditions
    GooglePrivacyDlpV2Conditions (..),
    newGooglePrivacyDlpV2Conditions,

    -- ** GooglePrivacyDlpV2Connection
    GooglePrivacyDlpV2Connection (..),
    newGooglePrivacyDlpV2Connection,

    -- ** GooglePrivacyDlpV2Connection_State
    GooglePrivacyDlpV2Connection_State (..),

    -- ** GooglePrivacyDlpV2Container
    GooglePrivacyDlpV2Container (..),
    newGooglePrivacyDlpV2Container,

    -- ** GooglePrivacyDlpV2ContentItem
    GooglePrivacyDlpV2ContentItem (..),
    newGooglePrivacyDlpV2ContentItem,

    -- ** GooglePrivacyDlpV2ContentLocation
    GooglePrivacyDlpV2ContentLocation (..),
    newGooglePrivacyDlpV2ContentLocation,

    -- ** GooglePrivacyDlpV2CreateConnectionRequest
    GooglePrivacyDlpV2CreateConnectionRequest (..),
    newGooglePrivacyDlpV2CreateConnectionRequest,

    -- ** GooglePrivacyDlpV2CreateDeidentifyTemplateRequest
    GooglePrivacyDlpV2CreateDeidentifyTemplateRequest (..),
    newGooglePrivacyDlpV2CreateDeidentifyTemplateRequest,

    -- ** GooglePrivacyDlpV2CreateDiscoveryConfigRequest
    GooglePrivacyDlpV2CreateDiscoveryConfigRequest (..),
    newGooglePrivacyDlpV2CreateDiscoveryConfigRequest,

    -- ** GooglePrivacyDlpV2CreateDlpJobRequest
    GooglePrivacyDlpV2CreateDlpJobRequest (..),
    newGooglePrivacyDlpV2CreateDlpJobRequest,

    -- ** GooglePrivacyDlpV2CreateInspectTemplateRequest
    GooglePrivacyDlpV2CreateInspectTemplateRequest (..),
    newGooglePrivacyDlpV2CreateInspectTemplateRequest,

    -- ** GooglePrivacyDlpV2CreateJobTriggerRequest
    GooglePrivacyDlpV2CreateJobTriggerRequest (..),
    newGooglePrivacyDlpV2CreateJobTriggerRequest,

    -- ** GooglePrivacyDlpV2CreateStoredInfoTypeRequest
    GooglePrivacyDlpV2CreateStoredInfoTypeRequest (..),
    newGooglePrivacyDlpV2CreateStoredInfoTypeRequest,

    -- ** GooglePrivacyDlpV2CryptoDeterministicConfig
    GooglePrivacyDlpV2CryptoDeterministicConfig (..),
    newGooglePrivacyDlpV2CryptoDeterministicConfig,

    -- ** GooglePrivacyDlpV2CryptoHashConfig
    GooglePrivacyDlpV2CryptoHashConfig (..),
    newGooglePrivacyDlpV2CryptoHashConfig,

    -- ** GooglePrivacyDlpV2CryptoKey
    GooglePrivacyDlpV2CryptoKey (..),
    newGooglePrivacyDlpV2CryptoKey,

    -- ** GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig
    GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig (..),
    newGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig,

    -- ** GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet
    GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet (..),

    -- ** GooglePrivacyDlpV2CustomInfoType
    GooglePrivacyDlpV2CustomInfoType (..),
    newGooglePrivacyDlpV2CustomInfoType,

    -- ** GooglePrivacyDlpV2CustomInfoType_ExclusionType
    GooglePrivacyDlpV2CustomInfoType_ExclusionType (..),

    -- ** GooglePrivacyDlpV2CustomInfoType_Likelihood
    GooglePrivacyDlpV2CustomInfoType_Likelihood (..),

    -- ** GooglePrivacyDlpV2DataProfileAction
    GooglePrivacyDlpV2DataProfileAction (..),
    newGooglePrivacyDlpV2DataProfileAction,

    -- ** GooglePrivacyDlpV2DataProfileBigQueryRowSchema
    GooglePrivacyDlpV2DataProfileBigQueryRowSchema (..),
    newGooglePrivacyDlpV2DataProfileBigQueryRowSchema,

    -- ** GooglePrivacyDlpV2DataProfileConfigSnapshot
    GooglePrivacyDlpV2DataProfileConfigSnapshot (..),
    newGooglePrivacyDlpV2DataProfileConfigSnapshot,

    -- ** GooglePrivacyDlpV2DataProfileFinding
    GooglePrivacyDlpV2DataProfileFinding (..),
    newGooglePrivacyDlpV2DataProfileFinding,

    -- ** GooglePrivacyDlpV2DataProfileFinding_ResourceVisibility
    GooglePrivacyDlpV2DataProfileFinding_ResourceVisibility (..),

    -- ** GooglePrivacyDlpV2DataProfileFindingLocation
    GooglePrivacyDlpV2DataProfileFindingLocation (..),
    newGooglePrivacyDlpV2DataProfileFindingLocation,

    -- ** GooglePrivacyDlpV2DataProfileFindingRecordLocation
    GooglePrivacyDlpV2DataProfileFindingRecordLocation (..),
    newGooglePrivacyDlpV2DataProfileFindingRecordLocation,

    -- ** GooglePrivacyDlpV2DataProfileJobConfig
    GooglePrivacyDlpV2DataProfileJobConfig (..),
    newGooglePrivacyDlpV2DataProfileJobConfig,

    -- ** GooglePrivacyDlpV2DataProfileLocation
    GooglePrivacyDlpV2DataProfileLocation (..),
    newGooglePrivacyDlpV2DataProfileLocation,

    -- ** GooglePrivacyDlpV2DataProfilePubSubCondition
    GooglePrivacyDlpV2DataProfilePubSubCondition (..),
    newGooglePrivacyDlpV2DataProfilePubSubCondition,

    -- ** GooglePrivacyDlpV2DataProfilePubSubMessage
    GooglePrivacyDlpV2DataProfilePubSubMessage (..),
    newGooglePrivacyDlpV2DataProfilePubSubMessage,

    -- ** GooglePrivacyDlpV2DataProfilePubSubMessage_Event
    GooglePrivacyDlpV2DataProfilePubSubMessage_Event (..),

    -- ** GooglePrivacyDlpV2DataRiskLevel
    GooglePrivacyDlpV2DataRiskLevel (..),
    newGooglePrivacyDlpV2DataRiskLevel,

    -- ** GooglePrivacyDlpV2DataRiskLevel_Score
    GooglePrivacyDlpV2DataRiskLevel_Score (..),

    -- ** GooglePrivacyDlpV2DataSourceType
    GooglePrivacyDlpV2DataSourceType (..),
    newGooglePrivacyDlpV2DataSourceType,

    -- ** GooglePrivacyDlpV2DatabaseResourceCollection
    GooglePrivacyDlpV2DatabaseResourceCollection (..),
    newGooglePrivacyDlpV2DatabaseResourceCollection,

    -- ** GooglePrivacyDlpV2DatabaseResourceReference
    GooglePrivacyDlpV2DatabaseResourceReference (..),
    newGooglePrivacyDlpV2DatabaseResourceReference,

    -- ** GooglePrivacyDlpV2DatabaseResourceRegex
    GooglePrivacyDlpV2DatabaseResourceRegex (..),
    newGooglePrivacyDlpV2DatabaseResourceRegex,

    -- ** GooglePrivacyDlpV2DatabaseResourceRegexes
    GooglePrivacyDlpV2DatabaseResourceRegexes (..),
    newGooglePrivacyDlpV2DatabaseResourceRegexes,

    -- ** GooglePrivacyDlpV2DatastoreKey
    GooglePrivacyDlpV2DatastoreKey (..),
    newGooglePrivacyDlpV2DatastoreKey,

    -- ** GooglePrivacyDlpV2DatastoreOptions
    GooglePrivacyDlpV2DatastoreOptions (..),
    newGooglePrivacyDlpV2DatastoreOptions,

    -- ** GooglePrivacyDlpV2DateShiftConfig
    GooglePrivacyDlpV2DateShiftConfig (..),
    newGooglePrivacyDlpV2DateShiftConfig,

    -- ** GooglePrivacyDlpV2DateTime
    GooglePrivacyDlpV2DateTime (..),
    newGooglePrivacyDlpV2DateTime,

    -- ** GooglePrivacyDlpV2DateTime_DayOfWeek
    GooglePrivacyDlpV2DateTime_DayOfWeek (..),

    -- ** GooglePrivacyDlpV2Deidentify
    GooglePrivacyDlpV2Deidentify (..),
    newGooglePrivacyDlpV2Deidentify,

    -- ** GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem
    GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem (..),

    -- ** GooglePrivacyDlpV2DeidentifyConfig
    GooglePrivacyDlpV2DeidentifyConfig (..),
    newGooglePrivacyDlpV2DeidentifyConfig,

    -- ** GooglePrivacyDlpV2DeidentifyContentRequest
    GooglePrivacyDlpV2DeidentifyContentRequest (..),
    newGooglePrivacyDlpV2DeidentifyContentRequest,

    -- ** GooglePrivacyDlpV2DeidentifyContentResponse
    GooglePrivacyDlpV2DeidentifyContentResponse (..),
    newGooglePrivacyDlpV2DeidentifyContentResponse,

    -- ** GooglePrivacyDlpV2DeidentifyDataSourceDetails
    GooglePrivacyDlpV2DeidentifyDataSourceDetails (..),
    newGooglePrivacyDlpV2DeidentifyDataSourceDetails,

    -- ** GooglePrivacyDlpV2DeidentifyDataSourceStats
    GooglePrivacyDlpV2DeidentifyDataSourceStats (..),
    newGooglePrivacyDlpV2DeidentifyDataSourceStats,

    -- ** GooglePrivacyDlpV2DeidentifyTemplate
    GooglePrivacyDlpV2DeidentifyTemplate (..),
    newGooglePrivacyDlpV2DeidentifyTemplate,

    -- ** GooglePrivacyDlpV2DeltaPresenceEstimationConfig
    GooglePrivacyDlpV2DeltaPresenceEstimationConfig (..),
    newGooglePrivacyDlpV2DeltaPresenceEstimationConfig,

    -- ** GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket
    GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket (..),
    newGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket,

    -- ** GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues
    GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues (..),
    newGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues,

    -- ** GooglePrivacyDlpV2DeltaPresenceEstimationResult
    GooglePrivacyDlpV2DeltaPresenceEstimationResult (..),
    newGooglePrivacyDlpV2DeltaPresenceEstimationResult,

    -- ** GooglePrivacyDlpV2DetectionRule
    GooglePrivacyDlpV2DetectionRule (..),
    newGooglePrivacyDlpV2DetectionRule,

    -- ** GooglePrivacyDlpV2Dictionary
    GooglePrivacyDlpV2Dictionary (..),
    newGooglePrivacyDlpV2Dictionary,

    -- ** GooglePrivacyDlpV2Disabled
    GooglePrivacyDlpV2Disabled (..),
    newGooglePrivacyDlpV2Disabled,

    -- ** GooglePrivacyDlpV2DiscoveryBigQueryConditions
    GooglePrivacyDlpV2DiscoveryBigQueryConditions (..),
    newGooglePrivacyDlpV2DiscoveryBigQueryConditions,

    -- ** GooglePrivacyDlpV2DiscoveryBigQueryConditions_TypeCollection
    GooglePrivacyDlpV2DiscoveryBigQueryConditions_TypeCollection (..),

    -- ** GooglePrivacyDlpV2DiscoveryBigQueryFilter
    GooglePrivacyDlpV2DiscoveryBigQueryFilter (..),
    newGooglePrivacyDlpV2DiscoveryBigQueryFilter,

    -- ** GooglePrivacyDlpV2DiscoveryCloudSqlConditions
    GooglePrivacyDlpV2DiscoveryCloudSqlConditions (..),
    newGooglePrivacyDlpV2DiscoveryCloudSqlConditions,

    -- ** GooglePrivacyDlpV2DiscoveryCloudSqlConditions_DatabaseEnginesItem
    GooglePrivacyDlpV2DiscoveryCloudSqlConditions_DatabaseEnginesItem (..),

    -- ** GooglePrivacyDlpV2DiscoveryCloudSqlConditions_TypesItem
    GooglePrivacyDlpV2DiscoveryCloudSqlConditions_TypesItem (..),

    -- ** GooglePrivacyDlpV2DiscoveryCloudSqlFilter
    GooglePrivacyDlpV2DiscoveryCloudSqlFilter (..),
    newGooglePrivacyDlpV2DiscoveryCloudSqlFilter,

    -- ** GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence
    GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence (..),
    newGooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence,

    -- ** GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence_RefreshFrequency
    GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence_RefreshFrequency (..),

    -- ** GooglePrivacyDlpV2DiscoveryCloudStorageConditions
    GooglePrivacyDlpV2DiscoveryCloudStorageConditions (..),
    newGooglePrivacyDlpV2DiscoveryCloudStorageConditions,

    -- ** GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedBucketAttributesItem
    GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedBucketAttributesItem (..),

    -- ** GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem
    GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem (..),

    -- ** GooglePrivacyDlpV2DiscoveryCloudStorageFilter
    GooglePrivacyDlpV2DiscoveryCloudStorageFilter (..),
    newGooglePrivacyDlpV2DiscoveryCloudStorageFilter,

    -- ** GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence
    GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence (..),
    newGooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence,

    -- ** GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence_RefreshFrequency
    GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence_RefreshFrequency (..),

    -- ** GooglePrivacyDlpV2DiscoveryConfig
    GooglePrivacyDlpV2DiscoveryConfig (..),
    newGooglePrivacyDlpV2DiscoveryConfig,

    -- ** GooglePrivacyDlpV2DiscoveryConfig_Status
    GooglePrivacyDlpV2DiscoveryConfig_Status (..),

    -- ** GooglePrivacyDlpV2DiscoveryFileStoreConditions
    GooglePrivacyDlpV2DiscoveryFileStoreConditions (..),
    newGooglePrivacyDlpV2DiscoveryFileStoreConditions,

    -- ** GooglePrivacyDlpV2DiscoveryGenerationCadence
    GooglePrivacyDlpV2DiscoveryGenerationCadence (..),
    newGooglePrivacyDlpV2DiscoveryGenerationCadence,

    -- ** GooglePrivacyDlpV2DiscoveryGenerationCadence_RefreshFrequency
    GooglePrivacyDlpV2DiscoveryGenerationCadence_RefreshFrequency (..),

    -- ** GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence
    GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence (..),
    newGooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence,

    -- ** GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence_Frequency
    GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence_Frequency (..),

    -- ** GooglePrivacyDlpV2DiscoveryOtherCloudConditions
    GooglePrivacyDlpV2DiscoveryOtherCloudConditions (..),
    newGooglePrivacyDlpV2DiscoveryOtherCloudConditions,

    -- ** GooglePrivacyDlpV2DiscoveryOtherCloudFilter
    GooglePrivacyDlpV2DiscoveryOtherCloudFilter (..),
    newGooglePrivacyDlpV2DiscoveryOtherCloudFilter,

    -- ** GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence
    GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence (..),
    newGooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence,

    -- ** GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence_RefreshFrequency
    GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence_RefreshFrequency (..),

    -- ** GooglePrivacyDlpV2DiscoverySchemaModifiedCadence
    GooglePrivacyDlpV2DiscoverySchemaModifiedCadence (..),
    newGooglePrivacyDlpV2DiscoverySchemaModifiedCadence,

    -- ** GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_Frequency
    GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_Frequency (..),

    -- ** GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_TypesItem
    GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_TypesItem (..),

    -- ** GooglePrivacyDlpV2DiscoveryStartingLocation
    GooglePrivacyDlpV2DiscoveryStartingLocation (..),
    newGooglePrivacyDlpV2DiscoveryStartingLocation,

    -- ** GooglePrivacyDlpV2DiscoveryTableModifiedCadence
    GooglePrivacyDlpV2DiscoveryTableModifiedCadence (..),
    newGooglePrivacyDlpV2DiscoveryTableModifiedCadence,

    -- ** GooglePrivacyDlpV2DiscoveryTableModifiedCadence_Frequency
    GooglePrivacyDlpV2DiscoveryTableModifiedCadence_Frequency (..),

    -- ** GooglePrivacyDlpV2DiscoveryTableModifiedCadence_TypesItem
    GooglePrivacyDlpV2DiscoveryTableModifiedCadence_TypesItem (..),

    -- ** GooglePrivacyDlpV2DiscoveryTarget
    GooglePrivacyDlpV2DiscoveryTarget (..),
    newGooglePrivacyDlpV2DiscoveryTarget,

    -- ** GooglePrivacyDlpV2DiscoveryVertexDatasetConditions
    GooglePrivacyDlpV2DiscoveryVertexDatasetConditions (..),
    newGooglePrivacyDlpV2DiscoveryVertexDatasetConditions,

    -- ** GooglePrivacyDlpV2DiscoveryVertexDatasetFilter
    GooglePrivacyDlpV2DiscoveryVertexDatasetFilter (..),
    newGooglePrivacyDlpV2DiscoveryVertexDatasetFilter,

    -- ** GooglePrivacyDlpV2DiscoveryVertexDatasetGenerationCadence
    GooglePrivacyDlpV2DiscoveryVertexDatasetGenerationCadence (..),
    newGooglePrivacyDlpV2DiscoveryVertexDatasetGenerationCadence,

    -- ** GooglePrivacyDlpV2DiscoveryVertexDatasetGenerationCadence_RefreshFrequency
    GooglePrivacyDlpV2DiscoveryVertexDatasetGenerationCadence_RefreshFrequency (..),

    -- ** GooglePrivacyDlpV2DlpJob
    GooglePrivacyDlpV2DlpJob (..),
    newGooglePrivacyDlpV2DlpJob,

    -- ** GooglePrivacyDlpV2DlpJob_State
    GooglePrivacyDlpV2DlpJob_State (..),

    -- ** GooglePrivacyDlpV2DlpJob_Type
    GooglePrivacyDlpV2DlpJob_Type (..),

    -- ** GooglePrivacyDlpV2DocumentLocation
    GooglePrivacyDlpV2DocumentLocation (..),
    newGooglePrivacyDlpV2DocumentLocation,

    -- ** GooglePrivacyDlpV2EntityId
    GooglePrivacyDlpV2EntityId (..),
    newGooglePrivacyDlpV2EntityId,

    -- ** GooglePrivacyDlpV2Error
    GooglePrivacyDlpV2Error (..),
    newGooglePrivacyDlpV2Error,

    -- ** GooglePrivacyDlpV2Error_ExtraInfo
    GooglePrivacyDlpV2Error_ExtraInfo (..),

    -- ** GooglePrivacyDlpV2ExcludeByHotword
    GooglePrivacyDlpV2ExcludeByHotword (..),
    newGooglePrivacyDlpV2ExcludeByHotword,

    -- ** GooglePrivacyDlpV2ExcludeInfoTypes
    GooglePrivacyDlpV2ExcludeInfoTypes (..),
    newGooglePrivacyDlpV2ExcludeInfoTypes,

    -- ** GooglePrivacyDlpV2ExclusionRule
    GooglePrivacyDlpV2ExclusionRule (..),
    newGooglePrivacyDlpV2ExclusionRule,

    -- ** GooglePrivacyDlpV2ExclusionRule_MatchingType
    GooglePrivacyDlpV2ExclusionRule_MatchingType (..),

    -- ** GooglePrivacyDlpV2Export
    GooglePrivacyDlpV2Export (..),
    newGooglePrivacyDlpV2Export,

    -- ** GooglePrivacyDlpV2Expressions
    GooglePrivacyDlpV2Expressions (..),
    newGooglePrivacyDlpV2Expressions,

    -- ** GooglePrivacyDlpV2Expressions_LogicalOperator
    GooglePrivacyDlpV2Expressions_LogicalOperator (..),

    -- ** GooglePrivacyDlpV2FieldId
    GooglePrivacyDlpV2FieldId (..),
    newGooglePrivacyDlpV2FieldId,

    -- ** GooglePrivacyDlpV2FieldTransformation
    GooglePrivacyDlpV2FieldTransformation (..),
    newGooglePrivacyDlpV2FieldTransformation,

    -- ** GooglePrivacyDlpV2FileClusterSummary
    GooglePrivacyDlpV2FileClusterSummary (..),
    newGooglePrivacyDlpV2FileClusterSummary,

    -- ** GooglePrivacyDlpV2FileClusterType
    GooglePrivacyDlpV2FileClusterType (..),
    newGooglePrivacyDlpV2FileClusterType,

    -- ** GooglePrivacyDlpV2FileClusterType_Cluster
    GooglePrivacyDlpV2FileClusterType_Cluster (..),

    -- ** GooglePrivacyDlpV2FileExtensionInfo
    GooglePrivacyDlpV2FileExtensionInfo (..),
    newGooglePrivacyDlpV2FileExtensionInfo,

    -- ** GooglePrivacyDlpV2FileSet
    GooglePrivacyDlpV2FileSet (..),
    newGooglePrivacyDlpV2FileSet,

    -- ** GooglePrivacyDlpV2FileStoreCollection
    GooglePrivacyDlpV2FileStoreCollection (..),
    newGooglePrivacyDlpV2FileStoreCollection,

    -- ** GooglePrivacyDlpV2FileStoreDataProfile
    GooglePrivacyDlpV2FileStoreDataProfile (..),
    newGooglePrivacyDlpV2FileStoreDataProfile,

    -- ** GooglePrivacyDlpV2FileStoreDataProfile_ResourceAttributes
    GooglePrivacyDlpV2FileStoreDataProfile_ResourceAttributes (..),
    newGooglePrivacyDlpV2FileStoreDataProfile_ResourceAttributes,

    -- ** GooglePrivacyDlpV2FileStoreDataProfile_ResourceLabels
    GooglePrivacyDlpV2FileStoreDataProfile_ResourceLabels (..),
    newGooglePrivacyDlpV2FileStoreDataProfile_ResourceLabels,

    -- ** GooglePrivacyDlpV2FileStoreDataProfile_ResourceVisibility
    GooglePrivacyDlpV2FileStoreDataProfile_ResourceVisibility (..),

    -- ** GooglePrivacyDlpV2FileStoreDataProfile_State
    GooglePrivacyDlpV2FileStoreDataProfile_State (..),

    -- ** GooglePrivacyDlpV2FileStoreInfoTypeSummary
    GooglePrivacyDlpV2FileStoreInfoTypeSummary (..),
    newGooglePrivacyDlpV2FileStoreInfoTypeSummary,

    -- ** GooglePrivacyDlpV2FileStoreRegex
    GooglePrivacyDlpV2FileStoreRegex (..),
    newGooglePrivacyDlpV2FileStoreRegex,

    -- ** GooglePrivacyDlpV2FileStoreRegexes
    GooglePrivacyDlpV2FileStoreRegexes (..),
    newGooglePrivacyDlpV2FileStoreRegexes,

    -- ** GooglePrivacyDlpV2Finding
    GooglePrivacyDlpV2Finding (..),
    newGooglePrivacyDlpV2Finding,

    -- ** GooglePrivacyDlpV2Finding_Labels
    GooglePrivacyDlpV2Finding_Labels (..),
    newGooglePrivacyDlpV2Finding_Labels,

    -- ** GooglePrivacyDlpV2Finding_Likelihood
    GooglePrivacyDlpV2Finding_Likelihood (..),

    -- ** GooglePrivacyDlpV2FindingLimits
    GooglePrivacyDlpV2FindingLimits (..),
    newGooglePrivacyDlpV2FindingLimits,

    -- ** GooglePrivacyDlpV2FinishDlpJobRequest
    GooglePrivacyDlpV2FinishDlpJobRequest (..),
    newGooglePrivacyDlpV2FinishDlpJobRequest,

    -- ** GooglePrivacyDlpV2FixedSizeBucketingConfig
    GooglePrivacyDlpV2FixedSizeBucketingConfig (..),
    newGooglePrivacyDlpV2FixedSizeBucketingConfig,

    -- ** GooglePrivacyDlpV2GlobalProcessing
    GooglePrivacyDlpV2GlobalProcessing (..),
    newGooglePrivacyDlpV2GlobalProcessing,

    -- ** GooglePrivacyDlpV2HotwordRule
    GooglePrivacyDlpV2HotwordRule (..),
    newGooglePrivacyDlpV2HotwordRule,

    -- ** GooglePrivacyDlpV2HybridContentItem
    GooglePrivacyDlpV2HybridContentItem (..),
    newGooglePrivacyDlpV2HybridContentItem,

    -- ** GooglePrivacyDlpV2HybridFindingDetails
    GooglePrivacyDlpV2HybridFindingDetails (..),
    newGooglePrivacyDlpV2HybridFindingDetails,

    -- ** GooglePrivacyDlpV2HybridFindingDetails_Labels
    GooglePrivacyDlpV2HybridFindingDetails_Labels (..),
    newGooglePrivacyDlpV2HybridFindingDetails_Labels,

    -- ** GooglePrivacyDlpV2HybridInspectDlpJobRequest
    GooglePrivacyDlpV2HybridInspectDlpJobRequest (..),
    newGooglePrivacyDlpV2HybridInspectDlpJobRequest,

    -- ** GooglePrivacyDlpV2HybridInspectJobTriggerRequest
    GooglePrivacyDlpV2HybridInspectJobTriggerRequest (..),
    newGooglePrivacyDlpV2HybridInspectJobTriggerRequest,

    -- ** GooglePrivacyDlpV2HybridInspectResponse
    GooglePrivacyDlpV2HybridInspectResponse (..),
    newGooglePrivacyDlpV2HybridInspectResponse,

    -- ** GooglePrivacyDlpV2HybridInspectStatistics
    GooglePrivacyDlpV2HybridInspectStatistics (..),
    newGooglePrivacyDlpV2HybridInspectStatistics,

    -- ** GooglePrivacyDlpV2HybridOptions
    GooglePrivacyDlpV2HybridOptions (..),
    newGooglePrivacyDlpV2HybridOptions,

    -- ** GooglePrivacyDlpV2HybridOptions_Labels
    GooglePrivacyDlpV2HybridOptions_Labels (..),
    newGooglePrivacyDlpV2HybridOptions_Labels,

    -- ** GooglePrivacyDlpV2ImageFallbackLocation
    GooglePrivacyDlpV2ImageFallbackLocation (..),
    newGooglePrivacyDlpV2ImageFallbackLocation,

    -- ** GooglePrivacyDlpV2ImageLocation
    GooglePrivacyDlpV2ImageLocation (..),
    newGooglePrivacyDlpV2ImageLocation,

    -- ** GooglePrivacyDlpV2ImageRedactionConfig
    GooglePrivacyDlpV2ImageRedactionConfig (..),
    newGooglePrivacyDlpV2ImageRedactionConfig,

    -- ** GooglePrivacyDlpV2ImageTransformation
    GooglePrivacyDlpV2ImageTransformation (..),
    newGooglePrivacyDlpV2ImageTransformation,

    -- ** GooglePrivacyDlpV2ImageTransformations
    GooglePrivacyDlpV2ImageTransformations (..),
    newGooglePrivacyDlpV2ImageTransformations,

    -- ** GooglePrivacyDlpV2InfoType
    GooglePrivacyDlpV2InfoType (..),
    newGooglePrivacyDlpV2InfoType,

    -- ** GooglePrivacyDlpV2InfoTypeCategory
    GooglePrivacyDlpV2InfoTypeCategory (..),
    newGooglePrivacyDlpV2InfoTypeCategory,

    -- ** GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory
    GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory (..),

    -- ** GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
    GooglePrivacyDlpV2InfoTypeCategory_LocationCategory (..),

    -- ** GooglePrivacyDlpV2InfoTypeCategory_TypeCategory
    GooglePrivacyDlpV2InfoTypeCategory_TypeCategory (..),

    -- ** GooglePrivacyDlpV2InfoTypeDescription
    GooglePrivacyDlpV2InfoTypeDescription (..),
    newGooglePrivacyDlpV2InfoTypeDescription,

    -- ** GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem
    GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem (..),

    -- ** GooglePrivacyDlpV2InfoTypeLikelihood
    GooglePrivacyDlpV2InfoTypeLikelihood (..),
    newGooglePrivacyDlpV2InfoTypeLikelihood,

    -- ** GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood
    GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood (..),

    -- ** GooglePrivacyDlpV2InfoTypeLimit
    GooglePrivacyDlpV2InfoTypeLimit (..),
    newGooglePrivacyDlpV2InfoTypeLimit,

    -- ** GooglePrivacyDlpV2InfoTypeStats
    GooglePrivacyDlpV2InfoTypeStats (..),
    newGooglePrivacyDlpV2InfoTypeStats,

    -- ** GooglePrivacyDlpV2InfoTypeSummary
    GooglePrivacyDlpV2InfoTypeSummary (..),
    newGooglePrivacyDlpV2InfoTypeSummary,

    -- ** GooglePrivacyDlpV2InfoTypeTransformation
    GooglePrivacyDlpV2InfoTypeTransformation (..),
    newGooglePrivacyDlpV2InfoTypeTransformation,

    -- ** GooglePrivacyDlpV2InfoTypeTransformations
    GooglePrivacyDlpV2InfoTypeTransformations (..),
    newGooglePrivacyDlpV2InfoTypeTransformations,

    -- ** GooglePrivacyDlpV2InspectConfig
    GooglePrivacyDlpV2InspectConfig (..),
    newGooglePrivacyDlpV2InspectConfig,

    -- ** GooglePrivacyDlpV2InspectConfig_ContentOptionsItem
    GooglePrivacyDlpV2InspectConfig_ContentOptionsItem (..),

    -- ** GooglePrivacyDlpV2InspectConfig_MinLikelihood
    GooglePrivacyDlpV2InspectConfig_MinLikelihood (..),

    -- ** GooglePrivacyDlpV2InspectContentRequest
    GooglePrivacyDlpV2InspectContentRequest (..),
    newGooglePrivacyDlpV2InspectContentRequest,

    -- ** GooglePrivacyDlpV2InspectContentResponse
    GooglePrivacyDlpV2InspectContentResponse (..),
    newGooglePrivacyDlpV2InspectContentResponse,

    -- ** GooglePrivacyDlpV2InspectDataSourceDetails
    GooglePrivacyDlpV2InspectDataSourceDetails (..),
    newGooglePrivacyDlpV2InspectDataSourceDetails,

    -- ** GooglePrivacyDlpV2InspectJobConfig
    GooglePrivacyDlpV2InspectJobConfig (..),
    newGooglePrivacyDlpV2InspectJobConfig,

    -- ** GooglePrivacyDlpV2InspectResult
    GooglePrivacyDlpV2InspectResult (..),
    newGooglePrivacyDlpV2InspectResult,

    -- ** GooglePrivacyDlpV2InspectTemplate
    GooglePrivacyDlpV2InspectTemplate (..),
    newGooglePrivacyDlpV2InspectTemplate,

    -- ** GooglePrivacyDlpV2InspectionRule
    GooglePrivacyDlpV2InspectionRule (..),
    newGooglePrivacyDlpV2InspectionRule,

    -- ** GooglePrivacyDlpV2InspectionRuleSet
    GooglePrivacyDlpV2InspectionRuleSet (..),
    newGooglePrivacyDlpV2InspectionRuleSet,

    -- ** GooglePrivacyDlpV2JobNotificationEmails
    GooglePrivacyDlpV2JobNotificationEmails (..),
    newGooglePrivacyDlpV2JobNotificationEmails,

    -- ** GooglePrivacyDlpV2JobTrigger
    GooglePrivacyDlpV2JobTrigger (..),
    newGooglePrivacyDlpV2JobTrigger,

    -- ** GooglePrivacyDlpV2JobTrigger_Status
    GooglePrivacyDlpV2JobTrigger_Status (..),

    -- ** GooglePrivacyDlpV2KAnonymityConfig
    GooglePrivacyDlpV2KAnonymityConfig (..),
    newGooglePrivacyDlpV2KAnonymityConfig,

    -- ** GooglePrivacyDlpV2KAnonymityEquivalenceClass
    GooglePrivacyDlpV2KAnonymityEquivalenceClass (..),
    newGooglePrivacyDlpV2KAnonymityEquivalenceClass,

    -- ** GooglePrivacyDlpV2KAnonymityHistogramBucket
    GooglePrivacyDlpV2KAnonymityHistogramBucket (..),
    newGooglePrivacyDlpV2KAnonymityHistogramBucket,

    -- ** GooglePrivacyDlpV2KAnonymityResult
    GooglePrivacyDlpV2KAnonymityResult (..),
    newGooglePrivacyDlpV2KAnonymityResult,

    -- ** GooglePrivacyDlpV2KMapEstimationConfig
    GooglePrivacyDlpV2KMapEstimationConfig (..),
    newGooglePrivacyDlpV2KMapEstimationConfig,

    -- ** GooglePrivacyDlpV2KMapEstimationHistogramBucket
    GooglePrivacyDlpV2KMapEstimationHistogramBucket (..),
    newGooglePrivacyDlpV2KMapEstimationHistogramBucket,

    -- ** GooglePrivacyDlpV2KMapEstimationQuasiIdValues
    GooglePrivacyDlpV2KMapEstimationQuasiIdValues (..),
    newGooglePrivacyDlpV2KMapEstimationQuasiIdValues,

    -- ** GooglePrivacyDlpV2KMapEstimationResult
    GooglePrivacyDlpV2KMapEstimationResult (..),
    newGooglePrivacyDlpV2KMapEstimationResult,

    -- ** GooglePrivacyDlpV2Key
    GooglePrivacyDlpV2Key (..),
    newGooglePrivacyDlpV2Key,

    -- ** GooglePrivacyDlpV2KindExpression
    GooglePrivacyDlpV2KindExpression (..),
    newGooglePrivacyDlpV2KindExpression,

    -- ** GooglePrivacyDlpV2KmsWrappedCryptoKey
    GooglePrivacyDlpV2KmsWrappedCryptoKey (..),
    newGooglePrivacyDlpV2KmsWrappedCryptoKey,

    -- ** GooglePrivacyDlpV2LDiversityConfig
    GooglePrivacyDlpV2LDiversityConfig (..),
    newGooglePrivacyDlpV2LDiversityConfig,

    -- ** GooglePrivacyDlpV2LDiversityEquivalenceClass
    GooglePrivacyDlpV2LDiversityEquivalenceClass (..),
    newGooglePrivacyDlpV2LDiversityEquivalenceClass,

    -- ** GooglePrivacyDlpV2LDiversityHistogramBucket
    GooglePrivacyDlpV2LDiversityHistogramBucket (..),
    newGooglePrivacyDlpV2LDiversityHistogramBucket,

    -- ** GooglePrivacyDlpV2LDiversityResult
    GooglePrivacyDlpV2LDiversityResult (..),
    newGooglePrivacyDlpV2LDiversityResult,

    -- ** GooglePrivacyDlpV2LargeCustomDictionaryConfig
    GooglePrivacyDlpV2LargeCustomDictionaryConfig (..),
    newGooglePrivacyDlpV2LargeCustomDictionaryConfig,

    -- ** GooglePrivacyDlpV2LargeCustomDictionaryStats
    GooglePrivacyDlpV2LargeCustomDictionaryStats (..),
    newGooglePrivacyDlpV2LargeCustomDictionaryStats,

    -- ** GooglePrivacyDlpV2LeaveUntransformed
    GooglePrivacyDlpV2LeaveUntransformed (..),
    newGooglePrivacyDlpV2LeaveUntransformed,

    -- ** GooglePrivacyDlpV2LikelihoodAdjustment
    GooglePrivacyDlpV2LikelihoodAdjustment (..),
    newGooglePrivacyDlpV2LikelihoodAdjustment,

    -- ** GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood
    GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood (..),

    -- ** GooglePrivacyDlpV2ListColumnDataProfilesResponse
    GooglePrivacyDlpV2ListColumnDataProfilesResponse (..),
    newGooglePrivacyDlpV2ListColumnDataProfilesResponse,

    -- ** GooglePrivacyDlpV2ListConnectionsResponse
    GooglePrivacyDlpV2ListConnectionsResponse (..),
    newGooglePrivacyDlpV2ListConnectionsResponse,

    -- ** GooglePrivacyDlpV2ListDeidentifyTemplatesResponse
    GooglePrivacyDlpV2ListDeidentifyTemplatesResponse (..),
    newGooglePrivacyDlpV2ListDeidentifyTemplatesResponse,

    -- ** GooglePrivacyDlpV2ListDiscoveryConfigsResponse
    GooglePrivacyDlpV2ListDiscoveryConfigsResponse (..),
    newGooglePrivacyDlpV2ListDiscoveryConfigsResponse,

    -- ** GooglePrivacyDlpV2ListDlpJobsResponse
    GooglePrivacyDlpV2ListDlpJobsResponse (..),
    newGooglePrivacyDlpV2ListDlpJobsResponse,

    -- ** GooglePrivacyDlpV2ListFileStoreDataProfilesResponse
    GooglePrivacyDlpV2ListFileStoreDataProfilesResponse (..),
    newGooglePrivacyDlpV2ListFileStoreDataProfilesResponse,

    -- ** GooglePrivacyDlpV2ListInfoTypesResponse
    GooglePrivacyDlpV2ListInfoTypesResponse (..),
    newGooglePrivacyDlpV2ListInfoTypesResponse,

    -- ** GooglePrivacyDlpV2ListInspectTemplatesResponse
    GooglePrivacyDlpV2ListInspectTemplatesResponse (..),
    newGooglePrivacyDlpV2ListInspectTemplatesResponse,

    -- ** GooglePrivacyDlpV2ListJobTriggersResponse
    GooglePrivacyDlpV2ListJobTriggersResponse (..),
    newGooglePrivacyDlpV2ListJobTriggersResponse,

    -- ** GooglePrivacyDlpV2ListProjectDataProfilesResponse
    GooglePrivacyDlpV2ListProjectDataProfilesResponse (..),
    newGooglePrivacyDlpV2ListProjectDataProfilesResponse,

    -- ** GooglePrivacyDlpV2ListStoredInfoTypesResponse
    GooglePrivacyDlpV2ListStoredInfoTypesResponse (..),
    newGooglePrivacyDlpV2ListStoredInfoTypesResponse,

    -- ** GooglePrivacyDlpV2ListTableDataProfilesResponse
    GooglePrivacyDlpV2ListTableDataProfilesResponse (..),
    newGooglePrivacyDlpV2ListTableDataProfilesResponse,

    -- ** GooglePrivacyDlpV2Location
    GooglePrivacyDlpV2Location (..),
    newGooglePrivacyDlpV2Location,

    -- ** GooglePrivacyDlpV2Manual
    GooglePrivacyDlpV2Manual (..),
    newGooglePrivacyDlpV2Manual,

    -- ** GooglePrivacyDlpV2MetadataLocation
    GooglePrivacyDlpV2MetadataLocation (..),
    newGooglePrivacyDlpV2MetadataLocation,

    -- ** GooglePrivacyDlpV2MetadataLocation_Type
    GooglePrivacyDlpV2MetadataLocation_Type (..),

    -- ** GooglePrivacyDlpV2MultiRegionProcessing
    GooglePrivacyDlpV2MultiRegionProcessing (..),
    newGooglePrivacyDlpV2MultiRegionProcessing,

    -- ** GooglePrivacyDlpV2NumericalStatsConfig
    GooglePrivacyDlpV2NumericalStatsConfig (..),
    newGooglePrivacyDlpV2NumericalStatsConfig,

    -- ** GooglePrivacyDlpV2NumericalStatsResult
    GooglePrivacyDlpV2NumericalStatsResult (..),
    newGooglePrivacyDlpV2NumericalStatsResult,

    -- ** GooglePrivacyDlpV2OrConditions
    GooglePrivacyDlpV2OrConditions (..),
    newGooglePrivacyDlpV2OrConditions,

    -- ** GooglePrivacyDlpV2OrgConfig
    GooglePrivacyDlpV2OrgConfig (..),
    newGooglePrivacyDlpV2OrgConfig,

    -- ** GooglePrivacyDlpV2OtherCloudDiscoveryStartingLocation
    GooglePrivacyDlpV2OtherCloudDiscoveryStartingLocation (..),
    newGooglePrivacyDlpV2OtherCloudDiscoveryStartingLocation,

    -- ** GooglePrivacyDlpV2OtherCloudDiscoveryTarget
    GooglePrivacyDlpV2OtherCloudDiscoveryTarget (..),
    newGooglePrivacyDlpV2OtherCloudDiscoveryTarget,

    -- ** GooglePrivacyDlpV2OtherCloudResourceCollection
    GooglePrivacyDlpV2OtherCloudResourceCollection (..),
    newGooglePrivacyDlpV2OtherCloudResourceCollection,

    -- ** GooglePrivacyDlpV2OtherCloudResourceRegex
    GooglePrivacyDlpV2OtherCloudResourceRegex (..),
    newGooglePrivacyDlpV2OtherCloudResourceRegex,

    -- ** GooglePrivacyDlpV2OtherCloudResourceRegexes
    GooglePrivacyDlpV2OtherCloudResourceRegexes (..),
    newGooglePrivacyDlpV2OtherCloudResourceRegexes,

    -- ** GooglePrivacyDlpV2OtherCloudSingleResourceReference
    GooglePrivacyDlpV2OtherCloudSingleResourceReference (..),
    newGooglePrivacyDlpV2OtherCloudSingleResourceReference,

    -- ** GooglePrivacyDlpV2OtherInfoTypeSummary
    GooglePrivacyDlpV2OtherInfoTypeSummary (..),
    newGooglePrivacyDlpV2OtherInfoTypeSummary,

    -- ** GooglePrivacyDlpV2OutputStorageConfig
    GooglePrivacyDlpV2OutputStorageConfig (..),
    newGooglePrivacyDlpV2OutputStorageConfig,

    -- ** GooglePrivacyDlpV2OutputStorageConfig_OutputSchema
    GooglePrivacyDlpV2OutputStorageConfig_OutputSchema (..),

    -- ** GooglePrivacyDlpV2PartitionId
    GooglePrivacyDlpV2PartitionId (..),
    newGooglePrivacyDlpV2PartitionId,

    -- ** GooglePrivacyDlpV2PathElement
    GooglePrivacyDlpV2PathElement (..),
    newGooglePrivacyDlpV2PathElement,

    -- ** GooglePrivacyDlpV2PrimitiveTransformation
    GooglePrivacyDlpV2PrimitiveTransformation (..),
    newGooglePrivacyDlpV2PrimitiveTransformation,

    -- ** GooglePrivacyDlpV2PrivacyMetric
    GooglePrivacyDlpV2PrivacyMetric (..),
    newGooglePrivacyDlpV2PrivacyMetric,

    -- ** GooglePrivacyDlpV2ProcessingLocation
    GooglePrivacyDlpV2ProcessingLocation (..),
    newGooglePrivacyDlpV2ProcessingLocation,

    -- ** GooglePrivacyDlpV2ProfileStatus
    GooglePrivacyDlpV2ProfileStatus (..),
    newGooglePrivacyDlpV2ProfileStatus,

    -- ** GooglePrivacyDlpV2ProjectDataProfile
    GooglePrivacyDlpV2ProjectDataProfile (..),
    newGooglePrivacyDlpV2ProjectDataProfile,

    -- ** GooglePrivacyDlpV2Proximity
    GooglePrivacyDlpV2Proximity (..),
    newGooglePrivacyDlpV2Proximity,

    -- ** GooglePrivacyDlpV2PubSubCondition
    GooglePrivacyDlpV2PubSubCondition (..),
    newGooglePrivacyDlpV2PubSubCondition,

    -- ** GooglePrivacyDlpV2PubSubCondition_MinimumRiskScore
    GooglePrivacyDlpV2PubSubCondition_MinimumRiskScore (..),

    -- ** GooglePrivacyDlpV2PubSubCondition_MinimumSensitivityScore
    GooglePrivacyDlpV2PubSubCondition_MinimumSensitivityScore (..),

    -- ** GooglePrivacyDlpV2PubSubExpressions
    GooglePrivacyDlpV2PubSubExpressions (..),
    newGooglePrivacyDlpV2PubSubExpressions,

    -- ** GooglePrivacyDlpV2PubSubExpressions_LogicalOperator
    GooglePrivacyDlpV2PubSubExpressions_LogicalOperator (..),

    -- ** GooglePrivacyDlpV2PubSubNotification
    GooglePrivacyDlpV2PubSubNotification (..),
    newGooglePrivacyDlpV2PubSubNotification,

    -- ** GooglePrivacyDlpV2PubSubNotification_DetailOfMessage
    GooglePrivacyDlpV2PubSubNotification_DetailOfMessage (..),

    -- ** GooglePrivacyDlpV2PubSubNotification_Event
    GooglePrivacyDlpV2PubSubNotification_Event (..),

    -- ** GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog
    GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog (..),
    newGooglePrivacyDlpV2PublishFindingsToCloudDataCatalog,

    -- ** GooglePrivacyDlpV2PublishSummaryToCscc
    GooglePrivacyDlpV2PublishSummaryToCscc (..),
    newGooglePrivacyDlpV2PublishSummaryToCscc,

    -- ** GooglePrivacyDlpV2PublishToChronicle
    GooglePrivacyDlpV2PublishToChronicle (..),
    newGooglePrivacyDlpV2PublishToChronicle,

    -- ** GooglePrivacyDlpV2PublishToPubSub
    GooglePrivacyDlpV2PublishToPubSub (..),
    newGooglePrivacyDlpV2PublishToPubSub,

    -- ** GooglePrivacyDlpV2PublishToSecurityCommandCenter
    GooglePrivacyDlpV2PublishToSecurityCommandCenter (..),
    newGooglePrivacyDlpV2PublishToSecurityCommandCenter,

    -- ** GooglePrivacyDlpV2PublishToStackdriver
    GooglePrivacyDlpV2PublishToStackdriver (..),
    newGooglePrivacyDlpV2PublishToStackdriver,

    -- ** GooglePrivacyDlpV2QuasiId
    GooglePrivacyDlpV2QuasiId (..),
    newGooglePrivacyDlpV2QuasiId,

    -- ** GooglePrivacyDlpV2QuasiIdField
    GooglePrivacyDlpV2QuasiIdField (..),
    newGooglePrivacyDlpV2QuasiIdField,

    -- ** GooglePrivacyDlpV2QuasiIdentifierField
    GooglePrivacyDlpV2QuasiIdentifierField (..),
    newGooglePrivacyDlpV2QuasiIdentifierField,

    -- ** GooglePrivacyDlpV2QuoteInfo
    GooglePrivacyDlpV2QuoteInfo (..),
    newGooglePrivacyDlpV2QuoteInfo,

    -- ** GooglePrivacyDlpV2Range
    GooglePrivacyDlpV2Range (..),
    newGooglePrivacyDlpV2Range,

    -- ** GooglePrivacyDlpV2RecordCondition
    GooglePrivacyDlpV2RecordCondition (..),
    newGooglePrivacyDlpV2RecordCondition,

    -- ** GooglePrivacyDlpV2RecordKey
    GooglePrivacyDlpV2RecordKey (..),
    newGooglePrivacyDlpV2RecordKey,

    -- ** GooglePrivacyDlpV2RecordLocation
    GooglePrivacyDlpV2RecordLocation (..),
    newGooglePrivacyDlpV2RecordLocation,

    -- ** GooglePrivacyDlpV2RecordSuppression
    GooglePrivacyDlpV2RecordSuppression (..),
    newGooglePrivacyDlpV2RecordSuppression,

    -- ** GooglePrivacyDlpV2RecordTransformation
    GooglePrivacyDlpV2RecordTransformation (..),
    newGooglePrivacyDlpV2RecordTransformation,

    -- ** GooglePrivacyDlpV2RecordTransformations
    GooglePrivacyDlpV2RecordTransformations (..),
    newGooglePrivacyDlpV2RecordTransformations,

    -- ** GooglePrivacyDlpV2RedactConfig
    GooglePrivacyDlpV2RedactConfig (..),
    newGooglePrivacyDlpV2RedactConfig,

    -- ** GooglePrivacyDlpV2RedactImageRequest
    GooglePrivacyDlpV2RedactImageRequest (..),
    newGooglePrivacyDlpV2RedactImageRequest,

    -- ** GooglePrivacyDlpV2RedactImageResponse
    GooglePrivacyDlpV2RedactImageResponse (..),
    newGooglePrivacyDlpV2RedactImageResponse,

    -- ** GooglePrivacyDlpV2Regex
    GooglePrivacyDlpV2Regex (..),
    newGooglePrivacyDlpV2Regex,

    -- ** GooglePrivacyDlpV2ReidentifyContentRequest
    GooglePrivacyDlpV2ReidentifyContentRequest (..),
    newGooglePrivacyDlpV2ReidentifyContentRequest,

    -- ** GooglePrivacyDlpV2ReidentifyContentResponse
    GooglePrivacyDlpV2ReidentifyContentResponse (..),
    newGooglePrivacyDlpV2ReidentifyContentResponse,

    -- ** GooglePrivacyDlpV2RelatedResource
    GooglePrivacyDlpV2RelatedResource (..),
    newGooglePrivacyDlpV2RelatedResource,

    -- ** GooglePrivacyDlpV2ReplaceDictionaryConfig
    GooglePrivacyDlpV2ReplaceDictionaryConfig (..),
    newGooglePrivacyDlpV2ReplaceDictionaryConfig,

    -- ** GooglePrivacyDlpV2ReplaceValueConfig
    GooglePrivacyDlpV2ReplaceValueConfig (..),
    newGooglePrivacyDlpV2ReplaceValueConfig,

    -- ** GooglePrivacyDlpV2ReplaceWithInfoTypeConfig
    GooglePrivacyDlpV2ReplaceWithInfoTypeConfig (..),
    newGooglePrivacyDlpV2ReplaceWithInfoTypeConfig,

    -- ** GooglePrivacyDlpV2RequestedDeidentifyOptions
    GooglePrivacyDlpV2RequestedDeidentifyOptions (..),
    newGooglePrivacyDlpV2RequestedDeidentifyOptions,

    -- ** GooglePrivacyDlpV2RequestedOptions
    GooglePrivacyDlpV2RequestedOptions (..),
    newGooglePrivacyDlpV2RequestedOptions,

    -- ** GooglePrivacyDlpV2RequestedRiskAnalysisOptions
    GooglePrivacyDlpV2RequestedRiskAnalysisOptions (..),
    newGooglePrivacyDlpV2RequestedRiskAnalysisOptions,

    -- ** GooglePrivacyDlpV2Result
    GooglePrivacyDlpV2Result (..),
    newGooglePrivacyDlpV2Result,

    -- ** GooglePrivacyDlpV2RiskAnalysisJobConfig
    GooglePrivacyDlpV2RiskAnalysisJobConfig (..),
    newGooglePrivacyDlpV2RiskAnalysisJobConfig,

    -- ** GooglePrivacyDlpV2Row
    GooglePrivacyDlpV2Row (..),
    newGooglePrivacyDlpV2Row,

    -- ** GooglePrivacyDlpV2SaveFindings
    GooglePrivacyDlpV2SaveFindings (..),
    newGooglePrivacyDlpV2SaveFindings,

    -- ** GooglePrivacyDlpV2Schedule
    GooglePrivacyDlpV2Schedule (..),
    newGooglePrivacyDlpV2Schedule,

    -- ** GooglePrivacyDlpV2SchemaModifiedCadence
    GooglePrivacyDlpV2SchemaModifiedCadence (..),
    newGooglePrivacyDlpV2SchemaModifiedCadence,

    -- ** GooglePrivacyDlpV2SchemaModifiedCadence_Frequency
    GooglePrivacyDlpV2SchemaModifiedCadence_Frequency (..),

    -- ** GooglePrivacyDlpV2SchemaModifiedCadence_TypesItem
    GooglePrivacyDlpV2SchemaModifiedCadence_TypesItem (..),

    -- ** GooglePrivacyDlpV2SearchConnectionsResponse
    GooglePrivacyDlpV2SearchConnectionsResponse (..),
    newGooglePrivacyDlpV2SearchConnectionsResponse,

    -- ** GooglePrivacyDlpV2SecretManagerCredential
    GooglePrivacyDlpV2SecretManagerCredential (..),
    newGooglePrivacyDlpV2SecretManagerCredential,

    -- ** GooglePrivacyDlpV2SecretsDiscoveryTarget
    GooglePrivacyDlpV2SecretsDiscoveryTarget (..),
    newGooglePrivacyDlpV2SecretsDiscoveryTarget,

    -- ** GooglePrivacyDlpV2SelectedInfoTypes
    GooglePrivacyDlpV2SelectedInfoTypes (..),
    newGooglePrivacyDlpV2SelectedInfoTypes,

    -- ** GooglePrivacyDlpV2SensitivityScore
    GooglePrivacyDlpV2SensitivityScore (..),
    newGooglePrivacyDlpV2SensitivityScore,

    -- ** GooglePrivacyDlpV2SensitivityScore_Score
    GooglePrivacyDlpV2SensitivityScore_Score (..),

    -- ** GooglePrivacyDlpV2StatisticalTable
    GooglePrivacyDlpV2StatisticalTable (..),
    newGooglePrivacyDlpV2StatisticalTable,

    -- ** GooglePrivacyDlpV2StorageConfig
    GooglePrivacyDlpV2StorageConfig (..),
    newGooglePrivacyDlpV2StorageConfig,

    -- ** GooglePrivacyDlpV2StorageMetadataLabel
    GooglePrivacyDlpV2StorageMetadataLabel (..),
    newGooglePrivacyDlpV2StorageMetadataLabel,

    -- ** GooglePrivacyDlpV2StoredInfoType
    GooglePrivacyDlpV2StoredInfoType (..),
    newGooglePrivacyDlpV2StoredInfoType,

    -- ** GooglePrivacyDlpV2StoredInfoTypeConfig
    GooglePrivacyDlpV2StoredInfoTypeConfig (..),
    newGooglePrivacyDlpV2StoredInfoTypeConfig,

    -- ** GooglePrivacyDlpV2StoredInfoTypeStats
    GooglePrivacyDlpV2StoredInfoTypeStats (..),
    newGooglePrivacyDlpV2StoredInfoTypeStats,

    -- ** GooglePrivacyDlpV2StoredInfoTypeVersion
    GooglePrivacyDlpV2StoredInfoTypeVersion (..),
    newGooglePrivacyDlpV2StoredInfoTypeVersion,

    -- ** GooglePrivacyDlpV2StoredInfoTypeVersion_State
    GooglePrivacyDlpV2StoredInfoTypeVersion_State (..),

    -- ** GooglePrivacyDlpV2StoredType
    GooglePrivacyDlpV2StoredType (..),
    newGooglePrivacyDlpV2StoredType,

    -- ** GooglePrivacyDlpV2SummaryResult
    GooglePrivacyDlpV2SummaryResult (..),
    newGooglePrivacyDlpV2SummaryResult,

    -- ** GooglePrivacyDlpV2SummaryResult_Code
    GooglePrivacyDlpV2SummaryResult_Code (..),

    -- ** GooglePrivacyDlpV2SurrogateType
    GooglePrivacyDlpV2SurrogateType (..),
    newGooglePrivacyDlpV2SurrogateType,

    -- ** GooglePrivacyDlpV2Table
    GooglePrivacyDlpV2Table (..),
    newGooglePrivacyDlpV2Table,

    -- ** GooglePrivacyDlpV2TableDataProfile
    GooglePrivacyDlpV2TableDataProfile (..),
    newGooglePrivacyDlpV2TableDataProfile,

    -- ** GooglePrivacyDlpV2TableDataProfile_EncryptionStatus
    GooglePrivacyDlpV2TableDataProfile_EncryptionStatus (..),

    -- ** GooglePrivacyDlpV2TableDataProfile_ResourceLabels
    GooglePrivacyDlpV2TableDataProfile_ResourceLabels (..),
    newGooglePrivacyDlpV2TableDataProfile_ResourceLabels,

    -- ** GooglePrivacyDlpV2TableDataProfile_ResourceVisibility
    GooglePrivacyDlpV2TableDataProfile_ResourceVisibility (..),

    -- ** GooglePrivacyDlpV2TableDataProfile_State
    GooglePrivacyDlpV2TableDataProfile_State (..),

    -- ** GooglePrivacyDlpV2TableLocation
    GooglePrivacyDlpV2TableLocation (..),
    newGooglePrivacyDlpV2TableLocation,

    -- ** GooglePrivacyDlpV2TableOptions
    GooglePrivacyDlpV2TableOptions (..),
    newGooglePrivacyDlpV2TableOptions,

    -- ** GooglePrivacyDlpV2TableReference
    GooglePrivacyDlpV2TableReference (..),
    newGooglePrivacyDlpV2TableReference,

    -- ** GooglePrivacyDlpV2TagCondition
    GooglePrivacyDlpV2TagCondition (..),
    newGooglePrivacyDlpV2TagCondition,

    -- ** GooglePrivacyDlpV2TagResources
    GooglePrivacyDlpV2TagResources (..),
    newGooglePrivacyDlpV2TagResources,

    -- ** GooglePrivacyDlpV2TagResources_ProfileGenerationsToTagItem
    GooglePrivacyDlpV2TagResources_ProfileGenerationsToTagItem (..),

    -- ** GooglePrivacyDlpV2TagValue
    GooglePrivacyDlpV2TagValue (..),
    newGooglePrivacyDlpV2TagValue,

    -- ** GooglePrivacyDlpV2TaggedField
    GooglePrivacyDlpV2TaggedField (..),
    newGooglePrivacyDlpV2TaggedField,

    -- ** GooglePrivacyDlpV2ThrowError
    GooglePrivacyDlpV2ThrowError (..),
    newGooglePrivacyDlpV2ThrowError,

    -- ** GooglePrivacyDlpV2TimePartConfig
    GooglePrivacyDlpV2TimePartConfig (..),
    newGooglePrivacyDlpV2TimePartConfig,

    -- ** GooglePrivacyDlpV2TimePartConfig_PartToExtract
    GooglePrivacyDlpV2TimePartConfig_PartToExtract (..),

    -- ** GooglePrivacyDlpV2TimeZone
    GooglePrivacyDlpV2TimeZone (..),
    newGooglePrivacyDlpV2TimeZone,

    -- ** GooglePrivacyDlpV2TimespanConfig
    GooglePrivacyDlpV2TimespanConfig (..),
    newGooglePrivacyDlpV2TimespanConfig,

    -- ** GooglePrivacyDlpV2TransformationConfig
    GooglePrivacyDlpV2TransformationConfig (..),
    newGooglePrivacyDlpV2TransformationConfig,

    -- ** GooglePrivacyDlpV2TransformationDescription
    GooglePrivacyDlpV2TransformationDescription (..),
    newGooglePrivacyDlpV2TransformationDescription,

    -- ** GooglePrivacyDlpV2TransformationDescription_Type
    GooglePrivacyDlpV2TransformationDescription_Type (..),

    -- ** GooglePrivacyDlpV2TransformationDetails
    GooglePrivacyDlpV2TransformationDetails (..),
    newGooglePrivacyDlpV2TransformationDetails,

    -- ** GooglePrivacyDlpV2TransformationDetailsStorageConfig
    GooglePrivacyDlpV2TransformationDetailsStorageConfig (..),
    newGooglePrivacyDlpV2TransformationDetailsStorageConfig,

    -- ** GooglePrivacyDlpV2TransformationErrorHandling
    GooglePrivacyDlpV2TransformationErrorHandling (..),
    newGooglePrivacyDlpV2TransformationErrorHandling,

    -- ** GooglePrivacyDlpV2TransformationLocation
    GooglePrivacyDlpV2TransformationLocation (..),
    newGooglePrivacyDlpV2TransformationLocation,

    -- ** GooglePrivacyDlpV2TransformationLocation_ContainerType
    GooglePrivacyDlpV2TransformationLocation_ContainerType (..),

    -- ** GooglePrivacyDlpV2TransformationOverview
    GooglePrivacyDlpV2TransformationOverview (..),
    newGooglePrivacyDlpV2TransformationOverview,

    -- ** GooglePrivacyDlpV2TransformationResultStatus
    GooglePrivacyDlpV2TransformationResultStatus (..),
    newGooglePrivacyDlpV2TransformationResultStatus,

    -- ** GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType
    GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType (..),

    -- ** GooglePrivacyDlpV2TransformationSummary
    GooglePrivacyDlpV2TransformationSummary (..),
    newGooglePrivacyDlpV2TransformationSummary,

    -- ** GooglePrivacyDlpV2TransientCryptoKey
    GooglePrivacyDlpV2TransientCryptoKey (..),
    newGooglePrivacyDlpV2TransientCryptoKey,

    -- ** GooglePrivacyDlpV2Trigger
    GooglePrivacyDlpV2Trigger (..),
    newGooglePrivacyDlpV2Trigger,

    -- ** GooglePrivacyDlpV2UnwrappedCryptoKey
    GooglePrivacyDlpV2UnwrappedCryptoKey (..),
    newGooglePrivacyDlpV2UnwrappedCryptoKey,

    -- ** GooglePrivacyDlpV2UpdateConnectionRequest
    GooglePrivacyDlpV2UpdateConnectionRequest (..),
    newGooglePrivacyDlpV2UpdateConnectionRequest,

    -- ** GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest
    GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest (..),
    newGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest,

    -- ** GooglePrivacyDlpV2UpdateDiscoveryConfigRequest
    GooglePrivacyDlpV2UpdateDiscoveryConfigRequest (..),
    newGooglePrivacyDlpV2UpdateDiscoveryConfigRequest,

    -- ** GooglePrivacyDlpV2UpdateInspectTemplateRequest
    GooglePrivacyDlpV2UpdateInspectTemplateRequest (..),
    newGooglePrivacyDlpV2UpdateInspectTemplateRequest,

    -- ** GooglePrivacyDlpV2UpdateJobTriggerRequest
    GooglePrivacyDlpV2UpdateJobTriggerRequest (..),
    newGooglePrivacyDlpV2UpdateJobTriggerRequest,

    -- ** GooglePrivacyDlpV2UpdateStoredInfoTypeRequest
    GooglePrivacyDlpV2UpdateStoredInfoTypeRequest (..),
    newGooglePrivacyDlpV2UpdateStoredInfoTypeRequest,

    -- ** GooglePrivacyDlpV2Value
    GooglePrivacyDlpV2Value (..),
    newGooglePrivacyDlpV2Value,

    -- ** GooglePrivacyDlpV2Value_DayOfWeekValue
    GooglePrivacyDlpV2Value_DayOfWeekValue (..),

    -- ** GooglePrivacyDlpV2ValueFrequency
    GooglePrivacyDlpV2ValueFrequency (..),
    newGooglePrivacyDlpV2ValueFrequency,

    -- ** GooglePrivacyDlpV2VersionDescription
    GooglePrivacyDlpV2VersionDescription (..),
    newGooglePrivacyDlpV2VersionDescription,

    -- ** GooglePrivacyDlpV2VertexDatasetCollection
    GooglePrivacyDlpV2VertexDatasetCollection (..),
    newGooglePrivacyDlpV2VertexDatasetCollection,

    -- ** GooglePrivacyDlpV2VertexDatasetDiscoveryTarget
    GooglePrivacyDlpV2VertexDatasetDiscoveryTarget (..),
    newGooglePrivacyDlpV2VertexDatasetDiscoveryTarget,

    -- ** GooglePrivacyDlpV2VertexDatasetRegex
    GooglePrivacyDlpV2VertexDatasetRegex (..),
    newGooglePrivacyDlpV2VertexDatasetRegex,

    -- ** GooglePrivacyDlpV2VertexDatasetRegexes
    GooglePrivacyDlpV2VertexDatasetRegexes (..),
    newGooglePrivacyDlpV2VertexDatasetRegexes,

    -- ** GooglePrivacyDlpV2VertexDatasetResourceReference
    GooglePrivacyDlpV2VertexDatasetResourceReference (..),
    newGooglePrivacyDlpV2VertexDatasetResourceReference,

    -- ** GooglePrivacyDlpV2WordList
    GooglePrivacyDlpV2WordList (..),
    newGooglePrivacyDlpV2WordList,

    -- ** GoogleProtobufEmpty
    GoogleProtobufEmpty (..),
    newGoogleProtobufEmpty,

    -- ** GoogleRpcStatus
    GoogleRpcStatus (..),
    newGoogleRpcStatus,

    -- ** GoogleRpcStatus_DetailsItem
    GoogleRpcStatus_DetailsItem (..),
    newGoogleRpcStatus_DetailsItem,

    -- ** GoogleTypeDate
    GoogleTypeDate (..),
    newGoogleTypeDate,

    -- ** GoogleTypeTimeOfDay
    GoogleTypeTimeOfDay (..),
    newGoogleTypeTimeOfDay,

    -- ** OrganizationsLocationsDlpJobsListType
    OrganizationsLocationsDlpJobsListType (..),

    -- ** OrganizationsLocationsJobTriggersListType
    OrganizationsLocationsJobTriggersListType (..),

    -- ** ProjectsDlpJobsListType
    ProjectsDlpJobsListType (..),

    -- ** ProjectsJobTriggersListType
    ProjectsJobTriggersListType (..),

    -- ** ProjectsLocationsDlpJobsListType
    ProjectsLocationsDlpJobsListType (..),

    -- ** ProjectsLocationsJobTriggersListType
    ProjectsLocationsJobTriggersListType (..),
  )
where

import Gogol.DLP.Internal.Product
import Gogol.DLP.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v2@ of the Sensitive Data Protection (DLP). This contains the host and root path used as a starting point for constructing service requests.
dLPService :: Core.ServiceConfig
dLPService =
  Core.defaultService
    (Core.ServiceId "dlp:v2")
    "dlp.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl =
  "https://www.googleapis.com/auth/cloud-platform"
