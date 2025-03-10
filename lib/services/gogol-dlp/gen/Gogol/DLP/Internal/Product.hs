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
-- Module      : Gogol.DLP.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.DLP.Internal.Product
  ( -- * GooglePrivacyDlpV2Action
    GooglePrivacyDlpV2Action (..),
    newGooglePrivacyDlpV2Action,

    -- * GooglePrivacyDlpV2ActionDetails
    GooglePrivacyDlpV2ActionDetails (..),
    newGooglePrivacyDlpV2ActionDetails,

    -- * GooglePrivacyDlpV2ActivateJobTriggerRequest
    GooglePrivacyDlpV2ActivateJobTriggerRequest (..),
    newGooglePrivacyDlpV2ActivateJobTriggerRequest,

    -- * GooglePrivacyDlpV2AllInfoTypes
    GooglePrivacyDlpV2AllInfoTypes (..),
    newGooglePrivacyDlpV2AllInfoTypes,

    -- * GooglePrivacyDlpV2AllOtherBigQueryTables
    GooglePrivacyDlpV2AllOtherBigQueryTables (..),
    newGooglePrivacyDlpV2AllOtherBigQueryTables,

    -- * GooglePrivacyDlpV2AllOtherDatabaseResources
    GooglePrivacyDlpV2AllOtherDatabaseResources (..),
    newGooglePrivacyDlpV2AllOtherDatabaseResources,

    -- * GooglePrivacyDlpV2AllOtherResources
    GooglePrivacyDlpV2AllOtherResources (..),
    newGooglePrivacyDlpV2AllOtherResources,

    -- * GooglePrivacyDlpV2AllText
    GooglePrivacyDlpV2AllText (..),
    newGooglePrivacyDlpV2AllText,

    -- * GooglePrivacyDlpV2AmazonS3Bucket
    GooglePrivacyDlpV2AmazonS3Bucket (..),
    newGooglePrivacyDlpV2AmazonS3Bucket,

    -- * GooglePrivacyDlpV2AmazonS3BucketConditions
    GooglePrivacyDlpV2AmazonS3BucketConditions (..),
    newGooglePrivacyDlpV2AmazonS3BucketConditions,

    -- * GooglePrivacyDlpV2AmazonS3BucketRegex
    GooglePrivacyDlpV2AmazonS3BucketRegex (..),
    newGooglePrivacyDlpV2AmazonS3BucketRegex,

    -- * GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails
    GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails (..),
    newGooglePrivacyDlpV2AnalyzeDataSourceRiskDetails,

    -- * GooglePrivacyDlpV2AuxiliaryTable
    GooglePrivacyDlpV2AuxiliaryTable (..),
    newGooglePrivacyDlpV2AuxiliaryTable,

    -- * GooglePrivacyDlpV2AwsAccount
    GooglePrivacyDlpV2AwsAccount (..),
    newGooglePrivacyDlpV2AwsAccount,

    -- * GooglePrivacyDlpV2AwsAccountRegex
    GooglePrivacyDlpV2AwsAccountRegex (..),
    newGooglePrivacyDlpV2AwsAccountRegex,

    -- * GooglePrivacyDlpV2AwsDiscoveryStartingLocation
    GooglePrivacyDlpV2AwsDiscoveryStartingLocation (..),
    newGooglePrivacyDlpV2AwsDiscoveryStartingLocation,

    -- * GooglePrivacyDlpV2BigQueryDiscoveryTarget
    GooglePrivacyDlpV2BigQueryDiscoveryTarget (..),
    newGooglePrivacyDlpV2BigQueryDiscoveryTarget,

    -- * GooglePrivacyDlpV2BigQueryField
    GooglePrivacyDlpV2BigQueryField (..),
    newGooglePrivacyDlpV2BigQueryField,

    -- * GooglePrivacyDlpV2BigQueryKey
    GooglePrivacyDlpV2BigQueryKey (..),
    newGooglePrivacyDlpV2BigQueryKey,

    -- * GooglePrivacyDlpV2BigQueryOptions
    GooglePrivacyDlpV2BigQueryOptions (..),
    newGooglePrivacyDlpV2BigQueryOptions,

    -- * GooglePrivacyDlpV2BigQueryRegex
    GooglePrivacyDlpV2BigQueryRegex (..),
    newGooglePrivacyDlpV2BigQueryRegex,

    -- * GooglePrivacyDlpV2BigQueryRegexes
    GooglePrivacyDlpV2BigQueryRegexes (..),
    newGooglePrivacyDlpV2BigQueryRegexes,

    -- * GooglePrivacyDlpV2BigQueryTable
    GooglePrivacyDlpV2BigQueryTable (..),
    newGooglePrivacyDlpV2BigQueryTable,

    -- * GooglePrivacyDlpV2BigQueryTableCollection
    GooglePrivacyDlpV2BigQueryTableCollection (..),
    newGooglePrivacyDlpV2BigQueryTableCollection,

    -- * GooglePrivacyDlpV2BigQueryTableTypes
    GooglePrivacyDlpV2BigQueryTableTypes (..),
    newGooglePrivacyDlpV2BigQueryTableTypes,

    -- * GooglePrivacyDlpV2BoundingBox
    GooglePrivacyDlpV2BoundingBox (..),
    newGooglePrivacyDlpV2BoundingBox,

    -- * GooglePrivacyDlpV2Bucket
    GooglePrivacyDlpV2Bucket (..),
    newGooglePrivacyDlpV2Bucket,

    -- * GooglePrivacyDlpV2BucketingConfig
    GooglePrivacyDlpV2BucketingConfig (..),
    newGooglePrivacyDlpV2BucketingConfig,

    -- * GooglePrivacyDlpV2ByteContentItem
    GooglePrivacyDlpV2ByteContentItem (..),
    newGooglePrivacyDlpV2ByteContentItem,

    -- * GooglePrivacyDlpV2CancelDlpJobRequest
    GooglePrivacyDlpV2CancelDlpJobRequest (..),
    newGooglePrivacyDlpV2CancelDlpJobRequest,

    -- * GooglePrivacyDlpV2CategoricalStatsConfig
    GooglePrivacyDlpV2CategoricalStatsConfig (..),
    newGooglePrivacyDlpV2CategoricalStatsConfig,

    -- * GooglePrivacyDlpV2CategoricalStatsHistogramBucket
    GooglePrivacyDlpV2CategoricalStatsHistogramBucket (..),
    newGooglePrivacyDlpV2CategoricalStatsHistogramBucket,

    -- * GooglePrivacyDlpV2CategoricalStatsResult
    GooglePrivacyDlpV2CategoricalStatsResult (..),
    newGooglePrivacyDlpV2CategoricalStatsResult,

    -- * GooglePrivacyDlpV2CharacterMaskConfig
    GooglePrivacyDlpV2CharacterMaskConfig (..),
    newGooglePrivacyDlpV2CharacterMaskConfig,

    -- * GooglePrivacyDlpV2CharsToIgnore
    GooglePrivacyDlpV2CharsToIgnore (..),
    newGooglePrivacyDlpV2CharsToIgnore,

    -- * GooglePrivacyDlpV2CloudSqlDiscoveryTarget
    GooglePrivacyDlpV2CloudSqlDiscoveryTarget (..),
    newGooglePrivacyDlpV2CloudSqlDiscoveryTarget,

    -- * GooglePrivacyDlpV2CloudSqlIamCredential
    GooglePrivacyDlpV2CloudSqlIamCredential (..),
    newGooglePrivacyDlpV2CloudSqlIamCredential,

    -- * GooglePrivacyDlpV2CloudSqlProperties
    GooglePrivacyDlpV2CloudSqlProperties (..),
    newGooglePrivacyDlpV2CloudSqlProperties,

    -- * GooglePrivacyDlpV2CloudStorageDiscoveryTarget
    GooglePrivacyDlpV2CloudStorageDiscoveryTarget (..),
    newGooglePrivacyDlpV2CloudStorageDiscoveryTarget,

    -- * GooglePrivacyDlpV2CloudStorageFileSet
    GooglePrivacyDlpV2CloudStorageFileSet (..),
    newGooglePrivacyDlpV2CloudStorageFileSet,

    -- * GooglePrivacyDlpV2CloudStorageOptions
    GooglePrivacyDlpV2CloudStorageOptions (..),
    newGooglePrivacyDlpV2CloudStorageOptions,

    -- * GooglePrivacyDlpV2CloudStoragePath
    GooglePrivacyDlpV2CloudStoragePath (..),
    newGooglePrivacyDlpV2CloudStoragePath,

    -- * GooglePrivacyDlpV2CloudStorageRegex
    GooglePrivacyDlpV2CloudStorageRegex (..),
    newGooglePrivacyDlpV2CloudStorageRegex,

    -- * GooglePrivacyDlpV2CloudStorageRegexFileSet
    GooglePrivacyDlpV2CloudStorageRegexFileSet (..),
    newGooglePrivacyDlpV2CloudStorageRegexFileSet,

    -- * GooglePrivacyDlpV2CloudStorageResourceReference
    GooglePrivacyDlpV2CloudStorageResourceReference (..),
    newGooglePrivacyDlpV2CloudStorageResourceReference,

    -- * GooglePrivacyDlpV2Color
    GooglePrivacyDlpV2Color (..),
    newGooglePrivacyDlpV2Color,

    -- * GooglePrivacyDlpV2ColumnDataProfile
    GooglePrivacyDlpV2ColumnDataProfile (..),
    newGooglePrivacyDlpV2ColumnDataProfile,

    -- * GooglePrivacyDlpV2Condition
    GooglePrivacyDlpV2Condition (..),
    newGooglePrivacyDlpV2Condition,

    -- * GooglePrivacyDlpV2Conditions
    GooglePrivacyDlpV2Conditions (..),
    newGooglePrivacyDlpV2Conditions,

    -- * GooglePrivacyDlpV2Connection
    GooglePrivacyDlpV2Connection (..),
    newGooglePrivacyDlpV2Connection,

    -- * GooglePrivacyDlpV2Container
    GooglePrivacyDlpV2Container (..),
    newGooglePrivacyDlpV2Container,

    -- * GooglePrivacyDlpV2ContentItem
    GooglePrivacyDlpV2ContentItem (..),
    newGooglePrivacyDlpV2ContentItem,

    -- * GooglePrivacyDlpV2ContentLocation
    GooglePrivacyDlpV2ContentLocation (..),
    newGooglePrivacyDlpV2ContentLocation,

    -- * GooglePrivacyDlpV2CreateConnectionRequest
    GooglePrivacyDlpV2CreateConnectionRequest (..),
    newGooglePrivacyDlpV2CreateConnectionRequest,

    -- * GooglePrivacyDlpV2CreateDeidentifyTemplateRequest
    GooglePrivacyDlpV2CreateDeidentifyTemplateRequest (..),
    newGooglePrivacyDlpV2CreateDeidentifyTemplateRequest,

    -- * GooglePrivacyDlpV2CreateDiscoveryConfigRequest
    GooglePrivacyDlpV2CreateDiscoveryConfigRequest (..),
    newGooglePrivacyDlpV2CreateDiscoveryConfigRequest,

    -- * GooglePrivacyDlpV2CreateDlpJobRequest
    GooglePrivacyDlpV2CreateDlpJobRequest (..),
    newGooglePrivacyDlpV2CreateDlpJobRequest,

    -- * GooglePrivacyDlpV2CreateInspectTemplateRequest
    GooglePrivacyDlpV2CreateInspectTemplateRequest (..),
    newGooglePrivacyDlpV2CreateInspectTemplateRequest,

    -- * GooglePrivacyDlpV2CreateJobTriggerRequest
    GooglePrivacyDlpV2CreateJobTriggerRequest (..),
    newGooglePrivacyDlpV2CreateJobTriggerRequest,

    -- * GooglePrivacyDlpV2CreateStoredInfoTypeRequest
    GooglePrivacyDlpV2CreateStoredInfoTypeRequest (..),
    newGooglePrivacyDlpV2CreateStoredInfoTypeRequest,

    -- * GooglePrivacyDlpV2CryptoDeterministicConfig
    GooglePrivacyDlpV2CryptoDeterministicConfig (..),
    newGooglePrivacyDlpV2CryptoDeterministicConfig,

    -- * GooglePrivacyDlpV2CryptoHashConfig
    GooglePrivacyDlpV2CryptoHashConfig (..),
    newGooglePrivacyDlpV2CryptoHashConfig,

    -- * GooglePrivacyDlpV2CryptoKey
    GooglePrivacyDlpV2CryptoKey (..),
    newGooglePrivacyDlpV2CryptoKey,

    -- * GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig
    GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig (..),
    newGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig,

    -- * GooglePrivacyDlpV2CustomInfoType
    GooglePrivacyDlpV2CustomInfoType (..),
    newGooglePrivacyDlpV2CustomInfoType,

    -- * GooglePrivacyDlpV2DataProfileAction
    GooglePrivacyDlpV2DataProfileAction (..),
    newGooglePrivacyDlpV2DataProfileAction,

    -- * GooglePrivacyDlpV2DataProfileBigQueryRowSchema
    GooglePrivacyDlpV2DataProfileBigQueryRowSchema (..),
    newGooglePrivacyDlpV2DataProfileBigQueryRowSchema,

    -- * GooglePrivacyDlpV2DataProfileConfigSnapshot
    GooglePrivacyDlpV2DataProfileConfigSnapshot (..),
    newGooglePrivacyDlpV2DataProfileConfigSnapshot,

    -- * GooglePrivacyDlpV2DataProfileFinding
    GooglePrivacyDlpV2DataProfileFinding (..),
    newGooglePrivacyDlpV2DataProfileFinding,

    -- * GooglePrivacyDlpV2DataProfileFindingLocation
    GooglePrivacyDlpV2DataProfileFindingLocation (..),
    newGooglePrivacyDlpV2DataProfileFindingLocation,

    -- * GooglePrivacyDlpV2DataProfileFindingRecordLocation
    GooglePrivacyDlpV2DataProfileFindingRecordLocation (..),
    newGooglePrivacyDlpV2DataProfileFindingRecordLocation,

    -- * GooglePrivacyDlpV2DataProfileJobConfig
    GooglePrivacyDlpV2DataProfileJobConfig (..),
    newGooglePrivacyDlpV2DataProfileJobConfig,

    -- * GooglePrivacyDlpV2DataProfileLocation
    GooglePrivacyDlpV2DataProfileLocation (..),
    newGooglePrivacyDlpV2DataProfileLocation,

    -- * GooglePrivacyDlpV2DataProfilePubSubCondition
    GooglePrivacyDlpV2DataProfilePubSubCondition (..),
    newGooglePrivacyDlpV2DataProfilePubSubCondition,

    -- * GooglePrivacyDlpV2DataProfilePubSubMessage
    GooglePrivacyDlpV2DataProfilePubSubMessage (..),
    newGooglePrivacyDlpV2DataProfilePubSubMessage,

    -- * GooglePrivacyDlpV2DataRiskLevel
    GooglePrivacyDlpV2DataRiskLevel (..),
    newGooglePrivacyDlpV2DataRiskLevel,

    -- * GooglePrivacyDlpV2DataSourceType
    GooglePrivacyDlpV2DataSourceType (..),
    newGooglePrivacyDlpV2DataSourceType,

    -- * GooglePrivacyDlpV2DatabaseResourceCollection
    GooglePrivacyDlpV2DatabaseResourceCollection (..),
    newGooglePrivacyDlpV2DatabaseResourceCollection,

    -- * GooglePrivacyDlpV2DatabaseResourceReference
    GooglePrivacyDlpV2DatabaseResourceReference (..),
    newGooglePrivacyDlpV2DatabaseResourceReference,

    -- * GooglePrivacyDlpV2DatabaseResourceRegex
    GooglePrivacyDlpV2DatabaseResourceRegex (..),
    newGooglePrivacyDlpV2DatabaseResourceRegex,

    -- * GooglePrivacyDlpV2DatabaseResourceRegexes
    GooglePrivacyDlpV2DatabaseResourceRegexes (..),
    newGooglePrivacyDlpV2DatabaseResourceRegexes,

    -- * GooglePrivacyDlpV2DatastoreKey
    GooglePrivacyDlpV2DatastoreKey (..),
    newGooglePrivacyDlpV2DatastoreKey,

    -- * GooglePrivacyDlpV2DatastoreOptions
    GooglePrivacyDlpV2DatastoreOptions (..),
    newGooglePrivacyDlpV2DatastoreOptions,

    -- * GooglePrivacyDlpV2DateShiftConfig
    GooglePrivacyDlpV2DateShiftConfig (..),
    newGooglePrivacyDlpV2DateShiftConfig,

    -- * GooglePrivacyDlpV2DateTime
    GooglePrivacyDlpV2DateTime (..),
    newGooglePrivacyDlpV2DateTime,

    -- * GooglePrivacyDlpV2Deidentify
    GooglePrivacyDlpV2Deidentify (..),
    newGooglePrivacyDlpV2Deidentify,

    -- * GooglePrivacyDlpV2DeidentifyConfig
    GooglePrivacyDlpV2DeidentifyConfig (..),
    newGooglePrivacyDlpV2DeidentifyConfig,

    -- * GooglePrivacyDlpV2DeidentifyContentRequest
    GooglePrivacyDlpV2DeidentifyContentRequest (..),
    newGooglePrivacyDlpV2DeidentifyContentRequest,

    -- * GooglePrivacyDlpV2DeidentifyContentResponse
    GooglePrivacyDlpV2DeidentifyContentResponse (..),
    newGooglePrivacyDlpV2DeidentifyContentResponse,

    -- * GooglePrivacyDlpV2DeidentifyDataSourceDetails
    GooglePrivacyDlpV2DeidentifyDataSourceDetails (..),
    newGooglePrivacyDlpV2DeidentifyDataSourceDetails,

    -- * GooglePrivacyDlpV2DeidentifyDataSourceStats
    GooglePrivacyDlpV2DeidentifyDataSourceStats (..),
    newGooglePrivacyDlpV2DeidentifyDataSourceStats,

    -- * GooglePrivacyDlpV2DeidentifyTemplate
    GooglePrivacyDlpV2DeidentifyTemplate (..),
    newGooglePrivacyDlpV2DeidentifyTemplate,

    -- * GooglePrivacyDlpV2DeltaPresenceEstimationConfig
    GooglePrivacyDlpV2DeltaPresenceEstimationConfig (..),
    newGooglePrivacyDlpV2DeltaPresenceEstimationConfig,

    -- * GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket
    GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket (..),
    newGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket,

    -- * GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues
    GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues (..),
    newGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues,

    -- * GooglePrivacyDlpV2DeltaPresenceEstimationResult
    GooglePrivacyDlpV2DeltaPresenceEstimationResult (..),
    newGooglePrivacyDlpV2DeltaPresenceEstimationResult,

    -- * GooglePrivacyDlpV2DetectionRule
    GooglePrivacyDlpV2DetectionRule (..),
    newGooglePrivacyDlpV2DetectionRule,

    -- * GooglePrivacyDlpV2Dictionary
    GooglePrivacyDlpV2Dictionary (..),
    newGooglePrivacyDlpV2Dictionary,

    -- * GooglePrivacyDlpV2Disabled
    GooglePrivacyDlpV2Disabled (..),
    newGooglePrivacyDlpV2Disabled,

    -- * GooglePrivacyDlpV2DiscoveryBigQueryConditions
    GooglePrivacyDlpV2DiscoveryBigQueryConditions (..),
    newGooglePrivacyDlpV2DiscoveryBigQueryConditions,

    -- * GooglePrivacyDlpV2DiscoveryBigQueryFilter
    GooglePrivacyDlpV2DiscoveryBigQueryFilter (..),
    newGooglePrivacyDlpV2DiscoveryBigQueryFilter,

    -- * GooglePrivacyDlpV2DiscoveryCloudSqlConditions
    GooglePrivacyDlpV2DiscoveryCloudSqlConditions (..),
    newGooglePrivacyDlpV2DiscoveryCloudSqlConditions,

    -- * GooglePrivacyDlpV2DiscoveryCloudSqlFilter
    GooglePrivacyDlpV2DiscoveryCloudSqlFilter (..),
    newGooglePrivacyDlpV2DiscoveryCloudSqlFilter,

    -- * GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence
    GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence (..),
    newGooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence,

    -- * GooglePrivacyDlpV2DiscoveryCloudStorageConditions
    GooglePrivacyDlpV2DiscoveryCloudStorageConditions (..),
    newGooglePrivacyDlpV2DiscoveryCloudStorageConditions,

    -- * GooglePrivacyDlpV2DiscoveryCloudStorageFilter
    GooglePrivacyDlpV2DiscoveryCloudStorageFilter (..),
    newGooglePrivacyDlpV2DiscoveryCloudStorageFilter,

    -- * GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence
    GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence (..),
    newGooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence,

    -- * GooglePrivacyDlpV2DiscoveryConfig
    GooglePrivacyDlpV2DiscoveryConfig (..),
    newGooglePrivacyDlpV2DiscoveryConfig,

    -- * GooglePrivacyDlpV2DiscoveryFileStoreConditions
    GooglePrivacyDlpV2DiscoveryFileStoreConditions (..),
    newGooglePrivacyDlpV2DiscoveryFileStoreConditions,

    -- * GooglePrivacyDlpV2DiscoveryGenerationCadence
    GooglePrivacyDlpV2DiscoveryGenerationCadence (..),
    newGooglePrivacyDlpV2DiscoveryGenerationCadence,

    -- * GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence
    GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence (..),
    newGooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence,

    -- * GooglePrivacyDlpV2DiscoveryOtherCloudConditions
    GooglePrivacyDlpV2DiscoveryOtherCloudConditions (..),
    newGooglePrivacyDlpV2DiscoveryOtherCloudConditions,

    -- * GooglePrivacyDlpV2DiscoveryOtherCloudFilter
    GooglePrivacyDlpV2DiscoveryOtherCloudFilter (..),
    newGooglePrivacyDlpV2DiscoveryOtherCloudFilter,

    -- * GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence
    GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence (..),
    newGooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence,

    -- * GooglePrivacyDlpV2DiscoverySchemaModifiedCadence
    GooglePrivacyDlpV2DiscoverySchemaModifiedCadence (..),
    newGooglePrivacyDlpV2DiscoverySchemaModifiedCadence,

    -- * GooglePrivacyDlpV2DiscoveryStartingLocation
    GooglePrivacyDlpV2DiscoveryStartingLocation (..),
    newGooglePrivacyDlpV2DiscoveryStartingLocation,

    -- * GooglePrivacyDlpV2DiscoveryTableModifiedCadence
    GooglePrivacyDlpV2DiscoveryTableModifiedCadence (..),
    newGooglePrivacyDlpV2DiscoveryTableModifiedCadence,

    -- * GooglePrivacyDlpV2DiscoveryTarget
    GooglePrivacyDlpV2DiscoveryTarget (..),
    newGooglePrivacyDlpV2DiscoveryTarget,

    -- * GooglePrivacyDlpV2DiscoveryVertexDatasetConditions
    GooglePrivacyDlpV2DiscoveryVertexDatasetConditions (..),
    newGooglePrivacyDlpV2DiscoveryVertexDatasetConditions,

    -- * GooglePrivacyDlpV2DiscoveryVertexDatasetFilter
    GooglePrivacyDlpV2DiscoveryVertexDatasetFilter (..),
    newGooglePrivacyDlpV2DiscoveryVertexDatasetFilter,

    -- * GooglePrivacyDlpV2DiscoveryVertexDatasetGenerationCadence
    GooglePrivacyDlpV2DiscoveryVertexDatasetGenerationCadence (..),
    newGooglePrivacyDlpV2DiscoveryVertexDatasetGenerationCadence,

    -- * GooglePrivacyDlpV2DlpJob
    GooglePrivacyDlpV2DlpJob (..),
    newGooglePrivacyDlpV2DlpJob,

    -- * GooglePrivacyDlpV2DocumentLocation
    GooglePrivacyDlpV2DocumentLocation (..),
    newGooglePrivacyDlpV2DocumentLocation,

    -- * GooglePrivacyDlpV2EntityId
    GooglePrivacyDlpV2EntityId (..),
    newGooglePrivacyDlpV2EntityId,

    -- * GooglePrivacyDlpV2Error
    GooglePrivacyDlpV2Error (..),
    newGooglePrivacyDlpV2Error,

    -- * GooglePrivacyDlpV2ExcludeByHotword
    GooglePrivacyDlpV2ExcludeByHotword (..),
    newGooglePrivacyDlpV2ExcludeByHotword,

    -- * GooglePrivacyDlpV2ExcludeInfoTypes
    GooglePrivacyDlpV2ExcludeInfoTypes (..),
    newGooglePrivacyDlpV2ExcludeInfoTypes,

    -- * GooglePrivacyDlpV2ExclusionRule
    GooglePrivacyDlpV2ExclusionRule (..),
    newGooglePrivacyDlpV2ExclusionRule,

    -- * GooglePrivacyDlpV2Export
    GooglePrivacyDlpV2Export (..),
    newGooglePrivacyDlpV2Export,

    -- * GooglePrivacyDlpV2Expressions
    GooglePrivacyDlpV2Expressions (..),
    newGooglePrivacyDlpV2Expressions,

    -- * GooglePrivacyDlpV2FieldId
    GooglePrivacyDlpV2FieldId (..),
    newGooglePrivacyDlpV2FieldId,

    -- * GooglePrivacyDlpV2FieldTransformation
    GooglePrivacyDlpV2FieldTransformation (..),
    newGooglePrivacyDlpV2FieldTransformation,

    -- * GooglePrivacyDlpV2FileClusterSummary
    GooglePrivacyDlpV2FileClusterSummary (..),
    newGooglePrivacyDlpV2FileClusterSummary,

    -- * GooglePrivacyDlpV2FileClusterType
    GooglePrivacyDlpV2FileClusterType (..),
    newGooglePrivacyDlpV2FileClusterType,

    -- * GooglePrivacyDlpV2FileExtensionInfo
    GooglePrivacyDlpV2FileExtensionInfo (..),
    newGooglePrivacyDlpV2FileExtensionInfo,

    -- * GooglePrivacyDlpV2FileSet
    GooglePrivacyDlpV2FileSet (..),
    newGooglePrivacyDlpV2FileSet,

    -- * GooglePrivacyDlpV2FileStoreCollection
    GooglePrivacyDlpV2FileStoreCollection (..),
    newGooglePrivacyDlpV2FileStoreCollection,

    -- * GooglePrivacyDlpV2FileStoreDataProfile
    GooglePrivacyDlpV2FileStoreDataProfile (..),
    newGooglePrivacyDlpV2FileStoreDataProfile,

    -- * GooglePrivacyDlpV2FileStoreDataProfile_ResourceAttributes
    GooglePrivacyDlpV2FileStoreDataProfile_ResourceAttributes (..),
    newGooglePrivacyDlpV2FileStoreDataProfile_ResourceAttributes,

    -- * GooglePrivacyDlpV2FileStoreDataProfile_ResourceLabels
    GooglePrivacyDlpV2FileStoreDataProfile_ResourceLabels (..),
    newGooglePrivacyDlpV2FileStoreDataProfile_ResourceLabels,

    -- * GooglePrivacyDlpV2FileStoreInfoTypeSummary
    GooglePrivacyDlpV2FileStoreInfoTypeSummary (..),
    newGooglePrivacyDlpV2FileStoreInfoTypeSummary,

    -- * GooglePrivacyDlpV2FileStoreRegex
    GooglePrivacyDlpV2FileStoreRegex (..),
    newGooglePrivacyDlpV2FileStoreRegex,

    -- * GooglePrivacyDlpV2FileStoreRegexes
    GooglePrivacyDlpV2FileStoreRegexes (..),
    newGooglePrivacyDlpV2FileStoreRegexes,

    -- * GooglePrivacyDlpV2Finding
    GooglePrivacyDlpV2Finding (..),
    newGooglePrivacyDlpV2Finding,

    -- * GooglePrivacyDlpV2Finding_Labels
    GooglePrivacyDlpV2Finding_Labels (..),
    newGooglePrivacyDlpV2Finding_Labels,

    -- * GooglePrivacyDlpV2FindingLimits
    GooglePrivacyDlpV2FindingLimits (..),
    newGooglePrivacyDlpV2FindingLimits,

    -- * GooglePrivacyDlpV2FinishDlpJobRequest
    GooglePrivacyDlpV2FinishDlpJobRequest (..),
    newGooglePrivacyDlpV2FinishDlpJobRequest,

    -- * GooglePrivacyDlpV2FixedSizeBucketingConfig
    GooglePrivacyDlpV2FixedSizeBucketingConfig (..),
    newGooglePrivacyDlpV2FixedSizeBucketingConfig,

    -- * GooglePrivacyDlpV2GlobalProcessing
    GooglePrivacyDlpV2GlobalProcessing (..),
    newGooglePrivacyDlpV2GlobalProcessing,

    -- * GooglePrivacyDlpV2HotwordRule
    GooglePrivacyDlpV2HotwordRule (..),
    newGooglePrivacyDlpV2HotwordRule,

    -- * GooglePrivacyDlpV2HybridContentItem
    GooglePrivacyDlpV2HybridContentItem (..),
    newGooglePrivacyDlpV2HybridContentItem,

    -- * GooglePrivacyDlpV2HybridFindingDetails
    GooglePrivacyDlpV2HybridFindingDetails (..),
    newGooglePrivacyDlpV2HybridFindingDetails,

    -- * GooglePrivacyDlpV2HybridFindingDetails_Labels
    GooglePrivacyDlpV2HybridFindingDetails_Labels (..),
    newGooglePrivacyDlpV2HybridFindingDetails_Labels,

    -- * GooglePrivacyDlpV2HybridInspectDlpJobRequest
    GooglePrivacyDlpV2HybridInspectDlpJobRequest (..),
    newGooglePrivacyDlpV2HybridInspectDlpJobRequest,

    -- * GooglePrivacyDlpV2HybridInspectJobTriggerRequest
    GooglePrivacyDlpV2HybridInspectJobTriggerRequest (..),
    newGooglePrivacyDlpV2HybridInspectJobTriggerRequest,

    -- * GooglePrivacyDlpV2HybridInspectResponse
    GooglePrivacyDlpV2HybridInspectResponse (..),
    newGooglePrivacyDlpV2HybridInspectResponse,

    -- * GooglePrivacyDlpV2HybridInspectStatistics
    GooglePrivacyDlpV2HybridInspectStatistics (..),
    newGooglePrivacyDlpV2HybridInspectStatistics,

    -- * GooglePrivacyDlpV2HybridOptions
    GooglePrivacyDlpV2HybridOptions (..),
    newGooglePrivacyDlpV2HybridOptions,

    -- * GooglePrivacyDlpV2HybridOptions_Labels
    GooglePrivacyDlpV2HybridOptions_Labels (..),
    newGooglePrivacyDlpV2HybridOptions_Labels,

    -- * GooglePrivacyDlpV2ImageFallbackLocation
    GooglePrivacyDlpV2ImageFallbackLocation (..),
    newGooglePrivacyDlpV2ImageFallbackLocation,

    -- * GooglePrivacyDlpV2ImageLocation
    GooglePrivacyDlpV2ImageLocation (..),
    newGooglePrivacyDlpV2ImageLocation,

    -- * GooglePrivacyDlpV2ImageRedactionConfig
    GooglePrivacyDlpV2ImageRedactionConfig (..),
    newGooglePrivacyDlpV2ImageRedactionConfig,

    -- * GooglePrivacyDlpV2ImageTransformation
    GooglePrivacyDlpV2ImageTransformation (..),
    newGooglePrivacyDlpV2ImageTransformation,

    -- * GooglePrivacyDlpV2ImageTransformations
    GooglePrivacyDlpV2ImageTransformations (..),
    newGooglePrivacyDlpV2ImageTransformations,

    -- * GooglePrivacyDlpV2InfoType
    GooglePrivacyDlpV2InfoType (..),
    newGooglePrivacyDlpV2InfoType,

    -- * GooglePrivacyDlpV2InfoTypeCategory
    GooglePrivacyDlpV2InfoTypeCategory (..),
    newGooglePrivacyDlpV2InfoTypeCategory,

    -- * GooglePrivacyDlpV2InfoTypeDescription
    GooglePrivacyDlpV2InfoTypeDescription (..),
    newGooglePrivacyDlpV2InfoTypeDescription,

    -- * GooglePrivacyDlpV2InfoTypeLikelihood
    GooglePrivacyDlpV2InfoTypeLikelihood (..),
    newGooglePrivacyDlpV2InfoTypeLikelihood,

    -- * GooglePrivacyDlpV2InfoTypeLimit
    GooglePrivacyDlpV2InfoTypeLimit (..),
    newGooglePrivacyDlpV2InfoTypeLimit,

    -- * GooglePrivacyDlpV2InfoTypeStats
    GooglePrivacyDlpV2InfoTypeStats (..),
    newGooglePrivacyDlpV2InfoTypeStats,

    -- * GooglePrivacyDlpV2InfoTypeSummary
    GooglePrivacyDlpV2InfoTypeSummary (..),
    newGooglePrivacyDlpV2InfoTypeSummary,

    -- * GooglePrivacyDlpV2InfoTypeTransformation
    GooglePrivacyDlpV2InfoTypeTransformation (..),
    newGooglePrivacyDlpV2InfoTypeTransformation,

    -- * GooglePrivacyDlpV2InfoTypeTransformations
    GooglePrivacyDlpV2InfoTypeTransformations (..),
    newGooglePrivacyDlpV2InfoTypeTransformations,

    -- * GooglePrivacyDlpV2InspectConfig
    GooglePrivacyDlpV2InspectConfig (..),
    newGooglePrivacyDlpV2InspectConfig,

    -- * GooglePrivacyDlpV2InspectContentRequest
    GooglePrivacyDlpV2InspectContentRequest (..),
    newGooglePrivacyDlpV2InspectContentRequest,

    -- * GooglePrivacyDlpV2InspectContentResponse
    GooglePrivacyDlpV2InspectContentResponse (..),
    newGooglePrivacyDlpV2InspectContentResponse,

    -- * GooglePrivacyDlpV2InspectDataSourceDetails
    GooglePrivacyDlpV2InspectDataSourceDetails (..),
    newGooglePrivacyDlpV2InspectDataSourceDetails,

    -- * GooglePrivacyDlpV2InspectJobConfig
    GooglePrivacyDlpV2InspectJobConfig (..),
    newGooglePrivacyDlpV2InspectJobConfig,

    -- * GooglePrivacyDlpV2InspectResult
    GooglePrivacyDlpV2InspectResult (..),
    newGooglePrivacyDlpV2InspectResult,

    -- * GooglePrivacyDlpV2InspectTemplate
    GooglePrivacyDlpV2InspectTemplate (..),
    newGooglePrivacyDlpV2InspectTemplate,

    -- * GooglePrivacyDlpV2InspectionRule
    GooglePrivacyDlpV2InspectionRule (..),
    newGooglePrivacyDlpV2InspectionRule,

    -- * GooglePrivacyDlpV2InspectionRuleSet
    GooglePrivacyDlpV2InspectionRuleSet (..),
    newGooglePrivacyDlpV2InspectionRuleSet,

    -- * GooglePrivacyDlpV2JobNotificationEmails
    GooglePrivacyDlpV2JobNotificationEmails (..),
    newGooglePrivacyDlpV2JobNotificationEmails,

    -- * GooglePrivacyDlpV2JobTrigger
    GooglePrivacyDlpV2JobTrigger (..),
    newGooglePrivacyDlpV2JobTrigger,

    -- * GooglePrivacyDlpV2KAnonymityConfig
    GooglePrivacyDlpV2KAnonymityConfig (..),
    newGooglePrivacyDlpV2KAnonymityConfig,

    -- * GooglePrivacyDlpV2KAnonymityEquivalenceClass
    GooglePrivacyDlpV2KAnonymityEquivalenceClass (..),
    newGooglePrivacyDlpV2KAnonymityEquivalenceClass,

    -- * GooglePrivacyDlpV2KAnonymityHistogramBucket
    GooglePrivacyDlpV2KAnonymityHistogramBucket (..),
    newGooglePrivacyDlpV2KAnonymityHistogramBucket,

    -- * GooglePrivacyDlpV2KAnonymityResult
    GooglePrivacyDlpV2KAnonymityResult (..),
    newGooglePrivacyDlpV2KAnonymityResult,

    -- * GooglePrivacyDlpV2KMapEstimationConfig
    GooglePrivacyDlpV2KMapEstimationConfig (..),
    newGooglePrivacyDlpV2KMapEstimationConfig,

    -- * GooglePrivacyDlpV2KMapEstimationHistogramBucket
    GooglePrivacyDlpV2KMapEstimationHistogramBucket (..),
    newGooglePrivacyDlpV2KMapEstimationHistogramBucket,

    -- * GooglePrivacyDlpV2KMapEstimationQuasiIdValues
    GooglePrivacyDlpV2KMapEstimationQuasiIdValues (..),
    newGooglePrivacyDlpV2KMapEstimationQuasiIdValues,

    -- * GooglePrivacyDlpV2KMapEstimationResult
    GooglePrivacyDlpV2KMapEstimationResult (..),
    newGooglePrivacyDlpV2KMapEstimationResult,

    -- * GooglePrivacyDlpV2Key
    GooglePrivacyDlpV2Key (..),
    newGooglePrivacyDlpV2Key,

    -- * GooglePrivacyDlpV2KindExpression
    GooglePrivacyDlpV2KindExpression (..),
    newGooglePrivacyDlpV2KindExpression,

    -- * GooglePrivacyDlpV2KmsWrappedCryptoKey
    GooglePrivacyDlpV2KmsWrappedCryptoKey (..),
    newGooglePrivacyDlpV2KmsWrappedCryptoKey,

    -- * GooglePrivacyDlpV2LDiversityConfig
    GooglePrivacyDlpV2LDiversityConfig (..),
    newGooglePrivacyDlpV2LDiversityConfig,

    -- * GooglePrivacyDlpV2LDiversityEquivalenceClass
    GooglePrivacyDlpV2LDiversityEquivalenceClass (..),
    newGooglePrivacyDlpV2LDiversityEquivalenceClass,

    -- * GooglePrivacyDlpV2LDiversityHistogramBucket
    GooglePrivacyDlpV2LDiversityHistogramBucket (..),
    newGooglePrivacyDlpV2LDiversityHistogramBucket,

    -- * GooglePrivacyDlpV2LDiversityResult
    GooglePrivacyDlpV2LDiversityResult (..),
    newGooglePrivacyDlpV2LDiversityResult,

    -- * GooglePrivacyDlpV2LargeCustomDictionaryConfig
    GooglePrivacyDlpV2LargeCustomDictionaryConfig (..),
    newGooglePrivacyDlpV2LargeCustomDictionaryConfig,

    -- * GooglePrivacyDlpV2LargeCustomDictionaryStats
    GooglePrivacyDlpV2LargeCustomDictionaryStats (..),
    newGooglePrivacyDlpV2LargeCustomDictionaryStats,

    -- * GooglePrivacyDlpV2LeaveUntransformed
    GooglePrivacyDlpV2LeaveUntransformed (..),
    newGooglePrivacyDlpV2LeaveUntransformed,

    -- * GooglePrivacyDlpV2LikelihoodAdjustment
    GooglePrivacyDlpV2LikelihoodAdjustment (..),
    newGooglePrivacyDlpV2LikelihoodAdjustment,

    -- * GooglePrivacyDlpV2ListColumnDataProfilesResponse
    GooglePrivacyDlpV2ListColumnDataProfilesResponse (..),
    newGooglePrivacyDlpV2ListColumnDataProfilesResponse,

    -- * GooglePrivacyDlpV2ListConnectionsResponse
    GooglePrivacyDlpV2ListConnectionsResponse (..),
    newGooglePrivacyDlpV2ListConnectionsResponse,

    -- * GooglePrivacyDlpV2ListDeidentifyTemplatesResponse
    GooglePrivacyDlpV2ListDeidentifyTemplatesResponse (..),
    newGooglePrivacyDlpV2ListDeidentifyTemplatesResponse,

    -- * GooglePrivacyDlpV2ListDiscoveryConfigsResponse
    GooglePrivacyDlpV2ListDiscoveryConfigsResponse (..),
    newGooglePrivacyDlpV2ListDiscoveryConfigsResponse,

    -- * GooglePrivacyDlpV2ListDlpJobsResponse
    GooglePrivacyDlpV2ListDlpJobsResponse (..),
    newGooglePrivacyDlpV2ListDlpJobsResponse,

    -- * GooglePrivacyDlpV2ListFileStoreDataProfilesResponse
    GooglePrivacyDlpV2ListFileStoreDataProfilesResponse (..),
    newGooglePrivacyDlpV2ListFileStoreDataProfilesResponse,

    -- * GooglePrivacyDlpV2ListInfoTypesResponse
    GooglePrivacyDlpV2ListInfoTypesResponse (..),
    newGooglePrivacyDlpV2ListInfoTypesResponse,

    -- * GooglePrivacyDlpV2ListInspectTemplatesResponse
    GooglePrivacyDlpV2ListInspectTemplatesResponse (..),
    newGooglePrivacyDlpV2ListInspectTemplatesResponse,

    -- * GooglePrivacyDlpV2ListJobTriggersResponse
    GooglePrivacyDlpV2ListJobTriggersResponse (..),
    newGooglePrivacyDlpV2ListJobTriggersResponse,

    -- * GooglePrivacyDlpV2ListProjectDataProfilesResponse
    GooglePrivacyDlpV2ListProjectDataProfilesResponse (..),
    newGooglePrivacyDlpV2ListProjectDataProfilesResponse,

    -- * GooglePrivacyDlpV2ListStoredInfoTypesResponse
    GooglePrivacyDlpV2ListStoredInfoTypesResponse (..),
    newGooglePrivacyDlpV2ListStoredInfoTypesResponse,

    -- * GooglePrivacyDlpV2ListTableDataProfilesResponse
    GooglePrivacyDlpV2ListTableDataProfilesResponse (..),
    newGooglePrivacyDlpV2ListTableDataProfilesResponse,

    -- * GooglePrivacyDlpV2Location
    GooglePrivacyDlpV2Location (..),
    newGooglePrivacyDlpV2Location,

    -- * GooglePrivacyDlpV2Manual
    GooglePrivacyDlpV2Manual (..),
    newGooglePrivacyDlpV2Manual,

    -- * GooglePrivacyDlpV2MetadataLocation
    GooglePrivacyDlpV2MetadataLocation (..),
    newGooglePrivacyDlpV2MetadataLocation,

    -- * GooglePrivacyDlpV2MultiRegionProcessing
    GooglePrivacyDlpV2MultiRegionProcessing (..),
    newGooglePrivacyDlpV2MultiRegionProcessing,

    -- * GooglePrivacyDlpV2NumericalStatsConfig
    GooglePrivacyDlpV2NumericalStatsConfig (..),
    newGooglePrivacyDlpV2NumericalStatsConfig,

    -- * GooglePrivacyDlpV2NumericalStatsResult
    GooglePrivacyDlpV2NumericalStatsResult (..),
    newGooglePrivacyDlpV2NumericalStatsResult,

    -- * GooglePrivacyDlpV2OrConditions
    GooglePrivacyDlpV2OrConditions (..),
    newGooglePrivacyDlpV2OrConditions,

    -- * GooglePrivacyDlpV2OrgConfig
    GooglePrivacyDlpV2OrgConfig (..),
    newGooglePrivacyDlpV2OrgConfig,

    -- * GooglePrivacyDlpV2OtherCloudDiscoveryStartingLocation
    GooglePrivacyDlpV2OtherCloudDiscoveryStartingLocation (..),
    newGooglePrivacyDlpV2OtherCloudDiscoveryStartingLocation,

    -- * GooglePrivacyDlpV2OtherCloudDiscoveryTarget
    GooglePrivacyDlpV2OtherCloudDiscoveryTarget (..),
    newGooglePrivacyDlpV2OtherCloudDiscoveryTarget,

    -- * GooglePrivacyDlpV2OtherCloudResourceCollection
    GooglePrivacyDlpV2OtherCloudResourceCollection (..),
    newGooglePrivacyDlpV2OtherCloudResourceCollection,

    -- * GooglePrivacyDlpV2OtherCloudResourceRegex
    GooglePrivacyDlpV2OtherCloudResourceRegex (..),
    newGooglePrivacyDlpV2OtherCloudResourceRegex,

    -- * GooglePrivacyDlpV2OtherCloudResourceRegexes
    GooglePrivacyDlpV2OtherCloudResourceRegexes (..),
    newGooglePrivacyDlpV2OtherCloudResourceRegexes,

    -- * GooglePrivacyDlpV2OtherCloudSingleResourceReference
    GooglePrivacyDlpV2OtherCloudSingleResourceReference (..),
    newGooglePrivacyDlpV2OtherCloudSingleResourceReference,

    -- * GooglePrivacyDlpV2OtherInfoTypeSummary
    GooglePrivacyDlpV2OtherInfoTypeSummary (..),
    newGooglePrivacyDlpV2OtherInfoTypeSummary,

    -- * GooglePrivacyDlpV2OutputStorageConfig
    GooglePrivacyDlpV2OutputStorageConfig (..),
    newGooglePrivacyDlpV2OutputStorageConfig,

    -- * GooglePrivacyDlpV2PartitionId
    GooglePrivacyDlpV2PartitionId (..),
    newGooglePrivacyDlpV2PartitionId,

    -- * GooglePrivacyDlpV2PathElement
    GooglePrivacyDlpV2PathElement (..),
    newGooglePrivacyDlpV2PathElement,

    -- * GooglePrivacyDlpV2PrimitiveTransformation
    GooglePrivacyDlpV2PrimitiveTransformation (..),
    newGooglePrivacyDlpV2PrimitiveTransformation,

    -- * GooglePrivacyDlpV2PrivacyMetric
    GooglePrivacyDlpV2PrivacyMetric (..),
    newGooglePrivacyDlpV2PrivacyMetric,

    -- * GooglePrivacyDlpV2ProcessingLocation
    GooglePrivacyDlpV2ProcessingLocation (..),
    newGooglePrivacyDlpV2ProcessingLocation,

    -- * GooglePrivacyDlpV2ProfileStatus
    GooglePrivacyDlpV2ProfileStatus (..),
    newGooglePrivacyDlpV2ProfileStatus,

    -- * GooglePrivacyDlpV2ProjectDataProfile
    GooglePrivacyDlpV2ProjectDataProfile (..),
    newGooglePrivacyDlpV2ProjectDataProfile,

    -- * GooglePrivacyDlpV2Proximity
    GooglePrivacyDlpV2Proximity (..),
    newGooglePrivacyDlpV2Proximity,

    -- * GooglePrivacyDlpV2PubSubCondition
    GooglePrivacyDlpV2PubSubCondition (..),
    newGooglePrivacyDlpV2PubSubCondition,

    -- * GooglePrivacyDlpV2PubSubExpressions
    GooglePrivacyDlpV2PubSubExpressions (..),
    newGooglePrivacyDlpV2PubSubExpressions,

    -- * GooglePrivacyDlpV2PubSubNotification
    GooglePrivacyDlpV2PubSubNotification (..),
    newGooglePrivacyDlpV2PubSubNotification,

    -- * GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog
    GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog (..),
    newGooglePrivacyDlpV2PublishFindingsToCloudDataCatalog,

    -- * GooglePrivacyDlpV2PublishSummaryToCscc
    GooglePrivacyDlpV2PublishSummaryToCscc (..),
    newGooglePrivacyDlpV2PublishSummaryToCscc,

    -- * GooglePrivacyDlpV2PublishToChronicle
    GooglePrivacyDlpV2PublishToChronicle (..),
    newGooglePrivacyDlpV2PublishToChronicle,

    -- * GooglePrivacyDlpV2PublishToPubSub
    GooglePrivacyDlpV2PublishToPubSub (..),
    newGooglePrivacyDlpV2PublishToPubSub,

    -- * GooglePrivacyDlpV2PublishToSecurityCommandCenter
    GooglePrivacyDlpV2PublishToSecurityCommandCenter (..),
    newGooglePrivacyDlpV2PublishToSecurityCommandCenter,

    -- * GooglePrivacyDlpV2PublishToStackdriver
    GooglePrivacyDlpV2PublishToStackdriver (..),
    newGooglePrivacyDlpV2PublishToStackdriver,

    -- * GooglePrivacyDlpV2QuasiId
    GooglePrivacyDlpV2QuasiId (..),
    newGooglePrivacyDlpV2QuasiId,

    -- * GooglePrivacyDlpV2QuasiIdField
    GooglePrivacyDlpV2QuasiIdField (..),
    newGooglePrivacyDlpV2QuasiIdField,

    -- * GooglePrivacyDlpV2QuasiIdentifierField
    GooglePrivacyDlpV2QuasiIdentifierField (..),
    newGooglePrivacyDlpV2QuasiIdentifierField,

    -- * GooglePrivacyDlpV2QuoteInfo
    GooglePrivacyDlpV2QuoteInfo (..),
    newGooglePrivacyDlpV2QuoteInfo,

    -- * GooglePrivacyDlpV2Range
    GooglePrivacyDlpV2Range (..),
    newGooglePrivacyDlpV2Range,

    -- * GooglePrivacyDlpV2RecordCondition
    GooglePrivacyDlpV2RecordCondition (..),
    newGooglePrivacyDlpV2RecordCondition,

    -- * GooglePrivacyDlpV2RecordKey
    GooglePrivacyDlpV2RecordKey (..),
    newGooglePrivacyDlpV2RecordKey,

    -- * GooglePrivacyDlpV2RecordLocation
    GooglePrivacyDlpV2RecordLocation (..),
    newGooglePrivacyDlpV2RecordLocation,

    -- * GooglePrivacyDlpV2RecordSuppression
    GooglePrivacyDlpV2RecordSuppression (..),
    newGooglePrivacyDlpV2RecordSuppression,

    -- * GooglePrivacyDlpV2RecordTransformation
    GooglePrivacyDlpV2RecordTransformation (..),
    newGooglePrivacyDlpV2RecordTransformation,

    -- * GooglePrivacyDlpV2RecordTransformations
    GooglePrivacyDlpV2RecordTransformations (..),
    newGooglePrivacyDlpV2RecordTransformations,

    -- * GooglePrivacyDlpV2RedactConfig
    GooglePrivacyDlpV2RedactConfig (..),
    newGooglePrivacyDlpV2RedactConfig,

    -- * GooglePrivacyDlpV2RedactImageRequest
    GooglePrivacyDlpV2RedactImageRequest (..),
    newGooglePrivacyDlpV2RedactImageRequest,

    -- * GooglePrivacyDlpV2RedactImageResponse
    GooglePrivacyDlpV2RedactImageResponse (..),
    newGooglePrivacyDlpV2RedactImageResponse,

    -- * GooglePrivacyDlpV2Regex
    GooglePrivacyDlpV2Regex (..),
    newGooglePrivacyDlpV2Regex,

    -- * GooglePrivacyDlpV2ReidentifyContentRequest
    GooglePrivacyDlpV2ReidentifyContentRequest (..),
    newGooglePrivacyDlpV2ReidentifyContentRequest,

    -- * GooglePrivacyDlpV2ReidentifyContentResponse
    GooglePrivacyDlpV2ReidentifyContentResponse (..),
    newGooglePrivacyDlpV2ReidentifyContentResponse,

    -- * GooglePrivacyDlpV2RelatedResource
    GooglePrivacyDlpV2RelatedResource (..),
    newGooglePrivacyDlpV2RelatedResource,

    -- * GooglePrivacyDlpV2ReplaceDictionaryConfig
    GooglePrivacyDlpV2ReplaceDictionaryConfig (..),
    newGooglePrivacyDlpV2ReplaceDictionaryConfig,

    -- * GooglePrivacyDlpV2ReplaceValueConfig
    GooglePrivacyDlpV2ReplaceValueConfig (..),
    newGooglePrivacyDlpV2ReplaceValueConfig,

    -- * GooglePrivacyDlpV2ReplaceWithInfoTypeConfig
    GooglePrivacyDlpV2ReplaceWithInfoTypeConfig (..),
    newGooglePrivacyDlpV2ReplaceWithInfoTypeConfig,

    -- * GooglePrivacyDlpV2RequestedDeidentifyOptions
    GooglePrivacyDlpV2RequestedDeidentifyOptions (..),
    newGooglePrivacyDlpV2RequestedDeidentifyOptions,

    -- * GooglePrivacyDlpV2RequestedOptions
    GooglePrivacyDlpV2RequestedOptions (..),
    newGooglePrivacyDlpV2RequestedOptions,

    -- * GooglePrivacyDlpV2RequestedRiskAnalysisOptions
    GooglePrivacyDlpV2RequestedRiskAnalysisOptions (..),
    newGooglePrivacyDlpV2RequestedRiskAnalysisOptions,

    -- * GooglePrivacyDlpV2Result
    GooglePrivacyDlpV2Result (..),
    newGooglePrivacyDlpV2Result,

    -- * GooglePrivacyDlpV2RiskAnalysisJobConfig
    GooglePrivacyDlpV2RiskAnalysisJobConfig (..),
    newGooglePrivacyDlpV2RiskAnalysisJobConfig,

    -- * GooglePrivacyDlpV2Row
    GooglePrivacyDlpV2Row (..),
    newGooglePrivacyDlpV2Row,

    -- * GooglePrivacyDlpV2SaveFindings
    GooglePrivacyDlpV2SaveFindings (..),
    newGooglePrivacyDlpV2SaveFindings,

    -- * GooglePrivacyDlpV2Schedule
    GooglePrivacyDlpV2Schedule (..),
    newGooglePrivacyDlpV2Schedule,

    -- * GooglePrivacyDlpV2SchemaModifiedCadence
    GooglePrivacyDlpV2SchemaModifiedCadence (..),
    newGooglePrivacyDlpV2SchemaModifiedCadence,

    -- * GooglePrivacyDlpV2SearchConnectionsResponse
    GooglePrivacyDlpV2SearchConnectionsResponse (..),
    newGooglePrivacyDlpV2SearchConnectionsResponse,

    -- * GooglePrivacyDlpV2SecretManagerCredential
    GooglePrivacyDlpV2SecretManagerCredential (..),
    newGooglePrivacyDlpV2SecretManagerCredential,

    -- * GooglePrivacyDlpV2SecretsDiscoveryTarget
    GooglePrivacyDlpV2SecretsDiscoveryTarget (..),
    newGooglePrivacyDlpV2SecretsDiscoveryTarget,

    -- * GooglePrivacyDlpV2SelectedInfoTypes
    GooglePrivacyDlpV2SelectedInfoTypes (..),
    newGooglePrivacyDlpV2SelectedInfoTypes,

    -- * GooglePrivacyDlpV2SensitivityScore
    GooglePrivacyDlpV2SensitivityScore (..),
    newGooglePrivacyDlpV2SensitivityScore,

    -- * GooglePrivacyDlpV2StatisticalTable
    GooglePrivacyDlpV2StatisticalTable (..),
    newGooglePrivacyDlpV2StatisticalTable,

    -- * GooglePrivacyDlpV2StorageConfig
    GooglePrivacyDlpV2StorageConfig (..),
    newGooglePrivacyDlpV2StorageConfig,

    -- * GooglePrivacyDlpV2StorageMetadataLabel
    GooglePrivacyDlpV2StorageMetadataLabel (..),
    newGooglePrivacyDlpV2StorageMetadataLabel,

    -- * GooglePrivacyDlpV2StoredInfoType
    GooglePrivacyDlpV2StoredInfoType (..),
    newGooglePrivacyDlpV2StoredInfoType,

    -- * GooglePrivacyDlpV2StoredInfoTypeConfig
    GooglePrivacyDlpV2StoredInfoTypeConfig (..),
    newGooglePrivacyDlpV2StoredInfoTypeConfig,

    -- * GooglePrivacyDlpV2StoredInfoTypeStats
    GooglePrivacyDlpV2StoredInfoTypeStats (..),
    newGooglePrivacyDlpV2StoredInfoTypeStats,

    -- * GooglePrivacyDlpV2StoredInfoTypeVersion
    GooglePrivacyDlpV2StoredInfoTypeVersion (..),
    newGooglePrivacyDlpV2StoredInfoTypeVersion,

    -- * GooglePrivacyDlpV2StoredType
    GooglePrivacyDlpV2StoredType (..),
    newGooglePrivacyDlpV2StoredType,

    -- * GooglePrivacyDlpV2SummaryResult
    GooglePrivacyDlpV2SummaryResult (..),
    newGooglePrivacyDlpV2SummaryResult,

    -- * GooglePrivacyDlpV2SurrogateType
    GooglePrivacyDlpV2SurrogateType (..),
    newGooglePrivacyDlpV2SurrogateType,

    -- * GooglePrivacyDlpV2Table
    GooglePrivacyDlpV2Table (..),
    newGooglePrivacyDlpV2Table,

    -- * GooglePrivacyDlpV2TableDataProfile
    GooglePrivacyDlpV2TableDataProfile (..),
    newGooglePrivacyDlpV2TableDataProfile,

    -- * GooglePrivacyDlpV2TableDataProfile_ResourceLabels
    GooglePrivacyDlpV2TableDataProfile_ResourceLabels (..),
    newGooglePrivacyDlpV2TableDataProfile_ResourceLabels,

    -- * GooglePrivacyDlpV2TableLocation
    GooglePrivacyDlpV2TableLocation (..),
    newGooglePrivacyDlpV2TableLocation,

    -- * GooglePrivacyDlpV2TableOptions
    GooglePrivacyDlpV2TableOptions (..),
    newGooglePrivacyDlpV2TableOptions,

    -- * GooglePrivacyDlpV2TableReference
    GooglePrivacyDlpV2TableReference (..),
    newGooglePrivacyDlpV2TableReference,

    -- * GooglePrivacyDlpV2TagCondition
    GooglePrivacyDlpV2TagCondition (..),
    newGooglePrivacyDlpV2TagCondition,

    -- * GooglePrivacyDlpV2TagResources
    GooglePrivacyDlpV2TagResources (..),
    newGooglePrivacyDlpV2TagResources,

    -- * GooglePrivacyDlpV2TagValue
    GooglePrivacyDlpV2TagValue (..),
    newGooglePrivacyDlpV2TagValue,

    -- * GooglePrivacyDlpV2TaggedField
    GooglePrivacyDlpV2TaggedField (..),
    newGooglePrivacyDlpV2TaggedField,

    -- * GooglePrivacyDlpV2ThrowError
    GooglePrivacyDlpV2ThrowError (..),
    newGooglePrivacyDlpV2ThrowError,

    -- * GooglePrivacyDlpV2TimePartConfig
    GooglePrivacyDlpV2TimePartConfig (..),
    newGooglePrivacyDlpV2TimePartConfig,

    -- * GooglePrivacyDlpV2TimeZone
    GooglePrivacyDlpV2TimeZone (..),
    newGooglePrivacyDlpV2TimeZone,

    -- * GooglePrivacyDlpV2TimespanConfig
    GooglePrivacyDlpV2TimespanConfig (..),
    newGooglePrivacyDlpV2TimespanConfig,

    -- * GooglePrivacyDlpV2TransformationConfig
    GooglePrivacyDlpV2TransformationConfig (..),
    newGooglePrivacyDlpV2TransformationConfig,

    -- * GooglePrivacyDlpV2TransformationDescription
    GooglePrivacyDlpV2TransformationDescription (..),
    newGooglePrivacyDlpV2TransformationDescription,

    -- * GooglePrivacyDlpV2TransformationDetails
    GooglePrivacyDlpV2TransformationDetails (..),
    newGooglePrivacyDlpV2TransformationDetails,

    -- * GooglePrivacyDlpV2TransformationDetailsStorageConfig
    GooglePrivacyDlpV2TransformationDetailsStorageConfig (..),
    newGooglePrivacyDlpV2TransformationDetailsStorageConfig,

    -- * GooglePrivacyDlpV2TransformationErrorHandling
    GooglePrivacyDlpV2TransformationErrorHandling (..),
    newGooglePrivacyDlpV2TransformationErrorHandling,

    -- * GooglePrivacyDlpV2TransformationLocation
    GooglePrivacyDlpV2TransformationLocation (..),
    newGooglePrivacyDlpV2TransformationLocation,

    -- * GooglePrivacyDlpV2TransformationOverview
    GooglePrivacyDlpV2TransformationOverview (..),
    newGooglePrivacyDlpV2TransformationOverview,

    -- * GooglePrivacyDlpV2TransformationResultStatus
    GooglePrivacyDlpV2TransformationResultStatus (..),
    newGooglePrivacyDlpV2TransformationResultStatus,

    -- * GooglePrivacyDlpV2TransformationSummary
    GooglePrivacyDlpV2TransformationSummary (..),
    newGooglePrivacyDlpV2TransformationSummary,

    -- * GooglePrivacyDlpV2TransientCryptoKey
    GooglePrivacyDlpV2TransientCryptoKey (..),
    newGooglePrivacyDlpV2TransientCryptoKey,

    -- * GooglePrivacyDlpV2Trigger
    GooglePrivacyDlpV2Trigger (..),
    newGooglePrivacyDlpV2Trigger,

    -- * GooglePrivacyDlpV2UnwrappedCryptoKey
    GooglePrivacyDlpV2UnwrappedCryptoKey (..),
    newGooglePrivacyDlpV2UnwrappedCryptoKey,

    -- * GooglePrivacyDlpV2UpdateConnectionRequest
    GooglePrivacyDlpV2UpdateConnectionRequest (..),
    newGooglePrivacyDlpV2UpdateConnectionRequest,

    -- * GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest
    GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest (..),
    newGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest,

    -- * GooglePrivacyDlpV2UpdateDiscoveryConfigRequest
    GooglePrivacyDlpV2UpdateDiscoveryConfigRequest (..),
    newGooglePrivacyDlpV2UpdateDiscoveryConfigRequest,

    -- * GooglePrivacyDlpV2UpdateInspectTemplateRequest
    GooglePrivacyDlpV2UpdateInspectTemplateRequest (..),
    newGooglePrivacyDlpV2UpdateInspectTemplateRequest,

    -- * GooglePrivacyDlpV2UpdateJobTriggerRequest
    GooglePrivacyDlpV2UpdateJobTriggerRequest (..),
    newGooglePrivacyDlpV2UpdateJobTriggerRequest,

    -- * GooglePrivacyDlpV2UpdateStoredInfoTypeRequest
    GooglePrivacyDlpV2UpdateStoredInfoTypeRequest (..),
    newGooglePrivacyDlpV2UpdateStoredInfoTypeRequest,

    -- * GooglePrivacyDlpV2Value
    GooglePrivacyDlpV2Value (..),
    newGooglePrivacyDlpV2Value,

    -- * GooglePrivacyDlpV2ValueFrequency
    GooglePrivacyDlpV2ValueFrequency (..),
    newGooglePrivacyDlpV2ValueFrequency,

    -- * GooglePrivacyDlpV2VersionDescription
    GooglePrivacyDlpV2VersionDescription (..),
    newGooglePrivacyDlpV2VersionDescription,

    -- * GooglePrivacyDlpV2VertexDatasetCollection
    GooglePrivacyDlpV2VertexDatasetCollection (..),
    newGooglePrivacyDlpV2VertexDatasetCollection,

    -- * GooglePrivacyDlpV2VertexDatasetDiscoveryTarget
    GooglePrivacyDlpV2VertexDatasetDiscoveryTarget (..),
    newGooglePrivacyDlpV2VertexDatasetDiscoveryTarget,

    -- * GooglePrivacyDlpV2VertexDatasetRegex
    GooglePrivacyDlpV2VertexDatasetRegex (..),
    newGooglePrivacyDlpV2VertexDatasetRegex,

    -- * GooglePrivacyDlpV2VertexDatasetRegexes
    GooglePrivacyDlpV2VertexDatasetRegexes (..),
    newGooglePrivacyDlpV2VertexDatasetRegexes,

    -- * GooglePrivacyDlpV2VertexDatasetResourceReference
    GooglePrivacyDlpV2VertexDatasetResourceReference (..),
    newGooglePrivacyDlpV2VertexDatasetResourceReference,

    -- * GooglePrivacyDlpV2WordList
    GooglePrivacyDlpV2WordList (..),
    newGooglePrivacyDlpV2WordList,

    -- * GoogleProtobufEmpty
    GoogleProtobufEmpty (..),
    newGoogleProtobufEmpty,

    -- * GoogleRpcStatus
    GoogleRpcStatus (..),
    newGoogleRpcStatus,

    -- * GoogleRpcStatus_DetailsItem
    GoogleRpcStatus_DetailsItem (..),
    newGoogleRpcStatus_DetailsItem,

    -- * GoogleTypeDate
    GoogleTypeDate (..),
    newGoogleTypeDate,

    -- * GoogleTypeTimeOfDay
    GoogleTypeTimeOfDay (..),
    newGoogleTypeTimeOfDay,
  )
where

import Gogol.DLP.Internal.Sum
import Gogol.Prelude qualified as Core

-- | A task to execute on the completion of a job. See https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/concepts-actions to learn more.
--
-- /See:/ 'newGooglePrivacyDlpV2Action' smart constructor.
data GooglePrivacyDlpV2Action = GooglePrivacyDlpV2Action
  { -- | Create a de-identified copy of the input data.
    deidentify :: (Core.Maybe GooglePrivacyDlpV2Deidentify),
    -- | Sends an email when the job completes. The email goes to IAM project owners and technical <https://cloud.google.com/resource-manager/docs/managing-notification-contacts Essential Contacts>.
    jobNotificationEmails :: (Core.Maybe GooglePrivacyDlpV2JobNotificationEmails),
    -- | Publish a notification to a Pub\/Sub topic.
    pubSub :: (Core.Maybe GooglePrivacyDlpV2PublishToPubSub),
    -- | Publish findings to Cloud Datahub.
    publishFindingsToCloudDataCatalog :: (Core.Maybe GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog),
    -- | Publish summary to Cloud Security Command Center (Alpha).
    publishSummaryToCscc :: (Core.Maybe GooglePrivacyDlpV2PublishSummaryToCscc),
    -- | Enable Stackdriver metric dlp.googleapis.com\/finding_count.
    publishToStackdriver :: (Core.Maybe GooglePrivacyDlpV2PublishToStackdriver),
    -- | Save resulting findings in a provided location.
    saveFindings :: (Core.Maybe GooglePrivacyDlpV2SaveFindings)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Action' with the minimum fields required to make a request.
newGooglePrivacyDlpV2Action ::
  GooglePrivacyDlpV2Action
newGooglePrivacyDlpV2Action =
  GooglePrivacyDlpV2Action
    { deidentify = Core.Nothing,
      jobNotificationEmails = Core.Nothing,
      pubSub = Core.Nothing,
      publishFindingsToCloudDataCatalog = Core.Nothing,
      publishSummaryToCscc = Core.Nothing,
      publishToStackdriver = Core.Nothing,
      saveFindings = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2Action where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2Action"
      ( \o ->
          GooglePrivacyDlpV2Action
            Core.<$> (o Core..:? "deidentify")
            Core.<*> (o Core..:? "jobNotificationEmails")
            Core.<*> (o Core..:? "pubSub")
            Core.<*> (o Core..:? "publishFindingsToCloudDataCatalog")
            Core.<*> (o Core..:? "publishSummaryToCscc")
            Core.<*> (o Core..:? "publishToStackdriver")
            Core.<*> (o Core..:? "saveFindings")
      )

instance Core.ToJSON GooglePrivacyDlpV2Action where
  toJSON GooglePrivacyDlpV2Action {..} =
    Core.object
      ( Core.catMaybes
          [ ("deidentify" Core..=) Core.<$> deidentify,
            ("jobNotificationEmails" Core..=) Core.<$> jobNotificationEmails,
            ("pubSub" Core..=) Core.<$> pubSub,
            ("publishFindingsToCloudDataCatalog" Core..=)
              Core.<$> publishFindingsToCloudDataCatalog,
            ("publishSummaryToCscc" Core..=) Core.<$> publishSummaryToCscc,
            ("publishToStackdriver" Core..=) Core.<$> publishToStackdriver,
            ("saveFindings" Core..=) Core.<$> saveFindings
          ]
      )

-- | The results of an Action.
--
-- /See:/ 'newGooglePrivacyDlpV2ActionDetails' smart constructor.
newtype GooglePrivacyDlpV2ActionDetails = GooglePrivacyDlpV2ActionDetails
  { -- | Outcome of a de-identification action.
    deidentifyDetails :: (Core.Maybe GooglePrivacyDlpV2DeidentifyDataSourceDetails)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ActionDetails' with the minimum fields required to make a request.
newGooglePrivacyDlpV2ActionDetails ::
  GooglePrivacyDlpV2ActionDetails
newGooglePrivacyDlpV2ActionDetails =
  GooglePrivacyDlpV2ActionDetails {deidentifyDetails = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2ActionDetails where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ActionDetails"
      ( \o ->
          GooglePrivacyDlpV2ActionDetails
            Core.<$> (o Core..:? "deidentifyDetails")
      )

instance Core.ToJSON GooglePrivacyDlpV2ActionDetails where
  toJSON GooglePrivacyDlpV2ActionDetails {..} =
    Core.object
      ( Core.catMaybes
          [("deidentifyDetails" Core..=) Core.<$> deidentifyDetails]
      )

-- | Request message for ActivateJobTrigger.
--
-- /See:/ 'newGooglePrivacyDlpV2ActivateJobTriggerRequest' smart constructor.
data GooglePrivacyDlpV2ActivateJobTriggerRequest = GooglePrivacyDlpV2ActivateJobTriggerRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ActivateJobTriggerRequest' with the minimum fields required to make a request.
newGooglePrivacyDlpV2ActivateJobTriggerRequest ::
  GooglePrivacyDlpV2ActivateJobTriggerRequest
newGooglePrivacyDlpV2ActivateJobTriggerRequest =
  GooglePrivacyDlpV2ActivateJobTriggerRequest

instance Core.FromJSON GooglePrivacyDlpV2ActivateJobTriggerRequest where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ActivateJobTriggerRequest"
      (\o -> Core.pure GooglePrivacyDlpV2ActivateJobTriggerRequest)

instance Core.ToJSON GooglePrivacyDlpV2ActivateJobTriggerRequest where
  toJSON = Core.const Core.emptyObject

-- | Apply transformation to all findings.
--
-- /See:/ 'newGooglePrivacyDlpV2AllInfoTypes' smart constructor.
data GooglePrivacyDlpV2AllInfoTypes = GooglePrivacyDlpV2AllInfoTypes
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2AllInfoTypes' with the minimum fields required to make a request.
newGooglePrivacyDlpV2AllInfoTypes ::
  GooglePrivacyDlpV2AllInfoTypes
newGooglePrivacyDlpV2AllInfoTypes = GooglePrivacyDlpV2AllInfoTypes

instance Core.FromJSON GooglePrivacyDlpV2AllInfoTypes where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2AllInfoTypes"
      (\o -> Core.pure GooglePrivacyDlpV2AllInfoTypes)

instance Core.ToJSON GooglePrivacyDlpV2AllInfoTypes where
  toJSON = Core.const Core.emptyObject

-- | Catch-all for all other tables not specified by other filters. Should always be last, except for single-table configurations, which will only have a TableReference target.
--
-- /See:/ 'newGooglePrivacyDlpV2AllOtherBigQueryTables' smart constructor.
data GooglePrivacyDlpV2AllOtherBigQueryTables = GooglePrivacyDlpV2AllOtherBigQueryTables
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2AllOtherBigQueryTables' with the minimum fields required to make a request.
newGooglePrivacyDlpV2AllOtherBigQueryTables ::
  GooglePrivacyDlpV2AllOtherBigQueryTables
newGooglePrivacyDlpV2AllOtherBigQueryTables =
  GooglePrivacyDlpV2AllOtherBigQueryTables

instance Core.FromJSON GooglePrivacyDlpV2AllOtherBigQueryTables where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2AllOtherBigQueryTables"
      (\o -> Core.pure GooglePrivacyDlpV2AllOtherBigQueryTables)

instance Core.ToJSON GooglePrivacyDlpV2AllOtherBigQueryTables where
  toJSON = Core.const Core.emptyObject

-- | Match database resources not covered by any other filter.
--
-- /See:/ 'newGooglePrivacyDlpV2AllOtherDatabaseResources' smart constructor.
data GooglePrivacyDlpV2AllOtherDatabaseResources = GooglePrivacyDlpV2AllOtherDatabaseResources
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2AllOtherDatabaseResources' with the minimum fields required to make a request.
newGooglePrivacyDlpV2AllOtherDatabaseResources ::
  GooglePrivacyDlpV2AllOtherDatabaseResources
newGooglePrivacyDlpV2AllOtherDatabaseResources =
  GooglePrivacyDlpV2AllOtherDatabaseResources

instance Core.FromJSON GooglePrivacyDlpV2AllOtherDatabaseResources where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2AllOtherDatabaseResources"
      (\o -> Core.pure GooglePrivacyDlpV2AllOtherDatabaseResources)

instance Core.ToJSON GooglePrivacyDlpV2AllOtherDatabaseResources where
  toJSON = Core.const Core.emptyObject

-- | Match discovery resources not covered by any other filter.
--
-- /See:/ 'newGooglePrivacyDlpV2AllOtherResources' smart constructor.
data GooglePrivacyDlpV2AllOtherResources = GooglePrivacyDlpV2AllOtherResources
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2AllOtherResources' with the minimum fields required to make a request.
newGooglePrivacyDlpV2AllOtherResources ::
  GooglePrivacyDlpV2AllOtherResources
newGooglePrivacyDlpV2AllOtherResources =
  GooglePrivacyDlpV2AllOtherResources

instance Core.FromJSON GooglePrivacyDlpV2AllOtherResources where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2AllOtherResources"
      (\o -> Core.pure GooglePrivacyDlpV2AllOtherResources)

instance Core.ToJSON GooglePrivacyDlpV2AllOtherResources where
  toJSON = Core.const Core.emptyObject

-- | Apply to all text.
--
-- /See:/ 'newGooglePrivacyDlpV2AllText' smart constructor.
data GooglePrivacyDlpV2AllText = GooglePrivacyDlpV2AllText
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2AllText' with the minimum fields required to make a request.
newGooglePrivacyDlpV2AllText ::
  GooglePrivacyDlpV2AllText
newGooglePrivacyDlpV2AllText = GooglePrivacyDlpV2AllText

instance Core.FromJSON GooglePrivacyDlpV2AllText where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2AllText"
      (\o -> Core.pure GooglePrivacyDlpV2AllText)

instance Core.ToJSON GooglePrivacyDlpV2AllText where
  toJSON = Core.const Core.emptyObject

-- | Amazon S3 bucket.
--
-- /See:/ 'newGooglePrivacyDlpV2AmazonS3Bucket' smart constructor.
data GooglePrivacyDlpV2AmazonS3Bucket = GooglePrivacyDlpV2AmazonS3Bucket
  { -- | The AWS account.
    awsAccount :: (Core.Maybe GooglePrivacyDlpV2AwsAccount),
    -- | Required. The bucket name.
    bucketName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2AmazonS3Bucket' with the minimum fields required to make a request.
newGooglePrivacyDlpV2AmazonS3Bucket ::
  GooglePrivacyDlpV2AmazonS3Bucket
newGooglePrivacyDlpV2AmazonS3Bucket =
  GooglePrivacyDlpV2AmazonS3Bucket
    { awsAccount = Core.Nothing,
      bucketName = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2AmazonS3Bucket where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2AmazonS3Bucket"
      ( \o ->
          GooglePrivacyDlpV2AmazonS3Bucket
            Core.<$> (o Core..:? "awsAccount")
            Core.<*> (o Core..:? "bucketName")
      )

instance Core.ToJSON GooglePrivacyDlpV2AmazonS3Bucket where
  toJSON GooglePrivacyDlpV2AmazonS3Bucket {..} =
    Core.object
      ( Core.catMaybes
          [ ("awsAccount" Core..=) Core.<$> awsAccount,
            ("bucketName" Core..=) Core.<$> bucketName
          ]
      )

-- | Amazon S3 bucket conditions.
--
-- /See:/ 'newGooglePrivacyDlpV2AmazonS3BucketConditions' smart constructor.
data GooglePrivacyDlpV2AmazonS3BucketConditions = GooglePrivacyDlpV2AmazonS3BucketConditions
  { -- | Optional. Bucket types that should be profiled. Optional. Defaults to TYPE/ALL/SUPPORTED if unspecified.
    bucketTypes ::
      ( Core.Maybe
          [GooglePrivacyDlpV2AmazonS3BucketConditions_BucketTypesItem]
      ),
    -- | Optional. Object classes that should be profiled. Optional. Defaults to ALL/SUPPORTED/CLASSES if unspecified.
    objectStorageClasses ::
      ( Core.Maybe
          [GooglePrivacyDlpV2AmazonS3BucketConditions_ObjectStorageClassesItem]
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2AmazonS3BucketConditions' with the minimum fields required to make a request.
newGooglePrivacyDlpV2AmazonS3BucketConditions ::
  GooglePrivacyDlpV2AmazonS3BucketConditions
newGooglePrivacyDlpV2AmazonS3BucketConditions =
  GooglePrivacyDlpV2AmazonS3BucketConditions
    { bucketTypes =
        Core.Nothing,
      objectStorageClasses = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2AmazonS3BucketConditions where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2AmazonS3BucketConditions"
      ( \o ->
          GooglePrivacyDlpV2AmazonS3BucketConditions
            Core.<$> (o Core..:? "bucketTypes")
            Core.<*> (o Core..:? "objectStorageClasses")
      )

instance Core.ToJSON GooglePrivacyDlpV2AmazonS3BucketConditions where
  toJSON GooglePrivacyDlpV2AmazonS3BucketConditions {..} =
    Core.object
      ( Core.catMaybes
          [ ("bucketTypes" Core..=) Core.<$> bucketTypes,
            ("objectStorageClasses" Core..=) Core.<$> objectStorageClasses
          ]
      )

-- | Amazon S3 bucket regex.
--
-- /See:/ 'newGooglePrivacyDlpV2AmazonS3BucketRegex' smart constructor.
data GooglePrivacyDlpV2AmazonS3BucketRegex = GooglePrivacyDlpV2AmazonS3BucketRegex
  { -- | The AWS account regex.
    awsAccountRegex :: (Core.Maybe GooglePrivacyDlpV2AwsAccountRegex),
    -- | Optional. Regex to test the bucket name against. If empty, all buckets match.
    bucketNameRegex :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2AmazonS3BucketRegex' with the minimum fields required to make a request.
newGooglePrivacyDlpV2AmazonS3BucketRegex ::
  GooglePrivacyDlpV2AmazonS3BucketRegex
newGooglePrivacyDlpV2AmazonS3BucketRegex =
  GooglePrivacyDlpV2AmazonS3BucketRegex
    { awsAccountRegex =
        Core.Nothing,
      bucketNameRegex = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2AmazonS3BucketRegex where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2AmazonS3BucketRegex"
      ( \o ->
          GooglePrivacyDlpV2AmazonS3BucketRegex
            Core.<$> (o Core..:? "awsAccountRegex")
            Core.<*> (o Core..:? "bucketNameRegex")
      )

instance Core.ToJSON GooglePrivacyDlpV2AmazonS3BucketRegex where
  toJSON GooglePrivacyDlpV2AmazonS3BucketRegex {..} =
    Core.object
      ( Core.catMaybes
          [ ("awsAccountRegex" Core..=) Core.<$> awsAccountRegex,
            ("bucketNameRegex" Core..=) Core.<$> bucketNameRegex
          ]
      )

-- | Result of a risk analysis operation request.
--
-- /See:/ 'newGooglePrivacyDlpV2AnalyzeDataSourceRiskDetails' smart constructor.
data GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails = GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails
  { -- | Categorical stats result
    categoricalStatsResult :: (Core.Maybe GooglePrivacyDlpV2CategoricalStatsResult),
    -- | Delta-presence result
    deltaPresenceEstimationResult :: (Core.Maybe GooglePrivacyDlpV2DeltaPresenceEstimationResult),
    -- | K-anonymity result
    kAnonymityResult :: (Core.Maybe GooglePrivacyDlpV2KAnonymityResult),
    -- | K-map result
    kMapEstimationResult :: (Core.Maybe GooglePrivacyDlpV2KMapEstimationResult),
    -- | L-divesity result
    lDiversityResult :: (Core.Maybe GooglePrivacyDlpV2LDiversityResult),
    -- | Numerical stats result
    numericalStatsResult :: (Core.Maybe GooglePrivacyDlpV2NumericalStatsResult),
    -- | The configuration used for this job.
    requestedOptions :: (Core.Maybe GooglePrivacyDlpV2RequestedRiskAnalysisOptions),
    -- | Privacy metric to compute.
    requestedPrivacyMetric :: (Core.Maybe GooglePrivacyDlpV2PrivacyMetric),
    -- | Input dataset to compute metrics over.
    requestedSourceTable :: (Core.Maybe GooglePrivacyDlpV2BigQueryTable)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails' with the minimum fields required to make a request.
newGooglePrivacyDlpV2AnalyzeDataSourceRiskDetails ::
  GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails
newGooglePrivacyDlpV2AnalyzeDataSourceRiskDetails =
  GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails
    { categoricalStatsResult =
        Core.Nothing,
      deltaPresenceEstimationResult = Core.Nothing,
      kAnonymityResult = Core.Nothing,
      kMapEstimationResult = Core.Nothing,
      lDiversityResult = Core.Nothing,
      numericalStatsResult = Core.Nothing,
      requestedOptions = Core.Nothing,
      requestedPrivacyMetric = Core.Nothing,
      requestedSourceTable = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails"
      ( \o ->
          GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails
            Core.<$> (o Core..:? "categoricalStatsResult")
            Core.<*> (o Core..:? "deltaPresenceEstimationResult")
            Core.<*> (o Core..:? "kAnonymityResult")
            Core.<*> (o Core..:? "kMapEstimationResult")
            Core.<*> (o Core..:? "lDiversityResult")
            Core.<*> (o Core..:? "numericalStatsResult")
            Core.<*> (o Core..:? "requestedOptions")
            Core.<*> (o Core..:? "requestedPrivacyMetric")
            Core.<*> (o Core..:? "requestedSourceTable")
      )

instance Core.ToJSON GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails where
  toJSON GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("categoricalStatsResult" Core..=)
              Core.<$> categoricalStatsResult,
            ("deltaPresenceEstimationResult" Core..=)
              Core.<$> deltaPresenceEstimationResult,
            ("kAnonymityResult" Core..=) Core.<$> kAnonymityResult,
            ("kMapEstimationResult" Core..=) Core.<$> kMapEstimationResult,
            ("lDiversityResult" Core..=) Core.<$> lDiversityResult,
            ("numericalStatsResult" Core..=) Core.<$> numericalStatsResult,
            ("requestedOptions" Core..=) Core.<$> requestedOptions,
            ("requestedPrivacyMetric" Core..=) Core.<$> requestedPrivacyMetric,
            ("requestedSourceTable" Core..=) Core.<$> requestedSourceTable
          ]
      )

-- | An auxiliary table contains statistical information on the relative frequency of different quasi-identifiers values. It has one or several quasi-identifiers columns, and one column that indicates the relative frequency of each quasi-identifier tuple. If a tuple is present in the data but not in the auxiliary table, the corresponding relative frequency is assumed to be zero (and thus, the tuple is highly reidentifiable).
--
-- /See:/ 'newGooglePrivacyDlpV2AuxiliaryTable' smart constructor.
data GooglePrivacyDlpV2AuxiliaryTable = GooglePrivacyDlpV2AuxiliaryTable
  { -- | Required. Quasi-identifier columns.
    quasiIds :: (Core.Maybe [GooglePrivacyDlpV2QuasiIdField]),
    -- | Required. The relative frequency column must contain a floating-point number between 0 and 1 (inclusive). Null values are assumed to be zero.
    relativeFrequency :: (Core.Maybe GooglePrivacyDlpV2FieldId),
    -- | Required. Auxiliary table location.
    table :: (Core.Maybe GooglePrivacyDlpV2BigQueryTable)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2AuxiliaryTable' with the minimum fields required to make a request.
newGooglePrivacyDlpV2AuxiliaryTable ::
  GooglePrivacyDlpV2AuxiliaryTable
newGooglePrivacyDlpV2AuxiliaryTable =
  GooglePrivacyDlpV2AuxiliaryTable
    { quasiIds = Core.Nothing,
      relativeFrequency = Core.Nothing,
      table = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2AuxiliaryTable where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2AuxiliaryTable"
      ( \o ->
          GooglePrivacyDlpV2AuxiliaryTable
            Core.<$> (o Core..:? "quasiIds")
            Core.<*> (o Core..:? "relativeFrequency")
            Core.<*> (o Core..:? "table")
      )

instance Core.ToJSON GooglePrivacyDlpV2AuxiliaryTable where
  toJSON GooglePrivacyDlpV2AuxiliaryTable {..} =
    Core.object
      ( Core.catMaybes
          [ ("quasiIds" Core..=) Core.<$> quasiIds,
            ("relativeFrequency" Core..=) Core.<$> relativeFrequency,
            ("table" Core..=) Core.<$> table
          ]
      )

-- | AWS account.
--
-- /See:/ 'newGooglePrivacyDlpV2AwsAccount' smart constructor.
newtype GooglePrivacyDlpV2AwsAccount = GooglePrivacyDlpV2AwsAccount
  { -- | Required. AWS account ID.
    accountId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2AwsAccount' with the minimum fields required to make a request.
newGooglePrivacyDlpV2AwsAccount ::
  GooglePrivacyDlpV2AwsAccount
newGooglePrivacyDlpV2AwsAccount =
  GooglePrivacyDlpV2AwsAccount {accountId = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2AwsAccount where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2AwsAccount"
      ( \o ->
          GooglePrivacyDlpV2AwsAccount Core.<$> (o Core..:? "accountId")
      )

instance Core.ToJSON GooglePrivacyDlpV2AwsAccount where
  toJSON GooglePrivacyDlpV2AwsAccount {..} =
    Core.object
      (Core.catMaybes [("accountId" Core..=) Core.<$> accountId])

-- | AWS account regex.
--
-- /See:/ 'newGooglePrivacyDlpV2AwsAccountRegex' smart constructor.
newtype GooglePrivacyDlpV2AwsAccountRegex = GooglePrivacyDlpV2AwsAccountRegex
  { -- | Optional. Regex to test the AWS account ID against. If empty, all accounts match.
    accountIdRegex :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2AwsAccountRegex' with the minimum fields required to make a request.
newGooglePrivacyDlpV2AwsAccountRegex ::
  GooglePrivacyDlpV2AwsAccountRegex
newGooglePrivacyDlpV2AwsAccountRegex =
  GooglePrivacyDlpV2AwsAccountRegex {accountIdRegex = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2AwsAccountRegex where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2AwsAccountRegex"
      ( \o ->
          GooglePrivacyDlpV2AwsAccountRegex
            Core.<$> (o Core..:? "accountIdRegex")
      )

instance Core.ToJSON GooglePrivacyDlpV2AwsAccountRegex where
  toJSON GooglePrivacyDlpV2AwsAccountRegex {..} =
    Core.object
      ( Core.catMaybes
          [("accountIdRegex" Core..=) Core.<$> accountIdRegex]
      )

-- | The AWS starting location for discovery.
--
-- /See:/ 'newGooglePrivacyDlpV2AwsDiscoveryStartingLocation' smart constructor.
data GooglePrivacyDlpV2AwsDiscoveryStartingLocation = GooglePrivacyDlpV2AwsDiscoveryStartingLocation
  { -- | The AWS account ID that this discovery config applies to. Within an AWS organization, you can find the AWS account ID inside an AWS account ARN. Example: arn:{partition}:organizations::{management/account/id}:account\/{org/id}\/{account/id}
    accountId :: (Core.Maybe Core.Text),
    -- | All AWS assets stored in Asset Inventory that didn\'t match other AWS discovery configs.
    allAssetInventoryAssets :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2AwsDiscoveryStartingLocation' with the minimum fields required to make a request.
newGooglePrivacyDlpV2AwsDiscoveryStartingLocation ::
  GooglePrivacyDlpV2AwsDiscoveryStartingLocation
newGooglePrivacyDlpV2AwsDiscoveryStartingLocation =
  GooglePrivacyDlpV2AwsDiscoveryStartingLocation
    { accountId =
        Core.Nothing,
      allAssetInventoryAssets = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2AwsDiscoveryStartingLocation
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2AwsDiscoveryStartingLocation"
      ( \o ->
          GooglePrivacyDlpV2AwsDiscoveryStartingLocation
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "allAssetInventoryAssets")
      )

instance Core.ToJSON GooglePrivacyDlpV2AwsDiscoveryStartingLocation where
  toJSON GooglePrivacyDlpV2AwsDiscoveryStartingLocation {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.<$> accountId,
            ("allAssetInventoryAssets" Core..=)
              Core.<$> allAssetInventoryAssets
          ]
      )

-- | Target used to match against for discovery with BigQuery tables
--
-- /See:/ 'newGooglePrivacyDlpV2BigQueryDiscoveryTarget' smart constructor.
data GooglePrivacyDlpV2BigQueryDiscoveryTarget = GooglePrivacyDlpV2BigQueryDiscoveryTarget
  { -- | How often and when to update profiles. New tables that match both the filter and conditions are scanned as quickly as possible depending on system capacity.
    cadence :: (Core.Maybe GooglePrivacyDlpV2DiscoveryGenerationCadence),
    -- | In addition to matching the filter, these conditions must be true before a profile is generated.
    conditions :: (Core.Maybe GooglePrivacyDlpV2DiscoveryBigQueryConditions),
    -- | Tables that match this filter will not have profiles created.
    disabled :: (Core.Maybe GooglePrivacyDlpV2Disabled),
    -- | Required. The tables the discovery cadence applies to. The first target with a matching filter will be the one to apply to a table.
    filter :: (Core.Maybe GooglePrivacyDlpV2DiscoveryBigQueryFilter)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2BigQueryDiscoveryTarget' with the minimum fields required to make a request.
newGooglePrivacyDlpV2BigQueryDiscoveryTarget ::
  GooglePrivacyDlpV2BigQueryDiscoveryTarget
newGooglePrivacyDlpV2BigQueryDiscoveryTarget =
  GooglePrivacyDlpV2BigQueryDiscoveryTarget
    { cadence = Core.Nothing,
      conditions = Core.Nothing,
      disabled = Core.Nothing,
      filter = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2BigQueryDiscoveryTarget where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2BigQueryDiscoveryTarget"
      ( \o ->
          GooglePrivacyDlpV2BigQueryDiscoveryTarget
            Core.<$> (o Core..:? "cadence")
            Core.<*> (o Core..:? "conditions")
            Core.<*> (o Core..:? "disabled")
            Core.<*> (o Core..:? "filter")
      )

instance Core.ToJSON GooglePrivacyDlpV2BigQueryDiscoveryTarget where
  toJSON GooglePrivacyDlpV2BigQueryDiscoveryTarget {..} =
    Core.object
      ( Core.catMaybes
          [ ("cadence" Core..=) Core.<$> cadence,
            ("conditions" Core..=) Core.<$> conditions,
            ("disabled" Core..=) Core.<$> disabled,
            ("filter" Core..=) Core.<$> filter
          ]
      )

-- | Message defining a field of a BigQuery table.
--
-- /See:/ 'newGooglePrivacyDlpV2BigQueryField' smart constructor.
data GooglePrivacyDlpV2BigQueryField = GooglePrivacyDlpV2BigQueryField
  { -- | Designated field in the BigQuery table.
    field :: (Core.Maybe GooglePrivacyDlpV2FieldId),
    -- | Source table of the field.
    table :: (Core.Maybe GooglePrivacyDlpV2BigQueryTable)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2BigQueryField' with the minimum fields required to make a request.
newGooglePrivacyDlpV2BigQueryField ::
  GooglePrivacyDlpV2BigQueryField
newGooglePrivacyDlpV2BigQueryField =
  GooglePrivacyDlpV2BigQueryField
    { field = Core.Nothing,
      table = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2BigQueryField where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2BigQueryField"
      ( \o ->
          GooglePrivacyDlpV2BigQueryField
            Core.<$> (o Core..:? "field")
            Core.<*> (o Core..:? "table")
      )

instance Core.ToJSON GooglePrivacyDlpV2BigQueryField where
  toJSON GooglePrivacyDlpV2BigQueryField {..} =
    Core.object
      ( Core.catMaybes
          [ ("field" Core..=) Core.<$> field,
            ("table" Core..=) Core.<$> table
          ]
      )

-- | Row key for identifying a record in BigQuery table.
--
-- /See:/ 'newGooglePrivacyDlpV2BigQueryKey' smart constructor.
data GooglePrivacyDlpV2BigQueryKey = GooglePrivacyDlpV2BigQueryKey
  { -- | Row number inferred at the time the table was scanned. This value is nondeterministic, cannot be queried, and may be null for inspection jobs. To locate findings within a table, specify @inspect_job.storage_config.big_query_options.identifying_fields@ in @CreateDlpJobRequest@.
    rowNumber :: (Core.Maybe Core.Int64),
    -- | Complete BigQuery table reference.
    tableReference :: (Core.Maybe GooglePrivacyDlpV2BigQueryTable)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2BigQueryKey' with the minimum fields required to make a request.
newGooglePrivacyDlpV2BigQueryKey ::
  GooglePrivacyDlpV2BigQueryKey
newGooglePrivacyDlpV2BigQueryKey =
  GooglePrivacyDlpV2BigQueryKey
    { rowNumber = Core.Nothing,
      tableReference = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2BigQueryKey where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2BigQueryKey"
      ( \o ->
          GooglePrivacyDlpV2BigQueryKey
            Core.<$> (o Core..:? "rowNumber" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "tableReference")
      )

instance Core.ToJSON GooglePrivacyDlpV2BigQueryKey where
  toJSON GooglePrivacyDlpV2BigQueryKey {..} =
    Core.object
      ( Core.catMaybes
          [ ("rowNumber" Core..=) Core.. Core.AsText Core.<$> rowNumber,
            ("tableReference" Core..=) Core.<$> tableReference
          ]
      )

-- | Options defining BigQuery table and row identifiers.
--
-- /See:/ 'newGooglePrivacyDlpV2BigQueryOptions' smart constructor.
data GooglePrivacyDlpV2BigQueryOptions = GooglePrivacyDlpV2BigQueryOptions
  { -- | References to fields excluded from scanning. This allows you to skip inspection of entire columns which you know have no findings. When inspecting a table, we recommend that you inspect all columns. Otherwise, findings might be affected because hints from excluded columns will not be used.
    excludedFields :: (Core.Maybe [GooglePrivacyDlpV2FieldId]),
    -- | Table fields that may uniquely identify a row within the table. When @actions.saveFindings.outputConfig.table@ is specified, the values of columns specified here are available in the output table under @location.content_locations.record_location.record_key.id_values@. Nested fields such as @person.birthdate.year@ are allowed.
    identifyingFields :: (Core.Maybe [GooglePrivacyDlpV2FieldId]),
    -- | Limit scanning only to these fields. When inspecting a table, we recommend that you inspect all columns. Otherwise, findings might be affected because hints from excluded columns will not be used.
    includedFields :: (Core.Maybe [GooglePrivacyDlpV2FieldId]),
    -- | Max number of rows to scan. If the table has more rows than this value, the rest of the rows are omitted. If not set, or if set to 0, all rows will be scanned. Only one of rows/limit and rows/limit_percent can be specified. Cannot be used in conjunction with TimespanConfig.
    rowsLimit :: (Core.Maybe Core.Int64),
    -- | Max percentage of rows to scan. The rest are omitted. The number of rows scanned is rounded down. Must be between 0 and 100, inclusively. Both 0 and 100 means no limit. Defaults to 0. Only one of rows/limit and rows/limit_percent can be specified. Cannot be used in conjunction with TimespanConfig. Caution: A <https://cloud.google.com/sensitive-data-protection/docs/known-issues#bq-sampling known issue> is causing the @rowsLimitPercent@ field to behave unexpectedly. We recommend using @rowsLimit@ instead.
    rowsLimitPercent :: (Core.Maybe Core.Int32),
    -- | How to sample the data.
    sampleMethod :: (Core.Maybe GooglePrivacyDlpV2BigQueryOptions_SampleMethod),
    -- | Complete BigQuery table reference.
    tableReference :: (Core.Maybe GooglePrivacyDlpV2BigQueryTable)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2BigQueryOptions' with the minimum fields required to make a request.
newGooglePrivacyDlpV2BigQueryOptions ::
  GooglePrivacyDlpV2BigQueryOptions
newGooglePrivacyDlpV2BigQueryOptions =
  GooglePrivacyDlpV2BigQueryOptions
    { excludedFields = Core.Nothing,
      identifyingFields = Core.Nothing,
      includedFields = Core.Nothing,
      rowsLimit = Core.Nothing,
      rowsLimitPercent = Core.Nothing,
      sampleMethod = Core.Nothing,
      tableReference = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2BigQueryOptions where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2BigQueryOptions"
      ( \o ->
          GooglePrivacyDlpV2BigQueryOptions
            Core.<$> (o Core..:? "excludedFields")
            Core.<*> (o Core..:? "identifyingFields")
            Core.<*> (o Core..:? "includedFields")
            Core.<*> (o Core..:? "rowsLimit" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "rowsLimitPercent")
            Core.<*> (o Core..:? "sampleMethod")
            Core.<*> (o Core..:? "tableReference")
      )

instance Core.ToJSON GooglePrivacyDlpV2BigQueryOptions where
  toJSON GooglePrivacyDlpV2BigQueryOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("excludedFields" Core..=) Core.<$> excludedFields,
            ("identifyingFields" Core..=) Core.<$> identifyingFields,
            ("includedFields" Core..=) Core.<$> includedFields,
            ("rowsLimit" Core..=) Core.. Core.AsText Core.<$> rowsLimit,
            ("rowsLimitPercent" Core..=) Core.<$> rowsLimitPercent,
            ("sampleMethod" Core..=) Core.<$> sampleMethod,
            ("tableReference" Core..=) Core.<$> tableReference
          ]
      )

-- | A pattern to match against one or more tables, datasets, or projects that contain BigQuery tables. At least one pattern must be specified. Regular expressions use RE2 <https://github.com/google/re2/wiki/Syntax syntax>; a guide can be found under the google\/re2 repository on GitHub.
--
-- /See:/ 'newGooglePrivacyDlpV2BigQueryRegex' smart constructor.
data GooglePrivacyDlpV2BigQueryRegex = GooglePrivacyDlpV2BigQueryRegex
  { -- | If unset, this property matches all datasets.
    datasetIdRegex :: (Core.Maybe Core.Text),
    -- | For organizations, if unset, will match all projects. Has no effect for data profile configurations created within a project.
    projectIdRegex :: (Core.Maybe Core.Text),
    -- | If unset, this property matches all tables.
    tableIdRegex :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2BigQueryRegex' with the minimum fields required to make a request.
newGooglePrivacyDlpV2BigQueryRegex ::
  GooglePrivacyDlpV2BigQueryRegex
newGooglePrivacyDlpV2BigQueryRegex =
  GooglePrivacyDlpV2BigQueryRegex
    { datasetIdRegex = Core.Nothing,
      projectIdRegex = Core.Nothing,
      tableIdRegex = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2BigQueryRegex where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2BigQueryRegex"
      ( \o ->
          GooglePrivacyDlpV2BigQueryRegex
            Core.<$> (o Core..:? "datasetIdRegex")
            Core.<*> (o Core..:? "projectIdRegex")
            Core.<*> (o Core..:? "tableIdRegex")
      )

instance Core.ToJSON GooglePrivacyDlpV2BigQueryRegex where
  toJSON GooglePrivacyDlpV2BigQueryRegex {..} =
    Core.object
      ( Core.catMaybes
          [ ("datasetIdRegex" Core..=) Core.<$> datasetIdRegex,
            ("projectIdRegex" Core..=) Core.<$> projectIdRegex,
            ("tableIdRegex" Core..=) Core.<$> tableIdRegex
          ]
      )

-- | A collection of regular expressions to determine what tables to match against.
--
-- /See:/ 'newGooglePrivacyDlpV2BigQueryRegexes' smart constructor.
newtype GooglePrivacyDlpV2BigQueryRegexes = GooglePrivacyDlpV2BigQueryRegexes
  { -- | A single BigQuery regular expression pattern to match against one or more tables, datasets, or projects that contain BigQuery tables.
    patterns :: (Core.Maybe [GooglePrivacyDlpV2BigQueryRegex])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2BigQueryRegexes' with the minimum fields required to make a request.
newGooglePrivacyDlpV2BigQueryRegexes ::
  GooglePrivacyDlpV2BigQueryRegexes
newGooglePrivacyDlpV2BigQueryRegexes =
  GooglePrivacyDlpV2BigQueryRegexes {patterns = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2BigQueryRegexes where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2BigQueryRegexes"
      ( \o ->
          GooglePrivacyDlpV2BigQueryRegexes Core.<$> (o Core..:? "patterns")
      )

instance Core.ToJSON GooglePrivacyDlpV2BigQueryRegexes where
  toJSON GooglePrivacyDlpV2BigQueryRegexes {..} =
    Core.object
      (Core.catMaybes [("patterns" Core..=) Core.<$> patterns])

-- | Message defining the location of a BigQuery table. A table is uniquely identified by its project/id, dataset/id, and table_name. Within a query a table is often referenced with a string in the format of: @:.@ or @..@.
--
-- /See:/ 'newGooglePrivacyDlpV2BigQueryTable' smart constructor.
data GooglePrivacyDlpV2BigQueryTable = GooglePrivacyDlpV2BigQueryTable
  { -- | Dataset ID of the table.
    datasetId :: (Core.Maybe Core.Text),
    -- | The Google Cloud project ID of the project containing the table. If omitted, project ID is inferred from the API call.
    projectId :: (Core.Maybe Core.Text),
    -- | Name of the table.
    tableId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2BigQueryTable' with the minimum fields required to make a request.
newGooglePrivacyDlpV2BigQueryTable ::
  GooglePrivacyDlpV2BigQueryTable
newGooglePrivacyDlpV2BigQueryTable =
  GooglePrivacyDlpV2BigQueryTable
    { datasetId = Core.Nothing,
      projectId = Core.Nothing,
      tableId = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2BigQueryTable where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2BigQueryTable"
      ( \o ->
          GooglePrivacyDlpV2BigQueryTable
            Core.<$> (o Core..:? "datasetId")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "tableId")
      )

instance Core.ToJSON GooglePrivacyDlpV2BigQueryTable where
  toJSON GooglePrivacyDlpV2BigQueryTable {..} =
    Core.object
      ( Core.catMaybes
          [ ("datasetId" Core..=) Core.<$> datasetId,
            ("projectId" Core..=) Core.<$> projectId,
            ("tableId" Core..=) Core.<$> tableId
          ]
      )

-- | Specifies a collection of BigQuery tables. Used for Discovery.
--
-- /See:/ 'newGooglePrivacyDlpV2BigQueryTableCollection' smart constructor.
newtype GooglePrivacyDlpV2BigQueryTableCollection = GooglePrivacyDlpV2BigQueryTableCollection
  { -- | A collection of regular expressions to match a BigQuery table against.
    includeRegexes :: (Core.Maybe GooglePrivacyDlpV2BigQueryRegexes)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2BigQueryTableCollection' with the minimum fields required to make a request.
newGooglePrivacyDlpV2BigQueryTableCollection ::
  GooglePrivacyDlpV2BigQueryTableCollection
newGooglePrivacyDlpV2BigQueryTableCollection =
  GooglePrivacyDlpV2BigQueryTableCollection
    { includeRegexes =
        Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2BigQueryTableCollection where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2BigQueryTableCollection"
      ( \o ->
          GooglePrivacyDlpV2BigQueryTableCollection
            Core.<$> (o Core..:? "includeRegexes")
      )

instance Core.ToJSON GooglePrivacyDlpV2BigQueryTableCollection where
  toJSON GooglePrivacyDlpV2BigQueryTableCollection {..} =
    Core.object
      ( Core.catMaybes
          [("includeRegexes" Core..=) Core.<$> includeRegexes]
      )

-- | The types of BigQuery tables supported by Cloud DLP.
--
-- /See:/ 'newGooglePrivacyDlpV2BigQueryTableTypes' smart constructor.
newtype GooglePrivacyDlpV2BigQueryTableTypes = GooglePrivacyDlpV2BigQueryTableTypes
  { -- | A set of BigQuery table types.
    types :: (Core.Maybe [GooglePrivacyDlpV2BigQueryTableTypes_TypesItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2BigQueryTableTypes' with the minimum fields required to make a request.
newGooglePrivacyDlpV2BigQueryTableTypes ::
  GooglePrivacyDlpV2BigQueryTableTypes
newGooglePrivacyDlpV2BigQueryTableTypes =
  GooglePrivacyDlpV2BigQueryTableTypes {types = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2BigQueryTableTypes where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2BigQueryTableTypes"
      ( \o ->
          GooglePrivacyDlpV2BigQueryTableTypes Core.<$> (o Core..:? "types")
      )

instance Core.ToJSON GooglePrivacyDlpV2BigQueryTableTypes where
  toJSON GooglePrivacyDlpV2BigQueryTableTypes {..} =
    Core.object (Core.catMaybes [("types" Core..=) Core.<$> types])

-- | Bounding box encompassing detected text within an image.
--
-- /See:/ 'newGooglePrivacyDlpV2BoundingBox' smart constructor.
data GooglePrivacyDlpV2BoundingBox = GooglePrivacyDlpV2BoundingBox
  { -- | Height of the bounding box in pixels.
    height :: (Core.Maybe Core.Int32),
    -- | Left coordinate of the bounding box. (0,0) is upper left.
    left :: (Core.Maybe Core.Int32),
    -- | Top coordinate of the bounding box. (0,0) is upper left.
    top :: (Core.Maybe Core.Int32),
    -- | Width of the bounding box in pixels.
    width :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2BoundingBox' with the minimum fields required to make a request.
newGooglePrivacyDlpV2BoundingBox ::
  GooglePrivacyDlpV2BoundingBox
newGooglePrivacyDlpV2BoundingBox =
  GooglePrivacyDlpV2BoundingBox
    { height = Core.Nothing,
      left = Core.Nothing,
      top = Core.Nothing,
      width = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2BoundingBox where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2BoundingBox"
      ( \o ->
          GooglePrivacyDlpV2BoundingBox
            Core.<$> (o Core..:? "height")
            Core.<*> (o Core..:? "left")
            Core.<*> (o Core..:? "top")
            Core.<*> (o Core..:? "width")
      )

instance Core.ToJSON GooglePrivacyDlpV2BoundingBox where
  toJSON GooglePrivacyDlpV2BoundingBox {..} =
    Core.object
      ( Core.catMaybes
          [ ("height" Core..=) Core.<$> height,
            ("left" Core..=) Core.<$> left,
            ("top" Core..=) Core.<$> top,
            ("width" Core..=) Core.<$> width
          ]
      )

-- | Bucket is represented as a range, along with replacement values.
--
-- /See:/ 'newGooglePrivacyDlpV2Bucket' smart constructor.
data GooglePrivacyDlpV2Bucket = GooglePrivacyDlpV2Bucket
  { -- | Upper bound of the range, exclusive; type must match min.
    max :: (Core.Maybe GooglePrivacyDlpV2Value),
    -- | Lower bound of the range, inclusive. Type should be the same as max if used.
    min :: (Core.Maybe GooglePrivacyDlpV2Value),
    -- | Required. Replacement value for this bucket.
    replacementValue :: (Core.Maybe GooglePrivacyDlpV2Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Bucket' with the minimum fields required to make a request.
newGooglePrivacyDlpV2Bucket ::
  GooglePrivacyDlpV2Bucket
newGooglePrivacyDlpV2Bucket =
  GooglePrivacyDlpV2Bucket
    { max = Core.Nothing,
      min = Core.Nothing,
      replacementValue = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2Bucket where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2Bucket"
      ( \o ->
          GooglePrivacyDlpV2Bucket
            Core.<$> (o Core..:? "max")
            Core.<*> (o Core..:? "min")
            Core.<*> (o Core..:? "replacementValue")
      )

instance Core.ToJSON GooglePrivacyDlpV2Bucket where
  toJSON GooglePrivacyDlpV2Bucket {..} =
    Core.object
      ( Core.catMaybes
          [ ("max" Core..=) Core.<$> max,
            ("min" Core..=) Core.<$> min,
            ("replacementValue" Core..=) Core.<$> replacementValue
          ]
      )

-- | Generalization function that buckets values based on ranges. The ranges and replacement values are dynamically provided by the user for custom behavior, such as 1-30 -> LOW, 31-65 -> MEDIUM, 66-100 -> HIGH. This can be used on data of type: number, long, string, timestamp. If the bound @Value@ type differs from the type of data being transformed, we will first attempt converting the type of the data to be transformed to match the type of the bound before comparing. See https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/concepts-bucketing to learn more.
--
-- /See:/ 'newGooglePrivacyDlpV2BucketingConfig' smart constructor.
newtype GooglePrivacyDlpV2BucketingConfig = GooglePrivacyDlpV2BucketingConfig
  { -- | Set of buckets. Ranges must be non-overlapping.
    buckets :: (Core.Maybe [GooglePrivacyDlpV2Bucket])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2BucketingConfig' with the minimum fields required to make a request.
newGooglePrivacyDlpV2BucketingConfig ::
  GooglePrivacyDlpV2BucketingConfig
newGooglePrivacyDlpV2BucketingConfig =
  GooglePrivacyDlpV2BucketingConfig {buckets = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2BucketingConfig where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2BucketingConfig"
      ( \o ->
          GooglePrivacyDlpV2BucketingConfig Core.<$> (o Core..:? "buckets")
      )

instance Core.ToJSON GooglePrivacyDlpV2BucketingConfig where
  toJSON GooglePrivacyDlpV2BucketingConfig {..} =
    Core.object
      (Core.catMaybes [("buckets" Core..=) Core.<$> buckets])

-- | Container for bytes to inspect or redact.
--
-- /See:/ 'newGooglePrivacyDlpV2ByteContentItem' smart constructor.
data GooglePrivacyDlpV2ByteContentItem = GooglePrivacyDlpV2ByteContentItem
  { -- | Content data to inspect or redact.
    data' :: (Core.Maybe Core.Base64),
    -- | The type of data stored in the bytes string. Default will be TEXT_UTF8.
    type' :: (Core.Maybe GooglePrivacyDlpV2ByteContentItem_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ByteContentItem' with the minimum fields required to make a request.
newGooglePrivacyDlpV2ByteContentItem ::
  GooglePrivacyDlpV2ByteContentItem
newGooglePrivacyDlpV2ByteContentItem =
  GooglePrivacyDlpV2ByteContentItem
    { data' = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2ByteContentItem where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ByteContentItem"
      ( \o ->
          GooglePrivacyDlpV2ByteContentItem
            Core.<$> (o Core..:? "data")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON GooglePrivacyDlpV2ByteContentItem where
  toJSON GooglePrivacyDlpV2ByteContentItem {..} =
    Core.object
      ( Core.catMaybes
          [("data" Core..=) Core.<$> data', ("type" Core..=) Core.<$> type']
      )

-- | The request message for canceling a DLP job.
--
-- /See:/ 'newGooglePrivacyDlpV2CancelDlpJobRequest' smart constructor.
data GooglePrivacyDlpV2CancelDlpJobRequest = GooglePrivacyDlpV2CancelDlpJobRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CancelDlpJobRequest' with the minimum fields required to make a request.
newGooglePrivacyDlpV2CancelDlpJobRequest ::
  GooglePrivacyDlpV2CancelDlpJobRequest
newGooglePrivacyDlpV2CancelDlpJobRequest =
  GooglePrivacyDlpV2CancelDlpJobRequest

instance Core.FromJSON GooglePrivacyDlpV2CancelDlpJobRequest where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2CancelDlpJobRequest"
      (\o -> Core.pure GooglePrivacyDlpV2CancelDlpJobRequest)

instance Core.ToJSON GooglePrivacyDlpV2CancelDlpJobRequest where
  toJSON = Core.const Core.emptyObject

-- | Compute numerical stats over an individual column, including number of distinct values and value count distribution.
--
-- /See:/ 'newGooglePrivacyDlpV2CategoricalStatsConfig' smart constructor.
newtype GooglePrivacyDlpV2CategoricalStatsConfig = GooglePrivacyDlpV2CategoricalStatsConfig
  { -- | Field to compute categorical stats on. All column types are supported except for arrays and structs. However, it may be more informative to use NumericalStats when the field type is supported, depending on the data.
    field :: (Core.Maybe GooglePrivacyDlpV2FieldId)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CategoricalStatsConfig' with the minimum fields required to make a request.
newGooglePrivacyDlpV2CategoricalStatsConfig ::
  GooglePrivacyDlpV2CategoricalStatsConfig
newGooglePrivacyDlpV2CategoricalStatsConfig =
  GooglePrivacyDlpV2CategoricalStatsConfig {field = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2CategoricalStatsConfig where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2CategoricalStatsConfig"
      ( \o ->
          GooglePrivacyDlpV2CategoricalStatsConfig
            Core.<$> (o Core..:? "field")
      )

instance Core.ToJSON GooglePrivacyDlpV2CategoricalStatsConfig where
  toJSON GooglePrivacyDlpV2CategoricalStatsConfig {..} =
    Core.object (Core.catMaybes [("field" Core..=) Core.<$> field])

-- | Histogram of value frequencies in the column.
--
-- /See:/ 'newGooglePrivacyDlpV2CategoricalStatsHistogramBucket' smart constructor.
data GooglePrivacyDlpV2CategoricalStatsHistogramBucket = GooglePrivacyDlpV2CategoricalStatsHistogramBucket
  { -- | Total number of values in this bucket.
    bucketSize :: (Core.Maybe Core.Int64),
    -- | Total number of distinct values in this bucket.
    bucketValueCount :: (Core.Maybe Core.Int64),
    -- | Sample of value frequencies in this bucket. The total number of values returned per bucket is capped at 20.
    bucketValues :: (Core.Maybe [GooglePrivacyDlpV2ValueFrequency]),
    -- | Lower bound on the value frequency of the values in this bucket.
    valueFrequencyLowerBound :: (Core.Maybe Core.Int64),
    -- | Upper bound on the value frequency of the values in this bucket.
    valueFrequencyUpperBound :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CategoricalStatsHistogramBucket' with the minimum fields required to make a request.
newGooglePrivacyDlpV2CategoricalStatsHistogramBucket ::
  GooglePrivacyDlpV2CategoricalStatsHistogramBucket
newGooglePrivacyDlpV2CategoricalStatsHistogramBucket =
  GooglePrivacyDlpV2CategoricalStatsHistogramBucket
    { bucketSize =
        Core.Nothing,
      bucketValueCount = Core.Nothing,
      bucketValues = Core.Nothing,
      valueFrequencyLowerBound = Core.Nothing,
      valueFrequencyUpperBound = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2CategoricalStatsHistogramBucket
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2CategoricalStatsHistogramBucket"
      ( \o ->
          GooglePrivacyDlpV2CategoricalStatsHistogramBucket
            Core.<$> (o Core..:? "bucketSize" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "bucketValueCount" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "bucketValues")
            Core.<*> ( o
                         Core..:? "valueFrequencyLowerBound"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "valueFrequencyUpperBound"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2CategoricalStatsHistogramBucket
  where
  toJSON GooglePrivacyDlpV2CategoricalStatsHistogramBucket {..} =
    Core.object
      ( Core.catMaybes
          [ ("bucketSize" Core..=) Core.. Core.AsText Core.<$> bucketSize,
            ("bucketValueCount" Core..=)
              Core.. Core.AsText
              Core.<$> bucketValueCount,
            ("bucketValues" Core..=) Core.<$> bucketValues,
            ("valueFrequencyLowerBound" Core..=)
              Core.. Core.AsText
              Core.<$> valueFrequencyLowerBound,
            ("valueFrequencyUpperBound" Core..=)
              Core.. Core.AsText
              Core.<$> valueFrequencyUpperBound
          ]
      )

-- | Result of the categorical stats computation.
--
-- /See:/ 'newGooglePrivacyDlpV2CategoricalStatsResult' smart constructor.
newtype GooglePrivacyDlpV2CategoricalStatsResult = GooglePrivacyDlpV2CategoricalStatsResult
  { -- | Histogram of value frequencies in the column.
    valueFrequencyHistogramBuckets :: (Core.Maybe [GooglePrivacyDlpV2CategoricalStatsHistogramBucket])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CategoricalStatsResult' with the minimum fields required to make a request.
newGooglePrivacyDlpV2CategoricalStatsResult ::
  GooglePrivacyDlpV2CategoricalStatsResult
newGooglePrivacyDlpV2CategoricalStatsResult =
  GooglePrivacyDlpV2CategoricalStatsResult
    { valueFrequencyHistogramBuckets =
        Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2CategoricalStatsResult where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2CategoricalStatsResult"
      ( \o ->
          GooglePrivacyDlpV2CategoricalStatsResult
            Core.<$> (o Core..:? "valueFrequencyHistogramBuckets")
      )

instance Core.ToJSON GooglePrivacyDlpV2CategoricalStatsResult where
  toJSON GooglePrivacyDlpV2CategoricalStatsResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("valueFrequencyHistogramBuckets" Core..=)
              Core.<$> valueFrequencyHistogramBuckets
          ]
      )

-- | Partially mask a string by replacing a given number of characters with a fixed character. Masking can start from the beginning or end of the string. This can be used on data of any type (numbers, longs, and so on) and when de-identifying structured data we\'ll attempt to preserve the original data\'s type. (This allows you to take a long like 123 and modify it to a string like **3.
--
-- /See:/ 'newGooglePrivacyDlpV2CharacterMaskConfig' smart constructor.
data GooglePrivacyDlpV2CharacterMaskConfig = GooglePrivacyDlpV2CharacterMaskConfig
  { -- | When masking a string, items in this list will be skipped when replacing characters. For example, if the input string is @555-555-5555@ and you instruct Cloud DLP to skip @-@ and mask 5 characters with @*@, Cloud DLP returns @***-**5-5555@.
    charactersToIgnore :: (Core.Maybe [GooglePrivacyDlpV2CharsToIgnore]),
    -- | Character to use to mask the sensitive values—for example, @*@ for an alphabetic string such as a name, or @0@ for a numeric string such as ZIP code or credit card number. This string must have a length of 1. If not supplied, this value defaults to @*@ for strings, and @0@ for digits.
    maskingCharacter :: (Core.Maybe Core.Text),
    -- | Number of characters to mask. If not set, all matching chars will be masked. Skipped characters do not count towards this tally. If @number_to_mask@ is negative, this denotes inverse masking. Cloud DLP masks all but a number of characters. For example, suppose you have the following values: - @masking_character@ is @*@ - @number_to_mask@ is @-4@ - @reverse_order@ is @false@ - @CharsToIgnore@ includes @-@ - Input string is @1234-5678-9012-3456@ The resulting de-identified string is @****-****-****-3456@. Cloud DLP masks all but the last four characters. If @reverse_order@ is @true@, all but the first four characters are masked as @1234-****-****-****@.
    numberToMask :: (Core.Maybe Core.Int32),
    -- | Mask characters in reverse order. For example, if @masking_character@ is @0@, @number_to_mask@ is @14@, and @reverse_order@ is @false@, then the input string @1234-5678-9012-3456@ is masked as @00000000000000-3456@. If @masking_character@ is @*@, @number_to_mask@ is @3@, and @reverse_order@ is @true@, then the string @12345@ is masked as @12***@.
    reverseOrder :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CharacterMaskConfig' with the minimum fields required to make a request.
newGooglePrivacyDlpV2CharacterMaskConfig ::
  GooglePrivacyDlpV2CharacterMaskConfig
newGooglePrivacyDlpV2CharacterMaskConfig =
  GooglePrivacyDlpV2CharacterMaskConfig
    { charactersToIgnore =
        Core.Nothing,
      maskingCharacter = Core.Nothing,
      numberToMask = Core.Nothing,
      reverseOrder = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2CharacterMaskConfig where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2CharacterMaskConfig"
      ( \o ->
          GooglePrivacyDlpV2CharacterMaskConfig
            Core.<$> (o Core..:? "charactersToIgnore")
            Core.<*> (o Core..:? "maskingCharacter")
            Core.<*> (o Core..:? "numberToMask")
            Core.<*> (o Core..:? "reverseOrder")
      )

instance Core.ToJSON GooglePrivacyDlpV2CharacterMaskConfig where
  toJSON GooglePrivacyDlpV2CharacterMaskConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("charactersToIgnore" Core..=) Core.<$> charactersToIgnore,
            ("maskingCharacter" Core..=) Core.<$> maskingCharacter,
            ("numberToMask" Core..=) Core.<$> numberToMask,
            ("reverseOrder" Core..=) Core.<$> reverseOrder
          ]
      )

-- | Characters to skip when doing deidentification of a value. These will be left alone and skipped.
--
-- /See:/ 'newGooglePrivacyDlpV2CharsToIgnore' smart constructor.
data GooglePrivacyDlpV2CharsToIgnore = GooglePrivacyDlpV2CharsToIgnore
  { -- | Characters to not transform when masking.
    charactersToSkip :: (Core.Maybe Core.Text),
    -- | Common characters to not transform when masking. Useful to avoid removing punctuation.
    commonCharactersToIgnore ::
      ( Core.Maybe
          GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CharsToIgnore' with the minimum fields required to make a request.
newGooglePrivacyDlpV2CharsToIgnore ::
  GooglePrivacyDlpV2CharsToIgnore
newGooglePrivacyDlpV2CharsToIgnore =
  GooglePrivacyDlpV2CharsToIgnore
    { charactersToSkip = Core.Nothing,
      commonCharactersToIgnore = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2CharsToIgnore where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2CharsToIgnore"
      ( \o ->
          GooglePrivacyDlpV2CharsToIgnore
            Core.<$> (o Core..:? "charactersToSkip")
            Core.<*> (o Core..:? "commonCharactersToIgnore")
      )

instance Core.ToJSON GooglePrivacyDlpV2CharsToIgnore where
  toJSON GooglePrivacyDlpV2CharsToIgnore {..} =
    Core.object
      ( Core.catMaybes
          [ ("charactersToSkip" Core..=) Core.<$> charactersToSkip,
            ("commonCharactersToIgnore" Core..=)
              Core.<$> commonCharactersToIgnore
          ]
      )

-- | Target used to match against for discovery with Cloud SQL tables.
--
-- /See:/ 'newGooglePrivacyDlpV2CloudSqlDiscoveryTarget' smart constructor.
data GooglePrivacyDlpV2CloudSqlDiscoveryTarget = GooglePrivacyDlpV2CloudSqlDiscoveryTarget
  { -- | In addition to matching the filter, these conditions must be true before a profile is generated.
    conditions :: (Core.Maybe GooglePrivacyDlpV2DiscoveryCloudSqlConditions),
    -- | Disable profiling for database resources that match this filter.
    disabled :: (Core.Maybe GooglePrivacyDlpV2Disabled),
    -- | Required. The tables the discovery cadence applies to. The first target with a matching filter will be the one to apply to a table.
    filter :: (Core.Maybe GooglePrivacyDlpV2DiscoveryCloudSqlFilter),
    -- | How often and when to update profiles. New tables that match both the filter and conditions are scanned as quickly as possible depending on system capacity.
    generationCadence :: (Core.Maybe GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CloudSqlDiscoveryTarget' with the minimum fields required to make a request.
newGooglePrivacyDlpV2CloudSqlDiscoveryTarget ::
  GooglePrivacyDlpV2CloudSqlDiscoveryTarget
newGooglePrivacyDlpV2CloudSqlDiscoveryTarget =
  GooglePrivacyDlpV2CloudSqlDiscoveryTarget
    { conditions =
        Core.Nothing,
      disabled = Core.Nothing,
      filter = Core.Nothing,
      generationCadence = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2CloudSqlDiscoveryTarget where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2CloudSqlDiscoveryTarget"
      ( \o ->
          GooglePrivacyDlpV2CloudSqlDiscoveryTarget
            Core.<$> (o Core..:? "conditions")
            Core.<*> (o Core..:? "disabled")
            Core.<*> (o Core..:? "filter")
            Core.<*> (o Core..:? "generationCadence")
      )

instance Core.ToJSON GooglePrivacyDlpV2CloudSqlDiscoveryTarget where
  toJSON GooglePrivacyDlpV2CloudSqlDiscoveryTarget {..} =
    Core.object
      ( Core.catMaybes
          [ ("conditions" Core..=) Core.<$> conditions,
            ("disabled" Core..=) Core.<$> disabled,
            ("filter" Core..=) Core.<$> filter,
            ("generationCadence" Core..=) Core.<$> generationCadence
          ]
      )

-- | Use IAM authentication to connect. This requires the Cloud SQL IAM feature to be enabled on the instance, which is not the default for Cloud SQL. See https:\/\/cloud.google.com\/sql\/docs\/postgres\/authentication and https:\/\/cloud.google.com\/sql\/docs\/mysql\/authentication.
--
-- /See:/ 'newGooglePrivacyDlpV2CloudSqlIamCredential' smart constructor.
data GooglePrivacyDlpV2CloudSqlIamCredential = GooglePrivacyDlpV2CloudSqlIamCredential
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CloudSqlIamCredential' with the minimum fields required to make a request.
newGooglePrivacyDlpV2CloudSqlIamCredential ::
  GooglePrivacyDlpV2CloudSqlIamCredential
newGooglePrivacyDlpV2CloudSqlIamCredential =
  GooglePrivacyDlpV2CloudSqlIamCredential

instance Core.FromJSON GooglePrivacyDlpV2CloudSqlIamCredential where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2CloudSqlIamCredential"
      (\o -> Core.pure GooglePrivacyDlpV2CloudSqlIamCredential)

instance Core.ToJSON GooglePrivacyDlpV2CloudSqlIamCredential where
  toJSON = Core.const Core.emptyObject

-- | Cloud SQL connection properties.
--
-- /See:/ 'newGooglePrivacyDlpV2CloudSqlProperties' smart constructor.
data GooglePrivacyDlpV2CloudSqlProperties = GooglePrivacyDlpV2CloudSqlProperties
  { -- | Built-in IAM authentication (must be configured in Cloud SQL).
    cloudSqlIam :: (Core.Maybe GooglePrivacyDlpV2CloudSqlIamCredential),
    -- | Optional. Immutable. The Cloud SQL instance for which the connection is defined. Only one connection per instance is allowed. This can only be set at creation time, and cannot be updated. It is an error to use a connection/name from different project or region than the one that holds the connection. For example, a Connection resource for Cloud SQL connection/name @project-id:us-central1:sql-instance@ must be created under the parent @projects\/project-id\/locations\/us-central1@
    connectionName :: (Core.Maybe Core.Text),
    -- | Required. The database engine used by the Cloud SQL instance that this connection configures.
    databaseEngine :: (Core.Maybe GooglePrivacyDlpV2CloudSqlProperties_DatabaseEngine),
    -- | Required. The DLP API will limit its connections to max_connections. Must be 2 or greater.
    maxConnections :: (Core.Maybe Core.Int32),
    -- | A username and password stored in Secret Manager.
    usernamePassword :: (Core.Maybe GooglePrivacyDlpV2SecretManagerCredential)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CloudSqlProperties' with the minimum fields required to make a request.
newGooglePrivacyDlpV2CloudSqlProperties ::
  GooglePrivacyDlpV2CloudSqlProperties
newGooglePrivacyDlpV2CloudSqlProperties =
  GooglePrivacyDlpV2CloudSqlProperties
    { cloudSqlIam = Core.Nothing,
      connectionName = Core.Nothing,
      databaseEngine = Core.Nothing,
      maxConnections = Core.Nothing,
      usernamePassword = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2CloudSqlProperties where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2CloudSqlProperties"
      ( \o ->
          GooglePrivacyDlpV2CloudSqlProperties
            Core.<$> (o Core..:? "cloudSqlIam")
            Core.<*> (o Core..:? "connectionName")
            Core.<*> (o Core..:? "databaseEngine")
            Core.<*> (o Core..:? "maxConnections")
            Core.<*> (o Core..:? "usernamePassword")
      )

instance Core.ToJSON GooglePrivacyDlpV2CloudSqlProperties where
  toJSON GooglePrivacyDlpV2CloudSqlProperties {..} =
    Core.object
      ( Core.catMaybes
          [ ("cloudSqlIam" Core..=) Core.<$> cloudSqlIam,
            ("connectionName" Core..=) Core.<$> connectionName,
            ("databaseEngine" Core..=) Core.<$> databaseEngine,
            ("maxConnections" Core..=) Core.<$> maxConnections,
            ("usernamePassword" Core..=) Core.<$> usernamePassword
          ]
      )

-- | Target used to match against for discovery with Cloud Storage buckets.
--
-- /See:/ 'newGooglePrivacyDlpV2CloudStorageDiscoveryTarget' smart constructor.
data GooglePrivacyDlpV2CloudStorageDiscoveryTarget = GooglePrivacyDlpV2CloudStorageDiscoveryTarget
  { -- | Optional. In addition to matching the filter, these conditions must be true before a profile is generated.
    conditions :: (Core.Maybe GooglePrivacyDlpV2DiscoveryFileStoreConditions),
    -- | Optional. Disable profiling for buckets that match this filter.
    disabled :: (Core.Maybe GooglePrivacyDlpV2Disabled),
    -- | Required. The buckets the generation_cadence applies to. The first target with a matching filter will be the one to apply to a bucket.
    filter :: (Core.Maybe GooglePrivacyDlpV2DiscoveryCloudStorageFilter),
    -- | Optional. How often and when to update profiles. New buckets that match both the filter and conditions are scanned as quickly as possible depending on system capacity.
    generationCadence ::
      ( Core.Maybe
          GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CloudStorageDiscoveryTarget' with the minimum fields required to make a request.
newGooglePrivacyDlpV2CloudStorageDiscoveryTarget ::
  GooglePrivacyDlpV2CloudStorageDiscoveryTarget
newGooglePrivacyDlpV2CloudStorageDiscoveryTarget =
  GooglePrivacyDlpV2CloudStorageDiscoveryTarget
    { conditions =
        Core.Nothing,
      disabled = Core.Nothing,
      filter = Core.Nothing,
      generationCadence = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2CloudStorageDiscoveryTarget
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2CloudStorageDiscoveryTarget"
      ( \o ->
          GooglePrivacyDlpV2CloudStorageDiscoveryTarget
            Core.<$> (o Core..:? "conditions")
            Core.<*> (o Core..:? "disabled")
            Core.<*> (o Core..:? "filter")
            Core.<*> (o Core..:? "generationCadence")
      )

instance Core.ToJSON GooglePrivacyDlpV2CloudStorageDiscoveryTarget where
  toJSON GooglePrivacyDlpV2CloudStorageDiscoveryTarget {..} =
    Core.object
      ( Core.catMaybes
          [ ("conditions" Core..=) Core.<$> conditions,
            ("disabled" Core..=) Core.<$> disabled,
            ("filter" Core..=) Core.<$> filter,
            ("generationCadence" Core..=) Core.<$> generationCadence
          ]
      )

-- | Message representing a set of files in Cloud Storage.
--
-- /See:/ 'newGooglePrivacyDlpV2CloudStorageFileSet' smart constructor.
newtype GooglePrivacyDlpV2CloudStorageFileSet = GooglePrivacyDlpV2CloudStorageFileSet
  { -- | The url, in the format @gs:\/\/\/@. Trailing wildcard in the path is allowed.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CloudStorageFileSet' with the minimum fields required to make a request.
newGooglePrivacyDlpV2CloudStorageFileSet ::
  GooglePrivacyDlpV2CloudStorageFileSet
newGooglePrivacyDlpV2CloudStorageFileSet =
  GooglePrivacyDlpV2CloudStorageFileSet {url = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2CloudStorageFileSet where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2CloudStorageFileSet"
      ( \o ->
          GooglePrivacyDlpV2CloudStorageFileSet Core.<$> (o Core..:? "url")
      )

instance Core.ToJSON GooglePrivacyDlpV2CloudStorageFileSet where
  toJSON GooglePrivacyDlpV2CloudStorageFileSet {..} =
    Core.object (Core.catMaybes [("url" Core..=) Core.<$> url])

-- | Options defining a file or a set of files within a Cloud Storage bucket.
--
-- /See:/ 'newGooglePrivacyDlpV2CloudStorageOptions' smart constructor.
data GooglePrivacyDlpV2CloudStorageOptions = GooglePrivacyDlpV2CloudStorageOptions
  { -- | Max number of bytes to scan from a file. If a scanned file\'s size is bigger than this value then the rest of the bytes are omitted. Only one of @bytes_limit_per_file@ and @bytes_limit_per_file_percent@ can be specified. This field can\'t be set if de-identification is requested. For certain file types, setting this field has no effect. For more information, see <https://cloud.google.com/sensitive-data-protection/docs/supported-file-types#max-byte-size-per-file Limits on bytes scanned per file>.
    bytesLimitPerFile :: (Core.Maybe Core.Int64),
    -- | Max percentage of bytes to scan from a file. The rest are omitted. The number of bytes scanned is rounded down. Must be between 0 and 100, inclusively. Both 0 and 100 means no limit. Defaults to 0. Only one of bytes/limit/per/file and bytes/limit/per/file_percent can be specified. This field can\'t be set if de-identification is requested. For certain file types, setting this field has no effect. For more information, see <https://cloud.google.com/sensitive-data-protection/docs/supported-file-types#max-byte-size-per-file Limits on bytes scanned per file>.
    bytesLimitPerFilePercent :: (Core.Maybe Core.Int32),
    -- | The set of one or more files to scan.
    fileSet :: (Core.Maybe GooglePrivacyDlpV2FileSet),
    -- | List of file type groups to include in the scan. If empty, all files are scanned and available data format processors are applied. In addition, the binary content of the selected files is always scanned as well. Images are scanned only as binary if the specified region does not support image inspection and no file_types were specified. Image inspection is restricted to \'global\', \'us\', \'asia\', and \'europe\'.
    fileTypes :: (Core.Maybe [GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem]),
    -- | Limits the number of files to scan to this percentage of the input FileSet. Number of files scanned is rounded down. Must be between 0 and 100, inclusively. Both 0 and 100 means no limit. Defaults to 0.
    filesLimitPercent :: (Core.Maybe Core.Int32),
    -- | How to sample the data.
    sampleMethod :: (Core.Maybe GooglePrivacyDlpV2CloudStorageOptions_SampleMethod)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CloudStorageOptions' with the minimum fields required to make a request.
newGooglePrivacyDlpV2CloudStorageOptions ::
  GooglePrivacyDlpV2CloudStorageOptions
newGooglePrivacyDlpV2CloudStorageOptions =
  GooglePrivacyDlpV2CloudStorageOptions
    { bytesLimitPerFile =
        Core.Nothing,
      bytesLimitPerFilePercent = Core.Nothing,
      fileSet = Core.Nothing,
      fileTypes = Core.Nothing,
      filesLimitPercent = Core.Nothing,
      sampleMethod = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2CloudStorageOptions where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2CloudStorageOptions"
      ( \o ->
          GooglePrivacyDlpV2CloudStorageOptions
            Core.<$> (o Core..:? "bytesLimitPerFile" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "bytesLimitPerFilePercent")
            Core.<*> (o Core..:? "fileSet")
            Core.<*> (o Core..:? "fileTypes")
            Core.<*> (o Core..:? "filesLimitPercent")
            Core.<*> (o Core..:? "sampleMethod")
      )

instance Core.ToJSON GooglePrivacyDlpV2CloudStorageOptions where
  toJSON GooglePrivacyDlpV2CloudStorageOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("bytesLimitPerFile" Core..=)
              Core.. Core.AsText
              Core.<$> bytesLimitPerFile,
            ("bytesLimitPerFilePercent" Core..=)
              Core.<$> bytesLimitPerFilePercent,
            ("fileSet" Core..=) Core.<$> fileSet,
            ("fileTypes" Core..=) Core.<$> fileTypes,
            ("filesLimitPercent" Core..=) Core.<$> filesLimitPercent,
            ("sampleMethod" Core..=) Core.<$> sampleMethod
          ]
      )

-- | Message representing a single file or path in Cloud Storage.
--
-- /See:/ 'newGooglePrivacyDlpV2CloudStoragePath' smart constructor.
newtype GooglePrivacyDlpV2CloudStoragePath = GooglePrivacyDlpV2CloudStoragePath
  { -- | A URL representing a file or path (no wildcards) in Cloud Storage. Example: @gs:\/\/[BUCKET_NAME]\/dictionary.txt@
    path :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CloudStoragePath' with the minimum fields required to make a request.
newGooglePrivacyDlpV2CloudStoragePath ::
  GooglePrivacyDlpV2CloudStoragePath
newGooglePrivacyDlpV2CloudStoragePath =
  GooglePrivacyDlpV2CloudStoragePath {path = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2CloudStoragePath where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2CloudStoragePath"
      ( \o ->
          GooglePrivacyDlpV2CloudStoragePath Core.<$> (o Core..:? "path")
      )

instance Core.ToJSON GooglePrivacyDlpV2CloudStoragePath where
  toJSON GooglePrivacyDlpV2CloudStoragePath {..} =
    Core.object (Core.catMaybes [("path" Core..=) Core.<$> path])

-- | A pattern to match against one or more file stores. At least one pattern must be specified. Regular expressions use RE2 <https://github.com/google/re2/wiki/Syntax syntax>; a guide can be found under the google\/re2 repository on GitHub.
--
-- /See:/ 'newGooglePrivacyDlpV2CloudStorageRegex' smart constructor.
data GooglePrivacyDlpV2CloudStorageRegex = GooglePrivacyDlpV2CloudStorageRegex
  { -- | Optional. Regex to test the bucket name against. If empty, all buckets match. Example: \"marketing2021\" or \"(marketing)\\d{4}\" will both match the bucket gs:\/\/marketing2021
    bucketNameRegex :: (Core.Maybe Core.Text),
    -- | Optional. For organizations, if unset, will match all projects.
    projectIdRegex :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CloudStorageRegex' with the minimum fields required to make a request.
newGooglePrivacyDlpV2CloudStorageRegex ::
  GooglePrivacyDlpV2CloudStorageRegex
newGooglePrivacyDlpV2CloudStorageRegex =
  GooglePrivacyDlpV2CloudStorageRegex
    { bucketNameRegex =
        Core.Nothing,
      projectIdRegex = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2CloudStorageRegex where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2CloudStorageRegex"
      ( \o ->
          GooglePrivacyDlpV2CloudStorageRegex
            Core.<$> (o Core..:? "bucketNameRegex")
            Core.<*> (o Core..:? "projectIdRegex")
      )

instance Core.ToJSON GooglePrivacyDlpV2CloudStorageRegex where
  toJSON GooglePrivacyDlpV2CloudStorageRegex {..} =
    Core.object
      ( Core.catMaybes
          [ ("bucketNameRegex" Core..=) Core.<$> bucketNameRegex,
            ("projectIdRegex" Core..=) Core.<$> projectIdRegex
          ]
      )

-- | Message representing a set of files in a Cloud Storage bucket. Regular expressions are used to allow fine-grained control over which files in the bucket to include. Included files are those that match at least one item in @include_regex@ and do not match any items in @exclude_regex@. Note that a file that matches items from both lists will /not/ be included. For a match to occur, the entire file path (i.e., everything in the url after the bucket name) must match the regular expression. For example, given the input @{bucket_name: \"mybucket\", include_regex: [\"directory1\/.*\"], exclude_regex: [\"directory1\/excluded.*\"]}@: * @gs:\/\/mybucket\/directory1\/myfile@ will be included * @gs:\/\/mybucket\/directory1\/directory2\/myfile@ will be included (@.*@ matches across @\/@) * @gs:\/\/mybucket\/directory0\/directory1\/myfile@ will /not/ be included (the full path doesn\'t match any items in @include_regex@) * @gs:\/\/mybucket\/directory1\/excludedfile@ will /not/ be included (the path matches an item in
-- @exclude_regex@) If @include_regex@ is left empty, it will match all files by default (this is equivalent to setting @include_regex: [\".*\"]@). Some other common use cases: * @{bucket_name: \"mybucket\", exclude_regex: [\".*\\.pdf\"]}@ will include all files in @mybucket@ except for .pdf files * @{bucket_name: \"mybucket\", include_regex: [\"directory\/[^\/]+\"]}@ will include all files directly under @gs:\/\/mybucket\/directory\/@, without matching across @\/@
--
-- /See:/ 'newGooglePrivacyDlpV2CloudStorageRegexFileSet' smart constructor.
data GooglePrivacyDlpV2CloudStorageRegexFileSet = GooglePrivacyDlpV2CloudStorageRegexFileSet
  { -- | The name of a Cloud Storage bucket. Required.
    bucketName :: (Core.Maybe Core.Text),
    -- | A list of regular expressions matching file paths to exclude. All files in the bucket that match at least one of these regular expressions will be excluded from the scan. Regular expressions use RE2 <https://github.com/google/re2/wiki/Syntax syntax>; a guide can be found under the google\/re2 repository on GitHub.
    excludeRegex :: (Core.Maybe [Core.Text]),
    -- | A list of regular expressions matching file paths to include. All files in the bucket that match at least one of these regular expressions will be included in the set of files, except for those that also match an item in @exclude_regex@. Leaving this field empty will match all files by default (this is equivalent to including @.*@ in the list). Regular expressions use RE2 <https://github.com/google/re2/wiki/Syntax syntax>; a guide can be found under the google\/re2 repository on GitHub.
    includeRegex :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CloudStorageRegexFileSet' with the minimum fields required to make a request.
newGooglePrivacyDlpV2CloudStorageRegexFileSet ::
  GooglePrivacyDlpV2CloudStorageRegexFileSet
newGooglePrivacyDlpV2CloudStorageRegexFileSet =
  GooglePrivacyDlpV2CloudStorageRegexFileSet
    { bucketName =
        Core.Nothing,
      excludeRegex = Core.Nothing,
      includeRegex = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2CloudStorageRegexFileSet where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2CloudStorageRegexFileSet"
      ( \o ->
          GooglePrivacyDlpV2CloudStorageRegexFileSet
            Core.<$> (o Core..:? "bucketName")
            Core.<*> (o Core..:? "excludeRegex")
            Core.<*> (o Core..:? "includeRegex")
      )

instance Core.ToJSON GooglePrivacyDlpV2CloudStorageRegexFileSet where
  toJSON GooglePrivacyDlpV2CloudStorageRegexFileSet {..} =
    Core.object
      ( Core.catMaybes
          [ ("bucketName" Core..=) Core.<$> bucketName,
            ("excludeRegex" Core..=) Core.<$> excludeRegex,
            ("includeRegex" Core..=) Core.<$> includeRegex
          ]
      )

-- | Identifies a single Cloud Storage bucket.
--
-- /See:/ 'newGooglePrivacyDlpV2CloudStorageResourceReference' smart constructor.
data GooglePrivacyDlpV2CloudStorageResourceReference = GooglePrivacyDlpV2CloudStorageResourceReference
  { -- | Required. The bucket to scan.
    bucketName :: (Core.Maybe Core.Text),
    -- | Required. If within a project-level config, then this must match the config\'s project id.
    projectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CloudStorageResourceReference' with the minimum fields required to make a request.
newGooglePrivacyDlpV2CloudStorageResourceReference ::
  GooglePrivacyDlpV2CloudStorageResourceReference
newGooglePrivacyDlpV2CloudStorageResourceReference =
  GooglePrivacyDlpV2CloudStorageResourceReference
    { bucketName =
        Core.Nothing,
      projectId = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2CloudStorageResourceReference
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2CloudStorageResourceReference"
      ( \o ->
          GooglePrivacyDlpV2CloudStorageResourceReference
            Core.<$> (o Core..:? "bucketName")
            Core.<*> (o Core..:? "projectId")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2CloudStorageResourceReference
  where
  toJSON GooglePrivacyDlpV2CloudStorageResourceReference {..} =
    Core.object
      ( Core.catMaybes
          [ ("bucketName" Core..=) Core.<$> bucketName,
            ("projectId" Core..=) Core.<$> projectId
          ]
      )

-- | Represents a color in the RGB color space.
--
-- /See:/ 'newGooglePrivacyDlpV2Color' smart constructor.
data GooglePrivacyDlpV2Color = GooglePrivacyDlpV2Color
  { -- | The amount of blue in the color as a value in the interval [0, 1].
    blue :: (Core.Maybe Core.Double),
    -- | The amount of green in the color as a value in the interval [0, 1].
    green :: (Core.Maybe Core.Double),
    -- | The amount of red in the color as a value in the interval [0, 1].
    red :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Color' with the minimum fields required to make a request.
newGooglePrivacyDlpV2Color ::
  GooglePrivacyDlpV2Color
newGooglePrivacyDlpV2Color =
  GooglePrivacyDlpV2Color
    { blue = Core.Nothing,
      green = Core.Nothing,
      red = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2Color where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2Color"
      ( \o ->
          GooglePrivacyDlpV2Color
            Core.<$> (o Core..:? "blue")
            Core.<*> (o Core..:? "green")
            Core.<*> (o Core..:? "red")
      )

instance Core.ToJSON GooglePrivacyDlpV2Color where
  toJSON GooglePrivacyDlpV2Color {..} =
    Core.object
      ( Core.catMaybes
          [ ("blue" Core..=) Core.<$> blue,
            ("green" Core..=) Core.<$> green,
            ("red" Core..=) Core.<$> red
          ]
      )

-- | The profile for a scanned column within a table.
--
-- /See:/ 'newGooglePrivacyDlpV2ColumnDataProfile' smart constructor.
data GooglePrivacyDlpV2ColumnDataProfile = GooglePrivacyDlpV2ColumnDataProfile
  { -- | The name of the column.
    column :: (Core.Maybe Core.Text),
    -- | If it\'s been determined this column can be identified as a single type, this will be set. Otherwise the column either has unidentifiable content or mixed types.
    columnInfoType :: (Core.Maybe GooglePrivacyDlpV2InfoTypeSummary),
    -- | The data type of a given column.
    columnType :: (Core.Maybe GooglePrivacyDlpV2ColumnDataProfile_ColumnType),
    -- | The data risk level for this column.
    dataRiskLevel :: (Core.Maybe GooglePrivacyDlpV2DataRiskLevel),
    -- | The BigQuery dataset ID, if the resource profiled is a BigQuery table.
    datasetId :: (Core.Maybe Core.Text),
    -- | If supported, the location where the dataset\'s data is stored. See https:\/\/cloud.google.com\/bigquery\/docs\/locations for supported BigQuery locations.
    datasetLocation :: (Core.Maybe Core.Text),
    -- | The Google Cloud project ID that owns the profiled resource.
    datasetProjectId :: (Core.Maybe Core.Text),
    -- | Approximate percentage of entries being null in the column.
    estimatedNullPercentage ::
      ( Core.Maybe
          GooglePrivacyDlpV2ColumnDataProfile_EstimatedNullPercentage
      ),
    -- | Approximate uniqueness of the column.
    estimatedUniquenessScore ::
      ( Core.Maybe
          GooglePrivacyDlpV2ColumnDataProfile_EstimatedUniquenessScore
      ),
    -- | The likelihood that this column contains free-form text. A value close to 1 may indicate the column is likely to contain free-form or natural language text. Range in 0-1.
    freeTextScore :: (Core.Maybe Core.Double),
    -- | The name of the profile.
    name :: (Core.Maybe Core.Text),
    -- | Other types found within this column. List will be unordered.
    otherMatches :: (Core.Maybe [GooglePrivacyDlpV2OtherInfoTypeSummary]),
    -- | Indicates if a policy tag has been applied to the column.
    policyState :: (Core.Maybe GooglePrivacyDlpV2ColumnDataProfile_PolicyState),
    -- | The last time the profile was generated.
    profileLastGenerated :: (Core.Maybe Core.DateTime),
    -- | Success or error status from the most recent profile generation attempt. May be empty if the profile is still being generated.
    profileStatus :: (Core.Maybe GooglePrivacyDlpV2ProfileStatus),
    -- | The sensitivity of this column.
    sensitivityScore :: (Core.Maybe GooglePrivacyDlpV2SensitivityScore),
    -- | State of a profile.
    state :: (Core.Maybe GooglePrivacyDlpV2ColumnDataProfile_State),
    -- | The resource name of the table data profile.
    tableDataProfile :: (Core.Maybe Core.Text),
    -- | The resource name of the resource this column is within.
    tableFullResource :: (Core.Maybe Core.Text),
    -- | The table ID.
    tableId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ColumnDataProfile' with the minimum fields required to make a request.
newGooglePrivacyDlpV2ColumnDataProfile ::
  GooglePrivacyDlpV2ColumnDataProfile
newGooglePrivacyDlpV2ColumnDataProfile =
  GooglePrivacyDlpV2ColumnDataProfile
    { column = Core.Nothing,
      columnInfoType = Core.Nothing,
      columnType = Core.Nothing,
      dataRiskLevel = Core.Nothing,
      datasetId = Core.Nothing,
      datasetLocation = Core.Nothing,
      datasetProjectId = Core.Nothing,
      estimatedNullPercentage = Core.Nothing,
      estimatedUniquenessScore = Core.Nothing,
      freeTextScore = Core.Nothing,
      name = Core.Nothing,
      otherMatches = Core.Nothing,
      policyState = Core.Nothing,
      profileLastGenerated = Core.Nothing,
      profileStatus = Core.Nothing,
      sensitivityScore = Core.Nothing,
      state = Core.Nothing,
      tableDataProfile = Core.Nothing,
      tableFullResource = Core.Nothing,
      tableId = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2ColumnDataProfile where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ColumnDataProfile"
      ( \o ->
          GooglePrivacyDlpV2ColumnDataProfile
            Core.<$> (o Core..:? "column")
            Core.<*> (o Core..:? "columnInfoType")
            Core.<*> (o Core..:? "columnType")
            Core.<*> (o Core..:? "dataRiskLevel")
            Core.<*> (o Core..:? "datasetId")
            Core.<*> (o Core..:? "datasetLocation")
            Core.<*> (o Core..:? "datasetProjectId")
            Core.<*> (o Core..:? "estimatedNullPercentage")
            Core.<*> (o Core..:? "estimatedUniquenessScore")
            Core.<*> (o Core..:? "freeTextScore")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "otherMatches")
            Core.<*> (o Core..:? "policyState")
            Core.<*> (o Core..:? "profileLastGenerated")
            Core.<*> (o Core..:? "profileStatus")
            Core.<*> (o Core..:? "sensitivityScore")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "tableDataProfile")
            Core.<*> (o Core..:? "tableFullResource")
            Core.<*> (o Core..:? "tableId")
      )

instance Core.ToJSON GooglePrivacyDlpV2ColumnDataProfile where
  toJSON GooglePrivacyDlpV2ColumnDataProfile {..} =
    Core.object
      ( Core.catMaybes
          [ ("column" Core..=) Core.<$> column,
            ("columnInfoType" Core..=) Core.<$> columnInfoType,
            ("columnType" Core..=) Core.<$> columnType,
            ("dataRiskLevel" Core..=) Core.<$> dataRiskLevel,
            ("datasetId" Core..=) Core.<$> datasetId,
            ("datasetLocation" Core..=) Core.<$> datasetLocation,
            ("datasetProjectId" Core..=) Core.<$> datasetProjectId,
            ("estimatedNullPercentage" Core..=)
              Core.<$> estimatedNullPercentage,
            ("estimatedUniquenessScore" Core..=)
              Core.<$> estimatedUniquenessScore,
            ("freeTextScore" Core..=) Core.<$> freeTextScore,
            ("name" Core..=) Core.<$> name,
            ("otherMatches" Core..=) Core.<$> otherMatches,
            ("policyState" Core..=) Core.<$> policyState,
            ("profileLastGenerated" Core..=) Core.<$> profileLastGenerated,
            ("profileStatus" Core..=) Core.<$> profileStatus,
            ("sensitivityScore" Core..=) Core.<$> sensitivityScore,
            ("state" Core..=) Core.<$> state,
            ("tableDataProfile" Core..=) Core.<$> tableDataProfile,
            ("tableFullResource" Core..=) Core.<$> tableFullResource,
            ("tableId" Core..=) Core.<$> tableId
          ]
      )

-- | The field type of @value@ and @field@ do not need to match to be considered equal, but not all comparisons are possible. EQUAL/TO and NOT/EQUAL_TO attempt to compare even with incompatible types, but all other comparisons are invalid with incompatible types. A @value@ of type: - @string@ can be compared against all other types - @boolean@ can only be compared against other booleans - @integer@ can be compared against doubles or a string if the string value can be parsed as an integer. - @double@ can be compared against integers or a string if the string can be parsed as a double. - @Timestamp@ can be compared against strings in RFC 3339 date string format. - @TimeOfDay@ can be compared against timestamps and strings in the format of \'HH:mm:ss\'. If we fail to compare do to type mismatch, a warning will be given and the condition will evaluate to false.
--
-- /See:/ 'newGooglePrivacyDlpV2Condition' smart constructor.
data GooglePrivacyDlpV2Condition = GooglePrivacyDlpV2Condition
  { -- | Required. Field within the record this condition is evaluated against.
    field :: (Core.Maybe GooglePrivacyDlpV2FieldId),
    -- | Required. Operator used to compare the field or infoType to the value.
    operator :: (Core.Maybe GooglePrivacyDlpV2Condition_Operator),
    -- | Value to compare against. [Mandatory, except for @EXISTS@ tests.]
    value :: (Core.Maybe GooglePrivacyDlpV2Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Condition' with the minimum fields required to make a request.
newGooglePrivacyDlpV2Condition ::
  GooglePrivacyDlpV2Condition
newGooglePrivacyDlpV2Condition =
  GooglePrivacyDlpV2Condition
    { field = Core.Nothing,
      operator = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2Condition where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2Condition"
      ( \o ->
          GooglePrivacyDlpV2Condition
            Core.<$> (o Core..:? "field")
            Core.<*> (o Core..:? "operator")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON GooglePrivacyDlpV2Condition where
  toJSON GooglePrivacyDlpV2Condition {..} =
    Core.object
      ( Core.catMaybes
          [ ("field" Core..=) Core.<$> field,
            ("operator" Core..=) Core.<$> operator,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | A collection of conditions.
--
-- /See:/ 'newGooglePrivacyDlpV2Conditions' smart constructor.
newtype GooglePrivacyDlpV2Conditions = GooglePrivacyDlpV2Conditions
  { -- | A collection of conditions.
    conditions :: (Core.Maybe [GooglePrivacyDlpV2Condition])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Conditions' with the minimum fields required to make a request.
newGooglePrivacyDlpV2Conditions ::
  GooglePrivacyDlpV2Conditions
newGooglePrivacyDlpV2Conditions =
  GooglePrivacyDlpV2Conditions {conditions = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2Conditions where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2Conditions"
      ( \o ->
          GooglePrivacyDlpV2Conditions Core.<$> (o Core..:? "conditions")
      )

instance Core.ToJSON GooglePrivacyDlpV2Conditions where
  toJSON GooglePrivacyDlpV2Conditions {..} =
    Core.object
      (Core.catMaybes [("conditions" Core..=) Core.<$> conditions])

-- | A data connection to allow the DLP API to profile data in locations that require additional configuration.
--
-- /See:/ 'newGooglePrivacyDlpV2Connection' smart constructor.
data GooglePrivacyDlpV2Connection = GooglePrivacyDlpV2Connection
  { -- | Connect to a Cloud SQL instance.
    cloudSql :: (Core.Maybe GooglePrivacyDlpV2CloudSqlProperties),
    -- | Output only. Set if status == ERROR, to provide additional details. Will store the last 10 errors sorted with the most recent first.
    errors :: (Core.Maybe [GooglePrivacyDlpV2Error]),
    -- | Output only. Name of the connection: @projects\/{project}\/locations\/{location}\/connections\/{name}@.
    name :: (Core.Maybe Core.Text),
    -- | Required. The connection\'s state in its lifecycle.
    state :: (Core.Maybe GooglePrivacyDlpV2Connection_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Connection' with the minimum fields required to make a request.
newGooglePrivacyDlpV2Connection ::
  GooglePrivacyDlpV2Connection
newGooglePrivacyDlpV2Connection =
  GooglePrivacyDlpV2Connection
    { cloudSql = Core.Nothing,
      errors = Core.Nothing,
      name = Core.Nothing,
      state = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2Connection where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2Connection"
      ( \o ->
          GooglePrivacyDlpV2Connection
            Core.<$> (o Core..:? "cloudSql")
            Core.<*> (o Core..:? "errors")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON GooglePrivacyDlpV2Connection where
  toJSON GooglePrivacyDlpV2Connection {..} =
    Core.object
      ( Core.catMaybes
          [ ("cloudSql" Core..=) Core.<$> cloudSql,
            ("errors" Core..=) Core.<$> errors,
            ("name" Core..=) Core.<$> name,
            ("state" Core..=) Core.<$> state
          ]
      )

-- | Represents a container that may contain DLP findings. Examples of a container include a file, table, or database record.
--
-- /See:/ 'newGooglePrivacyDlpV2Container' smart constructor.
data GooglePrivacyDlpV2Container = GooglePrivacyDlpV2Container
  { -- | A string representation of the full container name. Examples: - BigQuery: \'Project:DataSetId.TableId\' - Cloud Storage: \'gs:\/\/Bucket\/folders\/filename.txt\'
    fullPath :: (Core.Maybe Core.Text),
    -- | Project where the finding was found. Can be different from the project that owns the finding.
    projectId :: (Core.Maybe Core.Text),
    -- | The rest of the path after the root. Examples: - For BigQuery table @project_id:dataset_id.table_id@, the relative path is @table_id@ - For Cloud Storage file @gs:\/\/bucket\/folder\/filename.txt@, the relative path is @folder\/filename.txt@
    relativePath :: (Core.Maybe Core.Text),
    -- | The root of the container. Examples: - For BigQuery table @project_id:dataset_id.table_id@, the root is @dataset_id@ - For Cloud Storage file @gs:\/\/bucket\/folder\/filename.txt@, the root is @gs:\/\/bucket@
    rootPath :: (Core.Maybe Core.Text),
    -- | Container type, for example BigQuery or Cloud Storage.
    type' :: (Core.Maybe Core.Text),
    -- | Findings container modification timestamp, if applicable. For Cloud Storage, this field contains the last file modification timestamp. For a BigQuery table, this field contains the last/modified/time property. For Datastore, this field isn\'t populated.
    updateTime :: (Core.Maybe Core.DateTime),
    -- | Findings container version, if available (\"generation\" for Cloud Storage).
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Container' with the minimum fields required to make a request.
newGooglePrivacyDlpV2Container ::
  GooglePrivacyDlpV2Container
newGooglePrivacyDlpV2Container =
  GooglePrivacyDlpV2Container
    { fullPath = Core.Nothing,
      projectId = Core.Nothing,
      relativePath = Core.Nothing,
      rootPath = Core.Nothing,
      type' = Core.Nothing,
      updateTime = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2Container where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2Container"
      ( \o ->
          GooglePrivacyDlpV2Container
            Core.<$> (o Core..:? "fullPath")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "relativePath")
            Core.<*> (o Core..:? "rootPath")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "updateTime")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON GooglePrivacyDlpV2Container where
  toJSON GooglePrivacyDlpV2Container {..} =
    Core.object
      ( Core.catMaybes
          [ ("fullPath" Core..=) Core.<$> fullPath,
            ("projectId" Core..=) Core.<$> projectId,
            ("relativePath" Core..=) Core.<$> relativePath,
            ("rootPath" Core..=) Core.<$> rootPath,
            ("type" Core..=) Core.<$> type',
            ("updateTime" Core..=) Core.<$> updateTime,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | Type of content to inspect.
--
-- /See:/ 'newGooglePrivacyDlpV2ContentItem' smart constructor.
data GooglePrivacyDlpV2ContentItem = GooglePrivacyDlpV2ContentItem
  { -- | Content data to inspect or redact. Replaces @type@ and @data@.
    byteItem :: (Core.Maybe GooglePrivacyDlpV2ByteContentItem),
    -- | Structured content for inspection. See https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/inspecting-text#inspecting/a/table to learn more.
    table :: (Core.Maybe GooglePrivacyDlpV2Table),
    -- | String data to inspect or redact.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ContentItem' with the minimum fields required to make a request.
newGooglePrivacyDlpV2ContentItem ::
  GooglePrivacyDlpV2ContentItem
newGooglePrivacyDlpV2ContentItem =
  GooglePrivacyDlpV2ContentItem
    { byteItem = Core.Nothing,
      table = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2ContentItem where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ContentItem"
      ( \o ->
          GooglePrivacyDlpV2ContentItem
            Core.<$> (o Core..:? "byteItem")
            Core.<*> (o Core..:? "table")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON GooglePrivacyDlpV2ContentItem where
  toJSON GooglePrivacyDlpV2ContentItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("byteItem" Core..=) Core.<$> byteItem,
            ("table" Core..=) Core.<$> table,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | Precise location of the finding within a document, record, image, or metadata container.
--
-- /See:/ 'newGooglePrivacyDlpV2ContentLocation' smart constructor.
data GooglePrivacyDlpV2ContentLocation = GooglePrivacyDlpV2ContentLocation
  { -- | Name of the container where the finding is located. The top level name is the source file name or table name. Names of some common storage containers are formatted as follows: * BigQuery tables: @{project_id}:{dataset_id}.{table_id}@ * Cloud Storage files: @gs:\/\/{bucket}\/{path}@ * Datastore namespace: {namespace} Nested names could be absent if the embedded object has no string identifier (for example, an image contained within a document).
    containerName :: (Core.Maybe Core.Text),
    -- | Finding container modification timestamp, if applicable. For Cloud Storage, this field contains the last file modification timestamp. For a BigQuery table, this field contains the last/modified/time property. For Datastore, this field isn\'t populated.
    containerTimestamp :: (Core.Maybe Core.DateTime),
    -- | Finding container version, if available (\"generation\" for Cloud Storage).
    containerVersion :: (Core.Maybe Core.Text),
    -- | Location data for document files.
    documentLocation :: (Core.Maybe GooglePrivacyDlpV2DocumentLocation),
    -- | Location within an image\'s pixels.
    imageLocation :: (Core.Maybe GooglePrivacyDlpV2ImageLocation),
    -- | Location within the metadata for inspected content.
    metadataLocation :: (Core.Maybe GooglePrivacyDlpV2MetadataLocation),
    -- | Location within a row or record of a database table.
    recordLocation :: (Core.Maybe GooglePrivacyDlpV2RecordLocation)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ContentLocation' with the minimum fields required to make a request.
newGooglePrivacyDlpV2ContentLocation ::
  GooglePrivacyDlpV2ContentLocation
newGooglePrivacyDlpV2ContentLocation =
  GooglePrivacyDlpV2ContentLocation
    { containerName = Core.Nothing,
      containerTimestamp = Core.Nothing,
      containerVersion = Core.Nothing,
      documentLocation = Core.Nothing,
      imageLocation = Core.Nothing,
      metadataLocation = Core.Nothing,
      recordLocation = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2ContentLocation where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ContentLocation"
      ( \o ->
          GooglePrivacyDlpV2ContentLocation
            Core.<$> (o Core..:? "containerName")
            Core.<*> (o Core..:? "containerTimestamp")
            Core.<*> (o Core..:? "containerVersion")
            Core.<*> (o Core..:? "documentLocation")
            Core.<*> (o Core..:? "imageLocation")
            Core.<*> (o Core..:? "metadataLocation")
            Core.<*> (o Core..:? "recordLocation")
      )

instance Core.ToJSON GooglePrivacyDlpV2ContentLocation where
  toJSON GooglePrivacyDlpV2ContentLocation {..} =
    Core.object
      ( Core.catMaybes
          [ ("containerName" Core..=) Core.<$> containerName,
            ("containerTimestamp" Core..=) Core.<$> containerTimestamp,
            ("containerVersion" Core..=) Core.<$> containerVersion,
            ("documentLocation" Core..=) Core.<$> documentLocation,
            ("imageLocation" Core..=) Core.<$> imageLocation,
            ("metadataLocation" Core..=) Core.<$> metadataLocation,
            ("recordLocation" Core..=) Core.<$> recordLocation
          ]
      )

-- | Request message for CreateConnection.
--
-- /See:/ 'newGooglePrivacyDlpV2CreateConnectionRequest' smart constructor.
newtype GooglePrivacyDlpV2CreateConnectionRequest = GooglePrivacyDlpV2CreateConnectionRequest
  { -- | Required. The connection resource.
    connection :: (Core.Maybe GooglePrivacyDlpV2Connection)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CreateConnectionRequest' with the minimum fields required to make a request.
newGooglePrivacyDlpV2CreateConnectionRequest ::
  GooglePrivacyDlpV2CreateConnectionRequest
newGooglePrivacyDlpV2CreateConnectionRequest =
  GooglePrivacyDlpV2CreateConnectionRequest
    { connection =
        Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2CreateConnectionRequest where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2CreateConnectionRequest"
      ( \o ->
          GooglePrivacyDlpV2CreateConnectionRequest
            Core.<$> (o Core..:? "connection")
      )

instance Core.ToJSON GooglePrivacyDlpV2CreateConnectionRequest where
  toJSON GooglePrivacyDlpV2CreateConnectionRequest {..} =
    Core.object
      (Core.catMaybes [("connection" Core..=) Core.<$> connection])

-- | Request message for CreateDeidentifyTemplate.
--
-- /See:/ 'newGooglePrivacyDlpV2CreateDeidentifyTemplateRequest' smart constructor.
data GooglePrivacyDlpV2CreateDeidentifyTemplateRequest = GooglePrivacyDlpV2CreateDeidentifyTemplateRequest
  { -- | Required. The DeidentifyTemplate to create.
    deidentifyTemplate :: (Core.Maybe GooglePrivacyDlpV2DeidentifyTemplate),
    -- | Deprecated. This field has no effect.
    locationId :: (Core.Maybe Core.Text),
    -- | The template id can contain uppercase and lowercase letters, numbers, and hyphens; that is, it must match the regular expression: @[a-zA-Z\\d-_]+@. The maximum length is 100 characters. Can be empty to allow the system to generate one.
    templateId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CreateDeidentifyTemplateRequest' with the minimum fields required to make a request.
newGooglePrivacyDlpV2CreateDeidentifyTemplateRequest ::
  GooglePrivacyDlpV2CreateDeidentifyTemplateRequest
newGooglePrivacyDlpV2CreateDeidentifyTemplateRequest =
  GooglePrivacyDlpV2CreateDeidentifyTemplateRequest
    { deidentifyTemplate =
        Core.Nothing,
      locationId = Core.Nothing,
      templateId = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2CreateDeidentifyTemplateRequest
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2CreateDeidentifyTemplateRequest"
      ( \o ->
          GooglePrivacyDlpV2CreateDeidentifyTemplateRequest
            Core.<$> (o Core..:? "deidentifyTemplate")
            Core.<*> (o Core..:? "locationId")
            Core.<*> (o Core..:? "templateId")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2CreateDeidentifyTemplateRequest
  where
  toJSON GooglePrivacyDlpV2CreateDeidentifyTemplateRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("deidentifyTemplate" Core..=) Core.<$> deidentifyTemplate,
            ("locationId" Core..=) Core.<$> locationId,
            ("templateId" Core..=) Core.<$> templateId
          ]
      )

-- | Request message for CreateDiscoveryConfig.
--
-- /See:/ 'newGooglePrivacyDlpV2CreateDiscoveryConfigRequest' smart constructor.
data GooglePrivacyDlpV2CreateDiscoveryConfigRequest = GooglePrivacyDlpV2CreateDiscoveryConfigRequest
  { -- | The config ID can contain uppercase and lowercase letters, numbers, and hyphens; that is, it must match the regular expression: @[a-zA-Z\\d-_]+@. The maximum length is 100 characters. Can be empty to allow the system to generate one.
    configId :: (Core.Maybe Core.Text),
    -- | Required. The DiscoveryConfig to create.
    discoveryConfig :: (Core.Maybe GooglePrivacyDlpV2DiscoveryConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CreateDiscoveryConfigRequest' with the minimum fields required to make a request.
newGooglePrivacyDlpV2CreateDiscoveryConfigRequest ::
  GooglePrivacyDlpV2CreateDiscoveryConfigRequest
newGooglePrivacyDlpV2CreateDiscoveryConfigRequest =
  GooglePrivacyDlpV2CreateDiscoveryConfigRequest
    { configId =
        Core.Nothing,
      discoveryConfig = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2CreateDiscoveryConfigRequest
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2CreateDiscoveryConfigRequest"
      ( \o ->
          GooglePrivacyDlpV2CreateDiscoveryConfigRequest
            Core.<$> (o Core..:? "configId")
            Core.<*> (o Core..:? "discoveryConfig")
      )

instance Core.ToJSON GooglePrivacyDlpV2CreateDiscoveryConfigRequest where
  toJSON GooglePrivacyDlpV2CreateDiscoveryConfigRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("configId" Core..=) Core.<$> configId,
            ("discoveryConfig" Core..=) Core.<$> discoveryConfig
          ]
      )

-- | Request message for CreateDlpJobRequest. Used to initiate long running jobs such as calculating risk metrics or inspecting Google Cloud Storage.
--
-- /See:/ 'newGooglePrivacyDlpV2CreateDlpJobRequest' smart constructor.
data GooglePrivacyDlpV2CreateDlpJobRequest = GooglePrivacyDlpV2CreateDlpJobRequest
  { -- | An inspection job scans a storage repository for InfoTypes.
    inspectJob :: (Core.Maybe GooglePrivacyDlpV2InspectJobConfig),
    -- | The job id can contain uppercase and lowercase letters, numbers, and hyphens; that is, it must match the regular expression: @[a-zA-Z\\d-_]+@. The maximum length is 100 characters. Can be empty to allow the system to generate one.
    jobId :: (Core.Maybe Core.Text),
    -- | Deprecated. This field has no effect.
    locationId :: (Core.Maybe Core.Text),
    -- | A risk analysis job calculates re-identification risk metrics for a BigQuery table.
    riskJob :: (Core.Maybe GooglePrivacyDlpV2RiskAnalysisJobConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CreateDlpJobRequest' with the minimum fields required to make a request.
newGooglePrivacyDlpV2CreateDlpJobRequest ::
  GooglePrivacyDlpV2CreateDlpJobRequest
newGooglePrivacyDlpV2CreateDlpJobRequest =
  GooglePrivacyDlpV2CreateDlpJobRequest
    { inspectJob = Core.Nothing,
      jobId = Core.Nothing,
      locationId = Core.Nothing,
      riskJob = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2CreateDlpJobRequest where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2CreateDlpJobRequest"
      ( \o ->
          GooglePrivacyDlpV2CreateDlpJobRequest
            Core.<$> (o Core..:? "inspectJob")
            Core.<*> (o Core..:? "jobId")
            Core.<*> (o Core..:? "locationId")
            Core.<*> (o Core..:? "riskJob")
      )

instance Core.ToJSON GooglePrivacyDlpV2CreateDlpJobRequest where
  toJSON GooglePrivacyDlpV2CreateDlpJobRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("inspectJob" Core..=) Core.<$> inspectJob,
            ("jobId" Core..=) Core.<$> jobId,
            ("locationId" Core..=) Core.<$> locationId,
            ("riskJob" Core..=) Core.<$> riskJob
          ]
      )

-- | Request message for CreateInspectTemplate.
--
-- /See:/ 'newGooglePrivacyDlpV2CreateInspectTemplateRequest' smart constructor.
data GooglePrivacyDlpV2CreateInspectTemplateRequest = GooglePrivacyDlpV2CreateInspectTemplateRequest
  { -- | Required. The InspectTemplate to create.
    inspectTemplate :: (Core.Maybe GooglePrivacyDlpV2InspectTemplate),
    -- | Deprecated. This field has no effect.
    locationId :: (Core.Maybe Core.Text),
    -- | The template id can contain uppercase and lowercase letters, numbers, and hyphens; that is, it must match the regular expression: @[a-zA-Z\\d-_]+@. The maximum length is 100 characters. Can be empty to allow the system to generate one.
    templateId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CreateInspectTemplateRequest' with the minimum fields required to make a request.
newGooglePrivacyDlpV2CreateInspectTemplateRequest ::
  GooglePrivacyDlpV2CreateInspectTemplateRequest
newGooglePrivacyDlpV2CreateInspectTemplateRequest =
  GooglePrivacyDlpV2CreateInspectTemplateRequest
    { inspectTemplate =
        Core.Nothing,
      locationId = Core.Nothing,
      templateId = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2CreateInspectTemplateRequest
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2CreateInspectTemplateRequest"
      ( \o ->
          GooglePrivacyDlpV2CreateInspectTemplateRequest
            Core.<$> (o Core..:? "inspectTemplate")
            Core.<*> (o Core..:? "locationId")
            Core.<*> (o Core..:? "templateId")
      )

instance Core.ToJSON GooglePrivacyDlpV2CreateInspectTemplateRequest where
  toJSON GooglePrivacyDlpV2CreateInspectTemplateRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("inspectTemplate" Core..=) Core.<$> inspectTemplate,
            ("locationId" Core..=) Core.<$> locationId,
            ("templateId" Core..=) Core.<$> templateId
          ]
      )

-- | Request message for CreateJobTrigger.
--
-- /See:/ 'newGooglePrivacyDlpV2CreateJobTriggerRequest' smart constructor.
data GooglePrivacyDlpV2CreateJobTriggerRequest = GooglePrivacyDlpV2CreateJobTriggerRequest
  { -- | Required. The JobTrigger to create.
    jobTrigger :: (Core.Maybe GooglePrivacyDlpV2JobTrigger),
    -- | Deprecated. This field has no effect.
    locationId :: (Core.Maybe Core.Text),
    -- | The trigger id can contain uppercase and lowercase letters, numbers, and hyphens; that is, it must match the regular expression: @[a-zA-Z\\d-_]+@. The maximum length is 100 characters. Can be empty to allow the system to generate one.
    triggerId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CreateJobTriggerRequest' with the minimum fields required to make a request.
newGooglePrivacyDlpV2CreateJobTriggerRequest ::
  GooglePrivacyDlpV2CreateJobTriggerRequest
newGooglePrivacyDlpV2CreateJobTriggerRequest =
  GooglePrivacyDlpV2CreateJobTriggerRequest
    { jobTrigger =
        Core.Nothing,
      locationId = Core.Nothing,
      triggerId = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2CreateJobTriggerRequest where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2CreateJobTriggerRequest"
      ( \o ->
          GooglePrivacyDlpV2CreateJobTriggerRequest
            Core.<$> (o Core..:? "jobTrigger")
            Core.<*> (o Core..:? "locationId")
            Core.<*> (o Core..:? "triggerId")
      )

instance Core.ToJSON GooglePrivacyDlpV2CreateJobTriggerRequest where
  toJSON GooglePrivacyDlpV2CreateJobTriggerRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("jobTrigger" Core..=) Core.<$> jobTrigger,
            ("locationId" Core..=) Core.<$> locationId,
            ("triggerId" Core..=) Core.<$> triggerId
          ]
      )

-- | Request message for CreateStoredInfoType.
--
-- /See:/ 'newGooglePrivacyDlpV2CreateStoredInfoTypeRequest' smart constructor.
data GooglePrivacyDlpV2CreateStoredInfoTypeRequest = GooglePrivacyDlpV2CreateStoredInfoTypeRequest
  { -- | Required. Configuration of the storedInfoType to create.
    config :: (Core.Maybe GooglePrivacyDlpV2StoredInfoTypeConfig),
    -- | Deprecated. This field has no effect.
    locationId :: (Core.Maybe Core.Text),
    -- | The storedInfoType ID can contain uppercase and lowercase letters, numbers, and hyphens; that is, it must match the regular expression: @[a-zA-Z\\d-_]+@. The maximum length is 100 characters. Can be empty to allow the system to generate one.
    storedInfoTypeId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CreateStoredInfoTypeRequest' with the minimum fields required to make a request.
newGooglePrivacyDlpV2CreateStoredInfoTypeRequest ::
  GooglePrivacyDlpV2CreateStoredInfoTypeRequest
newGooglePrivacyDlpV2CreateStoredInfoTypeRequest =
  GooglePrivacyDlpV2CreateStoredInfoTypeRequest
    { config =
        Core.Nothing,
      locationId = Core.Nothing,
      storedInfoTypeId = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2CreateStoredInfoTypeRequest
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2CreateStoredInfoTypeRequest"
      ( \o ->
          GooglePrivacyDlpV2CreateStoredInfoTypeRequest
            Core.<$> (o Core..:? "config")
            Core.<*> (o Core..:? "locationId")
            Core.<*> (o Core..:? "storedInfoTypeId")
      )

instance Core.ToJSON GooglePrivacyDlpV2CreateStoredInfoTypeRequest where
  toJSON GooglePrivacyDlpV2CreateStoredInfoTypeRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("config" Core..=) Core.<$> config,
            ("locationId" Core..=) Core.<$> locationId,
            ("storedInfoTypeId" Core..=) Core.<$> storedInfoTypeId
          ]
      )

-- | Pseudonymization method that generates deterministic encryption for the given input. Outputs a base64 encoded representation of the encrypted output. Uses AES-SIV based on the RFC https:\/\/tools.ietf.org\/html\/rfc5297.
--
-- /See:/ 'newGooglePrivacyDlpV2CryptoDeterministicConfig' smart constructor.
data GooglePrivacyDlpV2CryptoDeterministicConfig = GooglePrivacyDlpV2CryptoDeterministicConfig
  { -- | A context may be used for higher security and maintaining referential integrity such that the same identifier in two different contexts will be given a distinct surrogate. The context is appended to plaintext value being encrypted. On decryption the provided context is validated against the value used during encryption. If a context was provided during encryption, same context must be provided during decryption as well. If the context is not set, plaintext would be used as is for encryption. If the context is set but: 1. there is no record present when transforming a given value or 2. the field is not present when transforming a given value, plaintext would be used as is for encryption. Note that case (1) is expected when an @InfoTypeTransformation@ is applied to both structured and unstructured @ContentItem@s.
    context :: (Core.Maybe GooglePrivacyDlpV2FieldId),
    -- | The key used by the encryption function. For deterministic encryption using AES-SIV, the provided key is internally expanded to 64 bytes prior to use.
    cryptoKey :: (Core.Maybe GooglePrivacyDlpV2CryptoKey),
    -- | The custom info type to annotate the surrogate with. This annotation will be applied to the surrogate by prefixing it with the name of the custom info type followed by the number of characters comprising the surrogate. The following scheme defines the format: {info type name}({surrogate character count}):{surrogate} For example, if the name of custom info type is \'MY/TOKEN/INFO/TYPE\' and the surrogate is \'abc\', the full replacement value will be: \'MY/TOKEN/INFO/TYPE(3):abc\' This annotation identifies the surrogate when inspecting content using the custom info type \'Surrogate\'. This facilitates reversal of the surrogate when it occurs in free text. Note: For record transformations where the entire cell in a table is being transformed, surrogates are not mandatory. Surrogates are used to denote the location of the token and are necessary for re-identification in free form text. In order for inspection to work properly, the name of this info type must not occur naturally anywhere in your data; otherwise,
    -- inspection may either - reverse a surrogate that does not correspond to an actual identifier - be unable to parse the surrogate and result in an error Therefore, choose your custom info type name carefully after considering what your data looks like. One way to select a name that has a high chance of yielding reliable detection is to include one or more unicode characters that are highly improbable to exist in your data. For example, assuming your data is entered from a regular ASCII keyboard, the symbol with the hex code point 29DD might be used like so: ⧝MY/TOKEN/TYPE.
    surrogateInfoType :: (Core.Maybe GooglePrivacyDlpV2InfoType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CryptoDeterministicConfig' with the minimum fields required to make a request.
newGooglePrivacyDlpV2CryptoDeterministicConfig ::
  GooglePrivacyDlpV2CryptoDeterministicConfig
newGooglePrivacyDlpV2CryptoDeterministicConfig =
  GooglePrivacyDlpV2CryptoDeterministicConfig
    { context =
        Core.Nothing,
      cryptoKey = Core.Nothing,
      surrogateInfoType = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2CryptoDeterministicConfig where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2CryptoDeterministicConfig"
      ( \o ->
          GooglePrivacyDlpV2CryptoDeterministicConfig
            Core.<$> (o Core..:? "context")
            Core.<*> (o Core..:? "cryptoKey")
            Core.<*> (o Core..:? "surrogateInfoType")
      )

instance Core.ToJSON GooglePrivacyDlpV2CryptoDeterministicConfig where
  toJSON GooglePrivacyDlpV2CryptoDeterministicConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("context" Core..=) Core.<$> context,
            ("cryptoKey" Core..=) Core.<$> cryptoKey,
            ("surrogateInfoType" Core..=) Core.<$> surrogateInfoType
          ]
      )

-- | Pseudonymization method that generates surrogates via cryptographic hashing. Uses SHA-256. The key size must be either 32 or 64 bytes. Outputs a base64 encoded representation of the hashed output (for example, L7k0BHmF1ha5U3NfGykjro4xWi1MPVQPjhMAZbSV9mM=). Currently, only string and integer values can be hashed. See https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/pseudonymization to learn more.
--
-- /See:/ 'newGooglePrivacyDlpV2CryptoHashConfig' smart constructor.
newtype GooglePrivacyDlpV2CryptoHashConfig = GooglePrivacyDlpV2CryptoHashConfig
  { -- | The key used by the hash function.
    cryptoKey :: (Core.Maybe GooglePrivacyDlpV2CryptoKey)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CryptoHashConfig' with the minimum fields required to make a request.
newGooglePrivacyDlpV2CryptoHashConfig ::
  GooglePrivacyDlpV2CryptoHashConfig
newGooglePrivacyDlpV2CryptoHashConfig =
  GooglePrivacyDlpV2CryptoHashConfig {cryptoKey = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2CryptoHashConfig where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2CryptoHashConfig"
      ( \o ->
          GooglePrivacyDlpV2CryptoHashConfig
            Core.<$> (o Core..:? "cryptoKey")
      )

instance Core.ToJSON GooglePrivacyDlpV2CryptoHashConfig where
  toJSON GooglePrivacyDlpV2CryptoHashConfig {..} =
    Core.object
      (Core.catMaybes [("cryptoKey" Core..=) Core.<$> cryptoKey])

-- | This is a data encryption key (DEK) (as opposed to a key encryption key (KEK) stored by Cloud Key Management Service (Cloud KMS). When using Cloud KMS to wrap or unwrap a DEK, be sure to set an appropriate IAM policy on the KEK to ensure an attacker cannot unwrap the DEK.
--
-- /See:/ 'newGooglePrivacyDlpV2CryptoKey' smart constructor.
data GooglePrivacyDlpV2CryptoKey = GooglePrivacyDlpV2CryptoKey
  { -- | Key wrapped using Cloud KMS
    kmsWrapped :: (Core.Maybe GooglePrivacyDlpV2KmsWrappedCryptoKey),
    -- | Transient crypto key
    transient :: (Core.Maybe GooglePrivacyDlpV2TransientCryptoKey),
    -- | Unwrapped crypto key
    unwrapped :: (Core.Maybe GooglePrivacyDlpV2UnwrappedCryptoKey)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CryptoKey' with the minimum fields required to make a request.
newGooglePrivacyDlpV2CryptoKey ::
  GooglePrivacyDlpV2CryptoKey
newGooglePrivacyDlpV2CryptoKey =
  GooglePrivacyDlpV2CryptoKey
    { kmsWrapped = Core.Nothing,
      transient = Core.Nothing,
      unwrapped = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2CryptoKey where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2CryptoKey"
      ( \o ->
          GooglePrivacyDlpV2CryptoKey
            Core.<$> (o Core..:? "kmsWrapped")
            Core.<*> (o Core..:? "transient")
            Core.<*> (o Core..:? "unwrapped")
      )

instance Core.ToJSON GooglePrivacyDlpV2CryptoKey where
  toJSON GooglePrivacyDlpV2CryptoKey {..} =
    Core.object
      ( Core.catMaybes
          [ ("kmsWrapped" Core..=) Core.<$> kmsWrapped,
            ("transient" Core..=) Core.<$> transient,
            ("unwrapped" Core..=) Core.<$> unwrapped
          ]
      )

-- | Replaces an identifier with a surrogate using Format Preserving Encryption (FPE) with the FFX mode of operation; however when used in the @ReidentifyContent@ API method, it serves the opposite function by reversing the surrogate back into the original identifier. The identifier must be encoded as ASCII. For a given crypto key and context, the same identifier will be replaced with the same surrogate. Identifiers must be at least two characters long. In the case that the identifier is the empty string, it will be skipped. See https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/pseudonymization to learn more. Note: We recommend using CryptoDeterministicConfig for all use cases which do not require preserving the input alphabet space and size, plus warrant referential integrity. FPE incurs significant latency costs.
--
-- /See:/ 'newGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig' smart constructor.
data GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig = GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig
  { -- | Common alphabets.
    commonAlphabet ::
      ( Core.Maybe
          GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet
      ),
    -- | The \'tweak\', a context may be used for higher security since the same identifier in two different contexts won\'t be given the same surrogate. If the context is not set, a default tweak will be used. If the context is set but: 1. there is no record present when transforming a given value or 1. the field is not present when transforming a given value, a default tweak will be used. Note that case (1) is expected when an @InfoTypeTransformation@ is applied to both structured and unstructured @ContentItem@s. Currently, the referenced field may be of value type integer or string. The tweak is constructed as a sequence of bytes in big endian byte order such that: - a 64 bit integer is encoded followed by a single byte of value 1 - a string is encoded in UTF-8 format followed by a single byte of value 2
    context :: (Core.Maybe GooglePrivacyDlpV2FieldId),
    -- | Required. The key used by the encryption algorithm.
    cryptoKey :: (Core.Maybe GooglePrivacyDlpV2CryptoKey),
    -- | This is supported by mapping these to the alphanumeric characters that the FFX mode natively supports. This happens before\/after encryption\/decryption. Each character listed must appear only once. Number of characters must be in the range [2, 95]. This must be encoded as ASCII. The order of characters does not matter. The full list of allowed characters is: @0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz~\`!\@#$%^&*()_-+={[}]|\\:;\"\'\<,>.?\/@
    customAlphabet :: (Core.Maybe Core.Text),
    -- | The native way to select the alphabet. Must be in the range [2, 95].
    radix :: (Core.Maybe Core.Int32),
    -- | The custom infoType to annotate the surrogate with. This annotation will be applied to the surrogate by prefixing it with the name of the custom infoType followed by the number of characters comprising the surrogate. The following scheme defines the format: info/type/name(surrogate/character/count):surrogate For example, if the name of custom infoType is \'MY/TOKEN/INFO/TYPE\' and the surrogate is \'abc\', the full replacement value will be: \'MY/TOKEN/INFO/TYPE(3):abc\' This annotation identifies the surrogate when inspecting content using the custom infoType <https://cloud.google.com/sensitive-data-protection/docs/reference/rest/v2/InspectConfig#surrogatetype SurrogateType>. This facilitates reversal of the surrogate when it occurs in free text. In order for inspection to work properly, the name of this infoType must not occur naturally anywhere in your data; otherwise, inspection may find a surrogate that does not correspond to an actual identifier. Therefore, choose your custom infoType name carefully
    -- after considering what your data looks like. One way to select a name that has a high chance of yielding reliable detection is to include one or more unicode characters that are highly improbable to exist in your data. For example, assuming your data is entered from a regular ASCII keyboard, the symbol with the hex code point 29DD might be used like so: ⧝MY/TOKEN/TYPE
    surrogateInfoType :: (Core.Maybe GooglePrivacyDlpV2InfoType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig' with the minimum fields required to make a request.
newGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig ::
  GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig
newGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig =
  GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig
    { commonAlphabet =
        Core.Nothing,
      context = Core.Nothing,
      cryptoKey = Core.Nothing,
      customAlphabet = Core.Nothing,
      radix = Core.Nothing,
      surrogateInfoType = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig"
      ( \o ->
          GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig
            Core.<$> (o Core..:? "commonAlphabet")
            Core.<*> (o Core..:? "context")
            Core.<*> (o Core..:? "cryptoKey")
            Core.<*> (o Core..:? "customAlphabet")
            Core.<*> (o Core..:? "radix")
            Core.<*> (o Core..:? "surrogateInfoType")
      )

instance Core.ToJSON GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig where
  toJSON GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("commonAlphabet" Core..=) Core.<$> commonAlphabet,
            ("context" Core..=) Core.<$> context,
            ("cryptoKey" Core..=) Core.<$> cryptoKey,
            ("customAlphabet" Core..=) Core.<$> customAlphabet,
            ("radix" Core..=) Core.<$> radix,
            ("surrogateInfoType" Core..=) Core.<$> surrogateInfoType
          ]
      )

-- | Custom information type provided by the user. Used to find domain-specific sensitive information configurable to the data in question.
--
-- /See:/ 'newGooglePrivacyDlpV2CustomInfoType' smart constructor.
data GooglePrivacyDlpV2CustomInfoType = GooglePrivacyDlpV2CustomInfoType
  { -- | Set of detection rules to apply to all findings of this CustomInfoType. Rules are applied in order that they are specified. Not supported for the @surrogate_type@ CustomInfoType.
    detectionRules :: (Core.Maybe [GooglePrivacyDlpV2DetectionRule]),
    -- | A list of phrases to detect as a CustomInfoType.
    dictionary :: (Core.Maybe GooglePrivacyDlpV2Dictionary),
    -- | If set to EXCLUSION/TYPE/EXCLUDE this infoType will not cause a finding to be returned. It still can be used for rules matching.
    exclusionType :: (Core.Maybe GooglePrivacyDlpV2CustomInfoType_ExclusionType),
    -- | CustomInfoType can either be a new infoType, or an extension of built-in infoType, when the name matches one of existing infoTypes and that infoType is specified in @InspectContent.info_types@ field. Specifying the latter adds findings to the one detected by the system. If built-in info type is not specified in @InspectContent.info_types@ list then the name is treated as a custom info type.
    infoType :: (Core.Maybe GooglePrivacyDlpV2InfoType),
    -- | Likelihood to return for this CustomInfoType. This base value can be altered by a detection rule if the finding meets the criteria specified by the rule. Defaults to @VERY_LIKELY@ if not specified.
    likelihood :: (Core.Maybe GooglePrivacyDlpV2CustomInfoType_Likelihood),
    -- | Regular expression based CustomInfoType.
    regex :: (Core.Maybe GooglePrivacyDlpV2Regex),
    -- | Sensitivity for this CustomInfoType. If this CustomInfoType extends an existing InfoType, the sensitivity here will take precedence over that of the original InfoType. If unset for a CustomInfoType, it will default to HIGH. This only applies to data profiling.
    sensitivityScore :: (Core.Maybe GooglePrivacyDlpV2SensitivityScore),
    -- | Load an existing @StoredInfoType@ resource for use in @InspectDataSource@. Not currently supported in @InspectContent@.
    storedType :: (Core.Maybe GooglePrivacyDlpV2StoredType),
    -- | Message for detecting output from deidentification transformations that support reversing.
    surrogateType :: (Core.Maybe GooglePrivacyDlpV2SurrogateType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CustomInfoType' with the minimum fields required to make a request.
newGooglePrivacyDlpV2CustomInfoType ::
  GooglePrivacyDlpV2CustomInfoType
newGooglePrivacyDlpV2CustomInfoType =
  GooglePrivacyDlpV2CustomInfoType
    { detectionRules = Core.Nothing,
      dictionary = Core.Nothing,
      exclusionType = Core.Nothing,
      infoType = Core.Nothing,
      likelihood = Core.Nothing,
      regex = Core.Nothing,
      sensitivityScore = Core.Nothing,
      storedType = Core.Nothing,
      surrogateType = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2CustomInfoType where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2CustomInfoType"
      ( \o ->
          GooglePrivacyDlpV2CustomInfoType
            Core.<$> (o Core..:? "detectionRules")
            Core.<*> (o Core..:? "dictionary")
            Core.<*> (o Core..:? "exclusionType")
            Core.<*> (o Core..:? "infoType")
            Core.<*> (o Core..:? "likelihood")
            Core.<*> (o Core..:? "regex")
            Core.<*> (o Core..:? "sensitivityScore")
            Core.<*> (o Core..:? "storedType")
            Core.<*> (o Core..:? "surrogateType")
      )

instance Core.ToJSON GooglePrivacyDlpV2CustomInfoType where
  toJSON GooglePrivacyDlpV2CustomInfoType {..} =
    Core.object
      ( Core.catMaybes
          [ ("detectionRules" Core..=) Core.<$> detectionRules,
            ("dictionary" Core..=) Core.<$> dictionary,
            ("exclusionType" Core..=) Core.<$> exclusionType,
            ("infoType" Core..=) Core.<$> infoType,
            ("likelihood" Core..=) Core.<$> likelihood,
            ("regex" Core..=) Core.<$> regex,
            ("sensitivityScore" Core..=) Core.<$> sensitivityScore,
            ("storedType" Core..=) Core.<$> storedType,
            ("surrogateType" Core..=) Core.<$> surrogateType
          ]
      )

-- | A task to execute when a data profile has been generated.
--
-- /See:/ 'newGooglePrivacyDlpV2DataProfileAction' smart constructor.
data GooglePrivacyDlpV2DataProfileAction = GooglePrivacyDlpV2DataProfileAction
  { -- | Export data profiles into a provided location.
    exportData :: (Core.Maybe GooglePrivacyDlpV2Export),
    -- | Publish a message into the Pub\/Sub topic.
    pubSubNotification :: (Core.Maybe GooglePrivacyDlpV2PubSubNotification),
    -- | Publishes generated data profiles to Google Security Operations. For more information, see <https://cloud.google.com/chronicle/docs/detection/usecase-dlp-high-risk-user-download Use Sensitive Data Protection data in context-aware analytics>.
    publishToChronicle :: (Core.Maybe GooglePrivacyDlpV2PublishToChronicle),
    -- | Publishes findings to Security Command Center for each data profile.
    publishToScc :: (Core.Maybe GooglePrivacyDlpV2PublishToSecurityCommandCenter),
    -- | Tags the profiled resources with the specified tag values.
    tagResources :: (Core.Maybe GooglePrivacyDlpV2TagResources)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DataProfileAction' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DataProfileAction ::
  GooglePrivacyDlpV2DataProfileAction
newGooglePrivacyDlpV2DataProfileAction =
  GooglePrivacyDlpV2DataProfileAction
    { exportData = Core.Nothing,
      pubSubNotification = Core.Nothing,
      publishToChronicle = Core.Nothing,
      publishToScc = Core.Nothing,
      tagResources = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2DataProfileAction where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DataProfileAction"
      ( \o ->
          GooglePrivacyDlpV2DataProfileAction
            Core.<$> (o Core..:? "exportData")
            Core.<*> (o Core..:? "pubSubNotification")
            Core.<*> (o Core..:? "publishToChronicle")
            Core.<*> (o Core..:? "publishToScc")
            Core.<*> (o Core..:? "tagResources")
      )

instance Core.ToJSON GooglePrivacyDlpV2DataProfileAction where
  toJSON GooglePrivacyDlpV2DataProfileAction {..} =
    Core.object
      ( Core.catMaybes
          [ ("exportData" Core..=) Core.<$> exportData,
            ("pubSubNotification" Core..=) Core.<$> pubSubNotification,
            ("publishToChronicle" Core..=) Core.<$> publishToChronicle,
            ("publishToScc" Core..=) Core.<$> publishToScc,
            ("tagResources" Core..=) Core.<$> tagResources
          ]
      )

-- | The schema of data to be saved to the BigQuery table when the @DataProfileAction@ is enabled.
--
-- /See:/ 'newGooglePrivacyDlpV2DataProfileBigQueryRowSchema' smart constructor.
data GooglePrivacyDlpV2DataProfileBigQueryRowSchema = GooglePrivacyDlpV2DataProfileBigQueryRowSchema
  { -- | Column data profile column
    columnProfile :: (Core.Maybe GooglePrivacyDlpV2ColumnDataProfile),
    -- | File store data profile column.
    fileStoreProfile :: (Core.Maybe GooglePrivacyDlpV2FileStoreDataProfile),
    -- | Table data profile column
    tableProfile :: (Core.Maybe GooglePrivacyDlpV2TableDataProfile)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DataProfileBigQueryRowSchema' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DataProfileBigQueryRowSchema ::
  GooglePrivacyDlpV2DataProfileBigQueryRowSchema
newGooglePrivacyDlpV2DataProfileBigQueryRowSchema =
  GooglePrivacyDlpV2DataProfileBigQueryRowSchema
    { columnProfile =
        Core.Nothing,
      fileStoreProfile = Core.Nothing,
      tableProfile = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2DataProfileBigQueryRowSchema
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DataProfileBigQueryRowSchema"
      ( \o ->
          GooglePrivacyDlpV2DataProfileBigQueryRowSchema
            Core.<$> (o Core..:? "columnProfile")
            Core.<*> (o Core..:? "fileStoreProfile")
            Core.<*> (o Core..:? "tableProfile")
      )

instance Core.ToJSON GooglePrivacyDlpV2DataProfileBigQueryRowSchema where
  toJSON GooglePrivacyDlpV2DataProfileBigQueryRowSchema {..} =
    Core.object
      ( Core.catMaybes
          [ ("columnProfile" Core..=) Core.<$> columnProfile,
            ("fileStoreProfile" Core..=) Core.<$> fileStoreProfile,
            ("tableProfile" Core..=) Core.<$> tableProfile
          ]
      )

-- | Snapshot of the configurations used to generate the profile.
--
-- /See:/ 'newGooglePrivacyDlpV2DataProfileConfigSnapshot' smart constructor.
data GooglePrivacyDlpV2DataProfileConfigSnapshot = GooglePrivacyDlpV2DataProfileConfigSnapshot
  { -- | A copy of the configuration used to generate this profile. This is deprecated, and the DiscoveryConfig field is preferred moving forward. DataProfileJobConfig will still be written here for Discovery in BigQuery for backwards compatibility, but will not be updated with new fields, while DiscoveryConfig will.
    dataProfileJob :: (Core.Maybe GooglePrivacyDlpV2DataProfileJobConfig),
    -- | A copy of the configuration used to generate this profile.
    discoveryConfig :: (Core.Maybe GooglePrivacyDlpV2DiscoveryConfig),
    -- | A copy of the inspection config used to generate this profile. This is a copy of the inspect_template specified in @DataProfileJobConfig@.
    inspectConfig :: (Core.Maybe GooglePrivacyDlpV2InspectConfig),
    -- | Timestamp when the template was modified
    inspectTemplateModifiedTime :: (Core.Maybe Core.DateTime),
    -- | Name of the inspection template used to generate this profile
    inspectTemplateName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DataProfileConfigSnapshot' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DataProfileConfigSnapshot ::
  GooglePrivacyDlpV2DataProfileConfigSnapshot
newGooglePrivacyDlpV2DataProfileConfigSnapshot =
  GooglePrivacyDlpV2DataProfileConfigSnapshot
    { dataProfileJob =
        Core.Nothing,
      discoveryConfig = Core.Nothing,
      inspectConfig = Core.Nothing,
      inspectTemplateModifiedTime = Core.Nothing,
      inspectTemplateName = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2DataProfileConfigSnapshot where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DataProfileConfigSnapshot"
      ( \o ->
          GooglePrivacyDlpV2DataProfileConfigSnapshot
            Core.<$> (o Core..:? "dataProfileJob")
            Core.<*> (o Core..:? "discoveryConfig")
            Core.<*> (o Core..:? "inspectConfig")
            Core.<*> (o Core..:? "inspectTemplateModifiedTime")
            Core.<*> (o Core..:? "inspectTemplateName")
      )

instance Core.ToJSON GooglePrivacyDlpV2DataProfileConfigSnapshot where
  toJSON GooglePrivacyDlpV2DataProfileConfigSnapshot {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataProfileJob" Core..=) Core.<$> dataProfileJob,
            ("discoveryConfig" Core..=) Core.<$> discoveryConfig,
            ("inspectConfig" Core..=) Core.<$> inspectConfig,
            ("inspectTemplateModifiedTime" Core..=)
              Core.<$> inspectTemplateModifiedTime,
            ("inspectTemplateName" Core..=) Core.<$> inspectTemplateName
          ]
      )

-- | Details about a piece of potentially sensitive information that was detected when the data resource was profiled.
--
-- /See:/ 'newGooglePrivacyDlpV2DataProfileFinding' smart constructor.
data GooglePrivacyDlpV2DataProfileFinding = GooglePrivacyDlpV2DataProfileFinding
  { -- | Resource name of the data profile associated with the finding.
    dataProfileResourceName :: (Core.Maybe Core.Text),
    -- | A unique identifier for the finding.
    findingId :: (Core.Maybe Core.Text),
    -- | The <https://cloud.google.com/sensitive-data-protection/docs/infotypes-reference type of content> that might have been found.
    infotype :: (Core.Maybe GooglePrivacyDlpV2InfoType),
    -- | Where the content was found.
    location :: (Core.Maybe GooglePrivacyDlpV2DataProfileFindingLocation),
    -- | The content that was found. Even if the content is not textual, it may be converted to a textual representation here. If the finding exceeds 4096 bytes in length, the quote may be omitted.
    quote :: (Core.Maybe Core.Text),
    -- | Contains data parsed from quotes. Currently supported infoTypes: DATE, DATE/OF/BIRTH, and TIME.
    quoteInfo :: (Core.Maybe GooglePrivacyDlpV2QuoteInfo),
    -- | How broadly a resource has been shared.
    resourceVisibility ::
      ( Core.Maybe
          GooglePrivacyDlpV2DataProfileFinding_ResourceVisibility
      ),
    -- | Timestamp when the finding was detected.
    timestamp :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DataProfileFinding' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DataProfileFinding ::
  GooglePrivacyDlpV2DataProfileFinding
newGooglePrivacyDlpV2DataProfileFinding =
  GooglePrivacyDlpV2DataProfileFinding
    { dataProfileResourceName =
        Core.Nothing,
      findingId = Core.Nothing,
      infotype = Core.Nothing,
      location = Core.Nothing,
      quote = Core.Nothing,
      quoteInfo = Core.Nothing,
      resourceVisibility = Core.Nothing,
      timestamp = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2DataProfileFinding where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DataProfileFinding"
      ( \o ->
          GooglePrivacyDlpV2DataProfileFinding
            Core.<$> (o Core..:? "dataProfileResourceName")
            Core.<*> (o Core..:? "findingId")
            Core.<*> (o Core..:? "infotype")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "quote")
            Core.<*> (o Core..:? "quoteInfo")
            Core.<*> (o Core..:? "resourceVisibility")
            Core.<*> (o Core..:? "timestamp")
      )

instance Core.ToJSON GooglePrivacyDlpV2DataProfileFinding where
  toJSON GooglePrivacyDlpV2DataProfileFinding {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataProfileResourceName" Core..=)
              Core.<$> dataProfileResourceName,
            ("findingId" Core..=) Core.<$> findingId,
            ("infotype" Core..=) Core.<$> infotype,
            ("location" Core..=) Core.<$> location,
            ("quote" Core..=) Core.<$> quote,
            ("quoteInfo" Core..=) Core.<$> quoteInfo,
            ("resourceVisibility" Core..=) Core.<$> resourceVisibility,
            ("timestamp" Core..=) Core.<$> timestamp
          ]
      )

-- | Location of a data profile finding within a resource.
--
-- /See:/ 'newGooglePrivacyDlpV2DataProfileFindingLocation' smart constructor.
data GooglePrivacyDlpV2DataProfileFindingLocation = GooglePrivacyDlpV2DataProfileFindingLocation
  { -- | Name of the container where the finding is located. The top-level name is the source file name or table name. Names of some common storage containers are formatted as follows: * BigQuery tables: @{project_id}:{dataset_id}.{table_id}@ * Cloud Storage files: @gs:\/\/{bucket}\/{path}@
    containerName :: (Core.Maybe Core.Text),
    -- | Location of a finding within a resource that produces a table data profile.
    dataProfileFindingRecordLocation :: (Core.Maybe GooglePrivacyDlpV2DataProfileFindingRecordLocation)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DataProfileFindingLocation' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DataProfileFindingLocation ::
  GooglePrivacyDlpV2DataProfileFindingLocation
newGooglePrivacyDlpV2DataProfileFindingLocation =
  GooglePrivacyDlpV2DataProfileFindingLocation
    { containerName =
        Core.Nothing,
      dataProfileFindingRecordLocation = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2DataProfileFindingLocation where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DataProfileFindingLocation"
      ( \o ->
          GooglePrivacyDlpV2DataProfileFindingLocation
            Core.<$> (o Core..:? "containerName")
            Core.<*> (o Core..:? "dataProfileFindingRecordLocation")
      )

instance Core.ToJSON GooglePrivacyDlpV2DataProfileFindingLocation where
  toJSON GooglePrivacyDlpV2DataProfileFindingLocation {..} =
    Core.object
      ( Core.catMaybes
          [ ("containerName" Core..=) Core.<$> containerName,
            ("dataProfileFindingRecordLocation" Core..=)
              Core.<$> dataProfileFindingRecordLocation
          ]
      )

-- | Location of a finding within a resource that produces a table data profile.
--
-- /See:/ 'newGooglePrivacyDlpV2DataProfileFindingRecordLocation' smart constructor.
newtype GooglePrivacyDlpV2DataProfileFindingRecordLocation = GooglePrivacyDlpV2DataProfileFindingRecordLocation
  { -- | Field ID of the column containing the finding.
    field :: (Core.Maybe GooglePrivacyDlpV2FieldId)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DataProfileFindingRecordLocation' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DataProfileFindingRecordLocation ::
  GooglePrivacyDlpV2DataProfileFindingRecordLocation
newGooglePrivacyDlpV2DataProfileFindingRecordLocation =
  GooglePrivacyDlpV2DataProfileFindingRecordLocation
    { field =
        Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2DataProfileFindingRecordLocation
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DataProfileFindingRecordLocation"
      ( \o ->
          GooglePrivacyDlpV2DataProfileFindingRecordLocation
            Core.<$> (o Core..:? "field")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2DataProfileFindingRecordLocation
  where
  toJSON GooglePrivacyDlpV2DataProfileFindingRecordLocation {..} =
    Core.object (Core.catMaybes [("field" Core..=) Core.<$> field])

-- | Configuration for setting up a job to scan resources for profile generation. Only one data profile configuration may exist per organization, folder, or project. The generated data profiles are retained according to the [data retention policy] (https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/data-profiles#retention).
--
-- /See:/ 'newGooglePrivacyDlpV2DataProfileJobConfig' smart constructor.
data GooglePrivacyDlpV2DataProfileJobConfig = GooglePrivacyDlpV2DataProfileJobConfig
  { -- | Actions to execute at the completion of the job.
    dataProfileActions :: (Core.Maybe [GooglePrivacyDlpV2DataProfileAction]),
    -- | Detection logic for profile generation. Not all template features are used by profiles. FindingLimits, include/quote and exclude/info_types have no impact on data profiling. Multiple templates may be provided if there is data in multiple regions. At most one template must be specified per-region (including \"global\"). Each region is scanned using the applicable template. If no region-specific template is specified, but a \"global\" template is specified, it will be copied to that region and used instead. If no global or region-specific template is provided for a region with data, that region\'s data will not be scanned. For more information, see https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/data-profiles#data-residency.
    inspectTemplates :: (Core.Maybe [Core.Text]),
    -- | The data to scan.
    location :: (Core.Maybe GooglePrivacyDlpV2DataProfileLocation),
    -- | Must be set only when scanning other clouds.
    otherCloudStartingLocation :: (Core.Maybe GooglePrivacyDlpV2OtherCloudDiscoveryStartingLocation),
    -- | The project that will run the scan. The DLP service account that exists within this project must have access to all resources that are profiled, and the DLP API must be enabled.
    projectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DataProfileJobConfig' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DataProfileJobConfig ::
  GooglePrivacyDlpV2DataProfileJobConfig
newGooglePrivacyDlpV2DataProfileJobConfig =
  GooglePrivacyDlpV2DataProfileJobConfig
    { dataProfileActions =
        Core.Nothing,
      inspectTemplates = Core.Nothing,
      location = Core.Nothing,
      otherCloudStartingLocation = Core.Nothing,
      projectId = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2DataProfileJobConfig where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DataProfileJobConfig"
      ( \o ->
          GooglePrivacyDlpV2DataProfileJobConfig
            Core.<$> (o Core..:? "dataProfileActions")
            Core.<*> (o Core..:? "inspectTemplates")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "otherCloudStartingLocation")
            Core.<*> (o Core..:? "projectId")
      )

instance Core.ToJSON GooglePrivacyDlpV2DataProfileJobConfig where
  toJSON GooglePrivacyDlpV2DataProfileJobConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataProfileActions" Core..=) Core.<$> dataProfileActions,
            ("inspectTemplates" Core..=) Core.<$> inspectTemplates,
            ("location" Core..=) Core.<$> location,
            ("otherCloudStartingLocation" Core..=)
              Core.<$> otherCloudStartingLocation,
            ("projectId" Core..=) Core.<$> projectId
          ]
      )

-- | The data that will be profiled.
--
-- /See:/ 'newGooglePrivacyDlpV2DataProfileLocation' smart constructor.
data GooglePrivacyDlpV2DataProfileLocation = GooglePrivacyDlpV2DataProfileLocation
  { -- | The ID of the folder within an organization to scan.
    folderId :: (Core.Maybe Core.Int64),
    -- | The ID of an organization to scan.
    organizationId :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DataProfileLocation' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DataProfileLocation ::
  GooglePrivacyDlpV2DataProfileLocation
newGooglePrivacyDlpV2DataProfileLocation =
  GooglePrivacyDlpV2DataProfileLocation
    { folderId = Core.Nothing,
      organizationId = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2DataProfileLocation where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DataProfileLocation"
      ( \o ->
          GooglePrivacyDlpV2DataProfileLocation
            Core.<$> (o Core..:? "folderId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "organizationId" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON GooglePrivacyDlpV2DataProfileLocation where
  toJSON GooglePrivacyDlpV2DataProfileLocation {..} =
    Core.object
      ( Core.catMaybes
          [ ("folderId" Core..=) Core.. Core.AsText Core.<$> folderId,
            ("organizationId" Core..=)
              Core.. Core.AsText
              Core.<$> organizationId
          ]
      )

-- | A condition for determining whether a Pub\/Sub should be triggered.
--
-- /See:/ 'newGooglePrivacyDlpV2DataProfilePubSubCondition' smart constructor.
newtype GooglePrivacyDlpV2DataProfilePubSubCondition = GooglePrivacyDlpV2DataProfilePubSubCondition
  { -- | An expression.
    expressions :: (Core.Maybe GooglePrivacyDlpV2PubSubExpressions)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DataProfilePubSubCondition' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DataProfilePubSubCondition ::
  GooglePrivacyDlpV2DataProfilePubSubCondition
newGooglePrivacyDlpV2DataProfilePubSubCondition =
  GooglePrivacyDlpV2DataProfilePubSubCondition
    { expressions =
        Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2DataProfilePubSubCondition where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DataProfilePubSubCondition"
      ( \o ->
          GooglePrivacyDlpV2DataProfilePubSubCondition
            Core.<$> (o Core..:? "expressions")
      )

instance Core.ToJSON GooglePrivacyDlpV2DataProfilePubSubCondition where
  toJSON GooglePrivacyDlpV2DataProfilePubSubCondition {..} =
    Core.object
      (Core.catMaybes [("expressions" Core..=) Core.<$> expressions])

-- | Pub\/Sub topic message for a DataProfileAction.PubSubNotification event. To receive a message of protocol buffer schema type, convert the message data to an object of this proto class.
--
-- /See:/ 'newGooglePrivacyDlpV2DataProfilePubSubMessage' smart constructor.
data GooglePrivacyDlpV2DataProfilePubSubMessage = GooglePrivacyDlpV2DataProfilePubSubMessage
  { -- | The event that caused the Pub\/Sub message to be sent.
    event :: (Core.Maybe GooglePrivacyDlpV2DataProfilePubSubMessage_Event),
    -- | If @DetailLevel@ is @FILE_STORE_PROFILE@ this will be fully populated. Otherwise, if @DetailLevel@ is @RESOURCE_NAME@, then only @name@ and @file_store_path@ will be populated.
    fileStoreProfile :: (Core.Maybe GooglePrivacyDlpV2FileStoreDataProfile),
    -- | If @DetailLevel@ is @TABLE_PROFILE@ this will be fully populated. Otherwise, if @DetailLevel@ is @RESOURCE_NAME@, then only @name@ and @full_resource@ will be populated.
    profile :: (Core.Maybe GooglePrivacyDlpV2TableDataProfile)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DataProfilePubSubMessage' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DataProfilePubSubMessage ::
  GooglePrivacyDlpV2DataProfilePubSubMessage
newGooglePrivacyDlpV2DataProfilePubSubMessage =
  GooglePrivacyDlpV2DataProfilePubSubMessage
    { event = Core.Nothing,
      fileStoreProfile = Core.Nothing,
      profile = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2DataProfilePubSubMessage where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DataProfilePubSubMessage"
      ( \o ->
          GooglePrivacyDlpV2DataProfilePubSubMessage
            Core.<$> (o Core..:? "event")
            Core.<*> (o Core..:? "fileStoreProfile")
            Core.<*> (o Core..:? "profile")
      )

instance Core.ToJSON GooglePrivacyDlpV2DataProfilePubSubMessage where
  toJSON GooglePrivacyDlpV2DataProfilePubSubMessage {..} =
    Core.object
      ( Core.catMaybes
          [ ("event" Core..=) Core.<$> event,
            ("fileStoreProfile" Core..=) Core.<$> fileStoreProfile,
            ("profile" Core..=) Core.<$> profile
          ]
      )

-- | Score is a summary of all elements in the data profile. A higher number means more risk.
--
-- /See:/ 'newGooglePrivacyDlpV2DataRiskLevel' smart constructor.
newtype GooglePrivacyDlpV2DataRiskLevel = GooglePrivacyDlpV2DataRiskLevel
  { -- | The score applied to the resource.
    score :: (Core.Maybe GooglePrivacyDlpV2DataRiskLevel_Score)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DataRiskLevel' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DataRiskLevel ::
  GooglePrivacyDlpV2DataRiskLevel
newGooglePrivacyDlpV2DataRiskLevel =
  GooglePrivacyDlpV2DataRiskLevel {score = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2DataRiskLevel where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DataRiskLevel"
      ( \o ->
          GooglePrivacyDlpV2DataRiskLevel Core.<$> (o Core..:? "score")
      )

instance Core.ToJSON GooglePrivacyDlpV2DataRiskLevel where
  toJSON GooglePrivacyDlpV2DataRiskLevel {..} =
    Core.object (Core.catMaybes [("score" Core..=) Core.<$> score])

-- | Message used to identify the type of resource being profiled.
--
-- /See:/ 'newGooglePrivacyDlpV2DataSourceType' smart constructor.
newtype GooglePrivacyDlpV2DataSourceType = GooglePrivacyDlpV2DataSourceType
  { -- | Output only. An identifying string to the type of resource being profiled. Current values: * google\/bigquery\/table * google\/project * google\/sql\/table * google\/gcs\/bucket
    dataSource :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DataSourceType' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DataSourceType ::
  GooglePrivacyDlpV2DataSourceType
newGooglePrivacyDlpV2DataSourceType =
  GooglePrivacyDlpV2DataSourceType {dataSource = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2DataSourceType where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DataSourceType"
      ( \o ->
          GooglePrivacyDlpV2DataSourceType
            Core.<$> (o Core..:? "dataSource")
      )

instance Core.ToJSON GooglePrivacyDlpV2DataSourceType where
  toJSON GooglePrivacyDlpV2DataSourceType {..} =
    Core.object
      (Core.catMaybes [("dataSource" Core..=) Core.<$> dataSource])

-- | Match database resources using regex filters. Examples of database resources are tables, views, and stored procedures.
--
-- /See:/ 'newGooglePrivacyDlpV2DatabaseResourceCollection' smart constructor.
newtype GooglePrivacyDlpV2DatabaseResourceCollection = GooglePrivacyDlpV2DatabaseResourceCollection
  { -- | A collection of regular expressions to match a database resource against.
    includeRegexes :: (Core.Maybe GooglePrivacyDlpV2DatabaseResourceRegexes)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DatabaseResourceCollection' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DatabaseResourceCollection ::
  GooglePrivacyDlpV2DatabaseResourceCollection
newGooglePrivacyDlpV2DatabaseResourceCollection =
  GooglePrivacyDlpV2DatabaseResourceCollection
    { includeRegexes =
        Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2DatabaseResourceCollection where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DatabaseResourceCollection"
      ( \o ->
          GooglePrivacyDlpV2DatabaseResourceCollection
            Core.<$> (o Core..:? "includeRegexes")
      )

instance Core.ToJSON GooglePrivacyDlpV2DatabaseResourceCollection where
  toJSON GooglePrivacyDlpV2DatabaseResourceCollection {..} =
    Core.object
      ( Core.catMaybes
          [("includeRegexes" Core..=) Core.<$> includeRegexes]
      )

-- | Identifies a single database resource, like a table within a database.
--
-- /See:/ 'newGooglePrivacyDlpV2DatabaseResourceReference' smart constructor.
data GooglePrivacyDlpV2DatabaseResourceReference = GooglePrivacyDlpV2DatabaseResourceReference
  { -- | Required. Name of a database within the instance.
    database :: (Core.Maybe Core.Text),
    -- | Required. Name of a database resource, for example, a table within the database.
    databaseResource :: (Core.Maybe Core.Text),
    -- | Required. The instance where this resource is located. For example: Cloud SQL instance ID.
    instance' :: (Core.Maybe Core.Text),
    -- | Required. If within a project-level config, then this must match the config\'s project ID.
    projectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DatabaseResourceReference' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DatabaseResourceReference ::
  GooglePrivacyDlpV2DatabaseResourceReference
newGooglePrivacyDlpV2DatabaseResourceReference =
  GooglePrivacyDlpV2DatabaseResourceReference
    { database =
        Core.Nothing,
      databaseResource = Core.Nothing,
      instance' = Core.Nothing,
      projectId = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2DatabaseResourceReference where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DatabaseResourceReference"
      ( \o ->
          GooglePrivacyDlpV2DatabaseResourceReference
            Core.<$> (o Core..:? "database")
            Core.<*> (o Core..:? "databaseResource")
            Core.<*> (o Core..:? "instance")
            Core.<*> (o Core..:? "projectId")
      )

instance Core.ToJSON GooglePrivacyDlpV2DatabaseResourceReference where
  toJSON GooglePrivacyDlpV2DatabaseResourceReference {..} =
    Core.object
      ( Core.catMaybes
          [ ("database" Core..=) Core.<$> database,
            ("databaseResource" Core..=) Core.<$> databaseResource,
            ("instance" Core..=) Core.<$> instance',
            ("projectId" Core..=) Core.<$> projectId
          ]
      )

-- | A pattern to match against one or more database resources. At least one pattern must be specified. Regular expressions use RE2 <https://github.com/google/re2/wiki/Syntax syntax>; a guide can be found under the google\/re2 repository on GitHub.
--
-- /See:/ 'newGooglePrivacyDlpV2DatabaseResourceRegex' smart constructor.
data GooglePrivacyDlpV2DatabaseResourceRegex = GooglePrivacyDlpV2DatabaseResourceRegex
  { -- | Regex to test the database name against. If empty, all databases match.
    databaseRegex :: (Core.Maybe Core.Text),
    -- | Regex to test the database resource\'s name against. An example of a database resource name is a table\'s name. Other database resource names like view names could be included in the future. If empty, all database resources match.
    databaseResourceNameRegex :: (Core.Maybe Core.Text),
    -- | Regex to test the instance name against. If empty, all instances match.
    instanceRegex :: (Core.Maybe Core.Text),
    -- | For organizations, if unset, will match all projects. Has no effect for configurations created within a project.
    projectIdRegex :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DatabaseResourceRegex' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DatabaseResourceRegex ::
  GooglePrivacyDlpV2DatabaseResourceRegex
newGooglePrivacyDlpV2DatabaseResourceRegex =
  GooglePrivacyDlpV2DatabaseResourceRegex
    { databaseRegex =
        Core.Nothing,
      databaseResourceNameRegex = Core.Nothing,
      instanceRegex = Core.Nothing,
      projectIdRegex = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2DatabaseResourceRegex where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DatabaseResourceRegex"
      ( \o ->
          GooglePrivacyDlpV2DatabaseResourceRegex
            Core.<$> (o Core..:? "databaseRegex")
            Core.<*> (o Core..:? "databaseResourceNameRegex")
            Core.<*> (o Core..:? "instanceRegex")
            Core.<*> (o Core..:? "projectIdRegex")
      )

instance Core.ToJSON GooglePrivacyDlpV2DatabaseResourceRegex where
  toJSON GooglePrivacyDlpV2DatabaseResourceRegex {..} =
    Core.object
      ( Core.catMaybes
          [ ("databaseRegex" Core..=) Core.<$> databaseRegex,
            ("databaseResourceNameRegex" Core..=)
              Core.<$> databaseResourceNameRegex,
            ("instanceRegex" Core..=) Core.<$> instanceRegex,
            ("projectIdRegex" Core..=) Core.<$> projectIdRegex
          ]
      )

-- | A collection of regular expressions to determine what database resources to match against.
--
-- /See:/ 'newGooglePrivacyDlpV2DatabaseResourceRegexes' smart constructor.
newtype GooglePrivacyDlpV2DatabaseResourceRegexes = GooglePrivacyDlpV2DatabaseResourceRegexes
  { -- | A group of regular expression patterns to match against one or more database resources. Maximum of 100 entries. The sum of all regular expression\'s length can\'t exceed 10 KiB.
    patterns :: (Core.Maybe [GooglePrivacyDlpV2DatabaseResourceRegex])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DatabaseResourceRegexes' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DatabaseResourceRegexes ::
  GooglePrivacyDlpV2DatabaseResourceRegexes
newGooglePrivacyDlpV2DatabaseResourceRegexes =
  GooglePrivacyDlpV2DatabaseResourceRegexes
    { patterns =
        Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2DatabaseResourceRegexes where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DatabaseResourceRegexes"
      ( \o ->
          GooglePrivacyDlpV2DatabaseResourceRegexes
            Core.<$> (o Core..:? "patterns")
      )

instance Core.ToJSON GooglePrivacyDlpV2DatabaseResourceRegexes where
  toJSON GooglePrivacyDlpV2DatabaseResourceRegexes {..} =
    Core.object
      (Core.catMaybes [("patterns" Core..=) Core.<$> patterns])

-- | Record key for a finding in Cloud Datastore.
--
-- /See:/ 'newGooglePrivacyDlpV2DatastoreKey' smart constructor.
newtype GooglePrivacyDlpV2DatastoreKey = GooglePrivacyDlpV2DatastoreKey
  { -- | Datastore entity key.
    entityKey :: (Core.Maybe GooglePrivacyDlpV2Key)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DatastoreKey' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DatastoreKey ::
  GooglePrivacyDlpV2DatastoreKey
newGooglePrivacyDlpV2DatastoreKey =
  GooglePrivacyDlpV2DatastoreKey {entityKey = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2DatastoreKey where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DatastoreKey"
      ( \o ->
          GooglePrivacyDlpV2DatastoreKey Core.<$> (o Core..:? "entityKey")
      )

instance Core.ToJSON GooglePrivacyDlpV2DatastoreKey where
  toJSON GooglePrivacyDlpV2DatastoreKey {..} =
    Core.object
      (Core.catMaybes [("entityKey" Core..=) Core.<$> entityKey])

-- | Options defining a data set within Google Cloud Datastore.
--
-- /See:/ 'newGooglePrivacyDlpV2DatastoreOptions' smart constructor.
data GooglePrivacyDlpV2DatastoreOptions = GooglePrivacyDlpV2DatastoreOptions
  { -- | The kind to process.
    kind :: (Core.Maybe GooglePrivacyDlpV2KindExpression),
    -- | A partition ID identifies a grouping of entities. The grouping is always by project and namespace, however the namespace ID may be empty.
    partitionId :: (Core.Maybe GooglePrivacyDlpV2PartitionId)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DatastoreOptions' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DatastoreOptions ::
  GooglePrivacyDlpV2DatastoreOptions
newGooglePrivacyDlpV2DatastoreOptions =
  GooglePrivacyDlpV2DatastoreOptions
    { kind = Core.Nothing,
      partitionId = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2DatastoreOptions where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DatastoreOptions"
      ( \o ->
          GooglePrivacyDlpV2DatastoreOptions
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "partitionId")
      )

instance Core.ToJSON GooglePrivacyDlpV2DatastoreOptions where
  toJSON GooglePrivacyDlpV2DatastoreOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("partitionId" Core..=) Core.<$> partitionId
          ]
      )

-- | Shifts dates by random number of days, with option to be consistent for the same context. See https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/concepts-date-shifting to learn more.
--
-- /See:/ 'newGooglePrivacyDlpV2DateShiftConfig' smart constructor.
data GooglePrivacyDlpV2DateShiftConfig = GooglePrivacyDlpV2DateShiftConfig
  { -- | Points to the field that contains the context, for example, an entity id. If set, must also set cryptoKey. If set, shift will be consistent for the given context.
    context :: (Core.Maybe GooglePrivacyDlpV2FieldId),
    -- | Causes the shift to be computed based on this key and the context. This results in the same shift for the same context and crypto_key. If set, must also set context. Can only be applied to table items.
    cryptoKey :: (Core.Maybe GooglePrivacyDlpV2CryptoKey),
    -- | Required. For example, -5 means shift date to at most 5 days back in the past.
    lowerBoundDays :: (Core.Maybe Core.Int32),
    -- | Required. Range of shift in days. Actual shift will be selected at random within this range (inclusive ends). Negative means shift to earlier in time. Must not be more than 365250 days (1000 years) each direction. For example, 3 means shift date to at most 3 days into the future.
    upperBoundDays :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DateShiftConfig' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DateShiftConfig ::
  GooglePrivacyDlpV2DateShiftConfig
newGooglePrivacyDlpV2DateShiftConfig =
  GooglePrivacyDlpV2DateShiftConfig
    { context = Core.Nothing,
      cryptoKey = Core.Nothing,
      lowerBoundDays = Core.Nothing,
      upperBoundDays = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2DateShiftConfig where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DateShiftConfig"
      ( \o ->
          GooglePrivacyDlpV2DateShiftConfig
            Core.<$> (o Core..:? "context")
            Core.<*> (o Core..:? "cryptoKey")
            Core.<*> (o Core..:? "lowerBoundDays")
            Core.<*> (o Core..:? "upperBoundDays")
      )

instance Core.ToJSON GooglePrivacyDlpV2DateShiftConfig where
  toJSON GooglePrivacyDlpV2DateShiftConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("context" Core..=) Core.<$> context,
            ("cryptoKey" Core..=) Core.<$> cryptoKey,
            ("lowerBoundDays" Core..=) Core.<$> lowerBoundDays,
            ("upperBoundDays" Core..=) Core.<$> upperBoundDays
          ]
      )

-- | Message for a date time object. e.g. 2018-01-01, 5th August.
--
-- /See:/ 'newGooglePrivacyDlpV2DateTime' smart constructor.
data GooglePrivacyDlpV2DateTime = GooglePrivacyDlpV2DateTime
  { -- | One or more of the following must be set. Must be a valid date or time value.
    date :: (Core.Maybe GoogleTypeDate),
    -- | Day of week
    dayOfWeek :: (Core.Maybe GooglePrivacyDlpV2DateTime_DayOfWeek),
    -- | Time of day
    time :: (Core.Maybe GoogleTypeTimeOfDay),
    -- | Time zone
    timeZone :: (Core.Maybe GooglePrivacyDlpV2TimeZone)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DateTime' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DateTime ::
  GooglePrivacyDlpV2DateTime
newGooglePrivacyDlpV2DateTime =
  GooglePrivacyDlpV2DateTime
    { date = Core.Nothing,
      dayOfWeek = Core.Nothing,
      time = Core.Nothing,
      timeZone = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2DateTime where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DateTime"
      ( \o ->
          GooglePrivacyDlpV2DateTime
            Core.<$> (o Core..:? "date")
            Core.<*> (o Core..:? "dayOfWeek")
            Core.<*> (o Core..:? "time")
            Core.<*> (o Core..:? "timeZone")
      )

instance Core.ToJSON GooglePrivacyDlpV2DateTime where
  toJSON GooglePrivacyDlpV2DateTime {..} =
    Core.object
      ( Core.catMaybes
          [ ("date" Core..=) Core.<$> date,
            ("dayOfWeek" Core..=) Core.<$> dayOfWeek,
            ("time" Core..=) Core.<$> time,
            ("timeZone" Core..=) Core.<$> timeZone
          ]
      )

-- | Create a de-identified copy of the requested table or files. A TransformationDetail will be created for each transformation. If any rows in BigQuery are skipped during de-identification (transformation errors or row size exceeds BigQuery insert API limits) they are placed in the failure output table. If the original row exceeds the BigQuery insert API limit it will be truncated when written to the failure output table. The failure output table can be set in the action.deidentify.output.big/query/output.deidentified/failure/output_table field, if no table is set, a table will be automatically created in the same project and dataset as the original table. Compatible with: Inspect
--
-- /See:/ 'newGooglePrivacyDlpV2Deidentify' smart constructor.
data GooglePrivacyDlpV2Deidentify = GooglePrivacyDlpV2Deidentify
  { -- | Required. User settable Cloud Storage bucket and folders to store de-identified files. This field must be set for Cloud Storage deidentification. The output Cloud Storage bucket must be different from the input bucket. De-identified files will overwrite files in the output path. Form of: gs:\/\/bucket\/folder\/ or gs:\/\/bucket
    cloudStorageOutput :: (Core.Maybe Core.Text),
    -- | List of user-specified file type groups to transform. If specified, only the files with these file types will be transformed. If empty, all supported files will be transformed. Supported types may be automatically added over time. If a file type is set in this field that isn\'t supported by the Deidentify action then the job will fail and will not be successfully created\/started. Currently the only file types supported are: IMAGES, TEXT_FILES, CSV, TSV.
    fileTypesToTransform ::
      ( Core.Maybe
          [GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem]
      ),
    -- | User specified deidentify templates and configs for structured, unstructured, and image files.
    transformationConfig :: (Core.Maybe GooglePrivacyDlpV2TransformationConfig),
    -- | Config for storing transformation details. This is separate from the de-identified content, and contains metadata about the successful transformations and\/or failures that occurred while de-identifying. This needs to be set in order for users to access information about the status of each transformation (see TransformationDetails message for more information about what is noted).
    transformationDetailsStorageConfig :: (Core.Maybe GooglePrivacyDlpV2TransformationDetailsStorageConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Deidentify' with the minimum fields required to make a request.
newGooglePrivacyDlpV2Deidentify ::
  GooglePrivacyDlpV2Deidentify
newGooglePrivacyDlpV2Deidentify =
  GooglePrivacyDlpV2Deidentify
    { cloudStorageOutput = Core.Nothing,
      fileTypesToTransform = Core.Nothing,
      transformationConfig = Core.Nothing,
      transformationDetailsStorageConfig = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2Deidentify where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2Deidentify"
      ( \o ->
          GooglePrivacyDlpV2Deidentify
            Core.<$> (o Core..:? "cloudStorageOutput")
            Core.<*> (o Core..:? "fileTypesToTransform")
            Core.<*> (o Core..:? "transformationConfig")
            Core.<*> (o Core..:? "transformationDetailsStorageConfig")
      )

instance Core.ToJSON GooglePrivacyDlpV2Deidentify where
  toJSON GooglePrivacyDlpV2Deidentify {..} =
    Core.object
      ( Core.catMaybes
          [ ("cloudStorageOutput" Core..=) Core.<$> cloudStorageOutput,
            ("fileTypesToTransform" Core..=) Core.<$> fileTypesToTransform,
            ("transformationConfig" Core..=) Core.<$> transformationConfig,
            ("transformationDetailsStorageConfig" Core..=)
              Core.<$> transformationDetailsStorageConfig
          ]
      )

-- | The configuration that controls how the data will change.
--
-- /See:/ 'newGooglePrivacyDlpV2DeidentifyConfig' smart constructor.
data GooglePrivacyDlpV2DeidentifyConfig = GooglePrivacyDlpV2DeidentifyConfig
  { -- | Treat the dataset as an image and redact.
    imageTransformations :: (Core.Maybe GooglePrivacyDlpV2ImageTransformations),
    -- | Treat the dataset as free-form text and apply the same free text transformation everywhere.
    infoTypeTransformations :: (Core.Maybe GooglePrivacyDlpV2InfoTypeTransformations),
    -- | Treat the dataset as structured. Transformations can be applied to specific locations within structured datasets, such as transforming a column within a table.
    recordTransformations :: (Core.Maybe GooglePrivacyDlpV2RecordTransformations),
    -- | Mode for handling transformation errors. If left unspecified, the default mode is @TransformationErrorHandling.ThrowError@.
    transformationErrorHandling :: (Core.Maybe GooglePrivacyDlpV2TransformationErrorHandling)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DeidentifyConfig' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DeidentifyConfig ::
  GooglePrivacyDlpV2DeidentifyConfig
newGooglePrivacyDlpV2DeidentifyConfig =
  GooglePrivacyDlpV2DeidentifyConfig
    { imageTransformations =
        Core.Nothing,
      infoTypeTransformations = Core.Nothing,
      recordTransformations = Core.Nothing,
      transformationErrorHandling = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2DeidentifyConfig where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DeidentifyConfig"
      ( \o ->
          GooglePrivacyDlpV2DeidentifyConfig
            Core.<$> (o Core..:? "imageTransformations")
            Core.<*> (o Core..:? "infoTypeTransformations")
            Core.<*> (o Core..:? "recordTransformations")
            Core.<*> (o Core..:? "transformationErrorHandling")
      )

instance Core.ToJSON GooglePrivacyDlpV2DeidentifyConfig where
  toJSON GooglePrivacyDlpV2DeidentifyConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("imageTransformations" Core..=) Core.<$> imageTransformations,
            ("infoTypeTransformations" Core..=)
              Core.<$> infoTypeTransformations,
            ("recordTransformations" Core..=) Core.<$> recordTransformations,
            ("transformationErrorHandling" Core..=)
              Core.<$> transformationErrorHandling
          ]
      )

-- | Request to de-identify a ContentItem.
--
-- /See:/ 'newGooglePrivacyDlpV2DeidentifyContentRequest' smart constructor.
data GooglePrivacyDlpV2DeidentifyContentRequest = GooglePrivacyDlpV2DeidentifyContentRequest
  { -- | Configuration for the de-identification of the content item. Items specified here will override the template referenced by the deidentify/template/name argument.
    deidentifyConfig :: (Core.Maybe GooglePrivacyDlpV2DeidentifyConfig),
    -- | Template to use. Any configuration directly specified in deidentify_config will override those set in the template. Singular fields that are set in this request will replace their corresponding fields in the template. Repeated fields are appended. Singular sub-messages and groups are recursively merged.
    deidentifyTemplateName :: (Core.Maybe Core.Text),
    -- | Configuration for the inspector. Items specified here will override the template referenced by the inspect/template/name argument.
    inspectConfig :: (Core.Maybe GooglePrivacyDlpV2InspectConfig),
    -- | Template to use. Any configuration directly specified in inspect_config will override those set in the template. Singular fields that are set in this request will replace their corresponding fields in the template. Repeated fields are appended. Singular sub-messages and groups are recursively merged.
    inspectTemplateName :: (Core.Maybe Core.Text),
    -- | The item to de-identify. Will be treated as text. This value must be of type Table if your deidentify_config is a RecordTransformations object.
    item :: (Core.Maybe GooglePrivacyDlpV2ContentItem),
    -- | Deprecated. This field has no effect.
    locationId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DeidentifyContentRequest' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DeidentifyContentRequest ::
  GooglePrivacyDlpV2DeidentifyContentRequest
newGooglePrivacyDlpV2DeidentifyContentRequest =
  GooglePrivacyDlpV2DeidentifyContentRequest
    { deidentifyConfig =
        Core.Nothing,
      deidentifyTemplateName = Core.Nothing,
      inspectConfig = Core.Nothing,
      inspectTemplateName = Core.Nothing,
      item = Core.Nothing,
      locationId = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2DeidentifyContentRequest where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DeidentifyContentRequest"
      ( \o ->
          GooglePrivacyDlpV2DeidentifyContentRequest
            Core.<$> (o Core..:? "deidentifyConfig")
            Core.<*> (o Core..:? "deidentifyTemplateName")
            Core.<*> (o Core..:? "inspectConfig")
            Core.<*> (o Core..:? "inspectTemplateName")
            Core.<*> (o Core..:? "item")
            Core.<*> (o Core..:? "locationId")
      )

instance Core.ToJSON GooglePrivacyDlpV2DeidentifyContentRequest where
  toJSON GooglePrivacyDlpV2DeidentifyContentRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("deidentifyConfig" Core..=) Core.<$> deidentifyConfig,
            ("deidentifyTemplateName" Core..=) Core.<$> deidentifyTemplateName,
            ("inspectConfig" Core..=) Core.<$> inspectConfig,
            ("inspectTemplateName" Core..=) Core.<$> inspectTemplateName,
            ("item" Core..=) Core.<$> item,
            ("locationId" Core..=) Core.<$> locationId
          ]
      )

-- | Results of de-identifying a ContentItem.
--
-- /See:/ 'newGooglePrivacyDlpV2DeidentifyContentResponse' smart constructor.
data GooglePrivacyDlpV2DeidentifyContentResponse = GooglePrivacyDlpV2DeidentifyContentResponse
  { -- | The de-identified item.
    item :: (Core.Maybe GooglePrivacyDlpV2ContentItem),
    -- | An overview of the changes that were made on the @item@.
    overview :: (Core.Maybe GooglePrivacyDlpV2TransformationOverview)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DeidentifyContentResponse' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DeidentifyContentResponse ::
  GooglePrivacyDlpV2DeidentifyContentResponse
newGooglePrivacyDlpV2DeidentifyContentResponse =
  GooglePrivacyDlpV2DeidentifyContentResponse
    { item = Core.Nothing,
      overview = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2DeidentifyContentResponse where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DeidentifyContentResponse"
      ( \o ->
          GooglePrivacyDlpV2DeidentifyContentResponse
            Core.<$> (o Core..:? "item")
            Core.<*> (o Core..:? "overview")
      )

instance Core.ToJSON GooglePrivacyDlpV2DeidentifyContentResponse where
  toJSON GooglePrivacyDlpV2DeidentifyContentResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("item" Core..=) Core.<$> item,
            ("overview" Core..=) Core.<$> overview
          ]
      )

-- | The results of a Deidentify action from an inspect job.
--
-- /See:/ 'newGooglePrivacyDlpV2DeidentifyDataSourceDetails' smart constructor.
data GooglePrivacyDlpV2DeidentifyDataSourceDetails = GooglePrivacyDlpV2DeidentifyDataSourceDetails
  { -- | Stats about the de-identification operation.
    deidentifyStats :: (Core.Maybe GooglePrivacyDlpV2DeidentifyDataSourceStats),
    -- | De-identification config used for the request.
    requestedOptions :: (Core.Maybe GooglePrivacyDlpV2RequestedDeidentifyOptions)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DeidentifyDataSourceDetails' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DeidentifyDataSourceDetails ::
  GooglePrivacyDlpV2DeidentifyDataSourceDetails
newGooglePrivacyDlpV2DeidentifyDataSourceDetails =
  GooglePrivacyDlpV2DeidentifyDataSourceDetails
    { deidentifyStats =
        Core.Nothing,
      requestedOptions = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2DeidentifyDataSourceDetails
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DeidentifyDataSourceDetails"
      ( \o ->
          GooglePrivacyDlpV2DeidentifyDataSourceDetails
            Core.<$> (o Core..:? "deidentifyStats")
            Core.<*> (o Core..:? "requestedOptions")
      )

instance Core.ToJSON GooglePrivacyDlpV2DeidentifyDataSourceDetails where
  toJSON GooglePrivacyDlpV2DeidentifyDataSourceDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("deidentifyStats" Core..=) Core.<$> deidentifyStats,
            ("requestedOptions" Core..=) Core.<$> requestedOptions
          ]
      )

-- | Summary of what was modified during a transformation.
--
-- /See:/ 'newGooglePrivacyDlpV2DeidentifyDataSourceStats' smart constructor.
data GooglePrivacyDlpV2DeidentifyDataSourceStats = GooglePrivacyDlpV2DeidentifyDataSourceStats
  { -- | Number of successfully applied transformations.
    transformationCount :: (Core.Maybe Core.Int64),
    -- | Number of errors encountered while trying to apply transformations.
    transformationErrorCount :: (Core.Maybe Core.Int64),
    -- | Total size in bytes that were transformed in some way.
    transformedBytes :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DeidentifyDataSourceStats' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DeidentifyDataSourceStats ::
  GooglePrivacyDlpV2DeidentifyDataSourceStats
newGooglePrivacyDlpV2DeidentifyDataSourceStats =
  GooglePrivacyDlpV2DeidentifyDataSourceStats
    { transformationCount =
        Core.Nothing,
      transformationErrorCount = Core.Nothing,
      transformedBytes = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2DeidentifyDataSourceStats where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DeidentifyDataSourceStats"
      ( \o ->
          GooglePrivacyDlpV2DeidentifyDataSourceStats
            Core.<$> ( o
                         Core..:? "transformationCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "transformationErrorCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "transformedBytes" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON GooglePrivacyDlpV2DeidentifyDataSourceStats where
  toJSON GooglePrivacyDlpV2DeidentifyDataSourceStats {..} =
    Core.object
      ( Core.catMaybes
          [ ("transformationCount" Core..=)
              Core.. Core.AsText
              Core.<$> transformationCount,
            ("transformationErrorCount" Core..=)
              Core.. Core.AsText
              Core.<$> transformationErrorCount,
            ("transformedBytes" Core..=)
              Core.. Core.AsText
              Core.<$> transformedBytes
          ]
      )

-- | DeidentifyTemplates contains instructions on how to de-identify content. See https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/concepts-templates to learn more.
--
-- /See:/ 'newGooglePrivacyDlpV2DeidentifyTemplate' smart constructor.
data GooglePrivacyDlpV2DeidentifyTemplate = GooglePrivacyDlpV2DeidentifyTemplate
  { -- | Output only. The creation timestamp of an inspectTemplate.
    createTime :: (Core.Maybe Core.DateTime),
    -- | The core content of the template.
    deidentifyConfig :: (Core.Maybe GooglePrivacyDlpV2DeidentifyConfig),
    -- | Short description (max 256 chars).
    description :: (Core.Maybe Core.Text),
    -- | Display name (max 256 chars).
    displayName :: (Core.Maybe Core.Text),
    -- | Output only. The template name. The template will have one of the following formats: @projects\/PROJECT_ID\/deidentifyTemplates\/TEMPLATE_ID@ OR @organizations\/ORGANIZATION_ID\/deidentifyTemplates\/TEMPLATE_ID@
    name :: (Core.Maybe Core.Text),
    -- | Output only. The last update timestamp of an inspectTemplate.
    updateTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DeidentifyTemplate' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DeidentifyTemplate ::
  GooglePrivacyDlpV2DeidentifyTemplate
newGooglePrivacyDlpV2DeidentifyTemplate =
  GooglePrivacyDlpV2DeidentifyTemplate
    { createTime = Core.Nothing,
      deidentifyConfig = Core.Nothing,
      description = Core.Nothing,
      displayName = Core.Nothing,
      name = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2DeidentifyTemplate where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DeidentifyTemplate"
      ( \o ->
          GooglePrivacyDlpV2DeidentifyTemplate
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "deidentifyConfig")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON GooglePrivacyDlpV2DeidentifyTemplate where
  toJSON GooglePrivacyDlpV2DeidentifyTemplate {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("deidentifyConfig" Core..=) Core.<$> deidentifyConfig,
            ("description" Core..=) Core.<$> description,
            ("displayName" Core..=) Core.<$> displayName,
            ("name" Core..=) Core.<$> name,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | δ-presence metric, used to estimate how likely it is for an attacker to figure out that one given individual appears in a de-identified dataset. Similarly to the k-map metric, we cannot compute δ-presence exactly without knowing the attack dataset, so we use a statistical model instead.
--
-- /See:/ 'newGooglePrivacyDlpV2DeltaPresenceEstimationConfig' smart constructor.
data GooglePrivacyDlpV2DeltaPresenceEstimationConfig = GooglePrivacyDlpV2DeltaPresenceEstimationConfig
  { -- | Several auxiliary tables can be used in the analysis. Each custom_tag used to tag a quasi-identifiers field must appear in exactly one field of one auxiliary table.
    auxiliaryTables :: (Core.Maybe [GooglePrivacyDlpV2StatisticalTable]),
    -- | Required. Fields considered to be quasi-identifiers. No two fields can have the same tag.
    quasiIds :: (Core.Maybe [GooglePrivacyDlpV2QuasiId]),
    -- | ISO 3166-1 alpha-2 region code to use in the statistical modeling. Set if no column is tagged with a region-specific InfoType (like US/ZIP/5) or a region code.
    regionCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DeltaPresenceEstimationConfig' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DeltaPresenceEstimationConfig ::
  GooglePrivacyDlpV2DeltaPresenceEstimationConfig
newGooglePrivacyDlpV2DeltaPresenceEstimationConfig =
  GooglePrivacyDlpV2DeltaPresenceEstimationConfig
    { auxiliaryTables =
        Core.Nothing,
      quasiIds = Core.Nothing,
      regionCode = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2DeltaPresenceEstimationConfig
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DeltaPresenceEstimationConfig"
      ( \o ->
          GooglePrivacyDlpV2DeltaPresenceEstimationConfig
            Core.<$> (o Core..:? "auxiliaryTables")
            Core.<*> (o Core..:? "quasiIds")
            Core.<*> (o Core..:? "regionCode")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2DeltaPresenceEstimationConfig
  where
  toJSON GooglePrivacyDlpV2DeltaPresenceEstimationConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("auxiliaryTables" Core..=) Core.<$> auxiliaryTables,
            ("quasiIds" Core..=) Core.<$> quasiIds,
            ("regionCode" Core..=) Core.<$> regionCode
          ]
      )

-- | A DeltaPresenceEstimationHistogramBucket message with the following values: min/probability: 0.1 max/probability: 0.2 frequency: 42 means that there are 42 records for which δ is in [0.1, 0.2). An important particular case is when min/probability = max/probability = 1: then, every individual who shares this quasi-identifier combination is in the dataset.
--
-- /See:/ 'newGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket' smart constructor.
data GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket = GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket
  { -- | Number of records within these probability bounds.
    bucketSize :: (Core.Maybe Core.Int64),
    -- | Total number of distinct quasi-identifier tuple values in this bucket.
    bucketValueCount :: (Core.Maybe Core.Int64),
    -- | Sample of quasi-identifier tuple values in this bucket. The total number of classes returned per bucket is capped at 20.
    bucketValues ::
      ( Core.Maybe
          [GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues]
      ),
    -- | Always greater than or equal to min_probability.
    maxProbability :: (Core.Maybe Core.Double),
    -- | Between 0 and 1.
    minProbability :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket ::
  GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket
newGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket =
  GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket
    { bucketSize =
        Core.Nothing,
      bucketValueCount = Core.Nothing,
      bucketValues = Core.Nothing,
      maxProbability = Core.Nothing,
      minProbability = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket"
      ( \o ->
          GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket
            Core.<$> (o Core..:? "bucketSize" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "bucketValueCount" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "bucketValues")
            Core.<*> (o Core..:? "maxProbability")
            Core.<*> (o Core..:? "minProbability")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket
  where
  toJSON GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket {..} =
    Core.object
      ( Core.catMaybes
          [ ("bucketSize" Core..=) Core.. Core.AsText Core.<$> bucketSize,
            ("bucketValueCount" Core..=)
              Core.. Core.AsText
              Core.<$> bucketValueCount,
            ("bucketValues" Core..=) Core.<$> bucketValues,
            ("maxProbability" Core..=) Core.<$> maxProbability,
            ("minProbability" Core..=) Core.<$> minProbability
          ]
      )

-- | A tuple of values for the quasi-identifier columns.
--
-- /See:/ 'newGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues' smart constructor.
data GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues = GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues
  { -- | The estimated probability that a given individual sharing these quasi-identifier values is in the dataset. This value, typically called δ, is the ratio between the number of records in the dataset with these quasi-identifier values, and the total number of individuals (inside /and/ outside the dataset) with these quasi-identifier values. For example, if there are 15 individuals in the dataset who share the same quasi-identifier values, and an estimated 100 people in the entire population with these values, then δ is 0.15.
    estimatedProbability :: (Core.Maybe Core.Double),
    -- | The quasi-identifier values.
    quasiIdsValues :: (Core.Maybe [GooglePrivacyDlpV2Value])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues ::
  GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues
newGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues =
  GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues
    { estimatedProbability =
        Core.Nothing,
      quasiIdsValues = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues"
      ( \o ->
          GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues
            Core.<$> (o Core..:? "estimatedProbability")
            Core.<*> (o Core..:? "quasiIdsValues")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues
  where
  toJSON GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues {..} =
    Core.object
      ( Core.catMaybes
          [ ("estimatedProbability" Core..=) Core.<$> estimatedProbability,
            ("quasiIdsValues" Core..=) Core.<$> quasiIdsValues
          ]
      )

-- | Result of the δ-presence computation. Note that these results are an estimation, not exact values.
--
-- /See:/ 'newGooglePrivacyDlpV2DeltaPresenceEstimationResult' smart constructor.
newtype GooglePrivacyDlpV2DeltaPresenceEstimationResult = GooglePrivacyDlpV2DeltaPresenceEstimationResult
  { -- | The intervals [min/probability, max/probability) do not overlap. If a value doesn\'t correspond to any such interval, the associated frequency is zero. For example, the following records: {min/probability: 0, max/probability: 0.1, frequency: 17} {min/probability: 0.2, max/probability: 0.3, frequency: 42} {min/probability: 0.3, max/probability: 0.4, frequency: 99} mean that there are no record with an estimated probability in [0.1, 0.2) nor larger or equal to 0.4.
    deltaPresenceEstimationHistogram ::
      ( Core.Maybe
          [GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket]
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DeltaPresenceEstimationResult' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DeltaPresenceEstimationResult ::
  GooglePrivacyDlpV2DeltaPresenceEstimationResult
newGooglePrivacyDlpV2DeltaPresenceEstimationResult =
  GooglePrivacyDlpV2DeltaPresenceEstimationResult
    { deltaPresenceEstimationHistogram =
        Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2DeltaPresenceEstimationResult
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DeltaPresenceEstimationResult"
      ( \o ->
          GooglePrivacyDlpV2DeltaPresenceEstimationResult
            Core.<$> (o Core..:? "deltaPresenceEstimationHistogram")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2DeltaPresenceEstimationResult
  where
  toJSON GooglePrivacyDlpV2DeltaPresenceEstimationResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("deltaPresenceEstimationHistogram" Core..=)
              Core.<$> deltaPresenceEstimationHistogram
          ]
      )

-- | Deprecated; use @InspectionRuleSet@ instead. Rule for modifying a @CustomInfoType@ to alter behavior under certain circumstances, depending on the specific details of the rule. Not supported for the @surrogate_type@ custom infoType.
--
-- /See:/ 'newGooglePrivacyDlpV2DetectionRule' smart constructor.
newtype GooglePrivacyDlpV2DetectionRule = GooglePrivacyDlpV2DetectionRule
  { -- | Hotword-based detection rule.
    hotwordRule :: (Core.Maybe GooglePrivacyDlpV2HotwordRule)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DetectionRule' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DetectionRule ::
  GooglePrivacyDlpV2DetectionRule
newGooglePrivacyDlpV2DetectionRule =
  GooglePrivacyDlpV2DetectionRule {hotwordRule = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2DetectionRule where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DetectionRule"
      ( \o ->
          GooglePrivacyDlpV2DetectionRule
            Core.<$> (o Core..:? "hotwordRule")
      )

instance Core.ToJSON GooglePrivacyDlpV2DetectionRule where
  toJSON GooglePrivacyDlpV2DetectionRule {..} =
    Core.object
      (Core.catMaybes [("hotwordRule" Core..=) Core.<$> hotwordRule])

-- | Custom information type based on a dictionary of words or phrases. This can be used to match sensitive information specific to the data, such as a list of employee IDs or job titles. Dictionary words are case-insensitive and all characters other than letters and digits in the unicode <https://en.wikipedia.org/wiki/Plane_%28Unicode%29#Basic_Multilingual_Plane Basic Multilingual Plane> will be replaced with whitespace when scanning for matches, so the dictionary phrase \"Sam Johnson\" will match all three phrases \"sam johnson\", \"Sam, Johnson\", and \"Sam (Johnson)\". Additionally, the characters surrounding any match must be of a different type than the adjacent characters within the word, so letters must be next to non-letters and digits next to non-digits. For example, the dictionary word \"jen\" will match the first three letters of the text \"jen123\" but will return no matches for \"jennifer\". Dictionary words containing a large number of characters that are not letters or digits may result in
-- unexpected findings because such characters are treated as whitespace. The <https://cloud.google.com/sensitive-data-protection/limits limits> page contains details about the size limits of dictionaries. For dictionaries that do not fit within these constraints, consider using @LargeCustomDictionaryConfig@ in the @StoredInfoType@ API.
--
-- /See:/ 'newGooglePrivacyDlpV2Dictionary' smart constructor.
data GooglePrivacyDlpV2Dictionary = GooglePrivacyDlpV2Dictionary
  { -- | Newline-delimited file of words in Cloud Storage. Only a single file is accepted.
    cloudStoragePath :: (Core.Maybe GooglePrivacyDlpV2CloudStoragePath),
    -- | List of words or phrases to search for.
    wordList :: (Core.Maybe GooglePrivacyDlpV2WordList)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Dictionary' with the minimum fields required to make a request.
newGooglePrivacyDlpV2Dictionary ::
  GooglePrivacyDlpV2Dictionary
newGooglePrivacyDlpV2Dictionary =
  GooglePrivacyDlpV2Dictionary
    { cloudStoragePath = Core.Nothing,
      wordList = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2Dictionary where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2Dictionary"
      ( \o ->
          GooglePrivacyDlpV2Dictionary
            Core.<$> (o Core..:? "cloudStoragePath")
            Core.<*> (o Core..:? "wordList")
      )

instance Core.ToJSON GooglePrivacyDlpV2Dictionary where
  toJSON GooglePrivacyDlpV2Dictionary {..} =
    Core.object
      ( Core.catMaybes
          [ ("cloudStoragePath" Core..=) Core.<$> cloudStoragePath,
            ("wordList" Core..=) Core.<$> wordList
          ]
      )

-- | Do not profile the tables.
--
-- /See:/ 'newGooglePrivacyDlpV2Disabled' smart constructor.
data GooglePrivacyDlpV2Disabled = GooglePrivacyDlpV2Disabled
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Disabled' with the minimum fields required to make a request.
newGooglePrivacyDlpV2Disabled ::
  GooglePrivacyDlpV2Disabled
newGooglePrivacyDlpV2Disabled = GooglePrivacyDlpV2Disabled

instance Core.FromJSON GooglePrivacyDlpV2Disabled where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2Disabled"
      (\o -> Core.pure GooglePrivacyDlpV2Disabled)

instance Core.ToJSON GooglePrivacyDlpV2Disabled where
  toJSON = Core.const Core.emptyObject

-- | Requirements that must be true before a table is scanned in discovery for the first time. There is an AND relationship between the top-level attributes. Additionally, minimum conditions with an OR relationship that must be met before Cloud DLP scans a table can be set (like a minimum row count or a minimum table age).
--
-- /See:/ 'newGooglePrivacyDlpV2DiscoveryBigQueryConditions' smart constructor.
data GooglePrivacyDlpV2DiscoveryBigQueryConditions = GooglePrivacyDlpV2DiscoveryBigQueryConditions
  { -- | BigQuery table must have been created after this date. Used to avoid backfilling.
    createdAfter :: (Core.Maybe Core.DateTime),
    -- | At least one of the conditions must be true for a table to be scanned.
    orConditions :: (Core.Maybe GooglePrivacyDlpV2OrConditions),
    -- | Restrict discovery to categories of table types.
    typeCollection ::
      ( Core.Maybe
          GooglePrivacyDlpV2DiscoveryBigQueryConditions_TypeCollection
      ),
    -- | Restrict discovery to specific table types.
    types :: (Core.Maybe GooglePrivacyDlpV2BigQueryTableTypes)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DiscoveryBigQueryConditions' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DiscoveryBigQueryConditions ::
  GooglePrivacyDlpV2DiscoveryBigQueryConditions
newGooglePrivacyDlpV2DiscoveryBigQueryConditions =
  GooglePrivacyDlpV2DiscoveryBigQueryConditions
    { createdAfter =
        Core.Nothing,
      orConditions = Core.Nothing,
      typeCollection = Core.Nothing,
      types = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2DiscoveryBigQueryConditions
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DiscoveryBigQueryConditions"
      ( \o ->
          GooglePrivacyDlpV2DiscoveryBigQueryConditions
            Core.<$> (o Core..:? "createdAfter")
            Core.<*> (o Core..:? "orConditions")
            Core.<*> (o Core..:? "typeCollection")
            Core.<*> (o Core..:? "types")
      )

instance Core.ToJSON GooglePrivacyDlpV2DiscoveryBigQueryConditions where
  toJSON GooglePrivacyDlpV2DiscoveryBigQueryConditions {..} =
    Core.object
      ( Core.catMaybes
          [ ("createdAfter" Core..=) Core.<$> createdAfter,
            ("orConditions" Core..=) Core.<$> orConditions,
            ("typeCollection" Core..=) Core.<$> typeCollection,
            ("types" Core..=) Core.<$> types
          ]
      )

-- | Determines what tables will have profiles generated within an organization or project. Includes the ability to filter by regular expression patterns on project ID, dataset ID, and table ID.
--
-- /See:/ 'newGooglePrivacyDlpV2DiscoveryBigQueryFilter' smart constructor.
data GooglePrivacyDlpV2DiscoveryBigQueryFilter = GooglePrivacyDlpV2DiscoveryBigQueryFilter
  { -- | Catch-all. This should always be the last filter in the list because anything above it will apply first. Should only appear once in a configuration. If none is specified, a default one will be added automatically.
    otherTables :: (Core.Maybe GooglePrivacyDlpV2AllOtherBigQueryTables),
    -- | The table to scan. Discovery configurations including this can only include one DiscoveryTarget (the DiscoveryTarget with this TableReference).
    tableReference :: (Core.Maybe GooglePrivacyDlpV2TableReference),
    -- | A specific set of tables for this filter to apply to. A table collection must be specified in only one filter per config. If a table id or dataset is empty, Cloud DLP assumes all tables in that collection must be profiled. Must specify a project ID.
    tables :: (Core.Maybe GooglePrivacyDlpV2BigQueryTableCollection)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DiscoveryBigQueryFilter' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DiscoveryBigQueryFilter ::
  GooglePrivacyDlpV2DiscoveryBigQueryFilter
newGooglePrivacyDlpV2DiscoveryBigQueryFilter =
  GooglePrivacyDlpV2DiscoveryBigQueryFilter
    { otherTables =
        Core.Nothing,
      tableReference = Core.Nothing,
      tables = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2DiscoveryBigQueryFilter where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DiscoveryBigQueryFilter"
      ( \o ->
          GooglePrivacyDlpV2DiscoveryBigQueryFilter
            Core.<$> (o Core..:? "otherTables")
            Core.<*> (o Core..:? "tableReference")
            Core.<*> (o Core..:? "tables")
      )

instance Core.ToJSON GooglePrivacyDlpV2DiscoveryBigQueryFilter where
  toJSON GooglePrivacyDlpV2DiscoveryBigQueryFilter {..} =
    Core.object
      ( Core.catMaybes
          [ ("otherTables" Core..=) Core.<$> otherTables,
            ("tableReference" Core..=) Core.<$> tableReference,
            ("tables" Core..=) Core.<$> tables
          ]
      )

-- | Requirements that must be true before a table is profiled for the first time.
--
-- /See:/ 'newGooglePrivacyDlpV2DiscoveryCloudSqlConditions' smart constructor.
data GooglePrivacyDlpV2DiscoveryCloudSqlConditions = GooglePrivacyDlpV2DiscoveryCloudSqlConditions
  { -- | Optional. Database engines that should be profiled. Optional. Defaults to ALL/SUPPORTED/DATABASE_ENGINES if unspecified.
    databaseEngines ::
      ( Core.Maybe
          [GooglePrivacyDlpV2DiscoveryCloudSqlConditions_DatabaseEnginesItem]
      ),
    -- | Data profiles will only be generated for the database resource types specified in this field. If not specified, defaults to [DATABASE/RESOURCE/TYPE/ALL/SUPPORTED_TYPES].
    types ::
      ( Core.Maybe
          [GooglePrivacyDlpV2DiscoveryCloudSqlConditions_TypesItem]
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DiscoveryCloudSqlConditions' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DiscoveryCloudSqlConditions ::
  GooglePrivacyDlpV2DiscoveryCloudSqlConditions
newGooglePrivacyDlpV2DiscoveryCloudSqlConditions =
  GooglePrivacyDlpV2DiscoveryCloudSqlConditions
    { databaseEngines =
        Core.Nothing,
      types = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2DiscoveryCloudSqlConditions
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DiscoveryCloudSqlConditions"
      ( \o ->
          GooglePrivacyDlpV2DiscoveryCloudSqlConditions
            Core.<$> (o Core..:? "databaseEngines")
            Core.<*> (o Core..:? "types")
      )

instance Core.ToJSON GooglePrivacyDlpV2DiscoveryCloudSqlConditions where
  toJSON GooglePrivacyDlpV2DiscoveryCloudSqlConditions {..} =
    Core.object
      ( Core.catMaybes
          [ ("databaseEngines" Core..=) Core.<$> databaseEngines,
            ("types" Core..=) Core.<$> types
          ]
      )

-- | Determines what tables will have profiles generated within an organization or project. Includes the ability to filter by regular expression patterns on project ID, location, instance, database, and database resource name.
--
-- /See:/ 'newGooglePrivacyDlpV2DiscoveryCloudSqlFilter' smart constructor.
data GooglePrivacyDlpV2DiscoveryCloudSqlFilter = GooglePrivacyDlpV2DiscoveryCloudSqlFilter
  { -- | A specific set of database resources for this filter to apply to.
    collection :: (Core.Maybe GooglePrivacyDlpV2DatabaseResourceCollection),
    -- | The database resource to scan. Targets including this can only include one target (the target with this database resource reference).
    databaseResourceReference :: (Core.Maybe GooglePrivacyDlpV2DatabaseResourceReference),
    -- | Catch-all. This should always be the last target in the list because anything above it will apply first. Should only appear once in a configuration. If none is specified, a default one will be added automatically.
    others :: (Core.Maybe GooglePrivacyDlpV2AllOtherDatabaseResources)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DiscoveryCloudSqlFilter' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DiscoveryCloudSqlFilter ::
  GooglePrivacyDlpV2DiscoveryCloudSqlFilter
newGooglePrivacyDlpV2DiscoveryCloudSqlFilter =
  GooglePrivacyDlpV2DiscoveryCloudSqlFilter
    { collection =
        Core.Nothing,
      databaseResourceReference = Core.Nothing,
      others = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2DiscoveryCloudSqlFilter where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DiscoveryCloudSqlFilter"
      ( \o ->
          GooglePrivacyDlpV2DiscoveryCloudSqlFilter
            Core.<$> (o Core..:? "collection")
            Core.<*> (o Core..:? "databaseResourceReference")
            Core.<*> (o Core..:? "others")
      )

instance Core.ToJSON GooglePrivacyDlpV2DiscoveryCloudSqlFilter where
  toJSON GooglePrivacyDlpV2DiscoveryCloudSqlFilter {..} =
    Core.object
      ( Core.catMaybes
          [ ("collection" Core..=) Core.<$> collection,
            ("databaseResourceReference" Core..=)
              Core.<$> databaseResourceReference,
            ("others" Core..=) Core.<$> others
          ]
      )

-- | How often existing tables should have their profiles refreshed. New tables are scanned as quickly as possible depending on system capacity.
--
-- /See:/ 'newGooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence' smart constructor.
data GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence = GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence
  { -- | Governs when to update data profiles when the inspection rules defined by the @InspectTemplate@ change. If not set, changing the template will not cause a data profile to update.
    inspectTemplateModifiedCadence ::
      ( Core.Maybe
          GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence
      ),
    -- | Data changes (non-schema changes) in Cloud SQL tables can\'t trigger reprofiling. If you set this field, profiles are refreshed at this frequency regardless of whether the underlying tables have changed. Defaults to never.
    refreshFrequency ::
      ( Core.Maybe
          GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence_RefreshFrequency
      ),
    -- | When to reprofile if the schema has changed.
    schemaModifiedCadence :: (Core.Maybe GooglePrivacyDlpV2SchemaModifiedCadence)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence ::
  GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence
newGooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence =
  GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence
    { inspectTemplateModifiedCadence =
        Core.Nothing,
      refreshFrequency = Core.Nothing,
      schemaModifiedCadence = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence"
      ( \o ->
          GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence
            Core.<$> (o Core..:? "inspectTemplateModifiedCadence")
            Core.<*> (o Core..:? "refreshFrequency")
            Core.<*> (o Core..:? "schemaModifiedCadence")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence
  where
  toJSON GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence {..} =
    Core.object
      ( Core.catMaybes
          [ ("inspectTemplateModifiedCadence" Core..=)
              Core.<$> inspectTemplateModifiedCadence,
            ("refreshFrequency" Core..=) Core.<$> refreshFrequency,
            ("schemaModifiedCadence" Core..=) Core.<$> schemaModifiedCadence
          ]
      )

-- | Requirements that must be true before a Cloud Storage bucket or object is scanned in discovery for the first time. There is an AND relationship between the top-level attributes.
--
-- /See:/ 'newGooglePrivacyDlpV2DiscoveryCloudStorageConditions' smart constructor.
data GooglePrivacyDlpV2DiscoveryCloudStorageConditions = GooglePrivacyDlpV2DiscoveryCloudStorageConditions
  { -- | Required. Only objects with the specified attributes will be scanned. Defaults to [ALL/SUPPORTED/BUCKETS] if unset.
    includedBucketAttributes ::
      ( Core.Maybe
          [GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedBucketAttributesItem]
      ),
    -- | Required. Only objects with the specified attributes will be scanned. If an object has one of the specified attributes but is inside an excluded bucket, it will not be scanned. Defaults to [ALL/SUPPORTED/OBJECTS]. A profile will be created even if no objects match the included/object/attributes.
    includedObjectAttributes ::
      ( Core.Maybe
          [GooglePrivacyDlpV2DiscoveryCloudStorageConditions_IncludedObjectAttributesItem]
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DiscoveryCloudStorageConditions' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DiscoveryCloudStorageConditions ::
  GooglePrivacyDlpV2DiscoveryCloudStorageConditions
newGooglePrivacyDlpV2DiscoveryCloudStorageConditions =
  GooglePrivacyDlpV2DiscoveryCloudStorageConditions
    { includedBucketAttributes =
        Core.Nothing,
      includedObjectAttributes = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2DiscoveryCloudStorageConditions
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DiscoveryCloudStorageConditions"
      ( \o ->
          GooglePrivacyDlpV2DiscoveryCloudStorageConditions
            Core.<$> (o Core..:? "includedBucketAttributes")
            Core.<*> (o Core..:? "includedObjectAttributes")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2DiscoveryCloudStorageConditions
  where
  toJSON GooglePrivacyDlpV2DiscoveryCloudStorageConditions {..} =
    Core.object
      ( Core.catMaybes
          [ ("includedBucketAttributes" Core..=)
              Core.<$> includedBucketAttributes,
            ("includedObjectAttributes" Core..=)
              Core.<$> includedObjectAttributes
          ]
      )

-- | Determines which buckets will have profiles generated within an organization or project. Includes the ability to filter by regular expression patterns on project ID and bucket name.
--
-- /See:/ 'newGooglePrivacyDlpV2DiscoveryCloudStorageFilter' smart constructor.
data GooglePrivacyDlpV2DiscoveryCloudStorageFilter = GooglePrivacyDlpV2DiscoveryCloudStorageFilter
  { -- | Optional. The bucket to scan. Targets including this can only include one target (the target with this bucket). This enables profiling the contents of a single bucket, while the other options allow for easy profiling of many bucets within a project or an organization.
    cloudStorageResourceReference :: (Core.Maybe GooglePrivacyDlpV2CloudStorageResourceReference),
    -- | Optional. A specific set of buckets for this filter to apply to.
    collection :: (Core.Maybe GooglePrivacyDlpV2FileStoreCollection),
    -- | Optional. Catch-all. This should always be the last target in the list because anything above it will apply first. Should only appear once in a configuration. If none is specified, a default one will be added automatically.
    others :: (Core.Maybe GooglePrivacyDlpV2AllOtherResources)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DiscoveryCloudStorageFilter' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DiscoveryCloudStorageFilter ::
  GooglePrivacyDlpV2DiscoveryCloudStorageFilter
newGooglePrivacyDlpV2DiscoveryCloudStorageFilter =
  GooglePrivacyDlpV2DiscoveryCloudStorageFilter
    { cloudStorageResourceReference =
        Core.Nothing,
      collection = Core.Nothing,
      others = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2DiscoveryCloudStorageFilter
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DiscoveryCloudStorageFilter"
      ( \o ->
          GooglePrivacyDlpV2DiscoveryCloudStorageFilter
            Core.<$> (o Core..:? "cloudStorageResourceReference")
            Core.<*> (o Core..:? "collection")
            Core.<*> (o Core..:? "others")
      )

instance Core.ToJSON GooglePrivacyDlpV2DiscoveryCloudStorageFilter where
  toJSON GooglePrivacyDlpV2DiscoveryCloudStorageFilter {..} =
    Core.object
      ( Core.catMaybes
          [ ("cloudStorageResourceReference" Core..=)
              Core.<$> cloudStorageResourceReference,
            ("collection" Core..=) Core.<$> collection,
            ("others" Core..=) Core.<$> others
          ]
      )

-- | How often existing buckets should have their profiles refreshed. New buckets are scanned as quickly as possible depending on system capacity.
--
-- /See:/ 'newGooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence' smart constructor.
data GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence = GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence
  { -- | Optional. Governs when to update data profiles when the inspection rules defined by the @InspectTemplate@ change. If not set, changing the template will not cause a data profile to update.
    inspectTemplateModifiedCadence ::
      ( Core.Maybe
          GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence
      ),
    -- | Optional. Data changes in Cloud Storage can\'t trigger reprofiling. If you set this field, profiles are refreshed at this frequency regardless of whether the underlying buckets have changed. Defaults to never.
    refreshFrequency ::
      ( Core.Maybe
          GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence_RefreshFrequency
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence ::
  GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence
newGooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence =
  GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence
    { inspectTemplateModifiedCadence =
        Core.Nothing,
      refreshFrequency = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence"
      ( \o ->
          GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence
            Core.<$> (o Core..:? "inspectTemplateModifiedCadence")
            Core.<*> (o Core..:? "refreshFrequency")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence
  where
  toJSON GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence {..} =
    Core.object
      ( Core.catMaybes
          [ ("inspectTemplateModifiedCadence" Core..=)
              Core.<$> inspectTemplateModifiedCadence,
            ("refreshFrequency" Core..=) Core.<$> refreshFrequency
          ]
      )

-- | Configuration for discovery to scan resources for profile generation. Only one discovery configuration may exist per organization, folder, or project. The generated data profiles are retained according to the [data retention policy] (https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/data-profiles#retention).
--
-- /See:/ 'newGooglePrivacyDlpV2DiscoveryConfig' smart constructor.
data GooglePrivacyDlpV2DiscoveryConfig = GooglePrivacyDlpV2DiscoveryConfig
  { -- | Actions to execute at the completion of scanning.
    actions :: (Core.Maybe [GooglePrivacyDlpV2DataProfileAction]),
    -- | Output only. The creation timestamp of a DiscoveryConfig.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Display name (max 100 chars)
    displayName :: (Core.Maybe Core.Text),
    -- | Output only. A stream of errors encountered when the config was activated. Repeated errors may result in the config automatically being paused. Output only field. Will return the last 100 errors. Whenever the config is modified this list will be cleared.
    errors :: (Core.Maybe [GooglePrivacyDlpV2Error]),
    -- | Detection logic for profile generation. Not all template features are used by Discovery. FindingLimits, include/quote and exclude/info_types have no impact on Discovery. Multiple templates may be provided if there is data in multiple regions. At most one template must be specified per-region (including \"global\"). Each region is scanned using the applicable template. If no region-specific template is specified, but a \"global\" template is specified, it will be copied to that region and used instead. If no global or region-specific template is provided for a region with data, that region\'s data will not be scanned. For more information, see https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/data-profiles#data-residency.
    inspectTemplates :: (Core.Maybe [Core.Text]),
    -- | Output only. The timestamp of the last time this config was executed.
    lastRunTime :: (Core.Maybe Core.DateTime),
    -- | Unique resource name for the DiscoveryConfig, assigned by the service when the DiscoveryConfig is created, for example @projects\/dlp-test-project\/locations\/global\/discoveryConfigs\/53234423@.
    name :: (Core.Maybe Core.Text),
    -- | Only set when the parent is an org.
    orgConfig :: (Core.Maybe GooglePrivacyDlpV2OrgConfig),
    -- | Must be set only when scanning other clouds.
    otherCloudStartingLocation :: (Core.Maybe GooglePrivacyDlpV2OtherCloudDiscoveryStartingLocation),
    -- | Optional. Processing location configuration. Vertex AI dataset scanning will set processing/location.image/fallback_type to MultiRegionProcessing by default.
    processingLocation :: (Core.Maybe GooglePrivacyDlpV2ProcessingLocation),
    -- | Required. A status for this configuration.
    status :: (Core.Maybe GooglePrivacyDlpV2DiscoveryConfig_Status),
    -- | Target to match against for determining what to scan and how frequently.
    targets :: (Core.Maybe [GooglePrivacyDlpV2DiscoveryTarget]),
    -- | Output only. The last update timestamp of a DiscoveryConfig.
    updateTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DiscoveryConfig' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DiscoveryConfig ::
  GooglePrivacyDlpV2DiscoveryConfig
newGooglePrivacyDlpV2DiscoveryConfig =
  GooglePrivacyDlpV2DiscoveryConfig
    { actions = Core.Nothing,
      createTime = Core.Nothing,
      displayName = Core.Nothing,
      errors = Core.Nothing,
      inspectTemplates = Core.Nothing,
      lastRunTime = Core.Nothing,
      name = Core.Nothing,
      orgConfig = Core.Nothing,
      otherCloudStartingLocation = Core.Nothing,
      processingLocation = Core.Nothing,
      status = Core.Nothing,
      targets = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2DiscoveryConfig where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DiscoveryConfig"
      ( \o ->
          GooglePrivacyDlpV2DiscoveryConfig
            Core.<$> (o Core..:? "actions")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "errors")
            Core.<*> (o Core..:? "inspectTemplates")
            Core.<*> (o Core..:? "lastRunTime")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "orgConfig")
            Core.<*> (o Core..:? "otherCloudStartingLocation")
            Core.<*> (o Core..:? "processingLocation")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "targets")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON GooglePrivacyDlpV2DiscoveryConfig where
  toJSON GooglePrivacyDlpV2DiscoveryConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("actions" Core..=) Core.<$> actions,
            ("createTime" Core..=) Core.<$> createTime,
            ("displayName" Core..=) Core.<$> displayName,
            ("errors" Core..=) Core.<$> errors,
            ("inspectTemplates" Core..=) Core.<$> inspectTemplates,
            ("lastRunTime" Core..=) Core.<$> lastRunTime,
            ("name" Core..=) Core.<$> name,
            ("orgConfig" Core..=) Core.<$> orgConfig,
            ("otherCloudStartingLocation" Core..=)
              Core.<$> otherCloudStartingLocation,
            ("processingLocation" Core..=) Core.<$> processingLocation,
            ("status" Core..=) Core.<$> status,
            ("targets" Core..=) Core.<$> targets,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | Requirements that must be true before a file store is scanned in discovery for the first time. There is an AND relationship between the top-level attributes.
--
-- /See:/ 'newGooglePrivacyDlpV2DiscoveryFileStoreConditions' smart constructor.
data GooglePrivacyDlpV2DiscoveryFileStoreConditions = GooglePrivacyDlpV2DiscoveryFileStoreConditions
  { -- | Optional. Cloud Storage conditions.
    cloudStorageConditions :: (Core.Maybe GooglePrivacyDlpV2DiscoveryCloudStorageConditions),
    -- | Optional. File store must have been created after this date. Used to avoid backfilling.
    createdAfter :: (Core.Maybe Core.DateTime),
    -- | Optional. Minimum age a file store must have. If set, the value must be 1 hour or greater.
    minAge :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DiscoveryFileStoreConditions' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DiscoveryFileStoreConditions ::
  GooglePrivacyDlpV2DiscoveryFileStoreConditions
newGooglePrivacyDlpV2DiscoveryFileStoreConditions =
  GooglePrivacyDlpV2DiscoveryFileStoreConditions
    { cloudStorageConditions =
        Core.Nothing,
      createdAfter = Core.Nothing,
      minAge = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2DiscoveryFileStoreConditions
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DiscoveryFileStoreConditions"
      ( \o ->
          GooglePrivacyDlpV2DiscoveryFileStoreConditions
            Core.<$> (o Core..:? "cloudStorageConditions")
            Core.<*> (o Core..:? "createdAfter")
            Core.<*> (o Core..:? "minAge")
      )

instance Core.ToJSON GooglePrivacyDlpV2DiscoveryFileStoreConditions where
  toJSON GooglePrivacyDlpV2DiscoveryFileStoreConditions {..} =
    Core.object
      ( Core.catMaybes
          [ ("cloudStorageConditions" Core..=)
              Core.<$> cloudStorageConditions,
            ("createdAfter" Core..=) Core.<$> createdAfter,
            ("minAge" Core..=) Core.<$> minAge
          ]
      )

-- | What must take place for a profile to be updated and how frequently it should occur. New tables are scanned as quickly as possible depending on system capacity.
--
-- /See:/ 'newGooglePrivacyDlpV2DiscoveryGenerationCadence' smart constructor.
data GooglePrivacyDlpV2DiscoveryGenerationCadence = GooglePrivacyDlpV2DiscoveryGenerationCadence
  { -- | Governs when to update data profiles when the inspection rules defined by the @InspectTemplate@ change. If not set, changing the template will not cause a data profile to update.
    inspectTemplateModifiedCadence ::
      ( Core.Maybe
          GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence
      ),
    -- | Frequency at which profiles should be updated, regardless of whether the underlying resource has changed. Defaults to never.
    refreshFrequency ::
      ( Core.Maybe
          GooglePrivacyDlpV2DiscoveryGenerationCadence_RefreshFrequency
      ),
    -- | Governs when to update data profiles when a schema is modified.
    schemaModifiedCadence :: (Core.Maybe GooglePrivacyDlpV2DiscoverySchemaModifiedCadence),
    -- | Governs when to update data profiles when a table is modified.
    tableModifiedCadence :: (Core.Maybe GooglePrivacyDlpV2DiscoveryTableModifiedCadence)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DiscoveryGenerationCadence' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DiscoveryGenerationCadence ::
  GooglePrivacyDlpV2DiscoveryGenerationCadence
newGooglePrivacyDlpV2DiscoveryGenerationCadence =
  GooglePrivacyDlpV2DiscoveryGenerationCadence
    { inspectTemplateModifiedCadence =
        Core.Nothing,
      refreshFrequency = Core.Nothing,
      schemaModifiedCadence = Core.Nothing,
      tableModifiedCadence = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2DiscoveryGenerationCadence where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DiscoveryGenerationCadence"
      ( \o ->
          GooglePrivacyDlpV2DiscoveryGenerationCadence
            Core.<$> (o Core..:? "inspectTemplateModifiedCadence")
            Core.<*> (o Core..:? "refreshFrequency")
            Core.<*> (o Core..:? "schemaModifiedCadence")
            Core.<*> (o Core..:? "tableModifiedCadence")
      )

instance Core.ToJSON GooglePrivacyDlpV2DiscoveryGenerationCadence where
  toJSON GooglePrivacyDlpV2DiscoveryGenerationCadence {..} =
    Core.object
      ( Core.catMaybes
          [ ("inspectTemplateModifiedCadence" Core..=)
              Core.<$> inspectTemplateModifiedCadence,
            ("refreshFrequency" Core..=) Core.<$> refreshFrequency,
            ("schemaModifiedCadence" Core..=) Core.<$> schemaModifiedCadence,
            ("tableModifiedCadence" Core..=) Core.<$> tableModifiedCadence
          ]
      )

-- | The cadence at which to update data profiles when the inspection rules defined by the @InspectTemplate@ change.
--
-- /See:/ 'newGooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence' smart constructor.
newtype GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence = GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence
  { -- | How frequently data profiles can be updated when the template is modified. Defaults to never.
    frequency ::
      ( Core.Maybe
          GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence_Frequency
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence ::
  GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence
newGooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence =
  GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence
    { frequency =
        Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence"
      ( \o ->
          GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence
            Core.<$> (o Core..:? "frequency")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence
  where
  toJSON
    GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence {..} =
      Core.object
        (Core.catMaybes [("frequency" Core..=) Core.<$> frequency])

-- | Requirements that must be true before a resource is profiled for the first time.
--
-- /See:/ 'newGooglePrivacyDlpV2DiscoveryOtherCloudConditions' smart constructor.
data GooglePrivacyDlpV2DiscoveryOtherCloudConditions = GooglePrivacyDlpV2DiscoveryOtherCloudConditions
  { -- | Amazon S3 bucket conditions.
    amazonS3BucketConditions :: (Core.Maybe GooglePrivacyDlpV2AmazonS3BucketConditions),
    -- | Minimum age a resource must be before Cloud DLP can profile it. Value must be 1 hour or greater.
    minAge :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DiscoveryOtherCloudConditions' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DiscoveryOtherCloudConditions ::
  GooglePrivacyDlpV2DiscoveryOtherCloudConditions
newGooglePrivacyDlpV2DiscoveryOtherCloudConditions =
  GooglePrivacyDlpV2DiscoveryOtherCloudConditions
    { amazonS3BucketConditions =
        Core.Nothing,
      minAge = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2DiscoveryOtherCloudConditions
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DiscoveryOtherCloudConditions"
      ( \o ->
          GooglePrivacyDlpV2DiscoveryOtherCloudConditions
            Core.<$> (o Core..:? "amazonS3BucketConditions")
            Core.<*> (o Core..:? "minAge")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2DiscoveryOtherCloudConditions
  where
  toJSON GooglePrivacyDlpV2DiscoveryOtherCloudConditions {..} =
    Core.object
      ( Core.catMaybes
          [ ("amazonS3BucketConditions" Core..=)
              Core.<$> amazonS3BucketConditions,
            ("minAge" Core..=) Core.<$> minAge
          ]
      )

-- | Determines which resources from the other cloud will have profiles generated. Includes the ability to filter by resource names.
--
-- /See:/ 'newGooglePrivacyDlpV2DiscoveryOtherCloudFilter' smart constructor.
data GooglePrivacyDlpV2DiscoveryOtherCloudFilter = GooglePrivacyDlpV2DiscoveryOtherCloudFilter
  { -- | A collection of resources for this filter to apply to.
    collection :: (Core.Maybe GooglePrivacyDlpV2OtherCloudResourceCollection),
    -- | Optional. Catch-all. This should always be the last target in the list because anything above it will apply first. Should only appear once in a configuration. If none is specified, a default one will be added automatically.
    others :: (Core.Maybe GooglePrivacyDlpV2AllOtherResources),
    -- | The resource to scan. Configs using this filter can only have one target (the target with this single resource reference).
    singleResource :: (Core.Maybe GooglePrivacyDlpV2OtherCloudSingleResourceReference)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DiscoveryOtherCloudFilter' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DiscoveryOtherCloudFilter ::
  GooglePrivacyDlpV2DiscoveryOtherCloudFilter
newGooglePrivacyDlpV2DiscoveryOtherCloudFilter =
  GooglePrivacyDlpV2DiscoveryOtherCloudFilter
    { collection =
        Core.Nothing,
      others = Core.Nothing,
      singleResource = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2DiscoveryOtherCloudFilter where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DiscoveryOtherCloudFilter"
      ( \o ->
          GooglePrivacyDlpV2DiscoveryOtherCloudFilter
            Core.<$> (o Core..:? "collection")
            Core.<*> (o Core..:? "others")
            Core.<*> (o Core..:? "singleResource")
      )

instance Core.ToJSON GooglePrivacyDlpV2DiscoveryOtherCloudFilter where
  toJSON GooglePrivacyDlpV2DiscoveryOtherCloudFilter {..} =
    Core.object
      ( Core.catMaybes
          [ ("collection" Core..=) Core.<$> collection,
            ("others" Core..=) Core.<$> others,
            ("singleResource" Core..=) Core.<$> singleResource
          ]
      )

-- | How often existing resources should have their profiles refreshed. New resources are scanned as quickly as possible depending on system capacity.
--
-- /See:/ 'newGooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence' smart constructor.
data GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence = GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence
  { -- | Optional. Governs when to update data profiles when the inspection rules defined by the @InspectTemplate@ change. If not set, changing the template will not cause a data profile to update.
    inspectTemplateModifiedCadence ::
      ( Core.Maybe
          GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence
      ),
    -- | Optional. Frequency to update profiles regardless of whether the underlying resource has changes. Defaults to never.
    refreshFrequency ::
      ( Core.Maybe
          GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence_RefreshFrequency
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence ::
  GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence
newGooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence =
  GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence
    { inspectTemplateModifiedCadence =
        Core.Nothing,
      refreshFrequency = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence"
      ( \o ->
          GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence
            Core.<$> (o Core..:? "inspectTemplateModifiedCadence")
            Core.<*> (o Core..:? "refreshFrequency")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence
  where
  toJSON GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence {..} =
    Core.object
      ( Core.catMaybes
          [ ("inspectTemplateModifiedCadence" Core..=)
              Core.<$> inspectTemplateModifiedCadence,
            ("refreshFrequency" Core..=) Core.<$> refreshFrequency
          ]
      )

-- | The cadence at which to update data profiles when a schema is modified.
--
-- /See:/ 'newGooglePrivacyDlpV2DiscoverySchemaModifiedCadence' smart constructor.
data GooglePrivacyDlpV2DiscoverySchemaModifiedCadence = GooglePrivacyDlpV2DiscoverySchemaModifiedCadence
  { -- | How frequently profiles may be updated when schemas are modified. Defaults to monthly.
    frequency ::
      ( Core.Maybe
          GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_Frequency
      ),
    -- | The type of events to consider when deciding if the table\'s schema has been modified and should have the profile updated. Defaults to NEW_COLUMNS.
    types ::
      ( Core.Maybe
          [GooglePrivacyDlpV2DiscoverySchemaModifiedCadence_TypesItem]
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DiscoverySchemaModifiedCadence' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DiscoverySchemaModifiedCadence ::
  GooglePrivacyDlpV2DiscoverySchemaModifiedCadence
newGooglePrivacyDlpV2DiscoverySchemaModifiedCadence =
  GooglePrivacyDlpV2DiscoverySchemaModifiedCadence
    { frequency =
        Core.Nothing,
      types = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2DiscoverySchemaModifiedCadence
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DiscoverySchemaModifiedCadence"
      ( \o ->
          GooglePrivacyDlpV2DiscoverySchemaModifiedCadence
            Core.<$> (o Core..:? "frequency")
            Core.<*> (o Core..:? "types")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2DiscoverySchemaModifiedCadence
  where
  toJSON GooglePrivacyDlpV2DiscoverySchemaModifiedCadence {..} =
    Core.object
      ( Core.catMaybes
          [ ("frequency" Core..=) Core.<$> frequency,
            ("types" Core..=) Core.<$> types
          ]
      )

-- | The location to begin a discovery scan. Denotes an organization ID or folder ID within an organization.
--
-- /See:/ 'newGooglePrivacyDlpV2DiscoveryStartingLocation' smart constructor.
data GooglePrivacyDlpV2DiscoveryStartingLocation = GooglePrivacyDlpV2DiscoveryStartingLocation
  { -- | The ID of the folder within an organization to be scanned.
    folderId :: (Core.Maybe Core.Int64),
    -- | The ID of an organization to scan.
    organizationId :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DiscoveryStartingLocation' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DiscoveryStartingLocation ::
  GooglePrivacyDlpV2DiscoveryStartingLocation
newGooglePrivacyDlpV2DiscoveryStartingLocation =
  GooglePrivacyDlpV2DiscoveryStartingLocation
    { folderId =
        Core.Nothing,
      organizationId = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2DiscoveryStartingLocation where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DiscoveryStartingLocation"
      ( \o ->
          GooglePrivacyDlpV2DiscoveryStartingLocation
            Core.<$> (o Core..:? "folderId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "organizationId" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON GooglePrivacyDlpV2DiscoveryStartingLocation where
  toJSON GooglePrivacyDlpV2DiscoveryStartingLocation {..} =
    Core.object
      ( Core.catMaybes
          [ ("folderId" Core..=) Core.. Core.AsText Core.<$> folderId,
            ("organizationId" Core..=)
              Core.. Core.AsText
              Core.<$> organizationId
          ]
      )

-- | The cadence at which to update data profiles when a table is modified.
--
-- /See:/ 'newGooglePrivacyDlpV2DiscoveryTableModifiedCadence' smart constructor.
data GooglePrivacyDlpV2DiscoveryTableModifiedCadence = GooglePrivacyDlpV2DiscoveryTableModifiedCadence
  { -- | How frequently data profiles can be updated when tables are modified. Defaults to never.
    frequency ::
      ( Core.Maybe
          GooglePrivacyDlpV2DiscoveryTableModifiedCadence_Frequency
      ),
    -- | The type of events to consider when deciding if the table has been modified and should have the profile updated. Defaults to MODIFIED_TIMESTAMP.
    types ::
      ( Core.Maybe
          [GooglePrivacyDlpV2DiscoveryTableModifiedCadence_TypesItem]
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DiscoveryTableModifiedCadence' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DiscoveryTableModifiedCadence ::
  GooglePrivacyDlpV2DiscoveryTableModifiedCadence
newGooglePrivacyDlpV2DiscoveryTableModifiedCadence =
  GooglePrivacyDlpV2DiscoveryTableModifiedCadence
    { frequency =
        Core.Nothing,
      types = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2DiscoveryTableModifiedCadence
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DiscoveryTableModifiedCadence"
      ( \o ->
          GooglePrivacyDlpV2DiscoveryTableModifiedCadence
            Core.<$> (o Core..:? "frequency")
            Core.<*> (o Core..:? "types")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2DiscoveryTableModifiedCadence
  where
  toJSON GooglePrivacyDlpV2DiscoveryTableModifiedCadence {..} =
    Core.object
      ( Core.catMaybes
          [ ("frequency" Core..=) Core.<$> frequency,
            ("types" Core..=) Core.<$> types
          ]
      )

-- | Target used to match against for Discovery.
--
-- /See:/ 'newGooglePrivacyDlpV2DiscoveryTarget' smart constructor.
data GooglePrivacyDlpV2DiscoveryTarget = GooglePrivacyDlpV2DiscoveryTarget
  { -- | BigQuery target for Discovery. The first target to match a table will be the one applied.
    bigQueryTarget :: (Core.Maybe GooglePrivacyDlpV2BigQueryDiscoveryTarget),
    -- | Cloud SQL target for Discovery. The first target to match a table will be the one applied.
    cloudSqlTarget :: (Core.Maybe GooglePrivacyDlpV2CloudSqlDiscoveryTarget),
    -- | Cloud Storage target for Discovery. The first target to match a table will be the one applied.
    cloudStorageTarget :: (Core.Maybe GooglePrivacyDlpV2CloudStorageDiscoveryTarget),
    -- | Other clouds target for discovery. The first target to match a resource will be the one applied.
    otherCloudTarget :: (Core.Maybe GooglePrivacyDlpV2OtherCloudDiscoveryTarget),
    -- | Discovery target that looks for credentials and secrets stored in cloud resource metadata and reports them as vulnerabilities to Security Command Center. Only one target of this type is allowed.
    secretsTarget :: (Core.Maybe GooglePrivacyDlpV2SecretsDiscoveryTarget),
    -- | Vertex AI dataset target for Discovery. The first target to match a dataset will be the one applied. Note that discovery for Vertex AI can incur Cloud Storage Class B operation charges for storage.objects.get operations and retrieval fees. For more information, see <https://cloud.google.com/storage/pricing#price-tables Cloud Storage pricing>. Note that discovery for Vertex AI dataset will not be able to scan images unless DiscoveryConfig.processing/location.image/fallback/location has multi/region/processing or global/processing configured.
    vertexDatasetTarget :: (Core.Maybe GooglePrivacyDlpV2VertexDatasetDiscoveryTarget)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DiscoveryTarget' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DiscoveryTarget ::
  GooglePrivacyDlpV2DiscoveryTarget
newGooglePrivacyDlpV2DiscoveryTarget =
  GooglePrivacyDlpV2DiscoveryTarget
    { bigQueryTarget = Core.Nothing,
      cloudSqlTarget = Core.Nothing,
      cloudStorageTarget = Core.Nothing,
      otherCloudTarget = Core.Nothing,
      secretsTarget = Core.Nothing,
      vertexDatasetTarget = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2DiscoveryTarget where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DiscoveryTarget"
      ( \o ->
          GooglePrivacyDlpV2DiscoveryTarget
            Core.<$> (o Core..:? "bigQueryTarget")
            Core.<*> (o Core..:? "cloudSqlTarget")
            Core.<*> (o Core..:? "cloudStorageTarget")
            Core.<*> (o Core..:? "otherCloudTarget")
            Core.<*> (o Core..:? "secretsTarget")
            Core.<*> (o Core..:? "vertexDatasetTarget")
      )

instance Core.ToJSON GooglePrivacyDlpV2DiscoveryTarget where
  toJSON GooglePrivacyDlpV2DiscoveryTarget {..} =
    Core.object
      ( Core.catMaybes
          [ ("bigQueryTarget" Core..=) Core.<$> bigQueryTarget,
            ("cloudSqlTarget" Core..=) Core.<$> cloudSqlTarget,
            ("cloudStorageTarget" Core..=) Core.<$> cloudStorageTarget,
            ("otherCloudTarget" Core..=) Core.<$> otherCloudTarget,
            ("secretsTarget" Core..=) Core.<$> secretsTarget,
            ("vertexDatasetTarget" Core..=) Core.<$> vertexDatasetTarget
          ]
      )

-- | Requirements that must be true before a dataset is profiled for the first time.
--
-- /See:/ 'newGooglePrivacyDlpV2DiscoveryVertexDatasetConditions' smart constructor.
data GooglePrivacyDlpV2DiscoveryVertexDatasetConditions = GooglePrivacyDlpV2DiscoveryVertexDatasetConditions
  { -- | Vertex AI dataset must have been created after this date. Used to avoid backfilling.
    createdAfter :: (Core.Maybe Core.DateTime),
    -- | Minimum age a Vertex AI dataset must have. If set, the value must be 1 hour or greater.
    minAge :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DiscoveryVertexDatasetConditions' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DiscoveryVertexDatasetConditions ::
  GooglePrivacyDlpV2DiscoveryVertexDatasetConditions
newGooglePrivacyDlpV2DiscoveryVertexDatasetConditions =
  GooglePrivacyDlpV2DiscoveryVertexDatasetConditions
    { createdAfter =
        Core.Nothing,
      minAge = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2DiscoveryVertexDatasetConditions
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DiscoveryVertexDatasetConditions"
      ( \o ->
          GooglePrivacyDlpV2DiscoveryVertexDatasetConditions
            Core.<$> (o Core..:? "createdAfter")
            Core.<*> (o Core..:? "minAge")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2DiscoveryVertexDatasetConditions
  where
  toJSON GooglePrivacyDlpV2DiscoveryVertexDatasetConditions {..} =
    Core.object
      ( Core.catMaybes
          [ ("createdAfter" Core..=) Core.<$> createdAfter,
            ("minAge" Core..=) Core.<$> minAge
          ]
      )

-- | Determines what datasets will have profiles generated within an organization or project. Includes the ability to filter by regular expression patterns on project ID or dataset regex.
--
-- /See:/ 'newGooglePrivacyDlpV2DiscoveryVertexDatasetFilter' smart constructor.
data GooglePrivacyDlpV2DiscoveryVertexDatasetFilter = GooglePrivacyDlpV2DiscoveryVertexDatasetFilter
  { -- | A specific set of Vertex AI datasets for this filter to apply to.
    collection :: (Core.Maybe GooglePrivacyDlpV2VertexDatasetCollection),
    -- | Catch-all. This should always be the last target in the list because anything above it will apply first. Should only appear once in a configuration. If none is specified, a default one will be added automatically.
    others :: (Core.Maybe GooglePrivacyDlpV2AllOtherResources),
    -- | The dataset resource to scan. Targets including this can only include one target (the target with this dataset resource reference).
    vertexDatasetResourceReference :: (Core.Maybe GooglePrivacyDlpV2VertexDatasetResourceReference)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DiscoveryVertexDatasetFilter' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DiscoveryVertexDatasetFilter ::
  GooglePrivacyDlpV2DiscoveryVertexDatasetFilter
newGooglePrivacyDlpV2DiscoveryVertexDatasetFilter =
  GooglePrivacyDlpV2DiscoveryVertexDatasetFilter
    { collection =
        Core.Nothing,
      others = Core.Nothing,
      vertexDatasetResourceReference = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2DiscoveryVertexDatasetFilter
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DiscoveryVertexDatasetFilter"
      ( \o ->
          GooglePrivacyDlpV2DiscoveryVertexDatasetFilter
            Core.<$> (o Core..:? "collection")
            Core.<*> (o Core..:? "others")
            Core.<*> (o Core..:? "vertexDatasetResourceReference")
      )

instance Core.ToJSON GooglePrivacyDlpV2DiscoveryVertexDatasetFilter where
  toJSON GooglePrivacyDlpV2DiscoveryVertexDatasetFilter {..} =
    Core.object
      ( Core.catMaybes
          [ ("collection" Core..=) Core.<$> collection,
            ("others" Core..=) Core.<$> others,
            ("vertexDatasetResourceReference" Core..=)
              Core.<$> vertexDatasetResourceReference
          ]
      )

-- | How often existing datasets should have their profiles refreshed. New datasets are scanned as quickly as possible depending on system capacity.
--
-- /See:/ 'newGooglePrivacyDlpV2DiscoveryVertexDatasetGenerationCadence' smart constructor.
data GooglePrivacyDlpV2DiscoveryVertexDatasetGenerationCadence = GooglePrivacyDlpV2DiscoveryVertexDatasetGenerationCadence
  { -- | Governs when to update data profiles when the inspection rules defined by the @InspectTemplate@ change. If not set, changing the template will not cause a data profile to be updated.
    inspectTemplateModifiedCadence ::
      ( Core.Maybe
          GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence
      ),
    -- | If you set this field, profiles are refreshed at this frequency regardless of whether the underlying datasets have changed. Defaults to never.
    refreshFrequency ::
      ( Core.Maybe
          GooglePrivacyDlpV2DiscoveryVertexDatasetGenerationCadence_RefreshFrequency
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DiscoveryVertexDatasetGenerationCadence' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DiscoveryVertexDatasetGenerationCadence ::
  GooglePrivacyDlpV2DiscoveryVertexDatasetGenerationCadence
newGooglePrivacyDlpV2DiscoveryVertexDatasetGenerationCadence =
  GooglePrivacyDlpV2DiscoveryVertexDatasetGenerationCadence
    { inspectTemplateModifiedCadence =
        Core.Nothing,
      refreshFrequency = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2DiscoveryVertexDatasetGenerationCadence
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DiscoveryVertexDatasetGenerationCadence"
      ( \o ->
          GooglePrivacyDlpV2DiscoveryVertexDatasetGenerationCadence
            Core.<$> (o Core..:? "inspectTemplateModifiedCadence")
            Core.<*> (o Core..:? "refreshFrequency")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2DiscoveryVertexDatasetGenerationCadence
  where
  toJSON
    GooglePrivacyDlpV2DiscoveryVertexDatasetGenerationCadence {..} =
      Core.object
        ( Core.catMaybes
            [ ("inspectTemplateModifiedCadence" Core..=)
                Core.<$> inspectTemplateModifiedCadence,
              ("refreshFrequency" Core..=) Core.<$> refreshFrequency
            ]
        )

-- | Combines all of the information about a DLP job.
--
-- /See:/ 'newGooglePrivacyDlpV2DlpJob' smart constructor.
data GooglePrivacyDlpV2DlpJob = GooglePrivacyDlpV2DlpJob
  { -- | Events that should occur after the job has completed.
    actionDetails :: (Core.Maybe [GooglePrivacyDlpV2ActionDetails]),
    -- | Time when the job was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Time when the job finished.
    endTime :: (Core.Maybe Core.DateTime),
    -- | A stream of errors encountered running the job.
    errors :: (Core.Maybe [GooglePrivacyDlpV2Error]),
    -- | Results from inspecting a data source.
    inspectDetails :: (Core.Maybe GooglePrivacyDlpV2InspectDataSourceDetails),
    -- | If created by a job trigger, the resource name of the trigger that instantiated the job.
    jobTriggerName :: (Core.Maybe Core.Text),
    -- | Time when the job was last modified by the system.
    lastModified :: (Core.Maybe Core.DateTime),
    -- | The server-assigned name.
    name :: (Core.Maybe Core.Text),
    -- | Results from analyzing risk of a data source.
    riskDetails :: (Core.Maybe GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails),
    -- | Time when the job started.
    startTime :: (Core.Maybe Core.DateTime),
    -- | State of a job.
    state :: (Core.Maybe GooglePrivacyDlpV2DlpJob_State),
    -- | The type of job.
    type' :: (Core.Maybe GooglePrivacyDlpV2DlpJob_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DlpJob' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DlpJob ::
  GooglePrivacyDlpV2DlpJob
newGooglePrivacyDlpV2DlpJob =
  GooglePrivacyDlpV2DlpJob
    { actionDetails = Core.Nothing,
      createTime = Core.Nothing,
      endTime = Core.Nothing,
      errors = Core.Nothing,
      inspectDetails = Core.Nothing,
      jobTriggerName = Core.Nothing,
      lastModified = Core.Nothing,
      name = Core.Nothing,
      riskDetails = Core.Nothing,
      startTime = Core.Nothing,
      state = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2DlpJob where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DlpJob"
      ( \o ->
          GooglePrivacyDlpV2DlpJob
            Core.<$> (o Core..:? "actionDetails")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "errors")
            Core.<*> (o Core..:? "inspectDetails")
            Core.<*> (o Core..:? "jobTriggerName")
            Core.<*> (o Core..:? "lastModified")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "riskDetails")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON GooglePrivacyDlpV2DlpJob where
  toJSON GooglePrivacyDlpV2DlpJob {..} =
    Core.object
      ( Core.catMaybes
          [ ("actionDetails" Core..=) Core.<$> actionDetails,
            ("createTime" Core..=) Core.<$> createTime,
            ("endTime" Core..=) Core.<$> endTime,
            ("errors" Core..=) Core.<$> errors,
            ("inspectDetails" Core..=) Core.<$> inspectDetails,
            ("jobTriggerName" Core..=) Core.<$> jobTriggerName,
            ("lastModified" Core..=) Core.<$> lastModified,
            ("name" Core..=) Core.<$> name,
            ("riskDetails" Core..=) Core.<$> riskDetails,
            ("startTime" Core..=) Core.<$> startTime,
            ("state" Core..=) Core.<$> state,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Location of a finding within a document.
--
-- /See:/ 'newGooglePrivacyDlpV2DocumentLocation' smart constructor.
newtype GooglePrivacyDlpV2DocumentLocation = GooglePrivacyDlpV2DocumentLocation
  { -- | Offset of the line, from the beginning of the file, where the finding is located.
    fileOffset :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DocumentLocation' with the minimum fields required to make a request.
newGooglePrivacyDlpV2DocumentLocation ::
  GooglePrivacyDlpV2DocumentLocation
newGooglePrivacyDlpV2DocumentLocation =
  GooglePrivacyDlpV2DocumentLocation {fileOffset = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2DocumentLocation where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DocumentLocation"
      ( \o ->
          GooglePrivacyDlpV2DocumentLocation
            Core.<$> (o Core..:? "fileOffset" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON GooglePrivacyDlpV2DocumentLocation where
  toJSON GooglePrivacyDlpV2DocumentLocation {..} =
    Core.object
      ( Core.catMaybes
          [("fileOffset" Core..=) Core.. Core.AsText Core.<$> fileOffset]
      )

-- | An entity in a dataset is a field or set of fields that correspond to a single person. For example, in medical records the @EntityId@ might be a patient identifier, or for financial records it might be an account identifier. This message is used when generalizations or analysis must take into account that multiple rows correspond to the same entity.
--
-- /See:/ 'newGooglePrivacyDlpV2EntityId' smart constructor.
newtype GooglePrivacyDlpV2EntityId = GooglePrivacyDlpV2EntityId
  { -- | Composite key indicating which field contains the entity identifier.
    field :: (Core.Maybe GooglePrivacyDlpV2FieldId)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2EntityId' with the minimum fields required to make a request.
newGooglePrivacyDlpV2EntityId ::
  GooglePrivacyDlpV2EntityId
newGooglePrivacyDlpV2EntityId =
  GooglePrivacyDlpV2EntityId {field = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2EntityId where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2EntityId"
      (\o -> GooglePrivacyDlpV2EntityId Core.<$> (o Core..:? "field"))

instance Core.ToJSON GooglePrivacyDlpV2EntityId where
  toJSON GooglePrivacyDlpV2EntityId {..} =
    Core.object (Core.catMaybes [("field" Core..=) Core.<$> field])

-- | Details information about an error encountered during job execution or the results of an unsuccessful activation of the JobTrigger.
--
-- /See:/ 'newGooglePrivacyDlpV2Error' smart constructor.
data GooglePrivacyDlpV2Error = GooglePrivacyDlpV2Error
  { -- | Detailed error codes and messages.
    details :: (Core.Maybe GoogleRpcStatus),
    -- | Additional information about the error.
    extraInfo :: (Core.Maybe GooglePrivacyDlpV2Error_ExtraInfo),
    -- | The times the error occurred. List includes the oldest timestamp and the last 9 timestamps.
    timestamps :: (Core.Maybe [Core.DateTime])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Error' with the minimum fields required to make a request.
newGooglePrivacyDlpV2Error ::
  GooglePrivacyDlpV2Error
newGooglePrivacyDlpV2Error =
  GooglePrivacyDlpV2Error
    { details = Core.Nothing,
      extraInfo = Core.Nothing,
      timestamps = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2Error where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2Error"
      ( \o ->
          GooglePrivacyDlpV2Error
            Core.<$> (o Core..:? "details")
            Core.<*> (o Core..:? "extraInfo")
            Core.<*> (o Core..:? "timestamps")
      )

instance Core.ToJSON GooglePrivacyDlpV2Error where
  toJSON GooglePrivacyDlpV2Error {..} =
    Core.object
      ( Core.catMaybes
          [ ("details" Core..=) Core.<$> details,
            ("extraInfo" Core..=) Core.<$> extraInfo,
            ("timestamps" Core..=) Core.<$> timestamps
          ]
      )

-- | The rule to exclude findings based on a hotword. For record inspection of tables, column names are considered hotwords. An example of this is to exclude a finding if it belongs to a BigQuery column that matches a specific pattern.
--
-- /See:/ 'newGooglePrivacyDlpV2ExcludeByHotword' smart constructor.
data GooglePrivacyDlpV2ExcludeByHotword = GooglePrivacyDlpV2ExcludeByHotword
  { -- | Regular expression pattern defining what qualifies as a hotword.
    hotwordRegex :: (Core.Maybe GooglePrivacyDlpV2Regex),
    -- | Range of characters within which the entire hotword must reside. The total length of the window cannot exceed 1000 characters. The windowBefore property in proximity should be set to 1 if the hotword needs to be included in a column header.
    proximity :: (Core.Maybe GooglePrivacyDlpV2Proximity)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ExcludeByHotword' with the minimum fields required to make a request.
newGooglePrivacyDlpV2ExcludeByHotword ::
  GooglePrivacyDlpV2ExcludeByHotword
newGooglePrivacyDlpV2ExcludeByHotword =
  GooglePrivacyDlpV2ExcludeByHotword
    { hotwordRegex = Core.Nothing,
      proximity = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2ExcludeByHotword where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ExcludeByHotword"
      ( \o ->
          GooglePrivacyDlpV2ExcludeByHotword
            Core.<$> (o Core..:? "hotwordRegex")
            Core.<*> (o Core..:? "proximity")
      )

instance Core.ToJSON GooglePrivacyDlpV2ExcludeByHotword where
  toJSON GooglePrivacyDlpV2ExcludeByHotword {..} =
    Core.object
      ( Core.catMaybes
          [ ("hotwordRegex" Core..=) Core.<$> hotwordRegex,
            ("proximity" Core..=) Core.<$> proximity
          ]
      )

-- | List of excluded infoTypes.
--
-- /See:/ 'newGooglePrivacyDlpV2ExcludeInfoTypes' smart constructor.
newtype GooglePrivacyDlpV2ExcludeInfoTypes = GooglePrivacyDlpV2ExcludeInfoTypes
  { -- | InfoType list in ExclusionRule rule drops a finding when it overlaps or contained within with a finding of an infoType from this list. For example, for @InspectionRuleSet.info_types@ containing \"PHONE/NUMBER\"@and@exclusion/rule@containing@exclude/info/types.info/types\` with \"EMAIL/ADDRESS\" the phone number findings are dropped if they overlap with EMAIL_ADDRESS finding. That leads to \"555-222-2222\@example.org\" to generate only a single finding, namely email address.
    infoTypes :: (Core.Maybe [GooglePrivacyDlpV2InfoType])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ExcludeInfoTypes' with the minimum fields required to make a request.
newGooglePrivacyDlpV2ExcludeInfoTypes ::
  GooglePrivacyDlpV2ExcludeInfoTypes
newGooglePrivacyDlpV2ExcludeInfoTypes =
  GooglePrivacyDlpV2ExcludeInfoTypes {infoTypes = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2ExcludeInfoTypes where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ExcludeInfoTypes"
      ( \o ->
          GooglePrivacyDlpV2ExcludeInfoTypes
            Core.<$> (o Core..:? "infoTypes")
      )

instance Core.ToJSON GooglePrivacyDlpV2ExcludeInfoTypes where
  toJSON GooglePrivacyDlpV2ExcludeInfoTypes {..} =
    Core.object
      (Core.catMaybes [("infoTypes" Core..=) Core.<$> infoTypes])

-- | The rule that specifies conditions when findings of infoTypes specified in @InspectionRuleSet@ are removed from results.
--
-- /See:/ 'newGooglePrivacyDlpV2ExclusionRule' smart constructor.
data GooglePrivacyDlpV2ExclusionRule = GooglePrivacyDlpV2ExclusionRule
  { -- | Dictionary which defines the rule.
    dictionary :: (Core.Maybe GooglePrivacyDlpV2Dictionary),
    -- | Drop if the hotword rule is contained in the proximate context. For tabular data, the context includes the column name.
    excludeByHotword :: (Core.Maybe GooglePrivacyDlpV2ExcludeByHotword),
    -- | Set of infoTypes for which findings would affect this rule.
    excludeInfoTypes :: (Core.Maybe GooglePrivacyDlpV2ExcludeInfoTypes),
    -- | How the rule is applied, see MatchingType documentation for details.
    matchingType :: (Core.Maybe GooglePrivacyDlpV2ExclusionRule_MatchingType),
    -- | Regular expression which defines the rule.
    regex :: (Core.Maybe GooglePrivacyDlpV2Regex)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ExclusionRule' with the minimum fields required to make a request.
newGooglePrivacyDlpV2ExclusionRule ::
  GooglePrivacyDlpV2ExclusionRule
newGooglePrivacyDlpV2ExclusionRule =
  GooglePrivacyDlpV2ExclusionRule
    { dictionary = Core.Nothing,
      excludeByHotword = Core.Nothing,
      excludeInfoTypes = Core.Nothing,
      matchingType = Core.Nothing,
      regex = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2ExclusionRule where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ExclusionRule"
      ( \o ->
          GooglePrivacyDlpV2ExclusionRule
            Core.<$> (o Core..:? "dictionary")
            Core.<*> (o Core..:? "excludeByHotword")
            Core.<*> (o Core..:? "excludeInfoTypes")
            Core.<*> (o Core..:? "matchingType")
            Core.<*> (o Core..:? "regex")
      )

instance Core.ToJSON GooglePrivacyDlpV2ExclusionRule where
  toJSON GooglePrivacyDlpV2ExclusionRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("dictionary" Core..=) Core.<$> dictionary,
            ("excludeByHotword" Core..=) Core.<$> excludeByHotword,
            ("excludeInfoTypes" Core..=) Core.<$> excludeInfoTypes,
            ("matchingType" Core..=) Core.<$> matchingType,
            ("regex" Core..=) Core.<$> regex
          ]
      )

-- | If set, the detailed data profiles will be persisted to the location of your choice whenever updated.
--
-- /See:/ 'newGooglePrivacyDlpV2Export' smart constructor.
data GooglePrivacyDlpV2Export = GooglePrivacyDlpV2Export
  { -- | Store all profiles to BigQuery. * The system will create a new dataset and table for you if none are are provided. The dataset will be named @sensitive_data_protection_discovery@ and table will be named @discovery_profiles@. This table will be placed in the same project as the container project running the scan. After the first profile is generated and the dataset and table are created, the discovery scan configuration will be updated with the dataset and table names. * See <https://cloud.google.com/sensitive-data-protection/docs/analyze-data-profiles Analyze data profiles stored in BigQuery>. * See <https://cloud.google.com/sensitive-data-protection/docs/analyze-data-profiles#sample_sql_queries Sample queries for your BigQuery table>. * Data is inserted using <https://cloud.google.com/blog/products/bigquery/life-of-a-bigquery-streaming-insert streaming insert> and so data may be in the buffer for a period of time after the profile has finished. * The Pub\/Sub notification is sent before the streaming buffer
    -- is guaranteed to be written, so data may not be instantly visible to queries by the time your topic receives the Pub\/Sub notification. * The best practice is to use the same table for an entire organization so that you can take advantage of the <https://cloud.google.com/sensitive-data-protection/docs/analyze-data-profiles#use_a_premade_report provided Looker reports>. If you use VPC Service Controls to define security perimeters, then you must use a separate table for each boundary.
    profileTable :: (Core.Maybe GooglePrivacyDlpV2BigQueryTable),
    -- | Store sample data profile findings in an existing table or a new table in an existing dataset. Each regeneration will result in new rows in BigQuery. Data is inserted using <https://cloud.google.com/blog/products/bigquery/life-of-a-bigquery-streaming-insert streaming insert> and so data may be in the buffer for a period of time after the profile has finished.
    sampleFindingsTable :: (Core.Maybe GooglePrivacyDlpV2BigQueryTable)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Export' with the minimum fields required to make a request.
newGooglePrivacyDlpV2Export ::
  GooglePrivacyDlpV2Export
newGooglePrivacyDlpV2Export =
  GooglePrivacyDlpV2Export
    { profileTable = Core.Nothing,
      sampleFindingsTable = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2Export where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2Export"
      ( \o ->
          GooglePrivacyDlpV2Export
            Core.<$> (o Core..:? "profileTable")
            Core.<*> (o Core..:? "sampleFindingsTable")
      )

instance Core.ToJSON GooglePrivacyDlpV2Export where
  toJSON GooglePrivacyDlpV2Export {..} =
    Core.object
      ( Core.catMaybes
          [ ("profileTable" Core..=) Core.<$> profileTable,
            ("sampleFindingsTable" Core..=) Core.<$> sampleFindingsTable
          ]
      )

-- | An expression, consisting of an operator and conditions.
--
-- /See:/ 'newGooglePrivacyDlpV2Expressions' smart constructor.
data GooglePrivacyDlpV2Expressions = GooglePrivacyDlpV2Expressions
  { -- | Conditions to apply to the expression.
    conditions :: (Core.Maybe GooglePrivacyDlpV2Conditions),
    -- | The operator to apply to the result of conditions. Default and currently only supported value is @AND@.
    logicalOperator :: (Core.Maybe GooglePrivacyDlpV2Expressions_LogicalOperator)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Expressions' with the minimum fields required to make a request.
newGooglePrivacyDlpV2Expressions ::
  GooglePrivacyDlpV2Expressions
newGooglePrivacyDlpV2Expressions =
  GooglePrivacyDlpV2Expressions
    { conditions = Core.Nothing,
      logicalOperator = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2Expressions where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2Expressions"
      ( \o ->
          GooglePrivacyDlpV2Expressions
            Core.<$> (o Core..:? "conditions")
            Core.<*> (o Core..:? "logicalOperator")
      )

instance Core.ToJSON GooglePrivacyDlpV2Expressions where
  toJSON GooglePrivacyDlpV2Expressions {..} =
    Core.object
      ( Core.catMaybes
          [ ("conditions" Core..=) Core.<$> conditions,
            ("logicalOperator" Core..=) Core.<$> logicalOperator
          ]
      )

-- | General identifier of a data field in a storage service.
--
-- /See:/ 'newGooglePrivacyDlpV2FieldId' smart constructor.
newtype GooglePrivacyDlpV2FieldId = GooglePrivacyDlpV2FieldId
  { -- | Name describing the field.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2FieldId' with the minimum fields required to make a request.
newGooglePrivacyDlpV2FieldId ::
  GooglePrivacyDlpV2FieldId
newGooglePrivacyDlpV2FieldId =
  GooglePrivacyDlpV2FieldId {name = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2FieldId where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2FieldId"
      (\o -> GooglePrivacyDlpV2FieldId Core.<$> (o Core..:? "name"))

instance Core.ToJSON GooglePrivacyDlpV2FieldId where
  toJSON GooglePrivacyDlpV2FieldId {..} =
    Core.object (Core.catMaybes [("name" Core..=) Core.<$> name])

-- | The transformation to apply to the field.
--
-- /See:/ 'newGooglePrivacyDlpV2FieldTransformation' smart constructor.
data GooglePrivacyDlpV2FieldTransformation = GooglePrivacyDlpV2FieldTransformation
  { -- | Only apply the transformation if the condition evaluates to true for the given @RecordCondition@. The conditions are allowed to reference fields that are not used in the actual transformation. Example Use Cases: - Apply a different bucket transformation to an age column if the zip code column for the same record is within a specific range. - Redact a field if the date of birth field is greater than 85.
    condition :: (Core.Maybe GooglePrivacyDlpV2RecordCondition),
    -- | Required. Input field(s) to apply the transformation to. When you have columns that reference their position within a list, omit the index from the FieldId. FieldId name matching ignores the index. For example, instead of \"contact.nums[0].type\", use \"contact.nums.type\".
    fields :: (Core.Maybe [GooglePrivacyDlpV2FieldId]),
    -- | Treat the contents of the field as free text, and selectively transform content that matches an @InfoType@.
    infoTypeTransformations :: (Core.Maybe GooglePrivacyDlpV2InfoTypeTransformations),
    -- | Apply the transformation to the entire field.
    primitiveTransformation :: (Core.Maybe GooglePrivacyDlpV2PrimitiveTransformation)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2FieldTransformation' with the minimum fields required to make a request.
newGooglePrivacyDlpV2FieldTransformation ::
  GooglePrivacyDlpV2FieldTransformation
newGooglePrivacyDlpV2FieldTransformation =
  GooglePrivacyDlpV2FieldTransformation
    { condition = Core.Nothing,
      fields = Core.Nothing,
      infoTypeTransformations = Core.Nothing,
      primitiveTransformation = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2FieldTransformation where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2FieldTransformation"
      ( \o ->
          GooglePrivacyDlpV2FieldTransformation
            Core.<$> (o Core..:? "condition")
            Core.<*> (o Core..:? "fields")
            Core.<*> (o Core..:? "infoTypeTransformations")
            Core.<*> (o Core..:? "primitiveTransformation")
      )

instance Core.ToJSON GooglePrivacyDlpV2FieldTransformation where
  toJSON GooglePrivacyDlpV2FieldTransformation {..} =
    Core.object
      ( Core.catMaybes
          [ ("condition" Core..=) Core.<$> condition,
            ("fields" Core..=) Core.<$> fields,
            ("infoTypeTransformations" Core..=)
              Core.<$> infoTypeTransformations,
            ("primitiveTransformation" Core..=)
              Core.<$> primitiveTransformation
          ]
      )

-- | The file cluster summary.
--
-- /See:/ 'newGooglePrivacyDlpV2FileClusterSummary' smart constructor.
data GooglePrivacyDlpV2FileClusterSummary = GooglePrivacyDlpV2FileClusterSummary
  { -- | The data risk level of this cluster. RISK_LOW if nothing has been scanned.
    dataRiskLevel :: (Core.Maybe GooglePrivacyDlpV2DataRiskLevel),
    -- | A list of errors detected while scanning this cluster. The list is truncated to 10 per cluster.
    errors :: (Core.Maybe [GooglePrivacyDlpV2Error]),
    -- | The file cluster type.
    fileClusterType :: (Core.Maybe GooglePrivacyDlpV2FileClusterType),
    -- | A sample of file types scanned in this cluster. Empty if no files were scanned. File extensions can be derived from the file name or the file content.
    fileExtensionsScanned :: (Core.Maybe [GooglePrivacyDlpV2FileExtensionInfo]),
    -- | A sample of file types seen in this cluster. Empty if no files were seen. File extensions can be derived from the file name or the file content.
    fileExtensionsSeen :: (Core.Maybe [GooglePrivacyDlpV2FileExtensionInfo]),
    -- | InfoTypes detected in this cluster.
    fileStoreInfoTypeSummaries :: (Core.Maybe [GooglePrivacyDlpV2FileStoreInfoTypeSummary]),
    -- | True if no files exist in this cluster. If the file store had more files than could be listed, this will be false even if no files for this cluster were seen and file/extensions/seen is empty.
    noFilesExist :: (Core.Maybe Core.Bool),
    -- | The sensitivity score of this cluster. The score will be SENSITIVITY_LOW if nothing has been scanned.
    sensitivityScore :: (Core.Maybe GooglePrivacyDlpV2SensitivityScore)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2FileClusterSummary' with the minimum fields required to make a request.
newGooglePrivacyDlpV2FileClusterSummary ::
  GooglePrivacyDlpV2FileClusterSummary
newGooglePrivacyDlpV2FileClusterSummary =
  GooglePrivacyDlpV2FileClusterSummary
    { dataRiskLevel =
        Core.Nothing,
      errors = Core.Nothing,
      fileClusterType = Core.Nothing,
      fileExtensionsScanned = Core.Nothing,
      fileExtensionsSeen = Core.Nothing,
      fileStoreInfoTypeSummaries = Core.Nothing,
      noFilesExist = Core.Nothing,
      sensitivityScore = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2FileClusterSummary where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2FileClusterSummary"
      ( \o ->
          GooglePrivacyDlpV2FileClusterSummary
            Core.<$> (o Core..:? "dataRiskLevel")
            Core.<*> (o Core..:? "errors")
            Core.<*> (o Core..:? "fileClusterType")
            Core.<*> (o Core..:? "fileExtensionsScanned")
            Core.<*> (o Core..:? "fileExtensionsSeen")
            Core.<*> (o Core..:? "fileStoreInfoTypeSummaries")
            Core.<*> (o Core..:? "noFilesExist")
            Core.<*> (o Core..:? "sensitivityScore")
      )

instance Core.ToJSON GooglePrivacyDlpV2FileClusterSummary where
  toJSON GooglePrivacyDlpV2FileClusterSummary {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataRiskLevel" Core..=) Core.<$> dataRiskLevel,
            ("errors" Core..=) Core.<$> errors,
            ("fileClusterType" Core..=) Core.<$> fileClusterType,
            ("fileExtensionsScanned" Core..=) Core.<$> fileExtensionsScanned,
            ("fileExtensionsSeen" Core..=) Core.<$> fileExtensionsSeen,
            ("fileStoreInfoTypeSummaries" Core..=)
              Core.<$> fileStoreInfoTypeSummaries,
            ("noFilesExist" Core..=) Core.<$> noFilesExist,
            ("sensitivityScore" Core..=) Core.<$> sensitivityScore
          ]
      )

-- | Message used to identify file cluster type being profiled.
--
-- /See:/ 'newGooglePrivacyDlpV2FileClusterType' smart constructor.
newtype GooglePrivacyDlpV2FileClusterType = GooglePrivacyDlpV2FileClusterType
  { -- | Cluster type.
    cluster :: (Core.Maybe GooglePrivacyDlpV2FileClusterType_Cluster)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2FileClusterType' with the minimum fields required to make a request.
newGooglePrivacyDlpV2FileClusterType ::
  GooglePrivacyDlpV2FileClusterType
newGooglePrivacyDlpV2FileClusterType =
  GooglePrivacyDlpV2FileClusterType {cluster = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2FileClusterType where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2FileClusterType"
      ( \o ->
          GooglePrivacyDlpV2FileClusterType Core.<$> (o Core..:? "cluster")
      )

instance Core.ToJSON GooglePrivacyDlpV2FileClusterType where
  toJSON GooglePrivacyDlpV2FileClusterType {..} =
    Core.object
      (Core.catMaybes [("cluster" Core..=) Core.<$> cluster])

-- | Information regarding the discovered file extension.
--
-- /See:/ 'newGooglePrivacyDlpV2FileExtensionInfo' smart constructor.
newtype GooglePrivacyDlpV2FileExtensionInfo = GooglePrivacyDlpV2FileExtensionInfo
  { -- | The file extension if set. (aka .pdf, .jpg, .txt)
    fileExtension :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2FileExtensionInfo' with the minimum fields required to make a request.
newGooglePrivacyDlpV2FileExtensionInfo ::
  GooglePrivacyDlpV2FileExtensionInfo
newGooglePrivacyDlpV2FileExtensionInfo =
  GooglePrivacyDlpV2FileExtensionInfo {fileExtension = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2FileExtensionInfo where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2FileExtensionInfo"
      ( \o ->
          GooglePrivacyDlpV2FileExtensionInfo
            Core.<$> (o Core..:? "fileExtension")
      )

instance Core.ToJSON GooglePrivacyDlpV2FileExtensionInfo where
  toJSON GooglePrivacyDlpV2FileExtensionInfo {..} =
    Core.object
      (Core.catMaybes [("fileExtension" Core..=) Core.<$> fileExtension])

-- | Set of files to scan.
--
-- /See:/ 'newGooglePrivacyDlpV2FileSet' smart constructor.
data GooglePrivacyDlpV2FileSet = GooglePrivacyDlpV2FileSet
  { -- | The regex-filtered set of files to scan. Exactly one of @url@ or @regex_file_set@ must be set.
    regexFileSet :: (Core.Maybe GooglePrivacyDlpV2CloudStorageRegexFileSet),
    -- | The Cloud Storage url of the file(s) to scan, in the format @gs:\/\/\/@. Trailing wildcard in the path is allowed. If the url ends in a trailing slash, the bucket or directory represented by the url will be scanned non-recursively (content in sub-directories will not be scanned). This means that @gs:\/\/mybucket\/@ is equivalent to @gs:\/\/mybucket\/*@, and @gs:\/\/mybucket\/directory\/@ is equivalent to @gs:\/\/mybucket\/directory\/*@. Exactly one of @url@ or @regex_file_set@ must be set.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2FileSet' with the minimum fields required to make a request.
newGooglePrivacyDlpV2FileSet ::
  GooglePrivacyDlpV2FileSet
newGooglePrivacyDlpV2FileSet =
  GooglePrivacyDlpV2FileSet
    { regexFileSet = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2FileSet where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2FileSet"
      ( \o ->
          GooglePrivacyDlpV2FileSet
            Core.<$> (o Core..:? "regexFileSet")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON GooglePrivacyDlpV2FileSet where
  toJSON GooglePrivacyDlpV2FileSet {..} =
    Core.object
      ( Core.catMaybes
          [ ("regexFileSet" Core..=) Core.<$> regexFileSet,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | Match file stores (e.g. buckets) using regex filters.
--
-- /See:/ 'newGooglePrivacyDlpV2FileStoreCollection' smart constructor.
newtype GooglePrivacyDlpV2FileStoreCollection = GooglePrivacyDlpV2FileStoreCollection
  { -- | Optional. A collection of regular expressions to match a file store against.
    includeRegexes :: (Core.Maybe GooglePrivacyDlpV2FileStoreRegexes)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2FileStoreCollection' with the minimum fields required to make a request.
newGooglePrivacyDlpV2FileStoreCollection ::
  GooglePrivacyDlpV2FileStoreCollection
newGooglePrivacyDlpV2FileStoreCollection =
  GooglePrivacyDlpV2FileStoreCollection
    { includeRegexes =
        Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2FileStoreCollection where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2FileStoreCollection"
      ( \o ->
          GooglePrivacyDlpV2FileStoreCollection
            Core.<$> (o Core..:? "includeRegexes")
      )

instance Core.ToJSON GooglePrivacyDlpV2FileStoreCollection where
  toJSON GooglePrivacyDlpV2FileStoreCollection {..} =
    Core.object
      ( Core.catMaybes
          [("includeRegexes" Core..=) Core.<$> includeRegexes]
      )

-- | The profile for a file store. * Cloud Storage: maps 1:1 with a bucket. * Amazon S3: maps 1:1 with a bucket.
--
-- /See:/ 'newGooglePrivacyDlpV2FileStoreDataProfile' smart constructor.
data GooglePrivacyDlpV2FileStoreDataProfile = GooglePrivacyDlpV2FileStoreDataProfile
  { -- | The snapshot of the configurations used to generate the profile.
    configSnapshot :: (Core.Maybe GooglePrivacyDlpV2DataProfileConfigSnapshot),
    -- | The time the file store was first created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | The data risk level of this resource.
    dataRiskLevel :: (Core.Maybe GooglePrivacyDlpV2DataRiskLevel),
    -- | The resource type that was profiled.
    dataSourceType :: (Core.Maybe GooglePrivacyDlpV2DataSourceType),
    -- | For resources that have multiple storage locations, these are those regions. For Cloud Storage this is the list of regions chosen for dual-region storage. @file_store_location@ will normally be the corresponding multi-region for the list of individual locations. The first region is always picked as the processing and storage location for the data profile.
    dataStorageLocations :: (Core.Maybe [Core.Text]),
    -- | FileClusterSummary per each cluster.
    fileClusterSummaries :: (Core.Maybe [GooglePrivacyDlpV2FileClusterSummary]),
    -- | InfoTypes detected in this file store.
    fileStoreInfoTypeSummaries :: (Core.Maybe [GooglePrivacyDlpV2FileStoreInfoTypeSummary]),
    -- | The file store does not have any files.
    fileStoreIsEmpty :: (Core.Maybe Core.Bool),
    -- | The location of the file store. * Cloud Storage: https:\/\/cloud.google.com\/storage\/docs\/locations#available-locations * Amazon S3: https:\/\/docs.aws.amazon.com\/general\/latest\/gr\/rande.html#regional-endpoints
    fileStoreLocation :: (Core.Maybe Core.Text),
    -- | The file store path. * Cloud Storage: @gs:\/\/{bucket}@ * Amazon S3: @s3:\/\/{bucket}@ * Vertex AI dataset: @projects\/{project_number}\/locations\/{location}\/datasets\/{dataset_id}@
    fileStorePath :: (Core.Maybe Core.Text),
    -- | The resource name of the resource profiled. https:\/\/cloud.google.com\/apis\/design\/resource/names#full/resource_name Example format of an S3 bucket full resource name: @\/\/cloudasset.googleapis.com\/organizations\/{org_id}\/otherCloudConnections\/aws\/arn:aws:s3:::{bucket_name}@
    fullResource :: (Core.Maybe Core.Text),
    -- | The time the file store was last modified.
    lastModifiedTime :: (Core.Maybe Core.DateTime),
    -- | The location type of the file store (region, dual-region, multi-region, etc). If dual-region, expect data/storage/locations to be populated.
    locationType :: (Core.Maybe Core.Text),
    -- | The name of the profile.
    name :: (Core.Maybe Core.Text),
    -- | The last time the profile was generated.
    profileLastGenerated :: (Core.Maybe Core.DateTime),
    -- | Success or error status from the most recent profile generation attempt. May be empty if the profile is still being generated.
    profileStatus :: (Core.Maybe GooglePrivacyDlpV2ProfileStatus),
    -- | The resource name of the project data profile for this file store.
    projectDataProfile :: (Core.Maybe Core.Text),
    -- | The Google Cloud project ID that owns the resource. For Amazon S3 buckets, this is the AWS Account Id.
    projectId :: (Core.Maybe Core.Text),
    -- | Resources related to this profile.
    relatedResources :: (Core.Maybe [GooglePrivacyDlpV2RelatedResource]),
    -- | Attributes of the resource being profiled. Currently used attributes: * customer/managed/encryption: boolean - true: the resource is encrypted with a customer-managed key. - false: the resource is encrypted with a provider-managed key.
    resourceAttributes ::
      ( Core.Maybe
          GooglePrivacyDlpV2FileStoreDataProfile_ResourceAttributes
      ),
    -- | The labels applied to the resource at the time the profile was generated.
    resourceLabels :: (Core.Maybe GooglePrivacyDlpV2FileStoreDataProfile_ResourceLabels),
    -- | How broadly a resource has been shared.
    resourceVisibility ::
      ( Core.Maybe
          GooglePrivacyDlpV2FileStoreDataProfile_ResourceVisibility
      ),
    -- | The BigQuery table to which the sample findings are written.
    sampleFindingsTable :: (Core.Maybe GooglePrivacyDlpV2BigQueryTable),
    -- | The sensitivity score of this resource.
    sensitivityScore :: (Core.Maybe GooglePrivacyDlpV2SensitivityScore),
    -- | State of a profile.
    state :: (Core.Maybe GooglePrivacyDlpV2FileStoreDataProfile_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2FileStoreDataProfile' with the minimum fields required to make a request.
newGooglePrivacyDlpV2FileStoreDataProfile ::
  GooglePrivacyDlpV2FileStoreDataProfile
newGooglePrivacyDlpV2FileStoreDataProfile =
  GooglePrivacyDlpV2FileStoreDataProfile
    { configSnapshot =
        Core.Nothing,
      createTime = Core.Nothing,
      dataRiskLevel = Core.Nothing,
      dataSourceType = Core.Nothing,
      dataStorageLocations = Core.Nothing,
      fileClusterSummaries = Core.Nothing,
      fileStoreInfoTypeSummaries = Core.Nothing,
      fileStoreIsEmpty = Core.Nothing,
      fileStoreLocation = Core.Nothing,
      fileStorePath = Core.Nothing,
      fullResource = Core.Nothing,
      lastModifiedTime = Core.Nothing,
      locationType = Core.Nothing,
      name = Core.Nothing,
      profileLastGenerated = Core.Nothing,
      profileStatus = Core.Nothing,
      projectDataProfile = Core.Nothing,
      projectId = Core.Nothing,
      relatedResources = Core.Nothing,
      resourceAttributes = Core.Nothing,
      resourceLabels = Core.Nothing,
      resourceVisibility = Core.Nothing,
      sampleFindingsTable = Core.Nothing,
      sensitivityScore = Core.Nothing,
      state = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2FileStoreDataProfile where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2FileStoreDataProfile"
      ( \o ->
          GooglePrivacyDlpV2FileStoreDataProfile
            Core.<$> (o Core..:? "configSnapshot")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "dataRiskLevel")
            Core.<*> (o Core..:? "dataSourceType")
            Core.<*> (o Core..:? "dataStorageLocations")
            Core.<*> (o Core..:? "fileClusterSummaries")
            Core.<*> (o Core..:? "fileStoreInfoTypeSummaries")
            Core.<*> (o Core..:? "fileStoreIsEmpty")
            Core.<*> (o Core..:? "fileStoreLocation")
            Core.<*> (o Core..:? "fileStorePath")
            Core.<*> (o Core..:? "fullResource")
            Core.<*> (o Core..:? "lastModifiedTime")
            Core.<*> (o Core..:? "locationType")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "profileLastGenerated")
            Core.<*> (o Core..:? "profileStatus")
            Core.<*> (o Core..:? "projectDataProfile")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "relatedResources")
            Core.<*> (o Core..:? "resourceAttributes")
            Core.<*> (o Core..:? "resourceLabels")
            Core.<*> (o Core..:? "resourceVisibility")
            Core.<*> (o Core..:? "sampleFindingsTable")
            Core.<*> (o Core..:? "sensitivityScore")
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON GooglePrivacyDlpV2FileStoreDataProfile where
  toJSON GooglePrivacyDlpV2FileStoreDataProfile {..} =
    Core.object
      ( Core.catMaybes
          [ ("configSnapshot" Core..=) Core.<$> configSnapshot,
            ("createTime" Core..=) Core.<$> createTime,
            ("dataRiskLevel" Core..=) Core.<$> dataRiskLevel,
            ("dataSourceType" Core..=) Core.<$> dataSourceType,
            ("dataStorageLocations" Core..=) Core.<$> dataStorageLocations,
            ("fileClusterSummaries" Core..=) Core.<$> fileClusterSummaries,
            ("fileStoreInfoTypeSummaries" Core..=)
              Core.<$> fileStoreInfoTypeSummaries,
            ("fileStoreIsEmpty" Core..=) Core.<$> fileStoreIsEmpty,
            ("fileStoreLocation" Core..=) Core.<$> fileStoreLocation,
            ("fileStorePath" Core..=) Core.<$> fileStorePath,
            ("fullResource" Core..=) Core.<$> fullResource,
            ("lastModifiedTime" Core..=) Core.<$> lastModifiedTime,
            ("locationType" Core..=) Core.<$> locationType,
            ("name" Core..=) Core.<$> name,
            ("profileLastGenerated" Core..=) Core.<$> profileLastGenerated,
            ("profileStatus" Core..=) Core.<$> profileStatus,
            ("projectDataProfile" Core..=) Core.<$> projectDataProfile,
            ("projectId" Core..=) Core.<$> projectId,
            ("relatedResources" Core..=) Core.<$> relatedResources,
            ("resourceAttributes" Core..=) Core.<$> resourceAttributes,
            ("resourceLabels" Core..=) Core.<$> resourceLabels,
            ("resourceVisibility" Core..=) Core.<$> resourceVisibility,
            ("sampleFindingsTable" Core..=) Core.<$> sampleFindingsTable,
            ("sensitivityScore" Core..=) Core.<$> sensitivityScore,
            ("state" Core..=) Core.<$> state
          ]
      )

-- | Attributes of the resource being profiled. Currently used attributes: * customer/managed/encryption: boolean - true: the resource is encrypted with a customer-managed key. - false: the resource is encrypted with a provider-managed key.
--
-- /See:/ 'newGooglePrivacyDlpV2FileStoreDataProfile_ResourceAttributes' smart constructor.
newtype GooglePrivacyDlpV2FileStoreDataProfile_ResourceAttributes = GooglePrivacyDlpV2FileStoreDataProfile_ResourceAttributes
  { additional :: (Core.HashMap Core.Text GooglePrivacyDlpV2Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2FileStoreDataProfile_ResourceAttributes' with the minimum fields required to make a request.
newGooglePrivacyDlpV2FileStoreDataProfile_ResourceAttributes ::
  -- |  See 'additional'.
  Core.HashMap
    Core.Text
    GooglePrivacyDlpV2Value ->
  GooglePrivacyDlpV2FileStoreDataProfile_ResourceAttributes
newGooglePrivacyDlpV2FileStoreDataProfile_ResourceAttributes
  additional =
    GooglePrivacyDlpV2FileStoreDataProfile_ResourceAttributes
      { additional =
          additional
      }

instance
  Core.FromJSON
    GooglePrivacyDlpV2FileStoreDataProfile_ResourceAttributes
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2FileStoreDataProfile_ResourceAttributes"
      ( \o ->
          GooglePrivacyDlpV2FileStoreDataProfile_ResourceAttributes
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2FileStoreDataProfile_ResourceAttributes
  where
  toJSON
    GooglePrivacyDlpV2FileStoreDataProfile_ResourceAttributes {..} =
      Core.toJSON additional

-- | The labels applied to the resource at the time the profile was generated.
--
-- /See:/ 'newGooglePrivacyDlpV2FileStoreDataProfile_ResourceLabels' smart constructor.
newtype GooglePrivacyDlpV2FileStoreDataProfile_ResourceLabels = GooglePrivacyDlpV2FileStoreDataProfile_ResourceLabels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2FileStoreDataProfile_ResourceLabels' with the minimum fields required to make a request.
newGooglePrivacyDlpV2FileStoreDataProfile_ResourceLabels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  GooglePrivacyDlpV2FileStoreDataProfile_ResourceLabels
newGooglePrivacyDlpV2FileStoreDataProfile_ResourceLabels additional =
  GooglePrivacyDlpV2FileStoreDataProfile_ResourceLabels
    { additional =
        additional
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2FileStoreDataProfile_ResourceLabels
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2FileStoreDataProfile_ResourceLabels"
      ( \o ->
          GooglePrivacyDlpV2FileStoreDataProfile_ResourceLabels
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2FileStoreDataProfile_ResourceLabels
  where
  toJSON GooglePrivacyDlpV2FileStoreDataProfile_ResourceLabels {..} =
    Core.toJSON additional

-- | Information regarding the discovered InfoType.
--
-- /See:/ 'newGooglePrivacyDlpV2FileStoreInfoTypeSummary' smart constructor.
newtype GooglePrivacyDlpV2FileStoreInfoTypeSummary = GooglePrivacyDlpV2FileStoreInfoTypeSummary
  { -- | The InfoType seen.
    infoType :: (Core.Maybe GooglePrivacyDlpV2InfoType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2FileStoreInfoTypeSummary' with the minimum fields required to make a request.
newGooglePrivacyDlpV2FileStoreInfoTypeSummary ::
  GooglePrivacyDlpV2FileStoreInfoTypeSummary
newGooglePrivacyDlpV2FileStoreInfoTypeSummary =
  GooglePrivacyDlpV2FileStoreInfoTypeSummary
    { infoType =
        Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2FileStoreInfoTypeSummary where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2FileStoreInfoTypeSummary"
      ( \o ->
          GooglePrivacyDlpV2FileStoreInfoTypeSummary
            Core.<$> (o Core..:? "infoType")
      )

instance Core.ToJSON GooglePrivacyDlpV2FileStoreInfoTypeSummary where
  toJSON GooglePrivacyDlpV2FileStoreInfoTypeSummary {..} =
    Core.object
      (Core.catMaybes [("infoType" Core..=) Core.<$> infoType])

-- | A pattern to match against one or more file stores.
--
-- /See:/ 'newGooglePrivacyDlpV2FileStoreRegex' smart constructor.
newtype GooglePrivacyDlpV2FileStoreRegex = GooglePrivacyDlpV2FileStoreRegex
  { -- | Optional. Regex for Cloud Storage.
    cloudStorageRegex :: (Core.Maybe GooglePrivacyDlpV2CloudStorageRegex)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2FileStoreRegex' with the minimum fields required to make a request.
newGooglePrivacyDlpV2FileStoreRegex ::
  GooglePrivacyDlpV2FileStoreRegex
newGooglePrivacyDlpV2FileStoreRegex =
  GooglePrivacyDlpV2FileStoreRegex
    { cloudStorageRegex =
        Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2FileStoreRegex where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2FileStoreRegex"
      ( \o ->
          GooglePrivacyDlpV2FileStoreRegex
            Core.<$> (o Core..:? "cloudStorageRegex")
      )

instance Core.ToJSON GooglePrivacyDlpV2FileStoreRegex where
  toJSON GooglePrivacyDlpV2FileStoreRegex {..} =
    Core.object
      ( Core.catMaybes
          [("cloudStorageRegex" Core..=) Core.<$> cloudStorageRegex]
      )

-- | A collection of regular expressions to determine what file store to match against.
--
-- /See:/ 'newGooglePrivacyDlpV2FileStoreRegexes' smart constructor.
newtype GooglePrivacyDlpV2FileStoreRegexes = GooglePrivacyDlpV2FileStoreRegexes
  { -- | Required. The group of regular expression patterns to match against one or more file stores. Maximum of 100 entries. The sum of all regular expression\'s length can\'t exceed 10 KiB.
    patterns :: (Core.Maybe [GooglePrivacyDlpV2FileStoreRegex])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2FileStoreRegexes' with the minimum fields required to make a request.
newGooglePrivacyDlpV2FileStoreRegexes ::
  GooglePrivacyDlpV2FileStoreRegexes
newGooglePrivacyDlpV2FileStoreRegexes =
  GooglePrivacyDlpV2FileStoreRegexes {patterns = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2FileStoreRegexes where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2FileStoreRegexes"
      ( \o ->
          GooglePrivacyDlpV2FileStoreRegexes
            Core.<$> (o Core..:? "patterns")
      )

instance Core.ToJSON GooglePrivacyDlpV2FileStoreRegexes where
  toJSON GooglePrivacyDlpV2FileStoreRegexes {..} =
    Core.object
      (Core.catMaybes [("patterns" Core..=) Core.<$> patterns])

-- | Represents a piece of potentially sensitive content.
--
-- /See:/ 'newGooglePrivacyDlpV2Finding' smart constructor.
data GooglePrivacyDlpV2Finding = GooglePrivacyDlpV2Finding
  { -- | Timestamp when finding was detected.
    createTime :: (Core.Maybe Core.DateTime),
    -- | The unique finding id.
    findingId :: (Core.Maybe Core.Text),
    -- | The type of content that might have been found. Provided if @excluded_types@ is false.
    infoType :: (Core.Maybe GooglePrivacyDlpV2InfoType),
    -- | Time the job started that produced this finding.
    jobCreateTime :: (Core.Maybe Core.DateTime),
    -- | The job that stored the finding.
    jobName :: (Core.Maybe Core.Text),
    -- | The labels associated with this @Finding@. Label keys must be between 1 and 63 characters long and must conform to the following regular expression: @[a-z]([-a-z0-9]*[a-z0-9])?@. Label values must be between 0 and 63 characters long and must conform to the regular expression @([a-z]([-a-z0-9]*[a-z0-9])?)?@. No more than 10 labels can be associated with a given finding. Examples: * @\"environment\" : \"production\"@ * @\"pipeline\" : \"etl\"@
    labels :: (Core.Maybe GooglePrivacyDlpV2Finding_Labels),
    -- | Confidence of how likely it is that the @info_type@ is correct.
    likelihood :: (Core.Maybe GooglePrivacyDlpV2Finding_Likelihood),
    -- | Where the content was found.
    location :: (Core.Maybe GooglePrivacyDlpV2Location),
    -- | Resource name in format projects\/{project}\/locations\/{location}\/findings\/{finding} Populated only when viewing persisted findings.
    name :: (Core.Maybe Core.Text),
    -- | The content that was found. Even if the content is not textual, it may be converted to a textual representation here. Provided if @include_quote@ is true and the finding is less than or equal to 4096 bytes long. If the finding exceeds 4096 bytes in length, the quote may be omitted.
    quote :: (Core.Maybe Core.Text),
    -- | Contains data parsed from quotes. Only populated if include/quote was set to true and a supported infoType was requested. Currently supported infoTypes: DATE, DATE/OF_BIRTH and TIME.
    quoteInfo :: (Core.Maybe GooglePrivacyDlpV2QuoteInfo),
    -- | The job that stored the finding.
    resourceName :: (Core.Maybe Core.Text),
    -- | Job trigger name, if applicable, for this finding.
    triggerName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Finding' with the minimum fields required to make a request.
newGooglePrivacyDlpV2Finding ::
  GooglePrivacyDlpV2Finding
newGooglePrivacyDlpV2Finding =
  GooglePrivacyDlpV2Finding
    { createTime = Core.Nothing,
      findingId = Core.Nothing,
      infoType = Core.Nothing,
      jobCreateTime = Core.Nothing,
      jobName = Core.Nothing,
      labels = Core.Nothing,
      likelihood = Core.Nothing,
      location = Core.Nothing,
      name = Core.Nothing,
      quote = Core.Nothing,
      quoteInfo = Core.Nothing,
      resourceName = Core.Nothing,
      triggerName = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2Finding where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2Finding"
      ( \o ->
          GooglePrivacyDlpV2Finding
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "findingId")
            Core.<*> (o Core..:? "infoType")
            Core.<*> (o Core..:? "jobCreateTime")
            Core.<*> (o Core..:? "jobName")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "likelihood")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "quote")
            Core.<*> (o Core..:? "quoteInfo")
            Core.<*> (o Core..:? "resourceName")
            Core.<*> (o Core..:? "triggerName")
      )

instance Core.ToJSON GooglePrivacyDlpV2Finding where
  toJSON GooglePrivacyDlpV2Finding {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("findingId" Core..=) Core.<$> findingId,
            ("infoType" Core..=) Core.<$> infoType,
            ("jobCreateTime" Core..=) Core.<$> jobCreateTime,
            ("jobName" Core..=) Core.<$> jobName,
            ("labels" Core..=) Core.<$> labels,
            ("likelihood" Core..=) Core.<$> likelihood,
            ("location" Core..=) Core.<$> location,
            ("name" Core..=) Core.<$> name,
            ("quote" Core..=) Core.<$> quote,
            ("quoteInfo" Core..=) Core.<$> quoteInfo,
            ("resourceName" Core..=) Core.<$> resourceName,
            ("triggerName" Core..=) Core.<$> triggerName
          ]
      )

-- | The labels associated with this @Finding@. Label keys must be between 1 and 63 characters long and must conform to the following regular expression: @[a-z]([-a-z0-9]*[a-z0-9])?@. Label values must be between 0 and 63 characters long and must conform to the regular expression @([a-z]([-a-z0-9]*[a-z0-9])?)?@. No more than 10 labels can be associated with a given finding. Examples: * @\"environment\" : \"production\"@ * @\"pipeline\" : \"etl\"@
--
-- /See:/ 'newGooglePrivacyDlpV2Finding_Labels' smart constructor.
newtype GooglePrivacyDlpV2Finding_Labels = GooglePrivacyDlpV2Finding_Labels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Finding_Labels' with the minimum fields required to make a request.
newGooglePrivacyDlpV2Finding_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  GooglePrivacyDlpV2Finding_Labels
newGooglePrivacyDlpV2Finding_Labels additional =
  GooglePrivacyDlpV2Finding_Labels {additional = additional}

instance Core.FromJSON GooglePrivacyDlpV2Finding_Labels where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2Finding_Labels"
      ( \o ->
          GooglePrivacyDlpV2Finding_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON GooglePrivacyDlpV2Finding_Labels where
  toJSON GooglePrivacyDlpV2Finding_Labels {..} =
    Core.toJSON additional

-- | Configuration to control the number of findings returned for inspection. This is not used for de-identification or data profiling. When redacting sensitive data from images, finding limits don\'t apply. They can cause unexpected or inconsistent results, where only some data is redacted. Don\'t include finding limits in RedactImage requests. Otherwise, Cloud DLP returns an error.
--
-- /See:/ 'newGooglePrivacyDlpV2FindingLimits' smart constructor.
data GooglePrivacyDlpV2FindingLimits = GooglePrivacyDlpV2FindingLimits
  { -- | Configuration of findings limit given for specified infoTypes.
    maxFindingsPerInfoType :: (Core.Maybe [GooglePrivacyDlpV2InfoTypeLimit]),
    -- | Max number of findings that are returned for each item scanned. When set within an InspectContentRequest, this field is ignored. This value isn\'t a hard limit. If the number of findings for an item reaches this limit, the inspection of that item ends gradually, not abruptly. Therefore, the actual number of findings that Cloud DLP returns for the item can be multiple times higher than this value.
    maxFindingsPerItem :: (Core.Maybe Core.Int32),
    -- | Max number of findings that are returned per request or job. If you set this field in an InspectContentRequest, the resulting maximum value is the value that you set or 3,000, whichever is lower. This value isn\'t a hard limit. If an inspection reaches this limit, the inspection ends gradually, not abruptly. Therefore, the actual number of findings that Cloud DLP returns can be multiple times higher than this value.
    maxFindingsPerRequest :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2FindingLimits' with the minimum fields required to make a request.
newGooglePrivacyDlpV2FindingLimits ::
  GooglePrivacyDlpV2FindingLimits
newGooglePrivacyDlpV2FindingLimits =
  GooglePrivacyDlpV2FindingLimits
    { maxFindingsPerInfoType =
        Core.Nothing,
      maxFindingsPerItem = Core.Nothing,
      maxFindingsPerRequest = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2FindingLimits where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2FindingLimits"
      ( \o ->
          GooglePrivacyDlpV2FindingLimits
            Core.<$> (o Core..:? "maxFindingsPerInfoType")
            Core.<*> (o Core..:? "maxFindingsPerItem")
            Core.<*> (o Core..:? "maxFindingsPerRequest")
      )

instance Core.ToJSON GooglePrivacyDlpV2FindingLimits where
  toJSON GooglePrivacyDlpV2FindingLimits {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxFindingsPerInfoType" Core..=)
              Core.<$> maxFindingsPerInfoType,
            ("maxFindingsPerItem" Core..=) Core.<$> maxFindingsPerItem,
            ("maxFindingsPerRequest" Core..=) Core.<$> maxFindingsPerRequest
          ]
      )

-- | The request message for finishing a DLP hybrid job.
--
-- /See:/ 'newGooglePrivacyDlpV2FinishDlpJobRequest' smart constructor.
data GooglePrivacyDlpV2FinishDlpJobRequest = GooglePrivacyDlpV2FinishDlpJobRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2FinishDlpJobRequest' with the minimum fields required to make a request.
newGooglePrivacyDlpV2FinishDlpJobRequest ::
  GooglePrivacyDlpV2FinishDlpJobRequest
newGooglePrivacyDlpV2FinishDlpJobRequest =
  GooglePrivacyDlpV2FinishDlpJobRequest

instance Core.FromJSON GooglePrivacyDlpV2FinishDlpJobRequest where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2FinishDlpJobRequest"
      (\o -> Core.pure GooglePrivacyDlpV2FinishDlpJobRequest)

instance Core.ToJSON GooglePrivacyDlpV2FinishDlpJobRequest where
  toJSON = Core.const Core.emptyObject

-- | Buckets values based on fixed size ranges. The Bucketing transformation can provide all of this functionality, but requires more configuration. This message is provided as a convenience to the user for simple bucketing strategies. The transformed value will be a hyphenated string of {lower/bound}-{upper/bound}. For example, if lower/bound = 10 and upper/bound = 20, all values that are within this bucket will be replaced with \"10-20\". This can be used on data of type: double, long. If the bound Value type differs from the type of data being transformed, we will first attempt converting the type of the data to be transformed to match the type of the bound before comparing. See https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/concepts-bucketing to learn more.
--
-- /See:/ 'newGooglePrivacyDlpV2FixedSizeBucketingConfig' smart constructor.
data GooglePrivacyDlpV2FixedSizeBucketingConfig = GooglePrivacyDlpV2FixedSizeBucketingConfig
  { -- | Required. Size of each bucket (except for minimum and maximum buckets). So if @lower_bound@ = 10, @upper_bound@ = 89, and @bucket_size@ = 10, then the following buckets would be used: -10, 10-20, 20-30, 30-40, 40-50, 50-60, 60-70, 70-80, 80-89, 89+. Precision up to 2 decimals works.
    bucketSize :: (Core.Maybe Core.Double),
    -- | Required. Lower bound value of buckets. All values less than @lower_bound@ are grouped together into a single bucket; for example if @lower_bound@ = 10, then all values less than 10 are replaced with the value \"-10\".
    lowerBound :: (Core.Maybe GooglePrivacyDlpV2Value),
    -- | Required. Upper bound value of buckets. All values greater than upper_bound are grouped together into a single bucket; for example if @upper_bound@ = 89, then all values greater than 89 are replaced with the value \"89+\".
    upperBound :: (Core.Maybe GooglePrivacyDlpV2Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2FixedSizeBucketingConfig' with the minimum fields required to make a request.
newGooglePrivacyDlpV2FixedSizeBucketingConfig ::
  GooglePrivacyDlpV2FixedSizeBucketingConfig
newGooglePrivacyDlpV2FixedSizeBucketingConfig =
  GooglePrivacyDlpV2FixedSizeBucketingConfig
    { bucketSize =
        Core.Nothing,
      lowerBound = Core.Nothing,
      upperBound = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2FixedSizeBucketingConfig where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2FixedSizeBucketingConfig"
      ( \o ->
          GooglePrivacyDlpV2FixedSizeBucketingConfig
            Core.<$> (o Core..:? "bucketSize")
            Core.<*> (o Core..:? "lowerBound")
            Core.<*> (o Core..:? "upperBound")
      )

instance Core.ToJSON GooglePrivacyDlpV2FixedSizeBucketingConfig where
  toJSON GooglePrivacyDlpV2FixedSizeBucketingConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("bucketSize" Core..=) Core.<$> bucketSize,
            ("lowerBound" Core..=) Core.<$> lowerBound,
            ("upperBound" Core..=) Core.<$> upperBound
          ]
      )

-- | Processing will happen in the global region.
--
-- /See:/ 'newGooglePrivacyDlpV2GlobalProcessing' smart constructor.
data GooglePrivacyDlpV2GlobalProcessing = GooglePrivacyDlpV2GlobalProcessing
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2GlobalProcessing' with the minimum fields required to make a request.
newGooglePrivacyDlpV2GlobalProcessing ::
  GooglePrivacyDlpV2GlobalProcessing
newGooglePrivacyDlpV2GlobalProcessing =
  GooglePrivacyDlpV2GlobalProcessing

instance Core.FromJSON GooglePrivacyDlpV2GlobalProcessing where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2GlobalProcessing"
      (\o -> Core.pure GooglePrivacyDlpV2GlobalProcessing)

instance Core.ToJSON GooglePrivacyDlpV2GlobalProcessing where
  toJSON = Core.const Core.emptyObject

-- | The rule that adjusts the likelihood of findings within a certain proximity of hotwords.
--
-- /See:/ 'newGooglePrivacyDlpV2HotwordRule' smart constructor.
data GooglePrivacyDlpV2HotwordRule = GooglePrivacyDlpV2HotwordRule
  { -- | Regular expression pattern defining what qualifies as a hotword.
    hotwordRegex :: (Core.Maybe GooglePrivacyDlpV2Regex),
    -- | Likelihood adjustment to apply to all matching findings.
    likelihoodAdjustment :: (Core.Maybe GooglePrivacyDlpV2LikelihoodAdjustment),
    -- | Range of characters within which the entire hotword must reside. The total length of the window cannot exceed 1000 characters. The finding itself will be included in the window, so that hotwords can be used to match substrings of the finding itself. Suppose you want Cloud DLP to promote the likelihood of the phone number regex \"(\\d{3}) \\d{3}-\\d{4}\" if the area code is known to be the area code of a company\'s office. In this case, use the hotword regex \"(xxx)\", where \"xxx\" is the area code in question. For tabular data, if you want to modify the likelihood of an entire column of findngs, see [Hotword example: Set the match likelihood of a table column] (https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/creating-custom-infotypes-likelihood#match-column-values).
    proximity :: (Core.Maybe GooglePrivacyDlpV2Proximity)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2HotwordRule' with the minimum fields required to make a request.
newGooglePrivacyDlpV2HotwordRule ::
  GooglePrivacyDlpV2HotwordRule
newGooglePrivacyDlpV2HotwordRule =
  GooglePrivacyDlpV2HotwordRule
    { hotwordRegex = Core.Nothing,
      likelihoodAdjustment = Core.Nothing,
      proximity = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2HotwordRule where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2HotwordRule"
      ( \o ->
          GooglePrivacyDlpV2HotwordRule
            Core.<$> (o Core..:? "hotwordRegex")
            Core.<*> (o Core..:? "likelihoodAdjustment")
            Core.<*> (o Core..:? "proximity")
      )

instance Core.ToJSON GooglePrivacyDlpV2HotwordRule where
  toJSON GooglePrivacyDlpV2HotwordRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("hotwordRegex" Core..=) Core.<$> hotwordRegex,
            ("likelihoodAdjustment" Core..=) Core.<$> likelihoodAdjustment,
            ("proximity" Core..=) Core.<$> proximity
          ]
      )

-- | An individual hybrid item to inspect. Will be stored temporarily during processing.
--
-- /See:/ 'newGooglePrivacyDlpV2HybridContentItem' smart constructor.
data GooglePrivacyDlpV2HybridContentItem = GooglePrivacyDlpV2HybridContentItem
  { -- | Supplementary information that will be added to each finding.
    findingDetails :: (Core.Maybe GooglePrivacyDlpV2HybridFindingDetails),
    -- | The item to inspect.
    item :: (Core.Maybe GooglePrivacyDlpV2ContentItem)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2HybridContentItem' with the minimum fields required to make a request.
newGooglePrivacyDlpV2HybridContentItem ::
  GooglePrivacyDlpV2HybridContentItem
newGooglePrivacyDlpV2HybridContentItem =
  GooglePrivacyDlpV2HybridContentItem
    { findingDetails =
        Core.Nothing,
      item = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2HybridContentItem where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2HybridContentItem"
      ( \o ->
          GooglePrivacyDlpV2HybridContentItem
            Core.<$> (o Core..:? "findingDetails")
            Core.<*> (o Core..:? "item")
      )

instance Core.ToJSON GooglePrivacyDlpV2HybridContentItem where
  toJSON GooglePrivacyDlpV2HybridContentItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("findingDetails" Core..=) Core.<$> findingDetails,
            ("item" Core..=) Core.<$> item
          ]
      )

-- | Populate to associate additional data with each finding.
--
-- /See:/ 'newGooglePrivacyDlpV2HybridFindingDetails' smart constructor.
data GooglePrivacyDlpV2HybridFindingDetails = GooglePrivacyDlpV2HybridFindingDetails
  { -- | Details about the container where the content being inspected is from.
    containerDetails :: (Core.Maybe GooglePrivacyDlpV2Container),
    -- | Offset in bytes of the line, from the beginning of the file, where the finding is located. Populate if the item being scanned is only part of a bigger item, such as a shard of a file and you want to track the absolute position of the finding.
    fileOffset :: (Core.Maybe Core.Int64),
    -- | Labels to represent user provided metadata about the data being inspected. If configured by the job, some key values may be required. The labels associated with @Finding@\'s produced by hybrid inspection. Label keys must be between 1 and 63 characters long and must conform to the following regular expression: @[a-z]([-a-z0-9]*[a-z0-9])?@. Label values must be between 0 and 63 characters long and must conform to the regular expression @([a-z]([-a-z0-9]*[a-z0-9])?)?@. No more than 10 labels can be associated with a given finding. Examples: * @\"environment\" : \"production\"@ * @\"pipeline\" : \"etl\"@
    labels :: (Core.Maybe GooglePrivacyDlpV2HybridFindingDetails_Labels),
    -- | Offset of the row for tables. Populate if the row(s) being scanned are part of a bigger dataset and you want to keep track of their absolute position.
    rowOffset :: (Core.Maybe Core.Int64),
    -- | If the container is a table, additional information to make findings meaningful such as the columns that are primary keys. If not known ahead of time, can also be set within each inspect hybrid call and the two will be merged. Note that identifying_fields will only be stored to BigQuery, and only if the BigQuery action has been included.
    tableOptions :: (Core.Maybe GooglePrivacyDlpV2TableOptions)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2HybridFindingDetails' with the minimum fields required to make a request.
newGooglePrivacyDlpV2HybridFindingDetails ::
  GooglePrivacyDlpV2HybridFindingDetails
newGooglePrivacyDlpV2HybridFindingDetails =
  GooglePrivacyDlpV2HybridFindingDetails
    { containerDetails =
        Core.Nothing,
      fileOffset = Core.Nothing,
      labels = Core.Nothing,
      rowOffset = Core.Nothing,
      tableOptions = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2HybridFindingDetails where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2HybridFindingDetails"
      ( \o ->
          GooglePrivacyDlpV2HybridFindingDetails
            Core.<$> (o Core..:? "containerDetails")
            Core.<*> (o Core..:? "fileOffset" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "rowOffset" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "tableOptions")
      )

instance Core.ToJSON GooglePrivacyDlpV2HybridFindingDetails where
  toJSON GooglePrivacyDlpV2HybridFindingDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("containerDetails" Core..=) Core.<$> containerDetails,
            ("fileOffset" Core..=) Core.. Core.AsText Core.<$> fileOffset,
            ("labels" Core..=) Core.<$> labels,
            ("rowOffset" Core..=) Core.. Core.AsText Core.<$> rowOffset,
            ("tableOptions" Core..=) Core.<$> tableOptions
          ]
      )

-- | Labels to represent user provided metadata about the data being inspected. If configured by the job, some key values may be required. The labels associated with @Finding@\'s produced by hybrid inspection. Label keys must be between 1 and 63 characters long and must conform to the following regular expression: @[a-z]([-a-z0-9]*[a-z0-9])?@. Label values must be between 0 and 63 characters long and must conform to the regular expression @([a-z]([-a-z0-9]*[a-z0-9])?)?@. No more than 10 labels can be associated with a given finding. Examples: * @\"environment\" : \"production\"@ * @\"pipeline\" : \"etl\"@
--
-- /See:/ 'newGooglePrivacyDlpV2HybridFindingDetails_Labels' smart constructor.
newtype GooglePrivacyDlpV2HybridFindingDetails_Labels = GooglePrivacyDlpV2HybridFindingDetails_Labels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2HybridFindingDetails_Labels' with the minimum fields required to make a request.
newGooglePrivacyDlpV2HybridFindingDetails_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  GooglePrivacyDlpV2HybridFindingDetails_Labels
newGooglePrivacyDlpV2HybridFindingDetails_Labels additional =
  GooglePrivacyDlpV2HybridFindingDetails_Labels
    { additional =
        additional
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2HybridFindingDetails_Labels
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2HybridFindingDetails_Labels"
      ( \o ->
          GooglePrivacyDlpV2HybridFindingDetails_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON GooglePrivacyDlpV2HybridFindingDetails_Labels where
  toJSON GooglePrivacyDlpV2HybridFindingDetails_Labels {..} =
    Core.toJSON additional

-- | Request to search for potentially sensitive info in a custom location.
--
-- /See:/ 'newGooglePrivacyDlpV2HybridInspectDlpJobRequest' smart constructor.
newtype GooglePrivacyDlpV2HybridInspectDlpJobRequest = GooglePrivacyDlpV2HybridInspectDlpJobRequest
  { -- | The item to inspect.
    hybridItem :: (Core.Maybe GooglePrivacyDlpV2HybridContentItem)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2HybridInspectDlpJobRequest' with the minimum fields required to make a request.
newGooglePrivacyDlpV2HybridInspectDlpJobRequest ::
  GooglePrivacyDlpV2HybridInspectDlpJobRequest
newGooglePrivacyDlpV2HybridInspectDlpJobRequest =
  GooglePrivacyDlpV2HybridInspectDlpJobRequest
    { hybridItem =
        Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2HybridInspectDlpJobRequest where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2HybridInspectDlpJobRequest"
      ( \o ->
          GooglePrivacyDlpV2HybridInspectDlpJobRequest
            Core.<$> (o Core..:? "hybridItem")
      )

instance Core.ToJSON GooglePrivacyDlpV2HybridInspectDlpJobRequest where
  toJSON GooglePrivacyDlpV2HybridInspectDlpJobRequest {..} =
    Core.object
      (Core.catMaybes [("hybridItem" Core..=) Core.<$> hybridItem])

-- | Request to search for potentially sensitive info in a custom location.
--
-- /See:/ 'newGooglePrivacyDlpV2HybridInspectJobTriggerRequest' smart constructor.
newtype GooglePrivacyDlpV2HybridInspectJobTriggerRequest = GooglePrivacyDlpV2HybridInspectJobTriggerRequest
  { -- | The item to inspect.
    hybridItem :: (Core.Maybe GooglePrivacyDlpV2HybridContentItem)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2HybridInspectJobTriggerRequest' with the minimum fields required to make a request.
newGooglePrivacyDlpV2HybridInspectJobTriggerRequest ::
  GooglePrivacyDlpV2HybridInspectJobTriggerRequest
newGooglePrivacyDlpV2HybridInspectJobTriggerRequest =
  GooglePrivacyDlpV2HybridInspectJobTriggerRequest
    { hybridItem =
        Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2HybridInspectJobTriggerRequest
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2HybridInspectJobTriggerRequest"
      ( \o ->
          GooglePrivacyDlpV2HybridInspectJobTriggerRequest
            Core.<$> (o Core..:? "hybridItem")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2HybridInspectJobTriggerRequest
  where
  toJSON GooglePrivacyDlpV2HybridInspectJobTriggerRequest {..} =
    Core.object
      (Core.catMaybes [("hybridItem" Core..=) Core.<$> hybridItem])

-- | Quota exceeded errors will be thrown once quota has been met.
--
-- /See:/ 'newGooglePrivacyDlpV2HybridInspectResponse' smart constructor.
data GooglePrivacyDlpV2HybridInspectResponse = GooglePrivacyDlpV2HybridInspectResponse
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2HybridInspectResponse' with the minimum fields required to make a request.
newGooglePrivacyDlpV2HybridInspectResponse ::
  GooglePrivacyDlpV2HybridInspectResponse
newGooglePrivacyDlpV2HybridInspectResponse =
  GooglePrivacyDlpV2HybridInspectResponse

instance Core.FromJSON GooglePrivacyDlpV2HybridInspectResponse where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2HybridInspectResponse"
      (\o -> Core.pure GooglePrivacyDlpV2HybridInspectResponse)

instance Core.ToJSON GooglePrivacyDlpV2HybridInspectResponse where
  toJSON = Core.const Core.emptyObject

-- | Statistics related to processing hybrid inspect requests.
--
-- /See:/ 'newGooglePrivacyDlpV2HybridInspectStatistics' smart constructor.
data GooglePrivacyDlpV2HybridInspectStatistics = GooglePrivacyDlpV2HybridInspectStatistics
  { -- | The number of hybrid inspection requests aborted because the job ran out of quota or was ended before they could be processed.
    abortedCount :: (Core.Maybe Core.Int64),
    -- | The number of hybrid requests currently being processed. Only populated when called via method @getDlpJob@. A burst of traffic may cause hybrid inspect requests to be enqueued. Processing will take place as quickly as possible, but resource limitations may impact how long a request is enqueued for.
    pendingCount :: (Core.Maybe Core.Int64),
    -- | The number of hybrid inspection requests processed within this job.
    processedCount :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2HybridInspectStatistics' with the minimum fields required to make a request.
newGooglePrivacyDlpV2HybridInspectStatistics ::
  GooglePrivacyDlpV2HybridInspectStatistics
newGooglePrivacyDlpV2HybridInspectStatistics =
  GooglePrivacyDlpV2HybridInspectStatistics
    { abortedCount =
        Core.Nothing,
      pendingCount = Core.Nothing,
      processedCount = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2HybridInspectStatistics where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2HybridInspectStatistics"
      ( \o ->
          GooglePrivacyDlpV2HybridInspectStatistics
            Core.<$> (o Core..:? "abortedCount" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "pendingCount" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "processedCount" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON GooglePrivacyDlpV2HybridInspectStatistics where
  toJSON GooglePrivacyDlpV2HybridInspectStatistics {..} =
    Core.object
      ( Core.catMaybes
          [ ("abortedCount" Core..=) Core.. Core.AsText Core.<$> abortedCount,
            ("pendingCount" Core..=) Core.. Core.AsText Core.<$> pendingCount,
            ("processedCount" Core..=)
              Core.. Core.AsText
              Core.<$> processedCount
          ]
      )

-- | Configuration to control jobs where the content being inspected is outside of Google Cloud Platform.
--
-- /See:/ 'newGooglePrivacyDlpV2HybridOptions' smart constructor.
data GooglePrivacyDlpV2HybridOptions = GooglePrivacyDlpV2HybridOptions
  { -- | A short description of where the data is coming from. Will be stored once in the job. 256 max length.
    description :: (Core.Maybe Core.Text),
    -- | To organize findings, these labels will be added to each finding. Label keys must be between 1 and 63 characters long and must conform to the following regular expression: @[a-z]([-a-z0-9]*[a-z0-9])?@. Label values must be between 0 and 63 characters long and must conform to the regular expression @([a-z]([-a-z0-9]*[a-z0-9])?)?@. No more than 10 labels can be associated with a given finding. Examples: * @\"environment\" : \"production\"@ * @\"pipeline\" : \"etl\"@
    labels :: (Core.Maybe GooglePrivacyDlpV2HybridOptions_Labels),
    -- | These are labels that each inspection request must include within their \'finding_labels\' map. Request may contain others, but any missing one of these will be rejected. Label keys must be between 1 and 63 characters long and must conform to the following regular expression: @[a-z]([-a-z0-9]*[a-z0-9])?@. No more than 10 keys can be required.
    requiredFindingLabelKeys :: (Core.Maybe [Core.Text]),
    -- | If the container is a table, additional information to make findings meaningful such as the columns that are primary keys.
    tableOptions :: (Core.Maybe GooglePrivacyDlpV2TableOptions)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2HybridOptions' with the minimum fields required to make a request.
newGooglePrivacyDlpV2HybridOptions ::
  GooglePrivacyDlpV2HybridOptions
newGooglePrivacyDlpV2HybridOptions =
  GooglePrivacyDlpV2HybridOptions
    { description = Core.Nothing,
      labels = Core.Nothing,
      requiredFindingLabelKeys = Core.Nothing,
      tableOptions = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2HybridOptions where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2HybridOptions"
      ( \o ->
          GooglePrivacyDlpV2HybridOptions
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "requiredFindingLabelKeys")
            Core.<*> (o Core..:? "tableOptions")
      )

instance Core.ToJSON GooglePrivacyDlpV2HybridOptions where
  toJSON GooglePrivacyDlpV2HybridOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("labels" Core..=) Core.<$> labels,
            ("requiredFindingLabelKeys" Core..=)
              Core.<$> requiredFindingLabelKeys,
            ("tableOptions" Core..=) Core.<$> tableOptions
          ]
      )

-- | To organize findings, these labels will be added to each finding. Label keys must be between 1 and 63 characters long and must conform to the following regular expression: @[a-z]([-a-z0-9]*[a-z0-9])?@. Label values must be between 0 and 63 characters long and must conform to the regular expression @([a-z]([-a-z0-9]*[a-z0-9])?)?@. No more than 10 labels can be associated with a given finding. Examples: * @\"environment\" : \"production\"@ * @\"pipeline\" : \"etl\"@
--
-- /See:/ 'newGooglePrivacyDlpV2HybridOptions_Labels' smart constructor.
newtype GooglePrivacyDlpV2HybridOptions_Labels = GooglePrivacyDlpV2HybridOptions_Labels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2HybridOptions_Labels' with the minimum fields required to make a request.
newGooglePrivacyDlpV2HybridOptions_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  GooglePrivacyDlpV2HybridOptions_Labels
newGooglePrivacyDlpV2HybridOptions_Labels additional =
  GooglePrivacyDlpV2HybridOptions_Labels {additional = additional}

instance Core.FromJSON GooglePrivacyDlpV2HybridOptions_Labels where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2HybridOptions_Labels"
      ( \o ->
          GooglePrivacyDlpV2HybridOptions_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON GooglePrivacyDlpV2HybridOptions_Labels where
  toJSON GooglePrivacyDlpV2HybridOptions_Labels {..} =
    Core.toJSON additional

-- | Configure image processing to fall back to the configured processing option below if unavailable in the request location.
--
-- /See:/ 'newGooglePrivacyDlpV2ImageFallbackLocation' smart constructor.
data GooglePrivacyDlpV2ImageFallbackLocation = GooglePrivacyDlpV2ImageFallbackLocation
  { -- | Processing will happen in the global region.
    globalProcessing :: (Core.Maybe GooglePrivacyDlpV2GlobalProcessing),
    -- | Processing will happen in a multi-region that contains the current region if available.
    multiRegionProcessing :: (Core.Maybe GooglePrivacyDlpV2MultiRegionProcessing)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ImageFallbackLocation' with the minimum fields required to make a request.
newGooglePrivacyDlpV2ImageFallbackLocation ::
  GooglePrivacyDlpV2ImageFallbackLocation
newGooglePrivacyDlpV2ImageFallbackLocation =
  GooglePrivacyDlpV2ImageFallbackLocation
    { globalProcessing =
        Core.Nothing,
      multiRegionProcessing = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2ImageFallbackLocation where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ImageFallbackLocation"
      ( \o ->
          GooglePrivacyDlpV2ImageFallbackLocation
            Core.<$> (o Core..:? "globalProcessing")
            Core.<*> (o Core..:? "multiRegionProcessing")
      )

instance Core.ToJSON GooglePrivacyDlpV2ImageFallbackLocation where
  toJSON GooglePrivacyDlpV2ImageFallbackLocation {..} =
    Core.object
      ( Core.catMaybes
          [ ("globalProcessing" Core..=) Core.<$> globalProcessing,
            ("multiRegionProcessing" Core..=) Core.<$> multiRegionProcessing
          ]
      )

-- | Location of the finding within an image.
--
-- /See:/ 'newGooglePrivacyDlpV2ImageLocation' smart constructor.
newtype GooglePrivacyDlpV2ImageLocation = GooglePrivacyDlpV2ImageLocation
  { -- | Bounding boxes locating the pixels within the image containing the finding.
    boundingBoxes :: (Core.Maybe [GooglePrivacyDlpV2BoundingBox])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ImageLocation' with the minimum fields required to make a request.
newGooglePrivacyDlpV2ImageLocation ::
  GooglePrivacyDlpV2ImageLocation
newGooglePrivacyDlpV2ImageLocation =
  GooglePrivacyDlpV2ImageLocation {boundingBoxes = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2ImageLocation where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ImageLocation"
      ( \o ->
          GooglePrivacyDlpV2ImageLocation
            Core.<$> (o Core..:? "boundingBoxes")
      )

instance Core.ToJSON GooglePrivacyDlpV2ImageLocation where
  toJSON GooglePrivacyDlpV2ImageLocation {..} =
    Core.object
      (Core.catMaybes [("boundingBoxes" Core..=) Core.<$> boundingBoxes])

-- | Configuration for determining how redaction of images should occur.
--
-- /See:/ 'newGooglePrivacyDlpV2ImageRedactionConfig' smart constructor.
data GooglePrivacyDlpV2ImageRedactionConfig = GooglePrivacyDlpV2ImageRedactionConfig
  { -- | Only one per info/type should be provided per request. If not specified, and redact/all/text is false, the DLP API will redact all text that it matches against all info/types that are found, but not specified in another ImageRedactionConfig.
    infoType :: (Core.Maybe GooglePrivacyDlpV2InfoType),
    -- | If true, all text found in the image, regardless whether it matches an info_type, is redacted. Only one should be provided.
    redactAllText :: (Core.Maybe Core.Bool),
    -- | The color to use when redacting content from an image. If not specified, the default is black.
    redactionColor :: (Core.Maybe GooglePrivacyDlpV2Color)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ImageRedactionConfig' with the minimum fields required to make a request.
newGooglePrivacyDlpV2ImageRedactionConfig ::
  GooglePrivacyDlpV2ImageRedactionConfig
newGooglePrivacyDlpV2ImageRedactionConfig =
  GooglePrivacyDlpV2ImageRedactionConfig
    { infoType = Core.Nothing,
      redactAllText = Core.Nothing,
      redactionColor = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2ImageRedactionConfig where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ImageRedactionConfig"
      ( \o ->
          GooglePrivacyDlpV2ImageRedactionConfig
            Core.<$> (o Core..:? "infoType")
            Core.<*> (o Core..:? "redactAllText")
            Core.<*> (o Core..:? "redactionColor")
      )

instance Core.ToJSON GooglePrivacyDlpV2ImageRedactionConfig where
  toJSON GooglePrivacyDlpV2ImageRedactionConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("infoType" Core..=) Core.<$> infoType,
            ("redactAllText" Core..=) Core.<$> redactAllText,
            ("redactionColor" Core..=) Core.<$> redactionColor
          ]
      )

-- | Configuration for determining how redaction of images should occur.
--
-- /See:/ 'newGooglePrivacyDlpV2ImageTransformation' smart constructor.
data GooglePrivacyDlpV2ImageTransformation = GooglePrivacyDlpV2ImageTransformation
  { -- | Apply transformation to all findings not specified in other ImageTransformation\'s selected/info/types. Only one instance is allowed within the ImageTransformations message.
    allInfoTypes :: (Core.Maybe GooglePrivacyDlpV2AllInfoTypes),
    -- | Apply transformation to all text that doesn\'t match an infoType. Only one instance is allowed within the ImageTransformations message.
    allText :: (Core.Maybe GooglePrivacyDlpV2AllText),
    -- | The color to use when redacting content from an image. If not specified, the default is black.
    redactionColor :: (Core.Maybe GooglePrivacyDlpV2Color),
    -- | Apply transformation to the selected info_types.
    selectedInfoTypes :: (Core.Maybe GooglePrivacyDlpV2SelectedInfoTypes)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ImageTransformation' with the minimum fields required to make a request.
newGooglePrivacyDlpV2ImageTransformation ::
  GooglePrivacyDlpV2ImageTransformation
newGooglePrivacyDlpV2ImageTransformation =
  GooglePrivacyDlpV2ImageTransformation
    { allInfoTypes =
        Core.Nothing,
      allText = Core.Nothing,
      redactionColor = Core.Nothing,
      selectedInfoTypes = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2ImageTransformation where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ImageTransformation"
      ( \o ->
          GooglePrivacyDlpV2ImageTransformation
            Core.<$> (o Core..:? "allInfoTypes")
            Core.<*> (o Core..:? "allText")
            Core.<*> (o Core..:? "redactionColor")
            Core.<*> (o Core..:? "selectedInfoTypes")
      )

instance Core.ToJSON GooglePrivacyDlpV2ImageTransformation where
  toJSON GooglePrivacyDlpV2ImageTransformation {..} =
    Core.object
      ( Core.catMaybes
          [ ("allInfoTypes" Core..=) Core.<$> allInfoTypes,
            ("allText" Core..=) Core.<$> allText,
            ("redactionColor" Core..=) Core.<$> redactionColor,
            ("selectedInfoTypes" Core..=) Core.<$> selectedInfoTypes
          ]
      )

-- | A type of transformation that is applied over images.
--
-- /See:/ 'newGooglePrivacyDlpV2ImageTransformations' smart constructor.
newtype GooglePrivacyDlpV2ImageTransformations = GooglePrivacyDlpV2ImageTransformations
  { -- | List of transforms to make.
    transforms :: (Core.Maybe [GooglePrivacyDlpV2ImageTransformation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ImageTransformations' with the minimum fields required to make a request.
newGooglePrivacyDlpV2ImageTransformations ::
  GooglePrivacyDlpV2ImageTransformations
newGooglePrivacyDlpV2ImageTransformations =
  GooglePrivacyDlpV2ImageTransformations {transforms = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2ImageTransformations where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ImageTransformations"
      ( \o ->
          GooglePrivacyDlpV2ImageTransformations
            Core.<$> (o Core..:? "transforms")
      )

instance Core.ToJSON GooglePrivacyDlpV2ImageTransformations where
  toJSON GooglePrivacyDlpV2ImageTransformations {..} =
    Core.object
      (Core.catMaybes [("transforms" Core..=) Core.<$> transforms])

-- | Type of information detected by the API.
--
-- /See:/ 'newGooglePrivacyDlpV2InfoType' smart constructor.
data GooglePrivacyDlpV2InfoType = GooglePrivacyDlpV2InfoType
  { -- | Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed at https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/infotypes-reference when specifying a built-in type. When sending Cloud DLP results to Data Catalog, infoType names should conform to the pattern @[A-Za-z0-9$_-]{1,64}@.
    name :: (Core.Maybe Core.Text),
    -- | Optional custom sensitivity for this InfoType. This only applies to data profiling.
    sensitivityScore :: (Core.Maybe GooglePrivacyDlpV2SensitivityScore),
    -- | Optional version name for this InfoType.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2InfoType' with the minimum fields required to make a request.
newGooglePrivacyDlpV2InfoType ::
  GooglePrivacyDlpV2InfoType
newGooglePrivacyDlpV2InfoType =
  GooglePrivacyDlpV2InfoType
    { name = Core.Nothing,
      sensitivityScore = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2InfoType where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2InfoType"
      ( \o ->
          GooglePrivacyDlpV2InfoType
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "sensitivityScore")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON GooglePrivacyDlpV2InfoType where
  toJSON GooglePrivacyDlpV2InfoType {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("sensitivityScore" Core..=) Core.<$> sensitivityScore,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | Classification of infoTypes to organize them according to geographic location, industry, and data type.
--
-- /See:/ 'newGooglePrivacyDlpV2InfoTypeCategory' smart constructor.
data GooglePrivacyDlpV2InfoTypeCategory = GooglePrivacyDlpV2InfoTypeCategory
  { -- | The group of relevant businesses where this infoType is commonly used
    industryCategory :: (Core.Maybe GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory),
    -- | The region or country that issued the ID or document represented by the infoType.
    locationCategory :: (Core.Maybe GooglePrivacyDlpV2InfoTypeCategory_LocationCategory),
    -- | The class of identifiers where this infoType belongs
    typeCategory :: (Core.Maybe GooglePrivacyDlpV2InfoTypeCategory_TypeCategory)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2InfoTypeCategory' with the minimum fields required to make a request.
newGooglePrivacyDlpV2InfoTypeCategory ::
  GooglePrivacyDlpV2InfoTypeCategory
newGooglePrivacyDlpV2InfoTypeCategory =
  GooglePrivacyDlpV2InfoTypeCategory
    { industryCategory =
        Core.Nothing,
      locationCategory = Core.Nothing,
      typeCategory = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2InfoTypeCategory where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2InfoTypeCategory"
      ( \o ->
          GooglePrivacyDlpV2InfoTypeCategory
            Core.<$> (o Core..:? "industryCategory")
            Core.<*> (o Core..:? "locationCategory")
            Core.<*> (o Core..:? "typeCategory")
      )

instance Core.ToJSON GooglePrivacyDlpV2InfoTypeCategory where
  toJSON GooglePrivacyDlpV2InfoTypeCategory {..} =
    Core.object
      ( Core.catMaybes
          [ ("industryCategory" Core..=) Core.<$> industryCategory,
            ("locationCategory" Core..=) Core.<$> locationCategory,
            ("typeCategory" Core..=) Core.<$> typeCategory
          ]
      )

-- | InfoType description.
--
-- /See:/ 'newGooglePrivacyDlpV2InfoTypeDescription' smart constructor.
data GooglePrivacyDlpV2InfoTypeDescription = GooglePrivacyDlpV2InfoTypeDescription
  { -- | The category of the infoType.
    categories :: (Core.Maybe [GooglePrivacyDlpV2InfoTypeCategory]),
    -- | Description of the infotype. Translated when language is provided in the request.
    description :: (Core.Maybe Core.Text),
    -- | Human readable form of the infoType name.
    displayName :: (Core.Maybe Core.Text),
    -- | A sample that is a true positive for this infoType.
    example :: (Core.Maybe Core.Text),
    -- | Internal name of the infoType.
    name :: (Core.Maybe Core.Text),
    -- | The default sensitivity of the infoType.
    sensitivityScore :: (Core.Maybe GooglePrivacyDlpV2SensitivityScore),
    -- | Which parts of the API supports this InfoType.
    supportedBy ::
      ( Core.Maybe
          [GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem]
      ),
    -- | A list of available versions for the infotype.
    versions :: (Core.Maybe [GooglePrivacyDlpV2VersionDescription])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2InfoTypeDescription' with the minimum fields required to make a request.
newGooglePrivacyDlpV2InfoTypeDescription ::
  GooglePrivacyDlpV2InfoTypeDescription
newGooglePrivacyDlpV2InfoTypeDescription =
  GooglePrivacyDlpV2InfoTypeDescription
    { categories = Core.Nothing,
      description = Core.Nothing,
      displayName = Core.Nothing,
      example = Core.Nothing,
      name = Core.Nothing,
      sensitivityScore = Core.Nothing,
      supportedBy = Core.Nothing,
      versions = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2InfoTypeDescription where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2InfoTypeDescription"
      ( \o ->
          GooglePrivacyDlpV2InfoTypeDescription
            Core.<$> (o Core..:? "categories")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "example")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "sensitivityScore")
            Core.<*> (o Core..:? "supportedBy")
            Core.<*> (o Core..:? "versions")
      )

instance Core.ToJSON GooglePrivacyDlpV2InfoTypeDescription where
  toJSON GooglePrivacyDlpV2InfoTypeDescription {..} =
    Core.object
      ( Core.catMaybes
          [ ("categories" Core..=) Core.<$> categories,
            ("description" Core..=) Core.<$> description,
            ("displayName" Core..=) Core.<$> displayName,
            ("example" Core..=) Core.<$> example,
            ("name" Core..=) Core.<$> name,
            ("sensitivityScore" Core..=) Core.<$> sensitivityScore,
            ("supportedBy" Core..=) Core.<$> supportedBy,
            ("versions" Core..=) Core.<$> versions
          ]
      )

-- | Configuration for setting a minimum likelihood per infotype. Used to customize the minimum likelihood level for specific infotypes in the request. For example, use this if you want to lower the precision for PERSON_NAME without lowering the precision for the other infotypes in the request.
--
-- /See:/ 'newGooglePrivacyDlpV2InfoTypeLikelihood' smart constructor.
data GooglePrivacyDlpV2InfoTypeLikelihood = GooglePrivacyDlpV2InfoTypeLikelihood
  { -- | Type of information the likelihood threshold applies to. Only one likelihood per info/type should be provided. If InfoTypeLikelihood does not have an info/type, the configuration fails.
    infoType :: (Core.Maybe GooglePrivacyDlpV2InfoType),
    -- | Only returns findings equal to or above this threshold. This field is required or else the configuration fails.
    minLikelihood :: (Core.Maybe GooglePrivacyDlpV2InfoTypeLikelihood_MinLikelihood)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2InfoTypeLikelihood' with the minimum fields required to make a request.
newGooglePrivacyDlpV2InfoTypeLikelihood ::
  GooglePrivacyDlpV2InfoTypeLikelihood
newGooglePrivacyDlpV2InfoTypeLikelihood =
  GooglePrivacyDlpV2InfoTypeLikelihood
    { infoType = Core.Nothing,
      minLikelihood = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2InfoTypeLikelihood where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2InfoTypeLikelihood"
      ( \o ->
          GooglePrivacyDlpV2InfoTypeLikelihood
            Core.<$> (o Core..:? "infoType")
            Core.<*> (o Core..:? "minLikelihood")
      )

instance Core.ToJSON GooglePrivacyDlpV2InfoTypeLikelihood where
  toJSON GooglePrivacyDlpV2InfoTypeLikelihood {..} =
    Core.object
      ( Core.catMaybes
          [ ("infoType" Core..=) Core.<$> infoType,
            ("minLikelihood" Core..=) Core.<$> minLikelihood
          ]
      )

-- | Max findings configuration per infoType, per content item or long running DlpJob.
--
-- /See:/ 'newGooglePrivacyDlpV2InfoTypeLimit' smart constructor.
data GooglePrivacyDlpV2InfoTypeLimit = GooglePrivacyDlpV2InfoTypeLimit
  { -- | Type of information the findings limit applies to. Only one limit per info/type should be provided. If InfoTypeLimit does not have an info/type, the DLP API applies the limit against all info_types that are found but not specified in another InfoTypeLimit.
    infoType :: (Core.Maybe GooglePrivacyDlpV2InfoType),
    -- | Max findings limit for the given infoType.
    maxFindings :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2InfoTypeLimit' with the minimum fields required to make a request.
newGooglePrivacyDlpV2InfoTypeLimit ::
  GooglePrivacyDlpV2InfoTypeLimit
newGooglePrivacyDlpV2InfoTypeLimit =
  GooglePrivacyDlpV2InfoTypeLimit
    { infoType = Core.Nothing,
      maxFindings = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2InfoTypeLimit where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2InfoTypeLimit"
      ( \o ->
          GooglePrivacyDlpV2InfoTypeLimit
            Core.<$> (o Core..:? "infoType")
            Core.<*> (o Core..:? "maxFindings")
      )

instance Core.ToJSON GooglePrivacyDlpV2InfoTypeLimit where
  toJSON GooglePrivacyDlpV2InfoTypeLimit {..} =
    Core.object
      ( Core.catMaybes
          [ ("infoType" Core..=) Core.<$> infoType,
            ("maxFindings" Core..=) Core.<$> maxFindings
          ]
      )

-- | Statistics regarding a specific InfoType.
--
-- /See:/ 'newGooglePrivacyDlpV2InfoTypeStats' smart constructor.
data GooglePrivacyDlpV2InfoTypeStats = GooglePrivacyDlpV2InfoTypeStats
  { -- | Number of findings for this infoType.
    count :: (Core.Maybe Core.Int64),
    -- | The type of finding this stat is for.
    infoType :: (Core.Maybe GooglePrivacyDlpV2InfoType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2InfoTypeStats' with the minimum fields required to make a request.
newGooglePrivacyDlpV2InfoTypeStats ::
  GooglePrivacyDlpV2InfoTypeStats
newGooglePrivacyDlpV2InfoTypeStats =
  GooglePrivacyDlpV2InfoTypeStats
    { count = Core.Nothing,
      infoType = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2InfoTypeStats where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2InfoTypeStats"
      ( \o ->
          GooglePrivacyDlpV2InfoTypeStats
            Core.<$> (o Core..:? "count" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "infoType")
      )

instance Core.ToJSON GooglePrivacyDlpV2InfoTypeStats where
  toJSON GooglePrivacyDlpV2InfoTypeStats {..} =
    Core.object
      ( Core.catMaybes
          [ ("count" Core..=) Core.. Core.AsText Core.<$> count,
            ("infoType" Core..=) Core.<$> infoType
          ]
      )

-- | The infoType details for this column.
--
-- /See:/ 'newGooglePrivacyDlpV2InfoTypeSummary' smart constructor.
data GooglePrivacyDlpV2InfoTypeSummary = GooglePrivacyDlpV2InfoTypeSummary
  { -- | Not populated for predicted infotypes.
    estimatedPrevalence :: (Core.Maybe Core.Int32),
    -- | The infoType.
    infoType :: (Core.Maybe GooglePrivacyDlpV2InfoType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2InfoTypeSummary' with the minimum fields required to make a request.
newGooglePrivacyDlpV2InfoTypeSummary ::
  GooglePrivacyDlpV2InfoTypeSummary
newGooglePrivacyDlpV2InfoTypeSummary =
  GooglePrivacyDlpV2InfoTypeSummary
    { estimatedPrevalence =
        Core.Nothing,
      infoType = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2InfoTypeSummary where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2InfoTypeSummary"
      ( \o ->
          GooglePrivacyDlpV2InfoTypeSummary
            Core.<$> (o Core..:? "estimatedPrevalence")
            Core.<*> (o Core..:? "infoType")
      )

instance Core.ToJSON GooglePrivacyDlpV2InfoTypeSummary where
  toJSON GooglePrivacyDlpV2InfoTypeSummary {..} =
    Core.object
      ( Core.catMaybes
          [ ("estimatedPrevalence" Core..=) Core.<$> estimatedPrevalence,
            ("infoType" Core..=) Core.<$> infoType
          ]
      )

-- | A transformation to apply to text that is identified as a specific info_type.
--
-- /See:/ 'newGooglePrivacyDlpV2InfoTypeTransformation' smart constructor.
data GooglePrivacyDlpV2InfoTypeTransformation = GooglePrivacyDlpV2InfoTypeTransformation
  { -- | InfoTypes to apply the transformation to. An empty list will cause this transformation to apply to all findings that correspond to infoTypes that were requested in @InspectConfig@.
    infoTypes :: (Core.Maybe [GooglePrivacyDlpV2InfoType]),
    -- | Required. Primitive transformation to apply to the infoType.
    primitiveTransformation :: (Core.Maybe GooglePrivacyDlpV2PrimitiveTransformation)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2InfoTypeTransformation' with the minimum fields required to make a request.
newGooglePrivacyDlpV2InfoTypeTransformation ::
  GooglePrivacyDlpV2InfoTypeTransformation
newGooglePrivacyDlpV2InfoTypeTransformation =
  GooglePrivacyDlpV2InfoTypeTransformation
    { infoTypes =
        Core.Nothing,
      primitiveTransformation = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2InfoTypeTransformation where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2InfoTypeTransformation"
      ( \o ->
          GooglePrivacyDlpV2InfoTypeTransformation
            Core.<$> (o Core..:? "infoTypes")
            Core.<*> (o Core..:? "primitiveTransformation")
      )

instance Core.ToJSON GooglePrivacyDlpV2InfoTypeTransformation where
  toJSON GooglePrivacyDlpV2InfoTypeTransformation {..} =
    Core.object
      ( Core.catMaybes
          [ ("infoTypes" Core..=) Core.<$> infoTypes,
            ("primitiveTransformation" Core..=)
              Core.<$> primitiveTransformation
          ]
      )

-- | A type of transformation that will scan unstructured text and apply various @PrimitiveTransformation@s to each finding, where the transformation is applied to only values that were identified as a specific info_type.
--
-- /See:/ 'newGooglePrivacyDlpV2InfoTypeTransformations' smart constructor.
newtype GooglePrivacyDlpV2InfoTypeTransformations = GooglePrivacyDlpV2InfoTypeTransformations
  { -- | Required. Transformation for each infoType. Cannot specify more than one for a given infoType.
    transformations :: (Core.Maybe [GooglePrivacyDlpV2InfoTypeTransformation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2InfoTypeTransformations' with the minimum fields required to make a request.
newGooglePrivacyDlpV2InfoTypeTransformations ::
  GooglePrivacyDlpV2InfoTypeTransformations
newGooglePrivacyDlpV2InfoTypeTransformations =
  GooglePrivacyDlpV2InfoTypeTransformations
    { transformations =
        Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2InfoTypeTransformations where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2InfoTypeTransformations"
      ( \o ->
          GooglePrivacyDlpV2InfoTypeTransformations
            Core.<$> (o Core..:? "transformations")
      )

instance Core.ToJSON GooglePrivacyDlpV2InfoTypeTransformations where
  toJSON GooglePrivacyDlpV2InfoTypeTransformations {..} =
    Core.object
      ( Core.catMaybes
          [("transformations" Core..=) Core.<$> transformations]
      )

-- | Configuration description of the scanning process. When used with redactContent only info/types and min/likelihood are currently used.
--
-- /See:/ 'newGooglePrivacyDlpV2InspectConfig' smart constructor.
data GooglePrivacyDlpV2InspectConfig = GooglePrivacyDlpV2InspectConfig
  { -- | Deprecated and unused.
    contentOptions :: (Core.Maybe [GooglePrivacyDlpV2InspectConfig_ContentOptionsItem]),
    -- | CustomInfoTypes provided by the user. See https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/creating-custom-infotypes to learn more.
    customInfoTypes :: (Core.Maybe [GooglePrivacyDlpV2CustomInfoType]),
    -- | When true, excludes type information of the findings. This is not used for data profiling.
    excludeInfoTypes :: (Core.Maybe Core.Bool),
    -- | When true, a contextual quote from the data that triggered a finding is included in the response; see Finding.quote. This is not used for data profiling.
    includeQuote :: (Core.Maybe Core.Bool),
    -- | Restricts what info_types to look for. The values must correspond to InfoType values returned by ListInfoTypes or listed at https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/infotypes-reference. When no InfoTypes or CustomInfoTypes are specified in a request, the system may automatically choose a default list of detectors to run, which may change over time. If you need precise control and predictability as to what detectors are run you should specify specific InfoTypes listed in the reference, otherwise a default list will be used, which may change over time.
    infoTypes :: (Core.Maybe [GooglePrivacyDlpV2InfoType]),
    -- | Configuration to control the number of findings returned. This is not used for data profiling. When redacting sensitive data from images, finding limits don\'t apply. They can cause unexpected or inconsistent results, where only some data is redacted. Don\'t include finding limits in RedactImage requests. Otherwise, Cloud DLP returns an error. When set within an InspectJobConfig, the specified maximum values aren\'t hard limits. If an inspection job reaches these limits, the job ends gradually, not abruptly. Therefore, the actual number of findings that Cloud DLP returns can be multiple times higher than these maximum values.
    limits :: (Core.Maybe GooglePrivacyDlpV2FindingLimits),
    -- | Only returns findings equal to or above this threshold. The default is POSSIBLE. In general, the highest likelihood setting yields the fewest findings in results and the lowest chance of a false positive. For more information, see <https://cloud.google.com/sensitive-data-protection/docs/likelihood Match likelihood>.
    minLikelihood :: (Core.Maybe GooglePrivacyDlpV2InspectConfig_MinLikelihood),
    -- | Minimum likelihood per infotype. For each infotype, a user can specify a minimum likelihood. The system only returns a finding if its likelihood is above this threshold. If this field is not set, the system uses the InspectConfig min_likelihood.
    minLikelihoodPerInfoType :: (Core.Maybe [GooglePrivacyDlpV2InfoTypeLikelihood]),
    -- | Set of rules to apply to the findings for this InspectConfig. Exclusion rules, contained in the set are executed in the end, other rules are executed in the order they are specified for each info type.
    ruleSet :: (Core.Maybe [GooglePrivacyDlpV2InspectionRuleSet])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2InspectConfig' with the minimum fields required to make a request.
newGooglePrivacyDlpV2InspectConfig ::
  GooglePrivacyDlpV2InspectConfig
newGooglePrivacyDlpV2InspectConfig =
  GooglePrivacyDlpV2InspectConfig
    { contentOptions = Core.Nothing,
      customInfoTypes = Core.Nothing,
      excludeInfoTypes = Core.Nothing,
      includeQuote = Core.Nothing,
      infoTypes = Core.Nothing,
      limits = Core.Nothing,
      minLikelihood = Core.Nothing,
      minLikelihoodPerInfoType = Core.Nothing,
      ruleSet = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2InspectConfig where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2InspectConfig"
      ( \o ->
          GooglePrivacyDlpV2InspectConfig
            Core.<$> (o Core..:? "contentOptions")
            Core.<*> (o Core..:? "customInfoTypes")
            Core.<*> (o Core..:? "excludeInfoTypes")
            Core.<*> (o Core..:? "includeQuote")
            Core.<*> (o Core..:? "infoTypes")
            Core.<*> (o Core..:? "limits")
            Core.<*> (o Core..:? "minLikelihood")
            Core.<*> (o Core..:? "minLikelihoodPerInfoType")
            Core.<*> (o Core..:? "ruleSet")
      )

instance Core.ToJSON GooglePrivacyDlpV2InspectConfig where
  toJSON GooglePrivacyDlpV2InspectConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentOptions" Core..=) Core.<$> contentOptions,
            ("customInfoTypes" Core..=) Core.<$> customInfoTypes,
            ("excludeInfoTypes" Core..=) Core.<$> excludeInfoTypes,
            ("includeQuote" Core..=) Core.<$> includeQuote,
            ("infoTypes" Core..=) Core.<$> infoTypes,
            ("limits" Core..=) Core.<$> limits,
            ("minLikelihood" Core..=) Core.<$> minLikelihood,
            ("minLikelihoodPerInfoType" Core..=)
              Core.<$> minLikelihoodPerInfoType,
            ("ruleSet" Core..=) Core.<$> ruleSet
          ]
      )

-- | Request to search for potentially sensitive info in a ContentItem.
--
-- /See:/ 'newGooglePrivacyDlpV2InspectContentRequest' smart constructor.
data GooglePrivacyDlpV2InspectContentRequest = GooglePrivacyDlpV2InspectContentRequest
  { -- | Configuration for the inspector. What specified here will override the template referenced by the inspect/template/name argument.
    inspectConfig :: (Core.Maybe GooglePrivacyDlpV2InspectConfig),
    -- | Template to use. Any configuration directly specified in inspect_config will override those set in the template. Singular fields that are set in this request will replace their corresponding fields in the template. Repeated fields are appended. Singular sub-messages and groups are recursively merged.
    inspectTemplateName :: (Core.Maybe Core.Text),
    -- | The item to inspect.
    item :: (Core.Maybe GooglePrivacyDlpV2ContentItem),
    -- | Deprecated. This field has no effect.
    locationId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2InspectContentRequest' with the minimum fields required to make a request.
newGooglePrivacyDlpV2InspectContentRequest ::
  GooglePrivacyDlpV2InspectContentRequest
newGooglePrivacyDlpV2InspectContentRequest =
  GooglePrivacyDlpV2InspectContentRequest
    { inspectConfig =
        Core.Nothing,
      inspectTemplateName = Core.Nothing,
      item = Core.Nothing,
      locationId = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2InspectContentRequest where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2InspectContentRequest"
      ( \o ->
          GooglePrivacyDlpV2InspectContentRequest
            Core.<$> (o Core..:? "inspectConfig")
            Core.<*> (o Core..:? "inspectTemplateName")
            Core.<*> (o Core..:? "item")
            Core.<*> (o Core..:? "locationId")
      )

instance Core.ToJSON GooglePrivacyDlpV2InspectContentRequest where
  toJSON GooglePrivacyDlpV2InspectContentRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("inspectConfig" Core..=) Core.<$> inspectConfig,
            ("inspectTemplateName" Core..=) Core.<$> inspectTemplateName,
            ("item" Core..=) Core.<$> item,
            ("locationId" Core..=) Core.<$> locationId
          ]
      )

-- | Results of inspecting an item.
--
-- /See:/ 'newGooglePrivacyDlpV2InspectContentResponse' smart constructor.
newtype GooglePrivacyDlpV2InspectContentResponse = GooglePrivacyDlpV2InspectContentResponse
  { -- | The findings.
    result :: (Core.Maybe GooglePrivacyDlpV2InspectResult)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2InspectContentResponse' with the minimum fields required to make a request.
newGooglePrivacyDlpV2InspectContentResponse ::
  GooglePrivacyDlpV2InspectContentResponse
newGooglePrivacyDlpV2InspectContentResponse =
  GooglePrivacyDlpV2InspectContentResponse {result = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2InspectContentResponse where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2InspectContentResponse"
      ( \o ->
          GooglePrivacyDlpV2InspectContentResponse
            Core.<$> (o Core..:? "result")
      )

instance Core.ToJSON GooglePrivacyDlpV2InspectContentResponse where
  toJSON GooglePrivacyDlpV2InspectContentResponse {..} =
    Core.object (Core.catMaybes [("result" Core..=) Core.<$> result])

-- | The results of an inspect DataSource job.
--
-- /See:/ 'newGooglePrivacyDlpV2InspectDataSourceDetails' smart constructor.
data GooglePrivacyDlpV2InspectDataSourceDetails = GooglePrivacyDlpV2InspectDataSourceDetails
  { -- | The configuration used for this job.
    requestedOptions :: (Core.Maybe GooglePrivacyDlpV2RequestedOptions),
    -- | A summary of the outcome of this inspection job.
    result :: (Core.Maybe GooglePrivacyDlpV2Result)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2InspectDataSourceDetails' with the minimum fields required to make a request.
newGooglePrivacyDlpV2InspectDataSourceDetails ::
  GooglePrivacyDlpV2InspectDataSourceDetails
newGooglePrivacyDlpV2InspectDataSourceDetails =
  GooglePrivacyDlpV2InspectDataSourceDetails
    { requestedOptions =
        Core.Nothing,
      result = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2InspectDataSourceDetails where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2InspectDataSourceDetails"
      ( \o ->
          GooglePrivacyDlpV2InspectDataSourceDetails
            Core.<$> (o Core..:? "requestedOptions")
            Core.<*> (o Core..:? "result")
      )

instance Core.ToJSON GooglePrivacyDlpV2InspectDataSourceDetails where
  toJSON GooglePrivacyDlpV2InspectDataSourceDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("requestedOptions" Core..=) Core.<$> requestedOptions,
            ("result" Core..=) Core.<$> result
          ]
      )

-- | Controls what and how to inspect for findings.
--
-- /See:/ 'newGooglePrivacyDlpV2InspectJobConfig' smart constructor.
data GooglePrivacyDlpV2InspectJobConfig = GooglePrivacyDlpV2InspectJobConfig
  { -- | Actions to execute at the completion of the job.
    actions :: (Core.Maybe [GooglePrivacyDlpV2Action]),
    -- | How and what to scan for.
    inspectConfig :: (Core.Maybe GooglePrivacyDlpV2InspectConfig),
    -- | If provided, will be used as the default for all values in InspectConfig. @inspect_config@ will be merged into the values persisted as part of the template.
    inspectTemplateName :: (Core.Maybe Core.Text),
    -- | The data to scan.
    storageConfig :: (Core.Maybe GooglePrivacyDlpV2StorageConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2InspectJobConfig' with the minimum fields required to make a request.
newGooglePrivacyDlpV2InspectJobConfig ::
  GooglePrivacyDlpV2InspectJobConfig
newGooglePrivacyDlpV2InspectJobConfig =
  GooglePrivacyDlpV2InspectJobConfig
    { actions = Core.Nothing,
      inspectConfig = Core.Nothing,
      inspectTemplateName = Core.Nothing,
      storageConfig = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2InspectJobConfig where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2InspectJobConfig"
      ( \o ->
          GooglePrivacyDlpV2InspectJobConfig
            Core.<$> (o Core..:? "actions")
            Core.<*> (o Core..:? "inspectConfig")
            Core.<*> (o Core..:? "inspectTemplateName")
            Core.<*> (o Core..:? "storageConfig")
      )

instance Core.ToJSON GooglePrivacyDlpV2InspectJobConfig where
  toJSON GooglePrivacyDlpV2InspectJobConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("actions" Core..=) Core.<$> actions,
            ("inspectConfig" Core..=) Core.<$> inspectConfig,
            ("inspectTemplateName" Core..=) Core.<$> inspectTemplateName,
            ("storageConfig" Core..=) Core.<$> storageConfig
          ]
      )

-- | All the findings for a single scanned item.
--
-- /See:/ 'newGooglePrivacyDlpV2InspectResult' smart constructor.
data GooglePrivacyDlpV2InspectResult = GooglePrivacyDlpV2InspectResult
  { -- | List of findings for an item.
    findings :: (Core.Maybe [GooglePrivacyDlpV2Finding]),
    -- | If true, then this item might have more findings than were returned, and the findings returned are an arbitrary subset of all findings. The findings list might be truncated because the input items were too large, or because the server reached the maximum amount of resources allowed for a single API call. For best results, divide the input into smaller batches.
    findingsTruncated :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2InspectResult' with the minimum fields required to make a request.
newGooglePrivacyDlpV2InspectResult ::
  GooglePrivacyDlpV2InspectResult
newGooglePrivacyDlpV2InspectResult =
  GooglePrivacyDlpV2InspectResult
    { findings = Core.Nothing,
      findingsTruncated = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2InspectResult where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2InspectResult"
      ( \o ->
          GooglePrivacyDlpV2InspectResult
            Core.<$> (o Core..:? "findings")
            Core.<*> (o Core..:? "findingsTruncated")
      )

instance Core.ToJSON GooglePrivacyDlpV2InspectResult where
  toJSON GooglePrivacyDlpV2InspectResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("findings" Core..=) Core.<$> findings,
            ("findingsTruncated" Core..=) Core.<$> findingsTruncated
          ]
      )

-- | The inspectTemplate contains a configuration (set of types of sensitive data to be detected) to be used anywhere you otherwise would normally specify InspectConfig. See https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/concepts-templates to learn more.
--
-- /See:/ 'newGooglePrivacyDlpV2InspectTemplate' smart constructor.
data GooglePrivacyDlpV2InspectTemplate = GooglePrivacyDlpV2InspectTemplate
  { -- | Output only. The creation timestamp of an inspectTemplate.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Short description (max 256 chars).
    description :: (Core.Maybe Core.Text),
    -- | Display name (max 256 chars).
    displayName :: (Core.Maybe Core.Text),
    -- | The core content of the template. Configuration of the scanning process.
    inspectConfig :: (Core.Maybe GooglePrivacyDlpV2InspectConfig),
    -- | Output only. The template name. The template will have one of the following formats: @projects\/PROJECT_ID\/inspectTemplates\/TEMPLATE_ID@ OR @organizations\/ORGANIZATION_ID\/inspectTemplates\/TEMPLATE_ID@;
    name :: (Core.Maybe Core.Text),
    -- | Output only. The last update timestamp of an inspectTemplate.
    updateTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2InspectTemplate' with the minimum fields required to make a request.
newGooglePrivacyDlpV2InspectTemplate ::
  GooglePrivacyDlpV2InspectTemplate
newGooglePrivacyDlpV2InspectTemplate =
  GooglePrivacyDlpV2InspectTemplate
    { createTime = Core.Nothing,
      description = Core.Nothing,
      displayName = Core.Nothing,
      inspectConfig = Core.Nothing,
      name = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2InspectTemplate where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2InspectTemplate"
      ( \o ->
          GooglePrivacyDlpV2InspectTemplate
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "inspectConfig")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON GooglePrivacyDlpV2InspectTemplate where
  toJSON GooglePrivacyDlpV2InspectTemplate {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("description" Core..=) Core.<$> description,
            ("displayName" Core..=) Core.<$> displayName,
            ("inspectConfig" Core..=) Core.<$> inspectConfig,
            ("name" Core..=) Core.<$> name,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | A single inspection rule to be applied to infoTypes, specified in @InspectionRuleSet@.
--
-- /See:/ 'newGooglePrivacyDlpV2InspectionRule' smart constructor.
data GooglePrivacyDlpV2InspectionRule = GooglePrivacyDlpV2InspectionRule
  { -- | Exclusion rule.
    exclusionRule :: (Core.Maybe GooglePrivacyDlpV2ExclusionRule),
    -- | Hotword-based detection rule.
    hotwordRule :: (Core.Maybe GooglePrivacyDlpV2HotwordRule)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2InspectionRule' with the minimum fields required to make a request.
newGooglePrivacyDlpV2InspectionRule ::
  GooglePrivacyDlpV2InspectionRule
newGooglePrivacyDlpV2InspectionRule =
  GooglePrivacyDlpV2InspectionRule
    { exclusionRule = Core.Nothing,
      hotwordRule = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2InspectionRule where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2InspectionRule"
      ( \o ->
          GooglePrivacyDlpV2InspectionRule
            Core.<$> (o Core..:? "exclusionRule")
            Core.<*> (o Core..:? "hotwordRule")
      )

instance Core.ToJSON GooglePrivacyDlpV2InspectionRule where
  toJSON GooglePrivacyDlpV2InspectionRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("exclusionRule" Core..=) Core.<$> exclusionRule,
            ("hotwordRule" Core..=) Core.<$> hotwordRule
          ]
      )

-- | Rule set for modifying a set of infoTypes to alter behavior under certain circumstances, depending on the specific details of the rules within the set.
--
-- /See:/ 'newGooglePrivacyDlpV2InspectionRuleSet' smart constructor.
data GooglePrivacyDlpV2InspectionRuleSet = GooglePrivacyDlpV2InspectionRuleSet
  { -- | List of infoTypes this rule set is applied to.
    infoTypes :: (Core.Maybe [GooglePrivacyDlpV2InfoType]),
    -- | Set of rules to be applied to infoTypes. The rules are applied in order.
    rules :: (Core.Maybe [GooglePrivacyDlpV2InspectionRule])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2InspectionRuleSet' with the minimum fields required to make a request.
newGooglePrivacyDlpV2InspectionRuleSet ::
  GooglePrivacyDlpV2InspectionRuleSet
newGooglePrivacyDlpV2InspectionRuleSet =
  GooglePrivacyDlpV2InspectionRuleSet
    { infoTypes = Core.Nothing,
      rules = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2InspectionRuleSet where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2InspectionRuleSet"
      ( \o ->
          GooglePrivacyDlpV2InspectionRuleSet
            Core.<$> (o Core..:? "infoTypes")
            Core.<*> (o Core..:? "rules")
      )

instance Core.ToJSON GooglePrivacyDlpV2InspectionRuleSet where
  toJSON GooglePrivacyDlpV2InspectionRuleSet {..} =
    Core.object
      ( Core.catMaybes
          [ ("infoTypes" Core..=) Core.<$> infoTypes,
            ("rules" Core..=) Core.<$> rules
          ]
      )

-- | Sends an email when the job completes. The email goes to IAM project owners and technical <https://cloud.google.com/resource-manager/docs/managing-notification-contacts Essential Contacts>.
--
-- /See:/ 'newGooglePrivacyDlpV2JobNotificationEmails' smart constructor.
data GooglePrivacyDlpV2JobNotificationEmails = GooglePrivacyDlpV2JobNotificationEmails
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2JobNotificationEmails' with the minimum fields required to make a request.
newGooglePrivacyDlpV2JobNotificationEmails ::
  GooglePrivacyDlpV2JobNotificationEmails
newGooglePrivacyDlpV2JobNotificationEmails =
  GooglePrivacyDlpV2JobNotificationEmails

instance Core.FromJSON GooglePrivacyDlpV2JobNotificationEmails where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2JobNotificationEmails"
      (\o -> Core.pure GooglePrivacyDlpV2JobNotificationEmails)

instance Core.ToJSON GooglePrivacyDlpV2JobNotificationEmails where
  toJSON = Core.const Core.emptyObject

-- | Contains a configuration to make API calls on a repeating basis. See https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/concepts-job-triggers to learn more.
--
-- /See:/ 'newGooglePrivacyDlpV2JobTrigger' smart constructor.
data GooglePrivacyDlpV2JobTrigger = GooglePrivacyDlpV2JobTrigger
  { -- | Output only. The creation timestamp of a triggeredJob.
    createTime :: (Core.Maybe Core.DateTime),
    -- | User provided description (max 256 chars)
    description :: (Core.Maybe Core.Text),
    -- | Display name (max 100 chars)
    displayName :: (Core.Maybe Core.Text),
    -- | Output only. A stream of errors encountered when the trigger was activated. Repeated errors may result in the JobTrigger automatically being paused. Will return the last 100 errors. Whenever the JobTrigger is modified this list will be cleared.
    errors :: (Core.Maybe [GooglePrivacyDlpV2Error]),
    -- | For inspect jobs, a snapshot of the configuration.
    inspectJob :: (Core.Maybe GooglePrivacyDlpV2InspectJobConfig),
    -- | Output only. The timestamp of the last time this trigger executed.
    lastRunTime :: (Core.Maybe Core.DateTime),
    -- | Unique resource name for the triggeredJob, assigned by the service when the triggeredJob is created, for example @projects\/dlp-test-project\/jobTriggers\/53234423@.
    name :: (Core.Maybe Core.Text),
    -- | Required. A status for this trigger.
    status :: (Core.Maybe GooglePrivacyDlpV2JobTrigger_Status),
    -- | A list of triggers which will be OR\'ed together. Only one in the list needs to trigger for a job to be started. The list may contain only a single Schedule trigger and must have at least one object.
    triggers :: (Core.Maybe [GooglePrivacyDlpV2Trigger]),
    -- | Output only. The last update timestamp of a triggeredJob.
    updateTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2JobTrigger' with the minimum fields required to make a request.
newGooglePrivacyDlpV2JobTrigger ::
  GooglePrivacyDlpV2JobTrigger
newGooglePrivacyDlpV2JobTrigger =
  GooglePrivacyDlpV2JobTrigger
    { createTime = Core.Nothing,
      description = Core.Nothing,
      displayName = Core.Nothing,
      errors = Core.Nothing,
      inspectJob = Core.Nothing,
      lastRunTime = Core.Nothing,
      name = Core.Nothing,
      status = Core.Nothing,
      triggers = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2JobTrigger where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2JobTrigger"
      ( \o ->
          GooglePrivacyDlpV2JobTrigger
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "errors")
            Core.<*> (o Core..:? "inspectJob")
            Core.<*> (o Core..:? "lastRunTime")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "triggers")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON GooglePrivacyDlpV2JobTrigger where
  toJSON GooglePrivacyDlpV2JobTrigger {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("description" Core..=) Core.<$> description,
            ("displayName" Core..=) Core.<$> displayName,
            ("errors" Core..=) Core.<$> errors,
            ("inspectJob" Core..=) Core.<$> inspectJob,
            ("lastRunTime" Core..=) Core.<$> lastRunTime,
            ("name" Core..=) Core.<$> name,
            ("status" Core..=) Core.<$> status,
            ("triggers" Core..=) Core.<$> triggers,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | k-anonymity metric, used for analysis of reidentification risk.
--
-- /See:/ 'newGooglePrivacyDlpV2KAnonymityConfig' smart constructor.
data GooglePrivacyDlpV2KAnonymityConfig = GooglePrivacyDlpV2KAnonymityConfig
  { -- | Message indicating that multiple rows might be associated to a single individual. If the same entity_id is associated to multiple quasi-identifier tuples over distinct rows, we consider the entire collection of tuples as the composite quasi-identifier. This collection is a multiset: the order in which the different tuples appear in the dataset is ignored, but their frequency is taken into account. Important note: a maximum of 1000 rows can be associated to a single entity ID. If more rows are associated with the same entity ID, some might be ignored.
    entityId :: (Core.Maybe GooglePrivacyDlpV2EntityId),
    -- | Set of fields to compute k-anonymity over. When multiple fields are specified, they are considered a single composite key. Structs and repeated data types are not supported; however, nested fields are supported so long as they are not structs themselves or nested within a repeated field.
    quasiIds :: (Core.Maybe [GooglePrivacyDlpV2FieldId])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2KAnonymityConfig' with the minimum fields required to make a request.
newGooglePrivacyDlpV2KAnonymityConfig ::
  GooglePrivacyDlpV2KAnonymityConfig
newGooglePrivacyDlpV2KAnonymityConfig =
  GooglePrivacyDlpV2KAnonymityConfig
    { entityId = Core.Nothing,
      quasiIds = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2KAnonymityConfig where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2KAnonymityConfig"
      ( \o ->
          GooglePrivacyDlpV2KAnonymityConfig
            Core.<$> (o Core..:? "entityId")
            Core.<*> (o Core..:? "quasiIds")
      )

instance Core.ToJSON GooglePrivacyDlpV2KAnonymityConfig where
  toJSON GooglePrivacyDlpV2KAnonymityConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("entityId" Core..=) Core.<$> entityId,
            ("quasiIds" Core..=) Core.<$> quasiIds
          ]
      )

-- | The set of columns\' values that share the same ldiversity value
--
-- /See:/ 'newGooglePrivacyDlpV2KAnonymityEquivalenceClass' smart constructor.
data GooglePrivacyDlpV2KAnonymityEquivalenceClass = GooglePrivacyDlpV2KAnonymityEquivalenceClass
  { -- | Size of the equivalence class, for example number of rows with the above set of values.
    equivalenceClassSize :: (Core.Maybe Core.Int64),
    -- | Set of values defining the equivalence class. One value per quasi-identifier column in the original KAnonymity metric message. The order is always the same as the original request.
    quasiIdsValues :: (Core.Maybe [GooglePrivacyDlpV2Value])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2KAnonymityEquivalenceClass' with the minimum fields required to make a request.
newGooglePrivacyDlpV2KAnonymityEquivalenceClass ::
  GooglePrivacyDlpV2KAnonymityEquivalenceClass
newGooglePrivacyDlpV2KAnonymityEquivalenceClass =
  GooglePrivacyDlpV2KAnonymityEquivalenceClass
    { equivalenceClassSize =
        Core.Nothing,
      quasiIdsValues = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2KAnonymityEquivalenceClass where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2KAnonymityEquivalenceClass"
      ( \o ->
          GooglePrivacyDlpV2KAnonymityEquivalenceClass
            Core.<$> ( o
                         Core..:? "equivalenceClassSize"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "quasiIdsValues")
      )

instance Core.ToJSON GooglePrivacyDlpV2KAnonymityEquivalenceClass where
  toJSON GooglePrivacyDlpV2KAnonymityEquivalenceClass {..} =
    Core.object
      ( Core.catMaybes
          [ ("equivalenceClassSize" Core..=)
              Core.. Core.AsText
              Core.<$> equivalenceClassSize,
            ("quasiIdsValues" Core..=) Core.<$> quasiIdsValues
          ]
      )

-- | Histogram of k-anonymity equivalence classes.
--
-- /See:/ 'newGooglePrivacyDlpV2KAnonymityHistogramBucket' smart constructor.
data GooglePrivacyDlpV2KAnonymityHistogramBucket = GooglePrivacyDlpV2KAnonymityHistogramBucket
  { -- | Total number of equivalence classes in this bucket.
    bucketSize :: (Core.Maybe Core.Int64),
    -- | Total number of distinct equivalence classes in this bucket.
    bucketValueCount :: (Core.Maybe Core.Int64),
    -- | Sample of equivalence classes in this bucket. The total number of classes returned per bucket is capped at 20.
    bucketValues :: (Core.Maybe [GooglePrivacyDlpV2KAnonymityEquivalenceClass]),
    -- | Lower bound on the size of the equivalence classes in this bucket.
    equivalenceClassSizeLowerBound :: (Core.Maybe Core.Int64),
    -- | Upper bound on the size of the equivalence classes in this bucket.
    equivalenceClassSizeUpperBound :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2KAnonymityHistogramBucket' with the minimum fields required to make a request.
newGooglePrivacyDlpV2KAnonymityHistogramBucket ::
  GooglePrivacyDlpV2KAnonymityHistogramBucket
newGooglePrivacyDlpV2KAnonymityHistogramBucket =
  GooglePrivacyDlpV2KAnonymityHistogramBucket
    { bucketSize =
        Core.Nothing,
      bucketValueCount = Core.Nothing,
      bucketValues = Core.Nothing,
      equivalenceClassSizeLowerBound = Core.Nothing,
      equivalenceClassSizeUpperBound = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2KAnonymityHistogramBucket where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2KAnonymityHistogramBucket"
      ( \o ->
          GooglePrivacyDlpV2KAnonymityHistogramBucket
            Core.<$> (o Core..:? "bucketSize" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "bucketValueCount" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "bucketValues")
            Core.<*> ( o
                         Core..:? "equivalenceClassSizeLowerBound"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "equivalenceClassSizeUpperBound"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON GooglePrivacyDlpV2KAnonymityHistogramBucket where
  toJSON GooglePrivacyDlpV2KAnonymityHistogramBucket {..} =
    Core.object
      ( Core.catMaybes
          [ ("bucketSize" Core..=) Core.. Core.AsText Core.<$> bucketSize,
            ("bucketValueCount" Core..=)
              Core.. Core.AsText
              Core.<$> bucketValueCount,
            ("bucketValues" Core..=) Core.<$> bucketValues,
            ("equivalenceClassSizeLowerBound" Core..=)
              Core.. Core.AsText
              Core.<$> equivalenceClassSizeLowerBound,
            ("equivalenceClassSizeUpperBound" Core..=)
              Core.. Core.AsText
              Core.<$> equivalenceClassSizeUpperBound
          ]
      )

-- | Result of the k-anonymity computation.
--
-- /See:/ 'newGooglePrivacyDlpV2KAnonymityResult' smart constructor.
newtype GooglePrivacyDlpV2KAnonymityResult = GooglePrivacyDlpV2KAnonymityResult
  { -- | Histogram of k-anonymity equivalence classes.
    equivalenceClassHistogramBuckets :: (Core.Maybe [GooglePrivacyDlpV2KAnonymityHistogramBucket])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2KAnonymityResult' with the minimum fields required to make a request.
newGooglePrivacyDlpV2KAnonymityResult ::
  GooglePrivacyDlpV2KAnonymityResult
newGooglePrivacyDlpV2KAnonymityResult =
  GooglePrivacyDlpV2KAnonymityResult
    { equivalenceClassHistogramBuckets =
        Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2KAnonymityResult where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2KAnonymityResult"
      ( \o ->
          GooglePrivacyDlpV2KAnonymityResult
            Core.<$> (o Core..:? "equivalenceClassHistogramBuckets")
      )

instance Core.ToJSON GooglePrivacyDlpV2KAnonymityResult where
  toJSON GooglePrivacyDlpV2KAnonymityResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("equivalenceClassHistogramBuckets" Core..=)
              Core.<$> equivalenceClassHistogramBuckets
          ]
      )

-- | Reidentifiability metric. This corresponds to a risk model similar to what is called \"journalist risk\" in the literature, except the attack dataset is statistically modeled instead of being perfectly known. This can be done using publicly available data (like the US Census), or using a custom statistical model (indicated as one or several BigQuery tables), or by extrapolating from the distribution of values in the input dataset.
--
-- /See:/ 'newGooglePrivacyDlpV2KMapEstimationConfig' smart constructor.
data GooglePrivacyDlpV2KMapEstimationConfig = GooglePrivacyDlpV2KMapEstimationConfig
  { -- | Several auxiliary tables can be used in the analysis. Each custom_tag used to tag a quasi-identifiers column must appear in exactly one column of one auxiliary table.
    auxiliaryTables :: (Core.Maybe [GooglePrivacyDlpV2AuxiliaryTable]),
    -- | Required. Fields considered to be quasi-identifiers. No two columns can have the same tag.
    quasiIds :: (Core.Maybe [GooglePrivacyDlpV2TaggedField]),
    -- | ISO 3166-1 alpha-2 region code to use in the statistical modeling. Set if no column is tagged with a region-specific InfoType (like US/ZIP/5) or a region code.
    regionCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2KMapEstimationConfig' with the minimum fields required to make a request.
newGooglePrivacyDlpV2KMapEstimationConfig ::
  GooglePrivacyDlpV2KMapEstimationConfig
newGooglePrivacyDlpV2KMapEstimationConfig =
  GooglePrivacyDlpV2KMapEstimationConfig
    { auxiliaryTables =
        Core.Nothing,
      quasiIds = Core.Nothing,
      regionCode = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2KMapEstimationConfig where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2KMapEstimationConfig"
      ( \o ->
          GooglePrivacyDlpV2KMapEstimationConfig
            Core.<$> (o Core..:? "auxiliaryTables")
            Core.<*> (o Core..:? "quasiIds")
            Core.<*> (o Core..:? "regionCode")
      )

instance Core.ToJSON GooglePrivacyDlpV2KMapEstimationConfig where
  toJSON GooglePrivacyDlpV2KMapEstimationConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("auxiliaryTables" Core..=) Core.<$> auxiliaryTables,
            ("quasiIds" Core..=) Core.<$> quasiIds,
            ("regionCode" Core..=) Core.<$> regionCode
          ]
      )

-- | A KMapEstimationHistogramBucket message with the following values: min/anonymity: 3 max/anonymity: 5 frequency: 42 means that there are 42 records whose quasi-identifier values correspond to 3, 4 or 5 people in the overlying population. An important particular case is when min/anonymity = max/anonymity = 1: the frequency field then corresponds to the number of uniquely identifiable records.
--
-- /See:/ 'newGooglePrivacyDlpV2KMapEstimationHistogramBucket' smart constructor.
data GooglePrivacyDlpV2KMapEstimationHistogramBucket = GooglePrivacyDlpV2KMapEstimationHistogramBucket
  { -- | Number of records within these anonymity bounds.
    bucketSize :: (Core.Maybe Core.Int64),
    -- | Total number of distinct quasi-identifier tuple values in this bucket.
    bucketValueCount :: (Core.Maybe Core.Int64),
    -- | Sample of quasi-identifier tuple values in this bucket. The total number of classes returned per bucket is capped at 20.
    bucketValues :: (Core.Maybe [GooglePrivacyDlpV2KMapEstimationQuasiIdValues]),
    -- | Always greater than or equal to min_anonymity.
    maxAnonymity :: (Core.Maybe Core.Int64),
    -- | Always positive.
    minAnonymity :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2KMapEstimationHistogramBucket' with the minimum fields required to make a request.
newGooglePrivacyDlpV2KMapEstimationHistogramBucket ::
  GooglePrivacyDlpV2KMapEstimationHistogramBucket
newGooglePrivacyDlpV2KMapEstimationHistogramBucket =
  GooglePrivacyDlpV2KMapEstimationHistogramBucket
    { bucketSize =
        Core.Nothing,
      bucketValueCount = Core.Nothing,
      bucketValues = Core.Nothing,
      maxAnonymity = Core.Nothing,
      minAnonymity = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2KMapEstimationHistogramBucket
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2KMapEstimationHistogramBucket"
      ( \o ->
          GooglePrivacyDlpV2KMapEstimationHistogramBucket
            Core.<$> (o Core..:? "bucketSize" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "bucketValueCount" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "bucketValues")
            Core.<*> (o Core..:? "maxAnonymity" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "minAnonymity" Core.<&> Core.fmap Core.fromAsText)
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2KMapEstimationHistogramBucket
  where
  toJSON GooglePrivacyDlpV2KMapEstimationHistogramBucket {..} =
    Core.object
      ( Core.catMaybes
          [ ("bucketSize" Core..=) Core.. Core.AsText Core.<$> bucketSize,
            ("bucketValueCount" Core..=)
              Core.. Core.AsText
              Core.<$> bucketValueCount,
            ("bucketValues" Core..=) Core.<$> bucketValues,
            ("maxAnonymity" Core..=) Core.. Core.AsText Core.<$> maxAnonymity,
            ("minAnonymity" Core..=) Core.. Core.AsText Core.<$> minAnonymity
          ]
      )

-- | A tuple of values for the quasi-identifier columns.
--
-- /See:/ 'newGooglePrivacyDlpV2KMapEstimationQuasiIdValues' smart constructor.
data GooglePrivacyDlpV2KMapEstimationQuasiIdValues = GooglePrivacyDlpV2KMapEstimationQuasiIdValues
  { -- | The estimated anonymity for these quasi-identifier values.
    estimatedAnonymity :: (Core.Maybe Core.Int64),
    -- | The quasi-identifier values.
    quasiIdsValues :: (Core.Maybe [GooglePrivacyDlpV2Value])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2KMapEstimationQuasiIdValues' with the minimum fields required to make a request.
newGooglePrivacyDlpV2KMapEstimationQuasiIdValues ::
  GooglePrivacyDlpV2KMapEstimationQuasiIdValues
newGooglePrivacyDlpV2KMapEstimationQuasiIdValues =
  GooglePrivacyDlpV2KMapEstimationQuasiIdValues
    { estimatedAnonymity =
        Core.Nothing,
      quasiIdsValues = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2KMapEstimationQuasiIdValues
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2KMapEstimationQuasiIdValues"
      ( \o ->
          GooglePrivacyDlpV2KMapEstimationQuasiIdValues
            Core.<$> ( o
                         Core..:? "estimatedAnonymity"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "quasiIdsValues")
      )

instance Core.ToJSON GooglePrivacyDlpV2KMapEstimationQuasiIdValues where
  toJSON GooglePrivacyDlpV2KMapEstimationQuasiIdValues {..} =
    Core.object
      ( Core.catMaybes
          [ ("estimatedAnonymity" Core..=)
              Core.. Core.AsText
              Core.<$> estimatedAnonymity,
            ("quasiIdsValues" Core..=) Core.<$> quasiIdsValues
          ]
      )

-- | Result of the reidentifiability analysis. Note that these results are an estimation, not exact values.
--
-- /See:/ 'newGooglePrivacyDlpV2KMapEstimationResult' smart constructor.
newtype GooglePrivacyDlpV2KMapEstimationResult = GooglePrivacyDlpV2KMapEstimationResult
  { -- | The intervals [min/anonymity, max/anonymity] do not overlap. If a value doesn\'t correspond to any such interval, the associated frequency is zero. For example, the following records: {min/anonymity: 1, max/anonymity: 1, frequency: 17} {min/anonymity: 2, max/anonymity: 3, frequency: 42} {min/anonymity: 5, max/anonymity: 10, frequency: 99} mean that there are no record with an estimated anonymity of 4, 5, or larger than 10.
    kMapEstimationHistogram :: (Core.Maybe [GooglePrivacyDlpV2KMapEstimationHistogramBucket])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2KMapEstimationResult' with the minimum fields required to make a request.
newGooglePrivacyDlpV2KMapEstimationResult ::
  GooglePrivacyDlpV2KMapEstimationResult
newGooglePrivacyDlpV2KMapEstimationResult =
  GooglePrivacyDlpV2KMapEstimationResult
    { kMapEstimationHistogram =
        Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2KMapEstimationResult where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2KMapEstimationResult"
      ( \o ->
          GooglePrivacyDlpV2KMapEstimationResult
            Core.<$> (o Core..:? "kMapEstimationHistogram")
      )

instance Core.ToJSON GooglePrivacyDlpV2KMapEstimationResult where
  toJSON GooglePrivacyDlpV2KMapEstimationResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("kMapEstimationHistogram" Core..=)
              Core.<$> kMapEstimationHistogram
          ]
      )

-- | A unique identifier for a Datastore entity. If a key\'s partition ID or any of its path kinds or names are reserved\/read-only, the key is reserved\/read-only. A reserved\/read-only key is forbidden in certain documented contexts.
--
-- /See:/ 'newGooglePrivacyDlpV2Key' smart constructor.
data GooglePrivacyDlpV2Key = GooglePrivacyDlpV2Key
  { -- | Entities are partitioned into subsets, currently identified by a project ID and namespace ID. Queries are scoped to a single partition.
    partitionId :: (Core.Maybe GooglePrivacyDlpV2PartitionId),
    -- | The entity path. An entity path consists of one or more elements composed of a kind and a string or numerical identifier, which identify entities. The first element identifies a /root entity/, the second element identifies a /child/ of the root entity, the third element identifies a child of the second entity, and so forth. The entities identified by all prefixes of the path are called the element\'s /ancestors/. A path can never be empty, and a path can have at most 100 elements.
    path :: (Core.Maybe [GooglePrivacyDlpV2PathElement])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Key' with the minimum fields required to make a request.
newGooglePrivacyDlpV2Key ::
  GooglePrivacyDlpV2Key
newGooglePrivacyDlpV2Key =
  GooglePrivacyDlpV2Key
    { partitionId = Core.Nothing,
      path = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2Key where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2Key"
      ( \o ->
          GooglePrivacyDlpV2Key
            Core.<$> (o Core..:? "partitionId")
            Core.<*> (o Core..:? "path")
      )

instance Core.ToJSON GooglePrivacyDlpV2Key where
  toJSON GooglePrivacyDlpV2Key {..} =
    Core.object
      ( Core.catMaybes
          [ ("partitionId" Core..=) Core.<$> partitionId,
            ("path" Core..=) Core.<$> path
          ]
      )

-- | A representation of a Datastore kind.
--
-- /See:/ 'newGooglePrivacyDlpV2KindExpression' smart constructor.
newtype GooglePrivacyDlpV2KindExpression = GooglePrivacyDlpV2KindExpression
  { -- | The name of the kind.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2KindExpression' with the minimum fields required to make a request.
newGooglePrivacyDlpV2KindExpression ::
  GooglePrivacyDlpV2KindExpression
newGooglePrivacyDlpV2KindExpression =
  GooglePrivacyDlpV2KindExpression {name = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2KindExpression where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2KindExpression"
      ( \o ->
          GooglePrivacyDlpV2KindExpression Core.<$> (o Core..:? "name")
      )

instance Core.ToJSON GooglePrivacyDlpV2KindExpression where
  toJSON GooglePrivacyDlpV2KindExpression {..} =
    Core.object (Core.catMaybes [("name" Core..=) Core.<$> name])

-- | Include to use an existing data crypto key wrapped by KMS. The wrapped key must be a 128-, 192-, or 256-bit key. Authorization requires the following IAM permissions when sending a request to perform a crypto transformation using a KMS-wrapped crypto key: dlp.kms.encrypt For more information, see [Creating a wrapped key] (https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/create-wrapped-key). Note: When you use Cloud KMS for cryptographic operations, <https://cloud.google.com/kms/pricing charges apply>.
--
-- /See:/ 'newGooglePrivacyDlpV2KmsWrappedCryptoKey' smart constructor.
data GooglePrivacyDlpV2KmsWrappedCryptoKey = GooglePrivacyDlpV2KmsWrappedCryptoKey
  { -- | Required. The resource name of the KMS CryptoKey to use for unwrapping.
    cryptoKeyName :: (Core.Maybe Core.Text),
    -- | Required. The wrapped data crypto key.
    wrappedKey :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2KmsWrappedCryptoKey' with the minimum fields required to make a request.
newGooglePrivacyDlpV2KmsWrappedCryptoKey ::
  GooglePrivacyDlpV2KmsWrappedCryptoKey
newGooglePrivacyDlpV2KmsWrappedCryptoKey =
  GooglePrivacyDlpV2KmsWrappedCryptoKey
    { cryptoKeyName =
        Core.Nothing,
      wrappedKey = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2KmsWrappedCryptoKey where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2KmsWrappedCryptoKey"
      ( \o ->
          GooglePrivacyDlpV2KmsWrappedCryptoKey
            Core.<$> (o Core..:? "cryptoKeyName")
            Core.<*> (o Core..:? "wrappedKey")
      )

instance Core.ToJSON GooglePrivacyDlpV2KmsWrappedCryptoKey where
  toJSON GooglePrivacyDlpV2KmsWrappedCryptoKey {..} =
    Core.object
      ( Core.catMaybes
          [ ("cryptoKeyName" Core..=) Core.<$> cryptoKeyName,
            ("wrappedKey" Core..=) Core.<$> wrappedKey
          ]
      )

-- | l-diversity metric, used for analysis of reidentification risk.
--
-- /See:/ 'newGooglePrivacyDlpV2LDiversityConfig' smart constructor.
data GooglePrivacyDlpV2LDiversityConfig = GooglePrivacyDlpV2LDiversityConfig
  { -- | Set of quasi-identifiers indicating how equivalence classes are defined for the l-diversity computation. When multiple fields are specified, they are considered a single composite key.
    quasiIds :: (Core.Maybe [GooglePrivacyDlpV2FieldId]),
    -- | Sensitive field for computing the l-value.
    sensitiveAttribute :: (Core.Maybe GooglePrivacyDlpV2FieldId)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2LDiversityConfig' with the minimum fields required to make a request.
newGooglePrivacyDlpV2LDiversityConfig ::
  GooglePrivacyDlpV2LDiversityConfig
newGooglePrivacyDlpV2LDiversityConfig =
  GooglePrivacyDlpV2LDiversityConfig
    { quasiIds = Core.Nothing,
      sensitiveAttribute = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2LDiversityConfig where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2LDiversityConfig"
      ( \o ->
          GooglePrivacyDlpV2LDiversityConfig
            Core.<$> (o Core..:? "quasiIds")
            Core.<*> (o Core..:? "sensitiveAttribute")
      )

instance Core.ToJSON GooglePrivacyDlpV2LDiversityConfig where
  toJSON GooglePrivacyDlpV2LDiversityConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("quasiIds" Core..=) Core.<$> quasiIds,
            ("sensitiveAttribute" Core..=) Core.<$> sensitiveAttribute
          ]
      )

-- | The set of columns\' values that share the same ldiversity value.
--
-- /See:/ 'newGooglePrivacyDlpV2LDiversityEquivalenceClass' smart constructor.
data GooglePrivacyDlpV2LDiversityEquivalenceClass = GooglePrivacyDlpV2LDiversityEquivalenceClass
  { -- | Size of the k-anonymity equivalence class.
    equivalenceClassSize :: (Core.Maybe Core.Int64),
    -- | Number of distinct sensitive values in this equivalence class.
    numDistinctSensitiveValues :: (Core.Maybe Core.Int64),
    -- | Quasi-identifier values defining the k-anonymity equivalence class. The order is always the same as the original request.
    quasiIdsValues :: (Core.Maybe [GooglePrivacyDlpV2Value]),
    -- | Estimated frequencies of top sensitive values.
    topSensitiveValues :: (Core.Maybe [GooglePrivacyDlpV2ValueFrequency])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2LDiversityEquivalenceClass' with the minimum fields required to make a request.
newGooglePrivacyDlpV2LDiversityEquivalenceClass ::
  GooglePrivacyDlpV2LDiversityEquivalenceClass
newGooglePrivacyDlpV2LDiversityEquivalenceClass =
  GooglePrivacyDlpV2LDiversityEquivalenceClass
    { equivalenceClassSize =
        Core.Nothing,
      numDistinctSensitiveValues = Core.Nothing,
      quasiIdsValues = Core.Nothing,
      topSensitiveValues = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2LDiversityEquivalenceClass where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2LDiversityEquivalenceClass"
      ( \o ->
          GooglePrivacyDlpV2LDiversityEquivalenceClass
            Core.<$> ( o
                         Core..:? "equivalenceClassSize"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "numDistinctSensitiveValues"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "quasiIdsValues")
            Core.<*> (o Core..:? "topSensitiveValues")
      )

instance Core.ToJSON GooglePrivacyDlpV2LDiversityEquivalenceClass where
  toJSON GooglePrivacyDlpV2LDiversityEquivalenceClass {..} =
    Core.object
      ( Core.catMaybes
          [ ("equivalenceClassSize" Core..=)
              Core.. Core.AsText
              Core.<$> equivalenceClassSize,
            ("numDistinctSensitiveValues" Core..=)
              Core.. Core.AsText
              Core.<$> numDistinctSensitiveValues,
            ("quasiIdsValues" Core..=) Core.<$> quasiIdsValues,
            ("topSensitiveValues" Core..=) Core.<$> topSensitiveValues
          ]
      )

-- | Histogram of l-diversity equivalence class sensitive value frequencies.
--
-- /See:/ 'newGooglePrivacyDlpV2LDiversityHistogramBucket' smart constructor.
data GooglePrivacyDlpV2LDiversityHistogramBucket = GooglePrivacyDlpV2LDiversityHistogramBucket
  { -- | Total number of equivalence classes in this bucket.
    bucketSize :: (Core.Maybe Core.Int64),
    -- | Total number of distinct equivalence classes in this bucket.
    bucketValueCount :: (Core.Maybe Core.Int64),
    -- | Sample of equivalence classes in this bucket. The total number of classes returned per bucket is capped at 20.
    bucketValues :: (Core.Maybe [GooglePrivacyDlpV2LDiversityEquivalenceClass]),
    -- | Lower bound on the sensitive value frequencies of the equivalence classes in this bucket.
    sensitiveValueFrequencyLowerBound :: (Core.Maybe Core.Int64),
    -- | Upper bound on the sensitive value frequencies of the equivalence classes in this bucket.
    sensitiveValueFrequencyUpperBound :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2LDiversityHistogramBucket' with the minimum fields required to make a request.
newGooglePrivacyDlpV2LDiversityHistogramBucket ::
  GooglePrivacyDlpV2LDiversityHistogramBucket
newGooglePrivacyDlpV2LDiversityHistogramBucket =
  GooglePrivacyDlpV2LDiversityHistogramBucket
    { bucketSize =
        Core.Nothing,
      bucketValueCount = Core.Nothing,
      bucketValues = Core.Nothing,
      sensitiveValueFrequencyLowerBound = Core.Nothing,
      sensitiveValueFrequencyUpperBound = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2LDiversityHistogramBucket where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2LDiversityHistogramBucket"
      ( \o ->
          GooglePrivacyDlpV2LDiversityHistogramBucket
            Core.<$> (o Core..:? "bucketSize" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "bucketValueCount" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "bucketValues")
            Core.<*> ( o
                         Core..:? "sensitiveValueFrequencyLowerBound"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "sensitiveValueFrequencyUpperBound"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON GooglePrivacyDlpV2LDiversityHistogramBucket where
  toJSON GooglePrivacyDlpV2LDiversityHistogramBucket {..} =
    Core.object
      ( Core.catMaybes
          [ ("bucketSize" Core..=) Core.. Core.AsText Core.<$> bucketSize,
            ("bucketValueCount" Core..=)
              Core.. Core.AsText
              Core.<$> bucketValueCount,
            ("bucketValues" Core..=) Core.<$> bucketValues,
            ("sensitiveValueFrequencyLowerBound" Core..=)
              Core.. Core.AsText
              Core.<$> sensitiveValueFrequencyLowerBound,
            ("sensitiveValueFrequencyUpperBound" Core..=)
              Core.. Core.AsText
              Core.<$> sensitiveValueFrequencyUpperBound
          ]
      )

-- | Result of the l-diversity computation.
--
-- /See:/ 'newGooglePrivacyDlpV2LDiversityResult' smart constructor.
newtype GooglePrivacyDlpV2LDiversityResult = GooglePrivacyDlpV2LDiversityResult
  { -- | Histogram of l-diversity equivalence class sensitive value frequencies.
    sensitiveValueFrequencyHistogramBuckets :: (Core.Maybe [GooglePrivacyDlpV2LDiversityHistogramBucket])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2LDiversityResult' with the minimum fields required to make a request.
newGooglePrivacyDlpV2LDiversityResult ::
  GooglePrivacyDlpV2LDiversityResult
newGooglePrivacyDlpV2LDiversityResult =
  GooglePrivacyDlpV2LDiversityResult
    { sensitiveValueFrequencyHistogramBuckets =
        Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2LDiversityResult where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2LDiversityResult"
      ( \o ->
          GooglePrivacyDlpV2LDiversityResult
            Core.<$> (o Core..:? "sensitiveValueFrequencyHistogramBuckets")
      )

instance Core.ToJSON GooglePrivacyDlpV2LDiversityResult where
  toJSON GooglePrivacyDlpV2LDiversityResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("sensitiveValueFrequencyHistogramBuckets" Core..=)
              Core.<$> sensitiveValueFrequencyHistogramBuckets
          ]
      )

-- | Configuration for a custom dictionary created from a data source of any size up to the maximum size defined in the <https://cloud.google.com/sensitive-data-protection/limits limits> page. The artifacts of dictionary creation are stored in the specified Cloud Storage location. Consider using @CustomInfoType.Dictionary@ for smaller dictionaries that satisfy the size requirements.
--
-- /See:/ 'newGooglePrivacyDlpV2LargeCustomDictionaryConfig' smart constructor.
data GooglePrivacyDlpV2LargeCustomDictionaryConfig = GooglePrivacyDlpV2LargeCustomDictionaryConfig
  { -- | Field in a BigQuery table where each cell represents a dictionary phrase.
    bigQueryField :: (Core.Maybe GooglePrivacyDlpV2BigQueryField),
    -- | Set of files containing newline-delimited lists of dictionary phrases.
    cloudStorageFileSet :: (Core.Maybe GooglePrivacyDlpV2CloudStorageFileSet),
    -- | Location to store dictionary artifacts in Cloud Storage. These files will only be accessible by project owners and the DLP API. If any of these artifacts are modified, the dictionary is considered invalid and can no longer be used.
    outputPath :: (Core.Maybe GooglePrivacyDlpV2CloudStoragePath)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2LargeCustomDictionaryConfig' with the minimum fields required to make a request.
newGooglePrivacyDlpV2LargeCustomDictionaryConfig ::
  GooglePrivacyDlpV2LargeCustomDictionaryConfig
newGooglePrivacyDlpV2LargeCustomDictionaryConfig =
  GooglePrivacyDlpV2LargeCustomDictionaryConfig
    { bigQueryField =
        Core.Nothing,
      cloudStorageFileSet = Core.Nothing,
      outputPath = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2LargeCustomDictionaryConfig
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2LargeCustomDictionaryConfig"
      ( \o ->
          GooglePrivacyDlpV2LargeCustomDictionaryConfig
            Core.<$> (o Core..:? "bigQueryField")
            Core.<*> (o Core..:? "cloudStorageFileSet")
            Core.<*> (o Core..:? "outputPath")
      )

instance Core.ToJSON GooglePrivacyDlpV2LargeCustomDictionaryConfig where
  toJSON GooglePrivacyDlpV2LargeCustomDictionaryConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("bigQueryField" Core..=) Core.<$> bigQueryField,
            ("cloudStorageFileSet" Core..=) Core.<$> cloudStorageFileSet,
            ("outputPath" Core..=) Core.<$> outputPath
          ]
      )

-- | Summary statistics of a custom dictionary.
--
-- /See:/ 'newGooglePrivacyDlpV2LargeCustomDictionaryStats' smart constructor.
newtype GooglePrivacyDlpV2LargeCustomDictionaryStats = GooglePrivacyDlpV2LargeCustomDictionaryStats
  { -- | Approximate number of distinct phrases in the dictionary.
    approxNumPhrases :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2LargeCustomDictionaryStats' with the minimum fields required to make a request.
newGooglePrivacyDlpV2LargeCustomDictionaryStats ::
  GooglePrivacyDlpV2LargeCustomDictionaryStats
newGooglePrivacyDlpV2LargeCustomDictionaryStats =
  GooglePrivacyDlpV2LargeCustomDictionaryStats
    { approxNumPhrases =
        Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2LargeCustomDictionaryStats where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2LargeCustomDictionaryStats"
      ( \o ->
          GooglePrivacyDlpV2LargeCustomDictionaryStats
            Core.<$> (o Core..:? "approxNumPhrases" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON GooglePrivacyDlpV2LargeCustomDictionaryStats where
  toJSON GooglePrivacyDlpV2LargeCustomDictionaryStats {..} =
    Core.object
      ( Core.catMaybes
          [ ("approxNumPhrases" Core..=)
              Core.. Core.AsText
              Core.<$> approxNumPhrases
          ]
      )

-- | Skips the data without modifying it if the requested transformation would cause an error. For example, if a @DateShift@ transformation were applied an an IP address, this mode would leave the IP address unchanged in the response.
--
-- /See:/ 'newGooglePrivacyDlpV2LeaveUntransformed' smart constructor.
data GooglePrivacyDlpV2LeaveUntransformed = GooglePrivacyDlpV2LeaveUntransformed
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2LeaveUntransformed' with the minimum fields required to make a request.
newGooglePrivacyDlpV2LeaveUntransformed ::
  GooglePrivacyDlpV2LeaveUntransformed
newGooglePrivacyDlpV2LeaveUntransformed =
  GooglePrivacyDlpV2LeaveUntransformed

instance Core.FromJSON GooglePrivacyDlpV2LeaveUntransformed where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2LeaveUntransformed"
      (\o -> Core.pure GooglePrivacyDlpV2LeaveUntransformed)

instance Core.ToJSON GooglePrivacyDlpV2LeaveUntransformed where
  toJSON = Core.const Core.emptyObject

-- | Message for specifying an adjustment to the likelihood of a finding as part of a detection rule.
--
-- /See:/ 'newGooglePrivacyDlpV2LikelihoodAdjustment' smart constructor.
data GooglePrivacyDlpV2LikelihoodAdjustment = GooglePrivacyDlpV2LikelihoodAdjustment
  { -- | Set the likelihood of a finding to a fixed value.
    fixedLikelihood :: (Core.Maybe GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood),
    -- | Increase or decrease the likelihood by the specified number of levels. For example, if a finding would be @POSSIBLE@ without the detection rule and @relative_likelihood@ is 1, then it is upgraded to @LIKELY@, while a value of -1 would downgrade it to @UNLIKELY@. Likelihood may never drop below @VERY_UNLIKELY@ or exceed @VERY_LIKELY@, so applying an adjustment of 1 followed by an adjustment of -1 when base likelihood is @VERY_LIKELY@ will result in a final likelihood of @LIKELY@.
    relativeLikelihood :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2LikelihoodAdjustment' with the minimum fields required to make a request.
newGooglePrivacyDlpV2LikelihoodAdjustment ::
  GooglePrivacyDlpV2LikelihoodAdjustment
newGooglePrivacyDlpV2LikelihoodAdjustment =
  GooglePrivacyDlpV2LikelihoodAdjustment
    { fixedLikelihood =
        Core.Nothing,
      relativeLikelihood = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2LikelihoodAdjustment where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2LikelihoodAdjustment"
      ( \o ->
          GooglePrivacyDlpV2LikelihoodAdjustment
            Core.<$> (o Core..:? "fixedLikelihood")
            Core.<*> (o Core..:? "relativeLikelihood")
      )

instance Core.ToJSON GooglePrivacyDlpV2LikelihoodAdjustment where
  toJSON GooglePrivacyDlpV2LikelihoodAdjustment {..} =
    Core.object
      ( Core.catMaybes
          [ ("fixedLikelihood" Core..=) Core.<$> fixedLikelihood,
            ("relativeLikelihood" Core..=) Core.<$> relativeLikelihood
          ]
      )

-- | List of profiles generated for a given organization or project.
--
-- /See:/ 'newGooglePrivacyDlpV2ListColumnDataProfilesResponse' smart constructor.
data GooglePrivacyDlpV2ListColumnDataProfilesResponse = GooglePrivacyDlpV2ListColumnDataProfilesResponse
  { -- | List of data profiles.
    columnDataProfiles :: (Core.Maybe [GooglePrivacyDlpV2ColumnDataProfile]),
    -- | The next page token.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ListColumnDataProfilesResponse' with the minimum fields required to make a request.
newGooglePrivacyDlpV2ListColumnDataProfilesResponse ::
  GooglePrivacyDlpV2ListColumnDataProfilesResponse
newGooglePrivacyDlpV2ListColumnDataProfilesResponse =
  GooglePrivacyDlpV2ListColumnDataProfilesResponse
    { columnDataProfiles =
        Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2ListColumnDataProfilesResponse
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ListColumnDataProfilesResponse"
      ( \o ->
          GooglePrivacyDlpV2ListColumnDataProfilesResponse
            Core.<$> (o Core..:? "columnDataProfiles")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2ListColumnDataProfilesResponse
  where
  toJSON GooglePrivacyDlpV2ListColumnDataProfilesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("columnDataProfiles" Core..=) Core.<$> columnDataProfiles,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response message for ListConnections.
--
-- /See:/ 'newGooglePrivacyDlpV2ListConnectionsResponse' smart constructor.
data GooglePrivacyDlpV2ListConnectionsResponse = GooglePrivacyDlpV2ListConnectionsResponse
  { -- | List of connections.
    connections :: (Core.Maybe [GooglePrivacyDlpV2Connection]),
    -- | Token to retrieve the next page of results. An empty value means there are no more results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ListConnectionsResponse' with the minimum fields required to make a request.
newGooglePrivacyDlpV2ListConnectionsResponse ::
  GooglePrivacyDlpV2ListConnectionsResponse
newGooglePrivacyDlpV2ListConnectionsResponse =
  GooglePrivacyDlpV2ListConnectionsResponse
    { connections =
        Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2ListConnectionsResponse where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ListConnectionsResponse"
      ( \o ->
          GooglePrivacyDlpV2ListConnectionsResponse
            Core.<$> (o Core..:? "connections")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON GooglePrivacyDlpV2ListConnectionsResponse where
  toJSON GooglePrivacyDlpV2ListConnectionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("connections" Core..=) Core.<$> connections,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response message for ListDeidentifyTemplates.
--
-- /See:/ 'newGooglePrivacyDlpV2ListDeidentifyTemplatesResponse' smart constructor.
data GooglePrivacyDlpV2ListDeidentifyTemplatesResponse = GooglePrivacyDlpV2ListDeidentifyTemplatesResponse
  { -- | List of deidentify templates, up to page_size in ListDeidentifyTemplatesRequest.
    deidentifyTemplates :: (Core.Maybe [GooglePrivacyDlpV2DeidentifyTemplate]),
    -- | If the next page is available then the next page token to be used in the following ListDeidentifyTemplates request.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ListDeidentifyTemplatesResponse' with the minimum fields required to make a request.
newGooglePrivacyDlpV2ListDeidentifyTemplatesResponse ::
  GooglePrivacyDlpV2ListDeidentifyTemplatesResponse
newGooglePrivacyDlpV2ListDeidentifyTemplatesResponse =
  GooglePrivacyDlpV2ListDeidentifyTemplatesResponse
    { deidentifyTemplates =
        Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2ListDeidentifyTemplatesResponse
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ListDeidentifyTemplatesResponse"
      ( \o ->
          GooglePrivacyDlpV2ListDeidentifyTemplatesResponse
            Core.<$> (o Core..:? "deidentifyTemplates")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2ListDeidentifyTemplatesResponse
  where
  toJSON GooglePrivacyDlpV2ListDeidentifyTemplatesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("deidentifyTemplates" Core..=) Core.<$> deidentifyTemplates,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response message for ListDiscoveryConfigs.
--
-- /See:/ 'newGooglePrivacyDlpV2ListDiscoveryConfigsResponse' smart constructor.
data GooglePrivacyDlpV2ListDiscoveryConfigsResponse = GooglePrivacyDlpV2ListDiscoveryConfigsResponse
  { -- | List of configs, up to page_size in ListDiscoveryConfigsRequest.
    discoveryConfigs :: (Core.Maybe [GooglePrivacyDlpV2DiscoveryConfig]),
    -- | If the next page is available then this value is the next page token to be used in the following ListDiscoveryConfigs request.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ListDiscoveryConfigsResponse' with the minimum fields required to make a request.
newGooglePrivacyDlpV2ListDiscoveryConfigsResponse ::
  GooglePrivacyDlpV2ListDiscoveryConfigsResponse
newGooglePrivacyDlpV2ListDiscoveryConfigsResponse =
  GooglePrivacyDlpV2ListDiscoveryConfigsResponse
    { discoveryConfigs =
        Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2ListDiscoveryConfigsResponse
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ListDiscoveryConfigsResponse"
      ( \o ->
          GooglePrivacyDlpV2ListDiscoveryConfigsResponse
            Core.<$> (o Core..:? "discoveryConfigs")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON GooglePrivacyDlpV2ListDiscoveryConfigsResponse where
  toJSON GooglePrivacyDlpV2ListDiscoveryConfigsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("discoveryConfigs" Core..=) Core.<$> discoveryConfigs,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | The response message for listing DLP jobs.
--
-- /See:/ 'newGooglePrivacyDlpV2ListDlpJobsResponse' smart constructor.
data GooglePrivacyDlpV2ListDlpJobsResponse = GooglePrivacyDlpV2ListDlpJobsResponse
  { -- | A list of DlpJobs that matches the specified filter in the request.
    jobs :: (Core.Maybe [GooglePrivacyDlpV2DlpJob]),
    -- | The standard List next-page token.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ListDlpJobsResponse' with the minimum fields required to make a request.
newGooglePrivacyDlpV2ListDlpJobsResponse ::
  GooglePrivacyDlpV2ListDlpJobsResponse
newGooglePrivacyDlpV2ListDlpJobsResponse =
  GooglePrivacyDlpV2ListDlpJobsResponse
    { jobs = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2ListDlpJobsResponse where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ListDlpJobsResponse"
      ( \o ->
          GooglePrivacyDlpV2ListDlpJobsResponse
            Core.<$> (o Core..:? "jobs")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON GooglePrivacyDlpV2ListDlpJobsResponse where
  toJSON GooglePrivacyDlpV2ListDlpJobsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("jobs" Core..=) Core.<$> jobs,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | List of file store data profiles generated for a given organization or project.
--
-- /See:/ 'newGooglePrivacyDlpV2ListFileStoreDataProfilesResponse' smart constructor.
data GooglePrivacyDlpV2ListFileStoreDataProfilesResponse = GooglePrivacyDlpV2ListFileStoreDataProfilesResponse
  { -- | List of data profiles.
    fileStoreDataProfiles :: (Core.Maybe [GooglePrivacyDlpV2FileStoreDataProfile]),
    -- | The next page token.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ListFileStoreDataProfilesResponse' with the minimum fields required to make a request.
newGooglePrivacyDlpV2ListFileStoreDataProfilesResponse ::
  GooglePrivacyDlpV2ListFileStoreDataProfilesResponse
newGooglePrivacyDlpV2ListFileStoreDataProfilesResponse =
  GooglePrivacyDlpV2ListFileStoreDataProfilesResponse
    { fileStoreDataProfiles =
        Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2ListFileStoreDataProfilesResponse
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ListFileStoreDataProfilesResponse"
      ( \o ->
          GooglePrivacyDlpV2ListFileStoreDataProfilesResponse
            Core.<$> (o Core..:? "fileStoreDataProfiles")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2ListFileStoreDataProfilesResponse
  where
  toJSON GooglePrivacyDlpV2ListFileStoreDataProfilesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("fileStoreDataProfiles" Core..=) Core.<$> fileStoreDataProfiles,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response to the ListInfoTypes request.
--
-- /See:/ 'newGooglePrivacyDlpV2ListInfoTypesResponse' smart constructor.
newtype GooglePrivacyDlpV2ListInfoTypesResponse = GooglePrivacyDlpV2ListInfoTypesResponse
  { -- | Set of sensitive infoTypes.
    infoTypes :: (Core.Maybe [GooglePrivacyDlpV2InfoTypeDescription])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ListInfoTypesResponse' with the minimum fields required to make a request.
newGooglePrivacyDlpV2ListInfoTypesResponse ::
  GooglePrivacyDlpV2ListInfoTypesResponse
newGooglePrivacyDlpV2ListInfoTypesResponse =
  GooglePrivacyDlpV2ListInfoTypesResponse {infoTypes = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2ListInfoTypesResponse where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ListInfoTypesResponse"
      ( \o ->
          GooglePrivacyDlpV2ListInfoTypesResponse
            Core.<$> (o Core..:? "infoTypes")
      )

instance Core.ToJSON GooglePrivacyDlpV2ListInfoTypesResponse where
  toJSON GooglePrivacyDlpV2ListInfoTypesResponse {..} =
    Core.object
      (Core.catMaybes [("infoTypes" Core..=) Core.<$> infoTypes])

-- | Response message for ListInspectTemplates.
--
-- /See:/ 'newGooglePrivacyDlpV2ListInspectTemplatesResponse' smart constructor.
data GooglePrivacyDlpV2ListInspectTemplatesResponse = GooglePrivacyDlpV2ListInspectTemplatesResponse
  { -- | List of inspectTemplates, up to page_size in ListInspectTemplatesRequest.
    inspectTemplates :: (Core.Maybe [GooglePrivacyDlpV2InspectTemplate]),
    -- | If the next page is available then the next page token to be used in the following ListInspectTemplates request.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ListInspectTemplatesResponse' with the minimum fields required to make a request.
newGooglePrivacyDlpV2ListInspectTemplatesResponse ::
  GooglePrivacyDlpV2ListInspectTemplatesResponse
newGooglePrivacyDlpV2ListInspectTemplatesResponse =
  GooglePrivacyDlpV2ListInspectTemplatesResponse
    { inspectTemplates =
        Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2ListInspectTemplatesResponse
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ListInspectTemplatesResponse"
      ( \o ->
          GooglePrivacyDlpV2ListInspectTemplatesResponse
            Core.<$> (o Core..:? "inspectTemplates")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON GooglePrivacyDlpV2ListInspectTemplatesResponse where
  toJSON GooglePrivacyDlpV2ListInspectTemplatesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("inspectTemplates" Core..=) Core.<$> inspectTemplates,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response message for ListJobTriggers.
--
-- /See:/ 'newGooglePrivacyDlpV2ListJobTriggersResponse' smart constructor.
data GooglePrivacyDlpV2ListJobTriggersResponse = GooglePrivacyDlpV2ListJobTriggersResponse
  { -- | List of triggeredJobs, up to page_size in ListJobTriggersRequest.
    jobTriggers :: (Core.Maybe [GooglePrivacyDlpV2JobTrigger]),
    -- | If the next page is available then this value is the next page token to be used in the following ListJobTriggers request.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ListJobTriggersResponse' with the minimum fields required to make a request.
newGooglePrivacyDlpV2ListJobTriggersResponse ::
  GooglePrivacyDlpV2ListJobTriggersResponse
newGooglePrivacyDlpV2ListJobTriggersResponse =
  GooglePrivacyDlpV2ListJobTriggersResponse
    { jobTriggers =
        Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2ListJobTriggersResponse where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ListJobTriggersResponse"
      ( \o ->
          GooglePrivacyDlpV2ListJobTriggersResponse
            Core.<$> (o Core..:? "jobTriggers")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON GooglePrivacyDlpV2ListJobTriggersResponse where
  toJSON GooglePrivacyDlpV2ListJobTriggersResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("jobTriggers" Core..=) Core.<$> jobTriggers,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | List of profiles generated for a given organization or project.
--
-- /See:/ 'newGooglePrivacyDlpV2ListProjectDataProfilesResponse' smart constructor.
data GooglePrivacyDlpV2ListProjectDataProfilesResponse = GooglePrivacyDlpV2ListProjectDataProfilesResponse
  { -- | The next page token.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | List of data profiles.
    projectDataProfiles :: (Core.Maybe [GooglePrivacyDlpV2ProjectDataProfile])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ListProjectDataProfilesResponse' with the minimum fields required to make a request.
newGooglePrivacyDlpV2ListProjectDataProfilesResponse ::
  GooglePrivacyDlpV2ListProjectDataProfilesResponse
newGooglePrivacyDlpV2ListProjectDataProfilesResponse =
  GooglePrivacyDlpV2ListProjectDataProfilesResponse
    { nextPageToken =
        Core.Nothing,
      projectDataProfiles = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2ListProjectDataProfilesResponse
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ListProjectDataProfilesResponse"
      ( \o ->
          GooglePrivacyDlpV2ListProjectDataProfilesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "projectDataProfiles")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2ListProjectDataProfilesResponse
  where
  toJSON GooglePrivacyDlpV2ListProjectDataProfilesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("projectDataProfiles" Core..=) Core.<$> projectDataProfiles
          ]
      )

-- | Response message for ListStoredInfoTypes.
--
-- /See:/ 'newGooglePrivacyDlpV2ListStoredInfoTypesResponse' smart constructor.
data GooglePrivacyDlpV2ListStoredInfoTypesResponse = GooglePrivacyDlpV2ListStoredInfoTypesResponse
  { -- | If the next page is available then the next page token to be used in the following ListStoredInfoTypes request.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | List of storedInfoTypes, up to page_size in ListStoredInfoTypesRequest.
    storedInfoTypes :: (Core.Maybe [GooglePrivacyDlpV2StoredInfoType])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ListStoredInfoTypesResponse' with the minimum fields required to make a request.
newGooglePrivacyDlpV2ListStoredInfoTypesResponse ::
  GooglePrivacyDlpV2ListStoredInfoTypesResponse
newGooglePrivacyDlpV2ListStoredInfoTypesResponse =
  GooglePrivacyDlpV2ListStoredInfoTypesResponse
    { nextPageToken =
        Core.Nothing,
      storedInfoTypes = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2ListStoredInfoTypesResponse
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ListStoredInfoTypesResponse"
      ( \o ->
          GooglePrivacyDlpV2ListStoredInfoTypesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "storedInfoTypes")
      )

instance Core.ToJSON GooglePrivacyDlpV2ListStoredInfoTypesResponse where
  toJSON GooglePrivacyDlpV2ListStoredInfoTypesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("storedInfoTypes" Core..=) Core.<$> storedInfoTypes
          ]
      )

-- | List of profiles generated for a given organization or project.
--
-- /See:/ 'newGooglePrivacyDlpV2ListTableDataProfilesResponse' smart constructor.
data GooglePrivacyDlpV2ListTableDataProfilesResponse = GooglePrivacyDlpV2ListTableDataProfilesResponse
  { -- | The next page token.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | List of data profiles.
    tableDataProfiles :: (Core.Maybe [GooglePrivacyDlpV2TableDataProfile])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ListTableDataProfilesResponse' with the minimum fields required to make a request.
newGooglePrivacyDlpV2ListTableDataProfilesResponse ::
  GooglePrivacyDlpV2ListTableDataProfilesResponse
newGooglePrivacyDlpV2ListTableDataProfilesResponse =
  GooglePrivacyDlpV2ListTableDataProfilesResponse
    { nextPageToken =
        Core.Nothing,
      tableDataProfiles = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2ListTableDataProfilesResponse
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ListTableDataProfilesResponse"
      ( \o ->
          GooglePrivacyDlpV2ListTableDataProfilesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "tableDataProfiles")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2ListTableDataProfilesResponse
  where
  toJSON GooglePrivacyDlpV2ListTableDataProfilesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("tableDataProfiles" Core..=) Core.<$> tableDataProfiles
          ]
      )

-- | Specifies the location of the finding.
--
-- /See:/ 'newGooglePrivacyDlpV2Location' smart constructor.
data GooglePrivacyDlpV2Location = GooglePrivacyDlpV2Location
  { -- | Zero-based byte offsets delimiting the finding. These are relative to the finding\'s containing element. Note that when the content is not textual, this references the UTF-8 encoded textual representation of the content. Omitted if content is an image.
    byteRange :: (Core.Maybe GooglePrivacyDlpV2Range),
    -- | Unicode character offsets delimiting the finding. These are relative to the finding\'s containing element. Provided when the content is text.
    codepointRange :: (Core.Maybe GooglePrivacyDlpV2Range),
    -- | Information about the container where this finding occurred, if available.
    container :: (Core.Maybe GooglePrivacyDlpV2Container),
    -- | List of nested objects pointing to the precise location of the finding within the file or record.
    contentLocations :: (Core.Maybe [GooglePrivacyDlpV2ContentLocation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Location' with the minimum fields required to make a request.
newGooglePrivacyDlpV2Location ::
  GooglePrivacyDlpV2Location
newGooglePrivacyDlpV2Location =
  GooglePrivacyDlpV2Location
    { byteRange = Core.Nothing,
      codepointRange = Core.Nothing,
      container = Core.Nothing,
      contentLocations = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2Location where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2Location"
      ( \o ->
          GooglePrivacyDlpV2Location
            Core.<$> (o Core..:? "byteRange")
            Core.<*> (o Core..:? "codepointRange")
            Core.<*> (o Core..:? "container")
            Core.<*> (o Core..:? "contentLocations")
      )

instance Core.ToJSON GooglePrivacyDlpV2Location where
  toJSON GooglePrivacyDlpV2Location {..} =
    Core.object
      ( Core.catMaybes
          [ ("byteRange" Core..=) Core.<$> byteRange,
            ("codepointRange" Core..=) Core.<$> codepointRange,
            ("container" Core..=) Core.<$> container,
            ("contentLocations" Core..=) Core.<$> contentLocations
          ]
      )

-- | Job trigger option for hybrid jobs. Jobs must be manually created and finished.
--
-- /See:/ 'newGooglePrivacyDlpV2Manual' smart constructor.
data GooglePrivacyDlpV2Manual = GooglePrivacyDlpV2Manual
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Manual' with the minimum fields required to make a request.
newGooglePrivacyDlpV2Manual ::
  GooglePrivacyDlpV2Manual
newGooglePrivacyDlpV2Manual = GooglePrivacyDlpV2Manual

instance Core.FromJSON GooglePrivacyDlpV2Manual where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2Manual"
      (\o -> Core.pure GooglePrivacyDlpV2Manual)

instance Core.ToJSON GooglePrivacyDlpV2Manual where
  toJSON = Core.const Core.emptyObject

-- | Metadata Location
--
-- /See:/ 'newGooglePrivacyDlpV2MetadataLocation' smart constructor.
data GooglePrivacyDlpV2MetadataLocation = GooglePrivacyDlpV2MetadataLocation
  { -- | Storage metadata.
    storageLabel :: (Core.Maybe GooglePrivacyDlpV2StorageMetadataLabel),
    -- | Type of metadata containing the finding.
    type' :: (Core.Maybe GooglePrivacyDlpV2MetadataLocation_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2MetadataLocation' with the minimum fields required to make a request.
newGooglePrivacyDlpV2MetadataLocation ::
  GooglePrivacyDlpV2MetadataLocation
newGooglePrivacyDlpV2MetadataLocation =
  GooglePrivacyDlpV2MetadataLocation
    { storageLabel = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2MetadataLocation where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2MetadataLocation"
      ( \o ->
          GooglePrivacyDlpV2MetadataLocation
            Core.<$> (o Core..:? "storageLabel")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON GooglePrivacyDlpV2MetadataLocation where
  toJSON GooglePrivacyDlpV2MetadataLocation {..} =
    Core.object
      ( Core.catMaybes
          [ ("storageLabel" Core..=) Core.<$> storageLabel,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Processing will happen in a multi-region that contains the current region if available.
--
-- /See:/ 'newGooglePrivacyDlpV2MultiRegionProcessing' smart constructor.
data GooglePrivacyDlpV2MultiRegionProcessing = GooglePrivacyDlpV2MultiRegionProcessing
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2MultiRegionProcessing' with the minimum fields required to make a request.
newGooglePrivacyDlpV2MultiRegionProcessing ::
  GooglePrivacyDlpV2MultiRegionProcessing
newGooglePrivacyDlpV2MultiRegionProcessing =
  GooglePrivacyDlpV2MultiRegionProcessing

instance Core.FromJSON GooglePrivacyDlpV2MultiRegionProcessing where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2MultiRegionProcessing"
      (\o -> Core.pure GooglePrivacyDlpV2MultiRegionProcessing)

instance Core.ToJSON GooglePrivacyDlpV2MultiRegionProcessing where
  toJSON = Core.const Core.emptyObject

-- | Compute numerical stats over an individual column, including min, max, and quantiles.
--
-- /See:/ 'newGooglePrivacyDlpV2NumericalStatsConfig' smart constructor.
newtype GooglePrivacyDlpV2NumericalStatsConfig = GooglePrivacyDlpV2NumericalStatsConfig
  { -- | Field to compute numerical stats on. Supported types are integer, float, date, datetime, timestamp, time.
    field :: (Core.Maybe GooglePrivacyDlpV2FieldId)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2NumericalStatsConfig' with the minimum fields required to make a request.
newGooglePrivacyDlpV2NumericalStatsConfig ::
  GooglePrivacyDlpV2NumericalStatsConfig
newGooglePrivacyDlpV2NumericalStatsConfig =
  GooglePrivacyDlpV2NumericalStatsConfig {field = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2NumericalStatsConfig where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2NumericalStatsConfig"
      ( \o ->
          GooglePrivacyDlpV2NumericalStatsConfig
            Core.<$> (o Core..:? "field")
      )

instance Core.ToJSON GooglePrivacyDlpV2NumericalStatsConfig where
  toJSON GooglePrivacyDlpV2NumericalStatsConfig {..} =
    Core.object (Core.catMaybes [("field" Core..=) Core.<$> field])

-- | Result of the numerical stats computation.
--
-- /See:/ 'newGooglePrivacyDlpV2NumericalStatsResult' smart constructor.
data GooglePrivacyDlpV2NumericalStatsResult = GooglePrivacyDlpV2NumericalStatsResult
  { -- | Maximum value appearing in the column.
    maxValue :: (Core.Maybe GooglePrivacyDlpV2Value),
    -- | Minimum value appearing in the column.
    minValue :: (Core.Maybe GooglePrivacyDlpV2Value),
    -- | List of 99 values that partition the set of field values into 100 equal sized buckets.
    quantileValues :: (Core.Maybe [GooglePrivacyDlpV2Value])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2NumericalStatsResult' with the minimum fields required to make a request.
newGooglePrivacyDlpV2NumericalStatsResult ::
  GooglePrivacyDlpV2NumericalStatsResult
newGooglePrivacyDlpV2NumericalStatsResult =
  GooglePrivacyDlpV2NumericalStatsResult
    { maxValue = Core.Nothing,
      minValue = Core.Nothing,
      quantileValues = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2NumericalStatsResult where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2NumericalStatsResult"
      ( \o ->
          GooglePrivacyDlpV2NumericalStatsResult
            Core.<$> (o Core..:? "maxValue")
            Core.<*> (o Core..:? "minValue")
            Core.<*> (o Core..:? "quantileValues")
      )

instance Core.ToJSON GooglePrivacyDlpV2NumericalStatsResult where
  toJSON GooglePrivacyDlpV2NumericalStatsResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxValue" Core..=) Core.<$> maxValue,
            ("minValue" Core..=) Core.<$> minValue,
            ("quantileValues" Core..=) Core.<$> quantileValues
          ]
      )

-- | There is an OR relationship between these attributes. They are used to determine if a table should be scanned or not in Discovery.
--
-- /See:/ 'newGooglePrivacyDlpV2OrConditions' smart constructor.
data GooglePrivacyDlpV2OrConditions = GooglePrivacyDlpV2OrConditions
  { -- | Minimum age a table must have before Cloud DLP can profile it. Value must be 1 hour or greater.
    minAge :: (Core.Maybe Core.Duration),
    -- | Minimum number of rows that should be present before Cloud DLP profiles a table
    minRowCount :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2OrConditions' with the minimum fields required to make a request.
newGooglePrivacyDlpV2OrConditions ::
  GooglePrivacyDlpV2OrConditions
newGooglePrivacyDlpV2OrConditions =
  GooglePrivacyDlpV2OrConditions
    { minAge = Core.Nothing,
      minRowCount = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2OrConditions where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2OrConditions"
      ( \o ->
          GooglePrivacyDlpV2OrConditions
            Core.<$> (o Core..:? "minAge")
            Core.<*> (o Core..:? "minRowCount")
      )

instance Core.ToJSON GooglePrivacyDlpV2OrConditions where
  toJSON GooglePrivacyDlpV2OrConditions {..} =
    Core.object
      ( Core.catMaybes
          [ ("minAge" Core..=) Core.<$> minAge,
            ("minRowCount" Core..=) Core.<$> minRowCount
          ]
      )

-- | Project and scan location information. Only set when the parent is an org.
--
-- /See:/ 'newGooglePrivacyDlpV2OrgConfig' smart constructor.
data GooglePrivacyDlpV2OrgConfig = GooglePrivacyDlpV2OrgConfig
  { -- | The data to scan: folder, org, or project
    location :: (Core.Maybe GooglePrivacyDlpV2DiscoveryStartingLocation),
    -- | The project that will run the scan. The DLP service account that exists within this project must have access to all resources that are profiled, and the DLP API must be enabled.
    projectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2OrgConfig' with the minimum fields required to make a request.
newGooglePrivacyDlpV2OrgConfig ::
  GooglePrivacyDlpV2OrgConfig
newGooglePrivacyDlpV2OrgConfig =
  GooglePrivacyDlpV2OrgConfig
    { location = Core.Nothing,
      projectId = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2OrgConfig where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2OrgConfig"
      ( \o ->
          GooglePrivacyDlpV2OrgConfig
            Core.<$> (o Core..:? "location")
            Core.<*> (o Core..:? "projectId")
      )

instance Core.ToJSON GooglePrivacyDlpV2OrgConfig where
  toJSON GooglePrivacyDlpV2OrgConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("location" Core..=) Core.<$> location,
            ("projectId" Core..=) Core.<$> projectId
          ]
      )

-- | The other cloud starting location for discovery.
--
-- /See:/ 'newGooglePrivacyDlpV2OtherCloudDiscoveryStartingLocation' smart constructor.
newtype GooglePrivacyDlpV2OtherCloudDiscoveryStartingLocation = GooglePrivacyDlpV2OtherCloudDiscoveryStartingLocation
  { -- | The AWS starting location for discovery.
    awsLocation :: (Core.Maybe GooglePrivacyDlpV2AwsDiscoveryStartingLocation)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2OtherCloudDiscoveryStartingLocation' with the minimum fields required to make a request.
newGooglePrivacyDlpV2OtherCloudDiscoveryStartingLocation ::
  GooglePrivacyDlpV2OtherCloudDiscoveryStartingLocation
newGooglePrivacyDlpV2OtherCloudDiscoveryStartingLocation =
  GooglePrivacyDlpV2OtherCloudDiscoveryStartingLocation
    { awsLocation =
        Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2OtherCloudDiscoveryStartingLocation
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2OtherCloudDiscoveryStartingLocation"
      ( \o ->
          GooglePrivacyDlpV2OtherCloudDiscoveryStartingLocation
            Core.<$> (o Core..:? "awsLocation")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2OtherCloudDiscoveryStartingLocation
  where
  toJSON GooglePrivacyDlpV2OtherCloudDiscoveryStartingLocation {..} =
    Core.object
      (Core.catMaybes [("awsLocation" Core..=) Core.<$> awsLocation])

-- | Target used to match against for discovery of resources from other clouds. An <https://cloud.google.com/security-command-center/docs/connect-scc-to-aws AWS connector in Security Command Center (Enterprise> is required to use this feature.
--
-- /See:/ 'newGooglePrivacyDlpV2OtherCloudDiscoveryTarget' smart constructor.
data GooglePrivacyDlpV2OtherCloudDiscoveryTarget = GooglePrivacyDlpV2OtherCloudDiscoveryTarget
  { -- | Optional. In addition to matching the filter, these conditions must be true before a profile is generated.
    conditions :: (Core.Maybe GooglePrivacyDlpV2DiscoveryOtherCloudConditions),
    -- | Required. The type of data profiles generated by this discovery target. Supported values are: * aws\/s3\/bucket
    dataSourceType :: (Core.Maybe GooglePrivacyDlpV2DataSourceType),
    -- | Disable profiling for resources that match this filter.
    disabled :: (Core.Maybe GooglePrivacyDlpV2Disabled),
    -- | Required. The resources that the discovery cadence applies to. The first target with a matching filter will be the one to apply to a resource.
    filter :: (Core.Maybe GooglePrivacyDlpV2DiscoveryOtherCloudFilter),
    -- | How often and when to update data profiles. New resources that match both the filter and conditions are scanned as quickly as possible depending on system capacity.
    generationCadence :: (Core.Maybe GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2OtherCloudDiscoveryTarget' with the minimum fields required to make a request.
newGooglePrivacyDlpV2OtherCloudDiscoveryTarget ::
  GooglePrivacyDlpV2OtherCloudDiscoveryTarget
newGooglePrivacyDlpV2OtherCloudDiscoveryTarget =
  GooglePrivacyDlpV2OtherCloudDiscoveryTarget
    { conditions =
        Core.Nothing,
      dataSourceType = Core.Nothing,
      disabled = Core.Nothing,
      filter = Core.Nothing,
      generationCadence = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2OtherCloudDiscoveryTarget where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2OtherCloudDiscoveryTarget"
      ( \o ->
          GooglePrivacyDlpV2OtherCloudDiscoveryTarget
            Core.<$> (o Core..:? "conditions")
            Core.<*> (o Core..:? "dataSourceType")
            Core.<*> (o Core..:? "disabled")
            Core.<*> (o Core..:? "filter")
            Core.<*> (o Core..:? "generationCadence")
      )

instance Core.ToJSON GooglePrivacyDlpV2OtherCloudDiscoveryTarget where
  toJSON GooglePrivacyDlpV2OtherCloudDiscoveryTarget {..} =
    Core.object
      ( Core.catMaybes
          [ ("conditions" Core..=) Core.<$> conditions,
            ("dataSourceType" Core..=) Core.<$> dataSourceType,
            ("disabled" Core..=) Core.<$> disabled,
            ("filter" Core..=) Core.<$> filter,
            ("generationCadence" Core..=) Core.<$> generationCadence
          ]
      )

-- | Match resources using regex filters.
--
-- /See:/ 'newGooglePrivacyDlpV2OtherCloudResourceCollection' smart constructor.
newtype GooglePrivacyDlpV2OtherCloudResourceCollection = GooglePrivacyDlpV2OtherCloudResourceCollection
  { -- | A collection of regular expressions to match a resource against.
    includeRegexes :: (Core.Maybe GooglePrivacyDlpV2OtherCloudResourceRegexes)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2OtherCloudResourceCollection' with the minimum fields required to make a request.
newGooglePrivacyDlpV2OtherCloudResourceCollection ::
  GooglePrivacyDlpV2OtherCloudResourceCollection
newGooglePrivacyDlpV2OtherCloudResourceCollection =
  GooglePrivacyDlpV2OtherCloudResourceCollection
    { includeRegexes =
        Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2OtherCloudResourceCollection
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2OtherCloudResourceCollection"
      ( \o ->
          GooglePrivacyDlpV2OtherCloudResourceCollection
            Core.<$> (o Core..:? "includeRegexes")
      )

instance Core.ToJSON GooglePrivacyDlpV2OtherCloudResourceCollection where
  toJSON GooglePrivacyDlpV2OtherCloudResourceCollection {..} =
    Core.object
      ( Core.catMaybes
          [("includeRegexes" Core..=) Core.<$> includeRegexes]
      )

-- | A pattern to match against one or more resources. At least one pattern must be specified. Regular expressions use RE2 <https://github.com/google/re2/wiki/Syntax syntax>; a guide can be found under the google\/re2 repository on GitHub.
--
-- /See:/ 'newGooglePrivacyDlpV2OtherCloudResourceRegex' smart constructor.
newtype GooglePrivacyDlpV2OtherCloudResourceRegex = GooglePrivacyDlpV2OtherCloudResourceRegex
  { -- | Regex for Amazon S3 buckets.
    amazonS3BucketRegex :: (Core.Maybe GooglePrivacyDlpV2AmazonS3BucketRegex)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2OtherCloudResourceRegex' with the minimum fields required to make a request.
newGooglePrivacyDlpV2OtherCloudResourceRegex ::
  GooglePrivacyDlpV2OtherCloudResourceRegex
newGooglePrivacyDlpV2OtherCloudResourceRegex =
  GooglePrivacyDlpV2OtherCloudResourceRegex
    { amazonS3BucketRegex =
        Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2OtherCloudResourceRegex where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2OtherCloudResourceRegex"
      ( \o ->
          GooglePrivacyDlpV2OtherCloudResourceRegex
            Core.<$> (o Core..:? "amazonS3BucketRegex")
      )

instance Core.ToJSON GooglePrivacyDlpV2OtherCloudResourceRegex where
  toJSON GooglePrivacyDlpV2OtherCloudResourceRegex {..} =
    Core.object
      ( Core.catMaybes
          [("amazonS3BucketRegex" Core..=) Core.<$> amazonS3BucketRegex]
      )

-- | A collection of regular expressions to determine what resources to match against.
--
-- /See:/ 'newGooglePrivacyDlpV2OtherCloudResourceRegexes' smart constructor.
newtype GooglePrivacyDlpV2OtherCloudResourceRegexes = GooglePrivacyDlpV2OtherCloudResourceRegexes
  { -- | A group of regular expression patterns to match against one or more resources. Maximum of 100 entries. The sum of all regular expression\'s length can\'t exceed 10 KiB.
    patterns :: (Core.Maybe [GooglePrivacyDlpV2OtherCloudResourceRegex])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2OtherCloudResourceRegexes' with the minimum fields required to make a request.
newGooglePrivacyDlpV2OtherCloudResourceRegexes ::
  GooglePrivacyDlpV2OtherCloudResourceRegexes
newGooglePrivacyDlpV2OtherCloudResourceRegexes =
  GooglePrivacyDlpV2OtherCloudResourceRegexes
    { patterns =
        Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2OtherCloudResourceRegexes where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2OtherCloudResourceRegexes"
      ( \o ->
          GooglePrivacyDlpV2OtherCloudResourceRegexes
            Core.<$> (o Core..:? "patterns")
      )

instance Core.ToJSON GooglePrivacyDlpV2OtherCloudResourceRegexes where
  toJSON GooglePrivacyDlpV2OtherCloudResourceRegexes {..} =
    Core.object
      (Core.catMaybes [("patterns" Core..=) Core.<$> patterns])

-- | Identifies a single resource, like a single Amazon S3 bucket.
--
-- /See:/ 'newGooglePrivacyDlpV2OtherCloudSingleResourceReference' smart constructor.
newtype GooglePrivacyDlpV2OtherCloudSingleResourceReference = GooglePrivacyDlpV2OtherCloudSingleResourceReference
  { -- | Amazon S3 bucket.
    amazonS3Bucket :: (Core.Maybe GooglePrivacyDlpV2AmazonS3Bucket)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2OtherCloudSingleResourceReference' with the minimum fields required to make a request.
newGooglePrivacyDlpV2OtherCloudSingleResourceReference ::
  GooglePrivacyDlpV2OtherCloudSingleResourceReference
newGooglePrivacyDlpV2OtherCloudSingleResourceReference =
  GooglePrivacyDlpV2OtherCloudSingleResourceReference
    { amazonS3Bucket =
        Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2OtherCloudSingleResourceReference
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2OtherCloudSingleResourceReference"
      ( \o ->
          GooglePrivacyDlpV2OtherCloudSingleResourceReference
            Core.<$> (o Core..:? "amazonS3Bucket")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2OtherCloudSingleResourceReference
  where
  toJSON GooglePrivacyDlpV2OtherCloudSingleResourceReference {..} =
    Core.object
      ( Core.catMaybes
          [("amazonS3Bucket" Core..=) Core.<$> amazonS3Bucket]
      )

-- | Infotype details for other infoTypes found within a column.
--
-- /See:/ 'newGooglePrivacyDlpV2OtherInfoTypeSummary' smart constructor.
data GooglePrivacyDlpV2OtherInfoTypeSummary = GooglePrivacyDlpV2OtherInfoTypeSummary
  { -- | Approximate percentage of non-null rows that contained data detected by this infotype.
    estimatedPrevalence :: (Core.Maybe Core.Int32),
    -- | Whether this infoType was excluded from sensitivity and risk analysis due to factors such as low prevalence (subject to change).
    excludedFromAnalysis :: (Core.Maybe Core.Bool),
    -- | The other infoType.
    infoType :: (Core.Maybe GooglePrivacyDlpV2InfoType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2OtherInfoTypeSummary' with the minimum fields required to make a request.
newGooglePrivacyDlpV2OtherInfoTypeSummary ::
  GooglePrivacyDlpV2OtherInfoTypeSummary
newGooglePrivacyDlpV2OtherInfoTypeSummary =
  GooglePrivacyDlpV2OtherInfoTypeSummary
    { estimatedPrevalence =
        Core.Nothing,
      excludedFromAnalysis = Core.Nothing,
      infoType = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2OtherInfoTypeSummary where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2OtherInfoTypeSummary"
      ( \o ->
          GooglePrivacyDlpV2OtherInfoTypeSummary
            Core.<$> (o Core..:? "estimatedPrevalence")
            Core.<*> (o Core..:? "excludedFromAnalysis")
            Core.<*> (o Core..:? "infoType")
      )

instance Core.ToJSON GooglePrivacyDlpV2OtherInfoTypeSummary where
  toJSON GooglePrivacyDlpV2OtherInfoTypeSummary {..} =
    Core.object
      ( Core.catMaybes
          [ ("estimatedPrevalence" Core..=) Core.<$> estimatedPrevalence,
            ("excludedFromAnalysis" Core..=) Core.<$> excludedFromAnalysis,
            ("infoType" Core..=) Core.<$> infoType
          ]
      )

-- | Cloud repository for storing output.
--
-- /See:/ 'newGooglePrivacyDlpV2OutputStorageConfig' smart constructor.
data GooglePrivacyDlpV2OutputStorageConfig = GooglePrivacyDlpV2OutputStorageConfig
  { -- | Schema used for writing the findings for Inspect jobs. This field is only used for Inspect and must be unspecified for Risk jobs. Columns are derived from the @Finding@ object. If appending to an existing table, any columns from the predefined schema that are missing will be added. No columns in the existing table will be deleted. If unspecified, then all available columns will be used for a new table or an (existing) table with no schema, and no changes will be made to an existing table that has a schema. Only for use with external storage.
    outputSchema :: (Core.Maybe GooglePrivacyDlpV2OutputStorageConfig_OutputSchema),
    -- | Store findings in an existing table or a new table in an existing dataset. If table/id is not set a new one will be generated for you with the following format: dlp/googleapis/yyyy/mm/dd/[dlp/job/id]. Pacific time zone will be used for generating the date details. For Inspect, each column in an existing output table must have the same name, type, and mode of a field in the @Finding@ object. For Risk, an existing output table should be the output of a previous Risk analysis job run on the same source table, with the same privacy metric and quasi-identifiers. Risk jobs that analyze the same table but compute a different privacy metric, or use different sets of quasi-identifiers, cannot store their results in the same table.
    table :: (Core.Maybe GooglePrivacyDlpV2BigQueryTable)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2OutputStorageConfig' with the minimum fields required to make a request.
newGooglePrivacyDlpV2OutputStorageConfig ::
  GooglePrivacyDlpV2OutputStorageConfig
newGooglePrivacyDlpV2OutputStorageConfig =
  GooglePrivacyDlpV2OutputStorageConfig
    { outputSchema =
        Core.Nothing,
      table = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2OutputStorageConfig where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2OutputStorageConfig"
      ( \o ->
          GooglePrivacyDlpV2OutputStorageConfig
            Core.<$> (o Core..:? "outputSchema")
            Core.<*> (o Core..:? "table")
      )

instance Core.ToJSON GooglePrivacyDlpV2OutputStorageConfig where
  toJSON GooglePrivacyDlpV2OutputStorageConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("outputSchema" Core..=) Core.<$> outputSchema,
            ("table" Core..=) Core.<$> table
          ]
      )

-- | Datastore partition ID. A partition ID identifies a grouping of entities. The grouping is always by project and namespace, however the namespace ID may be empty. A partition ID contains several dimensions: project ID and namespace ID.
--
-- /See:/ 'newGooglePrivacyDlpV2PartitionId' smart constructor.
data GooglePrivacyDlpV2PartitionId = GooglePrivacyDlpV2PartitionId
  { -- | If not empty, the ID of the namespace to which the entities belong.
    namespaceId :: (Core.Maybe Core.Text),
    -- | The ID of the project to which the entities belong.
    projectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2PartitionId' with the minimum fields required to make a request.
newGooglePrivacyDlpV2PartitionId ::
  GooglePrivacyDlpV2PartitionId
newGooglePrivacyDlpV2PartitionId =
  GooglePrivacyDlpV2PartitionId
    { namespaceId = Core.Nothing,
      projectId = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2PartitionId where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2PartitionId"
      ( \o ->
          GooglePrivacyDlpV2PartitionId
            Core.<$> (o Core..:? "namespaceId")
            Core.<*> (o Core..:? "projectId")
      )

instance Core.ToJSON GooglePrivacyDlpV2PartitionId where
  toJSON GooglePrivacyDlpV2PartitionId {..} =
    Core.object
      ( Core.catMaybes
          [ ("namespaceId" Core..=) Core.<$> namespaceId,
            ("projectId" Core..=) Core.<$> projectId
          ]
      )

-- | A (kind, ID\/name) pair used to construct a key path. If either name or ID is set, the element is complete. If neither is set, the element is incomplete.
--
-- /See:/ 'newGooglePrivacyDlpV2PathElement' smart constructor.
data GooglePrivacyDlpV2PathElement = GooglePrivacyDlpV2PathElement
  { -- | The auto-allocated ID of the entity. Never equal to zero. Values less than zero are discouraged and may not be supported in the future.
    id :: (Core.Maybe Core.Int64),
    -- | The kind of the entity. A kind matching regex @__.*__@ is reserved\/read-only. A kind must not contain more than 1500 bytes when UTF-8 encoded. Cannot be @\"\"@.
    kind :: (Core.Maybe Core.Text),
    -- | The name of the entity. A name matching regex @__.*__@ is reserved\/read-only. A name must not be more than 1500 bytes when UTF-8 encoded. Cannot be @\"\"@.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2PathElement' with the minimum fields required to make a request.
newGooglePrivacyDlpV2PathElement ::
  GooglePrivacyDlpV2PathElement
newGooglePrivacyDlpV2PathElement =
  GooglePrivacyDlpV2PathElement
    { id = Core.Nothing,
      kind = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2PathElement where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2PathElement"
      ( \o ->
          GooglePrivacyDlpV2PathElement
            Core.<$> (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON GooglePrivacyDlpV2PathElement where
  toJSON GooglePrivacyDlpV2PathElement {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.. Core.AsText Core.<$> id,
            ("kind" Core..=) Core.<$> kind,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | A rule for transforming a value.
--
-- /See:/ 'newGooglePrivacyDlpV2PrimitiveTransformation' smart constructor.
data GooglePrivacyDlpV2PrimitiveTransformation = GooglePrivacyDlpV2PrimitiveTransformation
  { -- | Bucketing
    bucketingConfig :: (Core.Maybe GooglePrivacyDlpV2BucketingConfig),
    -- | Mask
    characterMaskConfig :: (Core.Maybe GooglePrivacyDlpV2CharacterMaskConfig),
    -- | Deterministic Crypto
    cryptoDeterministicConfig :: (Core.Maybe GooglePrivacyDlpV2CryptoDeterministicConfig),
    -- | Crypto
    cryptoHashConfig :: (Core.Maybe GooglePrivacyDlpV2CryptoHashConfig),
    -- | Ffx-Fpe. Strongly discouraged, consider using CryptoDeterministicConfig instead. Fpe is computationally expensive incurring latency costs.
    cryptoReplaceFfxFpeConfig :: (Core.Maybe GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig),
    -- | Date Shift
    dateShiftConfig :: (Core.Maybe GooglePrivacyDlpV2DateShiftConfig),
    -- | Fixed size bucketing
    fixedSizeBucketingConfig :: (Core.Maybe GooglePrivacyDlpV2FixedSizeBucketingConfig),
    -- | Redact
    redactConfig :: (Core.Maybe GooglePrivacyDlpV2RedactConfig),
    -- | Replace with a specified value.
    replaceConfig :: (Core.Maybe GooglePrivacyDlpV2ReplaceValueConfig),
    -- | Replace with a value randomly drawn (with replacement) from a dictionary.
    replaceDictionaryConfig :: (Core.Maybe GooglePrivacyDlpV2ReplaceDictionaryConfig),
    -- | Replace with infotype
    replaceWithInfoTypeConfig :: (Core.Maybe GooglePrivacyDlpV2ReplaceWithInfoTypeConfig),
    -- | Time extraction
    timePartConfig :: (Core.Maybe GooglePrivacyDlpV2TimePartConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2PrimitiveTransformation' with the minimum fields required to make a request.
newGooglePrivacyDlpV2PrimitiveTransformation ::
  GooglePrivacyDlpV2PrimitiveTransformation
newGooglePrivacyDlpV2PrimitiveTransformation =
  GooglePrivacyDlpV2PrimitiveTransformation
    { bucketingConfig =
        Core.Nothing,
      characterMaskConfig = Core.Nothing,
      cryptoDeterministicConfig = Core.Nothing,
      cryptoHashConfig = Core.Nothing,
      cryptoReplaceFfxFpeConfig = Core.Nothing,
      dateShiftConfig = Core.Nothing,
      fixedSizeBucketingConfig = Core.Nothing,
      redactConfig = Core.Nothing,
      replaceConfig = Core.Nothing,
      replaceDictionaryConfig = Core.Nothing,
      replaceWithInfoTypeConfig = Core.Nothing,
      timePartConfig = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2PrimitiveTransformation where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2PrimitiveTransformation"
      ( \o ->
          GooglePrivacyDlpV2PrimitiveTransformation
            Core.<$> (o Core..:? "bucketingConfig")
            Core.<*> (o Core..:? "characterMaskConfig")
            Core.<*> (o Core..:? "cryptoDeterministicConfig")
            Core.<*> (o Core..:? "cryptoHashConfig")
            Core.<*> (o Core..:? "cryptoReplaceFfxFpeConfig")
            Core.<*> (o Core..:? "dateShiftConfig")
            Core.<*> (o Core..:? "fixedSizeBucketingConfig")
            Core.<*> (o Core..:? "redactConfig")
            Core.<*> (o Core..:? "replaceConfig")
            Core.<*> (o Core..:? "replaceDictionaryConfig")
            Core.<*> (o Core..:? "replaceWithInfoTypeConfig")
            Core.<*> (o Core..:? "timePartConfig")
      )

instance Core.ToJSON GooglePrivacyDlpV2PrimitiveTransformation where
  toJSON GooglePrivacyDlpV2PrimitiveTransformation {..} =
    Core.object
      ( Core.catMaybes
          [ ("bucketingConfig" Core..=) Core.<$> bucketingConfig,
            ("characterMaskConfig" Core..=) Core.<$> characterMaskConfig,
            ("cryptoDeterministicConfig" Core..=)
              Core.<$> cryptoDeterministicConfig,
            ("cryptoHashConfig" Core..=) Core.<$> cryptoHashConfig,
            ("cryptoReplaceFfxFpeConfig" Core..=)
              Core.<$> cryptoReplaceFfxFpeConfig,
            ("dateShiftConfig" Core..=) Core.<$> dateShiftConfig,
            ("fixedSizeBucketingConfig" Core..=)
              Core.<$> fixedSizeBucketingConfig,
            ("redactConfig" Core..=) Core.<$> redactConfig,
            ("replaceConfig" Core..=) Core.<$> replaceConfig,
            ("replaceDictionaryConfig" Core..=)
              Core.<$> replaceDictionaryConfig,
            ("replaceWithInfoTypeConfig" Core..=)
              Core.<$> replaceWithInfoTypeConfig,
            ("timePartConfig" Core..=) Core.<$> timePartConfig
          ]
      )

-- | Privacy metric to compute for reidentification risk analysis.
--
-- /See:/ 'newGooglePrivacyDlpV2PrivacyMetric' smart constructor.
data GooglePrivacyDlpV2PrivacyMetric = GooglePrivacyDlpV2PrivacyMetric
  { -- | Categorical stats
    categoricalStatsConfig :: (Core.Maybe GooglePrivacyDlpV2CategoricalStatsConfig),
    -- | delta-presence
    deltaPresenceEstimationConfig :: (Core.Maybe GooglePrivacyDlpV2DeltaPresenceEstimationConfig),
    -- | K-anonymity
    kAnonymityConfig :: (Core.Maybe GooglePrivacyDlpV2KAnonymityConfig),
    -- | k-map
    kMapEstimationConfig :: (Core.Maybe GooglePrivacyDlpV2KMapEstimationConfig),
    -- | l-diversity
    lDiversityConfig :: (Core.Maybe GooglePrivacyDlpV2LDiversityConfig),
    -- | Numerical stats
    numericalStatsConfig :: (Core.Maybe GooglePrivacyDlpV2NumericalStatsConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2PrivacyMetric' with the minimum fields required to make a request.
newGooglePrivacyDlpV2PrivacyMetric ::
  GooglePrivacyDlpV2PrivacyMetric
newGooglePrivacyDlpV2PrivacyMetric =
  GooglePrivacyDlpV2PrivacyMetric
    { categoricalStatsConfig =
        Core.Nothing,
      deltaPresenceEstimationConfig = Core.Nothing,
      kAnonymityConfig = Core.Nothing,
      kMapEstimationConfig = Core.Nothing,
      lDiversityConfig = Core.Nothing,
      numericalStatsConfig = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2PrivacyMetric where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2PrivacyMetric"
      ( \o ->
          GooglePrivacyDlpV2PrivacyMetric
            Core.<$> (o Core..:? "categoricalStatsConfig")
            Core.<*> (o Core..:? "deltaPresenceEstimationConfig")
            Core.<*> (o Core..:? "kAnonymityConfig")
            Core.<*> (o Core..:? "kMapEstimationConfig")
            Core.<*> (o Core..:? "lDiversityConfig")
            Core.<*> (o Core..:? "numericalStatsConfig")
      )

instance Core.ToJSON GooglePrivacyDlpV2PrivacyMetric where
  toJSON GooglePrivacyDlpV2PrivacyMetric {..} =
    Core.object
      ( Core.catMaybes
          [ ("categoricalStatsConfig" Core..=)
              Core.<$> categoricalStatsConfig,
            ("deltaPresenceEstimationConfig" Core..=)
              Core.<$> deltaPresenceEstimationConfig,
            ("kAnonymityConfig" Core..=) Core.<$> kAnonymityConfig,
            ("kMapEstimationConfig" Core..=) Core.<$> kMapEstimationConfig,
            ("lDiversityConfig" Core..=) Core.<$> lDiversityConfig,
            ("numericalStatsConfig" Core..=) Core.<$> numericalStatsConfig
          ]
      )

-- | Configure processing location for discovery and inspection. For example, image OCR is only provided in limited regions but configuring ProcessingLocation will redirect OCR to a location where OCR is provided.
--
-- /See:/ 'newGooglePrivacyDlpV2ProcessingLocation' smart constructor.
newtype GooglePrivacyDlpV2ProcessingLocation = GooglePrivacyDlpV2ProcessingLocation
  { -- | Image processing will fall back using this configuration.
    imageFallbackLocation :: (Core.Maybe GooglePrivacyDlpV2ImageFallbackLocation)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ProcessingLocation' with the minimum fields required to make a request.
newGooglePrivacyDlpV2ProcessingLocation ::
  GooglePrivacyDlpV2ProcessingLocation
newGooglePrivacyDlpV2ProcessingLocation =
  GooglePrivacyDlpV2ProcessingLocation
    { imageFallbackLocation =
        Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2ProcessingLocation where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ProcessingLocation"
      ( \o ->
          GooglePrivacyDlpV2ProcessingLocation
            Core.<$> (o Core..:? "imageFallbackLocation")
      )

instance Core.ToJSON GooglePrivacyDlpV2ProcessingLocation where
  toJSON GooglePrivacyDlpV2ProcessingLocation {..} =
    Core.object
      ( Core.catMaybes
          [("imageFallbackLocation" Core..=) Core.<$> imageFallbackLocation]
      )

-- | Success or errors for the profile generation.
--
-- /See:/ 'newGooglePrivacyDlpV2ProfileStatus' smart constructor.
data GooglePrivacyDlpV2ProfileStatus = GooglePrivacyDlpV2ProfileStatus
  { -- | Profiling status code and optional message. The @status.code@ value is 0 (default value) for OK.
    status :: (Core.Maybe GoogleRpcStatus),
    -- | Time when the profile generation status was updated
    timestamp :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ProfileStatus' with the minimum fields required to make a request.
newGooglePrivacyDlpV2ProfileStatus ::
  GooglePrivacyDlpV2ProfileStatus
newGooglePrivacyDlpV2ProfileStatus =
  GooglePrivacyDlpV2ProfileStatus
    { status = Core.Nothing,
      timestamp = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2ProfileStatus where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ProfileStatus"
      ( \o ->
          GooglePrivacyDlpV2ProfileStatus
            Core.<$> (o Core..:? "status")
            Core.<*> (o Core..:? "timestamp")
      )

instance Core.ToJSON GooglePrivacyDlpV2ProfileStatus where
  toJSON GooglePrivacyDlpV2ProfileStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("status" Core..=) Core.<$> status,
            ("timestamp" Core..=) Core.<$> timestamp
          ]
      )

-- | An aggregated profile for this project, based on the resources profiled within it.
--
-- /See:/ 'newGooglePrivacyDlpV2ProjectDataProfile' smart constructor.
data GooglePrivacyDlpV2ProjectDataProfile = GooglePrivacyDlpV2ProjectDataProfile
  { -- | The data risk level of this project.
    dataRiskLevel :: (Core.Maybe GooglePrivacyDlpV2DataRiskLevel),
    -- | The number of file store data profiles generated for this project.
    fileStoreDataProfileCount :: (Core.Maybe Core.Int64),
    -- | The resource name of the profile.
    name :: (Core.Maybe Core.Text),
    -- | The last time the profile was generated.
    profileLastGenerated :: (Core.Maybe Core.DateTime),
    -- | Success or error status of the last attempt to profile the project.
    profileStatus :: (Core.Maybe GooglePrivacyDlpV2ProfileStatus),
    -- | Project ID or account that was profiled.
    projectId :: (Core.Maybe Core.Text),
    -- | The sensitivity score of this project.
    sensitivityScore :: (Core.Maybe GooglePrivacyDlpV2SensitivityScore),
    -- | The number of table data profiles generated for this project.
    tableDataProfileCount :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ProjectDataProfile' with the minimum fields required to make a request.
newGooglePrivacyDlpV2ProjectDataProfile ::
  GooglePrivacyDlpV2ProjectDataProfile
newGooglePrivacyDlpV2ProjectDataProfile =
  GooglePrivacyDlpV2ProjectDataProfile
    { dataRiskLevel =
        Core.Nothing,
      fileStoreDataProfileCount = Core.Nothing,
      name = Core.Nothing,
      profileLastGenerated = Core.Nothing,
      profileStatus = Core.Nothing,
      projectId = Core.Nothing,
      sensitivityScore = Core.Nothing,
      tableDataProfileCount = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2ProjectDataProfile where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ProjectDataProfile"
      ( \o ->
          GooglePrivacyDlpV2ProjectDataProfile
            Core.<$> (o Core..:? "dataRiskLevel")
            Core.<*> ( o
                         Core..:? "fileStoreDataProfileCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "profileLastGenerated")
            Core.<*> (o Core..:? "profileStatus")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "sensitivityScore")
            Core.<*> ( o
                         Core..:? "tableDataProfileCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON GooglePrivacyDlpV2ProjectDataProfile where
  toJSON GooglePrivacyDlpV2ProjectDataProfile {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataRiskLevel" Core..=) Core.<$> dataRiskLevel,
            ("fileStoreDataProfileCount" Core..=)
              Core.. Core.AsText
              Core.<$> fileStoreDataProfileCount,
            ("name" Core..=) Core.<$> name,
            ("profileLastGenerated" Core..=) Core.<$> profileLastGenerated,
            ("profileStatus" Core..=) Core.<$> profileStatus,
            ("projectId" Core..=) Core.<$> projectId,
            ("sensitivityScore" Core..=) Core.<$> sensitivityScore,
            ("tableDataProfileCount" Core..=)
              Core.. Core.AsText
              Core.<$> tableDataProfileCount
          ]
      )

-- | Message for specifying a window around a finding to apply a detection rule.
--
-- /See:/ 'newGooglePrivacyDlpV2Proximity' smart constructor.
data GooglePrivacyDlpV2Proximity = GooglePrivacyDlpV2Proximity
  { -- | Number of characters after the finding to consider.
    windowAfter :: (Core.Maybe Core.Int32),
    -- | Number of characters before the finding to consider. For tabular data, if you want to modify the likelihood of an entire column of findngs, set this to 1. For more information, see [Hotword example: Set the match likelihood of a table column] (https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/creating-custom-infotypes-likelihood#match-column-values).
    windowBefore :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Proximity' with the minimum fields required to make a request.
newGooglePrivacyDlpV2Proximity ::
  GooglePrivacyDlpV2Proximity
newGooglePrivacyDlpV2Proximity =
  GooglePrivacyDlpV2Proximity
    { windowAfter = Core.Nothing,
      windowBefore = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2Proximity where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2Proximity"
      ( \o ->
          GooglePrivacyDlpV2Proximity
            Core.<$> (o Core..:? "windowAfter")
            Core.<*> (o Core..:? "windowBefore")
      )

instance Core.ToJSON GooglePrivacyDlpV2Proximity where
  toJSON GooglePrivacyDlpV2Proximity {..} =
    Core.object
      ( Core.catMaybes
          [ ("windowAfter" Core..=) Core.<$> windowAfter,
            ("windowBefore" Core..=) Core.<$> windowBefore
          ]
      )

-- | A condition consisting of a value.
--
-- /See:/ 'newGooglePrivacyDlpV2PubSubCondition' smart constructor.
data GooglePrivacyDlpV2PubSubCondition = GooglePrivacyDlpV2PubSubCondition
  { -- | The minimum data risk score that triggers the condition.
    minimumRiskScore :: (Core.Maybe GooglePrivacyDlpV2PubSubCondition_MinimumRiskScore),
    -- | The minimum sensitivity level that triggers the condition.
    minimumSensitivityScore ::
      ( Core.Maybe
          GooglePrivacyDlpV2PubSubCondition_MinimumSensitivityScore
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2PubSubCondition' with the minimum fields required to make a request.
newGooglePrivacyDlpV2PubSubCondition ::
  GooglePrivacyDlpV2PubSubCondition
newGooglePrivacyDlpV2PubSubCondition =
  GooglePrivacyDlpV2PubSubCondition
    { minimumRiskScore =
        Core.Nothing,
      minimumSensitivityScore = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2PubSubCondition where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2PubSubCondition"
      ( \o ->
          GooglePrivacyDlpV2PubSubCondition
            Core.<$> (o Core..:? "minimumRiskScore")
            Core.<*> (o Core..:? "minimumSensitivityScore")
      )

instance Core.ToJSON GooglePrivacyDlpV2PubSubCondition where
  toJSON GooglePrivacyDlpV2PubSubCondition {..} =
    Core.object
      ( Core.catMaybes
          [ ("minimumRiskScore" Core..=) Core.<$> minimumRiskScore,
            ("minimumSensitivityScore" Core..=)
              Core.<$> minimumSensitivityScore
          ]
      )

-- | An expression, consisting of an operator and conditions.
--
-- /See:/ 'newGooglePrivacyDlpV2PubSubExpressions' smart constructor.
data GooglePrivacyDlpV2PubSubExpressions = GooglePrivacyDlpV2PubSubExpressions
  { -- | Conditions to apply to the expression.
    conditions :: (Core.Maybe [GooglePrivacyDlpV2PubSubCondition]),
    -- | The operator to apply to the collection of conditions.
    logicalOperator :: (Core.Maybe GooglePrivacyDlpV2PubSubExpressions_LogicalOperator)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2PubSubExpressions' with the minimum fields required to make a request.
newGooglePrivacyDlpV2PubSubExpressions ::
  GooglePrivacyDlpV2PubSubExpressions
newGooglePrivacyDlpV2PubSubExpressions =
  GooglePrivacyDlpV2PubSubExpressions
    { conditions = Core.Nothing,
      logicalOperator = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2PubSubExpressions where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2PubSubExpressions"
      ( \o ->
          GooglePrivacyDlpV2PubSubExpressions
            Core.<$> (o Core..:? "conditions")
            Core.<*> (o Core..:? "logicalOperator")
      )

instance Core.ToJSON GooglePrivacyDlpV2PubSubExpressions where
  toJSON GooglePrivacyDlpV2PubSubExpressions {..} =
    Core.object
      ( Core.catMaybes
          [ ("conditions" Core..=) Core.<$> conditions,
            ("logicalOperator" Core..=) Core.<$> logicalOperator
          ]
      )

-- | Send a Pub\/Sub message into the given Pub\/Sub topic to connect other systems to data profile generation. The message payload data will be the byte serialization of @DataProfilePubSubMessage@.
--
-- /See:/ 'newGooglePrivacyDlpV2PubSubNotification' smart constructor.
data GooglePrivacyDlpV2PubSubNotification = GooglePrivacyDlpV2PubSubNotification
  { -- | How much data to include in the Pub\/Sub message. If the user wishes to limit the size of the message, they can use resource_name and fetch the profile fields they wish to. Per table profile (not per column).
    detailOfMessage :: (Core.Maybe GooglePrivacyDlpV2PubSubNotification_DetailOfMessage),
    -- | The type of event that triggers a Pub\/Sub. At most one @PubSubNotification@ per EventType is permitted.
    event :: (Core.Maybe GooglePrivacyDlpV2PubSubNotification_Event),
    -- | Conditions (e.g., data risk or sensitivity level) for triggering a Pub\/Sub.
    pubsubCondition :: (Core.Maybe GooglePrivacyDlpV2DataProfilePubSubCondition),
    -- | Cloud Pub\/Sub topic to send notifications to. Format is projects\/{project}\/topics\/{topic}.
    topic :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2PubSubNotification' with the minimum fields required to make a request.
newGooglePrivacyDlpV2PubSubNotification ::
  GooglePrivacyDlpV2PubSubNotification
newGooglePrivacyDlpV2PubSubNotification =
  GooglePrivacyDlpV2PubSubNotification
    { detailOfMessage =
        Core.Nothing,
      event = Core.Nothing,
      pubsubCondition = Core.Nothing,
      topic = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2PubSubNotification where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2PubSubNotification"
      ( \o ->
          GooglePrivacyDlpV2PubSubNotification
            Core.<$> (o Core..:? "detailOfMessage")
            Core.<*> (o Core..:? "event")
            Core.<*> (o Core..:? "pubsubCondition")
            Core.<*> (o Core..:? "topic")
      )

instance Core.ToJSON GooglePrivacyDlpV2PubSubNotification where
  toJSON GooglePrivacyDlpV2PubSubNotification {..} =
    Core.object
      ( Core.catMaybes
          [ ("detailOfMessage" Core..=) Core.<$> detailOfMessage,
            ("event" Core..=) Core.<$> event,
            ("pubsubCondition" Core..=) Core.<$> pubsubCondition,
            ("topic" Core..=) Core.<$> topic
          ]
      )

-- | Publish findings of a DlpJob to Data Catalog. In Data Catalog, tag templates are applied to the resource that Cloud DLP scanned. Data Catalog tag templates are stored in the same project and region where the BigQuery table exists. For Cloud DLP to create and apply the tag template, the Cloud DLP service agent must have the @roles\/datacatalog.tagTemplateOwner@ permission on the project. The tag template contains fields summarizing the results of the DlpJob. Any field values previously written by another DlpJob are deleted. InfoType naming patterns are strictly enforced when using this feature. Findings are persisted in Data Catalog storage and are governed by service-specific policies for Data Catalog. For more information, see <https://cloud.google.com/terms/service-terms Service Specific Terms>. Only a single instance of this action can be specified. This action is allowed only if all resources being scanned are BigQuery tables. Compatible with: Inspect
--
-- /See:/ 'newGooglePrivacyDlpV2PublishFindingsToCloudDataCatalog' smart constructor.
data GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog = GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog' with the minimum fields required to make a request.
newGooglePrivacyDlpV2PublishFindingsToCloudDataCatalog ::
  GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog
newGooglePrivacyDlpV2PublishFindingsToCloudDataCatalog =
  GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog

instance
  Core.FromJSON
    GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog"
      ( \o ->
          Core.pure GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog
  where
  toJSON = Core.const Core.emptyObject

-- | Publish the result summary of a DlpJob to <https://cloud.google.com/security-command-center Security Command Center>. This action is available for only projects that belong to an organization. This action publishes the count of finding instances and their infoTypes. The summary of findings are persisted in Security Command Center and are governed by <https://cloud.google.com/terms/service-terms service-specific policies for Security Command Center>. Only a single instance of this action can be specified. Compatible with: Inspect
--
-- /See:/ 'newGooglePrivacyDlpV2PublishSummaryToCscc' smart constructor.
data GooglePrivacyDlpV2PublishSummaryToCscc = GooglePrivacyDlpV2PublishSummaryToCscc
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2PublishSummaryToCscc' with the minimum fields required to make a request.
newGooglePrivacyDlpV2PublishSummaryToCscc ::
  GooglePrivacyDlpV2PublishSummaryToCscc
newGooglePrivacyDlpV2PublishSummaryToCscc =
  GooglePrivacyDlpV2PublishSummaryToCscc

instance Core.FromJSON GooglePrivacyDlpV2PublishSummaryToCscc where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2PublishSummaryToCscc"
      (\o -> Core.pure GooglePrivacyDlpV2PublishSummaryToCscc)

instance Core.ToJSON GooglePrivacyDlpV2PublishSummaryToCscc where
  toJSON = Core.const Core.emptyObject

-- | Message expressing intention to publish to Google Security Operations.
--
-- /See:/ 'newGooglePrivacyDlpV2PublishToChronicle' smart constructor.
data GooglePrivacyDlpV2PublishToChronicle = GooglePrivacyDlpV2PublishToChronicle
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2PublishToChronicle' with the minimum fields required to make a request.
newGooglePrivacyDlpV2PublishToChronicle ::
  GooglePrivacyDlpV2PublishToChronicle
newGooglePrivacyDlpV2PublishToChronicle =
  GooglePrivacyDlpV2PublishToChronicle

instance Core.FromJSON GooglePrivacyDlpV2PublishToChronicle where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2PublishToChronicle"
      (\o -> Core.pure GooglePrivacyDlpV2PublishToChronicle)

instance Core.ToJSON GooglePrivacyDlpV2PublishToChronicle where
  toJSON = Core.const Core.emptyObject

-- | Publish a message into a given Pub\/Sub topic when DlpJob has completed. The message contains a single field, @DlpJobName@, which is equal to the finished job\'s <https://cloud.google.com/sensitive-data-protection/docs/reference/rest/v2/projects.dlpJobs#DlpJob DlpJob.name>. Compatible with: Inspect, Risk
--
-- /See:/ 'newGooglePrivacyDlpV2PublishToPubSub' smart constructor.
newtype GooglePrivacyDlpV2PublishToPubSub = GooglePrivacyDlpV2PublishToPubSub
  { -- | Cloud Pub\/Sub topic to send notifications to. The topic must have given publishing access rights to the DLP API service account executing the long running DlpJob sending the notifications. Format is projects\/{project}\/topics\/{topic}.
    topic :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2PublishToPubSub' with the minimum fields required to make a request.
newGooglePrivacyDlpV2PublishToPubSub ::
  GooglePrivacyDlpV2PublishToPubSub
newGooglePrivacyDlpV2PublishToPubSub =
  GooglePrivacyDlpV2PublishToPubSub {topic = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2PublishToPubSub where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2PublishToPubSub"
      ( \o ->
          GooglePrivacyDlpV2PublishToPubSub Core.<$> (o Core..:? "topic")
      )

instance Core.ToJSON GooglePrivacyDlpV2PublishToPubSub where
  toJSON GooglePrivacyDlpV2PublishToPubSub {..} =
    Core.object (Core.catMaybes [("topic" Core..=) Core.<$> topic])

-- | If set, a summary finding will be created or updated in Security Command Center for each profile.
--
-- /See:/ 'newGooglePrivacyDlpV2PublishToSecurityCommandCenter' smart constructor.
data GooglePrivacyDlpV2PublishToSecurityCommandCenter = GooglePrivacyDlpV2PublishToSecurityCommandCenter
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2PublishToSecurityCommandCenter' with the minimum fields required to make a request.
newGooglePrivacyDlpV2PublishToSecurityCommandCenter ::
  GooglePrivacyDlpV2PublishToSecurityCommandCenter
newGooglePrivacyDlpV2PublishToSecurityCommandCenter =
  GooglePrivacyDlpV2PublishToSecurityCommandCenter

instance
  Core.FromJSON
    GooglePrivacyDlpV2PublishToSecurityCommandCenter
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2PublishToSecurityCommandCenter"
      (\o -> Core.pure GooglePrivacyDlpV2PublishToSecurityCommandCenter)

instance
  Core.ToJSON
    GooglePrivacyDlpV2PublishToSecurityCommandCenter
  where
  toJSON = Core.const Core.emptyObject

-- | Enable Stackdriver metric dlp.googleapis.com\/finding/count. This will publish a metric to stack driver on each infotype requested and how many findings were found for it. CustomDetectors will be bucketed as \'Custom\' under the Stackdriver label \'info/type\'.
--
-- /See:/ 'newGooglePrivacyDlpV2PublishToStackdriver' smart constructor.
data GooglePrivacyDlpV2PublishToStackdriver = GooglePrivacyDlpV2PublishToStackdriver
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2PublishToStackdriver' with the minimum fields required to make a request.
newGooglePrivacyDlpV2PublishToStackdriver ::
  GooglePrivacyDlpV2PublishToStackdriver
newGooglePrivacyDlpV2PublishToStackdriver =
  GooglePrivacyDlpV2PublishToStackdriver

instance Core.FromJSON GooglePrivacyDlpV2PublishToStackdriver where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2PublishToStackdriver"
      (\o -> Core.pure GooglePrivacyDlpV2PublishToStackdriver)

instance Core.ToJSON GooglePrivacyDlpV2PublishToStackdriver where
  toJSON = Core.const Core.emptyObject

-- | A column with a semantic tag attached.
--
-- /See:/ 'newGooglePrivacyDlpV2QuasiId' smart constructor.
data GooglePrivacyDlpV2QuasiId = GooglePrivacyDlpV2QuasiId
  { -- | A column can be tagged with a custom tag. In this case, the user must indicate an auxiliary table that contains statistical information on the possible values of this column (below).
    customTag :: (Core.Maybe Core.Text),
    -- | Required. Identifies the column.
    field :: (Core.Maybe GooglePrivacyDlpV2FieldId),
    -- | If no semantic tag is indicated, we infer the statistical model from the distribution of values in the input data
    inferred :: (Core.Maybe GoogleProtobufEmpty),
    -- | A column can be tagged with a InfoType to use the relevant public dataset as a statistical model of population, if available. We currently support US ZIP codes, region codes, ages and genders. To programmatically obtain the list of supported InfoTypes, use ListInfoTypes with the supported/by=RISK/ANALYSIS filter.
    infoType :: (Core.Maybe GooglePrivacyDlpV2InfoType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2QuasiId' with the minimum fields required to make a request.
newGooglePrivacyDlpV2QuasiId ::
  GooglePrivacyDlpV2QuasiId
newGooglePrivacyDlpV2QuasiId =
  GooglePrivacyDlpV2QuasiId
    { customTag = Core.Nothing,
      field = Core.Nothing,
      inferred = Core.Nothing,
      infoType = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2QuasiId where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2QuasiId"
      ( \o ->
          GooglePrivacyDlpV2QuasiId
            Core.<$> (o Core..:? "customTag")
            Core.<*> (o Core..:? "field")
            Core.<*> (o Core..:? "inferred")
            Core.<*> (o Core..:? "infoType")
      )

instance Core.ToJSON GooglePrivacyDlpV2QuasiId where
  toJSON GooglePrivacyDlpV2QuasiId {..} =
    Core.object
      ( Core.catMaybes
          [ ("customTag" Core..=) Core.<$> customTag,
            ("field" Core..=) Core.<$> field,
            ("inferred" Core..=) Core.<$> inferred,
            ("infoType" Core..=) Core.<$> infoType
          ]
      )

-- | A quasi-identifier column has a custom_tag, used to know which column in the data corresponds to which column in the statistical model.
--
-- /See:/ 'newGooglePrivacyDlpV2QuasiIdField' smart constructor.
data GooglePrivacyDlpV2QuasiIdField = GooglePrivacyDlpV2QuasiIdField
  { -- | A auxiliary field.
    customTag :: (Core.Maybe Core.Text),
    -- | Identifies the column.
    field :: (Core.Maybe GooglePrivacyDlpV2FieldId)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2QuasiIdField' with the minimum fields required to make a request.
newGooglePrivacyDlpV2QuasiIdField ::
  GooglePrivacyDlpV2QuasiIdField
newGooglePrivacyDlpV2QuasiIdField =
  GooglePrivacyDlpV2QuasiIdField
    { customTag = Core.Nothing,
      field = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2QuasiIdField where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2QuasiIdField"
      ( \o ->
          GooglePrivacyDlpV2QuasiIdField
            Core.<$> (o Core..:? "customTag")
            Core.<*> (o Core..:? "field")
      )

instance Core.ToJSON GooglePrivacyDlpV2QuasiIdField where
  toJSON GooglePrivacyDlpV2QuasiIdField {..} =
    Core.object
      ( Core.catMaybes
          [ ("customTag" Core..=) Core.<$> customTag,
            ("field" Core..=) Core.<$> field
          ]
      )

-- | A quasi-identifier column has a custom_tag, used to know which column in the data corresponds to which column in the statistical model.
--
-- /See:/ 'newGooglePrivacyDlpV2QuasiIdentifierField' smart constructor.
data GooglePrivacyDlpV2QuasiIdentifierField = GooglePrivacyDlpV2QuasiIdentifierField
  { -- | A column can be tagged with a custom tag. In this case, the user must indicate an auxiliary table that contains statistical information on the possible values of this column (below).
    customTag :: (Core.Maybe Core.Text),
    -- | Identifies the column.
    field :: (Core.Maybe GooglePrivacyDlpV2FieldId)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2QuasiIdentifierField' with the minimum fields required to make a request.
newGooglePrivacyDlpV2QuasiIdentifierField ::
  GooglePrivacyDlpV2QuasiIdentifierField
newGooglePrivacyDlpV2QuasiIdentifierField =
  GooglePrivacyDlpV2QuasiIdentifierField
    { customTag = Core.Nothing,
      field = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2QuasiIdentifierField where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2QuasiIdentifierField"
      ( \o ->
          GooglePrivacyDlpV2QuasiIdentifierField
            Core.<$> (o Core..:? "customTag")
            Core.<*> (o Core..:? "field")
      )

instance Core.ToJSON GooglePrivacyDlpV2QuasiIdentifierField where
  toJSON GooglePrivacyDlpV2QuasiIdentifierField {..} =
    Core.object
      ( Core.catMaybes
          [ ("customTag" Core..=) Core.<$> customTag,
            ("field" Core..=) Core.<$> field
          ]
      )

-- | Message for infoType-dependent details parsed from quote.
--
-- /See:/ 'newGooglePrivacyDlpV2QuoteInfo' smart constructor.
newtype GooglePrivacyDlpV2QuoteInfo = GooglePrivacyDlpV2QuoteInfo
  { -- | The date time indicated by the quote.
    dateTime :: (Core.Maybe GooglePrivacyDlpV2DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2QuoteInfo' with the minimum fields required to make a request.
newGooglePrivacyDlpV2QuoteInfo ::
  GooglePrivacyDlpV2QuoteInfo
newGooglePrivacyDlpV2QuoteInfo =
  GooglePrivacyDlpV2QuoteInfo {dateTime = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2QuoteInfo where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2QuoteInfo"
      ( \o ->
          GooglePrivacyDlpV2QuoteInfo Core.<$> (o Core..:? "dateTime")
      )

instance Core.ToJSON GooglePrivacyDlpV2QuoteInfo where
  toJSON GooglePrivacyDlpV2QuoteInfo {..} =
    Core.object
      (Core.catMaybes [("dateTime" Core..=) Core.<$> dateTime])

-- | Generic half-open interval [start, end)
--
-- /See:/ 'newGooglePrivacyDlpV2Range' smart constructor.
data GooglePrivacyDlpV2Range = GooglePrivacyDlpV2Range
  { -- | Index of the last character of the range (exclusive).
    end :: (Core.Maybe Core.Int64),
    -- | Index of the first character of the range (inclusive).
    start :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Range' with the minimum fields required to make a request.
newGooglePrivacyDlpV2Range ::
  GooglePrivacyDlpV2Range
newGooglePrivacyDlpV2Range =
  GooglePrivacyDlpV2Range {end = Core.Nothing, start = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2Range where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2Range"
      ( \o ->
          GooglePrivacyDlpV2Range
            Core.<$> (o Core..:? "end" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "start" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON GooglePrivacyDlpV2Range where
  toJSON GooglePrivacyDlpV2Range {..} =
    Core.object
      ( Core.catMaybes
          [ ("end" Core..=) Core.. Core.AsText Core.<$> end,
            ("start" Core..=) Core.. Core.AsText Core.<$> start
          ]
      )

-- | A condition for determining whether a transformation should be applied to a field.
--
-- /See:/ 'newGooglePrivacyDlpV2RecordCondition' smart constructor.
newtype GooglePrivacyDlpV2RecordCondition = GooglePrivacyDlpV2RecordCondition
  { -- | An expression.
    expressions :: (Core.Maybe GooglePrivacyDlpV2Expressions)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2RecordCondition' with the minimum fields required to make a request.
newGooglePrivacyDlpV2RecordCondition ::
  GooglePrivacyDlpV2RecordCondition
newGooglePrivacyDlpV2RecordCondition =
  GooglePrivacyDlpV2RecordCondition {expressions = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2RecordCondition where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2RecordCondition"
      ( \o ->
          GooglePrivacyDlpV2RecordCondition
            Core.<$> (o Core..:? "expressions")
      )

instance Core.ToJSON GooglePrivacyDlpV2RecordCondition where
  toJSON GooglePrivacyDlpV2RecordCondition {..} =
    Core.object
      (Core.catMaybes [("expressions" Core..=) Core.<$> expressions])

-- | Message for a unique key indicating a record that contains a finding.
--
-- /See:/ 'newGooglePrivacyDlpV2RecordKey' smart constructor.
data GooglePrivacyDlpV2RecordKey = GooglePrivacyDlpV2RecordKey
  { -- | Datastore key
    bigQueryKey :: (Core.Maybe GooglePrivacyDlpV2BigQueryKey),
    -- | BigQuery key
    datastoreKey :: (Core.Maybe GooglePrivacyDlpV2DatastoreKey),
    -- | Values of identifying columns in the given row. Order of values matches the order of @identifying_fields@ specified in the scanning request.
    idValues :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2RecordKey' with the minimum fields required to make a request.
newGooglePrivacyDlpV2RecordKey ::
  GooglePrivacyDlpV2RecordKey
newGooglePrivacyDlpV2RecordKey =
  GooglePrivacyDlpV2RecordKey
    { bigQueryKey = Core.Nothing,
      datastoreKey = Core.Nothing,
      idValues = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2RecordKey where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2RecordKey"
      ( \o ->
          GooglePrivacyDlpV2RecordKey
            Core.<$> (o Core..:? "bigQueryKey")
            Core.<*> (o Core..:? "datastoreKey")
            Core.<*> (o Core..:? "idValues")
      )

instance Core.ToJSON GooglePrivacyDlpV2RecordKey where
  toJSON GooglePrivacyDlpV2RecordKey {..} =
    Core.object
      ( Core.catMaybes
          [ ("bigQueryKey" Core..=) Core.<$> bigQueryKey,
            ("datastoreKey" Core..=) Core.<$> datastoreKey,
            ("idValues" Core..=) Core.<$> idValues
          ]
      )

-- | Location of a finding within a row or record.
--
-- /See:/ 'newGooglePrivacyDlpV2RecordLocation' smart constructor.
data GooglePrivacyDlpV2RecordLocation = GooglePrivacyDlpV2RecordLocation
  { -- | Field id of the field containing the finding.
    fieldId :: (Core.Maybe GooglePrivacyDlpV2FieldId),
    -- | Key of the finding.
    recordKey :: (Core.Maybe GooglePrivacyDlpV2RecordKey),
    -- | Location within a @ContentItem.Table@.
    tableLocation :: (Core.Maybe GooglePrivacyDlpV2TableLocation)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2RecordLocation' with the minimum fields required to make a request.
newGooglePrivacyDlpV2RecordLocation ::
  GooglePrivacyDlpV2RecordLocation
newGooglePrivacyDlpV2RecordLocation =
  GooglePrivacyDlpV2RecordLocation
    { fieldId = Core.Nothing,
      recordKey = Core.Nothing,
      tableLocation = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2RecordLocation where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2RecordLocation"
      ( \o ->
          GooglePrivacyDlpV2RecordLocation
            Core.<$> (o Core..:? "fieldId")
            Core.<*> (o Core..:? "recordKey")
            Core.<*> (o Core..:? "tableLocation")
      )

instance Core.ToJSON GooglePrivacyDlpV2RecordLocation where
  toJSON GooglePrivacyDlpV2RecordLocation {..} =
    Core.object
      ( Core.catMaybes
          [ ("fieldId" Core..=) Core.<$> fieldId,
            ("recordKey" Core..=) Core.<$> recordKey,
            ("tableLocation" Core..=) Core.<$> tableLocation
          ]
      )

-- | Configuration to suppress records whose suppression conditions evaluate to true.
--
-- /See:/ 'newGooglePrivacyDlpV2RecordSuppression' smart constructor.
newtype GooglePrivacyDlpV2RecordSuppression = GooglePrivacyDlpV2RecordSuppression
  { -- | A condition that when it evaluates to true will result in the record being evaluated to be suppressed from the transformed content.
    condition :: (Core.Maybe GooglePrivacyDlpV2RecordCondition)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2RecordSuppression' with the minimum fields required to make a request.
newGooglePrivacyDlpV2RecordSuppression ::
  GooglePrivacyDlpV2RecordSuppression
newGooglePrivacyDlpV2RecordSuppression =
  GooglePrivacyDlpV2RecordSuppression {condition = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2RecordSuppression where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2RecordSuppression"
      ( \o ->
          GooglePrivacyDlpV2RecordSuppression
            Core.<$> (o Core..:? "condition")
      )

instance Core.ToJSON GooglePrivacyDlpV2RecordSuppression where
  toJSON GooglePrivacyDlpV2RecordSuppression {..} =
    Core.object
      (Core.catMaybes [("condition" Core..=) Core.<$> condition])

-- | The field in a record to transform.
--
-- /See:/ 'newGooglePrivacyDlpV2RecordTransformation' smart constructor.
data GooglePrivacyDlpV2RecordTransformation = GooglePrivacyDlpV2RecordTransformation
  { -- | Findings container modification timestamp, if applicable.
    containerTimestamp :: (Core.Maybe Core.DateTime),
    -- | Container version, if available (\"generation\" for Cloud Storage).
    containerVersion :: (Core.Maybe Core.Text),
    -- | For record transformations, provide a field.
    fieldId :: (Core.Maybe GooglePrivacyDlpV2FieldId)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2RecordTransformation' with the minimum fields required to make a request.
newGooglePrivacyDlpV2RecordTransformation ::
  GooglePrivacyDlpV2RecordTransformation
newGooglePrivacyDlpV2RecordTransformation =
  GooglePrivacyDlpV2RecordTransformation
    { containerTimestamp =
        Core.Nothing,
      containerVersion = Core.Nothing,
      fieldId = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2RecordTransformation where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2RecordTransformation"
      ( \o ->
          GooglePrivacyDlpV2RecordTransformation
            Core.<$> (o Core..:? "containerTimestamp")
            Core.<*> (o Core..:? "containerVersion")
            Core.<*> (o Core..:? "fieldId")
      )

instance Core.ToJSON GooglePrivacyDlpV2RecordTransformation where
  toJSON GooglePrivacyDlpV2RecordTransformation {..} =
    Core.object
      ( Core.catMaybes
          [ ("containerTimestamp" Core..=) Core.<$> containerTimestamp,
            ("containerVersion" Core..=) Core.<$> containerVersion,
            ("fieldId" Core..=) Core.<$> fieldId
          ]
      )

-- | A type of transformation that is applied over structured data such as a table.
--
-- /See:/ 'newGooglePrivacyDlpV2RecordTransformations' smart constructor.
data GooglePrivacyDlpV2RecordTransformations = GooglePrivacyDlpV2RecordTransformations
  { -- | Transform the record by applying various field transformations.
    fieldTransformations :: (Core.Maybe [GooglePrivacyDlpV2FieldTransformation]),
    -- | Configuration defining which records get suppressed entirely. Records that match any suppression rule are omitted from the output.
    recordSuppressions :: (Core.Maybe [GooglePrivacyDlpV2RecordSuppression])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2RecordTransformations' with the minimum fields required to make a request.
newGooglePrivacyDlpV2RecordTransformations ::
  GooglePrivacyDlpV2RecordTransformations
newGooglePrivacyDlpV2RecordTransformations =
  GooglePrivacyDlpV2RecordTransformations
    { fieldTransformations =
        Core.Nothing,
      recordSuppressions = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2RecordTransformations where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2RecordTransformations"
      ( \o ->
          GooglePrivacyDlpV2RecordTransformations
            Core.<$> (o Core..:? "fieldTransformations")
            Core.<*> (o Core..:? "recordSuppressions")
      )

instance Core.ToJSON GooglePrivacyDlpV2RecordTransformations where
  toJSON GooglePrivacyDlpV2RecordTransformations {..} =
    Core.object
      ( Core.catMaybes
          [ ("fieldTransformations" Core..=) Core.<$> fieldTransformations,
            ("recordSuppressions" Core..=) Core.<$> recordSuppressions
          ]
      )

-- | Redact a given value. For example, if used with an @InfoTypeTransformation@ transforming PHONE_NUMBER, and input \'My phone number is 206-555-0123\', the output would be \'My phone number is \'.
--
-- /See:/ 'newGooglePrivacyDlpV2RedactConfig' smart constructor.
data GooglePrivacyDlpV2RedactConfig = GooglePrivacyDlpV2RedactConfig
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2RedactConfig' with the minimum fields required to make a request.
newGooglePrivacyDlpV2RedactConfig ::
  GooglePrivacyDlpV2RedactConfig
newGooglePrivacyDlpV2RedactConfig = GooglePrivacyDlpV2RedactConfig

instance Core.FromJSON GooglePrivacyDlpV2RedactConfig where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2RedactConfig"
      (\o -> Core.pure GooglePrivacyDlpV2RedactConfig)

instance Core.ToJSON GooglePrivacyDlpV2RedactConfig where
  toJSON = Core.const Core.emptyObject

-- | Request to search for potentially sensitive info in an image and redact it by covering it with a colored rectangle.
--
-- /See:/ 'newGooglePrivacyDlpV2RedactImageRequest' smart constructor.
data GooglePrivacyDlpV2RedactImageRequest = GooglePrivacyDlpV2RedactImageRequest
  { -- | The content must be PNG, JPEG, SVG or BMP.
    byteItem :: (Core.Maybe GooglePrivacyDlpV2ByteContentItem),
    -- | The configuration for specifying what content to redact from images.
    imageRedactionConfigs :: (Core.Maybe [GooglePrivacyDlpV2ImageRedactionConfig]),
    -- | Whether the response should include findings along with the redacted image.
    includeFindings :: (Core.Maybe Core.Bool),
    -- | Configuration for the inspector.
    inspectConfig :: (Core.Maybe GooglePrivacyDlpV2InspectConfig),
    -- | Deprecated. This field has no effect.
    locationId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2RedactImageRequest' with the minimum fields required to make a request.
newGooglePrivacyDlpV2RedactImageRequest ::
  GooglePrivacyDlpV2RedactImageRequest
newGooglePrivacyDlpV2RedactImageRequest =
  GooglePrivacyDlpV2RedactImageRequest
    { byteItem = Core.Nothing,
      imageRedactionConfigs = Core.Nothing,
      includeFindings = Core.Nothing,
      inspectConfig = Core.Nothing,
      locationId = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2RedactImageRequest where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2RedactImageRequest"
      ( \o ->
          GooglePrivacyDlpV2RedactImageRequest
            Core.<$> (o Core..:? "byteItem")
            Core.<*> (o Core..:? "imageRedactionConfigs")
            Core.<*> (o Core..:? "includeFindings")
            Core.<*> (o Core..:? "inspectConfig")
            Core.<*> (o Core..:? "locationId")
      )

instance Core.ToJSON GooglePrivacyDlpV2RedactImageRequest where
  toJSON GooglePrivacyDlpV2RedactImageRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("byteItem" Core..=) Core.<$> byteItem,
            ("imageRedactionConfigs" Core..=) Core.<$> imageRedactionConfigs,
            ("includeFindings" Core..=) Core.<$> includeFindings,
            ("inspectConfig" Core..=) Core.<$> inspectConfig,
            ("locationId" Core..=) Core.<$> locationId
          ]
      )

-- | Results of redacting an image.
--
-- /See:/ 'newGooglePrivacyDlpV2RedactImageResponse' smart constructor.
data GooglePrivacyDlpV2RedactImageResponse = GooglePrivacyDlpV2RedactImageResponse
  { -- | If an image was being inspected and the InspectConfig\'s include_quote was set to true, then this field will include all text, if any, that was found in the image.
    extractedText :: (Core.Maybe Core.Text),
    -- | The findings. Populated when include_findings in the request is true.
    inspectResult :: (Core.Maybe GooglePrivacyDlpV2InspectResult),
    -- | The redacted image. The type will be the same as the original image.
    redactedImage :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2RedactImageResponse' with the minimum fields required to make a request.
newGooglePrivacyDlpV2RedactImageResponse ::
  GooglePrivacyDlpV2RedactImageResponse
newGooglePrivacyDlpV2RedactImageResponse =
  GooglePrivacyDlpV2RedactImageResponse
    { extractedText =
        Core.Nothing,
      inspectResult = Core.Nothing,
      redactedImage = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2RedactImageResponse where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2RedactImageResponse"
      ( \o ->
          GooglePrivacyDlpV2RedactImageResponse
            Core.<$> (o Core..:? "extractedText")
            Core.<*> (o Core..:? "inspectResult")
            Core.<*> (o Core..:? "redactedImage")
      )

instance Core.ToJSON GooglePrivacyDlpV2RedactImageResponse where
  toJSON GooglePrivacyDlpV2RedactImageResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("extractedText" Core..=) Core.<$> extractedText,
            ("inspectResult" Core..=) Core.<$> inspectResult,
            ("redactedImage" Core..=) Core.<$> redactedImage
          ]
      )

-- | Message defining a custom regular expression.
--
-- /See:/ 'newGooglePrivacyDlpV2Regex' smart constructor.
data GooglePrivacyDlpV2Regex = GooglePrivacyDlpV2Regex
  { -- | The index of the submatch to extract as findings. When not specified, the entire match is returned. No more than 3 may be included.
    groupIndexes :: (Core.Maybe [Core.Int32]),
    -- | Pattern defining the regular expression. Its syntax (https:\/\/github.com\/google\/re2\/wiki\/Syntax) can be found under the google\/re2 repository on GitHub.
    pattern' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Regex' with the minimum fields required to make a request.
newGooglePrivacyDlpV2Regex ::
  GooglePrivacyDlpV2Regex
newGooglePrivacyDlpV2Regex =
  GooglePrivacyDlpV2Regex
    { groupIndexes = Core.Nothing,
      pattern' = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2Regex where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2Regex"
      ( \o ->
          GooglePrivacyDlpV2Regex
            Core.<$> (o Core..:? "groupIndexes")
            Core.<*> (o Core..:? "pattern")
      )

instance Core.ToJSON GooglePrivacyDlpV2Regex where
  toJSON GooglePrivacyDlpV2Regex {..} =
    Core.object
      ( Core.catMaybes
          [ ("groupIndexes" Core..=) Core.<$> groupIndexes,
            ("pattern" Core..=) Core.<$> pattern'
          ]
      )

-- | Request to re-identify an item.
--
-- /See:/ 'newGooglePrivacyDlpV2ReidentifyContentRequest' smart constructor.
data GooglePrivacyDlpV2ReidentifyContentRequest = GooglePrivacyDlpV2ReidentifyContentRequest
  { -- | Configuration for the inspector.
    inspectConfig :: (Core.Maybe GooglePrivacyDlpV2InspectConfig),
    -- | Template to use. Any configuration directly specified in @inspect_config@ will override those set in the template. Singular fields that are set in this request will replace their corresponding fields in the template. Repeated fields are appended. Singular sub-messages and groups are recursively merged.
    inspectTemplateName :: (Core.Maybe Core.Text),
    -- | The item to re-identify. Will be treated as text.
    item :: (Core.Maybe GooglePrivacyDlpV2ContentItem),
    -- | Deprecated. This field has no effect.
    locationId :: (Core.Maybe Core.Text),
    -- | Configuration for the re-identification of the content item. This field shares the same proto message type that is used for de-identification, however its usage here is for the reversal of the previous de-identification. Re-identification is performed by examining the transformations used to de-identify the items and executing the reverse. This requires that only reversible transformations be provided here. The reversible transformations are: - @CryptoDeterministicConfig@ - @CryptoReplaceFfxFpeConfig@
    reidentifyConfig :: (Core.Maybe GooglePrivacyDlpV2DeidentifyConfig),
    -- | Template to use. References an instance of @DeidentifyTemplate@. Any configuration directly specified in @reidentify_config@ or @inspect_config@ will override those set in the template. The @DeidentifyTemplate@ used must include only reversible transformations. Singular fields that are set in this request will replace their corresponding fields in the template. Repeated fields are appended. Singular sub-messages and groups are recursively merged.
    reidentifyTemplateName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ReidentifyContentRequest' with the minimum fields required to make a request.
newGooglePrivacyDlpV2ReidentifyContentRequest ::
  GooglePrivacyDlpV2ReidentifyContentRequest
newGooglePrivacyDlpV2ReidentifyContentRequest =
  GooglePrivacyDlpV2ReidentifyContentRequest
    { inspectConfig =
        Core.Nothing,
      inspectTemplateName = Core.Nothing,
      item = Core.Nothing,
      locationId = Core.Nothing,
      reidentifyConfig = Core.Nothing,
      reidentifyTemplateName = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2ReidentifyContentRequest where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ReidentifyContentRequest"
      ( \o ->
          GooglePrivacyDlpV2ReidentifyContentRequest
            Core.<$> (o Core..:? "inspectConfig")
            Core.<*> (o Core..:? "inspectTemplateName")
            Core.<*> (o Core..:? "item")
            Core.<*> (o Core..:? "locationId")
            Core.<*> (o Core..:? "reidentifyConfig")
            Core.<*> (o Core..:? "reidentifyTemplateName")
      )

instance Core.ToJSON GooglePrivacyDlpV2ReidentifyContentRequest where
  toJSON GooglePrivacyDlpV2ReidentifyContentRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("inspectConfig" Core..=) Core.<$> inspectConfig,
            ("inspectTemplateName" Core..=) Core.<$> inspectTemplateName,
            ("item" Core..=) Core.<$> item,
            ("locationId" Core..=) Core.<$> locationId,
            ("reidentifyConfig" Core..=) Core.<$> reidentifyConfig,
            ("reidentifyTemplateName" Core..=)
              Core.<$> reidentifyTemplateName
          ]
      )

-- | Results of re-identifying an item.
--
-- /See:/ 'newGooglePrivacyDlpV2ReidentifyContentResponse' smart constructor.
data GooglePrivacyDlpV2ReidentifyContentResponse = GooglePrivacyDlpV2ReidentifyContentResponse
  { -- | The re-identified item.
    item :: (Core.Maybe GooglePrivacyDlpV2ContentItem),
    -- | An overview of the changes that were made to the @item@.
    overview :: (Core.Maybe GooglePrivacyDlpV2TransformationOverview)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ReidentifyContentResponse' with the minimum fields required to make a request.
newGooglePrivacyDlpV2ReidentifyContentResponse ::
  GooglePrivacyDlpV2ReidentifyContentResponse
newGooglePrivacyDlpV2ReidentifyContentResponse =
  GooglePrivacyDlpV2ReidentifyContentResponse
    { item = Core.Nothing,
      overview = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2ReidentifyContentResponse where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ReidentifyContentResponse"
      ( \o ->
          GooglePrivacyDlpV2ReidentifyContentResponse
            Core.<$> (o Core..:? "item")
            Core.<*> (o Core..:? "overview")
      )

instance Core.ToJSON GooglePrivacyDlpV2ReidentifyContentResponse where
  toJSON GooglePrivacyDlpV2ReidentifyContentResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("item" Core..=) Core.<$> item,
            ("overview" Core..=) Core.<$> overview
          ]
      )

-- | A related resource. Examples: * The source BigQuery table for a Vertex AI dataset. * The source Cloud Storage bucket for a Vertex AI dataset.
--
-- /See:/ 'newGooglePrivacyDlpV2RelatedResource' smart constructor.
newtype GooglePrivacyDlpV2RelatedResource = GooglePrivacyDlpV2RelatedResource
  { -- | The full resource name of the related resource.
    fullResource :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2RelatedResource' with the minimum fields required to make a request.
newGooglePrivacyDlpV2RelatedResource ::
  GooglePrivacyDlpV2RelatedResource
newGooglePrivacyDlpV2RelatedResource =
  GooglePrivacyDlpV2RelatedResource {fullResource = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2RelatedResource where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2RelatedResource"
      ( \o ->
          GooglePrivacyDlpV2RelatedResource
            Core.<$> (o Core..:? "fullResource")
      )

instance Core.ToJSON GooglePrivacyDlpV2RelatedResource where
  toJSON GooglePrivacyDlpV2RelatedResource {..} =
    Core.object
      (Core.catMaybes [("fullResource" Core..=) Core.<$> fullResource])

-- | Replace each input value with a value randomly selected from the dictionary.
--
-- /See:/ 'newGooglePrivacyDlpV2ReplaceDictionaryConfig' smart constructor.
newtype GooglePrivacyDlpV2ReplaceDictionaryConfig = GooglePrivacyDlpV2ReplaceDictionaryConfig
  { -- | A list of words to select from for random replacement. The <https://cloud.google.com/sensitive-data-protection/limits limits> page contains details about the size limits of dictionaries.
    wordList :: (Core.Maybe GooglePrivacyDlpV2WordList)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ReplaceDictionaryConfig' with the minimum fields required to make a request.
newGooglePrivacyDlpV2ReplaceDictionaryConfig ::
  GooglePrivacyDlpV2ReplaceDictionaryConfig
newGooglePrivacyDlpV2ReplaceDictionaryConfig =
  GooglePrivacyDlpV2ReplaceDictionaryConfig
    { wordList =
        Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2ReplaceDictionaryConfig where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ReplaceDictionaryConfig"
      ( \o ->
          GooglePrivacyDlpV2ReplaceDictionaryConfig
            Core.<$> (o Core..:? "wordList")
      )

instance Core.ToJSON GooglePrivacyDlpV2ReplaceDictionaryConfig where
  toJSON GooglePrivacyDlpV2ReplaceDictionaryConfig {..} =
    Core.object
      (Core.catMaybes [("wordList" Core..=) Core.<$> wordList])

-- | Replace each input value with a given @Value@.
--
-- /See:/ 'newGooglePrivacyDlpV2ReplaceValueConfig' smart constructor.
newtype GooglePrivacyDlpV2ReplaceValueConfig = GooglePrivacyDlpV2ReplaceValueConfig
  { -- | Value to replace it with.
    newValue' :: (Core.Maybe GooglePrivacyDlpV2Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ReplaceValueConfig' with the minimum fields required to make a request.
newGooglePrivacyDlpV2ReplaceValueConfig ::
  GooglePrivacyDlpV2ReplaceValueConfig
newGooglePrivacyDlpV2ReplaceValueConfig =
  GooglePrivacyDlpV2ReplaceValueConfig {newValue' = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2ReplaceValueConfig where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ReplaceValueConfig"
      ( \o ->
          GooglePrivacyDlpV2ReplaceValueConfig
            Core.<$> (o Core..:? "newValue")
      )

instance Core.ToJSON GooglePrivacyDlpV2ReplaceValueConfig where
  toJSON GooglePrivacyDlpV2ReplaceValueConfig {..} =
    Core.object
      (Core.catMaybes [("newValue" Core..=) Core.<$> newValue'])

-- | Replace each matching finding with the name of the info_type.
--
-- /See:/ 'newGooglePrivacyDlpV2ReplaceWithInfoTypeConfig' smart constructor.
data GooglePrivacyDlpV2ReplaceWithInfoTypeConfig = GooglePrivacyDlpV2ReplaceWithInfoTypeConfig
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ReplaceWithInfoTypeConfig' with the minimum fields required to make a request.
newGooglePrivacyDlpV2ReplaceWithInfoTypeConfig ::
  GooglePrivacyDlpV2ReplaceWithInfoTypeConfig
newGooglePrivacyDlpV2ReplaceWithInfoTypeConfig =
  GooglePrivacyDlpV2ReplaceWithInfoTypeConfig

instance Core.FromJSON GooglePrivacyDlpV2ReplaceWithInfoTypeConfig where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ReplaceWithInfoTypeConfig"
      (\o -> Core.pure GooglePrivacyDlpV2ReplaceWithInfoTypeConfig)

instance Core.ToJSON GooglePrivacyDlpV2ReplaceWithInfoTypeConfig where
  toJSON = Core.const Core.emptyObject

-- | De-identification options.
--
-- /See:/ 'newGooglePrivacyDlpV2RequestedDeidentifyOptions' smart constructor.
data GooglePrivacyDlpV2RequestedDeidentifyOptions = GooglePrivacyDlpV2RequestedDeidentifyOptions
  { -- | Snapshot of the state of the @DeidentifyTemplate@ from the Deidentify action at the time this job was run.
    snapshotDeidentifyTemplate :: (Core.Maybe GooglePrivacyDlpV2DeidentifyTemplate),
    -- | Snapshot of the state of the image transformation @DeidentifyTemplate@ from the @Deidentify@ action at the time this job was run.
    snapshotImageRedactTemplate :: (Core.Maybe GooglePrivacyDlpV2DeidentifyTemplate),
    -- | Snapshot of the state of the structured @DeidentifyTemplate@ from the @Deidentify@ action at the time this job was run.
    snapshotStructuredDeidentifyTemplate :: (Core.Maybe GooglePrivacyDlpV2DeidentifyTemplate)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2RequestedDeidentifyOptions' with the minimum fields required to make a request.
newGooglePrivacyDlpV2RequestedDeidentifyOptions ::
  GooglePrivacyDlpV2RequestedDeidentifyOptions
newGooglePrivacyDlpV2RequestedDeidentifyOptions =
  GooglePrivacyDlpV2RequestedDeidentifyOptions
    { snapshotDeidentifyTemplate =
        Core.Nothing,
      snapshotImageRedactTemplate = Core.Nothing,
      snapshotStructuredDeidentifyTemplate =
        Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2RequestedDeidentifyOptions where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2RequestedDeidentifyOptions"
      ( \o ->
          GooglePrivacyDlpV2RequestedDeidentifyOptions
            Core.<$> (o Core..:? "snapshotDeidentifyTemplate")
            Core.<*> (o Core..:? "snapshotImageRedactTemplate")
            Core.<*> (o Core..:? "snapshotStructuredDeidentifyTemplate")
      )

instance Core.ToJSON GooglePrivacyDlpV2RequestedDeidentifyOptions where
  toJSON GooglePrivacyDlpV2RequestedDeidentifyOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("snapshotDeidentifyTemplate" Core..=)
              Core.<$> snapshotDeidentifyTemplate,
            ("snapshotImageRedactTemplate" Core..=)
              Core.<$> snapshotImageRedactTemplate,
            ("snapshotStructuredDeidentifyTemplate" Core..=)
              Core.<$> snapshotStructuredDeidentifyTemplate
          ]
      )

-- | Snapshot of the inspection configuration.
--
-- /See:/ 'newGooglePrivacyDlpV2RequestedOptions' smart constructor.
data GooglePrivacyDlpV2RequestedOptions = GooglePrivacyDlpV2RequestedOptions
  { -- | Inspect config.
    jobConfig :: (Core.Maybe GooglePrivacyDlpV2InspectJobConfig),
    -- | If run with an InspectTemplate, a snapshot of its state at the time of this run.
    snapshotInspectTemplate :: (Core.Maybe GooglePrivacyDlpV2InspectTemplate)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2RequestedOptions' with the minimum fields required to make a request.
newGooglePrivacyDlpV2RequestedOptions ::
  GooglePrivacyDlpV2RequestedOptions
newGooglePrivacyDlpV2RequestedOptions =
  GooglePrivacyDlpV2RequestedOptions
    { jobConfig = Core.Nothing,
      snapshotInspectTemplate = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2RequestedOptions where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2RequestedOptions"
      ( \o ->
          GooglePrivacyDlpV2RequestedOptions
            Core.<$> (o Core..:? "jobConfig")
            Core.<*> (o Core..:? "snapshotInspectTemplate")
      )

instance Core.ToJSON GooglePrivacyDlpV2RequestedOptions where
  toJSON GooglePrivacyDlpV2RequestedOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("jobConfig" Core..=) Core.<$> jobConfig,
            ("snapshotInspectTemplate" Core..=)
              Core.<$> snapshotInspectTemplate
          ]
      )

-- | Risk analysis options.
--
-- /See:/ 'newGooglePrivacyDlpV2RequestedRiskAnalysisOptions' smart constructor.
newtype GooglePrivacyDlpV2RequestedRiskAnalysisOptions = GooglePrivacyDlpV2RequestedRiskAnalysisOptions
  { -- | The job config for the risk job.
    jobConfig :: (Core.Maybe GooglePrivacyDlpV2RiskAnalysisJobConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2RequestedRiskAnalysisOptions' with the minimum fields required to make a request.
newGooglePrivacyDlpV2RequestedRiskAnalysisOptions ::
  GooglePrivacyDlpV2RequestedRiskAnalysisOptions
newGooglePrivacyDlpV2RequestedRiskAnalysisOptions =
  GooglePrivacyDlpV2RequestedRiskAnalysisOptions
    { jobConfig =
        Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2RequestedRiskAnalysisOptions
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2RequestedRiskAnalysisOptions"
      ( \o ->
          GooglePrivacyDlpV2RequestedRiskAnalysisOptions
            Core.<$> (o Core..:? "jobConfig")
      )

instance Core.ToJSON GooglePrivacyDlpV2RequestedRiskAnalysisOptions where
  toJSON GooglePrivacyDlpV2RequestedRiskAnalysisOptions {..} =
    Core.object
      (Core.catMaybes [("jobConfig" Core..=) Core.<$> jobConfig])

-- | All result fields mentioned below are updated while the job is processing.
--
-- /See:/ 'newGooglePrivacyDlpV2Result' smart constructor.
data GooglePrivacyDlpV2Result = GooglePrivacyDlpV2Result
  { -- | Statistics related to the processing of hybrid inspect.
    hybridStats :: (Core.Maybe GooglePrivacyDlpV2HybridInspectStatistics),
    -- | Statistics of how many instances of each info type were found during inspect job.
    infoTypeStats :: (Core.Maybe [GooglePrivacyDlpV2InfoTypeStats]),
    -- | Number of rows scanned after sampling and time filtering (applicable for row based stores such as BigQuery).
    numRowsProcessed :: (Core.Maybe Core.Int64),
    -- | Total size in bytes that were processed.
    processedBytes :: (Core.Maybe Core.Int64),
    -- | Estimate of the number of bytes to process.
    totalEstimatedBytes :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Result' with the minimum fields required to make a request.
newGooglePrivacyDlpV2Result ::
  GooglePrivacyDlpV2Result
newGooglePrivacyDlpV2Result =
  GooglePrivacyDlpV2Result
    { hybridStats = Core.Nothing,
      infoTypeStats = Core.Nothing,
      numRowsProcessed = Core.Nothing,
      processedBytes = Core.Nothing,
      totalEstimatedBytes = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2Result where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2Result"
      ( \o ->
          GooglePrivacyDlpV2Result
            Core.<$> (o Core..:? "hybridStats")
            Core.<*> (o Core..:? "infoTypeStats")
            Core.<*> (o Core..:? "numRowsProcessed" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "processedBytes" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> ( o
                         Core..:? "totalEstimatedBytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON GooglePrivacyDlpV2Result where
  toJSON GooglePrivacyDlpV2Result {..} =
    Core.object
      ( Core.catMaybes
          [ ("hybridStats" Core..=) Core.<$> hybridStats,
            ("infoTypeStats" Core..=) Core.<$> infoTypeStats,
            ("numRowsProcessed" Core..=)
              Core.. Core.AsText
              Core.<$> numRowsProcessed,
            ("processedBytes" Core..=)
              Core.. Core.AsText
              Core.<$> processedBytes,
            ("totalEstimatedBytes" Core..=)
              Core.. Core.AsText
              Core.<$> totalEstimatedBytes
          ]
      )

-- | Configuration for a risk analysis job. See https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/concepts-risk-analysis to learn more.
--
-- /See:/ 'newGooglePrivacyDlpV2RiskAnalysisJobConfig' smart constructor.
data GooglePrivacyDlpV2RiskAnalysisJobConfig = GooglePrivacyDlpV2RiskAnalysisJobConfig
  { -- | Actions to execute at the completion of the job. Are executed in the order provided.
    actions :: (Core.Maybe [GooglePrivacyDlpV2Action]),
    -- | Privacy metric to compute.
    privacyMetric :: (Core.Maybe GooglePrivacyDlpV2PrivacyMetric),
    -- | Input dataset to compute metrics over.
    sourceTable :: (Core.Maybe GooglePrivacyDlpV2BigQueryTable)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2RiskAnalysisJobConfig' with the minimum fields required to make a request.
newGooglePrivacyDlpV2RiskAnalysisJobConfig ::
  GooglePrivacyDlpV2RiskAnalysisJobConfig
newGooglePrivacyDlpV2RiskAnalysisJobConfig =
  GooglePrivacyDlpV2RiskAnalysisJobConfig
    { actions = Core.Nothing,
      privacyMetric = Core.Nothing,
      sourceTable = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2RiskAnalysisJobConfig where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2RiskAnalysisJobConfig"
      ( \o ->
          GooglePrivacyDlpV2RiskAnalysisJobConfig
            Core.<$> (o Core..:? "actions")
            Core.<*> (o Core..:? "privacyMetric")
            Core.<*> (o Core..:? "sourceTable")
      )

instance Core.ToJSON GooglePrivacyDlpV2RiskAnalysisJobConfig where
  toJSON GooglePrivacyDlpV2RiskAnalysisJobConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("actions" Core..=) Core.<$> actions,
            ("privacyMetric" Core..=) Core.<$> privacyMetric,
            ("sourceTable" Core..=) Core.<$> sourceTable
          ]
      )

-- | Values of the row.
--
-- /See:/ 'newGooglePrivacyDlpV2Row' smart constructor.
newtype GooglePrivacyDlpV2Row = GooglePrivacyDlpV2Row
  { -- | Individual cells.
    values :: (Core.Maybe [GooglePrivacyDlpV2Value])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Row' with the minimum fields required to make a request.
newGooglePrivacyDlpV2Row ::
  GooglePrivacyDlpV2Row
newGooglePrivacyDlpV2Row =
  GooglePrivacyDlpV2Row {values = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2Row where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2Row"
      (\o -> GooglePrivacyDlpV2Row Core.<$> (o Core..:? "values"))

instance Core.ToJSON GooglePrivacyDlpV2Row where
  toJSON GooglePrivacyDlpV2Row {..} =
    Core.object (Core.catMaybes [("values" Core..=) Core.<$> values])

-- | If set, the detailed findings will be persisted to the specified OutputStorageConfig. Only a single instance of this action can be specified. Compatible with: Inspect, Risk
--
-- /See:/ 'newGooglePrivacyDlpV2SaveFindings' smart constructor.
newtype GooglePrivacyDlpV2SaveFindings = GooglePrivacyDlpV2SaveFindings
  { -- | Location to store findings outside of DLP.
    outputConfig :: (Core.Maybe GooglePrivacyDlpV2OutputStorageConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2SaveFindings' with the minimum fields required to make a request.
newGooglePrivacyDlpV2SaveFindings ::
  GooglePrivacyDlpV2SaveFindings
newGooglePrivacyDlpV2SaveFindings =
  GooglePrivacyDlpV2SaveFindings {outputConfig = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2SaveFindings where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2SaveFindings"
      ( \o ->
          GooglePrivacyDlpV2SaveFindings
            Core.<$> (o Core..:? "outputConfig")
      )

instance Core.ToJSON GooglePrivacyDlpV2SaveFindings where
  toJSON GooglePrivacyDlpV2SaveFindings {..} =
    Core.object
      (Core.catMaybes [("outputConfig" Core..=) Core.<$> outputConfig])

-- | Schedule for inspect job triggers.
--
-- /See:/ 'newGooglePrivacyDlpV2Schedule' smart constructor.
newtype GooglePrivacyDlpV2Schedule = GooglePrivacyDlpV2Schedule
  { -- | With this option a job is started on a regular periodic basis. For example: every day (86400 seconds). A scheduled start time will be skipped if the previous execution has not ended when its scheduled time occurs. This value must be set to a time duration greater than or equal to 1 day and can be no longer than 60 days.
    recurrencePeriodDuration :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Schedule' with the minimum fields required to make a request.
newGooglePrivacyDlpV2Schedule ::
  GooglePrivacyDlpV2Schedule
newGooglePrivacyDlpV2Schedule =
  GooglePrivacyDlpV2Schedule
    { recurrencePeriodDuration =
        Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2Schedule where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2Schedule"
      ( \o ->
          GooglePrivacyDlpV2Schedule
            Core.<$> (o Core..:? "recurrencePeriodDuration")
      )

instance Core.ToJSON GooglePrivacyDlpV2Schedule where
  toJSON GooglePrivacyDlpV2Schedule {..} =
    Core.object
      ( Core.catMaybes
          [ ("recurrencePeriodDuration" Core..=)
              Core.<$> recurrencePeriodDuration
          ]
      )

-- | How frequently to modify the profile when the table\'s schema is modified.
--
-- /See:/ 'newGooglePrivacyDlpV2SchemaModifiedCadence' smart constructor.
data GooglePrivacyDlpV2SchemaModifiedCadence = GooglePrivacyDlpV2SchemaModifiedCadence
  { -- | Frequency to regenerate data profiles when the schema is modified. Defaults to monthly.
    frequency :: (Core.Maybe GooglePrivacyDlpV2SchemaModifiedCadence_Frequency),
    -- | The types of schema modifications to consider. Defaults to NEW_COLUMNS.
    types :: (Core.Maybe [GooglePrivacyDlpV2SchemaModifiedCadence_TypesItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2SchemaModifiedCadence' with the minimum fields required to make a request.
newGooglePrivacyDlpV2SchemaModifiedCadence ::
  GooglePrivacyDlpV2SchemaModifiedCadence
newGooglePrivacyDlpV2SchemaModifiedCadence =
  GooglePrivacyDlpV2SchemaModifiedCadence
    { frequency = Core.Nothing,
      types = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2SchemaModifiedCadence where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2SchemaModifiedCadence"
      ( \o ->
          GooglePrivacyDlpV2SchemaModifiedCadence
            Core.<$> (o Core..:? "frequency")
            Core.<*> (o Core..:? "types")
      )

instance Core.ToJSON GooglePrivacyDlpV2SchemaModifiedCadence where
  toJSON GooglePrivacyDlpV2SchemaModifiedCadence {..} =
    Core.object
      ( Core.catMaybes
          [ ("frequency" Core..=) Core.<$> frequency,
            ("types" Core..=) Core.<$> types
          ]
      )

-- | Response message for SearchConnections.
--
-- /See:/ 'newGooglePrivacyDlpV2SearchConnectionsResponse' smart constructor.
data GooglePrivacyDlpV2SearchConnectionsResponse = GooglePrivacyDlpV2SearchConnectionsResponse
  { -- | List of connections that match the search query. Note that only a subset of the fields will be populated, and only \"name\" is guaranteed to be set. For full details of a Connection, call GetConnection with the name.
    connections :: (Core.Maybe [GooglePrivacyDlpV2Connection]),
    -- | Token to retrieve the next page of results. An empty value means there are no more results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2SearchConnectionsResponse' with the minimum fields required to make a request.
newGooglePrivacyDlpV2SearchConnectionsResponse ::
  GooglePrivacyDlpV2SearchConnectionsResponse
newGooglePrivacyDlpV2SearchConnectionsResponse =
  GooglePrivacyDlpV2SearchConnectionsResponse
    { connections =
        Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2SearchConnectionsResponse where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2SearchConnectionsResponse"
      ( \o ->
          GooglePrivacyDlpV2SearchConnectionsResponse
            Core.<$> (o Core..:? "connections")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON GooglePrivacyDlpV2SearchConnectionsResponse where
  toJSON GooglePrivacyDlpV2SearchConnectionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("connections" Core..=) Core.<$> connections,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | A credential consisting of a username and password, where the password is stored in a Secret Manager resource. Note: Secret Manager <https://cloud.google.com/secret-manager/pricing charges apply>.
--
-- /See:/ 'newGooglePrivacyDlpV2SecretManagerCredential' smart constructor.
data GooglePrivacyDlpV2SecretManagerCredential = GooglePrivacyDlpV2SecretManagerCredential
  { -- | Required. The name of the Secret Manager resource that stores the password, in the form @projects\/project-id\/secrets\/secret-name\/versions\/version@.
    passwordSecretVersionName :: (Core.Maybe Core.Text),
    -- | Required. The username.
    username :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2SecretManagerCredential' with the minimum fields required to make a request.
newGooglePrivacyDlpV2SecretManagerCredential ::
  GooglePrivacyDlpV2SecretManagerCredential
newGooglePrivacyDlpV2SecretManagerCredential =
  GooglePrivacyDlpV2SecretManagerCredential
    { passwordSecretVersionName =
        Core.Nothing,
      username = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2SecretManagerCredential where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2SecretManagerCredential"
      ( \o ->
          GooglePrivacyDlpV2SecretManagerCredential
            Core.<$> (o Core..:? "passwordSecretVersionName")
            Core.<*> (o Core..:? "username")
      )

instance Core.ToJSON GooglePrivacyDlpV2SecretManagerCredential where
  toJSON GooglePrivacyDlpV2SecretManagerCredential {..} =
    Core.object
      ( Core.catMaybes
          [ ("passwordSecretVersionName" Core..=)
              Core.<$> passwordSecretVersionName,
            ("username" Core..=) Core.<$> username
          ]
      )

-- | Discovery target for credentials and secrets in cloud resource metadata. This target does not include any filtering or frequency controls. Cloud DLP will scan cloud resource metadata for secrets daily. No inspect template should be included in the discovery config for a security benchmarks scan. Instead, the built-in list of secrets and credentials infoTypes will be used (see https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/infotypes-reference#credentials/and/secrets). Credentials and secrets discovered will be reported as vulnerabilities to Security Command Center.
--
-- /See:/ 'newGooglePrivacyDlpV2SecretsDiscoveryTarget' smart constructor.
data GooglePrivacyDlpV2SecretsDiscoveryTarget = GooglePrivacyDlpV2SecretsDiscoveryTarget
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2SecretsDiscoveryTarget' with the minimum fields required to make a request.
newGooglePrivacyDlpV2SecretsDiscoveryTarget ::
  GooglePrivacyDlpV2SecretsDiscoveryTarget
newGooglePrivacyDlpV2SecretsDiscoveryTarget =
  GooglePrivacyDlpV2SecretsDiscoveryTarget

instance Core.FromJSON GooglePrivacyDlpV2SecretsDiscoveryTarget where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2SecretsDiscoveryTarget"
      (\o -> Core.pure GooglePrivacyDlpV2SecretsDiscoveryTarget)

instance Core.ToJSON GooglePrivacyDlpV2SecretsDiscoveryTarget where
  toJSON = Core.const Core.emptyObject

-- | Apply transformation to the selected info_types.
--
-- /See:/ 'newGooglePrivacyDlpV2SelectedInfoTypes' smart constructor.
newtype GooglePrivacyDlpV2SelectedInfoTypes = GooglePrivacyDlpV2SelectedInfoTypes
  { -- | Required. InfoTypes to apply the transformation to. Required. Provided InfoType must be unique within the ImageTransformations message.
    infoTypes :: (Core.Maybe [GooglePrivacyDlpV2InfoType])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2SelectedInfoTypes' with the minimum fields required to make a request.
newGooglePrivacyDlpV2SelectedInfoTypes ::
  GooglePrivacyDlpV2SelectedInfoTypes
newGooglePrivacyDlpV2SelectedInfoTypes =
  GooglePrivacyDlpV2SelectedInfoTypes {infoTypes = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2SelectedInfoTypes where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2SelectedInfoTypes"
      ( \o ->
          GooglePrivacyDlpV2SelectedInfoTypes
            Core.<$> (o Core..:? "infoTypes")
      )

instance Core.ToJSON GooglePrivacyDlpV2SelectedInfoTypes where
  toJSON GooglePrivacyDlpV2SelectedInfoTypes {..} =
    Core.object
      (Core.catMaybes [("infoTypes" Core..=) Core.<$> infoTypes])

-- | Score is calculated from of all elements in the data profile. A higher level means the data is more sensitive.
--
-- /See:/ 'newGooglePrivacyDlpV2SensitivityScore' smart constructor.
newtype GooglePrivacyDlpV2SensitivityScore = GooglePrivacyDlpV2SensitivityScore
  { -- | The sensitivity score applied to the resource.
    score :: (Core.Maybe GooglePrivacyDlpV2SensitivityScore_Score)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2SensitivityScore' with the minimum fields required to make a request.
newGooglePrivacyDlpV2SensitivityScore ::
  GooglePrivacyDlpV2SensitivityScore
newGooglePrivacyDlpV2SensitivityScore =
  GooglePrivacyDlpV2SensitivityScore {score = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2SensitivityScore where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2SensitivityScore"
      ( \o ->
          GooglePrivacyDlpV2SensitivityScore Core.<$> (o Core..:? "score")
      )

instance Core.ToJSON GooglePrivacyDlpV2SensitivityScore where
  toJSON GooglePrivacyDlpV2SensitivityScore {..} =
    Core.object (Core.catMaybes [("score" Core..=) Core.<$> score])

-- | An auxiliary table containing statistical information on the relative frequency of different quasi-identifiers values. It has one or several quasi-identifiers columns, and one column that indicates the relative frequency of each quasi-identifier tuple. If a tuple is present in the data but not in the auxiliary table, the corresponding relative frequency is assumed to be zero (and thus, the tuple is highly reidentifiable).
--
-- /See:/ 'newGooglePrivacyDlpV2StatisticalTable' smart constructor.
data GooglePrivacyDlpV2StatisticalTable = GooglePrivacyDlpV2StatisticalTable
  { -- | Required. Quasi-identifier columns.
    quasiIds :: (Core.Maybe [GooglePrivacyDlpV2QuasiIdentifierField]),
    -- | Required. The relative frequency column must contain a floating-point number between 0 and 1 (inclusive). Null values are assumed to be zero.
    relativeFrequency :: (Core.Maybe GooglePrivacyDlpV2FieldId),
    -- | Required. Auxiliary table location.
    table :: (Core.Maybe GooglePrivacyDlpV2BigQueryTable)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2StatisticalTable' with the minimum fields required to make a request.
newGooglePrivacyDlpV2StatisticalTable ::
  GooglePrivacyDlpV2StatisticalTable
newGooglePrivacyDlpV2StatisticalTable =
  GooglePrivacyDlpV2StatisticalTable
    { quasiIds = Core.Nothing,
      relativeFrequency = Core.Nothing,
      table = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2StatisticalTable where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2StatisticalTable"
      ( \o ->
          GooglePrivacyDlpV2StatisticalTable
            Core.<$> (o Core..:? "quasiIds")
            Core.<*> (o Core..:? "relativeFrequency")
            Core.<*> (o Core..:? "table")
      )

instance Core.ToJSON GooglePrivacyDlpV2StatisticalTable where
  toJSON GooglePrivacyDlpV2StatisticalTable {..} =
    Core.object
      ( Core.catMaybes
          [ ("quasiIds" Core..=) Core.<$> quasiIds,
            ("relativeFrequency" Core..=) Core.<$> relativeFrequency,
            ("table" Core..=) Core.<$> table
          ]
      )

-- | Shared message indicating Cloud storage type.
--
-- /See:/ 'newGooglePrivacyDlpV2StorageConfig' smart constructor.
data GooglePrivacyDlpV2StorageConfig = GooglePrivacyDlpV2StorageConfig
  { -- | BigQuery options.
    bigQueryOptions :: (Core.Maybe GooglePrivacyDlpV2BigQueryOptions),
    -- | Cloud Storage options.
    cloudStorageOptions :: (Core.Maybe GooglePrivacyDlpV2CloudStorageOptions),
    -- | Google Cloud Datastore options.
    datastoreOptions :: (Core.Maybe GooglePrivacyDlpV2DatastoreOptions),
    -- | Hybrid inspection options.
    hybridOptions :: (Core.Maybe GooglePrivacyDlpV2HybridOptions),
    -- | Configuration of the timespan of the items to include in scanning.
    timespanConfig :: (Core.Maybe GooglePrivacyDlpV2TimespanConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2StorageConfig' with the minimum fields required to make a request.
newGooglePrivacyDlpV2StorageConfig ::
  GooglePrivacyDlpV2StorageConfig
newGooglePrivacyDlpV2StorageConfig =
  GooglePrivacyDlpV2StorageConfig
    { bigQueryOptions = Core.Nothing,
      cloudStorageOptions = Core.Nothing,
      datastoreOptions = Core.Nothing,
      hybridOptions = Core.Nothing,
      timespanConfig = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2StorageConfig where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2StorageConfig"
      ( \o ->
          GooglePrivacyDlpV2StorageConfig
            Core.<$> (o Core..:? "bigQueryOptions")
            Core.<*> (o Core..:? "cloudStorageOptions")
            Core.<*> (o Core..:? "datastoreOptions")
            Core.<*> (o Core..:? "hybridOptions")
            Core.<*> (o Core..:? "timespanConfig")
      )

instance Core.ToJSON GooglePrivacyDlpV2StorageConfig where
  toJSON GooglePrivacyDlpV2StorageConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("bigQueryOptions" Core..=) Core.<$> bigQueryOptions,
            ("cloudStorageOptions" Core..=) Core.<$> cloudStorageOptions,
            ("datastoreOptions" Core..=) Core.<$> datastoreOptions,
            ("hybridOptions" Core..=) Core.<$> hybridOptions,
            ("timespanConfig" Core..=) Core.<$> timespanConfig
          ]
      )

-- | Storage metadata label to indicate which metadata entry contains findings.
--
-- /See:/ 'newGooglePrivacyDlpV2StorageMetadataLabel' smart constructor.
newtype GooglePrivacyDlpV2StorageMetadataLabel = GooglePrivacyDlpV2StorageMetadataLabel
  { -- | Label name.
    key :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2StorageMetadataLabel' with the minimum fields required to make a request.
newGooglePrivacyDlpV2StorageMetadataLabel ::
  GooglePrivacyDlpV2StorageMetadataLabel
newGooglePrivacyDlpV2StorageMetadataLabel =
  GooglePrivacyDlpV2StorageMetadataLabel {key = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2StorageMetadataLabel where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2StorageMetadataLabel"
      ( \o ->
          GooglePrivacyDlpV2StorageMetadataLabel Core.<$> (o Core..:? "key")
      )

instance Core.ToJSON GooglePrivacyDlpV2StorageMetadataLabel where
  toJSON GooglePrivacyDlpV2StorageMetadataLabel {..} =
    Core.object (Core.catMaybes [("key" Core..=) Core.<$> key])

-- | StoredInfoType resource message that contains information about the current version and any pending updates.
--
-- /See:/ 'newGooglePrivacyDlpV2StoredInfoType' smart constructor.
data GooglePrivacyDlpV2StoredInfoType = GooglePrivacyDlpV2StoredInfoType
  { -- | Current version of the stored info type.
    currentVersion :: (Core.Maybe GooglePrivacyDlpV2StoredInfoTypeVersion),
    -- | Resource name.
    name :: (Core.Maybe Core.Text),
    -- | Pending versions of the stored info type. Empty if no versions are pending.
    pendingVersions :: (Core.Maybe [GooglePrivacyDlpV2StoredInfoTypeVersion])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2StoredInfoType' with the minimum fields required to make a request.
newGooglePrivacyDlpV2StoredInfoType ::
  GooglePrivacyDlpV2StoredInfoType
newGooglePrivacyDlpV2StoredInfoType =
  GooglePrivacyDlpV2StoredInfoType
    { currentVersion = Core.Nothing,
      name = Core.Nothing,
      pendingVersions = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2StoredInfoType where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2StoredInfoType"
      ( \o ->
          GooglePrivacyDlpV2StoredInfoType
            Core.<$> (o Core..:? "currentVersion")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "pendingVersions")
      )

instance Core.ToJSON GooglePrivacyDlpV2StoredInfoType where
  toJSON GooglePrivacyDlpV2StoredInfoType {..} =
    Core.object
      ( Core.catMaybes
          [ ("currentVersion" Core..=) Core.<$> currentVersion,
            ("name" Core..=) Core.<$> name,
            ("pendingVersions" Core..=) Core.<$> pendingVersions
          ]
      )

-- | Configuration for stored infoTypes. All fields and subfield are provided by the user. For more information, see https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/creating-custom-infotypes.
--
-- /See:/ 'newGooglePrivacyDlpV2StoredInfoTypeConfig' smart constructor.
data GooglePrivacyDlpV2StoredInfoTypeConfig = GooglePrivacyDlpV2StoredInfoTypeConfig
  { -- | Description of the StoredInfoType (max 256 characters).
    description :: (Core.Maybe Core.Text),
    -- | Store dictionary-based CustomInfoType.
    dictionary :: (Core.Maybe GooglePrivacyDlpV2Dictionary),
    -- | Display name of the StoredInfoType (max 256 characters).
    displayName :: (Core.Maybe Core.Text),
    -- | StoredInfoType where findings are defined by a dictionary of phrases.
    largeCustomDictionary :: (Core.Maybe GooglePrivacyDlpV2LargeCustomDictionaryConfig),
    -- | Store regular expression-based StoredInfoType.
    regex :: (Core.Maybe GooglePrivacyDlpV2Regex)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2StoredInfoTypeConfig' with the minimum fields required to make a request.
newGooglePrivacyDlpV2StoredInfoTypeConfig ::
  GooglePrivacyDlpV2StoredInfoTypeConfig
newGooglePrivacyDlpV2StoredInfoTypeConfig =
  GooglePrivacyDlpV2StoredInfoTypeConfig
    { description =
        Core.Nothing,
      dictionary = Core.Nothing,
      displayName = Core.Nothing,
      largeCustomDictionary = Core.Nothing,
      regex = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2StoredInfoTypeConfig where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2StoredInfoTypeConfig"
      ( \o ->
          GooglePrivacyDlpV2StoredInfoTypeConfig
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "dictionary")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "largeCustomDictionary")
            Core.<*> (o Core..:? "regex")
      )

instance Core.ToJSON GooglePrivacyDlpV2StoredInfoTypeConfig where
  toJSON GooglePrivacyDlpV2StoredInfoTypeConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("dictionary" Core..=) Core.<$> dictionary,
            ("displayName" Core..=) Core.<$> displayName,
            ("largeCustomDictionary" Core..=) Core.<$> largeCustomDictionary,
            ("regex" Core..=) Core.<$> regex
          ]
      )

-- | Statistics for a StoredInfoType.
--
-- /See:/ 'newGooglePrivacyDlpV2StoredInfoTypeStats' smart constructor.
newtype GooglePrivacyDlpV2StoredInfoTypeStats = GooglePrivacyDlpV2StoredInfoTypeStats
  { -- | StoredInfoType where findings are defined by a dictionary of phrases.
    largeCustomDictionary :: (Core.Maybe GooglePrivacyDlpV2LargeCustomDictionaryStats)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2StoredInfoTypeStats' with the minimum fields required to make a request.
newGooglePrivacyDlpV2StoredInfoTypeStats ::
  GooglePrivacyDlpV2StoredInfoTypeStats
newGooglePrivacyDlpV2StoredInfoTypeStats =
  GooglePrivacyDlpV2StoredInfoTypeStats
    { largeCustomDictionary =
        Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2StoredInfoTypeStats where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2StoredInfoTypeStats"
      ( \o ->
          GooglePrivacyDlpV2StoredInfoTypeStats
            Core.<$> (o Core..:? "largeCustomDictionary")
      )

instance Core.ToJSON GooglePrivacyDlpV2StoredInfoTypeStats where
  toJSON GooglePrivacyDlpV2StoredInfoTypeStats {..} =
    Core.object
      ( Core.catMaybes
          [("largeCustomDictionary" Core..=) Core.<$> largeCustomDictionary]
      )

-- | Version of a StoredInfoType, including the configuration used to build it, create timestamp, and current state.
--
-- /See:/ 'newGooglePrivacyDlpV2StoredInfoTypeVersion' smart constructor.
data GooglePrivacyDlpV2StoredInfoTypeVersion = GooglePrivacyDlpV2StoredInfoTypeVersion
  { -- | StoredInfoType configuration.
    config :: (Core.Maybe GooglePrivacyDlpV2StoredInfoTypeConfig),
    -- | Create timestamp of the version. Read-only, determined by the system when the version is created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Errors that occurred when creating this storedInfoType version, or anomalies detected in the storedInfoType data that render it unusable. Only the five most recent errors will be displayed, with the most recent error appearing first. For example, some of the data for stored custom dictionaries is put in the user\'s Cloud Storage bucket, and if this data is modified or deleted by the user or another system, the dictionary becomes invalid. If any errors occur, fix the problem indicated by the error message and use the UpdateStoredInfoType API method to create another version of the storedInfoType to continue using it, reusing the same @config@ if it was not the source of the error.
    errors :: (Core.Maybe [GooglePrivacyDlpV2Error]),
    -- | Stored info type version state. Read-only, updated by the system during dictionary creation.
    state :: (Core.Maybe GooglePrivacyDlpV2StoredInfoTypeVersion_State),
    -- | Statistics about this storedInfoType version.
    stats :: (Core.Maybe GooglePrivacyDlpV2StoredInfoTypeStats)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2StoredInfoTypeVersion' with the minimum fields required to make a request.
newGooglePrivacyDlpV2StoredInfoTypeVersion ::
  GooglePrivacyDlpV2StoredInfoTypeVersion
newGooglePrivacyDlpV2StoredInfoTypeVersion =
  GooglePrivacyDlpV2StoredInfoTypeVersion
    { config = Core.Nothing,
      createTime = Core.Nothing,
      errors = Core.Nothing,
      state = Core.Nothing,
      stats = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2StoredInfoTypeVersion where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2StoredInfoTypeVersion"
      ( \o ->
          GooglePrivacyDlpV2StoredInfoTypeVersion
            Core.<$> (o Core..:? "config")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "errors")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "stats")
      )

instance Core.ToJSON GooglePrivacyDlpV2StoredInfoTypeVersion where
  toJSON GooglePrivacyDlpV2StoredInfoTypeVersion {..} =
    Core.object
      ( Core.catMaybes
          [ ("config" Core..=) Core.<$> config,
            ("createTime" Core..=) Core.<$> createTime,
            ("errors" Core..=) Core.<$> errors,
            ("state" Core..=) Core.<$> state,
            ("stats" Core..=) Core.<$> stats
          ]
      )

-- | A reference to a StoredInfoType to use with scanning.
--
-- /See:/ 'newGooglePrivacyDlpV2StoredType' smart constructor.
data GooglePrivacyDlpV2StoredType = GooglePrivacyDlpV2StoredType
  { -- | Timestamp indicating when the version of the @StoredInfoType@ used for inspection was created. Output-only field, populated by the system.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Resource name of the requested @StoredInfoType@, for example @organizations\/433245324\/storedInfoTypes\/432452342@ or @projects\/project-id\/storedInfoTypes\/432452342@.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2StoredType' with the minimum fields required to make a request.
newGooglePrivacyDlpV2StoredType ::
  GooglePrivacyDlpV2StoredType
newGooglePrivacyDlpV2StoredType =
  GooglePrivacyDlpV2StoredType
    { createTime = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2StoredType where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2StoredType"
      ( \o ->
          GooglePrivacyDlpV2StoredType
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON GooglePrivacyDlpV2StoredType where
  toJSON GooglePrivacyDlpV2StoredType {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | A collection that informs the user the number of times a particular @TransformationResultCode@ and error details occurred.
--
-- /See:/ 'newGooglePrivacyDlpV2SummaryResult' smart constructor.
data GooglePrivacyDlpV2SummaryResult = GooglePrivacyDlpV2SummaryResult
  { -- | Outcome of the transformation.
    code :: (Core.Maybe GooglePrivacyDlpV2SummaryResult_Code),
    -- | Number of transformations counted by this result.
    count :: (Core.Maybe Core.Int64),
    -- | A place for warnings or errors to show up if a transformation didn\'t work as expected.
    details :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2SummaryResult' with the minimum fields required to make a request.
newGooglePrivacyDlpV2SummaryResult ::
  GooglePrivacyDlpV2SummaryResult
newGooglePrivacyDlpV2SummaryResult =
  GooglePrivacyDlpV2SummaryResult
    { code = Core.Nothing,
      count = Core.Nothing,
      details = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2SummaryResult where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2SummaryResult"
      ( \o ->
          GooglePrivacyDlpV2SummaryResult
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "count" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "details")
      )

instance Core.ToJSON GooglePrivacyDlpV2SummaryResult where
  toJSON GooglePrivacyDlpV2SummaryResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("count" Core..=) Core.. Core.AsText Core.<$> count,
            ("details" Core..=) Core.<$> details
          ]
      )

-- | Message for detecting output from deidentification transformations such as <https://cloud.google.com/sensitive-data-protection/docs/reference/rest/v2/organizations.deidentifyTemplates#cryptoreplaceffxfpeconfig CryptoReplaceFfxFpeConfig>. These types of transformations are those that perform pseudonymization, thereby producing a \"surrogate\" as output. This should be used in conjunction with a field on the transformation such as @surrogate_info_type@. This CustomInfoType does not support the use of @detection_rules@.
--
-- /See:/ 'newGooglePrivacyDlpV2SurrogateType' smart constructor.
data GooglePrivacyDlpV2SurrogateType = GooglePrivacyDlpV2SurrogateType
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2SurrogateType' with the minimum fields required to make a request.
newGooglePrivacyDlpV2SurrogateType ::
  GooglePrivacyDlpV2SurrogateType
newGooglePrivacyDlpV2SurrogateType =
  GooglePrivacyDlpV2SurrogateType

instance Core.FromJSON GooglePrivacyDlpV2SurrogateType where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2SurrogateType"
      (\o -> Core.pure GooglePrivacyDlpV2SurrogateType)

instance Core.ToJSON GooglePrivacyDlpV2SurrogateType where
  toJSON = Core.const Core.emptyObject

-- | Structured content to inspect. Up to 50,000 @Value@s per request allowed. See https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/inspecting-structured-text#inspecting/a/table to learn more.
--
-- /See:/ 'newGooglePrivacyDlpV2Table' smart constructor.
data GooglePrivacyDlpV2Table = GooglePrivacyDlpV2Table
  { -- | Headers of the table.
    headers :: (Core.Maybe [GooglePrivacyDlpV2FieldId]),
    -- | Rows of the table.
    rows :: (Core.Maybe [GooglePrivacyDlpV2Row])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Table' with the minimum fields required to make a request.
newGooglePrivacyDlpV2Table ::
  GooglePrivacyDlpV2Table
newGooglePrivacyDlpV2Table =
  GooglePrivacyDlpV2Table
    { headers = Core.Nothing,
      rows = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2Table where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2Table"
      ( \o ->
          GooglePrivacyDlpV2Table
            Core.<$> (o Core..:? "headers")
            Core.<*> (o Core..:? "rows")
      )

instance Core.ToJSON GooglePrivacyDlpV2Table where
  toJSON GooglePrivacyDlpV2Table {..} =
    Core.object
      ( Core.catMaybes
          [ ("headers" Core..=) Core.<$> headers,
            ("rows" Core..=) Core.<$> rows
          ]
      )

-- | The profile for a scanned table.
--
-- /See:/ 'newGooglePrivacyDlpV2TableDataProfile' smart constructor.
data GooglePrivacyDlpV2TableDataProfile = GooglePrivacyDlpV2TableDataProfile
  { -- | The snapshot of the configurations used to generate the profile.
    configSnapshot :: (Core.Maybe GooglePrivacyDlpV2DataProfileConfigSnapshot),
    -- | The time at which the table was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | The data risk level of this table.
    dataRiskLevel :: (Core.Maybe GooglePrivacyDlpV2DataRiskLevel),
    -- | The resource type that was profiled.
    dataSourceType :: (Core.Maybe GooglePrivacyDlpV2DataSourceType),
    -- | If the resource is BigQuery, the dataset ID.
    datasetId :: (Core.Maybe Core.Text),
    -- | If supported, the location where the dataset\'s data is stored. See https:\/\/cloud.google.com\/bigquery\/docs\/locations for supported locations.
    datasetLocation :: (Core.Maybe Core.Text),
    -- | The Google Cloud project ID that owns the resource.
    datasetProjectId :: (Core.Maybe Core.Text),
    -- | How the table is encrypted.
    encryptionStatus :: (Core.Maybe GooglePrivacyDlpV2TableDataProfile_EncryptionStatus),
    -- | Optional. The time when this table expires.
    expirationTime :: (Core.Maybe Core.DateTime),
    -- | The number of columns skipped in the table because of an error.
    failedColumnCount :: (Core.Maybe Core.Int64),
    -- | The Cloud Asset Inventory resource that was profiled in order to generate this TableDataProfile. https:\/\/cloud.google.com\/apis\/design\/resource/names#full/resource_name
    fullResource :: (Core.Maybe Core.Text),
    -- | The time when this table was last modified
    lastModifiedTime :: (Core.Maybe Core.DateTime),
    -- | The name of the profile.
    name :: (Core.Maybe Core.Text),
    -- | Other infoTypes found in this table\'s data.
    otherInfoTypes :: (Core.Maybe [GooglePrivacyDlpV2OtherInfoTypeSummary]),
    -- | The infoTypes predicted from this table\'s data.
    predictedInfoTypes :: (Core.Maybe [GooglePrivacyDlpV2InfoTypeSummary]),
    -- | The last time the profile was generated.
    profileLastGenerated :: (Core.Maybe Core.DateTime),
    -- | Success or error status from the most recent profile generation attempt. May be empty if the profile is still being generated.
    profileStatus :: (Core.Maybe GooglePrivacyDlpV2ProfileStatus),
    -- | The resource name of the project data profile for this table.
    projectDataProfile :: (Core.Maybe Core.Text),
    -- | Resources related to this profile.
    relatedResources :: (Core.Maybe [GooglePrivacyDlpV2RelatedResource]),
    -- | The labels applied to the resource at the time the profile was generated.
    resourceLabels :: (Core.Maybe GooglePrivacyDlpV2TableDataProfile_ResourceLabels),
    -- | How broadly a resource has been shared.
    resourceVisibility :: (Core.Maybe GooglePrivacyDlpV2TableDataProfile_ResourceVisibility),
    -- | Number of rows in the table when the profile was generated. This will not be populated for BigLake tables.
    rowCount :: (Core.Maybe Core.Int64),
    -- | The BigQuery table to which the sample findings are written.
    sampleFindingsTable :: (Core.Maybe GooglePrivacyDlpV2BigQueryTable),
    -- | The number of columns profiled in the table.
    scannedColumnCount :: (Core.Maybe Core.Int64),
    -- | The sensitivity score of this table.
    sensitivityScore :: (Core.Maybe GooglePrivacyDlpV2SensitivityScore),
    -- | State of a profile.
    state :: (Core.Maybe GooglePrivacyDlpV2TableDataProfile_State),
    -- | The table ID.
    tableId :: (Core.Maybe Core.Text),
    -- | The size of the table when the profile was generated.
    tableSizeBytes :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2TableDataProfile' with the minimum fields required to make a request.
newGooglePrivacyDlpV2TableDataProfile ::
  GooglePrivacyDlpV2TableDataProfile
newGooglePrivacyDlpV2TableDataProfile =
  GooglePrivacyDlpV2TableDataProfile
    { configSnapshot = Core.Nothing,
      createTime = Core.Nothing,
      dataRiskLevel = Core.Nothing,
      dataSourceType = Core.Nothing,
      datasetId = Core.Nothing,
      datasetLocation = Core.Nothing,
      datasetProjectId = Core.Nothing,
      encryptionStatus = Core.Nothing,
      expirationTime = Core.Nothing,
      failedColumnCount = Core.Nothing,
      fullResource = Core.Nothing,
      lastModifiedTime = Core.Nothing,
      name = Core.Nothing,
      otherInfoTypes = Core.Nothing,
      predictedInfoTypes = Core.Nothing,
      profileLastGenerated = Core.Nothing,
      profileStatus = Core.Nothing,
      projectDataProfile = Core.Nothing,
      relatedResources = Core.Nothing,
      resourceLabels = Core.Nothing,
      resourceVisibility = Core.Nothing,
      rowCount = Core.Nothing,
      sampleFindingsTable = Core.Nothing,
      scannedColumnCount = Core.Nothing,
      sensitivityScore = Core.Nothing,
      state = Core.Nothing,
      tableId = Core.Nothing,
      tableSizeBytes = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2TableDataProfile where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2TableDataProfile"
      ( \o ->
          GooglePrivacyDlpV2TableDataProfile
            Core.<$> (o Core..:? "configSnapshot")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "dataRiskLevel")
            Core.<*> (o Core..:? "dataSourceType")
            Core.<*> (o Core..:? "datasetId")
            Core.<*> (o Core..:? "datasetLocation")
            Core.<*> (o Core..:? "datasetProjectId")
            Core.<*> (o Core..:? "encryptionStatus")
            Core.<*> (o Core..:? "expirationTime")
            Core.<*> (o Core..:? "failedColumnCount" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "fullResource")
            Core.<*> (o Core..:? "lastModifiedTime")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "otherInfoTypes")
            Core.<*> (o Core..:? "predictedInfoTypes")
            Core.<*> (o Core..:? "profileLastGenerated")
            Core.<*> (o Core..:? "profileStatus")
            Core.<*> (o Core..:? "projectDataProfile")
            Core.<*> (o Core..:? "relatedResources")
            Core.<*> (o Core..:? "resourceLabels")
            Core.<*> (o Core..:? "resourceVisibility")
            Core.<*> (o Core..:? "rowCount" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "sampleFindingsTable")
            Core.<*> ( o
                         Core..:? "scannedColumnCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "sensitivityScore")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "tableId")
            Core.<*> (o Core..:? "tableSizeBytes" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON GooglePrivacyDlpV2TableDataProfile where
  toJSON GooglePrivacyDlpV2TableDataProfile {..} =
    Core.object
      ( Core.catMaybes
          [ ("configSnapshot" Core..=) Core.<$> configSnapshot,
            ("createTime" Core..=) Core.<$> createTime,
            ("dataRiskLevel" Core..=) Core.<$> dataRiskLevel,
            ("dataSourceType" Core..=) Core.<$> dataSourceType,
            ("datasetId" Core..=) Core.<$> datasetId,
            ("datasetLocation" Core..=) Core.<$> datasetLocation,
            ("datasetProjectId" Core..=) Core.<$> datasetProjectId,
            ("encryptionStatus" Core..=) Core.<$> encryptionStatus,
            ("expirationTime" Core..=) Core.<$> expirationTime,
            ("failedColumnCount" Core..=)
              Core.. Core.AsText
              Core.<$> failedColumnCount,
            ("fullResource" Core..=) Core.<$> fullResource,
            ("lastModifiedTime" Core..=) Core.<$> lastModifiedTime,
            ("name" Core..=) Core.<$> name,
            ("otherInfoTypes" Core..=) Core.<$> otherInfoTypes,
            ("predictedInfoTypes" Core..=) Core.<$> predictedInfoTypes,
            ("profileLastGenerated" Core..=) Core.<$> profileLastGenerated,
            ("profileStatus" Core..=) Core.<$> profileStatus,
            ("projectDataProfile" Core..=) Core.<$> projectDataProfile,
            ("relatedResources" Core..=) Core.<$> relatedResources,
            ("resourceLabels" Core..=) Core.<$> resourceLabels,
            ("resourceVisibility" Core..=) Core.<$> resourceVisibility,
            ("rowCount" Core..=) Core.. Core.AsText Core.<$> rowCount,
            ("sampleFindingsTable" Core..=) Core.<$> sampleFindingsTable,
            ("scannedColumnCount" Core..=)
              Core.. Core.AsText
              Core.<$> scannedColumnCount,
            ("sensitivityScore" Core..=) Core.<$> sensitivityScore,
            ("state" Core..=) Core.<$> state,
            ("tableId" Core..=) Core.<$> tableId,
            ("tableSizeBytes" Core..=)
              Core.. Core.AsText
              Core.<$> tableSizeBytes
          ]
      )

-- | The labels applied to the resource at the time the profile was generated.
--
-- /See:/ 'newGooglePrivacyDlpV2TableDataProfile_ResourceLabels' smart constructor.
newtype GooglePrivacyDlpV2TableDataProfile_ResourceLabels = GooglePrivacyDlpV2TableDataProfile_ResourceLabels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2TableDataProfile_ResourceLabels' with the minimum fields required to make a request.
newGooglePrivacyDlpV2TableDataProfile_ResourceLabels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  GooglePrivacyDlpV2TableDataProfile_ResourceLabels
newGooglePrivacyDlpV2TableDataProfile_ResourceLabels additional =
  GooglePrivacyDlpV2TableDataProfile_ResourceLabels
    { additional =
        additional
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2TableDataProfile_ResourceLabels
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2TableDataProfile_ResourceLabels"
      ( \o ->
          GooglePrivacyDlpV2TableDataProfile_ResourceLabels
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2TableDataProfile_ResourceLabels
  where
  toJSON GooglePrivacyDlpV2TableDataProfile_ResourceLabels {..} =
    Core.toJSON additional

-- | Location of a finding within a table.
--
-- /See:/ 'newGooglePrivacyDlpV2TableLocation' smart constructor.
newtype GooglePrivacyDlpV2TableLocation = GooglePrivacyDlpV2TableLocation
  { -- | The zero-based index of the row where the finding is located. Only populated for resources that have a natural ordering, not BigQuery. In BigQuery, to identify the row a finding came from, populate BigQueryOptions.identifying_fields with your primary key column names and when you store the findings the value of those columns will be stored inside of Finding.
    rowIndex :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2TableLocation' with the minimum fields required to make a request.
newGooglePrivacyDlpV2TableLocation ::
  GooglePrivacyDlpV2TableLocation
newGooglePrivacyDlpV2TableLocation =
  GooglePrivacyDlpV2TableLocation {rowIndex = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2TableLocation where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2TableLocation"
      ( \o ->
          GooglePrivacyDlpV2TableLocation
            Core.<$> (o Core..:? "rowIndex" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON GooglePrivacyDlpV2TableLocation where
  toJSON GooglePrivacyDlpV2TableLocation {..} =
    Core.object
      ( Core.catMaybes
          [("rowIndex" Core..=) Core.. Core.AsText Core.<$> rowIndex]
      )

-- | Instructions regarding the table content being inspected.
--
-- /See:/ 'newGooglePrivacyDlpV2TableOptions' smart constructor.
newtype GooglePrivacyDlpV2TableOptions = GooglePrivacyDlpV2TableOptions
  { -- | The columns that are the primary keys for table objects included in ContentItem. A copy of this cell\'s value will stored alongside alongside each finding so that the finding can be traced to the specific row it came from. No more than 3 may be provided.
    identifyingFields :: (Core.Maybe [GooglePrivacyDlpV2FieldId])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2TableOptions' with the minimum fields required to make a request.
newGooglePrivacyDlpV2TableOptions ::
  GooglePrivacyDlpV2TableOptions
newGooglePrivacyDlpV2TableOptions =
  GooglePrivacyDlpV2TableOptions {identifyingFields = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2TableOptions where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2TableOptions"
      ( \o ->
          GooglePrivacyDlpV2TableOptions
            Core.<$> (o Core..:? "identifyingFields")
      )

instance Core.ToJSON GooglePrivacyDlpV2TableOptions where
  toJSON GooglePrivacyDlpV2TableOptions {..} =
    Core.object
      ( Core.catMaybes
          [("identifyingFields" Core..=) Core.<$> identifyingFields]
      )

-- | Message defining the location of a BigQuery table with the projectId inferred from the parent project.
--
-- /See:/ 'newGooglePrivacyDlpV2TableReference' smart constructor.
data GooglePrivacyDlpV2TableReference = GooglePrivacyDlpV2TableReference
  { -- | Dataset ID of the table.
    datasetId :: (Core.Maybe Core.Text),
    -- | Name of the table.
    tableId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2TableReference' with the minimum fields required to make a request.
newGooglePrivacyDlpV2TableReference ::
  GooglePrivacyDlpV2TableReference
newGooglePrivacyDlpV2TableReference =
  GooglePrivacyDlpV2TableReference
    { datasetId = Core.Nothing,
      tableId = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2TableReference where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2TableReference"
      ( \o ->
          GooglePrivacyDlpV2TableReference
            Core.<$> (o Core..:? "datasetId")
            Core.<*> (o Core..:? "tableId")
      )

instance Core.ToJSON GooglePrivacyDlpV2TableReference where
  toJSON GooglePrivacyDlpV2TableReference {..} =
    Core.object
      ( Core.catMaybes
          [ ("datasetId" Core..=) Core.<$> datasetId,
            ("tableId" Core..=) Core.<$> tableId
          ]
      )

-- | The tag to attach to profiles matching the condition. At most one @TagCondition@ can be specified per sensitivity level.
--
-- /See:/ 'newGooglePrivacyDlpV2TagCondition' smart constructor.
data GooglePrivacyDlpV2TagCondition = GooglePrivacyDlpV2TagCondition
  { -- | Conditions attaching the tag to a resource on its profile having this sensitivity score.
    sensitivityScore :: (Core.Maybe GooglePrivacyDlpV2SensitivityScore),
    -- | The tag value to attach to resources.
    tag :: (Core.Maybe GooglePrivacyDlpV2TagValue)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2TagCondition' with the minimum fields required to make a request.
newGooglePrivacyDlpV2TagCondition ::
  GooglePrivacyDlpV2TagCondition
newGooglePrivacyDlpV2TagCondition =
  GooglePrivacyDlpV2TagCondition
    { sensitivityScore = Core.Nothing,
      tag = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2TagCondition where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2TagCondition"
      ( \o ->
          GooglePrivacyDlpV2TagCondition
            Core.<$> (o Core..:? "sensitivityScore")
            Core.<*> (o Core..:? "tag")
      )

instance Core.ToJSON GooglePrivacyDlpV2TagCondition where
  toJSON GooglePrivacyDlpV2TagCondition {..} =
    Core.object
      ( Core.catMaybes
          [ ("sensitivityScore" Core..=) Core.<$> sensitivityScore,
            ("tag" Core..=) Core.<$> tag
          ]
      )

-- | If set, attaches the [tags] (https:\/\/cloud.google.com\/resource-manager\/docs\/tags\/tags-overview) provided to profiled resources. Tags support <https://cloud.google.com/iam/docs/tags-access-control access control>. You can conditionally grant or deny access to a resource based on whether the resource has a specific tag.
--
-- /See:/ 'newGooglePrivacyDlpV2TagResources' smart constructor.
data GooglePrivacyDlpV2TagResources = GooglePrivacyDlpV2TagResources
  { -- | Whether applying a tag to a resource should lower the risk of the profile for that resource. For example, in conjunction with an <https://cloud.google.com/iam/docs/deny-overview IAM deny policy>, you can deny all principals a permission if a tag value is present, mitigating the risk of the resource. This also lowers the data risk of resources at the lower levels of the resource hierarchy. For example, reducing the data risk of a table data profile also reduces the data risk of the constituent column data profiles.
    lowerDataRiskToLow :: (Core.Maybe Core.Bool),
    -- | The profile generations for which the tag should be attached to resources. If you attach a tag to only new profiles, then if the sensitivity score of a profile subsequently changes, its tag doesn\'t change. By default, this field includes only new profiles. To include both new and updated profiles for tagging, this field should explicitly include both @PROFILE_GENERATION_NEW@ and @PROFILE_GENERATION_UPDATE@.
    profileGenerationsToTag ::
      ( Core.Maybe
          [GooglePrivacyDlpV2TagResources_ProfileGenerationsToTagItem]
      ),
    -- | The tags to associate with different conditions.
    tagConditions :: (Core.Maybe [GooglePrivacyDlpV2TagCondition])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2TagResources' with the minimum fields required to make a request.
newGooglePrivacyDlpV2TagResources ::
  GooglePrivacyDlpV2TagResources
newGooglePrivacyDlpV2TagResources =
  GooglePrivacyDlpV2TagResources
    { lowerDataRiskToLow = Core.Nothing,
      profileGenerationsToTag = Core.Nothing,
      tagConditions = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2TagResources where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2TagResources"
      ( \o ->
          GooglePrivacyDlpV2TagResources
            Core.<$> (o Core..:? "lowerDataRiskToLow")
            Core.<*> (o Core..:? "profileGenerationsToTag")
            Core.<*> (o Core..:? "tagConditions")
      )

instance Core.ToJSON GooglePrivacyDlpV2TagResources where
  toJSON GooglePrivacyDlpV2TagResources {..} =
    Core.object
      ( Core.catMaybes
          [ ("lowerDataRiskToLow" Core..=) Core.<$> lowerDataRiskToLow,
            ("profileGenerationsToTag" Core..=)
              Core.<$> profileGenerationsToTag,
            ("tagConditions" Core..=) Core.<$> tagConditions
          ]
      )

-- | A value of a tag.
--
-- /See:/ 'newGooglePrivacyDlpV2TagValue' smart constructor.
newtype GooglePrivacyDlpV2TagValue = GooglePrivacyDlpV2TagValue
  { -- | The namespaced name for the tag value to attach to resources. Must be in the format @{parent_id}\/{tag_key_short_name}\/{short_name}@, for example, \"123456\/environment\/prod\".
    namespacedValue :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2TagValue' with the minimum fields required to make a request.
newGooglePrivacyDlpV2TagValue ::
  GooglePrivacyDlpV2TagValue
newGooglePrivacyDlpV2TagValue =
  GooglePrivacyDlpV2TagValue {namespacedValue = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2TagValue where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2TagValue"
      ( \o ->
          GooglePrivacyDlpV2TagValue Core.<$> (o Core..:? "namespacedValue")
      )

instance Core.ToJSON GooglePrivacyDlpV2TagValue where
  toJSON GooglePrivacyDlpV2TagValue {..} =
    Core.object
      ( Core.catMaybes
          [("namespacedValue" Core..=) Core.<$> namespacedValue]
      )

-- | A column with a semantic tag attached.
--
-- /See:/ 'newGooglePrivacyDlpV2TaggedField' smart constructor.
data GooglePrivacyDlpV2TaggedField = GooglePrivacyDlpV2TaggedField
  { -- | A column can be tagged with a custom tag. In this case, the user must indicate an auxiliary table that contains statistical information on the possible values of this column (below).
    customTag :: (Core.Maybe Core.Text),
    -- | Required. Identifies the column.
    field :: (Core.Maybe GooglePrivacyDlpV2FieldId),
    -- | If no semantic tag is indicated, we infer the statistical model from the distribution of values in the input data
    inferred :: (Core.Maybe GoogleProtobufEmpty),
    -- | A column can be tagged with a InfoType to use the relevant public dataset as a statistical model of population, if available. We currently support US ZIP codes, region codes, ages and genders. To programmatically obtain the list of supported InfoTypes, use ListInfoTypes with the supported/by=RISK/ANALYSIS filter.
    infoType :: (Core.Maybe GooglePrivacyDlpV2InfoType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2TaggedField' with the minimum fields required to make a request.
newGooglePrivacyDlpV2TaggedField ::
  GooglePrivacyDlpV2TaggedField
newGooglePrivacyDlpV2TaggedField =
  GooglePrivacyDlpV2TaggedField
    { customTag = Core.Nothing,
      field = Core.Nothing,
      inferred = Core.Nothing,
      infoType = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2TaggedField where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2TaggedField"
      ( \o ->
          GooglePrivacyDlpV2TaggedField
            Core.<$> (o Core..:? "customTag")
            Core.<*> (o Core..:? "field")
            Core.<*> (o Core..:? "inferred")
            Core.<*> (o Core..:? "infoType")
      )

instance Core.ToJSON GooglePrivacyDlpV2TaggedField where
  toJSON GooglePrivacyDlpV2TaggedField {..} =
    Core.object
      ( Core.catMaybes
          [ ("customTag" Core..=) Core.<$> customTag,
            ("field" Core..=) Core.<$> field,
            ("inferred" Core..=) Core.<$> inferred,
            ("infoType" Core..=) Core.<$> infoType
          ]
      )

-- | Throw an error and fail the request when a transformation error occurs.
--
-- /See:/ 'newGooglePrivacyDlpV2ThrowError' smart constructor.
data GooglePrivacyDlpV2ThrowError = GooglePrivacyDlpV2ThrowError
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ThrowError' with the minimum fields required to make a request.
newGooglePrivacyDlpV2ThrowError ::
  GooglePrivacyDlpV2ThrowError
newGooglePrivacyDlpV2ThrowError = GooglePrivacyDlpV2ThrowError

instance Core.FromJSON GooglePrivacyDlpV2ThrowError where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ThrowError"
      (\o -> Core.pure GooglePrivacyDlpV2ThrowError)

instance Core.ToJSON GooglePrivacyDlpV2ThrowError where
  toJSON = Core.const Core.emptyObject

-- | For use with @Date@, @Timestamp@, and @TimeOfDay@, extract or preserve a portion of the value.
--
-- /See:/ 'newGooglePrivacyDlpV2TimePartConfig' smart constructor.
newtype GooglePrivacyDlpV2TimePartConfig = GooglePrivacyDlpV2TimePartConfig
  { -- | The part of the time to keep.
    partToExtract :: (Core.Maybe GooglePrivacyDlpV2TimePartConfig_PartToExtract)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2TimePartConfig' with the minimum fields required to make a request.
newGooglePrivacyDlpV2TimePartConfig ::
  GooglePrivacyDlpV2TimePartConfig
newGooglePrivacyDlpV2TimePartConfig =
  GooglePrivacyDlpV2TimePartConfig {partToExtract = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2TimePartConfig where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2TimePartConfig"
      ( \o ->
          GooglePrivacyDlpV2TimePartConfig
            Core.<$> (o Core..:? "partToExtract")
      )

instance Core.ToJSON GooglePrivacyDlpV2TimePartConfig where
  toJSON GooglePrivacyDlpV2TimePartConfig {..} =
    Core.object
      (Core.catMaybes [("partToExtract" Core..=) Core.<$> partToExtract])

-- | Time zone of the date time object.
--
-- /See:/ 'newGooglePrivacyDlpV2TimeZone' smart constructor.
newtype GooglePrivacyDlpV2TimeZone = GooglePrivacyDlpV2TimeZone
  { -- | Set only if the offset can be determined. Positive for time ahead of UTC. E.g. For \"UTC-9\", this value is -540.
    offsetMinutes :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2TimeZone' with the minimum fields required to make a request.
newGooglePrivacyDlpV2TimeZone ::
  GooglePrivacyDlpV2TimeZone
newGooglePrivacyDlpV2TimeZone =
  GooglePrivacyDlpV2TimeZone {offsetMinutes = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2TimeZone where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2TimeZone"
      ( \o ->
          GooglePrivacyDlpV2TimeZone Core.<$> (o Core..:? "offsetMinutes")
      )

instance Core.ToJSON GooglePrivacyDlpV2TimeZone where
  toJSON GooglePrivacyDlpV2TimeZone {..} =
    Core.object
      (Core.catMaybes [("offsetMinutes" Core..=) Core.<$> offsetMinutes])

-- | Configuration of the timespan of the items to include in scanning. Currently only supported when inspecting Cloud Storage and BigQuery.
--
-- /See:/ 'newGooglePrivacyDlpV2TimespanConfig' smart constructor.
data GooglePrivacyDlpV2TimespanConfig = GooglePrivacyDlpV2TimespanConfig
  { -- | When the job is started by a JobTrigger we will automatically figure out a valid start/time to avoid scanning files that have not been modified since the last time the JobTrigger executed. This will be based on the time of the execution of the last run of the JobTrigger or the timespan end/time used in the last run of the JobTrigger. __For BigQuery__ Inspect jobs triggered by automatic population will scan data that is at least three hours old when the job starts. This is because streaming buffer rows are not read during inspection and reading up to the current timestamp will result in skipped rows. See the <https://cloud.google.com/sensitive-data-protection/docs/known-issues#recently-streamed-data known issue> related to this operation.
    enableAutoPopulationOfTimespanConfig :: (Core.Maybe Core.Bool),
    -- | Exclude files, tables, or rows newer than this value. If not set, no upper time limit is applied.
    endTime :: (Core.Maybe Core.DateTime),
    -- | Exclude files, tables, or rows older than this value. If not set, no lower time limit is applied.
    startTime :: (Core.Maybe Core.DateTime),
    -- | Specification of the field containing the timestamp of scanned items. Used for data sources like Datastore and BigQuery. __For BigQuery__ If this value is not specified and the table was modified between the given start and end times, the entire table will be scanned. If this value is specified, then rows are filtered based on the given start and end times. Rows with a @NULL@ value in the provided BigQuery column are skipped. Valid data types of the provided BigQuery column are: @INTEGER@, @DATE@, @TIMESTAMP@, and @DATETIME@. If your BigQuery table is <https://cloud.google.com/bigquery/docs/partitioned-tables#ingestion_time partitioned at ingestion time>, you can use any of the following pseudo-columns as your timestamp field. When used with Cloud DLP, these pseudo-column names are case sensitive. - @_PARTITIONTIME@ - @_PARTITIONDATE@ - @_PARTITION_LOAD_TIME@ __For Datastore__ If this value is specified, then entities are filtered based on the given start and end times. If an entity does not contain the
    -- provided timestamp property or contains empty or invalid values, then it is included. Valid data types of the provided timestamp property are: @TIMESTAMP@. See the <https://cloud.google.com/sensitive-data-protection/docs/known-issues#bq-timespan known issue> related to this operation.
    timestampField :: (Core.Maybe GooglePrivacyDlpV2FieldId)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2TimespanConfig' with the minimum fields required to make a request.
newGooglePrivacyDlpV2TimespanConfig ::
  GooglePrivacyDlpV2TimespanConfig
newGooglePrivacyDlpV2TimespanConfig =
  GooglePrivacyDlpV2TimespanConfig
    { enableAutoPopulationOfTimespanConfig =
        Core.Nothing,
      endTime = Core.Nothing,
      startTime = Core.Nothing,
      timestampField = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2TimespanConfig where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2TimespanConfig"
      ( \o ->
          GooglePrivacyDlpV2TimespanConfig
            Core.<$> (o Core..:? "enableAutoPopulationOfTimespanConfig")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "timestampField")
      )

instance Core.ToJSON GooglePrivacyDlpV2TimespanConfig where
  toJSON GooglePrivacyDlpV2TimespanConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("enableAutoPopulationOfTimespanConfig" Core..=)
              Core.<$> enableAutoPopulationOfTimespanConfig,
            ("endTime" Core..=) Core.<$> endTime,
            ("startTime" Core..=) Core.<$> startTime,
            ("timestampField" Core..=) Core.<$> timestampField
          ]
      )

-- | User specified templates and configs for how to deidentify structured, unstructures, and image files. User must provide either a unstructured deidentify template or at least one redact image config.
--
-- /See:/ 'newGooglePrivacyDlpV2TransformationConfig' smart constructor.
data GooglePrivacyDlpV2TransformationConfig = GooglePrivacyDlpV2TransformationConfig
  { -- | De-identify template. If this template is specified, it will serve as the default de-identify template. This template cannot contain @record_transformations@ since it can be used for unstructured content such as free-form text files. If this template is not set, a default @ReplaceWithInfoTypeConfig@ will be used to de-identify unstructured content.
    deidentifyTemplate :: (Core.Maybe Core.Text),
    -- | Image redact template. If this template is specified, it will serve as the de-identify template for images. If this template is not set, all findings in the image will be redacted with a black box.
    imageRedactTemplate :: (Core.Maybe Core.Text),
    -- | Structured de-identify template. If this template is specified, it will serve as the de-identify template for structured content such as delimited files and tables. If this template is not set but the @deidentify_template@ is set, then @deidentify_template@ will also apply to the structured content. If neither template is set, a default @ReplaceWithInfoTypeConfig@ will be used to de-identify structured content.
    structuredDeidentifyTemplate :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2TransformationConfig' with the minimum fields required to make a request.
newGooglePrivacyDlpV2TransformationConfig ::
  GooglePrivacyDlpV2TransformationConfig
newGooglePrivacyDlpV2TransformationConfig =
  GooglePrivacyDlpV2TransformationConfig
    { deidentifyTemplate =
        Core.Nothing,
      imageRedactTemplate = Core.Nothing,
      structuredDeidentifyTemplate = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2TransformationConfig where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2TransformationConfig"
      ( \o ->
          GooglePrivacyDlpV2TransformationConfig
            Core.<$> (o Core..:? "deidentifyTemplate")
            Core.<*> (o Core..:? "imageRedactTemplate")
            Core.<*> (o Core..:? "structuredDeidentifyTemplate")
      )

instance Core.ToJSON GooglePrivacyDlpV2TransformationConfig where
  toJSON GooglePrivacyDlpV2TransformationConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("deidentifyTemplate" Core..=) Core.<$> deidentifyTemplate,
            ("imageRedactTemplate" Core..=) Core.<$> imageRedactTemplate,
            ("structuredDeidentifyTemplate" Core..=)
              Core.<$> structuredDeidentifyTemplate
          ]
      )

-- | A flattened description of a @PrimitiveTransformation@ or @RecordSuppression@.
--
-- /See:/ 'newGooglePrivacyDlpV2TransformationDescription' smart constructor.
data GooglePrivacyDlpV2TransformationDescription = GooglePrivacyDlpV2TransformationDescription
  { -- | A human-readable string representation of the @RecordCondition@ corresponding to this transformation. Set if a @RecordCondition@ was used to determine whether or not to apply this transformation. Examples: * (age/field > 85) * (age/field \<= 18) * (zip/field exists) * (zip/field == 01234) && (city/field != \"Springville\") * (zip/field == 01234) && (age/field \<= 18) && (city/field exists)
    condition :: (Core.Maybe Core.Text),
    -- | A description of the transformation. This is empty for a RECORD_SUPPRESSION, or is the output of calling toString() on the @PrimitiveTransformation@ protocol buffer message for any other type of transformation.
    description :: (Core.Maybe Core.Text),
    -- | Set if the transformation was limited to a specific @InfoType@.
    infoType :: (Core.Maybe GooglePrivacyDlpV2InfoType),
    -- | The transformation type.
    type' :: (Core.Maybe GooglePrivacyDlpV2TransformationDescription_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2TransformationDescription' with the minimum fields required to make a request.
newGooglePrivacyDlpV2TransformationDescription ::
  GooglePrivacyDlpV2TransformationDescription
newGooglePrivacyDlpV2TransformationDescription =
  GooglePrivacyDlpV2TransformationDescription
    { condition =
        Core.Nothing,
      description = Core.Nothing,
      infoType = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2TransformationDescription where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2TransformationDescription"
      ( \o ->
          GooglePrivacyDlpV2TransformationDescription
            Core.<$> (o Core..:? "condition")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "infoType")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON GooglePrivacyDlpV2TransformationDescription where
  toJSON GooglePrivacyDlpV2TransformationDescription {..} =
    Core.object
      ( Core.catMaybes
          [ ("condition" Core..=) Core.<$> condition,
            ("description" Core..=) Core.<$> description,
            ("infoType" Core..=) Core.<$> infoType,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Details about a single transformation. This object contains a description of the transformation, information about whether the transformation was successfully applied, and the precise location where the transformation occurred. These details are stored in a user-specified BigQuery table.
--
-- /See:/ 'newGooglePrivacyDlpV2TransformationDetails' smart constructor.
data GooglePrivacyDlpV2TransformationDetails = GooglePrivacyDlpV2TransformationDetails
  { -- | The top level name of the container where the transformation is located (this will be the source file name or table name).
    containerName :: (Core.Maybe Core.Text),
    -- | The name of the job that completed the transformation.
    resourceName :: (Core.Maybe Core.Text),
    -- | Status of the transformation, if transformation was not successful, this will specify what caused it to fail, otherwise it will show that the transformation was successful.
    statusDetails :: (Core.Maybe GooglePrivacyDlpV2TransformationResultStatus),
    -- | Description of transformation. This would only contain more than one element if there were multiple matching transformations and which one to apply was ambiguous. Not set for states that contain no transformation, currently only state that contains no transformation is TransformationResultStateType.METADATA_UNRETRIEVABLE.
    transformation :: (Core.Maybe [GooglePrivacyDlpV2TransformationDescription]),
    -- | The precise location of the transformed content in the original container.
    transformationLocation :: (Core.Maybe GooglePrivacyDlpV2TransformationLocation),
    -- | The number of bytes that were transformed. If transformation was unsuccessful or did not take place because there was no content to transform, this will be zero.
    transformedBytes :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2TransformationDetails' with the minimum fields required to make a request.
newGooglePrivacyDlpV2TransformationDetails ::
  GooglePrivacyDlpV2TransformationDetails
newGooglePrivacyDlpV2TransformationDetails =
  GooglePrivacyDlpV2TransformationDetails
    { containerName =
        Core.Nothing,
      resourceName = Core.Nothing,
      statusDetails = Core.Nothing,
      transformation = Core.Nothing,
      transformationLocation = Core.Nothing,
      transformedBytes = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2TransformationDetails where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2TransformationDetails"
      ( \o ->
          GooglePrivacyDlpV2TransformationDetails
            Core.<$> (o Core..:? "containerName")
            Core.<*> (o Core..:? "resourceName")
            Core.<*> (o Core..:? "statusDetails")
            Core.<*> (o Core..:? "transformation")
            Core.<*> (o Core..:? "transformationLocation")
            Core.<*> (o Core..:? "transformedBytes" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON GooglePrivacyDlpV2TransformationDetails where
  toJSON GooglePrivacyDlpV2TransformationDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("containerName" Core..=) Core.<$> containerName,
            ("resourceName" Core..=) Core.<$> resourceName,
            ("statusDetails" Core..=) Core.<$> statusDetails,
            ("transformation" Core..=) Core.<$> transformation,
            ("transformationLocation" Core..=) Core.<$> transformationLocation,
            ("transformedBytes" Core..=)
              Core.. Core.AsText
              Core.<$> transformedBytes
          ]
      )

-- | Config for storing transformation details.
--
-- /See:/ 'newGooglePrivacyDlpV2TransformationDetailsStorageConfig' smart constructor.
newtype GooglePrivacyDlpV2TransformationDetailsStorageConfig = GooglePrivacyDlpV2TransformationDetailsStorageConfig
  { -- | The BigQuery table in which to store the output. This may be an existing table or in a new table in an existing dataset. If table/id is not set a new one will be generated for you with the following format: dlp/googleapis/transformation/details/yyyy/mm/dd/[dlp/job/id]. Pacific time zone will be used for generating the date details.
    table :: (Core.Maybe GooglePrivacyDlpV2BigQueryTable)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2TransformationDetailsStorageConfig' with the minimum fields required to make a request.
newGooglePrivacyDlpV2TransformationDetailsStorageConfig ::
  GooglePrivacyDlpV2TransformationDetailsStorageConfig
newGooglePrivacyDlpV2TransformationDetailsStorageConfig =
  GooglePrivacyDlpV2TransformationDetailsStorageConfig
    { table =
        Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2TransformationDetailsStorageConfig
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2TransformationDetailsStorageConfig"
      ( \o ->
          GooglePrivacyDlpV2TransformationDetailsStorageConfig
            Core.<$> (o Core..:? "table")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2TransformationDetailsStorageConfig
  where
  toJSON GooglePrivacyDlpV2TransformationDetailsStorageConfig {..} =
    Core.object (Core.catMaybes [("table" Core..=) Core.<$> table])

-- | How to handle transformation errors during de-identification. A transformation error occurs when the requested transformation is incompatible with the data. For example, trying to de-identify an IP address using a @DateShift@ transformation would result in a transformation error, since date info cannot be extracted from an IP address. Information about any incompatible transformations, and how they were handled, is returned in the response as part of the @TransformationOverviews@.
--
-- /See:/ 'newGooglePrivacyDlpV2TransformationErrorHandling' smart constructor.
data GooglePrivacyDlpV2TransformationErrorHandling = GooglePrivacyDlpV2TransformationErrorHandling
  { -- | Ignore errors
    leaveUntransformed :: (Core.Maybe GooglePrivacyDlpV2LeaveUntransformed),
    -- | Throw an error
    throwError :: (Core.Maybe GooglePrivacyDlpV2ThrowError)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2TransformationErrorHandling' with the minimum fields required to make a request.
newGooglePrivacyDlpV2TransformationErrorHandling ::
  GooglePrivacyDlpV2TransformationErrorHandling
newGooglePrivacyDlpV2TransformationErrorHandling =
  GooglePrivacyDlpV2TransformationErrorHandling
    { leaveUntransformed =
        Core.Nothing,
      throwError = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2TransformationErrorHandling
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2TransformationErrorHandling"
      ( \o ->
          GooglePrivacyDlpV2TransformationErrorHandling
            Core.<$> (o Core..:? "leaveUntransformed")
            Core.<*> (o Core..:? "throwError")
      )

instance Core.ToJSON GooglePrivacyDlpV2TransformationErrorHandling where
  toJSON GooglePrivacyDlpV2TransformationErrorHandling {..} =
    Core.object
      ( Core.catMaybes
          [ ("leaveUntransformed" Core..=) Core.<$> leaveUntransformed,
            ("throwError" Core..=) Core.<$> throwError
          ]
      )

-- | Specifies the location of a transformation.
--
-- /See:/ 'newGooglePrivacyDlpV2TransformationLocation' smart constructor.
data GooglePrivacyDlpV2TransformationLocation = GooglePrivacyDlpV2TransformationLocation
  { -- | Information about the functionality of the container where this finding occurred, if available.
    containerType :: (Core.Maybe GooglePrivacyDlpV2TransformationLocation_ContainerType),
    -- | For infotype transformations, link to the corresponding findings ID so that location information does not need to be duplicated. Each findings ID correlates to an entry in the findings output table, this table only gets created when users specify to save findings (add the save findings action to the request).
    findingId :: (Core.Maybe Core.Text),
    -- | For record transformations, provide a field and container information.
    recordTransformation :: (Core.Maybe GooglePrivacyDlpV2RecordTransformation)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2TransformationLocation' with the minimum fields required to make a request.
newGooglePrivacyDlpV2TransformationLocation ::
  GooglePrivacyDlpV2TransformationLocation
newGooglePrivacyDlpV2TransformationLocation =
  GooglePrivacyDlpV2TransformationLocation
    { containerType =
        Core.Nothing,
      findingId = Core.Nothing,
      recordTransformation = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2TransformationLocation where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2TransformationLocation"
      ( \o ->
          GooglePrivacyDlpV2TransformationLocation
            Core.<$> (o Core..:? "containerType")
            Core.<*> (o Core..:? "findingId")
            Core.<*> (o Core..:? "recordTransformation")
      )

instance Core.ToJSON GooglePrivacyDlpV2TransformationLocation where
  toJSON GooglePrivacyDlpV2TransformationLocation {..} =
    Core.object
      ( Core.catMaybes
          [ ("containerType" Core..=) Core.<$> containerType,
            ("findingId" Core..=) Core.<$> findingId,
            ("recordTransformation" Core..=) Core.<$> recordTransformation
          ]
      )

-- | Overview of the modifications that occurred.
--
-- /See:/ 'newGooglePrivacyDlpV2TransformationOverview' smart constructor.
data GooglePrivacyDlpV2TransformationOverview = GooglePrivacyDlpV2TransformationOverview
  { -- | Transformations applied to the dataset.
    transformationSummaries :: (Core.Maybe [GooglePrivacyDlpV2TransformationSummary]),
    -- | Total size in bytes that were transformed in some way.
    transformedBytes :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2TransformationOverview' with the minimum fields required to make a request.
newGooglePrivacyDlpV2TransformationOverview ::
  GooglePrivacyDlpV2TransformationOverview
newGooglePrivacyDlpV2TransformationOverview =
  GooglePrivacyDlpV2TransformationOverview
    { transformationSummaries =
        Core.Nothing,
      transformedBytes = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2TransformationOverview where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2TransformationOverview"
      ( \o ->
          GooglePrivacyDlpV2TransformationOverview
            Core.<$> (o Core..:? "transformationSummaries")
            Core.<*> (o Core..:? "transformedBytes" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON GooglePrivacyDlpV2TransformationOverview where
  toJSON GooglePrivacyDlpV2TransformationOverview {..} =
    Core.object
      ( Core.catMaybes
          [ ("transformationSummaries" Core..=)
              Core.<$> transformationSummaries,
            ("transformedBytes" Core..=)
              Core.. Core.AsText
              Core.<$> transformedBytes
          ]
      )

-- | The outcome of a transformation.
--
-- /See:/ 'newGooglePrivacyDlpV2TransformationResultStatus' smart constructor.
data GooglePrivacyDlpV2TransformationResultStatus = GooglePrivacyDlpV2TransformationResultStatus
  { -- | Detailed error codes and messages
    details :: (Core.Maybe GoogleRpcStatus),
    -- | Transformation result status type, this will be either SUCCESS, or it will be the reason for why the transformation was not completely successful.
    resultStatusType ::
      ( Core.Maybe
          GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2TransformationResultStatus' with the minimum fields required to make a request.
newGooglePrivacyDlpV2TransformationResultStatus ::
  GooglePrivacyDlpV2TransformationResultStatus
newGooglePrivacyDlpV2TransformationResultStatus =
  GooglePrivacyDlpV2TransformationResultStatus
    { details =
        Core.Nothing,
      resultStatusType = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2TransformationResultStatus where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2TransformationResultStatus"
      ( \o ->
          GooglePrivacyDlpV2TransformationResultStatus
            Core.<$> (o Core..:? "details")
            Core.<*> (o Core..:? "resultStatusType")
      )

instance Core.ToJSON GooglePrivacyDlpV2TransformationResultStatus where
  toJSON GooglePrivacyDlpV2TransformationResultStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("details" Core..=) Core.<$> details,
            ("resultStatusType" Core..=) Core.<$> resultStatusType
          ]
      )

-- | Summary of a single transformation. Only one of \'transformation\', \'field/transformation\', or \'record/suppress\' will be set.
--
-- /See:/ 'newGooglePrivacyDlpV2TransformationSummary' smart constructor.
data GooglePrivacyDlpV2TransformationSummary = GooglePrivacyDlpV2TransformationSummary
  { -- | Set if the transformation was limited to a specific FieldId.
    field :: (Core.Maybe GooglePrivacyDlpV2FieldId),
    -- | The field transformation that was applied. If multiple field transformations are requested for a single field, this list will contain all of them; otherwise, only one is supplied.
    fieldTransformations :: (Core.Maybe [GooglePrivacyDlpV2FieldTransformation]),
    -- | Set if the transformation was limited to a specific InfoType.
    infoType :: (Core.Maybe GooglePrivacyDlpV2InfoType),
    -- | The specific suppression option these stats apply to.
    recordSuppress :: (Core.Maybe GooglePrivacyDlpV2RecordSuppression),
    -- | Collection of all transformations that took place or had an error.
    results :: (Core.Maybe [GooglePrivacyDlpV2SummaryResult]),
    -- | The specific transformation these stats apply to.
    transformation :: (Core.Maybe GooglePrivacyDlpV2PrimitiveTransformation),
    -- | Total size in bytes that were transformed in some way.
    transformedBytes :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2TransformationSummary' with the minimum fields required to make a request.
newGooglePrivacyDlpV2TransformationSummary ::
  GooglePrivacyDlpV2TransformationSummary
newGooglePrivacyDlpV2TransformationSummary =
  GooglePrivacyDlpV2TransformationSummary
    { field = Core.Nothing,
      fieldTransformations = Core.Nothing,
      infoType = Core.Nothing,
      recordSuppress = Core.Nothing,
      results = Core.Nothing,
      transformation = Core.Nothing,
      transformedBytes = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2TransformationSummary where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2TransformationSummary"
      ( \o ->
          GooglePrivacyDlpV2TransformationSummary
            Core.<$> (o Core..:? "field")
            Core.<*> (o Core..:? "fieldTransformations")
            Core.<*> (o Core..:? "infoType")
            Core.<*> (o Core..:? "recordSuppress")
            Core.<*> (o Core..:? "results")
            Core.<*> (o Core..:? "transformation")
            Core.<*> (o Core..:? "transformedBytes" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON GooglePrivacyDlpV2TransformationSummary where
  toJSON GooglePrivacyDlpV2TransformationSummary {..} =
    Core.object
      ( Core.catMaybes
          [ ("field" Core..=) Core.<$> field,
            ("fieldTransformations" Core..=) Core.<$> fieldTransformations,
            ("infoType" Core..=) Core.<$> infoType,
            ("recordSuppress" Core..=) Core.<$> recordSuppress,
            ("results" Core..=) Core.<$> results,
            ("transformation" Core..=) Core.<$> transformation,
            ("transformedBytes" Core..=)
              Core.. Core.AsText
              Core.<$> transformedBytes
          ]
      )

-- | Use this to have a random data crypto key generated. It will be discarded after the request finishes.
--
-- /See:/ 'newGooglePrivacyDlpV2TransientCryptoKey' smart constructor.
newtype GooglePrivacyDlpV2TransientCryptoKey = GooglePrivacyDlpV2TransientCryptoKey
  { -- | Required. Name of the key. This is an arbitrary string used to differentiate different keys. A unique key is generated per name: two separate @TransientCryptoKey@ protos share the same generated key if their names are the same. When the data crypto key is generated, this name is not used in any way (repeating the api call will result in a different key being generated).
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2TransientCryptoKey' with the minimum fields required to make a request.
newGooglePrivacyDlpV2TransientCryptoKey ::
  GooglePrivacyDlpV2TransientCryptoKey
newGooglePrivacyDlpV2TransientCryptoKey =
  GooglePrivacyDlpV2TransientCryptoKey {name = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2TransientCryptoKey where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2TransientCryptoKey"
      ( \o ->
          GooglePrivacyDlpV2TransientCryptoKey Core.<$> (o Core..:? "name")
      )

instance Core.ToJSON GooglePrivacyDlpV2TransientCryptoKey where
  toJSON GooglePrivacyDlpV2TransientCryptoKey {..} =
    Core.object (Core.catMaybes [("name" Core..=) Core.<$> name])

-- | What event needs to occur for a new job to be started.
--
-- /See:/ 'newGooglePrivacyDlpV2Trigger' smart constructor.
data GooglePrivacyDlpV2Trigger = GooglePrivacyDlpV2Trigger
  { -- | For use with hybrid jobs. Jobs must be manually created and finished.
    manual :: (Core.Maybe GooglePrivacyDlpV2Manual),
    -- | Create a job on a repeating basis based on the elapse of time.
    schedule :: (Core.Maybe GooglePrivacyDlpV2Schedule)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Trigger' with the minimum fields required to make a request.
newGooglePrivacyDlpV2Trigger ::
  GooglePrivacyDlpV2Trigger
newGooglePrivacyDlpV2Trigger =
  GooglePrivacyDlpV2Trigger
    { manual = Core.Nothing,
      schedule = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2Trigger where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2Trigger"
      ( \o ->
          GooglePrivacyDlpV2Trigger
            Core.<$> (o Core..:? "manual")
            Core.<*> (o Core..:? "schedule")
      )

instance Core.ToJSON GooglePrivacyDlpV2Trigger where
  toJSON GooglePrivacyDlpV2Trigger {..} =
    Core.object
      ( Core.catMaybes
          [ ("manual" Core..=) Core.<$> manual,
            ("schedule" Core..=) Core.<$> schedule
          ]
      )

-- | Using raw keys is prone to security risks due to accidentally leaking the key. Choose another type of key if possible.
--
-- /See:/ 'newGooglePrivacyDlpV2UnwrappedCryptoKey' smart constructor.
newtype GooglePrivacyDlpV2UnwrappedCryptoKey = GooglePrivacyDlpV2UnwrappedCryptoKey
  { -- | Required. A 128\/192\/256 bit key.
    key :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2UnwrappedCryptoKey' with the minimum fields required to make a request.
newGooglePrivacyDlpV2UnwrappedCryptoKey ::
  GooglePrivacyDlpV2UnwrappedCryptoKey
newGooglePrivacyDlpV2UnwrappedCryptoKey =
  GooglePrivacyDlpV2UnwrappedCryptoKey {key = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2UnwrappedCryptoKey where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2UnwrappedCryptoKey"
      ( \o ->
          GooglePrivacyDlpV2UnwrappedCryptoKey Core.<$> (o Core..:? "key")
      )

instance Core.ToJSON GooglePrivacyDlpV2UnwrappedCryptoKey where
  toJSON GooglePrivacyDlpV2UnwrappedCryptoKey {..} =
    Core.object (Core.catMaybes [("key" Core..=) Core.<$> key])

-- | Request message for UpdateConnection.
--
-- /See:/ 'newGooglePrivacyDlpV2UpdateConnectionRequest' smart constructor.
data GooglePrivacyDlpV2UpdateConnectionRequest = GooglePrivacyDlpV2UpdateConnectionRequest
  { -- | Required. The connection with new values for the relevant fields.
    connection :: (Core.Maybe GooglePrivacyDlpV2Connection),
    -- | Optional. Mask to control which fields get updated.
    updateMask :: (Core.Maybe Core.FieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2UpdateConnectionRequest' with the minimum fields required to make a request.
newGooglePrivacyDlpV2UpdateConnectionRequest ::
  GooglePrivacyDlpV2UpdateConnectionRequest
newGooglePrivacyDlpV2UpdateConnectionRequest =
  GooglePrivacyDlpV2UpdateConnectionRequest
    { connection =
        Core.Nothing,
      updateMask = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2UpdateConnectionRequest where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2UpdateConnectionRequest"
      ( \o ->
          GooglePrivacyDlpV2UpdateConnectionRequest
            Core.<$> (o Core..:? "connection")
            Core.<*> (o Core..:? "updateMask")
      )

instance Core.ToJSON GooglePrivacyDlpV2UpdateConnectionRequest where
  toJSON GooglePrivacyDlpV2UpdateConnectionRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("connection" Core..=) Core.<$> connection,
            ("updateMask" Core..=) Core.<$> updateMask
          ]
      )

-- | Request message for UpdateDeidentifyTemplate.
--
-- /See:/ 'newGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest' smart constructor.
data GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest = GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest
  { -- | New DeidentifyTemplate value.
    deidentifyTemplate :: (Core.Maybe GooglePrivacyDlpV2DeidentifyTemplate),
    -- | Mask to control which fields get updated.
    updateMask :: (Core.Maybe Core.FieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest' with the minimum fields required to make a request.
newGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest ::
  GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest
newGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest =
  GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest
    { deidentifyTemplate =
        Core.Nothing,
      updateMask = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest"
      ( \o ->
          GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest
            Core.<$> (o Core..:? "deidentifyTemplate")
            Core.<*> (o Core..:? "updateMask")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest
  where
  toJSON GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("deidentifyTemplate" Core..=) Core.<$> deidentifyTemplate,
            ("updateMask" Core..=) Core.<$> updateMask
          ]
      )

-- | Request message for UpdateDiscoveryConfig.
--
-- /See:/ 'newGooglePrivacyDlpV2UpdateDiscoveryConfigRequest' smart constructor.
data GooglePrivacyDlpV2UpdateDiscoveryConfigRequest = GooglePrivacyDlpV2UpdateDiscoveryConfigRequest
  { -- | Required. New DiscoveryConfig value.
    discoveryConfig :: (Core.Maybe GooglePrivacyDlpV2DiscoveryConfig),
    -- | Mask to control which fields get updated.
    updateMask :: (Core.Maybe Core.FieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2UpdateDiscoveryConfigRequest' with the minimum fields required to make a request.
newGooglePrivacyDlpV2UpdateDiscoveryConfigRequest ::
  GooglePrivacyDlpV2UpdateDiscoveryConfigRequest
newGooglePrivacyDlpV2UpdateDiscoveryConfigRequest =
  GooglePrivacyDlpV2UpdateDiscoveryConfigRequest
    { discoveryConfig =
        Core.Nothing,
      updateMask = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2UpdateDiscoveryConfigRequest
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2UpdateDiscoveryConfigRequest"
      ( \o ->
          GooglePrivacyDlpV2UpdateDiscoveryConfigRequest
            Core.<$> (o Core..:? "discoveryConfig")
            Core.<*> (o Core..:? "updateMask")
      )

instance Core.ToJSON GooglePrivacyDlpV2UpdateDiscoveryConfigRequest where
  toJSON GooglePrivacyDlpV2UpdateDiscoveryConfigRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("discoveryConfig" Core..=) Core.<$> discoveryConfig,
            ("updateMask" Core..=) Core.<$> updateMask
          ]
      )

-- | Request message for UpdateInspectTemplate.
--
-- /See:/ 'newGooglePrivacyDlpV2UpdateInspectTemplateRequest' smart constructor.
data GooglePrivacyDlpV2UpdateInspectTemplateRequest = GooglePrivacyDlpV2UpdateInspectTemplateRequest
  { -- | New InspectTemplate value.
    inspectTemplate :: (Core.Maybe GooglePrivacyDlpV2InspectTemplate),
    -- | Mask to control which fields get updated.
    updateMask :: (Core.Maybe Core.FieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2UpdateInspectTemplateRequest' with the minimum fields required to make a request.
newGooglePrivacyDlpV2UpdateInspectTemplateRequest ::
  GooglePrivacyDlpV2UpdateInspectTemplateRequest
newGooglePrivacyDlpV2UpdateInspectTemplateRequest =
  GooglePrivacyDlpV2UpdateInspectTemplateRequest
    { inspectTemplate =
        Core.Nothing,
      updateMask = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2UpdateInspectTemplateRequest
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2UpdateInspectTemplateRequest"
      ( \o ->
          GooglePrivacyDlpV2UpdateInspectTemplateRequest
            Core.<$> (o Core..:? "inspectTemplate")
            Core.<*> (o Core..:? "updateMask")
      )

instance Core.ToJSON GooglePrivacyDlpV2UpdateInspectTemplateRequest where
  toJSON GooglePrivacyDlpV2UpdateInspectTemplateRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("inspectTemplate" Core..=) Core.<$> inspectTemplate,
            ("updateMask" Core..=) Core.<$> updateMask
          ]
      )

-- | Request message for UpdateJobTrigger.
--
-- /See:/ 'newGooglePrivacyDlpV2UpdateJobTriggerRequest' smart constructor.
data GooglePrivacyDlpV2UpdateJobTriggerRequest = GooglePrivacyDlpV2UpdateJobTriggerRequest
  { -- | New JobTrigger value.
    jobTrigger :: (Core.Maybe GooglePrivacyDlpV2JobTrigger),
    -- | Mask to control which fields get updated.
    updateMask :: (Core.Maybe Core.FieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2UpdateJobTriggerRequest' with the minimum fields required to make a request.
newGooglePrivacyDlpV2UpdateJobTriggerRequest ::
  GooglePrivacyDlpV2UpdateJobTriggerRequest
newGooglePrivacyDlpV2UpdateJobTriggerRequest =
  GooglePrivacyDlpV2UpdateJobTriggerRequest
    { jobTrigger =
        Core.Nothing,
      updateMask = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2UpdateJobTriggerRequest where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2UpdateJobTriggerRequest"
      ( \o ->
          GooglePrivacyDlpV2UpdateJobTriggerRequest
            Core.<$> (o Core..:? "jobTrigger")
            Core.<*> (o Core..:? "updateMask")
      )

instance Core.ToJSON GooglePrivacyDlpV2UpdateJobTriggerRequest where
  toJSON GooglePrivacyDlpV2UpdateJobTriggerRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("jobTrigger" Core..=) Core.<$> jobTrigger,
            ("updateMask" Core..=) Core.<$> updateMask
          ]
      )

-- | Request message for UpdateStoredInfoType.
--
-- /See:/ 'newGooglePrivacyDlpV2UpdateStoredInfoTypeRequest' smart constructor.
data GooglePrivacyDlpV2UpdateStoredInfoTypeRequest = GooglePrivacyDlpV2UpdateStoredInfoTypeRequest
  { -- | Updated configuration for the storedInfoType. If not provided, a new version of the storedInfoType will be created with the existing configuration.
    config :: (Core.Maybe GooglePrivacyDlpV2StoredInfoTypeConfig),
    -- | Mask to control which fields get updated.
    updateMask :: (Core.Maybe Core.FieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2UpdateStoredInfoTypeRequest' with the minimum fields required to make a request.
newGooglePrivacyDlpV2UpdateStoredInfoTypeRequest ::
  GooglePrivacyDlpV2UpdateStoredInfoTypeRequest
newGooglePrivacyDlpV2UpdateStoredInfoTypeRequest =
  GooglePrivacyDlpV2UpdateStoredInfoTypeRequest
    { config =
        Core.Nothing,
      updateMask = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2UpdateStoredInfoTypeRequest
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2UpdateStoredInfoTypeRequest"
      ( \o ->
          GooglePrivacyDlpV2UpdateStoredInfoTypeRequest
            Core.<$> (o Core..:? "config")
            Core.<*> (o Core..:? "updateMask")
      )

instance Core.ToJSON GooglePrivacyDlpV2UpdateStoredInfoTypeRequest where
  toJSON GooglePrivacyDlpV2UpdateStoredInfoTypeRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("config" Core..=) Core.<$> config,
            ("updateMask" Core..=) Core.<$> updateMask
          ]
      )

-- | Set of primitive values supported by the system. Note that for the purposes of inspection or transformation, the number of bytes considered to comprise a \'Value\' is based on its representation as a UTF-8 encoded string. For example, if \'integer_value\' is set to 123456789, the number of bytes would be counted as 9, even though an int64 only holds up to 8 bytes of data.
--
-- /See:/ 'newGooglePrivacyDlpV2Value' smart constructor.
data GooglePrivacyDlpV2Value = GooglePrivacyDlpV2Value
  { -- | boolean
    booleanValue :: (Core.Maybe Core.Bool),
    -- | date
    dateValue :: (Core.Maybe GoogleTypeDate),
    -- | day of week
    dayOfWeekValue :: (Core.Maybe GooglePrivacyDlpV2Value_DayOfWeekValue),
    -- | float
    floatValue :: (Core.Maybe Core.Double),
    -- | integer
    integerValue :: (Core.Maybe Core.Int64),
    -- | string
    stringValue :: (Core.Maybe Core.Text),
    -- | time of day
    timeValue :: (Core.Maybe GoogleTypeTimeOfDay),
    -- | timestamp
    timestampValue :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Value' with the minimum fields required to make a request.
newGooglePrivacyDlpV2Value ::
  GooglePrivacyDlpV2Value
newGooglePrivacyDlpV2Value =
  GooglePrivacyDlpV2Value
    { booleanValue = Core.Nothing,
      dateValue = Core.Nothing,
      dayOfWeekValue = Core.Nothing,
      floatValue = Core.Nothing,
      integerValue = Core.Nothing,
      stringValue = Core.Nothing,
      timeValue = Core.Nothing,
      timestampValue = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2Value where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2Value"
      ( \o ->
          GooglePrivacyDlpV2Value
            Core.<$> (o Core..:? "booleanValue")
            Core.<*> (o Core..:? "dateValue")
            Core.<*> (o Core..:? "dayOfWeekValue")
            Core.<*> (o Core..:? "floatValue")
            Core.<*> (o Core..:? "integerValue" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "stringValue")
            Core.<*> (o Core..:? "timeValue")
            Core.<*> (o Core..:? "timestampValue")
      )

instance Core.ToJSON GooglePrivacyDlpV2Value where
  toJSON GooglePrivacyDlpV2Value {..} =
    Core.object
      ( Core.catMaybes
          [ ("booleanValue" Core..=) Core.<$> booleanValue,
            ("dateValue" Core..=) Core.<$> dateValue,
            ("dayOfWeekValue" Core..=) Core.<$> dayOfWeekValue,
            ("floatValue" Core..=) Core.<$> floatValue,
            ("integerValue" Core..=) Core.. Core.AsText Core.<$> integerValue,
            ("stringValue" Core..=) Core.<$> stringValue,
            ("timeValue" Core..=) Core.<$> timeValue,
            ("timestampValue" Core..=) Core.<$> timestampValue
          ]
      )

-- | A value of a field, including its frequency.
--
-- /See:/ 'newGooglePrivacyDlpV2ValueFrequency' smart constructor.
data GooglePrivacyDlpV2ValueFrequency = GooglePrivacyDlpV2ValueFrequency
  { -- | How many times the value is contained in the field.
    count :: (Core.Maybe Core.Int64),
    -- | A value contained in the field in question.
    value :: (Core.Maybe GooglePrivacyDlpV2Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ValueFrequency' with the minimum fields required to make a request.
newGooglePrivacyDlpV2ValueFrequency ::
  GooglePrivacyDlpV2ValueFrequency
newGooglePrivacyDlpV2ValueFrequency =
  GooglePrivacyDlpV2ValueFrequency
    { count = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2ValueFrequency where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ValueFrequency"
      ( \o ->
          GooglePrivacyDlpV2ValueFrequency
            Core.<$> (o Core..:? "count" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON GooglePrivacyDlpV2ValueFrequency where
  toJSON GooglePrivacyDlpV2ValueFrequency {..} =
    Core.object
      ( Core.catMaybes
          [ ("count" Core..=) Core.. Core.AsText Core.<$> count,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | Details about each available version for an infotype.
--
-- /See:/ 'newGooglePrivacyDlpV2VersionDescription' smart constructor.
data GooglePrivacyDlpV2VersionDescription = GooglePrivacyDlpV2VersionDescription
  { -- | Description of the version.
    description :: (Core.Maybe Core.Text),
    -- | Name of the version
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2VersionDescription' with the minimum fields required to make a request.
newGooglePrivacyDlpV2VersionDescription ::
  GooglePrivacyDlpV2VersionDescription
newGooglePrivacyDlpV2VersionDescription =
  GooglePrivacyDlpV2VersionDescription
    { description = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2VersionDescription where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2VersionDescription"
      ( \o ->
          GooglePrivacyDlpV2VersionDescription
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON GooglePrivacyDlpV2VersionDescription where
  toJSON GooglePrivacyDlpV2VersionDescription {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | Match dataset resources using regex filters.
--
-- /See:/ 'newGooglePrivacyDlpV2VertexDatasetCollection' smart constructor.
newtype GooglePrivacyDlpV2VertexDatasetCollection = GooglePrivacyDlpV2VertexDatasetCollection
  { -- | The regex used to filter dataset resources.
    vertexDatasetRegexes :: (Core.Maybe GooglePrivacyDlpV2VertexDatasetRegexes)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2VertexDatasetCollection' with the minimum fields required to make a request.
newGooglePrivacyDlpV2VertexDatasetCollection ::
  GooglePrivacyDlpV2VertexDatasetCollection
newGooglePrivacyDlpV2VertexDatasetCollection =
  GooglePrivacyDlpV2VertexDatasetCollection
    { vertexDatasetRegexes =
        Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2VertexDatasetCollection where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2VertexDatasetCollection"
      ( \o ->
          GooglePrivacyDlpV2VertexDatasetCollection
            Core.<$> (o Core..:? "vertexDatasetRegexes")
      )

instance Core.ToJSON GooglePrivacyDlpV2VertexDatasetCollection where
  toJSON GooglePrivacyDlpV2VertexDatasetCollection {..} =
    Core.object
      ( Core.catMaybes
          [("vertexDatasetRegexes" Core..=) Core.<$> vertexDatasetRegexes]
      )

-- | Target used to match against for discovery with Vertex AI datasets.
--
-- /See:/ 'newGooglePrivacyDlpV2VertexDatasetDiscoveryTarget' smart constructor.
data GooglePrivacyDlpV2VertexDatasetDiscoveryTarget = GooglePrivacyDlpV2VertexDatasetDiscoveryTarget
  { -- | In addition to matching the filter, these conditions must be true before a profile is generated.
    conditions :: (Core.Maybe GooglePrivacyDlpV2DiscoveryVertexDatasetConditions),
    -- | Disable profiling for datasets that match this filter.
    disabled :: (Core.Maybe GooglePrivacyDlpV2Disabled),
    -- | Required. The datasets the discovery cadence applies to. The first target with a matching filter will be the one to apply to a dataset.
    filter :: (Core.Maybe GooglePrivacyDlpV2DiscoveryVertexDatasetFilter),
    -- | How often and when to update profiles. New datasets that match both the filter and conditions are scanned as quickly as possible depending on system capacity.
    generationCadence ::
      ( Core.Maybe
          GooglePrivacyDlpV2DiscoveryVertexDatasetGenerationCadence
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2VertexDatasetDiscoveryTarget' with the minimum fields required to make a request.
newGooglePrivacyDlpV2VertexDatasetDiscoveryTarget ::
  GooglePrivacyDlpV2VertexDatasetDiscoveryTarget
newGooglePrivacyDlpV2VertexDatasetDiscoveryTarget =
  GooglePrivacyDlpV2VertexDatasetDiscoveryTarget
    { conditions =
        Core.Nothing,
      disabled = Core.Nothing,
      filter = Core.Nothing,
      generationCadence = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2VertexDatasetDiscoveryTarget
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2VertexDatasetDiscoveryTarget"
      ( \o ->
          GooglePrivacyDlpV2VertexDatasetDiscoveryTarget
            Core.<$> (o Core..:? "conditions")
            Core.<*> (o Core..:? "disabled")
            Core.<*> (o Core..:? "filter")
            Core.<*> (o Core..:? "generationCadence")
      )

instance Core.ToJSON GooglePrivacyDlpV2VertexDatasetDiscoveryTarget where
  toJSON GooglePrivacyDlpV2VertexDatasetDiscoveryTarget {..} =
    Core.object
      ( Core.catMaybes
          [ ("conditions" Core..=) Core.<$> conditions,
            ("disabled" Core..=) Core.<$> disabled,
            ("filter" Core..=) Core.<$> filter,
            ("generationCadence" Core..=) Core.<$> generationCadence
          ]
      )

-- | A pattern to match against one or more dataset resources.
--
-- /See:/ 'newGooglePrivacyDlpV2VertexDatasetRegex' smart constructor.
newtype GooglePrivacyDlpV2VertexDatasetRegex = GooglePrivacyDlpV2VertexDatasetRegex
  { -- | For organizations, if unset, will match all projects. Has no effect for configurations created within a project.
    projectIdRegex :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2VertexDatasetRegex' with the minimum fields required to make a request.
newGooglePrivacyDlpV2VertexDatasetRegex ::
  GooglePrivacyDlpV2VertexDatasetRegex
newGooglePrivacyDlpV2VertexDatasetRegex =
  GooglePrivacyDlpV2VertexDatasetRegex
    { projectIdRegex =
        Core.Nothing
    }

instance Core.FromJSON GooglePrivacyDlpV2VertexDatasetRegex where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2VertexDatasetRegex"
      ( \o ->
          GooglePrivacyDlpV2VertexDatasetRegex
            Core.<$> (o Core..:? "projectIdRegex")
      )

instance Core.ToJSON GooglePrivacyDlpV2VertexDatasetRegex where
  toJSON GooglePrivacyDlpV2VertexDatasetRegex {..} =
    Core.object
      ( Core.catMaybes
          [("projectIdRegex" Core..=) Core.<$> projectIdRegex]
      )

-- | A collection of regular expressions to determine what datasets to match against.
--
-- /See:/ 'newGooglePrivacyDlpV2VertexDatasetRegexes' smart constructor.
newtype GooglePrivacyDlpV2VertexDatasetRegexes = GooglePrivacyDlpV2VertexDatasetRegexes
  { -- | Required. The group of regular expression patterns to match against one or more datasets. Maximum of 100 entries. The sum of the lengths of all regular expressions can\'t exceed 10 KiB.
    patterns :: (Core.Maybe [GooglePrivacyDlpV2VertexDatasetRegex])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2VertexDatasetRegexes' with the minimum fields required to make a request.
newGooglePrivacyDlpV2VertexDatasetRegexes ::
  GooglePrivacyDlpV2VertexDatasetRegexes
newGooglePrivacyDlpV2VertexDatasetRegexes =
  GooglePrivacyDlpV2VertexDatasetRegexes {patterns = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2VertexDatasetRegexes where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2VertexDatasetRegexes"
      ( \o ->
          GooglePrivacyDlpV2VertexDatasetRegexes
            Core.<$> (o Core..:? "patterns")
      )

instance Core.ToJSON GooglePrivacyDlpV2VertexDatasetRegexes where
  toJSON GooglePrivacyDlpV2VertexDatasetRegexes {..} =
    Core.object
      (Core.catMaybes [("patterns" Core..=) Core.<$> patterns])

-- | Identifies a single Vertex AI dataset.
--
-- /See:/ 'newGooglePrivacyDlpV2VertexDatasetResourceReference' smart constructor.
newtype GooglePrivacyDlpV2VertexDatasetResourceReference = GooglePrivacyDlpV2VertexDatasetResourceReference
  { -- | Required. The name of the dataset resource. If set within a project-level configuration, the specified resource must be within the project.
    datasetResourceName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2VertexDatasetResourceReference' with the minimum fields required to make a request.
newGooglePrivacyDlpV2VertexDatasetResourceReference ::
  GooglePrivacyDlpV2VertexDatasetResourceReference
newGooglePrivacyDlpV2VertexDatasetResourceReference =
  GooglePrivacyDlpV2VertexDatasetResourceReference
    { datasetResourceName =
        Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2VertexDatasetResourceReference
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2VertexDatasetResourceReference"
      ( \o ->
          GooglePrivacyDlpV2VertexDatasetResourceReference
            Core.<$> (o Core..:? "datasetResourceName")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2VertexDatasetResourceReference
  where
  toJSON GooglePrivacyDlpV2VertexDatasetResourceReference {..} =
    Core.object
      ( Core.catMaybes
          [("datasetResourceName" Core..=) Core.<$> datasetResourceName]
      )

-- | Message defining a list of words or phrases to search for in the data.
--
-- /See:/ 'newGooglePrivacyDlpV2WordList' smart constructor.
newtype GooglePrivacyDlpV2WordList = GooglePrivacyDlpV2WordList
  { -- | Words or phrases defining the dictionary. The dictionary must contain at least one phrase and every phrase must contain at least 2 characters that are letters or digits. [required]
    words :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2WordList' with the minimum fields required to make a request.
newGooglePrivacyDlpV2WordList ::
  GooglePrivacyDlpV2WordList
newGooglePrivacyDlpV2WordList =
  GooglePrivacyDlpV2WordList {words = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2WordList where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2WordList"
      (\o -> GooglePrivacyDlpV2WordList Core.<$> (o Core..:? "words"))

instance Core.ToJSON GooglePrivacyDlpV2WordList where
  toJSON GooglePrivacyDlpV2WordList {..} =
    Core.object (Core.catMaybes [("words" Core..=) Core.<$> words])

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
--
-- /See:/ 'newGoogleProtobufEmpty' smart constructor.
data GoogleProtobufEmpty = GoogleProtobufEmpty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleProtobufEmpty' with the minimum fields required to make a request.
newGoogleProtobufEmpty ::
  GoogleProtobufEmpty
newGoogleProtobufEmpty = GoogleProtobufEmpty

instance Core.FromJSON GoogleProtobufEmpty where
  parseJSON =
    Core.withObject
      "GoogleProtobufEmpty"
      (\o -> Core.pure GoogleProtobufEmpty)

instance Core.ToJSON GoogleProtobufEmpty where
  toJSON = Core.const Core.emptyObject

-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newGoogleRpcStatus' smart constructor.
data GoogleRpcStatus = GoogleRpcStatus
  { -- | The status code, which should be an enum value of google.rpc.Code.
    code :: (Core.Maybe Core.Int32),
    -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    details :: (Core.Maybe [GoogleRpcStatus_DetailsItem]),
    -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleRpcStatus' with the minimum fields required to make a request.
newGoogleRpcStatus ::
  GoogleRpcStatus
newGoogleRpcStatus =
  GoogleRpcStatus
    { code = Core.Nothing,
      details = Core.Nothing,
      message = Core.Nothing
    }

instance Core.FromJSON GoogleRpcStatus where
  parseJSON =
    Core.withObject
      "GoogleRpcStatus"
      ( \o ->
          GoogleRpcStatus
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "details")
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON GoogleRpcStatus where
  toJSON GoogleRpcStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("details" Core..=) Core.<$> details,
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newGoogleRpcStatus_DetailsItem' smart constructor.
newtype GoogleRpcStatus_DetailsItem = GoogleRpcStatus_DetailsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleRpcStatus_DetailsItem' with the minimum fields required to make a request.
newGoogleRpcStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  GoogleRpcStatus_DetailsItem
newGoogleRpcStatus_DetailsItem additional =
  GoogleRpcStatus_DetailsItem {additional = additional}

instance Core.FromJSON GoogleRpcStatus_DetailsItem where
  parseJSON =
    Core.withObject
      "GoogleRpcStatus_DetailsItem"
      ( \o ->
          GoogleRpcStatus_DetailsItem Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON GoogleRpcStatus_DetailsItem where
  toJSON GoogleRpcStatus_DetailsItem {..} = Core.toJSON additional

-- | Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
--
-- /See:/ 'newGoogleTypeDate' smart constructor.
data GoogleTypeDate = GoogleTypeDate
  { -- | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn\'t significant.
    day :: (Core.Maybe Core.Int32),
    -- | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.
    month :: (Core.Maybe Core.Int32),
    -- | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.
    year :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleTypeDate' with the minimum fields required to make a request.
newGoogleTypeDate ::
  GoogleTypeDate
newGoogleTypeDate =
  GoogleTypeDate
    { day = Core.Nothing,
      month = Core.Nothing,
      year = Core.Nothing
    }

instance Core.FromJSON GoogleTypeDate where
  parseJSON =
    Core.withObject
      "GoogleTypeDate"
      ( \o ->
          GoogleTypeDate
            Core.<$> (o Core..:? "day")
            Core.<*> (o Core..:? "month")
            Core.<*> (o Core..:? "year")
      )

instance Core.ToJSON GoogleTypeDate where
  toJSON GoogleTypeDate {..} =
    Core.object
      ( Core.catMaybes
          [ ("day" Core..=) Core.<$> day,
            ("month" Core..=) Core.<$> month,
            ("year" Core..=) Core.<$> year
          ]
      )

-- | Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and @google.protobuf.Timestamp@.
--
-- /See:/ 'newGoogleTypeTimeOfDay' smart constructor.
data GoogleTypeTimeOfDay = GoogleTypeTimeOfDay
  { -- | Hours of a day in 24 hour format. Must be greater than or equal to 0 and typically must be less than or equal to 23. An API may choose to allow the value \"24:00:00\" for scenarios like business closing time.
    hours :: (Core.Maybe Core.Int32),
    -- | Minutes of an hour. Must be greater than or equal to 0 and less than or equal to 59.
    minutes :: (Core.Maybe Core.Int32),
    -- | Fractions of seconds, in nanoseconds. Must be greater than or equal to 0 and less than or equal to 999,999,999.
    nanos :: (Core.Maybe Core.Int32),
    -- | Seconds of a minute. Must be greater than or equal to 0 and typically must be less than or equal to 59. An API may allow the value 60 if it allows leap-seconds.
    seconds :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleTypeTimeOfDay' with the minimum fields required to make a request.
newGoogleTypeTimeOfDay ::
  GoogleTypeTimeOfDay
newGoogleTypeTimeOfDay =
  GoogleTypeTimeOfDay
    { hours = Core.Nothing,
      minutes = Core.Nothing,
      nanos = Core.Nothing,
      seconds = Core.Nothing
    }

instance Core.FromJSON GoogleTypeTimeOfDay where
  parseJSON =
    Core.withObject
      "GoogleTypeTimeOfDay"
      ( \o ->
          GoogleTypeTimeOfDay
            Core.<$> (o Core..:? "hours")
            Core.<*> (o Core..:? "minutes")
            Core.<*> (o Core..:? "nanos")
            Core.<*> (o Core..:? "seconds")
      )

instance Core.ToJSON GoogleTypeTimeOfDay where
  toJSON GoogleTypeTimeOfDay {..} =
    Core.object
      ( Core.catMaybes
          [ ("hours" Core..=) Core.<$> hours,
            ("minutes" Core..=) Core.<$> minutes,
            ("nanos" Core..=) Core.<$> nanos,
            ("seconds" Core..=) Core.<$> seconds
          ]
      )
