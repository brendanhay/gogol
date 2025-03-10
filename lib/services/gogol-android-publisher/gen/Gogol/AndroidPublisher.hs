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
-- Module      : Gogol.AndroidPublisher
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
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

    -- ** androidpublisher.applications.dataSafety
    AndroidPublisherApplicationsDataSafetyResource,
    AndroidPublisherApplicationsDataSafety (..),
    newAndroidPublisherApplicationsDataSafety,

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

    -- ** androidpublisher.apprecovery.addTargeting
    AndroidPublisherApprecoveryAddTargetingResource,
    AndroidPublisherApprecoveryAddTargeting (..),
    newAndroidPublisherApprecoveryAddTargeting,

    -- ** androidpublisher.apprecovery.cancel
    AndroidPublisherApprecoveryCancelResource,
    AndroidPublisherApprecoveryCancel (..),
    newAndroidPublisherApprecoveryCancel,

    -- ** androidpublisher.apprecovery.create
    AndroidPublisherApprecoveryCreateResource,
    AndroidPublisherApprecoveryCreate (..),
    newAndroidPublisherApprecoveryCreate,

    -- ** androidpublisher.apprecovery.deploy
    AndroidPublisherApprecoveryDeployResource,
    AndroidPublisherApprecoveryDeploy (..),
    newAndroidPublisherApprecoveryDeploy,

    -- ** androidpublisher.apprecovery.list
    AndroidPublisherApprecoveryListResource,
    AndroidPublisherApprecoveryList (..),
    newAndroidPublisherApprecoveryList,

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

    -- ** androidpublisher.edits.tracks.create
    AndroidPublisherEditsTracksCreateResource,
    AndroidPublisherEditsTracksCreate (..),
    newAndroidPublisherEditsTracksCreate,

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

    -- ** androidpublisher.externaltransactions.createexternaltransaction
    AndroidPublisherExternaltransactionsCreateexternaltransactionResource,
    AndroidPublisherExternaltransactionsCreateexternaltransaction (..),
    newAndroidPublisherExternaltransactionsCreateexternaltransaction,

    -- ** androidpublisher.externaltransactions.getexternaltransaction
    AndroidPublisherExternaltransactionsGetexternaltransactionResource,
    AndroidPublisherExternaltransactionsGetexternaltransaction (..),
    newAndroidPublisherExternaltransactionsGetexternaltransaction,

    -- ** androidpublisher.externaltransactions.refundexternaltransaction
    AndroidPublisherExternaltransactionsRefundexternaltransactionResource,
    AndroidPublisherExternaltransactionsRefundexternaltransaction (..),
    newAndroidPublisherExternaltransactionsRefundexternaltransaction,

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

    -- ** androidpublisher.inappproducts.batchDelete
    AndroidPublisherInappproductsBatchDeleteResource,
    AndroidPublisherInappproductsBatchDelete (..),
    newAndroidPublisherInappproductsBatchDelete,

    -- ** androidpublisher.inappproducts.batchGet
    AndroidPublisherInappproductsBatchGetResource,
    AndroidPublisherInappproductsBatchGet (..),
    newAndroidPublisherInappproductsBatchGet,

    -- ** androidpublisher.inappproducts.batchUpdate
    AndroidPublisherInappproductsBatchUpdateResource,
    AndroidPublisherInappproductsBatchUpdate (..),
    newAndroidPublisherInappproductsBatchUpdate,

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

    -- ** androidpublisher.monetization.subscriptions.basePlans.batchMigratePrices
    AndroidPublisherMonetizationSubscriptionsBasePlansBatchMigratePricesResource,
    AndroidPublisherMonetizationSubscriptionsBasePlansBatchMigratePrices (..),
    newAndroidPublisherMonetizationSubscriptionsBasePlansBatchMigratePrices,

    -- ** androidpublisher.monetization.subscriptions.basePlans.batchUpdateStates
    AndroidPublisherMonetizationSubscriptionsBasePlansBatchUpdateStatesResource,
    AndroidPublisherMonetizationSubscriptionsBasePlansBatchUpdateStates (..),
    newAndroidPublisherMonetizationSubscriptionsBasePlansBatchUpdateStates,

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

    -- ** androidpublisher.monetization.subscriptions.basePlans.offers.batchGet
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchGetResource,
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchGet (..),
    newAndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchGet,

    -- ** androidpublisher.monetization.subscriptions.basePlans.offers.batchUpdate
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdateResource,
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdate (..),
    newAndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdate,

    -- ** androidpublisher.monetization.subscriptions.basePlans.offers.batchUpdateStates
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdateStatesResource,
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdateStates (..),
    newAndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdateStates,

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

    -- ** androidpublisher.monetization.subscriptions.batchGet
    AndroidPublisherMonetizationSubscriptionsBatchGetResource,
    AndroidPublisherMonetizationSubscriptionsBatchGet (..),
    newAndroidPublisherMonetizationSubscriptionsBatchGet,

    -- ** androidpublisher.monetization.subscriptions.batchUpdate
    AndroidPublisherMonetizationSubscriptionsBatchUpdateResource,
    AndroidPublisherMonetizationSubscriptionsBatchUpdate (..),
    newAndroidPublisherMonetizationSubscriptionsBatchUpdate,

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

    -- ** androidpublisher.purchases.subscriptionsv2.revoke
    AndroidPublisherPurchasesSubscriptionsv2RevokeResource,
    AndroidPublisherPurchasesSubscriptionsv2Revoke (..),
    newAndroidPublisherPurchasesSubscriptionsv2Revoke,

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

    -- ** Abi
    Abi (..),
    newAbi,

    -- ** Abi_Alias
    Abi_Alias (..),

    -- ** AbiTargeting
    AbiTargeting (..),
    newAbiTargeting,

    -- ** AcquisitionTargetingRule
    AcquisitionTargetingRule (..),
    newAcquisitionTargetingRule,

    -- ** ActivateBasePlanRequest
    ActivateBasePlanRequest (..),
    newActivateBasePlanRequest,

    -- ** ActivateBasePlanRequest_LatencyTolerance
    ActivateBasePlanRequest_LatencyTolerance (..),

    -- ** ActivateSubscriptionOfferRequest
    ActivateSubscriptionOfferRequest (..),
    newActivateSubscriptionOfferRequest,

    -- ** ActivateSubscriptionOfferRequest_LatencyTolerance
    ActivateSubscriptionOfferRequest_LatencyTolerance (..),

    -- ** AddTargetingRequest
    AddTargetingRequest (..),
    newAddTargetingRequest,

    -- ** AddTargetingResponse
    AddTargetingResponse (..),
    newAddTargetingResponse,

    -- ** AllUsers
    AllUsers (..),
    newAllUsers,

    -- ** AndroidSdks
    AndroidSdks (..),
    newAndroidSdks,

    -- ** Apk
    Apk (..),
    newApk,

    -- ** ApkBinary
    ApkBinary (..),
    newApkBinary,

    -- ** ApkDescription
    ApkDescription (..),
    newApkDescription,

    -- ** ApkSet
    ApkSet (..),
    newApkSet,

    -- ** ApkTargeting
    ApkTargeting (..),
    newApkTargeting,

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

    -- ** AppRecoveryAction
    AppRecoveryAction (..),
    newAppRecoveryAction,

    -- ** AppRecoveryAction_Status
    AppRecoveryAction_Status (..),

    -- ** AppVersionList
    AppVersionList (..),
    newAppVersionList,

    -- ** AppVersionRange
    AppVersionRange (..),
    newAppVersionRange,

    -- ** ArchiveSubscriptionRequest
    ArchiveSubscriptionRequest (..),
    newArchiveSubscriptionRequest,

    -- ** AssetModuleMetadata
    AssetModuleMetadata (..),
    newAssetModuleMetadata,

    -- ** AssetModuleMetadata_DeliveryType
    AssetModuleMetadata_DeliveryType (..),

    -- ** AssetSliceSet
    AssetSliceSet (..),
    newAssetSliceSet,

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

    -- ** BatchGetSubscriptionOffersRequest
    BatchGetSubscriptionOffersRequest (..),
    newBatchGetSubscriptionOffersRequest,

    -- ** BatchGetSubscriptionOffersResponse
    BatchGetSubscriptionOffersResponse (..),
    newBatchGetSubscriptionOffersResponse,

    -- ** BatchGetSubscriptionsResponse
    BatchGetSubscriptionsResponse (..),
    newBatchGetSubscriptionsResponse,

    -- ** BatchMigrateBasePlanPricesRequest
    BatchMigrateBasePlanPricesRequest (..),
    newBatchMigrateBasePlanPricesRequest,

    -- ** BatchMigrateBasePlanPricesResponse
    BatchMigrateBasePlanPricesResponse (..),
    newBatchMigrateBasePlanPricesResponse,

    -- ** BatchUpdateBasePlanStatesRequest
    BatchUpdateBasePlanStatesRequest (..),
    newBatchUpdateBasePlanStatesRequest,

    -- ** BatchUpdateBasePlanStatesResponse
    BatchUpdateBasePlanStatesResponse (..),
    newBatchUpdateBasePlanStatesResponse,

    -- ** BatchUpdateSubscriptionOfferStatesRequest
    BatchUpdateSubscriptionOfferStatesRequest (..),
    newBatchUpdateSubscriptionOfferStatesRequest,

    -- ** BatchUpdateSubscriptionOfferStatesResponse
    BatchUpdateSubscriptionOfferStatesResponse (..),
    newBatchUpdateSubscriptionOfferStatesResponse,

    -- ** BatchUpdateSubscriptionOffersRequest
    BatchUpdateSubscriptionOffersRequest (..),
    newBatchUpdateSubscriptionOffersRequest,

    -- ** BatchUpdateSubscriptionOffersResponse
    BatchUpdateSubscriptionOffersResponse (..),
    newBatchUpdateSubscriptionOffersResponse,

    -- ** BatchUpdateSubscriptionsRequest
    BatchUpdateSubscriptionsRequest (..),
    newBatchUpdateSubscriptionsRequest,

    -- ** BatchUpdateSubscriptionsResponse
    BatchUpdateSubscriptionsResponse (..),
    newBatchUpdateSubscriptionsResponse,

    -- ** Bundle
    Bundle (..),
    newBundle,

    -- ** BundlesListResponse
    BundlesListResponse (..),
    newBundlesListResponse,

    -- ** CancelAppRecoveryRequest
    CancelAppRecoveryRequest (..),
    newCancelAppRecoveryRequest,

    -- ** CancelAppRecoveryResponse
    CancelAppRecoveryResponse (..),
    newCancelAppRecoveryResponse,

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

    -- ** CreateDraftAppRecoveryRequest
    CreateDraftAppRecoveryRequest (..),
    newCreateDraftAppRecoveryRequest,

    -- ** DeactivateBasePlanRequest
    DeactivateBasePlanRequest (..),
    newDeactivateBasePlanRequest,

    -- ** DeactivateBasePlanRequest_LatencyTolerance
    DeactivateBasePlanRequest_LatencyTolerance (..),

    -- ** DeactivateSubscriptionOfferRequest
    DeactivateSubscriptionOfferRequest (..),
    newDeactivateSubscriptionOfferRequest,

    -- ** DeactivateSubscriptionOfferRequest_LatencyTolerance
    DeactivateSubscriptionOfferRequest_LatencyTolerance (..),

    -- ** DeferredItemReplacement
    DeferredItemReplacement (..),
    newDeferredItemReplacement,

    -- ** DeobfuscationFile
    DeobfuscationFile (..),
    newDeobfuscationFile,

    -- ** DeobfuscationFile_SymbolType
    DeobfuscationFile_SymbolType (..),

    -- ** DeobfuscationFilesUploadResponse
    DeobfuscationFilesUploadResponse (..),
    newDeobfuscationFilesUploadResponse,

    -- ** DeployAppRecoveryRequest
    DeployAppRecoveryRequest (..),
    newDeployAppRecoveryRequest,

    -- ** DeployAppRecoveryResponse
    DeployAppRecoveryResponse (..),
    newDeployAppRecoveryResponse,

    -- ** DeveloperComment
    DeveloperComment (..),
    newDeveloperComment,

    -- ** DeveloperInitiatedCancellation
    DeveloperInitiatedCancellation (..),
    newDeveloperInitiatedCancellation,

    -- ** DeviceFeature
    DeviceFeature (..),
    newDeviceFeature,

    -- ** DeviceFeatureTargeting
    DeviceFeatureTargeting (..),
    newDeviceFeatureTargeting,

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

    -- ** ExternalSubscription
    ExternalSubscription (..),
    newExternalSubscription,

    -- ** ExternalSubscription_SubscriptionType
    ExternalSubscription_SubscriptionType (..),

    -- ** ExternalTransaction
    ExternalTransaction (..),
    newExternalTransaction,

    -- ** ExternalTransaction_TransactionState
    ExternalTransaction_TransactionState (..),

    -- ** ExternalTransactionAddress
    ExternalTransactionAddress (..),
    newExternalTransactionAddress,

    -- ** ExternalTransactionTestPurchase
    ExternalTransactionTestPurchase (..),
    newExternalTransactionTestPurchase,

    -- ** ExternallyHostedApk
    ExternallyHostedApk (..),
    newExternallyHostedApk,

    -- ** FullRefund
    FullRefund (..),
    newFullRefund,

    -- ** GeneratedApksListResponse
    GeneratedApksListResponse (..),
    newGeneratedApksListResponse,

    -- ** GeneratedApksPerSigningKey
    GeneratedApksPerSigningKey (..),
    newGeneratedApksPerSigningKey,

    -- ** GeneratedAssetPackSlice
    GeneratedAssetPackSlice (..),
    newGeneratedAssetPackSlice,

    -- ** GeneratedRecoveryApk
    GeneratedRecoveryApk (..),
    newGeneratedRecoveryApk,

    -- ** GeneratedRecoveryApk_RecoveryStatus
    GeneratedRecoveryApk_RecoveryStatus (..),

    -- ** GeneratedSplitApk
    GeneratedSplitApk (..),
    newGeneratedSplitApk,

    -- ** GeneratedStandaloneApk
    GeneratedStandaloneApk (..),
    newGeneratedStandaloneApk,

    -- ** GeneratedUniversalApk
    GeneratedUniversalApk (..),
    newGeneratedUniversalApk,

    -- ** GetSubscriptionOfferRequest
    GetSubscriptionOfferRequest (..),
    newGetSubscriptionOfferRequest,

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

    -- ** InappproductsBatchDeleteRequest
    InappproductsBatchDeleteRequest (..),
    newInappproductsBatchDeleteRequest,

    -- ** InappproductsBatchGetResponse
    InappproductsBatchGetResponse (..),
    newInappproductsBatchGetResponse,

    -- ** InappproductsBatchUpdateRequest
    InappproductsBatchUpdateRequest (..),
    newInappproductsBatchUpdateRequest,

    -- ** InappproductsBatchUpdateResponse
    InappproductsBatchUpdateResponse (..),
    newInappproductsBatchUpdateResponse,

    -- ** InappproductsDeleteRequest
    InappproductsDeleteRequest (..),
    newInappproductsDeleteRequest,

    -- ** InappproductsDeleteRequest_LatencyTolerance
    InappproductsDeleteRequest_LatencyTolerance (..),

    -- ** InappproductsListResponse
    InappproductsListResponse (..),
    newInappproductsListResponse,

    -- ** InappproductsUpdateRequest
    InappproductsUpdateRequest (..),
    newInappproductsUpdateRequest,

    -- ** InappproductsUpdateRequest_LatencyTolerance
    InappproductsUpdateRequest_LatencyTolerance (..),

    -- ** InstallmentPlan
    InstallmentPlan (..),
    newInstallmentPlan,

    -- ** InstallmentsBasePlanType
    InstallmentsBasePlanType (..),
    newInstallmentsBasePlanType,

    -- ** InstallmentsBasePlanType_ProrationMode
    InstallmentsBasePlanType_ProrationMode (..),

    -- ** InstallmentsBasePlanType_RenewalType
    InstallmentsBasePlanType_RenewalType (..),

    -- ** InstallmentsBasePlanType_ResubscribeState
    InstallmentsBasePlanType_ResubscribeState (..),

    -- ** InternalAppSharingArtifact
    InternalAppSharingArtifact (..),
    newInternalAppSharingArtifact,

    -- ** IntroductoryPriceInfo
    IntroductoryPriceInfo (..),
    newIntroductoryPriceInfo,

    -- ** LanguageTargeting
    LanguageTargeting (..),
    newLanguageTargeting,

    -- ** ListAppRecoveriesResponse
    ListAppRecoveriesResponse (..),
    newListAppRecoveriesResponse,

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

    -- ** MigrateBasePlanPricesRequest_LatencyTolerance
    MigrateBasePlanPricesRequest_LatencyTolerance (..),

    -- ** MigrateBasePlanPricesResponse
    MigrateBasePlanPricesResponse (..),
    newMigrateBasePlanPricesResponse,

    -- ** ModuleMetadata
    ModuleMetadata (..),
    newModuleMetadata,

    -- ** ModuleMetadata_DeliveryType
    ModuleMetadata_DeliveryType (..),

    -- ** ModuleMetadata_ModuleType
    ModuleMetadata_ModuleType (..),

    -- ** ModuleTargeting
    ModuleTargeting (..),
    newModuleTargeting,

    -- ** Money
    Money (..),
    newMoney,

    -- ** MultiAbi
    MultiAbi (..),
    newMultiAbi,

    -- ** MultiAbiTargeting
    MultiAbiTargeting (..),
    newMultiAbiTargeting,

    -- ** OfferDetails
    OfferDetails (..),
    newOfferDetails,

    -- ** OfferTag
    OfferTag (..),
    newOfferTag,

    -- ** OneTimeCode
    OneTimeCode (..),
    newOneTimeCode,

    -- ** OneTimeExternalTransaction
    OneTimeExternalTransaction (..),
    newOneTimeExternalTransaction,

    -- ** OtherRecurringProduct
    OtherRecurringProduct (..),
    newOtherRecurringProduct,

    -- ** OtherRegionsBasePlanConfig
    OtherRegionsBasePlanConfig (..),
    newOtherRegionsBasePlanConfig,

    -- ** OtherRegionsSubscriptionOfferConfig
    OtherRegionsSubscriptionOfferConfig (..),
    newOtherRegionsSubscriptionOfferConfig,

    -- ** OtherRegionsSubscriptionOfferPhaseConfig
    OtherRegionsSubscriptionOfferPhaseConfig (..),
    newOtherRegionsSubscriptionOfferPhaseConfig,

    -- ** OtherRegionsSubscriptionOfferPhaseFreePriceOverride
    OtherRegionsSubscriptionOfferPhaseFreePriceOverride (..),
    newOtherRegionsSubscriptionOfferPhaseFreePriceOverride,

    -- ** OtherRegionsSubscriptionOfferPhasePrices
    OtherRegionsSubscriptionOfferPhasePrices (..),
    newOtherRegionsSubscriptionOfferPhasePrices,

    -- ** PageInfo
    PageInfo (..),
    newPageInfo,

    -- ** PartialRefund
    PartialRefund (..),
    newPartialRefund,

    -- ** PausedStateContext
    PausedStateContext (..),
    newPausedStateContext,

    -- ** PendingCancellation
    PendingCancellation (..),
    newPendingCancellation,

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

    -- ** RecurringExternalTransaction
    RecurringExternalTransaction (..),
    newRecurringExternalTransaction,

    -- ** RecurringExternalTransaction_MigratedTransactionProgram
    RecurringExternalTransaction_MigratedTransactionProgram (..),

    -- ** RefundExternalTransactionRequest
    RefundExternalTransactionRequest (..),
    newRefundExternalTransactionRequest,

    -- ** RegionalBasePlanConfig
    RegionalBasePlanConfig (..),
    newRegionalBasePlanConfig,

    -- ** RegionalPriceMigrationConfig
    RegionalPriceMigrationConfig (..),
    newRegionalPriceMigrationConfig,

    -- ** RegionalPriceMigrationConfig_PriceIncreaseType
    RegionalPriceMigrationConfig_PriceIncreaseType (..),

    -- ** RegionalSubscriptionOfferConfig
    RegionalSubscriptionOfferConfig (..),
    newRegionalSubscriptionOfferConfig,

    -- ** RegionalSubscriptionOfferPhaseConfig
    RegionalSubscriptionOfferPhaseConfig (..),
    newRegionalSubscriptionOfferPhaseConfig,

    -- ** RegionalSubscriptionOfferPhaseFreePriceOverride
    RegionalSubscriptionOfferPhaseFreePriceOverride (..),
    newRegionalSubscriptionOfferPhaseFreePriceOverride,

    -- ** RegionalTaxRateInfo
    RegionalTaxRateInfo (..),
    newRegionalTaxRateInfo,

    -- ** RegionalTaxRateInfo_StreamingTaxType
    RegionalTaxRateInfo_StreamingTaxType (..),

    -- ** RegionalTaxRateInfo_TaxTier
    RegionalTaxRateInfo_TaxTier (..),

    -- ** Regions
    Regions (..),
    newRegions,

    -- ** RegionsVersion
    RegionsVersion (..),
    newRegionsVersion,

    -- ** RemoteInAppUpdate
    RemoteInAppUpdate (..),
    newRemoteInAppUpdate,

    -- ** RemoteInAppUpdateData
    RemoteInAppUpdateData (..),
    newRemoteInAppUpdateData,

    -- ** RemoteInAppUpdateDataPerBundle
    RemoteInAppUpdateDataPerBundle (..),
    newRemoteInAppUpdateDataPerBundle,

    -- ** ReplacementCancellation
    ReplacementCancellation (..),
    newReplacementCancellation,

    -- ** RestrictedPaymentCountries
    RestrictedPaymentCountries (..),
    newRestrictedPaymentCountries,

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

    -- ** RevocationContext
    RevocationContext (..),
    newRevocationContext,

    -- ** RevocationContextFullRefund
    RevocationContextFullRefund (..),
    newRevocationContextFullRefund,

    -- ** RevocationContextProratedRefund
    RevocationContextProratedRefund (..),
    newRevocationContextProratedRefund,

    -- ** RevokeSubscriptionPurchaseRequest
    RevokeSubscriptionPurchaseRequest (..),
    newRevokeSubscriptionPurchaseRequest,

    -- ** RevokeSubscriptionPurchaseResponse
    RevokeSubscriptionPurchaseResponse (..),
    newRevokeSubscriptionPurchaseResponse,

    -- ** SafetyLabelsUpdateRequest
    SafetyLabelsUpdateRequest (..),
    newSafetyLabelsUpdateRequest,

    -- ** SafetyLabelsUpdateResponse
    SafetyLabelsUpdateResponse (..),
    newSafetyLabelsUpdateResponse,

    -- ** ScreenDensity
    ScreenDensity (..),
    newScreenDensity,

    -- ** ScreenDensity_DensityAlias
    ScreenDensity_DensityAlias (..),

    -- ** ScreenDensityTargeting
    ScreenDensityTargeting (..),
    newScreenDensityTargeting,

    -- ** SdkVersion
    SdkVersion (..),
    newSdkVersion,

    -- ** SdkVersionTargeting
    SdkVersionTargeting (..),
    newSdkVersionTargeting,

    -- ** SignupPromotion
    SignupPromotion (..),
    newSignupPromotion,

    -- ** SplitApkMetadata
    SplitApkMetadata (..),
    newSplitApkMetadata,

    -- ** SplitApkVariant
    SplitApkVariant (..),
    newSplitApkVariant,

    -- ** StandaloneApkMetadata
    StandaloneApkMetadata (..),
    newStandaloneApkMetadata,

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

    -- ** SystemApkOptions
    SystemApkOptions (..),
    newSystemApkOptions,

    -- ** SystemApksListResponse
    SystemApksListResponse (..),
    newSystemApksListResponse,

    -- ** SystemFeature
    SystemFeature (..),
    newSystemFeature,

    -- ** SystemInitiatedCancellation
    SystemInitiatedCancellation (..),
    newSystemInitiatedCancellation,

    -- ** SystemOnChip
    SystemOnChip (..),
    newSystemOnChip,

    -- ** Targeting
    Targeting (..),
    newTargeting,

    -- ** TargetingInfo
    TargetingInfo (..),
    newTargetingInfo,

    -- ** TargetingRuleScope
    TargetingRuleScope (..),
    newTargetingRuleScope,

    -- ** TargetingRuleScopeAnySubscriptionInApp
    TargetingRuleScopeAnySubscriptionInApp (..),
    newTargetingRuleScopeAnySubscriptionInApp,

    -- ** TargetingRuleScopeThisSubscription
    TargetingRuleScopeThisSubscription (..),
    newTargetingRuleScopeThisSubscription,

    -- ** TargetingUpdate
    TargetingUpdate (..),
    newTargetingUpdate,

    -- ** TestPurchase
    TestPurchase (..),
    newTestPurchase,

    -- ** Testers
    Testers (..),
    newTesters,

    -- ** TextureCompressionFormat
    TextureCompressionFormat (..),
    newTextureCompressionFormat,

    -- ** TextureCompressionFormat_Alias
    TextureCompressionFormat_Alias (..),

    -- ** TextureCompressionFormatTargeting
    TextureCompressionFormatTargeting (..),
    newTextureCompressionFormatTargeting,

    -- ** Timestamp
    Timestamp (..),
    newTimestamp,

    -- ** TokenPagination
    TokenPagination (..),
    newTokenPagination,

    -- ** Track
    Track (..),
    newTrack,

    -- ** TrackConfig
    TrackConfig (..),
    newTrackConfig,

    -- ** TrackConfig_FormFactor
    TrackConfig_FormFactor (..),

    -- ** TrackConfig_Type
    TrackConfig_Type (..),

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

    -- ** UpdateBasePlanStateRequest
    UpdateBasePlanStateRequest (..),
    newUpdateBasePlanStateRequest,

    -- ** UpdateSubscriptionOfferRequest
    UpdateSubscriptionOfferRequest (..),
    newUpdateSubscriptionOfferRequest,

    -- ** UpdateSubscriptionOfferRequest_LatencyTolerance
    UpdateSubscriptionOfferRequest_LatencyTolerance (..),

    -- ** UpdateSubscriptionOfferStateRequest
    UpdateSubscriptionOfferStateRequest (..),
    newUpdateSubscriptionOfferStateRequest,

    -- ** UpdateSubscriptionRequest
    UpdateSubscriptionRequest (..),
    newUpdateSubscriptionRequest,

    -- ** UpdateSubscriptionRequest_LatencyTolerance
    UpdateSubscriptionRequest_LatencyTolerance (..),

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

    -- ** UserCountriesTargeting
    UserCountriesTargeting (..),
    newUserCountriesTargeting,

    -- ** UserCountrySet
    UserCountrySet (..),
    newUserCountrySet,

    -- ** UserInitiatedCancellation
    UserInitiatedCancellation (..),
    newUserInitiatedCancellation,

    -- ** UsesPermission
    UsesPermission (..),
    newUsesPermission,

    -- ** VanityCode
    VanityCode (..),
    newVanityCode,

    -- ** Variant
    Variant (..),
    newVariant,

    -- ** VariantTargeting
    VariantTargeting (..),
    newVariantTargeting,

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

    -- ** InappproductsDeleteLatencyTolerance
    InappproductsDeleteLatencyTolerance (..),

    -- ** InappproductsPatchLatencyTolerance
    InappproductsPatchLatencyTolerance (..),

    -- ** InappproductsUpdateLatencyTolerance
    InappproductsUpdateLatencyTolerance (..),

    -- ** MonetizationSubscriptionsBasePlansOffersPatchLatencyTolerance
    MonetizationSubscriptionsBasePlansOffersPatchLatencyTolerance (..),

    -- ** MonetizationSubscriptionsPatchLatencyTolerance
    MonetizationSubscriptionsPatchLatencyTolerance (..),
  )
