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
-- Module      : Gogol.AdExchangeBuyer.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AdExchangeBuyer.Internal.Product
  ( -- * Account
    Account (..),
    newAccount,

    -- * Account_BidderLocationItem
    Account_BidderLocationItem (..),
    newAccount_BidderLocationItem,

    -- * AccountsList
    AccountsList (..),
    newAccountsList,

    -- * AddOrderDealsRequest
    AddOrderDealsRequest (..),
    newAddOrderDealsRequest,

    -- * AddOrderDealsResponse
    AddOrderDealsResponse (..),
    newAddOrderDealsResponse,

    -- * AddOrderNotesRequest
    AddOrderNotesRequest (..),
    newAddOrderNotesRequest,

    -- * AddOrderNotesResponse
    AddOrderNotesResponse (..),
    newAddOrderNotesResponse,

    -- * BillingInfo
    BillingInfo (..),
    newBillingInfo,

    -- * BillingInfoList
    BillingInfoList (..),
    newBillingInfoList,

    -- * Budget
    Budget (..),
    newBudget,

    -- * Buyer
    Buyer (..),
    newBuyer,

    -- * ContactInformation
    ContactInformation (..),
    newContactInformation,

    -- * CreateOrdersRequest
    CreateOrdersRequest (..),
    newCreateOrdersRequest,

    -- * CreateOrdersResponse
    CreateOrdersResponse (..),
    newCreateOrdersResponse,

    -- * Creative
    Creative (..),
    newCreative,

    -- * Creative_AdTechnologyProviders
    Creative_AdTechnologyProviders (..),
    newCreative_AdTechnologyProviders,

    -- * Creative_CorrectionsItem
    Creative_CorrectionsItem (..),
    newCreative_CorrectionsItem,

    -- * Creative_CorrectionsItem_ContextsItem
    Creative_CorrectionsItem_ContextsItem (..),
    newCreative_CorrectionsItem_ContextsItem,

    -- * Creative_FilteringReasons
    Creative_FilteringReasons (..),
    newCreative_FilteringReasons,

    -- * Creative_FilteringReasons_ReasonsItem
    Creative_FilteringReasons_ReasonsItem (..),
    newCreative_FilteringReasons_ReasonsItem,

    -- * Creative_NativeAd
    Creative_NativeAd (..),
    newCreative_NativeAd,

    -- * Creative_NativeAd_AppIcon
    Creative_NativeAd_AppIcon (..),
    newCreative_NativeAd_AppIcon,

    -- * Creative_NativeAd_Image
    Creative_NativeAd_Image (..),
    newCreative_NativeAd_Image,

    -- * Creative_NativeAd_Logo
    Creative_NativeAd_Logo (..),
    newCreative_NativeAd_Logo,

    -- * Creative_ServingRestrictionsItem
    Creative_ServingRestrictionsItem (..),
    newCreative_ServingRestrictionsItem,

    -- * Creative_ServingRestrictionsItem_ContextsItem
    Creative_ServingRestrictionsItem_ContextsItem (..),
    newCreative_ServingRestrictionsItem_ContextsItem,

    -- * Creative_ServingRestrictionsItem_DisapprovalReasonsItem
    Creative_ServingRestrictionsItem_DisapprovalReasonsItem (..),
    newCreative_ServingRestrictionsItem_DisapprovalReasonsItem,

    -- * CreativeDealIds
    CreativeDealIds (..),
    newCreativeDealIds,

    -- * CreativeDealIds_DealStatusesItem
    CreativeDealIds_DealStatusesItem (..),
    newCreativeDealIds_DealStatusesItem,

    -- * CreativesList
    CreativesList (..),
    newCreativesList,

    -- * DealServingMetadata
    DealServingMetadata (..),
    newDealServingMetadata,

    -- * DealServingMetadataDealPauseStatus
    DealServingMetadataDealPauseStatus (..),
    newDealServingMetadataDealPauseStatus,

    -- * DealTerms
    DealTerms (..),
    newDealTerms,

    -- * DealTermsGuaranteedFixedPriceTerms
    DealTermsGuaranteedFixedPriceTerms (..),
    newDealTermsGuaranteedFixedPriceTerms,

    -- * DealTermsGuaranteedFixedPriceTermsBillingInfo
    DealTermsGuaranteedFixedPriceTermsBillingInfo (..),
    newDealTermsGuaranteedFixedPriceTermsBillingInfo,

    -- * DealTermsNonGuaranteedAuctionTerms
    DealTermsNonGuaranteedAuctionTerms (..),
    newDealTermsNonGuaranteedAuctionTerms,

    -- * DealTermsNonGuaranteedFixedPriceTerms
    DealTermsNonGuaranteedFixedPriceTerms (..),
    newDealTermsNonGuaranteedFixedPriceTerms,

    -- * DealTermsRubiconNonGuaranteedTerms
    DealTermsRubiconNonGuaranteedTerms (..),
    newDealTermsRubiconNonGuaranteedTerms,

    -- * DeleteOrderDealsRequest
    DeleteOrderDealsRequest (..),
    newDeleteOrderDealsRequest,

    -- * DeleteOrderDealsResponse
    DeleteOrderDealsResponse (..),
    newDeleteOrderDealsResponse,

    -- * DeliveryControl
    DeliveryControl (..),
    newDeliveryControl,

    -- * DeliveryControlFrequencyCap
    DeliveryControlFrequencyCap (..),
    newDeliveryControlFrequencyCap,

    -- * Dimension
    Dimension (..),
    newDimension,

    -- * DimensionDimensionValue
    DimensionDimensionValue (..),
    newDimensionDimensionValue,

    -- * EditAllOrderDealsRequest
    EditAllOrderDealsRequest (..),
    newEditAllOrderDealsRequest,

    -- * EditAllOrderDealsResponse
    EditAllOrderDealsResponse (..),
    newEditAllOrderDealsResponse,

    -- * GetOffersResponse
    GetOffersResponse (..),
    newGetOffersResponse,

    -- * GetOrderDealsResponse
    GetOrderDealsResponse (..),
    newGetOrderDealsResponse,

    -- * GetOrderNotesResponse
    GetOrderNotesResponse (..),
    newGetOrderNotesResponse,

    -- * GetOrdersResponse
    GetOrdersResponse (..),
    newGetOrdersResponse,

    -- * GetPublisherProfilesByAccountIdResponse
    GetPublisherProfilesByAccountIdResponse (..),
    newGetPublisherProfilesByAccountIdResponse,

    -- * MarketplaceDeal
    MarketplaceDeal (..),
    newMarketplaceDeal,

    -- * MarketplaceDealParty
    MarketplaceDealParty (..),
    newMarketplaceDealParty,

    -- * MarketplaceLabel
    MarketplaceLabel (..),
    newMarketplaceLabel,

    -- * MarketplaceNote
    MarketplaceNote (..),
    newMarketplaceNote,

    -- * MobileApplication
    MobileApplication (..),
    newMobileApplication,

    -- * PerformanceReport
    PerformanceReport (..),
    newPerformanceReport,

    -- * PerformanceReportList
    PerformanceReportList (..),
    newPerformanceReportList,

    -- * PretargetingConfig
    PretargetingConfig (..),
    newPretargetingConfig,

    -- * PretargetingConfig_DimensionsItem
    PretargetingConfig_DimensionsItem (..),
    newPretargetingConfig_DimensionsItem,

    -- * PretargetingConfig_ExcludedPlacementsItem
    PretargetingConfig_ExcludedPlacementsItem (..),
    newPretargetingConfig_ExcludedPlacementsItem,

    -- * PretargetingConfig_PlacementsItem
    PretargetingConfig_PlacementsItem (..),
    newPretargetingConfig_PlacementsItem,

    -- * PretargetingConfig_VideoPlayerSizesItem
    PretargetingConfig_VideoPlayerSizesItem (..),
    newPretargetingConfig_VideoPlayerSizesItem,

    -- * PretargetingConfigList
    PretargetingConfigList (..),
    newPretargetingConfigList,

    -- * Price
    Price (..),
    newPrice,

    -- * PricePerBuyer
    PricePerBuyer (..),
    newPricePerBuyer,

    -- * PrivateData
    PrivateData (..),
    newPrivateData,

    -- * Product
    Product (..),
    newProduct,

    -- * Proposal
    Proposal (..),
    newProposal,

    -- * PublisherProfileApiProto
    PublisherProfileApiProto (..),
    newPublisherProfileApiProto,

    -- * PublisherProvidedForecast
    PublisherProvidedForecast (..),
    newPublisherProvidedForecast,

    -- * Seller
    Seller (..),
    newSeller,

    -- * SharedTargeting
    SharedTargeting (..),
    newSharedTargeting,

    -- * TargetingValue
    TargetingValue (..),
    newTargetingValue,

    -- * TargetingValueCreativeSize
    TargetingValueCreativeSize (..),
    newTargetingValueCreativeSize,

    -- * TargetingValueDayPartTargeting
    TargetingValueDayPartTargeting (..),
    newTargetingValueDayPartTargeting,

    -- * TargetingValueDayPartTargetingDayPart
    TargetingValueDayPartTargetingDayPart (..),
    newTargetingValueDayPartTargetingDayPart,

    -- * TargetingValueDemogAgeCriteria
    TargetingValueDemogAgeCriteria (..),
    newTargetingValueDemogAgeCriteria,

    -- * TargetingValueDemogGenderCriteria
    TargetingValueDemogGenderCriteria (..),
    newTargetingValueDemogGenderCriteria,

    -- * TargetingValueRequestPlatformTargeting
    TargetingValueRequestPlatformTargeting (..),
    newTargetingValueRequestPlatformTargeting,

    -- * TargetingValueSize
    TargetingValueSize (..),
    newTargetingValueSize,

    -- * UpdatePrivateAuctionProposalRequest
    UpdatePrivateAuctionProposalRequest (..),
    newUpdatePrivateAuctionProposalRequest,
  )
where

import Gogol.AdExchangeBuyer.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Configuration data for an Ad Exchange buyer account.
--
-- /See:/ 'newAccount' smart constructor.
data Account = Account
  { -- | When this is false, bid requests that include a deal ID for a private auction or preferred deal are always sent to your bidder. When true, all active pretargeting configs will be applied to private auctions and preferred deals. Programmatic Guaranteed deals (when enabled) are always sent to your bidder.
    applyPretargetingToNonGuaranteedDeals :: (Core.Maybe Core.Bool),
    -- | Your bidder locations that have distinct URLs.
    bidderLocation :: (Core.Maybe [Account_BidderLocationItem]),
    -- | The nid parameter value used in cookie match requests. Please contact your technical account manager if you need to change this.
    cookieMatchingNid :: (Core.Maybe Core.Text),
    -- | The base URL used in cookie match requests.
    cookieMatchingUrl :: (Core.Maybe Core.Text),
    -- | Account id.
    id :: (Core.Maybe Core.Int32),
    -- | Resource type.
    kind :: Core.Text,
    -- | The maximum number of active creatives that an account can have, where a creative is active if it was inserted or bid with in the last 30 days. Please contact your technical account manager if you need to change this.
    maximumActiveCreatives :: (Core.Maybe Core.Int32),
    -- | The sum of all bidderLocation.maximumQps values cannot exceed this. Please contact your technical account manager if you need to change this.
    maximumTotalQps :: (Core.Maybe Core.Int32),
    -- | The number of creatives that this account inserted or bid with in the last 30 days.
    numberActiveCreatives :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Account' with the minimum fields required to make a request.
newAccount ::
  Account
newAccount =
  Account
    { applyPretargetingToNonGuaranteedDeals = Core.Nothing,
      bidderLocation = Core.Nothing,
      cookieMatchingNid = Core.Nothing,
      cookieMatchingUrl = Core.Nothing,
      id = Core.Nothing,
      kind = "adexchangebuyer#account",
      maximumActiveCreatives = Core.Nothing,
      maximumTotalQps = Core.Nothing,
      numberActiveCreatives = Core.Nothing
    }

instance Core.FromJSON Account where
  parseJSON =
    Core.withObject
      "Account"
      ( \o ->
          Account
            Core.<$> (o Core..:? "applyPretargetingToNonGuaranteedDeals")
            Core.<*> (o Core..:? "bidderLocation")
            Core.<*> (o Core..:? "cookieMatchingNid")
            Core.<*> (o Core..:? "cookieMatchingUrl")
            Core.<*> (o Core..:? "id")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "adexchangebuyer#account"
                     )
            Core.<*> (o Core..:? "maximumActiveCreatives")
            Core.<*> (o Core..:? "maximumTotalQps")
            Core.<*> (o Core..:? "numberActiveCreatives")
      )

instance Core.ToJSON Account where
  toJSON Account {..} =
    Core.object
      ( Core.catMaybes
          [ ("applyPretargetingToNonGuaranteedDeals" Core..=)
              Core.<$> applyPretargetingToNonGuaranteedDeals,
            ("bidderLocation" Core..=) Core.<$> bidderLocation,
            ("cookieMatchingNid" Core..=)
              Core.<$> cookieMatchingNid,
            ("cookieMatchingUrl" Core..=)
              Core.<$> cookieMatchingUrl,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("maximumActiveCreatives" Core..=)
              Core.<$> maximumActiveCreatives,
            ("maximumTotalQps" Core..=) Core.<$> maximumTotalQps,
            ("numberActiveCreatives" Core..=)
              Core.<$> numberActiveCreatives
          ]
      )

--
-- /See:/ 'newAccount_BidderLocationItem' smart constructor.
data Account_BidderLocationItem = Account_BidderLocationItem
  { -- | The protocol that the bidder endpoint is using. OpenRTB protocols with prefix PROTOCOL/OPENRTB/PROTOBUF use proto buffer, otherwise use JSON. Allowed values:
    -- - PROTOCOL/ADX - PROTOCOL/OPENRTB/2/2 - PROTOCOL/OPENRTB/2/3 - PROTOCOL/OPENRTB/2/4 - PROTOCOL/OPENRTB/2/5 - PROTOCOL/OPENRTB/PROTOBUF/2/3 - PROTOCOL/OPENRTB/PROTOBUF/2/4 - PROTOCOL/OPENRTB/PROTOBUF/2_5
    bidProtocol :: (Core.Maybe Core.Text),
    -- | The maximum queries per second the Ad Exchange will send.
    maximumQps :: (Core.Maybe Core.Int32),
    -- | The geographical region the Ad Exchange should send requests from. Only used by some quota systems, but always setting the value is recommended. Allowed values:
    -- - ASIA - EUROPE - US/EAST - US/WEST
    region :: (Core.Maybe Core.Text),
    -- | The URL to which the Ad Exchange will send bid requests.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Account_BidderLocationItem' with the minimum fields required to make a request.
newAccount_BidderLocationItem ::
  Account_BidderLocationItem
newAccount_BidderLocationItem =
  Account_BidderLocationItem
    { bidProtocol = Core.Nothing,
      maximumQps = Core.Nothing,
      region = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON Account_BidderLocationItem where
  parseJSON =
    Core.withObject
      "Account_BidderLocationItem"
      ( \o ->
          Account_BidderLocationItem
            Core.<$> (o Core..:? "bidProtocol")
            Core.<*> (o Core..:? "maximumQps")
            Core.<*> (o Core..:? "region")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON Account_BidderLocationItem where
  toJSON Account_BidderLocationItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("bidProtocol" Core..=) Core.<$> bidProtocol,
            ("maximumQps" Core..=) Core.<$> maximumQps,
            ("region" Core..=) Core.<$> region,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | An account feed lists Ad Exchange buyer accounts that the user has access to. Each entry in the feed corresponds to a single buyer account.
--
-- /See:/ 'newAccountsList' smart constructor.
data AccountsList = AccountsList
  { -- | A list of accounts.
    items :: (Core.Maybe [Account]),
    -- | Resource type.
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountsList' with the minimum fields required to make a request.
newAccountsList ::
  AccountsList
newAccountsList =
  AccountsList {items = Core.Nothing, kind = "adexchangebuyer#accountsList"}

instance Core.FromJSON AccountsList where
  parseJSON =
    Core.withObject
      "AccountsList"
      ( \o ->
          AccountsList
            Core.<$> (o Core..:? "items")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "adexchangebuyer#accountsList"
                     )
      )

instance Core.ToJSON AccountsList where
  toJSON AccountsList {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind)
          ]
      )

--
-- /See:/ 'newAddOrderDealsRequest' smart constructor.
data AddOrderDealsRequest = AddOrderDealsRequest
  { -- | The list of deals to add
    deals :: (Core.Maybe [MarketplaceDeal]),
    -- | The last known proposal revision number.
    proposalRevisionNumber :: (Core.Maybe Core.Int64),
    -- | Indicates an optional action to take on the proposal
    updateAction :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddOrderDealsRequest' with the minimum fields required to make a request.
newAddOrderDealsRequest ::
  AddOrderDealsRequest
newAddOrderDealsRequest =
  AddOrderDealsRequest
    { deals = Core.Nothing,
      proposalRevisionNumber = Core.Nothing,
      updateAction = Core.Nothing
    }

instance Core.FromJSON AddOrderDealsRequest where
  parseJSON =
    Core.withObject
      "AddOrderDealsRequest"
      ( \o ->
          AddOrderDealsRequest
            Core.<$> (o Core..:? "deals")
            Core.<*> ( o Core..:? "proposalRevisionNumber"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "updateAction")
      )

instance Core.ToJSON AddOrderDealsRequest where
  toJSON AddOrderDealsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("deals" Core..=) Core.<$> deals,
            ("proposalRevisionNumber" Core..=) Core.. Core.AsText
              Core.<$> proposalRevisionNumber,
            ("updateAction" Core..=) Core.<$> updateAction
          ]
      )

--
-- /See:/ 'newAddOrderDealsResponse' smart constructor.
data AddOrderDealsResponse = AddOrderDealsResponse
  { -- | List of deals added (in the same proposal as passed in the request)
    deals :: (Core.Maybe [MarketplaceDeal]),
    -- | The updated revision number for the proposal.
    proposalRevisionNumber :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddOrderDealsResponse' with the minimum fields required to make a request.
newAddOrderDealsResponse ::
  AddOrderDealsResponse
newAddOrderDealsResponse =
  AddOrderDealsResponse
    { deals = Core.Nothing,
      proposalRevisionNumber = Core.Nothing
    }

instance Core.FromJSON AddOrderDealsResponse where
  parseJSON =
    Core.withObject
      "AddOrderDealsResponse"
      ( \o ->
          AddOrderDealsResponse
            Core.<$> (o Core..:? "deals")
            Core.<*> ( o Core..:? "proposalRevisionNumber"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON AddOrderDealsResponse where
  toJSON AddOrderDealsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("deals" Core..=) Core.<$> deals,
            ("proposalRevisionNumber" Core..=) Core.. Core.AsText
              Core.<$> proposalRevisionNumber
          ]
      )

--
-- /See:/ 'newAddOrderNotesRequest' smart constructor.
newtype AddOrderNotesRequest = AddOrderNotesRequest
  { -- | The list of notes to add.
    notes :: (Core.Maybe [MarketplaceNote])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddOrderNotesRequest' with the minimum fields required to make a request.
newAddOrderNotesRequest ::
  AddOrderNotesRequest
newAddOrderNotesRequest = AddOrderNotesRequest {notes = Core.Nothing}

instance Core.FromJSON AddOrderNotesRequest where
  parseJSON =
    Core.withObject
      "AddOrderNotesRequest"
      ( \o ->
          AddOrderNotesRequest Core.<$> (o Core..:? "notes")
      )

instance Core.ToJSON AddOrderNotesRequest where
  toJSON AddOrderNotesRequest {..} =
    Core.object
      (Core.catMaybes [("notes" Core..=) Core.<$> notes])

--
-- /See:/ 'newAddOrderNotesResponse' smart constructor.
newtype AddOrderNotesResponse = AddOrderNotesResponse
  { -- |
    notes :: (Core.Maybe [MarketplaceNote])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddOrderNotesResponse' with the minimum fields required to make a request.
newAddOrderNotesResponse ::
  AddOrderNotesResponse
newAddOrderNotesResponse = AddOrderNotesResponse {notes = Core.Nothing}

instance Core.FromJSON AddOrderNotesResponse where
  parseJSON =
    Core.withObject
      "AddOrderNotesResponse"
      ( \o ->
          AddOrderNotesResponse Core.<$> (o Core..:? "notes")
      )

instance Core.ToJSON AddOrderNotesResponse where
  toJSON AddOrderNotesResponse {..} =
    Core.object
      (Core.catMaybes [("notes" Core..=) Core.<$> notes])

-- | The configuration data for an Ad Exchange billing info.
--
-- /See:/ 'newBillingInfo' smart constructor.
data BillingInfo = BillingInfo
  { -- | Account id.
    accountId :: (Core.Maybe Core.Int32),
    -- | Account name.
    accountName :: (Core.Maybe Core.Text),
    -- | A list of adgroup IDs associated with this particular account. These IDs may show up as part of a realtime bidding BidRequest, which indicates a bid request for this account.
    billingId :: (Core.Maybe [Core.Text]),
    -- | Resource type.
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BillingInfo' with the minimum fields required to make a request.
newBillingInfo ::
  BillingInfo
newBillingInfo =
  BillingInfo
    { accountId = Core.Nothing,
      accountName = Core.Nothing,
      billingId = Core.Nothing,
      kind = "adexchangebuyer#billingInfo"
    }

instance Core.FromJSON BillingInfo where
  parseJSON =
    Core.withObject
      "BillingInfo"
      ( \o ->
          BillingInfo
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "accountName")
            Core.<*> (o Core..:? "billingId")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "adexchangebuyer#billingInfo"
                     )
      )

instance Core.ToJSON BillingInfo where
  toJSON BillingInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.<$> accountId,
            ("accountName" Core..=) Core.<$> accountName,
            ("billingId" Core..=) Core.<$> billingId,
            Core.Just ("kind" Core..= kind)
          ]
      )

-- | A billing info feed lists Billing Info the Ad Exchange buyer account has access to. Each entry in the feed corresponds to a single billing info.
--
-- /See:/ 'newBillingInfoList' smart constructor.
data BillingInfoList = BillingInfoList
  { -- | A list of billing info relevant for your account.
    items :: (Core.Maybe [BillingInfo]),
    -- | Resource type.
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BillingInfoList' with the minimum fields required to make a request.
newBillingInfoList ::
  BillingInfoList
newBillingInfoList =
  BillingInfoList
    { items = Core.Nothing,
      kind = "adexchangebuyer#billingInfoList"
    }

instance Core.FromJSON BillingInfoList where
  parseJSON =
    Core.withObject
      "BillingInfoList"
      ( \o ->
          BillingInfoList
            Core.<$> (o Core..:? "items")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "adexchangebuyer#billingInfoList"
                     )
      )

instance Core.ToJSON BillingInfoList where
  toJSON BillingInfoList {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind)
          ]
      )

