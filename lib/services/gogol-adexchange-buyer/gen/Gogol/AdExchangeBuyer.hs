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
-- Module      : Gogol.AdExchangeBuyer
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Accesses your bidding-account information, submits creatives for validation, finds available direct deals, and retrieves performance reports.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference>
module Gogol.AdExchangeBuyer
  ( -- * Configuration
    adExchangeBuyerService,

    -- * OAuth Scopes
    Adexchange'Buyer,

    -- * Resources

    -- ** adexchangebuyer.accounts.get
    AdExchangeBuyerAccountsGetResource,
    newAdExchangeBuyerAccountsGet,
    AdExchangeBuyerAccountsGet,

    -- ** adexchangebuyer.accounts.list
    AdExchangeBuyerAccountsListResource,
    newAdExchangeBuyerAccountsList,
    AdExchangeBuyerAccountsList,

    -- ** adexchangebuyer.accounts.patch
    AdExchangeBuyerAccountsPatchResource,
    newAdExchangeBuyerAccountsPatch,
    AdExchangeBuyerAccountsPatch,

    -- ** adexchangebuyer.accounts.update
    AdExchangeBuyerAccountsUpdateResource,
    newAdExchangeBuyerAccountsUpdate,
    AdExchangeBuyerAccountsUpdate,

    -- ** adexchangebuyer.billingInfo.get
    AdExchangeBuyerBillingInfoGetResource,
    newAdExchangeBuyerBillingInfoGet,
    AdExchangeBuyerBillingInfoGet,

    -- ** adexchangebuyer.billingInfo.list
    AdExchangeBuyerBillingInfoListResource,
    newAdExchangeBuyerBillingInfoList,
    AdExchangeBuyerBillingInfoList,

    -- ** adexchangebuyer.budget.get
    AdExchangeBuyerBudgetGetResource,
    newAdExchangeBuyerBudgetGet,
    AdExchangeBuyerBudgetGet,

    -- ** adexchangebuyer.budget.patch
    AdExchangeBuyerBudgetPatchResource,
    newAdExchangeBuyerBudgetPatch,
    AdExchangeBuyerBudgetPatch,

    -- ** adexchangebuyer.budget.update
    AdExchangeBuyerBudgetUpdateResource,
    newAdExchangeBuyerBudgetUpdate,
    AdExchangeBuyerBudgetUpdate,

    -- ** adexchangebuyer.creatives.addDeal
    AdExchangeBuyerCreativesAddDealResource,
    newAdExchangeBuyerCreativesAddDeal,
    AdExchangeBuyerCreativesAddDeal,

    -- ** adexchangebuyer.creatives.get
    AdExchangeBuyerCreativesGetResource,
    newAdExchangeBuyerCreativesGet,
    AdExchangeBuyerCreativesGet,

    -- ** adexchangebuyer.creatives.insert
    AdExchangeBuyerCreativesInsertResource,
    newAdExchangeBuyerCreativesInsert,
    AdExchangeBuyerCreativesInsert,

    -- ** adexchangebuyer.creatives.list
    AdExchangeBuyerCreativesListResource,
    newAdExchangeBuyerCreativesList,
    AdExchangeBuyerCreativesList,

    -- ** adexchangebuyer.creatives.listDeals
    AdExchangeBuyerCreativesListDealsResource,
    newAdExchangeBuyerCreativesListDeals,
    AdExchangeBuyerCreativesListDeals,

    -- ** adexchangebuyer.creatives.removeDeal
    AdExchangeBuyerCreativesRemoveDealResource,
    newAdExchangeBuyerCreativesRemoveDeal,
    AdExchangeBuyerCreativesRemoveDeal,

    -- ** adexchangebuyer.marketplacedeals.delete
    AdExchangeBuyerMarketplacedealsDeleteResource,
    newAdExchangeBuyerMarketplacedealsDelete,
    AdExchangeBuyerMarketplacedealsDelete,

    -- ** adexchangebuyer.marketplacedeals.insert
    AdExchangeBuyerMarketplacedealsInsertResource,
    newAdExchangeBuyerMarketplacedealsInsert,
    AdExchangeBuyerMarketplacedealsInsert,

    -- ** adexchangebuyer.marketplacedeals.list
    AdExchangeBuyerMarketplacedealsListResource,
    newAdExchangeBuyerMarketplacedealsList,
    AdExchangeBuyerMarketplacedealsList,

    -- ** adexchangebuyer.marketplacedeals.update
    AdExchangeBuyerMarketplacedealsUpdateResource,
    newAdExchangeBuyerMarketplacedealsUpdate,
    AdExchangeBuyerMarketplacedealsUpdate,

    -- ** adexchangebuyer.marketplacenotes.insert
    AdExchangeBuyerMarketplacenotesInsertResource,
    newAdExchangeBuyerMarketplacenotesInsert,
    AdExchangeBuyerMarketplacenotesInsert,

    -- ** adexchangebuyer.marketplacenotes.list
    AdExchangeBuyerMarketplacenotesListResource,
    newAdExchangeBuyerMarketplacenotesList,
    AdExchangeBuyerMarketplacenotesList,

    -- ** adexchangebuyer.marketplaceprivateauction.updateproposal
    AdExchangeBuyerMarketplaceprivateauctionUpdateproposalResource,
    newAdExchangeBuyerMarketplaceprivateauctionUpdateproposal,
    AdExchangeBuyerMarketplaceprivateauctionUpdateproposal,

    -- ** adexchangebuyer.performanceReport.list
    AdExchangeBuyerPerformanceReportListResource,
    newAdExchangeBuyerPerformanceReportList,
    AdExchangeBuyerPerformanceReportList,

    -- ** adexchangebuyer.pretargetingConfig.delete
    AdExchangeBuyerPretargetingConfigDeleteResource,
    newAdExchangeBuyerPretargetingConfigDelete,
    AdExchangeBuyerPretargetingConfigDelete,

    -- ** adexchangebuyer.pretargetingConfig.get
    AdExchangeBuyerPretargetingConfigGetResource,
    newAdExchangeBuyerPretargetingConfigGet,
    AdExchangeBuyerPretargetingConfigGet,

    -- ** adexchangebuyer.pretargetingConfig.insert
    AdExchangeBuyerPretargetingConfigInsertResource,
    newAdExchangeBuyerPretargetingConfigInsert,
    AdExchangeBuyerPretargetingConfigInsert,

    -- ** adexchangebuyer.pretargetingConfig.list
    AdExchangeBuyerPretargetingConfigListResource,
    newAdExchangeBuyerPretargetingConfigList,
    AdExchangeBuyerPretargetingConfigList,

    -- ** adexchangebuyer.pretargetingConfig.patch
    AdExchangeBuyerPretargetingConfigPatchResource,
    newAdExchangeBuyerPretargetingConfigPatch,
    AdExchangeBuyerPretargetingConfigPatch,

    -- ** adexchangebuyer.pretargetingConfig.update
    AdExchangeBuyerPretargetingConfigUpdateResource,
    newAdExchangeBuyerPretargetingConfigUpdate,
    AdExchangeBuyerPretargetingConfigUpdate,

    -- ** adexchangebuyer.products.get
    AdExchangeBuyerProductsGetResource,
    newAdExchangeBuyerProductsGet,
    AdExchangeBuyerProductsGet,

    -- ** adexchangebuyer.products.search
    AdExchangeBuyerProductsSearchResource,
    newAdExchangeBuyerProductsSearch,
    AdExchangeBuyerProductsSearch,

    -- ** adexchangebuyer.proposals.get
    AdExchangeBuyerProposalsGetResource,
    newAdExchangeBuyerProposalsGet,
    AdExchangeBuyerProposalsGet,

    -- ** adexchangebuyer.proposals.insert
    AdExchangeBuyerProposalsInsertResource,
    newAdExchangeBuyerProposalsInsert,
    AdExchangeBuyerProposalsInsert,

    -- ** adexchangebuyer.proposals.patch
    AdExchangeBuyerProposalsPatchResource,
    newAdExchangeBuyerProposalsPatch,
    AdExchangeBuyerProposalsPatch,

    -- ** adexchangebuyer.proposals.search
    AdExchangeBuyerProposalsSearchResource,
    newAdExchangeBuyerProposalsSearch,
    AdExchangeBuyerProposalsSearch,

    -- ** adexchangebuyer.proposals.setupcomplete
    AdExchangeBuyerProposalsSetupcompleteResource,
    newAdExchangeBuyerProposalsSetupcomplete,
    AdExchangeBuyerProposalsSetupcomplete,

    -- ** adexchangebuyer.proposals.update
    AdExchangeBuyerProposalsUpdateResource,
    newAdExchangeBuyerProposalsUpdate,
    AdExchangeBuyerProposalsUpdate,

    -- ** adexchangebuyer.pubprofiles.list
    AdExchangeBuyerPubprofilesListResource,
    newAdExchangeBuyerPubprofilesList,
    AdExchangeBuyerPubprofilesList,

    -- * Types

    -- ** Account
    Account (..),
    newAccount,

    -- ** Account_BidderLocationItem
    Account_BidderLocationItem (..),
    newAccount_BidderLocationItem,

    -- ** AccountsList
    AccountsList (..),
    newAccountsList,

    -- ** AddOrderDealsRequest
    AddOrderDealsRequest (..),
    newAddOrderDealsRequest,

    -- ** AddOrderDealsResponse
    AddOrderDealsResponse (..),
    newAddOrderDealsResponse,

    -- ** AddOrderNotesRequest
    AddOrderNotesRequest (..),
    newAddOrderNotesRequest,

    -- ** AddOrderNotesResponse
    AddOrderNotesResponse (..),
    newAddOrderNotesResponse,

    -- ** BillingInfo
    BillingInfo (..),
    newBillingInfo,

    -- ** BillingInfoList
    BillingInfoList (..),
    newBillingInfoList,

    -- ** Budget
    Budget (..),
    newBudget,

    -- ** Buyer
    Buyer (..),
    newBuyer,

    -- ** ContactInformation
    ContactInformation (..),
    newContactInformation,

    -- ** CreateOrdersRequest
    CreateOrdersRequest (..),
    newCreateOrdersRequest,

    -- ** CreateOrdersResponse
    CreateOrdersResponse (..),
    newCreateOrdersResponse,

    -- ** Creative
    Creative (..),
    newCreative,

    -- ** Creative_AdTechnologyProviders
    Creative_AdTechnologyProviders (..),
    newCreative_AdTechnologyProviders,

    -- ** Creative_CorrectionsItem
    Creative_CorrectionsItem (..),
    newCreative_CorrectionsItem,

    -- ** Creative_CorrectionsItem_ContextsItem
    Creative_CorrectionsItem_ContextsItem (..),
    newCreative_CorrectionsItem_ContextsItem,

    -- ** Creative_FilteringReasons
    Creative_FilteringReasons (..),
    newCreative_FilteringReasons,

    -- ** Creative_FilteringReasons_ReasonsItem
    Creative_FilteringReasons_ReasonsItem (..),
    newCreative_FilteringReasons_ReasonsItem,

    -- ** Creative_NativeAd
    Creative_NativeAd (..),
    newCreative_NativeAd,

    -- ** Creative_NativeAd_AppIcon
    Creative_NativeAd_AppIcon (..),
    newCreative_NativeAd_AppIcon,

    -- ** Creative_NativeAd_Image
    Creative_NativeAd_Image (..),
    newCreative_NativeAd_Image,

    -- ** Creative_NativeAd_Logo
    Creative_NativeAd_Logo (..),
    newCreative_NativeAd_Logo,

    -- ** Creative_ServingRestrictionsItem
    Creative_ServingRestrictionsItem (..),
    newCreative_ServingRestrictionsItem,

    -- ** Creative_ServingRestrictionsItem_ContextsItem
    Creative_ServingRestrictionsItem_ContextsItem (..),
    newCreative_ServingRestrictionsItem_ContextsItem,

    -- ** Creative_ServingRestrictionsItem_DisapprovalReasonsItem
    Creative_ServingRestrictionsItem_DisapprovalReasonsItem (..),
    newCreative_ServingRestrictionsItem_DisapprovalReasonsItem,

    -- ** CreativeDealIds
    CreativeDealIds (..),
    newCreativeDealIds,

    -- ** CreativeDealIds_DealStatusesItem
    CreativeDealIds_DealStatusesItem (..),
    newCreativeDealIds_DealStatusesItem,

    -- ** CreativesList
    CreativesList (..),
    newCreativesList,

    -- ** DealServingMetadata
    DealServingMetadata (..),
    newDealServingMetadata,

    -- ** DealServingMetadataDealPauseStatus
    DealServingMetadataDealPauseStatus (..),
    newDealServingMetadataDealPauseStatus,

    -- ** DealTerms
    DealTerms (..),
    newDealTerms,

    -- ** DealTermsGuaranteedFixedPriceTerms
    DealTermsGuaranteedFixedPriceTerms (..),
    newDealTermsGuaranteedFixedPriceTerms,

    -- ** DealTermsGuaranteedFixedPriceTermsBillingInfo
    DealTermsGuaranteedFixedPriceTermsBillingInfo (..),
    newDealTermsGuaranteedFixedPriceTermsBillingInfo,

    -- ** DealTermsNonGuaranteedAuctionTerms
    DealTermsNonGuaranteedAuctionTerms (..),
    newDealTermsNonGuaranteedAuctionTerms,

    -- ** DealTermsNonGuaranteedFixedPriceTerms
    DealTermsNonGuaranteedFixedPriceTerms (..),
    newDealTermsNonGuaranteedFixedPriceTerms,

    -- ** DealTermsRubiconNonGuaranteedTerms
    DealTermsRubiconNonGuaranteedTerms (..),
    newDealTermsRubiconNonGuaranteedTerms,

    -- ** DeleteOrderDealsRequest
    DeleteOrderDealsRequest (..),
    newDeleteOrderDealsRequest,

    -- ** DeleteOrderDealsResponse
    DeleteOrderDealsResponse (..),
    newDeleteOrderDealsResponse,

    -- ** DeliveryControl
    DeliveryControl (..),
    newDeliveryControl,

    -- ** DeliveryControlFrequencyCap
    DeliveryControlFrequencyCap (..),
    newDeliveryControlFrequencyCap,

    -- ** Dimension
    Dimension (..),
    newDimension,

    -- ** DimensionDimensionValue
    DimensionDimensionValue (..),
    newDimensionDimensionValue,

    -- ** EditAllOrderDealsRequest
    EditAllOrderDealsRequest (..),
    newEditAllOrderDealsRequest,

    -- ** EditAllOrderDealsResponse
    EditAllOrderDealsResponse (..),
    newEditAllOrderDealsResponse,

    -- ** GetOffersResponse
    GetOffersResponse (..),
    newGetOffersResponse,

    -- ** GetOrderDealsResponse
    GetOrderDealsResponse (..),
    newGetOrderDealsResponse,

    -- ** GetOrderNotesResponse
    GetOrderNotesResponse (..),
    newGetOrderNotesResponse,

    -- ** GetOrdersResponse
    GetOrdersResponse (..),
    newGetOrdersResponse,

    -- ** GetPublisherProfilesByAccountIdResponse
    GetPublisherProfilesByAccountIdResponse (..),
    newGetPublisherProfilesByAccountIdResponse,

    -- ** MarketplaceDeal
    MarketplaceDeal (..),
    newMarketplaceDeal,

    -- ** MarketplaceDealParty
    MarketplaceDealParty (..),
    newMarketplaceDealParty,

    -- ** MarketplaceLabel
    MarketplaceLabel (..),
    newMarketplaceLabel,

    -- ** MarketplaceNote
    MarketplaceNote (..),
    newMarketplaceNote,

    -- ** MobileApplication
    MobileApplication (..),
    newMobileApplication,

    -- ** PerformanceReport
    PerformanceReport (..),
    newPerformanceReport,

    -- ** PerformanceReportList
    PerformanceReportList (..),
    newPerformanceReportList,

    -- ** PretargetingConfig
    PretargetingConfig (..),
    newPretargetingConfig,

    -- ** PretargetingConfig_DimensionsItem
    PretargetingConfig_DimensionsItem (..),
    newPretargetingConfig_DimensionsItem,

    -- ** PretargetingConfig_ExcludedPlacementsItem
    PretargetingConfig_ExcludedPlacementsItem (..),
    newPretargetingConfig_ExcludedPlacementsItem,

    -- ** PretargetingConfig_PlacementsItem
    PretargetingConfig_PlacementsItem (..),
    newPretargetingConfig_PlacementsItem,

    -- ** PretargetingConfig_VideoPlayerSizesItem
    PretargetingConfig_VideoPlayerSizesItem (..),
    newPretargetingConfig_VideoPlayerSizesItem,

    -- ** PretargetingConfigList
    PretargetingConfigList (..),
    newPretargetingConfigList,

    -- ** Price
    Price (..),
    newPrice,

    -- ** PricePerBuyer
    PricePerBuyer (..),
    newPricePerBuyer,

    -- ** PrivateData
    PrivateData (..),
    newPrivateData,

    -- ** Product
    Product (..),
    newProduct,

    -- ** Proposal
    Proposal (..),
    newProposal,

    -- ** PublisherProfileApiProto
    PublisherProfileApiProto (..),
    newPublisherProfileApiProto,

    -- ** PublisherProvidedForecast
    PublisherProvidedForecast (..),
    newPublisherProvidedForecast,

    -- ** Seller
    Seller (..),
    newSeller,

    -- ** SharedTargeting
    SharedTargeting (..),
    newSharedTargeting,

    -- ** TargetingValue
    TargetingValue (..),
    newTargetingValue,

    -- ** TargetingValueCreativeSize
    TargetingValueCreativeSize (..),
    newTargetingValueCreativeSize,

    -- ** TargetingValueDayPartTargeting
    TargetingValueDayPartTargeting (..),
    newTargetingValueDayPartTargeting,

    -- ** TargetingValueDayPartTargetingDayPart
    TargetingValueDayPartTargetingDayPart (..),
    newTargetingValueDayPartTargetingDayPart,

    -- ** TargetingValueDemogAgeCriteria
    TargetingValueDemogAgeCriteria (..),
    newTargetingValueDemogAgeCriteria,

    -- ** TargetingValueDemogGenderCriteria
    TargetingValueDemogGenderCriteria (..),
    newTargetingValueDemogGenderCriteria,

    -- ** TargetingValueRequestPlatformTargeting
    TargetingValueRequestPlatformTargeting (..),
    newTargetingValueRequestPlatformTargeting,

    -- ** TargetingValueSize
    TargetingValueSize (..),
    newTargetingValueSize,

    -- ** UpdatePrivateAuctionProposalRequest
    UpdatePrivateAuctionProposalRequest (..),
    newUpdatePrivateAuctionProposalRequest,

    -- ** CreativesListDealsStatusFilter
    CreativesListDealsStatusFilter (..),

    -- ** CreativesListOpenAuctionStatusFilter
    CreativesListOpenAuctionStatusFilter (..),

    -- ** ProposalsPatchUpdateAction
    ProposalsPatchUpdateAction (..),

    -- ** ProposalsUpdateUpdateAction
    ProposalsUpdateUpdateAction (..),
  )
