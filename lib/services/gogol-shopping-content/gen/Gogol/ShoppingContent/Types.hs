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
-- Module      : Gogol.ShoppingContent.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.ShoppingContent.Types
  ( -- * Configuration
    shoppingContentService,

    -- * OAuth Scopes
    Content'FullControl,

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

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Internal.Product
import Gogol.ShoppingContent.Internal.Sum

-- | Default request referring to version @v2.1@ of the Content API for Shopping. This contains the host and root path used as a starting point for constructing service requests.
shoppingContentService :: Core.ServiceConfig
shoppingContentService =
  Core.defaultService
    (Core.ServiceId "content:v2.1")
    "shoppingcontent.googleapis.com"

-- | Manage your product listings and accounts for Google Shopping
type Content'FullControl = "https://www.googleapis.com/auth/content"