-- | The configuration data for Ad Exchange RTB - Budget API.
--
-- /See:/ 'newBudget' smart constructor.
data Budget = Budget
  { -- | The id of the account. This is required for get and update requests.
    accountId :: (Core.Maybe Core.Int64),
    -- | The billing id to determine which adgroup to provide budget information for. This is required for get and update requests.
    billingId :: (Core.Maybe Core.Int64),
    -- | The daily budget amount in unit amount of the account currency to apply for the billingId provided. This is required for update requests.
    budgetAmount :: (Core.Maybe Core.Int64),
    -- | The currency code for the buyer. This cannot be altered here.
    currencyCode :: (Core.Maybe Core.Text),
    -- | The unique id that describes this item.
    id :: (Core.Maybe Core.Text),
    -- | The kind of the resource, i.e. \"adexchangebuyer#budget\".
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Budget' with the minimum fields required to make a request.
newBudget ::
  Budget
newBudget =
  Budget
    { accountId = Core.Nothing,
      billingId = Core.Nothing,
      budgetAmount = Core.Nothing,
      currencyCode = Core.Nothing,
      id = Core.Nothing,
      kind = "adexchangebuyer#budget"
    }

instance Core.FromJSON Budget where
  parseJSON =
    Core.withObject
      "Budget"
      ( \o ->
          Budget
            Core.<$> ( o Core..:? "accountId"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "billingId"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "budgetAmount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "currencyCode")
            Core.<*> (o Core..:? "id")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "adexchangebuyer#budget"
                     )
      )

instance Core.ToJSON Budget where
  toJSON Budget {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.. Core.AsText
              Core.<$> accountId,
            ("billingId" Core..=) Core.. Core.AsText
              Core.<$> billingId,
            ("budgetAmount" Core..=) Core.. Core.AsText
              Core.<$> budgetAmount,
            ("currencyCode" Core..=) Core.<$> currencyCode,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind)
          ]
      )

