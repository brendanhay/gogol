{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ShoppingContent.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ShoppingContent.Types
    (
    -- * Service Configuration
      shoppingContentService

    -- * OAuth Scopes
    , contentScope

    -- * ReturnPolicyOnlineReturnReasonCategoryInfoReturnLabelSource
    , ReturnPolicyOnlineReturnReasonCategoryInfoReturnLabelSource (..)

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

    -- * OrderinvoicesCreateRefundInvoiceResponse
    , OrderinvoicesCreateRefundInvoiceResponse
    , orderinvoicesCreateRefundInvoiceResponse
    , ocrirKind
    , ocrirExecutionStatus

    -- * OrdersUpdateMerchantOrderIdRequest
    , OrdersUpdateMerchantOrderIdRequest
    , ordersUpdateMerchantOrderIdRequest
    , oumoirMerchantOrderId
    , oumoirOperationId

    -- * ReturnpolicyCustomBatchRequest
    , ReturnpolicyCustomBatchRequest
    , returnpolicyCustomBatchRequest
    , rcbrEntries

    -- * OrderreturnsAcknowledgeResponse
    , OrderreturnsAcknowledgeResponse
    , orderreturnsAcknowledgeResponse
    , oarKind
    , oarExecutionStatus

    -- * OrderReportTransaction
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

    -- * OrdersAdvanceTestOrderResponse
    , OrdersAdvanceTestOrderResponse
    , ordersAdvanceTestOrderResponse
    , oatorKind

    -- * ProductsCustomBatchResponse
    , ProductsCustomBatchResponse
    , productsCustomBatchResponse
    , pcbrEntries
    , pcbrKind

    -- * OrderMerchantProvidedAnnotation
    , OrderMerchantProvidedAnnotation
    , orderMerchantProvidedAnnotation
    , ompaValue
    , ompaKey

    -- * OrdersGettestOrdertemplateTemplateName
    , OrdersGettestOrdertemplateTemplateName (..)

    -- * DatafeedstatusesCustomBatchResponse
    , DatafeedstatusesCustomBatchResponse
    , datafeedstatusesCustomBatchResponse
    , dcbrEntries
    , dcbrKind

    -- * ReturnPricingInfo
    , ReturnPricingInfo
    , returnPricingInfo
    , rpiRefundableItemsTotalAmount
    , rpiMaxReturnShippingFee
    , rpiChargeReturnShippingFee
    , rpiRefundableShippingAmount
    , rpiTotalRefundedAmount

    -- * ListCollectionsResponse
    , ListCollectionsResponse
    , listCollectionsResponse
    , lcrNextPageToken
    , lcrResources

    -- * OrderReturn
    , OrderReturn
    , orderReturn
    , orQuantity
    , orActor
    , orReason
    , orCreationDate
    , orReasonText

    -- * ReportRow
    , ReportRow
    , reportRow
    , rrMetrics
    , rrSegments

    -- * AccounttaxCustomBatchResponseEntry
    , AccounttaxCustomBatchResponseEntry
    , accounttaxCustomBatchResponseEntry
    , acbreAccountTax
    , acbreKind
    , acbreErrors
    , acbreBatchId

    -- * SegmentsProgram
    , SegmentsProgram (..)

    -- * PosSaleResponse
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

    -- * Amount
    , Amount
    , amount
    , aTaxAmount
    , aPriceAmount

    -- * AccountsAuthInfoResponse
    , AccountsAuthInfoResponse
    , accountsAuthInfoResponse
    , aairKind
    , aairAccountIdentifiers

    -- * OrderReportDisbursement
    , OrderReportDisbursement
    , orderReportDisbursement
    , ordMerchantId
    , ordDisbursementId
    , ordDisbursementCreationDate
    , ordDisbursementDate
    , ordDisbursementAmount

    -- * ShoppingAdsProgramStatusRegionStatusEligibilityStatus
    , ShoppingAdsProgramStatusRegionStatusEligibilityStatus (..)

    -- * RequestReviewFreeListingsRequest
    , RequestReviewFreeListingsRequest
    , requestReviewFreeListingsRequest
    , rrflrRegionCode

    -- * LocalInventory
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

    -- * UnitInvoice
    , UnitInvoice
    , unitInvoice
    , uiUnitPriceTaxes
    , uiAdditionalCharges
    , uiUnitPrice

    -- * PosSale
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

    -- * AccountStatusItemLevelIssue
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

    -- * OrderreturnsProcessResponse
    , OrderreturnsProcessResponse
    , orderreturnsProcessResponse
    , oprKind
    , oprExecutionStatus

    -- * LiaSettingsRequestGmbAccessResponse
    , LiaSettingsRequestGmbAccessResponse
    , liaSettingsRequestGmbAccessResponse
    , lsrgarKind

    -- * ProductStatusDestinationStatus
    , ProductStatusDestinationStatus
    , productStatusDestinationStatus
    , psdsDestination
    , psdsStatus
    , psdsPendingCountries
    , psdsApprovedCountries
    , psdsDisApprovedCountries

    -- * RegionalInventory
    , RegionalInventory
    , regionalInventory
    , riRegionId
    , riKind
    , riSalePrice
    , riAvailability
    , riCustomAttributes
    , riSalePriceEffectiveDate
    , riPrice

    -- * AccountTaxTaxRule
    , AccountTaxTaxRule
    , accountTaxTaxRule
    , attrUseGlobalRate
    , attrCountry
    , attrShippingTaxed
    , attrLocationId
    , attrRatePercent

    -- * RepricingRuleReportType
    , RepricingRuleReportType (..)

    -- * LocalinventoryCustomBatchResponseEntry
    , LocalinventoryCustomBatchResponseEntry
    , localinventoryCustomBatchResponseEntry
    , lcbreKind
    , lcbreErrors
    , lcbreBatchId

    -- * PostalCodeGroup
    , PostalCodeGroup
    , postalCodeGroup
    , pcgCountry
    , pcgPostalCodeRanges
    , pcgName

    -- * TestOrderPickupDetailsPickupPerson
    , TestOrderPickupDetailsPickupPerson
    , testOrderPickupDetailsPickupPerson
    , topdppName
    , topdppPhoneNumber

    -- * Metrics
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

    -- * DatafeedsCustomBatchRequest
    , DatafeedsCustomBatchRequest
    , datafeedsCustomBatchRequest
    , dEntries

    -- * RepricingRuleStatsBasedRule
    , RepricingRuleStatsBasedRule
    , repricingRuleStatsBasedRule
    , rrsbrPriceDelta
    , rrsbrPercentageDelta

    -- * OrdersRefundItemRequest
    , OrdersRefundItemRequest
    , ordersRefundItemRequest
    , orirItems
    , orirReason
    , orirShipping
    , orirOperationId
    , orirReasonText

    -- * RegionalinventoryCustomBatchResponseEntry
    , RegionalinventoryCustomBatchResponseEntry
    , regionalinventoryCustomBatchResponseEntry
    , rcbreRegionalInventory
    , rcbreKind
    , rcbreErrors
    , rcbreBatchId

    -- * OrdersCancelTestOrderByCustomerResponse
    , OrdersCancelTestOrderByCustomerResponse
    , ordersCancelTestOrderByCustomerResponse
    , octobcrKind

    -- * LiaOnDisplayToOrderSettings
    , LiaOnDisplayToOrderSettings
    , liaOnDisplayToOrderSettings
    , lodtosStatus
    , lodtosShippingCostPolicyURL

    -- * OrderOrderAnnotation
    , OrderOrderAnnotation
    , orderOrderAnnotation
    , ooaValue
    , ooaKey

    -- * AccountAddress
    , AccountAddress
    , accountAddress
    , aaStreetAddress
    , aaCountry
    , aaPostalCode
    , aaLocality
    , aaRegion

    -- * FreeListingsProgramStatusState
    , FreeListingsProgramStatusState (..)

    -- * OrderLineItemAdjustment
    , OrderLineItemAdjustment
    , orderLineItemAdjustment
    , oliaTaxAdjustment
    , oliaPriceAdjustment
    , oliaType

    -- * ReturnaddressCustomBatchRequest
    , ReturnaddressCustomBatchRequest
    , returnaddressCustomBatchRequest
    , rEntries

    -- * InvoiceSummaryAdditionalChargeSummary
    , InvoiceSummaryAdditionalChargeSummary
    , invoiceSummaryAdditionalChargeSummary
    , isacsTotalAmount
    , isacsType

    -- * ListRegionsResponse
    , ListRegionsResponse
    , listRegionsResponse
    , lrrNextPageToken
    , lrrRegions

    -- * RefundReason
    , RefundReason
    , refundReason
    , rrReasonCode
    , rrDescription

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
    , dFetchSchedule
    , dName
    , dTargets
    , dId
    , dContentType
    , dFileName

    -- * ReturnPolicyPolicy
    , ReturnPolicyPolicy
    , returnPolicyPolicy
    , rppLastReturnDate
    , rppNumberOfDays
    , rppType

    -- * OrdersCreateTestOrderResponse
    , OrdersCreateTestOrderResponse
    , ordersCreateTestOrderResponse
    , octorKind
    , octorOrderId

    -- * ShoppingAdsProgramStatus
    , ShoppingAdsProgramStatus
    , shoppingAdsProgramStatus
    , sapsState
    , sapsRegionStatuses

    -- * RepricingProductReport
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

    -- * AccountsCustomBatchResponseEntry
    , AccountsCustomBatchResponseEntry
    , accountsCustomBatchResponseEntry
    , aKind
    , aAccount
    , aErrors
    , aBatchId

    -- * GmbAccounts
    , GmbAccounts
    , gmbAccounts
    , gaGmbAccounts
    , gaAccountId

    -- * CustomerReturnReason
    , CustomerReturnReason
    , customerReturnReason
    , crrReasonCode
    , crrDescription

    -- * AccountIdentifier
    , AccountIdentifier
    , accountIdentifier
    , aiMerchantId
    , aiAggregatorId

    -- * PosCustomBatchRequest
    , PosCustomBatchRequest
    , posCustomBatchRequest
    , pEntries

    -- * ReturnAddressAddress
    , ReturnAddressAddress
    , returnAddressAddress
    , raaRecipientName
    , raaStreetAddress
    , raaCountry
    , raaPostalCode
    , raaLocality
    , raaRegion

    -- * OrderinvoicesCreateChargeInvoiceRequest
    , OrderinvoicesCreateChargeInvoiceRequest
    , orderinvoicesCreateChargeInvoiceRequest
    , occirShipmentGroupId
    , occirLineItemInvoices
    , occirInvoiceId
    , occirInvoiceSummary
    , occirOperationId

    -- * OrderreturnsPartialRefund
    , OrderreturnsPartialRefund
    , orderreturnsPartialRefund
    , oprTaxAmount
    , oprPriceAmount

    -- * SearchResponse
    , SearchResponse
    , searchResponse
    , srNextPageToken
    , srResults

    -- * OrderLineItem
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

    -- * MinimumOrderValueTable
    , MinimumOrderValueTable
    , minimumOrderValueTable
    , movtStoreCodeSetWithMovs

    -- * RequestPhoneVerificationRequest
    , RequestPhoneVerificationRequest
    , requestPhoneVerificationRequest
    , rpvrLanguageCode
    , rpvrPhoneVerificationMethod
    , rpvrPhoneRegionCode
    , rpvrPhoneNumber

    -- * ReturnPolicyOnlineItemConditionsItem
    , ReturnPolicyOnlineItemConditionsItem (..)

    -- * Service
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

    -- * ShoppingAdsProgramStatusState
    , ShoppingAdsProgramStatusState (..)

    -- * RepricingRuleReportBuyboxWinningRuleStats
    , RepricingRuleReportBuyboxWinningRuleStats
    , repricingRuleReportBuyboxWinningRuleStats
    , rrrbwrsBuyboxWonProductCount

    -- * ProductstatusesCustomBatchResponse
    , ProductstatusesCustomBatchResponse
    , productstatusesCustomBatchResponse
    , proEntries
    , proKind

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
    , ousrScheduledDeliveryDetails
    , ousrTrackingId
    , ousrShipmentId
    , ousrUndeliveredDate
    , ousrLastPickupDate
    , ousrDeliveryDate
    , ousrOperationId
    , ousrReadyPickupDate

    -- * OrderShipmentLineItemShipment
    , OrderShipmentLineItemShipment
    , orderShipmentLineItemShipment
    , oslisQuantity
    , oslisLineItemId
    , oslisProductId

    -- * OrdersListStatuses
    , OrdersListStatuses (..)

    -- * ReturnPolicyOnlinePolicy
    , ReturnPolicyOnlinePolicy
    , returnPolicyOnlinePolicy
    , rpopDays
    , rpopType

    -- * OrderreportsListTransactionsResponse
    , OrderreportsListTransactionsResponse
    , orderreportsListTransactionsResponse
    , oltrNextPageToken
    , oltrTransactions
    , oltrKind

    -- * SettlementTransactionAmount
    , SettlementTransactionAmount
    , settlementTransactionAmount
    , staCommission
    , staTransactionAmount
    , staType
    , staDescription

    -- * LiaSettingsCustomBatchResponse
    , LiaSettingsCustomBatchResponse
    , liaSettingsCustomBatchResponse
    , lscbrEntries
    , lscbrKind

    -- * LoyaltyPoints
    , LoyaltyPoints
    , loyaltyPoints
    , lpRatio
    , lpPointsValue
    , lpName

    -- * LiaSettingsSetPosDataProviderResponse
    , LiaSettingsSetPosDataProviderResponse
    , liaSettingsSetPosDataProviderResponse
    , lsspdprKind

    -- * ListCollectionStatusesResponse
    , ListCollectionStatusesResponse
    , listCollectionStatusesResponse
    , lcsrNextPageToken
    , lcsrResources

    -- * ReturnPolicyOnlineReturnReasonCategoryInfo
    , ReturnPolicyOnlineReturnReasonCategoryInfo
    , returnPolicyOnlineReturnReasonCategoryInfo
    , rporrciReturnReasonCategory
    , rporrciReturnShippingFee
    , rporrciReturnLabelSource

    -- * WarehouseBasedDeliveryTime
    , WarehouseBasedDeliveryTime
    , warehouseBasedDeliveryTime
    , wbdtCarrier
    , wbdtOriginPostalCode
    , wbdtOriginCountry
    , wbdtOriginStreetAddress
    , wbdtCarrierService
    , wbdtOriginAdministrativeArea
    , wbdtOriginCity

    -- * SettlementTransactionTransaction
    , SettlementTransactionTransaction
    , settlementTransactionTransaction
    , sttPostDate
    , sttType

    -- * AccountStatus
    , AccountStatus
    , accountStatus
    , asAccountManagement
    , asAccountLevelIssues
    , asKind
    , asAccountId
    , asProducts
    , asWebsiteClaimed

    -- * ShippingSettingsCustomBatchRequestEntry
    , ShippingSettingsCustomBatchRequestEntry
    , shippingSettingsCustomBatchRequestEntry
    , sscbreMerchantId
    , sscbreAccountId
    , sscbreMethod
    , sscbreShippingSettings
    , sscbreBatchId

    -- * PosInventoryResponse
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

    -- * LinkService
    , LinkService
    , linkService
    , lsStatus
    , lsService

    -- * AccountstatusesCustomBatchRequest
    , AccountstatusesCustomBatchRequest
    , accountstatusesCustomBatchRequest
    , acbrEntries

    -- * AccountsUpdateLabelsResponse
    , AccountsUpdateLabelsResponse
    , accountsUpdateLabelsResponse
    , aulrKind

    -- * AccounttaxListResponse
    , AccounttaxListResponse
    , accounttaxListResponse
    , alrNextPageToken
    , alrKind
    , alrResources

    -- * LiaSettingsRequestInventoryVerificationResponse
    , LiaSettingsRequestInventoryVerificationResponse
    , liaSettingsRequestInventoryVerificationResponse
    , lsrivrKind

    -- * OrderinvoicesCreateChargeInvoiceResponse
    , OrderinvoicesCreateChargeInvoiceResponse
    , orderinvoicesCreateChargeInvoiceResponse
    , occirKind
    , occirExecutionStatus

    -- * RepricingRuleEligibleOfferMatcher
    , RepricingRuleEligibleOfferMatcher
    , repricingRuleEligibleOfferMatcher
    , rreomItemGroupIdMatcher
    , rreomOfferIdMatcher
    , rreomBrandMatcher
    , rreomSkipWhenOnPromotion
    , rreomMatcherOption

    -- * RequestReviewShoppingAdsRequest
    , RequestReviewShoppingAdsRequest
    , requestReviewShoppingAdsRequest
    , rrsarRegionCode

    -- * DatafeedsFetchNowResponse
    , DatafeedsFetchNowResponse
    , datafeedsFetchNowResponse
    , dfnrKind

    -- * OrdersGetTestOrderTemplateResponse
    , OrdersGetTestOrderTemplateResponse
    , ordersGetTestOrderTemplateResponse
    , ogtotrKind
    , ogtotrTemplate

    -- * ReturnaddressCustomBatchResponse
    , ReturnaddressCustomBatchResponse
    , returnaddressCustomBatchResponse
    , retEntries
    , retKind

    -- * AccountsCustomBatchRequestEntry
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

    -- * LinkedAccount
    , LinkedAccount
    , linkedAccount
    , laLinkedAccountId
    , laServices

    -- * Weight
    , Weight
    , weight
    , wValue
    , wUnit

    -- * OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
    , OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
    , orderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
    , ocbrecriroReason
    , ocbrecriroDescription

    -- * OrderPickupDetails
    , OrderPickupDetails
    , orderPickupDetails
    , opdPickupType
    , opdCollectors
    , opdAddress
    , opdLocationId

    -- * OrderreturnsReturnItem
    , OrderreturnsReturnItem
    , orderreturnsReturnItem
    , oriReject
    , oriReturnItemId
    , oriRefund

    -- * LiaSettingsListResponse
    , LiaSettingsListResponse
    , liaSettingsListResponse
    , lslrNextPageToken
    , lslrKind
    , lslrResources

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

    -- * OnboardBuyOnGoogleProgramRequest
    , OnboardBuyOnGoogleProgramRequest
    , onboardBuyOnGoogleProgramRequest
    , obogprCustomerServiceEmail

    -- * OrderPromotionItem
    , OrderPromotionItem
    , orderPromotionItem
    , opiQuantity
    , opiLineItemId
    , opiOfferId
    , opiProductId

    -- * PosCustomBatchResponse
    , PosCustomBatchResponse
    , posCustomBatchResponse
    , posEntries
    , posKind

    -- * OrdersCreateTestOrderRequest
    , OrdersCreateTestOrderRequest
    , ordersCreateTestOrderRequest
    , octorTemplateName
    , octorCountry
    , octorTestOrder

    -- * FreeListingsProgramStatusRegionStatusEligibilityStatus
    , FreeListingsProgramStatusRegionStatusEligibilityStatus (..)

    -- * AccountUser
    , AccountUser
    , accountUser
    , auAdmin
    , auPaymentsManager
    , auOrderManager
    , auEmailAddress
    , auPaymentsAnalyst

    -- * AccountCustomerService
    , AccountCustomerService
    , accountCustomerService
    , acsEmail
    , acsURL
    , acsPhoneNumber

    -- * OrderreturnsListOrderBy
    , OrderreturnsListOrderBy (..)

    -- * SettlementtransactionsListResponse
    , SettlementtransactionsListResponse
    , settlementtransactionsListResponse
    , slrNextPageToken
    , slrKind
    , slrResources

    -- * GmbAccountsGmbAccount
    , GmbAccountsGmbAccount
    , gmbAccountsGmbAccount
    , gagaEmail
    , gagaListingCount
    , gagaName
    , gagaType

    -- * OrdersInStoreRefundLineItemResponse
    , OrdersInStoreRefundLineItemResponse
    , ordersInStoreRefundLineItemResponse
    , oisrlirKind
    , oisrlirExecutionStatus

    -- * ProductSubscriptionCost
    , ProductSubscriptionCost
    , productSubscriptionCost
    , pscAmount
    , pscPeriod
    , pscPeriodLength

    -- * DatafeedsCustomBatchRequestEntry
    , DatafeedsCustomBatchRequestEntry
    , datafeedsCustomBatchRequestEntry
    , dcbreMerchantId
    , dcbreDatafeed
    , dcbreMethod
    , dcbreDatafeedId
    , dcbreBatchId

    -- * VerifyPhoneNumberRequestPhoneVerificationMethod
    , VerifyPhoneNumberRequestPhoneVerificationMethod (..)

    -- * OrderCustomerMarketingRightsInfo
    , OrderCustomerMarketingRightsInfo
    , orderCustomerMarketingRightsInfo
    , ocmriExplicitMarketingPreference
    , ocmriMarketingEmailAddress
    , ocmriLastUpdatedTimestamp

    -- * MerchantOrderReturnItem
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

    -- * PubsubNotificationSettings
    , PubsubNotificationSettings
    , pubsubNotificationSettings
    , pnsRegisteredEvents
    , pnsKind
    , pnsCloudTopicName

    -- * AccountStatusAccountLevelIssue
    , AccountStatusAccountLevelIssue
    , accountStatusAccountLevelIssue
    , asaliDestination
    , asaliCountry
    , asaliSeverity
    , asaliDocumentation
    , asaliId
    , asaliTitle
    , asaliDetail

    -- * ListRepricingRulesResponse
    , ListRepricingRulesResponse
    , listRepricingRulesResponse
    , lrrrNextPageToken
    , lrrrRepricingRules

    -- * Value
    , Value
    , value
    , vPricePercentage
    , vCarrierRateName
    , vFlatRate
    , vSubtableName
    , vNoShipping

    -- * Installment
    , Installment
    , installment
    , iAmount
    , iMonths

    -- * VerifyPhoneNumberResponse
    , VerifyPhoneNumberResponse
    , verifyPhoneNumberResponse
    , vpnrVerifiedPhoneNumber

    -- * PickupServicesPickupService
    , PickupServicesPickupService
    , pickupServicesPickupService
    , pspsCountry
    , pspsServiceName
    , pspsCarrierName

    -- * OrderTrackingSignalShippingInfo
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

    -- * DatafeedFetchSchedule
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

    -- * RegionalinventoryCustomBatchResponse
    , RegionalinventoryCustomBatchResponse
    , regionalinventoryCustomBatchResponse
    , regEntries
    , regKind

    -- * ReturnPolicyOnlineReturnShippingFee
    , ReturnPolicyOnlineReturnShippingFee
    , returnPolicyOnlineReturnShippingFee
    , rporsfFixedFee
    , rporsfType

    -- * BuyOnGoogleProgramStatusParticipationStage
    , BuyOnGoogleProgramStatusParticipationStage (..)

    -- * PosStore
    , PosStore
    , posStore
    , pssStoreCode
    , pssKind
    , pssStoreAddress

    -- * LiaSettingsSetInventoryVerificationContactResponse
    , LiaSettingsSetInventoryVerificationContactResponse
    , liaSettingsSetInventoryVerificationContactResponse
    , lssivcrKind

    -- * ShippingSettingsGetSupportedCarriersResponse
    , ShippingSettingsGetSupportedCarriersResponse
    , shippingSettingsGetSupportedCarriersResponse
    , ssgscrKind
    , ssgscrCarriers

    -- * PosDataProvidersPosDataProvider
    , PosDataProvidersPosDataProvider
    , posDataProvidersPosDataProvider
    , pdppdpProviderId
    , pdppdpFullName
    , pdppdpDisplayName

    -- * LocalinventoryCustomBatchResponse
    , LocalinventoryCustomBatchResponse
    , localinventoryCustomBatchResponse
    , lcbrEntries
    , lcbrKind

    -- * HolidaysHoliday
    , HolidaysHoliday
    , holidaysHoliday
    , hhDeliveryGuaranteeHour
    , hhDate
    , hhDeliveryGuaranteeDate
    , hhCountryCode
    , hhId
    , hhType

    -- * Css
    , Css
    , css
    , cFullName
    , cCssDomainId
    , cCssGroupId
    , cHomepageURI
    , cDisplayName
    , cLabelIds

    -- * AccountsListResponse
    , AccountsListResponse
    , accountsListResponse
    , accNextPageToken
    , accKind
    , accResources

    -- * OrderPickupDetailsCollector
    , OrderPickupDetailsCollector
    , orderPickupDetailsCollector
    , opdcName
    , opdcPhoneNumber

    -- * AccountBusinessInformation
    , AccountBusinessInformation
    , accountBusinessInformation
    , abiAddress
    , abiPhoneNumber
    , abiCustomerService

    -- * CarriersCarrier
    , CarriersCarrier
    , carriersCarrier
    , ccCountry
    , ccName
    , ccEddServices
    , ccServices

    -- * CarrierRate
    , CarrierRate
    , carrierRate
    , crOriginPostalCode
    , crFlatAdjustment
    , crCarrierService
    , crName
    , crPercentageAdjustment
    , crCarrierName

    -- * OrderreturnsCreateOrderReturnRequest
    , OrderreturnsCreateOrderReturnRequest
    , orderreturnsCreateOrderReturnRequest
    , ocorrReturnMethodType
    , ocorrLineItems
    , ocorrOperationId
    , ocorrOrderId

    -- * ShippingSettingsListResponse
    , ShippingSettingsListResponse
    , shippingSettingsListResponse
    , sslrNextPageToken
    , sslrKind
    , sslrResources

    -- * BuyOnGoogleProgramStatus
    , BuyOnGoogleProgramStatus
    , buyOnGoogleProgramStatus
    , bogpsCustomerServicePendingEmail
    , bogpsParticipationStage
    , bogpsCustomerServiceVerifiedEmail

    -- * OrdersCreateTestReturnResponse
    , OrdersCreateTestReturnResponse
    , ordersCreateTestReturnResponse
    , octrrKind
    , octrrReturnId

    -- * ReturnaddressCustomBatchRequestEntry
    , ReturnaddressCustomBatchRequestEntry
    , returnaddressCustomBatchRequestEntry
    , rcbrecMerchantId
    , rcbrecReturnAddressId
    , rcbrecReturnAddress
    , rcbrecMethod
    , rcbrecBatchId

    -- * OrdersShipLineItemsRequest
    , OrdersShipLineItemsRequest
    , ordersShipLineItemsRequest
    , oslirShipmentGroupId
    , oslirShipmentInfos
    , oslirLineItems
    , oslirOperationId

    -- * OrderCustomerLoyaltyInfo
    , OrderCustomerLoyaltyInfo
    , orderCustomerLoyaltyInfo
    , ocliName
    , ocliLoyaltyNumber

    -- * OrdersRefundOrderResponse
    , OrdersRefundOrderResponse
    , ordersRefundOrderResponse
    , ororKind
    , ororExecutionStatus

    -- * AccountReturnCarrierCarrierCode
    , AccountReturnCarrierCarrierCode (..)

    -- * ListAccountReturnCarrierResponse
    , ListAccountReturnCarrierResponse
    , listAccountReturnCarrierResponse
    , larcrAccountReturnCarriers

    -- * OrderreturnsListResponse
    , OrderreturnsListResponse
    , orderreturnsListResponse
    , olrNextPageToken
    , olrKind
    , olrResources

    -- * OrdersCustomBatchRequestEntryRefundItemShipping
    , OrdersCustomBatchRequestEntryRefundItemShipping
    , ordersCustomBatchRequestEntryRefundItemShipping
    , ocbrerisAmount
    , ocbrerisFullRefund

    -- * OrderreturnsListShipmentTypes
    , OrderreturnsListShipmentTypes (..)

    -- * AccountsCustomBatchResponse
    , AccountsCustomBatchResponse
    , accountsCustomBatchResponse
    , acbrcEntries
    , acbrcKind

    -- * ReturnPolicySeasonalOverride
    , ReturnPolicySeasonalOverride
    , returnPolicySeasonalOverride
    , rpsoEndDate
    , rpsoStartDate
    , rpsoName
    , rpsoPolicy

    -- * ShoppingAdsProgramStatusRegionStatus
    , ShoppingAdsProgramStatusRegionStatus
    , shoppingAdsProgramStatusRegionStatus
    , sapsrsDisApprovalDate
    , sapsrsReviewIssues
    , sapsrsReviewEligibilityStatus
    , sapsrsIneligibilityReason
    , sapsrsRegionCodes
    , sapsrsEligibilityStatus

    -- * OrdersUpdateLineItemShippingDetailsRequest
    , OrdersUpdateLineItemShippingDetailsRequest
    , ordersUpdateLineItemShippingDetailsRequest
    , oulisdrShipByDate
    , oulisdrLineItemId
    , oulisdrDeliverByDate
    , oulisdrOperationId
    , oulisdrProductId

    -- * Collection
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

    -- * MerchantOrderReturn
    , MerchantOrderReturn
    , merchantOrderReturn
    , morReturnPricingInfo
    , morReturnShipments
    , morMerchantOrderId
    , morReturnItems
    , morCreationDate
    , morOrderId
    , morOrderReturnId

    -- * ProductTax
    , ProductTax
    , productTax
    , ptTaxShip
    , ptCountry
    , ptPostalCode
    , ptRate
    , ptRegion
    , ptLocationId

    -- * PosCustomBatchRequestEntry
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

    -- * TestOrderPickupDetails
    , TestOrderPickupDetails
    , testOrderPickupDetails
    , topdPickupLocationType
    , topdPickupLocationAddress
    , topdPickupPersons
    , topdLocationCode

    -- * OrderShipment
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

    -- * ReturnShippingLabel
    , ReturnShippingLabel
    , returnShippingLabel
    , rslCarrier
    , rslTrackingId
    , rslLabelURI

    -- * FreeListingsProgramStatusRegionStatusEnhancedEligibilityStatus
    , FreeListingsProgramStatusRegionStatusEnhancedEligibilityStatus (..)

    -- * AccountsGetView
    , AccountsGetView (..)

    -- * AccountsLinkResponse
    , AccountsLinkResponse
    , accountsLinkResponse
    , alrlKind

    -- * OrderLineItemReturnInfo
    , OrderLineItemReturnInfo
    , orderLineItemReturnInfo
    , oliriIsReturnable
    , oliriPolicyURL
    , oliriDaysToReturn

    -- * SettlementTransaction
    , SettlementTransaction
    , settlementTransaction
    , stAmount
    , stKind
    , stIdentifiers
    , stTransaction

    -- * OrderreturnsListShipmentStates
    , OrderreturnsListShipmentStates (..)

    -- * FreeListingsProgramStatusRegionStatus
    , FreeListingsProgramStatusRegionStatus
    , freeListingsProgramStatusRegionStatus
    , flpsrsEnhancedEligibilityStatus
    , flpsrsDisApprovalDate
    , flpsrsReviewIssues
    , flpsrsReviewEligibilityStatus
    , flpsrsIneligibilityReason
    , flpsrsRegionCodes
    , flpsrsEligibilityStatus

    -- * TransitTable
    , TransitTable
    , transitTable
    , ttTransitTimeLabels
    , ttPostalCodeGroupNames
    , ttRows

    -- * Account
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

    -- * ShipmentTrackingInfo
    , ShipmentTrackingInfo
    , shipmentTrackingInfo
    , stiCarrier
    , stiTrackingNumber

    -- * OrdersCancelLineItemRequest
    , OrdersCancelLineItemRequest
    , ordersCancelLineItemRequest
    , oclirQuantity
    , oclirLineItemId
    , oclirReason
    , oclirOperationId
    , oclirProductId
    , oclirReasonText

    -- * ProductShippingWeight
    , ProductShippingWeight
    , productShippingWeight
    , pswValue
    , pswUnit

    -- * AccountstatusesCustomBatchRequestEntry
    , AccountstatusesCustomBatchRequestEntry
    , accountstatusesCustomBatchRequestEntry
    , acbrecMerchantId
    , acbrecAccountId
    , acbrecDestinations
    , acbrecMethod
    , acbrecBatchId

    -- * DeliveryTime
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

    -- * OrderreturnsListShipmentStatus
    , OrderreturnsListShipmentStatus (..)

    -- * LiaCountrySettings
    , LiaCountrySettings
    , liaCountrySettings
    , lcsPosDataProvider
    , lcsCountry
    , lcsStorePickupActive
    , lcsInventory
    , lcsAbout
    , lcsHostedLocalStorefrontActive
    , lcsOnDisplayToOrder

    -- * OrdersReturnRefundLineItemResponse
    , OrdersReturnRefundLineItemResponse
    , ordersReturnRefundLineItemResponse
    , orrlirKind
    , orrlirExecutionStatus

    -- * RepricingRuleEffectiveTime
    , RepricingRuleEffectiveTime
    , repricingRuleEffectiveTime
    , rretFixedTimePeriods

    -- * ProductstatusesCustomBatchResponseEntry
    , ProductstatusesCustomBatchResponseEntry
    , productstatusesCustomBatchResponseEntry
    , pKind
    , pProductStatus
    , pErrors
    , pBatchId

    -- * ShippingSettingsGetSupportedHolidaysResponse
    , ShippingSettingsGetSupportedHolidaysResponse
    , shippingSettingsGetSupportedHolidaysResponse
    , ssgshrKind
    , ssgshrHolidays

    -- * RepricingRule
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

    -- * OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails
    , OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails
    , ordersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails
    , ocbreussddScheduledDate
    , ocbreussddCarrierPhoneNumber

    -- * ProductProductDetail
    , ProductProductDetail
    , productProductDetail
    , ppdAttributeValue
    , ppdAttributeName
    , ppdSectionName

    -- * LiaPosDataProvider
    , LiaPosDataProvider
    , liaPosDataProvider
    , lpdpPosExternalAccountId
    , lpdpPosDataProviderId

    -- * DatafeedFormat
    , DatafeedFormat
    , datafeedFormat
    , dfQuotingMode
    , dfFileEncoding
    , dfColumnDelimiter

    -- * LiaSettings
    , LiaSettings
    , liaSettings
    , lsCountrySettings
    , lsKind
    , lsAccountId

    -- * TransitTableTransitTimeRow
    , TransitTableTransitTimeRow
    , transitTableTransitTimeRow
    , ttttrValues

    -- * ProductShipping
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

    -- * ShippingSettingsCustomBatchRequest
    , ShippingSettingsCustomBatchRequest
    , shippingSettingsCustomBatchRequest
    , sscbrEntries

    -- * LiaSettingsCustomBatchResponseEntry
    , LiaSettingsCustomBatchResponseEntry
    , liaSettingsCustomBatchResponseEntry
    , lscbreGmbAccounts
    , lscbreKind
    , lscbreLiaSettings
    , lscbreErrors
    , lscbrePosDataProviders
    , lscbreBatchId

    -- * AccountsCustomBatchRequest
    , AccountsCustomBatchRequest
    , accountsCustomBatchRequest
    , aEntries

    -- * PosCustomBatchResponseEntry
    , PosCustomBatchResponseEntry
    , posCustomBatchResponseEntry
    , pcbrecKind
    , pcbrecStore
    , pcbrecInventory
    , pcbrecErrors
    , pcbrecSale
    , pcbrecBatchId

    -- * Date
    , Date
    , date
    , dDay
    , dYear
    , dMonth

    -- * ReturnPolicyOnlineRestockingFee
    , ReturnPolicyOnlineRestockingFee
    , returnPolicyOnlineRestockingFee
    , rporfFixedFee
    , rporfMicroPercent

    -- * OrderreturnsLineItem
    , OrderreturnsLineItem
    , orderreturnsLineItem
    , oliQuantity
    , oliLineItemId
    , oliProductId

    -- * ReturnaddressCustomBatchResponseEntry
    , ReturnaddressCustomBatchResponseEntry
    , returnaddressCustomBatchResponseEntry
    , rKind
    , rReturnAddress
    , rErrors
    , rBatchId

    -- * OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
    , OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
    , orderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
    , oReason
    , oDescription

    -- * ListReturnPolicyOnlineResponse
    , ListReturnPolicyOnlineResponse
    , listReturnPolicyOnlineResponse
    , lrporReturnPolicies

    -- * OrdersListResponse
    , OrdersListResponse
    , ordersListResponse
    , oNextPageToken
    , oKind
    , oResources

    -- * OrdersRefundOrderRequest
    , OrdersRefundOrderRequest
    , ordersRefundOrderRequest
    , ororAmount
    , ororFullRefund
    , ororReason
    , ororOperationId
    , ororReasonText

    -- * OrdersUpdateLineItemShippingDetailsResponse
    , OrdersUpdateLineItemShippingDetailsResponse
    , ordersUpdateLineItemShippingDetailsResponse
    , oulisdrKind
    , oulisdrExecutionStatus

    -- * OrderreturnsRefundOperation
    , OrderreturnsRefundOperation
    , orderreturnsRefundOperation
    , oroFullRefund
    , oroPartialRefund
    , oroReturnRefundReason
    , oroPaymentType
    , oroReasonText

    -- * Headers
    , Headers
    , headers
    , hNumberOfItems
    , hPostalCodeGroupNames
    , hPrices
    , hWeights
    , hLocations

    -- * ReturnAddress
    , ReturnAddress
    , returnAddress
    , raCountry
    , raKind
    , raAddress
    , raReturnAddressId
    , raPhoneNumber
    , raLabel

    -- * UnitInvoiceAdditionalCharge
    , UnitInvoiceAdditionalCharge
    , unitInvoiceAdditionalCharge
    , uiacAdditionalChargeAmount
    , uiacType

    -- * ListCssesResponse
    , ListCssesResponse
    , listCssesResponse
    , lNextPageToken
    , lCsses

    -- * OrderreturnsCreateOrderReturnResponse
    , OrderreturnsCreateOrderReturnResponse
    , orderreturnsCreateOrderReturnResponse
    , ocorrOrderReturn
    , ocorrKind
    , ocorrExecutionStatus

    -- * OrdersShipLineItemsResponse
    , OrdersShipLineItemsResponse
    , ordersShipLineItemsResponse
    , oslirKind
    , oslirExecutionStatus

    -- * UnitInvoiceTaxLine
    , UnitInvoiceTaxLine
    , unitInvoiceTaxLine
    , uitlTaxName
    , uitlTaxType
    , uitlTaxAmount

    -- * OrdersCreateTestReturnRequest
    , OrdersCreateTestReturnRequest
    , ordersCreateTestReturnRequest
    , octrrItems

    -- * RequestPhoneVerificationResponse
    , RequestPhoneVerificationResponse
    , requestPhoneVerificationResponse
    , rpvrVerificationId

    -- * SearchRequest
    , SearchRequest
    , searchRequest
    , srQuery
    , srPageToken
    , srPageSize

    -- * AccountLabel
    , AccountLabel
    , accountLabel
    , aLabelType
    , aAccountId
    , aName
    , aLabelId
    , aDescription

    -- * RepricingRuleEffectiveTimeFixedTimePeriod
    , RepricingRuleEffectiveTimeFixedTimePeriod
    , repricingRuleEffectiveTimeFixedTimePeriod
    , rretftpStartTime
    , rretftpEndTime

    -- * AccountsUpdateLabelsRequest
    , AccountsUpdateLabelsRequest
    , accountsUpdateLabelsRequest
    , aulrLabelIds

    -- * ShippingSettings
    , ShippingSettings
    , shippingSettings
    , ssPostalCodeGroups
    , ssAccountId
    , ssServices

    -- * RegionPostalCodeArea
    , RegionPostalCodeArea
    , regionPostalCodeArea
    , rpcaRegionCode
    , rpcaPostalCodes

    -- * ProductAmount
    , ProductAmount
    , productAmount
    , paRemittedTaxAmount
    , paTaxAmount
    , paPriceAmount

    -- * PostalCodeRange
    , PostalCodeRange
    , postalCodeRange
    , pcrPostalCodeRangeBegin
    , pcrPostalCodeRangeEnd

    -- * OrdersUpdateShipmentResponse
    , OrdersUpdateShipmentResponse
    , ordersUpdateShipmentResponse
    , ousrKind
    , ousrExecutionStatus

    -- * ProductstatusesCustomBatchRequest
    , ProductstatusesCustomBatchRequest
    , productstatusesCustomBatchRequest
    , pcbrcEntries

    -- * AccountYouTubeChannelLink
    , AccountYouTubeChannelLink
    , accountYouTubeChannelLink
    , aytclStatus
    , aytclChannelId

    -- * RepricingRuleEligibleOfferMatcherMatcherOption
    , RepricingRuleEligibleOfferMatcherMatcherOption (..)

    -- * RequestPhoneVerificationRequestPhoneVerificationMethod
    , RequestPhoneVerificationRequestPhoneVerificationMethod (..)

    -- * AccountAdsLink
    , AccountAdsLink
    , accountAdsLink
    , aalStatus
    , aalAdsId

    -- * LiaAboutPageSettings
    , LiaAboutPageSettings
    , liaAboutPageSettings
    , lapsStatus
    , lapsURL

    -- * RepricingRuleReport
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

    -- * OrderTrackingSignal
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

    -- * LiaSettingsCustomBatchRequest
    , LiaSettingsCustomBatchRequest
    , liaSettingsCustomBatchRequest
    , lEntries

    -- * CustomAttribute
    , CustomAttribute
    , customAttribute
    , caGroupValues
    , caValue
    , caName

    -- * PosInventoryRequest
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

    -- * AccountstatusesCustomBatchResponse
    , AccountstatusesCustomBatchResponse
    , accountstatusesCustomBatchResponse
    , acccEntries
    , acccKind

    -- * ShippingSettingsCustomBatchResponseEntry
    , ShippingSettingsCustomBatchResponseEntry
    , shippingSettingsCustomBatchResponseEntry
    , sKind
    , sShippingSettings
    , sErrors
    , sBatchId

    -- * ProductStatus
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

    -- * AccountCredentialsPurpose
    , AccountCredentialsPurpose (..)

    -- * AccountReturnCarrier
    , AccountReturnCarrier
    , accountReturnCarrier
    , arcCarrierAccountNumber
    , arcCarrierAccountName
    , arcCarrierAccountId
    , arcCarrierCode

    -- * AccountstatusesListResponse
    , AccountstatusesListResponse
    , accountstatusesListResponse
    , alr1NextPageToken
    , alr1Kind
    , alr1Resources

    -- * OrdersSetLineItemMetadataResponse
    , OrdersSetLineItemMetadataResponse
    , ordersSetLineItemMetadataResponse
    , oslimrKind
    , oslimrExecutionStatus

    -- * AccounttaxCustomBatchRequest
    , AccounttaxCustomBatchRequest
    , accounttaxCustomBatchRequest
    , accEntries

    -- * RepricingProductReportType
    , RepricingProductReportType (..)

    -- * ProductsCustomBatchRequestEntry
    , ProductsCustomBatchRequestEntry
    , productsCustomBatchRequestEntry
    , prorMerchantId
    , prorUpdateMask
    , prorMethod
    , prorFeedId
    , prorProduct
    , prorProductId
    , prorBatchId

    -- * CollectionStatus
    , CollectionStatus
    , collectionStatus
    , csDestinationStatuses
    , csLastUpdateDate
    , csId
    , csCreationDate
    , csCollectionLevelIssuses

    -- * AccountGoogleMyBusinessLink
    , AccountGoogleMyBusinessLink
    , accountGoogleMyBusinessLink
    , agmblGmbEmail
    , agmblStatus
    , agmblGmbAccountId

    -- * FreeListingsProgramStatusRegionStatusReviewEligibilityStatus
    , FreeListingsProgramStatusRegionStatusReviewEligibilityStatus (..)

    -- * DatafeedstatusesCustomBatchRequestEntry
    , DatafeedstatusesCustomBatchRequestEntry
    , datafeedstatusesCustomBatchRequestEntry
    , dMerchantId
    , dCountry
    , dMethod
    , dDatafeedId
    , dLanguage
    , dBatchId

    -- * ReturnpolicyCustomBatchResponseEntry
    , ReturnpolicyCustomBatchResponseEntry
    , returnpolicyCustomBatchResponseEntry
    , rrKind
    , rrReturnPolicy
    , rrErrors
    , rrBatchId

    -- * ReturnPolicy
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

    -- * Xgafv
    , Xgafv (..)

    -- * CollectionStatusDestinationStatus
    , CollectionStatusDestinationStatus
    , collectionStatusDestinationStatus
    , csdsDestination
    , csdsStatus

    -- * OrderCustomer
    , OrderCustomer
    , orderCustomer
    , ocLoyaltyInfo
    , ocFullName
    , ocInvoiceReceivingEmail
    , ocMarketingRightsInfo

    -- * LocationIdSet
    , LocationIdSet
    , locationIdSet
    , lisLocationIds

    -- * Row
    , Row
    , row
    , rCells

    -- * OrdersGetByMerchantOrderIdResponse
    , OrdersGetByMerchantOrderIdResponse
    , ordersGetByMerchantOrderIdResponse
    , ogbmoirKind
    , ogbmoirOrder

    -- * ActivateBuyOnGoogleProgramRequest
    , ActivateBuyOnGoogleProgramRequest
    , activateBuyOnGoogleProgramRequest

    -- * OrdersRejectReturnLineItemRequest
    , OrdersRejectReturnLineItemRequest
    , ordersRejectReturnLineItemRequest
    , orrlirQuantity
    , orrlirLineItemId
    , orrlirReason
    , orrlirOperationId
    , orrlirProductId
    , orrlirReasonText

    -- * OrdersCancelRequest
    , OrdersCancelRequest
    , ordersCancelRequest
    , ocrReason
    , ocrOperationId
    , ocrReasonText

    -- * ReturnShipment
    , ReturnShipment
    , returnShipment
    , rsState
    , rsShipmentTrackingInfos
    , rsReturnMethodType
    , rsShipmentId
    , rsCreationDate
    , rsDeliveryDate
    , rsShippingDate

    -- * RepricingRuleRestriction
    , RepricingRuleRestriction
    , repricingRuleRestriction
    , rrrFloor
    , rrrUseAutoPricingMinPrice

    -- * AccountsListView
    , AccountsListView (..)

    -- * OrdersCancelTestOrderByCustomerRequest
    , OrdersCancelTestOrderByCustomerRequest
    , ordersCancelTestOrderByCustomerRequest
    , octobcrReason

    -- * ProductStatusItemLevelIssue
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

    -- * OrderLineItemProductVariantAttribute
    , OrderLineItemProductVariantAttribute
    , orderLineItemProductVariantAttribute
    , olipvaDimension
    , olipvaValue

    -- * ReturnPolicyOnlinePolicyType
    , ReturnPolicyOnlinePolicyType (..)

    -- * ReturnPolicyOnline
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

    -- * OrdersRefundItemResponse
    , OrdersRefundItemResponse
    , ordersRefundItemResponse
    , orirKind
    , orirExecutionStatus

    -- * OrderreturnsRejectOperation
    , OrderreturnsRejectOperation
    , orderreturnsRejectOperation
    , ordReason
    , ordReasonText

    -- * ReturnaddressListResponse
    , ReturnaddressListResponse
    , returnaddressListResponse
    , rlrNextPageToken
    , rlrKind
    , rlrResources

    -- * ListRepricingRuleReportsResponse
    , ListRepricingRuleReportsResponse
    , listRepricingRuleReportsResponse
    , lrrrrNextPageToken
    , lrrrrRepricingRuleReports

    -- * RateGroup
    , RateGroup
    , rateGroup
    , rgCarrierRates
    , rgName
    , rgApplicableShippingLabels
    , rgMainTable
    , rgSingleValue
    , rgSubtables

    -- * OrderPromotion
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

    -- * OrderreturnsProcessRequest
    , OrderreturnsProcessRequest
    , orderreturnsProcessRequest
    , oprReturnItems
    , oprRefundShippingFee
    , oprFullChargeReturnShippingCost
    , oprOperationId

    -- * AccountStatusProducts
    , AccountStatusProducts
    , accountStatusProducts
    , aspDestination
    , aspCountry
    , aspChannel
    , aspStatistics
    , aspItemLevelIssues

    -- * ShoppingAdsProgramStatusRegionStatusReviewEligibilityStatus
    , ShoppingAdsProgramStatusRegionStatusReviewEligibilityStatus (..)

    -- * RegionalinventoryCustomBatchRequestEntry
    , RegionalinventoryCustomBatchRequestEntry
    , regionalinventoryCustomBatchRequestEntry
    , rcbre1MerchantId
    , rcbre1RegionalInventory
    , rcbre1Method
    , rcbre1ProductId
    , rcbre1BatchId

    -- * Price
    , Price
    , price
    , pValue
    , pCurrency

    -- * RepricingProductReportBuyboxWinningProductStats
    , RepricingProductReportBuyboxWinningProductStats
    , repricingProductReportBuyboxWinningProductStats
    , rprbwpsBuyboxWinsCount

    -- * OrderLineItemShippingDetails
    , OrderLineItemShippingDetails
    , orderLineItemShippingDetails
    , olisdShipByDate
    , olisdPickupPromiseInMinutes
    , olisdMethod
    , olisdDeliverByDate
    , olisdType

    -- * CollectionFeaturedProduct
    , CollectionFeaturedProduct
    , collectionFeaturedProduct
    , cfpOfferId
    , cfpX
    , cfpY

    -- * PickupCarrierService
    , PickupCarrierService
    , pickupCarrierService
    , pcsServiceName
    , pcsCarrierName

    -- * DatafeedsCustomBatchResponse
    , DatafeedsCustomBatchResponse
    , datafeedsCustomBatchResponse
    , datEntries
    , datKind

    -- * InvoiceSummary
    , InvoiceSummary
    , invoiceSummary
    , isProductTotal
    , isAdditionalChargeSummaries

    -- * LocalinventoryCustomBatchRequestEntry
    , LocalinventoryCustomBatchRequestEntry
    , localinventoryCustomBatchRequestEntry
    , lLocalInventory
    , lMerchantId
    , lMethod
    , lProductId
    , lBatchId

    -- * OrderTrackingSignalShippingInfoShippingStatus
    , OrderTrackingSignalShippingInfoShippingStatus (..)

    -- * RepricingRuleRestrictionBoundary
    , RepricingRuleRestrictionBoundary
    , repricingRuleRestrictionBoundary
    , rrrbPriceDelta
    , rrrbPercentageDelta

    -- * PosListResponse
    , PosListResponse
    , posListResponse
    , plrlKind
    , plrlResources

    -- * ListAccountLabelsResponse
    , ListAccountLabelsResponse
    , listAccountLabelsResponse
    , lalrNextPageToken
    , lalrAccountLabels

    -- * FreeListingsProgramStatus
    , FreeListingsProgramStatus
    , freeListingsProgramStatus
    , flpsState
    , flpsRegionStatuses

    -- * OrderDeliveryDetails
    , OrderDeliveryDetails
    , orderDeliveryDetails
    , oddAddress
    , oddPhoneNumber

    -- * OrderLineItemProductFee
    , OrderLineItemProductFee
    , orderLineItemProductFee
    , olipfAmount
    , olipfName

    -- * BusinessDayConfig
    , BusinessDayConfig
    , businessDayConfig
    , bdcBusinessDays

    -- * SettlementTransactionAmountCommission
    , SettlementTransactionAmountCommission
    , settlementTransactionAmountCommission
    , stacCategory
    , stacRate

    -- * InApplicabilityDetails
    , InApplicabilityDetails
    , inApplicabilityDetails
    , iadInApplicableReason
    , iadInApplicableCount

    -- * LabelIds
    , LabelIds
    , labelIds
    , liLabelIds

    -- * OrdersCancelResponse
    , OrdersCancelResponse
    , ordersCancelResponse
    , ocrKind
    , ocrExecutionStatus

    -- * OrdersSetLineItemMetadataRequest
    , OrdersSetLineItemMetadataRequest
    , ordersSetLineItemMetadataRequest
    , oslimrAnnotations
    , oslimrLineItemId
    , oslimrOperationId
    , oslimrProductId

    -- * Segments
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

    -- * RequestReviewBuyOnGoogleProgramRequest
    , RequestReviewBuyOnGoogleProgramRequest
    , requestReviewBuyOnGoogleProgramRequest

    -- * ListRepricingProductReportsResponse
    , ListRepricingProductReportsResponse
    , listRepricingProductReportsResponse
    , lrprrNextPageToken
    , lrprrRepricingProductReports

    -- * CollectionStatusItemLevelIssue
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

    -- * AccountsListLinksResponse
    , AccountsListLinksResponse
    , accountsListLinksResponse
    , allrNextPageToken
    , allrKind
    , allrLinks

    -- * OrdersRejectReturnLineItemResponse
    , OrdersRejectReturnLineItemResponse
    , ordersRejectReturnLineItemResponse
    , ordKind
    , ordExecutionStatus

    -- * TestOrder
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

    -- * CutoffTime
    , CutoffTime
    , cutoffTime
    , ctHour
    , ctTimezone
    , ctMinute

    -- * DatafeedstatusesCustomBatchResponseEntry
    , DatafeedstatusesCustomBatchResponseEntry
    , datafeedstatusesCustomBatchResponseEntry
    , datErrors
    , datDatafeedStatus
    , datBatchId

    -- * OrderRefund
    , OrderRefund
    , orderRefund
    , orrAmount
    , orrActor
    , orrReason
    , orrCreationDate
    , orrReasonText

    -- * PaymentServiceProviderLinkInfo
    , PaymentServiceProviderLinkInfo
    , paymentServiceProviderLinkInfo
    , pspliExternalAccountId
    , pspliExternalAccountBusinessCountry

    -- * TestOrderLineItemProduct
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

    -- * Region
    , Region
    , region
    , r1MerchantId
    , r1PostalCodeArea
    , r1RegionalInventoryEligible
    , r1RegionId
    , r1GeotargetArea
    , r1ShippingEligible
    , r1DisplayName

    -- * AccounttaxCustomBatchResponse
    , AccounttaxCustomBatchResponse
    , accounttaxCustomBatchResponse
    , acbr1Entries
    , acbr1Kind

    -- * RegionPostalCodeAreaPostalCodeRange
    , RegionPostalCodeAreaPostalCodeRange
    , regionPostalCodeAreaPostalCodeRange
    , rpcapcrBegin
    , rpcapcrEnd

    -- * AccountsClaimWebsiteResponse
    , AccountsClaimWebsiteResponse
    , accountsClaimWebsiteResponse
    , acwrKind

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

    -- * ReturnpolicyCustomBatchRequestEntry
    , ReturnpolicyCustomBatchRequestEntry
    , returnpolicyCustomBatchRequestEntry
    , ret1ReturnPolicyId
    , ret1MerchantId
    , ret1Method
    , ret1ReturnPolicy
    , ret1BatchId

    -- * OrdersCustomBatchRequestEntryCreateTestReturnReturnItem
    , OrdersCustomBatchRequestEntryCreateTestReturnReturnItem
    , ordersCustomBatchRequestEntryCreateTestReturnReturnItem
    , ocbrectrriQuantity
    , ocbrectrriLineItemId

    -- * ProductUnitPricingBaseMeasure
    , ProductUnitPricingBaseMeasure
    , productUnitPricingBaseMeasure
    , pupbmValue
    , pupbmUnit

    -- * LiaSettingsGetAccessibleGmbAccountsResponse
    , LiaSettingsGetAccessibleGmbAccountsResponse
    , liaSettingsGetAccessibleGmbAccountsResponse
    , lsgagarGmbAccounts
    , lsgagarKind
    , lsgagarAccountId

    -- * DatafeedsListResponse
    , DatafeedsListResponse
    , datafeedsListResponse
    , dlrNextPageToken
    , dlrKind
    , dlrResources

    -- * OrderTrackingSignalShipmentLineItemMApping
    , OrderTrackingSignalShipmentLineItemMApping
    , orderTrackingSignalShipmentLineItemMApping
    , otsslimaShipmentId
    , otsslimaQuantity
    , otsslimaLineItemId

    -- * TransitTableTransitTimeRowTransitTimeValue
    , TransitTableTransitTimeRowTransitTimeValue
    , transitTableTransitTimeRowTransitTimeValue
    , ttttrttvMinTransitTimeInDays
    , ttttrttvMaxTransitTimeInDays

    -- * AccountStatusStatistics
    , AccountStatusStatistics
    , accountStatusStatistics
    , assPending
    , assExpiring
    , assActive
    , assDisApproved

    -- * ProductsCustomBatchResponseEntry
    , ProductsCustomBatchResponseEntry
    , productsCustomBatchResponseEntry
    , pcbre1Kind
    , pcbre1Product
    , pcbre1Errors
    , pcbre1BatchId

    -- * Product
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

    -- * SettlementReport
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

    -- * ReturnPolicyOnlineReturnShippingFeeType
    , ReturnPolicyOnlineReturnShippingFeeType (..)

    -- * LiaSettingsCustomBatchRequestEntry
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

    -- * Errors
    , Errors
    , errors
    , errCode
    , errMessage
    , errErrors

    -- * LiaInventorySettings
    , LiaInventorySettings
    , liaInventorySettings
    , lisInventoryVerificationContactName
    , lisStatus
    , lisInventoryVerificationContactEmail
    , lisInventoryVerificationContactStatus

    -- * RegionGeoTargetArea
    , RegionGeoTargetArea
    , regionGeoTargetArea
    , rgtaGeotargetCriteriaIds

    -- * AccountstatusesCustomBatchResponseEntry
    , AccountstatusesCustomBatchResponseEntry
    , accountstatusesCustomBatchResponseEntry
    , aaAccountStatus
    , aaErrors
    , aaBatchId

    -- * OrdersCancelLineItemResponse
    , OrdersCancelLineItemResponse
    , ordersCancelLineItemResponse
    , oclirKind
    , oclirExecutionStatus

    -- * HolidayCutoff
    , HolidayCutoff
    , holidayCutoff
    , hcDeadlineHour
    , hcDeadlineTimezone
    , hcVisibleFromDate
    , hcHolidayId
    , hcDeadlineDate

    -- * ReturnPolicyOnlineReturnReasonCategoryInfoReturnReasonCategory
    , ReturnPolicyOnlineReturnReasonCategoryInfoReturnReasonCategory (..)

    -- * TestOrderLineItem
    , TestOrderLineItem
    , testOrderLineItem
    , toliQuantityOrdered
    , toliReturnInfo
    , toliShippingDetails
    , toliProduct

    -- * MinimumOrderValueTableStoreCodeSetWithMov
    , MinimumOrderValueTableStoreCodeSetWithMov
    , minimumOrderValueTableStoreCodeSetWithMov
    , movtscswmValue
    , movtscswmStoreCodes

    -- * ProductstatusesCustomBatchRequestEntry
    , ProductstatusesCustomBatchRequestEntry
    , productstatusesCustomBatchRequestEntry
    , p1MerchantId
    , p1Destinations
    , p1Method
    , p1IncludeAttributes
    , p1ProductId
    , p1BatchId

    -- * TimeZone
    , TimeZone
    , timeZone
    , tzVersion
    , tzId

    -- * ReturnpolicyListResponse
    , ReturnpolicyListResponse
    , returnpolicyListResponse
    , rlrlKind
    , rlrlResources

    -- * ShippingSettingsCustomBatchResponse
    , ShippingSettingsCustomBatchResponse
    , shippingSettingsCustomBatchResponse
    , shiEntries
    , shiKind

    -- * OrdersReturnRefundLineItemRequest
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

    -- * MonetaryAmount
    , MonetaryAmount
    , monetaryAmount
    , maTaxAmount
    , maPriceAmount

    -- * ShipmentInvoiceLineItemInvoice
    , ShipmentInvoiceLineItemInvoice
    , shipmentInvoiceLineItemInvoice
    , siliiUnitInvoice
    , siliiShipmentUnitIds
    , siliiLineItemId
    , siliiProductId

    -- * OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo
    , OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo
    , ordersCustomBatchRequestEntryShipLineItemsShipmentInfo
    , ocbreslisiCarrier
    , ocbreslisiTrackingId
    , ocbreslisiShipmentId

    -- * AccountsLinkRequest
    , AccountsLinkRequest
    , accountsLinkRequest
    , alrAction
    , alrLinkedAccountId
    , alrPaymentServiceProviderLinkInfo
    , alrLinkType
    , alrServices

    -- * DatafeedTarget
    , DatafeedTarget
    , datafeedTarget
    , dtIncludedDestinations
    , dtExcludedDestinations
    , dtCountry
    , dtLanguage

    -- * OrdersUpdateMerchantOrderIdResponse
    , OrdersUpdateMerchantOrderIdResponse
    , ordersUpdateMerchantOrderIdResponse
    , oumoirKind
    , oumoirExecutionStatus

    -- * OrderreportsListDisbursementsResponse
    , OrderreportsListDisbursementsResponse
    , orderreportsListDisbursementsResponse
    , oldrNextPageToken
    , oldrKind
    , oldrDisbursements

    -- * TestOrderAddress
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

    -- * DatafeedStatusExample
    , DatafeedStatusExample
    , datafeedStatusExample
    , dseLineNumber
    , dseItemId
    , dseValue

    -- * OrdersAcknowledgeResponse
    , OrdersAcknowledgeResponse
    , ordersAcknowledgeResponse
    , oaraKind
    , oaraExecutionStatus

    -- * PosSaleRequest
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

    -- * Table
    , Table
    , table
    , tRows
    , tName
    , tColumnHeaders
    , tRowHeaders

    -- * Order
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

    -- * ReturnPolicyOnlineReturnMethodsItem
    , ReturnPolicyOnlineReturnMethodsItem (..)

    -- * OrderreturnsAcknowledgeRequest
    , OrderreturnsAcknowledgeRequest
    , orderreturnsAcknowledgeRequest
    , oOperationId

    -- * OrderLineItemProduct
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

    -- * AccounttaxCustomBatchRequestEntry
    , AccounttaxCustomBatchRequestEntry
    , accounttaxCustomBatchRequestEntry
    , acbre1AccountTax
    , acbre1MerchantId
    , acbre1AccountId
    , acbre1Method
    , acbre1BatchId

    -- * OrderTrackingSignalLineItemDetails
    , OrderTrackingSignalLineItemDetails
    , orderTrackingSignalLineItemDetails
    , otslidQuantity
    , otslidLineItemId
    , otslidGtin
    , otslidMpn
    , otslidProductId

    -- * InApplicabilityDetailsInApplicableReason
    , InApplicabilityDetailsInApplicableReason (..)

    -- * ShippingSettingsGetSupportedPickupServicesResponse
    , ShippingSettingsGetSupportedPickupServicesResponse
    , shippingSettingsGetSupportedPickupServicesResponse
    , ssgspsrKind
    , ssgspsrPickupServices

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
    , ppEntries

    -- * PosDataProviders
    , PosDataProviders
    , posDataProviders
    , pdpCountry
    , pdpPosDataProviders

    -- * PosInventory
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

    -- * RepricingRuleCostOfGoodsSaleRule
    , RepricingRuleCostOfGoodsSaleRule
    , repricingRuleCostOfGoodsSaleRule
    , rrcogsrPriceDelta
    , rrcogsrPercentageDelta

    -- * TestOrderDeliveryDetails
    , TestOrderDeliveryDetails
    , testOrderDeliveryDetails
    , toddAddress
    , toddPhoneNumber
    , toddIsScheduledDelivery

    -- * LiaSettingsListPosDataProvidersResponse
    , LiaSettingsListPosDataProvidersResponse
    , liaSettingsListPosDataProvidersResponse
    , lslpdprKind
    , lslpdprPosDataProviders

    -- * OrderinvoicesCreateRefundInvoiceRequest
    , OrderinvoicesCreateRefundInvoiceRequest
    , orderinvoicesCreateRefundInvoiceRequest
    , ocrirRefundOnlyOption
    , ocrirInvoiceId
    , ocrirShipmentInvoices
    , ocrirOperationId
    , ocrirReturnOption

    -- * DatafeedStatus
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

    -- * DatafeedstatusesCustomBatchRequest
    , DatafeedstatusesCustomBatchRequest
    , datafeedstatusesCustomBatchRequest
    , dcbrcEntries

    -- * ReturnpolicyCustomBatchResponse
    , ReturnpolicyCustomBatchResponse
    , returnpolicyCustomBatchResponse
    , rcbrcEntries
    , rcbrcKind

    -- * AccountCredentials
    , AccountCredentials
    , accountCredentials
    , acsAccessToken
    , acsPurpose
    , acsExpiresIn

    -- * OrdersCustomBatchRequestEntryRefundItemItem
    , OrdersCustomBatchRequestEntryRefundItemItem
    , ordersCustomBatchRequestEntryRefundItemItem
    , ocbreriiAmount
    , ocbreriiFullRefund
    , ocbreriiQuantity
    , ocbreriiLineItemId
    , ocbreriiProductId

    -- * RepricingRuleEligibleOfferMatcherStringMatcher
    , RepricingRuleEligibleOfferMatcherStringMatcher
    , repricingRuleEligibleOfferMatcherStringMatcher
    , rreomsmStrAttributes

    -- * DateTime''
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

    -- * VerifyPhoneNumberRequest
    , VerifyPhoneNumberRequest
    , verifyPhoneNumberRequest
    , vpnrVerificationCode
    , vpnrVerificationId
    , vpnrPhoneVerificationMethod

    -- * SettlementTransactionIdentifiers
    , SettlementTransactionIdentifiers
    , settlementTransactionIdentifiers
    , stiTransactionId
    , stiMerchantOrderId
    , stiSettlementEntryId
    , stiAdjustmentId
    , stiOrderItemId
    , stiShipmentIds

    -- * LocalinventoryCustomBatchRequest
    , LocalinventoryCustomBatchRequest
    , localinventoryCustomBatchRequest
    , locEntries

    -- * OrdersInStoreRefundLineItemRequest
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

    -- * MerchantRejectionReason
    , MerchantRejectionReason
    , merchantRejectionReason
    , mrrReasonCode
    , mrrDescription

    -- * AccountsCustomBatchRequestEntryLinkRequest
    , AccountsCustomBatchRequestEntryLinkRequest
    , accountsCustomBatchRequestEntryLinkRequest
    , acbrelrAction
    , acbrelrLinkedAccountId
    , acbrelrLinkType
    , acbrelrServices

    -- * ProductShippingDimension
    , ProductShippingDimension
    , productShippingDimension
    , psdValue
    , psdUnit

    -- * SettlementreportsListResponse
    , SettlementreportsListResponse
    , settlementreportsListResponse
    , setNextPageToken
    , setKind
    , setResources

    -- * RepricingRuleType
    , RepricingRuleType (..)

    -- * RegionalinventoryCustomBatchRequest
    , RegionalinventoryCustomBatchRequest
    , regionalinventoryCustomBatchRequest
    , rrEntries

    -- * DatafeedsCustomBatchResponseEntry
    , DatafeedsCustomBatchResponseEntry
    , datafeedsCustomBatchResponseEntry
    , dcbrecDatafeed
    , dcbrecErrors
    , dcbrecBatchId

    -- * DatafeedstatusesListResponse
    , DatafeedstatusesListResponse
    , datafeedstatusesListResponse
    , dlrlNextPageToken
    , dlrlKind
    , dlrlResources

    -- * ProductsListResponse
    , ProductsListResponse
    , productsListResponse
    , plr1NextPageToken
    , plr1Kind
    , plr1Resources

    -- * PriceAmount
    , PriceAmount
    , priceAmount
    , paValue
    , paCurrency

    -- * ShipmentInvoice
    , ShipmentInvoice
    , shipmentInvoice
    , siShipmentGroupId
    , siLineItemInvoices
    , siInvoiceSummary

    -- * OrderShipmentScheduledDeliveryDetails
    , OrderShipmentScheduledDeliveryDetails
    , orderShipmentScheduledDeliveryDetails
    , ossddScheduledDate
    , ossddCarrierPhoneNumber

    -- * OrderCancellation
    , OrderCancellation
    , orderCancellation
    , ocQuantity
    , ocActor
    , ocReason
    , ocCreationDate
    , ocReasonText

    -- * PauseBuyOnGoogleProgramRequest
    , PauseBuyOnGoogleProgramRequest
    , pauseBuyOnGoogleProgramRequest

    -- * AccountLabelLabelType
    , AccountLabelLabelType (..)
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types.Product
import Network.Google.ShoppingContent.Types.Sum

-- | Default request referring to version 'v2.1' of the Content API for Shopping. This contains the host and root path used as a starting point for constructing service requests.
shoppingContentService :: ServiceConfig
shoppingContentService
  = defaultService (ServiceId "content:v2.1")
      "shoppingcontent.googleapis.com"

-- | Manage your product listings and accounts for Google Shopping
contentScope :: Proxy '["https://www.googleapis.com/auth/content"]
contentScope = Proxy
