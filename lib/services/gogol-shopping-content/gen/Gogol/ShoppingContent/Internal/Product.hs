{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.ShoppingContent.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
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

    -- * AccountBusinessIdentity
    AccountBusinessIdentity (..),
    newAccountBusinessIdentity,

    -- * AccountBusinessInformation
    AccountBusinessInformation (..),
    newAccountBusinessInformation,

    -- * AccountConversionSettings
    AccountConversionSettings (..),
    newAccountConversionSettings,

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

    -- * AccountIdentityType
    AccountIdentityType (..),
    newAccountIdentityType,

    -- * AccountImageImprovements
    AccountImageImprovements (..),
    newAccountImageImprovements,

    -- * AccountImageImprovementsSettings
    AccountImageImprovementsSettings (..),
    newAccountImageImprovementsSettings,

    -- * AccountIssue
    AccountIssue (..),
    newAccountIssue,

    -- * AccountIssueImpact
    AccountIssueImpact (..),
    newAccountIssueImpact,

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

    -- * Action
    Action (..),
    newAction,

    -- * ActionFlow
    ActionFlow (..),
    newActionFlow,

    -- * ActionInput
    ActionInput (..),
    newActionInput,

    -- * ActionReason
    ActionReason (..),
    newActionReason,

    -- * Address
    Address (..),
    newAddress,

    -- * AlternateDisputeResolution
    AlternateDisputeResolution (..),
    newAlternateDisputeResolution,

    -- * AttributionSettings
    AttributionSettings (..),
    newAttributionSettings,

    -- * AttributionSettingsConversionType
    AttributionSettingsConversionType (..),
    newAttributionSettingsConversionType,

    -- * BestSellers
    BestSellers (..),
    newBestSellers,

    -- * Brand
    Brand (..),
    newBrand,

    -- * Breakdown
    Breakdown (..),
    newBreakdown,

    -- * BreakdownRegion
    BreakdownRegion (..),
    newBreakdownRegion,

    -- * BuiltInSimpleAction
    BuiltInSimpleAction (..),
    newBuiltInSimpleAction,

    -- * BuiltInSimpleActionAdditionalContent
    BuiltInSimpleActionAdditionalContent (..),
    newBuiltInSimpleActionAdditionalContent,

    -- * BuiltInUserInputAction
    BuiltInUserInputAction (..),
    newBuiltInUserInputAction,

    -- * BusinessDayConfig
    BusinessDayConfig (..),
    newBusinessDayConfig,

    -- * Callout
    Callout (..),
    newCallout,

    -- * CarrierRate
    CarrierRate (..),
    newCarrierRate,

    -- * CarriersCarrier
    CarriersCarrier (..),
    newCarriersCarrier,

    -- * CheckoutSettings
    CheckoutSettings (..),
    newCheckoutSettings,

    -- * CloudExportAdditionalProperties
    CloudExportAdditionalProperties (..),
    newCloudExportAdditionalProperties,

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

    -- * CompetitiveVisibility
    CompetitiveVisibility (..),
    newCompetitiveVisibility,

    -- * ConversionSource
    ConversionSource (..),
    newConversionSource,

    -- * Css
    Css (..),
    newCss,

    -- * CustomAttribute
    CustomAttribute (..),
    newCustomAttribute,

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

    -- * DeliveryArea
    DeliveryArea (..),
    newDeliveryArea,

    -- * DeliveryAreaPostalCodeRange
    DeliveryAreaPostalCodeRange (..),
    newDeliveryAreaPostalCodeRange,

    -- * DeliveryTime
    DeliveryTime (..),
    newDeliveryTime,

    -- * Distance
    Distance (..),
    newDistance,

    -- * ECommercePlatformLinkInfo
    ECommercePlatformLinkInfo (..),
    newECommercePlatformLinkInfo,

    -- * Error'
    Error' (..),
    newError,

    -- * Errors
    Errors (..),
    newErrors,

    -- * ExternalAction
    ExternalAction (..),
    newExternalAction,

    -- * FreeListingsProgramStatus
    FreeListingsProgramStatus (..),
    newFreeListingsProgramStatus,

    -- * FreeListingsProgramStatusRegionStatus
    FreeListingsProgramStatusRegionStatus (..),
    newFreeListingsProgramStatusRegionStatus,

    -- * FreeListingsProgramStatusReviewIneligibilityReasonDetails
    FreeListingsProgramStatusReviewIneligibilityReasonDetails (..),
    newFreeListingsProgramStatusReviewIneligibilityReasonDetails,

    -- * FreeShippingThreshold
    FreeShippingThreshold (..),
    newFreeShippingThreshold,

    -- * GenerateRecommendationsResponse
    GenerateRecommendationsResponse (..),
    newGenerateRecommendationsResponse,

    -- * GmbAccounts
    GmbAccounts (..),
    newGmbAccounts,

    -- * GmbAccountsGmbAccount
    GmbAccountsGmbAccount (..),
    newGmbAccountsGmbAccount,

    -- * GoogleAnalyticsLink
    GoogleAnalyticsLink (..),
    newGoogleAnalyticsLink,

    -- * Headers
    Headers (..),
    newHeaders,

    -- * HolidayCutoff
    HolidayCutoff (..),
    newHolidayCutoff,

    -- * HolidaysHoliday
    HolidaysHoliday (..),
    newHolidaysHoliday,

    -- * InputField
    InputField (..),
    newInputField,

    -- * InputFieldCheckboxInput
    InputFieldCheckboxInput (..),
    newInputFieldCheckboxInput,

    -- * InputFieldChoiceInput
    InputFieldChoiceInput (..),
    newInputFieldChoiceInput,

    -- * InputFieldChoiceInputChoiceInputOption
    InputFieldChoiceInputChoiceInputOption (..),
    newInputFieldChoiceInputChoiceInputOption,

    -- * InputFieldTextInput
    InputFieldTextInput (..),
    newInputFieldTextInput,

    -- * InputValue
    InputValue (..),
    newInputValue,

    -- * InputValueCheckboxInputValue
    InputValueCheckboxInputValue (..),
    newInputValueCheckboxInputValue,

    -- * InputValueChoiceInputValue
    InputValueChoiceInputValue (..),
    newInputValueChoiceInputValue,

    -- * InputValueTextInputValue
    InputValueTextInputValue (..),
    newInputValueTextInputValue,

    -- * InsertCheckoutSettingsRequest
    InsertCheckoutSettingsRequest (..),
    newInsertCheckoutSettingsRequest,

    -- * Installment
    Installment (..),
    newInstallment,

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

    -- * LiaOmnichannelExperience
    LiaOmnichannelExperience (..),
    newLiaOmnichannelExperience,

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

    -- * ListConversionSourcesResponse
    ListConversionSourcesResponse (..),
    newListConversionSourcesResponse,

    -- * ListCssesResponse
    ListCssesResponse (..),
    newListCssesResponse,

    -- * ListMethodQuotasResponse
    ListMethodQuotasResponse (..),
    newListMethodQuotasResponse,

    -- * ListPromotionResponse
    ListPromotionResponse (..),
    newListPromotionResponse,

    -- * ListRegionsResponse
    ListRegionsResponse (..),
    newListRegionsResponse,

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

    -- * LoyaltyProgram
    LoyaltyProgram (..),
    newLoyaltyProgram,

    -- * MerchantCenterDestination
    MerchantCenterDestination (..),
    newMerchantCenterDestination,

    -- * MethodQuota
    MethodQuota (..),
    newMethodQuota,

    -- * Metrics
    Metrics (..),
    newMetrics,

    -- * MinimumOrderValueTable
    MinimumOrderValueTable (..),
    newMinimumOrderValueTable,

    -- * MinimumOrderValueTableStoreCodeSetWithMov
    MinimumOrderValueTableStoreCodeSetWithMov (..),
    newMinimumOrderValueTableStoreCodeSetWithMov,

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

    -- * PriceCompetitiveness
    PriceCompetitiveness (..),
    newPriceCompetitiveness,

    -- * PriceInsights
    PriceInsights (..),
    newPriceInsights,

    -- * Product
    Product (..),
    newProduct,

    -- * ProductCertification
    ProductCertification (..),
    newProductCertification,

    -- * ProductCluster
    ProductCluster (..),
    newProductCluster,

    -- * ProductDeliveryTime
    ProductDeliveryTime (..),
    newProductDeliveryTime,

    -- * ProductDeliveryTimeAreaDeliveryTime
    ProductDeliveryTimeAreaDeliveryTime (..),
    newProductDeliveryTimeAreaDeliveryTime,

    -- * ProductDeliveryTimeAreaDeliveryTimeDeliveryTime
    ProductDeliveryTimeAreaDeliveryTimeDeliveryTime (..),
    newProductDeliveryTimeAreaDeliveryTimeDeliveryTime,

    -- * ProductDimension
    ProductDimension (..),
    newProductDimension,

    -- * ProductId
    ProductId (..),
    newProductId,

    -- * ProductIssue
    ProductIssue (..),
    newProductIssue,

    -- * ProductIssueImpact
    ProductIssueImpact (..),
    newProductIssueImpact,

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

    -- * ProductStructuredDescription
    ProductStructuredDescription (..),
    newProductStructuredDescription,

    -- * ProductStructuredTitle
    ProductStructuredTitle (..),
    newProductStructuredTitle,

    -- * ProductSubscriptionCost
    ProductSubscriptionCost (..),
    newProductSubscriptionCost,

    -- * ProductSustainabilityIncentive
    ProductSustainabilityIncentive (..),
    newProductSustainabilityIncentive,

    -- * ProductTax
    ProductTax (..),
    newProductTax,

    -- * ProductUnitPricingBaseMeasure
    ProductUnitPricingBaseMeasure (..),
    newProductUnitPricingBaseMeasure,

    -- * ProductUnitPricingMeasure
    ProductUnitPricingMeasure (..),
    newProductUnitPricingMeasure,

    -- * ProductView
    ProductView (..),
    newProductView,

    -- * ProductViewItemIssue
    ProductViewItemIssue (..),
    newProductViewItemIssue,

    -- * ProductViewItemIssueIssueSeverityPerDestination
    ProductViewItemIssueIssueSeverityPerDestination (..),
    newProductViewItemIssueIssueSeverityPerDestination,

    -- * ProductViewItemIssueItemIssueSeverity
    ProductViewItemIssueItemIssueSeverity (..),
    newProductViewItemIssueItemIssueSeverity,

    -- * ProductViewItemIssueItemIssueType
    ProductViewItemIssueItemIssueType (..),
    newProductViewItemIssueItemIssueType,

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

    -- * PromotionPromotionStatus
    PromotionPromotionStatus (..),
    newPromotionPromotionStatus,

    -- * PromotionPromotionStatusDestinationStatus
    PromotionPromotionStatusDestinationStatus (..),
    newPromotionPromotionStatusDestinationStatus,

    -- * PromotionPromotionStatusPromotionIssue
    PromotionPromotionStatusPromotionIssue (..),
    newPromotionPromotionStatusPromotionIssue,

    -- * PubsubNotificationSettings
    PubsubNotificationSettings (..),
    newPubsubNotificationSettings,

    -- * RateGroup
    RateGroup (..),
    newRateGroup,

    -- * Recommendation
    Recommendation (..),
    newRecommendation,

    -- * RecommendationCallToAction
    RecommendationCallToAction (..),
    newRecommendationCallToAction,

    -- * RecommendationCreative
    RecommendationCreative (..),
    newRecommendationCreative,

    -- * RecommendationDescription
    RecommendationDescription (..),
    newRecommendationDescription,

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

    -- * RenderAccountIssuesRequestPayload
    RenderAccountIssuesRequestPayload (..),
    newRenderAccountIssuesRequestPayload,

    -- * RenderAccountIssuesResponse
    RenderAccountIssuesResponse (..),
    newRenderAccountIssuesResponse,

    -- * RenderProductIssuesRequestPayload
    RenderProductIssuesRequestPayload (..),
    newRenderProductIssuesRequestPayload,

    -- * RenderProductIssuesResponse
    RenderProductIssuesResponse (..),
    newRenderProductIssuesResponse,

    -- * ReportInteractionRequest
    ReportInteractionRequest (..),
    newReportInteractionRequest,

    -- * ReportRow
    ReportRow (..),
    newReportRow,

    -- * RequestPhoneVerificationRequest
    RequestPhoneVerificationRequest (..),
    newRequestPhoneVerificationRequest,

    -- * RequestPhoneVerificationResponse
    RequestPhoneVerificationResponse (..),
    newRequestPhoneVerificationResponse,

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

    -- * ServiceStoreConfig
    ServiceStoreConfig (..),
    newServiceStoreConfig,

    -- * ServiceStoreConfigCutoffConfig
    ServiceStoreConfigCutoffConfig (..),
    newServiceStoreConfigCutoffConfig,

    -- * ServiceStoreConfigCutoffConfigLocalCutoffTime
    ServiceStoreConfigCutoffConfigLocalCutoffTime (..),
    newServiceStoreConfigCutoffConfigLocalCutoffTime,

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

    -- * TextWithTooltip
    TextWithTooltip (..),
    newTextWithTooltip,

    -- * TimePeriod
    TimePeriod (..),
    newTimePeriod,

    -- * TimeZone
    TimeZone (..),
    newTimeZone,

    -- * TopicTrends
    TopicTrends (..),
    newTopicTrends,

    -- * TransitTable
    TransitTable (..),
    newTransitTable,

    -- * TransitTableTransitTimeRow
    TransitTableTransitTimeRow (..),
    newTransitTableTransitTimeRow,

    -- * TransitTableTransitTimeRowTransitTimeValue
    TransitTableTransitTimeRowTransitTimeValue (..),
    newTransitTableTransitTimeRowTransitTimeValue,

    -- * TriggerActionPayload
    TriggerActionPayload (..),
    newTriggerActionPayload,

    -- * TriggerActionResponse
    TriggerActionResponse (..),
    newTriggerActionResponse,

    -- * UndeleteConversionSourceRequest
    UndeleteConversionSourceRequest (..),
    newUndeleteConversionSourceRequest,

    -- * UrlSettings
    UrlSettings (..),
    newUrlSettings,

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

import Gogol.Prelude qualified as Core
import Gogol.ShoppingContent.Internal.Sum

-- | Account data. After the creation of a new account it may take a few minutes before it\'s fully operational. The methods delete, insert, and update require the admin role.
--
-- /See:/ 'newAccount' smart constructor.
data Account = Account
  { -- | Output only. How the account is managed. Acceptable values are: - \"@manual@\" - \"@automatic@\"
    accountManagement :: (Core.Maybe Core.Text),
    -- | Linked Ads accounts that are active or pending approval. To create a new link request, add a new link with status @active@ to the list. It will remain in a @pending@ state until approved or rejected either in the Ads interface or through the Google Ads API. To delete an active link, or to cancel a link request, remove it from the list.
    adsLinks :: (Core.Maybe [AccountAdsLink]),
    -- | Indicates whether the merchant sells adult content.
    adultContent :: (Core.Maybe Core.Bool),
    -- | The automatic improvements of the account can be used to automatically update items, improve images and shipping. Each section inside AutomaticImprovements is updated separately.
    automaticImprovements :: (Core.Maybe AccountAutomaticImprovements),
    -- | Automatically created label IDs that are assigned to the account by CSS Center.
    automaticLabelIds :: (Core.Maybe [Core.Word64]),
    -- | The business identity attributes can be used to self-declare attributes that let customers know more about your business.
    businessIdentity :: (Core.Maybe AccountBusinessIdentity),
    -- | The business information of the account.
    businessInformation :: (Core.Maybe AccountBusinessInformation),
    -- | Settings for conversion tracking.
    conversionSettings :: (Core.Maybe AccountConversionSettings),
    -- | ID of CSS the account belongs to.
    cssId :: (Core.Maybe Core.Word64),
    -- | The Business Profile which is linked or in the process of being linked with the Merchant Center account.
    googleMyBusinessLink :: (Core.Maybe AccountGoogleMyBusinessLink),
    -- | Required. 64-bit Merchant Center account ID.
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
      businessIdentity = Core.Nothing,
      businessInformation = Core.Nothing,
      conversionSettings = Core.Nothing,
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
            Core.<*> (o Core..:? "adsLinks")
            Core.<*> (o Core..:? "adultContent")
            Core.<*> (o Core..:? "automaticImprovements")
            Core.<*> ( o
                         Core..:? "automaticLabelIds"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
            Core.<*> (o Core..:? "businessIdentity")
            Core.<*> (o Core..:? "businessInformation")
            Core.<*> (o Core..:? "conversionSettings")
            Core.<*> (o Core..:? "cssId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "googleMyBusinessLink")
            Core.<*> (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "kind")
            Core.<*> ( o
                         Core..:? "labelIds"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "sellerId")
            Core.<*> (o Core..:? "users")
            Core.<*> (o Core..:? "websiteUrl")
            Core.<*> (o Core..:? "youtubeChannelLinks")
      )

instance Core.ToJSON Account where
  toJSON Account {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountManagement" Core..=) Core.<$> accountManagement,
            ("adsLinks" Core..=) Core.<$> adsLinks,
            ("adultContent" Core..=) Core.<$> adultContent,
            ("automaticImprovements" Core..=) Core.<$> automaticImprovements,
            ("automaticLabelIds" Core..=)
              Core.. Core.fmap Core.AsText
              Core.<$> automaticLabelIds,
            ("businessIdentity" Core..=) Core.<$> businessIdentity,
            ("businessInformation" Core..=) Core.<$> businessInformation,
            ("conversionSettings" Core..=) Core.<$> conversionSettings,
            ("cssId" Core..=) Core.. Core.AsText Core.<$> cssId,
            ("googleMyBusinessLink" Core..=) Core.<$> googleMyBusinessLink,
            ("id" Core..=) Core.. Core.AsText Core.<$> id,
            ("kind" Core..=) Core.<$> kind,
            ("labelIds" Core..=)
              Core.. Core.fmap Core.AsText
              Core.<$> labelIds,
            ("name" Core..=) Core.<$> name,
            ("sellerId" Core..=) Core.<$> sellerId,
            ("users" Core..=) Core.<$> users,
            ("websiteUrl" Core..=) Core.<$> websiteUrl,
            ("youtubeChannelLinks" Core..=) Core.<$> youtubeChannelLinks
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
    -- | Street-level part of the address. Use @\\n@ to add a second line.
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
newAccountAdsLink =
  AccountAdsLink {adsId = Core.Nothing, status = Core.Nothing}

instance Core.FromJSON AccountAdsLink where
  parseJSON =
    Core.withObject
      "AccountAdsLink"
      ( \o ->
          AccountAdsLink
            Core.<$> (o Core..:? "adsId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "status")
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
          [ ("imageImprovements" Core..=) Core.<$> imageImprovements,
            ("itemUpdates" Core..=) Core.<$> itemUpdates,
            ("shippingImprovements" Core..=) Core.<$> shippingImprovements
          ]
      )

-- | The <https://support.google.com/merchants/answer/10342414 business identity attributes> can be used to self-declare attributes that let customers know more about your business.
--
-- /See:/ 'newAccountBusinessIdentity' smart constructor.
data AccountBusinessIdentity = AccountBusinessIdentity
  { -- | Specifies whether the business identifies itself as being black-owned. This optional field is only available for merchants with a business country set to \"US\". This field is not allowed for marketplaces or marketplace sellers.
    blackOwned :: (Core.Maybe AccountIdentityType),
    -- | Required. By setting this field, your business may be included in promotions for all the selected attributes. If you clear this option, it won\'t affect your identification with any of the attributes. For this field to be set, the merchant must self identify with at least one of the @AccountIdentityType@. If none are included, the request will be considered invalid.
    includeForPromotions :: (Core.Maybe Core.Bool),
    -- | Specifies whether the business identifies itself as being latino-owned. This optional field is only available for merchants with a business country set to \"US\". This field is not allowed for marketplaces or marketplace sellers.
    latinoOwned :: (Core.Maybe AccountIdentityType),
    -- | Specifies whether the business identifies itself as a small business. This optional field is only available for merchants with a business country set to \"US\". It is also not allowed for marketplaces, but it is allowed to marketplace sellers.
    smallBusiness :: (Core.Maybe AccountIdentityType),
    -- | Specifies whether the business identifies itself as being veteran-owned. This optional field is only available for merchants with a business country set to \"US\". This field is not allowed for marketplaces or marketplace sellers.
    veteranOwned :: (Core.Maybe AccountIdentityType),
    -- | Specifies whether the business identifies itself as being women-owned. This optional field is only available for merchants with a business country set to \"US\". This field is not allowed for marketplaces or marketplace sellers.
    womenOwned :: (Core.Maybe AccountIdentityType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountBusinessIdentity' with the minimum fields required to make a request.
newAccountBusinessIdentity ::
  AccountBusinessIdentity
newAccountBusinessIdentity =
  AccountBusinessIdentity
    { blackOwned = Core.Nothing,
      includeForPromotions = Core.Nothing,
      latinoOwned = Core.Nothing,
      smallBusiness = Core.Nothing,
      veteranOwned = Core.Nothing,
      womenOwned = Core.Nothing
    }

instance Core.FromJSON AccountBusinessIdentity where
  parseJSON =
    Core.withObject
      "AccountBusinessIdentity"
      ( \o ->
          AccountBusinessIdentity
            Core.<$> (o Core..:? "blackOwned")
            Core.<*> (o Core..:? "includeForPromotions")
            Core.<*> (o Core..:? "latinoOwned")
            Core.<*> (o Core..:? "smallBusiness")
            Core.<*> (o Core..:? "veteranOwned")
            Core.<*> (o Core..:? "womenOwned")
      )

instance Core.ToJSON AccountBusinessIdentity where
  toJSON AccountBusinessIdentity {..} =
    Core.object
      ( Core.catMaybes
          [ ("blackOwned" Core..=) Core.<$> blackOwned,
            ("includeForPromotions" Core..=) Core.<$> includeForPromotions,
            ("latinoOwned" Core..=) Core.<$> latinoOwned,
            ("smallBusiness" Core..=) Core.<$> smallBusiness,
            ("veteranOwned" Core..=) Core.<$> veteranOwned,
            ("womenOwned" Core..=) Core.<$> womenOwned
          ]
      )

--
-- /See:/ 'newAccountBusinessInformation' smart constructor.
data AccountBusinessInformation = AccountBusinessInformation
  { -- | The address of the business. Use @\\n@ to add a second address line.
    address :: (Core.Maybe AccountAddress),
    -- | The customer service information of the business.
    customerService :: (Core.Maybe AccountCustomerService),
    -- | The 10-digit <https://support.google.com/merchants/answer/9037766 Korean business registration number> separated with dashes in the format: XXX-XX-XXXXX. This field will only be updated if explicitly set.
    koreanBusinessRegistrationNumber :: (Core.Maybe Core.Text),
    -- | The phone number of the business in <https://en.wikipedia.org/wiki/E.164 E.164> format. This can only be updated if a verified phone number is not already set. To replace a verified phone number use the @Accounts.requestphoneverification@ and @Accounts.verifyphonenumber@.
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

-- | Settings for conversion tracking.
--
-- /See:/ 'newAccountConversionSettings' smart constructor.
newtype AccountConversionSettings = AccountConversionSettings
  { -- | When enabled, free listing URLs have a parameter to enable conversion tracking for products owned by the current merchant account. See <https://support.google.com/merchants/answer/11127659 auto-tagging>.
    freeListingsAutoTaggingEnabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountConversionSettings' with the minimum fields required to make a request.
newAccountConversionSettings ::
  AccountConversionSettings
newAccountConversionSettings =
  AccountConversionSettings
    { freeListingsAutoTaggingEnabled =
        Core.Nothing
    }

instance Core.FromJSON AccountConversionSettings where
  parseJSON =
    Core.withObject
      "AccountConversionSettings"
      ( \o ->
          AccountConversionSettings
            Core.<$> (o Core..:? "freeListingsAutoTaggingEnabled")
      )

instance Core.ToJSON AccountConversionSettings where
  toJSON AccountConversionSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("freeListingsAutoTaggingEnabled" Core..=)
              Core.<$> freeListingsAutoTaggingEnabled
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
            Core.<*> (o Core..:? "expiresIn" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "purpose")
      )

instance Core.ToJSON AccountCredentials where
  toJSON AccountCredentials {..} =
    Core.object
      ( Core.catMaybes
          [ ("accessToken" Core..=) Core.<$> accessToken,
            ("expiresIn" Core..=) Core.. Core.AsText Core.<$> expiresIn,
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
  AccountIdentifier
    { aggregatorId = Core.Nothing,
      merchantId = Core.Nothing
    }

instance Core.FromJSON AccountIdentifier where
  parseJSON =
    Core.withObject
      "AccountIdentifier"
      ( \o ->
          AccountIdentifier
            Core.<$> (o Core..:? "aggregatorId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "merchantId" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON AccountIdentifier where
  toJSON AccountIdentifier {..} =
    Core.object
      ( Core.catMaybes
          [ ("aggregatorId" Core..=) Core.. Core.AsText Core.<$> aggregatorId,
            ("merchantId" Core..=) Core.. Core.AsText Core.<$> merchantId
          ]
      )

-- | The account identity type used to specify attributes.
--
-- /See:/ 'newAccountIdentityType' smart constructor.
newtype AccountIdentityType = AccountIdentityType
  { -- | Optional. Indicates that the business identifies itself with a given identity type. Setting this field does not automatically mean eligibility for promotions.
    selfIdentified :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountIdentityType' with the minimum fields required to make a request.
newAccountIdentityType ::
  AccountIdentityType
newAccountIdentityType =
  AccountIdentityType {selfIdentified = Core.Nothing}

instance Core.FromJSON AccountIdentityType where
  parseJSON =
    Core.withObject
      "AccountIdentityType"
      (\o -> AccountIdentityType Core.<$> (o Core..:? "selfIdentified"))

instance Core.ToJSON AccountIdentityType where
  toJSON AccountIdentityType {..} =
    Core.object
      ( Core.catMaybes
          [("selfIdentified" Core..=) Core.<$> selfIdentified]
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
    { accountImageImprovementsSettings =
        Core.Nothing,
      effectiveAllowAutomaticImageImprovements = Core.Nothing
    }

instance Core.FromJSON AccountImageImprovements where
  parseJSON =
    Core.withObject
      "AccountImageImprovements"
      ( \o ->
          AccountImageImprovements
            Core.<$> (o Core..:? "accountImageImprovementsSettings")
            Core.<*> (o Core..:? "effectiveAllowAutomaticImageImprovements")
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
    { allowAutomaticImageImprovements =
        Core.Nothing
    }

instance Core.FromJSON AccountImageImprovementsSettings where
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

-- | An issue affecting specific merchant.
--
-- /See:/ 'newAccountIssue' smart constructor.
data AccountIssue = AccountIssue
  { -- | A list of actionable steps that can be executed to solve the issue. An example is requesting a re-review or providing arguments when merchant disagrees with the issue. Actions that are supported in (your) third-party application can be rendered as buttons and should be available to merchant when they expand the issue.
    actions :: (Core.Maybe [Action]),
    -- | Clarifies the severity of the issue. The summarizing message, if present, should be shown right under the title for each issue. It helps merchants to quickly understand the impact of the issue. The detailed breakdown helps the merchant to fully understand the impact of the issue. It can be rendered as dialog that opens when the merchant mouse over the summarized impact statement. Issues with different severity can be styled differently. They may use a different color or icon to signal the difference between @ERROR@, @WARNING@ and @INFO@.
    impact :: (Core.Maybe AccountIssueImpact),
    -- | Details of the issue as a pre-rendered HTML. HTML elements contain CSS classes that can be used to customize the style of the content. Always sanitize the HTML before embedding it directly to your application. The sanitizer needs to allow basic HTML tags, such as: @div@, @span@, @p@, @a@, @ul@, @li@, @table@, @tr@, @td@. For example, you can use <https://www.npmjs.com/package/dompurify DOMPurify>. CSS classes: * @issue-detail@ - top level container for the detail of the issue * @callout-banners@ - section of the @issue-detail@ with callout banners * @callout-banner@ - single callout banner, inside @callout-banners@ * @callout-banner-info@ - callout with important information (default) * @callout-banner-warning@ - callout with a warning * @callout-banner-error@ - callout informing about an error (most severe) * @issue-content@ - section of the @issue-detail@, contains multiple @content-element@ * @content-element@ - content element such as a list, link or paragraph, inside @issue-content@ * @root-causes@ -
    -- unordered list with items describing root causes of the issue, inside @issue-content@ * @root-causes-intro@ - intro text before the @root-causes@ list, inside @issue-content@ * @segment@ - section of the text, @span@ inside paragraph * @segment-attribute@ - section of the text that represents a product attribute, for example \'image_link\' * @segment-literal@ - section of the text that contains a special value, for example \'0-1000 kg\' * @segment-bold@ - section of the text that should be rendered as bold * @segment-italic@ - section of the text that should be rendered as italic * @tooltip@ - used on paragraphs that should be rendered with a tooltip. A section of the text in such a paragraph will have a class @tooltip-text@ and is intended to be shown in a mouse over dialog. If the style is not used, the @tooltip-text@ section would be shown on a new line, after the main part of the text. * @tooltip-text@ - marks a section of the text within a @tooltip@, that is intended to be shown in a mouse over dialog. *
    -- @tooltip-icon@ - marks a section of the text within a @tooltip@, that can be replaced with a tooltip icon, for example \'?\' or \'i\'. By default, this section contains a @br@ tag, that is separating the main text and the tooltip text when the style is not used. * @tooltip-style-question@ - the tooltip shows helpful information, can use the \'?\' as an icon. * @tooltip-style-info@ - the tooltip adds additional information fitting to the context, can use the \'i\' as an icon. * @content-moderation@ - marks the paragraph that explains how the issue was identified. * @new-element@ - Present for new elements added to the pre-rendered content in the future. To make sure that a new content element does not break your style, you can hide everything with this class.
    prerenderedContent :: (Core.Maybe Core.Text),
    -- | Pre-rendered HTML that contains a link to the external location where the ODS can be requested and instructions for how to request it. HTML elements contain CSS classes that can be used to customize the style of this snippet. Always sanitize the HTML before embedding it directly to your application. The sanitizer needs to allow basic HTML tags, such as: @div@, @span@, @p@, @a@, @ul@, @li@, @table@, @tr@, @td@. For example, you can use <https://www.npmjs.com/package/dompurify DOMPurify>. CSS classes: * @ods-section@* - wrapper around the out-of-court dispute resolution section * @ods-description@* - intro text for the out-of-court dispute resolution. It may contain multiple segments and a link. * @ods-param@* - wrapper around the header-value pair for parameters that merchant may need to provide during the ODS process. * @ods-routing-id@* - ods param for the Routing ID. * @ods-reference-id@* - ods param for the Routing ID. * @ods-param-header@* - header for the ODS parameter * @ods-param-value@* - value of the
    -- ODS parameter. This value should be rendered in a way that it is easy for merchants to identify and copy. * @segment@ - section of the text, @span@ inside paragraph * @segment-attribute@ - section of the text that represents a product attribute, for example \'image_link\' * @segment-literal@ - section of the text that contains a special value, for example \'0-1000 kg\' * @segment-bold@ - section of the text that should be rendered as bold * @segment-italic@ - section of the text that should be rendered as italic * @tooltip@ - used on paragraphs that should be rendered with a tooltip. A section of the text in such a paragraph will have a class @tooltip-text@ and is intended to be shown in a mouse over dialog. If the style is not used, the @tooltip-text@ section would be shown on a new line, after the main part of the text. * @tooltip-text@ - marks a section of the text within a @tooltip@, that is intended to be shown in a mouse over dialog. * @tooltip-icon@ - marks a section of the text within a @tooltip@,
    -- that can be replaced with a tooltip icon, for example \'?\' or \'i\'. By default, this section contains a @br@ tag, that is separating the main text and the tooltip text when the style is not used. * @tooltip-style-question@ - the tooltip shows helpful information, can use the \'?\' as an icon. * @tooltip-style-info@ - the tooltip adds additional information fitting to the context, can use the \'i\' as an icon.
    prerenderedOutOfCourtDisputeSettlement :: (Core.Maybe Core.Text),
    -- | Title of the issue.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountIssue' with the minimum fields required to make a request.
newAccountIssue ::
  AccountIssue
newAccountIssue =
  AccountIssue
    { actions = Core.Nothing,
      impact = Core.Nothing,
      prerenderedContent = Core.Nothing,
      prerenderedOutOfCourtDisputeSettlement = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON AccountIssue where
  parseJSON =
    Core.withObject
      "AccountIssue"
      ( \o ->
          AccountIssue
            Core.<$> (o Core..:? "actions")
            Core.<*> (o Core..:? "impact")
            Core.<*> (o Core..:? "prerenderedContent")
            Core.<*> (o Core..:? "prerenderedOutOfCourtDisputeSettlement")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON AccountIssue where
  toJSON AccountIssue {..} =
    Core.object
      ( Core.catMaybes
          [ ("actions" Core..=) Core.<$> actions,
            ("impact" Core..=) Core.<$> impact,
            ("prerenderedContent" Core..=) Core.<$> prerenderedContent,
            ("prerenderedOutOfCourtDisputeSettlement" Core..=)
              Core.<$> prerenderedOutOfCourtDisputeSettlement,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | Overall impact of the issue.
--
-- /See:/ 'newAccountIssueImpact' smart constructor.
data AccountIssueImpact = AccountIssueImpact
  { -- | Detailed impact breakdown. Explains the types of restriction the issue has in different shopping destinations and territory. If present, it should be rendered to the merchant. Can be shown as a mouse over dropdown or a dialog. Each breakdown item represents a group of regions with the same impact details.
    breakdowns :: (Core.Maybe [Breakdown]),
    -- | Optional. Message summarizing the overall impact of the issue. If present, it should be rendered to the merchant. For example: \"Disapproves 90k offers in 25 countries\"
    message :: (Core.Maybe Core.Text),
    -- | The severity of the issue.
    severity :: (Core.Maybe AccountIssueImpact_Severity)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountIssueImpact' with the minimum fields required to make a request.
newAccountIssueImpact ::
  AccountIssueImpact
newAccountIssueImpact =
  AccountIssueImpact
    { breakdowns = Core.Nothing,
      message = Core.Nothing,
      severity = Core.Nothing
    }

instance Core.FromJSON AccountIssueImpact where
  parseJSON =
    Core.withObject
      "AccountIssueImpact"
      ( \o ->
          AccountIssueImpact
            Core.<$> (o Core..:? "breakdowns")
            Core.<*> (o Core..:? "message")
            Core.<*> (o Core..:? "severity")
      )

instance Core.ToJSON AccountIssueImpact where
  toJSON AccountIssueImpact {..} =
    Core.object
      ( Core.catMaybes
          [ ("breakdowns" Core..=) Core.<$> breakdowns,
            ("message" Core..=) Core.<$> message,
            ("severity" Core..=) Core.<$> severity
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
            Core.<*> (o Core..:? "effectiveAllowStrictAvailabilityUpdates")
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
    { allowAvailabilityUpdates =
        Core.Nothing,
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
            ("allowConditionUpdates" Core..=) Core.<$> allowConditionUpdates,
            ("allowPriceUpdates" Core..=) Core.<$> allowPriceUpdates,
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
            Core.<$> (o Core..:? "accountId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "labelId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "labelType")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON AccountLabel where
  toJSON AccountLabel {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.. Core.AsText Core.<$> accountId,
            ("description" Core..=) Core.<$> description,
            ("labelId" Core..=) Core.. Core.AsText Core.<$> labelId,
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
            Core.<$> (o Core..:? "carrierAccountId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "carrierAccountName")
            Core.<*> (o Core..:? "carrierAccountNumber")
            Core.<*> (o Core..:? "carrierCode")
      )

instance Core.ToJSON AccountReturnCarrier where
  toJSON AccountReturnCarrier {..} =
    Core.object
      ( Core.catMaybes
          [ ("carrierAccountId" Core..=)
              Core.. Core.AsText
              Core.<$> carrierAccountId,
            ("carrierAccountName" Core..=) Core.<$> carrierAccountName,
            ("carrierAccountNumber" Core..=) Core.<$> carrierAccountNumber,
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
  AccountShippingImprovements
    { allowShippingImprovements =
        Core.Nothing
    }

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
            Core.<*> (o Core..:? "accountLevelIssues")
            Core.<*> (o Core..:? "accountManagement")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "products")
            Core.<*> (o Core..:? "websiteClaimed")
      )

instance Core.ToJSON AccountStatus where
  toJSON AccountStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.<$> accountId,
            ("accountLevelIssues" Core..=) Core.<$> accountLevelIssues,
            ("accountManagement" Core..=) Core.<$> accountManagement,
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
            Core.<*> (o Core..:? "numItems" Core.<&> Core.fmap Core.fromAsText)
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
            ("numItems" Core..=) Core.. Core.AsText Core.<$> numItems,
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
            Core.<*> (o Core..:? "itemLevelIssues")
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
            Core.<$> (o Core..:? "active" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "disapproved" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "expiring" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "pending" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON AccountStatusStatistics where
  toJSON AccountStatusStatistics {..} =
    Core.object
      ( Core.catMaybes
          [ ("active" Core..=) Core.. Core.AsText Core.<$> active,
            ("disapproved" Core..=) Core.. Core.AsText Core.<$> disapproved,
            ("expiring" Core..=) Core.. Core.AsText Core.<$> expiring,
            ("pending" Core..=) Core.. Core.AsText Core.<$> pending
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
            Core.<$> (o Core..:? "accountId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "rules")
      )

instance Core.ToJSON AccountTax where
  toJSON AccountTax {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.. Core.AsText Core.<$> accountId,
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
            Core.<*> (o Core..:? "locationId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "ratePercent")
            Core.<*> (o Core..:? "shippingTaxed")
            Core.<*> (o Core..:? "useGlobalRate")
      )

instance Core.ToJSON AccountTaxTaxRule where
  toJSON AccountTaxTaxRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("country" Core..=) Core.<$> country,
            ("locationId" Core..=) Core.. Core.AsText Core.<$> locationId,
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
    paymentsManager :: (Core.Maybe Core.Bool),
    -- | Whether user is a reporting manager. This role is equivalent to the Performance and insights role in Merchant Center.
    reportingManager :: (Core.Maybe Core.Bool)
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
      paymentsManager = Core.Nothing,
      reportingManager = Core.Nothing
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
            Core.<*> (o Core..:? "reportingManager")
      )

instance Core.ToJSON AccountUser where
  toJSON AccountUser {..} =
    Core.object
      ( Core.catMaybes
          [ ("admin" Core..=) Core.<$> admin,
            ("emailAddress" Core..=) Core.<$> emailAddress,
            ("orderManager" Core..=) Core.<$> orderManager,
            ("paymentsAnalyst" Core..=) Core.<$> paymentsAnalyst,
            ("paymentsManager" Core..=) Core.<$> paymentsManager,
            ("reportingManager" Core..=) Core.<$> reportingManager
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
  AccountYouTubeChannelLink
    { channelId = Core.Nothing,
      status = Core.Nothing
    }

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
            Core.<$> (o Core..:? "accountIdentifiers")
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON AccountsAuthInfoResponse where
  toJSON AccountsAuthInfoResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountIdentifiers" Core..=) Core.<$> accountIdentifiers,
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
      (\o -> AccountsClaimWebsiteResponse Core.<$> (o Core..:? "kind"))

instance Core.ToJSON AccountsClaimWebsiteResponse where
  toJSON AccountsClaimWebsiteResponse {..} =
    Core.object (Core.catMaybes [("kind" Core..=) Core.<$> kind])

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
      (\o -> AccountsCustomBatchRequest Core.<$> (o Core..:? "entries"))

instance Core.ToJSON AccountsCustomBatchRequest where
  toJSON AccountsCustomBatchRequest {..} =
    Core.object
      (Core.catMaybes [("entries" Core..=) Core.<$> entries])

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

instance Core.FromJSON AccountsCustomBatchRequestEntry where
  parseJSON =
    Core.withObject
      "AccountsCustomBatchRequestEntry"
      ( \o ->
          AccountsCustomBatchRequestEntry
            Core.<$> (o Core..:? "account")
            Core.<*> (o Core..:? "accountId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "batchId")
            Core.<*> (o Core..:? "force")
            Core.<*> ( o
                         Core..:? "labelIds"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
            Core.<*> (o Core..:? "linkRequest")
            Core.<*> (o Core..:? "merchantId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "method")
            Core.<*> (o Core..:? "overwrite")
            Core.<*> (o Core..:? "view")
      )

instance Core.ToJSON AccountsCustomBatchRequestEntry where
  toJSON AccountsCustomBatchRequestEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("account" Core..=) Core.<$> account,
            ("accountId" Core..=) Core.. Core.AsText Core.<$> accountId,
            ("batchId" Core..=) Core.<$> batchId,
            ("force" Core..=) Core.<$> force,
            ("labelIds" Core..=)
              Core.. Core.fmap Core.AsText
              Core.<$> labelIds,
            ("linkRequest" Core..=) Core.<$> linkRequest,
            ("merchantId" Core..=) Core.. Core.AsText Core.<$> merchantId,
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
    -- | Type of the link between the two accounts. Acceptable values are: - \"@channelPartner@\" - \"@eCommercePlatform@\" - \"@paymentServiceProvider@\" - \"@localProductManager@\"
    linkType :: (Core.Maybe Core.Text),
    -- | The ID of the linked account.
    linkedAccountId :: (Core.Maybe Core.Text),
    -- | Provided services. Acceptable values are: - \"@shoppingAdsProductManagement@\" - \"@shoppingActionsProductManagement@\" - \"@shoppingActionsOrderManagement@\" - \"@paymentProcessing@\" - \"@localProductManagement@\"
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

instance Core.FromJSON AccountsCustomBatchRequestEntryLinkRequest where
  parseJSON =
    Core.withObject
      "AccountsCustomBatchRequestEntryLinkRequest"
      ( \o ->
          AccountsCustomBatchRequestEntryLinkRequest
            Core.<$> (o Core..:? "action")
            Core.<*> (o Core..:? "linkType")
            Core.<*> (o Core..:? "linkedAccountId")
            Core.<*> (o Core..:? "services")
      )

instance Core.ToJSON AccountsCustomBatchRequestEntryLinkRequest where
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
  AccountsCustomBatchResponse
    { entries = Core.Nothing,
      kind = Core.Nothing
    }

instance Core.FromJSON AccountsCustomBatchResponse where
  parseJSON =
    Core.withObject
      "AccountsCustomBatchResponse"
      ( \o ->
          AccountsCustomBatchResponse
            Core.<$> (o Core..:? "entries")
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
    -- | A list of errors for failed custombatch entries. /Note:/ Schema errors fail the whole request.
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

instance Core.FromJSON AccountsCustomBatchResponseEntry where
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
            Core.<*> (o Core..:? "services")
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
      (\o -> AccountsLinkResponse Core.<$> (o Core..:? "kind"))

instance Core.ToJSON AccountsLinkResponse where
  toJSON AccountsLinkResponse {..} =
    Core.object (Core.catMaybes [("kind" Core..=) Core.<$> kind])

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
            Core.<*> (o Core..:? "links")
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
            Core.<*> (o Core..:? "resources")
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
            Core.<$> ( o
                         Core..:? "labelIds"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
      )

instance Core.ToJSON AccountsUpdateLabelsRequest where
  toJSON AccountsUpdateLabelsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("labelIds" Core..=)
              Core.. Core.fmap Core.AsText
              Core.<$> labelIds
          ]
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
      (\o -> AccountsUpdateLabelsResponse Core.<$> (o Core..:? "kind"))

instance Core.ToJSON AccountsUpdateLabelsResponse where
  toJSON AccountsUpdateLabelsResponse {..} =
    Core.object (Core.catMaybes [("kind" Core..=) Core.<$> kind])

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

instance Core.FromJSON AccountstatusesCustomBatchRequest where
  parseJSON =
    Core.withObject
      "AccountstatusesCustomBatchRequest"
      ( \o ->
          AccountstatusesCustomBatchRequest Core.<$> (o Core..:? "entries")
      )

instance Core.ToJSON AccountstatusesCustomBatchRequest where
  toJSON AccountstatusesCustomBatchRequest {..} =
    Core.object
      (Core.catMaybes [("entries" Core..=) Core.<$> entries])

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

instance Core.FromJSON AccountstatusesCustomBatchRequestEntry where
  parseJSON =
    Core.withObject
      "AccountstatusesCustomBatchRequestEntry"
      ( \o ->
          AccountstatusesCustomBatchRequestEntry
            Core.<$> (o Core..:? "accountId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "batchId")
            Core.<*> (o Core..:? "destinations")
            Core.<*> (o Core..:? "merchantId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "method")
      )

instance Core.ToJSON AccountstatusesCustomBatchRequestEntry where
  toJSON AccountstatusesCustomBatchRequestEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.. Core.AsText Core.<$> accountId,
            ("batchId" Core..=) Core.<$> batchId,
            ("destinations" Core..=) Core.<$> destinations,
            ("merchantId" Core..=) Core.. Core.AsText Core.<$> merchantId,
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

instance Core.FromJSON AccountstatusesCustomBatchResponse where
  parseJSON =
    Core.withObject
      "AccountstatusesCustomBatchResponse"
      ( \o ->
          AccountstatusesCustomBatchResponse
            Core.<$> (o Core..:? "entries")
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON AccountstatusesCustomBatchResponse where
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
    -- | A list of errors for failed custombatch entries. /Note:/ Schema errors fail the whole request.
    errors :: (Core.Maybe Errors)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountstatusesCustomBatchResponseEntry' with the minimum fields required to make a request.
newAccountstatusesCustomBatchResponseEntry ::
  AccountstatusesCustomBatchResponseEntry
newAccountstatusesCustomBatchResponseEntry =
  AccountstatusesCustomBatchResponseEntry
    { accountStatus =
        Core.Nothing,
      batchId = Core.Nothing,
      errors = Core.Nothing
    }

instance Core.FromJSON AccountstatusesCustomBatchResponseEntry where
  parseJSON =
    Core.withObject
      "AccountstatusesCustomBatchResponseEntry"
      ( \o ->
          AccountstatusesCustomBatchResponseEntry
            Core.<$> (o Core..:? "accountStatus")
            Core.<*> (o Core..:? "batchId")
            Core.<*> (o Core..:? "errors")
      )

instance Core.ToJSON AccountstatusesCustomBatchResponseEntry where
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
            Core.<*> (o Core..:? "resources")
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
          AccounttaxCustomBatchRequest Core.<$> (o Core..:? "entries")
      )

instance Core.ToJSON AccounttaxCustomBatchRequest where
  toJSON AccounttaxCustomBatchRequest {..} =
    Core.object
      (Core.catMaybes [("entries" Core..=) Core.<$> entries])

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

instance Core.FromJSON AccounttaxCustomBatchRequestEntry where
  parseJSON =
    Core.withObject
      "AccounttaxCustomBatchRequestEntry"
      ( \o ->
          AccounttaxCustomBatchRequestEntry
            Core.<$> (o Core..:? "accountId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "accountTax")
            Core.<*> (o Core..:? "batchId")
            Core.<*> (o Core..:? "merchantId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "method")
      )

instance Core.ToJSON AccounttaxCustomBatchRequestEntry where
  toJSON AccounttaxCustomBatchRequestEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.. Core.AsText Core.<$> accountId,
            ("accountTax" Core..=) Core.<$> accountTax,
            ("batchId" Core..=) Core.<$> batchId,
            ("merchantId" Core..=) Core.. Core.AsText Core.<$> merchantId,
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
  AccounttaxCustomBatchResponse
    { entries = Core.Nothing,
      kind = Core.Nothing
    }

instance Core.FromJSON AccounttaxCustomBatchResponse where
  parseJSON =
    Core.withObject
      "AccounttaxCustomBatchResponse"
      ( \o ->
          AccounttaxCustomBatchResponse
            Core.<$> (o Core..:? "entries")
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
    -- | A list of errors for failed custombatch entries. /Note:/ Schema errors fail the whole request.
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

instance Core.FromJSON AccounttaxCustomBatchResponseEntry where
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

instance Core.ToJSON AccounttaxCustomBatchResponseEntry where
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
            Core.<*> (o Core..:? "resources")
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

-- | An actionable step that can be executed to solve the issue.
--
-- /See:/ 'newAction' smart constructor.
data Action = Action
  { -- | Action implemented and performed in (your) third-party application. The application should point the merchant to the place, where they can access the corresponding functionality or provide instructions, if the specific functionality is not available.
    builtinSimpleAction :: (Core.Maybe BuiltInSimpleAction),
    -- | Action implemented and performed in (your) third-party application. The application needs to show an additional content and input form to the merchant as specified for given action. They can trigger the action only when they provided all required inputs.
    builtinUserInputAction :: (Core.Maybe BuiltInUserInputAction),
    -- | Label of the action button.
    buttonLabel :: (Core.Maybe Core.Text),
    -- | Action that is implemented and performed outside of (your) third-party application. The application needs to redirect the merchant to the external location where they can perform the action.
    externalAction :: (Core.Maybe ExternalAction),
    -- | Controlling whether the button is active or disabled. The value is \'false\' when the action was already requested or is not available. If the action is not available then a reason will be present. If (your) third-party application shows a disabled button for action that is not available, then it should also show reasons.
    isAvailable :: (Core.Maybe Core.Bool),
    -- | List of reasons why the action is not available. The list of reasons is empty if the action is available. If there is only one reason, it can be displayed next to the disabled button. If there are more reasons, all of them should be displayed, for example in a pop-up dialog.
    reasons :: (Core.Maybe [ActionReason])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Action' with the minimum fields required to make a request.
newAction ::
  Action
newAction =
  Action
    { builtinSimpleAction = Core.Nothing,
      builtinUserInputAction = Core.Nothing,
      buttonLabel = Core.Nothing,
      externalAction = Core.Nothing,
      isAvailable = Core.Nothing,
      reasons = Core.Nothing
    }

instance Core.FromJSON Action where
  parseJSON =
    Core.withObject
      "Action"
      ( \o ->
          Action
            Core.<$> (o Core..:? "builtinSimpleAction")
            Core.<*> (o Core..:? "builtinUserInputAction")
            Core.<*> (o Core..:? "buttonLabel")
            Core.<*> (o Core..:? "externalAction")
            Core.<*> (o Core..:? "isAvailable")
            Core.<*> (o Core..:? "reasons")
      )

instance Core.ToJSON Action where
  toJSON Action {..} =
    Core.object
      ( Core.catMaybes
          [ ("builtinSimpleAction" Core..=) Core.<$> builtinSimpleAction,
            ("builtinUserInputAction" Core..=) Core.<$> builtinUserInputAction,
            ("buttonLabel" Core..=) Core.<$> buttonLabel,
            ("externalAction" Core..=) Core.<$> externalAction,
            ("isAvailable" Core..=) Core.<$> isAvailable,
            ("reasons" Core..=) Core.<$> reasons
          ]
      )

-- | Flow that can be selected for an action. When merchant selects a flow, application should open a dialog with more information and input form.
--
-- /See:/ 'newActionFlow' smart constructor.
data ActionFlow = ActionFlow
  { -- | Label for the button to trigger the action from the action dialog. For example: \"Request review\"
    dialogButtonLabel :: (Core.Maybe Core.Text),
    -- | Important message to be highlighted in the request dialog. For example: \"You can only request a review for disagreeing with this issue once. If it\'s not approved, you\'ll need to fix the issue and wait a few days before you can request another review.\"
    dialogCallout :: (Core.Maybe Callout),
    -- | Message displayed in the request dialog. For example: \"Make sure you\'ve fixed all your country-specific issues. If not, you may have to wait 7 days to request another review\". There may be an more information to be shown in a tooltip.
    dialogMessage :: (Core.Maybe TextWithTooltip),
    -- | Title of the request dialog. For example: \"Before you request a review\"
    dialogTitle :: (Core.Maybe Core.Text),
    -- | Not for display but need to be sent back for the selected action flow.
    id :: (Core.Maybe Core.Text),
    -- | A list of input fields.
    inputs :: (Core.Maybe [InputField]),
    -- | Text value describing the intent for the action flow. It can be used as an input label if merchant needs to pick one of multiple flows. For example: \"I disagree with the issue\"
    label :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ActionFlow' with the minimum fields required to make a request.
newActionFlow ::
  ActionFlow
newActionFlow =
  ActionFlow
    { dialogButtonLabel = Core.Nothing,
      dialogCallout = Core.Nothing,
      dialogMessage = Core.Nothing,
      dialogTitle = Core.Nothing,
      id = Core.Nothing,
      inputs = Core.Nothing,
      label = Core.Nothing
    }

instance Core.FromJSON ActionFlow where
  parseJSON =
    Core.withObject
      "ActionFlow"
      ( \o ->
          ActionFlow
            Core.<$> (o Core..:? "dialogButtonLabel")
            Core.<*> (o Core..:? "dialogCallout")
            Core.<*> (o Core..:? "dialogMessage")
            Core.<*> (o Core..:? "dialogTitle")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "inputs")
            Core.<*> (o Core..:? "label")
      )

instance Core.ToJSON ActionFlow where
  toJSON ActionFlow {..} =
    Core.object
      ( Core.catMaybes
          [ ("dialogButtonLabel" Core..=) Core.<$> dialogButtonLabel,
            ("dialogCallout" Core..=) Core.<$> dialogCallout,
            ("dialogMessage" Core..=) Core.<$> dialogMessage,
            ("dialogTitle" Core..=) Core.<$> dialogTitle,
            ("id" Core..=) Core.<$> id,
            ("inputs" Core..=) Core.<$> inputs,
            ("label" Core..=) Core.<$> label
          ]
      )

-- | Input provided by the merchant.
--
-- /See:/ 'newActionInput' smart constructor.
data ActionInput = ActionInput
  { -- | Required. Id of the selected action flow.
    actionFlowId :: (Core.Maybe Core.Text),
    -- | Required. Values for input fields.
    inputValues :: (Core.Maybe [InputValue])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ActionInput' with the minimum fields required to make a request.
newActionInput ::
  ActionInput
newActionInput =
  ActionInput
    { actionFlowId = Core.Nothing,
      inputValues = Core.Nothing
    }

instance Core.FromJSON ActionInput where
  parseJSON =
    Core.withObject
      "ActionInput"
      ( \o ->
          ActionInput
            Core.<$> (o Core..:? "actionFlowId")
            Core.<*> (o Core..:? "inputValues")
      )

instance Core.ToJSON ActionInput where
  toJSON ActionInput {..} =
    Core.object
      ( Core.catMaybes
          [ ("actionFlowId" Core..=) Core.<$> actionFlowId,
            ("inputValues" Core..=) Core.<$> inputValues
          ]
      )

-- | A single reason why the action is not available.
--
-- /See:/ 'newActionReason' smart constructor.
data ActionReason = ActionReason
  { -- | Optional. An action that needs to be performed to solve the problem represented by this reason. This action will always be available. Should be rendered as a link or button next to the summarizing message. For example, the review may be available only once merchant configure all required attributes. In such a situation this action can be a link to the form, where they can fill the missing attribute to unblock the main action.
    action :: (Core.Maybe Action),
    -- | Detailed explanation of the reason. Should be displayed as a hint if present.
    detail :: (Core.Maybe Core.Text),
    -- | Messages summarizing the reason, why the action is not available. For example: \"Review requested on Jan 03. Review requests can take a few days to complete.\"
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ActionReason' with the minimum fields required to make a request.
newActionReason ::
  ActionReason
newActionReason =
  ActionReason
    { action = Core.Nothing,
      detail = Core.Nothing,
      message = Core.Nothing
    }

instance Core.FromJSON ActionReason where
  parseJSON =
    Core.withObject
      "ActionReason"
      ( \o ->
          ActionReason
            Core.<$> (o Core..:? "action")
            Core.<*> (o Core..:? "detail")
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON ActionReason where
  toJSON ActionReason {..} =
    Core.object
      ( Core.catMaybes
          [ ("action" Core..=) Core.<$> action,
            ("detail" Core..=) Core.<$> detail,
            ("message" Core..=) Core.<$> message
          ]
      )

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
    -- | Street-level part of the address. Use @\\n@ to add a second line.
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
          [ ("administrativeArea" Core..=) Core.<$> administrativeArea,
            ("city" Core..=) Core.<$> city,
            ("country" Core..=) Core.<$> country,
            ("postalCode" Core..=) Core.<$> postalCode,
            ("streetAddress" Core..=) Core.<$> streetAddress
          ]
      )

-- | The Alternate Dispute Resolution (ADR) that may be available to merchants in some regions. If present, the link should be shown on the same page as the list of issues.
--
-- /See:/ 'newAlternateDisputeResolution' smart constructor.
data AlternateDisputeResolution = AlternateDisputeResolution
  { -- | The label for the alternate dispute resolution link.
    label :: (Core.Maybe Core.Text),
    -- | The URL pointing to a page, where merchant can request alternative dispute resolution with an <https://support.google.com/european-union-digital-services-act-redress-options/answer/13535501 external body>.
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AlternateDisputeResolution' with the minimum fields required to make a request.
newAlternateDisputeResolution ::
  AlternateDisputeResolution
newAlternateDisputeResolution =
  AlternateDisputeResolution
    { label = Core.Nothing,
      uri = Core.Nothing
    }

instance Core.FromJSON AlternateDisputeResolution where
  parseJSON =
    Core.withObject
      "AlternateDisputeResolution"
      ( \o ->
          AlternateDisputeResolution
            Core.<$> (o Core..:? "label")
            Core.<*> (o Core..:? "uri")
      )

instance Core.ToJSON AlternateDisputeResolution where
  toJSON AlternateDisputeResolution {..} =
    Core.object
      ( Core.catMaybes
          [("label" Core..=) Core.<$> label, ("uri" Core..=) Core.<$> uri]
      )

-- | Represents attribution settings for conversion sources receiving pre-attribution data.
--
-- /See:/ 'newAttributionSettings' smart constructor.
data AttributionSettings = AttributionSettings
  { -- | Required. Lookback windows (in days) used for attribution in this source. Supported values are 7, 30, 40.
    attributionLookbackWindowInDays :: (Core.Maybe Core.Int32),
    attributionModel :: (Core.Maybe AttributionSettings_AttributionModel),
    -- | Immutable. Unordered list. List of different conversion types a conversion event can be classified as. A standard \"purchase\" type will be automatically created if this list is empty at creation time.
    conversionType :: (Core.Maybe [AttributionSettingsConversionType])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AttributionSettings' with the minimum fields required to make a request.
newAttributionSettings ::
  AttributionSettings
newAttributionSettings =
  AttributionSettings
    { attributionLookbackWindowInDays =
        Core.Nothing,
      attributionModel = Core.Nothing,
      conversionType = Core.Nothing
    }

instance Core.FromJSON AttributionSettings where
  parseJSON =
    Core.withObject
      "AttributionSettings"
      ( \o ->
          AttributionSettings
            Core.<$> (o Core..:? "attributionLookbackWindowInDays")
            Core.<*> (o Core..:? "attributionModel")
            Core.<*> (o Core..:? "conversionType")
      )

instance Core.ToJSON AttributionSettings where
  toJSON AttributionSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("attributionLookbackWindowInDays" Core..=)
              Core.<$> attributionLookbackWindowInDays,
            ("attributionModel" Core..=) Core.<$> attributionModel,
            ("conversionType" Core..=) Core.<$> conversionType
          ]
      )

-- | Message representing a types of conversion events
--
-- /See:/ 'newAttributionSettingsConversionType' smart constructor.
data AttributionSettingsConversionType = AttributionSettingsConversionType
  { -- | Output only. Option indicating if the type should be included in Merchant Center reporting.
    includeInReporting :: (Core.Maybe Core.Bool),
    -- | Output only. Conversion event name, as it\'ll be reported by the client.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AttributionSettingsConversionType' with the minimum fields required to make a request.
newAttributionSettingsConversionType ::
  AttributionSettingsConversionType
newAttributionSettingsConversionType =
  AttributionSettingsConversionType
    { includeInReporting =
        Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON AttributionSettingsConversionType where
  parseJSON =
    Core.withObject
      "AttributionSettingsConversionType"
      ( \o ->
          AttributionSettingsConversionType
            Core.<$> (o Core..:? "includeInReporting")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON AttributionSettingsConversionType where
  toJSON AttributionSettingsConversionType {..} =
    Core.object
      ( Core.catMaybes
          [ ("includeInReporting" Core..=) Core.<$> includeInReporting,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Fields related to the <https://support.google.com/merchants/answer/9488679 Best sellers reports>.
--
-- /See:/ 'newBestSellers' smart constructor.
data BestSellers = BestSellers
  { -- | Google product category ID to calculate the ranking for, represented in <https://support.google.com/merchants/answer/6324436 Google\'s product taxonomy>. If a @WHERE@ condition on @best_sellers.category_id@ is not specified in the query, rankings for all top-level categories are returned.
    categoryId :: (Core.Maybe Core.Int64),
    -- | Country where the ranking is calculated. A @WHERE@ condition on @best_sellers.country_code@ is required in the query.
    countryCode :: (Core.Maybe Core.Text),
    -- | Popularity rank in the previous week or month.
    previousRank :: (Core.Maybe Core.Int64),
    -- | Estimated demand in relation to the item with the highest popularity rank in the same category and country in the previous week or month.
    previousRelativeDemand :: (Core.Maybe BestSellers_PreviousRelativeDemand),
    -- | Popularity on Shopping ads and free listings, in the selected category and country, based on the estimated number of units sold.
    rank :: (Core.Maybe Core.Int64),
    -- | Estimated demand in relation to the item with the highest popularity rank in the same category and country.
    relativeDemand :: (Core.Maybe BestSellers_RelativeDemand),
    -- | Change in the estimated demand. Whether it rose, sank or remained flat.
    relativeDemandChange :: (Core.Maybe BestSellers_RelativeDemandChange),
    -- | Report date. The value of this field can only be one of the following: * The first day of the week (Monday) for weekly reports. * The first day of the month for monthly reports. If a @WHERE@ condition on @best_sellers.report_date@ is not specified in the query, the latest available weekly or monthly report is returned.
    reportDate :: (Core.Maybe Date),
    -- | Granularity of the report. The ranking can be done over a week or a month timeframe. A @WHERE@ condition on @best_sellers.report_granularity@ is required in the query.
    reportGranularity :: (Core.Maybe BestSellers_ReportGranularity)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BestSellers' with the minimum fields required to make a request.
newBestSellers ::
  BestSellers
newBestSellers =
  BestSellers
    { categoryId = Core.Nothing,
      countryCode = Core.Nothing,
      previousRank = Core.Nothing,
      previousRelativeDemand = Core.Nothing,
      rank = Core.Nothing,
      relativeDemand = Core.Nothing,
      relativeDemandChange = Core.Nothing,
      reportDate = Core.Nothing,
      reportGranularity = Core.Nothing
    }

instance Core.FromJSON BestSellers where
  parseJSON =
    Core.withObject
      "BestSellers"
      ( \o ->
          BestSellers
            Core.<$> (o Core..:? "categoryId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "countryCode")
            Core.<*> (o Core..:? "previousRank" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "previousRelativeDemand")
            Core.<*> (o Core..:? "rank" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "relativeDemand")
            Core.<*> (o Core..:? "relativeDemandChange")
            Core.<*> (o Core..:? "reportDate")
            Core.<*> (o Core..:? "reportGranularity")
      )

instance Core.ToJSON BestSellers where
  toJSON BestSellers {..} =
    Core.object
      ( Core.catMaybes
          [ ("categoryId" Core..=) Core.. Core.AsText Core.<$> categoryId,
            ("countryCode" Core..=) Core.<$> countryCode,
            ("previousRank" Core..=) Core.. Core.AsText Core.<$> previousRank,
            ("previousRelativeDemand" Core..=) Core.<$> previousRelativeDemand,
            ("rank" Core..=) Core.. Core.AsText Core.<$> rank,
            ("relativeDemand" Core..=) Core.<$> relativeDemand,
            ("relativeDemandChange" Core..=) Core.<$> relativeDemandChange,
            ("reportDate" Core..=) Core.<$> reportDate,
            ("reportGranularity" Core..=) Core.<$> reportGranularity
          ]
      )

-- | Brand fields. Values are only set for fields requested explicitly in the request\'s search query.
--
-- /See:/ 'newBrand' smart constructor.
newtype Brand = Brand
  { -- | Name of the brand.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Brand' with the minimum fields required to make a request.
newBrand ::
  Brand
newBrand = Brand {name = Core.Nothing}

instance Core.FromJSON Brand where
  parseJSON =
    Core.withObject
      "Brand"
      (\o -> Brand Core.<$> (o Core..:? "name"))

instance Core.ToJSON Brand where
  toJSON Brand {..} =
    Core.object (Core.catMaybes [("name" Core..=) Core.<$> name])

-- | A detailed impact breakdown for a group of regions where the impact of the issue on different shopping destinations is the same.
--
-- /See:/ 'newBreakdown' smart constructor.
data Breakdown = Breakdown
  { -- | Human readable, localized description of issue\'s effect on different targets. Should be rendered as a list. For example: * \"Products not showing in ads\" * \"Products not showing organically\"
    details :: (Core.Maybe [Core.Text]),
    -- | Lists of regions. Should be rendered as a title for this group of details. The full list should be shown to merchant. If the list is too long, it is recommended to make it expandable.
    regions :: (Core.Maybe [BreakdownRegion])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Breakdown' with the minimum fields required to make a request.
newBreakdown ::
  Breakdown
newBreakdown =
  Breakdown {details = Core.Nothing, regions = Core.Nothing}

instance Core.FromJSON Breakdown where
  parseJSON =
    Core.withObject
      "Breakdown"
      ( \o ->
          Breakdown
            Core.<$> (o Core..:? "details")
            Core.<*> (o Core..:? "regions")
      )

instance Core.ToJSON Breakdown where
  toJSON Breakdown {..} =
    Core.object
      ( Core.catMaybes
          [ ("details" Core..=) Core.<$> details,
            ("regions" Core..=) Core.<$> regions
          ]
      )

-- | Region with code and localized name.
--
-- /See:/ 'newBreakdownRegion' smart constructor.
data BreakdownRegion = BreakdownRegion
  { -- | The [CLDR territory code] (http:\/\/www.unicode.org\/repos\/cldr\/tags\/latest\/common\/main\/en.xml)
    code :: (Core.Maybe Core.Text),
    -- | The localized name of the region. For region with code=\'001\' the value is \'All countries\' or the equivalent in other languages.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BreakdownRegion' with the minimum fields required to make a request.
newBreakdownRegion ::
  BreakdownRegion
newBreakdownRegion =
  BreakdownRegion {code = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON BreakdownRegion where
  parseJSON =
    Core.withObject
      "BreakdownRegion"
      ( \o ->
          BreakdownRegion
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON BreakdownRegion where
  toJSON BreakdownRegion {..} =
    Core.object
      ( Core.catMaybes
          [("code" Core..=) Core.<$> code, ("name" Core..=) Core.<$> name]
      )

-- | Action that is implemented and performed in (your) third-party application. Represents various functionality that is expected to be available to merchant and will help them with resolving the issue. The application should point the merchant to the place, where they can access the corresponding functionality. If the functionality is not supported, it is recommended to explain the situation to merchant and provide them with instructions how to solve the issue.
--
-- /See:/ 'newBuiltInSimpleAction' smart constructor.
data BuiltInSimpleAction = BuiltInSimpleAction
  { -- | Long text from an external source that should be available to the merchant. Present when the type is @SHOW_ADDITIONAL_CONTENT@.
    additionalContent :: (Core.Maybe BuiltInSimpleActionAdditionalContent),
    -- | The attribute that needs to be updated. Present when the type is @EDIT_ITEM_ATTRIBUTE@. This field contains a code for attribute, represented in snake_case. You can find a list of product\'s attributes, with their codes <https://support.google.com/merchants/answer/7052112 here>.
    attributeCode :: (Core.Maybe Core.Text),
    -- | The type of action that represents a functionality that is expected to be available in third-party application.
    type' :: (Core.Maybe BuiltInSimpleAction_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuiltInSimpleAction' with the minimum fields required to make a request.
newBuiltInSimpleAction ::
  BuiltInSimpleAction
newBuiltInSimpleAction =
  BuiltInSimpleAction
    { additionalContent = Core.Nothing,
      attributeCode = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON BuiltInSimpleAction where
  parseJSON =
    Core.withObject
      "BuiltInSimpleAction"
      ( \o ->
          BuiltInSimpleAction
            Core.<$> (o Core..:? "additionalContent")
            Core.<*> (o Core..:? "attributeCode")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON BuiltInSimpleAction where
  toJSON BuiltInSimpleAction {..} =
    Core.object
      ( Core.catMaybes
          [ ("additionalContent" Core..=) Core.<$> additionalContent,
            ("attributeCode" Core..=) Core.<$> attributeCode,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Long text from external source.
--
-- /See:/ 'newBuiltInSimpleActionAdditionalContent' smart constructor.
data BuiltInSimpleActionAdditionalContent = BuiltInSimpleActionAdditionalContent
  { -- | Long text organized into paragraphs.
    paragraphs :: (Core.Maybe [Core.Text]),
    -- | Title of the additional content;
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuiltInSimpleActionAdditionalContent' with the minimum fields required to make a request.
newBuiltInSimpleActionAdditionalContent ::
  BuiltInSimpleActionAdditionalContent
newBuiltInSimpleActionAdditionalContent =
  BuiltInSimpleActionAdditionalContent
    { paragraphs = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON BuiltInSimpleActionAdditionalContent where
  parseJSON =
    Core.withObject
      "BuiltInSimpleActionAdditionalContent"
      ( \o ->
          BuiltInSimpleActionAdditionalContent
            Core.<$> (o Core..:? "paragraphs")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON BuiltInSimpleActionAdditionalContent where
  toJSON BuiltInSimpleActionAdditionalContent {..} =
    Core.object
      ( Core.catMaybes
          [ ("paragraphs" Core..=) Core.<$> paragraphs,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | Action that is implemented and performed in (your) third-party application. The application needs to show an additional content and input form to the merchant. They can start the action only when they provided all required inputs. The application will request processing of the action by calling the <https://developers.google.com/shopping-content/reference/rest/v2.1/merchantsupport/triggeraction triggeraction method>.
--
-- /See:/ 'newBuiltInUserInputAction' smart constructor.
data BuiltInUserInputAction = BuiltInUserInputAction
  { -- | Internal details. Not for display but need to be sent back when triggering the action.
    actionContext :: (Core.Maybe Core.Text),
    -- | Actions may provide multiple different flows. Merchant selects one that fits best to their intent. Selecting the flow is the first step in user\'s interaction with the action. It affects what input fields will be available and required and also how the request will be processed.
    flows :: (Core.Maybe [ActionFlow])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuiltInUserInputAction' with the minimum fields required to make a request.
newBuiltInUserInputAction ::
  BuiltInUserInputAction
newBuiltInUserInputAction =
  BuiltInUserInputAction
    { actionContext = Core.Nothing,
      flows = Core.Nothing
    }

instance Core.FromJSON BuiltInUserInputAction where
  parseJSON =
    Core.withObject
      "BuiltInUserInputAction"
      ( \o ->
          BuiltInUserInputAction
            Core.<$> (o Core..:? "actionContext")
            Core.<*> (o Core..:? "flows")
      )

instance Core.ToJSON BuiltInUserInputAction where
  toJSON BuiltInUserInputAction {..} =
    Core.object
      ( Core.catMaybes
          [ ("actionContext" Core..=) Core.<$> actionContext,
            ("flows" Core..=) Core.<$> flows
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
newBusinessDayConfig =
  BusinessDayConfig {businessDays = Core.Nothing}

instance Core.FromJSON BusinessDayConfig where
  parseJSON =
    Core.withObject
      "BusinessDayConfig"
      (\o -> BusinessDayConfig Core.<$> (o Core..:? "businessDays"))

instance Core.ToJSON BusinessDayConfig where
  toJSON BusinessDayConfig {..} =
    Core.object
      (Core.catMaybes [("businessDays" Core..=) Core.<$> businessDays])

-- | An important message that should be highlighted. Usually displayed as a banner.
--
-- /See:/ 'newCallout' smart constructor.
data Callout = Callout
  { -- | A full message that needs to be shown to the merchant.
    fullMessage :: (Core.Maybe TextWithTooltip),
    -- | Can be used to render messages with different severity in different styles. Snippets off all types contain important information that should be displayed to merchants.
    styleHint :: (Core.Maybe Callout_StyleHint)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Callout' with the minimum fields required to make a request.
newCallout ::
  Callout
newCallout =
  Callout {fullMessage = Core.Nothing, styleHint = Core.Nothing}

instance Core.FromJSON Callout where
  parseJSON =
    Core.withObject
      "Callout"
      ( \o ->
          Callout
            Core.<$> (o Core..:? "fullMessage")
            Core.<*> (o Core..:? "styleHint")
      )

instance Core.ToJSON Callout where
  toJSON Callout {..} =
    Core.object
      ( Core.catMaybes
          [ ("fullMessage" Core..=) Core.<$> fullMessage,
            ("styleHint" Core..=) Core.<$> styleHint
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
            ("originPostalCode" Core..=) Core.<$> originPostalCode,
            ("percentageAdjustment" Core..=) Core.<$> percentageAdjustment
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
            Core.<*> (o Core..:? "eddServices")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "services")
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

-- | @CheckoutSettings@ for a specific merchant ID.
--
-- /See:/ 'newCheckoutSettings' smart constructor.
data CheckoutSettings = CheckoutSettings
  { -- | Output only. The effective value of enrollment state for a given merchant ID. If account level settings are present then this value will be a copy of the account level settings. Otherwise, it will have the value of the parent account.
    effectiveEnrollmentState :: (Core.Maybe CheckoutSettings_EffectiveEnrollmentState),
    -- | Output only. The effective value of review state for a given merchant ID. If account level settings are present then this value will be a copy of the account level settings. Otherwise, it will have the value of the parent account.
    effectiveReviewState :: (Core.Maybe CheckoutSettings_EffectiveReviewState),
    -- | The effective value of @url_settings@ for a given merchant ID. If account level settings are present then this value will be a copy of the account level settings. Otherwise, it will have the value of the parent account.
    effectiveUriSettings :: (Core.Maybe UrlSettings),
    -- | Output only. Reflects the merchant enrollment state in @Checkout@ feature.
    enrollmentState :: (Core.Maybe CheckoutSettings_EnrollmentState),
    -- | Required. The ID of the account.
    merchantId :: (Core.Maybe Core.Int64),
    -- | Output only. Reflects the merchant review state in @Checkout@ feature. This is set based on the data quality reviews of the URL provided by the merchant. A merchant with enrollment state as @ENROLLED@ can be in the following review states: @IN_REVIEW@, @APPROVED@ or @DISAPPROVED@. A merchant must be in an enrollment_state of @ENROLLED@ before a review can begin for the merchant.
    reviewState :: (Core.Maybe CheckoutSettings_ReviewState),
    -- | URL settings for cart or checkout URL.
    uriSettings :: (Core.Maybe UrlSettings)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CheckoutSettings' with the minimum fields required to make a request.
newCheckoutSettings ::
  CheckoutSettings
newCheckoutSettings =
  CheckoutSettings
    { effectiveEnrollmentState = Core.Nothing,
      effectiveReviewState = Core.Nothing,
      effectiveUriSettings = Core.Nothing,
      enrollmentState = Core.Nothing,
      merchantId = Core.Nothing,
      reviewState = Core.Nothing,
      uriSettings = Core.Nothing
    }

instance Core.FromJSON CheckoutSettings where
  parseJSON =
    Core.withObject
      "CheckoutSettings"
      ( \o ->
          CheckoutSettings
            Core.<$> (o Core..:? "effectiveEnrollmentState")
            Core.<*> (o Core..:? "effectiveReviewState")
            Core.<*> (o Core..:? "effectiveUriSettings")
            Core.<*> (o Core..:? "enrollmentState")
            Core.<*> (o Core..:? "merchantId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "reviewState")
            Core.<*> (o Core..:? "uriSettings")
      )

instance Core.ToJSON CheckoutSettings where
  toJSON CheckoutSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("effectiveEnrollmentState" Core..=)
              Core.<$> effectiveEnrollmentState,
            ("effectiveReviewState" Core..=) Core.<$> effectiveReviewState,
            ("effectiveUriSettings" Core..=) Core.<$> effectiveUriSettings,
            ("enrollmentState" Core..=) Core.<$> enrollmentState,
            ("merchantId" Core..=) Core.. Core.AsText Core.<$> merchantId,
            ("reviewState" Core..=) Core.<$> reviewState,
            ("uriSettings" Core..=) Core.<$> uriSettings
          ]
      )

-- | Product property for the Cloud Retail API. For example, properties for a TV product could be \"Screen-Resolution\" or \"Screen-Size\".
--
-- /See:/ 'newCloudExportAdditionalProperties' smart constructor.
data CloudExportAdditionalProperties = CloudExportAdditionalProperties
  { -- | Boolean value of the given property. For example for a TV product, \"True\" or \"False\" if the screen is UHD.
    boolValue :: (Core.Maybe Core.Bool),
    -- | Float values of the given property. For example for a TV product 1.2345. Maximum number of specified values for this field is 400. Values are stored in an arbitrary but consistent order.
    floatValue :: (Core.Maybe [Core.Double]),
    -- | Integer values of the given property. For example, 1080 for a screen resolution of a TV product. Maximum number of specified values for this field is 400. Values are stored in an arbitrary but consistent order.
    intValue :: (Core.Maybe [Core.Int64]),
    -- | Maximum float value of the given property. For example for a TV product 100.00.
    maxValue :: (Core.Maybe Core.Double),
    -- | Minimum float value of the given property. For example for a TV product 1.00.
    minValue :: (Core.Maybe Core.Double),
    -- | Name of the given property. For example, \"Screen-Resolution\" for a TV product. Maximum string size is 256 characters.
    propertyName :: (Core.Maybe Core.Text),
    -- | Text value of the given property. For example, \"8K(UHD)\" could be a text value for a TV product. Maximum number of specified values for this field is 400. Values are stored in an arbitrary but consistent order. Maximum string size is 256 characters.
    textValue :: (Core.Maybe [Core.Text]),
    -- | Unit of the given property. For example, \"Pixels\" for a TV product. Maximum string size is 256 bytes.
    unitCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudExportAdditionalProperties' with the minimum fields required to make a request.
newCloudExportAdditionalProperties ::
  CloudExportAdditionalProperties
newCloudExportAdditionalProperties =
  CloudExportAdditionalProperties
    { boolValue = Core.Nothing,
      floatValue = Core.Nothing,
      intValue = Core.Nothing,
      maxValue = Core.Nothing,
      minValue = Core.Nothing,
      propertyName = Core.Nothing,
      textValue = Core.Nothing,
      unitCode = Core.Nothing
    }

instance Core.FromJSON CloudExportAdditionalProperties where
  parseJSON =
    Core.withObject
      "CloudExportAdditionalProperties"
      ( \o ->
          CloudExportAdditionalProperties
            Core.<$> (o Core..:? "boolValue")
            Core.<*> (o Core..:? "floatValue")
            Core.<*> ( o
                         Core..:? "intValue"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
            Core.<*> (o Core..:? "maxValue")
            Core.<*> (o Core..:? "minValue")
            Core.<*> (o Core..:? "propertyName")
            Core.<*> (o Core..:? "textValue")
            Core.<*> (o Core..:? "unitCode")
      )

instance Core.ToJSON CloudExportAdditionalProperties where
  toJSON CloudExportAdditionalProperties {..} =
    Core.object
      ( Core.catMaybes
          [ ("boolValue" Core..=) Core.<$> boolValue,
            ("floatValue" Core..=) Core.<$> floatValue,
            ("intValue" Core..=)
              Core.. Core.fmap Core.AsText
              Core.<$> intValue,
            ("maxValue" Core..=) Core.<$> maxValue,
            ("minValue" Core..=) Core.<$> minValue,
            ("propertyName" Core..=) Core.<$> propertyName,
            ("textValue" Core..=) Core.<$> textValue,
            ("unitCode" Core..=) Core.<$> unitCode
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
            Core.<*> (o Core..:? "featuredProduct")
            Core.<*> (o Core..:? "headline")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "imageLink")
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
    -- | Date on which the collection has been created in <http://en.wikipedia.org/wiki/ISO_8601 ISO 8601> format: Date, time, and offset, for example \"2020-01-02T09:00:00+01:00\" or \"2020-01-02T09:00:00Z\"
    creationDate :: (Core.Maybe Core.Text),
    -- | The intended destinations for the collection.
    destinationStatuses :: (Core.Maybe [CollectionStatusDestinationStatus]),
    -- | Required. The ID of the collection for which status is reported.
    id :: (Core.Maybe Core.Text),
    -- | Date on which the collection has been last updated in <http://en.wikipedia.org/wiki/ISO_8601 ISO 8601> format: Date, time, and offset, for example \"2020-01-02T09:00:00+01:00\" or \"2020-01-02T09:00:00Z\"
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
            Core.<$> (o Core..:? "collectionLevelIssuses")
            Core.<*> (o Core..:? "creationDate")
            Core.<*> (o Core..:? "destinationStatuses")
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
            ("destinationStatuses" Core..=) Core.<$> destinationStatuses,
            ("id" Core..=) Core.<$> id,
            ("lastUpdateDate" Core..=) Core.<$> lastUpdateDate
          ]
      )

-- | Destination status message.
--
-- /See:/ 'newCollectionStatusDestinationStatus' smart constructor.
data CollectionStatusDestinationStatus = CollectionStatusDestinationStatus
  { -- | Country codes (ISO 3166-1 alpha-2) where the collection is approved.
    approvedCountries :: (Core.Maybe [Core.Text]),
    -- | The name of the destination
    destination :: (Core.Maybe Core.Text),
    -- | Country codes (ISO 3166-1 alpha-2) where the collection is disapproved.
    disapprovedCountries :: (Core.Maybe [Core.Text]),
    -- | Country codes (ISO 3166-1 alpha-2) where the collection is pending approval.
    pendingCountries :: (Core.Maybe [Core.Text]),
    -- | The status for the specified destination in the collections target country.
    status :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CollectionStatusDestinationStatus' with the minimum fields required to make a request.
newCollectionStatusDestinationStatus ::
  CollectionStatusDestinationStatus
newCollectionStatusDestinationStatus =
  CollectionStatusDestinationStatus
    { approvedCountries =
        Core.Nothing,
      destination = Core.Nothing,
      disapprovedCountries = Core.Nothing,
      pendingCountries = Core.Nothing,
      status = Core.Nothing
    }

instance Core.FromJSON CollectionStatusDestinationStatus where
  parseJSON =
    Core.withObject
      "CollectionStatusDestinationStatus"
      ( \o ->
          CollectionStatusDestinationStatus
            Core.<$> (o Core..:? "approvedCountries")
            Core.<*> (o Core..:? "destination")
            Core.<*> (o Core..:? "disapprovedCountries")
            Core.<*> (o Core..:? "pendingCountries")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON CollectionStatusDestinationStatus where
  toJSON CollectionStatusDestinationStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("approvedCountries" Core..=) Core.<$> approvedCountries,
            ("destination" Core..=) Core.<$> destination,
            ("disapprovedCountries" Core..=) Core.<$> disapprovedCountries,
            ("pendingCountries" Core..=) Core.<$> pendingCountries,
            ("status" Core..=) Core.<$> status
          ]
      )

-- | Issue associated with the collection.
--
-- /See:/ 'newCollectionStatusItemLevelIssue' smart constructor.
data CollectionStatusItemLevelIssue = CollectionStatusItemLevelIssue
  { -- | Country codes (ISO 3166-1 alpha-2) where issue applies to the offer.
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
    -- | How this issue affects the serving of the collection.
    servability :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CollectionStatusItemLevelIssue' with the minimum fields required to make a request.
newCollectionStatusItemLevelIssue ::
  CollectionStatusItemLevelIssue
newCollectionStatusItemLevelIssue =
  CollectionStatusItemLevelIssue
    { applicableCountries =
        Core.Nothing,
      attributeName = Core.Nothing,
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
            Core.<$> (o Core..:? "applicableCountries")
            Core.<*> (o Core..:? "attributeName")
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
          [ ("applicableCountries" Core..=) Core.<$> applicableCountries,
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

-- | Fields related to [competitive visibility reports] (https:\/\/support.google.com\/merchants\/answer\/11366442).
--
-- /See:/ 'newCompetitiveVisibility' smart constructor.
data CompetitiveVisibility = CompetitiveVisibility
  { -- | [Ads \/ organic ratio] (https:\/\/support.google.com\/merchants\/answer\/11366442#zippy=%2Cadsfree-ratio) shows how often a merchant receives impressions from Shopping ads compared to organic traffic. The number is rounded and bucketed. Available only in @CompetitiveVisibilityTopMerchantView@ and @CompetitiveVisibilityCompetitorView@. Cannot be filtered on in the \'WHERE\' clause.
    adsOrganicRatio :: (Core.Maybe Core.Double),
    -- | Change in visibility based on impressions with respect to the start of the selected time range (or first day with non-zero impressions) for a combined set of merchants with highest visibility approximating the market. Available only in @CompetitiveVisibilityBenchmarkView@. Cannot be filtered on in the \'WHERE\' clause.
    categoryBenchmarkVisibilityTrend :: (Core.Maybe Core.Double),
    -- | Google product category ID to calculate the report for, represented in <https://support.google.com/merchants/answer/6324436 Google\'s product taxonomy>. Required in the @SELECT@ clause. A @WHERE@ condition on @competitive_visibility.category_id@ is required in the query.
    categoryId :: (Core.Maybe Core.Int64),
    -- | The country where impression appeared. Required in the @SELECT@ clause. A @WHERE@ condition on @competitive_visibility.country_code@ is required in the query.
    countryCode :: (Core.Maybe Core.Text),
    -- | Date of this row. Available only in @CompetitiveVisibilityBenchmarkView@ and @CompetitiveVisibilityCompetitorView@. Required in the @SELECT@ clause for @CompetitiveVisibilityMarketBenchmarkView@.
    date :: (Core.Maybe Date),
    -- | Domain of your competitor or your domain, if \'is/your/domain\' is true. Available only in @CompetitiveVisibilityTopMerchantView@ and @CompetitiveVisibilityCompetitorView@. Required in the @SELECT@ clause for @CompetitiveVisibilityTopMerchantView@ and @CompetitiveVisibilityCompetitorView@. Cannot be filtered on in the \'WHERE\' clause.
    domain :: (Core.Maybe Core.Text),
    -- | Higher position rate shows how often a competitor’s offer got placed in a higher position on the page than your offer. Available only in @CompetitiveVisibilityTopMerchantView@ and @CompetitiveVisibilityCompetitorView@. Cannot be filtered on in the \'WHERE\' clause.
    higherPositionRate :: (Core.Maybe Core.Double),
    -- | True if this row contains data for your domain. Available only in @CompetitiveVisibilityTopMerchantView@ and @CompetitiveVisibilityCompetitorView@. Cannot be filtered on in the \'WHERE\' clause.
    isYourDomain :: (Core.Maybe Core.Bool),
    -- | Page overlap rate describes how frequently competing retailers’ offers are shown together with your offers on the same page. Available only in @CompetitiveVisibilityTopMerchantView@ and @CompetitiveVisibilityCompetitorView@. Cannot be filtered on in the \'WHERE\' clause.
    pageOverlapRate :: (Core.Maybe Core.Double),
    -- | Position of the domain in the top merchants ranking for the selected keys (@date@, @category_id@, @country_code@, @listing_type@) based on impressions. 1 is the highest. Available only in @CompetitiveVisibilityTopMerchantView@ and @CompetitiveVisibilityCompetitorView@. Cannot be filtered on in the \'WHERE\' clause.
    rank :: (Core.Maybe Core.Word64),
    -- | Relative visibility shows how often your competitors’ offers are shown compared to your offers. In other words, this is the number of displayed impressions of a competitor retailer divided by the number of your displayed impressions during a selected time range for a selected product category and country. Available only in @CompetitiveVisibilityCompetitorView@. Cannot be filtered on in the \'WHERE\' clause.
    relativeVisibility :: (Core.Maybe Core.Double),
    -- | Type of impression listing. Required in the @SELECT@ clause. Cannot be filtered on in the \'WHERE\' clause.
    trafficSource :: (Core.Maybe CompetitiveVisibility_TrafficSource),
    -- | Change in visibility based on impressions for your domain with respect to the start of the selected time range (or first day with non-zero impressions). Available only in @CompetitiveVisibilityBenchmarkView@. Cannot be filtered on in the \'WHERE\' clause.
    yourDomainVisibilityTrend :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CompetitiveVisibility' with the minimum fields required to make a request.
newCompetitiveVisibility ::
  CompetitiveVisibility
newCompetitiveVisibility =
  CompetitiveVisibility
    { adsOrganicRatio = Core.Nothing,
      categoryBenchmarkVisibilityTrend = Core.Nothing,
      categoryId = Core.Nothing,
      countryCode = Core.Nothing,
      date = Core.Nothing,
      domain = Core.Nothing,
      higherPositionRate = Core.Nothing,
      isYourDomain = Core.Nothing,
      pageOverlapRate = Core.Nothing,
      rank = Core.Nothing,
      relativeVisibility = Core.Nothing,
      trafficSource = Core.Nothing,
      yourDomainVisibilityTrend = Core.Nothing
    }

instance Core.FromJSON CompetitiveVisibility where
  parseJSON =
    Core.withObject
      "CompetitiveVisibility"
      ( \o ->
          CompetitiveVisibility
            Core.<$> (o Core..:? "adsOrganicRatio")
            Core.<*> (o Core..:? "categoryBenchmarkVisibilityTrend")
            Core.<*> (o Core..:? "categoryId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "countryCode")
            Core.<*> (o Core..:? "date")
            Core.<*> (o Core..:? "domain")
            Core.<*> (o Core..:? "higherPositionRate")
            Core.<*> (o Core..:? "isYourDomain")
            Core.<*> (o Core..:? "pageOverlapRate")
            Core.<*> (o Core..:? "rank" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "relativeVisibility")
            Core.<*> (o Core..:? "trafficSource")
            Core.<*> (o Core..:? "yourDomainVisibilityTrend")
      )

instance Core.ToJSON CompetitiveVisibility where
  toJSON CompetitiveVisibility {..} =
    Core.object
      ( Core.catMaybes
          [ ("adsOrganicRatio" Core..=) Core.<$> adsOrganicRatio,
            ("categoryBenchmarkVisibilityTrend" Core..=)
              Core.<$> categoryBenchmarkVisibilityTrend,
            ("categoryId" Core..=) Core.. Core.AsText Core.<$> categoryId,
            ("countryCode" Core..=) Core.<$> countryCode,
            ("date" Core..=) Core.<$> date,
            ("domain" Core..=) Core.<$> domain,
            ("higherPositionRate" Core..=) Core.<$> higherPositionRate,
            ("isYourDomain" Core..=) Core.<$> isYourDomain,
            ("pageOverlapRate" Core..=) Core.<$> pageOverlapRate,
            ("rank" Core..=) Core.. Core.AsText Core.<$> rank,
            ("relativeVisibility" Core..=) Core.<$> relativeVisibility,
            ("trafficSource" Core..=) Core.<$> trafficSource,
            ("yourDomainVisibilityTrend" Core..=)
              Core.<$> yourDomainVisibilityTrend
          ]
      )

-- | Represents a conversion source owned by a Merchant account. A merchant account can have up to 200 conversion sources.
--
-- /See:/ 'newConversionSource' smart constructor.
data ConversionSource = ConversionSource
  { -- | Output only. Generated by the Content API upon creation of a new @ConversionSource@. Format: [a-z]{4}:.+ The four characters before the colon represent the type of conversio source. Content after the colon represents the ID of the conversion source within that type. The ID of two different conversion sources might be the same across different types. The following type prefixes are supported: - galk: For GoogleAnalyticsLink sources. - mcdn: For MerchantCenterDestination sources.
    conversionSourceId :: (Core.Maybe Core.Text),
    -- | Output only. The time when an archived conversion source becomes permanently deleted and is no longer available to undelete.
    expireTime :: (Core.Maybe Core.DateTime),
    -- | Immutable. Conversion Source of type \"Link to Google Analytics Property\".
    googleAnalyticsLink :: (Core.Maybe GoogleAnalyticsLink),
    -- | Conversion Source of type \"Merchant Center Tag Destination\".
    merchantCenterDestination :: (Core.Maybe MerchantCenterDestination),
    -- | Output only. Current state of this conversion source. Can\'t be edited through the API.
    state :: (Core.Maybe ConversionSource_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConversionSource' with the minimum fields required to make a request.
newConversionSource ::
  ConversionSource
newConversionSource =
  ConversionSource
    { conversionSourceId = Core.Nothing,
      expireTime = Core.Nothing,
      googleAnalyticsLink = Core.Nothing,
      merchantCenterDestination = Core.Nothing,
      state = Core.Nothing
    }

instance Core.FromJSON ConversionSource where
  parseJSON =
    Core.withObject
      "ConversionSource"
      ( \o ->
          ConversionSource
            Core.<$> (o Core..:? "conversionSourceId")
            Core.<*> (o Core..:? "expireTime")
            Core.<*> (o Core..:? "googleAnalyticsLink")
            Core.<*> (o Core..:? "merchantCenterDestination")
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON ConversionSource where
  toJSON ConversionSource {..} =
    Core.object
      ( Core.catMaybes
          [ ("conversionSourceId" Core..=) Core.<$> conversionSourceId,
            ("expireTime" Core..=) Core.<$> expireTime,
            ("googleAnalyticsLink" Core..=) Core.<$> googleAnalyticsLink,
            ("merchantCenterDestination" Core..=)
              Core.<$> merchantCenterDestination,
            ("state" Core..=) Core.<$> state
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
            Core.<$> (o Core..:? "cssDomainId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "cssGroupId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "fullName")
            Core.<*> (o Core..:? "homepageUri")
            Core.<*> ( o
                         Core..:? "labelIds"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
      )

instance Core.ToJSON Css where
  toJSON Css {..} =
    Core.object
      ( Core.catMaybes
          [ ("cssDomainId" Core..=) Core.. Core.AsText Core.<$> cssDomainId,
            ("cssGroupId" Core..=) Core.. Core.AsText Core.<$> cssGroupId,
            ("displayName" Core..=) Core.<$> displayName,
            ("fullName" Core..=) Core.<$> fullName,
            ("homepageUri" Core..=) Core.<$> homepageUri,
            ("labelIds" Core..=)
              Core.. Core.fmap Core.AsText
              Core.<$> labelIds
          ]
      )

-- | A message that represents custom attributes. Exactly one of @value@ or @groupValues@ must be provided. Maximum allowed number of characters for each custom attribute is 10240 (represents sum of characters for name and value). Maximum 2500 custom attributes can be set per merchant, with total size of 102.4kB.
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
            Core.<$> (o Core..:? "groupValues")
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
            Core.<*> (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "targets")
      )

instance Core.ToJSON Datafeed where
  toJSON Datafeed {..} =
    Core.object
      ( Core.catMaybes
          [ ("attributeLanguage" Core..=) Core.<$> attributeLanguage,
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
          [ ("columnDelimiter" Core..=) Core.<$> columnDelimiter,
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
    -- | The feed label status is reported for.
    feedLabel :: (Core.Maybe Core.Text),
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
      feedLabel = Core.Nothing,
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
            Core.<*> (o Core..:? "datafeedId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "errors")
            Core.<*> (o Core..:? "feedLabel")
            Core.<*> (o Core..:? "itemsTotal" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "itemsValid" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "language")
            Core.<*> (o Core..:? "lastUploadDate")
            Core.<*> (o Core..:? "processingStatus")
            Core.<*> (o Core..:? "warnings")
      )

instance Core.ToJSON DatafeedStatus where
  toJSON DatafeedStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("country" Core..=) Core.<$> country,
            ("datafeedId" Core..=) Core.. Core.AsText Core.<$> datafeedId,
            ("errors" Core..=) Core.<$> errors,
            ("feedLabel" Core..=) Core.<$> feedLabel,
            ("itemsTotal" Core..=) Core.. Core.AsText Core.<$> itemsTotal,
            ("itemsValid" Core..=) Core.. Core.AsText Core.<$> itemsValid,
            ("kind" Core..=) Core.<$> kind,
            ("language" Core..=) Core.<$> language,
            ("lastUploadDate" Core..=) Core.<$> lastUploadDate,
            ("processingStatus" Core..=) Core.<$> processingStatus,
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
            Core.<*> (o Core..:? "count" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "examples")
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
            Core.<*> (o Core..:? "lineNumber" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON DatafeedStatusExample where
  toJSON DatafeedStatusExample {..} =
    Core.object
      ( Core.catMaybes
          [ ("itemId" Core..=) Core.<$> itemId,
            ("lineNumber" Core..=) Core.. Core.AsText Core.<$> lineNumber,
            ("value" Core..=) Core.<$> value
          ]
      )

--
-- /See:/ 'newDatafeedTarget' smart constructor.
data DatafeedTarget = DatafeedTarget
  { -- | Deprecated. Use @feedLabel@ instead. The country where the items in the feed will be included in the search index, represented as a CLDR territory code.
    country :: (Core.Maybe Core.Text),
    -- | The list of <//support.google.com/merchants/answer/6324486 destinations to exclude> for this target (corresponds to cleared check boxes in Merchant Center). Products that are excluded from all destinations for more than 7 days are automatically deleted.
    excludedDestinations :: (Core.Maybe [Core.Text]),
    -- | Feed label for the DatafeedTarget. Either @country@ or @feedLabel@ is required. If both @feedLabel@ and @country@ is specified, the values must match. Must be less than or equal to 20 uppercase letters (A-Z), numbers (0-9), and dashes (-).
    feedLabel :: (Core.Maybe Core.Text),
    -- | The list of <//support.google.com/merchants/answer/7501026 destinations to include> for this target (corresponds to checked check boxes in Merchant Center). Default destinations are always included unless provided in @excludedDestinations@.
    includedDestinations :: (Core.Maybe [Core.Text]),
    -- | The two-letter ISO 639-1 language of the items in the feed. Must be a valid language for @targets[].country@.
    language :: (Core.Maybe Core.Text),
    -- | The countries where the items may be displayed. Represented as a CLDR territory code. Will be ignored for \"product inventory\" feeds.
    targetCountries :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatafeedTarget' with the minimum fields required to make a request.
newDatafeedTarget ::
  DatafeedTarget
newDatafeedTarget =
  DatafeedTarget
    { country = Core.Nothing,
      excludedDestinations = Core.Nothing,
      feedLabel = Core.Nothing,
      includedDestinations = Core.Nothing,
      language = Core.Nothing,
      targetCountries = Core.Nothing
    }

instance Core.FromJSON DatafeedTarget where
  parseJSON =
    Core.withObject
      "DatafeedTarget"
      ( \o ->
          DatafeedTarget
            Core.<$> (o Core..:? "country")
            Core.<*> (o Core..:? "excludedDestinations")
            Core.<*> (o Core..:? "feedLabel")
            Core.<*> (o Core..:? "includedDestinations")
            Core.<*> (o Core..:? "language")
            Core.<*> (o Core..:? "targetCountries")
      )

instance Core.ToJSON DatafeedTarget where
  toJSON DatafeedTarget {..} =
    Core.object
      ( Core.catMaybes
          [ ("country" Core..=) Core.<$> country,
            ("excludedDestinations" Core..=) Core.<$> excludedDestinations,
            ("feedLabel" Core..=) Core.<$> feedLabel,
            ("includedDestinations" Core..=) Core.<$> includedDestinations,
            ("language" Core..=) Core.<$> language,
            ("targetCountries" Core..=) Core.<$> targetCountries
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
          DatafeedsCustomBatchRequest Core.<$> (o Core..:? "entries")
      )

instance Core.ToJSON DatafeedsCustomBatchRequest where
  toJSON DatafeedsCustomBatchRequest {..} =
    Core.object
      (Core.catMaybes [("entries" Core..=) Core.<$> entries])

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

instance Core.FromJSON DatafeedsCustomBatchRequestEntry where
  parseJSON =
    Core.withObject
      "DatafeedsCustomBatchRequestEntry"
      ( \o ->
          DatafeedsCustomBatchRequestEntry
            Core.<$> (o Core..:? "batchId")
            Core.<*> (o Core..:? "datafeed")
            Core.<*> (o Core..:? "datafeedId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "merchantId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "method")
      )

instance Core.ToJSON DatafeedsCustomBatchRequestEntry where
  toJSON DatafeedsCustomBatchRequestEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchId" Core..=) Core.<$> batchId,
            ("datafeed" Core..=) Core.<$> datafeed,
            ("datafeedId" Core..=) Core.. Core.AsText Core.<$> datafeedId,
            ("merchantId" Core..=) Core.. Core.AsText Core.<$> merchantId,
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
  DatafeedsCustomBatchResponse
    { entries = Core.Nothing,
      kind = Core.Nothing
    }

instance Core.FromJSON DatafeedsCustomBatchResponse where
  parseJSON =
    Core.withObject
      "DatafeedsCustomBatchResponse"
      ( \o ->
          DatafeedsCustomBatchResponse
            Core.<$> (o Core..:? "entries")
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
    -- | A list of errors for failed custombatch entries. /Note:/ Schema errors fail the whole request.
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

instance Core.FromJSON DatafeedsCustomBatchResponseEntry where
  parseJSON =
    Core.withObject
      "DatafeedsCustomBatchResponseEntry"
      ( \o ->
          DatafeedsCustomBatchResponseEntry
            Core.<$> (o Core..:? "batchId")
            Core.<*> (o Core..:? "datafeed")
            Core.<*> (o Core..:? "errors")
      )

instance Core.ToJSON DatafeedsCustomBatchResponseEntry where
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
newDatafeedsFetchNowResponse =
  DatafeedsFetchNowResponse {kind = Core.Nothing}

instance Core.FromJSON DatafeedsFetchNowResponse where
  parseJSON =
    Core.withObject
      "DatafeedsFetchNowResponse"
      (\o -> DatafeedsFetchNowResponse Core.<$> (o Core..:? "kind"))

instance Core.ToJSON DatafeedsFetchNowResponse where
  toJSON DatafeedsFetchNowResponse {..} =
    Core.object (Core.catMaybes [("kind" Core..=) Core.<$> kind])

--
-- /See:/ 'newDatafeedsListResponse' smart constructor.
data DatafeedsListResponse = DatafeedsListResponse
  { -- | Identifies what kind of resource this is. Value: the fixed string \"@content#datafeedsListResponse@\".
    kind :: (Core.Maybe Core.Text),
    -- | The token for the retrieval of the next page of datafeeds.
    nextPageToken :: (Core.Maybe Core.Text),
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
            Core.<*> (o Core..:? "resources")
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

instance Core.FromJSON DatafeedstatusesCustomBatchRequest where
  parseJSON =
    Core.withObject
      "DatafeedstatusesCustomBatchRequest"
      ( \o ->
          DatafeedstatusesCustomBatchRequest Core.<$> (o Core..:? "entries")
      )

instance Core.ToJSON DatafeedstatusesCustomBatchRequest where
  toJSON DatafeedstatusesCustomBatchRequest {..} =
    Core.object
      (Core.catMaybes [("entries" Core..=) Core.<$> entries])

-- | A batch entry encoding a single non-batch datafeedstatuses request.
--
-- /See:/ 'newDatafeedstatusesCustomBatchRequestEntry' smart constructor.
data DatafeedstatusesCustomBatchRequestEntry = DatafeedstatusesCustomBatchRequestEntry
  { -- | An entry ID, unique within the batch request.
    batchId :: (Core.Maybe Core.Word32),
    -- | Deprecated. Use @feedLabel@ instead. The country to get the datafeed status for. If this parameter is provided, then @language@ must also be provided. Note that for multi-target datafeeds this parameter is required.
    country :: (Core.Maybe Core.Text),
    -- | The ID of the data feed to get.
    datafeedId :: (Core.Maybe Core.Word64),
    -- | The feed label to get the datafeed status for. If this parameter is provided, then @language@ must also be provided. Note that for multi-target datafeeds this parameter is required.
    feedLabel :: (Core.Maybe Core.Text),
    -- | The language to get the datafeed status for. If this parameter is provided then @country@ must also be provided. Note that for multi-target datafeeds this parameter is required.
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
      feedLabel = Core.Nothing,
      language = Core.Nothing,
      merchantId = Core.Nothing,
      method = Core.Nothing
    }

instance Core.FromJSON DatafeedstatusesCustomBatchRequestEntry where
  parseJSON =
    Core.withObject
      "DatafeedstatusesCustomBatchRequestEntry"
      ( \o ->
          DatafeedstatusesCustomBatchRequestEntry
            Core.<$> (o Core..:? "batchId")
            Core.<*> (o Core..:? "country")
            Core.<*> (o Core..:? "datafeedId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "feedLabel")
            Core.<*> (o Core..:? "language")
            Core.<*> (o Core..:? "merchantId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "method")
      )

instance Core.ToJSON DatafeedstatusesCustomBatchRequestEntry where
  toJSON DatafeedstatusesCustomBatchRequestEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchId" Core..=) Core.<$> batchId,
            ("country" Core..=) Core.<$> country,
            ("datafeedId" Core..=) Core.. Core.AsText Core.<$> datafeedId,
            ("feedLabel" Core..=) Core.<$> feedLabel,
            ("language" Core..=) Core.<$> language,
            ("merchantId" Core..=) Core.. Core.AsText Core.<$> merchantId,
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

instance Core.FromJSON DatafeedstatusesCustomBatchResponse where
  parseJSON =
    Core.withObject
      "DatafeedstatusesCustomBatchResponse"
      ( \o ->
          DatafeedstatusesCustomBatchResponse
            Core.<$> (o Core..:? "entries")
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON DatafeedstatusesCustomBatchResponse where
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
    -- | A list of errors for failed custombatch entries. /Note:/ Schema errors fail the whole request.
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

instance Core.FromJSON DatafeedstatusesCustomBatchResponseEntry where
  parseJSON =
    Core.withObject
      "DatafeedstatusesCustomBatchResponseEntry"
      ( \o ->
          DatafeedstatusesCustomBatchResponseEntry
            Core.<$> (o Core..:? "batchId")
            Core.<*> (o Core..:? "datafeedStatus")
            Core.<*> (o Core..:? "errors")
      )

instance Core.ToJSON DatafeedstatusesCustomBatchResponseEntry where
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
            Core.<*> (o Core..:? "resources")
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
newDate =
  Date
    { day = Core.Nothing,
      month = Core.Nothing,
      year = Core.Nothing
    }

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

-- | Represents civil time (or occasionally physical time). This type can represent a civil time in one of a few possible ways: * When utc/offset is set and time/zone is unset: a civil time on a calendar day with a particular offset from UTC. * When time/zone is set and utc/offset is unset: a civil time on a calendar day in a particular time zone. * When neither time/zone nor utc/offset is set: a civil time on a calendar day in local time. The date is relative to the Proleptic Gregorian Calendar. If year, month, or day are 0, the DateTime is considered not to have a specific year, month, or day respectively. This type may also be used to represent a physical time if all the date and time fields are set and either case of the @time_offset@ oneof is set. Consider using @Timestamp@ message for physical time instead. If your use case also would like to store the user\'s timezone, that can be done in another field. This type is more flexible than some applications may want. Make sure to document and validate your
-- application\'s limitations.
--
-- /See:/ 'newDateTime' smart constructor.
data DateTime' = DateTime'
  { -- | Optional. Day of month. Must be from 1 to 31 and valid for the year and month, or 0 if specifying a datetime without a day.
    day :: (Core.Maybe Core.Int32),
    -- | Optional. Hours of day in 24 hour format. Should be from 0 to 23, defaults to 0 (midnight). An API may choose to allow the value \"24:00:00\" for scenarios like business closing time.
    hours :: (Core.Maybe Core.Int32),
    -- | Optional. Minutes of hour of day. Must be from 0 to 59, defaults to 0.
    minutes :: (Core.Maybe Core.Int32),
    -- | Optional. Month of year. Must be from 1 to 12, or 0 if specifying a datetime without a month.
    month :: (Core.Maybe Core.Int32),
    -- | Optional. Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999, defaults to 0.
    nanos :: (Core.Maybe Core.Int32),
    -- | Optional. Seconds of minutes of the time. Must normally be from 0 to 59, defaults to 0. An API may allow the value 60 if it allows leap-seconds.
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

-- | A delivery area for the product. Only one of @countryCode@ or @postalCodeRange@ must be set.
--
-- /See:/ 'newDeliveryArea' smart constructor.
data DeliveryArea = DeliveryArea
  { -- | Required. The country that the product can be delivered to. Submit a <http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml unicode CLDR region> such as @US@ or @CH@.
    countryCode :: (Core.Maybe Core.Text),
    -- | A postal code, postal code range or postal code prefix that defines this area. Limited to US and AUS.
    postalCodeRange :: (Core.Maybe DeliveryAreaPostalCodeRange),
    -- | A state, territory, or prefecture. This is supported for the United States, Australia, and Japan. Provide a subdivision code from the ISO 3166-2 code tables (<https://en.wikipedia.org/wiki/ISO_3166-2:US US>, <https://en.wikipedia.org/wiki/ISO_3166-2:AU AU>, or <https://en.wikipedia.org/wiki/ISO_3166-2:JP JP>) without country prefix (for example, @\"NY\"@, @\"NSW\"@, @\"03\"@).
    regionCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeliveryArea' with the minimum fields required to make a request.
newDeliveryArea ::
  DeliveryArea
newDeliveryArea =
  DeliveryArea
    { countryCode = Core.Nothing,
      postalCodeRange = Core.Nothing,
      regionCode = Core.Nothing
    }

instance Core.FromJSON DeliveryArea where
  parseJSON =
    Core.withObject
      "DeliveryArea"
      ( \o ->
          DeliveryArea
            Core.<$> (o Core..:? "countryCode")
            Core.<*> (o Core..:? "postalCodeRange")
            Core.<*> (o Core..:? "regionCode")
      )

instance Core.ToJSON DeliveryArea where
  toJSON DeliveryArea {..} =
    Core.object
      ( Core.catMaybes
          [ ("countryCode" Core..=) Core.<$> countryCode,
            ("postalCodeRange" Core..=) Core.<$> postalCodeRange,
            ("regionCode" Core..=) Core.<$> regionCode
          ]
      )

-- | A range of postal codes that defines the delivery area. Only set @firstPostalCode@ when specifying a single postal code.
--
-- /See:/ 'newDeliveryAreaPostalCodeRange' smart constructor.
data DeliveryAreaPostalCodeRange = DeliveryAreaPostalCodeRange
  { -- | Required. A postal code or a pattern of the form prefix* denoting the inclusive lower bound of the range defining the area. Examples values: @\"94108\"@, @\"9410*\"@, @\"9*\"@.
    firstPostalCode :: (Core.Maybe Core.Text),
    -- | A postal code or a pattern of the form prefix* denoting the inclusive upper bound of the range defining the area (for example [070* - 078*] results in the range [07000 - 07899]). It must have the same length as @firstPostalCode@: if @firstPostalCode@ is a postal code then @lastPostalCode@ must be a postal code too; if firstPostalCode is a pattern then @lastPostalCode@ must be a pattern with the same prefix length. Ignored if not set, then the area is defined as being all the postal codes matching @firstPostalCode@.
    lastPostalCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeliveryAreaPostalCodeRange' with the minimum fields required to make a request.
newDeliveryAreaPostalCodeRange ::
  DeliveryAreaPostalCodeRange
newDeliveryAreaPostalCodeRange =
  DeliveryAreaPostalCodeRange
    { firstPostalCode = Core.Nothing,
      lastPostalCode = Core.Nothing
    }

instance Core.FromJSON DeliveryAreaPostalCodeRange where
  parseJSON =
    Core.withObject
      "DeliveryAreaPostalCodeRange"
      ( \o ->
          DeliveryAreaPostalCodeRange
            Core.<$> (o Core..:? "firstPostalCode")
            Core.<*> (o Core..:? "lastPostalCode")
      )

instance Core.ToJSON DeliveryAreaPostalCodeRange where
  toJSON DeliveryAreaPostalCodeRange {..} =
    Core.object
      ( Core.catMaybes
          [ ("firstPostalCode" Core..=) Core.<$> firstPostalCode,
            ("lastPostalCode" Core..=) Core.<$> lastPostalCode
          ]
      )

--
-- /See:/ 'newDeliveryTime' smart constructor.
data DeliveryTime = DeliveryTime
  { -- | Business days cutoff time definition. If not configured, the cutoff time will be defaulted to 8AM PST. If local delivery, use Service.StoreConfig.CutoffConfig.
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
            Core.<*> (o Core..:? "holidayCutoffs")
            Core.<*> (o Core..:? "maxHandlingTimeInDays")
            Core.<*> (o Core..:? "maxTransitTimeInDays")
            Core.<*> (o Core..:? "minHandlingTimeInDays")
            Core.<*> (o Core..:? "minTransitTimeInDays")
            Core.<*> (o Core..:? "transitBusinessDayConfig")
            Core.<*> (o Core..:? "transitTimeTable")
            Core.<*> (o Core..:? "warehouseBasedDeliveryTimes")
      )

instance Core.ToJSON DeliveryTime where
  toJSON DeliveryTime {..} =
    Core.object
      ( Core.catMaybes
          [ ("cutoffTime" Core..=) Core.<$> cutoffTime,
            ("handlingBusinessDayConfig" Core..=)
              Core.<$> handlingBusinessDayConfig,
            ("holidayCutoffs" Core..=) Core.<$> holidayCutoffs,
            ("maxHandlingTimeInDays" Core..=) Core.<$> maxHandlingTimeInDays,
            ("maxTransitTimeInDays" Core..=) Core.<$> maxTransitTimeInDays,
            ("minHandlingTimeInDays" Core..=) Core.<$> minHandlingTimeInDays,
            ("minTransitTimeInDays" Core..=) Core.<$> minTransitTimeInDays,
            ("transitBusinessDayConfig" Core..=)
              Core.<$> transitBusinessDayConfig,
            ("transitTimeTable" Core..=) Core.<$> transitTimeTable,
            ("warehouseBasedDeliveryTimes" Core..=)
              Core.<$> warehouseBasedDeliveryTimes
          ]
      )

-- | Distance represented by an integer and unit.
--
-- /See:/ 'newDistance' smart constructor.
data Distance = Distance
  { -- | The distance unit. Acceptable values are @None@, @Miles@, and @Kilometers@.
    unit :: (Core.Maybe Core.Text),
    -- | The distance represented as a number.
    value :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Distance' with the minimum fields required to make a request.
newDistance ::
  Distance
newDistance = Distance {unit = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON Distance where
  parseJSON =
    Core.withObject
      "Distance"
      ( \o ->
          Distance
            Core.<$> (o Core..:? "unit")
            Core.<*> (o Core..:? "value" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON Distance where
  toJSON Distance {..} =
    Core.object
      ( Core.catMaybes
          [ ("unit" Core..=) Core.<$> unit,
            ("value" Core..=) Core.. Core.AsText Core.<$> value
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
          [("externalAccountId" Core..=) Core.<$> externalAccountId]
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
  Error'
    { domain = Core.Nothing,
      message = Core.Nothing,
      reason = Core.Nothing
    }

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
  Errors
    { code = Core.Nothing,
      errors = Core.Nothing,
      message = Core.Nothing
    }

instance Core.FromJSON Errors where
  parseJSON =
    Core.withObject
      "Errors"
      ( \o ->
          Errors
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "errors")
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

-- | Action that is implemented and performed outside of the third-party application. It should redirect the merchant to the provided URL of an external system where they can perform the action. For example to request a review in the Merchant Center.
--
-- /See:/ 'newExternalAction' smart constructor.
data ExternalAction = ExternalAction
  { -- | The type of external action.
    type' :: (Core.Maybe ExternalAction_Type),
    -- | URL to external system, for example Merchant Center, where the merchant can perform the action.
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExternalAction' with the minimum fields required to make a request.
newExternalAction ::
  ExternalAction
newExternalAction =
  ExternalAction {type' = Core.Nothing, uri = Core.Nothing}

instance Core.FromJSON ExternalAction where
  parseJSON =
    Core.withObject
      "ExternalAction"
      ( \o ->
          ExternalAction
            Core.<$> (o Core..:? "type")
            Core.<*> (o Core..:? "uri")
      )

instance Core.ToJSON ExternalAction where
  toJSON ExternalAction {..} =
    Core.object
      ( Core.catMaybes
          [("type" Core..=) Core.<$> type', ("uri" Core..=) Core.<$> uri]
      )

-- | Response message for GetFreeListingsProgramStatus.
--
-- /See:/ 'newFreeListingsProgramStatus' smart constructor.
data FreeListingsProgramStatus = FreeListingsProgramStatus
  { -- | State of the program. @ENABLED@ if there are offers for at least one region.
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
            Core.<*> (o Core..:? "regionStatuses")
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
  { -- | Date by which eligibilityStatus will go from @WARNING@ to @DISAPPROVED@. Only visible when your eligibilityStatus is WARNING. In <https://en.wikipedia.org/wiki/ISO_8601 ISO 8601> format: @YYYY-MM-DD@.
    disapprovalDate :: (Core.Maybe Core.Text),
    -- | Eligibility status of the standard free listing program.
    eligibilityStatus ::
      ( Core.Maybe
          FreeListingsProgramStatusRegionStatus_EligibilityStatus
      ),
    -- | Issues that must be fixed to be eligible for review.
    onboardingIssues :: (Core.Maybe [Core.Text]),
    -- | The two-letter <https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2 ISO 3166-1 alpha-2> codes for all the regions with the same @eligibilityStatus@ and @reviewEligibility@.
    regionCodes :: (Core.Maybe [Core.Text]),
    -- | If a program is eligible for review in a specific region. Only visible if @eligibilityStatus@ is @DISAPPROVED@.
    reviewEligibilityStatus ::
      ( Core.Maybe
          FreeListingsProgramStatusRegionStatus_ReviewEligibilityStatus
      ),
    -- | Review ineligibility reason if account is not eligible for review.
    reviewIneligibilityReason ::
      ( Core.Maybe
          FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason
      ),
    -- | Reason a program in a specific region isn’t eligible for review. Only visible if @reviewEligibilityStatus@ is @INELIGIBLE@.
    reviewIneligibilityReasonDescription :: (Core.Maybe Core.Text),
    -- | Additional information for ineligibility. If @reviewIneligibilityReason@ is @IN_COOLDOWN_PERIOD@, a timestamp for the end of the cooldown period is provided.
    reviewIneligibilityReasonDetails ::
      ( Core.Maybe
          FreeListingsProgramStatusReviewIneligibilityReasonDetails
      ),
    -- | Issues evaluated in the review process. Fix all issues before requesting a review.
    reviewIssues :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FreeListingsProgramStatusRegionStatus' with the minimum fields required to make a request.
newFreeListingsProgramStatusRegionStatus ::
  FreeListingsProgramStatusRegionStatus
newFreeListingsProgramStatusRegionStatus =
  FreeListingsProgramStatusRegionStatus
    { disapprovalDate =
        Core.Nothing,
      eligibilityStatus = Core.Nothing,
      onboardingIssues = Core.Nothing,
      regionCodes = Core.Nothing,
      reviewEligibilityStatus = Core.Nothing,
      reviewIneligibilityReason = Core.Nothing,
      reviewIneligibilityReasonDescription = Core.Nothing,
      reviewIneligibilityReasonDetails = Core.Nothing,
      reviewIssues = Core.Nothing
    }

instance Core.FromJSON FreeListingsProgramStatusRegionStatus where
  parseJSON =
    Core.withObject
      "FreeListingsProgramStatusRegionStatus"
      ( \o ->
          FreeListingsProgramStatusRegionStatus
            Core.<$> (o Core..:? "disapprovalDate")
            Core.<*> (o Core..:? "eligibilityStatus")
            Core.<*> (o Core..:? "onboardingIssues")
            Core.<*> (o Core..:? "regionCodes")
            Core.<*> (o Core..:? "reviewEligibilityStatus")
            Core.<*> (o Core..:? "reviewIneligibilityReason")
            Core.<*> (o Core..:? "reviewIneligibilityReasonDescription")
            Core.<*> (o Core..:? "reviewIneligibilityReasonDetails")
            Core.<*> (o Core..:? "reviewIssues")
      )

instance Core.ToJSON FreeListingsProgramStatusRegionStatus where
  toJSON FreeListingsProgramStatusRegionStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("disapprovalDate" Core..=) Core.<$> disapprovalDate,
            ("eligibilityStatus" Core..=) Core.<$> eligibilityStatus,
            ("onboardingIssues" Core..=) Core.<$> onboardingIssues,
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
    { cooldownTime =
        Core.Nothing
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
        (Core.catMaybes [("cooldownTime" Core..=) Core.<$> cooldownTime])

-- | Conditions to be met for a product to have free shipping.
--
-- /See:/ 'newFreeShippingThreshold' smart constructor.
data FreeShippingThreshold = FreeShippingThreshold
  { -- | Required. The <http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml CLDR territory code> of the country to which an item will ship.
    country :: (Core.Maybe Core.Text),
    -- | Required. The minimum product price for the shipping cost to become free. Represented as a number.
    priceThreshold :: (Core.Maybe Price)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FreeShippingThreshold' with the minimum fields required to make a request.
newFreeShippingThreshold ::
  FreeShippingThreshold
newFreeShippingThreshold =
  FreeShippingThreshold
    { country = Core.Nothing,
      priceThreshold = Core.Nothing
    }

instance Core.FromJSON FreeShippingThreshold where
  parseJSON =
    Core.withObject
      "FreeShippingThreshold"
      ( \o ->
          FreeShippingThreshold
            Core.<$> (o Core..:? "country")
            Core.<*> (o Core..:? "priceThreshold")
      )

instance Core.ToJSON FreeShippingThreshold where
  toJSON FreeShippingThreshold {..} =
    Core.object
      ( Core.catMaybes
          [ ("country" Core..=) Core.<$> country,
            ("priceThreshold" Core..=) Core.<$> priceThreshold
          ]
      )

-- | Response containing generated recommendations.
--
-- /See:/ 'newGenerateRecommendationsResponse' smart constructor.
data GenerateRecommendationsResponse = GenerateRecommendationsResponse
  { -- | Recommendations generated for a request.
    recommendations :: (Core.Maybe [Recommendation]),
    -- | Output only. Response token is a string created for each @GenerateRecommendationsResponse@. This token doesn\'t expire, and is globally unique. This token must be used when reporting interactions for recommendations.
    responseToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GenerateRecommendationsResponse' with the minimum fields required to make a request.
newGenerateRecommendationsResponse ::
  GenerateRecommendationsResponse
newGenerateRecommendationsResponse =
  GenerateRecommendationsResponse
    { recommendations = Core.Nothing,
      responseToken = Core.Nothing
    }

instance Core.FromJSON GenerateRecommendationsResponse where
  parseJSON =
    Core.withObject
      "GenerateRecommendationsResponse"
      ( \o ->
          GenerateRecommendationsResponse
            Core.<$> (o Core..:? "recommendations")
            Core.<*> (o Core..:? "responseToken")
      )

instance Core.ToJSON GenerateRecommendationsResponse where
  toJSON GenerateRecommendationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("recommendations" Core..=) Core.<$> recommendations,
            ("responseToken" Core..=) Core.<$> responseToken
          ]
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
            Core.<$> (o Core..:? "accountId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "gmbAccounts")
      )

instance Core.ToJSON GmbAccounts where
  toJSON GmbAccounts {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.. Core.AsText Core.<$> accountId,
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
            Core.<*> (o Core..:? "listingCount" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON GmbAccountsGmbAccount where
  toJSON GmbAccountsGmbAccount {..} =
    Core.object
      ( Core.catMaybes
          [ ("email" Core..=) Core.<$> email,
            ("listingCount" Core..=) Core.. Core.AsText Core.<$> listingCount,
            ("name" Core..=) Core.<$> name,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | \"Google Analytics Link\" sources can be used to get conversion data from an existing Google Analytics property into the linked Merchant Center account.
--
-- /See:/ 'newGoogleAnalyticsLink' smart constructor.
data GoogleAnalyticsLink = GoogleAnalyticsLink
  { -- | Output only. Attribution settings for the linked Google Analytics property.
    attributionSettings :: (Core.Maybe AttributionSettings),
    -- | Required. Immutable. ID of the Google Analytics property the merchant is linked to.
    propertyId :: (Core.Maybe Core.Int64),
    -- | Output only. Name of the Google Analytics property the merchant is linked to.
    propertyName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAnalyticsLink' with the minimum fields required to make a request.
newGoogleAnalyticsLink ::
  GoogleAnalyticsLink
newGoogleAnalyticsLink =
  GoogleAnalyticsLink
    { attributionSettings = Core.Nothing,
      propertyId = Core.Nothing,
      propertyName = Core.Nothing
    }

instance Core.FromJSON GoogleAnalyticsLink where
  parseJSON =
    Core.withObject
      "GoogleAnalyticsLink"
      ( \o ->
          GoogleAnalyticsLink
            Core.<$> (o Core..:? "attributionSettings")
            Core.<*> (o Core..:? "propertyId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "propertyName")
      )

instance Core.ToJSON GoogleAnalyticsLink where
  toJSON GoogleAnalyticsLink {..} =
    Core.object
      ( Core.catMaybes
          [ ("attributionSettings" Core..=) Core.<$> attributionSettings,
            ("propertyId" Core..=) Core.. Core.AsText Core.<$> propertyId,
            ("propertyName" Core..=) Core.<$> propertyName
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
            Core.<$> (o Core..:? "locations")
            Core.<*> (o Core..:? "numberOfItems")
            Core.<*> (o Core..:? "postalCodeGroupNames")
            Core.<*> (o Core..:? "prices")
            Core.<*> (o Core..:? "weights")
      )

instance Core.ToJSON Headers where
  toJSON Headers {..} =
    Core.object
      ( Core.catMaybes
          [ ("locations" Core..=) Core.<$> locations,
            ("numberOfItems" Core..=) Core.<$> numberOfItems,
            ("postalCodeGroupNames" Core..=) Core.<$> postalCodeGroupNames,
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
            ("deadlineTimezone" Core..=) Core.<$> deadlineTimezone,
            ("holidayId" Core..=) Core.<$> holidayId,
            ("visibleFromDate" Core..=) Core.<$> visibleFromDate
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
            Core.<*> ( o
                         Core..:? "deliveryGuaranteeHour"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON HolidaysHoliday where
  toJSON HolidaysHoliday {..} =
    Core.object
      ( Core.catMaybes
          [ ("countryCode" Core..=) Core.<$> countryCode,
            ("date" Core..=) Core.<$> date,
            ("deliveryGuaranteeDate" Core..=) Core.<$> deliveryGuaranteeDate,
            ("deliveryGuaranteeHour" Core..=)
              Core.. Core.AsText
              Core.<$> deliveryGuaranteeHour,
            ("id" Core..=) Core.<$> id,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Input field that needs to be available to the merchant. If the field is marked as required, then a value needs to be provided for a successful processing of the request.
--
-- /See:/ 'newInputField' smart constructor.
data InputField = InputField
  { -- | Input field to provide a boolean value. Corresponds to the <https://www.w3.org/TR/2012/WD-html-markup-20121025/input.checkbox.html#input.checkbox html input type=checkbox>.
    checkboxInput :: (Core.Maybe InputFieldCheckboxInput),
    -- | Input field to select one of the offered choices. Corresponds to the <https://www.w3.org/TR/2012/WD-html-markup-20121025/input.radio.html#input.radio html input type=radio>.
    choiceInput :: (Core.Maybe InputFieldChoiceInput),
    -- | Not for display but need to be sent back for the given input field.
    id :: (Core.Maybe Core.Text),
    -- | Input field label. There may be more information to be shown in a tooltip.
    label :: (Core.Maybe TextWithTooltip),
    -- | Whether the field is required. The action button needs to stay disabled till values for all required fields are provided.
    required :: (Core.Maybe Core.Bool),
    -- | Input field to provide text information. Corresponds to the <https://www.w3.org/TR/2012/WD-html-markup-20121025/input.text.html#input.text html input type=text> or <https://www.w3.org/TR/2012/WD-html-markup-20121025/textarea.html#textarea html textarea>.
    textInput :: (Core.Maybe InputFieldTextInput)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InputField' with the minimum fields required to make a request.
newInputField ::
  InputField
newInputField =
  InputField
    { checkboxInput = Core.Nothing,
      choiceInput = Core.Nothing,
      id = Core.Nothing,
      label = Core.Nothing,
      required = Core.Nothing,
      textInput = Core.Nothing
    }

instance Core.FromJSON InputField where
  parseJSON =
    Core.withObject
      "InputField"
      ( \o ->
          InputField
            Core.<$> (o Core..:? "checkboxInput")
            Core.<*> (o Core..:? "choiceInput")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "label")
            Core.<*> (o Core..:? "required")
            Core.<*> (o Core..:? "textInput")
      )

instance Core.ToJSON InputField where
  toJSON InputField {..} =
    Core.object
      ( Core.catMaybes
          [ ("checkboxInput" Core..=) Core.<$> checkboxInput,
            ("choiceInput" Core..=) Core.<$> choiceInput,
            ("id" Core..=) Core.<$> id,
            ("label" Core..=) Core.<$> label,
            ("required" Core..=) Core.<$> required,
            ("textInput" Core..=) Core.<$> textInput
          ]
      )

-- | Checkbox input allows merchants to provide a boolean value. Corresponds to the <https://www.w3.org/TR/2012/WD-html-markup-20121025/input.checkbox.html#input.checkbox html input type=checkbox>. If merchant checks the box, the input value for the field is @true@, otherwise it is @false@. This type of input is often used as a confirmation that the merchant completed required steps before they are allowed to start the action. In such a case, the input field is marked as required and the button to trigger the action should stay disabled until the merchant checks the box.
--
-- /See:/ 'newInputFieldCheckboxInput' smart constructor.
data InputFieldCheckboxInput = InputFieldCheckboxInput
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InputFieldCheckboxInput' with the minimum fields required to make a request.
newInputFieldCheckboxInput ::
  InputFieldCheckboxInput
newInputFieldCheckboxInput = InputFieldCheckboxInput

instance Core.FromJSON InputFieldCheckboxInput where
  parseJSON =
    Core.withObject
      "InputFieldCheckboxInput"
      (\o -> Core.pure InputFieldCheckboxInput)

instance Core.ToJSON InputFieldCheckboxInput where
  toJSON = Core.const Core.emptyObject

-- | Choice input allows merchants to select one of the offered choices. Some choices may be linked to additional input fields that should be displayed under or next to the choice option. The value for the additional input field needs to be provided only when the specific choice is selected by the merchant. For example, additional input field can be hidden or disabled until the merchant selects the specific choice.
--
-- /See:/ 'newInputFieldChoiceInput' smart constructor.
newtype InputFieldChoiceInput = InputFieldChoiceInput
  { -- | A list of choices. Only one option can be selected.
    options :: (Core.Maybe [InputFieldChoiceInputChoiceInputOption])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InputFieldChoiceInput' with the minimum fields required to make a request.
newInputFieldChoiceInput ::
  InputFieldChoiceInput
newInputFieldChoiceInput =
  InputFieldChoiceInput {options = Core.Nothing}

instance Core.FromJSON InputFieldChoiceInput where
  parseJSON =
    Core.withObject
      "InputFieldChoiceInput"
      (\o -> InputFieldChoiceInput Core.<$> (o Core..:? "options"))

instance Core.ToJSON InputFieldChoiceInput where
  toJSON InputFieldChoiceInput {..} =
    Core.object
      (Core.catMaybes [("options" Core..=) Core.<$> options])

-- | A choice that merchant can select.
--
-- /See:/ 'newInputFieldChoiceInputChoiceInputOption' smart constructor.
data InputFieldChoiceInputChoiceInputOption = InputFieldChoiceInputChoiceInputOption
  { -- | Input that should be displayed when this option is selected. The additional input will not contain a @ChoiceInput@.
    additionalInput :: (Core.Maybe InputField),
    -- | Not for display but need to be sent back for the selected choice option.
    id :: (Core.Maybe Core.Text),
    -- | Short description of the choice option. There may be more information to be shown as a tooltip.
    label :: (Core.Maybe TextWithTooltip)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InputFieldChoiceInputChoiceInputOption' with the minimum fields required to make a request.
newInputFieldChoiceInputChoiceInputOption ::
  InputFieldChoiceInputChoiceInputOption
newInputFieldChoiceInputChoiceInputOption =
  InputFieldChoiceInputChoiceInputOption
    { additionalInput =
        Core.Nothing,
      id = Core.Nothing,
      label = Core.Nothing
    }

instance Core.FromJSON InputFieldChoiceInputChoiceInputOption where
  parseJSON =
    Core.withObject
      "InputFieldChoiceInputChoiceInputOption"
      ( \o ->
          InputFieldChoiceInputChoiceInputOption
            Core.<$> (o Core..:? "additionalInput")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "label")
      )

instance Core.ToJSON InputFieldChoiceInputChoiceInputOption where
  toJSON InputFieldChoiceInputChoiceInputOption {..} =
    Core.object
      ( Core.catMaybes
          [ ("additionalInput" Core..=) Core.<$> additionalInput,
            ("id" Core..=) Core.<$> id,
            ("label" Core..=) Core.<$> label
          ]
      )

-- | Text input allows merchants to provide a text value.
--
-- /See:/ 'newInputFieldTextInput' smart constructor.
data InputFieldTextInput = InputFieldTextInput
  { -- | Additional info regarding the field to be displayed to merchant. For example, warning to not include personal identifiable information. There may be more information to be shown in a tooltip.
    additionalInfo :: (Core.Maybe TextWithTooltip),
    -- | Text to be used as the <https://www.w3.org/TR/WCAG20-TECHS/ARIA14.html aria-label> for the input.
    ariaLabel :: (Core.Maybe Core.Text),
    -- | Information about the required format. If present, it should be shown close to the input field to help merchants to provide a correct value. For example: \"VAT numbers should be in a format similar to SK9999999999\"
    formatInfo :: (Core.Maybe Core.Text),
    -- | Type of the text input
    type' :: (Core.Maybe InputFieldTextInput_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InputFieldTextInput' with the minimum fields required to make a request.
newInputFieldTextInput ::
  InputFieldTextInput
newInputFieldTextInput =
  InputFieldTextInput
    { additionalInfo = Core.Nothing,
      ariaLabel = Core.Nothing,
      formatInfo = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON InputFieldTextInput where
  parseJSON =
    Core.withObject
      "InputFieldTextInput"
      ( \o ->
          InputFieldTextInput
            Core.<$> (o Core..:? "additionalInfo")
            Core.<*> (o Core..:? "ariaLabel")
            Core.<*> (o Core..:? "formatInfo")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON InputFieldTextInput where
  toJSON InputFieldTextInput {..} =
    Core.object
      ( Core.catMaybes
          [ ("additionalInfo" Core..=) Core.<$> additionalInfo,
            ("ariaLabel" Core..=) Core.<$> ariaLabel,
            ("formatInfo" Core..=) Core.<$> formatInfo,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Input provided by the merchant for input field.
--
-- /See:/ 'newInputValue' smart constructor.
data InputValue = InputValue
  { -- | Value for checkbox input field.
    checkboxInputValue :: (Core.Maybe InputValueCheckboxInputValue),
    -- | Value for choice input field.
    choiceInputValue :: (Core.Maybe InputValueChoiceInputValue),
    -- | Required. Id of the corresponding input field.
    inputFieldId :: (Core.Maybe Core.Text),
    -- | Value for text input field.
    textInputValue :: (Core.Maybe InputValueTextInputValue)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InputValue' with the minimum fields required to make a request.
newInputValue ::
  InputValue
newInputValue =
  InputValue
    { checkboxInputValue = Core.Nothing,
      choiceInputValue = Core.Nothing,
      inputFieldId = Core.Nothing,
      textInputValue = Core.Nothing
    }

instance Core.FromJSON InputValue where
  parseJSON =
    Core.withObject
      "InputValue"
      ( \o ->
          InputValue
            Core.<$> (o Core..:? "checkboxInputValue")
            Core.<*> (o Core..:? "choiceInputValue")
            Core.<*> (o Core..:? "inputFieldId")
            Core.<*> (o Core..:? "textInputValue")
      )

instance Core.ToJSON InputValue where
  toJSON InputValue {..} =
    Core.object
      ( Core.catMaybes
          [ ("checkboxInputValue" Core..=) Core.<$> checkboxInputValue,
            ("choiceInputValue" Core..=) Core.<$> choiceInputValue,
            ("inputFieldId" Core..=) Core.<$> inputFieldId,
            ("textInputValue" Core..=) Core.<$> textInputValue
          ]
      )

-- | Value for checkbox input field.
--
-- /See:/ 'newInputValueCheckboxInputValue' smart constructor.
newtype InputValueCheckboxInputValue = InputValueCheckboxInputValue
  { -- | Required. True if the merchant checked the box field. False otherwise.
    value :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InputValueCheckboxInputValue' with the minimum fields required to make a request.
newInputValueCheckboxInputValue ::
  InputValueCheckboxInputValue
newInputValueCheckboxInputValue =
  InputValueCheckboxInputValue {value = Core.Nothing}

instance Core.FromJSON InputValueCheckboxInputValue where
  parseJSON =
    Core.withObject
      "InputValueCheckboxInputValue"
      (\o -> InputValueCheckboxInputValue Core.<$> (o Core..:? "value"))

instance Core.ToJSON InputValueCheckboxInputValue where
  toJSON InputValueCheckboxInputValue {..} =
    Core.object (Core.catMaybes [("value" Core..=) Core.<$> value])

-- | Value for choice input field.
--
-- /See:/ 'newInputValueChoiceInputValue' smart constructor.
newtype InputValueChoiceInputValue = InputValueChoiceInputValue
  { -- | Required. Id of the option that was selected by the merchant.
    choiceInputOptionId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InputValueChoiceInputValue' with the minimum fields required to make a request.
newInputValueChoiceInputValue ::
  InputValueChoiceInputValue
newInputValueChoiceInputValue =
  InputValueChoiceInputValue {choiceInputOptionId = Core.Nothing}

instance Core.FromJSON InputValueChoiceInputValue where
  parseJSON =
    Core.withObject
      "InputValueChoiceInputValue"
      ( \o ->
          InputValueChoiceInputValue
            Core.<$> (o Core..:? "choiceInputOptionId")
      )

instance Core.ToJSON InputValueChoiceInputValue where
  toJSON InputValueChoiceInputValue {..} =
    Core.object
      ( Core.catMaybes
          [("choiceInputOptionId" Core..=) Core.<$> choiceInputOptionId]
      )

-- | Value for text input field.
--
-- /See:/ 'newInputValueTextInputValue' smart constructor.
newtype InputValueTextInputValue = InputValueTextInputValue
  { -- | Required. Text provided by the merchant.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InputValueTextInputValue' with the minimum fields required to make a request.
newInputValueTextInputValue ::
  InputValueTextInputValue
newInputValueTextInputValue =
  InputValueTextInputValue {value = Core.Nothing}

instance Core.FromJSON InputValueTextInputValue where
  parseJSON =
    Core.withObject
      "InputValueTextInputValue"
      (\o -> InputValueTextInputValue Core.<$> (o Core..:? "value"))

instance Core.ToJSON InputValueTextInputValue where
  toJSON InputValueTextInputValue {..} =
    Core.object (Core.catMaybes [("value" Core..=) Core.<$> value])

-- | Request message for the @InsertCheckoutSettings@ method.
--
-- /See:/ 'newInsertCheckoutSettingsRequest' smart constructor.
newtype InsertCheckoutSettingsRequest = InsertCheckoutSettingsRequest
  { -- | Required. The @UrlSettings@ for the request. The presence of URL settings indicates @Checkout@ enrollment.
    uriSettings :: (Core.Maybe UrlSettings)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InsertCheckoutSettingsRequest' with the minimum fields required to make a request.
newInsertCheckoutSettingsRequest ::
  InsertCheckoutSettingsRequest
newInsertCheckoutSettingsRequest =
  InsertCheckoutSettingsRequest {uriSettings = Core.Nothing}

instance Core.FromJSON InsertCheckoutSettingsRequest where
  parseJSON =
    Core.withObject
      "InsertCheckoutSettingsRequest"
      ( \o ->
          InsertCheckoutSettingsRequest Core.<$> (o Core..:? "uriSettings")
      )

instance Core.ToJSON InsertCheckoutSettingsRequest where
  toJSON InsertCheckoutSettingsRequest {..} =
    Core.object
      (Core.catMaybes [("uriSettings" Core..=) Core.<$> uriSettings])

-- | Details of a monthly installment payment offering. <https://support.google.com/merchants/answer/6324474 Learn more> about installments.
--
-- /See:/ 'newInstallment' smart constructor.
data Installment = Installment
  { -- | The amount the buyer has to pay per month.
    amount :: (Core.Maybe Price),
    -- | Optional. Type of installment payments. Supported values are: - \"@finance@\" - \"@lease@\"
    creditType :: (Core.Maybe Core.Text),
    -- | Optional. The initial down payment amount the buyer has to pay.
    downpayment :: (Core.Maybe Price),
    -- | The number of installments the buyer has to pay.
    months :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Installment' with the minimum fields required to make a request.
newInstallment ::
  Installment
newInstallment =
  Installment
    { amount = Core.Nothing,
      creditType = Core.Nothing,
      downpayment = Core.Nothing,
      months = Core.Nothing
    }

instance Core.FromJSON Installment where
  parseJSON =
    Core.withObject
      "Installment"
      ( \o ->
          Installment
            Core.<$> (o Core..:? "amount")
            Core.<*> (o Core..:? "creditType")
            Core.<*> (o Core..:? "downpayment")
            Core.<*> (o Core..:? "months" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON Installment where
  toJSON Installment {..} =
    Core.object
      ( Core.catMaybes
          [ ("amount" Core..=) Core.<$> amount,
            ("creditType" Core..=) Core.<$> creditType,
            ("downpayment" Core..=) Core.<$> downpayment,
            ("months" Core..=) Core.. Core.AsText Core.<$> months
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
            Core.<$> ( o
                         Core..:? "labelIds"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
      )

instance Core.ToJSON LabelIds where
  toJSON LabelIds {..} =
    Core.object
      ( Core.catMaybes
          [ ("labelIds" Core..=)
              Core.. Core.fmap Core.AsText
              Core.<$> labelIds
          ]
      )

--
-- /See:/ 'newLiaAboutPageSettings' smart constructor.
data LiaAboutPageSettings = LiaAboutPageSettings
  { -- | The status of the verification process for the About page. Supported values are: - \"@active@\" - \"@inactive@\" - \"@pending@\"
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
            Core.<$> (o Core..:? "status")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON LiaAboutPageSettings where
  toJSON LiaAboutPageSettings {..} =
    Core.object
      ( Core.catMaybes
          [("status" Core..=) Core.<$> status, ("url" Core..=) Core.<$> url]
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
    -- | The omnichannel experience configured for this country.
    omnichannelExperience :: (Core.Maybe LiaOmnichannelExperience),
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
      omnichannelExperience = Core.Nothing,
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
            Core.<*> (o Core..:? "omnichannelExperience")
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
            ("omnichannelExperience" Core..=) Core.<$> omnichannelExperience,
            ("onDisplayToOrder" Core..=) Core.<$> onDisplayToOrder,
            ("posDataProvider" Core..=) Core.<$> posDataProvider,
            ("storePickupActive" Core..=) Core.<$> storePickupActive
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
    { inventoryVerificationContactEmail =
        Core.Nothing,
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

-- | Omnichannel experience details.
--
-- /See:/ 'newLiaOmnichannelExperience' smart constructor.
data LiaOmnichannelExperience = LiaOmnichannelExperience
  { -- | The CLDR country code (for example, \"US\").
    country :: (Core.Maybe Core.Text),
    -- | The Local Store Front (LSF) type for this country. Acceptable values are: - \"@ghlsf@\" (Google-Hosted Local Store Front) - \"@mhlsfBasic@\" (Merchant-Hosted Local Store Front Basic) - \"@mhlsfFull@\" (Merchant-Hosted Local Store Front Full) More details about these types can be found here.
    lsfType :: (Core.Maybe Core.Text),
    -- | The Pickup types for this country. Acceptable values are: - \"@pickupToday@\" - \"@pickupLater@\"
    pickupTypes :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiaOmnichannelExperience' with the minimum fields required to make a request.
newLiaOmnichannelExperience ::
  LiaOmnichannelExperience
newLiaOmnichannelExperience =
  LiaOmnichannelExperience
    { country = Core.Nothing,
      lsfType = Core.Nothing,
      pickupTypes = Core.Nothing
    }

instance Core.FromJSON LiaOmnichannelExperience where
  parseJSON =
    Core.withObject
      "LiaOmnichannelExperience"
      ( \o ->
          LiaOmnichannelExperience
            Core.<$> (o Core..:? "country")
            Core.<*> (o Core..:? "lsfType")
            Core.<*> (o Core..:? "pickupTypes")
      )

instance Core.ToJSON LiaOmnichannelExperience where
  toJSON LiaOmnichannelExperience {..} =
    Core.object
      ( Core.catMaybes
          [ ("country" Core..=) Core.<$> country,
            ("lsfType" Core..=) Core.<$> lsfType,
            ("pickupTypes" Core..=) Core.<$> pickupTypes
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
          [ ("shippingCostPolicyUrl" Core..=) Core.<$> shippingCostPolicyUrl,
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
            Core.<$> (o Core..:? "posDataProviderId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "posExternalAccountId")
      )

instance Core.ToJSON LiaPosDataProvider where
  toJSON LiaPosDataProvider {..} =
    Core.object
      ( Core.catMaybes
          [ ("posDataProviderId" Core..=)
              Core.. Core.AsText
              Core.<$> posDataProviderId,
            ("posExternalAccountId" Core..=) Core.<$> posExternalAccountId
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
            Core.<$> (o Core..:? "accountId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "countrySettings")
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON LiaSettings where
  toJSON LiaSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.. Core.AsText Core.<$> accountId,
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
          LiasettingsCustomBatchRequest Core.<$> (o Core..:? "entries")
      )

instance Core.ToJSON LiasettingsCustomBatchRequest where
  toJSON LiasettingsCustomBatchRequest {..} =
    Core.object
      (Core.catMaybes [("entries" Core..=) Core.<$> entries])

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
    -- | The omnichannel experience for a country. Required only for SetOmnichannelExperience.
    omnichannelExperience :: (Core.Maybe LiaOmnichannelExperience),
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
      omnichannelExperience = Core.Nothing,
      posDataProviderId = Core.Nothing,
      posExternalAccountId = Core.Nothing
    }

instance Core.FromJSON LiasettingsCustomBatchRequestEntry where
  parseJSON =
    Core.withObject
      "LiasettingsCustomBatchRequestEntry"
      ( \o ->
          LiasettingsCustomBatchRequestEntry
            Core.<$> (o Core..:? "accountId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "batchId")
            Core.<*> (o Core..:? "contactEmail")
            Core.<*> (o Core..:? "contactName")
            Core.<*> (o Core..:? "country")
            Core.<*> (o Core..:? "gmbEmail")
            Core.<*> (o Core..:? "liaSettings")
            Core.<*> (o Core..:? "merchantId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "method")
            Core.<*> (o Core..:? "omnichannelExperience")
            Core.<*> (o Core..:? "posDataProviderId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "posExternalAccountId")
      )

instance Core.ToJSON LiasettingsCustomBatchRequestEntry where
  toJSON LiasettingsCustomBatchRequestEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.. Core.AsText Core.<$> accountId,
            ("batchId" Core..=) Core.<$> batchId,
            ("contactEmail" Core..=) Core.<$> contactEmail,
            ("contactName" Core..=) Core.<$> contactName,
            ("country" Core..=) Core.<$> country,
            ("gmbEmail" Core..=) Core.<$> gmbEmail,
            ("liaSettings" Core..=) Core.<$> liaSettings,
            ("merchantId" Core..=) Core.. Core.AsText Core.<$> merchantId,
            ("method" Core..=) Core.<$> method,
            ("omnichannelExperience" Core..=) Core.<$> omnichannelExperience,
            ("posDataProviderId" Core..=)
              Core.. Core.AsText
              Core.<$> posDataProviderId,
            ("posExternalAccountId" Core..=) Core.<$> posExternalAccountId
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
  LiasettingsCustomBatchResponse
    { entries = Core.Nothing,
      kind = Core.Nothing
    }

instance Core.FromJSON LiasettingsCustomBatchResponse where
  parseJSON =
    Core.withObject
      "LiasettingsCustomBatchResponse"
      ( \o ->
          LiasettingsCustomBatchResponse
            Core.<$> (o Core..:? "entries")
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
    -- | The updated omnichannel experience for a country.
    omnichannelExperience :: (Core.Maybe LiaOmnichannelExperience),
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
      omnichannelExperience = Core.Nothing,
      posDataProviders = Core.Nothing
    }

instance Core.FromJSON LiasettingsCustomBatchResponseEntry where
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
            Core.<*> (o Core..:? "omnichannelExperience")
            Core.<*> (o Core..:? "posDataProviders")
      )

instance Core.ToJSON LiasettingsCustomBatchResponseEntry where
  toJSON LiasettingsCustomBatchResponseEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchId" Core..=) Core.<$> batchId,
            ("errors" Core..=) Core.<$> errors,
            ("gmbAccounts" Core..=) Core.<$> gmbAccounts,
            ("kind" Core..=) Core.<$> kind,
            ("liaSettings" Core..=) Core.<$> liaSettings,
            ("omnichannelExperience" Core..=) Core.<$> omnichannelExperience,
            ("posDataProviders" Core..=) Core.<$> posDataProviders
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
    { accountId =
        Core.Nothing,
      gmbAccounts = Core.Nothing,
      kind = Core.Nothing
    }

instance Core.FromJSON LiasettingsGetAccessibleGmbAccountsResponse where
  parseJSON =
    Core.withObject
      "LiasettingsGetAccessibleGmbAccountsResponse"
      ( \o ->
          LiasettingsGetAccessibleGmbAccountsResponse
            Core.<$> (o Core..:? "accountId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "gmbAccounts")
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON LiasettingsGetAccessibleGmbAccountsResponse where
  toJSON LiasettingsGetAccessibleGmbAccountsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.. Core.AsText Core.<$> accountId,
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

instance Core.FromJSON LiasettingsListPosDataProvidersResponse where
  parseJSON =
    Core.withObject
      "LiasettingsListPosDataProvidersResponse"
      ( \o ->
          LiasettingsListPosDataProvidersResponse
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "posDataProviders")
      )

instance Core.ToJSON LiasettingsListPosDataProvidersResponse where
  toJSON LiasettingsListPosDataProvidersResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("posDataProviders" Core..=) Core.<$> posDataProviders
          ]
      )

--
-- /See:/ 'newLiasettingsListResponse' smart constructor.
data LiasettingsListResponse = LiasettingsListResponse
  { -- | Identifies what kind of resource this is. Value: the fixed string \"@content#liasettingsListResponse@\".
    kind :: (Core.Maybe Core.Text),
    -- | The token for the retrieval of the next page of LIA settings.
    nextPageToken :: (Core.Maybe Core.Text),
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
            Core.<*> (o Core..:? "resources")
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

instance Core.FromJSON LiasettingsRequestGmbAccessResponse where
  parseJSON =
    Core.withObject
      "LiasettingsRequestGmbAccessResponse"
      ( \o ->
          LiasettingsRequestGmbAccessResponse Core.<$> (o Core..:? "kind")
      )

instance Core.ToJSON LiasettingsRequestGmbAccessResponse where
  toJSON LiasettingsRequestGmbAccessResponse {..} =
    Core.object (Core.catMaybes [("kind" Core..=) Core.<$> kind])

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
  LiasettingsRequestInventoryVerificationResponse
    { kind =
        Core.Nothing
    }

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
  toJSON LiasettingsRequestInventoryVerificationResponse {..} =
    Core.object (Core.catMaybes [("kind" Core..=) Core.<$> kind])

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
  LiasettingsSetInventoryVerificationContactResponse
    { kind =
        Core.Nothing
    }

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
  toJSON LiasettingsSetInventoryVerificationContactResponse {..} =
    Core.object (Core.catMaybes [("kind" Core..=) Core.<$> kind])

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

instance Core.FromJSON LiasettingsSetPosDataProviderResponse where
  parseJSON =
    Core.withObject
      "LiasettingsSetPosDataProviderResponse"
      ( \o ->
          LiasettingsSetPosDataProviderResponse Core.<$> (o Core..:? "kind")
      )

instance Core.ToJSON LiasettingsSetPosDataProviderResponse where
  toJSON LiasettingsSetPosDataProviderResponse {..} =
    Core.object (Core.catMaybes [("kind" Core..=) Core.<$> kind])

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
newLinkService =
  LinkService {service = Core.Nothing, status = Core.Nothing}

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
  LinkedAccount
    { linkedAccountId = Core.Nothing,
      services = Core.Nothing
    }

instance Core.FromJSON LinkedAccount where
  parseJSON =
    Core.withObject
      "LinkedAccount"
      ( \o ->
          LinkedAccount
            Core.<$> (o Core..:? "linkedAccountId")
            Core.<*> (o Core..:? "services")
      )

instance Core.ToJSON LinkedAccount where
  toJSON LinkedAccount {..} =
    Core.object
      ( Core.catMaybes
          [ ("linkedAccountId" Core..=) Core.<$> linkedAccountId,
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
            Core.<$> (o Core..:? "accountLabels")
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
  ListAccountReturnCarrierResponse
    { accountReturnCarriers =
        Core.Nothing
    }

instance Core.FromJSON ListAccountReturnCarrierResponse where
  parseJSON =
    Core.withObject
      "ListAccountReturnCarrierResponse"
      ( \o ->
          ListAccountReturnCarrierResponse
            Core.<$> (o Core..:? "accountReturnCarriers")
      )

instance Core.ToJSON ListAccountReturnCarrierResponse where
  toJSON ListAccountReturnCarrierResponse {..} =
    Core.object
      ( Core.catMaybes
          [("accountReturnCarriers" Core..=) Core.<$> accountReturnCarriers]
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
            Core.<*> (o Core..:? "resources")
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
            Core.<*> (o Core..:? "resources")
      )

instance Core.ToJSON ListCollectionsResponse where
  toJSON ListCollectionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("resources" Core..=) Core.<$> resources
          ]
      )

-- | Response message for the ListConversionSources method.
--
-- /See:/ 'newListConversionSourcesResponse' smart constructor.
data ListConversionSourcesResponse = ListConversionSourcesResponse
  { -- | List of conversion sources.
    conversionSources :: (Core.Maybe [ConversionSource]),
    -- | Token to be used to fetch the next results page.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListConversionSourcesResponse' with the minimum fields required to make a request.
newListConversionSourcesResponse ::
  ListConversionSourcesResponse
newListConversionSourcesResponse =
  ListConversionSourcesResponse
    { conversionSources = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListConversionSourcesResponse where
  parseJSON =
    Core.withObject
      "ListConversionSourcesResponse"
      ( \o ->
          ListConversionSourcesResponse
            Core.<$> (o Core..:? "conversionSources")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListConversionSourcesResponse where
  toJSON ListConversionSourcesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("conversionSources" Core..=) Core.<$> conversionSources,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
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
  ListCssesResponse
    { csses = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListCssesResponse where
  parseJSON =
    Core.withObject
      "ListCssesResponse"
      ( \o ->
          ListCssesResponse
            Core.<$> (o Core..:? "csses")
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

-- | Response message for the ListMethodQuotas method.
--
-- /See:/ 'newListMethodQuotasResponse' smart constructor.
data ListMethodQuotasResponse = ListMethodQuotasResponse
  { -- | The current quota usage and limits per each method.
    methodQuotas :: (Core.Maybe [MethodQuota]),
    -- | A token, which can be sent as @page_token@ to retrieve the next page. If this field is omitted, there are no subsequent pages.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListMethodQuotasResponse' with the minimum fields required to make a request.
newListMethodQuotasResponse ::
  ListMethodQuotasResponse
newListMethodQuotasResponse =
  ListMethodQuotasResponse
    { methodQuotas = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListMethodQuotasResponse where
  parseJSON =
    Core.withObject
      "ListMethodQuotasResponse"
      ( \o ->
          ListMethodQuotasResponse
            Core.<$> (o Core..:? "methodQuotas")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListMethodQuotasResponse where
  toJSON ListMethodQuotasResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("methodQuotas" Core..=) Core.<$> methodQuotas,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response message for Promotions.List method.
--
-- /See:/ 'newListPromotionResponse' smart constructor.
data ListPromotionResponse = ListPromotionResponse
  { -- | A token, which can be sent as @page_token@ to retrieve the next page. If this field is omitted, there are no subsequent pages.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | List of all available promotions for the merchant.
    promotions :: (Core.Maybe [Promotion])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListPromotionResponse' with the minimum fields required to make a request.
newListPromotionResponse ::
  ListPromotionResponse
newListPromotionResponse =
  ListPromotionResponse
    { nextPageToken = Core.Nothing,
      promotions = Core.Nothing
    }

instance Core.FromJSON ListPromotionResponse where
  parseJSON =
    Core.withObject
      "ListPromotionResponse"
      ( \o ->
          ListPromotionResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "promotions")
      )

instance Core.ToJSON ListPromotionResponse where
  toJSON ListPromotionResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("promotions" Core..=) Core.<$> promotions
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
  ListRegionsResponse
    { nextPageToken = Core.Nothing,
      regions = Core.Nothing
    }

instance Core.FromJSON ListRegionsResponse where
  parseJSON =
    Core.withObject
      "ListRegionsResponse"
      ( \o ->
          ListRegionsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "regions")
      )

instance Core.ToJSON ListRegionsResponse where
  toJSON ListRegionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("regions" Core..=) Core.<$> regions
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
            Core.<$> (o Core..:? "returnPolicies")
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
  { -- | The availability of the product. For accepted attribute values, see the local product inventory feed specification.
    availability :: (Core.Maybe Core.Text),
    -- | A list of custom (merchant-provided) attributes. Can also be used to submit any attribute of the feed specification in its generic form, for example, @{ \"name\": \"size type\", \"value\": \"regular\" }@.
    customAttributes :: (Core.Maybe [CustomAttribute]),
    -- | The in-store product location.
    instoreProductLocation :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#localInventory@\"
    kind :: (Core.Maybe Core.Text),
    -- | The supported pickup method for this offer. Unless the value is \"not supported\", this field must be submitted together with @pickupSla@. For accepted attribute values, see the local product inventory feed specification.
    pickupMethod :: (Core.Maybe Core.Text),
    -- | The expected date that an order will be ready for pickup relative to the order date. Must be submitted together with @pickupMethod@. For accepted attribute values, see the local product inventory feed specification.
    pickupSla :: (Core.Maybe Core.Text),
    -- | The price of the product.
    price :: (Core.Maybe Price),
    -- | The quantity of the product. Must be nonnegative.
    quantity :: (Core.Maybe Core.Word32),
    -- | The sale price of the product. Mandatory if @sale_price_effective_date@ is defined.
    salePrice :: (Core.Maybe Price),
    -- | A date range represented by a pair of ISO 8601 dates separated by a space, comma, or slash. Both dates may be specified as \'null\' if undecided.
    salePriceEffectiveDate :: (Core.Maybe Core.Text),
    -- | Required. The store code of this local inventory resource.
    storeCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LocalInventory' with the minimum fields required to make a request.
newLocalInventory ::
  LocalInventory
newLocalInventory =
  LocalInventory
    { availability = Core.Nothing,
      customAttributes = Core.Nothing,
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
            Core.<*> (o Core..:? "customAttributes")
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
            ("customAttributes" Core..=) Core.<$> customAttributes,
            ("instoreProductLocation" Core..=) Core.<$> instoreProductLocation,
            ("kind" Core..=) Core.<$> kind,
            ("pickupMethod" Core..=) Core.<$> pickupMethod,
            ("pickupSla" Core..=) Core.<$> pickupSla,
            ("price" Core..=) Core.<$> price,
            ("quantity" Core..=) Core.<$> quantity,
            ("salePrice" Core..=) Core.<$> salePrice,
            ("salePriceEffectiveDate" Core..=) Core.<$> salePriceEffectiveDate,
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

instance Core.FromJSON LocalinventoryCustomBatchRequest where
  parseJSON =
    Core.withObject
      "LocalinventoryCustomBatchRequest"
      ( \o ->
          LocalinventoryCustomBatchRequest Core.<$> (o Core..:? "entries")
      )

instance Core.ToJSON LocalinventoryCustomBatchRequest where
  toJSON LocalinventoryCustomBatchRequest {..} =
    Core.object
      (Core.catMaybes [("entries" Core..=) Core.<$> entries])

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

instance Core.FromJSON LocalinventoryCustomBatchRequestEntry where
  parseJSON =
    Core.withObject
      "LocalinventoryCustomBatchRequestEntry"
      ( \o ->
          LocalinventoryCustomBatchRequestEntry
            Core.<$> (o Core..:? "batchId")
            Core.<*> (o Core..:? "localInventory")
            Core.<*> (o Core..:? "merchantId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "method")
            Core.<*> (o Core..:? "productId")
      )

instance Core.ToJSON LocalinventoryCustomBatchRequestEntry where
  toJSON LocalinventoryCustomBatchRequestEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchId" Core..=) Core.<$> batchId,
            ("localInventory" Core..=) Core.<$> localInventory,
            ("merchantId" Core..=) Core.. Core.AsText Core.<$> merchantId,
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

instance Core.FromJSON LocalinventoryCustomBatchResponse where
  parseJSON =
    Core.withObject
      "LocalinventoryCustomBatchResponse"
      ( \o ->
          LocalinventoryCustomBatchResponse
            Core.<$> (o Core..:? "entries")
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON LocalinventoryCustomBatchResponse where
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
    -- | A list of errors for failed custombatch entries. /Note:/ Schema errors fail the whole request.
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

instance Core.FromJSON LocalinventoryCustomBatchResponseEntry where
  parseJSON =
    Core.withObject
      "LocalinventoryCustomBatchResponseEntry"
      ( \o ->
          LocalinventoryCustomBatchResponseEntry
            Core.<$> (o Core..:? "batchId")
            Core.<*> (o Core..:? "errors")
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON LocalinventoryCustomBatchResponseEntry where
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
      (\o -> LocationIdSet Core.<$> (o Core..:? "locationIds"))

instance Core.ToJSON LocationIdSet where
  toJSON LocationIdSet {..} =
    Core.object
      (Core.catMaybes [("locationIds" Core..=) Core.<$> locationIds])

-- | Allows the setting up of loyalty program benefits (for example price or points). https:\/\/support.google.com\/merchants\/answer\/12922446
--
-- /See:/ 'newLoyaltyProgram' smart constructor.
data LoyaltyProgram = LoyaltyProgram
  { -- | Optional. The cashback that can be used for future purchases.
    cashbackForFutureUse :: (Core.Maybe Price),
    -- | Optional. The amount of loyalty points earned on a purchase.
    loyaltyPoints :: (Core.Maybe Core.Int64),
    -- | Optional. A date range during which the item is eligible for member price. If not specified, the member price is always applicable. The date range is represented by a pair of ISO 8601 dates separated by a space, comma, or slash.
    memberPriceEffectiveDate :: (Core.Maybe Core.Text),
    -- | Optional. The price for members of the given tier (instant discount price). Must be smaller or equal to the regular price.
    price :: (Core.Maybe Price),
    -- | Required. The label of the loyalty program. This is an internal label that uniquely identifies the relationship between a merchant entity and a loyalty program entity. It must be provided so that system can associate the assets below (for example, price and points) with a merchant. The corresponding program must be linked to the merchant account.
    programLabel :: (Core.Maybe Core.Text),
    -- | Optional. The shipping label for the loyalty program. You can use this label to indicate whether this offer has the loyalty shipping benefit. If not specified, the item is not eligible for loyalty shipping for the given loyalty tier.
    shippingLabel :: (Core.Maybe Core.Text),
    -- | Required. The label of the tier within the loyalty program. Must match one of the labels within the program.
    tierLabel :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoyaltyProgram' with the minimum fields required to make a request.
newLoyaltyProgram ::
  LoyaltyProgram
newLoyaltyProgram =
  LoyaltyProgram
    { cashbackForFutureUse = Core.Nothing,
      loyaltyPoints = Core.Nothing,
      memberPriceEffectiveDate = Core.Nothing,
      price = Core.Nothing,
      programLabel = Core.Nothing,
      shippingLabel = Core.Nothing,
      tierLabel = Core.Nothing
    }

instance Core.FromJSON LoyaltyProgram where
  parseJSON =
    Core.withObject
      "LoyaltyProgram"
      ( \o ->
          LoyaltyProgram
            Core.<$> (o Core..:? "cashbackForFutureUse")
            Core.<*> (o Core..:? "loyaltyPoints" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "memberPriceEffectiveDate")
            Core.<*> (o Core..:? "price")
            Core.<*> (o Core..:? "programLabel")
            Core.<*> (o Core..:? "shippingLabel")
            Core.<*> (o Core..:? "tierLabel")
      )

instance Core.ToJSON LoyaltyProgram where
  toJSON LoyaltyProgram {..} =
    Core.object
      ( Core.catMaybes
          [ ("cashbackForFutureUse" Core..=) Core.<$> cashbackForFutureUse,
            ("loyaltyPoints" Core..=)
              Core.. Core.AsText
              Core.<$> loyaltyPoints,
            ("memberPriceEffectiveDate" Core..=)
              Core.<$> memberPriceEffectiveDate,
            ("price" Core..=) Core.<$> price,
            ("programLabel" Core..=) Core.<$> programLabel,
            ("shippingLabel" Core..=) Core.<$> shippingLabel,
            ("tierLabel" Core..=) Core.<$> tierLabel
          ]
      )

-- | \"Merchant Center Destination\" sources can be used to send conversion events from a website using a Google tag directly to a Merchant Center account where the source is created.
--
-- /See:/ 'newMerchantCenterDestination' smart constructor.
data MerchantCenterDestination = MerchantCenterDestination
  { -- | Required. Attribution settings being used for the Merchant Center Destination.
    attributionSettings :: (Core.Maybe AttributionSettings),
    -- | Required. Three-letter currency code (ISO 4217). The currency code defines in which currency the conversions sent to this destination will be reported in Merchant Center.
    currencyCode :: (Core.Maybe Core.Text),
    -- | Output only. Merchant Center Destination ID.
    destinationId :: (Core.Maybe Core.Text),
    -- | Required. Merchant-specified display name for the destination. This is the name that identifies the conversion source within the Merchant Center UI. Limited to 64 characters.
    displayName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MerchantCenterDestination' with the minimum fields required to make a request.
newMerchantCenterDestination ::
  MerchantCenterDestination
newMerchantCenterDestination =
  MerchantCenterDestination
    { attributionSettings = Core.Nothing,
      currencyCode = Core.Nothing,
      destinationId = Core.Nothing,
      displayName = Core.Nothing
    }

instance Core.FromJSON MerchantCenterDestination where
  parseJSON =
    Core.withObject
      "MerchantCenterDestination"
      ( \o ->
          MerchantCenterDestination
            Core.<$> (o Core..:? "attributionSettings")
            Core.<*> (o Core..:? "currencyCode")
            Core.<*> (o Core..:? "destinationId")
            Core.<*> (o Core..:? "displayName")
      )

instance Core.ToJSON MerchantCenterDestination where
  toJSON MerchantCenterDestination {..} =
    Core.object
      ( Core.catMaybes
          [ ("attributionSettings" Core..=) Core.<$> attributionSettings,
            ("currencyCode" Core..=) Core.<$> currencyCode,
            ("destinationId" Core..=) Core.<$> destinationId,
            ("displayName" Core..=) Core.<$> displayName
          ]
      )

-- | The quota information per method in the Content API.
--
-- /See:/ 'newMethodQuota' smart constructor.
data MethodQuota = MethodQuota
  { -- | Output only. The method name, for example @products.list@. Method name does not contain version because quota can be shared between different API versions of the same method.
    method :: (Core.Maybe Core.Text),
    -- | Output only. The maximum number of calls allowed per day for the method.
    quotaLimit :: (Core.Maybe Core.Int64),
    -- | Output only. The maximum number of calls allowed per minute for the method.
    quotaMinuteLimit :: (Core.Maybe Core.Int64),
    -- | Output only. The current quota usage, meaning the number of calls already made to the method per day. Usage is reset every day at 12 PM midday UTC.
    quotaUsage :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MethodQuota' with the minimum fields required to make a request.
newMethodQuota ::
  MethodQuota
newMethodQuota =
  MethodQuota
    { method = Core.Nothing,
      quotaLimit = Core.Nothing,
      quotaMinuteLimit = Core.Nothing,
      quotaUsage = Core.Nothing
    }

instance Core.FromJSON MethodQuota where
  parseJSON =
    Core.withObject
      "MethodQuota"
      ( \o ->
          MethodQuota
            Core.<$> (o Core..:? "method")
            Core.<*> (o Core..:? "quotaLimit" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "quotaMinuteLimit" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "quotaUsage" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON MethodQuota where
  toJSON MethodQuota {..} =
    Core.object
      ( Core.catMaybes
          [ ("method" Core..=) Core.<$> method,
            ("quotaLimit" Core..=) Core.. Core.AsText Core.<$> quotaLimit,
            ("quotaMinuteLimit" Core..=)
              Core.. Core.AsText
              Core.<$> quotaMinuteLimit,
            ("quotaUsage" Core..=) Core.. Core.AsText Core.<$> quotaUsage
          ]
      )

-- | Performance metrics. Values are only set for metrics requested explicitly in the request\'s search query.
--
-- /See:/ 'newMetrics' smart constructor.
data Metrics = Metrics
  { -- | /Deprecated/: This field is no longer supported and retrieving it returns 0 starting from May 2024. Average order size - the average number of items in an order. __This metric cannot be segmented by product dimensions and customer/country/code.__
    aos :: (Core.Maybe Core.Double),
    -- | /Deprecated/: This field is no longer supported and retrieving it returns 0 starting from May 2024. Average order value in micros (1 millionth of a standard unit, 1 USD = 1000000 micros) - the average value (total price of items) of all placed orders. The currency of the returned value is stored in the currency/code segment. If this metric is selected, \'segments.currency/code\' is automatically added to the SELECT clause in the search query (unless it is explicitly selected by the user) and the currency_code segment is populated in the response. __This metric cannot be segmented by product dimensions and customer/country/code.__
    aovMicros :: (Core.Maybe Core.Double),
    -- | Number of clicks.
    clicks :: (Core.Maybe Core.Int64),
    -- | Number of conversions divided by the number of clicks, reported on the impression date. The metric is currently available only for the @FREE_PRODUCT_LISTING@ program.
    conversionRate :: (Core.Maybe Core.Double),
    -- | Value of conversions in micros (1 millionth of a standard unit, 1 USD = 1000000 micros) attributed to the product, reported on the conversion date. The metric is currently available only for the @FREE_PRODUCT_LISTING@ program. The currency of the returned value is stored in the currency/code segment. If this metric is selected, \'segments.currency/code\' is automatically added to the SELECT clause in the search query (unless it is explicitly selected by the user) and the currency_code segment is populated in the response.
    conversionValueMicros :: (Core.Maybe Core.Int64),
    -- | Number of conversions attributed to the product, reported on the conversion date. Depending on the attribution model, a conversion might be distributed across multiple clicks, where each click gets its own credit assigned. This metric is a sum of all such credits. The metric is currently available only for the @FREE_PRODUCT_LISTING@ program.
    conversions :: (Core.Maybe Core.Double),
    -- | Click-through rate - the number of clicks merchant\'s products receive (clicks) divided by the number of times the products are shown (impressions).
    ctr :: (Core.Maybe Core.Double),
    -- | /Deprecated/: This field is no longer supported and retrieving it returns 0 starting from May 2024. Average number of days between an order being placed and the order being fully shipped, reported on the last shipment date. __This metric cannot be segmented by product dimensions and customer/country/code.__
    daysToShip :: (Core.Maybe Core.Double),
    -- | Number of times merchant\'s products are shown.
    impressions :: (Core.Maybe Core.Int64),
    -- | /Deprecated/: This field is no longer supported and retrieving it returns 0 starting from May 2024. Average number of days between an item being ordered and the item being __This metric cannot be segmented by customer/country/code.__
    itemDaysToShip :: (Core.Maybe Core.Double),
    -- | /Deprecated/: This field is no longer supported and retrieving it returns 0 starting from May 2024. Percentage of shipped items in relation to all finalized items (shipped or rejected by the merchant; unshipped items are not taken into account), reported on the order date. Item fill rate is lowered by merchant rejections. __This metric cannot be segmented by customer/country/code.__
    itemFillRate :: (Core.Maybe Core.Double),
    -- | /Deprecated/: This field is no longer supported and retrieving it returns 0 starting from May 2024. Total price of ordered items in micros (1 millionth of a standard unit, 1 USD = 1000000 micros). Excludes shipping, taxes (US only), and customer cancellations that happened within 30 minutes of placing the order. The currency of the returned value is stored in the currency/code segment. If this metric is selected, \'segments.currency/code\' is automatically added to the SELECT clause in the search query (unless it is explicitly selected by the user) and the currency_code segment is populated in the response. __This metric cannot be segmented by customer/country/code.__
    orderedItemSalesMicros :: (Core.Maybe Core.Int64),
    -- | /Deprecated/: This field is no longer supported and retrieving it returns 0 starting from May 2024. Number of ordered items. Excludes customer cancellations that happened within 30 minutes of placing the order. __This metric cannot be segmented by customer/country/code.__
    orderedItems :: (Core.Maybe Core.Int64),
    -- | /Deprecated/: This field is no longer supported and retrieving it returns 0 starting from May 2024. Number of placed orders. Excludes customer cancellations that happened within 30 minutes of placing the order. __This metric cannot be segmented by product dimensions and customer/country/code.__
    orders :: (Core.Maybe Core.Int64),
    -- | /Deprecated/: This field is no longer supported and retrieving it returns 0 starting from May 2024. Number of ordered items canceled by the merchant, reported on the order date. __This metric cannot be segmented by customer/country/code.__
    rejectedItems :: (Core.Maybe Core.Int64),
    -- | /Deprecated/: This field is no longer supported and retrieving it returns 0 starting from May 2024. Total price of returned items divided by the total price of shipped items, reported on the order date. If this metric is selected, \'segments.currency/code\' is automatically added to the SELECT clause in the search query (unless it is explicitly selected by the user) and the currency/code segment is populated in the response. __This metric cannot be segmented by customer/country/code.__
    returnRate :: (Core.Maybe Core.Double),
    -- | /Deprecated/: This field is no longer supported and retrieving it returns 0 starting from May 2024. Number of ordered items sent back for return, reported on the date when the merchant accepted the return. __This metric cannot be segmented by customer/country/code.__
    returnedItems :: (Core.Maybe Core.Int64),
    -- | /Deprecated/: This field is no longer supported and retrieving it returns 0 starting from May 2024. Total price of ordered items sent back for return in micros (1 millionth of a standard unit, 1 USD = 1000000 micros), reported on the date when the merchant accepted the return. The currency of the returned value is stored in the currency/code segment. If this metric is selected, \'segments.currency/code\' is automatically added to the SELECT clause in the search query (unless it is explicitly selected by the user) and the currency_code segment is populated in the response. __This metric cannot be segmented by customer/country/code.__
    returnsMicros :: (Core.Maybe Core.Int64),
    -- | /Deprecated/: This field is no longer supported and retrieving it returns 0 starting from May 2024. Total price of shipped items in micros (1 millionth of a standard unit, 1 USD = 1000000 micros), reported on the order date. Excludes shipping and taxes (US only). The currency of the returned value is stored in the currency/code segment. If this metric is selected, \'segments.currency/code\' is automatically added to the SELECT clause in the search query (unless it is explicitly selected by the user) and the currency_code segment is populated in the response. __This metric cannot be segmented by customer/country/code.__
    shippedItemSalesMicros :: (Core.Maybe Core.Int64),
    -- | /Deprecated/: This field is no longer supported and retrieving it returns 0 starting from May 2024. Number of shipped items, reported on the shipment date. __This metric cannot be segmented by customer/country/code.__
    shippedItems :: (Core.Maybe Core.Int64),
    -- | /Deprecated/: This field is no longer supported and retrieving it returns 0 starting from May 2024. Number of fully shipped orders, reported on the last shipment date. __This metric cannot be segmented by product dimensions and customer/country/code.__
    shippedOrders :: (Core.Maybe Core.Int64),
    -- | /Deprecated/: This field is no longer supported and retrieving it returns 0 starting from May 2024. Number of ordered items not shipped up until the end of the queried day. If a multi-day period is specified in the search query, the returned value is the average number of unshipped items over the days in the queried period. __This metric cannot be segmented by customer/country/code.__
    unshippedItems :: (Core.Maybe Core.Double),
    -- | /Deprecated/: This field is no longer supported and retrieving it returns 0 starting from May 2024. Number of orders not shipped or partially shipped up until the end of the queried day. If a multi-day period is specified in the search query, the returned value is the average number of unshipped orders over the days in the queried period. __This metric cannot be segmented by product dimensions and customer/country/code.__
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
      conversionRate = Core.Nothing,
      conversionValueMicros = Core.Nothing,
      conversions = Core.Nothing,
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
            Core.<*> (o Core..:? "clicks" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "conversionRate")
            Core.<*> ( o
                         Core..:? "conversionValueMicros"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "conversions")
            Core.<*> (o Core..:? "ctr")
            Core.<*> (o Core..:? "daysToShip")
            Core.<*> (o Core..:? "impressions" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "itemDaysToShip")
            Core.<*> (o Core..:? "itemFillRate")
            Core.<*> ( o
                         Core..:? "orderedItemSalesMicros"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "orderedItems" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "orders" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "rejectedItems" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "returnRate")
            Core.<*> (o Core..:? "returnedItems" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "returnsMicros" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> ( o
                         Core..:? "shippedItemSalesMicros"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "shippedItems" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "shippedOrders" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "unshippedItems")
            Core.<*> (o Core..:? "unshippedOrders")
      )

instance Core.ToJSON Metrics where
  toJSON Metrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("aos" Core..=) Core.<$> aos,
            ("aovMicros" Core..=) Core.<$> aovMicros,
            ("clicks" Core..=) Core.. Core.AsText Core.<$> clicks,
            ("conversionRate" Core..=) Core.<$> conversionRate,
            ("conversionValueMicros" Core..=)
              Core.. Core.AsText
              Core.<$> conversionValueMicros,
            ("conversions" Core..=) Core.<$> conversions,
            ("ctr" Core..=) Core.<$> ctr,
            ("daysToShip" Core..=) Core.<$> daysToShip,
            ("impressions" Core..=) Core.. Core.AsText Core.<$> impressions,
            ("itemDaysToShip" Core..=) Core.<$> itemDaysToShip,
            ("itemFillRate" Core..=) Core.<$> itemFillRate,
            ("orderedItemSalesMicros" Core..=)
              Core.. Core.AsText
              Core.<$> orderedItemSalesMicros,
            ("orderedItems" Core..=) Core.. Core.AsText Core.<$> orderedItems,
            ("orders" Core..=) Core.. Core.AsText Core.<$> orders,
            ("rejectedItems" Core..=)
              Core.. Core.AsText
              Core.<$> rejectedItems,
            ("returnRate" Core..=) Core.<$> returnRate,
            ("returnedItems" Core..=)
              Core.. Core.AsText
              Core.<$> returnedItems,
            ("returnsMicros" Core..=)
              Core.. Core.AsText
              Core.<$> returnsMicros,
            ("shippedItemSalesMicros" Core..=)
              Core.. Core.AsText
              Core.<$> shippedItemSalesMicros,
            ("shippedItems" Core..=) Core.. Core.AsText Core.<$> shippedItems,
            ("shippedOrders" Core..=)
              Core.. Core.AsText
              Core.<$> shippedOrders,
            ("unshippedItems" Core..=) Core.<$> unshippedItems,
            ("unshippedOrders" Core..=) Core.<$> unshippedOrders
          ]
      )

--
-- /See:/ 'newMinimumOrderValueTable' smart constructor.
newtype MinimumOrderValueTable = MinimumOrderValueTable
  { storeCodeSetWithMovs :: (Core.Maybe [MinimumOrderValueTableStoreCodeSetWithMov])
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
            Core.<$> (o Core..:? "storeCodeSetWithMovs")
      )

instance Core.ToJSON MinimumOrderValueTable where
  toJSON MinimumOrderValueTable {..} =
    Core.object
      ( Core.catMaybes
          [("storeCodeSetWithMovs" Core..=) Core.<$> storeCodeSetWithMovs]
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
    { storeCodes =
        Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON MinimumOrderValueTableStoreCodeSetWithMov where
  parseJSON =
    Core.withObject
      "MinimumOrderValueTableStoreCodeSetWithMov"
      ( \o ->
          MinimumOrderValueTableStoreCodeSetWithMov
            Core.<$> (o Core..:? "storeCodes")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON MinimumOrderValueTableStoreCodeSetWithMov where
  toJSON MinimumOrderValueTableStoreCodeSetWithMov {..} =
    Core.object
      ( Core.catMaybes
          [ ("storeCodes" Core..=) Core.<$> storeCodes,
            ("value" Core..=) Core.<$> value
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
            Core.<*> (o Core..:? "lineItems")
            Core.<*> (o Core..:? "merchantId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "orderCreatedTime")
            Core.<*> (o Core..:? "orderId")
            Core.<*> ( o
                         Core..:? "orderTrackingSignalId"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "shipmentLineItemMapping")
            Core.<*> (o Core..:? "shippingInfo")
      )

instance Core.ToJSON OrderTrackingSignal where
  toJSON OrderTrackingSignal {..} =
    Core.object
      ( Core.catMaybes
          [ ("customerShippingFee" Core..=) Core.<$> customerShippingFee,
            ("deliveryPostalCode" Core..=) Core.<$> deliveryPostalCode,
            ("deliveryRegionCode" Core..=) Core.<$> deliveryRegionCode,
            ("lineItems" Core..=) Core.<$> lineItems,
            ("merchantId" Core..=) Core.. Core.AsText Core.<$> merchantId,
            ("orderCreatedTime" Core..=) Core.<$> orderCreatedTime,
            ("orderId" Core..=) Core.<$> orderId,
            ("orderTrackingSignalId" Core..=)
              Core.. Core.AsText
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

instance Core.FromJSON OrderTrackingSignalLineItemDetails where
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
            Core.<*> (o Core..:? "quantity" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "sku")
            Core.<*> (o Core..:? "upc")
      )

instance Core.ToJSON OrderTrackingSignalLineItemDetails where
  toJSON OrderTrackingSignalLineItemDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("brand" Core..=) Core.<$> brand,
            ("gtin" Core..=) Core.<$> gtin,
            ("lineItemId" Core..=) Core.<$> lineItemId,
            ("mpn" Core..=) Core.<$> mpn,
            ("productDescription" Core..=) Core.<$> productDescription,
            ("productId" Core..=) Core.<$> productId,
            ("productTitle" Core..=) Core.<$> productTitle,
            ("quantity" Core..=) Core.. Core.AsText Core.<$> quantity,
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
    { lineItemId =
        Core.Nothing,
      quantity = Core.Nothing,
      shipmentId = Core.Nothing
    }

instance Core.FromJSON OrderTrackingSignalShipmentLineItemMapping where
  parseJSON =
    Core.withObject
      "OrderTrackingSignalShipmentLineItemMapping"
      ( \o ->
          OrderTrackingSignalShipmentLineItemMapping
            Core.<$> (o Core..:? "lineItemId")
            Core.<*> (o Core..:? "quantity" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "shipmentId")
      )

instance Core.ToJSON OrderTrackingSignalShipmentLineItemMapping where
  toJSON OrderTrackingSignalShipmentLineItemMapping {..} =
    Core.object
      ( Core.catMaybes
          [ ("lineItemId" Core..=) Core.<$> lineItemId,
            ("quantity" Core..=) Core.. Core.AsText Core.<$> quantity,
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
    { actualDeliveryTime =
        Core.Nothing,
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

instance Core.FromJSON OrderTrackingSignalShippingInfo where
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
          [ ("actualDeliveryTime" Core..=) Core.<$> actualDeliveryTime,
            ("carrierName" Core..=) Core.<$> carrierName,
            ("carrierServiceName" Core..=) Core.<$> carrierServiceName,
            ("earliestDeliveryPromiseTime" Core..=)
              Core.<$> earliestDeliveryPromiseTime,
            ("latestDeliveryPromiseTime" Core..=)
              Core.<$> latestDeliveryPromiseTime,
            ("originPostalCode" Core..=) Core.<$> originPostalCode,
            ("originRegionCode" Core..=) Core.<$> originRegionCode,
            ("shipmentId" Core..=) Core.<$> shipmentId,
            ("shippedTime" Core..=) Core.<$> shippedTime,
            ("shippingStatus" Core..=) Core.<$> shippingStatus,
            ("trackingId" Core..=) Core.<$> trackingId
          ]
      )

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
    { externalAccountBusinessCountry =
        Core.Nothing,
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
            ("externalAccountId" Core..=) Core.<$> externalAccountId
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
  PickupCarrierService
    { carrierName = Core.Nothing,
      serviceName = Core.Nothing
    }

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
newPosCustomBatchRequest =
  PosCustomBatchRequest {entries = Core.Nothing}

instance Core.FromJSON PosCustomBatchRequest where
  parseJSON =
    Core.withObject
      "PosCustomBatchRequest"
      (\o -> PosCustomBatchRequest Core.<$> (o Core..:? "entries"))

instance Core.ToJSON PosCustomBatchRequest where
  toJSON PosCustomBatchRequest {..} =
    Core.object
      (Core.catMaybes [("entries" Core..=) Core.<$> entries])

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
            Core.<*> (o Core..:? "merchantId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "method")
            Core.<*> (o Core..:? "sale")
            Core.<*> (o Core..:? "store")
            Core.<*> (o Core..:? "storeCode")
            Core.<*> (o Core..:? "targetMerchantId" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON PosCustomBatchRequestEntry where
  toJSON PosCustomBatchRequestEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchId" Core..=) Core.<$> batchId,
            ("inventory" Core..=) Core.<$> inventory,
            ("merchantId" Core..=) Core.. Core.AsText Core.<$> merchantId,
            ("method" Core..=) Core.<$> method,
            ("sale" Core..=) Core.<$> sale,
            ("store" Core..=) Core.<$> store,
            ("storeCode" Core..=) Core.<$> storeCode,
            ("targetMerchantId" Core..=)
              Core.. Core.AsText
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
  PosCustomBatchResponse
    { entries = Core.Nothing,
      kind = Core.Nothing
    }

instance Core.FromJSON PosCustomBatchResponse where
  parseJSON =
    Core.withObject
      "PosCustomBatchResponse"
      ( \o ->
          PosCustomBatchResponse
            Core.<$> (o Core..:? "entries")
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
  PosDataProviders
    { country = Core.Nothing,
      posDataProviders = Core.Nothing
    }

instance Core.FromJSON PosDataProviders where
  parseJSON =
    Core.withObject
      "PosDataProviders"
      ( \o ->
          PosDataProviders
            Core.<$> (o Core..:? "country")
            Core.<*> (o Core..:? "posDataProviders")
      )

instance Core.ToJSON PosDataProviders where
  toJSON PosDataProviders {..} =
    Core.object
      ( Core.catMaybes
          [ ("country" Core..=) Core.<$> country,
            ("posDataProviders" Core..=) Core.<$> posDataProviders
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

instance Core.FromJSON PosDataProvidersPosDataProvider where
  parseJSON =
    Core.withObject
      "PosDataProvidersPosDataProvider"
      ( \o ->
          PosDataProvidersPosDataProvider
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "fullName")
            Core.<*> (o Core..:? "providerId" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON PosDataProvidersPosDataProvider where
  toJSON PosDataProvidersPosDataProvider {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("fullName" Core..=) Core.<$> fullName,
            ("providerId" Core..=) Core.. Core.AsText Core.<$> providerId
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
    -- | Optional. Supported pickup method for this offer. Unless the value is \"not supported\", this field must be submitted together with @pickupSla@. For accepted attribute values, see the <https://support.google.com/merchants/answer/3061342 local product inventory feed specification>.
    pickupMethod :: (Core.Maybe Core.Text),
    -- | Optional. Expected date that an order will be ready for pickup relative to the order date. Must be submitted together with @pickupMethod@. For accepted attribute values, see the <https://support.google.com/merchants/answer/3061342 local product inventory feed specification>.
    pickupSla :: (Core.Maybe Core.Text),
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
      pickupMethod = Core.Nothing,
      pickupSla = Core.Nothing,
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
            Core.<*> (o Core..:? "pickupMethod")
            Core.<*> (o Core..:? "pickupSla")
            Core.<*> (o Core..:? "price")
            Core.<*> (o Core..:? "quantity" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "storeCode")
            Core.<*> (o Core..:? "targetCountry")
            Core.<*> (o Core..:? "timestamp")
      )

instance Core.ToJSON PosInventory where
  toJSON PosInventory {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentLanguage" Core..=) Core.<$> contentLanguage,
            ("gtin" Core..=) Core.<$> gtin,
            ("itemId" Core..=) Core.<$> itemId,
            ("kind" Core..=) Core.<$> kind,
            ("pickupMethod" Core..=) Core.<$> pickupMethod,
            ("pickupSla" Core..=) Core.<$> pickupSla,
            ("price" Core..=) Core.<$> price,
            ("quantity" Core..=) Core.. Core.AsText Core.<$> quantity,
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
    -- | Optional. Supported pickup method for this offer. Unless the value is \"not supported\", this field must be submitted together with @pickupSla@. For accepted attribute values, see the <https://support.google.com/merchants/answer/3061342 local product inventory feed specification>.
    pickupMethod :: (Core.Maybe Core.Text),
    -- | Optional. Expected date that an order will be ready for pickup relative to the order date. Must be submitted together with @pickupMethod@. For accepted attribute values, see the <https://support.google.com/merchants/answer/3061342 local product inventory feed specification>.
    pickupSla :: (Core.Maybe Core.Text),
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
      pickupMethod = Core.Nothing,
      pickupSla = Core.Nothing,
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
            Core.<*> (o Core..:? "pickupMethod")
            Core.<*> (o Core..:? "pickupSla")
            Core.<*> (o Core..:? "price")
            Core.<*> (o Core..:? "quantity" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "storeCode")
            Core.<*> (o Core..:? "targetCountry")
            Core.<*> (o Core..:? "timestamp")
      )

instance Core.ToJSON PosInventoryRequest where
  toJSON PosInventoryRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentLanguage" Core..=) Core.<$> contentLanguage,
            ("gtin" Core..=) Core.<$> gtin,
            ("itemId" Core..=) Core.<$> itemId,
            ("pickupMethod" Core..=) Core.<$> pickupMethod,
            ("pickupSla" Core..=) Core.<$> pickupSla,
            ("price" Core..=) Core.<$> price,
            ("quantity" Core..=) Core.. Core.AsText Core.<$> quantity,
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
    -- | Optional. Supported pickup method for this offer. Unless the value is \"not supported\", this field must be submitted together with @pickupSla@. For accepted attribute values, see the <https://support.google.com/merchants/answer/3061342 local product inventory feed specification>.
    pickupMethod :: (Core.Maybe Core.Text),
    -- | Optional. Expected date that an order will be ready for pickup relative to the order date. Must be submitted together with @pickupMethod@. For accepted attribute values, see the <https://support.google.com/merchants/answer/3061342 local product inventory feed specification>.
    pickupSla :: (Core.Maybe Core.Text),
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
      pickupMethod = Core.Nothing,
      pickupSla = Core.Nothing,
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
            Core.<*> (o Core..:? "pickupMethod")
            Core.<*> (o Core..:? "pickupSla")
            Core.<*> (o Core..:? "price")
            Core.<*> (o Core..:? "quantity" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "storeCode")
            Core.<*> (o Core..:? "targetCountry")
            Core.<*> (o Core..:? "timestamp")
      )

instance Core.ToJSON PosInventoryResponse where
  toJSON PosInventoryResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentLanguage" Core..=) Core.<$> contentLanguage,
            ("gtin" Core..=) Core.<$> gtin,
            ("itemId" Core..=) Core.<$> itemId,
            ("kind" Core..=) Core.<$> kind,
            ("pickupMethod" Core..=) Core.<$> pickupMethod,
            ("pickupSla" Core..=) Core.<$> pickupSla,
            ("price" Core..=) Core.<$> price,
            ("quantity" Core..=) Core.. Core.AsText Core.<$> quantity,
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
            Core.<*> (o Core..:? "resources")
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
            Core.<*> (o Core..:? "quantity" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "saleId")
            Core.<*> (o Core..:? "storeCode")
            Core.<*> (o Core..:? "targetCountry")
            Core.<*> (o Core..:? "timestamp")
      )

instance Core.ToJSON PosSale where
  toJSON PosSale {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentLanguage" Core..=) Core.<$> contentLanguage,
            ("gtin" Core..=) Core.<$> gtin,
            ("itemId" Core..=) Core.<$> itemId,
            ("kind" Core..=) Core.<$> kind,
            ("price" Core..=) Core.<$> price,
            ("quantity" Core..=) Core.. Core.AsText Core.<$> quantity,
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
            Core.<*> (o Core..:? "quantity" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "saleId")
            Core.<*> (o Core..:? "storeCode")
            Core.<*> (o Core..:? "targetCountry")
            Core.<*> (o Core..:? "timestamp")
      )

instance Core.ToJSON PosSaleRequest where
  toJSON PosSaleRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentLanguage" Core..=) Core.<$> contentLanguage,
            ("gtin" Core..=) Core.<$> gtin,
            ("itemId" Core..=) Core.<$> itemId,
            ("price" Core..=) Core.<$> price,
            ("quantity" Core..=) Core.. Core.AsText Core.<$> quantity,
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
            Core.<*> (o Core..:? "quantity" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "saleId")
            Core.<*> (o Core..:? "storeCode")
            Core.<*> (o Core..:? "targetCountry")
            Core.<*> (o Core..:? "timestamp")
      )

instance Core.ToJSON PosSaleResponse where
  toJSON PosSaleResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentLanguage" Core..=) Core.<$> contentLanguage,
            ("gtin" Core..=) Core.<$> gtin,
            ("itemId" Core..=) Core.<$> itemId,
            ("kind" Core..=) Core.<$> kind,
            ("price" Core..=) Core.<$> price,
            ("quantity" Core..=) Core.. Core.AsText Core.<$> quantity,
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
    -- | Output only. The matching status of POS store and Google Business Profile store. Possible values are: - \"@matched@\": The POS store is successfully matched with the Google Business Profile store. - \"@failed@\": The POS store is not matched with the Google Business Profile store. See matching/status/hint for further details. Note that there is up to 48 hours propagation delay for changes in Merchant Center (e.g. creation of new account, accounts linking) and Google Business Profile (e.g. store address update) which may affect the matching status. In such cases, after a delay call <https://developers.google.com/shopping-content/reference/rest/v2.1/pos/list pos.list> to retrieve the updated matching status.
    matchingStatus :: (Core.Maybe Core.Text),
    -- | Output only. The hint of why the matching has failed. This is only set when matching_status=failed. Possible values are: - \"@linked-store-not-found@\": There aren\'t any Google Business Profile stores available for matching. Connect your Merchant Center account with the Google Business Profile account. Or add a new Google Business Profile store corresponding to the POS store. - \"@store-match-not-found@\": The provided POS store couldn\'t be matched to any of the connected Google Business Profile stores. Merchant Center account is connected correctly and stores are available on Google Business Profile, but POS store location address does not match with Google Business Profile stores\' addresses. Update POS store address or Google Business Profile store address to match correctly. - \"@store-match-unverified@\": The provided POS store couldn\'t be matched to any of the connected Google Business Profile stores, as the matched Google Business Profile store is unverified. Go through the Google Business Profile
    -- verification process to match correctly.
    matchingStatusHint :: (Core.Maybe Core.Text),
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
      matchingStatus = Core.Nothing,
      matchingStatusHint = Core.Nothing,
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
            Core.<$> (o Core..:? "gcidCategory")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "matchingStatus")
            Core.<*> (o Core..:? "matchingStatusHint")
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
            ("matchingStatus" Core..=) Core.<$> matchingStatus,
            ("matchingStatusHint" Core..=) Core.<$> matchingStatusHint,
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
            Core.<*> (o Core..:? "postalCodeRanges")
      )

instance Core.ToJSON PostalCodeGroup where
  toJSON PostalCodeGroup {..} =
    Core.object
      ( Core.catMaybes
          [ ("country" Core..=) Core.<$> country,
            ("name" Core..=) Core.<$> name,
            ("postalCodeRanges" Core..=) Core.<$> postalCodeRanges
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
          [ ("postalCodeRangeBegin" Core..=) Core.<$> postalCodeRangeBegin,
            ("postalCodeRangeEnd" Core..=) Core.<$> postalCodeRangeEnd
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
newPriceAmount =
  PriceAmount {currency = Core.Nothing, value = Core.Nothing}

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

-- | Price competitiveness fields requested by the merchant in the query. Field values are only set if the merchant queries @PriceCompetitivenessProductView@. https:\/\/support.google.com\/merchants\/answer\/9626903
--
-- /See:/ 'newPriceCompetitiveness' smart constructor.
data PriceCompetitiveness = PriceCompetitiveness
  { -- | The price benchmark currency (ISO 4217 code).
    benchmarkPriceCurrencyCode :: (Core.Maybe Core.Text),
    -- | The latest available price benchmark in micros (1 millionth of a standard unit, 1 USD = 1000000 micros) for the product\'s catalog in the benchmark country.
    benchmarkPriceMicros :: (Core.Maybe Core.Int64),
    -- | The country of the price benchmark (ISO 3166 code).
    countryCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PriceCompetitiveness' with the minimum fields required to make a request.
newPriceCompetitiveness ::
  PriceCompetitiveness
newPriceCompetitiveness =
  PriceCompetitiveness
    { benchmarkPriceCurrencyCode = Core.Nothing,
      benchmarkPriceMicros = Core.Nothing,
      countryCode = Core.Nothing
    }

instance Core.FromJSON PriceCompetitiveness where
  parseJSON =
    Core.withObject
      "PriceCompetitiveness"
      ( \o ->
          PriceCompetitiveness
            Core.<$> (o Core..:? "benchmarkPriceCurrencyCode")
            Core.<*> ( o
                         Core..:? "benchmarkPriceMicros"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "countryCode")
      )

instance Core.ToJSON PriceCompetitiveness where
  toJSON PriceCompetitiveness {..} =
    Core.object
      ( Core.catMaybes
          [ ("benchmarkPriceCurrencyCode" Core..=)
              Core.<$> benchmarkPriceCurrencyCode,
            ("benchmarkPriceMicros" Core..=)
              Core.. Core.AsText
              Core.<$> benchmarkPriceMicros,
            ("countryCode" Core..=) Core.<$> countryCode
          ]
      )

-- | Price insights fields requested by the merchant in the query. Field values are only set if the merchant queries @PriceInsightsProductView@. https:\/\/support.google.com\/merchants\/answer\/11916926
--
-- /See:/ 'newPriceInsights' smart constructor.
data PriceInsights = PriceInsights
  { -- | The predicted effectiveness of applying the price suggestion, bucketed.
    effectiveness :: (Core.Maybe PriceInsights_Effectiveness),
    -- | The predicted change in clicks as a fraction after introducing the suggested price compared to current active price. For example, 0.05 is a 5% predicted increase in clicks.
    predictedClicksChangeFraction :: (Core.Maybe Core.Double),
    -- | The predicted change in conversions as a fraction after introducing the suggested price compared to current active price. For example, 0.05 is a 5% predicted increase in conversions).
    predictedConversionsChangeFraction :: (Core.Maybe Core.Double),
    -- | /Deprecated/: This field is no longer supported and will start returning 0. The predicted change in gross profit as a fraction after introducing the suggested price compared to current active price. For example, 0.05 is a 5% predicted increase in gross profit.
    predictedGrossProfitChangeFraction :: (Core.Maybe Core.Double),
    -- | The predicted change in impressions as a fraction after introducing the suggested price compared to current active price. For example, 0.05 is a 5% predicted increase in impressions.
    predictedImpressionsChangeFraction :: (Core.Maybe Core.Double),
    -- | /Deprecated/: This field is no longer supported and will start returning USD for all requests. The predicted monthly gross profit change currency (ISO 4217 code).
    predictedMonthlyGrossProfitChangeCurrencyCode :: (Core.Maybe Core.Text),
    -- | /Deprecated/: This field is no longer supported and will start returning 0. The predicted change in gross profit in micros (1 millionth of a standard unit, 1 USD = 1000000 micros) after introducing the suggested price for a month compared to current active price.
    predictedMonthlyGrossProfitChangeMicros :: (Core.Maybe Core.Int64),
    -- | The suggested price currency (ISO 4217 code).
    suggestedPriceCurrencyCode :: (Core.Maybe Core.Text),
    -- | The latest suggested price in micros (1 millionth of a standard unit, 1 USD = 1000000 micros) for the product.
    suggestedPriceMicros :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PriceInsights' with the minimum fields required to make a request.
newPriceInsights ::
  PriceInsights
newPriceInsights =
  PriceInsights
    { effectiveness = Core.Nothing,
      predictedClicksChangeFraction = Core.Nothing,
      predictedConversionsChangeFraction = Core.Nothing,
      predictedGrossProfitChangeFraction = Core.Nothing,
      predictedImpressionsChangeFraction = Core.Nothing,
      predictedMonthlyGrossProfitChangeCurrencyCode = Core.Nothing,
      predictedMonthlyGrossProfitChangeMicros = Core.Nothing,
      suggestedPriceCurrencyCode = Core.Nothing,
      suggestedPriceMicros = Core.Nothing
    }

instance Core.FromJSON PriceInsights where
  parseJSON =
    Core.withObject
      "PriceInsights"
      ( \o ->
          PriceInsights
            Core.<$> (o Core..:? "effectiveness")
            Core.<*> (o Core..:? "predictedClicksChangeFraction")
            Core.<*> (o Core..:? "predictedConversionsChangeFraction")
            Core.<*> (o Core..:? "predictedGrossProfitChangeFraction")
            Core.<*> (o Core..:? "predictedImpressionsChangeFraction")
            Core.<*> (o Core..:? "predictedMonthlyGrossProfitChangeCurrencyCode")
            Core.<*> ( o
                         Core..:? "predictedMonthlyGrossProfitChangeMicros"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "suggestedPriceCurrencyCode")
            Core.<*> ( o
                         Core..:? "suggestedPriceMicros"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON PriceInsights where
  toJSON PriceInsights {..} =
    Core.object
      ( Core.catMaybes
          [ ("effectiveness" Core..=) Core.<$> effectiveness,
            ("predictedClicksChangeFraction" Core..=)
              Core.<$> predictedClicksChangeFraction,
            ("predictedConversionsChangeFraction" Core..=)
              Core.<$> predictedConversionsChangeFraction,
            ("predictedGrossProfitChangeFraction" Core..=)
              Core.<$> predictedGrossProfitChangeFraction,
            ("predictedImpressionsChangeFraction" Core..=)
              Core.<$> predictedImpressionsChangeFraction,
            ("predictedMonthlyGrossProfitChangeCurrencyCode" Core..=)
              Core.<$> predictedMonthlyGrossProfitChangeCurrencyCode,
            ("predictedMonthlyGrossProfitChangeMicros" Core..=)
              Core.. Core.AsText
              Core.<$> predictedMonthlyGrossProfitChangeMicros,
            ("suggestedPriceCurrencyCode" Core..=)
              Core.<$> suggestedPriceCurrencyCode,
            ("suggestedPriceMicros" Core..=)
              Core.. Core.AsText
              Core.<$> suggestedPriceMicros
          ]
      )

-- | Required product attributes are primarily defined by the product data specification. See the Product Data Specification Help Center article for information. Product data. After inserting, updating, or deleting a product, it may take several minutes before changes take effect.
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
    -- | A safeguard in the <//support.google.com/merchants/answer/10295759 Automated Discounts> and <//support.google.com/merchants/answer/13949249 Dynamic Promotions> projects, ensuring that discounts on merchants\' offers do not fall below this value, thereby preserving the offer\'s value and profitability.
    autoPricingMinPrice :: (Core.Maybe Price),
    -- | Availability status of the item.
    availability :: (Core.Maybe Core.Text),
    -- | The day a pre-ordered product becomes available for delivery, in ISO 8601 format.
    availabilityDate :: (Core.Maybe Core.Text),
    -- | Brand of the item.
    brand :: (Core.Maybe Core.Text),
    -- | URL for the canonical version of your item\'s landing page.
    canonicalLink :: (Core.Maybe Core.Text),
    -- | Product <https://support.google.com/merchants/answer/13528839 certification>, introduced for EU energy efficiency labeling compliance using the <https://eprel.ec.europa.eu/screen/home EU EPREL> database.
    certifications :: (Core.Maybe [ProductCertification]),
    -- | Required. The item\'s channel (online or local). Acceptable values are: - \"@local@\" - \"@online@\"
    channel :: (Core.Maybe Core.Text),
    -- | Extra fields to export to the Cloud Retail program.
    cloudExportAdditionalProperties :: (Core.Maybe [CloudExportAdditionalProperties]),
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
    -- | The date time when an offer becomes visible in search results across Google’s YouTube surfaces, in <http://en.wikipedia.org/wiki/ISO_8601 ISO 8601> format. See <https://support.google.com/merchants/answer/13034208 Disclosure date> for more information.
    disclosureDate :: (Core.Maybe Core.Text),
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
    -- | The list of <//support.google.com/merchants/answer/6324486 destinations to exclude> for this target (corresponds to cleared check boxes in Merchant Center). Products that are excluded from all destinations for more than 7 days are automatically deleted.
    excludedDestinations :: (Core.Maybe [Core.Text]),
    -- | Date on which the item should expire, as specified upon insertion, in ISO 8601 format. The actual expiration date in Google Shopping is exposed in @productstatuses@ as @googleExpirationDate@ and might be earlier if @expirationDate@ is too far in the future.
    expirationDate :: (Core.Maybe Core.Text),
    -- | Required for multi-seller accounts. Use this attribute if you\'re a marketplace uploading products for various sellers to your multi-seller account.
    externalSellerId :: (Core.Maybe Core.Text),
    -- | Feed label for the item. Either @targetCountry@ or @feedLabel@ is required. Must be less than or equal to 20 uppercase letters (A-Z), numbers (0-9), and dashes (-).
    feedLabel :: (Core.Maybe Core.Text),
    -- | Optional. Conditions to be met for a product to have free shipping.
    freeShippingThreshold :: (Core.Maybe [FreeShippingThreshold]),
    -- | Target gender of the item.
    gender :: (Core.Maybe Core.Text),
    -- | Google\'s category of the item (see <https://support.google.com/merchants/answer/1705911 Google product taxonomy>). When querying products, this field will contain the user provided value. There is currently no way to get back the auto assigned google product categories through the API.
    googleProductCategory :: (Core.Maybe Core.Text),
    -- | Global Trade Item Number (GTIN) of the item.
    gtin :: (Core.Maybe Core.Text),
    -- | The REST ID of the product. Content API methods that operate on products take this as their @productId@ parameter. The REST ID for a product has one of the 2 forms channel:contentLanguage: targetCountry: offerId or channel:contentLanguage:feedLabel: offerId.
    id :: (Core.Maybe Core.Text),
    -- | False when the item does not have unique product identifiers appropriate to its category, such as GTIN, MPN, and brand. Required according to the Unique Product Identifier Rules for all target countries except for Canada.
    identifierExists :: (Core.Maybe Core.Bool),
    -- | URL of an image of the item.
    imageLink :: (Core.Maybe Core.Text),
    -- | The list of <//support.google.com/merchants/answer/7501026 destinations to include> for this target (corresponds to checked check boxes in Merchant Center). Default destinations are always included unless provided in @excludedDestinations@.
    includedDestinations :: (Core.Maybe [Core.Text]),
    -- | Number and amount of installments to pay for an item.
    installment :: (Core.Maybe Installment),
    -- | Whether the item is a merchant-defined bundle. A bundle is a custom grouping of different products sold by a merchant for a single price.
    isBundle :: (Core.Maybe Core.Bool),
    -- | Shared identifier for all variants of the same product.
    itemGroupId :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"@content#product@\"
    kind :: (Core.Maybe Core.Text),
    -- | Additional URLs of lifestyle images of the item. Used to explicitly identify images that showcase your item in a real-world context. See the Help Center article for more information.
    lifestyleImageLinks :: (Core.Maybe [Core.Text]),
    -- | URL directly linking to your item\'s page on your website.
    link :: (Core.Maybe Core.Text),
    -- | URL template for merchant hosted local storefront.
    linkTemplate :: (Core.Maybe Core.Text),
    -- | Loyalty program information that is used to surface loyalty benefits ( for example, better pricing, points, etc) to the user of this item. This signular field points to the latest uploaded loyalty program info. This field will be deprecated in the coming weeks and should not be used in favor of the plural \'LoyaltyProgram\' field below.
    loyaltyProgram :: (Core.Maybe LoyaltyProgram),
    -- | Optional. A list of loyalty program information that is used to surface loyalty benefits (for example, better pricing, points, etc) to the user of this item.
    loyaltyPrograms :: (Core.Maybe [LoyaltyProgram]),
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
    -- | Publication of this item should be temporarily paused. Acceptable values are: - \"@ads@\"
    pause :: (Core.Maybe Core.Text),
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
    -- | Categories of the item (formatted as in product data specification).
    productTypes :: (Core.Maybe [Core.Text]),
    -- | The weight of the product in the units provided. The value must be between 0 (exclusive) and 2000 (inclusive).
    productWeight :: (Core.Maybe ProductWeight),
    -- | The width of the product in the units provided. The value must be between 0 (exclusive) and 3000 (inclusive).
    productWidth :: (Core.Maybe ProductDimension),
    -- | The unique ID of a promotion.
    promotionIds :: (Core.Maybe [Core.Text]),
    -- | Advertised sale price of the item.
    salePrice :: (Core.Maybe Price),
    -- | Date range during which the item is on sale (see product data specification ).
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
    -- | Output only. The source of the offer, that is, how the offer was created. Acceptable values are: - \"@api@\" - \"@crawl@\" - \"@feed@\"
    source :: (Core.Maybe Core.Text),
    -- | Structured description, for algorithmically (AI)-generated descriptions.
    structuredDescription :: (Core.Maybe ProductStructuredDescription),
    -- | Structured title, for algorithmically (AI)-generated titles.
    structuredTitle :: (Core.Maybe ProductStructuredTitle),
    -- | Number of periods (months or years) and amount of payment per period for an item with an associated subscription contract.
    subscriptionCost :: (Core.Maybe ProductSubscriptionCost),
    -- | Optional. The list of sustainability incentive programs.
    sustainabilityIncentives :: (Core.Maybe [ProductSustainabilityIncentive]),
    -- | Required. The CLDR territory code for the item\'s country of sale.
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
    unitPricingMeasure :: (Core.Maybe ProductUnitPricingMeasure),
    -- | URL of the 3D model of the item to provide more visuals.
    virtualModelLink :: (Core.Maybe Core.Text)
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
      autoPricingMinPrice = Core.Nothing,
      availability = Core.Nothing,
      availabilityDate = Core.Nothing,
      brand = Core.Nothing,
      canonicalLink = Core.Nothing,
      certifications = Core.Nothing,
      channel = Core.Nothing,
      cloudExportAdditionalProperties = Core.Nothing,
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
      disclosureDate = Core.Nothing,
      displayAdsId = Core.Nothing,
      displayAdsLink = Core.Nothing,
      displayAdsSimilarIds = Core.Nothing,
      displayAdsTitle = Core.Nothing,
      displayAdsValue = Core.Nothing,
      energyEfficiencyClass = Core.Nothing,
      excludedDestinations = Core.Nothing,
      expirationDate = Core.Nothing,
      externalSellerId = Core.Nothing,
      feedLabel = Core.Nothing,
      freeShippingThreshold = Core.Nothing,
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
      lifestyleImageLinks = Core.Nothing,
      link = Core.Nothing,
      linkTemplate = Core.Nothing,
      loyaltyProgram = Core.Nothing,
      loyaltyPrograms = Core.Nothing,
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
      pause = Core.Nothing,
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
      structuredDescription = Core.Nothing,
      structuredTitle = Core.Nothing,
      subscriptionCost = Core.Nothing,
      sustainabilityIncentives = Core.Nothing,
      targetCountry = Core.Nothing,
      taxCategory = Core.Nothing,
      taxes = Core.Nothing,
      title = Core.Nothing,
      transitTimeLabel = Core.Nothing,
      unitPricingBaseMeasure = Core.Nothing,
      unitPricingMeasure = Core.Nothing,
      virtualModelLink = Core.Nothing
    }

instance Core.FromJSON Product where
  parseJSON =
    Core.withObject
      "Product"
      ( \o ->
          Product
            Core.<$> (o Core..:? "additionalImageLinks")
            Core.<*> (o Core..:? "additionalSizeType")
            Core.<*> (o Core..:? "adsGrouping")
            Core.<*> (o Core..:? "adsLabels")
            Core.<*> (o Core..:? "adsRedirect")
            Core.<*> (o Core..:? "adult")
            Core.<*> (o Core..:? "ageGroup")
            Core.<*> (o Core..:? "autoPricingMinPrice")
            Core.<*> (o Core..:? "availability")
            Core.<*> (o Core..:? "availabilityDate")
            Core.<*> (o Core..:? "brand")
            Core.<*> (o Core..:? "canonicalLink")
            Core.<*> (o Core..:? "certifications")
            Core.<*> (o Core..:? "channel")
            Core.<*> (o Core..:? "cloudExportAdditionalProperties")
            Core.<*> (o Core..:? "color")
            Core.<*> (o Core..:? "condition")
            Core.<*> (o Core..:? "contentLanguage")
            Core.<*> (o Core..:? "costOfGoodsSold")
            Core.<*> (o Core..:? "customAttributes")
            Core.<*> (o Core..:? "customLabel0")
            Core.<*> (o Core..:? "customLabel1")
            Core.<*> (o Core..:? "customLabel2")
            Core.<*> (o Core..:? "customLabel3")
            Core.<*> (o Core..:? "customLabel4")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "disclosureDate")
            Core.<*> (o Core..:? "displayAdsId")
            Core.<*> (o Core..:? "displayAdsLink")
            Core.<*> (o Core..:? "displayAdsSimilarIds")
            Core.<*> (o Core..:? "displayAdsTitle")
            Core.<*> (o Core..:? "displayAdsValue")
            Core.<*> (o Core..:? "energyEfficiencyClass")
            Core.<*> (o Core..:? "excludedDestinations")
            Core.<*> (o Core..:? "expirationDate")
            Core.<*> (o Core..:? "externalSellerId")
            Core.<*> (o Core..:? "feedLabel")
            Core.<*> (o Core..:? "freeShippingThreshold")
            Core.<*> (o Core..:? "gender")
            Core.<*> (o Core..:? "googleProductCategory")
            Core.<*> (o Core..:? "gtin")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "identifierExists")
            Core.<*> (o Core..:? "imageLink")
            Core.<*> (o Core..:? "includedDestinations")
            Core.<*> (o Core..:? "installment")
            Core.<*> (o Core..:? "isBundle")
            Core.<*> (o Core..:? "itemGroupId")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "lifestyleImageLinks")
            Core.<*> (o Core..:? "link")
            Core.<*> (o Core..:? "linkTemplate")
            Core.<*> (o Core..:? "loyaltyProgram")
            Core.<*> (o Core..:? "loyaltyPrograms")
            Core.<*> (o Core..:? "material")
            Core.<*> (o Core..:? "maxEnergyEfficiencyClass")
            Core.<*> (o Core..:? "maxHandlingTime" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "minEnergyEfficiencyClass")
            Core.<*> (o Core..:? "minHandlingTime" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "mobileLink")
            Core.<*> (o Core..:? "mobileLinkTemplate")
            Core.<*> (o Core..:? "mpn")
            Core.<*> (o Core..:? "multipack" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "offerId")
            Core.<*> (o Core..:? "pattern")
            Core.<*> (o Core..:? "pause")
            Core.<*> (o Core..:? "pickupMethod")
            Core.<*> (o Core..:? "pickupSla")
            Core.<*> (o Core..:? "price")
            Core.<*> (o Core..:? "productDetails")
            Core.<*> (o Core..:? "productHeight")
            Core.<*> (o Core..:? "productHighlights")
            Core.<*> (o Core..:? "productLength")
            Core.<*> (o Core..:? "productTypes")
            Core.<*> (o Core..:? "productWeight")
            Core.<*> (o Core..:? "productWidth")
            Core.<*> (o Core..:? "promotionIds")
            Core.<*> (o Core..:? "salePrice")
            Core.<*> (o Core..:? "salePriceEffectiveDate")
            Core.<*> ( o
                         Core..:? "sellOnGoogleQuantity"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "shipping")
            Core.<*> (o Core..:? "shippingHeight")
            Core.<*> (o Core..:? "shippingLabel")
            Core.<*> (o Core..:? "shippingLength")
            Core.<*> (o Core..:? "shippingWeight")
            Core.<*> (o Core..:? "shippingWidth")
            Core.<*> (o Core..:? "shoppingAdsExcludedCountries")
            Core.<*> (o Core..:? "sizeSystem")
            Core.<*> (o Core..:? "sizeType")
            Core.<*> (o Core..:? "sizes")
            Core.<*> (o Core..:? "source")
            Core.<*> (o Core..:? "structuredDescription")
            Core.<*> (o Core..:? "structuredTitle")
            Core.<*> (o Core..:? "subscriptionCost")
            Core.<*> (o Core..:? "sustainabilityIncentives")
            Core.<*> (o Core..:? "targetCountry")
            Core.<*> (o Core..:? "taxCategory")
            Core.<*> (o Core..:? "taxes")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "transitTimeLabel")
            Core.<*> (o Core..:? "unitPricingBaseMeasure")
            Core.<*> (o Core..:? "unitPricingMeasure")
            Core.<*> (o Core..:? "virtualModelLink")
      )

instance Core.ToJSON Product where
  toJSON Product {..} =
    Core.object
      ( Core.catMaybes
          [ ("additionalImageLinks" Core..=) Core.<$> additionalImageLinks,
            ("additionalSizeType" Core..=) Core.<$> additionalSizeType,
            ("adsGrouping" Core..=) Core.<$> adsGrouping,
            ("adsLabels" Core..=) Core.<$> adsLabels,
            ("adsRedirect" Core..=) Core.<$> adsRedirect,
            ("adult" Core..=) Core.<$> adult,
            ("ageGroup" Core..=) Core.<$> ageGroup,
            ("autoPricingMinPrice" Core..=) Core.<$> autoPricingMinPrice,
            ("availability" Core..=) Core.<$> availability,
            ("availabilityDate" Core..=) Core.<$> availabilityDate,
            ("brand" Core..=) Core.<$> brand,
            ("canonicalLink" Core..=) Core.<$> canonicalLink,
            ("certifications" Core..=) Core.<$> certifications,
            ("channel" Core..=) Core.<$> channel,
            ("cloudExportAdditionalProperties" Core..=)
              Core.<$> cloudExportAdditionalProperties,
            ("color" Core..=) Core.<$> color,
            ("condition" Core..=) Core.<$> condition,
            ("contentLanguage" Core..=) Core.<$> contentLanguage,
            ("costOfGoodsSold" Core..=) Core.<$> costOfGoodsSold,
            ("customAttributes" Core..=) Core.<$> customAttributes,
            ("customLabel0" Core..=) Core.<$> customLabel0,
            ("customLabel1" Core..=) Core.<$> customLabel1,
            ("customLabel2" Core..=) Core.<$> customLabel2,
            ("customLabel3" Core..=) Core.<$> customLabel3,
            ("customLabel4" Core..=) Core.<$> customLabel4,
            ("description" Core..=) Core.<$> description,
            ("disclosureDate" Core..=) Core.<$> disclosureDate,
            ("displayAdsId" Core..=) Core.<$> displayAdsId,
            ("displayAdsLink" Core..=) Core.<$> displayAdsLink,
            ("displayAdsSimilarIds" Core..=) Core.<$> displayAdsSimilarIds,
            ("displayAdsTitle" Core..=) Core.<$> displayAdsTitle,
            ("displayAdsValue" Core..=) Core.<$> displayAdsValue,
            ("energyEfficiencyClass" Core..=) Core.<$> energyEfficiencyClass,
            ("excludedDestinations" Core..=) Core.<$> excludedDestinations,
            ("expirationDate" Core..=) Core.<$> expirationDate,
            ("externalSellerId" Core..=) Core.<$> externalSellerId,
            ("feedLabel" Core..=) Core.<$> feedLabel,
            ("freeShippingThreshold" Core..=) Core.<$> freeShippingThreshold,
            ("gender" Core..=) Core.<$> gender,
            ("googleProductCategory" Core..=) Core.<$> googleProductCategory,
            ("gtin" Core..=) Core.<$> gtin,
            ("id" Core..=) Core.<$> id,
            ("identifierExists" Core..=) Core.<$> identifierExists,
            ("imageLink" Core..=) Core.<$> imageLink,
            ("includedDestinations" Core..=) Core.<$> includedDestinations,
            ("installment" Core..=) Core.<$> installment,
            ("isBundle" Core..=) Core.<$> isBundle,
            ("itemGroupId" Core..=) Core.<$> itemGroupId,
            ("kind" Core..=) Core.<$> kind,
            ("lifestyleImageLinks" Core..=) Core.<$> lifestyleImageLinks,
            ("link" Core..=) Core.<$> link,
            ("linkTemplate" Core..=) Core.<$> linkTemplate,
            ("loyaltyProgram" Core..=) Core.<$> loyaltyProgram,
            ("loyaltyPrograms" Core..=) Core.<$> loyaltyPrograms,
            ("material" Core..=) Core.<$> material,
            ("maxEnergyEfficiencyClass" Core..=)
              Core.<$> maxEnergyEfficiencyClass,
            ("maxHandlingTime" Core..=)
              Core.. Core.AsText
              Core.<$> maxHandlingTime,
            ("minEnergyEfficiencyClass" Core..=)
              Core.<$> minEnergyEfficiencyClass,
            ("minHandlingTime" Core..=)
              Core.. Core.AsText
              Core.<$> minHandlingTime,
            ("mobileLink" Core..=) Core.<$> mobileLink,
            ("mobileLinkTemplate" Core..=) Core.<$> mobileLinkTemplate,
            ("mpn" Core..=) Core.<$> mpn,
            ("multipack" Core..=) Core.. Core.AsText Core.<$> multipack,
            ("offerId" Core..=) Core.<$> offerId,
            ("pattern" Core..=) Core.<$> pattern',
            ("pause" Core..=) Core.<$> pause,
            ("pickupMethod" Core..=) Core.<$> pickupMethod,
            ("pickupSla" Core..=) Core.<$> pickupSla,
            ("price" Core..=) Core.<$> price,
            ("productDetails" Core..=) Core.<$> productDetails,
            ("productHeight" Core..=) Core.<$> productHeight,
            ("productHighlights" Core..=) Core.<$> productHighlights,
            ("productLength" Core..=) Core.<$> productLength,
            ("productTypes" Core..=) Core.<$> productTypes,
            ("productWeight" Core..=) Core.<$> productWeight,
            ("productWidth" Core..=) Core.<$> productWidth,
            ("promotionIds" Core..=) Core.<$> promotionIds,
            ("salePrice" Core..=) Core.<$> salePrice,
            ("salePriceEffectiveDate" Core..=) Core.<$> salePriceEffectiveDate,
            ("sellOnGoogleQuantity" Core..=)
              Core.. Core.AsText
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
            ("structuredDescription" Core..=) Core.<$> structuredDescription,
            ("structuredTitle" Core..=) Core.<$> structuredTitle,
            ("subscriptionCost" Core..=) Core.<$> subscriptionCost,
            ("sustainabilityIncentives" Core..=)
              Core.<$> sustainabilityIncentives,
            ("targetCountry" Core..=) Core.<$> targetCountry,
            ("taxCategory" Core..=) Core.<$> taxCategory,
            ("taxes" Core..=) Core.<$> taxes,
            ("title" Core..=) Core.<$> title,
            ("transitTimeLabel" Core..=) Core.<$> transitTimeLabel,
            ("unitPricingBaseMeasure" Core..=) Core.<$> unitPricingBaseMeasure,
            ("unitPricingMeasure" Core..=) Core.<$> unitPricingMeasure,
            ("virtualModelLink" Core..=) Core.<$> virtualModelLink
          ]
      )

-- | Product <https://support.google.com/merchants/answer/13528839 certification>, introduced for EU energy efficiency labeling compliance using the <https://eprel.ec.europa.eu/screen/home EU EPREL> database.
--
-- /See:/ 'newProductCertification' smart constructor.
data ProductCertification = ProductCertification
  { -- | The certification authority, for example \"European_Commission\". Maximum length is 2000 characters.
    certificationAuthority :: (Core.Maybe Core.Text),
    -- | The certification code, for eaxample \"123456\". Maximum length is 2000 characters.
    certificationCode :: (Core.Maybe Core.Text),
    -- | The name of the certification, for example \"EPREL\". Maximum length is 2000 characters.
    certificationName :: (Core.Maybe Core.Text),
    -- | The certification value (also known as class, level or grade), for example \"A+\", \"C\", \"gold\". Maximum length is 2000 characters.
    certificationValue :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductCertification' with the minimum fields required to make a request.
newProductCertification ::
  ProductCertification
newProductCertification =
  ProductCertification
    { certificationAuthority = Core.Nothing,
      certificationCode = Core.Nothing,
      certificationName = Core.Nothing,
      certificationValue = Core.Nothing
    }

instance Core.FromJSON ProductCertification where
  parseJSON =
    Core.withObject
      "ProductCertification"
      ( \o ->
          ProductCertification
            Core.<$> (o Core..:? "certificationAuthority")
            Core.<*> (o Core..:? "certificationCode")
            Core.<*> (o Core..:? "certificationName")
            Core.<*> (o Core..:? "certificationValue")
      )

instance Core.ToJSON ProductCertification where
  toJSON ProductCertification {..} =
    Core.object
      ( Core.catMaybes
          [ ("certificationAuthority" Core..=)
              Core.<$> certificationAuthority,
            ("certificationCode" Core..=) Core.<$> certificationCode,
            ("certificationName" Core..=) Core.<$> certificationName,
            ("certificationValue" Core..=) Core.<$> certificationValue
          ]
      )

-- | Product cluster fields. A product cluster is a grouping for different offers that represent the same product. Values are only set for fields requested explicitly in the request\'s search query.
--
-- /See:/ 'newProductCluster' smart constructor.
data ProductCluster = ProductCluster
  { -- | Brand of the product cluster.
    brand :: (Core.Maybe Core.Text),
    -- | Tells if there is at least one product of the brand currently @IN_STOCK@ in your product feed across multiple countries, all products are @OUT_OF_STOCK@ in your product feed, or @NOT_IN_INVENTORY@. The field doesn\'t take the Best Sellers report country filter into account.
    brandInventoryStatus :: (Core.Maybe ProductCluster_BrandInventoryStatus),
    -- | Product category (1st level) of the product cluster, represented in Google\'s product taxonomy.
    categoryL1 :: (Core.Maybe Core.Text),
    -- | Product category (2nd level) of the product cluster, represented in Google\'s product taxonomy.
    categoryL2 :: (Core.Maybe Core.Text),
    -- | Product category (3rd level) of the product cluster, represented in Google\'s product taxonomy.
    categoryL3 :: (Core.Maybe Core.Text),
    -- | Product category (4th level) of the product cluster, represented in Google\'s product taxonomy.
    categoryL4 :: (Core.Maybe Core.Text),
    -- | Product category (5th level) of the product cluster, represented in Google\'s product taxonomy.
    categoryL5 :: (Core.Maybe Core.Text),
    -- | Tells whether the product cluster is @IN_STOCK@ in your product feed across multiple countries, @OUT_OF_STOCK@ in your product feed, or @NOT_IN_INVENTORY@ at all. The field doesn\'t take the Best Sellers report country filter into account.
    inventoryStatus :: (Core.Maybe ProductCluster_InventoryStatus),
    -- | Title of the product cluster.
    title :: (Core.Maybe Core.Text),
    -- | GTINs of example variants of the product cluster.
    variantGtins :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductCluster' with the minimum fields required to make a request.
newProductCluster ::
  ProductCluster
newProductCluster =
  ProductCluster
    { brand = Core.Nothing,
      brandInventoryStatus = Core.Nothing,
      categoryL1 = Core.Nothing,
      categoryL2 = Core.Nothing,
      categoryL3 = Core.Nothing,
      categoryL4 = Core.Nothing,
      categoryL5 = Core.Nothing,
      inventoryStatus = Core.Nothing,
      title = Core.Nothing,
      variantGtins = Core.Nothing
    }

instance Core.FromJSON ProductCluster where
  parseJSON =
    Core.withObject
      "ProductCluster"
      ( \o ->
          ProductCluster
            Core.<$> (o Core..:? "brand")
            Core.<*> (o Core..:? "brandInventoryStatus")
            Core.<*> (o Core..:? "categoryL1")
            Core.<*> (o Core..:? "categoryL2")
            Core.<*> (o Core..:? "categoryL3")
            Core.<*> (o Core..:? "categoryL4")
            Core.<*> (o Core..:? "categoryL5")
            Core.<*> (o Core..:? "inventoryStatus")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "variantGtins")
      )

instance Core.ToJSON ProductCluster where
  toJSON ProductCluster {..} =
    Core.object
      ( Core.catMaybes
          [ ("brand" Core..=) Core.<$> brand,
            ("brandInventoryStatus" Core..=) Core.<$> brandInventoryStatus,
            ("categoryL1" Core..=) Core.<$> categoryL1,
            ("categoryL2" Core..=) Core.<$> categoryL2,
            ("categoryL3" Core..=) Core.<$> categoryL3,
            ("categoryL4" Core..=) Core.<$> categoryL4,
            ("categoryL5" Core..=) Core.<$> categoryL5,
            ("inventoryStatus" Core..=) Core.<$> inventoryStatus,
            ("title" Core..=) Core.<$> title,
            ("variantGtins" Core..=) Core.<$> variantGtins
          ]
      )

-- | The estimated days to deliver a product after an order is placed. Only authorized shipping signals partners working with a merchant can use this resource. Merchants should use the <https://developers.google.com/shopping-content/reference/rest/v2.1/products#productshipping products> resource instead.
--
-- /See:/ 'newProductDeliveryTime' smart constructor.
data ProductDeliveryTime = ProductDeliveryTime
  { -- | Required. A set of associations between @DeliveryArea@ and @DeliveryTime@ entries. The total number of @areaDeliveryTimes@ can be at most 100.
    areaDeliveryTimes :: (Core.Maybe [ProductDeliveryTimeAreaDeliveryTime]),
    -- | Required. The @id@ of the product.
    productId :: (Core.Maybe ProductId)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductDeliveryTime' with the minimum fields required to make a request.
newProductDeliveryTime ::
  ProductDeliveryTime
newProductDeliveryTime =
  ProductDeliveryTime
    { areaDeliveryTimes = Core.Nothing,
      productId = Core.Nothing
    }

instance Core.FromJSON ProductDeliveryTime where
  parseJSON =
    Core.withObject
      "ProductDeliveryTime"
      ( \o ->
          ProductDeliveryTime
            Core.<$> (o Core..:? "areaDeliveryTimes")
            Core.<*> (o Core..:? "productId")
      )

instance Core.ToJSON ProductDeliveryTime where
  toJSON ProductDeliveryTime {..} =
    Core.object
      ( Core.catMaybes
          [ ("areaDeliveryTimes" Core..=) Core.<$> areaDeliveryTimes,
            ("productId" Core..=) Core.<$> productId
          ]
      )

-- | A pairing of @DeliveryArea@ associated with a @DeliveryTime@ for this product.
--
-- /See:/ 'newProductDeliveryTimeAreaDeliveryTime' smart constructor.
data ProductDeliveryTimeAreaDeliveryTime = ProductDeliveryTimeAreaDeliveryTime
  { -- | Required. The delivery area associated with @deliveryTime@ for this product.
    deliveryArea :: (Core.Maybe DeliveryArea),
    -- | Required. The delivery time associated with @deliveryArea@ for this product.
    deliveryTime :: (Core.Maybe ProductDeliveryTimeAreaDeliveryTimeDeliveryTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductDeliveryTimeAreaDeliveryTime' with the minimum fields required to make a request.
newProductDeliveryTimeAreaDeliveryTime ::
  ProductDeliveryTimeAreaDeliveryTime
newProductDeliveryTimeAreaDeliveryTime =
  ProductDeliveryTimeAreaDeliveryTime
    { deliveryArea = Core.Nothing,
      deliveryTime = Core.Nothing
    }

instance Core.FromJSON ProductDeliveryTimeAreaDeliveryTime where
  parseJSON =
    Core.withObject
      "ProductDeliveryTimeAreaDeliveryTime"
      ( \o ->
          ProductDeliveryTimeAreaDeliveryTime
            Core.<$> (o Core..:? "deliveryArea")
            Core.<*> (o Core..:? "deliveryTime")
      )

instance Core.ToJSON ProductDeliveryTimeAreaDeliveryTime where
  toJSON ProductDeliveryTimeAreaDeliveryTime {..} =
    Core.object
      ( Core.catMaybes
          [ ("deliveryArea" Core..=) Core.<$> deliveryArea,
            ("deliveryTime" Core..=) Core.<$> deliveryTime
          ]
      )

-- | A delivery time for this product.
--
-- /See:/ 'newProductDeliveryTimeAreaDeliveryTimeDeliveryTime' smart constructor.
data ProductDeliveryTimeAreaDeliveryTimeDeliveryTime = ProductDeliveryTimeAreaDeliveryTimeDeliveryTime
  { -- | Required. The maximum number of business days (inclusive) between when an order is placed and when the product ships. If a product ships in the same day, set this value to 0.
    maxHandlingTimeDays :: (Core.Maybe Core.Int32),
    -- | Required. The maximum number of business days (inclusive) between when the product ships and when the product is delivered.
    maxTransitTimeDays :: (Core.Maybe Core.Int32),
    -- | Required. The minimum number of business days (inclusive) between when an order is placed and when the product ships. If a product ships in the same day, set this value to 0.
    minHandlingTimeDays :: (Core.Maybe Core.Int32),
    -- | Required. The minimum number of business days (inclusive) between when the product ships and when the product is delivered.
    minTransitTimeDays :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductDeliveryTimeAreaDeliveryTimeDeliveryTime' with the minimum fields required to make a request.
newProductDeliveryTimeAreaDeliveryTimeDeliveryTime ::
  ProductDeliveryTimeAreaDeliveryTimeDeliveryTime
newProductDeliveryTimeAreaDeliveryTimeDeliveryTime =
  ProductDeliveryTimeAreaDeliveryTimeDeliveryTime
    { maxHandlingTimeDays =
        Core.Nothing,
      maxTransitTimeDays = Core.Nothing,
      minHandlingTimeDays = Core.Nothing,
      minTransitTimeDays = Core.Nothing
    }

instance
  Core.FromJSON
    ProductDeliveryTimeAreaDeliveryTimeDeliveryTime
  where
  parseJSON =
    Core.withObject
      "ProductDeliveryTimeAreaDeliveryTimeDeliveryTime"
      ( \o ->
          ProductDeliveryTimeAreaDeliveryTimeDeliveryTime
            Core.<$> (o Core..:? "maxHandlingTimeDays")
            Core.<*> (o Core..:? "maxTransitTimeDays")
            Core.<*> (o Core..:? "minHandlingTimeDays")
            Core.<*> (o Core..:? "minTransitTimeDays")
      )

instance
  Core.ToJSON
    ProductDeliveryTimeAreaDeliveryTimeDeliveryTime
  where
  toJSON ProductDeliveryTimeAreaDeliveryTimeDeliveryTime {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxHandlingTimeDays" Core..=) Core.<$> maxHandlingTimeDays,
            ("maxTransitTimeDays" Core..=) Core.<$> maxTransitTimeDays,
            ("minHandlingTimeDays" Core..=) Core.<$> minHandlingTimeDays,
            ("minTransitTimeDays" Core..=) Core.<$> minTransitTimeDays
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
            Core.<$> (o Core..:? "unit")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON ProductDimension where
  toJSON ProductDimension {..} =
    Core.object
      ( Core.catMaybes
          [("unit" Core..=) Core.<$> unit, ("value" Core..=) Core.<$> value]
      )

-- | The Content API ID of the product.
--
-- /See:/ 'newProductId' smart constructor.
newtype ProductId = ProductId
  { -- | The Content API ID of the product, in the form @channel:contentLanguage:targetCountry:offerId@.
    productId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductId' with the minimum fields required to make a request.
newProductId ::
  ProductId
newProductId = ProductId {productId = Core.Nothing}

instance Core.FromJSON ProductId where
  parseJSON =
    Core.withObject
      "ProductId"
      (\o -> ProductId Core.<$> (o Core..:? "productId"))

instance Core.ToJSON ProductId where
  toJSON ProductId {..} =
    Core.object
      (Core.catMaybes [("productId" Core..=) Core.<$> productId])

-- | An issue affecting specific product.
--
-- /See:/ 'newProductIssue' smart constructor.
data ProductIssue = ProductIssue
  { -- | A list of actionable steps that can be executed to solve the issue. An example is requesting a re-review or providing arguments when merchant disagrees with the issue. Actions that are supported in (your) third-party application can be rendered as buttons and should be available to merchant when they expand the issue.
    actions :: (Core.Maybe [Action]),
    -- | Clarifies the severity of the issue. The summarizing message, if present, should be shown right under the title for each issue. It helps merchants to quickly understand the impact of the issue. The detailed breakdown helps the merchant to fully understand the impact of the issue. It can be rendered as dialog that opens when the merchant mouse over the summarized impact statement. Issues with different severity can be styled differently. They may use a different color or icon to signal the difference between @ERROR@, @WARNING@ and @INFO@.
    impact :: (Core.Maybe ProductIssueImpact),
    -- | Details of the issue as a pre-rendered HTML. HTML elements contain CSS classes that can be used to customize the style of the content. Always sanitize the HTML before embedding it directly to your application. The sanitizer needs to allow basic HTML tags, such as: @div@, @span@, @p@, @a@, @ul@, @li@, @table@, @tr@, @td@. For example, you can use <https://www.npmjs.com/package/dompurify DOMPurify>. CSS classes: * @issue-detail@ - top level container for the detail of the issue * @callout-banners@ - section of the @issue-detail@ with callout banners * @callout-banner@ - single callout banner, inside @callout-banners@ * @callout-banner-info@ - callout with important information (default) * @callout-banner-warning@ - callout with a warning * @callout-banner-error@ - callout informing about an error (most severe) * @issue-content@ - section of the @issue-detail@, contains multiple @content-element@ * @content-element@ - content element such as a list, link or paragraph, inside @issue-content@ * @root-causes@ -
    -- unordered list with items describing root causes of the issue, inside @issue-content@ * @root-causes-intro@ - intro text before the @root-causes@ list, inside @issue-content@ * @segment@ - section of the text, @span@ inside paragraph * @segment-attribute@ - section of the text that represents a product attribute, for example \'image_link\' * @segment-literal@ - section of the text that contains a special value, for example \'0-1000 kg\' * @segment-bold@ - section of the text that should be rendered as bold * @segment-italic@ - section of the text that should be rendered as italic * @tooltip@ - used on paragraphs that should be rendered with a tooltip. A section of the text in such a paragraph will have a class @tooltip-text@ and is intended to be shown in a mouse over dialog. If the style is not used, the @tooltip-text@ section would be shown on a new line, after the main part of the text. * @tooltip-text@ - marks a section of the text within a @tooltip@, that is intended to be shown in a mouse over dialog. *
    -- @tooltip-icon@ - marks a section of the text within a @tooltip@, that can be replaced with a tooltip icon, for example \'?\' or \'i\'. By default, this section contains a @br@ tag, that is separating the main text and the tooltip text when the style is not used. * @tooltip-style-question@ - the tooltip shows helpful information, can use the \'?\' as an icon. * @tooltip-style-info@ - the tooltip adds additional information fitting to the context, can use the \'i\' as an icon. * @content-moderation@ - marks the paragraph that explains how the issue was identified. * @list-intro@ - marks the paragraph that contains an intro for a list. This paragraph will be always followed by a list. * @new-element@ - Present for new elements added to the pre-rendered content in the future. To make sure that a new content element does not break your style, you can hide everything with this class.
    prerenderedContent :: (Core.Maybe Core.Text),
    -- | Pre-rendered HTML that contains a link to the external location where the ODS can be requested and instructions for how to request it. HTML elements contain CSS classes that can be used to customize the style of this snippet. Always sanitize the HTML before embedding it directly to your application. The sanitizer needs to allow basic HTML tags, such as: @div@, @span@, @p@, @a@, @ul@, @li@, @table@, @tr@, @td@. For example, you can use <https://www.npmjs.com/package/dompurify DOMPurify>. CSS classes: * @ods-section@* - wrapper around the out-of-court dispute resolution section * @ods-description@* - intro text for the out-of-court dispute resolution. It may contain multiple segments and a link. * @ods-param@* - wrapper around the header-value pair for parameters that merchant may need to provide during the ODS process. * @ods-routing-id@* - ods param for the Routing ID. * @ods-reference-id@* - ods param for the Routing ID. * @ods-param-header@* - header for the ODS parameter * @ods-param-value@* - value of the
    -- ODS parameter. This value should be rendered in a way that it is easy for merchants to identify and copy. * @segment@ - section of the text, @span@ inside paragraph * @segment-attribute@ - section of the text that represents a product attribute, for example \'image_link\' * @segment-literal@ - section of the text that contains a special value, for example \'0-1000 kg\' * @segment-bold@ - section of the text that should be rendered as bold * @segment-italic@ - section of the text that should be rendered as italic * @tooltip@ - used on paragraphs that should be rendered with a tooltip. A section of the text in such a paragraph will have a class @tooltip-text@ and is intended to be shown in a mouse over dialog. If the style is not used, the @tooltip-text@ section would be shown on a new line, after the main part of the text. * @tooltip-text@ - marks a section of the text within a @tooltip@, that is intended to be shown in a mouse over dialog. * @tooltip-icon@ - marks a section of the text within a @tooltip@,
    -- that can be replaced with a tooltip icon, for example \'?\' or \'i\'. By default, this section contains a @br@ tag, that is separating the main text and the tooltip text when the style is not used. * @tooltip-style-question@ - the tooltip shows helpful information, can use the \'?\' as an icon. * @tooltip-style-info@ - the tooltip adds additional information fitting to the context, can use the \'i\' as an icon.
    prerenderedOutOfCourtDisputeSettlement :: (Core.Maybe Core.Text),
    -- | Title of the issue.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductIssue' with the minimum fields required to make a request.
newProductIssue ::
  ProductIssue
newProductIssue =
  ProductIssue
    { actions = Core.Nothing,
      impact = Core.Nothing,
      prerenderedContent = Core.Nothing,
      prerenderedOutOfCourtDisputeSettlement = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON ProductIssue where
  parseJSON =
    Core.withObject
      "ProductIssue"
      ( \o ->
          ProductIssue
            Core.<$> (o Core..:? "actions")
            Core.<*> (o Core..:? "impact")
            Core.<*> (o Core..:? "prerenderedContent")
            Core.<*> (o Core..:? "prerenderedOutOfCourtDisputeSettlement")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON ProductIssue where
  toJSON ProductIssue {..} =
    Core.object
      ( Core.catMaybes
          [ ("actions" Core..=) Core.<$> actions,
            ("impact" Core..=) Core.<$> impact,
            ("prerenderedContent" Core..=) Core.<$> prerenderedContent,
            ("prerenderedOutOfCourtDisputeSettlement" Core..=)
              Core.<$> prerenderedOutOfCourtDisputeSettlement,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | Overall impact of product issue.
--
-- /See:/ 'newProductIssueImpact' smart constructor.
data ProductIssueImpact = ProductIssueImpact
  { -- | Detailed impact breakdown. Explains the types of restriction the issue has in different shopping destinations and territory. If present, it should be rendered to the merchant. Can be shown as a mouse over dropdown or a dialog. Each breakdown item represents a group of regions with the same impact details.
    breakdowns :: (Core.Maybe [Breakdown]),
    -- | Optional. Message summarizing the overall impact of the issue. If present, it should be rendered to the merchant. For example: \"Limits visibility in France\"
    message :: (Core.Maybe Core.Text),
    -- | The severity of the issue.
    severity :: (Core.Maybe ProductIssueImpact_Severity)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductIssueImpact' with the minimum fields required to make a request.
newProductIssueImpact ::
  ProductIssueImpact
newProductIssueImpact =
  ProductIssueImpact
    { breakdowns = Core.Nothing,
      message = Core.Nothing,
      severity = Core.Nothing
    }

instance Core.FromJSON ProductIssueImpact where
  parseJSON =
    Core.withObject
      "ProductIssueImpact"
      ( \o ->
          ProductIssueImpact
            Core.<$> (o Core..:? "breakdowns")
            Core.<*> (o Core..:? "message")
            Core.<*> (o Core..:? "severity")
      )

instance Core.ToJSON ProductIssueImpact where
  toJSON ProductIssueImpact {..} =
    Core.object
      ( Core.catMaybes
          [ ("breakdowns" Core..=) Core.<$> breakdowns,
            ("message" Core..=) Core.<$> message,
            ("severity" Core..=) Core.<$> severity
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
    -- | The numeric ID of a location that the shipping rate applies to as defined in the Google Ads API.
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
            Core.<*> (o Core..:? "locationId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "maxHandlingTime" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "maxTransitTime" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "minHandlingTime" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "minTransitTime" Core.<&> Core.fmap Core.fromAsText)
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
            ("locationGroupName" Core..=) Core.<$> locationGroupName,
            ("locationId" Core..=) Core.. Core.AsText Core.<$> locationId,
            ("maxHandlingTime" Core..=)
              Core.. Core.AsText
              Core.<$> maxHandlingTime,
            ("maxTransitTime" Core..=)
              Core.. Core.AsText
              Core.<$> maxTransitTime,
            ("minHandlingTime" Core..=)
              Core.. Core.AsText
              Core.<$> minHandlingTime,
            ("minTransitTime" Core..=)
              Core.. Core.AsText
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
  ProductShippingDimension
    { unit = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON ProductShippingDimension where
  parseJSON =
    Core.withObject
      "ProductShippingDimension"
      ( \o ->
          ProductShippingDimension
            Core.<$> (o Core..:? "unit")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON ProductShippingDimension where
  toJSON ProductShippingDimension {..} =
    Core.object
      ( Core.catMaybes
          [("unit" Core..=) Core.<$> unit, ("value" Core..=) Core.<$> value]
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
            Core.<$> (o Core..:? "unit")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON ProductShippingWeight where
  toJSON ProductShippingWeight {..} =
    Core.object
      ( Core.catMaybes
          [("unit" Core..=) Core.<$> unit, ("value" Core..=) Core.<$> value]
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
            Core.<*> (o Core..:? "destinationStatuses")
            Core.<*> (o Core..:? "googleExpirationDate")
            Core.<*> (o Core..:? "itemLevelIssues")
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
            ("destinationStatuses" Core..=) Core.<$> destinationStatuses,
            ("googleExpirationDate" Core..=) Core.<$> googleExpirationDate,
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
    -- | Deprecated. Destination approval status in @targetCountry@ of the offer.
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
            Core.<$> (o Core..:? "approvedCountries")
            Core.<*> (o Core..:? "destination")
            Core.<*> (o Core..:? "disapprovedCountries")
            Core.<*> (o Core..:? "pendingCountries")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON ProductStatusDestinationStatus where
  toJSON ProductStatusDestinationStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("approvedCountries" Core..=) Core.<$> approvedCountries,
            ("destination" Core..=) Core.<$> destination,
            ("disapprovedCountries" Core..=) Core.<$> disapprovedCountries,
            ("pendingCountries" Core..=) Core.<$> pendingCountries,
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
            Core.<$> (o Core..:? "applicableCountries")
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
          [ ("applicableCountries" Core..=) Core.<$> applicableCountries,
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

-- | Structured description, for algorithmically (AI)-generated descriptions. See <https://support.google.com/merchants/answer/6324468#When_to_use description> for more information.
--
-- /See:/ 'newProductStructuredDescription' smart constructor.
data ProductStructuredDescription = ProductStructuredDescription
  { -- | Required. The description text. Maximum length is 5000 characters.
    content :: (Core.Maybe Core.Text),
    -- | Optional. The digital source type. Acceptable values are: - \"@trained_algorithmic_media@\" - \"@default@\"
    digitalSourceType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductStructuredDescription' with the minimum fields required to make a request.
newProductStructuredDescription ::
  ProductStructuredDescription
newProductStructuredDescription =
  ProductStructuredDescription
    { content = Core.Nothing,
      digitalSourceType = Core.Nothing
    }

instance Core.FromJSON ProductStructuredDescription where
  parseJSON =
    Core.withObject
      "ProductStructuredDescription"
      ( \o ->
          ProductStructuredDescription
            Core.<$> (o Core..:? "content")
            Core.<*> (o Core..:? "digitalSourceType")
      )

instance Core.ToJSON ProductStructuredDescription where
  toJSON ProductStructuredDescription {..} =
    Core.object
      ( Core.catMaybes
          [ ("content" Core..=) Core.<$> content,
            ("digitalSourceType" Core..=) Core.<$> digitalSourceType
          ]
      )

-- | Structured title, for algorithmically (AI)-generated titles. See <https://support.google.com/merchants/answer/6324415#Whentouse title> for more information.
--
-- /See:/ 'newProductStructuredTitle' smart constructor.
data ProductStructuredTitle = ProductStructuredTitle
  { -- | Required. The title text. Maximum length is 150 characters.
    content :: (Core.Maybe Core.Text),
    -- | Optional. The digital source type. Acceptable values are: - \"@trained_algorithmic_media@\" - \"@default@\"
    digitalSourceType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductStructuredTitle' with the minimum fields required to make a request.
newProductStructuredTitle ::
  ProductStructuredTitle
newProductStructuredTitle =
  ProductStructuredTitle
    { content = Core.Nothing,
      digitalSourceType = Core.Nothing
    }

instance Core.FromJSON ProductStructuredTitle where
  parseJSON =
    Core.withObject
      "ProductStructuredTitle"
      ( \o ->
          ProductStructuredTitle
            Core.<$> (o Core..:? "content")
            Core.<*> (o Core..:? "digitalSourceType")
      )

instance Core.ToJSON ProductStructuredTitle where
  toJSON ProductStructuredTitle {..} =
    Core.object
      ( Core.catMaybes
          [ ("content" Core..=) Core.<$> content,
            ("digitalSourceType" Core..=) Core.<$> digitalSourceType
          ]
      )

--
-- /See:/ 'newProductSubscriptionCost' smart constructor.
data ProductSubscriptionCost = ProductSubscriptionCost
  { -- | The amount the buyer has to pay per subscription period.
    amount :: (Core.Maybe Price),
    -- | The type of subscription period. - \"@month@\" - \"@year@\"
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
            Core.<*> (o Core..:? "periodLength" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON ProductSubscriptionCost where
  toJSON ProductSubscriptionCost {..} =
    Core.object
      ( Core.catMaybes
          [ ("amount" Core..=) Core.<$> amount,
            ("period" Core..=) Core.<$> period,
            ("periodLength" Core..=) Core.. Core.AsText Core.<$> periodLength
          ]
      )

-- | Information regarding sustainability related incentive programs such as rebates or tax relief.
--
-- /See:/ 'newProductSustainabilityIncentive' smart constructor.
data ProductSustainabilityIncentive = ProductSustainabilityIncentive
  { -- | Optional. The fixed amount of the incentive.
    amount :: (Core.Maybe Price),
    -- | Optional. The percentage of the sale price that the incentive is applied to.
    percentage :: (Core.Maybe Core.Double),
    -- | Required. Sustainability incentive program.
    type' :: (Core.Maybe ProductSustainabilityIncentive_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductSustainabilityIncentive' with the minimum fields required to make a request.
newProductSustainabilityIncentive ::
  ProductSustainabilityIncentive
newProductSustainabilityIncentive =
  ProductSustainabilityIncentive
    { amount = Core.Nothing,
      percentage = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON ProductSustainabilityIncentive where
  parseJSON =
    Core.withObject
      "ProductSustainabilityIncentive"
      ( \o ->
          ProductSustainabilityIncentive
            Core.<$> (o Core..:? "amount")
            Core.<*> (o Core..:? "percentage")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON ProductSustainabilityIncentive where
  toJSON ProductSustainabilityIncentive {..} =
    Core.object
      ( Core.catMaybes
          [ ("amount" Core..=) Core.<$> amount,
            ("percentage" Core..=) Core.<$> percentage,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newProductTax' smart constructor.
data ProductTax = ProductTax
  { -- | The country within which the item is taxed, specified as a CLDR territory code.
    country :: (Core.Maybe Core.Text),
    -- | The numeric ID of a location that the tax rate applies to as defined in the Google Ads API.
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
            Core.<*> (o Core..:? "locationId" Core.<&> Core.fmap Core.fromAsText)
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
            ("locationId" Core..=) Core.. Core.AsText Core.<$> locationId,
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
  ProductUnitPricingBaseMeasure
    { unit = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON ProductUnitPricingBaseMeasure where
  parseJSON =
    Core.withObject
      "ProductUnitPricingBaseMeasure"
      ( \o ->
          ProductUnitPricingBaseMeasure
            Core.<$> (o Core..:? "unit")
            Core.<*> (o Core..:? "value" Core.<&> Core.fmap Core.fromAsText)
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
  ProductUnitPricingMeasure
    { unit = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON ProductUnitPricingMeasure where
  parseJSON =
    Core.withObject
      "ProductUnitPricingMeasure"
      ( \o ->
          ProductUnitPricingMeasure
            Core.<$> (o Core..:? "unit")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON ProductUnitPricingMeasure where
  toJSON ProductUnitPricingMeasure {..} =
    Core.object
      ( Core.catMaybes
          [("unit" Core..=) Core.<$> unit, ("value" Core..=) Core.<$> value]
      )

-- | Product fields. Values are only set for fields requested explicitly in the request\'s search query.
--
-- /See:/ 'newProductView' smart constructor.
data ProductView = ProductView
  { -- | Aggregated destination status.
    aggregatedDestinationStatus :: (Core.Maybe ProductView_AggregatedDestinationStatus),
    -- | Availability of the product.
    availability :: (Core.Maybe Core.Text),
    -- | Brand of the product.
    brand :: (Core.Maybe Core.Text),
    -- | First level of the product category in <https://support.google.com/merchants/answer/6324436 Google\'s product taxonomy>.
    categoryL1 :: (Core.Maybe Core.Text),
    -- | Second level of the product category in <https://support.google.com/merchants/answer/6324436 Google\'s product taxonomy>.
    categoryL2 :: (Core.Maybe Core.Text),
    -- | Third level of the product category in <https://support.google.com/merchants/answer/6324436 Google\'s product taxonomy>.
    categoryL3 :: (Core.Maybe Core.Text),
    -- | Fourth level of the product category in <https://support.google.com/merchants/answer/6324436 Google\'s product taxonomy>.
    categoryL4 :: (Core.Maybe Core.Text),
    -- | Fifth level of the product category in <https://support.google.com/merchants/answer/6324436 Google\'s product taxonomy>.
    categoryL5 :: (Core.Maybe Core.Text),
    -- | Channel of the product (online versus local).
    channel :: (Core.Maybe ProductView_Channel),
    -- | Estimated performance potential compared to highest performing products of the merchant.
    clickPotential :: (Core.Maybe ProductView_ClickPotential),
    -- | Rank of the product based on its click potential. A product with @click_potential_rank@ 1 has the highest click potential among the merchant\'s products that fulfill the search query conditions.
    clickPotentialRank :: (Core.Maybe Core.Int64),
    -- | Condition of the product.
    condition :: (Core.Maybe Core.Text),
    -- | The time the merchant created the product in timestamp seconds.
    creationTime :: (Core.Maybe Core.DateTime),
    -- | Product price currency code (for example, ISO 4217). Absent if product price is not available.
    currencyCode :: (Core.Maybe Core.Text),
    -- | Expiration date for the product. Specified on insertion.
    expirationDate :: (Core.Maybe Date),
    -- | GTIN of the product.
    gtin :: (Core.Maybe [Core.Text]),
    -- | The REST ID of the product, in the form of channel:contentLanguage:targetCountry:offerId. Content API methods that operate on products take this as their productId parameter. Should always be included in the SELECT clause.
    id :: (Core.Maybe Core.Text),
    -- | Item group ID provided by the merchant for grouping variants together.
    itemGroupId :: (Core.Maybe Core.Text),
    -- | List of item issues for the product.
    itemIssues :: (Core.Maybe [ProductViewItemIssue]),
    -- | Language code of the product in BCP 47 format.
    languageCode :: (Core.Maybe Core.Text),
    -- | Merchant-provided id of the product.
    offerId :: (Core.Maybe Core.Text),
    -- | Product price specified as micros (1 millionth of a standard unit, 1 USD = 1000000 micros) in the product currency. Absent in case the information about the price of the product is not available.
    priceMicros :: (Core.Maybe Core.Int64),
    -- | First level of the product type in merchant\'s own <https://support.google.com/merchants/answer/6324436 product taxonomy>.
    productTypeL1 :: (Core.Maybe Core.Text),
    -- | Second level of the product type in merchant\'s own <https://support.google.com/merchants/answer/6324436 product taxonomy>.
    productTypeL2 :: (Core.Maybe Core.Text),
    -- | Third level of the product type in merchant\'s own <https://support.google.com/merchants/answer/6324436 product taxonomy>.
    productTypeL3 :: (Core.Maybe Core.Text),
    -- | Fourth level of the product type in merchant\'s own <https://support.google.com/merchants/answer/6324436 product taxonomy>.
    productTypeL4 :: (Core.Maybe Core.Text),
    -- | Fifth level of the product type in merchant\'s own <https://support.google.com/merchants/answer/6324436 product taxonomy>.
    productTypeL5 :: (Core.Maybe Core.Text),
    -- | The normalized shipping label specified in the feed
    shippingLabel :: (Core.Maybe Core.Text),
    -- | Title of the product.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductView' with the minimum fields required to make a request.
newProductView ::
  ProductView
newProductView =
  ProductView
    { aggregatedDestinationStatus = Core.Nothing,
      availability = Core.Nothing,
      brand = Core.Nothing,
      categoryL1 = Core.Nothing,
      categoryL2 = Core.Nothing,
      categoryL3 = Core.Nothing,
      categoryL4 = Core.Nothing,
      categoryL5 = Core.Nothing,
      channel = Core.Nothing,
      clickPotential = Core.Nothing,
      clickPotentialRank = Core.Nothing,
      condition = Core.Nothing,
      creationTime = Core.Nothing,
      currencyCode = Core.Nothing,
      expirationDate = Core.Nothing,
      gtin = Core.Nothing,
      id = Core.Nothing,
      itemGroupId = Core.Nothing,
      itemIssues = Core.Nothing,
      languageCode = Core.Nothing,
      offerId = Core.Nothing,
      priceMicros = Core.Nothing,
      productTypeL1 = Core.Nothing,
      productTypeL2 = Core.Nothing,
      productTypeL3 = Core.Nothing,
      productTypeL4 = Core.Nothing,
      productTypeL5 = Core.Nothing,
      shippingLabel = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON ProductView where
  parseJSON =
    Core.withObject
      "ProductView"
      ( \o ->
          ProductView
            Core.<$> (o Core..:? "aggregatedDestinationStatus")
            Core.<*> (o Core..:? "availability")
            Core.<*> (o Core..:? "brand")
            Core.<*> (o Core..:? "categoryL1")
            Core.<*> (o Core..:? "categoryL2")
            Core.<*> (o Core..:? "categoryL3")
            Core.<*> (o Core..:? "categoryL4")
            Core.<*> (o Core..:? "categoryL5")
            Core.<*> (o Core..:? "channel")
            Core.<*> (o Core..:? "clickPotential")
            Core.<*> ( o
                         Core..:? "clickPotentialRank"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "condition")
            Core.<*> (o Core..:? "creationTime")
            Core.<*> (o Core..:? "currencyCode")
            Core.<*> (o Core..:? "expirationDate")
            Core.<*> (o Core..:? "gtin")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "itemGroupId")
            Core.<*> (o Core..:? "itemIssues")
            Core.<*> (o Core..:? "languageCode")
            Core.<*> (o Core..:? "offerId")
            Core.<*> (o Core..:? "priceMicros" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "productTypeL1")
            Core.<*> (o Core..:? "productTypeL2")
            Core.<*> (o Core..:? "productTypeL3")
            Core.<*> (o Core..:? "productTypeL4")
            Core.<*> (o Core..:? "productTypeL5")
            Core.<*> (o Core..:? "shippingLabel")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON ProductView where
  toJSON ProductView {..} =
    Core.object
      ( Core.catMaybes
          [ ("aggregatedDestinationStatus" Core..=)
              Core.<$> aggregatedDestinationStatus,
            ("availability" Core..=) Core.<$> availability,
            ("brand" Core..=) Core.<$> brand,
            ("categoryL1" Core..=) Core.<$> categoryL1,
            ("categoryL2" Core..=) Core.<$> categoryL2,
            ("categoryL3" Core..=) Core.<$> categoryL3,
            ("categoryL4" Core..=) Core.<$> categoryL4,
            ("categoryL5" Core..=) Core.<$> categoryL5,
            ("channel" Core..=) Core.<$> channel,
            ("clickPotential" Core..=) Core.<$> clickPotential,
            ("clickPotentialRank" Core..=)
              Core.. Core.AsText
              Core.<$> clickPotentialRank,
            ("condition" Core..=) Core.<$> condition,
            ("creationTime" Core..=) Core.<$> creationTime,
            ("currencyCode" Core..=) Core.<$> currencyCode,
            ("expirationDate" Core..=) Core.<$> expirationDate,
            ("gtin" Core..=) Core.<$> gtin,
            ("id" Core..=) Core.<$> id,
            ("itemGroupId" Core..=) Core.<$> itemGroupId,
            ("itemIssues" Core..=) Core.<$> itemIssues,
            ("languageCode" Core..=) Core.<$> languageCode,
            ("offerId" Core..=) Core.<$> offerId,
            ("priceMicros" Core..=) Core.. Core.AsText Core.<$> priceMicros,
            ("productTypeL1" Core..=) Core.<$> productTypeL1,
            ("productTypeL2" Core..=) Core.<$> productTypeL2,
            ("productTypeL3" Core..=) Core.<$> productTypeL3,
            ("productTypeL4" Core..=) Core.<$> productTypeL4,
            ("productTypeL5" Core..=) Core.<$> productTypeL5,
            ("shippingLabel" Core..=) Core.<$> shippingLabel,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | Item issue associated with the product.
--
-- /See:/ 'newProductViewItemIssue' smart constructor.
data ProductViewItemIssue = ProductViewItemIssue
  { -- | Item issue type.
    issueType :: (Core.Maybe ProductViewItemIssueItemIssueType),
    -- | Item issue resolution.
    resolution :: (Core.Maybe ProductViewItemIssue_Resolution),
    -- | Item issue severity.
    severity :: (Core.Maybe ProductViewItemIssueItemIssueSeverity)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductViewItemIssue' with the minimum fields required to make a request.
newProductViewItemIssue ::
  ProductViewItemIssue
newProductViewItemIssue =
  ProductViewItemIssue
    { issueType = Core.Nothing,
      resolution = Core.Nothing,
      severity = Core.Nothing
    }

instance Core.FromJSON ProductViewItemIssue where
  parseJSON =
    Core.withObject
      "ProductViewItemIssue"
      ( \o ->
          ProductViewItemIssue
            Core.<$> (o Core..:? "issueType")
            Core.<*> (o Core..:? "resolution")
            Core.<*> (o Core..:? "severity")
      )

instance Core.ToJSON ProductViewItemIssue where
  toJSON ProductViewItemIssue {..} =
    Core.object
      ( Core.catMaybes
          [ ("issueType" Core..=) Core.<$> issueType,
            ("resolution" Core..=) Core.<$> resolution,
            ("severity" Core..=) Core.<$> severity
          ]
      )

-- | Issue severity for all affected regions in a destination.
--
-- /See:/ 'newProductViewItemIssueIssueSeverityPerDestination' smart constructor.
data ProductViewItemIssueIssueSeverityPerDestination = ProductViewItemIssueIssueSeverityPerDestination
  { -- | List of demoted countries in the destination.
    demotedCountries :: (Core.Maybe [Core.Text]),
    -- | Issue destination.
    destination :: (Core.Maybe Core.Text),
    -- | List of disapproved countries in the destination.
    disapprovedCountries :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductViewItemIssueIssueSeverityPerDestination' with the minimum fields required to make a request.
newProductViewItemIssueIssueSeverityPerDestination ::
  ProductViewItemIssueIssueSeverityPerDestination
newProductViewItemIssueIssueSeverityPerDestination =
  ProductViewItemIssueIssueSeverityPerDestination
    { demotedCountries =
        Core.Nothing,
      destination = Core.Nothing,
      disapprovedCountries = Core.Nothing
    }

instance
  Core.FromJSON
    ProductViewItemIssueIssueSeverityPerDestination
  where
  parseJSON =
    Core.withObject
      "ProductViewItemIssueIssueSeverityPerDestination"
      ( \o ->
          ProductViewItemIssueIssueSeverityPerDestination
            Core.<$> (o Core..:? "demotedCountries")
            Core.<*> (o Core..:? "destination")
            Core.<*> (o Core..:? "disapprovedCountries")
      )

instance
  Core.ToJSON
    ProductViewItemIssueIssueSeverityPerDestination
  where
  toJSON ProductViewItemIssueIssueSeverityPerDestination {..} =
    Core.object
      ( Core.catMaybes
          [ ("demotedCountries" Core..=) Core.<$> demotedCountries,
            ("destination" Core..=) Core.<$> destination,
            ("disapprovedCountries" Core..=) Core.<$> disapprovedCountries
          ]
      )

-- | Severity of an issue per destination in a region, and aggregated severity.
--
-- /See:/ 'newProductViewItemIssueItemIssueSeverity' smart constructor.
data ProductViewItemIssueItemIssueSeverity = ProductViewItemIssueItemIssueSeverity
  { -- | Severity of an issue aggregated for destination.
    aggregatedSeverity ::
      ( Core.Maybe
          ProductViewItemIssueItemIssueSeverity_AggregatedSeverity
      ),
    -- | Item issue severity for every destination.
    severityPerDestination :: (Core.Maybe [ProductViewItemIssueIssueSeverityPerDestination])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductViewItemIssueItemIssueSeverity' with the minimum fields required to make a request.
newProductViewItemIssueItemIssueSeverity ::
  ProductViewItemIssueItemIssueSeverity
newProductViewItemIssueItemIssueSeverity =
  ProductViewItemIssueItemIssueSeverity
    { aggregatedSeverity =
        Core.Nothing,
      severityPerDestination = Core.Nothing
    }

instance Core.FromJSON ProductViewItemIssueItemIssueSeverity where
  parseJSON =
    Core.withObject
      "ProductViewItemIssueItemIssueSeverity"
      ( \o ->
          ProductViewItemIssueItemIssueSeverity
            Core.<$> (o Core..:? "aggregatedSeverity")
            Core.<*> (o Core..:? "severityPerDestination")
      )

instance Core.ToJSON ProductViewItemIssueItemIssueSeverity where
  toJSON ProductViewItemIssueItemIssueSeverity {..} =
    Core.object
      ( Core.catMaybes
          [ ("aggregatedSeverity" Core..=) Core.<$> aggregatedSeverity,
            ("severityPerDestination" Core..=)
              Core.<$> severityPerDestination
          ]
      )

-- | Type of the item issue.
--
-- /See:/ 'newProductViewItemIssueItemIssueType' smart constructor.
data ProductViewItemIssueItemIssueType = ProductViewItemIssueItemIssueType
  { -- | Canonical attribute name for attribute-specific issues.
    canonicalAttribute :: (Core.Maybe Core.Text),
    -- | Error code of the issue.
    code :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductViewItemIssueItemIssueType' with the minimum fields required to make a request.
newProductViewItemIssueItemIssueType ::
  ProductViewItemIssueItemIssueType
newProductViewItemIssueItemIssueType =
  ProductViewItemIssueItemIssueType
    { canonicalAttribute =
        Core.Nothing,
      code = Core.Nothing
    }

instance Core.FromJSON ProductViewItemIssueItemIssueType where
  parseJSON =
    Core.withObject
      "ProductViewItemIssueItemIssueType"
      ( \o ->
          ProductViewItemIssueItemIssueType
            Core.<$> (o Core..:? "canonicalAttribute")
            Core.<*> (o Core..:? "code")
      )

instance Core.ToJSON ProductViewItemIssueItemIssueType where
  toJSON ProductViewItemIssueItemIssueType {..} =
    Core.object
      ( Core.catMaybes
          [ ("canonicalAttribute" Core..=) Core.<$> canonicalAttribute,
            ("code" Core..=) Core.<$> code
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
newProductWeight =
  ProductWeight {unit = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON ProductWeight where
  parseJSON =
    Core.withObject
      "ProductWeight"
      ( \o ->
          ProductWeight
            Core.<$> (o Core..:? "unit")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON ProductWeight where
  toJSON ProductWeight {..} =
    Core.object
      ( Core.catMaybes
          [("unit" Core..=) Core.<$> unit, ("value" Core..=) Core.<$> value]
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
      (\o -> ProductsCustomBatchRequest Core.<$> (o Core..:? "entries"))

instance Core.ToJSON ProductsCustomBatchRequest where
  toJSON ProductsCustomBatchRequest {..} =
    Core.object
      (Core.catMaybes [("entries" Core..=) Core.<$> entries])

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
    -- | The comma-separated list of product attributes to be updated. Example: @\"title,salePrice\"@. Attributes specified in the update mask without a value specified in the body will be deleted from the product. /You must specify the update mask to delete attributes./ Only top-level product attributes can be updated. If not defined, product attributes with set values will be updated and other attributes will stay unchanged. Only defined if the method is @update@.
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

instance Core.FromJSON ProductsCustomBatchRequestEntry where
  parseJSON =
    Core.withObject
      "ProductsCustomBatchRequestEntry"
      ( \o ->
          ProductsCustomBatchRequestEntry
            Core.<$> (o Core..:? "batchId")
            Core.<*> (o Core..:? "feedId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "merchantId" Core.<&> Core.fmap Core.fromAsText)
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
            ("feedId" Core..=) Core.. Core.AsText Core.<$> feedId,
            ("merchantId" Core..=) Core.. Core.AsText Core.<$> merchantId,
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
  ProductsCustomBatchResponse
    { entries = Core.Nothing,
      kind = Core.Nothing
    }

instance Core.FromJSON ProductsCustomBatchResponse where
  parseJSON =
    Core.withObject
      "ProductsCustomBatchResponse"
      ( \o ->
          ProductsCustomBatchResponse
            Core.<$> (o Core..:? "entries")
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
    -- | A list of errors for failed custombatch entries. /Note:/ Schema errors fail the whole request.
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

instance Core.FromJSON ProductsCustomBatchResponseEntry where
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
            Core.<*> (o Core..:? "resources")
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

instance Core.FromJSON ProductstatusesCustomBatchRequest where
  parseJSON =
    Core.withObject
      "ProductstatusesCustomBatchRequest"
      ( \o ->
          ProductstatusesCustomBatchRequest Core.<$> (o Core..:? "entries")
      )

instance Core.ToJSON ProductstatusesCustomBatchRequest where
  toJSON ProductstatusesCustomBatchRequest {..} =
    Core.object
      (Core.catMaybes [("entries" Core..=) Core.<$> entries])

-- | A batch entry encoding a single non-batch productstatuses request.
--
-- /See:/ 'newProductstatusesCustomBatchRequestEntry' smart constructor.
data ProductstatusesCustomBatchRequestEntry = ProductstatusesCustomBatchRequestEntry
  { -- | An entry ID, unique within the batch request.
    batchId :: (Core.Maybe Core.Word32),
    -- | If set, only issues for the specified destinations are returned, otherwise only issues for the Shopping destination.
    destinations :: (Core.Maybe [Core.Text]),
    -- | Deprecated: Setting this field has no effect and attributes are never included.
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

instance Core.FromJSON ProductstatusesCustomBatchRequestEntry where
  parseJSON =
    Core.withObject
      "ProductstatusesCustomBatchRequestEntry"
      ( \o ->
          ProductstatusesCustomBatchRequestEntry
            Core.<$> (o Core..:? "batchId")
            Core.<*> (o Core..:? "destinations")
            Core.<*> (o Core..:? "includeAttributes")
            Core.<*> (o Core..:? "merchantId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "method")
            Core.<*> (o Core..:? "productId")
      )

instance Core.ToJSON ProductstatusesCustomBatchRequestEntry where
  toJSON ProductstatusesCustomBatchRequestEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchId" Core..=) Core.<$> batchId,
            ("destinations" Core..=) Core.<$> destinations,
            ("includeAttributes" Core..=) Core.<$> includeAttributes,
            ("merchantId" Core..=) Core.. Core.AsText Core.<$> merchantId,
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

instance Core.FromJSON ProductstatusesCustomBatchResponse where
  parseJSON =
    Core.withObject
      "ProductstatusesCustomBatchResponse"
      ( \o ->
          ProductstatusesCustomBatchResponse
            Core.<$> (o Core..:? "entries")
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON ProductstatusesCustomBatchResponse where
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
    -- | A list of errors for failed custombatch entries. /Note:/ Schema errors fail the whole request.
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

instance Core.FromJSON ProductstatusesCustomBatchResponseEntry where
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

instance Core.ToJSON ProductstatusesCustomBatchResponseEntry where
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
            Core.<*> (o Core..:? "resources")
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

-- | Represents a promotion. See the following articles for more details. * <https://support.google.com/merchants/answer/2906014 Promotions feed specification> * <https://support.google.com/merchants/answer/10146130 Local promotions feed specification> * <https://support.google.com/merchants/answer/9173673 Promotions on Buy on Google product data specification>
--
-- /See:/ 'newPromotion' smart constructor.
data Promotion = Promotion
  { -- | Product filter by brand for the promotion.
    brand :: (Core.Maybe [Core.Text]),
    -- | Product filter by brand exclusion for the promotion.
    brandExclusion :: (Core.Maybe [Core.Text]),
    -- | Required. The content language used as part of the unique identifier. @en@ content language is available for all target countries. @fr@ content language is available for @CA@ and @FR@ target countries. @de@ content language is available for @DE@ target country. @nl@ content language is available for @NL@ target country. @it@ content language is available for @IT@ target country. @pt@ content language is available for @BR@ target country. @ja@ content language is available for @JP@ target country. @ko@ content language is available for @KR@ target country.
    contentLanguage :: (Core.Maybe Core.Text),
    -- | Required. Coupon value type for the promotion.
    couponValueType :: (Core.Maybe Promotion_CouponValueType),
    -- | Free gift description for the promotion.
    freeGiftDescription :: (Core.Maybe Core.Text),
    -- | Free gift item ID for the promotion.
    freeGiftItemId :: (Core.Maybe Core.Text),
    -- | Free gift value for the promotion.
    freeGiftValue :: (Core.Maybe PriceAmount),
    -- | Generic redemption code for the promotion. To be used with the @offerType@ field.
    genericRedemptionCode :: (Core.Maybe Core.Text),
    -- | The number of items discounted in the promotion.
    getThisQuantityDiscounted :: (Core.Maybe Core.Int32),
    -- | Output only. The REST promotion ID to uniquely identify the promotion. Content API methods that operate on promotions take this as their @promotionId@ parameter. The REST ID for a promotion is of the form channel:contentLanguage:targetCountry:promotionId The @channel@ field has a value of @\"online\"@, @\"in_store\"@, or @\"online_in_store\"@.
    id :: (Core.Maybe Core.Text),
    -- | Product filter by item group ID for the promotion.
    itemGroupId :: (Core.Maybe [Core.Text]),
    -- | Product filter by item group ID exclusion for the promotion.
    itemGroupIdExclusion :: (Core.Maybe [Core.Text]),
    -- | Product filter by item ID for the promotion.
    itemId :: (Core.Maybe [Core.Text]),
    -- | Product filter by item ID exclusion for the promotion.
    itemIdExclusion :: (Core.Maybe [Core.Text]),
    -- | Maximum purchase quantity for the promotion.
    limitQuantity :: (Core.Maybe Core.Int32),
    -- | Maximum purchase value for the promotion.
    limitValue :: (Core.Maybe PriceAmount),
    -- | Required. Long title for the promotion.
    longTitle :: (Core.Maybe Core.Text),
    -- | Minimum purchase amount for the promotion.
    minimumPurchaseAmount :: (Core.Maybe PriceAmount),
    -- | Minimum purchase quantity for the promotion.
    minimumPurchaseQuantity :: (Core.Maybe Core.Int32),
    -- | Cost cap for the promotion.
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
    -- | String representation of the promotion display dates. Deprecated. Use @promotion_display_time_period@ instead.
    promotionDisplayDates :: (Core.Maybe Core.Text),
    -- | @TimePeriod@ representation of the promotion\'s display dates.
    promotionDisplayTimePeriod :: (Core.Maybe TimePeriod),
    -- | String representation of the promotion effective dates. Deprecated. Use @promotion_effective_time_period@ instead.
    promotionEffectiveDates :: (Core.Maybe Core.Text),
    -- | Required. @TimePeriod@ representation of the promotion\'s effective dates.
    promotionEffectiveTimePeriod :: (Core.Maybe TimePeriod),
    -- | Required. The user provided promotion ID to uniquely identify the promotion.
    promotionId :: (Core.Maybe Core.Text),
    -- | Output only. The current status of the promotion.
    promotionStatus :: (Core.Maybe PromotionPromotionStatus),
    -- | URL to the page on the merchant\'s site where the promotion shows. Local Inventory ads promotions throw an error if no promo url is included. URL is used to confirm that the promotion is valid and can be redeemed.
    promotionUrl :: (Core.Maybe Core.Text),
    -- | Required. Redemption channel for the promotion. At least one channel is required.
    redemptionChannel :: (Core.Maybe [Promotion_RedemptionChannelItem]),
    -- | Shipping service names for the promotion.
    shippingServiceNames :: (Core.Maybe [Core.Text]),
    -- | Whether the promotion applies to all stores, or only specified stores. Local Inventory ads promotions throw an error if no store applicability is included. An INVALID/ARGUMENT error is thrown if store/applicability is set to ALL/STORES and store/code or score/code/exclusion is set to a value.
    storeApplicability :: (Core.Maybe Promotion_StoreApplicability),
    -- | Store codes to include for the promotion.
    storeCode :: (Core.Maybe [Core.Text]),
    -- | Store codes to exclude for the promotion.
    storeCodeExclusion :: (Core.Maybe [Core.Text]),
    -- | Required. The target country used as part of the unique identifier. Can be @AU@, @CA@, @DE@, @FR@, @GB@, @IN@, @US@, @BR@, @ES@, @NL@, @JP@, @IT@ or @KR@.
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
      promotionStatus = Core.Nothing,
      promotionUrl = Core.Nothing,
      redemptionChannel = Core.Nothing,
      shippingServiceNames = Core.Nothing,
      storeApplicability = Core.Nothing,
      storeCode = Core.Nothing,
      storeCodeExclusion = Core.Nothing,
      targetCountry = Core.Nothing
    }

instance Core.FromJSON Promotion where
  parseJSON =
    Core.withObject
      "Promotion"
      ( \o ->
          Promotion
            Core.<$> (o Core..:? "brand")
            Core.<*> (o Core..:? "brandExclusion")
            Core.<*> (o Core..:? "contentLanguage")
            Core.<*> (o Core..:? "couponValueType")
            Core.<*> (o Core..:? "freeGiftDescription")
            Core.<*> (o Core..:? "freeGiftItemId")
            Core.<*> (o Core..:? "freeGiftValue")
            Core.<*> (o Core..:? "genericRedemptionCode")
            Core.<*> (o Core..:? "getThisQuantityDiscounted")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "itemGroupId")
            Core.<*> (o Core..:? "itemGroupIdExclusion")
            Core.<*> (o Core..:? "itemId")
            Core.<*> (o Core..:? "itemIdExclusion")
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
            Core.<*> (o Core..:? "productType")
            Core.<*> (o Core..:? "productTypeExclusion")
            Core.<*> (o Core..:? "promotionDestinationIds")
            Core.<*> (o Core..:? "promotionDisplayDates")
            Core.<*> (o Core..:? "promotionDisplayTimePeriod")
            Core.<*> (o Core..:? "promotionEffectiveDates")
            Core.<*> (o Core..:? "promotionEffectiveTimePeriod")
            Core.<*> (o Core..:? "promotionId")
            Core.<*> (o Core..:? "promotionStatus")
            Core.<*> (o Core..:? "promotionUrl")
            Core.<*> (o Core..:? "redemptionChannel")
            Core.<*> (o Core..:? "shippingServiceNames")
            Core.<*> (o Core..:? "storeApplicability")
            Core.<*> (o Core..:? "storeCode")
            Core.<*> (o Core..:? "storeCodeExclusion")
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
            ("freeGiftDescription" Core..=) Core.<$> freeGiftDescription,
            ("freeGiftItemId" Core..=) Core.<$> freeGiftItemId,
            ("freeGiftValue" Core..=) Core.<$> freeGiftValue,
            ("genericRedemptionCode" Core..=) Core.<$> genericRedemptionCode,
            ("getThisQuantityDiscounted" Core..=)
              Core.<$> getThisQuantityDiscounted,
            ("id" Core..=) Core.<$> id,
            ("itemGroupId" Core..=) Core.<$> itemGroupId,
            ("itemGroupIdExclusion" Core..=) Core.<$> itemGroupIdExclusion,
            ("itemId" Core..=) Core.<$> itemId,
            ("itemIdExclusion" Core..=) Core.<$> itemIdExclusion,
            ("limitQuantity" Core..=) Core.<$> limitQuantity,
            ("limitValue" Core..=) Core.<$> limitValue,
            ("longTitle" Core..=) Core.<$> longTitle,
            ("minimumPurchaseAmount" Core..=) Core.<$> minimumPurchaseAmount,
            ("minimumPurchaseQuantity" Core..=)
              Core.<$> minimumPurchaseQuantity,
            ("moneyBudget" Core..=) Core.<$> moneyBudget,
            ("moneyOffAmount" Core..=) Core.<$> moneyOffAmount,
            ("offerType" Core..=) Core.<$> offerType,
            ("orderLimit" Core..=) Core.<$> orderLimit,
            ("percentOff" Core..=) Core.<$> percentOff,
            ("productApplicability" Core..=) Core.<$> productApplicability,
            ("productType" Core..=) Core.<$> productType,
            ("productTypeExclusion" Core..=) Core.<$> productTypeExclusion,
            ("promotionDestinationIds" Core..=)
              Core.<$> promotionDestinationIds,
            ("promotionDisplayDates" Core..=) Core.<$> promotionDisplayDates,
            ("promotionDisplayTimePeriod" Core..=)
              Core.<$> promotionDisplayTimePeriod,
            ("promotionEffectiveDates" Core..=)
              Core.<$> promotionEffectiveDates,
            ("promotionEffectiveTimePeriod" Core..=)
              Core.<$> promotionEffectiveTimePeriod,
            ("promotionId" Core..=) Core.<$> promotionId,
            ("promotionStatus" Core..=) Core.<$> promotionStatus,
            ("promotionUrl" Core..=) Core.<$> promotionUrl,
            ("redemptionChannel" Core..=) Core.<$> redemptionChannel,
            ("shippingServiceNames" Core..=) Core.<$> shippingServiceNames,
            ("storeApplicability" Core..=) Core.<$> storeApplicability,
            ("storeCode" Core..=) Core.<$> storeCode,
            ("storeCodeExclusion" Core..=) Core.<$> storeCodeExclusion,
            ("targetCountry" Core..=) Core.<$> targetCountry
          ]
      )

-- | The status of the promotion.
--
-- /See:/ 'newPromotionPromotionStatus' smart constructor.
data PromotionPromotionStatus = PromotionPromotionStatus
  { -- | Date on which the promotion has been created in <http://en.wikipedia.org/wiki/ISO_8601 ISO 8601> format: Date, time, and offset, for example \"2020-01-02T09:00:00+01:00\" or \"2020-01-02T09:00:00Z\"
    creationDate :: (Core.Maybe Core.Text),
    -- | The intended destinations for the promotion.
    destinationStatuses :: (Core.Maybe [PromotionPromotionStatusDestinationStatus]),
    -- | Date on which the promotion status has been last updated in <http://en.wikipedia.org/wiki/ISO_8601 ISO 8601> format: Date, time, and offset, for example \"2020-01-02T09:00:00+01:00\" or \"2020-01-02T09:00:00Z\"
    lastUpdateDate :: (Core.Maybe Core.Text),
    -- | A list of issues associated with the promotion.
    promotionIssue :: (Core.Maybe [PromotionPromotionStatusPromotionIssue])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PromotionPromotionStatus' with the minimum fields required to make a request.
newPromotionPromotionStatus ::
  PromotionPromotionStatus
newPromotionPromotionStatus =
  PromotionPromotionStatus
    { creationDate = Core.Nothing,
      destinationStatuses = Core.Nothing,
      lastUpdateDate = Core.Nothing,
      promotionIssue = Core.Nothing
    }

instance Core.FromJSON PromotionPromotionStatus where
  parseJSON =
    Core.withObject
      "PromotionPromotionStatus"
      ( \o ->
          PromotionPromotionStatus
            Core.<$> (o Core..:? "creationDate")
            Core.<*> (o Core..:? "destinationStatuses")
            Core.<*> (o Core..:? "lastUpdateDate")
            Core.<*> (o Core..:? "promotionIssue")
      )

instance Core.ToJSON PromotionPromotionStatus where
  toJSON PromotionPromotionStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("creationDate" Core..=) Core.<$> creationDate,
            ("destinationStatuses" Core..=) Core.<$> destinationStatuses,
            ("lastUpdateDate" Core..=) Core.<$> lastUpdateDate,
            ("promotionIssue" Core..=) Core.<$> promotionIssue
          ]
      )

-- | The destination status of the promotion.
--
-- /See:/ 'newPromotionPromotionStatusDestinationStatus' smart constructor.
data PromotionPromotionStatusDestinationStatus = PromotionPromotionStatusDestinationStatus
  { -- | The name of the destination.
    destination :: (Core.Maybe Core.Text),
    -- | The status for the specified destination.
    status :: (Core.Maybe PromotionPromotionStatusDestinationStatus_Status)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PromotionPromotionStatusDestinationStatus' with the minimum fields required to make a request.
newPromotionPromotionStatusDestinationStatus ::
  PromotionPromotionStatusDestinationStatus
newPromotionPromotionStatusDestinationStatus =
  PromotionPromotionStatusDestinationStatus
    { destination =
        Core.Nothing,
      status = Core.Nothing
    }

instance Core.FromJSON PromotionPromotionStatusDestinationStatus where
  parseJSON =
    Core.withObject
      "PromotionPromotionStatusDestinationStatus"
      ( \o ->
          PromotionPromotionStatusDestinationStatus
            Core.<$> (o Core..:? "destination")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON PromotionPromotionStatusDestinationStatus where
  toJSON PromotionPromotionStatusDestinationStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("destination" Core..=) Core.<$> destination,
            ("status" Core..=) Core.<$> status
          ]
      )

-- | The issue associated with the promotion.
--
-- /See:/ 'newPromotionPromotionStatusPromotionIssue' smart constructor.
data PromotionPromotionStatusPromotionIssue = PromotionPromotionStatusPromotionIssue
  { -- | Code of the issue.
    code :: (Core.Maybe Core.Text),
    -- | Explanation of the issue.
    detail :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PromotionPromotionStatusPromotionIssue' with the minimum fields required to make a request.
newPromotionPromotionStatusPromotionIssue ::
  PromotionPromotionStatusPromotionIssue
newPromotionPromotionStatusPromotionIssue =
  PromotionPromotionStatusPromotionIssue
    { code = Core.Nothing,
      detail = Core.Nothing
    }

instance Core.FromJSON PromotionPromotionStatusPromotionIssue where
  parseJSON =
    Core.withObject
      "PromotionPromotionStatusPromotionIssue"
      ( \o ->
          PromotionPromotionStatusPromotionIssue
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "detail")
      )

instance Core.ToJSON PromotionPromotionStatusPromotionIssue where
  toJSON PromotionPromotionStatusPromotionIssue {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("detail" Core..=) Core.<$> detail
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
            Core.<*> (o Core..:? "registeredEvents")
      )

instance Core.ToJSON PubsubNotificationSettings where
  toJSON PubsubNotificationSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("cloudTopicName" Core..=) Core.<$> cloudTopicName,
            ("kind" Core..=) Core.<$> kind,
            ("registeredEvents" Core..=) Core.<$> registeredEvents
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
            Core.<$> (o Core..:? "applicableShippingLabels")
            Core.<*> (o Core..:? "carrierRates")
            Core.<*> (o Core..:? "mainTable")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "singleValue")
            Core.<*> (o Core..:? "subtables")
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

-- | Recommendations are suggested ways to improve your merchant account\'s performance. For example, to engage with a feature, or start using a new Google product.
--
-- /See:/ 'newRecommendation' smart constructor.
data Recommendation = Recommendation
  { -- | Output only. CTAs of this recommendation. Repeated.
    additionalCallToAction :: (Core.Maybe [RecommendationCallToAction]),
    -- | Output only. List of additional localized descriptions for a recommendation. Localication uses the @languageCode@ field in @GenerateRecommendations@ requests. Not all description types are guaranteed to be present and we recommend to rely on default description.
    additionalDescriptions :: (Core.Maybe [RecommendationDescription]),
    -- | Output only. Any creatives attached to the recommendation. Repeated.
    creative :: (Core.Maybe [RecommendationCreative]),
    -- | Optional. Default CTA of the recommendation.
    defaultCallToAction :: (Core.Maybe RecommendationCallToAction),
    -- | Optional. Localized recommendation description. The localization the {\@link @GenerateRecommendationsRequest.language_code@} field in {\@link @GenerateRecommendationsRequest@} requests.
    defaultDescription :: (Core.Maybe Core.Text),
    -- | Optional. A numerical score of the impact from the recommendation\'s description. For example, a recommendation might suggest an upward trend in sales for a certain product. Higher number means larger impact.
    numericalImpact :: (Core.Maybe Core.Int32),
    -- | Optional. Indicates whether a user needs to pay when they complete the user journey suggested by the recommendation.
    paid :: (Core.Maybe Core.Bool),
    -- | Optional. Localized recommendation name. The localization uses the {\@link @GenerateRecommendationsRequest.language_code@} field in {\@link @GenerateRecommendationsRequest@} requests.
    recommendationName :: (Core.Maybe Core.Text),
    -- | Optional. Subtype of the recommendations. Only applicable when multiple recommendations can be generated per type, and is used as an identifier of recommendation under the same recommendation type.
    subType :: (Core.Maybe Core.Text),
    -- | Optional. Localized Recommendation Title. Localization uses the {\@link @GenerateRecommendationsRequest.language_code@} field in {\@link @GenerateRecommendationsRequest@} requests.
    title :: (Core.Maybe Core.Text),
    -- | Output only. Type of the recommendation. List of currently available recommendation types: - OPPORTUNITY/CREATE/NEW/COLLECTION - OPPORTUNITY/CREATE/EMAIL/CAMPAIGN
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Recommendation' with the minimum fields required to make a request.
newRecommendation ::
  Recommendation
newRecommendation =
  Recommendation
    { additionalCallToAction = Core.Nothing,
      additionalDescriptions = Core.Nothing,
      creative = Core.Nothing,
      defaultCallToAction = Core.Nothing,
      defaultDescription = Core.Nothing,
      numericalImpact = Core.Nothing,
      paid = Core.Nothing,
      recommendationName = Core.Nothing,
      subType = Core.Nothing,
      title = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Recommendation where
  parseJSON =
    Core.withObject
      "Recommendation"
      ( \o ->
          Recommendation
            Core.<$> (o Core..:? "additionalCallToAction")
            Core.<*> (o Core..:? "additionalDescriptions")
            Core.<*> (o Core..:? "creative")
            Core.<*> (o Core..:? "defaultCallToAction")
            Core.<*> (o Core..:? "defaultDescription")
            Core.<*> (o Core..:? "numericalImpact")
            Core.<*> (o Core..:? "paid")
            Core.<*> (o Core..:? "recommendationName")
            Core.<*> (o Core..:? "subType")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Recommendation where
  toJSON Recommendation {..} =
    Core.object
      ( Core.catMaybes
          [ ("additionalCallToAction" Core..=)
              Core.<$> additionalCallToAction,
            ("additionalDescriptions" Core..=) Core.<$> additionalDescriptions,
            ("creative" Core..=) Core.<$> creative,
            ("defaultCallToAction" Core..=) Core.<$> defaultCallToAction,
            ("defaultDescription" Core..=) Core.<$> defaultDescription,
            ("numericalImpact" Core..=) Core.<$> numericalImpact,
            ("paid" Core..=) Core.<$> paid,
            ("recommendationName" Core..=) Core.<$> recommendationName,
            ("subType" Core..=) Core.<$> subType,
            ("title" Core..=) Core.<$> title,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Call to action (CTA) that explains how a merchant can implement this recommendation
--
-- /See:/ 'newRecommendationCallToAction' smart constructor.
data RecommendationCallToAction = RecommendationCallToAction
  { -- | Output only. Intent of the action. This value describes the intent (for example, @OPEN_CREATE_EMAIL_CAMPAIGN_FLOW@) and can vary from recommendation to recommendation. This value can change over time for the same recommendation. Currently available intent values: - OPEN/CREATE/EMAIL/CAMPAIGN/FLOW: Opens a user journey where they can create a marketing email campaign. (No default URL) - OPEN/CREATE/COLLECTION_TAB: Opens a user journey where they can <https://support.google.com/merchants/answer/9703228 create a collection> for their Merchant account. (No default URL)
    intent :: (Core.Maybe Core.Text),
    -- | Output only. Localized text of the CTA. Optional.
    localizedText :: (Core.Maybe Core.Text),
    -- | Optional. URL of the CTA. This field will only be set for some recommendations where there is a suggested landing URL. Otherwise it will be set to an empty string. We recommend developers to use their own custom landing page according to the description of the intent field above when this uri field is empty.
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RecommendationCallToAction' with the minimum fields required to make a request.
newRecommendationCallToAction ::
  RecommendationCallToAction
newRecommendationCallToAction =
  RecommendationCallToAction
    { intent = Core.Nothing,
      localizedText = Core.Nothing,
      uri = Core.Nothing
    }

instance Core.FromJSON RecommendationCallToAction where
  parseJSON =
    Core.withObject
      "RecommendationCallToAction"
      ( \o ->
          RecommendationCallToAction
            Core.<$> (o Core..:? "intent")
            Core.<*> (o Core..:? "localizedText")
            Core.<*> (o Core..:? "uri")
      )

instance Core.ToJSON RecommendationCallToAction where
  toJSON RecommendationCallToAction {..} =
    Core.object
      ( Core.catMaybes
          [ ("intent" Core..=) Core.<$> intent,
            ("localizedText" Core..=) Core.<$> localizedText,
            ("uri" Core..=) Core.<$> uri
          ]
      )

-- | Creative is a multimedia attachment to recommendation that can be used on the frontend.
--
-- /See:/ 'newRecommendationCreative' smart constructor.
data RecommendationCreative = RecommendationCreative
  { -- | Type of the creative.
    type' :: (Core.Maybe RecommendationCreative_Type),
    -- | URL of the creative.
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RecommendationCreative' with the minimum fields required to make a request.
newRecommendationCreative ::
  RecommendationCreative
newRecommendationCreative =
  RecommendationCreative {type' = Core.Nothing, uri = Core.Nothing}

instance Core.FromJSON RecommendationCreative where
  parseJSON =
    Core.withObject
      "RecommendationCreative"
      ( \o ->
          RecommendationCreative
            Core.<$> (o Core..:? "type")
            Core.<*> (o Core..:? "uri")
      )

instance Core.ToJSON RecommendationCreative where
  toJSON RecommendationCreative {..} =
    Core.object
      ( Core.catMaybes
          [("type" Core..=) Core.<$> type', ("uri" Core..=) Core.<$> uri]
      )

-- | Google-provided description for the recommendation.
--
-- /See:/ 'newRecommendationDescription' smart constructor.
data RecommendationDescription = RecommendationDescription
  { -- | Output only. Text of the description.
    text :: (Core.Maybe Core.Text),
    -- | Output only. Type of the description.
    type' :: (Core.Maybe RecommendationDescription_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RecommendationDescription' with the minimum fields required to make a request.
newRecommendationDescription ::
  RecommendationDescription
newRecommendationDescription =
  RecommendationDescription
    { text = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON RecommendationDescription where
  parseJSON =
    Core.withObject
      "RecommendationDescription"
      ( \o ->
          RecommendationDescription
            Core.<$> (o Core..:? "text")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON RecommendationDescription where
  toJSON RecommendationDescription {..} =
    Core.object
      ( Core.catMaybes
          [("text" Core..=) Core.<$> text, ("type" Core..=) Core.<$> type']
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
            Core.<*> (o Core..:? "merchantId" Core.<&> Core.fmap Core.fromAsText)
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
            ("merchantId" Core..=) Core.. Core.AsText Core.<$> merchantId,
            ("postalCodeArea" Core..=) Core.<$> postalCodeArea,
            ("regionId" Core..=) Core.<$> regionId,
            ("regionalInventoryEligible" Core..=)
              Core.<$> regionalInventoryEligible,
            ("shippingEligible" Core..=) Core.<$> shippingEligible
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
            Core.<$> ( o
                         Core..:? "geotargetCriteriaIds"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
      )

instance Core.ToJSON RegionGeoTargetArea where
  toJSON RegionGeoTargetArea {..} =
    Core.object
      ( Core.catMaybes
          [ ("geotargetCriteriaIds" Core..=)
              Core.. Core.fmap Core.AsText
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
  RegionPostalCodeArea
    { postalCodes = Core.Nothing,
      regionCode = Core.Nothing
    }

instance Core.FromJSON RegionPostalCodeArea where
  parseJSON =
    Core.withObject
      "RegionPostalCodeArea"
      ( \o ->
          RegionPostalCodeArea
            Core.<$> (o Core..:? "postalCodes")
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
  RegionPostalCodeAreaPostalCodeRange
    { begin = Core.Nothing,
      end = Core.Nothing
    }

instance Core.FromJSON RegionPostalCodeAreaPostalCodeRange where
  parseJSON =
    Core.withObject
      "RegionPostalCodeAreaPostalCodeRange"
      ( \o ->
          RegionPostalCodeAreaPostalCodeRange
            Core.<$> (o Core..:? "begin")
            Core.<*> (o Core..:? "end")
      )

instance Core.ToJSON RegionPostalCodeAreaPostalCodeRange where
  toJSON RegionPostalCodeAreaPostalCodeRange {..} =
    Core.object
      ( Core.catMaybes
          [("begin" Core..=) Core.<$> begin, ("end" Core..=) Core.<$> end]
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
            Core.<*> (o Core..:? "customAttributes")
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
            ("customAttributes" Core..=) Core.<$> customAttributes,
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

instance Core.FromJSON RegionalinventoryCustomBatchRequest where
  parseJSON =
    Core.withObject
      "RegionalinventoryCustomBatchRequest"
      ( \o ->
          RegionalinventoryCustomBatchRequest
            Core.<$> (o Core..:? "entries")
      )

instance Core.ToJSON RegionalinventoryCustomBatchRequest where
  toJSON RegionalinventoryCustomBatchRequest {..} =
    Core.object
      (Core.catMaybes [("entries" Core..=) Core.<$> entries])

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

instance Core.FromJSON RegionalinventoryCustomBatchRequestEntry where
  parseJSON =
    Core.withObject
      "RegionalinventoryCustomBatchRequestEntry"
      ( \o ->
          RegionalinventoryCustomBatchRequestEntry
            Core.<$> (o Core..:? "batchId")
            Core.<*> (o Core..:? "merchantId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "method")
            Core.<*> (o Core..:? "productId")
            Core.<*> (o Core..:? "regionalInventory")
      )

instance Core.ToJSON RegionalinventoryCustomBatchRequestEntry where
  toJSON RegionalinventoryCustomBatchRequestEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchId" Core..=) Core.<$> batchId,
            ("merchantId" Core..=) Core.. Core.AsText Core.<$> merchantId,
            ("method" Core..=) Core.<$> method,
            ("productId" Core..=) Core.<$> productId,
            ("regionalInventory" Core..=) Core.<$> regionalInventory
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

instance Core.FromJSON RegionalinventoryCustomBatchResponse where
  parseJSON =
    Core.withObject
      "RegionalinventoryCustomBatchResponse"
      ( \o ->
          RegionalinventoryCustomBatchResponse
            Core.<$> (o Core..:? "entries")
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON RegionalinventoryCustomBatchResponse where
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
    -- | A list of errors for failed custombatch entries. /Note:/ Schema errors fail the whole request.
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

instance Core.FromJSON RegionalinventoryCustomBatchResponseEntry where
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

instance Core.ToJSON RegionalinventoryCustomBatchResponseEntry where
  toJSON RegionalinventoryCustomBatchResponseEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchId" Core..=) Core.<$> batchId,
            ("errors" Core..=) Core.<$> errors,
            ("kind" Core..=) Core.<$> kind,
            ("regionalInventory" Core..=) Core.<$> regionalInventory
          ]
      )

-- | The payload for configuring how the content should be rendered.
--
-- /See:/ 'newRenderAccountIssuesRequestPayload' smart constructor.
data RenderAccountIssuesRequestPayload = RenderAccountIssuesRequestPayload
  { -- | Optional. How the detailed content should be returned. Default option is to return the content as a pre-rendered HTML text.
    contentOption :: (Core.Maybe RenderAccountIssuesRequestPayload_ContentOption),
    -- | Optional. How actions with user input form should be handled. If not provided, actions will be returned as links that points merchant to Merchant Center where they can request the action.
    userInputActionOption ::
      ( Core.Maybe
          RenderAccountIssuesRequestPayload_UserInputActionOption
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RenderAccountIssuesRequestPayload' with the minimum fields required to make a request.
newRenderAccountIssuesRequestPayload ::
  RenderAccountIssuesRequestPayload
newRenderAccountIssuesRequestPayload =
  RenderAccountIssuesRequestPayload
    { contentOption = Core.Nothing,
      userInputActionOption = Core.Nothing
    }

instance Core.FromJSON RenderAccountIssuesRequestPayload where
  parseJSON =
    Core.withObject
      "RenderAccountIssuesRequestPayload"
      ( \o ->
          RenderAccountIssuesRequestPayload
            Core.<$> (o Core..:? "contentOption")
            Core.<*> (o Core..:? "userInputActionOption")
      )

instance Core.ToJSON RenderAccountIssuesRequestPayload where
  toJSON RenderAccountIssuesRequestPayload {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentOption" Core..=) Core.<$> contentOption,
            ("userInputActionOption" Core..=) Core.<$> userInputActionOption
          ]
      )

-- | Response containing support content and actions for listed account issues.
--
-- /See:/ 'newRenderAccountIssuesResponse' smart constructor.
data RenderAccountIssuesResponse = RenderAccountIssuesResponse
  { -- | Alternate Dispute Resolution (ADR) is deprecated. Use @prerendered_out_of_court_dispute_settlement@ instead.
    alternateDisputeResolution :: (Core.Maybe AlternateDisputeResolution),
    -- | List of account issues for a given account. This list can be shown with compressed, expandable items. In the compressed form, the title and impact should be shown for each issue. Once the issue is expanded, the detailed content and available actions should be rendered.
    issues :: (Core.Maybe [AccountIssue])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RenderAccountIssuesResponse' with the minimum fields required to make a request.
newRenderAccountIssuesResponse ::
  RenderAccountIssuesResponse
newRenderAccountIssuesResponse =
  RenderAccountIssuesResponse
    { alternateDisputeResolution =
        Core.Nothing,
      issues = Core.Nothing
    }

instance Core.FromJSON RenderAccountIssuesResponse where
  parseJSON =
    Core.withObject
      "RenderAccountIssuesResponse"
      ( \o ->
          RenderAccountIssuesResponse
            Core.<$> (o Core..:? "alternateDisputeResolution")
            Core.<*> (o Core..:? "issues")
      )

instance Core.ToJSON RenderAccountIssuesResponse where
  toJSON RenderAccountIssuesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("alternateDisputeResolution" Core..=)
              Core.<$> alternateDisputeResolution,
            ("issues" Core..=) Core.<$> issues
          ]
      )

-- | The payload for configuring how the content should be rendered.
--
-- /See:/ 'newRenderProductIssuesRequestPayload' smart constructor.
data RenderProductIssuesRequestPayload = RenderProductIssuesRequestPayload
  { -- | Optional. How the detailed content should be returned. Default option is to return the content as a pre-rendered HTML text.
    contentOption :: (Core.Maybe RenderProductIssuesRequestPayload_ContentOption),
    -- | Optional. How actions with user input form should be handled. If not provided, actions will be returned as links that points merchant to Merchant Center where they can request the action.
    userInputActionOption ::
      ( Core.Maybe
          RenderProductIssuesRequestPayload_UserInputActionOption
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RenderProductIssuesRequestPayload' with the minimum fields required to make a request.
newRenderProductIssuesRequestPayload ::
  RenderProductIssuesRequestPayload
newRenderProductIssuesRequestPayload =
  RenderProductIssuesRequestPayload
    { contentOption = Core.Nothing,
      userInputActionOption = Core.Nothing
    }

instance Core.FromJSON RenderProductIssuesRequestPayload where
  parseJSON =
    Core.withObject
      "RenderProductIssuesRequestPayload"
      ( \o ->
          RenderProductIssuesRequestPayload
            Core.<$> (o Core..:? "contentOption")
            Core.<*> (o Core..:? "userInputActionOption")
      )

instance Core.ToJSON RenderProductIssuesRequestPayload where
  toJSON RenderProductIssuesRequestPayload {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentOption" Core..=) Core.<$> contentOption,
            ("userInputActionOption" Core..=) Core.<$> userInputActionOption
          ]
      )

-- | Response containing support content and actions for listed product issues.
--
-- /See:/ 'newRenderProductIssuesResponse' smart constructor.
data RenderProductIssuesResponse = RenderProductIssuesResponse
  { -- | Alternate Dispute Resolution (ADR) is deprecated. Use @prerendered_out_of_court_dispute_settlement@ instead.
    alternateDisputeResolution :: (Core.Maybe AlternateDisputeResolution),
    -- | List of issues for a given product. This list can be shown with compressed, expandable items. In the compressed form, the title and impact should be shown for each issue. Once the issue is expanded, the detailed content and available actions should be rendered.
    issues :: (Core.Maybe [ProductIssue])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RenderProductIssuesResponse' with the minimum fields required to make a request.
newRenderProductIssuesResponse ::
  RenderProductIssuesResponse
newRenderProductIssuesResponse =
  RenderProductIssuesResponse
    { alternateDisputeResolution =
        Core.Nothing,
      issues = Core.Nothing
    }

instance Core.FromJSON RenderProductIssuesResponse where
  parseJSON =
    Core.withObject
      "RenderProductIssuesResponse"
      ( \o ->
          RenderProductIssuesResponse
            Core.<$> (o Core..:? "alternateDisputeResolution")
            Core.<*> (o Core..:? "issues")
      )

instance Core.ToJSON RenderProductIssuesResponse where
  toJSON RenderProductIssuesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("alternateDisputeResolution" Core..=)
              Core.<$> alternateDisputeResolution,
            ("issues" Core..=) Core.<$> issues
          ]
      )

-- | Request to report interactions on a recommendation.
--
-- /See:/ 'newReportInteractionRequest' smart constructor.
data ReportInteractionRequest = ReportInteractionRequest
  { -- | Required. Type of the interaction that is reported, for example INTERACTION_CLICK.
    interactionType :: (Core.Maybe ReportInteractionRequest_InteractionType),
    -- | Required. Token of the response when recommendation was returned.
    responseToken :: (Core.Maybe Core.Text),
    -- | Optional. Subtype of the recommendations this interaction happened on. This field must be set only to the value that is returned by {\@link @RecommendationsService.GenerateRecommendations@} call.
    subtype :: (Core.Maybe Core.Text),
    -- | Required. Type of the recommendations on which this interaction happened. This field must be set only to the value that is returned by {\@link @GenerateRecommendationsResponse@} call.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReportInteractionRequest' with the minimum fields required to make a request.
newReportInteractionRequest ::
  ReportInteractionRequest
newReportInteractionRequest =
  ReportInteractionRequest
    { interactionType = Core.Nothing,
      responseToken = Core.Nothing,
      subtype = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON ReportInteractionRequest where
  parseJSON =
    Core.withObject
      "ReportInteractionRequest"
      ( \o ->
          ReportInteractionRequest
            Core.<$> (o Core..:? "interactionType")
            Core.<*> (o Core..:? "responseToken")
            Core.<*> (o Core..:? "subtype")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON ReportInteractionRequest where
  toJSON ReportInteractionRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("interactionType" Core..=) Core.<$> interactionType,
            ("responseToken" Core..=) Core.<$> responseToken,
            ("subtype" Core..=) Core.<$> subtype,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Result row returned from the search query.
--
-- /See:/ 'newReportRow' smart constructor.
data ReportRow = ReportRow
  { -- | Best sellers fields requested by the merchant in the query. Field values are only set if the merchant queries @BestSellersProductClusterView@ or @BestSellersBrandView@.
    bestSellers :: (Core.Maybe BestSellers),
    -- | Brand fields requested by the merchant in the query. Field values are only set if the merchant queries @BestSellersBrandView@.
    brand :: (Core.Maybe Brand),
    -- | Competitive visibility fields requested by the merchant in the query. Field values are only set if the merchant queries @CompetitiveVisibilityTopMerchantView@, @CompetitiveVisibilityBenchmarkView@ or @CompetitiveVisibilityCompetitorView@.
    competitiveVisibility :: (Core.Maybe CompetitiveVisibility),
    -- | Metrics requested by the merchant in the query. Metric values are only set for metrics requested explicitly in the query.
    metrics :: (Core.Maybe Metrics),
    -- | Price competitiveness fields requested by the merchant in the query. Field values are only set if the merchant queries @PriceCompetitivenessProductView@.
    priceCompetitiveness :: (Core.Maybe PriceCompetitiveness),
    -- | Price insights fields requested by the merchant in the query. Field values are only set if the merchant queries @PriceInsightsProductView@.
    priceInsights :: (Core.Maybe PriceInsights),
    -- | Product cluster fields requested by the merchant in the query. Field values are only set if the merchant queries @BestSellersProductClusterView@.
    productCluster :: (Core.Maybe ProductCluster),
    -- | Product fields requested by the merchant in the query. Field values are only set if the merchant queries @ProductView@.
    productView :: (Core.Maybe ProductView),
    -- | Segmentation dimensions requested by the merchant in the query. Dimension values are only set for dimensions requested explicitly in the query.
    segments :: (Core.Maybe Segments),
    -- | <https://support.google.com/merchants/answer/13542370 Topic trends> fields requested by the merchant in the query. Field values are only set if the merchant queries @TopicTrendsView@.
    topicTrends :: (Core.Maybe TopicTrends)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReportRow' with the minimum fields required to make a request.
newReportRow ::
  ReportRow
newReportRow =
  ReportRow
    { bestSellers = Core.Nothing,
      brand = Core.Nothing,
      competitiveVisibility = Core.Nothing,
      metrics = Core.Nothing,
      priceCompetitiveness = Core.Nothing,
      priceInsights = Core.Nothing,
      productCluster = Core.Nothing,
      productView = Core.Nothing,
      segments = Core.Nothing,
      topicTrends = Core.Nothing
    }

instance Core.FromJSON ReportRow where
  parseJSON =
    Core.withObject
      "ReportRow"
      ( \o ->
          ReportRow
            Core.<$> (o Core..:? "bestSellers")
            Core.<*> (o Core..:? "brand")
            Core.<*> (o Core..:? "competitiveVisibility")
            Core.<*> (o Core..:? "metrics")
            Core.<*> (o Core..:? "priceCompetitiveness")
            Core.<*> (o Core..:? "priceInsights")
            Core.<*> (o Core..:? "productCluster")
            Core.<*> (o Core..:? "productView")
            Core.<*> (o Core..:? "segments")
            Core.<*> (o Core..:? "topicTrends")
      )

instance Core.ToJSON ReportRow where
  toJSON ReportRow {..} =
    Core.object
      ( Core.catMaybes
          [ ("bestSellers" Core..=) Core.<$> bestSellers,
            ("brand" Core..=) Core.<$> brand,
            ("competitiveVisibility" Core..=) Core.<$> competitiveVisibility,
            ("metrics" Core..=) Core.<$> metrics,
            ("priceCompetitiveness" Core..=) Core.<$> priceCompetitiveness,
            ("priceInsights" Core..=) Core.<$> priceInsights,
            ("productCluster" Core..=) Core.<$> productCluster,
            ("productView" Core..=) Core.<$> productView,
            ("segments" Core..=) Core.<$> segments,
            ("topicTrends" Core..=) Core.<$> topicTrends
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

instance Core.FromJSON RequestPhoneVerificationRequest where
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

instance Core.FromJSON RequestPhoneVerificationResponse where
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

instance Core.FromJSON RequestReviewFreeListingsRequest where
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
      (Core.catMaybes [("regionCode" Core..=) Core.<$> regionCode])

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

instance Core.FromJSON RequestReviewShoppingAdsRequest where
  parseJSON =
    Core.withObject
      "RequestReviewShoppingAdsRequest"
      ( \o ->
          RequestReviewShoppingAdsRequest Core.<$> (o Core..:? "regionCode")
      )

instance Core.ToJSON RequestReviewShoppingAdsRequest where
  toJSON RequestReviewShoppingAdsRequest {..} =
    Core.object
      (Core.catMaybes [("regionCode" Core..=) Core.<$> regionCode])

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
            ("returnAddressId" Core..=) Core.<$> returnAddressId
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
            Core.<*> (o Core..:? "streetAddress")
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
            Core.<*> (o Core..:? "nonFreeReturnReasons")
            Core.<*> (o Core..:? "policy")
            Core.<*> (o Core..:? "returnPolicyId")
            Core.<*> (o Core..:? "returnShippingFee")
            Core.<*> (o Core..:? "seasonalOverrides")
      )

instance Core.ToJSON ReturnPolicy where
  toJSON ReturnPolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("country" Core..=) Core.<$> country,
            ("kind" Core..=) Core.<$> kind,
            ("label" Core..=) Core.<$> label,
            ("name" Core..=) Core.<$> name,
            ("nonFreeReturnReasons" Core..=) Core.<$> nonFreeReturnReasons,
            ("policy" Core..=) Core.<$> policy,
            ("returnPolicyId" Core..=) Core.<$> returnPolicyId,
            ("returnShippingFee" Core..=) Core.<$> returnShippingFee,
            ("seasonalOverrides" Core..=) Core.<$> seasonalOverrides
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
            Core.<$> (o Core..:? "countries")
            Core.<*> (o Core..:? "itemConditions")
            Core.<*> (o Core..:? "label")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "policy")
            Core.<*> (o Core..:? "restockingFee")
            Core.<*> (o Core..:? "returnMethods")
            Core.<*> (o Core..:? "returnPolicyId")
            Core.<*> (o Core..:? "returnPolicyUri")
            Core.<*> (o Core..:? "returnReasonCategoryInfo")
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
  ReturnPolicyOnlinePolicy
    { days = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON ReturnPolicyOnlinePolicy where
  parseJSON =
    Core.withObject
      "ReturnPolicyOnlinePolicy"
      ( \o ->
          ReturnPolicyOnlinePolicy
            Core.<$> (o Core..:? "days" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "type")
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

instance Core.FromJSON ReturnPolicyOnlineRestockingFee where
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
  { -- | The corresponding return label source. If the @ReturnMethod@ field includes @BY_MAIL@, it is required to specify @ReturnLabelSource@ for both @BUYER_REMORSE@ and @ITEM_DEFECT@ return reason categories.
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
    { returnLabelSource =
        Core.Nothing,
      returnReasonCategory = Core.Nothing,
      returnShippingFee = Core.Nothing
    }

instance Core.FromJSON ReturnPolicyOnlineReturnReasonCategoryInfo where
  parseJSON =
    Core.withObject
      "ReturnPolicyOnlineReturnReasonCategoryInfo"
      ( \o ->
          ReturnPolicyOnlineReturnReasonCategoryInfo
            Core.<$> (o Core..:? "returnLabelSource")
            Core.<*> (o Core..:? "returnReasonCategory")
            Core.<*> (o Core..:? "returnShippingFee")
      )

instance Core.ToJSON ReturnPolicyOnlineReturnReasonCategoryInfo where
  toJSON ReturnPolicyOnlineReturnReasonCategoryInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("returnLabelSource" Core..=) Core.<$> returnLabelSource,
            ("returnReasonCategory" Core..=) Core.<$> returnReasonCategory,
            ("returnShippingFee" Core..=) Core.<$> returnShippingFee
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

instance Core.FromJSON ReturnPolicyOnlineReturnShippingFee where
  parseJSON =
    Core.withObject
      "ReturnPolicyOnlineReturnShippingFee"
      ( \o ->
          ReturnPolicyOnlineReturnShippingFee
            Core.<$> (o Core..:? "fixedFee")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON ReturnPolicyOnlineReturnShippingFee where
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
            Core.<*> (o Core..:? "numberOfDays" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON ReturnPolicyPolicy where
  toJSON ReturnPolicyPolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("lastReturnDate" Core..=) Core.<$> lastReturnDate,
            ("numberOfDays" Core..=) Core.. Core.AsText Core.<$> numberOfDays,
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

instance Core.FromJSON ReturnaddressCustomBatchRequest where
  parseJSON =
    Core.withObject
      "ReturnaddressCustomBatchRequest"
      ( \o ->
          ReturnaddressCustomBatchRequest Core.<$> (o Core..:? "entries")
      )

instance Core.ToJSON ReturnaddressCustomBatchRequest where
  toJSON ReturnaddressCustomBatchRequest {..} =
    Core.object
      (Core.catMaybes [("entries" Core..=) Core.<$> entries])

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

instance Core.FromJSON ReturnaddressCustomBatchRequestEntry where
  parseJSON =
    Core.withObject
      "ReturnaddressCustomBatchRequestEntry"
      ( \o ->
          ReturnaddressCustomBatchRequestEntry
            Core.<$> (o Core..:? "batchId")
            Core.<*> (o Core..:? "merchantId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "method")
            Core.<*> (o Core..:? "returnAddress")
            Core.<*> (o Core..:? "returnAddressId")
      )

instance Core.ToJSON ReturnaddressCustomBatchRequestEntry where
  toJSON ReturnaddressCustomBatchRequestEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchId" Core..=) Core.<$> batchId,
            ("merchantId" Core..=) Core.. Core.AsText Core.<$> merchantId,
            ("method" Core..=) Core.<$> method,
            ("returnAddress" Core..=) Core.<$> returnAddress,
            ("returnAddressId" Core..=) Core.<$> returnAddressId
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
  ReturnaddressCustomBatchResponse
    { entries = Core.Nothing,
      kind = Core.Nothing
    }

instance Core.FromJSON ReturnaddressCustomBatchResponse where
  parseJSON =
    Core.withObject
      "ReturnaddressCustomBatchResponse"
      ( \o ->
          ReturnaddressCustomBatchResponse
            Core.<$> (o Core..:? "entries")
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

instance Core.FromJSON ReturnaddressCustomBatchResponseEntry where
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

instance Core.ToJSON ReturnaddressCustomBatchResponseEntry where
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
            Core.<*> (o Core..:? "resources")
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
          ReturnpolicyCustomBatchRequest Core.<$> (o Core..:? "entries")
      )

instance Core.ToJSON ReturnpolicyCustomBatchRequest where
  toJSON ReturnpolicyCustomBatchRequest {..} =
    Core.object
      (Core.catMaybes [("entries" Core..=) Core.<$> entries])

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

instance Core.FromJSON ReturnpolicyCustomBatchRequestEntry where
  parseJSON =
    Core.withObject
      "ReturnpolicyCustomBatchRequestEntry"
      ( \o ->
          ReturnpolicyCustomBatchRequestEntry
            Core.<$> (o Core..:? "batchId")
            Core.<*> (o Core..:? "merchantId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "method")
            Core.<*> (o Core..:? "returnPolicy")
            Core.<*> (o Core..:? "returnPolicyId")
      )

instance Core.ToJSON ReturnpolicyCustomBatchRequestEntry where
  toJSON ReturnpolicyCustomBatchRequestEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchId" Core..=) Core.<$> batchId,
            ("merchantId" Core..=) Core.. Core.AsText Core.<$> merchantId,
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
  ReturnpolicyCustomBatchResponse
    { entries = Core.Nothing,
      kind = Core.Nothing
    }

instance Core.FromJSON ReturnpolicyCustomBatchResponse where
  parseJSON =
    Core.withObject
      "ReturnpolicyCustomBatchResponse"
      ( \o ->
          ReturnpolicyCustomBatchResponse
            Core.<$> (o Core..:? "entries")
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

instance Core.FromJSON ReturnpolicyCustomBatchResponseEntry where
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

instance Core.ToJSON ReturnpolicyCustomBatchResponseEntry where
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
    resources :: (Core.Maybe [ReturnPolicy])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReturnpolicyListResponse' with the minimum fields required to make a request.
newReturnpolicyListResponse ::
  ReturnpolicyListResponse
newReturnpolicyListResponse =
  ReturnpolicyListResponse
    { kind = Core.Nothing,
      resources = Core.Nothing
    }

instance Core.FromJSON ReturnpolicyListResponse where
  parseJSON =
    Core.withObject
      "ReturnpolicyListResponse"
      ( \o ->
          ReturnpolicyListResponse
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "resources")
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
    Core.withObject "Row" (\o -> Row Core.<$> (o Core..:? "cells"))

instance Core.ToJSON Row where
  toJSON Row {..} =
    Core.object (Core.catMaybes [("cells" Core..=) Core.<$> cells])

-- | Request message for the ReportService.Search method.
--
-- /See:/ 'newSearchRequest' smart constructor.
data SearchRequest = SearchRequest
  { -- | Number of ReportRows to retrieve in a single page. Defaults to 1000. Values above 5000 are coerced to 5000.
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
  SearchResponse
    { nextPageToken = Core.Nothing,
      results = Core.Nothing
    }

instance Core.FromJSON SearchResponse where
  parseJSON =
    Core.withObject
      "SearchResponse"
      ( \o ->
          SearchResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "results")
      )

instance Core.ToJSON SearchResponse where
  toJSON SearchResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("results" Core..=) Core.<$> results
          ]
      )

-- | Dimensions according to which metrics are segmented in the response. Values of product dimensions, such as @offer_id@, reflect the state of a product at the time of the corresponding event, for example, impression or order. Segment fields cannot be selected in queries without also selecting at least one metric field. Values are only set for dimensions requested explicitly in the request\'s search query.
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
    -- | Currency in which price metrics are represented, for example, if you select @ordered_item_sales_micros@, the returned value will be represented by this currency.
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
    -- | Code of the country where the customer is located at the time of the event. Represented in the ISO 3166 format. If the customer country cannot be determined, a special \'ZZ\' code is returned.
    customerCountryCode :: (Core.Maybe Core.Text),
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
    -- | Program to which metrics apply, for example, Free Product Listing.
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
      customerCountryCode = Core.Nothing,
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
            Core.<*> (o Core..:? "customerCountryCode")
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
            ("customerCountryCode" Core..=) Core.<$> customerCountryCode,
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
    -- | Type of locations this service ships orders to. Acceptable values are: - \"@delivery@\" - \"@pickup@ (deprecated)\" - \"@local_delivery@\" - \"@collection_point@\"
    shipmentType :: (Core.Maybe Core.Text),
    -- | A list of stores your products are delivered from. This is only available for the local delivery shipment type.
    storeConfig :: (Core.Maybe ServiceStoreConfig)
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
      shipmentType = Core.Nothing,
      storeConfig = Core.Nothing
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
            Core.<*> (o Core..:? "rateGroups")
            Core.<*> (o Core..:? "shipmentType")
            Core.<*> (o Core..:? "storeConfig")
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
            ("minimumOrderValue" Core..=) Core.<$> minimumOrderValue,
            ("minimumOrderValueTable" Core..=) Core.<$> minimumOrderValueTable,
            ("name" Core..=) Core.<$> name,
            ("pickupService" Core..=) Core.<$> pickupService,
            ("rateGroups" Core..=) Core.<$> rateGroups,
            ("shipmentType" Core..=) Core.<$> shipmentType,
            ("storeConfig" Core..=) Core.<$> storeConfig
          ]
      )

-- | Stores that provide local delivery. Only valid with local delivery fulfillment.
--
-- /See:/ 'newServiceStoreConfig' smart constructor.
data ServiceStoreConfig = ServiceStoreConfig
  { -- | Time local delivery ends for the day. This can be either @local_cutoff_time@ or @store_close_offset_hours@, if both are provided an error is thrown.
    cutoffConfig :: (Core.Maybe ServiceStoreConfigCutoffConfig),
    -- | Maximum delivery radius. Only needed for local delivery fulfillment type.
    serviceRadius :: (Core.Maybe Distance),
    -- | A list of store codes that provide local delivery. If empty, then @store_service_type@ must be @all_stores@, or an error is thrown. If not empty, then @store_service_type@ must be @selected_stores@, or an error is thrown.
    storeCodes :: (Core.Maybe [Core.Text]),
    -- | Indicates whether all stores listed by this merchant provide local delivery or not. Acceptable values are @all stores@ and @selected stores@
    storeServiceType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceStoreConfig' with the minimum fields required to make a request.
newServiceStoreConfig ::
  ServiceStoreConfig
newServiceStoreConfig =
  ServiceStoreConfig
    { cutoffConfig = Core.Nothing,
      serviceRadius = Core.Nothing,
      storeCodes = Core.Nothing,
      storeServiceType = Core.Nothing
    }

instance Core.FromJSON ServiceStoreConfig where
  parseJSON =
    Core.withObject
      "ServiceStoreConfig"
      ( \o ->
          ServiceStoreConfig
            Core.<$> (o Core..:? "cutoffConfig")
            Core.<*> (o Core..:? "serviceRadius")
            Core.<*> (o Core..:? "storeCodes")
            Core.<*> (o Core..:? "storeServiceType")
      )

instance Core.ToJSON ServiceStoreConfig where
  toJSON ServiceStoreConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("cutoffConfig" Core..=) Core.<$> cutoffConfig,
            ("serviceRadius" Core..=) Core.<$> serviceRadius,
            ("storeCodes" Core..=) Core.<$> storeCodes,
            ("storeServiceType" Core..=) Core.<$> storeServiceType
          ]
      )

-- | Time local delivery ends for the day based on the local timezone of the store. @local_cutoff_time@ and @store_close_offset_hours@ are mutually exclusive.
--
-- /See:/ 'newServiceStoreConfigCutoffConfig' smart constructor.
data ServiceStoreConfigCutoffConfig = ServiceStoreConfigCutoffConfig
  { -- | Time in hours and minutes in the local timezone when local delivery ends.
    localCutoffTime :: (Core.Maybe ServiceStoreConfigCutoffConfigLocalCutoffTime),
    -- | Merchants can opt-out of showing n+1 day local delivery when they have a shipping service configured to n day local delivery. For example, if the shipping service defines same-day delivery, and it\'s past the cut-off, setting this field to @true@ results in the calculated shipping service rate returning @NO_DELIVERY_POST_CUTOFF@. In the same example, setting this field to @false@ results in the calculated shipping time being one day. This is only for local delivery.
    noDeliveryPostCutoff :: (Core.Maybe Core.Bool),
    -- | Represents cutoff time as the number of hours before store closing. Mutually exclusive with other fields (hour and minute).
    storeCloseOffsetHours :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceStoreConfigCutoffConfig' with the minimum fields required to make a request.
newServiceStoreConfigCutoffConfig ::
  ServiceStoreConfigCutoffConfig
newServiceStoreConfigCutoffConfig =
  ServiceStoreConfigCutoffConfig
    { localCutoffTime = Core.Nothing,
      noDeliveryPostCutoff = Core.Nothing,
      storeCloseOffsetHours = Core.Nothing
    }

instance Core.FromJSON ServiceStoreConfigCutoffConfig where
  parseJSON =
    Core.withObject
      "ServiceStoreConfigCutoffConfig"
      ( \o ->
          ServiceStoreConfigCutoffConfig
            Core.<$> (o Core..:? "localCutoffTime")
            Core.<*> (o Core..:? "noDeliveryPostCutoff")
            Core.<*> ( o
                         Core..:? "storeCloseOffsetHours"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON ServiceStoreConfigCutoffConfig where
  toJSON ServiceStoreConfigCutoffConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("localCutoffTime" Core..=) Core.<$> localCutoffTime,
            ("noDeliveryPostCutoff" Core..=) Core.<$> noDeliveryPostCutoff,
            ("storeCloseOffsetHours" Core..=)
              Core.. Core.AsText
              Core.<$> storeCloseOffsetHours
          ]
      )

-- | Time in hours and minutes in the local timezone when local delivery ends.
--
-- /See:/ 'newServiceStoreConfigCutoffConfigLocalCutoffTime' smart constructor.
data ServiceStoreConfigCutoffConfigLocalCutoffTime = ServiceStoreConfigCutoffConfigLocalCutoffTime
  { -- | Hour local delivery orders must be placed by to process the same day.
    hour :: (Core.Maybe Core.Int64),
    -- | Minute local delivery orders must be placed by to process the same day.
    minute :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceStoreConfigCutoffConfigLocalCutoffTime' with the minimum fields required to make a request.
newServiceStoreConfigCutoffConfigLocalCutoffTime ::
  ServiceStoreConfigCutoffConfigLocalCutoffTime
newServiceStoreConfigCutoffConfigLocalCutoffTime =
  ServiceStoreConfigCutoffConfigLocalCutoffTime
    { hour =
        Core.Nothing,
      minute = Core.Nothing
    }

instance
  Core.FromJSON
    ServiceStoreConfigCutoffConfigLocalCutoffTime
  where
  parseJSON =
    Core.withObject
      "ServiceStoreConfigCutoffConfigLocalCutoffTime"
      ( \o ->
          ServiceStoreConfigCutoffConfigLocalCutoffTime
            Core.<$> (o Core..:? "hour" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "minute" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON ServiceStoreConfigCutoffConfigLocalCutoffTime where
  toJSON ServiceStoreConfigCutoffConfigLocalCutoffTime {..} =
    Core.object
      ( Core.catMaybes
          [ ("hour" Core..=) Core.. Core.AsText Core.<$> hour,
            ("minute" Core..=) Core.. Core.AsText Core.<$> minute
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
            Core.<$> (o Core..:? "accountId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "postalCodeGroups")
            Core.<*> (o Core..:? "services")
            Core.<*> (o Core..:? "warehouses")
      )

instance Core.ToJSON ShippingSettings where
  toJSON ShippingSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.. Core.AsText Core.<$> accountId,
            ("postalCodeGroups" Core..=) Core.<$> postalCodeGroups,
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

instance Core.FromJSON ShippingsettingsCustomBatchRequest where
  parseJSON =
    Core.withObject
      "ShippingsettingsCustomBatchRequest"
      ( \o ->
          ShippingsettingsCustomBatchRequest Core.<$> (o Core..:? "entries")
      )

instance Core.ToJSON ShippingsettingsCustomBatchRequest where
  toJSON ShippingsettingsCustomBatchRequest {..} =
    Core.object
      (Core.catMaybes [("entries" Core..=) Core.<$> entries])

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

instance Core.FromJSON ShippingsettingsCustomBatchRequestEntry where
  parseJSON =
    Core.withObject
      "ShippingsettingsCustomBatchRequestEntry"
      ( \o ->
          ShippingsettingsCustomBatchRequestEntry
            Core.<$> (o Core..:? "accountId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "batchId")
            Core.<*> (o Core..:? "merchantId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "method")
            Core.<*> (o Core..:? "shippingSettings")
      )

instance Core.ToJSON ShippingsettingsCustomBatchRequestEntry where
  toJSON ShippingsettingsCustomBatchRequestEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.. Core.AsText Core.<$> accountId,
            ("batchId" Core..=) Core.<$> batchId,
            ("merchantId" Core..=) Core.. Core.AsText Core.<$> merchantId,
            ("method" Core..=) Core.<$> method,
            ("shippingSettings" Core..=) Core.<$> shippingSettings
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

instance Core.FromJSON ShippingsettingsCustomBatchResponse where
  parseJSON =
    Core.withObject
      "ShippingsettingsCustomBatchResponse"
      ( \o ->
          ShippingsettingsCustomBatchResponse
            Core.<$> (o Core..:? "entries")
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON ShippingsettingsCustomBatchResponse where
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
    -- | A list of errors for failed custombatch entries. /Note:/ Schema errors fail the whole request.
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

instance Core.FromJSON ShippingsettingsCustomBatchResponseEntry where
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

instance Core.ToJSON ShippingsettingsCustomBatchResponseEntry where
  toJSON ShippingsettingsCustomBatchResponseEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchId" Core..=) Core.<$> batchId,
            ("errors" Core..=) Core.<$> errors,
            ("kind" Core..=) Core.<$> kind,
            ("shippingSettings" Core..=) Core.<$> shippingSettings
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
    { carriers =
        Core.Nothing,
      kind = Core.Nothing
    }

instance Core.FromJSON ShippingsettingsGetSupportedCarriersResponse where
  parseJSON =
    Core.withObject
      "ShippingsettingsGetSupportedCarriersResponse"
      ( \o ->
          ShippingsettingsGetSupportedCarriersResponse
            Core.<$> (o Core..:? "carriers")
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON ShippingsettingsGetSupportedCarriersResponse where
  toJSON ShippingsettingsGetSupportedCarriersResponse {..} =
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
    { holidays =
        Core.Nothing,
      kind = Core.Nothing
    }

instance Core.FromJSON ShippingsettingsGetSupportedHolidaysResponse where
  parseJSON =
    Core.withObject
      "ShippingsettingsGetSupportedHolidaysResponse"
      ( \o ->
          ShippingsettingsGetSupportedHolidaysResponse
            Core.<$> (o Core..:? "holidays")
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON ShippingsettingsGetSupportedHolidaysResponse where
  toJSON ShippingsettingsGetSupportedHolidaysResponse {..} =
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
    { kind =
        Core.Nothing,
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
            Core.<*> (o Core..:? "pickupServices")
      )

instance
  Core.ToJSON
    ShippingsettingsGetSupportedPickupServicesResponse
  where
  toJSON ShippingsettingsGetSupportedPickupServicesResponse {..} =
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
            Core.<*> (o Core..:? "resources")
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
  { -- | State of the program. @ENABLED@ if there are offers for at least one region.
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
            Core.<*> (o Core..:? "regionStatuses")
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
  { -- | Date by which eligibilityStatus will go from @WARNING@ to @DISAPPROVED@. Only visible when your eligibilityStatus is WARNING. In <https://en.wikipedia.org/wiki/ISO_8601 ISO 8601> format: @YYYY-MM-DD@.
    disapprovalDate :: (Core.Maybe Core.Text),
    -- | Eligibility status of the Shopping Ads program.
    eligibilityStatus :: (Core.Maybe ShoppingAdsProgramStatusRegionStatus_EligibilityStatus),
    -- | Issues that must be fixed to be eligible for review.
    onboardingIssues :: (Core.Maybe [Core.Text]),
    -- | The two-letter <https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2 ISO 3166-1 alpha-2> codes for all the regions with the same @eligibilityStatus@ and @reviewEligibility@.
    regionCodes :: (Core.Maybe [Core.Text]),
    -- | If a program is eligible for review in a specific region. Only visible if @eligibilityStatus@ is @DISAPPROVED@.
    reviewEligibilityStatus ::
      ( Core.Maybe
          ShoppingAdsProgramStatusRegionStatus_ReviewEligibilityStatus
      ),
    -- | Review ineligibility reason if account is not eligible for review.
    reviewIneligibilityReason ::
      ( Core.Maybe
          ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason
      ),
    -- | Reason a program in a specific region isn’t eligible for review. Only visible if @reviewEligibilityStatus@ is @INELIGIBLE@.
    reviewIneligibilityReasonDescription :: (Core.Maybe Core.Text),
    -- | Additional information for ineligibility. If @reviewIneligibilityReason@ is @IN_COOLDOWN_PERIOD@, a timestamp for the end of the cooldown period is provided.
    reviewIneligibilityReasonDetails ::
      ( Core.Maybe
          ShoppingAdsProgramStatusReviewIneligibilityReasonDetails
      ),
    -- | Issues evaluated in the review process. Fix all issues before requesting a review.
    reviewIssues :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ShoppingAdsProgramStatusRegionStatus' with the minimum fields required to make a request.
newShoppingAdsProgramStatusRegionStatus ::
  ShoppingAdsProgramStatusRegionStatus
newShoppingAdsProgramStatusRegionStatus =
  ShoppingAdsProgramStatusRegionStatus
    { disapprovalDate =
        Core.Nothing,
      eligibilityStatus = Core.Nothing,
      onboardingIssues = Core.Nothing,
      regionCodes = Core.Nothing,
      reviewEligibilityStatus = Core.Nothing,
      reviewIneligibilityReason = Core.Nothing,
      reviewIneligibilityReasonDescription = Core.Nothing,
      reviewIneligibilityReasonDetails = Core.Nothing,
      reviewIssues = Core.Nothing
    }

instance Core.FromJSON ShoppingAdsProgramStatusRegionStatus where
  parseJSON =
    Core.withObject
      "ShoppingAdsProgramStatusRegionStatus"
      ( \o ->
          ShoppingAdsProgramStatusRegionStatus
            Core.<$> (o Core..:? "disapprovalDate")
            Core.<*> (o Core..:? "eligibilityStatus")
            Core.<*> (o Core..:? "onboardingIssues")
            Core.<*> (o Core..:? "regionCodes")
            Core.<*> (o Core..:? "reviewEligibilityStatus")
            Core.<*> (o Core..:? "reviewIneligibilityReason")
            Core.<*> (o Core..:? "reviewIneligibilityReasonDescription")
            Core.<*> (o Core..:? "reviewIneligibilityReasonDetails")
            Core.<*> (o Core..:? "reviewIssues")
      )

instance Core.ToJSON ShoppingAdsProgramStatusRegionStatus where
  toJSON ShoppingAdsProgramStatusRegionStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("disapprovalDate" Core..=) Core.<$> disapprovalDate,
            ("eligibilityStatus" Core..=) Core.<$> eligibilityStatus,
            ("onboardingIssues" Core..=) Core.<$> onboardingIssues,
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
    { cooldownTime =
        Core.Nothing
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
  toJSON ShoppingAdsProgramStatusReviewIneligibilityReasonDetails {..} =
    Core.object
      (Core.catMaybes [("cooldownTime" Core..=) Core.<$> cooldownTime])

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
            Core.<*> (o Core..:? "rows")
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

-- | Block of text that may contain a tooltip with more information.
--
-- /See:/ 'newTextWithTooltip' smart constructor.
data TextWithTooltip = TextWithTooltip
  { -- | Value of the tooltip as a simple text.
    simpleTooltipValue :: (Core.Maybe Core.Text),
    -- | Value of the message as a simple text.
    simpleValue :: (Core.Maybe Core.Text),
    -- | The suggested type of an icon for tooltip, if a tooltip is present.
    tooltipIconStyle :: (Core.Maybe TextWithTooltip_TooltipIconStyle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TextWithTooltip' with the minimum fields required to make a request.
newTextWithTooltip ::
  TextWithTooltip
newTextWithTooltip =
  TextWithTooltip
    { simpleTooltipValue = Core.Nothing,
      simpleValue = Core.Nothing,
      tooltipIconStyle = Core.Nothing
    }

instance Core.FromJSON TextWithTooltip where
  parseJSON =
    Core.withObject
      "TextWithTooltip"
      ( \o ->
          TextWithTooltip
            Core.<$> (o Core..:? "simpleTooltipValue")
            Core.<*> (o Core..:? "simpleValue")
            Core.<*> (o Core..:? "tooltipIconStyle")
      )

instance Core.ToJSON TextWithTooltip where
  toJSON TextWithTooltip {..} =
    Core.object
      ( Core.catMaybes
          [ ("simpleTooltipValue" Core..=) Core.<$> simpleTooltipValue,
            ("simpleValue" Core..=) Core.<$> simpleValue,
            ("tooltipIconStyle" Core..=) Core.<$> tooltipIconStyle
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
newTimePeriod =
  TimePeriod {endTime = Core.Nothing, startTime = Core.Nothing}

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
  { -- | IANA Time Zone Database time zone. For example \"America\/New_York\".
    id :: (Core.Maybe Core.Text),
    -- | Optional. IANA Time Zone Database version number. For example \"2019a\".
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
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON TimeZone where
  toJSON TimeZone {..} =
    Core.object
      ( Core.catMaybes
          [("id" Core..=) Core.<$> id, ("version" Core..=) Core.<$> version]
      )

-- | Topic trends fields requested by the merchant in the query. Field values are only set if the merchant queries @TopicTrendsView@. Forecast data can be queried up to 13 weeks by passing a future date in the @date@ field. Historical data is measured daily, and forecasted data is projected weekly. All data points are normalized based on the highest data points returned in the response. If you make separate queries with different date ranges, you might see different values for the same date in each response. The recommended way to get a trend score of a topic is @last7_days_search_interest \/ last{$day}_days_search_interest - 1@. You can view trends for up to eight topics at a time.
--
-- /See:/ 'newTopicTrends' smart constructor.
data TopicTrends = TopicTrends
  { -- | Country trends are calculated for. Must be a two-letter country code (ISO 3166-1-alpha-2 code), for example, @“US”@.
    customerCountryCode :: (Core.Maybe Core.Text),
    -- | Date the trend score was retrieved.
    date :: (Core.Maybe Date),
    -- | Search interest in the last 120 days, with the same normalization as search_interest. This field is only present for a past date.
    last120DaysSearchInterest :: (Core.Maybe Core.Double),
    -- | Search interest in the last 30 days, with the same normalization as search_interest. This field is only present for a past date.
    last30DaysSearchInterest :: (Core.Maybe Core.Double),
    -- | Search interest in the last 7 days, with the same normalization as search_interest. This field is only present for a past date.
    last7DaysSearchInterest :: (Core.Maybe Core.Double),
    -- | Search interest in the last 90 days, with the same normalization as search_interest. This field is only present for a past date.
    last90DaysSearchInterest :: (Core.Maybe Core.Double),
    -- | Estimated search interest in the next 7 days, with the same normalization as search_interest. This field is only present for a future date.
    next7DaysSearchInterest :: (Core.Maybe Core.Double),
    -- | Daily search interest, normalized to the time and country to make comparisons easier, with 100 representing peak popularity (from 0 to 100) for the requested time period and location.
    searchInterest :: (Core.Maybe Core.Double),
    -- | Google-provided topic trends are calculated for. Only top eight topics are returned. Topic is what shoppers are searching for on Google, grouped by the same concept.
    topic :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TopicTrends' with the minimum fields required to make a request.
newTopicTrends ::
  TopicTrends
newTopicTrends =
  TopicTrends
    { customerCountryCode = Core.Nothing,
      date = Core.Nothing,
      last120DaysSearchInterest = Core.Nothing,
      last30DaysSearchInterest = Core.Nothing,
      last7DaysSearchInterest = Core.Nothing,
      last90DaysSearchInterest = Core.Nothing,
      next7DaysSearchInterest = Core.Nothing,
      searchInterest = Core.Nothing,
      topic = Core.Nothing
    }

instance Core.FromJSON TopicTrends where
  parseJSON =
    Core.withObject
      "TopicTrends"
      ( \o ->
          TopicTrends
            Core.<$> (o Core..:? "customerCountryCode")
            Core.<*> (o Core..:? "date")
            Core.<*> (o Core..:? "last120DaysSearchInterest")
            Core.<*> (o Core..:? "last30DaysSearchInterest")
            Core.<*> (o Core..:? "last7DaysSearchInterest")
            Core.<*> (o Core..:? "last90DaysSearchInterest")
            Core.<*> (o Core..:? "next7DaysSearchInterest")
            Core.<*> (o Core..:? "searchInterest")
            Core.<*> (o Core..:? "topic")
      )

instance Core.ToJSON TopicTrends where
  toJSON TopicTrends {..} =
    Core.object
      ( Core.catMaybes
          [ ("customerCountryCode" Core..=) Core.<$> customerCountryCode,
            ("date" Core..=) Core.<$> date,
            ("last120DaysSearchInterest" Core..=)
              Core.<$> last120DaysSearchInterest,
            ("last30DaysSearchInterest" Core..=)
              Core.<$> last30DaysSearchInterest,
            ("last7DaysSearchInterest" Core..=)
              Core.<$> last7DaysSearchInterest,
            ("last90DaysSearchInterest" Core..=)
              Core.<$> last90DaysSearchInterest,
            ("next7DaysSearchInterest" Core..=)
              Core.<$> next7DaysSearchInterest,
            ("searchInterest" Core..=) Core.<$> searchInterest,
            ("topic" Core..=) Core.<$> topic
          ]
      )

--
-- /See:/ 'newTransitTable' smart constructor.
data TransitTable = TransitTable
  { -- | A list of postal group names. The last value can be @\"all other locations\"@. Example: @[\"zone 1\", \"zone 2\", \"all other locations\"]@. The referred postal code groups must match the delivery country of the service.
    postalCodeGroupNames :: (Core.Maybe [Core.Text]),
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
            Core.<$> (o Core..:? "postalCodeGroupNames")
            Core.<*> (o Core..:? "rows")
            Core.<*> (o Core..:? "transitTimeLabels")
      )

instance Core.ToJSON TransitTable where
  toJSON TransitTable {..} =
    Core.object
      ( Core.catMaybes
          [ ("postalCodeGroupNames" Core..=) Core.<$> postalCodeGroupNames,
            ("rows" Core..=) Core.<$> rows,
            ("transitTimeLabels" Core..=) Core.<$> transitTimeLabels
          ]
      )

--
-- /See:/ 'newTransitTableTransitTimeRow' smart constructor.
newtype TransitTableTransitTimeRow = TransitTableTransitTimeRow
  { values :: (Core.Maybe [TransitTableTransitTimeRowTransitTimeValue])
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
      (\o -> TransitTableTransitTimeRow Core.<$> (o Core..:? "values"))

instance Core.ToJSON TransitTableTransitTimeRow where
  toJSON TransitTableTransitTimeRow {..} =
    Core.object (Core.catMaybes [("values" Core..=) Core.<$> values])

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
    { maxTransitTimeInDays =
        Core.Nothing,
      minTransitTimeInDays = Core.Nothing
    }

instance Core.FromJSON TransitTableTransitTimeRowTransitTimeValue where
  parseJSON =
    Core.withObject
      "TransitTableTransitTimeRowTransitTimeValue"
      ( \o ->
          TransitTableTransitTimeRowTransitTimeValue
            Core.<$> (o Core..:? "maxTransitTimeInDays")
            Core.<*> (o Core..:? "minTransitTimeInDays")
      )

instance Core.ToJSON TransitTableTransitTimeRowTransitTimeValue where
  toJSON TransitTableTransitTimeRowTransitTimeValue {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxTransitTimeInDays" Core..=) Core.<$> maxTransitTimeInDays,
            ("minTransitTimeInDays" Core..=) Core.<$> minTransitTimeInDays
          ]
      )

-- | The payload for the triggered action.
--
-- /See:/ 'newTriggerActionPayload' smart constructor.
data TriggerActionPayload = TriggerActionPayload
  { -- | Required. The context from the selected action. The value is obtained from rendered issues and needs to be sent back to identify the action that is being triggered.
    actionContext :: (Core.Maybe Core.Text),
    -- | Required. Input provided by the merchant.
    actionInput :: (Core.Maybe ActionInput)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TriggerActionPayload' with the minimum fields required to make a request.
newTriggerActionPayload ::
  TriggerActionPayload
newTriggerActionPayload =
  TriggerActionPayload
    { actionContext = Core.Nothing,
      actionInput = Core.Nothing
    }

instance Core.FromJSON TriggerActionPayload where
  parseJSON =
    Core.withObject
      "TriggerActionPayload"
      ( \o ->
          TriggerActionPayload
            Core.<$> (o Core..:? "actionContext")
            Core.<*> (o Core..:? "actionInput")
      )

instance Core.ToJSON TriggerActionPayload where
  toJSON TriggerActionPayload {..} =
    Core.object
      ( Core.catMaybes
          [ ("actionContext" Core..=) Core.<$> actionContext,
            ("actionInput" Core..=) Core.<$> actionInput
          ]
      )

-- | Response informing about the started action.
--
-- /See:/ 'newTriggerActionResponse' smart constructor.
newtype TriggerActionResponse = TriggerActionResponse
  { -- | The message for merchant.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TriggerActionResponse' with the minimum fields required to make a request.
newTriggerActionResponse ::
  TriggerActionResponse
newTriggerActionResponse =
  TriggerActionResponse {message = Core.Nothing}

instance Core.FromJSON TriggerActionResponse where
  parseJSON =
    Core.withObject
      "TriggerActionResponse"
      (\o -> TriggerActionResponse Core.<$> (o Core..:? "message"))

instance Core.ToJSON TriggerActionResponse where
  toJSON TriggerActionResponse {..} =
    Core.object
      (Core.catMaybes [("message" Core..=) Core.<$> message])

-- | Request message for the UndeleteConversionSource method.
--
-- /See:/ 'newUndeleteConversionSourceRequest' smart constructor.
data UndeleteConversionSourceRequest = UndeleteConversionSourceRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UndeleteConversionSourceRequest' with the minimum fields required to make a request.
newUndeleteConversionSourceRequest ::
  UndeleteConversionSourceRequest
newUndeleteConversionSourceRequest =
  UndeleteConversionSourceRequest

instance Core.FromJSON UndeleteConversionSourceRequest where
  parseJSON =
    Core.withObject
      "UndeleteConversionSourceRequest"
      (\o -> Core.pure UndeleteConversionSourceRequest)

instance Core.ToJSON UndeleteConversionSourceRequest where
  toJSON = Core.const Core.emptyObject

-- | Specifications related to the @Checkout@ URL. The @UriTemplate@ is of the form @https:\/\/www.mystore.com\/checkout?item_id={id}@ where @{id}@ will be automatically replaced with data from the merchant account with this attribute <https://developers.google.com/shopping-content/reference/rest/v2.1/products#Product.FIELDS.offer_id offer_id>
--
-- /See:/ 'newUrlSettings' smart constructor.
data UrlSettings = UrlSettings
  { -- | URL template when the placeholders are expanded will redirect the buyer to the cart page on the merchant website with the selected item in cart.
    cartUriTemplate :: (Core.Maybe Core.Text),
    -- | URL template when the placeholders are expanded will redirect the buyer to the merchant checkout page with the item in the cart.
    checkoutUriTemplate :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UrlSettings' with the minimum fields required to make a request.
newUrlSettings ::
  UrlSettings
newUrlSettings =
  UrlSettings
    { cartUriTemplate = Core.Nothing,
      checkoutUriTemplate = Core.Nothing
    }

instance Core.FromJSON UrlSettings where
  parseJSON =
    Core.withObject
      "UrlSettings"
      ( \o ->
          UrlSettings
            Core.<$> (o Core..:? "cartUriTemplate")
            Core.<*> (o Core..:? "checkoutUriTemplate")
      )

instance Core.ToJSON UrlSettings where
  toJSON UrlSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("cartUriTemplate" Core..=) Core.<$> cartUriTemplate,
            ("checkoutUriTemplate" Core..=) Core.<$> checkoutUriTemplate
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
          [ ("carrierRateName" Core..=) Core.<$> carrierRateName,
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
            ("verificationCode" Core..=) Core.<$> verificationCode,
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
          [("verifiedPhoneNumber" Core..=) Core.<$> verifiedPhoneNumber]
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
            Core.<*> (o Core..:? "handlingDays" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "shippingAddress")
      )

instance Core.ToJSON Warehouse where
  toJSON Warehouse {..} =
    Core.object
      ( Core.catMaybes
          [ ("businessDayConfig" Core..=) Core.<$> businessDayConfig,
            ("cutoffTime" Core..=) Core.<$> cutoffTime,
            ("handlingDays" Core..=) Core.. Core.AsText Core.<$> handlingDays,
            ("name" Core..=) Core.<$> name,
            ("shippingAddress" Core..=) Core.<$> shippingAddress
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
            ("originPostalCode" Core..=) Core.<$> originPostalCode,
            ("originStreetAddress" Core..=) Core.<$> originStreetAddress,
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
            Core.<$> (o Core..:? "hour")
            Core.<*> (o Core..:? "minute")
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
          Weight Core.<$> (o Core..:? "unit") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON Weight where
  toJSON Weight {..} =
    Core.object
      ( Core.catMaybes
          [("unit" Core..=) Core.<$> unit, ("value" Core..=) Core.<$> value]
      )
