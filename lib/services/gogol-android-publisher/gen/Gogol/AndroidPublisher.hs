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
-- Module      : Gogol.AndroidPublisher
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lets Android application developers access their Google Play accounts. At a high level, the expected workflow is to \"insert\" an Edit, make changes as necessary, and then \"commit\" it.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference>
module Gogol.AndroidPublisher
  ( -- * Configuration
    androidPublisherService,

    -- * OAuth Scopes
    Androidpublisher'FullControl,

    -- * Resources

    -- ** androidpublisher.applications.deviceTierConfigs.create
    AndroidPublisherApplicationsDeviceTierConfigsCreateResource,
    AndroidPublisherApplicationsDeviceTierConfigsCreate (..),
    newAndroidPublisherApplicationsDeviceTierConfigsCreate,

    -- ** androidpublisher.applications.deviceTierConfigs.get
    AndroidPublisherApplicationsDeviceTierConfigsGetResource,
    AndroidPublisherApplicationsDeviceTierConfigsGet (..),
    newAndroidPublisherApplicationsDeviceTierConfigsGet,

    -- ** androidpublisher.applications.deviceTierConfigs.list
    AndroidPublisherApplicationsDeviceTierConfigsListResource,
    AndroidPublisherApplicationsDeviceTierConfigsList (..),
    newAndroidPublisherApplicationsDeviceTierConfigsList,

    -- ** androidpublisher.edits.apks.addexternallyhosted
    AndroidPublisherEditsApksAddexternallyhostedResource,
    AndroidPublisherEditsApksAddexternallyhosted (..),
    newAndroidPublisherEditsApksAddexternallyhosted,

    -- ** androidpublisher.edits.apks.list
    AndroidPublisherEditsApksListResource,
    AndroidPublisherEditsApksList (..),
    newAndroidPublisherEditsApksList,

    -- ** androidpublisher.edits.apks.upload
    AndroidPublisherEditsApksUploadResource,
    AndroidPublisherEditsApksUpload (..),
    newAndroidPublisherEditsApksUpload,

    -- ** androidpublisher.edits.bundles.list
    AndroidPublisherEditsBundlesListResource,
    AndroidPublisherEditsBundlesList (..),
    newAndroidPublisherEditsBundlesList,

    -- ** androidpublisher.edits.bundles.upload
    AndroidPublisherEditsBundlesUploadResource,
    AndroidPublisherEditsBundlesUpload (..),
    newAndroidPublisherEditsBundlesUpload,

    -- ** androidpublisher.edits.commit
    AndroidPublisherEditsCommitResource,
    AndroidPublisherEditsCommit (..),
    newAndroidPublisherEditsCommit,

    -- ** androidpublisher.edits.countryavailability.get
    AndroidPublisherEditsCountryavailabilityGetResource,
    AndroidPublisherEditsCountryavailabilityGet (..),
    newAndroidPublisherEditsCountryavailabilityGet,

    -- ** androidpublisher.edits.delete
    AndroidPublisherEditsDeleteResource,
    AndroidPublisherEditsDelete (..),
    newAndroidPublisherEditsDelete,

    -- ** androidpublisher.edits.deobfuscationfiles.upload
    AndroidPublisherEditsDeobfuscationfilesUploadResource,
    AndroidPublisherEditsDeobfuscationfilesUpload (..),
    newAndroidPublisherEditsDeobfuscationfilesUpload,

    -- ** androidpublisher.edits.details.get
    AndroidPublisherEditsDetailsGetResource,
    AndroidPublisherEditsDetailsGet (..),
    newAndroidPublisherEditsDetailsGet,

    -- ** androidpublisher.edits.details.patch
    AndroidPublisherEditsDetailsPatchResource,
    AndroidPublisherEditsDetailsPatch (..),
    newAndroidPublisherEditsDetailsPatch,

    -- ** androidpublisher.edits.details.update
    AndroidPublisherEditsDetailsUpdateResource,
    AndroidPublisherEditsDetailsUpdate (..),
    newAndroidPublisherEditsDetailsUpdate,

    -- ** androidpublisher.edits.expansionfiles.get
    AndroidPublisherEditsExpansionfilesGetResource,
    AndroidPublisherEditsExpansionfilesGet (..),
    newAndroidPublisherEditsExpansionfilesGet,

    -- ** androidpublisher.edits.expansionfiles.patch
    AndroidPublisherEditsExpansionfilesPatchResource,
    AndroidPublisherEditsExpansionfilesPatch (..),
    newAndroidPublisherEditsExpansionfilesPatch,

    -- ** androidpublisher.edits.expansionfiles.update
    AndroidPublisherEditsExpansionfilesUpdateResource,
    AndroidPublisherEditsExpansionfilesUpdate (..),
    newAndroidPublisherEditsExpansionfilesUpdate,

    -- ** androidpublisher.edits.expansionfiles.upload
    AndroidPublisherEditsExpansionfilesUploadResource,
    AndroidPublisherEditsExpansionfilesUpload (..),
    newAndroidPublisherEditsExpansionfilesUpload,

    -- ** androidpublisher.edits.get
    AndroidPublisherEditsGetResource,
    AndroidPublisherEditsGet (..),
    newAndroidPublisherEditsGet,

    -- ** androidpublisher.edits.images.delete
    AndroidPublisherEditsImagesDeleteResource,
    AndroidPublisherEditsImagesDelete (..),
    newAndroidPublisherEditsImagesDelete,

    -- ** androidpublisher.edits.images.deleteall
    AndroidPublisherEditsImagesDeleteallResource,
    AndroidPublisherEditsImagesDeleteall (..),
    newAndroidPublisherEditsImagesDeleteall,

    -- ** androidpublisher.edits.images.list
    AndroidPublisherEditsImagesListResource,
    AndroidPublisherEditsImagesList (..),
    newAndroidPublisherEditsImagesList,

    -- ** androidpublisher.edits.images.upload
    AndroidPublisherEditsImagesUploadResource,
    AndroidPublisherEditsImagesUpload (..),
    newAndroidPublisherEditsImagesUpload,

    -- ** androidpublisher.edits.insert
    AndroidPublisherEditsInsertResource,
    AndroidPublisherEditsInsert (..),
    newAndroidPublisherEditsInsert,

    -- ** androidpublisher.edits.listings.delete
    AndroidPublisherEditsListingsDeleteResource,
    AndroidPublisherEditsListingsDelete (..),
    newAndroidPublisherEditsListingsDelete,

    -- ** androidpublisher.edits.listings.deleteall
    AndroidPublisherEditsListingsDeleteallResource,
    AndroidPublisherEditsListingsDeleteall (..),
    newAndroidPublisherEditsListingsDeleteall,

    -- ** androidpublisher.edits.listings.get
    AndroidPublisherEditsListingsGetResource,
    AndroidPublisherEditsListingsGet (..),
    newAndroidPublisherEditsListingsGet,

    -- ** androidpublisher.edits.listings.list
    AndroidPublisherEditsListingsListResource,
    AndroidPublisherEditsListingsList (..),
    newAndroidPublisherEditsListingsList,

    -- ** androidpublisher.edits.listings.patch
    AndroidPublisherEditsListingsPatchResource,
    AndroidPublisherEditsListingsPatch (..),
    newAndroidPublisherEditsListingsPatch,

    -- ** androidpublisher.edits.listings.update
    AndroidPublisherEditsListingsUpdateResource,
    AndroidPublisherEditsListingsUpdate (..),
    newAndroidPublisherEditsListingsUpdate,

    -- ** androidpublisher.edits.testers.get
    AndroidPublisherEditsTestersGetResource,
    AndroidPublisherEditsTestersGet (..),
    newAndroidPublisherEditsTestersGet,

    -- ** androidpublisher.edits.testers.patch
    AndroidPublisherEditsTestersPatchResource,
    AndroidPublisherEditsTestersPatch (..),
    newAndroidPublisherEditsTestersPatch,

    -- ** androidpublisher.edits.testers.update
    AndroidPublisherEditsTestersUpdateResource,
    AndroidPublisherEditsTestersUpdate (..),
    newAndroidPublisherEditsTestersUpdate,

    -- ** androidpublisher.edits.tracks.get
    AndroidPublisherEditsTracksGetResource,
    AndroidPublisherEditsTracksGet (..),
    newAndroidPublisherEditsTracksGet,

    -- ** androidpublisher.edits.tracks.list
    AndroidPublisherEditsTracksListResource,
    AndroidPublisherEditsTracksList (..),
    newAndroidPublisherEditsTracksList,

    -- ** androidpublisher.edits.tracks.patch
    AndroidPublisherEditsTracksPatchResource,
    AndroidPublisherEditsTracksPatch (..),
    newAndroidPublisherEditsTracksPatch,

    -- ** androidpublisher.edits.tracks.update
    AndroidPublisherEditsTracksUpdateResource,
    AndroidPublisherEditsTracksUpdate (..),
    newAndroidPublisherEditsTracksUpdate,

    -- ** androidpublisher.edits.validate
    AndroidPublisherEditsValidateResource,
    AndroidPublisherEditsValidate (..),
    newAndroidPublisherEditsValidate,

    -- ** androidpublisher.generatedapks.download
    AndroidPublisherGeneratedapksDownloadResource,
    AndroidPublisherGeneratedapksDownload (..),
    newAndroidPublisherGeneratedapksDownload,

    -- ** androidpublisher.generatedapks.list
    AndroidPublisherGeneratedapksListResource,
    AndroidPublisherGeneratedapksList (..),
    newAndroidPublisherGeneratedapksList,

    -- ** androidpublisher.grants.create
    AndroidPublisherGrantsCreateResource,
    AndroidPublisherGrantsCreate (..),
    newAndroidPublisherGrantsCreate,

    -- ** androidpublisher.grants.delete
    AndroidPublisherGrantsDeleteResource,
    AndroidPublisherGrantsDelete (..),
    newAndroidPublisherGrantsDelete,

    -- ** androidpublisher.grants.patch
    AndroidPublisherGrantsPatchResource,
    AndroidPublisherGrantsPatch (..),
    newAndroidPublisherGrantsPatch,

    -- ** androidpublisher.inappproducts.delete
    AndroidPublisherInappproductsDeleteResource,
    AndroidPublisherInappproductsDelete (..),
    newAndroidPublisherInappproductsDelete,

    -- ** androidpublisher.inappproducts.get
    AndroidPublisherInappproductsGetResource,
    AndroidPublisherInappproductsGet (..),
    newAndroidPublisherInappproductsGet,

    -- ** androidpublisher.inappproducts.insert
    AndroidPublisherInappproductsInsertResource,
    AndroidPublisherInappproductsInsert (..),
    newAndroidPublisherInappproductsInsert,

    -- ** androidpublisher.inappproducts.list
    AndroidPublisherInappproductsListResource,
    AndroidPublisherInappproductsList (..),
    newAndroidPublisherInappproductsList,

    -- ** androidpublisher.inappproducts.patch
    AndroidPublisherInappproductsPatchResource,
    AndroidPublisherInappproductsPatch (..),
    newAndroidPublisherInappproductsPatch,

    -- ** androidpublisher.inappproducts.update
    AndroidPublisherInappproductsUpdateResource,
    AndroidPublisherInappproductsUpdate (..),
    newAndroidPublisherInappproductsUpdate,

    -- ** androidpublisher.internalappsharingartifacts.uploadapk
    AndroidPublisherInternalappsharingartifactsUploadapkResource,
    AndroidPublisherInternalappsharingartifactsUploadapk (..),
    newAndroidPublisherInternalappsharingartifactsUploadapk,

    -- ** androidpublisher.internalappsharingartifacts.uploadbundle
    AndroidPublisherInternalappsharingartifactsUploadbundleResource,
    AndroidPublisherInternalappsharingartifactsUploadbundle (..),
    newAndroidPublisherInternalappsharingartifactsUploadbundle,

    -- ** androidpublisher.monetization.convertRegionPrices
    AndroidPublisherMonetizationConvertRegionPricesResource,
    AndroidPublisherMonetizationConvertRegionPrices (..),
    newAndroidPublisherMonetizationConvertRegionPrices,

    -- ** androidpublisher.monetization.subscriptions.archive
    AndroidPublisherMonetizationSubscriptionsArchiveResource,
    AndroidPublisherMonetizationSubscriptionsArchive (..),
    newAndroidPublisherMonetizationSubscriptionsArchive,

    -- ** androidpublisher.monetization.subscriptions.basePlans.activate
    AndroidPublisherMonetizationSubscriptionsBasePlansActivateResource,
    AndroidPublisherMonetizationSubscriptionsBasePlansActivate (..),
    newAndroidPublisherMonetizationSubscriptionsBasePlansActivate,

    -- ** androidpublisher.monetization.subscriptions.basePlans.deactivate
    AndroidPublisherMonetizationSubscriptionsBasePlansDeactivateResource,
    AndroidPublisherMonetizationSubscriptionsBasePlansDeactivate (..),
    newAndroidPublisherMonetizationSubscriptionsBasePlansDeactivate,

    -- ** androidpublisher.monetization.subscriptions.basePlans.delete
    AndroidPublisherMonetizationSubscriptionsBasePlansDeleteResource,
    AndroidPublisherMonetizationSubscriptionsBasePlansDelete (..),
    newAndroidPublisherMonetizationSubscriptionsBasePlansDelete,

    -- ** androidpublisher.monetization.subscriptions.basePlans.migratePrices
    AndroidPublisherMonetizationSubscriptionsBasePlansMigratePricesResource,
    AndroidPublisherMonetizationSubscriptionsBasePlansMigratePrices (..),
    newAndroidPublisherMonetizationSubscriptionsBasePlansMigratePrices,

    -- ** androidpublisher.monetization.subscriptions.basePlans.offers.activate
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersActivateResource,
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersActivate (..),
    newAndroidPublisherMonetizationSubscriptionsBasePlansOffersActivate,

    -- ** androidpublisher.monetization.subscriptions.basePlans.offers.create
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersCreateResource,
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersCreate (..),
    newAndroidPublisherMonetizationSubscriptionsBasePlansOffersCreate,

    -- ** androidpublisher.monetization.subscriptions.basePlans.offers.deactivate
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersDeactivateResource,
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersDeactivate (..),
    newAndroidPublisherMonetizationSubscriptionsBasePlansOffersDeactivate,

    -- ** androidpublisher.monetization.subscriptions.basePlans.offers.delete
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersDeleteResource,
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersDelete (..),
    newAndroidPublisherMonetizationSubscriptionsBasePlansOffersDelete,

    -- ** androidpublisher.monetization.subscriptions.basePlans.offers.get
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersGetResource,
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersGet (..),
    newAndroidPublisherMonetizationSubscriptionsBasePlansOffersGet,

    -- ** androidpublisher.monetization.subscriptions.basePlans.offers.list
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersListResource,
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersList (..),
    newAndroidPublisherMonetizationSubscriptionsBasePlansOffersList,

    -- ** androidpublisher.monetization.subscriptions.basePlans.offers.patch
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersPatchResource,
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersPatch (..),
    newAndroidPublisherMonetizationSubscriptionsBasePlansOffersPatch,

    -- ** androidpublisher.monetization.subscriptions.create
    AndroidPublisherMonetizationSubscriptionsCreateResource,
    AndroidPublisherMonetizationSubscriptionsCreate (..),
    newAndroidPublisherMonetizationSubscriptionsCreate,

    -- ** androidpublisher.monetization.subscriptions.delete
    AndroidPublisherMonetizationSubscriptionsDeleteResource,
    AndroidPublisherMonetizationSubscriptionsDelete (..),
    newAndroidPublisherMonetizationSubscriptionsDelete,

    -- ** androidpublisher.monetization.subscriptions.get
    AndroidPublisherMonetizationSubscriptionsGetResource,
    AndroidPublisherMonetizationSubscriptionsGet (..),
    newAndroidPublisherMonetizationSubscriptionsGet,

    -- ** androidpublisher.monetization.subscriptions.list
    AndroidPublisherMonetizationSubscriptionsListResource,
    AndroidPublisherMonetizationSubscriptionsList (..),
    newAndroidPublisherMonetizationSubscriptionsList,

    -- ** androidpublisher.monetization.subscriptions.patch
    AndroidPublisherMonetizationSubscriptionsPatchResource,
    AndroidPublisherMonetizationSubscriptionsPatch (..),
    newAndroidPublisherMonetizationSubscriptionsPatch,

    -- ** androidpublisher.orders.refund
    AndroidPublisherOrdersRefundResource,
    AndroidPublisherOrdersRefund (..),
    newAndroidPublisherOrdersRefund,

    -- ** androidpublisher.purchases.products.acknowledge
    AndroidPublisherPurchasesProductsAcknowledgeResource,
    AndroidPublisherPurchasesProductsAcknowledge (..),
    newAndroidPublisherPurchasesProductsAcknowledge,

    -- ** androidpublisher.purchases.products.consume
    AndroidPublisherPurchasesProductsConsumeResource,
    AndroidPublisherPurchasesProductsConsume (..),
    newAndroidPublisherPurchasesProductsConsume,

    -- ** androidpublisher.purchases.products.get
    AndroidPublisherPurchasesProductsGetResource,
    AndroidPublisherPurchasesProductsGet (..),
    newAndroidPublisherPurchasesProductsGet,

    -- ** androidpublisher.purchases.subscriptions.acknowledge
    AndroidPublisherPurchasesSubscriptionsAcknowledgeResource,
    AndroidPublisherPurchasesSubscriptionsAcknowledge (..),
    newAndroidPublisherPurchasesSubscriptionsAcknowledge,

    -- ** androidpublisher.purchases.subscriptions.cancel
    AndroidPublisherPurchasesSubscriptionsCancelResource,
    AndroidPublisherPurchasesSubscriptionsCancel (..),
    newAndroidPublisherPurchasesSubscriptionsCancel,

    -- ** androidpublisher.purchases.subscriptions.defer
    AndroidPublisherPurchasesSubscriptionsDeferResource,
    AndroidPublisherPurchasesSubscriptionsDefer (..),
    newAndroidPublisherPurchasesSubscriptionsDefer,

    -- ** androidpublisher.purchases.subscriptions.get
    AndroidPublisherPurchasesSubscriptionsGetResource,
    AndroidPublisherPurchasesSubscriptionsGet (..),
    newAndroidPublisherPurchasesSubscriptionsGet,

    -- ** androidpublisher.purchases.subscriptions.refund
    AndroidPublisherPurchasesSubscriptionsRefundResource,
    AndroidPublisherPurchasesSubscriptionsRefund (..),
    newAndroidPublisherPurchasesSubscriptionsRefund,

    -- ** androidpublisher.purchases.subscriptions.revoke
    AndroidPublisherPurchasesSubscriptionsRevokeResource,
    AndroidPublisherPurchasesSubscriptionsRevoke (..),
    newAndroidPublisherPurchasesSubscriptionsRevoke,

    -- ** androidpublisher.purchases.subscriptionsv2.get
    AndroidPublisherPurchasesSubscriptionsv2GetResource,
    AndroidPublisherPurchasesSubscriptionsv2Get (..),
    newAndroidPublisherPurchasesSubscriptionsv2Get,

    -- ** androidpublisher.purchases.voidedpurchases.list
    AndroidPublisherPurchasesVoidedpurchasesListResource,
    AndroidPublisherPurchasesVoidedpurchasesList (..),
    newAndroidPublisherPurchasesVoidedpurchasesList,

    -- ** androidpublisher.reviews.get
    AndroidPublisherReviewsGetResource,
    AndroidPublisherReviewsGet (..),
    newAndroidPublisherReviewsGet,

    -- ** androidpublisher.reviews.list
    AndroidPublisherReviewsListResource,
    AndroidPublisherReviewsList (..),
    newAndroidPublisherReviewsList,

    -- ** androidpublisher.reviews.reply
    AndroidPublisherReviewsReplyResource,
    AndroidPublisherReviewsReply (..),
    newAndroidPublisherReviewsReply,

    -- ** androidpublisher.systemapks.variants.create
    AndroidPublisherSystemapksVariantsCreateResource,
    AndroidPublisherSystemapksVariantsCreate (..),
    newAndroidPublisherSystemapksVariantsCreate,

    -- ** androidpublisher.systemapks.variants.download
    AndroidPublisherSystemapksVariantsDownloadResource,
    AndroidPublisherSystemapksVariantsDownload (..),
    newAndroidPublisherSystemapksVariantsDownload,

    -- ** androidpublisher.systemapks.variants.get
    AndroidPublisherSystemapksVariantsGetResource,
    AndroidPublisherSystemapksVariantsGet (..),
    newAndroidPublisherSystemapksVariantsGet,

    -- ** androidpublisher.systemapks.variants.list
    AndroidPublisherSystemapksVariantsListResource,
    AndroidPublisherSystemapksVariantsList (..),
    newAndroidPublisherSystemapksVariantsList,

    -- ** androidpublisher.users.create
    AndroidPublisherUsersCreateResource,
    AndroidPublisherUsersCreate (..),
    newAndroidPublisherUsersCreate,

    -- ** androidpublisher.users.delete
    AndroidPublisherUsersDeleteResource,
    AndroidPublisherUsersDelete (..),
    newAndroidPublisherUsersDelete,

    -- ** androidpublisher.users.list
    AndroidPublisherUsersListResource,
    AndroidPublisherUsersList (..),
    newAndroidPublisherUsersList,

    -- ** androidpublisher.users.patch
    AndroidPublisherUsersPatchResource,
    AndroidPublisherUsersPatch (..),
    newAndroidPublisherUsersPatch,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AcquisitionTargetingRule
    AcquisitionTargetingRule (..),
    newAcquisitionTargetingRule,

    -- ** ActivateBasePlanRequest
    ActivateBasePlanRequest (..),
    newActivateBasePlanRequest,

    -- ** ActivateSubscriptionOfferRequest
    ActivateSubscriptionOfferRequest (..),
    newActivateSubscriptionOfferRequest,

    -- ** Apk
    Apk (..),
    newApk,

    -- ** ApkBinary
    ApkBinary (..),
    newApkBinary,

    -- ** ApksAddExternallyHostedRequest
    ApksAddExternallyHostedRequest (..),
    newApksAddExternallyHostedRequest,

    -- ** ApksAddExternallyHostedResponse
    ApksAddExternallyHostedResponse (..),
    newApksAddExternallyHostedResponse,

    -- ** ApksListResponse
    ApksListResponse (..),
    newApksListResponse,

    -- ** AppDetails
    AppDetails (..),
    newAppDetails,

    -- ** AppEdit
    AppEdit (..),
    newAppEdit,

    -- ** ArchiveSubscriptionRequest
    ArchiveSubscriptionRequest (..),
    newArchiveSubscriptionRequest,

    -- ** AutoRenewingBasePlanType
    AutoRenewingBasePlanType (..),
    newAutoRenewingBasePlanType,

    -- ** AutoRenewingBasePlanType_ProrationMode
    AutoRenewingBasePlanType_ProrationMode (..),

    -- ** AutoRenewingBasePlanType_ResubscribeState
    AutoRenewingBasePlanType_ResubscribeState (..),

    -- ** AutoRenewingPlan
    AutoRenewingPlan (..),
    newAutoRenewingPlan,

    -- ** BasePlan
    BasePlan (..),
    newBasePlan,

    -- ** BasePlan_State
    BasePlan_State (..),

    -- ** Bundle
    Bundle (..),
    newBundle,

    -- ** BundlesListResponse
    BundlesListResponse (..),
    newBundlesListResponse,

    -- ** CancelSurveyResult
    CancelSurveyResult (..),
    newCancelSurveyResult,

    -- ** CancelSurveyResult_Reason
    CancelSurveyResult_Reason (..),

    -- ** CanceledStateContext
    CanceledStateContext (..),
    newCanceledStateContext,

    -- ** Comment
    Comment (..),
    newComment,

    -- ** ConvertRegionPricesRequest
    ConvertRegionPricesRequest (..),
    newConvertRegionPricesRequest,

    -- ** ConvertRegionPricesResponse
    ConvertRegionPricesResponse (..),
    newConvertRegionPricesResponse,

    -- ** ConvertRegionPricesResponse_ConvertedRegionPrices
    ConvertRegionPricesResponse_ConvertedRegionPrices (..),
    newConvertRegionPricesResponse_ConvertedRegionPrices,

    -- ** ConvertedOtherRegionsPrice
    ConvertedOtherRegionsPrice (..),
    newConvertedOtherRegionsPrice,

    -- ** ConvertedRegionPrice
    ConvertedRegionPrice (..),
    newConvertedRegionPrice,

    -- ** CountryTargeting
    CountryTargeting (..),
    newCountryTargeting,

    -- ** DeactivateBasePlanRequest
    DeactivateBasePlanRequest (..),
    newDeactivateBasePlanRequest,

    -- ** DeactivateSubscriptionOfferRequest
    DeactivateSubscriptionOfferRequest (..),
    newDeactivateSubscriptionOfferRequest,

    -- ** DeobfuscationFile
    DeobfuscationFile (..),
    newDeobfuscationFile,

    -- ** DeobfuscationFile_SymbolType
    DeobfuscationFile_SymbolType (..),

    -- ** DeobfuscationFilesUploadResponse
    DeobfuscationFilesUploadResponse (..),
    newDeobfuscationFilesUploadResponse,

    -- ** DeveloperComment
    DeveloperComment (..),
    newDeveloperComment,

    -- ** DeveloperInitiatedCancellation
    DeveloperInitiatedCancellation (..),
    newDeveloperInitiatedCancellation,

    -- ** DeviceGroup
    DeviceGroup (..),
    newDeviceGroup,

    -- ** DeviceId
    DeviceId (..),
    newDeviceId,

    -- ** DeviceMetadata
    DeviceMetadata (..),
    newDeviceMetadata,

    -- ** DeviceRam
    DeviceRam (..),
    newDeviceRam,

    -- ** DeviceSelector
    DeviceSelector (..),
    newDeviceSelector,

    -- ** DeviceSpec
    DeviceSpec (..),
    newDeviceSpec,

    -- ** DeviceTier
    DeviceTier (..),
    newDeviceTier,

    -- ** DeviceTierConfig
    DeviceTierConfig (..),
    newDeviceTierConfig,

    -- ** DeviceTierSet
    DeviceTierSet (..),
    newDeviceTierSet,

    -- ** ExpansionFile
    ExpansionFile (..),
    newExpansionFile,

    -- ** ExpansionFilesUploadResponse
    ExpansionFilesUploadResponse (..),
    newExpansionFilesUploadResponse,

    -- ** ExternalAccountIdentifiers
    ExternalAccountIdentifiers (..),
    newExternalAccountIdentifiers,

    -- ** ExternallyHostedApk
    ExternallyHostedApk (..),
    newExternallyHostedApk,

    -- ** GeneratedApksListResponse
    GeneratedApksListResponse (..),
    newGeneratedApksListResponse,

    -- ** GeneratedApksPerSigningKey
    GeneratedApksPerSigningKey (..),
    newGeneratedApksPerSigningKey,

    -- ** GeneratedAssetPackSlice
    GeneratedAssetPackSlice (..),
    newGeneratedAssetPackSlice,

    -- ** GeneratedSplitApk
    GeneratedSplitApk (..),
    newGeneratedSplitApk,

    -- ** GeneratedStandaloneApk
    GeneratedStandaloneApk (..),
    newGeneratedStandaloneApk,

    -- ** GeneratedUniversalApk
    GeneratedUniversalApk (..),
    newGeneratedUniversalApk,

    -- ** Grant
    Grant (..),
    newGrant,

    -- ** Grant_AppLevelPermissionsItem
    Grant_AppLevelPermissionsItem (..),

    -- ** Image
    Image (..),
    newImage,

    -- ** ImagesDeleteAllResponse
    ImagesDeleteAllResponse (..),
    newImagesDeleteAllResponse,

    -- ** ImagesListResponse
    ImagesListResponse (..),
    newImagesListResponse,

    -- ** ImagesUploadResponse
    ImagesUploadResponse (..),
    newImagesUploadResponse,

    -- ** InAppProduct
    InAppProduct (..),
    newInAppProduct,

    -- ** InAppProduct_Listings
    InAppProduct_Listings (..),
    newInAppProduct_Listings,

    -- ** InAppProduct_Prices
    InAppProduct_Prices (..),
    newInAppProduct_Prices,

    -- ** InAppProduct_PurchaseType
    InAppProduct_PurchaseType (..),

    -- ** InAppProduct_Status
    InAppProduct_Status (..),

    -- ** InAppProductListing
    InAppProductListing (..),
    newInAppProductListing,

    -- ** InappproductsListResponse
    InappproductsListResponse (..),
    newInappproductsListResponse,

    -- ** InternalAppSharingArtifact
    InternalAppSharingArtifact (..),
    newInternalAppSharingArtifact,

    -- ** IntroductoryPriceInfo
    IntroductoryPriceInfo (..),
    newIntroductoryPriceInfo,

    -- ** ListDeviceTierConfigsResponse
    ListDeviceTierConfigsResponse (..),
    newListDeviceTierConfigsResponse,

    -- ** ListSubscriptionOffersResponse
    ListSubscriptionOffersResponse (..),
    newListSubscriptionOffersResponse,

    -- ** ListSubscriptionsResponse
    ListSubscriptionsResponse (..),
    newListSubscriptionsResponse,

    -- ** ListUsersResponse
    ListUsersResponse (..),
    newListUsersResponse,

    -- ** Listing
    Listing (..),
    newListing,

    -- ** ListingsListResponse
    ListingsListResponse (..),
    newListingsListResponse,

    -- ** LocalizedText
    LocalizedText (..),
    newLocalizedText,

    -- ** ManagedProductTaxAndComplianceSettings
    ManagedProductTaxAndComplianceSettings (..),
    newManagedProductTaxAndComplianceSettings,

    -- ** ManagedProductTaxAndComplianceSettings_EeaWithdrawalRightType
    ManagedProductTaxAndComplianceSettings_EeaWithdrawalRightType (..),

    -- ** ManagedProductTaxAndComplianceSettings_TaxRateInfoByRegionCode
    ManagedProductTaxAndComplianceSettings_TaxRateInfoByRegionCode (..),
    newManagedProductTaxAndComplianceSettings_TaxRateInfoByRegionCode,

    -- ** MigrateBasePlanPricesRequest
    MigrateBasePlanPricesRequest (..),
    newMigrateBasePlanPricesRequest,

    -- ** MigrateBasePlanPricesResponse
    MigrateBasePlanPricesResponse (..),
    newMigrateBasePlanPricesResponse,

    -- ** Money
    Money (..),
    newMoney,

    -- ** OfferDetails
    OfferDetails (..),
    newOfferDetails,

    -- ** OfferTag
    OfferTag (..),
    newOfferTag,

    -- ** OtherRegionsBasePlanConfig
    OtherRegionsBasePlanConfig (..),
    newOtherRegionsBasePlanConfig,

    -- ** OtherRegionsSubscriptionOfferConfig
    OtherRegionsSubscriptionOfferConfig (..),
    newOtherRegionsSubscriptionOfferConfig,

    -- ** OtherRegionsSubscriptionOfferPhaseConfig
    OtherRegionsSubscriptionOfferPhaseConfig (..),
    newOtherRegionsSubscriptionOfferPhaseConfig,

    -- ** OtherRegionsSubscriptionOfferPhasePrices
    OtherRegionsSubscriptionOfferPhasePrices (..),
    newOtherRegionsSubscriptionOfferPhasePrices,

    -- ** PageInfo
    PageInfo (..),
    newPageInfo,

    -- ** PausedStateContext
    PausedStateContext (..),
    newPausedStateContext,

    -- ** PrepaidBasePlanType
    PrepaidBasePlanType (..),
    newPrepaidBasePlanType,

    -- ** PrepaidBasePlanType_TimeExtension
    PrepaidBasePlanType_TimeExtension (..),

    -- ** PrepaidPlan
    PrepaidPlan (..),
    newPrepaidPlan,

    -- ** Price
    Price (..),
    newPrice,

    -- ** ProductPurchase
    ProductPurchase (..),
    newProductPurchase,

    -- ** ProductPurchasesAcknowledgeRequest
    ProductPurchasesAcknowledgeRequest (..),
    newProductPurchasesAcknowledgeRequest,

    -- ** RegionalBasePlanConfig
    RegionalBasePlanConfig (..),
    newRegionalBasePlanConfig,

    -- ** RegionalPriceMigrationConfig
    RegionalPriceMigrationConfig (..),
    newRegionalPriceMigrationConfig,

    -- ** RegionalSubscriptionOfferConfig
    RegionalSubscriptionOfferConfig (..),
    newRegionalSubscriptionOfferConfig,

    -- ** RegionalSubscriptionOfferPhaseConfig
    RegionalSubscriptionOfferPhaseConfig (..),
    newRegionalSubscriptionOfferPhaseConfig,

    -- ** RegionalTaxRateInfo
    RegionalTaxRateInfo (..),
    newRegionalTaxRateInfo,

    -- ** RegionalTaxRateInfo_StreamingTaxType
    RegionalTaxRateInfo_StreamingTaxType (..),

    -- ** RegionalTaxRateInfo_TaxTier
    RegionalTaxRateInfo_TaxTier (..),

    -- ** RegionsVersion
    RegionsVersion (..),
    newRegionsVersion,

    -- ** ReplacementCancellation
    ReplacementCancellation (..),
    newReplacementCancellation,

    -- ** Review
    Review (..),
    newReview,

    -- ** ReviewReplyResult
    ReviewReplyResult (..),
    newReviewReplyResult,

    -- ** ReviewsListResponse
    ReviewsListResponse (..),
    newReviewsListResponse,

    -- ** ReviewsReplyRequest
    ReviewsReplyRequest (..),
    newReviewsReplyRequest,

    -- ** ReviewsReplyResponse
    ReviewsReplyResponse (..),
    newReviewsReplyResponse,

    -- ** SubscribeWithGoogleInfo
    SubscribeWithGoogleInfo (..),
    newSubscribeWithGoogleInfo,

    -- ** Subscription
    Subscription (..),
    newSubscription,

    -- ** SubscriptionCancelSurveyResult
    SubscriptionCancelSurveyResult (..),
    newSubscriptionCancelSurveyResult,

    -- ** SubscriptionDeferralInfo
    SubscriptionDeferralInfo (..),
    newSubscriptionDeferralInfo,

    -- ** SubscriptionItemPriceChangeDetails
    SubscriptionItemPriceChangeDetails (..),
    newSubscriptionItemPriceChangeDetails,

    -- ** SubscriptionItemPriceChangeDetails_PriceChangeMode
    SubscriptionItemPriceChangeDetails_PriceChangeMode (..),

    -- ** SubscriptionItemPriceChangeDetails_PriceChangeState
    SubscriptionItemPriceChangeDetails_PriceChangeState (..),

    -- ** SubscriptionListing
    SubscriptionListing (..),
    newSubscriptionListing,

    -- ** SubscriptionOffer
    SubscriptionOffer (..),
    newSubscriptionOffer,

    -- ** SubscriptionOffer_State
    SubscriptionOffer_State (..),

    -- ** SubscriptionOfferPhase
    SubscriptionOfferPhase (..),
    newSubscriptionOfferPhase,

    -- ** SubscriptionOfferTargeting
    SubscriptionOfferTargeting (..),
    newSubscriptionOfferTargeting,

    -- ** SubscriptionPriceChange
    SubscriptionPriceChange (..),
    newSubscriptionPriceChange,

    -- ** SubscriptionPurchase
    SubscriptionPurchase (..),
    newSubscriptionPurchase,

    -- ** SubscriptionPurchaseLineItem
    SubscriptionPurchaseLineItem (..),
    newSubscriptionPurchaseLineItem,

    -- ** SubscriptionPurchaseV2
    SubscriptionPurchaseV2 (..),
    newSubscriptionPurchaseV2,

    -- ** SubscriptionPurchaseV2_AcknowledgementState
    SubscriptionPurchaseV2_AcknowledgementState (..),

    -- ** SubscriptionPurchaseV2_SubscriptionState
    SubscriptionPurchaseV2_SubscriptionState (..),

    -- ** SubscriptionPurchasesAcknowledgeRequest
    SubscriptionPurchasesAcknowledgeRequest (..),
    newSubscriptionPurchasesAcknowledgeRequest,

    -- ** SubscriptionPurchasesDeferRequest
    SubscriptionPurchasesDeferRequest (..),
    newSubscriptionPurchasesDeferRequest,

    -- ** SubscriptionPurchasesDeferResponse
    SubscriptionPurchasesDeferResponse (..),
    newSubscriptionPurchasesDeferResponse,

    -- ** SubscriptionTaxAndComplianceSettings
    SubscriptionTaxAndComplianceSettings (..),
    newSubscriptionTaxAndComplianceSettings,

    -- ** SubscriptionTaxAndComplianceSettings_EeaWithdrawalRightType
    SubscriptionTaxAndComplianceSettings_EeaWithdrawalRightType (..),

    -- ** SubscriptionTaxAndComplianceSettings_TaxRateInfoByRegionCode
    SubscriptionTaxAndComplianceSettings_TaxRateInfoByRegionCode (..),
    newSubscriptionTaxAndComplianceSettings_TaxRateInfoByRegionCode,

    -- ** SystemApksListResponse
    SystemApksListResponse (..),
    newSystemApksListResponse,

    -- ** SystemFeature
    SystemFeature (..),
    newSystemFeature,

    -- ** SystemInitiatedCancellation
    SystemInitiatedCancellation (..),
    newSystemInitiatedCancellation,

    -- ** TargetingRuleScope
    TargetingRuleScope (..),
    newTargetingRuleScope,

    -- ** TestPurchase
    TestPurchase (..),
    newTestPurchase,

    -- ** Testers
    Testers (..),
    newTesters,

    -- ** Timestamp
    Timestamp (..),
    newTimestamp,

    -- ** TokenPagination
    TokenPagination (..),
    newTokenPagination,

    -- ** Track
    Track (..),
    newTrack,

    -- ** TrackCountryAvailability
    TrackCountryAvailability (..),
    newTrackCountryAvailability,

    -- ** TrackRelease
    TrackRelease (..),
    newTrackRelease,

    -- ** TrackRelease_Status
    TrackRelease_Status (..),

    -- ** TrackTargetedCountry
    TrackTargetedCountry (..),
    newTrackTargetedCountry,

    -- ** TracksListResponse
    TracksListResponse (..),
    newTracksListResponse,

    -- ** UpgradeTargetingRule
    UpgradeTargetingRule (..),
    newUpgradeTargetingRule,

    -- ** User
    User (..),
    newUser,

    -- ** User_AccessState
    User_AccessState (..),

    -- ** User_DeveloperAccountPermissionsItem
    User_DeveloperAccountPermissionsItem (..),

    -- ** UserComment
    UserComment (..),
    newUserComment,

    -- ** UserCountrySet
    UserCountrySet (..),
    newUserCountrySet,

    -- ** UserInitiatedCancellation
    UserInitiatedCancellation (..),
    newUserInitiatedCancellation,

    -- ** UsesPermission
    UsesPermission (..),
    newUsesPermission,

    -- ** Variant
    Variant (..),
    newVariant,

    -- ** VoidedPurchase
    VoidedPurchase (..),
    newVoidedPurchase,

    -- ** VoidedPurchasesListResponse
    VoidedPurchasesListResponse (..),
    newVoidedPurchasesListResponse,

    -- ** EditsDeobfuscationfilesUploadDeobfuscationFileType
    EditsDeobfuscationfilesUploadDeobfuscationFileType (..),

    -- ** EditsExpansionfilesGetExpansionFileType
    EditsExpansionfilesGetExpansionFileType (..),

    -- ** EditsExpansionfilesPatchExpansionFileType
    EditsExpansionfilesPatchExpansionFileType (..),

    -- ** EditsExpansionfilesUpdateExpansionFileType
    EditsExpansionfilesUpdateExpansionFileType (..),

    -- ** EditsExpansionfilesUploadExpansionFileType
    EditsExpansionfilesUploadExpansionFileType (..),

    -- ** EditsImagesDeleteImageType
    EditsImagesDeleteImageType (..),

    -- ** EditsImagesDeleteallImageType
    EditsImagesDeleteallImageType (..),

    -- ** EditsImagesListImageType
    EditsImagesListImageType (..),

    -- ** EditsImagesUploadImageType
    EditsImagesUploadImageType (..),
  )