where

import Gogol.AdExchangeBuyer.Accounts.Get
import Gogol.AdExchangeBuyer.Accounts.List
import Gogol.AdExchangeBuyer.Accounts.Patch
import Gogol.AdExchangeBuyer.Accounts.Update
import Gogol.AdExchangeBuyer.BillingInfo.Get
import Gogol.AdExchangeBuyer.BillingInfo.List
import Gogol.AdExchangeBuyer.Budget.Get
import Gogol.AdExchangeBuyer.Budget.Patch
import Gogol.AdExchangeBuyer.Budget.Update
import Gogol.AdExchangeBuyer.Creatives.AddDeal
import Gogol.AdExchangeBuyer.Creatives.Get
import Gogol.AdExchangeBuyer.Creatives.Insert
import Gogol.AdExchangeBuyer.Creatives.List
import Gogol.AdExchangeBuyer.Creatives.ListDeals
import Gogol.AdExchangeBuyer.Creatives.RemoveDeal
import Gogol.AdExchangeBuyer.Marketplacedeals.Delete
import Gogol.AdExchangeBuyer.Marketplacedeals.Insert
import Gogol.AdExchangeBuyer.Marketplacedeals.List
import Gogol.AdExchangeBuyer.Marketplacedeals.Update
import Gogol.AdExchangeBuyer.Marketplacenotes.Insert
import Gogol.AdExchangeBuyer.Marketplacenotes.List
import Gogol.AdExchangeBuyer.Marketplaceprivateauction.Updateproposal
import Gogol.AdExchangeBuyer.PerformanceReport.List
import Gogol.AdExchangeBuyer.PretargetingConfig.Delete
import Gogol.AdExchangeBuyer.PretargetingConfig.Get
import Gogol.AdExchangeBuyer.PretargetingConfig.Insert
import Gogol.AdExchangeBuyer.PretargetingConfig.List
import Gogol.AdExchangeBuyer.PretargetingConfig.Patch
import Gogol.AdExchangeBuyer.PretargetingConfig.Update
import Gogol.AdExchangeBuyer.Products.Get
import Gogol.AdExchangeBuyer.Products.Search
import Gogol.AdExchangeBuyer.Proposals.Get
import Gogol.AdExchangeBuyer.Proposals.Insert
import Gogol.AdExchangeBuyer.Proposals.Patch
import Gogol.AdExchangeBuyer.Proposals.Search
import Gogol.AdExchangeBuyer.Proposals.Setupcomplete
import Gogol.AdExchangeBuyer.Proposals.Update
import Gogol.AdExchangeBuyer.Pubprofiles.List
import Gogol.AdExchangeBuyer.Types
