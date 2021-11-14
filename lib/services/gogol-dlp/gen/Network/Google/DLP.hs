{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.DLP
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides methods for detection, risk analysis, and de-identification of
-- privacy-sensitive fragments in text, images, and Google Cloud Platform
-- storage repositories.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference>
module Network.Google.DLP
    (
    -- * Service Configuration
      dLPService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , DLPAPI

    -- * Resources

    -- ** dlp.infoTypes.list
    , module Network.Google.Resource.DLP.InfoTypes.List

    -- ** dlp.locations.infoTypes.list
    , module Network.Google.Resource.DLP.Locations.InfoTypes.List

    -- ** dlp.organizations.deidentifyTemplates.create
    , module Network.Google.Resource.DLP.Organizations.DeidentifyTemplates.Create

    -- ** dlp.organizations.deidentifyTemplates.delete
    , module Network.Google.Resource.DLP.Organizations.DeidentifyTemplates.Delete

    -- ** dlp.organizations.deidentifyTemplates.get
    , module Network.Google.Resource.DLP.Organizations.DeidentifyTemplates.Get

    -- ** dlp.organizations.deidentifyTemplates.list
    , module Network.Google.Resource.DLP.Organizations.DeidentifyTemplates.List

    -- ** dlp.organizations.deidentifyTemplates.patch
    , module Network.Google.Resource.DLP.Organizations.DeidentifyTemplates.Patch

    -- ** dlp.organizations.inspectTemplates.create
    , module Network.Google.Resource.DLP.Organizations.InspectTemplates.Create

    -- ** dlp.organizations.inspectTemplates.delete
    , module Network.Google.Resource.DLP.Organizations.InspectTemplates.Delete

    -- ** dlp.organizations.inspectTemplates.get
    , module Network.Google.Resource.DLP.Organizations.InspectTemplates.Get

    -- ** dlp.organizations.inspectTemplates.list
    , module Network.Google.Resource.DLP.Organizations.InspectTemplates.List

    -- ** dlp.organizations.inspectTemplates.patch
    , module Network.Google.Resource.DLP.Organizations.InspectTemplates.Patch

    -- ** dlp.organizations.locations.deidentifyTemplates.create
    , module Network.Google.Resource.DLP.Organizations.Locations.DeidentifyTemplates.Create

    -- ** dlp.organizations.locations.deidentifyTemplates.delete
    , module Network.Google.Resource.DLP.Organizations.Locations.DeidentifyTemplates.Delete

    -- ** dlp.organizations.locations.deidentifyTemplates.get
    , module Network.Google.Resource.DLP.Organizations.Locations.DeidentifyTemplates.Get

    -- ** dlp.organizations.locations.deidentifyTemplates.list
    , module Network.Google.Resource.DLP.Organizations.Locations.DeidentifyTemplates.List

    -- ** dlp.organizations.locations.deidentifyTemplates.patch
    , module Network.Google.Resource.DLP.Organizations.Locations.DeidentifyTemplates.Patch

    -- ** dlp.organizations.locations.dlpJobs.list
    , module Network.Google.Resource.DLP.Organizations.Locations.DlpJobs.List

    -- ** dlp.organizations.locations.inspectTemplates.create
    , module Network.Google.Resource.DLP.Organizations.Locations.InspectTemplates.Create

    -- ** dlp.organizations.locations.inspectTemplates.delete
    , module Network.Google.Resource.DLP.Organizations.Locations.InspectTemplates.Delete

    -- ** dlp.organizations.locations.inspectTemplates.get
    , module Network.Google.Resource.DLP.Organizations.Locations.InspectTemplates.Get

    -- ** dlp.organizations.locations.inspectTemplates.list
    , module Network.Google.Resource.DLP.Organizations.Locations.InspectTemplates.List

    -- ** dlp.organizations.locations.inspectTemplates.patch
    , module Network.Google.Resource.DLP.Organizations.Locations.InspectTemplates.Patch

    -- ** dlp.organizations.locations.jobTriggers.create
    , module Network.Google.Resource.DLP.Organizations.Locations.JobTriggers.Create

    -- ** dlp.organizations.locations.jobTriggers.delete
    , module Network.Google.Resource.DLP.Organizations.Locations.JobTriggers.Delete

    -- ** dlp.organizations.locations.jobTriggers.get
    , module Network.Google.Resource.DLP.Organizations.Locations.JobTriggers.Get

    -- ** dlp.organizations.locations.jobTriggers.list
    , module Network.Google.Resource.DLP.Organizations.Locations.JobTriggers.List

    -- ** dlp.organizations.locations.jobTriggers.patch
    , module Network.Google.Resource.DLP.Organizations.Locations.JobTriggers.Patch

    -- ** dlp.organizations.locations.storedInfoTypes.create
    , module Network.Google.Resource.DLP.Organizations.Locations.StoredInfoTypes.Create

    -- ** dlp.organizations.locations.storedInfoTypes.delete
    , module Network.Google.Resource.DLP.Organizations.Locations.StoredInfoTypes.Delete

    -- ** dlp.organizations.locations.storedInfoTypes.get
    , module Network.Google.Resource.DLP.Organizations.Locations.StoredInfoTypes.Get

    -- ** dlp.organizations.locations.storedInfoTypes.list
    , module Network.Google.Resource.DLP.Organizations.Locations.StoredInfoTypes.List

    -- ** dlp.organizations.locations.storedInfoTypes.patch
    , module Network.Google.Resource.DLP.Organizations.Locations.StoredInfoTypes.Patch

    -- ** dlp.organizations.storedInfoTypes.create
    , module Network.Google.Resource.DLP.Organizations.StoredInfoTypes.Create

    -- ** dlp.organizations.storedInfoTypes.delete
    , module Network.Google.Resource.DLP.Organizations.StoredInfoTypes.Delete

    -- ** dlp.organizations.storedInfoTypes.get
    , module Network.Google.Resource.DLP.Organizations.StoredInfoTypes.Get

    -- ** dlp.organizations.storedInfoTypes.list
    , module Network.Google.Resource.DLP.Organizations.StoredInfoTypes.List

    -- ** dlp.organizations.storedInfoTypes.patch
    , module Network.Google.Resource.DLP.Organizations.StoredInfoTypes.Patch

    -- ** dlp.projects.content.deidentify
    , module Network.Google.Resource.DLP.Projects.Content.Deidentify

    -- ** dlp.projects.content.inspect
    , module Network.Google.Resource.DLP.Projects.Content.Inspect

    -- ** dlp.projects.content.reidentify
    , module Network.Google.Resource.DLP.Projects.Content.Reidentify

    -- ** dlp.projects.deidentifyTemplates.create
    , module Network.Google.Resource.DLP.Projects.DeidentifyTemplates.Create

    -- ** dlp.projects.deidentifyTemplates.delete
    , module Network.Google.Resource.DLP.Projects.DeidentifyTemplates.Delete

    -- ** dlp.projects.deidentifyTemplates.get
    , module Network.Google.Resource.DLP.Projects.DeidentifyTemplates.Get

    -- ** dlp.projects.deidentifyTemplates.list
    , module Network.Google.Resource.DLP.Projects.DeidentifyTemplates.List

    -- ** dlp.projects.deidentifyTemplates.patch
    , module Network.Google.Resource.DLP.Projects.DeidentifyTemplates.Patch

    -- ** dlp.projects.dlpJobs.cancel
    , module Network.Google.Resource.DLP.Projects.DlpJobs.Cancel

    -- ** dlp.projects.dlpJobs.create
    , module Network.Google.Resource.DLP.Projects.DlpJobs.Create

    -- ** dlp.projects.dlpJobs.delete
    , module Network.Google.Resource.DLP.Projects.DlpJobs.Delete

    -- ** dlp.projects.dlpJobs.get
    , module Network.Google.Resource.DLP.Projects.DlpJobs.Get

    -- ** dlp.projects.dlpJobs.list
    , module Network.Google.Resource.DLP.Projects.DlpJobs.List

    -- ** dlp.projects.image.redact
    , module Network.Google.Resource.DLP.Projects.Image.Redact

    -- ** dlp.projects.inspectTemplates.create
    , module Network.Google.Resource.DLP.Projects.InspectTemplates.Create

    -- ** dlp.projects.inspectTemplates.delete
    , module Network.Google.Resource.DLP.Projects.InspectTemplates.Delete

    -- ** dlp.projects.inspectTemplates.get
    , module Network.Google.Resource.DLP.Projects.InspectTemplates.Get

    -- ** dlp.projects.inspectTemplates.list
    , module Network.Google.Resource.DLP.Projects.InspectTemplates.List

    -- ** dlp.projects.inspectTemplates.patch
    , module Network.Google.Resource.DLP.Projects.InspectTemplates.Patch

    -- ** dlp.projects.jobTriggers.activate
    , module Network.Google.Resource.DLP.Projects.JobTriggers.Activate

    -- ** dlp.projects.jobTriggers.create
    , module Network.Google.Resource.DLP.Projects.JobTriggers.Create

    -- ** dlp.projects.jobTriggers.delete
    , module Network.Google.Resource.DLP.Projects.JobTriggers.Delete

    -- ** dlp.projects.jobTriggers.get
    , module Network.Google.Resource.DLP.Projects.JobTriggers.Get

    -- ** dlp.projects.jobTriggers.list
    , module Network.Google.Resource.DLP.Projects.JobTriggers.List

    -- ** dlp.projects.jobTriggers.patch
    , module Network.Google.Resource.DLP.Projects.JobTriggers.Patch

    -- ** dlp.projects.locations.content.deidentify
    , module Network.Google.Resource.DLP.Projects.Locations.Content.Deidentify

    -- ** dlp.projects.locations.content.inspect
    , module Network.Google.Resource.DLP.Projects.Locations.Content.Inspect

    -- ** dlp.projects.locations.content.reidentify
    , module Network.Google.Resource.DLP.Projects.Locations.Content.Reidentify

    -- ** dlp.projects.locations.deidentifyTemplates.create
    , module Network.Google.Resource.DLP.Projects.Locations.DeidentifyTemplates.Create

    -- ** dlp.projects.locations.deidentifyTemplates.delete
    , module Network.Google.Resource.DLP.Projects.Locations.DeidentifyTemplates.Delete

    -- ** dlp.projects.locations.deidentifyTemplates.get
    , module Network.Google.Resource.DLP.Projects.Locations.DeidentifyTemplates.Get

    -- ** dlp.projects.locations.deidentifyTemplates.list
    , module Network.Google.Resource.DLP.Projects.Locations.DeidentifyTemplates.List

    -- ** dlp.projects.locations.deidentifyTemplates.patch
    , module Network.Google.Resource.DLP.Projects.Locations.DeidentifyTemplates.Patch

    -- ** dlp.projects.locations.dlpJobs.cancel
    , module Network.Google.Resource.DLP.Projects.Locations.DlpJobs.Cancel

    -- ** dlp.projects.locations.dlpJobs.create
    , module Network.Google.Resource.DLP.Projects.Locations.DlpJobs.Create

    -- ** dlp.projects.locations.dlpJobs.delete
    , module Network.Google.Resource.DLP.Projects.Locations.DlpJobs.Delete

    -- ** dlp.projects.locations.dlpJobs.finish
    , module Network.Google.Resource.DLP.Projects.Locations.DlpJobs.Finish

    -- ** dlp.projects.locations.dlpJobs.get
    , module Network.Google.Resource.DLP.Projects.Locations.DlpJobs.Get

    -- ** dlp.projects.locations.dlpJobs.hybridInspect
    , module Network.Google.Resource.DLP.Projects.Locations.DlpJobs.HybridInspect

    -- ** dlp.projects.locations.dlpJobs.list
    , module Network.Google.Resource.DLP.Projects.Locations.DlpJobs.List

    -- ** dlp.projects.locations.image.redact
    , module Network.Google.Resource.DLP.Projects.Locations.Image.Redact

    -- ** dlp.projects.locations.inspectTemplates.create
    , module Network.Google.Resource.DLP.Projects.Locations.InspectTemplates.Create

    -- ** dlp.projects.locations.inspectTemplates.delete
    , module Network.Google.Resource.DLP.Projects.Locations.InspectTemplates.Delete

    -- ** dlp.projects.locations.inspectTemplates.get
    , module Network.Google.Resource.DLP.Projects.Locations.InspectTemplates.Get

    -- ** dlp.projects.locations.inspectTemplates.list
    , module Network.Google.Resource.DLP.Projects.Locations.InspectTemplates.List

    -- ** dlp.projects.locations.inspectTemplates.patch
    , module Network.Google.Resource.DLP.Projects.Locations.InspectTemplates.Patch

    -- ** dlp.projects.locations.jobTriggers.activate
    , module Network.Google.Resource.DLP.Projects.Locations.JobTriggers.Activate

    -- ** dlp.projects.locations.jobTriggers.create
    , module Network.Google.Resource.DLP.Projects.Locations.JobTriggers.Create

    -- ** dlp.projects.locations.jobTriggers.delete
    , module Network.Google.Resource.DLP.Projects.Locations.JobTriggers.Delete

    -- ** dlp.projects.locations.jobTriggers.get
    , module Network.Google.Resource.DLP.Projects.Locations.JobTriggers.Get

    -- ** dlp.projects.locations.jobTriggers.hybridInspect
    , module Network.Google.Resource.DLP.Projects.Locations.JobTriggers.HybridInspect

    -- ** dlp.projects.locations.jobTriggers.list
    , module Network.Google.Resource.DLP.Projects.Locations.JobTriggers.List

    -- ** dlp.projects.locations.jobTriggers.patch
    , module Network.Google.Resource.DLP.Projects.Locations.JobTriggers.Patch

    -- ** dlp.projects.locations.storedInfoTypes.create
    , module Network.Google.Resource.DLP.Projects.Locations.StoredInfoTypes.Create

    -- ** dlp.projects.locations.storedInfoTypes.delete
    , module Network.Google.Resource.DLP.Projects.Locations.StoredInfoTypes.Delete

    -- ** dlp.projects.locations.storedInfoTypes.get
    , module Network.Google.Resource.DLP.Projects.Locations.StoredInfoTypes.Get

    -- ** dlp.projects.locations.storedInfoTypes.list
    , module Network.Google.Resource.DLP.Projects.Locations.StoredInfoTypes.List

    -- ** dlp.projects.locations.storedInfoTypes.patch
    , module Network.Google.Resource.DLP.Projects.Locations.StoredInfoTypes.Patch

    -- ** dlp.projects.storedInfoTypes.create
    , module Network.Google.Resource.DLP.Projects.StoredInfoTypes.Create

    -- ** dlp.projects.storedInfoTypes.delete
    , module Network.Google.Resource.DLP.Projects.StoredInfoTypes.Delete

    -- ** dlp.projects.storedInfoTypes.get
    , module Network.Google.Resource.DLP.Projects.StoredInfoTypes.Get

    -- ** dlp.projects.storedInfoTypes.list
    , module Network.Google.Resource.DLP.Projects.StoredInfoTypes.List

    -- ** dlp.projects.storedInfoTypes.patch
    , module Network.Google.Resource.DLP.Projects.StoredInfoTypes.Patch

    -- * Types

    -- ** GooglePrivacyDlpV2InfoTypeStats
    , GooglePrivacyDlpV2InfoTypeStats
    , googlePrivacyDlpV2InfoTypeStats
    , gpdvitsCount
    , gpdvitsInfoType

    -- ** GooglePrivacyDlpV2RedactConfig
    , GooglePrivacyDlpV2RedactConfig
    , googlePrivacyDlpV2RedactConfig

    -- ** GooglePrivacyDlpV2UpdateJobTriggerRequest
    , GooglePrivacyDlpV2UpdateJobTriggerRequest
    , googlePrivacyDlpV2UpdateJobTriggerRequest
    , gpdvujtrUpdateMask
    , gpdvujtrJobTrigger

    -- ** GooglePrivacyDlpV2Range
    , GooglePrivacyDlpV2Range
    , googlePrivacyDlpV2Range
    , gpdvrStart
    , gpdvrEnd

    -- ** GoogleRpcStatus
    , GoogleRpcStatus
    , googleRpcStatus
    , grsDetails
    , grsCode
    , grsMessage

    -- ** GooglePrivacyDlpV2HybridInspectStatistics
    , GooglePrivacyDlpV2HybridInspectStatistics
    , googlePrivacyDlpV2HybridInspectStatistics
    , gpdvhisAbortedCount
    , gpdvhisPendingCount
    , gpdvhisProcessedCount

    -- ** GooglePrivacyDlpV2FixedSizeBucketingConfig
    , GooglePrivacyDlpV2FixedSizeBucketingConfig
    , googlePrivacyDlpV2FixedSizeBucketingConfig
    , gpdvfsbcUpperBound
    , gpdvfsbcLowerBound
    , gpdvfsbcBucketSize

    -- ** GooglePrivacyDlpV2InspectResult
    , GooglePrivacyDlpV2InspectResult
    , googlePrivacyDlpV2InspectResult
    , gpdvirFindingsTruncated
    , gpdvirFindings

    -- ** GooglePrivacyDlpV2StoredInfoTypeConfig
    , GooglePrivacyDlpV2StoredInfoTypeConfig
    , googlePrivacyDlpV2StoredInfoTypeConfig
    , gpdvsitcRegex
    , gpdvsitcLargeCustomDictionary
    , gpdvsitcDisplayName
    , gpdvsitcDictionary
    , gpdvsitcDescription

    -- ** GooglePrivacyDlpV2InfoTypeTransformation
    , GooglePrivacyDlpV2InfoTypeTransformation
    , googlePrivacyDlpV2InfoTypeTransformation
    , gpdvittInfoTypes
    , gpdvittPrimitiveTransformation

    -- ** GooglePrivacyDlpV2FieldId
    , GooglePrivacyDlpV2FieldId
    , googlePrivacyDlpV2FieldId
    , gpdvfiName

    -- ** GooglePrivacyDlpV2Container
    , GooglePrivacyDlpV2Container
    , googlePrivacyDlpV2Container
    , gpdvcFullPath
    , gpdvcUpdateTime
    , gpdvcVersion
    , gpdvcProjectId
    , gpdvcType
    , gpdvcRootPath
    , gpdvcRelativePath

    -- ** GooglePrivacyDlpV2DlpJob
    , GooglePrivacyDlpV2DlpJob
    , googlePrivacyDlpV2DlpJob
    , gpdvdjInspectDetails
    , gpdvdjState
    , gpdvdjStartTime
    , gpdvdjJobTriggerName
    , gpdvdjRiskDetails
    , gpdvdjName
    , gpdvdjEndTime
    , gpdvdjType
    , gpdvdjErrors
    , gpdvdjCreateTime

    -- ** GooglePrivacyDlpV2RecordTransformations
    , GooglePrivacyDlpV2RecordTransformations
    , googlePrivacyDlpV2RecordTransformations
    , gpdvrtRecordSuppressions
    , gpdvrtFieldTransformations

    -- ** GooglePrivacyDlpV2CustomInfoTypeLikelihood
    , GooglePrivacyDlpV2CustomInfoTypeLikelihood (..)

    -- ** GooglePrivacyDlpV2FindingLikelihood
    , GooglePrivacyDlpV2FindingLikelihood (..)

    -- ** GooglePrivacyDlpV2Key
    , GooglePrivacyDlpV2Key
    , googlePrivacyDlpV2Key
    , gpdvkPartitionId
    , gpdvkPath

    -- ** GooglePrivacyDlpV2BucketingConfig
    , GooglePrivacyDlpV2BucketingConfig
    , googlePrivacyDlpV2BucketingConfig
    , gpdvbcBuckets

    -- ** GooglePrivacyDlpV2InspectConfig
    , GooglePrivacyDlpV2InspectConfig
    , googlePrivacyDlpV2InspectConfig
    , gpdvicInfoTypes
    , gpdvicMinLikelihood
    , gpdvicExcludeInfoTypes
    , gpdvicIncludeQuote
    , gpdvicCustomInfoTypes
    , gpdvicLimits
    , gpdvicContentOptions
    , gpdvicRuleSet

    -- ** GooglePrivacyDlpV2RiskAnalysisJobConfig
    , GooglePrivacyDlpV2RiskAnalysisJobConfig
    , googlePrivacyDlpV2RiskAnalysisJobConfig
    , gpdvrajcPrivacyMetric
    , gpdvrajcActions
    , gpdvrajcSourceTable

    -- ** GooglePrivacyDlpV2HybridInspectDlpJobRequest
    , GooglePrivacyDlpV2HybridInspectDlpJobRequest
    , googlePrivacyDlpV2HybridInspectDlpJobRequest
    , gpdvhidjrHybridItem

    -- ** GooglePrivacyDlpV2QuoteInfo
    , GooglePrivacyDlpV2QuoteInfo
    , googlePrivacyDlpV2QuoteInfo
    , gpdvqiDateTime

    -- ** GooglePrivacyDlpV2StoredInfoTypeStats
    , GooglePrivacyDlpV2StoredInfoTypeStats
    , googlePrivacyDlpV2StoredInfoTypeStats
    , gpdvsitsLargeCustomDictionary

    -- ** GooglePrivacyDlpV2RecordSuppression
    , GooglePrivacyDlpV2RecordSuppression
    , googlePrivacyDlpV2RecordSuppression
    , gpdvrsCondition

    -- ** GooglePrivacyDlpV2CryptoKey
    , GooglePrivacyDlpV2CryptoKey
    , googlePrivacyDlpV2CryptoKey
    , gpdvckTransient
    , gpdvckKmsWrApped
    , gpdvckUnwrApped

    -- ** GooglePrivacyDlpV2LargeCustomDictionaryConfig
    , GooglePrivacyDlpV2LargeCustomDictionaryConfig
    , googlePrivacyDlpV2LargeCustomDictionaryConfig
    , gpdvlcdcBigQueryField
    , gpdvlcdcCloudStorageFileSet
    , gpdvlcdcOutputPath

    -- ** GooglePrivacyDlpV2WordList
    , GooglePrivacyDlpV2WordList
    , googlePrivacyDlpV2WordList
    , gpdvwlWords

    -- ** GooglePrivacyDlpV2ContentItem
    , GooglePrivacyDlpV2ContentItem
    , googlePrivacyDlpV2ContentItem
    , gpdvciValue
    , gpdvciByteItem
    , gpdvciTable

    -- ** GooglePrivacyDlpV2CategoricalStatsHistogramBucket
    , GooglePrivacyDlpV2CategoricalStatsHistogramBucket
    , googlePrivacyDlpV2CategoricalStatsHistogramBucket
    , gpdvcshbValueFrequencyLowerBound
    , gpdvcshbBucketValues
    , gpdvcshbValueFrequencyUpperBound
    , gpdvcshbBucketSize
    , gpdvcshbBucketValueCount

    -- ** GooglePrivacyDlpV2Result
    , GooglePrivacyDlpV2Result
    , googlePrivacyDlpV2Result
    , gpdvrProcessedBytes
    , gpdvrInfoTypeStats
    , gpdvrHybridStats
    , gpdvrTotalEstimatedBytes

    -- ** GooglePrivacyDlpV2HybridOptionsLabels
    , GooglePrivacyDlpV2HybridOptionsLabels
    , googlePrivacyDlpV2HybridOptionsLabels
    , gpdvholAddtional

    -- ** GooglePrivacyDlpV2InspectDataSourceDetails
    , GooglePrivacyDlpV2InspectDataSourceDetails
    , googlePrivacyDlpV2InspectDataSourceDetails
    , gpdvidsdResult
    , gpdvidsdRequestedOptions

    -- ** GooglePrivacyDlpV2RedactImageResponse
    , GooglePrivacyDlpV2RedactImageResponse
    , googlePrivacyDlpV2RedactImageResponse
    , gpdvrirExtractedText
    , gpdvrirInspectResult
    , gpdvrirRedactedImage

    -- ** GooglePrivacyDlpV2PublishToPubSub
    , GooglePrivacyDlpV2PublishToPubSub
    , googlePrivacyDlpV2PublishToPubSub
    , gpdvptpsTopic

    -- ** GooglePrivacyDlpV2CustomInfoTypeExclusionType
    , GooglePrivacyDlpV2CustomInfoTypeExclusionType (..)

    -- ** GooglePrivacyDlpV2BigQueryKey
    , GooglePrivacyDlpV2BigQueryKey
    , googlePrivacyDlpV2BigQueryKey
    , gpdvbqkTableReference
    , gpdvbqkRowNumber

    -- ** GooglePrivacyDlpV2LikelihoodAdjustmentFixedLikelihood
    , GooglePrivacyDlpV2LikelihoodAdjustmentFixedLikelihood (..)

    -- ** GooglePrivacyDlpV2DetectionRule
    , GooglePrivacyDlpV2DetectionRule
    , googlePrivacyDlpV2DetectionRule
    , gpdvdrHotwordRule

    -- ** GooglePrivacyDlpV2TimePartConfigPartToExtract
    , GooglePrivacyDlpV2TimePartConfigPartToExtract (..)

    -- ** GooglePrivacyDlpV2RecordCondition
    , GooglePrivacyDlpV2RecordCondition
    , googlePrivacyDlpV2RecordCondition
    , gpdvrcExpressions

    -- ** GooglePrivacyDlpV2DateShiftConfig
    , GooglePrivacyDlpV2DateShiftConfig
    , googlePrivacyDlpV2DateShiftConfig
    , gpdvdscContext
    , gpdvdscUpperBoundDays
    , gpdvdscCryptoKey
    , gpdvdscLowerBoundDays

    -- ** GooglePrivacyDlpV2InspectContentRequest
    , GooglePrivacyDlpV2InspectContentRequest
    , googlePrivacyDlpV2InspectContentRequest
    , gpdvicrInspectConfig
    , gpdvicrItem
    , gpdvicrLocationId
    , gpdvicrInspectTemplateName

    -- ** GooglePrivacyDlpV2CategoricalStatsResult
    , GooglePrivacyDlpV2CategoricalStatsResult
    , googlePrivacyDlpV2CategoricalStatsResult
    , gpdvcsrValueFrequencyHistogramBuckets

    -- ** GooglePrivacyDlpV2NumericalStatsResult
    , GooglePrivacyDlpV2NumericalStatsResult
    , googlePrivacyDlpV2NumericalStatsResult
    , gpdvnsrMaxValue
    , gpdvnsrQuantileValues
    , gpdvnsrMinValue

    -- ** GooglePrivacyDlpV2TransformationErrorHandling
    , GooglePrivacyDlpV2TransformationErrorHandling
    , googlePrivacyDlpV2TransformationErrorHandling
    , gpdvtehThrowError
    , gpdvtehLeaveUntransformed

    -- ** GooglePrivacyDlpV2PublishSummaryToCscc
    , GooglePrivacyDlpV2PublishSummaryToCscc
    , googlePrivacyDlpV2PublishSummaryToCscc

    -- ** GooglePrivacyDlpV2UpdateInspectTemplateRequest
    , GooglePrivacyDlpV2UpdateInspectTemplateRequest
    , googlePrivacyDlpV2UpdateInspectTemplateRequest
    , gpdvuitrUpdateMask
    , gpdvuitrInspectTemplate

    -- ** GooglePrivacyDlpV2EntityId
    , GooglePrivacyDlpV2EntityId
    , googlePrivacyDlpV2EntityId
    , gpdveiField

    -- ** GooglePrivacyDlpV2HybridFindingDetailsLabels
    , GooglePrivacyDlpV2HybridFindingDetailsLabels
    , googlePrivacyDlpV2HybridFindingDetailsLabels
    , gpdvhfdlAddtional

    -- ** GooglePrivacyDlpV2ByteContentItem
    , GooglePrivacyDlpV2ByteContentItem
    , googlePrivacyDlpV2ByteContentItem
    , gpdvbciData
    , gpdvbciType

    -- ** GooglePrivacyDlpV2TaggedField
    , GooglePrivacyDlpV2TaggedField
    , googlePrivacyDlpV2TaggedField
    , gpdvtfField
    , gpdvtfInfoType
    , gpdvtfInferred
    , gpdvtfCustomTag

    -- ** GooglePrivacyDlpV2BigQueryOptions
    , GooglePrivacyDlpV2BigQueryOptions
    , googlePrivacyDlpV2BigQueryOptions
    , gpdvbqoRowsLimit
    , gpdvbqoRowsLimitPercent
    , gpdvbqoTableReference
    , gpdvbqoIdentifyingFields
    , gpdvbqoExcludedFields
    , gpdvbqoSampleMethod

    -- ** GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog
    , GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog
    , googlePrivacyDlpV2PublishFindingsToCloudDataCatalog

    -- ** GooglePrivacyDlpV2KMapEstimationQuasiIdValues
    , GooglePrivacyDlpV2KMapEstimationQuasiIdValues
    , googlePrivacyDlpV2KMapEstimationQuasiIdValues
    , gpdvkmeqivEstimatedAnonymity
    , gpdvkmeqivQuasiIdsValues

    -- ** GooglePrivacyDlpV2ExcludeInfoTypes
    , GooglePrivacyDlpV2ExcludeInfoTypes
    , googlePrivacyDlpV2ExcludeInfoTypes
    , gpdveitInfoTypes

    -- ** GooglePrivacyDlpV2CreateInspectTemplateRequest
    , GooglePrivacyDlpV2CreateInspectTemplateRequest
    , googlePrivacyDlpV2CreateInspectTemplateRequest
    , gpdvcitrTemplateId
    , gpdvcitrLocationId
    , gpdvcitrInspectTemplate

    -- ** GooglePrivacyDlpV2PathElement
    , GooglePrivacyDlpV2PathElement
    , googlePrivacyDlpV2PathElement
    , gpdvpeKind
    , gpdvpeName
    , gpdvpeId

    -- ** GooglePrivacyDlpV2DeltaPresenceEstimationResult
    , GooglePrivacyDlpV2DeltaPresenceEstimationResult
    , googlePrivacyDlpV2DeltaPresenceEstimationResult
    , gpdvdperDeltaPresenceEstimationHistogram

    -- ** GooglePrivacyDlpV2ConditionOperator
    , GooglePrivacyDlpV2ConditionOperator (..)

    -- ** GooglePrivacyDlpV2InspectJobConfig
    , GooglePrivacyDlpV2InspectJobConfig
    , googlePrivacyDlpV2InspectJobConfig
    , gpdvijcActions
    , gpdvijcStorageConfig
    , gpdvijcInspectConfig
    , gpdvijcInspectTemplateName

    -- ** GooglePrivacyDlpV2StoredType
    , GooglePrivacyDlpV2StoredType
    , googlePrivacyDlpV2StoredType
    , gpdvstName
    , gpdvstCreateTime

    -- ** GooglePrivacyDlpV2FieldTransformation
    , GooglePrivacyDlpV2FieldTransformation
    , googlePrivacyDlpV2FieldTransformation
    , gpdvftInfoTypeTransformations
    , gpdvftPrimitiveTransformation
    , gpdvftCondition
    , gpdvftFields

    -- ** OrganizationsLocationsDlpJobsListType
    , OrganizationsLocationsDlpJobsListType (..)

    -- ** GooglePrivacyDlpV2HotwordRule
    , GooglePrivacyDlpV2HotwordRule
    , googlePrivacyDlpV2HotwordRule
    , gpdvhrProximity
    , gpdvhrLikelihoodAdjustment
    , gpdvhrHotwordRegex

    -- ** GooglePrivacyDlpV2RedactImageRequest
    , GooglePrivacyDlpV2RedactImageRequest
    , googlePrivacyDlpV2RedactImageRequest
    , gpdvrirIncludeFindings
    , gpdvrirInspectConfig
    , gpdvrirByteItem
    , gpdvrirLocationId
    , gpdvrirImageRedactionConfigs

    -- ** ProjectsJobTriggersListType
    , ProjectsJobTriggersListType (..)

    -- ** GooglePrivacyDlpV2FindingLimits
    , GooglePrivacyDlpV2FindingLimits
    , googlePrivacyDlpV2FindingLimits
    , gpdvflMaxFindingsPerItem
    , gpdvflMaxFindingsPerInfoType
    , gpdvflMaxFindingsPerRequest

    -- ** GooglePrivacyDlpV2Condition
    , GooglePrivacyDlpV2Condition
    , googlePrivacyDlpV2Condition
    , gpdvcField
    , gpdvcOperator
    , gpdvcValue

    -- ** GooglePrivacyDlpV2TimespanConfig
    , GooglePrivacyDlpV2TimespanConfig
    , googlePrivacyDlpV2TimespanConfig
    , gpdvtcTimestampField
    , gpdvtcStartTime
    , gpdvtcEnableAutoPopulationOfTimespanConfig
    , gpdvtcEndTime

    -- ** GooglePrivacyDlpV2MetadataLocationType
    , GooglePrivacyDlpV2MetadataLocationType (..)

    -- ** GooglePrivacyDlpV2DateTimeDayOfWeek
    , GooglePrivacyDlpV2DateTimeDayOfWeek (..)

    -- ** GooglePrivacyDlpV2CreateDeidentifyTemplateRequest
    , GooglePrivacyDlpV2CreateDeidentifyTemplateRequest
    , googlePrivacyDlpV2CreateDeidentifyTemplateRequest
    , gpdvcdtrTemplateId
    , gpdvcdtrDeidentifyTemplate
    , gpdvcdtrLocationId

    -- ** GooglePrivacyDlpV2CloudStorageOptionsFileTypesItem
    , GooglePrivacyDlpV2CloudStorageOptionsFileTypesItem (..)

    -- ** GooglePrivacyDlpV2TransientCryptoKey
    , GooglePrivacyDlpV2TransientCryptoKey
    , googlePrivacyDlpV2TransientCryptoKey
    , gpdvtckName

    -- ** GooglePrivacyDlpV2DlpJobState
    , GooglePrivacyDlpV2DlpJobState (..)

    -- ** GooglePrivacyDlpV2InfoTypeDescription
    , GooglePrivacyDlpV2InfoTypeDescription
    , googlePrivacyDlpV2InfoTypeDescription
    , gpdvitdName
    , gpdvitdDisplayName
    , gpdvitdSupportedBy
    , gpdvitdDescription

    -- ** GoogleProtobufEmpty
    , GoogleProtobufEmpty
    , googleProtobufEmpty

    -- ** GoogleRpcStatusDetailsItem
    , GoogleRpcStatusDetailsItem
    , googleRpcStatusDetailsItem
    , grsdiAddtional

    -- ** GooglePrivacyDlpV2ImageRedactionConfig
    , GooglePrivacyDlpV2ImageRedactionConfig
    , googlePrivacyDlpV2ImageRedactionConfig
    , gpdvircRedactionColor
    , gpdvircInfoType
    , gpdvircRedactAllText

    -- ** GooglePrivacyDlpV2Trigger
    , GooglePrivacyDlpV2Trigger
    , googlePrivacyDlpV2Trigger
    , gpdvtManual
    , gpdvtSchedule

    -- ** GooglePrivacyDlpV2CloudStorageOptions
    , GooglePrivacyDlpV2CloudStorageOptions
    , googlePrivacyDlpV2CloudStorageOptions
    , gpdvcsoFileSet
    , gpdvcsoBytesLimitPerFile
    , gpdvcsoFileTypes
    , gpdvcsoBytesLimitPerFilePercent
    , gpdvcsoFilesLimitPercent
    , gpdvcsoSampleMethod

    -- ** GooglePrivacyDlpV2SummaryResultCode
    , GooglePrivacyDlpV2SummaryResultCode (..)

    -- ** GooglePrivacyDlpV2DeltaPresenceEstimationConfig
    , GooglePrivacyDlpV2DeltaPresenceEstimationConfig
    , googlePrivacyDlpV2DeltaPresenceEstimationConfig
    , gpdvdpecAuxiliaryTables
    , gpdvdpecRegionCode
    , gpdvdpecQuasiIds

    -- ** GooglePrivacyDlpV2CreateStoredInfoTypeRequest
    , GooglePrivacyDlpV2CreateStoredInfoTypeRequest
    , googlePrivacyDlpV2CreateStoredInfoTypeRequest
    , gpdvcsitrConfig
    , gpdvcsitrLocationId
    , gpdvcsitrStoredInfoTypeId

    -- ** GooglePrivacyDlpV2QuasiIdField
    , GooglePrivacyDlpV2QuasiIdField
    , googlePrivacyDlpV2QuasiIdField
    , gpdvqifField
    , gpdvqifCustomTag

    -- ** GooglePrivacyDlpV2TimePartConfig
    , GooglePrivacyDlpV2TimePartConfig
    , googlePrivacyDlpV2TimePartConfig
    , gpdvtpcPartToExtract

    -- ** GooglePrivacyDlpV2FindingLabels
    , GooglePrivacyDlpV2FindingLabels
    , googlePrivacyDlpV2FindingLabels
    , gpdvflAddtional

    -- ** GooglePrivacyDlpV2InspectionRule
    , GooglePrivacyDlpV2InspectionRule
    , googlePrivacyDlpV2InspectionRule
    , gpdvirExclusionRule
    , gpdvirHotwordRule

    -- ** GooglePrivacyDlpV2CustomInfoType
    , GooglePrivacyDlpV2CustomInfoType
    , googlePrivacyDlpV2CustomInfoType
    , gpdvcitRegex
    , gpdvcitStoredType
    , gpdvcitInfoType
    , gpdvcitExclusionType
    , gpdvcitLikelihood
    , gpdvcitDetectionRules
    , gpdvcitDictionary
    , gpdvcitSurrogateType

    -- ** GooglePrivacyDlpV2KMapEstimationResult
    , GooglePrivacyDlpV2KMapEstimationResult
    , googlePrivacyDlpV2KMapEstimationResult
    , gpdvkmerKMapEstimationHistogram

    -- ** GooglePrivacyDlpV2TransformationSummary
    , GooglePrivacyDlpV2TransformationSummary
    , googlePrivacyDlpV2TransformationSummary
    , gpdvtsResults
    , gpdvtsField
    , gpdvtsInfoType
    , gpdvtsRecordSuppress
    , gpdvtsTransformedBytes
    , gpdvtsFieldTransformations
    , gpdvtsTransformation

    -- ** GooglePrivacyDlpV2LikelihoodAdjustment
    , GooglePrivacyDlpV2LikelihoodAdjustment
    , googlePrivacyDlpV2LikelihoodAdjustment
    , gpdvlaFixedLikelihood
    , gpdvlaRelativeLikelihood

    -- ** GooglePrivacyDlpV2Regex
    , GooglePrivacyDlpV2Regex
    , googlePrivacyDlpV2Regex
    , gpdvrGroupIndexes
    , gpdvrPattern

    -- ** GooglePrivacyDlpV2UpdateStoredInfoTypeRequest
    , GooglePrivacyDlpV2UpdateStoredInfoTypeRequest
    , googlePrivacyDlpV2UpdateStoredInfoTypeRequest
    , gpdvusitrConfig
    , gpdvusitrUpdateMask

    -- ** GooglePrivacyDlpV2LeaveUntransformed
    , GooglePrivacyDlpV2LeaveUntransformed
    , googlePrivacyDlpV2LeaveUntransformed

    -- ** GooglePrivacyDlpV2KAnonymityEquivalenceClass
    , GooglePrivacyDlpV2KAnonymityEquivalenceClass
    , googlePrivacyDlpV2KAnonymityEquivalenceClass
    , gpdvkaecEquivalenceClassSize
    , gpdvkaecQuasiIdsValues

    -- ** GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest
    , GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest
    , googlePrivacyDlpV2UpdateDeidentifyTemplateRequest
    , gpdvudtrUpdateMask
    , gpdvudtrDeidentifyTemplate

    -- ** GooglePrivacyDlpV2LDiversityConfig
    , GooglePrivacyDlpV2LDiversityConfig
    , googlePrivacyDlpV2LDiversityConfig
    , gpdvldcSensitiveAttribute
    , gpdvldcQuasiIds

    -- ** GooglePrivacyDlpV2JobNotificationEmails
    , GooglePrivacyDlpV2JobNotificationEmails
    , googlePrivacyDlpV2JobNotificationEmails

    -- ** ProjectsLocationsDlpJobsListType
    , ProjectsLocationsDlpJobsListType (..)

    -- ** GooglePrivacyDlpV2DeidentifyContentRequest
    , GooglePrivacyDlpV2DeidentifyContentRequest
    , googlePrivacyDlpV2DeidentifyContentRequest
    , gpdvdcrInspectConfig
    , gpdvdcrDeidentifyConfig
    , gpdvdcrDeidentifyTemplateName
    , gpdvdcrItem
    , gpdvdcrLocationId
    , gpdvdcrInspectTemplateName

    -- ** GooglePrivacyDlpV2Color
    , GooglePrivacyDlpV2Color
    , googlePrivacyDlpV2Color
    , gpdvcRed
    , gpdvcGreen
    , gpdvcBlue

    -- ** GooglePrivacyDlpV2ListDlpJobsResponse
    , GooglePrivacyDlpV2ListDlpJobsResponse
    , googlePrivacyDlpV2ListDlpJobsResponse
    , gpdvldjrNextPageToken
    , gpdvldjrJobs

    -- ** GooglePrivacyDlpV2Proximity
    , GooglePrivacyDlpV2Proximity
    , googlePrivacyDlpV2Proximity
    , gpdvpWindowAfter
    , gpdvpWindowBefore

    -- ** GooglePrivacyDlpV2Finding
    , GooglePrivacyDlpV2Finding
    , googlePrivacyDlpV2Finding
    , gpdvfTriggerName
    , gpdvfResourceName
    , gpdvfLocation
    , gpdvfJobName
    , gpdvfInfoType
    , gpdvfQuoteInfo
    , gpdvfName
    , gpdvfLikelihood
    , gpdvfQuote
    , gpdvfLabels
    , gpdvfFindingId
    , gpdvfJobCreateTime
    , gpdvfCreateTime

    -- ** GooglePrivacyDlpV2SummaryResult
    , GooglePrivacyDlpV2SummaryResult
    , googlePrivacyDlpV2SummaryResult
    , gpdvsrCount
    , gpdvsrDetails
    , gpdvsrCode

    -- ** GooglePrivacyDlpV2Row
    , GooglePrivacyDlpV2Row
    , googlePrivacyDlpV2Row
    , gpdvrValues

    -- ** GooglePrivacyDlpV2Manual
    , GooglePrivacyDlpV2Manual
    , googlePrivacyDlpV2Manual

    -- ** GooglePrivacyDlpV2PublishToStackdriver
    , GooglePrivacyDlpV2PublishToStackdriver
    , googlePrivacyDlpV2PublishToStackdriver

    -- ** GooglePrivacyDlpV2ReplaceWithInfoTypeConfig
    , GooglePrivacyDlpV2ReplaceWithInfoTypeConfig
    , googlePrivacyDlpV2ReplaceWithInfoTypeConfig

    -- ** GoogleTypeTimeOfDay
    , GoogleTypeTimeOfDay
    , googleTypeTimeOfDay
    , gttodNanos
    , gttodHours
    , gttodMinutes
    , gttodSeconds

    -- ** GooglePrivacyDlpV2OutputStorageConfigOutputSchema
    , GooglePrivacyDlpV2OutputStorageConfigOutputSchema (..)

    -- ** GooglePrivacyDlpV2ExclusionRule
    , GooglePrivacyDlpV2ExclusionRule
    , googlePrivacyDlpV2ExclusionRule
    , gpdverRegex
    , gpdverExcludeInfoTypes
    , gpdverDictionary
    , gpdverMatchingType

    -- ** GooglePrivacyDlpV2CreateDlpJobRequest
    , GooglePrivacyDlpV2CreateDlpJobRequest
    , googlePrivacyDlpV2CreateDlpJobRequest
    , gpdvcdjrRiskJob
    , gpdvcdjrJobId
    , gpdvcdjrInspectJob
    , gpdvcdjrLocationId

    -- ** GooglePrivacyDlpV2RecordKey
    , GooglePrivacyDlpV2RecordKey
    , googlePrivacyDlpV2RecordKey
    , gpdvrkIdValues
    , gpdvrkDatastoreKey
    , gpdvrkBigQueryKey

    -- ** GooglePrivacyDlpV2KMapEstimationHistogramBucket
    , GooglePrivacyDlpV2KMapEstimationHistogramBucket
    , googlePrivacyDlpV2KMapEstimationHistogramBucket
    , gpdvkmehbMaxAnonymity
    , gpdvkmehbBucketValues
    , gpdvkmehbMinAnonymity
    , gpdvkmehbBucketSize
    , gpdvkmehbBucketValueCount

    -- ** GooglePrivacyDlpV2LargeCustomDictionaryStats
    , GooglePrivacyDlpV2LargeCustomDictionaryStats
    , googlePrivacyDlpV2LargeCustomDictionaryStats
    , gpdvlcdsApproxNumPhrases

    -- ** GooglePrivacyDlpV2ListDeidentifyTemplatesResponse
    , GooglePrivacyDlpV2ListDeidentifyTemplatesResponse
    , googlePrivacyDlpV2ListDeidentifyTemplatesResponse
    , gpdvldtrNextPageToken
    , gpdvldtrDeidentifyTemplates

    -- ** GooglePrivacyDlpV2BigQueryOptionsSampleMethod
    , GooglePrivacyDlpV2BigQueryOptionsSampleMethod (..)

    -- ** GooglePrivacyDlpV2DlpJobType
    , GooglePrivacyDlpV2DlpJobType (..)

    -- ** GooglePrivacyDlpV2KAnonymityConfig
    , GooglePrivacyDlpV2KAnonymityConfig
    , googlePrivacyDlpV2KAnonymityConfig
    , gpdvkacEntityId
    , gpdvkacQuasiIds

    -- ** GooglePrivacyDlpV2DeidentifyContentResponse
    , GooglePrivacyDlpV2DeidentifyContentResponse
    , googlePrivacyDlpV2DeidentifyContentResponse
    , gOverview
    , gItem

    -- ** GooglePrivacyDlpV2JobTrigger
    , GooglePrivacyDlpV2JobTrigger
    , googlePrivacyDlpV2JobTrigger
    , gpdvjtStatus
    , gpdvjtTriggers
    , gpdvjtLastRunTime
    , gpdvjtInspectJob
    , gpdvjtUpdateTime
    , gpdvjtName
    , gpdvjtDisplayName
    , gpdvjtErrors
    , gpdvjtDescription
    , gpdvjtCreateTime

    -- ** GooglePrivacyDlpV2ListStoredInfoTypesResponse
    , GooglePrivacyDlpV2ListStoredInfoTypesResponse
    , googlePrivacyDlpV2ListStoredInfoTypesResponse
    , gpdvlsitrNextPageToken
    , gpdvlsitrStoredInfoTypes

    -- ** GooglePrivacyDlpV2LDiversityEquivalenceClass
    , GooglePrivacyDlpV2LDiversityEquivalenceClass
    , googlePrivacyDlpV2LDiversityEquivalenceClass
    , gpdvldecTopSensitiveValues
    , gpdvldecEquivalenceClassSize
    , gpdvldecNumDistinctSensitiveValues
    , gpdvldecQuasiIdsValues

    -- ** GooglePrivacyDlpV2ActivateJobTriggerRequest
    , GooglePrivacyDlpV2ActivateJobTriggerRequest
    , googlePrivacyDlpV2ActivateJobTriggerRequest

    -- ** GooglePrivacyDlpV2DeidentifyConfig
    , GooglePrivacyDlpV2DeidentifyConfig
    , googlePrivacyDlpV2DeidentifyConfig
    , gpdvdcInfoTypeTransformations
    , gpdvdcTransformationErrorHandling
    , gpdvdcRecordTransformations

    -- ** GooglePrivacyDlpV2CharacterMaskConfig
    , GooglePrivacyDlpV2CharacterMaskConfig
    , googlePrivacyDlpV2CharacterMaskConfig
    , gpdvcmcNumberToMask
    , gpdvcmcMaskingCharacter
    , gpdvcmcReverseOrder
    , gpdvcmcCharactersToIgnore

    -- ** GooglePrivacyDlpV2DatastoreOptions
    , GooglePrivacyDlpV2DatastoreOptions
    , googlePrivacyDlpV2DatastoreOptions
    , gpdvdoPartitionId
    , gpdvdoKind

    -- ** GooglePrivacyDlpV2ValueFrequency
    , GooglePrivacyDlpV2ValueFrequency
    , googlePrivacyDlpV2ValueFrequency
    , gpdvvfValue
    , gpdvvfCount

    -- ** GooglePrivacyDlpV2BoundingBox
    , GooglePrivacyDlpV2BoundingBox
    , googlePrivacyDlpV2BoundingBox
    , gpdvbbHeight
    , gpdvbbLeft
    , gpdvbbWidth
    , gpdvbbTop

    -- ** GooglePrivacyDlpV2PartitionId
    , GooglePrivacyDlpV2PartitionId
    , googlePrivacyDlpV2PartitionId
    , gpdvpiNamespaceId
    , gpdvpiProjectId

    -- ** GooglePrivacyDlpV2SaveFindings
    , GooglePrivacyDlpV2SaveFindings
    , googlePrivacyDlpV2SaveFindings
    , gpdvsfOutputConfig

    -- ** GooglePrivacyDlpV2StoredInfoTypeVersion
    , GooglePrivacyDlpV2StoredInfoTypeVersion
    , googlePrivacyDlpV2StoredInfoTypeVersion
    , gpdvsitvState
    , gpdvsitvConfig
    , gpdvsitvStats
    , gpdvsitvErrors
    , gpdvsitvCreateTime

    -- ** GooglePrivacyDlpV2ListInfoTypesResponse
    , GooglePrivacyDlpV2ListInfoTypesResponse
    , googlePrivacyDlpV2ListInfoTypesResponse
    , gpdvlitrInfoTypes

    -- ** GooglePrivacyDlpV2ContentLocation
    , GooglePrivacyDlpV2ContentLocation
    , googlePrivacyDlpV2ContentLocation
    , gpdvclImageLocation
    , gpdvclContainerName
    , gpdvclContainerTimestamp
    , gpdvclDocumentLocation
    , gpdvclContainerVersion
    , gpdvclRecordLocation
    , gpdvclMetadataLocation

    -- ** GooglePrivacyDlpV2AuxiliaryTable
    , GooglePrivacyDlpV2AuxiliaryTable
    , googlePrivacyDlpV2AuxiliaryTable
    , gpdvatRelativeFrequency
    , gpdvatTable
    , gpdvatQuasiIds

    -- ** GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket
    , GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket
    , googlePrivacyDlpV2DeltaPresenceEstimationHistogramBucket
    , gpdvdpehbBucketValues
    , gpdvdpehbMaxProbability
    , gpdvdpehbMinProbability
    , gpdvdpehbBucketSize
    , gpdvdpehbBucketValueCount

    -- ** GooglePrivacyDlpV2InspectConfigMinLikelihood
    , GooglePrivacyDlpV2InspectConfigMinLikelihood (..)

    -- ** GooglePrivacyDlpV2FileSet
    , GooglePrivacyDlpV2FileSet
    , googlePrivacyDlpV2FileSet
    , gpdvfsURL
    , gpdvfsRegexFileSet

    -- ** GooglePrivacyDlpV2HybridOptions
    , GooglePrivacyDlpV2HybridOptions
    , googlePrivacyDlpV2HybridOptions
    , gpdvhoTableOptions
    , gpdvhoLabels
    , gpdvhoRequiredFindingLabelKeys
    , gpdvhoDescription

    -- ** GooglePrivacyDlpV2ListInspectTemplatesResponse
    , GooglePrivacyDlpV2ListInspectTemplatesResponse
    , googlePrivacyDlpV2ListInspectTemplatesResponse
    , gpdvlitrNextPageToken
    , gpdvlitrInspectTemplates

    -- ** GooglePrivacyDlpV2KAnonymityResult
    , GooglePrivacyDlpV2KAnonymityResult
    , googlePrivacyDlpV2KAnonymityResult
    , gpdvkarEquivalenceClassHistogramBuckets

    -- ** GooglePrivacyDlpV2BigQueryField
    , GooglePrivacyDlpV2BigQueryField
    , googlePrivacyDlpV2BigQueryField
    , gpdvbqfField
    , gpdvbqfTable

    -- ** GooglePrivacyDlpV2CharsToIgnoreCommonCharactersToIgnore
    , GooglePrivacyDlpV2CharsToIgnoreCommonCharactersToIgnore (..)

    -- ** GooglePrivacyDlpV2HybridInspectJobTriggerRequest
    , GooglePrivacyDlpV2HybridInspectJobTriggerRequest
    , googlePrivacyDlpV2HybridInspectJobTriggerRequest
    , gpdvhijtrHybridItem

    -- ** GooglePrivacyDlpV2OutputStorageConfig
    , GooglePrivacyDlpV2OutputStorageConfig
    , googlePrivacyDlpV2OutputStorageConfig
    , gpdvoscOutputSchema
    , gpdvoscTable

    -- ** GooglePrivacyDlpV2CloudStorageFileSet
    , GooglePrivacyDlpV2CloudStorageFileSet
    , googlePrivacyDlpV2CloudStorageFileSet
    , gpdvcsfsURL

    -- ** GooglePrivacyDlpV2InfoTypeTransformations
    , GooglePrivacyDlpV2InfoTypeTransformations
    , googlePrivacyDlpV2InfoTypeTransformations
    , gpdvittTransformations

    -- ** GooglePrivacyDlpV2KmsWrAppedCryptoKey
    , GooglePrivacyDlpV2KmsWrAppedCryptoKey
    , googlePrivacyDlpV2KmsWrAppedCryptoKey
    , gpdvkwackWrAppedKey
    , gpdvkwackCryptoKeyName

    -- ** GooglePrivacyDlpV2CryptoReplaceFfxFpeConfigCommonAlphabet
    , GooglePrivacyDlpV2CryptoReplaceFfxFpeConfigCommonAlphabet (..)

    -- ** GooglePrivacyDlpV2InspectContentResponse
    , GooglePrivacyDlpV2InspectContentResponse
    , googlePrivacyDlpV2InspectContentResponse
    , gpdvicrResult

    -- ** GooglePrivacyDlpV2LDiversityHistogramBucket
    , GooglePrivacyDlpV2LDiversityHistogramBucket
    , googlePrivacyDlpV2LDiversityHistogramBucket
    , gpdvldhbBucketValues
    , gpdvldhbSensitiveValueFrequencyLowerBound
    , gpdvldhbSensitiveValueFrequencyUpperBound
    , gpdvldhbBucketSize
    , gpdvldhbBucketValueCount

    -- ** GooglePrivacyDlpV2ReidentifyContentResponse
    , GooglePrivacyDlpV2ReidentifyContentResponse
    , googlePrivacyDlpV2ReidentifyContentResponse
    , gpdvrcrOverview
    , gpdvrcrItem

    -- ** GooglePrivacyDlpV2HybridInspectResponse
    , GooglePrivacyDlpV2HybridInspectResponse
    , googlePrivacyDlpV2HybridInspectResponse

    -- ** GooglePrivacyDlpV2Expressions
    , GooglePrivacyDlpV2Expressions
    , googlePrivacyDlpV2Expressions
    , gpdveLogicalOperator
    , gpdveConditions

    -- ** GooglePrivacyDlpV2CloudStorageOptionsSampleMethod
    , GooglePrivacyDlpV2CloudStorageOptionsSampleMethod (..)

    -- ** Xgafv
    , Xgafv (..)

    -- ** GooglePrivacyDlpV2DateTime
    , GooglePrivacyDlpV2DateTime
    , googlePrivacyDlpV2DateTime
    , gpdvdtTime
    , gpdvdtDate
    , gpdvdtTimeZone
    , gpdvdtDayOfWeek

    -- ** GooglePrivacyDlpV2CloudStorageRegexFileSet
    , GooglePrivacyDlpV2CloudStorageRegexFileSet
    , googlePrivacyDlpV2CloudStorageRegexFileSet
    , gpdvcsrfsExcludeRegex
    , gpdvcsrfsBucketName
    , gpdvcsrfsIncludeRegex

    -- ** GooglePrivacyDlpV2RequestedRiskAnalysisOptions
    , GooglePrivacyDlpV2RequestedRiskAnalysisOptions
    , googlePrivacyDlpV2RequestedRiskAnalysisOptions
    , gpdvrraoJobConfig

    -- ** GooglePrivacyDlpV2ExclusionRuleMatchingType
    , GooglePrivacyDlpV2ExclusionRuleMatchingType (..)

    -- ** GooglePrivacyDlpV2ValueDayOfWeekValue
    , GooglePrivacyDlpV2ValueDayOfWeekValue (..)

    -- ** GooglePrivacyDlpV2ThrowError
    , GooglePrivacyDlpV2ThrowError
    , googlePrivacyDlpV2ThrowError

    -- ** GooglePrivacyDlpV2Bucket
    , GooglePrivacyDlpV2Bucket
    , googlePrivacyDlpV2Bucket
    , gpdvbMax
    , gpdvbReplacementValue
    , gpdvbMin

    -- ** GooglePrivacyDlpV2Action
    , GooglePrivacyDlpV2Action
    , googlePrivacyDlpV2Action
    , gpdvaPublishToStackdriver
    , gpdvaJobNotificationEmails
    , gpdvaPubSub
    , gpdvaPublishFindingsToCloudDataCatalog
    , gpdvaSaveFindings
    , gpdvaPublishSummaryToCscc

    -- ** GoogleTypeDate
    , GoogleTypeDate
    , googleTypeDate
    , gtdDay
    , gtdYear
    , gtdMonth

    -- ** GooglePrivacyDlpV2TableOptions
    , GooglePrivacyDlpV2TableOptions
    , googlePrivacyDlpV2TableOptions
    , gpdvtoIdentifyingFields

    -- ** GooglePrivacyDlpV2SurrogateType
    , GooglePrivacyDlpV2SurrogateType
    , googlePrivacyDlpV2SurrogateType

    -- ** GooglePrivacyDlpV2ByteContentItemType
    , GooglePrivacyDlpV2ByteContentItemType (..)

    -- ** GooglePrivacyDlpV2Table
    , GooglePrivacyDlpV2Table
    , googlePrivacyDlpV2Table
    , gpdvtRows
    , gpdvtHeaders

    -- ** GooglePrivacyDlpV2LDiversityResult
    , GooglePrivacyDlpV2LDiversityResult
    , googlePrivacyDlpV2LDiversityResult
    , gpdvldrSensitiveValueFrequencyHistogramBuckets

    -- ** GooglePrivacyDlpV2KMapEstimationConfig
    , GooglePrivacyDlpV2KMapEstimationConfig
    , googlePrivacyDlpV2KMapEstimationConfig
    , gpdvkmecAuxiliaryTables
    , gpdvkmecRegionCode
    , gpdvkmecQuasiIds

    -- ** GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig
    , GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig
    , googlePrivacyDlpV2CryptoReplaceFfxFpeConfig
    , gpdvcrffcContext
    , gpdvcrffcCommonAlphabet
    , gpdvcrffcSurrogateInfoType
    , gpdvcrffcCustomAlphabet
    , gpdvcrffcCryptoKey
    , gpdvcrffcRadix

    -- ** GooglePrivacyDlpV2QuasiIdentifierField
    , GooglePrivacyDlpV2QuasiIdentifierField
    , googlePrivacyDlpV2QuasiIdentifierField
    , gField
    , gCustomTag

    -- ** GooglePrivacyDlpV2InfoType
    , GooglePrivacyDlpV2InfoType
    , googlePrivacyDlpV2InfoType
    , gpdvitName

    -- ** GooglePrivacyDlpV2InspectTemplate
    , GooglePrivacyDlpV2InspectTemplate
    , googlePrivacyDlpV2InspectTemplate
    , gInspectConfig
    , gUpdateTime
    , gName
    , gDisplayName
    , gDescription
    , gCreateTime

    -- ** GooglePrivacyDlpV2KAnonymityHistogramBucket
    , GooglePrivacyDlpV2KAnonymityHistogramBucket
    , googlePrivacyDlpV2KAnonymityHistogramBucket
    , gpdvkahbEquivalenceClassSizeLowerBound
    , gpdvkahbEquivalenceClassSizeUpperBound
    , gpdvkahbBucketValues
    , gpdvkahbBucketSize
    , gpdvkahbBucketValueCount

    -- ** GooglePrivacyDlpV2ReidentifyContentRequest
    , GooglePrivacyDlpV2ReidentifyContentRequest
    , googlePrivacyDlpV2ReidentifyContentRequest
    , gooInspectConfig
    , gooReidentifyTemplateName
    , gooItem
    , gooLocationId
    , gooInspectTemplateName
    , gooReidentifyConfig

    -- ** GooglePrivacyDlpV2CryptoHashConfig
    , GooglePrivacyDlpV2CryptoHashConfig
    , googlePrivacyDlpV2CryptoHashConfig
    , gpdvchcCryptoKey

    -- ** GooglePrivacyDlpV2InfoTypeLimit
    , GooglePrivacyDlpV2InfoTypeLimit
    , googlePrivacyDlpV2InfoTypeLimit
    , gpdvitlMaxFindings
    , gpdvitlInfoType

    -- ** GooglePrivacyDlpV2TableLocation
    , GooglePrivacyDlpV2TableLocation
    , googlePrivacyDlpV2TableLocation
    , gpdvtlRowIndex

    -- ** GooglePrivacyDlpV2TimeZone
    , GooglePrivacyDlpV2TimeZone
    , googlePrivacyDlpV2TimeZone
    , gpdvtzOffSetMinutes

    -- ** GooglePrivacyDlpV2JobTriggerStatus
    , GooglePrivacyDlpV2JobTriggerStatus (..)

    -- ** ProjectsDlpJobsListType
    , ProjectsDlpJobsListType (..)

    -- ** GooglePrivacyDlpV2StorageConfig
    , GooglePrivacyDlpV2StorageConfig
    , googlePrivacyDlpV2StorageConfig
    , gpdvscHybridOptions
    , gpdvscTimespanConfig
    , gpdvscBigQueryOptions
    , gpdvscDatastoreOptions
    , gpdvscCloudStorageOptions

    -- ** OrganizationsLocationsJobTriggersListType
    , OrganizationsLocationsJobTriggersListType (..)

    -- ** GooglePrivacyDlpV2HybridFindingDetails
    , GooglePrivacyDlpV2HybridFindingDetails
    , googlePrivacyDlpV2HybridFindingDetails
    , gpdvhfdFileOffSet
    , gpdvhfdTableOptions
    , gpdvhfdRowOffSet
    , gpdvhfdContainerDetails
    , gpdvhfdLabels

    -- ** GooglePrivacyDlpV2Value
    , GooglePrivacyDlpV2Value
    , googlePrivacyDlpV2Value
    , gpdvvDayOfWeekValue
    , gpdvvIntegerValue
    , gpdvvTimestampValue
    , gpdvvTimeValue
    , gpdvvStringValue
    , gpdvvDateValue
    , gpdvvBooleanValue
    , gpdvvFloatValue

    -- ** GooglePrivacyDlpV2Dictionary
    , GooglePrivacyDlpV2Dictionary
    , googlePrivacyDlpV2Dictionary
    , gpdvdWordList
    , gpdvdCloudStoragePath

    -- ** GooglePrivacyDlpV2InspectConfigContentOptionsItem
    , GooglePrivacyDlpV2InspectConfigContentOptionsItem (..)

    -- ** GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails
    , GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails
    , googlePrivacyDlpV2AnalyzeDataSourceRiskDetails
    , gpdvadsrdRequestedPrivacyMetric
    , gpdvadsrdRequestedSourceTable
    , gpdvadsrdLDiversityResult
    , gpdvadsrdKAnonymityResult
    , gpdvadsrdKMapEstimationResult
    , gpdvadsrdRequestedOptions
    , gpdvadsrdDeltaPresenceEstimationResult
    , gpdvadsrdNumericalStatsResult
    , gpdvadsrdCategoricalStatsResult

    -- ** GooglePrivacyDlpV2Conditions
    , GooglePrivacyDlpV2Conditions
    , googlePrivacyDlpV2Conditions
    , gpdvcConditions

    -- ** GooglePrivacyDlpV2DatastoreKey
    , GooglePrivacyDlpV2DatastoreKey
    , googlePrivacyDlpV2DatastoreKey
    , gpdvdkEntityKey

    -- ** GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues
    , GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues
    , googlePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues
    , gpdvdpeqivEstimatedProbability
    , gpdvdpeqivQuasiIdsValues

    -- ** GooglePrivacyDlpV2CharsToIgnore
    , GooglePrivacyDlpV2CharsToIgnore
    , googlePrivacyDlpV2CharsToIgnore
    , gpdvctiCommonCharactersToIgnore
    , gpdvctiCharactersToSkip

    -- ** GooglePrivacyDlpV2BigQueryTable
    , GooglePrivacyDlpV2BigQueryTable
    , googlePrivacyDlpV2BigQueryTable
    , gpdvbqtDataSetId
    , gpdvbqtProjectId
    , gpdvbqtTableId

    -- ** GooglePrivacyDlpV2MetadataLocation
    , GooglePrivacyDlpV2MetadataLocation
    , googlePrivacyDlpV2MetadataLocation
    , gpdvmlStorageLabel
    , gpdvmlType

    -- ** GooglePrivacyDlpV2RequestedOptions
    , GooglePrivacyDlpV2RequestedOptions
    , googlePrivacyDlpV2RequestedOptions
    , gpdvroSnapshotInspectTemplate
    , gpdvroJobConfig

    -- ** GooglePrivacyDlpV2PrimitiveTransformation
    , GooglePrivacyDlpV2PrimitiveTransformation
    , googlePrivacyDlpV2PrimitiveTransformation
    , gpdvptFixedSizeBucketingConfig
    , gpdvptRedactConfig
    , gpdvptCharacterMaskConfig
    , gpdvptTimePartConfig
    , gpdvptDateShiftConfig
    , gpdvptBucketingConfig
    , gpdvptReplaceWithInfoTypeConfig
    , gpdvptCryptoDeterministicConfig
    , gpdvptCryptoHashConfig
    , gpdvptReplaceConfig
    , gpdvptCryptoReplaceFfxFpeConfig

    -- ** GooglePrivacyDlpV2CancelDlpJobRequest
    , GooglePrivacyDlpV2CancelDlpJobRequest
    , googlePrivacyDlpV2CancelDlpJobRequest

    -- ** GooglePrivacyDlpV2HybridContentItem
    , GooglePrivacyDlpV2HybridContentItem
    , googlePrivacyDlpV2HybridContentItem
    , gpdvhciFindingDetails
    , gpdvhciItem

    -- ** GooglePrivacyDlpV2InfoTypeDescriptionSupportedByItem
    , GooglePrivacyDlpV2InfoTypeDescriptionSupportedByItem (..)

    -- ** GooglePrivacyDlpV2RecordLocation
    , GooglePrivacyDlpV2RecordLocation
    , googlePrivacyDlpV2RecordLocation
    , gpdvrlTableLocation
    , gpdvrlFieldId
    , gpdvrlRecordKey

    -- ** GooglePrivacyDlpV2StoredInfoTypeVersionState
    , GooglePrivacyDlpV2StoredInfoTypeVersionState (..)

    -- ** GooglePrivacyDlpV2Error
    , GooglePrivacyDlpV2Error
    , googlePrivacyDlpV2Error
    , gpdveDetails
    , gpdveTimestamps

    -- ** GooglePrivacyDlpV2StoredInfoType
    , GooglePrivacyDlpV2StoredInfoType
    , googlePrivacyDlpV2StoredInfoType
    , gpdvsitCurrentVersion
    , gpdvsitName
    , gpdvsitPendingVersions

    -- ** GooglePrivacyDlpV2CryptoDeterministicConfig
    , GooglePrivacyDlpV2CryptoDeterministicConfig
    , googlePrivacyDlpV2CryptoDeterministicConfig
    , gpdvcdcContext
    , gpdvcdcSurrogateInfoType
    , gpdvcdcCryptoKey

    -- ** GooglePrivacyDlpV2StatisticalTable
    , GooglePrivacyDlpV2StatisticalTable
    , googlePrivacyDlpV2StatisticalTable
    , gpdvstRelativeFrequency
    , gpdvstTable
    , gpdvstQuasiIds

    -- ** ProjectsLocationsJobTriggersListType
    , ProjectsLocationsJobTriggersListType (..)

    -- ** GooglePrivacyDlpV2DeidentifyTemplate
    , GooglePrivacyDlpV2DeidentifyTemplate
    , googlePrivacyDlpV2DeidentifyTemplate
    , gpdvdtUpdateTime
    , gpdvdtName
    , gpdvdtDeidentifyConfig
    , gpdvdtDisplayName
    , gpdvdtDescription
    , gpdvdtCreateTime

    -- ** GooglePrivacyDlpV2ReplaceValueConfig
    , GooglePrivacyDlpV2ReplaceValueConfig
    , googlePrivacyDlpV2ReplaceValueConfig
    , gpdvrvcNewValue

    -- ** GooglePrivacyDlpV2CategoricalStatsConfig
    , GooglePrivacyDlpV2CategoricalStatsConfig
    , googlePrivacyDlpV2CategoricalStatsConfig
    , gpdvcscField

    -- ** GooglePrivacyDlpV2NumericalStatsConfig
    , GooglePrivacyDlpV2NumericalStatsConfig
    , googlePrivacyDlpV2NumericalStatsConfig
    , gpdvnscField

    -- ** GooglePrivacyDlpV2ListJobTriggersResponse
    , GooglePrivacyDlpV2ListJobTriggersResponse
    , googlePrivacyDlpV2ListJobTriggersResponse
    , gpdvljtrNextPageToken
    , gpdvljtrJobTriggers

    -- ** GooglePrivacyDlpV2CloudStoragePath
    , GooglePrivacyDlpV2CloudStoragePath
    , googlePrivacyDlpV2CloudStoragePath
    , gpdvcspPath

    -- ** GooglePrivacyDlpV2FinishDlpJobRequest
    , GooglePrivacyDlpV2FinishDlpJobRequest
    , googlePrivacyDlpV2FinishDlpJobRequest

    -- ** GooglePrivacyDlpV2Location
    , GooglePrivacyDlpV2Location
    , googlePrivacyDlpV2Location
    , gpdvlCodepointRange
    , gpdvlContainer
    , gpdvlContentLocations
    , gpdvlByteRange

    -- ** GooglePrivacyDlpV2Schedule
    , GooglePrivacyDlpV2Schedule
    , googlePrivacyDlpV2Schedule
    , gpdvsRecurrencePeriodDuration

    -- ** GooglePrivacyDlpV2ExpressionsLogicalOperator
    , GooglePrivacyDlpV2ExpressionsLogicalOperator (..)

    -- ** GooglePrivacyDlpV2CreateJobTriggerRequest
    , GooglePrivacyDlpV2CreateJobTriggerRequest
    , googlePrivacyDlpV2CreateJobTriggerRequest
    , gpdvcjtrTriggerId
    , gpdvcjtrJobTrigger
    , gpdvcjtrLocationId

    -- ** GooglePrivacyDlpV2TransformationOverview
    , GooglePrivacyDlpV2TransformationOverview
    , googlePrivacyDlpV2TransformationOverview
    , gpdvtoTransformedBytes
    , gpdvtoTransformationSummaries

    -- ** GooglePrivacyDlpV2StorageMetadataLabel
    , GooglePrivacyDlpV2StorageMetadataLabel
    , googlePrivacyDlpV2StorageMetadataLabel
    , gpdvsmlKey

    -- ** GooglePrivacyDlpV2ImageLocation
    , GooglePrivacyDlpV2ImageLocation
    , googlePrivacyDlpV2ImageLocation
    , gpdvilBoundingBoxes

    -- ** GooglePrivacyDlpV2KindExpression
    , GooglePrivacyDlpV2KindExpression
    , googlePrivacyDlpV2KindExpression
    , gpdvkeName

    -- ** GooglePrivacyDlpV2PrivacyMetric
    , GooglePrivacyDlpV2PrivacyMetric
    , googlePrivacyDlpV2PrivacyMetric
    , gpdvpmNumericalStatsConfig
    , gpdvpmCategoricalStatsConfig
    , gpdvpmKMapEstimationConfig
    , gpdvpmKAnonymityConfig
    , gpdvpmLDiversityConfig
    , gpdvpmDeltaPresenceEstimationConfig

    -- ** GooglePrivacyDlpV2UnwrAppedCryptoKey
    , GooglePrivacyDlpV2UnwrAppedCryptoKey
    , googlePrivacyDlpV2UnwrAppedCryptoKey
    , gpdvuackKey

    -- ** GooglePrivacyDlpV2InspectionRuleSet
    , GooglePrivacyDlpV2InspectionRuleSet
    , googlePrivacyDlpV2InspectionRuleSet
    , gpdvirsRules
    , gpdvirsInfoTypes

    -- ** GooglePrivacyDlpV2QuasiId
    , GooglePrivacyDlpV2QuasiId
    , googlePrivacyDlpV2QuasiId
    , gpdvqiField
    , gpdvqiInfoType
    , gpdvqiInferred
    , gpdvqiCustomTag

    -- ** GooglePrivacyDlpV2DocumentLocation
    , GooglePrivacyDlpV2DocumentLocation
    , googlePrivacyDlpV2DocumentLocation
    , gpdvdlFileOffSet
    ) where

import Network.Google.Prelude
import Network.Google.DLP.Types
import Network.Google.Resource.DLP.InfoTypes.List
import Network.Google.Resource.DLP.Locations.InfoTypes.List
import Network.Google.Resource.DLP.Organizations.DeidentifyTemplates.Create
import Network.Google.Resource.DLP.Organizations.DeidentifyTemplates.Delete
import Network.Google.Resource.DLP.Organizations.DeidentifyTemplates.Get
import Network.Google.Resource.DLP.Organizations.DeidentifyTemplates.List
import Network.Google.Resource.DLP.Organizations.DeidentifyTemplates.Patch
import Network.Google.Resource.DLP.Organizations.InspectTemplates.Create
import Network.Google.Resource.DLP.Organizations.InspectTemplates.Delete
import Network.Google.Resource.DLP.Organizations.InspectTemplates.Get
import Network.Google.Resource.DLP.Organizations.InspectTemplates.List
import Network.Google.Resource.DLP.Organizations.InspectTemplates.Patch
import Network.Google.Resource.DLP.Organizations.Locations.DeidentifyTemplates.Create
import Network.Google.Resource.DLP.Organizations.Locations.DeidentifyTemplates.Delete
import Network.Google.Resource.DLP.Organizations.Locations.DeidentifyTemplates.Get
import Network.Google.Resource.DLP.Organizations.Locations.DeidentifyTemplates.List
import Network.Google.Resource.DLP.Organizations.Locations.DeidentifyTemplates.Patch
import Network.Google.Resource.DLP.Organizations.Locations.DlpJobs.List
import Network.Google.Resource.DLP.Organizations.Locations.InspectTemplates.Create
import Network.Google.Resource.DLP.Organizations.Locations.InspectTemplates.Delete
import Network.Google.Resource.DLP.Organizations.Locations.InspectTemplates.Get
import Network.Google.Resource.DLP.Organizations.Locations.InspectTemplates.List
import Network.Google.Resource.DLP.Organizations.Locations.InspectTemplates.Patch
import Network.Google.Resource.DLP.Organizations.Locations.JobTriggers.Create
import Network.Google.Resource.DLP.Organizations.Locations.JobTriggers.Delete
import Network.Google.Resource.DLP.Organizations.Locations.JobTriggers.Get
import Network.Google.Resource.DLP.Organizations.Locations.JobTriggers.List
import Network.Google.Resource.DLP.Organizations.Locations.JobTriggers.Patch
import Network.Google.Resource.DLP.Organizations.Locations.StoredInfoTypes.Create
import Network.Google.Resource.DLP.Organizations.Locations.StoredInfoTypes.Delete
import Network.Google.Resource.DLP.Organizations.Locations.StoredInfoTypes.Get
import Network.Google.Resource.DLP.Organizations.Locations.StoredInfoTypes.List
import Network.Google.Resource.DLP.Organizations.Locations.StoredInfoTypes.Patch
import Network.Google.Resource.DLP.Organizations.StoredInfoTypes.Create
import Network.Google.Resource.DLP.Organizations.StoredInfoTypes.Delete
import Network.Google.Resource.DLP.Organizations.StoredInfoTypes.Get
import Network.Google.Resource.DLP.Organizations.StoredInfoTypes.List
import Network.Google.Resource.DLP.Organizations.StoredInfoTypes.Patch
import Network.Google.Resource.DLP.Projects.Content.Deidentify
import Network.Google.Resource.DLP.Projects.Content.Inspect
import Network.Google.Resource.DLP.Projects.Content.Reidentify
import Network.Google.Resource.DLP.Projects.DeidentifyTemplates.Create
import Network.Google.Resource.DLP.Projects.DeidentifyTemplates.Delete
import Network.Google.Resource.DLP.Projects.DeidentifyTemplates.Get
import Network.Google.Resource.DLP.Projects.DeidentifyTemplates.List
import Network.Google.Resource.DLP.Projects.DeidentifyTemplates.Patch
import Network.Google.Resource.DLP.Projects.DlpJobs.Cancel
import Network.Google.Resource.DLP.Projects.DlpJobs.Create
import Network.Google.Resource.DLP.Projects.DlpJobs.Delete
import Network.Google.Resource.DLP.Projects.DlpJobs.Get
import Network.Google.Resource.DLP.Projects.DlpJobs.List
import Network.Google.Resource.DLP.Projects.Image.Redact
import Network.Google.Resource.DLP.Projects.InspectTemplates.Create
import Network.Google.Resource.DLP.Projects.InspectTemplates.Delete
import Network.Google.Resource.DLP.Projects.InspectTemplates.Get
import Network.Google.Resource.DLP.Projects.InspectTemplates.List
import Network.Google.Resource.DLP.Projects.InspectTemplates.Patch
import Network.Google.Resource.DLP.Projects.JobTriggers.Activate
import Network.Google.Resource.DLP.Projects.JobTriggers.Create
import Network.Google.Resource.DLP.Projects.JobTriggers.Delete
import Network.Google.Resource.DLP.Projects.JobTriggers.Get
import Network.Google.Resource.DLP.Projects.JobTriggers.List
import Network.Google.Resource.DLP.Projects.JobTriggers.Patch
import Network.Google.Resource.DLP.Projects.Locations.Content.Deidentify
import Network.Google.Resource.DLP.Projects.Locations.Content.Inspect
import Network.Google.Resource.DLP.Projects.Locations.Content.Reidentify
import Network.Google.Resource.DLP.Projects.Locations.DeidentifyTemplates.Create
import Network.Google.Resource.DLP.Projects.Locations.DeidentifyTemplates.Delete
import Network.Google.Resource.DLP.Projects.Locations.DeidentifyTemplates.Get
import Network.Google.Resource.DLP.Projects.Locations.DeidentifyTemplates.List
import Network.Google.Resource.DLP.Projects.Locations.DeidentifyTemplates.Patch
import Network.Google.Resource.DLP.Projects.Locations.DlpJobs.Cancel
import Network.Google.Resource.DLP.Projects.Locations.DlpJobs.Create
import Network.Google.Resource.DLP.Projects.Locations.DlpJobs.Delete
import Network.Google.Resource.DLP.Projects.Locations.DlpJobs.Finish
import Network.Google.Resource.DLP.Projects.Locations.DlpJobs.Get
import Network.Google.Resource.DLP.Projects.Locations.DlpJobs.HybridInspect
import Network.Google.Resource.DLP.Projects.Locations.DlpJobs.List
import Network.Google.Resource.DLP.Projects.Locations.Image.Redact
import Network.Google.Resource.DLP.Projects.Locations.InspectTemplates.Create
import Network.Google.Resource.DLP.Projects.Locations.InspectTemplates.Delete
import Network.Google.Resource.DLP.Projects.Locations.InspectTemplates.Get
import Network.Google.Resource.DLP.Projects.Locations.InspectTemplates.List
import Network.Google.Resource.DLP.Projects.Locations.InspectTemplates.Patch
import Network.Google.Resource.DLP.Projects.Locations.JobTriggers.Activate
import Network.Google.Resource.DLP.Projects.Locations.JobTriggers.Create
import Network.Google.Resource.DLP.Projects.Locations.JobTriggers.Delete
import Network.Google.Resource.DLP.Projects.Locations.JobTriggers.Get
import Network.Google.Resource.DLP.Projects.Locations.JobTriggers.HybridInspect
import Network.Google.Resource.DLP.Projects.Locations.JobTriggers.List
import Network.Google.Resource.DLP.Projects.Locations.JobTriggers.Patch
import Network.Google.Resource.DLP.Projects.Locations.StoredInfoTypes.Create
import Network.Google.Resource.DLP.Projects.Locations.StoredInfoTypes.Delete
import Network.Google.Resource.DLP.Projects.Locations.StoredInfoTypes.Get
import Network.Google.Resource.DLP.Projects.Locations.StoredInfoTypes.List
import Network.Google.Resource.DLP.Projects.Locations.StoredInfoTypes.Patch
import Network.Google.Resource.DLP.Projects.StoredInfoTypes.Create
import Network.Google.Resource.DLP.Projects.StoredInfoTypes.Delete
import Network.Google.Resource.DLP.Projects.StoredInfoTypes.Get
import Network.Google.Resource.DLP.Projects.StoredInfoTypes.List
import Network.Google.Resource.DLP.Projects.StoredInfoTypes.Patch

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Data Loss Prevention (DLP) API service.
type DLPAPI =
     InfoTypesListResource :<|>
       OrganizationsInspectTemplatesListResource
       :<|> OrganizationsInspectTemplatesPatchResource
       :<|> OrganizationsInspectTemplatesGetResource
       :<|> OrganizationsInspectTemplatesCreateResource
       :<|> OrganizationsInspectTemplatesDeleteResource
       :<|> OrganizationsStoredInfoTypesListResource
       :<|> OrganizationsStoredInfoTypesPatchResource
       :<|> OrganizationsStoredInfoTypesGetResource
       :<|> OrganizationsStoredInfoTypesCreateResource
       :<|> OrganizationsStoredInfoTypesDeleteResource
       :<|> OrganizationsLocationsDlpJobsListResource
       :<|> OrganizationsLocationsJobTriggersListResource
       :<|> OrganizationsLocationsJobTriggersPatchResource
       :<|> OrganizationsLocationsJobTriggersGetResource
       :<|> OrganizationsLocationsJobTriggersCreateResource
       :<|> OrganizationsLocationsJobTriggersDeleteResource
       :<|>
       OrganizationsLocationsInspectTemplatesListResource
       :<|>
       OrganizationsLocationsInspectTemplatesPatchResource
       :<|>
       OrganizationsLocationsInspectTemplatesGetResource
       :<|>
       OrganizationsLocationsInspectTemplatesCreateResource
       :<|>
       OrganizationsLocationsInspectTemplatesDeleteResource
       :<|>
       OrganizationsLocationsStoredInfoTypesListResource
       :<|>
       OrganizationsLocationsStoredInfoTypesPatchResource
       :<|> OrganizationsLocationsStoredInfoTypesGetResource
       :<|>
       OrganizationsLocationsStoredInfoTypesCreateResource
       :<|>
       OrganizationsLocationsStoredInfoTypesDeleteResource
       :<|>
       OrganizationsLocationsDeidentifyTemplatesListResource
       :<|>
       OrganizationsLocationsDeidentifyTemplatesPatchResource
       :<|>
       OrganizationsLocationsDeidentifyTemplatesGetResource
       :<|>
       OrganizationsLocationsDeidentifyTemplatesCreateResource
       :<|>
       OrganizationsLocationsDeidentifyTemplatesDeleteResource
       :<|> OrganizationsDeidentifyTemplatesListResource
       :<|> OrganizationsDeidentifyTemplatesPatchResource
       :<|> OrganizationsDeidentifyTemplatesGetResource
       :<|> OrganizationsDeidentifyTemplatesCreateResource
       :<|> OrganizationsDeidentifyTemplatesDeleteResource
       :<|> ProjectsDlpJobsListResource
       :<|> ProjectsDlpJobsGetResource
       :<|> ProjectsDlpJobsCreateResource
       :<|> ProjectsDlpJobsCancelResource
       :<|> ProjectsDlpJobsDeleteResource
       :<|> ProjectsImageRedactResource
       :<|> ProjectsContentInspectResource
       :<|> ProjectsContentDeidentifyResource
       :<|> ProjectsContentReidentifyResource
       :<|> ProjectsJobTriggersListResource
       :<|> ProjectsJobTriggersPatchResource
       :<|> ProjectsJobTriggersGetResource
       :<|> ProjectsJobTriggersActivateResource
       :<|> ProjectsJobTriggersCreateResource
       :<|> ProjectsJobTriggersDeleteResource
       :<|> ProjectsInspectTemplatesListResource
       :<|> ProjectsInspectTemplatesPatchResource
       :<|> ProjectsInspectTemplatesGetResource
       :<|> ProjectsInspectTemplatesCreateResource
       :<|> ProjectsInspectTemplatesDeleteResource
       :<|> ProjectsStoredInfoTypesListResource
       :<|> ProjectsStoredInfoTypesPatchResource
       :<|> ProjectsStoredInfoTypesGetResource
       :<|> ProjectsStoredInfoTypesCreateResource
       :<|> ProjectsStoredInfoTypesDeleteResource
       :<|> ProjectsLocationsDlpJobsHybridInspectResource
       :<|> ProjectsLocationsDlpJobsListResource
       :<|> ProjectsLocationsDlpJobsFinishResource
       :<|> ProjectsLocationsDlpJobsGetResource
       :<|> ProjectsLocationsDlpJobsCreateResource
       :<|> ProjectsLocationsDlpJobsCancelResource
       :<|> ProjectsLocationsDlpJobsDeleteResource
       :<|> ProjectsLocationsImageRedactResource
       :<|> ProjectsLocationsContentInspectResource
       :<|> ProjectsLocationsContentDeidentifyResource
       :<|> ProjectsLocationsContentReidentifyResource
       :<|>
       ProjectsLocationsJobTriggersHybridInspectResource
       :<|> ProjectsLocationsJobTriggersListResource
       :<|> ProjectsLocationsJobTriggersPatchResource
       :<|> ProjectsLocationsJobTriggersGetResource
       :<|> ProjectsLocationsJobTriggersActivateResource
       :<|> ProjectsLocationsJobTriggersCreateResource
       :<|> ProjectsLocationsJobTriggersDeleteResource
       :<|> ProjectsLocationsInspectTemplatesListResource
       :<|> ProjectsLocationsInspectTemplatesPatchResource
       :<|> ProjectsLocationsInspectTemplatesGetResource
       :<|> ProjectsLocationsInspectTemplatesCreateResource
       :<|> ProjectsLocationsInspectTemplatesDeleteResource
       :<|> ProjectsLocationsStoredInfoTypesListResource
       :<|> ProjectsLocationsStoredInfoTypesPatchResource
       :<|> ProjectsLocationsStoredInfoTypesGetResource
       :<|> ProjectsLocationsStoredInfoTypesCreateResource
       :<|> ProjectsLocationsStoredInfoTypesDeleteResource
       :<|> ProjectsLocationsDeidentifyTemplatesListResource
       :<|>
       ProjectsLocationsDeidentifyTemplatesPatchResource
       :<|> ProjectsLocationsDeidentifyTemplatesGetResource
       :<|>
       ProjectsLocationsDeidentifyTemplatesCreateResource
       :<|>
       ProjectsLocationsDeidentifyTemplatesDeleteResource
       :<|> ProjectsDeidentifyTemplatesListResource
       :<|> ProjectsDeidentifyTemplatesPatchResource
       :<|> ProjectsDeidentifyTemplatesGetResource
       :<|> ProjectsDeidentifyTemplatesCreateResource
       :<|> ProjectsDeidentifyTemplatesDeleteResource
       :<|> LocationsInfoTypesListResource
