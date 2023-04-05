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
-- Module      : Gogol.ShoppingContent
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manage your product listings and accounts for Google Shopping
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference>
module Gogol.ShoppingContent
  ( -- * Configuration
    shoppingContentService,

    -- * OAuth Scopes
    Content'FullControl,

    -- * Resources

    -- ** content.accounts.authinfo
    ContentAccountsAuthinfoResource,
    ContentAccountsAuthinfo (..),
    newContentAccountsAuthinfo,

    -- ** content.accounts.claimwebsite
    ContentAccountsClaimwebsiteResource,
    ContentAccountsClaimwebsite (..),
    newContentAccountsClaimwebsite,

    -- ** content.accounts.credentials.create
    ContentAccountsCredentialsCreateResource,
    ContentAccountsCredentialsCreate (..),
    newContentAccountsCredentialsCreate,

    -- ** content.accounts.custombatch
    ContentAccountsCustombatchResource,
    ContentAccountsCustombatch (..),
    newContentAccountsCustombatch,

    -- ** content.accounts.delete
    ContentAccountsDeleteResource,
    ContentAccountsDelete (..),
    newContentAccountsDelete,

    -- ** content.accounts.get
    ContentAccountsGetResource,
    ContentAccountsGet (..),
    newContentAccountsGet,

    -- ** content.accounts.insert
    ContentAccountsInsertResource,
    ContentAccountsInsert (..),
    newContentAccountsInsert,

    -- ** content.accounts.labels.create
    ContentAccountsLabelsCreateResource,
    ContentAccountsLabelsCreate (..),
    newContentAccountsLabelsCreate,

    -- ** content.accounts.labels.delete
    ContentAccountsLabelsDeleteResource,
    ContentAccountsLabelsDelete (..),
    newContentAccountsLabelsDelete,

    -- ** content.accounts.labels.list
    ContentAccountsLabelsListResource,
    ContentAccountsLabelsList (..),
    newContentAccountsLabelsList,

    -- ** content.accounts.labels.patch
    ContentAccountsLabelsPatchResource,
    ContentAccountsLabelsPatch (..),
    newContentAccountsLabelsPatch,

    -- ** content.accounts.link
    ContentAccountsLinkResource,
    ContentAccountsLink (..),
    newContentAccountsLink,

    -- ** content.accounts.list
    ContentAccountsListResource,
    ContentAccountsList (..),
    newContentAccountsList,

    -- ** content.accounts.listlinks
    ContentAccountsListlinksResource,
    ContentAccountsListlinks (..),
    newContentAccountsListlinks,

    -- ** content.accounts.requestphoneverification
    ContentAccountsRequestphoneverificationResource,
    ContentAccountsRequestphoneverification (..),
    newContentAccountsRequestphoneverification,

    -- ** content.accounts.returncarrier.create
    ContentAccountsReturncarrierCreateResource,
    ContentAccountsReturncarrierCreate (..),
    newContentAccountsReturncarrierCreate,

    -- ** content.accounts.returncarrier.delete
    ContentAccountsReturncarrierDeleteResource,
    ContentAccountsReturncarrierDelete (..),
    newContentAccountsReturncarrierDelete,

    -- ** content.accounts.returncarrier.list
    ContentAccountsReturncarrierListResource,
    ContentAccountsReturncarrierList (..),
    newContentAccountsReturncarrierList,

    -- ** content.accounts.returncarrier.patch
    ContentAccountsReturncarrierPatchResource,
    ContentAccountsReturncarrierPatch (..),
    newContentAccountsReturncarrierPatch,

    -- ** content.accounts.update
    ContentAccountsUpdateResource,
    ContentAccountsUpdate (..),
    newContentAccountsUpdate,

    -- ** content.accounts.updatelabels
    ContentAccountsUpdatelabelsResource,
    ContentAccountsUpdatelabels (..),
    newContentAccountsUpdatelabels,

    -- ** content.accounts.verifyphonenumber
    ContentAccountsVerifyphonenumberResource,
    ContentAccountsVerifyphonenumber (..),
    newContentAccountsVerifyphonenumber,

    -- ** content.accountstatuses.custombatch
    ContentAccountstatusesCustombatchResource,
    ContentAccountstatusesCustombatch (..),
    newContentAccountstatusesCustombatch,

    -- ** content.accountstatuses.get
    ContentAccountstatusesGetResource,
    ContentAccountstatusesGet (..),
    newContentAccountstatusesGet,

    -- ** content.accountstatuses.list
    ContentAccountstatusesListResource,
    ContentAccountstatusesList (..),
    newContentAccountstatusesList,

    -- ** content.accounttax.custombatch
    ContentAccounttaxCustombatchResource,
    ContentAccounttaxCustombatch (..),
    newContentAccounttaxCustombatch,

    -- ** content.accounttax.get
    ContentAccounttaxGetResource,
    ContentAccounttaxGet (..),
    newContentAccounttaxGet,

    -- ** content.accounttax.list
    ContentAccounttaxListResource,
    ContentAccounttaxList (..),
    newContentAccounttaxList,

    -- ** content.accounttax.update
    ContentAccounttaxUpdateResource,
    ContentAccounttaxUpdate (..),
    newContentAccounttaxUpdate,

    -- ** content.buyongoogleprograms.activate
    ContentBuyongoogleprogramsActivateResource,
    ContentBuyongoogleprogramsActivate (..),
    newContentBuyongoogleprogramsActivate,

    -- ** content.buyongoogleprograms.get
    ContentBuyongoogleprogramsGetResource,
    ContentBuyongoogleprogramsGet (..),
    newContentBuyongoogleprogramsGet,

    -- ** content.buyongoogleprograms.onboard
    ContentBuyongoogleprogramsOnboardResource,
    ContentBuyongoogleprogramsOnboard (..),
    newContentBuyongoogleprogramsOnboard,

    -- ** content.buyongoogleprograms.patch
    ContentBuyongoogleprogramsPatchResource,
    ContentBuyongoogleprogramsPatch (..),
    newContentBuyongoogleprogramsPatch,

    -- ** content.buyongoogleprograms.pause
    ContentBuyongoogleprogramsPauseResource,
    ContentBuyongoogleprogramsPause (..),
    newContentBuyongoogleprogramsPause,

    -- ** content.buyongoogleprograms.requestreview
    ContentBuyongoogleprogramsRequestreviewResource,
    ContentBuyongoogleprogramsRequestreview (..),
    newContentBuyongoogleprogramsRequestreview,

    -- ** content.collections.create
    ContentCollectionsCreateResource,
    ContentCollectionsCreate (..),
    newContentCollectionsCreate,

    -- ** content.collections.delete
    ContentCollectionsDeleteResource,
    ContentCollectionsDelete (..),
    newContentCollectionsDelete,

    -- ** content.collections.get
    ContentCollectionsGetResource,
    ContentCollectionsGet (..),
    newContentCollectionsGet,

    -- ** content.collections.list
    ContentCollectionsListResource,
    ContentCollectionsList (..),
    newContentCollectionsList,

    -- ** content.collectionstatuses.get
    ContentCollectionstatusesGetResource,
    ContentCollectionstatusesGet (..),
    newContentCollectionstatusesGet,

    -- ** content.collectionstatuses.list
    ContentCollectionstatusesListResource,
    ContentCollectionstatusesList (..),
    newContentCollectionstatusesList,

    -- ** content.conversionsources.create
    ContentConversionsourcesCreateResource,
    ContentConversionsourcesCreate (..),
    newContentConversionsourcesCreate,

    -- ** content.conversionsources.delete
    ContentConversionsourcesDeleteResource,
    ContentConversionsourcesDelete (..),
    newContentConversionsourcesDelete,

    -- ** content.conversionsources.get
    ContentConversionsourcesGetResource,
    ContentConversionsourcesGet (..),
    newContentConversionsourcesGet,

    -- ** content.conversionsources.list
    ContentConversionsourcesListResource,
    ContentConversionsourcesList (..),
    newContentConversionsourcesList,

    -- ** content.conversionsources.patch
    ContentConversionsourcesPatchResource,
    ContentConversionsourcesPatch (..),
    newContentConversionsourcesPatch,

    -- ** content.conversionsources.undelete
    ContentConversionsourcesUndeleteResource,
    ContentConversionsourcesUndelete (..),
    newContentConversionsourcesUndelete,

    -- ** content.csses.get
    ContentCssesGetResource,
    ContentCssesGet (..),
    newContentCssesGet,

    -- ** content.csses.list
    ContentCssesListResource,
    ContentCssesList (..),
    newContentCssesList,

    -- ** content.csses.updatelabels
    ContentCssesUpdatelabelsResource,
    ContentCssesUpdatelabels (..),
    newContentCssesUpdatelabels,

    -- ** content.datafeeds.custombatch
    ContentDatafeedsCustombatchResource,
    ContentDatafeedsCustombatch (..),
    newContentDatafeedsCustombatch,

    -- ** content.datafeeds.delete
    ContentDatafeedsDeleteResource,
    ContentDatafeedsDelete (..),
    newContentDatafeedsDelete,

    -- ** content.datafeeds.fetchnow
    ContentDatafeedsFetchnowResource,
    ContentDatafeedsFetchnow (..),
    newContentDatafeedsFetchnow,

    -- ** content.datafeeds.get
    ContentDatafeedsGetResource,
    ContentDatafeedsGet (..),
    newContentDatafeedsGet,

    -- ** content.datafeeds.insert
    ContentDatafeedsInsertResource,
    ContentDatafeedsInsert (..),
    newContentDatafeedsInsert,

    -- ** content.datafeeds.list
    ContentDatafeedsListResource,
    ContentDatafeedsList (..),
    newContentDatafeedsList,

    -- ** content.datafeeds.update
    ContentDatafeedsUpdateResource,
    ContentDatafeedsUpdate (..),
    newContentDatafeedsUpdate,

    -- ** content.datafeedstatuses.custombatch
    ContentDatafeedstatusesCustombatchResource,
    ContentDatafeedstatusesCustombatch (..),
    newContentDatafeedstatusesCustombatch,

    -- ** content.datafeedstatuses.get
    ContentDatafeedstatusesGetResource,
    ContentDatafeedstatusesGet (..),
    newContentDatafeedstatusesGet,

    -- ** content.datafeedstatuses.list
    ContentDatafeedstatusesListResource,
    ContentDatafeedstatusesList (..),
    newContentDatafeedstatusesList,

    -- ** content.freelistingsprogram.get
    ContentFreelistingsprogramGetResource,
    ContentFreelistingsprogramGet (..),
    newContentFreelistingsprogramGet,

    -- ** content.freelistingsprogram.requestreview
    ContentFreelistingsprogramRequestreviewResource,
    ContentFreelistingsprogramRequestreview (..),
    newContentFreelistingsprogramRequestreview,

    -- ** content.liasettings.custombatch
    ContentLiasettingsCustombatchResource,
    ContentLiasettingsCustombatch (..),
    newContentLiasettingsCustombatch,

    -- ** content.liasettings.get
    ContentLiasettingsGetResource,
    ContentLiasettingsGet (..),
    newContentLiasettingsGet,

    -- ** content.liasettings.getaccessiblegmbaccounts
    ContentLiasettingsGetaccessiblegmbaccountsResource,
    ContentLiasettingsGetaccessiblegmbaccounts (..),
    newContentLiasettingsGetaccessiblegmbaccounts,

    -- ** content.liasettings.list
    ContentLiasettingsListResource,
    ContentLiasettingsList (..),
    newContentLiasettingsList,

    -- ** content.liasettings.listposdataproviders
    ContentLiasettingsListposdataprovidersResource,
    ContentLiasettingsListposdataproviders (..),
    newContentLiasettingsListposdataproviders,

    -- ** content.liasettings.requestgmbaccess
    ContentLiasettingsRequestgmbaccessResource,
    ContentLiasettingsRequestgmbaccess (..),
    newContentLiasettingsRequestgmbaccess,

    -- ** content.liasettings.requestinventoryverification
    ContentLiasettingsRequestinventoryverificationResource,
    ContentLiasettingsRequestinventoryverification (..),
    newContentLiasettingsRequestinventoryverification,

    -- ** content.liasettings.setinventoryverificationcontact
    ContentLiasettingsSetinventoryverificationcontactResource,
    ContentLiasettingsSetinventoryverificationcontact (..),
    newContentLiasettingsSetinventoryverificationcontact,

    -- ** content.liasettings.setposdataprovider
    ContentLiasettingsSetposdataproviderResource,
    ContentLiasettingsSetposdataprovider (..),
    newContentLiasettingsSetposdataprovider,

    -- ** content.liasettings.update
    ContentLiasettingsUpdateResource,
    ContentLiasettingsUpdate (..),
    newContentLiasettingsUpdate,

    -- ** content.localinventory.custombatch
    ContentLocalinventoryCustombatchResource,
    ContentLocalinventoryCustombatch (..),
    newContentLocalinventoryCustombatch,

    -- ** content.localinventory.insert
    ContentLocalinventoryInsertResource,
    ContentLocalinventoryInsert (..),
    newContentLocalinventoryInsert,

    -- ** content.orderinvoices.createchargeinvoice
    ContentOrderinvoicesCreatechargeinvoiceResource,
    ContentOrderinvoicesCreatechargeinvoice (..),
    newContentOrderinvoicesCreatechargeinvoice,

    -- ** content.orderinvoices.createrefundinvoice
    ContentOrderinvoicesCreaterefundinvoiceResource,
    ContentOrderinvoicesCreaterefundinvoice (..),
    newContentOrderinvoicesCreaterefundinvoice,

    -- ** content.orderreports.listdisbursements
    ContentOrderreportsListdisbursementsResource,
    ContentOrderreportsListdisbursements (..),
    newContentOrderreportsListdisbursements,

    -- ** content.orderreports.listtransactions
    ContentOrderreportsListtransactionsResource,
    ContentOrderreportsListtransactions (..),
    newContentOrderreportsListtransactions,

    -- ** content.orderreturns.acknowledge
    ContentOrderreturnsAcknowledgeResource,
    ContentOrderreturnsAcknowledge (..),
    newContentOrderreturnsAcknowledge,

    -- ** content.orderreturns.createorderreturn
    ContentOrderreturnsCreateorderreturnResource,
    ContentOrderreturnsCreateorderreturn (..),
    newContentOrderreturnsCreateorderreturn,

    -- ** content.orderreturns.get
    ContentOrderreturnsGetResource,
    ContentOrderreturnsGet (..),
    newContentOrderreturnsGet,

    -- ** content.orderreturns.labels.create
    ContentOrderreturnsLabelsCreateResource,
    ContentOrderreturnsLabelsCreate (..),
    newContentOrderreturnsLabelsCreate,

    -- ** content.orderreturns.list
    ContentOrderreturnsListResource,
    ContentOrderreturnsList (..),
    newContentOrderreturnsList,

    -- ** content.orderreturns.process
    ContentOrderreturnsProcessResource,
    ContentOrderreturnsProcess (..),
    newContentOrderreturnsProcess,

    -- ** content.orders.acknowledge
    ContentOrdersAcknowledgeResource,
    ContentOrdersAcknowledge (..),
    newContentOrdersAcknowledge,

    -- ** content.orders.advancetestorder
    ContentOrdersAdvancetestorderResource,
    ContentOrdersAdvancetestorder (..),
    newContentOrdersAdvancetestorder,

    -- ** content.orders.cancel
    ContentOrdersCancelResource,
    ContentOrdersCancel (..),
    newContentOrdersCancel,

    -- ** content.orders.cancellineitem
    ContentOrdersCancellineitemResource,
    ContentOrdersCancellineitem (..),
    newContentOrdersCancellineitem,

    -- ** content.orders.canceltestorderbycustomer
    ContentOrdersCanceltestorderbycustomerResource,
    ContentOrdersCanceltestorderbycustomer (..),
    newContentOrdersCanceltestorderbycustomer,

    -- ** content.orders.captureOrder
    ContentOrdersCaptureOrderResource,
    ContentOrdersCaptureOrder (..),
    newContentOrdersCaptureOrder,

    -- ** content.orders.createtestorder
    ContentOrdersCreatetestorderResource,
    ContentOrdersCreatetestorder (..),
    newContentOrdersCreatetestorder,

    -- ** content.orders.createtestreturn
    ContentOrdersCreatetestreturnResource,
    ContentOrdersCreatetestreturn (..),
    newContentOrdersCreatetestreturn,

    -- ** content.orders.get
    ContentOrdersGetResource,
    ContentOrdersGet (..),
    newContentOrdersGet,

    -- ** content.orders.getbymerchantorderid
    ContentOrdersGetbymerchantorderidResource,
    ContentOrdersGetbymerchantorderid (..),
    newContentOrdersGetbymerchantorderid,

    -- ** content.orders.gettestordertemplate
    ContentOrdersGettestordertemplateResource,
    ContentOrdersGettestordertemplate (..),
    newContentOrdersGettestordertemplate,

    -- ** content.orders.instorerefundlineitem
    ContentOrdersInstorerefundlineitemResource,
    ContentOrdersInstorerefundlineitem (..),
    newContentOrdersInstorerefundlineitem,

    -- ** content.orders.list
    ContentOrdersListResource,
    ContentOrdersList (..),
    newContentOrdersList,

    -- ** content.orders.refunditem
    ContentOrdersRefunditemResource,
    ContentOrdersRefunditem (..),
    newContentOrdersRefunditem,

    -- ** content.orders.refundorder
    ContentOrdersRefundorderResource,
    ContentOrdersRefundorder (..),
    newContentOrdersRefundorder,

    -- ** content.orders.rejectreturnlineitem
    ContentOrdersRejectreturnlineitemResource,
    ContentOrdersRejectreturnlineitem (..),
    newContentOrdersRejectreturnlineitem,

    -- ** content.orders.returnrefundlineitem
    ContentOrdersReturnrefundlineitemResource,
    ContentOrdersReturnrefundlineitem (..),
    newContentOrdersReturnrefundlineitem,

    -- ** content.orders.setlineitemmetadata
    ContentOrdersSetlineitemmetadataResource,
    ContentOrdersSetlineitemmetadata (..),
    newContentOrdersSetlineitemmetadata,

    -- ** content.orders.shiplineitems
    ContentOrdersShiplineitemsResource,
    ContentOrdersShiplineitems (..),
    newContentOrdersShiplineitems,

    -- ** content.orders.updatelineitemshippingdetails
    ContentOrdersUpdatelineitemshippingdetailsResource,
    ContentOrdersUpdatelineitemshippingdetails (..),
    newContentOrdersUpdatelineitemshippingdetails,

    -- ** content.orders.updatemerchantorderid
    ContentOrdersUpdatemerchantorderidResource,
    ContentOrdersUpdatemerchantorderid (..),
    newContentOrdersUpdatemerchantorderid,

    -- ** content.orders.updateshipment
    ContentOrdersUpdateshipmentResource,
    ContentOrdersUpdateshipment (..),
    newContentOrdersUpdateshipment,

    -- ** content.ordertrackingsignals.create
    ContentOrdertrackingsignalsCreateResource,
    ContentOrdertrackingsignalsCreate (..),
    newContentOrdertrackingsignalsCreate,

    -- ** content.pos.custombatch
    ContentPosCustombatchResource,
    ContentPosCustombatch (..),
    newContentPosCustombatch,

    -- ** content.pos.delete
    ContentPosDeleteResource,
    ContentPosDelete (..),
    newContentPosDelete,

    -- ** content.pos.get
    ContentPosGetResource,
    ContentPosGet (..),
    newContentPosGet,

    -- ** content.pos.insert
    ContentPosInsertResource,
    ContentPosInsert (..),
    newContentPosInsert,

    -- ** content.pos.inventory
    ContentPosInventoryResource,
    ContentPosInventory (..),
    newContentPosInventory,

    -- ** content.pos.list
    ContentPosListResource,
    ContentPosList (..),
    newContentPosList,

    -- ** content.pos.sale
    ContentPosSaleResource,
    ContentPosSale (..),
    newContentPosSale,

    -- ** content.productdeliverytime.create
    ContentProductdeliverytimeCreateResource,
    ContentProductdeliverytimeCreate (..),
    newContentProductdeliverytimeCreate,

    -- ** content.productdeliverytime.delete
    ContentProductdeliverytimeDeleteResource,
    ContentProductdeliverytimeDelete (..),
    newContentProductdeliverytimeDelete,

    -- ** content.productdeliverytime.get
    ContentProductdeliverytimeGetResource,
    ContentProductdeliverytimeGet (..),
    newContentProductdeliverytimeGet,

    -- ** content.products.custombatch
    ContentProductsCustombatchResource,
    ContentProductsCustombatch (..),
    newContentProductsCustombatch,

    -- ** content.products.delete
    ContentProductsDeleteResource,
    ContentProductsDelete (..),
    newContentProductsDelete,

    -- ** content.products.get
    ContentProductsGetResource,
    ContentProductsGet (..),
    newContentProductsGet,

    -- ** content.products.insert
    ContentProductsInsertResource,
    ContentProductsInsert (..),
    newContentProductsInsert,

    -- ** content.products.list
    ContentProductsListResource,
    ContentProductsList (..),
    newContentProductsList,

    -- ** content.products.update
    ContentProductsUpdateResource,
    ContentProductsUpdate (..),
    newContentProductsUpdate,

    -- ** content.productstatuses.custombatch
    ContentProductstatusesCustombatchResource,
    ContentProductstatusesCustombatch (..),
    newContentProductstatusesCustombatch,

    -- ** content.productstatuses.get
    ContentProductstatusesGetResource,
    ContentProductstatusesGet (..),
    newContentProductstatusesGet,

    -- ** content.productstatuses.list
    ContentProductstatusesListResource,
    ContentProductstatusesList (..),
    newContentProductstatusesList,

    -- ** content.productstatuses.repricingreports.list
    ContentProductstatusesRepricingreportsListResource,
    ContentProductstatusesRepricingreportsList (..),
    newContentProductstatusesRepricingreportsList,

    -- ** content.promotions.create
    ContentPromotionsCreateResource,
    ContentPromotionsCreate (..),
    newContentPromotionsCreate,

    -- ** content.promotions.get
    ContentPromotionsGetResource,
    ContentPromotionsGet (..),
    newContentPromotionsGet,

    -- ** content.pubsubnotificationsettings.get
    ContentPubsubnotificationsettingsGetResource,
    ContentPubsubnotificationsettingsGet (..),
    newContentPubsubnotificationsettingsGet,

    -- ** content.pubsubnotificationsettings.update
    ContentPubsubnotificationsettingsUpdateResource,
    ContentPubsubnotificationsettingsUpdate (..),
    newContentPubsubnotificationsettingsUpdate,

    -- ** content.quotas.list
    ContentQuotasListResource,
    ContentQuotasList (..),
    newContentQuotasList,

    -- ** content.recommendations.generate
    ContentRecommendationsGenerateResource,
    ContentRecommendationsGenerate (..),
    newContentRecommendationsGenerate,

    -- ** content.recommendations.reportInteraction
    ContentRecommendationsReportInteractionResource,
    ContentRecommendationsReportInteraction (..),
    newContentRecommendationsReportInteraction,

    -- ** content.regionalinventory.custombatch
    ContentRegionalinventoryCustombatchResource,
    ContentRegionalinventoryCustombatch (..),
    newContentRegionalinventoryCustombatch,

    -- ** content.regionalinventory.insert
    ContentRegionalinventoryInsertResource,
    ContentRegionalinventoryInsert (..),
    newContentRegionalinventoryInsert,

    -- ** content.regions.create
    ContentRegionsCreateResource,
    ContentRegionsCreate (..),
    newContentRegionsCreate,

    -- ** content.regions.delete
    ContentRegionsDeleteResource,
    ContentRegionsDelete (..),
    newContentRegionsDelete,

    -- ** content.regions.get
    ContentRegionsGetResource,
    ContentRegionsGet (..),
    newContentRegionsGet,

    -- ** content.regions.list
    ContentRegionsListResource,
    ContentRegionsList (..),
    newContentRegionsList,

    -- ** content.regions.patch
    ContentRegionsPatchResource,
    ContentRegionsPatch (..),
    newContentRegionsPatch,

    -- ** content.reports.search
    ContentReportsSearchResource,
    ContentReportsSearch (..),
    newContentReportsSearch,

    -- ** content.repricingrules.create
    ContentRepricingrulesCreateResource,
    ContentRepricingrulesCreate (..),
    newContentRepricingrulesCreate,

    -- ** content.repricingrules.delete
    ContentRepricingrulesDeleteResource,
    ContentRepricingrulesDelete (..),
    newContentRepricingrulesDelete,

    -- ** content.repricingrules.get
    ContentRepricingrulesGetResource,
    ContentRepricingrulesGet (..),
    newContentRepricingrulesGet,

    -- ** content.repricingrules.list
    ContentRepricingrulesListResource,
    ContentRepricingrulesList (..),
    newContentRepricingrulesList,

    -- ** content.repricingrules.patch
    ContentRepricingrulesPatchResource,
    ContentRepricingrulesPatch (..),
    newContentRepricingrulesPatch,

    -- ** content.repricingrules.repricingreports.list
    ContentRepricingrulesRepricingreportsListResource,
    ContentRepricingrulesRepricingreportsList (..),
    newContentRepricingrulesRepricingreportsList,

    -- ** content.returnaddress.custombatch
    ContentReturnaddressCustombatchResource,
    ContentReturnaddressCustombatch (..),
    newContentReturnaddressCustombatch,

    -- ** content.returnaddress.delete
    ContentReturnaddressDeleteResource,
    ContentReturnaddressDelete (..),
    newContentReturnaddressDelete,

    -- ** content.returnaddress.get
    ContentReturnaddressGetResource,
    ContentReturnaddressGet (..),
    newContentReturnaddressGet,

    -- ** content.returnaddress.insert
    ContentReturnaddressInsertResource,
    ContentReturnaddressInsert (..),
    newContentReturnaddressInsert,

    -- ** content.returnaddress.list
    ContentReturnaddressListResource,
    ContentReturnaddressList (..),
    newContentReturnaddressList,

    -- ** content.returnpolicy.custombatch
    ContentReturnpolicyCustombatchResource,
    ContentReturnpolicyCustombatch (..),
    newContentReturnpolicyCustombatch,

    -- ** content.returnpolicy.delete
    ContentReturnpolicyDeleteResource,
    ContentReturnpolicyDelete (..),
    newContentReturnpolicyDelete,

    -- ** content.returnpolicy.get
    ContentReturnpolicyGetResource,
    ContentReturnpolicyGet (..),
    newContentReturnpolicyGet,

    -- ** content.returnpolicy.insert
    ContentReturnpolicyInsertResource,
    ContentReturnpolicyInsert (..),
    newContentReturnpolicyInsert,

    -- ** content.returnpolicy.list
    ContentReturnpolicyListResource,
    ContentReturnpolicyList (..),
    newContentReturnpolicyList,

    -- ** content.returnpolicyonline.create
    ContentReturnpolicyonlineCreateResource,
    ContentReturnpolicyonlineCreate (..),
    newContentReturnpolicyonlineCreate,

    -- ** content.returnpolicyonline.delete
    ContentReturnpolicyonlineDeleteResource,
    ContentReturnpolicyonlineDelete (..),
    newContentReturnpolicyonlineDelete,

    -- ** content.returnpolicyonline.get
    ContentReturnpolicyonlineGetResource,
    ContentReturnpolicyonlineGet (..),
    newContentReturnpolicyonlineGet,

    -- ** content.returnpolicyonline.list
    ContentReturnpolicyonlineListResource,
    ContentReturnpolicyonlineList (..),
    newContentReturnpolicyonlineList,

    -- ** content.returnpolicyonline.patch
    ContentReturnpolicyonlinePatchResource,
    ContentReturnpolicyonlinePatch (..),
    newContentReturnpolicyonlinePatch,

    -- ** content.settlementreports.get
    ContentSettlementreportsGetResource,
    ContentSettlementreportsGet (..),
    newContentSettlementreportsGet,

    -- ** content.settlementreports.list
    ContentSettlementreportsListResource,
    ContentSettlementreportsList (..),
    newContentSettlementreportsList,

    -- ** content.settlementtransactions.list
    ContentSettlementtransactionsListResource,
    ContentSettlementtransactionsList (..),
    newContentSettlementtransactionsList,

    -- ** content.shippingsettings.custombatch
    ContentShippingsettingsCustombatchResource,
    ContentShippingsettingsCustombatch (..),
    newContentShippingsettingsCustombatch,

    -- ** content.shippingsettings.get
    ContentShippingsettingsGetResource,
    ContentShippingsettingsGet (..),
    newContentShippingsettingsGet,

    -- ** content.shippingsettings.getsupportedcarriers
    ContentShippingsettingsGetsupportedcarriersResource,
    ContentShippingsettingsGetsupportedcarriers (..),
    newContentShippingsettingsGetsupportedcarriers,

    -- ** content.shippingsettings.getsupportedholidays
    ContentShippingsettingsGetsupportedholidaysResource,
    ContentShippingsettingsGetsupportedholidays (..),
    newContentShippingsettingsGetsupportedholidays,

    -- ** content.shippingsettings.getsupportedpickupservices
    ContentShippingsettingsGetsupportedpickupservicesResource,
    ContentShippingsettingsGetsupportedpickupservices (..),
    newContentShippingsettingsGetsupportedpickupservices,

    -- ** content.shippingsettings.list
    ContentShippingsettingsListResource,
    ContentShippingsettingsList (..),
    newContentShippingsettingsList,

    -- ** content.shippingsettings.update
    ContentShippingsettingsUpdateResource,
    ContentShippingsettingsUpdate (..),
    newContentShippingsettingsUpdate,

    -- ** content.shoppingadsprogram.get
    ContentShoppingadsprogramGetResource,
    ContentShoppingadsprogramGet (..),
    newContentShoppingadsprogramGet,

    -- ** content.shoppingadsprogram.requestreview
    ContentShoppingadsprogramRequestreviewResource,
    ContentShoppingadsprogramRequestreview (..),
    newContentShoppingadsprogramRequestreview,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Account
    Account (..),
    newAccount,

    -- ** AccountAddress
    AccountAddress (..),
    newAccountAddress,

    -- ** AccountAdsLink
    AccountAdsLink (..),
    newAccountAdsLink,

    -- ** AccountAutomaticImprovements
    AccountAutomaticImprovements (..),
    newAccountAutomaticImprovements,

    -- ** AccountBusinessInformation
    AccountBusinessInformation (..),
    newAccountBusinessInformation,

    -- ** AccountConversionSettings
    AccountConversionSettings (..),
    newAccountConversionSettings,

    -- ** AccountCredentials
    AccountCredentials (..),
    newAccountCredentials,

    -- ** AccountCredentials_Purpose
    AccountCredentials_Purpose (..),

    -- ** AccountCustomerService
    AccountCustomerService (..),
    newAccountCustomerService,

    -- ** AccountGoogleMyBusinessLink
    AccountGoogleMyBusinessLink (..),
    newAccountGoogleMyBusinessLink,

    -- ** AccountIdentifier
    AccountIdentifier (..),
    newAccountIdentifier,

    -- ** AccountImageImprovements
    AccountImageImprovements (..),
    newAccountImageImprovements,

    -- ** AccountImageImprovementsSettings
    AccountImageImprovementsSettings (..),
    newAccountImageImprovementsSettings,

    -- ** AccountItemUpdates
    AccountItemUpdates (..),
    newAccountItemUpdates,

    -- ** AccountItemUpdatesSettings
    AccountItemUpdatesSettings (..),
    newAccountItemUpdatesSettings,

    -- ** AccountLabel
    AccountLabel (..),
    newAccountLabel,

    -- ** AccountLabel_LabelType
    AccountLabel_LabelType (..),

    -- ** AccountReturnCarrier
    AccountReturnCarrier (..),
    newAccountReturnCarrier,

    -- ** AccountReturnCarrier_CarrierCode
    AccountReturnCarrier_CarrierCode (..),

    -- ** AccountShippingImprovements
    AccountShippingImprovements (..),
    newAccountShippingImprovements,

    -- ** AccountStatus
    AccountStatus (..),
    newAccountStatus,

    -- ** AccountStatusAccountLevelIssue
    AccountStatusAccountLevelIssue (..),
    newAccountStatusAccountLevelIssue,

    -- ** AccountStatusItemLevelIssue
    AccountStatusItemLevelIssue (..),
    newAccountStatusItemLevelIssue,

    -- ** AccountStatusProducts
    AccountStatusProducts (..),
    newAccountStatusProducts,

    -- ** AccountStatusStatistics
    AccountStatusStatistics (..),
    newAccountStatusStatistics,

    -- ** AccountTax
    AccountTax (..),
    newAccountTax,

    -- ** AccountTaxTaxRule
    AccountTaxTaxRule (..),
    newAccountTaxTaxRule,

    -- ** AccountUser
    AccountUser (..),
    newAccountUser,

    -- ** AccountYouTubeChannelLink
    AccountYouTubeChannelLink (..),
    newAccountYouTubeChannelLink,

    -- ** AccountsAuthInfoResponse
    AccountsAuthInfoResponse (..),
    newAccountsAuthInfoResponse,

    -- ** AccountsClaimWebsiteResponse
    AccountsClaimWebsiteResponse (..),
    newAccountsClaimWebsiteResponse,

    -- ** AccountsCustomBatchRequest
    AccountsCustomBatchRequest (..),
    newAccountsCustomBatchRequest,

    -- ** AccountsCustomBatchRequestEntry
    AccountsCustomBatchRequestEntry (..),
    newAccountsCustomBatchRequestEntry,

    -- ** AccountsCustomBatchRequestEntryLinkRequest
    AccountsCustomBatchRequestEntryLinkRequest (..),
    newAccountsCustomBatchRequestEntryLinkRequest,

    -- ** AccountsCustomBatchResponse
    AccountsCustomBatchResponse (..),
    newAccountsCustomBatchResponse,

    -- ** AccountsCustomBatchResponseEntry
    AccountsCustomBatchResponseEntry (..),
    newAccountsCustomBatchResponseEntry,

    -- ** AccountsLinkRequest
    AccountsLinkRequest (..),
    newAccountsLinkRequest,

    -- ** AccountsLinkResponse
    AccountsLinkResponse (..),
    newAccountsLinkResponse,

    -- ** AccountsListLinksResponse
    AccountsListLinksResponse (..),
    newAccountsListLinksResponse,

    -- ** AccountsListResponse
    AccountsListResponse (..),
    newAccountsListResponse,

    -- ** AccountsUpdateLabelsRequest
    AccountsUpdateLabelsRequest (..),
    newAccountsUpdateLabelsRequest,

    -- ** AccountsUpdateLabelsResponse
    AccountsUpdateLabelsResponse (..),
    newAccountsUpdateLabelsResponse,

    -- ** AccountstatusesCustomBatchRequest
    AccountstatusesCustomBatchRequest (..),
    newAccountstatusesCustomBatchRequest,

    -- ** AccountstatusesCustomBatchRequestEntry
    AccountstatusesCustomBatchRequestEntry (..),
    newAccountstatusesCustomBatchRequestEntry,

    -- ** AccountstatusesCustomBatchResponse
    AccountstatusesCustomBatchResponse (..),
    newAccountstatusesCustomBatchResponse,

    -- ** AccountstatusesCustomBatchResponseEntry
    AccountstatusesCustomBatchResponseEntry (..),
    newAccountstatusesCustomBatchResponseEntry,

    -- ** AccountstatusesListResponse
    AccountstatusesListResponse (..),
    newAccountstatusesListResponse,

    -- ** AccounttaxCustomBatchRequest
    AccounttaxCustomBatchRequest (..),
    newAccounttaxCustomBatchRequest,

    -- ** AccounttaxCustomBatchRequestEntry
    AccounttaxCustomBatchRequestEntry (..),
    newAccounttaxCustomBatchRequestEntry,

    -- ** AccounttaxCustomBatchResponse
    AccounttaxCustomBatchResponse (..),
    newAccounttaxCustomBatchResponse,

    -- ** AccounttaxCustomBatchResponseEntry
    AccounttaxCustomBatchResponseEntry (..),
    newAccounttaxCustomBatchResponseEntry,

    -- ** AccounttaxListResponse
    AccounttaxListResponse (..),
    newAccounttaxListResponse,

    -- ** ActivateBuyOnGoogleProgramRequest
    ActivateBuyOnGoogleProgramRequest (..),
    newActivateBuyOnGoogleProgramRequest,

    -- ** Address
    Address (..),
    newAddress,

    -- ** Amount
    Amount (..),
    newAmount,

    -- ** AttributionSettings
    AttributionSettings (..),
    newAttributionSettings,

    -- ** AttributionSettings_AttributionModel
    AttributionSettings_AttributionModel (..),

    -- ** AttributionSettingsConversionType
    AttributionSettingsConversionType (..),
    newAttributionSettingsConversionType,

    -- ** BestSellers
    BestSellers (..),
    newBestSellers,

    -- ** BestSellers_PreviousRelativeDemand
    BestSellers_PreviousRelativeDemand (..),

    -- ** BestSellers_RelativeDemand
    BestSellers_RelativeDemand (..),

    -- ** BestSellers_RelativeDemandChange
    BestSellers_RelativeDemandChange (..),

    -- ** BestSellers_ReportGranularity
    BestSellers_ReportGranularity (..),

    -- ** Brand
    Brand (..),
    newBrand,

    -- ** BusinessDayConfig
    BusinessDayConfig (..),
    newBusinessDayConfig,

    -- ** BuyOnGoogleProgramStatus
    BuyOnGoogleProgramStatus (..),
    newBuyOnGoogleProgramStatus,

    -- ** BuyOnGoogleProgramStatus_BusinessModelItem
    BuyOnGoogleProgramStatus_BusinessModelItem (..),

    -- ** BuyOnGoogleProgramStatus_OnlineSalesChannel
    BuyOnGoogleProgramStatus_OnlineSalesChannel (..),

    -- ** BuyOnGoogleProgramStatus_ParticipationStage
    BuyOnGoogleProgramStatus_ParticipationStage (..),

    -- ** CaptureOrderRequest
    CaptureOrderRequest (..),
    newCaptureOrderRequest,

    -- ** CaptureOrderResponse
    CaptureOrderResponse (..),
    newCaptureOrderResponse,

    -- ** CaptureOrderResponse_ExecutionStatus
    CaptureOrderResponse_ExecutionStatus (..),

    -- ** CarrierRate
    CarrierRate (..),
    newCarrierRate,

    -- ** CarriersCarrier
    CarriersCarrier (..),
    newCarriersCarrier,

    -- ** Collection
    Collection (..),
    newCollection,

    -- ** CollectionFeaturedProduct
    CollectionFeaturedProduct (..),
    newCollectionFeaturedProduct,

    -- ** CollectionStatus
    CollectionStatus (..),
    newCollectionStatus,

    -- ** CollectionStatusDestinationStatus
    CollectionStatusDestinationStatus (..),
    newCollectionStatusDestinationStatus,

    -- ** CollectionStatusItemLevelIssue
    CollectionStatusItemLevelIssue (..),
    newCollectionStatusItemLevelIssue,

    -- ** ConversionSource
    ConversionSource (..),
    newConversionSource,

    -- ** ConversionSource_State
    ConversionSource_State (..),

    -- ** Css
    Css (..),
    newCss,

    -- ** CustomAttribute
    CustomAttribute (..),
    newCustomAttribute,

    -- ** CustomerReturnReason
    CustomerReturnReason (..),
    newCustomerReturnReason,

    -- ** CutoffTime
    CutoffTime (..),
    newCutoffTime,

    -- ** Datafeed
    Datafeed (..),
    newDatafeed,

    -- ** DatafeedFetchSchedule
    DatafeedFetchSchedule (..),
    newDatafeedFetchSchedule,

    -- ** DatafeedFormat
    DatafeedFormat (..),
    newDatafeedFormat,

    -- ** DatafeedStatus
    DatafeedStatus (..),
    newDatafeedStatus,

    -- ** DatafeedStatusError
    DatafeedStatusError (..),
    newDatafeedStatusError,

    -- ** DatafeedStatusExample
    DatafeedStatusExample (..),
    newDatafeedStatusExample,

    -- ** DatafeedTarget
    DatafeedTarget (..),
    newDatafeedTarget,

    -- ** DatafeedsCustomBatchRequest
    DatafeedsCustomBatchRequest (..),
    newDatafeedsCustomBatchRequest,

    -- ** DatafeedsCustomBatchRequestEntry
    DatafeedsCustomBatchRequestEntry (..),
    newDatafeedsCustomBatchRequestEntry,

    -- ** DatafeedsCustomBatchResponse
    DatafeedsCustomBatchResponse (..),
    newDatafeedsCustomBatchResponse,

    -- ** DatafeedsCustomBatchResponseEntry
    DatafeedsCustomBatchResponseEntry (..),
    newDatafeedsCustomBatchResponseEntry,

    -- ** DatafeedsFetchNowResponse
    DatafeedsFetchNowResponse (..),
    newDatafeedsFetchNowResponse,

    -- ** DatafeedsListResponse
    DatafeedsListResponse (..),
    newDatafeedsListResponse,

    -- ** DatafeedstatusesCustomBatchRequest
    DatafeedstatusesCustomBatchRequest (..),
    newDatafeedstatusesCustomBatchRequest,

    -- ** DatafeedstatusesCustomBatchRequestEntry
    DatafeedstatusesCustomBatchRequestEntry (..),
    newDatafeedstatusesCustomBatchRequestEntry,

    -- ** DatafeedstatusesCustomBatchResponse
    DatafeedstatusesCustomBatchResponse (..),
    newDatafeedstatusesCustomBatchResponse,

    -- ** DatafeedstatusesCustomBatchResponseEntry
    DatafeedstatusesCustomBatchResponseEntry (..),
    newDatafeedstatusesCustomBatchResponseEntry,

    -- ** DatafeedstatusesListResponse
    DatafeedstatusesListResponse (..),
    newDatafeedstatusesListResponse,

    -- ** Date
    Date (..),
    newDate,

    -- ** DateTime'
    DateTime' (..),
    newDateTime,

    -- ** DeliveryArea
    DeliveryArea (..),
    newDeliveryArea,

    -- ** DeliveryAreaPostalCodeRange
    DeliveryAreaPostalCodeRange (..),
    newDeliveryAreaPostalCodeRange,

    -- ** DeliveryTime
    DeliveryTime (..),
    newDeliveryTime,

    -- ** ECommercePlatformLinkInfo
    ECommercePlatformLinkInfo (..),
    newECommercePlatformLinkInfo,

    -- ** Error'
    Error' (..),
    newError,

    -- ** Errors
    Errors (..),
    newErrors,

    -- ** FreeListingsProgramStatus
    FreeListingsProgramStatus (..),
    newFreeListingsProgramStatus,

    -- ** FreeListingsProgramStatus_GlobalState
    FreeListingsProgramStatus_GlobalState (..),

    -- ** FreeListingsProgramStatusRegionStatus
    FreeListingsProgramStatusRegionStatus (..),
    newFreeListingsProgramStatusRegionStatus,

    -- ** FreeListingsProgramStatusRegionStatus_EligibilityStatus
    FreeListingsProgramStatusRegionStatus_EligibilityStatus (..),

    -- ** FreeListingsProgramStatusRegionStatus_ReviewEligibilityStatus
    FreeListingsProgramStatusRegionStatus_ReviewEligibilityStatus (..),

    -- ** FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason
    FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason (..),

    -- ** FreeListingsProgramStatusReviewIneligibilityReasonDetails
    FreeListingsProgramStatusReviewIneligibilityReasonDetails (..),
    newFreeListingsProgramStatusReviewIneligibilityReasonDetails,

    -- ** GenerateRecommendationsResponse
    GenerateRecommendationsResponse (..),
    newGenerateRecommendationsResponse,

    -- ** GmbAccounts
    GmbAccounts (..),
    newGmbAccounts,

    -- ** GmbAccountsGmbAccount
    GmbAccountsGmbAccount (..),
    newGmbAccountsGmbAccount,

    -- ** GoogleAnalyticsLink
    GoogleAnalyticsLink (..),
    newGoogleAnalyticsLink,

    -- ** Headers
    Headers (..),
    newHeaders,

    -- ** HolidayCutoff
    HolidayCutoff (..),
    newHolidayCutoff,

    -- ** HolidaysHoliday
    HolidaysHoliday (..),
    newHolidaysHoliday,

    -- ** InapplicabilityDetails
    InapplicabilityDetails (..),
    newInapplicabilityDetails,

    -- ** InapplicabilityDetails_InapplicableReason
    InapplicabilityDetails_InapplicableReason (..),

    -- ** Installment
    Installment (..),
    newInstallment,

    -- ** InvoiceSummary
    InvoiceSummary (..),
    newInvoiceSummary,

    -- ** InvoiceSummaryAdditionalChargeSummary
    InvoiceSummaryAdditionalChargeSummary (..),
    newInvoiceSummaryAdditionalChargeSummary,

    -- ** LabelIds
    LabelIds (..),
    newLabelIds,

    -- ** LiaAboutPageSettings
    LiaAboutPageSettings (..),
    newLiaAboutPageSettings,

    -- ** LiaCountrySettings
    LiaCountrySettings (..),
    newLiaCountrySettings,

    -- ** LiaInventorySettings
    LiaInventorySettings (..),
    newLiaInventorySettings,

    -- ** LiaOnDisplayToOrderSettings
    LiaOnDisplayToOrderSettings (..),
    newLiaOnDisplayToOrderSettings,

    -- ** LiaPosDataProvider
    LiaPosDataProvider (..),
    newLiaPosDataProvider,

    -- ** LiaSettings
    LiaSettings (..),
    newLiaSettings,

    -- ** LiasettingsCustomBatchRequest
    LiasettingsCustomBatchRequest (..),
    newLiasettingsCustomBatchRequest,

    -- ** LiasettingsCustomBatchRequestEntry
    LiasettingsCustomBatchRequestEntry (..),
    newLiasettingsCustomBatchRequestEntry,

    -- ** LiasettingsCustomBatchResponse
    LiasettingsCustomBatchResponse (..),
    newLiasettingsCustomBatchResponse,

    -- ** LiasettingsCustomBatchResponseEntry
    LiasettingsCustomBatchResponseEntry (..),
    newLiasettingsCustomBatchResponseEntry,

    -- ** LiasettingsGetAccessibleGmbAccountsResponse
    LiasettingsGetAccessibleGmbAccountsResponse (..),
    newLiasettingsGetAccessibleGmbAccountsResponse,

    -- ** LiasettingsListPosDataProvidersResponse
    LiasettingsListPosDataProvidersResponse (..),
    newLiasettingsListPosDataProvidersResponse,

    -- ** LiasettingsListResponse
    LiasettingsListResponse (..),
    newLiasettingsListResponse,

    -- ** LiasettingsRequestGmbAccessResponse
    LiasettingsRequestGmbAccessResponse (..),
    newLiasettingsRequestGmbAccessResponse,

    -- ** LiasettingsRequestInventoryVerificationResponse
    LiasettingsRequestInventoryVerificationResponse (..),
    newLiasettingsRequestInventoryVerificationResponse,

    -- ** LiasettingsSetInventoryVerificationContactResponse
    LiasettingsSetInventoryVerificationContactResponse (..),
    newLiasettingsSetInventoryVerificationContactResponse,

    -- ** LiasettingsSetPosDataProviderResponse
    LiasettingsSetPosDataProviderResponse (..),
    newLiasettingsSetPosDataProviderResponse,

    -- ** LinkService
    LinkService (..),
    newLinkService,

    -- ** LinkedAccount
    LinkedAccount (..),
    newLinkedAccount,

    -- ** ListAccountLabelsResponse
    ListAccountLabelsResponse (..),
    newListAccountLabelsResponse,

    -- ** ListAccountReturnCarrierResponse
    ListAccountReturnCarrierResponse (..),
    newListAccountReturnCarrierResponse,

    -- ** ListCollectionStatusesResponse
    ListCollectionStatusesResponse (..),
    newListCollectionStatusesResponse,

    -- ** ListCollectionsResponse
    ListCollectionsResponse (..),
    newListCollectionsResponse,

    -- ** ListConversionSourcesResponse
    ListConversionSourcesResponse (..),
    newListConversionSourcesResponse,

    -- ** ListCssesResponse
    ListCssesResponse (..),
    newListCssesResponse,

    -- ** ListMethodQuotasResponse
    ListMethodQuotasResponse (..),
    newListMethodQuotasResponse,

    -- ** ListRegionsResponse
    ListRegionsResponse (..),
    newListRegionsResponse,

    -- ** ListRepricingProductReportsResponse
    ListRepricingProductReportsResponse (..),
    newListRepricingProductReportsResponse,

    -- ** ListRepricingRuleReportsResponse
    ListRepricingRuleReportsResponse (..),
    newListRepricingRuleReportsResponse,

    -- ** ListRepricingRulesResponse
    ListRepricingRulesResponse (..),
    newListRepricingRulesResponse,

    -- ** ListReturnPolicyOnlineResponse
    ListReturnPolicyOnlineResponse (..),
    newListReturnPolicyOnlineResponse,

    -- ** LocalInventory
    LocalInventory (..),
    newLocalInventory,

    -- ** LocalinventoryCustomBatchRequest
    LocalinventoryCustomBatchRequest (..),
    newLocalinventoryCustomBatchRequest,

    -- ** LocalinventoryCustomBatchRequestEntry
    LocalinventoryCustomBatchRequestEntry (..),
    newLocalinventoryCustomBatchRequestEntry,

    -- ** LocalinventoryCustomBatchResponse
    LocalinventoryCustomBatchResponse (..),
    newLocalinventoryCustomBatchResponse,

    -- ** LocalinventoryCustomBatchResponseEntry
    LocalinventoryCustomBatchResponseEntry (..),
    newLocalinventoryCustomBatchResponseEntry,

    -- ** LocationIdSet
    LocationIdSet (..),
    newLocationIdSet,

    -- ** LoyaltyPoints
    LoyaltyPoints (..),
    newLoyaltyPoints,

    -- ** MerchantCenterDestination
    MerchantCenterDestination (..),
    newMerchantCenterDestination,

    -- ** MerchantOrderReturn
    MerchantOrderReturn (..),
    newMerchantOrderReturn,

    -- ** MerchantOrderReturnItem
    MerchantOrderReturnItem (..),
    newMerchantOrderReturnItem,

    -- ** MerchantRejectionReason
    MerchantRejectionReason (..),
    newMerchantRejectionReason,

    -- ** MethodQuota
    MethodQuota (..),
    newMethodQuota,

    -- ** Metrics
    Metrics (..),
    newMetrics,

    -- ** MinimumOrderValueTable
    MinimumOrderValueTable (..),
    newMinimumOrderValueTable,

    -- ** MinimumOrderValueTableStoreCodeSetWithMov
    MinimumOrderValueTableStoreCodeSetWithMov (..),
    newMinimumOrderValueTableStoreCodeSetWithMov,

    -- ** MonetaryAmount
    MonetaryAmount (..),
    newMonetaryAmount,

    -- ** OnboardBuyOnGoogleProgramRequest
    OnboardBuyOnGoogleProgramRequest (..),
    newOnboardBuyOnGoogleProgramRequest,

    -- ** Order
    Order (..),
    newOrder,

    -- ** OrderAddress
    OrderAddress (..),
    newOrderAddress,

    -- ** OrderCancellation
    OrderCancellation (..),
    newOrderCancellation,

    -- ** OrderCustomer
    OrderCustomer (..),
    newOrderCustomer,

    -- ** OrderCustomerLoyaltyInfo
    OrderCustomerLoyaltyInfo (..),
    newOrderCustomerLoyaltyInfo,

    -- ** OrderCustomerMarketingRightsInfo
    OrderCustomerMarketingRightsInfo (..),
    newOrderCustomerMarketingRightsInfo,

    -- ** OrderDeliveryDetails
    OrderDeliveryDetails (..),
    newOrderDeliveryDetails,

    -- ** OrderLineItem
    OrderLineItem (..),
    newOrderLineItem,

    -- ** OrderLineItemAdjustment
    OrderLineItemAdjustment (..),
    newOrderLineItemAdjustment,

    -- ** OrderLineItemProduct
    OrderLineItemProduct (..),
    newOrderLineItemProduct,

    -- ** OrderLineItemProductFee
    OrderLineItemProductFee (..),
    newOrderLineItemProductFee,

    -- ** OrderLineItemProductVariantAttribute
    OrderLineItemProductVariantAttribute (..),
    newOrderLineItemProductVariantAttribute,

    -- ** OrderLineItemReturnInfo
    OrderLineItemReturnInfo (..),
    newOrderLineItemReturnInfo,

    -- ** OrderLineItemShippingDetails
    OrderLineItemShippingDetails (..),
    newOrderLineItemShippingDetails,

    -- ** OrderLineItemShippingDetailsMethod
    OrderLineItemShippingDetailsMethod (..),
    newOrderLineItemShippingDetailsMethod,

    -- ** OrderMerchantProvidedAnnotation
    OrderMerchantProvidedAnnotation (..),
    newOrderMerchantProvidedAnnotation,

    -- ** OrderOrderAnnotation
    OrderOrderAnnotation (..),
    newOrderOrderAnnotation,

    -- ** OrderPickupDetails
    OrderPickupDetails (..),
    newOrderPickupDetails,

    -- ** OrderPickupDetailsCollector
    OrderPickupDetailsCollector (..),
    newOrderPickupDetailsCollector,

    -- ** OrderPromotion
    OrderPromotion (..),
    newOrderPromotion,

    -- ** OrderPromotionItem
    OrderPromotionItem (..),
    newOrderPromotionItem,

    -- ** OrderRefund
    OrderRefund (..),
    newOrderRefund,

    -- ** OrderReportDisbursement
    OrderReportDisbursement (..),
    newOrderReportDisbursement,

    -- ** OrderReportTransaction
    OrderReportTransaction (..),
    newOrderReportTransaction,

    -- ** OrderReturn
    OrderReturn (..),
    newOrderReturn,

    -- ** OrderShipment
    OrderShipment (..),
    newOrderShipment,

    -- ** OrderShipmentLineItemShipment
    OrderShipmentLineItemShipment (..),
    newOrderShipmentLineItemShipment,

    -- ** OrderShipmentScheduledDeliveryDetails
    OrderShipmentScheduledDeliveryDetails (..),
    newOrderShipmentScheduledDeliveryDetails,

    -- ** OrderTrackingSignal
    OrderTrackingSignal (..),
    newOrderTrackingSignal,

    -- ** OrderTrackingSignalLineItemDetails
    OrderTrackingSignalLineItemDetails (..),
    newOrderTrackingSignalLineItemDetails,

    -- ** OrderTrackingSignalShipmentLineItemMapping
    OrderTrackingSignalShipmentLineItemMapping (..),
    newOrderTrackingSignalShipmentLineItemMapping,

    -- ** OrderTrackingSignalShippingInfo
    OrderTrackingSignalShippingInfo (..),
    newOrderTrackingSignalShippingInfo,

    -- ** OrderTrackingSignalShippingInfo_ShippingStatus
    OrderTrackingSignalShippingInfo_ShippingStatus (..),

    -- ** OrderinvoicesCreateChargeInvoiceRequest
    OrderinvoicesCreateChargeInvoiceRequest (..),
    newOrderinvoicesCreateChargeInvoiceRequest,

    -- ** OrderinvoicesCreateChargeInvoiceResponse
    OrderinvoicesCreateChargeInvoiceResponse (..),
    newOrderinvoicesCreateChargeInvoiceResponse,

    -- ** OrderinvoicesCreateRefundInvoiceRequest
    OrderinvoicesCreateRefundInvoiceRequest (..),
    newOrderinvoicesCreateRefundInvoiceRequest,

    -- ** OrderinvoicesCreateRefundInvoiceResponse
    OrderinvoicesCreateRefundInvoiceResponse (..),
    newOrderinvoicesCreateRefundInvoiceResponse,

    -- ** OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
    OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption (..),
    newOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption,

    -- ** OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
    OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption (..),
    newOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption,

    -- ** OrderreportsListDisbursementsResponse
    OrderreportsListDisbursementsResponse (..),
    newOrderreportsListDisbursementsResponse,

    -- ** OrderreportsListTransactionsResponse
    OrderreportsListTransactionsResponse (..),
    newOrderreportsListTransactionsResponse,

    -- ** OrderreturnsAcknowledgeRequest
    OrderreturnsAcknowledgeRequest (..),
    newOrderreturnsAcknowledgeRequest,

    -- ** OrderreturnsAcknowledgeResponse
    OrderreturnsAcknowledgeResponse (..),
    newOrderreturnsAcknowledgeResponse,

    -- ** OrderreturnsCreateOrderReturnRequest
    OrderreturnsCreateOrderReturnRequest (..),
    newOrderreturnsCreateOrderReturnRequest,

    -- ** OrderreturnsCreateOrderReturnResponse
    OrderreturnsCreateOrderReturnResponse (..),
    newOrderreturnsCreateOrderReturnResponse,

    -- ** OrderreturnsLineItem
    OrderreturnsLineItem (..),
    newOrderreturnsLineItem,

    -- ** OrderreturnsListResponse
    OrderreturnsListResponse (..),
    newOrderreturnsListResponse,

    -- ** OrderreturnsPartialRefund
    OrderreturnsPartialRefund (..),
    newOrderreturnsPartialRefund,

    -- ** OrderreturnsProcessRequest
    OrderreturnsProcessRequest (..),
    newOrderreturnsProcessRequest,

    -- ** OrderreturnsProcessResponse
    OrderreturnsProcessResponse (..),
    newOrderreturnsProcessResponse,

    -- ** OrderreturnsRefundOperation
    OrderreturnsRefundOperation (..),
    newOrderreturnsRefundOperation,

    -- ** OrderreturnsRejectOperation
    OrderreturnsRejectOperation (..),
    newOrderreturnsRejectOperation,

    -- ** OrderreturnsReturnItem
    OrderreturnsReturnItem (..),
    newOrderreturnsReturnItem,

    -- ** OrdersAcknowledgeRequest
    OrdersAcknowledgeRequest (..),
    newOrdersAcknowledgeRequest,

    -- ** OrdersAcknowledgeResponse
    OrdersAcknowledgeResponse (..),
    newOrdersAcknowledgeResponse,

    -- ** OrdersAdvanceTestOrderResponse
    OrdersAdvanceTestOrderResponse (..),
    newOrdersAdvanceTestOrderResponse,

    -- ** OrdersCancelLineItemRequest
    OrdersCancelLineItemRequest (..),
    newOrdersCancelLineItemRequest,

    -- ** OrdersCancelLineItemResponse
    OrdersCancelLineItemResponse (..),
    newOrdersCancelLineItemResponse,

    -- ** OrdersCancelRequest
    OrdersCancelRequest (..),
    newOrdersCancelRequest,

    -- ** OrdersCancelResponse
    OrdersCancelResponse (..),
    newOrdersCancelResponse,

    -- ** OrdersCancelTestOrderByCustomerRequest
    OrdersCancelTestOrderByCustomerRequest (..),
    newOrdersCancelTestOrderByCustomerRequest,

    -- ** OrdersCancelTestOrderByCustomerResponse
    OrdersCancelTestOrderByCustomerResponse (..),
    newOrdersCancelTestOrderByCustomerResponse,

    -- ** OrdersCreateTestOrderRequest
    OrdersCreateTestOrderRequest (..),
    newOrdersCreateTestOrderRequest,

    -- ** OrdersCreateTestOrderResponse
    OrdersCreateTestOrderResponse (..),
    newOrdersCreateTestOrderResponse,

    -- ** OrdersCreateTestReturnRequest
    OrdersCreateTestReturnRequest (..),
    newOrdersCreateTestReturnRequest,

    -- ** OrdersCreateTestReturnResponse
    OrdersCreateTestReturnResponse (..),
    newOrdersCreateTestReturnResponse,

    -- ** OrdersCustomBatchRequestEntryCreateTestReturnReturnItem
    OrdersCustomBatchRequestEntryCreateTestReturnReturnItem (..),
    newOrdersCustomBatchRequestEntryCreateTestReturnReturnItem,

    -- ** OrdersCustomBatchRequestEntryRefundItemItem
    OrdersCustomBatchRequestEntryRefundItemItem (..),
    newOrdersCustomBatchRequestEntryRefundItemItem,

    -- ** OrdersCustomBatchRequestEntryRefundItemShipping
    OrdersCustomBatchRequestEntryRefundItemShipping (..),
    newOrdersCustomBatchRequestEntryRefundItemShipping,

    -- ** OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo
    OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo (..),
    newOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo,

    -- ** OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails
    OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails (..),
    newOrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails,

    -- ** OrdersGetByMerchantOrderIdResponse
    OrdersGetByMerchantOrderIdResponse (..),
    newOrdersGetByMerchantOrderIdResponse,

    -- ** OrdersGetTestOrderTemplateResponse
    OrdersGetTestOrderTemplateResponse (..),
    newOrdersGetTestOrderTemplateResponse,

    -- ** OrdersInStoreRefundLineItemRequest
    OrdersInStoreRefundLineItemRequest (..),
    newOrdersInStoreRefundLineItemRequest,

    -- ** OrdersInStoreRefundLineItemResponse
    OrdersInStoreRefundLineItemResponse (..),
    newOrdersInStoreRefundLineItemResponse,

    -- ** OrdersListResponse
    OrdersListResponse (..),
    newOrdersListResponse,

    -- ** OrdersRefundItemRequest
    OrdersRefundItemRequest (..),
    newOrdersRefundItemRequest,

    -- ** OrdersRefundItemResponse
    OrdersRefundItemResponse (..),
    newOrdersRefundItemResponse,

    -- ** OrdersRefundOrderRequest
    OrdersRefundOrderRequest (..),
    newOrdersRefundOrderRequest,

    -- ** OrdersRefundOrderResponse
    OrdersRefundOrderResponse (..),
    newOrdersRefundOrderResponse,

    -- ** OrdersRejectReturnLineItemRequest
    OrdersRejectReturnLineItemRequest (..),
    newOrdersRejectReturnLineItemRequest,

    -- ** OrdersRejectReturnLineItemResponse
    OrdersRejectReturnLineItemResponse (..),
    newOrdersRejectReturnLineItemResponse,

    -- ** OrdersReturnRefundLineItemRequest
    OrdersReturnRefundLineItemRequest (..),
    newOrdersReturnRefundLineItemRequest,

    -- ** OrdersReturnRefundLineItemResponse
    OrdersReturnRefundLineItemResponse (..),
    newOrdersReturnRefundLineItemResponse,

    -- ** OrdersSetLineItemMetadataRequest
    OrdersSetLineItemMetadataRequest (..),
    newOrdersSetLineItemMetadataRequest,

    -- ** OrdersSetLineItemMetadataResponse
    OrdersSetLineItemMetadataResponse (..),
    newOrdersSetLineItemMetadataResponse,

    -- ** OrdersShipLineItemsRequest
    OrdersShipLineItemsRequest (..),
    newOrdersShipLineItemsRequest,

    -- ** OrdersShipLineItemsResponse
    OrdersShipLineItemsResponse (..),
    newOrdersShipLineItemsResponse,

    -- ** OrdersUpdateLineItemShippingDetailsRequest
    OrdersUpdateLineItemShippingDetailsRequest (..),
    newOrdersUpdateLineItemShippingDetailsRequest,

    -- ** OrdersUpdateLineItemShippingDetailsResponse
    OrdersUpdateLineItemShippingDetailsResponse (..),
    newOrdersUpdateLineItemShippingDetailsResponse,

    -- ** OrdersUpdateMerchantOrderIdRequest
    OrdersUpdateMerchantOrderIdRequest (..),
    newOrdersUpdateMerchantOrderIdRequest,

    -- ** OrdersUpdateMerchantOrderIdResponse
    OrdersUpdateMerchantOrderIdResponse (..),
    newOrdersUpdateMerchantOrderIdResponse,

    -- ** OrdersUpdateShipmentRequest
    OrdersUpdateShipmentRequest (..),
    newOrdersUpdateShipmentRequest,

    -- ** OrdersUpdateShipmentResponse
    OrdersUpdateShipmentResponse (..),
    newOrdersUpdateShipmentResponse,

    -- ** PauseBuyOnGoogleProgramRequest
    PauseBuyOnGoogleProgramRequest (..),
    newPauseBuyOnGoogleProgramRequest,

    -- ** PaymentServiceProviderLinkInfo
    PaymentServiceProviderLinkInfo (..),
    newPaymentServiceProviderLinkInfo,

    -- ** PickupCarrierService
    PickupCarrierService (..),
    newPickupCarrierService,

    -- ** PickupServicesPickupService
    PickupServicesPickupService (..),
    newPickupServicesPickupService,

    -- ** PosCustomBatchRequest
    PosCustomBatchRequest (..),
    newPosCustomBatchRequest,

    -- ** PosCustomBatchRequestEntry
    PosCustomBatchRequestEntry (..),
    newPosCustomBatchRequestEntry,

    -- ** PosCustomBatchResponse
    PosCustomBatchResponse (..),
    newPosCustomBatchResponse,

    -- ** PosCustomBatchResponseEntry
    PosCustomBatchResponseEntry (..),
    newPosCustomBatchResponseEntry,

    -- ** PosDataProviders
    PosDataProviders (..),
    newPosDataProviders,

    -- ** PosDataProvidersPosDataProvider
    PosDataProvidersPosDataProvider (..),
    newPosDataProvidersPosDataProvider,

    -- ** PosInventory
    PosInventory (..),
    newPosInventory,

    -- ** PosInventoryRequest
    PosInventoryRequest (..),
    newPosInventoryRequest,

    -- ** PosInventoryResponse
    PosInventoryResponse (..),
    newPosInventoryResponse,

    -- ** PosListResponse
    PosListResponse (..),
    newPosListResponse,

    -- ** PosSale
    PosSale (..),
    newPosSale,

    -- ** PosSaleRequest
    PosSaleRequest (..),
    newPosSaleRequest,

    -- ** PosSaleResponse
    PosSaleResponse (..),
    newPosSaleResponse,

    -- ** PosStore
    PosStore (..),
    newPosStore,

    -- ** PostalCodeGroup
    PostalCodeGroup (..),
    newPostalCodeGroup,

    -- ** PostalCodeRange
    PostalCodeRange (..),
    newPostalCodeRange,

    -- ** Price
    Price (..),
    newPrice,

    -- ** PriceAmount
    PriceAmount (..),
    newPriceAmount,

    -- ** PriceCompetitiveness
    PriceCompetitiveness (..),
    newPriceCompetitiveness,

    -- ** PriceInsights
    PriceInsights (..),
    newPriceInsights,

    -- ** Product
    Product (..),
    newProduct,

    -- ** ProductAmount
    ProductAmount (..),
    newProductAmount,

    -- ** ProductCluster
    ProductCluster (..),
    newProductCluster,

    -- ** ProductCluster_BrandInventoryStatus
    ProductCluster_BrandInventoryStatus (..),

    -- ** ProductCluster_InventoryStatus
    ProductCluster_InventoryStatus (..),

    -- ** ProductDeliveryTime
    ProductDeliveryTime (..),
    newProductDeliveryTime,

    -- ** ProductDeliveryTimeAreaDeliveryTime
    ProductDeliveryTimeAreaDeliveryTime (..),
    newProductDeliveryTimeAreaDeliveryTime,

    -- ** ProductDeliveryTimeAreaDeliveryTimeDeliveryTime
    ProductDeliveryTimeAreaDeliveryTimeDeliveryTime (..),
    newProductDeliveryTimeAreaDeliveryTimeDeliveryTime,

    -- ** ProductDimension
    ProductDimension (..),
    newProductDimension,

    -- ** ProductId
    ProductId (..),
    newProductId,

    -- ** ProductProductDetail
    ProductProductDetail (..),
    newProductProductDetail,

    -- ** ProductShipping
    ProductShipping (..),
    newProductShipping,

    -- ** ProductShippingDimension
    ProductShippingDimension (..),
    newProductShippingDimension,

    -- ** ProductShippingWeight
    ProductShippingWeight (..),
    newProductShippingWeight,

    -- ** ProductStatus
    ProductStatus (..),
    newProductStatus,

    -- ** ProductStatusDestinationStatus
    ProductStatusDestinationStatus (..),
    newProductStatusDestinationStatus,

    -- ** ProductStatusItemLevelIssue
    ProductStatusItemLevelIssue (..),
    newProductStatusItemLevelIssue,

    -- ** ProductSubscriptionCost
    ProductSubscriptionCost (..),
    newProductSubscriptionCost,

    -- ** ProductTax
    ProductTax (..),
    newProductTax,

    -- ** ProductUnitPricingBaseMeasure
    ProductUnitPricingBaseMeasure (..),
    newProductUnitPricingBaseMeasure,

    -- ** ProductUnitPricingMeasure
    ProductUnitPricingMeasure (..),
    newProductUnitPricingMeasure,

    -- ** ProductView
    ProductView (..),
    newProductView,

    -- ** ProductView_AggregatedDestinationStatus
    ProductView_AggregatedDestinationStatus (..),

    -- ** ProductView_Channel
    ProductView_Channel (..),

    -- ** ProductViewItemIssue
    ProductViewItemIssue (..),
    newProductViewItemIssue,

    -- ** ProductViewItemIssue_Resolution
    ProductViewItemIssue_Resolution (..),

    -- ** ProductViewItemIssueIssueSeverityPerDestination
    ProductViewItemIssueIssueSeverityPerDestination (..),
    newProductViewItemIssueIssueSeverityPerDestination,

    -- ** ProductViewItemIssueItemIssueSeverity
    ProductViewItemIssueItemIssueSeverity (..),
    newProductViewItemIssueItemIssueSeverity,

    -- ** ProductViewItemIssueItemIssueSeverity_AggregatedSeverity
    ProductViewItemIssueItemIssueSeverity_AggregatedSeverity (..),

    -- ** ProductViewItemIssueItemIssueType
    ProductViewItemIssueItemIssueType (..),
    newProductViewItemIssueItemIssueType,

    -- ** ProductWeight
    ProductWeight (..),
    newProductWeight,

    -- ** ProductsCustomBatchRequest
    ProductsCustomBatchRequest (..),
    newProductsCustomBatchRequest,

    -- ** ProductsCustomBatchRequestEntry
    ProductsCustomBatchRequestEntry (..),
    newProductsCustomBatchRequestEntry,

    -- ** ProductsCustomBatchResponse
    ProductsCustomBatchResponse (..),
    newProductsCustomBatchResponse,

    -- ** ProductsCustomBatchResponseEntry
    ProductsCustomBatchResponseEntry (..),
    newProductsCustomBatchResponseEntry,

    -- ** ProductsListResponse
    ProductsListResponse (..),
    newProductsListResponse,

    -- ** ProductstatusesCustomBatchRequest
    ProductstatusesCustomBatchRequest (..),
    newProductstatusesCustomBatchRequest,

    -- ** ProductstatusesCustomBatchRequestEntry
    ProductstatusesCustomBatchRequestEntry (..),
    newProductstatusesCustomBatchRequestEntry,

    -- ** ProductstatusesCustomBatchResponse
    ProductstatusesCustomBatchResponse (..),
    newProductstatusesCustomBatchResponse,

    -- ** ProductstatusesCustomBatchResponseEntry
    ProductstatusesCustomBatchResponseEntry (..),
    newProductstatusesCustomBatchResponseEntry,

    -- ** ProductstatusesListResponse
    ProductstatusesListResponse (..),
    newProductstatusesListResponse,

    -- ** Promotion
    Promotion (..),
    newPromotion,

    -- ** Promotion_CouponValueType
    Promotion_CouponValueType (..),

    -- ** Promotion_OfferType
    Promotion_OfferType (..),

    -- ** Promotion_ProductApplicability
    Promotion_ProductApplicability (..),

    -- ** Promotion_RedemptionChannelItem
    Promotion_RedemptionChannelItem (..),

    -- ** Promotion_StoreApplicability
    Promotion_StoreApplicability (..),

    -- ** PromotionPromotionStatus
    PromotionPromotionStatus (..),
    newPromotionPromotionStatus,

    -- ** PromotionPromotionStatusDestinationStatus
    PromotionPromotionStatusDestinationStatus (..),
    newPromotionPromotionStatusDestinationStatus,

    -- ** PromotionPromotionStatusDestinationStatus_Status
    PromotionPromotionStatusDestinationStatus_Status (..),

    -- ** PromotionPromotionStatusPromotionIssue
    PromotionPromotionStatusPromotionIssue (..),
    newPromotionPromotionStatusPromotionIssue,

    -- ** PubsubNotificationSettings
    PubsubNotificationSettings (..),
    newPubsubNotificationSettings,

    -- ** RateGroup
    RateGroup (..),
    newRateGroup,

    -- ** Recommendation
    Recommendation (..),
    newRecommendation,

    -- ** RecommendationCallToAction
    RecommendationCallToAction (..),
    newRecommendationCallToAction,

    -- ** RecommendationCreative
    RecommendationCreative (..),
    newRecommendationCreative,

    -- ** RecommendationCreative_Type
    RecommendationCreative_Type (..),

    -- ** RecommendationDescription
    RecommendationDescription (..),
    newRecommendationDescription,

    -- ** RecommendationDescription_Type
    RecommendationDescription_Type (..),

    -- ** RefundReason
    RefundReason (..),
    newRefundReason,

    -- ** Region
    Region (..),
    newRegion,

    -- ** RegionGeoTargetArea
    RegionGeoTargetArea (..),
    newRegionGeoTargetArea,

    -- ** RegionPostalCodeArea
    RegionPostalCodeArea (..),
    newRegionPostalCodeArea,

    -- ** RegionPostalCodeAreaPostalCodeRange
    RegionPostalCodeAreaPostalCodeRange (..),
    newRegionPostalCodeAreaPostalCodeRange,

    -- ** RegionalInventory
    RegionalInventory (..),
    newRegionalInventory,

    -- ** RegionalinventoryCustomBatchRequest
    RegionalinventoryCustomBatchRequest (..),
    newRegionalinventoryCustomBatchRequest,

    -- ** RegionalinventoryCustomBatchRequestEntry
    RegionalinventoryCustomBatchRequestEntry (..),
    newRegionalinventoryCustomBatchRequestEntry,

    -- ** RegionalinventoryCustomBatchResponse
    RegionalinventoryCustomBatchResponse (..),
    newRegionalinventoryCustomBatchResponse,

    -- ** RegionalinventoryCustomBatchResponseEntry
    RegionalinventoryCustomBatchResponseEntry (..),
    newRegionalinventoryCustomBatchResponseEntry,

    -- ** ReportInteractionRequest
    ReportInteractionRequest (..),
    newReportInteractionRequest,

    -- ** ReportInteractionRequest_InteractionType
    ReportInteractionRequest_InteractionType (..),

    -- ** ReportRow
    ReportRow (..),
    newReportRow,

    -- ** RepricingProductReport
    RepricingProductReport (..),
    newRepricingProductReport,

    -- ** RepricingProductReport_Type
    RepricingProductReport_Type (..),

    -- ** RepricingProductReportBuyboxWinningProductStats
    RepricingProductReportBuyboxWinningProductStats (..),
    newRepricingProductReportBuyboxWinningProductStats,

    -- ** RepricingRule
    RepricingRule (..),
    newRepricingRule,

    -- ** RepricingRule_Type
    RepricingRule_Type (..),

    -- ** RepricingRuleCostOfGoodsSaleRule
    RepricingRuleCostOfGoodsSaleRule (..),
    newRepricingRuleCostOfGoodsSaleRule,

    -- ** RepricingRuleEffectiveTime
    RepricingRuleEffectiveTime (..),
    newRepricingRuleEffectiveTime,

    -- ** RepricingRuleEffectiveTimeFixedTimePeriod
    RepricingRuleEffectiveTimeFixedTimePeriod (..),
    newRepricingRuleEffectiveTimeFixedTimePeriod,

    -- ** RepricingRuleEligibleOfferMatcher
    RepricingRuleEligibleOfferMatcher (..),
    newRepricingRuleEligibleOfferMatcher,

    -- ** RepricingRuleEligibleOfferMatcher_MatcherOption
    RepricingRuleEligibleOfferMatcher_MatcherOption (..),

    -- ** RepricingRuleEligibleOfferMatcherStringMatcher
    RepricingRuleEligibleOfferMatcherStringMatcher (..),
    newRepricingRuleEligibleOfferMatcherStringMatcher,

    -- ** RepricingRuleReport
    RepricingRuleReport (..),
    newRepricingRuleReport,

    -- ** RepricingRuleReport_Type
    RepricingRuleReport_Type (..),

    -- ** RepricingRuleReportBuyboxWinningRuleStats
    RepricingRuleReportBuyboxWinningRuleStats (..),
    newRepricingRuleReportBuyboxWinningRuleStats,

    -- ** RepricingRuleRestriction
    RepricingRuleRestriction (..),
    newRepricingRuleRestriction,

    -- ** RepricingRuleRestrictionBoundary
    RepricingRuleRestrictionBoundary (..),
    newRepricingRuleRestrictionBoundary,

    -- ** RepricingRuleStatsBasedRule
    RepricingRuleStatsBasedRule (..),
    newRepricingRuleStatsBasedRule,

    -- ** RequestPhoneVerificationRequest
    RequestPhoneVerificationRequest (..),
    newRequestPhoneVerificationRequest,

    -- ** RequestPhoneVerificationRequest_PhoneVerificationMethod
    RequestPhoneVerificationRequest_PhoneVerificationMethod (..),

    -- ** RequestPhoneVerificationResponse
    RequestPhoneVerificationResponse (..),
    newRequestPhoneVerificationResponse,

    -- ** RequestReviewBuyOnGoogleProgramRequest
    RequestReviewBuyOnGoogleProgramRequest (..),
    newRequestReviewBuyOnGoogleProgramRequest,

    -- ** RequestReviewFreeListingsRequest
    RequestReviewFreeListingsRequest (..),
    newRequestReviewFreeListingsRequest,

    -- ** RequestReviewShoppingAdsRequest
    RequestReviewShoppingAdsRequest (..),
    newRequestReviewShoppingAdsRequest,

    -- ** ReturnAddress
    ReturnAddress (..),
    newReturnAddress,

    -- ** ReturnAddressAddress
    ReturnAddressAddress (..),
    newReturnAddressAddress,

    -- ** ReturnPolicy
    ReturnPolicy (..),
    newReturnPolicy,

    -- ** ReturnPolicyOnline
    ReturnPolicyOnline (..),
    newReturnPolicyOnline,

    -- ** ReturnPolicyOnline_ItemConditionsItem
    ReturnPolicyOnline_ItemConditionsItem (..),

    -- ** ReturnPolicyOnline_ReturnMethodsItem
    ReturnPolicyOnline_ReturnMethodsItem (..),

    -- ** ReturnPolicyOnlinePolicy
    ReturnPolicyOnlinePolicy (..),
    newReturnPolicyOnlinePolicy,

    -- ** ReturnPolicyOnlinePolicy_Type
    ReturnPolicyOnlinePolicy_Type (..),

    -- ** ReturnPolicyOnlineRestockingFee
    ReturnPolicyOnlineRestockingFee (..),
    newReturnPolicyOnlineRestockingFee,

    -- ** ReturnPolicyOnlineReturnReasonCategoryInfo
    ReturnPolicyOnlineReturnReasonCategoryInfo (..),
    newReturnPolicyOnlineReturnReasonCategoryInfo,

    -- ** ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnLabelSource
    ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnLabelSource (..),

    -- ** ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnReasonCategory
    ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnReasonCategory (..),

    -- ** ReturnPolicyOnlineReturnShippingFee
    ReturnPolicyOnlineReturnShippingFee (..),
    newReturnPolicyOnlineReturnShippingFee,

    -- ** ReturnPolicyOnlineReturnShippingFee_Type
    ReturnPolicyOnlineReturnShippingFee_Type (..),

    -- ** ReturnPolicyPolicy
    ReturnPolicyPolicy (..),
    newReturnPolicyPolicy,

    -- ** ReturnPolicySeasonalOverride
    ReturnPolicySeasonalOverride (..),
    newReturnPolicySeasonalOverride,

    -- ** ReturnPricingInfo
    ReturnPricingInfo (..),
    newReturnPricingInfo,

    -- ** ReturnShipment
    ReturnShipment (..),
    newReturnShipment,

    -- ** ReturnShippingLabel
    ReturnShippingLabel (..),
    newReturnShippingLabel,

    -- ** ReturnaddressCustomBatchRequest
    ReturnaddressCustomBatchRequest (..),
    newReturnaddressCustomBatchRequest,

    -- ** ReturnaddressCustomBatchRequestEntry
    ReturnaddressCustomBatchRequestEntry (..),
    newReturnaddressCustomBatchRequestEntry,

    -- ** ReturnaddressCustomBatchResponse
    ReturnaddressCustomBatchResponse (..),
    newReturnaddressCustomBatchResponse,

    -- ** ReturnaddressCustomBatchResponseEntry
    ReturnaddressCustomBatchResponseEntry (..),
    newReturnaddressCustomBatchResponseEntry,

    -- ** ReturnaddressListResponse
    ReturnaddressListResponse (..),
    newReturnaddressListResponse,

    -- ** ReturnpolicyCustomBatchRequest
    ReturnpolicyCustomBatchRequest (..),
    newReturnpolicyCustomBatchRequest,

    -- ** ReturnpolicyCustomBatchRequestEntry
    ReturnpolicyCustomBatchRequestEntry (..),
    newReturnpolicyCustomBatchRequestEntry,

    -- ** ReturnpolicyCustomBatchResponse
    ReturnpolicyCustomBatchResponse (..),
    newReturnpolicyCustomBatchResponse,

    -- ** ReturnpolicyCustomBatchResponseEntry
    ReturnpolicyCustomBatchResponseEntry (..),
    newReturnpolicyCustomBatchResponseEntry,

    -- ** ReturnpolicyListResponse
    ReturnpolicyListResponse (..),
    newReturnpolicyListResponse,

    -- ** Row
    Row (..),
    newRow,

    -- ** SearchRequest
    SearchRequest (..),
    newSearchRequest,

    -- ** SearchResponse
    SearchResponse (..),
    newSearchResponse,

    -- ** Segments
    Segments (..),
    newSegments,

    -- ** Segments_Program
    Segments_Program (..),

    -- ** Service
    Service (..),
    newService,

    -- ** SettlementReport
    SettlementReport (..),
    newSettlementReport,

    -- ** SettlementTransaction
    SettlementTransaction (..),
    newSettlementTransaction,

    -- ** SettlementTransactionAmount
    SettlementTransactionAmount (..),
    newSettlementTransactionAmount,

    -- ** SettlementTransactionAmountCommission
    SettlementTransactionAmountCommission (..),
    newSettlementTransactionAmountCommission,

    -- ** SettlementTransactionIdentifiers
    SettlementTransactionIdentifiers (..),
    newSettlementTransactionIdentifiers,

    -- ** SettlementTransactionTransaction
    SettlementTransactionTransaction (..),
    newSettlementTransactionTransaction,

    -- ** SettlementreportsListResponse
    SettlementreportsListResponse (..),
    newSettlementreportsListResponse,

    -- ** SettlementtransactionsListResponse
    SettlementtransactionsListResponse (..),
    newSettlementtransactionsListResponse,

    -- ** ShipmentInvoice
    ShipmentInvoice (..),
    newShipmentInvoice,

    -- ** ShipmentInvoiceLineItemInvoice
    ShipmentInvoiceLineItemInvoice (..),
    newShipmentInvoiceLineItemInvoice,

    -- ** ShipmentTrackingInfo
    ShipmentTrackingInfo (..),
    newShipmentTrackingInfo,

    -- ** ShippingSettings
    ShippingSettings (..),
    newShippingSettings,

    -- ** ShippingsettingsCustomBatchRequest
    ShippingsettingsCustomBatchRequest (..),
    newShippingsettingsCustomBatchRequest,

    -- ** ShippingsettingsCustomBatchRequestEntry
    ShippingsettingsCustomBatchRequestEntry (..),
    newShippingsettingsCustomBatchRequestEntry,

    -- ** ShippingsettingsCustomBatchResponse
    ShippingsettingsCustomBatchResponse (..),
    newShippingsettingsCustomBatchResponse,

    -- ** ShippingsettingsCustomBatchResponseEntry
    ShippingsettingsCustomBatchResponseEntry (..),
    newShippingsettingsCustomBatchResponseEntry,

    -- ** ShippingsettingsGetSupportedCarriersResponse
    ShippingsettingsGetSupportedCarriersResponse (..),
    newShippingsettingsGetSupportedCarriersResponse,

    -- ** ShippingsettingsGetSupportedHolidaysResponse
    ShippingsettingsGetSupportedHolidaysResponse (..),
    newShippingsettingsGetSupportedHolidaysResponse,

    -- ** ShippingsettingsGetSupportedPickupServicesResponse
    ShippingsettingsGetSupportedPickupServicesResponse (..),
    newShippingsettingsGetSupportedPickupServicesResponse,

    -- ** ShippingsettingsListResponse
    ShippingsettingsListResponse (..),
    newShippingsettingsListResponse,

    -- ** ShoppingAdsProgramStatus
    ShoppingAdsProgramStatus (..),
    newShoppingAdsProgramStatus,

    -- ** ShoppingAdsProgramStatus_GlobalState
    ShoppingAdsProgramStatus_GlobalState (..),

    -- ** ShoppingAdsProgramStatusRegionStatus
    ShoppingAdsProgramStatusRegionStatus (..),
    newShoppingAdsProgramStatusRegionStatus,

    -- ** ShoppingAdsProgramStatusRegionStatus_EligibilityStatus
    ShoppingAdsProgramStatusRegionStatus_EligibilityStatus (..),

    -- ** ShoppingAdsProgramStatusRegionStatus_ReviewEligibilityStatus
    ShoppingAdsProgramStatusRegionStatus_ReviewEligibilityStatus (..),

    -- ** ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason
    ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason (..),

    -- ** ShoppingAdsProgramStatusReviewIneligibilityReasonDetails
    ShoppingAdsProgramStatusReviewIneligibilityReasonDetails (..),
    newShoppingAdsProgramStatusReviewIneligibilityReasonDetails,

    -- ** Table
    Table (..),
    newTable,

    -- ** TestOrder
    TestOrder (..),
    newTestOrder,

    -- ** TestOrderAddress
    TestOrderAddress (..),
    newTestOrderAddress,

    -- ** TestOrderDeliveryDetails
    TestOrderDeliveryDetails (..),
    newTestOrderDeliveryDetails,

    -- ** TestOrderLineItem
    TestOrderLineItem (..),
    newTestOrderLineItem,

    -- ** TestOrderLineItemProduct
    TestOrderLineItemProduct (..),
    newTestOrderLineItemProduct,

    -- ** TestOrderPickupDetails
    TestOrderPickupDetails (..),
    newTestOrderPickupDetails,

    -- ** TestOrderPickupDetailsPickupPerson
    TestOrderPickupDetailsPickupPerson (..),
    newTestOrderPickupDetailsPickupPerson,

    -- ** TimePeriod
    TimePeriod (..),
    newTimePeriod,

    -- ** TimeZone
    TimeZone (..),
    newTimeZone,

    -- ** TransitTable
    TransitTable (..),
    newTransitTable,

    -- ** TransitTableTransitTimeRow
    TransitTableTransitTimeRow (..),
    newTransitTableTransitTimeRow,

    -- ** TransitTableTransitTimeRowTransitTimeValue
    TransitTableTransitTimeRowTransitTimeValue (..),
    newTransitTableTransitTimeRowTransitTimeValue,

    -- ** UndeleteConversionSourceRequest
    UndeleteConversionSourceRequest (..),
    newUndeleteConversionSourceRequest,

    -- ** UnitInvoice
    UnitInvoice (..),
    newUnitInvoice,

    -- ** UnitInvoiceAdditionalCharge
    UnitInvoiceAdditionalCharge (..),
    newUnitInvoiceAdditionalCharge,

    -- ** UnitInvoiceTaxLine
    UnitInvoiceTaxLine (..),
    newUnitInvoiceTaxLine,

    -- ** Value
    Value (..),
    newValue,

    -- ** VerifyPhoneNumberRequest
    VerifyPhoneNumberRequest (..),
    newVerifyPhoneNumberRequest,

    -- ** VerifyPhoneNumberRequest_PhoneVerificationMethod
    VerifyPhoneNumberRequest_PhoneVerificationMethod (..),

    -- ** VerifyPhoneNumberResponse
    VerifyPhoneNumberResponse (..),
    newVerifyPhoneNumberResponse,

    -- ** Warehouse
    Warehouse (..),
    newWarehouse,

    -- ** WarehouseBasedDeliveryTime
    WarehouseBasedDeliveryTime (..),
    newWarehouseBasedDeliveryTime,

    -- ** WarehouseCutoffTime
    WarehouseCutoffTime (..),
    newWarehouseCutoffTime,

    -- ** Weight
    Weight (..),
    newWeight,

    -- ** AccountsGetView
    AccountsGetView (..),

    -- ** AccountsListView
    AccountsListView (..),

    -- ** OrderreturnsListOrderBy
    OrderreturnsListOrderBy (..),

    -- ** OrderreturnsListShipmentStates
    OrderreturnsListShipmentStates (..),

    -- ** OrderreturnsListShipmentStatus
    OrderreturnsListShipmentStatus (..),

    -- ** OrderreturnsListShipmentTypes
    OrderreturnsListShipmentTypes (..),

    -- ** OrdersGettestordertemplateTemplateName
    OrdersGettestordertemplateTemplateName (..),

    -- ** OrdersListStatuses
    OrdersListStatuses (..),
  )
