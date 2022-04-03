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
    AdExchangeBuyerAccountsGet (..),
    newAdExchangeBuyerAccountsGet,

    -- ** adexchangebuyer.accounts.list
    AdExchangeBuyerAccountsListResource,
    AdExchangeBuyerAccountsList (..),
    newAdExchangeBuyerAccountsList,

    -- ** adexchangebuyer.accounts.patch
    AdExchangeBuyerAccountsPatchResource,
    AdExchangeBuyerAccountsPatch (..),
    newAdExchangeBuyerAccountsPatch,

    -- ** adexchangebuyer.accounts.update
    AdExchangeBuyerAccountsUpdateResource,
    AdExchangeBuyerAccountsUpdate (..),
    newAdExchangeBuyerAccountsUpdate,

    -- ** adexchangebuyer.billingInfo.get
    AdExchangeBuyerBillingInfoGetResource,
    AdExchangeBuyerBillingInfoGet (..),
    newAdExchangeBuyerBillingInfoGet,

    -- ** adexchangebuyer.billingInfo.list
    AdExchangeBuyerBillingInfoListResource,
    AdExchangeBuyerBillingInfoList (..),
    newAdExchangeBuyerBillingInfoList,

    -- ** adexchangebuyer.budget.get
    AdExchangeBuyerBudgetGetResource,
    AdExchangeBuyerBudgetGet (..),
    newAdExchangeBuyerBudgetGet,

    -- ** adexchangebuyer.budget.patch
    AdExchangeBuyerBudgetPatchResource,
    AdExchangeBuyerBudgetPatch (..),
    newAdExchangeBuyerBudgetPatch,

    -- ** adexchangebuyer.budget.update
    AdExchangeBuyerBudgetUpdateResource,
    AdExchangeBuyerBudgetUpdate (..),
    newAdExchangeBuyerBudgetUpdate,

    -- ** adexchangebuyer.creatives.addDeal
    AdExchangeBuyerCreativesAddDealResource,
    AdExchangeBuyerCreativesAddDeal (..),
    newAdExchangeBuyerCreativesAddDeal,

    -- ** adexchangebuyer.creatives.get
    AdExchangeBuyerCreativesGetResource,
    AdExchangeBuyerCreativesGet (..),
    newAdExchangeBuyerCreativesGet,

    -- ** adexchangebuyer.creatives.insert
    AdExchangeBuyerCreativesInsertResource,
    AdExchangeBuyerCreativesInsert (..),
    newAdExchangeBuyerCreativesInsert,

    -- ** adexchangebuyer.creatives.list
    AdExchangeBuyerCreativesListResource,
    AdExchangeBuyerCreativesList (..),
    newAdExchangeBuyerCreativesList,

    -- ** adexchangebuyer.creatives.listDeals
    AdExchangeBuyerCreativesListDealsResource,
    AdExchangeBuyerCreativesListDeals (..),
    newAdExchangeBuyerCreativesListDeals,

    -- ** adexchangebuyer.creatives.removeDeal
    AdExchangeBuyerCreativesRemoveDealResource,
    AdExchangeBuyerCreativesRemoveDeal (..),
    newAdExchangeBuyerCreativesRemoveDeal,

    -- ** adexchangebuyer.marketplacedeals.delete
    AdExchangeBuyerMarketplacedealsDeleteResource,
    AdExchangeBuyerMarketplacedealsDelete (..),
    newAdExchangeBuyerMarketplacedealsDelete,

    -- ** adexchangebuyer.marketplacedeals.insert
    AdExchangeBuyerMarketplacedealsInsertResource,
    AdExchangeBuyerMarketplacedealsInsert (..),
    newAdExchangeBuyerMarketplacedealsInsert,

    -- ** adexchangebuyer.marketplacedeals.list
    AdExchangeBuyerMarketplacedealsListResource,
    AdExchangeBuyerMarketplacedealsList (..),
    newAdExchangeBuyerMarketplacedealsList,

    -- ** adexchangebuyer.marketplacedeals.update
    AdExchangeBuyerMarketplacedealsUpdateResource,
    AdExchangeBuyerMarketplacedealsUpdate (..),
    newAdExchangeBuyerMarketplacedealsUpdate,

    -- ** adexchangebuyer.marketplacenotes.insert
    AdExchangeBuyerMarketplacenotesInsertResource,
    AdExchangeBuyerMarketplacenotesInsert (..),
    newAdExchangeBuyerMarketplacenotesInsert,

    -- ** adexchangebuyer.marketplacenotes.list
    AdExchangeBuyerMarketplacenotesListResource,
    AdExchangeBuyerMarketplacenotesList (..),
    newAdExchangeBuyerMarketplacenotesList,

    -- ** adexchangebuyer.marketplaceprivateauction.updateproposal
    AdExchangeBuyerMarketplaceprivateauctionUpdateproposalResource,
    AdExchangeBuyerMarketplaceprivateauctionUpdateproposal (..),
    newAdExchangeBuyerMarketplaceprivateauctionUpdateproposal,

    -- ** adexchangebuyer.performanceReport.list
    AdExchangeBuyerPerformanceReportListResource,
    AdExchangeBuyerPerformanceReportList (..),
    newAdExchangeBuyerPerformanceReportList,

    -- ** adexchangebuyer.pretargetingConfig.delete
    AdExchangeBuyerPretargetingConfigDeleteResource,
    AdExchangeBuyerPretargetingConfigDelete (..),
    newAdExchangeBuyerPretargetingConfigDelete,

    -- ** adexchangebuyer.pretargetingConfig.get
    AdExchangeBuyerPretargetingConfigGetResource,
    AdExchangeBuyerPretargetingConfigGet (..),
    newAdExchangeBuyerPretargetingConfigGet,

    -- ** adexchangebuyer.pretargetingConfig.insert
    AdExchangeBuyerPretargetingConfigInsertResource,
    AdExchangeBuyerPretargetingConfigInsert (..),
    newAdExchangeBuyerPretargetingConfigInsert,

    -- ** adexchangebuyer.pretargetingConfig.list
    AdExchangeBuyerPretargetingConfigListResource,
    AdExchangeBuyerPretargetingConfigList (..),
    newAdExchangeBuyerPretargetingConfigList,

    -- ** adexchangebuyer.pretargetingConfig.patch
    AdExchangeBuyerPretargetingConfigPatchResource,
    AdExchangeBuyerPretargetingConfigPatch (..),
    newAdExchangeBuyerPretargetingConfigPatch,

    -- ** adexchangebuyer.pretargetingConfig.update
    AdExchangeBuyerPretargetingConfigUpdateResource,
    AdExchangeBuyerPretargetingConfigUpdate (..),
    newAdExchangeBuyerPretargetingConfigUpdate,

    -- ** adexchangebuyer.products.get
    AdExchangeBuyerProductsGetResource,
    AdExchangeBuyerProductsGet (..),
    newAdExchangeBuyerProductsGet,

    -- ** adexchangebuyer.products.search
    AdExchangeBuyerProductsSearchResource,
    AdExchangeBuyerProductsSearch (..),
    newAdExchangeBuyerProductsSearch,

    -- ** adexchangebuyer.proposals.get
    AdExchangeBuyerProposalsGetResource,
    AdExchangeBuyerProposalsGet (..),
    newAdExchangeBuyerProposalsGet,

    -- ** adexchangebuyer.proposals.insert
    AdExchangeBuyerProposalsInsertResource,
    AdExchangeBuyerProposalsInsert (..),
    newAdExchangeBuyerProposalsInsert,

    -- ** adexchangebuyer.proposals.patch
    AdExchangeBuyerProposalsPatchResource,
    AdExchangeBuyerProposalsPatch (..),
    newAdExchangeBuyerProposalsPatch,

    -- ** adexchangebuyer.proposals.search
    AdExchangeBuyerProposalsSearchResource,
    AdExchangeBuyerProposalsSearch (..),
    newAdExchangeBuyerProposalsSearch,

    -- ** adexchangebuyer.proposals.setupcomplete
    AdExchangeBuyerProposalsSetupcompleteResource,
    AdExchangeBuyerProposalsSetupcomplete (..),
    newAdExchangeBuyerProposalsSetupcomplete,

    -- ** adexchangebuyer.proposals.update
    AdExchangeBuyerProposalsUpdateResource,
    AdExchangeBuyerProposalsUpdate (..),
    newAdExchangeBuyerProposalsUpdate,

    -- ** adexchangebuyer.pubprofiles.list
    AdExchangeBuyerPubprofilesListResource,
    AdExchangeBuyerPubprofilesList (..),
    newAdExchangeBuyerPubprofilesList,

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
