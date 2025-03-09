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
-- Module      : Gogol.ShoppingContent.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
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

    -- ** AccountBusinessIdentity
    AccountBusinessIdentity (..),
    newAccountBusinessIdentity,

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

    -- ** AccountIdentityType
    AccountIdentityType (..),
    newAccountIdentityType,

    -- ** AccountImageImprovements
    AccountImageImprovements (..),
    newAccountImageImprovements,

    -- ** AccountImageImprovementsSettings
    AccountImageImprovementsSettings (..),
    newAccountImageImprovementsSettings,

    -- ** AccountIssue
    AccountIssue (..),
    newAccountIssue,

    -- ** AccountIssueImpact
    AccountIssueImpact (..),
    newAccountIssueImpact,

    -- ** AccountIssueImpact_Severity
    AccountIssueImpact_Severity (..),

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

    -- ** Action
    Action (..),
    newAction,

    -- ** ActionFlow
    ActionFlow (..),
    newActionFlow,

    -- ** ActionInput
    ActionInput (..),
    newActionInput,

    -- ** ActionReason
    ActionReason (..),
    newActionReason,

    -- ** Address
    Address (..),
    newAddress,

    -- ** AlternateDisputeResolution
    AlternateDisputeResolution (..),
    newAlternateDisputeResolution,

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

    -- ** Breakdown
    Breakdown (..),
    newBreakdown,

    -- ** BreakdownRegion
    BreakdownRegion (..),
    newBreakdownRegion,

    -- ** BuiltInSimpleAction
    BuiltInSimpleAction (..),
    newBuiltInSimpleAction,

    -- ** BuiltInSimpleAction_Type
    BuiltInSimpleAction_Type (..),

    -- ** BuiltInSimpleActionAdditionalContent
    BuiltInSimpleActionAdditionalContent (..),
    newBuiltInSimpleActionAdditionalContent,

    -- ** BuiltInUserInputAction
    BuiltInUserInputAction (..),
    newBuiltInUserInputAction,

    -- ** BusinessDayConfig
    BusinessDayConfig (..),
    newBusinessDayConfig,

    -- ** Callout
    Callout (..),
    newCallout,

    -- ** Callout_StyleHint
    Callout_StyleHint (..),

    -- ** CarrierRate
    CarrierRate (..),
    newCarrierRate,

    -- ** CarriersCarrier
    CarriersCarrier (..),
    newCarriersCarrier,

    -- ** CheckoutSettings
    CheckoutSettings (..),
    newCheckoutSettings,

    -- ** CheckoutSettings_EffectiveEnrollmentState
    CheckoutSettings_EffectiveEnrollmentState (..),

    -- ** CheckoutSettings_EffectiveReviewState
    CheckoutSettings_EffectiveReviewState (..),

    -- ** CheckoutSettings_EnrollmentState
    CheckoutSettings_EnrollmentState (..),

    -- ** CheckoutSettings_ReviewState
    CheckoutSettings_ReviewState (..),

    -- ** CloudExportAdditionalProperties
    CloudExportAdditionalProperties (..),
    newCloudExportAdditionalProperties,

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

    -- ** CompetitiveVisibility
    CompetitiveVisibility (..),
    newCompetitiveVisibility,

    -- ** CompetitiveVisibility_TrafficSource
    CompetitiveVisibility_TrafficSource (..),

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

    -- ** Distance
    Distance (..),
    newDistance,

    -- ** ECommercePlatformLinkInfo
    ECommercePlatformLinkInfo (..),
    newECommercePlatformLinkInfo,

    -- ** Error'
    Error' (..),
    newError,

    -- ** Errors
    Errors (..),
    newErrors,

    -- ** ExternalAction
    ExternalAction (..),
    newExternalAction,

    -- ** ExternalAction_Type
    ExternalAction_Type (..),

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

    -- ** FreeShippingThreshold
    FreeShippingThreshold (..),
    newFreeShippingThreshold,

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

    -- ** InputField
    InputField (..),
    newInputField,

    -- ** InputFieldCheckboxInput
    InputFieldCheckboxInput (..),
    newInputFieldCheckboxInput,

    -- ** InputFieldChoiceInput
    InputFieldChoiceInput (..),
    newInputFieldChoiceInput,

    -- ** InputFieldChoiceInputChoiceInputOption
    InputFieldChoiceInputChoiceInputOption (..),
    newInputFieldChoiceInputChoiceInputOption,

    -- ** InputFieldTextInput
    InputFieldTextInput (..),
    newInputFieldTextInput,

    -- ** InputFieldTextInput_Type
    InputFieldTextInput_Type (..),

    -- ** InputValue
    InputValue (..),
    newInputValue,

    -- ** InputValueCheckboxInputValue
    InputValueCheckboxInputValue (..),
    newInputValueCheckboxInputValue,

    -- ** InputValueChoiceInputValue
    InputValueChoiceInputValue (..),
    newInputValueChoiceInputValue,

    -- ** InputValueTextInputValue
    InputValueTextInputValue (..),
    newInputValueTextInputValue,

    -- ** InsertCheckoutSettingsRequest
    InsertCheckoutSettingsRequest (..),
    newInsertCheckoutSettingsRequest,

    -- ** Installment
    Installment (..),
    newInstallment,

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

    -- ** LiaOmnichannelExperience
    LiaOmnichannelExperience (..),
    newLiaOmnichannelExperience,

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

    -- ** ListPromotionResponse
    ListPromotionResponse (..),
    newListPromotionResponse,

    -- ** ListRegionsResponse
    ListRegionsResponse (..),
    newListRegionsResponse,

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

    -- ** LoyaltyProgram
    LoyaltyProgram (..),
    newLoyaltyProgram,

    -- ** MerchantCenterDestination
    MerchantCenterDestination (..),
    newMerchantCenterDestination,

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

    -- ** PriceInsights_Effectiveness
    PriceInsights_Effectiveness (..),

    -- ** Product
    Product (..),
    newProduct,

    -- ** ProductCertification
    ProductCertification (..),
    newProductCertification,

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

    -- ** ProductIssue
    ProductIssue (..),
    newProductIssue,

    -- ** ProductIssueImpact
    ProductIssueImpact (..),
    newProductIssueImpact,

    -- ** ProductIssueImpact_Severity
    ProductIssueImpact_Severity (..),

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

    -- ** ProductStructuredDescription
    ProductStructuredDescription (..),
    newProductStructuredDescription,

    -- ** ProductStructuredTitle
    ProductStructuredTitle (..),
    newProductStructuredTitle,

    -- ** ProductSubscriptionCost
    ProductSubscriptionCost (..),
    newProductSubscriptionCost,

    -- ** ProductSustainabilityIncentive
    ProductSustainabilityIncentive (..),
    newProductSustainabilityIncentive,

    -- ** ProductSustainabilityIncentive_Type
    ProductSustainabilityIncentive_Type (..),

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

    -- ** ProductView_ClickPotential
    ProductView_ClickPotential (..),

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

    -- ** RenderAccountIssuesRequestPayload
    RenderAccountIssuesRequestPayload (..),
    newRenderAccountIssuesRequestPayload,

    -- ** RenderAccountIssuesRequestPayload_ContentOption
    RenderAccountIssuesRequestPayload_ContentOption (..),

    -- ** RenderAccountIssuesRequestPayload_UserInputActionOption
    RenderAccountIssuesRequestPayload_UserInputActionOption (..),

    -- ** RenderAccountIssuesResponse
    RenderAccountIssuesResponse (..),
    newRenderAccountIssuesResponse,

    -- ** RenderProductIssuesRequestPayload
    RenderProductIssuesRequestPayload (..),
    newRenderProductIssuesRequestPayload,

    -- ** RenderProductIssuesRequestPayload_ContentOption
    RenderProductIssuesRequestPayload_ContentOption (..),

    -- ** RenderProductIssuesRequestPayload_UserInputActionOption
    RenderProductIssuesRequestPayload_UserInputActionOption (..),

    -- ** RenderProductIssuesResponse
    RenderProductIssuesResponse (..),
    newRenderProductIssuesResponse,

    -- ** ReportInteractionRequest
    ReportInteractionRequest (..),
    newReportInteractionRequest,

    -- ** ReportInteractionRequest_InteractionType
    ReportInteractionRequest_InteractionType (..),

    -- ** ReportRow
    ReportRow (..),
    newReportRow,

    -- ** RequestPhoneVerificationRequest
    RequestPhoneVerificationRequest (..),
    newRequestPhoneVerificationRequest,

    -- ** RequestPhoneVerificationRequest_PhoneVerificationMethod
    RequestPhoneVerificationRequest_PhoneVerificationMethod (..),

    -- ** RequestPhoneVerificationResponse
    RequestPhoneVerificationResponse (..),
    newRequestPhoneVerificationResponse,

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

    -- ** ServiceStoreConfig
    ServiceStoreConfig (..),
    newServiceStoreConfig,

    -- ** ServiceStoreConfigCutoffConfig
    ServiceStoreConfigCutoffConfig (..),
    newServiceStoreConfigCutoffConfig,

    -- ** ServiceStoreConfigCutoffConfigLocalCutoffTime
    ServiceStoreConfigCutoffConfigLocalCutoffTime (..),
    newServiceStoreConfigCutoffConfigLocalCutoffTime,

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

    -- ** TextWithTooltip
    TextWithTooltip (..),
    newTextWithTooltip,

    -- ** TextWithTooltip_TooltipIconStyle
    TextWithTooltip_TooltipIconStyle (..),

    -- ** TimePeriod
    TimePeriod (..),
    newTimePeriod,

    -- ** TimeZone
    TimeZone (..),
    newTimeZone,

    -- ** TopicTrends
    TopicTrends (..),
    newTopicTrends,

    -- ** TransitTable
    TransitTable (..),
    newTransitTable,

    -- ** TransitTableTransitTimeRow
    TransitTableTransitTimeRow (..),
    newTransitTableTransitTimeRow,

    -- ** TransitTableTransitTimeRowTransitTimeValue
    TransitTableTransitTimeRowTransitTimeValue (..),
    newTransitTableTransitTimeRowTransitTimeValue,

    -- ** TriggerActionPayload
    TriggerActionPayload (..),
    newTriggerActionPayload,

    -- ** TriggerActionResponse
    TriggerActionResponse (..),
    newTriggerActionResponse,

    -- ** UndeleteConversionSourceRequest
    UndeleteConversionSourceRequest (..),
    newUndeleteConversionSourceRequest,

    -- ** UrlSettings
    UrlSettings (..),
    newUrlSettings,

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
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ShoppingContent.Internal.Product
import Gogol.ShoppingContent.Internal.Sum

-- | Default request referring to version @v2.1@ of the Content API for Shopping. This contains the host and root path used as a starting point for constructing service requests.
shoppingContentService :: Core.ServiceConfig
shoppingContentService =
  Core.defaultService
    (Core.ServiceId "content:v2.1")
    "shoppingcontent.googleapis.com"

-- | Manage your product listings and accounts for Google Shopping
type Content'FullControl =
  "https://www.googleapis.com/auth/content"