where

import Gogol.ShoppingContent.Content.Accounts.Authinfo
import Gogol.ShoppingContent.Content.Accounts.Claimwebsite
import Gogol.ShoppingContent.Content.Accounts.Credentials.Create
import Gogol.ShoppingContent.Content.Accounts.Custombatch
import Gogol.ShoppingContent.Content.Accounts.Delete
import Gogol.ShoppingContent.Content.Accounts.Get
import Gogol.ShoppingContent.Content.Accounts.Insert
import Gogol.ShoppingContent.Content.Accounts.Labels.Create
import Gogol.ShoppingContent.Content.Accounts.Labels.Delete
import Gogol.ShoppingContent.Content.Accounts.Labels.List
import Gogol.ShoppingContent.Content.Accounts.Labels.Patch
import Gogol.ShoppingContent.Content.Accounts.Link
import Gogol.ShoppingContent.Content.Accounts.List
import Gogol.ShoppingContent.Content.Accounts.Listlinks
import Gogol.ShoppingContent.Content.Accounts.Requestphoneverification
import Gogol.ShoppingContent.Content.Accounts.Returncarrier.Create
import Gogol.ShoppingContent.Content.Accounts.Returncarrier.Delete
import Gogol.ShoppingContent.Content.Accounts.Returncarrier.List
import Gogol.ShoppingContent.Content.Accounts.Returncarrier.Patch
import Gogol.ShoppingContent.Content.Accounts.Update
import Gogol.ShoppingContent.Content.Accounts.Updatelabels
import Gogol.ShoppingContent.Content.Accounts.Verifyphonenumber
import Gogol.ShoppingContent.Content.Accountstatuses.Custombatch
import Gogol.ShoppingContent.Content.Accountstatuses.Get
import Gogol.ShoppingContent.Content.Accountstatuses.List
import Gogol.ShoppingContent.Content.Accounttax.Custombatch
import Gogol.ShoppingContent.Content.Accounttax.Get
import Gogol.ShoppingContent.Content.Accounttax.List
import Gogol.ShoppingContent.Content.Accounttax.Update
import Gogol.ShoppingContent.Content.Buyongoogleprograms.Activate
import Gogol.ShoppingContent.Content.Buyongoogleprograms.Get
import Gogol.ShoppingContent.Content.Buyongoogleprograms.Onboard
import Gogol.ShoppingContent.Content.Buyongoogleprograms.Patch
import Gogol.ShoppingContent.Content.Buyongoogleprograms.Pause
import Gogol.ShoppingContent.Content.Buyongoogleprograms.Requestreview
import Gogol.ShoppingContent.Content.Collections.Create
import Gogol.ShoppingContent.Content.Collections.Delete
import Gogol.ShoppingContent.Content.Collections.Get
import Gogol.ShoppingContent.Content.Collections.List
import Gogol.ShoppingContent.Content.Collectionstatuses.Get
import Gogol.ShoppingContent.Content.Collectionstatuses.List
import Gogol.ShoppingContent.Content.Conversionsources.Create
import Gogol.ShoppingContent.Content.Conversionsources.Delete
import Gogol.ShoppingContent.Content.Conversionsources.Get
import Gogol.ShoppingContent.Content.Conversionsources.List
import Gogol.ShoppingContent.Content.Conversionsources.Patch
import Gogol.ShoppingContent.Content.Conversionsources.Undelete
import Gogol.ShoppingContent.Content.Csses.Get
import Gogol.ShoppingContent.Content.Csses.List
import Gogol.ShoppingContent.Content.Csses.Updatelabels
import Gogol.ShoppingContent.Content.Datafeeds.Custombatch
import Gogol.ShoppingContent.Content.Datafeeds.Delete
import Gogol.ShoppingContent.Content.Datafeeds.Fetchnow
import Gogol.ShoppingContent.Content.Datafeeds.Get
import Gogol.ShoppingContent.Content.Datafeeds.Insert
import Gogol.ShoppingContent.Content.Datafeeds.List
import Gogol.ShoppingContent.Content.Datafeeds.Update
import Gogol.ShoppingContent.Content.Datafeedstatuses.Custombatch
import Gogol.ShoppingContent.Content.Datafeedstatuses.Get
import Gogol.ShoppingContent.Content.Datafeedstatuses.List
import Gogol.ShoppingContent.Content.Freelistingsprogram.Get
import Gogol.ShoppingContent.Content.Freelistingsprogram.Requestreview
import Gogol.ShoppingContent.Content.Liasettings.Custombatch
import Gogol.ShoppingContent.Content.Liasettings.Get
import Gogol.ShoppingContent.Content.Liasettings.Getaccessiblegmbaccounts
import Gogol.ShoppingContent.Content.Liasettings.List
import Gogol.ShoppingContent.Content.Liasettings.Listposdataproviders
import Gogol.ShoppingContent.Content.Liasettings.Requestgmbaccess
import Gogol.ShoppingContent.Content.Liasettings.Requestinventoryverification
import Gogol.ShoppingContent.Content.Liasettings.Setinventoryverificationcontact
import Gogol.ShoppingContent.Content.Liasettings.Setposdataprovider
import Gogol.ShoppingContent.Content.Liasettings.Update
import Gogol.ShoppingContent.Content.Localinventory.Custombatch
import Gogol.ShoppingContent.Content.Localinventory.Insert
import Gogol.ShoppingContent.Content.Orderinvoices.Createchargeinvoice
import Gogol.ShoppingContent.Content.Orderinvoices.Createrefundinvoice
import Gogol.ShoppingContent.Content.Orderreports.Listdisbursements
import Gogol.ShoppingContent.Content.Orderreports.Listtransactions
import Gogol.ShoppingContent.Content.Orderreturns.Acknowledge
import Gogol.ShoppingContent.Content.Orderreturns.Createorderreturn
import Gogol.ShoppingContent.Content.Orderreturns.Get
import Gogol.ShoppingContent.Content.Orderreturns.Labels.Create
import Gogol.ShoppingContent.Content.Orderreturns.List
import Gogol.ShoppingContent.Content.Orderreturns.Process
import Gogol.ShoppingContent.Content.Orders.Acknowledge
import Gogol.ShoppingContent.Content.Orders.Advancetestorder
import Gogol.ShoppingContent.Content.Orders.Cancel
import Gogol.ShoppingContent.Content.Orders.Cancellineitem
import Gogol.ShoppingContent.Content.Orders.Canceltestorderbycustomer
import Gogol.ShoppingContent.Content.Orders.CaptureOrder
import Gogol.ShoppingContent.Content.Orders.Createtestorder
import Gogol.ShoppingContent.Content.Orders.Createtestreturn
import Gogol.ShoppingContent.Content.Orders.Get
import Gogol.ShoppingContent.Content.Orders.Getbymerchantorderid
import Gogol.ShoppingContent.Content.Orders.Gettestordertemplate
import Gogol.ShoppingContent.Content.Orders.Instorerefundlineitem
import Gogol.ShoppingContent.Content.Orders.List
import Gogol.ShoppingContent.Content.Orders.Refunditem
import Gogol.ShoppingContent.Content.Orders.Refundorder
import Gogol.ShoppingContent.Content.Orders.Rejectreturnlineitem
import Gogol.ShoppingContent.Content.Orders.Returnrefundlineitem
import Gogol.ShoppingContent.Content.Orders.Setlineitemmetadata
import Gogol.ShoppingContent.Content.Orders.Shiplineitems
import Gogol.ShoppingContent.Content.Orders.Updatelineitemshippingdetails
import Gogol.ShoppingContent.Content.Orders.Updatemerchantorderid
import Gogol.ShoppingContent.Content.Orders.Updateshipment
import Gogol.ShoppingContent.Content.Ordertrackingsignals.Create
import Gogol.ShoppingContent.Content.Pos.Custombatch
import Gogol.ShoppingContent.Content.Pos.Delete
import Gogol.ShoppingContent.Content.Pos.Get
import Gogol.ShoppingContent.Content.Pos.Insert
import Gogol.ShoppingContent.Content.Pos.Inventory
import Gogol.ShoppingContent.Content.Pos.List
import Gogol.ShoppingContent.Content.Pos.Sale
import Gogol.ShoppingContent.Content.Productdeliverytime.Create
import Gogol.ShoppingContent.Content.Productdeliverytime.Delete
import Gogol.ShoppingContent.Content.Productdeliverytime.Get
import Gogol.ShoppingContent.Content.Products.Custombatch
import Gogol.ShoppingContent.Content.Products.Delete
import Gogol.ShoppingContent.Content.Products.Get
import Gogol.ShoppingContent.Content.Products.Insert
import Gogol.ShoppingContent.Content.Products.List
import Gogol.ShoppingContent.Content.Products.Update
import Gogol.ShoppingContent.Content.Productstatuses.Custombatch
import Gogol.ShoppingContent.Content.Productstatuses.Get
import Gogol.ShoppingContent.Content.Productstatuses.List
import Gogol.ShoppingContent.Content.Productstatuses.Repricingreports.List
import Gogol.ShoppingContent.Content.Promotions.Create
import Gogol.ShoppingContent.Content.Promotions.Get
import Gogol.ShoppingContent.Content.Pubsubnotificationsettings.Get
import Gogol.ShoppingContent.Content.Pubsubnotificationsettings.Update
import Gogol.ShoppingContent.Content.Quotas.List
import Gogol.ShoppingContent.Content.Recommendations.Generate
import Gogol.ShoppingContent.Content.Recommendations.ReportInteraction
import Gogol.ShoppingContent.Content.Regionalinventory.Custombatch
import Gogol.ShoppingContent.Content.Regionalinventory.Insert
import Gogol.ShoppingContent.Content.Regions.Create
import Gogol.ShoppingContent.Content.Regions.Delete
import Gogol.ShoppingContent.Content.Regions.Get
import Gogol.ShoppingContent.Content.Regions.List
import Gogol.ShoppingContent.Content.Regions.Patch
import Gogol.ShoppingContent.Content.Reports.Search
import Gogol.ShoppingContent.Content.Repricingrules.Create
import Gogol.ShoppingContent.Content.Repricingrules.Delete
import Gogol.ShoppingContent.Content.Repricingrules.Get
import Gogol.ShoppingContent.Content.Repricingrules.List
import Gogol.ShoppingContent.Content.Repricingrules.Patch
import Gogol.ShoppingContent.Content.Repricingrules.Repricingreports.List
import Gogol.ShoppingContent.Content.Returnaddress.Custombatch
import Gogol.ShoppingContent.Content.Returnaddress.Delete
import Gogol.ShoppingContent.Content.Returnaddress.Get
import Gogol.ShoppingContent.Content.Returnaddress.Insert
import Gogol.ShoppingContent.Content.Returnaddress.List
import Gogol.ShoppingContent.Content.Returnpolicy.Custombatch
import Gogol.ShoppingContent.Content.Returnpolicy.Delete
import Gogol.ShoppingContent.Content.Returnpolicy.Get
import Gogol.ShoppingContent.Content.Returnpolicy.Insert
import Gogol.ShoppingContent.Content.Returnpolicy.List
import Gogol.ShoppingContent.Content.Returnpolicyonline.Create
import Gogol.ShoppingContent.Content.Returnpolicyonline.Delete
import Gogol.ShoppingContent.Content.Returnpolicyonline.Get
import Gogol.ShoppingContent.Content.Returnpolicyonline.List
import Gogol.ShoppingContent.Content.Returnpolicyonline.Patch
import Gogol.ShoppingContent.Content.Settlementreports.Get
import Gogol.ShoppingContent.Content.Settlementreports.List
import Gogol.ShoppingContent.Content.Settlementtransactions.List
import Gogol.ShoppingContent.Content.Shippingsettings.Custombatch
import Gogol.ShoppingContent.Content.Shippingsettings.Get
import Gogol.ShoppingContent.Content.Shippingsettings.Getsupportedcarriers
import Gogol.ShoppingContent.Content.Shippingsettings.Getsupportedholidays
import Gogol.ShoppingContent.Content.Shippingsettings.Getsupportedpickupservices
import Gogol.ShoppingContent.Content.Shippingsettings.List
import Gogol.ShoppingContent.Content.Shippingsettings.Update
import Gogol.ShoppingContent.Content.Shoppingadsprogram.Get
import Gogol.ShoppingContent.Content.Shoppingadsprogram.Requestreview
import Gogol.ShoppingContent.Types
