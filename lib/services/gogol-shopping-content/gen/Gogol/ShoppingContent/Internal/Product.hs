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
-- Module      : Gogol.ShoppingContent.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.ShoppingContent.Internal.Product
  ( -- * Account
    Account (..),
    newAccount,

    -- * AccountAddress
    AccountAddress (..),
    newAccountAddress,

    -- * AccountAdsLink
    AccountAdsLink (..),
    newAccountAdsLink,

    -- * AccountAutomaticImprovements
    AccountAutomaticImprovements (..),
    newAccountAutomaticImprovements,

    -- * AccountBusinessInformation
    AccountBusinessInformation (..),
    newAccountBusinessInformation,

    -- * AccountCredentials
    AccountCredentials (..),
    newAccountCredentials,

    -- * AccountCustomerService
    AccountCustomerService (..),
    newAccountCustomerService,

    -- * AccountGoogleMyBusinessLink
    AccountGoogleMyBusinessLink (..),
    newAccountGoogleMyBusinessLink,

    -- * AccountIdentifier
    AccountIdentifier (..),
    newAccountIdentifier,

    -- * AccountImageImprovements
    AccountImageImprovements (..),
    newAccountImageImprovements,

    -- * AccountImageImprovementsSettings
    AccountImageImprovementsSettings (..),
    newAccountImageImprovementsSettings,

    -- * AccountItemUpdates
    AccountItemUpdates (..),
    newAccountItemUpdates,

    -- * AccountItemUpdatesSettings
    AccountItemUpdatesSettings (..),
    newAccountItemUpdatesSettings,

    -- * AccountLabel
    AccountLabel (..),
    newAccountLabel,

    -- * AccountReturnCarrier
    AccountReturnCarrier (..),
    newAccountReturnCarrier,

    -- * AccountShippingImprovements
    AccountShippingImprovements (..),
    newAccountShippingImprovements,

    -- * AccountStatus
    AccountStatus (..),
    newAccountStatus,

    -- * AccountStatusAccountLevelIssue
    AccountStatusAccountLevelIssue (..),
    newAccountStatusAccountLevelIssue,

    -- * AccountStatusItemLevelIssue
    AccountStatusItemLevelIssue (..),
    newAccountStatusItemLevelIssue,

    -- * AccountStatusProducts
    AccountStatusProducts (..),
    newAccountStatusProducts,

    -- * AccountStatusStatistics
    AccountStatusStatistics (..),
    newAccountStatusStatistics,

    -- * AccountTax
    AccountTax (..),
    newAccountTax,

    -- * AccountTaxTaxRule
    AccountTaxTaxRule (..),
    newAccountTaxTaxRule,

    -- * AccountUser
    AccountUser (..),
    newAccountUser,

    -- * AccountYouTubeChannelLink
    AccountYouTubeChannelLink (..),
    newAccountYouTubeChannelLink,

    -- * AccountsAuthInfoResponse
    AccountsAuthInfoResponse (..),
    newAccountsAuthInfoResponse,

    -- * AccountsClaimWebsiteResponse
    AccountsClaimWebsiteResponse (..),
    newAccountsClaimWebsiteResponse,

    -- * AccountsCustomBatchRequest
    AccountsCustomBatchRequest (..),
    newAccountsCustomBatchRequest,

    -- * AccountsCustomBatchRequestEntry
    AccountsCustomBatchRequestEntry (..),
    newAccountsCustomBatchRequestEntry,

    -- * AccountsCustomBatchRequestEntryLinkRequest
    AccountsCustomBatchRequestEntryLinkRequest (..),
    newAccountsCustomBatchRequestEntryLinkRequest,

    -- * AccountsCustomBatchResponse
    AccountsCustomBatchResponse (..),
    newAccountsCustomBatchResponse,

    -- * AccountsCustomBatchResponseEntry
    AccountsCustomBatchResponseEntry (..),
    newAccountsCustomBatchResponseEntry,

    -- * AccountsLinkRequest
    AccountsLinkRequest (..),
    newAccountsLinkRequest,

    -- * AccountsLinkResponse
    AccountsLinkResponse (..),
    newAccountsLinkResponse,

    -- * AccountsListLinksResponse
    AccountsListLinksResponse (..),
    newAccountsListLinksResponse,

    -- * AccountsListResponse
    AccountsListResponse (..),
    newAccountsListResponse,

    -- * AccountsUpdateLabelsRequest
    AccountsUpdateLabelsRequest (..),
    newAccountsUpdateLabelsRequest,

    -- * AccountsUpdateLabelsResponse
    AccountsUpdateLabelsResponse (..),
    newAccountsUpdateLabelsResponse,

    -- * AccountstatusesCustomBatchRequest
    AccountstatusesCustomBatchRequest (..),
    newAccountstatusesCustomBatchRequest,

    -- * AccountstatusesCustomBatchRequestEntry
    AccountstatusesCustomBatchRequestEntry (..),
    newAccountstatusesCustomBatchRequestEntry,

    -- * AccountstatusesCustomBatchResponse
    AccountstatusesCustomBatchResponse (..),
    newAccountstatusesCustomBatchResponse,

    -- * AccountstatusesCustomBatchResponseEntry
    AccountstatusesCustomBatchResponseEntry (..),
    newAccountstatusesCustomBatchResponseEntry,

    -- * AccountstatusesListResponse
    AccountstatusesListResponse (..),
    newAccountstatusesListResponse,

    -- * AccounttaxCustomBatchRequest
    AccounttaxCustomBatchRequest (..),
    newAccounttaxCustomBatchRequest,

    -- * AccounttaxCustomBatchRequestEntry
    AccounttaxCustomBatchRequestEntry (..),
    newAccounttaxCustomBatchRequestEntry,

    -- * AccounttaxCustomBatchResponse
    AccounttaxCustomBatchResponse (..),
    newAccounttaxCustomBatchResponse,

    -- * AccounttaxCustomBatchResponseEntry
    AccounttaxCustomBatchResponseEntry (..),
    newAccounttaxCustomBatchResponseEntry,

    -- * AccounttaxListResponse
    AccounttaxListResponse (..),
    newAccounttaxListResponse,

    -- * ActivateBuyOnGoogleProgramRequest
    ActivateBuyOnGoogleProgramRequest (..),
    newActivateBuyOnGoogleProgramRequest,

    -- * Address
    Address (..),
    newAddress,

    -- * Amount
    Amount (..),
    newAmount,

    -- * BusinessDayConfig
    BusinessDayConfig (..),
    newBusinessDayConfig,

    -- * BuyOnGoogleProgramStatus
    BuyOnGoogleProgramStatus (..),
    newBuyOnGoogleProgramStatus,

    -- * CaptureOrderRequest
    CaptureOrderRequest (..),
    newCaptureOrderRequest,

    -- * CaptureOrderResponse
    CaptureOrderResponse (..),
    newCaptureOrderResponse,

    -- * CarrierRate
    CarrierRate (..),
    newCarrierRate,

    -- * CarriersCarrier
    CarriersCarrier (..),
    newCarriersCarrier,

    -- * Collection
    Collection (..),
    newCollection,

    -- * CollectionFeaturedProduct
    CollectionFeaturedProduct (..),
    newCollectionFeaturedProduct,

    -- * CollectionStatus
    CollectionStatus (..),
    newCollectionStatus,

    -- * CollectionStatusDestinationStatus
    CollectionStatusDestinationStatus (..),
    newCollectionStatusDestinationStatus,

    -- * CollectionStatusItemLevelIssue
    CollectionStatusItemLevelIssue (..),
    newCollectionStatusItemLevelIssue,

    -- * Css
    Css (..),
    newCss,

    -- * CustomAttribute
    CustomAttribute (..),
    newCustomAttribute,

    -- * CustomerReturnReason
    CustomerReturnReason (..),
    newCustomerReturnReason,

    -- * CutoffTime
    CutoffTime (..),
    newCutoffTime,

    -- * Datafeed
    Datafeed (..),
    newDatafeed,

    -- * DatafeedFetchSchedule
    DatafeedFetchSchedule (..),
    newDatafeedFetchSchedule,

    -- * DatafeedFormat
    DatafeedFormat (..),
    newDatafeedFormat,

    -- * DatafeedStatus
    DatafeedStatus (..),
    newDatafeedStatus,

    -- * DatafeedStatusError
    DatafeedStatusError (..),
    newDatafeedStatusError,

    -- * DatafeedStatusExample
    DatafeedStatusExample (..),
    newDatafeedStatusExample,

    -- * DatafeedTarget
    DatafeedTarget (..),
    newDatafeedTarget,

    -- * DatafeedsCustomBatchRequest
    DatafeedsCustomBatchRequest (..),
    newDatafeedsCustomBatchRequest,

    -- * DatafeedsCustomBatchRequestEntry
    DatafeedsCustomBatchRequestEntry (..),
    newDatafeedsCustomBatchRequestEntry,

    -- * DatafeedsCustomBatchResponse
    DatafeedsCustomBatchResponse (..),
    newDatafeedsCustomBatchResponse,

    -- * DatafeedsCustomBatchResponseEntry
    DatafeedsCustomBatchResponseEntry (..),
    newDatafeedsCustomBatchResponseEntry,

    -- * DatafeedsFetchNowResponse
    DatafeedsFetchNowResponse (..),
    newDatafeedsFetchNowResponse,

    -- * DatafeedsListResponse
    DatafeedsListResponse (..),
    newDatafeedsListResponse,

    -- * DatafeedstatusesCustomBatchRequest
    DatafeedstatusesCustomBatchRequest (..),
    newDatafeedstatusesCustomBatchRequest,

    -- * DatafeedstatusesCustomBatchRequestEntry
    DatafeedstatusesCustomBatchRequestEntry (..),
    newDatafeedstatusesCustomBatchRequestEntry,

    -- * DatafeedstatusesCustomBatchResponse
    DatafeedstatusesCustomBatchResponse (..),
    newDatafeedstatusesCustomBatchResponse,

    -- * DatafeedstatusesCustomBatchResponseEntry
    DatafeedstatusesCustomBatchResponseEntry (..),
    newDatafeedstatusesCustomBatchResponseEntry,

    -- * DatafeedstatusesListResponse
    DatafeedstatusesListResponse (..),
    newDatafeedstatusesListResponse,

    -- * Date
    Date (..),
    newDate,

    -- * DateTime'
    DateTime' (..),
    newDateTime,

    -- * DeliveryTime
    DeliveryTime (..),
    newDeliveryTime,

    -- * ECommercePlatformLinkInfo
    ECommercePlatformLinkInfo (..),
    newECommercePlatformLinkInfo,

    -- * Error'
    Error' (..),
    newError,

    -- * Errors
    Errors (..),
    newErrors,

    -- * FreeListingsProgramStatus
    FreeListingsProgramStatus (..),
    newFreeListingsProgramStatus,

    -- * FreeListingsProgramStatusRegionStatus
    FreeListingsProgramStatusRegionStatus (..),
    newFreeListingsProgramStatusRegionStatus,

    -- * FreeListingsProgramStatusReviewIneligibilityReasonDetails
    FreeListingsProgramStatusReviewIneligibilityReasonDetails (..),
    newFreeListingsProgramStatusReviewIneligibilityReasonDetails,

    -- * GmbAccounts
    GmbAccounts (..),
    newGmbAccounts,

    -- * GmbAccountsGmbAccount
    GmbAccountsGmbAccount (..),
    newGmbAccountsGmbAccount,

    -- * Headers
    Headers (..),
    newHeaders,

    -- * HolidayCutoff
    HolidayCutoff (..),
    newHolidayCutoff,

    -- * HolidaysHoliday
    HolidaysHoliday (..),
    newHolidaysHoliday,

    -- * InapplicabilityDetails
    InapplicabilityDetails (..),
    newInapplicabilityDetails,

    -- * Installment
    Installment (..),
    newInstallment,

    -- * InvoiceSummary
    InvoiceSummary (..),
    newInvoiceSummary,

    -- * InvoiceSummaryAdditionalChargeSummary
    InvoiceSummaryAdditionalChargeSummary (..),
    newInvoiceSummaryAdditionalChargeSummary,

    -- * LabelIds
    LabelIds (..),
    newLabelIds,

    -- * LiaAboutPageSettings
    LiaAboutPageSettings (..),
    newLiaAboutPageSettings,

    -- * LiaCountrySettings
    LiaCountrySettings (..),
    newLiaCountrySettings,

    -- * LiaInventorySettings
    LiaInventorySettings (..),
    newLiaInventorySettings,

    -- * LiaOnDisplayToOrderSettings
    LiaOnDisplayToOrderSettings (..),
    newLiaOnDisplayToOrderSettings,

    -- * LiaPosDataProvider
    LiaPosDataProvider (..),
    newLiaPosDataProvider,

    -- * LiaSettings
    LiaSettings (..),
    newLiaSettings,

    -- * LiasettingsCustomBatchRequest
    LiasettingsCustomBatchRequest (..),
    newLiasettingsCustomBatchRequest,

    -- * LiasettingsCustomBatchRequestEntry
    LiasettingsCustomBatchRequestEntry (..),
    newLiasettingsCustomBatchRequestEntry,

    -- * LiasettingsCustomBatchResponse
    LiasettingsCustomBatchResponse (..),
    newLiasettingsCustomBatchResponse,

    -- * LiasettingsCustomBatchResponseEntry
    LiasettingsCustomBatchResponseEntry (..),
    newLiasettingsCustomBatchResponseEntry,

    -- * LiasettingsGetAccessibleGmbAccountsResponse
    LiasettingsGetAccessibleGmbAccountsResponse (..),
    newLiasettingsGetAccessibleGmbAccountsResponse,

    -- * LiasettingsListPosDataProvidersResponse
    LiasettingsListPosDataProvidersResponse (..),
    newLiasettingsListPosDataProvidersResponse,

    -- * LiasettingsListResponse
    LiasettingsListResponse (..),
    newLiasettingsListResponse,

    -- * LiasettingsRequestGmbAccessResponse
    LiasettingsRequestGmbAccessResponse (..),
    newLiasettingsRequestGmbAccessResponse,

    -- * LiasettingsRequestInventoryVerificationResponse
    LiasettingsRequestInventoryVerificationResponse (..),
    newLiasettingsRequestInventoryVerificationResponse,

    -- * LiasettingsSetInventoryVerificationContactResponse
    LiasettingsSetInventoryVerificationContactResponse (..),
    newLiasettingsSetInventoryVerificationContactResponse,

    -- * LiasettingsSetPosDataProviderResponse
    LiasettingsSetPosDataProviderResponse (..),
    newLiasettingsSetPosDataProviderResponse,

    -- * LinkService
    LinkService (..),
    newLinkService,

    -- * LinkedAccount
    LinkedAccount (..),
    newLinkedAccount,

    -- * ListAccountLabelsResponse
    ListAccountLabelsResponse (..),
    newListAccountLabelsResponse,

    -- * ListAccountReturnCarrierResponse
    ListAccountReturnCarrierResponse (..),
    newListAccountReturnCarrierResponse,

    -- * ListCollectionStatusesResponse
    ListCollectionStatusesResponse (..),
    newListCollectionStatusesResponse,

    -- * ListCollectionsResponse
    ListCollectionsResponse (..),
    newListCollectionsResponse,

    -- * ListCssesResponse
    ListCssesResponse (..),
    newListCssesResponse,

    -- * ListRegionsResponse
    ListRegionsResponse (..),
    newListRegionsResponse,

    -- * ListRepricingProductReportsResponse
    ListRepricingProductReportsResponse (..),
    newListRepricingProductReportsResponse,

    -- * ListRepricingRuleReportsResponse
    ListRepricingRuleReportsResponse (..),
    newListRepricingRuleReportsResponse,

    -- * ListRepricingRulesResponse
    ListRepricingRulesResponse (..),
    newListRepricingRulesResponse,

    -- * ListReturnPolicyOnlineResponse
    ListReturnPolicyOnlineResponse (..),
    newListReturnPolicyOnlineResponse,

    -- * LocalInventory
    LocalInventory (..),
    newLocalInventory,

    -- * LocalinventoryCustomBatchRequest
    LocalinventoryCustomBatchRequest (..),
    newLocalinventoryCustomBatchRequest,

    -- * LocalinventoryCustomBatchRequestEntry
    LocalinventoryCustomBatchRequestEntry (..),
    newLocalinventoryCustomBatchRequestEntry,

    -- * LocalinventoryCustomBatchResponse
    LocalinventoryCustomBatchResponse (..),
    newLocalinventoryCustomBatchResponse,

    -- * LocalinventoryCustomBatchResponseEntry
    LocalinventoryCustomBatchResponseEntry (..),
    newLocalinventoryCustomBatchResponseEntry,

    -- * LocationIdSet
    LocationIdSet (..),
    newLocationIdSet,

    -- * LoyaltyPoints
    LoyaltyPoints (..),
    newLoyaltyPoints,

    -- * MerchantOrderReturn
    MerchantOrderReturn (..),
    newMerchantOrderReturn,

    -- * MerchantOrderReturnItem
    MerchantOrderReturnItem (..),
    newMerchantOrderReturnItem,

    -- * MerchantRejectionReason
    MerchantRejectionReason (..),
    newMerchantRejectionReason,

    -- * Metrics
    Metrics (..),
    newMetrics,

    -- * MinimumOrderValueTable
    MinimumOrderValueTable (..),
    newMinimumOrderValueTable,

    -- * MinimumOrderValueTableStoreCodeSetWithMov
    MinimumOrderValueTableStoreCodeSetWithMov (..),
    newMinimumOrderValueTableStoreCodeSetWithMov,

    -- * MonetaryAmount
    MonetaryAmount (..),
    newMonetaryAmount,

    -- * OnboardBuyOnGoogleProgramRequest
    OnboardBuyOnGoogleProgramRequest (..),
    newOnboardBuyOnGoogleProgramRequest,

    -- * Order
    Order (..),
    newOrder,

    -- * OrderAddress
    OrderAddress (..),
    newOrderAddress,

    -- * OrderCancellation
    OrderCancellation (..),
    newOrderCancellation,

    -- * OrderCustomer
    OrderCustomer (..),
    newOrderCustomer,

    -- * OrderCustomerLoyaltyInfo
    OrderCustomerLoyaltyInfo (..),
    newOrderCustomerLoyaltyInfo,

    -- * OrderCustomerMarketingRightsInfo
    OrderCustomerMarketingRightsInfo (..),
    newOrderCustomerMarketingRightsInfo,

    -- * OrderDeliveryDetails
    OrderDeliveryDetails (..),
    newOrderDeliveryDetails,

    -- * OrderLineItem
    OrderLineItem (..),
    newOrderLineItem,

    -- * OrderLineItemAdjustment
    OrderLineItemAdjustment (..),
    newOrderLineItemAdjustment,

    -- * OrderLineItemProduct
    OrderLineItemProduct (..),
    newOrderLineItemProduct,

    -- * OrderLineItemProductFee
    OrderLineItemProductFee (..),
    newOrderLineItemProductFee,

    -- * OrderLineItemProductVariantAttribute
    OrderLineItemProductVariantAttribute (..),
    newOrderLineItemProductVariantAttribute,

    -- * OrderLineItemReturnInfo
    OrderLineItemReturnInfo (..),
    newOrderLineItemReturnInfo,

    -- * OrderLineItemShippingDetails
    OrderLineItemShippingDetails (..),
    newOrderLineItemShippingDetails,

    -- * OrderLineItemShippingDetailsMethod
    OrderLineItemShippingDetailsMethod (..),
    newOrderLineItemShippingDetailsMethod,

    -- * OrderMerchantProvidedAnnotation
    OrderMerchantProvidedAnnotation (..),
    newOrderMerchantProvidedAnnotation,

    -- * OrderOrderAnnotation
    OrderOrderAnnotation (..),
    newOrderOrderAnnotation,

    -- * OrderPickupDetails
    OrderPickupDetails (..),
    newOrderPickupDetails,

    -- * OrderPickupDetailsCollector
    OrderPickupDetailsCollector (..),
    newOrderPickupDetailsCollector,

    -- * OrderPromotion
    OrderPromotion (..),
    newOrderPromotion,

    -- * OrderPromotionItem
    OrderPromotionItem (..),
    newOrderPromotionItem,

    -- * OrderRefund
    OrderRefund (..),
    newOrderRefund,

    -- * OrderReportDisbursement
    OrderReportDisbursement (..),
    newOrderReportDisbursement,

    -- * OrderReportTransaction
    OrderReportTransaction (..),
    newOrderReportTransaction,

    -- * OrderReturn
    OrderReturn (..),
    newOrderReturn,

    -- * OrderShipment
    OrderShipment (..),
    newOrderShipment,

    -- * OrderShipmentLineItemShipment
    OrderShipmentLineItemShipment (..),
    newOrderShipmentLineItemShipment,

    -- * OrderShipmentScheduledDeliveryDetails
    OrderShipmentScheduledDeliveryDetails (..),
    newOrderShipmentScheduledDeliveryDetails,

    -- * OrderTrackingSignal
    OrderTrackingSignal (..),
    newOrderTrackingSignal,

    -- * OrderTrackingSignalLineItemDetails
    OrderTrackingSignalLineItemDetails (..),
    newOrderTrackingSignalLineItemDetails,

    -- * OrderTrackingSignalShipmentLineItemMapping
    OrderTrackingSignalShipmentLineItemMapping (..),
    newOrderTrackingSignalShipmentLineItemMapping,

    -- * OrderTrackingSignalShippingInfo
    OrderTrackingSignalShippingInfo (..),
    newOrderTrackingSignalShippingInfo,

    -- * OrderinvoicesCreateChargeInvoiceRequest
    OrderinvoicesCreateChargeInvoiceRequest (..),
    newOrderinvoicesCreateChargeInvoiceRequest,

    -- * OrderinvoicesCreateChargeInvoiceResponse
    OrderinvoicesCreateChargeInvoiceResponse (..),
    newOrderinvoicesCreateChargeInvoiceResponse,

    -- * OrderinvoicesCreateRefundInvoiceRequest
    OrderinvoicesCreateRefundInvoiceRequest (..),
    newOrderinvoicesCreateRefundInvoiceRequest,

    -- * OrderinvoicesCreateRefundInvoiceResponse
    OrderinvoicesCreateRefundInvoiceResponse (..),
    newOrderinvoicesCreateRefundInvoiceResponse,

    -- * OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
    OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption (..),
    newOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption,

    -- * OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
    OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption (..),
    newOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption,

    -- * OrderreportsListDisbursementsResponse
    OrderreportsListDisbursementsResponse (..),
    newOrderreportsListDisbursementsResponse,

    -- * OrderreportsListTransactionsResponse
    OrderreportsListTransactionsResponse (..),
    newOrderreportsListTransactionsResponse,

    -- * OrderreturnsAcknowledgeRequest
    OrderreturnsAcknowledgeRequest (..),
    newOrderreturnsAcknowledgeRequest,

    -- * OrderreturnsAcknowledgeResponse
    OrderreturnsAcknowledgeResponse (..),
    newOrderreturnsAcknowledgeResponse,

    -- * OrderreturnsCreateOrderReturnRequest
    OrderreturnsCreateOrderReturnRequest (..),
    newOrderreturnsCreateOrderReturnRequest,

    -- * OrderreturnsCreateOrderReturnResponse
    OrderreturnsCreateOrderReturnResponse (..),
    newOrderreturnsCreateOrderReturnResponse,

    -- * OrderreturnsLineItem
    OrderreturnsLineItem (..),
    newOrderreturnsLineItem,

    -- * OrderreturnsListResponse
    OrderreturnsListResponse (..),
    newOrderreturnsListResponse,

    -- * OrderreturnsPartialRefund
    OrderreturnsPartialRefund (..),
    newOrderreturnsPartialRefund,

    -- * OrderreturnsProcessRequest
    OrderreturnsProcessRequest (..),
    newOrderreturnsProcessRequest,

    -- * OrderreturnsProcessResponse
    OrderreturnsProcessResponse (..),
    newOrderreturnsProcessResponse,

    -- * OrderreturnsRefundOperation
    OrderreturnsRefundOperation (..),
    newOrderreturnsRefundOperation,

    -- * OrderreturnsRejectOperation
    OrderreturnsRejectOperation (..),
    newOrderreturnsRejectOperation,

    -- * OrderreturnsReturnItem
    OrderreturnsReturnItem (..),
    newOrderreturnsReturnItem,

    -- * OrdersAcknowledgeRequest
    OrdersAcknowledgeRequest (..),
    newOrdersAcknowledgeRequest,

    -- * OrdersAcknowledgeResponse
    OrdersAcknowledgeResponse (..),
    newOrdersAcknowledgeResponse,

    -- * OrdersAdvanceTestOrderResponse
    OrdersAdvanceTestOrderResponse (..),
    newOrdersAdvanceTestOrderResponse,

    -- * OrdersCancelLineItemRequest
    OrdersCancelLineItemRequest (..),
    newOrdersCancelLineItemRequest,

    -- * OrdersCancelLineItemResponse
    OrdersCancelLineItemResponse (..),
    newOrdersCancelLineItemResponse,

    -- * OrdersCancelRequest
    OrdersCancelRequest (..),
    newOrdersCancelRequest,

    -- * OrdersCancelResponse
    OrdersCancelResponse (..),
    newOrdersCancelResponse,

    -- * OrdersCancelTestOrderByCustomerRequest
    OrdersCancelTestOrderByCustomerRequest (..),
    newOrdersCancelTestOrderByCustomerRequest,

    -- * OrdersCancelTestOrderByCustomerResponse
    OrdersCancelTestOrderByCustomerResponse (..),
    newOrdersCancelTestOrderByCustomerResponse,

    -- * OrdersCreateTestOrderRequest
    OrdersCreateTestOrderRequest (..),
    newOrdersCreateTestOrderRequest,

    -- * OrdersCreateTestOrderResponse
    OrdersCreateTestOrderResponse (..),
    newOrdersCreateTestOrderResponse,

    -- * OrdersCreateTestReturnRequest
    OrdersCreateTestReturnRequest (..),
    newOrdersCreateTestReturnRequest,

    -- * OrdersCreateTestReturnResponse
    OrdersCreateTestReturnResponse (..),
    newOrdersCreateTestReturnResponse,

    -- * OrdersCustomBatchRequestEntryCreateTestReturnReturnItem
    OrdersCustomBatchRequestEntryCreateTestReturnReturnItem (..),
    newOrdersCustomBatchRequestEntryCreateTestReturnReturnItem,

    -- * OrdersCustomBatchRequestEntryRefundItemItem
    OrdersCustomBatchRequestEntryRefundItemItem (..),
    newOrdersCustomBatchRequestEntryRefundItemItem,

    -- * OrdersCustomBatchRequestEntryRefundItemShipping
    OrdersCustomBatchRequestEntryRefundItemShipping (..),
    newOrdersCustomBatchRequestEntryRefundItemShipping,

    -- * OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo
    OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo (..),
    newOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo,

    -- * OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails
    OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails (..),
    newOrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails,

    -- * OrdersGetByMerchantOrderIdResponse
    OrdersGetByMerchantOrderIdResponse (..),
    newOrdersGetByMerchantOrderIdResponse,

    -- * OrdersGetTestOrderTemplateResponse
    OrdersGetTestOrderTemplateResponse (..),
    newOrdersGetTestOrderTemplateResponse,

    -- * OrdersInStoreRefundLineItemRequest
    OrdersInStoreRefundLineItemRequest (..),
    newOrdersInStoreRefundLineItemRequest,

    -- * OrdersInStoreRefundLineItemResponse
    OrdersInStoreRefundLineItemResponse (..),
    newOrdersInStoreRefundLineItemResponse,

    -- * OrdersListResponse
    OrdersListResponse (..),
    newOrdersListResponse,

    -- * OrdersRefundItemRequest
    OrdersRefundItemRequest (..),
    newOrdersRefundItemRequest,

    -- * OrdersRefundItemResponse
    OrdersRefundItemResponse (..),
    newOrdersRefundItemResponse,

    -- * OrdersRefundOrderRequest
    OrdersRefundOrderRequest (..),
    newOrdersRefundOrderRequest,

    -- * OrdersRefundOrderResponse
    OrdersRefundOrderResponse (..),
    newOrdersRefundOrderResponse,

    -- * OrdersRejectReturnLineItemRequest
    OrdersRejectReturnLineItemRequest (..),
    newOrdersRejectReturnLineItemRequest,

    -- * OrdersRejectReturnLineItemResponse
    OrdersRejectReturnLineItemResponse (..),
    newOrdersRejectReturnLineItemResponse,

    -- * OrdersReturnRefundLineItemRequest
    OrdersReturnRefundLineItemRequest (..),
    newOrdersReturnRefundLineItemRequest,

    -- * OrdersReturnRefundLineItemResponse
    OrdersReturnRefundLineItemResponse (..),
    newOrdersReturnRefundLineItemResponse,

    -- * OrdersSetLineItemMetadataRequest
    OrdersSetLineItemMetadataRequest (..),
    newOrdersSetLineItemMetadataRequest,

    -- * OrdersSetLineItemMetadataResponse
    OrdersSetLineItemMetadataResponse (..),
    newOrdersSetLineItemMetadataResponse,

    -- * OrdersShipLineItemsRequest
    OrdersShipLineItemsRequest (..),
    newOrdersShipLineItemsRequest,

    -- * OrdersShipLineItemsResponse
    OrdersShipLineItemsResponse (..),
    newOrdersShipLineItemsResponse,

    -- * OrdersUpdateLineItemShippingDetailsRequest
    OrdersUpdateLineItemShippingDetailsRequest (..),
    newOrdersUpdateLineItemShippingDetailsRequest,

    -- * OrdersUpdateLineItemShippingDetailsResponse
    OrdersUpdateLineItemShippingDetailsResponse (..),
    newOrdersUpdateLineItemShippingDetailsResponse,

    -- * OrdersUpdateMerchantOrderIdRequest
    OrdersUpdateMerchantOrderIdRequest (..),
    newOrdersUpdateMerchantOrderIdRequest,

    -- * OrdersUpdateMerchantOrderIdResponse
    OrdersUpdateMerchantOrderIdResponse (..),
    newOrdersUpdateMerchantOrderIdResponse,

    -- * OrdersUpdateShipmentRequest
    OrdersUpdateShipmentRequest (..),
    newOrdersUpdateShipmentRequest,

    -- * OrdersUpdateShipmentResponse
    OrdersUpdateShipmentResponse (..),
    newOrdersUpdateShipmentResponse,

    -- * PauseBuyOnGoogleProgramRequest
    PauseBuyOnGoogleProgramRequest (..),
    newPauseBuyOnGoogleProgramRequest,

    -- * PaymentServiceProviderLinkInfo
    PaymentServiceProviderLinkInfo (..),
    newPaymentServiceProviderLinkInfo,

    -- * PickupCarrierService
    PickupCarrierService (..),
    newPickupCarrierService,

    -- * PickupServicesPickupService
    PickupServicesPickupService (..),
    newPickupServicesPickupService,

    -- * PosCustomBatchRequest
    PosCustomBatchRequest (..),
    newPosCustomBatchRequest,

    -- * PosCustomBatchRequestEntry
    PosCustomBatchRequestEntry (..),
    newPosCustomBatchRequestEntry,

    -- * PosCustomBatchResponse
    PosCustomBatchResponse (..),
    newPosCustomBatchResponse,

    -- * PosCustomBatchResponseEntry
    PosCustomBatchResponseEntry (..),
    newPosCustomBatchResponseEntry,

    -- * PosDataProviders
    PosDataProviders (..),
    newPosDataProviders,

    -- * PosDataProvidersPosDataProvider
    PosDataProvidersPosDataProvider (..),
    newPosDataProvidersPosDataProvider,

    -- * PosInventory
    PosInventory (..),
    newPosInventory,

    -- * PosInventoryRequest
    PosInventoryRequest (..),
    newPosInventoryRequest,

    -- * PosInventoryResponse
    PosInventoryResponse (..),
    newPosInventoryResponse,

    -- * PosListResponse
    PosListResponse (..),
    newPosListResponse,

    -- * PosSale
    PosSale (..),
    newPosSale,

    -- * PosSaleRequest
    PosSaleRequest (..),
    newPosSaleRequest,

    -- * PosSaleResponse
    PosSaleResponse (..),
    newPosSaleResponse,

    -- * PosStore
    PosStore (..),
    newPosStore,

    -- * PostalCodeGroup
    PostalCodeGroup (..),
    newPostalCodeGroup,

    -- * PostalCodeRange
    PostalCodeRange (..),
    newPostalCodeRange,

    -- * Price
    Price (..),
    newPrice,

    -- * PriceAmount
    PriceAmount (..),
    newPriceAmount,

    -- * Product
    Product (..),
    newProduct,

    -- * ProductAmount
    ProductAmount (..),
    newProductAmount,

    -- * ProductDimension
    ProductDimension (..),
    newProductDimension,

    -- * ProductProductDetail
    ProductProductDetail (..),
    newProductProductDetail,

    -- * ProductShipping
    ProductShipping (..),
    newProductShipping,

    -- * ProductShippingDimension
    ProductShippingDimension (..),
    newProductShippingDimension,

    -- * ProductShippingWeight
    ProductShippingWeight (..),
    newProductShippingWeight,

    -- * ProductStatus
    ProductStatus (..),
    newProductStatus,

    -- * ProductStatusDestinationStatus
    ProductStatusDestinationStatus (..),
    newProductStatusDestinationStatus,

    -- * ProductStatusItemLevelIssue
    ProductStatusItemLevelIssue (..),
    newProductStatusItemLevelIssue,

    -- * ProductSubscriptionCost
    ProductSubscriptionCost (..),
    newProductSubscriptionCost,

    -- * ProductTax
    ProductTax (..),
    newProductTax,

    -- * ProductUnitPricingBaseMeasure
    ProductUnitPricingBaseMeasure (..),
    newProductUnitPricingBaseMeasure,

    -- * ProductUnitPricingMeasure
    ProductUnitPricingMeasure (..),
    newProductUnitPricingMeasure,

    -- * ProductWeight
    ProductWeight (..),
    newProductWeight,

    -- * ProductsCustomBatchRequest
    ProductsCustomBatchRequest (..),
    newProductsCustomBatchRequest,

    -- * ProductsCustomBatchRequestEntry
    ProductsCustomBatchRequestEntry (..),
    newProductsCustomBatchRequestEntry,

    -- * ProductsCustomBatchResponse
    ProductsCustomBatchResponse (..),
    newProductsCustomBatchResponse,

    -- * ProductsCustomBatchResponseEntry
    ProductsCustomBatchResponseEntry (..),
    newProductsCustomBatchResponseEntry,

    -- * ProductsListResponse
    ProductsListResponse (..),
    newProductsListResponse,

    -- * ProductstatusesCustomBatchRequest
    ProductstatusesCustomBatchRequest (..),
    newProductstatusesCustomBatchRequest,

    -- * ProductstatusesCustomBatchRequestEntry
    ProductstatusesCustomBatchRequestEntry (..),
    newProductstatusesCustomBatchRequestEntry,

    -- * ProductstatusesCustomBatchResponse
    ProductstatusesCustomBatchResponse (..),
    newProductstatusesCustomBatchResponse,

    -- * ProductstatusesCustomBatchResponseEntry
    ProductstatusesCustomBatchResponseEntry (..),
    newProductstatusesCustomBatchResponseEntry,

    -- * ProductstatusesListResponse
    ProductstatusesListResponse (..),
    newProductstatusesListResponse,

    -- * Promotion
    Promotion (..),
    newPromotion,

    -- * PubsubNotificationSettings
    PubsubNotificationSettings (..),
    newPubsubNotificationSettings,

    -- * RateGroup
    RateGroup (..),
    newRateGroup,

    -- * RefundReason
    RefundReason (..),
    newRefundReason,

    -- * Region
    Region (..),
    newRegion,

    -- * RegionGeoTargetArea
    RegionGeoTargetArea (..),
    newRegionGeoTargetArea,

    -- * RegionPostalCodeArea
    RegionPostalCodeArea (..),
    newRegionPostalCodeArea,

    -- * RegionPostalCodeAreaPostalCodeRange
    RegionPostalCodeAreaPostalCodeRange (..),
    newRegionPostalCodeAreaPostalCodeRange,

    -- * RegionalInventory
    RegionalInventory (..),
    newRegionalInventory,

    -- * RegionalinventoryCustomBatchRequest
    RegionalinventoryCustomBatchRequest (..),
    newRegionalinventoryCustomBatchRequest,

    -- * RegionalinventoryCustomBatchRequestEntry
    RegionalinventoryCustomBatchRequestEntry (..),
    newRegionalinventoryCustomBatchRequestEntry,

    -- * RegionalinventoryCustomBatchResponse
    RegionalinventoryCustomBatchResponse (..),
    newRegionalinventoryCustomBatchResponse,

    -- * RegionalinventoryCustomBatchResponseEntry
    RegionalinventoryCustomBatchResponseEntry (..),
    newRegionalinventoryCustomBatchResponseEntry,

    -- * ReportRow
    ReportRow (..),
    newReportRow,

    -- * RepricingProductReport
    RepricingProductReport (..),
    newRepricingProductReport,

    -- * RepricingProductReportBuyboxWinningProductStats
    RepricingProductReportBuyboxWinningProductStats (..),
    newRepricingProductReportBuyboxWinningProductStats,

    -- * RepricingRule
    RepricingRule (..),
    newRepricingRule,

    -- * RepricingRuleCostOfGoodsSaleRule
    RepricingRuleCostOfGoodsSaleRule (..),
    newRepricingRuleCostOfGoodsSaleRule,

    -- * RepricingRuleEffectiveTime
    RepricingRuleEffectiveTime (..),
    newRepricingRuleEffectiveTime,

    -- * RepricingRuleEffectiveTimeFixedTimePeriod
    RepricingRuleEffectiveTimeFixedTimePeriod (..),
    newRepricingRuleEffectiveTimeFixedTimePeriod,

    -- * RepricingRuleEligibleOfferMatcher
    RepricingRuleEligibleOfferMatcher (..),
    newRepricingRuleEligibleOfferMatcher,

    -- * RepricingRuleEligibleOfferMatcherStringMatcher
    RepricingRuleEligibleOfferMatcherStringMatcher (..),
    newRepricingRuleEligibleOfferMatcherStringMatcher,

    -- * RepricingRuleReport
    RepricingRuleReport (..),
    newRepricingRuleReport,

    -- * RepricingRuleReportBuyboxWinningRuleStats
    RepricingRuleReportBuyboxWinningRuleStats (..),
    newRepricingRuleReportBuyboxWinningRuleStats,

    -- * RepricingRuleRestriction
    RepricingRuleRestriction (..),
    newRepricingRuleRestriction,

    -- * RepricingRuleRestrictionBoundary
    RepricingRuleRestrictionBoundary (..),
    newRepricingRuleRestrictionBoundary,

    -- * RepricingRuleStatsBasedRule
    RepricingRuleStatsBasedRule (..),
    newRepricingRuleStatsBasedRule,

    -- * RequestPhoneVerificationRequest
    RequestPhoneVerificationRequest (..),
    newRequestPhoneVerificationRequest,

    -- * RequestPhoneVerificationResponse
    RequestPhoneVerificationResponse (..),
    newRequestPhoneVerificationResponse,

    -- * RequestReviewBuyOnGoogleProgramRequest
    RequestReviewBuyOnGoogleProgramRequest (..),
    newRequestReviewBuyOnGoogleProgramRequest,

    -- * RequestReviewFreeListingsRequest
    RequestReviewFreeListingsRequest (..),
    newRequestReviewFreeListingsRequest,

    -- * RequestReviewShoppingAdsRequest
    RequestReviewShoppingAdsRequest (..),
    newRequestReviewShoppingAdsRequest,

    -- * ReturnAddress
    ReturnAddress (..),
    newReturnAddress,

    -- * ReturnAddressAddress
    ReturnAddressAddress (..),
    newReturnAddressAddress,

    -- * ReturnPolicy
    ReturnPolicy (..),
    newReturnPolicy,

    -- * ReturnPolicyOnline
    ReturnPolicyOnline (..),
    newReturnPolicyOnline,

    -- * ReturnPolicyOnlinePolicy
    ReturnPolicyOnlinePolicy (..),
    newReturnPolicyOnlinePolicy,

    -- * ReturnPolicyOnlineRestockingFee
    ReturnPolicyOnlineRestockingFee (..),
    newReturnPolicyOnlineRestockingFee,

    -- * ReturnPolicyOnlineReturnReasonCategoryInfo
    ReturnPolicyOnlineReturnReasonCategoryInfo (..),
    newReturnPolicyOnlineReturnReasonCategoryInfo,

    -- * ReturnPolicyOnlineReturnShippingFee
    ReturnPolicyOnlineReturnShippingFee (..),
    newReturnPolicyOnlineReturnShippingFee,

    -- * ReturnPolicyPolicy
    ReturnPolicyPolicy (..),
    newReturnPolicyPolicy,

    -- * ReturnPolicySeasonalOverride
    ReturnPolicySeasonalOverride (..),
    newReturnPolicySeasonalOverride,

    -- * ReturnPricingInfo
    ReturnPricingInfo (..),
    newReturnPricingInfo,

    -- * ReturnShipment
    ReturnShipment (..),
    newReturnShipment,

    -- * ReturnShippingLabel
    ReturnShippingLabel (..),
    newReturnShippingLabel,

    -- * ReturnaddressCustomBatchRequest
    ReturnaddressCustomBatchRequest (..),
    newReturnaddressCustomBatchRequest,

    -- * ReturnaddressCustomBatchRequestEntry
    ReturnaddressCustomBatchRequestEntry (..),
    newReturnaddressCustomBatchRequestEntry,

    -- * ReturnaddressCustomBatchResponse
    ReturnaddressCustomBatchResponse (..),
    newReturnaddressCustomBatchResponse,

    -- * ReturnaddressCustomBatchResponseEntry
    ReturnaddressCustomBatchResponseEntry (..),
    newReturnaddressCustomBatchResponseEntry,

    -- * ReturnaddressListResponse
    ReturnaddressListResponse (..),
    newReturnaddressListResponse,

    -- * ReturnpolicyCustomBatchRequest
    ReturnpolicyCustomBatchRequest (..),
    newReturnpolicyCustomBatchRequest,

    -- * ReturnpolicyCustomBatchRequestEntry
    ReturnpolicyCustomBatchRequestEntry (..),
    newReturnpolicyCustomBatchRequestEntry,

    -- * ReturnpolicyCustomBatchResponse
    ReturnpolicyCustomBatchResponse (..),
    newReturnpolicyCustomBatchResponse,

    -- * ReturnpolicyCustomBatchResponseEntry
    ReturnpolicyCustomBatchResponseEntry (..),
    newReturnpolicyCustomBatchResponseEntry,

    -- * ReturnpolicyListResponse
    ReturnpolicyListResponse (..),
    newReturnpolicyListResponse,

    -- * Row
    Row (..),
    newRow,

    -- * SearchRequest
    SearchRequest (..),
    newSearchRequest,

    -- * SearchResponse
    SearchResponse (..),
    newSearchResponse,

    -- * Segments
    Segments (..),
    newSegments,

    -- * Service
    Service (..),
    newService,

    -- * SettlementReport
    SettlementReport (..),
    newSettlementReport,

    -- * SettlementTransaction
    SettlementTransaction (..),
    newSettlementTransaction,

    -- * SettlementTransactionAmount
    SettlementTransactionAmount (..),
    newSettlementTransactionAmount,

    -- * SettlementTransactionAmountCommission
    SettlementTransactionAmountCommission (..),
    newSettlementTransactionAmountCommission,

    -- * SettlementTransactionIdentifiers
    SettlementTransactionIdentifiers (..),
    newSettlementTransactionIdentifiers,

    -- * SettlementTransactionTransaction
    SettlementTransactionTransaction (..),
    newSettlementTransactionTransaction,

    -- * SettlementreportsListResponse
    SettlementreportsListResponse (..),
    newSettlementreportsListResponse,

    -- * SettlementtransactionsListResponse
    SettlementtransactionsListResponse (..),
    newSettlementtransactionsListResponse,

    -- * ShipmentInvoice
    ShipmentInvoice (..),
    newShipmentInvoice,

    -- * ShipmentInvoiceLineItemInvoice
    ShipmentInvoiceLineItemInvoice (..),
    newShipmentInvoiceLineItemInvoice,

    -- * ShipmentTrackingInfo
    ShipmentTrackingInfo (..),
    newShipmentTrackingInfo,

    -- * ShippingSettings
    ShippingSettings (..),
    newShippingSettings,

    -- * ShippingsettingsCustomBatchRequest
    ShippingsettingsCustomBatchRequest (..),
    newShippingsettingsCustomBatchRequest,

    -- * ShippingsettingsCustomBatchRequestEntry
    ShippingsettingsCustomBatchRequestEntry (..),
    newShippingsettingsCustomBatchRequestEntry,

    -- * ShippingsettingsCustomBatchResponse
    ShippingsettingsCustomBatchResponse (..),
    newShippingsettingsCustomBatchResponse,

    -- * ShippingsettingsCustomBatchResponseEntry
    ShippingsettingsCustomBatchResponseEntry (..),
    newShippingsettingsCustomBatchResponseEntry,

    -- * ShippingsettingsGetSupportedCarriersResponse
    ShippingsettingsGetSupportedCarriersResponse (..),
    newShippingsettingsGetSupportedCarriersResponse,

    -- * ShippingsettingsGetSupportedHolidaysResponse
    ShippingsettingsGetSupportedHolidaysResponse (..),
    newShippingsettingsGetSupportedHolidaysResponse,

    -- * ShippingsettingsGetSupportedPickupServicesResponse
    ShippingsettingsGetSupportedPickupServicesResponse (..),
    newShippingsettingsGetSupportedPickupServicesResponse,

    -- * ShippingsettingsListResponse
    ShippingsettingsListResponse (..),
    newShippingsettingsListResponse,

    -- * ShoppingAdsProgramStatus
    ShoppingAdsProgramStatus (..),
    newShoppingAdsProgramStatus,

    -- * ShoppingAdsProgramStatusRegionStatus
    ShoppingAdsProgramStatusRegionStatus (..),
    newShoppingAdsProgramStatusRegionStatus,

    -- * ShoppingAdsProgramStatusReviewIneligibilityReasonDetails
    ShoppingAdsProgramStatusReviewIneligibilityReasonDetails (..),
    newShoppingAdsProgramStatusReviewIneligibilityReasonDetails,

    -- * Table
    Table (..),
    newTable,

    -- * TestOrder
    TestOrder (..),
    newTestOrder,

    -- * TestOrderAddress
    TestOrderAddress (..),
    newTestOrderAddress,

    -- * TestOrderDeliveryDetails
    TestOrderDeliveryDetails (..),
    newTestOrderDeliveryDetails,

    -- * TestOrderLineItem
    TestOrderLineItem (..),
    newTestOrderLineItem,

    -- * TestOrderLineItemProduct
    TestOrderLineItemProduct (..),
    newTestOrderLineItemProduct,

    -- * TestOrderPickupDetails
    TestOrderPickupDetails (..),
    newTestOrderPickupDetails,

    -- * TestOrderPickupDetailsPickupPerson
    TestOrderPickupDetailsPickupPerson (..),
    newTestOrderPickupDetailsPickupPerson,

    -- * TimePeriod
    TimePeriod (..),
    newTimePeriod,

    -- * TimeZone
    TimeZone (..),
    newTimeZone,

    -- * TransitTable
    TransitTable (..),
    newTransitTable,

    -- * TransitTableTransitTimeRow
    TransitTableTransitTimeRow (..),
    newTransitTableTransitTimeRow,

    -- * TransitTableTransitTimeRowTransitTimeValue
    TransitTableTransitTimeRowTransitTimeValue (..),
    newTransitTableTransitTimeRowTransitTimeValue,

    -- * UnitInvoice
    UnitInvoice (..),
    newUnitInvoice,

    -- * UnitInvoiceAdditionalCharge
    UnitInvoiceAdditionalCharge (..),
    newUnitInvoiceAdditionalCharge,

    -- * UnitInvoiceTaxLine
    UnitInvoiceTaxLine (..),
    newUnitInvoiceTaxLine,

    -- * Value
    Value (..),
    newValue,

    -- * VerifyPhoneNumberRequest
    VerifyPhoneNumberRequest (..),
    newVerifyPhoneNumberRequest,

    -- * VerifyPhoneNumberResponse
    VerifyPhoneNumberResponse (..),
    newVerifyPhoneNumberResponse,

    -- * Warehouse
    Warehouse (..),
    newWarehouse,

    -- * WarehouseBasedDeliveryTime
    WarehouseBasedDeliveryTime (..),
    newWarehouseBasedDeliveryTime,

    -- * WarehouseCutoffTime
    WarehouseCutoffTime (..),
    newWarehouseCutoffTime,

    -- * Weight
    Weight (..),
    newWeight,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Internal.Sum

-- | Account data. After the creation of a new account it may take a few minutes before it\'s fully operational. The methods delete, insert, and update require the admin role.
--
-- /See:/ 'newAccount' smart constructor.
data Account = Account
  { -- | Output only. How the account is managed. Acceptable values are: - \"@manual@\" - \"@automatic@\"
    accountManagement :: (Core.Maybe Core.Text),
    -- | Linked Ads accounts that are active or pending approval. To create a new link request, add a new link with status @active@ to the list. It will remain in a @pending@ state until approved or rejected either in the Ads interface or through the AdWords API. To delete an active link, or to cancel a link request, remove it from the list.
    adsLinks :: (Core.Maybe [AccountAdsLink]),
    -- | Indicates whether the merchant sells adult content.
    adultContent :: (Core.Maybe Core.Bool),
    -- | The automatic improvements of the account can be used to automatically update items, improve images and shipping. Each section inside AutomaticImprovements is updated separately.
    automaticImprovements :: (Core.Maybe AccountAutomaticImprovements),
    -- | Automatically created label IDs that are assigned to the account by CSS Center.
    automaticLabelIds :: (Core.Maybe [Core.Word64]),
    -- | The business information of the account.
    businessInformation :: (Core.Maybe AccountBusinessInformation),
    -- | ID of CSS the account belongs to.
    cssId :: (Core.Maybe Core.Word64),
    -- | The Business Profile which is linked or in the process of being linked with the Merchant Center account.
    googleMyBusinessLink :: (Core.Maybe AccountGoogleMyBusinessLink),
    -- | Required for update. Merchant Center account ID.
    id :: (Core.Maybe Core.Word64),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#account@\".
    kind :: (Core.Maybe Core.Text),
    -- | Manually created label IDs that are assigned to the account by CSS.
    labelIds :: (Core.Maybe [Core.Word64]),
    -- | Required. Display name for the account.
    name :: (Core.Maybe Core.Text),
    -- | Client-specific, locally-unique, internal ID for the child account.
    sellerId :: (Core.Maybe Core.Text),
    -- | Users with access to the account. Every account (except for subaccounts) must have at least one admin user.
    users :: (Core.Maybe [AccountUser]),
    -- | The merchant\'s website.
    websiteUrl :: (Core.Maybe Core.Text),
    -- | Linked YouTube channels that are active or pending approval. To create a new link request, add a new link with status @active@ to the list. It will remain in a @pending@ state until approved or rejected in the YT Creator Studio interface. To delete an active link, or to cancel a link request, remove it from the list.
    youtubeChannelLinks :: (Core.Maybe [AccountYouTubeChannelLink])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Account' with the minimum fields required to make a request.
newAccount ::
  Account
newAccount =
  Account
    { accountManagement = Core.Nothing,
      adsLinks = Core.Nothing,
      adultContent = Core.Nothing,
      automaticImprovements = Core.Nothing,
      automaticLabelIds = Core.Nothing,
      businessInformation = Core.Nothing,
      cssId = Core.Nothing,
      googleMyBusinessLink = Core.Nothing,
      id = Core.Nothing,
      kind = Core.Nothing,
      labelIds = Core.Nothing,
      name = Core.Nothing,
      sellerId = Core.Nothing,
      users = Core.Nothing,
      websiteUrl = Core.Nothing,
      youtubeChannelLinks = Core.Nothing
    }

instance Core.FromJSON Account where
  parseJSON =
    Core.withObject
      "Account"
      ( \o ->
          Account
            Core.<$> (o Core..:? "accountManagement")
            Core.<*> (o Core..:? "adsLinks" Core..!= Core.mempty)
            Core.<*> (o Core..:? "adultContent")
            Core.<*> (o Core..:? "automaticImprovements")
            Core.<*> (o Core..:? "automaticLabelIds" Core..!= Core.mempty)
            Core.<*> (o Core..:? "businessInformation")
            Core.<*> (o Core..:? "cssId")
            Core.<*> (o Core..:? "googleMyBusinessLink")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "labelIds" Core..!= Core.mempty)
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "sellerId")
            Core.<*> (o Core..:? "users" Core..!= Core.mempty)
            Core.<*> (o Core..:? "websiteUrl")
            Core.<*> ( o Core..:? "youtubeChannelLinks"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON Account where
  toJSON Account {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountManagement" Core..=)
              Core.<$> accountManagement,
            ("adsLinks" Core..=) Core.<$> adsLinks,
            ("adultContent" Core..=) Core.<$> adultContent,
            ("automaticImprovements" Core..=)
              Core.<$> automaticImprovements,
            ("automaticLabelIds" Core..=)
              Core.<$> automaticLabelIds,
            ("businessInformation" Core..=)
              Core.<$> businessInformation,
            ("cssId" Core..=) Core.. Core.AsText Core.<$> cssId,
            ("googleMyBusinessLink" Core..=)
              Core.<$> googleMyBusinessLink,
            ("id" Core..=) Core.. Core.AsText Core.<$> id,
            ("kind" Core..=) Core.<$> kind,
            ("labelIds" Core..=) Core.<$> labelIds,
            ("name" Core..=) Core.<$> name,
            ("sellerId" Core..=) Core.<$> sellerId,
            ("users" Core..=) Core.<$> users,
            ("websiteUrl" Core..=) Core.<$> websiteUrl,
            ("youtubeChannelLinks" Core..=)
              Core.<$> youtubeChannelLinks
          ]
      )

--
-- /See:/ 'newAccountAddress' smart constructor.
data AccountAddress = AccountAddress
  { -- | CLDR country code (for example, \"US\"). All MCA sub-accounts inherit the country of their parent MCA by default, however the country can be updated for individual sub-accounts.
    country :: (Core.Maybe Core.Text),
    -- | City, town or commune. May also include dependent localities or sublocalities (for example, neighborhoods or suburbs).
    locality :: (Core.Maybe Core.Text),
    -- | Postal code or ZIP (for example, \"94043\").
    postalCode :: (Core.Maybe Core.Text),
    -- | Top-level administrative subdivision of the country. For example, a state like California (\"CA\") or a province like Quebec (\"QC\").
    region :: (Core.Maybe Core.Text),
    -- | Street-level part of the address.
    streetAddress :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountAddress' with the minimum fields required to make a request.
newAccountAddress ::
  AccountAddress
newAccountAddress =
  AccountAddress
    { country = Core.Nothing,
      locality = Core.Nothing,
      postalCode = Core.Nothing,
      region = Core.Nothing,
      streetAddress = Core.Nothing
    }

instance Core.FromJSON AccountAddress where
  parseJSON =
    Core.withObject
      "AccountAddress"
      ( \o ->
          AccountAddress
            Core.<$> (o Core..:? "country")
            Core.<*> (o Core..:? "locality")
            Core.<*> (o Core..:? "postalCode")
            Core.<*> (o Core..:? "region")
            Core.<*> (o Core..:? "streetAddress")
      )

instance Core.ToJSON AccountAddress where
  toJSON AccountAddress {..} =
    Core.object
      ( Core.catMaybes
          [ ("country" Core..=) Core.<$> country,
            ("locality" Core..=) Core.<$> locality,
            ("postalCode" Core..=) Core.<$> postalCode,
            ("region" Core..=) Core.<$> region,
            ("streetAddress" Core..=) Core.<$> streetAddress
          ]
      )

--
-- /See:/ 'newAccountAdsLink' smart constructor.
data AccountAdsLink = AccountAdsLink
  { -- | Customer ID of the Ads account.
    adsId :: (Core.Maybe Core.Word64),
    -- | Status of the link between this Merchant Center account and the Ads account. Upon retrieval, it represents the actual status of the link and can be either @active@ if it was approved in Google Ads or @pending@ if it\'s pending approval. Upon insertion, it represents the /intended/ status of the link. Re-uploading a link with status @active@ when it\'s still pending or with status @pending@ when it\'s already active will have no effect: the status will remain unchanged. Re-uploading a link with deprecated status @inactive@ is equivalent to not submitting the link at all and will delete the link if it was active or cancel the link request if it was pending. Acceptable values are: - \"@active@\" - \"@pending@\"
    status :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountAdsLink' with the minimum fields required to make a request.
newAccountAdsLink ::
  AccountAdsLink
newAccountAdsLink = AccountAdsLink {adsId = Core.Nothing, status = Core.Nothing}

instance Core.FromJSON AccountAdsLink where
  parseJSON =
    Core.withObject
      "AccountAdsLink"
      ( \o ->
          AccountAdsLink
            Core.<$> (o Core..:? "adsId") Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON AccountAdsLink where
  toJSON AccountAdsLink {..} =
    Core.object
      ( Core.catMaybes
          [ ("adsId" Core..=) Core.. Core.AsText Core.<$> adsId,
            ("status" Core..=) Core.<$> status
          ]
      )

-- | The automatic improvements of the account can be used to automatically update items, improve images and shipping.
--
-- /See:/ 'newAccountAutomaticImprovements' smart constructor.
data AccountAutomaticImprovements = AccountAutomaticImprovements
  { -- | This improvement will attempt to automatically correct submitted images if they don\'t meet the <https://support.google.com/merchants/answer/6324350 image requirements>, for example, removing overlays. If successful, the image will be replaced and approved. This improvement is only applied to images of disapproved offers. For more information see: <https://support.google.com/merchants/answer/9242973 Automatic image improvements> This field is only updated (cleared) if provided.
    imageImprovements :: (Core.Maybe AccountImageImprovements),
    -- | Turning on <https://support.google.com/merchants/answer/3246284 item updates> allows Google to automatically update items for you. When item updates are on, Google uses the structured data markup on the website and advanced data extractors to update the price and availability of the items. When the item updates are off, items with mismatched data aren\'t shown. This field is only updated (cleared) if provided.
    itemUpdates :: (Core.Maybe AccountItemUpdates),
    -- | Not available for MCAs <https://support.google.com/merchants/answer/188487 accounts>. By turning on <https://support.google.com/merchants/answer/10027038 automatic shipping improvements>, you are allowing Google to improve the accuracy of your delivery times shown to shoppers using Google. More accurate delivery times, especially when faster, typically lead to better conversion rates. Google will improve your estimated delivery times based on various factors: - Delivery address of an order - Current handling time and shipping time settings - Estimated weekdays or business days - Parcel tracking data This field is only updated (cleared) if provided.
    shippingImprovements :: (Core.Maybe AccountShippingImprovements)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountAutomaticImprovements' with the minimum fields required to make a request.
newAccountAutomaticImprovements ::
  AccountAutomaticImprovements
newAccountAutomaticImprovements =
  AccountAutomaticImprovements
    { imageImprovements = Core.Nothing,
      itemUpdates = Core.Nothing,
      shippingImprovements = Core.Nothing
    }

instance Core.FromJSON AccountAutomaticImprovements where
  parseJSON =
    Core.withObject
      "AccountAutomaticImprovements"
      ( \o ->
          AccountAutomaticImprovements
            Core.<$> (o Core..:? "imageImprovements")
            Core.<*> (o Core..:? "itemUpdates")
            Core.<*> (o Core..:? "shippingImprovements")
      )

instance Core.ToJSON AccountAutomaticImprovements where
  toJSON AccountAutomaticImprovements {..} =
    Core.object
      ( Core.catMaybes
          [ ("imageImprovements" Core..=)
              Core.<$> imageImprovements,
            ("itemUpdates" Core..=) Core.<$> itemUpdates,
            ("shippingImprovements" Core..=)
              Core.<$> shippingImprovements
          ]
      )

--
-- /See:/ 'newAccountBusinessInformation' smart constructor.
data AccountBusinessInformation = AccountBusinessInformation
  { -- | The address of the business.
    address :: (Core.Maybe AccountAddress),
    -- | The customer service information of the business.
    customerService :: (Core.Maybe AccountCustomerService),
    -- | The 10-digit <https://support.google.com/merchants/answer/9037766 Korean business registration number> separated with dashes in the format: XXX-XX-XXXXX. This field will only be updated if explicitly set.
    koreanBusinessRegistrationNumber :: (Core.Maybe Core.Text),
    -- | The phone number of the business. This can only be updated if a verified phone number is not already set. To replace a verified phone number use the @Accounts.requestphoneverification@ and @Accounts.verifyphonenumber@.
    phoneNumber :: (Core.Maybe Core.Text),
    -- | Verification status of the phone number of the business. This status is read only and can be updated only by successful phone verification. Acceptable values are: - \"@verified@\" - \"@unverified@\"
    phoneVerificationStatus :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountBusinessInformation' with the minimum fields required to make a request.
newAccountBusinessInformation ::
  AccountBusinessInformation
newAccountBusinessInformation =
  AccountBusinessInformation
    { address = Core.Nothing,
      customerService = Core.Nothing,
      koreanBusinessRegistrationNumber = Core.Nothing,
      phoneNumber = Core.Nothing,
      phoneVerificationStatus = Core.Nothing
    }

instance Core.FromJSON AccountBusinessInformation where
  parseJSON =
    Core.withObject
      "AccountBusinessInformation"
      ( \o ->
          AccountBusinessInformation
            Core.<$> (o Core..:? "address")
            Core.<*> (o Core..:? "customerService")
            Core.<*> (o Core..:? "koreanBusinessRegistrationNumber")
            Core.<*> (o Core..:? "phoneNumber")
            Core.<*> (o Core..:? "phoneVerificationStatus")
      )

instance Core.ToJSON AccountBusinessInformation where
  toJSON AccountBusinessInformation {..} =
    Core.object
      ( Core.catMaybes
          [ ("address" Core..=) Core.<$> address,
            ("customerService" Core..=) Core.<$> customerService,
            ("koreanBusinessRegistrationNumber" Core..=)
              Core.<$> koreanBusinessRegistrationNumber,
            ("phoneNumber" Core..=) Core.<$> phoneNumber,
            ("phoneVerificationStatus" Core..=)
              Core.<$> phoneVerificationStatus
          ]
      )

-- | Credentials allowing Google to call a partner\'s API on behalf of a merchant.
--
-- /See:/ 'newAccountCredentials' smart constructor.
data AccountCredentials = AccountCredentials
  { -- | An OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The amount of time, in seconds, after which the access token is no longer valid.
    expiresIn :: (Core.Maybe Core.Int64),
    -- | Indicates to Google how Google should use these OAuth tokens.
    purpose :: (Core.Maybe AccountCredentials_Purpose)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountCredentials' with the minimum fields required to make a request.
newAccountCredentials ::
  AccountCredentials
newAccountCredentials =
  AccountCredentials
    { accessToken = Core.Nothing,
      expiresIn = Core.Nothing,
      purpose = Core.Nothing
    }

instance Core.FromJSON AccountCredentials where
  parseJSON =
    Core.withObject
      "AccountCredentials"
      ( \o ->
          AccountCredentials
            Core.<$> (o Core..:? "accessToken")
            Core.<*> (o Core..:? "expiresIn")
            Core.<*> (o Core..:? "purpose")
      )

instance Core.ToJSON AccountCredentials where
  toJSON AccountCredentials {..} =
    Core.object
      ( Core.catMaybes
          [ ("accessToken" Core..=) Core.<$> accessToken,
            ("expiresIn" Core..=) Core.. Core.AsText
              Core.<$> expiresIn,
            ("purpose" Core..=) Core.<$> purpose
          ]
      )

--
-- /See:/ 'newAccountCustomerService' smart constructor.
data AccountCustomerService = AccountCustomerService
  { -- | Customer service email.
    email :: (Core.Maybe Core.Text),
    -- | Customer service phone number.
    phoneNumber :: (Core.Maybe Core.Text),
    -- | Customer service URL.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountCustomerService' with the minimum fields required to make a request.
newAccountCustomerService ::
  AccountCustomerService
newAccountCustomerService =
  AccountCustomerService
    { email = Core.Nothing,
      phoneNumber = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON AccountCustomerService where
  parseJSON =
    Core.withObject
      "AccountCustomerService"
      ( \o ->
          AccountCustomerService
            Core.<$> (o Core..:? "email")
            Core.<*> (o Core..:? "phoneNumber")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON AccountCustomerService where
  toJSON AccountCustomerService {..} =
    Core.object
      ( Core.catMaybes
          [ ("email" Core..=) Core.<$> email,
            ("phoneNumber" Core..=) Core.<$> phoneNumber,
            ("url" Core..=) Core.<$> url
          ]
      )

--
-- /See:/ 'newAccountGoogleMyBusinessLink' smart constructor.
data AccountGoogleMyBusinessLink = AccountGoogleMyBusinessLink
  { -- | The ID of the Business Profile. If this is provided, then @gmbEmail@ is ignored. The value of this field should match the @accountId@ used by the Business Profile API.
    gmbAccountId :: (Core.Maybe Core.Text),
    -- | The Business Profile email address of a specific account within a Business Profile. A sample account within a Business Profile could be a business account with set of locations, managed under the Business Profile.
    gmbEmail :: (Core.Maybe Core.Text),
    -- | Status of the link between this Merchant Center account and the Business Profile. Acceptable values are: - \"@active@\" - \"@pending@\"
    status :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountGoogleMyBusinessLink' with the minimum fields required to make a request.
newAccountGoogleMyBusinessLink ::
  AccountGoogleMyBusinessLink
newAccountGoogleMyBusinessLink =
  AccountGoogleMyBusinessLink
    { gmbAccountId = Core.Nothing,
      gmbEmail = Core.Nothing,
      status = Core.Nothing
    }

instance Core.FromJSON AccountGoogleMyBusinessLink where
  parseJSON =
    Core.withObject
      "AccountGoogleMyBusinessLink"
      ( \o ->
          AccountGoogleMyBusinessLink
            Core.<$> (o Core..:? "gmbAccountId")
            Core.<*> (o Core..:? "gmbEmail")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON AccountGoogleMyBusinessLink where
  toJSON AccountGoogleMyBusinessLink {..} =
    Core.object
      ( Core.catMaybes
          [ ("gmbAccountId" Core..=) Core.<$> gmbAccountId,
            ("gmbEmail" Core..=) Core.<$> gmbEmail,
            ("status" Core..=) Core.<$> status
          ]
      )

--
-- /See:/ 'newAccountIdentifier' smart constructor.
data AccountIdentifier = AccountIdentifier
  { -- | The aggregator ID, set for aggregators and subaccounts (in that case, it represents the aggregator of the subaccount).
    aggregatorId :: (Core.Maybe Core.Word64),
    -- | The merchant account ID, set for individual accounts and subaccounts.
    merchantId :: (Core.Maybe Core.Word64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountIdentifier' with the minimum fields required to make a request.
newAccountIdentifier ::
  AccountIdentifier
newAccountIdentifier =
  AccountIdentifier {aggregatorId = Core.Nothing, merchantId = Core.Nothing}

instance Core.FromJSON AccountIdentifier where
  parseJSON =
    Core.withObject
      "AccountIdentifier"
      ( \o ->
          AccountIdentifier
            Core.<$> (o Core..:? "aggregatorId")
            Core.<*> (o Core..:? "merchantId")
      )

instance Core.ToJSON AccountIdentifier where
  toJSON AccountIdentifier {..} =
    Core.object
      ( Core.catMaybes
          [ ("aggregatorId" Core..=) Core.. Core.AsText
              Core.<$> aggregatorId,
            ("merchantId" Core..=) Core.. Core.AsText
              Core.<$> merchantId
          ]
      )

-- | This improvement will attempt to automatically correct submitted images if they don\'t meet the <https://support.google.com/merchants/answer/6324350 image requirements>, for example, removing overlays. If successful, the image will be replaced and approved. This improvement is only applied to images of disapproved offers. For more information see: <https://support.google.com/merchants/answer/9242973 Automatic image improvements>
--
-- /See:/ 'newAccountImageImprovements' smart constructor.
data AccountImageImprovements = AccountImageImprovements
  { -- | Determines how the images should be automatically updated. If this field is not present, then the settings will be deleted. If there are no settings for subaccount, they are inherited from aggregator.
    accountImageImprovementsSettings :: (Core.Maybe AccountImageImprovementsSettings),
    -- | Output only. The effective value of allow/automatic/image/improvements. If account/image/improvements/settings is present, then this value is the same. Otherwise, it represents the inherited value of the parent account. Read-only.
    effectiveAllowAutomaticImageImprovements :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountImageImprovements' with the minimum fields required to make a request.
newAccountImageImprovements ::
  AccountImageImprovements
newAccountImageImprovements =
  AccountImageImprovements
    { accountImageImprovementsSettings = Core.Nothing,
      effectiveAllowAutomaticImageImprovements = Core.Nothing
    }

instance Core.FromJSON AccountImageImprovements where
  parseJSON =
    Core.withObject
      "AccountImageImprovements"
      ( \o ->
          AccountImageImprovements
            Core.<$> (o Core..:? "accountImageImprovementsSettings")
            Core.<*> ( o
                         Core..:? "effectiveAllowAutomaticImageImprovements"
                     )
      )

instance Core.ToJSON AccountImageImprovements where
  toJSON AccountImageImprovements {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountImageImprovementsSettings" Core..=)
              Core.<$> accountImageImprovementsSettings,
            ("effectiveAllowAutomaticImageImprovements" Core..=)
              Core.<$> effectiveAllowAutomaticImageImprovements
          ]
      )

-- | Settings for the Automatic Image Improvements.
--
-- /See:/ 'newAccountImageImprovementsSettings' smart constructor.
newtype AccountImageImprovementsSettings = AccountImageImprovementsSettings
  { -- | Enables automatic image improvements.
    allowAutomaticImageImprovements :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountImageImprovementsSettings' with the minimum fields required to make a request.
newAccountImageImprovementsSettings ::
  AccountImageImprovementsSettings
newAccountImageImprovementsSettings =
  AccountImageImprovementsSettings
    { allowAutomaticImageImprovements = Core.Nothing
    }

instance
  Core.FromJSON
    AccountImageImprovementsSettings
  where
  parseJSON =
    Core.withObject
      "AccountImageImprovementsSettings"
      ( \o ->
          AccountImageImprovementsSettings
            Core.<$> (o Core..:? "allowAutomaticImageImprovements")
      )

instance Core.ToJSON AccountImageImprovementsSettings where
  toJSON AccountImageImprovementsSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowAutomaticImageImprovements" Core..=)
              Core.<$> allowAutomaticImageImprovements
          ]
      )

-- | Turning on <https://support.google.com/merchants/answer/3246284 item updates> allows Google to automatically update items for you. When item updates are on, Google uses the structured data markup on the website and advanced data extractors to update the price and availability of the items. When the item updates are off, items with mismatched data aren\'t shown.
--
-- /See:/ 'newAccountItemUpdates' smart constructor.
data AccountItemUpdates = AccountItemUpdates
  { -- | Determines which attributes of the items should be automatically updated. If this field is not present, then the settings will be deleted. If there are no settings for subaccount, they are inherited from aggregator.
    accountItemUpdatesSettings :: (Core.Maybe AccountItemUpdatesSettings),
    -- | Output only. The effective value of allow/availability/updates. If account/item/updates_settings is present, then this value is the same. Otherwise, it represents the inherited value of the parent account. Read-only.
    effectiveAllowAvailabilityUpdates :: (Core.Maybe Core.Bool),
    -- | Output only. The effective value of allow/condition/updates. If account/item/updates_settings is present, then this value is the same. Otherwise, it represents the inherited value of the parent account. Read-only.
    effectiveAllowConditionUpdates :: (Core.Maybe Core.Bool),
    -- | Output only. The effective value of allow/price/updates. If account/item/updates_settings is present, then this value is the same. Otherwise, it represents the inherited value of the parent account. Read-only.
    effectiveAllowPriceUpdates :: (Core.Maybe Core.Bool),
    -- | Output only. The effective value of allow/strict/availability/updates. If account/item/updates/settings is present, then this value is the same. Otherwise, it represents the inherited value of the parent account. Read-only.
    effectiveAllowStrictAvailabilityUpdates :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountItemUpdates' with the minimum fields required to make a request.
newAccountItemUpdates ::
  AccountItemUpdates
newAccountItemUpdates =
  AccountItemUpdates
    { accountItemUpdatesSettings = Core.Nothing,
      effectiveAllowAvailabilityUpdates = Core.Nothing,
      effectiveAllowConditionUpdates = Core.Nothing,
      effectiveAllowPriceUpdates = Core.Nothing,
      effectiveAllowStrictAvailabilityUpdates = Core.Nothing
    }

instance Core.FromJSON AccountItemUpdates where
  parseJSON =
    Core.withObject
      "AccountItemUpdates"
      ( \o ->
          AccountItemUpdates
            Core.<$> (o Core..:? "accountItemUpdatesSettings")
            Core.<*> (o Core..:? "effectiveAllowAvailabilityUpdates")
            Core.<*> (o Core..:? "effectiveAllowConditionUpdates")
            Core.<*> (o Core..:? "effectiveAllowPriceUpdates")
            Core.<*> ( o
                         Core..:? "effectiveAllowStrictAvailabilityUpdates"
                     )
      )

instance Core.ToJSON AccountItemUpdates where
  toJSON AccountItemUpdates {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountItemUpdatesSettings" Core..=)
              Core.<$> accountItemUpdatesSettings,
            ("effectiveAllowAvailabilityUpdates" Core..=)
              Core.<$> effectiveAllowAvailabilityUpdates,
            ("effectiveAllowConditionUpdates" Core..=)
              Core.<$> effectiveAllowConditionUpdates,
            ("effectiveAllowPriceUpdates" Core..=)
              Core.<$> effectiveAllowPriceUpdates,
            ("effectiveAllowStrictAvailabilityUpdates" Core..=)
              Core.<$> effectiveAllowStrictAvailabilityUpdates
          ]
      )

-- | Settings for the Automatic Item Updates.
--
-- /See:/ 'newAccountItemUpdatesSettings' smart constructor.
data AccountItemUpdatesSettings = AccountItemUpdatesSettings
  { -- | If availability updates are enabled, any previous availability values get overwritten if Google finds an out-of-stock annotation on the offer\'s page. If additionally @allow_availability_updates@ field is set to true, values get overwritten if Google finds an in-stock annotation on the offer’s page.
    allowAvailabilityUpdates :: (Core.Maybe Core.Bool),
    -- | If condition updates are enabled, Google always updates item condition with the condition detected from the details of your product.
    allowConditionUpdates :: (Core.Maybe Core.Bool),
    -- | If price updates are enabled, Google always updates the active price with the crawled information.
    allowPriceUpdates :: (Core.Maybe Core.Bool),
    -- | If allow/availability/updates is enabled, items are automatically updated in all your Shopping target countries. By default, availability updates will only be applied to items that are \'out of stock\' on your website but \'in stock\' on Shopping. Set this to true to also update items that are \'in stock\' on your website, but \'out of stock\' on Google Shopping. In order for this field to have an effect, you must also allow availability updates.
    allowStrictAvailabilityUpdates :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountItemUpdatesSettings' with the minimum fields required to make a request.
newAccountItemUpdatesSettings ::
  AccountItemUpdatesSettings
newAccountItemUpdatesSettings =
  AccountItemUpdatesSettings
    { allowAvailabilityUpdates = Core.Nothing,
      allowConditionUpdates = Core.Nothing,
      allowPriceUpdates = Core.Nothing,
      allowStrictAvailabilityUpdates = Core.Nothing
    }

instance Core.FromJSON AccountItemUpdatesSettings where
  parseJSON =
    Core.withObject
      "AccountItemUpdatesSettings"
      ( \o ->
          AccountItemUpdatesSettings
            Core.<$> (o Core..:? "allowAvailabilityUpdates")
            Core.<*> (o Core..:? "allowConditionUpdates")
            Core.<*> (o Core..:? "allowPriceUpdates")
            Core.<*> (o Core..:? "allowStrictAvailabilityUpdates")
      )

instance Core.ToJSON AccountItemUpdatesSettings where
  toJSON AccountItemUpdatesSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowAvailabilityUpdates" Core..=)
              Core.<$> allowAvailabilityUpdates,
            ("allowConditionUpdates" Core..=)
              Core.<$> allowConditionUpdates,
            ("allowPriceUpdates" Core..=)
              Core.<$> allowPriceUpdates,
            ("allowStrictAvailabilityUpdates" Core..=)
              Core.<$> allowStrictAvailabilityUpdates
          ]
      )

-- | Label assigned by CSS domain or CSS group to one of its sub-accounts.
--
-- /See:/ 'newAccountLabel' smart constructor.
data AccountLabel = AccountLabel
  { -- | Immutable. The ID of account this label belongs to.
    accountId :: (Core.Maybe Core.Int64),
    -- | The description of this label.
    description :: (Core.Maybe Core.Text),
    -- | Output only. The ID of the label.
    labelId :: (Core.Maybe Core.Int64),
    -- | Output only. The type of this label.
    labelType :: (Core.Maybe AccountLabel_LabelType),
    -- | The display name of this label.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountLabel' with the minimum fields required to make a request.
newAccountLabel ::
  AccountLabel
newAccountLabel =
  AccountLabel
    { accountId = Core.Nothing,
      description = Core.Nothing,
      labelId = Core.Nothing,
      labelType = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON AccountLabel where
  parseJSON =
    Core.withObject
      "AccountLabel"
      ( \o ->
          AccountLabel
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "labelId")
            Core.<*> (o Core..:? "labelType")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON AccountLabel where
  toJSON AccountLabel {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.. Core.AsText
              Core.<$> accountId,
            ("description" Core..=) Core.<$> description,
            ("labelId" Core..=) Core.. Core.AsText
              Core.<$> labelId,
            ("labelType" Core..=) Core.<$> labelType,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | The return carrier information. This service is designed for merchants enrolled in the Buy on Google program.
--
-- /See:/ 'newAccountReturnCarrier' smart constructor.
data AccountReturnCarrier = AccountReturnCarrier
  { -- | Output only. Immutable. The Google-provided unique carrier ID, used to update the resource.
    carrierAccountId :: (Core.Maybe Core.Int64),
    -- | Name of the carrier account.
    carrierAccountName :: (Core.Maybe Core.Text),
    -- | Number of the carrier account.
    carrierAccountNumber :: (Core.Maybe Core.Text),
    -- | The carrier code enum. Accepts the values FEDEX or UPS.
    carrierCode :: (Core.Maybe AccountReturnCarrier_CarrierCode)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountReturnCarrier' with the minimum fields required to make a request.
newAccountReturnCarrier ::
  AccountReturnCarrier
newAccountReturnCarrier =
  AccountReturnCarrier
    { carrierAccountId = Core.Nothing,
      carrierAccountName = Core.Nothing,
      carrierAccountNumber = Core.Nothing,
      carrierCode = Core.Nothing
    }

instance Core.FromJSON AccountReturnCarrier where
  parseJSON =
    Core.withObject
      "AccountReturnCarrier"
      ( \o ->
          AccountReturnCarrier
            Core.<$> (o Core..:? "carrierAccountId")
            Core.<*> (o Core..:? "carrierAccountName")
            Core.<*> (o Core..:? "carrierAccountNumber")
            Core.<*> (o Core..:? "carrierCode")
      )

instance Core.ToJSON AccountReturnCarrier where
  toJSON AccountReturnCarrier {..} =
    Core.object
      ( Core.catMaybes
          [ ("carrierAccountId" Core..=) Core.. Core.AsText
              Core.<$> carrierAccountId,
            ("carrierAccountName" Core..=)
              Core.<$> carrierAccountName,
            ("carrierAccountNumber" Core..=)
              Core.<$> carrierAccountNumber,
            ("carrierCode" Core..=) Core.<$> carrierCode
          ]
      )

-- | Not available for MCAs <https://support.google.com/merchants/answer/188487 accounts>. By turning on <https://support.google.com/merchants/answer/10027038 automatic shipping improvements>, you are allowing Google to improve the accuracy of your delivery times shown to shoppers using Google. More accurate delivery times, especially when faster, typically lead to better conversion rates. Google will improve your estimated delivery times based on various factors: * Delivery address of an order * Current handling time and shipping time settings * Estimated weekdays or business days * Parcel tracking data
--
-- /See:/ 'newAccountShippingImprovements' smart constructor.
newtype AccountShippingImprovements = AccountShippingImprovements
  { -- | Enables automatic shipping improvements.
    allowShippingImprovements :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountShippingImprovements' with the minimum fields required to make a request.
newAccountShippingImprovements ::
  AccountShippingImprovements
newAccountShippingImprovements =
  AccountShippingImprovements {allowShippingImprovements = Core.Nothing}

instance Core.FromJSON AccountShippingImprovements where
  parseJSON =
    Core.withObject
      "AccountShippingImprovements"
      ( \o ->
          AccountShippingImprovements
            Core.<$> (o Core..:? "allowShippingImprovements")
      )

instance Core.ToJSON AccountShippingImprovements where
  toJSON AccountShippingImprovements {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowShippingImprovements" Core..=)
              Core.<$> allowShippingImprovements
          ]
      )

-- | The status of an account, that is, information about its products, which is computed offline and not returned immediately at insertion time.
--
-- /See:/ 'newAccountStatus' smart constructor.
data AccountStatus = AccountStatus
  { -- | The ID of the account for which the status is reported.
    accountId :: (Core.Maybe Core.Text),
    -- | A list of account level issues.
    accountLevelIssues :: (Core.Maybe [AccountStatusAccountLevelIssue]),
    -- | How the account is managed. Acceptable values are: - \"@manual@\" - \"@automatic@\"
    accountManagement :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#accountStatus@\"
    kind :: (Core.Maybe Core.Text),
    -- | List of product-related data by channel, destination, and country. Data in this field may be delayed by up to 30 minutes.
    products :: (Core.Maybe [AccountStatusProducts]),
    -- | Whether the account\'s website is claimed or not.
    websiteClaimed :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountStatus' with the minimum fields required to make a request.
newAccountStatus ::
  AccountStatus
newAccountStatus =
  AccountStatus
    { accountId = Core.Nothing,
      accountLevelIssues = Core.Nothing,
      accountManagement = Core.Nothing,
      kind = Core.Nothing,
      products = Core.Nothing,
      websiteClaimed = Core.Nothing
    }

instance Core.FromJSON AccountStatus where
  parseJSON =
    Core.withObject
      "AccountStatus"
      ( \o ->
          AccountStatus
            Core.<$> (o Core..:? "accountId")
            Core.<*> ( o Core..:? "accountLevelIssues"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "accountManagement")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "products" Core..!= Core.mempty)
            Core.<*> (o Core..:? "websiteClaimed")
      )

instance Core.ToJSON AccountStatus where
  toJSON AccountStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.<$> accountId,
            ("accountLevelIssues" Core..=)
              Core.<$> accountLevelIssues,
            ("accountManagement" Core..=)
              Core.<$> accountManagement,
            ("kind" Core..=) Core.<$> kind,
            ("products" Core..=) Core.<$> products,
            ("websiteClaimed" Core..=) Core.<$> websiteClaimed
          ]
      )

--
-- /See:/ 'newAccountStatusAccountLevelIssue' smart constructor.
data AccountStatusAccountLevelIssue = AccountStatusAccountLevelIssue
  { -- | Country for which this issue is reported.
    country :: (Core.Maybe Core.Text),
    -- | The destination the issue applies to. If this field is empty then the issue applies to all available destinations.
    destination :: (Core.Maybe Core.Text),
    -- | Additional details about the issue.
    detail :: (Core.Maybe Core.Text),
    -- | The URL of a web page to help resolving this issue.
    documentation :: (Core.Maybe Core.Text),
    -- | Issue identifier.
    id :: (Core.Maybe Core.Text),
    -- | Severity of the issue. Acceptable values are: - \"@critical@\" - \"@error@\" - \"@suggestion@\"
    severity :: (Core.Maybe Core.Text),
    -- | Short description of the issue.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountStatusAccountLevelIssue' with the minimum fields required to make a request.
newAccountStatusAccountLevelIssue ::
  AccountStatusAccountLevelIssue
newAccountStatusAccountLevelIssue =
  AccountStatusAccountLevelIssue
    { country = Core.Nothing,
      destination = Core.Nothing,
      detail = Core.Nothing,
      documentation = Core.Nothing,
      id = Core.Nothing,
      severity = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON AccountStatusAccountLevelIssue where
  parseJSON =
    Core.withObject
      "AccountStatusAccountLevelIssue"
      ( \o ->
          AccountStatusAccountLevelIssue
            Core.<$> (o Core..:? "country")
            Core.<*> (o Core..:? "destination")
            Core.<*> (o Core..:? "detail")
            Core.<*> (o Core..:? "documentation")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "severity")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON AccountStatusAccountLevelIssue where
  toJSON AccountStatusAccountLevelIssue {..} =
    Core.object
      ( Core.catMaybes
          [ ("country" Core..=) Core.<$> country,
            ("destination" Core..=) Core.<$> destination,
            ("detail" Core..=) Core.<$> detail,
            ("documentation" Core..=) Core.<$> documentation,
            ("id" Core..=) Core.<$> id,
            ("severity" Core..=) Core.<$> severity,
            ("title" Core..=) Core.<$> title
          ]
      )

--
-- /See:/ 'newAccountStatusItemLevelIssue' smart constructor.
data AccountStatusItemLevelIssue = AccountStatusItemLevelIssue
  { -- | The attribute\'s name, if the issue is caused by a single attribute.
    attributeName :: (Core.Maybe Core.Text),
    -- | The error code of the issue.
    code :: (Core.Maybe Core.Text),
    -- | A short issue description in English.
    description :: (Core.Maybe Core.Text),
    -- | A detailed issue description in English.
    detail :: (Core.Maybe Core.Text),
    -- | The URL of a web page to help with resolving this issue.
    documentation :: (Core.Maybe Core.Text),
    -- | Number of items with this issue.
    numItems :: (Core.Maybe Core.Int64),
    -- | Whether the issue can be resolved by the merchant.
    resolution :: (Core.Maybe Core.Text),
    -- | How this issue affects serving of the offer.
    servability :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountStatusItemLevelIssue' with the minimum fields required to make a request.
newAccountStatusItemLevelIssue ::
  AccountStatusItemLevelIssue
newAccountStatusItemLevelIssue =
  AccountStatusItemLevelIssue
    { attributeName = Core.Nothing,
      code = Core.Nothing,
      description = Core.Nothing,
      detail = Core.Nothing,
      documentation = Core.Nothing,
      numItems = Core.Nothing,
      resolution = Core.Nothing,
      servability = Core.Nothing
    }

instance Core.FromJSON AccountStatusItemLevelIssue where
  parseJSON =
    Core.withObject
      "AccountStatusItemLevelIssue"
      ( \o ->
          AccountStatusItemLevelIssue
            Core.<$> (o Core..:? "attributeName")
            Core.<*> (o Core..:? "code")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "detail")
            Core.<*> (o Core..:? "documentation")
            Core.<*> (o Core..:? "numItems")
            Core.<*> (o Core..:? "resolution")
            Core.<*> (o Core..:? "servability")
      )

instance Core.ToJSON AccountStatusItemLevelIssue where
  toJSON AccountStatusItemLevelIssue {..} =
    Core.object
      ( Core.catMaybes
          [ ("attributeName" Core..=) Core.<$> attributeName,
            ("code" Core..=) Core.<$> code,
            ("description" Core..=) Core.<$> description,
            ("detail" Core..=) Core.<$> detail,
            ("documentation" Core..=) Core.<$> documentation,
            ("numItems" Core..=) Core.. Core.AsText
              Core.<$> numItems,
            ("resolution" Core..=) Core.<$> resolution,
            ("servability" Core..=) Core.<$> servability
          ]
      )

--
-- /See:/ 'newAccountStatusProducts' smart constructor.
data AccountStatusProducts = AccountStatusProducts
  { -- | The channel the data applies to. Acceptable values are: - \"@local@\" - \"@online@\"
    channel :: (Core.Maybe Core.Text),
    -- | The country the data applies to.
    country :: (Core.Maybe Core.Text),
    -- | The destination the data applies to.
    destination :: (Core.Maybe Core.Text),
    -- | List of item-level issues.
    itemLevelIssues :: (Core.Maybe [AccountStatusItemLevelIssue]),
    -- | Aggregated product statistics.
    statistics :: (Core.Maybe AccountStatusStatistics)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountStatusProducts' with the minimum fields required to make a request.
newAccountStatusProducts ::
  AccountStatusProducts
newAccountStatusProducts =
  AccountStatusProducts
    { channel = Core.Nothing,
      country = Core.Nothing,
      destination = Core.Nothing,
      itemLevelIssues = Core.Nothing,
      statistics = Core.Nothing
    }

instance Core.FromJSON AccountStatusProducts where
  parseJSON =
    Core.withObject
      "AccountStatusProducts"
      ( \o ->
          AccountStatusProducts
            Core.<$> (o Core..:? "channel")
            Core.<*> (o Core..:? "country")
            Core.<*> (o Core..:? "destination")
            Core.<*> (o Core..:? "itemLevelIssues" Core..!= Core.mempty)
            Core.<*> (o Core..:? "statistics")
      )

instance Core.ToJSON AccountStatusProducts where
  toJSON AccountStatusProducts {..} =
    Core.object
      ( Core.catMaybes
          [ ("channel" Core..=) Core.<$> channel,
            ("country" Core..=) Core.<$> country,
            ("destination" Core..=) Core.<$> destination,
            ("itemLevelIssues" Core..=) Core.<$> itemLevelIssues,
            ("statistics" Core..=) Core.<$> statistics
          ]
      )

--
-- /See:/ 'newAccountStatusStatistics' smart constructor.
data AccountStatusStatistics = AccountStatusStatistics
  { -- | Number of active offers.
    active :: (Core.Maybe Core.Int64),
    -- | Number of disapproved offers.
    disapproved :: (Core.Maybe Core.Int64),
    -- | Number of expiring offers.
    expiring :: (Core.Maybe Core.Int64),
    -- | Number of pending offers.
    pending :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountStatusStatistics' with the minimum fields required to make a request.
newAccountStatusStatistics ::
  AccountStatusStatistics
newAccountStatusStatistics =
  AccountStatusStatistics
    { active = Core.Nothing,
      disapproved = Core.Nothing,
      expiring = Core.Nothing,
      pending = Core.Nothing
    }

instance Core.FromJSON AccountStatusStatistics where
  parseJSON =
    Core.withObject
      "AccountStatusStatistics"
      ( \o ->
          AccountStatusStatistics
            Core.<$> (o Core..:? "active")
            Core.<*> (o Core..:? "disapproved")
            Core.<*> (o Core..:? "expiring")
            Core.<*> (o Core..:? "pending")
      )

instance Core.ToJSON AccountStatusStatistics where
  toJSON AccountStatusStatistics {..} =
    Core.object
      ( Core.catMaybes
          [ ("active" Core..=) Core.. Core.AsText
              Core.<$> active,
            ("disapproved" Core..=) Core.. Core.AsText
              Core.<$> disapproved,
            ("expiring" Core..=) Core.. Core.AsText
              Core.<$> expiring,
            ("pending" Core..=) Core.. Core.AsText
              Core.<$> pending
          ]
      )

-- | The tax settings of a merchant account. All methods require the admin role.
--
-- /See:/ 'newAccountTax' smart constructor.
data AccountTax = AccountTax
  { -- | Required. The ID of the account to which these account tax settings belong.
    accountId :: (Core.Maybe Core.Word64),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#accountTax@\".
    kind :: (Core.Maybe Core.Text),
    -- | Tax rules. Updating the tax rules will enable \"US\" taxes (not reversible). Defining no rules is equivalent to not charging tax at all.
    rules :: (Core.Maybe [AccountTaxTaxRule])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountTax' with the minimum fields required to make a request.
newAccountTax ::
  AccountTax
newAccountTax =
  AccountTax
    { accountId = Core.Nothing,
      kind = Core.Nothing,
      rules = Core.Nothing
    }

instance Core.FromJSON AccountTax where
  parseJSON =
    Core.withObject
      "AccountTax"
      ( \o ->
          AccountTax
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "rules" Core..!= Core.mempty)
      )

instance Core.ToJSON AccountTax where
  toJSON AccountTax {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.. Core.AsText
              Core.<$> accountId,
            ("kind" Core..=) Core.<$> kind,
            ("rules" Core..=) Core.<$> rules
          ]
      )

-- | Tax calculation rule to apply in a state or province (US only).
--
-- /See:/ 'newAccountTaxTaxRule' smart constructor.
data AccountTaxTaxRule = AccountTaxTaxRule
  { -- | Country code in which tax is applicable.
    country :: (Core.Maybe Core.Text),
    -- | Required. State (or province) is which the tax is applicable, described by its location ID (also called criteria ID).
    locationId :: (Core.Maybe Core.Word64),
    -- | Explicit tax rate in percent, represented as a floating point number without the percentage character. Must not be negative.
    ratePercent :: (Core.Maybe Core.Text),
    -- | If true, shipping charges are also taxed.
    shippingTaxed :: (Core.Maybe Core.Bool),
    -- | Whether the tax rate is taken from a global tax table or specified explicitly.
    useGlobalRate :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountTaxTaxRule' with the minimum fields required to make a request.
newAccountTaxTaxRule ::
  AccountTaxTaxRule
newAccountTaxTaxRule =
  AccountTaxTaxRule
    { country = Core.Nothing,
      locationId = Core.Nothing,
      ratePercent = Core.Nothing,
      shippingTaxed = Core.Nothing,
      useGlobalRate = Core.Nothing
    }

instance Core.FromJSON AccountTaxTaxRule where
  parseJSON =
    Core.withObject
      "AccountTaxTaxRule"
      ( \o ->
          AccountTaxTaxRule
            Core.<$> (o Core..:? "country")
            Core.<*> (o Core..:? "locationId")
            Core.<*> (o Core..:? "ratePercent")
            Core.<*> (o Core..:? "shippingTaxed")
            Core.<*> (o Core..:? "useGlobalRate")
      )

instance Core.ToJSON AccountTaxTaxRule where
  toJSON AccountTaxTaxRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("country" Core..=) Core.<$> country,
            ("locationId" Core..=) Core.. Core.AsText
              Core.<$> locationId,
            ("ratePercent" Core..=) Core.<$> ratePercent,
            ("shippingTaxed" Core..=) Core.<$> shippingTaxed,
            ("useGlobalRate" Core..=) Core.<$> useGlobalRate
          ]
      )

--
-- /See:/ 'newAccountUser' smart constructor.
data AccountUser = AccountUser
  { -- | Whether user is an admin.
    admin :: (Core.Maybe Core.Bool),
    -- | User\'s email address.
    emailAddress :: (Core.Maybe Core.Text),
    -- | Whether user is an order manager.
    orderManager :: (Core.Maybe Core.Bool),
    -- | Whether user can access payment statements.
    paymentsAnalyst :: (Core.Maybe Core.Bool),
    -- | Whether user can manage payment settings.
    paymentsManager :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountUser' with the minimum fields required to make a request.
newAccountUser ::
  AccountUser
newAccountUser =
  AccountUser
    { admin = Core.Nothing,
      emailAddress = Core.Nothing,
      orderManager = Core.Nothing,
      paymentsAnalyst = Core.Nothing,
      paymentsManager = Core.Nothing
    }

instance Core.FromJSON AccountUser where
  parseJSON =
    Core.withObject
      "AccountUser"
      ( \o ->
          AccountUser
            Core.<$> (o Core..:? "admin")
            Core.<*> (o Core..:? "emailAddress")
            Core.<*> (o Core..:? "orderManager")
            Core.<*> (o Core..:? "paymentsAnalyst")
            Core.<*> (o Core..:? "paymentsManager")
      )

instance Core.ToJSON AccountUser where
  toJSON AccountUser {..} =
    Core.object
      ( Core.catMaybes
          [ ("admin" Core..=) Core.<$> admin,
            ("emailAddress" Core..=) Core.<$> emailAddress,
            ("orderManager" Core..=) Core.<$> orderManager,
            ("paymentsAnalyst" Core..=) Core.<$> paymentsAnalyst,
            ("paymentsManager" Core..=)
              Core.<$> paymentsManager
          ]
      )

--
-- /See:/ 'newAccountYouTubeChannelLink' smart constructor.
data AccountYouTubeChannelLink = AccountYouTubeChannelLink
  { -- | Channel ID.
    channelId :: (Core.Maybe Core.Text),
    -- | Status of the link between this Merchant Center account and the YouTube channel. Upon retrieval, it represents the actual status of the link and can be either @active@ if it was approved in YT Creator Studio or @pending@ if it\'s pending approval. Upon insertion, it represents the /intended/ status of the link. Re-uploading a link with status @active@ when it\'s still pending or with status @pending@ when it\'s already active will have no effect: the status will remain unchanged. Re-uploading a link with deprecated status @inactive@ is equivalent to not submitting the link at all and will delete the link if it was active or cancel the link request if it was pending.
    status :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountYouTubeChannelLink' with the minimum fields required to make a request.
newAccountYouTubeChannelLink ::
  AccountYouTubeChannelLink
newAccountYouTubeChannelLink =
  AccountYouTubeChannelLink {channelId = Core.Nothing, status = Core.Nothing}

instance Core.FromJSON AccountYouTubeChannelLink where
  parseJSON =
    Core.withObject
      "AccountYouTubeChannelLink"
      ( \o ->
          AccountYouTubeChannelLink
            Core.<$> (o Core..:? "channelId")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON AccountYouTubeChannelLink where
  toJSON AccountYouTubeChannelLink {..} =
    Core.object
      ( Core.catMaybes
          [ ("channelId" Core..=) Core.<$> channelId,
            ("status" Core..=) Core.<$> status
          ]
      )

--
-- /See:/ 'newAccountsAuthInfoResponse' smart constructor.
data AccountsAuthInfoResponse = AccountsAuthInfoResponse
  { -- | The account identifiers corresponding to the authenticated user. - For an individual account: only the merchant ID is defined - For an aggregator: only the aggregator ID is defined - For a subaccount of an MCA: both the merchant ID and the aggregator ID are defined.
    accountIdentifiers :: (Core.Maybe [AccountIdentifier]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#accountsAuthInfoResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountsAuthInfoResponse' with the minimum fields required to make a request.
newAccountsAuthInfoResponse ::
  AccountsAuthInfoResponse
newAccountsAuthInfoResponse =
  AccountsAuthInfoResponse
    { accountIdentifiers = Core.Nothing,
      kind = Core.Nothing
    }

instance Core.FromJSON AccountsAuthInfoResponse where
  parseJSON =
    Core.withObject
      "AccountsAuthInfoResponse"
      ( \o ->
          AccountsAuthInfoResponse
            Core.<$> ( o Core..:? "accountIdentifiers"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON AccountsAuthInfoResponse where
  toJSON AccountsAuthInfoResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountIdentifiers" Core..=)
              Core.<$> accountIdentifiers,
            ("kind" Core..=) Core.<$> kind
          ]
      )

--
-- /See:/ 'newAccountsClaimWebsiteResponse' smart constructor.
newtype AccountsClaimWebsiteResponse = AccountsClaimWebsiteResponse
  { -- | Identifies what kind of resource this is. Value: the fixed string \"@content#accountsClaimWebsiteResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountsClaimWebsiteResponse' with the minimum fields required to make a request.
newAccountsClaimWebsiteResponse ::
  AccountsClaimWebsiteResponse
newAccountsClaimWebsiteResponse =
  AccountsClaimWebsiteResponse {kind = Core.Nothing}

instance Core.FromJSON AccountsClaimWebsiteResponse where
  parseJSON =
    Core.withObject
      "AccountsClaimWebsiteResponse"
      ( \o ->
          AccountsClaimWebsiteResponse
            Core.<$> (o Core..:? "kind")
      )

instance Core.ToJSON AccountsClaimWebsiteResponse where
  toJSON AccountsClaimWebsiteResponse {..} =
    Core.object
      (Core.catMaybes [("kind" Core..=) Core.<$> kind])

--
-- /See:/ 'newAccountsCustomBatchRequest' smart constructor.
newtype AccountsCustomBatchRequest = AccountsCustomBatchRequest
  { -- | The request entries to be processed in the batch.
    entries :: (Core.Maybe [AccountsCustomBatchRequestEntry])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountsCustomBatchRequest' with the minimum fields required to make a request.
newAccountsCustomBatchRequest ::
  AccountsCustomBatchRequest
newAccountsCustomBatchRequest =
  AccountsCustomBatchRequest {entries = Core.Nothing}

instance Core.FromJSON AccountsCustomBatchRequest where
  parseJSON =
    Core.withObject
      "AccountsCustomBatchRequest"
      ( \o ->
          AccountsCustomBatchRequest
            Core.<$> (o Core..:? "entries" Core..!= Core.mempty)
      )

instance Core.ToJSON AccountsCustomBatchRequest where
  toJSON AccountsCustomBatchRequest {..} =
    Core.object
      ( Core.catMaybes
          [("entries" Core..=) Core.<$> entries]
      )

-- | A batch entry encoding a single non-batch accounts request.
--
-- /See:/ 'newAccountsCustomBatchRequestEntry' smart constructor.
data AccountsCustomBatchRequestEntry = AccountsCustomBatchRequestEntry
  { -- | The account to create or update. Only defined if the method is @insert@ or @update@.
    account :: (Core.Maybe Account),
    -- | The ID of the targeted account. Only defined if the method is not @insert@.
    accountId :: (Core.Maybe Core.Word64),
    -- | An entry ID, unique within the batch request.
    batchId :: (Core.Maybe Core.Word32),
    -- | Whether the account should be deleted if the account has offers. Only applicable if the method is @delete@.
    force :: (Core.Maybe Core.Bool),
    -- | Label IDs for the \'updatelabels\' request.
    labelIds :: (Core.Maybe [Core.Word64]),
    -- | Details about the @link@ request.
    linkRequest :: (Core.Maybe AccountsCustomBatchRequestEntryLinkRequest),
    -- | The ID of the managing account.
    merchantId :: (Core.Maybe Core.Word64),
    -- | The method of the batch entry. Acceptable values are: - \"@claimWebsite@\" - \"@delete@\" - \"@get@\" - \"@insert@\" - \"@link@\" - \"@update@\"
    method :: (Core.Maybe Core.Text),
    -- | Only applicable if the method is @claimwebsite@. Indicates whether or not to take the claim from another account in case there is a conflict.
    overwrite :: (Core.Maybe Core.Bool),
    -- | Controls which fields are visible. Only applicable if the method is \'get\'.
    view :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountsCustomBatchRequestEntry' with the minimum fields required to make a request.
newAccountsCustomBatchRequestEntry ::
  AccountsCustomBatchRequestEntry
newAccountsCustomBatchRequestEntry =
  AccountsCustomBatchRequestEntry
    { account = Core.Nothing,
      accountId = Core.Nothing,
      batchId = Core.Nothing,
      force = Core.Nothing,
      labelIds = Core.Nothing,
      linkRequest = Core.Nothing,
      merchantId = Core.Nothing,
      method = Core.Nothing,
      overwrite = Core.Nothing,
      view = Core.Nothing
    }

instance
  Core.FromJSON
    AccountsCustomBatchRequestEntry
  where
  parseJSON =
    Core.withObject
      "AccountsCustomBatchRequestEntry"
      ( \o ->
          AccountsCustomBatchRequestEntry
            Core.<$> (o Core..:? "account")
            Core.<*> (o Core..:? "accountId")
            Core.<*> (o Core..:? "batchId")
            Core.<*> (o Core..:? "force")
            Core.<*> (o Core..:? "labelIds" Core..!= Core.mempty)
            Core.<*> (o Core..:? "linkRequest")
            Core.<*> (o Core..:? "merchantId")
            Core.<*> (o Core..:? "method")
            Core.<*> (o Core..:? "overwrite")
            Core.<*> (o Core..:? "view")
      )

instance Core.ToJSON AccountsCustomBatchRequestEntry where
  toJSON AccountsCustomBatchRequestEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("account" Core..=) Core.<$> account,
            ("accountId" Core..=) Core.. Core.AsText
              Core.<$> accountId,
            ("batchId" Core..=) Core.<$> batchId,
            ("force" Core..=) Core.<$> force,
            ("labelIds" Core..=) Core.<$> labelIds,
            ("linkRequest" Core..=) Core.<$> linkRequest,
            ("merchantId" Core..=) Core.. Core.AsText
              Core.<$> merchantId,
            ("method" Core..=) Core.<$> method,
            ("overwrite" Core..=) Core.<$> overwrite,
            ("view" Core..=) Core.<$> view
          ]
      )

--
-- /See:/ 'newAccountsCustomBatchRequestEntryLinkRequest' smart constructor.
data AccountsCustomBatchRequestEntryLinkRequest = AccountsCustomBatchRequestEntryLinkRequest
  { -- | Action to perform for this link. The @\"request\"@ action is only available to select merchants. Acceptable values are: - \"@approve@\" - \"@remove@\" - \"@request@\"
    action :: (Core.Maybe Core.Text),
    -- | Type of the link between the two accounts. Acceptable values are: - \"@channelPartner@\" - \"@eCommercePlatform@\" - \"@paymentServiceProvider@\"
    linkType :: (Core.Maybe Core.Text),
    -- | The ID of the linked account.
    linkedAccountId :: (Core.Maybe Core.Text),
    -- | Provided services. Acceptable values are: - \"@shoppingAdsProductManagement@\" - \"@shoppingActionsProductManagement@\" - \"@shoppingActionsOrderManagement@\" - \"@paymentProcessing@\"
    services :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountsCustomBatchRequestEntryLinkRequest' with the minimum fields required to make a request.
newAccountsCustomBatchRequestEntryLinkRequest ::
  AccountsCustomBatchRequestEntryLinkRequest
newAccountsCustomBatchRequestEntryLinkRequest =
  AccountsCustomBatchRequestEntryLinkRequest
    { action = Core.Nothing,
      linkType = Core.Nothing,
      linkedAccountId = Core.Nothing,
      services = Core.Nothing
    }

instance
  Core.FromJSON
    AccountsCustomBatchRequestEntryLinkRequest
  where
  parseJSON =
    Core.withObject
      "AccountsCustomBatchRequestEntryLinkRequest"
      ( \o ->
          AccountsCustomBatchRequestEntryLinkRequest
            Core.<$> (o Core..:? "action")
            Core.<*> (o Core..:? "linkType")
            Core.<*> (o Core..:? "linkedAccountId")
            Core.<*> (o Core..:? "services" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    AccountsCustomBatchRequestEntryLinkRequest
  where
  toJSON AccountsCustomBatchRequestEntryLinkRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("action" Core..=) Core.<$> action,
            ("linkType" Core..=) Core.<$> linkType,
            ("linkedAccountId" Core..=) Core.<$> linkedAccountId,
            ("services" Core..=) Core.<$> services
          ]
      )

--
-- /See:/ 'newAccountsCustomBatchResponse' smart constructor.
data AccountsCustomBatchResponse = AccountsCustomBatchResponse
  { -- | The result of the execution of the batch requests.
    entries :: (Core.Maybe [AccountsCustomBatchResponseEntry]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#accountsCustomBatchResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountsCustomBatchResponse' with the minimum fields required to make a request.
newAccountsCustomBatchResponse ::
  AccountsCustomBatchResponse
newAccountsCustomBatchResponse =
  AccountsCustomBatchResponse {entries = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON AccountsCustomBatchResponse where
  parseJSON =
    Core.withObject
      "AccountsCustomBatchResponse"
      ( \o ->
          AccountsCustomBatchResponse
            Core.<$> (o Core..:? "entries" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON AccountsCustomBatchResponse where
  toJSON AccountsCustomBatchResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("entries" Core..=) Core.<$> entries,
            ("kind" Core..=) Core.<$> kind
          ]
      )

-- | A batch entry encoding a single non-batch accounts response.
--
-- /See:/ 'newAccountsCustomBatchResponseEntry' smart constructor.
data AccountsCustomBatchResponseEntry = AccountsCustomBatchResponseEntry
  { -- | The retrieved, created, or updated account. Not defined if the method was @delete@, @claimwebsite@ or @link@.
    account :: (Core.Maybe Account),
    -- | The ID of the request entry this entry responds to.
    batchId :: (Core.Maybe Core.Word32),
    -- | A list of errors defined if and only if the request failed.
    errors :: (Core.Maybe Errors),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#accountsCustomBatchResponseEntry@\"
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountsCustomBatchResponseEntry' with the minimum fields required to make a request.
newAccountsCustomBatchResponseEntry ::
  AccountsCustomBatchResponseEntry
newAccountsCustomBatchResponseEntry =
  AccountsCustomBatchResponseEntry
    { account = Core.Nothing,
      batchId = Core.Nothing,
      errors = Core.Nothing,
      kind = Core.Nothing
    }

instance
  Core.FromJSON
    AccountsCustomBatchResponseEntry
  where
  parseJSON =
    Core.withObject
      "AccountsCustomBatchResponseEntry"
      ( \o ->
          AccountsCustomBatchResponseEntry
            Core.<$> (o Core..:? "account")
            Core.<*> (o Core..:? "batchId")
            Core.<*> (o Core..:? "errors")
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON AccountsCustomBatchResponseEntry where
  toJSON AccountsCustomBatchResponseEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("account" Core..=) Core.<$> account,
            ("batchId" Core..=) Core.<$> batchId,
            ("errors" Core..=) Core.<$> errors,
            ("kind" Core..=) Core.<$> kind
          ]
      )

--
-- /See:/ 'newAccountsLinkRequest' smart constructor.
data AccountsLinkRequest = AccountsLinkRequest
  { -- | Action to perform for this link. The @\"request\"@ action is only available to select merchants. Acceptable values are: - \"@approve@\" - \"@remove@\" - \"@request@\"
    action :: (Core.Maybe Core.Text),
    -- | Additional information required for @eCommercePlatform@ link type.
    eCommercePlatformLinkInfo :: (Core.Maybe ECommercePlatformLinkInfo),
    -- | Type of the link between the two accounts. Acceptable values are: - \"@channelPartner@\" - \"@eCommercePlatform@\" - \"@paymentServiceProvider@\"
    linkType :: (Core.Maybe Core.Text),
    -- | The ID of the linked account.
    linkedAccountId :: (Core.Maybe Core.Text),
    -- | Additional information required for @paymentServiceProvider@ link type.
    paymentServiceProviderLinkInfo :: (Core.Maybe PaymentServiceProviderLinkInfo),
    -- | Acceptable values are: - \"@shoppingAdsProductManagement@\" - \"@shoppingActionsProductManagement@\" - \"@shoppingActionsOrderManagement@\" - \"@paymentProcessing@\"
    services :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountsLinkRequest' with the minimum fields required to make a request.
newAccountsLinkRequest ::
  AccountsLinkRequest
newAccountsLinkRequest =
  AccountsLinkRequest
    { action = Core.Nothing,
      eCommercePlatformLinkInfo = Core.Nothing,
      linkType = Core.Nothing,
      linkedAccountId = Core.Nothing,
      paymentServiceProviderLinkInfo = Core.Nothing,
      services = Core.Nothing
    }

instance Core.FromJSON AccountsLinkRequest where
  parseJSON =
    Core.withObject
      "AccountsLinkRequest"
      ( \o ->
          AccountsLinkRequest
            Core.<$> (o Core..:? "action")
            Core.<*> (o Core..:? "eCommercePlatformLinkInfo")
            Core.<*> (o Core..:? "linkType")
            Core.<*> (o Core..:? "linkedAccountId")
            Core.<*> (o Core..:? "paymentServiceProviderLinkInfo")
            Core.<*> (o Core..:? "services" Core..!= Core.mempty)
      )

instance Core.ToJSON AccountsLinkRequest where
  toJSON AccountsLinkRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("action" Core..=) Core.<$> action,
            ("eCommercePlatformLinkInfo" Core..=)
              Core.<$> eCommercePlatformLinkInfo,
            ("linkType" Core..=) Core.<$> linkType,
            ("linkedAccountId" Core..=) Core.<$> linkedAccountId,
            ("paymentServiceProviderLinkInfo" Core..=)
              Core.<$> paymentServiceProviderLinkInfo,
            ("services" Core..=) Core.<$> services
          ]
      )

--
-- /See:/ 'newAccountsLinkResponse' smart constructor.
newtype AccountsLinkResponse = AccountsLinkResponse
  { -- | Identifies what kind of resource this is. Value: the fixed string \"@content#accountsLinkResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountsLinkResponse' with the minimum fields required to make a request.
newAccountsLinkResponse ::
  AccountsLinkResponse
newAccountsLinkResponse = AccountsLinkResponse {kind = Core.Nothing}

instance Core.FromJSON AccountsLinkResponse where
  parseJSON =
    Core.withObject
      "AccountsLinkResponse"
      ( \o ->
          AccountsLinkResponse Core.<$> (o Core..:? "kind")
      )

instance Core.ToJSON AccountsLinkResponse where
  toJSON AccountsLinkResponse {..} =
    Core.object
      (Core.catMaybes [("kind" Core..=) Core.<$> kind])

--
-- /See:/ 'newAccountsListLinksResponse' smart constructor.
data AccountsListLinksResponse = AccountsListLinksResponse
  { -- | Identifies what kind of resource this is. Value: the fixed string \"@content#accountsListLinksResponse@\".
    kind :: (Core.Maybe Core.Text),
    -- | The list of available links.
    links :: (Core.Maybe [LinkedAccount]),
    -- | The token for the retrieval of the next page of links.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountsListLinksResponse' with the minimum fields required to make a request.
newAccountsListLinksResponse ::
  AccountsListLinksResponse
newAccountsListLinksResponse =
  AccountsListLinksResponse
    { kind = Core.Nothing,
      links = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON AccountsListLinksResponse where
  parseJSON =
    Core.withObject
      "AccountsListLinksResponse"
      ( \o ->
          AccountsListLinksResponse
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "links" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON AccountsListLinksResponse where
  toJSON AccountsListLinksResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("links" Core..=) Core.<$> links,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

--
-- /See:/ 'newAccountsListResponse' smart constructor.
data AccountsListResponse = AccountsListResponse
  { -- | Identifies what kind of resource this is. Value: the fixed string \"@content#accountsListResponse@\".
    kind :: (Core.Maybe Core.Text),
    -- | The token for the retrieval of the next page of accounts.
    nextPageToken :: (Core.Maybe Core.Text),
    -- |
    resources :: (Core.Maybe [Account])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountsListResponse' with the minimum fields required to make a request.
newAccountsListResponse ::
  AccountsListResponse
newAccountsListResponse =
  AccountsListResponse
    { kind = Core.Nothing,
      nextPageToken = Core.Nothing,
      resources = Core.Nothing
    }

instance Core.FromJSON AccountsListResponse where
  parseJSON =
    Core.withObject
      "AccountsListResponse"
      ( \o ->
          AccountsListResponse
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "resources" Core..!= Core.mempty)
      )

instance Core.ToJSON AccountsListResponse where
  toJSON AccountsListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("resources" Core..=) Core.<$> resources
          ]
      )

--
-- /See:/ 'newAccountsUpdateLabelsRequest' smart constructor.
newtype AccountsUpdateLabelsRequest = AccountsUpdateLabelsRequest
  { -- | The IDs of labels that should be assigned to the account.
    labelIds :: (Core.Maybe [Core.Word64])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountsUpdateLabelsRequest' with the minimum fields required to make a request.
newAccountsUpdateLabelsRequest ::
  AccountsUpdateLabelsRequest
newAccountsUpdateLabelsRequest =
  AccountsUpdateLabelsRequest {labelIds = Core.Nothing}

instance Core.FromJSON AccountsUpdateLabelsRequest where
  parseJSON =
    Core.withObject
      "AccountsUpdateLabelsRequest"
      ( \o ->
          AccountsUpdateLabelsRequest
            Core.<$> (o Core..:? "labelIds" Core..!= Core.mempty)
      )

instance Core.ToJSON AccountsUpdateLabelsRequest where
  toJSON AccountsUpdateLabelsRequest {..} =
    Core.object
      ( Core.catMaybes
          [("labelIds" Core..=) Core.<$> labelIds]
      )

--
-- /See:/ 'newAccountsUpdateLabelsResponse' smart constructor.
newtype AccountsUpdateLabelsResponse = AccountsUpdateLabelsResponse
  { -- | Identifies what kind of resource this is. Value: the fixed string \"@content#accountsUpdateLabelsResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountsUpdateLabelsResponse' with the minimum fields required to make a request.
newAccountsUpdateLabelsResponse ::
  AccountsUpdateLabelsResponse
newAccountsUpdateLabelsResponse =
  AccountsUpdateLabelsResponse {kind = Core.Nothing}

instance Core.FromJSON AccountsUpdateLabelsResponse where
  parseJSON =
    Core.withObject
      "AccountsUpdateLabelsResponse"
      ( \o ->
          AccountsUpdateLabelsResponse
            Core.<$> (o Core..:? "kind")
      )

instance Core.ToJSON AccountsUpdateLabelsResponse where
  toJSON AccountsUpdateLabelsResponse {..} =
    Core.object
      (Core.catMaybes [("kind" Core..=) Core.<$> kind])

--
-- /See:/ 'newAccountstatusesCustomBatchRequest' smart constructor.
newtype AccountstatusesCustomBatchRequest = AccountstatusesCustomBatchRequest
  { -- | The request entries to be processed in the batch.
    entries :: (Core.Maybe [AccountstatusesCustomBatchRequestEntry])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountstatusesCustomBatchRequest' with the minimum fields required to make a request.
newAccountstatusesCustomBatchRequest ::
  AccountstatusesCustomBatchRequest
newAccountstatusesCustomBatchRequest =
  AccountstatusesCustomBatchRequest {entries = Core.Nothing}

instance
  Core.FromJSON
    AccountstatusesCustomBatchRequest
  where
  parseJSON =
    Core.withObject
      "AccountstatusesCustomBatchRequest"
      ( \o ->
          AccountstatusesCustomBatchRequest
            Core.<$> (o Core..:? "entries" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    AccountstatusesCustomBatchRequest
  where
  toJSON AccountstatusesCustomBatchRequest {..} =
    Core.object
      ( Core.catMaybes
          [("entries" Core..=) Core.<$> entries]
      )

-- | A batch entry encoding a single non-batch accountstatuses request.
--
-- /See:/ 'newAccountstatusesCustomBatchRequestEntry' smart constructor.
data AccountstatusesCustomBatchRequestEntry = AccountstatusesCustomBatchRequestEntry
  { -- | The ID of the (sub-)account whose status to get.
    accountId :: (Core.Maybe Core.Word64),
    -- | An entry ID, unique within the batch request.
    batchId :: (Core.Maybe Core.Word32),
    -- | If set, only issues for the specified destinations are returned, otherwise only issues for the Shopping destination.
    destinations :: (Core.Maybe [Core.Text]),
    -- | The ID of the managing account.
    merchantId :: (Core.Maybe Core.Word64),
    -- | The method of the batch entry. Acceptable values are: - \"@get@\"
    method :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountstatusesCustomBatchRequestEntry' with the minimum fields required to make a request.
newAccountstatusesCustomBatchRequestEntry ::
  AccountstatusesCustomBatchRequestEntry
newAccountstatusesCustomBatchRequestEntry =
  AccountstatusesCustomBatchRequestEntry
    { accountId = Core.Nothing,
      batchId = Core.Nothing,
      destinations = Core.Nothing,
      merchantId = Core.Nothing,
      method = Core.Nothing
    }

instance
  Core.FromJSON
    AccountstatusesCustomBatchRequestEntry
  where
  parseJSON =
    Core.withObject
      "AccountstatusesCustomBatchRequestEntry"
      ( \o ->
          AccountstatusesCustomBatchRequestEntry
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "batchId")
            Core.<*> (o Core..:? "destinations" Core..!= Core.mempty)
            Core.<*> (o Core..:? "merchantId")
            Core.<*> (o Core..:? "method")
      )

instance
  Core.ToJSON
    AccountstatusesCustomBatchRequestEntry
  where
  toJSON AccountstatusesCustomBatchRequestEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.. Core.AsText
              Core.<$> accountId,
            ("batchId" Core..=) Core.<$> batchId,
            ("destinations" Core..=) Core.<$> destinations,
            ("merchantId" Core..=) Core.. Core.AsText
              Core.<$> merchantId,
            ("method" Core..=) Core.<$> method
          ]
      )

--
-- /See:/ 'newAccountstatusesCustomBatchResponse' smart constructor.
data AccountstatusesCustomBatchResponse = AccountstatusesCustomBatchResponse
  { -- | The result of the execution of the batch requests.
    entries :: (Core.Maybe [AccountstatusesCustomBatchResponseEntry]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#accountstatusesCustomBatchResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountstatusesCustomBatchResponse' with the minimum fields required to make a request.
newAccountstatusesCustomBatchResponse ::
  AccountstatusesCustomBatchResponse
newAccountstatusesCustomBatchResponse =
  AccountstatusesCustomBatchResponse
    { entries = Core.Nothing,
      kind = Core.Nothing
    }

instance
  Core.FromJSON
    AccountstatusesCustomBatchResponse
  where
  parseJSON =
    Core.withObject
      "AccountstatusesCustomBatchResponse"
      ( \o ->
          AccountstatusesCustomBatchResponse
            Core.<$> (o Core..:? "entries" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind")
      )

instance
  Core.ToJSON
    AccountstatusesCustomBatchResponse
  where
  toJSON AccountstatusesCustomBatchResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("entries" Core..=) Core.<$> entries,
            ("kind" Core..=) Core.<$> kind
          ]
      )

-- | A batch entry encoding a single non-batch accountstatuses response.
--
-- /See:/ 'newAccountstatusesCustomBatchResponseEntry' smart constructor.
data AccountstatusesCustomBatchResponseEntry = AccountstatusesCustomBatchResponseEntry
  { -- | The requested account status. Defined if and only if the request was successful.
    accountStatus :: (Core.Maybe AccountStatus),
    -- | The ID of the request entry this entry responds to.
    batchId :: (Core.Maybe Core.Word32),
    -- | A list of errors defined if and only if the request failed.
    errors :: (Core.Maybe Errors)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountstatusesCustomBatchResponseEntry' with the minimum fields required to make a request.
newAccountstatusesCustomBatchResponseEntry ::
  AccountstatusesCustomBatchResponseEntry
newAccountstatusesCustomBatchResponseEntry =
  AccountstatusesCustomBatchResponseEntry
    { accountStatus = Core.Nothing,
      batchId = Core.Nothing,
      errors = Core.Nothing
    }

instance
  Core.FromJSON
    AccountstatusesCustomBatchResponseEntry
  where
  parseJSON =
    Core.withObject
      "AccountstatusesCustomBatchResponseEntry"
      ( \o ->
          AccountstatusesCustomBatchResponseEntry
            Core.<$> (o Core..:? "accountStatus")
            Core.<*> (o Core..:? "batchId")
            Core.<*> (o Core..:? "errors")
      )

instance
  Core.ToJSON
    AccountstatusesCustomBatchResponseEntry
  where
  toJSON AccountstatusesCustomBatchResponseEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountStatus" Core..=) Core.<$> accountStatus,
            ("batchId" Core..=) Core.<$> batchId,
            ("errors" Core..=) Core.<$> errors
          ]
      )

--
-- /See:/ 'newAccountstatusesListResponse' smart constructor.
data AccountstatusesListResponse = AccountstatusesListResponse
  { -- | Identifies what kind of resource this is. Value: the fixed string \"@content#accountstatusesListResponse@\".
    kind :: (Core.Maybe Core.Text),
    -- | The token for the retrieval of the next page of account statuses.
    nextPageToken :: (Core.Maybe Core.Text),
    -- |
    resources :: (Core.Maybe [AccountStatus])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountstatusesListResponse' with the minimum fields required to make a request.
newAccountstatusesListResponse ::
  AccountstatusesListResponse
newAccountstatusesListResponse =
  AccountstatusesListResponse
    { kind = Core.Nothing,
      nextPageToken = Core.Nothing,
      resources = Core.Nothing
    }

instance Core.FromJSON AccountstatusesListResponse where
  parseJSON =
    Core.withObject
      "AccountstatusesListResponse"
      ( \o ->
          AccountstatusesListResponse
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "resources" Core..!= Core.mempty)
      )

instance Core.ToJSON AccountstatusesListResponse where
  toJSON AccountstatusesListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("resources" Core..=) Core.<$> resources
          ]
      )

--
-- /See:/ 'newAccounttaxCustomBatchRequest' smart constructor.
newtype AccounttaxCustomBatchRequest = AccounttaxCustomBatchRequest
  { -- | The request entries to be processed in the batch.
    entries :: (Core.Maybe [AccounttaxCustomBatchRequestEntry])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccounttaxCustomBatchRequest' with the minimum fields required to make a request.
newAccounttaxCustomBatchRequest ::
  AccounttaxCustomBatchRequest
newAccounttaxCustomBatchRequest =
  AccounttaxCustomBatchRequest {entries = Core.Nothing}

instance Core.FromJSON AccounttaxCustomBatchRequest where
  parseJSON =
    Core.withObject
      "AccounttaxCustomBatchRequest"
      ( \o ->
          AccounttaxCustomBatchRequest
            Core.<$> (o Core..:? "entries" Core..!= Core.mempty)
      )

instance Core.ToJSON AccounttaxCustomBatchRequest where
  toJSON AccounttaxCustomBatchRequest {..} =
    Core.object
      ( Core.catMaybes
          [("entries" Core..=) Core.<$> entries]
      )

-- | A batch entry encoding a single non-batch accounttax request.
--
-- /See:/ 'newAccounttaxCustomBatchRequestEntry' smart constructor.
data AccounttaxCustomBatchRequestEntry = AccounttaxCustomBatchRequestEntry
  { -- | The ID of the account for which to get\/update account tax settings.
    accountId :: (Core.Maybe Core.Word64),
    -- | The account tax settings to update. Only defined if the method is @update@.
    accountTax :: (Core.Maybe AccountTax),
    -- | An entry ID, unique within the batch request.
    batchId :: (Core.Maybe Core.Word32),
    -- | The ID of the managing account.
    merchantId :: (Core.Maybe Core.Word64),
    -- | The method of the batch entry. Acceptable values are: - \"@get@\" - \"@update@\"
    method :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccounttaxCustomBatchRequestEntry' with the minimum fields required to make a request.
newAccounttaxCustomBatchRequestEntry ::
  AccounttaxCustomBatchRequestEntry
newAccounttaxCustomBatchRequestEntry =
  AccounttaxCustomBatchRequestEntry
    { accountId = Core.Nothing,
      accountTax = Core.Nothing,
      batchId = Core.Nothing,
      merchantId = Core.Nothing,
      method = Core.Nothing
    }

instance
  Core.FromJSON
    AccounttaxCustomBatchRequestEntry
  where
  parseJSON =
    Core.withObject
      "AccounttaxCustomBatchRequestEntry"
      ( \o ->
          AccounttaxCustomBatchRequestEntry
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "accountTax")
            Core.<*> (o Core..:? "batchId")
            Core.<*> (o Core..:? "merchantId")
            Core.<*> (o Core..:? "method")
      )

instance
  Core.ToJSON
    AccounttaxCustomBatchRequestEntry
  where
  toJSON AccounttaxCustomBatchRequestEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.. Core.AsText
              Core.<$> accountId,
            ("accountTax" Core..=) Core.<$> accountTax,
            ("batchId" Core..=) Core.<$> batchId,
            ("merchantId" Core..=) Core.. Core.AsText
              Core.<$> merchantId,
            ("method" Core..=) Core.<$> method
          ]
      )

--
-- /See:/ 'newAccounttaxCustomBatchResponse' smart constructor.
data AccounttaxCustomBatchResponse = AccounttaxCustomBatchResponse
  { -- | The result of the execution of the batch requests.
    entries :: (Core.Maybe [AccounttaxCustomBatchResponseEntry]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#accounttaxCustomBatchResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccounttaxCustomBatchResponse' with the minimum fields required to make a request.
newAccounttaxCustomBatchResponse ::
  AccounttaxCustomBatchResponse
newAccounttaxCustomBatchResponse =
  AccounttaxCustomBatchResponse {entries = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON AccounttaxCustomBatchResponse where
  parseJSON =
    Core.withObject
      "AccounttaxCustomBatchResponse"
      ( \o ->
          AccounttaxCustomBatchResponse
            Core.<$> (o Core..:? "entries" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON AccounttaxCustomBatchResponse where
  toJSON AccounttaxCustomBatchResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("entries" Core..=) Core.<$> entries,
            ("kind" Core..=) Core.<$> kind
          ]
      )

-- | A batch entry encoding a single non-batch accounttax response.
--
-- /See:/ 'newAccounttaxCustomBatchResponseEntry' smart constructor.
data AccounttaxCustomBatchResponseEntry = AccounttaxCustomBatchResponseEntry
  { -- | The retrieved or updated account tax settings.
    accountTax :: (Core.Maybe AccountTax),
    -- | The ID of the request entry this entry responds to.
    batchId :: (Core.Maybe Core.Word32),
    -- | A list of errors defined if and only if the request failed.
    errors :: (Core.Maybe Errors),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#accounttaxCustomBatchResponseEntry@\"
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccounttaxCustomBatchResponseEntry' with the minimum fields required to make a request.
newAccounttaxCustomBatchResponseEntry ::
  AccounttaxCustomBatchResponseEntry
newAccounttaxCustomBatchResponseEntry =
  AccounttaxCustomBatchResponseEntry
    { accountTax = Core.Nothing,
      batchId = Core.Nothing,
      errors = Core.Nothing,
      kind = Core.Nothing
    }

instance
  Core.FromJSON
    AccounttaxCustomBatchResponseEntry
  where
  parseJSON =
    Core.withObject
      "AccounttaxCustomBatchResponseEntry"
      ( \o ->
          AccounttaxCustomBatchResponseEntry
            Core.<$> (o Core..:? "accountTax")
            Core.<*> (o Core..:? "batchId")
            Core.<*> (o Core..:? "errors")
            Core.<*> (o Core..:? "kind")
      )

instance
  Core.ToJSON
    AccounttaxCustomBatchResponseEntry
  where
  toJSON AccounttaxCustomBatchResponseEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountTax" Core..=) Core.<$> accountTax,
            ("batchId" Core..=) Core.<$> batchId,
            ("errors" Core..=) Core.<$> errors,
            ("kind" Core..=) Core.<$> kind
          ]
      )

--
-- /See:/ 'newAccounttaxListResponse' smart constructor.
data AccounttaxListResponse = AccounttaxListResponse
  { -- | Identifies what kind of resource this is. Value: the fixed string \"@content#accounttaxListResponse@\".
    kind :: (Core.Maybe Core.Text),
    -- | The token for the retrieval of the next page of account tax settings.
    nextPageToken :: (Core.Maybe Core.Text),
    -- |
    resources :: (Core.Maybe [AccountTax])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccounttaxListResponse' with the minimum fields required to make a request.
newAccounttaxListResponse ::
  AccounttaxListResponse
newAccounttaxListResponse =
  AccounttaxListResponse
    { kind = Core.Nothing,
      nextPageToken = Core.Nothing,
      resources = Core.Nothing
    }

instance Core.FromJSON AccounttaxListResponse where
  parseJSON =
    Core.withObject
      "AccounttaxListResponse"
      ( \o ->
          AccounttaxListResponse
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "resources" Core..!= Core.mempty)
      )

instance Core.ToJSON AccounttaxListResponse where
  toJSON AccounttaxListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("resources" Core..=) Core.<$> resources
          ]
      )

-- | Request message for the ActivateProgram method.
--
-- /See:/ 'newActivateBuyOnGoogleProgramRequest' smart constructor.
data ActivateBuyOnGoogleProgramRequest = ActivateBuyOnGoogleProgramRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ActivateBuyOnGoogleProgramRequest' with the minimum fields required to make a request.
newActivateBuyOnGoogleProgramRequest ::
  ActivateBuyOnGoogleProgramRequest
newActivateBuyOnGoogleProgramRequest = ActivateBuyOnGoogleProgramRequest

instance
  Core.FromJSON
    ActivateBuyOnGoogleProgramRequest
  where
  parseJSON =
    Core.withObject
      "ActivateBuyOnGoogleProgramRequest"
      (\o -> Core.pure ActivateBuyOnGoogleProgramRequest)

instance
  Core.ToJSON
    ActivateBuyOnGoogleProgramRequest
  where
  toJSON = Core.const Core.emptyObject

--
-- /See:/ 'newAddress' smart constructor.
data Address = Address
  { -- | Required. Top-level administrative subdivision of the country. For example, a state like California (\"CA\") or a province like Quebec (\"QC\").
    administrativeArea :: (Core.Maybe Core.Text),
    -- | Required. City, town or commune. May also include dependent localities or sublocalities (for example, neighborhoods or suburbs).
    city :: (Core.Maybe Core.Text),
    -- | Required. <https://github.com/unicode-org/cldr/blob/latest/common/main/en.xml CLDR country code> (for example, \"US\").
    country :: (Core.Maybe Core.Text),
    -- | Required. Postal code or ZIP (for example, \"94043\").
    postalCode :: (Core.Maybe Core.Text),
    -- | Street-level part of the address.
    streetAddress :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Address' with the minimum fields required to make a request.
newAddress ::
  Address
newAddress =
  Address
    { administrativeArea = Core.Nothing,
      city = Core.Nothing,
      country = Core.Nothing,
      postalCode = Core.Nothing,
      streetAddress = Core.Nothing
    }

instance Core.FromJSON Address where
  parseJSON =
    Core.withObject
      "Address"
      ( \o ->
          Address
            Core.<$> (o Core..:? "administrativeArea")
            Core.<*> (o Core..:? "city")
            Core.<*> (o Core..:? "country")
            Core.<*> (o Core..:? "postalCode")
            Core.<*> (o Core..:? "streetAddress")
      )

instance Core.ToJSON Address where
  toJSON Address {..} =
    Core.object
      ( Core.catMaybes
          [ ("administrativeArea" Core..=)
              Core.<$> administrativeArea,
            ("city" Core..=) Core.<$> city,
            ("country" Core..=) Core.<$> country,
            ("postalCode" Core..=) Core.<$> postalCode,
            ("streetAddress" Core..=) Core.<$> streetAddress
          ]
      )

--
-- /See:/ 'newAmount' smart constructor.
data Amount = Amount
  { -- | [required] The pre-tax or post-tax price depending on the location of the order.
    priceAmount :: (Core.Maybe Price),
    -- | [required] Tax value.
    taxAmount :: (Core.Maybe Price)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Amount' with the minimum fields required to make a request.
newAmount ::
  Amount
newAmount = Amount {priceAmount = Core.Nothing, taxAmount = Core.Nothing}

instance Core.FromJSON Amount where
  parseJSON =
    Core.withObject
      "Amount"
      ( \o ->
          Amount
            Core.<$> (o Core..:? "priceAmount")
            Core.<*> (o Core..:? "taxAmount")
      )

instance Core.ToJSON Amount where
  toJSON Amount {..} =
    Core.object
      ( Core.catMaybes
          [ ("priceAmount" Core..=) Core.<$> priceAmount,
            ("taxAmount" Core..=) Core.<$> taxAmount
          ]
      )

--
-- /See:/ 'newBusinessDayConfig' smart constructor.
newtype BusinessDayConfig = BusinessDayConfig
  { -- | Regular business days, such as \'\"monday\"\'. May not be empty.
    businessDays :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BusinessDayConfig' with the minimum fields required to make a request.
newBusinessDayConfig ::
  BusinessDayConfig
newBusinessDayConfig = BusinessDayConfig {businessDays = Core.Nothing}

instance Core.FromJSON BusinessDayConfig where
  parseJSON =
    Core.withObject
      "BusinessDayConfig"
      ( \o ->
          BusinessDayConfig
            Core.<$> (o Core..:? "businessDays" Core..!= Core.mempty)
      )

instance Core.ToJSON BusinessDayConfig where
  toJSON BusinessDayConfig {..} =
    Core.object
      ( Core.catMaybes
          [("businessDays" Core..=) Core.<$> businessDays]
      )

-- | Response message for the GetProgramStatus method.
--
-- /See:/ 'newBuyOnGoogleProgramStatus' smart constructor.
data BuyOnGoogleProgramStatus = BuyOnGoogleProgramStatus
  { -- | The business models in which merchant participates.
    businessModel :: (Core.Maybe [BuyOnGoogleProgramStatus_BusinessModelItem]),
    -- | The customer service pending email. After verification this field becomes empty.
    customerServicePendingEmail :: (Core.Maybe Core.Text),
    -- | The pending phone number specified for BuyOnGoogle program. It might be different than account level phone number. In order to update this field the customer/service/pending/phone/region_code must also be set. After verification this field becomes empty.
    customerServicePendingPhoneNumber :: (Core.Maybe Core.Text),
    -- | Two letter country code for the pending phone number, for example @CA@ for Canadian numbers. See the <https://wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements ISO 3166-1 alpha-2> officially assigned codes. In order to update this field the customer/service/pending/phone/number must also be set. After verification this field becomes empty.
    customerServicePendingPhoneRegionCode :: (Core.Maybe Core.Text),
    -- | Output only. The customer service verified email.
    customerServiceVerifiedEmail :: (Core.Maybe Core.Text),
    -- | Output only. The verified phone number specified for BuyOnGoogle program. It might be different than account level phone number.
    customerServiceVerifiedPhoneNumber :: (Core.Maybe Core.Text),
    -- | Output only. Two letter country code for the verified phone number, for example @CA@ for Canadian numbers. See the <https://wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements ISO 3166-1 alpha-2> officially assigned codes.
    customerServiceVerifiedPhoneRegionCode :: (Core.Maybe Core.Text),
    -- | The channels through which the merchant is selling.
    onlineSalesChannel :: (Core.Maybe BuyOnGoogleProgramStatus_OnlineSalesChannel),
    -- | Output only. The current participation stage for the program.
    participationStage :: (Core.Maybe BuyOnGoogleProgramStatus_ParticipationStage)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuyOnGoogleProgramStatus' with the minimum fields required to make a request.
newBuyOnGoogleProgramStatus ::
  BuyOnGoogleProgramStatus
newBuyOnGoogleProgramStatus =
  BuyOnGoogleProgramStatus
    { businessModel = Core.Nothing,
      customerServicePendingEmail = Core.Nothing,
      customerServicePendingPhoneNumber = Core.Nothing,
      customerServicePendingPhoneRegionCode = Core.Nothing,
      customerServiceVerifiedEmail = Core.Nothing,
      customerServiceVerifiedPhoneNumber = Core.Nothing,
      customerServiceVerifiedPhoneRegionCode = Core.Nothing,
      onlineSalesChannel = Core.Nothing,
      participationStage = Core.Nothing
    }

instance Core.FromJSON BuyOnGoogleProgramStatus where
  parseJSON =
    Core.withObject
      "BuyOnGoogleProgramStatus"
      ( \o ->
          BuyOnGoogleProgramStatus
            Core.<$> (o Core..:? "businessModel" Core..!= Core.mempty)
            Core.<*> (o Core..:? "customerServicePendingEmail")
            Core.<*> (o Core..:? "customerServicePendingPhoneNumber")
            Core.<*> (o Core..:? "customerServicePendingPhoneRegionCode")
            Core.<*> (o Core..:? "customerServiceVerifiedEmail")
            Core.<*> (o Core..:? "customerServiceVerifiedPhoneNumber")
            Core.<*> (o Core..:? "customerServiceVerifiedPhoneRegionCode")
            Core.<*> (o Core..:? "onlineSalesChannel")
            Core.<*> (o Core..:? "participationStage")
      )

instance Core.ToJSON BuyOnGoogleProgramStatus where
  toJSON BuyOnGoogleProgramStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("businessModel" Core..=) Core.<$> businessModel,
            ("customerServicePendingEmail" Core..=)
              Core.<$> customerServicePendingEmail,
            ("customerServicePendingPhoneNumber" Core..=)
              Core.<$> customerServicePendingPhoneNumber,
            ("customerServicePendingPhoneRegionCode" Core..=)
              Core.<$> customerServicePendingPhoneRegionCode,
            ("customerServiceVerifiedEmail" Core..=)
              Core.<$> customerServiceVerifiedEmail,
            ("customerServiceVerifiedPhoneNumber" Core..=)
              Core.<$> customerServiceVerifiedPhoneNumber,
            ("customerServiceVerifiedPhoneRegionCode" Core..=)
              Core.<$> customerServiceVerifiedPhoneRegionCode,
            ("onlineSalesChannel" Core..=)
              Core.<$> onlineSalesChannel,
            ("participationStage" Core..=)
              Core.<$> participationStage
          ]
      )

-- | Request message for the CaptureOrder method.
--
-- /See:/ 'newCaptureOrderRequest' smart constructor.
data CaptureOrderRequest = CaptureOrderRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CaptureOrderRequest' with the minimum fields required to make a request.
newCaptureOrderRequest ::
  CaptureOrderRequest
newCaptureOrderRequest = CaptureOrderRequest

instance Core.FromJSON CaptureOrderRequest where
  parseJSON =
    Core.withObject
      "CaptureOrderRequest"
      (\o -> Core.pure CaptureOrderRequest)

instance Core.ToJSON CaptureOrderRequest where
  toJSON = Core.const Core.emptyObject

-- | Response message for the CaptureOrder method.
--
-- /See:/ 'newCaptureOrderResponse' smart constructor.
newtype CaptureOrderResponse = CaptureOrderResponse
  { -- | The status of the execution. Only defined if the request was successful. Acceptable values are: * \"duplicate\" * \"executed\"
    executionStatus :: (Core.Maybe CaptureOrderResponse_ExecutionStatus)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CaptureOrderResponse' with the minimum fields required to make a request.
newCaptureOrderResponse ::
  CaptureOrderResponse
newCaptureOrderResponse = CaptureOrderResponse {executionStatus = Core.Nothing}

instance Core.FromJSON CaptureOrderResponse where
  parseJSON =
    Core.withObject
      "CaptureOrderResponse"
      ( \o ->
          CaptureOrderResponse
            Core.<$> (o Core..:? "executionStatus")
      )

instance Core.ToJSON CaptureOrderResponse where
  toJSON CaptureOrderResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("executionStatus" Core..=)
              Core.<$> executionStatus
          ]
      )

--
-- /See:/ 'newCarrierRate' smart constructor.
data CarrierRate = CarrierRate
  { -- | Carrier service, such as @\"UPS\"@ or @\"Fedex\"@. The list of supported carriers can be retrieved through the @getSupportedCarriers@ method. Required.
    carrierName :: (Core.Maybe Core.Text),
    -- | Carrier service, such as @\"ground\"@ or @\"2 days\"@. The list of supported services for a carrier can be retrieved through the @getSupportedCarriers@ method. Required.
    carrierService :: (Core.Maybe Core.Text),
    -- | Additive shipping rate modifier. Can be negative. For example @{ \"value\": \"1\", \"currency\" : \"USD\" }@ adds $1 to the rate, @{ \"value\": \"-3\", \"currency\" : \"USD\" }@ removes $3 from the rate. Optional.
    flatAdjustment :: (Core.Maybe Price),
    -- | Name of the carrier rate. Must be unique per rate group. Required.
    name :: (Core.Maybe Core.Text),
    -- | Shipping origin for this carrier rate. Required.
    originPostalCode :: (Core.Maybe Core.Text),
    -- | Multiplicative shipping rate modifier as a number in decimal notation. Can be negative. For example @\"5.4\"@ increases the rate by 5.4%, @\"-3\"@ decreases the rate by 3%. Optional.
    percentageAdjustment :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CarrierRate' with the minimum fields required to make a request.
newCarrierRate ::
  CarrierRate
newCarrierRate =
  CarrierRate
    { carrierName = Core.Nothing,
      carrierService = Core.Nothing,
      flatAdjustment = Core.Nothing,
      name = Core.Nothing,
      originPostalCode = Core.Nothing,
      percentageAdjustment = Core.Nothing
    }

instance Core.FromJSON CarrierRate where
  parseJSON =
    Core.withObject
      "CarrierRate"
      ( \o ->
          CarrierRate
            Core.<$> (o Core..:? "carrierName")
            Core.<*> (o Core..:? "carrierService")
            Core.<*> (o Core..:? "flatAdjustment")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "originPostalCode")
            Core.<*> (o Core..:? "percentageAdjustment")
      )

instance Core.ToJSON CarrierRate where
  toJSON CarrierRate {..} =
    Core.object
      ( Core.catMaybes
          [ ("carrierName" Core..=) Core.<$> carrierName,
            ("carrierService" Core..=) Core.<$> carrierService,
            ("flatAdjustment" Core..=) Core.<$> flatAdjustment,
            ("name" Core..=) Core.<$> name,
            ("originPostalCode" Core..=)
              Core.<$> originPostalCode,
            ("percentageAdjustment" Core..=)
              Core.<$> percentageAdjustment
          ]
      )

--
-- /See:/ 'newCarriersCarrier' smart constructor.
data CarriersCarrier = CarriersCarrier
  { -- | The CLDR country code of the carrier (for example, \"US\"). Always present.
    country :: (Core.Maybe Core.Text),
    -- | A list of services supported for EDD (Estimated Delivery Date) calculation. This is the list of valid values for WarehouseBasedDeliveryTime.carrierService.
    eddServices :: (Core.Maybe [Core.Text]),
    -- | The name of the carrier (for example, @\"UPS\"@). Always present.
    name :: (Core.Maybe Core.Text),
    -- | A list of supported services (for example, @\"ground\"@) for that carrier. Contains at least one service. This is the list of valid values for CarrierRate.carrierService.
    services :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CarriersCarrier' with the minimum fields required to make a request.
newCarriersCarrier ::
  CarriersCarrier
newCarriersCarrier =
  CarriersCarrier
    { country = Core.Nothing,
      eddServices = Core.Nothing,
      name = Core.Nothing,
      services = Core.Nothing
    }

instance Core.FromJSON CarriersCarrier where
  parseJSON =
    Core.withObject
      "CarriersCarrier"
      ( \o ->
          CarriersCarrier
            Core.<$> (o Core..:? "country")
            Core.<*> (o Core..:? "eddServices" Core..!= Core.mempty)
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "services" Core..!= Core.mempty)
      )

instance Core.ToJSON CarriersCarrier where
  toJSON CarriersCarrier {..} =
    Core.object
      ( Core.catMaybes
          [ ("country" Core..=) Core.<$> country,
            ("eddServices" Core..=) Core.<$> eddServices,
            ("name" Core..=) Core.<$> name,
            ("services" Core..=) Core.<$> services
          ]
      )

-- | The collection message.
--
-- /See:/ 'newCollection' smart constructor.
data Collection = Collection
  { -- | Label that you assign to a collection to help organize bidding and reporting in Shopping campaigns. <https://support.google.com/merchants/answer/9674217 Custom label>
    customLabel0 :: (Core.Maybe Core.Text),
    -- | Label that you assign to a collection to help organize bidding and reporting in Shopping campaigns.
    customLabel1 :: (Core.Maybe Core.Text),
    -- | Label that you assign to a collection to help organize bidding and reporting in Shopping campaigns.
    customLabel2 :: (Core.Maybe Core.Text),
    -- | Label that you assign to a collection to help organize bidding and reporting in Shopping campaigns.
    customLabel3 :: (Core.Maybe Core.Text),
    -- | Label that you assign to a collection to help organize bidding and reporting in Shopping campaigns.
    customLabel4 :: (Core.Maybe Core.Text),
    -- | This identifies one or more products associated with the collection. Used as a lookup to the corresponding product ID in your product feeds. Provide a maximum of 100 featuredProduct (for collections). Provide up to 10 featuredProduct (for Shoppable Images only) with ID and X and Y coordinates. <https://support.google.com/merchants/answer/9703736 featured_product attribute>
    featuredProduct :: (Core.Maybe [CollectionFeaturedProduct]),
    -- | Your collection\'s name. <https://support.google.com/merchants/answer/9673580 headline attribute>
    headline :: (Core.Maybe [Core.Text]),
    -- | Required. The REST ID of the collection. Content API methods that operate on collections take this as their collectionId parameter. The REST ID for a collection is of the form collectionId. <https://support.google.com/merchants/answer/9649290 id attribute>
    id :: (Core.Maybe Core.Text),
    -- | The URL of a collection’s image. <https://support.google.com/merchants/answer/9703236 image_link attribute>
    imageLink :: (Core.Maybe [Core.Text]),
    -- | The language of a collection and the language of any featured products linked to the collection. <https://support.google.com/merchants/answer/9673781 language attribute>
    language :: (Core.Maybe Core.Text),
    -- | A collection’s landing page. URL directly linking to your collection\'s page on your website. <https://support.google.com/merchants/answer/9673983 link attribute>
    link :: (Core.Maybe Core.Text),
    -- | A collection’s mobile-optimized landing page when you have a different URL for mobile and desktop traffic. <https://support.google.com/merchants/answer/9646123 mobile_link attribute>
    mobileLink :: (Core.Maybe Core.Text),
    -- | <https://support.google.com/merchants/answer/9674155 product_country attribute>
    productCountry :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Collection' with the minimum fields required to make a request.
newCollection ::
  Collection
newCollection =
  Collection
    { customLabel0 = Core.Nothing,
      customLabel1 = Core.Nothing,
      customLabel2 = Core.Nothing,
      customLabel3 = Core.Nothing,
      customLabel4 = Core.Nothing,
      featuredProduct = Core.Nothing,
      headline = Core.Nothing,
      id = Core.Nothing,
      imageLink = Core.Nothing,
      language = Core.Nothing,
      link = Core.Nothing,
      mobileLink = Core.Nothing,
      productCountry = Core.Nothing
    }

instance Core.FromJSON Collection where
  parseJSON =
    Core.withObject
      "Collection"
      ( \o ->
          Collection
            Core.<$> (o Core..:? "customLabel0")
            Core.<*> (o Core..:? "customLabel1")
            Core.<*> (o Core..:? "customLabel2")
            Core.<*> (o Core..:? "customLabel3")
            Core.<*> (o Core..:? "customLabel4")
            Core.<*> (o Core..:? "featuredProduct" Core..!= Core.mempty)
            Core.<*> (o Core..:? "headline" Core..!= Core.mempty)
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "imageLink" Core..!= Core.mempty)
            Core.<*> (o Core..:? "language")
            Core.<*> (o Core..:? "link")
            Core.<*> (o Core..:? "mobileLink")
            Core.<*> (o Core..:? "productCountry")
      )

instance Core.ToJSON Collection where
  toJSON Collection {..} =
    Core.object
      ( Core.catMaybes
          [ ("customLabel0" Core..=) Core.<$> customLabel0,
            ("customLabel1" Core..=) Core.<$> customLabel1,
            ("customLabel2" Core..=) Core.<$> customLabel2,
            ("customLabel3" Core..=) Core.<$> customLabel3,
            ("customLabel4" Core..=) Core.<$> customLabel4,
            ("featuredProduct" Core..=) Core.<$> featuredProduct,
            ("headline" Core..=) Core.<$> headline,
            ("id" Core..=) Core.<$> id,
            ("imageLink" Core..=) Core.<$> imageLink,
            ("language" Core..=) Core.<$> language,
            ("link" Core..=) Core.<$> link,
            ("mobileLink" Core..=) Core.<$> mobileLink,
            ("productCountry" Core..=) Core.<$> productCountry
          ]
      )

-- | The message for FeaturedProduct. <https://support.google.com/merchants/answer/9703736 FeaturedProduct>
--
-- /See:/ 'newCollectionFeaturedProduct' smart constructor.
data CollectionFeaturedProduct = CollectionFeaturedProduct
  { -- | The unique identifier for the product item.
    offerId :: (Core.Maybe Core.Text),
    -- | Required. X-coordinate of the product callout on the Shoppable Image.
    x :: (Core.Maybe Core.Double),
    -- | Required. Y-coordinate of the product callout on the Shoppable Image.
    y :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CollectionFeaturedProduct' with the minimum fields required to make a request.
newCollectionFeaturedProduct ::
  CollectionFeaturedProduct
newCollectionFeaturedProduct =
  CollectionFeaturedProduct
    { offerId = Core.Nothing,
      x = Core.Nothing,
      y = Core.Nothing
    }

instance Core.FromJSON CollectionFeaturedProduct where
  parseJSON =
    Core.withObject
      "CollectionFeaturedProduct"
      ( \o ->
          CollectionFeaturedProduct
            Core.<$> (o Core..:? "offerId")
            Core.<*> (o Core..:? "x")
            Core.<*> (o Core..:? "y")
      )

instance Core.ToJSON CollectionFeaturedProduct where
  toJSON CollectionFeaturedProduct {..} =
    Core.object
      ( Core.catMaybes
          [ ("offerId" Core..=) Core.<$> offerId,
            ("x" Core..=) Core.<$> x,
            ("y" Core..=) Core.<$> y
          ]
      )

-- | The collectionstatus message.
--
-- /See:/ 'newCollectionStatus' smart constructor.
data CollectionStatus = CollectionStatus
  { -- | A list of all issues associated with the collection.
    collectionLevelIssuses :: (Core.Maybe [CollectionStatusItemLevelIssue]),
    -- | Date on which the collection has been created in <http://en.wikipedia.org/wiki/ISO_8601 ISO 8601> format: Date, time, and offset, e.g. \"2020-01-02T09:00:00+01:00\" or \"2020-01-02T09:00:00Z\"
    creationDate :: (Core.Maybe Core.Text),
    -- | The intended destinations for the collection.
    destinationStatuses :: (Core.Maybe [CollectionStatusDestinationStatus]),
    -- | Required. The ID of the collection for which status is reported.
    id :: (Core.Maybe Core.Text),
    -- | Date on which the collection has been last updated in <http://en.wikipedia.org/wiki/ISO_8601 ISO 8601> format: Date, time, and offset, e.g. \"2020-01-02T09:00:00+01:00\" or \"2020-01-02T09:00:00Z\"
    lastUpdateDate :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CollectionStatus' with the minimum fields required to make a request.
newCollectionStatus ::
  CollectionStatus
newCollectionStatus =
  CollectionStatus
    { collectionLevelIssuses = Core.Nothing,
      creationDate = Core.Nothing,
      destinationStatuses = Core.Nothing,
      id = Core.Nothing,
      lastUpdateDate = Core.Nothing
    }

instance Core.FromJSON CollectionStatus where
  parseJSON =
    Core.withObject
      "CollectionStatus"
      ( \o ->
          CollectionStatus
            Core.<$> ( o Core..:? "collectionLevelIssuses"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "creationDate")
            Core.<*> ( o Core..:? "destinationStatuses"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "lastUpdateDate")
      )

instance Core.ToJSON CollectionStatus where
  toJSON CollectionStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("collectionLevelIssuses" Core..=)
              Core.<$> collectionLevelIssuses,
            ("creationDate" Core..=) Core.<$> creationDate,
            ("destinationStatuses" Core..=)
              Core.<$> destinationStatuses,
            ("id" Core..=) Core.<$> id,
            ("lastUpdateDate" Core..=) Core.<$> lastUpdateDate
          ]
      )

-- | Destination status message.
--
-- /See:/ 'newCollectionStatusDestinationStatus' smart constructor.
data CollectionStatusDestinationStatus = CollectionStatusDestinationStatus
  { -- | The name of the destination
    destination :: (Core.Maybe Core.Text),
    -- | The status for the specified destination.
    status :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CollectionStatusDestinationStatus' with the minimum fields required to make a request.
newCollectionStatusDestinationStatus ::
  CollectionStatusDestinationStatus
newCollectionStatusDestinationStatus =
  CollectionStatusDestinationStatus
    { destination = Core.Nothing,
      status = Core.Nothing
    }

instance
  Core.FromJSON
    CollectionStatusDestinationStatus
  where
  parseJSON =
    Core.withObject
      "CollectionStatusDestinationStatus"
      ( \o ->
          CollectionStatusDestinationStatus
            Core.<$> (o Core..:? "destination")
            Core.<*> (o Core..:? "status")
      )

instance
  Core.ToJSON
    CollectionStatusDestinationStatus
  where
  toJSON CollectionStatusDestinationStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("destination" Core..=) Core.<$> destination,
            ("status" Core..=) Core.<$> status
          ]
      )

-- | Issue associated with the collection.
--
-- /See:/ 'newCollectionStatusItemLevelIssue' smart constructor.
data CollectionStatusItemLevelIssue = CollectionStatusItemLevelIssue
  { -- | The attribute\'s name, if the issue is caused by a single attribute.
    attributeName :: (Core.Maybe Core.Text),
    -- | The error code of the issue.
    code :: (Core.Maybe Core.Text),
    -- | A short issue description in English.
    description :: (Core.Maybe Core.Text),
    -- | The destination the issue applies to.
    destination :: (Core.Maybe Core.Text),
    -- | A detailed issue description in English.
    detail :: (Core.Maybe Core.Text),
    -- | The URL of a web page to help with resolving this issue.
    documentation :: (Core.Maybe Core.Text),
    -- | Whether the issue can be resolved by the merchant.
    resolution :: (Core.Maybe Core.Text),
    -- | How this issue affects the serving of the collection.
    servability :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CollectionStatusItemLevelIssue' with the minimum fields required to make a request.
newCollectionStatusItemLevelIssue ::
  CollectionStatusItemLevelIssue
newCollectionStatusItemLevelIssue =
  CollectionStatusItemLevelIssue
    { attributeName = Core.Nothing,
      code = Core.Nothing,
      description = Core.Nothing,
      destination = Core.Nothing,
      detail = Core.Nothing,
      documentation = Core.Nothing,
      resolution = Core.Nothing,
      servability = Core.Nothing
    }

instance Core.FromJSON CollectionStatusItemLevelIssue where
  parseJSON =
    Core.withObject
      "CollectionStatusItemLevelIssue"
      ( \o ->
          CollectionStatusItemLevelIssue
            Core.<$> (o Core..:? "attributeName")
            Core.<*> (o Core..:? "code")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "destination")
            Core.<*> (o Core..:? "detail")
            Core.<*> (o Core..:? "documentation")
            Core.<*> (o Core..:? "resolution")
            Core.<*> (o Core..:? "servability")
      )

instance Core.ToJSON CollectionStatusItemLevelIssue where
  toJSON CollectionStatusItemLevelIssue {..} =
    Core.object
      ( Core.catMaybes
          [ ("attributeName" Core..=) Core.<$> attributeName,
            ("code" Core..=) Core.<$> code,
            ("description" Core..=) Core.<$> description,
            ("destination" Core..=) Core.<$> destination,
            ("detail" Core..=) Core.<$> detail,
            ("documentation" Core..=) Core.<$> documentation,
            ("resolution" Core..=) Core.<$> resolution,
            ("servability" Core..=) Core.<$> servability
          ]
      )

-- | Information about CSS domain.
--
-- /See:/ 'newCss' smart constructor.
data Css = Css
  { -- | Output only. Immutable. The CSS domain ID.
    cssDomainId :: (Core.Maybe Core.Int64),
    -- | Output only. Immutable. The ID of the CSS group this CSS domain is affiliated with. Only populated for CSS group users.
    cssGroupId :: (Core.Maybe Core.Int64),
    -- | Output only. Immutable. The CSS domain\'s display name, used when space is constrained.
    displayName :: (Core.Maybe Core.Text),
    -- | Output only. Immutable. The CSS domain\'s full name.
    fullName :: (Core.Maybe Core.Text),
    -- | Output only. Immutable. The CSS domain\'s homepage.
    homepageUri :: (Core.Maybe Core.Text),
    -- | A list of label IDs that are assigned to this CSS domain by its CSS group. Only populated for CSS group users.
    labelIds :: (Core.Maybe [Core.Int64])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Css' with the minimum fields required to make a request.
newCss ::
  Css
newCss =
  Css
    { cssDomainId = Core.Nothing,
      cssGroupId = Core.Nothing,
      displayName = Core.Nothing,
      fullName = Core.Nothing,
      homepageUri = Core.Nothing,
      labelIds = Core.Nothing
    }

instance Core.FromJSON Css where
  parseJSON =
    Core.withObject
      "Css"
      ( \o ->
          Css
            Core.<$> (o Core..:? "cssDomainId")
            Core.<*> (o Core..:? "cssGroupId")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "fullName")
            Core.<*> (o Core..:? "homepageUri")
            Core.<*> (o Core..:? "labelIds" Core..!= Core.mempty)
      )

instance Core.ToJSON Css where
  toJSON Css {..} =
    Core.object
      ( Core.catMaybes
          [ ("cssDomainId" Core..=) Core.. Core.AsText
              Core.<$> cssDomainId,
            ("cssGroupId" Core..=) Core.. Core.AsText
              Core.<$> cssGroupId,
            ("displayName" Core..=) Core.<$> displayName,
            ("fullName" Core..=) Core.<$> fullName,
            ("homepageUri" Core..=) Core.<$> homepageUri,
            ("labelIds" Core..=) Core.<$> labelIds
          ]
      )

--
-- /See:/ 'newCustomAttribute' smart constructor.
data CustomAttribute = CustomAttribute
  { -- | Subattributes within this attribute group. Exactly one of value or groupValues must be provided.
    groupValues :: (Core.Maybe [CustomAttribute]),
    -- | The name of the attribute. Underscores will be replaced by spaces upon insertion.
    name :: (Core.Maybe Core.Text),
    -- | The value of the attribute.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomAttribute' with the minimum fields required to make a request.
newCustomAttribute ::
  CustomAttribute
newCustomAttribute =
  CustomAttribute
    { groupValues = Core.Nothing,
      name = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON CustomAttribute where
  parseJSON =
    Core.withObject
      "CustomAttribute"
      ( \o ->
          CustomAttribute
            Core.<$> (o Core..:? "groupValues" Core..!= Core.mempty)
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON CustomAttribute where
  toJSON CustomAttribute {..} =
    Core.object
      ( Core.catMaybes
          [ ("groupValues" Core..=) Core.<$> groupValues,
            ("name" Core..=) Core.<$> name,
            ("value" Core..=) Core.<$> value
          ]
      )

--
-- /See:/ 'newCustomerReturnReason' smart constructor.
data CustomerReturnReason = CustomerReturnReason
  { -- | Description of the reason.
    description :: (Core.Maybe Core.Text),
    -- | Code of the return reason. Acceptable values are: - \"@betterPriceFound@\" - \"@changedMind@\" - \"@damagedOrDefectiveItem@\" - \"@didNotMatchDescription@\" - \"@doesNotFit@\" - \"@expiredItem@\" - \"@incorrectItemReceived@\" - \"@noLongerNeeded@\" - \"@notSpecified@\" - \"@orderedWrongItem@\" - \"@other@\" - \"@qualityNotExpected@\" - \"@receivedTooLate@\" - \"@undeliverable@\"
    reasonCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomerReturnReason' with the minimum fields required to make a request.
newCustomerReturnReason ::
  CustomerReturnReason
newCustomerReturnReason =
  CustomerReturnReason {description = Core.Nothing, reasonCode = Core.Nothing}

instance Core.FromJSON CustomerReturnReason where
  parseJSON =
    Core.withObject
      "CustomerReturnReason"
      ( \o ->
          CustomerReturnReason
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "reasonCode")
      )

instance Core.ToJSON CustomerReturnReason where
  toJSON CustomerReturnReason {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("reasonCode" Core..=) Core.<$> reasonCode
          ]
      )

--
-- /See:/ 'newCutoffTime' smart constructor.
data CutoffTime = CutoffTime
  { -- | Hour of the cutoff time until which an order has to be placed to be processed in the same day. Required.
    hour :: (Core.Maybe Core.Word32),
    -- | Minute of the cutoff time until which an order has to be placed to be processed in the same day. Required.
    minute :: (Core.Maybe Core.Word32),
    -- | Timezone identifier for the cutoff time (for example, \"Europe\/Zurich\"). List of identifiers. Required.
    timezone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CutoffTime' with the minimum fields required to make a request.
newCutoffTime ::
  CutoffTime
newCutoffTime =
  CutoffTime
    { hour = Core.Nothing,
      minute = Core.Nothing,
      timezone = Core.Nothing
    }

instance Core.FromJSON CutoffTime where
  parseJSON =
    Core.withObject
      "CutoffTime"
      ( \o ->
          CutoffTime
            Core.<$> (o Core..:? "hour")
            Core.<*> (o Core..:? "minute")
            Core.<*> (o Core..:? "timezone")
      )

instance Core.ToJSON CutoffTime where
  toJSON CutoffTime {..} =
    Core.object
      ( Core.catMaybes
          [ ("hour" Core..=) Core.<$> hour,
            ("minute" Core..=) Core.<$> minute,
            ("timezone" Core..=) Core.<$> timezone
          ]
      )

-- | Datafeed configuration data.
--
-- /See:/ 'newDatafeed' smart constructor.
data Datafeed = Datafeed
  { -- | The two-letter ISO 639-1 language in which the attributes are defined in the data feed.
    attributeLanguage :: (Core.Maybe Core.Text),
    -- | Required. The type of data feed. For product inventory feeds, only feeds for local stores, not online stores, are supported. Acceptable values are: - \"@local products@\" - \"@product inventory@\" - \"@products@\"
    contentType :: (Core.Maybe Core.Text),
    -- | Fetch schedule for the feed file.
    fetchSchedule :: (Core.Maybe DatafeedFetchSchedule),
    -- | Required. The filename of the feed. All feeds must have a unique file name.
    fileName :: (Core.Maybe Core.Text),
    -- | Format of the feed file.
    format :: (Core.Maybe DatafeedFormat),
    -- | Required for update. The ID of the data feed.
    id :: (Core.Maybe Core.Int64),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#datafeed@\"
    kind :: (Core.Maybe Core.Text),
    -- | Required for insert. A descriptive name of the data feed.
    name :: (Core.Maybe Core.Text),
    -- | The targets this feed should apply to (country, language, destinations).
    targets :: (Core.Maybe [DatafeedTarget])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Datafeed' with the minimum fields required to make a request.
newDatafeed ::
  Datafeed
newDatafeed =
  Datafeed
    { attributeLanguage = Core.Nothing,
      contentType = Core.Nothing,
      fetchSchedule = Core.Nothing,
      fileName = Core.Nothing,
      format = Core.Nothing,
      id = Core.Nothing,
      kind = Core.Nothing,
      name = Core.Nothing,
      targets = Core.Nothing
    }

instance Core.FromJSON Datafeed where
  parseJSON =
    Core.withObject
      "Datafeed"
      ( \o ->
          Datafeed
            Core.<$> (o Core..:? "attributeLanguage")
            Core.<*> (o Core..:? "contentType")
            Core.<*> (o Core..:? "fetchSchedule")
            Core.<*> (o Core..:? "fileName")
            Core.<*> (o Core..:? "format")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "targets" Core..!= Core.mempty)
      )

instance Core.ToJSON Datafeed where
  toJSON Datafeed {..} =
    Core.object
      ( Core.catMaybes
          [ ("attributeLanguage" Core..=)
              Core.<$> attributeLanguage,
            ("contentType" Core..=) Core.<$> contentType,
            ("fetchSchedule" Core..=) Core.<$> fetchSchedule,
            ("fileName" Core..=) Core.<$> fileName,
            ("format" Core..=) Core.<$> format,
            ("id" Core..=) Core.. Core.AsText Core.<$> id,
            ("kind" Core..=) Core.<$> kind,
            ("name" Core..=) Core.<$> name,
            ("targets" Core..=) Core.<$> targets
          ]
      )

-- | The required fields vary based on the frequency of fetching. For a monthly fetch schedule, day/of/month and hour are required. For a weekly fetch schedule, weekday and hour are required. For a daily fetch schedule, only hour is required.
--
-- /See:/ 'newDatafeedFetchSchedule' smart constructor.
data DatafeedFetchSchedule = DatafeedFetchSchedule
  { -- | The day of the month the feed file should be fetched (1-31).
    dayOfMonth :: (Core.Maybe Core.Word32),
    -- | The URL where the feed file can be fetched. Google Merchant Center will support automatic scheduled uploads using the HTTP, HTTPS, FTP, or SFTP protocols, so the value will need to be a valid link using one of those four protocols.
    fetchUrl :: (Core.Maybe Core.Text),
    -- | The hour of the day the feed file should be fetched (0-23).
    hour :: (Core.Maybe Core.Word32),
    -- | The minute of the hour the feed file should be fetched (0-59). Read-only.
    minuteOfHour :: (Core.Maybe Core.Word32),
    -- | An optional password for fetch_url.
    password :: (Core.Maybe Core.Text),
    -- | Whether the scheduled fetch is paused or not.
    paused :: (Core.Maybe Core.Bool),
    -- | Time zone used for schedule. UTC by default. For example, \"America\/Los_Angeles\".
    timeZone :: (Core.Maybe Core.Text),
    -- | An optional user name for fetch_url.
    username :: (Core.Maybe Core.Text),
    -- | The day of the week the feed file should be fetched. Acceptable values are: - \"@monday@\" - \"@tuesday@\" - \"@wednesday@\" - \"@thursday@\" - \"@friday@\" - \"@saturday@\" - \"@sunday@\"
    weekday :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatafeedFetchSchedule' with the minimum fields required to make a request.
newDatafeedFetchSchedule ::
  DatafeedFetchSchedule
newDatafeedFetchSchedule =
  DatafeedFetchSchedule
    { dayOfMonth = Core.Nothing,
      fetchUrl = Core.Nothing,
      hour = Core.Nothing,
      minuteOfHour = Core.Nothing,
      password = Core.Nothing,
      paused = Core.Nothing,
      timeZone = Core.Nothing,
      username = Core.Nothing,
      weekday = Core.Nothing
    }

instance Core.FromJSON DatafeedFetchSchedule where
  parseJSON =
    Core.withObject
      "DatafeedFetchSchedule"
      ( \o ->
          DatafeedFetchSchedule
            Core.<$> (o Core..:? "dayOfMonth")
            Core.<*> (o Core..:? "fetchUrl")
            Core.<*> (o Core..:? "hour")
            Core.<*> (o Core..:? "minuteOfHour")
            Core.<*> (o Core..:? "password")
            Core.<*> (o Core..:? "paused")
            Core.<*> (o Core..:? "timeZone")
            Core.<*> (o Core..:? "username")
            Core.<*> (o Core..:? "weekday")
      )

instance Core.ToJSON DatafeedFetchSchedule where
  toJSON DatafeedFetchSchedule {..} =
    Core.object
      ( Core.catMaybes
          [ ("dayOfMonth" Core..=) Core.<$> dayOfMonth,
            ("fetchUrl" Core..=) Core.<$> fetchUrl,
            ("hour" Core..=) Core.<$> hour,
            ("minuteOfHour" Core..=) Core.<$> minuteOfHour,
            ("password" Core..=) Core.<$> password,
            ("paused" Core..=) Core.<$> paused,
            ("timeZone" Core..=) Core.<$> timeZone,
            ("username" Core..=) Core.<$> username,
            ("weekday" Core..=) Core.<$> weekday
          ]
      )

--
-- /See:/ 'newDatafeedFormat' smart constructor.
data DatafeedFormat = DatafeedFormat
  { -- | Delimiter for the separation of values in a delimiter-separated values feed. If not specified, the delimiter will be auto-detected. Ignored for non-DSV data feeds. Acceptable values are: - \"@pipe@\" - \"@tab@\" - \"@tilde@\"
    columnDelimiter :: (Core.Maybe Core.Text),
    -- | Character encoding scheme of the data feed. If not specified, the encoding will be auto-detected. Acceptable values are: - \"@latin-1@\" - \"@utf-16be@\" - \"@utf-16le@\" - \"@utf-8@\" - \"@windows-1252@\"
    fileEncoding :: (Core.Maybe Core.Text),
    -- | Specifies how double quotes are interpreted. If not specified, the mode will be auto-detected. Ignored for non-DSV data feeds. Acceptable values are: - \"@normal character@\" - \"@value quoting@\"
    quotingMode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatafeedFormat' with the minimum fields required to make a request.
newDatafeedFormat ::
  DatafeedFormat
newDatafeedFormat =
  DatafeedFormat
    { columnDelimiter = Core.Nothing,
      fileEncoding = Core.Nothing,
      quotingMode = Core.Nothing
    }

instance Core.FromJSON DatafeedFormat where
  parseJSON =
    Core.withObject
      "DatafeedFormat"
      ( \o ->
          DatafeedFormat
            Core.<$> (o Core..:? "columnDelimiter")
            Core.<*> (o Core..:? "fileEncoding")
            Core.<*> (o Core..:? "quotingMode")
      )

instance Core.ToJSON DatafeedFormat where
  toJSON DatafeedFormat {..} =
    Core.object
      ( Core.catMaybes
          [ ("columnDelimiter" Core..=)
              Core.<$> columnDelimiter,
            ("fileEncoding" Core..=) Core.<$> fileEncoding,
            ("quotingMode" Core..=) Core.<$> quotingMode
          ]
      )

-- | The status of a datafeed, that is, the result of the last retrieval of the datafeed computed asynchronously when the feed processing is finished.
--
-- /See:/ 'newDatafeedStatus' smart constructor.
data DatafeedStatus = DatafeedStatus
  { -- | The country for which the status is reported, represented as a CLDR territory code.
    country :: (Core.Maybe Core.Text),
    -- | The ID of the feed for which the status is reported.
    datafeedId :: (Core.Maybe Core.Word64),
    -- | The list of errors occurring in the feed.
    errors :: (Core.Maybe [DatafeedStatusError]),
    -- | The number of items in the feed that were processed.
    itemsTotal :: (Core.Maybe Core.Word64),
    -- | The number of items in the feed that were valid.
    itemsValid :: (Core.Maybe Core.Word64),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#datafeedStatus@\"
    kind :: (Core.Maybe Core.Text),
    -- | The two-letter ISO 639-1 language for which the status is reported.
    language :: (Core.Maybe Core.Text),
    -- | The last date at which the feed was uploaded.
    lastUploadDate :: (Core.Maybe Core.Text),
    -- | The processing status of the feed. Acceptable values are: - \"@\"@failure@\": The feed could not be processed or all items had errors.@\" - \"@in progress@\": The feed is being processed. - \"@none@\": The feed has not yet been processed. For example, a feed that has never been uploaded will have this processing status. - \"@success@\": The feed was processed successfully, though some items might have had errors.
    processingStatus :: (Core.Maybe Core.Text),
    -- | The list of errors occurring in the feed.
    warnings :: (Core.Maybe [DatafeedStatusError])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatafeedStatus' with the minimum fields required to make a request.
newDatafeedStatus ::
  DatafeedStatus
newDatafeedStatus =
  DatafeedStatus
    { country = Core.Nothing,
      datafeedId = Core.Nothing,
      errors = Core.Nothing,
      itemsTotal = Core.Nothing,
      itemsValid = Core.Nothing,
      kind = Core.Nothing,
      language = Core.Nothing,
      lastUploadDate = Core.Nothing,
      processingStatus = Core.Nothing,
      warnings = Core.Nothing
    }

instance Core.FromJSON DatafeedStatus where
  parseJSON =
    Core.withObject
      "DatafeedStatus"
      ( \o ->
          DatafeedStatus
            Core.<$> (o Core..:? "country")
            Core.<*> (o Core..:? "datafeedId")
            Core.<*> (o Core..:? "errors" Core..!= Core.mempty)
            Core.<*> (o Core..:? "itemsTotal")
            Core.<*> (o Core..:? "itemsValid")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "language")
            Core.<*> (o Core..:? "lastUploadDate")
            Core.<*> (o Core..:? "processingStatus")
            Core.<*> (o Core..:? "warnings" Core..!= Core.mempty)
      )

instance Core.ToJSON DatafeedStatus where
  toJSON DatafeedStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("country" Core..=) Core.<$> country,
            ("datafeedId" Core..=) Core.. Core.AsText
              Core.<$> datafeedId,
            ("errors" Core..=) Core.<$> errors,
            ("itemsTotal" Core..=) Core.. Core.AsText
              Core.<$> itemsTotal,
            ("itemsValid" Core..=) Core.. Core.AsText
              Core.<$> itemsValid,
            ("kind" Core..=) Core.<$> kind,
            ("language" Core..=) Core.<$> language,
            ("lastUploadDate" Core..=) Core.<$> lastUploadDate,
            ("processingStatus" Core..=)
              Core.<$> processingStatus,
            ("warnings" Core..=) Core.<$> warnings
          ]
      )

-- | An error occurring in the feed, like \"invalid price\".
--
-- /See:/ 'newDatafeedStatusError' smart constructor.
data DatafeedStatusError = DatafeedStatusError
  { -- | The code of the error, for example, \"validation\/invalid_value\".
    code :: (Core.Maybe Core.Text),
    -- | The number of occurrences of the error in the feed.
    count :: (Core.Maybe Core.Word64),
    -- | A list of example occurrences of the error, grouped by product.
    examples :: (Core.Maybe [DatafeedStatusExample]),
    -- | The error message, for example, \"Invalid price\".
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatafeedStatusError' with the minimum fields required to make a request.
newDatafeedStatusError ::
  DatafeedStatusError
newDatafeedStatusError =
  DatafeedStatusError
    { code = Core.Nothing,
      count = Core.Nothing,
      examples = Core.Nothing,
      message = Core.Nothing
    }

instance Core.FromJSON DatafeedStatusError where
  parseJSON =
    Core.withObject
      "DatafeedStatusError"
      ( \o ->
          DatafeedStatusError
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "count")
            Core.<*> (o Core..:? "examples" Core..!= Core.mempty)
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON DatafeedStatusError where
  toJSON DatafeedStatusError {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("count" Core..=) Core.. Core.AsText Core.<$> count,
            ("examples" Core..=) Core.<$> examples,
            ("message" Core..=) Core.<$> message
          ]
      )

-- | An example occurrence for a particular error.
--
-- /See:/ 'newDatafeedStatusExample' smart constructor.
data DatafeedStatusExample = DatafeedStatusExample
  { -- | The ID of the example item.
    itemId :: (Core.Maybe Core.Text),
    -- | Line number in the data feed where the example is found.
    lineNumber :: (Core.Maybe Core.Word64),
    -- | The problematic value.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatafeedStatusExample' with the minimum fields required to make a request.
newDatafeedStatusExample ::
  DatafeedStatusExample
newDatafeedStatusExample =
  DatafeedStatusExample
    { itemId = Core.Nothing,
      lineNumber = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON DatafeedStatusExample where
  parseJSON =
    Core.withObject
      "DatafeedStatusExample"
      ( \o ->
          DatafeedStatusExample
            Core.<$> (o Core..:? "itemId")
            Core.<*> (o Core..:? "lineNumber")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON DatafeedStatusExample where
  toJSON DatafeedStatusExample {..} =
    Core.object
      ( Core.catMaybes
          [ ("itemId" Core..=) Core.<$> itemId,
            ("lineNumber" Core..=) Core.. Core.AsText
              Core.<$> lineNumber,
            ("value" Core..=) Core.<$> value
          ]
      )

--
-- /See:/ 'newDatafeedTarget' smart constructor.
data DatafeedTarget = DatafeedTarget
  { -- | The country where the items in the feed will be included in the search index, represented as a CLDR territory code.
    country :: (Core.Maybe Core.Text),
    -- | The list of destinations to exclude for this target (corresponds to cleared check boxes in Merchant Center).
    excludedDestinations :: (Core.Maybe [Core.Text]),
    -- | The list of destinations to include for this target (corresponds to checked check boxes in Merchant Center). Default destinations are always included unless provided in @excludedDestinations@.
    includedDestinations :: (Core.Maybe [Core.Text]),
    -- | The two-letter ISO 639-1 language of the items in the feed. Must be a valid language for @targets[].country@.
    language :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatafeedTarget' with the minimum fields required to make a request.
newDatafeedTarget ::
  DatafeedTarget
newDatafeedTarget =
  DatafeedTarget
    { country = Core.Nothing,
      excludedDestinations = Core.Nothing,
      includedDestinations = Core.Nothing,
      language = Core.Nothing
    }

instance Core.FromJSON DatafeedTarget where
  parseJSON =
    Core.withObject
      "DatafeedTarget"
      ( \o ->
          DatafeedTarget
            Core.<$> (o Core..:? "country")
            Core.<*> ( o Core..:? "excludedDestinations"
                         Core..!= Core.mempty
                     )
            Core.<*> ( o Core..:? "includedDestinations"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "language")
      )

instance Core.ToJSON DatafeedTarget where
  toJSON DatafeedTarget {..} =
    Core.object
      ( Core.catMaybes
          [ ("country" Core..=) Core.<$> country,
            ("excludedDestinations" Core..=)
              Core.<$> excludedDestinations,
            ("includedDestinations" Core..=)
              Core.<$> includedDestinations,
            ("language" Core..=) Core.<$> language
          ]
      )

--
-- /See:/ 'newDatafeedsCustomBatchRequest' smart constructor.
newtype DatafeedsCustomBatchRequest = DatafeedsCustomBatchRequest
  { -- | The request entries to be processed in the batch.
    entries :: (Core.Maybe [DatafeedsCustomBatchRequestEntry])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatafeedsCustomBatchRequest' with the minimum fields required to make a request.
newDatafeedsCustomBatchRequest ::
  DatafeedsCustomBatchRequest
newDatafeedsCustomBatchRequest =
  DatafeedsCustomBatchRequest {entries = Core.Nothing}

instance Core.FromJSON DatafeedsCustomBatchRequest where
  parseJSON =
    Core.withObject
      "DatafeedsCustomBatchRequest"
      ( \o ->
          DatafeedsCustomBatchRequest
            Core.<$> (o Core..:? "entries" Core..!= Core.mempty)
      )

instance Core.ToJSON DatafeedsCustomBatchRequest where
  toJSON DatafeedsCustomBatchRequest {..} =
    Core.object
      ( Core.catMaybes
          [("entries" Core..=) Core.<$> entries]
      )

-- | A batch entry encoding a single non-batch datafeeds request.
--
-- /See:/ 'newDatafeedsCustomBatchRequestEntry' smart constructor.
data DatafeedsCustomBatchRequestEntry = DatafeedsCustomBatchRequestEntry
  { -- | An entry ID, unique within the batch request.
    batchId :: (Core.Maybe Core.Word32),
    -- | The data feed to insert.
    datafeed :: (Core.Maybe Datafeed),
    -- | The ID of the data feed to get, delete or fetch.
    datafeedId :: (Core.Maybe Core.Word64),
    -- | The ID of the managing account.
    merchantId :: (Core.Maybe Core.Word64),
    -- | The method of the batch entry. Acceptable values are: - \"@delete@\" - \"@fetchNow@\" - \"@get@\" - \"@insert@\" - \"@update@\"
    method :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatafeedsCustomBatchRequestEntry' with the minimum fields required to make a request.
newDatafeedsCustomBatchRequestEntry ::
  DatafeedsCustomBatchRequestEntry
newDatafeedsCustomBatchRequestEntry =
  DatafeedsCustomBatchRequestEntry
    { batchId = Core.Nothing,
      datafeed = Core.Nothing,
      datafeedId = Core.Nothing,
      merchantId = Core.Nothing,
      method = Core.Nothing
    }

instance
  Core.FromJSON
    DatafeedsCustomBatchRequestEntry
  where
  parseJSON =
    Core.withObject
      "DatafeedsCustomBatchRequestEntry"
      ( \o ->
          DatafeedsCustomBatchRequestEntry
            Core.<$> (o Core..:? "batchId")
            Core.<*> (o Core..:? "datafeed")
            Core.<*> (o Core..:? "datafeedId")
            Core.<*> (o Core..:? "merchantId")
            Core.<*> (o Core..:? "method")
      )

instance Core.ToJSON DatafeedsCustomBatchRequestEntry where
  toJSON DatafeedsCustomBatchRequestEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchId" Core..=) Core.<$> batchId,
            ("datafeed" Core..=) Core.<$> datafeed,
            ("datafeedId" Core..=) Core.. Core.AsText
              Core.<$> datafeedId,
            ("merchantId" Core..=) Core.. Core.AsText
              Core.<$> merchantId,
            ("method" Core..=) Core.<$> method
          ]
      )

--
-- /See:/ 'newDatafeedsCustomBatchResponse' smart constructor.
data DatafeedsCustomBatchResponse = DatafeedsCustomBatchResponse
  { -- | The result of the execution of the batch requests.
    entries :: (Core.Maybe [DatafeedsCustomBatchResponseEntry]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#datafeedsCustomBatchResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatafeedsCustomBatchResponse' with the minimum fields required to make a request.
newDatafeedsCustomBatchResponse ::
  DatafeedsCustomBatchResponse
newDatafeedsCustomBatchResponse =
  DatafeedsCustomBatchResponse {entries = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON DatafeedsCustomBatchResponse where
  parseJSON =
    Core.withObject
      "DatafeedsCustomBatchResponse"
      ( \o ->
          DatafeedsCustomBatchResponse
            Core.<$> (o Core..:? "entries" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON DatafeedsCustomBatchResponse where
  toJSON DatafeedsCustomBatchResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("entries" Core..=) Core.<$> entries,
            ("kind" Core..=) Core.<$> kind
          ]
      )

-- | A batch entry encoding a single non-batch datafeeds response.
--
-- /See:/ 'newDatafeedsCustomBatchResponseEntry' smart constructor.
data DatafeedsCustomBatchResponseEntry = DatafeedsCustomBatchResponseEntry
  { -- | The ID of the request entry this entry responds to.
    batchId :: (Core.Maybe Core.Word32),
    -- | The requested data feed. Defined if and only if the request was successful.
    datafeed :: (Core.Maybe Datafeed),
    -- | A list of errors defined if and only if the request failed.
    errors :: (Core.Maybe Errors)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatafeedsCustomBatchResponseEntry' with the minimum fields required to make a request.
newDatafeedsCustomBatchResponseEntry ::
  DatafeedsCustomBatchResponseEntry
newDatafeedsCustomBatchResponseEntry =
  DatafeedsCustomBatchResponseEntry
    { batchId = Core.Nothing,
      datafeed = Core.Nothing,
      errors = Core.Nothing
    }

instance
  Core.FromJSON
    DatafeedsCustomBatchResponseEntry
  where
  parseJSON =
    Core.withObject
      "DatafeedsCustomBatchResponseEntry"
      ( \o ->
          DatafeedsCustomBatchResponseEntry
            Core.<$> (o Core..:? "batchId")
            Core.<*> (o Core..:? "datafeed")
            Core.<*> (o Core..:? "errors")
      )

instance
  Core.ToJSON
    DatafeedsCustomBatchResponseEntry
  where
  toJSON DatafeedsCustomBatchResponseEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchId" Core..=) Core.<$> batchId,
            ("datafeed" Core..=) Core.<$> datafeed,
            ("errors" Core..=) Core.<$> errors
          ]
      )

--
-- /See:/ 'newDatafeedsFetchNowResponse' smart constructor.
newtype DatafeedsFetchNowResponse = DatafeedsFetchNowResponse
  { -- | Identifies what kind of resource this is. Value: the fixed string \"@content#datafeedsFetchNowResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatafeedsFetchNowResponse' with the minimum fields required to make a request.
newDatafeedsFetchNowResponse ::
  DatafeedsFetchNowResponse
newDatafeedsFetchNowResponse = DatafeedsFetchNowResponse {kind = Core.Nothing}

instance Core.FromJSON DatafeedsFetchNowResponse where
  parseJSON =
    Core.withObject
      "DatafeedsFetchNowResponse"
      ( \o ->
          DatafeedsFetchNowResponse
            Core.<$> (o Core..:? "kind")
      )

instance Core.ToJSON DatafeedsFetchNowResponse where
  toJSON DatafeedsFetchNowResponse {..} =
    Core.object
      (Core.catMaybes [("kind" Core..=) Core.<$> kind])

--
-- /See:/ 'newDatafeedsListResponse' smart constructor.
data DatafeedsListResponse = DatafeedsListResponse
  { -- | Identifies what kind of resource this is. Value: the fixed string \"@content#datafeedsListResponse@\".
    kind :: (Core.Maybe Core.Text),
    -- | The token for the retrieval of the next page of datafeeds.
    nextPageToken :: (Core.Maybe Core.Text),
    -- |
    resources :: (Core.Maybe [Datafeed])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatafeedsListResponse' with the minimum fields required to make a request.
newDatafeedsListResponse ::
  DatafeedsListResponse
newDatafeedsListResponse =
  DatafeedsListResponse
    { kind = Core.Nothing,
      nextPageToken = Core.Nothing,
      resources = Core.Nothing
    }

instance Core.FromJSON DatafeedsListResponse where
  parseJSON =
    Core.withObject
      "DatafeedsListResponse"
      ( \o ->
          DatafeedsListResponse
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "resources" Core..!= Core.mempty)
      )

instance Core.ToJSON DatafeedsListResponse where
  toJSON DatafeedsListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("resources" Core..=) Core.<$> resources
          ]
      )

--
-- /See:/ 'newDatafeedstatusesCustomBatchRequest' smart constructor.
newtype DatafeedstatusesCustomBatchRequest = DatafeedstatusesCustomBatchRequest
  { -- | The request entries to be processed in the batch.
    entries :: (Core.Maybe [DatafeedstatusesCustomBatchRequestEntry])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatafeedstatusesCustomBatchRequest' with the minimum fields required to make a request.
newDatafeedstatusesCustomBatchRequest ::
  DatafeedstatusesCustomBatchRequest
newDatafeedstatusesCustomBatchRequest =
  DatafeedstatusesCustomBatchRequest {entries = Core.Nothing}

instance
  Core.FromJSON
    DatafeedstatusesCustomBatchRequest
  where
  parseJSON =
    Core.withObject
      "DatafeedstatusesCustomBatchRequest"
      ( \o ->
          DatafeedstatusesCustomBatchRequest
            Core.<$> (o Core..:? "entries" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    DatafeedstatusesCustomBatchRequest
  where
  toJSON DatafeedstatusesCustomBatchRequest {..} =
    Core.object
      ( Core.catMaybes
          [("entries" Core..=) Core.<$> entries]
      )

-- | A batch entry encoding a single non-batch datafeedstatuses request.
--
-- /See:/ 'newDatafeedstatusesCustomBatchRequestEntry' smart constructor.
data DatafeedstatusesCustomBatchRequestEntry = DatafeedstatusesCustomBatchRequestEntry
  { -- | An entry ID, unique within the batch request.
    batchId :: (Core.Maybe Core.Word32),
    -- | The country for which to get the datafeed status. If this parameter is provided then language must also be provided. Note that for multi-target datafeeds this parameter is required.
    country :: (Core.Maybe Core.Text),
    -- | The ID of the data feed to get.
    datafeedId :: (Core.Maybe Core.Word64),
    -- | The language for which to get the datafeed status. If this parameter is provided then country must also be provided. Note that for multi-target datafeeds this parameter is required.
    language :: (Core.Maybe Core.Text),
    -- | The ID of the managing account.
    merchantId :: (Core.Maybe Core.Word64),
    -- | The method of the batch entry. Acceptable values are: - \"@get@\"
    method :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatafeedstatusesCustomBatchRequestEntry' with the minimum fields required to make a request.
newDatafeedstatusesCustomBatchRequestEntry ::
  DatafeedstatusesCustomBatchRequestEntry
newDatafeedstatusesCustomBatchRequestEntry =
  DatafeedstatusesCustomBatchRequestEntry
    { batchId = Core.Nothing,
      country = Core.Nothing,
      datafeedId = Core.Nothing,
      language = Core.Nothing,
      merchantId = Core.Nothing,
      method = Core.Nothing
    }

instance
  Core.FromJSON
    DatafeedstatusesCustomBatchRequestEntry
  where
  parseJSON =
    Core.withObject
      "DatafeedstatusesCustomBatchRequestEntry"
      ( \o ->
          DatafeedstatusesCustomBatchRequestEntry
            Core.<$> (o Core..:? "batchId")
            Core.<*> (o Core..:? "country")
            Core.<*> (o Core..:? "datafeedId")
            Core.<*> (o Core..:? "language")
            Core.<*> (o Core..:? "merchantId")
            Core.<*> (o Core..:? "method")
      )

instance
  Core.ToJSON
    DatafeedstatusesCustomBatchRequestEntry
  where
  toJSON DatafeedstatusesCustomBatchRequestEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchId" Core..=) Core.<$> batchId,
            ("country" Core..=) Core.<$> country,
            ("datafeedId" Core..=) Core.. Core.AsText
              Core.<$> datafeedId,
            ("language" Core..=) Core.<$> language,
            ("merchantId" Core..=) Core.. Core.AsText
              Core.<$> merchantId,
            ("method" Core..=) Core.<$> method
          ]
      )

--
-- /See:/ 'newDatafeedstatusesCustomBatchResponse' smart constructor.
data DatafeedstatusesCustomBatchResponse = DatafeedstatusesCustomBatchResponse
  { -- | The result of the execution of the batch requests.
    entries :: (Core.Maybe [DatafeedstatusesCustomBatchResponseEntry]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#datafeedstatusesCustomBatchResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatafeedstatusesCustomBatchResponse' with the minimum fields required to make a request.
newDatafeedstatusesCustomBatchResponse ::
  DatafeedstatusesCustomBatchResponse
newDatafeedstatusesCustomBatchResponse =
  DatafeedstatusesCustomBatchResponse
    { entries = Core.Nothing,
      kind = Core.Nothing
    }

instance
  Core.FromJSON
    DatafeedstatusesCustomBatchResponse
  where
  parseJSON =
    Core.withObject
      "DatafeedstatusesCustomBatchResponse"
      ( \o ->
          DatafeedstatusesCustomBatchResponse
            Core.<$> (o Core..:? "entries" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind")
      )

instance
  Core.ToJSON
    DatafeedstatusesCustomBatchResponse
  where
  toJSON DatafeedstatusesCustomBatchResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("entries" Core..=) Core.<$> entries,
            ("kind" Core..=) Core.<$> kind
          ]
      )

-- | A batch entry encoding a single non-batch datafeedstatuses response.
--
-- /See:/ 'newDatafeedstatusesCustomBatchResponseEntry' smart constructor.
data DatafeedstatusesCustomBatchResponseEntry = DatafeedstatusesCustomBatchResponseEntry
  { -- | The ID of the request entry this entry responds to.
    batchId :: (Core.Maybe Core.Word32),
    -- | The requested data feed status. Defined if and only if the request was successful.
    datafeedStatus :: (Core.Maybe DatafeedStatus),
    -- | A list of errors defined if and only if the request failed.
    errors :: (Core.Maybe Errors)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatafeedstatusesCustomBatchResponseEntry' with the minimum fields required to make a request.
newDatafeedstatusesCustomBatchResponseEntry ::
  DatafeedstatusesCustomBatchResponseEntry
newDatafeedstatusesCustomBatchResponseEntry =
  DatafeedstatusesCustomBatchResponseEntry
    { batchId = Core.Nothing,
      datafeedStatus = Core.Nothing,
      errors = Core.Nothing
    }

instance
  Core.FromJSON
    DatafeedstatusesCustomBatchResponseEntry
  where
  parseJSON =
    Core.withObject
      "DatafeedstatusesCustomBatchResponseEntry"
      ( \o ->
          DatafeedstatusesCustomBatchResponseEntry
            Core.<$> (o Core..:? "batchId")
            Core.<*> (o Core..:? "datafeedStatus")
            Core.<*> (o Core..:? "errors")
      )

instance
  Core.ToJSON
    DatafeedstatusesCustomBatchResponseEntry
  where
  toJSON DatafeedstatusesCustomBatchResponseEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchId" Core..=) Core.<$> batchId,
            ("datafeedStatus" Core..=) Core.<$> datafeedStatus,
            ("errors" Core..=) Core.<$> errors
          ]
      )

--
-- /See:/ 'newDatafeedstatusesListResponse' smart constructor.
data DatafeedstatusesListResponse = DatafeedstatusesListResponse
  { -- | Identifies what kind of resource this is. Value: the fixed string \"@content#datafeedstatusesListResponse@\".
    kind :: (Core.Maybe Core.Text),
    -- | The token for the retrieval of the next page of datafeed statuses.
    nextPageToken :: (Core.Maybe Core.Text),
    -- |
    resources :: (Core.Maybe [DatafeedStatus])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatafeedstatusesListResponse' with the minimum fields required to make a request.
newDatafeedstatusesListResponse ::
  DatafeedstatusesListResponse
newDatafeedstatusesListResponse =
  DatafeedstatusesListResponse
    { kind = Core.Nothing,
      nextPageToken = Core.Nothing,
      resources = Core.Nothing
    }

instance Core.FromJSON DatafeedstatusesListResponse where
  parseJSON =
    Core.withObject
      "DatafeedstatusesListResponse"
      ( \o ->
          DatafeedstatusesListResponse
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "resources" Core..!= Core.mempty)
      )

instance Core.ToJSON DatafeedstatusesListResponse where
  toJSON DatafeedstatusesListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("resources" Core..=) Core.<$> resources
          ]
      )

-- | Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
--
-- /See:/ 'newDate' smart constructor.
data Date = Date
  { -- | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn\'t significant.
    day :: (Core.Maybe Core.Int32),
    -- | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.
    month :: (Core.Maybe Core.Int32),
    -- | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.
    year :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Date' with the minimum fields required to make a request.
newDate ::
  Date
newDate = Date {day = Core.Nothing, month = Core.Nothing, year = Core.Nothing}

instance Core.FromJSON Date where
  parseJSON =
    Core.withObject
      "Date"
      ( \o ->
          Date
            Core.<$> (o Core..:? "day")
            Core.<*> (o Core..:? "month")
            Core.<*> (o Core..:? "year")
      )

instance Core.ToJSON Date where
  toJSON Date {..} =
    Core.object
      ( Core.catMaybes
          [ ("day" Core..=) Core.<$> day,
            ("month" Core..=) Core.<$> month,
            ("year" Core..=) Core.<$> year
          ]
      )

-- | Represents civil time (or occasionally physical time). This type can represent a civil time in one of a few possible ways: * When utc/offset is set and time/zone is unset: a civil time on a calendar day with a particular offset from UTC. * When time/zone is set and utc/offset is unset: a civil time on a calendar day in a particular time zone. * When neither time/zone nor utc/offset is set: a civil time on a calendar day in local time. The date is relative to the Proleptic Gregorian Calendar. If year is 0, the DateTime is considered not to have a specific year. month and day must have valid, non-zero values. This type may also be used to represent a physical time if all the date and time fields are set and either case of the @time_offset@ oneof is set. Consider using @Timestamp@ message for physical time instead. If your use case also would like to store the user\'s timezone, that can be done in another field. This type is more flexible than some applications may want. Make sure to document and validate your
-- application\'s limitations.
--
-- /See:/ 'newDateTime' smart constructor.
data DateTime' = DateTime'
  { -- | Required. Day of month. Must be from 1 to 31 and valid for the year and month.
    day :: (Core.Maybe Core.Int32),
    -- | Required. Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value \"24:00:00\" for scenarios like business closing time.
    hours :: (Core.Maybe Core.Int32),
    -- | Required. Minutes of hour of day. Must be from 0 to 59.
    minutes :: (Core.Maybe Core.Int32),
    -- | Required. Month of year. Must be from 1 to 12.
    month :: (Core.Maybe Core.Int32),
    -- | Required. Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
    nanos :: (Core.Maybe Core.Int32),
    -- | Required. Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds.
    seconds :: (Core.Maybe Core.Int32),
    -- | Time zone.
    timeZone :: (Core.Maybe TimeZone),
    -- | UTC offset. Must be whole seconds, between -18 hours and +18 hours. For example, a UTC offset of -4:00 would be represented as { seconds: -14400 }.
    utcOffset :: (Core.Maybe Core.Duration),
    -- | Optional. Year of date. Must be from 1 to 9999, or 0 if specifying a datetime without a year.
    year :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DateTime' with the minimum fields required to make a request.
newDateTime ::
  DateTime'
newDateTime =
  DateTime'
    { day = Core.Nothing,
      hours = Core.Nothing,
      minutes = Core.Nothing,
      month = Core.Nothing,
      nanos = Core.Nothing,
      seconds = Core.Nothing,
      timeZone = Core.Nothing,
      utcOffset = Core.Nothing,
      year = Core.Nothing
    }

instance Core.FromJSON DateTime' where
  parseJSON =
    Core.withObject
      "DateTime'"
      ( \o ->
          DateTime'
            Core.<$> (o Core..:? "day")
            Core.<*> (o Core..:? "hours")
            Core.<*> (o Core..:? "minutes")
            Core.<*> (o Core..:? "month")
            Core.<*> (o Core..:? "nanos")
            Core.<*> (o Core..:? "seconds")
            Core.<*> (o Core..:? "timeZone")
            Core.<*> (o Core..:? "utcOffset")
            Core.<*> (o Core..:? "year")
      )

instance Core.ToJSON DateTime' where
  toJSON DateTime' {..} =
    Core.object
      ( Core.catMaybes
          [ ("day" Core..=) Core.<$> day,
            ("hours" Core..=) Core.<$> hours,
            ("minutes" Core..=) Core.<$> minutes,
            ("month" Core..=) Core.<$> month,
            ("nanos" Core..=) Core.<$> nanos,
            ("seconds" Core..=) Core.<$> seconds,
            ("timeZone" Core..=) Core.<$> timeZone,
            ("utcOffset" Core..=) Core.<$> utcOffset,
            ("year" Core..=) Core.<$> year
          ]
      )

--
-- /See:/ 'newDeliveryTime' smart constructor.
data DeliveryTime = DeliveryTime
  { -- | Business days cutoff time definition. If not configured the cutoff time will be defaulted to 8AM PST.
    cutoffTime :: (Core.Maybe CutoffTime),
    -- | The business days during which orders can be handled. If not provided, Monday to Friday business days will be assumed.
    handlingBusinessDayConfig :: (Core.Maybe BusinessDayConfig),
    -- | Holiday cutoff definitions. If configured, they specify order cutoff times for holiday-specific shipping.
    holidayCutoffs :: (Core.Maybe [HolidayCutoff]),
    -- | Maximum number of business days spent before an order is shipped. 0 means same day shipped, 1 means next day shipped. Must be greater than or equal to @minHandlingTimeInDays@.
    maxHandlingTimeInDays :: (Core.Maybe Core.Word32),
    -- | Maximum number of business days that are spent in transit. 0 means same day delivery, 1 means next day delivery. Must be greater than or equal to @minTransitTimeInDays@.
    maxTransitTimeInDays :: (Core.Maybe Core.Word32),
    -- | Minimum number of business days spent before an order is shipped. 0 means same day shipped, 1 means next day shipped.
    minHandlingTimeInDays :: (Core.Maybe Core.Word32),
    -- | Minimum number of business days that are spent in transit. 0 means same day delivery, 1 means next day delivery. Either @{min,max}TransitTimeInDays@ or @transitTimeTable@ must be set, but not both.
    minTransitTimeInDays :: (Core.Maybe Core.Word32),
    -- | The business days during which orders can be in-transit. If not provided, Monday to Friday business days will be assumed.
    transitBusinessDayConfig :: (Core.Maybe BusinessDayConfig),
    -- | Transit time table, number of business days spent in transit based on row and column dimensions. Either @{min,max}TransitTimeInDays@ or @transitTimeTable@ can be set, but not both.
    transitTimeTable :: (Core.Maybe TransitTable),
    -- | Indicates that the delivery time should be calculated per warehouse (shipping origin location) based on the settings of the selected carrier. When set, no other transit time related field in DeliveryTime should be set.
    warehouseBasedDeliveryTimes :: (Core.Maybe [WarehouseBasedDeliveryTime])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeliveryTime' with the minimum fields required to make a request.
newDeliveryTime ::
  DeliveryTime
newDeliveryTime =
  DeliveryTime
    { cutoffTime = Core.Nothing,
      handlingBusinessDayConfig = Core.Nothing,
      holidayCutoffs = Core.Nothing,
      maxHandlingTimeInDays = Core.Nothing,
      maxTransitTimeInDays = Core.Nothing,
      minHandlingTimeInDays = Core.Nothing,
      minTransitTimeInDays = Core.Nothing,
      transitBusinessDayConfig = Core.Nothing,
      transitTimeTable = Core.Nothing,
      warehouseBasedDeliveryTimes = Core.Nothing
    }

instance Core.FromJSON DeliveryTime where
  parseJSON =
    Core.withObject
      "DeliveryTime"
      ( \o ->
          DeliveryTime
            Core.<$> (o Core..:? "cutoffTime")
            Core.<*> (o Core..:? "handlingBusinessDayConfig")
            Core.<*> (o Core..:? "holidayCutoffs" Core..!= Core.mempty)
            Core.<*> (o Core..:? "maxHandlingTimeInDays")
            Core.<*> (o Core..:? "maxTransitTimeInDays")
            Core.<*> (o Core..:? "minHandlingTimeInDays")
            Core.<*> (o Core..:? "minTransitTimeInDays")
            Core.<*> (o Core..:? "transitBusinessDayConfig")
            Core.<*> (o Core..:? "transitTimeTable")
            Core.<*> ( o Core..:? "warehouseBasedDeliveryTimes"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON DeliveryTime where
  toJSON DeliveryTime {..} =
    Core.object
      ( Core.catMaybes
          [ ("cutoffTime" Core..=) Core.<$> cutoffTime,
            ("handlingBusinessDayConfig" Core..=)
              Core.<$> handlingBusinessDayConfig,
            ("holidayCutoffs" Core..=) Core.<$> holidayCutoffs,
            ("maxHandlingTimeInDays" Core..=)
              Core.<$> maxHandlingTimeInDays,
            ("maxTransitTimeInDays" Core..=)
              Core.<$> maxTransitTimeInDays,
            ("minHandlingTimeInDays" Core..=)
              Core.<$> minHandlingTimeInDays,
            ("minTransitTimeInDays" Core..=)
              Core.<$> minTransitTimeInDays,
            ("transitBusinessDayConfig" Core..=)
              Core.<$> transitBusinessDayConfig,
            ("transitTimeTable" Core..=)
              Core.<$> transitTimeTable,
            ("warehouseBasedDeliveryTimes" Core..=)
              Core.<$> warehouseBasedDeliveryTimes
          ]
      )

-- | Additional information required for E/COMMERCE/PLATFORM link type.
--
-- /See:/ 'newECommercePlatformLinkInfo' smart constructor.
newtype ECommercePlatformLinkInfo = ECommercePlatformLinkInfo
  { -- | The id used by the third party service provider to identify the merchant.
    externalAccountId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ECommercePlatformLinkInfo' with the minimum fields required to make a request.
newECommercePlatformLinkInfo ::
  ECommercePlatformLinkInfo
newECommercePlatformLinkInfo =
  ECommercePlatformLinkInfo {externalAccountId = Core.Nothing}

instance Core.FromJSON ECommercePlatformLinkInfo where
  parseJSON =
    Core.withObject
      "ECommercePlatformLinkInfo"
      ( \o ->
          ECommercePlatformLinkInfo
            Core.<$> (o Core..:? "externalAccountId")
      )

instance Core.ToJSON ECommercePlatformLinkInfo where
  toJSON ECommercePlatformLinkInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("externalAccountId" Core..=)
              Core.<$> externalAccountId
          ]
      )

-- | An error returned by the API.
--
-- /See:/ 'newError' smart constructor.
data Error' = Error'
  { -- | The domain of the error.
    domain :: (Core.Maybe Core.Text),
    -- | A description of the error.
    message :: (Core.Maybe Core.Text),
    -- | The error code.
    reason :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Error' with the minimum fields required to make a request.
newError ::
  Error'
newError =
  Error' {domain = Core.Nothing, message = Core.Nothing, reason = Core.Nothing}

instance Core.FromJSON Error' where
  parseJSON =
    Core.withObject
      "Error'"
      ( \o ->
          Error'
            Core.<$> (o Core..:? "domain")
            Core.<*> (o Core..:? "message")
            Core.<*> (o Core..:? "reason")
      )

instance Core.ToJSON Error' where
  toJSON Error' {..} =
    Core.object
      ( Core.catMaybes
          [ ("domain" Core..=) Core.<$> domain,
            ("message" Core..=) Core.<$> message,
            ("reason" Core..=) Core.<$> reason
          ]
      )

-- | A list of errors returned by a failed batch entry.
--
-- /See:/ 'newErrors' smart constructor.
data Errors = Errors
  { -- | The HTTP status of the first error in @errors@.
    code :: (Core.Maybe Core.Word32),
    -- | A list of errors.
    errors :: (Core.Maybe [Error']),
    -- | The message of the first error in @errors@.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Errors' with the minimum fields required to make a request.
newErrors ::
  Errors
newErrors =
  Errors {code = Core.Nothing, errors = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Errors where
  parseJSON =
    Core.withObject
      "Errors"
      ( \o ->
          Errors
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "errors" Core..!= Core.mempty)
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON Errors where
  toJSON Errors {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("errors" Core..=) Core.<$> errors,
            ("message" Core..=) Core.<$> message
          ]
      )

-- | Response message for GetFreeListingsProgramStatus.
--
-- /See:/ 'newFreeListingsProgramStatus' smart constructor.
data FreeListingsProgramStatus = FreeListingsProgramStatus
  { -- | State of the program, It is set to enabled if there are offers for at least one region.
    globalState :: (Core.Maybe FreeListingsProgramStatus_GlobalState),
    -- | Status of the program in each region. Regions with the same status and review eligibility are grouped together in @regionCodes@.
    regionStatuses :: (Core.Maybe [FreeListingsProgramStatusRegionStatus])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FreeListingsProgramStatus' with the minimum fields required to make a request.
newFreeListingsProgramStatus ::
  FreeListingsProgramStatus
newFreeListingsProgramStatus =
  FreeListingsProgramStatus
    { globalState = Core.Nothing,
      regionStatuses = Core.Nothing
    }

instance Core.FromJSON FreeListingsProgramStatus where
  parseJSON =
    Core.withObject
      "FreeListingsProgramStatus"
      ( \o ->
          FreeListingsProgramStatus
            Core.<$> (o Core..:? "globalState")
            Core.<*> (o Core..:? "regionStatuses" Core..!= Core.mempty)
      )

instance Core.ToJSON FreeListingsProgramStatus where
  toJSON FreeListingsProgramStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("globalState" Core..=) Core.<$> globalState,
            ("regionStatuses" Core..=) Core.<$> regionStatuses
          ]
      )

-- | Status of program and region.
--
-- /See:/ 'newFreeListingsProgramStatusRegionStatus' smart constructor.
data FreeListingsProgramStatusRegionStatus = FreeListingsProgramStatusRegionStatus
  { -- | Date by which @eligibility_status@ will go from @WARNING@ to @DISAPPROVED@. It will be present when @eligibility_status@ is @WARNING@. Date will be provided in ISO 8601 format: YYYY-MM-DD
    disapprovalDate :: (Core.Maybe Core.Text),
    -- | Eligibility status of the standard free listing program.
    eligibilityStatus ::
      ( Core.Maybe
          FreeListingsProgramStatusRegionStatus_EligibilityStatus
      ),
    -- | These issues must be fixed to become eligible for the review.
    onboardingIssues :: (Core.Maybe [Core.Text]),
    -- | The two-letter <https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2 ISO 3166-1 alpha-2> codes for all the regions with the same @eligibilityStatus@ and @reviewEligibility@.
    regionCodes :: (Core.Maybe [Core.Text]),
    -- | If a program in a given country is eligible for review. It will be present only if eligibility status is @DISAPPROVED@.
    reviewEligibilityStatus ::
      ( Core.Maybe
          FreeListingsProgramStatusRegionStatus_ReviewEligibilityStatus
      ),
    -- | Review ineligibility reason if account is not eligible for review.
    reviewIneligibilityReason ::
      ( Core.Maybe
          FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason
      ),
    -- | Reason if a program in a given country is not eligible for review. Populated only if @review_eligibility_status@ is @INELIGIBLE@.
    reviewIneligibilityReasonDescription :: (Core.Maybe Core.Text),
    -- | This contains additional information specific to review ineligibility reasons. If review is ineligible because of @IN_COOLDOWN_PERIOD@, it will contain timestamp for cooldown period.
    reviewIneligibilityReasonDetails ::
      ( Core.Maybe
          FreeListingsProgramStatusReviewIneligibilityReasonDetails
      ),
    -- | These issues will be evaluated in review process. Fix all the issues before requesting the review.
    reviewIssues :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FreeListingsProgramStatusRegionStatus' with the minimum fields required to make a request.
newFreeListingsProgramStatusRegionStatus ::
  FreeListingsProgramStatusRegionStatus
newFreeListingsProgramStatusRegionStatus =
  FreeListingsProgramStatusRegionStatus
    { disapprovalDate = Core.Nothing,
      eligibilityStatus = Core.Nothing,
      onboardingIssues = Core.Nothing,
      regionCodes = Core.Nothing,
      reviewEligibilityStatus = Core.Nothing,
      reviewIneligibilityReason = Core.Nothing,
      reviewIneligibilityReasonDescription = Core.Nothing,
      reviewIneligibilityReasonDetails = Core.Nothing,
      reviewIssues = Core.Nothing
    }

instance
  Core.FromJSON
    FreeListingsProgramStatusRegionStatus
  where
  parseJSON =
    Core.withObject
      "FreeListingsProgramStatusRegionStatus"
      ( \o ->
          FreeListingsProgramStatusRegionStatus
            Core.<$> (o Core..:? "disapprovalDate")
            Core.<*> (o Core..:? "eligibilityStatus")
            Core.<*> (o Core..:? "onboardingIssues" Core..!= Core.mempty)
            Core.<*> (o Core..:? "regionCodes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "reviewEligibilityStatus")
            Core.<*> (o Core..:? "reviewIneligibilityReason")
            Core.<*> (o Core..:? "reviewIneligibilityReasonDescription")
            Core.<*> (o Core..:? "reviewIneligibilityReasonDetails")
            Core.<*> (o Core..:? "reviewIssues" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    FreeListingsProgramStatusRegionStatus
  where
  toJSON FreeListingsProgramStatusRegionStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("disapprovalDate" Core..=)
              Core.<$> disapprovalDate,
            ("eligibilityStatus" Core..=)
              Core.<$> eligibilityStatus,
            ("onboardingIssues" Core..=)
              Core.<$> onboardingIssues,
            ("regionCodes" Core..=) Core.<$> regionCodes,
            ("reviewEligibilityStatus" Core..=)
              Core.<$> reviewEligibilityStatus,
            ("reviewIneligibilityReason" Core..=)
              Core.<$> reviewIneligibilityReason,
            ("reviewIneligibilityReasonDescription" Core..=)
              Core.<$> reviewIneligibilityReasonDescription,
            ("reviewIneligibilityReasonDetails" Core..=)
              Core.<$> reviewIneligibilityReasonDetails,
            ("reviewIssues" Core..=) Core.<$> reviewIssues
          ]
      )

-- | Additional details for review ineligibility reasons.
--
-- /See:/ 'newFreeListingsProgramStatusReviewIneligibilityReasonDetails' smart constructor.
newtype FreeListingsProgramStatusReviewIneligibilityReasonDetails = FreeListingsProgramStatusReviewIneligibilityReasonDetails
  { -- | This timestamp represents end of cooldown period for review ineligbility reason @IN_COOLDOWN_PERIOD@.
    cooldownTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FreeListingsProgramStatusReviewIneligibilityReasonDetails' with the minimum fields required to make a request.
newFreeListingsProgramStatusReviewIneligibilityReasonDetails ::
  FreeListingsProgramStatusReviewIneligibilityReasonDetails
newFreeListingsProgramStatusReviewIneligibilityReasonDetails =
  FreeListingsProgramStatusReviewIneligibilityReasonDetails
    { cooldownTime = Core.Nothing
    }

instance
  Core.FromJSON
    FreeListingsProgramStatusReviewIneligibilityReasonDetails
  where
  parseJSON =
    Core.withObject
      "FreeListingsProgramStatusReviewIneligibilityReasonDetails"
      ( \o ->
          FreeListingsProgramStatusReviewIneligibilityReasonDetails
            Core.<$> (o Core..:? "cooldownTime")
      )

instance
  Core.ToJSON
    FreeListingsProgramStatusReviewIneligibilityReasonDetails
  where
  toJSON
    FreeListingsProgramStatusReviewIneligibilityReasonDetails {..} =
      Core.object
        ( Core.catMaybes
            [("cooldownTime" Core..=) Core.<$> cooldownTime]
        )

--
-- /See:/ 'newGmbAccounts' smart constructor.
data GmbAccounts = GmbAccounts
  { -- | The ID of the Merchant Center account.
    accountId :: (Core.Maybe Core.Word64),
    -- | A list of Business Profiles which are available to the merchant.
    gmbAccounts :: (Core.Maybe [GmbAccountsGmbAccount])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GmbAccounts' with the minimum fields required to make a request.
newGmbAccounts ::
  GmbAccounts
newGmbAccounts =
  GmbAccounts {accountId = Core.Nothing, gmbAccounts = Core.Nothing}

instance Core.FromJSON GmbAccounts where
  parseJSON =
    Core.withObject
      "GmbAccounts"
      ( \o ->
          GmbAccounts
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "gmbAccounts" Core..!= Core.mempty)
      )

instance Core.ToJSON GmbAccounts where
  toJSON GmbAccounts {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.. Core.AsText
              Core.<$> accountId,
            ("gmbAccounts" Core..=) Core.<$> gmbAccounts
          ]
      )

--
-- /See:/ 'newGmbAccountsGmbAccount' smart constructor.
data GmbAccountsGmbAccount = GmbAccountsGmbAccount
  { -- | The email which identifies the Business Profile.
    email :: (Core.Maybe Core.Text),
    -- | Number of listings under this account.
    listingCount :: (Core.Maybe Core.Word64),
    -- | The name of the Business Profile.
    name :: (Core.Maybe Core.Text),
    -- | The type of the Business Profile (User or Business).
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GmbAccountsGmbAccount' with the minimum fields required to make a request.
newGmbAccountsGmbAccount ::
  GmbAccountsGmbAccount
newGmbAccountsGmbAccount =
  GmbAccountsGmbAccount
    { email = Core.Nothing,
      listingCount = Core.Nothing,
      name = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON GmbAccountsGmbAccount where
  parseJSON =
    Core.withObject
      "GmbAccountsGmbAccount"
      ( \o ->
          GmbAccountsGmbAccount
            Core.<$> (o Core..:? "email")
            Core.<*> (o Core..:? "listingCount")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON GmbAccountsGmbAccount where
  toJSON GmbAccountsGmbAccount {..} =
    Core.object
      ( Core.catMaybes
          [ ("email" Core..=) Core.<$> email,
            ("listingCount" Core..=) Core.. Core.AsText
              Core.<$> listingCount,
            ("name" Core..=) Core.<$> name,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | A non-empty list of row or column headers for a table. Exactly one of @prices@, @weights@, @numItems@, @postalCodeGroupNames@, or @location@ must be set.
--
-- /See:/ 'newHeaders' smart constructor.
data Headers = Headers
  { -- | A list of location ID sets. Must be non-empty. Can only be set if all other fields are not set.
    locations :: (Core.Maybe [LocationIdSet]),
    -- | A list of inclusive number of items upper bounds. The last value can be @\"infinity\"@. For example @[\"10\", \"50\", \"infinity\"]@ represents the headers \"\<= 10 items\", \"\<= 50 items\", and \"> 50 items\". Must be non-empty. Can only be set if all other fields are not set.
    numberOfItems :: (Core.Maybe [Core.Text]),
    -- | A list of postal group names. The last value can be @\"all other locations\"@. Example: @[\"zone 1\", \"zone 2\", \"all other locations\"]@. The referred postal code groups must match the delivery country of the service. Must be non-empty. Can only be set if all other fields are not set.
    postalCodeGroupNames :: (Core.Maybe [Core.Text]),
    -- | A list of inclusive order price upper bounds. The last price\'s value can be @\"infinity\"@. For example @[{\"value\": \"10\", \"currency\": \"USD\"}, {\"value\": \"500\", \"currency\": \"USD\"}, {\"value\": \"infinity\", \"currency\": \"USD\"}]@ represents the headers \"\<= $10\", \"\<= $500\", and \"> $500\". All prices within a service must have the same currency. Must be non-empty. Can only be set if all other fields are not set.
    prices :: (Core.Maybe [Price]),
    -- | A list of inclusive order weight upper bounds. The last weight\'s value can be @\"infinity\"@. For example @[{\"value\": \"10\", \"unit\": \"kg\"}, {\"value\": \"50\", \"unit\": \"kg\"}, {\"value\": \"infinity\", \"unit\": \"kg\"}]@ represents the headers \"\<= 10kg\", \"\<= 50kg\", and \"> 50kg\". All weights within a service must have the same unit. Must be non-empty. Can only be set if all other fields are not set.
    weights :: (Core.Maybe [Weight])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Headers' with the minimum fields required to make a request.
newHeaders ::
  Headers
newHeaders =
  Headers
    { locations = Core.Nothing,
      numberOfItems = Core.Nothing,
      postalCodeGroupNames = Core.Nothing,
      prices = Core.Nothing,
      weights = Core.Nothing
    }

instance Core.FromJSON Headers where
  parseJSON =
    Core.withObject
      "Headers"
      ( \o ->
          Headers
            Core.<$> (o Core..:? "locations" Core..!= Core.mempty)
            Core.<*> (o Core..:? "numberOfItems" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "postalCodeGroupNames"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "prices" Core..!= Core.mempty)
            Core.<*> (o Core..:? "weights" Core..!= Core.mempty)
      )

instance Core.ToJSON Headers where
  toJSON Headers {..} =
    Core.object
      ( Core.catMaybes
          [ ("locations" Core..=) Core.<$> locations,
            ("numberOfItems" Core..=) Core.<$> numberOfItems,
            ("postalCodeGroupNames" Core..=)
              Core.<$> postalCodeGroupNames,
            ("prices" Core..=) Core.<$> prices,
            ("weights" Core..=) Core.<$> weights
          ]
      )

--
-- /See:/ 'newHolidayCutoff' smart constructor.
data HolidayCutoff = HolidayCutoff
  { -- | Date of the order deadline, in ISO 8601 format. For example, \"2016-11-29\" for 29th November 2016. Required.
    deadlineDate :: (Core.Maybe Core.Text),
    -- | Hour of the day on the deadline date until which the order has to be placed to qualify for the delivery guarantee. Possible values are: 0 (midnight), 1, ..., 12 (noon), 13, ..., 23. Required.
    deadlineHour :: (Core.Maybe Core.Word32),
    -- | Timezone identifier for the deadline hour (for example, \"Europe\/Zurich\"). List of identifiers. Required.
    deadlineTimezone :: (Core.Maybe Core.Text),
    -- | Unique identifier for the holiday. Required.
    holidayId :: (Core.Maybe Core.Text),
    -- | Date on which the deadline will become visible to consumers in ISO 8601 format. For example, \"2016-10-31\" for 31st October 2016. Required.
    visibleFromDate :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HolidayCutoff' with the minimum fields required to make a request.
newHolidayCutoff ::
  HolidayCutoff
newHolidayCutoff =
  HolidayCutoff
    { deadlineDate = Core.Nothing,
      deadlineHour = Core.Nothing,
      deadlineTimezone = Core.Nothing,
      holidayId = Core.Nothing,
      visibleFromDate = Core.Nothing
    }

instance Core.FromJSON HolidayCutoff where
  parseJSON =
    Core.withObject
      "HolidayCutoff"
      ( \o ->
          HolidayCutoff
            Core.<$> (o Core..:? "deadlineDate")
            Core.<*> (o Core..:? "deadlineHour")
            Core.<*> (o Core..:? "deadlineTimezone")
            Core.<*> (o Core..:? "holidayId")
            Core.<*> (o Core..:? "visibleFromDate")
      )

instance Core.ToJSON HolidayCutoff where
  toJSON HolidayCutoff {..} =
    Core.object
      ( Core.catMaybes
          [ ("deadlineDate" Core..=) Core.<$> deadlineDate,
            ("deadlineHour" Core..=) Core.<$> deadlineHour,
            ("deadlineTimezone" Core..=)
              Core.<$> deadlineTimezone,
            ("holidayId" Core..=) Core.<$> holidayId,
            ("visibleFromDate" Core..=)
              Core.<$> visibleFromDate
          ]
      )

--
-- /See:/ 'newHolidaysHoliday' smart constructor.
data HolidaysHoliday = HolidaysHoliday
  { -- | The CLDR territory code of the country in which the holiday is available. For example, \"US\", \"DE\", \"GB\". A holiday cutoff can only be configured in a shipping settings service with matching delivery country. Always present.
    countryCode :: (Core.Maybe Core.Text),
    -- | Date of the holiday, in ISO 8601 format. For example, \"2016-12-25\" for Christmas 2016. Always present.
    date :: (Core.Maybe Core.Text),
    -- | Date on which the order has to arrive at the customer\'s, in ISO 8601 format. For example, \"2016-12-24\" for 24th December 2016. Always present.
    deliveryGuaranteeDate :: (Core.Maybe Core.Text),
    -- | Hour of the day in the delivery location\'s timezone on the guaranteed delivery date by which the order has to arrive at the customer\'s. Possible values are: 0 (midnight), 1, ..., 12 (noon), 13, ..., 23. Always present.
    deliveryGuaranteeHour :: (Core.Maybe Core.Word64),
    -- | Unique identifier for the holiday to be used when configuring holiday cutoffs. Always present.
    id :: (Core.Maybe Core.Text),
    -- | The holiday type. Always present. Acceptable values are: - \"@Christmas@\" - \"@Easter@\" - \"@Father\'s Day@\" - \"@Halloween@\" - \"@Independence Day (USA)@\" - \"@Mother\'s Day@\" - \"@Thanksgiving@\" - \"@Valentine\'s Day@\"
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HolidaysHoliday' with the minimum fields required to make a request.
newHolidaysHoliday ::
  HolidaysHoliday
newHolidaysHoliday =
  HolidaysHoliday
    { countryCode = Core.Nothing,
      date = Core.Nothing,
      deliveryGuaranteeDate = Core.Nothing,
      deliveryGuaranteeHour = Core.Nothing,
      id = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON HolidaysHoliday where
  parseJSON =
    Core.withObject
      "HolidaysHoliday"
      ( \o ->
          HolidaysHoliday
            Core.<$> (o Core..:? "countryCode")
            Core.<*> (o Core..:? "date")
            Core.<*> (o Core..:? "deliveryGuaranteeDate")
            Core.<*> (o Core..:? "deliveryGuaranteeHour")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON HolidaysHoliday where
  toJSON HolidaysHoliday {..} =
    Core.object
      ( Core.catMaybes
          [ ("countryCode" Core..=) Core.<$> countryCode,
            ("date" Core..=) Core.<$> date,
            ("deliveryGuaranteeDate" Core..=)
              Core.<$> deliveryGuaranteeDate,
            ("deliveryGuaranteeHour" Core..=) Core.. Core.AsText
              Core.<$> deliveryGuaranteeHour,
            ("id" Core..=) Core.<$> id,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Map of inapplicability details.
--
-- /See:/ 'newInapplicabilityDetails' smart constructor.
data InapplicabilityDetails = InapplicabilityDetails
  { -- | Count of this inapplicable reason code.
    inapplicableCount :: (Core.Maybe Core.Int64),
    -- | Reason code this rule was not applicable.
    inapplicableReason :: (Core.Maybe InapplicabilityDetails_InapplicableReason)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InapplicabilityDetails' with the minimum fields required to make a request.
newInapplicabilityDetails ::
  InapplicabilityDetails
newInapplicabilityDetails =
  InapplicabilityDetails
    { inapplicableCount = Core.Nothing,
      inapplicableReason = Core.Nothing
    }

instance Core.FromJSON InapplicabilityDetails where
  parseJSON =
    Core.withObject
      "InapplicabilityDetails"
      ( \o ->
          InapplicabilityDetails
            Core.<$> (o Core..:? "inapplicableCount")
            Core.<*> (o Core..:? "inapplicableReason")
      )

instance Core.ToJSON InapplicabilityDetails where
  toJSON InapplicabilityDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("inapplicableCount" Core..=) Core.. Core.AsText
              Core.<$> inapplicableCount,
            ("inapplicableReason" Core..=)
              Core.<$> inapplicableReason
          ]
      )

--
-- /See:/ 'newInstallment' smart constructor.
data Installment = Installment
  { -- | The amount the buyer has to pay per month.
    amount :: (Core.Maybe Price),
    -- | The number of installments the buyer has to pay.
    months :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Installment' with the minimum fields required to make a request.
newInstallment ::
  Installment
newInstallment = Installment {amount = Core.Nothing, months = Core.Nothing}

instance Core.FromJSON Installment where
  parseJSON =
    Core.withObject
      "Installment"
      ( \o ->
          Installment
            Core.<$> (o Core..:? "amount") Core.<*> (o Core..:? "months")
      )

instance Core.ToJSON Installment where
  toJSON Installment {..} =
    Core.object
      ( Core.catMaybes
          [ ("amount" Core..=) Core.<$> amount,
            ("months" Core..=) Core.. Core.AsText
              Core.<$> months
          ]
      )

--
-- /See:/ 'newInvoiceSummary' smart constructor.
data InvoiceSummary = InvoiceSummary
  { -- | Summary of the total amounts of the additional charges.
    additionalChargeSummaries :: (Core.Maybe [InvoiceSummaryAdditionalChargeSummary]),
    -- | [required] Total price for the product.
    productTotal :: (Core.Maybe Amount)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InvoiceSummary' with the minimum fields required to make a request.
newInvoiceSummary ::
  InvoiceSummary
newInvoiceSummary =
  InvoiceSummary
    { additionalChargeSummaries = Core.Nothing,
      productTotal = Core.Nothing
    }

instance Core.FromJSON InvoiceSummary where
  parseJSON =
    Core.withObject
      "InvoiceSummary"
      ( \o ->
          InvoiceSummary
            Core.<$> ( o Core..:? "additionalChargeSummaries"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "productTotal")
      )

instance Core.ToJSON InvoiceSummary where
  toJSON InvoiceSummary {..} =
    Core.object
      ( Core.catMaybes
          [ ("additionalChargeSummaries" Core..=)
              Core.<$> additionalChargeSummaries,
            ("productTotal" Core..=) Core.<$> productTotal
          ]
      )

--
-- /See:/ 'newInvoiceSummaryAdditionalChargeSummary' smart constructor.
data InvoiceSummaryAdditionalChargeSummary = InvoiceSummaryAdditionalChargeSummary
  { -- | [required] Total additional charge for this type.
    totalAmount :: (Core.Maybe Amount),
    -- | [required] Type of the additional charge. Acceptable values are: - \"@shipping@\"
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InvoiceSummaryAdditionalChargeSummary' with the minimum fields required to make a request.
newInvoiceSummaryAdditionalChargeSummary ::
  InvoiceSummaryAdditionalChargeSummary
newInvoiceSummaryAdditionalChargeSummary =
  InvoiceSummaryAdditionalChargeSummary
    { totalAmount = Core.Nothing,
      type' = Core.Nothing
    }

instance
  Core.FromJSON
    InvoiceSummaryAdditionalChargeSummary
  where
  parseJSON =
    Core.withObject
      "InvoiceSummaryAdditionalChargeSummary"
      ( \o ->
          InvoiceSummaryAdditionalChargeSummary
            Core.<$> (o Core..:? "totalAmount")
            Core.<*> (o Core..:? "type")
      )

instance
  Core.ToJSON
    InvoiceSummaryAdditionalChargeSummary
  where
  toJSON InvoiceSummaryAdditionalChargeSummary {..} =
    Core.object
      ( Core.catMaybes
          [ ("totalAmount" Core..=) Core.<$> totalAmount,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | The IDs of labels that should be assigned to the CSS domain.
--
-- /See:/ 'newLabelIds' smart constructor.
newtype LabelIds = LabelIds
  { -- | The list of label IDs.
    labelIds :: (Core.Maybe [Core.Int64])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LabelIds' with the minimum fields required to make a request.
newLabelIds ::
  LabelIds
newLabelIds = LabelIds {labelIds = Core.Nothing}

instance Core.FromJSON LabelIds where
  parseJSON =
    Core.withObject
      "LabelIds"
      ( \o ->
          LabelIds
            Core.<$> (o Core..:? "labelIds" Core..!= Core.mempty)
      )

instance Core.ToJSON LabelIds where
  toJSON LabelIds {..} =
    Core.object
      ( Core.catMaybes
          [("labelIds" Core..=) Core.<$> labelIds]
      )

--
-- /See:/ 'newLiaAboutPageSettings' smart constructor.
data LiaAboutPageSettings = LiaAboutPageSettings
  { -- | The status of the verification process for the About page. Acceptable values are: - \"@active@\" - \"@inactive@\" - \"@pending@\"
    status :: (Core.Maybe Core.Text),
    -- | The URL for the About page.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiaAboutPageSettings' with the minimum fields required to make a request.
newLiaAboutPageSettings ::
  LiaAboutPageSettings
newLiaAboutPageSettings =
  LiaAboutPageSettings {status = Core.Nothing, url = Core.Nothing}

instance Core.FromJSON LiaAboutPageSettings where
  parseJSON =
    Core.withObject
      "LiaAboutPageSettings"
      ( \o ->
          LiaAboutPageSettings
            Core.<$> (o Core..:? "status") Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON LiaAboutPageSettings where
  toJSON LiaAboutPageSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("status" Core..=) Core.<$> status,
            ("url" Core..=) Core.<$> url
          ]
      )

--
-- /See:/ 'newLiaCountrySettings' smart constructor.
data LiaCountrySettings = LiaCountrySettings
  { -- | The settings for the About page.
    about :: (Core.Maybe LiaAboutPageSettings),
    -- | Required. CLDR country code (for example, \"US\").
    country :: (Core.Maybe Core.Text),
    -- | The status of the \"Merchant hosted local storefront\" feature.
    hostedLocalStorefrontActive :: (Core.Maybe Core.Bool),
    -- | LIA inventory verification settings.
    inventory :: (Core.Maybe LiaInventorySettings),
    -- | LIA \"On Display To Order\" settings.
    onDisplayToOrder :: (Core.Maybe LiaOnDisplayToOrderSettings),
    -- | The POS data provider linked with this country.
    posDataProvider :: (Core.Maybe LiaPosDataProvider),
    -- | The status of the \"Store pickup\" feature.
    storePickupActive :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiaCountrySettings' with the minimum fields required to make a request.
newLiaCountrySettings ::
  LiaCountrySettings
newLiaCountrySettings =
  LiaCountrySettings
    { about = Core.Nothing,
      country = Core.Nothing,
      hostedLocalStorefrontActive = Core.Nothing,
      inventory = Core.Nothing,
      onDisplayToOrder = Core.Nothing,
      posDataProvider = Core.Nothing,
      storePickupActive = Core.Nothing
    }

instance Core.FromJSON LiaCountrySettings where
  parseJSON =
    Core.withObject
      "LiaCountrySettings"
      ( \o ->
          LiaCountrySettings
            Core.<$> (o Core..:? "about")
            Core.<*> (o Core..:? "country")
            Core.<*> (o Core..:? "hostedLocalStorefrontActive")
            Core.<*> (o Core..:? "inventory")
            Core.<*> (o Core..:? "onDisplayToOrder")
            Core.<*> (o Core..:? "posDataProvider")
            Core.<*> (o Core..:? "storePickupActive")
      )

instance Core.ToJSON LiaCountrySettings where
  toJSON LiaCountrySettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("about" Core..=) Core.<$> about,
            ("country" Core..=) Core.<$> country,
            ("hostedLocalStorefrontActive" Core..=)
              Core.<$> hostedLocalStorefrontActive,
            ("inventory" Core..=) Core.<$> inventory,
            ("onDisplayToOrder" Core..=)
              Core.<$> onDisplayToOrder,
            ("posDataProvider" Core..=) Core.<$> posDataProvider,
            ("storePickupActive" Core..=)
              Core.<$> storePickupActive
          ]
      )

--
-- /See:/ 'newLiaInventorySettings' smart constructor.
data LiaInventorySettings = LiaInventorySettings
  { -- | The email of the contact for the inventory verification process.
    inventoryVerificationContactEmail :: (Core.Maybe Core.Text),
    -- | The name of the contact for the inventory verification process.
    inventoryVerificationContactName :: (Core.Maybe Core.Text),
    -- | The status of the verification contact. Acceptable values are: - \"@active@\" - \"@inactive@\" - \"@pending@\"
    inventoryVerificationContactStatus :: (Core.Maybe Core.Text),
    -- | The status of the inventory verification process. Acceptable values are: - \"@active@\" - \"@inactive@\" - \"@pending@\"
    status :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiaInventorySettings' with the minimum fields required to make a request.
newLiaInventorySettings ::
  LiaInventorySettings
newLiaInventorySettings =
  LiaInventorySettings
    { inventoryVerificationContactEmail = Core.Nothing,
      inventoryVerificationContactName = Core.Nothing,
      inventoryVerificationContactStatus = Core.Nothing,
      status = Core.Nothing
    }

instance Core.FromJSON LiaInventorySettings where
  parseJSON =
    Core.withObject
      "LiaInventorySettings"
      ( \o ->
          LiaInventorySettings
            Core.<$> (o Core..:? "inventoryVerificationContactEmail")
            Core.<*> (o Core..:? "inventoryVerificationContactName")
            Core.<*> (o Core..:? "inventoryVerificationContactStatus")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON LiaInventorySettings where
  toJSON LiaInventorySettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("inventoryVerificationContactEmail" Core..=)
              Core.<$> inventoryVerificationContactEmail,
            ("inventoryVerificationContactName" Core..=)
              Core.<$> inventoryVerificationContactName,
            ("inventoryVerificationContactStatus" Core..=)
              Core.<$> inventoryVerificationContactStatus,
            ("status" Core..=) Core.<$> status
          ]
      )

--
-- /See:/ 'newLiaOnDisplayToOrderSettings' smart constructor.
data LiaOnDisplayToOrderSettings = LiaOnDisplayToOrderSettings
  { -- | Shipping cost and policy URL.
    shippingCostPolicyUrl :: (Core.Maybe Core.Text),
    -- | The status of the ?On display to order? feature. Acceptable values are: - \"@active@\" - \"@inactive@\" - \"@pending@\"
    status :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiaOnDisplayToOrderSettings' with the minimum fields required to make a request.
newLiaOnDisplayToOrderSettings ::
  LiaOnDisplayToOrderSettings
newLiaOnDisplayToOrderSettings =
  LiaOnDisplayToOrderSettings
    { shippingCostPolicyUrl = Core.Nothing,
      status = Core.Nothing
    }

instance Core.FromJSON LiaOnDisplayToOrderSettings where
  parseJSON =
    Core.withObject
      "LiaOnDisplayToOrderSettings"
      ( \o ->
          LiaOnDisplayToOrderSettings
            Core.<$> (o Core..:? "shippingCostPolicyUrl")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON LiaOnDisplayToOrderSettings where
  toJSON LiaOnDisplayToOrderSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("shippingCostPolicyUrl" Core..=)
              Core.<$> shippingCostPolicyUrl,
            ("status" Core..=) Core.<$> status
          ]
      )

--
-- /See:/ 'newLiaPosDataProvider' smart constructor.
data LiaPosDataProvider = LiaPosDataProvider
  { -- | The ID of the POS data provider.
    posDataProviderId :: (Core.Maybe Core.Word64),
    -- | The account ID by which this merchant is known to the POS data provider.
    posExternalAccountId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiaPosDataProvider' with the minimum fields required to make a request.
newLiaPosDataProvider ::
  LiaPosDataProvider
newLiaPosDataProvider =
  LiaPosDataProvider
    { posDataProviderId = Core.Nothing,
      posExternalAccountId = Core.Nothing
    }

instance Core.FromJSON LiaPosDataProvider where
  parseJSON =
    Core.withObject
      "LiaPosDataProvider"
      ( \o ->
          LiaPosDataProvider
            Core.<$> (o Core..:? "posDataProviderId")
            Core.<*> (o Core..:? "posExternalAccountId")
      )

instance Core.ToJSON LiaPosDataProvider where
  toJSON LiaPosDataProvider {..} =
    Core.object
      ( Core.catMaybes
          [ ("posDataProviderId" Core..=) Core.. Core.AsText
              Core.<$> posDataProviderId,
            ("posExternalAccountId" Core..=)
              Core.<$> posExternalAccountId
          ]
      )

-- | Local Inventory ads (LIA) settings. All methods except listposdataproviders require the admin role.
--
-- /See:/ 'newLiaSettings' smart constructor.
data LiaSettings = LiaSettings
  { -- | The ID of the account to which these LIA settings belong. Ignored upon update, always present in get request responses.
    accountId :: (Core.Maybe Core.Word64),
    -- | The LIA settings for each country.
    countrySettings :: (Core.Maybe [LiaCountrySettings]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#liaSettings@\"
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiaSettings' with the minimum fields required to make a request.
newLiaSettings ::
  LiaSettings
newLiaSettings =
  LiaSettings
    { accountId = Core.Nothing,
      countrySettings = Core.Nothing,
      kind = Core.Nothing
    }

instance Core.FromJSON LiaSettings where
  parseJSON =
    Core.withObject
      "LiaSettings"
      ( \o ->
          LiaSettings
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "countrySettings" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON LiaSettings where
  toJSON LiaSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.. Core.AsText
              Core.<$> accountId,
            ("countrySettings" Core..=) Core.<$> countrySettings,
            ("kind" Core..=) Core.<$> kind
          ]
      )

--
-- /See:/ 'newLiasettingsCustomBatchRequest' smart constructor.
newtype LiasettingsCustomBatchRequest = LiasettingsCustomBatchRequest
  { -- | The request entries to be processed in the batch.
    entries :: (Core.Maybe [LiasettingsCustomBatchRequestEntry])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiasettingsCustomBatchRequest' with the minimum fields required to make a request.
newLiasettingsCustomBatchRequest ::
  LiasettingsCustomBatchRequest
newLiasettingsCustomBatchRequest =
  LiasettingsCustomBatchRequest {entries = Core.Nothing}

instance Core.FromJSON LiasettingsCustomBatchRequest where
  parseJSON =
    Core.withObject
      "LiasettingsCustomBatchRequest"
      ( \o ->
          LiasettingsCustomBatchRequest
            Core.<$> (o Core..:? "entries" Core..!= Core.mempty)
      )

instance Core.ToJSON LiasettingsCustomBatchRequest where
  toJSON LiasettingsCustomBatchRequest {..} =
    Core.object
      ( Core.catMaybes
          [("entries" Core..=) Core.<$> entries]
      )

--
-- /See:/ 'newLiasettingsCustomBatchRequestEntry' smart constructor.
data LiasettingsCustomBatchRequestEntry = LiasettingsCustomBatchRequestEntry
  { -- | The ID of the account for which to get\/update account LIA settings.
    accountId :: (Core.Maybe Core.Word64),
    -- | An entry ID, unique within the batch request.
    batchId :: (Core.Maybe Core.Word32),
    -- | Inventory validation contact email. Required only for SetInventoryValidationContact.
    contactEmail :: (Core.Maybe Core.Text),
    -- | Inventory validation contact name. Required only for SetInventoryValidationContact.
    contactName :: (Core.Maybe Core.Text),
    -- | The country code. Required only for RequestInventoryVerification.
    country :: (Core.Maybe Core.Text),
    -- | The Business Profile. Required only for RequestGmbAccess.
    gmbEmail :: (Core.Maybe Core.Text),
    -- | The account Lia settings to update. Only defined if the method is @update@.
    liaSettings :: (Core.Maybe LiaSettings),
    -- | The ID of the managing account.
    merchantId :: (Core.Maybe Core.Word64),
    -- | The method of the batch entry. Acceptable values are: - \"@get@\" - \"@getAccessibleGmbAccounts@\" - \"@requestGmbAccess@\" - \"@requestInventoryVerification@\" - \"@setInventoryVerificationContact@\" - \"@update@\"
    method :: (Core.Maybe Core.Text),
    -- | The ID of POS data provider. Required only for SetPosProvider.
    posDataProviderId :: (Core.Maybe Core.Word64),
    -- | The account ID by which this merchant is known to the POS provider.
    posExternalAccountId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiasettingsCustomBatchRequestEntry' with the minimum fields required to make a request.
newLiasettingsCustomBatchRequestEntry ::
  LiasettingsCustomBatchRequestEntry
newLiasettingsCustomBatchRequestEntry =
  LiasettingsCustomBatchRequestEntry
    { accountId = Core.Nothing,
      batchId = Core.Nothing,
      contactEmail = Core.Nothing,
      contactName = Core.Nothing,
      country = Core.Nothing,
      gmbEmail = Core.Nothing,
      liaSettings = Core.Nothing,
      merchantId = Core.Nothing,
      method = Core.Nothing,
      posDataProviderId = Core.Nothing,
      posExternalAccountId = Core.Nothing
    }

instance
  Core.FromJSON
    LiasettingsCustomBatchRequestEntry
  where
  parseJSON =
    Core.withObject
      "LiasettingsCustomBatchRequestEntry"
      ( \o ->
          LiasettingsCustomBatchRequestEntry
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "batchId")
            Core.<*> (o Core..:? "contactEmail")
            Core.<*> (o Core..:? "contactName")
            Core.<*> (o Core..:? "country")
            Core.<*> (o Core..:? "gmbEmail")
            Core.<*> (o Core..:? "liaSettings")
            Core.<*> (o Core..:? "merchantId")
            Core.<*> (o Core..:? "method")
            Core.<*> (o Core..:? "posDataProviderId")
            Core.<*> (o Core..:? "posExternalAccountId")
      )

instance
  Core.ToJSON
    LiasettingsCustomBatchRequestEntry
  where
  toJSON LiasettingsCustomBatchRequestEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.. Core.AsText
              Core.<$> accountId,
            ("batchId" Core..=) Core.<$> batchId,
            ("contactEmail" Core..=) Core.<$> contactEmail,
            ("contactName" Core..=) Core.<$> contactName,
            ("country" Core..=) Core.<$> country,
            ("gmbEmail" Core..=) Core.<$> gmbEmail,
            ("liaSettings" Core..=) Core.<$> liaSettings,
            ("merchantId" Core..=) Core.. Core.AsText
              Core.<$> merchantId,
            ("method" Core..=) Core.<$> method,
            ("posDataProviderId" Core..=) Core.. Core.AsText
              Core.<$> posDataProviderId,
            ("posExternalAccountId" Core..=)
              Core.<$> posExternalAccountId
          ]
      )

--
-- /See:/ 'newLiasettingsCustomBatchResponse' smart constructor.
data LiasettingsCustomBatchResponse = LiasettingsCustomBatchResponse
  { -- | The result of the execution of the batch requests.
    entries :: (Core.Maybe [LiasettingsCustomBatchResponseEntry]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#liasettingsCustomBatchResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiasettingsCustomBatchResponse' with the minimum fields required to make a request.
newLiasettingsCustomBatchResponse ::
  LiasettingsCustomBatchResponse
newLiasettingsCustomBatchResponse =
  LiasettingsCustomBatchResponse {entries = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON LiasettingsCustomBatchResponse where
  parseJSON =
    Core.withObject
      "LiasettingsCustomBatchResponse"
      ( \o ->
          LiasettingsCustomBatchResponse
            Core.<$> (o Core..:? "entries" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON LiasettingsCustomBatchResponse where
  toJSON LiasettingsCustomBatchResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("entries" Core..=) Core.<$> entries,
            ("kind" Core..=) Core.<$> kind
          ]
      )

--
-- /See:/ 'newLiasettingsCustomBatchResponseEntry' smart constructor.
data LiasettingsCustomBatchResponseEntry = LiasettingsCustomBatchResponseEntry
  { -- | The ID of the request entry to which this entry responds.
    batchId :: (Core.Maybe Core.Word32),
    -- | A list of errors defined if, and only if, the request failed.
    errors :: (Core.Maybe Errors),
    -- | The list of accessible Business Profiles.
    gmbAccounts :: (Core.Maybe GmbAccounts),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#liasettingsCustomBatchResponseEntry@\"
    kind :: (Core.Maybe Core.Text),
    -- | The retrieved or updated Lia settings.
    liaSettings :: (Core.Maybe LiaSettings),
    -- | The list of POS data providers.
    posDataProviders :: (Core.Maybe [PosDataProviders])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiasettingsCustomBatchResponseEntry' with the minimum fields required to make a request.
newLiasettingsCustomBatchResponseEntry ::
  LiasettingsCustomBatchResponseEntry
newLiasettingsCustomBatchResponseEntry =
  LiasettingsCustomBatchResponseEntry
    { batchId = Core.Nothing,
      errors = Core.Nothing,
      gmbAccounts = Core.Nothing,
      kind = Core.Nothing,
      liaSettings = Core.Nothing,
      posDataProviders = Core.Nothing
    }

instance
  Core.FromJSON
    LiasettingsCustomBatchResponseEntry
  where
  parseJSON =
    Core.withObject
      "LiasettingsCustomBatchResponseEntry"
      ( \o ->
          LiasettingsCustomBatchResponseEntry
            Core.<$> (o Core..:? "batchId")
            Core.<*> (o Core..:? "errors")
            Core.<*> (o Core..:? "gmbAccounts")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "liaSettings")
            Core.<*> (o Core..:? "posDataProviders" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    LiasettingsCustomBatchResponseEntry
  where
  toJSON LiasettingsCustomBatchResponseEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchId" Core..=) Core.<$> batchId,
            ("errors" Core..=) Core.<$> errors,
            ("gmbAccounts" Core..=) Core.<$> gmbAccounts,
            ("kind" Core..=) Core.<$> kind,
            ("liaSettings" Core..=) Core.<$> liaSettings,
            ("posDataProviders" Core..=)
              Core.<$> posDataProviders
          ]
      )

--
-- /See:/ 'newLiasettingsGetAccessibleGmbAccountsResponse' smart constructor.
data LiasettingsGetAccessibleGmbAccountsResponse = LiasettingsGetAccessibleGmbAccountsResponse
  { -- | The ID of the Merchant Center account.
    accountId :: (Core.Maybe Core.Word64),
    -- | A list of Business Profiles which are available to the merchant.
    gmbAccounts :: (Core.Maybe [GmbAccountsGmbAccount]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#liasettingsGetAccessibleGmbAccountsResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiasettingsGetAccessibleGmbAccountsResponse' with the minimum fields required to make a request.
newLiasettingsGetAccessibleGmbAccountsResponse ::
  LiasettingsGetAccessibleGmbAccountsResponse
newLiasettingsGetAccessibleGmbAccountsResponse =
  LiasettingsGetAccessibleGmbAccountsResponse
    { accountId = Core.Nothing,
      gmbAccounts = Core.Nothing,
      kind = Core.Nothing
    }

instance
  Core.FromJSON
    LiasettingsGetAccessibleGmbAccountsResponse
  where
  parseJSON =
    Core.withObject
      "LiasettingsGetAccessibleGmbAccountsResponse"
      ( \o ->
          LiasettingsGetAccessibleGmbAccountsResponse
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "gmbAccounts" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind")
      )

instance
  Core.ToJSON
    LiasettingsGetAccessibleGmbAccountsResponse
  where
  toJSON
    LiasettingsGetAccessibleGmbAccountsResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("accountId" Core..=) Core.. Core.AsText
                Core.<$> accountId,
              ("gmbAccounts" Core..=) Core.<$> gmbAccounts,
              ("kind" Core..=) Core.<$> kind
            ]
        )

--
-- /See:/ 'newLiasettingsListPosDataProvidersResponse' smart constructor.
data LiasettingsListPosDataProvidersResponse = LiasettingsListPosDataProvidersResponse
  { -- | Identifies what kind of resource this is. Value: the fixed string \"@content#liasettingsListPosDataProvidersResponse@\".
    kind :: (Core.Maybe Core.Text),
    -- | The list of POS data providers for each eligible country
    posDataProviders :: (Core.Maybe [PosDataProviders])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiasettingsListPosDataProvidersResponse' with the minimum fields required to make a request.
newLiasettingsListPosDataProvidersResponse ::
  LiasettingsListPosDataProvidersResponse
newLiasettingsListPosDataProvidersResponse =
  LiasettingsListPosDataProvidersResponse
    { kind = Core.Nothing,
      posDataProviders = Core.Nothing
    }

instance
  Core.FromJSON
    LiasettingsListPosDataProvidersResponse
  where
  parseJSON =
    Core.withObject
      "LiasettingsListPosDataProvidersResponse"
      ( \o ->
          LiasettingsListPosDataProvidersResponse
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "posDataProviders" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    LiasettingsListPosDataProvidersResponse
  where
  toJSON LiasettingsListPosDataProvidersResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("posDataProviders" Core..=)
              Core.<$> posDataProviders
          ]
      )

--
-- /See:/ 'newLiasettingsListResponse' smart constructor.
data LiasettingsListResponse = LiasettingsListResponse
  { -- | Identifies what kind of resource this is. Value: the fixed string \"@content#liasettingsListResponse@\".
    kind :: (Core.Maybe Core.Text),
    -- | The token for the retrieval of the next page of LIA settings.
    nextPageToken :: (Core.Maybe Core.Text),
    -- |
    resources :: (Core.Maybe [LiaSettings])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiasettingsListResponse' with the minimum fields required to make a request.
newLiasettingsListResponse ::
  LiasettingsListResponse
newLiasettingsListResponse =
  LiasettingsListResponse
    { kind = Core.Nothing,
      nextPageToken = Core.Nothing,
      resources = Core.Nothing
    }

instance Core.FromJSON LiasettingsListResponse where
  parseJSON =
    Core.withObject
      "LiasettingsListResponse"
      ( \o ->
          LiasettingsListResponse
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "resources" Core..!= Core.mempty)
      )

instance Core.ToJSON LiasettingsListResponse where
  toJSON LiasettingsListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("resources" Core..=) Core.<$> resources
          ]
      )

--
-- /See:/ 'newLiasettingsRequestGmbAccessResponse' smart constructor.
newtype LiasettingsRequestGmbAccessResponse = LiasettingsRequestGmbAccessResponse
  { -- | Identifies what kind of resource this is. Value: the fixed string \"@content#liasettingsRequestGmbAccessResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiasettingsRequestGmbAccessResponse' with the minimum fields required to make a request.
newLiasettingsRequestGmbAccessResponse ::
  LiasettingsRequestGmbAccessResponse
newLiasettingsRequestGmbAccessResponse =
  LiasettingsRequestGmbAccessResponse {kind = Core.Nothing}

instance
  Core.FromJSON
    LiasettingsRequestGmbAccessResponse
  where
  parseJSON =
    Core.withObject
      "LiasettingsRequestGmbAccessResponse"
      ( \o ->
          LiasettingsRequestGmbAccessResponse
            Core.<$> (o Core..:? "kind")
      )

instance
  Core.ToJSON
    LiasettingsRequestGmbAccessResponse
  where
  toJSON LiasettingsRequestGmbAccessResponse {..} =
    Core.object
      (Core.catMaybes [("kind" Core..=) Core.<$> kind])

--
-- /See:/ 'newLiasettingsRequestInventoryVerificationResponse' smart constructor.
newtype LiasettingsRequestInventoryVerificationResponse = LiasettingsRequestInventoryVerificationResponse
  { -- | Identifies what kind of resource this is. Value: the fixed string \"@content#liasettingsRequestInventoryVerificationResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiasettingsRequestInventoryVerificationResponse' with the minimum fields required to make a request.
newLiasettingsRequestInventoryVerificationResponse ::
  LiasettingsRequestInventoryVerificationResponse
newLiasettingsRequestInventoryVerificationResponse =
  LiasettingsRequestInventoryVerificationResponse {kind = Core.Nothing}

instance
  Core.FromJSON
    LiasettingsRequestInventoryVerificationResponse
  where
  parseJSON =
    Core.withObject
      "LiasettingsRequestInventoryVerificationResponse"
      ( \o ->
          LiasettingsRequestInventoryVerificationResponse
            Core.<$> (o Core..:? "kind")
      )

instance
  Core.ToJSON
    LiasettingsRequestInventoryVerificationResponse
  where
  toJSON
    LiasettingsRequestInventoryVerificationResponse {..} =
      Core.object
        (Core.catMaybes [("kind" Core..=) Core.<$> kind])

--
-- /See:/ 'newLiasettingsSetInventoryVerificationContactResponse' smart constructor.
newtype LiasettingsSetInventoryVerificationContactResponse = LiasettingsSetInventoryVerificationContactResponse
  { -- | Identifies what kind of resource this is. Value: the fixed string \"@content#liasettingsSetInventoryVerificationContactResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiasettingsSetInventoryVerificationContactResponse' with the minimum fields required to make a request.
newLiasettingsSetInventoryVerificationContactResponse ::
  LiasettingsSetInventoryVerificationContactResponse
newLiasettingsSetInventoryVerificationContactResponse =
  LiasettingsSetInventoryVerificationContactResponse {kind = Core.Nothing}

instance
  Core.FromJSON
    LiasettingsSetInventoryVerificationContactResponse
  where
  parseJSON =
    Core.withObject
      "LiasettingsSetInventoryVerificationContactResponse"
      ( \o ->
          LiasettingsSetInventoryVerificationContactResponse
            Core.<$> (o Core..:? "kind")
      )

instance
  Core.ToJSON
    LiasettingsSetInventoryVerificationContactResponse
  where
  toJSON
    LiasettingsSetInventoryVerificationContactResponse {..} =
      Core.object
        (Core.catMaybes [("kind" Core..=) Core.<$> kind])

--
-- /See:/ 'newLiasettingsSetPosDataProviderResponse' smart constructor.
newtype LiasettingsSetPosDataProviderResponse = LiasettingsSetPosDataProviderResponse
  { -- | Identifies what kind of resource this is. Value: the fixed string \"@content#liasettingsSetPosDataProviderResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiasettingsSetPosDataProviderResponse' with the minimum fields required to make a request.
newLiasettingsSetPosDataProviderResponse ::
  LiasettingsSetPosDataProviderResponse
newLiasettingsSetPosDataProviderResponse =
  LiasettingsSetPosDataProviderResponse {kind = Core.Nothing}

instance
  Core.FromJSON
    LiasettingsSetPosDataProviderResponse
  where
  parseJSON =
    Core.withObject
      "LiasettingsSetPosDataProviderResponse"
      ( \o ->
          LiasettingsSetPosDataProviderResponse
            Core.<$> (o Core..:? "kind")
      )

instance
  Core.ToJSON
    LiasettingsSetPosDataProviderResponse
  where
  toJSON LiasettingsSetPosDataProviderResponse {..} =
    Core.object
      (Core.catMaybes [("kind" Core..=) Core.<$> kind])

--
-- /See:/ 'newLinkService' smart constructor.
data LinkService = LinkService
  { -- | Service provided to or by the linked account. Acceptable values are: - \"@shoppingActionsOrderManagement@\" - \"@shoppingActionsProductManagement@\" - \"@shoppingAdsProductManagement@\" - \"@paymentProcessing@\"
    service :: (Core.Maybe Core.Text),
    -- | Status of the link Acceptable values are: - \"@active@\" - \"@inactive@\" - \"@pending@\"
    status :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LinkService' with the minimum fields required to make a request.
newLinkService ::
  LinkService
newLinkService = LinkService {service = Core.Nothing, status = Core.Nothing}

instance Core.FromJSON LinkService where
  parseJSON =
    Core.withObject
      "LinkService"
      ( \o ->
          LinkService
            Core.<$> (o Core..:? "service")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON LinkService where
  toJSON LinkService {..} =
    Core.object
      ( Core.catMaybes
          [ ("service" Core..=) Core.<$> service,
            ("status" Core..=) Core.<$> status
          ]
      )

--
-- /See:/ 'newLinkedAccount' smart constructor.
data LinkedAccount = LinkedAccount
  { -- | The ID of the linked account.
    linkedAccountId :: (Core.Maybe Core.Text),
    -- | List of provided services.
    services :: (Core.Maybe [LinkService])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LinkedAccount' with the minimum fields required to make a request.
newLinkedAccount ::
  LinkedAccount
newLinkedAccount =
  LinkedAccount {linkedAccountId = Core.Nothing, services = Core.Nothing}

instance Core.FromJSON LinkedAccount where
  parseJSON =
    Core.withObject
      "LinkedAccount"
      ( \o ->
          LinkedAccount
            Core.<$> (o Core..:? "linkedAccountId")
            Core.<*> (o Core..:? "services" Core..!= Core.mempty)
      )

instance Core.ToJSON LinkedAccount where
  toJSON LinkedAccount {..} =
    Core.object
      ( Core.catMaybes
          [ ("linkedAccountId" Core..=)
              Core.<$> linkedAccountId,
            ("services" Core..=) Core.<$> services
          ]
      )

-- | Response message for the @ListAccountLabels@ method.
--
-- /See:/ 'newListAccountLabelsResponse' smart constructor.
data ListAccountLabelsResponse = ListAccountLabelsResponse
  { -- | The labels from the specified account.
    accountLabels :: (Core.Maybe [AccountLabel]),
    -- | A token, which can be sent as @page_token@ to retrieve the next page. If this field is omitted, there are no subsequent pages.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListAccountLabelsResponse' with the minimum fields required to make a request.
newListAccountLabelsResponse ::
  ListAccountLabelsResponse
newListAccountLabelsResponse =
  ListAccountLabelsResponse
    { accountLabels = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListAccountLabelsResponse where
  parseJSON =
    Core.withObject
      "ListAccountLabelsResponse"
      ( \o ->
          ListAccountLabelsResponse
            Core.<$> (o Core..:? "accountLabels" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListAccountLabelsResponse where
  toJSON ListAccountLabelsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountLabels" Core..=) Core.<$> accountLabels,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response for listing account return carriers.
--
-- /See:/ 'newListAccountReturnCarrierResponse' smart constructor.
newtype ListAccountReturnCarrierResponse = ListAccountReturnCarrierResponse
  { -- | List of all available account return carriers for the merchant.
    accountReturnCarriers :: (Core.Maybe [AccountReturnCarrier])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListAccountReturnCarrierResponse' with the minimum fields required to make a request.
newListAccountReturnCarrierResponse ::
  ListAccountReturnCarrierResponse
newListAccountReturnCarrierResponse =
  ListAccountReturnCarrierResponse {accountReturnCarriers = Core.Nothing}

instance
  Core.FromJSON
    ListAccountReturnCarrierResponse
  where
  parseJSON =
    Core.withObject
      "ListAccountReturnCarrierResponse"
      ( \o ->
          ListAccountReturnCarrierResponse
            Core.<$> ( o Core..:? "accountReturnCarriers"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON ListAccountReturnCarrierResponse where
  toJSON ListAccountReturnCarrierResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountReturnCarriers" Core..=)
              Core.<$> accountReturnCarriers
          ]
      )

-- | Response message for the ListCollectionStatuses method.
--
-- /See:/ 'newListCollectionStatusesResponse' smart constructor.
data ListCollectionStatusesResponse = ListCollectionStatusesResponse
  { -- | A token, which can be sent as @page_token@ to retrieve the next page. If this field is omitted, there are no subsequent pages.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The collectionstatuses listed.
    resources :: (Core.Maybe [CollectionStatus])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListCollectionStatusesResponse' with the minimum fields required to make a request.
newListCollectionStatusesResponse ::
  ListCollectionStatusesResponse
newListCollectionStatusesResponse =
  ListCollectionStatusesResponse
    { nextPageToken = Core.Nothing,
      resources = Core.Nothing
    }

instance Core.FromJSON ListCollectionStatusesResponse where
  parseJSON =
    Core.withObject
      "ListCollectionStatusesResponse"
      ( \o ->
          ListCollectionStatusesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "resources" Core..!= Core.mempty)
      )

instance Core.ToJSON ListCollectionStatusesResponse where
  toJSON ListCollectionStatusesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("resources" Core..=) Core.<$> resources
          ]
      )

-- | Response message for the ListCollections method.
--
-- /See:/ 'newListCollectionsResponse' smart constructor.
data ListCollectionsResponse = ListCollectionsResponse
  { -- | A token, which can be sent as @page_token@ to retrieve the next page. If this field is omitted, there are no subsequent pages.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The collections listed.
    resources :: (Core.Maybe [Collection])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListCollectionsResponse' with the minimum fields required to make a request.
newListCollectionsResponse ::
  ListCollectionsResponse
newListCollectionsResponse =
  ListCollectionsResponse
    { nextPageToken = Core.Nothing,
      resources = Core.Nothing
    }

instance Core.FromJSON ListCollectionsResponse where
  parseJSON =
    Core.withObject
      "ListCollectionsResponse"
      ( \o ->
          ListCollectionsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "resources" Core..!= Core.mempty)
      )

instance Core.ToJSON ListCollectionsResponse where
  toJSON ListCollectionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("resources" Core..=) Core.<$> resources
          ]
      )

-- | The response message for the @ListCsses@ method
--
-- /See:/ 'newListCssesResponse' smart constructor.
data ListCssesResponse = ListCssesResponse
  { -- | The CSS domains affiliated with the specified CSS group.
    csses :: (Core.Maybe [Css]),
    -- | A token, which can be sent as @page_token@ to retrieve the next page. If this field is omitted, there are no subsequent pages.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListCssesResponse' with the minimum fields required to make a request.
newListCssesResponse ::
  ListCssesResponse
newListCssesResponse =
  ListCssesResponse {csses = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListCssesResponse where
  parseJSON =
    Core.withObject
      "ListCssesResponse"
      ( \o ->
          ListCssesResponse
            Core.<$> (o Core..:? "csses" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListCssesResponse where
  toJSON ListCssesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("csses" Core..=) Core.<$> csses,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response message for the @ListRegions@ method.
--
-- /See:/ 'newListRegionsResponse' smart constructor.
data ListRegionsResponse = ListRegionsResponse
  { -- | A token, which can be sent as @page_token@ to retrieve the next page. If this field is omitted, there are no subsequent pages.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The regions from the specified merchant.
    regions :: (Core.Maybe [Region])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListRegionsResponse' with the minimum fields required to make a request.
newListRegionsResponse ::
  ListRegionsResponse
newListRegionsResponse =
  ListRegionsResponse {nextPageToken = Core.Nothing, regions = Core.Nothing}

instance Core.FromJSON ListRegionsResponse where
  parseJSON =
    Core.withObject
      "ListRegionsResponse"
      ( \o ->
          ListRegionsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "regions" Core..!= Core.mempty)
      )

instance Core.ToJSON ListRegionsResponse where
  toJSON ListRegionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("regions" Core..=) Core.<$> regions
          ]
      )

-- | Response message for the ListRepricingProductReports method.
--
-- /See:/ 'newListRepricingProductReportsResponse' smart constructor.
data ListRepricingProductReportsResponse = ListRepricingProductReportsResponse
  { -- | A token for retrieving the next page. Its absence means there is no subsequent page.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Periodic reports for the given Repricing product.
    repricingProductReports :: (Core.Maybe [RepricingProductReport])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListRepricingProductReportsResponse' with the minimum fields required to make a request.
newListRepricingProductReportsResponse ::
  ListRepricingProductReportsResponse
newListRepricingProductReportsResponse =
  ListRepricingProductReportsResponse
    { nextPageToken = Core.Nothing,
      repricingProductReports = Core.Nothing
    }

instance
  Core.FromJSON
    ListRepricingProductReportsResponse
  where
  parseJSON =
    Core.withObject
      "ListRepricingProductReportsResponse"
      ( \o ->
          ListRepricingProductReportsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> ( o Core..:? "repricingProductReports"
                         Core..!= Core.mempty
                     )
      )

instance
  Core.ToJSON
    ListRepricingProductReportsResponse
  where
  toJSON ListRepricingProductReportsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("repricingProductReports" Core..=)
              Core.<$> repricingProductReports
          ]
      )

-- | Response message for the ListRepricingRuleReports method.
--
-- /See:/ 'newListRepricingRuleReportsResponse' smart constructor.
data ListRepricingRuleReportsResponse = ListRepricingRuleReportsResponse
  { -- | A token for retrieving the next page. Its absence means there is no subsequent page.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Daily reports for the given Repricing rule.
    repricingRuleReports :: (Core.Maybe [RepricingRuleReport])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListRepricingRuleReportsResponse' with the minimum fields required to make a request.
newListRepricingRuleReportsResponse ::
  ListRepricingRuleReportsResponse
newListRepricingRuleReportsResponse =
  ListRepricingRuleReportsResponse
    { nextPageToken = Core.Nothing,
      repricingRuleReports = Core.Nothing
    }

instance
  Core.FromJSON
    ListRepricingRuleReportsResponse
  where
  parseJSON =
    Core.withObject
      "ListRepricingRuleReportsResponse"
      ( \o ->
          ListRepricingRuleReportsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> ( o Core..:? "repricingRuleReports"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON ListRepricingRuleReportsResponse where
  toJSON ListRepricingRuleReportsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("repricingRuleReports" Core..=)
              Core.<$> repricingRuleReports
          ]
      )

-- | Response message for the @ListRepricingRules@ method.
--
-- /See:/ 'newListRepricingRulesResponse' smart constructor.
data ListRepricingRulesResponse = ListRepricingRulesResponse
  { -- | A token, which can be sent as @page_token@ to retrieve the next page. If this field is omitted, there are no subsequent pages.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The rules from the specified merchant.
    repricingRules :: (Core.Maybe [RepricingRule])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListRepricingRulesResponse' with the minimum fields required to make a request.
newListRepricingRulesResponse ::
  ListRepricingRulesResponse
newListRepricingRulesResponse =
  ListRepricingRulesResponse
    { nextPageToken = Core.Nothing,
      repricingRules = Core.Nothing
    }

instance Core.FromJSON ListRepricingRulesResponse where
  parseJSON =
    Core.withObject
      "ListRepricingRulesResponse"
      ( \o ->
          ListRepricingRulesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "repricingRules" Core..!= Core.mempty)
      )

instance Core.ToJSON ListRepricingRulesResponse where
  toJSON ListRepricingRulesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("repricingRules" Core..=) Core.<$> repricingRules
          ]
      )

-- | Response message for the @ListReturnPolicyOnline@ method.
--
-- /See:/ 'newListReturnPolicyOnlineResponse' smart constructor.
newtype ListReturnPolicyOnlineResponse = ListReturnPolicyOnlineResponse
  { -- | The retrieved return policies.
    returnPolicies :: (Core.Maybe [ReturnPolicyOnline])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListReturnPolicyOnlineResponse' with the minimum fields required to make a request.
newListReturnPolicyOnlineResponse ::
  ListReturnPolicyOnlineResponse
newListReturnPolicyOnlineResponse =
  ListReturnPolicyOnlineResponse {returnPolicies = Core.Nothing}

instance Core.FromJSON ListReturnPolicyOnlineResponse where
  parseJSON =
    Core.withObject
      "ListReturnPolicyOnlineResponse"
      ( \o ->
          ListReturnPolicyOnlineResponse
            Core.<$> (o Core..:? "returnPolicies" Core..!= Core.mempty)
      )

instance Core.ToJSON ListReturnPolicyOnlineResponse where
  toJSON ListReturnPolicyOnlineResponse {..} =
    Core.object
      ( Core.catMaybes
          [("returnPolicies" Core..=) Core.<$> returnPolicies]
      )

-- | Local inventory resource. For accepted attribute values, see the local product inventory feed specification.
--
-- /See:/ 'newLocalInventory' smart constructor.
data LocalInventory = LocalInventory
  { -- | Availability of the product. For accepted attribute values, see the local product inventory feed specification.
    availability :: (Core.Maybe Core.Text),
    -- | In-store product location.
    instoreProductLocation :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#localInventory@\"
    kind :: (Core.Maybe Core.Text),
    -- | Supported pickup method for this offer. Unless the value is \"not supported\", this field must be submitted together with @pickupSla@. For accepted attribute values, see the local product inventory feed specification.
    pickupMethod :: (Core.Maybe Core.Text),
    -- | Expected date that an order will be ready for pickup relative to the order date. Must be submitted together with @pickupMethod@. For accepted attribute values, see the local product inventory feed specification.
    pickupSla :: (Core.Maybe Core.Text),
    -- | Price of the product.
    price :: (Core.Maybe Price),
    -- | Quantity of the product. Must be nonnegative.
    quantity :: (Core.Maybe Core.Word32),
    -- | Sale price of the product. Mandatory if @sale_price_effective_date@ is defined.
    salePrice :: (Core.Maybe Price),
    -- | A date range represented by a pair of ISO 8601 dates separated by a space, comma, or slash. Both dates may be specified as \'null\' if undecided.
    salePriceEffectiveDate :: (Core.Maybe Core.Text),
    -- | Required. Store code of this local inventory resource.
    storeCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LocalInventory' with the minimum fields required to make a request.
newLocalInventory ::
  LocalInventory
newLocalInventory =
  LocalInventory
    { availability = Core.Nothing,
      instoreProductLocation = Core.Nothing,
      kind = Core.Nothing,
      pickupMethod = Core.Nothing,
      pickupSla = Core.Nothing,
      price = Core.Nothing,
      quantity = Core.Nothing,
      salePrice = Core.Nothing,
      salePriceEffectiveDate = Core.Nothing,
      storeCode = Core.Nothing
    }

instance Core.FromJSON LocalInventory where
  parseJSON =
    Core.withObject
      "LocalInventory"
      ( \o ->
          LocalInventory
            Core.<$> (o Core..:? "availability")
            Core.<*> (o Core..:? "instoreProductLocation")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "pickupMethod")
            Core.<*> (o Core..:? "pickupSla")
            Core.<*> (o Core..:? "price")
            Core.<*> (o Core..:? "quantity")
            Core.<*> (o Core..:? "salePrice")
            Core.<*> (o Core..:? "salePriceEffectiveDate")
            Core.<*> (o Core..:? "storeCode")
      )

instance Core.ToJSON LocalInventory where
  toJSON LocalInventory {..} =
    Core.object
      ( Core.catMaybes
          [ ("availability" Core..=) Core.<$> availability,
            ("instoreProductLocation" Core..=)
              Core.<$> instoreProductLocation,
            ("kind" Core..=) Core.<$> kind,
            ("pickupMethod" Core..=) Core.<$> pickupMethod,
            ("pickupSla" Core..=) Core.<$> pickupSla,
            ("price" Core..=) Core.<$> price,
            ("quantity" Core..=) Core.<$> quantity,
            ("salePrice" Core..=) Core.<$> salePrice,
            ("salePriceEffectiveDate" Core..=)
              Core.<$> salePriceEffectiveDate,
            ("storeCode" Core..=) Core.<$> storeCode
          ]
      )

--
-- /See:/ 'newLocalinventoryCustomBatchRequest' smart constructor.
newtype LocalinventoryCustomBatchRequest = LocalinventoryCustomBatchRequest
  { -- | The request entries to be processed in the batch.
    entries :: (Core.Maybe [LocalinventoryCustomBatchRequestEntry])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LocalinventoryCustomBatchRequest' with the minimum fields required to make a request.
newLocalinventoryCustomBatchRequest ::
  LocalinventoryCustomBatchRequest
newLocalinventoryCustomBatchRequest =
  LocalinventoryCustomBatchRequest {entries = Core.Nothing}

instance
  Core.FromJSON
    LocalinventoryCustomBatchRequest
  where
  parseJSON =
    Core.withObject
      "LocalinventoryCustomBatchRequest"
      ( \o ->
          LocalinventoryCustomBatchRequest
            Core.<$> (o Core..:? "entries" Core..!= Core.mempty)
      )

instance Core.ToJSON LocalinventoryCustomBatchRequest where
  toJSON LocalinventoryCustomBatchRequest {..} =
    Core.object
      ( Core.catMaybes
          [("entries" Core..=) Core.<$> entries]
      )

-- | Batch entry encoding a single local inventory update request.
--
-- /See:/ 'newLocalinventoryCustomBatchRequestEntry' smart constructor.
data LocalinventoryCustomBatchRequestEntry = LocalinventoryCustomBatchRequestEntry
  { -- | An entry ID, unique within the batch request.
    batchId :: (Core.Maybe Core.Word32),
    -- | Local inventory of the product.
    localInventory :: (Core.Maybe LocalInventory),
    -- | The ID of the managing account.
    merchantId :: (Core.Maybe Core.Word64),
    -- | Method of the batch request entry. Acceptable values are: - \"@insert@\"
    method :: (Core.Maybe Core.Text),
    -- | The ID of the product for which to update local inventory.
    productId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LocalinventoryCustomBatchRequestEntry' with the minimum fields required to make a request.
newLocalinventoryCustomBatchRequestEntry ::
  LocalinventoryCustomBatchRequestEntry
newLocalinventoryCustomBatchRequestEntry =
  LocalinventoryCustomBatchRequestEntry
    { batchId = Core.Nothing,
      localInventory = Core.Nothing,
      merchantId = Core.Nothing,
      method = Core.Nothing,
      productId = Core.Nothing
    }

instance
  Core.FromJSON
    LocalinventoryCustomBatchRequestEntry
  where
  parseJSON =
    Core.withObject
      "LocalinventoryCustomBatchRequestEntry"
      ( \o ->
          LocalinventoryCustomBatchRequestEntry
            Core.<$> (o Core..:? "batchId")
            Core.<*> (o Core..:? "localInventory")
            Core.<*> (o Core..:? "merchantId")
            Core.<*> (o Core..:? "method")
            Core.<*> (o Core..:? "productId")
      )

instance
  Core.ToJSON
    LocalinventoryCustomBatchRequestEntry
  where
  toJSON LocalinventoryCustomBatchRequestEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchId" Core..=) Core.<$> batchId,
            ("localInventory" Core..=) Core.<$> localInventory,
            ("merchantId" Core..=) Core.. Core.AsText
              Core.<$> merchantId,
            ("method" Core..=) Core.<$> method,
            ("productId" Core..=) Core.<$> productId
          ]
      )

--
-- /See:/ 'newLocalinventoryCustomBatchResponse' smart constructor.
data LocalinventoryCustomBatchResponse = LocalinventoryCustomBatchResponse
  { -- | The result of the execution of the batch requests.
    entries :: (Core.Maybe [LocalinventoryCustomBatchResponseEntry]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#localinventoryCustomBatchResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LocalinventoryCustomBatchResponse' with the minimum fields required to make a request.
newLocalinventoryCustomBatchResponse ::
  LocalinventoryCustomBatchResponse
newLocalinventoryCustomBatchResponse =
  LocalinventoryCustomBatchResponse
    { entries = Core.Nothing,
      kind = Core.Nothing
    }

instance
  Core.FromJSON
    LocalinventoryCustomBatchResponse
  where
  parseJSON =
    Core.withObject
      "LocalinventoryCustomBatchResponse"
      ( \o ->
          LocalinventoryCustomBatchResponse
            Core.<$> (o Core..:? "entries" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind")
      )

instance
  Core.ToJSON
    LocalinventoryCustomBatchResponse
  where
  toJSON LocalinventoryCustomBatchResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("entries" Core..=) Core.<$> entries,
            ("kind" Core..=) Core.<$> kind
          ]
      )

-- | Batch entry encoding a single local inventory update response.
--
-- /See:/ 'newLocalinventoryCustomBatchResponseEntry' smart constructor.
data LocalinventoryCustomBatchResponseEntry = LocalinventoryCustomBatchResponseEntry
  { -- | The ID of the request entry this entry responds to.
    batchId :: (Core.Maybe Core.Word32),
    -- | A list of errors defined if and only if the request failed.
    errors :: (Core.Maybe Errors),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#localinventoryCustomBatchResponseEntry@\"
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LocalinventoryCustomBatchResponseEntry' with the minimum fields required to make a request.
newLocalinventoryCustomBatchResponseEntry ::
  LocalinventoryCustomBatchResponseEntry
newLocalinventoryCustomBatchResponseEntry =
  LocalinventoryCustomBatchResponseEntry
    { batchId = Core.Nothing,
      errors = Core.Nothing,
      kind = Core.Nothing
    }

instance
  Core.FromJSON
    LocalinventoryCustomBatchResponseEntry
  where
  parseJSON =
    Core.withObject
      "LocalinventoryCustomBatchResponseEntry"
      ( \o ->
          LocalinventoryCustomBatchResponseEntry
            Core.<$> (o Core..:? "batchId")
            Core.<*> (o Core..:? "errors")
            Core.<*> (o Core..:? "kind")
      )

instance
  Core.ToJSON
    LocalinventoryCustomBatchResponseEntry
  where
  toJSON LocalinventoryCustomBatchResponseEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchId" Core..=) Core.<$> batchId,
            ("errors" Core..=) Core.<$> errors,
            ("kind" Core..=) Core.<$> kind
          ]
      )

--
-- /See:/ 'newLocationIdSet' smart constructor.
newtype LocationIdSet = LocationIdSet
  { -- | A non-empty list of location IDs. They must all be of the same location type (for example, state).
    locationIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LocationIdSet' with the minimum fields required to make a request.
newLocationIdSet ::
  LocationIdSet
newLocationIdSet = LocationIdSet {locationIds = Core.Nothing}

instance Core.FromJSON LocationIdSet where
  parseJSON =
    Core.withObject
      "LocationIdSet"
      ( \o ->
          LocationIdSet
            Core.<$> (o Core..:? "locationIds" Core..!= Core.mempty)
      )

instance Core.ToJSON LocationIdSet where
  toJSON LocationIdSet {..} =
    Core.object
      ( Core.catMaybes
          [("locationIds" Core..=) Core.<$> locationIds]
      )

--
-- /See:/ 'newLoyaltyPoints' smart constructor.
data LoyaltyPoints = LoyaltyPoints
  { -- | Name of loyalty points program. It is recommended to limit the name to 12 full-width characters or 24 Roman characters.
    name :: (Core.Maybe Core.Text),
    -- | The retailer\'s loyalty points in absolute value.
    pointsValue :: (Core.Maybe Core.Int64),
    -- | The ratio of a point when converted to currency. Google assumes currency based on Merchant Center settings. If ratio is left out, it defaults to 1.0.
    ratio :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoyaltyPoints' with the minimum fields required to make a request.
newLoyaltyPoints ::
  LoyaltyPoints
newLoyaltyPoints =
  LoyaltyPoints
    { name = Core.Nothing,
      pointsValue = Core.Nothing,
      ratio = Core.Nothing
    }

instance Core.FromJSON LoyaltyPoints where
  parseJSON =
    Core.withObject
      "LoyaltyPoints"
      ( \o ->
          LoyaltyPoints
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "pointsValue")
            Core.<*> (o Core..:? "ratio")
      )

instance Core.ToJSON LoyaltyPoints where
  toJSON LoyaltyPoints {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("pointsValue" Core..=) Core.. Core.AsText
              Core.<$> pointsValue,
            ("ratio" Core..=) Core.<$> ratio
          ]
      )

-- | Order return. Production access (all methods) requires the order manager role. Sandbox access does not.
--
-- /See:/ 'newMerchantOrderReturn' smart constructor.
data MerchantOrderReturn = MerchantOrderReturn
  { -- | The date of creation of the return, in ISO 8601 format.
    creationDate :: (Core.Maybe Core.Text),
    -- | Merchant defined order ID.
    merchantOrderId :: (Core.Maybe Core.Text),
    -- | Google order ID.
    orderId :: (Core.Maybe Core.Text),
    -- | Order return ID generated by Google.
    orderReturnId :: (Core.Maybe Core.Text),
    -- | Items of the return.
    returnItems :: (Core.Maybe [MerchantOrderReturnItem]),
    -- | Information about shipping costs.
    returnPricingInfo :: (Core.Maybe ReturnPricingInfo),
    -- | Shipments of the return.
    returnShipments :: (Core.Maybe [ReturnShipment])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MerchantOrderReturn' with the minimum fields required to make a request.
newMerchantOrderReturn ::
  MerchantOrderReturn
newMerchantOrderReturn =
  MerchantOrderReturn
    { creationDate = Core.Nothing,
      merchantOrderId = Core.Nothing,
      orderId = Core.Nothing,
      orderReturnId = Core.Nothing,
      returnItems = Core.Nothing,
      returnPricingInfo = Core.Nothing,
      returnShipments = Core.Nothing
    }

instance Core.FromJSON MerchantOrderReturn where
  parseJSON =
    Core.withObject
      "MerchantOrderReturn"
      ( \o ->
          MerchantOrderReturn
            Core.<$> (o Core..:? "creationDate")
            Core.<*> (o Core..:? "merchantOrderId")
            Core.<*> (o Core..:? "orderId")
            Core.<*> (o Core..:? "orderReturnId")
            Core.<*> (o Core..:? "returnItems" Core..!= Core.mempty)
            Core.<*> (o Core..:? "returnPricingInfo")
            Core.<*> (o Core..:? "returnShipments" Core..!= Core.mempty)
      )

instance Core.ToJSON MerchantOrderReturn where
  toJSON MerchantOrderReturn {..} =
    Core.object
      ( Core.catMaybes
          [ ("creationDate" Core..=) Core.<$> creationDate,
            ("merchantOrderId" Core..=) Core.<$> merchantOrderId,
            ("orderId" Core..=) Core.<$> orderId,
            ("orderReturnId" Core..=) Core.<$> orderReturnId,
            ("returnItems" Core..=) Core.<$> returnItems,
            ("returnPricingInfo" Core..=)
              Core.<$> returnPricingInfo,
            ("returnShipments" Core..=)
              Core.<$> returnShipments
          ]
      )

--
-- /See:/ 'newMerchantOrderReturnItem' smart constructor.
data MerchantOrderReturnItem = MerchantOrderReturnItem
  { -- | The reason that the customer chooses to return an item.
    customerReturnReason :: (Core.Maybe CustomerReturnReason),
    -- | Product level item ID. If the returned items are of the same product, they will have the same ID.
    itemId :: (Core.Maybe Core.Text),
    -- | The reason that the merchant chose to reject an item return.
    merchantRejectionReason :: (Core.Maybe MerchantRejectionReason),
    -- | The reason that merchant chooses to accept a return item.
    merchantReturnReason :: (Core.Maybe RefundReason),
    -- | Product data from the time of the order placement.
    product :: (Core.Maybe OrderLineItemProduct),
    -- | Maximum amount that can be refunded for this return item.
    refundableAmount :: (Core.Maybe MonetaryAmount),
    -- | Unit level ID for the return item. Different units of the same product will have different IDs.
    returnItemId :: (Core.Maybe Core.Text),
    -- | IDs of the return shipments that this return item belongs to.
    returnShipmentIds :: (Core.Maybe [Core.Text]),
    -- | ID of the original shipment group. Provided for shipments with invoice support.
    shipmentGroupId :: (Core.Maybe Core.Text),
    -- | ID of the shipment unit assigned by the merchant. Provided for shipments with invoice support.
    shipmentUnitId :: (Core.Maybe Core.Text),
    -- | State of the item. Acceptable values are: - \"@canceled@\" - \"@new@\" - \"@received@\" - \"@refunded@\" - \"@rejected@\"
    state :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MerchantOrderReturnItem' with the minimum fields required to make a request.
newMerchantOrderReturnItem ::
  MerchantOrderReturnItem
newMerchantOrderReturnItem =
  MerchantOrderReturnItem
    { customerReturnReason = Core.Nothing,
      itemId = Core.Nothing,
      merchantRejectionReason = Core.Nothing,
      merchantReturnReason = Core.Nothing,
      product = Core.Nothing,
      refundableAmount = Core.Nothing,
      returnItemId = Core.Nothing,
      returnShipmentIds = Core.Nothing,
      shipmentGroupId = Core.Nothing,
      shipmentUnitId = Core.Nothing,
      state = Core.Nothing
    }

instance Core.FromJSON MerchantOrderReturnItem where
  parseJSON =
    Core.withObject
      "MerchantOrderReturnItem"
      ( \o ->
          MerchantOrderReturnItem
            Core.<$> (o Core..:? "customerReturnReason")
            Core.<*> (o Core..:? "itemId")
            Core.<*> (o Core..:? "merchantRejectionReason")
            Core.<*> (o Core..:? "merchantReturnReason")
            Core.<*> (o Core..:? "product")
            Core.<*> (o Core..:? "refundableAmount")
            Core.<*> (o Core..:? "returnItemId")
            Core.<*> (o Core..:? "returnShipmentIds" Core..!= Core.mempty)
            Core.<*> (o Core..:? "shipmentGroupId")
            Core.<*> (o Core..:? "shipmentUnitId")
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON MerchantOrderReturnItem where
  toJSON MerchantOrderReturnItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("customerReturnReason" Core..=)
              Core.<$> customerReturnReason,
            ("itemId" Core..=) Core.<$> itemId,
            ("merchantRejectionReason" Core..=)
              Core.<$> merchantRejectionReason,
            ("merchantReturnReason" Core..=)
              Core.<$> merchantReturnReason,
            ("product" Core..=) Core.<$> product,
            ("refundableAmount" Core..=)
              Core.<$> refundableAmount,
            ("returnItemId" Core..=) Core.<$> returnItemId,
            ("returnShipmentIds" Core..=)
              Core.<$> returnShipmentIds,
            ("shipmentGroupId" Core..=) Core.<$> shipmentGroupId,
            ("shipmentUnitId" Core..=) Core.<$> shipmentUnitId,
            ("state" Core..=) Core.<$> state
          ]
      )

--
-- /See:/ 'newMerchantRejectionReason' smart constructor.
data MerchantRejectionReason = MerchantRejectionReason
  { -- | Description of the reason.
    description :: (Core.Maybe Core.Text),
    -- | Code of the rejection reason.
    reasonCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MerchantRejectionReason' with the minimum fields required to make a request.
newMerchantRejectionReason ::
  MerchantRejectionReason
newMerchantRejectionReason =
  MerchantRejectionReason
    { description = Core.Nothing,
      reasonCode = Core.Nothing
    }

instance Core.FromJSON MerchantRejectionReason where
  parseJSON =
    Core.withObject
      "MerchantRejectionReason"
      ( \o ->
          MerchantRejectionReason
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "reasonCode")
      )

instance Core.ToJSON MerchantRejectionReason where
  toJSON MerchantRejectionReason {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("reasonCode" Core..=) Core.<$> reasonCode
          ]
      )

-- | Performance metrics. Values are only set for metrics requested explicitly in the request\'s search query.
--
-- /See:/ 'newMetrics' smart constructor.
data Metrics = Metrics
  { -- | Average order size - the average number of items in an order. __This metric cannot be segmented by product dimensions.__
    aos :: (Core.Maybe Core.Double),
    -- | Average order value - the average value (total price of items) of all placed orders. The currency of the returned value is stored in the currency/code segment. If this metric is selected, \'segments.currency/code\' is automatically added to the SELECT clause in the search query (unless it is explicitly selected by the user) and the currency_code segment is populated in the response. __This metric cannot be segmented by product dimensions.__
    aovMicros :: (Core.Maybe Core.Double),
    -- | Number of clicks.
    clicks :: (Core.Maybe Core.Int64),
    -- | Click-through rate - the number of clicks merchant\'s products receive (clicks) divided by the number of times the products are shown (impressions).
    ctr :: (Core.Maybe Core.Double),
    -- | Average number of days between an order being placed and the order being fully shipped, reported on the last shipment date. __This metric cannot be segmented by product dimensions.__
    daysToShip :: (Core.Maybe Core.Double),
    -- | Number of times merchant\'s products are shown.
    impressions :: (Core.Maybe Core.Int64),
    -- | Average number of days between an item being ordered and the item being
    itemDaysToShip :: (Core.Maybe Core.Double),
    -- | Percentage of shipped items in relation to all finalized items (shipped or rejected by the merchant; unshipped items are not taken into account), reported on the order date. Item fill rate is lowered by merchant rejections.
    itemFillRate :: (Core.Maybe Core.Double),
    -- | Total price of ordered items. Excludes shipping, taxes (US only), and customer cancellations that happened within 30 minutes of placing the order. The currency of the returned value is stored in the currency/code segment. If this metric is selected, \'segments.currency/code\' is automatically added to the SELECT clause in the search query (unless it is explicitly selected by the user) and the currency_code segment is populated in the response.
    orderedItemSalesMicros :: (Core.Maybe Core.Int64),
    -- | Number of ordered items. Excludes customer cancellations that happened within 30 minutes of placing the order.
    orderedItems :: (Core.Maybe Core.Int64),
    -- | Number of placed orders. Excludes customer cancellations that happened within 30 minutes of placing the order. __This metric cannot be segmented by product dimensions.__
    orders :: (Core.Maybe Core.Int64),
    -- | Number of ordered items canceled by the merchant, reported on the order date.
    rejectedItems :: (Core.Maybe Core.Int64),
    -- | Total price of returned items divided by the total price of shipped items, reported on the order date. If this metric is selected, \'segments.currency/code\' is automatically added to the SELECT clause in the search query (unless it is explicitly selected by the user) and the currency/code segment is populated in the response.
    returnRate :: (Core.Maybe Core.Double),
    -- | Number of ordered items sent back for return, reported on the date when the merchant accepted the return.
    returnedItems :: (Core.Maybe Core.Int64),
    -- | Total price of ordered items sent back for return, reported on the date when the merchant accepted the return. The currency of the returned value is stored in the currency/code segment. If this metric is selected, \'segments.currency/code\' is automatically added to the SELECT clause in the search query (unless it is explicitly selected by the user) and the currency_code segment is populated in the response.
    returnsMicros :: (Core.Maybe Core.Int64),
    -- | Total price of shipped items, reported on the order date. Excludes shipping and taxes (US only). The currency of the returned value is stored in the currency/code segment. If this metric is selected, \'segments.currency/code\' is automatically added to the SELECT clause in the search query (unless it is explicitly selected by the user) and the currency_code segment is populated in the response.
    shippedItemSalesMicros :: (Core.Maybe Core.Int64),
    -- | Number of shipped items, reported on the shipment date.
    shippedItems :: (Core.Maybe Core.Int64),
    -- | Number of fully shipped orders, reported on the last shipment date. __This metric cannot be segmented by product dimensions.__
    shippedOrders :: (Core.Maybe Core.Int64),
    -- | Number of ordered items not shipped up until the end of the queried day. If a multi-day period is specified in the search query, the returned value is the average number of unshipped items over the days in the queried period.
    unshippedItems :: (Core.Maybe Core.Double),
    -- | Number of orders not shipped or partially shipped up until the end of the queried day. If a multi-day period is specified in the search query, the returned value is the average number of unshipped orders over the days in the queried period. __This metric cannot be segmented by product dimensions.__
    unshippedOrders :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Metrics' with the minimum fields required to make a request.
newMetrics ::
  Metrics
newMetrics =
  Metrics
    { aos = Core.Nothing,
      aovMicros = Core.Nothing,
      clicks = Core.Nothing,
      ctr = Core.Nothing,
      daysToShip = Core.Nothing,
      impressions = Core.Nothing,
      itemDaysToShip = Core.Nothing,
      itemFillRate = Core.Nothing,
      orderedItemSalesMicros = Core.Nothing,
      orderedItems = Core.Nothing,
      orders = Core.Nothing,
      rejectedItems = Core.Nothing,
      returnRate = Core.Nothing,
      returnedItems = Core.Nothing,
      returnsMicros = Core.Nothing,
      shippedItemSalesMicros = Core.Nothing,
      shippedItems = Core.Nothing,
      shippedOrders = Core.Nothing,
      unshippedItems = Core.Nothing,
      unshippedOrders = Core.Nothing
    }

instance Core.FromJSON Metrics where
  parseJSON =
    Core.withObject
      "Metrics"
      ( \o ->
          Metrics
            Core.<$> (o Core..:? "aos")
            Core.<*> (o Core..:? "aovMicros")
            Core.<*> (o Core..:? "clicks")
            Core.<*> (o Core..:? "ctr")
            Core.<*> (o Core..:? "daysToShip")
            Core.<*> (o Core..:? "impressions")
            Core.<*> (o Core..:? "itemDaysToShip")
            Core.<*> (o Core..:? "itemFillRate")
            Core.<*> (o Core..:? "orderedItemSalesMicros")
            Core.<*> (o Core..:? "orderedItems")
            Core.<*> (o Core..:? "orders")
            Core.<*> (o Core..:? "rejectedItems")
            Core.<*> (o Core..:? "returnRate")
            Core.<*> (o Core..:? "returnedItems")
            Core.<*> (o Core..:? "returnsMicros")
            Core.<*> (o Core..:? "shippedItemSalesMicros")
            Core.<*> (o Core..:? "shippedItems")
            Core.<*> (o Core..:? "shippedOrders")
            Core.<*> (o Core..:? "unshippedItems")
            Core.<*> (o Core..:? "unshippedOrders")
      )

instance Core.ToJSON Metrics where
  toJSON Metrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("aos" Core..=) Core.<$> aos,
            ("aovMicros" Core..=) Core.<$> aovMicros,
            ("clicks" Core..=) Core.. Core.AsText
              Core.<$> clicks,
            ("ctr" Core..=) Core.<$> ctr,
            ("daysToShip" Core..=) Core.<$> daysToShip,
            ("impressions" Core..=) Core.. Core.AsText
              Core.<$> impressions,
            ("itemDaysToShip" Core..=) Core.<$> itemDaysToShip,
            ("itemFillRate" Core..=) Core.<$> itemFillRate,
            ("orderedItemSalesMicros" Core..=) Core.. Core.AsText
              Core.<$> orderedItemSalesMicros,
            ("orderedItems" Core..=) Core.. Core.AsText
              Core.<$> orderedItems,
            ("orders" Core..=) Core.. Core.AsText
              Core.<$> orders,
            ("rejectedItems" Core..=) Core.. Core.AsText
              Core.<$> rejectedItems,
            ("returnRate" Core..=) Core.<$> returnRate,
            ("returnedItems" Core..=) Core.. Core.AsText
              Core.<$> returnedItems,
            ("returnsMicros" Core..=) Core.. Core.AsText
              Core.<$> returnsMicros,
            ("shippedItemSalesMicros" Core..=) Core.. Core.AsText
              Core.<$> shippedItemSalesMicros,
            ("shippedItems" Core..=) Core.. Core.AsText
              Core.<$> shippedItems,
            ("shippedOrders" Core..=) Core.. Core.AsText
              Core.<$> shippedOrders,
            ("unshippedItems" Core..=) Core.<$> unshippedItems,
            ("unshippedOrders" Core..=)
              Core.<$> unshippedOrders
          ]
      )

--
-- /See:/ 'newMinimumOrderValueTable' smart constructor.
newtype MinimumOrderValueTable = MinimumOrderValueTable
  { -- |
    storeCodeSetWithMovs :: (Core.Maybe [MinimumOrderValueTableStoreCodeSetWithMov])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MinimumOrderValueTable' with the minimum fields required to make a request.
newMinimumOrderValueTable ::
  MinimumOrderValueTable
newMinimumOrderValueTable =
  MinimumOrderValueTable {storeCodeSetWithMovs = Core.Nothing}

instance Core.FromJSON MinimumOrderValueTable where
  parseJSON =
    Core.withObject
      "MinimumOrderValueTable"
      ( \o ->
          MinimumOrderValueTable
            Core.<$> ( o Core..:? "storeCodeSetWithMovs"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON MinimumOrderValueTable where
  toJSON MinimumOrderValueTable {..} =
    Core.object
      ( Core.catMaybes
          [ ("storeCodeSetWithMovs" Core..=)
              Core.<$> storeCodeSetWithMovs
          ]
      )

-- | A list of store code sets sharing the same minimum order value. At least two sets are required and the last one must be empty, which signifies \'MOV for all other stores\'. Each store code can only appear once across all the sets. All prices within a service must have the same currency.
--
-- /See:/ 'newMinimumOrderValueTableStoreCodeSetWithMov' smart constructor.
data MinimumOrderValueTableStoreCodeSetWithMov = MinimumOrderValueTableStoreCodeSetWithMov
  { -- | A list of unique store codes or empty for the catch all.
    storeCodes :: (Core.Maybe [Core.Text]),
    -- | The minimum order value for the given stores.
    value :: (Core.Maybe Price)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MinimumOrderValueTableStoreCodeSetWithMov' with the minimum fields required to make a request.
newMinimumOrderValueTableStoreCodeSetWithMov ::
  MinimumOrderValueTableStoreCodeSetWithMov
newMinimumOrderValueTableStoreCodeSetWithMov =
  MinimumOrderValueTableStoreCodeSetWithMov
    { storeCodes = Core.Nothing,
      value = Core.Nothing
    }

instance
  Core.FromJSON
    MinimumOrderValueTableStoreCodeSetWithMov
  where
  parseJSON =
    Core.withObject
      "MinimumOrderValueTableStoreCodeSetWithMov"
      ( \o ->
          MinimumOrderValueTableStoreCodeSetWithMov
            Core.<$> (o Core..:? "storeCodes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "value")
      )

instance
  Core.ToJSON
    MinimumOrderValueTableStoreCodeSetWithMov
  where
  toJSON MinimumOrderValueTableStoreCodeSetWithMov {..} =
    Core.object
      ( Core.catMaybes
          [ ("storeCodes" Core..=) Core.<$> storeCodes,
            ("value" Core..=) Core.<$> value
          ]
      )

--
-- /See:/ 'newMonetaryAmount' smart constructor.
data MonetaryAmount = MonetaryAmount
  { -- | The pre-tax or post-tax price depends on the location of the order. - For countries (for example, \"US\". where price attribute excludes tax, this field corresponds to the pre-tax value. - For coutries (for example, \"France\") where price attribute includes tax, this field corresponds to the post-tax value .
    priceAmount :: (Core.Maybe Price),
    -- | Tax value, present only for countries where price attribute excludes tax (for example, \"US\". No tax is referenced as 0 value with the corresponding @currency@.
    taxAmount :: (Core.Maybe Price)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonetaryAmount' with the minimum fields required to make a request.
newMonetaryAmount ::
  MonetaryAmount
newMonetaryAmount =
  MonetaryAmount {priceAmount = Core.Nothing, taxAmount = Core.Nothing}

instance Core.FromJSON MonetaryAmount where
  parseJSON =
    Core.withObject
      "MonetaryAmount"
      ( \o ->
          MonetaryAmount
            Core.<$> (o Core..:? "priceAmount")
            Core.<*> (o Core..:? "taxAmount")
      )

instance Core.ToJSON MonetaryAmount where
  toJSON MonetaryAmount {..} =
    Core.object
      ( Core.catMaybes
          [ ("priceAmount" Core..=) Core.<$> priceAmount,
            ("taxAmount" Core..=) Core.<$> taxAmount
          ]
      )

-- | Request message for the OnboardProgram method.
--
-- /See:/ 'newOnboardBuyOnGoogleProgramRequest' smart constructor.
newtype OnboardBuyOnGoogleProgramRequest = OnboardBuyOnGoogleProgramRequest
  { -- | The customer service email.
    customerServiceEmail :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OnboardBuyOnGoogleProgramRequest' with the minimum fields required to make a request.
newOnboardBuyOnGoogleProgramRequest ::
  OnboardBuyOnGoogleProgramRequest
newOnboardBuyOnGoogleProgramRequest =
  OnboardBuyOnGoogleProgramRequest {customerServiceEmail = Core.Nothing}

instance
  Core.FromJSON
    OnboardBuyOnGoogleProgramRequest
  where
  parseJSON =
    Core.withObject
      "OnboardBuyOnGoogleProgramRequest"
      ( \o ->
          OnboardBuyOnGoogleProgramRequest
            Core.<$> (o Core..:? "customerServiceEmail")
      )

instance Core.ToJSON OnboardBuyOnGoogleProgramRequest where
  toJSON OnboardBuyOnGoogleProgramRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("customerServiceEmail" Core..=)
              Core.<$> customerServiceEmail
          ]
      )

-- | Order. Production access (all methods) requires the order manager role. Sandbox access does not.
--
-- /See:/ 'newOrder' smart constructor.
data Order = Order
  { -- | Whether the order was acknowledged.
    acknowledged :: (Core.Maybe Core.Bool),
    -- | List of key-value pairs that are attached to a given order.
    annotations :: (Core.Maybe [OrderOrderAnnotation]),
    -- | The billing address.
    billingAddress :: (Core.Maybe OrderAddress),
    -- | The details of the customer who placed the order.
    customer :: (Core.Maybe OrderCustomer),
    -- | Delivery details for shipments of type @delivery@.
    deliveryDetails :: (Core.Maybe OrderDeliveryDetails),
    -- | The REST ID of the order. Globally unique.
    id :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#order@\"
    kind :: (Core.Maybe Core.Text),
    -- | Line items that are ordered.
    lineItems :: (Core.Maybe [OrderLineItem]),
    -- |
    merchantId :: (Core.Maybe Core.Word64),
    -- | Merchant-provided ID of the order.
    merchantOrderId :: (Core.Maybe Core.Text),
    -- | The net amount for the order (price part). For example, if an order was originally for $100 and a refund was issued for $20, the net amount will be $80.
    netPriceAmount :: (Core.Maybe Price),
    -- | The net amount for the order (tax part). Note that in certain cases due to taxable base adjustment @netTaxAmount@ might not match to a sum of tax field across all lineItems and refunds.
    netTaxAmount :: (Core.Maybe Price),
    -- | The status of the payment. Acceptable values are: - \"@paymentCaptured@\" - \"@paymentRejected@\" - \"@paymentSecured@\" - \"@pendingAuthorization@\"
    paymentStatus :: (Core.Maybe Core.Text),
    -- | Pickup details for shipments of type @pickup@.
    pickupDetails :: (Core.Maybe OrderPickupDetails),
    -- | The date when the order was placed, in ISO 8601 format.
    placedDate :: (Core.Maybe Core.Text),
    -- | Promotions associated with the order. To determine which promotions apply to which products, check the @Promotions[].appliedItems[].lineItemId@ field against the @LineItems[].id@ field for each promotion. If a promotion is applied to more than 1 offerId, divide the discount value by the number of affected offers to determine how much discount to apply to each offerId. Examples: 1. To calculate price paid by the customer for a single line item including the discount: For each promotion, subtract the @LineItems[].adjustments[].priceAdjustment.value@ amount from the @LineItems[].Price.value@. 2. To calculate price paid by the customer for a single line item including the discount in case of multiple quantity: For each promotion, divide the @LineItems[].adjustments[].priceAdjustment.value@ by the quantity of products then subtract the resulting value from the @LineItems[].Product.Price.value@ for each quantity item. Only 1 promotion can be applied to an offerId in a given order. To refund an item which had a
    -- promotion applied to it, make sure to refund the amount after first subtracting the promotion discount from the item price. More details about the program are here.
    promotions :: (Core.Maybe [OrderPromotion]),
    -- | Refunds for the order.
    refunds :: (Core.Maybe [OrderRefund]),
    -- | Shipments of the order.
    shipments :: (Core.Maybe [OrderShipment]),
    -- | The total cost of shipping for all items.
    shippingCost :: (Core.Maybe Price),
    -- | The tax for the total shipping cost.
    shippingCostTax :: (Core.Maybe Price),
    -- | The status of the order. Acceptable values are: - \"@canceled@\" - \"@delivered@\" - \"@inProgress@\" - \"@partiallyDelivered@\" - \"@partiallyReturned@\" - \"@partiallyShipped@\" - \"@pendingShipment@\" - \"@returned@\" - \"@shipped@\"
    status :: (Core.Maybe Core.Text),
    -- | The party responsible for collecting and remitting taxes. Acceptable values are: - \"@marketplaceFacilitator@\" - \"@merchant@\"
    taxCollector :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Order' with the minimum fields required to make a request.
newOrder ::
  Order
newOrder =
  Order
    { acknowledged = Core.Nothing,
      annotations = Core.Nothing,
      billingAddress = Core.Nothing,
      customer = Core.Nothing,
      deliveryDetails = Core.Nothing,
      id = Core.Nothing,
      kind = Core.Nothing,
      lineItems = Core.Nothing,
      merchantId = Core.Nothing,
      merchantOrderId = Core.Nothing,
      netPriceAmount = Core.Nothing,
      netTaxAmount = Core.Nothing,
      paymentStatus = Core.Nothing,
      pickupDetails = Core.Nothing,
      placedDate = Core.Nothing,
      promotions = Core.Nothing,
      refunds = Core.Nothing,
      shipments = Core.Nothing,
      shippingCost = Core.Nothing,
      shippingCostTax = Core.Nothing,
      status = Core.Nothing,
      taxCollector = Core.Nothing
    }

instance Core.FromJSON Order where
  parseJSON =
    Core.withObject
      "Order"
      ( \o ->
          Order
            Core.<$> (o Core..:? "acknowledged")
            Core.<*> (o Core..:? "annotations" Core..!= Core.mempty)
            Core.<*> (o Core..:? "billingAddress")
            Core.<*> (o Core..:? "customer")
            Core.<*> (o Core..:? "deliveryDetails")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "lineItems" Core..!= Core.mempty)
            Core.<*> (o Core..:? "merchantId")
            Core.<*> (o Core..:? "merchantOrderId")
            Core.<*> (o Core..:? "netPriceAmount")
            Core.<*> (o Core..:? "netTaxAmount")
            Core.<*> (o Core..:? "paymentStatus")
            Core.<*> (o Core..:? "pickupDetails")
            Core.<*> (o Core..:? "placedDate")
            Core.<*> (o Core..:? "promotions" Core..!= Core.mempty)
            Core.<*> (o Core..:? "refunds" Core..!= Core.mempty)
            Core.<*> (o Core..:? "shipments" Core..!= Core.mempty)
            Core.<*> (o Core..:? "shippingCost")
            Core.<*> (o Core..:? "shippingCostTax")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "taxCollector")
      )

instance Core.ToJSON Order where
  toJSON Order {..} =
    Core.object
      ( Core.catMaybes
          [ ("acknowledged" Core..=) Core.<$> acknowledged,
            ("annotations" Core..=) Core.<$> annotations,
            ("billingAddress" Core..=) Core.<$> billingAddress,
            ("customer" Core..=) Core.<$> customer,
            ("deliveryDetails" Core..=) Core.<$> deliveryDetails,
            ("id" Core..=) Core.<$> id,
            ("kind" Core..=) Core.<$> kind,
            ("lineItems" Core..=) Core.<$> lineItems,
            ("merchantId" Core..=) Core.. Core.AsText
              Core.<$> merchantId,
            ("merchantOrderId" Core..=) Core.<$> merchantOrderId,
            ("netPriceAmount" Core..=) Core.<$> netPriceAmount,
            ("netTaxAmount" Core..=) Core.<$> netTaxAmount,
            ("paymentStatus" Core..=) Core.<$> paymentStatus,
            ("pickupDetails" Core..=) Core.<$> pickupDetails,
            ("placedDate" Core..=) Core.<$> placedDate,
            ("promotions" Core..=) Core.<$> promotions,
            ("refunds" Core..=) Core.<$> refunds,
            ("shipments" Core..=) Core.<$> shipments,
            ("shippingCost" Core..=) Core.<$> shippingCost,
            ("shippingCostTax" Core..=) Core.<$> shippingCostTax,
            ("status" Core..=) Core.<$> status,
            ("taxCollector" Core..=) Core.<$> taxCollector
          ]
      )

--
-- /See:/ 'newOrderAddress' smart constructor.
data OrderAddress = OrderAddress
  { -- | CLDR country code (for example, \"US\").
    country :: (Core.Maybe Core.Text),
    -- | Strings representing the lines of the printed label for mailing the order, for example: John Smith 1600 Amphitheatre Parkway Mountain View, CA, 94043 United States
    fullAddress :: (Core.Maybe [Core.Text]),
    -- | Whether the address is a post office box.
    isPostOfficeBox :: (Core.Maybe Core.Bool),
    -- | City, town or commune. May also include dependent localities or sublocalities (for example, neighborhoods or suburbs).
    locality :: (Core.Maybe Core.Text),
    -- | Postal Code or ZIP (for example, \"94043\").
    postalCode :: (Core.Maybe Core.Text),
    -- | Name of the recipient.
    recipientName :: (Core.Maybe Core.Text),
    -- | Top-level administrative subdivision of the country. For example, a state like California (\"CA\") or a province like Quebec (\"QC\").
    region :: (Core.Maybe Core.Text),
    -- | Street-level part of the address.
    streetAddress :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderAddress' with the minimum fields required to make a request.
newOrderAddress ::
  OrderAddress
newOrderAddress =
  OrderAddress
    { country = Core.Nothing,
      fullAddress = Core.Nothing,
      isPostOfficeBox = Core.Nothing,
      locality = Core.Nothing,
      postalCode = Core.Nothing,
      recipientName = Core.Nothing,
      region = Core.Nothing,
      streetAddress = Core.Nothing
    }

instance Core.FromJSON OrderAddress where
  parseJSON =
    Core.withObject
      "OrderAddress"
      ( \o ->
          OrderAddress
            Core.<$> (o Core..:? "country")
            Core.<*> (o Core..:? "fullAddress" Core..!= Core.mempty)
            Core.<*> (o Core..:? "isPostOfficeBox")
            Core.<*> (o Core..:? "locality")
            Core.<*> (o Core..:? "postalCode")
            Core.<*> (o Core..:? "recipientName")
            Core.<*> (o Core..:? "region")
            Core.<*> (o Core..:? "streetAddress" Core..!= Core.mempty)
      )

instance Core.ToJSON OrderAddress where
  toJSON OrderAddress {..} =
    Core.object
      ( Core.catMaybes
          [ ("country" Core..=) Core.<$> country,
            ("fullAddress" Core..=) Core.<$> fullAddress,
            ("isPostOfficeBox" Core..=) Core.<$> isPostOfficeBox,
            ("locality" Core..=) Core.<$> locality,
            ("postalCode" Core..=) Core.<$> postalCode,
            ("recipientName" Core..=) Core.<$> recipientName,
            ("region" Core..=) Core.<$> region,
            ("streetAddress" Core..=) Core.<$> streetAddress
          ]
      )

--
-- /See:/ 'newOrderCancellation' smart constructor.
data OrderCancellation = OrderCancellation
  { -- | The actor that created the cancellation. Acceptable values are: - \"@customer@\" - \"@googleBot@\" - \"@googleCustomerService@\" - \"@googlePayments@\" - \"@googleSabre@\" - \"@merchant@\"
    actor :: (Core.Maybe Core.Text),
    -- | Date on which the cancellation has been created, in ISO 8601 format.
    creationDate :: (Core.Maybe Core.Text),
    -- | The quantity that was canceled.
    quantity :: (Core.Maybe Core.Word32),
    -- | The reason for the cancellation. Orders that are canceled with a noInventory reason will lead to the removal of the product from Buy on Google until you make an update to that product. This won\'t affect your Shopping ads. Acceptable values are: - \"@autoPostInternal@\" - \"@autoPostInvalidBillingAddress@\" - \"@autoPostNoInventory@\" - \"@autoPostPriceError@\" - \"@autoPostUndeliverableShippingAddress@\" - \"@couponAbuse@\" - \"@customerCanceled@\" - \"@customerInitiatedCancel@\" - \"@customerSupportRequested@\" - \"@failToPushOrderGoogleError@\" - \"@failToPushOrderMerchantError@\" - \"@failToPushOrderMerchantFulfillmentError@\" - \"@failToPushOrderToMerchant@\" - \"@failToPushOrderToMerchantOutOfStock@\" - \"@invalidCoupon@\" - \"@malformedShippingAddress@\" - \"@merchantDidNotShipOnTime@\" - \"@noInventory@\" - \"@orderTimeout@\" - \"@other@\" - \"@paymentAbuse@\" - \"@paymentDeclined@\" - \"@priceError@\" - \"@returnRefundAbuse@\" - \"@shippingPriceError@\" - \"@taxError@\" -
    -- \"@undeliverableShippingAddress@\" - \"@unsupportedPoBoxAddress@\" - \"@failedToCaptureFunds@\"
    reason :: (Core.Maybe Core.Text),
    -- | The explanation of the reason.
    reasonText :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderCancellation' with the minimum fields required to make a request.
newOrderCancellation ::
  OrderCancellation
newOrderCancellation =
  OrderCancellation
    { actor = Core.Nothing,
      creationDate = Core.Nothing,
      quantity = Core.Nothing,
      reason = Core.Nothing,
      reasonText = Core.Nothing
    }

instance Core.FromJSON OrderCancellation where
  parseJSON =
    Core.withObject
      "OrderCancellation"
      ( \o ->
          OrderCancellation
            Core.<$> (o Core..:? "actor")
            Core.<*> (o Core..:? "creationDate")
            Core.<*> (o Core..:? "quantity")
            Core.<*> (o Core..:? "reason")
            Core.<*> (o Core..:? "reasonText")
      )

instance Core.ToJSON OrderCancellation where
  toJSON OrderCancellation {..} =
    Core.object
      ( Core.catMaybes
          [ ("actor" Core..=) Core.<$> actor,
            ("creationDate" Core..=) Core.<$> creationDate,
            ("quantity" Core..=) Core.<$> quantity,
            ("reason" Core..=) Core.<$> reason,
            ("reasonText" Core..=) Core.<$> reasonText
          ]
      )

--
-- /See:/ 'newOrderCustomer' smart constructor.
data OrderCustomer = OrderCustomer
  { -- | Full name of the customer.
    fullName :: (Core.Maybe Core.Text),
    -- | Email address for the merchant to send value-added tax or invoice documentation of the order. Only the last document sent is made available to the customer. For more information, see About automated VAT invoicing for Buy on Google.
    invoiceReceivingEmail :: (Core.Maybe Core.Text),
    -- | Loyalty program information.
    loyaltyInfo :: (Core.Maybe OrderCustomerLoyaltyInfo),
    -- | Customer\'s marketing preferences. Contains the marketing opt-in information that is current at the time that the merchant call. User preference selections can change from one order to the next so preferences must be checked with every order.
    marketingRightsInfo :: (Core.Maybe OrderCustomerMarketingRightsInfo)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderCustomer' with the minimum fields required to make a request.
newOrderCustomer ::
  OrderCustomer
newOrderCustomer =
  OrderCustomer
    { fullName = Core.Nothing,
      invoiceReceivingEmail = Core.Nothing,
      loyaltyInfo = Core.Nothing,
      marketingRightsInfo = Core.Nothing
    }

instance Core.FromJSON OrderCustomer where
  parseJSON =
    Core.withObject
      "OrderCustomer"
      ( \o ->
          OrderCustomer
            Core.<$> (o Core..:? "fullName")
            Core.<*> (o Core..:? "invoiceReceivingEmail")
            Core.<*> (o Core..:? "loyaltyInfo")
            Core.<*> (o Core..:? "marketingRightsInfo")
      )

instance Core.ToJSON OrderCustomer where
  toJSON OrderCustomer {..} =
    Core.object
      ( Core.catMaybes
          [ ("fullName" Core..=) Core.<$> fullName,
            ("invoiceReceivingEmail" Core..=)
              Core.<$> invoiceReceivingEmail,
            ("loyaltyInfo" Core..=) Core.<$> loyaltyInfo,
            ("marketingRightsInfo" Core..=)
              Core.<$> marketingRightsInfo
          ]
      )

--
-- /See:/ 'newOrderCustomerLoyaltyInfo' smart constructor.
data OrderCustomerLoyaltyInfo = OrderCustomerLoyaltyInfo
  { -- | The loyalty card\/membership number.
    loyaltyNumber :: (Core.Maybe Core.Text),
    -- | Name of card\/membership holder, this field will be populated when
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderCustomerLoyaltyInfo' with the minimum fields required to make a request.
newOrderCustomerLoyaltyInfo ::
  OrderCustomerLoyaltyInfo
newOrderCustomerLoyaltyInfo =
  OrderCustomerLoyaltyInfo {loyaltyNumber = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON OrderCustomerLoyaltyInfo where
  parseJSON =
    Core.withObject
      "OrderCustomerLoyaltyInfo"
      ( \o ->
          OrderCustomerLoyaltyInfo
            Core.<$> (o Core..:? "loyaltyNumber")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON OrderCustomerLoyaltyInfo where
  toJSON OrderCustomerLoyaltyInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("loyaltyNumber" Core..=) Core.<$> loyaltyNumber,
            ("name" Core..=) Core.<$> name
          ]
      )

--
-- /See:/ 'newOrderCustomerMarketingRightsInfo' smart constructor.
data OrderCustomerMarketingRightsInfo = OrderCustomerMarketingRightsInfo
  { -- | Last known customer selection regarding marketing preferences. In certain cases this selection might not be known, so this field would be empty. If a customer selected @granted@ in their most recent order, they can be subscribed to marketing emails. Customers who have chosen @denied@ must not be subscribed, or must be unsubscribed if already opted-in. Acceptable values are: - \"@denied@\" - \"@granted@\"
    explicitMarketingPreference :: (Core.Maybe Core.Text),
    -- | Timestamp when last time marketing preference was updated. Could be empty, if user wasn\'t offered a selection yet.
    lastUpdatedTimestamp :: (Core.Maybe Core.Text),
    -- | Email address that can be used for marketing purposes. The field may be empty even if @explicitMarketingPreference@ is \'granted\'. This happens when retrieving an old order from the customer who deleted their account.
    marketingEmailAddress :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderCustomerMarketingRightsInfo' with the minimum fields required to make a request.
newOrderCustomerMarketingRightsInfo ::
  OrderCustomerMarketingRightsInfo
newOrderCustomerMarketingRightsInfo =
  OrderCustomerMarketingRightsInfo
    { explicitMarketingPreference = Core.Nothing,
      lastUpdatedTimestamp = Core.Nothing,
      marketingEmailAddress = Core.Nothing
    }

instance
  Core.FromJSON
    OrderCustomerMarketingRightsInfo
  where
  parseJSON =
    Core.withObject
      "OrderCustomerMarketingRightsInfo"
      ( \o ->
          OrderCustomerMarketingRightsInfo
            Core.<$> (o Core..:? "explicitMarketingPreference")
            Core.<*> (o Core..:? "lastUpdatedTimestamp")
            Core.<*> (o Core..:? "marketingEmailAddress")
      )

instance Core.ToJSON OrderCustomerMarketingRightsInfo where
  toJSON OrderCustomerMarketingRightsInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("explicitMarketingPreference" Core..=)
              Core.<$> explicitMarketingPreference,
            ("lastUpdatedTimestamp" Core..=)
              Core.<$> lastUpdatedTimestamp,
            ("marketingEmailAddress" Core..=)
              Core.<$> marketingEmailAddress
          ]
      )

--
-- /See:/ 'newOrderDeliveryDetails' smart constructor.
data OrderDeliveryDetails = OrderDeliveryDetails
  { -- | The delivery address
    address :: (Core.Maybe OrderAddress),
    -- | The phone number of the person receiving the delivery.
    phoneNumber :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderDeliveryDetails' with the minimum fields required to make a request.
newOrderDeliveryDetails ::
  OrderDeliveryDetails
newOrderDeliveryDetails =
  OrderDeliveryDetails {address = Core.Nothing, phoneNumber = Core.Nothing}

instance Core.FromJSON OrderDeliveryDetails where
  parseJSON =
    Core.withObject
      "OrderDeliveryDetails"
      ( \o ->
          OrderDeliveryDetails
            Core.<$> (o Core..:? "address")
            Core.<*> (o Core..:? "phoneNumber")
      )

instance Core.ToJSON OrderDeliveryDetails where
  toJSON OrderDeliveryDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("address" Core..=) Core.<$> address,
            ("phoneNumber" Core..=) Core.<$> phoneNumber
          ]
      )

--
-- /See:/ 'newOrderLineItem' smart constructor.
data OrderLineItem = OrderLineItem
  { -- | Price and tax adjustments applied on the line item.
    adjustments :: (Core.Maybe [OrderLineItemAdjustment]),
    -- | Annotations that are attached to the line item.
    annotations :: (Core.Maybe [OrderMerchantProvidedAnnotation]),
    -- | Cancellations of the line item.
    cancellations :: (Core.Maybe [OrderCancellation]),
    -- | The ID of the line item.
    id :: (Core.Maybe Core.Text),
    -- | Total price for the line item. For example, if two items for $10 are purchased, the total price will be $20.
    price :: (Core.Maybe Price),
    -- | Product data as seen by customer from the time of the order placement. Note that certain attributes values (for example, title or gtin) might be reformatted and no longer match values submitted through product feed.
    product :: (Core.Maybe OrderLineItemProduct),
    -- | Number of items canceled.
    quantityCanceled :: (Core.Maybe Core.Word32),
    -- | Number of items delivered.
    quantityDelivered :: (Core.Maybe Core.Word32),
    -- | Number of items ordered.
    quantityOrdered :: (Core.Maybe Core.Word32),
    -- | Number of items pending.
    quantityPending :: (Core.Maybe Core.Word32),
    -- | Number of items ready for pickup.
    quantityReadyForPickup :: (Core.Maybe Core.Word32),
    -- | Number of items returned.
    quantityReturned :: (Core.Maybe Core.Word32),
    -- | Number of items shipped.
    quantityShipped :: (Core.Maybe Core.Word32),
    -- | Number of items undeliverable.
    quantityUndeliverable :: (Core.Maybe Core.Word32),
    -- | Details of the return policy for the line item.
    returnInfo :: (Core.Maybe OrderLineItemReturnInfo),
    -- | Returns of the line item.
    returns :: (Core.Maybe [OrderReturn]),
    -- | Details of the requested shipping for the line item.
    shippingDetails :: (Core.Maybe OrderLineItemShippingDetails),
    -- | Total tax amount for the line item. For example, if two items are purchased, and each have a cost tax of $2, the total tax amount will be $4.
    tax :: (Core.Maybe Price)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderLineItem' with the minimum fields required to make a request.
newOrderLineItem ::
  OrderLineItem
newOrderLineItem =
  OrderLineItem
    { adjustments = Core.Nothing,
      annotations = Core.Nothing,
      cancellations = Core.Nothing,
      id = Core.Nothing,
      price = Core.Nothing,
      product = Core.Nothing,
      quantityCanceled = Core.Nothing,
      quantityDelivered = Core.Nothing,
      quantityOrdered = Core.Nothing,
      quantityPending = Core.Nothing,
      quantityReadyForPickup = Core.Nothing,
      quantityReturned = Core.Nothing,
      quantityShipped = Core.Nothing,
      quantityUndeliverable = Core.Nothing,
      returnInfo = Core.Nothing,
      returns = Core.Nothing,
      shippingDetails = Core.Nothing,
      tax = Core.Nothing
    }

instance Core.FromJSON OrderLineItem where
  parseJSON =
    Core.withObject
      "OrderLineItem"
      ( \o ->
          OrderLineItem
            Core.<$> (o Core..:? "adjustments" Core..!= Core.mempty)
            Core.<*> (o Core..:? "annotations" Core..!= Core.mempty)
            Core.<*> (o Core..:? "cancellations" Core..!= Core.mempty)
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "price")
            Core.<*> (o Core..:? "product")
            Core.<*> (o Core..:? "quantityCanceled")
            Core.<*> (o Core..:? "quantityDelivered")
            Core.<*> (o Core..:? "quantityOrdered")
            Core.<*> (o Core..:? "quantityPending")
            Core.<*> (o Core..:? "quantityReadyForPickup")
            Core.<*> (o Core..:? "quantityReturned")
            Core.<*> (o Core..:? "quantityShipped")
            Core.<*> (o Core..:? "quantityUndeliverable")
            Core.<*> (o Core..:? "returnInfo")
            Core.<*> (o Core..:? "returns" Core..!= Core.mempty)
            Core.<*> (o Core..:? "shippingDetails")
            Core.<*> (o Core..:? "tax")
      )

instance Core.ToJSON OrderLineItem where
  toJSON OrderLineItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("adjustments" Core..=) Core.<$> adjustments,
            ("annotations" Core..=) Core.<$> annotations,
            ("cancellations" Core..=) Core.<$> cancellations,
            ("id" Core..=) Core.<$> id,
            ("price" Core..=) Core.<$> price,
            ("product" Core..=) Core.<$> product,
            ("quantityCanceled" Core..=)
              Core.<$> quantityCanceled,
            ("quantityDelivered" Core..=)
              Core.<$> quantityDelivered,
            ("quantityOrdered" Core..=) Core.<$> quantityOrdered,
            ("quantityPending" Core..=) Core.<$> quantityPending,
            ("quantityReadyForPickup" Core..=)
              Core.<$> quantityReadyForPickup,
            ("quantityReturned" Core..=)
              Core.<$> quantityReturned,
            ("quantityShipped" Core..=) Core.<$> quantityShipped,
            ("quantityUndeliverable" Core..=)
              Core.<$> quantityUndeliverable,
            ("returnInfo" Core..=) Core.<$> returnInfo,
            ("returns" Core..=) Core.<$> returns,
            ("shippingDetails" Core..=) Core.<$> shippingDetails,
            ("tax" Core..=) Core.<$> tax
          ]
      )

--
-- /See:/ 'newOrderLineItemAdjustment' smart constructor.
data OrderLineItemAdjustment = OrderLineItemAdjustment
  { -- | Adjustment for total price of the line item.
    priceAdjustment :: (Core.Maybe Price),
    -- | Adjustment for total tax of the line item.
    taxAdjustment :: (Core.Maybe Price),
    -- | Type of this adjustment. Acceptable values are: - \"@promotion@\"
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderLineItemAdjustment' with the minimum fields required to make a request.
newOrderLineItemAdjustment ::
  OrderLineItemAdjustment
newOrderLineItemAdjustment =
  OrderLineItemAdjustment
    { priceAdjustment = Core.Nothing,
      taxAdjustment = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON OrderLineItemAdjustment where
  parseJSON =
    Core.withObject
      "OrderLineItemAdjustment"
      ( \o ->
          OrderLineItemAdjustment
            Core.<$> (o Core..:? "priceAdjustment")
            Core.<*> (o Core..:? "taxAdjustment")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON OrderLineItemAdjustment where
  toJSON OrderLineItemAdjustment {..} =
    Core.object
      ( Core.catMaybes
          [ ("priceAdjustment" Core..=)
              Core.<$> priceAdjustment,
            ("taxAdjustment" Core..=) Core.<$> taxAdjustment,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newOrderLineItemProduct' smart constructor.
data OrderLineItemProduct = OrderLineItemProduct
  { -- | Brand of the item.
    brand :: (Core.Maybe Core.Text),
    -- | Condition or state of the item. Acceptable values are: - \"@new@\" - \"@refurbished@\" - \"@used@\"
    condition :: (Core.Maybe Core.Text),
    -- | The two-letter ISO 639-1 language code for the item.
    contentLanguage :: (Core.Maybe Core.Text),
    -- | Associated fees at order creation time.
    fees :: (Core.Maybe [OrderLineItemProductFee]),
    -- | Global Trade Item Number (GTIN) of the item.
    gtin :: (Core.Maybe Core.Text),
    -- | The REST ID of the product.
    id :: (Core.Maybe Core.Text),
    -- | URL of an image of the item.
    imageLink :: (Core.Maybe Core.Text),
    -- | Shared identifier for all variants of the same product.
    itemGroupId :: (Core.Maybe Core.Text),
    -- | Manufacturer Part Number (MPN) of the item.
    mpn :: (Core.Maybe Core.Text),
    -- | An identifier of the item.
    offerId :: (Core.Maybe Core.Text),
    -- | Price of the item.
    price :: (Core.Maybe Price),
    -- | URL to the cached image shown to the user when order was placed.
    shownImage :: (Core.Maybe Core.Text),
    -- | The CLDR territory code of the target country of the product.
    targetCountry :: (Core.Maybe Core.Text),
    -- | The title of the product.
    title :: (Core.Maybe Core.Text),
    -- | Variant attributes for the item. These are dimensions of the product, such as color, gender, material, pattern, and size. You can find a comprehensive list of variant attributes here.
    variantAttributes :: (Core.Maybe [OrderLineItemProductVariantAttribute])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderLineItemProduct' with the minimum fields required to make a request.
newOrderLineItemProduct ::
  OrderLineItemProduct
newOrderLineItemProduct =
  OrderLineItemProduct
    { brand = Core.Nothing,
      condition = Core.Nothing,
      contentLanguage = Core.Nothing,
      fees = Core.Nothing,
      gtin = Core.Nothing,
      id = Core.Nothing,
      imageLink = Core.Nothing,
      itemGroupId = Core.Nothing,
      mpn = Core.Nothing,
      offerId = Core.Nothing,
      price = Core.Nothing,
      shownImage = Core.Nothing,
      targetCountry = Core.Nothing,
      title = Core.Nothing,
      variantAttributes = Core.Nothing
    }

instance Core.FromJSON OrderLineItemProduct where
  parseJSON =
    Core.withObject
      "OrderLineItemProduct"
      ( \o ->
          OrderLineItemProduct
            Core.<$> (o Core..:? "brand")
            Core.<*> (o Core..:? "condition")
            Core.<*> (o Core..:? "contentLanguage")
            Core.<*> (o Core..:? "fees" Core..!= Core.mempty)
            Core.<*> (o Core..:? "gtin")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "imageLink")
            Core.<*> (o Core..:? "itemGroupId")
            Core.<*> (o Core..:? "mpn")
            Core.<*> (o Core..:? "offerId")
            Core.<*> (o Core..:? "price")
            Core.<*> (o Core..:? "shownImage")
            Core.<*> (o Core..:? "targetCountry")
            Core.<*> (o Core..:? "title")
            Core.<*> ( o Core..:? "variantAttributes"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON OrderLineItemProduct where
  toJSON OrderLineItemProduct {..} =
    Core.object
      ( Core.catMaybes
          [ ("brand" Core..=) Core.<$> brand,
            ("condition" Core..=) Core.<$> condition,
            ("contentLanguage" Core..=) Core.<$> contentLanguage,
            ("fees" Core..=) Core.<$> fees,
            ("gtin" Core..=) Core.<$> gtin,
            ("id" Core..=) Core.<$> id,
            ("imageLink" Core..=) Core.<$> imageLink,
            ("itemGroupId" Core..=) Core.<$> itemGroupId,
            ("mpn" Core..=) Core.<$> mpn,
            ("offerId" Core..=) Core.<$> offerId,
            ("price" Core..=) Core.<$> price,
            ("shownImage" Core..=) Core.<$> shownImage,
            ("targetCountry" Core..=) Core.<$> targetCountry,
            ("title" Core..=) Core.<$> title,
            ("variantAttributes" Core..=)
              Core.<$> variantAttributes
          ]
      )

--
-- /See:/ 'newOrderLineItemProductFee' smart constructor.
data OrderLineItemProductFee = OrderLineItemProductFee
  { -- | Amount of the fee.
    amount :: (Core.Maybe Price),
    -- | Name of the fee.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderLineItemProductFee' with the minimum fields required to make a request.
newOrderLineItemProductFee ::
  OrderLineItemProductFee
newOrderLineItemProductFee =
  OrderLineItemProductFee {amount = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON OrderLineItemProductFee where
  parseJSON =
    Core.withObject
      "OrderLineItemProductFee"
      ( \o ->
          OrderLineItemProductFee
            Core.<$> (o Core..:? "amount") Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON OrderLineItemProductFee where
  toJSON OrderLineItemProductFee {..} =
    Core.object
      ( Core.catMaybes
          [ ("amount" Core..=) Core.<$> amount,
            ("name" Core..=) Core.<$> name
          ]
      )

--
-- /See:/ 'newOrderLineItemProductVariantAttribute' smart constructor.
data OrderLineItemProductVariantAttribute = OrderLineItemProductVariantAttribute
  { -- | The dimension of the variant.
    dimension :: (Core.Maybe Core.Text),
    -- | The value for the dimension.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderLineItemProductVariantAttribute' with the minimum fields required to make a request.
newOrderLineItemProductVariantAttribute ::
  OrderLineItemProductVariantAttribute
newOrderLineItemProductVariantAttribute =
  OrderLineItemProductVariantAttribute
    { dimension = Core.Nothing,
      value = Core.Nothing
    }

instance
  Core.FromJSON
    OrderLineItemProductVariantAttribute
  where
  parseJSON =
    Core.withObject
      "OrderLineItemProductVariantAttribute"
      ( \o ->
          OrderLineItemProductVariantAttribute
            Core.<$> (o Core..:? "dimension")
            Core.<*> (o Core..:? "value")
      )

instance
  Core.ToJSON
    OrderLineItemProductVariantAttribute
  where
  toJSON OrderLineItemProductVariantAttribute {..} =
    Core.object
      ( Core.catMaybes
          [ ("dimension" Core..=) Core.<$> dimension,
            ("value" Core..=) Core.<$> value
          ]
      )

--
-- /See:/ 'newOrderLineItemReturnInfo' smart constructor.
data OrderLineItemReturnInfo = OrderLineItemReturnInfo
  { -- | Required. How many days later the item can be returned.
    daysToReturn :: (Core.Maybe Core.Int32),
    -- | Required. Whether the item is returnable.
    isReturnable :: (Core.Maybe Core.Bool),
    -- | Required. URL of the item return policy.
    policyUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderLineItemReturnInfo' with the minimum fields required to make a request.
newOrderLineItemReturnInfo ::
  OrderLineItemReturnInfo
newOrderLineItemReturnInfo =
  OrderLineItemReturnInfo
    { daysToReturn = Core.Nothing,
      isReturnable = Core.Nothing,
      policyUrl = Core.Nothing
    }

instance Core.FromJSON OrderLineItemReturnInfo where
  parseJSON =
    Core.withObject
      "OrderLineItemReturnInfo"
      ( \o ->
          OrderLineItemReturnInfo
            Core.<$> (o Core..:? "daysToReturn")
            Core.<*> (o Core..:? "isReturnable")
            Core.<*> (o Core..:? "policyUrl")
      )

instance Core.ToJSON OrderLineItemReturnInfo where
  toJSON OrderLineItemReturnInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("daysToReturn" Core..=) Core.<$> daysToReturn,
            ("isReturnable" Core..=) Core.<$> isReturnable,
            ("policyUrl" Core..=) Core.<$> policyUrl
          ]
      )

--
-- /See:/ 'newOrderLineItemShippingDetails' smart constructor.
data OrderLineItemShippingDetails = OrderLineItemShippingDetails
  { -- | Required. The delivery by date, in ISO 8601 format.
    deliverByDate :: (Core.Maybe Core.Text),
    -- | Required. Details of the shipping method.
    method :: (Core.Maybe OrderLineItemShippingDetailsMethod),
    -- | The promised time in minutes in which the order will be ready for pickup. This only applies to buy-online-pickup-in-store same-day order.
    pickupPromiseInMinutes :: (Core.Maybe Core.Word32),
    -- | Required. The ship by date, in ISO 8601 format.
    shipByDate :: (Core.Maybe Core.Text),
    -- | Type of shipment. Indicates whether @deliveryDetails@ or @pickupDetails@ is applicable for this shipment. Acceptable values are: - \"@delivery@\" - \"@pickup@\"
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderLineItemShippingDetails' with the minimum fields required to make a request.
newOrderLineItemShippingDetails ::
  OrderLineItemShippingDetails
newOrderLineItemShippingDetails =
  OrderLineItemShippingDetails
    { deliverByDate = Core.Nothing,
      method = Core.Nothing,
      pickupPromiseInMinutes = Core.Nothing,
      shipByDate = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON OrderLineItemShippingDetails where
  parseJSON =
    Core.withObject
      "OrderLineItemShippingDetails"
      ( \o ->
          OrderLineItemShippingDetails
            Core.<$> (o Core..:? "deliverByDate")
            Core.<*> (o Core..:? "method")
            Core.<*> (o Core..:? "pickupPromiseInMinutes")
            Core.<*> (o Core..:? "shipByDate")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON OrderLineItemShippingDetails where
  toJSON OrderLineItemShippingDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("deliverByDate" Core..=) Core.<$> deliverByDate,
            ("method" Core..=) Core.<$> method,
            ("pickupPromiseInMinutes" Core..=)
              Core.<$> pickupPromiseInMinutes,
            ("shipByDate" Core..=) Core.<$> shipByDate,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newOrderLineItemShippingDetailsMethod' smart constructor.
data OrderLineItemShippingDetailsMethod = OrderLineItemShippingDetailsMethod
  { -- | The carrier for the shipping. Optional. See @shipments[].carrier@ for a list of acceptable values.
    carrier :: (Core.Maybe Core.Text),
    -- | Required. Maximum transit time.
    maxDaysInTransit :: (Core.Maybe Core.Word32),
    -- | Required. The name of the shipping method.
    methodName :: (Core.Maybe Core.Text),
    -- | Required. Minimum transit time.
    minDaysInTransit :: (Core.Maybe Core.Word32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderLineItemShippingDetailsMethod' with the minimum fields required to make a request.
newOrderLineItemShippingDetailsMethod ::
  OrderLineItemShippingDetailsMethod
newOrderLineItemShippingDetailsMethod =
  OrderLineItemShippingDetailsMethod
    { carrier = Core.Nothing,
      maxDaysInTransit = Core.Nothing,
      methodName = Core.Nothing,
      minDaysInTransit = Core.Nothing
    }

instance
  Core.FromJSON
    OrderLineItemShippingDetailsMethod
  where
  parseJSON =
    Core.withObject
      "OrderLineItemShippingDetailsMethod"
      ( \o ->
          OrderLineItemShippingDetailsMethod
            Core.<$> (o Core..:? "carrier")
            Core.<*> (o Core..:? "maxDaysInTransit")
            Core.<*> (o Core..:? "methodName")
            Core.<*> (o Core..:? "minDaysInTransit")
      )

instance
  Core.ToJSON
    OrderLineItemShippingDetailsMethod
  where
  toJSON OrderLineItemShippingDetailsMethod {..} =
    Core.object
      ( Core.catMaybes
          [ ("carrier" Core..=) Core.<$> carrier,
            ("maxDaysInTransit" Core..=)
              Core.<$> maxDaysInTransit,
            ("methodName" Core..=) Core.<$> methodName,
            ("minDaysInTransit" Core..=)
              Core.<$> minDaysInTransit
          ]
      )

--
-- /See:/ 'newOrderMerchantProvidedAnnotation' smart constructor.
data OrderMerchantProvidedAnnotation = OrderMerchantProvidedAnnotation
  { -- | Key for additional merchant provided (as key-value pairs) annotation about the line item.
    key :: (Core.Maybe Core.Text),
    -- | Value for additional merchant provided (as key-value pairs) annotation about the line item.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderMerchantProvidedAnnotation' with the minimum fields required to make a request.
newOrderMerchantProvidedAnnotation ::
  OrderMerchantProvidedAnnotation
newOrderMerchantProvidedAnnotation =
  OrderMerchantProvidedAnnotation {key = Core.Nothing, value = Core.Nothing}

instance
  Core.FromJSON
    OrderMerchantProvidedAnnotation
  where
  parseJSON =
    Core.withObject
      "OrderMerchantProvidedAnnotation"
      ( \o ->
          OrderMerchantProvidedAnnotation
            Core.<$> (o Core..:? "key") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON OrderMerchantProvidedAnnotation where
  toJSON OrderMerchantProvidedAnnotation {..} =
    Core.object
      ( Core.catMaybes
          [ ("key" Core..=) Core.<$> key,
            ("value" Core..=) Core.<$> value
          ]
      )

--
-- /See:/ 'newOrderOrderAnnotation' smart constructor.
data OrderOrderAnnotation = OrderOrderAnnotation
  { -- | Key for additional google provided (as key-value pairs) annotation.
    key :: (Core.Maybe Core.Text),
    -- | Value for additional google provided (as key-value pairs) annotation.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderOrderAnnotation' with the minimum fields required to make a request.
newOrderOrderAnnotation ::
  OrderOrderAnnotation
newOrderOrderAnnotation =
  OrderOrderAnnotation {key = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON OrderOrderAnnotation where
  parseJSON =
    Core.withObject
      "OrderOrderAnnotation"
      ( \o ->
          OrderOrderAnnotation
            Core.<$> (o Core..:? "key") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON OrderOrderAnnotation where
  toJSON OrderOrderAnnotation {..} =
    Core.object
      ( Core.catMaybes
          [ ("key" Core..=) Core.<$> key,
            ("value" Core..=) Core.<$> value
          ]
      )

--
-- /See:/ 'newOrderPickupDetails' smart constructor.
data OrderPickupDetails = OrderPickupDetails
  { -- | Address of the pickup location where the shipment should be sent. Note that @recipientName@ in the address is the name of the business at the pickup location.
    address :: (Core.Maybe OrderAddress),
    -- | Collectors authorized to pick up shipment from the pickup location.
    collectors :: (Core.Maybe [OrderPickupDetailsCollector]),
    -- | ID of the pickup location.
    locationId :: (Core.Maybe Core.Text),
    -- | The pickup type of this order. Acceptable values are: - \"@merchantStore@\" - \"@merchantStoreCurbside@\" - \"@merchantStoreLocker@\" - \"@thirdPartyPickupPoint@\" - \"@thirdPartyLocker@\"
    pickupType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderPickupDetails' with the minimum fields required to make a request.
newOrderPickupDetails ::
  OrderPickupDetails
newOrderPickupDetails =
  OrderPickupDetails
    { address = Core.Nothing,
      collectors = Core.Nothing,
      locationId = Core.Nothing,
      pickupType = Core.Nothing
    }

instance Core.FromJSON OrderPickupDetails where
  parseJSON =
    Core.withObject
      "OrderPickupDetails"
      ( \o ->
          OrderPickupDetails
            Core.<$> (o Core..:? "address")
            Core.<*> (o Core..:? "collectors" Core..!= Core.mempty)
            Core.<*> (o Core..:? "locationId")
            Core.<*> (o Core..:? "pickupType")
      )

instance Core.ToJSON OrderPickupDetails where
  toJSON OrderPickupDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("address" Core..=) Core.<$> address,
            ("collectors" Core..=) Core.<$> collectors,
            ("locationId" Core..=) Core.<$> locationId,
            ("pickupType" Core..=) Core.<$> pickupType
          ]
      )

--
-- /See:/ 'newOrderPickupDetailsCollector' smart constructor.
data OrderPickupDetailsCollector = OrderPickupDetailsCollector
  { -- | Name of the person picking up the shipment.
    name :: (Core.Maybe Core.Text),
    -- | Phone number of the person picking up the shipment.
    phoneNumber :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderPickupDetailsCollector' with the minimum fields required to make a request.
newOrderPickupDetailsCollector ::
  OrderPickupDetailsCollector
newOrderPickupDetailsCollector =
  OrderPickupDetailsCollector {name = Core.Nothing, phoneNumber = Core.Nothing}

instance Core.FromJSON OrderPickupDetailsCollector where
  parseJSON =
    Core.withObject
      "OrderPickupDetailsCollector"
      ( \o ->
          OrderPickupDetailsCollector
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "phoneNumber")
      )

instance Core.ToJSON OrderPickupDetailsCollector where
  toJSON OrderPickupDetailsCollector {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("phoneNumber" Core..=) Core.<$> phoneNumber
          ]
      )

--
-- /See:/ 'newOrderPromotion' smart constructor.
data OrderPromotion = OrderPromotion
  { -- | Items that this promotion may be applied to. If empty, there are no restrictions on applicable items and quantity. This field will also be empty for shipping promotions because shipping is not tied to any specific item.
    applicableItems :: (Core.Maybe [OrderPromotionItem]),
    -- | Items that this promotion have been applied to. Do not provide for @orders.createtestorder@. This field will be empty for shipping promotions because shipping is not tied to any specific item.
    appliedItems :: (Core.Maybe [OrderPromotionItem]),
    -- | Promotion end time in ISO 8601 format. Date, time, and offset required, for example, \"2020-01-02T09:00:00+01:00\" or \"2020-01-02T09:00:00Z\".
    endTime :: (Core.Maybe Core.Text),
    -- | Required. The party funding the promotion. Only @merchant@ is supported for @orders.createtestorder@. Acceptable values are: - \"@google@\" - \"@merchant@\"
    funder :: (Core.Maybe Core.Text),
    -- | Required. This field is used to identify promotions within merchants\' own systems.
    merchantPromotionId :: (Core.Maybe Core.Text),
    -- | Estimated discount applied to price. Amount is pre-tax or post-tax depending on location of order.
    priceValue :: (Core.Maybe Price),
    -- | A short title of the promotion to be shown on the checkout page. Do not provide for @orders.createtestorder@.
    shortTitle :: (Core.Maybe Core.Text),
    -- | Promotion start time in ISO 8601 format. Date, time, and offset required, for example, \"2020-01-02T09:00:00+01:00\" or \"2020-01-02T09:00:00Z\".
    startTime :: (Core.Maybe Core.Text),
    -- | Required. The category of the promotion. Only @moneyOff@ is supported for @orders.createtestorder@. Acceptable values are: - \"@buyMGetMoneyOff@\" - \"@buyMGetNMoneyOff@\" - \"@buyMGetNPercentOff@\" - \"@buyMGetPercentOff@\" - \"@freeGift@\" - \"@freeGiftWithItemId@\" - \"@freeGiftWithValue@\" - \"@freeShippingOvernight@\" - \"@freeShippingStandard@\" - \"@freeShippingTwoDay@\" - \"@moneyOff@\" - \"@percentOff@\" - \"@rewardPoints@\" - \"@salePrice@\"
    subtype :: (Core.Maybe Core.Text),
    -- | Estimated discount applied to tax (if allowed by law). Do not provide for @orders.createtestorder@.
    taxValue :: (Core.Maybe Price),
    -- | Required. The title of the promotion.
    title :: (Core.Maybe Core.Text),
    -- | Required. The scope of the promotion. Only @product@ is supported for @orders.createtestorder@. Acceptable values are: - \"@product@\" - \"@shipping@\"
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderPromotion' with the minimum fields required to make a request.
newOrderPromotion ::
  OrderPromotion
newOrderPromotion =
  OrderPromotion
    { applicableItems = Core.Nothing,
      appliedItems = Core.Nothing,
      endTime = Core.Nothing,
      funder = Core.Nothing,
      merchantPromotionId = Core.Nothing,
      priceValue = Core.Nothing,
      shortTitle = Core.Nothing,
      startTime = Core.Nothing,
      subtype = Core.Nothing,
      taxValue = Core.Nothing,
      title = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON OrderPromotion where
  parseJSON =
    Core.withObject
      "OrderPromotion"
      ( \o ->
          OrderPromotion
            Core.<$> (o Core..:? "applicableItems" Core..!= Core.mempty)
            Core.<*> (o Core..:? "appliedItems" Core..!= Core.mempty)
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "funder")
            Core.<*> (o Core..:? "merchantPromotionId")
            Core.<*> (o Core..:? "priceValue")
            Core.<*> (o Core..:? "shortTitle")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "subtype")
            Core.<*> (o Core..:? "taxValue")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON OrderPromotion where
  toJSON OrderPromotion {..} =
    Core.object
      ( Core.catMaybes
          [ ("applicableItems" Core..=)
              Core.<$> applicableItems,
            ("appliedItems" Core..=) Core.<$> appliedItems,
            ("endTime" Core..=) Core.<$> endTime,
            ("funder" Core..=) Core.<$> funder,
            ("merchantPromotionId" Core..=)
              Core.<$> merchantPromotionId,
            ("priceValue" Core..=) Core.<$> priceValue,
            ("shortTitle" Core..=) Core.<$> shortTitle,
            ("startTime" Core..=) Core.<$> startTime,
            ("subtype" Core..=) Core.<$> subtype,
            ("taxValue" Core..=) Core.<$> taxValue,
            ("title" Core..=) Core.<$> title,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newOrderPromotionItem' smart constructor.
data OrderPromotionItem = OrderPromotionItem
  { -- | The line item ID of a product. Do not provide for @orders.createtestorder@.
    lineItemId :: (Core.Maybe Core.Text),
    -- | Required. Offer ID of a product. Only for @orders.createtestorder@.
    offerId :: (Core.Maybe Core.Text),
    -- | @orders.createtestorder@.
    productId :: (Core.Maybe Core.Text),
    -- | The quantity of the associated product. Do not provide for @orders.createtestorder@.
    quantity :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderPromotionItem' with the minimum fields required to make a request.
newOrderPromotionItem ::
  OrderPromotionItem
newOrderPromotionItem =
  OrderPromotionItem
    { lineItemId = Core.Nothing,
      offerId = Core.Nothing,
      productId = Core.Nothing,
      quantity = Core.Nothing
    }

instance Core.FromJSON OrderPromotionItem where
  parseJSON =
    Core.withObject
      "OrderPromotionItem"
      ( \o ->
          OrderPromotionItem
            Core.<$> (o Core..:? "lineItemId")
            Core.<*> (o Core..:? "offerId")
            Core.<*> (o Core..:? "productId")
            Core.<*> (o Core..:? "quantity")
      )

instance Core.ToJSON OrderPromotionItem where
  toJSON OrderPromotionItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("lineItemId" Core..=) Core.<$> lineItemId,
            ("offerId" Core..=) Core.<$> offerId,
            ("productId" Core..=) Core.<$> productId,
            ("quantity" Core..=) Core.<$> quantity
          ]
      )

--
-- /See:/ 'newOrderRefund' smart constructor.
data OrderRefund = OrderRefund
  { -- | The actor that created the refund. Acceptable values are: - \"@customer@\" - \"@googleBot@\" - \"@googleCustomerService@\" - \"@googlePayments@\" - \"@googleSabre@\" - \"@merchant@\"
    actor :: (Core.Maybe Core.Text),
    -- | The amount that is refunded.
    amount :: (Core.Maybe Price),
    -- | Date on which the item has been created, in ISO 8601 format.
    creationDate :: (Core.Maybe Core.Text),
    -- | The reason for the refund. Acceptable values are: - \"@adjustment@\" - \"@autoPostInternal@\" - \"@autoPostInvalidBillingAddress@\" - \"@autoPostNoInventory@\" - \"@autoPostPriceError@\" - \"@autoPostUndeliverableShippingAddress@\" - \"@couponAbuse@\" - \"@courtesyAdjustment@\" - \"@customerCanceled@\" - \"@customerDiscretionaryReturn@\" - \"@customerInitiatedMerchantCancel@\" - \"@customerSupportRequested@\" - \"@deliveredLateByCarrier@\" - \"@deliveredTooLate@\" - \"@expiredItem@\" - \"@failToPushOrderGoogleError@\" - \"@failToPushOrderMerchantError@\" - \"@failToPushOrderMerchantFulfillmentError@\" - \"@failToPushOrderToMerchant@\" - \"@failToPushOrderToMerchantOutOfStock@\" - \"@feeAdjustment@\" - \"@invalidCoupon@\" - \"@lateShipmentCredit@\" - \"@malformedShippingAddress@\" - \"@merchantDidNotShipOnTime@\" - \"@noInventory@\" - \"@orderTimeout@\" - \"@other@\" - \"@paymentAbuse@\" - \"@paymentDeclined@\" - \"@priceAdjustment@\" - \"@priceError@\" - \"@productArrivedDamaged@\" -
    -- \"@productNotAsDescribed@\" - \"@promoReallocation@\" - \"@qualityNotAsExpected@\" - \"@returnRefundAbuse@\" - \"@shippingCostAdjustment@\" - \"@shippingPriceError@\" - \"@taxAdjustment@\" - \"@taxError@\" - \"@undeliverableShippingAddress@\" - \"@unsupportedPoBoxAddress@\" - \"@wrongProductShipped@\"
    reason :: (Core.Maybe Core.Text),
    -- | The explanation of the reason.
    reasonText :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderRefund' with the minimum fields required to make a request.
newOrderRefund ::
  OrderRefund
newOrderRefund =
  OrderRefund
    { actor = Core.Nothing,
      amount = Core.Nothing,
      creationDate = Core.Nothing,
      reason = Core.Nothing,
      reasonText = Core.Nothing
    }

instance Core.FromJSON OrderRefund where
  parseJSON =
    Core.withObject
      "OrderRefund"
      ( \o ->
          OrderRefund
            Core.<$> (o Core..:? "actor")
            Core.<*> (o Core..:? "amount")
            Core.<*> (o Core..:? "creationDate")
            Core.<*> (o Core..:? "reason")
            Core.<*> (o Core..:? "reasonText")
      )

instance Core.ToJSON OrderRefund where
  toJSON OrderRefund {..} =
    Core.object
      ( Core.catMaybes
          [ ("actor" Core..=) Core.<$> actor,
            ("amount" Core..=) Core.<$> amount,
            ("creationDate" Core..=) Core.<$> creationDate,
            ("reason" Core..=) Core.<$> reason,
            ("reasonText" Core..=) Core.<$> reasonText
          ]
      )

-- | Order disbursement. All methods require the payment analyst role.
--
-- /See:/ 'newOrderReportDisbursement' smart constructor.
data OrderReportDisbursement = OrderReportDisbursement
  { -- | The disbursement amount.
    disbursementAmount :: (Core.Maybe Price),
    -- | The disbursement date, in ISO 8601 format.
    disbursementCreationDate :: (Core.Maybe Core.Text),
    -- | The date the disbursement was initiated, in ISO 8601 format.
    disbursementDate :: (Core.Maybe Core.Text),
    -- | The ID of the disbursement.
    disbursementId :: (Core.Maybe Core.Text),
    -- | The ID of the managing account.
    merchantId :: (Core.Maybe Core.Word64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderReportDisbursement' with the minimum fields required to make a request.
newOrderReportDisbursement ::
  OrderReportDisbursement
newOrderReportDisbursement =
  OrderReportDisbursement
    { disbursementAmount = Core.Nothing,
      disbursementCreationDate = Core.Nothing,
      disbursementDate = Core.Nothing,
      disbursementId = Core.Nothing,
      merchantId = Core.Nothing
    }

instance Core.FromJSON OrderReportDisbursement where
  parseJSON =
    Core.withObject
      "OrderReportDisbursement"
      ( \o ->
          OrderReportDisbursement
            Core.<$> (o Core..:? "disbursementAmount")
            Core.<*> (o Core..:? "disbursementCreationDate")
            Core.<*> (o Core..:? "disbursementDate")
            Core.<*> (o Core..:? "disbursementId")
            Core.<*> (o Core..:? "merchantId")
      )

instance Core.ToJSON OrderReportDisbursement where
  toJSON OrderReportDisbursement {..} =
    Core.object
      ( Core.catMaybes
          [ ("disbursementAmount" Core..=)
              Core.<$> disbursementAmount,
            ("disbursementCreationDate" Core..=)
              Core.<$> disbursementCreationDate,
            ("disbursementDate" Core..=)
              Core.<$> disbursementDate,
            ("disbursementId" Core..=) Core.<$> disbursementId,
            ("merchantId" Core..=) Core.. Core.AsText
              Core.<$> merchantId
          ]
      )

--
-- /See:/ 'newOrderReportTransaction' smart constructor.
data OrderReportTransaction = OrderReportTransaction
  { -- | The disbursement amount.
    disbursementAmount :: (Core.Maybe Price),
    -- | The date the disbursement was created, in ISO 8601 format.
    disbursementCreationDate :: (Core.Maybe Core.Text),
    -- | The date the disbursement was initiated, in ISO 8601 format.
    disbursementDate :: (Core.Maybe Core.Text),
    -- | The ID of the disbursement.
    disbursementId :: (Core.Maybe Core.Text),
    -- | The ID of the managing account.
    merchantId :: (Core.Maybe Core.Word64),
    -- | Merchant-provided ID of the order.
    merchantOrderId :: (Core.Maybe Core.Text),
    -- | The ID of the order.
    orderId :: (Core.Maybe Core.Text),
    -- | Total amount for the items.
    productAmount :: (Core.Maybe ProductAmount),
    -- | The date of the transaction, in ISO 8601 format.
    transactionDate :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderReportTransaction' with the minimum fields required to make a request.
newOrderReportTransaction ::
  OrderReportTransaction
newOrderReportTransaction =
  OrderReportTransaction
    { disbursementAmount = Core.Nothing,
      disbursementCreationDate = Core.Nothing,
      disbursementDate = Core.Nothing,
      disbursementId = Core.Nothing,
      merchantId = Core.Nothing,
      merchantOrderId = Core.Nothing,
      orderId = Core.Nothing,
      productAmount = Core.Nothing,
      transactionDate = Core.Nothing
    }

instance Core.FromJSON OrderReportTransaction where
  parseJSON =
    Core.withObject
      "OrderReportTransaction"
      ( \o ->
          OrderReportTransaction
            Core.<$> (o Core..:? "disbursementAmount")
            Core.<*> (o Core..:? "disbursementCreationDate")
            Core.<*> (o Core..:? "disbursementDate")
            Core.<*> (o Core..:? "disbursementId")
            Core.<*> (o Core..:? "merchantId")
            Core.<*> (o Core..:? "merchantOrderId")
            Core.<*> (o Core..:? "orderId")
            Core.<*> (o Core..:? "productAmount")
            Core.<*> (o Core..:? "transactionDate")
      )

instance Core.ToJSON OrderReportTransaction where
  toJSON OrderReportTransaction {..} =
    Core.object
      ( Core.catMaybes
          [ ("disbursementAmount" Core..=)
              Core.<$> disbursementAmount,
            ("disbursementCreationDate" Core..=)
              Core.<$> disbursementCreationDate,
            ("disbursementDate" Core..=)
              Core.<$> disbursementDate,
            ("disbursementId" Core..=) Core.<$> disbursementId,
            ("merchantId" Core..=) Core.. Core.AsText
              Core.<$> merchantId,
            ("merchantOrderId" Core..=) Core.<$> merchantOrderId,
            ("orderId" Core..=) Core.<$> orderId,
            ("productAmount" Core..=) Core.<$> productAmount,
            ("transactionDate" Core..=)
              Core.<$> transactionDate
          ]
      )

--
-- /See:/ 'newOrderReturn' smart constructor.
data OrderReturn = OrderReturn
  { -- | The actor that created the refund. Acceptable values are: - \"@customer@\" - \"@googleBot@\" - \"@googleCustomerService@\" - \"@googlePayments@\" - \"@googleSabre@\" - \"@merchant@\"
    actor :: (Core.Maybe Core.Text),
    -- | Date on which the item has been created, in ISO 8601 format.
    creationDate :: (Core.Maybe Core.Text),
    -- | Quantity that is returned.
    quantity :: (Core.Maybe Core.Word32),
    -- | The reason for the return. Acceptable values are: - \"@customerDiscretionaryReturn@\" - \"@customerInitiatedMerchantCancel@\" - \"@deliveredTooLate@\" - \"@expiredItem@\" - \"@invalidCoupon@\" - \"@malformedShippingAddress@\" - \"@other@\" - \"@productArrivedDamaged@\" - \"@productNotAsDescribed@\" - \"@qualityNotAsExpected@\" - \"@undeliverableShippingAddress@\" - \"@unsupportedPoBoxAddress@\" - \"@wrongProductShipped@\"
    reason :: (Core.Maybe Core.Text),
    -- | The explanation of the reason.
    reasonText :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderReturn' with the minimum fields required to make a request.
newOrderReturn ::
  OrderReturn
newOrderReturn =
  OrderReturn
    { actor = Core.Nothing,
      creationDate = Core.Nothing,
      quantity = Core.Nothing,
      reason = Core.Nothing,
      reasonText = Core.Nothing
    }

instance Core.FromJSON OrderReturn where
  parseJSON =
    Core.withObject
      "OrderReturn"
      ( \o ->
          OrderReturn
            Core.<$> (o Core..:? "actor")
            Core.<*> (o Core..:? "creationDate")
            Core.<*> (o Core..:? "quantity")
            Core.<*> (o Core..:? "reason")
            Core.<*> (o Core..:? "reasonText")
      )

instance Core.ToJSON OrderReturn where
  toJSON OrderReturn {..} =
    Core.object
      ( Core.catMaybes
          [ ("actor" Core..=) Core.<$> actor,
            ("creationDate" Core..=) Core.<$> creationDate,
            ("quantity" Core..=) Core.<$> quantity,
            ("reason" Core..=) Core.<$> reason,
            ("reasonText" Core..=) Core.<$> reasonText
          ]
      )

--
-- /See:/ 'newOrderShipment' smart constructor.
data OrderShipment = OrderShipment
  { -- | The carrier handling the shipment. For supported carriers, Google includes the carrier name and tracking URL in emails to customers. For select supported carriers, Google also automatically updates the shipment status based on the provided shipment ID. /Note:/ You can also use unsupported carriers, but emails to customers won\'t include the carrier name or tracking URL, and there will be no automatic order status updates. Supported carriers for \"US\" are: - \"@ups@\" (United Parcel Service) /automatic status updates/ - \"@usps@\" (United States Postal Service) /automatic status updates/ - \"@fedex@\" (FedEx) /automatic status updates / - \"@dhl@\" (DHL eCommerce) /automatic status updates/ (US only) - \"@ontrac@\" (OnTrac) /automatic status updates / - \"@dhl express@\" (DHL Express) - \"@deliv@\" (Deliv) - \"@dynamex@\" (TForce) - \"@lasership@\" (LaserShip) - \"@mpx@\" (Military Parcel Xpress) - \"@uds@\" (United Delivery Service) - \"@efw@\" (Estes Forwarding Worldwide) - \"@jd logistics@\" (JD Logistics)
    -- - \"@yunexpress@\" (YunExpress) - \"@china post@\" (China Post) - \"@china ems@\" (China Post Express Mail Service) - \"@singapore post@\" (Singapore Post) - \"@pos malaysia@\" (Pos Malaysia) - \"@postnl@\" (PostNL) - \"@ptt@\" (PTT Turkish Post) - \"@eub@\" (ePacket) - \"@chukou1@\" (Chukou1 Logistics) - \"@bestex@\" (Best Express) - \"@canada post@\" (Canada Post) - \"@purolator@\" (Purolator) - \"@canpar@\" (Canpar) - \"@india post@\" (India Post) - \"@blue dart@\" (Blue Dart) - \"@delhivery@\" (Delhivery) - \"@dtdc@\" (DTDC) - \"@tpc india@\" (TPC India) - \"@lso@\" (Lone Star Overnight) - \"@tww@\" (Team Worldwide) Supported carriers for FR are: - \"@la poste@\" (La Poste) /automatic status updates / - \"@colissimo@\" (Colissimo by La Poste) /automatic status updates/ - \"@ups@\" (United Parcel Service) /automatic status updates / - \"@chronopost@\" (Chronopost by La Poste) - \"@gls@\" (General Logistics Systems France) - \"@dpd@\" (DPD Group by GeoPost) - \"@bpost@\" (Belgian Post Group) -
    -- \"@colis prive@\" (Colis Privé) - \"@boxtal@\" (Boxtal) - \"@geodis@\" (GEODIS) - \"@tnt@\" (TNT) - \"@db schenker@\" (DB Schenker) - \"@aramex@\" (Aramex)
    carrier :: (Core.Maybe Core.Text),
    -- | Date on which the shipment has been created, in ISO 8601 format.
    creationDate :: (Core.Maybe Core.Text),
    -- | Date on which the shipment has been delivered, in ISO 8601 format. Present only if @status@ is @delivered@
    deliveryDate :: (Core.Maybe Core.Text),
    -- | The ID of the shipment.
    id :: (Core.Maybe Core.Text),
    -- | The line items that are shipped.
    lineItems :: (Core.Maybe [OrderShipmentLineItemShipment]),
    -- | Delivery details of the shipment if scheduling is needed.
    scheduledDeliveryDetails :: (Core.Maybe OrderShipmentScheduledDeliveryDetails),
    -- | The shipment group ID of the shipment. This is set in shiplineitems request.
    shipmentGroupId :: (Core.Maybe Core.Text),
    -- | The status of the shipment. Acceptable values are: - \"@delivered@\" - \"@readyForPickup@\" - \"@shipped@\" - \"@undeliverable@\"
    status :: (Core.Maybe Core.Text),
    -- | The tracking ID for the shipment.
    trackingId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderShipment' with the minimum fields required to make a request.
newOrderShipment ::
  OrderShipment
newOrderShipment =
  OrderShipment
    { carrier = Core.Nothing,
      creationDate = Core.Nothing,
      deliveryDate = Core.Nothing,
      id = Core.Nothing,
      lineItems = Core.Nothing,
      scheduledDeliveryDetails = Core.Nothing,
      shipmentGroupId = Core.Nothing,
      status = Core.Nothing,
      trackingId = Core.Nothing
    }

instance Core.FromJSON OrderShipment where
  parseJSON =
    Core.withObject
      "OrderShipment"
      ( \o ->
          OrderShipment
            Core.<$> (o Core..:? "carrier")
            Core.<*> (o Core..:? "creationDate")
            Core.<*> (o Core..:? "deliveryDate")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "lineItems" Core..!= Core.mempty)
            Core.<*> (o Core..:? "scheduledDeliveryDetails")
            Core.<*> (o Core..:? "shipmentGroupId")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "trackingId")
      )

instance Core.ToJSON OrderShipment where
  toJSON OrderShipment {..} =
    Core.object
      ( Core.catMaybes
          [ ("carrier" Core..=) Core.<$> carrier,
            ("creationDate" Core..=) Core.<$> creationDate,
            ("deliveryDate" Core..=) Core.<$> deliveryDate,
            ("id" Core..=) Core.<$> id,
            ("lineItems" Core..=) Core.<$> lineItems,
            ("scheduledDeliveryDetails" Core..=)
              Core.<$> scheduledDeliveryDetails,
            ("shipmentGroupId" Core..=) Core.<$> shipmentGroupId,
            ("status" Core..=) Core.<$> status,
            ("trackingId" Core..=) Core.<$> trackingId
          ]
      )

--
-- /See:/ 'newOrderShipmentLineItemShipment' smart constructor.
data OrderShipmentLineItemShipment = OrderShipmentLineItemShipment
  { -- | The ID of the line item that is shipped. This value is assigned by Google when an order is created. Either lineItemId or productId is required.
    lineItemId :: (Core.Maybe Core.Text),
    -- | The ID of the product to ship. This is the REST ID used in the products service. Either lineItemId or productId is required.
    productId :: (Core.Maybe Core.Text),
    -- | The quantity that is shipped.
    quantity :: (Core.Maybe Core.Word32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderShipmentLineItemShipment' with the minimum fields required to make a request.
newOrderShipmentLineItemShipment ::
  OrderShipmentLineItemShipment
newOrderShipmentLineItemShipment =
  OrderShipmentLineItemShipment
    { lineItemId = Core.Nothing,
      productId = Core.Nothing,
      quantity = Core.Nothing
    }

instance Core.FromJSON OrderShipmentLineItemShipment where
  parseJSON =
    Core.withObject
      "OrderShipmentLineItemShipment"
      ( \o ->
          OrderShipmentLineItemShipment
            Core.<$> (o Core..:? "lineItemId")
            Core.<*> (o Core..:? "productId")
            Core.<*> (o Core..:? "quantity")
      )

instance Core.ToJSON OrderShipmentLineItemShipment where
  toJSON OrderShipmentLineItemShipment {..} =
    Core.object
      ( Core.catMaybes
          [ ("lineItemId" Core..=) Core.<$> lineItemId,
            ("productId" Core..=) Core.<$> productId,
            ("quantity" Core..=) Core.<$> quantity
          ]
      )

--
-- /See:/ 'newOrderShipmentScheduledDeliveryDetails' smart constructor.
data OrderShipmentScheduledDeliveryDetails = OrderShipmentScheduledDeliveryDetails
  { -- | The phone number of the carrier fulfilling the delivery. The phone number is formatted as the international notation in ITU-T Recommendation E.123 (for example, \"+41 44 668 1800\").
    carrierPhoneNumber :: (Core.Maybe Core.Text),
    -- | The date a shipment is scheduled for delivery, in ISO 8601 format.
    scheduledDate :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderShipmentScheduledDeliveryDetails' with the minimum fields required to make a request.
newOrderShipmentScheduledDeliveryDetails ::
  OrderShipmentScheduledDeliveryDetails
newOrderShipmentScheduledDeliveryDetails =
  OrderShipmentScheduledDeliveryDetails
    { carrierPhoneNumber = Core.Nothing,
      scheduledDate = Core.Nothing
    }

instance
  Core.FromJSON
    OrderShipmentScheduledDeliveryDetails
  where
  parseJSON =
    Core.withObject
      "OrderShipmentScheduledDeliveryDetails"
      ( \o ->
          OrderShipmentScheduledDeliveryDetails
            Core.<$> (o Core..:? "carrierPhoneNumber")
            Core.<*> (o Core..:? "scheduledDate")
      )

instance
  Core.ToJSON
    OrderShipmentScheduledDeliveryDetails
  where
  toJSON OrderShipmentScheduledDeliveryDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("carrierPhoneNumber" Core..=)
              Core.<$> carrierPhoneNumber,
            ("scheduledDate" Core..=) Core.<$> scheduledDate
          ]
      )

-- | Represents a merchant trade from which signals are extracted, e.g. shipping.
--
-- /See:/ 'newOrderTrackingSignal' smart constructor.
data OrderTrackingSignal = OrderTrackingSignal
  { -- | The shipping fee of the order; this value should be set to zero in the case of free shipping.
    customerShippingFee :: (Core.Maybe PriceAmount),
    -- | Required. The delivery postal code, as a continuous string without spaces or dashes, e.g. \"95016\". This field will be anonymized in returned OrderTrackingSignal creation response.
    deliveryPostalCode :: (Core.Maybe Core.Text),
    -- | Required. The [CLDR territory code] (http:\/\/www.unicode.org\/repos\/cldr\/tags\/latest\/common\/main\/en.xml) for the shipping destination.
    deliveryRegionCode :: (Core.Maybe Core.Text),
    -- | Information about line items in the order.
    lineItems :: (Core.Maybe [OrderTrackingSignalLineItemDetails]),
    -- | The Google merchant ID of this order tracking signal. This value is optional. If left unset, the caller\'s merchant ID is used. You must request access in order to provide data on behalf of another merchant. For more information, see </shopping-content/guides/order-tracking-signals Submitting Order Tracking Signals>.
    merchantId :: (Core.Maybe Core.Int64),
    -- | Required. The time when the order was created on the merchant side. Include the year and timezone string, if available.
    orderCreatedTime :: (Core.Maybe DateTime'),
    -- | Required. The ID of the order on the merchant side. This field will be hashed in returned OrderTrackingSignal creation response.
    orderId :: (Core.Maybe Core.Text),
    -- | Output only. The ID that uniquely identifies this order tracking signal.
    orderTrackingSignalId :: (Core.Maybe Core.Int64),
    -- | The mapping of the line items to the shipment information.
    shipmentLineItemMapping :: (Core.Maybe [OrderTrackingSignalShipmentLineItemMapping]),
    -- | The shipping information for the order.
    shippingInfo :: (Core.Maybe [OrderTrackingSignalShippingInfo])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderTrackingSignal' with the minimum fields required to make a request.
newOrderTrackingSignal ::
  OrderTrackingSignal
newOrderTrackingSignal =
  OrderTrackingSignal
    { customerShippingFee = Core.Nothing,
      deliveryPostalCode = Core.Nothing,
      deliveryRegionCode = Core.Nothing,
      lineItems = Core.Nothing,
      merchantId = Core.Nothing,
      orderCreatedTime = Core.Nothing,
      orderId = Core.Nothing,
      orderTrackingSignalId = Core.Nothing,
      shipmentLineItemMapping = Core.Nothing,
      shippingInfo = Core.Nothing
    }

instance Core.FromJSON OrderTrackingSignal where
  parseJSON =
    Core.withObject
      "OrderTrackingSignal"
      ( \o ->
          OrderTrackingSignal
            Core.<$> (o Core..:? "customerShippingFee")
            Core.<*> (o Core..:? "deliveryPostalCode")
            Core.<*> (o Core..:? "deliveryRegionCode")
            Core.<*> (o Core..:? "lineItems" Core..!= Core.mempty)
            Core.<*> (o Core..:? "merchantId")
            Core.<*> (o Core..:? "orderCreatedTime")
            Core.<*> (o Core..:? "orderId")
            Core.<*> (o Core..:? "orderTrackingSignalId")
            Core.<*> ( o Core..:? "shipmentLineItemMapping"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "shippingInfo" Core..!= Core.mempty)
      )

instance Core.ToJSON OrderTrackingSignal where
  toJSON OrderTrackingSignal {..} =
    Core.object
      ( Core.catMaybes
          [ ("customerShippingFee" Core..=)
              Core.<$> customerShippingFee,
            ("deliveryPostalCode" Core..=)
              Core.<$> deliveryPostalCode,
            ("deliveryRegionCode" Core..=)
              Core.<$> deliveryRegionCode,
            ("lineItems" Core..=) Core.<$> lineItems,
            ("merchantId" Core..=) Core.. Core.AsText
              Core.<$> merchantId,
            ("orderCreatedTime" Core..=)
              Core.<$> orderCreatedTime,
            ("orderId" Core..=) Core.<$> orderId,
            ("orderTrackingSignalId" Core..=) Core.. Core.AsText
              Core.<$> orderTrackingSignalId,
            ("shipmentLineItemMapping" Core..=)
              Core.<$> shipmentLineItemMapping,
            ("shippingInfo" Core..=) Core.<$> shippingInfo
          ]
      )

-- | The line items of the order.
--
-- /See:/ 'newOrderTrackingSignalLineItemDetails' smart constructor.
data OrderTrackingSignalLineItemDetails = OrderTrackingSignalLineItemDetails
  { -- | Brand of the product.
    brand :: (Core.Maybe Core.Text),
    -- | The Global Trade Item Number.
    gtin :: (Core.Maybe Core.Text),
    -- | Required. The ID for this line item.
    lineItemId :: (Core.Maybe Core.Text),
    -- | The manufacturer part number.
    mpn :: (Core.Maybe Core.Text),
    -- | Plain text description of this product (deprecated: Please use product_title instead).
    productDescription :: (Core.Maybe Core.Text),
    -- | Required. The Content API REST ID of the product, in the form channel:contentLanguage:targetCountry:offerId.
    productId :: (Core.Maybe Core.Text),
    -- | Plain text title of this product.
    productTitle :: (Core.Maybe Core.Text),
    -- | The quantity of the line item in the order.
    quantity :: (Core.Maybe Core.Int64),
    -- | Merchant SKU for this item (deprecated).
    sku :: (Core.Maybe Core.Text),
    -- | Universal product code for this item (deprecated: Please use GTIN instead).
    upc :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderTrackingSignalLineItemDetails' with the minimum fields required to make a request.
newOrderTrackingSignalLineItemDetails ::
  OrderTrackingSignalLineItemDetails
newOrderTrackingSignalLineItemDetails =
  OrderTrackingSignalLineItemDetails
    { brand = Core.Nothing,
      gtin = Core.Nothing,
      lineItemId = Core.Nothing,
      mpn = Core.Nothing,
      productDescription = Core.Nothing,
      productId = Core.Nothing,
      productTitle = Core.Nothing,
      quantity = Core.Nothing,
      sku = Core.Nothing,
      upc = Core.Nothing
    }

instance
  Core.FromJSON
    OrderTrackingSignalLineItemDetails
  where
  parseJSON =
    Core.withObject
      "OrderTrackingSignalLineItemDetails"
      ( \o ->
          OrderTrackingSignalLineItemDetails
            Core.<$> (o Core..:? "brand")
            Core.<*> (o Core..:? "gtin")
            Core.<*> (o Core..:? "lineItemId")
            Core.<*> (o Core..:? "mpn")
            Core.<*> (o Core..:? "productDescription")
            Core.<*> (o Core..:? "productId")
            Core.<*> (o Core..:? "productTitle")
            Core.<*> (o Core..:? "quantity")
            Core.<*> (o Core..:? "sku")
            Core.<*> (o Core..:? "upc")
      )

instance
  Core.ToJSON
    OrderTrackingSignalLineItemDetails
  where
  toJSON OrderTrackingSignalLineItemDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("brand" Core..=) Core.<$> brand,
            ("gtin" Core..=) Core.<$> gtin,
            ("lineItemId" Core..=) Core.<$> lineItemId,
            ("mpn" Core..=) Core.<$> mpn,
            ("productDescription" Core..=)
              Core.<$> productDescription,
            ("productId" Core..=) Core.<$> productId,
            ("productTitle" Core..=) Core.<$> productTitle,
            ("quantity" Core..=) Core.. Core.AsText
              Core.<$> quantity,
            ("sku" Core..=) Core.<$> sku,
            ("upc" Core..=) Core.<$> upc
          ]
      )

-- | Represents how many items are in the shipment for the given shipment/id and line/item_id.
--
-- /See:/ 'newOrderTrackingSignalShipmentLineItemMapping' smart constructor.
data OrderTrackingSignalShipmentLineItemMapping = OrderTrackingSignalShipmentLineItemMapping
  { -- | Required. The line item ID.
    lineItemId :: (Core.Maybe Core.Text),
    -- | The line item quantity in the shipment.
    quantity :: (Core.Maybe Core.Int64),
    -- | Required. The shipment ID. This field will be hashed in returned OrderTrackingSignal creation response.
    shipmentId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderTrackingSignalShipmentLineItemMapping' with the minimum fields required to make a request.
newOrderTrackingSignalShipmentLineItemMapping ::
  OrderTrackingSignalShipmentLineItemMapping
newOrderTrackingSignalShipmentLineItemMapping =
  OrderTrackingSignalShipmentLineItemMapping
    { lineItemId = Core.Nothing,
      quantity = Core.Nothing,
      shipmentId = Core.Nothing
    }

instance
  Core.FromJSON
    OrderTrackingSignalShipmentLineItemMapping
  where
  parseJSON =
    Core.withObject
      "OrderTrackingSignalShipmentLineItemMapping"
      ( \o ->
          OrderTrackingSignalShipmentLineItemMapping
            Core.<$> (o Core..:? "lineItemId")
            Core.<*> (o Core..:? "quantity")
            Core.<*> (o Core..:? "shipmentId")
      )

instance
  Core.ToJSON
    OrderTrackingSignalShipmentLineItemMapping
  where
  toJSON OrderTrackingSignalShipmentLineItemMapping {..} =
    Core.object
      ( Core.catMaybes
          [ ("lineItemId" Core..=) Core.<$> lineItemId,
            ("quantity" Core..=) Core.. Core.AsText
              Core.<$> quantity,
            ("shipmentId" Core..=) Core.<$> shipmentId
          ]
      )

-- | The shipping information for the order.
--
-- /See:/ 'newOrderTrackingSignalShippingInfo' smart constructor.
data OrderTrackingSignalShippingInfo = OrderTrackingSignalShippingInfo
  { -- | The time when the shipment was actually delivered. Include the year and timezone string, if available. This field is required, if one of the following fields is absent: tracking/id or carrier/name.
    actualDeliveryTime :: (Core.Maybe DateTime'),
    -- | The name of the shipping carrier for the delivery. This field is required if one of the following fields is absent: earliest/delivery/promise/time, latest/delivery/promise/time, and actual/delivery/time.
    carrierName :: (Core.Maybe Core.Text),
    -- | The service type for fulfillment, e.g., GROUND, FIRST_CLASS, etc.
    carrierServiceName :: (Core.Maybe Core.Text),
    -- | The earliest delivery promised time. Include the year and timezone string, if available. This field is required, if one of the following fields is absent: tracking/id or carrier/name.
    earliestDeliveryPromiseTime :: (Core.Maybe DateTime'),
    -- | The latest delivery promised time. Include the year and timezone string, if available. This field is required, if one of the following fields is absent: tracking/id or carrier/name.
    latestDeliveryPromiseTime :: (Core.Maybe DateTime'),
    -- | The origin postal code, as a continuous string without spaces or dashes, e.g. \"95016\". This field will be anonymized in returned OrderTrackingSignal creation response.
    originPostalCode :: (Core.Maybe Core.Text),
    -- | The [CLDR territory code] (http:\/\/www.unicode.org\/repos\/cldr\/tags\/latest\/common\/main\/en.xml) for the shipping origin.
    originRegionCode :: (Core.Maybe Core.Text),
    -- | Required. The shipment ID. This field will be hashed in returned OrderTrackingSignal creation response.
    shipmentId :: (Core.Maybe Core.Text),
    -- | The time when the shipment was shipped. Include the year and timezone string, if available.
    shippedTime :: (Core.Maybe DateTime'),
    -- | The status of the shipment.
    shippingStatus :: (Core.Maybe OrderTrackingSignalShippingInfo_ShippingStatus),
    -- | The tracking ID of the shipment. This field is required if one of the following fields is absent: earliest/delivery/promise/time, latest/delivery/promise/time, and actual/delivery/time.
    trackingId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderTrackingSignalShippingInfo' with the minimum fields required to make a request.
newOrderTrackingSignalShippingInfo ::
  OrderTrackingSignalShippingInfo
newOrderTrackingSignalShippingInfo =
  OrderTrackingSignalShippingInfo
    { actualDeliveryTime = Core.Nothing,
      carrierName = Core.Nothing,
      carrierServiceName = Core.Nothing,
      earliestDeliveryPromiseTime = Core.Nothing,
      latestDeliveryPromiseTime = Core.Nothing,
      originPostalCode = Core.Nothing,
      originRegionCode = Core.Nothing,
      shipmentId = Core.Nothing,
      shippedTime = Core.Nothing,
      shippingStatus = Core.Nothing,
      trackingId = Core.Nothing
    }

instance
  Core.FromJSON
    OrderTrackingSignalShippingInfo
  where
  parseJSON =
    Core.withObject
      "OrderTrackingSignalShippingInfo"
      ( \o ->
          OrderTrackingSignalShippingInfo
            Core.<$> (o Core..:? "actualDeliveryTime")
            Core.<*> (o Core..:? "carrierName")
            Core.<*> (o Core..:? "carrierServiceName")
            Core.<*> (o Core..:? "earliestDeliveryPromiseTime")
            Core.<*> (o Core..:? "latestDeliveryPromiseTime")
            Core.<*> (o Core..:? "originPostalCode")
            Core.<*> (o Core..:? "originRegionCode")
            Core.<*> (o Core..:? "shipmentId")
            Core.<*> (o Core..:? "shippedTime")
            Core.<*> (o Core..:? "shippingStatus")
            Core.<*> (o Core..:? "trackingId")
      )

instance Core.ToJSON OrderTrackingSignalShippingInfo where
  toJSON OrderTrackingSignalShippingInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("actualDeliveryTime" Core..=)
              Core.<$> actualDeliveryTime,
            ("carrierName" Core..=) Core.<$> carrierName,
            ("carrierServiceName" Core..=)
              Core.<$> carrierServiceName,
            ("earliestDeliveryPromiseTime" Core..=)
              Core.<$> earliestDeliveryPromiseTime,
            ("latestDeliveryPromiseTime" Core..=)
              Core.<$> latestDeliveryPromiseTime,
            ("originPostalCode" Core..=)
              Core.<$> originPostalCode,
            ("originRegionCode" Core..=)
              Core.<$> originRegionCode,
            ("shipmentId" Core..=) Core.<$> shipmentId,
            ("shippedTime" Core..=) Core.<$> shippedTime,
            ("shippingStatus" Core..=) Core.<$> shippingStatus,
            ("trackingId" Core..=) Core.<$> trackingId
          ]
      )

--
-- /See:/ 'newOrderinvoicesCreateChargeInvoiceRequest' smart constructor.
data OrderinvoicesCreateChargeInvoiceRequest = OrderinvoicesCreateChargeInvoiceRequest
  { -- | [required] The ID of the invoice.
    invoiceId :: (Core.Maybe Core.Text),
    -- | [required] Invoice summary.
    invoiceSummary :: (Core.Maybe InvoiceSummary),
    -- | [required] Invoice details per line item.
    lineItemInvoices :: (Core.Maybe [ShipmentInvoiceLineItemInvoice]),
    -- | [required] The ID of the operation, unique across all operations for a given order.
    operationId :: (Core.Maybe Core.Text),
    -- | [required] ID of the shipment group. It is assigned by the merchant in the @shipLineItems@ method and is used to group multiple line items that have the same kind of shipping charges.
    shipmentGroupId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderinvoicesCreateChargeInvoiceRequest' with the minimum fields required to make a request.
newOrderinvoicesCreateChargeInvoiceRequest ::
  OrderinvoicesCreateChargeInvoiceRequest
newOrderinvoicesCreateChargeInvoiceRequest =
  OrderinvoicesCreateChargeInvoiceRequest
    { invoiceId = Core.Nothing,
      invoiceSummary = Core.Nothing,
      lineItemInvoices = Core.Nothing,
      operationId = Core.Nothing,
      shipmentGroupId = Core.Nothing
    }

instance
  Core.FromJSON
    OrderinvoicesCreateChargeInvoiceRequest
  where
  parseJSON =
    Core.withObject
      "OrderinvoicesCreateChargeInvoiceRequest"
      ( \o ->
          OrderinvoicesCreateChargeInvoiceRequest
            Core.<$> (o Core..:? "invoiceId")
            Core.<*> (o Core..:? "invoiceSummary")
            Core.<*> (o Core..:? "lineItemInvoices" Core..!= Core.mempty)
            Core.<*> (o Core..:? "operationId")
            Core.<*> (o Core..:? "shipmentGroupId")
      )

instance
  Core.ToJSON
    OrderinvoicesCreateChargeInvoiceRequest
  where
  toJSON OrderinvoicesCreateChargeInvoiceRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("invoiceId" Core..=) Core.<$> invoiceId,
            ("invoiceSummary" Core..=) Core.<$> invoiceSummary,
            ("lineItemInvoices" Core..=)
              Core.<$> lineItemInvoices,
            ("operationId" Core..=) Core.<$> operationId,
            ("shipmentGroupId" Core..=)
              Core.<$> shipmentGroupId
          ]
      )

--
-- /See:/ 'newOrderinvoicesCreateChargeInvoiceResponse' smart constructor.
data OrderinvoicesCreateChargeInvoiceResponse = OrderinvoicesCreateChargeInvoiceResponse
  { -- | The status of the execution. Acceptable values are: - \"@duplicate@\" - \"@executed@\"
    executionStatus :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#orderinvoicesCreateChargeInvoiceResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderinvoicesCreateChargeInvoiceResponse' with the minimum fields required to make a request.
newOrderinvoicesCreateChargeInvoiceResponse ::
  OrderinvoicesCreateChargeInvoiceResponse
newOrderinvoicesCreateChargeInvoiceResponse =
  OrderinvoicesCreateChargeInvoiceResponse
    { executionStatus = Core.Nothing,
      kind = Core.Nothing
    }

instance
  Core.FromJSON
    OrderinvoicesCreateChargeInvoiceResponse
  where
  parseJSON =
    Core.withObject
      "OrderinvoicesCreateChargeInvoiceResponse"
      ( \o ->
          OrderinvoicesCreateChargeInvoiceResponse
            Core.<$> (o Core..:? "executionStatus")
            Core.<*> (o Core..:? "kind")
      )

instance
  Core.ToJSON
    OrderinvoicesCreateChargeInvoiceResponse
  where
  toJSON OrderinvoicesCreateChargeInvoiceResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("executionStatus" Core..=)
              Core.<$> executionStatus,
            ("kind" Core..=) Core.<$> kind
          ]
      )

--
-- /See:/ 'newOrderinvoicesCreateRefundInvoiceRequest' smart constructor.
data OrderinvoicesCreateRefundInvoiceRequest = OrderinvoicesCreateRefundInvoiceRequest
  { -- | [required] The ID of the invoice.
    invoiceId :: (Core.Maybe Core.Text),
    -- | [required] The ID of the operation, unique across all operations for a given order.
    operationId :: (Core.Maybe Core.Text),
    -- | Option to create a refund-only invoice. Exactly one of @refundOnlyOption@ or @returnOption@ must be provided.
    refundOnlyOption ::
      ( Core.Maybe
          OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
      ),
    -- | Option to create an invoice for a refund and mark all items within the invoice as returned. Exactly one of @refundOnlyOption@ or @returnOption@ must be provided.
    returnOption ::
      ( Core.Maybe
          OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
      ),
    -- | Invoice details for different shipment groups.
    shipmentInvoices :: (Core.Maybe [ShipmentInvoice])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderinvoicesCreateRefundInvoiceRequest' with the minimum fields required to make a request.
newOrderinvoicesCreateRefundInvoiceRequest ::
  OrderinvoicesCreateRefundInvoiceRequest
newOrderinvoicesCreateRefundInvoiceRequest =
  OrderinvoicesCreateRefundInvoiceRequest
    { invoiceId = Core.Nothing,
      operationId = Core.Nothing,
      refundOnlyOption = Core.Nothing,
      returnOption = Core.Nothing,
      shipmentInvoices = Core.Nothing
    }

instance
  Core.FromJSON
    OrderinvoicesCreateRefundInvoiceRequest
  where
  parseJSON =
    Core.withObject
      "OrderinvoicesCreateRefundInvoiceRequest"
      ( \o ->
          OrderinvoicesCreateRefundInvoiceRequest
            Core.<$> (o Core..:? "invoiceId")
            Core.<*> (o Core..:? "operationId")
            Core.<*> (o Core..:? "refundOnlyOption")
            Core.<*> (o Core..:? "returnOption")
            Core.<*> (o Core..:? "shipmentInvoices" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    OrderinvoicesCreateRefundInvoiceRequest
  where
  toJSON OrderinvoicesCreateRefundInvoiceRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("invoiceId" Core..=) Core.<$> invoiceId,
            ("operationId" Core..=) Core.<$> operationId,
            ("refundOnlyOption" Core..=)
              Core.<$> refundOnlyOption,
            ("returnOption" Core..=) Core.<$> returnOption,
            ("shipmentInvoices" Core..=)
              Core.<$> shipmentInvoices
          ]
      )

--
-- /See:/ 'newOrderinvoicesCreateRefundInvoiceResponse' smart constructor.
data OrderinvoicesCreateRefundInvoiceResponse = OrderinvoicesCreateRefundInvoiceResponse
  { -- | The status of the execution. Acceptable values are: - \"@duplicate@\" - \"@executed@\"
    executionStatus :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#orderinvoicesCreateRefundInvoiceResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderinvoicesCreateRefundInvoiceResponse' with the minimum fields required to make a request.
newOrderinvoicesCreateRefundInvoiceResponse ::
  OrderinvoicesCreateRefundInvoiceResponse
newOrderinvoicesCreateRefundInvoiceResponse =
  OrderinvoicesCreateRefundInvoiceResponse
    { executionStatus = Core.Nothing,
      kind = Core.Nothing
    }

instance
  Core.FromJSON
    OrderinvoicesCreateRefundInvoiceResponse
  where
  parseJSON =
    Core.withObject
      "OrderinvoicesCreateRefundInvoiceResponse"
      ( \o ->
          OrderinvoicesCreateRefundInvoiceResponse
            Core.<$> (o Core..:? "executionStatus")
            Core.<*> (o Core..:? "kind")
      )

instance
  Core.ToJSON
    OrderinvoicesCreateRefundInvoiceResponse
  where
  toJSON OrderinvoicesCreateRefundInvoiceResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("executionStatus" Core..=)
              Core.<$> executionStatus,
            ("kind" Core..=) Core.<$> kind
          ]
      )

--
-- /See:/ 'newOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption' smart constructor.
data OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption = OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
  { -- | Optional description of the refund reason.
    description :: (Core.Maybe Core.Text),
    -- | [required] Reason for the refund. Acceptable values are: - \"@adjustment@\" - \"@autoPostInternal@\" - \"@autoPostInvalidBillingAddress@\" - \"@autoPostNoInventory@\" - \"@autoPostPriceError@\" - \"@autoPostUndeliverableShippingAddress@\" - \"@couponAbuse@\" - \"@courtesyAdjustment@\" - \"@customerCanceled@\" - \"@customerDiscretionaryReturn@\" - \"@customerInitiatedMerchantCancel@\" - \"@customerSupportRequested@\" - \"@deliveredLateByCarrier@\" - \"@deliveredTooLate@\" - \"@expiredItem@\" - \"@failToPushOrderGoogleError@\" - \"@failToPushOrderMerchantError@\" - \"@failToPushOrderMerchantFulfillmentError@\" - \"@failToPushOrderToMerchant@\" - \"@failToPushOrderToMerchantOutOfStock@\" - \"@feeAdjustment@\" - \"@invalidCoupon@\" - \"@lateShipmentCredit@\" - \"@malformedShippingAddress@\" - \"@merchantDidNotShipOnTime@\" - \"@noInventory@\" - \"@orderTimeout@\" - \"@other@\" - \"@paymentAbuse@\" - \"@paymentDeclined@\" - \"@priceAdjustment@\" - \"@priceError@\" - \"@productArrivedDamaged@\" -
    -- \"@productNotAsDescribed@\" - \"@promoReallocation@\" - \"@qualityNotAsExpected@\" - \"@returnRefundAbuse@\" - \"@shippingCostAdjustment@\" - \"@shippingPriceError@\" - \"@taxAdjustment@\" - \"@taxError@\" - \"@undeliverableShippingAddress@\" - \"@unsupportedPoBoxAddress@\" - \"@wrongProductShipped@\"
    reason :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption' with the minimum fields required to make a request.
newOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption ::
  OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
newOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption =
  OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
    { description = Core.Nothing,
      reason = Core.Nothing
    }

instance
  Core.FromJSON
    OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
  where
  parseJSON =
    Core.withObject
      "OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption"
      ( \o ->
          OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
            Core.<$> (o Core..:? "description")
              Core.<*> (o Core..:? "reason")
      )

instance
  Core.ToJSON
    OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
  where
  toJSON
    OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption {..} =
      Core.object
        ( Core.catMaybes
            [ ("description" Core..=) Core.<$> description,
              ("reason" Core..=) Core.<$> reason
            ]
        )

--
-- /See:/ 'newOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption' smart constructor.
data OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption = OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
  { -- | Optional description of the return reason.
    description :: (Core.Maybe Core.Text),
    -- | [required] Reason for the return. Acceptable values are: - \"@customerDiscretionaryReturn@\" - \"@customerInitiatedMerchantCancel@\" - \"@deliveredTooLate@\" - \"@expiredItem@\" - \"@invalidCoupon@\" - \"@malformedShippingAddress@\" - \"@other@\" - \"@productArrivedDamaged@\" - \"@productNotAsDescribed@\" - \"@qualityNotAsExpected@\" - \"@undeliverableShippingAddress@\" - \"@unsupportedPoBoxAddress@\" - \"@wrongProductShipped@\"
    reason :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption' with the minimum fields required to make a request.
newOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption ::
  OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
newOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption =
  OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
    { description = Core.Nothing,
      reason = Core.Nothing
    }

instance
  Core.FromJSON
    OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
  where
  parseJSON =
    Core.withObject
      "OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption"
      ( \o ->
          OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
            Core.<$> (o Core..:? "description")
              Core.<*> (o Core..:? "reason")
      )

instance
  Core.ToJSON
    OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
  where
  toJSON
    OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption {..} =
      Core.object
        ( Core.catMaybes
            [ ("description" Core..=) Core.<$> description,
              ("reason" Core..=) Core.<$> reason
            ]
        )

--
-- /See:/ 'newOrderreportsListDisbursementsResponse' smart constructor.
data OrderreportsListDisbursementsResponse = OrderreportsListDisbursementsResponse
  { -- | The list of disbursements.
    disbursements :: (Core.Maybe [OrderReportDisbursement]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#orderreportsListDisbursementsResponse@\".
    kind :: (Core.Maybe Core.Text),
    -- | The token for the retrieval of the next page of disbursements.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderreportsListDisbursementsResponse' with the minimum fields required to make a request.
newOrderreportsListDisbursementsResponse ::
  OrderreportsListDisbursementsResponse
newOrderreportsListDisbursementsResponse =
  OrderreportsListDisbursementsResponse
    { disbursements = Core.Nothing,
      kind = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance
  Core.FromJSON
    OrderreportsListDisbursementsResponse
  where
  parseJSON =
    Core.withObject
      "OrderreportsListDisbursementsResponse"
      ( \o ->
          OrderreportsListDisbursementsResponse
            Core.<$> (o Core..:? "disbursements" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance
  Core.ToJSON
    OrderreportsListDisbursementsResponse
  where
  toJSON OrderreportsListDisbursementsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("disbursements" Core..=) Core.<$> disbursements,
            ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

--
-- /See:/ 'newOrderreportsListTransactionsResponse' smart constructor.
data OrderreportsListTransactionsResponse = OrderreportsListTransactionsResponse
  { -- | Identifies what kind of resource this is. Value: the fixed string \"@content#orderreportsListTransactionsResponse@\".
    kind :: (Core.Maybe Core.Text),
    -- | The token for the retrieval of the next page of transactions.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The list of transactions.
    transactions :: (Core.Maybe [OrderReportTransaction])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderreportsListTransactionsResponse' with the minimum fields required to make a request.
newOrderreportsListTransactionsResponse ::
  OrderreportsListTransactionsResponse
newOrderreportsListTransactionsResponse =
  OrderreportsListTransactionsResponse
    { kind = Core.Nothing,
      nextPageToken = Core.Nothing,
      transactions = Core.Nothing
    }

instance
  Core.FromJSON
    OrderreportsListTransactionsResponse
  where
  parseJSON =
    Core.withObject
      "OrderreportsListTransactionsResponse"
      ( \o ->
          OrderreportsListTransactionsResponse
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "transactions" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    OrderreportsListTransactionsResponse
  where
  toJSON OrderreportsListTransactionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("transactions" Core..=) Core.<$> transactions
          ]
      )

--
-- /See:/ 'newOrderreturnsAcknowledgeRequest' smart constructor.
newtype OrderreturnsAcknowledgeRequest = OrderreturnsAcknowledgeRequest
  { -- | [required] The ID of the operation, unique across all operations for a given order return.
    operationId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderreturnsAcknowledgeRequest' with the minimum fields required to make a request.
newOrderreturnsAcknowledgeRequest ::
  OrderreturnsAcknowledgeRequest
newOrderreturnsAcknowledgeRequest =
  OrderreturnsAcknowledgeRequest {operationId = Core.Nothing}

instance Core.FromJSON OrderreturnsAcknowledgeRequest where
  parseJSON =
    Core.withObject
      "OrderreturnsAcknowledgeRequest"
      ( \o ->
          OrderreturnsAcknowledgeRequest
            Core.<$> (o Core..:? "operationId")
      )

instance Core.ToJSON OrderreturnsAcknowledgeRequest where
  toJSON OrderreturnsAcknowledgeRequest {..} =
    Core.object
      ( Core.catMaybes
          [("operationId" Core..=) Core.<$> operationId]
      )

--
-- /See:/ 'newOrderreturnsAcknowledgeResponse' smart constructor.
data OrderreturnsAcknowledgeResponse = OrderreturnsAcknowledgeResponse
  { -- | The status of the execution. Acceptable values are: - \"@duplicate@\" - \"@executed@\"
    executionStatus :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#orderreturnsAcknowledgeResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderreturnsAcknowledgeResponse' with the minimum fields required to make a request.
newOrderreturnsAcknowledgeResponse ::
  OrderreturnsAcknowledgeResponse
newOrderreturnsAcknowledgeResponse =
  OrderreturnsAcknowledgeResponse
    { executionStatus = Core.Nothing,
      kind = Core.Nothing
    }

instance
  Core.FromJSON
    OrderreturnsAcknowledgeResponse
  where
  parseJSON =
    Core.withObject
      "OrderreturnsAcknowledgeResponse"
      ( \o ->
          OrderreturnsAcknowledgeResponse
            Core.<$> (o Core..:? "executionStatus")
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON OrderreturnsAcknowledgeResponse where
  toJSON OrderreturnsAcknowledgeResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("executionStatus" Core..=)
              Core.<$> executionStatus,
            ("kind" Core..=) Core.<$> kind
          ]
      )

--
-- /See:/ 'newOrderreturnsCreateOrderReturnRequest' smart constructor.
data OrderreturnsCreateOrderReturnRequest = OrderreturnsCreateOrderReturnRequest
  { -- | The list of line items to return.
    lineItems :: (Core.Maybe [OrderreturnsLineItem]),
    -- | The ID of the operation. Unique across all operations for a given order.
    operationId :: (Core.Maybe Core.Text),
    -- | The ID of the order.
    orderId :: (Core.Maybe Core.Text),
    -- | The way of the package being returned.
    returnMethodType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderreturnsCreateOrderReturnRequest' with the minimum fields required to make a request.
newOrderreturnsCreateOrderReturnRequest ::
  OrderreturnsCreateOrderReturnRequest
newOrderreturnsCreateOrderReturnRequest =
  OrderreturnsCreateOrderReturnRequest
    { lineItems = Core.Nothing,
      operationId = Core.Nothing,
      orderId = Core.Nothing,
      returnMethodType = Core.Nothing
    }

instance
  Core.FromJSON
    OrderreturnsCreateOrderReturnRequest
  where
  parseJSON =
    Core.withObject
      "OrderreturnsCreateOrderReturnRequest"
      ( \o ->
          OrderreturnsCreateOrderReturnRequest
            Core.<$> (o Core..:? "lineItems" Core..!= Core.mempty)
            Core.<*> (o Core..:? "operationId")
            Core.<*> (o Core..:? "orderId")
            Core.<*> (o Core..:? "returnMethodType")
      )

instance
  Core.ToJSON
    OrderreturnsCreateOrderReturnRequest
  where
  toJSON OrderreturnsCreateOrderReturnRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("lineItems" Core..=) Core.<$> lineItems,
            ("operationId" Core..=) Core.<$> operationId,
            ("orderId" Core..=) Core.<$> orderId,
            ("returnMethodType" Core..=)
              Core.<$> returnMethodType
          ]
      )

--
-- /See:/ 'newOrderreturnsCreateOrderReturnResponse' smart constructor.
data OrderreturnsCreateOrderReturnResponse = OrderreturnsCreateOrderReturnResponse
  { -- | The status of the execution. Acceptable values are: - \"@duplicate@\" - \"@executed@\"
    executionStatus :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#orderreturnsCreateOrderReturnResponse@\".
    kind :: (Core.Maybe Core.Text),
    -- | Created order return.
    orderReturn :: (Core.Maybe MerchantOrderReturn)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderreturnsCreateOrderReturnResponse' with the minimum fields required to make a request.
newOrderreturnsCreateOrderReturnResponse ::
  OrderreturnsCreateOrderReturnResponse
newOrderreturnsCreateOrderReturnResponse =
  OrderreturnsCreateOrderReturnResponse
    { executionStatus = Core.Nothing,
      kind = Core.Nothing,
      orderReturn = Core.Nothing
    }

instance
  Core.FromJSON
    OrderreturnsCreateOrderReturnResponse
  where
  parseJSON =
    Core.withObject
      "OrderreturnsCreateOrderReturnResponse"
      ( \o ->
          OrderreturnsCreateOrderReturnResponse
            Core.<$> (o Core..:? "executionStatus")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "orderReturn")
      )

instance
  Core.ToJSON
    OrderreturnsCreateOrderReturnResponse
  where
  toJSON OrderreturnsCreateOrderReturnResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("executionStatus" Core..=)
              Core.<$> executionStatus,
            ("kind" Core..=) Core.<$> kind,
            ("orderReturn" Core..=) Core.<$> orderReturn
          ]
      )

--
-- /See:/ 'newOrderreturnsLineItem' smart constructor.
data OrderreturnsLineItem = OrderreturnsLineItem
  { -- | The ID of the line item. This value is assigned by Google when an order is created. Either lineItemId or productId is required.
    lineItemId :: (Core.Maybe Core.Text),
    -- | The ID of the product to cancel. This is the REST ID used in the products service. Either lineItemId or productId is required.
    productId :: (Core.Maybe Core.Text),
    -- | The quantity of this line item.
    quantity :: (Core.Maybe Core.Word32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderreturnsLineItem' with the minimum fields required to make a request.
newOrderreturnsLineItem ::
  OrderreturnsLineItem
newOrderreturnsLineItem =
  OrderreturnsLineItem
    { lineItemId = Core.Nothing,
      productId = Core.Nothing,
      quantity = Core.Nothing
    }

instance Core.FromJSON OrderreturnsLineItem where
  parseJSON =
    Core.withObject
      "OrderreturnsLineItem"
      ( \o ->
          OrderreturnsLineItem
            Core.<$> (o Core..:? "lineItemId")
            Core.<*> (o Core..:? "productId")
            Core.<*> (o Core..:? "quantity")
      )

instance Core.ToJSON OrderreturnsLineItem where
  toJSON OrderreturnsLineItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("lineItemId" Core..=) Core.<$> lineItemId,
            ("productId" Core..=) Core.<$> productId,
            ("quantity" Core..=) Core.<$> quantity
          ]
      )

--
-- /See:/ 'newOrderreturnsListResponse' smart constructor.
data OrderreturnsListResponse = OrderreturnsListResponse
  { -- | Identifies what kind of resource this is. Value: the fixed string \"@content#orderreturnsListResponse@\".
    kind :: (Core.Maybe Core.Text),
    -- | The token for the retrieval of the next page of returns.
    nextPageToken :: (Core.Maybe Core.Text),
    -- |
    resources :: (Core.Maybe [MerchantOrderReturn])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderreturnsListResponse' with the minimum fields required to make a request.
newOrderreturnsListResponse ::
  OrderreturnsListResponse
newOrderreturnsListResponse =
  OrderreturnsListResponse
    { kind = Core.Nothing,
      nextPageToken = Core.Nothing,
      resources = Core.Nothing
    }

instance Core.FromJSON OrderreturnsListResponse where
  parseJSON =
    Core.withObject
      "OrderreturnsListResponse"
      ( \o ->
          OrderreturnsListResponse
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "resources" Core..!= Core.mempty)
      )

instance Core.ToJSON OrderreturnsListResponse where
  toJSON OrderreturnsListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("resources" Core..=) Core.<$> resources
          ]
      )

--
-- /See:/ 'newOrderreturnsPartialRefund' smart constructor.
data OrderreturnsPartialRefund = OrderreturnsPartialRefund
  { -- | The pre-tax or post-tax amount to be refunded, depending on the location of the order.
    priceAmount :: (Core.Maybe Price),
    -- | Tax amount to be refunded. Note: This has different meaning depending on the location of the order.
    taxAmount :: (Core.Maybe Price)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderreturnsPartialRefund' with the minimum fields required to make a request.
newOrderreturnsPartialRefund ::
  OrderreturnsPartialRefund
newOrderreturnsPartialRefund =
  OrderreturnsPartialRefund
    { priceAmount = Core.Nothing,
      taxAmount = Core.Nothing
    }

instance Core.FromJSON OrderreturnsPartialRefund where
  parseJSON =
    Core.withObject
      "OrderreturnsPartialRefund"
      ( \o ->
          OrderreturnsPartialRefund
            Core.<$> (o Core..:? "priceAmount")
            Core.<*> (o Core..:? "taxAmount")
      )

instance Core.ToJSON OrderreturnsPartialRefund where
  toJSON OrderreturnsPartialRefund {..} =
    Core.object
      ( Core.catMaybes
          [ ("priceAmount" Core..=) Core.<$> priceAmount,
            ("taxAmount" Core..=) Core.<$> taxAmount
          ]
      )

--
-- /See:/ 'newOrderreturnsProcessRequest' smart constructor.
data OrderreturnsProcessRequest = OrderreturnsProcessRequest
  { -- | Option to charge the customer return shipping cost.
    fullChargeReturnShippingCost :: (Core.Maybe Core.Bool),
    -- | [required] The ID of the operation, unique across all operations for a given order return.
    operationId :: (Core.Maybe Core.Text),
    -- | Refunds for original shipping fee.
    refundShippingFee :: (Core.Maybe OrderreturnsRefundOperation),
    -- | The list of items to return.
    returnItems :: (Core.Maybe [OrderreturnsReturnItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderreturnsProcessRequest' with the minimum fields required to make a request.
newOrderreturnsProcessRequest ::
  OrderreturnsProcessRequest
newOrderreturnsProcessRequest =
  OrderreturnsProcessRequest
    { fullChargeReturnShippingCost = Core.Nothing,
      operationId = Core.Nothing,
      refundShippingFee = Core.Nothing,
      returnItems = Core.Nothing
    }

instance Core.FromJSON OrderreturnsProcessRequest where
  parseJSON =
    Core.withObject
      "OrderreturnsProcessRequest"
      ( \o ->
          OrderreturnsProcessRequest
            Core.<$> (o Core..:? "fullChargeReturnShippingCost")
            Core.<*> (o Core..:? "operationId")
            Core.<*> (o Core..:? "refundShippingFee")
            Core.<*> (o Core..:? "returnItems" Core..!= Core.mempty)
      )

instance Core.ToJSON OrderreturnsProcessRequest where
  toJSON OrderreturnsProcessRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("fullChargeReturnShippingCost" Core..=)
              Core.<$> fullChargeReturnShippingCost,
            ("operationId" Core..=) Core.<$> operationId,
            ("refundShippingFee" Core..=)
              Core.<$> refundShippingFee,
            ("returnItems" Core..=) Core.<$> returnItems
          ]
      )

--
-- /See:/ 'newOrderreturnsProcessResponse' smart constructor.
data OrderreturnsProcessResponse = OrderreturnsProcessResponse
  { -- | The status of the execution. Acceptable values are: - \"@duplicate@\" - \"@executed@\"
    executionStatus :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#orderreturnsProcessResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderreturnsProcessResponse' with the minimum fields required to make a request.
newOrderreturnsProcessResponse ::
  OrderreturnsProcessResponse
newOrderreturnsProcessResponse =
  OrderreturnsProcessResponse
    { executionStatus = Core.Nothing,
      kind = Core.Nothing
    }

instance Core.FromJSON OrderreturnsProcessResponse where
  parseJSON =
    Core.withObject
      "OrderreturnsProcessResponse"
      ( \o ->
          OrderreturnsProcessResponse
            Core.<$> (o Core..:? "executionStatus")
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON OrderreturnsProcessResponse where
  toJSON OrderreturnsProcessResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("executionStatus" Core..=)
              Core.<$> executionStatus,
            ("kind" Core..=) Core.<$> kind
          ]
      )

--
-- /See:/ 'newOrderreturnsRefundOperation' smart constructor.
data OrderreturnsRefundOperation = OrderreturnsRefundOperation
  { -- | If true, the item will be fully refunded. Allowed only when payment_type is FOP. Merchant can choose this refund option to indicate the full remaining amount of corresponding object to be refunded to the customer through FOP.
    fullRefund :: (Core.Maybe Core.Bool),
    -- | If this is set, the item will be partially refunded. Merchant can choose this refund option to specify the customized amount that to be refunded to the customer.
    partialRefund :: (Core.Maybe OrderreturnsPartialRefund),
    -- | The payment way of issuing refund. Default value is ORIGINAL_FOP if not set.
    paymentType :: (Core.Maybe Core.Text),
    -- | The explanation of the reason.
    reasonText :: (Core.Maybe Core.Text),
    -- | Code of the refund reason.
    returnRefundReason :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderreturnsRefundOperation' with the minimum fields required to make a request.
newOrderreturnsRefundOperation ::
  OrderreturnsRefundOperation
newOrderreturnsRefundOperation =
  OrderreturnsRefundOperation
    { fullRefund = Core.Nothing,
      partialRefund = Core.Nothing,
      paymentType = Core.Nothing,
      reasonText = Core.Nothing,
      returnRefundReason = Core.Nothing
    }

instance Core.FromJSON OrderreturnsRefundOperation where
  parseJSON =
    Core.withObject
      "OrderreturnsRefundOperation"
      ( \o ->
          OrderreturnsRefundOperation
            Core.<$> (o Core..:? "fullRefund")
            Core.<*> (o Core..:? "partialRefund")
            Core.<*> (o Core..:? "paymentType")
            Core.<*> (o Core..:? "reasonText")
            Core.<*> (o Core..:? "returnRefundReason")
      )

instance Core.ToJSON OrderreturnsRefundOperation where
  toJSON OrderreturnsRefundOperation {..} =
    Core.object
      ( Core.catMaybes
          [ ("fullRefund" Core..=) Core.<$> fullRefund,
            ("partialRefund" Core..=) Core.<$> partialRefund,
            ("paymentType" Core..=) Core.<$> paymentType,
            ("reasonText" Core..=) Core.<$> reasonText,
            ("returnRefundReason" Core..=)
              Core.<$> returnRefundReason
          ]
      )

--
-- /See:/ 'newOrderreturnsRejectOperation' smart constructor.
data OrderreturnsRejectOperation = OrderreturnsRejectOperation
  { -- | The reason for the return.
    reason :: (Core.Maybe Core.Text),
    -- | The explanation of the reason.
    reasonText :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderreturnsRejectOperation' with the minimum fields required to make a request.
newOrderreturnsRejectOperation ::
  OrderreturnsRejectOperation
newOrderreturnsRejectOperation =
  OrderreturnsRejectOperation {reason = Core.Nothing, reasonText = Core.Nothing}

instance Core.FromJSON OrderreturnsRejectOperation where
  parseJSON =
    Core.withObject
      "OrderreturnsRejectOperation"
      ( \o ->
          OrderreturnsRejectOperation
            Core.<$> (o Core..:? "reason")
            Core.<*> (o Core..:? "reasonText")
      )

instance Core.ToJSON OrderreturnsRejectOperation where
  toJSON OrderreturnsRejectOperation {..} =
    Core.object
      ( Core.catMaybes
          [ ("reason" Core..=) Core.<$> reason,
            ("reasonText" Core..=) Core.<$> reasonText
          ]
      )

--
-- /See:/ 'newOrderreturnsReturnItem' smart constructor.
data OrderreturnsReturnItem = OrderreturnsReturnItem
  { -- | Refunds the item.
    refund :: (Core.Maybe OrderreturnsRefundOperation),
    -- | Rejects the item.
    reject :: (Core.Maybe OrderreturnsRejectOperation),
    -- | Unit level ID for the return item. Different units of the same product will have different IDs.
    returnItemId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderreturnsReturnItem' with the minimum fields required to make a request.
newOrderreturnsReturnItem ::
  OrderreturnsReturnItem
newOrderreturnsReturnItem =
  OrderreturnsReturnItem
    { refund = Core.Nothing,
      reject = Core.Nothing,
      returnItemId = Core.Nothing
    }

instance Core.FromJSON OrderreturnsReturnItem where
  parseJSON =
    Core.withObject
      "OrderreturnsReturnItem"
      ( \o ->
          OrderreturnsReturnItem
            Core.<$> (o Core..:? "refund")
            Core.<*> (o Core..:? "reject")
            Core.<*> (o Core..:? "returnItemId")
      )

instance Core.ToJSON OrderreturnsReturnItem where
  toJSON OrderreturnsReturnItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("refund" Core..=) Core.<$> refund,
            ("reject" Core..=) Core.<$> reject,
            ("returnItemId" Core..=) Core.<$> returnItemId
          ]
      )

--
-- /See:/ 'newOrdersAcknowledgeRequest' smart constructor.
newtype OrdersAcknowledgeRequest = OrdersAcknowledgeRequest
  { -- | The ID of the operation. Unique across all operations for a given order.
    operationId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersAcknowledgeRequest' with the minimum fields required to make a request.
newOrdersAcknowledgeRequest ::
  OrdersAcknowledgeRequest
newOrdersAcknowledgeRequest =
  OrdersAcknowledgeRequest {operationId = Core.Nothing}

instance Core.FromJSON OrdersAcknowledgeRequest where
  parseJSON =
    Core.withObject
      "OrdersAcknowledgeRequest"
      ( \o ->
          OrdersAcknowledgeRequest
            Core.<$> (o Core..:? "operationId")
      )

instance Core.ToJSON OrdersAcknowledgeRequest where
  toJSON OrdersAcknowledgeRequest {..} =
    Core.object
      ( Core.catMaybes
          [("operationId" Core..=) Core.<$> operationId]
      )

--
-- /See:/ 'newOrdersAcknowledgeResponse' smart constructor.
data OrdersAcknowledgeResponse = OrdersAcknowledgeResponse
  { -- | The status of the execution. Acceptable values are: - \"@duplicate@\" - \"@executed@\"
    executionStatus :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#ordersAcknowledgeResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersAcknowledgeResponse' with the minimum fields required to make a request.
newOrdersAcknowledgeResponse ::
  OrdersAcknowledgeResponse
newOrdersAcknowledgeResponse =
  OrdersAcknowledgeResponse
    { executionStatus = Core.Nothing,
      kind = Core.Nothing
    }

instance Core.FromJSON OrdersAcknowledgeResponse where
  parseJSON =
    Core.withObject
      "OrdersAcknowledgeResponse"
      ( \o ->
          OrdersAcknowledgeResponse
            Core.<$> (o Core..:? "executionStatus")
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON OrdersAcknowledgeResponse where
  toJSON OrdersAcknowledgeResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("executionStatus" Core..=)
              Core.<$> executionStatus,
            ("kind" Core..=) Core.<$> kind
          ]
      )

--
-- /See:/ 'newOrdersAdvanceTestOrderResponse' smart constructor.
newtype OrdersAdvanceTestOrderResponse = OrdersAdvanceTestOrderResponse
  { -- | Identifies what kind of resource this is. Value: the fixed string \"@content#ordersAdvanceTestOrderResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersAdvanceTestOrderResponse' with the minimum fields required to make a request.
newOrdersAdvanceTestOrderResponse ::
  OrdersAdvanceTestOrderResponse
newOrdersAdvanceTestOrderResponse =
  OrdersAdvanceTestOrderResponse {kind = Core.Nothing}

instance Core.FromJSON OrdersAdvanceTestOrderResponse where
  parseJSON =
    Core.withObject
      "OrdersAdvanceTestOrderResponse"
      ( \o ->
          OrdersAdvanceTestOrderResponse
            Core.<$> (o Core..:? "kind")
      )

instance Core.ToJSON OrdersAdvanceTestOrderResponse where
  toJSON OrdersAdvanceTestOrderResponse {..} =
    Core.object
      (Core.catMaybes [("kind" Core..=) Core.<$> kind])

--
-- /See:/ 'newOrdersCancelLineItemRequest' smart constructor.
data OrdersCancelLineItemRequest = OrdersCancelLineItemRequest
  { -- | The ID of the line item to cancel. Either lineItemId or productId is required.
    lineItemId :: (Core.Maybe Core.Text),
    -- | The ID of the operation. Unique across all operations for a given order.
    operationId :: (Core.Maybe Core.Text),
    -- | The ID of the product to cancel. This is the REST ID used in the products service. Either lineItemId or productId is required.
    productId :: (Core.Maybe Core.Text),
    -- | The quantity to cancel.
    quantity :: (Core.Maybe Core.Word32),
    -- | The reason for the cancellation. Acceptable values are: - \"@customerInitiatedCancel@\" - \"@invalidCoupon@\" - \"@malformedShippingAddress@\" - \"@noInventory@\" - \"@other@\" - \"@priceError@\" - \"@shippingPriceError@\" - \"@taxError@\" - \"@undeliverableShippingAddress@\" - \"@unsupportedPoBoxAddress@\" - \"@failedToCaptureFunds@\"
    reason :: (Core.Maybe Core.Text),
    -- | The explanation of the reason.
    reasonText :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersCancelLineItemRequest' with the minimum fields required to make a request.
newOrdersCancelLineItemRequest ::
  OrdersCancelLineItemRequest
newOrdersCancelLineItemRequest =
  OrdersCancelLineItemRequest
    { lineItemId = Core.Nothing,
      operationId = Core.Nothing,
      productId = Core.Nothing,
      quantity = Core.Nothing,
      reason = Core.Nothing,
      reasonText = Core.Nothing
    }

instance Core.FromJSON OrdersCancelLineItemRequest where
  parseJSON =
    Core.withObject
      "OrdersCancelLineItemRequest"
      ( \o ->
          OrdersCancelLineItemRequest
            Core.<$> (o Core..:? "lineItemId")
            Core.<*> (o Core..:? "operationId")
            Core.<*> (o Core..:? "productId")
            Core.<*> (o Core..:? "quantity")
            Core.<*> (o Core..:? "reason")
            Core.<*> (o Core..:? "reasonText")
      )

instance Core.ToJSON OrdersCancelLineItemRequest where
  toJSON OrdersCancelLineItemRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("lineItemId" Core..=) Core.<$> lineItemId,
            ("operationId" Core..=) Core.<$> operationId,
            ("productId" Core..=) Core.<$> productId,
            ("quantity" Core..=) Core.<$> quantity,
            ("reason" Core..=) Core.<$> reason,
            ("reasonText" Core..=) Core.<$> reasonText
          ]
      )

--
-- /See:/ 'newOrdersCancelLineItemResponse' smart constructor.
data OrdersCancelLineItemResponse = OrdersCancelLineItemResponse
  { -- | The status of the execution. Acceptable values are: - \"@duplicate@\" - \"@executed@\"
    executionStatus :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#ordersCancelLineItemResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersCancelLineItemResponse' with the minimum fields required to make a request.
newOrdersCancelLineItemResponse ::
  OrdersCancelLineItemResponse
newOrdersCancelLineItemResponse =
  OrdersCancelLineItemResponse
    { executionStatus = Core.Nothing,
      kind = Core.Nothing
    }

instance Core.FromJSON OrdersCancelLineItemResponse where
  parseJSON =
    Core.withObject
      "OrdersCancelLineItemResponse"
      ( \o ->
          OrdersCancelLineItemResponse
            Core.<$> (o Core..:? "executionStatus")
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON OrdersCancelLineItemResponse where
  toJSON OrdersCancelLineItemResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("executionStatus" Core..=)
              Core.<$> executionStatus,
            ("kind" Core..=) Core.<$> kind
          ]
      )

--
-- /See:/ 'newOrdersCancelRequest' smart constructor.
data OrdersCancelRequest = OrdersCancelRequest
  { -- | The ID of the operation. Unique across all operations for a given order.
    operationId :: (Core.Maybe Core.Text),
    -- | The reason for the cancellation. Acceptable values are: - \"@customerInitiatedCancel@\" - \"@invalidCoupon@\" - \"@malformedShippingAddress@\" - \"@noInventory@\" - \"@other@\" - \"@priceError@\" - \"@shippingPriceError@\" - \"@taxError@\" - \"@undeliverableShippingAddress@\" - \"@unsupportedPoBoxAddress@\" - \"@failedToCaptureFunds@\"
    reason :: (Core.Maybe Core.Text),
    -- | The explanation of the reason.
    reasonText :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersCancelRequest' with the minimum fields required to make a request.
newOrdersCancelRequest ::
  OrdersCancelRequest
newOrdersCancelRequest =
  OrdersCancelRequest
    { operationId = Core.Nothing,
      reason = Core.Nothing,
      reasonText = Core.Nothing
    }

instance Core.FromJSON OrdersCancelRequest where
  parseJSON =
    Core.withObject
      "OrdersCancelRequest"
      ( \o ->
          OrdersCancelRequest
            Core.<$> (o Core..:? "operationId")
            Core.<*> (o Core..:? "reason")
            Core.<*> (o Core..:? "reasonText")
      )

instance Core.ToJSON OrdersCancelRequest where
  toJSON OrdersCancelRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("operationId" Core..=) Core.<$> operationId,
            ("reason" Core..=) Core.<$> reason,
            ("reasonText" Core..=) Core.<$> reasonText
          ]
      )

--
-- /See:/ 'newOrdersCancelResponse' smart constructor.
data OrdersCancelResponse = OrdersCancelResponse
  { -- | The status of the execution. Acceptable values are: - \"@duplicate@\" - \"@executed@\"
    executionStatus :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#ordersCancelResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersCancelResponse' with the minimum fields required to make a request.
newOrdersCancelResponse ::
  OrdersCancelResponse
newOrdersCancelResponse =
  OrdersCancelResponse {executionStatus = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON OrdersCancelResponse where
  parseJSON =
    Core.withObject
      "OrdersCancelResponse"
      ( \o ->
          OrdersCancelResponse
            Core.<$> (o Core..:? "executionStatus")
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON OrdersCancelResponse where
  toJSON OrdersCancelResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("executionStatus" Core..=)
              Core.<$> executionStatus,
            ("kind" Core..=) Core.<$> kind
          ]
      )

--
-- /See:/ 'newOrdersCancelTestOrderByCustomerRequest' smart constructor.
newtype OrdersCancelTestOrderByCustomerRequest = OrdersCancelTestOrderByCustomerRequest
  { -- | The reason for the cancellation. Acceptable values are: - \"@changedMind@\" - \"@orderedWrongItem@\" - \"@other@\"
    reason :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersCancelTestOrderByCustomerRequest' with the minimum fields required to make a request.
newOrdersCancelTestOrderByCustomerRequest ::
  OrdersCancelTestOrderByCustomerRequest
newOrdersCancelTestOrderByCustomerRequest =
  OrdersCancelTestOrderByCustomerRequest {reason = Core.Nothing}

instance
  Core.FromJSON
    OrdersCancelTestOrderByCustomerRequest
  where
  parseJSON =
    Core.withObject
      "OrdersCancelTestOrderByCustomerRequest"
      ( \o ->
          OrdersCancelTestOrderByCustomerRequest
            Core.<$> (o Core..:? "reason")
      )

instance
  Core.ToJSON
    OrdersCancelTestOrderByCustomerRequest
  where
  toJSON OrdersCancelTestOrderByCustomerRequest {..} =
    Core.object
      (Core.catMaybes [("reason" Core..=) Core.<$> reason])

--
-- /See:/ 'newOrdersCancelTestOrderByCustomerResponse' smart constructor.
newtype OrdersCancelTestOrderByCustomerResponse = OrdersCancelTestOrderByCustomerResponse
  { -- | Identifies what kind of resource this is. Value: the fixed string \"@content#ordersCancelTestOrderByCustomerResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersCancelTestOrderByCustomerResponse' with the minimum fields required to make a request.
newOrdersCancelTestOrderByCustomerResponse ::
  OrdersCancelTestOrderByCustomerResponse
newOrdersCancelTestOrderByCustomerResponse =
  OrdersCancelTestOrderByCustomerResponse {kind = Core.Nothing}

instance
  Core.FromJSON
    OrdersCancelTestOrderByCustomerResponse
  where
  parseJSON =
    Core.withObject
      "OrdersCancelTestOrderByCustomerResponse"
      ( \o ->
          OrdersCancelTestOrderByCustomerResponse
            Core.<$> (o Core..:? "kind")
      )

instance
  Core.ToJSON
    OrdersCancelTestOrderByCustomerResponse
  where
  toJSON OrdersCancelTestOrderByCustomerResponse {..} =
    Core.object
      (Core.catMaybes [("kind" Core..=) Core.<$> kind])

--
-- /See:/ 'newOrdersCreateTestOrderRequest' smart constructor.
data OrdersCreateTestOrderRequest = OrdersCreateTestOrderRequest
  { -- | The CLDR territory code of the country of the test order to create. Affects the currency and addresses of orders created through @template_name@, or the addresses of orders created through @test_order@. Acceptable values are: - \"@US@\" - \"@FR@\" Defaults to \"@US@\".
    country :: (Core.Maybe Core.Text),
    -- | The test order template to use. Specify as an alternative to @testOrder@ as a shortcut for retrieving a template and then creating an order using that template. Acceptable values are: - \"@template1@\" - \"@template1a@\" - \"@template1b@\" - \"@template2@\" - \"@template3@\"
    templateName :: (Core.Maybe Core.Text),
    -- | The test order to create.
    testOrder :: (Core.Maybe TestOrder)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersCreateTestOrderRequest' with the minimum fields required to make a request.
newOrdersCreateTestOrderRequest ::
  OrdersCreateTestOrderRequest
newOrdersCreateTestOrderRequest =
  OrdersCreateTestOrderRequest
    { country = Core.Nothing,
      templateName = Core.Nothing,
      testOrder = Core.Nothing
    }

instance Core.FromJSON OrdersCreateTestOrderRequest where
  parseJSON =
    Core.withObject
      "OrdersCreateTestOrderRequest"
      ( \o ->
          OrdersCreateTestOrderRequest
            Core.<$> (o Core..:? "country")
            Core.<*> (o Core..:? "templateName")
            Core.<*> (o Core..:? "testOrder")
      )

instance Core.ToJSON OrdersCreateTestOrderRequest where
  toJSON OrdersCreateTestOrderRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("country" Core..=) Core.<$> country,
            ("templateName" Core..=) Core.<$> templateName,
            ("testOrder" Core..=) Core.<$> testOrder
          ]
      )

--
-- /See:/ 'newOrdersCreateTestOrderResponse' smart constructor.
data OrdersCreateTestOrderResponse = OrdersCreateTestOrderResponse
  { -- | Identifies what kind of resource this is. Value: the fixed string \"@content#ordersCreateTestOrderResponse@\".
    kind :: (Core.Maybe Core.Text),
    -- | The ID of the newly created test order.
    orderId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersCreateTestOrderResponse' with the minimum fields required to make a request.
newOrdersCreateTestOrderResponse ::
  OrdersCreateTestOrderResponse
newOrdersCreateTestOrderResponse =
  OrdersCreateTestOrderResponse {kind = Core.Nothing, orderId = Core.Nothing}

instance Core.FromJSON OrdersCreateTestOrderResponse where
  parseJSON =
    Core.withObject
      "OrdersCreateTestOrderResponse"
      ( \o ->
          OrdersCreateTestOrderResponse
            Core.<$> (o Core..:? "kind") Core.<*> (o Core..:? "orderId")
      )

instance Core.ToJSON OrdersCreateTestOrderResponse where
  toJSON OrdersCreateTestOrderResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("orderId" Core..=) Core.<$> orderId
          ]
      )

--
-- /See:/ 'newOrdersCreateTestReturnRequest' smart constructor.
newtype OrdersCreateTestReturnRequest = OrdersCreateTestReturnRequest
  { -- | Returned items.
    items ::
      ( Core.Maybe
          [OrdersCustomBatchRequestEntryCreateTestReturnReturnItem]
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersCreateTestReturnRequest' with the minimum fields required to make a request.
newOrdersCreateTestReturnRequest ::
  OrdersCreateTestReturnRequest
newOrdersCreateTestReturnRequest =
  OrdersCreateTestReturnRequest {items = Core.Nothing}

instance Core.FromJSON OrdersCreateTestReturnRequest where
  parseJSON =
    Core.withObject
      "OrdersCreateTestReturnRequest"
      ( \o ->
          OrdersCreateTestReturnRequest
            Core.<$> (o Core..:? "items" Core..!= Core.mempty)
      )

instance Core.ToJSON OrdersCreateTestReturnRequest where
  toJSON OrdersCreateTestReturnRequest {..} =
    Core.object
      (Core.catMaybes [("items" Core..=) Core.<$> items])

--
-- /See:/ 'newOrdersCreateTestReturnResponse' smart constructor.
data OrdersCreateTestReturnResponse = OrdersCreateTestReturnResponse
  { -- | Identifies what kind of resource this is. Value: the fixed string \"@content#ordersCreateTestReturnResponse@\".
    kind :: (Core.Maybe Core.Text),
    -- | The ID of the newly created test order return.
    returnId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersCreateTestReturnResponse' with the minimum fields required to make a request.
newOrdersCreateTestReturnResponse ::
  OrdersCreateTestReturnResponse
newOrdersCreateTestReturnResponse =
  OrdersCreateTestReturnResponse {kind = Core.Nothing, returnId = Core.Nothing}

instance Core.FromJSON OrdersCreateTestReturnResponse where
  parseJSON =
    Core.withObject
      "OrdersCreateTestReturnResponse"
      ( \o ->
          OrdersCreateTestReturnResponse
            Core.<$> (o Core..:? "kind") Core.<*> (o Core..:? "returnId")
      )

instance Core.ToJSON OrdersCreateTestReturnResponse where
  toJSON OrdersCreateTestReturnResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("returnId" Core..=) Core.<$> returnId
          ]
      )

--
-- /See:/ 'newOrdersCustomBatchRequestEntryCreateTestReturnReturnItem' smart constructor.
data OrdersCustomBatchRequestEntryCreateTestReturnReturnItem = OrdersCustomBatchRequestEntryCreateTestReturnReturnItem
  { -- | The ID of the line item to return.
    lineItemId :: (Core.Maybe Core.Text),
    -- | Quantity that is returned.
    quantity :: (Core.Maybe Core.Word32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersCustomBatchRequestEntryCreateTestReturnReturnItem' with the minimum fields required to make a request.
newOrdersCustomBatchRequestEntryCreateTestReturnReturnItem ::
  OrdersCustomBatchRequestEntryCreateTestReturnReturnItem
newOrdersCustomBatchRequestEntryCreateTestReturnReturnItem =
  OrdersCustomBatchRequestEntryCreateTestReturnReturnItem
    { lineItemId = Core.Nothing,
      quantity = Core.Nothing
    }

instance
  Core.FromJSON
    OrdersCustomBatchRequestEntryCreateTestReturnReturnItem
  where
  parseJSON =
    Core.withObject
      "OrdersCustomBatchRequestEntryCreateTestReturnReturnItem"
      ( \o ->
          OrdersCustomBatchRequestEntryCreateTestReturnReturnItem
            Core.<$> (o Core..:? "lineItemId")
              Core.<*> (o Core..:? "quantity")
      )

instance
  Core.ToJSON
    OrdersCustomBatchRequestEntryCreateTestReturnReturnItem
  where
  toJSON
    OrdersCustomBatchRequestEntryCreateTestReturnReturnItem {..} =
      Core.object
        ( Core.catMaybes
            [ ("lineItemId" Core..=) Core.<$> lineItemId,
              ("quantity" Core..=) Core.<$> quantity
            ]
        )

--
-- /See:/ 'newOrdersCustomBatchRequestEntryRefundItemItem' smart constructor.
data OrdersCustomBatchRequestEntryRefundItemItem = OrdersCustomBatchRequestEntryRefundItemItem
  { -- | The total amount that is refunded. (for example, refunding $5 each for 2 products should be done by setting quantity to 2 and amount to 10$) In case of multiple refunds, this should be the amount you currently want to refund to the customer.
    amount :: (Core.Maybe MonetaryAmount),
    -- | If true, the full item will be refunded. If this is true, amount shouldn\'t be provided and will be ignored.
    fullRefund :: (Core.Maybe Core.Bool),
    -- | The ID of the line item. Either lineItemId or productId is required.
    lineItemId :: (Core.Maybe Core.Text),
    -- | The ID of the product. This is the REST ID used in the products service. Either lineItemId or productId is required.
    productId :: (Core.Maybe Core.Text),
    -- | The number of products that are refunded.
    quantity :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersCustomBatchRequestEntryRefundItemItem' with the minimum fields required to make a request.
newOrdersCustomBatchRequestEntryRefundItemItem ::
  OrdersCustomBatchRequestEntryRefundItemItem
newOrdersCustomBatchRequestEntryRefundItemItem =
  OrdersCustomBatchRequestEntryRefundItemItem
    { amount = Core.Nothing,
      fullRefund = Core.Nothing,
      lineItemId = Core.Nothing,
      productId = Core.Nothing,
      quantity = Core.Nothing
    }

instance
  Core.FromJSON
    OrdersCustomBatchRequestEntryRefundItemItem
  where
  parseJSON =
    Core.withObject
      "OrdersCustomBatchRequestEntryRefundItemItem"
      ( \o ->
          OrdersCustomBatchRequestEntryRefundItemItem
            Core.<$> (o Core..:? "amount")
            Core.<*> (o Core..:? "fullRefund")
            Core.<*> (o Core..:? "lineItemId")
            Core.<*> (o Core..:? "productId")
            Core.<*> (o Core..:? "quantity")
      )

instance
  Core.ToJSON
    OrdersCustomBatchRequestEntryRefundItemItem
  where
  toJSON
    OrdersCustomBatchRequestEntryRefundItemItem {..} =
      Core.object
        ( Core.catMaybes
            [ ("amount" Core..=) Core.<$> amount,
              ("fullRefund" Core..=) Core.<$> fullRefund,
              ("lineItemId" Core..=) Core.<$> lineItemId,
              ("productId" Core..=) Core.<$> productId,
              ("quantity" Core..=) Core.<$> quantity
            ]
        )

--
-- /See:/ 'newOrdersCustomBatchRequestEntryRefundItemShipping' smart constructor.
data OrdersCustomBatchRequestEntryRefundItemShipping = OrdersCustomBatchRequestEntryRefundItemShipping
  { -- | The amount that is refunded. If this is not the first refund for the shipment, this should be the newly refunded amount.
    amount :: (Core.Maybe Price),
    -- | If set to true, all shipping costs for the order will be refunded. If this is true, amount shouldn\'t be provided and will be ignored. If set to false, submit the amount of the partial shipping refund, excluding the shipping tax. The shipping tax is calculated and handled on Google\'s side.
    fullRefund :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersCustomBatchRequestEntryRefundItemShipping' with the minimum fields required to make a request.
newOrdersCustomBatchRequestEntryRefundItemShipping ::
  OrdersCustomBatchRequestEntryRefundItemShipping
newOrdersCustomBatchRequestEntryRefundItemShipping =
  OrdersCustomBatchRequestEntryRefundItemShipping
    { amount = Core.Nothing,
      fullRefund = Core.Nothing
    }

instance
  Core.FromJSON
    OrdersCustomBatchRequestEntryRefundItemShipping
  where
  parseJSON =
    Core.withObject
      "OrdersCustomBatchRequestEntryRefundItemShipping"
      ( \o ->
          OrdersCustomBatchRequestEntryRefundItemShipping
            Core.<$> (o Core..:? "amount")
              Core.<*> (o Core..:? "fullRefund")
      )

instance
  Core.ToJSON
    OrdersCustomBatchRequestEntryRefundItemShipping
  where
  toJSON
    OrdersCustomBatchRequestEntryRefundItemShipping {..} =
      Core.object
        ( Core.catMaybes
            [ ("amount" Core..=) Core.<$> amount,
              ("fullRefund" Core..=) Core.<$> fullRefund
            ]
        )

--
-- /See:/ 'newOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo' smart constructor.
data OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo = OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo
  { -- | The carrier handling the shipment. See @shipments[].carrier@ in the Orders resource representation for a list of acceptable values.
    carrier :: (Core.Maybe Core.Text),
    -- | Required. The ID of the shipment. This is assigned by the merchant and is unique to each shipment.
    shipmentId :: (Core.Maybe Core.Text),
    -- | The tracking ID for the shipment.
    trackingId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo' with the minimum fields required to make a request.
newOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo ::
  OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo
newOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo =
  OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo
    { carrier = Core.Nothing,
      shipmentId = Core.Nothing,
      trackingId = Core.Nothing
    }

instance
  Core.FromJSON
    OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo
  where
  parseJSON =
    Core.withObject
      "OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo"
      ( \o ->
          OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo
            Core.<$> (o Core..:? "carrier")
              Core.<*> (o Core..:? "shipmentId")
              Core.<*> (o Core..:? "trackingId")
      )

instance
  Core.ToJSON
    OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo
  where
  toJSON
    OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo {..} =
      Core.object
        ( Core.catMaybes
            [ ("carrier" Core..=) Core.<$> carrier,
              ("shipmentId" Core..=) Core.<$> shipmentId,
              ("trackingId" Core..=) Core.<$> trackingId
            ]
        )

-- | ScheduledDeliveryDetails used to update the scheduled delivery order.
--
-- /See:/ 'newOrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails' smart constructor.
data OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails = OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails
  { -- | The phone number of the carrier fulfilling the delivery. The phone number should be formatted as the international notation in
    carrierPhoneNumber :: (Core.Maybe Core.Text),
    -- | The date a shipment is scheduled for delivery, in ISO 8601 format.
    scheduledDate :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails' with the minimum fields required to make a request.
newOrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails ::
  OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails
newOrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails =
  OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails
    { carrierPhoneNumber = Core.Nothing,
      scheduledDate = Core.Nothing
    }

instance
  Core.FromJSON
    OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails
  where
  parseJSON =
    Core.withObject
      "OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails"
      ( \o ->
          OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails
            Core.<$> (o Core..:? "carrierPhoneNumber")
              Core.<*> (o Core..:? "scheduledDate")
      )

instance
  Core.ToJSON
    OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails
  where
  toJSON
    OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails {..} =
      Core.object
        ( Core.catMaybes
            [ ("carrierPhoneNumber" Core..=)
                Core.<$> carrierPhoneNumber,
              ("scheduledDate" Core..=) Core.<$> scheduledDate
            ]
        )

--
-- /See:/ 'newOrdersGetByMerchantOrderIdResponse' smart constructor.
data OrdersGetByMerchantOrderIdResponse = OrdersGetByMerchantOrderIdResponse
  { -- | Identifies what kind of resource this is. Value: the fixed string \"@content#ordersGetByMerchantOrderIdResponse@\".
    kind :: (Core.Maybe Core.Text),
    -- | The requested order.
    order :: (Core.Maybe Order)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersGetByMerchantOrderIdResponse' with the minimum fields required to make a request.
newOrdersGetByMerchantOrderIdResponse ::
  OrdersGetByMerchantOrderIdResponse
newOrdersGetByMerchantOrderIdResponse =
  OrdersGetByMerchantOrderIdResponse {kind = Core.Nothing, order = Core.Nothing}

instance
  Core.FromJSON
    OrdersGetByMerchantOrderIdResponse
  where
  parseJSON =
    Core.withObject
      "OrdersGetByMerchantOrderIdResponse"
      ( \o ->
          OrdersGetByMerchantOrderIdResponse
            Core.<$> (o Core..:? "kind") Core.<*> (o Core..:? "order")
      )

instance
  Core.ToJSON
    OrdersGetByMerchantOrderIdResponse
  where
  toJSON OrdersGetByMerchantOrderIdResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("order" Core..=) Core.<$> order
          ]
      )

--
-- /See:/ 'newOrdersGetTestOrderTemplateResponse' smart constructor.
data OrdersGetTestOrderTemplateResponse = OrdersGetTestOrderTemplateResponse
  { -- | Identifies what kind of resource this is. Value: the fixed string \"@content#ordersGetTestOrderTemplateResponse@\".
    kind :: (Core.Maybe Core.Text),
    -- | The requested test order template.
    template :: (Core.Maybe TestOrder)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersGetTestOrderTemplateResponse' with the minimum fields required to make a request.
newOrdersGetTestOrderTemplateResponse ::
  OrdersGetTestOrderTemplateResponse
newOrdersGetTestOrderTemplateResponse =
  OrdersGetTestOrderTemplateResponse
    { kind = Core.Nothing,
      template = Core.Nothing
    }

instance
  Core.FromJSON
    OrdersGetTestOrderTemplateResponse
  where
  parseJSON =
    Core.withObject
      "OrdersGetTestOrderTemplateResponse"
      ( \o ->
          OrdersGetTestOrderTemplateResponse
            Core.<$> (o Core..:? "kind") Core.<*> (o Core..:? "template")
      )

instance
  Core.ToJSON
    OrdersGetTestOrderTemplateResponse
  where
  toJSON OrdersGetTestOrderTemplateResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("template" Core..=) Core.<$> template
          ]
      )

--
-- /See:/ 'newOrdersInStoreRefundLineItemRequest' smart constructor.
data OrdersInStoreRefundLineItemRequest = OrdersInStoreRefundLineItemRequest
  { -- | The ID of the line item to return. Either lineItemId or productId is required.
    lineItemId :: (Core.Maybe Core.Text),
    -- | The ID of the operation. Unique across all operations for a given order.
    operationId :: (Core.Maybe Core.Text),
    -- | The amount to be refunded. This may be pre-tax or post-tax depending on the location of the order. Required.
    priceAmount :: (Core.Maybe Price),
    -- | The ID of the product to return. This is the REST ID used in the products service. Either lineItemId or productId is required.
    productId :: (Core.Maybe Core.Text),
    -- | The quantity to return and refund.
    quantity :: (Core.Maybe Core.Word32),
    -- | The reason for the return. Acceptable values are: - \"@customerDiscretionaryReturn@\" - \"@customerInitiatedMerchantCancel@\" - \"@deliveredTooLate@\" - \"@expiredItem@\" - \"@invalidCoupon@\" - \"@malformedShippingAddress@\" - \"@other@\" - \"@productArrivedDamaged@\" - \"@productNotAsDescribed@\" - \"@qualityNotAsExpected@\" - \"@undeliverableShippingAddress@\" - \"@unsupportedPoBoxAddress@\" - \"@wrongProductShipped@\"
    reason :: (Core.Maybe Core.Text),
    -- | The explanation of the reason.
    reasonText :: (Core.Maybe Core.Text),
    -- | The amount of tax to be refunded. Required.
    taxAmount :: (Core.Maybe Price)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersInStoreRefundLineItemRequest' with the minimum fields required to make a request.
newOrdersInStoreRefundLineItemRequest ::
  OrdersInStoreRefundLineItemRequest
newOrdersInStoreRefundLineItemRequest =
  OrdersInStoreRefundLineItemRequest
    { lineItemId = Core.Nothing,
      operationId = Core.Nothing,
      priceAmount = Core.Nothing,
      productId = Core.Nothing,
      quantity = Core.Nothing,
      reason = Core.Nothing,
      reasonText = Core.Nothing,
      taxAmount = Core.Nothing
    }

instance
  Core.FromJSON
    OrdersInStoreRefundLineItemRequest
  where
  parseJSON =
    Core.withObject
      "OrdersInStoreRefundLineItemRequest"
      ( \o ->
          OrdersInStoreRefundLineItemRequest
            Core.<$> (o Core..:? "lineItemId")
            Core.<*> (o Core..:? "operationId")
            Core.<*> (o Core..:? "priceAmount")
            Core.<*> (o Core..:? "productId")
            Core.<*> (o Core..:? "quantity")
            Core.<*> (o Core..:? "reason")
            Core.<*> (o Core..:? "reasonText")
            Core.<*> (o Core..:? "taxAmount")
      )

instance
  Core.ToJSON
    OrdersInStoreRefundLineItemRequest
  where
  toJSON OrdersInStoreRefundLineItemRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("lineItemId" Core..=) Core.<$> lineItemId,
            ("operationId" Core..=) Core.<$> operationId,
            ("priceAmount" Core..=) Core.<$> priceAmount,
            ("productId" Core..=) Core.<$> productId,
            ("quantity" Core..=) Core.<$> quantity,
            ("reason" Core..=) Core.<$> reason,
            ("reasonText" Core..=) Core.<$> reasonText,
            ("taxAmount" Core..=) Core.<$> taxAmount
          ]
      )

--
-- /See:/ 'newOrdersInStoreRefundLineItemResponse' smart constructor.
data OrdersInStoreRefundLineItemResponse = OrdersInStoreRefundLineItemResponse
  { -- | The status of the execution. Acceptable values are: - \"@duplicate@\" - \"@executed@\"
    executionStatus :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#ordersInStoreRefundLineItemResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersInStoreRefundLineItemResponse' with the minimum fields required to make a request.
newOrdersInStoreRefundLineItemResponse ::
  OrdersInStoreRefundLineItemResponse
newOrdersInStoreRefundLineItemResponse =
  OrdersInStoreRefundLineItemResponse
    { executionStatus = Core.Nothing,
      kind = Core.Nothing
    }

instance
  Core.FromJSON
    OrdersInStoreRefundLineItemResponse
  where
  parseJSON =
    Core.withObject
      "OrdersInStoreRefundLineItemResponse"
      ( \o ->
          OrdersInStoreRefundLineItemResponse
            Core.<$> (o Core..:? "executionStatus")
            Core.<*> (o Core..:? "kind")
      )

instance
  Core.ToJSON
    OrdersInStoreRefundLineItemResponse
  where
  toJSON OrdersInStoreRefundLineItemResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("executionStatus" Core..=)
              Core.<$> executionStatus,
            ("kind" Core..=) Core.<$> kind
          ]
      )

--
-- /See:/ 'newOrdersListResponse' smart constructor.
data OrdersListResponse = OrdersListResponse
  { -- | Identifies what kind of resource this is. Value: the fixed string \"@content#ordersListResponse@\".
    kind :: (Core.Maybe Core.Text),
    -- | The token for the retrieval of the next page of orders.
    nextPageToken :: (Core.Maybe Core.Text),
    -- |
    resources :: (Core.Maybe [Order])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersListResponse' with the minimum fields required to make a request.
newOrdersListResponse ::
  OrdersListResponse
newOrdersListResponse =
  OrdersListResponse
    { kind = Core.Nothing,
      nextPageToken = Core.Nothing,
      resources = Core.Nothing
    }

instance Core.FromJSON OrdersListResponse where
  parseJSON =
    Core.withObject
      "OrdersListResponse"
      ( \o ->
          OrdersListResponse
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "resources" Core..!= Core.mempty)
      )

instance Core.ToJSON OrdersListResponse where
  toJSON OrdersListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("resources" Core..=) Core.<$> resources
          ]
      )

--
-- /See:/ 'newOrdersRefundItemRequest' smart constructor.
data OrdersRefundItemRequest = OrdersRefundItemRequest
  { -- | The items that are refunded. Either Item or Shipping must be provided in the request.
    items :: (Core.Maybe [OrdersCustomBatchRequestEntryRefundItemItem]),
    -- | The ID of the operation. Unique across all operations for a given order.
    operationId :: (Core.Maybe Core.Text),
    -- | The reason for the refund. Acceptable values are: - \"@shippingCostAdjustment@\" - \"@priceAdjustment@\" - \"@taxAdjustment@\" - \"@feeAdjustment@\" - \"@courtesyAdjustment@\" - \"@adjustment@\" - \"@customerCancelled@\" - \"@noInventory@\" - \"@productNotAsDescribed@\" - \"@undeliverableShippingAddress@\" - \"@wrongProductShipped@\" - \"@lateShipmentCredit@\" - \"@deliveredLateByCarrier@\" - \"@productArrivedDamaged@\"
    reason :: (Core.Maybe Core.Text),
    -- | The explanation of the reason.
    reasonText :: (Core.Maybe Core.Text),
    -- | The refund on shipping. Optional, but either Item or Shipping must be provided in the request.
    shipping :: (Core.Maybe OrdersCustomBatchRequestEntryRefundItemShipping)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersRefundItemRequest' with the minimum fields required to make a request.
newOrdersRefundItemRequest ::
  OrdersRefundItemRequest
newOrdersRefundItemRequest =
  OrdersRefundItemRequest
    { items = Core.Nothing,
      operationId = Core.Nothing,
      reason = Core.Nothing,
      reasonText = Core.Nothing,
      shipping = Core.Nothing
    }

instance Core.FromJSON OrdersRefundItemRequest where
  parseJSON =
    Core.withObject
      "OrdersRefundItemRequest"
      ( \o ->
          OrdersRefundItemRequest
            Core.<$> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "operationId")
            Core.<*> (o Core..:? "reason")
            Core.<*> (o Core..:? "reasonText")
            Core.<*> (o Core..:? "shipping")
      )

instance Core.ToJSON OrdersRefundItemRequest where
  toJSON OrdersRefundItemRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("operationId" Core..=) Core.<$> operationId,
            ("reason" Core..=) Core.<$> reason,
            ("reasonText" Core..=) Core.<$> reasonText,
            ("shipping" Core..=) Core.<$> shipping
          ]
      )

--
-- /See:/ 'newOrdersRefundItemResponse' smart constructor.
data OrdersRefundItemResponse = OrdersRefundItemResponse
  { -- | The status of the execution. Acceptable values are: - \"@duplicate@\" - \"@executed@\"
    executionStatus :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#ordersRefundItemResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersRefundItemResponse' with the minimum fields required to make a request.
newOrdersRefundItemResponse ::
  OrdersRefundItemResponse
newOrdersRefundItemResponse =
  OrdersRefundItemResponse {executionStatus = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON OrdersRefundItemResponse where
  parseJSON =
    Core.withObject
      "OrdersRefundItemResponse"
      ( \o ->
          OrdersRefundItemResponse
            Core.<$> (o Core..:? "executionStatus")
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON OrdersRefundItemResponse where
  toJSON OrdersRefundItemResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("executionStatus" Core..=)
              Core.<$> executionStatus,
            ("kind" Core..=) Core.<$> kind
          ]
      )

--
-- /See:/ 'newOrdersRefundOrderRequest' smart constructor.
data OrdersRefundOrderRequest = OrdersRefundOrderRequest
  { -- | The amount that is refunded. If this is not the first refund for the order, this should be the newly refunded amount.
    amount :: (Core.Maybe MonetaryAmount),
    -- | If true, the full order will be refunded, including shipping. If this is true, amount shouldn\'t be provided and will be ignored.
    fullRefund :: (Core.Maybe Core.Bool),
    -- | The ID of the operation. Unique across all operations for a given order.
    operationId :: (Core.Maybe Core.Text),
    -- | The reason for the refund. Acceptable values are: - \"@courtesyAdjustment@\" - \"@other@\"
    reason :: (Core.Maybe Core.Text),
    -- | The explanation of the reason.
    reasonText :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersRefundOrderRequest' with the minimum fields required to make a request.
newOrdersRefundOrderRequest ::
  OrdersRefundOrderRequest
newOrdersRefundOrderRequest =
  OrdersRefundOrderRequest
    { amount = Core.Nothing,
      fullRefund = Core.Nothing,
      operationId = Core.Nothing,
      reason = Core.Nothing,
      reasonText = Core.Nothing
    }

instance Core.FromJSON OrdersRefundOrderRequest where
  parseJSON =
    Core.withObject
      "OrdersRefundOrderRequest"
      ( \o ->
          OrdersRefundOrderRequest
            Core.<$> (o Core..:? "amount")
            Core.<*> (o Core..:? "fullRefund")
            Core.<*> (o Core..:? "operationId")
            Core.<*> (o Core..:? "reason")
            Core.<*> (o Core..:? "reasonText")
      )

instance Core.ToJSON OrdersRefundOrderRequest where
  toJSON OrdersRefundOrderRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("amount" Core..=) Core.<$> amount,
            ("fullRefund" Core..=) Core.<$> fullRefund,
            ("operationId" Core..=) Core.<$> operationId,
            ("reason" Core..=) Core.<$> reason,
            ("reasonText" Core..=) Core.<$> reasonText
          ]
      )

--
-- /See:/ 'newOrdersRefundOrderResponse' smart constructor.
data OrdersRefundOrderResponse = OrdersRefundOrderResponse
  { -- | The status of the execution. Acceptable values are: - \"@duplicate@\" - \"@executed@\"
    executionStatus :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#ordersRefundOrderResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersRefundOrderResponse' with the minimum fields required to make a request.
newOrdersRefundOrderResponse ::
  OrdersRefundOrderResponse
newOrdersRefundOrderResponse =
  OrdersRefundOrderResponse
    { executionStatus = Core.Nothing,
      kind = Core.Nothing
    }

instance Core.FromJSON OrdersRefundOrderResponse where
  parseJSON =
    Core.withObject
      "OrdersRefundOrderResponse"
      ( \o ->
          OrdersRefundOrderResponse
            Core.<$> (o Core..:? "executionStatus")
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON OrdersRefundOrderResponse where
  toJSON OrdersRefundOrderResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("executionStatus" Core..=)
              Core.<$> executionStatus,
            ("kind" Core..=) Core.<$> kind
          ]
      )

--
-- /See:/ 'newOrdersRejectReturnLineItemRequest' smart constructor.
data OrdersRejectReturnLineItemRequest = OrdersRejectReturnLineItemRequest
  { -- | The ID of the line item to return. Either lineItemId or productId is required.
    lineItemId :: (Core.Maybe Core.Text),
    -- | The ID of the operation. Unique across all operations for a given order.
    operationId :: (Core.Maybe Core.Text),
    -- | The ID of the product to return. This is the REST ID used in the products service. Either lineItemId or productId is required.
    productId :: (Core.Maybe Core.Text),
    -- | The quantity to return and refund.
    quantity :: (Core.Maybe Core.Word32),
    -- | The reason for the return. Acceptable values are: - \"@damagedOrUsed@\" - \"@missingComponent@\" - \"@notEligible@\" - \"@other@\" - \"@outOfReturnWindow@\"
    reason :: (Core.Maybe Core.Text),
    -- | The explanation of the reason.
    reasonText :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersRejectReturnLineItemRequest' with the minimum fields required to make a request.
newOrdersRejectReturnLineItemRequest ::
  OrdersRejectReturnLineItemRequest
newOrdersRejectReturnLineItemRequest =
  OrdersRejectReturnLineItemRequest
    { lineItemId = Core.Nothing,
      operationId = Core.Nothing,
      productId = Core.Nothing,
      quantity = Core.Nothing,
      reason = Core.Nothing,
      reasonText = Core.Nothing
    }

instance
  Core.FromJSON
    OrdersRejectReturnLineItemRequest
  where
  parseJSON =
    Core.withObject
      "OrdersRejectReturnLineItemRequest"
      ( \o ->
          OrdersRejectReturnLineItemRequest
            Core.<$> (o Core..:? "lineItemId")
            Core.<*> (o Core..:? "operationId")
            Core.<*> (o Core..:? "productId")
            Core.<*> (o Core..:? "quantity")
            Core.<*> (o Core..:? "reason")
            Core.<*> (o Core..:? "reasonText")
      )

instance
  Core.ToJSON
    OrdersRejectReturnLineItemRequest
  where
  toJSON OrdersRejectReturnLineItemRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("lineItemId" Core..=) Core.<$> lineItemId,
            ("operationId" Core..=) Core.<$> operationId,
            ("productId" Core..=) Core.<$> productId,
            ("quantity" Core..=) Core.<$> quantity,
            ("reason" Core..=) Core.<$> reason,
            ("reasonText" Core..=) Core.<$> reasonText
          ]
      )

--
-- /See:/ 'newOrdersRejectReturnLineItemResponse' smart constructor.
data OrdersRejectReturnLineItemResponse = OrdersRejectReturnLineItemResponse
  { -- | The status of the execution. Acceptable values are: - \"@duplicate@\" - \"@executed@\"
    executionStatus :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#ordersRejectReturnLineItemResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersRejectReturnLineItemResponse' with the minimum fields required to make a request.
newOrdersRejectReturnLineItemResponse ::
  OrdersRejectReturnLineItemResponse
newOrdersRejectReturnLineItemResponse =
  OrdersRejectReturnLineItemResponse
    { executionStatus = Core.Nothing,
      kind = Core.Nothing
    }

instance
  Core.FromJSON
    OrdersRejectReturnLineItemResponse
  where
  parseJSON =
    Core.withObject
      "OrdersRejectReturnLineItemResponse"
      ( \o ->
          OrdersRejectReturnLineItemResponse
            Core.<$> (o Core..:? "executionStatus")
            Core.<*> (o Core..:? "kind")
      )

instance
  Core.ToJSON
    OrdersRejectReturnLineItemResponse
  where
  toJSON OrdersRejectReturnLineItemResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("executionStatus" Core..=)
              Core.<$> executionStatus,
            ("kind" Core..=) Core.<$> kind
          ]
      )

--
-- /See:/ 'newOrdersReturnRefundLineItemRequest' smart constructor.
data OrdersReturnRefundLineItemRequest = OrdersReturnRefundLineItemRequest
  { -- | The ID of the line item to return. Either lineItemId or productId is required.
    lineItemId :: (Core.Maybe Core.Text),
    -- | The ID of the operation. Unique across all operations for a given order.
    operationId :: (Core.Maybe Core.Text),
    -- | The amount to be refunded. This may be pre-tax or post-tax depending on the location of the order. If omitted, refundless return is assumed.
    priceAmount :: (Core.Maybe Price),
    -- | The ID of the product to return. This is the REST ID used in the products service. Either lineItemId or productId is required.
    productId :: (Core.Maybe Core.Text),
    -- | The quantity to return and refund. Quantity is required.
    quantity :: (Core.Maybe Core.Word32),
    -- | The reason for the return. Acceptable values are: - \"@customerDiscretionaryReturn@\" - \"@customerInitiatedMerchantCancel@\" - \"@deliveredTooLate@\" - \"@expiredItem@\" - \"@invalidCoupon@\" - \"@malformedShippingAddress@\" - \"@other@\" - \"@productArrivedDamaged@\" - \"@productNotAsDescribed@\" - \"@qualityNotAsExpected@\" - \"@undeliverableShippingAddress@\" - \"@unsupportedPoBoxAddress@\" - \"@wrongProductShipped@\"
    reason :: (Core.Maybe Core.Text),
    -- | The explanation of the reason.
    reasonText :: (Core.Maybe Core.Text),
    -- | The amount of tax to be refunded. Optional, but if filled, then priceAmount must be set. Calculated automatically if not provided.
    taxAmount :: (Core.Maybe Price)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersReturnRefundLineItemRequest' with the minimum fields required to make a request.
newOrdersReturnRefundLineItemRequest ::
  OrdersReturnRefundLineItemRequest
newOrdersReturnRefundLineItemRequest =
  OrdersReturnRefundLineItemRequest
    { lineItemId = Core.Nothing,
      operationId = Core.Nothing,
      priceAmount = Core.Nothing,
      productId = Core.Nothing,
      quantity = Core.Nothing,
      reason = Core.Nothing,
      reasonText = Core.Nothing,
      taxAmount = Core.Nothing
    }

instance
  Core.FromJSON
    OrdersReturnRefundLineItemRequest
  where
  parseJSON =
    Core.withObject
      "OrdersReturnRefundLineItemRequest"
      ( \o ->
          OrdersReturnRefundLineItemRequest
            Core.<$> (o Core..:? "lineItemId")
            Core.<*> (o Core..:? "operationId")
            Core.<*> (o Core..:? "priceAmount")
            Core.<*> (o Core..:? "productId")
            Core.<*> (o Core..:? "quantity")
            Core.<*> (o Core..:? "reason")
            Core.<*> (o Core..:? "reasonText")
            Core.<*> (o Core..:? "taxAmount")
      )

instance
  Core.ToJSON
    OrdersReturnRefundLineItemRequest
  where
  toJSON OrdersReturnRefundLineItemRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("lineItemId" Core..=) Core.<$> lineItemId,
            ("operationId" Core..=) Core.<$> operationId,
            ("priceAmount" Core..=) Core.<$> priceAmount,
            ("productId" Core..=) Core.<$> productId,
            ("quantity" Core..=) Core.<$> quantity,
            ("reason" Core..=) Core.<$> reason,
            ("reasonText" Core..=) Core.<$> reasonText,
            ("taxAmount" Core..=) Core.<$> taxAmount
          ]
      )

--
-- /See:/ 'newOrdersReturnRefundLineItemResponse' smart constructor.
data OrdersReturnRefundLineItemResponse = OrdersReturnRefundLineItemResponse
  { -- | The status of the execution. Acceptable values are: - \"@duplicate@\" - \"@executed@\"
    executionStatus :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#ordersReturnRefundLineItemResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersReturnRefundLineItemResponse' with the minimum fields required to make a request.
newOrdersReturnRefundLineItemResponse ::
  OrdersReturnRefundLineItemResponse
newOrdersReturnRefundLineItemResponse =
  OrdersReturnRefundLineItemResponse
    { executionStatus = Core.Nothing,
      kind = Core.Nothing
    }

instance
  Core.FromJSON
    OrdersReturnRefundLineItemResponse
  where
  parseJSON =
    Core.withObject
      "OrdersReturnRefundLineItemResponse"
      ( \o ->
          OrdersReturnRefundLineItemResponse
            Core.<$> (o Core..:? "executionStatus")
            Core.<*> (o Core..:? "kind")
      )

instance
  Core.ToJSON
    OrdersReturnRefundLineItemResponse
  where
  toJSON OrdersReturnRefundLineItemResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("executionStatus" Core..=)
              Core.<$> executionStatus,
            ("kind" Core..=) Core.<$> kind
          ]
      )

--
-- /See:/ 'newOrdersSetLineItemMetadataRequest' smart constructor.
data OrdersSetLineItemMetadataRequest = OrdersSetLineItemMetadataRequest
  { -- |
    annotations :: (Core.Maybe [OrderMerchantProvidedAnnotation]),
    -- | The ID of the line item to set metadata. Either lineItemId or productId is required.
    lineItemId :: (Core.Maybe Core.Text),
    -- | The ID of the operation. Unique across all operations for a given order.
    operationId :: (Core.Maybe Core.Text),
    -- | The ID of the product to set metadata. This is the REST ID used in the products service. Either lineItemId or productId is required.
    productId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersSetLineItemMetadataRequest' with the minimum fields required to make a request.
newOrdersSetLineItemMetadataRequest ::
  OrdersSetLineItemMetadataRequest
newOrdersSetLineItemMetadataRequest =
  OrdersSetLineItemMetadataRequest
    { annotations = Core.Nothing,
      lineItemId = Core.Nothing,
      operationId = Core.Nothing,
      productId = Core.Nothing
    }

instance
  Core.FromJSON
    OrdersSetLineItemMetadataRequest
  where
  parseJSON =
    Core.withObject
      "OrdersSetLineItemMetadataRequest"
      ( \o ->
          OrdersSetLineItemMetadataRequest
            Core.<$> (o Core..:? "annotations" Core..!= Core.mempty)
            Core.<*> (o Core..:? "lineItemId")
            Core.<*> (o Core..:? "operationId")
            Core.<*> (o Core..:? "productId")
      )

instance Core.ToJSON OrdersSetLineItemMetadataRequest where
  toJSON OrdersSetLineItemMetadataRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("annotations" Core..=) Core.<$> annotations,
            ("lineItemId" Core..=) Core.<$> lineItemId,
            ("operationId" Core..=) Core.<$> operationId,
            ("productId" Core..=) Core.<$> productId
          ]
      )

--
-- /See:/ 'newOrdersSetLineItemMetadataResponse' smart constructor.
data OrdersSetLineItemMetadataResponse = OrdersSetLineItemMetadataResponse
  { -- | The status of the execution. Acceptable values are: - \"@duplicate@\" - \"@executed@\"
    executionStatus :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#ordersSetLineItemMetadataResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersSetLineItemMetadataResponse' with the minimum fields required to make a request.
newOrdersSetLineItemMetadataResponse ::
  OrdersSetLineItemMetadataResponse
newOrdersSetLineItemMetadataResponse =
  OrdersSetLineItemMetadataResponse
    { executionStatus = Core.Nothing,
      kind = Core.Nothing
    }

instance
  Core.FromJSON
    OrdersSetLineItemMetadataResponse
  where
  parseJSON =
    Core.withObject
      "OrdersSetLineItemMetadataResponse"
      ( \o ->
          OrdersSetLineItemMetadataResponse
            Core.<$> (o Core..:? "executionStatus")
            Core.<*> (o Core..:? "kind")
      )

instance
  Core.ToJSON
    OrdersSetLineItemMetadataResponse
  where
  toJSON OrdersSetLineItemMetadataResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("executionStatus" Core..=)
              Core.<$> executionStatus,
            ("kind" Core..=) Core.<$> kind
          ]
      )

--
-- /See:/ 'newOrdersShipLineItemsRequest' smart constructor.
data OrdersShipLineItemsRequest = OrdersShipLineItemsRequest
  { -- | Line items to ship.
    lineItems :: (Core.Maybe [OrderShipmentLineItemShipment]),
    -- | The ID of the operation. Unique across all operations for a given order.
    operationId :: (Core.Maybe Core.Text),
    -- | ID of the shipment group. Required for orders that use the orderinvoices service.
    shipmentGroupId :: (Core.Maybe Core.Text),
    -- | Shipment information. This field is repeated because a single line item can be shipped in several packages (and have several tracking IDs).
    shipmentInfos ::
      ( Core.Maybe
          [OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo]
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersShipLineItemsRequest' with the minimum fields required to make a request.
newOrdersShipLineItemsRequest ::
  OrdersShipLineItemsRequest
newOrdersShipLineItemsRequest =
  OrdersShipLineItemsRequest
    { lineItems = Core.Nothing,
      operationId = Core.Nothing,
      shipmentGroupId = Core.Nothing,
      shipmentInfos = Core.Nothing
    }

instance Core.FromJSON OrdersShipLineItemsRequest where
  parseJSON =
    Core.withObject
      "OrdersShipLineItemsRequest"
      ( \o ->
          OrdersShipLineItemsRequest
            Core.<$> (o Core..:? "lineItems" Core..!= Core.mempty)
            Core.<*> (o Core..:? "operationId")
            Core.<*> (o Core..:? "shipmentGroupId")
            Core.<*> (o Core..:? "shipmentInfos" Core..!= Core.mempty)
      )

instance Core.ToJSON OrdersShipLineItemsRequest where
  toJSON OrdersShipLineItemsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("lineItems" Core..=) Core.<$> lineItems,
            ("operationId" Core..=) Core.<$> operationId,
            ("shipmentGroupId" Core..=) Core.<$> shipmentGroupId,
            ("shipmentInfos" Core..=) Core.<$> shipmentInfos
          ]
      )

--
-- /See:/ 'newOrdersShipLineItemsResponse' smart constructor.
data OrdersShipLineItemsResponse = OrdersShipLineItemsResponse
  { -- | The status of the execution. Acceptable values are: - \"@duplicate@\" - \"@executed@\"
    executionStatus :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#ordersShipLineItemsResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersShipLineItemsResponse' with the minimum fields required to make a request.
newOrdersShipLineItemsResponse ::
  OrdersShipLineItemsResponse
newOrdersShipLineItemsResponse =
  OrdersShipLineItemsResponse
    { executionStatus = Core.Nothing,
      kind = Core.Nothing
    }

instance Core.FromJSON OrdersShipLineItemsResponse where
  parseJSON =
    Core.withObject
      "OrdersShipLineItemsResponse"
      ( \o ->
          OrdersShipLineItemsResponse
            Core.<$> (o Core..:? "executionStatus")
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON OrdersShipLineItemsResponse where
  toJSON OrdersShipLineItemsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("executionStatus" Core..=)
              Core.<$> executionStatus,
            ("kind" Core..=) Core.<$> kind
          ]
      )

--
-- /See:/ 'newOrdersUpdateLineItemShippingDetailsRequest' smart constructor.
data OrdersUpdateLineItemShippingDetailsRequest = OrdersUpdateLineItemShippingDetailsRequest
  { -- | Updated delivery by date, in ISO 8601 format. If not specified only ship by date is updated. Provided date should be within 1 year timeframe and can\'t be a date in the past.
    deliverByDate :: (Core.Maybe Core.Text),
    -- | The ID of the line item to set metadata. Either lineItemId or productId is required.
    lineItemId :: (Core.Maybe Core.Text),
    -- | The ID of the operation. Unique across all operations for a given order.
    operationId :: (Core.Maybe Core.Text),
    -- | The ID of the product to set metadata. This is the REST ID used in the products service. Either lineItemId or productId is required.
    productId :: (Core.Maybe Core.Text),
    -- | Updated ship by date, in ISO 8601 format. If not specified only deliver by date is updated. Provided date should be within 1 year timeframe and can\'t be a date in the past.
    shipByDate :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersUpdateLineItemShippingDetailsRequest' with the minimum fields required to make a request.
newOrdersUpdateLineItemShippingDetailsRequest ::
  OrdersUpdateLineItemShippingDetailsRequest
newOrdersUpdateLineItemShippingDetailsRequest =
  OrdersUpdateLineItemShippingDetailsRequest
    { deliverByDate = Core.Nothing,
      lineItemId = Core.Nothing,
      operationId = Core.Nothing,
      productId = Core.Nothing,
      shipByDate = Core.Nothing
    }

instance
  Core.FromJSON
    OrdersUpdateLineItemShippingDetailsRequest
  where
  parseJSON =
    Core.withObject
      "OrdersUpdateLineItemShippingDetailsRequest"
      ( \o ->
          OrdersUpdateLineItemShippingDetailsRequest
            Core.<$> (o Core..:? "deliverByDate")
            Core.<*> (o Core..:? "lineItemId")
            Core.<*> (o Core..:? "operationId")
            Core.<*> (o Core..:? "productId")
            Core.<*> (o Core..:? "shipByDate")
      )

instance
  Core.ToJSON
    OrdersUpdateLineItemShippingDetailsRequest
  where
  toJSON OrdersUpdateLineItemShippingDetailsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("deliverByDate" Core..=) Core.<$> deliverByDate,
            ("lineItemId" Core..=) Core.<$> lineItemId,
            ("operationId" Core..=) Core.<$> operationId,
            ("productId" Core..=) Core.<$> productId,
            ("shipByDate" Core..=) Core.<$> shipByDate
          ]
      )

--
-- /See:/ 'newOrdersUpdateLineItemShippingDetailsResponse' smart constructor.
data OrdersUpdateLineItemShippingDetailsResponse = OrdersUpdateLineItemShippingDetailsResponse
  { -- | The status of the execution. Acceptable values are: - \"@duplicate@\" - \"@executed@\"
    executionStatus :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#ordersUpdateLineItemShippingDetailsResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersUpdateLineItemShippingDetailsResponse' with the minimum fields required to make a request.
newOrdersUpdateLineItemShippingDetailsResponse ::
  OrdersUpdateLineItemShippingDetailsResponse
newOrdersUpdateLineItemShippingDetailsResponse =
  OrdersUpdateLineItemShippingDetailsResponse
    { executionStatus = Core.Nothing,
      kind = Core.Nothing
    }

instance
  Core.FromJSON
    OrdersUpdateLineItemShippingDetailsResponse
  where
  parseJSON =
    Core.withObject
      "OrdersUpdateLineItemShippingDetailsResponse"
      ( \o ->
          OrdersUpdateLineItemShippingDetailsResponse
            Core.<$> (o Core..:? "executionStatus")
            Core.<*> (o Core..:? "kind")
      )

instance
  Core.ToJSON
    OrdersUpdateLineItemShippingDetailsResponse
  where
  toJSON
    OrdersUpdateLineItemShippingDetailsResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("executionStatus" Core..=)
                Core.<$> executionStatus,
              ("kind" Core..=) Core.<$> kind
            ]
        )

--
-- /See:/ 'newOrdersUpdateMerchantOrderIdRequest' smart constructor.
data OrdersUpdateMerchantOrderIdRequest = OrdersUpdateMerchantOrderIdRequest
  { -- | The merchant order id to be assigned to the order. Must be unique per merchant.
    merchantOrderId :: (Core.Maybe Core.Text),
    -- | The ID of the operation. Unique across all operations for a given order.
    operationId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersUpdateMerchantOrderIdRequest' with the minimum fields required to make a request.
newOrdersUpdateMerchantOrderIdRequest ::
  OrdersUpdateMerchantOrderIdRequest
newOrdersUpdateMerchantOrderIdRequest =
  OrdersUpdateMerchantOrderIdRequest
    { merchantOrderId = Core.Nothing,
      operationId = Core.Nothing
    }

instance
  Core.FromJSON
    OrdersUpdateMerchantOrderIdRequest
  where
  parseJSON =
    Core.withObject
      "OrdersUpdateMerchantOrderIdRequest"
      ( \o ->
          OrdersUpdateMerchantOrderIdRequest
            Core.<$> (o Core..:? "merchantOrderId")
            Core.<*> (o Core..:? "operationId")
      )

instance
  Core.ToJSON
    OrdersUpdateMerchantOrderIdRequest
  where
  toJSON OrdersUpdateMerchantOrderIdRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("merchantOrderId" Core..=)
              Core.<$> merchantOrderId,
            ("operationId" Core..=) Core.<$> operationId
          ]
      )

--
-- /See:/ 'newOrdersUpdateMerchantOrderIdResponse' smart constructor.
data OrdersUpdateMerchantOrderIdResponse = OrdersUpdateMerchantOrderIdResponse
  { -- | The status of the execution. Acceptable values are: - \"@duplicate@\" - \"@executed@\"
    executionStatus :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#ordersUpdateMerchantOrderIdResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersUpdateMerchantOrderIdResponse' with the minimum fields required to make a request.
newOrdersUpdateMerchantOrderIdResponse ::
  OrdersUpdateMerchantOrderIdResponse
newOrdersUpdateMerchantOrderIdResponse =
  OrdersUpdateMerchantOrderIdResponse
    { executionStatus = Core.Nothing,
      kind = Core.Nothing
    }

instance
  Core.FromJSON
    OrdersUpdateMerchantOrderIdResponse
  where
  parseJSON =
    Core.withObject
      "OrdersUpdateMerchantOrderIdResponse"
      ( \o ->
          OrdersUpdateMerchantOrderIdResponse
            Core.<$> (o Core..:? "executionStatus")
            Core.<*> (o Core..:? "kind")
      )

instance
  Core.ToJSON
    OrdersUpdateMerchantOrderIdResponse
  where
  toJSON OrdersUpdateMerchantOrderIdResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("executionStatus" Core..=)
              Core.<$> executionStatus,
            ("kind" Core..=) Core.<$> kind
          ]
      )

--
-- /See:/ 'newOrdersUpdateShipmentRequest' smart constructor.
data OrdersUpdateShipmentRequest = OrdersUpdateShipmentRequest
  { -- | The carrier handling the shipment. Not updated if missing. See @shipments[].carrier@ in the Orders resource representation for a list of acceptable values.
    carrier :: (Core.Maybe Core.Text),
    -- | Date on which the shipment has been delivered, in ISO 8601 format. Optional and can be provided only if @status@ is @delivered@.
    deliveryDate :: (Core.Maybe Core.Text),
    -- | Date after which the pickup will expire, in ISO 8601 format. Required only when order is buy-online-pickup-in-store(BOPIS) and @status@ is @ready for pickup@.
    lastPickupDate :: (Core.Maybe Core.Text),
    -- | The ID of the operation. Unique across all operations for a given order.
    operationId :: (Core.Maybe Core.Text),
    -- | Date on which the shipment has been ready for pickup, in ISO 8601 format. Optional and can be provided only if @status@ is @ready for pickup@.
    readyPickupDate :: (Core.Maybe Core.Text),
    -- | Delivery details of the shipment if scheduling is needed.
    scheduledDeliveryDetails ::
      ( Core.Maybe
          OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails
      ),
    -- | The ID of the shipment.
    shipmentId :: (Core.Maybe Core.Text),
    -- | New status for the shipment. Not updated if missing. Acceptable values are: - \"@delivered@\" - \"@undeliverable@\" - \"@readyForPickup@\"
    status :: (Core.Maybe Core.Text),
    -- | The tracking ID for the shipment. Not updated if missing.
    trackingId :: (Core.Maybe Core.Text),
    -- | Date on which the shipment has been undeliverable, in ISO 8601 format. Optional and can be provided only if @status@ is @undeliverable@.
    undeliveredDate :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersUpdateShipmentRequest' with the minimum fields required to make a request.
newOrdersUpdateShipmentRequest ::
  OrdersUpdateShipmentRequest
newOrdersUpdateShipmentRequest =
  OrdersUpdateShipmentRequest
    { carrier = Core.Nothing,
      deliveryDate = Core.Nothing,
      lastPickupDate = Core.Nothing,
      operationId = Core.Nothing,
      readyPickupDate = Core.Nothing,
      scheduledDeliveryDetails = Core.Nothing,
      shipmentId = Core.Nothing,
      status = Core.Nothing,
      trackingId = Core.Nothing,
      undeliveredDate = Core.Nothing
    }

instance Core.FromJSON OrdersUpdateShipmentRequest where
  parseJSON =
    Core.withObject
      "OrdersUpdateShipmentRequest"
      ( \o ->
          OrdersUpdateShipmentRequest
            Core.<$> (o Core..:? "carrier")
            Core.<*> (o Core..:? "deliveryDate")
            Core.<*> (o Core..:? "lastPickupDate")
            Core.<*> (o Core..:? "operationId")
            Core.<*> (o Core..:? "readyPickupDate")
            Core.<*> (o Core..:? "scheduledDeliveryDetails")
            Core.<*> (o Core..:? "shipmentId")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "trackingId")
            Core.<*> (o Core..:? "undeliveredDate")
      )

instance Core.ToJSON OrdersUpdateShipmentRequest where
  toJSON OrdersUpdateShipmentRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("carrier" Core..=) Core.<$> carrier,
            ("deliveryDate" Core..=) Core.<$> deliveryDate,
            ("lastPickupDate" Core..=) Core.<$> lastPickupDate,
            ("operationId" Core..=) Core.<$> operationId,
            ("readyPickupDate" Core..=) Core.<$> readyPickupDate,
            ("scheduledDeliveryDetails" Core..=)
              Core.<$> scheduledDeliveryDetails,
            ("shipmentId" Core..=) Core.<$> shipmentId,
            ("status" Core..=) Core.<$> status,
            ("trackingId" Core..=) Core.<$> trackingId,
            ("undeliveredDate" Core..=)
              Core.<$> undeliveredDate
          ]
      )

--
-- /See:/ 'newOrdersUpdateShipmentResponse' smart constructor.
data OrdersUpdateShipmentResponse = OrdersUpdateShipmentResponse
  { -- | The status of the execution. Acceptable values are: - \"@duplicate@\" - \"@executed@\"
    executionStatus :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#ordersUpdateShipmentResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersUpdateShipmentResponse' with the minimum fields required to make a request.
newOrdersUpdateShipmentResponse ::
  OrdersUpdateShipmentResponse
newOrdersUpdateShipmentResponse =
  OrdersUpdateShipmentResponse
    { executionStatus = Core.Nothing,
      kind = Core.Nothing
    }

instance Core.FromJSON OrdersUpdateShipmentResponse where
  parseJSON =
    Core.withObject
      "OrdersUpdateShipmentResponse"
      ( \o ->
          OrdersUpdateShipmentResponse
            Core.<$> (o Core..:? "executionStatus")
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON OrdersUpdateShipmentResponse where
  toJSON OrdersUpdateShipmentResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("executionStatus" Core..=)
              Core.<$> executionStatus,
            ("kind" Core..=) Core.<$> kind
          ]
      )

-- | Request message for the PauseProgram method.
--
-- /See:/ 'newPauseBuyOnGoogleProgramRequest' smart constructor.
data PauseBuyOnGoogleProgramRequest = PauseBuyOnGoogleProgramRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PauseBuyOnGoogleProgramRequest' with the minimum fields required to make a request.
newPauseBuyOnGoogleProgramRequest ::
  PauseBuyOnGoogleProgramRequest
newPauseBuyOnGoogleProgramRequest = PauseBuyOnGoogleProgramRequest

instance Core.FromJSON PauseBuyOnGoogleProgramRequest where
  parseJSON =
    Core.withObject
      "PauseBuyOnGoogleProgramRequest"
      (\o -> Core.pure PauseBuyOnGoogleProgramRequest)

instance Core.ToJSON PauseBuyOnGoogleProgramRequest where
  toJSON = Core.const Core.emptyObject

-- | Additional information required for PAYMENT/SERVICE/PROVIDER link type.
--
-- /See:/ 'newPaymentServiceProviderLinkInfo' smart constructor.
data PaymentServiceProviderLinkInfo = PaymentServiceProviderLinkInfo
  { -- | The business country of the merchant account as identified by the third party service provider.
    externalAccountBusinessCountry :: (Core.Maybe Core.Text),
    -- | The id used by the third party service provider to identify the merchant.
    externalAccountId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PaymentServiceProviderLinkInfo' with the minimum fields required to make a request.
newPaymentServiceProviderLinkInfo ::
  PaymentServiceProviderLinkInfo
newPaymentServiceProviderLinkInfo =
  PaymentServiceProviderLinkInfo
    { externalAccountBusinessCountry = Core.Nothing,
      externalAccountId = Core.Nothing
    }

instance Core.FromJSON PaymentServiceProviderLinkInfo where
  parseJSON =
    Core.withObject
      "PaymentServiceProviderLinkInfo"
      ( \o ->
          PaymentServiceProviderLinkInfo
            Core.<$> (o Core..:? "externalAccountBusinessCountry")
            Core.<*> (o Core..:? "externalAccountId")
      )

instance Core.ToJSON PaymentServiceProviderLinkInfo where
  toJSON PaymentServiceProviderLinkInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("externalAccountBusinessCountry" Core..=)
              Core.<$> externalAccountBusinessCountry,
            ("externalAccountId" Core..=)
              Core.<$> externalAccountId
          ]
      )

--
-- /See:/ 'newPickupCarrierService' smart constructor.
data PickupCarrierService = PickupCarrierService
  { -- | The name of the pickup carrier (for example, @\"UPS\"@). Required.
    carrierName :: (Core.Maybe Core.Text),
    -- | The name of the pickup service (for example, @\"Access point\"@). Required.
    serviceName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PickupCarrierService' with the minimum fields required to make a request.
newPickupCarrierService ::
  PickupCarrierService
newPickupCarrierService =
  PickupCarrierService {carrierName = Core.Nothing, serviceName = Core.Nothing}

instance Core.FromJSON PickupCarrierService where
  parseJSON =
    Core.withObject
      "PickupCarrierService"
      ( \o ->
          PickupCarrierService
            Core.<$> (o Core..:? "carrierName")
            Core.<*> (o Core..:? "serviceName")
      )

instance Core.ToJSON PickupCarrierService where
  toJSON PickupCarrierService {..} =
    Core.object
      ( Core.catMaybes
          [ ("carrierName" Core..=) Core.<$> carrierName,
            ("serviceName" Core..=) Core.<$> serviceName
          ]
      )

--
-- /See:/ 'newPickupServicesPickupService' smart constructor.
data PickupServicesPickupService = PickupServicesPickupService
  { -- | The name of the carrier (for example, @\"UPS\"@). Always present.
    carrierName :: (Core.Maybe Core.Text),
    -- | The CLDR country code of the carrier (for example, \"US\"). Always present.
    country :: (Core.Maybe Core.Text),
    -- | The name of the pickup service (for example, @\"Access point\"@). Always present.
    serviceName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PickupServicesPickupService' with the minimum fields required to make a request.
newPickupServicesPickupService ::
  PickupServicesPickupService
newPickupServicesPickupService =
  PickupServicesPickupService
    { carrierName = Core.Nothing,
      country = Core.Nothing,
      serviceName = Core.Nothing
    }

instance Core.FromJSON PickupServicesPickupService where
  parseJSON =
    Core.withObject
      "PickupServicesPickupService"
      ( \o ->
          PickupServicesPickupService
            Core.<$> (o Core..:? "carrierName")
            Core.<*> (o Core..:? "country")
            Core.<*> (o Core..:? "serviceName")
      )

instance Core.ToJSON PickupServicesPickupService where
  toJSON PickupServicesPickupService {..} =
    Core.object
      ( Core.catMaybes
          [ ("carrierName" Core..=) Core.<$> carrierName,
            ("country" Core..=) Core.<$> country,
            ("serviceName" Core..=) Core.<$> serviceName
          ]
      )

--
-- /See:/ 'newPosCustomBatchRequest' smart constructor.
newtype PosCustomBatchRequest = PosCustomBatchRequest
  { -- | The request entries to be processed in the batch.
    entries :: (Core.Maybe [PosCustomBatchRequestEntry])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PosCustomBatchRequest' with the minimum fields required to make a request.
newPosCustomBatchRequest ::
  PosCustomBatchRequest
newPosCustomBatchRequest = PosCustomBatchRequest {entries = Core.Nothing}

instance Core.FromJSON PosCustomBatchRequest where
  parseJSON =
    Core.withObject
      "PosCustomBatchRequest"
      ( \o ->
          PosCustomBatchRequest
            Core.<$> (o Core..:? "entries" Core..!= Core.mempty)
      )

instance Core.ToJSON PosCustomBatchRequest where
  toJSON PosCustomBatchRequest {..} =
    Core.object
      ( Core.catMaybes
          [("entries" Core..=) Core.<$> entries]
      )

--
-- /See:/ 'newPosCustomBatchRequestEntry' smart constructor.
data PosCustomBatchRequestEntry = PosCustomBatchRequestEntry
  { -- | An entry ID, unique within the batch request.
    batchId :: (Core.Maybe Core.Word32),
    -- | The inventory to submit. This should be set only if the method is @inventory@.
    inventory :: (Core.Maybe PosInventory),
    -- | The ID of the POS data provider.
    merchantId :: (Core.Maybe Core.Word64),
    -- | The method of the batch entry. Acceptable values are: - \"@delete@\" - \"@get@\" - \"@insert@\" - \"@inventory@\" - \"@sale@\"
    method :: (Core.Maybe Core.Text),
    -- | The sale information to submit. This should be set only if the method is @sale@.
    sale :: (Core.Maybe PosSale),
    -- | The store information to submit. This should be set only if the method is @insert@.
    store :: (Core.Maybe PosStore),
    -- | The store code. This should be set only if the method is @delete@ or @get@.
    storeCode :: (Core.Maybe Core.Text),
    -- | The ID of the account for which to get\/submit data.
    targetMerchantId :: (Core.Maybe Core.Word64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PosCustomBatchRequestEntry' with the minimum fields required to make a request.
newPosCustomBatchRequestEntry ::
  PosCustomBatchRequestEntry
newPosCustomBatchRequestEntry =
  PosCustomBatchRequestEntry
    { batchId = Core.Nothing,
      inventory = Core.Nothing,
      merchantId = Core.Nothing,
      method = Core.Nothing,
      sale = Core.Nothing,
      store = Core.Nothing,
      storeCode = Core.Nothing,
      targetMerchantId = Core.Nothing
    }

instance Core.FromJSON PosCustomBatchRequestEntry where
  parseJSON =
    Core.withObject
      "PosCustomBatchRequestEntry"
      ( \o ->
          PosCustomBatchRequestEntry
            Core.<$> (o Core..:? "batchId")
            Core.<*> (o Core..:? "inventory")
            Core.<*> (o Core..:? "merchantId")
            Core.<*> (o Core..:? "method")
            Core.<*> (o Core..:? "sale")
            Core.<*> (o Core..:? "store")
            Core.<*> (o Core..:? "storeCode")
            Core.<*> (o Core..:? "targetMerchantId")
      )

instance Core.ToJSON PosCustomBatchRequestEntry where
  toJSON PosCustomBatchRequestEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchId" Core..=) Core.<$> batchId,
            ("inventory" Core..=) Core.<$> inventory,
            ("merchantId" Core..=) Core.. Core.AsText
              Core.<$> merchantId,
            ("method" Core..=) Core.<$> method,
            ("sale" Core..=) Core.<$> sale,
            ("store" Core..=) Core.<$> store,
            ("storeCode" Core..=) Core.<$> storeCode,
            ("targetMerchantId" Core..=) Core.. Core.AsText
              Core.<$> targetMerchantId
          ]
      )

--
-- /See:/ 'newPosCustomBatchResponse' smart constructor.
data PosCustomBatchResponse = PosCustomBatchResponse
  { -- | The result of the execution of the batch requests.
    entries :: (Core.Maybe [PosCustomBatchResponseEntry]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#posCustomBatchResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PosCustomBatchResponse' with the minimum fields required to make a request.
newPosCustomBatchResponse ::
  PosCustomBatchResponse
newPosCustomBatchResponse =
  PosCustomBatchResponse {entries = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON PosCustomBatchResponse where
  parseJSON =
    Core.withObject
      "PosCustomBatchResponse"
      ( \o ->
          PosCustomBatchResponse
            Core.<$> (o Core..:? "entries" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON PosCustomBatchResponse where
  toJSON PosCustomBatchResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("entries" Core..=) Core.<$> entries,
            ("kind" Core..=) Core.<$> kind
          ]
      )

--
-- /See:/ 'newPosCustomBatchResponseEntry' smart constructor.
data PosCustomBatchResponseEntry = PosCustomBatchResponseEntry
  { -- | The ID of the request entry to which this entry responds.
    batchId :: (Core.Maybe Core.Word32),
    -- | A list of errors defined if, and only if, the request failed.
    errors :: (Core.Maybe Errors),
    -- | The updated inventory information.
    inventory :: (Core.Maybe PosInventory),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#posCustomBatchResponseEntry@\"
    kind :: (Core.Maybe Core.Text),
    -- | The updated sale information.
    sale :: (Core.Maybe PosSale),
    -- | The retrieved or updated store information.
    store :: (Core.Maybe PosStore)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PosCustomBatchResponseEntry' with the minimum fields required to make a request.
newPosCustomBatchResponseEntry ::
  PosCustomBatchResponseEntry
newPosCustomBatchResponseEntry =
  PosCustomBatchResponseEntry
    { batchId = Core.Nothing,
      errors = Core.Nothing,
      inventory = Core.Nothing,
      kind = Core.Nothing,
      sale = Core.Nothing,
      store = Core.Nothing
    }

instance Core.FromJSON PosCustomBatchResponseEntry where
  parseJSON =
    Core.withObject
      "PosCustomBatchResponseEntry"
      ( \o ->
          PosCustomBatchResponseEntry
            Core.<$> (o Core..:? "batchId")
            Core.<*> (o Core..:? "errors")
            Core.<*> (o Core..:? "inventory")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "sale")
            Core.<*> (o Core..:? "store")
      )

instance Core.ToJSON PosCustomBatchResponseEntry where
  toJSON PosCustomBatchResponseEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchId" Core..=) Core.<$> batchId,
            ("errors" Core..=) Core.<$> errors,
            ("inventory" Core..=) Core.<$> inventory,
            ("kind" Core..=) Core.<$> kind,
            ("sale" Core..=) Core.<$> sale,
            ("store" Core..=) Core.<$> store
          ]
      )

--
-- /See:/ 'newPosDataProviders' smart constructor.
data PosDataProviders = PosDataProviders
  { -- | Country code.
    country :: (Core.Maybe Core.Text),
    -- | A list of POS data providers.
    posDataProviders :: (Core.Maybe [PosDataProvidersPosDataProvider])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PosDataProviders' with the minimum fields required to make a request.
newPosDataProviders ::
  PosDataProviders
newPosDataProviders =
  PosDataProviders {country = Core.Nothing, posDataProviders = Core.Nothing}

instance Core.FromJSON PosDataProviders where
  parseJSON =
    Core.withObject
      "PosDataProviders"
      ( \o ->
          PosDataProviders
            Core.<$> (o Core..:? "country")
            Core.<*> (o Core..:? "posDataProviders" Core..!= Core.mempty)
      )

instance Core.ToJSON PosDataProviders where
  toJSON PosDataProviders {..} =
    Core.object
      ( Core.catMaybes
          [ ("country" Core..=) Core.<$> country,
            ("posDataProviders" Core..=)
              Core.<$> posDataProviders
          ]
      )

--
-- /See:/ 'newPosDataProvidersPosDataProvider' smart constructor.
data PosDataProvidersPosDataProvider = PosDataProvidersPosDataProvider
  { -- | The display name of Pos data Provider.
    displayName :: (Core.Maybe Core.Text),
    -- | The full name of this POS data Provider.
    fullName :: (Core.Maybe Core.Text),
    -- | The ID of the account.
    providerId :: (Core.Maybe Core.Word64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PosDataProvidersPosDataProvider' with the minimum fields required to make a request.
newPosDataProvidersPosDataProvider ::
  PosDataProvidersPosDataProvider
newPosDataProvidersPosDataProvider =
  PosDataProvidersPosDataProvider
    { displayName = Core.Nothing,
      fullName = Core.Nothing,
      providerId = Core.Nothing
    }

instance
  Core.FromJSON
    PosDataProvidersPosDataProvider
  where
  parseJSON =
    Core.withObject
      "PosDataProvidersPosDataProvider"
      ( \o ->
          PosDataProvidersPosDataProvider
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "fullName")
            Core.<*> (o Core..:? "providerId")
      )

instance Core.ToJSON PosDataProvidersPosDataProvider where
  toJSON PosDataProvidersPosDataProvider {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("fullName" Core..=) Core.<$> fullName,
            ("providerId" Core..=) Core.. Core.AsText
              Core.<$> providerId
          ]
      )

-- | The absolute quantity of an item available at the given store.
--
-- /See:/ 'newPosInventory' smart constructor.
data PosInventory = PosInventory
  { -- | Required. The two-letter ISO 639-1 language code for the item.
    contentLanguage :: (Core.Maybe Core.Text),
    -- | Global Trade Item Number.
    gtin :: (Core.Maybe Core.Text),
    -- | Required. A unique identifier for the item.
    itemId :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#posInventory@\"
    kind :: (Core.Maybe Core.Text),
    -- | Required. The current price of the item.
    price :: (Core.Maybe Price),
    -- | Required. The available quantity of the item.
    quantity :: (Core.Maybe Core.Int64),
    -- | Required. The identifier of the merchant\'s store. Either a @storeCode@ inserted through the API or the code of the store in a Business Profile.
    storeCode :: (Core.Maybe Core.Text),
    -- | Required. The CLDR territory code for the item.
    targetCountry :: (Core.Maybe Core.Text),
    -- | Required. The inventory timestamp, in ISO 8601 format.
    timestamp :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PosInventory' with the minimum fields required to make a request.
newPosInventory ::
  PosInventory
newPosInventory =
  PosInventory
    { contentLanguage = Core.Nothing,
      gtin = Core.Nothing,
      itemId = Core.Nothing,
      kind = Core.Nothing,
      price = Core.Nothing,
      quantity = Core.Nothing,
      storeCode = Core.Nothing,
      targetCountry = Core.Nothing,
      timestamp = Core.Nothing
    }

instance Core.FromJSON PosInventory where
  parseJSON =
    Core.withObject
      "PosInventory"
      ( \o ->
          PosInventory
            Core.<$> (o Core..:? "contentLanguage")
            Core.<*> (o Core..:? "gtin")
            Core.<*> (o Core..:? "itemId")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "price")
            Core.<*> (o Core..:? "quantity")
            Core.<*> (o Core..:? "storeCode")
            Core.<*> (o Core..:? "targetCountry")
            Core.<*> (o Core..:? "timestamp")
      )

instance Core.ToJSON PosInventory where
  toJSON PosInventory {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentLanguage" Core..=)
              Core.<$> contentLanguage,
            ("gtin" Core..=) Core.<$> gtin,
            ("itemId" Core..=) Core.<$> itemId,
            ("kind" Core..=) Core.<$> kind,
            ("price" Core..=) Core.<$> price,
            ("quantity" Core..=) Core.. Core.AsText
              Core.<$> quantity,
            ("storeCode" Core..=) Core.<$> storeCode,
            ("targetCountry" Core..=) Core.<$> targetCountry,
            ("timestamp" Core..=) Core.<$> timestamp
          ]
      )

--
-- /See:/ 'newPosInventoryRequest' smart constructor.
data PosInventoryRequest = PosInventoryRequest
  { -- | Required. The two-letter ISO 639-1 language code for the item.
    contentLanguage :: (Core.Maybe Core.Text),
    -- | Global Trade Item Number.
    gtin :: (Core.Maybe Core.Text),
    -- | Required. A unique identifier for the item.
    itemId :: (Core.Maybe Core.Text),
    -- | Required. The current price of the item.
    price :: (Core.Maybe Price),
    -- | Required. The available quantity of the item.
    quantity :: (Core.Maybe Core.Int64),
    -- | Required. The identifier of the merchant\'s store. Either a @storeCode@ inserted through the API or the code of the store in a Business Profile.
    storeCode :: (Core.Maybe Core.Text),
    -- | Required. The CLDR territory code for the item.
    targetCountry :: (Core.Maybe Core.Text),
    -- | Required. The inventory timestamp, in ISO 8601 format.
    timestamp :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PosInventoryRequest' with the minimum fields required to make a request.
newPosInventoryRequest ::
  PosInventoryRequest
newPosInventoryRequest =
  PosInventoryRequest
    { contentLanguage = Core.Nothing,
      gtin = Core.Nothing,
      itemId = Core.Nothing,
      price = Core.Nothing,
      quantity = Core.Nothing,
      storeCode = Core.Nothing,
      targetCountry = Core.Nothing,
      timestamp = Core.Nothing
    }

instance Core.FromJSON PosInventoryRequest where
  parseJSON =
    Core.withObject
      "PosInventoryRequest"
      ( \o ->
          PosInventoryRequest
            Core.<$> (o Core..:? "contentLanguage")
            Core.<*> (o Core..:? "gtin")
            Core.<*> (o Core..:? "itemId")
            Core.<*> (o Core..:? "price")
            Core.<*> (o Core..:? "quantity")
            Core.<*> (o Core..:? "storeCode")
            Core.<*> (o Core..:? "targetCountry")
            Core.<*> (o Core..:? "timestamp")
      )

instance Core.ToJSON PosInventoryRequest where
  toJSON PosInventoryRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentLanguage" Core..=)
              Core.<$> contentLanguage,
            ("gtin" Core..=) Core.<$> gtin,
            ("itemId" Core..=) Core.<$> itemId,
            ("price" Core..=) Core.<$> price,
            ("quantity" Core..=) Core.. Core.AsText
              Core.<$> quantity,
            ("storeCode" Core..=) Core.<$> storeCode,
            ("targetCountry" Core..=) Core.<$> targetCountry,
            ("timestamp" Core..=) Core.<$> timestamp
          ]
      )

--
-- /See:/ 'newPosInventoryResponse' smart constructor.
data PosInventoryResponse = PosInventoryResponse
  { -- | Required. The two-letter ISO 639-1 language code for the item.
    contentLanguage :: (Core.Maybe Core.Text),
    -- | Global Trade Item Number.
    gtin :: (Core.Maybe Core.Text),
    -- | Required. A unique identifier for the item.
    itemId :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#posInventoryResponse@\".
    kind :: (Core.Maybe Core.Text),
    -- | Required. The current price of the item.
    price :: (Core.Maybe Price),
    -- | Required. The available quantity of the item.
    quantity :: (Core.Maybe Core.Int64),
    -- | Required. The identifier of the merchant\'s store. Either a @storeCode@ inserted through the API or the code of the store in a Business Profile.
    storeCode :: (Core.Maybe Core.Text),
    -- | Required. The CLDR territory code for the item.
    targetCountry :: (Core.Maybe Core.Text),
    -- | Required. The inventory timestamp, in ISO 8601 format.
    timestamp :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PosInventoryResponse' with the minimum fields required to make a request.
newPosInventoryResponse ::
  PosInventoryResponse
newPosInventoryResponse =
  PosInventoryResponse
    { contentLanguage = Core.Nothing,
      gtin = Core.Nothing,
      itemId = Core.Nothing,
      kind = Core.Nothing,
      price = Core.Nothing,
      quantity = Core.Nothing,
      storeCode = Core.Nothing,
      targetCountry = Core.Nothing,
      timestamp = Core.Nothing
    }

instance Core.FromJSON PosInventoryResponse where
  parseJSON =
    Core.withObject
      "PosInventoryResponse"
      ( \o ->
          PosInventoryResponse
            Core.<$> (o Core..:? "contentLanguage")
            Core.<*> (o Core..:? "gtin")
            Core.<*> (o Core..:? "itemId")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "price")
            Core.<*> (o Core..:? "quantity")
            Core.<*> (o Core..:? "storeCode")
            Core.<*> (o Core..:? "targetCountry")
            Core.<*> (o Core..:? "timestamp")
      )

instance Core.ToJSON PosInventoryResponse where
  toJSON PosInventoryResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentLanguage" Core..=)
              Core.<$> contentLanguage,
            ("gtin" Core..=) Core.<$> gtin,
            ("itemId" Core..=) Core.<$> itemId,
            ("kind" Core..=) Core.<$> kind,
            ("price" Core..=) Core.<$> price,
            ("quantity" Core..=) Core.. Core.AsText
              Core.<$> quantity,
            ("storeCode" Core..=) Core.<$> storeCode,
            ("targetCountry" Core..=) Core.<$> targetCountry,
            ("timestamp" Core..=) Core.<$> timestamp
          ]
      )

--
-- /See:/ 'newPosListResponse' smart constructor.
data PosListResponse = PosListResponse
  { -- | Identifies what kind of resource this is. Value: the fixed string \"@content#posListResponse@\".
    kind :: (Core.Maybe Core.Text),
    -- |
    resources :: (Core.Maybe [PosStore])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PosListResponse' with the minimum fields required to make a request.
newPosListResponse ::
  PosListResponse
newPosListResponse =
  PosListResponse {kind = Core.Nothing, resources = Core.Nothing}

instance Core.FromJSON PosListResponse where
  parseJSON =
    Core.withObject
      "PosListResponse"
      ( \o ->
          PosListResponse
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "resources" Core..!= Core.mempty)
      )

instance Core.ToJSON PosListResponse where
  toJSON PosListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("resources" Core..=) Core.<$> resources
          ]
      )

-- | The change of the available quantity of an item at the given store.
--
-- /See:/ 'newPosSale' smart constructor.
data PosSale = PosSale
  { -- | Required. The two-letter ISO 639-1 language code for the item.
    contentLanguage :: (Core.Maybe Core.Text),
    -- | Global Trade Item Number.
    gtin :: (Core.Maybe Core.Text),
    -- | Required. A unique identifier for the item.
    itemId :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#posSale@\"
    kind :: (Core.Maybe Core.Text),
    -- | Required. The price of the item.
    price :: (Core.Maybe Price),
    -- | Required. The relative change of the available quantity. Negative for items returned.
    quantity :: (Core.Maybe Core.Int64),
    -- | A unique ID to group items from the same sale event.
    saleId :: (Core.Maybe Core.Text),
    -- | Required. The identifier of the merchant\'s store. Either a @storeCode@ inserted through the API or the code of the store in a Business Profile.
    storeCode :: (Core.Maybe Core.Text),
    -- | Required. The CLDR territory code for the item.
    targetCountry :: (Core.Maybe Core.Text),
    -- | Required. The inventory timestamp, in ISO 8601 format.
    timestamp :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PosSale' with the minimum fields required to make a request.
newPosSale ::
  PosSale
newPosSale =
  PosSale
    { contentLanguage = Core.Nothing,
      gtin = Core.Nothing,
      itemId = Core.Nothing,
      kind = Core.Nothing,
      price = Core.Nothing,
      quantity = Core.Nothing,
      saleId = Core.Nothing,
      storeCode = Core.Nothing,
      targetCountry = Core.Nothing,
      timestamp = Core.Nothing
    }

instance Core.FromJSON PosSale where
  parseJSON =
    Core.withObject
      "PosSale"
      ( \o ->
          PosSale
            Core.<$> (o Core..:? "contentLanguage")
            Core.<*> (o Core..:? "gtin")
            Core.<*> (o Core..:? "itemId")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "price")
            Core.<*> (o Core..:? "quantity")
            Core.<*> (o Core..:? "saleId")
            Core.<*> (o Core..:? "storeCode")
            Core.<*> (o Core..:? "targetCountry")
            Core.<*> (o Core..:? "timestamp")
      )

instance Core.ToJSON PosSale where
  toJSON PosSale {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentLanguage" Core..=)
              Core.<$> contentLanguage,
            ("gtin" Core..=) Core.<$> gtin,
            ("itemId" Core..=) Core.<$> itemId,
            ("kind" Core..=) Core.<$> kind,
            ("price" Core..=) Core.<$> price,
            ("quantity" Core..=) Core.. Core.AsText
              Core.<$> quantity,
            ("saleId" Core..=) Core.<$> saleId,
            ("storeCode" Core..=) Core.<$> storeCode,
            ("targetCountry" Core..=) Core.<$> targetCountry,
            ("timestamp" Core..=) Core.<$> timestamp
          ]
      )

--
-- /See:/ 'newPosSaleRequest' smart constructor.
data PosSaleRequest = PosSaleRequest
  { -- | Required. The two-letter ISO 639-1 language code for the item.
    contentLanguage :: (Core.Maybe Core.Text),
    -- | Global Trade Item Number.
    gtin :: (Core.Maybe Core.Text),
    -- | Required. A unique identifier for the item.
    itemId :: (Core.Maybe Core.Text),
    -- | Required. The price of the item.
    price :: (Core.Maybe Price),
    -- | Required. The relative change of the available quantity. Negative for items returned.
    quantity :: (Core.Maybe Core.Int64),
    -- | A unique ID to group items from the same sale event.
    saleId :: (Core.Maybe Core.Text),
    -- | Required. The identifier of the merchant\'s store. Either a @storeCode@ inserted through the API or the code of the store in a Business Profile.
    storeCode :: (Core.Maybe Core.Text),
    -- | Required. The CLDR territory code for the item.
    targetCountry :: (Core.Maybe Core.Text),
    -- | Required. The inventory timestamp, in ISO 8601 format.
    timestamp :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PosSaleRequest' with the minimum fields required to make a request.
newPosSaleRequest ::
  PosSaleRequest
newPosSaleRequest =
  PosSaleRequest
    { contentLanguage = Core.Nothing,
      gtin = Core.Nothing,
      itemId = Core.Nothing,
      price = Core.Nothing,
      quantity = Core.Nothing,
      saleId = Core.Nothing,
      storeCode = Core.Nothing,
      targetCountry = Core.Nothing,
      timestamp = Core.Nothing
    }

instance Core.FromJSON PosSaleRequest where
  parseJSON =
    Core.withObject
      "PosSaleRequest"
      ( \o ->
          PosSaleRequest
            Core.<$> (o Core..:? "contentLanguage")
            Core.<*> (o Core..:? "gtin")
            Core.<*> (o Core..:? "itemId")
            Core.<*> (o Core..:? "price")
            Core.<*> (o Core..:? "quantity")
            Core.<*> (o Core..:? "saleId")
            Core.<*> (o Core..:? "storeCode")
            Core.<*> (o Core..:? "targetCountry")
            Core.<*> (o Core..:? "timestamp")
      )

instance Core.ToJSON PosSaleRequest where
  toJSON PosSaleRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentLanguage" Core..=)
              Core.<$> contentLanguage,
            ("gtin" Core..=) Core.<$> gtin,
            ("itemId" Core..=) Core.<$> itemId,
            ("price" Core..=) Core.<$> price,
            ("quantity" Core..=) Core.. Core.AsText
              Core.<$> quantity,
            ("saleId" Core..=) Core.<$> saleId,
            ("storeCode" Core..=) Core.<$> storeCode,
            ("targetCountry" Core..=) Core.<$> targetCountry,
            ("timestamp" Core..=) Core.<$> timestamp
          ]
      )

--
-- /See:/ 'newPosSaleResponse' smart constructor.
data PosSaleResponse = PosSaleResponse
  { -- | Required. The two-letter ISO 639-1 language code for the item.
    contentLanguage :: (Core.Maybe Core.Text),
    -- | Global Trade Item Number.
    gtin :: (Core.Maybe Core.Text),
    -- | Required. A unique identifier for the item.
    itemId :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#posSaleResponse@\".
    kind :: (Core.Maybe Core.Text),
    -- | Required. The price of the item.
    price :: (Core.Maybe Price),
    -- | Required. The relative change of the available quantity. Negative for items returned.
    quantity :: (Core.Maybe Core.Int64),
    -- | A unique ID to group items from the same sale event.
    saleId :: (Core.Maybe Core.Text),
    -- | Required. The identifier of the merchant\'s store. Either a @storeCode@ inserted through the API or the code of the store in a Business Profile.
    storeCode :: (Core.Maybe Core.Text),
    -- | Required. The CLDR territory code for the item.
    targetCountry :: (Core.Maybe Core.Text),
    -- | Required. The inventory timestamp, in ISO 8601 format.
    timestamp :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PosSaleResponse' with the minimum fields required to make a request.
newPosSaleResponse ::
  PosSaleResponse
newPosSaleResponse =
  PosSaleResponse
    { contentLanguage = Core.Nothing,
      gtin = Core.Nothing,
      itemId = Core.Nothing,
      kind = Core.Nothing,
      price = Core.Nothing,
      quantity = Core.Nothing,
      saleId = Core.Nothing,
      storeCode = Core.Nothing,
      targetCountry = Core.Nothing,
      timestamp = Core.Nothing
    }

instance Core.FromJSON PosSaleResponse where
  parseJSON =
    Core.withObject
      "PosSaleResponse"
      ( \o ->
          PosSaleResponse
            Core.<$> (o Core..:? "contentLanguage")
            Core.<*> (o Core..:? "gtin")
            Core.<*> (o Core..:? "itemId")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "price")
            Core.<*> (o Core..:? "quantity")
            Core.<*> (o Core..:? "saleId")
            Core.<*> (o Core..:? "storeCode")
            Core.<*> (o Core..:? "targetCountry")
            Core.<*> (o Core..:? "timestamp")
      )

instance Core.ToJSON PosSaleResponse where
  toJSON PosSaleResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentLanguage" Core..=)
              Core.<$> contentLanguage,
            ("gtin" Core..=) Core.<$> gtin,
            ("itemId" Core..=) Core.<$> itemId,
            ("kind" Core..=) Core.<$> kind,
            ("price" Core..=) Core.<$> price,
            ("quantity" Core..=) Core.. Core.AsText
              Core.<$> quantity,
            ("saleId" Core..=) Core.<$> saleId,
            ("storeCode" Core..=) Core.<$> storeCode,
            ("targetCountry" Core..=) Core.<$> targetCountry,
            ("timestamp" Core..=) Core.<$> timestamp
          ]
      )

-- | Store resource.
--
-- /See:/ 'newPosStore' smart constructor.
data PosStore = PosStore
  { -- | The business type of the store.
    gcidCategory :: (Core.Maybe [Core.Text]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#posStore@\"
    kind :: (Core.Maybe Core.Text),
    -- | The store phone number.
    phoneNumber :: (Core.Maybe Core.Text),
    -- | The Google Place Id of the store location.
    placeId :: (Core.Maybe Core.Text),
    -- | Required. The street address of the store.
    storeAddress :: (Core.Maybe Core.Text),
    -- | Required. A store identifier that is unique for the given merchant.
    storeCode :: (Core.Maybe Core.Text),
    -- | The merchant or store name.
    storeName :: (Core.Maybe Core.Text),
    -- | The website url for the store or merchant.
    websiteUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PosStore' with the minimum fields required to make a request.
newPosStore ::
  PosStore
newPosStore =
  PosStore
    { gcidCategory = Core.Nothing,
      kind = Core.Nothing,
      phoneNumber = Core.Nothing,
      placeId = Core.Nothing,
      storeAddress = Core.Nothing,
      storeCode = Core.Nothing,
      storeName = Core.Nothing,
      websiteUrl = Core.Nothing
    }

instance Core.FromJSON PosStore where
  parseJSON =
    Core.withObject
      "PosStore"
      ( \o ->
          PosStore
            Core.<$> (o Core..:? "gcidCategory" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "phoneNumber")
            Core.<*> (o Core..:? "placeId")
            Core.<*> (o Core..:? "storeAddress")
            Core.<*> (o Core..:? "storeCode")
            Core.<*> (o Core..:? "storeName")
            Core.<*> (o Core..:? "websiteUrl")
      )

instance Core.ToJSON PosStore where
  toJSON PosStore {..} =
    Core.object
      ( Core.catMaybes
          [ ("gcidCategory" Core..=) Core.<$> gcidCategory,
            ("kind" Core..=) Core.<$> kind,
            ("phoneNumber" Core..=) Core.<$> phoneNumber,
            ("placeId" Core..=) Core.<$> placeId,
            ("storeAddress" Core..=) Core.<$> storeAddress,
            ("storeCode" Core..=) Core.<$> storeCode,
            ("storeName" Core..=) Core.<$> storeName,
            ("websiteUrl" Core..=) Core.<$> websiteUrl
          ]
      )

--
-- /See:/ 'newPostalCodeGroup' smart constructor.
data PostalCodeGroup = PostalCodeGroup
  { -- | The CLDR territory code of the country the postal code group applies to. Required.
    country :: (Core.Maybe Core.Text),
    -- | The name of the postal code group, referred to in headers. Required.
    name :: (Core.Maybe Core.Text),
    -- | A range of postal codes. Required.
    postalCodeRanges :: (Core.Maybe [PostalCodeRange])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PostalCodeGroup' with the minimum fields required to make a request.
newPostalCodeGroup ::
  PostalCodeGroup
newPostalCodeGroup =
  PostalCodeGroup
    { country = Core.Nothing,
      name = Core.Nothing,
      postalCodeRanges = Core.Nothing
    }

instance Core.FromJSON PostalCodeGroup where
  parseJSON =
    Core.withObject
      "PostalCodeGroup"
      ( \o ->
          PostalCodeGroup
            Core.<$> (o Core..:? "country")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "postalCodeRanges" Core..!= Core.mempty)
      )

instance Core.ToJSON PostalCodeGroup where
  toJSON PostalCodeGroup {..} =
    Core.object
      ( Core.catMaybes
          [ ("country" Core..=) Core.<$> country,
            ("name" Core..=) Core.<$> name,
            ("postalCodeRanges" Core..=)
              Core.<$> postalCodeRanges
          ]
      )

--
-- /See:/ 'newPostalCodeRange' smart constructor.
data PostalCodeRange = PostalCodeRange
  { -- | A postal code or a pattern of the form @prefix*@ denoting the inclusive lower bound of the range defining the area. Examples values: @\"94108\"@, @\"9410*\"@, @\"9*\"@. Required.
    postalCodeRangeBegin :: (Core.Maybe Core.Text),
    -- | A postal code or a pattern of the form @prefix*@ denoting the inclusive upper bound of the range defining the area. It must have the same length as @postalCodeRangeBegin@: if @postalCodeRangeBegin@ is a postal code then @postalCodeRangeEnd@ must be a postal code too; if @postalCodeRangeBegin@ is a pattern then @postalCodeRangeEnd@ must be a pattern with the same prefix length. Optional: if not set, then the area is defined as being all the postal codes matching @postalCodeRangeBegin@.
    postalCodeRangeEnd :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PostalCodeRange' with the minimum fields required to make a request.
newPostalCodeRange ::
  PostalCodeRange
newPostalCodeRange =
  PostalCodeRange
    { postalCodeRangeBegin = Core.Nothing,
      postalCodeRangeEnd = Core.Nothing
    }

instance Core.FromJSON PostalCodeRange where
  parseJSON =
    Core.withObject
      "PostalCodeRange"
      ( \o ->
          PostalCodeRange
            Core.<$> (o Core..:? "postalCodeRangeBegin")
            Core.<*> (o Core..:? "postalCodeRangeEnd")
      )

instance Core.ToJSON PostalCodeRange where
  toJSON PostalCodeRange {..} =
    Core.object
      ( Core.catMaybes
          [ ("postalCodeRangeBegin" Core..=)
              Core.<$> postalCodeRangeBegin,
            ("postalCodeRangeEnd" Core..=)
              Core.<$> postalCodeRangeEnd
          ]
      )

--
-- /See:/ 'newPrice' smart constructor.
data Price = Price
  { -- | The currency of the price.
    currency :: (Core.Maybe Core.Text),
    -- | The price represented as a number.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Price' with the minimum fields required to make a request.
newPrice ::
  Price
newPrice = Price {currency = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON Price where
  parseJSON =
    Core.withObject
      "Price"
      ( \o ->
          Price
            Core.<$> (o Core..:? "currency")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON Price where
  toJSON Price {..} =
    Core.object
      ( Core.catMaybes
          [ ("currency" Core..=) Core.<$> currency,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | The price represented as a number and currency.
--
-- /See:/ 'newPriceAmount' smart constructor.
data PriceAmount = PriceAmount
  { -- | The currency of the price.
    currency :: (Core.Maybe Core.Text),
    -- | The price represented as a number.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PriceAmount' with the minimum fields required to make a request.
newPriceAmount ::
  PriceAmount
newPriceAmount = PriceAmount {currency = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON PriceAmount where
  parseJSON =
    Core.withObject
      "PriceAmount"
      ( \o ->
          PriceAmount
            Core.<$> (o Core..:? "currency")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON PriceAmount where
  toJSON PriceAmount {..} =
    Core.object
      ( Core.catMaybes
          [ ("currency" Core..=) Core.<$> currency,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | Required product attributes are primarily defined by the products data specification. See the Products Data Specification Help Center article for information. Product data. After inserting, updating, or deleting a product, it may take several minutes before changes take effect.
--
-- /See:/ 'newProduct' smart constructor.
data Product = Product
  { -- | Additional URLs of images of the item.
    additionalImageLinks :: (Core.Maybe [Core.Text]),
    -- | Additional cut of the item. Used together with size_type to represent combined size types for apparel items.
    additionalSizeType :: (Core.Maybe Core.Text),
    -- | Used to group items in an arbitrary way. Only for CPA%, discouraged otherwise.
    adsGrouping :: (Core.Maybe Core.Text),
    -- | Similar to ads_grouping, but only works on CPC.
    adsLabels :: (Core.Maybe [Core.Text]),
    -- | Allows advertisers to override the item URL when the product is shown within the context of Product Ads.
    adsRedirect :: (Core.Maybe Core.Text),
    -- | Should be set to true if the item is targeted towards adults.
    adult :: (Core.Maybe Core.Bool),
    -- | Target age group of the item.
    ageGroup :: (Core.Maybe Core.Text),
    -- | Availability status of the item.
    availability :: (Core.Maybe Core.Text),
    -- | The day a pre-ordered product becomes available for delivery, in ISO 8601 format.
    availabilityDate :: (Core.Maybe Core.Text),
    -- | Brand of the item.
    brand :: (Core.Maybe Core.Text),
    -- | URL for the canonical version of your item\'s landing page.
    canonicalLink :: (Core.Maybe Core.Text),
    -- | Required. The item\'s channel (online or local). Acceptable values are: - \"@local@\" - \"@online@\"
    channel :: (Core.Maybe Core.Text),
    -- | Color of the item.
    color :: (Core.Maybe Core.Text),
    -- | Condition or state of the item.
    condition :: (Core.Maybe Core.Text),
    -- | Required. The two-letter ISO 639-1 language code for the item.
    contentLanguage :: (Core.Maybe Core.Text),
    -- | Cost of goods sold. Used for gross profit reporting.
    costOfGoodsSold :: (Core.Maybe Price),
    -- | A list of custom (merchant-provided) attributes. It can also be used for submitting any attribute of the feed specification in its generic form (for example, @{ \"name\": \"size type\", \"value\": \"regular\" }@). This is useful for submitting attributes not explicitly exposed by the API, such as additional attributes used for Buy on Google (formerly known as Shopping Actions).
    customAttributes :: (Core.Maybe [CustomAttribute]),
    -- | Custom label 0 for custom grouping of items in a Shopping campaign.
    customLabel0 :: (Core.Maybe Core.Text),
    -- | Custom label 1 for custom grouping of items in a Shopping campaign.
    customLabel1 :: (Core.Maybe Core.Text),
    -- | Custom label 2 for custom grouping of items in a Shopping campaign.
    customLabel2 :: (Core.Maybe Core.Text),
    -- | Custom label 3 for custom grouping of items in a Shopping campaign.
    customLabel3 :: (Core.Maybe Core.Text),
    -- | Custom label 4 for custom grouping of items in a Shopping campaign.
    customLabel4 :: (Core.Maybe Core.Text),
    -- | Description of the item.
    description :: (Core.Maybe Core.Text),
    -- | An identifier for an item for dynamic remarketing campaigns.
    displayAdsId :: (Core.Maybe Core.Text),
    -- | URL directly to your item\'s landing page for dynamic remarketing campaigns.
    displayAdsLink :: (Core.Maybe Core.Text),
    -- | Advertiser-specified recommendations.
    displayAdsSimilarIds :: (Core.Maybe [Core.Text]),
    -- | Title of an item for dynamic remarketing campaigns.
    displayAdsTitle :: (Core.Maybe Core.Text),
    -- | Offer margin for dynamic remarketing campaigns.
    displayAdsValue :: (Core.Maybe Core.Double),
    -- | The energy efficiency class as defined in EU directive 2010\/30\/EU.
    energyEfficiencyClass :: (Core.Maybe Core.Text),
    -- | The list of destinations to exclude for this target (corresponds to cleared check boxes in Merchant Center).
    excludedDestinations :: (Core.Maybe [Core.Text]),
    -- | Date on which the item should expire, as specified upon insertion, in ISO 8601 format. The actual expiration date in Google Shopping is exposed in @productstatuses@ as @googleExpirationDate@ and might be earlier if @expirationDate@ is too far in the future.
    expirationDate :: (Core.Maybe Core.Text),
    -- | Target gender of the item.
    gender :: (Core.Maybe Core.Text),
    -- | Google\'s category of the item (see <https://support.google.com/merchants/answer/1705911 Google product taxonomy>). When querying products, this field will contain the user provided value. There is currently no way to get back the auto assigned google product categories through the API.
    googleProductCategory :: (Core.Maybe Core.Text),
    -- | Global Trade Item Number (GTIN) of the item.
    gtin :: (Core.Maybe Core.Text),
    -- | The REST ID of the product. Content API methods that operate on products take this as their @productId@ parameter. The REST ID for a product is of the form channel:contentLanguage: targetCountry: offerId.
    id :: (Core.Maybe Core.Text),
    -- | False when the item does not have unique product identifiers appropriate to its category, such as GTIN, MPN, and brand. Required according to the Unique Product Identifier Rules for all target countries except for Canada.
    identifierExists :: (Core.Maybe Core.Bool),
    -- | URL of an image of the item.
    imageLink :: (Core.Maybe Core.Text),
    -- | The list of destinations to include for this target (corresponds to checked check boxes in Merchant Center). Default destinations are always included unless provided in @excludedDestinations@.
    includedDestinations :: (Core.Maybe [Core.Text]),
    -- | Number and amount of installments to pay for an item.
    installment :: (Core.Maybe Installment),
    -- | Whether the item is a merchant-defined bundle. A bundle is a custom grouping of different products sold by a merchant for a single price.
    isBundle :: (Core.Maybe Core.Bool),
    -- | Shared identifier for all variants of the same product.
    itemGroupId :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#product@\"
    kind :: (Core.Maybe Core.Text),
    -- | URL directly linking to your item\'s page on your website.
    link :: (Core.Maybe Core.Text),
    -- | URL template for merchant hosted local storefront.
    linkTemplate :: (Core.Maybe Core.Text),
    -- | Loyalty points that users receive after purchasing the item. Japan only.
    loyaltyPoints :: (Core.Maybe LoyaltyPoints),
    -- | The material of which the item is made.
    material :: (Core.Maybe Core.Text),
    -- | The energy efficiency class as defined in EU directive 2010\/30\/EU.
    maxEnergyEfficiencyClass :: (Core.Maybe Core.Text),
    -- | Maximal product handling time (in business days).
    maxHandlingTime :: (Core.Maybe Core.Int64),
    -- | The energy efficiency class as defined in EU directive 2010\/30\/EU.
    minEnergyEfficiencyClass :: (Core.Maybe Core.Text),
    -- | Minimal product handling time (in business days).
    minHandlingTime :: (Core.Maybe Core.Int64),
    -- | URL for the mobile-optimized version of your item\'s landing page.
    mobileLink :: (Core.Maybe Core.Text),
    -- | URL template for merchant hosted local storefront optimized for mobile devices.
    mobileLinkTemplate :: (Core.Maybe Core.Text),
    -- | Manufacturer Part Number (MPN) of the item.
    mpn :: (Core.Maybe Core.Text),
    -- | The number of identical products in a merchant-defined multipack.
    multipack :: (Core.Maybe Core.Int64),
    -- | Required. A unique identifier for the item. Leading and trailing whitespaces are stripped and multiple whitespaces are replaced by a single whitespace upon submission. Only valid unicode characters are accepted. See the products feed specification for details. /Note:/ Content API methods that operate on products take the REST ID of the product, /not/ this identifier.
    offerId :: (Core.Maybe Core.Text),
    -- | The item\'s pattern (for example, polka dots).
    pattern' :: (Core.Maybe Core.Text),
    -- | The pick up option for the item. Acceptable values are: - \"@buy@\" - \"@reserve@\" - \"@ship to store@\" - \"@not supported@\"
    pickupMethod :: (Core.Maybe Core.Text),
    -- | Item store pickup timeline. Acceptable values are: - \"@same day@\" - \"@next day@\" - \"@2-day@\" - \"@3-day@\" - \"@4-day@\" - \"@5-day@\" - \"@6-day@\" - \"@7-day@\" - \"@multi-week@\"
    pickupSla :: (Core.Maybe Core.Text),
    -- | Price of the item.
    price :: (Core.Maybe Price),
    -- | Technical specification or additional product details.
    productDetails :: (Core.Maybe [ProductProductDetail]),
    -- | The height of the product in the units provided. The value must be between 0 (exclusive) and 3000 (inclusive).
    productHeight :: (Core.Maybe ProductDimension),
    -- | Bullet points describing the most relevant highlights of a product.
    productHighlights :: (Core.Maybe [Core.Text]),
    -- | The length of the product in the units provided. The value must be between 0 (exclusive) and 3000 (inclusive).
    productLength :: (Core.Maybe ProductDimension),
    -- | Categories of the item (formatted as in products data specification).
    productTypes :: (Core.Maybe [Core.Text]),
    -- | The weight of the product in the units provided. The value must be between 0 (exclusive) and 2000 (inclusive).
    productWeight :: (Core.Maybe ProductWeight),
    -- | The width of the product in the units provided. The value must be between 0 (exclusive) and 3000 (inclusive).
    productWidth :: (Core.Maybe ProductDimension),
    -- | The unique ID of a promotion.
    promotionIds :: (Core.Maybe [Core.Text]),
    -- | Advertised sale price of the item.
    salePrice :: (Core.Maybe Price),
    -- | Date range during which the item is on sale (see products data specification ).
    salePriceEffectiveDate :: (Core.Maybe Core.Text),
    -- | The quantity of the product that is available for selling on Google. Supported only for online products.
    sellOnGoogleQuantity :: (Core.Maybe Core.Int64),
    -- | Shipping rules.
    shipping :: (Core.Maybe [ProductShipping]),
    -- | Height of the item for shipping.
    shippingHeight :: (Core.Maybe ProductShippingDimension),
    -- | The shipping label of the product, used to group product in account-level shipping rules.
    shippingLabel :: (Core.Maybe Core.Text),
    -- | Length of the item for shipping.
    shippingLength :: (Core.Maybe ProductShippingDimension),
    -- | Weight of the item for shipping.
    shippingWeight :: (Core.Maybe ProductShippingWeight),
    -- | Width of the item for shipping.
    shippingWidth :: (Core.Maybe ProductShippingDimension),
    -- | List of country codes (ISO 3166-1 alpha-2) to exclude the offer from Shopping Ads destination. Countries from this list are removed from countries configured in MC feed settings.
    shoppingAdsExcludedCountries :: (Core.Maybe [Core.Text]),
    -- | System in which the size is specified. Recommended for apparel items.
    sizeSystem :: (Core.Maybe Core.Text),
    -- | The cut of the item. Recommended for apparel items.
    sizeType :: (Core.Maybe Core.Text),
    -- | Size of the item. Only one value is allowed. For variants with different sizes, insert a separate product for each size with the same @itemGroupId@ value (see size definition).
    sizes :: (Core.Maybe [Core.Text]),
    -- | The source of the offer, that is, how the offer was created. Acceptable values are: - \"@api@\" - \"@crawl@\" - \"@feed@\"
    source :: (Core.Maybe Core.Text),
    -- | Number of periods (months or years) and amount of payment per period for an item with an associated subscription contract.
    subscriptionCost :: (Core.Maybe ProductSubscriptionCost),
    -- | Required. The CLDR territory code for the item.
    targetCountry :: (Core.Maybe Core.Text),
    -- | The tax category of the product, used to configure detailed tax nexus in account-level tax settings.
    taxCategory :: (Core.Maybe Core.Text),
    -- | Tax information.
    taxes :: (Core.Maybe [ProductTax]),
    -- | Title of the item.
    title :: (Core.Maybe Core.Text),
    -- | The transit time label of the product, used to group product in account-level transit time tables.
    transitTimeLabel :: (Core.Maybe Core.Text),
    -- | The preference of the denominator of the unit price.
    unitPricingBaseMeasure :: (Core.Maybe ProductUnitPricingBaseMeasure),
    -- | The measure and dimension of an item.
    unitPricingMeasure :: (Core.Maybe ProductUnitPricingMeasure)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Product' with the minimum fields required to make a request.
newProduct ::
  Product
newProduct =
  Product
    { additionalImageLinks = Core.Nothing,
      additionalSizeType = Core.Nothing,
      adsGrouping = Core.Nothing,
      adsLabels = Core.Nothing,
      adsRedirect = Core.Nothing,
      adult = Core.Nothing,
      ageGroup = Core.Nothing,
      availability = Core.Nothing,
      availabilityDate = Core.Nothing,
      brand = Core.Nothing,
      canonicalLink = Core.Nothing,
      channel = Core.Nothing,
      color = Core.Nothing,
      condition = Core.Nothing,
      contentLanguage = Core.Nothing,
      costOfGoodsSold = Core.Nothing,
      customAttributes = Core.Nothing,
      customLabel0 = Core.Nothing,
      customLabel1 = Core.Nothing,
      customLabel2 = Core.Nothing,
      customLabel3 = Core.Nothing,
      customLabel4 = Core.Nothing,
      description = Core.Nothing,
      displayAdsId = Core.Nothing,
      displayAdsLink = Core.Nothing,
      displayAdsSimilarIds = Core.Nothing,
      displayAdsTitle = Core.Nothing,
      displayAdsValue = Core.Nothing,
      energyEfficiencyClass = Core.Nothing,
      excludedDestinations = Core.Nothing,
      expirationDate = Core.Nothing,
      gender = Core.Nothing,
      googleProductCategory = Core.Nothing,
      gtin = Core.Nothing,
      id = Core.Nothing,
      identifierExists = Core.Nothing,
      imageLink = Core.Nothing,
      includedDestinations = Core.Nothing,
      installment = Core.Nothing,
      isBundle = Core.Nothing,
      itemGroupId = Core.Nothing,
      kind = Core.Nothing,
      link = Core.Nothing,
      linkTemplate = Core.Nothing,
      loyaltyPoints = Core.Nothing,
      material = Core.Nothing,
      maxEnergyEfficiencyClass = Core.Nothing,
      maxHandlingTime = Core.Nothing,
      minEnergyEfficiencyClass = Core.Nothing,
      minHandlingTime = Core.Nothing,
      mobileLink = Core.Nothing,
      mobileLinkTemplate = Core.Nothing,
      mpn = Core.Nothing,
      multipack = Core.Nothing,
      offerId = Core.Nothing,
      pattern' = Core.Nothing,
      pickupMethod = Core.Nothing,
      pickupSla = Core.Nothing,
      price = Core.Nothing,
      productDetails = Core.Nothing,
      productHeight = Core.Nothing,
      productHighlights = Core.Nothing,
      productLength = Core.Nothing,
      productTypes = Core.Nothing,
      productWeight = Core.Nothing,
      productWidth = Core.Nothing,
      promotionIds = Core.Nothing,
      salePrice = Core.Nothing,
      salePriceEffectiveDate = Core.Nothing,
      sellOnGoogleQuantity = Core.Nothing,
      shipping = Core.Nothing,
      shippingHeight = Core.Nothing,
      shippingLabel = Core.Nothing,
      shippingLength = Core.Nothing,
      shippingWeight = Core.Nothing,
      shippingWidth = Core.Nothing,
      shoppingAdsExcludedCountries = Core.Nothing,
      sizeSystem = Core.Nothing,
      sizeType = Core.Nothing,
      sizes = Core.Nothing,
      source = Core.Nothing,
      subscriptionCost = Core.Nothing,
      targetCountry = Core.Nothing,
      taxCategory = Core.Nothing,
      taxes = Core.Nothing,
      title = Core.Nothing,
      transitTimeLabel = Core.Nothing,
      unitPricingBaseMeasure = Core.Nothing,
      unitPricingMeasure = Core.Nothing
    }

instance Core.FromJSON Product where
  parseJSON =
    Core.withObject
      "Product"
      ( \o ->
          Product
            Core.<$> ( o Core..:? "additionalImageLinks"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "additionalSizeType")
            Core.<*> (o Core..:? "adsGrouping")
            Core.<*> (o Core..:? "adsLabels" Core..!= Core.mempty)
            Core.<*> (o Core..:? "adsRedirect")
            Core.<*> (o Core..:? "adult")
            Core.<*> (o Core..:? "ageGroup")
            Core.<*> (o Core..:? "availability")
            Core.<*> (o Core..:? "availabilityDate")
            Core.<*> (o Core..:? "brand")
            Core.<*> (o Core..:? "canonicalLink")
            Core.<*> (o Core..:? "channel")
            Core.<*> (o Core..:? "color")
            Core.<*> (o Core..:? "condition")
            Core.<*> (o Core..:? "contentLanguage")
            Core.<*> (o Core..:? "costOfGoodsSold")
            Core.<*> (o Core..:? "customAttributes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "customLabel0")
            Core.<*> (o Core..:? "customLabel1")
            Core.<*> (o Core..:? "customLabel2")
            Core.<*> (o Core..:? "customLabel3")
            Core.<*> (o Core..:? "customLabel4")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "displayAdsId")
            Core.<*> (o Core..:? "displayAdsLink")
            Core.<*> ( o Core..:? "displayAdsSimilarIds"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "displayAdsTitle")
            Core.<*> (o Core..:? "displayAdsValue")
            Core.<*> (o Core..:? "energyEfficiencyClass")
            Core.<*> ( o Core..:? "excludedDestinations"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "expirationDate")
            Core.<*> (o Core..:? "gender")
            Core.<*> (o Core..:? "googleProductCategory")
            Core.<*> (o Core..:? "gtin")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "identifierExists")
            Core.<*> (o Core..:? "imageLink")
            Core.<*> ( o Core..:? "includedDestinations"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "installment")
            Core.<*> (o Core..:? "isBundle")
            Core.<*> (o Core..:? "itemGroupId")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "link")
            Core.<*> (o Core..:? "linkTemplate")
            Core.<*> (o Core..:? "loyaltyPoints")
            Core.<*> (o Core..:? "material")
            Core.<*> (o Core..:? "maxEnergyEfficiencyClass")
            Core.<*> (o Core..:? "maxHandlingTime")
            Core.<*> (o Core..:? "minEnergyEfficiencyClass")
            Core.<*> (o Core..:? "minHandlingTime")
            Core.<*> (o Core..:? "mobileLink")
            Core.<*> (o Core..:? "mobileLinkTemplate")
            Core.<*> (o Core..:? "mpn")
            Core.<*> (o Core..:? "multipack")
            Core.<*> (o Core..:? "offerId")
            Core.<*> (o Core..:? "pattern")
            Core.<*> (o Core..:? "pickupMethod")
            Core.<*> (o Core..:? "pickupSla")
            Core.<*> (o Core..:? "price")
            Core.<*> (o Core..:? "productDetails" Core..!= Core.mempty)
            Core.<*> (o Core..:? "productHeight")
            Core.<*> (o Core..:? "productHighlights" Core..!= Core.mempty)
            Core.<*> (o Core..:? "productLength")
            Core.<*> (o Core..:? "productTypes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "productWeight")
            Core.<*> (o Core..:? "productWidth")
            Core.<*> (o Core..:? "promotionIds" Core..!= Core.mempty)
            Core.<*> (o Core..:? "salePrice")
            Core.<*> (o Core..:? "salePriceEffectiveDate")
            Core.<*> (o Core..:? "sellOnGoogleQuantity")
            Core.<*> (o Core..:? "shipping" Core..!= Core.mempty)
            Core.<*> (o Core..:? "shippingHeight")
            Core.<*> (o Core..:? "shippingLabel")
            Core.<*> (o Core..:? "shippingLength")
            Core.<*> (o Core..:? "shippingWeight")
            Core.<*> (o Core..:? "shippingWidth")
            Core.<*> ( o Core..:? "shoppingAdsExcludedCountries"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "sizeSystem")
            Core.<*> (o Core..:? "sizeType")
            Core.<*> (o Core..:? "sizes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "source")
            Core.<*> (o Core..:? "subscriptionCost")
            Core.<*> (o Core..:? "targetCountry")
            Core.<*> (o Core..:? "taxCategory")
            Core.<*> (o Core..:? "taxes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "transitTimeLabel")
            Core.<*> (o Core..:? "unitPricingBaseMeasure")
            Core.<*> (o Core..:? "unitPricingMeasure")
      )

instance Core.ToJSON Product where
  toJSON Product {..} =
    Core.object
      ( Core.catMaybes
          [ ("additionalImageLinks" Core..=)
              Core.<$> additionalImageLinks,
            ("additionalSizeType" Core..=)
              Core.<$> additionalSizeType,
            ("adsGrouping" Core..=) Core.<$> adsGrouping,
            ("adsLabels" Core..=) Core.<$> adsLabels,
            ("adsRedirect" Core..=) Core.<$> adsRedirect,
            ("adult" Core..=) Core.<$> adult,
            ("ageGroup" Core..=) Core.<$> ageGroup,
            ("availability" Core..=) Core.<$> availability,
            ("availabilityDate" Core..=)
              Core.<$> availabilityDate,
            ("brand" Core..=) Core.<$> brand,
            ("canonicalLink" Core..=) Core.<$> canonicalLink,
            ("channel" Core..=) Core.<$> channel,
            ("color" Core..=) Core.<$> color,
            ("condition" Core..=) Core.<$> condition,
            ("contentLanguage" Core..=) Core.<$> contentLanguage,
            ("costOfGoodsSold" Core..=) Core.<$> costOfGoodsSold,
            ("customAttributes" Core..=)
              Core.<$> customAttributes,
            ("customLabel0" Core..=) Core.<$> customLabel0,
            ("customLabel1" Core..=) Core.<$> customLabel1,
            ("customLabel2" Core..=) Core.<$> customLabel2,
            ("customLabel3" Core..=) Core.<$> customLabel3,
            ("customLabel4" Core..=) Core.<$> customLabel4,
            ("description" Core..=) Core.<$> description,
            ("displayAdsId" Core..=) Core.<$> displayAdsId,
            ("displayAdsLink" Core..=) Core.<$> displayAdsLink,
            ("displayAdsSimilarIds" Core..=)
              Core.<$> displayAdsSimilarIds,
            ("displayAdsTitle" Core..=) Core.<$> displayAdsTitle,
            ("displayAdsValue" Core..=) Core.<$> displayAdsValue,
            ("energyEfficiencyClass" Core..=)
              Core.<$> energyEfficiencyClass,
            ("excludedDestinations" Core..=)
              Core.<$> excludedDestinations,
            ("expirationDate" Core..=) Core.<$> expirationDate,
            ("gender" Core..=) Core.<$> gender,
            ("googleProductCategory" Core..=)
              Core.<$> googleProductCategory,
            ("gtin" Core..=) Core.<$> gtin,
            ("id" Core..=) Core.<$> id,
            ("identifierExists" Core..=)
              Core.<$> identifierExists,
            ("imageLink" Core..=) Core.<$> imageLink,
            ("includedDestinations" Core..=)
              Core.<$> includedDestinations,
            ("installment" Core..=) Core.<$> installment,
            ("isBundle" Core..=) Core.<$> isBundle,
            ("itemGroupId" Core..=) Core.<$> itemGroupId,
            ("kind" Core..=) Core.<$> kind,
            ("link" Core..=) Core.<$> link,
            ("linkTemplate" Core..=) Core.<$> linkTemplate,
            ("loyaltyPoints" Core..=) Core.<$> loyaltyPoints,
            ("material" Core..=) Core.<$> material,
            ("maxEnergyEfficiencyClass" Core..=)
              Core.<$> maxEnergyEfficiencyClass,
            ("maxHandlingTime" Core..=) Core.. Core.AsText
              Core.<$> maxHandlingTime,
            ("minEnergyEfficiencyClass" Core..=)
              Core.<$> minEnergyEfficiencyClass,
            ("minHandlingTime" Core..=) Core.. Core.AsText
              Core.<$> minHandlingTime,
            ("mobileLink" Core..=) Core.<$> mobileLink,
            ("mobileLinkTemplate" Core..=)
              Core.<$> mobileLinkTemplate,
            ("mpn" Core..=) Core.<$> mpn,
            ("multipack" Core..=) Core.. Core.AsText
              Core.<$> multipack,
            ("offerId" Core..=) Core.<$> offerId,
            ("pattern" Core..=) Core.<$> pattern',
            ("pickupMethod" Core..=) Core.<$> pickupMethod,
            ("pickupSla" Core..=) Core.<$> pickupSla,
            ("price" Core..=) Core.<$> price,
            ("productDetails" Core..=) Core.<$> productDetails,
            ("productHeight" Core..=) Core.<$> productHeight,
            ("productHighlights" Core..=)
              Core.<$> productHighlights,
            ("productLength" Core..=) Core.<$> productLength,
            ("productTypes" Core..=) Core.<$> productTypes,
            ("productWeight" Core..=) Core.<$> productWeight,
            ("productWidth" Core..=) Core.<$> productWidth,
            ("promotionIds" Core..=) Core.<$> promotionIds,
            ("salePrice" Core..=) Core.<$> salePrice,
            ("salePriceEffectiveDate" Core..=)
              Core.<$> salePriceEffectiveDate,
            ("sellOnGoogleQuantity" Core..=) Core.. Core.AsText
              Core.<$> sellOnGoogleQuantity,
            ("shipping" Core..=) Core.<$> shipping,
            ("shippingHeight" Core..=) Core.<$> shippingHeight,
            ("shippingLabel" Core..=) Core.<$> shippingLabel,
            ("shippingLength" Core..=) Core.<$> shippingLength,
            ("shippingWeight" Core..=) Core.<$> shippingWeight,
            ("shippingWidth" Core..=) Core.<$> shippingWidth,
            ("shoppingAdsExcludedCountries" Core..=)
              Core.<$> shoppingAdsExcludedCountries,
            ("sizeSystem" Core..=) Core.<$> sizeSystem,
            ("sizeType" Core..=) Core.<$> sizeType,
            ("sizes" Core..=) Core.<$> sizes,
            ("source" Core..=) Core.<$> source,
            ("subscriptionCost" Core..=)
              Core.<$> subscriptionCost,
            ("targetCountry" Core..=) Core.<$> targetCountry,
            ("taxCategory" Core..=) Core.<$> taxCategory,
            ("taxes" Core..=) Core.<$> taxes,
            ("title" Core..=) Core.<$> title,
            ("transitTimeLabel" Core..=)
              Core.<$> transitTimeLabel,
            ("unitPricingBaseMeasure" Core..=)
              Core.<$> unitPricingBaseMeasure,
            ("unitPricingMeasure" Core..=)
              Core.<$> unitPricingMeasure
          ]
      )

--
-- /See:/ 'newProductAmount' smart constructor.
data ProductAmount = ProductAmount
  { -- | The pre-tax or post-tax price depending on the location of the order.
    priceAmount :: (Core.Maybe Price),
    -- | Remitted tax value.
    remittedTaxAmount :: (Core.Maybe Price),
    -- | Tax value.
    taxAmount :: (Core.Maybe Price)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductAmount' with the minimum fields required to make a request.
newProductAmount ::
  ProductAmount
newProductAmount =
  ProductAmount
    { priceAmount = Core.Nothing,
      remittedTaxAmount = Core.Nothing,
      taxAmount = Core.Nothing
    }

instance Core.FromJSON ProductAmount where
  parseJSON =
    Core.withObject
      "ProductAmount"
      ( \o ->
          ProductAmount
            Core.<$> (o Core..:? "priceAmount")
            Core.<*> (o Core..:? "remittedTaxAmount")
            Core.<*> (o Core..:? "taxAmount")
      )

instance Core.ToJSON ProductAmount where
  toJSON ProductAmount {..} =
    Core.object
      ( Core.catMaybes
          [ ("priceAmount" Core..=) Core.<$> priceAmount,
            ("remittedTaxAmount" Core..=)
              Core.<$> remittedTaxAmount,
            ("taxAmount" Core..=) Core.<$> taxAmount
          ]
      )

--
-- /See:/ 'newProductDimension' smart constructor.
data ProductDimension = ProductDimension
  { -- | Required. The length units. Acceptable values are: - \"@in@\" - \"@cm@\"
    unit :: (Core.Maybe Core.Text),
    -- | Required. The length value represented as a number. The value can have a maximum precision of four decimal places.
    value :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductDimension' with the minimum fields required to make a request.
newProductDimension ::
  ProductDimension
newProductDimension =
  ProductDimension {unit = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON ProductDimension where
  parseJSON =
    Core.withObject
      "ProductDimension"
      ( \o ->
          ProductDimension
            Core.<$> (o Core..:? "unit") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON ProductDimension where
  toJSON ProductDimension {..} =
    Core.object
      ( Core.catMaybes
          [ ("unit" Core..=) Core.<$> unit,
            ("value" Core..=) Core.<$> value
          ]
      )

--
-- /See:/ 'newProductProductDetail' smart constructor.
data ProductProductDetail = ProductProductDetail
  { -- | The name of the product detail.
    attributeName :: (Core.Maybe Core.Text),
    -- | The value of the product detail.
    attributeValue :: (Core.Maybe Core.Text),
    -- | The section header used to group a set of product details.
    sectionName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductProductDetail' with the minimum fields required to make a request.
newProductProductDetail ::
  ProductProductDetail
newProductProductDetail =
  ProductProductDetail
    { attributeName = Core.Nothing,
      attributeValue = Core.Nothing,
      sectionName = Core.Nothing
    }

instance Core.FromJSON ProductProductDetail where
  parseJSON =
    Core.withObject
      "ProductProductDetail"
      ( \o ->
          ProductProductDetail
            Core.<$> (o Core..:? "attributeName")
            Core.<*> (o Core..:? "attributeValue")
            Core.<*> (o Core..:? "sectionName")
      )

instance Core.ToJSON ProductProductDetail where
  toJSON ProductProductDetail {..} =
    Core.object
      ( Core.catMaybes
          [ ("attributeName" Core..=) Core.<$> attributeName,
            ("attributeValue" Core..=) Core.<$> attributeValue,
            ("sectionName" Core..=) Core.<$> sectionName
          ]
      )

--
-- /See:/ 'newProductShipping' smart constructor.
data ProductShipping = ProductShipping
  { -- | The CLDR territory code of the country to which an item will ship.
    country :: (Core.Maybe Core.Text),
    -- | The location where the shipping is applicable, represented by a location group name.
    locationGroupName :: (Core.Maybe Core.Text),
    -- | The numeric ID of a location that the shipping rate applies to as defined in the AdWords API.
    locationId :: (Core.Maybe Core.Int64),
    -- | Maximum handling time (inclusive) between when the order is received and shipped in business days. 0 means that the order is shipped on the same day as it\'s received if it happens before the cut-off time. Both maxHandlingTime and maxTransitTime are required if providing shipping speeds.
    maxHandlingTime :: (Core.Maybe Core.Int64),
    -- | Maximum transit time (inclusive) between when the order has shipped and when it\'s delivered in business days. 0 means that the order is delivered on the same day as it ships. Both maxHandlingTime and maxTransitTime are required if providing shipping speeds.
    maxTransitTime :: (Core.Maybe Core.Int64),
    -- | Minimum handling time (inclusive) between when the order is received and shipped in business days. 0 means that the order is shipped on the same day as it\'s received if it happens before the cut-off time. minHandlingTime can only be present together with maxHandlingTime; but it\'s not required if maxHandlingTime is present.
    minHandlingTime :: (Core.Maybe Core.Int64),
    -- | Minimum transit time (inclusive) between when the order has shipped and when it\'s delivered in business days. 0 means that the order is delivered on the same day as it ships. minTransitTime can only be present together with maxTransitTime; but it\'s not required if maxTransitTime is present.
    minTransitTime :: (Core.Maybe Core.Int64),
    -- | The postal code range that the shipping rate applies to, represented by a postal code, a postal code prefix followed by a * wildcard, a range between two postal codes or two postal code prefixes of equal length.
    postalCode :: (Core.Maybe Core.Text),
    -- | Fixed shipping price, represented as a number.
    price :: (Core.Maybe Price),
    -- | The geographic region to which a shipping rate applies.
    region :: (Core.Maybe Core.Text),
    -- | A free-form description of the service class or delivery speed.
    service :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductShipping' with the minimum fields required to make a request.
newProductShipping ::
  ProductShipping
newProductShipping =
  ProductShipping
    { country = Core.Nothing,
      locationGroupName = Core.Nothing,
      locationId = Core.Nothing,
      maxHandlingTime = Core.Nothing,
      maxTransitTime = Core.Nothing,
      minHandlingTime = Core.Nothing,
      minTransitTime = Core.Nothing,
      postalCode = Core.Nothing,
      price = Core.Nothing,
      region = Core.Nothing,
      service = Core.Nothing
    }

instance Core.FromJSON ProductShipping where
  parseJSON =
    Core.withObject
      "ProductShipping"
      ( \o ->
          ProductShipping
            Core.<$> (o Core..:? "country")
            Core.<*> (o Core..:? "locationGroupName")
            Core.<*> (o Core..:? "locationId")
            Core.<*> (o Core..:? "maxHandlingTime")
            Core.<*> (o Core..:? "maxTransitTime")
            Core.<*> (o Core..:? "minHandlingTime")
            Core.<*> (o Core..:? "minTransitTime")
            Core.<*> (o Core..:? "postalCode")
            Core.<*> (o Core..:? "price")
            Core.<*> (o Core..:? "region")
            Core.<*> (o Core..:? "service")
      )

instance Core.ToJSON ProductShipping where
  toJSON ProductShipping {..} =
    Core.object
      ( Core.catMaybes
          [ ("country" Core..=) Core.<$> country,
            ("locationGroupName" Core..=)
              Core.<$> locationGroupName,
            ("locationId" Core..=) Core.. Core.AsText
              Core.<$> locationId,
            ("maxHandlingTime" Core..=) Core.. Core.AsText
              Core.<$> maxHandlingTime,
            ("maxTransitTime" Core..=) Core.. Core.AsText
              Core.<$> maxTransitTime,
            ("minHandlingTime" Core..=) Core.. Core.AsText
              Core.<$> minHandlingTime,
            ("minTransitTime" Core..=) Core.. Core.AsText
              Core.<$> minTransitTime,
            ("postalCode" Core..=) Core.<$> postalCode,
            ("price" Core..=) Core.<$> price,
            ("region" Core..=) Core.<$> region,
            ("service" Core..=) Core.<$> service
          ]
      )

--
-- /See:/ 'newProductShippingDimension' smart constructor.
data ProductShippingDimension = ProductShippingDimension
  { -- | The unit of value.
    unit :: (Core.Maybe Core.Text),
    -- | The dimension of the product used to calculate the shipping cost of the item.
    value :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductShippingDimension' with the minimum fields required to make a request.
newProductShippingDimension ::
  ProductShippingDimension
newProductShippingDimension =
  ProductShippingDimension {unit = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON ProductShippingDimension where
  parseJSON =
    Core.withObject
      "ProductShippingDimension"
      ( \o ->
          ProductShippingDimension
            Core.<$> (o Core..:? "unit") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON ProductShippingDimension where
  toJSON ProductShippingDimension {..} =
    Core.object
      ( Core.catMaybes
          [ ("unit" Core..=) Core.<$> unit,
            ("value" Core..=) Core.<$> value
          ]
      )

--
-- /See:/ 'newProductShippingWeight' smart constructor.
data ProductShippingWeight = ProductShippingWeight
  { -- | The unit of value.
    unit :: (Core.Maybe Core.Text),
    -- | The weight of the product used to calculate the shipping cost of the item.
    value :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductShippingWeight' with the minimum fields required to make a request.
newProductShippingWeight ::
  ProductShippingWeight
newProductShippingWeight =
  ProductShippingWeight {unit = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON ProductShippingWeight where
  parseJSON =
    Core.withObject
      "ProductShippingWeight"
      ( \o ->
          ProductShippingWeight
            Core.<$> (o Core..:? "unit") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON ProductShippingWeight where
  toJSON ProductShippingWeight {..} =
    Core.object
      ( Core.catMaybes
          [ ("unit" Core..=) Core.<$> unit,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | The status of a product, that is, information about a product computed asynchronously.
--
-- /See:/ 'newProductStatus' smart constructor.
data ProductStatus = ProductStatus
  { -- | Date on which the item has been created, in ISO 8601 format.
    creationDate :: (Core.Maybe Core.Text),
    -- | The intended destinations for the product.
    destinationStatuses :: (Core.Maybe [ProductStatusDestinationStatus]),
    -- | Date on which the item expires in Google Shopping, in ISO 8601 format.
    googleExpirationDate :: (Core.Maybe Core.Text),
    -- | A list of all issues associated with the product.
    itemLevelIssues :: (Core.Maybe [ProductStatusItemLevelIssue]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#productStatus@\"
    kind :: (Core.Maybe Core.Text),
    -- | Date on which the item has been last updated, in ISO 8601 format.
    lastUpdateDate :: (Core.Maybe Core.Text),
    -- | The link to the product.
    link :: (Core.Maybe Core.Text),
    -- | The ID of the product for which status is reported.
    productId :: (Core.Maybe Core.Text),
    -- | The title of the product.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductStatus' with the minimum fields required to make a request.
newProductStatus ::
  ProductStatus
newProductStatus =
  ProductStatus
    { creationDate = Core.Nothing,
      destinationStatuses = Core.Nothing,
      googleExpirationDate = Core.Nothing,
      itemLevelIssues = Core.Nothing,
      kind = Core.Nothing,
      lastUpdateDate = Core.Nothing,
      link = Core.Nothing,
      productId = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON ProductStatus where
  parseJSON =
    Core.withObject
      "ProductStatus"
      ( \o ->
          ProductStatus
            Core.<$> (o Core..:? "creationDate")
            Core.<*> ( o Core..:? "destinationStatuses"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "googleExpirationDate")
            Core.<*> (o Core..:? "itemLevelIssues" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "lastUpdateDate")
            Core.<*> (o Core..:? "link")
            Core.<*> (o Core..:? "productId")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON ProductStatus where
  toJSON ProductStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("creationDate" Core..=) Core.<$> creationDate,
            ("destinationStatuses" Core..=)
              Core.<$> destinationStatuses,
            ("googleExpirationDate" Core..=)
              Core.<$> googleExpirationDate,
            ("itemLevelIssues" Core..=) Core.<$> itemLevelIssues,
            ("kind" Core..=) Core.<$> kind,
            ("lastUpdateDate" Core..=) Core.<$> lastUpdateDate,
            ("link" Core..=) Core.<$> link,
            ("productId" Core..=) Core.<$> productId,
            ("title" Core..=) Core.<$> title
          ]
      )

--
-- /See:/ 'newProductStatusDestinationStatus' smart constructor.
data ProductStatusDestinationStatus = ProductStatusDestinationStatus
  { -- | List of country codes (ISO 3166-1 alpha-2) where the offer is approved.
    approvedCountries :: (Core.Maybe [Core.Text]),
    -- | The name of the destination
    destination :: (Core.Maybe Core.Text),
    -- | List of country codes (ISO 3166-1 alpha-2) where the offer is disapproved.
    disapprovedCountries :: (Core.Maybe [Core.Text]),
    -- | List of country codes (ISO 3166-1 alpha-2) where the offer is pending approval.
    pendingCountries :: (Core.Maybe [Core.Text]),
    -- | Destination approval status in @targetCountry@ of the offer.
    status :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductStatusDestinationStatus' with the minimum fields required to make a request.
newProductStatusDestinationStatus ::
  ProductStatusDestinationStatus
newProductStatusDestinationStatus =
  ProductStatusDestinationStatus
    { approvedCountries = Core.Nothing,
      destination = Core.Nothing,
      disapprovedCountries = Core.Nothing,
      pendingCountries = Core.Nothing,
      status = Core.Nothing
    }

instance Core.FromJSON ProductStatusDestinationStatus where
  parseJSON =
    Core.withObject
      "ProductStatusDestinationStatus"
      ( \o ->
          ProductStatusDestinationStatus
            Core.<$> (o Core..:? "approvedCountries" Core..!= Core.mempty)
            Core.<*> (o Core..:? "destination")
            Core.<*> ( o Core..:? "disapprovedCountries"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "pendingCountries" Core..!= Core.mempty)
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON ProductStatusDestinationStatus where
  toJSON ProductStatusDestinationStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("approvedCountries" Core..=)
              Core.<$> approvedCountries,
            ("destination" Core..=) Core.<$> destination,
            ("disapprovedCountries" Core..=)
              Core.<$> disapprovedCountries,
            ("pendingCountries" Core..=)
              Core.<$> pendingCountries,
            ("status" Core..=) Core.<$> status
          ]
      )

--
-- /See:/ 'newProductStatusItemLevelIssue' smart constructor.
data ProductStatusItemLevelIssue = ProductStatusItemLevelIssue
  { -- | List of country codes (ISO 3166-1 alpha-2) where issue applies to the offer.
    applicableCountries :: (Core.Maybe [Core.Text]),
    -- | The attribute\'s name, if the issue is caused by a single attribute.
    attributeName :: (Core.Maybe Core.Text),
    -- | The error code of the issue.
    code :: (Core.Maybe Core.Text),
    -- | A short issue description in English.
    description :: (Core.Maybe Core.Text),
    -- | The destination the issue applies to.
    destination :: (Core.Maybe Core.Text),
    -- | A detailed issue description in English.
    detail :: (Core.Maybe Core.Text),
    -- | The URL of a web page to help with resolving this issue.
    documentation :: (Core.Maybe Core.Text),
    -- | Whether the issue can be resolved by the merchant.
    resolution :: (Core.Maybe Core.Text),
    -- | How this issue affects serving of the offer.
    servability :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductStatusItemLevelIssue' with the minimum fields required to make a request.
newProductStatusItemLevelIssue ::
  ProductStatusItemLevelIssue
newProductStatusItemLevelIssue =
  ProductStatusItemLevelIssue
    { applicableCountries = Core.Nothing,
      attributeName = Core.Nothing,
      code = Core.Nothing,
      description = Core.Nothing,
      destination = Core.Nothing,
      detail = Core.Nothing,
      documentation = Core.Nothing,
      resolution = Core.Nothing,
      servability = Core.Nothing
    }

instance Core.FromJSON ProductStatusItemLevelIssue where
  parseJSON =
    Core.withObject
      "ProductStatusItemLevelIssue"
      ( \o ->
          ProductStatusItemLevelIssue
            Core.<$> ( o Core..:? "applicableCountries"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "attributeName")
            Core.<*> (o Core..:? "code")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "destination")
            Core.<*> (o Core..:? "detail")
            Core.<*> (o Core..:? "documentation")
            Core.<*> (o Core..:? "resolution")
            Core.<*> (o Core..:? "servability")
      )

instance Core.ToJSON ProductStatusItemLevelIssue where
  toJSON ProductStatusItemLevelIssue {..} =
    Core.object
      ( Core.catMaybes
          [ ("applicableCountries" Core..=)
              Core.<$> applicableCountries,
            ("attributeName" Core..=) Core.<$> attributeName,
            ("code" Core..=) Core.<$> code,
            ("description" Core..=) Core.<$> description,
            ("destination" Core..=) Core.<$> destination,
            ("detail" Core..=) Core.<$> detail,
            ("documentation" Core..=) Core.<$> documentation,
            ("resolution" Core..=) Core.<$> resolution,
            ("servability" Core..=) Core.<$> servability
          ]
      )

--
-- /See:/ 'newProductSubscriptionCost' smart constructor.
data ProductSubscriptionCost = ProductSubscriptionCost
  { -- | The amount the buyer has to pay per subscription period.
    amount :: (Core.Maybe Price),
    -- | The type of subscription period.
    period :: (Core.Maybe Core.Text),
    -- | The number of subscription periods the buyer has to pay.
    periodLength :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductSubscriptionCost' with the minimum fields required to make a request.
newProductSubscriptionCost ::
  ProductSubscriptionCost
newProductSubscriptionCost =
  ProductSubscriptionCost
    { amount = Core.Nothing,
      period = Core.Nothing,
      periodLength = Core.Nothing
    }

instance Core.FromJSON ProductSubscriptionCost where
  parseJSON =
    Core.withObject
      "ProductSubscriptionCost"
      ( \o ->
          ProductSubscriptionCost
            Core.<$> (o Core..:? "amount")
            Core.<*> (o Core..:? "period")
            Core.<*> (o Core..:? "periodLength")
      )

instance Core.ToJSON ProductSubscriptionCost where
  toJSON ProductSubscriptionCost {..} =
    Core.object
      ( Core.catMaybes
          [ ("amount" Core..=) Core.<$> amount,
            ("period" Core..=) Core.<$> period,
            ("periodLength" Core..=) Core.. Core.AsText
              Core.<$> periodLength
          ]
      )

--
-- /See:/ 'newProductTax' smart constructor.
data ProductTax = ProductTax
  { -- | The country within which the item is taxed, specified as a CLDR territory code.
    country :: (Core.Maybe Core.Text),
    -- | The numeric ID of a location that the tax rate applies to as defined in the AdWords API.
    locationId :: (Core.Maybe Core.Int64),
    -- | The postal code range that the tax rate applies to, represented by a ZIP code, a ZIP code prefix using * wildcard, a range between two ZIP codes or two ZIP code prefixes of equal length. Examples: 94114, 94/, 94002-95460, 94/-95*.
    postalCode :: (Core.Maybe Core.Text),
    -- | The percentage of tax rate that applies to the item price.
    rate :: (Core.Maybe Core.Double),
    -- | The geographic region to which the tax rate applies.
    region :: (Core.Maybe Core.Text),
    -- | Should be set to true if tax is charged on shipping.
    taxShip :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductTax' with the minimum fields required to make a request.
newProductTax ::
  ProductTax
newProductTax =
  ProductTax
    { country = Core.Nothing,
      locationId = Core.Nothing,
      postalCode = Core.Nothing,
      rate = Core.Nothing,
      region = Core.Nothing,
      taxShip = Core.Nothing
    }

instance Core.FromJSON ProductTax where
  parseJSON =
    Core.withObject
      "ProductTax"
      ( \o ->
          ProductTax
            Core.<$> (o Core..:? "country")
            Core.<*> (o Core..:? "locationId")
            Core.<*> (o Core..:? "postalCode")
            Core.<*> (o Core..:? "rate")
            Core.<*> (o Core..:? "region")
            Core.<*> (o Core..:? "taxShip")
      )

instance Core.ToJSON ProductTax where
  toJSON ProductTax {..} =
    Core.object
      ( Core.catMaybes
          [ ("country" Core..=) Core.<$> country,
            ("locationId" Core..=) Core.. Core.AsText
              Core.<$> locationId,
            ("postalCode" Core..=) Core.<$> postalCode,
            ("rate" Core..=) Core.<$> rate,
            ("region" Core..=) Core.<$> region,
            ("taxShip" Core..=) Core.<$> taxShip
          ]
      )

--
-- /See:/ 'newProductUnitPricingBaseMeasure' smart constructor.
data ProductUnitPricingBaseMeasure = ProductUnitPricingBaseMeasure
  { -- | The unit of the denominator.
    unit :: (Core.Maybe Core.Text),
    -- | The denominator of the unit price.
    value :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductUnitPricingBaseMeasure' with the minimum fields required to make a request.
newProductUnitPricingBaseMeasure ::
  ProductUnitPricingBaseMeasure
newProductUnitPricingBaseMeasure =
  ProductUnitPricingBaseMeasure {unit = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON ProductUnitPricingBaseMeasure where
  parseJSON =
    Core.withObject
      "ProductUnitPricingBaseMeasure"
      ( \o ->
          ProductUnitPricingBaseMeasure
            Core.<$> (o Core..:? "unit") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON ProductUnitPricingBaseMeasure where
  toJSON ProductUnitPricingBaseMeasure {..} =
    Core.object
      ( Core.catMaybes
          [ ("unit" Core..=) Core.<$> unit,
            ("value" Core..=) Core.. Core.AsText Core.<$> value
          ]
      )

--
-- /See:/ 'newProductUnitPricingMeasure' smart constructor.
data ProductUnitPricingMeasure = ProductUnitPricingMeasure
  { -- | The unit of the measure.
    unit :: (Core.Maybe Core.Text),
    -- | The measure of an item.
    value :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductUnitPricingMeasure' with the minimum fields required to make a request.
newProductUnitPricingMeasure ::
  ProductUnitPricingMeasure
newProductUnitPricingMeasure =
  ProductUnitPricingMeasure {unit = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON ProductUnitPricingMeasure where
  parseJSON =
    Core.withObject
      "ProductUnitPricingMeasure"
      ( \o ->
          ProductUnitPricingMeasure
            Core.<$> (o Core..:? "unit") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON ProductUnitPricingMeasure where
  toJSON ProductUnitPricingMeasure {..} =
    Core.object
      ( Core.catMaybes
          [ ("unit" Core..=) Core.<$> unit,
            ("value" Core..=) Core.<$> value
          ]
      )

--
-- /See:/ 'newProductWeight' smart constructor.
data ProductWeight = ProductWeight
  { -- | Required. The weight unit. Acceptable values are: - \"@g@\" - \"@kg@\" - \"@oz@\" - \"@lb@\"
    unit :: (Core.Maybe Core.Text),
    -- | Required. The weight represented as a number. The weight can have a maximum precision of four decimal places.
    value :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductWeight' with the minimum fields required to make a request.
newProductWeight ::
  ProductWeight
newProductWeight = ProductWeight {unit = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON ProductWeight where
  parseJSON =
    Core.withObject
      "ProductWeight"
      ( \o ->
          ProductWeight
            Core.<$> (o Core..:? "unit") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON ProductWeight where
  toJSON ProductWeight {..} =
    Core.object
      ( Core.catMaybes
          [ ("unit" Core..=) Core.<$> unit,
            ("value" Core..=) Core.<$> value
          ]
      )

--
-- /See:/ 'newProductsCustomBatchRequest' smart constructor.
newtype ProductsCustomBatchRequest = ProductsCustomBatchRequest
  { -- | The request entries to be processed in the batch.
    entries :: (Core.Maybe [ProductsCustomBatchRequestEntry])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductsCustomBatchRequest' with the minimum fields required to make a request.
newProductsCustomBatchRequest ::
  ProductsCustomBatchRequest
newProductsCustomBatchRequest =
  ProductsCustomBatchRequest {entries = Core.Nothing}

instance Core.FromJSON ProductsCustomBatchRequest where
  parseJSON =
    Core.withObject
      "ProductsCustomBatchRequest"
      ( \o ->
          ProductsCustomBatchRequest
            Core.<$> (o Core..:? "entries" Core..!= Core.mempty)
      )

instance Core.ToJSON ProductsCustomBatchRequest where
  toJSON ProductsCustomBatchRequest {..} =
    Core.object
      ( Core.catMaybes
          [("entries" Core..=) Core.<$> entries]
      )

-- | A batch entry encoding a single non-batch products request.
--
-- /See:/ 'newProductsCustomBatchRequestEntry' smart constructor.
data ProductsCustomBatchRequestEntry = ProductsCustomBatchRequestEntry
  { -- | An entry ID, unique within the batch request.
    batchId :: (Core.Maybe Core.Word32),
    -- | The Content API Supplemental Feed ID. If present then product insertion or deletion applies to a supplemental feed instead of primary Content API feed.
    feedId :: (Core.Maybe Core.Word64),
    -- | The ID of the managing account.
    merchantId :: (Core.Maybe Core.Word64),
    -- | The method of the batch entry. Acceptable values are: - \"@delete@\" - \"@get@\" - \"@insert@\" - \"@update@\"
    method :: (Core.Maybe Core.Text),
    -- | The product to insert or update. Only required if the method is @insert@ or @update@. If the @update@ method is used with @updateMask@ only to delete a field, then this isn\'t required. For example, setting @salePrice@ on the @updateMask@ and not providing a @product@ will result in an existing sale price on the product specified by @productId@ being deleted.
    product :: (Core.Maybe Product),
    -- | The ID of the product to get or mutate. Only defined if the method is @get@, @delete@, or @update@.
    productId :: (Core.Maybe Core.Text),
    -- | The comma-separated list of product attributes to be updated. Example: @\"title,salePrice\"@. Attributes specified in the update mask without a value specified in the body will be deleted from the product. Only top-level product attributes can be updated. If not defined, product attributes with set values will be updated and other attributes will stay unchanged. Only defined if the method is @update@.
    updateMask :: (Core.Maybe Core.FieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductsCustomBatchRequestEntry' with the minimum fields required to make a request.
newProductsCustomBatchRequestEntry ::
  ProductsCustomBatchRequestEntry
newProductsCustomBatchRequestEntry =
  ProductsCustomBatchRequestEntry
    { batchId = Core.Nothing,
      feedId = Core.Nothing,
      merchantId = Core.Nothing,
      method = Core.Nothing,
      product = Core.Nothing,
      productId = Core.Nothing,
      updateMask = Core.Nothing
    }

instance
  Core.FromJSON
    ProductsCustomBatchRequestEntry
  where
  parseJSON =
    Core.withObject
      "ProductsCustomBatchRequestEntry"
      ( \o ->
          ProductsCustomBatchRequestEntry
            Core.<$> (o Core..:? "batchId")
            Core.<*> (o Core..:? "feedId")
            Core.<*> (o Core..:? "merchantId")
            Core.<*> (o Core..:? "method")
            Core.<*> (o Core..:? "product")
            Core.<*> (o Core..:? "productId")
            Core.<*> (o Core..:? "updateMask")
      )

instance Core.ToJSON ProductsCustomBatchRequestEntry where
  toJSON ProductsCustomBatchRequestEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchId" Core..=) Core.<$> batchId,
            ("feedId" Core..=) Core.. Core.AsText
              Core.<$> feedId,
            ("merchantId" Core..=) Core.. Core.AsText
              Core.<$> merchantId,
            ("method" Core..=) Core.<$> method,
            ("product" Core..=) Core.<$> product,
            ("productId" Core..=) Core.<$> productId,
            ("updateMask" Core..=) Core.<$> updateMask
          ]
      )

--
-- /See:/ 'newProductsCustomBatchResponse' smart constructor.
data ProductsCustomBatchResponse = ProductsCustomBatchResponse
  { -- | The result of the execution of the batch requests.
    entries :: (Core.Maybe [ProductsCustomBatchResponseEntry]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#productsCustomBatchResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductsCustomBatchResponse' with the minimum fields required to make a request.
newProductsCustomBatchResponse ::
  ProductsCustomBatchResponse
newProductsCustomBatchResponse =
  ProductsCustomBatchResponse {entries = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON ProductsCustomBatchResponse where
  parseJSON =
    Core.withObject
      "ProductsCustomBatchResponse"
      ( \o ->
          ProductsCustomBatchResponse
            Core.<$> (o Core..:? "entries" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON ProductsCustomBatchResponse where
  toJSON ProductsCustomBatchResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("entries" Core..=) Core.<$> entries,
            ("kind" Core..=) Core.<$> kind
          ]
      )

-- | A batch entry encoding a single non-batch products response.
--
-- /See:/ 'newProductsCustomBatchResponseEntry' smart constructor.
data ProductsCustomBatchResponseEntry = ProductsCustomBatchResponseEntry
  { -- | The ID of the request entry this entry responds to.
    batchId :: (Core.Maybe Core.Word32),
    -- | A list of errors defined if and only if the request failed.
    errors :: (Core.Maybe Errors),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#productsCustomBatchResponseEntry@\"
    kind :: (Core.Maybe Core.Text),
    -- | The inserted product. Only defined if the method is @insert@ and if the request was successful.
    product :: (Core.Maybe Product)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductsCustomBatchResponseEntry' with the minimum fields required to make a request.
newProductsCustomBatchResponseEntry ::
  ProductsCustomBatchResponseEntry
newProductsCustomBatchResponseEntry =
  ProductsCustomBatchResponseEntry
    { batchId = Core.Nothing,
      errors = Core.Nothing,
      kind = Core.Nothing,
      product = Core.Nothing
    }

instance
  Core.FromJSON
    ProductsCustomBatchResponseEntry
  where
  parseJSON =
    Core.withObject
      "ProductsCustomBatchResponseEntry"
      ( \o ->
          ProductsCustomBatchResponseEntry
            Core.<$> (o Core..:? "batchId")
            Core.<*> (o Core..:? "errors")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "product")
      )

instance Core.ToJSON ProductsCustomBatchResponseEntry where
  toJSON ProductsCustomBatchResponseEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchId" Core..=) Core.<$> batchId,
            ("errors" Core..=) Core.<$> errors,
            ("kind" Core..=) Core.<$> kind,
            ("product" Core..=) Core.<$> product
          ]
      )

--
-- /See:/ 'newProductsListResponse' smart constructor.
data ProductsListResponse = ProductsListResponse
  { -- | Identifies what kind of resource this is. Value: the fixed string \"@content#productsListResponse@\".
    kind :: (Core.Maybe Core.Text),
    -- | The token for the retrieval of the next page of products.
    nextPageToken :: (Core.Maybe Core.Text),
    -- |
    resources :: (Core.Maybe [Product])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductsListResponse' with the minimum fields required to make a request.
newProductsListResponse ::
  ProductsListResponse
newProductsListResponse =
  ProductsListResponse
    { kind = Core.Nothing,
      nextPageToken = Core.Nothing,
      resources = Core.Nothing
    }

instance Core.FromJSON ProductsListResponse where
  parseJSON =
    Core.withObject
      "ProductsListResponse"
      ( \o ->
          ProductsListResponse
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "resources" Core..!= Core.mempty)
      )

instance Core.ToJSON ProductsListResponse where
  toJSON ProductsListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("resources" Core..=) Core.<$> resources
          ]
      )

--
-- /See:/ 'newProductstatusesCustomBatchRequest' smart constructor.
newtype ProductstatusesCustomBatchRequest = ProductstatusesCustomBatchRequest
  { -- | The request entries to be processed in the batch.
    entries :: (Core.Maybe [ProductstatusesCustomBatchRequestEntry])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductstatusesCustomBatchRequest' with the minimum fields required to make a request.
newProductstatusesCustomBatchRequest ::
  ProductstatusesCustomBatchRequest
newProductstatusesCustomBatchRequest =
  ProductstatusesCustomBatchRequest {entries = Core.Nothing}

instance
  Core.FromJSON
    ProductstatusesCustomBatchRequest
  where
  parseJSON =
    Core.withObject
      "ProductstatusesCustomBatchRequest"
      ( \o ->
          ProductstatusesCustomBatchRequest
            Core.<$> (o Core..:? "entries" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    ProductstatusesCustomBatchRequest
  where
  toJSON ProductstatusesCustomBatchRequest {..} =
    Core.object
      ( Core.catMaybes
          [("entries" Core..=) Core.<$> entries]
      )

-- | A batch entry encoding a single non-batch productstatuses request.
--
-- /See:/ 'newProductstatusesCustomBatchRequestEntry' smart constructor.
data ProductstatusesCustomBatchRequestEntry = ProductstatusesCustomBatchRequestEntry
  { -- | An entry ID, unique within the batch request.
    batchId :: (Core.Maybe Core.Word32),
    -- | If set, only issues for the specified destinations are returned, otherwise only issues for the Shopping destination.
    destinations :: (Core.Maybe [Core.Text]),
    -- |
    includeAttributes :: (Core.Maybe Core.Bool),
    -- | The ID of the managing account.
    merchantId :: (Core.Maybe Core.Word64),
    -- | The method of the batch entry. Acceptable values are: - \"@get@\"
    method :: (Core.Maybe Core.Text),
    -- | The ID of the product whose status to get.
    productId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductstatusesCustomBatchRequestEntry' with the minimum fields required to make a request.
newProductstatusesCustomBatchRequestEntry ::
  ProductstatusesCustomBatchRequestEntry
newProductstatusesCustomBatchRequestEntry =
  ProductstatusesCustomBatchRequestEntry
    { batchId = Core.Nothing,
      destinations = Core.Nothing,
      includeAttributes = Core.Nothing,
      merchantId = Core.Nothing,
      method = Core.Nothing,
      productId = Core.Nothing
    }

instance
  Core.FromJSON
    ProductstatusesCustomBatchRequestEntry
  where
  parseJSON =
    Core.withObject
      "ProductstatusesCustomBatchRequestEntry"
      ( \o ->
          ProductstatusesCustomBatchRequestEntry
            Core.<$> (o Core..:? "batchId")
            Core.<*> (o Core..:? "destinations" Core..!= Core.mempty)
            Core.<*> (o Core..:? "includeAttributes")
            Core.<*> (o Core..:? "merchantId")
            Core.<*> (o Core..:? "method")
            Core.<*> (o Core..:? "productId")
      )

instance
  Core.ToJSON
    ProductstatusesCustomBatchRequestEntry
  where
  toJSON ProductstatusesCustomBatchRequestEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchId" Core..=) Core.<$> batchId,
            ("destinations" Core..=) Core.<$> destinations,
            ("includeAttributes" Core..=)
              Core.<$> includeAttributes,
            ("merchantId" Core..=) Core.. Core.AsText
              Core.<$> merchantId,
            ("method" Core..=) Core.<$> method,
            ("productId" Core..=) Core.<$> productId
          ]
      )

--
-- /See:/ 'newProductstatusesCustomBatchResponse' smart constructor.
data ProductstatusesCustomBatchResponse = ProductstatusesCustomBatchResponse
  { -- | The result of the execution of the batch requests.
    entries :: (Core.Maybe [ProductstatusesCustomBatchResponseEntry]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#productstatusesCustomBatchResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductstatusesCustomBatchResponse' with the minimum fields required to make a request.
newProductstatusesCustomBatchResponse ::
  ProductstatusesCustomBatchResponse
newProductstatusesCustomBatchResponse =
  ProductstatusesCustomBatchResponse
    { entries = Core.Nothing,
      kind = Core.Nothing
    }

instance
  Core.FromJSON
    ProductstatusesCustomBatchResponse
  where
  parseJSON =
    Core.withObject
      "ProductstatusesCustomBatchResponse"
      ( \o ->
          ProductstatusesCustomBatchResponse
            Core.<$> (o Core..:? "entries" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind")
      )

instance
  Core.ToJSON
    ProductstatusesCustomBatchResponse
  where
  toJSON ProductstatusesCustomBatchResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("entries" Core..=) Core.<$> entries,
            ("kind" Core..=) Core.<$> kind
          ]
      )

-- | A batch entry encoding a single non-batch productstatuses response.
--
-- /See:/ 'newProductstatusesCustomBatchResponseEntry' smart constructor.
data ProductstatusesCustomBatchResponseEntry = ProductstatusesCustomBatchResponseEntry
  { -- | The ID of the request entry this entry responds to.
    batchId :: (Core.Maybe Core.Word32),
    -- | A list of errors, if the request failed.
    errors :: (Core.Maybe Errors),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#productstatusesCustomBatchResponseEntry@\"
    kind :: (Core.Maybe Core.Text),
    -- | The requested product status. Only defined if the request was successful.
    productStatus :: (Core.Maybe ProductStatus)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductstatusesCustomBatchResponseEntry' with the minimum fields required to make a request.
newProductstatusesCustomBatchResponseEntry ::
  ProductstatusesCustomBatchResponseEntry
newProductstatusesCustomBatchResponseEntry =
  ProductstatusesCustomBatchResponseEntry
    { batchId = Core.Nothing,
      errors = Core.Nothing,
      kind = Core.Nothing,
      productStatus = Core.Nothing
    }

instance
  Core.FromJSON
    ProductstatusesCustomBatchResponseEntry
  where
  parseJSON =
    Core.withObject
      "ProductstatusesCustomBatchResponseEntry"
      ( \o ->
          ProductstatusesCustomBatchResponseEntry
            Core.<$> (o Core..:? "batchId")
            Core.<*> (o Core..:? "errors")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "productStatus")
      )

instance
  Core.ToJSON
    ProductstatusesCustomBatchResponseEntry
  where
  toJSON ProductstatusesCustomBatchResponseEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchId" Core..=) Core.<$> batchId,
            ("errors" Core..=) Core.<$> errors,
            ("kind" Core..=) Core.<$> kind,
            ("productStatus" Core..=) Core.<$> productStatus
          ]
      )

--
-- /See:/ 'newProductstatusesListResponse' smart constructor.
data ProductstatusesListResponse = ProductstatusesListResponse
  { -- | Identifies what kind of resource this is. Value: the fixed string \"@content#productstatusesListResponse@\".
    kind :: (Core.Maybe Core.Text),
    -- | The token for the retrieval of the next page of products statuses.
    nextPageToken :: (Core.Maybe Core.Text),
    -- |
    resources :: (Core.Maybe [ProductStatus])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductstatusesListResponse' with the minimum fields required to make a request.
newProductstatusesListResponse ::
  ProductstatusesListResponse
newProductstatusesListResponse =
  ProductstatusesListResponse
    { kind = Core.Nothing,
      nextPageToken = Core.Nothing,
      resources = Core.Nothing
    }

instance Core.FromJSON ProductstatusesListResponse where
  parseJSON =
    Core.withObject
      "ProductstatusesListResponse"
      ( \o ->
          ProductstatusesListResponse
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "resources" Core..!= Core.mempty)
      )

instance Core.ToJSON ProductstatusesListResponse where
  toJSON ProductstatusesListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("resources" Core..=) Core.<$> resources
          ]
      )

-- | The Promotions feature is currently in alpha and is not yet publicly available in Content API for Shopping. This documentation is provided for reference only may be subject to change. Represents a promotion. See the following articles for more details. * <https://support.google.com/merchants/answer/2906014 Promotions feed specification> * <https://support.google.com/merchants/answer/10146130 Local promotions feed specification> * <https://support.google.com/merchants/answer/9173673 Promotions on Buy on Google product data specification>
--
-- /See:/ 'newPromotion' smart constructor.
data Promotion = Promotion
  { -- | Product filter by brand for the promotion.
    brand :: (Core.Maybe [Core.Text]),
    -- | Product filter by brand exclusion for the promotion.
    brandExclusion :: (Core.Maybe [Core.Text]),
    -- | Required. The content language used as part of the unique identifier.
    contentLanguage :: (Core.Maybe Core.Text),
    -- | Required. Coupon value type for the promotion.
    couponValueType :: (Core.Maybe Promotion_CouponValueType),
    -- | Free gift description for the promotion.
    freeGiftDescription :: (Core.Maybe Core.Text),
    -- | Free gift item id for the promotion.
    freeGiftItemId :: (Core.Maybe Core.Text),
    -- | Free gift value for the promotion.
    freeGiftValue :: (Core.Maybe PriceAmount),
    -- | Generic redemption code for the promotion. To be used with the above field.
    genericRedemptionCode :: (Core.Maybe Core.Text),
    -- | The number of items discounted in the promotion.
    getThisQuantityDiscounted :: (Core.Maybe Core.Int32),
    -- | Required. Output only. The REST promotion id to uniquely identify the promotion. Content API methods that operate on promotions take this as their promotionId parameter. The REST ID for a promotion is of the form channel:contentLanguage:targetCountry:promotionId The channel field will have a value of \"online\", \"in/store\", or \"online/in_store\".
    id :: (Core.Maybe Core.Text),
    -- | Product filter by item group id for the promotion.
    itemGroupId :: (Core.Maybe [Core.Text]),
    -- | Product filter by item group id exclusion for the promotion.
    itemGroupIdExclusion :: (Core.Maybe [Core.Text]),
    -- | Product filter by item id for the promotion.
    itemId :: (Core.Maybe [Core.Text]),
    -- | Product filter by item id exclusion for the promotion.
    itemIdExclusion :: (Core.Maybe [Core.Text]),
    -- | Maximum purchase quantity for the promotion.
    limitQuantity :: (Core.Maybe Core.Int32),
    -- | Maximum purchase value for the promotion.
    limitValue :: (Core.Maybe PriceAmount),
    -- | Long title for the promotion.
    longTitle :: (Core.Maybe Core.Text),
    -- | Minimum purchase amount for the promotion.
    minimumPurchaseAmount :: (Core.Maybe PriceAmount),
    -- | Minimum purchase quantity for the promotion.
    minimumPurchaseQuantity :: (Core.Maybe Core.Int32),
    -- | Promotion cost cap of the promotion.
    moneyBudget :: (Core.Maybe PriceAmount),
    -- | The money off amount offered in the promotion.
    moneyOffAmount :: (Core.Maybe PriceAmount),
    -- | Required. Type of the promotion.
    offerType :: (Core.Maybe Promotion_OfferType),
    -- | Order limit for the promotion.
    orderLimit :: (Core.Maybe Core.Int32),
    -- | The percentage discount offered in the promotion.
    percentOff :: (Core.Maybe Core.Int32),
    -- | Required. Applicability of the promotion to either all products or only specific products.
    productApplicability :: (Core.Maybe Promotion_ProductApplicability),
    -- | Product filter by product type for the promotion.
    productType :: (Core.Maybe [Core.Text]),
    -- | Product filter by product type exclusion for the promotion.
    productTypeExclusion :: (Core.Maybe [Core.Text]),
    -- | Destination ID for the promotion.
    promotionDestinationIds :: (Core.Maybe [Core.Text]),
    -- | String representation of the promotion display dates (deprecated: Use promotion/display/time_period instead).
    promotionDisplayDates :: (Core.Maybe Core.Text),
    -- | TimePeriod representation of the promotion display dates.
    promotionDisplayTimePeriod :: (Core.Maybe TimePeriod),
    -- | String representation of the promotion effective dates (deprecated: Use promotion/effective/time_period instead).
    promotionEffectiveDates :: (Core.Maybe Core.Text),
    -- | Required. TimePeriod representation of the promotion effective dates.
    promotionEffectiveTimePeriod :: (Core.Maybe TimePeriod),
    -- | Required. The user provided promotion id to uniquely identify the promotion.
    promotionId :: (Core.Maybe Core.Text),
    -- | Required. Redemption channel for the promotion. At least one channel is required.
    redemptionChannel :: (Core.Maybe [Promotion_RedemptionChannelItem]),
    -- | Shipping service names for thse promotion.
    shippingServiceNames :: (Core.Maybe [Core.Text]),
    -- | Required. The target country used as part of the unique identifier.
    targetCountry :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Promotion' with the minimum fields required to make a request.
newPromotion ::
  Promotion
newPromotion =
  Promotion
    { brand = Core.Nothing,
      brandExclusion = Core.Nothing,
      contentLanguage = Core.Nothing,
      couponValueType = Core.Nothing,
      freeGiftDescription = Core.Nothing,
      freeGiftItemId = Core.Nothing,
      freeGiftValue = Core.Nothing,
      genericRedemptionCode = Core.Nothing,
      getThisQuantityDiscounted = Core.Nothing,
      id = Core.Nothing,
      itemGroupId = Core.Nothing,
      itemGroupIdExclusion = Core.Nothing,
      itemId = Core.Nothing,
      itemIdExclusion = Core.Nothing,
      limitQuantity = Core.Nothing,
      limitValue = Core.Nothing,
      longTitle = Core.Nothing,
      minimumPurchaseAmount = Core.Nothing,
      minimumPurchaseQuantity = Core.Nothing,
      moneyBudget = Core.Nothing,
      moneyOffAmount = Core.Nothing,
      offerType = Core.Nothing,
      orderLimit = Core.Nothing,
      percentOff = Core.Nothing,
      productApplicability = Core.Nothing,
      productType = Core.Nothing,
      productTypeExclusion = Core.Nothing,
      promotionDestinationIds = Core.Nothing,
      promotionDisplayDates = Core.Nothing,
      promotionDisplayTimePeriod = Core.Nothing,
      promotionEffectiveDates = Core.Nothing,
      promotionEffectiveTimePeriod = Core.Nothing,
      promotionId = Core.Nothing,
      redemptionChannel = Core.Nothing,
      shippingServiceNames = Core.Nothing,
      targetCountry = Core.Nothing
    }

instance Core.FromJSON Promotion where
  parseJSON =
    Core.withObject
      "Promotion"
      ( \o ->
          Promotion
            Core.<$> (o Core..:? "brand" Core..!= Core.mempty)
            Core.<*> (o Core..:? "brandExclusion" Core..!= Core.mempty)
            Core.<*> (o Core..:? "contentLanguage")
            Core.<*> (o Core..:? "couponValueType")
            Core.<*> (o Core..:? "freeGiftDescription")
            Core.<*> (o Core..:? "freeGiftItemId")
            Core.<*> (o Core..:? "freeGiftValue")
            Core.<*> (o Core..:? "genericRedemptionCode")
            Core.<*> (o Core..:? "getThisQuantityDiscounted")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "itemGroupId" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "itemGroupIdExclusion"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "itemId" Core..!= Core.mempty)
            Core.<*> (o Core..:? "itemIdExclusion" Core..!= Core.mempty)
            Core.<*> (o Core..:? "limitQuantity")
            Core.<*> (o Core..:? "limitValue")
            Core.<*> (o Core..:? "longTitle")
            Core.<*> (o Core..:? "minimumPurchaseAmount")
            Core.<*> (o Core..:? "minimumPurchaseQuantity")
            Core.<*> (o Core..:? "moneyBudget")
            Core.<*> (o Core..:? "moneyOffAmount")
            Core.<*> (o Core..:? "offerType")
            Core.<*> (o Core..:? "orderLimit")
            Core.<*> (o Core..:? "percentOff")
            Core.<*> (o Core..:? "productApplicability")
            Core.<*> (o Core..:? "productType" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "productTypeExclusion"
                         Core..!= Core.mempty
                     )
            Core.<*> ( o Core..:? "promotionDestinationIds"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "promotionDisplayDates")
            Core.<*> (o Core..:? "promotionDisplayTimePeriod")
            Core.<*> (o Core..:? "promotionEffectiveDates")
            Core.<*> (o Core..:? "promotionEffectiveTimePeriod")
            Core.<*> (o Core..:? "promotionId")
            Core.<*> (o Core..:? "redemptionChannel" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "shippingServiceNames"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "targetCountry")
      )

instance Core.ToJSON Promotion where
  toJSON Promotion {..} =
    Core.object
      ( Core.catMaybes
          [ ("brand" Core..=) Core.<$> brand,
            ("brandExclusion" Core..=) Core.<$> brandExclusion,
            ("contentLanguage" Core..=) Core.<$> contentLanguage,
            ("couponValueType" Core..=) Core.<$> couponValueType,
            ("freeGiftDescription" Core..=)
              Core.<$> freeGiftDescription,
            ("freeGiftItemId" Core..=) Core.<$> freeGiftItemId,
            ("freeGiftValue" Core..=) Core.<$> freeGiftValue,
            ("genericRedemptionCode" Core..=)
              Core.<$> genericRedemptionCode,
            ("getThisQuantityDiscounted" Core..=)
              Core.<$> getThisQuantityDiscounted,
            ("id" Core..=) Core.<$> id,
            ("itemGroupId" Core..=) Core.<$> itemGroupId,
            ("itemGroupIdExclusion" Core..=)
              Core.<$> itemGroupIdExclusion,
            ("itemId" Core..=) Core.<$> itemId,
            ("itemIdExclusion" Core..=) Core.<$> itemIdExclusion,
            ("limitQuantity" Core..=) Core.<$> limitQuantity,
            ("limitValue" Core..=) Core.<$> limitValue,
            ("longTitle" Core..=) Core.<$> longTitle,
            ("minimumPurchaseAmount" Core..=)
              Core.<$> minimumPurchaseAmount,
            ("minimumPurchaseQuantity" Core..=)
              Core.<$> minimumPurchaseQuantity,
            ("moneyBudget" Core..=) Core.<$> moneyBudget,
            ("moneyOffAmount" Core..=) Core.<$> moneyOffAmount,
            ("offerType" Core..=) Core.<$> offerType,
            ("orderLimit" Core..=) Core.<$> orderLimit,
            ("percentOff" Core..=) Core.<$> percentOff,
            ("productApplicability" Core..=)
              Core.<$> productApplicability,
            ("productType" Core..=) Core.<$> productType,
            ("productTypeExclusion" Core..=)
              Core.<$> productTypeExclusion,
            ("promotionDestinationIds" Core..=)
              Core.<$> promotionDestinationIds,
            ("promotionDisplayDates" Core..=)
              Core.<$> promotionDisplayDates,
            ("promotionDisplayTimePeriod" Core..=)
              Core.<$> promotionDisplayTimePeriod,
            ("promotionEffectiveDates" Core..=)
              Core.<$> promotionEffectiveDates,
            ("promotionEffectiveTimePeriod" Core..=)
              Core.<$> promotionEffectiveTimePeriod,
            ("promotionId" Core..=) Core.<$> promotionId,
            ("redemptionChannel" Core..=)
              Core.<$> redemptionChannel,
            ("shippingServiceNames" Core..=)
              Core.<$> shippingServiceNames,
            ("targetCountry" Core..=) Core.<$> targetCountry
          ]
      )

-- | Settings for Pub\/Sub notifications, all methods require that the caller is a direct user of the merchant center account.
--
-- /See:/ 'newPubsubNotificationSettings' smart constructor.
data PubsubNotificationSettings = PubsubNotificationSettings
  { -- | Cloud pub\/sub topic to which notifications are sent (read-only).
    cloudTopicName :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#pubsubNotificationSettings@\"
    kind :: (Core.Maybe Core.Text),
    -- | List of event types. Acceptable values are: - \"@orderPendingShipment@\"
    registeredEvents :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubsubNotificationSettings' with the minimum fields required to make a request.
newPubsubNotificationSettings ::
  PubsubNotificationSettings
newPubsubNotificationSettings =
  PubsubNotificationSettings
    { cloudTopicName = Core.Nothing,
      kind = Core.Nothing,
      registeredEvents = Core.Nothing
    }

instance Core.FromJSON PubsubNotificationSettings where
  parseJSON =
    Core.withObject
      "PubsubNotificationSettings"
      ( \o ->
          PubsubNotificationSettings
            Core.<$> (o Core..:? "cloudTopicName")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "registeredEvents" Core..!= Core.mempty)
      )

instance Core.ToJSON PubsubNotificationSettings where
  toJSON PubsubNotificationSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("cloudTopicName" Core..=) Core.<$> cloudTopicName,
            ("kind" Core..=) Core.<$> kind,
            ("registeredEvents" Core..=)
              Core.<$> registeredEvents
          ]
      )

--
-- /See:/ 'newRateGroup' smart constructor.
data RateGroup = RateGroup
  { -- | A list of shipping labels defining the products to which this rate group applies to. This is a disjunction: only one of the labels has to match for the rate group to apply. May only be empty for the last rate group of a service. Required.
    applicableShippingLabels :: (Core.Maybe [Core.Text]),
    -- | A list of carrier rates that can be referred to by @mainTable@ or @singleValue@.
    carrierRates :: (Core.Maybe [CarrierRate]),
    -- | A table defining the rate group, when @singleValue@ is not expressive enough. Can only be set if @singleValue@ is not set.
    mainTable :: (Core.Maybe Table),
    -- | Name of the rate group. Optional. If set has to be unique within shipping service.
    name :: (Core.Maybe Core.Text),
    -- | The value of the rate group (for example, flat rate $10). Can only be set if @mainTable@ and @subtables@ are not set.
    singleValue :: (Core.Maybe Value),
    -- | A list of subtables referred to by @mainTable@. Can only be set if @mainTable@ is set.
    subtables :: (Core.Maybe [Table])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RateGroup' with the minimum fields required to make a request.
newRateGroup ::
  RateGroup
newRateGroup =
  RateGroup
    { applicableShippingLabels = Core.Nothing,
      carrierRates = Core.Nothing,
      mainTable = Core.Nothing,
      name = Core.Nothing,
      singleValue = Core.Nothing,
      subtables = Core.Nothing
    }

instance Core.FromJSON RateGroup where
  parseJSON =
    Core.withObject
      "RateGroup"
      ( \o ->
          RateGroup
            Core.<$> ( o Core..:? "applicableShippingLabels"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "carrierRates" Core..!= Core.mempty)
            Core.<*> (o Core..:? "mainTable")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "singleValue")
            Core.<*> (o Core..:? "subtables" Core..!= Core.mempty)
      )

instance Core.ToJSON RateGroup where
  toJSON RateGroup {..} =
    Core.object
      ( Core.catMaybes
          [ ("applicableShippingLabels" Core..=)
              Core.<$> applicableShippingLabels,
            ("carrierRates" Core..=) Core.<$> carrierRates,
            ("mainTable" Core..=) Core.<$> mainTable,
            ("name" Core..=) Core.<$> name,
            ("singleValue" Core..=) Core.<$> singleValue,
            ("subtables" Core..=) Core.<$> subtables
          ]
      )

--
-- /See:/ 'newRefundReason' smart constructor.
data RefundReason = RefundReason
  { -- | Description of the reason.
    description :: (Core.Maybe Core.Text),
    -- | Code of the refund reason. Acceptable values are: - \"@adjustment@\" - \"@autoPostInternal@\" - \"@autoPostInvalidBillingAddress@\" - \"@autoPostNoInventory@\" - \"@autoPostPriceError@\" - \"@autoPostUndeliverableShippingAddress@\" - \"@couponAbuse@\" - \"@courtesyAdjustment@\" - \"@customerCanceled@\" - \"@customerDiscretionaryReturn@\" - \"@customerInitiatedMerchantCancel@\" - \"@customerSupportRequested@\" - \"@deliveredLateByCarrier@\" - \"@deliveredTooLate@\" - \"@expiredItem@\" - \"@failToPushOrderGoogleError@\" - \"@failToPushOrderMerchantError@\" - \"@failToPushOrderMerchantFulfillmentError@\" - \"@failToPushOrderToMerchant@\" - \"@failToPushOrderToMerchantOutOfStock@\" - \"@feeAdjustment@\" - \"@invalidCoupon@\" - \"@lateShipmentCredit@\" - \"@malformedShippingAddress@\" - \"@merchantDidNotShipOnTime@\" - \"@noInventory@\" - \"@orderTimeout@\" - \"@other@\" - \"@paymentAbuse@\" - \"@paymentDeclined@\" - \"@priceAdjustment@\" - \"@priceError@\" - \"@productArrivedDamaged@\" -
    -- \"@productNotAsDescribed@\" - \"@promoReallocation@\" - \"@qualityNotAsExpected@\" - \"@returnRefundAbuse@\" - \"@shippingCostAdjustment@\" - \"@shippingPriceError@\" - \"@taxAdjustment@\" - \"@taxError@\" - \"@undeliverableShippingAddress@\" - \"@unsupportedPoBoxAddress@\" - \"@wrongProductShipped@\"
    reasonCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RefundReason' with the minimum fields required to make a request.
newRefundReason ::
  RefundReason
newRefundReason =
  RefundReason {description = Core.Nothing, reasonCode = Core.Nothing}

instance Core.FromJSON RefundReason where
  parseJSON =
    Core.withObject
      "RefundReason"
      ( \o ->
          RefundReason
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "reasonCode")
      )

instance Core.ToJSON RefundReason where
  toJSON RefundReason {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("reasonCode" Core..=) Core.<$> reasonCode
          ]
      )

-- | Represents a geographic region that you can use as a target with both the @RegionalInventory@ and @ShippingSettings@ services. You can define regions as collections of either postal codes or, in some countries, using predefined geotargets.
--
-- /See:/ 'newRegion' smart constructor.
data Region = Region
  { -- | The display name of the region.
    displayName :: (Core.Maybe Core.Text),
    -- | A list of geotargets that defines the region area.
    geotargetArea :: (Core.Maybe RegionGeoTargetArea),
    -- | Output only. Immutable. Merchant that owns the region.
    merchantId :: (Core.Maybe Core.Int64),
    -- | A list of postal codes that defines the region area.
    postalCodeArea :: (Core.Maybe RegionPostalCodeArea),
    -- | Output only. Immutable. The ID uniquely identifying each region.
    regionId :: (Core.Maybe Core.Text),
    -- | Output only. Indicates if the region is eligible to use in the Regional Inventory configuration.
    regionalInventoryEligible :: (Core.Maybe Core.Bool),
    -- | Output only. Indicates if the region is eligible to use in the Shipping Services configuration.
    shippingEligible :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Region' with the minimum fields required to make a request.
newRegion ::
  Region
newRegion =
  Region
    { displayName = Core.Nothing,
      geotargetArea = Core.Nothing,
      merchantId = Core.Nothing,
      postalCodeArea = Core.Nothing,
      regionId = Core.Nothing,
      regionalInventoryEligible = Core.Nothing,
      shippingEligible = Core.Nothing
    }

instance Core.FromJSON Region where
  parseJSON =
    Core.withObject
      "Region"
      ( \o ->
          Region
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "geotargetArea")
            Core.<*> (o Core..:? "merchantId")
            Core.<*> (o Core..:? "postalCodeArea")
            Core.<*> (o Core..:? "regionId")
            Core.<*> (o Core..:? "regionalInventoryEligible")
            Core.<*> (o Core..:? "shippingEligible")
      )

instance Core.ToJSON Region where
  toJSON Region {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("geotargetArea" Core..=) Core.<$> geotargetArea,
            ("merchantId" Core..=) Core.. Core.AsText
              Core.<$> merchantId,
            ("postalCodeArea" Core..=) Core.<$> postalCodeArea,
            ("regionId" Core..=) Core.<$> regionId,
            ("regionalInventoryEligible" Core..=)
              Core.<$> regionalInventoryEligible,
            ("shippingEligible" Core..=)
              Core.<$> shippingEligible
          ]
      )

-- | A list of geotargets that defines the region area.
--
-- /See:/ 'newRegionGeoTargetArea' smart constructor.
newtype RegionGeoTargetArea = RegionGeoTargetArea
  { -- | Required. A non-empty list of <https://developers.google.com/adwords/api/docs/appendix/geotargeting location IDs>. They must all be of the same location type (e.g., state).
    geotargetCriteriaIds :: (Core.Maybe [Core.Int64])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RegionGeoTargetArea' with the minimum fields required to make a request.
newRegionGeoTargetArea ::
  RegionGeoTargetArea
newRegionGeoTargetArea =
  RegionGeoTargetArea {geotargetCriteriaIds = Core.Nothing}

instance Core.FromJSON RegionGeoTargetArea where
  parseJSON =
    Core.withObject
      "RegionGeoTargetArea"
      ( \o ->
          RegionGeoTargetArea
            Core.<$> ( o Core..:? "geotargetCriteriaIds"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON RegionGeoTargetArea where
  toJSON RegionGeoTargetArea {..} =
    Core.object
      ( Core.catMaybes
          [ ("geotargetCriteriaIds" Core..=)
              Core.<$> geotargetCriteriaIds
          ]
      )

-- | A list of postal codes that defines the region area. Note: All regions defined using postal codes are accessible via the account\'s @ShippingSettings.postalCodeGroups@ resource.
--
-- /See:/ 'newRegionPostalCodeArea' smart constructor.
data RegionPostalCodeArea = RegionPostalCodeArea
  { -- | Required. A range of postal codes.
    postalCodes :: (Core.Maybe [RegionPostalCodeAreaPostalCodeRange]),
    -- | Required. CLDR territory code or the country the postal code group applies to.
    regionCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RegionPostalCodeArea' with the minimum fields required to make a request.
newRegionPostalCodeArea ::
  RegionPostalCodeArea
newRegionPostalCodeArea =
  RegionPostalCodeArea {postalCodes = Core.Nothing, regionCode = Core.Nothing}

instance Core.FromJSON RegionPostalCodeArea where
  parseJSON =
    Core.withObject
      "RegionPostalCodeArea"
      ( \o ->
          RegionPostalCodeArea
            Core.<$> (o Core..:? "postalCodes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "regionCode")
      )

instance Core.ToJSON RegionPostalCodeArea where
  toJSON RegionPostalCodeArea {..} =
    Core.object
      ( Core.catMaybes
          [ ("postalCodes" Core..=) Core.<$> postalCodes,
            ("regionCode" Core..=) Core.<$> regionCode
          ]
      )

-- | A range of postal codes that defines the region area.
--
-- /See:/ 'newRegionPostalCodeAreaPostalCodeRange' smart constructor.
data RegionPostalCodeAreaPostalCodeRange = RegionPostalCodeAreaPostalCodeRange
  { -- | Required. A postal code or a pattern of the form prefix* denoting the inclusive lower bound of the range defining the area. Examples values: \"94108\", \"9410/\", \"9/\".
    begin :: (Core.Maybe Core.Text),
    -- | Optional. A postal code or a pattern of the form prefix* denoting the inclusive upper bound of the range defining the area. It must have the same length as postalCodeRangeBegin: if postalCodeRangeBegin is a postal code then postalCodeRangeEnd must be a postal code too; if postalCodeRangeBegin is a pattern then postalCodeRangeEnd must be a pattern with the same prefix length. Optional: if not set, then the area is defined as being all the postal codes matching postalCodeRangeBegin.
    end :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RegionPostalCodeAreaPostalCodeRange' with the minimum fields required to make a request.
newRegionPostalCodeAreaPostalCodeRange ::
  RegionPostalCodeAreaPostalCodeRange
newRegionPostalCodeAreaPostalCodeRange =
  RegionPostalCodeAreaPostalCodeRange {begin = Core.Nothing, end = Core.Nothing}

instance
  Core.FromJSON
    RegionPostalCodeAreaPostalCodeRange
  where
  parseJSON =
    Core.withObject
      "RegionPostalCodeAreaPostalCodeRange"
      ( \o ->
          RegionPostalCodeAreaPostalCodeRange
            Core.<$> (o Core..:? "begin") Core.<*> (o Core..:? "end")
      )

instance
  Core.ToJSON
    RegionPostalCodeAreaPostalCodeRange
  where
  toJSON RegionPostalCodeAreaPostalCodeRange {..} =
    Core.object
      ( Core.catMaybes
          [ ("begin" Core..=) Core.<$> begin,
            ("end" Core..=) Core.<$> end
          ]
      )

-- | Regional inventory resource. contains the regional name and all attributes which are overridden for the specified region.
--
-- /See:/ 'newRegionalInventory' smart constructor.
data RegionalInventory = RegionalInventory
  { -- | The availability of the product.
    availability :: (Core.Maybe Core.Text),
    -- | A list of custom (merchant-provided) attributes. It can also be used for submitting any attribute of the feed specification in its generic form.
    customAttributes :: (Core.Maybe [CustomAttribute]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#regionalInventory@\".
    kind :: (Core.Maybe Core.Text),
    -- | The price of the product.
    price :: (Core.Maybe Price),
    -- | The ID uniquely identifying each region.
    regionId :: (Core.Maybe Core.Text),
    -- | The sale price of the product. Mandatory if @sale_price_effective_date@ is defined.
    salePrice :: (Core.Maybe Price),
    -- | A date range represented by a pair of ISO 8601 dates separated by a space, comma, or slash. Both dates might be specified as \'null\' if undecided.
    salePriceEffectiveDate :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RegionalInventory' with the minimum fields required to make a request.
newRegionalInventory ::
  RegionalInventory
newRegionalInventory =
  RegionalInventory
    { availability = Core.Nothing,
      customAttributes = Core.Nothing,
      kind = Core.Nothing,
      price = Core.Nothing,
      regionId = Core.Nothing,
      salePrice = Core.Nothing,
      salePriceEffectiveDate = Core.Nothing
    }

instance Core.FromJSON RegionalInventory where
  parseJSON =
    Core.withObject
      "RegionalInventory"
      ( \o ->
          RegionalInventory
            Core.<$> (o Core..:? "availability")
            Core.<*> (o Core..:? "customAttributes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "price")
            Core.<*> (o Core..:? "regionId")
            Core.<*> (o Core..:? "salePrice")
            Core.<*> (o Core..:? "salePriceEffectiveDate")
      )

instance Core.ToJSON RegionalInventory where
  toJSON RegionalInventory {..} =
    Core.object
      ( Core.catMaybes
          [ ("availability" Core..=) Core.<$> availability,
            ("customAttributes" Core..=)
              Core.<$> customAttributes,
            ("kind" Core..=) Core.<$> kind,
            ("price" Core..=) Core.<$> price,
            ("regionId" Core..=) Core.<$> regionId,
            ("salePrice" Core..=) Core.<$> salePrice,
            ("salePriceEffectiveDate" Core..=)
              Core.<$> salePriceEffectiveDate
          ]
      )

--
-- /See:/ 'newRegionalinventoryCustomBatchRequest' smart constructor.
newtype RegionalinventoryCustomBatchRequest = RegionalinventoryCustomBatchRequest
  { -- | The request entries to be processed in the batch.
    entries :: (Core.Maybe [RegionalinventoryCustomBatchRequestEntry])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RegionalinventoryCustomBatchRequest' with the minimum fields required to make a request.
newRegionalinventoryCustomBatchRequest ::
  RegionalinventoryCustomBatchRequest
newRegionalinventoryCustomBatchRequest =
  RegionalinventoryCustomBatchRequest {entries = Core.Nothing}

instance
  Core.FromJSON
    RegionalinventoryCustomBatchRequest
  where
  parseJSON =
    Core.withObject
      "RegionalinventoryCustomBatchRequest"
      ( \o ->
          RegionalinventoryCustomBatchRequest
            Core.<$> (o Core..:? "entries" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    RegionalinventoryCustomBatchRequest
  where
  toJSON RegionalinventoryCustomBatchRequest {..} =
    Core.object
      ( Core.catMaybes
          [("entries" Core..=) Core.<$> entries]
      )

-- | A batch entry encoding a single non-batch regional inventory request.
--
-- /See:/ 'newRegionalinventoryCustomBatchRequestEntry' smart constructor.
data RegionalinventoryCustomBatchRequestEntry = RegionalinventoryCustomBatchRequestEntry
  { -- | An entry ID, unique within the batch request.
    batchId :: (Core.Maybe Core.Word32),
    -- | The ID of the managing account.
    merchantId :: (Core.Maybe Core.Word64),
    -- | Method of the batch request entry. Acceptable values are: - \"@insert@\"
    method :: (Core.Maybe Core.Text),
    -- | The ID of the product for which to update price and availability.
    productId :: (Core.Maybe Core.Text),
    -- | Price and availability of the product.
    regionalInventory :: (Core.Maybe RegionalInventory)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RegionalinventoryCustomBatchRequestEntry' with the minimum fields required to make a request.
newRegionalinventoryCustomBatchRequestEntry ::
  RegionalinventoryCustomBatchRequestEntry
newRegionalinventoryCustomBatchRequestEntry =
  RegionalinventoryCustomBatchRequestEntry
    { batchId = Core.Nothing,
      merchantId = Core.Nothing,
      method = Core.Nothing,
      productId = Core.Nothing,
      regionalInventory = Core.Nothing
    }

instance
  Core.FromJSON
    RegionalinventoryCustomBatchRequestEntry
  where
  parseJSON =
    Core.withObject
      "RegionalinventoryCustomBatchRequestEntry"
      ( \o ->
          RegionalinventoryCustomBatchRequestEntry
            Core.<$> (o Core..:? "batchId")
            Core.<*> (o Core..:? "merchantId")
            Core.<*> (o Core..:? "method")
            Core.<*> (o Core..:? "productId")
            Core.<*> (o Core..:? "regionalInventory")
      )

instance
  Core.ToJSON
    RegionalinventoryCustomBatchRequestEntry
  where
  toJSON RegionalinventoryCustomBatchRequestEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchId" Core..=) Core.<$> batchId,
            ("merchantId" Core..=) Core.. Core.AsText
              Core.<$> merchantId,
            ("method" Core..=) Core.<$> method,
            ("productId" Core..=) Core.<$> productId,
            ("regionalInventory" Core..=)
              Core.<$> regionalInventory
          ]
      )

--
-- /See:/ 'newRegionalinventoryCustomBatchResponse' smart constructor.
data RegionalinventoryCustomBatchResponse = RegionalinventoryCustomBatchResponse
  { -- | The result of the execution of the batch requests.
    entries :: (Core.Maybe [RegionalinventoryCustomBatchResponseEntry]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#regionalinventoryCustomBatchResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RegionalinventoryCustomBatchResponse' with the minimum fields required to make a request.
newRegionalinventoryCustomBatchResponse ::
  RegionalinventoryCustomBatchResponse
newRegionalinventoryCustomBatchResponse =
  RegionalinventoryCustomBatchResponse
    { entries = Core.Nothing,
      kind = Core.Nothing
    }

instance
  Core.FromJSON
    RegionalinventoryCustomBatchResponse
  where
  parseJSON =
    Core.withObject
      "RegionalinventoryCustomBatchResponse"
      ( \o ->
          RegionalinventoryCustomBatchResponse
            Core.<$> (o Core..:? "entries" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind")
      )

instance
  Core.ToJSON
    RegionalinventoryCustomBatchResponse
  where
  toJSON RegionalinventoryCustomBatchResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("entries" Core..=) Core.<$> entries,
            ("kind" Core..=) Core.<$> kind
          ]
      )

-- | A batch entry encoding a single non-batch regional inventory response.
--
-- /See:/ 'newRegionalinventoryCustomBatchResponseEntry' smart constructor.
data RegionalinventoryCustomBatchResponseEntry = RegionalinventoryCustomBatchResponseEntry
  { -- | The ID of the request entry this entry responds to.
    batchId :: (Core.Maybe Core.Word32),
    -- | A list of errors defined if and only if the request failed.
    errors :: (Core.Maybe Errors),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#regionalinventoryCustomBatchResponseEntry@\".
    kind :: (Core.Maybe Core.Text),
    -- | Price and availability of the product.
    regionalInventory :: (Core.Maybe RegionalInventory)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RegionalinventoryCustomBatchResponseEntry' with the minimum fields required to make a request.
newRegionalinventoryCustomBatchResponseEntry ::
  RegionalinventoryCustomBatchResponseEntry
newRegionalinventoryCustomBatchResponseEntry =
  RegionalinventoryCustomBatchResponseEntry
    { batchId = Core.Nothing,
      errors = Core.Nothing,
      kind = Core.Nothing,
      regionalInventory = Core.Nothing
    }

instance
  Core.FromJSON
    RegionalinventoryCustomBatchResponseEntry
  where
  parseJSON =
    Core.withObject
      "RegionalinventoryCustomBatchResponseEntry"
      ( \o ->
          RegionalinventoryCustomBatchResponseEntry
            Core.<$> (o Core..:? "batchId")
            Core.<*> (o Core..:? "errors")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "regionalInventory")
      )

instance
  Core.ToJSON
    RegionalinventoryCustomBatchResponseEntry
  where
  toJSON RegionalinventoryCustomBatchResponseEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchId" Core..=) Core.<$> batchId,
            ("errors" Core..=) Core.<$> errors,
            ("kind" Core..=) Core.<$> kind,
            ("regionalInventory" Core..=)
              Core.<$> regionalInventory
          ]
      )

-- | Result row returned from the search query.
--
-- /See:/ 'newReportRow' smart constructor.
data ReportRow = ReportRow
  { -- | Metrics requested by the merchant in the query. Metric values are only set for metrics requested explicitly in the query.
    metrics :: (Core.Maybe Metrics),
    -- | Segmentation dimensions requested by the merchant in the query. Dimension values are only set for dimensions requested explicitly in the query.
    segments :: (Core.Maybe Segments)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReportRow' with the minimum fields required to make a request.
newReportRow ::
  ReportRow
newReportRow = ReportRow {metrics = Core.Nothing, segments = Core.Nothing}

instance Core.FromJSON ReportRow where
  parseJSON =
    Core.withObject
      "ReportRow"
      ( \o ->
          ReportRow
            Core.<$> (o Core..:? "metrics")
            Core.<*> (o Core..:? "segments")
      )

instance Core.ToJSON ReportRow where
  toJSON ReportRow {..} =
    Core.object
      ( Core.catMaybes
          [ ("metrics" Core..=) Core.<$> metrics,
            ("segments" Core..=) Core.<$> segments
          ]
      )

-- | Resource that represents a daily Repricing product report. Each report contains stats for a single type of Repricing rule for a single product on a given day. If there are multiple rules of the same type for the product on that day, the report lists all the rules by rule ids, combines the stats, and paginates the results by date. To retrieve the stats of a particular rule, provide the rule_id in the request.
--
-- /See:/ 'newRepricingProductReport' smart constructor.
data RepricingProductReport = RepricingProductReport
  { -- | Total count of Repricer applications. This value captures how many times the rule of this type was applied to this product during this reporting period.
    applicationCount :: (Core.Maybe Core.Int64),
    -- | Stats specific to buybox winning rules for product report (deprecated).
    buyboxWinningProductStats :: (Core.Maybe RepricingProductReportBuyboxWinningProductStats),
    -- | Date of the stats in this report. The report starts and ends according to the merchant\'s timezone.
    date :: (Core.Maybe Date),
    -- | Maximum displayed price after repriced during this reporting period.
    highWatermark :: (Core.Maybe PriceAmount),
    -- | List of all reasons the rule did not apply to the product during the specified reporting period.
    inapplicabilityDetails :: (Core.Maybe [InapplicabilityDetails]),
    -- | Minimum displayed price after repriced during this reporting period.
    lowWatermark :: (Core.Maybe PriceAmount),
    -- | Total unit count of impacted products ordered while the rule was active on the date of the report. This count includes all orders that were started while the rule was active, even if the rule was no longer active when the order was completed.
    orderItemCount :: (Core.Maybe Core.Int32),
    -- | Ids of the Repricing rule for this report.
    ruleIds :: (Core.Maybe [Core.Text]),
    -- | Total GMV generated by impacted products while the rule was active on the date of the report. This value includes all orders that were started while the rule was active, even if the rule was no longer active when the order was completed.
    totalGmv :: (Core.Maybe PriceAmount),
    -- | Type of the rule.
    type' :: (Core.Maybe RepricingProductReport_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RepricingProductReport' with the minimum fields required to make a request.
newRepricingProductReport ::
  RepricingProductReport
newRepricingProductReport =
  RepricingProductReport
    { applicationCount = Core.Nothing,
      buyboxWinningProductStats = Core.Nothing,
      date = Core.Nothing,
      highWatermark = Core.Nothing,
      inapplicabilityDetails = Core.Nothing,
      lowWatermark = Core.Nothing,
      orderItemCount = Core.Nothing,
      ruleIds = Core.Nothing,
      totalGmv = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON RepricingProductReport where
  parseJSON =
    Core.withObject
      "RepricingProductReport"
      ( \o ->
          RepricingProductReport
            Core.<$> (o Core..:? "applicationCount")
            Core.<*> (o Core..:? "buyboxWinningProductStats")
            Core.<*> (o Core..:? "date")
            Core.<*> (o Core..:? "highWatermark")
            Core.<*> ( o Core..:? "inapplicabilityDetails"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "lowWatermark")
            Core.<*> (o Core..:? "orderItemCount")
            Core.<*> (o Core..:? "ruleIds" Core..!= Core.mempty)
            Core.<*> (o Core..:? "totalGmv")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON RepricingProductReport where
  toJSON RepricingProductReport {..} =
    Core.object
      ( Core.catMaybes
          [ ("applicationCount" Core..=) Core.. Core.AsText
              Core.<$> applicationCount,
            ("buyboxWinningProductStats" Core..=)
              Core.<$> buyboxWinningProductStats,
            ("date" Core..=) Core.<$> date,
            ("highWatermark" Core..=) Core.<$> highWatermark,
            ("inapplicabilityDetails" Core..=)
              Core.<$> inapplicabilityDetails,
            ("lowWatermark" Core..=) Core.<$> lowWatermark,
            ("orderItemCount" Core..=) Core.<$> orderItemCount,
            ("ruleIds" Core..=) Core.<$> ruleIds,
            ("totalGmv" Core..=) Core.<$> totalGmv,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Stats specific to buybox winning rules for product report.
--
-- /See:/ 'newRepricingProductReportBuyboxWinningProductStats' smart constructor.
newtype RepricingProductReportBuyboxWinningProductStats = RepricingProductReportBuyboxWinningProductStats
  { -- | Number of times this product won the buybox with these rules during this time period.
    buyboxWinsCount :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RepricingProductReportBuyboxWinningProductStats' with the minimum fields required to make a request.
newRepricingProductReportBuyboxWinningProductStats ::
  RepricingProductReportBuyboxWinningProductStats
newRepricingProductReportBuyboxWinningProductStats =
  RepricingProductReportBuyboxWinningProductStats
    { buyboxWinsCount = Core.Nothing
    }

instance
  Core.FromJSON
    RepricingProductReportBuyboxWinningProductStats
  where
  parseJSON =
    Core.withObject
      "RepricingProductReportBuyboxWinningProductStats"
      ( \o ->
          RepricingProductReportBuyboxWinningProductStats
            Core.<$> (o Core..:? "buyboxWinsCount")
      )

instance
  Core.ToJSON
    RepricingProductReportBuyboxWinningProductStats
  where
  toJSON
    RepricingProductReportBuyboxWinningProductStats {..} =
      Core.object
        ( Core.catMaybes
            [ ("buyboxWinsCount" Core..=)
                Core.<$> buyboxWinsCount
            ]
        )

-- | Represents a repricing rule. A repricing rule is used by shopping serving to adjust transactable offer prices if conditions are met. Next ID: 24
--
-- /See:/ 'newRepricingRule' smart constructor.
data RepricingRule = RepricingRule
  { -- | The rule definition for TYPE/COGS/BASED. Required when the rule type is TYPE/COGS/BASED.
    cogsBasedRule :: (Core.Maybe RepricingRuleCostOfGoodsSaleRule),
    -- | Required. Immutable. <http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml CLDR country code> (e.g. \"US\").
    countryCode :: (Core.Maybe Core.Text),
    -- | Required. Time period when the rule should take effect.
    effectiveTimePeriod :: (Core.Maybe RepricingRuleEffectiveTime),
    -- | Required. Match criteria for the eligible offers.
    eligibleOfferMatcher :: (Core.Maybe RepricingRuleEligibleOfferMatcher),
    -- | Required. Immutable. The two-letter ISO 639-1 language code associated with the repricing rule.
    languageCode :: (Core.Maybe Core.Text),
    -- | Output only. Immutable. Merchant that owns the repricing rule.
    merchantId :: (Core.Maybe Core.Int64),
    -- | Represents whether a rule is paused. A paused rule will behave like a non-paused rule within CRUD operations, with the major difference that a paused rule will not be evaluated and will have no effect on offers.
    paused :: (Core.Maybe Core.Bool),
    -- | Required. Restriction of the rule appliance.
    restriction :: (Core.Maybe RepricingRuleRestriction),
    -- | Output only. Immutable. The ID to uniquely identify each repricing rule.
    ruleId :: (Core.Maybe Core.Text),
    -- | The rule definition for TYPE/STATS/BASED. Required when the rule type is TYPE/STATS/BASED.
    statsBasedRule :: (Core.Maybe RepricingRuleStatsBasedRule),
    -- | The title for the rule.
    title :: (Core.Maybe Core.Text),
    -- | Required. Immutable. The type of the rule.
    type' :: (Core.Maybe RepricingRule_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RepricingRule' with the minimum fields required to make a request.
newRepricingRule ::
  RepricingRule
newRepricingRule =
  RepricingRule
    { cogsBasedRule = Core.Nothing,
      countryCode = Core.Nothing,
      effectiveTimePeriod = Core.Nothing,
      eligibleOfferMatcher = Core.Nothing,
      languageCode = Core.Nothing,
      merchantId = Core.Nothing,
      paused = Core.Nothing,
      restriction = Core.Nothing,
      ruleId = Core.Nothing,
      statsBasedRule = Core.Nothing,
      title = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON RepricingRule where
  parseJSON =
    Core.withObject
      "RepricingRule"
      ( \o ->
          RepricingRule
            Core.<$> (o Core..:? "cogsBasedRule")
            Core.<*> (o Core..:? "countryCode")
            Core.<*> (o Core..:? "effectiveTimePeriod")
            Core.<*> (o Core..:? "eligibleOfferMatcher")
            Core.<*> (o Core..:? "languageCode")
            Core.<*> (o Core..:? "merchantId")
            Core.<*> (o Core..:? "paused")
            Core.<*> (o Core..:? "restriction")
            Core.<*> (o Core..:? "ruleId")
            Core.<*> (o Core..:? "statsBasedRule")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON RepricingRule where
  toJSON RepricingRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("cogsBasedRule" Core..=) Core.<$> cogsBasedRule,
            ("countryCode" Core..=) Core.<$> countryCode,
            ("effectiveTimePeriod" Core..=)
              Core.<$> effectiveTimePeriod,
            ("eligibleOfferMatcher" Core..=)
              Core.<$> eligibleOfferMatcher,
            ("languageCode" Core..=) Core.<$> languageCode,
            ("merchantId" Core..=) Core.. Core.AsText
              Core.<$> merchantId,
            ("paused" Core..=) Core.<$> paused,
            ("restriction" Core..=) Core.<$> restriction,
            ("ruleId" Core..=) Core.<$> ruleId,
            ("statsBasedRule" Core..=) Core.<$> statsBasedRule,
            ("title" Core..=) Core.<$> title,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | A repricing rule that changes the sale price based on cost of goods sale.
--
-- /See:/ 'newRepricingRuleCostOfGoodsSaleRule' smart constructor.
data RepricingRuleCostOfGoodsSaleRule = RepricingRuleCostOfGoodsSaleRule
  { -- | The percent change against the COGS. Ex: 20 would mean to set the adjusted price 1.2X of the COGS data.
    percentageDelta :: (Core.Maybe Core.Int32),
    -- | The price delta against the COGS. E.g. 2 means $2 more of the COGS.
    priceDelta :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RepricingRuleCostOfGoodsSaleRule' with the minimum fields required to make a request.
newRepricingRuleCostOfGoodsSaleRule ::
  RepricingRuleCostOfGoodsSaleRule
newRepricingRuleCostOfGoodsSaleRule =
  RepricingRuleCostOfGoodsSaleRule
    { percentageDelta = Core.Nothing,
      priceDelta = Core.Nothing
    }

instance
  Core.FromJSON
    RepricingRuleCostOfGoodsSaleRule
  where
  parseJSON =
    Core.withObject
      "RepricingRuleCostOfGoodsSaleRule"
      ( \o ->
          RepricingRuleCostOfGoodsSaleRule
            Core.<$> (o Core..:? "percentageDelta")
            Core.<*> (o Core..:? "priceDelta")
      )

instance Core.ToJSON RepricingRuleCostOfGoodsSaleRule where
  toJSON RepricingRuleCostOfGoodsSaleRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("percentageDelta" Core..=)
              Core.<$> percentageDelta,
            ("priceDelta" Core..=) Core.<$> priceDelta
          ]
      )

--
-- /See:/ 'newRepricingRuleEffectiveTime' smart constructor.
newtype RepricingRuleEffectiveTime = RepricingRuleEffectiveTime
  { -- | A list of fixed time periods combined with OR. The maximum number of entries is limited to 5.
    fixedTimePeriods :: (Core.Maybe [RepricingRuleEffectiveTimeFixedTimePeriod])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RepricingRuleEffectiveTime' with the minimum fields required to make a request.
newRepricingRuleEffectiveTime ::
  RepricingRuleEffectiveTime
newRepricingRuleEffectiveTime =
  RepricingRuleEffectiveTime {fixedTimePeriods = Core.Nothing}

instance Core.FromJSON RepricingRuleEffectiveTime where
  parseJSON =
    Core.withObject
      "RepricingRuleEffectiveTime"
      ( \o ->
          RepricingRuleEffectiveTime
            Core.<$> (o Core..:? "fixedTimePeriods" Core..!= Core.mempty)
      )

instance Core.ToJSON RepricingRuleEffectiveTime where
  toJSON RepricingRuleEffectiveTime {..} =
    Core.object
      ( Core.catMaybes
          [ ("fixedTimePeriods" Core..=)
              Core.<$> fixedTimePeriods
          ]
      )

-- | Definition of a fixed time period.
--
-- /See:/ 'newRepricingRuleEffectiveTimeFixedTimePeriod' smart constructor.
data RepricingRuleEffectiveTimeFixedTimePeriod = RepricingRuleEffectiveTimeFixedTimePeriod
  { -- | The end time (exclusive) of the period. It can only be hour granularity.
    endTime :: (Core.Maybe Core.DateTime),
    -- | The start time (inclusive) of the period. It can only be hour granularity.
    startTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RepricingRuleEffectiveTimeFixedTimePeriod' with the minimum fields required to make a request.
newRepricingRuleEffectiveTimeFixedTimePeriod ::
  RepricingRuleEffectiveTimeFixedTimePeriod
newRepricingRuleEffectiveTimeFixedTimePeriod =
  RepricingRuleEffectiveTimeFixedTimePeriod
    { endTime = Core.Nothing,
      startTime = Core.Nothing
    }

instance
  Core.FromJSON
    RepricingRuleEffectiveTimeFixedTimePeriod
  where
  parseJSON =
    Core.withObject
      "RepricingRuleEffectiveTimeFixedTimePeriod"
      ( \o ->
          RepricingRuleEffectiveTimeFixedTimePeriod
            Core.<$> (o Core..:? "endTime")
            Core.<*> (o Core..:? "startTime")
      )

instance
  Core.ToJSON
    RepricingRuleEffectiveTimeFixedTimePeriod
  where
  toJSON RepricingRuleEffectiveTimeFixedTimePeriod {..} =
    Core.object
      ( Core.catMaybes
          [ ("endTime" Core..=) Core.<$> endTime,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | Matcher that specifies eligible offers. When the USE/FEED/ATTRIBUTE option is selected, only the repricing/rule/id attribute on the product feed is used to specify offer-rule mapping. When the CUSTOM_FILTER option is selected, only the */matcher fields are used to filter the offers for offer-rule mapping. If the CUSTOM/FILTER option is selected, an offer needs to satisfy each custom filter matcher to be eligible for a rule. Size limit: the sum of the number of entries in all the matchers should not exceed 20. For example, there can be 15 product ids and 5 brands, but not 10 product ids and 11 brands.
--
-- /See:/ 'newRepricingRuleEligibleOfferMatcher' smart constructor.
data RepricingRuleEligibleOfferMatcher = RepricingRuleEligibleOfferMatcher
  { -- | Filter by the brand.
    brandMatcher :: (Core.Maybe RepricingRuleEligibleOfferMatcherStringMatcher),
    -- | Filter by the item group id.
    itemGroupIdMatcher :: (Core.Maybe RepricingRuleEligibleOfferMatcherStringMatcher),
    -- | Determines whether to use the custom matchers or the product feed attribute \"repricing/rule/id\" to specify offer-rule mapping.
    matcherOption :: (Core.Maybe RepricingRuleEligibleOfferMatcher_MatcherOption),
    -- | Filter by the offer id.
    offerIdMatcher :: (Core.Maybe RepricingRuleEligibleOfferMatcherStringMatcher),
    -- | When true, the rule won\'t be applied to offers with active promotions.
    skipWhenOnPromotion :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RepricingRuleEligibleOfferMatcher' with the minimum fields required to make a request.
newRepricingRuleEligibleOfferMatcher ::
  RepricingRuleEligibleOfferMatcher
newRepricingRuleEligibleOfferMatcher =
  RepricingRuleEligibleOfferMatcher
    { brandMatcher = Core.Nothing,
      itemGroupIdMatcher = Core.Nothing,
      matcherOption = Core.Nothing,
      offerIdMatcher = Core.Nothing,
      skipWhenOnPromotion = Core.Nothing
    }

instance
  Core.FromJSON
    RepricingRuleEligibleOfferMatcher
  where
  parseJSON =
    Core.withObject
      "RepricingRuleEligibleOfferMatcher"
      ( \o ->
          RepricingRuleEligibleOfferMatcher
            Core.<$> (o Core..:? "brandMatcher")
            Core.<*> (o Core..:? "itemGroupIdMatcher")
            Core.<*> (o Core..:? "matcherOption")
            Core.<*> (o Core..:? "offerIdMatcher")
            Core.<*> (o Core..:? "skipWhenOnPromotion")
      )

instance
  Core.ToJSON
    RepricingRuleEligibleOfferMatcher
  where
  toJSON RepricingRuleEligibleOfferMatcher {..} =
    Core.object
      ( Core.catMaybes
          [ ("brandMatcher" Core..=) Core.<$> brandMatcher,
            ("itemGroupIdMatcher" Core..=)
              Core.<$> itemGroupIdMatcher,
            ("matcherOption" Core..=) Core.<$> matcherOption,
            ("offerIdMatcher" Core..=) Core.<$> offerIdMatcher,
            ("skipWhenOnPromotion" Core..=)
              Core.<$> skipWhenOnPromotion
          ]
      )

-- | Matcher by string attributes.
--
-- /See:/ 'newRepricingRuleEligibleOfferMatcherStringMatcher' smart constructor.
newtype RepricingRuleEligibleOfferMatcherStringMatcher = RepricingRuleEligibleOfferMatcherStringMatcher
  { -- | String attributes, as long as such attribute of an offer is one of the string attribute values, the offer is considered as passing the matcher. The string matcher checks an offer for inclusivity in the string attributes, not equality. Only literal string matching is supported, no regex.
    strAttributes :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RepricingRuleEligibleOfferMatcherStringMatcher' with the minimum fields required to make a request.
newRepricingRuleEligibleOfferMatcherStringMatcher ::
  RepricingRuleEligibleOfferMatcherStringMatcher
newRepricingRuleEligibleOfferMatcherStringMatcher =
  RepricingRuleEligibleOfferMatcherStringMatcher {strAttributes = Core.Nothing}

instance
  Core.FromJSON
    RepricingRuleEligibleOfferMatcherStringMatcher
  where
  parseJSON =
    Core.withObject
      "RepricingRuleEligibleOfferMatcherStringMatcher"
      ( \o ->
          RepricingRuleEligibleOfferMatcherStringMatcher
            Core.<$> (o Core..:? "strAttributes" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    RepricingRuleEligibleOfferMatcherStringMatcher
  where
  toJSON
    RepricingRuleEligibleOfferMatcherStringMatcher {..} =
      Core.object
        ( Core.catMaybes
            [("strAttributes" Core..=) Core.<$> strAttributes]
        )

-- | Resource that represents a daily Repricing rule report. Next ID: 11
--
-- /See:/ 'newRepricingRuleReport' smart constructor.
data RepricingRuleReport = RepricingRuleReport
  { -- | Stats specific to buybox winning rules for rule report (deprecated).
    buyboxWinningRuleStats :: (Core.Maybe RepricingRuleReportBuyboxWinningRuleStats),
    -- | Date of the stats in this report. The report starts and ends according to the merchant\'s timezone.
    date :: (Core.Maybe Date),
    -- | List of product ids that are impacted by this rule during this reporting period. Out of stock products and products not searched for by customers are examples of non-impacted products.
    impactedProducts :: (Core.Maybe [Core.Text]),
    -- | List of all reasons the rule did not apply to the inapplicable products during the specified reporting period.
    inapplicabilityDetails :: (Core.Maybe [InapplicabilityDetails]),
    -- | List of product ids that are inapplicable to this rule during this reporting period. To get the inapplicable reason for a specific product, see RepricingProductReport.
    inapplicableProducts :: (Core.Maybe [Core.Text]),
    -- | Total unit count of impacted products ordered while the rule was active on the date of the report. This count includes all orders that were started while the rule was active, even if the rule was no longer active when the order was completed.
    orderItemCount :: (Core.Maybe Core.Int32),
    -- | Id of the Repricing rule for this report.
    ruleId :: (Core.Maybe Core.Text),
    -- | Total GMV generated by impacted products while the rule was active on the date of the report. This value includes all orders that were started while the rule was active, even if the rule was no longer active when the order was completed.
    totalGmv :: (Core.Maybe PriceAmount),
    -- | Type of the rule.
    type' :: (Core.Maybe RepricingRuleReport_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RepricingRuleReport' with the minimum fields required to make a request.
newRepricingRuleReport ::
  RepricingRuleReport
newRepricingRuleReport =
  RepricingRuleReport
    { buyboxWinningRuleStats = Core.Nothing,
      date = Core.Nothing,
      impactedProducts = Core.Nothing,
      inapplicabilityDetails = Core.Nothing,
      inapplicableProducts = Core.Nothing,
      orderItemCount = Core.Nothing,
      ruleId = Core.Nothing,
      totalGmv = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON RepricingRuleReport where
  parseJSON =
    Core.withObject
      "RepricingRuleReport"
      ( \o ->
          RepricingRuleReport
            Core.<$> (o Core..:? "buyboxWinningRuleStats")
            Core.<*> (o Core..:? "date")
            Core.<*> (o Core..:? "impactedProducts" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "inapplicabilityDetails"
                         Core..!= Core.mempty
                     )
            Core.<*> ( o Core..:? "inapplicableProducts"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "orderItemCount")
            Core.<*> (o Core..:? "ruleId")
            Core.<*> (o Core..:? "totalGmv")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON RepricingRuleReport where
  toJSON RepricingRuleReport {..} =
    Core.object
      ( Core.catMaybes
          [ ("buyboxWinningRuleStats" Core..=)
              Core.<$> buyboxWinningRuleStats,
            ("date" Core..=) Core.<$> date,
            ("impactedProducts" Core..=)
              Core.<$> impactedProducts,
            ("inapplicabilityDetails" Core..=)
              Core.<$> inapplicabilityDetails,
            ("inapplicableProducts" Core..=)
              Core.<$> inapplicableProducts,
            ("orderItemCount" Core..=) Core.<$> orderItemCount,
            ("ruleId" Core..=) Core.<$> ruleId,
            ("totalGmv" Core..=) Core.<$> totalGmv,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Stats specific to buybox winning rules for rule report.
--
-- /See:/ 'newRepricingRuleReportBuyboxWinningRuleStats' smart constructor.
newtype RepricingRuleReportBuyboxWinningRuleStats = RepricingRuleReportBuyboxWinningRuleStats
  { -- | Number of unique products that won the buybox with this rule during this period of time.
    buyboxWonProductCount :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RepricingRuleReportBuyboxWinningRuleStats' with the minimum fields required to make a request.
newRepricingRuleReportBuyboxWinningRuleStats ::
  RepricingRuleReportBuyboxWinningRuleStats
newRepricingRuleReportBuyboxWinningRuleStats =
  RepricingRuleReportBuyboxWinningRuleStats
    { buyboxWonProductCount = Core.Nothing
    }

instance
  Core.FromJSON
    RepricingRuleReportBuyboxWinningRuleStats
  where
  parseJSON =
    Core.withObject
      "RepricingRuleReportBuyboxWinningRuleStats"
      ( \o ->
          RepricingRuleReportBuyboxWinningRuleStats
            Core.<$> (o Core..:? "buyboxWonProductCount")
      )

instance
  Core.ToJSON
    RepricingRuleReportBuyboxWinningRuleStats
  where
  toJSON RepricingRuleReportBuyboxWinningRuleStats {..} =
    Core.object
      ( Core.catMaybes
          [ ("buyboxWonProductCount" Core..=)
              Core.<$> buyboxWonProductCount
          ]
      )

-- | Definition of a rule restriction. At least one of the following needs to be true: (1) use/auto/pricing/min/price is true (2) floor.price/delta exists (3) floor.percentage/delta exists If floor.price/delta and floor.percentage/delta are both set on a rule, the highest value will be chosen by the Repricer. In other words, for a product with a price of $50, if the @floor.percentage_delta@ is \"-10\" and the floor.price_delta is \"-12\", the offer price will only be lowered $5 (10% lower than the original offer price).
--
-- /See:/ 'newRepricingRuleRestriction' smart constructor.
data RepricingRuleRestriction = RepricingRuleRestriction
  { -- | The inclusive floor lower bound. The repricing rule only applies when new price >= floor.
    floor :: (Core.Maybe RepricingRuleRestrictionBoundary),
    -- | If true, use the AUTO/PRICING/MIN/PRICE offer attribute as the lower bound of the rule. If use/auto/pricing/min/price is true, then only offers with @AUTO_PRICING_MIN_PRICE@ existing on the offer will get Repricer treatment, even if a floor value is set on the rule. Also, if use/auto/pricing/min_price is true, the floor restriction will be ignored.
    useAutoPricingMinPrice :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RepricingRuleRestriction' with the minimum fields required to make a request.
newRepricingRuleRestriction ::
  RepricingRuleRestriction
newRepricingRuleRestriction =
  RepricingRuleRestriction
    { floor = Core.Nothing,
      useAutoPricingMinPrice = Core.Nothing
    }

instance Core.FromJSON RepricingRuleRestriction where
  parseJSON =
    Core.withObject
      "RepricingRuleRestriction"
      ( \o ->
          RepricingRuleRestriction
            Core.<$> (o Core..:? "floor")
            Core.<*> (o Core..:? "useAutoPricingMinPrice")
      )

instance Core.ToJSON RepricingRuleRestriction where
  toJSON RepricingRuleRestriction {..} =
    Core.object
      ( Core.catMaybes
          [ ("floor" Core..=) Core.<$> floor,
            ("useAutoPricingMinPrice" Core..=)
              Core.<$> useAutoPricingMinPrice
          ]
      )

-- | Definition of a boundary.
--
-- /See:/ 'newRepricingRuleRestrictionBoundary' smart constructor.
data RepricingRuleRestrictionBoundary = RepricingRuleRestrictionBoundary
  { -- | The percentage delta relative to the offer selling price. This field is signed. It must be negative in floor. When it is used in floor, it should be > -100. For example, if an offer is selling at $10 and this field is -30 in floor, the repricing rule only applies if the calculated new price is >= $7.
    percentageDelta :: (Core.Maybe Core.Int32),
    -- | The price micros relative to the offer selling price. This field is signed. It must be negative in floor. For example, if an offer is selling at $10 and this field is -$2 in floor, the repricing rule only applies if the calculated new price is >= $8.
    priceDelta :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RepricingRuleRestrictionBoundary' with the minimum fields required to make a request.
newRepricingRuleRestrictionBoundary ::
  RepricingRuleRestrictionBoundary
newRepricingRuleRestrictionBoundary =
  RepricingRuleRestrictionBoundary
    { percentageDelta = Core.Nothing,
      priceDelta = Core.Nothing
    }

instance
  Core.FromJSON
    RepricingRuleRestrictionBoundary
  where
  parseJSON =
    Core.withObject
      "RepricingRuleRestrictionBoundary"
      ( \o ->
          RepricingRuleRestrictionBoundary
            Core.<$> (o Core..:? "percentageDelta")
            Core.<*> (o Core..:? "priceDelta")
      )

instance Core.ToJSON RepricingRuleRestrictionBoundary where
  toJSON RepricingRuleRestrictionBoundary {..} =
    Core.object
      ( Core.catMaybes
          [ ("percentageDelta" Core..=)
              Core.<$> percentageDelta,
            ("priceDelta" Core..=) Core.<$> priceDelta
          ]
      )

-- | Definition of stats based rule.
--
-- /See:/ 'newRepricingRuleStatsBasedRule' smart constructor.
data RepricingRuleStatsBasedRule = RepricingRuleStatsBasedRule
  { -- | The percent change against the price target. Valid from 0 to 100 inclusively.
    percentageDelta :: (Core.Maybe Core.Int32),
    -- | The price delta against the above price target. A positive value means the price should be adjusted to be above statistical measure, and a negative value means below. Currency code must not be included.
    priceDelta :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RepricingRuleStatsBasedRule' with the minimum fields required to make a request.
newRepricingRuleStatsBasedRule ::
  RepricingRuleStatsBasedRule
newRepricingRuleStatsBasedRule =
  RepricingRuleStatsBasedRule
    { percentageDelta = Core.Nothing,
      priceDelta = Core.Nothing
    }

instance Core.FromJSON RepricingRuleStatsBasedRule where
  parseJSON =
    Core.withObject
      "RepricingRuleStatsBasedRule"
      ( \o ->
          RepricingRuleStatsBasedRule
            Core.<$> (o Core..:? "percentageDelta")
            Core.<*> (o Core..:? "priceDelta")
      )

instance Core.ToJSON RepricingRuleStatsBasedRule where
  toJSON RepricingRuleStatsBasedRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("percentageDelta" Core..=)
              Core.<$> percentageDelta,
            ("priceDelta" Core..=) Core.<$> priceDelta
          ]
      )

-- | Request message for the RequestPhoneVerification method.
--
-- /See:/ 'newRequestPhoneVerificationRequest' smart constructor.
data RequestPhoneVerificationRequest = RequestPhoneVerificationRequest
  { -- | Language code <https://tools.ietf.org/html/bcp47 IETF BCP 47 syntax> (for example, en-US). Language code is used to provide localized @SMS@ and @PHONE_CALL@. Default language used is en-US if not provided.
    languageCode :: (Core.Maybe Core.Text),
    -- | Phone number to be verified.
    phoneNumber :: (Core.Maybe Core.Text),
    -- | Required. Two letter country code for the phone number, for example @CA@ for Canadian numbers. See the <https://wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements ISO 3166-1 alpha-2> officially assigned codes.
    phoneRegionCode :: (Core.Maybe Core.Text),
    -- | Verification method to receive verification code.
    phoneVerificationMethod ::
      ( Core.Maybe
          RequestPhoneVerificationRequest_PhoneVerificationMethod
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RequestPhoneVerificationRequest' with the minimum fields required to make a request.
newRequestPhoneVerificationRequest ::
  RequestPhoneVerificationRequest
newRequestPhoneVerificationRequest =
  RequestPhoneVerificationRequest
    { languageCode = Core.Nothing,
      phoneNumber = Core.Nothing,
      phoneRegionCode = Core.Nothing,
      phoneVerificationMethod = Core.Nothing
    }

instance
  Core.FromJSON
    RequestPhoneVerificationRequest
  where
  parseJSON =
    Core.withObject
      "RequestPhoneVerificationRequest"
      ( \o ->
          RequestPhoneVerificationRequest
            Core.<$> (o Core..:? "languageCode")
            Core.<*> (o Core..:? "phoneNumber")
            Core.<*> (o Core..:? "phoneRegionCode")
            Core.<*> (o Core..:? "phoneVerificationMethod")
      )

instance Core.ToJSON RequestPhoneVerificationRequest where
  toJSON RequestPhoneVerificationRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("languageCode" Core..=) Core.<$> languageCode,
            ("phoneNumber" Core..=) Core.<$> phoneNumber,
            ("phoneRegionCode" Core..=) Core.<$> phoneRegionCode,
            ("phoneVerificationMethod" Core..=)
              Core.<$> phoneVerificationMethod
          ]
      )

-- | Response message for the RequestPhoneVerification method.
--
-- /See:/ 'newRequestPhoneVerificationResponse' smart constructor.
newtype RequestPhoneVerificationResponse = RequestPhoneVerificationResponse
  { -- | The verification ID to use in subsequent calls to @verifyphonenumber@.
    verificationId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RequestPhoneVerificationResponse' with the minimum fields required to make a request.
newRequestPhoneVerificationResponse ::
  RequestPhoneVerificationResponse
newRequestPhoneVerificationResponse =
  RequestPhoneVerificationResponse {verificationId = Core.Nothing}

instance
  Core.FromJSON
    RequestPhoneVerificationResponse
  where
  parseJSON =
    Core.withObject
      "RequestPhoneVerificationResponse"
      ( \o ->
          RequestPhoneVerificationResponse
            Core.<$> (o Core..:? "verificationId")
      )

instance Core.ToJSON RequestPhoneVerificationResponse where
  toJSON RequestPhoneVerificationResponse {..} =
    Core.object
      ( Core.catMaybes
          [("verificationId" Core..=) Core.<$> verificationId]
      )

-- | Request message for the RequestReviewProgram method.
--
-- /See:/ 'newRequestReviewBuyOnGoogleProgramRequest' smart constructor.
data RequestReviewBuyOnGoogleProgramRequest = RequestReviewBuyOnGoogleProgramRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RequestReviewBuyOnGoogleProgramRequest' with the minimum fields required to make a request.
newRequestReviewBuyOnGoogleProgramRequest ::
  RequestReviewBuyOnGoogleProgramRequest
newRequestReviewBuyOnGoogleProgramRequest =
  RequestReviewBuyOnGoogleProgramRequest

instance
  Core.FromJSON
    RequestReviewBuyOnGoogleProgramRequest
  where
  parseJSON =
    Core.withObject
      "RequestReviewBuyOnGoogleProgramRequest"
      ( \o ->
          Core.pure RequestReviewBuyOnGoogleProgramRequest
      )

instance
  Core.ToJSON
    RequestReviewBuyOnGoogleProgramRequest
  where
  toJSON = Core.const Core.emptyObject

-- | Request message for the RequestReviewFreeListings Program method.
--
-- /See:/ 'newRequestReviewFreeListingsRequest' smart constructor.
newtype RequestReviewFreeListingsRequest = RequestReviewFreeListingsRequest
  { -- | The code <https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2 ISO 3166-1 alpha-2> of the country for which review is to be requested.
    regionCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RequestReviewFreeListingsRequest' with the minimum fields required to make a request.
newRequestReviewFreeListingsRequest ::
  RequestReviewFreeListingsRequest
newRequestReviewFreeListingsRequest =
  RequestReviewFreeListingsRequest {regionCode = Core.Nothing}

instance
  Core.FromJSON
    RequestReviewFreeListingsRequest
  where
  parseJSON =
    Core.withObject
      "RequestReviewFreeListingsRequest"
      ( \o ->
          RequestReviewFreeListingsRequest
            Core.<$> (o Core..:? "regionCode")
      )

instance Core.ToJSON RequestReviewFreeListingsRequest where
  toJSON RequestReviewFreeListingsRequest {..} =
    Core.object
      ( Core.catMaybes
          [("regionCode" Core..=) Core.<$> regionCode]
      )

-- | Request message for the RequestReviewShoppingAds program method.
--
-- /See:/ 'newRequestReviewShoppingAdsRequest' smart constructor.
newtype RequestReviewShoppingAdsRequest = RequestReviewShoppingAdsRequest
  { -- | The code <https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2 ISO 3166-1 alpha-2> of the country for which review is to be requested.
    regionCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RequestReviewShoppingAdsRequest' with the minimum fields required to make a request.
newRequestReviewShoppingAdsRequest ::
  RequestReviewShoppingAdsRequest
newRequestReviewShoppingAdsRequest =
  RequestReviewShoppingAdsRequest {regionCode = Core.Nothing}

instance
  Core.FromJSON
    RequestReviewShoppingAdsRequest
  where
  parseJSON =
    Core.withObject
      "RequestReviewShoppingAdsRequest"
      ( \o ->
          RequestReviewShoppingAdsRequest
            Core.<$> (o Core..:? "regionCode")
      )

instance Core.ToJSON RequestReviewShoppingAdsRequest where
  toJSON RequestReviewShoppingAdsRequest {..} =
    Core.object
      ( Core.catMaybes
          [("regionCode" Core..=) Core.<$> regionCode]
      )

-- | Return address resource.
--
-- /See:/ 'newReturnAddress' smart constructor.
data ReturnAddress = ReturnAddress
  { -- | Required. The address.
    address :: (Core.Maybe ReturnAddressAddress),
    -- | Required. The country of sale where the return address is applicable.
    country :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#returnAddress@\"
    kind :: (Core.Maybe Core.Text),
    -- | Required. The user-defined label of the return address. For the default address, use the label \"default\".
    label :: (Core.Maybe Core.Text),
    -- | Required. The merchant\'s contact phone number regarding the return.
    phoneNumber :: (Core.Maybe Core.Text),
    -- | Return address ID generated by Google.
    returnAddressId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReturnAddress' with the minimum fields required to make a request.
newReturnAddress ::
  ReturnAddress
newReturnAddress =
  ReturnAddress
    { address = Core.Nothing,
      country = Core.Nothing,
      kind = Core.Nothing,
      label = Core.Nothing,
      phoneNumber = Core.Nothing,
      returnAddressId = Core.Nothing
    }

instance Core.FromJSON ReturnAddress where
  parseJSON =
    Core.withObject
      "ReturnAddress"
      ( \o ->
          ReturnAddress
            Core.<$> (o Core..:? "address")
            Core.<*> (o Core..:? "country")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "label")
            Core.<*> (o Core..:? "phoneNumber")
            Core.<*> (o Core..:? "returnAddressId")
      )

instance Core.ToJSON ReturnAddress where
  toJSON ReturnAddress {..} =
    Core.object
      ( Core.catMaybes
          [ ("address" Core..=) Core.<$> address,
            ("country" Core..=) Core.<$> country,
            ("kind" Core..=) Core.<$> kind,
            ("label" Core..=) Core.<$> label,
            ("phoneNumber" Core..=) Core.<$> phoneNumber,
            ("returnAddressId" Core..=)
              Core.<$> returnAddressId
          ]
      )

--
-- /See:/ 'newReturnAddressAddress' smart constructor.
data ReturnAddressAddress = ReturnAddressAddress
  { -- | CLDR country code (for example, \"US\").
    country :: (Core.Maybe Core.Text),
    -- | City, town or commune. May also include dependent localities or sublocalities (for example, neighborhoods or suburbs).
    locality :: (Core.Maybe Core.Text),
    -- | Postal code or ZIP (for example, \"94043\").
    postalCode :: (Core.Maybe Core.Text),
    -- | Name of the recipient to address returns to.
    recipientName :: (Core.Maybe Core.Text),
    -- | Top-level administrative subdivision of the country. For example, a state like California (\"CA\") or a province like Quebec (\"QC\").
    region :: (Core.Maybe Core.Text),
    -- | Street-level part of the address. May be up to two lines, each line specified as an array element.
    streetAddress :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReturnAddressAddress' with the minimum fields required to make a request.
newReturnAddressAddress ::
  ReturnAddressAddress
newReturnAddressAddress =
  ReturnAddressAddress
    { country = Core.Nothing,
      locality = Core.Nothing,
      postalCode = Core.Nothing,
      recipientName = Core.Nothing,
      region = Core.Nothing,
      streetAddress = Core.Nothing
    }

instance Core.FromJSON ReturnAddressAddress where
  parseJSON =
    Core.withObject
      "ReturnAddressAddress"
      ( \o ->
          ReturnAddressAddress
            Core.<$> (o Core..:? "country")
            Core.<*> (o Core..:? "locality")
            Core.<*> (o Core..:? "postalCode")
            Core.<*> (o Core..:? "recipientName")
            Core.<*> (o Core..:? "region")
            Core.<*> (o Core..:? "streetAddress" Core..!= Core.mempty)
      )

instance Core.ToJSON ReturnAddressAddress where
  toJSON ReturnAddressAddress {..} =
    Core.object
      ( Core.catMaybes
          [ ("country" Core..=) Core.<$> country,
            ("locality" Core..=) Core.<$> locality,
            ("postalCode" Core..=) Core.<$> postalCode,
            ("recipientName" Core..=) Core.<$> recipientName,
            ("region" Core..=) Core.<$> region,
            ("streetAddress" Core..=) Core.<$> streetAddress
          ]
      )

-- | Return policy resource.
--
-- /See:/ 'newReturnPolicy' smart constructor.
data ReturnPolicy = ReturnPolicy
  { -- | Required. The country of sale where the return policy is applicable.
    country :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#returnPolicy@\"
    kind :: (Core.Maybe Core.Text),
    -- | Required. The user-defined label of the return policy. For the default policy, use the label \"default\".
    label :: (Core.Maybe Core.Text),
    -- | Required. The name of the policy as shown in Merchant Center.
    name :: (Core.Maybe Core.Text),
    -- | Return reasons that will incur return fees.
    nonFreeReturnReasons :: (Core.Maybe [Core.Text]),
    -- | Required. The policy.
    policy :: (Core.Maybe ReturnPolicyPolicy),
    -- | Return policy ID generated by Google.
    returnPolicyId :: (Core.Maybe Core.Text),
    -- | The return shipping fee that will apply to non free return reasons.
    returnShippingFee :: (Core.Maybe Price),
    -- | An optional list of seasonal overrides.
    seasonalOverrides :: (Core.Maybe [ReturnPolicySeasonalOverride])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReturnPolicy' with the minimum fields required to make a request.
newReturnPolicy ::
  ReturnPolicy
newReturnPolicy =
  ReturnPolicy
    { country = Core.Nothing,
      kind = Core.Nothing,
      label = Core.Nothing,
      name = Core.Nothing,
      nonFreeReturnReasons = Core.Nothing,
      policy = Core.Nothing,
      returnPolicyId = Core.Nothing,
      returnShippingFee = Core.Nothing,
      seasonalOverrides = Core.Nothing
    }

instance Core.FromJSON ReturnPolicy where
  parseJSON =
    Core.withObject
      "ReturnPolicy"
      ( \o ->
          ReturnPolicy
            Core.<$> (o Core..:? "country")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "label")
            Core.<*> (o Core..:? "name")
            Core.<*> ( o Core..:? "nonFreeReturnReasons"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "policy")
            Core.<*> (o Core..:? "returnPolicyId")
            Core.<*> (o Core..:? "returnShippingFee")
            Core.<*> ( o Core..:? "seasonalOverrides"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON ReturnPolicy where
  toJSON ReturnPolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("country" Core..=) Core.<$> country,
            ("kind" Core..=) Core.<$> kind,
            ("label" Core..=) Core.<$> label,
            ("name" Core..=) Core.<$> name,
            ("nonFreeReturnReasons" Core..=)
              Core.<$> nonFreeReturnReasons,
            ("policy" Core..=) Core.<$> policy,
            ("returnPolicyId" Core..=) Core.<$> returnPolicyId,
            ("returnShippingFee" Core..=)
              Core.<$> returnShippingFee,
            ("seasonalOverrides" Core..=)
              Core.<$> seasonalOverrides
          ]
      )

-- | Return policy online object. This is currently used to represent return policies for ads and free listings programs.
--
-- /See:/ 'newReturnPolicyOnline' smart constructor.
data ReturnPolicyOnline = ReturnPolicyOnline
  { -- | The countries of sale where the return policy is applicable. The values must be a valid 2 letter ISO 3166 code, e.g. \"US\".
    countries :: (Core.Maybe [Core.Text]),
    -- | The item conditions that are accepted for returns. This is required to not be empty unless the type of return policy is noReturns.
    itemConditions :: (Core.Maybe [ReturnPolicyOnline_ItemConditionsItem]),
    -- | The unique user-defined label of the return policy. The same label cannot be used in different return policies for the same country. Policies with the label \'default\' will apply to all products, unless a product specifies a return/policy/label attribute.
    label :: (Core.Maybe Core.Text),
    -- | The name of the policy as shown in Merchant Center.
    name :: (Core.Maybe Core.Text),
    -- | The return policy.
    policy :: (Core.Maybe ReturnPolicyOnlinePolicy),
    -- | The restocking fee that applies to all return reason categories. This would be treated as a free restocking fee if the value is not set.
    restockingFee :: (Core.Maybe ReturnPolicyOnlineRestockingFee),
    -- | The return methods of how customers can return an item. This value is required to not be empty unless the type of return policy is noReturns.
    returnMethods :: (Core.Maybe [ReturnPolicyOnline_ReturnMethodsItem]),
    -- | Output only. Return policy ID generated by Google.
    returnPolicyId :: (Core.Maybe Core.Text),
    -- | The return policy uri. This can used by Google to do a sanity check for the policy.
    returnPolicyUri :: (Core.Maybe Core.Text),
    -- | The return reason category information. This required to not be empty unless the type of return policy is noReturns.
    returnReasonCategoryInfo :: (Core.Maybe [ReturnPolicyOnlineReturnReasonCategoryInfo])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReturnPolicyOnline' with the minimum fields required to make a request.
newReturnPolicyOnline ::
  ReturnPolicyOnline
newReturnPolicyOnline =
  ReturnPolicyOnline
    { countries = Core.Nothing,
      itemConditions = Core.Nothing,
      label = Core.Nothing,
      name = Core.Nothing,
      policy = Core.Nothing,
      restockingFee = Core.Nothing,
      returnMethods = Core.Nothing,
      returnPolicyId = Core.Nothing,
      returnPolicyUri = Core.Nothing,
      returnReasonCategoryInfo = Core.Nothing
    }

instance Core.FromJSON ReturnPolicyOnline where
  parseJSON =
    Core.withObject
      "ReturnPolicyOnline"
      ( \o ->
          ReturnPolicyOnline
            Core.<$> (o Core..:? "countries" Core..!= Core.mempty)
            Core.<*> (o Core..:? "itemConditions" Core..!= Core.mempty)
            Core.<*> (o Core..:? "label")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "policy")
            Core.<*> (o Core..:? "restockingFee")
            Core.<*> (o Core..:? "returnMethods" Core..!= Core.mempty)
            Core.<*> (o Core..:? "returnPolicyId")
            Core.<*> (o Core..:? "returnPolicyUri")
            Core.<*> ( o Core..:? "returnReasonCategoryInfo"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON ReturnPolicyOnline where
  toJSON ReturnPolicyOnline {..} =
    Core.object
      ( Core.catMaybes
          [ ("countries" Core..=) Core.<$> countries,
            ("itemConditions" Core..=) Core.<$> itemConditions,
            ("label" Core..=) Core.<$> label,
            ("name" Core..=) Core.<$> name,
            ("policy" Core..=) Core.<$> policy,
            ("restockingFee" Core..=) Core.<$> restockingFee,
            ("returnMethods" Core..=) Core.<$> returnMethods,
            ("returnPolicyId" Core..=) Core.<$> returnPolicyId,
            ("returnPolicyUri" Core..=) Core.<$> returnPolicyUri,
            ("returnReasonCategoryInfo" Core..=)
              Core.<$> returnReasonCategoryInfo
          ]
      )

-- | The available policies.
--
-- /See:/ 'newReturnPolicyOnlinePolicy' smart constructor.
data ReturnPolicyOnlinePolicy = ReturnPolicyOnlinePolicy
  { -- | The number of days items can be returned after delivery, where one day is defined to be 24 hours after the delivery timestamp. Required for @numberOfDaysAfterDelivery@ returns.
    days :: (Core.Maybe Core.Int64),
    -- | Policy type.
    type' :: (Core.Maybe ReturnPolicyOnlinePolicy_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReturnPolicyOnlinePolicy' with the minimum fields required to make a request.
newReturnPolicyOnlinePolicy ::
  ReturnPolicyOnlinePolicy
newReturnPolicyOnlinePolicy =
  ReturnPolicyOnlinePolicy {days = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON ReturnPolicyOnlinePolicy where
  parseJSON =
    Core.withObject
      "ReturnPolicyOnlinePolicy"
      ( \o ->
          ReturnPolicyOnlinePolicy
            Core.<$> (o Core..:? "days") Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON ReturnPolicyOnlinePolicy where
  toJSON ReturnPolicyOnlinePolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("days" Core..=) Core.. Core.AsText Core.<$> days,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | The restocking fee. This can either be a fixed fee or a micro percent.
--
-- /See:/ 'newReturnPolicyOnlineRestockingFee' smart constructor.
data ReturnPolicyOnlineRestockingFee = ReturnPolicyOnlineRestockingFee
  { -- | Fixed restocking fee.
    fixedFee :: (Core.Maybe PriceAmount),
    -- | Percent of total price in micros. 15,000,000 means 15% of the total price would be charged.
    microPercent :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReturnPolicyOnlineRestockingFee' with the minimum fields required to make a request.
newReturnPolicyOnlineRestockingFee ::
  ReturnPolicyOnlineRestockingFee
newReturnPolicyOnlineRestockingFee =
  ReturnPolicyOnlineRestockingFee
    { fixedFee = Core.Nothing,
      microPercent = Core.Nothing
    }

instance
  Core.FromJSON
    ReturnPolicyOnlineRestockingFee
  where
  parseJSON =
    Core.withObject
      "ReturnPolicyOnlineRestockingFee"
      ( \o ->
          ReturnPolicyOnlineRestockingFee
            Core.<$> (o Core..:? "fixedFee")
            Core.<*> (o Core..:? "microPercent")
      )

instance Core.ToJSON ReturnPolicyOnlineRestockingFee where
  toJSON ReturnPolicyOnlineRestockingFee {..} =
    Core.object
      ( Core.catMaybes
          [ ("fixedFee" Core..=) Core.<$> fixedFee,
            ("microPercent" Core..=) Core.<$> microPercent
          ]
      )

-- | The return reason category info wrapper.
--
-- /See:/ 'newReturnPolicyOnlineReturnReasonCategoryInfo' smart constructor.
data ReturnPolicyOnlineReturnReasonCategoryInfo = ReturnPolicyOnlineReturnReasonCategoryInfo
  { -- | The corresponding return label source.
    returnLabelSource ::
      ( Core.Maybe
          ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnLabelSource
      ),
    -- | The return reason category.
    returnReasonCategory ::
      ( Core.Maybe
          ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnReasonCategory
      ),
    -- | The corresponding return shipping fee. This is only applicable when returnLabelSource is not the customer\'s responsibility.
    returnShippingFee :: (Core.Maybe ReturnPolicyOnlineReturnShippingFee)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReturnPolicyOnlineReturnReasonCategoryInfo' with the minimum fields required to make a request.
newReturnPolicyOnlineReturnReasonCategoryInfo ::
  ReturnPolicyOnlineReturnReasonCategoryInfo
newReturnPolicyOnlineReturnReasonCategoryInfo =
  ReturnPolicyOnlineReturnReasonCategoryInfo
    { returnLabelSource = Core.Nothing,
      returnReasonCategory = Core.Nothing,
      returnShippingFee = Core.Nothing
    }

instance
  Core.FromJSON
    ReturnPolicyOnlineReturnReasonCategoryInfo
  where
  parseJSON =
    Core.withObject
      "ReturnPolicyOnlineReturnReasonCategoryInfo"
      ( \o ->
          ReturnPolicyOnlineReturnReasonCategoryInfo
            Core.<$> (o Core..:? "returnLabelSource")
            Core.<*> (o Core..:? "returnReasonCategory")
            Core.<*> (o Core..:? "returnShippingFee")
      )

instance
  Core.ToJSON
    ReturnPolicyOnlineReturnReasonCategoryInfo
  where
  toJSON ReturnPolicyOnlineReturnReasonCategoryInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("returnLabelSource" Core..=)
              Core.<$> returnLabelSource,
            ("returnReasonCategory" Core..=)
              Core.<$> returnReasonCategory,
            ("returnShippingFee" Core..=)
              Core.<$> returnShippingFee
          ]
      )

-- | The return shipping fee. This can either be a fixed fee or a boolean to indicate that the customer pays the actual shipping cost.
--
-- /See:/ 'newReturnPolicyOnlineReturnShippingFee' smart constructor.
data ReturnPolicyOnlineReturnShippingFee = ReturnPolicyOnlineReturnShippingFee
  { -- | Fixed return shipping fee amount. This value is only applicable when type is FIXED. We will treat the return shipping fee as free if type is FIXED and this value is not set.
    fixedFee :: (Core.Maybe PriceAmount),
    -- | Type of return shipping fee.
    type' :: (Core.Maybe ReturnPolicyOnlineReturnShippingFee_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReturnPolicyOnlineReturnShippingFee' with the minimum fields required to make a request.
newReturnPolicyOnlineReturnShippingFee ::
  ReturnPolicyOnlineReturnShippingFee
newReturnPolicyOnlineReturnShippingFee =
  ReturnPolicyOnlineReturnShippingFee
    { fixedFee = Core.Nothing,
      type' = Core.Nothing
    }

instance
  Core.FromJSON
    ReturnPolicyOnlineReturnShippingFee
  where
  parseJSON =
    Core.withObject
      "ReturnPolicyOnlineReturnShippingFee"
      ( \o ->
          ReturnPolicyOnlineReturnShippingFee
            Core.<$> (o Core..:? "fixedFee") Core.<*> (o Core..:? "type")
      )

instance
  Core.ToJSON
    ReturnPolicyOnlineReturnShippingFee
  where
  toJSON ReturnPolicyOnlineReturnShippingFee {..} =
    Core.object
      ( Core.catMaybes
          [ ("fixedFee" Core..=) Core.<$> fixedFee,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newReturnPolicyPolicy' smart constructor.
data ReturnPolicyPolicy = ReturnPolicyPolicy
  { -- | Required. Last day for returning the items. In ISO 8601 format. When specifying the return window like this, set the policy type to \"lastReturnDate\". Use this for seasonal overrides only.
    lastReturnDate :: (Core.Maybe Core.Text),
    -- | The number of days items can be returned after delivery, where one day is defined to be 24 hours after the delivery timestamp. When specifying the return window like this, set the policy type to \"numberOfDaysAfterDelivery\". Acceptable values are 30, 45, 60, 90, 100, 180, 270 and 365 for the default policy. Additional policies further allow 14, 15, 21 and 28 days, but note that for most items a minimum of 30 days is required for returns. Exceptions may be made for electronics. A policy of less than 30 days can only be applied to those items.
    numberOfDays :: (Core.Maybe Core.Int64),
    -- | Policy type. Use \"lastReturnDate\" for seasonal overrides only. Note that for most items a minimum of 30 days is required for returns. Exceptions may be made for electronics or non-returnable items such as food, perishables, and living things. A policy of less than 30 days can only be applied to those items. Acceptable values are: - \"@lastReturnDate@\" - \"@lifetimeReturns@\" - \"@noReturns@\" - \"@numberOfDaysAfterDelivery@\"
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReturnPolicyPolicy' with the minimum fields required to make a request.
newReturnPolicyPolicy ::
  ReturnPolicyPolicy
newReturnPolicyPolicy =
  ReturnPolicyPolicy
    { lastReturnDate = Core.Nothing,
      numberOfDays = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON ReturnPolicyPolicy where
  parseJSON =
    Core.withObject
      "ReturnPolicyPolicy"
      ( \o ->
          ReturnPolicyPolicy
            Core.<$> (o Core..:? "lastReturnDate")
            Core.<*> (o Core..:? "numberOfDays")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON ReturnPolicyPolicy where
  toJSON ReturnPolicyPolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("lastReturnDate" Core..=) Core.<$> lastReturnDate,
            ("numberOfDays" Core..=) Core.. Core.AsText
              Core.<$> numberOfDays,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newReturnPolicySeasonalOverride' smart constructor.
data ReturnPolicySeasonalOverride = ReturnPolicySeasonalOverride
  { -- | Required. Last day on which the override applies. In ISO 8601 format.
    endDate :: (Core.Maybe Core.Text),
    -- | Required. The name of the seasonal override as shown in Merchant Center.
    name :: (Core.Maybe Core.Text),
    -- | Required. The policy which is in effect during that time.
    policy :: (Core.Maybe ReturnPolicyPolicy),
    -- | Required. First day on which the override applies. In ISO 8601 format.
    startDate :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReturnPolicySeasonalOverride' with the minimum fields required to make a request.
newReturnPolicySeasonalOverride ::
  ReturnPolicySeasonalOverride
newReturnPolicySeasonalOverride =
  ReturnPolicySeasonalOverride
    { endDate = Core.Nothing,
      name = Core.Nothing,
      policy = Core.Nothing,
      startDate = Core.Nothing
    }

instance Core.FromJSON ReturnPolicySeasonalOverride where
  parseJSON =
    Core.withObject
      "ReturnPolicySeasonalOverride"
      ( \o ->
          ReturnPolicySeasonalOverride
            Core.<$> (o Core..:? "endDate")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "policy")
            Core.<*> (o Core..:? "startDate")
      )

instance Core.ToJSON ReturnPolicySeasonalOverride where
  toJSON ReturnPolicySeasonalOverride {..} =
    Core.object
      ( Core.catMaybes
          [ ("endDate" Core..=) Core.<$> endDate,
            ("name" Core..=) Core.<$> name,
            ("policy" Core..=) Core.<$> policy,
            ("startDate" Core..=) Core.<$> startDate
          ]
      )

--
-- /See:/ 'newReturnPricingInfo' smart constructor.
data ReturnPricingInfo = ReturnPricingInfo
  { -- | Default option for whether merchant should charge the customer for return shipping costs, based on customer selected return reason and merchant\'s return policy for the items being returned.
    chargeReturnShippingFee :: (Core.Maybe Core.Bool),
    -- | Maximum return shipping costs that may be charged to the customer depending on merchant\'s assessment of the return reason and the merchant\'s return policy for the items being returned.
    maxReturnShippingFee :: (Core.Maybe MonetaryAmount),
    -- | Total amount that can be refunded for the items in this return. It represents the total amount received by the merchant for the items, after applying merchant coupons.
    refundableItemsTotalAmount :: (Core.Maybe MonetaryAmount),
    -- | Maximum amount that can be refunded for the original shipping fee.
    refundableShippingAmount :: (Core.Maybe MonetaryAmount),
    -- | Total amount already refunded by the merchant. It includes all types of refunds (items, shipping, etc.) Not provided if no refund has been applied yet.
    totalRefundedAmount :: (Core.Maybe MonetaryAmount)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReturnPricingInfo' with the minimum fields required to make a request.
newReturnPricingInfo ::
  ReturnPricingInfo
newReturnPricingInfo =
  ReturnPricingInfo
    { chargeReturnShippingFee = Core.Nothing,
      maxReturnShippingFee = Core.Nothing,
      refundableItemsTotalAmount = Core.Nothing,
      refundableShippingAmount = Core.Nothing,
      totalRefundedAmount = Core.Nothing
    }

instance Core.FromJSON ReturnPricingInfo where
  parseJSON =
    Core.withObject
      "ReturnPricingInfo"
      ( \o ->
          ReturnPricingInfo
            Core.<$> (o Core..:? "chargeReturnShippingFee")
            Core.<*> (o Core..:? "maxReturnShippingFee")
            Core.<*> (o Core..:? "refundableItemsTotalAmount")
            Core.<*> (o Core..:? "refundableShippingAmount")
            Core.<*> (o Core..:? "totalRefundedAmount")
      )

instance Core.ToJSON ReturnPricingInfo where
  toJSON ReturnPricingInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("chargeReturnShippingFee" Core..=)
              Core.<$> chargeReturnShippingFee,
            ("maxReturnShippingFee" Core..=)
              Core.<$> maxReturnShippingFee,
            ("refundableItemsTotalAmount" Core..=)
              Core.<$> refundableItemsTotalAmount,
            ("refundableShippingAmount" Core..=)
              Core.<$> refundableShippingAmount,
            ("totalRefundedAmount" Core..=)
              Core.<$> totalRefundedAmount
          ]
      )

--
-- /See:/ 'newReturnShipment' smart constructor.
data ReturnShipment = ReturnShipment
  { -- | The date of creation of the shipment, in ISO 8601 format.
    creationDate :: (Core.Maybe Core.Text),
    -- | The date of delivery of the shipment, in ISO 8601 format.
    deliveryDate :: (Core.Maybe Core.Text),
    -- | Type of the return method. Acceptable values are: - \"@byMail@\" - \"@contactCustomerSupport@\" - \"@returnless@\" - \"@inStore@\"
    returnMethodType :: (Core.Maybe Core.Text),
    -- | Shipment ID generated by Google.
    shipmentId :: (Core.Maybe Core.Text),
    -- | Tracking information of the shipment. One return shipment might be handled by several shipping carriers sequentially.
    shipmentTrackingInfos :: (Core.Maybe [ShipmentTrackingInfo]),
    -- | The date of shipping of the shipment, in ISO 8601 format.
    shippingDate :: (Core.Maybe Core.Text),
    -- | State of the shipment. Acceptable values are: - \"@completed@\" - \"@new@\" - \"@shipped@\" - \"@undeliverable@\" - \"@pending@\"
    state :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReturnShipment' with the minimum fields required to make a request.
newReturnShipment ::
  ReturnShipment
newReturnShipment =
  ReturnShipment
    { creationDate = Core.Nothing,
      deliveryDate = Core.Nothing,
      returnMethodType = Core.Nothing,
      shipmentId = Core.Nothing,
      shipmentTrackingInfos = Core.Nothing,
      shippingDate = Core.Nothing,
      state = Core.Nothing
    }

instance Core.FromJSON ReturnShipment where
  parseJSON =
    Core.withObject
      "ReturnShipment"
      ( \o ->
          ReturnShipment
            Core.<$> (o Core..:? "creationDate")
            Core.<*> (o Core..:? "deliveryDate")
            Core.<*> (o Core..:? "returnMethodType")
            Core.<*> (o Core..:? "shipmentId")
            Core.<*> ( o Core..:? "shipmentTrackingInfos"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "shippingDate")
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON ReturnShipment where
  toJSON ReturnShipment {..} =
    Core.object
      ( Core.catMaybes
          [ ("creationDate" Core..=) Core.<$> creationDate,
            ("deliveryDate" Core..=) Core.<$> deliveryDate,
            ("returnMethodType" Core..=)
              Core.<$> returnMethodType,
            ("shipmentId" Core..=) Core.<$> shipmentId,
            ("shipmentTrackingInfos" Core..=)
              Core.<$> shipmentTrackingInfos,
            ("shippingDate" Core..=) Core.<$> shippingDate,
            ("state" Core..=) Core.<$> state
          ]
      )

-- | Return shipping label for a Buy on Google merchant-managed return.
--
-- /See:/ 'newReturnShippingLabel' smart constructor.
data ReturnShippingLabel = ReturnShippingLabel
  { -- | Name of the carrier.
    carrier :: (Core.Maybe Core.Text),
    -- | The URL for the return shipping label in PDF format
    labelUri :: (Core.Maybe Core.Text),
    -- | The tracking id of this return label.
    trackingId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReturnShippingLabel' with the minimum fields required to make a request.
newReturnShippingLabel ::
  ReturnShippingLabel
newReturnShippingLabel =
  ReturnShippingLabel
    { carrier = Core.Nothing,
      labelUri = Core.Nothing,
      trackingId = Core.Nothing
    }

instance Core.FromJSON ReturnShippingLabel where
  parseJSON =
    Core.withObject
      "ReturnShippingLabel"
      ( \o ->
          ReturnShippingLabel
            Core.<$> (o Core..:? "carrier")
            Core.<*> (o Core..:? "labelUri")
            Core.<*> (o Core..:? "trackingId")
      )

instance Core.ToJSON ReturnShippingLabel where
  toJSON ReturnShippingLabel {..} =
    Core.object
      ( Core.catMaybes
          [ ("carrier" Core..=) Core.<$> carrier,
            ("labelUri" Core..=) Core.<$> labelUri,
            ("trackingId" Core..=) Core.<$> trackingId
          ]
      )

--
-- /See:/ 'newReturnaddressCustomBatchRequest' smart constructor.
newtype ReturnaddressCustomBatchRequest = ReturnaddressCustomBatchRequest
  { -- | The request entries to be processed in the batch.
    entries :: (Core.Maybe [ReturnaddressCustomBatchRequestEntry])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReturnaddressCustomBatchRequest' with the minimum fields required to make a request.
newReturnaddressCustomBatchRequest ::
  ReturnaddressCustomBatchRequest
newReturnaddressCustomBatchRequest =
  ReturnaddressCustomBatchRequest {entries = Core.Nothing}

instance
  Core.FromJSON
    ReturnaddressCustomBatchRequest
  where
  parseJSON =
    Core.withObject
      "ReturnaddressCustomBatchRequest"
      ( \o ->
          ReturnaddressCustomBatchRequest
            Core.<$> (o Core..:? "entries" Core..!= Core.mempty)
      )

instance Core.ToJSON ReturnaddressCustomBatchRequest where
  toJSON ReturnaddressCustomBatchRequest {..} =
    Core.object
      ( Core.catMaybes
          [("entries" Core..=) Core.<$> entries]
      )

--
-- /See:/ 'newReturnaddressCustomBatchRequestEntry' smart constructor.
data ReturnaddressCustomBatchRequestEntry = ReturnaddressCustomBatchRequestEntry
  { -- | An entry ID, unique within the batch request.
    batchId :: (Core.Maybe Core.Word32),
    -- | The Merchant Center account ID.
    merchantId :: (Core.Maybe Core.Word64),
    -- | Method of the batch request entry. Acceptable values are: - \"@delete@\" - \"@get@\" - \"@insert@\"
    method :: (Core.Maybe Core.Text),
    -- | The return address to submit. This should be set only if the method is @insert@.
    returnAddress :: (Core.Maybe ReturnAddress),
    -- | The return address ID. This should be set only if the method is @delete@ or @get@.
    returnAddressId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReturnaddressCustomBatchRequestEntry' with the minimum fields required to make a request.
newReturnaddressCustomBatchRequestEntry ::
  ReturnaddressCustomBatchRequestEntry
newReturnaddressCustomBatchRequestEntry =
  ReturnaddressCustomBatchRequestEntry
    { batchId = Core.Nothing,
      merchantId = Core.Nothing,
      method = Core.Nothing,
      returnAddress = Core.Nothing,
      returnAddressId = Core.Nothing
    }

instance
  Core.FromJSON
    ReturnaddressCustomBatchRequestEntry
  where
  parseJSON =
    Core.withObject
      "ReturnaddressCustomBatchRequestEntry"
      ( \o ->
          ReturnaddressCustomBatchRequestEntry
            Core.<$> (o Core..:? "batchId")
            Core.<*> (o Core..:? "merchantId")
            Core.<*> (o Core..:? "method")
            Core.<*> (o Core..:? "returnAddress")
            Core.<*> (o Core..:? "returnAddressId")
      )

instance
  Core.ToJSON
    ReturnaddressCustomBatchRequestEntry
  where
  toJSON ReturnaddressCustomBatchRequestEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchId" Core..=) Core.<$> batchId,
            ("merchantId" Core..=) Core.. Core.AsText
              Core.<$> merchantId,
            ("method" Core..=) Core.<$> method,
            ("returnAddress" Core..=) Core.<$> returnAddress,
            ("returnAddressId" Core..=)
              Core.<$> returnAddressId
          ]
      )

--
-- /See:/ 'newReturnaddressCustomBatchResponse' smart constructor.
data ReturnaddressCustomBatchResponse = ReturnaddressCustomBatchResponse
  { -- | The result of the execution of the batch requests.
    entries :: (Core.Maybe [ReturnaddressCustomBatchResponseEntry]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#returnaddressCustomBatchResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReturnaddressCustomBatchResponse' with the minimum fields required to make a request.
newReturnaddressCustomBatchResponse ::
  ReturnaddressCustomBatchResponse
newReturnaddressCustomBatchResponse =
  ReturnaddressCustomBatchResponse {entries = Core.Nothing, kind = Core.Nothing}

instance
  Core.FromJSON
    ReturnaddressCustomBatchResponse
  where
  parseJSON =
    Core.withObject
      "ReturnaddressCustomBatchResponse"
      ( \o ->
          ReturnaddressCustomBatchResponse
            Core.<$> (o Core..:? "entries" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON ReturnaddressCustomBatchResponse where
  toJSON ReturnaddressCustomBatchResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("entries" Core..=) Core.<$> entries,
            ("kind" Core..=) Core.<$> kind
          ]
      )

--
-- /See:/ 'newReturnaddressCustomBatchResponseEntry' smart constructor.
data ReturnaddressCustomBatchResponseEntry = ReturnaddressCustomBatchResponseEntry
  { -- | The ID of the request entry to which this entry responds.
    batchId :: (Core.Maybe Core.Word32),
    -- | A list of errors defined if, and only if, the request failed.
    errors :: (Core.Maybe Errors),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#returnaddressCustomBatchResponseEntry@\"
    kind :: (Core.Maybe Core.Text),
    -- | The retrieved return address.
    returnAddress :: (Core.Maybe ReturnAddress)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReturnaddressCustomBatchResponseEntry' with the minimum fields required to make a request.
newReturnaddressCustomBatchResponseEntry ::
  ReturnaddressCustomBatchResponseEntry
newReturnaddressCustomBatchResponseEntry =
  ReturnaddressCustomBatchResponseEntry
    { batchId = Core.Nothing,
      errors = Core.Nothing,
      kind = Core.Nothing,
      returnAddress = Core.Nothing
    }

instance
  Core.FromJSON
    ReturnaddressCustomBatchResponseEntry
  where
  parseJSON =
    Core.withObject
      "ReturnaddressCustomBatchResponseEntry"
      ( \o ->
          ReturnaddressCustomBatchResponseEntry
            Core.<$> (o Core..:? "batchId")
            Core.<*> (o Core..:? "errors")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "returnAddress")
      )

instance
  Core.ToJSON
    ReturnaddressCustomBatchResponseEntry
  where
  toJSON ReturnaddressCustomBatchResponseEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchId" Core..=) Core.<$> batchId,
            ("errors" Core..=) Core.<$> errors,
            ("kind" Core..=) Core.<$> kind,
            ("returnAddress" Core..=) Core.<$> returnAddress
          ]
      )

--
-- /See:/ 'newReturnaddressListResponse' smart constructor.
data ReturnaddressListResponse = ReturnaddressListResponse
  { -- | Identifies what kind of resource this is. Value: the fixed string \"@content#returnaddressListResponse@\".
    kind :: (Core.Maybe Core.Text),
    -- | The token for the retrieval of the next page of addresses.
    nextPageToken :: (Core.Maybe Core.Text),
    -- |
    resources :: (Core.Maybe [ReturnAddress])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReturnaddressListResponse' with the minimum fields required to make a request.
newReturnaddressListResponse ::
  ReturnaddressListResponse
newReturnaddressListResponse =
  ReturnaddressListResponse
    { kind = Core.Nothing,
      nextPageToken = Core.Nothing,
      resources = Core.Nothing
    }

instance Core.FromJSON ReturnaddressListResponse where
  parseJSON =
    Core.withObject
      "ReturnaddressListResponse"
      ( \o ->
          ReturnaddressListResponse
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "resources" Core..!= Core.mempty)
      )

instance Core.ToJSON ReturnaddressListResponse where
  toJSON ReturnaddressListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("resources" Core..=) Core.<$> resources
          ]
      )

--
-- /See:/ 'newReturnpolicyCustomBatchRequest' smart constructor.
newtype ReturnpolicyCustomBatchRequest = ReturnpolicyCustomBatchRequest
  { -- | The request entries to be processed in the batch.
    entries :: (Core.Maybe [ReturnpolicyCustomBatchRequestEntry])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReturnpolicyCustomBatchRequest' with the minimum fields required to make a request.
newReturnpolicyCustomBatchRequest ::
  ReturnpolicyCustomBatchRequest
newReturnpolicyCustomBatchRequest =
  ReturnpolicyCustomBatchRequest {entries = Core.Nothing}

instance Core.FromJSON ReturnpolicyCustomBatchRequest where
  parseJSON =
    Core.withObject
      "ReturnpolicyCustomBatchRequest"
      ( \o ->
          ReturnpolicyCustomBatchRequest
            Core.<$> (o Core..:? "entries" Core..!= Core.mempty)
      )

instance Core.ToJSON ReturnpolicyCustomBatchRequest where
  toJSON ReturnpolicyCustomBatchRequest {..} =
    Core.object
      ( Core.catMaybes
          [("entries" Core..=) Core.<$> entries]
      )

--
-- /See:/ 'newReturnpolicyCustomBatchRequestEntry' smart constructor.
data ReturnpolicyCustomBatchRequestEntry = ReturnpolicyCustomBatchRequestEntry
  { -- | An entry ID, unique within the batch request.
    batchId :: (Core.Maybe Core.Word32),
    -- | The Merchant Center account ID.
    merchantId :: (Core.Maybe Core.Word64),
    -- | Method of the batch request entry. Acceptable values are: - \"@delete@\" - \"@get@\" - \"@insert@\"
    method :: (Core.Maybe Core.Text),
    -- | The return policy to submit. This should be set only if the method is @insert@.
    returnPolicy :: (Core.Maybe ReturnPolicy),
    -- | The return policy ID. This should be set only if the method is @delete@ or @get@.
    returnPolicyId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReturnpolicyCustomBatchRequestEntry' with the minimum fields required to make a request.
newReturnpolicyCustomBatchRequestEntry ::
  ReturnpolicyCustomBatchRequestEntry
newReturnpolicyCustomBatchRequestEntry =
  ReturnpolicyCustomBatchRequestEntry
    { batchId = Core.Nothing,
      merchantId = Core.Nothing,
      method = Core.Nothing,
      returnPolicy = Core.Nothing,
      returnPolicyId = Core.Nothing
    }

instance
  Core.FromJSON
    ReturnpolicyCustomBatchRequestEntry
  where
  parseJSON =
    Core.withObject
      "ReturnpolicyCustomBatchRequestEntry"
      ( \o ->
          ReturnpolicyCustomBatchRequestEntry
            Core.<$> (o Core..:? "batchId")
            Core.<*> (o Core..:? "merchantId")
            Core.<*> (o Core..:? "method")
            Core.<*> (o Core..:? "returnPolicy")
            Core.<*> (o Core..:? "returnPolicyId")
      )

instance
  Core.ToJSON
    ReturnpolicyCustomBatchRequestEntry
  where
  toJSON ReturnpolicyCustomBatchRequestEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchId" Core..=) Core.<$> batchId,
            ("merchantId" Core..=) Core.. Core.AsText
              Core.<$> merchantId,
            ("method" Core..=) Core.<$> method,
            ("returnPolicy" Core..=) Core.<$> returnPolicy,
            ("returnPolicyId" Core..=) Core.<$> returnPolicyId
          ]
      )

--
-- /See:/ 'newReturnpolicyCustomBatchResponse' smart constructor.
data ReturnpolicyCustomBatchResponse = ReturnpolicyCustomBatchResponse
  { -- | The result of the execution of the batch requests.
    entries :: (Core.Maybe [ReturnpolicyCustomBatchResponseEntry]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#returnpolicyCustomBatchResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReturnpolicyCustomBatchResponse' with the minimum fields required to make a request.
newReturnpolicyCustomBatchResponse ::
  ReturnpolicyCustomBatchResponse
newReturnpolicyCustomBatchResponse =
  ReturnpolicyCustomBatchResponse {entries = Core.Nothing, kind = Core.Nothing}

instance
  Core.FromJSON
    ReturnpolicyCustomBatchResponse
  where
  parseJSON =
    Core.withObject
      "ReturnpolicyCustomBatchResponse"
      ( \o ->
          ReturnpolicyCustomBatchResponse
            Core.<$> (o Core..:? "entries" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON ReturnpolicyCustomBatchResponse where
  toJSON ReturnpolicyCustomBatchResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("entries" Core..=) Core.<$> entries,
            ("kind" Core..=) Core.<$> kind
          ]
      )

--
-- /See:/ 'newReturnpolicyCustomBatchResponseEntry' smart constructor.
data ReturnpolicyCustomBatchResponseEntry = ReturnpolicyCustomBatchResponseEntry
  { -- | The ID of the request entry to which this entry responds.
    batchId :: (Core.Maybe Core.Word32),
    -- | A list of errors defined if, and only if, the request failed.
    errors :: (Core.Maybe Errors),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#returnpolicyCustomBatchResponseEntry@\"
    kind :: (Core.Maybe Core.Text),
    -- | The retrieved return policy.
    returnPolicy :: (Core.Maybe ReturnPolicy)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReturnpolicyCustomBatchResponseEntry' with the minimum fields required to make a request.
newReturnpolicyCustomBatchResponseEntry ::
  ReturnpolicyCustomBatchResponseEntry
newReturnpolicyCustomBatchResponseEntry =
  ReturnpolicyCustomBatchResponseEntry
    { batchId = Core.Nothing,
      errors = Core.Nothing,
      kind = Core.Nothing,
      returnPolicy = Core.Nothing
    }

instance
  Core.FromJSON
    ReturnpolicyCustomBatchResponseEntry
  where
  parseJSON =
    Core.withObject
      "ReturnpolicyCustomBatchResponseEntry"
      ( \o ->
          ReturnpolicyCustomBatchResponseEntry
            Core.<$> (o Core..:? "batchId")
            Core.<*> (o Core..:? "errors")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "returnPolicy")
      )

instance
  Core.ToJSON
    ReturnpolicyCustomBatchResponseEntry
  where
  toJSON ReturnpolicyCustomBatchResponseEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchId" Core..=) Core.<$> batchId,
            ("errors" Core..=) Core.<$> errors,
            ("kind" Core..=) Core.<$> kind,
            ("returnPolicy" Core..=) Core.<$> returnPolicy
          ]
      )

--
-- /See:/ 'newReturnpolicyListResponse' smart constructor.
data ReturnpolicyListResponse = ReturnpolicyListResponse
  { -- | Identifies what kind of resource this is. Value: the fixed string \"@content#returnpolicyListResponse@\".
    kind :: (Core.Maybe Core.Text),
    -- |
    resources :: (Core.Maybe [ReturnPolicy])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReturnpolicyListResponse' with the minimum fields required to make a request.
newReturnpolicyListResponse ::
  ReturnpolicyListResponse
newReturnpolicyListResponse =
  ReturnpolicyListResponse {kind = Core.Nothing, resources = Core.Nothing}

instance Core.FromJSON ReturnpolicyListResponse where
  parseJSON =
    Core.withObject
      "ReturnpolicyListResponse"
      ( \o ->
          ReturnpolicyListResponse
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "resources" Core..!= Core.mempty)
      )

instance Core.ToJSON ReturnpolicyListResponse where
  toJSON ReturnpolicyListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("resources" Core..=) Core.<$> resources
          ]
      )

--
-- /See:/ 'newRow' smart constructor.
newtype Row = Row
  { -- | The list of cells that constitute the row. Must have the same length as @columnHeaders@ for two-dimensional tables, a length of 1 for one-dimensional tables. Required.
    cells :: (Core.Maybe [Value])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Row' with the minimum fields required to make a request.
newRow ::
  Row
newRow = Row {cells = Core.Nothing}

instance Core.FromJSON Row where
  parseJSON =
    Core.withObject
      "Row"
      ( \o ->
          Row
            Core.<$> (o Core..:? "cells" Core..!= Core.mempty)
      )

instance Core.ToJSON Row where
  toJSON Row {..} =
    Core.object
      (Core.catMaybes [("cells" Core..=) Core.<$> cells])

-- | Request message for the ReportService.Search method.
--
-- /See:/ 'newSearchRequest' smart constructor.
data SearchRequest = SearchRequest
  { -- | Number of ReportRows to retrieve in a single page. Defaults to the maximum of 1000. Values above 1000 are coerced to 1000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Token of the page to retrieve. If not specified, the first page of results is returned. In order to request the next page of results, the value obtained from @next_page_token@ in the previous response should be used.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. Query that defines performance metrics to retrieve and dimensions according to which the metrics are to be segmented. For details on how to construct your query, see the <https://developers.google.com/shopping-content/guides/reports/query-language/overview Query Language guide>.
    query :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchRequest' with the minimum fields required to make a request.
newSearchRequest ::
  SearchRequest
newSearchRequest =
  SearchRequest
    { pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      query = Core.Nothing
    }

instance Core.FromJSON SearchRequest where
  parseJSON =
    Core.withObject
      "SearchRequest"
      ( \o ->
          SearchRequest
            Core.<$> (o Core..:? "pageSize")
            Core.<*> (o Core..:? "pageToken")
            Core.<*> (o Core..:? "query")
      )

instance Core.ToJSON SearchRequest where
  toJSON SearchRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("pageSize" Core..=) Core.<$> pageSize,
            ("pageToken" Core..=) Core.<$> pageToken,
            ("query" Core..=) Core.<$> query
          ]
      )

-- | Response message for the ReportService.Search method.
--
-- /See:/ 'newSearchResponse' smart constructor.
data SearchResponse = SearchResponse
  { -- | Token which can be sent as @page_token@ to retrieve the next page. If omitted, there are no subsequent pages.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Rows that matched the search query.
    results :: (Core.Maybe [ReportRow])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchResponse' with the minimum fields required to make a request.
newSearchResponse ::
  SearchResponse
newSearchResponse =
  SearchResponse {nextPageToken = Core.Nothing, results = Core.Nothing}

instance Core.FromJSON SearchResponse where
  parseJSON =
    Core.withObject
      "SearchResponse"
      ( \o ->
          SearchResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "results" Core..!= Core.mempty)
      )

instance Core.ToJSON SearchResponse where
  toJSON SearchResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("results" Core..=) Core.<$> results
          ]
      )

-- | Dimensions according to which metrics are segmented in the response. Values of product dimensions, e.g., offer id, reflect the state of a product at the time of the corresponding event, e.g., impression or order. Segment fields cannot be selected in queries without also selecting at least one metric field. Values are only set for dimensions requested explicitly in the request\'s search query.
--
-- /See:/ 'newSegments' smart constructor.
data Segments = Segments
  { -- | Brand of the product.
    brand :: (Core.Maybe Core.Text),
    -- | <https://developers.google.com/shopping-content/guides/reports/segmentation#category_and_product_type Product category (1st level)> in Google\'s product taxonomy.
    categoryL1 :: (Core.Maybe Core.Text),
    -- | <https://developers.google.com/shopping-content/guides/reports/segmentation#category_and_product_type Product category (2nd level)> in Google\'s product taxonomy.
    categoryL2 :: (Core.Maybe Core.Text),
    -- | <https://developers.google.com/shopping-content/guides/reports/segmentation#category_and_product_type Product category (3rd level)> in Google\'s product taxonomy.
    categoryL3 :: (Core.Maybe Core.Text),
    -- | <https://developers.google.com/shopping-content/guides/reports/segmentation#category_and_product_type Product category (4th level)> in Google\'s product taxonomy.
    categoryL4 :: (Core.Maybe Core.Text),
    -- | <https://developers.google.com/shopping-content/guides/reports/segmentation#category_and_product_type Product category (5th level)> in Google\'s product taxonomy.
    categoryL5 :: (Core.Maybe Core.Text),
    -- | Currency in which price metrics are represented, e.g., if you select @ordered_item_sales_micros@, the returned value will be represented by this currency.
    currencyCode :: (Core.Maybe Core.Text),
    -- | Custom label 0 for custom grouping of products.
    customLabel0 :: (Core.Maybe Core.Text),
    -- | Custom label 1 for custom grouping of products.
    customLabel1 :: (Core.Maybe Core.Text),
    -- | Custom label 2 for custom grouping of products.
    customLabel2 :: (Core.Maybe Core.Text),
    -- | Custom label 3 for custom grouping of products.
    customLabel3 :: (Core.Maybe Core.Text),
    -- | Custom label 4 for custom grouping of products.
    customLabel4 :: (Core.Maybe Core.Text),
    -- | Date in the merchant timezone to which metrics apply.
    date :: (Core.Maybe Date),
    -- | Merchant-provided id of the product.
    offerId :: (Core.Maybe Core.Text),
    -- | <https://developers.google.com/shopping-content/guides/reports/segmentation#category_and_product_type Product type (1st level)> in merchant\'s own product taxonomy.
    productTypeL1 :: (Core.Maybe Core.Text),
    -- | <https://developers.google.com/shopping-content/guides/reports/segmentation#category_and_product_type Product type (2nd level)> in merchant\'s own product taxonomy.
    productTypeL2 :: (Core.Maybe Core.Text),
    -- | <https://developers.google.com/shopping-content/guides/reports/segmentation#category_and_product_type Product type (3rd level)> in merchant\'s own product taxonomy.
    productTypeL3 :: (Core.Maybe Core.Text),
    -- | <https://developers.google.com/shopping-content/guides/reports/segmentation#category_and_product_type Product type (4th level)> in merchant\'s own product taxonomy.
    productTypeL4 :: (Core.Maybe Core.Text),
    -- | <https://developers.google.com/shopping-content/guides/reports/segmentation#category_and_product_type Product type (5th level)> in merchant\'s own product taxonomy.
    productTypeL5 :: (Core.Maybe Core.Text),
    -- | Program to which metrics apply, e.g., Free Product Listing.
    program :: (Core.Maybe Segments_Program),
    -- | Title of the product.
    title :: (Core.Maybe Core.Text),
    -- | First day of the week (Monday) of the metrics date in the merchant timezone.
    week :: (Core.Maybe Date)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Segments' with the minimum fields required to make a request.
newSegments ::
  Segments
newSegments =
  Segments
    { brand = Core.Nothing,
      categoryL1 = Core.Nothing,
      categoryL2 = Core.Nothing,
      categoryL3 = Core.Nothing,
      categoryL4 = Core.Nothing,
      categoryL5 = Core.Nothing,
      currencyCode = Core.Nothing,
      customLabel0 = Core.Nothing,
      customLabel1 = Core.Nothing,
      customLabel2 = Core.Nothing,
      customLabel3 = Core.Nothing,
      customLabel4 = Core.Nothing,
      date = Core.Nothing,
      offerId = Core.Nothing,
      productTypeL1 = Core.Nothing,
      productTypeL2 = Core.Nothing,
      productTypeL3 = Core.Nothing,
      productTypeL4 = Core.Nothing,
      productTypeL5 = Core.Nothing,
      program = Core.Nothing,
      title = Core.Nothing,
      week = Core.Nothing
    }

instance Core.FromJSON Segments where
  parseJSON =
    Core.withObject
      "Segments"
      ( \o ->
          Segments
            Core.<$> (o Core..:? "brand")
            Core.<*> (o Core..:? "categoryL1")
            Core.<*> (o Core..:? "categoryL2")
            Core.<*> (o Core..:? "categoryL3")
            Core.<*> (o Core..:? "categoryL4")
            Core.<*> (o Core..:? "categoryL5")
            Core.<*> (o Core..:? "currencyCode")
            Core.<*> (o Core..:? "customLabel0")
            Core.<*> (o Core..:? "customLabel1")
            Core.<*> (o Core..:? "customLabel2")
            Core.<*> (o Core..:? "customLabel3")
            Core.<*> (o Core..:? "customLabel4")
            Core.<*> (o Core..:? "date")
            Core.<*> (o Core..:? "offerId")
            Core.<*> (o Core..:? "productTypeL1")
            Core.<*> (o Core..:? "productTypeL2")
            Core.<*> (o Core..:? "productTypeL3")
            Core.<*> (o Core..:? "productTypeL4")
            Core.<*> (o Core..:? "productTypeL5")
            Core.<*> (o Core..:? "program")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "week")
      )

instance Core.ToJSON Segments where
  toJSON Segments {..} =
    Core.object
      ( Core.catMaybes
          [ ("brand" Core..=) Core.<$> brand,
            ("categoryL1" Core..=) Core.<$> categoryL1,
            ("categoryL2" Core..=) Core.<$> categoryL2,
            ("categoryL3" Core..=) Core.<$> categoryL3,
            ("categoryL4" Core..=) Core.<$> categoryL4,
            ("categoryL5" Core..=) Core.<$> categoryL5,
            ("currencyCode" Core..=) Core.<$> currencyCode,
            ("customLabel0" Core..=) Core.<$> customLabel0,
            ("customLabel1" Core..=) Core.<$> customLabel1,
            ("customLabel2" Core..=) Core.<$> customLabel2,
            ("customLabel3" Core..=) Core.<$> customLabel3,
            ("customLabel4" Core..=) Core.<$> customLabel4,
            ("date" Core..=) Core.<$> date,
            ("offerId" Core..=) Core.<$> offerId,
            ("productTypeL1" Core..=) Core.<$> productTypeL1,
            ("productTypeL2" Core..=) Core.<$> productTypeL2,
            ("productTypeL3" Core..=) Core.<$> productTypeL3,
            ("productTypeL4" Core..=) Core.<$> productTypeL4,
            ("productTypeL5" Core..=) Core.<$> productTypeL5,
            ("program" Core..=) Core.<$> program,
            ("title" Core..=) Core.<$> title,
            ("week" Core..=) Core.<$> week
          ]
      )

--
-- /See:/ 'newService' smart constructor.
data Service = Service
  { -- | A boolean exposing the active status of the shipping service. Required.
    active :: (Core.Maybe Core.Bool),
    -- | The CLDR code of the currency to which this service applies. Must match that of the prices in rate groups.
    currency :: (Core.Maybe Core.Text),
    -- | The CLDR territory code of the country to which the service applies. Required.
    deliveryCountry :: (Core.Maybe Core.Text),
    -- | Time spent in various aspects from order to the delivery of the product. Required.
    deliveryTime :: (Core.Maybe DeliveryTime),
    -- | Eligibility for this service. Acceptable values are: - \"@All scenarios@\" - \"@All scenarios except Shopping Actions@\" - \"@Shopping Actions@\"
    eligibility :: (Core.Maybe Core.Text),
    -- | Minimum order value for this service. If set, indicates that customers will have to spend at least this amount. All prices within a service must have the same currency. Cannot be set together with minimum/order/value_table.
    minimumOrderValue :: (Core.Maybe Price),
    -- | Table of per store minimum order values for the pickup fulfillment type. Cannot be set together with minimum/order/value.
    minimumOrderValueTable :: (Core.Maybe MinimumOrderValueTable),
    -- | Free-form name of the service. Must be unique within target account. Required.
    name :: (Core.Maybe Core.Text),
    -- | The carrier-service pair delivering items to collection points. The list of supported pickup services can be retrieved through the @getSupportedPickupServices@ method. Required if and only if the service delivery type is @pickup@.
    pickupService :: (Core.Maybe PickupCarrierService),
    -- | Shipping rate group definitions. Only the last one is allowed to have an empty @applicableShippingLabels@, which means \"everything else\". The other @applicableShippingLabels@ must not overlap.
    rateGroups :: (Core.Maybe [RateGroup]),
    -- | Type of locations this service ships orders to. Acceptable values are: - \"@delivery@\" - \"@pickup@\"
    shipmentType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Service' with the minimum fields required to make a request.
newService ::
  Service
newService =
  Service
    { active = Core.Nothing,
      currency = Core.Nothing,
      deliveryCountry = Core.Nothing,
      deliveryTime = Core.Nothing,
      eligibility = Core.Nothing,
      minimumOrderValue = Core.Nothing,
      minimumOrderValueTable = Core.Nothing,
      name = Core.Nothing,
      pickupService = Core.Nothing,
      rateGroups = Core.Nothing,
      shipmentType = Core.Nothing
    }

instance Core.FromJSON Service where
  parseJSON =
    Core.withObject
      "Service"
      ( \o ->
          Service
            Core.<$> (o Core..:? "active")
            Core.<*> (o Core..:? "currency")
            Core.<*> (o Core..:? "deliveryCountry")
            Core.<*> (o Core..:? "deliveryTime")
            Core.<*> (o Core..:? "eligibility")
            Core.<*> (o Core..:? "minimumOrderValue")
            Core.<*> (o Core..:? "minimumOrderValueTable")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "pickupService")
            Core.<*> (o Core..:? "rateGroups" Core..!= Core.mempty)
            Core.<*> (o Core..:? "shipmentType")
      )

instance Core.ToJSON Service where
  toJSON Service {..} =
    Core.object
      ( Core.catMaybes
          [ ("active" Core..=) Core.<$> active,
            ("currency" Core..=) Core.<$> currency,
            ("deliveryCountry" Core..=) Core.<$> deliveryCountry,
            ("deliveryTime" Core..=) Core.<$> deliveryTime,
            ("eligibility" Core..=) Core.<$> eligibility,
            ("minimumOrderValue" Core..=)
              Core.<$> minimumOrderValue,
            ("minimumOrderValueTable" Core..=)
              Core.<$> minimumOrderValueTable,
            ("name" Core..=) Core.<$> name,
            ("pickupService" Core..=) Core.<$> pickupService,
            ("rateGroups" Core..=) Core.<$> rateGroups,
            ("shipmentType" Core..=) Core.<$> shipmentType
          ]
      )

-- | Settlement reports detail order-level and item-level credits and debits between you and Google.
--
-- /See:/ 'newSettlementReport' smart constructor.
data SettlementReport = SettlementReport
  { -- | The end date on which all transactions are included in the report, in ISO 8601 format.
    endDate :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#settlementReport@\"
    kind :: (Core.Maybe Core.Text),
    -- | The residual amount from the previous invoice. This is set only if the previous invoices are not paid because of negative balance.
    previousBalance :: (Core.Maybe Price),
    -- | The ID of the settlement report.
    settlementId :: (Core.Maybe Core.Text),
    -- | The start date on which all transactions are included in the report, in ISO 8601 format.
    startDate :: (Core.Maybe Core.Text),
    -- | The money due to the merchant.
    transferAmount :: (Core.Maybe Price),
    -- | Date on which transfer for this payment was initiated by Google, in ISO 8601 format.
    transferDate :: (Core.Maybe Core.Text),
    -- | The list of bank identifiers used for the transfer. For example, Trace ID for Federal Automated Clearing House (ACH). This may also be known as the Wire ID.
    transferIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SettlementReport' with the minimum fields required to make a request.
newSettlementReport ::
  SettlementReport
newSettlementReport =
  SettlementReport
    { endDate = Core.Nothing,
      kind = Core.Nothing,
      previousBalance = Core.Nothing,
      settlementId = Core.Nothing,
      startDate = Core.Nothing,
      transferAmount = Core.Nothing,
      transferDate = Core.Nothing,
      transferIds = Core.Nothing
    }

instance Core.FromJSON SettlementReport where
  parseJSON =
    Core.withObject
      "SettlementReport"
      ( \o ->
          SettlementReport
            Core.<$> (o Core..:? "endDate")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "previousBalance")
            Core.<*> (o Core..:? "settlementId")
            Core.<*> (o Core..:? "startDate")
            Core.<*> (o Core..:? "transferAmount")
            Core.<*> (o Core..:? "transferDate")
            Core.<*> (o Core..:? "transferIds" Core..!= Core.mempty)
      )

instance Core.ToJSON SettlementReport where
  toJSON SettlementReport {..} =
    Core.object
      ( Core.catMaybes
          [ ("endDate" Core..=) Core.<$> endDate,
            ("kind" Core..=) Core.<$> kind,
            ("previousBalance" Core..=) Core.<$> previousBalance,
            ("settlementId" Core..=) Core.<$> settlementId,
            ("startDate" Core..=) Core.<$> startDate,
            ("transferAmount" Core..=) Core.<$> transferAmount,
            ("transferDate" Core..=) Core.<$> transferDate,
            ("transferIds" Core..=) Core.<$> transferIds
          ]
      )

-- | Settlement transactions give a detailed breakdown of the settlement report.
--
-- /See:/ 'newSettlementTransaction' smart constructor.
data SettlementTransaction = SettlementTransaction
  { -- | The amount for the transaction.
    amount :: (Core.Maybe SettlementTransactionAmount),
    -- | Identifiers of the transaction.
    identifiers :: (Core.Maybe SettlementTransactionIdentifiers),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#settlementTransaction@\"
    kind :: (Core.Maybe Core.Text),
    -- | Details of the transaction.
    transaction :: (Core.Maybe SettlementTransactionTransaction)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SettlementTransaction' with the minimum fields required to make a request.
newSettlementTransaction ::
  SettlementTransaction
newSettlementTransaction =
  SettlementTransaction
    { amount = Core.Nothing,
      identifiers = Core.Nothing,
      kind = Core.Nothing,
      transaction = Core.Nothing
    }

instance Core.FromJSON SettlementTransaction where
  parseJSON =
    Core.withObject
      "SettlementTransaction"
      ( \o ->
          SettlementTransaction
            Core.<$> (o Core..:? "amount")
            Core.<*> (o Core..:? "identifiers")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "transaction")
      )

instance Core.ToJSON SettlementTransaction where
  toJSON SettlementTransaction {..} =
    Core.object
      ( Core.catMaybes
          [ ("amount" Core..=) Core.<$> amount,
            ("identifiers" Core..=) Core.<$> identifiers,
            ("kind" Core..=) Core.<$> kind,
            ("transaction" Core..=) Core.<$> transaction
          ]
      )

--
-- /See:/ 'newSettlementTransactionAmount' smart constructor.
data SettlementTransactionAmount = SettlementTransactionAmount
  { -- |
    commission :: (Core.Maybe SettlementTransactionAmountCommission),
    -- | The description of the event. Acceptable values are: - \"@taxWithhold@\" - \"@principal@\" - \"@principalAdjustment@\" - \"@shippingFee@\" - \"@merchantRemittedSalesTax@\" - \"@googleRemittedSalesTax@\" - \"@merchantCoupon@\" - \"@merchantCouponTax@\" - \"@merchantRemittedDisposalTax@\" - \"@googleRemittedDisposalTax@\" - \"@merchantRemittedRedemptionFee@\" - \"@googleRemittedRedemptionFee@\" - \"@eeeEcoFee@\" - \"@furnitureEcoFee@\" - \"@copyPrivateFee@\" - \"@eeeEcoFeeCommission@\" - \"@furnitureEcoFeeCommission@\" - \"@copyPrivateFeeCommission@\" - \"@principalRefund@\" - \"@principalRefundTax@\" - \"@itemCommission@\" - \"@adjustmentCommission@\" - \"@shippingFeeCommission@\" - \"@commissionRefund@\" - \"@damaged@\" - \"@damagedOrDefectiveItem@\" - \"@expiredItem@\" - \"@faultyItem@\" - \"@incorrectItemReceived@\" - \"@itemMissing@\" - \"@qualityNotExpected@\" - \"@receivedTooLate@\" - \"@storePackageMissing@\" - \"@transitPackageMissing@\" - \"@unsuccessfulDeliveryUndeliverable@\" -
    -- \"@wrongChargeInStore@\" - \"@wrongItem@\" - \"@returns@\" - \"@undeliverable@\" - \"@issueRelatedRefundAndReplacementAmountDescription@\" - \"@refundFromMerchant@\" - \"@returnLabelShippingFee@\" - \"@lumpSumCorrection@\" - \"@pspFee@\" - \"@principalRefundDoesNotFit@\" - \"@principalRefundOrderedWrongItem@\" - \"@principalRefundQualityNotExpected@\" - \"@principalRefundBetterPriceFound@\" - \"@principalRefundNoLongerNeeded@\" - \"@principalRefundChangedMind@\" - \"@principalRefundReceivedTooLate@\" - \"@principalRefundIncorrectItemReceived@\" - \"@principalRefundDamagedOrDefectiveItem@\" - \"@principalRefundDidNotMatchDescription@\" - \"@principalRefundExpiredItem@\"
    description :: (Core.Maybe Core.Text),
    -- | The amount that contributes to the line item price.
    transactionAmount :: (Core.Maybe Price),
    -- | The type of the amount. Acceptable values are: - \"@itemPrice@\" - \"@orderPrice@\" - \"@refund@\" - \"@earlyRefund@\" - \"@courtesyRefund@\" - \"@returnRefund@\" - \"@returnLabelShippingFeeAmount@\" - \"@lumpSumCorrectionAmount@\"
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SettlementTransactionAmount' with the minimum fields required to make a request.
newSettlementTransactionAmount ::
  SettlementTransactionAmount
newSettlementTransactionAmount =
  SettlementTransactionAmount
    { commission = Core.Nothing,
      description = Core.Nothing,
      transactionAmount = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON SettlementTransactionAmount where
  parseJSON =
    Core.withObject
      "SettlementTransactionAmount"
      ( \o ->
          SettlementTransactionAmount
            Core.<$> (o Core..:? "commission")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "transactionAmount")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON SettlementTransactionAmount where
  toJSON SettlementTransactionAmount {..} =
    Core.object
      ( Core.catMaybes
          [ ("commission" Core..=) Core.<$> commission,
            ("description" Core..=) Core.<$> description,
            ("transactionAmount" Core..=)
              Core.<$> transactionAmount,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newSettlementTransactionAmountCommission' smart constructor.
data SettlementTransactionAmountCommission = SettlementTransactionAmountCommission
  { -- | The category of the commission. Acceptable values are: - \"@animalsAndPetSupplies@\" - \"@dogCatFoodAndCatLitter@\" - \"@apparelAndAccessories@\" - \"@shoesHandbagsAndSunglasses@\" - \"@costumesAndAccessories@\" - \"@jewelry@\" - \"@watches@\" - \"@hobbiesArtsAndCrafts@\" - \"@homeAndGarden@\" - \"@entertainmentCollectibles@\" - \"@collectibleCoins@\" - \"@sportsCollectibles@\" - \"@sportingGoods@\" - \"@toysAndGames@\" - \"@musicalInstruments@\" - \"@giftCards@\" - \"@babyAndToddler@\" - \"@babyFoodWipesAndDiapers@\" - \"@businessAndIndustrial@\" - \"@camerasOpticsAndPhotography@\" - \"@consumerElectronics@\" - \"@electronicsAccessories@\" - \"@personalComputers@\" - \"@videoGameConsoles@\" - \"@foodAndGrocery@\" - \"@beverages@\" - \"@tobaccoProducts@\" - \"@furniture@\" - \"@hardware@\" - \"@buildingMaterials@\" - \"@tools@\" - \"@healthAndPersonalCare@\" - \"@beauty@\" - \"@householdSupplies@\" - \"@kitchenAndDining@\" - \"@majorAppliances@\" - \"@luggageAndBags@\" - \"@media@\" - \"@officeSupplies@\" -
    -- \"@softwareAndVideoGames@\" - \"@vehiclePartsAndAccessories@\" - \"@vehicleTiresAndWheels@\" - \"@vehicles@\" - \"@everythingElse@\"
    category :: (Core.Maybe Core.Text),
    -- | Rate of the commission in percentage.
    rate :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SettlementTransactionAmountCommission' with the minimum fields required to make a request.
newSettlementTransactionAmountCommission ::
  SettlementTransactionAmountCommission
newSettlementTransactionAmountCommission =
  SettlementTransactionAmountCommission
    { category = Core.Nothing,
      rate = Core.Nothing
    }

instance
  Core.FromJSON
    SettlementTransactionAmountCommission
  where
  parseJSON =
    Core.withObject
      "SettlementTransactionAmountCommission"
      ( \o ->
          SettlementTransactionAmountCommission
            Core.<$> (o Core..:? "category") Core.<*> (o Core..:? "rate")
      )

instance
  Core.ToJSON
    SettlementTransactionAmountCommission
  where
  toJSON SettlementTransactionAmountCommission {..} =
    Core.object
      ( Core.catMaybes
          [ ("category" Core..=) Core.<$> category,
            ("rate" Core..=) Core.<$> rate
          ]
      )

--
-- /See:/ 'newSettlementTransactionIdentifiers' smart constructor.
data SettlementTransactionIdentifiers = SettlementTransactionIdentifiers
  { -- | The identifier of the adjustments, if it\'s available.
    adjustmentId :: (Core.Maybe Core.Text),
    -- | The merchant provided order ID.
    merchantOrderId :: (Core.Maybe Core.Text),
    -- | The identifier of the item.
    orderItemId :: (Core.Maybe Core.Text),
    -- | The unique ID of the settlement transaction entry.
    settlementEntryId :: (Core.Maybe Core.Text),
    -- | The shipment ids for the item.
    shipmentIds :: (Core.Maybe [Core.Text]),
    -- | The Google transaction ID.
    transactionId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SettlementTransactionIdentifiers' with the minimum fields required to make a request.
newSettlementTransactionIdentifiers ::
  SettlementTransactionIdentifiers
newSettlementTransactionIdentifiers =
  SettlementTransactionIdentifiers
    { adjustmentId = Core.Nothing,
      merchantOrderId = Core.Nothing,
      orderItemId = Core.Nothing,
      settlementEntryId = Core.Nothing,
      shipmentIds = Core.Nothing,
      transactionId = Core.Nothing
    }

instance
  Core.FromJSON
    SettlementTransactionIdentifiers
  where
  parseJSON =
    Core.withObject
      "SettlementTransactionIdentifiers"
      ( \o ->
          SettlementTransactionIdentifiers
            Core.<$> (o Core..:? "adjustmentId")
            Core.<*> (o Core..:? "merchantOrderId")
            Core.<*> (o Core..:? "orderItemId")
            Core.<*> (o Core..:? "settlementEntryId")
            Core.<*> (o Core..:? "shipmentIds" Core..!= Core.mempty)
            Core.<*> (o Core..:? "transactionId")
      )

instance Core.ToJSON SettlementTransactionIdentifiers where
  toJSON SettlementTransactionIdentifiers {..} =
    Core.object
      ( Core.catMaybes
          [ ("adjustmentId" Core..=) Core.<$> adjustmentId,
            ("merchantOrderId" Core..=) Core.<$> merchantOrderId,
            ("orderItemId" Core..=) Core.<$> orderItemId,
            ("settlementEntryId" Core..=)
              Core.<$> settlementEntryId,
            ("shipmentIds" Core..=) Core.<$> shipmentIds,
            ("transactionId" Core..=) Core.<$> transactionId
          ]
      )

--
-- /See:/ 'newSettlementTransactionTransaction' smart constructor.
data SettlementTransactionTransaction = SettlementTransactionTransaction
  { -- | The time on which the event occurred in ISO 8601 format.
    postDate :: (Core.Maybe Core.Text),
    -- | The type of the transaction that occurred. Acceptable values are: - \"@order@\" - \"@reversal@\" - \"@orderRefund@\" - \"@reversalRefund@\" - \"@issueRelatedRefundAndReplacement@\" - \"@returnLabelShippingFeeTransaction@\" - \"@reversalIssueRelatedRefundAndReplacement@\" - \"@reversalReturnLabelShippingFeeTransaction@\" - \"@lumpSumCorrectionTransaction@\"
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SettlementTransactionTransaction' with the minimum fields required to make a request.
newSettlementTransactionTransaction ::
  SettlementTransactionTransaction
newSettlementTransactionTransaction =
  SettlementTransactionTransaction
    { postDate = Core.Nothing,
      type' = Core.Nothing
    }

instance
  Core.FromJSON
    SettlementTransactionTransaction
  where
  parseJSON =
    Core.withObject
      "SettlementTransactionTransaction"
      ( \o ->
          SettlementTransactionTransaction
            Core.<$> (o Core..:? "postDate") Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON SettlementTransactionTransaction where
  toJSON SettlementTransactionTransaction {..} =
    Core.object
      ( Core.catMaybes
          [ ("postDate" Core..=) Core.<$> postDate,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newSettlementreportsListResponse' smart constructor.
data SettlementreportsListResponse = SettlementreportsListResponse
  { -- | Identifies what kind of resource this is. Value: the fixed string \"@content#settlementreportsListResponse@\".
    kind :: (Core.Maybe Core.Text),
    -- | The token for the retrieval of the next page of returns.
    nextPageToken :: (Core.Maybe Core.Text),
    -- |
    resources :: (Core.Maybe [SettlementReport])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SettlementreportsListResponse' with the minimum fields required to make a request.
newSettlementreportsListResponse ::
  SettlementreportsListResponse
newSettlementreportsListResponse =
  SettlementreportsListResponse
    { kind = Core.Nothing,
      nextPageToken = Core.Nothing,
      resources = Core.Nothing
    }

instance Core.FromJSON SettlementreportsListResponse where
  parseJSON =
    Core.withObject
      "SettlementreportsListResponse"
      ( \o ->
          SettlementreportsListResponse
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "resources" Core..!= Core.mempty)
      )

instance Core.ToJSON SettlementreportsListResponse where
  toJSON SettlementreportsListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("resources" Core..=) Core.<$> resources
          ]
      )

--
-- /See:/ 'newSettlementtransactionsListResponse' smart constructor.
data SettlementtransactionsListResponse = SettlementtransactionsListResponse
  { -- | Identifies what kind of resource this is. Value: the fixed string \"@content#settlementtransactionsListResponse@\".
    kind :: (Core.Maybe Core.Text),
    -- | The token for the retrieval of the next page of returns.
    nextPageToken :: (Core.Maybe Core.Text),
    -- |
    resources :: (Core.Maybe [SettlementTransaction])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SettlementtransactionsListResponse' with the minimum fields required to make a request.
newSettlementtransactionsListResponse ::
  SettlementtransactionsListResponse
newSettlementtransactionsListResponse =
  SettlementtransactionsListResponse
    { kind = Core.Nothing,
      nextPageToken = Core.Nothing,
      resources = Core.Nothing
    }

instance
  Core.FromJSON
    SettlementtransactionsListResponse
  where
  parseJSON =
    Core.withObject
      "SettlementtransactionsListResponse"
      ( \o ->
          SettlementtransactionsListResponse
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "resources" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    SettlementtransactionsListResponse
  where
  toJSON SettlementtransactionsListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("resources" Core..=) Core.<$> resources
          ]
      )

--
-- /See:/ 'newShipmentInvoice' smart constructor.
data ShipmentInvoice = ShipmentInvoice
  { -- | [required] Invoice summary.
    invoiceSummary :: (Core.Maybe InvoiceSummary),
    -- | [required] Invoice details per line item.
    lineItemInvoices :: (Core.Maybe [ShipmentInvoiceLineItemInvoice]),
    -- | [required] ID of the shipment group. It is assigned by the merchant in the @shipLineItems@ method and is used to group multiple line items that have the same kind of shipping charges.
    shipmentGroupId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ShipmentInvoice' with the minimum fields required to make a request.
newShipmentInvoice ::
  ShipmentInvoice
newShipmentInvoice =
  ShipmentInvoice
    { invoiceSummary = Core.Nothing,
      lineItemInvoices = Core.Nothing,
      shipmentGroupId = Core.Nothing
    }

instance Core.FromJSON ShipmentInvoice where
  parseJSON =
    Core.withObject
      "ShipmentInvoice"
      ( \o ->
          ShipmentInvoice
            Core.<$> (o Core..:? "invoiceSummary")
            Core.<*> (o Core..:? "lineItemInvoices" Core..!= Core.mempty)
            Core.<*> (o Core..:? "shipmentGroupId")
      )

instance Core.ToJSON ShipmentInvoice where
  toJSON ShipmentInvoice {..} =
    Core.object
      ( Core.catMaybes
          [ ("invoiceSummary" Core..=) Core.<$> invoiceSummary,
            ("lineItemInvoices" Core..=)
              Core.<$> lineItemInvoices,
            ("shipmentGroupId" Core..=)
              Core.<$> shipmentGroupId
          ]
      )

--
-- /See:/ 'newShipmentInvoiceLineItemInvoice' smart constructor.
data ShipmentInvoiceLineItemInvoice = ShipmentInvoiceLineItemInvoice
  { -- | ID of the line item. Either lineItemId or productId must be set.
    lineItemId :: (Core.Maybe Core.Text),
    -- | ID of the product. This is the REST ID used in the products service. Either lineItemId or productId must be set.
    productId :: (Core.Maybe Core.Text),
    -- | [required] The shipment unit ID is assigned by the merchant and defines individual quantities within a line item. The same ID can be assigned to units that are the same while units that differ must be assigned a different ID (for example: free or promotional units).
    shipmentUnitIds :: (Core.Maybe [Core.Text]),
    -- | [required] Invoice details for a single unit.
    unitInvoice :: (Core.Maybe UnitInvoice)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ShipmentInvoiceLineItemInvoice' with the minimum fields required to make a request.
newShipmentInvoiceLineItemInvoice ::
  ShipmentInvoiceLineItemInvoice
newShipmentInvoiceLineItemInvoice =
  ShipmentInvoiceLineItemInvoice
    { lineItemId = Core.Nothing,
      productId = Core.Nothing,
      shipmentUnitIds = Core.Nothing,
      unitInvoice = Core.Nothing
    }

instance Core.FromJSON ShipmentInvoiceLineItemInvoice where
  parseJSON =
    Core.withObject
      "ShipmentInvoiceLineItemInvoice"
      ( \o ->
          ShipmentInvoiceLineItemInvoice
            Core.<$> (o Core..:? "lineItemId")
            Core.<*> (o Core..:? "productId")
            Core.<*> (o Core..:? "shipmentUnitIds" Core..!= Core.mempty)
            Core.<*> (o Core..:? "unitInvoice")
      )

instance Core.ToJSON ShipmentInvoiceLineItemInvoice where
  toJSON ShipmentInvoiceLineItemInvoice {..} =
    Core.object
      ( Core.catMaybes
          [ ("lineItemId" Core..=) Core.<$> lineItemId,
            ("productId" Core..=) Core.<$> productId,
            ("shipmentUnitIds" Core..=) Core.<$> shipmentUnitIds,
            ("unitInvoice" Core..=) Core.<$> unitInvoice
          ]
      )

--
-- /See:/ 'newShipmentTrackingInfo' smart constructor.
data ShipmentTrackingInfo = ShipmentTrackingInfo
  { -- | The shipping carrier that handles the package. Acceptable values are: - \"@boxtal@\" - \"@bpost@\" - \"@chronopost@\" - \"@colisPrive@\" - \"@colissimo@\" - \"@cxt@\" - \"@deliv@\" - \"@dhl@\" - \"@dpd@\" - \"@dynamex@\" - \"@eCourier@\" - \"@easypost@\" - \"@efw@\" - \"@fedex@\" - \"@fedexSmartpost@\" - \"@geodis@\" - \"@gls@\" - \"@googleCourier@\" - \"@gsx@\" - \"@jdLogistics@\" - \"@laPoste@\" - \"@lasership@\" - \"@manual@\" - \"@mpx@\" - \"@onTrac@\" - \"@other@\" - \"@tnt@\" - \"@uds@\" - \"@ups@\" - \"@usps@\"
    carrier :: (Core.Maybe Core.Text),
    -- | The tracking number for the package.
    trackingNumber :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ShipmentTrackingInfo' with the minimum fields required to make a request.
newShipmentTrackingInfo ::
  ShipmentTrackingInfo
newShipmentTrackingInfo =
  ShipmentTrackingInfo {carrier = Core.Nothing, trackingNumber = Core.Nothing}

instance Core.FromJSON ShipmentTrackingInfo where
  parseJSON =
    Core.withObject
      "ShipmentTrackingInfo"
      ( \o ->
          ShipmentTrackingInfo
            Core.<$> (o Core..:? "carrier")
            Core.<*> (o Core..:? "trackingNumber")
      )

instance Core.ToJSON ShipmentTrackingInfo where
  toJSON ShipmentTrackingInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("carrier" Core..=) Core.<$> carrier,
            ("trackingNumber" Core..=) Core.<$> trackingNumber
          ]
      )

-- | The merchant account\'s shipping settings. All methods except getsupportedcarriers and getsupportedholidays require the admin role.
--
-- /See:/ 'newShippingSettings' smart constructor.
data ShippingSettings = ShippingSettings
  { -- | The ID of the account to which these account shipping settings belong. Ignored upon update, always present in get request responses.
    accountId :: (Core.Maybe Core.Word64),
    -- | A list of postal code groups that can be referred to in @services@. Optional.
    postalCodeGroups :: (Core.Maybe [PostalCodeGroup]),
    -- | The target account\'s list of services. Optional.
    services :: (Core.Maybe [Service]),
    -- | Optional. A list of warehouses which can be referred to in @services@.
    warehouses :: (Core.Maybe [Warehouse])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ShippingSettings' with the minimum fields required to make a request.
newShippingSettings ::
  ShippingSettings
newShippingSettings =
  ShippingSettings
    { accountId = Core.Nothing,
      postalCodeGroups = Core.Nothing,
      services = Core.Nothing,
      warehouses = Core.Nothing
    }

instance Core.FromJSON ShippingSettings where
  parseJSON =
    Core.withObject
      "ShippingSettings"
      ( \o ->
          ShippingSettings
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "postalCodeGroups" Core..!= Core.mempty)
            Core.<*> (o Core..:? "services" Core..!= Core.mempty)
            Core.<*> (o Core..:? "warehouses" Core..!= Core.mempty)
      )

instance Core.ToJSON ShippingSettings where
  toJSON ShippingSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.. Core.AsText
              Core.<$> accountId,
            ("postalCodeGroups" Core..=)
              Core.<$> postalCodeGroups,
            ("services" Core..=) Core.<$> services,
            ("warehouses" Core..=) Core.<$> warehouses
          ]
      )

--
-- /See:/ 'newShippingsettingsCustomBatchRequest' smart constructor.
newtype ShippingsettingsCustomBatchRequest = ShippingsettingsCustomBatchRequest
  { -- | The request entries to be processed in the batch.
    entries :: (Core.Maybe [ShippingsettingsCustomBatchRequestEntry])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ShippingsettingsCustomBatchRequest' with the minimum fields required to make a request.
newShippingsettingsCustomBatchRequest ::
  ShippingsettingsCustomBatchRequest
newShippingsettingsCustomBatchRequest =
  ShippingsettingsCustomBatchRequest {entries = Core.Nothing}

instance
  Core.FromJSON
    ShippingsettingsCustomBatchRequest
  where
  parseJSON =
    Core.withObject
      "ShippingsettingsCustomBatchRequest"
      ( \o ->
          ShippingsettingsCustomBatchRequest
            Core.<$> (o Core..:? "entries" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    ShippingsettingsCustomBatchRequest
  where
  toJSON ShippingsettingsCustomBatchRequest {..} =
    Core.object
      ( Core.catMaybes
          [("entries" Core..=) Core.<$> entries]
      )

-- | A batch entry encoding a single non-batch shippingsettings request.
--
-- /See:/ 'newShippingsettingsCustomBatchRequestEntry' smart constructor.
data ShippingsettingsCustomBatchRequestEntry = ShippingsettingsCustomBatchRequestEntry
  { -- | The ID of the account for which to get\/update account shipping settings.
    accountId :: (Core.Maybe Core.Word64),
    -- | An entry ID, unique within the batch request.
    batchId :: (Core.Maybe Core.Word32),
    -- | The ID of the managing account.
    merchantId :: (Core.Maybe Core.Word64),
    -- | The method of the batch entry. Acceptable values are: - \"@get@\" - \"@update@\"
    method :: (Core.Maybe Core.Text),
    -- | The account shipping settings to update. Only defined if the method is @update@.
    shippingSettings :: (Core.Maybe ShippingSettings)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ShippingsettingsCustomBatchRequestEntry' with the minimum fields required to make a request.
newShippingsettingsCustomBatchRequestEntry ::
  ShippingsettingsCustomBatchRequestEntry
newShippingsettingsCustomBatchRequestEntry =
  ShippingsettingsCustomBatchRequestEntry
    { accountId = Core.Nothing,
      batchId = Core.Nothing,
      merchantId = Core.Nothing,
      method = Core.Nothing,
      shippingSettings = Core.Nothing
    }

instance
  Core.FromJSON
    ShippingsettingsCustomBatchRequestEntry
  where
  parseJSON =
    Core.withObject
      "ShippingsettingsCustomBatchRequestEntry"
      ( \o ->
          ShippingsettingsCustomBatchRequestEntry
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "batchId")
            Core.<*> (o Core..:? "merchantId")
            Core.<*> (o Core..:? "method")
            Core.<*> (o Core..:? "shippingSettings")
      )

instance
  Core.ToJSON
    ShippingsettingsCustomBatchRequestEntry
  where
  toJSON ShippingsettingsCustomBatchRequestEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.. Core.AsText
              Core.<$> accountId,
            ("batchId" Core..=) Core.<$> batchId,
            ("merchantId" Core..=) Core.. Core.AsText
              Core.<$> merchantId,
            ("method" Core..=) Core.<$> method,
            ("shippingSettings" Core..=)
              Core.<$> shippingSettings
          ]
      )

--
-- /See:/ 'newShippingsettingsCustomBatchResponse' smart constructor.
data ShippingsettingsCustomBatchResponse = ShippingsettingsCustomBatchResponse
  { -- | The result of the execution of the batch requests.
    entries :: (Core.Maybe [ShippingsettingsCustomBatchResponseEntry]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#shippingsettingsCustomBatchResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ShippingsettingsCustomBatchResponse' with the minimum fields required to make a request.
newShippingsettingsCustomBatchResponse ::
  ShippingsettingsCustomBatchResponse
newShippingsettingsCustomBatchResponse =
  ShippingsettingsCustomBatchResponse
    { entries = Core.Nothing,
      kind = Core.Nothing
    }

instance
  Core.FromJSON
    ShippingsettingsCustomBatchResponse
  where
  parseJSON =
    Core.withObject
      "ShippingsettingsCustomBatchResponse"
      ( \o ->
          ShippingsettingsCustomBatchResponse
            Core.<$> (o Core..:? "entries" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind")
      )

instance
  Core.ToJSON
    ShippingsettingsCustomBatchResponse
  where
  toJSON ShippingsettingsCustomBatchResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("entries" Core..=) Core.<$> entries,
            ("kind" Core..=) Core.<$> kind
          ]
      )

-- | A batch entry encoding a single non-batch shipping settings response.
--
-- /See:/ 'newShippingsettingsCustomBatchResponseEntry' smart constructor.
data ShippingsettingsCustomBatchResponseEntry = ShippingsettingsCustomBatchResponseEntry
  { -- | The ID of the request entry to which this entry responds.
    batchId :: (Core.Maybe Core.Word32),
    -- | A list of errors defined if, and only if, the request failed.
    errors :: (Core.Maybe Errors),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#shippingsettingsCustomBatchResponseEntry@\"
    kind :: (Core.Maybe Core.Text),
    -- | The retrieved or updated account shipping settings.
    shippingSettings :: (Core.Maybe ShippingSettings)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ShippingsettingsCustomBatchResponseEntry' with the minimum fields required to make a request.
newShippingsettingsCustomBatchResponseEntry ::
  ShippingsettingsCustomBatchResponseEntry
newShippingsettingsCustomBatchResponseEntry =
  ShippingsettingsCustomBatchResponseEntry
    { batchId = Core.Nothing,
      errors = Core.Nothing,
      kind = Core.Nothing,
      shippingSettings = Core.Nothing
    }

instance
  Core.FromJSON
    ShippingsettingsCustomBatchResponseEntry
  where
  parseJSON =
    Core.withObject
      "ShippingsettingsCustomBatchResponseEntry"
      ( \o ->
          ShippingsettingsCustomBatchResponseEntry
            Core.<$> (o Core..:? "batchId")
            Core.<*> (o Core..:? "errors")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "shippingSettings")
      )

instance
  Core.ToJSON
    ShippingsettingsCustomBatchResponseEntry
  where
  toJSON ShippingsettingsCustomBatchResponseEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchId" Core..=) Core.<$> batchId,
            ("errors" Core..=) Core.<$> errors,
            ("kind" Core..=) Core.<$> kind,
            ("shippingSettings" Core..=)
              Core.<$> shippingSettings
          ]
      )

--
-- /See:/ 'newShippingsettingsGetSupportedCarriersResponse' smart constructor.
data ShippingsettingsGetSupportedCarriersResponse = ShippingsettingsGetSupportedCarriersResponse
  { -- | A list of supported carriers. May be empty.
    carriers :: (Core.Maybe [CarriersCarrier]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#shippingsettingsGetSupportedCarriersResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ShippingsettingsGetSupportedCarriersResponse' with the minimum fields required to make a request.
newShippingsettingsGetSupportedCarriersResponse ::
  ShippingsettingsGetSupportedCarriersResponse
newShippingsettingsGetSupportedCarriersResponse =
  ShippingsettingsGetSupportedCarriersResponse
    { carriers = Core.Nothing,
      kind = Core.Nothing
    }

instance
  Core.FromJSON
    ShippingsettingsGetSupportedCarriersResponse
  where
  parseJSON =
    Core.withObject
      "ShippingsettingsGetSupportedCarriersResponse"
      ( \o ->
          ShippingsettingsGetSupportedCarriersResponse
            Core.<$> (o Core..:? "carriers" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind")
      )

instance
  Core.ToJSON
    ShippingsettingsGetSupportedCarriersResponse
  where
  toJSON
    ShippingsettingsGetSupportedCarriersResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("carriers" Core..=) Core.<$> carriers,
              ("kind" Core..=) Core.<$> kind
            ]
        )

--
-- /See:/ 'newShippingsettingsGetSupportedHolidaysResponse' smart constructor.
data ShippingsettingsGetSupportedHolidaysResponse = ShippingsettingsGetSupportedHolidaysResponse
  { -- | A list of holidays applicable for delivery guarantees. May be empty.
    holidays :: (Core.Maybe [HolidaysHoliday]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#shippingsettingsGetSupportedHolidaysResponse@\".
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ShippingsettingsGetSupportedHolidaysResponse' with the minimum fields required to make a request.
newShippingsettingsGetSupportedHolidaysResponse ::
  ShippingsettingsGetSupportedHolidaysResponse
newShippingsettingsGetSupportedHolidaysResponse =
  ShippingsettingsGetSupportedHolidaysResponse
    { holidays = Core.Nothing,
      kind = Core.Nothing
    }

instance
  Core.FromJSON
    ShippingsettingsGetSupportedHolidaysResponse
  where
  parseJSON =
    Core.withObject
      "ShippingsettingsGetSupportedHolidaysResponse"
      ( \o ->
          ShippingsettingsGetSupportedHolidaysResponse
            Core.<$> (o Core..:? "holidays" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind")
      )

instance
  Core.ToJSON
    ShippingsettingsGetSupportedHolidaysResponse
  where
  toJSON
    ShippingsettingsGetSupportedHolidaysResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("holidays" Core..=) Core.<$> holidays,
              ("kind" Core..=) Core.<$> kind
            ]
        )

--
-- /See:/ 'newShippingsettingsGetSupportedPickupServicesResponse' smart constructor.
data ShippingsettingsGetSupportedPickupServicesResponse = ShippingsettingsGetSupportedPickupServicesResponse
  { -- | Identifies what kind of resource this is. Value: the fixed string \"@content#shippingsettingsGetSupportedPickupServicesResponse@\".
    kind :: (Core.Maybe Core.Text),
    -- | A list of supported pickup services. May be empty.
    pickupServices :: (Core.Maybe [PickupServicesPickupService])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ShippingsettingsGetSupportedPickupServicesResponse' with the minimum fields required to make a request.
newShippingsettingsGetSupportedPickupServicesResponse ::
  ShippingsettingsGetSupportedPickupServicesResponse
newShippingsettingsGetSupportedPickupServicesResponse =
  ShippingsettingsGetSupportedPickupServicesResponse
    { kind = Core.Nothing,
      pickupServices = Core.Nothing
    }

instance
  Core.FromJSON
    ShippingsettingsGetSupportedPickupServicesResponse
  where
  parseJSON =
    Core.withObject
      "ShippingsettingsGetSupportedPickupServicesResponse"
      ( \o ->
          ShippingsettingsGetSupportedPickupServicesResponse
            Core.<$> (o Core..:? "kind")
              Core.<*> (o Core..:? "pickupServices" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    ShippingsettingsGetSupportedPickupServicesResponse
  where
  toJSON
    ShippingsettingsGetSupportedPickupServicesResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("kind" Core..=) Core.<$> kind,
              ("pickupServices" Core..=) Core.<$> pickupServices
            ]
        )

--
-- /See:/ 'newShippingsettingsListResponse' smart constructor.
data ShippingsettingsListResponse = ShippingsettingsListResponse
  { -- | Identifies what kind of resource this is. Value: the fixed string \"@content#shippingsettingsListResponse@\".
    kind :: (Core.Maybe Core.Text),
    -- | The token for the retrieval of the next page of shipping settings.
    nextPageToken :: (Core.Maybe Core.Text),
    -- |
    resources :: (Core.Maybe [ShippingSettings])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ShippingsettingsListResponse' with the minimum fields required to make a request.
newShippingsettingsListResponse ::
  ShippingsettingsListResponse
newShippingsettingsListResponse =
  ShippingsettingsListResponse
    { kind = Core.Nothing,
      nextPageToken = Core.Nothing,
      resources = Core.Nothing
    }

instance Core.FromJSON ShippingsettingsListResponse where
  parseJSON =
    Core.withObject
      "ShippingsettingsListResponse"
      ( \o ->
          ShippingsettingsListResponse
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "resources" Core..!= Core.mempty)
      )

instance Core.ToJSON ShippingsettingsListResponse where
  toJSON ShippingsettingsListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("resources" Core..=) Core.<$> resources
          ]
      )

-- | Response message for GetShoppingAdsProgramStatus.
--
-- /See:/ 'newShoppingAdsProgramStatus' smart constructor.
data ShoppingAdsProgramStatus = ShoppingAdsProgramStatus
  { -- | State of the program, It is set to enabled if there are offers for at least one region.
    globalState :: (Core.Maybe ShoppingAdsProgramStatus_GlobalState),
    -- | Status of the program in each region. Regions with the same status and review eligibility are grouped together in @regionCodes@.
    regionStatuses :: (Core.Maybe [ShoppingAdsProgramStatusRegionStatus])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ShoppingAdsProgramStatus' with the minimum fields required to make a request.
newShoppingAdsProgramStatus ::
  ShoppingAdsProgramStatus
newShoppingAdsProgramStatus =
  ShoppingAdsProgramStatus
    { globalState = Core.Nothing,
      regionStatuses = Core.Nothing
    }

instance Core.FromJSON ShoppingAdsProgramStatus where
  parseJSON =
    Core.withObject
      "ShoppingAdsProgramStatus"
      ( \o ->
          ShoppingAdsProgramStatus
            Core.<$> (o Core..:? "globalState")
            Core.<*> (o Core..:? "regionStatuses" Core..!= Core.mempty)
      )

instance Core.ToJSON ShoppingAdsProgramStatus where
  toJSON ShoppingAdsProgramStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("globalState" Core..=) Core.<$> globalState,
            ("regionStatuses" Core..=) Core.<$> regionStatuses
          ]
      )

-- | Status of program and region.
--
-- /See:/ 'newShoppingAdsProgramStatusRegionStatus' smart constructor.
data ShoppingAdsProgramStatusRegionStatus = ShoppingAdsProgramStatusRegionStatus
  { -- | Date by which @eligibility_status@ will go from @WARNING@ to @DISAPPROVED@. It will be present when @eligibility_status@ is @WARNING@. Date will be provided in <https://en.wikipedia.org/wiki/ISO_8601 ISO 8601> format: YYYY-MM-DD
    disapprovalDate :: (Core.Maybe Core.Text),
    -- | Eligibility status of the Shopping Ads program.
    eligibilityStatus :: (Core.Maybe ShoppingAdsProgramStatusRegionStatus_EligibilityStatus),
    -- | These issues must be fixed to become eligible for the review.
    onboardingIssues :: (Core.Maybe [Core.Text]),
    -- | The two-letter <https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2 ISO 3166-1 alpha-2> codes for all the regions with the same @eligibilityStatus@ and @reviewEligibility@.
    regionCodes :: (Core.Maybe [Core.Text]),
    -- | If a program in a given country is eligible for review. It will be present only if eligibility status is @DISAPPROVED@.
    reviewEligibilityStatus ::
      ( Core.Maybe
          ShoppingAdsProgramStatusRegionStatus_ReviewEligibilityStatus
      ),
    -- | Review ineligibility reason if account is not eligible for review.
    reviewIneligibilityReason ::
      ( Core.Maybe
          ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason
      ),
    -- | Reason if a program in a given country is not eligible for review. Populated only if @review_eligibility_status@ is @INELIGIBLE@.
    reviewIneligibilityReasonDescription :: (Core.Maybe Core.Text),
    -- | This contains additional information specific to review ineligibility reasons. If review is ineligible because of @IN_COOLDOWN_PERIOD@, it will contain timestamp for cooldown period.
    reviewIneligibilityReasonDetails ::
      ( Core.Maybe
          ShoppingAdsProgramStatusReviewIneligibilityReasonDetails
      ),
    -- | These issues will be evaluated in review process. Fix all the issues before requesting the review.
    reviewIssues :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ShoppingAdsProgramStatusRegionStatus' with the minimum fields required to make a request.
newShoppingAdsProgramStatusRegionStatus ::
  ShoppingAdsProgramStatusRegionStatus
newShoppingAdsProgramStatusRegionStatus =
  ShoppingAdsProgramStatusRegionStatus
    { disapprovalDate = Core.Nothing,
      eligibilityStatus = Core.Nothing,
      onboardingIssues = Core.Nothing,
      regionCodes = Core.Nothing,
      reviewEligibilityStatus = Core.Nothing,
      reviewIneligibilityReason = Core.Nothing,
      reviewIneligibilityReasonDescription = Core.Nothing,
      reviewIneligibilityReasonDetails = Core.Nothing,
      reviewIssues = Core.Nothing
    }

instance
  Core.FromJSON
    ShoppingAdsProgramStatusRegionStatus
  where
  parseJSON =
    Core.withObject
      "ShoppingAdsProgramStatusRegionStatus"
      ( \o ->
          ShoppingAdsProgramStatusRegionStatus
            Core.<$> (o Core..:? "disapprovalDate")
            Core.<*> (o Core..:? "eligibilityStatus")
            Core.<*> (o Core..:? "onboardingIssues" Core..!= Core.mempty)
            Core.<*> (o Core..:? "regionCodes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "reviewEligibilityStatus")
            Core.<*> (o Core..:? "reviewIneligibilityReason")
            Core.<*> (o Core..:? "reviewIneligibilityReasonDescription")
            Core.<*> (o Core..:? "reviewIneligibilityReasonDetails")
            Core.<*> (o Core..:? "reviewIssues" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    ShoppingAdsProgramStatusRegionStatus
  where
  toJSON ShoppingAdsProgramStatusRegionStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("disapprovalDate" Core..=)
              Core.<$> disapprovalDate,
            ("eligibilityStatus" Core..=)
              Core.<$> eligibilityStatus,
            ("onboardingIssues" Core..=)
              Core.<$> onboardingIssues,
            ("regionCodes" Core..=) Core.<$> regionCodes,
            ("reviewEligibilityStatus" Core..=)
              Core.<$> reviewEligibilityStatus,
            ("reviewIneligibilityReason" Core..=)
              Core.<$> reviewIneligibilityReason,
            ("reviewIneligibilityReasonDescription" Core..=)
              Core.<$> reviewIneligibilityReasonDescription,
            ("reviewIneligibilityReasonDetails" Core..=)
              Core.<$> reviewIneligibilityReasonDetails,
            ("reviewIssues" Core..=) Core.<$> reviewIssues
          ]
      )

-- | Additional details for review ineligibility reasons.
--
-- /See:/ 'newShoppingAdsProgramStatusReviewIneligibilityReasonDetails' smart constructor.
newtype ShoppingAdsProgramStatusReviewIneligibilityReasonDetails = ShoppingAdsProgramStatusReviewIneligibilityReasonDetails
  { -- | This timestamp represents end of cooldown period for review ineligbility reason @IN_COOLDOWN_PERIOD@.
    cooldownTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ShoppingAdsProgramStatusReviewIneligibilityReasonDetails' with the minimum fields required to make a request.
newShoppingAdsProgramStatusReviewIneligibilityReasonDetails ::
  ShoppingAdsProgramStatusReviewIneligibilityReasonDetails
newShoppingAdsProgramStatusReviewIneligibilityReasonDetails =
  ShoppingAdsProgramStatusReviewIneligibilityReasonDetails
    { cooldownTime = Core.Nothing
    }

instance
  Core.FromJSON
    ShoppingAdsProgramStatusReviewIneligibilityReasonDetails
  where
  parseJSON =
    Core.withObject
      "ShoppingAdsProgramStatusReviewIneligibilityReasonDetails"
      ( \o ->
          ShoppingAdsProgramStatusReviewIneligibilityReasonDetails
            Core.<$> (o Core..:? "cooldownTime")
      )

instance
  Core.ToJSON
    ShoppingAdsProgramStatusReviewIneligibilityReasonDetails
  where
  toJSON
    ShoppingAdsProgramStatusReviewIneligibilityReasonDetails {..} =
      Core.object
        ( Core.catMaybes
            [("cooldownTime" Core..=) Core.<$> cooldownTime]
        )

--
-- /See:/ 'newTable' smart constructor.
data Table = Table
  { -- | Headers of the table\'s columns. Optional: if not set then the table has only one dimension.
    columnHeaders :: (Core.Maybe Headers),
    -- | Name of the table. Required for subtables, ignored for the main table.
    name :: (Core.Maybe Core.Text),
    -- | Headers of the table\'s rows. Required.
    rowHeaders :: (Core.Maybe Headers),
    -- | The list of rows that constitute the table. Must have the same length as @rowHeaders@. Required.
    rows :: (Core.Maybe [Row])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Table' with the minimum fields required to make a request.
newTable ::
  Table
newTable =
  Table
    { columnHeaders = Core.Nothing,
      name = Core.Nothing,
      rowHeaders = Core.Nothing,
      rows = Core.Nothing
    }

instance Core.FromJSON Table where
  parseJSON =
    Core.withObject
      "Table"
      ( \o ->
          Table
            Core.<$> (o Core..:? "columnHeaders")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "rowHeaders")
            Core.<*> (o Core..:? "rows" Core..!= Core.mempty)
      )

instance Core.ToJSON Table where
  toJSON Table {..} =
    Core.object
      ( Core.catMaybes
          [ ("columnHeaders" Core..=) Core.<$> columnHeaders,
            ("name" Core..=) Core.<$> name,
            ("rowHeaders" Core..=) Core.<$> rowHeaders,
            ("rows" Core..=) Core.<$> rows
          ]
      )

--
-- /See:/ 'newTestOrder' smart constructor.
data TestOrder = TestOrder
  { -- | Overrides the predefined delivery details if provided.
    deliveryDetails :: (Core.Maybe TestOrderDeliveryDetails),
    -- | Whether the orderinvoices service should support this order.
    enableOrderinvoices :: (Core.Maybe Core.Bool),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#testOrder@\"
    kind :: (Core.Maybe Core.Text),
    -- | Required. Line items that are ordered. At least one line item must be provided.
    lineItems :: (Core.Maybe [TestOrderLineItem]),
    -- | Restricted. Do not use.
    notificationMode :: (Core.Maybe Core.Text),
    -- | Overrides the predefined pickup details if provided.
    pickupDetails :: (Core.Maybe TestOrderPickupDetails),
    -- | Required. The billing address. Acceptable values are: - \"@dwight@\" - \"@jim@\" - \"@pam@\"
    predefinedBillingAddress :: (Core.Maybe Core.Text),
    -- | Required. Identifier of one of the predefined delivery addresses for the delivery. Acceptable values are: - \"@dwight@\" - \"@jim@\" - \"@pam@\"
    predefinedDeliveryAddress :: (Core.Maybe Core.Text),
    -- | Required. Email address of the customer. Acceptable values are: - \"@pog.dwight.schrute\@gmail.com@\" - \"@pog.jim.halpert\@gmail.com@\" - \"@penpog.pam.beesly\@gmail.comding@\"
    predefinedEmail :: (Core.Maybe Core.Text),
    -- | Identifier of one of the predefined pickup details. Required for orders containing line items with shipping type @pickup@. Acceptable values are: - \"@dwight@\" - \"@jim@\" - \"@pam@\"
    predefinedPickupDetails :: (Core.Maybe Core.Text),
    -- | Promotions associated with the order.
    promotions :: (Core.Maybe [OrderPromotion]),
    -- | Required. The price of shipping for all items. Shipping tax is automatically calculated for orders where marketplace facilitator tax laws are applicable. Otherwise, tax settings from Merchant Center are applied. Note that shipping is not taxed in certain states.
    shippingCost :: (Core.Maybe Price),
    -- | Required. The requested shipping option. Acceptable values are: - \"@economy@\" - \"@expedited@\" - \"@oneDay@\" - \"@sameDay@\" - \"@standard@\" - \"@twoDay@\"
    shippingOption :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestOrder' with the minimum fields required to make a request.
newTestOrder ::
  TestOrder
newTestOrder =
  TestOrder
    { deliveryDetails = Core.Nothing,
      enableOrderinvoices = Core.Nothing,
      kind = Core.Nothing,
      lineItems = Core.Nothing,
      notificationMode = Core.Nothing,
      pickupDetails = Core.Nothing,
      predefinedBillingAddress = Core.Nothing,
      predefinedDeliveryAddress = Core.Nothing,
      predefinedEmail = Core.Nothing,
      predefinedPickupDetails = Core.Nothing,
      promotions = Core.Nothing,
      shippingCost = Core.Nothing,
      shippingOption = Core.Nothing
    }

instance Core.FromJSON TestOrder where
  parseJSON =
    Core.withObject
      "TestOrder"
      ( \o ->
          TestOrder
            Core.<$> (o Core..:? "deliveryDetails")
            Core.<*> (o Core..:? "enableOrderinvoices")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "lineItems" Core..!= Core.mempty)
            Core.<*> (o Core..:? "notificationMode")
            Core.<*> (o Core..:? "pickupDetails")
            Core.<*> (o Core..:? "predefinedBillingAddress")
            Core.<*> (o Core..:? "predefinedDeliveryAddress")
            Core.<*> (o Core..:? "predefinedEmail")
            Core.<*> (o Core..:? "predefinedPickupDetails")
            Core.<*> (o Core..:? "promotions" Core..!= Core.mempty)
            Core.<*> (o Core..:? "shippingCost")
            Core.<*> (o Core..:? "shippingOption")
      )

instance Core.ToJSON TestOrder where
  toJSON TestOrder {..} =
    Core.object
      ( Core.catMaybes
          [ ("deliveryDetails" Core..=)
              Core.<$> deliveryDetails,
            ("enableOrderinvoices" Core..=)
              Core.<$> enableOrderinvoices,
            ("kind" Core..=) Core.<$> kind,
            ("lineItems" Core..=) Core.<$> lineItems,
            ("notificationMode" Core..=)
              Core.<$> notificationMode,
            ("pickupDetails" Core..=) Core.<$> pickupDetails,
            ("predefinedBillingAddress" Core..=)
              Core.<$> predefinedBillingAddress,
            ("predefinedDeliveryAddress" Core..=)
              Core.<$> predefinedDeliveryAddress,
            ("predefinedEmail" Core..=) Core.<$> predefinedEmail,
            ("predefinedPickupDetails" Core..=)
              Core.<$> predefinedPickupDetails,
            ("promotions" Core..=) Core.<$> promotions,
            ("shippingCost" Core..=) Core.<$> shippingCost,
            ("shippingOption" Core..=) Core.<$> shippingOption
          ]
      )

--
-- /See:/ 'newTestOrderAddress' smart constructor.
data TestOrderAddress = TestOrderAddress
  { -- | CLDR country code (for example, \"US\").
    country :: (Core.Maybe Core.Text),
    -- | Strings representing the lines of the printed label for mailing the order, for example: John Smith 1600 Amphitheatre Parkway Mountain View, CA, 94043 United States
    fullAddress :: (Core.Maybe [Core.Text]),
    -- | Whether the address is a post office box.
    isPostOfficeBox :: (Core.Maybe Core.Bool),
    -- | City, town or commune. May also include dependent localities or sublocalities (for example, neighborhoods or suburbs).
    locality :: (Core.Maybe Core.Text),
    -- | Postal Code or ZIP (for example, \"94043\").
    postalCode :: (Core.Maybe Core.Text),
    -- | Name of the recipient.
    recipientName :: (Core.Maybe Core.Text),
    -- | Top-level administrative subdivision of the country. For example, a state like California (\"CA\") or a province like Quebec (\"QC\").
    region :: (Core.Maybe Core.Text),
    -- | Street-level part of the address.
    streetAddress :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestOrderAddress' with the minimum fields required to make a request.
newTestOrderAddress ::
  TestOrderAddress
newTestOrderAddress =
  TestOrderAddress
    { country = Core.Nothing,
      fullAddress = Core.Nothing,
      isPostOfficeBox = Core.Nothing,
      locality = Core.Nothing,
      postalCode = Core.Nothing,
      recipientName = Core.Nothing,
      region = Core.Nothing,
      streetAddress = Core.Nothing
    }

instance Core.FromJSON TestOrderAddress where
  parseJSON =
    Core.withObject
      "TestOrderAddress"
      ( \o ->
          TestOrderAddress
            Core.<$> (o Core..:? "country")
            Core.<*> (o Core..:? "fullAddress" Core..!= Core.mempty)
            Core.<*> (o Core..:? "isPostOfficeBox")
            Core.<*> (o Core..:? "locality")
            Core.<*> (o Core..:? "postalCode")
            Core.<*> (o Core..:? "recipientName")
            Core.<*> (o Core..:? "region")
            Core.<*> (o Core..:? "streetAddress" Core..!= Core.mempty)
      )

instance Core.ToJSON TestOrderAddress where
  toJSON TestOrderAddress {..} =
    Core.object
      ( Core.catMaybes
          [ ("country" Core..=) Core.<$> country,
            ("fullAddress" Core..=) Core.<$> fullAddress,
            ("isPostOfficeBox" Core..=) Core.<$> isPostOfficeBox,
            ("locality" Core..=) Core.<$> locality,
            ("postalCode" Core..=) Core.<$> postalCode,
            ("recipientName" Core..=) Core.<$> recipientName,
            ("region" Core..=) Core.<$> region,
            ("streetAddress" Core..=) Core.<$> streetAddress
          ]
      )

--
-- /See:/ 'newTestOrderDeliveryDetails' smart constructor.
data TestOrderDeliveryDetails = TestOrderDeliveryDetails
  { -- | The delivery address
    address :: (Core.Maybe TestOrderAddress),
    -- | Whether the order is scheduled delivery order.
    isScheduledDelivery :: (Core.Maybe Core.Bool),
    -- | The phone number of the person receiving the delivery.
    phoneNumber :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestOrderDeliveryDetails' with the minimum fields required to make a request.
newTestOrderDeliveryDetails ::
  TestOrderDeliveryDetails
newTestOrderDeliveryDetails =
  TestOrderDeliveryDetails
    { address = Core.Nothing,
      isScheduledDelivery = Core.Nothing,
      phoneNumber = Core.Nothing
    }

instance Core.FromJSON TestOrderDeliveryDetails where
  parseJSON =
    Core.withObject
      "TestOrderDeliveryDetails"
      ( \o ->
          TestOrderDeliveryDetails
            Core.<$> (o Core..:? "address")
            Core.<*> (o Core..:? "isScheduledDelivery")
            Core.<*> (o Core..:? "phoneNumber")
      )

instance Core.ToJSON TestOrderDeliveryDetails where
  toJSON TestOrderDeliveryDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("address" Core..=) Core.<$> address,
            ("isScheduledDelivery" Core..=)
              Core.<$> isScheduledDelivery,
            ("phoneNumber" Core..=) Core.<$> phoneNumber
          ]
      )

--
-- /See:/ 'newTestOrderLineItem' smart constructor.
data TestOrderLineItem = TestOrderLineItem
  { -- | Required. Product data from the time of the order placement.
    product :: (Core.Maybe TestOrderLineItemProduct),
    -- | Required. Number of items ordered.
    quantityOrdered :: (Core.Maybe Core.Word32),
    -- | Required. Details of the return policy for the line item.
    returnInfo :: (Core.Maybe OrderLineItemReturnInfo),
    -- | Required. Details of the requested shipping for the line item.
    shippingDetails :: (Core.Maybe OrderLineItemShippingDetails)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestOrderLineItem' with the minimum fields required to make a request.
newTestOrderLineItem ::
  TestOrderLineItem
newTestOrderLineItem =
  TestOrderLineItem
    { product = Core.Nothing,
      quantityOrdered = Core.Nothing,
      returnInfo = Core.Nothing,
      shippingDetails = Core.Nothing
    }

instance Core.FromJSON TestOrderLineItem where
  parseJSON =
    Core.withObject
      "TestOrderLineItem"
      ( \o ->
          TestOrderLineItem
            Core.<$> (o Core..:? "product")
            Core.<*> (o Core..:? "quantityOrdered")
            Core.<*> (o Core..:? "returnInfo")
            Core.<*> (o Core..:? "shippingDetails")
      )

instance Core.ToJSON TestOrderLineItem where
  toJSON TestOrderLineItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("product" Core..=) Core.<$> product,
            ("quantityOrdered" Core..=) Core.<$> quantityOrdered,
            ("returnInfo" Core..=) Core.<$> returnInfo,
            ("shippingDetails" Core..=)
              Core.<$> shippingDetails
          ]
      )

--
-- /See:/ 'newTestOrderLineItemProduct' smart constructor.
data TestOrderLineItemProduct = TestOrderLineItemProduct
  { -- | Required. Brand of the item.
    brand :: (Core.Maybe Core.Text),
    -- | Required. Condition or state of the item. Acceptable values are: - \"@new@\"
    condition :: (Core.Maybe Core.Text),
    -- | Required. The two-letter ISO 639-1 language code for the item. Acceptable values are: - \"@en@\" - \"@fr@\"
    contentLanguage :: (Core.Maybe Core.Text),
    -- | Fees for the item. Optional.
    fees :: (Core.Maybe [OrderLineItemProductFee]),
    -- | Global Trade Item Number (GTIN) of the item. Optional.
    gtin :: (Core.Maybe Core.Text),
    -- | Required. URL of an image of the item.
    imageLink :: (Core.Maybe Core.Text),
    -- | Shared identifier for all variants of the same product. Optional.
    itemGroupId :: (Core.Maybe Core.Text),
    -- | Manufacturer Part Number (MPN) of the item. Optional.
    mpn :: (Core.Maybe Core.Text),
    -- | Required. An identifier of the item.
    offerId :: (Core.Maybe Core.Text),
    -- | Required. The price for the product. Tax is automatically calculated for orders where marketplace facilitator tax laws are applicable. Otherwise, tax settings from Merchant Center are applied.
    price :: (Core.Maybe Price),
    -- | Required. The CLDR territory code of the target country of the product.
    targetCountry :: (Core.Maybe Core.Text),
    -- | Required. The title of the product.
    title :: (Core.Maybe Core.Text),
    -- | Variant attributes for the item. Optional.
    variantAttributes :: (Core.Maybe [OrderLineItemProductVariantAttribute])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestOrderLineItemProduct' with the minimum fields required to make a request.
newTestOrderLineItemProduct ::
  TestOrderLineItemProduct
newTestOrderLineItemProduct =
  TestOrderLineItemProduct
    { brand = Core.Nothing,
      condition = Core.Nothing,
      contentLanguage = Core.Nothing,
      fees = Core.Nothing,
      gtin = Core.Nothing,
      imageLink = Core.Nothing,
      itemGroupId = Core.Nothing,
      mpn = Core.Nothing,
      offerId = Core.Nothing,
      price = Core.Nothing,
      targetCountry = Core.Nothing,
      title = Core.Nothing,
      variantAttributes = Core.Nothing
    }

instance Core.FromJSON TestOrderLineItemProduct where
  parseJSON =
    Core.withObject
      "TestOrderLineItemProduct"
      ( \o ->
          TestOrderLineItemProduct
            Core.<$> (o Core..:? "brand")
            Core.<*> (o Core..:? "condition")
            Core.<*> (o Core..:? "contentLanguage")
            Core.<*> (o Core..:? "fees" Core..!= Core.mempty)
            Core.<*> (o Core..:? "gtin")
            Core.<*> (o Core..:? "imageLink")
            Core.<*> (o Core..:? "itemGroupId")
            Core.<*> (o Core..:? "mpn")
            Core.<*> (o Core..:? "offerId")
            Core.<*> (o Core..:? "price")
            Core.<*> (o Core..:? "targetCountry")
            Core.<*> (o Core..:? "title")
            Core.<*> ( o Core..:? "variantAttributes"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON TestOrderLineItemProduct where
  toJSON TestOrderLineItemProduct {..} =
    Core.object
      ( Core.catMaybes
          [ ("brand" Core..=) Core.<$> brand,
            ("condition" Core..=) Core.<$> condition,
            ("contentLanguage" Core..=) Core.<$> contentLanguage,
            ("fees" Core..=) Core.<$> fees,
            ("gtin" Core..=) Core.<$> gtin,
            ("imageLink" Core..=) Core.<$> imageLink,
            ("itemGroupId" Core..=) Core.<$> itemGroupId,
            ("mpn" Core..=) Core.<$> mpn,
            ("offerId" Core..=) Core.<$> offerId,
            ("price" Core..=) Core.<$> price,
            ("targetCountry" Core..=) Core.<$> targetCountry,
            ("title" Core..=) Core.<$> title,
            ("variantAttributes" Core..=)
              Core.<$> variantAttributes
          ]
      )

--
-- /See:/ 'newTestOrderPickupDetails' smart constructor.
data TestOrderPickupDetails = TestOrderPickupDetails
  { -- | Required. Code of the location defined by provider or merchant.
    locationCode :: (Core.Maybe Core.Text),
    -- | Required. Pickup location address.
    pickupLocationAddress :: (Core.Maybe TestOrderAddress),
    -- | Pickup location type. Acceptable values are: - \"@locker@\" - \"@store@\" - \"@curbside@\"
    pickupLocationType :: (Core.Maybe Core.Text),
    -- | Required. all pickup persons set by users.
    pickupPersons :: (Core.Maybe [TestOrderPickupDetailsPickupPerson])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestOrderPickupDetails' with the minimum fields required to make a request.
newTestOrderPickupDetails ::
  TestOrderPickupDetails
newTestOrderPickupDetails =
  TestOrderPickupDetails
    { locationCode = Core.Nothing,
      pickupLocationAddress = Core.Nothing,
      pickupLocationType = Core.Nothing,
      pickupPersons = Core.Nothing
    }

instance Core.FromJSON TestOrderPickupDetails where
  parseJSON =
    Core.withObject
      "TestOrderPickupDetails"
      ( \o ->
          TestOrderPickupDetails
            Core.<$> (o Core..:? "locationCode")
            Core.<*> (o Core..:? "pickupLocationAddress")
            Core.<*> (o Core..:? "pickupLocationType")
            Core.<*> (o Core..:? "pickupPersons" Core..!= Core.mempty)
      )

instance Core.ToJSON TestOrderPickupDetails where
  toJSON TestOrderPickupDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("locationCode" Core..=) Core.<$> locationCode,
            ("pickupLocationAddress" Core..=)
              Core.<$> pickupLocationAddress,
            ("pickupLocationType" Core..=)
              Core.<$> pickupLocationType,
            ("pickupPersons" Core..=) Core.<$> pickupPersons
          ]
      )

--
-- /See:/ 'newTestOrderPickupDetailsPickupPerson' smart constructor.
data TestOrderPickupDetailsPickupPerson = TestOrderPickupDetailsPickupPerson
  { -- | Required. Full name of the pickup person.
    name :: (Core.Maybe Core.Text),
    -- | Required. The phone number of the person picking up the items.
    phoneNumber :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestOrderPickupDetailsPickupPerson' with the minimum fields required to make a request.
newTestOrderPickupDetailsPickupPerson ::
  TestOrderPickupDetailsPickupPerson
newTestOrderPickupDetailsPickupPerson =
  TestOrderPickupDetailsPickupPerson
    { name = Core.Nothing,
      phoneNumber = Core.Nothing
    }

instance
  Core.FromJSON
    TestOrderPickupDetailsPickupPerson
  where
  parseJSON =
    Core.withObject
      "TestOrderPickupDetailsPickupPerson"
      ( \o ->
          TestOrderPickupDetailsPickupPerson
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "phoneNumber")
      )

instance
  Core.ToJSON
    TestOrderPickupDetailsPickupPerson
  where
  toJSON TestOrderPickupDetailsPickupPerson {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("phoneNumber" Core..=) Core.<$> phoneNumber
          ]
      )

-- | A message that represents a time period.
--
-- /See:/ 'newTimePeriod' smart constructor.
data TimePeriod = TimePeriod
  { -- | The ending timestamp.
    endTime :: (Core.Maybe Core.DateTime),
    -- | The starting timestamp.
    startTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimePeriod' with the minimum fields required to make a request.
newTimePeriod ::
  TimePeriod
newTimePeriod = TimePeriod {endTime = Core.Nothing, startTime = Core.Nothing}

instance Core.FromJSON TimePeriod where
  parseJSON =
    Core.withObject
      "TimePeriod"
      ( \o ->
          TimePeriod
            Core.<$> (o Core..:? "endTime")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON TimePeriod where
  toJSON TimePeriod {..} =
    Core.object
      ( Core.catMaybes
          [ ("endTime" Core..=) Core.<$> endTime,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | Represents a time zone from the <https://www.iana.org/time-zones IANA Time Zone Database>.
--
-- /See:/ 'newTimeZone' smart constructor.
data TimeZone = TimeZone
  { -- | IANA Time Zone Database time zone, e.g. \"America\/New_York\".
    id :: (Core.Maybe Core.Text),
    -- | Optional. IANA Time Zone Database version number, e.g. \"2019a\".
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimeZone' with the minimum fields required to make a request.
newTimeZone ::
  TimeZone
newTimeZone = TimeZone {id = Core.Nothing, version = Core.Nothing}

instance Core.FromJSON TimeZone where
  parseJSON =
    Core.withObject
      "TimeZone"
      ( \o ->
          TimeZone
            Core.<$> (o Core..:? "id") Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON TimeZone where
  toJSON TimeZone {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            ("version" Core..=) Core.<$> version
          ]
      )

--
-- /See:/ 'newTransitTable' smart constructor.
data TransitTable = TransitTable
  { -- | A list of postal group names. The last value can be @\"all other locations\"@. Example: @[\"zone 1\", \"zone 2\", \"all other locations\"]@. The referred postal code groups must match the delivery country of the service.
    postalCodeGroupNames :: (Core.Maybe [Core.Text]),
    -- |
    rows :: (Core.Maybe [TransitTableTransitTimeRow]),
    -- | A list of transit time labels. The last value can be @\"all other labels\"@. Example: @[\"food\", \"electronics\", \"all other labels\"]@.
    transitTimeLabels :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TransitTable' with the minimum fields required to make a request.
newTransitTable ::
  TransitTable
newTransitTable =
  TransitTable
    { postalCodeGroupNames = Core.Nothing,
      rows = Core.Nothing,
      transitTimeLabels = Core.Nothing
    }

instance Core.FromJSON TransitTable where
  parseJSON =
    Core.withObject
      "TransitTable"
      ( \o ->
          TransitTable
            Core.<$> ( o Core..:? "postalCodeGroupNames"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "rows" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "transitTimeLabels"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON TransitTable where
  toJSON TransitTable {..} =
    Core.object
      ( Core.catMaybes
          [ ("postalCodeGroupNames" Core..=)
              Core.<$> postalCodeGroupNames,
            ("rows" Core..=) Core.<$> rows,
            ("transitTimeLabels" Core..=)
              Core.<$> transitTimeLabels
          ]
      )

--
-- /See:/ 'newTransitTableTransitTimeRow' smart constructor.
newtype TransitTableTransitTimeRow = TransitTableTransitTimeRow
  { -- |
    values :: (Core.Maybe [TransitTableTransitTimeRowTransitTimeValue])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TransitTableTransitTimeRow' with the minimum fields required to make a request.
newTransitTableTransitTimeRow ::
  TransitTableTransitTimeRow
newTransitTableTransitTimeRow =
  TransitTableTransitTimeRow {values = Core.Nothing}

instance Core.FromJSON TransitTableTransitTimeRow where
  parseJSON =
    Core.withObject
      "TransitTableTransitTimeRow"
      ( \o ->
          TransitTableTransitTimeRow
            Core.<$> (o Core..:? "values" Core..!= Core.mempty)
      )

instance Core.ToJSON TransitTableTransitTimeRow where
  toJSON TransitTableTransitTimeRow {..} =
    Core.object
      (Core.catMaybes [("values" Core..=) Core.<$> values])

--
-- /See:/ 'newTransitTableTransitTimeRowTransitTimeValue' smart constructor.
data TransitTableTransitTimeRowTransitTimeValue = TransitTableTransitTimeRowTransitTimeValue
  { -- | Must be greater than or equal to @minTransitTimeInDays@.
    maxTransitTimeInDays :: (Core.Maybe Core.Word32),
    -- | Transit time range (min-max) in business days. 0 means same day delivery, 1 means next day delivery.
    minTransitTimeInDays :: (Core.Maybe Core.Word32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TransitTableTransitTimeRowTransitTimeValue' with the minimum fields required to make a request.
newTransitTableTransitTimeRowTransitTimeValue ::
  TransitTableTransitTimeRowTransitTimeValue
newTransitTableTransitTimeRowTransitTimeValue =
  TransitTableTransitTimeRowTransitTimeValue
    { maxTransitTimeInDays = Core.Nothing,
      minTransitTimeInDays = Core.Nothing
    }

instance
  Core.FromJSON
    TransitTableTransitTimeRowTransitTimeValue
  where
  parseJSON =
    Core.withObject
      "TransitTableTransitTimeRowTransitTimeValue"
      ( \o ->
          TransitTableTransitTimeRowTransitTimeValue
            Core.<$> (o Core..:? "maxTransitTimeInDays")
            Core.<*> (o Core..:? "minTransitTimeInDays")
      )

instance
  Core.ToJSON
    TransitTableTransitTimeRowTransitTimeValue
  where
  toJSON TransitTableTransitTimeRowTransitTimeValue {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxTransitTimeInDays" Core..=)
              Core.<$> maxTransitTimeInDays,
            ("minTransitTimeInDays" Core..=)
              Core.<$> minTransitTimeInDays
          ]
      )

--
-- /See:/ 'newUnitInvoice' smart constructor.
data UnitInvoice = UnitInvoice
  { -- | Additional charges for a unit, for example, shipping costs.
    additionalCharges :: (Core.Maybe [UnitInvoiceAdditionalCharge]),
    -- | [required] Pre-tax or post-tax price of one unit depending on the locality of the order. /Note:/ Invoicing works on a per unit basis. The @unitPrice@ is the price of a single unit, and will be multiplied by the number of entries in @shipmentUnitId@.
    unitPrice :: (Core.Maybe Price),
    -- | Tax amounts to apply to the unit price.
    unitPriceTaxes :: (Core.Maybe [UnitInvoiceTaxLine])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UnitInvoice' with the minimum fields required to make a request.
newUnitInvoice ::
  UnitInvoice
newUnitInvoice =
  UnitInvoice
    { additionalCharges = Core.Nothing,
      unitPrice = Core.Nothing,
      unitPriceTaxes = Core.Nothing
    }

instance Core.FromJSON UnitInvoice where
  parseJSON =
    Core.withObject
      "UnitInvoice"
      ( \o ->
          UnitInvoice
            Core.<$> (o Core..:? "additionalCharges" Core..!= Core.mempty)
            Core.<*> (o Core..:? "unitPrice")
            Core.<*> (o Core..:? "unitPriceTaxes" Core..!= Core.mempty)
      )

instance Core.ToJSON UnitInvoice where
  toJSON UnitInvoice {..} =
    Core.object
      ( Core.catMaybes
          [ ("additionalCharges" Core..=)
              Core.<$> additionalCharges,
            ("unitPrice" Core..=) Core.<$> unitPrice,
            ("unitPriceTaxes" Core..=) Core.<$> unitPriceTaxes
          ]
      )

--
-- /See:/ 'newUnitInvoiceAdditionalCharge' smart constructor.
data UnitInvoiceAdditionalCharge = UnitInvoiceAdditionalCharge
  { -- | [required] Amount of the additional charge per unit. /Note:/ Invoicing works on a per unit bases. The @additionalChargeAmount@ is the amount charged per unit, and will be multiplied by the number of entries in @shipmentUnitID@.
    additionalChargeAmount :: (Core.Maybe Amount),
    -- | [required] Type of the additional charge. Acceptable values are: - \"@shipping@\"
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UnitInvoiceAdditionalCharge' with the minimum fields required to make a request.
newUnitInvoiceAdditionalCharge ::
  UnitInvoiceAdditionalCharge
newUnitInvoiceAdditionalCharge =
  UnitInvoiceAdditionalCharge
    { additionalChargeAmount = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON UnitInvoiceAdditionalCharge where
  parseJSON =
    Core.withObject
      "UnitInvoiceAdditionalCharge"
      ( \o ->
          UnitInvoiceAdditionalCharge
            Core.<$> (o Core..:? "additionalChargeAmount")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON UnitInvoiceAdditionalCharge where
  toJSON UnitInvoiceAdditionalCharge {..} =
    Core.object
      ( Core.catMaybes
          [ ("additionalChargeAmount" Core..=)
              Core.<$> additionalChargeAmount,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newUnitInvoiceTaxLine' smart constructor.
data UnitInvoiceTaxLine = UnitInvoiceTaxLine
  { -- | [required] Tax amount for the tax type.
    taxAmount :: (Core.Maybe Price),
    -- | Optional name of the tax type. This should only be provided if @taxType@ is @otherFeeTax@.
    taxName :: (Core.Maybe Core.Text),
    -- | [required] Type of the tax. Acceptable values are: - \"@otherFee@\" - \"@otherFeeTax@\" - \"@sales@\"
    taxType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UnitInvoiceTaxLine' with the minimum fields required to make a request.
newUnitInvoiceTaxLine ::
  UnitInvoiceTaxLine
newUnitInvoiceTaxLine =
  UnitInvoiceTaxLine
    { taxAmount = Core.Nothing,
      taxName = Core.Nothing,
      taxType = Core.Nothing
    }

instance Core.FromJSON UnitInvoiceTaxLine where
  parseJSON =
    Core.withObject
      "UnitInvoiceTaxLine"
      ( \o ->
          UnitInvoiceTaxLine
            Core.<$> (o Core..:? "taxAmount")
            Core.<*> (o Core..:? "taxName")
            Core.<*> (o Core..:? "taxType")
      )

instance Core.ToJSON UnitInvoiceTaxLine where
  toJSON UnitInvoiceTaxLine {..} =
    Core.object
      ( Core.catMaybes
          [ ("taxAmount" Core..=) Core.<$> taxAmount,
            ("taxName" Core..=) Core.<$> taxName,
            ("taxType" Core..=) Core.<$> taxType
          ]
      )

-- | The single value of a rate group or the value of a rate group table\'s cell. Exactly one of @noShipping@, @flatRate@, @pricePercentage@, @carrierRateName@, @subtableName@ must be set.
--
-- /See:/ 'newValue' smart constructor.
data Value = Value
  { -- | The name of a carrier rate referring to a carrier rate defined in the same rate group. Can only be set if all other fields are not set.
    carrierRateName :: (Core.Maybe Core.Text),
    -- | A flat rate. Can only be set if all other fields are not set.
    flatRate :: (Core.Maybe Price),
    -- | If true, then the product can\'t ship. Must be true when set, can only be set if all other fields are not set.
    noShipping :: (Core.Maybe Core.Bool),
    -- | A percentage of the price represented as a number in decimal notation (for example, @\"5.4\"@). Can only be set if all other fields are not set.
    pricePercentage :: (Core.Maybe Core.Text),
    -- | The name of a subtable. Can only be set in table cells (not for single values), and only if all other fields are not set.
    subtableName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Value' with the minimum fields required to make a request.
newValue ::
  Value
newValue =
  Value
    { carrierRateName = Core.Nothing,
      flatRate = Core.Nothing,
      noShipping = Core.Nothing,
      pricePercentage = Core.Nothing,
      subtableName = Core.Nothing
    }

instance Core.FromJSON Value where
  parseJSON =
    Core.withObject
      "Value"
      ( \o ->
          Value
            Core.<$> (o Core..:? "carrierRateName")
            Core.<*> (o Core..:? "flatRate")
            Core.<*> (o Core..:? "noShipping")
            Core.<*> (o Core..:? "pricePercentage")
            Core.<*> (o Core..:? "subtableName")
      )

instance Core.ToJSON Value where
  toJSON Value {..} =
    Core.object
      ( Core.catMaybes
          [ ("carrierRateName" Core..=)
              Core.<$> carrierRateName,
            ("flatRate" Core..=) Core.<$> flatRate,
            ("noShipping" Core..=) Core.<$> noShipping,
            ("pricePercentage" Core..=) Core.<$> pricePercentage,
            ("subtableName" Core..=) Core.<$> subtableName
          ]
      )

-- | Request message for the VerifyPhoneNumber method.
--
-- /See:/ 'newVerifyPhoneNumberRequest' smart constructor.
data VerifyPhoneNumberRequest = VerifyPhoneNumberRequest
  { -- | Verification method used to receive verification code.
    phoneVerificationMethod :: (Core.Maybe VerifyPhoneNumberRequest_PhoneVerificationMethod),
    -- | The verification code that was sent to the phone number for validation.
    verificationCode :: (Core.Maybe Core.Text),
    -- | The verification ID returned by @requestphoneverification@.
    verificationId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VerifyPhoneNumberRequest' with the minimum fields required to make a request.
newVerifyPhoneNumberRequest ::
  VerifyPhoneNumberRequest
newVerifyPhoneNumberRequest =
  VerifyPhoneNumberRequest
    { phoneVerificationMethod = Core.Nothing,
      verificationCode = Core.Nothing,
      verificationId = Core.Nothing
    }

instance Core.FromJSON VerifyPhoneNumberRequest where
  parseJSON =
    Core.withObject
      "VerifyPhoneNumberRequest"
      ( \o ->
          VerifyPhoneNumberRequest
            Core.<$> (o Core..:? "phoneVerificationMethod")
            Core.<*> (o Core..:? "verificationCode")
            Core.<*> (o Core..:? "verificationId")
      )

instance Core.ToJSON VerifyPhoneNumberRequest where
  toJSON VerifyPhoneNumberRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("phoneVerificationMethod" Core..=)
              Core.<$> phoneVerificationMethod,
            ("verificationCode" Core..=)
              Core.<$> verificationCode,
            ("verificationId" Core..=) Core.<$> verificationId
          ]
      )

-- | Response message for the VerifyPhoneNumber method.
--
-- /See:/ 'newVerifyPhoneNumberResponse' smart constructor.
newtype VerifyPhoneNumberResponse = VerifyPhoneNumberResponse
  { -- | Verified phone number if verification is successful. This phone number can only be replaced by another verified phone number.
    verifiedPhoneNumber :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VerifyPhoneNumberResponse' with the minimum fields required to make a request.
newVerifyPhoneNumberResponse ::
  VerifyPhoneNumberResponse
newVerifyPhoneNumberResponse =
  VerifyPhoneNumberResponse {verifiedPhoneNumber = Core.Nothing}

instance Core.FromJSON VerifyPhoneNumberResponse where
  parseJSON =
    Core.withObject
      "VerifyPhoneNumberResponse"
      ( \o ->
          VerifyPhoneNumberResponse
            Core.<$> (o Core..:? "verifiedPhoneNumber")
      )

instance Core.ToJSON VerifyPhoneNumberResponse where
  toJSON VerifyPhoneNumberResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("verifiedPhoneNumber" Core..=)
              Core.<$> verifiedPhoneNumber
          ]
      )

-- | A fulfillment warehouse, which stores and handles inventory.
--
-- /See:/ 'newWarehouse' smart constructor.
data Warehouse = Warehouse
  { -- | Business days of the warehouse. If not set, will be Monday to Friday by default.
    businessDayConfig :: (Core.Maybe BusinessDayConfig),
    -- | Required. The latest time of day that an order can be accepted and begin processing. Later orders will be processed in the next day. The time is based on the warehouse postal code.
    cutoffTime :: (Core.Maybe WarehouseCutoffTime),
    -- | Required. The number of days it takes for this warehouse to pack up and ship an item. This is on the warehouse level, but can be overridden on the offer level based on the attributes of an item.
    handlingDays :: (Core.Maybe Core.Int64),
    -- | Required. The name of the warehouse. Must be unique within account.
    name :: (Core.Maybe Core.Text),
    -- | Required. Shipping address of the warehouse.
    shippingAddress :: (Core.Maybe Address)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Warehouse' with the minimum fields required to make a request.
newWarehouse ::
  Warehouse
newWarehouse =
  Warehouse
    { businessDayConfig = Core.Nothing,
      cutoffTime = Core.Nothing,
      handlingDays = Core.Nothing,
      name = Core.Nothing,
      shippingAddress = Core.Nothing
    }

instance Core.FromJSON Warehouse where
  parseJSON =
    Core.withObject
      "Warehouse"
      ( \o ->
          Warehouse
            Core.<$> (o Core..:? "businessDayConfig")
            Core.<*> (o Core..:? "cutoffTime")
            Core.<*> (o Core..:? "handlingDays")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "shippingAddress")
      )

instance Core.ToJSON Warehouse where
  toJSON Warehouse {..} =
    Core.object
      ( Core.catMaybes
          [ ("businessDayConfig" Core..=)
              Core.<$> businessDayConfig,
            ("cutoffTime" Core..=) Core.<$> cutoffTime,
            ("handlingDays" Core..=) Core.. Core.AsText
              Core.<$> handlingDays,
            ("name" Core..=) Core.<$> name,
            ("shippingAddress" Core..=)
              Core.<$> shippingAddress
          ]
      )

--
-- /See:/ 'newWarehouseBasedDeliveryTime' smart constructor.
data WarehouseBasedDeliveryTime = WarehouseBasedDeliveryTime
  { -- | Required. Carrier, such as @\"UPS\"@ or @\"Fedex\"@. The list of supported carriers can be retrieved through the @listSupportedCarriers@ method.
    carrier :: (Core.Maybe Core.Text),
    -- | Required. Carrier service, such as @\"ground\"@ or @\"2 days\"@. The list of supported services for a carrier can be retrieved through the @listSupportedCarriers@ method. The name of the service must be in the eddSupportedServices list.
    carrierService :: (Core.Maybe Core.Text),
    -- | Shipping origin\'s state.
    originAdministrativeArea :: (Core.Maybe Core.Text),
    -- | Shipping origin\'s city.
    originCity :: (Core.Maybe Core.Text),
    -- | Shipping origin\'s country represented as a <https://github.com/unicode-org/cldr/blob/latest/common/main/en.xml CLDR territory code>.
    originCountry :: (Core.Maybe Core.Text),
    -- | Shipping origin.
    originPostalCode :: (Core.Maybe Core.Text),
    -- | Shipping origin\'s street address.
    originStreetAddress :: (Core.Maybe Core.Text),
    -- | The name of the warehouse. Warehouse name need to be matched with name. If warehouseName is set, the below fields will be ignored. The warehouse info will be read from warehouse.
    warehouseName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WarehouseBasedDeliveryTime' with the minimum fields required to make a request.
newWarehouseBasedDeliveryTime ::
  WarehouseBasedDeliveryTime
newWarehouseBasedDeliveryTime =
  WarehouseBasedDeliveryTime
    { carrier = Core.Nothing,
      carrierService = Core.Nothing,
      originAdministrativeArea = Core.Nothing,
      originCity = Core.Nothing,
      originCountry = Core.Nothing,
      originPostalCode = Core.Nothing,
      originStreetAddress = Core.Nothing,
      warehouseName = Core.Nothing
    }

instance Core.FromJSON WarehouseBasedDeliveryTime where
  parseJSON =
    Core.withObject
      "WarehouseBasedDeliveryTime"
      ( \o ->
          WarehouseBasedDeliveryTime
            Core.<$> (o Core..:? "carrier")
            Core.<*> (o Core..:? "carrierService")
            Core.<*> (o Core..:? "originAdministrativeArea")
            Core.<*> (o Core..:? "originCity")
            Core.<*> (o Core..:? "originCountry")
            Core.<*> (o Core..:? "originPostalCode")
            Core.<*> (o Core..:? "originStreetAddress")
            Core.<*> (o Core..:? "warehouseName")
      )

instance Core.ToJSON WarehouseBasedDeliveryTime where
  toJSON WarehouseBasedDeliveryTime {..} =
    Core.object
      ( Core.catMaybes
          [ ("carrier" Core..=) Core.<$> carrier,
            ("carrierService" Core..=) Core.<$> carrierService,
            ("originAdministrativeArea" Core..=)
              Core.<$> originAdministrativeArea,
            ("originCity" Core..=) Core.<$> originCity,
            ("originCountry" Core..=) Core.<$> originCountry,
            ("originPostalCode" Core..=)
              Core.<$> originPostalCode,
            ("originStreetAddress" Core..=)
              Core.<$> originStreetAddress,
            ("warehouseName" Core..=) Core.<$> warehouseName
          ]
      )

--
-- /See:/ 'newWarehouseCutoffTime' smart constructor.
data WarehouseCutoffTime = WarehouseCutoffTime
  { -- | Required. Hour (24-hour clock) of the cutoff time until which an order has to be placed to be processed in the same day by the warehouse. Hour is based on the timezone of warehouse.
    hour :: (Core.Maybe Core.Int32),
    -- | Required. Minute of the cutoff time until which an order has to be placed to be processed in the same day by the warehouse. Minute is based on the timezone of warehouse.
    minute :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WarehouseCutoffTime' with the minimum fields required to make a request.
newWarehouseCutoffTime ::
  WarehouseCutoffTime
newWarehouseCutoffTime =
  WarehouseCutoffTime {hour = Core.Nothing, minute = Core.Nothing}

instance Core.FromJSON WarehouseCutoffTime where
  parseJSON =
    Core.withObject
      "WarehouseCutoffTime"
      ( \o ->
          WarehouseCutoffTime
            Core.<$> (o Core..:? "hour") Core.<*> (o Core..:? "minute")
      )

instance Core.ToJSON WarehouseCutoffTime where
  toJSON WarehouseCutoffTime {..} =
    Core.object
      ( Core.catMaybes
          [ ("hour" Core..=) Core.<$> hour,
            ("minute" Core..=) Core.<$> minute
          ]
      )

--
-- /See:/ 'newWeight' smart constructor.
data Weight = Weight
  { -- | Required. The weight unit. Acceptable values are: - \"@kg@\" - \"@lb@\"
    unit :: (Core.Maybe Core.Text),
    -- | Required. The weight represented as a number. The weight can have a maximum precision of four decimal places.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Weight' with the minimum fields required to make a request.
newWeight ::
  Weight
newWeight = Weight {unit = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON Weight where
  parseJSON =
    Core.withObject
      "Weight"
      ( \o ->
          Weight
            Core.<$> (o Core..:? "unit") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON Weight where
  toJSON Weight {..} =
    Core.object
      ( Core.catMaybes
          [ ("unit" Core..=) Core.<$> unit,
            ("value" Core..=) Core.<$> value
          ]
      )
