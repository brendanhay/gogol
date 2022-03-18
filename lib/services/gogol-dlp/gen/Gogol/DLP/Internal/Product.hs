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
-- Module      : Gogol.DLP.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.DLP.Internal.Product
  ( -- * GooglePrivacyDlpV2Action
    GooglePrivacyDlpV2Action (..),
    newGooglePrivacyDlpV2Action,

    -- * GooglePrivacyDlpV2ActivateJobTriggerRequest
    GooglePrivacyDlpV2ActivateJobTriggerRequest (..),
    newGooglePrivacyDlpV2ActivateJobTriggerRequest,

    -- * GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails
    GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails (..),
    newGooglePrivacyDlpV2AnalyzeDataSourceRiskDetails,

    -- * GooglePrivacyDlpV2AuxiliaryTable
    GooglePrivacyDlpV2AuxiliaryTable (..),
    newGooglePrivacyDlpV2AuxiliaryTable,

    -- * GooglePrivacyDlpV2BigQueryField
    GooglePrivacyDlpV2BigQueryField (..),
    newGooglePrivacyDlpV2BigQueryField,

    -- * GooglePrivacyDlpV2BigQueryKey
    GooglePrivacyDlpV2BigQueryKey (..),
    newGooglePrivacyDlpV2BigQueryKey,

    -- * GooglePrivacyDlpV2BigQueryOptions
    GooglePrivacyDlpV2BigQueryOptions (..),
    newGooglePrivacyDlpV2BigQueryOptions,

    -- * GooglePrivacyDlpV2BigQueryTable
    GooglePrivacyDlpV2BigQueryTable (..),
    newGooglePrivacyDlpV2BigQueryTable,

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

    -- * GooglePrivacyDlpV2CloudStorageFileSet
    GooglePrivacyDlpV2CloudStorageFileSet (..),
    newGooglePrivacyDlpV2CloudStorageFileSet,

    -- * GooglePrivacyDlpV2CloudStorageOptions
    GooglePrivacyDlpV2CloudStorageOptions (..),
    newGooglePrivacyDlpV2CloudStorageOptions,

    -- * GooglePrivacyDlpV2CloudStoragePath
    GooglePrivacyDlpV2CloudStoragePath (..),
    newGooglePrivacyDlpV2CloudStoragePath,

    -- * GooglePrivacyDlpV2CloudStorageRegexFileSet
    GooglePrivacyDlpV2CloudStorageRegexFileSet (..),
    newGooglePrivacyDlpV2CloudStorageRegexFileSet,

    -- * GooglePrivacyDlpV2Color
    GooglePrivacyDlpV2Color (..),
    newGooglePrivacyDlpV2Color,

    -- * GooglePrivacyDlpV2Condition
    GooglePrivacyDlpV2Condition (..),
    newGooglePrivacyDlpV2Condition,

    -- * GooglePrivacyDlpV2Conditions
    GooglePrivacyDlpV2Conditions (..),
    newGooglePrivacyDlpV2Conditions,

    -- * GooglePrivacyDlpV2Container
    GooglePrivacyDlpV2Container (..),
    newGooglePrivacyDlpV2Container,

    -- * GooglePrivacyDlpV2ContentItem
    GooglePrivacyDlpV2ContentItem (..),
    newGooglePrivacyDlpV2ContentItem,

    -- * GooglePrivacyDlpV2ContentLocation
    GooglePrivacyDlpV2ContentLocation (..),
    newGooglePrivacyDlpV2ContentLocation,

    -- * GooglePrivacyDlpV2CreateDeidentifyTemplateRequest
    GooglePrivacyDlpV2CreateDeidentifyTemplateRequest (..),
    newGooglePrivacyDlpV2CreateDeidentifyTemplateRequest,

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

    -- * GooglePrivacyDlpV2DeidentifyConfig
    GooglePrivacyDlpV2DeidentifyConfig (..),
    newGooglePrivacyDlpV2DeidentifyConfig,

    -- * GooglePrivacyDlpV2DeidentifyContentRequest
    GooglePrivacyDlpV2DeidentifyContentRequest (..),
    newGooglePrivacyDlpV2DeidentifyContentRequest,

    -- * GooglePrivacyDlpV2DeidentifyContentResponse
    GooglePrivacyDlpV2DeidentifyContentResponse (..),
    newGooglePrivacyDlpV2DeidentifyContentResponse,

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

    -- * GooglePrivacyDlpV2ExcludeInfoTypes
    GooglePrivacyDlpV2ExcludeInfoTypes (..),
    newGooglePrivacyDlpV2ExcludeInfoTypes,

    -- * GooglePrivacyDlpV2ExclusionRule
    GooglePrivacyDlpV2ExclusionRule (..),
    newGooglePrivacyDlpV2ExclusionRule,

    -- * GooglePrivacyDlpV2Expressions
    GooglePrivacyDlpV2Expressions (..),
    newGooglePrivacyDlpV2Expressions,

    -- * GooglePrivacyDlpV2FieldId
    GooglePrivacyDlpV2FieldId (..),
    newGooglePrivacyDlpV2FieldId,

    -- * GooglePrivacyDlpV2FieldTransformation
    GooglePrivacyDlpV2FieldTransformation (..),
    newGooglePrivacyDlpV2FieldTransformation,

    -- * GooglePrivacyDlpV2FileSet
    GooglePrivacyDlpV2FileSet (..),
    newGooglePrivacyDlpV2FileSet,

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

    -- * GooglePrivacyDlpV2ImageLocation
    GooglePrivacyDlpV2ImageLocation (..),
    newGooglePrivacyDlpV2ImageLocation,

    -- * GooglePrivacyDlpV2ImageRedactionConfig
    GooglePrivacyDlpV2ImageRedactionConfig (..),
    newGooglePrivacyDlpV2ImageRedactionConfig,

    -- * GooglePrivacyDlpV2InfoType
    GooglePrivacyDlpV2InfoType (..),
    newGooglePrivacyDlpV2InfoType,

    -- * GooglePrivacyDlpV2InfoTypeDescription
    GooglePrivacyDlpV2InfoTypeDescription (..),
    newGooglePrivacyDlpV2InfoTypeDescription,

    -- * GooglePrivacyDlpV2InfoTypeLimit
    GooglePrivacyDlpV2InfoTypeLimit (..),
    newGooglePrivacyDlpV2InfoTypeLimit,

    -- * GooglePrivacyDlpV2InfoTypeStats
    GooglePrivacyDlpV2InfoTypeStats (..),
    newGooglePrivacyDlpV2InfoTypeStats,

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

    -- * GooglePrivacyDlpV2ListDeidentifyTemplatesResponse
    GooglePrivacyDlpV2ListDeidentifyTemplatesResponse (..),
    newGooglePrivacyDlpV2ListDeidentifyTemplatesResponse,

    -- * GooglePrivacyDlpV2ListDlpJobsResponse
    GooglePrivacyDlpV2ListDlpJobsResponse (..),
    newGooglePrivacyDlpV2ListDlpJobsResponse,

    -- * GooglePrivacyDlpV2ListInfoTypesResponse
    GooglePrivacyDlpV2ListInfoTypesResponse (..),
    newGooglePrivacyDlpV2ListInfoTypesResponse,

    -- * GooglePrivacyDlpV2ListInspectTemplatesResponse
    GooglePrivacyDlpV2ListInspectTemplatesResponse (..),
    newGooglePrivacyDlpV2ListInspectTemplatesResponse,

    -- * GooglePrivacyDlpV2ListJobTriggersResponse
    GooglePrivacyDlpV2ListJobTriggersResponse (..),
    newGooglePrivacyDlpV2ListJobTriggersResponse,

    -- * GooglePrivacyDlpV2ListStoredInfoTypesResponse
    GooglePrivacyDlpV2ListStoredInfoTypesResponse (..),
    newGooglePrivacyDlpV2ListStoredInfoTypesResponse,

    -- * GooglePrivacyDlpV2Location
    GooglePrivacyDlpV2Location (..),
    newGooglePrivacyDlpV2Location,

    -- * GooglePrivacyDlpV2Manual
    GooglePrivacyDlpV2Manual (..),
    newGooglePrivacyDlpV2Manual,

    -- * GooglePrivacyDlpV2MetadataLocation
    GooglePrivacyDlpV2MetadataLocation (..),
    newGooglePrivacyDlpV2MetadataLocation,

    -- * GooglePrivacyDlpV2NumericalStatsConfig
    GooglePrivacyDlpV2NumericalStatsConfig (..),
    newGooglePrivacyDlpV2NumericalStatsConfig,

    -- * GooglePrivacyDlpV2NumericalStatsResult
    GooglePrivacyDlpV2NumericalStatsResult (..),
    newGooglePrivacyDlpV2NumericalStatsResult,

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

    -- * GooglePrivacyDlpV2Proximity
    GooglePrivacyDlpV2Proximity (..),
    newGooglePrivacyDlpV2Proximity,

    -- * GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog
    GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog (..),
    newGooglePrivacyDlpV2PublishFindingsToCloudDataCatalog,

    -- * GooglePrivacyDlpV2PublishSummaryToCscc
    GooglePrivacyDlpV2PublishSummaryToCscc (..),
    newGooglePrivacyDlpV2PublishSummaryToCscc,

    -- * GooglePrivacyDlpV2PublishToPubSub
    GooglePrivacyDlpV2PublishToPubSub (..),
    newGooglePrivacyDlpV2PublishToPubSub,

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

    -- * GooglePrivacyDlpV2ReplaceDictionaryConfig
    GooglePrivacyDlpV2ReplaceDictionaryConfig (..),
    newGooglePrivacyDlpV2ReplaceDictionaryConfig,

    -- * GooglePrivacyDlpV2ReplaceValueConfig
    GooglePrivacyDlpV2ReplaceValueConfig (..),
    newGooglePrivacyDlpV2ReplaceValueConfig,

    -- * GooglePrivacyDlpV2ReplaceWithInfoTypeConfig
    GooglePrivacyDlpV2ReplaceWithInfoTypeConfig (..),
    newGooglePrivacyDlpV2ReplaceWithInfoTypeConfig,

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

    -- * GooglePrivacyDlpV2TableLocation
    GooglePrivacyDlpV2TableLocation (..),
    newGooglePrivacyDlpV2TableLocation,

    -- * GooglePrivacyDlpV2TableOptions
    GooglePrivacyDlpV2TableOptions (..),
    newGooglePrivacyDlpV2TableOptions,

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

    -- * GooglePrivacyDlpV2TransformationErrorHandling
    GooglePrivacyDlpV2TransformationErrorHandling (..),
    newGooglePrivacyDlpV2TransformationErrorHandling,

    -- * GooglePrivacyDlpV2TransformationOverview
    GooglePrivacyDlpV2TransformationOverview (..),
    newGooglePrivacyDlpV2TransformationOverview,

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

    -- * GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest
    GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest (..),
    newGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest,

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
import qualified Gogol.Prelude as Core

-- | A task to execute on the completion of a job. See https:\/\/cloud.google.com\/dlp\/docs\/concepts-actions to learn more.
--
-- /See:/ 'newGooglePrivacyDlpV2Action' smart constructor.
data GooglePrivacyDlpV2Action = GooglePrivacyDlpV2Action
  { -- | Enable email notification for project owners and editors on job\'s completion\/failure.
    jobNotificationEmails :: (Core.Maybe GooglePrivacyDlpV2JobNotificationEmails),
    -- | Publish a notification to a pubsub topic.
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
    { jobNotificationEmails = Core.Nothing,
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
            Core.<$> (o Core..:? "jobNotificationEmails")
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
          [ ("jobNotificationEmails" Core..=)
              Core.<$> jobNotificationEmails,
            ("pubSub" Core..=) Core.<$> pubSub,
            ("publishFindingsToCloudDataCatalog" Core..=)
              Core.<$> publishFindingsToCloudDataCatalog,
            ("publishSummaryToCscc" Core..=)
              Core.<$> publishSummaryToCscc,
            ("publishToStackdriver" Core..=)
              Core.<$> publishToStackdriver,
            ("saveFindings" Core..=) Core.<$> saveFindings
          ]
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2ActivateJobTriggerRequest
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ActivateJobTriggerRequest"
      ( \o ->
          Core.pure
            GooglePrivacyDlpV2ActivateJobTriggerRequest
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2ActivateJobTriggerRequest
  where
  toJSON = Core.const Core.emptyObject

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
    { categoricalStatsResult = Core.Nothing,
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

instance
  Core.ToJSON
    GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails
  where
  toJSON
    GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails {..} =
      Core.object
        ( Core.catMaybes
            [ ("categoricalStatsResult" Core..=)
                Core.<$> categoricalStatsResult,
              ("deltaPresenceEstimationResult" Core..=)
                Core.<$> deltaPresenceEstimationResult,
              ("kAnonymityResult" Core..=)
                Core.<$> kAnonymityResult,
              ("kMapEstimationResult" Core..=)
                Core.<$> kMapEstimationResult,
              ("lDiversityResult" Core..=)
                Core.<$> lDiversityResult,
              ("numericalStatsResult" Core..=)
                Core.<$> numericalStatsResult,
              ("requestedOptions" Core..=)
                Core.<$> requestedOptions,
              ("requestedPrivacyMetric" Core..=)
                Core.<$> requestedPrivacyMetric,
              ("requestedSourceTable" Core..=)
                Core.<$> requestedSourceTable
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2AuxiliaryTable
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2AuxiliaryTable"
      ( \o ->
          GooglePrivacyDlpV2AuxiliaryTable
            Core.<$> (o Core..:? "quasiIds" Core..!= Core.mempty)
            Core.<*> (o Core..:? "relativeFrequency")
            Core.<*> (o Core..:? "table")
      )

instance Core.ToJSON GooglePrivacyDlpV2AuxiliaryTable where
  toJSON GooglePrivacyDlpV2AuxiliaryTable {..} =
    Core.object
      ( Core.catMaybes
          [ ("quasiIds" Core..=) Core.<$> quasiIds,
            ("relativeFrequency" Core..=)
              Core.<$> relativeFrequency,
            ("table" Core..=) Core.<$> table
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
  GooglePrivacyDlpV2BigQueryField {field = Core.Nothing, table = Core.Nothing}

instance
  Core.FromJSON
    GooglePrivacyDlpV2BigQueryField
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2BigQueryField"
      ( \o ->
          GooglePrivacyDlpV2BigQueryField
            Core.<$> (o Core..:? "field") Core.<*> (o Core..:? "table")
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
            Core.<$> (o Core..:? "rowNumber")
            Core.<*> (o Core..:? "tableReference")
      )

instance Core.ToJSON GooglePrivacyDlpV2BigQueryKey where
  toJSON GooglePrivacyDlpV2BigQueryKey {..} =
    Core.object
      ( Core.catMaybes
          [ ("rowNumber" Core..=) Core.. Core.AsText
              Core.<$> rowNumber,
            ("tableReference" Core..=) Core.<$> tableReference
          ]
      )

-- | Options defining BigQuery table and row identifiers.
--
-- /See:/ 'newGooglePrivacyDlpV2BigQueryOptions' smart constructor.
data GooglePrivacyDlpV2BigQueryOptions = GooglePrivacyDlpV2BigQueryOptions
  { -- | References to fields excluded from scanning. This allows you to skip inspection of entire columns which you know have no findings.
    excludedFields :: (Core.Maybe [GooglePrivacyDlpV2FieldId]),
    -- | Table fields that may uniquely identify a row within the table. When @actions.saveFindings.outputConfig.table@ is specified, the values of columns specified here are available in the output table under @location.content_locations.record_location.record_key.id_values@. Nested fields such as @person.birthdate.year@ are allowed.
    identifyingFields :: (Core.Maybe [GooglePrivacyDlpV2FieldId]),
    -- | Limit scanning only to these fields.
    includedFields :: (Core.Maybe [GooglePrivacyDlpV2FieldId]),
    -- | Max number of rows to scan. If the table has more rows than this value, the rest of the rows are omitted. If not set, or if set to 0, all rows will be scanned. Only one of rows/limit and rows/limit_percent can be specified. Cannot be used in conjunction with TimespanConfig.
    rowsLimit :: (Core.Maybe Core.Int64),
    -- | Max percentage of rows to scan. The rest are omitted. The number of rows scanned is rounded down. Must be between 0 and 100, inclusively. Both 0 and 100 means no limit. Defaults to 0. Only one of rows/limit and rows/limit_percent can be specified. Cannot be used in conjunction with TimespanConfig.
    rowsLimitPercent :: (Core.Maybe Core.Int32),
    -- |
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2BigQueryOptions
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2BigQueryOptions"
      ( \o ->
          GooglePrivacyDlpV2BigQueryOptions
            Core.<$> (o Core..:? "excludedFields" Core..!= Core.mempty)
            Core.<*> (o Core..:? "identifyingFields" Core..!= Core.mempty)
            Core.<*> (o Core..:? "includedFields" Core..!= Core.mempty)
            Core.<*> (o Core..:? "rowsLimit")
            Core.<*> (o Core..:? "rowsLimitPercent")
            Core.<*> (o Core..:? "sampleMethod")
            Core.<*> (o Core..:? "tableReference")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2BigQueryOptions
  where
  toJSON GooglePrivacyDlpV2BigQueryOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("excludedFields" Core..=) Core.<$> excludedFields,
            ("identifyingFields" Core..=)
              Core.<$> identifyingFields,
            ("includedFields" Core..=) Core.<$> includedFields,
            ("rowsLimit" Core..=) Core.. Core.AsText
              Core.<$> rowsLimit,
            ("rowsLimitPercent" Core..=)
              Core.<$> rowsLimitPercent,
            ("sampleMethod" Core..=) Core.<$> sampleMethod,
            ("tableReference" Core..=) Core.<$> tableReference
          ]
      )

-- | Message defining the location of a BigQuery table. A table is uniquely identified by its project/id, dataset/id, and table_name. Within a query a table is often referenced with a string in the format of: @:.@ or @..@.
--
-- /See:/ 'newGooglePrivacyDlpV2BigQueryTable' smart constructor.
data GooglePrivacyDlpV2BigQueryTable = GooglePrivacyDlpV2BigQueryTable
  { -- | Dataset ID of the table.
    datasetId :: (Core.Maybe Core.Text),
    -- | The Google Cloud Platform project ID of the project containing the table. If omitted, project ID is inferred from the API call.
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2BigQueryTable
  where
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
            ("replacementValue" Core..=)
              Core.<$> replacementValue
          ]
      )

-- | Generalization function that buckets values based on ranges. The ranges and replacement values are dynamically provided by the user for custom behavior, such as 1-30 -> LOW 31-65 -> MEDIUM 66-100 -> HIGH This can be used on data of type: number, long, string, timestamp. If the bound @Value@ type differs from the type of data being transformed, we will first attempt converting the type of the data to be transformed to match the type of the bound before comparing. See https:\/\/cloud.google.com\/dlp\/docs\/concepts-bucketing to learn more.
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2BucketingConfig
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2BucketingConfig"
      ( \o ->
          GooglePrivacyDlpV2BucketingConfig
            Core.<$> (o Core..:? "buckets" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2BucketingConfig
  where
  toJSON GooglePrivacyDlpV2BucketingConfig {..} =
    Core.object
      ( Core.catMaybes
          [("buckets" Core..=) Core.<$> buckets]
      )

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
  GooglePrivacyDlpV2ByteContentItem {data' = Core.Nothing, type' = Core.Nothing}

instance
  Core.FromJSON
    GooglePrivacyDlpV2ByteContentItem
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ByteContentItem"
      ( \o ->
          GooglePrivacyDlpV2ByteContentItem
            Core.<$> (o Core..:? "data") Core.<*> (o Core..:? "type")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2ByteContentItem
  where
  toJSON GooglePrivacyDlpV2ByteContentItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("data" Core..=) Core.<$> data',
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | The request message for canceling a DLP job.
--
-- /See:/ 'newGooglePrivacyDlpV2CancelDlpJobRequest' smart constructor.
data GooglePrivacyDlpV2CancelDlpJobRequest = GooglePrivacyDlpV2CancelDlpJobRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CancelDlpJobRequest' with the minimum fields required to make a request.
newGooglePrivacyDlpV2CancelDlpJobRequest ::
  GooglePrivacyDlpV2CancelDlpJobRequest
newGooglePrivacyDlpV2CancelDlpJobRequest = GooglePrivacyDlpV2CancelDlpJobRequest

instance
  Core.FromJSON
    GooglePrivacyDlpV2CancelDlpJobRequest
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2CancelDlpJobRequest"
      ( \o ->
          Core.pure GooglePrivacyDlpV2CancelDlpJobRequest
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2CancelDlpJobRequest
  where
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2CategoricalStatsConfig
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2CategoricalStatsConfig"
      ( \o ->
          GooglePrivacyDlpV2CategoricalStatsConfig
            Core.<$> (o Core..:? "field")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2CategoricalStatsConfig
  where
  toJSON GooglePrivacyDlpV2CategoricalStatsConfig {..} =
    Core.object
      (Core.catMaybes [("field" Core..=) Core.<$> field])

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
    { bucketSize = Core.Nothing,
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
            Core.<$> (o Core..:? "bucketSize")
              Core.<*> (o Core..:? "bucketValueCount")
              Core.<*> (o Core..:? "bucketValues" Core..!= Core.mempty)
              Core.<*> (o Core..:? "valueFrequencyLowerBound")
              Core.<*> (o Core..:? "valueFrequencyUpperBound")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2CategoricalStatsHistogramBucket
  where
  toJSON
    GooglePrivacyDlpV2CategoricalStatsHistogramBucket {..} =
      Core.object
        ( Core.catMaybes
            [ ("bucketSize" Core..=) Core.. Core.AsText
                Core.<$> bucketSize,
              ("bucketValueCount" Core..=) Core.. Core.AsText
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
    { valueFrequencyHistogramBuckets = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2CategoricalStatsResult
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2CategoricalStatsResult"
      ( \o ->
          GooglePrivacyDlpV2CategoricalStatsResult
            Core.<$> ( o Core..:? "valueFrequencyHistogramBuckets"
                         Core..!= Core.mempty
                     )
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2CategoricalStatsResult
  where
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
    -- | Number of characters to mask. If not set, all matching chars will be masked. Skipped characters do not count towards this tally.
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
    { charactersToIgnore = Core.Nothing,
      maskingCharacter = Core.Nothing,
      numberToMask = Core.Nothing,
      reverseOrder = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2CharacterMaskConfig
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2CharacterMaskConfig"
      ( \o ->
          GooglePrivacyDlpV2CharacterMaskConfig
            Core.<$> ( o Core..:? "charactersToIgnore"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "maskingCharacter")
            Core.<*> (o Core..:? "numberToMask")
            Core.<*> (o Core..:? "reverseOrder")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2CharacterMaskConfig
  where
  toJSON GooglePrivacyDlpV2CharacterMaskConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("charactersToIgnore" Core..=)
              Core.<$> charactersToIgnore,
            ("maskingCharacter" Core..=)
              Core.<$> maskingCharacter,
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2CharsToIgnore
  where
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
          [ ("charactersToSkip" Core..=)
              Core.<$> charactersToSkip,
            ("commonCharactersToIgnore" Core..=)
              Core.<$> commonCharactersToIgnore
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2CloudStorageFileSet
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2CloudStorageFileSet"
      ( \o ->
          GooglePrivacyDlpV2CloudStorageFileSet
            Core.<$> (o Core..:? "url")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2CloudStorageFileSet
  where
  toJSON GooglePrivacyDlpV2CloudStorageFileSet {..} =
    Core.object
      (Core.catMaybes [("url" Core..=) Core.<$> url])

-- | Options defining a file or a set of files within a Google Cloud Storage bucket.
--
-- /See:/ 'newGooglePrivacyDlpV2CloudStorageOptions' smart constructor.
data GooglePrivacyDlpV2CloudStorageOptions = GooglePrivacyDlpV2CloudStorageOptions
  { -- | Max number of bytes to scan from a file. If a scanned file\'s size is bigger than this value then the rest of the bytes are omitted. Only one of bytes/limit/per/file and bytes/limit/per/file_percent can be specified. Cannot be set if de-identification is requested.
    bytesLimitPerFile :: (Core.Maybe Core.Int64),
    -- | Max percentage of bytes to scan from a file. The rest are omitted. The number of bytes scanned is rounded down. Must be between 0 and 100, inclusively. Both 0 and 100 means no limit. Defaults to 0. Only one of bytes/limit/per/file and bytes/limit/per/file_percent can be specified. Cannot be set if de-identification is requested.
    bytesLimitPerFilePercent :: (Core.Maybe Core.Int32),
    -- | The set of one or more files to scan.
    fileSet :: (Core.Maybe GooglePrivacyDlpV2FileSet),
    -- | List of file type groups to include in the scan. If empty, all files are scanned and available data format processors are applied. In addition, the binary content of the selected files is always scanned as well. Images are scanned only as binary if the specified region does not support image inspection and no file_types were specified. Image inspection is restricted to \'global\', \'us\', \'asia\', and \'europe\'.
    fileTypes :: (Core.Maybe [GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem]),
    -- | Limits the number of files to scan to this percentage of the input FileSet. Number of files scanned is rounded down. Must be between 0 and 100, inclusively. Both 0 and 100 means no limit. Defaults to 0.
    filesLimitPercent :: (Core.Maybe Core.Int32),
    -- |
    sampleMethod :: (Core.Maybe GooglePrivacyDlpV2CloudStorageOptions_SampleMethod)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CloudStorageOptions' with the minimum fields required to make a request.
newGooglePrivacyDlpV2CloudStorageOptions ::
  GooglePrivacyDlpV2CloudStorageOptions
newGooglePrivacyDlpV2CloudStorageOptions =
  GooglePrivacyDlpV2CloudStorageOptions
    { bytesLimitPerFile = Core.Nothing,
      bytesLimitPerFilePercent = Core.Nothing,
      fileSet = Core.Nothing,
      fileTypes = Core.Nothing,
      filesLimitPercent = Core.Nothing,
      sampleMethod = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2CloudStorageOptions
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2CloudStorageOptions"
      ( \o ->
          GooglePrivacyDlpV2CloudStorageOptions
            Core.<$> (o Core..:? "bytesLimitPerFile")
            Core.<*> (o Core..:? "bytesLimitPerFilePercent")
            Core.<*> (o Core..:? "fileSet")
            Core.<*> (o Core..:? "fileTypes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "filesLimitPercent")
            Core.<*> (o Core..:? "sampleMethod")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2CloudStorageOptions
  where
  toJSON GooglePrivacyDlpV2CloudStorageOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("bytesLimitPerFile" Core..=) Core.. Core.AsText
              Core.<$> bytesLimitPerFile,
            ("bytesLimitPerFilePercent" Core..=)
              Core.<$> bytesLimitPerFilePercent,
            ("fileSet" Core..=) Core.<$> fileSet,
            ("fileTypes" Core..=) Core.<$> fileTypes,
            ("filesLimitPercent" Core..=)
              Core.<$> filesLimitPercent,
            ("sampleMethod" Core..=) Core.<$> sampleMethod
          ]
      )

-- | Message representing a single file or path in Cloud Storage.
--
-- /See:/ 'newGooglePrivacyDlpV2CloudStoragePath' smart constructor.
newtype GooglePrivacyDlpV2CloudStoragePath = GooglePrivacyDlpV2CloudStoragePath
  { -- | A url representing a file or path (no wildcards) in Cloud Storage. Example: gs:\/\/[BUCKET_NAME]\/dictionary.txt
    path :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CloudStoragePath' with the minimum fields required to make a request.
newGooglePrivacyDlpV2CloudStoragePath ::
  GooglePrivacyDlpV2CloudStoragePath
newGooglePrivacyDlpV2CloudStoragePath =
  GooglePrivacyDlpV2CloudStoragePath {path = Core.Nothing}

instance
  Core.FromJSON
    GooglePrivacyDlpV2CloudStoragePath
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2CloudStoragePath"
      ( \o ->
          GooglePrivacyDlpV2CloudStoragePath
            Core.<$> (o Core..:? "path")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2CloudStoragePath
  where
  toJSON GooglePrivacyDlpV2CloudStoragePath {..} =
    Core.object
      (Core.catMaybes [("path" Core..=) Core.<$> path])

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
    { bucketName = Core.Nothing,
      excludeRegex = Core.Nothing,
      includeRegex = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2CloudStorageRegexFileSet
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2CloudStorageRegexFileSet"
      ( \o ->
          GooglePrivacyDlpV2CloudStorageRegexFileSet
            Core.<$> (o Core..:? "bucketName")
            Core.<*> (o Core..:? "excludeRegex" Core..!= Core.mempty)
            Core.<*> (o Core..:? "includeRegex" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2CloudStorageRegexFileSet
  where
  toJSON GooglePrivacyDlpV2CloudStorageRegexFileSet {..} =
    Core.object
      ( Core.catMaybes
          [ ("bucketName" Core..=) Core.<$> bucketName,
            ("excludeRegex" Core..=) Core.<$> excludeRegex,
            ("includeRegex" Core..=) Core.<$> includeRegex
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
          GooglePrivacyDlpV2Conditions
            Core.<$> (o Core..:? "conditions" Core..!= Core.mempty)
      )

instance Core.ToJSON GooglePrivacyDlpV2Conditions where
  toJSON GooglePrivacyDlpV2Conditions {..} =
    Core.object
      ( Core.catMaybes
          [("conditions" Core..=) Core.<$> conditions]
      )

-- | Represents a container that may contain DLP findings. Examples of a container include a file, table, or database record.
--
-- /See:/ 'newGooglePrivacyDlpV2Container' smart constructor.
data GooglePrivacyDlpV2Container = GooglePrivacyDlpV2Container
  { -- | A string representation of the full container name. Examples: - BigQuery: \'Project:DataSetId.TableId\' - Google Cloud Storage: \'gs:\/\/Bucket\/folders\/filename.txt\'
    fullPath :: (Core.Maybe Core.Text),
    -- | Project where the finding was found. Can be different from the project that owns the finding.
    projectId :: (Core.Maybe Core.Text),
    -- | The rest of the path after the root. Examples: - For BigQuery table @project_id:dataset_id.table_id@, the relative path is @table_id@ - Google Cloud Storage file @gs:\/\/bucket\/folder\/filename.txt@, the relative path is @folder\/filename.txt@
    relativePath :: (Core.Maybe Core.Text),
    -- | The root of the container. Examples: - For BigQuery table @project_id:dataset_id.table_id@, the root is @dataset_id@ - For Google Cloud Storage file @gs:\/\/bucket\/folder\/filename.txt@, the root is @gs:\/\/bucket@
    rootPath :: (Core.Maybe Core.Text),
    -- | Container type, for example BigQuery or Google Cloud Storage.
    type' :: (Core.Maybe Core.Text),
    -- | Findings container modification timestamp, if applicable. For Google Cloud Storage contains last file modification timestamp. For BigQuery table contains last/modified/time property. For Datastore - not populated.
    updateTime :: (Core.Maybe Core.DateTime'),
    -- | Findings container version, if available (\"generation\" for Google Cloud Storage).
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

-- | Container structure for the content to inspect.
--
-- /See:/ 'newGooglePrivacyDlpV2ContentItem' smart constructor.
data GooglePrivacyDlpV2ContentItem = GooglePrivacyDlpV2ContentItem
  { -- | Content data to inspect or redact. Replaces @type@ and @data@.
    byteItem :: (Core.Maybe GooglePrivacyDlpV2ByteContentItem),
    -- | Structured content for inspection. See https:\/\/cloud.google.com\/dlp\/docs\/inspecting-text#inspecting/a/table to learn more.
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
  { -- | Name of the container where the finding is located. The top level name is the source file name or table name. Names of some common storage containers are formatted as follows: * BigQuery tables: @{project_id}:{dataset_id}.{table_id}@ * Cloud Storage files: @gs:\/\/{bucket}\/{path}@ * Datastore namespace: {namespace} Nested names could be absent if the embedded object has no string identifier (for an example an image contained within a document).
    containerName :: (Core.Maybe Core.Text),
    -- | Findings container modification timestamp, if applicable. For Google Cloud Storage contains last file modification timestamp. For BigQuery table contains last/modified/time property. For Datastore - not populated.
    containerTimestamp :: (Core.Maybe Core.DateTime'),
    -- | Findings container version, if available (\"generation\" for Google Cloud Storage).
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2ContentLocation
  where
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

instance
  Core.ToJSON
    GooglePrivacyDlpV2ContentLocation
  where
  toJSON GooglePrivacyDlpV2ContentLocation {..} =
    Core.object
      ( Core.catMaybes
          [ ("containerName" Core..=) Core.<$> containerName,
            ("containerTimestamp" Core..=)
              Core.<$> containerTimestamp,
            ("containerVersion" Core..=)
              Core.<$> containerVersion,
            ("documentLocation" Core..=)
              Core.<$> documentLocation,
            ("imageLocation" Core..=) Core.<$> imageLocation,
            ("metadataLocation" Core..=)
              Core.<$> metadataLocation,
            ("recordLocation" Core..=) Core.<$> recordLocation
          ]
      )

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
    { deidentifyTemplate = Core.Nothing,
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
  toJSON
    GooglePrivacyDlpV2CreateDeidentifyTemplateRequest {..} =
      Core.object
        ( Core.catMaybes
            [ ("deidentifyTemplate" Core..=)
                Core.<$> deidentifyTemplate,
              ("locationId" Core..=) Core.<$> locationId,
              ("templateId" Core..=) Core.<$> templateId
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2CreateDlpJobRequest
  where
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

instance
  Core.ToJSON
    GooglePrivacyDlpV2CreateDlpJobRequest
  where
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
    { inspectTemplate = Core.Nothing,
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

instance
  Core.ToJSON
    GooglePrivacyDlpV2CreateInspectTemplateRequest
  where
  toJSON
    GooglePrivacyDlpV2CreateInspectTemplateRequest {..} =
      Core.object
        ( Core.catMaybes
            [ ("inspectTemplate" Core..=)
                Core.<$> inspectTemplate,
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
    { jobTrigger = Core.Nothing,
      locationId = Core.Nothing,
      triggerId = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2CreateJobTriggerRequest
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2CreateJobTriggerRequest"
      ( \o ->
          GooglePrivacyDlpV2CreateJobTriggerRequest
            Core.<$> (o Core..:? "jobTrigger")
            Core.<*> (o Core..:? "locationId")
            Core.<*> (o Core..:? "triggerId")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2CreateJobTriggerRequest
  where
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
    { config = Core.Nothing,
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

instance
  Core.ToJSON
    GooglePrivacyDlpV2CreateStoredInfoTypeRequest
  where
  toJSON
    GooglePrivacyDlpV2CreateStoredInfoTypeRequest {..} =
      Core.object
        ( Core.catMaybes
            [ ("config" Core..=) Core.<$> config,
              ("locationId" Core..=) Core.<$> locationId,
              ("storedInfoTypeId" Core..=)
                Core.<$> storedInfoTypeId
            ]
        )

-- | Pseudonymization method that generates deterministic encryption for the given input. Outputs a base64 encoded representation of the encrypted output. Uses AES-SIV based on the RFC https:\/\/tools.ietf.org\/html\/rfc5297.
--
-- /See:/ 'newGooglePrivacyDlpV2CryptoDeterministicConfig' smart constructor.
data GooglePrivacyDlpV2CryptoDeterministicConfig = GooglePrivacyDlpV2CryptoDeterministicConfig
  { -- | A context may be used for higher security and maintaining referential integrity such that the same identifier in two different contexts will be given a distinct surrogate. The context is appended to plaintext value being encrypted. On decryption the provided context is validated against the value used during encryption. If a context was provided during encryption, same context must be provided during decryption as well. If the context is not set, plaintext would be used as is for encryption. If the context is set but: 1. there is no record present when transforming a given value or 2. the field is not present when transforming a given value, plaintext would be used as is for encryption. Note that case (1) is expected when an @InfoTypeTransformation@ is applied to both structured and non-structured @ContentItem@s.
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
    { context = Core.Nothing,
      cryptoKey = Core.Nothing,
      surrogateInfoType = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2CryptoDeterministicConfig
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2CryptoDeterministicConfig"
      ( \o ->
          GooglePrivacyDlpV2CryptoDeterministicConfig
            Core.<$> (o Core..:? "context")
            Core.<*> (o Core..:? "cryptoKey")
            Core.<*> (o Core..:? "surrogateInfoType")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2CryptoDeterministicConfig
  where
  toJSON
    GooglePrivacyDlpV2CryptoDeterministicConfig {..} =
      Core.object
        ( Core.catMaybes
            [ ("context" Core..=) Core.<$> context,
              ("cryptoKey" Core..=) Core.<$> cryptoKey,
              ("surrogateInfoType" Core..=)
                Core.<$> surrogateInfoType
            ]
        )

-- | Pseudonymization method that generates surrogates via cryptographic hashing. Uses SHA-256. The key size must be either 32 or 64 bytes. Outputs a base64 encoded representation of the hashed output (for example, L7k0BHmF1ha5U3NfGykjro4xWi1MPVQPjhMAZbSV9mM=). Currently, only string and integer values can be hashed. See https:\/\/cloud.google.com\/dlp\/docs\/pseudonymization to learn more.
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2CryptoHashConfig
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2CryptoHashConfig"
      ( \o ->
          GooglePrivacyDlpV2CryptoHashConfig
            Core.<$> (o Core..:? "cryptoKey")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2CryptoHashConfig
  where
  toJSON GooglePrivacyDlpV2CryptoHashConfig {..} =
    Core.object
      ( Core.catMaybes
          [("cryptoKey" Core..=) Core.<$> cryptoKey]
      )

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

-- | Replaces an identifier with a surrogate using Format Preserving Encryption (FPE) with the FFX mode of operation; however when used in the @ReidentifyContent@ API method, it serves the opposite function by reversing the surrogate back into the original identifier. The identifier must be encoded as ASCII. For a given crypto key and context, the same identifier will be replaced with the same surrogate. Identifiers must be at least two characters long. In the case that the identifier is the empty string, it will be skipped. See https:\/\/cloud.google.com\/dlp\/docs\/pseudonymization to learn more. Note: We recommend using CryptoDeterministicConfig for all use cases which do not require preserving the input alphabet space and size, plus warrant referential integrity.
--
-- /See:/ 'newGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig' smart constructor.
data GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig = GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig
  { -- | Common alphabets.
    commonAlphabet ::
      ( Core.Maybe
          GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet
      ),
    -- | The \'tweak\', a context may be used for higher security since the same identifier in two different contexts won\'t be given the same surrogate. If the context is not set, a default tweak will be used. If the context is set but: 1. there is no record present when transforming a given value or 1. the field is not present when transforming a given value, a default tweak will be used. Note that case (1) is expected when an @InfoTypeTransformation@ is applied to both structured and non-structured @ContentItem@s. Currently, the referenced field may be of value type integer or string. The tweak is constructed as a sequence of bytes in big endian byte order such that: - a 64 bit integer is encoded followed by a single byte of value 1 - a string is encoded in UTF-8 format followed by a single byte of value 2
    context :: (Core.Maybe GooglePrivacyDlpV2FieldId),
    -- | Required. The key used by the encryption algorithm.
    cryptoKey :: (Core.Maybe GooglePrivacyDlpV2CryptoKey),
    -- | This is supported by mapping these to the alphanumeric characters that the FFX mode natively supports. This happens before\/after encryption\/decryption. Each character listed must appear only once. Number of characters must be in the range [2, 95]. This must be encoded as ASCII. The order of characters does not matter. The full list of allowed characters is: 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ~\`!\@#$%^&*()_-+={[}]|\\:;\"\'\<,>.?\/
    customAlphabet :: (Core.Maybe Core.Text),
    -- | The native way to select the alphabet. Must be in the range [2, 95].
    radix :: (Core.Maybe Core.Int32),
    -- | The custom infoType to annotate the surrogate with. This annotation will be applied to the surrogate by prefixing it with the name of the custom infoType followed by the number of characters comprising the surrogate. The following scheme defines the format: info/type/name(surrogate/character/count):surrogate For example, if the name of custom infoType is \'MY/TOKEN/INFO/TYPE\' and the surrogate is \'abc\', the full replacement value will be: \'MY/TOKEN/INFO/TYPE(3):abc\' This annotation identifies the surrogate when inspecting content using the custom infoType <https://cloud.google.com/dlp/docs/reference/rest/v2/InspectConfig#surrogatetype SurrogateType>. This facilitates reversal of the surrogate when it occurs in free text. In order for inspection to work properly, the name of this infoType must not occur naturally anywhere in your data; otherwise, inspection may find a surrogate that does not correspond to an actual identifier. Therefore, choose your custom infoType name carefully after considering what
    -- your data looks like. One way to select a name that has a high chance of yielding reliable detection is to include one or more unicode characters that are highly improbable to exist in your data. For example, assuming your data is entered from a regular ASCII keyboard, the symbol with the hex code point 29DD might be used like so: ⧝MY/TOKEN/TYPE
    surrogateInfoType :: (Core.Maybe GooglePrivacyDlpV2InfoType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig' with the minimum fields required to make a request.
newGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig ::
  GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig
newGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig =
  GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig
    { commonAlphabet = Core.Nothing,
      context = Core.Nothing,
      cryptoKey = Core.Nothing,
      customAlphabet = Core.Nothing,
      radix = Core.Nothing,
      surrogateInfoType = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig
  where
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

instance
  Core.ToJSON
    GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig
  where
  toJSON
    GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig {..} =
      Core.object
        ( Core.catMaybes
            [ ("commonAlphabet" Core..=) Core.<$> commonAlphabet,
              ("context" Core..=) Core.<$> context,
              ("cryptoKey" Core..=) Core.<$> cryptoKey,
              ("customAlphabet" Core..=) Core.<$> customAlphabet,
              ("radix" Core..=) Core.<$> radix,
              ("surrogateInfoType" Core..=)
                Core.<$> surrogateInfoType
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
      storedType = Core.Nothing,
      surrogateType = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2CustomInfoType
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2CustomInfoType"
      ( \o ->
          GooglePrivacyDlpV2CustomInfoType
            Core.<$> (o Core..:? "detectionRules" Core..!= Core.mempty)
            Core.<*> (o Core..:? "dictionary")
            Core.<*> (o Core..:? "exclusionType")
            Core.<*> (o Core..:? "infoType")
            Core.<*> (o Core..:? "likelihood")
            Core.<*> (o Core..:? "regex")
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
            ("storedType" Core..=) Core.<$> storedType,
            ("surrogateType" Core..=) Core.<$> surrogateType
          ]
      )

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
          GooglePrivacyDlpV2DatastoreKey
            Core.<$> (o Core..:? "entityKey")
      )

instance Core.ToJSON GooglePrivacyDlpV2DatastoreKey where
  toJSON GooglePrivacyDlpV2DatastoreKey {..} =
    Core.object
      ( Core.catMaybes
          [("entityKey" Core..=) Core.<$> entityKey]
      )

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

instance
  Core.FromJSON
    GooglePrivacyDlpV2DatastoreOptions
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DatastoreOptions"
      ( \o ->
          GooglePrivacyDlpV2DatastoreOptions
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "partitionId")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2DatastoreOptions
  where
  toJSON GooglePrivacyDlpV2DatastoreOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("partitionId" Core..=) Core.<$> partitionId
          ]
      )

-- | Shifts dates by random number of days, with option to be consistent for the same context. See https:\/\/cloud.google.com\/dlp\/docs\/concepts-date-shifting to learn more.
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2DateShiftConfig
  where
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

instance
  Core.ToJSON
    GooglePrivacyDlpV2DateShiftConfig
  where
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

-- | The configuration that controls how the data will change.
--
-- /See:/ 'newGooglePrivacyDlpV2DeidentifyConfig' smart constructor.
data GooglePrivacyDlpV2DeidentifyConfig = GooglePrivacyDlpV2DeidentifyConfig
  { -- | Treat the dataset as free-form text and apply the same free text transformation everywhere.
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
    { infoTypeTransformations = Core.Nothing,
      recordTransformations = Core.Nothing,
      transformationErrorHandling = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2DeidentifyConfig
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DeidentifyConfig"
      ( \o ->
          GooglePrivacyDlpV2DeidentifyConfig
            Core.<$> (o Core..:? "infoTypeTransformations")
            Core.<*> (o Core..:? "recordTransformations")
            Core.<*> (o Core..:? "transformationErrorHandling")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2DeidentifyConfig
  where
  toJSON GooglePrivacyDlpV2DeidentifyConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("infoTypeTransformations" Core..=)
              Core.<$> infoTypeTransformations,
            ("recordTransformations" Core..=)
              Core.<$> recordTransformations,
            ("transformationErrorHandling" Core..=)
              Core.<$> transformationErrorHandling
          ]
      )

-- | Request to de-identify a list of items.
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
    -- | The item to de-identify. Will be treated as text.
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
    { deidentifyConfig = Core.Nothing,
      deidentifyTemplateName = Core.Nothing,
      inspectConfig = Core.Nothing,
      inspectTemplateName = Core.Nothing,
      item = Core.Nothing,
      locationId = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2DeidentifyContentRequest
  where
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

instance
  Core.ToJSON
    GooglePrivacyDlpV2DeidentifyContentRequest
  where
  toJSON GooglePrivacyDlpV2DeidentifyContentRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("deidentifyConfig" Core..=)
              Core.<$> deidentifyConfig,
            ("deidentifyTemplateName" Core..=)
              Core.<$> deidentifyTemplateName,
            ("inspectConfig" Core..=) Core.<$> inspectConfig,
            ("inspectTemplateName" Core..=)
              Core.<$> inspectTemplateName,
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2DeidentifyContentResponse
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DeidentifyContentResponse"
      ( \o ->
          GooglePrivacyDlpV2DeidentifyContentResponse
            Core.<$> (o Core..:? "item") Core.<*> (o Core..:? "overview")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2DeidentifyContentResponse
  where
  toJSON
    GooglePrivacyDlpV2DeidentifyContentResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("item" Core..=) Core.<$> item,
              ("overview" Core..=) Core.<$> overview
            ]
        )

-- | DeidentifyTemplates contains instructions on how to de-identify content. See https:\/\/cloud.google.com\/dlp\/docs\/concepts-templates to learn more.
--
-- /See:/ 'newGooglePrivacyDlpV2DeidentifyTemplate' smart constructor.
data GooglePrivacyDlpV2DeidentifyTemplate = GooglePrivacyDlpV2DeidentifyTemplate
  { -- | Output only. The creation timestamp of an inspectTemplate.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | The core content of the template.
    deidentifyConfig :: (Core.Maybe GooglePrivacyDlpV2DeidentifyConfig),
    -- | Short description (max 256 chars).
    description :: (Core.Maybe Core.Text),
    -- | Display name (max 256 chars).
    displayName :: (Core.Maybe Core.Text),
    -- | Output only. The template name. The template will have one of the following formats: @projects\/PROJECT_ID\/deidentifyTemplates\/TEMPLATE_ID@ OR @organizations\/ORGANIZATION_ID\/deidentifyTemplates\/TEMPLATE_ID@
    name :: (Core.Maybe Core.Text),
    -- | Output only. The last update timestamp of an inspectTemplate.
    updateTime :: (Core.Maybe Core.DateTime')
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2DeidentifyTemplate
  where
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

instance
  Core.ToJSON
    GooglePrivacyDlpV2DeidentifyTemplate
  where
  toJSON GooglePrivacyDlpV2DeidentifyTemplate {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("deidentifyConfig" Core..=)
              Core.<$> deidentifyConfig,
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
    { auxiliaryTables = Core.Nothing,
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
            Core.<$> (o Core..:? "auxiliaryTables" Core..!= Core.mempty)
              Core.<*> (o Core..:? "quasiIds" Core..!= Core.mempty)
              Core.<*> (o Core..:? "regionCode")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2DeltaPresenceEstimationConfig
  where
  toJSON
    GooglePrivacyDlpV2DeltaPresenceEstimationConfig {..} =
      Core.object
        ( Core.catMaybes
            [ ("auxiliaryTables" Core..=)
                Core.<$> auxiliaryTables,
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
    { bucketSize = Core.Nothing,
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
            Core.<$> (o Core..:? "bucketSize")
              Core.<*> (o Core..:? "bucketValueCount")
              Core.<*> (o Core..:? "bucketValues" Core..!= Core.mempty)
              Core.<*> (o Core..:? "maxProbability")
              Core.<*> (o Core..:? "minProbability")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket
  where
  toJSON
    GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket {..} =
      Core.object
        ( Core.catMaybes
            [ ("bucketSize" Core..=) Core.. Core.AsText
                Core.<$> bucketSize,
              ("bucketValueCount" Core..=) Core.. Core.AsText
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
    { estimatedProbability = Core.Nothing,
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
              Core.<*> (o Core..:? "quasiIdsValues" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues
  where
  toJSON
    GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues {..} =
      Core.object
        ( Core.catMaybes
            [ ("estimatedProbability" Core..=)
                Core.<$> estimatedProbability,
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
    { deltaPresenceEstimationHistogram = Core.Nothing
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
            Core.<$> ( o Core..:? "deltaPresenceEstimationHistogram"
                         Core..!= Core.mempty
                     )
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2DeltaPresenceEstimationResult
  where
  toJSON
    GooglePrivacyDlpV2DeltaPresenceEstimationResult {..} =
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2DetectionRule
  where
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
      ( Core.catMaybes
          [("hotwordRule" Core..=) Core.<$> hotwordRule]
      )

-- | Custom information type based on a dictionary of words or phrases. This can be used to match sensitive information specific to the data, such as a list of employee IDs or job titles. Dictionary words are case-insensitive and all characters other than letters and digits in the unicode <https://en.wikipedia.org/wiki/Plane_%28Unicode%29#Basic_Multilingual_Plane Basic Multilingual Plane> will be replaced with whitespace when scanning for matches, so the dictionary phrase \"Sam Johnson\" will match all three phrases \"sam johnson\", \"Sam, Johnson\", and \"Sam (Johnson)\". Additionally, the characters surrounding any match must be of a different type than the adjacent characters within the word, so letters must be next to non-letters and digits next to non-digits. For example, the dictionary word \"jen\" will match the first three letters of the text \"jen123\" but will return no matches for \"jennifer\". Dictionary words containing a large number of characters that are not letters or digits may result in
-- unexpected findings because such characters are treated as whitespace. The <https://cloud.google.com/dlp/limits limits> page contains details about the size limits of dictionaries. For dictionaries that do not fit within these constraints, consider using @LargeCustomDictionaryConfig@ in the @StoredInfoType@ API.
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
          [ ("cloudStoragePath" Core..=)
              Core.<$> cloudStoragePath,
            ("wordList" Core..=) Core.<$> wordList
          ]
      )

-- | Combines all of the information about a DLP job.
--
-- /See:/ 'newGooglePrivacyDlpV2DlpJob' smart constructor.
data GooglePrivacyDlpV2DlpJob = GooglePrivacyDlpV2DlpJob
  { -- | Time when the job was created.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | Time when the job finished.
    endTime :: (Core.Maybe Core.DateTime'),
    -- | A stream of errors encountered running the job.
    errors :: (Core.Maybe [GooglePrivacyDlpV2Error]),
    -- | Results from inspecting a data source.
    inspectDetails :: (Core.Maybe GooglePrivacyDlpV2InspectDataSourceDetails),
    -- | If created by a job trigger, the resource name of the trigger that instantiated the job.
    jobTriggerName :: (Core.Maybe Core.Text),
    -- | The server-assigned name.
    name :: (Core.Maybe Core.Text),
    -- | Results from analyzing risk of a data source.
    riskDetails :: (Core.Maybe GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails),
    -- | Time when the job started.
    startTime :: (Core.Maybe Core.DateTime'),
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
    { createTime = Core.Nothing,
      endTime = Core.Nothing,
      errors = Core.Nothing,
      inspectDetails = Core.Nothing,
      jobTriggerName = Core.Nothing,
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
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "errors" Core..!= Core.mempty)
            Core.<*> (o Core..:? "inspectDetails")
            Core.<*> (o Core..:? "jobTriggerName")
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
          [ ("createTime" Core..=) Core.<$> createTime,
            ("endTime" Core..=) Core.<$> endTime,
            ("errors" Core..=) Core.<$> errors,
            ("inspectDetails" Core..=) Core.<$> inspectDetails,
            ("jobTriggerName" Core..=) Core.<$> jobTriggerName,
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2DocumentLocation
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2DocumentLocation"
      ( \o ->
          GooglePrivacyDlpV2DocumentLocation
            Core.<$> (o Core..:? "fileOffset")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2DocumentLocation
  where
  toJSON GooglePrivacyDlpV2DocumentLocation {..} =
    Core.object
      ( Core.catMaybes
          [ ("fileOffset" Core..=) Core.. Core.AsText
              Core.<$> fileOffset
          ]
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
      ( \o ->
          GooglePrivacyDlpV2EntityId
            Core.<$> (o Core..:? "field")
      )

instance Core.ToJSON GooglePrivacyDlpV2EntityId where
  toJSON GooglePrivacyDlpV2EntityId {..} =
    Core.object
      (Core.catMaybes [("field" Core..=) Core.<$> field])

-- | Details information about an error encountered during job execution or the results of an unsuccessful activation of the JobTrigger.
--
-- /See:/ 'newGooglePrivacyDlpV2Error' smart constructor.
data GooglePrivacyDlpV2Error = GooglePrivacyDlpV2Error
  { -- | Detailed error codes and messages.
    details :: (Core.Maybe GoogleRpcStatus),
    -- | The times the error occurred.
    timestamps :: (Core.Maybe [Core.DateTime'])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Error' with the minimum fields required to make a request.
newGooglePrivacyDlpV2Error ::
  GooglePrivacyDlpV2Error
newGooglePrivacyDlpV2Error =
  GooglePrivacyDlpV2Error {details = Core.Nothing, timestamps = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2Error where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2Error"
      ( \o ->
          GooglePrivacyDlpV2Error
            Core.<$> (o Core..:? "details")
            Core.<*> (o Core..:? "timestamps" Core..!= Core.mempty)
      )

instance Core.ToJSON GooglePrivacyDlpV2Error where
  toJSON GooglePrivacyDlpV2Error {..} =
    Core.object
      ( Core.catMaybes
          [ ("details" Core..=) Core.<$> details,
            ("timestamps" Core..=) Core.<$> timestamps
          ]
      )

-- | List of exclude infoTypes.
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2ExcludeInfoTypes
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ExcludeInfoTypes"
      ( \o ->
          GooglePrivacyDlpV2ExcludeInfoTypes
            Core.<$> (o Core..:? "infoTypes" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2ExcludeInfoTypes
  where
  toJSON GooglePrivacyDlpV2ExcludeInfoTypes {..} =
    Core.object
      ( Core.catMaybes
          [("infoTypes" Core..=) Core.<$> infoTypes]
      )

-- | The rule that specifies conditions when findings of infoTypes specified in @InspectionRuleSet@ are removed from results.
--
-- /See:/ 'newGooglePrivacyDlpV2ExclusionRule' smart constructor.
data GooglePrivacyDlpV2ExclusionRule = GooglePrivacyDlpV2ExclusionRule
  { -- | Dictionary which defines the rule.
    dictionary :: (Core.Maybe GooglePrivacyDlpV2Dictionary),
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
      excludeInfoTypes = Core.Nothing,
      matchingType = Core.Nothing,
      regex = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2ExclusionRule
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ExclusionRule"
      ( \o ->
          GooglePrivacyDlpV2ExclusionRule
            Core.<$> (o Core..:? "dictionary")
            Core.<*> (o Core..:? "excludeInfoTypes")
            Core.<*> (o Core..:? "matchingType")
            Core.<*> (o Core..:? "regex")
      )

instance Core.ToJSON GooglePrivacyDlpV2ExclusionRule where
  toJSON GooglePrivacyDlpV2ExclusionRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("dictionary" Core..=) Core.<$> dictionary,
            ("excludeInfoTypes" Core..=)
              Core.<$> excludeInfoTypes,
            ("matchingType" Core..=) Core.<$> matchingType,
            ("regex" Core..=) Core.<$> regex
          ]
      )

-- | An expression, consisting or an operator and conditions.
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
            ("logicalOperator" Core..=)
              Core.<$> logicalOperator
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
newGooglePrivacyDlpV2FieldId = GooglePrivacyDlpV2FieldId {name = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2FieldId where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2FieldId"
      ( \o ->
          GooglePrivacyDlpV2FieldId
            Core.<$> (o Core..:? "name")
      )

instance Core.ToJSON GooglePrivacyDlpV2FieldId where
  toJSON GooglePrivacyDlpV2FieldId {..} =
    Core.object
      (Core.catMaybes [("name" Core..=) Core.<$> name])

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

instance
  Core.FromJSON
    GooglePrivacyDlpV2FieldTransformation
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2FieldTransformation"
      ( \o ->
          GooglePrivacyDlpV2FieldTransformation
            Core.<$> (o Core..:? "condition")
            Core.<*> (o Core..:? "fields" Core..!= Core.mempty)
            Core.<*> (o Core..:? "infoTypeTransformations")
            Core.<*> (o Core..:? "primitiveTransformation")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2FieldTransformation
  where
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
  GooglePrivacyDlpV2FileSet {regexFileSet = Core.Nothing, url = Core.Nothing}

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

-- | Represents a piece of potentially sensitive content.
--
-- /See:/ 'newGooglePrivacyDlpV2Finding' smart constructor.
data GooglePrivacyDlpV2Finding = GooglePrivacyDlpV2Finding
  { -- | Timestamp when finding was detected.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | The unique finding id.
    findingId :: (Core.Maybe Core.Text),
    -- | The type of content that might have been found. Provided if @excluded_types@ is false.
    infoType :: (Core.Maybe GooglePrivacyDlpV2InfoType),
    -- | Time the job started that produced this finding.
    jobCreateTime :: (Core.Maybe Core.DateTime'),
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
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Finding_Labels' with the minimum fields required to make a request.
newGooglePrivacyDlpV2Finding_Labels ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  GooglePrivacyDlpV2Finding_Labels
newGooglePrivacyDlpV2Finding_Labels addtional =
  GooglePrivacyDlpV2Finding_Labels {addtional = addtional}

instance
  Core.FromJSON
    GooglePrivacyDlpV2Finding_Labels
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2Finding_Labels"
      ( \o ->
          GooglePrivacyDlpV2Finding_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON GooglePrivacyDlpV2Finding_Labels where
  toJSON GooglePrivacyDlpV2Finding_Labels {..} =
    Core.toJSON addtional

-- | Configuration to control the number of findings returned for inspection. This is not used for de-identification or data profiling.
--
-- /See:/ 'newGooglePrivacyDlpV2FindingLimits' smart constructor.
data GooglePrivacyDlpV2FindingLimits = GooglePrivacyDlpV2FindingLimits
  { -- | Configuration of findings limit given for specified infoTypes.
    maxFindingsPerInfoType :: (Core.Maybe [GooglePrivacyDlpV2InfoTypeLimit]),
    -- | Max number of findings that will be returned for each item scanned. When set within @InspectJobConfig@, the maximum returned is 2000 regardless if this is set higher. When set within @InspectContentRequest@, this field is ignored.
    maxFindingsPerItem :: (Core.Maybe Core.Int32),
    -- | Max number of findings that will be returned per request\/job. When set within @InspectContentRequest@, the maximum returned is 2000 regardless if this is set higher.
    maxFindingsPerRequest :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2FindingLimits' with the minimum fields required to make a request.
newGooglePrivacyDlpV2FindingLimits ::
  GooglePrivacyDlpV2FindingLimits
newGooglePrivacyDlpV2FindingLimits =
  GooglePrivacyDlpV2FindingLimits
    { maxFindingsPerInfoType = Core.Nothing,
      maxFindingsPerItem = Core.Nothing,
      maxFindingsPerRequest = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2FindingLimits
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2FindingLimits"
      ( \o ->
          GooglePrivacyDlpV2FindingLimits
            Core.<$> ( o Core..:? "maxFindingsPerInfoType"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "maxFindingsPerItem")
            Core.<*> (o Core..:? "maxFindingsPerRequest")
      )

instance Core.ToJSON GooglePrivacyDlpV2FindingLimits where
  toJSON GooglePrivacyDlpV2FindingLimits {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxFindingsPerInfoType" Core..=)
              Core.<$> maxFindingsPerInfoType,
            ("maxFindingsPerItem" Core..=)
              Core.<$> maxFindingsPerItem,
            ("maxFindingsPerRequest" Core..=)
              Core.<$> maxFindingsPerRequest
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
newGooglePrivacyDlpV2FinishDlpJobRequest = GooglePrivacyDlpV2FinishDlpJobRequest

instance
  Core.FromJSON
    GooglePrivacyDlpV2FinishDlpJobRequest
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2FinishDlpJobRequest"
      ( \o ->
          Core.pure GooglePrivacyDlpV2FinishDlpJobRequest
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2FinishDlpJobRequest
  where
  toJSON = Core.const Core.emptyObject

-- | Buckets values based on fixed size ranges. The Bucketing transformation can provide all of this functionality, but requires more configuration. This message is provided as a convenience to the user for simple bucketing strategies. The transformed value will be a hyphenated string of {lower/bound}-{upper/bound}. For example, if lower/bound = 10 and upper/bound = 20, all values that are within this bucket will be replaced with \"10-20\". This can be used on data of type: double, long. If the bound Value type differs from the type of data being transformed, we will first attempt converting the type of the data to be transformed to match the type of the bound before comparing. See https:\/\/cloud.google.com\/dlp\/docs\/concepts-bucketing to learn more.
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
    { bucketSize = Core.Nothing,
      lowerBound = Core.Nothing,
      upperBound = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2FixedSizeBucketingConfig
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2FixedSizeBucketingConfig"
      ( \o ->
          GooglePrivacyDlpV2FixedSizeBucketingConfig
            Core.<$> (o Core..:? "bucketSize")
            Core.<*> (o Core..:? "lowerBound")
            Core.<*> (o Core..:? "upperBound")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2FixedSizeBucketingConfig
  where
  toJSON GooglePrivacyDlpV2FixedSizeBucketingConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("bucketSize" Core..=) Core.<$> bucketSize,
            ("lowerBound" Core..=) Core.<$> lowerBound,
            ("upperBound" Core..=) Core.<$> upperBound
          ]
      )

-- | The rule that adjusts the likelihood of findings within a certain proximity of hotwords.
--
-- /See:/ 'newGooglePrivacyDlpV2HotwordRule' smart constructor.
data GooglePrivacyDlpV2HotwordRule = GooglePrivacyDlpV2HotwordRule
  { -- | Regular expression pattern defining what qualifies as a hotword.
    hotwordRegex :: (Core.Maybe GooglePrivacyDlpV2Regex),
    -- | Likelihood adjustment to apply to all matching findings.
    likelihoodAdjustment :: (Core.Maybe GooglePrivacyDlpV2LikelihoodAdjustment),
    -- | Proximity of the finding within which the entire hotword must reside. The total length of the window cannot exceed 1000 characters. Note that the finding itself will be included in the window, so that hotwords may be used to match substrings of the finding itself. For example, the certainty of a phone number regex \"(\\d{3}) \\d{3}-\\d{4}\" could be adjusted upwards if the area code is known to be the local area code of a company office using the hotword regex \"(xxx)\", where \"xxx\" is the area code in question.
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
            ("likelihoodAdjustment" Core..=)
              Core.<$> likelihoodAdjustment,
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
    { findingDetails = Core.Nothing,
      item = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2HybridContentItem
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2HybridContentItem"
      ( \o ->
          GooglePrivacyDlpV2HybridContentItem
            Core.<$> (o Core..:? "findingDetails")
            Core.<*> (o Core..:? "item")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2HybridContentItem
  where
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
    { containerDetails = Core.Nothing,
      fileOffset = Core.Nothing,
      labels = Core.Nothing,
      rowOffset = Core.Nothing,
      tableOptions = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2HybridFindingDetails
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2HybridFindingDetails"
      ( \o ->
          GooglePrivacyDlpV2HybridFindingDetails
            Core.<$> (o Core..:? "containerDetails")
            Core.<*> (o Core..:? "fileOffset")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "rowOffset")
            Core.<*> (o Core..:? "tableOptions")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2HybridFindingDetails
  where
  toJSON GooglePrivacyDlpV2HybridFindingDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("containerDetails" Core..=)
              Core.<$> containerDetails,
            ("fileOffset" Core..=) Core.. Core.AsText
              Core.<$> fileOffset,
            ("labels" Core..=) Core.<$> labels,
            ("rowOffset" Core..=) Core.. Core.AsText
              Core.<$> rowOffset,
            ("tableOptions" Core..=) Core.<$> tableOptions
          ]
      )

-- | Labels to represent user provided metadata about the data being inspected. If configured by the job, some key values may be required. The labels associated with @Finding@\'s produced by hybrid inspection. Label keys must be between 1 and 63 characters long and must conform to the following regular expression: @[a-z]([-a-z0-9]*[a-z0-9])?@. Label values must be between 0 and 63 characters long and must conform to the regular expression @([a-z]([-a-z0-9]*[a-z0-9])?)?@. No more than 10 labels can be associated with a given finding. Examples: * @\"environment\" : \"production\"@ * @\"pipeline\" : \"etl\"@
--
-- /See:/ 'newGooglePrivacyDlpV2HybridFindingDetails_Labels' smart constructor.
newtype GooglePrivacyDlpV2HybridFindingDetails_Labels = GooglePrivacyDlpV2HybridFindingDetails_Labels
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2HybridFindingDetails_Labels' with the minimum fields required to make a request.
newGooglePrivacyDlpV2HybridFindingDetails_Labels ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  GooglePrivacyDlpV2HybridFindingDetails_Labels
newGooglePrivacyDlpV2HybridFindingDetails_Labels addtional =
  GooglePrivacyDlpV2HybridFindingDetails_Labels {addtional = addtional}

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

instance
  Core.ToJSON
    GooglePrivacyDlpV2HybridFindingDetails_Labels
  where
  toJSON
    GooglePrivacyDlpV2HybridFindingDetails_Labels {..} =
      Core.toJSON addtional

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
  GooglePrivacyDlpV2HybridInspectDlpJobRequest {hybridItem = Core.Nothing}

instance
  Core.FromJSON
    GooglePrivacyDlpV2HybridInspectDlpJobRequest
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2HybridInspectDlpJobRequest"
      ( \o ->
          GooglePrivacyDlpV2HybridInspectDlpJobRequest
            Core.<$> (o Core..:? "hybridItem")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2HybridInspectDlpJobRequest
  where
  toJSON
    GooglePrivacyDlpV2HybridInspectDlpJobRequest {..} =
      Core.object
        ( Core.catMaybes
            [("hybridItem" Core..=) Core.<$> hybridItem]
        )

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
  GooglePrivacyDlpV2HybridInspectJobTriggerRequest {hybridItem = Core.Nothing}

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
  toJSON
    GooglePrivacyDlpV2HybridInspectJobTriggerRequest {..} =
      Core.object
        ( Core.catMaybes
            [("hybridItem" Core..=) Core.<$> hybridItem]
        )

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

instance
  Core.FromJSON
    GooglePrivacyDlpV2HybridInspectResponse
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2HybridInspectResponse"
      ( \o ->
          Core.pure GooglePrivacyDlpV2HybridInspectResponse
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2HybridInspectResponse
  where
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
    { abortedCount = Core.Nothing,
      pendingCount = Core.Nothing,
      processedCount = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2HybridInspectStatistics
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2HybridInspectStatistics"
      ( \o ->
          GooglePrivacyDlpV2HybridInspectStatistics
            Core.<$> (o Core..:? "abortedCount")
            Core.<*> (o Core..:? "pendingCount")
            Core.<*> (o Core..:? "processedCount")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2HybridInspectStatistics
  where
  toJSON GooglePrivacyDlpV2HybridInspectStatistics {..} =
    Core.object
      ( Core.catMaybes
          [ ("abortedCount" Core..=) Core.. Core.AsText
              Core.<$> abortedCount,
            ("pendingCount" Core..=) Core.. Core.AsText
              Core.<$> pendingCount,
            ("processedCount" Core..=) Core.. Core.AsText
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2HybridOptions
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2HybridOptions"
      ( \o ->
          GooglePrivacyDlpV2HybridOptions
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "labels")
            Core.<*> ( o Core..:? "requiredFindingLabelKeys"
                         Core..!= Core.mempty
                     )
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
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2HybridOptions_Labels' with the minimum fields required to make a request.
newGooglePrivacyDlpV2HybridOptions_Labels ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  GooglePrivacyDlpV2HybridOptions_Labels
newGooglePrivacyDlpV2HybridOptions_Labels addtional =
  GooglePrivacyDlpV2HybridOptions_Labels {addtional = addtional}

instance
  Core.FromJSON
    GooglePrivacyDlpV2HybridOptions_Labels
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2HybridOptions_Labels"
      ( \o ->
          GooglePrivacyDlpV2HybridOptions_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2HybridOptions_Labels
  where
  toJSON GooglePrivacyDlpV2HybridOptions_Labels {..} =
    Core.toJSON addtional

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

instance
  Core.FromJSON
    GooglePrivacyDlpV2ImageLocation
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ImageLocation"
      ( \o ->
          GooglePrivacyDlpV2ImageLocation
            Core.<$> (o Core..:? "boundingBoxes" Core..!= Core.mempty)
      )

instance Core.ToJSON GooglePrivacyDlpV2ImageLocation where
  toJSON GooglePrivacyDlpV2ImageLocation {..} =
    Core.object
      ( Core.catMaybes
          [("boundingBoxes" Core..=) Core.<$> boundingBoxes]
      )

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

instance
  Core.FromJSON
    GooglePrivacyDlpV2ImageRedactionConfig
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ImageRedactionConfig"
      ( \o ->
          GooglePrivacyDlpV2ImageRedactionConfig
            Core.<$> (o Core..:? "infoType")
            Core.<*> (o Core..:? "redactAllText")
            Core.<*> (o Core..:? "redactionColor")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2ImageRedactionConfig
  where
  toJSON GooglePrivacyDlpV2ImageRedactionConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("infoType" Core..=) Core.<$> infoType,
            ("redactAllText" Core..=) Core.<$> redactAllText,
            ("redactionColor" Core..=) Core.<$> redactionColor
          ]
      )

-- | Type of information detected by the API.
--
-- /See:/ 'newGooglePrivacyDlpV2InfoType' smart constructor.
data GooglePrivacyDlpV2InfoType = GooglePrivacyDlpV2InfoType
  { -- | Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed at https:\/\/cloud.google.com\/dlp\/docs\/infotypes-reference when specifying a built-in type. When sending Cloud DLP results to Data Catalog, infoType names should conform to the pattern @[A-Za-z0-9$-_]{1,64}@.
    name :: (Core.Maybe Core.Text),
    -- | Optional version name for this InfoType.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2InfoType' with the minimum fields required to make a request.
newGooglePrivacyDlpV2InfoType ::
  GooglePrivacyDlpV2InfoType
newGooglePrivacyDlpV2InfoType =
  GooglePrivacyDlpV2InfoType {name = Core.Nothing, version = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2InfoType where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2InfoType"
      ( \o ->
          GooglePrivacyDlpV2InfoType
            Core.<$> (o Core..:? "name") Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON GooglePrivacyDlpV2InfoType where
  toJSON GooglePrivacyDlpV2InfoType {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | InfoType description.
--
-- /See:/ 'newGooglePrivacyDlpV2InfoTypeDescription' smart constructor.
data GooglePrivacyDlpV2InfoTypeDescription = GooglePrivacyDlpV2InfoTypeDescription
  { -- | Description of the infotype. Translated when language is provided in the request.
    description :: (Core.Maybe Core.Text),
    -- | Human readable form of the infoType name.
    displayName :: (Core.Maybe Core.Text),
    -- | Internal name of the infoType.
    name :: (Core.Maybe Core.Text),
    -- | Which parts of the API supports this InfoType.
    supportedBy ::
      ( Core.Maybe
          [GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem]
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2InfoTypeDescription' with the minimum fields required to make a request.
newGooglePrivacyDlpV2InfoTypeDescription ::
  GooglePrivacyDlpV2InfoTypeDescription
newGooglePrivacyDlpV2InfoTypeDescription =
  GooglePrivacyDlpV2InfoTypeDescription
    { description = Core.Nothing,
      displayName = Core.Nothing,
      name = Core.Nothing,
      supportedBy = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2InfoTypeDescription
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2InfoTypeDescription"
      ( \o ->
          GooglePrivacyDlpV2InfoTypeDescription
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "supportedBy" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2InfoTypeDescription
  where
  toJSON GooglePrivacyDlpV2InfoTypeDescription {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("displayName" Core..=) Core.<$> displayName,
            ("name" Core..=) Core.<$> name,
            ("supportedBy" Core..=) Core.<$> supportedBy
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2InfoTypeLimit
  where
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2InfoTypeStats
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2InfoTypeStats"
      ( \o ->
          GooglePrivacyDlpV2InfoTypeStats
            Core.<$> (o Core..:? "count")
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
    { infoTypes = Core.Nothing,
      primitiveTransformation = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2InfoTypeTransformation
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2InfoTypeTransformation"
      ( \o ->
          GooglePrivacyDlpV2InfoTypeTransformation
            Core.<$> (o Core..:? "infoTypes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "primitiveTransformation")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2InfoTypeTransformation
  where
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
  GooglePrivacyDlpV2InfoTypeTransformations {transformations = Core.Nothing}

instance
  Core.FromJSON
    GooglePrivacyDlpV2InfoTypeTransformations
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2InfoTypeTransformations"
      ( \o ->
          GooglePrivacyDlpV2InfoTypeTransformations
            Core.<$> (o Core..:? "transformations" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2InfoTypeTransformations
  where
  toJSON GooglePrivacyDlpV2InfoTypeTransformations {..} =
    Core.object
      ( Core.catMaybes
          [ ("transformations" Core..=)
              Core.<$> transformations
          ]
      )

-- | Configuration description of the scanning process. When used with redactContent only info/types and min/likelihood are currently used.
--
-- /See:/ 'newGooglePrivacyDlpV2InspectConfig' smart constructor.
data GooglePrivacyDlpV2InspectConfig = GooglePrivacyDlpV2InspectConfig
  { -- | Deprecated and unused.
    contentOptions :: (Core.Maybe [GooglePrivacyDlpV2InspectConfig_ContentOptionsItem]),
    -- | CustomInfoTypes provided by the user. See https:\/\/cloud.google.com\/dlp\/docs\/creating-custom-infotypes to learn more.
    customInfoTypes :: (Core.Maybe [GooglePrivacyDlpV2CustomInfoType]),
    -- | When true, excludes type information of the findings. This is not used for data profiling.
    excludeInfoTypes :: (Core.Maybe Core.Bool),
    -- | When true, a contextual quote from the data that triggered a finding is included in the response; see Finding.quote. This is not used for data profiling.
    includeQuote :: (Core.Maybe Core.Bool),
    -- | Restricts what info_types to look for. The values must correspond to InfoType values returned by ListInfoTypes or listed at https:\/\/cloud.google.com\/dlp\/docs\/infotypes-reference. When no InfoTypes or CustomInfoTypes are specified in a request, the system may automatically choose what detectors to run. By default this may be all types, but may change over time as detectors are updated. If you need precise control and predictability as to what detectors are run you should specify specific InfoTypes listed in the reference, otherwise a default list will be used, which may change over time.
    infoTypes :: (Core.Maybe [GooglePrivacyDlpV2InfoType]),
    -- | Configuration to control the number of findings returned. This is not used for data profiling.
    limits :: (Core.Maybe GooglePrivacyDlpV2FindingLimits),
    -- | Only returns findings equal or above this threshold. The default is POSSIBLE. See https:\/\/cloud.google.com\/dlp\/docs\/likelihood to learn more.
    minLikelihood :: (Core.Maybe GooglePrivacyDlpV2InspectConfig_MinLikelihood),
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
      ruleSet = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2InspectConfig
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2InspectConfig"
      ( \o ->
          GooglePrivacyDlpV2InspectConfig
            Core.<$> (o Core..:? "contentOptions" Core..!= Core.mempty)
            Core.<*> (o Core..:? "customInfoTypes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "excludeInfoTypes")
            Core.<*> (o Core..:? "includeQuote")
            Core.<*> (o Core..:? "infoTypes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "limits")
            Core.<*> (o Core..:? "minLikelihood")
            Core.<*> (o Core..:? "ruleSet" Core..!= Core.mempty)
      )

instance Core.ToJSON GooglePrivacyDlpV2InspectConfig where
  toJSON GooglePrivacyDlpV2InspectConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentOptions" Core..=) Core.<$> contentOptions,
            ("customInfoTypes" Core..=) Core.<$> customInfoTypes,
            ("excludeInfoTypes" Core..=)
              Core.<$> excludeInfoTypes,
            ("includeQuote" Core..=) Core.<$> includeQuote,
            ("infoTypes" Core..=) Core.<$> infoTypes,
            ("limits" Core..=) Core.<$> limits,
            ("minLikelihood" Core..=) Core.<$> minLikelihood,
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
    { inspectConfig = Core.Nothing,
      inspectTemplateName = Core.Nothing,
      item = Core.Nothing,
      locationId = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2InspectContentRequest
  where
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

instance
  Core.ToJSON
    GooglePrivacyDlpV2InspectContentRequest
  where
  toJSON GooglePrivacyDlpV2InspectContentRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("inspectConfig" Core..=) Core.<$> inspectConfig,
            ("inspectTemplateName" Core..=)
              Core.<$> inspectTemplateName,
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2InspectContentResponse
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2InspectContentResponse"
      ( \o ->
          GooglePrivacyDlpV2InspectContentResponse
            Core.<$> (o Core..:? "result")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2InspectContentResponse
  where
  toJSON GooglePrivacyDlpV2InspectContentResponse {..} =
    Core.object
      (Core.catMaybes [("result" Core..=) Core.<$> result])

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
    { requestedOptions = Core.Nothing,
      result = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2InspectDataSourceDetails
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2InspectDataSourceDetails"
      ( \o ->
          GooglePrivacyDlpV2InspectDataSourceDetails
            Core.<$> (o Core..:? "requestedOptions")
            Core.<*> (o Core..:? "result")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2InspectDataSourceDetails
  where
  toJSON GooglePrivacyDlpV2InspectDataSourceDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("requestedOptions" Core..=)
              Core.<$> requestedOptions,
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2InspectJobConfig
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2InspectJobConfig"
      ( \o ->
          GooglePrivacyDlpV2InspectJobConfig
            Core.<$> (o Core..:? "actions" Core..!= Core.mempty)
            Core.<*> (o Core..:? "inspectConfig")
            Core.<*> (o Core..:? "inspectTemplateName")
            Core.<*> (o Core..:? "storageConfig")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2InspectJobConfig
  where
  toJSON GooglePrivacyDlpV2InspectJobConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("actions" Core..=) Core.<$> actions,
            ("inspectConfig" Core..=) Core.<$> inspectConfig,
            ("inspectTemplateName" Core..=)
              Core.<$> inspectTemplateName,
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2InspectResult
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2InspectResult"
      ( \o ->
          GooglePrivacyDlpV2InspectResult
            Core.<$> (o Core..:? "findings" Core..!= Core.mempty)
            Core.<*> (o Core..:? "findingsTruncated")
      )

instance Core.ToJSON GooglePrivacyDlpV2InspectResult where
  toJSON GooglePrivacyDlpV2InspectResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("findings" Core..=) Core.<$> findings,
            ("findingsTruncated" Core..=)
              Core.<$> findingsTruncated
          ]
      )

-- | The inspectTemplate contains a configuration (set of types of sensitive data to be detected) to be used anywhere you otherwise would normally specify InspectConfig. See https:\/\/cloud.google.com\/dlp\/docs\/concepts-templates to learn more.
--
-- /See:/ 'newGooglePrivacyDlpV2InspectTemplate' smart constructor.
data GooglePrivacyDlpV2InspectTemplate = GooglePrivacyDlpV2InspectTemplate
  { -- | Output only. The creation timestamp of an inspectTemplate.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | Short description (max 256 chars).
    description :: (Core.Maybe Core.Text),
    -- | Display name (max 256 chars).
    displayName :: (Core.Maybe Core.Text),
    -- | The core content of the template. Configuration of the scanning process.
    inspectConfig :: (Core.Maybe GooglePrivacyDlpV2InspectConfig),
    -- | Output only. The template name. The template will have one of the following formats: @projects\/PROJECT_ID\/inspectTemplates\/TEMPLATE_ID@ OR @organizations\/ORGANIZATION_ID\/inspectTemplates\/TEMPLATE_ID@;
    name :: (Core.Maybe Core.Text),
    -- | Output only. The last update timestamp of an inspectTemplate.
    updateTime :: (Core.Maybe Core.DateTime')
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2InspectTemplate
  where
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

instance
  Core.ToJSON
    GooglePrivacyDlpV2InspectTemplate
  where
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2InspectionRule
  where
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2InspectionRuleSet
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2InspectionRuleSet"
      ( \o ->
          GooglePrivacyDlpV2InspectionRuleSet
            Core.<$> (o Core..:? "infoTypes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "rules" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2InspectionRuleSet
  where
  toJSON GooglePrivacyDlpV2InspectionRuleSet {..} =
    Core.object
      ( Core.catMaybes
          [ ("infoTypes" Core..=) Core.<$> infoTypes,
            ("rules" Core..=) Core.<$> rules
          ]
      )

-- | Enable email notification to project owners and editors on jobs\'s completion\/failure.
--
-- /See:/ 'newGooglePrivacyDlpV2JobNotificationEmails' smart constructor.
data GooglePrivacyDlpV2JobNotificationEmails = GooglePrivacyDlpV2JobNotificationEmails
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2JobNotificationEmails' with the minimum fields required to make a request.
newGooglePrivacyDlpV2JobNotificationEmails ::
  GooglePrivacyDlpV2JobNotificationEmails
newGooglePrivacyDlpV2JobNotificationEmails =
  GooglePrivacyDlpV2JobNotificationEmails

instance
  Core.FromJSON
    GooglePrivacyDlpV2JobNotificationEmails
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2JobNotificationEmails"
      ( \o ->
          Core.pure GooglePrivacyDlpV2JobNotificationEmails
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2JobNotificationEmails
  where
  toJSON = Core.const Core.emptyObject

-- | Contains a configuration to make dlp api calls on a repeating basis. See https:\/\/cloud.google.com\/dlp\/docs\/concepts-job-triggers to learn more.
--
-- /See:/ 'newGooglePrivacyDlpV2JobTrigger' smart constructor.
data GooglePrivacyDlpV2JobTrigger = GooglePrivacyDlpV2JobTrigger
  { -- | Output only. The creation timestamp of a triggeredJob.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | User provided description (max 256 chars)
    description :: (Core.Maybe Core.Text),
    -- | Display name (max 100 chars)
    displayName :: (Core.Maybe Core.Text),
    -- | Output only. A stream of errors encountered when the trigger was activated. Repeated errors may result in the JobTrigger automatically being paused. Will return the last 100 errors. Whenever the JobTrigger is modified this list will be cleared.
    errors :: (Core.Maybe [GooglePrivacyDlpV2Error]),
    -- | For inspect jobs, a snapshot of the configuration.
    inspectJob :: (Core.Maybe GooglePrivacyDlpV2InspectJobConfig),
    -- | Output only. The timestamp of the last time this trigger executed.
    lastRunTime :: (Core.Maybe Core.DateTime'),
    -- | Unique resource name for the triggeredJob, assigned by the service when the triggeredJob is created, for example @projects\/dlp-test-project\/jobTriggers\/53234423@.
    name :: (Core.Maybe Core.Text),
    -- | Required. A status for this trigger.
    status :: (Core.Maybe GooglePrivacyDlpV2JobTrigger_Status),
    -- | A list of triggers which will be OR\'ed together. Only one in the list needs to trigger for a job to be started. The list may contain only a single Schedule trigger and must have at least one object.
    triggers :: (Core.Maybe [GooglePrivacyDlpV2Trigger]),
    -- | Output only. The last update timestamp of a triggeredJob.
    updateTime :: (Core.Maybe Core.DateTime')
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
            Core.<*> (o Core..:? "errors" Core..!= Core.mempty)
            Core.<*> (o Core..:? "inspectJob")
            Core.<*> (o Core..:? "lastRunTime")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "triggers" Core..!= Core.mempty)
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2KAnonymityConfig
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2KAnonymityConfig"
      ( \o ->
          GooglePrivacyDlpV2KAnonymityConfig
            Core.<$> (o Core..:? "entityId")
            Core.<*> (o Core..:? "quasiIds" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2KAnonymityConfig
  where
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
    { equivalenceClassSize = Core.Nothing,
      quasiIdsValues = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2KAnonymityEquivalenceClass
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2KAnonymityEquivalenceClass"
      ( \o ->
          GooglePrivacyDlpV2KAnonymityEquivalenceClass
            Core.<$> (o Core..:? "equivalenceClassSize")
            Core.<*> (o Core..:? "quasiIdsValues" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2KAnonymityEquivalenceClass
  where
  toJSON
    GooglePrivacyDlpV2KAnonymityEquivalenceClass {..} =
      Core.object
        ( Core.catMaybes
            [ ("equivalenceClassSize" Core..=) Core.. Core.AsText
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
    { bucketSize = Core.Nothing,
      bucketValueCount = Core.Nothing,
      bucketValues = Core.Nothing,
      equivalenceClassSizeLowerBound = Core.Nothing,
      equivalenceClassSizeUpperBound = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2KAnonymityHistogramBucket
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2KAnonymityHistogramBucket"
      ( \o ->
          GooglePrivacyDlpV2KAnonymityHistogramBucket
            Core.<$> (o Core..:? "bucketSize")
            Core.<*> (o Core..:? "bucketValueCount")
            Core.<*> (o Core..:? "bucketValues" Core..!= Core.mempty)
            Core.<*> (o Core..:? "equivalenceClassSizeLowerBound")
            Core.<*> (o Core..:? "equivalenceClassSizeUpperBound")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2KAnonymityHistogramBucket
  where
  toJSON
    GooglePrivacyDlpV2KAnonymityHistogramBucket {..} =
      Core.object
        ( Core.catMaybes
            [ ("bucketSize" Core..=) Core.. Core.AsText
                Core.<$> bucketSize,
              ("bucketValueCount" Core..=) Core.. Core.AsText
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
    { equivalenceClassHistogramBuckets = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2KAnonymityResult
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2KAnonymityResult"
      ( \o ->
          GooglePrivacyDlpV2KAnonymityResult
            Core.<$> ( o Core..:? "equivalenceClassHistogramBuckets"
                         Core..!= Core.mempty
                     )
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2KAnonymityResult
  where
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
    { auxiliaryTables = Core.Nothing,
      quasiIds = Core.Nothing,
      regionCode = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2KMapEstimationConfig
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2KMapEstimationConfig"
      ( \o ->
          GooglePrivacyDlpV2KMapEstimationConfig
            Core.<$> (o Core..:? "auxiliaryTables" Core..!= Core.mempty)
            Core.<*> (o Core..:? "quasiIds" Core..!= Core.mempty)
            Core.<*> (o Core..:? "regionCode")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2KMapEstimationConfig
  where
  toJSON GooglePrivacyDlpV2KMapEstimationConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("auxiliaryTables" Core..=)
              Core.<$> auxiliaryTables,
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
    { bucketSize = Core.Nothing,
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
            Core.<$> (o Core..:? "bucketSize")
              Core.<*> (o Core..:? "bucketValueCount")
              Core.<*> (o Core..:? "bucketValues" Core..!= Core.mempty)
              Core.<*> (o Core..:? "maxAnonymity")
              Core.<*> (o Core..:? "minAnonymity")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2KMapEstimationHistogramBucket
  where
  toJSON
    GooglePrivacyDlpV2KMapEstimationHistogramBucket {..} =
      Core.object
        ( Core.catMaybes
            [ ("bucketSize" Core..=) Core.. Core.AsText
                Core.<$> bucketSize,
              ("bucketValueCount" Core..=) Core.. Core.AsText
                Core.<$> bucketValueCount,
              ("bucketValues" Core..=) Core.<$> bucketValues,
              ("maxAnonymity" Core..=) Core.. Core.AsText
                Core.<$> maxAnonymity,
              ("minAnonymity" Core..=) Core.. Core.AsText
                Core.<$> minAnonymity
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
    { estimatedAnonymity = Core.Nothing,
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
            Core.<$> (o Core..:? "estimatedAnonymity")
              Core.<*> (o Core..:? "quasiIdsValues" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2KMapEstimationQuasiIdValues
  where
  toJSON
    GooglePrivacyDlpV2KMapEstimationQuasiIdValues {..} =
      Core.object
        ( Core.catMaybes
            [ ("estimatedAnonymity" Core..=) Core.. Core.AsText
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
    { kMapEstimationHistogram = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2KMapEstimationResult
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2KMapEstimationResult"
      ( \o ->
          GooglePrivacyDlpV2KMapEstimationResult
            Core.<$> ( o Core..:? "kMapEstimationHistogram"
                         Core..!= Core.mempty
                     )
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2KMapEstimationResult
  where
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
  GooglePrivacyDlpV2Key {partitionId = Core.Nothing, path = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2Key where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2Key"
      ( \o ->
          GooglePrivacyDlpV2Key
            Core.<$> (o Core..:? "partitionId")
            Core.<*> (o Core..:? "path" Core..!= Core.mempty)
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2KindExpression
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2KindExpression"
      ( \o ->
          GooglePrivacyDlpV2KindExpression
            Core.<$> (o Core..:? "name")
      )

instance Core.ToJSON GooglePrivacyDlpV2KindExpression where
  toJSON GooglePrivacyDlpV2KindExpression {..} =
    Core.object
      (Core.catMaybes [("name" Core..=) Core.<$> name])

-- | Include to use an existing data crypto key wrapped by KMS. The wrapped key must be a 128-, 192-, or 256-bit key. Authorization requires the following IAM permissions when sending a request to perform a crypto transformation using a KMS-wrapped crypto key: dlp.kms.encrypt For more information, see [Creating a wrapped key] (https:\/\/cloud.google.com\/dlp\/docs\/create-wrapped-key). Note: When you use Cloud KMS for cryptographic operations, <https://cloud.google.com/kms/pricing charges apply>.
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
    { cryptoKeyName = Core.Nothing,
      wrappedKey = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2KmsWrappedCryptoKey
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2KmsWrappedCryptoKey"
      ( \o ->
          GooglePrivacyDlpV2KmsWrappedCryptoKey
            Core.<$> (o Core..:? "cryptoKeyName")
            Core.<*> (o Core..:? "wrappedKey")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2KmsWrappedCryptoKey
  where
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2LDiversityConfig
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2LDiversityConfig"
      ( \o ->
          GooglePrivacyDlpV2LDiversityConfig
            Core.<$> (o Core..:? "quasiIds" Core..!= Core.mempty)
            Core.<*> (o Core..:? "sensitiveAttribute")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2LDiversityConfig
  where
  toJSON GooglePrivacyDlpV2LDiversityConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("quasiIds" Core..=) Core.<$> quasiIds,
            ("sensitiveAttribute" Core..=)
              Core.<$> sensitiveAttribute
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
    { equivalenceClassSize = Core.Nothing,
      numDistinctSensitiveValues = Core.Nothing,
      quasiIdsValues = Core.Nothing,
      topSensitiveValues = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2LDiversityEquivalenceClass
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2LDiversityEquivalenceClass"
      ( \o ->
          GooglePrivacyDlpV2LDiversityEquivalenceClass
            Core.<$> (o Core..:? "equivalenceClassSize")
            Core.<*> (o Core..:? "numDistinctSensitiveValues")
            Core.<*> (o Core..:? "quasiIdsValues" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "topSensitiveValues"
                         Core..!= Core.mempty
                     )
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2LDiversityEquivalenceClass
  where
  toJSON
    GooglePrivacyDlpV2LDiversityEquivalenceClass {..} =
      Core.object
        ( Core.catMaybes
            [ ("equivalenceClassSize" Core..=) Core.. Core.AsText
                Core.<$> equivalenceClassSize,
              ("numDistinctSensitiveValues" Core..=)
                Core.. Core.AsText
                Core.<$> numDistinctSensitiveValues,
              ("quasiIdsValues" Core..=) Core.<$> quasiIdsValues,
              ("topSensitiveValues" Core..=)
                Core.<$> topSensitiveValues
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
    { bucketSize = Core.Nothing,
      bucketValueCount = Core.Nothing,
      bucketValues = Core.Nothing,
      sensitiveValueFrequencyLowerBound = Core.Nothing,
      sensitiveValueFrequencyUpperBound = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2LDiversityHistogramBucket
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2LDiversityHistogramBucket"
      ( \o ->
          GooglePrivacyDlpV2LDiversityHistogramBucket
            Core.<$> (o Core..:? "bucketSize")
            Core.<*> (o Core..:? "bucketValueCount")
            Core.<*> (o Core..:? "bucketValues" Core..!= Core.mempty)
            Core.<*> (o Core..:? "sensitiveValueFrequencyLowerBound")
            Core.<*> (o Core..:? "sensitiveValueFrequencyUpperBound")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2LDiversityHistogramBucket
  where
  toJSON
    GooglePrivacyDlpV2LDiversityHistogramBucket {..} =
      Core.object
        ( Core.catMaybes
            [ ("bucketSize" Core..=) Core.. Core.AsText
                Core.<$> bucketSize,
              ("bucketValueCount" Core..=) Core.. Core.AsText
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
    { sensitiveValueFrequencyHistogramBuckets = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2LDiversityResult
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2LDiversityResult"
      ( \o ->
          GooglePrivacyDlpV2LDiversityResult
            Core.<$> ( o Core..:? "sensitiveValueFrequencyHistogramBuckets"
                         Core..!= Core.mempty
                     )
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2LDiversityResult
  where
  toJSON GooglePrivacyDlpV2LDiversityResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("sensitiveValueFrequencyHistogramBuckets" Core..=)
              Core.<$> sensitiveValueFrequencyHistogramBuckets
          ]
      )

-- | Configuration for a custom dictionary created from a data source of any size up to the maximum size defined in the <https://cloud.google.com/dlp/limits limits> page. The artifacts of dictionary creation are stored in the specified Google Cloud Storage location. Consider using @CustomInfoType.Dictionary@ for smaller dictionaries that satisfy the size requirements.
--
-- /See:/ 'newGooglePrivacyDlpV2LargeCustomDictionaryConfig' smart constructor.
data GooglePrivacyDlpV2LargeCustomDictionaryConfig = GooglePrivacyDlpV2LargeCustomDictionaryConfig
  { -- | Field in a BigQuery table where each cell represents a dictionary phrase.
    bigQueryField :: (Core.Maybe GooglePrivacyDlpV2BigQueryField),
    -- | Set of files containing newline-delimited lists of dictionary phrases.
    cloudStorageFileSet :: (Core.Maybe GooglePrivacyDlpV2CloudStorageFileSet),
    -- | Location to store dictionary artifacts in Google Cloud Storage. These files will only be accessible by project owners and the DLP API. If any of these artifacts are modified, the dictionary is considered invalid and can no longer be used.
    outputPath :: (Core.Maybe GooglePrivacyDlpV2CloudStoragePath)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2LargeCustomDictionaryConfig' with the minimum fields required to make a request.
newGooglePrivacyDlpV2LargeCustomDictionaryConfig ::
  GooglePrivacyDlpV2LargeCustomDictionaryConfig
newGooglePrivacyDlpV2LargeCustomDictionaryConfig =
  GooglePrivacyDlpV2LargeCustomDictionaryConfig
    { bigQueryField = Core.Nothing,
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

instance
  Core.ToJSON
    GooglePrivacyDlpV2LargeCustomDictionaryConfig
  where
  toJSON
    GooglePrivacyDlpV2LargeCustomDictionaryConfig {..} =
      Core.object
        ( Core.catMaybes
            [ ("bigQueryField" Core..=) Core.<$> bigQueryField,
              ("cloudStorageFileSet" Core..=)
                Core.<$> cloudStorageFileSet,
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
  GooglePrivacyDlpV2LargeCustomDictionaryStats {approxNumPhrases = Core.Nothing}

instance
  Core.FromJSON
    GooglePrivacyDlpV2LargeCustomDictionaryStats
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2LargeCustomDictionaryStats"
      ( \o ->
          GooglePrivacyDlpV2LargeCustomDictionaryStats
            Core.<$> (o Core..:? "approxNumPhrases")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2LargeCustomDictionaryStats
  where
  toJSON
    GooglePrivacyDlpV2LargeCustomDictionaryStats {..} =
      Core.object
        ( Core.catMaybes
            [ ("approxNumPhrases" Core..=) Core.. Core.AsText
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
newGooglePrivacyDlpV2LeaveUntransformed = GooglePrivacyDlpV2LeaveUntransformed

instance
  Core.FromJSON
    GooglePrivacyDlpV2LeaveUntransformed
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2LeaveUntransformed"
      ( \o ->
          Core.pure GooglePrivacyDlpV2LeaveUntransformed
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2LeaveUntransformed
  where
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
    { fixedLikelihood = Core.Nothing,
      relativeLikelihood = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2LikelihoodAdjustment
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2LikelihoodAdjustment"
      ( \o ->
          GooglePrivacyDlpV2LikelihoodAdjustment
            Core.<$> (o Core..:? "fixedLikelihood")
            Core.<*> (o Core..:? "relativeLikelihood")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2LikelihoodAdjustment
  where
  toJSON GooglePrivacyDlpV2LikelihoodAdjustment {..} =
    Core.object
      ( Core.catMaybes
          [ ("fixedLikelihood" Core..=)
              Core.<$> fixedLikelihood,
            ("relativeLikelihood" Core..=)
              Core.<$> relativeLikelihood
          ]
      )

-- | Response message for ListDeidentifyTemplates.
--
-- /See:/ 'newGooglePrivacyDlpV2ListDeidentifyTemplatesResponse' smart constructor.
data GooglePrivacyDlpV2ListDeidentifyTemplatesResponse = GooglePrivacyDlpV2ListDeidentifyTemplatesResponse
  { -- | List of deidentify templates, up to page_size in ListDeidentifyTemplatesRequest.
    deidentifyTemplates :: (Core.Maybe [GooglePrivacyDlpV2DeidentifyTemplate]),
    -- | If the next page is available then the next page token to be used in following ListDeidentifyTemplates request.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ListDeidentifyTemplatesResponse' with the minimum fields required to make a request.
newGooglePrivacyDlpV2ListDeidentifyTemplatesResponse ::
  GooglePrivacyDlpV2ListDeidentifyTemplatesResponse
newGooglePrivacyDlpV2ListDeidentifyTemplatesResponse =
  GooglePrivacyDlpV2ListDeidentifyTemplatesResponse
    { deidentifyTemplates = Core.Nothing,
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
            Core.<$> ( o Core..:? "deidentifyTemplates"
                         Core..!= Core.mempty
                     )
              Core.<*> (o Core..:? "nextPageToken")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2ListDeidentifyTemplatesResponse
  where
  toJSON
    GooglePrivacyDlpV2ListDeidentifyTemplatesResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("deidentifyTemplates" Core..=)
                Core.<$> deidentifyTemplates,
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2ListDlpJobsResponse
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ListDlpJobsResponse"
      ( \o ->
          GooglePrivacyDlpV2ListDlpJobsResponse
            Core.<$> (o Core..:? "jobs" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2ListDlpJobsResponse
  where
  toJSON GooglePrivacyDlpV2ListDlpJobsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("jobs" Core..=) Core.<$> jobs,
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2ListInfoTypesResponse
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ListInfoTypesResponse"
      ( \o ->
          GooglePrivacyDlpV2ListInfoTypesResponse
            Core.<$> (o Core..:? "infoTypes" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2ListInfoTypesResponse
  where
  toJSON GooglePrivacyDlpV2ListInfoTypesResponse {..} =
    Core.object
      ( Core.catMaybes
          [("infoTypes" Core..=) Core.<$> infoTypes]
      )

-- | Response message for ListInspectTemplates.
--
-- /See:/ 'newGooglePrivacyDlpV2ListInspectTemplatesResponse' smart constructor.
data GooglePrivacyDlpV2ListInspectTemplatesResponse = GooglePrivacyDlpV2ListInspectTemplatesResponse
  { -- | List of inspectTemplates, up to page_size in ListInspectTemplatesRequest.
    inspectTemplates :: (Core.Maybe [GooglePrivacyDlpV2InspectTemplate]),
    -- | If the next page is available then the next page token to be used in following ListInspectTemplates request.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ListInspectTemplatesResponse' with the minimum fields required to make a request.
newGooglePrivacyDlpV2ListInspectTemplatesResponse ::
  GooglePrivacyDlpV2ListInspectTemplatesResponse
newGooglePrivacyDlpV2ListInspectTemplatesResponse =
  GooglePrivacyDlpV2ListInspectTemplatesResponse
    { inspectTemplates = Core.Nothing,
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
            Core.<$> (o Core..:? "inspectTemplates" Core..!= Core.mempty)
              Core.<*> (o Core..:? "nextPageToken")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2ListInspectTemplatesResponse
  where
  toJSON
    GooglePrivacyDlpV2ListInspectTemplatesResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("inspectTemplates" Core..=)
                Core.<$> inspectTemplates,
              ("nextPageToken" Core..=) Core.<$> nextPageToken
            ]
        )

-- | Response message for ListJobTriggers.
--
-- /See:/ 'newGooglePrivacyDlpV2ListJobTriggersResponse' smart constructor.
data GooglePrivacyDlpV2ListJobTriggersResponse = GooglePrivacyDlpV2ListJobTriggersResponse
  { -- | List of triggeredJobs, up to page_size in ListJobTriggersRequest.
    jobTriggers :: (Core.Maybe [GooglePrivacyDlpV2JobTrigger]),
    -- | If the next page is available then the next page token to be used in following ListJobTriggers request.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ListJobTriggersResponse' with the minimum fields required to make a request.
newGooglePrivacyDlpV2ListJobTriggersResponse ::
  GooglePrivacyDlpV2ListJobTriggersResponse
newGooglePrivacyDlpV2ListJobTriggersResponse =
  GooglePrivacyDlpV2ListJobTriggersResponse
    { jobTriggers = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2ListJobTriggersResponse
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ListJobTriggersResponse"
      ( \o ->
          GooglePrivacyDlpV2ListJobTriggersResponse
            Core.<$> (o Core..:? "jobTriggers" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2ListJobTriggersResponse
  where
  toJSON GooglePrivacyDlpV2ListJobTriggersResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("jobTriggers" Core..=) Core.<$> jobTriggers,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response message for ListStoredInfoTypes.
--
-- /See:/ 'newGooglePrivacyDlpV2ListStoredInfoTypesResponse' smart constructor.
data GooglePrivacyDlpV2ListStoredInfoTypesResponse = GooglePrivacyDlpV2ListStoredInfoTypesResponse
  { -- | If the next page is available then the next page token to be used in following ListStoredInfoTypes request.
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
    { nextPageToken = Core.Nothing,
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
              Core.<*> (o Core..:? "storedInfoTypes" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2ListStoredInfoTypesResponse
  where
  toJSON
    GooglePrivacyDlpV2ListStoredInfoTypesResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
              ("storedInfoTypes" Core..=)
                Core.<$> storedInfoTypes
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
            Core.<*> (o Core..:? "contentLocations" Core..!= Core.mempty)
      )

instance Core.ToJSON GooglePrivacyDlpV2Location where
  toJSON GooglePrivacyDlpV2Location {..} =
    Core.object
      ( Core.catMaybes
          [ ("byteRange" Core..=) Core.<$> byteRange,
            ("codepointRange" Core..=) Core.<$> codepointRange,
            ("container" Core..=) Core.<$> container,
            ("contentLocations" Core..=)
              Core.<$> contentLocations
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2MetadataLocation
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2MetadataLocation"
      ( \o ->
          GooglePrivacyDlpV2MetadataLocation
            Core.<$> (o Core..:? "storageLabel")
            Core.<*> (o Core..:? "type")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2MetadataLocation
  where
  toJSON GooglePrivacyDlpV2MetadataLocation {..} =
    Core.object
      ( Core.catMaybes
          [ ("storageLabel" Core..=) Core.<$> storageLabel,
            ("type" Core..=) Core.<$> type'
          ]
      )

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

instance
  Core.FromJSON
    GooglePrivacyDlpV2NumericalStatsConfig
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2NumericalStatsConfig"
      ( \o ->
          GooglePrivacyDlpV2NumericalStatsConfig
            Core.<$> (o Core..:? "field")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2NumericalStatsConfig
  where
  toJSON GooglePrivacyDlpV2NumericalStatsConfig {..} =
    Core.object
      (Core.catMaybes [("field" Core..=) Core.<$> field])

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

instance
  Core.FromJSON
    GooglePrivacyDlpV2NumericalStatsResult
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2NumericalStatsResult"
      ( \o ->
          GooglePrivacyDlpV2NumericalStatsResult
            Core.<$> (o Core..:? "maxValue")
            Core.<*> (o Core..:? "minValue")
            Core.<*> (o Core..:? "quantileValues" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2NumericalStatsResult
  where
  toJSON GooglePrivacyDlpV2NumericalStatsResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxValue" Core..=) Core.<$> maxValue,
            ("minValue" Core..=) Core.<$> minValue,
            ("quantileValues" Core..=) Core.<$> quantileValues
          ]
      )

-- | Cloud repository for storing output.
--
-- /See:/ 'newGooglePrivacyDlpV2OutputStorageConfig' smart constructor.
data GooglePrivacyDlpV2OutputStorageConfig = GooglePrivacyDlpV2OutputStorageConfig
  { -- | Schema used for writing the findings for Inspect jobs. This field is only used for Inspect and must be unspecified for Risk jobs. Columns are derived from the @Finding@ object. If appending to an existing table, any columns from the predefined schema that are missing will be added. No columns in the existing table will be deleted. If unspecified, then all available columns will be used for a new table or an (existing) table with no schema, and no changes will be made to an existing table that has a schema. Only for use with external storage.
    outputSchema :: (Core.Maybe GooglePrivacyDlpV2OutputStorageConfig_OutputSchema),
    -- | Store findings in an existing table or a new table in an existing dataset. If table/id is not set a new one will be generated for you with the following format: dlp/googleapis/yyyy/mm/dd/[dlp/job/id]. Pacific timezone will be used for generating the date details. For Inspect, each column in an existing output table must have the same name, type, and mode of a field in the @Finding@ object. For Risk, an existing output table should be the output of a previous Risk analysis job run on the same source table, with the same privacy metric and quasi-identifiers. Risk jobs that analyze the same table but compute a different privacy metric, or use different sets of quasi-identifiers, cannot store their results in the same table.
    table :: (Core.Maybe GooglePrivacyDlpV2BigQueryTable)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2OutputStorageConfig' with the minimum fields required to make a request.
newGooglePrivacyDlpV2OutputStorageConfig ::
  GooglePrivacyDlpV2OutputStorageConfig
newGooglePrivacyDlpV2OutputStorageConfig =
  GooglePrivacyDlpV2OutputStorageConfig
    { outputSchema = Core.Nothing,
      table = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2OutputStorageConfig
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2OutputStorageConfig"
      ( \o ->
          GooglePrivacyDlpV2OutputStorageConfig
            Core.<$> (o Core..:? "outputSchema")
            Core.<*> (o Core..:? "table")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2OutputStorageConfig
  where
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
            Core.<$> (o Core..:? "id")
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
    -- | Ffx-Fpe
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
    { bucketingConfig = Core.Nothing,
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2PrimitiveTransformation
  where
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

instance
  Core.ToJSON
    GooglePrivacyDlpV2PrimitiveTransformation
  where
  toJSON GooglePrivacyDlpV2PrimitiveTransformation {..} =
    Core.object
      ( Core.catMaybes
          [ ("bucketingConfig" Core..=)
              Core.<$> bucketingConfig,
            ("characterMaskConfig" Core..=)
              Core.<$> characterMaskConfig,
            ("cryptoDeterministicConfig" Core..=)
              Core.<$> cryptoDeterministicConfig,
            ("cryptoHashConfig" Core..=)
              Core.<$> cryptoHashConfig,
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
    { categoricalStatsConfig = Core.Nothing,
      deltaPresenceEstimationConfig = Core.Nothing,
      kAnonymityConfig = Core.Nothing,
      kMapEstimationConfig = Core.Nothing,
      lDiversityConfig = Core.Nothing,
      numericalStatsConfig = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2PrivacyMetric
  where
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
            ("kAnonymityConfig" Core..=)
              Core.<$> kAnonymityConfig,
            ("kMapEstimationConfig" Core..=)
              Core.<$> kMapEstimationConfig,
            ("lDiversityConfig" Core..=)
              Core.<$> lDiversityConfig,
            ("numericalStatsConfig" Core..=)
              Core.<$> numericalStatsConfig
          ]
      )

-- | Message for specifying a window around a finding to apply a detection rule.
--
-- /See:/ 'newGooglePrivacyDlpV2Proximity' smart constructor.
data GooglePrivacyDlpV2Proximity = GooglePrivacyDlpV2Proximity
  { -- | Number of characters after the finding to consider.
    windowAfter :: (Core.Maybe Core.Int32),
    -- | Number of characters before the finding to consider.
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

-- | Publish findings of a DlpJob to Data Catalog. Labels summarizing the results of the DlpJob will be applied to the entry for the resource scanned in Data Catalog. Any labels previously written by another DlpJob will be deleted. InfoType naming patterns are strictly enforced when using this feature. Note that the findings will be persisted in Data Catalog storage and are governed by Data Catalog service-specific policy, see https:\/\/cloud.google.com\/terms\/service-terms Only a single instance of this action can be specified and only allowed if all resources being scanned are BigQuery tables. Compatible with: Inspect
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
          Core.pure
            GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog
  where
  toJSON = Core.const Core.emptyObject

-- | Publish the result summary of a DlpJob to the Cloud Security Command Center (CSCC Alpha). This action is only available for projects which are parts of an organization and whitelisted for the alpha Cloud Security Command Center. The action will publish count of finding instances and their info types. The summary of findings will be persisted in CSCC and are governed by CSCC service-specific policy, see https:\/\/cloud.google.com\/terms\/service-terms Only a single instance of this action can be specified. Compatible with: Inspect
--
-- /See:/ 'newGooglePrivacyDlpV2PublishSummaryToCscc' smart constructor.
data GooglePrivacyDlpV2PublishSummaryToCscc = GooglePrivacyDlpV2PublishSummaryToCscc
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2PublishSummaryToCscc' with the minimum fields required to make a request.
newGooglePrivacyDlpV2PublishSummaryToCscc ::
  GooglePrivacyDlpV2PublishSummaryToCscc
newGooglePrivacyDlpV2PublishSummaryToCscc =
  GooglePrivacyDlpV2PublishSummaryToCscc

instance
  Core.FromJSON
    GooglePrivacyDlpV2PublishSummaryToCscc
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2PublishSummaryToCscc"
      ( \o ->
          Core.pure GooglePrivacyDlpV2PublishSummaryToCscc
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2PublishSummaryToCscc
  where
  toJSON = Core.const Core.emptyObject

-- | Publish a message into given Pub\/Sub topic when DlpJob has completed. The message contains a single field, @DlpJobName@, which is equal to the finished job\'s <https://cloud.google.com/dlp/docs/reference/rest/v2/projects.dlpJobs#DlpJob DlpJob.name>. Compatible with: Inspect, Risk
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2PublishToPubSub
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2PublishToPubSub"
      ( \o ->
          GooglePrivacyDlpV2PublishToPubSub
            Core.<$> (o Core..:? "topic")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2PublishToPubSub
  where
  toJSON GooglePrivacyDlpV2PublishToPubSub {..} =
    Core.object
      (Core.catMaybes [("topic" Core..=) Core.<$> topic])

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

instance
  Core.FromJSON
    GooglePrivacyDlpV2PublishToStackdriver
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2PublishToStackdriver"
      ( \o ->
          Core.pure GooglePrivacyDlpV2PublishToStackdriver
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2PublishToStackdriver
  where
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2QuasiIdentifierField
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2QuasiIdentifierField"
      ( \o ->
          GooglePrivacyDlpV2QuasiIdentifierField
            Core.<$> (o Core..:? "customTag")
            Core.<*> (o Core..:? "field")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2QuasiIdentifierField
  where
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
          GooglePrivacyDlpV2QuoteInfo
            Core.<$> (o Core..:? "dateTime")
      )

instance Core.ToJSON GooglePrivacyDlpV2QuoteInfo where
  toJSON GooglePrivacyDlpV2QuoteInfo {..} =
    Core.object
      ( Core.catMaybes
          [("dateTime" Core..=) Core.<$> dateTime]
      )

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
            Core.<$> (o Core..:? "end") Core.<*> (o Core..:? "start")
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2RecordCondition
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2RecordCondition"
      ( \o ->
          GooglePrivacyDlpV2RecordCondition
            Core.<$> (o Core..:? "expressions")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2RecordCondition
  where
  toJSON GooglePrivacyDlpV2RecordCondition {..} =
    Core.object
      ( Core.catMaybes
          [("expressions" Core..=) Core.<$> expressions]
      )

-- | Message for a unique key indicating a record that contains a finding.
--
-- /See:/ 'newGooglePrivacyDlpV2RecordKey' smart constructor.
data GooglePrivacyDlpV2RecordKey = GooglePrivacyDlpV2RecordKey
  { -- |
    bigQueryKey :: (Core.Maybe GooglePrivacyDlpV2BigQueryKey),
    -- |
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
            Core.<*> (o Core..:? "idValues" Core..!= Core.mempty)
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2RecordLocation
  where
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2RecordSuppression
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2RecordSuppression"
      ( \o ->
          GooglePrivacyDlpV2RecordSuppression
            Core.<$> (o Core..:? "condition")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2RecordSuppression
  where
  toJSON GooglePrivacyDlpV2RecordSuppression {..} =
    Core.object
      ( Core.catMaybes
          [("condition" Core..=) Core.<$> condition]
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
    { fieldTransformations = Core.Nothing,
      recordSuppressions = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2RecordTransformations
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2RecordTransformations"
      ( \o ->
          GooglePrivacyDlpV2RecordTransformations
            Core.<$> ( o Core..:? "fieldTransformations"
                         Core..!= Core.mempty
                     )
            Core.<*> ( o Core..:? "recordSuppressions"
                         Core..!= Core.mempty
                     )
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2RecordTransformations
  where
  toJSON GooglePrivacyDlpV2RecordTransformations {..} =
    Core.object
      ( Core.catMaybes
          [ ("fieldTransformations" Core..=)
              Core.<$> fieldTransformations,
            ("recordSuppressions" Core..=)
              Core.<$> recordSuppressions
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2RedactImageRequest
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2RedactImageRequest"
      ( \o ->
          GooglePrivacyDlpV2RedactImageRequest
            Core.<$> (o Core..:? "byteItem")
            Core.<*> ( o Core..:? "imageRedactionConfigs"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "includeFindings")
            Core.<*> (o Core..:? "inspectConfig")
            Core.<*> (o Core..:? "locationId")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2RedactImageRequest
  where
  toJSON GooglePrivacyDlpV2RedactImageRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("byteItem" Core..=) Core.<$> byteItem,
            ("imageRedactionConfigs" Core..=)
              Core.<$> imageRedactionConfigs,
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
    { extractedText = Core.Nothing,
      inspectResult = Core.Nothing,
      redactedImage = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2RedactImageResponse
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2RedactImageResponse"
      ( \o ->
          GooglePrivacyDlpV2RedactImageResponse
            Core.<$> (o Core..:? "extractedText")
            Core.<*> (o Core..:? "inspectResult")
            Core.<*> (o Core..:? "redactedImage")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2RedactImageResponse
  where
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
  GooglePrivacyDlpV2Regex {groupIndexes = Core.Nothing, pattern' = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2Regex where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2Regex"
      ( \o ->
          GooglePrivacyDlpV2Regex
            Core.<$> (o Core..:? "groupIndexes" Core..!= Core.mempty)
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
    { inspectConfig = Core.Nothing,
      inspectTemplateName = Core.Nothing,
      item = Core.Nothing,
      locationId = Core.Nothing,
      reidentifyConfig = Core.Nothing,
      reidentifyTemplateName = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2ReidentifyContentRequest
  where
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

instance
  Core.ToJSON
    GooglePrivacyDlpV2ReidentifyContentRequest
  where
  toJSON GooglePrivacyDlpV2ReidentifyContentRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("inspectConfig" Core..=) Core.<$> inspectConfig,
            ("inspectTemplateName" Core..=)
              Core.<$> inspectTemplateName,
            ("item" Core..=) Core.<$> item,
            ("locationId" Core..=) Core.<$> locationId,
            ("reidentifyConfig" Core..=)
              Core.<$> reidentifyConfig,
            ("reidentifyTemplateName" Core..=)
              Core.<$> reidentifyTemplateName
          ]
      )

-- | Results of re-identifying a item.
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2ReidentifyContentResponse
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ReidentifyContentResponse"
      ( \o ->
          GooglePrivacyDlpV2ReidentifyContentResponse
            Core.<$> (o Core..:? "item") Core.<*> (o Core..:? "overview")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2ReidentifyContentResponse
  where
  toJSON
    GooglePrivacyDlpV2ReidentifyContentResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("item" Core..=) Core.<$> item,
              ("overview" Core..=) Core.<$> overview
            ]
        )

-- | Replace each input value with a value randomly selected from the dictionary.
--
-- /See:/ 'newGooglePrivacyDlpV2ReplaceDictionaryConfig' smart constructor.
newtype GooglePrivacyDlpV2ReplaceDictionaryConfig = GooglePrivacyDlpV2ReplaceDictionaryConfig
  { -- | A list of words to select from for random replacement. The <https://cloud.google.com/dlp/limits limits> page contains details about the size limits of dictionaries.
    wordList :: (Core.Maybe GooglePrivacyDlpV2WordList)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ReplaceDictionaryConfig' with the minimum fields required to make a request.
newGooglePrivacyDlpV2ReplaceDictionaryConfig ::
  GooglePrivacyDlpV2ReplaceDictionaryConfig
newGooglePrivacyDlpV2ReplaceDictionaryConfig =
  GooglePrivacyDlpV2ReplaceDictionaryConfig {wordList = Core.Nothing}

instance
  Core.FromJSON
    GooglePrivacyDlpV2ReplaceDictionaryConfig
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ReplaceDictionaryConfig"
      ( \o ->
          GooglePrivacyDlpV2ReplaceDictionaryConfig
            Core.<$> (o Core..:? "wordList")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2ReplaceDictionaryConfig
  where
  toJSON GooglePrivacyDlpV2ReplaceDictionaryConfig {..} =
    Core.object
      ( Core.catMaybes
          [("wordList" Core..=) Core.<$> wordList]
      )

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

instance
  Core.FromJSON
    GooglePrivacyDlpV2ReplaceValueConfig
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ReplaceValueConfig"
      ( \o ->
          GooglePrivacyDlpV2ReplaceValueConfig
            Core.<$> (o Core..:? "newValue")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2ReplaceValueConfig
  where
  toJSON GooglePrivacyDlpV2ReplaceValueConfig {..} =
    Core.object
      ( Core.catMaybes
          [("newValue" Core..=) Core.<$> newValue']
      )

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

instance
  Core.FromJSON
    GooglePrivacyDlpV2ReplaceWithInfoTypeConfig
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ReplaceWithInfoTypeConfig"
      ( \o ->
          Core.pure
            GooglePrivacyDlpV2ReplaceWithInfoTypeConfig
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2ReplaceWithInfoTypeConfig
  where
  toJSON = Core.const Core.emptyObject

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

instance
  Core.FromJSON
    GooglePrivacyDlpV2RequestedOptions
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2RequestedOptions"
      ( \o ->
          GooglePrivacyDlpV2RequestedOptions
            Core.<$> (o Core..:? "jobConfig")
            Core.<*> (o Core..:? "snapshotInspectTemplate")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2RequestedOptions
  where
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
  GooglePrivacyDlpV2RequestedRiskAnalysisOptions {jobConfig = Core.Nothing}

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

instance
  Core.ToJSON
    GooglePrivacyDlpV2RequestedRiskAnalysisOptions
  where
  toJSON
    GooglePrivacyDlpV2RequestedRiskAnalysisOptions {..} =
      Core.object
        ( Core.catMaybes
            [("jobConfig" Core..=) Core.<$> jobConfig]
        )

-- | All result fields mentioned below are updated while the job is processing.
--
-- /See:/ 'newGooglePrivacyDlpV2Result' smart constructor.
data GooglePrivacyDlpV2Result = GooglePrivacyDlpV2Result
  { -- | Statistics related to the processing of hybrid inspect.
    hybridStats :: (Core.Maybe GooglePrivacyDlpV2HybridInspectStatistics),
    -- | Statistics of how many instances of each info type were found during inspect job.
    infoTypeStats :: (Core.Maybe [GooglePrivacyDlpV2InfoTypeStats]),
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
            Core.<*> (o Core..:? "infoTypeStats" Core..!= Core.mempty)
            Core.<*> (o Core..:? "processedBytes")
            Core.<*> (o Core..:? "totalEstimatedBytes")
      )

instance Core.ToJSON GooglePrivacyDlpV2Result where
  toJSON GooglePrivacyDlpV2Result {..} =
    Core.object
      ( Core.catMaybes
          [ ("hybridStats" Core..=) Core.<$> hybridStats,
            ("infoTypeStats" Core..=) Core.<$> infoTypeStats,
            ("processedBytes" Core..=) Core.. Core.AsText
              Core.<$> processedBytes,
            ("totalEstimatedBytes" Core..=) Core.. Core.AsText
              Core.<$> totalEstimatedBytes
          ]
      )

-- | Configuration for a risk analysis job. See https:\/\/cloud.google.com\/dlp\/docs\/concepts-risk-analysis to learn more.
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2RiskAnalysisJobConfig
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2RiskAnalysisJobConfig"
      ( \o ->
          GooglePrivacyDlpV2RiskAnalysisJobConfig
            Core.<$> (o Core..:? "actions" Core..!= Core.mempty)
            Core.<*> (o Core..:? "privacyMetric")
            Core.<*> (o Core..:? "sourceTable")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2RiskAnalysisJobConfig
  where
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
newGooglePrivacyDlpV2Row = GooglePrivacyDlpV2Row {values = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2Row where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2Row"
      ( \o ->
          GooglePrivacyDlpV2Row
            Core.<$> (o Core..:? "values" Core..!= Core.mempty)
      )

instance Core.ToJSON GooglePrivacyDlpV2Row where
  toJSON GooglePrivacyDlpV2Row {..} =
    Core.object
      (Core.catMaybes [("values" Core..=) Core.<$> values])

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
      ( Core.catMaybes
          [("outputConfig" Core..=) Core.<$> outputConfig]
      )

-- | Schedule for inspect job triggers.
--
-- /See:/ 'newGooglePrivacyDlpV2Schedule' smart constructor.
newtype GooglePrivacyDlpV2Schedule = GooglePrivacyDlpV2Schedule
  { -- | With this option a job is started a regular periodic basis. For example: every day (86400 seconds). A scheduled start time will be skipped if the previous execution has not ended when its scheduled time occurs. This value must be set to a time duration greater than or equal to 1 day and can be no longer than 60 days.
    recurrencePeriodDuration :: (Core.Maybe Core.GDuration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Schedule' with the minimum fields required to make a request.
newGooglePrivacyDlpV2Schedule ::
  GooglePrivacyDlpV2Schedule
newGooglePrivacyDlpV2Schedule =
  GooglePrivacyDlpV2Schedule {recurrencePeriodDuration = Core.Nothing}

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

instance
  Core.FromJSON
    GooglePrivacyDlpV2StatisticalTable
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2StatisticalTable"
      ( \o ->
          GooglePrivacyDlpV2StatisticalTable
            Core.<$> (o Core..:? "quasiIds" Core..!= Core.mempty)
            Core.<*> (o Core..:? "relativeFrequency")
            Core.<*> (o Core..:? "table")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2StatisticalTable
  where
  toJSON GooglePrivacyDlpV2StatisticalTable {..} =
    Core.object
      ( Core.catMaybes
          [ ("quasiIds" Core..=) Core.<$> quasiIds,
            ("relativeFrequency" Core..=)
              Core.<$> relativeFrequency,
            ("table" Core..=) Core.<$> table
          ]
      )

-- | Shared message indicating Cloud storage type.
--
-- /See:/ 'newGooglePrivacyDlpV2StorageConfig' smart constructor.
data GooglePrivacyDlpV2StorageConfig = GooglePrivacyDlpV2StorageConfig
  { -- | BigQuery options.
    bigQueryOptions :: (Core.Maybe GooglePrivacyDlpV2BigQueryOptions),
    -- | Google Cloud Storage options.
    cloudStorageOptions :: (Core.Maybe GooglePrivacyDlpV2CloudStorageOptions),
    -- | Google Cloud Datastore options.
    datastoreOptions :: (Core.Maybe GooglePrivacyDlpV2DatastoreOptions),
    -- | Hybrid inspection options.
    hybridOptions :: (Core.Maybe GooglePrivacyDlpV2HybridOptions),
    -- |
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2StorageConfig
  where
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
          [ ("bigQueryOptions" Core..=)
              Core.<$> bigQueryOptions,
            ("cloudStorageOptions" Core..=)
              Core.<$> cloudStorageOptions,
            ("datastoreOptions" Core..=)
              Core.<$> datastoreOptions,
            ("hybridOptions" Core..=) Core.<$> hybridOptions,
            ("timespanConfig" Core..=) Core.<$> timespanConfig
          ]
      )

-- | Storage metadata label to indicate which metadata entry contains findings.
--
-- /See:/ 'newGooglePrivacyDlpV2StorageMetadataLabel' smart constructor.
newtype GooglePrivacyDlpV2StorageMetadataLabel = GooglePrivacyDlpV2StorageMetadataLabel
  { -- |
    key :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2StorageMetadataLabel' with the minimum fields required to make a request.
newGooglePrivacyDlpV2StorageMetadataLabel ::
  GooglePrivacyDlpV2StorageMetadataLabel
newGooglePrivacyDlpV2StorageMetadataLabel =
  GooglePrivacyDlpV2StorageMetadataLabel {key = Core.Nothing}

instance
  Core.FromJSON
    GooglePrivacyDlpV2StorageMetadataLabel
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2StorageMetadataLabel"
      ( \o ->
          GooglePrivacyDlpV2StorageMetadataLabel
            Core.<$> (o Core..:? "key")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2StorageMetadataLabel
  where
  toJSON GooglePrivacyDlpV2StorageMetadataLabel {..} =
    Core.object
      (Core.catMaybes [("key" Core..=) Core.<$> key])

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

instance
  Core.FromJSON
    GooglePrivacyDlpV2StoredInfoType
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2StoredInfoType"
      ( \o ->
          GooglePrivacyDlpV2StoredInfoType
            Core.<$> (o Core..:? "currentVersion")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "pendingVersions" Core..!= Core.mempty)
      )

instance Core.ToJSON GooglePrivacyDlpV2StoredInfoType where
  toJSON GooglePrivacyDlpV2StoredInfoType {..} =
    Core.object
      ( Core.catMaybes
          [ ("currentVersion" Core..=) Core.<$> currentVersion,
            ("name" Core..=) Core.<$> name,
            ("pendingVersions" Core..=)
              Core.<$> pendingVersions
          ]
      )

-- | Configuration for stored infoTypes. All fields and subfield are provided by the user. For more information, see https:\/\/cloud.google.com\/dlp\/docs\/creating-custom-infotypes.
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
    { description = Core.Nothing,
      dictionary = Core.Nothing,
      displayName = Core.Nothing,
      largeCustomDictionary = Core.Nothing,
      regex = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2StoredInfoTypeConfig
  where
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

instance
  Core.ToJSON
    GooglePrivacyDlpV2StoredInfoTypeConfig
  where
  toJSON GooglePrivacyDlpV2StoredInfoTypeConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("dictionary" Core..=) Core.<$> dictionary,
            ("displayName" Core..=) Core.<$> displayName,
            ("largeCustomDictionary" Core..=)
              Core.<$> largeCustomDictionary,
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
  GooglePrivacyDlpV2StoredInfoTypeStats {largeCustomDictionary = Core.Nothing}

instance
  Core.FromJSON
    GooglePrivacyDlpV2StoredInfoTypeStats
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2StoredInfoTypeStats"
      ( \o ->
          GooglePrivacyDlpV2StoredInfoTypeStats
            Core.<$> (o Core..:? "largeCustomDictionary")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2StoredInfoTypeStats
  where
  toJSON GooglePrivacyDlpV2StoredInfoTypeStats {..} =
    Core.object
      ( Core.catMaybes
          [ ("largeCustomDictionary" Core..=)
              Core.<$> largeCustomDictionary
          ]
      )

-- | Version of a StoredInfoType, including the configuration used to build it, create timestamp, and current state.
--
-- /See:/ 'newGooglePrivacyDlpV2StoredInfoTypeVersion' smart constructor.
data GooglePrivacyDlpV2StoredInfoTypeVersion = GooglePrivacyDlpV2StoredInfoTypeVersion
  { -- | StoredInfoType configuration.
    config :: (Core.Maybe GooglePrivacyDlpV2StoredInfoTypeConfig),
    -- | Create timestamp of the version. Read-only, determined by the system when the version is created.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | Errors that occurred when creating this storedInfoType version, or anomalies detected in the storedInfoType data that render it unusable. Only the five most recent errors will be displayed, with the most recent error appearing first. For example, some of the data for stored custom dictionaries is put in the user\'s Google Cloud Storage bucket, and if this data is modified or deleted by the user or another system, the dictionary becomes invalid. If any errors occur, fix the problem indicated by the error message and use the UpdateStoredInfoType API method to create another version of the storedInfoType to continue using it, reusing the same @config@ if it was not the source of the error.
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2StoredInfoTypeVersion
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2StoredInfoTypeVersion"
      ( \o ->
          GooglePrivacyDlpV2StoredInfoTypeVersion
            Core.<$> (o Core..:? "config")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "errors" Core..!= Core.mempty)
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "stats")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2StoredInfoTypeVersion
  where
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
    createTime :: (Core.Maybe Core.DateTime'),
    -- | Resource name of the requested @StoredInfoType@, for example @organizations\/433245324\/storedInfoTypes\/432452342@ or @projects\/project-id\/storedInfoTypes\/432452342@.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2StoredType' with the minimum fields required to make a request.
newGooglePrivacyDlpV2StoredType ::
  GooglePrivacyDlpV2StoredType
newGooglePrivacyDlpV2StoredType =
  GooglePrivacyDlpV2StoredType {createTime = Core.Nothing, name = Core.Nothing}

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

instance
  Core.FromJSON
    GooglePrivacyDlpV2SummaryResult
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2SummaryResult"
      ( \o ->
          GooglePrivacyDlpV2SummaryResult
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "count")
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

-- | Message for detecting output from deidentification transformations such as <https://cloud.google.com/dlp/docs/reference/rest/v2/organizations.deidentifyTemplates#cryptoreplaceffxfpeconfig CryptoReplaceFfxFpeConfig>. These types of transformations are those that perform pseudonymization, thereby producing a \"surrogate\" as output. This should be used in conjunction with a field on the transformation such as @surrogate_info_type@. This CustomInfoType does not support the use of @detection_rules@.
--
-- /See:/ 'newGooglePrivacyDlpV2SurrogateType' smart constructor.
data GooglePrivacyDlpV2SurrogateType = GooglePrivacyDlpV2SurrogateType
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2SurrogateType' with the minimum fields required to make a request.
newGooglePrivacyDlpV2SurrogateType ::
  GooglePrivacyDlpV2SurrogateType
newGooglePrivacyDlpV2SurrogateType = GooglePrivacyDlpV2SurrogateType

instance
  Core.FromJSON
    GooglePrivacyDlpV2SurrogateType
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2SurrogateType"
      (\o -> Core.pure GooglePrivacyDlpV2SurrogateType)

instance Core.ToJSON GooglePrivacyDlpV2SurrogateType where
  toJSON = Core.const Core.emptyObject

-- | Structured content to inspect. Up to 50,000 @Value@s per request allowed. See https:\/\/cloud.google.com\/dlp\/docs\/inspecting-structured-text#inspecting/a/table to learn more.
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
  GooglePrivacyDlpV2Table {headers = Core.Nothing, rows = Core.Nothing}

instance Core.FromJSON GooglePrivacyDlpV2Table where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2Table"
      ( \o ->
          GooglePrivacyDlpV2Table
            Core.<$> (o Core..:? "headers" Core..!= Core.mempty)
            Core.<*> (o Core..:? "rows" Core..!= Core.mempty)
      )

instance Core.ToJSON GooglePrivacyDlpV2Table where
  toJSON GooglePrivacyDlpV2Table {..} =
    Core.object
      ( Core.catMaybes
          [ ("headers" Core..=) Core.<$> headers,
            ("rows" Core..=) Core.<$> rows
          ]
      )

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

instance
  Core.FromJSON
    GooglePrivacyDlpV2TableLocation
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2TableLocation"
      ( \o ->
          GooglePrivacyDlpV2TableLocation
            Core.<$> (o Core..:? "rowIndex")
      )

instance Core.ToJSON GooglePrivacyDlpV2TableLocation where
  toJSON GooglePrivacyDlpV2TableLocation {..} =
    Core.object
      ( Core.catMaybes
          [ ("rowIndex" Core..=) Core.. Core.AsText
              Core.<$> rowIndex
          ]
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
            Core.<$> ( o Core..:? "identifyingFields"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON GooglePrivacyDlpV2TableOptions where
  toJSON GooglePrivacyDlpV2TableOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("identifyingFields" Core..=)
              Core.<$> identifyingFields
          ]
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2TimePartConfig
  where
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
      ( Core.catMaybes
          [("partToExtract" Core..=) Core.<$> partToExtract]
      )

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
          GooglePrivacyDlpV2TimeZone
            Core.<$> (o Core..:? "offsetMinutes")
      )

instance Core.ToJSON GooglePrivacyDlpV2TimeZone where
  toJSON GooglePrivacyDlpV2TimeZone {..} =
    Core.object
      ( Core.catMaybes
          [("offsetMinutes" Core..=) Core.<$> offsetMinutes]
      )

-- | Configuration of the timespan of the items to include in scanning. Currently only supported when inspecting Google Cloud Storage and BigQuery.
--
-- /See:/ 'newGooglePrivacyDlpV2TimespanConfig' smart constructor.
data GooglePrivacyDlpV2TimespanConfig = GooglePrivacyDlpV2TimespanConfig
  { -- | When the job is started by a JobTrigger we will automatically figure out a valid start_time to avoid scanning files that have not been modified since the last time the JobTrigger executed. This will be based on the time of the execution of the last run of the JobTrigger.
    enableAutoPopulationOfTimespanConfig :: (Core.Maybe Core.Bool),
    -- | Exclude files, tables, or rows newer than this value. If not set, no upper time limit is applied.
    endTime :: (Core.Maybe Core.DateTime'),
    -- | Exclude files, tables, or rows older than this value. If not set, no lower time limit is applied.
    startTime :: (Core.Maybe Core.DateTime'),
    -- | Specification of the field containing the timestamp of scanned items. Used for data sources like Datastore and BigQuery. For BigQuery: If this value is not specified and the table was modified between the given start and end times, the entire table will be scanned. If this value is specified, then rows are filtered based on the given start and end times. Rows with a @NULL@ value in the provided BigQuery column are skipped. Valid data types of the provided BigQuery column are: @INTEGER@, @DATE@, @TIMESTAMP@, and @DATETIME@. For Datastore: If this value is specified, then entities are filtered based on the given start and end times. If an entity does not contain the provided timestamp property or contains empty or invalid values, then it is included. Valid data types of the provided timestamp property are: @TIMESTAMP@.
    timestampField :: (Core.Maybe GooglePrivacyDlpV2FieldId)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2TimespanConfig' with the minimum fields required to make a request.
newGooglePrivacyDlpV2TimespanConfig ::
  GooglePrivacyDlpV2TimespanConfig
newGooglePrivacyDlpV2TimespanConfig =
  GooglePrivacyDlpV2TimespanConfig
    { enableAutoPopulationOfTimespanConfig = Core.Nothing,
      endTime = Core.Nothing,
      startTime = Core.Nothing,
      timestampField = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2TimespanConfig
  where
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
    { leaveUntransformed = Core.Nothing,
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

instance
  Core.ToJSON
    GooglePrivacyDlpV2TransformationErrorHandling
  where
  toJSON
    GooglePrivacyDlpV2TransformationErrorHandling {..} =
      Core.object
        ( Core.catMaybes
            [ ("leaveUntransformed" Core..=)
                Core.<$> leaveUntransformed,
              ("throwError" Core..=) Core.<$> throwError
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
    { transformationSummaries = Core.Nothing,
      transformedBytes = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2TransformationOverview
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2TransformationOverview"
      ( \o ->
          GooglePrivacyDlpV2TransformationOverview
            Core.<$> ( o Core..:? "transformationSummaries"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "transformedBytes")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2TransformationOverview
  where
  toJSON GooglePrivacyDlpV2TransformationOverview {..} =
    Core.object
      ( Core.catMaybes
          [ ("transformationSummaries" Core..=)
              Core.<$> transformationSummaries,
            ("transformedBytes" Core..=) Core.. Core.AsText
              Core.<$> transformedBytes
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2TransformationSummary
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2TransformationSummary"
      ( \o ->
          GooglePrivacyDlpV2TransformationSummary
            Core.<$> (o Core..:? "field")
            Core.<*> ( o Core..:? "fieldTransformations"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "infoType")
            Core.<*> (o Core..:? "recordSuppress")
            Core.<*> (o Core..:? "results" Core..!= Core.mempty)
            Core.<*> (o Core..:? "transformation")
            Core.<*> (o Core..:? "transformedBytes")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2TransformationSummary
  where
  toJSON GooglePrivacyDlpV2TransformationSummary {..} =
    Core.object
      ( Core.catMaybes
          [ ("field" Core..=) Core.<$> field,
            ("fieldTransformations" Core..=)
              Core.<$> fieldTransformations,
            ("infoType" Core..=) Core.<$> infoType,
            ("recordSuppress" Core..=) Core.<$> recordSuppress,
            ("results" Core..=) Core.<$> results,
            ("transformation" Core..=) Core.<$> transformation,
            ("transformedBytes" Core..=) Core.. Core.AsText
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

instance
  Core.FromJSON
    GooglePrivacyDlpV2TransientCryptoKey
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2TransientCryptoKey"
      ( \o ->
          GooglePrivacyDlpV2TransientCryptoKey
            Core.<$> (o Core..:? "name")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2TransientCryptoKey
  where
  toJSON GooglePrivacyDlpV2TransientCryptoKey {..} =
    Core.object
      (Core.catMaybes [("name" Core..=) Core.<$> name])

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
  GooglePrivacyDlpV2Trigger {manual = Core.Nothing, schedule = Core.Nothing}

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

instance
  Core.FromJSON
    GooglePrivacyDlpV2UnwrappedCryptoKey
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2UnwrappedCryptoKey"
      ( \o ->
          GooglePrivacyDlpV2UnwrappedCryptoKey
            Core.<$> (o Core..:? "key")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2UnwrappedCryptoKey
  where
  toJSON GooglePrivacyDlpV2UnwrappedCryptoKey {..} =
    Core.object
      (Core.catMaybes [("key" Core..=) Core.<$> key])

-- | Request message for UpdateDeidentifyTemplate.
--
-- /See:/ 'newGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest' smart constructor.
data GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest = GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest
  { -- | New DeidentifyTemplate value.
    deidentifyTemplate :: (Core.Maybe GooglePrivacyDlpV2DeidentifyTemplate),
    -- | Mask to control which fields get updated.
    updateMask :: (Core.Maybe Core.GFieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest' with the minimum fields required to make a request.
newGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest ::
  GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest
newGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest =
  GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest
    { deidentifyTemplate = Core.Nothing,
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
  toJSON
    GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest {..} =
      Core.object
        ( Core.catMaybes
            [ ("deidentifyTemplate" Core..=)
                Core.<$> deidentifyTemplate,
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
    updateMask :: (Core.Maybe Core.GFieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2UpdateInspectTemplateRequest' with the minimum fields required to make a request.
newGooglePrivacyDlpV2UpdateInspectTemplateRequest ::
  GooglePrivacyDlpV2UpdateInspectTemplateRequest
newGooglePrivacyDlpV2UpdateInspectTemplateRequest =
  GooglePrivacyDlpV2UpdateInspectTemplateRequest
    { inspectTemplate = Core.Nothing,
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

instance
  Core.ToJSON
    GooglePrivacyDlpV2UpdateInspectTemplateRequest
  where
  toJSON
    GooglePrivacyDlpV2UpdateInspectTemplateRequest {..} =
      Core.object
        ( Core.catMaybes
            [ ("inspectTemplate" Core..=)
                Core.<$> inspectTemplate,
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
    updateMask :: (Core.Maybe Core.GFieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2UpdateJobTriggerRequest' with the minimum fields required to make a request.
newGooglePrivacyDlpV2UpdateJobTriggerRequest ::
  GooglePrivacyDlpV2UpdateJobTriggerRequest
newGooglePrivacyDlpV2UpdateJobTriggerRequest =
  GooglePrivacyDlpV2UpdateJobTriggerRequest
    { jobTrigger = Core.Nothing,
      updateMask = Core.Nothing
    }

instance
  Core.FromJSON
    GooglePrivacyDlpV2UpdateJobTriggerRequest
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2UpdateJobTriggerRequest"
      ( \o ->
          GooglePrivacyDlpV2UpdateJobTriggerRequest
            Core.<$> (o Core..:? "jobTrigger")
            Core.<*> (o Core..:? "updateMask")
      )

instance
  Core.ToJSON
    GooglePrivacyDlpV2UpdateJobTriggerRequest
  where
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
    updateMask :: (Core.Maybe Core.GFieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePrivacyDlpV2UpdateStoredInfoTypeRequest' with the minimum fields required to make a request.
newGooglePrivacyDlpV2UpdateStoredInfoTypeRequest ::
  GooglePrivacyDlpV2UpdateStoredInfoTypeRequest
newGooglePrivacyDlpV2UpdateStoredInfoTypeRequest =
  GooglePrivacyDlpV2UpdateStoredInfoTypeRequest
    { config = Core.Nothing,
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

instance
  Core.ToJSON
    GooglePrivacyDlpV2UpdateStoredInfoTypeRequest
  where
  toJSON
    GooglePrivacyDlpV2UpdateStoredInfoTypeRequest {..} =
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
    timestampValue :: (Core.Maybe Core.DateTime')
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
            Core.<*> (o Core..:? "integerValue")
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
            ("integerValue" Core..=) Core.. Core.AsText
              Core.<$> integerValue,
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
  GooglePrivacyDlpV2ValueFrequency {count = Core.Nothing, value = Core.Nothing}

instance
  Core.FromJSON
    GooglePrivacyDlpV2ValueFrequency
  where
  parseJSON =
    Core.withObject
      "GooglePrivacyDlpV2ValueFrequency"
      ( \o ->
          GooglePrivacyDlpV2ValueFrequency
            Core.<$> (o Core..:? "count") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON GooglePrivacyDlpV2ValueFrequency where
  toJSON GooglePrivacyDlpV2ValueFrequency {..} =
    Core.object
      ( Core.catMaybes
          [ ("count" Core..=) Core.. Core.AsText Core.<$> count,
            ("value" Core..=) Core.<$> value
          ]
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
      ( \o ->
          GooglePrivacyDlpV2WordList
            Core.<$> (o Core..:? "words" Core..!= Core.mempty)
      )

instance Core.ToJSON GooglePrivacyDlpV2WordList where
  toJSON GooglePrivacyDlpV2WordList {..} =
    Core.object
      (Core.catMaybes [("words" Core..=) Core.<$> words])

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON representation for @Empty@ is empty JSON object @{}@.
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
            Core.<*> (o Core..:? "details" Core..!= Core.mempty)
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
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleRpcStatus_DetailsItem' with the minimum fields required to make a request.
newGoogleRpcStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  GoogleRpcStatus_DetailsItem
newGoogleRpcStatus_DetailsItem addtional =
  GoogleRpcStatus_DetailsItem {addtional = addtional}

instance Core.FromJSON GoogleRpcStatus_DetailsItem where
  parseJSON =
    Core.withObject
      "GoogleRpcStatus_DetailsItem"
      ( \o ->
          GoogleRpcStatus_DetailsItem
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON GoogleRpcStatus_DetailsItem where
  toJSON GoogleRpcStatus_DetailsItem {..} =
    Core.toJSON addtional

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
  GoogleTypeDate {day = Core.Nothing, month = Core.Nothing, year = Core.Nothing}

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
  { -- | Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value \"24:00:00\" for scenarios like business closing time.
    hours :: (Core.Maybe Core.Int32),
    -- | Minutes of hour of day. Must be from 0 to 59.
    minutes :: (Core.Maybe Core.Int32),
    -- | Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
    nanos :: (Core.Maybe Core.Int32),
    -- | Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds.
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