where

import Gogol.AndroidPublisher.Applications.DeviceTierConfigs.Create
import Gogol.AndroidPublisher.Applications.DeviceTierConfigs.Get
import Gogol.AndroidPublisher.Applications.DeviceTierConfigs.List
import Gogol.AndroidPublisher.Edits.Apks.Addexternallyhosted
import Gogol.AndroidPublisher.Edits.Apks.List
import Gogol.AndroidPublisher.Edits.Apks.Upload
import Gogol.AndroidPublisher.Edits.Bundles.List
import Gogol.AndroidPublisher.Edits.Bundles.Upload
import Gogol.AndroidPublisher.Edits.Commit
import Gogol.AndroidPublisher.Edits.Countryavailability.Get
import Gogol.AndroidPublisher.Edits.Delete
import Gogol.AndroidPublisher.Edits.Deobfuscationfiles.Upload
import Gogol.AndroidPublisher.Edits.Details.Get
import Gogol.AndroidPublisher.Edits.Details.Patch
import Gogol.AndroidPublisher.Edits.Details.Update
import Gogol.AndroidPublisher.Edits.Expansionfiles.Get
import Gogol.AndroidPublisher.Edits.Expansionfiles.Patch
import Gogol.AndroidPublisher.Edits.Expansionfiles.Update
import Gogol.AndroidPublisher.Edits.Expansionfiles.Upload
import Gogol.AndroidPublisher.Edits.Get
import Gogol.AndroidPublisher.Edits.Images.Delete
import Gogol.AndroidPublisher.Edits.Images.Deleteall
import Gogol.AndroidPublisher.Edits.Images.List
import Gogol.AndroidPublisher.Edits.Images.Upload
import Gogol.AndroidPublisher.Edits.Insert
import Gogol.AndroidPublisher.Edits.Listings.Delete
import Gogol.AndroidPublisher.Edits.Listings.Deleteall
import Gogol.AndroidPublisher.Edits.Listings.Get
import Gogol.AndroidPublisher.Edits.Listings.List
import Gogol.AndroidPublisher.Edits.Listings.Patch
import Gogol.AndroidPublisher.Edits.Listings.Update
import Gogol.AndroidPublisher.Edits.Testers.Get
import Gogol.AndroidPublisher.Edits.Testers.Patch
import Gogol.AndroidPublisher.Edits.Testers.Update
import Gogol.AndroidPublisher.Edits.Tracks.Get
import Gogol.AndroidPublisher.Edits.Tracks.List
import Gogol.AndroidPublisher.Edits.Tracks.Patch
import Gogol.AndroidPublisher.Edits.Tracks.Update
import Gogol.AndroidPublisher.Edits.Validate
import Gogol.AndroidPublisher.Generatedapks.Download
import Gogol.AndroidPublisher.Generatedapks.List
import Gogol.AndroidPublisher.Grants.Create
import Gogol.AndroidPublisher.Grants.Delete
import Gogol.AndroidPublisher.Grants.Patch
import Gogol.AndroidPublisher.Inappproducts.Delete
import Gogol.AndroidPublisher.Inappproducts.Get
import Gogol.AndroidPublisher.Inappproducts.Insert
import Gogol.AndroidPublisher.Inappproducts.List
import Gogol.AndroidPublisher.Inappproducts.Patch
import Gogol.AndroidPublisher.Inappproducts.Update
import Gogol.AndroidPublisher.Internalappsharingartifacts.Uploadapk
import Gogol.AndroidPublisher.Internalappsharingartifacts.Uploadbundle
import Gogol.AndroidPublisher.Monetization.ConvertRegionPrices
import Gogol.AndroidPublisher.Monetization.Subscriptions.Archive
import Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Activate
import Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Deactivate
import Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Delete
import Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.MigratePrices
import Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Offers.Activate
import Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Offers.Create
import Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Offers.Deactivate
import Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Offers.Delete
import Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Offers.Get
import Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Offers.List
import Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Offers.Patch
import Gogol.AndroidPublisher.Monetization.Subscriptions.Create
import Gogol.AndroidPublisher.Monetization.Subscriptions.Delete
import Gogol.AndroidPublisher.Monetization.Subscriptions.Get
import Gogol.AndroidPublisher.Monetization.Subscriptions.List
import Gogol.AndroidPublisher.Monetization.Subscriptions.Patch
import Gogol.AndroidPublisher.Orders.Refund
import Gogol.AndroidPublisher.Purchases.Products.Acknowledge
import Gogol.AndroidPublisher.Purchases.Products.Consume
import Gogol.AndroidPublisher.Purchases.Products.Get
import Gogol.AndroidPublisher.Purchases.Subscriptions.Acknowledge
import Gogol.AndroidPublisher.Purchases.Subscriptions.Cancel
import Gogol.AndroidPublisher.Purchases.Subscriptions.Defer
import Gogol.AndroidPublisher.Purchases.Subscriptions.Get
import Gogol.AndroidPublisher.Purchases.Subscriptions.Refund
import Gogol.AndroidPublisher.Purchases.Subscriptions.Revoke
import Gogol.AndroidPublisher.Purchases.Subscriptionsv2.Get
import Gogol.AndroidPublisher.Purchases.Voidedpurchases.List
import Gogol.AndroidPublisher.Reviews.Get
import Gogol.AndroidPublisher.Reviews.List
import Gogol.AndroidPublisher.Reviews.Reply
import Gogol.AndroidPublisher.Systemapks.Variants.Create
import Gogol.AndroidPublisher.Systemapks.Variants.Download
import Gogol.AndroidPublisher.Systemapks.Variants.Get
import Gogol.AndroidPublisher.Systemapks.Variants.List
import Gogol.AndroidPublisher.Types
import Gogol.AndroidPublisher.Users.Create
import Gogol.AndroidPublisher.Users.Delete
import Gogol.AndroidPublisher.Users.List
import Gogol.AndroidPublisher.Users.Patch
