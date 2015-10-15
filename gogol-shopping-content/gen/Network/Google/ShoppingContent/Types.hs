{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ShoppingContent.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ShoppingContent.Types
    (
    -- * Service Configuration
      shoppingContent

    -- * OAuth Scopes
    , contentScope

    -- * OrdersAcknowledgeRequest
    , OrdersAcknowledgeRequest
    , ordersAcknowledgeRequest
    , oarOperationId

    -- * AccountTax
    , AccountTax
    , accountTax
    , atRules
    , atKind
    , atAccountId

    -- * OrdersUpdateMerchantOrderIdRequest
    , OrdersUpdateMerchantOrderIdRequest
    , ordersUpdateMerchantOrderIdRequest
    , oumoirMerchantOrderId
    , oumoirOperationId

    -- * OrdersAdvanceTestOrderResponse
    , OrdersAdvanceTestOrderResponse
    , ordersAdvanceTestOrderResponse
    , oatorKind

    -- * ProductsCustomBatchResponse
    , ProductsCustomBatchResponse
    , productsCustomBatchResponse
    , pcbrEntries
    , pcbrKind

    -- * OrdersGettestOrdertemplateTemplateName
    , OrdersGettestOrdertemplateTemplateName (..)

    -- * TestOrderCustomer
    , TestOrderCustomer
    , testOrderCustomer
    , tocFullName
    , tocEmail
    , tocExplicitMarketingPreference

    -- * DatafeedstatusesCustomBatchResponse
    , DatafeedstatusesCustomBatchResponse
    , datafeedstatusesCustomBatchResponse
    , dcbrEntries
    , dcbrKind

    -- * OrderReturn
    , OrderReturn
    , orderReturn
    , orQuantity
    , orActor
    , orReason
    , orCreationDate
    , orReasonText

    -- * AccounttaxCustomBatchResponseEntry
    , AccounttaxCustomBatchResponseEntry
    , accounttaxCustomBatchResponseEntry
    , acbreAccountTax
    , acbreKind
    , acbreErrors
    , acbreBatchId

    -- * InventoryCustomBatchRequest
    , InventoryCustomBatchRequest
    , inventoryCustomBatchRequest
    , icbrEntries

    -- * AccountsAuthInfoResponse
    , AccountsAuthInfoResponse
    , accountsAuthInfoResponse
    , aairKind
    , aairAccountIdentifiers

    -- * ProductStatusDestinationStatus
    , ProductStatusDestinationStatus
    , productStatusDestinationStatus
    , psdsDestination
    , psdsIntention
    , psdsApprovalStatus

    -- * AccountTaxTaxRule
    , AccountTaxTaxRule
    , accountTaxTaxRule
    , attrUseGlobalRate
    , attrCountry
    , attrShippingTaxed
    , attrLocationId
    , attrRatePercent

    -- * ProductDestination
    , ProductDestination
    , productDestination
    , pdIntention
    , pdDestinationName

    -- * DatafeedsCustomBatchRequest
    , DatafeedsCustomBatchRequest
    , datafeedsCustomBatchRequest
    , dEntries

    -- * OrdersCustomBatchRequestEntry
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

    -- * OrdersRefundRequest
    , OrdersRefundRequest
    , ordersRefundRequest
    , orrAmount
    , orrReason
    , orrOperationId
    , orrReasonText

    -- * AccountShippingShippingServiceCalculationMethod
    , AccountShippingShippingServiceCalculationMethod
    , accountShippingShippingServiceCalculationMethod
    , assscmPercentageRate
    , assscmCarrierRate
    , assscmRateTable
    , assscmExcluded
    , assscmFlatRate

    -- * OrdersCustomBatchRequestEntryCancelLineItem
    , OrdersCustomBatchRequestEntryCancelLineItem
    , ordersCustomBatchRequestEntryCancelLineItem
    , ocbrecliQuantity
    , ocbrecliLineItemId
    , ocbrecliReason
    , ocbrecliReasonText

    -- * OrderLineItemShippingDetailsMethod
    , OrderLineItemShippingDetailsMethod
    , orderLineItemShippingDetailsMethod
    , olisdmCarrier
    , olisdmMethodName
    , olisdmMaxDaysInTransit
    , olisdmMinDaysInTransit

    -- * Datafeed
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

    -- * OrdersCreateTestOrderResponse
    , OrdersCreateTestOrderResponse
    , ordersCreateTestOrderResponse
    , octorKind
    , octorOrderId

    -- * AccountsCustomBatchResponseEntry
    , AccountsCustomBatchResponseEntry
    , accountsCustomBatchResponseEntry
    , aKind
    , aAccount
    , aErrors
    , aBatchId

    -- * OrdersListOrderBy
    , OrdersListOrderBy (..)

    -- * AccountIdentifier
    , AccountIdentifier
    , accountIdentifier
    , aiMerchantId
    , aiAggregatorId

    -- * TestOrderPaymentMethod
    , TestOrderPaymentMethod
    , testOrderPaymentMethod
    , topmExpirationMonth
    , topmExpirationYear
    , topmLastFourDigits
    , topmType
    , topmPredefinedBillingAddress

    -- * OrderLineItem
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

    -- * ProductstatusesCustomBatchResponse
    , ProductstatusesCustomBatchResponse
    , productstatusesCustomBatchResponse
    , pEntries
    , pKind

    -- * ProductUnitPricingMeasure
    , ProductUnitPricingMeasure
    , productUnitPricingMeasure
    , pupmValue
    , pupmUnit

    -- * OrdersUpdateShipmentRequest
    , OrdersUpdateShipmentRequest
    , ordersUpdateShipmentRequest
    , ousrCarrier
    , ousrStatus
    , ousrTrackingId
    , ousrShipmentId
    , ousrOperationId

    -- * OrderShipmentLineItemShipment
    , OrderShipmentLineItemShipment
    , orderShipmentLineItemShipment
    , oslisQuantity
    , oslisLineItemId

    -- * OrdersListStatuses
    , OrdersListStatuses (..)

    -- * LoyaltyPoints
    , LoyaltyPoints
    , loyaltyPoints
    , lpRatio
    , lpPointsValue
    , lpName

    -- * AccountshippingCustomBatchRequest
    , AccountshippingCustomBatchRequest
    , accountshippingCustomBatchRequest
    , acbrEntries

    -- * OrdersCustomBatchRequestEntryShipLineItems
    , OrdersCustomBatchRequestEntryShipLineItems
    , ordersCustomBatchRequestEntryShipLineItems
    , ocbresliCarrier
    , ocbresliTrackingId
    , ocbresliShipmentId
    , ocbresliLineItems

    -- * AccountStatus
    , AccountStatus
    , accountStatus
    , asDataQualityIssues
    , asKind
    , asAccountId

    -- * OrdersReturnLineItemRequest
    , OrdersReturnLineItemRequest
    , ordersReturnLineItemRequest
    , orlirQuantity
    , orlirLineItemId
    , orlirReason
    , orlirOperationId
    , orlirReasonText

    -- * AccountstatusesCustomBatchRequest
    , AccountstatusesCustomBatchRequest
    , accountstatusesCustomBatchRequest
    , aEntries

    -- * AccounttaxListResponse
    , AccounttaxListResponse
    , accounttaxListResponse
    , alrNextPageToken
    , alrKind
    , alrResources

    -- * OrdersGetTestOrderTemplateResponse
    , OrdersGetTestOrderTemplateResponse
    , ordersGetTestOrderTemplateResponse
    , ogtotrKind
    , ogtotrTemplate

    -- * AccountsCustomBatchRequestEntry
    , AccountsCustomBatchRequestEntry
    , accountsCustomBatchRequestEntry
    , acbrecMerchantId
    , acbrecAccount
    , acbrecAccountId
    , acbrecMethod
    , acbrecBatchId

    -- * Weight
    , Weight
    , weight
    , wValue
    , wUnit

    -- * ProductInstallment
    , ProductInstallment
    , productInstallment
    , piAmount
    , piMonths

    -- * Error'
    , Error'
    , error'
    , eDomain
    , eReason
    , eMessage

    -- * ProductstatusesListResponse
    , ProductstatusesListResponse
    , productstatusesListResponse
    , plrNextPageToken
    , plrKind
    , plrResources

    -- * OrdersRefundResponse
    , OrdersRefundResponse
    , ordersRefundResponse
    , orrKind
    , orrExecutionStatus

    -- * OrdersCreateTestOrderRequest
    , OrdersCreateTestOrderRequest
    , ordersCreateTestOrderRequest
    , octorTemplateName
    , octorTestOrder

    -- * AccountUser
    , AccountUser
    , accountUser
    , auAdmin
    , auEmailAddress

    -- * AccountStatusExampleItem
    , AccountStatusExampleItem
    , accountStatusExampleItem
    , aseiSubmittedValue
    , aseiLink
    , aseiItemId
    , aseiTitle
    , aseiValueOnLandingPage

    -- * DatafeedsCustomBatchRequestEntry
    , DatafeedsCustomBatchRequestEntry
    , datafeedsCustomBatchRequestEntry
    , dcbreMerchantId
    , dcbreDatafeed
    , dcbreMethod
    , dcbreDatafeedId
    , dcbreBatchId

    -- * DatafeedFetchSchedule
    , DatafeedFetchSchedule
    , datafeedFetchSchedule
    , dfsFetchURL
    , dfsUsername
    , dfsPassword
    , dfsDayOfMonth
    , dfsHour
    , dfsWeekday
    , dfsTimeZone

    -- * OrdersCustomBatchRequest
    , OrdersCustomBatchRequest
    , ordersCustomBatchRequest
    , ocbrEntries

    -- * AccountsListResponse
    , AccountsListResponse
    , accountsListResponse
    , accNextPageToken
    , accKind
    , accResources

    -- * ProductStatusDataQualityIssue
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

    -- * OrdersShipLineItemsRequest
    , OrdersShipLineItemsRequest
    , ordersShipLineItemsRequest
    , oslirCarrier
    , oslirTrackingId
    , oslirShipmentId
    , oslirLineItems
    , oslirOperationId

    -- * AccountsCustomBatchResponse
    , AccountsCustomBatchResponse
    , accountsCustomBatchResponse
    , acbrcEntries
    , acbrcKind

    -- * ProductTax
    , ProductTax
    , productTax
    , ptTaxShip
    , ptCountry
    , ptPostalCode
    , ptRate
    , ptRegion
    , ptLocationId

    -- * OrderShipment
    , OrderShipment
    , orderShipment
    , osCarrier
    , osStatus
    , osTrackingId
    , osLineItems
    , osId
    , osCreationDate
    , osDeliveryDate

    -- * OrderLineItemReturnInfo
    , OrderLineItemReturnInfo
    , orderLineItemReturnInfo
    , oliriIsReturnable
    , oliriPolicyURL
    , oliriDaysToReturn

    -- * AccountShippingRateTableCell
    , AccountShippingRateTableCell
    , accountShippingRateTableCell
    , asrtcRate
    , asrtcCondition

    -- * Account
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

    -- * InventorySetRequest
    , InventorySetRequest
    , inventorySetRequest
    , isrQuantity
    , isrSalePrice
    , isrAvailability
    , isrSalePriceEffectiveDate
    , isrSellOnGoogleQuantity
    , isrPrice

    -- * AccountShippingShippingServiceCostRule
    , AccountShippingShippingServiceCostRule
    , accountShippingShippingServiceCostRule
    , assscrChildren
    , assscrCalculationMethod
    , assscrCondition

    -- * OrdersCancelLineItemRequest
    , OrdersCancelLineItemRequest
    , ordersCancelLineItemRequest
    , oclirQuantity
    , oclirLineItemId
    , oclirReason
    , oclirOperationId
    , oclirReasonText

    -- * ProductShippingWeight
    , ProductShippingWeight
    , productShippingWeight
    , pswValue
    , pswUnit

    -- * AccountstatusesCustomBatchRequestEntry
    , AccountstatusesCustomBatchRequestEntry
    , accountstatusesCustomBatchRequestEntry
    , aaMerchantId
    , aaAccountId
    , aaMethod
    , aaBatchId

    -- * ProductstatusesCustomBatchResponseEntry
    , ProductstatusesCustomBatchResponseEntry
    , productstatusesCustomBatchResponseEntry
    , pcbreKind
    , pcbreProductStatus
    , pcbreErrors
    , pcbreBatchId

    -- * OrdersCustomBatchRequestEntryCancel
    , OrdersCustomBatchRequestEntryCancel
    , ordersCustomBatchRequestEntryCancel
    , ocbrecReason
    , ocbrecReasonText

    -- * DatafeedFormat
    , DatafeedFormat
    , datafeedFormat
    , dfQuotingMode
    , dfFileEncoding
    , dfColumnDelimiter

    -- * ProductShipping
    , ProductShipping
    , productShipping
    , psService
    , psLocationGroupName
    , psCountry
    , psPostalCode
    , psPrice
    , psRegion
    , psLocationId

    -- * AccountshippingCustomBatchRequestEntry
    , AccountshippingCustomBatchRequestEntry
    , accountshippingCustomBatchRequestEntry
    , acccMerchantId
    , acccAccountId
    , acccMethod
    , acccAccountShipping
    , acccBatchId

    -- * AccountsCustomBatchRequest
    , AccountsCustomBatchRequest
    , accountsCustomBatchRequest
    , accEntries

    -- * ProductCustomAttribute
    , ProductCustomAttribute
    , productCustomAttribute
    , pcaValue
    , pcaName
    , pcaType
    , pcaUnit

    -- * AccountShippingPostalCodeRange
    , AccountShippingPostalCodeRange
    , accountShippingPostalCodeRange
    , aspcrStart
    , aspcrEnd

    -- * OrdersListResponse
    , OrdersListResponse
    , ordersListResponse
    , olrNextPageToken
    , olrKind
    , olrResources

    -- * OrdersShipLineItemsResponse
    , OrdersShipLineItemsResponse
    , ordersShipLineItemsResponse
    , oslirKind
    , oslirExecutionStatus

    -- * AccountShippingShippingService
    , AccountShippingShippingService
    , accountShippingShippingService
    , asssCostRuleTree
    , asssSaleCountry
    , asssCalculationMethod
    , asssActive
    , asssName

    -- * AccountShippingRateTable
    , AccountShippingRateTable
    , accountShippingRateTable
    , asrtSaleCountry
    , asrtContent
    , asrtName

    -- * AccountshippingCustomBatchResponse
    , AccountshippingCustomBatchResponse
    , accountshippingCustomBatchResponse
    , acccEntries
    , acccKind

    -- * OrdersUpdateShipmentResponse
    , OrdersUpdateShipmentResponse
    , ordersUpdateShipmentResponse
    , ousrKind
    , ousrExecutionStatus

    -- * ProductstatusesCustomBatchRequest
    , ProductstatusesCustomBatchRequest
    , productstatusesCustomBatchRequest
    , proEntries

    -- * OrdersReturnLineItemResponse
    , OrdersReturnLineItemResponse
    , ordersReturnLineItemResponse
    , orlirKind
    , orlirExecutionStatus

    -- * ProductCustomGroup
    , ProductCustomGroup
    , productCustomGroup
    , pcgName
    , pcgAttributes

    -- * AccountstatusesCustomBatchResponse
    , AccountstatusesCustomBatchResponse
    , accountstatusesCustomBatchResponse
    , acbr1Entries
    , acbr1Kind

    -- * ProductStatus
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

    -- * AccountstatusesListResponse
    , AccountstatusesListResponse
    , accountstatusesListResponse
    , alrlNextPageToken
    , alrlKind
    , alrlResources

    -- * AccounttaxCustomBatchRequest
    , AccounttaxCustomBatchRequest
    , accounttaxCustomBatchRequest
    , aaEntries

    -- * ProductsCustomBatchRequestEntry
    , ProductsCustomBatchRequestEntry
    , productsCustomBatchRequestEntry
    , pMerchantId
    , pMethod
    , pProduct
    , pProductId
    , pBatchId

    -- * DatafeedstatusesCustomBatchRequestEntry
    , DatafeedstatusesCustomBatchRequestEntry
    , datafeedstatusesCustomBatchRequestEntry
    , datMerchantId
    , datMethod
    , datDatafeedId
    , datBatchId

    -- * OrderCustomer
    , OrderCustomer
    , orderCustomer
    , ocFullName
    , ocEmail
    , ocExplicitMarketingPreference

    -- * InventoryCustomBatchResponseEntry
    , InventoryCustomBatchResponseEntry
    , inventoryCustomBatchResponseEntry
    , icbreKind
    , icbreErrors
    , icbreBatchId

    -- * AccountshippingListResponse
    , AccountshippingListResponse
    , accountshippingListResponse
    , alr1NextPageToken
    , alr1Kind
    , alr1Resources

    -- * Inventory
    , Inventory
    , inventory
    , iKind
    , iQuantity
    , iSalePrice
    , iAvailability
    , iSalePriceEffectiveDate
    , iSellOnGoogleQuantity
    , iPrice

    -- * OrdersGetByMerchantOrderIdResponse
    , OrdersGetByMerchantOrderIdResponse
    , ordersGetByMerchantOrderIdResponse
    , ogbmoirKind
    , ogbmoirOrder

    -- * OrdersCancelRequest
    , OrdersCancelRequest
    , ordersCancelRequest
    , ocrReason
    , ocrOperationId
    , ocrReasonText

    -- * OrderLineItemProductVariantAttribute
    , OrderLineItemProductVariantAttribute
    , orderLineItemProductVariantAttribute
    , olipvaDimension
    , olipvaValue

    -- * OrdersCustomBatchResponseEntry
    , OrdersCustomBatchResponseEntry
    , ordersCustomBatchResponseEntry
    , oKind
    , oExecutionStatus
    , oErrors
    , oOrder
    , oBatchId

    -- * AccountShippingCarrierRate
    , AccountShippingCarrierRate
    , accountShippingCarrierRate
    , ascrCarrier
    , ascrSaleCountry
    , ascrShippingOrigin
    , ascrCarrierService
    , ascrModifierPercent
    , ascrName
    , ascrModifierFlatRate

    -- * Price
    , Price
    , price
    , pValue
    , pCurrency

    -- * OrderLineItemShippingDetails
    , OrderLineItemShippingDetails
    , orderLineItemShippingDetails
    , olisdShipByDate
    , olisdMethod
    , olisdDeliverByDate

    -- * DatafeedsCustomBatchResponse
    , DatafeedsCustomBatchResponse
    , datafeedsCustomBatchResponse
    , datEntries
    , datKind

    -- * OrderDeliveryDetails
    , OrderDeliveryDetails
    , orderDeliveryDetails
    , oddAddress
    , oddPhoneNumber

    -- * OrdersCancelResponse
    , OrdersCancelResponse
    , ordersCancelResponse
    , ocrKind
    , ocrExecutionStatus

    -- * TestOrder
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

    -- * DatafeedstatusesCustomBatchResponseEntry
    , DatafeedstatusesCustomBatchResponseEntry
    , datafeedstatusesCustomBatchResponseEntry
    , dErrors
    , dDatafeedStatus
    , dBatchId

    -- * OrderRefund
    , OrderRefund
    , orderRefund
    , oAmount
    , oActor
    , oReason
    , oCreationDate
    , oReasonText

    -- * TestOrderLineItemProduct
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

    -- * AccounttaxCustomBatchResponse
    , AccounttaxCustomBatchResponse
    , accounttaxCustomBatchResponse
    , a2Entries
    , a2Kind

    -- * InventoryCustomBatchRequestEntry
    , InventoryCustomBatchRequestEntry
    , inventoryCustomBatchRequestEntry
    , iMerchantId
    , iStoreCode
    , iInventory
    , iProductId
    , iBatchId

    -- * OrderAddress
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

    -- * ProductUnitPricingBaseMeasure
    , ProductUnitPricingBaseMeasure
    , productUnitPricingBaseMeasure
    , pupbmValue
    , pupbmUnit

    -- * AccountShippingCondition
    , AccountShippingCondition
    , accountShippingCondition
    , ascWeightMax
    , ascDeliveryPostalCode
    , ascDeliveryLocationGroup
    , ascPriceMax
    , ascShippingLabel
    , ascDeliveryLocationId
    , ascDeliveryPostalCodeRange

    -- * DatafeedsListResponse
    , DatafeedsListResponse
    , datafeedsListResponse
    , dlrNextPageToken
    , dlrKind
    , dlrResources

    -- * ProductsCustomBatchResponseEntry
    , ProductsCustomBatchResponseEntry
    , productsCustomBatchResponseEntry
    , proKind
    , proProduct
    , proErrors
    , proBatchId

    -- * OrderPaymentMethod
    , OrderPaymentMethod
    , orderPaymentMethod
    , opmExpirationMonth
    , opmExpirationYear
    , opmPhoneNumber
    , opmBillingAddress
    , opmLastFourDigits
    , opmType

    -- * Product
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

    -- * Errors
    , Errors
    , errors
    , errCode
    , errMessage
    , errErrors

    -- * AccountstatusesCustomBatchResponseEntry
    , AccountstatusesCustomBatchResponseEntry
    , accountstatusesCustomBatchResponseEntry
    , accAccountStatus
    , accErrors
    , accBatchId

    -- * InventorySetResponse
    , InventorySetResponse
    , inventorySetResponse
    , isrKind

    -- * OrdersCancelLineItemResponse
    , OrdersCancelLineItemResponse
    , ordersCancelLineItemResponse
    , oclirKind
    , oclirExecutionStatus

    -- * TestOrderLineItem
    , TestOrderLineItem
    , testOrderLineItem
    , toliQuantityOrdered
    , toliReturnInfo
    , toliShippingDetails
    , toliProduct
    , toliUnitTax

    -- * ProductstatusesCustomBatchRequestEntry
    , ProductstatusesCustomBatchRequestEntry
    , productstatusesCustomBatchRequestEntry
    , pcbrecMerchantId
    , pcbrecMethod
    , pcbrecProductId
    , pcbrecBatchId

    -- * AccountshippingCustomBatchResponseEntry
    , AccountshippingCustomBatchResponseEntry
    , accountshippingCustomBatchResponseEntry
    , acbre1Kind
    , acbre1Errors
    , acbre1AccountShipping
    , acbre1BatchId

    -- * ProductAspect
    , ProductAspect
    , productAspect
    , paIntention
    , paAspectName
    , paDestinationName

    -- * AccountShipping
    , AccountShipping
    , accountShipping
    , assRateTables
    , assCarrierRates
    , assKind
    , assLocationGroups
    , assAccountId
    , assServices

    -- * OrdersUpdateMerchantOrderIdResponse
    , OrdersUpdateMerchantOrderIdResponse
    , ordersUpdateMerchantOrderIdResponse
    , oumoirKind
    , oumoirExecutionStatus

    -- * DatafeedStatusExample
    , DatafeedStatusExample
    , datafeedStatusExample
    , dseLineNumber
    , dseItemId
    , dseValue

    -- * OrdersAcknowledgeResponse
    , OrdersAcknowledgeResponse
    , ordersAcknowledgeResponse
    , oarKind
    , oarExecutionStatus

    -- * Order
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

    -- * InventoryCustomBatchResponse
    , InventoryCustomBatchResponse
    , inventoryCustomBatchResponse
    , invEntries
    , invKind

    -- * OrderLineItemProduct
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

    -- * AccounttaxCustomBatchRequestEntry
    , AccounttaxCustomBatchRequestEntry
    , accounttaxCustomBatchRequestEntry
    , a2AccountTax
    , a2MerchantId
    , a2AccountId
    , a2Method
    , a2BatchId

    -- * DatafeedStatusError
    , DatafeedStatusError
    , datafeedStatusError
    , dseCount
    , dseCode
    , dseMessage
    , dseExamples

    -- * ProductsCustomBatchRequest
    , ProductsCustomBatchRequest
    , productsCustomBatchRequest
    , pcbrcEntries

    -- * OrdersCustomBatchRequestEntryReturnLineItem
    , OrdersCustomBatchRequestEntryReturnLineItem
    , ordersCustomBatchRequestEntryReturnLineItem
    , ocbrerliQuantity
    , ocbrerliLineItemId
    , ocbrerliReason
    , ocbrerliReasonText

    -- * OrdersCustomBatchRequestEntryUpdateShipment
    , OrdersCustomBatchRequestEntryUpdateShipment
    , ordersCustomBatchRequestEntryUpdateShipment
    , ocbreusCarrier
    , ocbreusStatus
    , ocbreusTrackingId
    , ocbreusShipmentId

    -- * DatafeedStatus
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

    -- * DatafeedstatusesCustomBatchRequest
    , DatafeedstatusesCustomBatchRequest
    , datafeedstatusesCustomBatchRequest
    , dcbrcEntries

    -- * AccountShippingLocationGroup
    , AccountShippingLocationGroup
    , accountShippingLocationGroup
    , aslgCountry
    , aslgLocationIds
    , aslgPostalCodeRanges
    , aslgName
    , aslgPostalCodes

    -- * AccountStatusDataQualityIssue
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

    -- * ProductShippingDimension
    , ProductShippingDimension
    , productShippingDimension
    , psdValue
    , psdUnit

    -- * DatafeedsCustomBatchResponseEntry
    , DatafeedsCustomBatchResponseEntry
    , datafeedsCustomBatchResponseEntry
    , dcbrecDatafeed
    , dcbrecErrors
    , dcbrecBatchId

    -- * OrdersCustomBatchRequestEntryRefund
    , OrdersCustomBatchRequestEntryRefund
    , ordersCustomBatchRequestEntryRefund
    , ocbrerAmount
    , ocbrerReason
    , ocbrerReasonText

    -- * DatafeedstatusesListResponse
    , DatafeedstatusesListResponse
    , datafeedstatusesListResponse
    , dlrlNextPageToken
    , dlrlKind
    , dlrlResources

    -- * ProductsListResponse
    , ProductsListResponse
    , productsListResponse
    , plrlNextPageToken
    , plrlKind
    , plrlResources

    -- * AccountAdwordsLink
    , AccountAdwordsLink
    , accountAdwordsLink
    , aalStatus
    , aalAdwordsId

    -- * OrderCancellation
    , OrderCancellation
    , orderCancellation
    , ocQuantity
    , ocActor
    , ocReason
    , ocCreationDate
    , ocReasonText

    -- * OrdersCustomBatchResponse
    , OrdersCustomBatchResponse
    , ordersCustomBatchResponse
    , ordEntries
    , ordKind
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types.Product
import           Network.Google.ShoppingContent.Types.Sum

-- | Default request referring to version 'v2' of the Content API for Shopping. This contains the host and root path used as a starting point for constructing service requests.
shoppingContent :: Service
shoppingContent
  = defaultService (ServiceId "content:v2")
      "www.googleapis.com"
      "content/v2/"

-- | Manage your product listings and accounts for Google Shopping
contentScope :: OAuthScope
contentScope = "https://www.googleapis.com/auth/content";
