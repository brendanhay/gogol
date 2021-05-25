{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.ShoppingContent
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manage your product listings and accounts for Google Shopping
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference>
module Network.Google.ShoppingContent
    (
    -- * Service Configuration
      shoppingContentService

    -- * OAuth Scopes
    , contentScope

    -- * API Declaration
    , ShoppingContentAPI

    -- * Resources

    -- ** content.accounts.authinfo
    , module Network.Google.Resource.Content.Accounts.AuthInfo

    -- ** content.accounts.claimwebsite
    , module Network.Google.Resource.Content.Accounts.Claimwebsite

    -- ** content.accounts.credentials.create
    , module Network.Google.Resource.Content.Accounts.Credentials.Create

    -- ** content.accounts.custombatch
    , module Network.Google.Resource.Content.Accounts.Custombatch

    -- ** content.accounts.delete
    , module Network.Google.Resource.Content.Accounts.Delete

    -- ** content.accounts.get
    , module Network.Google.Resource.Content.Accounts.Get

    -- ** content.accounts.insert
    , module Network.Google.Resource.Content.Accounts.Insert

    -- ** content.accounts.labels.create
    , module Network.Google.Resource.Content.Accounts.Labels.Create

    -- ** content.accounts.labels.delete
    , module Network.Google.Resource.Content.Accounts.Labels.Delete

    -- ** content.accounts.labels.list
    , module Network.Google.Resource.Content.Accounts.Labels.List

    -- ** content.accounts.labels.patch
    , module Network.Google.Resource.Content.Accounts.Labels.Patch

    -- ** content.accounts.link
    , module Network.Google.Resource.Content.Accounts.Link

    -- ** content.accounts.list
    , module Network.Google.Resource.Content.Accounts.List

    -- ** content.accounts.listlinks
    , module Network.Google.Resource.Content.Accounts.Listlinks

    -- ** content.accounts.requestphoneverification
    , module Network.Google.Resource.Content.Accounts.Requestphoneverification

    -- ** content.accounts.returncarrier.create
    , module Network.Google.Resource.Content.Accounts.Returncarrier.Create

    -- ** content.accounts.returncarrier.delete
    , module Network.Google.Resource.Content.Accounts.Returncarrier.Delete

    -- ** content.accounts.returncarrier.list
    , module Network.Google.Resource.Content.Accounts.Returncarrier.List

    -- ** content.accounts.returncarrier.patch
    , module Network.Google.Resource.Content.Accounts.Returncarrier.Patch

    -- ** content.accounts.update
    , module Network.Google.Resource.Content.Accounts.Update

    -- ** content.accounts.updatelabels
    , module Network.Google.Resource.Content.Accounts.Updatelabels

    -- ** content.accounts.verifyphonenumber
    , module Network.Google.Resource.Content.Accounts.Verifyphonenumber

    -- ** content.accountstatuses.custombatch
    , module Network.Google.Resource.Content.Accountstatuses.Custombatch

    -- ** content.accountstatuses.get
    , module Network.Google.Resource.Content.Accountstatuses.Get

    -- ** content.accountstatuses.list
    , module Network.Google.Resource.Content.Accountstatuses.List

    -- ** content.accounttax.custombatch
    , module Network.Google.Resource.Content.Accounttax.Custombatch

    -- ** content.accounttax.get
    , module Network.Google.Resource.Content.Accounttax.Get

    -- ** content.accounttax.list
    , module Network.Google.Resource.Content.Accounttax.List

    -- ** content.accounttax.update
    , module Network.Google.Resource.Content.Accounttax.Update

    -- ** content.buyongoogleprograms.activate
    , module Network.Google.Resource.Content.Buyongoogleprograms.Activate

    -- ** content.buyongoogleprograms.get
    , module Network.Google.Resource.Content.Buyongoogleprograms.Get

    -- ** content.buyongoogleprograms.onboard
    , module Network.Google.Resource.Content.Buyongoogleprograms.Onboard

    -- ** content.buyongoogleprograms.pause
    , module Network.Google.Resource.Content.Buyongoogleprograms.Pause

    -- ** content.buyongoogleprograms.requestreview
    , module Network.Google.Resource.Content.Buyongoogleprograms.Requestreview

    -- ** content.collections.create
    , module Network.Google.Resource.Content.Collections.Create

    -- ** content.collections.delete
    , module Network.Google.Resource.Content.Collections.Delete

    -- ** content.collections.get
    , module Network.Google.Resource.Content.Collections.Get

    -- ** content.collections.list
    , module Network.Google.Resource.Content.Collections.List

    -- ** content.collectionstatuses.get
    , module Network.Google.Resource.Content.Collectionstatuses.Get

    -- ** content.collectionstatuses.list
    , module Network.Google.Resource.Content.Collectionstatuses.List

    -- ** content.csses.get
    , module Network.Google.Resource.Content.Csses.Get

    -- ** content.csses.list
    , module Network.Google.Resource.Content.Csses.List

    -- ** content.csses.updatelabels
    , module Network.Google.Resource.Content.Csses.Updatelabels

    -- ** content.datafeeds.custombatch
    , module Network.Google.Resource.Content.Datafeeds.Custombatch

    -- ** content.datafeeds.delete
    , module Network.Google.Resource.Content.Datafeeds.Delete

    -- ** content.datafeeds.fetchnow
    , module Network.Google.Resource.Content.Datafeeds.Fetchnow

    -- ** content.datafeeds.get
    , module Network.Google.Resource.Content.Datafeeds.Get

    -- ** content.datafeeds.insert
    , module Network.Google.Resource.Content.Datafeeds.Insert

    -- ** content.datafeeds.list
    , module Network.Google.Resource.Content.Datafeeds.List

    -- ** content.datafeeds.update
    , module Network.Google.Resource.Content.Datafeeds.Update

    -- ** content.datafeedstatuses.custombatch
    , module Network.Google.Resource.Content.Datafeedstatuses.Custombatch

    -- ** content.datafeedstatuses.get
    , module Network.Google.Resource.Content.Datafeedstatuses.Get

    -- ** content.datafeedstatuses.list
    , module Network.Google.Resource.Content.Datafeedstatuses.List

    -- ** content.freelistingsprogram.get
    , module Network.Google.Resource.Content.FreeListingsprogram.Get

    -- ** content.freelistingsprogram.requestreview
    , module Network.Google.Resource.Content.FreeListingsprogram.Requestreview

    -- ** content.liasettings.custombatch
    , module Network.Google.Resource.Content.LiaSettings.Custombatch

    -- ** content.liasettings.get
    , module Network.Google.Resource.Content.LiaSettings.Get

    -- ** content.liasettings.getaccessiblegmbaccounts
    , module Network.Google.Resource.Content.LiaSettings.GetAccessiblegmbAccounts

    -- ** content.liasettings.list
    , module Network.Google.Resource.Content.LiaSettings.List

    -- ** content.liasettings.listposdataproviders
    , module Network.Google.Resource.Content.LiaSettings.ListposDataproviders

    -- ** content.liasettings.requestgmbaccess
    , module Network.Google.Resource.Content.LiaSettings.RequestgmbAccess

    -- ** content.liasettings.requestinventoryverification
    , module Network.Google.Resource.Content.LiaSettings.Requestinventoryverification

    -- ** content.liasettings.setinventoryverificationcontact
    , module Network.Google.Resource.Content.LiaSettings.Setinventoryverificationcontact

    -- ** content.liasettings.setposdataprovider
    , module Network.Google.Resource.Content.LiaSettings.SetposDataprovider

    -- ** content.liasettings.update
    , module Network.Google.Resource.Content.LiaSettings.Update

    -- ** content.localinventory.custombatch
    , module Network.Google.Resource.Content.Localinventory.Custombatch

    -- ** content.localinventory.insert
    , module Network.Google.Resource.Content.Localinventory.Insert

    -- ** content.orderinvoices.createchargeinvoice
    , module Network.Google.Resource.Content.Orderinvoices.Createchargeinvoice

    -- ** content.orderinvoices.createrefundinvoice
    , module Network.Google.Resource.Content.Orderinvoices.Createrefundinvoice

    -- ** content.orderreports.listdisbursements
    , module Network.Google.Resource.Content.Orderreports.Listdisbursements

    -- ** content.orderreports.listtransactions
    , module Network.Google.Resource.Content.Orderreports.Listtransactions

    -- ** content.orderreturns.acknowledge
    , module Network.Google.Resource.Content.Orderreturns.Acknowledge

    -- ** content.orderreturns.createorderreturn
    , module Network.Google.Resource.Content.Orderreturns.CreateOrderreturn

    -- ** content.orderreturns.get
    , module Network.Google.Resource.Content.Orderreturns.Get

    -- ** content.orderreturns.labels.create
    , module Network.Google.Resource.Content.Orderreturns.Labels.Create

    -- ** content.orderreturns.list
    , module Network.Google.Resource.Content.Orderreturns.List

    -- ** content.orderreturns.process
    , module Network.Google.Resource.Content.Orderreturns.Process

    -- ** content.orders.acknowledge
    , module Network.Google.Resource.Content.Orders.Acknowledge

    -- ** content.orders.advancetestorder
    , module Network.Google.Resource.Content.Orders.AdvancetestOrder

    -- ** content.orders.cancel
    , module Network.Google.Resource.Content.Orders.Cancel

    -- ** content.orders.cancellineitem
    , module Network.Google.Resource.Content.Orders.Cancellineitem

    -- ** content.orders.canceltestorderbycustomer
    , module Network.Google.Resource.Content.Orders.CanceltestOrderbycustomer

    -- ** content.orders.createtestorder
    , module Network.Google.Resource.Content.Orders.CreatetestOrder

    -- ** content.orders.createtestreturn
    , module Network.Google.Resource.Content.Orders.Createtestreturn

    -- ** content.orders.get
    , module Network.Google.Resource.Content.Orders.Get

    -- ** content.orders.getbymerchantorderid
    , module Network.Google.Resource.Content.Orders.GetbymerchantOrderid

    -- ** content.orders.gettestordertemplate
    , module Network.Google.Resource.Content.Orders.GettestOrdertemplate

    -- ** content.orders.instorerefundlineitem
    , module Network.Google.Resource.Content.Orders.Instorerefundlineitem

    -- ** content.orders.list
    , module Network.Google.Resource.Content.Orders.List

    -- ** content.orders.refunditem
    , module Network.Google.Resource.Content.Orders.Refunditem

    -- ** content.orders.refundorder
    , module Network.Google.Resource.Content.Orders.RefundOrder

    -- ** content.orders.rejectreturnlineitem
    , module Network.Google.Resource.Content.Orders.Rejectreturnlineitem

    -- ** content.orders.returnrefundlineitem
    , module Network.Google.Resource.Content.Orders.Returnrefundlineitem

    -- ** content.orders.setlineitemmetadata
    , module Network.Google.Resource.Content.Orders.Setlineitemmetadata

    -- ** content.orders.shiplineitems
    , module Network.Google.Resource.Content.Orders.Shiplineitems

    -- ** content.orders.updatelineitemshippingdetails
    , module Network.Google.Resource.Content.Orders.Updatelineitemshippingdetails

    -- ** content.orders.updatemerchantorderid
    , module Network.Google.Resource.Content.Orders.UpdatemerchantOrderid

    -- ** content.orders.updateshipment
    , module Network.Google.Resource.Content.Orders.Updateshipment

    -- ** content.ordertrackingsignals.create
    , module Network.Google.Resource.Content.Ordertrackingsignals.Create

    -- ** content.pos.custombatch
    , module Network.Google.Resource.Content.Pos.Custombatch

    -- ** content.pos.delete
    , module Network.Google.Resource.Content.Pos.Delete

    -- ** content.pos.get
    , module Network.Google.Resource.Content.Pos.Get

    -- ** content.pos.insert
    , module Network.Google.Resource.Content.Pos.Insert

    -- ** content.pos.inventory
    , module Network.Google.Resource.Content.Pos.Inventory

    -- ** content.pos.list
    , module Network.Google.Resource.Content.Pos.List

    -- ** content.pos.sale
    , module Network.Google.Resource.Content.Pos.Sale

    -- ** content.products.custombatch
    , module Network.Google.Resource.Content.Products.Custombatch

    -- ** content.products.delete
    , module Network.Google.Resource.Content.Products.Delete

    -- ** content.products.get
    , module Network.Google.Resource.Content.Products.Get

    -- ** content.products.insert
    , module Network.Google.Resource.Content.Products.Insert

    -- ** content.products.list
    , module Network.Google.Resource.Content.Products.List

    -- ** content.products.update
    , module Network.Google.Resource.Content.Products.Update

    -- ** content.productstatuses.custombatch
    , module Network.Google.Resource.Content.Productstatuses.Custombatch

    -- ** content.productstatuses.get
    , module Network.Google.Resource.Content.Productstatuses.Get

    -- ** content.productstatuses.list
    , module Network.Google.Resource.Content.Productstatuses.List

    -- ** content.productstatuses.repricingreports.list
    , module Network.Google.Resource.Content.Productstatuses.Repricingreports.List

    -- ** content.pubsubnotificationsettings.get
    , module Network.Google.Resource.Content.PubsubnotificationSettings.Get

    -- ** content.pubsubnotificationsettings.update
    , module Network.Google.Resource.Content.PubsubnotificationSettings.Update

    -- ** content.regionalinventory.custombatch
    , module Network.Google.Resource.Content.Regionalinventory.Custombatch

    -- ** content.regionalinventory.insert
    , module Network.Google.Resource.Content.Regionalinventory.Insert

    -- ** content.regions.create
    , module Network.Google.Resource.Content.Regions.Create

    -- ** content.regions.delete
    , module Network.Google.Resource.Content.Regions.Delete

    -- ** content.regions.get
    , module Network.Google.Resource.Content.Regions.Get

    -- ** content.regions.list
    , module Network.Google.Resource.Content.Regions.List

    -- ** content.regions.patch
    , module Network.Google.Resource.Content.Regions.Patch

    -- ** content.reports.search
    , module Network.Google.Resource.Content.Reports.Search

    -- ** content.repricingrules.create
    , module Network.Google.Resource.Content.Repricingrules.Create

    -- ** content.repricingrules.delete
    , module Network.Google.Resource.Content.Repricingrules.Delete

    -- ** content.repricingrules.get
    , module Network.Google.Resource.Content.Repricingrules.Get

    -- ** content.repricingrules.list
    , module Network.Google.Resource.Content.Repricingrules.List

    -- ** content.repricingrules.patch
    , module Network.Google.Resource.Content.Repricingrules.Patch

    -- ** content.repricingrules.repricingreports.list
    , module Network.Google.Resource.Content.Repricingrules.Repricingreports.List

    -- ** content.returnaddress.custombatch
    , module Network.Google.Resource.Content.Returnaddress.Custombatch

    -- ** content.returnaddress.delete
    , module Network.Google.Resource.Content.Returnaddress.Delete

    -- ** content.returnaddress.get
    , module Network.Google.Resource.Content.Returnaddress.Get

    -- ** content.returnaddress.insert
    , module Network.Google.Resource.Content.Returnaddress.Insert

    -- ** content.returnaddress.list
    , module Network.Google.Resource.Content.Returnaddress.List

    -- ** content.returnpolicy.custombatch
    , module Network.Google.Resource.Content.Returnpolicy.Custombatch

    -- ** content.returnpolicy.delete
    , module Network.Google.Resource.Content.Returnpolicy.Delete

    -- ** content.returnpolicy.get
    , module Network.Google.Resource.Content.Returnpolicy.Get

    -- ** content.returnpolicy.insert
    , module Network.Google.Resource.Content.Returnpolicy.Insert

    -- ** content.returnpolicy.list
    , module Network.Google.Resource.Content.Returnpolicy.List

    -- ** content.returnpolicyonline.create
    , module Network.Google.Resource.Content.ReturnpolicyOnline.Create

    -- ** content.returnpolicyonline.delete
    , module Network.Google.Resource.Content.ReturnpolicyOnline.Delete

    -- ** content.returnpolicyonline.get
    , module Network.Google.Resource.Content.ReturnpolicyOnline.Get

    -- ** content.returnpolicyonline.list
    , module Network.Google.Resource.Content.ReturnpolicyOnline.List

    -- ** content.returnpolicyonline.patch
    , module Network.Google.Resource.Content.ReturnpolicyOnline.Patch

    -- ** content.settlementreports.get
    , module Network.Google.Resource.Content.Settlementreports.Get

    -- ** content.settlementreports.list
    , module Network.Google.Resource.Content.Settlementreports.List

    -- ** content.settlementtransactions.list
    , module Network.Google.Resource.Content.Settlementtransactions.List

    -- ** content.shippingsettings.custombatch
    , module Network.Google.Resource.Content.ShippingSettings.Custombatch

    -- ** content.shippingsettings.get
    , module Network.Google.Resource.Content.ShippingSettings.Get

    -- ** content.shippingsettings.getsupportedcarriers
    , module Network.Google.Resource.Content.ShippingSettings.Getsupportedcarriers

    -- ** content.shippingsettings.getsupportedholidays
    , module Network.Google.Resource.Content.ShippingSettings.Getsupportedholidays

    -- ** content.shippingsettings.getsupportedpickupservices
    , module Network.Google.Resource.Content.ShippingSettings.GetsupportedpickupServices

    -- ** content.shippingsettings.list
    , module Network.Google.Resource.Content.ShippingSettings.List

    -- ** content.shippingsettings.update
    , module Network.Google.Resource.Content.ShippingSettings.Update

    -- ** content.shoppingadsprogram.get
    , module Network.Google.Resource.Content.Shoppingadsprogram.Get

    -- ** content.shoppingadsprogram.requestreview
    , module Network.Google.Resource.Content.Shoppingadsprogram.Requestreview

    -- * Types

    -- ** ReturnPolicyOnlineReturnReasonCategoryInfoReturnLabelSource
    , ReturnPolicyOnlineReturnReasonCategoryInfoReturnLabelSource (..)

    -- ** OrdersAcknowledgeRequest
    , OrdersAcknowledgeRequest
    , ordersAcknowledgeRequest
    , oarOperationId

    -- ** AccountTax
    , AccountTax
    , accountTax
    , atRules
    , atKind
    , atAccountId

    -- ** OrderinvoicesCreateRefundInvoiceResponse
    , OrderinvoicesCreateRefundInvoiceResponse
    , orderinvoicesCreateRefundInvoiceResponse
    , ocrirKind
    , ocrirExecutionStatus

    -- ** OrdersUpdateMerchantOrderIdRequest
    , OrdersUpdateMerchantOrderIdRequest
    , ordersUpdateMerchantOrderIdRequest
    , oumoirMerchantOrderId
    , oumoirOperationId

    -- ** ReturnpolicyCustomBatchRequest
    , ReturnpolicyCustomBatchRequest
    , returnpolicyCustomBatchRequest
    , rcbrEntries

    -- ** OrderreturnsAcknowledgeResponse
    , OrderreturnsAcknowledgeResponse
    , orderreturnsAcknowledgeResponse
    , oarKind
    , oarExecutionStatus

    -- ** OrderReportTransaction
    , OrderReportTransaction
    , orderReportTransaction
    , ortMerchantId
    , ortDisbursementId
    , ortDisbursementCreationDate
    , ortTransactionDate
    , ortDisbursementDate
    , ortMerchantOrderId
    , ortProductAmount
    , ortOrderId
    , ortDisbursementAmount

    -- ** OrdersAdvanceTestOrderResponse
    , OrdersAdvanceTestOrderResponse
    , ordersAdvanceTestOrderResponse
    , oatorKind

    -- ** ProductsCustomBatchResponse
    , ProductsCustomBatchResponse
    , productsCustomBatchResponse
    , pcbrEntries
    , pcbrKind

    -- ** OrderMerchantProvidedAnnotation
    , OrderMerchantProvidedAnnotation
    , orderMerchantProvidedAnnotation
    , ompaValue
    , ompaKey

    -- ** OrdersGettestOrdertemplateTemplateName
    , OrdersGettestOrdertemplateTemplateName (..)

    -- ** DatafeedstatusesCustomBatchResponse
    , DatafeedstatusesCustomBatchResponse
    , datafeedstatusesCustomBatchResponse
    , dcbrEntries
    , dcbrKind

    -- ** ReturnPricingInfo
    , ReturnPricingInfo
    , returnPricingInfo
    , rpiRefundableItemsTotalAmount
    , rpiMaxReturnShippingFee
    , rpiChargeReturnShippingFee
    , rpiRefundableShippingAmount
    , rpiTotalRefundedAmount

    -- ** ListCollectionsResponse
    , ListCollectionsResponse
    , listCollectionsResponse
    , lcrNextPageToken
    , lcrResources

    -- ** OrderReturn
    , OrderReturn
    , orderReturn
    , orQuantity
    , orActor
    , orReason
    , orCreationDate
    , orReasonText

    -- ** ReportRow
    , ReportRow
    , reportRow
    , rrMetrics
    , rrSegments

    -- ** AccounttaxCustomBatchResponseEntry
    , AccounttaxCustomBatchResponseEntry
    , accounttaxCustomBatchResponseEntry
    , acbreAccountTax
    , acbreKind
    , acbreErrors
    , acbreBatchId

    -- ** SegmentsProgram
    , SegmentsProgram (..)

    -- ** PosSaleResponse
    , PosSaleResponse
    , posSaleResponse
    , psrStoreCode
    , psrKind
    , psrItemId
    , psrQuantity
    , psrTargetCountry
    , psrGtin
    , psrPrice
    , psrContentLanguage
    , psrTimestamp
    , psrSaleId

    -- ** Amount
    , Amount
    , amount
    , aTaxAmount
    , aPriceAmount

    -- ** AccountsAuthInfoResponse
    , AccountsAuthInfoResponse
    , accountsAuthInfoResponse
    , aairKind
    , aairAccountIdentifiers

    -- ** OrderReportDisbursement
    , OrderReportDisbursement
    , orderReportDisbursement
    , ordMerchantId
    , ordDisbursementId
    , ordDisbursementCreationDate
    , ordDisbursementDate
    , ordDisbursementAmount

    -- ** ShoppingAdsProgramStatusRegionStatusEligibilityStatus
    , ShoppingAdsProgramStatusRegionStatusEligibilityStatus (..)

    -- ** RequestReviewFreeListingsRequest
    , RequestReviewFreeListingsRequest
    , requestReviewFreeListingsRequest
    , rrflrRegionCode

    -- ** LocalInventory
    , LocalInventory
    , localInventory
    , liPickupSla
    , liStoreCode
    , liKind
    , liPickupMethod
    , liQuantity
    , liSalePrice
    , liAvailability
    , liSalePriceEffectiveDate
    , liPrice
    , liInstoreProductLocation

    -- ** UnitInvoice
    , UnitInvoice
    , unitInvoice
    , uiUnitPriceTaxes
    , uiAdditionalCharges
    , uiUnitPrice

    -- ** PosSale
    , PosSale
    , posSale
    , psStoreCode
    , psKind
    , psItemId
    , psQuantity
    , psTargetCountry
    , psGtin
    , psPrice
    , psContentLanguage
    , psTimestamp
    , psSaleId

    -- ** AccountStatusItemLevelIssue
    , AccountStatusItemLevelIssue
    , accountStatusItemLevelIssue
    , asiliNumItems
    , asiliResolution
    , asiliDocumentation
    , asiliCode
    , asiliServability
    , asiliAttributeName
    , asiliDescription
    , asiliDetail

    -- ** OrderreturnsProcessResponse
    , OrderreturnsProcessResponse
    , orderreturnsProcessResponse
    , oprKind
    , oprExecutionStatus

    -- ** LiaSettingsRequestGmbAccessResponse
    , LiaSettingsRequestGmbAccessResponse
    , liaSettingsRequestGmbAccessResponse
    , lsrgarKind

    -- ** ProductStatusDestinationStatus
    , ProductStatusDestinationStatus
    , productStatusDestinationStatus
    , psdsDestination
    , psdsStatus
    , psdsPendingCountries
    , psdsApprovedCountries
    , psdsDisApprovedCountries

    -- ** RegionalInventory
    , RegionalInventory
    , regionalInventory
    , riRegionId
    , riKind
    , riSalePrice
    , riAvailability
    , riCustomAttributes
    , riSalePriceEffectiveDate
    , riPrice

    -- ** AccountTaxTaxRule
    , AccountTaxTaxRule
    , accountTaxTaxRule
    , attrUseGlobalRate
    , attrCountry
    , attrShippingTaxed
    , attrLocationId
    , attrRatePercent

    -- ** RepricingRuleReportType
    , RepricingRuleReportType (..)

    -- ** LocalinventoryCustomBatchResponseEntry
    , LocalinventoryCustomBatchResponseEntry
    , localinventoryCustomBatchResponseEntry
    , lcbreKind
    , lcbreErrors
    , lcbreBatchId

    -- ** PostalCodeGroup
    , PostalCodeGroup
    , postalCodeGroup
    , pcgCountry
    , pcgPostalCodeRanges
    , pcgName

    -- ** TestOrderPickupDetailsPickupPerson
    , TestOrderPickupDetailsPickupPerson
    , testOrderPickupDetailsPickupPerson
    , topdppName
    , topdppPhoneNumber

    -- ** Metrics
    , Metrics
    , metrics
    , mShippedItemSalesMicros
    , mShippedItems
    , mImpressions
    , mRejectedItems
    , mItemDaysToShip
    , mShippedOrders
    , mUnshippedItems
    , mDaysToShip
    , mAovMicros
    , mCtr
    , mClicks
    , mReturnedItems
    , mUnshippedOrders
    , mOrders
    , mAos
    , mItemFillRate
    , mReturnsMicros
    , mReturnRate
    , mOrderedItemSalesMicros
    , mOrderedItems

    -- ** DatafeedsCustomBatchRequest
    , DatafeedsCustomBatchRequest
    , datafeedsCustomBatchRequest
    , dEntries

    -- ** RepricingRuleStatsBasedRule
    , RepricingRuleStatsBasedRule
    , repricingRuleStatsBasedRule
    , rrsbrPriceDelta
    , rrsbrPercentageDelta

    -- ** OrdersRefundItemRequest
    , OrdersRefundItemRequest
    , ordersRefundItemRequest
    , orirItems
    , orirReason
    , orirShipping
    , orirOperationId
    , orirReasonText

    -- ** RegionalinventoryCustomBatchResponseEntry
    , RegionalinventoryCustomBatchResponseEntry
    , regionalinventoryCustomBatchResponseEntry
    , rcbreRegionalInventory
    , rcbreKind
    , rcbreErrors
    , rcbreBatchId

    -- ** OrdersCancelTestOrderByCustomerResponse
    , OrdersCancelTestOrderByCustomerResponse
    , ordersCancelTestOrderByCustomerResponse
    , octobcrKind

    -- ** LiaOnDisplayToOrderSettings
    , LiaOnDisplayToOrderSettings
    , liaOnDisplayToOrderSettings
    , lodtosStatus
    , lodtosShippingCostPolicyURL

    -- ** OrderOrderAnnotation
    , OrderOrderAnnotation
    , orderOrderAnnotation
    , ooaValue
    , ooaKey

    -- ** AccountAddress
    , AccountAddress
    , accountAddress
    , aaStreetAddress
    , aaCountry
    , aaPostalCode
    , aaLocality
    , aaRegion

    -- ** FreeListingsProgramStatusState
    , FreeListingsProgramStatusState (..)

    -- ** OrderLineItemAdjustment
    , OrderLineItemAdjustment
    , orderLineItemAdjustment
    , oliaTaxAdjustment
    , oliaPriceAdjustment
    , oliaType

    -- ** ReturnaddressCustomBatchRequest
    , ReturnaddressCustomBatchRequest
    , returnaddressCustomBatchRequest
    , rEntries

    -- ** InvoiceSummaryAdditionalChargeSummary
    , InvoiceSummaryAdditionalChargeSummary
    , invoiceSummaryAdditionalChargeSummary
    , isacsTotalAmount
    , isacsType

    -- ** ListRegionsResponse
    , ListRegionsResponse
    , listRegionsResponse
    , lrrNextPageToken
    , lrrRegions

    -- ** RefundReason
    , RefundReason
    , refundReason
    , rrReasonCode
    , rrDescription

    -- ** OrderLineItemShippingDetailsMethod
    , OrderLineItemShippingDetailsMethod
    , orderLineItemShippingDetailsMethod
    , olisdmCarrier
    , olisdmMethodName
    , olisdmMaxDaysInTransit
    , olisdmMinDaysInTransit

    -- ** Datafeed
    , Datafeed
    , datafeed
    , dKind
    , dFormat
    , dAttributeLanguage
    , dFetchSchedule
    , dName
    , dTargets
    , dId
    , dContentType
    , dFileName

    -- ** ReturnPolicyPolicy
    , ReturnPolicyPolicy
    , returnPolicyPolicy
    , rppLastReturnDate
    , rppNumberOfDays
    , rppType

    -- ** OrdersCreateTestOrderResponse
    , OrdersCreateTestOrderResponse
    , ordersCreateTestOrderResponse
    , octorKind
    , octorOrderId

    -- ** ShoppingAdsProgramStatus
    , ShoppingAdsProgramStatus
    , shoppingAdsProgramStatus
    , sapsState
    , sapsRegionStatuses

    -- ** RepricingProductReport
    , RepricingProductReport
    , repricingProductReport
    , rprOrderItemCount
    , rprRuleIds
    , rprHighWatermark
    , rprApplicationCount
    , rprDate
    , rprLowWatermark
    , rprBuyboxWinningProductStats
    , rprInApplicabilityDetails
    , rprType
    , rprTotalGmv

    -- ** AccountsCustomBatchResponseEntry
    , AccountsCustomBatchResponseEntry
    , accountsCustomBatchResponseEntry
    , aKind
    , aAccount
    , aErrors
    , aBatchId

    -- ** GmbAccounts
    , GmbAccounts
    , gmbAccounts
    , gaGmbAccounts
    , gaAccountId

    -- ** CustomerReturnReason
    , CustomerReturnReason
    , customerReturnReason
    , crrReasonCode
    , crrDescription

    -- ** AccountIdentifier
    , AccountIdentifier
    , accountIdentifier
    , aiMerchantId
    , aiAggregatorId

    -- ** PosCustomBatchRequest
    , PosCustomBatchRequest
    , posCustomBatchRequest
    , pEntries

    -- ** ReturnAddressAddress
    , ReturnAddressAddress
    , returnAddressAddress
    , raaRecipientName
    , raaStreetAddress
    , raaCountry
    , raaPostalCode
    , raaLocality
    , raaRegion

    -- ** OrderinvoicesCreateChargeInvoiceRequest
    , OrderinvoicesCreateChargeInvoiceRequest
    , orderinvoicesCreateChargeInvoiceRequest
    , occirShipmentGroupId
    , occirLineItemInvoices
    , occirInvoiceId
    , occirInvoiceSummary
    , occirOperationId

    -- ** OrderreturnsPartialRefund
    , OrderreturnsPartialRefund
    , orderreturnsPartialRefund
    , oprTaxAmount
    , oprPriceAmount

    -- ** SearchResponse
    , SearchResponse
    , searchResponse
    , srNextPageToken
    , srResults

    -- ** OrderLineItem
    , OrderLineItem
    , orderLineItem
    , oliAnnotations
    , oliAdjustments
    , oliQuantityOrdered
    , oliReturnInfo
    , oliQuantityReadyForPickup
    , oliQuantityDelivered
    , oliQuantityUndeliverable
    , oliShippingDetails
    , oliQuantityPending
    , oliCancellations
    , oliQuantityCanceled
    , oliId
    , oliTax
    , oliPrice
    , oliQuantityShipped
    , oliQuantityReturned
    , oliProduct
    , oliReturns

    -- ** MinimumOrderValueTable
    , MinimumOrderValueTable
    , minimumOrderValueTable
    , movtStoreCodeSetWithMovs

    -- ** RequestPhoneVerificationRequest
    , RequestPhoneVerificationRequest
    , requestPhoneVerificationRequest
    , rpvrLanguageCode
    , rpvrPhoneVerificationMethod
    , rpvrPhoneRegionCode
    , rpvrPhoneNumber

    -- ** ReturnPolicyOnlineItemConditionsItem
    , ReturnPolicyOnlineItemConditionsItem (..)

    -- ** Service
    , Service
    , service
    , sDeliveryCountry
    , sMinimumOrderValueTable
    , sShipmentType
    , sRateGroups
    , sDeliveryTime
    , sActive
    , sName
    , sCurrency
    , sEligibility
    , sMinimumOrderValue
    , sPickupService

    -- ** ShoppingAdsProgramStatusState
    , ShoppingAdsProgramStatusState (..)

    -- ** RepricingRuleReportBuyboxWinningRuleStats
    , RepricingRuleReportBuyboxWinningRuleStats
    , repricingRuleReportBuyboxWinningRuleStats
    , rrrbwrsBuyboxWonProductCount

    -- ** ProductstatusesCustomBatchResponse
    , ProductstatusesCustomBatchResponse
    , productstatusesCustomBatchResponse
    , proEntries
    , proKind

    -- ** ProductUnitPricingMeasure
    , ProductUnitPricingMeasure
    , productUnitPricingMeasure
    , pupmValue
    , pupmUnit

    -- ** OrdersUpdateShipmentRequest
    , OrdersUpdateShipmentRequest
    , ordersUpdateShipmentRequest
    , ousrCarrier
    , ousrStatus
    , ousrScheduledDeliveryDetails
    , ousrTrackingId
    , ousrShipmentId
    , ousrUndeliveredDate
    , ousrLastPickupDate
    , ousrDeliveryDate
    , ousrOperationId
    , ousrReadyPickupDate

    -- ** OrderShipmentLineItemShipment
    , OrderShipmentLineItemShipment
    , orderShipmentLineItemShipment
    , oslisQuantity
    , oslisLineItemId
    , oslisProductId

    -- ** OrdersListStatuses
    , OrdersListStatuses (..)

    -- ** ReturnPolicyOnlinePolicy
    , ReturnPolicyOnlinePolicy
    , returnPolicyOnlinePolicy
    , rpopDays
    , rpopType

    -- ** OrderreportsListTransactionsResponse
    , OrderreportsListTransactionsResponse
    , orderreportsListTransactionsResponse
    , oltrNextPageToken
    , oltrTransactions
    , oltrKind

    -- ** SettlementTransactionAmount
    , SettlementTransactionAmount
    , settlementTransactionAmount
    , staCommission
    , staTransactionAmount
    , staType
    , staDescription

    -- ** LiaSettingsCustomBatchResponse
    , LiaSettingsCustomBatchResponse
    , liaSettingsCustomBatchResponse
    , lscbrEntries
    , lscbrKind

    -- ** LoyaltyPoints
    , LoyaltyPoints
    , loyaltyPoints
    , lpRatio
    , lpPointsValue
    , lpName

    -- ** LiaSettingsSetPosDataProviderResponse
    , LiaSettingsSetPosDataProviderResponse
    , liaSettingsSetPosDataProviderResponse
    , lsspdprKind

    -- ** ListCollectionStatusesResponse
    , ListCollectionStatusesResponse
    , listCollectionStatusesResponse
    , lcsrNextPageToken
    , lcsrResources

    -- ** ReturnPolicyOnlineReturnReasonCategoryInfo
    , ReturnPolicyOnlineReturnReasonCategoryInfo
    , returnPolicyOnlineReturnReasonCategoryInfo
    , rporrciReturnReasonCategory
    , rporrciReturnShippingFee
    , rporrciReturnLabelSource

    -- ** WarehouseBasedDeliveryTime
    , WarehouseBasedDeliveryTime
    , warehouseBasedDeliveryTime
    , wbdtCarrier
    , wbdtOriginPostalCode
    , wbdtOriginCountry
    , wbdtOriginStreetAddress
    , wbdtCarrierService
    , wbdtOriginAdministrativeArea
    , wbdtOriginCity

    -- ** SettlementTransactionTransaction
    , SettlementTransactionTransaction
    , settlementTransactionTransaction
    , sttPostDate
    , sttType

    -- ** AccountStatus
    , AccountStatus
    , accountStatus
    , asAccountManagement
    , asAccountLevelIssues
    , asKind
    , asAccountId
    , asProducts
    , asWebsiteClaimed

    -- ** ShippingSettingsCustomBatchRequestEntry
    , ShippingSettingsCustomBatchRequestEntry
    , shippingSettingsCustomBatchRequestEntry
    , sscbreMerchantId
    , sscbreAccountId
    , sscbreMethod
    , sscbreShippingSettings
    , sscbreBatchId

    -- ** PosInventoryResponse
    , PosInventoryResponse
    , posInventoryResponse
    , pirStoreCode
    , pirKind
    , pirItemId
    , pirQuantity
    , pirTargetCountry
    , pirGtin
    , pirPrice
    , pirContentLanguage
    , pirTimestamp

    -- ** LinkService
    , LinkService
    , linkService
    , lsStatus
    , lsService

    -- ** AccountstatusesCustomBatchRequest
    , AccountstatusesCustomBatchRequest
    , accountstatusesCustomBatchRequest
    , acbrEntries

    -- ** AccountsUpdateLabelsResponse
    , AccountsUpdateLabelsResponse
    , accountsUpdateLabelsResponse
    , aulrKind

    -- ** AccounttaxListResponse
    , AccounttaxListResponse
    , accounttaxListResponse
    , alrNextPageToken
    , alrKind
    , alrResources

    -- ** LiaSettingsRequestInventoryVerificationResponse
    , LiaSettingsRequestInventoryVerificationResponse
    , liaSettingsRequestInventoryVerificationResponse
    , lsrivrKind

    -- ** OrderinvoicesCreateChargeInvoiceResponse
    , OrderinvoicesCreateChargeInvoiceResponse
    , orderinvoicesCreateChargeInvoiceResponse
    , occirKind
    , occirExecutionStatus

    -- ** RepricingRuleEligibleOfferMatcher
    , RepricingRuleEligibleOfferMatcher
    , repricingRuleEligibleOfferMatcher
    , rreomItemGroupIdMatcher
    , rreomOfferIdMatcher
    , rreomBrandMatcher
    , rreomSkipWhenOnPromotion
    , rreomMatcherOption

    -- ** RequestReviewShoppingAdsRequest
    , RequestReviewShoppingAdsRequest
    , requestReviewShoppingAdsRequest
    , rrsarRegionCode

    -- ** DatafeedsFetchNowResponse
    , DatafeedsFetchNowResponse
    , datafeedsFetchNowResponse
    , dfnrKind

    -- ** OrdersGetTestOrderTemplateResponse
    , OrdersGetTestOrderTemplateResponse
    , ordersGetTestOrderTemplateResponse
    , ogtotrKind
    , ogtotrTemplate

    -- ** ReturnaddressCustomBatchResponse
    , ReturnaddressCustomBatchResponse
    , returnaddressCustomBatchResponse
    , retEntries
    , retKind

    -- ** AccountsCustomBatchRequestEntry
    , AccountsCustomBatchRequestEntry
    , accountsCustomBatchRequestEntry
    , accMerchantId
    , accForce
    , accAccount
    , accAccountId
    , accMethod
    , accView
    , accLabelIds
    , accOverwrite
    , accBatchId
    , accLinkRequest

    -- ** LinkedAccount
    , LinkedAccount
    , linkedAccount
    , laLinkedAccountId
    , laServices

    -- ** Weight
    , Weight
    , weight
    , wValue
    , wUnit

    -- ** OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
    , OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
    , orderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
    , ocbrecriroReason
    , ocbrecriroDescription

    -- ** OrderPickupDetails
    , OrderPickupDetails
    , orderPickupDetails
    , opdPickupType
    , opdCollectors
    , opdAddress
    , opdLocationId

    -- ** OrderreturnsReturnItem
    , OrderreturnsReturnItem
    , orderreturnsReturnItem
    , oriReject
    , oriReturnItemId
    , oriRefund

    -- ** LiaSettingsListResponse
    , LiaSettingsListResponse
    , liaSettingsListResponse
    , lslrNextPageToken
    , lslrKind
    , lslrResources

    -- ** Error'
    , Error'
    , error'
    , eDomain
    , eReason
    , eMessage

    -- ** ProductstatusesListResponse
    , ProductstatusesListResponse
    , productstatusesListResponse
    , plrNextPageToken
    , plrKind
    , plrResources

    -- ** OnboardBuyOnGoogleProgramRequest
    , OnboardBuyOnGoogleProgramRequest
    , onboardBuyOnGoogleProgramRequest
    , obogprCustomerServiceEmail

    -- ** OrderPromotionItem
    , OrderPromotionItem
    , orderPromotionItem
    , opiQuantity
    , opiLineItemId
    , opiOfferId
    , opiProductId

    -- ** PosCustomBatchResponse
    , PosCustomBatchResponse
    , posCustomBatchResponse
    , posEntries
    , posKind

    -- ** OrdersCreateTestOrderRequest
    , OrdersCreateTestOrderRequest
    , ordersCreateTestOrderRequest
    , octorTemplateName
    , octorCountry
    , octorTestOrder

    -- ** FreeListingsProgramStatusRegionStatusEligibilityStatus
    , FreeListingsProgramStatusRegionStatusEligibilityStatus (..)

    -- ** AccountUser
    , AccountUser
    , accountUser
    , auAdmin
    , auPaymentsManager
    , auOrderManager
    , auEmailAddress
    , auPaymentsAnalyst

    -- ** AccountCustomerService
    , AccountCustomerService
    , accountCustomerService
    , acsEmail
    , acsURL
    , acsPhoneNumber

    -- ** OrderreturnsListOrderBy
    , OrderreturnsListOrderBy (..)

    -- ** SettlementtransactionsListResponse
    , SettlementtransactionsListResponse
    , settlementtransactionsListResponse
    , slrNextPageToken
    , slrKind
    , slrResources

    -- ** GmbAccountsGmbAccount
    , GmbAccountsGmbAccount
    , gmbAccountsGmbAccount
    , gagaEmail
    , gagaListingCount
    , gagaName
    , gagaType

    -- ** OrdersInStoreRefundLineItemResponse
    , OrdersInStoreRefundLineItemResponse
    , ordersInStoreRefundLineItemResponse
    , oisrlirKind
    , oisrlirExecutionStatus

    -- ** ProductSubscriptionCost
    , ProductSubscriptionCost
    , productSubscriptionCost
    , pscAmount
    , pscPeriod
    , pscPeriodLength

    -- ** DatafeedsCustomBatchRequestEntry
    , DatafeedsCustomBatchRequestEntry
    , datafeedsCustomBatchRequestEntry
    , dcbreMerchantId
    , dcbreDatafeed
    , dcbreMethod
    , dcbreDatafeedId
    , dcbreBatchId

    -- ** VerifyPhoneNumberRequestPhoneVerificationMethod
    , VerifyPhoneNumberRequestPhoneVerificationMethod (..)

    -- ** OrderCustomerMarketingRightsInfo
    , OrderCustomerMarketingRightsInfo
    , orderCustomerMarketingRightsInfo
    , ocmriExplicitMarketingPreference
    , ocmriMarketingEmailAddress
    , ocmriLastUpdatedTimestamp

    -- ** MerchantOrderReturnItem
    , MerchantOrderReturnItem
    , merchantOrderReturnItem
    , moriReturnShipmentIds
    , moriMerchantReturnReason
    , moriState
    , moriReturnItemId
    , moriShipmentGroupId
    , moriCustomerReturnReason
    , moriItemId
    , moriRefundableAmount
    , moriShipmentUnitId
    , moriProduct
    , moriMerchantRejectionReason

    -- ** PubsubNotificationSettings
    , PubsubNotificationSettings
    , pubsubNotificationSettings
    , pnsRegisteredEvents
    , pnsKind
    , pnsCloudTopicName

    -- ** AccountStatusAccountLevelIssue
    , AccountStatusAccountLevelIssue
    , accountStatusAccountLevelIssue
    , asaliDestination
    , asaliCountry
    , asaliSeverity
    , asaliDocumentation
    , asaliId
    , asaliTitle
    , asaliDetail

    -- ** ListRepricingRulesResponse
    , ListRepricingRulesResponse
    , listRepricingRulesResponse
    , lrrrNextPageToken
    , lrrrRepricingRules

    -- ** Value
    , Value
    , value
    , vPricePercentage
    , vCarrierRateName
    , vFlatRate
    , vSubtableName
    , vNoShipping

    -- ** Installment
    , Installment
    , installment
    , iAmount
    , iMonths

    -- ** VerifyPhoneNumberResponse
    , VerifyPhoneNumberResponse
    , verifyPhoneNumberResponse
    , vpnrVerifiedPhoneNumber

    -- ** PickupServicesPickupService
    , PickupServicesPickupService
    , pickupServicesPickupService
    , pspsCountry
    , pspsServiceName
    , pspsCarrierName

    -- ** OrderTrackingSignalShippingInfo
    , OrderTrackingSignalShippingInfo
    , orderTrackingSignalShippingInfo
    , otssiOriginPostalCode
    , otssiTrackingId
    , otssiShipmentId
    , otssiShippingStatus
    , otssiCarrierServiceName
    , otssiOriginRegionCode
    , otssiEarliestDeliveryPromiseTime
    , otssiActualDeliveryTime
    , otssiLatestDeliveryPromiseTime
    , otssiCarrierName
    , otssiShippedTime

    -- ** DatafeedFetchSchedule
    , DatafeedFetchSchedule
    , datafeedFetchSchedule
    , dfsFetchURL
    , dfsUsername
    , dfsMinuteOfHour
    , dfsPassword
    , dfsDayOfMonth
    , dfsHour
    , dfsWeekday
    , dfsTimeZone
    , dfsPaused

    -- ** RegionalinventoryCustomBatchResponse
    , RegionalinventoryCustomBatchResponse
    , regionalinventoryCustomBatchResponse
    , regEntries
    , regKind

    -- ** ReturnPolicyOnlineReturnShippingFee
    , ReturnPolicyOnlineReturnShippingFee
    , returnPolicyOnlineReturnShippingFee
    , rporsfFixedFee
    , rporsfType

    -- ** BuyOnGoogleProgramStatusParticipationStage
    , BuyOnGoogleProgramStatusParticipationStage (..)

    -- ** PosStore
    , PosStore
    , posStore
    , pssStoreCode
    , pssKind
    , pssStoreAddress

    -- ** LiaSettingsSetInventoryVerificationContactResponse
    , LiaSettingsSetInventoryVerificationContactResponse
    , liaSettingsSetInventoryVerificationContactResponse
    , lssivcrKind

    -- ** ShippingSettingsGetSupportedCarriersResponse
    , ShippingSettingsGetSupportedCarriersResponse
    , shippingSettingsGetSupportedCarriersResponse
    , ssgscrKind
    , ssgscrCarriers

    -- ** PosDataProvidersPosDataProvider
    , PosDataProvidersPosDataProvider
    , posDataProvidersPosDataProvider
    , pdppdpProviderId
    , pdppdpFullName
    , pdppdpDisplayName

    -- ** LocalinventoryCustomBatchResponse
    , LocalinventoryCustomBatchResponse
    , localinventoryCustomBatchResponse
    , lcbrEntries
    , lcbrKind

    -- ** HolidaysHoliday
    , HolidaysHoliday
    , holidaysHoliday
    , hhDeliveryGuaranteeHour
    , hhDate
    , hhDeliveryGuaranteeDate
    , hhCountryCode
    , hhId
    , hhType

    -- ** Css
    , Css
    , css
    , cFullName
    , cCssDomainId
    , cCssGroupId
    , cHomepageURI
    , cDisplayName
    , cLabelIds

    -- ** AccountsListResponse
    , AccountsListResponse
    , accountsListResponse
    , accNextPageToken
    , accKind
    , accResources

    -- ** OrderPickupDetailsCollector
    , OrderPickupDetailsCollector
    , orderPickupDetailsCollector
    , opdcName
    , opdcPhoneNumber

    -- ** AccountBusinessInformation
    , AccountBusinessInformation
    , accountBusinessInformation
    , abiAddress
    , abiPhoneNumber
    , abiCustomerService

    -- ** CarriersCarrier
    , CarriersCarrier
    , carriersCarrier
    , ccCountry
    , ccName
    , ccEddServices
    , ccServices

    -- ** CarrierRate
    , CarrierRate
    , carrierRate
    , crOriginPostalCode
    , crFlatAdjustment
    , crCarrierService
    , crName
    , crPercentageAdjustment
    , crCarrierName

    -- ** OrderreturnsCreateOrderReturnRequest
    , OrderreturnsCreateOrderReturnRequest
    , orderreturnsCreateOrderReturnRequest
    , ocorrReturnMethodType
    , ocorrLineItems
    , ocorrOperationId
    , ocorrOrderId

    -- ** ShippingSettingsListResponse
    , ShippingSettingsListResponse
    , shippingSettingsListResponse
    , sslrNextPageToken
    , sslrKind
    , sslrResources

    -- ** BuyOnGoogleProgramStatus
    , BuyOnGoogleProgramStatus
    , buyOnGoogleProgramStatus
    , bogpsCustomerServicePendingEmail
    , bogpsParticipationStage
    , bogpsCustomerServiceVerifiedEmail

    -- ** OrdersCreateTestReturnResponse
    , OrdersCreateTestReturnResponse
    , ordersCreateTestReturnResponse
    , octrrKind
    , octrrReturnId

    -- ** ReturnaddressCustomBatchRequestEntry
    , ReturnaddressCustomBatchRequestEntry
    , returnaddressCustomBatchRequestEntry
    , rcbrecMerchantId
    , rcbrecReturnAddressId
    , rcbrecReturnAddress
    , rcbrecMethod
    , rcbrecBatchId

    -- ** OrdersShipLineItemsRequest
    , OrdersShipLineItemsRequest
    , ordersShipLineItemsRequest
    , oslirShipmentGroupId
    , oslirShipmentInfos
    , oslirLineItems
    , oslirOperationId

    -- ** OrderCustomerLoyaltyInfo
    , OrderCustomerLoyaltyInfo
    , orderCustomerLoyaltyInfo
    , ocliName
    , ocliLoyaltyNumber

    -- ** OrdersRefundOrderResponse
    , OrdersRefundOrderResponse
    , ordersRefundOrderResponse
    , ororKind
    , ororExecutionStatus

    -- ** AccountReturnCarrierCarrierCode
    , AccountReturnCarrierCarrierCode (..)

    -- ** ListAccountReturnCarrierResponse
    , ListAccountReturnCarrierResponse
    , listAccountReturnCarrierResponse
    , larcrAccountReturnCarriers

    -- ** OrderreturnsListResponse
    , OrderreturnsListResponse
    , orderreturnsListResponse
    , olrNextPageToken
    , olrKind
    , olrResources

    -- ** OrdersCustomBatchRequestEntryRefundItemShipping
    , OrdersCustomBatchRequestEntryRefundItemShipping
    , ordersCustomBatchRequestEntryRefundItemShipping
    , ocbrerisAmount
    , ocbrerisFullRefund

    -- ** OrderreturnsListShipmentTypes
    , OrderreturnsListShipmentTypes (..)

    -- ** AccountsCustomBatchResponse
    , AccountsCustomBatchResponse
    , accountsCustomBatchResponse
    , acbrcEntries
    , acbrcKind

    -- ** ReturnPolicySeasonalOverride
    , ReturnPolicySeasonalOverride
    , returnPolicySeasonalOverride
    , rpsoEndDate
    , rpsoStartDate
    , rpsoName
    , rpsoPolicy

    -- ** ShoppingAdsProgramStatusRegionStatus
    , ShoppingAdsProgramStatusRegionStatus
    , shoppingAdsProgramStatusRegionStatus
    , sapsrsDisApprovalDate
    , sapsrsReviewIssues
    , sapsrsReviewEligibilityStatus
    , sapsrsIneligibilityReason
    , sapsrsRegionCodes
    , sapsrsEligibilityStatus

    -- ** OrdersUpdateLineItemShippingDetailsRequest
    , OrdersUpdateLineItemShippingDetailsRequest
    , ordersUpdateLineItemShippingDetailsRequest
    , oulisdrShipByDate
    , oulisdrLineItemId
    , oulisdrDeliverByDate
    , oulisdrOperationId
    , oulisdrProductId

    -- ** Collection
    , Collection
    , collection
    , cCustomLabel1
    , cImageLink
    , cCustomLabel0
    , cLink
    , cFeaturedProduct
    , cProductCountry
    , cCustomLabel3
    , cHeadline
    , cCustomLabel2
    , cLanguage
    , cId
    , cMobileLink
    , cCustomLabel4

    -- ** MerchantOrderReturn
    , MerchantOrderReturn
    , merchantOrderReturn
    , morReturnPricingInfo
    , morReturnShipments
    , morMerchantOrderId
    , morReturnItems
    , morCreationDate
    , morOrderId
    , morOrderReturnId

    -- ** ProductTax
    , ProductTax
    , productTax
    , ptTaxShip
    , ptCountry
    , ptPostalCode
    , ptRate
    , ptRegion
    , ptLocationId

    -- ** PosCustomBatchRequestEntry
    , PosCustomBatchRequestEntry
    , posCustomBatchRequestEntry
    , pcbreMerchantId
    , pcbreStoreCode
    , pcbreTargetMerchantId
    , pcbreMethod
    , pcbreStore
    , pcbreInventory
    , pcbreSale
    , pcbreBatchId

    -- ** TestOrderPickupDetails
    , TestOrderPickupDetails
    , testOrderPickupDetails
    , topdPickupLocationType
    , topdPickupLocationAddress
    , topdPickupPersons
    , topdLocationCode

    -- ** OrderShipment
    , OrderShipment
    , orderShipment
    , osCarrier
    , osStatus
    , osScheduledDeliveryDetails
    , osShipmentGroupId
    , osTrackingId
    , osLineItems
    , osId
    , osCreationDate
    , osDeliveryDate

    -- ** ReturnShippingLabel
    , ReturnShippingLabel
    , returnShippingLabel
    , rslCarrier
    , rslTrackingId
    , rslLabelURI

    -- ** FreeListingsProgramStatusRegionStatusEnhancedEligibilityStatus
    , FreeListingsProgramStatusRegionStatusEnhancedEligibilityStatus (..)

    -- ** AccountsGetView
    , AccountsGetView (..)

    -- ** AccountsLinkResponse
    , AccountsLinkResponse
    , accountsLinkResponse
    , alrlKind

    -- ** OrderLineItemReturnInfo
    , OrderLineItemReturnInfo
    , orderLineItemReturnInfo
    , oliriIsReturnable
    , oliriPolicyURL
    , oliriDaysToReturn

    -- ** SettlementTransaction
    , SettlementTransaction
    , settlementTransaction
    , stAmount
    , stKind
    , stIdentifiers
    , stTransaction

    -- ** OrderreturnsListShipmentStates
    , OrderreturnsListShipmentStates (..)

    -- ** FreeListingsProgramStatusRegionStatus
    , FreeListingsProgramStatusRegionStatus
    , freeListingsProgramStatusRegionStatus
    , flpsrsEnhancedEligibilityStatus
    , flpsrsDisApprovalDate
    , flpsrsReviewIssues
    , flpsrsReviewEligibilityStatus
    , flpsrsIneligibilityReason
    , flpsrsRegionCodes
    , flpsrsEligibilityStatus

    -- ** TransitTable
    , TransitTable
    , transitTable
    , ttTransitTimeLabels
    , ttPostalCodeGroupNames
    , ttRows

    -- ** Account
    , Account
    , account
    , aaAccountManagement
    , aaUsers
    , aaYouTubeChannelLinks
    , aaKind
    , aaCssId
    , aaSellerId
    , aaName
    , aaBusinessInformation
    , aaAutomaticLabelIds
    , aaId
    , aaAdsLinks
    , aaWebsiteURL
    , aaLabelIds
    , aaGoogleMyBusinessLink
    , aaAdultContent

    -- ** ShipmentTrackingInfo
    , ShipmentTrackingInfo
    , shipmentTrackingInfo
    , stiCarrier
    , stiTrackingNumber

    -- ** OrdersCancelLineItemRequest
    , OrdersCancelLineItemRequest
    , ordersCancelLineItemRequest
    , oclirQuantity
    , oclirLineItemId
    , oclirReason
    , oclirOperationId
    , oclirProductId
    , oclirReasonText

    -- ** ProductShippingWeight
    , ProductShippingWeight
    , productShippingWeight
    , pswValue
    , pswUnit

    -- ** AccountstatusesCustomBatchRequestEntry
    , AccountstatusesCustomBatchRequestEntry
    , accountstatusesCustomBatchRequestEntry
    , acbrecMerchantId
    , acbrecAccountId
    , acbrecDestinations
    , acbrecMethod
    , acbrecBatchId

    -- ** DeliveryTime
    , DeliveryTime
    , deliveryTime
    , dtTransitTimeTable
    , dtHandlingBusinessDayConfig
    , dtTransitBusinessDayConfig
    , dtHolidayCutoffs
    , dtMinTransitTimeInDays
    , dtCutoffTime
    , dtMinHandlingTimeInDays
    , dtMaxTransitTimeInDays
    , dtMaxHandlingTimeInDays
    , dtWarehouseBasedDeliveryTimes

    -- ** OrderreturnsListShipmentStatus
    , OrderreturnsListShipmentStatus (..)

    -- ** LiaCountrySettings
    , LiaCountrySettings
    , liaCountrySettings
    , lcsPosDataProvider
    , lcsCountry
    , lcsStorePickupActive
    , lcsInventory
    , lcsAbout
    , lcsHostedLocalStorefrontActive
    , lcsOnDisplayToOrder

    -- ** OrdersReturnRefundLineItemResponse
    , OrdersReturnRefundLineItemResponse
    , ordersReturnRefundLineItemResponse
    , orrlirKind
    , orrlirExecutionStatus

    -- ** RepricingRuleEffectiveTime
    , RepricingRuleEffectiveTime
    , repricingRuleEffectiveTime
    , rretFixedTimePeriods

    -- ** ProductstatusesCustomBatchResponseEntry
    , ProductstatusesCustomBatchResponseEntry
    , productstatusesCustomBatchResponseEntry
    , pKind
    , pProductStatus
    , pErrors
    , pBatchId

    -- ** ShippingSettingsGetSupportedHolidaysResponse
    , ShippingSettingsGetSupportedHolidaysResponse
    , shippingSettingsGetSupportedHolidaysResponse
    , ssgshrKind
    , ssgshrHolidays

    -- ** RepricingRule
    , RepricingRule
    , repricingRule
    , rrRestriction
    , rrLanguageCode
    , rrMerchantId
    , rrCogsBasedRule
    , rrRuleId
    , rrEligibleOfferMatcher
    , rrEffectiveTimePeriod
    , rrCountryCode
    , rrTitle
    , rrType
    , rrStatsBasedRule
    , rrPaused

    -- ** OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails
    , OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails
    , ordersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails
    , ocbreussddScheduledDate
    , ocbreussddCarrierPhoneNumber

    -- ** ProductProductDetail
    , ProductProductDetail
    , productProductDetail
    , ppdAttributeValue
    , ppdAttributeName
    , ppdSectionName

    -- ** LiaPosDataProvider
    , LiaPosDataProvider
    , liaPosDataProvider
    , lpdpPosExternalAccountId
    , lpdpPosDataProviderId

    -- ** DatafeedFormat
    , DatafeedFormat
    , datafeedFormat
    , dfQuotingMode
    , dfFileEncoding
    , dfColumnDelimiter

    -- ** LiaSettings
    , LiaSettings
    , liaSettings
    , lsCountrySettings
    , lsKind
    , lsAccountId

    -- ** TransitTableTransitTimeRow
    , TransitTableTransitTimeRow
    , transitTableTransitTimeRow
    , ttttrValues

    -- ** ProductShipping
    , ProductShipping
    , productShipping
    , pService
    , pLocationGroupName
    , pCountry
    , pMinHandlingTime
    , pPostalCode
    , pMinTransitTime
    , pMaxHandlingTime
    , pMaxTransitTime
    , pPrice
    , pRegion
    , pLocationId

    -- ** ShippingSettingsCustomBatchRequest
    , ShippingSettingsCustomBatchRequest
    , shippingSettingsCustomBatchRequest
    , sscbrEntries

    -- ** LiaSettingsCustomBatchResponseEntry
    , LiaSettingsCustomBatchResponseEntry
    , liaSettingsCustomBatchResponseEntry
    , lscbreGmbAccounts
    , lscbreKind
    , lscbreLiaSettings
    , lscbreErrors
    , lscbrePosDataProviders
    , lscbreBatchId

    -- ** AccountsCustomBatchRequest
    , AccountsCustomBatchRequest
    , accountsCustomBatchRequest
    , aEntries

    -- ** PosCustomBatchResponseEntry
    , PosCustomBatchResponseEntry
    , posCustomBatchResponseEntry
    , pcbrecKind
    , pcbrecStore
    , pcbrecInventory
    , pcbrecErrors
    , pcbrecSale
    , pcbrecBatchId

    -- ** Date
    , Date
    , date
    , dDay
    , dYear
    , dMonth

    -- ** ReturnPolicyOnlineRestockingFee
    , ReturnPolicyOnlineRestockingFee
    , returnPolicyOnlineRestockingFee
    , rporfFixedFee
    , rporfMicroPercent

    -- ** OrderreturnsLineItem
    , OrderreturnsLineItem
    , orderreturnsLineItem
    , oliQuantity
    , oliLineItemId
    , oliProductId

    -- ** ReturnaddressCustomBatchResponseEntry
    , ReturnaddressCustomBatchResponseEntry
    , returnaddressCustomBatchResponseEntry
    , rKind
    , rReturnAddress
    , rErrors
    , rBatchId

    -- ** OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
    , OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
    , orderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
    , oReason
    , oDescription

    -- ** ListReturnPolicyOnlineResponse
    , ListReturnPolicyOnlineResponse
    , listReturnPolicyOnlineResponse
    , lrporReturnPolicies

    -- ** OrdersListResponse
    , OrdersListResponse
    , ordersListResponse
    , oNextPageToken
    , oKind
    , oResources

    -- ** OrdersRefundOrderRequest
    , OrdersRefundOrderRequest
    , ordersRefundOrderRequest
    , ororAmount
    , ororFullRefund
    , ororReason
    , ororOperationId
    , ororReasonText

    -- ** OrdersUpdateLineItemShippingDetailsResponse
    , OrdersUpdateLineItemShippingDetailsResponse
    , ordersUpdateLineItemShippingDetailsResponse
    , oulisdrKind
    , oulisdrExecutionStatus

    -- ** OrderreturnsRefundOperation
    , OrderreturnsRefundOperation
    , orderreturnsRefundOperation
    , oroFullRefund
    , oroPartialRefund
    , oroReturnRefundReason
    , oroPaymentType
    , oroReasonText

    -- ** Headers
    , Headers
    , headers
    , hNumberOfItems
    , hPostalCodeGroupNames
    , hPrices
    , hWeights
    , hLocations

    -- ** ReturnAddress
    , ReturnAddress
    , returnAddress
    , raCountry
    , raKind
    , raAddress
    , raReturnAddressId
    , raPhoneNumber
    , raLabel

    -- ** UnitInvoiceAdditionalCharge
    , UnitInvoiceAdditionalCharge
    , unitInvoiceAdditionalCharge
    , uiacAdditionalChargeAmount
    , uiacType

    -- ** ListCssesResponse
    , ListCssesResponse
    , listCssesResponse
    , lNextPageToken
    , lCsses

    -- ** OrderreturnsCreateOrderReturnResponse
    , OrderreturnsCreateOrderReturnResponse
    , orderreturnsCreateOrderReturnResponse
    , ocorrOrderReturn
    , ocorrKind
    , ocorrExecutionStatus

    -- ** OrdersShipLineItemsResponse
    , OrdersShipLineItemsResponse
    , ordersShipLineItemsResponse
    , oslirKind
    , oslirExecutionStatus

    -- ** UnitInvoiceTaxLine
    , UnitInvoiceTaxLine
    , unitInvoiceTaxLine
    , uitlTaxName
    , uitlTaxType
    , uitlTaxAmount

    -- ** OrdersCreateTestReturnRequest
    , OrdersCreateTestReturnRequest
    , ordersCreateTestReturnRequest
    , octrrItems

    -- ** RequestPhoneVerificationResponse
    , RequestPhoneVerificationResponse
    , requestPhoneVerificationResponse
    , rpvrVerificationId

    -- ** SearchRequest
    , SearchRequest
    , searchRequest
    , srQuery
    , srPageToken
    , srPageSize

    -- ** AccountLabel
    , AccountLabel
    , accountLabel
    , aLabelType
    , aAccountId
    , aName
    , aLabelId
    , aDescription

    -- ** RepricingRuleEffectiveTimeFixedTimePeriod
    , RepricingRuleEffectiveTimeFixedTimePeriod
    , repricingRuleEffectiveTimeFixedTimePeriod
    , rretftpStartTime
    , rretftpEndTime

    -- ** AccountsUpdateLabelsRequest
    , AccountsUpdateLabelsRequest
    , accountsUpdateLabelsRequest
    , aulrLabelIds

    -- ** ShippingSettings
    , ShippingSettings
    , shippingSettings
    , ssPostalCodeGroups
    , ssAccountId
    , ssServices

    -- ** RegionPostalCodeArea
    , RegionPostalCodeArea
    , regionPostalCodeArea
    , rpcaRegionCode
    , rpcaPostalCodes

    -- ** ProductAmount
    , ProductAmount
    , productAmount
    , paRemittedTaxAmount
    , paTaxAmount
    , paPriceAmount

    -- ** PostalCodeRange
    , PostalCodeRange
    , postalCodeRange
    , pcrPostalCodeRangeBegin
    , pcrPostalCodeRangeEnd

    -- ** OrdersUpdateShipmentResponse
    , OrdersUpdateShipmentResponse
    , ordersUpdateShipmentResponse
    , ousrKind
    , ousrExecutionStatus

    -- ** ProductstatusesCustomBatchRequest
    , ProductstatusesCustomBatchRequest
    , productstatusesCustomBatchRequest
    , pcbrcEntries

    -- ** AccountYouTubeChannelLink
    , AccountYouTubeChannelLink
    , accountYouTubeChannelLink
    , aytclStatus
    , aytclChannelId

    -- ** RepricingRuleEligibleOfferMatcherMatcherOption
    , RepricingRuleEligibleOfferMatcherMatcherOption (..)

    -- ** RequestPhoneVerificationRequestPhoneVerificationMethod
    , RequestPhoneVerificationRequestPhoneVerificationMethod (..)

    -- ** AccountAdsLink
    , AccountAdsLink
    , accountAdsLink
    , aalStatus
    , aalAdsId

    -- ** LiaAboutPageSettings
    , LiaAboutPageSettings
    , liaAboutPageSettings
    , lapsStatus
    , lapsURL

    -- ** RepricingRuleReport
    , RepricingRuleReport
    , repricingRuleReport
    , rrrOrderItemCount
    , rrrRuleId
    , rrrDate
    , rrrInApplicableProducts
    , rrrBuyboxWinningRuleStats
    , rrrInApplicabilityDetails
    , rrrType
    , rrrImpactedProducts
    , rrrTotalGmv

    -- ** OrderTrackingSignal
    , OrderTrackingSignal
    , orderTrackingSignal
    , otsDeliveryPostalCode
    , otsMerchantId
    , otsOrderTrackingSignalId
    , otsLineItems
    , otsOrderCreatedTime
    , otsDeliveryRegionCode
    , otsShippingInfo
    , otsShipmentLineItemMApping
    , otsCustomerShippingFee
    , otsOrderId

    -- ** LiaSettingsCustomBatchRequest
    , LiaSettingsCustomBatchRequest
    , liaSettingsCustomBatchRequest
    , lEntries

    -- ** CustomAttribute
    , CustomAttribute
    , customAttribute
    , caGroupValues
    , caValue
    , caName

    -- ** PosInventoryRequest
    , PosInventoryRequest
    , posInventoryRequest
    , posStoreCode
    , posItemId
    , posQuantity
    , posTargetCountry
    , posGtin
    , posPrice
    , posContentLanguage
    , posTimestamp

    -- ** AccountstatusesCustomBatchResponse
    , AccountstatusesCustomBatchResponse
    , accountstatusesCustomBatchResponse
    , acccEntries
    , acccKind

    -- ** ShippingSettingsCustomBatchResponseEntry
    , ShippingSettingsCustomBatchResponseEntry
    , shippingSettingsCustomBatchResponseEntry
    , sKind
    , sShippingSettings
    , sErrors
    , sBatchId

    -- ** ProductStatus
    , ProductStatus
    , productStatus
    , ppKind
    , ppLink
    , ppDestinationStatuses
    , ppLastUpdateDate
    , ppCreationDate
    , ppTitle
    , ppGoogleExpirationDate
    , ppProductId
    , ppItemLevelIssues

    -- ** AccountCredentialsPurpose
    , AccountCredentialsPurpose (..)

    -- ** AccountReturnCarrier
    , AccountReturnCarrier
    , accountReturnCarrier
    , arcCarrierAccountNumber
    , arcCarrierAccountName
    , arcCarrierAccountId
    , arcCarrierCode

    -- ** AccountstatusesListResponse
    , AccountstatusesListResponse
    , accountstatusesListResponse
    , alr1NextPageToken
    , alr1Kind
    , alr1Resources

    -- ** OrdersSetLineItemMetadataResponse
    , OrdersSetLineItemMetadataResponse
    , ordersSetLineItemMetadataResponse
    , oslimrKind
    , oslimrExecutionStatus

    -- ** AccounttaxCustomBatchRequest
    , AccounttaxCustomBatchRequest
    , accounttaxCustomBatchRequest
    , accEntries

    -- ** RepricingProductReportType
    , RepricingProductReportType (..)

    -- ** ProductsCustomBatchRequestEntry
    , ProductsCustomBatchRequestEntry
    , productsCustomBatchRequestEntry
    , prorMerchantId
    , prorUpdateMask
    , prorMethod
    , prorFeedId
    , prorProduct
    , prorProductId
    , prorBatchId

    -- ** CollectionStatus
    , CollectionStatus
    , collectionStatus
    , csDestinationStatuses
    , csLastUpdateDate
    , csId
    , csCreationDate
    , csCollectionLevelIssuses

    -- ** AccountGoogleMyBusinessLink
    , AccountGoogleMyBusinessLink
    , accountGoogleMyBusinessLink
    , agmblGmbEmail
    , agmblStatus
    , agmblGmbAccountId

    -- ** FreeListingsProgramStatusRegionStatusReviewEligibilityStatus
    , FreeListingsProgramStatusRegionStatusReviewEligibilityStatus (..)

    -- ** DatafeedstatusesCustomBatchRequestEntry
    , DatafeedstatusesCustomBatchRequestEntry
    , datafeedstatusesCustomBatchRequestEntry
    , dMerchantId
    , dCountry
    , dMethod
    , dDatafeedId
    , dLanguage
    , dBatchId

    -- ** ReturnpolicyCustomBatchResponseEntry
    , ReturnpolicyCustomBatchResponseEntry
    , returnpolicyCustomBatchResponseEntry
    , rrKind
    , rrReturnPolicy
    , rrErrors
    , rrBatchId

    -- ** ReturnPolicy
    , ReturnPolicy
    , returnPolicy
    , rpReturnPolicyId
    , rpCountry
    , rpKind
    , rpNonFreeReturnReasons
    , rpName
    , rpSeasonalOverrides
    , rpPolicy
    , rpLabel
    , rpReturnShippingFee

    -- ** Xgafv
    , Xgafv (..)

    -- ** CollectionStatusDestinationStatus
    , CollectionStatusDestinationStatus
    , collectionStatusDestinationStatus
    , csdsDestination
    , csdsStatus

    -- ** OrderCustomer
    , OrderCustomer
    , orderCustomer
    , ocLoyaltyInfo
    , ocFullName
    , ocInvoiceReceivingEmail
    , ocMarketingRightsInfo

    -- ** LocationIdSet
    , LocationIdSet
    , locationIdSet
    , lisLocationIds

    -- ** Row
    , Row
    , row
    , rCells

    -- ** OrdersGetByMerchantOrderIdResponse
    , OrdersGetByMerchantOrderIdResponse
    , ordersGetByMerchantOrderIdResponse
    , ogbmoirKind
    , ogbmoirOrder

    -- ** ActivateBuyOnGoogleProgramRequest
    , ActivateBuyOnGoogleProgramRequest
    , activateBuyOnGoogleProgramRequest

    -- ** OrdersRejectReturnLineItemRequest
    , OrdersRejectReturnLineItemRequest
    , ordersRejectReturnLineItemRequest
    , orrlirQuantity
    , orrlirLineItemId
    , orrlirReason
    , orrlirOperationId
    , orrlirProductId
    , orrlirReasonText

    -- ** OrdersCancelRequest
    , OrdersCancelRequest
    , ordersCancelRequest
    , ocrReason
    , ocrOperationId
    , ocrReasonText

    -- ** ReturnShipment
    , ReturnShipment
    , returnShipment
    , rsState
    , rsShipmentTrackingInfos
    , rsReturnMethodType
    , rsShipmentId
    , rsCreationDate
    , rsDeliveryDate
    , rsShippingDate

    -- ** RepricingRuleRestriction
    , RepricingRuleRestriction
    , repricingRuleRestriction
    , rrrFloor
    , rrrUseAutoPricingMinPrice

    -- ** AccountsListView
    , AccountsListView (..)

    -- ** OrdersCancelTestOrderByCustomerRequest
    , OrdersCancelTestOrderByCustomerRequest
    , ordersCancelTestOrderByCustomerRequest
    , octobcrReason

    -- ** ProductStatusItemLevelIssue
    , ProductStatusItemLevelIssue
    , productStatusItemLevelIssue
    , psiliDestination
    , psiliResolution
    , psiliDocumentation
    , psiliCode
    , psiliServability
    , psiliApplicableCountries
    , psiliAttributeName
    , psiliDescription
    , psiliDetail

    -- ** OrderLineItemProductVariantAttribute
    , OrderLineItemProductVariantAttribute
    , orderLineItemProductVariantAttribute
    , olipvaDimension
    , olipvaValue

    -- ** ReturnPolicyOnlinePolicyType
    , ReturnPolicyOnlinePolicyType (..)

    -- ** ReturnPolicyOnline
    , ReturnPolicyOnline
    , returnPolicyOnline
    , rpoReturnPolicyURI
    , rpoReturnPolicyId
    , rpoItemConditions
    , rpoReturnMethods
    , rpoCountries
    , rpoName
    , rpoPolicy
    , rpoReturnReasonCategoryInfo
    , rpoLabel
    , rpoRestockingFee

    -- ** OrdersRefundItemResponse
    , OrdersRefundItemResponse
    , ordersRefundItemResponse
    , orirKind
    , orirExecutionStatus

    -- ** OrderreturnsRejectOperation
    , OrderreturnsRejectOperation
    , orderreturnsRejectOperation
    , ordReason
    , ordReasonText

    -- ** ReturnaddressListResponse
    , ReturnaddressListResponse
    , returnaddressListResponse
    , rlrNextPageToken
    , rlrKind
    , rlrResources

    -- ** ListRepricingRuleReportsResponse
    , ListRepricingRuleReportsResponse
    , listRepricingRuleReportsResponse
    , lrrrrNextPageToken
    , lrrrrRepricingRuleReports

    -- ** RateGroup
    , RateGroup
    , rateGroup
    , rgCarrierRates
    , rgName
    , rgApplicableShippingLabels
    , rgMainTable
    , rgSingleValue
    , rgSubtables

    -- ** OrderPromotion
    , OrderPromotion
    , orderPromotion
    , opShortTitle
    , opStartTime
    , opAppliedItems
    , opMerchantPromotionId
    , opSubtype
    , opEndTime
    , opTitle
    , opType
    , opApplicableItems
    , opPriceValue
    , opTaxValue
    , opFunder

    -- ** OrderreturnsProcessRequest
    , OrderreturnsProcessRequest
    , orderreturnsProcessRequest
    , oprReturnItems
    , oprRefundShippingFee
    , oprFullChargeReturnShippingCost
    , oprOperationId

    -- ** AccountStatusProducts
    , AccountStatusProducts
    , accountStatusProducts
    , aspDestination
    , aspCountry
    , aspChannel
    , aspStatistics
    , aspItemLevelIssues

    -- ** ShoppingAdsProgramStatusRegionStatusReviewEligibilityStatus
    , ShoppingAdsProgramStatusRegionStatusReviewEligibilityStatus (..)

    -- ** RegionalinventoryCustomBatchRequestEntry
    , RegionalinventoryCustomBatchRequestEntry
    , regionalinventoryCustomBatchRequestEntry
    , rcbre1MerchantId
    , rcbre1RegionalInventory
    , rcbre1Method
    , rcbre1ProductId
    , rcbre1BatchId

    -- ** Price
    , Price
    , price
    , pValue
    , pCurrency

    -- ** RepricingProductReportBuyboxWinningProductStats
    , RepricingProductReportBuyboxWinningProductStats
    , repricingProductReportBuyboxWinningProductStats
    , rprbwpsBuyboxWinsCount

    -- ** OrderLineItemShippingDetails
    , OrderLineItemShippingDetails
    , orderLineItemShippingDetails
    , olisdShipByDate
    , olisdPickupPromiseInMinutes
    , olisdMethod
    , olisdDeliverByDate
    , olisdType

    -- ** CollectionFeaturedProduct
    , CollectionFeaturedProduct
    , collectionFeaturedProduct
    , cfpOfferId
    , cfpX
    , cfpY

    -- ** PickupCarrierService
    , PickupCarrierService
    , pickupCarrierService
    , pcsServiceName
    , pcsCarrierName

    -- ** DatafeedsCustomBatchResponse
    , DatafeedsCustomBatchResponse
    , datafeedsCustomBatchResponse
    , datEntries
    , datKind

    -- ** InvoiceSummary
    , InvoiceSummary
    , invoiceSummary
    , isProductTotal
    , isAdditionalChargeSummaries

    -- ** LocalinventoryCustomBatchRequestEntry
    , LocalinventoryCustomBatchRequestEntry
    , localinventoryCustomBatchRequestEntry
    , lLocalInventory
    , lMerchantId
    , lMethod
    , lProductId
    , lBatchId

    -- ** OrderTrackingSignalShippingInfoShippingStatus
    , OrderTrackingSignalShippingInfoShippingStatus (..)

    -- ** RepricingRuleRestrictionBoundary
    , RepricingRuleRestrictionBoundary
    , repricingRuleRestrictionBoundary
    , rrrbPriceDelta
    , rrrbPercentageDelta

    -- ** PosListResponse
    , PosListResponse
    , posListResponse
    , plrlKind
    , plrlResources

    -- ** ListAccountLabelsResponse
    , ListAccountLabelsResponse
    , listAccountLabelsResponse
    , lalrNextPageToken
    , lalrAccountLabels

    -- ** FreeListingsProgramStatus
    , FreeListingsProgramStatus
    , freeListingsProgramStatus
    , flpsState
    , flpsRegionStatuses

    -- ** OrderDeliveryDetails
    , OrderDeliveryDetails
    , orderDeliveryDetails
    , oddAddress
    , oddPhoneNumber

    -- ** OrderLineItemProductFee
    , OrderLineItemProductFee
    , orderLineItemProductFee
    , olipfAmount
    , olipfName

    -- ** BusinessDayConfig
    , BusinessDayConfig
    , businessDayConfig
    , bdcBusinessDays

    -- ** SettlementTransactionAmountCommission
    , SettlementTransactionAmountCommission
    , settlementTransactionAmountCommission
    , stacCategory
    , stacRate

    -- ** InApplicabilityDetails
    , InApplicabilityDetails
    , inApplicabilityDetails
    , iadInApplicableReason
    , iadInApplicableCount

    -- ** LabelIds
    , LabelIds
    , labelIds
    , liLabelIds

    -- ** OrdersCancelResponse
    , OrdersCancelResponse
    , ordersCancelResponse
    , ocrKind
    , ocrExecutionStatus

    -- ** OrdersSetLineItemMetadataRequest
    , OrdersSetLineItemMetadataRequest
    , ordersSetLineItemMetadataRequest
    , oslimrAnnotations
    , oslimrLineItemId
    , oslimrOperationId
    , oslimrProductId

    -- ** Segments
    , Segments
    , segments
    , sWeek
    , sCustomLabel1
    , sCurrencyCode
    , sCategoryL1
    , sCustomLabel0
    , sBrand
    , sCategoryL2
    , sCustomLabel3
    , sDate
    , sProductTypeL3
    , sProgram
    , sCategoryL3
    , sCustomLabel2
    , sProductTypeL5
    , sProductTypeL2
    , sOfferId
    , sCategoryL4
    , sTitle
    , sProductTypeL4
    , sProductTypeL1
    , sCustomLabel4
    , sCategoryL5

    -- ** RequestReviewBuyOnGoogleProgramRequest
    , RequestReviewBuyOnGoogleProgramRequest
    , requestReviewBuyOnGoogleProgramRequest

    -- ** ListRepricingProductReportsResponse
    , ListRepricingProductReportsResponse
    , listRepricingProductReportsResponse
    , lrprrNextPageToken
    , lrprrRepricingProductReports

    -- ** CollectionStatusItemLevelIssue
    , CollectionStatusItemLevelIssue
    , collectionStatusItemLevelIssue
    , csiliDestination
    , csiliResolution
    , csiliDocumentation
    , csiliCode
    , csiliServability
    , csiliAttributeName
    , csiliDescription
    , csiliDetail

    -- ** AccountsListLinksResponse
    , AccountsListLinksResponse
    , accountsListLinksResponse
    , allrNextPageToken
    , allrKind
    , allrLinks

    -- ** OrdersRejectReturnLineItemResponse
    , OrdersRejectReturnLineItemResponse
    , ordersRejectReturnLineItemResponse
    , ordKind
    , ordExecutionStatus

    -- ** TestOrder
    , TestOrder
    , testOrder
    , toPredefinedEmail
    , toKind
    , toPredefinedPickupDetails
    , toLineItems
    , toDeliveryDetails
    , toShippingOption
    , toPredefinedDeliveryAddress
    , toEnableOrderinvoices
    , toPromotions
    , toPredefinedBillingAddress
    , toNotificationMode
    , toPickupDetails
    , toShippingCost

    -- ** CutoffTime
    , CutoffTime
    , cutoffTime
    , ctHour
    , ctTimezone
    , ctMinute

    -- ** DatafeedstatusesCustomBatchResponseEntry
    , DatafeedstatusesCustomBatchResponseEntry
    , datafeedstatusesCustomBatchResponseEntry
    , datErrors
    , datDatafeedStatus
    , datBatchId

    -- ** OrderRefund
    , OrderRefund
    , orderRefund
    , orrAmount
    , orrActor
    , orrReason
    , orrCreationDate
    , orrReasonText

    -- ** PaymentServiceProviderLinkInfo
    , PaymentServiceProviderLinkInfo
    , paymentServiceProviderLinkInfo
    , pspliExternalAccountId
    , pspliExternalAccountBusinessCountry

    -- ** TestOrderLineItemProduct
    , TestOrderLineItemProduct
    , testOrderLineItemProduct
    , tolipImageLink
    , tolipFees
    , tolipBrand
    , tolipTargetCountry
    , tolipGtin
    , tolipItemGroupId
    , tolipOfferId
    , tolipPrice
    , tolipVariantAttributes
    , tolipTitle
    , tolipContentLanguage
    , tolipMpn
    , tolipCondition

    -- ** Region
    , Region
    , region
    , r1MerchantId
    , r1PostalCodeArea
    , r1RegionalInventoryEligible
    , r1RegionId
    , r1GeotargetArea
    , r1ShippingEligible
    , r1DisplayName

    -- ** AccounttaxCustomBatchResponse
    , AccounttaxCustomBatchResponse
    , accounttaxCustomBatchResponse
    , acbr1Entries
    , acbr1Kind

    -- ** RegionPostalCodeAreaPostalCodeRange
    , RegionPostalCodeAreaPostalCodeRange
    , regionPostalCodeAreaPostalCodeRange
    , rpcapcrBegin
    , rpcapcrEnd

    -- ** AccountsClaimWebsiteResponse
    , AccountsClaimWebsiteResponse
    , accountsClaimWebsiteResponse
    , acwrKind

    -- ** OrderAddress
    , OrderAddress
    , orderAddress
    , oaRecipientName
    , oaStreetAddress
    , oaCountry
    , oaPostalCode
    , oaLocality
    , oaIsPostOfficeBox
    , oaFullAddress
    , oaRegion

    -- ** ReturnpolicyCustomBatchRequestEntry
    , ReturnpolicyCustomBatchRequestEntry
    , returnpolicyCustomBatchRequestEntry
    , ret1ReturnPolicyId
    , ret1MerchantId
    , ret1Method
    , ret1ReturnPolicy
    , ret1BatchId

    -- ** OrdersCustomBatchRequestEntryCreateTestReturnReturnItem
    , OrdersCustomBatchRequestEntryCreateTestReturnReturnItem
    , ordersCustomBatchRequestEntryCreateTestReturnReturnItem
    , ocbrectrriQuantity
    , ocbrectrriLineItemId

    -- ** ProductUnitPricingBaseMeasure
    , ProductUnitPricingBaseMeasure
    , productUnitPricingBaseMeasure
    , pupbmValue
    , pupbmUnit

    -- ** LiaSettingsGetAccessibleGmbAccountsResponse
    , LiaSettingsGetAccessibleGmbAccountsResponse
    , liaSettingsGetAccessibleGmbAccountsResponse
    , lsgagarGmbAccounts
    , lsgagarKind
    , lsgagarAccountId

    -- ** DatafeedsListResponse
    , DatafeedsListResponse
    , datafeedsListResponse
    , dlrNextPageToken
    , dlrKind
    , dlrResources

    -- ** OrderTrackingSignalShipmentLineItemMApping
    , OrderTrackingSignalShipmentLineItemMApping
    , orderTrackingSignalShipmentLineItemMApping
    , otsslimaShipmentId
    , otsslimaQuantity
    , otsslimaLineItemId

    -- ** TransitTableTransitTimeRowTransitTimeValue
    , TransitTableTransitTimeRowTransitTimeValue
    , transitTableTransitTimeRowTransitTimeValue
    , ttttrttvMinTransitTimeInDays
    , ttttrttvMaxTransitTimeInDays

    -- ** AccountStatusStatistics
    , AccountStatusStatistics
    , accountStatusStatistics
    , assPending
    , assExpiring
    , assActive
    , assDisApproved

    -- ** ProductsCustomBatchResponseEntry
    , ProductsCustomBatchResponseEntry
    , productsCustomBatchResponseEntry
    , pcbre1Kind
    , pcbre1Product
    , pcbre1Errors
    , pcbre1BatchId

    -- ** Product
    , Product
    , product
    , prorDisplayAdsLink
    , prorCustomLabel1
    , prorShippingWidth
    , prorImageLink
    , prorIncludedDestinations
    , prorDisplayAdsValue
    , prorPickupSla
    , prorCanonicalLink
    , prorLoyaltyPoints
    , prorAdditionalImageLinks
    , prorExcludedDestinations
    , prorColor
    , prorCustomLabel0
    , prorKind
    , prorMinHandlingTime
    , prorMultipack
    , prorPattern
    , prorLink
    , prorProductHighlights
    , prorProductTypes
    , prorSizeSystem
    , prorMobileLinkTemplate
    , prorPickupMethod
    , prorUnitPricingBaseMeasure
    , prorTaxes
    , prorMaterial
    , prorInstallment
    , prorChannel
    , prorIdentifierExists
    , prorBrand
    , prorUnitPricingMeasure
    , prorShoppingAdsExcludedCountries
    , prorSalePrice
    , prorCostOfGoodsSold
    , prorShippingLength
    , prorCustomLabel3
    , prorMaxHandlingTime
    , prorAvailability
    , prorMinEnergyEfficiencyClass
    , prorTargetCountry
    , prorShippingLabel
    , prorAdsRedirect
    , prorCustomAttributes
    , prorGtin
    , prorAgeGroup
    , prorDisplayAdsTitle
    , prorAdditionalSizeType
    , prorTransitTimeLabel
    , prorMaxEnergyEfficiencyClass
    , prorGender
    , prorExpirationDate
    , prorItemGroupId
    , prorSalePriceEffectiveDate
    , prorCustomLabel2
    , prorGoogleProductCategory
    , prorShipping
    , prorShippingWeight
    , prorSellOnGoogleQuantity
    , prorTaxCategory
    , prorShippingHeight
    , prorAvailabilityDate
    , prorSource
    , prorOfferId
    , prorId
    , prorPrice
    , prorPromotionIds
    , prorSizeType
    , prorLinkTemplate
    , prorMobileLink
    , prorSubscriptionCost
    , prorTitle
    , prorAdult
    , prorContentLanguage
    , prorAdsLabels
    , prorEnergyEfficiencyClass
    , prorDisplayAdsSimilarIds
    , prorMpn
    , prorCondition
    , prorSizes
    , prorIsBundle
    , prorDescription
    , prorCustomLabel4
    , prorDisplayAdsId
    , prorProductDetails
    , prorAdsGrouping

    -- ** SettlementReport
    , SettlementReport
    , settlementReport
    , srTransferDate
    , srKind
    , srEndDate
    , srStartDate
    , srTransferAmount
    , srPreviousBalance
    , srTransferIds
    , srSettlementId

    -- ** ReturnPolicyOnlineReturnShippingFeeType
    , ReturnPolicyOnlineReturnShippingFeeType (..)

    -- ** LiaSettingsCustomBatchRequestEntry
    , LiaSettingsCustomBatchRequestEntry
    , liaSettingsCustomBatchRequestEntry
    , liaGmbEmail
    , liaContactEmail
    , liaMerchantId
    , liaCountry
    , liaLiaSettings
    , liaAccountId
    , liaMethod
    , liaContactName
    , liaPosExternalAccountId
    , liaPosDataProviderId
    , liaBatchId

    -- ** Errors
    , Errors
    , errors
    , errCode
    , errMessage
    , errErrors

    -- ** LiaInventorySettings
    , LiaInventorySettings
    , liaInventorySettings
    , lisInventoryVerificationContactName
    , lisStatus
    , lisInventoryVerificationContactEmail
    , lisInventoryVerificationContactStatus

    -- ** RegionGeoTargetArea
    , RegionGeoTargetArea
    , regionGeoTargetArea
    , rgtaGeotargetCriteriaIds

    -- ** AccountstatusesCustomBatchResponseEntry
    , AccountstatusesCustomBatchResponseEntry
    , accountstatusesCustomBatchResponseEntry
    , aaAccountStatus
    , aaErrors
    , aaBatchId

    -- ** OrdersCancelLineItemResponse
    , OrdersCancelLineItemResponse
    , ordersCancelLineItemResponse
    , oclirKind
    , oclirExecutionStatus

    -- ** HolidayCutoff
    , HolidayCutoff
    , holidayCutoff
    , hcDeadlineHour
    , hcDeadlineTimezone
    , hcVisibleFromDate
    , hcHolidayId
    , hcDeadlineDate

    -- ** ReturnPolicyOnlineReturnReasonCategoryInfoReturnReasonCategory
    , ReturnPolicyOnlineReturnReasonCategoryInfoReturnReasonCategory (..)

    -- ** TestOrderLineItem
    , TestOrderLineItem
    , testOrderLineItem
    , toliQuantityOrdered
    , toliReturnInfo
    , toliShippingDetails
    , toliProduct

    -- ** MinimumOrderValueTableStoreCodeSetWithMov
    , MinimumOrderValueTableStoreCodeSetWithMov
    , minimumOrderValueTableStoreCodeSetWithMov
    , movtscswmValue
    , movtscswmStoreCodes

    -- ** ProductstatusesCustomBatchRequestEntry
    , ProductstatusesCustomBatchRequestEntry
    , productstatusesCustomBatchRequestEntry
    , p1MerchantId
    , p1Destinations
    , p1Method
    , p1IncludeAttributes
    , p1ProductId
    , p1BatchId

    -- ** TimeZone
    , TimeZone
    , timeZone
    , tzVersion
    , tzId

    -- ** ReturnpolicyListResponse
    , ReturnpolicyListResponse
    , returnpolicyListResponse
    , rlrlKind
    , rlrlResources

    -- ** ShippingSettingsCustomBatchResponse
    , ShippingSettingsCustomBatchResponse
    , shippingSettingsCustomBatchResponse
    , shiEntries
    , shiKind

    -- ** OrdersReturnRefundLineItemRequest
    , OrdersReturnRefundLineItemRequest
    , ordersReturnRefundLineItemRequest
    , orrlirrQuantity
    , orrlirrLineItemId
    , orrlirrReason
    , orrlirrOperationId
    , orrlirrProductId
    , orrlirrTaxAmount
    , orrlirrPriceAmount
    , orrlirrReasonText

    -- ** MonetaryAmount
    , MonetaryAmount
    , monetaryAmount
    , maTaxAmount
    , maPriceAmount

    -- ** ShipmentInvoiceLineItemInvoice
    , ShipmentInvoiceLineItemInvoice
    , shipmentInvoiceLineItemInvoice
    , siliiUnitInvoice
    , siliiShipmentUnitIds
    , siliiLineItemId
    , siliiProductId

    -- ** OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo
    , OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo
    , ordersCustomBatchRequestEntryShipLineItemsShipmentInfo
    , ocbreslisiCarrier
    , ocbreslisiTrackingId
    , ocbreslisiShipmentId

    -- ** AccountsLinkRequest
    , AccountsLinkRequest
    , accountsLinkRequest
    , alrAction
    , alrLinkedAccountId
    , alrPaymentServiceProviderLinkInfo
    , alrLinkType
    , alrServices

    -- ** DatafeedTarget
    , DatafeedTarget
    , datafeedTarget
    , dtIncludedDestinations
    , dtExcludedDestinations
    , dtCountry
    , dtLanguage

    -- ** OrdersUpdateMerchantOrderIdResponse
    , OrdersUpdateMerchantOrderIdResponse
    , ordersUpdateMerchantOrderIdResponse
    , oumoirKind
    , oumoirExecutionStatus

    -- ** OrderreportsListDisbursementsResponse
    , OrderreportsListDisbursementsResponse
    , orderreportsListDisbursementsResponse
    , oldrNextPageToken
    , oldrKind
    , oldrDisbursements

    -- ** TestOrderAddress
    , TestOrderAddress
    , testOrderAddress
    , toaRecipientName
    , toaStreetAddress
    , toaCountry
    , toaPostalCode
    , toaLocality
    , toaIsPostOfficeBox
    , toaFullAddress
    , toaRegion

    -- ** DatafeedStatusExample
    , DatafeedStatusExample
    , datafeedStatusExample
    , dseLineNumber
    , dseItemId
    , dseValue

    -- ** OrdersAcknowledgeResponse
    , OrdersAcknowledgeResponse
    , ordersAcknowledgeResponse
    , oaraKind
    , oaraExecutionStatus

    -- ** PosSaleRequest
    , PosSaleRequest
    , posSaleRequest
    , psrsStoreCode
    , psrsItemId
    , psrsQuantity
    , psrsTargetCountry
    , psrsGtin
    , psrsPrice
    , psrsContentLanguage
    , psrsTimestamp
    , psrsSaleId

    -- ** Table
    , Table
    , table
    , tRows
    , tName
    , tColumnHeaders
    , tRowHeaders

    -- ** Order
    , Order
    , order
    , o2Annotations
    , o2Status
    , o2MerchantId
    , o2Refunds
    , o2Kind
    , o2LineItems
    , o2Shipments
    , o2PlacedDate
    , o2DeliveryDetails
    , o2MerchantOrderId
    , o2Acknowledged
    , o2ShippingCostTax
    , o2Customer
    , o2BillingAddress
    , o2Id
    , o2Promotions
    , o2PickupDetails
    , o2NetTaxAmount
    , o2TaxCollector
    , o2PaymentStatus
    , o2NetPriceAmount
    , o2ShippingCost

    -- ** ReturnPolicyOnlineReturnMethodsItem
    , ReturnPolicyOnlineReturnMethodsItem (..)

    -- ** OrderreturnsAcknowledgeRequest
    , OrderreturnsAcknowledgeRequest
    , orderreturnsAcknowledgeRequest
    , oOperationId

    -- ** OrderLineItemProduct
    , OrderLineItemProduct
    , orderLineItemProduct
    , olipImageLink
    , olipShownImage
    , olipFees
    , olipBrand
    , olipTargetCountry
    , olipGtin
    , olipItemGroupId
    , olipOfferId
    , olipId
    , olipPrice
    , olipVariantAttributes
    , olipTitle
    , olipContentLanguage
    , olipMpn
    , olipCondition

    -- ** AccounttaxCustomBatchRequestEntry
    , AccounttaxCustomBatchRequestEntry
    , accounttaxCustomBatchRequestEntry
    , acbre1AccountTax
    , acbre1MerchantId
    , acbre1AccountId
    , acbre1Method
    , acbre1BatchId

    -- ** OrderTrackingSignalLineItemDetails
    , OrderTrackingSignalLineItemDetails
    , orderTrackingSignalLineItemDetails
    , otslidQuantity
    , otslidLineItemId
    , otslidGtin
    , otslidMpn
    , otslidProductId

    -- ** InApplicabilityDetailsInApplicableReason
    , InApplicabilityDetailsInApplicableReason (..)

    -- ** ShippingSettingsGetSupportedPickupServicesResponse
    , ShippingSettingsGetSupportedPickupServicesResponse
    , shippingSettingsGetSupportedPickupServicesResponse
    , ssgspsrKind
    , ssgspsrPickupServices

    -- ** DatafeedStatusError
    , DatafeedStatusError
    , datafeedStatusError
    , dseCount
    , dseCode
    , dseMessage
    , dseExamples

    -- ** ProductsCustomBatchRequest
    , ProductsCustomBatchRequest
    , productsCustomBatchRequest
    , ppEntries

    -- ** PosDataProviders
    , PosDataProviders
    , posDataProviders
    , pdpCountry
    , pdpPosDataProviders

    -- ** PosInventory
    , PosInventory
    , posInventory
    , piStoreCode
    , piKind
    , piItemId
    , piQuantity
    , piTargetCountry
    , piGtin
    , piPrice
    , piContentLanguage
    , piTimestamp

    -- ** RepricingRuleCostOfGoodsSaleRule
    , RepricingRuleCostOfGoodsSaleRule
    , repricingRuleCostOfGoodsSaleRule
    , rrcogsrPriceDelta
    , rrcogsrPercentageDelta

    -- ** TestOrderDeliveryDetails
    , TestOrderDeliveryDetails
    , testOrderDeliveryDetails
    , toddAddress
    , toddPhoneNumber
    , toddIsScheduledDelivery

    -- ** LiaSettingsListPosDataProvidersResponse
    , LiaSettingsListPosDataProvidersResponse
    , liaSettingsListPosDataProvidersResponse
    , lslpdprKind
    , lslpdprPosDataProviders

    -- ** OrderinvoicesCreateRefundInvoiceRequest
    , OrderinvoicesCreateRefundInvoiceRequest
    , orderinvoicesCreateRefundInvoiceRequest
    , ocrirRefundOnlyOption
    , ocrirInvoiceId
    , ocrirShipmentInvoices
    , ocrirOperationId
    , ocrirReturnOption

    -- ** DatafeedStatus
    , DatafeedStatus
    , datafeedStatus
    , dsItemsTotal
    , dsCountry
    , dsKind
    , dsWarnings
    , dsDatafeedId
    , dsProcessingStatus
    , dsLanguage
    , dsLastUploadDate
    , dsItemsValid
    , dsErrors

    -- ** DatafeedstatusesCustomBatchRequest
    , DatafeedstatusesCustomBatchRequest
    , datafeedstatusesCustomBatchRequest
    , dcbrcEntries

    -- ** ReturnpolicyCustomBatchResponse
    , ReturnpolicyCustomBatchResponse
    , returnpolicyCustomBatchResponse
    , rcbrcEntries
    , rcbrcKind

    -- ** AccountCredentials
    , AccountCredentials
    , accountCredentials
    , acsAccessToken
    , acsPurpose
    , acsExpiresIn

    -- ** OrdersCustomBatchRequestEntryRefundItemItem
    , OrdersCustomBatchRequestEntryRefundItemItem
    , ordersCustomBatchRequestEntryRefundItemItem
    , ocbreriiAmount
    , ocbreriiFullRefund
    , ocbreriiQuantity
    , ocbreriiLineItemId
    , ocbreriiProductId

    -- ** RepricingRuleEligibleOfferMatcherStringMatcher
    , RepricingRuleEligibleOfferMatcherStringMatcher
    , repricingRuleEligibleOfferMatcherStringMatcher
    , rreomsmStrAttributes

    -- ** DateTime''
    , DateTime''
    , dateTime
    , dtNanos
    , dtHours
    , dtDay
    , dtYear
    , dtUtcOffSet
    , dtMinutes
    , dtMonth
    , dtTimeZone
    , dtSeconds

    -- ** VerifyPhoneNumberRequest
    , VerifyPhoneNumberRequest
    , verifyPhoneNumberRequest
    , vpnrVerificationCode
    , vpnrVerificationId
    , vpnrPhoneVerificationMethod

    -- ** SettlementTransactionIdentifiers
    , SettlementTransactionIdentifiers
    , settlementTransactionIdentifiers
    , stiTransactionId
    , stiMerchantOrderId
    , stiSettlementEntryId
    , stiAdjustmentId
    , stiOrderItemId
    , stiShipmentIds

    -- ** LocalinventoryCustomBatchRequest
    , LocalinventoryCustomBatchRequest
    , localinventoryCustomBatchRequest
    , locEntries

    -- ** OrdersInStoreRefundLineItemRequest
    , OrdersInStoreRefundLineItemRequest
    , ordersInStoreRefundLineItemRequest
    , oisrlirQuantity
    , oisrlirLineItemId
    , oisrlirReason
    , oisrlirOperationId
    , oisrlirProductId
    , oisrlirTaxAmount
    , oisrlirPriceAmount
    , oisrlirReasonText

    -- ** MerchantRejectionReason
    , MerchantRejectionReason
    , merchantRejectionReason
    , mrrReasonCode
    , mrrDescription

    -- ** AccountsCustomBatchRequestEntryLinkRequest
    , AccountsCustomBatchRequestEntryLinkRequest
    , accountsCustomBatchRequestEntryLinkRequest
    , acbrelrAction
    , acbrelrLinkedAccountId
    , acbrelrLinkType
    , acbrelrServices

    -- ** ProductShippingDimension
    , ProductShippingDimension
    , productShippingDimension
    , psdValue
    , psdUnit

    -- ** SettlementreportsListResponse
    , SettlementreportsListResponse
    , settlementreportsListResponse
    , setNextPageToken
    , setKind
    , setResources

    -- ** RepricingRuleType
    , RepricingRuleType (..)

    -- ** RegionalinventoryCustomBatchRequest
    , RegionalinventoryCustomBatchRequest
    , regionalinventoryCustomBatchRequest
    , rrEntries

    -- ** DatafeedsCustomBatchResponseEntry
    , DatafeedsCustomBatchResponseEntry
    , datafeedsCustomBatchResponseEntry
    , dcbrecDatafeed
    , dcbrecErrors
    , dcbrecBatchId

    -- ** DatafeedstatusesListResponse
    , DatafeedstatusesListResponse
    , datafeedstatusesListResponse
    , dlrlNextPageToken
    , dlrlKind
    , dlrlResources

    -- ** ProductsListResponse
    , ProductsListResponse
    , productsListResponse
    , plr1NextPageToken
    , plr1Kind
    , plr1Resources

    -- ** PriceAmount
    , PriceAmount
    , priceAmount
    , paValue
    , paCurrency

    -- ** ShipmentInvoice
    , ShipmentInvoice
    , shipmentInvoice
    , siShipmentGroupId
    , siLineItemInvoices
    , siInvoiceSummary

    -- ** OrderShipmentScheduledDeliveryDetails
    , OrderShipmentScheduledDeliveryDetails
    , orderShipmentScheduledDeliveryDetails
    , ossddScheduledDate
    , ossddCarrierPhoneNumber

    -- ** OrderCancellation
    , OrderCancellation
    , orderCancellation
    , ocQuantity
    , ocActor
    , ocReason
    , ocCreationDate
    , ocReasonText

    -- ** PauseBuyOnGoogleProgramRequest
    , PauseBuyOnGoogleProgramRequest
    , pauseBuyOnGoogleProgramRequest

    -- ** AccountLabelLabelType
    , AccountLabelLabelType (..)
    ) where

import Network.Google.Prelude
import Network.Google.Resource.Content.Accounts.AuthInfo
import Network.Google.Resource.Content.Accounts.Claimwebsite
import Network.Google.Resource.Content.Accounts.Credentials.Create
import Network.Google.Resource.Content.Accounts.Custombatch
import Network.Google.Resource.Content.Accounts.Delete
import Network.Google.Resource.Content.Accounts.Get
import Network.Google.Resource.Content.Accounts.Insert
import Network.Google.Resource.Content.Accounts.Labels.Create
import Network.Google.Resource.Content.Accounts.Labels.Delete
import Network.Google.Resource.Content.Accounts.Labels.List
import Network.Google.Resource.Content.Accounts.Labels.Patch
import Network.Google.Resource.Content.Accounts.Link
import Network.Google.Resource.Content.Accounts.List
import Network.Google.Resource.Content.Accounts.Listlinks
import Network.Google.Resource.Content.Accounts.Requestphoneverification
import Network.Google.Resource.Content.Accounts.Returncarrier.Create
import Network.Google.Resource.Content.Accounts.Returncarrier.Delete
import Network.Google.Resource.Content.Accounts.Returncarrier.List
import Network.Google.Resource.Content.Accounts.Returncarrier.Patch
import Network.Google.Resource.Content.Accounts.Update
import Network.Google.Resource.Content.Accounts.Updatelabels
import Network.Google.Resource.Content.Accounts.Verifyphonenumber
import Network.Google.Resource.Content.Accountstatuses.Custombatch
import Network.Google.Resource.Content.Accountstatuses.Get
import Network.Google.Resource.Content.Accountstatuses.List
import Network.Google.Resource.Content.Accounttax.Custombatch
import Network.Google.Resource.Content.Accounttax.Get
import Network.Google.Resource.Content.Accounttax.List
import Network.Google.Resource.Content.Accounttax.Update
import Network.Google.Resource.Content.Buyongoogleprograms.Activate
import Network.Google.Resource.Content.Buyongoogleprograms.Get
import Network.Google.Resource.Content.Buyongoogleprograms.Onboard
import Network.Google.Resource.Content.Buyongoogleprograms.Pause
import Network.Google.Resource.Content.Buyongoogleprograms.Requestreview
import Network.Google.Resource.Content.Collections.Create
import Network.Google.Resource.Content.Collections.Delete
import Network.Google.Resource.Content.Collections.Get
import Network.Google.Resource.Content.Collections.List
import Network.Google.Resource.Content.Collectionstatuses.Get
import Network.Google.Resource.Content.Collectionstatuses.List
import Network.Google.Resource.Content.Csses.Get
import Network.Google.Resource.Content.Csses.List
import Network.Google.Resource.Content.Csses.Updatelabels
import Network.Google.Resource.Content.Datafeeds.Custombatch
import Network.Google.Resource.Content.Datafeeds.Delete
import Network.Google.Resource.Content.Datafeeds.Fetchnow
import Network.Google.Resource.Content.Datafeeds.Get
import Network.Google.Resource.Content.Datafeeds.Insert
import Network.Google.Resource.Content.Datafeeds.List
import Network.Google.Resource.Content.Datafeeds.Update
import Network.Google.Resource.Content.Datafeedstatuses.Custombatch
import Network.Google.Resource.Content.Datafeedstatuses.Get
import Network.Google.Resource.Content.Datafeedstatuses.List
import Network.Google.Resource.Content.FreeListingsprogram.Get
import Network.Google.Resource.Content.FreeListingsprogram.Requestreview
import Network.Google.Resource.Content.LiaSettings.Custombatch
import Network.Google.Resource.Content.LiaSettings.Get
import Network.Google.Resource.Content.LiaSettings.GetAccessiblegmbAccounts
import Network.Google.Resource.Content.LiaSettings.List
import Network.Google.Resource.Content.LiaSettings.ListposDataproviders
import Network.Google.Resource.Content.LiaSettings.RequestgmbAccess
import Network.Google.Resource.Content.LiaSettings.Requestinventoryverification
import Network.Google.Resource.Content.LiaSettings.Setinventoryverificationcontact
import Network.Google.Resource.Content.LiaSettings.SetposDataprovider
import Network.Google.Resource.Content.LiaSettings.Update
import Network.Google.Resource.Content.Localinventory.Custombatch
import Network.Google.Resource.Content.Localinventory.Insert
import Network.Google.Resource.Content.Orderinvoices.Createchargeinvoice
import Network.Google.Resource.Content.Orderinvoices.Createrefundinvoice
import Network.Google.Resource.Content.Orderreports.Listdisbursements
import Network.Google.Resource.Content.Orderreports.Listtransactions
import Network.Google.Resource.Content.Orderreturns.Acknowledge
import Network.Google.Resource.Content.Orderreturns.CreateOrderreturn
import Network.Google.Resource.Content.Orderreturns.Get
import Network.Google.Resource.Content.Orderreturns.Labels.Create
import Network.Google.Resource.Content.Orderreturns.List
import Network.Google.Resource.Content.Orderreturns.Process
import Network.Google.Resource.Content.Orders.Acknowledge
import Network.Google.Resource.Content.Orders.AdvancetestOrder
import Network.Google.Resource.Content.Orders.Cancel
import Network.Google.Resource.Content.Orders.Cancellineitem
import Network.Google.Resource.Content.Orders.CanceltestOrderbycustomer
import Network.Google.Resource.Content.Orders.CreatetestOrder
import Network.Google.Resource.Content.Orders.Createtestreturn
import Network.Google.Resource.Content.Orders.Get
import Network.Google.Resource.Content.Orders.GetbymerchantOrderid
import Network.Google.Resource.Content.Orders.GettestOrdertemplate
import Network.Google.Resource.Content.Orders.Instorerefundlineitem
import Network.Google.Resource.Content.Orders.List
import Network.Google.Resource.Content.Orders.RefundOrder
import Network.Google.Resource.Content.Orders.Refunditem
import Network.Google.Resource.Content.Orders.Rejectreturnlineitem
import Network.Google.Resource.Content.Orders.Returnrefundlineitem
import Network.Google.Resource.Content.Orders.Setlineitemmetadata
import Network.Google.Resource.Content.Orders.Shiplineitems
import Network.Google.Resource.Content.Orders.Updatelineitemshippingdetails
import Network.Google.Resource.Content.Orders.UpdatemerchantOrderid
import Network.Google.Resource.Content.Orders.Updateshipment
import Network.Google.Resource.Content.Ordertrackingsignals.Create
import Network.Google.Resource.Content.Pos.Custombatch
import Network.Google.Resource.Content.Pos.Delete
import Network.Google.Resource.Content.Pos.Get
import Network.Google.Resource.Content.Pos.Insert
import Network.Google.Resource.Content.Pos.Inventory
import Network.Google.Resource.Content.Pos.List
import Network.Google.Resource.Content.Pos.Sale
import Network.Google.Resource.Content.Products.Custombatch
import Network.Google.Resource.Content.Products.Delete
import Network.Google.Resource.Content.Products.Get
import Network.Google.Resource.Content.Products.Insert
import Network.Google.Resource.Content.Products.List
import Network.Google.Resource.Content.Products.Update
import Network.Google.Resource.Content.Productstatuses.Custombatch
import Network.Google.Resource.Content.Productstatuses.Get
import Network.Google.Resource.Content.Productstatuses.List
import Network.Google.Resource.Content.Productstatuses.Repricingreports.List
import Network.Google.Resource.Content.PubsubnotificationSettings.Get
import Network.Google.Resource.Content.PubsubnotificationSettings.Update
import Network.Google.Resource.Content.Regionalinventory.Custombatch
import Network.Google.Resource.Content.Regionalinventory.Insert
import Network.Google.Resource.Content.Regions.Create
import Network.Google.Resource.Content.Regions.Delete
import Network.Google.Resource.Content.Regions.Get
import Network.Google.Resource.Content.Regions.List
import Network.Google.Resource.Content.Regions.Patch
import Network.Google.Resource.Content.Reports.Search
import Network.Google.Resource.Content.Repricingrules.Create
import Network.Google.Resource.Content.Repricingrules.Delete
import Network.Google.Resource.Content.Repricingrules.Get
import Network.Google.Resource.Content.Repricingrules.List
import Network.Google.Resource.Content.Repricingrules.Patch
import Network.Google.Resource.Content.Repricingrules.Repricingreports.List
import Network.Google.Resource.Content.Returnaddress.Custombatch
import Network.Google.Resource.Content.Returnaddress.Delete
import Network.Google.Resource.Content.Returnaddress.Get
import Network.Google.Resource.Content.Returnaddress.Insert
import Network.Google.Resource.Content.Returnaddress.List
import Network.Google.Resource.Content.Returnpolicy.Custombatch
import Network.Google.Resource.Content.Returnpolicy.Delete
import Network.Google.Resource.Content.Returnpolicy.Get
import Network.Google.Resource.Content.Returnpolicy.Insert
import Network.Google.Resource.Content.Returnpolicy.List
import Network.Google.Resource.Content.ReturnpolicyOnline.Create
import Network.Google.Resource.Content.ReturnpolicyOnline.Delete
import Network.Google.Resource.Content.ReturnpolicyOnline.Get
import Network.Google.Resource.Content.ReturnpolicyOnline.List
import Network.Google.Resource.Content.ReturnpolicyOnline.Patch
import Network.Google.Resource.Content.Settlementreports.Get
import Network.Google.Resource.Content.Settlementreports.List
import Network.Google.Resource.Content.Settlementtransactions.List
import Network.Google.Resource.Content.ShippingSettings.Custombatch
import Network.Google.Resource.Content.ShippingSettings.Get
import Network.Google.Resource.Content.ShippingSettings.Getsupportedcarriers
import Network.Google.Resource.Content.ShippingSettings.Getsupportedholidays
import Network.Google.Resource.Content.ShippingSettings.GetsupportedpickupServices
import Network.Google.Resource.Content.ShippingSettings.List
import Network.Google.Resource.Content.ShippingSettings.Update
import Network.Google.Resource.Content.Shoppingadsprogram.Get
import Network.Google.Resource.Content.Shoppingadsprogram.Requestreview
import Network.Google.ShoppingContent.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Content API for Shopping service.
type ShoppingContentAPI =
     AccounttaxListResource :<|> AccounttaxGetResource
       :<|> AccounttaxCustombatchResource
       :<|> AccounttaxUpdateResource
       :<|> OrderinvoicesCreatechargeinvoiceResource
       :<|> OrderinvoicesCreaterefundinvoiceResource
       :<|> CollectionstatusesListResource
       :<|> CollectionstatusesGetResource
       :<|> LocalinventoryInsertResource
       :<|> LocalinventoryCustombatchResource
       :<|> RegionalinventoryInsertResource
       :<|> RegionalinventoryCustombatchResource
       :<|> SettlementtransactionsListResource
       :<|> RepricingrulesRepricingreportsListResource
       :<|> RepricingrulesListResource
       :<|> RepricingrulesPatchResource
       :<|> RepricingrulesGetResource
       :<|> RepricingrulesCreateResource
       :<|> RepricingrulesDeleteResource
       :<|> AccountsCredentialsCreateResource
       :<|> AccountsLabelsListResource
       :<|> AccountsLabelsPatchResource
       :<|> AccountsLabelsCreateResource
       :<|> AccountsLabelsDeleteResource
       :<|> AccountsReturncarrierListResource
       :<|> AccountsReturncarrierPatchResource
       :<|> AccountsReturncarrierCreateResource
       :<|> AccountsReturncarrierDeleteResource
       :<|> AccountsUpdatelabelsResource
       :<|> AccountsInsertResource
       :<|> AccountsListResource
       :<|> AccountsLinkResource
       :<|> AccountsVerifyphonenumberResource
       :<|> AccountsGetResource
       :<|> AccountsRequestphoneverificationResource
       :<|> AccountsCustombatchResource
       :<|> AccountsAuthInfoResource
       :<|> AccountsDeleteResource
       :<|> AccountsListlinksResource
       :<|> AccountsUpdateResource
       :<|> AccountsClaimwebsiteResource
       :<|> ReportsSearchResource
       :<|> CollectionsListResource
       :<|> CollectionsGetResource
       :<|> CollectionsCreateResource
       :<|> CollectionsDeleteResource
       :<|> OrderreportsListtransactionsResource
       :<|> OrderreportsListdisbursementsResource
       :<|> PubsubnotificationSettingsGetResource
       :<|> PubsubnotificationSettingsUpdateResource
       :<|> RegionsListResource
       :<|> RegionsPatchResource
       :<|> RegionsGetResource
       :<|> RegionsCreateResource
       :<|> RegionsDeleteResource
       :<|> BuyongoogleprogramsRequestreviewResource
       :<|> BuyongoogleprogramsGetResource
       :<|> BuyongoogleprogramsActivateResource
       :<|> BuyongoogleprogramsPauseResource
       :<|> BuyongoogleprogramsOnboardResource
       :<|> ProductstatusesRepricingreportsListResource
       :<|> ProductstatusesListResource
       :<|> ProductstatusesGetResource
       :<|> ProductstatusesCustombatchResource
       :<|> LiaSettingsListposDataprovidersResource
       :<|> LiaSettingsSetposDataproviderResource
       :<|> LiaSettingsRequestinventoryverificationResource
       :<|> LiaSettingsListResource
       :<|> LiaSettingsRequestgmbAccessResource
       :<|> LiaSettingsGetResource
       :<|> LiaSettingsCustombatchResource
       :<|> LiaSettingsGetAccessiblegmbAccountsResource
       :<|> LiaSettingsUpdateResource
       :<|>
       LiaSettingsSetinventoryverificationcontactResource
       :<|> PosInsertResource
       :<|> PosListResource
       :<|> PosGetResource
       :<|> PosCustombatchResource
       :<|> PosInventoryResource
       :<|> PosSaleResource
       :<|> PosDeleteResource
       :<|> ReturnaddressInsertResource
       :<|> ReturnaddressListResource
       :<|> ReturnaddressGetResource
       :<|> ReturnaddressCustombatchResource
       :<|> ReturnaddressDeleteResource
       :<|> OrdertrackingsignalsCreateResource
       :<|> ShippingSettingsListResource
       :<|> ShippingSettingsGetResource
       :<|> ShippingSettingsCustombatchResource
       :<|> ShippingSettingsGetsupportedcarriersResource
       :<|>
       ShippingSettingsGetsupportedpickupServicesResource
       :<|> ShippingSettingsGetsupportedholidaysResource
       :<|> ShippingSettingsUpdateResource
       :<|> OrderreturnsLabelsCreateResource
       :<|> OrderreturnsListResource
       :<|> OrderreturnsAcknowledgeResource
       :<|> OrderreturnsProcessResource
       :<|> OrderreturnsGetResource
       :<|> OrderreturnsCreateOrderreturnResource
       :<|> ReturnpolicyInsertResource
       :<|> ReturnpolicyListResource
       :<|> ReturnpolicyGetResource
       :<|> ReturnpolicyCustombatchResource
       :<|> ReturnpolicyDeleteResource
       :<|> ReturnpolicyOnlineListResource
       :<|> ReturnpolicyOnlinePatchResource
       :<|> ReturnpolicyOnlineGetResource
       :<|> ReturnpolicyOnlineCreateResource
       :<|> ReturnpolicyOnlineDeleteResource
       :<|> CssesUpdatelabelsResource
       :<|> CssesListResource
       :<|> CssesGetResource
       :<|> OrdersGetbymerchantOrderidResource
       :<|> OrdersCreatetestOrderResource
       :<|> OrdersListResource
       :<|> OrdersInstorerefundlineitemResource
       :<|> OrdersCancellineitemResource
       :<|> OrdersUpdatemerchantOrderidResource
       :<|> OrdersAcknowledgeResource
       :<|> OrdersCreatetestreturnResource
       :<|> OrdersRefunditemResource
       :<|> OrdersGetResource
       :<|> OrdersGettestOrdertemplateResource
       :<|> OrdersCanceltestOrderbycustomerResource
       :<|> OrdersUpdateshipmentResource
       :<|> OrdersSetlineitemmetadataResource
       :<|> OrdersReturnrefundlineitemResource
       :<|> OrdersAdvancetestOrderResource
       :<|> OrdersShiplineitemsResource
       :<|> OrdersUpdatelineitemshippingdetailsResource
       :<|> OrdersRefundOrderResource
       :<|> OrdersRejectreturnlineitemResource
       :<|> OrdersCancelResource
       :<|> ProductsInsertResource
       :<|> ProductsListResource
       :<|> ProductsGetResource
       :<|> ProductsCustombatchResource
       :<|> ProductsDeleteResource
       :<|> ProductsUpdateResource
       :<|> SettlementreportsListResource
       :<|> SettlementreportsGetResource
       :<|> DatafeedstatusesListResource
       :<|> DatafeedstatusesGetResource
       :<|> DatafeedstatusesCustombatchResource
       :<|> AccountstatusesListResource
       :<|> AccountstatusesGetResource
       :<|> AccountstatusesCustombatchResource
       :<|> ShoppingadsprogramRequestreviewResource
       :<|> ShoppingadsprogramGetResource
       :<|> FreeListingsprogramRequestreviewResource
       :<|> FreeListingsprogramGetResource
       :<|> DatafeedsInsertResource
       :<|> DatafeedsListResource
       :<|> DatafeedsGetResource
       :<|> DatafeedsCustombatchResource
       :<|> DatafeedsFetchnowResource
       :<|> DatafeedsDeleteResource
       :<|> DatafeedsUpdateResource
