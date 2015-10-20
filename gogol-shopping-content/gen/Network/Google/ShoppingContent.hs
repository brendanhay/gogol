{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.ShoppingContent
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manage product items, inventory, and Merchant Center accounts for Google
-- Shopping.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference>
module Network.Google.ShoppingContent
    (
    -- * Service Configuration
      shoppingContentService

    -- * API Declaration
    , ShoppingContentAPI

    -- * Resources

    -- ** content.accounts.authinfo
    , module Network.Google.Resource.Content.Accounts.AuthInfo

    -- ** content.accounts.custombatch
    , module Network.Google.Resource.Content.Accounts.Custombatch

    -- ** content.accounts.delete
    , module Network.Google.Resource.Content.Accounts.Delete

    -- ** content.accounts.get
    , module Network.Google.Resource.Content.Accounts.Get

    -- ** content.accounts.insert
    , module Network.Google.Resource.Content.Accounts.Insert

    -- ** content.accounts.list
    , module Network.Google.Resource.Content.Accounts.List

    -- ** content.accounts.patch
    , module Network.Google.Resource.Content.Accounts.Patch

    -- ** content.accounts.update
    , module Network.Google.Resource.Content.Accounts.Update

    -- ** content.accountshipping.custombatch
    , module Network.Google.Resource.Content.Accountshipping.Custombatch

    -- ** content.accountshipping.get
    , module Network.Google.Resource.Content.Accountshipping.Get

    -- ** content.accountshipping.list
    , module Network.Google.Resource.Content.Accountshipping.List

    -- ** content.accountshipping.patch
    , module Network.Google.Resource.Content.Accountshipping.Patch

    -- ** content.accountshipping.update
    , module Network.Google.Resource.Content.Accountshipping.Update

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

    -- ** content.accounttax.patch
    , module Network.Google.Resource.Content.Accounttax.Patch

    -- ** content.accounttax.update
    , module Network.Google.Resource.Content.Accounttax.Update

    -- ** content.datafeeds.custombatch
    , module Network.Google.Resource.Content.Datafeeds.Custombatch

    -- ** content.datafeeds.delete
    , module Network.Google.Resource.Content.Datafeeds.Delete

    -- ** content.datafeeds.get
    , module Network.Google.Resource.Content.Datafeeds.Get

    -- ** content.datafeeds.insert
    , module Network.Google.Resource.Content.Datafeeds.Insert

    -- ** content.datafeeds.list
    , module Network.Google.Resource.Content.Datafeeds.List

    -- ** content.datafeeds.patch
    , module Network.Google.Resource.Content.Datafeeds.Patch

    -- ** content.datafeeds.update
    , module Network.Google.Resource.Content.Datafeeds.Update

    -- ** content.datafeedstatuses.custombatch
    , module Network.Google.Resource.Content.Datafeedstatuses.Custombatch

    -- ** content.datafeedstatuses.get
    , module Network.Google.Resource.Content.Datafeedstatuses.Get

    -- ** content.datafeedstatuses.list
    , module Network.Google.Resource.Content.Datafeedstatuses.List

    -- ** content.inventory.custombatch
    , module Network.Google.Resource.Content.Inventory.Custombatch

    -- ** content.inventory.set
    , module Network.Google.Resource.Content.Inventory.Set

    -- ** content.orders.acknowledge
    , module Network.Google.Resource.Content.Orders.Acknowledge

    -- ** content.orders.advancetestorder
    , module Network.Google.Resource.Content.Orders.AdvancetestOrder

    -- ** content.orders.cancel
    , module Network.Google.Resource.Content.Orders.Cancel

    -- ** content.orders.cancellineitem
    , module Network.Google.Resource.Content.Orders.Cancellineitem

    -- ** content.orders.createtestorder
    , module Network.Google.Resource.Content.Orders.CreatetestOrder

    -- ** content.orders.custombatch
    , module Network.Google.Resource.Content.Orders.Custombatch

    -- ** content.orders.get
    , module Network.Google.Resource.Content.Orders.Get

    -- ** content.orders.getbymerchantorderid
    , module Network.Google.Resource.Content.Orders.GetbymerchantOrderid

    -- ** content.orders.gettestordertemplate
    , module Network.Google.Resource.Content.Orders.GettestOrdertemplate

    -- ** content.orders.list
    , module Network.Google.Resource.Content.Orders.List

    -- ** content.orders.refund
    , module Network.Google.Resource.Content.Orders.Refund

    -- ** content.orders.returnlineitem
    , module Network.Google.Resource.Content.Orders.Returnlineitem

    -- ** content.orders.shiplineitems
    , module Network.Google.Resource.Content.Orders.Shiplineitems

    -- ** content.orders.updatemerchantorderid
    , module Network.Google.Resource.Content.Orders.UpdatemerchantOrderid

    -- ** content.orders.updateshipment
    , module Network.Google.Resource.Content.Orders.Updateshipment

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

    -- ** content.productstatuses.custombatch
    , module Network.Google.Resource.Content.Productstatuses.Custombatch

    -- ** content.productstatuses.get
    , module Network.Google.Resource.Content.Productstatuses.Get

    -- ** content.productstatuses.list
    , module Network.Google.Resource.Content.Productstatuses.List

    -- * Types

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

    -- ** OrdersUpdateMerchantOrderIdRequest
    , OrdersUpdateMerchantOrderIdRequest
    , ordersUpdateMerchantOrderIdRequest
    , oumoirMerchantOrderId
    , oumoirOperationId

    -- ** OrdersAdvanceTestOrderResponse
    , OrdersAdvanceTestOrderResponse
    , ordersAdvanceTestOrderResponse
    , oatorKind

    -- ** ProductsCustomBatchResponse
    , ProductsCustomBatchResponse
    , productsCustomBatchResponse
    , pcbrEntries
    , pcbrKind

    -- ** OrdersGettestOrdertemplateTemplateName
    , OrdersGettestOrdertemplateTemplateName (..)

    -- ** TestOrderCustomer
    , TestOrderCustomer
    , testOrderCustomer
    , tocFullName
    , tocEmail
    , tocExplicitMarketingPreference

    -- ** DatafeedstatusesCustomBatchResponse
    , DatafeedstatusesCustomBatchResponse
    , datafeedstatusesCustomBatchResponse
    , dcbrEntries
    , dcbrKind

    -- ** OrderReturn
    , OrderReturn
    , orderReturn
    , orQuantity
    , orActor
    , orReason
    , orCreationDate
    , orReasonText

    -- ** AccounttaxCustomBatchResponseEntry
    , AccounttaxCustomBatchResponseEntry
    , accounttaxCustomBatchResponseEntry
    , acbreAccountTax
    , acbreKind
    , acbreErrors
    , acbreBatchId

    -- ** InventoryCustomBatchRequest
    , InventoryCustomBatchRequest
    , inventoryCustomBatchRequest
    , icbrEntries

    -- ** AccountsAuthInfoResponse
    , AccountsAuthInfoResponse
    , accountsAuthInfoResponse
    , aairKind
    , aairAccountIdentifiers

    -- ** ProductStatusDestinationStatus
    , ProductStatusDestinationStatus
    , productStatusDestinationStatus
    , psdsDestination
    , psdsIntention
    , psdsApprovalStatus

    -- ** AccountTaxTaxRule
    , AccountTaxTaxRule
    , accountTaxTaxRule
    , attrUseGlobalRate
    , attrCountry
    , attrShippingTaxed
    , attrLocationId
    , attrRatePercent

    -- ** ProductDestination
    , ProductDestination
    , productDestination
    , pdIntention
    , pdDestinationName

    -- ** DatafeedsCustomBatchRequest
    , DatafeedsCustomBatchRequest
    , datafeedsCustomBatchRequest
    , dEntries

    -- ** OrdersCustomBatchRequestEntry
    , OrdersCustomBatchRequestEntry
    , ordersCustomBatchRequestEntry
    , ocbreMerchantId
    , ocbreCancelLineItem
    , ocbreRefund
    , ocbreUpdateShipment
    , ocbreReturnLineItem
    , ocbreMerchantOrderId
    , ocbreMethod
    , ocbreShipLineItems
    , ocbreOperationId
    , ocbreOrderId
    , ocbreCancel
    , ocbreBatchId

    -- ** OrdersRefundRequest
    , OrdersRefundRequest
    , ordersRefundRequest
    , orrAmount
    , orrReason
    , orrOperationId
    , orrReasonText

    -- ** AccountShippingShippingServiceCalculationMethod
    , AccountShippingShippingServiceCalculationMethod
    , accountShippingShippingServiceCalculationMethod
    , assscmPercentageRate
    , assscmCarrierRate
    , assscmRateTable
    , assscmExcluded
    , assscmFlatRate

    -- ** OrdersCustomBatchRequestEntryCancelLineItem
    , OrdersCustomBatchRequestEntryCancelLineItem
    , ordersCustomBatchRequestEntryCancelLineItem
    , ocbrecliQuantity
    , ocbrecliLineItemId
    , ocbrecliReason
    , ocbrecliReasonText

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
    , dTargetCountry
    , dFetchSchedule
    , dName
    , dIntendedDestinations
    , dId
    , dContentLanguage
    , dContentType
    , dFileName

    -- ** OrdersCreateTestOrderResponse
    , OrdersCreateTestOrderResponse
    , ordersCreateTestOrderResponse
    , octorKind
    , octorOrderId

    -- ** AccountsCustomBatchResponseEntry
    , AccountsCustomBatchResponseEntry
    , accountsCustomBatchResponseEntry
    , aKind
    , aAccount
    , aErrors
    , aBatchId

    -- ** OrdersListOrderBy
    , OrdersListOrderBy (..)

    -- ** AccountIdentifier
    , AccountIdentifier
    , accountIdentifier
    , aiMerchantId
    , aiAggregatorId

    -- ** TestOrderPaymentMethod
    , TestOrderPaymentMethod
    , testOrderPaymentMethod
    , topmExpirationMonth
    , topmExpirationYear
    , topmLastFourDigits
    , topmType
    , topmPredefinedBillingAddress

    -- ** OrderLineItem
    , OrderLineItem
    , orderLineItem
    , oliQuantityOrdered
    , oliReturnInfo
    , oliQuantityDelivered
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

    -- ** ProductstatusesCustomBatchResponse
    , ProductstatusesCustomBatchResponse
    , productstatusesCustomBatchResponse
    , pEntries
    , pKind

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
    , ousrTrackingId
    , ousrShipmentId
    , ousrOperationId

    -- ** OrderShipmentLineItemShipment
    , OrderShipmentLineItemShipment
    , orderShipmentLineItemShipment
    , oslisQuantity
    , oslisLineItemId

    -- ** OrdersListStatuses
    , OrdersListStatuses (..)

    -- ** LoyaltyPoints
    , LoyaltyPoints
    , loyaltyPoints
    , lpRatio
    , lpPointsValue
    , lpName

    -- ** AccountshippingCustomBatchRequest
    , AccountshippingCustomBatchRequest
    , accountshippingCustomBatchRequest
    , acbrEntries

    -- ** OrdersCustomBatchRequestEntryShipLineItems
    , OrdersCustomBatchRequestEntryShipLineItems
    , ordersCustomBatchRequestEntryShipLineItems
    , ocbresliCarrier
    , ocbresliTrackingId
    , ocbresliShipmentId
    , ocbresliLineItems

    -- ** AccountStatus
    , AccountStatus
    , accountStatus
    , asDataQualityIssues
    , asKind
    , asAccountId

    -- ** OrdersReturnLineItemRequest
    , OrdersReturnLineItemRequest
    , ordersReturnLineItemRequest
    , orlirQuantity
    , orlirLineItemId
    , orlirReason
    , orlirOperationId
    , orlirReasonText

    -- ** AccountstatusesCustomBatchRequest
    , AccountstatusesCustomBatchRequest
    , accountstatusesCustomBatchRequest
    , aEntries

    -- ** AccounttaxListResponse
    , AccounttaxListResponse
    , accounttaxListResponse
    , alrNextPageToken
    , alrKind
    , alrResources

    -- ** OrdersGetTestOrderTemplateResponse
    , OrdersGetTestOrderTemplateResponse
    , ordersGetTestOrderTemplateResponse
    , ogtotrKind
    , ogtotrTemplate

    -- ** AccountsCustomBatchRequestEntry
    , AccountsCustomBatchRequestEntry
    , accountsCustomBatchRequestEntry
    , accMerchantId
    , accAccount
    , accAccountId
    , accMethod
    , accBatchId

    -- ** Weight
    , Weight
    , weight
    , wValue
    , wUnit

    -- ** ProductInstallment
    , ProductInstallment
    , productInstallment
    , piAmount
    , piMonths

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

    -- ** OrdersRefundResponse
    , OrdersRefundResponse
    , ordersRefundResponse
    , orrKind
    , orrExecutionStatus

    -- ** OrdersCreateTestOrderRequest
    , OrdersCreateTestOrderRequest
    , ordersCreateTestOrderRequest
    , octorTemplateName
    , octorTestOrder

    -- ** AccountUser
    , AccountUser
    , accountUser
    , auAdmin
    , auEmailAddress

    -- ** AccountStatusExampleItem
    , AccountStatusExampleItem
    , accountStatusExampleItem
    , aseiSubmittedValue
    , aseiLink
    , aseiItemId
    , aseiTitle
    , aseiValueOnLandingPage

    -- ** DatafeedsCustomBatchRequestEntry
    , DatafeedsCustomBatchRequestEntry
    , datafeedsCustomBatchRequestEntry
    , dcbreMerchantId
    , dcbreDatafeed
    , dcbreMethod
    , dcbreDatafeedId
    , dcbreBatchId

    -- ** DatafeedFetchSchedule
    , DatafeedFetchSchedule
    , datafeedFetchSchedule
    , dfsFetchURL
    , dfsUsername
    , dfsPassword
    , dfsDayOfMonth
    , dfsHour
    , dfsWeekday
    , dfsTimeZone

    -- ** OrdersCustomBatchRequest
    , OrdersCustomBatchRequest
    , ordersCustomBatchRequest
    , ocbrEntries

    -- ** AccountsListResponse
    , AccountsListResponse
    , accountsListResponse
    , accNextPageToken
    , accKind
    , accResources

    -- ** ProductStatusDataQualityIssue
    , ProductStatusDataQualityIssue
    , productStatusDataQualityIssue
    , psdqiLocation
    , psdqiFetchStatus
    , psdqiSeverity
    , psdqiValueProvided
    , psdqiId
    , psdqiValueOnLandingPage
    , psdqiTimestamp
    , psdqiDetail

    -- ** OrdersShipLineItemsRequest
    , OrdersShipLineItemsRequest
    , ordersShipLineItemsRequest
    , oslirCarrier
    , oslirTrackingId
    , oslirShipmentId
    , oslirLineItems
    , oslirOperationId

    -- ** AccountsCustomBatchResponse
    , AccountsCustomBatchResponse
    , accountsCustomBatchResponse
    , acbrcEntries
    , acbrcKind

    -- ** ProductTax
    , ProductTax
    , productTax
    , ptTaxShip
    , ptCountry
    , ptPostalCode
    , ptRate
    , ptRegion
    , ptLocationId

    -- ** OrderShipment
    , OrderShipment
    , orderShipment
    , osCarrier
    , osStatus
    , osTrackingId
    , osLineItems
    , osId
    , osCreationDate
    , osDeliveryDate

    -- ** OrderLineItemReturnInfo
    , OrderLineItemReturnInfo
    , orderLineItemReturnInfo
    , oliriIsReturnable
    , oliriPolicyURL
    , oliriDaysToReturn

    -- ** AccountShippingRateTableCell
    , AccountShippingRateTableCell
    , accountShippingRateTableCell
    , asrtcRate
    , asrtcCondition

    -- ** Account
    , Account
    , account
    , aaUsers
    , aaKind
    , aaSellerId
    , aaName
    , aaReviewsURL
    , aaId
    , aaWebsiteURL
    , aaAdwordsLinks
    , aaAdultContent

    -- ** InventorySetRequest
    , InventorySetRequest
    , inventorySetRequest
    , isrQuantity
    , isrSalePrice
    , isrAvailability
    , isrSalePriceEffectiveDate
    , isrSellOnGoogleQuantity
    , isrPrice

    -- ** AccountShippingShippingServiceCostRule
    , AccountShippingShippingServiceCostRule
    , accountShippingShippingServiceCostRule
    , assscrChildren
    , assscrCalculationMethod
    , assscrCondition

    -- ** OrdersCancelLineItemRequest
    , OrdersCancelLineItemRequest
    , ordersCancelLineItemRequest
    , oclirQuantity
    , oclirLineItemId
    , oclirReason
    , oclirOperationId
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
    , acbrecMethod
    , acbrecBatchId

    -- ** ProductstatusesCustomBatchResponseEntry
    , ProductstatusesCustomBatchResponseEntry
    , productstatusesCustomBatchResponseEntry
    , pcbreKind
    , pcbreProductStatus
    , pcbreErrors
    , pcbreBatchId

    -- ** OrdersCustomBatchRequestEntryCancel
    , OrdersCustomBatchRequestEntryCancel
    , ordersCustomBatchRequestEntryCancel
    , ocbrecReason
    , ocbrecReasonText

    -- ** DatafeedFormat
    , DatafeedFormat
    , datafeedFormat
    , dfQuotingMode
    , dfFileEncoding
    , dfColumnDelimiter

    -- ** ProductShipping
    , ProductShipping
    , productShipping
    , psService
    , psLocationGroupName
    , psCountry
    , psPostalCode
    , psPrice
    , psRegion
    , psLocationId

    -- ** AccountshippingCustomBatchRequestEntry
    , AccountshippingCustomBatchRequestEntry
    , accountshippingCustomBatchRequestEntry
    , aaMerchantId
    , aaAccountId
    , aaMethod
    , aaAccountShipping
    , aaBatchId

    -- ** AccountsCustomBatchRequest
    , AccountsCustomBatchRequest
    , accountsCustomBatchRequest
    , accEntries

    -- ** ProductCustomAttribute
    , ProductCustomAttribute
    , productCustomAttribute
    , pcaValue
    , pcaName
    , pcaType
    , pcaUnit

    -- ** AccountShippingPostalCodeRange
    , AccountShippingPostalCodeRange
    , accountShippingPostalCodeRange
    , aspcrStart
    , aspcrEnd

    -- ** OrdersListResponse
    , OrdersListResponse
    , ordersListResponse
    , olrNextPageToken
    , olrKind
    , olrResources

    -- ** OrdersShipLineItemsResponse
    , OrdersShipLineItemsResponse
    , ordersShipLineItemsResponse
    , oslirKind
    , oslirExecutionStatus

    -- ** AccountShippingShippingService
    , AccountShippingShippingService
    , accountShippingShippingService
    , asssCostRuleTree
    , asssSaleCountry
    , asssCalculationMethod
    , asssActive
    , asssName

    -- ** AccountShippingRateTable
    , AccountShippingRateTable
    , accountShippingRateTable
    , asrtSaleCountry
    , asrtContent
    , asrtName

    -- ** AccountshippingCustomBatchResponse
    , AccountshippingCustomBatchResponse
    , accountshippingCustomBatchResponse
    , acccEntries
    , acccKind

    -- ** OrdersUpdateShipmentResponse
    , OrdersUpdateShipmentResponse
    , ordersUpdateShipmentResponse
    , ousrKind
    , ousrExecutionStatus

    -- ** ProductstatusesCustomBatchRequest
    , ProductstatusesCustomBatchRequest
    , productstatusesCustomBatchRequest
    , proEntries

    -- ** OrdersReturnLineItemResponse
    , OrdersReturnLineItemResponse
    , ordersReturnLineItemResponse
    , orlirKind
    , orlirExecutionStatus

    -- ** ProductCustomGroup
    , ProductCustomGroup
    , productCustomGroup
    , pcgName
    , pcgAttributes

    -- ** AccountstatusesCustomBatchResponse
    , AccountstatusesCustomBatchResponse
    , accountstatusesCustomBatchResponse
    , acbr1Entries
    , acbr1Kind

    -- ** ProductStatus
    , ProductStatus
    , productStatus
    , psDataQualityIssues
    , psKind
    , psLink
    , psDestinationStatuses
    , psLastUpdateDate
    , psCreationDate
    , psTitle
    , psGoogleExpirationDate
    , psProductId

    -- ** AccountstatusesListResponse
    , AccountstatusesListResponse
    , accountstatusesListResponse
    , alrlNextPageToken
    , alrlKind
    , alrlResources

    -- ** AccounttaxCustomBatchRequest
    , AccounttaxCustomBatchRequest
    , accounttaxCustomBatchRequest
    , aaEntries

    -- ** ProductsCustomBatchRequestEntry
    , ProductsCustomBatchRequestEntry
    , productsCustomBatchRequestEntry
    , pMerchantId
    , pMethod
    , pProduct
    , pProductId
    , pBatchId

    -- ** DatafeedstatusesCustomBatchRequestEntry
    , DatafeedstatusesCustomBatchRequestEntry
    , datafeedstatusesCustomBatchRequestEntry
    , dMerchantId
    , dMethod
    , dDatafeedId
    , dBatchId

    -- ** OrderCustomer
    , OrderCustomer
    , orderCustomer
    , ocFullName
    , ocEmail
    , ocExplicitMarketingPreference

    -- ** InventoryCustomBatchResponseEntry
    , InventoryCustomBatchResponseEntry
    , inventoryCustomBatchResponseEntry
    , icbreKind
    , icbreErrors
    , icbreBatchId

    -- ** AccountshippingListResponse
    , AccountshippingListResponse
    , accountshippingListResponse
    , alr1NextPageToken
    , alr1Kind
    , alr1Resources

    -- ** Inventory
    , Inventory
    , inventory
    , iKind
    , iQuantity
    , iSalePrice
    , iAvailability
    , iSalePriceEffectiveDate
    , iSellOnGoogleQuantity
    , iPrice

    -- ** OrdersGetByMerchantOrderIdResponse
    , OrdersGetByMerchantOrderIdResponse
    , ordersGetByMerchantOrderIdResponse
    , ogbmoirKind
    , ogbmoirOrder

    -- ** OrdersCancelRequest
    , OrdersCancelRequest
    , ordersCancelRequest
    , ocrReason
    , ocrOperationId
    , ocrReasonText

    -- ** OrderLineItemProductVariantAttribute
    , OrderLineItemProductVariantAttribute
    , orderLineItemProductVariantAttribute
    , olipvaDimension
    , olipvaValue

    -- ** OrdersCustomBatchResponseEntry
    , OrdersCustomBatchResponseEntry
    , ordersCustomBatchResponseEntry
    , oKind
    , oExecutionStatus
    , oErrors
    , oOrder
    , oBatchId

    -- ** AccountShippingCarrierRate
    , AccountShippingCarrierRate
    , accountShippingCarrierRate
    , ascrCarrier
    , ascrSaleCountry
    , ascrShippingOrigin
    , ascrCarrierService
    , ascrModifierPercent
    , ascrName
    , ascrModifierFlatRate

    -- ** Price
    , Price
    , price
    , pValue
    , pCurrency

    -- ** OrderLineItemShippingDetails
    , OrderLineItemShippingDetails
    , orderLineItemShippingDetails
    , olisdShipByDate
    , olisdMethod
    , olisdDeliverByDate

    -- ** DatafeedsCustomBatchResponse
    , DatafeedsCustomBatchResponse
    , datafeedsCustomBatchResponse
    , datEntries
    , datKind

    -- ** OrderDeliveryDetails
    , OrderDeliveryDetails
    , orderDeliveryDetails
    , oddAddress
    , oddPhoneNumber

    -- ** OrdersCancelResponse
    , OrdersCancelResponse
    , ordersCancelResponse
    , ocrKind
    , ocrExecutionStatus

    -- ** TestOrder
    , TestOrder
    , testOrder
    , toKind
    , toLineItems
    , toShippingOption
    , toPredefinedDeliveryAddress
    , toShippingCostTax
    , toCustomer
    , toPaymentMethod
    , toShippingCost

    -- ** DatafeedstatusesCustomBatchResponseEntry
    , DatafeedstatusesCustomBatchResponseEntry
    , datafeedstatusesCustomBatchResponseEntry
    , datErrors
    , datDatafeedStatus
    , datBatchId

    -- ** OrderRefund
    , OrderRefund
    , orderRefund
    , oAmount
    , oActor
    , oReason
    , oCreationDate
    , oReasonText

    -- ** TestOrderLineItemProduct
    , TestOrderLineItemProduct
    , testOrderLineItemProduct
    , tolipImageLink
    , tolipChannel
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

    -- ** AccounttaxCustomBatchResponse
    , AccounttaxCustomBatchResponse
    , accounttaxCustomBatchResponse
    , a2Entries
    , a2Kind

    -- ** InventoryCustomBatchRequestEntry
    , InventoryCustomBatchRequestEntry
    , inventoryCustomBatchRequestEntry
    , iMerchantId
    , iStoreCode
    , iInventory
    , iProductId
    , iBatchId

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

    -- ** ProductUnitPricingBaseMeasure
    , ProductUnitPricingBaseMeasure
    , productUnitPricingBaseMeasure
    , pupbmValue
    , pupbmUnit

    -- ** AccountShippingCondition
    , AccountShippingCondition
    , accountShippingCondition
    , ascWeightMax
    , ascDeliveryPostalCode
    , ascDeliveryLocationGroup
    , ascPriceMax
    , ascShippingLabel
    , ascDeliveryLocationId
    , ascDeliveryPostalCodeRange

    -- ** DatafeedsListResponse
    , DatafeedsListResponse
    , datafeedsListResponse
    , dlrNextPageToken
    , dlrKind
    , dlrResources

    -- ** ProductsCustomBatchResponseEntry
    , ProductsCustomBatchResponseEntry
    , productsCustomBatchResponseEntry
    , proKind
    , proProduct
    , proErrors
    , proBatchId

    -- ** OrderPaymentMethod
    , OrderPaymentMethod
    , orderPaymentMethod
    , opmExpirationMonth
    , opmExpirationYear
    , opmPhoneNumber
    , opmBillingAddress
    , opmLastFourDigits
    , opmType

    -- ** Product
    , Product
    , product
    , ppDisplayAdsLink
    , ppCustomLabel1
    , ppShippingWidth
    , ppCustomGroups
    , ppImageLink
    , ppDisplayAdsValue
    , ppLoyaltyPoints
    , ppAdditionalImageLinks
    , ppValidatedDestinations
    , ppColor
    , ppCustomLabel0
    , ppKind
    , ppMultipack
    , ppPattern
    , ppLink
    , ppSizeSystem
    , ppUnitPricingBaseMeasure
    , ppTaxes
    , ppMaterial
    , ppInstallment
    , ppChannel
    , ppProductType
    , ppIdentifierExists
    , ppOnlineOnly
    , ppBrand
    , ppUnitPricingMeasure
    , ppSalePrice
    , ppShippingLength
    , ppCustomLabel3
    , ppWarnings
    , ppAvailability
    , ppTargetCountry
    , ppShippingLabel
    , ppCustomAttributes
    , ppGtin
    , ppAgeGroup
    , ppDisplayAdsTitle
    , ppGender
    , ppDestinations
    , ppExpirationDate
    , ppItemGroupId
    , ppAdwordsGrouping
    , ppSalePriceEffectiveDate
    , ppCustomLabel2
    , ppGoogleProductCategory
    , ppShipping
    , ppAdwordsRedirect
    , ppShippingWeight
    , ppSellOnGoogleQuantity
    , ppShippingHeight
    , ppAvailabilityDate
    , ppOfferId
    , ppId
    , ppAdwordsLabels
    , ppPrice
    , ppSizeType
    , ppMobileLink
    , ppTitle
    , ppAdult
    , ppContentLanguage
    , ppAspects
    , ppEnergyEfficiencyClass
    , ppDisplayAdsSimilarIds
    , ppMpn
    , ppCondition
    , ppSizes
    , ppIsBundle
    , ppDescription
    , ppCustomLabel4
    , ppDisplayAdsId

    -- ** Errors
    , Errors
    , errors
    , errCode
    , errMessage
    , errErrors

    -- ** AccountstatusesCustomBatchResponseEntry
    , AccountstatusesCustomBatchResponseEntry
    , accountstatusesCustomBatchResponseEntry
    , acccAccountStatus
    , acccErrors
    , acccBatchId

    -- ** InventorySetResponse
    , InventorySetResponse
    , inventorySetResponse
    , isrKind

    -- ** OrdersCancelLineItemResponse
    , OrdersCancelLineItemResponse
    , ordersCancelLineItemResponse
    , oclirKind
    , oclirExecutionStatus

    -- ** TestOrderLineItem
    , TestOrderLineItem
    , testOrderLineItem
    , toliQuantityOrdered
    , toliReturnInfo
    , toliShippingDetails
    , toliProduct
    , toliUnitTax

    -- ** ProductstatusesCustomBatchRequestEntry
    , ProductstatusesCustomBatchRequestEntry
    , productstatusesCustomBatchRequestEntry
    , pcbrecMerchantId
    , pcbrecMethod
    , pcbrecProductId
    , pcbrecBatchId

    -- ** AccountshippingCustomBatchResponseEntry
    , AccountshippingCustomBatchResponseEntry
    , accountshippingCustomBatchResponseEntry
    , acbre1Kind
    , acbre1Errors
    , acbre1AccountShipping
    , acbre1BatchId

    -- ** ProductAspect
    , ProductAspect
    , productAspect
    , paIntention
    , paAspectName
    , paDestinationName

    -- ** AccountShipping
    , AccountShipping
    , accountShipping
    , assRateTables
    , assCarrierRates
    , assKind
    , assLocationGroups
    , assAccountId
    , assServices

    -- ** OrdersUpdateMerchantOrderIdResponse
    , OrdersUpdateMerchantOrderIdResponse
    , ordersUpdateMerchantOrderIdResponse
    , oumoirKind
    , oumoirExecutionStatus

    -- ** DatafeedStatusExample
    , DatafeedStatusExample
    , datafeedStatusExample
    , dseLineNumber
    , dseItemId
    , dseValue

    -- ** OrdersAcknowledgeResponse
    , OrdersAcknowledgeResponse
    , ordersAcknowledgeResponse
    , oarKind
    , oarExecutionStatus

    -- ** Order
    , Order
    , order
    , ooStatus
    , ooMerchantId
    , ooRefunds
    , ooKind
    , ooLineItems
    , ooShipments
    , ooNetAmount
    , ooPlacedDate
    , ooDeliveryDetails
    , ooShippingOption
    , ooMerchantOrderId
    , ooAcknowledged
    , ooShippingCostTax
    , ooCustomer
    , ooId
    , ooPaymentMethod
    , ooPaymentStatus
    , ooShippingCost

    -- ** InventoryCustomBatchResponse
    , InventoryCustomBatchResponse
    , inventoryCustomBatchResponse
    , invEntries
    , invKind

    -- ** OrderLineItemProduct
    , OrderLineItemProduct
    , orderLineItemProduct
    , olipImageLink
    , olipShownImage
    , olipChannel
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
    , a2AccountTax
    , a2MerchantId
    , a2AccountId
    , a2Method
    , a2BatchId

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
    , pcbrcEntries

    -- ** OrdersCustomBatchRequestEntryReturnLineItem
    , OrdersCustomBatchRequestEntryReturnLineItem
    , ordersCustomBatchRequestEntryReturnLineItem
    , ocbrerliQuantity
    , ocbrerliLineItemId
    , ocbrerliReason
    , ocbrerliReasonText

    -- ** OrdersCustomBatchRequestEntryUpdateShipment
    , OrdersCustomBatchRequestEntryUpdateShipment
    , ordersCustomBatchRequestEntryUpdateShipment
    , ocbreusCarrier
    , ocbreusStatus
    , ocbreusTrackingId
    , ocbreusShipmentId

    -- ** DatafeedStatus
    , DatafeedStatus
    , datafeedStatus
    , dsItemsTotal
    , dsKind
    , dsWarnings
    , dsDatafeedId
    , dsProcessingStatus
    , dsLastUploadDate
    , dsItemsValid
    , dsErrors

    -- ** DatafeedstatusesCustomBatchRequest
    , DatafeedstatusesCustomBatchRequest
    , datafeedstatusesCustomBatchRequest
    , dcbrcEntries

    -- ** AccountShippingLocationGroup
    , AccountShippingLocationGroup
    , accountShippingLocationGroup
    , aslgCountry
    , aslgLocationIds
    , aslgPostalCodeRanges
    , aslgName
    , aslgPostalCodes

    -- ** AccountStatusDataQualityIssue
    , AccountStatusDataQualityIssue
    , accountStatusDataQualityIssue
    , asdqiSubmittedValue
    , asdqiCountry
    , asdqiDisplayedValue
    , asdqiNumItems
    , asdqiSeverity
    , asdqiExampleItems
    , asdqiLastChecked
    , asdqiId

    -- ** ProductShippingDimension
    , ProductShippingDimension
    , productShippingDimension
    , psdValue
    , psdUnit

    -- ** DatafeedsCustomBatchResponseEntry
    , DatafeedsCustomBatchResponseEntry
    , datafeedsCustomBatchResponseEntry
    , dcbrecDatafeed
    , dcbrecErrors
    , dcbrecBatchId

    -- ** OrdersCustomBatchRequestEntryRefund
    , OrdersCustomBatchRequestEntryRefund
    , ordersCustomBatchRequestEntryRefund
    , ocbrerAmount
    , ocbrerReason
    , ocbrerReasonText

    -- ** DatafeedstatusesListResponse
    , DatafeedstatusesListResponse
    , datafeedstatusesListResponse
    , dlrlNextPageToken
    , dlrlKind
    , dlrlResources

    -- ** ProductsListResponse
    , ProductsListResponse
    , productsListResponse
    , plrlNextPageToken
    , plrlKind
    , plrlResources

    -- ** AccountAdwordsLink
    , AccountAdwordsLink
    , accountAdwordsLink
    , aalStatus
    , aalAdwordsId

    -- ** OrderCancellation
    , OrderCancellation
    , orderCancellation
    , ocQuantity
    , ocActor
    , ocReason
    , ocCreationDate
    , ocReasonText

    -- ** OrdersCustomBatchResponse
    , OrdersCustomBatchResponse
    , ordersCustomBatchResponse
    , ordEntries
    , ordKind
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.Content.Accounts.AuthInfo
import           Network.Google.Resource.Content.Accounts.Custombatch
import           Network.Google.Resource.Content.Accounts.Delete
import           Network.Google.Resource.Content.Accounts.Get
import           Network.Google.Resource.Content.Accounts.Insert
import           Network.Google.Resource.Content.Accounts.List
import           Network.Google.Resource.Content.Accounts.Patch
import           Network.Google.Resource.Content.Accounts.Update
import           Network.Google.Resource.Content.Accountshipping.Custombatch
import           Network.Google.Resource.Content.Accountshipping.Get
import           Network.Google.Resource.Content.Accountshipping.List
import           Network.Google.Resource.Content.Accountshipping.Patch
import           Network.Google.Resource.Content.Accountshipping.Update
import           Network.Google.Resource.Content.Accountstatuses.Custombatch
import           Network.Google.Resource.Content.Accountstatuses.Get
import           Network.Google.Resource.Content.Accountstatuses.List
import           Network.Google.Resource.Content.Accounttax.Custombatch
import           Network.Google.Resource.Content.Accounttax.Get
import           Network.Google.Resource.Content.Accounttax.List
import           Network.Google.Resource.Content.Accounttax.Patch
import           Network.Google.Resource.Content.Accounttax.Update
import           Network.Google.Resource.Content.Datafeeds.Custombatch
import           Network.Google.Resource.Content.Datafeeds.Delete
import           Network.Google.Resource.Content.Datafeeds.Get
import           Network.Google.Resource.Content.Datafeeds.Insert
import           Network.Google.Resource.Content.Datafeeds.List
import           Network.Google.Resource.Content.Datafeeds.Patch
import           Network.Google.Resource.Content.Datafeeds.Update
import           Network.Google.Resource.Content.Datafeedstatuses.Custombatch
import           Network.Google.Resource.Content.Datafeedstatuses.Get
import           Network.Google.Resource.Content.Datafeedstatuses.List
import           Network.Google.Resource.Content.Inventory.Custombatch
import           Network.Google.Resource.Content.Inventory.Set
import           Network.Google.Resource.Content.Orders.Acknowledge
import           Network.Google.Resource.Content.Orders.AdvancetestOrder
import           Network.Google.Resource.Content.Orders.Cancel
import           Network.Google.Resource.Content.Orders.Cancellineitem
import           Network.Google.Resource.Content.Orders.CreatetestOrder
import           Network.Google.Resource.Content.Orders.Custombatch
import           Network.Google.Resource.Content.Orders.Get
import           Network.Google.Resource.Content.Orders.GetbymerchantOrderid
import           Network.Google.Resource.Content.Orders.GettestOrdertemplate
import           Network.Google.Resource.Content.Orders.List
import           Network.Google.Resource.Content.Orders.Refund
import           Network.Google.Resource.Content.Orders.Returnlineitem
import           Network.Google.Resource.Content.Orders.Shiplineitems
import           Network.Google.Resource.Content.Orders.UpdatemerchantOrderid
import           Network.Google.Resource.Content.Orders.Updateshipment
import           Network.Google.Resource.Content.Products.Custombatch
import           Network.Google.Resource.Content.Products.Delete
import           Network.Google.Resource.Content.Products.Get
import           Network.Google.Resource.Content.Products.Insert
import           Network.Google.Resource.Content.Products.List
import           Network.Google.Resource.Content.Productstatuses.Custombatch
import           Network.Google.Resource.Content.Productstatuses.Get
import           Network.Google.Resource.Content.Productstatuses.List
import           Network.Google.ShoppingContent.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Content API for Shopping service.
type ShoppingContentAPI =
     AccounttaxListResource :<|> AccounttaxPatchResource
       :<|> AccounttaxGetResource
       :<|> AccounttaxCustombatchResource
       :<|> AccounttaxUpdateResource
       :<|> AccountsInsertResource
       :<|> AccountsListResource
       :<|> AccountsPatchResource
       :<|> AccountsGetResource
       :<|> AccountsCustombatchResource
       :<|> AccountsAuthInfoResource
       :<|> AccountsDeleteResource
       :<|> AccountsUpdateResource
       :<|> ProductstatusesListResource
       :<|> ProductstatusesGetResource
       :<|> ProductstatusesCustombatchResource
       :<|> InventorySetResource
       :<|> InventoryCustombatchResource
       :<|> OrdersGetbymerchantOrderidResource
       :<|> OrdersCreatetestOrderResource
       :<|> OrdersListResource
       :<|> OrdersCancellineitemResource
       :<|> OrdersUpdatemerchantOrderidResource
       :<|> OrdersAcknowledgeResource
       :<|> OrdersGetResource
       :<|> OrdersRefundResource
       :<|> OrdersGettestOrdertemplateResource
       :<|> OrdersReturnlineitemResource
       :<|> OrdersUpdateshipmentResource
       :<|> OrdersCustombatchResource
       :<|> OrdersAdvancetestOrderResource
       :<|> OrdersShiplineitemsResource
       :<|> OrdersCancelResource
       :<|> ProductsInsertResource
       :<|> ProductsListResource
       :<|> ProductsGetResource
       :<|> ProductsCustombatchResource
       :<|> ProductsDeleteResource
       :<|> DatafeedstatusesListResource
       :<|> DatafeedstatusesGetResource
       :<|> DatafeedstatusesCustombatchResource
       :<|> AccountstatusesListResource
       :<|> AccountstatusesGetResource
       :<|> AccountstatusesCustombatchResource
       :<|> AccountshippingListResource
       :<|> AccountshippingPatchResource
       :<|> AccountshippingGetResource
       :<|> AccountshippingCustombatchResource
       :<|> AccountshippingUpdateResource
       :<|> DatafeedsInsertResource
       :<|> DatafeedsListResource
       :<|> DatafeedsPatchResource
       :<|> DatafeedsGetResource
       :<|> DatafeedsCustombatchResource
       :<|> DatafeedsDeleteResource
       :<|> DatafeedsUpdateResource