where

import Gogol.AndroidPublisher.Applications.DataSafety
import Gogol.AndroidPublisher.Applications.DeviceTierConfigs.Create
import Gogol.AndroidPublisher.Applications.DeviceTierConfigs.Get
import Gogol.AndroidPublisher.Applications.DeviceTierConfigs.List
import Gogol.AndroidPublisher.Apprecovery.AddTargeting
import Gogol.AndroidPublisher.Apprecovery.Cancel
import Gogol.AndroidPublisher.Apprecovery.Create
import Gogol.AndroidPublisher.Apprecovery.Deploy
import Gogol.AndroidPublisher.Apprecovery.List
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
import Gogol.AndroidPublisher.Edits.Tracks.Create
import Gogol.AndroidPublisher.Edits.Tracks.Get
import Gogol.AndroidPublisher.Edits.Tracks.List
import Gogol.AndroidPublisher.Edits.Tracks.Patch
import Gogol.AndroidPublisher.Edits.Tracks.Update
import Gogol.AndroidPublisher.Edits.Validate
import Gogol.AndroidPublisher.Externaltransactions.Createexternaltransaction
import Gogol.AndroidPublisher.Externaltransactions.Getexternaltransaction
import Gogol.AndroidPublisher.Externaltransactions.Refundexternaltransaction
import Gogol.AndroidPublisher.Generatedapks.Download
import Gogol.AndroidPublisher.Generatedapks.List
import Gogol.AndroidPublisher.Grants.Create
import Gogol.AndroidPublisher.Grants.Delete
import Gogol.AndroidPublisher.Grants.Patch
import Gogol.AndroidPublisher.Inappproducts.BatchDelete
import Gogol.AndroidPublisher.Inappproducts.BatchGet
import Gogol.AndroidPublisher.Inappproducts.BatchUpdate
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
import Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.BatchMigratePrices
import Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.BatchUpdateStates
import Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Deactivate
import Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Delete
import Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.MigratePrices
import Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Offers.Activate
import Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Offers.BatchGet
import Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Offers.BatchUpdate
import Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Offers.BatchUpdateStates
import Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Offers.Create
import Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Offers.Deactivate
import Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Offers.Delete
import Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Offers.Get
import Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Offers.List
import Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Offers.Patch
import Gogol.AndroidPublisher.Monetization.Subscriptions.BatchGet
import Gogol.AndroidPublisher.Monetization.Subscriptions.BatchUpdate
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
import Gogol.AndroidPublisher.Purchases.Subscriptionsv2.Revoke
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
