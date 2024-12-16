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
-- Module      : Gogol.AndroidPublisher.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.AndroidPublisher.Types
    (
    -- * Configuration
      androidPublisherService

    -- * OAuth Scopes
    , Androidpublisher'FullControl

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** Abi
    , Abi (..)
    , newAbi

    -- ** Abi_Alias
    , Abi_Alias (..)

    -- ** AbiTargeting
    , AbiTargeting (..)
    , newAbiTargeting

    -- ** AcquisitionTargetingRule
    , AcquisitionTargetingRule (..)
    , newAcquisitionTargetingRule

    -- ** ActivateBasePlanRequest
    , ActivateBasePlanRequest (..)
    , newActivateBasePlanRequest

    -- ** ActivateBasePlanRequest_LatencyTolerance
    , ActivateBasePlanRequest_LatencyTolerance (..)

    -- ** ActivateSubscriptionOfferRequest
    , ActivateSubscriptionOfferRequest (..)
    , newActivateSubscriptionOfferRequest

    -- ** ActivateSubscriptionOfferRequest_LatencyTolerance
    , ActivateSubscriptionOfferRequest_LatencyTolerance (..)

    -- ** AddTargetingRequest
    , AddTargetingRequest (..)
    , newAddTargetingRequest

    -- ** AddTargetingResponse
    , AddTargetingResponse (..)
    , newAddTargetingResponse

    -- ** AllUsers
    , AllUsers (..)
    , newAllUsers

    -- ** AndroidSdks
    , AndroidSdks (..)
    , newAndroidSdks

    -- ** Apk
    , Apk (..)
    , newApk

    -- ** ApkBinary
    , ApkBinary (..)
    , newApkBinary

    -- ** ApkDescription
    , ApkDescription (..)
    , newApkDescription

    -- ** ApkSet
    , ApkSet (..)
    , newApkSet

    -- ** ApkTargeting
    , ApkTargeting (..)
    , newApkTargeting

    -- ** ApksAddExternallyHostedRequest
    , ApksAddExternallyHostedRequest (..)
    , newApksAddExternallyHostedRequest

    -- ** ApksAddExternallyHostedResponse
    , ApksAddExternallyHostedResponse (..)
    , newApksAddExternallyHostedResponse

    -- ** ApksListResponse
    , ApksListResponse (..)
    , newApksListResponse

    -- ** AppDetails
    , AppDetails (..)
    , newAppDetails

    -- ** AppEdit
    , AppEdit (..)
    , newAppEdit

    -- ** AppRecoveryAction
    , AppRecoveryAction (..)
    , newAppRecoveryAction

    -- ** AppRecoveryAction_Status
    , AppRecoveryAction_Status (..)

    -- ** AppVersionList
    , AppVersionList (..)
    , newAppVersionList

    -- ** AppVersionRange
    , AppVersionRange (..)
    , newAppVersionRange

    -- ** ArchiveSubscriptionRequest
    , ArchiveSubscriptionRequest (..)
    , newArchiveSubscriptionRequest

    -- ** AssetModuleMetadata
    , AssetModuleMetadata (..)
    , newAssetModuleMetadata

    -- ** AssetModuleMetadata_DeliveryType
    , AssetModuleMetadata_DeliveryType (..)

    -- ** AssetSliceSet
    , AssetSliceSet (..)
    , newAssetSliceSet

    -- ** AutoRenewingBasePlanType
    , AutoRenewingBasePlanType (..)
    , newAutoRenewingBasePlanType

    -- ** AutoRenewingBasePlanType_ProrationMode
    , AutoRenewingBasePlanType_ProrationMode (..)

    -- ** AutoRenewingBasePlanType_ResubscribeState
    , AutoRenewingBasePlanType_ResubscribeState (..)

    -- ** AutoRenewingPlan
    , AutoRenewingPlan (..)
    , newAutoRenewingPlan

    -- ** BasePlan
    , BasePlan (..)
    , newBasePlan

    -- ** BasePlan_State
    , BasePlan_State (..)

    -- ** BatchGetSubscriptionOffersRequest
    , BatchGetSubscriptionOffersRequest (..)
    , newBatchGetSubscriptionOffersRequest

    -- ** BatchGetSubscriptionOffersResponse
    , BatchGetSubscriptionOffersResponse (..)
    , newBatchGetSubscriptionOffersResponse

    -- ** BatchGetSubscriptionsResponse
    , BatchGetSubscriptionsResponse (..)
    , newBatchGetSubscriptionsResponse

    -- ** BatchMigrateBasePlanPricesRequest
    , BatchMigrateBasePlanPricesRequest (..)
    , newBatchMigrateBasePlanPricesRequest

    -- ** BatchMigrateBasePlanPricesResponse
    , BatchMigrateBasePlanPricesResponse (..)
    , newBatchMigrateBasePlanPricesResponse

    -- ** BatchUpdateBasePlanStatesRequest
    , BatchUpdateBasePlanStatesRequest (..)
    , newBatchUpdateBasePlanStatesRequest

    -- ** BatchUpdateBasePlanStatesResponse
    , BatchUpdateBasePlanStatesResponse (..)
    , newBatchUpdateBasePlanStatesResponse

    -- ** BatchUpdateSubscriptionOfferStatesRequest
    , BatchUpdateSubscriptionOfferStatesRequest (..)
    , newBatchUpdateSubscriptionOfferStatesRequest

    -- ** BatchUpdateSubscriptionOfferStatesResponse
    , BatchUpdateSubscriptionOfferStatesResponse (..)
    , newBatchUpdateSubscriptionOfferStatesResponse

    -- ** BatchUpdateSubscriptionOffersRequest
    , BatchUpdateSubscriptionOffersRequest (..)
    , newBatchUpdateSubscriptionOffersRequest

    -- ** BatchUpdateSubscriptionOffersResponse
    , BatchUpdateSubscriptionOffersResponse (..)
    , newBatchUpdateSubscriptionOffersResponse

    -- ** BatchUpdateSubscriptionsRequest
    , BatchUpdateSubscriptionsRequest (..)
    , newBatchUpdateSubscriptionsRequest

    -- ** BatchUpdateSubscriptionsResponse
    , BatchUpdateSubscriptionsResponse (..)
    , newBatchUpdateSubscriptionsResponse

    -- ** Bundle
    , Bundle (..)
    , newBundle

    -- ** BundlesListResponse
    , BundlesListResponse (..)
    , newBundlesListResponse

    -- ** CancelAppRecoveryRequest
    , CancelAppRecoveryRequest (..)
    , newCancelAppRecoveryRequest

    -- ** CancelAppRecoveryResponse
    , CancelAppRecoveryResponse (..)
    , newCancelAppRecoveryResponse

    -- ** CancelSurveyResult
    , CancelSurveyResult (..)
    , newCancelSurveyResult

    -- ** CancelSurveyResult_Reason
    , CancelSurveyResult_Reason (..)

    -- ** CanceledStateContext
    , CanceledStateContext (..)
    , newCanceledStateContext

    -- ** Comment
    , Comment (..)
    , newComment

    -- ** ConvertRegionPricesRequest
    , ConvertRegionPricesRequest (..)
    , newConvertRegionPricesRequest

    -- ** ConvertRegionPricesResponse
    , ConvertRegionPricesResponse (..)
    , newConvertRegionPricesResponse

    -- ** ConvertRegionPricesResponse_ConvertedRegionPrices
    , ConvertRegionPricesResponse_ConvertedRegionPrices (..)
    , newConvertRegionPricesResponse_ConvertedRegionPrices

    -- ** ConvertedOtherRegionsPrice
    , ConvertedOtherRegionsPrice (..)
    , newConvertedOtherRegionsPrice

    -- ** ConvertedRegionPrice
    , ConvertedRegionPrice (..)
    , newConvertedRegionPrice

    -- ** CountryTargeting
    , CountryTargeting (..)
    , newCountryTargeting

    -- ** CreateDraftAppRecoveryRequest
    , CreateDraftAppRecoveryRequest (..)
    , newCreateDraftAppRecoveryRequest

    -- ** DeactivateBasePlanRequest
    , DeactivateBasePlanRequest (..)
    , newDeactivateBasePlanRequest

    -- ** DeactivateBasePlanRequest_LatencyTolerance
    , DeactivateBasePlanRequest_LatencyTolerance (..)

    -- ** DeactivateSubscriptionOfferRequest
    , DeactivateSubscriptionOfferRequest (..)
    , newDeactivateSubscriptionOfferRequest

    -- ** DeactivateSubscriptionOfferRequest_LatencyTolerance
    , DeactivateSubscriptionOfferRequest_LatencyTolerance (..)

    -- ** DeferredItemReplacement
    , DeferredItemReplacement (..)
    , newDeferredItemReplacement

    -- ** DeobfuscationFile
    , DeobfuscationFile (..)
    , newDeobfuscationFile

    -- ** DeobfuscationFile_SymbolType
    , DeobfuscationFile_SymbolType (..)

    -- ** DeobfuscationFilesUploadResponse
    , DeobfuscationFilesUploadResponse (..)
    , newDeobfuscationFilesUploadResponse

    -- ** DeployAppRecoveryRequest
    , DeployAppRecoveryRequest (..)
    , newDeployAppRecoveryRequest

    -- ** DeployAppRecoveryResponse
    , DeployAppRecoveryResponse (..)
    , newDeployAppRecoveryResponse

    -- ** DeveloperComment
    , DeveloperComment (..)
    , newDeveloperComment

    -- ** DeveloperInitiatedCancellation
    , DeveloperInitiatedCancellation (..)
    , newDeveloperInitiatedCancellation

    -- ** DeviceFeature
    , DeviceFeature (..)
    , newDeviceFeature

    -- ** DeviceFeatureTargeting
    , DeviceFeatureTargeting (..)
    , newDeviceFeatureTargeting

    -- ** DeviceGroup
    , DeviceGroup (..)
    , newDeviceGroup

    -- ** DeviceId
    , DeviceId (..)
    , newDeviceId

    -- ** DeviceMetadata
    , DeviceMetadata (..)
    , newDeviceMetadata

    -- ** DeviceRam
    , DeviceRam (..)
    , newDeviceRam

    -- ** DeviceSelector
    , DeviceSelector (..)
    , newDeviceSelector

    -- ** DeviceSpec
    , DeviceSpec (..)
    , newDeviceSpec

    -- ** DeviceTier
    , DeviceTier (..)
    , newDeviceTier

    -- ** DeviceTierConfig
    , DeviceTierConfig (..)
    , newDeviceTierConfig

    -- ** DeviceTierSet
    , DeviceTierSet (..)
    , newDeviceTierSet

    -- ** ExpansionFile
    , ExpansionFile (..)
    , newExpansionFile

    -- ** ExpansionFilesUploadResponse
    , ExpansionFilesUploadResponse (..)
    , newExpansionFilesUploadResponse

    -- ** ExternalAccountIdentifiers
    , ExternalAccountIdentifiers (..)
    , newExternalAccountIdentifiers

    -- ** ExternalSubscription
    , ExternalSubscription (..)
    , newExternalSubscription

    -- ** ExternalSubscription_SubscriptionType
    , ExternalSubscription_SubscriptionType (..)

    -- ** ExternalTransaction
    , ExternalTransaction (..)
    , newExternalTransaction

    -- ** ExternalTransaction_TransactionState
    , ExternalTransaction_TransactionState (..)

    -- ** ExternalTransactionAddress
    , ExternalTransactionAddress (..)
    , newExternalTransactionAddress

    -- ** ExternalTransactionTestPurchase
    , ExternalTransactionTestPurchase (..)
    , newExternalTransactionTestPurchase

    -- ** ExternallyHostedApk
    , ExternallyHostedApk (..)
    , newExternallyHostedApk

    -- ** FullRefund
    , FullRefund (..)
    , newFullRefund

    -- ** GeneratedApksListResponse
    , GeneratedApksListResponse (..)
    , newGeneratedApksListResponse

    -- ** GeneratedApksPerSigningKey
    , GeneratedApksPerSigningKey (..)
    , newGeneratedApksPerSigningKey

    -- ** GeneratedAssetPackSlice
    , GeneratedAssetPackSlice (..)
    , newGeneratedAssetPackSlice

    -- ** GeneratedRecoveryApk
    , GeneratedRecoveryApk (..)
    , newGeneratedRecoveryApk

    -- ** GeneratedRecoveryApk_RecoveryStatus
    , GeneratedRecoveryApk_RecoveryStatus (..)

    -- ** GeneratedSplitApk
    , GeneratedSplitApk (..)
    , newGeneratedSplitApk

    -- ** GeneratedStandaloneApk
    , GeneratedStandaloneApk (..)
    , newGeneratedStandaloneApk

    -- ** GeneratedUniversalApk
    , GeneratedUniversalApk (..)
    , newGeneratedUniversalApk

    -- ** GetSubscriptionOfferRequest
    , GetSubscriptionOfferRequest (..)
    , newGetSubscriptionOfferRequest

    -- ** Grant
    , Grant (..)
    , newGrant

    -- ** Grant_AppLevelPermissionsItem
    , Grant_AppLevelPermissionsItem (..)

    -- ** Image
    , Image (..)
    , newImage

    -- ** ImagesDeleteAllResponse
    , ImagesDeleteAllResponse (..)
    , newImagesDeleteAllResponse

    -- ** ImagesListResponse
    , ImagesListResponse (..)
    , newImagesListResponse

    -- ** ImagesUploadResponse
    , ImagesUploadResponse (..)
    , newImagesUploadResponse

    -- ** InAppProduct
    , InAppProduct (..)
    , newInAppProduct

    -- ** InAppProduct_Listings
    , InAppProduct_Listings (..)
    , newInAppProduct_Listings

    -- ** InAppProduct_Prices
    , InAppProduct_Prices (..)
    , newInAppProduct_Prices

    -- ** InAppProduct_PurchaseType
    , InAppProduct_PurchaseType (..)

    -- ** InAppProduct_Status
    , InAppProduct_Status (..)

    -- ** InAppProductListing
    , InAppProductListing (..)
    , newInAppProductListing

    -- ** InappproductsBatchDeleteRequest
    , InappproductsBatchDeleteRequest (..)
    , newInappproductsBatchDeleteRequest

    -- ** InappproductsBatchGetResponse
    , InappproductsBatchGetResponse (..)
    , newInappproductsBatchGetResponse

    -- ** InappproductsBatchUpdateRequest
    , InappproductsBatchUpdateRequest (..)
    , newInappproductsBatchUpdateRequest

    -- ** InappproductsBatchUpdateResponse
    , InappproductsBatchUpdateResponse (..)
    , newInappproductsBatchUpdateResponse

    -- ** InappproductsDeleteRequest
    , InappproductsDeleteRequest (..)
    , newInappproductsDeleteRequest

    -- ** InappproductsDeleteRequest_LatencyTolerance
    , InappproductsDeleteRequest_LatencyTolerance (..)

    -- ** InappproductsListResponse
    , InappproductsListResponse (..)
    , newInappproductsListResponse

    -- ** InappproductsUpdateRequest
    , InappproductsUpdateRequest (..)
    , newInappproductsUpdateRequest

    -- ** InappproductsUpdateRequest_LatencyTolerance
    , InappproductsUpdateRequest_LatencyTolerance (..)

    -- ** InstallmentPlan
    , InstallmentPlan (..)
    , newInstallmentPlan

    -- ** InstallmentsBasePlanType
    , InstallmentsBasePlanType (..)
    , newInstallmentsBasePlanType

    -- ** InstallmentsBasePlanType_ProrationMode
    , InstallmentsBasePlanType_ProrationMode (..)

    -- ** InstallmentsBasePlanType_RenewalType
    , InstallmentsBasePlanType_RenewalType (..)

    -- ** InstallmentsBasePlanType_ResubscribeState
    , InstallmentsBasePlanType_ResubscribeState (..)

    -- ** InternalAppSharingArtifact
    , InternalAppSharingArtifact (..)
    , newInternalAppSharingArtifact

    -- ** IntroductoryPriceInfo
    , IntroductoryPriceInfo (..)
    , newIntroductoryPriceInfo

    -- ** LanguageTargeting
    , LanguageTargeting (..)
    , newLanguageTargeting

    -- ** ListAppRecoveriesResponse
    , ListAppRecoveriesResponse (..)
    , newListAppRecoveriesResponse

    -- ** ListDeviceTierConfigsResponse
    , ListDeviceTierConfigsResponse (..)
    , newListDeviceTierConfigsResponse

    -- ** ListSubscriptionOffersResponse
    , ListSubscriptionOffersResponse (..)
    , newListSubscriptionOffersResponse

    -- ** ListSubscriptionsResponse
    , ListSubscriptionsResponse (..)
    , newListSubscriptionsResponse

    -- ** ListUsersResponse
    , ListUsersResponse (..)
    , newListUsersResponse

    -- ** Listing
    , Listing (..)
    , newListing

    -- ** ListingsListResponse
    , ListingsListResponse (..)
    , newListingsListResponse

    -- ** LocalizedText
    , LocalizedText (..)
    , newLocalizedText

    -- ** ManagedProductTaxAndComplianceSettings
    , ManagedProductTaxAndComplianceSettings (..)
    , newManagedProductTaxAndComplianceSettings

    -- ** ManagedProductTaxAndComplianceSettings_EeaWithdrawalRightType
    , ManagedProductTaxAndComplianceSettings_EeaWithdrawalRightType (..)

    -- ** ManagedProductTaxAndComplianceSettings_TaxRateInfoByRegionCode
    , ManagedProductTaxAndComplianceSettings_TaxRateInfoByRegionCode (..)
    , newManagedProductTaxAndComplianceSettings_TaxRateInfoByRegionCode

    -- ** MigrateBasePlanPricesRequest
    , MigrateBasePlanPricesRequest (..)
    , newMigrateBasePlanPricesRequest

    -- ** MigrateBasePlanPricesRequest_LatencyTolerance
    , MigrateBasePlanPricesRequest_LatencyTolerance (..)

    -- ** MigrateBasePlanPricesResponse
    , MigrateBasePlanPricesResponse (..)
    , newMigrateBasePlanPricesResponse

    -- ** ModuleMetadata
    , ModuleMetadata (..)
    , newModuleMetadata

    -- ** ModuleMetadata_DeliveryType
    , ModuleMetadata_DeliveryType (..)

    -- ** ModuleMetadata_ModuleType
    , ModuleMetadata_ModuleType (..)

    -- ** ModuleTargeting
    , ModuleTargeting (..)
    , newModuleTargeting

    -- ** Money
    , Money (..)
    , newMoney

    -- ** MultiAbi
    , MultiAbi (..)
    , newMultiAbi

    -- ** MultiAbiTargeting
    , MultiAbiTargeting (..)
    , newMultiAbiTargeting

    -- ** OfferDetails
    , OfferDetails (..)
    , newOfferDetails

    -- ** OfferTag
    , OfferTag (..)
    , newOfferTag

    -- ** OneTimeCode
    , OneTimeCode (..)
    , newOneTimeCode

    -- ** OneTimeExternalTransaction
    , OneTimeExternalTransaction (..)
    , newOneTimeExternalTransaction

    -- ** OtherRecurringProduct
    , OtherRecurringProduct (..)
    , newOtherRecurringProduct

    -- ** OtherRegionsBasePlanConfig
    , OtherRegionsBasePlanConfig (..)
    , newOtherRegionsBasePlanConfig

    -- ** OtherRegionsSubscriptionOfferConfig
    , OtherRegionsSubscriptionOfferConfig (..)
    , newOtherRegionsSubscriptionOfferConfig

    -- ** OtherRegionsSubscriptionOfferPhaseConfig
    , OtherRegionsSubscriptionOfferPhaseConfig (..)
    , newOtherRegionsSubscriptionOfferPhaseConfig

    -- ** OtherRegionsSubscriptionOfferPhaseFreePriceOverride
    , OtherRegionsSubscriptionOfferPhaseFreePriceOverride (..)
    , newOtherRegionsSubscriptionOfferPhaseFreePriceOverride

    -- ** OtherRegionsSubscriptionOfferPhasePrices
    , OtherRegionsSubscriptionOfferPhasePrices (..)
    , newOtherRegionsSubscriptionOfferPhasePrices

    -- ** PageInfo
    , PageInfo (..)
    , newPageInfo

    -- ** PartialRefund
    , PartialRefund (..)
    , newPartialRefund

    -- ** PausedStateContext
    , PausedStateContext (..)
    , newPausedStateContext

    -- ** PendingCancellation
    , PendingCancellation (..)
    , newPendingCancellation

    -- ** PrepaidBasePlanType
    , PrepaidBasePlanType (..)
    , newPrepaidBasePlanType

    -- ** PrepaidBasePlanType_TimeExtension
    , PrepaidBasePlanType_TimeExtension (..)

    -- ** PrepaidPlan
    , PrepaidPlan (..)
    , newPrepaidPlan

    -- ** Price
    , Price (..)
    , newPrice

    -- ** ProductPurchase
    , ProductPurchase (..)
    , newProductPurchase

    -- ** ProductPurchasesAcknowledgeRequest
    , ProductPurchasesAcknowledgeRequest (..)
    , newProductPurchasesAcknowledgeRequest

    -- ** RecurringExternalTransaction
    , RecurringExternalTransaction (..)
    , newRecurringExternalTransaction

    -- ** RecurringExternalTransaction_MigratedTransactionProgram
    , RecurringExternalTransaction_MigratedTransactionProgram (..)

    -- ** RefundExternalTransactionRequest
    , RefundExternalTransactionRequest (..)
    , newRefundExternalTransactionRequest

    -- ** RegionalBasePlanConfig
    , RegionalBasePlanConfig (..)
    , newRegionalBasePlanConfig

    -- ** RegionalPriceMigrationConfig
    , RegionalPriceMigrationConfig (..)
    , newRegionalPriceMigrationConfig

    -- ** RegionalPriceMigrationConfig_PriceIncreaseType
    , RegionalPriceMigrationConfig_PriceIncreaseType (..)

    -- ** RegionalSubscriptionOfferConfig
    , RegionalSubscriptionOfferConfig (..)
    , newRegionalSubscriptionOfferConfig

    -- ** RegionalSubscriptionOfferPhaseConfig
    , RegionalSubscriptionOfferPhaseConfig (..)
    , newRegionalSubscriptionOfferPhaseConfig

    -- ** RegionalSubscriptionOfferPhaseFreePriceOverride
    , RegionalSubscriptionOfferPhaseFreePriceOverride (..)
    , newRegionalSubscriptionOfferPhaseFreePriceOverride

    -- ** RegionalTaxRateInfo
    , RegionalTaxRateInfo (..)
    , newRegionalTaxRateInfo

    -- ** RegionalTaxRateInfo_StreamingTaxType
    , RegionalTaxRateInfo_StreamingTaxType (..)

    -- ** RegionalTaxRateInfo_TaxTier
    , RegionalTaxRateInfo_TaxTier (..)

    -- ** Regions
    , Regions (..)
    , newRegions

    -- ** RegionsVersion
    , RegionsVersion (..)
    , newRegionsVersion

    -- ** RemoteInAppUpdate
    , RemoteInAppUpdate (..)
    , newRemoteInAppUpdate

    -- ** RemoteInAppUpdateData
    , RemoteInAppUpdateData (..)
    , newRemoteInAppUpdateData

    -- ** RemoteInAppUpdateDataPerBundle
    , RemoteInAppUpdateDataPerBundle (..)
    , newRemoteInAppUpdateDataPerBundle

    -- ** ReplacementCancellation
    , ReplacementCancellation (..)
    , newReplacementCancellation

    -- ** RestrictedPaymentCountries
    , RestrictedPaymentCountries (..)
    , newRestrictedPaymentCountries

    -- ** Review
    , Review (..)
    , newReview

    -- ** ReviewReplyResult
    , ReviewReplyResult (..)
    , newReviewReplyResult

    -- ** ReviewsListResponse
    , ReviewsListResponse (..)
    , newReviewsListResponse

    -- ** ReviewsReplyRequest
    , ReviewsReplyRequest (..)
    , newReviewsReplyRequest

    -- ** ReviewsReplyResponse
    , ReviewsReplyResponse (..)
    , newReviewsReplyResponse

    -- ** RevocationContext
    , RevocationContext (..)
    , newRevocationContext

    -- ** RevocationContextFullRefund
    , RevocationContextFullRefund (..)
    , newRevocationContextFullRefund

    -- ** RevocationContextProratedRefund
    , RevocationContextProratedRefund (..)
    , newRevocationContextProratedRefund

    -- ** RevokeSubscriptionPurchaseRequest
    , RevokeSubscriptionPurchaseRequest (..)
    , newRevokeSubscriptionPurchaseRequest

    -- ** RevokeSubscriptionPurchaseResponse
    , RevokeSubscriptionPurchaseResponse (..)
    , newRevokeSubscriptionPurchaseResponse

    -- ** SafetyLabelsUpdateRequest
    , SafetyLabelsUpdateRequest (..)
    , newSafetyLabelsUpdateRequest

    -- ** SafetyLabelsUpdateResponse
    , SafetyLabelsUpdateResponse (..)
    , newSafetyLabelsUpdateResponse

    -- ** ScreenDensity
    , ScreenDensity (..)
    , newScreenDensity

    -- ** ScreenDensity_DensityAlias
    , ScreenDensity_DensityAlias (..)

    -- ** ScreenDensityTargeting
    , ScreenDensityTargeting (..)
    , newScreenDensityTargeting

    -- ** SdkVersion
    , SdkVersion (..)
    , newSdkVersion

    -- ** SdkVersionTargeting
    , SdkVersionTargeting (..)
    , newSdkVersionTargeting

    -- ** SignupPromotion
    , SignupPromotion (..)
    , newSignupPromotion

    -- ** SplitApkMetadata
    , SplitApkMetadata (..)
    , newSplitApkMetadata

    -- ** SplitApkVariant
    , SplitApkVariant (..)
    , newSplitApkVariant

    -- ** StandaloneApkMetadata
    , StandaloneApkMetadata (..)
    , newStandaloneApkMetadata

    -- ** SubscribeWithGoogleInfo
    , SubscribeWithGoogleInfo (..)
    , newSubscribeWithGoogleInfo

    -- ** Subscription
    , Subscription (..)
    , newSubscription

    -- ** SubscriptionCancelSurveyResult
    , SubscriptionCancelSurveyResult (..)
    , newSubscriptionCancelSurveyResult

    -- ** SubscriptionDeferralInfo
    , SubscriptionDeferralInfo (..)
    , newSubscriptionDeferralInfo

    -- ** SubscriptionItemPriceChangeDetails
    , SubscriptionItemPriceChangeDetails (..)
    , newSubscriptionItemPriceChangeDetails

    -- ** SubscriptionItemPriceChangeDetails_PriceChangeMode
    , SubscriptionItemPriceChangeDetails_PriceChangeMode (..)

    -- ** SubscriptionItemPriceChangeDetails_PriceChangeState
    , SubscriptionItemPriceChangeDetails_PriceChangeState (..)

    -- ** SubscriptionListing
    , SubscriptionListing (..)
    , newSubscriptionListing

    -- ** SubscriptionOffer
    , SubscriptionOffer (..)
    , newSubscriptionOffer

    -- ** SubscriptionOffer_State
    , SubscriptionOffer_State (..)

    -- ** SubscriptionOfferPhase
    , SubscriptionOfferPhase (..)
    , newSubscriptionOfferPhase

    -- ** SubscriptionOfferTargeting
    , SubscriptionOfferTargeting (..)
    , newSubscriptionOfferTargeting

    -- ** SubscriptionPriceChange
    , SubscriptionPriceChange (..)
    , newSubscriptionPriceChange

    -- ** SubscriptionPurchase
    , SubscriptionPurchase (..)
    , newSubscriptionPurchase

    -- ** SubscriptionPurchaseLineItem
    , SubscriptionPurchaseLineItem (..)
    , newSubscriptionPurchaseLineItem

    -- ** SubscriptionPurchaseV2
    , SubscriptionPurchaseV2 (..)
    , newSubscriptionPurchaseV2

    -- ** SubscriptionPurchaseV2_AcknowledgementState
    , SubscriptionPurchaseV2_AcknowledgementState (..)

    -- ** SubscriptionPurchaseV2_SubscriptionState
    , SubscriptionPurchaseV2_SubscriptionState (..)

    -- ** SubscriptionPurchasesAcknowledgeRequest
    , SubscriptionPurchasesAcknowledgeRequest (..)
    , newSubscriptionPurchasesAcknowledgeRequest

    -- ** SubscriptionPurchasesDeferRequest
    , SubscriptionPurchasesDeferRequest (..)
    , newSubscriptionPurchasesDeferRequest

    -- ** SubscriptionPurchasesDeferResponse
    , SubscriptionPurchasesDeferResponse (..)
    , newSubscriptionPurchasesDeferResponse

    -- ** SubscriptionTaxAndComplianceSettings
    , SubscriptionTaxAndComplianceSettings (..)
    , newSubscriptionTaxAndComplianceSettings

    -- ** SubscriptionTaxAndComplianceSettings_EeaWithdrawalRightType
    , SubscriptionTaxAndComplianceSettings_EeaWithdrawalRightType (..)

    -- ** SubscriptionTaxAndComplianceSettings_TaxRateInfoByRegionCode
    , SubscriptionTaxAndComplianceSettings_TaxRateInfoByRegionCode (..)
    , newSubscriptionTaxAndComplianceSettings_TaxRateInfoByRegionCode

    -- ** SystemApkOptions
    , SystemApkOptions (..)
    , newSystemApkOptions

    -- ** SystemApksListResponse
    , SystemApksListResponse (..)
    , newSystemApksListResponse

    -- ** SystemFeature
    , SystemFeature (..)
    , newSystemFeature

    -- ** SystemInitiatedCancellation
    , SystemInitiatedCancellation (..)
    , newSystemInitiatedCancellation

    -- ** SystemOnChip
    , SystemOnChip (..)
    , newSystemOnChip

    -- ** Targeting
    , Targeting (..)
    , newTargeting

    -- ** TargetingInfo
    , TargetingInfo (..)
    , newTargetingInfo

    -- ** TargetingRuleScope
    , TargetingRuleScope (..)
    , newTargetingRuleScope

    -- ** TargetingRuleScopeAnySubscriptionInApp
    , TargetingRuleScopeAnySubscriptionInApp (..)
    , newTargetingRuleScopeAnySubscriptionInApp

    -- ** TargetingRuleScopeThisSubscription
    , TargetingRuleScopeThisSubscription (..)
    , newTargetingRuleScopeThisSubscription

    -- ** TargetingUpdate
    , TargetingUpdate (..)
    , newTargetingUpdate

    -- ** TestPurchase
    , TestPurchase (..)
    , newTestPurchase

    -- ** Testers
    , Testers (..)
    , newTesters

    -- ** TextureCompressionFormat
    , TextureCompressionFormat (..)
    , newTextureCompressionFormat

    -- ** TextureCompressionFormat_Alias
    , TextureCompressionFormat_Alias (..)

    -- ** TextureCompressionFormatTargeting
    , TextureCompressionFormatTargeting (..)
    , newTextureCompressionFormatTargeting

    -- ** Timestamp
    , Timestamp (..)
    , newTimestamp

    -- ** TokenPagination
    , TokenPagination (..)
    , newTokenPagination

    -- ** Track
    , Track (..)
    , newTrack

    -- ** TrackConfig
    , TrackConfig (..)
    , newTrackConfig

    -- ** TrackConfig_FormFactor
    , TrackConfig_FormFactor (..)

    -- ** TrackConfig_Type
    , TrackConfig_Type (..)

    -- ** TrackCountryAvailability
    , TrackCountryAvailability (..)
    , newTrackCountryAvailability

    -- ** TrackRelease
    , TrackRelease (..)
    , newTrackRelease

    -- ** TrackRelease_Status
    , TrackRelease_Status (..)

    -- ** TrackTargetedCountry
    , TrackTargetedCountry (..)
    , newTrackTargetedCountry

    -- ** TracksListResponse
    , TracksListResponse (..)
    , newTracksListResponse

    -- ** UpdateBasePlanStateRequest
    , UpdateBasePlanStateRequest (..)
    , newUpdateBasePlanStateRequest

    -- ** UpdateSubscriptionOfferRequest
    , UpdateSubscriptionOfferRequest (..)
    , newUpdateSubscriptionOfferRequest

    -- ** UpdateSubscriptionOfferRequest_LatencyTolerance
    , UpdateSubscriptionOfferRequest_LatencyTolerance (..)

    -- ** UpdateSubscriptionOfferStateRequest
    , UpdateSubscriptionOfferStateRequest (..)
    , newUpdateSubscriptionOfferStateRequest

    -- ** UpdateSubscriptionRequest
    , UpdateSubscriptionRequest (..)
    , newUpdateSubscriptionRequest

    -- ** UpdateSubscriptionRequest_LatencyTolerance
    , UpdateSubscriptionRequest_LatencyTolerance (..)

    -- ** UpgradeTargetingRule
    , UpgradeTargetingRule (..)
    , newUpgradeTargetingRule

    -- ** User
    , User (..)
    , newUser

    -- ** User_AccessState
    , User_AccessState (..)

    -- ** User_DeveloperAccountPermissionsItem
    , User_DeveloperAccountPermissionsItem (..)

    -- ** UserComment
    , UserComment (..)
    , newUserComment

    -- ** UserCountriesTargeting
    , UserCountriesTargeting (..)
    , newUserCountriesTargeting

    -- ** UserCountrySet
    , UserCountrySet (..)
    , newUserCountrySet

    -- ** UserInitiatedCancellation
    , UserInitiatedCancellation (..)
    , newUserInitiatedCancellation

    -- ** UsesPermission
    , UsesPermission (..)
    , newUsesPermission

    -- ** VanityCode
    , VanityCode (..)
    , newVanityCode

    -- ** Variant
    , Variant (..)
    , newVariant

    -- ** VariantTargeting
    , VariantTargeting (..)
    , newVariantTargeting

    -- ** VoidedPurchase
    , VoidedPurchase (..)
    , newVoidedPurchase

    -- ** VoidedPurchasesListResponse
    , VoidedPurchasesListResponse (..)
    , newVoidedPurchasesListResponse

    -- ** EditsDeobfuscationfilesUploadDeobfuscationFileType
    , EditsDeobfuscationfilesUploadDeobfuscationFileType (..)

    -- ** EditsExpansionfilesGetExpansionFileType
    , EditsExpansionfilesGetExpansionFileType (..)

    -- ** EditsExpansionfilesPatchExpansionFileType
    , EditsExpansionfilesPatchExpansionFileType (..)

    -- ** EditsExpansionfilesUpdateExpansionFileType
    , EditsExpansionfilesUpdateExpansionFileType (..)

    -- ** EditsExpansionfilesUploadExpansionFileType
    , EditsExpansionfilesUploadExpansionFileType (..)

    -- ** EditsImagesDeleteImageType
    , EditsImagesDeleteImageType (..)

    -- ** EditsImagesDeleteallImageType
    , EditsImagesDeleteallImageType (..)

    -- ** EditsImagesListImageType
    , EditsImagesListImageType (..)

    -- ** EditsImagesUploadImageType
    , EditsImagesUploadImageType (..)

    -- ** InappproductsDeleteLatencyTolerance
    , InappproductsDeleteLatencyTolerance (..)

    -- ** InappproductsPatchLatencyTolerance
    , InappproductsPatchLatencyTolerance (..)

    -- ** InappproductsUpdateLatencyTolerance
    , InappproductsUpdateLatencyTolerance (..)

    -- ** MonetizationSubscriptionsBasePlansOffersPatchLatencyTolerance
    , MonetizationSubscriptionsBasePlansOffersPatchLatencyTolerance (..)

    -- ** MonetizationSubscriptionsPatchLatencyTolerance
    , MonetizationSubscriptionsPatchLatencyTolerance (..)
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Internal.Product
import Gogol.AndroidPublisher.Internal.Sum

-- | Default request referring to version @v3@ of the Google Play Android Developer API. This contains the host and root path used as a starting point for constructing service requests.
androidPublisherService :: Core.ServiceConfig
androidPublisherService
  = Core.defaultService
      (Core.ServiceId "androidpublisher:v3")
      "androidpublisher.googleapis.com"

-- | View and manage your Google Play Developer account
type Androidpublisher'FullControl = "https://www.googleapis.com/auth/androidpublisher"
