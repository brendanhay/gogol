{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AdExchangeBuyer.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.AdExchangeBuyer.Types
    (
    -- * Configuration
      adExchangeBuyerService

    -- * OAuth Scopes
    , Adexchange'Buyer

    -- * Types

    -- ** Account
    , Account (..)
    , newAccount

    -- ** Account_BidderLocationItem
    , Account_BidderLocationItem (..)
    , newAccount_BidderLocationItem

    -- ** AccountsList
    , AccountsList (..)
    , newAccountsList

    -- ** AddOrderDealsRequest
    , AddOrderDealsRequest (..)
    , newAddOrderDealsRequest

    -- ** AddOrderDealsResponse
    , AddOrderDealsResponse (..)
    , newAddOrderDealsResponse

    -- ** AddOrderNotesRequest
    , AddOrderNotesRequest (..)
    , newAddOrderNotesRequest

    -- ** AddOrderNotesResponse
    , AddOrderNotesResponse (..)
    , newAddOrderNotesResponse

    -- ** BillingInfo
    , BillingInfo (..)
    , newBillingInfo

    -- ** BillingInfoList
    , BillingInfoList (..)
    , newBillingInfoList

    -- ** Budget
    , Budget (..)
    , newBudget

    -- ** Buyer
    , Buyer (..)
    , newBuyer

    -- ** ContactInformation
    , ContactInformation (..)
    , newContactInformation

    -- ** CreateOrdersRequest
    , CreateOrdersRequest (..)
    , newCreateOrdersRequest

    -- ** CreateOrdersResponse
    , CreateOrdersResponse (..)
    , newCreateOrdersResponse

    -- ** Creative
    , Creative (..)
    , newCreative

    -- ** Creative_AdTechnologyProviders
    , Creative_AdTechnologyProviders (..)
    , newCreative_AdTechnologyProviders

    -- ** Creative_CorrectionsItem
    , Creative_CorrectionsItem (..)
    , newCreative_CorrectionsItem

    -- ** Creative_CorrectionsItem_ContextsItem
    , Creative_CorrectionsItem_ContextsItem (..)
    , newCreative_CorrectionsItem_ContextsItem

    -- ** Creative_FilteringReasons
    , Creative_FilteringReasons (..)
    , newCreative_FilteringReasons

    -- ** Creative_FilteringReasons_ReasonsItem
    , Creative_FilteringReasons_ReasonsItem (..)
    , newCreative_FilteringReasons_ReasonsItem

    -- ** Creative_NativeAd
    , Creative_NativeAd (..)
    , newCreative_NativeAd

    -- ** Creative_NativeAd_AppIcon
    , Creative_NativeAd_AppIcon (..)
    , newCreative_NativeAd_AppIcon

    -- ** Creative_NativeAd_Image
    , Creative_NativeAd_Image (..)
    , newCreative_NativeAd_Image

    -- ** Creative_NativeAd_Logo
    , Creative_NativeAd_Logo (..)
    , newCreative_NativeAd_Logo

    -- ** Creative_ServingRestrictionsItem
    , Creative_ServingRestrictionsItem (..)
    , newCreative_ServingRestrictionsItem

    -- ** Creative_ServingRestrictionsItem_ContextsItem
    , Creative_ServingRestrictionsItem_ContextsItem (..)
    , newCreative_ServingRestrictionsItem_ContextsItem

    -- ** Creative_ServingRestrictionsItem_DisapprovalReasonsItem
    , Creative_ServingRestrictionsItem_DisapprovalReasonsItem (..)
    , newCreative_ServingRestrictionsItem_DisapprovalReasonsItem

    -- ** CreativeDealIds
    , CreativeDealIds (..)
    , newCreativeDealIds

    -- ** CreativeDealIds_DealStatusesItem
    , CreativeDealIds_DealStatusesItem (..)
    , newCreativeDealIds_DealStatusesItem

    -- ** CreativesList
    , CreativesList (..)
    , newCreativesList

    -- ** DealServingMetadata
    , DealServingMetadata (..)
    , newDealServingMetadata

    -- ** DealServingMetadataDealPauseStatus
    , DealServingMetadataDealPauseStatus (..)
    , newDealServingMetadataDealPauseStatus

    -- ** DealTerms
    , DealTerms (..)
    , newDealTerms

    -- ** DealTermsGuaranteedFixedPriceTerms
    , DealTermsGuaranteedFixedPriceTerms (..)
    , newDealTermsGuaranteedFixedPriceTerms

    -- ** DealTermsGuaranteedFixedPriceTermsBillingInfo
    , DealTermsGuaranteedFixedPriceTermsBillingInfo (..)
    , newDealTermsGuaranteedFixedPriceTermsBillingInfo

    -- ** DealTermsNonGuaranteedAuctionTerms
    , DealTermsNonGuaranteedAuctionTerms (..)
    , newDealTermsNonGuaranteedAuctionTerms

    -- ** DealTermsNonGuaranteedFixedPriceTerms
    , DealTermsNonGuaranteedFixedPriceTerms (..)
    , newDealTermsNonGuaranteedFixedPriceTerms

    -- ** DealTermsRubiconNonGuaranteedTerms
    , DealTermsRubiconNonGuaranteedTerms (..)
    , newDealTermsRubiconNonGuaranteedTerms

    -- ** DeleteOrderDealsRequest
    , DeleteOrderDealsRequest (..)
    , newDeleteOrderDealsRequest

    -- ** DeleteOrderDealsResponse
    , DeleteOrderDealsResponse (..)
    , newDeleteOrderDealsResponse

    -- ** DeliveryControl
    , DeliveryControl (..)
    , newDeliveryControl

    -- ** DeliveryControlFrequencyCap
    , DeliveryControlFrequencyCap (..)
    , newDeliveryControlFrequencyCap

    -- ** Dimension
    , Dimension (..)
    , newDimension

    -- ** DimensionDimensionValue
    , DimensionDimensionValue (..)
    , newDimensionDimensionValue

    -- ** EditAllOrderDealsRequest
    , EditAllOrderDealsRequest (..)
    , newEditAllOrderDealsRequest

    -- ** EditAllOrderDealsResponse
    , EditAllOrderDealsResponse (..)
    , newEditAllOrderDealsResponse

    -- ** GetOffersResponse
    , GetOffersResponse (..)
    , newGetOffersResponse

    -- ** GetOrderDealsResponse
    , GetOrderDealsResponse (..)
    , newGetOrderDealsResponse

    -- ** GetOrderNotesResponse
    , GetOrderNotesResponse (..)
    , newGetOrderNotesResponse

    -- ** GetOrdersResponse
    , GetOrdersResponse (..)
    , newGetOrdersResponse

    -- ** GetPublisherProfilesByAccountIdResponse
    , GetPublisherProfilesByAccountIdResponse (..)
    , newGetPublisherProfilesByAccountIdResponse

    -- ** MarketplaceDeal
    , MarketplaceDeal (..)
    , newMarketplaceDeal

    -- ** MarketplaceDealParty
    , MarketplaceDealParty (..)
    , newMarketplaceDealParty

    -- ** MarketplaceLabel
    , MarketplaceLabel (..)
    , newMarketplaceLabel

    -- ** MarketplaceNote
    , MarketplaceNote (..)
    , newMarketplaceNote

    -- ** MobileApplication
    , MobileApplication (..)
    , newMobileApplication

    -- ** PerformanceReport
    , PerformanceReport (..)
    , newPerformanceReport

    -- ** PerformanceReportList
    , PerformanceReportList (..)
    , newPerformanceReportList

    -- ** PretargetingConfig
    , PretargetingConfig (..)
    , newPretargetingConfig

    -- ** PretargetingConfig_DimensionsItem
    , PretargetingConfig_DimensionsItem (..)
    , newPretargetingConfig_DimensionsItem

    -- ** PretargetingConfig_ExcludedPlacementsItem
    , PretargetingConfig_ExcludedPlacementsItem (..)
    , newPretargetingConfig_ExcludedPlacementsItem

    -- ** PretargetingConfig_PlacementsItem
    , PretargetingConfig_PlacementsItem (..)
    , newPretargetingConfig_PlacementsItem

    -- ** PretargetingConfig_VideoPlayerSizesItem
    , PretargetingConfig_VideoPlayerSizesItem (..)
    , newPretargetingConfig_VideoPlayerSizesItem

    -- ** PretargetingConfigList
    , PretargetingConfigList (..)
    , newPretargetingConfigList

    -- ** Price
    , Price (..)
    , newPrice

    -- ** PricePerBuyer
    , PricePerBuyer (..)
    , newPricePerBuyer

    -- ** PrivateData
    , PrivateData (..)
    , newPrivateData

    -- ** Product
    , Product (..)
    , newProduct

    -- ** Proposal
    , Proposal (..)
    , newProposal

    -- ** PublisherProfileApiProto
    , PublisherProfileApiProto (..)
    , newPublisherProfileApiProto

    -- ** PublisherProvidedForecast
    , PublisherProvidedForecast (..)
    , newPublisherProvidedForecast

    -- ** Seller
    , Seller (..)
    , newSeller

    -- ** SharedTargeting
    , SharedTargeting (..)
    , newSharedTargeting

    -- ** TargetingValue
    , TargetingValue (..)
    , newTargetingValue

    -- ** TargetingValueCreativeSize
    , TargetingValueCreativeSize (..)
    , newTargetingValueCreativeSize

    -- ** TargetingValueDayPartTargeting
    , TargetingValueDayPartTargeting (..)
    , newTargetingValueDayPartTargeting

    -- ** TargetingValueDayPartTargetingDayPart
    , TargetingValueDayPartTargetingDayPart (..)
    , newTargetingValueDayPartTargetingDayPart

    -- ** TargetingValueDemogAgeCriteria
    , TargetingValueDemogAgeCriteria (..)
    , newTargetingValueDemogAgeCriteria

    -- ** TargetingValueDemogGenderCriteria
    , TargetingValueDemogGenderCriteria (..)
    , newTargetingValueDemogGenderCriteria

    -- ** TargetingValueRequestPlatformTargeting
    , TargetingValueRequestPlatformTargeting (..)
    , newTargetingValueRequestPlatformTargeting

    -- ** TargetingValueSize
    , TargetingValueSize (..)
    , newTargetingValueSize

    -- ** UpdatePrivateAuctionProposalRequest
    , UpdatePrivateAuctionProposalRequest (..)
    , newUpdatePrivateAuctionProposalRequest

    -- ** CreativesListDealsStatusFilter
    , CreativesListDealsStatusFilter (..)

    -- ** CreativesListOpenAuctionStatusFilter
    , CreativesListOpenAuctionStatusFilter (..)

    -- ** ProposalsPatchUpdateAction
    , ProposalsPatchUpdateAction (..)

    -- ** ProposalsUpdateUpdateAction
    , ProposalsUpdateUpdateAction (..)
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AdExchangeBuyer.Internal.Product
import Gogol.AdExchangeBuyer.Internal.Sum

-- | Default request referring to version @v1.4@ of the Ad Exchange Buyer API. This contains the host and root path used as a starting point for constructing service requests.
adExchangeBuyerService :: Core.ServiceConfig
adExchangeBuyerService
  = Core.defaultService
      (Core.ServiceId "adexchangebuyer:v1.4")
      "www.googleapis.com"

-- | Manage your Ad Exchange buyer account configuration
type Adexchange'Buyer = "https://www.googleapis.com/auth/adexchange.buyer"