--
-- /See:/ 'newBuyer' smart constructor.
newtype Buyer = Buyer
  { -- | Adx account id of the buyer.
    accountId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Buyer' with the minimum fields required to make a request.
newBuyer ::
  Buyer
newBuyer = Buyer {accountId = Core.Nothing}

instance Core.FromJSON Buyer where
  parseJSON =
    Core.withObject
      "Buyer"
      (\o -> Buyer Core.<$> (o Core..:? "accountId"))

instance Core.ToJSON Buyer where
  toJSON Buyer {..} =
    Core.object
      ( Core.catMaybes
          [("accountId" Core..=) Core.<$> accountId]
      )

--
-- /See:/ 'newContactInformation' smart constructor.
data ContactInformation = ContactInformation
  { -- | Email address of the contact.
    email :: (Core.Maybe Core.Text),
    -- | The name of the contact.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContactInformation' with the minimum fields required to make a request.
newContactInformation ::
  ContactInformation
newContactInformation =
  ContactInformation {email = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON ContactInformation where
  parseJSON =
    Core.withObject
      "ContactInformation"
      ( \o ->
          ContactInformation
            Core.<$> (o Core..:? "email") Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON ContactInformation where
  toJSON ContactInformation {..} =
    Core.object
      ( Core.catMaybes
          [ ("email" Core..=) Core.<$> email,
            ("name" Core..=) Core.<$> name
          ]
      )

--
-- /See:/ 'newCreateOrdersRequest' smart constructor.
data CreateOrdersRequest = CreateOrdersRequest
  { -- | The list of proposals to create.
    proposals :: (Core.Maybe [Proposal]),
    -- | Web property id of the seller creating these orders
    webPropertyCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateOrdersRequest' with the minimum fields required to make a request.
newCreateOrdersRequest ::
  CreateOrdersRequest
newCreateOrdersRequest =
  CreateOrdersRequest {proposals = Core.Nothing, webPropertyCode = Core.Nothing}

instance Core.FromJSON CreateOrdersRequest where
  parseJSON =
    Core.withObject
      "CreateOrdersRequest"
      ( \o ->
          CreateOrdersRequest
            Core.<$> (o Core..:? "proposals")
            Core.<*> (o Core..:? "webPropertyCode")
      )

instance Core.ToJSON CreateOrdersRequest where
  toJSON CreateOrdersRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("proposals" Core..=) Core.<$> proposals,
            ("webPropertyCode" Core..=)
              Core.<$> webPropertyCode
          ]
      )

--
-- /See:/ 'newCreateOrdersResponse' smart constructor.
newtype CreateOrdersResponse = CreateOrdersResponse
  { -- | The list of proposals successfully created.
    proposals :: (Core.Maybe [Proposal])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateOrdersResponse' with the minimum fields required to make a request.
newCreateOrdersResponse ::
  CreateOrdersResponse
newCreateOrdersResponse = CreateOrdersResponse {proposals = Core.Nothing}

instance Core.FromJSON CreateOrdersResponse where
  parseJSON =
    Core.withObject
      "CreateOrdersResponse"
      ( \o ->
          CreateOrdersResponse
            Core.<$> (o Core..:? "proposals")
      )

instance Core.ToJSON CreateOrdersResponse where
  toJSON CreateOrdersResponse {..} =
    Core.object
      ( Core.catMaybes
          [("proposals" Core..=) Core.<$> proposals]
      )

-- | A creative and its classification data.
--
-- /See:/ 'newCreative' smart constructor.
data Creative = Creative
  { -- | The HTML snippet that displays the ad when inserted in the web page. If set, videoURL, videoVastXML, and nativeAd should not be set.
    hTMLSnippet :: (Core.Maybe Core.Text),
    -- | Account id.
    accountId :: (Core.Maybe Core.Int32),
    -- | The link to the Ad Preferences page. This is only supported for native ads.
    adChoicesDestinationUrl :: (Core.Maybe Core.Text),
    -- |
    adTechnologyProviders :: (Core.Maybe Creative_AdTechnologyProviders),
    -- | Detected advertiser id, if any. Read-only. This field should not be set in requests.
    advertiserId :: (Core.Maybe [Core.Int64]),
    -- | The name of the company being advertised in the creative. A list of advertisers is provided in the advertisers.txt file.
    advertiserName :: (Core.Maybe Core.Text),
    -- | The agency id for this creative.
    agencyId :: (Core.Maybe Core.Int64),
    -- | The last upload timestamp of this creative if it was uploaded via API. Read-only. The value of this field is generated, and will be ignored for uploads. (formatted RFC 3339 timestamp).
    apiUploadTimestamp :: (Core.Maybe Core.DateTime),
    -- | List of buyer selectable attributes for the ads that may be shown from this snippet. Each attribute is represented by an integer as defined in buyer-declarable-creative-attributes.txt.
    attribute :: (Core.Maybe [Core.Int32]),
    -- | A buyer-specific id identifying the creative in this ad.
    buyerCreativeId :: (Core.Maybe Core.Text),
    -- | The set of destination urls for the snippet.
    clickThroughUrl :: (Core.Maybe [Core.Text]),
    -- | Shows any corrections that were applied to this creative. Read-only. This field should not be set in requests.
    corrections :: (Core.Maybe [Creative_CorrectionsItem]),
    -- | Creative status identity type that the creative item applies to. Ad Exchange real-time bidding is migrating to the sizeless creative verification. Originally, Ad Exchange assigned creative verification status to a unique combination of a buyer creative ID and creative dimensions. Post-migration, a single verification status will be assigned at the buyer creative ID level. This field allows to distinguish whether a given creative status applies to a unique combination of a buyer creative ID and creative dimensions, or to a buyer creative ID as a whole.
    creativeStatusIdentityType :: (Core.Maybe Core.Text),
    -- | Top-level deals status. Read-only. This field should not be set in requests. If disapproved, an entry for auctionType=DIRECT_DEALS (or ALL) in servingRestrictions will also exist. Note that this may be nuanced with other contextual restrictions, in which case it may be preferable to read from servingRestrictions directly.
    dealsStatus :: (Core.Maybe Core.Text),
    -- | Detected domains for this creative. Read-only. This field should not be set in requests.
    detectedDomains :: (Core.Maybe [Core.Text]),
    -- | The filtering reasons for the creative. Read-only. This field should not be set in requests.
    filteringReasons :: (Core.Maybe Creative_FilteringReasons),
    -- | Ad height.
    height :: (Core.Maybe Core.Int32),
    -- | The set of urls to be called to record an impression.
    impressionTrackingUrl :: (Core.Maybe [Core.Text]),
    -- | Resource type.
    kind :: Core.Text,
    -- | Detected languages for this creative. Read-only. This field should not be set in requests.
    languages :: (Core.Maybe [Core.Text]),
    -- | If nativeAd is set, HTMLSnippet, videoVastXML, and the videoURL outside of nativeAd should not be set. (The videoURL inside nativeAd can be set.)
    nativeAd :: (Core.Maybe Creative_NativeAd),
    -- | Top-level open auction status. Read-only. This field should not be set in requests. If disapproved, an entry for auctionType=OPEN_AUCTION (or ALL) in servingRestrictions will also exist. Note that this may be nuanced with other contextual restrictions, in which case it may be preferable to read from ServingRestrictions directly.
    openAuctionStatus :: (Core.Maybe Core.Text),
    -- | Detected product categories, if any. Each category is represented by an integer as defined in ad-product-categories.txt. Read-only. This field should not be set in requests.
    productCategories :: (Core.Maybe [Core.Int32]),
    -- | All restricted categories for the ads that may be shown from this snippet. Each category is represented by an integer as defined in the ad-restricted-categories.txt.
    restrictedCategories :: (Core.Maybe [Core.Int32]),
    -- | Detected sensitive categories, if any. Each category is represented by an integer as defined in ad-sensitive-categories.txt. Read-only. This field should not be set in requests.
    sensitiveCategories :: (Core.Maybe [Core.Int32]),
    -- | The granular status of this ad in specific contexts. A context here relates to where something ultimately serves (for example, a physical location, a platform, an HTTPS vs HTTP request, or the type of auction). Read-only. This field should not be set in requests. See the examples in the Creatives guide for more details.
    servingRestrictions :: (Core.Maybe [Creative_ServingRestrictionsItem]),
    -- | List of vendor types for the ads that may be shown from this snippet. Each vendor type is represented by an integer as defined in vendors.txt.
    vendorType :: (Core.Maybe [Core.Int32]),
    -- | The version for this creative. Read-only. This field should not be set in requests.
    version :: (Core.Maybe Core.Int32),
    -- | The URL to fetch a video ad. If set, HTMLSnippet, videoVastXML, and nativeAd should not be set. Note, this is different from resource.native/ad.video/url above.
    videoURL :: (Core.Maybe Core.Text),
    -- | The contents of a VAST document for a video ad. This document should conform to the VAST 2.0 or 3.0 standard. If set, HTMLSnippet, videoURL, and nativeAd and should not be set.
    videoVastXML :: (Core.Maybe Core.Text),
    -- | Ad width.
    width :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Creative' with the minimum fields required to make a request.
newCreative ::
  Creative
newCreative =
  Creative
    { hTMLSnippet = Core.Nothing,
      accountId = Core.Nothing,
      adChoicesDestinationUrl = Core.Nothing,
      adTechnologyProviders = Core.Nothing,
      advertiserId = Core.Nothing,
      advertiserName = Core.Nothing,
      agencyId = Core.Nothing,
      apiUploadTimestamp = Core.Nothing,
      attribute = Core.Nothing,
      buyerCreativeId = Core.Nothing,
      clickThroughUrl = Core.Nothing,
      corrections = Core.Nothing,
      creativeStatusIdentityType = Core.Nothing,
      dealsStatus = Core.Nothing,
      detectedDomains = Core.Nothing,
      filteringReasons = Core.Nothing,
      height = Core.Nothing,
      impressionTrackingUrl = Core.Nothing,
      kind = "adexchangebuyer#creative",
      languages = Core.Nothing,
      nativeAd = Core.Nothing,
      openAuctionStatus = Core.Nothing,
      productCategories = Core.Nothing,
      restrictedCategories = Core.Nothing,
      sensitiveCategories = Core.Nothing,
      servingRestrictions = Core.Nothing,
      vendorType = Core.Nothing,
      version = Core.Nothing,
      videoURL = Core.Nothing,
      videoVastXML = Core.Nothing,
      width = Core.Nothing
    }

instance Core.FromJSON Creative where
  parseJSON =
    Core.withObject
      "Creative"
      ( \o ->
          Creative
            Core.<$> (o Core..:? "HTMLSnippet")
            Core.<*> (o Core..:? "accountId")
            Core.<*> (o Core..:? "adChoicesDestinationUrl")
            Core.<*> (o Core..:? "adTechnologyProviders")
            Core.<*> ( o Core..:? "advertiserId"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
            Core.<*> (o Core..:? "advertiserName")
            Core.<*> ( o Core..:? "agencyId"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "apiUploadTimestamp")
            Core.<*> (o Core..:? "attribute")
            Core.<*> (o Core..:? "buyerCreativeId")
            Core.<*> (o Core..:? "clickThroughUrl")
            Core.<*> (o Core..:? "corrections")
            Core.<*> (o Core..:? "creativeStatusIdentityType")
            Core.<*> (o Core..:? "dealsStatus")
            Core.<*> (o Core..:? "detectedDomains")
            Core.<*> (o Core..:? "filteringReasons")
            Core.<*> (o Core..:? "height")
            Core.<*> (o Core..:? "impressionTrackingUrl")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "adexchangebuyer#creative"
                     )
            Core.<*> (o Core..:? "languages")
            Core.<*> (o Core..:? "nativeAd")
            Core.<*> (o Core..:? "openAuctionStatus")
            Core.<*> (o Core..:? "productCategories")
            Core.<*> (o Core..:? "restrictedCategories")
            Core.<*> (o Core..:? "sensitiveCategories")
            Core.<*> (o Core..:? "servingRestrictions")
            Core.<*> (o Core..:? "vendorType")
            Core.<*> (o Core..:? "version")
            Core.<*> (o Core..:? "videoURL")
            Core.<*> (o Core..:? "videoVastXML")
            Core.<*> (o Core..:? "width")
      )

instance Core.ToJSON Creative where
  toJSON Creative {..} =
    Core.object
      ( Core.catMaybes
          [ ("HTMLSnippet" Core..=) Core.<$> hTMLSnippet,
            ("accountId" Core..=) Core.<$> accountId,
            ("adChoicesDestinationUrl" Core..=)
              Core.<$> adChoicesDestinationUrl,
            ("adTechnologyProviders" Core..=)
              Core.<$> adTechnologyProviders,
            ("advertiserId" Core..=) Core.. Core.fmap Core.AsText
              Core.<$> advertiserId,
            ("advertiserName" Core..=) Core.<$> advertiserName,
            ("agencyId" Core..=) Core.. Core.AsText
              Core.<$> agencyId,
            ("apiUploadTimestamp" Core..=)
              Core.<$> apiUploadTimestamp,
            ("attribute" Core..=) Core.<$> attribute,
            ("buyerCreativeId" Core..=) Core.<$> buyerCreativeId,
            ("clickThroughUrl" Core..=) Core.<$> clickThroughUrl,
            ("corrections" Core..=) Core.<$> corrections,
            ("creativeStatusIdentityType" Core..=)
              Core.<$> creativeStatusIdentityType,
            ("dealsStatus" Core..=) Core.<$> dealsStatus,
            ("detectedDomains" Core..=) Core.<$> detectedDomains,
            ("filteringReasons" Core..=)
              Core.<$> filteringReasons,
            ("height" Core..=) Core.<$> height,
            ("impressionTrackingUrl" Core..=)
              Core.<$> impressionTrackingUrl,
            Core.Just ("kind" Core..= kind),
            ("languages" Core..=) Core.<$> languages,
            ("nativeAd" Core..=) Core.<$> nativeAd,
            ("openAuctionStatus" Core..=)
              Core.<$> openAuctionStatus,
            ("productCategories" Core..=)
              Core.<$> productCategories,
            ("restrictedCategories" Core..=)
              Core.<$> restrictedCategories,
            ("sensitiveCategories" Core..=)
              Core.<$> sensitiveCategories,
            ("servingRestrictions" Core..=)
              Core.<$> servingRestrictions,
            ("vendorType" Core..=) Core.<$> vendorType,
            ("version" Core..=) Core.<$> version,
            ("videoURL" Core..=) Core.<$> videoURL,
            ("videoVastXML" Core..=) Core.<$> videoVastXML,
            ("width" Core..=) Core.<$> width
          ]
      )

--
-- /See:/ 'newCreative_AdTechnologyProviders' smart constructor.
data Creative_AdTechnologyProviders = Creative_AdTechnologyProviders
  { -- | The detected ad technology provider IDs for this creative. See https:\/\/storage.googleapis.com\/adx-rtb-dictionaries\/providers.csv for mapping of provider ID to provided name, a privacy policy URL, and a list of domains which can be attributed to the provider. If this creative contains provider IDs that are outside of those listed in the @BidRequest.adslot.consented_providers_settings.consented_providers@ field on the Authorized Buyers Real-Time Bidding protocol or the @BidRequest.user.ext.consented_providers_settings.consented_providers@ field on the OpenRTB protocol, a bid submitted for a European Economic Area (EEA) user with this creative is not compliant with the GDPR policies as mentioned in the \"Third-party Ad Technology Vendors\" section of Authorized Buyers Program Guidelines.
    detectedProviderIds :: (Core.Maybe [Core.Int64]),
    -- | Whether the creative contains an unidentified ad technology provider. If true, a bid submitted for a European Economic Area (EEA) user with this creative is not compliant with the GDPR policies as mentioned in the \"Third-party Ad Technology Vendors\" section of Authorized Buyers Program Guidelines.
    hasUnidentifiedProvider :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Creative_AdTechnologyProviders' with the minimum fields required to make a request.
newCreative_AdTechnologyProviders ::
  Creative_AdTechnologyProviders
newCreative_AdTechnologyProviders =
  Creative_AdTechnologyProviders
    { detectedProviderIds = Core.Nothing,
      hasUnidentifiedProvider = Core.Nothing
    }

instance Core.FromJSON Creative_AdTechnologyProviders where
  parseJSON =
    Core.withObject
      "Creative_AdTechnologyProviders"
      ( \o ->
          Creative_AdTechnologyProviders
            Core.<$> ( o Core..:? "detectedProviderIds"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
            Core.<*> (o Core..:? "hasUnidentifiedProvider")
      )

instance Core.ToJSON Creative_AdTechnologyProviders where
  toJSON Creative_AdTechnologyProviders {..} =
    Core.object
      ( Core.catMaybes
          [ ("detectedProviderIds" Core..=)
              Core.. Core.fmap Core.AsText
              Core.<$> detectedProviderIds,
            ("hasUnidentifiedProvider" Core..=)
              Core.<$> hasUnidentifiedProvider
          ]
      )

--
-- /See:/ 'newCreative_CorrectionsItem' smart constructor.
data Creative_CorrectionsItem = Creative_CorrectionsItem
  { -- | All known serving contexts containing serving status information.
    contexts :: (Core.Maybe [Creative_CorrectionsItem_ContextsItem]),
    -- | Additional details about the correction.
    details :: (Core.Maybe [Core.Text]),
    -- | The type of correction that was applied to the creative.
    reason :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Creative_CorrectionsItem' with the minimum fields required to make a request.
newCreative_CorrectionsItem ::
  Creative_CorrectionsItem
newCreative_CorrectionsItem =
  Creative_CorrectionsItem
    { contexts = Core.Nothing,
      details = Core.Nothing,
      reason = Core.Nothing
    }

instance Core.FromJSON Creative_CorrectionsItem where
  parseJSON =
    Core.withObject
      "Creative_CorrectionsItem"
      ( \o ->
          Creative_CorrectionsItem
            Core.<$> (o Core..:? "contexts")
            Core.<*> (o Core..:? "details")
            Core.<*> (o Core..:? "reason")
      )

instance Core.ToJSON Creative_CorrectionsItem where
  toJSON Creative_CorrectionsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("contexts" Core..=) Core.<$> contexts,
            ("details" Core..=) Core.<$> details,
            ("reason" Core..=) Core.<$> reason
          ]
      )

--
-- /See:/ 'newCreative_CorrectionsItem_ContextsItem' smart constructor.
data Creative_CorrectionsItem_ContextsItem = Creative_CorrectionsItem_ContextsItem
  { -- | Only set when contextType=AUCTION_TYPE. Represents the auction types this correction applies to.
    auctionType :: (Core.Maybe [Core.Text]),
    -- | The type of context (e.g., location, platform, auction type, SSL-ness).
    contextType :: (Core.Maybe Core.Text),
    -- | Only set when contextType=LOCATION. Represents the geo criterias this correction applies to.
    geoCriteriaId :: (Core.Maybe [Core.Int32]),
    -- | Only set when contextType=PLATFORM. Represents the platforms this correction applies to.
    platform :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Creative_CorrectionsItem_ContextsItem' with the minimum fields required to make a request.
newCreative_CorrectionsItem_ContextsItem ::
  Creative_CorrectionsItem_ContextsItem
newCreative_CorrectionsItem_ContextsItem =
  Creative_CorrectionsItem_ContextsItem
    { auctionType = Core.Nothing,
      contextType = Core.Nothing,
      geoCriteriaId = Core.Nothing,
      platform = Core.Nothing
    }

instance
  Core.FromJSON
    Creative_CorrectionsItem_ContextsItem
  where
  parseJSON =
    Core.withObject
      "Creative_CorrectionsItem_ContextsItem"
      ( \o ->
          Creative_CorrectionsItem_ContextsItem
            Core.<$> (o Core..:? "auctionType")
            Core.<*> (o Core..:? "contextType")
            Core.<*> (o Core..:? "geoCriteriaId")
            Core.<*> (o Core..:? "platform")
      )

instance
  Core.ToJSON
    Creative_CorrectionsItem_ContextsItem
  where
  toJSON Creative_CorrectionsItem_ContextsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("auctionType" Core..=) Core.<$> auctionType,
            ("contextType" Core..=) Core.<$> contextType,
            ("geoCriteriaId" Core..=) Core.<$> geoCriteriaId,
            ("platform" Core..=) Core.<$> platform
          ]
      )

-- | The filtering reasons for the creative. Read-only. This field should not be set in requests.
--
-- /See:/ 'newCreative_FilteringReasons' smart constructor.
data Creative_FilteringReasons = Creative_FilteringReasons
  { -- | The date in ISO 8601 format for the data. The data is collected from 00:00:00 to 23:59:59 in PST.
    date :: (Core.Maybe Core.Text),
    -- | The filtering reasons.
    reasons :: (Core.Maybe [Creative_FilteringReasons_ReasonsItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Creative_FilteringReasons' with the minimum fields required to make a request.
newCreative_FilteringReasons ::
  Creative_FilteringReasons
newCreative_FilteringReasons =
  Creative_FilteringReasons {date = Core.Nothing, reasons = Core.Nothing}

instance Core.FromJSON Creative_FilteringReasons where
  parseJSON =
    Core.withObject
      "Creative_FilteringReasons"
      ( \o ->
          Creative_FilteringReasons
            Core.<$> (o Core..:? "date") Core.<*> (o Core..:? "reasons")
      )

instance Core.ToJSON Creative_FilteringReasons where
  toJSON Creative_FilteringReasons {..} =
    Core.object
      ( Core.catMaybes
          [ ("date" Core..=) Core.<$> date,
            ("reasons" Core..=) Core.<$> reasons
          ]
      )

--
-- /See:/ 'newCreative_FilteringReasons_ReasonsItem' smart constructor.
data Creative_FilteringReasons_ReasonsItem = Creative_FilteringReasons_ReasonsItem
  { -- | The number of times the creative was filtered for the status. The count is aggregated across all publishers on the exchange.
    filteringCount :: (Core.Maybe Core.Int64),
    -- | The filtering status code as defined in creative-status-codes.txt.
    filteringStatus :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Creative_FilteringReasons_ReasonsItem' with the minimum fields required to make a request.
newCreative_FilteringReasons_ReasonsItem ::
  Creative_FilteringReasons_ReasonsItem
newCreative_FilteringReasons_ReasonsItem =
  Creative_FilteringReasons_ReasonsItem
    { filteringCount = Core.Nothing,
      filteringStatus = Core.Nothing
    }

instance
  Core.FromJSON
    Creative_FilteringReasons_ReasonsItem
  where
  parseJSON =
    Core.withObject
      "Creative_FilteringReasons_ReasonsItem"
      ( \o ->
          Creative_FilteringReasons_ReasonsItem
            Core.<$> ( o Core..:? "filteringCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "filteringStatus")
      )

instance
  Core.ToJSON
    Creative_FilteringReasons_ReasonsItem
  where
  toJSON Creative_FilteringReasons_ReasonsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("filteringCount" Core..=) Core.. Core.AsText
              Core.<$> filteringCount,
            ("filteringStatus" Core..=)
              Core.<$> filteringStatus
          ]
      )

-- | If nativeAd is set, HTMLSnippet, videoVastXML, and the videoURL outside of nativeAd should not be set. (The videoURL inside nativeAd can be set.)
--
-- /See:/ 'newCreative_NativeAd' smart constructor.
data Creative_NativeAd = Creative_NativeAd
  { -- |
    advertiser :: (Core.Maybe Core.Text),
    -- | The app icon, for app download ads.
    appIcon :: (Core.Maybe Creative_NativeAd_AppIcon),
    -- | A long description of the ad.
    body :: (Core.Maybe Core.Text),
    -- | A label for the button that the user is supposed to click.
    callToAction :: (Core.Maybe Core.Text),
    -- | The URL that the browser\/SDK will load when the user clicks the ad.
    clickLinkUrl :: (Core.Maybe Core.Text),
    -- | The URL to use for click tracking.
    clickTrackingUrl :: (Core.Maybe Core.Text),
    -- | A short title for the ad.
    headline :: (Core.Maybe Core.Text),
    -- | A large image.
    image :: (Core.Maybe Creative_NativeAd_Image),
    -- | The URLs are called when the impression is rendered.
    impressionTrackingUrl :: (Core.Maybe [Core.Text]),
    -- | A smaller image, for the advertiser logo.
    logo :: (Core.Maybe Creative_NativeAd_Logo),
    -- | The price of the promoted app including the currency info.
    price :: (Core.Maybe Core.Text),
    -- | The app rating in the app store. Must be in the range [0-5].
    starRating :: (Core.Maybe Core.Double),
    -- | The URL of the XML VAST for a native ad. Note this is a separate field from resource.video_url.
    videoURL :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Creative_NativeAd' with the minimum fields required to make a request.
newCreative_NativeAd ::
  Creative_NativeAd
newCreative_NativeAd =
  Creative_NativeAd
    { advertiser = Core.Nothing,
      appIcon = Core.Nothing,
      body = Core.Nothing,
      callToAction = Core.Nothing,
      clickLinkUrl = Core.Nothing,
      clickTrackingUrl = Core.Nothing,
      headline = Core.Nothing,
      image = Core.Nothing,
      impressionTrackingUrl = Core.Nothing,
      logo = Core.Nothing,
      price = Core.Nothing,
      starRating = Core.Nothing,
      videoURL = Core.Nothing
    }

instance Core.FromJSON Creative_NativeAd where
  parseJSON =
    Core.withObject
      "Creative_NativeAd"
      ( \o ->
          Creative_NativeAd
            Core.<$> (o Core..:? "advertiser")
            Core.<*> (o Core..:? "appIcon")
            Core.<*> (o Core..:? "body")
            Core.<*> (o Core..:? "callToAction")
            Core.<*> (o Core..:? "clickLinkUrl")
            Core.<*> (o Core..:? "clickTrackingUrl")
            Core.<*> (o Core..:? "headline")
            Core.<*> (o Core..:? "image")
            Core.<*> (o Core..:? "impressionTrackingUrl")
            Core.<*> (o Core..:? "logo")
            Core.<*> (o Core..:? "price")
            Core.<*> (o Core..:? "starRating")
            Core.<*> (o Core..:? "videoURL")
      )

instance Core.ToJSON Creative_NativeAd where
  toJSON Creative_NativeAd {..} =
    Core.object
      ( Core.catMaybes
          [ ("advertiser" Core..=) Core.<$> advertiser,
            ("appIcon" Core..=) Core.<$> appIcon,
            ("body" Core..=) Core.<$> body,
            ("callToAction" Core..=) Core.<$> callToAction,
            ("clickLinkUrl" Core..=) Core.<$> clickLinkUrl,
            ("clickTrackingUrl" Core..=)
              Core.<$> clickTrackingUrl,
            ("headline" Core..=) Core.<$> headline,
            ("image" Core..=) Core.<$> image,
            ("impressionTrackingUrl" Core..=)
              Core.<$> impressionTrackingUrl,
            ("logo" Core..=) Core.<$> logo,
            ("price" Core..=) Core.<$> price,
            ("starRating" Core..=) Core.<$> starRating,
            ("videoURL" Core..=) Core.<$> videoURL
          ]
      )

-- | The app icon, for app download ads.
--
-- /See:/ 'newCreative_NativeAd_AppIcon' smart constructor.
data Creative_NativeAd_AppIcon = Creative_NativeAd_AppIcon
  { -- |
    height :: (Core.Maybe Core.Int32),
    -- |
    url :: (Core.Maybe Core.Text),
    -- |
    width :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Creative_NativeAd_AppIcon' with the minimum fields required to make a request.
newCreative_NativeAd_AppIcon ::
  Creative_NativeAd_AppIcon
newCreative_NativeAd_AppIcon =
  Creative_NativeAd_AppIcon
    { height = Core.Nothing,
      url = Core.Nothing,
      width = Core.Nothing
    }

instance Core.FromJSON Creative_NativeAd_AppIcon where
  parseJSON =
    Core.withObject
      "Creative_NativeAd_AppIcon"
      ( \o ->
          Creative_NativeAd_AppIcon
            Core.<$> (o Core..:? "height")
            Core.<*> (o Core..:? "url")
            Core.<*> (o Core..:? "width")
      )

instance Core.ToJSON Creative_NativeAd_AppIcon where
  toJSON Creative_NativeAd_AppIcon {..} =
    Core.object
      ( Core.catMaybes
          [ ("height" Core..=) Core.<$> height,
            ("url" Core..=) Core.<$> url,
            ("width" Core..=) Core.<$> width
          ]
      )

-- | A large image.
--
-- /See:/ 'newCreative_NativeAd_Image' smart constructor.
data Creative_NativeAd_Image = Creative_NativeAd_Image
  { -- |
    height :: (Core.Maybe Core.Int32),
    -- |
    url :: (Core.Maybe Core.Text),
    -- |
    width :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Creative_NativeAd_Image' with the minimum fields required to make a request.
newCreative_NativeAd_Image ::
  Creative_NativeAd_Image
newCreative_NativeAd_Image =
  Creative_NativeAd_Image
    { height = Core.Nothing,
      url = Core.Nothing,
      width = Core.Nothing
    }

instance Core.FromJSON Creative_NativeAd_Image where
  parseJSON =
    Core.withObject
      "Creative_NativeAd_Image"
      ( \o ->
          Creative_NativeAd_Image
            Core.<$> (o Core..:? "height")
            Core.<*> (o Core..:? "url")
            Core.<*> (o Core..:? "width")
      )

instance Core.ToJSON Creative_NativeAd_Image where
  toJSON Creative_NativeAd_Image {..} =
    Core.object
      ( Core.catMaybes
          [ ("height" Core..=) Core.<$> height,
            ("url" Core..=) Core.<$> url,
            ("width" Core..=) Core.<$> width
          ]
      )

-- | A smaller image, for the advertiser logo.
--
-- /See:/ 'newCreative_NativeAd_Logo' smart constructor.
data Creative_NativeAd_Logo = Creative_NativeAd_Logo
  { -- |
    height :: (Core.Maybe Core.Int32),
    -- |
    url :: (Core.Maybe Core.Text),
    -- |
    width :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Creative_NativeAd_Logo' with the minimum fields required to make a request.
newCreative_NativeAd_Logo ::
  Creative_NativeAd_Logo
newCreative_NativeAd_Logo =
  Creative_NativeAd_Logo
    { height = Core.Nothing,
      url = Core.Nothing,
      width = Core.Nothing
    }

instance Core.FromJSON Creative_NativeAd_Logo where
  parseJSON =
    Core.withObject
      "Creative_NativeAd_Logo"
      ( \o ->
          Creative_NativeAd_Logo
            Core.<$> (o Core..:? "height")
            Core.<*> (o Core..:? "url")
            Core.<*> (o Core..:? "width")
      )

instance Core.ToJSON Creative_NativeAd_Logo where
  toJSON Creative_NativeAd_Logo {..} =
    Core.object
      ( Core.catMaybes
          [ ("height" Core..=) Core.<$> height,
            ("url" Core..=) Core.<$> url,
            ("width" Core..=) Core.<$> width
          ]
      )

--
-- /See:/ 'newCreative_ServingRestrictionsItem' smart constructor.
data Creative_ServingRestrictionsItem = Creative_ServingRestrictionsItem
  { -- | All known contexts\/restrictions.
    contexts :: (Core.Maybe [Creative_ServingRestrictionsItem_ContextsItem]),
    -- | The reasons for disapproval within this restriction, if any. Note that not all disapproval reasons may be categorized, so it is possible for the creative to have a status of DISAPPROVED or CONDITIONALLY/APPROVED with an empty list for disapproval/reasons. In this case, please reach out to your TAM to help debug the issue.
    disapprovalReasons ::
      ( Core.Maybe
          [Creative_ServingRestrictionsItem_DisapprovalReasonsItem]
      ),
    -- | Why the creative is ineligible to serve in this context (e.g., it has been explicitly disapproved or is pending review).
    reason :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Creative_ServingRestrictionsItem' with the minimum fields required to make a request.
newCreative_ServingRestrictionsItem ::
  Creative_ServingRestrictionsItem
newCreative_ServingRestrictionsItem =
  Creative_ServingRestrictionsItem
    { contexts = Core.Nothing,
      disapprovalReasons = Core.Nothing,
      reason = Core.Nothing
    }

instance
  Core.FromJSON
    Creative_ServingRestrictionsItem
  where
  parseJSON =
    Core.withObject
      "Creative_ServingRestrictionsItem"
      ( \o ->
          Creative_ServingRestrictionsItem
            Core.<$> (o Core..:? "contexts")
            Core.<*> (o Core..:? "disapprovalReasons")
            Core.<*> (o Core..:? "reason")
      )

instance Core.ToJSON Creative_ServingRestrictionsItem where
  toJSON Creative_ServingRestrictionsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("contexts" Core..=) Core.<$> contexts,
            ("disapprovalReasons" Core..=)
              Core.<$> disapprovalReasons,
            ("reason" Core..=) Core.<$> reason
          ]
      )

--
-- /See:/ 'newCreative_ServingRestrictionsItem_ContextsItem' smart constructor.
data Creative_ServingRestrictionsItem_ContextsItem = Creative_ServingRestrictionsItem_ContextsItem
  { -- | Only set when contextType=AUCTION_TYPE. Represents the auction types this restriction applies to.
    auctionType :: (Core.Maybe [Core.Text]),
    -- | The type of context (e.g., location, platform, auction type, SSL-ness).
    contextType :: (Core.Maybe Core.Text),
    -- | Only set when contextType=LOCATION. Represents the geo criterias this restriction applies to. Impressions are considered to match a context if either the user location or publisher location matches a given geoCriteriaId.
    geoCriteriaId :: (Core.Maybe [Core.Int32]),
    -- | Only set when contextType=PLATFORM. Represents the platforms this restriction applies to.
    platform :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Creative_ServingRestrictionsItem_ContextsItem' with the minimum fields required to make a request.
newCreative_ServingRestrictionsItem_ContextsItem ::
  Creative_ServingRestrictionsItem_ContextsItem
newCreative_ServingRestrictionsItem_ContextsItem =
  Creative_ServingRestrictionsItem_ContextsItem
    { auctionType = Core.Nothing,
      contextType = Core.Nothing,
      geoCriteriaId = Core.Nothing,
      platform = Core.Nothing
    }

instance
  Core.FromJSON
    Creative_ServingRestrictionsItem_ContextsItem
  where
  parseJSON =
    Core.withObject
      "Creative_ServingRestrictionsItem_ContextsItem"
      ( \o ->
          Creative_ServingRestrictionsItem_ContextsItem
            Core.<$> (o Core..:? "auctionType")
              Core.<*> (o Core..:? "contextType")
              Core.<*> (o Core..:? "geoCriteriaId")
              Core.<*> (o Core..:? "platform")
      )

instance
  Core.ToJSON
    Creative_ServingRestrictionsItem_ContextsItem
  where
  toJSON
    Creative_ServingRestrictionsItem_ContextsItem {..} =
      Core.object
        ( Core.catMaybes
            [ ("auctionType" Core..=) Core.<$> auctionType,
              ("contextType" Core..=) Core.<$> contextType,
              ("geoCriteriaId" Core..=) Core.<$> geoCriteriaId,
              ("platform" Core..=) Core.<$> platform
            ]
        )

--
-- /See:/ 'newCreative_ServingRestrictionsItem_DisapprovalReasonsItem' smart constructor.
data Creative_ServingRestrictionsItem_DisapprovalReasonsItem = Creative_ServingRestrictionsItem_DisapprovalReasonsItem
  { -- | Additional details about the reason for disapproval.
    details :: (Core.Maybe [Core.Text]),
    -- | The categorized reason for disapproval.
    reason :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Creative_ServingRestrictionsItem_DisapprovalReasonsItem' with the minimum fields required to make a request.
newCreative_ServingRestrictionsItem_DisapprovalReasonsItem ::
  Creative_ServingRestrictionsItem_DisapprovalReasonsItem
newCreative_ServingRestrictionsItem_DisapprovalReasonsItem =
  Creative_ServingRestrictionsItem_DisapprovalReasonsItem
    { details = Core.Nothing,
      reason = Core.Nothing
    }

instance
  Core.FromJSON
    Creative_ServingRestrictionsItem_DisapprovalReasonsItem
  where
  parseJSON =
    Core.withObject
      "Creative_ServingRestrictionsItem_DisapprovalReasonsItem"
      ( \o ->
          Creative_ServingRestrictionsItem_DisapprovalReasonsItem
            Core.<$> (o Core..:? "details")
              Core.<*> (o Core..:? "reason")
      )

instance
  Core.ToJSON
    Creative_ServingRestrictionsItem_DisapprovalReasonsItem
  where
  toJSON
    Creative_ServingRestrictionsItem_DisapprovalReasonsItem {..} =
      Core.object
        ( Core.catMaybes
            [ ("details" Core..=) Core.<$> details,
              ("reason" Core..=) Core.<$> reason
            ]
        )

-- | The external deal ids associated with a creative.
--
-- /See:/ 'newCreativeDealIds' smart constructor.
data CreativeDealIds = CreativeDealIds
  { -- | A list of external deal ids and ARC approval status.
    dealStatuses :: (Core.Maybe [CreativeDealIds_DealStatusesItem]),
    -- | Resource type.
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreativeDealIds' with the minimum fields required to make a request.
newCreativeDealIds ::
  CreativeDealIds
newCreativeDealIds =
  CreativeDealIds
    { dealStatuses = Core.Nothing,
      kind = "adexchangebuyer#creativeDealIds"
    }

instance Core.FromJSON CreativeDealIds where
  parseJSON =
    Core.withObject
      "CreativeDealIds"
      ( \o ->
          CreativeDealIds
            Core.<$> (o Core..:? "dealStatuses")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "adexchangebuyer#creativeDealIds"
                     )
      )

instance Core.ToJSON CreativeDealIds where
  toJSON CreativeDealIds {..} =
    Core.object
      ( Core.catMaybes
          [ ("dealStatuses" Core..=) Core.<$> dealStatuses,
            Core.Just ("kind" Core..= kind)
          ]
      )

--
-- /See:/ 'newCreativeDealIds_DealStatusesItem' smart constructor.
data CreativeDealIds_DealStatusesItem = CreativeDealIds_DealStatusesItem
  { -- | ARC approval status.
    arcStatus :: (Core.Maybe Core.Text),
    -- | External deal ID.
    dealId :: (Core.Maybe Core.Int64),
    -- | Publisher ID.
    webPropertyId :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreativeDealIds_DealStatusesItem' with the minimum fields required to make a request.
newCreativeDealIds_DealStatusesItem ::
  CreativeDealIds_DealStatusesItem
newCreativeDealIds_DealStatusesItem =
  CreativeDealIds_DealStatusesItem
    { arcStatus = Core.Nothing,
      dealId = Core.Nothing,
      webPropertyId = Core.Nothing
    }

instance
  Core.FromJSON
    CreativeDealIds_DealStatusesItem
  where
  parseJSON =
    Core.withObject
      "CreativeDealIds_DealStatusesItem"
      ( \o ->
          CreativeDealIds_DealStatusesItem
            Core.<$> (o Core..:? "arcStatus")
            Core.<*> ( o Core..:? "dealId"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "webPropertyId")
      )

instance Core.ToJSON CreativeDealIds_DealStatusesItem where
  toJSON CreativeDealIds_DealStatusesItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("arcStatus" Core..=) Core.<$> arcStatus,
            ("dealId" Core..=) Core.. Core.AsText
              Core.<$> dealId,
            ("webPropertyId" Core..=) Core.<$> webPropertyId
          ]
      )

-- | The creatives feed lists the active creatives for the Ad Exchange buyer accounts that the user has access to. Each entry in the feed corresponds to a single creative.
--
-- /See:/ 'newCreativesList' smart constructor.
data CreativesList = CreativesList
  { -- | A list of creatives.
    items :: (Core.Maybe [Creative]),
    -- | Resource type.
    kind :: Core.Text,
    -- | Continuation token used to page through creatives. To retrieve the next page of results, set the next request\'s \"pageToken\" value to this.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreativesList' with the minimum fields required to make a request.
newCreativesList ::
  CreativesList
newCreativesList =
  CreativesList
    { items = Core.Nothing,
      kind = "adexchangebuyer#creativesList",
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON CreativesList where
  parseJSON =
    Core.withObject
      "CreativesList"
      ( \o ->
          CreativesList
            Core.<$> (o Core..:? "items")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "adexchangebuyer#creativesList"
                     )
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON CreativesList where
  toJSON CreativesList {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

--
-- /See:/ 'newDealServingMetadata' smart constructor.
data DealServingMetadata = DealServingMetadata
  { -- | True if alcohol ads are allowed for this deal (read-only). This field is only populated when querying for finalized orders using the method GetFinalizedOrderDeals
    alcoholAdsAllowed :: (Core.Maybe Core.Bool),
    -- | Tracks which parties (if any) have paused a deal. (readonly, except via PauseResumeOrderDeals action)
    dealPauseStatus :: (Core.Maybe DealServingMetadataDealPauseStatus)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DealServingMetadata' with the minimum fields required to make a request.
newDealServingMetadata ::
  DealServingMetadata
newDealServingMetadata =
  DealServingMetadata
    { alcoholAdsAllowed = Core.Nothing,
      dealPauseStatus = Core.Nothing
    }

instance Core.FromJSON DealServingMetadata where
  parseJSON =
    Core.withObject
      "DealServingMetadata"
      ( \o ->
          DealServingMetadata
            Core.<$> (o Core..:? "alcoholAdsAllowed")
            Core.<*> (o Core..:? "dealPauseStatus")
      )

instance Core.ToJSON DealServingMetadata where
  toJSON DealServingMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("alcoholAdsAllowed" Core..=)
              Core.<$> alcoholAdsAllowed,
            ("dealPauseStatus" Core..=)
              Core.<$> dealPauseStatus
          ]
      )

-- | Tracks which parties (if any) have paused a deal. The deal is considered paused if has/buyer/paused || has/seller/paused. Each of the has/buyer/paused or the has/seller/paused bits can be set independently.
--
-- /See:/ 'newDealServingMetadataDealPauseStatus' smart constructor.
data DealServingMetadataDealPauseStatus = DealServingMetadataDealPauseStatus
  { -- |
    buyerPauseReason :: (Core.Maybe Core.Text),
    -- | If the deal is paused, records which party paused the deal first.
    firstPausedBy :: (Core.Maybe Core.Text),
    -- |
    hasBuyerPaused :: (Core.Maybe Core.Bool),
    -- |
    hasSellerPaused :: (Core.Maybe Core.Bool),
    -- |
    sellerPauseReason :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DealServingMetadataDealPauseStatus' with the minimum fields required to make a request.
newDealServingMetadataDealPauseStatus ::
  DealServingMetadataDealPauseStatus
newDealServingMetadataDealPauseStatus =
  DealServingMetadataDealPauseStatus
    { buyerPauseReason = Core.Nothing,
      firstPausedBy = Core.Nothing,
      hasBuyerPaused = Core.Nothing,
      hasSellerPaused = Core.Nothing,
      sellerPauseReason = Core.Nothing
    }

instance
  Core.FromJSON
    DealServingMetadataDealPauseStatus
  where
  parseJSON =
    Core.withObject
      "DealServingMetadataDealPauseStatus"
      ( \o ->
          DealServingMetadataDealPauseStatus
            Core.<$> (o Core..:? "buyerPauseReason")
            Core.<*> (o Core..:? "firstPausedBy")
            Core.<*> (o Core..:? "hasBuyerPaused")
            Core.<*> (o Core..:? "hasSellerPaused")
            Core.<*> (o Core..:? "sellerPauseReason")
      )

instance
  Core.ToJSON
    DealServingMetadataDealPauseStatus
  where
  toJSON DealServingMetadataDealPauseStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("buyerPauseReason" Core..=)
              Core.<$> buyerPauseReason,
            ("firstPausedBy" Core..=) Core.<$> firstPausedBy,
            ("hasBuyerPaused" Core..=) Core.<$> hasBuyerPaused,
            ("hasSellerPaused" Core..=) Core.<$> hasSellerPaused,
            ("sellerPauseReason" Core..=)
              Core.<$> sellerPauseReason
          ]
      )

--
-- /See:/ 'newDealTerms' smart constructor.
data DealTerms = DealTerms
  { -- | Visibility of the URL in bid requests.
    brandingType :: (Core.Maybe Core.Text),
    -- | Indicates that this ExternalDealId exists under at least two different AdxInventoryDeals. Currently, the only case that the same ExternalDealId will exist is programmatic cross sell case.
    crossListedExternalDealIdType :: (Core.Maybe Core.Text),
    -- | Description for the proposed terms of the deal.
    description :: (Core.Maybe Core.Text),
    -- | Non-binding estimate of the estimated gross spend for this deal Can be set by buyer or seller.
    estimatedGrossSpend :: (Core.Maybe Price),
    -- | Non-binding estimate of the impressions served per day Can be set by buyer or seller.
    estimatedImpressionsPerDay :: (Core.Maybe Core.Int64),
    -- | The terms for guaranteed fixed price deals.
    guaranteedFixedPriceTerms :: (Core.Maybe DealTermsGuaranteedFixedPriceTerms),
    -- | The terms for non-guaranteed auction deals.
    nonGuaranteedAuctionTerms :: (Core.Maybe DealTermsNonGuaranteedAuctionTerms),
    -- | The terms for non-guaranteed fixed price deals.
    nonGuaranteedFixedPriceTerms :: (Core.Maybe DealTermsNonGuaranteedFixedPriceTerms),
    -- | The terms for rubicon non-guaranteed deals.
    rubiconNonGuaranteedTerms :: (Core.Maybe DealTermsRubiconNonGuaranteedTerms),
    -- | For deals with Cost Per Day billing, defines the timezone used to mark the boundaries of a day (buyer-readonly)
    sellerTimeZone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DealTerms' with the minimum fields required to make a request.
newDealTerms ::
  DealTerms
newDealTerms =
  DealTerms
    { brandingType = Core.Nothing,
      crossListedExternalDealIdType = Core.Nothing,
      description = Core.Nothing,
      estimatedGrossSpend = Core.Nothing,
      estimatedImpressionsPerDay = Core.Nothing,
      guaranteedFixedPriceTerms = Core.Nothing,
      nonGuaranteedAuctionTerms = Core.Nothing,
      nonGuaranteedFixedPriceTerms = Core.Nothing,
      rubiconNonGuaranteedTerms = Core.Nothing,
      sellerTimeZone = Core.Nothing
    }

instance Core.FromJSON DealTerms where
  parseJSON =
    Core.withObject
      "DealTerms"
      ( \o ->
          DealTerms
            Core.<$> (o Core..:? "brandingType")
            Core.<*> (o Core..:? "crossListedExternalDealIdType")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "estimatedGrossSpend")
            Core.<*> ( o Core..:? "estimatedImpressionsPerDay"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "guaranteedFixedPriceTerms")
            Core.<*> (o Core..:? "nonGuaranteedAuctionTerms")
            Core.<*> (o Core..:? "nonGuaranteedFixedPriceTerms")
            Core.<*> (o Core..:? "rubiconNonGuaranteedTerms")
            Core.<*> (o Core..:? "sellerTimeZone")
      )

instance Core.ToJSON DealTerms where
  toJSON DealTerms {..} =
    Core.object
      ( Core.catMaybes
          [ ("brandingType" Core..=) Core.<$> brandingType,
            ("crossListedExternalDealIdType" Core..=)
              Core.<$> crossListedExternalDealIdType,
            ("description" Core..=) Core.<$> description,
            ("estimatedGrossSpend" Core..=)
              Core.<$> estimatedGrossSpend,
            ("estimatedImpressionsPerDay" Core..=)
              Core.. Core.AsText
              Core.<$> estimatedImpressionsPerDay,
            ("guaranteedFixedPriceTerms" Core..=)
              Core.<$> guaranteedFixedPriceTerms,
            ("nonGuaranteedAuctionTerms" Core..=)
              Core.<$> nonGuaranteedAuctionTerms,
            ("nonGuaranteedFixedPriceTerms" Core..=)
              Core.<$> nonGuaranteedFixedPriceTerms,
            ("rubiconNonGuaranteedTerms" Core..=)
              Core.<$> rubiconNonGuaranteedTerms,
            ("sellerTimeZone" Core..=) Core.<$> sellerTimeZone
          ]
      )

--
-- /See:/ 'newDealTermsGuaranteedFixedPriceTerms' smart constructor.
data DealTermsGuaranteedFixedPriceTerms = DealTermsGuaranteedFixedPriceTerms
  { -- | External billing info for this Deal. This field is relevant when external billing info such as price has a different currency code than DFP\/AdX.
    billingInfo :: (Core.Maybe DealTermsGuaranteedFixedPriceTermsBillingInfo),
    -- | Fixed price for the specified buyer.
    fixedPrices :: (Core.Maybe [PricePerBuyer]),
    -- | Guaranteed impressions as a percentage. This is the percentage of guaranteed looks that the buyer is guaranteeing to buy.
    guaranteedImpressions :: (Core.Maybe Core.Int64),
    -- | Count of guaranteed looks. Required for deal, optional for product. For CPD deals, buyer changes to guaranteed_looks will be ignored.
    guaranteedLooks :: (Core.Maybe Core.Int64),
    -- | Count of minimum daily looks for a CPD deal. For CPD deals, buyer should negotiate on this field instead of guaranteed_looks.
    minimumDailyLooks :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DealTermsGuaranteedFixedPriceTerms' with the minimum fields required to make a request.
newDealTermsGuaranteedFixedPriceTerms ::
  DealTermsGuaranteedFixedPriceTerms
newDealTermsGuaranteedFixedPriceTerms =
  DealTermsGuaranteedFixedPriceTerms
    { billingInfo = Core.Nothing,
      fixedPrices = Core.Nothing,
      guaranteedImpressions = Core.Nothing,
      guaranteedLooks = Core.Nothing,
      minimumDailyLooks = Core.Nothing
    }

instance
  Core.FromJSON
    DealTermsGuaranteedFixedPriceTerms
  where
  parseJSON =
    Core.withObject
      "DealTermsGuaranteedFixedPriceTerms"
      ( \o ->
          DealTermsGuaranteedFixedPriceTerms
            Core.<$> (o Core..:? "billingInfo")
            Core.<*> (o Core..:? "fixedPrices")
            Core.<*> ( o Core..:? "guaranteedImpressions"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "guaranteedLooks"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "minimumDailyLooks"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance
  Core.ToJSON
    DealTermsGuaranteedFixedPriceTerms
  where
  toJSON DealTermsGuaranteedFixedPriceTerms {..} =
    Core.object
      ( Core.catMaybes
          [ ("billingInfo" Core..=) Core.<$> billingInfo,
            ("fixedPrices" Core..=) Core.<$> fixedPrices,
            ("guaranteedImpressions" Core..=) Core.. Core.AsText
              Core.<$> guaranteedImpressions,
            ("guaranteedLooks" Core..=) Core.. Core.AsText
              Core.<$> guaranteedLooks,
            ("minimumDailyLooks" Core..=) Core.. Core.AsText
              Core.<$> minimumDailyLooks
          ]
      )

--
-- /See:/ 'newDealTermsGuaranteedFixedPriceTermsBillingInfo' smart constructor.
data DealTermsGuaranteedFixedPriceTermsBillingInfo = DealTermsGuaranteedFixedPriceTermsBillingInfo
  { -- | The timestamp (in ms since epoch) when the original reservation price for the deal was first converted to DFP currency. This is used to convert the contracted price into buyer\'s currency without discrepancy.
    currencyConversionTimeMs :: (Core.Maybe Core.Int64),
    -- | The DFP line item id associated with this deal. For features like CPD, buyers can retrieve the DFP line item for billing reconciliation.
    dfpLineItemId :: (Core.Maybe Core.Int64),
    -- | The original contracted quantity (# impressions) for this deal. To ensure delivery, sometimes the publisher will book the deal with a impression buffer, such that guaranteed_looks is greater than the contracted quantity. However clients are billed using the original contracted quantity.
    originalContractedQuantity :: (Core.Maybe Core.Int64),
    -- | The original reservation price for the deal, if the currency code is different from the one used in negotiation.
    price :: (Core.Maybe Price)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DealTermsGuaranteedFixedPriceTermsBillingInfo' with the minimum fields required to make a request.
newDealTermsGuaranteedFixedPriceTermsBillingInfo ::
  DealTermsGuaranteedFixedPriceTermsBillingInfo
newDealTermsGuaranteedFixedPriceTermsBillingInfo =
  DealTermsGuaranteedFixedPriceTermsBillingInfo
    { currencyConversionTimeMs = Core.Nothing,
      dfpLineItemId = Core.Nothing,
      originalContractedQuantity = Core.Nothing,
      price = Core.Nothing
    }

instance
  Core.FromJSON
    DealTermsGuaranteedFixedPriceTermsBillingInfo
  where
  parseJSON =
    Core.withObject
      "DealTermsGuaranteedFixedPriceTermsBillingInfo"
      ( \o ->
          DealTermsGuaranteedFixedPriceTermsBillingInfo
            Core.<$> ( o Core..:? "currencyConversionTimeMs"
                         Core.<&> Core.fmap Core.fromAsText
                     )
              Core.<*> ( o Core..:? "dfpLineItemId"
                           Core.<&> Core.fmap Core.fromAsText
                       )
              Core.<*> ( o Core..:? "originalContractedQuantity"
                           Core.<&> Core.fmap Core.fromAsText
                       )
              Core.<*> (o Core..:? "price")
      )

instance
  Core.ToJSON
    DealTermsGuaranteedFixedPriceTermsBillingInfo
  where
  toJSON
    DealTermsGuaranteedFixedPriceTermsBillingInfo {..} =
      Core.object
        ( Core.catMaybes
            [ ("currencyConversionTimeMs" Core..=)
                Core.. Core.AsText
                Core.<$> currencyConversionTimeMs,
              ("dfpLineItemId" Core..=) Core.. Core.AsText
                Core.<$> dfpLineItemId,
              ("originalContractedQuantity" Core..=)
                Core.. Core.AsText
                Core.<$> originalContractedQuantity,
              ("price" Core..=) Core.<$> price
            ]
        )

--
-- /See:/ 'newDealTermsNonGuaranteedAuctionTerms' smart constructor.
data DealTermsNonGuaranteedAuctionTerms = DealTermsNonGuaranteedAuctionTerms
  { -- | True if open auction buyers are allowed to compete with invited buyers in this private auction (buyer-readonly).
    autoOptimizePrivateAuction :: (Core.Maybe Core.Bool),
    -- | Reserve price for the specified buyer.
    reservePricePerBuyers :: (Core.Maybe [PricePerBuyer])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DealTermsNonGuaranteedAuctionTerms' with the minimum fields required to make a request.
newDealTermsNonGuaranteedAuctionTerms ::
  DealTermsNonGuaranteedAuctionTerms
newDealTermsNonGuaranteedAuctionTerms =
  DealTermsNonGuaranteedAuctionTerms
    { autoOptimizePrivateAuction = Core.Nothing,
      reservePricePerBuyers = Core.Nothing
    }

instance
  Core.FromJSON
    DealTermsNonGuaranteedAuctionTerms
  where
  parseJSON =
    Core.withObject
      "DealTermsNonGuaranteedAuctionTerms"
      ( \o ->
          DealTermsNonGuaranteedAuctionTerms
            Core.<$> (o Core..:? "autoOptimizePrivateAuction")
            Core.<*> (o Core..:? "reservePricePerBuyers")
      )

instance
  Core.ToJSON
    DealTermsNonGuaranteedAuctionTerms
  where
  toJSON DealTermsNonGuaranteedAuctionTerms {..} =
    Core.object
      ( Core.catMaybes
          [ ("autoOptimizePrivateAuction" Core..=)
              Core.<$> autoOptimizePrivateAuction,
            ("reservePricePerBuyers" Core..=)
              Core.<$> reservePricePerBuyers
          ]
      )

--
-- /See:/ 'newDealTermsNonGuaranteedFixedPriceTerms' smart constructor.
newtype DealTermsNonGuaranteedFixedPriceTerms = DealTermsNonGuaranteedFixedPriceTerms
  { -- | Fixed price for the specified buyer.
    fixedPrices :: (Core.Maybe [PricePerBuyer])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DealTermsNonGuaranteedFixedPriceTerms' with the minimum fields required to make a request.
newDealTermsNonGuaranteedFixedPriceTerms ::
  DealTermsNonGuaranteedFixedPriceTerms
newDealTermsNonGuaranteedFixedPriceTerms =
  DealTermsNonGuaranteedFixedPriceTerms {fixedPrices = Core.Nothing}

instance
  Core.FromJSON
    DealTermsNonGuaranteedFixedPriceTerms
  where
  parseJSON =
    Core.withObject
      "DealTermsNonGuaranteedFixedPriceTerms"
      ( \o ->
          DealTermsNonGuaranteedFixedPriceTerms
            Core.<$> (o Core..:? "fixedPrices")
      )

instance
  Core.ToJSON
    DealTermsNonGuaranteedFixedPriceTerms
  where
  toJSON DealTermsNonGuaranteedFixedPriceTerms {..} =
    Core.object
      ( Core.catMaybes
          [("fixedPrices" Core..=) Core.<$> fixedPrices]
      )

--
-- /See:/ 'newDealTermsRubiconNonGuaranteedTerms' smart constructor.
data DealTermsRubiconNonGuaranteedTerms = DealTermsRubiconNonGuaranteedTerms
  { -- | Optional price for Rubicon priority access in the auction.
    priorityPrice :: (Core.Maybe Price),
    -- | Optional price for Rubicon standard access in the auction.
    standardPrice :: (Core.Maybe Price)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DealTermsRubiconNonGuaranteedTerms' with the minimum fields required to make a request.
newDealTermsRubiconNonGuaranteedTerms ::
  DealTermsRubiconNonGuaranteedTerms
newDealTermsRubiconNonGuaranteedTerms =
  DealTermsRubiconNonGuaranteedTerms
    { priorityPrice = Core.Nothing,
      standardPrice = Core.Nothing
    }

instance
  Core.FromJSON
    DealTermsRubiconNonGuaranteedTerms
  where
  parseJSON =
    Core.withObject
      "DealTermsRubiconNonGuaranteedTerms"
      ( \o ->
          DealTermsRubiconNonGuaranteedTerms
            Core.<$> (o Core..:? "priorityPrice")
            Core.<*> (o Core..:? "standardPrice")
      )

instance
  Core.ToJSON
    DealTermsRubiconNonGuaranteedTerms
  where
  toJSON DealTermsRubiconNonGuaranteedTerms {..} =
    Core.object
      ( Core.catMaybes
          [ ("priorityPrice" Core..=) Core.<$> priorityPrice,
            ("standardPrice" Core..=) Core.<$> standardPrice
          ]
      )

--
-- /See:/ 'newDeleteOrderDealsRequest' smart constructor.
data DeleteOrderDealsRequest = DeleteOrderDealsRequest
  { -- | List of deals to delete for a given proposal
    dealIds :: (Core.Maybe [Core.Text]),
    -- | The last known proposal revision number.
    proposalRevisionNumber :: (Core.Maybe Core.Int64),
    -- | Indicates an optional action to take on the proposal
    updateAction :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteOrderDealsRequest' with the minimum fields required to make a request.
newDeleteOrderDealsRequest ::
  DeleteOrderDealsRequest
newDeleteOrderDealsRequest =
  DeleteOrderDealsRequest
    { dealIds = Core.Nothing,
      proposalRevisionNumber = Core.Nothing,
      updateAction = Core.Nothing
    }

instance Core.FromJSON DeleteOrderDealsRequest where
  parseJSON =
    Core.withObject
      "DeleteOrderDealsRequest"
      ( \o ->
          DeleteOrderDealsRequest
            Core.<$> (o Core..:? "dealIds")
            Core.<*> ( o Core..:? "proposalRevisionNumber"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "updateAction")
      )

instance Core.ToJSON DeleteOrderDealsRequest where
  toJSON DeleteOrderDealsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("dealIds" Core..=) Core.<$> dealIds,
            ("proposalRevisionNumber" Core..=) Core.. Core.AsText
              Core.<$> proposalRevisionNumber,
            ("updateAction" Core..=) Core.<$> updateAction
          ]
      )

--
-- /See:/ 'newDeleteOrderDealsResponse' smart constructor.
data DeleteOrderDealsResponse = DeleteOrderDealsResponse
  { -- | List of deals deleted (in the same proposal as passed in the request)
    deals :: (Core.Maybe [MarketplaceDeal]),
    -- | The updated revision number for the proposal.
    proposalRevisionNumber :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteOrderDealsResponse' with the minimum fields required to make a request.
newDeleteOrderDealsResponse ::
  DeleteOrderDealsResponse
newDeleteOrderDealsResponse =
  DeleteOrderDealsResponse
    { deals = Core.Nothing,
      proposalRevisionNumber = Core.Nothing
    }

instance Core.FromJSON DeleteOrderDealsResponse where
  parseJSON =
    Core.withObject
      "DeleteOrderDealsResponse"
      ( \o ->
          DeleteOrderDealsResponse
            Core.<$> (o Core..:? "deals")
            Core.<*> ( o Core..:? "proposalRevisionNumber"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON DeleteOrderDealsResponse where
  toJSON DeleteOrderDealsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("deals" Core..=) Core.<$> deals,
            ("proposalRevisionNumber" Core..=) Core.. Core.AsText
              Core.<$> proposalRevisionNumber
          ]
      )

--
-- /See:/ 'newDeliveryControl' smart constructor.
data DeliveryControl = DeliveryControl
  { -- |
    creativeBlockingLevel :: (Core.Maybe Core.Text),
    -- |
    deliveryRateType :: (Core.Maybe Core.Text),
    -- |
    frequencyCaps :: (Core.Maybe [DeliveryControlFrequencyCap])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeliveryControl' with the minimum fields required to make a request.
newDeliveryControl ::
  DeliveryControl
newDeliveryControl =
  DeliveryControl
    { creativeBlockingLevel = Core.Nothing,
      deliveryRateType = Core.Nothing,
      frequencyCaps = Core.Nothing
    }

instance Core.FromJSON DeliveryControl where
  parseJSON =
    Core.withObject
      "DeliveryControl"
      ( \o ->
          DeliveryControl
            Core.<$> (o Core..:? "creativeBlockingLevel")
            Core.<*> (o Core..:? "deliveryRateType")
            Core.<*> (o Core..:? "frequencyCaps")
      )

instance Core.ToJSON DeliveryControl where
  toJSON DeliveryControl {..} =
    Core.object
      ( Core.catMaybes
          [ ("creativeBlockingLevel" Core..=)
              Core.<$> creativeBlockingLevel,
            ("deliveryRateType" Core..=)
              Core.<$> deliveryRateType,
            ("frequencyCaps" Core..=) Core.<$> frequencyCaps
          ]
      )

--
-- /See:/ 'newDeliveryControlFrequencyCap' smart constructor.
data DeliveryControlFrequencyCap = DeliveryControlFrequencyCap
  { -- |
    maxImpressions :: (Core.Maybe Core.Int32),
    -- |
    numTimeUnits :: (Core.Maybe Core.Int32),
    -- |
    timeUnitType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeliveryControlFrequencyCap' with the minimum fields required to make a request.
newDeliveryControlFrequencyCap ::
  DeliveryControlFrequencyCap
newDeliveryControlFrequencyCap =
  DeliveryControlFrequencyCap
    { maxImpressions = Core.Nothing,
      numTimeUnits = Core.Nothing,
      timeUnitType = Core.Nothing
    }

instance Core.FromJSON DeliveryControlFrequencyCap where
  parseJSON =
    Core.withObject
      "DeliveryControlFrequencyCap"
      ( \o ->
          DeliveryControlFrequencyCap
            Core.<$> (o Core..:? "maxImpressions")
            Core.<*> (o Core..:? "numTimeUnits")
            Core.<*> (o Core..:? "timeUnitType")
      )

instance Core.ToJSON DeliveryControlFrequencyCap where
  toJSON DeliveryControlFrequencyCap {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxImpressions" Core..=) Core.<$> maxImpressions,
            ("numTimeUnits" Core..=) Core.<$> numTimeUnits,
            ("timeUnitType" Core..=) Core.<$> timeUnitType
          ]
      )

-- | This message carries publisher provided breakdown. E.g. {dimension/type: \'COUNTRY\', [{dimension/value: {id: 1, name: \'US\'}}, {dimension_value: {id: 2, name: \'UK\'}}]}
--
-- /See:/ 'newDimension' smart constructor.
data Dimension = Dimension
  { -- |
    dimensionType :: (Core.Maybe Core.Text),
    -- |
    dimensionValues :: (Core.Maybe [DimensionDimensionValue])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Dimension' with the minimum fields required to make a request.
newDimension ::
  Dimension
newDimension =
  Dimension {dimensionType = Core.Nothing, dimensionValues = Core.Nothing}

instance Core.FromJSON Dimension where
  parseJSON =
    Core.withObject
      "Dimension"
      ( \o ->
          Dimension
            Core.<$> (o Core..:? "dimensionType")
            Core.<*> (o Core..:? "dimensionValues")
      )

instance Core.ToJSON Dimension where
  toJSON Dimension {..} =
    Core.object
      ( Core.catMaybes
          [ ("dimensionType" Core..=) Core.<$> dimensionType,
            ("dimensionValues" Core..=)
              Core.<$> dimensionValues
          ]
      )

-- | Value of the dimension.
--
-- /See:/ 'newDimensionDimensionValue' smart constructor.
data DimensionDimensionValue = DimensionDimensionValue
  { -- | Id of the dimension.
    id :: (Core.Maybe Core.Int32),
    -- | Name of the dimension mainly for debugging purposes, except for the case of CREATIVE/SIZE. For CREATIVE/SIZE, strings are used instead of ids.
    name :: (Core.Maybe Core.Text),
    -- | Percent of total impressions for a dimension type. e.g. {dimension/type: \'GENDER\', [{dimension/value: {id: 1, name: \'MALE\', percentage: 60}}]} Gender MALE is 60% of all impressions which have gender.
    percentage :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DimensionDimensionValue' with the minimum fields required to make a request.
newDimensionDimensionValue ::
  DimensionDimensionValue
newDimensionDimensionValue =
  DimensionDimensionValue
    { id = Core.Nothing,
      name = Core.Nothing,
      percentage = Core.Nothing
    }

instance Core.FromJSON DimensionDimensionValue where
  parseJSON =
    Core.withObject
      "DimensionDimensionValue"
      ( \o ->
          DimensionDimensionValue
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "percentage")
      )

instance Core.ToJSON DimensionDimensionValue where
  toJSON DimensionDimensionValue {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            ("name" Core..=) Core.<$> name,
            ("percentage" Core..=) Core.<$> percentage
          ]
      )

--
-- /See:/ 'newEditAllOrderDealsRequest' smart constructor.
data EditAllOrderDealsRequest = EditAllOrderDealsRequest
  { -- | List of deals to edit. Service may perform 3 different operations based on comparison of deals in this list vs deals already persisted in database: 1. Add new deal to proposal If a deal in this list does not exist in the proposal, the service will create a new deal and add it to the proposal. Validation will follow AddOrderDealsRequest. 2. Update existing deal in the proposal If a deal in this list already exist in the proposal, the service will update that existing deal to this new deal in the request. Validation will follow UpdateOrderDealsRequest. 3. Delete deals from the proposal (just need the id) If a existing deal in the proposal is not present in this list, the service will delete that deal from the proposal. Validation will follow DeleteOrderDealsRequest.
    deals :: (Core.Maybe [MarketplaceDeal]),
    -- | If specified, also updates the proposal in the batch transaction. This is useful when the proposal and the deals need to be updated in one transaction.
    proposal :: (Core.Maybe Proposal),
    -- | The last known revision number for the proposal.
    proposalRevisionNumber :: (Core.Maybe Core.Int64),
    -- | Indicates an optional action to take on the proposal
    updateAction :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EditAllOrderDealsRequest' with the minimum fields required to make a request.
newEditAllOrderDealsRequest ::
  EditAllOrderDealsRequest
newEditAllOrderDealsRequest =
  EditAllOrderDealsRequest
    { deals = Core.Nothing,
      proposal = Core.Nothing,
      proposalRevisionNumber = Core.Nothing,
      updateAction = Core.Nothing
    }

instance Core.FromJSON EditAllOrderDealsRequest where
  parseJSON =
    Core.withObject
      "EditAllOrderDealsRequest"
      ( \o ->
          EditAllOrderDealsRequest
            Core.<$> (o Core..:? "deals")
            Core.<*> (o Core..:? "proposal")
            Core.<*> ( o Core..:? "proposalRevisionNumber"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "updateAction")
      )

instance Core.ToJSON EditAllOrderDealsRequest where
  toJSON EditAllOrderDealsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("deals" Core..=) Core.<$> deals,
            ("proposal" Core..=) Core.<$> proposal,
            ("proposalRevisionNumber" Core..=) Core.. Core.AsText
              Core.<$> proposalRevisionNumber,
            ("updateAction" Core..=) Core.<$> updateAction
          ]
      )

--
-- /See:/ 'newEditAllOrderDealsResponse' smart constructor.
data EditAllOrderDealsResponse = EditAllOrderDealsResponse
  { -- | List of all deals in the proposal after edit.
    deals :: (Core.Maybe [MarketplaceDeal]),
    -- | The latest revision number after the update has been applied.
    orderRevisionNumber :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EditAllOrderDealsResponse' with the minimum fields required to make a request.
newEditAllOrderDealsResponse ::
  EditAllOrderDealsResponse
newEditAllOrderDealsResponse =
  EditAllOrderDealsResponse
    { deals = Core.Nothing,
      orderRevisionNumber = Core.Nothing
    }

instance Core.FromJSON EditAllOrderDealsResponse where
  parseJSON =
    Core.withObject
      "EditAllOrderDealsResponse"
      ( \o ->
          EditAllOrderDealsResponse
            Core.<$> (o Core..:? "deals")
            Core.<*> ( o Core..:? "orderRevisionNumber"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON EditAllOrderDealsResponse where
  toJSON EditAllOrderDealsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("deals" Core..=) Core.<$> deals,
            ("orderRevisionNumber" Core..=) Core.. Core.AsText
              Core.<$> orderRevisionNumber
          ]
      )

--
-- /See:/ 'newGetOffersResponse' smart constructor.
newtype GetOffersResponse = GetOffersResponse
  { -- | The returned list of products.
    products :: (Core.Maybe [Product])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetOffersResponse' with the minimum fields required to make a request.
newGetOffersResponse ::
  GetOffersResponse
newGetOffersResponse = GetOffersResponse {products = Core.Nothing}

instance Core.FromJSON GetOffersResponse where
  parseJSON =
    Core.withObject
      "GetOffersResponse"
      ( \o ->
          GetOffersResponse Core.<$> (o Core..:? "products")
      )

instance Core.ToJSON GetOffersResponse where
  toJSON GetOffersResponse {..} =
    Core.object
      ( Core.catMaybes
          [("products" Core..=) Core.<$> products]
      )

--
-- /See:/ 'newGetOrderDealsResponse' smart constructor.
newtype GetOrderDealsResponse = GetOrderDealsResponse
  { -- | List of deals for the proposal
    deals :: (Core.Maybe [MarketplaceDeal])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetOrderDealsResponse' with the minimum fields required to make a request.
newGetOrderDealsResponse ::
  GetOrderDealsResponse
newGetOrderDealsResponse = GetOrderDealsResponse {deals = Core.Nothing}

instance Core.FromJSON GetOrderDealsResponse where
  parseJSON =
    Core.withObject
      "GetOrderDealsResponse"
      ( \o ->
          GetOrderDealsResponse Core.<$> (o Core..:? "deals")
      )

instance Core.ToJSON GetOrderDealsResponse where
  toJSON GetOrderDealsResponse {..} =
    Core.object
      (Core.catMaybes [("deals" Core..=) Core.<$> deals])

--
-- /See:/ 'newGetOrderNotesResponse' smart constructor.
newtype GetOrderNotesResponse = GetOrderNotesResponse
  { -- | The list of matching notes. The notes for a proposal are ordered from oldest to newest. If the notes span multiple proposals, they will be grouped by proposal, with the notes for the most recently modified proposal appearing first.
    notes :: (Core.Maybe [MarketplaceNote])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetOrderNotesResponse' with the minimum fields required to make a request.
newGetOrderNotesResponse ::
  GetOrderNotesResponse
newGetOrderNotesResponse = GetOrderNotesResponse {notes = Core.Nothing}

instance Core.FromJSON GetOrderNotesResponse where
  parseJSON =
    Core.withObject
      "GetOrderNotesResponse"
      ( \o ->
          GetOrderNotesResponse Core.<$> (o Core..:? "notes")
      )

instance Core.ToJSON GetOrderNotesResponse where
  toJSON GetOrderNotesResponse {..} =
    Core.object
      (Core.catMaybes [("notes" Core..=) Core.<$> notes])

--
-- /See:/ 'newGetOrdersResponse' smart constructor.
newtype GetOrdersResponse = GetOrdersResponse
  { -- | The list of matching proposals.
    proposals :: (Core.Maybe [Proposal])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetOrdersResponse' with the minimum fields required to make a request.
newGetOrdersResponse ::
  GetOrdersResponse
newGetOrdersResponse = GetOrdersResponse {proposals = Core.Nothing}

instance Core.FromJSON GetOrdersResponse where
  parseJSON =
    Core.withObject
      "GetOrdersResponse"
      ( \o ->
          GetOrdersResponse Core.<$> (o Core..:? "proposals")
      )

instance Core.ToJSON GetOrdersResponse where
  toJSON GetOrdersResponse {..} =
    Core.object
      ( Core.catMaybes
          [("proposals" Core..=) Core.<$> proposals]
      )

--
-- /See:/ 'newGetPublisherProfilesByAccountIdResponse' smart constructor.
newtype GetPublisherProfilesByAccountIdResponse = GetPublisherProfilesByAccountIdResponse
  { -- | Profiles for the requested publisher
    profiles :: (Core.Maybe [PublisherProfileApiProto])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetPublisherProfilesByAccountIdResponse' with the minimum fields required to make a request.
newGetPublisherProfilesByAccountIdResponse ::
  GetPublisherProfilesByAccountIdResponse
newGetPublisherProfilesByAccountIdResponse =
  GetPublisherProfilesByAccountIdResponse {profiles = Core.Nothing}

instance
  Core.FromJSON
    GetPublisherProfilesByAccountIdResponse
  where
  parseJSON =
    Core.withObject
      "GetPublisherProfilesByAccountIdResponse"
      ( \o ->
          GetPublisherProfilesByAccountIdResponse
            Core.<$> (o Core..:? "profiles")
      )

instance
  Core.ToJSON
    GetPublisherProfilesByAccountIdResponse
  where
  toJSON GetPublisherProfilesByAccountIdResponse {..} =
    Core.object
      ( Core.catMaybes
          [("profiles" Core..=) Core.<$> profiles]
      )

-- | A proposal can contain multiple deals. A deal contains the terms and targeting information that is used for serving.
--
-- /See:/ 'newMarketplaceDeal' smart constructor.
data MarketplaceDeal = MarketplaceDeal
  { -- | Buyer private data (hidden from seller).
    buyerPrivateData :: (Core.Maybe PrivateData),
    -- | The time (ms since epoch) of the deal creation. (readonly)
    creationTimeMs :: (Core.Maybe Core.Int64),
    -- | Specifies the creative pre-approval policy (buyer-readonly)
    creativePreApprovalPolicy :: (Core.Maybe Core.Text),
    -- | Specifies whether the creative is safeFrame compatible (buyer-readonly)
    creativeSafeFrameCompatibility :: (Core.Maybe Core.Text),
    -- | A unique deal-id for the deal (readonly).
    dealId :: (Core.Maybe Core.Text),
    -- | Metadata about the serving status of this deal (readonly, writes via custom actions)
    dealServingMetadata :: (Core.Maybe DealServingMetadata),
    -- | The set of fields around delivery control that are interesting for a buyer to see but are non-negotiable. These are set by the publisher. This message is assigned an id of 100 since some day we would want to model this as a protobuf extension.
    deliveryControl :: (Core.Maybe DeliveryControl),
    -- | The external deal id assigned to this deal once the deal is finalized. This is the deal-id that shows up in serving\/reporting etc. (readonly)
    externalDealId :: (Core.Maybe Core.Text),
    -- | Proposed flight end time of the deal (ms since epoch) This will generally be stored in a granularity of a second. (updatable)
    flightEndTimeMs :: (Core.Maybe Core.Int64),
    -- | Proposed flight start time of the deal (ms since epoch) This will generally be stored in a granularity of a second. (updatable)
    flightStartTimeMs :: (Core.Maybe Core.Int64),
    -- | Description for the deal terms. (buyer-readonly)
    inventoryDescription :: (Core.Maybe Core.Text),
    -- | Indicates whether the current deal is a RFP template. RFP template is created by buyer and not based on seller created products.
    isRfpTemplate :: (Core.Maybe Core.Bool),
    -- | True, if the buyside inventory setup is complete for this deal. (readonly, except via OrderSetupCompleted action)
    isSetupComplete :: (Core.Maybe Core.Bool),
    -- | Identifies what kind of resource this is. Value: the fixed string \"adexchangebuyer#marketplaceDeal\".
    kind :: Core.Text,
    -- | The time (ms since epoch) when the deal was last updated. (readonly)
    lastUpdateTimeMs :: (Core.Maybe Core.Int64),
    -- |
    makegoodRequestedReason :: (Core.Maybe Core.Text),
    -- | The name of the deal. (updatable)
    name :: (Core.Maybe Core.Text),
    -- | The product-id from which this deal was created. (readonly, except on create)
    productId :: (Core.Maybe Core.Text),
    -- | The revision number of the product that the deal was created from (readonly, except on create)
    productRevisionNumber :: (Core.Maybe Core.Int64),
    -- | Specifies the creative source for programmatic deals, PUBLISHER means creative is provided by seller and ADVERTISR means creative is provided by buyer. (buyer-readonly)
    programmaticCreativeSource :: (Core.Maybe Core.Text),
    -- |
    proposalId :: (Core.Maybe Core.Text),
    -- | Optional Seller contact information for the deal (buyer-readonly)
    sellerContacts :: (Core.Maybe [ContactInformation]),
    -- | The shared targeting visible to buyers and sellers. Each shared targeting entity is AND\'d together. (updatable)
    sharedTargetings :: (Core.Maybe [SharedTargeting]),
    -- | The syndication product associated with the deal. (readonly, except on create)
    syndicationProduct :: (Core.Maybe Core.Text),
    -- | The negotiable terms of the deal. (updatable)
    terms :: (Core.Maybe DealTerms),
    -- |
    webPropertyCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MarketplaceDeal' with the minimum fields required to make a request.
newMarketplaceDeal ::
  MarketplaceDeal
newMarketplaceDeal =
  MarketplaceDeal
    { buyerPrivateData = Core.Nothing,
      creationTimeMs = Core.Nothing,
      creativePreApprovalPolicy = Core.Nothing,
      creativeSafeFrameCompatibility = Core.Nothing,
      dealId = Core.Nothing,
      dealServingMetadata = Core.Nothing,
      deliveryControl = Core.Nothing,
      externalDealId = Core.Nothing,
      flightEndTimeMs = Core.Nothing,
      flightStartTimeMs = Core.Nothing,
      inventoryDescription = Core.Nothing,
      isRfpTemplate = Core.Nothing,
      isSetupComplete = Core.Nothing,
      kind = "adexchangebuyer#marketplaceDeal",
      lastUpdateTimeMs = Core.Nothing,
      makegoodRequestedReason = Core.Nothing,
      name = Core.Nothing,
      productId = Core.Nothing,
      productRevisionNumber = Core.Nothing,
      programmaticCreativeSource = Core.Nothing,
      proposalId = Core.Nothing,
      sellerContacts = Core.Nothing,
      sharedTargetings = Core.Nothing,
      syndicationProduct = Core.Nothing,
      terms = Core.Nothing,
      webPropertyCode = Core.Nothing
    }

instance Core.FromJSON MarketplaceDeal where
  parseJSON =
    Core.withObject
      "MarketplaceDeal"
      ( \o ->
          MarketplaceDeal
            Core.<$> (o Core..:? "buyerPrivateData")
            Core.<*> ( o Core..:? "creationTimeMs"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "creativePreApprovalPolicy")
            Core.<*> (o Core..:? "creativeSafeFrameCompatibility")
            Core.<*> (o Core..:? "dealId")
            Core.<*> (o Core..:? "dealServingMetadata")
            Core.<*> (o Core..:? "deliveryControl")
            Core.<*> (o Core..:? "externalDealId")
            Core.<*> ( o Core..:? "flightEndTimeMs"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "flightStartTimeMs"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "inventoryDescription")
            Core.<*> (o Core..:? "isRfpTemplate")
            Core.<*> (o Core..:? "isSetupComplete")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "adexchangebuyer#marketplaceDeal"
                     )
            Core.<*> ( o Core..:? "lastUpdateTimeMs"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "makegoodRequestedReason")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "productId")
            Core.<*> ( o Core..:? "productRevisionNumber"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "programmaticCreativeSource")
            Core.<*> (o Core..:? "proposalId")
            Core.<*> (o Core..:? "sellerContacts")
            Core.<*> (o Core..:? "sharedTargetings")
            Core.<*> (o Core..:? "syndicationProduct")
            Core.<*> (o Core..:? "terms")
            Core.<*> (o Core..:? "webPropertyCode")
      )

instance Core.ToJSON MarketplaceDeal where
  toJSON MarketplaceDeal {..} =
    Core.object
      ( Core.catMaybes
          [ ("buyerPrivateData" Core..=)
              Core.<$> buyerPrivateData,
            ("creationTimeMs" Core..=) Core.. Core.AsText
              Core.<$> creationTimeMs,
            ("creativePreApprovalPolicy" Core..=)
              Core.<$> creativePreApprovalPolicy,
            ("creativeSafeFrameCompatibility" Core..=)
              Core.<$> creativeSafeFrameCompatibility,
            ("dealId" Core..=) Core.<$> dealId,
            ("dealServingMetadata" Core..=)
              Core.<$> dealServingMetadata,
            ("deliveryControl" Core..=) Core.<$> deliveryControl,
            ("externalDealId" Core..=) Core.<$> externalDealId,
            ("flightEndTimeMs" Core..=) Core.. Core.AsText
              Core.<$> flightEndTimeMs,
            ("flightStartTimeMs" Core..=) Core.. Core.AsText
              Core.<$> flightStartTimeMs,
            ("inventoryDescription" Core..=)
              Core.<$> inventoryDescription,
            ("isRfpTemplate" Core..=) Core.<$> isRfpTemplate,
            ("isSetupComplete" Core..=) Core.<$> isSetupComplete,
            Core.Just ("kind" Core..= kind),
            ("lastUpdateTimeMs" Core..=) Core.. Core.AsText
              Core.<$> lastUpdateTimeMs,
            ("makegoodRequestedReason" Core..=)
              Core.<$> makegoodRequestedReason,
            ("name" Core..=) Core.<$> name,
            ("productId" Core..=) Core.<$> productId,
            ("productRevisionNumber" Core..=) Core.. Core.AsText
              Core.<$> productRevisionNumber,
            ("programmaticCreativeSource" Core..=)
              Core.<$> programmaticCreativeSource,
            ("proposalId" Core..=) Core.<$> proposalId,
            ("sellerContacts" Core..=) Core.<$> sellerContacts,
            ("sharedTargetings" Core..=)
              Core.<$> sharedTargetings,
            ("syndicationProduct" Core..=)
              Core.<$> syndicationProduct,
            ("terms" Core..=) Core.<$> terms,
            ("webPropertyCode" Core..=)
              Core.<$> webPropertyCode
          ]
      )

--
-- /See:/ 'newMarketplaceDealParty' smart constructor.
data MarketplaceDealParty = MarketplaceDealParty
  { -- | The buyer\/seller associated with the deal. One of buyer\/seller is specified for a deal-party.
    buyer :: (Core.Maybe Buyer),
    -- | The buyer\/seller associated with the deal. One of buyer\/seller is specified for a deal party.
    seller :: (Core.Maybe Seller)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MarketplaceDealParty' with the minimum fields required to make a request.
newMarketplaceDealParty ::
  MarketplaceDealParty
newMarketplaceDealParty =
  MarketplaceDealParty {buyer = Core.Nothing, seller = Core.Nothing}

instance Core.FromJSON MarketplaceDealParty where
  parseJSON =
    Core.withObject
      "MarketplaceDealParty"
      ( \o ->
          MarketplaceDealParty
            Core.<$> (o Core..:? "buyer") Core.<*> (o Core..:? "seller")
      )

instance Core.ToJSON MarketplaceDealParty where
  toJSON MarketplaceDealParty {..} =
    Core.object
      ( Core.catMaybes
          [ ("buyer" Core..=) Core.<$> buyer,
            ("seller" Core..=) Core.<$> seller
          ]
      )

--
-- /See:/ 'newMarketplaceLabel' smart constructor.
data MarketplaceLabel = MarketplaceLabel
  { -- | The accountId of the party that created the label.
    accountId :: (Core.Maybe Core.Text),
    -- | The creation time (in ms since epoch) for the label.
    createTimeMs :: (Core.Maybe Core.Int64),
    -- | Information about the party that created the label.
    deprecatedMarketplaceDealParty :: (Core.Maybe MarketplaceDealParty),
    -- | The label to use.
    label :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MarketplaceLabel' with the minimum fields required to make a request.
newMarketplaceLabel ::
  MarketplaceLabel
newMarketplaceLabel =
  MarketplaceLabel
    { accountId = Core.Nothing,
      createTimeMs = Core.Nothing,
      deprecatedMarketplaceDealParty = Core.Nothing,
      label = Core.Nothing
    }

instance Core.FromJSON MarketplaceLabel where
  parseJSON =
    Core.withObject
      "MarketplaceLabel"
      ( \o ->
          MarketplaceLabel
            Core.<$> (o Core..:? "accountId")
            Core.<*> ( o Core..:? "createTimeMs"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "deprecatedMarketplaceDealParty")
            Core.<*> (o Core..:? "label")
      )

instance Core.ToJSON MarketplaceLabel where
  toJSON MarketplaceLabel {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.<$> accountId,
            ("createTimeMs" Core..=) Core.. Core.AsText
              Core.<$> createTimeMs,
            ("deprecatedMarketplaceDealParty" Core..=)
              Core.<$> deprecatedMarketplaceDealParty,
            ("label" Core..=) Core.<$> label
          ]
      )

-- | A proposal is associated with a bunch of notes which may optionally be associated with a deal and\/or revision number.
--
-- /See:/ 'newMarketplaceNote' smart constructor.
data MarketplaceNote = MarketplaceNote
  { -- | The role of the person (buyer\/seller) creating the note. (readonly)
    creatorRole :: (Core.Maybe Core.Text),
    -- | Notes can optionally be associated with a deal. (readonly, except on create)
    dealId :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"adexchangebuyer#marketplaceNote\".
    kind :: Core.Text,
    -- | The actual note to attach. (readonly, except on create)
    note :: (Core.Maybe Core.Text),
    -- | The unique id for the note. (readonly)
    noteId :: (Core.Maybe Core.Text),
    -- | The proposalId that a note is attached to. (readonly)
    proposalId :: (Core.Maybe Core.Text),
    -- | If the note is associated with a proposal revision number, then store that here. (readonly, except on create)
    proposalRevisionNumber :: (Core.Maybe Core.Int64),
    -- | The timestamp (ms since epoch) that this note was created. (readonly)
    timestampMs :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MarketplaceNote' with the minimum fields required to make a request.
newMarketplaceNote ::
  MarketplaceNote
newMarketplaceNote =
  MarketplaceNote
    { creatorRole = Core.Nothing,
      dealId = Core.Nothing,
      kind = "adexchangebuyer#marketplaceNote",
      note = Core.Nothing,
      noteId = Core.Nothing,
      proposalId = Core.Nothing,
      proposalRevisionNumber = Core.Nothing,
      timestampMs = Core.Nothing
    }

instance Core.FromJSON MarketplaceNote where
  parseJSON =
    Core.withObject
      "MarketplaceNote"
      ( \o ->
          MarketplaceNote
            Core.<$> (o Core..:? "creatorRole")
            Core.<*> (o Core..:? "dealId")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "adexchangebuyer#marketplaceNote"
                     )
            Core.<*> (o Core..:? "note")
            Core.<*> (o Core..:? "noteId")
            Core.<*> (o Core..:? "proposalId")
            Core.<*> ( o Core..:? "proposalRevisionNumber"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "timestampMs"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON MarketplaceNote where
  toJSON MarketplaceNote {..} =
    Core.object
      ( Core.catMaybes
          [ ("creatorRole" Core..=) Core.<$> creatorRole,
            ("dealId" Core..=) Core.<$> dealId,
            Core.Just ("kind" Core..= kind),
            ("note" Core..=) Core.<$> note,
            ("noteId" Core..=) Core.<$> noteId,
            ("proposalId" Core..=) Core.<$> proposalId,
            ("proposalRevisionNumber" Core..=) Core.. Core.AsText
              Core.<$> proposalRevisionNumber,
            ("timestampMs" Core..=) Core.. Core.AsText
              Core.<$> timestampMs
          ]
      )

--
-- /See:/ 'newMobileApplication' smart constructor.
data MobileApplication = MobileApplication
  { -- |
    appStore :: (Core.Maybe Core.Text),
    -- |
    externalAppId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MobileApplication' with the minimum fields required to make a request.
newMobileApplication ::
  MobileApplication
newMobileApplication =
  MobileApplication {appStore = Core.Nothing, externalAppId = Core.Nothing}

instance Core.FromJSON MobileApplication where
  parseJSON =
    Core.withObject
      "MobileApplication"
      ( \o ->
          MobileApplication
            Core.<$> (o Core..:? "appStore")
            Core.<*> (o Core..:? "externalAppId")
      )

instance Core.ToJSON MobileApplication where
  toJSON MobileApplication {..} =
    Core.object
      ( Core.catMaybes
          [ ("appStore" Core..=) Core.<$> appStore,
            ("externalAppId" Core..=) Core.<$> externalAppId
          ]
      )

-- | The configuration data for an Ad Exchange performance report list.
--
-- /See:/ 'newPerformanceReport' smart constructor.
data PerformanceReport = PerformanceReport
  { -- | The number of bid responses with an ad.
    bidRate :: (Core.Maybe Core.Double),
    -- | The number of bid requests sent to your bidder.
    bidRequestRate :: (Core.Maybe Core.Double),
    -- | Rate of various prefiltering statuses per match. Please refer to the callout-status-codes.txt file for different statuses.
    calloutStatusRate :: (Core.Maybe [Core.Value]),
    -- | Average QPS for cookie matcher operations.
    cookieMatcherStatusRate :: (Core.Maybe [Core.Value]),
    -- | Rate of ads with a given status. Please refer to the creative-status-codes.txt file for different statuses.
    creativeStatusRate :: (Core.Maybe [Core.Value]),
    -- | The number of bid responses that were filtered due to a policy violation or other errors.
    filteredBidRate :: (Core.Maybe Core.Double),
    -- | Average QPS for hosted match operations.
    hostedMatchStatusRate :: (Core.Maybe [Core.Value]),
    -- | The number of potential queries based on your pretargeting settings.
    inventoryMatchRate :: (Core.Maybe Core.Double),
    -- | Resource type.
    kind :: Core.Text,
    -- | The 50th percentile round trip latency(ms) as perceived from Google servers for the duration period covered by the report.
    latency50thPercentile :: (Core.Maybe Core.Double),
    -- | The 85th percentile round trip latency(ms) as perceived from Google servers for the duration period covered by the report.
    latency85thPercentile :: (Core.Maybe Core.Double),
    -- | The 95th percentile round trip latency(ms) as perceived from Google servers for the duration period covered by the report.
    latency95thPercentile :: (Core.Maybe Core.Double),
    -- | Rate of various quota account statuses per quota check.
    noQuotaInRegion :: (Core.Maybe Core.Double),
    -- | Rate of various quota account statuses per quota check.
    outOfQuota :: (Core.Maybe Core.Double),
    -- | Average QPS for pixel match requests from clients.
    pixelMatchRequests :: (Core.Maybe Core.Double),
    -- | Average QPS for pixel match responses from clients.
    pixelMatchResponses :: (Core.Maybe Core.Double),
    -- | The configured quota limits for this account.
    quotaConfiguredLimit :: (Core.Maybe Core.Double),
    -- | The throttled quota limits for this account.
    quotaThrottledLimit :: (Core.Maybe Core.Double),
    -- | The trading location of this data.
    region :: (Core.Maybe Core.Text),
    -- | The number of properly formed bid responses received by our servers within the deadline.
    successfulRequestRate :: (Core.Maybe Core.Double),
    -- | The unix timestamp of the starting time of this performance data.
    timestamp :: (Core.Maybe Core.Int64),
    -- | The number of bid responses that were unsuccessful due to timeouts, incorrect formatting, etc.
    unsuccessfulRequestRate :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PerformanceReport' with the minimum fields required to make a request.
newPerformanceReport ::
  PerformanceReport
newPerformanceReport =
  PerformanceReport
    { bidRate = Core.Nothing,
      bidRequestRate = Core.Nothing,
      calloutStatusRate = Core.Nothing,
      cookieMatcherStatusRate = Core.Nothing,
      creativeStatusRate = Core.Nothing,
      filteredBidRate = Core.Nothing,
      hostedMatchStatusRate = Core.Nothing,
      inventoryMatchRate = Core.Nothing,
      kind = "adexchangebuyer#performanceReport",
      latency50thPercentile = Core.Nothing,
      latency85thPercentile = Core.Nothing,
      latency95thPercentile = Core.Nothing,
      noQuotaInRegion = Core.Nothing,
      outOfQuota = Core.Nothing,
      pixelMatchRequests = Core.Nothing,
      pixelMatchResponses = Core.Nothing,
      quotaConfiguredLimit = Core.Nothing,
      quotaThrottledLimit = Core.Nothing,
      region = Core.Nothing,
      successfulRequestRate = Core.Nothing,
      timestamp = Core.Nothing,
      unsuccessfulRequestRate = Core.Nothing
    }

instance Core.FromJSON PerformanceReport where
  parseJSON =
    Core.withObject
      "PerformanceReport"
      ( \o ->
          PerformanceReport
            Core.<$> (o Core..:? "bidRate")
            Core.<*> (o Core..:? "bidRequestRate")
            Core.<*> (o Core..:? "calloutStatusRate")
            Core.<*> (o Core..:? "cookieMatcherStatusRate")
            Core.<*> (o Core..:? "creativeStatusRate")
            Core.<*> (o Core..:? "filteredBidRate")
            Core.<*> (o Core..:? "hostedMatchStatusRate")
            Core.<*> (o Core..:? "inventoryMatchRate")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "adexchangebuyer#performanceReport"
                     )
            Core.<*> (o Core..:? "latency50thPercentile")
            Core.<*> (o Core..:? "latency85thPercentile")
            Core.<*> (o Core..:? "latency95thPercentile")
            Core.<*> (o Core..:? "noQuotaInRegion")
            Core.<*> (o Core..:? "outOfQuota")
            Core.<*> (o Core..:? "pixelMatchRequests")
            Core.<*> (o Core..:? "pixelMatchResponses")
            Core.<*> (o Core..:? "quotaConfiguredLimit")
            Core.<*> (o Core..:? "quotaThrottledLimit")
            Core.<*> (o Core..:? "region")
            Core.<*> (o Core..:? "successfulRequestRate")
            Core.<*> ( o Core..:? "timestamp"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "unsuccessfulRequestRate")
      )

instance Core.ToJSON PerformanceReport where
  toJSON PerformanceReport {..} =
    Core.object
      ( Core.catMaybes
          [ ("bidRate" Core..=) Core.<$> bidRate,
            ("bidRequestRate" Core..=) Core.<$> bidRequestRate,
            ("calloutStatusRate" Core..=)
              Core.<$> calloutStatusRate,
            ("cookieMatcherStatusRate" Core..=)
              Core.<$> cookieMatcherStatusRate,
            ("creativeStatusRate" Core..=)
              Core.<$> creativeStatusRate,
            ("filteredBidRate" Core..=) Core.<$> filteredBidRate,
            ("hostedMatchStatusRate" Core..=)
              Core.<$> hostedMatchStatusRate,
            ("inventoryMatchRate" Core..=)
              Core.<$> inventoryMatchRate,
            Core.Just ("kind" Core..= kind),
            ("latency50thPercentile" Core..=)
              Core.<$> latency50thPercentile,
            ("latency85thPercentile" Core..=)
              Core.<$> latency85thPercentile,
            ("latency95thPercentile" Core..=)
              Core.<$> latency95thPercentile,
            ("noQuotaInRegion" Core..=) Core.<$> noQuotaInRegion,
            ("outOfQuota" Core..=) Core.<$> outOfQuota,
            ("pixelMatchRequests" Core..=)
              Core.<$> pixelMatchRequests,
            ("pixelMatchResponses" Core..=)
              Core.<$> pixelMatchResponses,
            ("quotaConfiguredLimit" Core..=)
              Core.<$> quotaConfiguredLimit,
            ("quotaThrottledLimit" Core..=)
              Core.<$> quotaThrottledLimit,
            ("region" Core..=) Core.<$> region,
            ("successfulRequestRate" Core..=)
              Core.<$> successfulRequestRate,
            ("timestamp" Core..=) Core.. Core.AsText
              Core.<$> timestamp,
            ("unsuccessfulRequestRate" Core..=)
              Core.<$> unsuccessfulRequestRate
          ]
      )

-- | The configuration data for an Ad Exchange performance report list.
--
-- /See:/ 'newPerformanceReportList' smart constructor.
data PerformanceReportList = PerformanceReportList
  { -- | Resource type.
    kind :: Core.Text,
    -- | A list of performance reports relevant for the account.
    performanceReport :: (Core.Maybe [PerformanceReport])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PerformanceReportList' with the minimum fields required to make a request.
newPerformanceReportList ::
  PerformanceReportList
newPerformanceReportList =
  PerformanceReportList
    { kind = "adexchangebuyer#performanceReportList",
      performanceReport = Core.Nothing
    }

instance Core.FromJSON PerformanceReportList where
  parseJSON =
    Core.withObject
      "PerformanceReportList"
      ( \o ->
          PerformanceReportList
            Core.<$> ( o Core..:? "kind"
                         Core..!= "adexchangebuyer#performanceReportList"
                     )
            Core.<*> (o Core..:? "performanceReport")
      )

instance Core.ToJSON PerformanceReportList where
  toJSON PerformanceReportList {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("kind" Core..= kind),
            ("performanceReport" Core..=)
              Core.<$> performanceReport
          ]
      )

--
-- /See:/ 'newPretargetingConfig' smart constructor.
data PretargetingConfig = PretargetingConfig
  { -- | The id for billing purposes, provided for reference. Leave this field blank for insert requests; the id will be generated automatically.
    billingId :: (Core.Maybe Core.Int64),
    -- | The config id; generated automatically. Leave this field blank for insert requests.
    configId :: (Core.Maybe Core.Int64),
    -- | The name of the config. Must be unique. Required for all requests.
    configName :: (Core.Maybe Core.Text),
    -- | List must contain exactly one of PRETARGETING/CREATIVE/TYPE/HTML or PRETARGETING/CREATIVE/TYPE/VIDEO.
    creativeType :: (Core.Maybe [Core.Text]),
    -- | Requests which allow one of these (width, height) pairs will match. All pairs must be supported ad dimensions.
    dimensions :: (Core.Maybe [PretargetingConfig_DimensionsItem]),
    -- | Requests with any of these content labels will not match. Values are from content-labels.txt in the downloadable files section.
    excludedContentLabels :: (Core.Maybe [Core.Int64]),
    -- | Requests containing any of these geo criteria ids will not match.
    excludedGeoCriteriaIds :: (Core.Maybe [Core.Int64]),
    -- | Requests containing any of these placements will not match.
    excludedPlacements :: (Core.Maybe [PretargetingConfig_ExcludedPlacementsItem]),
    -- | Requests containing any of these users list ids will not match.
    excludedUserLists :: (Core.Maybe [Core.Int64]),
    -- | Requests containing any of these vertical ids will not match. Values are from the publisher-verticals.txt file in the downloadable files section.
    excludedVerticals :: (Core.Maybe [Core.Int64]),
    -- | Requests containing any of these geo criteria ids will match.
    geoCriteriaIds :: (Core.Maybe [Core.Int64]),
    -- | Whether this config is active. Required for all requests.
    isActive :: (Core.Maybe Core.Bool),
    -- | The kind of the resource, i.e. \"adexchangebuyer#pretargetingConfig\".
    kind :: Core.Text,
    -- | Request containing any of these language codes will match.
    languages :: (Core.Maybe [Core.Text]),
    -- | The maximum QPS allocated to this pretargeting configuration, used for pretargeting-level QPS limits. By default, this is not set, which indicates that there is no QPS limit at the configuration level (a global or account-level limit may still be imposed).
    maximumQps :: (Core.Maybe Core.Int64),
    -- | Requests where the predicted viewability is below the specified decile will not match. E.g. if the buyer sets this value to 5, requests from slots where the predicted viewability is below 50% will not match. If the predicted viewability is unknown this field will be ignored.
    minimumViewabilityDecile :: (Core.Maybe Core.Int32),
    -- | Requests containing any of these mobile carrier ids will match. Values are from mobile-carriers.csv in the downloadable files section.
    mobileCarriers :: (Core.Maybe [Core.Int64]),
    -- | Requests containing any of these mobile device ids will match. Values are from mobile-devices.csv in the downloadable files section.
    mobileDevices :: (Core.Maybe [Core.Int64]),
    -- | Requests containing any of these mobile operating system version ids will match. Values are from mobile-os.csv in the downloadable files section.
    mobileOperatingSystemVersions :: (Core.Maybe [Core.Int64]),
    -- | Requests containing any of these placements will match.
    placements :: (Core.Maybe [PretargetingConfig_PlacementsItem]),
    -- | Requests matching any of these platforms will match. Possible values are PRETARGETING/PLATFORM/MOBILE, PRETARGETING/PLATFORM/DESKTOP, and PRETARGETING/PLATFORM/TABLET.
    platforms :: (Core.Maybe [Core.Text]),
    -- | Creative attributes should be declared here if all creatives corresponding to this pretargeting configuration have that creative attribute. Values are from pretargetable-creative-attributes.txt in the downloadable files section.
    supportedCreativeAttributes :: (Core.Maybe [Core.Int64]),
    -- | Requests containing the specified type of user data will match. Possible values are HOSTED/MATCH/DATA, which means the request is cookie-targetable and has a match in the buyer\'s hosted match table, and COOKIE/OR/IDFA, which means the request has either a targetable cookie or an iOS IDFA.
    userIdentifierDataRequired :: (Core.Maybe [Core.Text]),
    -- | Requests containing any of these user list ids will match.
    userLists :: (Core.Maybe [Core.Int64]),
    -- | Requests that allow any of these vendor ids will match. Values are from vendors.txt in the downloadable files section.
    vendorTypes :: (Core.Maybe [Core.Int64]),
    -- | Requests containing any of these vertical ids will match.
    verticals :: (Core.Maybe [Core.Int64]),
    -- | Video requests satisfying any of these player size constraints will match.
    videoPlayerSizes :: (Core.Maybe [PretargetingConfig_VideoPlayerSizesItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PretargetingConfig' with the minimum fields required to make a request.
newPretargetingConfig ::
  PretargetingConfig
newPretargetingConfig =
  PretargetingConfig
    { billingId = Core.Nothing,
      configId = Core.Nothing,
      configName = Core.Nothing,
      creativeType = Core.Nothing,
      dimensions = Core.Nothing,
      excludedContentLabels = Core.Nothing,
      excludedGeoCriteriaIds = Core.Nothing,
      excludedPlacements = Core.Nothing,
      excludedUserLists = Core.Nothing,
      excludedVerticals = Core.Nothing,
      geoCriteriaIds = Core.Nothing,
      isActive = Core.Nothing,
      kind = "adexchangebuyer#pretargetingConfig",
      languages = Core.Nothing,
      maximumQps = Core.Nothing,
      minimumViewabilityDecile = Core.Nothing,
      mobileCarriers = Core.Nothing,
      mobileDevices = Core.Nothing,
      mobileOperatingSystemVersions = Core.Nothing,
      placements = Core.Nothing,
      platforms = Core.Nothing,
      supportedCreativeAttributes = Core.Nothing,
      userIdentifierDataRequired = Core.Nothing,
      userLists = Core.Nothing,
      vendorTypes = Core.Nothing,
      verticals = Core.Nothing,
      videoPlayerSizes = Core.Nothing
    }

instance Core.FromJSON PretargetingConfig where
  parseJSON =
    Core.withObject
      "PretargetingConfig"
      ( \o ->
          PretargetingConfig
            Core.<$> ( o Core..:? "billingId"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "configId"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "configName")
            Core.<*> (o Core..:? "creativeType")
            Core.<*> (o Core..:? "dimensions")
            Core.<*> ( o Core..:? "excludedContentLabels"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
            Core.<*> ( o Core..:? "excludedGeoCriteriaIds"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
            Core.<*> (o Core..:? "excludedPlacements")
            Core.<*> ( o Core..:? "excludedUserLists"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
            Core.<*> ( o Core..:? "excludedVerticals"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
            Core.<*> ( o Core..:? "geoCriteriaIds"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
            Core.<*> (o Core..:? "isActive")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "adexchangebuyer#pretargetingConfig"
                     )
            Core.<*> (o Core..:? "languages")
            Core.<*> ( o Core..:? "maximumQps"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "minimumViewabilityDecile")
            Core.<*> ( o Core..:? "mobileCarriers"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
            Core.<*> ( o Core..:? "mobileDevices"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
            Core.<*> ( o Core..:? "mobileOperatingSystemVersions"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
            Core.<*> (o Core..:? "placements")
            Core.<*> (o Core..:? "platforms")
            Core.<*> ( o Core..:? "supportedCreativeAttributes"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
            Core.<*> (o Core..:? "userIdentifierDataRequired")
            Core.<*> ( o Core..:? "userLists"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
            Core.<*> ( o Core..:? "vendorTypes"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
            Core.<*> ( o Core..:? "verticals"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
            Core.<*> (o Core..:? "videoPlayerSizes")
      )

instance Core.ToJSON PretargetingConfig where
  toJSON PretargetingConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("billingId" Core..=) Core.. Core.AsText
              Core.<$> billingId,
            ("configId" Core..=) Core.. Core.AsText
              Core.<$> configId,
            ("configName" Core..=) Core.<$> configName,
            ("creativeType" Core..=) Core.<$> creativeType,
            ("dimensions" Core..=) Core.<$> dimensions,
            ("excludedContentLabels" Core..=)
              Core.. Core.fmap Core.AsText
              Core.<$> excludedContentLabels,
            ("excludedGeoCriteriaIds" Core..=)
              Core.. Core.fmap Core.AsText
              Core.<$> excludedGeoCriteriaIds,
            ("excludedPlacements" Core..=)
              Core.<$> excludedPlacements,
            ("excludedUserLists" Core..=)
              Core.. Core.fmap Core.AsText
              Core.<$> excludedUserLists,
            ("excludedVerticals" Core..=)
              Core.. Core.fmap Core.AsText
              Core.<$> excludedVerticals,
            ("geoCriteriaIds" Core..=)
              Core.. Core.fmap Core.AsText
              Core.<$> geoCriteriaIds,
            ("isActive" Core..=) Core.<$> isActive,
            Core.Just ("kind" Core..= kind),
            ("languages" Core..=) Core.<$> languages,
            ("maximumQps" Core..=) Core.. Core.AsText
              Core.<$> maximumQps,
            ("minimumViewabilityDecile" Core..=)
              Core.<$> minimumViewabilityDecile,
            ("mobileCarriers" Core..=)
              Core.. Core.fmap Core.AsText
              Core.<$> mobileCarriers,
            ("mobileDevices" Core..=)
              Core.. Core.fmap Core.AsText
              Core.<$> mobileDevices,
            ("mobileOperatingSystemVersions" Core..=)
              Core.. Core.fmap Core.AsText
              Core.<$> mobileOperatingSystemVersions,
            ("placements" Core..=) Core.<$> placements,
            ("platforms" Core..=) Core.<$> platforms,
            ("supportedCreativeAttributes" Core..=)
              Core.. Core.fmap Core.AsText
              Core.<$> supportedCreativeAttributes,
            ("userIdentifierDataRequired" Core..=)
              Core.<$> userIdentifierDataRequired,
            ("userLists" Core..=) Core.. Core.fmap Core.AsText
              Core.<$> userLists,
            ("vendorTypes" Core..=) Core.. Core.fmap Core.AsText
              Core.<$> vendorTypes,
            ("verticals" Core..=) Core.. Core.fmap Core.AsText
              Core.<$> verticals,
            ("videoPlayerSizes" Core..=)
              Core.<$> videoPlayerSizes
          ]
      )

--
-- /See:/ 'newPretargetingConfig_DimensionsItem' smart constructor.
data PretargetingConfig_DimensionsItem = PretargetingConfig_DimensionsItem
  { -- | Height in pixels.
    height :: (Core.Maybe Core.Int64),
    -- | Width in pixels.
    width :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PretargetingConfig_DimensionsItem' with the minimum fields required to make a request.
newPretargetingConfig_DimensionsItem ::
  PretargetingConfig_DimensionsItem
newPretargetingConfig_DimensionsItem =
  PretargetingConfig_DimensionsItem
    { height = Core.Nothing,
      width = Core.Nothing
    }

instance
  Core.FromJSON
    PretargetingConfig_DimensionsItem
  where
  parseJSON =
    Core.withObject
      "PretargetingConfig_DimensionsItem"
      ( \o ->
          PretargetingConfig_DimensionsItem
            Core.<$> ( o Core..:? "height"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "width"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance
  Core.ToJSON
    PretargetingConfig_DimensionsItem
  where
  toJSON PretargetingConfig_DimensionsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("height" Core..=) Core.. Core.AsText
              Core.<$> height,
            ("width" Core..=) Core.. Core.AsText Core.<$> width
          ]
      )

--
-- /See:/ 'newPretargetingConfig_ExcludedPlacementsItem' smart constructor.
data PretargetingConfig_ExcludedPlacementsItem = PretargetingConfig_ExcludedPlacementsItem
  { -- | The value of the placement. Interpretation depends on the placement type, e.g. URL for a site placement, channel name for a channel placement, app id for a mobile app placement.
    token :: (Core.Maybe Core.Text),
    -- | The type of the placement.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PretargetingConfig_ExcludedPlacementsItem' with the minimum fields required to make a request.
newPretargetingConfig_ExcludedPlacementsItem ::
  PretargetingConfig_ExcludedPlacementsItem
newPretargetingConfig_ExcludedPlacementsItem =
  PretargetingConfig_ExcludedPlacementsItem
    { token = Core.Nothing,
      type' = Core.Nothing
    }

instance
  Core.FromJSON
    PretargetingConfig_ExcludedPlacementsItem
  where
  parseJSON =
    Core.withObject
      "PretargetingConfig_ExcludedPlacementsItem"
      ( \o ->
          PretargetingConfig_ExcludedPlacementsItem
            Core.<$> (o Core..:? "token") Core.<*> (o Core..:? "type")
      )

instance
  Core.ToJSON
    PretargetingConfig_ExcludedPlacementsItem
  where
  toJSON PretargetingConfig_ExcludedPlacementsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("token" Core..=) Core.<$> token,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newPretargetingConfig_PlacementsItem' smart constructor.
data PretargetingConfig_PlacementsItem = PretargetingConfig_PlacementsItem
  { -- | The value of the placement. Interpretation depends on the placement type, e.g. URL for a site placement, channel name for a channel placement, app id for a mobile app placement.
    token :: (Core.Maybe Core.Text),
    -- | The type of the placement.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PretargetingConfig_PlacementsItem' with the minimum fields required to make a request.
newPretargetingConfig_PlacementsItem ::
  PretargetingConfig_PlacementsItem
newPretargetingConfig_PlacementsItem =
  PretargetingConfig_PlacementsItem {token = Core.Nothing, type' = Core.Nothing}

instance
  Core.FromJSON
    PretargetingConfig_PlacementsItem
  where
  parseJSON =
    Core.withObject
      "PretargetingConfig_PlacementsItem"
      ( \o ->
          PretargetingConfig_PlacementsItem
            Core.<$> (o Core..:? "token") Core.<*> (o Core..:? "type")
      )

instance
  Core.ToJSON
    PretargetingConfig_PlacementsItem
  where
  toJSON PretargetingConfig_PlacementsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("token" Core..=) Core.<$> token,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newPretargetingConfig_VideoPlayerSizesItem' smart constructor.
data PretargetingConfig_VideoPlayerSizesItem = PretargetingConfig_VideoPlayerSizesItem
  { -- | The type of aspect ratio. Leave this field blank to match all aspect ratios.
    aspectRatio :: (Core.Maybe Core.Text),
    -- | The minimum player height in pixels. Leave this field blank to match any player height.
    minHeight :: (Core.Maybe Core.Int64),
    -- | The minimum player width in pixels. Leave this field blank to match any player width.
    minWidth :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PretargetingConfig_VideoPlayerSizesItem' with the minimum fields required to make a request.
newPretargetingConfig_VideoPlayerSizesItem ::
  PretargetingConfig_VideoPlayerSizesItem
newPretargetingConfig_VideoPlayerSizesItem =
  PretargetingConfig_VideoPlayerSizesItem
    { aspectRatio = Core.Nothing,
      minHeight = Core.Nothing,
      minWidth = Core.Nothing
    }

instance
  Core.FromJSON
    PretargetingConfig_VideoPlayerSizesItem
  where
  parseJSON =
    Core.withObject
      "PretargetingConfig_VideoPlayerSizesItem"
      ( \o ->
          PretargetingConfig_VideoPlayerSizesItem
            Core.<$> (o Core..:? "aspectRatio")
            Core.<*> ( o Core..:? "minHeight"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "minWidth"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance
  Core.ToJSON
    PretargetingConfig_VideoPlayerSizesItem
  where
  toJSON PretargetingConfig_VideoPlayerSizesItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("aspectRatio" Core..=) Core.<$> aspectRatio,
            ("minHeight" Core..=) Core.. Core.AsText
              Core.<$> minHeight,
            ("minWidth" Core..=) Core.. Core.AsText
              Core.<$> minWidth
          ]
      )

--
-- /See:/ 'newPretargetingConfigList' smart constructor.
data PretargetingConfigList = PretargetingConfigList
  { -- | A list of pretargeting configs
    items :: (Core.Maybe [PretargetingConfig]),
    -- | Resource type.
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PretargetingConfigList' with the minimum fields required to make a request.
newPretargetingConfigList ::
  PretargetingConfigList
newPretargetingConfigList =
  PretargetingConfigList
    { items = Core.Nothing,
      kind = "adexchangebuyer#pretargetingConfigList"
    }

instance Core.FromJSON PretargetingConfigList where
  parseJSON =
    Core.withObject
      "PretargetingConfigList"
      ( \o ->
          PretargetingConfigList
            Core.<$> (o Core..:? "items")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "adexchangebuyer#pretargetingConfigList"
                     )
      )

instance Core.ToJSON PretargetingConfigList where
  toJSON PretargetingConfigList {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind)
          ]
      )

--
-- /See:/ 'newPrice' smart constructor.
data Price = Price
  { -- | The price value in micros.
    amountMicros :: (Core.Maybe Core.Double),
    -- | The currency code for the price.
    currencyCode :: (Core.Maybe Core.Text),
    -- | In case of CPD deals, the expected CPM in micros.
    expectedCpmMicros :: (Core.Maybe Core.Double),
    -- | The pricing type for the deal\/product.
    pricingType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Price' with the minimum fields required to make a request.
newPrice ::
  Price
newPrice =
  Price
    { amountMicros = Core.Nothing,
      currencyCode = Core.Nothing,
      expectedCpmMicros = Core.Nothing,
      pricingType = Core.Nothing
    }

instance Core.FromJSON Price where
  parseJSON =
    Core.withObject
      "Price"
      ( \o ->
          Price
            Core.<$> (o Core..:? "amountMicros")
            Core.<*> (o Core..:? "currencyCode")
            Core.<*> (o Core..:? "expectedCpmMicros")
            Core.<*> (o Core..:? "pricingType")
      )

instance Core.ToJSON Price where
  toJSON Price {..} =
    Core.object
      ( Core.catMaybes
          [ ("amountMicros" Core..=) Core.<$> amountMicros,
            ("currencyCode" Core..=) Core.<$> currencyCode,
            ("expectedCpmMicros" Core..=)
              Core.<$> expectedCpmMicros,
            ("pricingType" Core..=) Core.<$> pricingType
          ]
      )

-- | Used to specify pricing rules for buyers. Each PricePerBuyer in a product can become [0,1] deals. To check if there is a PricePerBuyer for a particular buyer we look for the most specific matching rule - we first look for a rule matching the buyer and otherwise look for a matching rule where no buyer is set.
--
-- /See:/ 'newPricePerBuyer' smart constructor.
data PricePerBuyer = PricePerBuyer
  { -- | Optional access type for this buyer.
    auctionTier :: (Core.Maybe Core.Text),
    -- | Reference to the buyer that will get billed.
    billedBuyer :: (Core.Maybe Buyer),
    -- | The buyer who will pay this price. If unset, all buyers can pay this price (if the advertisers match, and there\'s no more specific rule matching the buyer).
    buyer :: (Core.Maybe Buyer),
    -- | The specified price
    price :: (Core.Maybe Price)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PricePerBuyer' with the minimum fields required to make a request.
newPricePerBuyer ::
  PricePerBuyer
newPricePerBuyer =
  PricePerBuyer
    { auctionTier = Core.Nothing,
      billedBuyer = Core.Nothing,
      buyer = Core.Nothing,
      price = Core.Nothing
    }

instance Core.FromJSON PricePerBuyer where
  parseJSON =
    Core.withObject
      "PricePerBuyer"
      ( \o ->
          PricePerBuyer
            Core.<$> (o Core..:? "auctionTier")
            Core.<*> (o Core..:? "billedBuyer")
            Core.<*> (o Core..:? "buyer")
            Core.<*> (o Core..:? "price")
      )

instance Core.ToJSON PricePerBuyer where
  toJSON PricePerBuyer {..} =
    Core.object
      ( Core.catMaybes
          [ ("auctionTier" Core..=) Core.<$> auctionTier,
            ("billedBuyer" Core..=) Core.<$> billedBuyer,
            ("buyer" Core..=) Core.<$> buyer,
            ("price" Core..=) Core.<$> price
          ]
      )

--
-- /See:/ 'newPrivateData' smart constructor.
data PrivateData = PrivateData
  { -- |
    referenceId :: (Core.Maybe Core.Text),
    -- |
    referencePayload :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PrivateData' with the minimum fields required to make a request.
newPrivateData ::
  PrivateData
newPrivateData =
  PrivateData {referenceId = Core.Nothing, referencePayload = Core.Nothing}

instance Core.FromJSON PrivateData where
  parseJSON =
    Core.withObject
      "PrivateData"
      ( \o ->
          PrivateData
            Core.<$> (o Core..:? "referenceId")
            Core.<*> (o Core..:? "referencePayload")
      )

instance Core.ToJSON PrivateData where
  toJSON PrivateData {..} =
    Core.object
      ( Core.catMaybes
          [ ("referenceId" Core..=) Core.<$> referenceId,
            ("referencePayload" Core..=)
              Core.<$> referencePayload
          ]
      )

-- | A product is segment of inventory that a seller wishes to sell. It is associated with certain terms and targeting information which helps buyer know more about the inventory. Each field in a product can have one of the following setting:
--
-- (readonly) - It is an error to try and set this field. (buyer-readonly) - Only the seller can set this field. (seller-readonly) - Only the buyer can set this field. (updatable) - The field is updatable at all times by either buyer or the seller.
--
-- /See:/ 'newProduct' smart constructor.
data Product = Product
  { -- | The billed buyer corresponding to the buyer that created the offer. (readonly, except on create)
    billedBuyer :: (Core.Maybe Buyer),
    -- | The buyer that created the offer if this is a buyer initiated offer (readonly, except on create)
    buyer :: (Core.Maybe Buyer),
    -- | Creation time in ms. since epoch (readonly)
    creationTimeMs :: (Core.Maybe Core.Int64),
    -- | Optional contact information for the creator of this product. (buyer-readonly)
    creatorContacts :: (Core.Maybe [ContactInformation]),
    -- | The role that created the offer. Set to BUYER for buyer initiated offers.
    creatorRole :: (Core.Maybe Core.Text),
    -- | The set of fields around delivery control that are interesting for a buyer to see but are non-negotiable. These are set by the publisher. This message is assigned an id of 100 since some day we would want to model this as a protobuf extension.
    deliveryControl :: (Core.Maybe DeliveryControl),
    -- | The proposed end time for the deal (ms since epoch) (buyer-readonly)
    flightEndTimeMs :: (Core.Maybe Core.Int64),
    -- | Inventory availability dates. (times are in ms since epoch) The granularity is generally in the order of seconds. (buyer-readonly)
    flightStartTimeMs :: (Core.Maybe Core.Int64),
    -- | If the creator has already signed off on the product, then the buyer can finalize the deal by accepting the product as is. When copying to a proposal, if any of the terms are changed, then auto_finalize is automatically set to false.
    hasCreatorSignedOff :: (Core.Maybe Core.Bool),
    -- | What exchange will provide this inventory (readonly, except on create).
    inventorySource :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"adexchangebuyer#product\".
    kind :: Core.Text,
    -- | Optional List of labels for the product (optional, buyer-readonly).
    labels :: (Core.Maybe [MarketplaceLabel]),
    -- | Time of last update in ms. since epoch (readonly)
    lastUpdateTimeMs :: (Core.Maybe Core.Int64),
    -- | Optional legacy offer id if this offer is a preferred deal offer.
    legacyOfferId :: (Core.Maybe Core.Text),
    -- | Marketplace publisher profile Id. This Id differs from the regular publisher/profile/id in that 1. This is a new id, the old Id will be deprecated in 2017. 2. This id uniquely identifies a publisher profile by itself.
    marketplacePublisherProfileId :: (Core.Maybe Core.Text),
    -- | The name for this product as set by the seller. (buyer-readonly)
    name :: (Core.Maybe Core.Text),
    -- | Optional private auction id if this offer is a private auction offer.
    privateAuctionId :: (Core.Maybe Core.Text),
    -- | The unique id for the product (readonly)
    productId :: (Core.Maybe Core.Text),
    -- | Id of the publisher profile for a given seller. A (seller.account/id, publisher/profile_id) pair uniquely identifies a publisher profile. Buyers can call the PublisherProfiles::List endpoint to get a list of publisher profiles for a given seller.
    publisherProfileId :: (Core.Maybe Core.Text),
    -- | Publisher self-provided forecast information.
    publisherProvidedForecast :: (Core.Maybe PublisherProvidedForecast),
    -- | The revision number of the product. (readonly)
    revisionNumber :: (Core.Maybe Core.Int64),
    -- | Information about the seller that created this product (readonly, except on create)
    seller :: (Core.Maybe Seller),
    -- | Targeting that is shared between the buyer and the seller. Each targeting criteria has a specified key and for each key there is a list of inclusion value or exclusion values. (buyer-readonly)
    sharedTargetings :: (Core.Maybe [SharedTargeting]),
    -- | The state of the product. (buyer-readonly)
    state :: (Core.Maybe Core.Text),
    -- | The syndication product associated with the deal. (readonly, except on create)
    syndicationProduct :: (Core.Maybe Core.Text),
    -- | The negotiable terms of the deal (buyer-readonly)
    terms :: (Core.Maybe DealTerms),
    -- | The web property code for the seller. This field is meant to be copied over as is when creating deals.
    webPropertyCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Product' with the minimum fields required to make a request.
newProduct ::
  Product
newProduct =
  Product
    { billedBuyer = Core.Nothing,
      buyer = Core.Nothing,
      creationTimeMs = Core.Nothing,
      creatorContacts = Core.Nothing,
      creatorRole = Core.Nothing,
      deliveryControl = Core.Nothing,
      flightEndTimeMs = Core.Nothing,
      flightStartTimeMs = Core.Nothing,
      hasCreatorSignedOff = Core.Nothing,
      inventorySource = Core.Nothing,
      kind = "adexchangebuyer#product",
      labels = Core.Nothing,
      lastUpdateTimeMs = Core.Nothing,
      legacyOfferId = Core.Nothing,
      marketplacePublisherProfileId = Core.Nothing,
      name = Core.Nothing,
      privateAuctionId = Core.Nothing,
      productId = Core.Nothing,
      publisherProfileId = Core.Nothing,
      publisherProvidedForecast = Core.Nothing,
      revisionNumber = Core.Nothing,
      seller = Core.Nothing,
      sharedTargetings = Core.Nothing,
      state = Core.Nothing,
      syndicationProduct = Core.Nothing,
      terms = Core.Nothing,
      webPropertyCode = Core.Nothing
    }

instance Core.FromJSON Product where
  parseJSON =
    Core.withObject
      "Product"
      ( \o ->
          Product
            Core.<$> (o Core..:? "billedBuyer")
            Core.<*> (o Core..:? "buyer")
            Core.<*> ( o Core..:? "creationTimeMs"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "creatorContacts")
            Core.<*> (o Core..:? "creatorRole")
            Core.<*> (o Core..:? "deliveryControl")
            Core.<*> ( o Core..:? "flightEndTimeMs"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "flightStartTimeMs"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "hasCreatorSignedOff")
            Core.<*> (o Core..:? "inventorySource")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "adexchangebuyer#product"
                     )
            Core.<*> (o Core..:? "labels")
            Core.<*> ( o Core..:? "lastUpdateTimeMs"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "legacyOfferId")
            Core.<*> (o Core..:? "marketplacePublisherProfileId")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "privateAuctionId")
            Core.<*> (o Core..:? "productId")
            Core.<*> (o Core..:? "publisherProfileId")
            Core.<*> (o Core..:? "publisherProvidedForecast")
            Core.<*> ( o Core..:? "revisionNumber"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "seller")
            Core.<*> (o Core..:? "sharedTargetings")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "syndicationProduct")
            Core.<*> (o Core..:? "terms")
            Core.<*> (o Core..:? "webPropertyCode")
      )

instance Core.ToJSON Product where
  toJSON Product {..} =
    Core.object
      ( Core.catMaybes
          [ ("billedBuyer" Core..=) Core.<$> billedBuyer,
            ("buyer" Core..=) Core.<$> buyer,
            ("creationTimeMs" Core..=) Core.. Core.AsText
              Core.<$> creationTimeMs,
            ("creatorContacts" Core..=) Core.<$> creatorContacts,
            ("creatorRole" Core..=) Core.<$> creatorRole,
            ("deliveryControl" Core..=) Core.<$> deliveryControl,
            ("flightEndTimeMs" Core..=) Core.. Core.AsText
              Core.<$> flightEndTimeMs,
            ("flightStartTimeMs" Core..=) Core.. Core.AsText
              Core.<$> flightStartTimeMs,
            ("hasCreatorSignedOff" Core..=)
              Core.<$> hasCreatorSignedOff,
            ("inventorySource" Core..=) Core.<$> inventorySource,
            Core.Just ("kind" Core..= kind),
            ("labels" Core..=) Core.<$> labels,
            ("lastUpdateTimeMs" Core..=) Core.. Core.AsText
              Core.<$> lastUpdateTimeMs,
            ("legacyOfferId" Core..=) Core.<$> legacyOfferId,
            ("marketplacePublisherProfileId" Core..=)
              Core.<$> marketplacePublisherProfileId,
            ("name" Core..=) Core.<$> name,
            ("privateAuctionId" Core..=)
              Core.<$> privateAuctionId,
            ("productId" Core..=) Core.<$> productId,
            ("publisherProfileId" Core..=)
              Core.<$> publisherProfileId,
            ("publisherProvidedForecast" Core..=)
              Core.<$> publisherProvidedForecast,
            ("revisionNumber" Core..=) Core.. Core.AsText
              Core.<$> revisionNumber,
            ("seller" Core..=) Core.<$> seller,
            ("sharedTargetings" Core..=)
              Core.<$> sharedTargetings,
            ("state" Core..=) Core.<$> state,
            ("syndicationProduct" Core..=)
              Core.<$> syndicationProduct,
            ("terms" Core..=) Core.<$> terms,
            ("webPropertyCode" Core..=)
              Core.<$> webPropertyCode
          ]
      )

-- | Represents a proposal in the marketplace. A proposal is the unit of negotiation between a seller and a buyer and contains deals which are served. Each field in a proposal can have one of the following setting:
--
-- (readonly) - It is an error to try and set this field. (buyer-readonly) - Only the seller can set this field. (seller-readonly) - Only the buyer can set this field. (updatable) - The field is updatable at all times by either buyer or the seller.
--
-- /See:/ 'newProposal' smart constructor.
data Proposal = Proposal
  { -- | Reference to the buyer that will get billed for this proposal. (readonly)
    billedBuyer :: (Core.Maybe Buyer),
    -- | Reference to the buyer on the proposal. (readonly, except on create)
    buyer :: (Core.Maybe Buyer),
    -- | Optional contact information of the buyer. (seller-readonly)
    buyerContacts :: (Core.Maybe [ContactInformation]),
    -- | Private data for buyer. (hidden from seller).
    buyerPrivateData :: (Core.Maybe PrivateData),
    -- | IDs of DBM advertisers permission to this proposal.
    dbmAdvertiserIds :: (Core.Maybe [Core.Text]),
    -- | When an proposal is in an accepted state, indicates whether the buyer has signed off. Once both sides have signed off on a deal, the proposal can be finalized by the seller. (seller-readonly)
    hasBuyerSignedOff :: (Core.Maybe Core.Bool),
    -- | When an proposal is in an accepted state, indicates whether the buyer has signed off Once both sides have signed off on a deal, the proposal can be finalized by the seller. (buyer-readonly)
    hasSellerSignedOff :: (Core.Maybe Core.Bool),
    -- | What exchange will provide this inventory (readonly, except on create).
    inventorySource :: (Core.Maybe Core.Text),
    -- | True if the proposal is being renegotiated (readonly).
    isRenegotiating :: (Core.Maybe Core.Bool),
    -- | True, if the buyside inventory setup is complete for this proposal. (readonly, except via OrderSetupCompleted action) Deprecated in favor of deal level setup complete flag.
    isSetupComplete :: (Core.Maybe Core.Bool),
    -- | Identifies what kind of resource this is. Value: the fixed string \"adexchangebuyer#proposal\".
    kind :: Core.Text,
    -- | List of labels associated with the proposal. (readonly)
    labels :: (Core.Maybe [MarketplaceLabel]),
    -- | The role of the last user that either updated the proposal or left a comment. (readonly)
    lastUpdaterOrCommentorRole :: (Core.Maybe Core.Text),
    -- | The name for the proposal (updatable)
    name :: (Core.Maybe Core.Text),
    -- | Optional negotiation id if this proposal is a preferred deal proposal.
    negotiationId :: (Core.Maybe Core.Text),
    -- | Indicates whether the buyer\/seller created the proposal.(readonly)
    originatorRole :: (Core.Maybe Core.Text),
    -- | Optional private auction id if this proposal is a private auction proposal.
    privateAuctionId :: (Core.Maybe Core.Text),
    -- | The unique id of the proposal. (readonly).
    proposalId :: (Core.Maybe Core.Text),
    -- | The current state of the proposal. (readonly)
    proposalState :: (Core.Maybe Core.Text),
    -- | The revision number for the proposal (readonly).
    revisionNumber :: (Core.Maybe Core.Int64),
    -- | The time (ms since epoch) when the proposal was last revised (readonly).
    revisionTimeMs :: (Core.Maybe Core.Int64),
    -- | Reference to the seller on the proposal. (readonly, except on create)
    seller :: (Core.Maybe Seller),
    -- | Optional contact information of the seller (buyer-readonly).
    sellerContacts :: (Core.Maybe [ContactInformation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Proposal' with the minimum fields required to make a request.
newProposal ::
  Proposal
newProposal =
  Proposal
    { billedBuyer = Core.Nothing,
      buyer = Core.Nothing,
      buyerContacts = Core.Nothing,
      buyerPrivateData = Core.Nothing,
      dbmAdvertiserIds = Core.Nothing,
      hasBuyerSignedOff = Core.Nothing,
      hasSellerSignedOff = Core.Nothing,
      inventorySource = Core.Nothing,
      isRenegotiating = Core.Nothing,
      isSetupComplete = Core.Nothing,
      kind = "adexchangebuyer#proposal",
      labels = Core.Nothing,
      lastUpdaterOrCommentorRole = Core.Nothing,
      name = Core.Nothing,
      negotiationId = Core.Nothing,
      originatorRole = Core.Nothing,
      privateAuctionId = Core.Nothing,
      proposalId = Core.Nothing,
      proposalState = Core.Nothing,
      revisionNumber = Core.Nothing,
      revisionTimeMs = Core.Nothing,
      seller = Core.Nothing,
      sellerContacts = Core.Nothing
    }

instance Core.FromJSON Proposal where
  parseJSON =
    Core.withObject
      "Proposal"
      ( \o ->
          Proposal
            Core.<$> (o Core..:? "billedBuyer")
            Core.<*> (o Core..:? "buyer")
            Core.<*> (o Core..:? "buyerContacts")
            Core.<*> (o Core..:? "buyerPrivateData")
            Core.<*> (o Core..:? "dbmAdvertiserIds")
            Core.<*> (o Core..:? "hasBuyerSignedOff")
            Core.<*> (o Core..:? "hasSellerSignedOff")
            Core.<*> (o Core..:? "inventorySource")
            Core.<*> (o Core..:? "isRenegotiating")
            Core.<*> (o Core..:? "isSetupComplete")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "adexchangebuyer#proposal"
                     )
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "lastUpdaterOrCommentorRole")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "negotiationId")
            Core.<*> (o Core..:? "originatorRole")
            Core.<*> (o Core..:? "privateAuctionId")
            Core.<*> (o Core..:? "proposalId")
            Core.<*> (o Core..:? "proposalState")
            Core.<*> ( o Core..:? "revisionNumber"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "revisionTimeMs"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "seller")
            Core.<*> (o Core..:? "sellerContacts")
      )

instance Core.ToJSON Proposal where
  toJSON Proposal {..} =
    Core.object
      ( Core.catMaybes
          [ ("billedBuyer" Core..=) Core.<$> billedBuyer,
            ("buyer" Core..=) Core.<$> buyer,
            ("buyerContacts" Core..=) Core.<$> buyerContacts,
            ("buyerPrivateData" Core..=)
              Core.<$> buyerPrivateData,
            ("dbmAdvertiserIds" Core..=)
              Core.<$> dbmAdvertiserIds,
            ("hasBuyerSignedOff" Core..=)
              Core.<$> hasBuyerSignedOff,
            ("hasSellerSignedOff" Core..=)
              Core.<$> hasSellerSignedOff,
            ("inventorySource" Core..=) Core.<$> inventorySource,
            ("isRenegotiating" Core..=) Core.<$> isRenegotiating,
            ("isSetupComplete" Core..=) Core.<$> isSetupComplete,
            Core.Just ("kind" Core..= kind),
            ("labels" Core..=) Core.<$> labels,
            ("lastUpdaterOrCommentorRole" Core..=)
              Core.<$> lastUpdaterOrCommentorRole,
            ("name" Core..=) Core.<$> name,
            ("negotiationId" Core..=) Core.<$> negotiationId,
            ("originatorRole" Core..=) Core.<$> originatorRole,
            ("privateAuctionId" Core..=)
              Core.<$> privateAuctionId,
            ("proposalId" Core..=) Core.<$> proposalId,
            ("proposalState" Core..=) Core.<$> proposalState,
            ("revisionNumber" Core..=) Core.. Core.AsText
              Core.<$> revisionNumber,
            ("revisionTimeMs" Core..=) Core.. Core.AsText
              Core.<$> revisionTimeMs,
            ("seller" Core..=) Core.<$> seller,
            ("sellerContacts" Core..=) Core.<$> sellerContacts
          ]
      )

--
-- /See:/ 'newPublisherProfileApiProto' smart constructor.
data PublisherProfileApiProto = PublisherProfileApiProto
  { -- | Publisher provided info on its audience.
    audience :: (Core.Maybe Core.Text),
    -- | A pitch statement for the buyer
    buyerPitchStatement :: (Core.Maybe Core.Text),
    -- | Direct contact for the publisher profile.
    directContact :: (Core.Maybe Core.Text),
    -- | Exchange where this publisher profile is from. E.g. AdX, Rubicon etc...
    exchange :: (Core.Maybe Core.Text),
    -- |
    forecastInventory :: (Core.Maybe Core.Text),
    -- | Link to publisher\'s Google+ page.
    googlePlusLink :: (Core.Maybe Core.Text),
    -- | True, if this is the parent profile, which represents all domains owned by the publisher.
    isParent :: (Core.Maybe Core.Bool),
    -- | True, if this profile is published. Deprecated for state.
    isPublished :: (Core.Maybe Core.Bool),
    -- | Identifies what kind of resource this is. Value: the fixed string \"adexchangebuyer#publisherProfileApiProto\".
    kind :: Core.Text,
    -- | The url to the logo for the publisher.
    logoUrl :: (Core.Maybe Core.Text),
    -- | The url for additional marketing and sales materials.
    mediaKitLink :: (Core.Maybe Core.Text),
    -- |
    name :: (Core.Maybe Core.Text),
    -- | Publisher provided overview.
    overview :: (Core.Maybe Core.Text),
    -- | The pair of (seller.account/id, profile/id) uniquely identifies a publisher profile for a given publisher.
    profileId :: (Core.Maybe Core.Int32),
    -- | Programmatic contact for the publisher profile.
    programmaticContact :: (Core.Maybe Core.Text),
    -- | The list of app IDs represented in this publisher profile. Empty if this is a parent profile. Deprecated in favor of publisher_app.
    publisherAppIds :: (Core.Maybe [Core.Int64]),
    -- | The list of apps represented in this publisher profile. Empty if this is a parent profile.
    publisherApps :: (Core.Maybe [MobileApplication]),
    -- | The list of domains represented in this publisher profile. Empty if this is a parent profile.
    publisherDomains :: (Core.Maybe [Core.Text]),
    -- | Unique Id for publisher profile.
    publisherProfileId :: (Core.Maybe Core.Text),
    -- | Publisher provided forecasting information.
    publisherProvidedForecast :: (Core.Maybe PublisherProvidedForecast),
    -- | Link to publisher rate card
    rateCardInfoLink :: (Core.Maybe Core.Text),
    -- | Link for a sample content page.
    samplePageLink :: (Core.Maybe Core.Text),
    -- | Seller of the publisher profile.
    seller :: (Core.Maybe Seller),
    -- | State of the publisher profile.
    state :: (Core.Maybe Core.Text),
    -- | Publisher provided key metrics and rankings.
    topHeadlines :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PublisherProfileApiProto' with the minimum fields required to make a request.
newPublisherProfileApiProto ::
  PublisherProfileApiProto
newPublisherProfileApiProto =
  PublisherProfileApiProto
    { audience = Core.Nothing,
      buyerPitchStatement = Core.Nothing,
      directContact = Core.Nothing,
      exchange = Core.Nothing,
      forecastInventory = Core.Nothing,
      googlePlusLink = Core.Nothing,
      isParent = Core.Nothing,
      isPublished = Core.Nothing,
      kind = "adexchangebuyer#publisherProfileApiProto",
      logoUrl = Core.Nothing,
      mediaKitLink = Core.Nothing,
      name = Core.Nothing,
      overview = Core.Nothing,
      profileId = Core.Nothing,
      programmaticContact = Core.Nothing,
      publisherAppIds = Core.Nothing,
      publisherApps = Core.Nothing,
      publisherDomains = Core.Nothing,
      publisherProfileId = Core.Nothing,
      publisherProvidedForecast = Core.Nothing,
      rateCardInfoLink = Core.Nothing,
      samplePageLink = Core.Nothing,
      seller = Core.Nothing,
      state = Core.Nothing,
      topHeadlines = Core.Nothing
    }

instance Core.FromJSON PublisherProfileApiProto where
  parseJSON =
    Core.withObject
      "PublisherProfileApiProto"
      ( \o ->
          PublisherProfileApiProto
            Core.<$> (o Core..:? "audience")
            Core.<*> (o Core..:? "buyerPitchStatement")
            Core.<*> (o Core..:? "directContact")
            Core.<*> (o Core..:? "exchange")
            Core.<*> (o Core..:? "forecastInventory")
            Core.<*> (o Core..:? "googlePlusLink")
            Core.<*> (o Core..:? "isParent")
            Core.<*> (o Core..:? "isPublished")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "adexchangebuyer#publisherProfileApiProto"
                     )
            Core.<*> (o Core..:? "logoUrl")
            Core.<*> (o Core..:? "mediaKitLink")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "overview")
            Core.<*> (o Core..:? "profileId")
            Core.<*> (o Core..:? "programmaticContact")
            Core.<*> ( o Core..:? "publisherAppIds"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
            Core.<*> (o Core..:? "publisherApps")
            Core.<*> (o Core..:? "publisherDomains")
            Core.<*> (o Core..:? "publisherProfileId")
            Core.<*> (o Core..:? "publisherProvidedForecast")
            Core.<*> (o Core..:? "rateCardInfoLink")
            Core.<*> (o Core..:? "samplePageLink")
            Core.<*> (o Core..:? "seller")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "topHeadlines")
      )

instance Core.ToJSON PublisherProfileApiProto where
  toJSON PublisherProfileApiProto {..} =
    Core.object
      ( Core.catMaybes
          [ ("audience" Core..=) Core.<$> audience,
            ("buyerPitchStatement" Core..=)
              Core.<$> buyerPitchStatement,
            ("directContact" Core..=) Core.<$> directContact,
            ("exchange" Core..=) Core.<$> exchange,
            ("forecastInventory" Core..=)
              Core.<$> forecastInventory,
            ("googlePlusLink" Core..=) Core.<$> googlePlusLink,
            ("isParent" Core..=) Core.<$> isParent,
            ("isPublished" Core..=) Core.<$> isPublished,
            Core.Just ("kind" Core..= kind),
            ("logoUrl" Core..=) Core.<$> logoUrl,
            ("mediaKitLink" Core..=) Core.<$> mediaKitLink,
            ("name" Core..=) Core.<$> name,
            ("overview" Core..=) Core.<$> overview,
            ("profileId" Core..=) Core.<$> profileId,
            ("programmaticContact" Core..=)
              Core.<$> programmaticContact,
            ("publisherAppIds" Core..=)
              Core.. Core.fmap Core.AsText
              Core.<$> publisherAppIds,
            ("publisherApps" Core..=) Core.<$> publisherApps,
            ("publisherDomains" Core..=)
              Core.<$> publisherDomains,
            ("publisherProfileId" Core..=)
              Core.<$> publisherProfileId,
            ("publisherProvidedForecast" Core..=)
              Core.<$> publisherProvidedForecast,
            ("rateCardInfoLink" Core..=)
              Core.<$> rateCardInfoLink,
            ("samplePageLink" Core..=) Core.<$> samplePageLink,
            ("seller" Core..=) Core.<$> seller,
            ("state" Core..=) Core.<$> state,
            ("topHeadlines" Core..=) Core.<$> topHeadlines
          ]
      )

-- | This message carries publisher provided forecasting information.
--
-- /See:/ 'newPublisherProvidedForecast' smart constructor.
data PublisherProvidedForecast = PublisherProvidedForecast
  { -- | Publisher provided dimensions. E.g. geo, sizes etc...
    dimensions :: (Core.Maybe [Dimension]),
    -- | Publisher provided weekly impressions.
    weeklyImpressions :: (Core.Maybe Core.Int64),
    -- | Publisher provided weekly uniques.
    weeklyUniques :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PublisherProvidedForecast' with the minimum fields required to make a request.
newPublisherProvidedForecast ::
  PublisherProvidedForecast
newPublisherProvidedForecast =
  PublisherProvidedForecast
    { dimensions = Core.Nothing,
      weeklyImpressions = Core.Nothing,
      weeklyUniques = Core.Nothing
    }

instance Core.FromJSON PublisherProvidedForecast where
  parseJSON =
    Core.withObject
      "PublisherProvidedForecast"
      ( \o ->
          PublisherProvidedForecast
            Core.<$> (o Core..:? "dimensions")
            Core.<*> ( o Core..:? "weeklyImpressions"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "weeklyUniques"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON PublisherProvidedForecast where
  toJSON PublisherProvidedForecast {..} =
    Core.object
      ( Core.catMaybes
          [ ("dimensions" Core..=) Core.<$> dimensions,
            ("weeklyImpressions" Core..=) Core.. Core.AsText
              Core.<$> weeklyImpressions,
            ("weeklyUniques" Core..=) Core.. Core.AsText
              Core.<$> weeklyUniques
          ]
      )

--
-- /See:/ 'newSeller' smart constructor.
data Seller = Seller
  { -- | The unique id for the seller. The seller fills in this field. The seller account id is then available to buyer in the product.
    accountId :: (Core.Maybe Core.Text),
    -- | Optional sub-account id for the seller.
    subAccountId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Seller' with the minimum fields required to make a request.
newSeller ::
  Seller
newSeller = Seller {accountId = Core.Nothing, subAccountId = Core.Nothing}

instance Core.FromJSON Seller where
  parseJSON =
    Core.withObject
      "Seller"
      ( \o ->
          Seller
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "subAccountId")
      )

instance Core.ToJSON Seller where
  toJSON Seller {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.<$> accountId,
            ("subAccountId" Core..=) Core.<$> subAccountId
          ]
      )

--
-- /See:/ 'newSharedTargeting' smart constructor.
data SharedTargeting = SharedTargeting
  { -- | The list of values to exclude from targeting. Each value is AND\'d together.
    exclusions :: (Core.Maybe [TargetingValue]),
    -- | The list of value to include as part of the targeting. Each value is OR\'d together.
    inclusions :: (Core.Maybe [TargetingValue]),
    -- | The key representing the shared targeting criterion.
    key :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SharedTargeting' with the minimum fields required to make a request.
newSharedTargeting ::
  SharedTargeting
newSharedTargeting =
  SharedTargeting
    { exclusions = Core.Nothing,
      inclusions = Core.Nothing,
      key = Core.Nothing
    }

instance Core.FromJSON SharedTargeting where
  parseJSON =
    Core.withObject
      "SharedTargeting"
      ( \o ->
          SharedTargeting
            Core.<$> (o Core..:? "exclusions")
            Core.<*> (o Core..:? "inclusions")
            Core.<*> (o Core..:? "key")
      )

instance Core.ToJSON SharedTargeting where
  toJSON SharedTargeting {..} =
    Core.object
      ( Core.catMaybes
          [ ("exclusions" Core..=) Core.<$> exclusions,
            ("inclusions" Core..=) Core.<$> inclusions,
            ("key" Core..=) Core.<$> key
          ]
      )

--
-- /See:/ 'newTargetingValue' smart constructor.
data TargetingValue = TargetingValue
  { -- | The creative size value to exclude\/include.
    creativeSizeValue :: (Core.Maybe TargetingValueCreativeSize),
    -- | The daypart targeting to include \/ exclude. Filled in when the key is GOOG/DAYPART/TARGETING.
    dayPartTargetingValue :: (Core.Maybe TargetingValueDayPartTargeting),
    -- |
    demogAgeCriteriaValue :: (Core.Maybe TargetingValueDemogAgeCriteria),
    -- |
    demogGenderCriteriaValue :: (Core.Maybe TargetingValueDemogGenderCriteria),
    -- | The long value to exclude\/include.
    longValue :: (Core.Maybe Core.Int64),
    -- |
    requestPlatformTargetingValue :: (Core.Maybe TargetingValueRequestPlatformTargeting),
    -- | The string value to exclude\/include.
    stringValue :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TargetingValue' with the minimum fields required to make a request.
newTargetingValue ::
  TargetingValue
newTargetingValue =
  TargetingValue
    { creativeSizeValue = Core.Nothing,
      dayPartTargetingValue = Core.Nothing,
      demogAgeCriteriaValue = Core.Nothing,
      demogGenderCriteriaValue = Core.Nothing,
      longValue = Core.Nothing,
      requestPlatformTargetingValue = Core.Nothing,
      stringValue = Core.Nothing
    }

instance Core.FromJSON TargetingValue where
  parseJSON =
    Core.withObject
      "TargetingValue"
      ( \o ->
          TargetingValue
            Core.<$> (o Core..:? "creativeSizeValue")
            Core.<*> (o Core..:? "dayPartTargetingValue")
            Core.<*> (o Core..:? "demogAgeCriteriaValue")
            Core.<*> (o Core..:? "demogGenderCriteriaValue")
            Core.<*> ( o Core..:? "longValue"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "requestPlatformTargetingValue")
            Core.<*> (o Core..:? "stringValue")
      )

instance Core.ToJSON TargetingValue where
  toJSON TargetingValue {..} =
    Core.object
      ( Core.catMaybes
          [ ("creativeSizeValue" Core..=)
              Core.<$> creativeSizeValue,
            ("dayPartTargetingValue" Core..=)
              Core.<$> dayPartTargetingValue,
            ("demogAgeCriteriaValue" Core..=)
              Core.<$> demogAgeCriteriaValue,
            ("demogGenderCriteriaValue" Core..=)
              Core.<$> demogGenderCriteriaValue,
            ("longValue" Core..=) Core.. Core.AsText
              Core.<$> longValue,
            ("requestPlatformTargetingValue" Core..=)
              Core.<$> requestPlatformTargetingValue,
            ("stringValue" Core..=) Core.<$> stringValue
          ]
      )

-- | Next Id: 7
--
-- /See:/ 'newTargetingValueCreativeSize' smart constructor.
data TargetingValueCreativeSize = TargetingValueCreativeSize
  { -- | The formats allowed by the publisher.
    allowedFormats :: (Core.Maybe [Core.Text]),
    -- | For video size type, the list of companion sizes.
    companionSizes :: (Core.Maybe [TargetingValueSize]),
    -- | The Creative size type.
    creativeSizeType :: (Core.Maybe Core.Text),
    -- | The native template for native ad.
    nativeTemplate :: (Core.Maybe Core.Text),
    -- | For regular or video creative size type, specifies the size of the creative.
    size :: (Core.Maybe TargetingValueSize),
    -- | The skippable ad type for video size.
    skippableAdType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TargetingValueCreativeSize' with the minimum fields required to make a request.
newTargetingValueCreativeSize ::
  TargetingValueCreativeSize
newTargetingValueCreativeSize =
  TargetingValueCreativeSize
    { allowedFormats = Core.Nothing,
      companionSizes = Core.Nothing,
      creativeSizeType = Core.Nothing,
      nativeTemplate = Core.Nothing,
      size = Core.Nothing,
      skippableAdType = Core.Nothing
    }

instance Core.FromJSON TargetingValueCreativeSize where
  parseJSON =
    Core.withObject
      "TargetingValueCreativeSize"
      ( \o ->
          TargetingValueCreativeSize
            Core.<$> (o Core..:? "allowedFormats")
            Core.<*> (o Core..:? "companionSizes")
            Core.<*> (o Core..:? "creativeSizeType")
            Core.<*> (o Core..:? "nativeTemplate")
            Core.<*> (o Core..:? "size")
            Core.<*> (o Core..:? "skippableAdType")
      )

instance Core.ToJSON TargetingValueCreativeSize where
  toJSON TargetingValueCreativeSize {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowedFormats" Core..=) Core.<$> allowedFormats,
            ("companionSizes" Core..=) Core.<$> companionSizes,
            ("creativeSizeType" Core..=)
              Core.<$> creativeSizeType,
            ("nativeTemplate" Core..=) Core.<$> nativeTemplate,
            ("size" Core..=) Core.<$> size,
            ("skippableAdType" Core..=)
              Core.<$> skippableAdType
          ]
      )

--
-- /See:/ 'newTargetingValueDayPartTargeting' smart constructor.
data TargetingValueDayPartTargeting = TargetingValueDayPartTargeting
  { -- |
    dayParts :: (Core.Maybe [TargetingValueDayPartTargetingDayPart]),
    -- |
    timeZoneType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TargetingValueDayPartTargeting' with the minimum fields required to make a request.
newTargetingValueDayPartTargeting ::
  TargetingValueDayPartTargeting
newTargetingValueDayPartTargeting =
  TargetingValueDayPartTargeting
    { dayParts = Core.Nothing,
      timeZoneType = Core.Nothing
    }

instance Core.FromJSON TargetingValueDayPartTargeting where
  parseJSON =
    Core.withObject
      "TargetingValueDayPartTargeting"
      ( \o ->
          TargetingValueDayPartTargeting
            Core.<$> (o Core..:? "dayParts")
            Core.<*> (o Core..:? "timeZoneType")
      )

instance Core.ToJSON TargetingValueDayPartTargeting where
  toJSON TargetingValueDayPartTargeting {..} =
    Core.object
      ( Core.catMaybes
          [ ("dayParts" Core..=) Core.<$> dayParts,
            ("timeZoneType" Core..=) Core.<$> timeZoneType
          ]
      )

--
-- /See:/ 'newTargetingValueDayPartTargetingDayPart' smart constructor.
data TargetingValueDayPartTargetingDayPart = TargetingValueDayPartTargetingDayPart
  { -- |
    dayOfWeek :: (Core.Maybe Core.Text),
    -- |
    endHour :: (Core.Maybe Core.Int32),
    -- |
    endMinute :: (Core.Maybe Core.Int32),
    -- |
    startHour :: (Core.Maybe Core.Int32),
    -- |
    startMinute :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TargetingValueDayPartTargetingDayPart' with the minimum fields required to make a request.
newTargetingValueDayPartTargetingDayPart ::
  TargetingValueDayPartTargetingDayPart
newTargetingValueDayPartTargetingDayPart =
  TargetingValueDayPartTargetingDayPart
    { dayOfWeek = Core.Nothing,
      endHour = Core.Nothing,
      endMinute = Core.Nothing,
      startHour = Core.Nothing,
      startMinute = Core.Nothing
    }

instance
  Core.FromJSON
    TargetingValueDayPartTargetingDayPart
  where
  parseJSON =
    Core.withObject
      "TargetingValueDayPartTargetingDayPart"
      ( \o ->
          TargetingValueDayPartTargetingDayPart
            Core.<$> (o Core..:? "dayOfWeek")
            Core.<*> (o Core..:? "endHour")
            Core.<*> (o Core..:? "endMinute")
            Core.<*> (o Core..:? "startHour")
            Core.<*> (o Core..:? "startMinute")
      )

instance
  Core.ToJSON
    TargetingValueDayPartTargetingDayPart
  where
  toJSON TargetingValueDayPartTargetingDayPart {..} =
    Core.object
      ( Core.catMaybes
          [ ("dayOfWeek" Core..=) Core.<$> dayOfWeek,
            ("endHour" Core..=) Core.<$> endHour,
            ("endMinute" Core..=) Core.<$> endMinute,
            ("startHour" Core..=) Core.<$> startHour,
            ("startMinute" Core..=) Core.<$> startMinute
          ]
      )

--
-- /See:/ 'newTargetingValueDemogAgeCriteria' smart constructor.
newtype TargetingValueDemogAgeCriteria = TargetingValueDemogAgeCriteria
  { -- |
    demogAgeCriteriaIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TargetingValueDemogAgeCriteria' with the minimum fields required to make a request.
newTargetingValueDemogAgeCriteria ::
  TargetingValueDemogAgeCriteria
newTargetingValueDemogAgeCriteria =
  TargetingValueDemogAgeCriteria {demogAgeCriteriaIds = Core.Nothing}

instance Core.FromJSON TargetingValueDemogAgeCriteria where
  parseJSON =
    Core.withObject
      "TargetingValueDemogAgeCriteria"
      ( \o ->
          TargetingValueDemogAgeCriteria
            Core.<$> (o Core..:? "demogAgeCriteriaIds")
      )

instance Core.ToJSON TargetingValueDemogAgeCriteria where
  toJSON TargetingValueDemogAgeCriteria {..} =
    Core.object
      ( Core.catMaybes
          [ ("demogAgeCriteriaIds" Core..=)
              Core.<$> demogAgeCriteriaIds
          ]
      )

--
-- /See:/ 'newTargetingValueDemogGenderCriteria' smart constructor.
newtype TargetingValueDemogGenderCriteria = TargetingValueDemogGenderCriteria
  { -- |
    demogGenderCriteriaIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TargetingValueDemogGenderCriteria' with the minimum fields required to make a request.
newTargetingValueDemogGenderCriteria ::
  TargetingValueDemogGenderCriteria
newTargetingValueDemogGenderCriteria =
  TargetingValueDemogGenderCriteria {demogGenderCriteriaIds = Core.Nothing}

instance
  Core.FromJSON
    TargetingValueDemogGenderCriteria
  where
  parseJSON =
    Core.withObject
      "TargetingValueDemogGenderCriteria"
      ( \o ->
          TargetingValueDemogGenderCriteria
            Core.<$> (o Core..:? "demogGenderCriteriaIds")
      )

instance
  Core.ToJSON
    TargetingValueDemogGenderCriteria
  where
  toJSON TargetingValueDemogGenderCriteria {..} =
    Core.object
      ( Core.catMaybes
          [ ("demogGenderCriteriaIds" Core..=)
              Core.<$> demogGenderCriteriaIds
          ]
      )

--
-- /See:/ 'newTargetingValueRequestPlatformTargeting' smart constructor.
newtype TargetingValueRequestPlatformTargeting = TargetingValueRequestPlatformTargeting
  { -- |
    requestPlatforms :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TargetingValueRequestPlatformTargeting' with the minimum fields required to make a request.
newTargetingValueRequestPlatformTargeting ::
  TargetingValueRequestPlatformTargeting
newTargetingValueRequestPlatformTargeting =
  TargetingValueRequestPlatformTargeting {requestPlatforms = Core.Nothing}

instance
  Core.FromJSON
    TargetingValueRequestPlatformTargeting
  where
  parseJSON =
    Core.withObject
      "TargetingValueRequestPlatformTargeting"
      ( \o ->
          TargetingValueRequestPlatformTargeting
            Core.<$> (o Core..:? "requestPlatforms")
      )

instance
  Core.ToJSON
    TargetingValueRequestPlatformTargeting
  where
  toJSON TargetingValueRequestPlatformTargeting {..} =
    Core.object
      ( Core.catMaybes
          [ ("requestPlatforms" Core..=)
              Core.<$> requestPlatforms
          ]
      )

--
-- /See:/ 'newTargetingValueSize' smart constructor.
data TargetingValueSize = TargetingValueSize
  { -- | The height of the creative.
    height :: (Core.Maybe Core.Int32),
    -- | The width of the creative.
    width :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TargetingValueSize' with the minimum fields required to make a request.
newTargetingValueSize ::
  TargetingValueSize
newTargetingValueSize =
  TargetingValueSize {height = Core.Nothing, width = Core.Nothing}

instance Core.FromJSON TargetingValueSize where
  parseJSON =
    Core.withObject
      "TargetingValueSize"
      ( \o ->
          TargetingValueSize
            Core.<$> (o Core..:? "height") Core.<*> (o Core..:? "width")
      )

instance Core.ToJSON TargetingValueSize where
  toJSON TargetingValueSize {..} =
    Core.object
      ( Core.catMaybes
          [ ("height" Core..=) Core.<$> height,
            ("width" Core..=) Core.<$> width
          ]
      )

--
-- /See:/ 'newUpdatePrivateAuctionProposalRequest' smart constructor.
data UpdatePrivateAuctionProposalRequest = UpdatePrivateAuctionProposalRequest
  { -- | The externalDealId of the deal to be updated.
    externalDealId :: (Core.Maybe Core.Text),
    -- | Optional note to be added.
    note :: (Core.Maybe MarketplaceNote),
    -- | The current revision number of the proposal to be updated.
    proposalRevisionNumber :: (Core.Maybe Core.Int64),
    -- | The proposed action on the private auction proposal.
    updateAction :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdatePrivateAuctionProposalRequest' with the minimum fields required to make a request.
newUpdatePrivateAuctionProposalRequest ::
  UpdatePrivateAuctionProposalRequest
newUpdatePrivateAuctionProposalRequest =
  UpdatePrivateAuctionProposalRequest
    { externalDealId = Core.Nothing,
      note = Core.Nothing,
      proposalRevisionNumber = Core.Nothing,
      updateAction = Core.Nothing
    }

instance
  Core.FromJSON
    UpdatePrivateAuctionProposalRequest
  where
  parseJSON =
    Core.withObject
      "UpdatePrivateAuctionProposalRequest"
      ( \o ->
          UpdatePrivateAuctionProposalRequest
            Core.<$> (o Core..:? "externalDealId")
            Core.<*> (o Core..:? "note")
            Core.<*> ( o Core..:? "proposalRevisionNumber"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "updateAction")
      )

instance
  Core.ToJSON
    UpdatePrivateAuctionProposalRequest
  where
  toJSON UpdatePrivateAuctionProposalRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("externalDealId" Core..=) Core.<$> externalDealId,
            ("note" Core..=) Core.<$> note,
            ("proposalRevisionNumber" Core..=) Core.. Core.AsText
              Core.<$> proposalRevisionNumber,
            ("updateAction" Core..=) Core.<$> updateAction
          ]
      )
