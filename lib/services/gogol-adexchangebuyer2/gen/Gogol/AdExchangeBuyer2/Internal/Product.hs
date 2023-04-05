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
-- Module      : Gogol.AdExchangeBuyer2.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AdExchangeBuyer2.Internal.Product
  ( -- * AbsoluteDateRange
    AbsoluteDateRange (..),
    newAbsoluteDateRange,

    -- * AcceptProposalRequest
    AcceptProposalRequest (..),
    newAcceptProposalRequest,

    -- * AdSize
    AdSize (..),
    newAdSize,

    -- * AdTechnologyProviders
    AdTechnologyProviders (..),
    newAdTechnologyProviders,

    -- * AddDealAssociationRequest
    AddDealAssociationRequest (..),
    newAddDealAssociationRequest,

    -- * AddNoteRequest
    AddNoteRequest (..),
    newAddNoteRequest,

    -- * AppContext
    AppContext (..),
    newAppContext,

    -- * AuctionContext
    AuctionContext (..),
    newAuctionContext,

    -- * BidMetricsRow
    BidMetricsRow (..),
    newBidMetricsRow,

    -- * BidResponseWithoutBidsStatusRow
    BidResponseWithoutBidsStatusRow (..),
    newBidResponseWithoutBidsStatusRow,

    -- * Buyer
    Buyer (..),
    newBuyer,

    -- * CalloutStatusRow
    CalloutStatusRow (..),
    newCalloutStatusRow,

    -- * CancelNegotiationRequest
    CancelNegotiationRequest (..),
    newCancelNegotiationRequest,

    -- * Client
    Client (..),
    newClient,

    -- * ClientUser
    ClientUser (..),
    newClientUser,

    -- * ClientUserInvitation
    ClientUserInvitation (..),
    newClientUserInvitation,

    -- * CompleteSetupRequest
    CompleteSetupRequest (..),
    newCompleteSetupRequest,

    -- * ContactInformation
    ContactInformation (..),
    newContactInformation,

    -- * Correction
    Correction (..),
    newCorrection,

    -- * Creative
    Creative (..),
    newCreative,

    -- * CreativeDealAssociation
    CreativeDealAssociation (..),
    newCreativeDealAssociation,

    -- * CreativeRestrictions
    CreativeRestrictions (..),
    newCreativeRestrictions,

    -- * CreativeSize
    CreativeSize (..),
    newCreativeSize,

    -- * CreativeSpecification
    CreativeSpecification (..),
    newCreativeSpecification,

    -- * CreativeStatusRow
    CreativeStatusRow (..),
    newCreativeStatusRow,

    -- * CriteriaTargeting
    CriteriaTargeting (..),
    newCriteriaTargeting,

    -- * Date
    Date (..),
    newDate,

    -- * DayPart
    DayPart (..),
    newDayPart,

    -- * DayPartTargeting
    DayPartTargeting (..),
    newDayPartTargeting,

    -- * Deal
    Deal (..),
    newDeal,

    -- * DealPauseStatus
    DealPauseStatus (..),
    newDealPauseStatus,

    -- * DealServingMetadata
    DealServingMetadata (..),
    newDealServingMetadata,

    -- * DealTerms
    DealTerms (..),
    newDealTerms,

    -- * DeliveryControl
    DeliveryControl (..),
    newDeliveryControl,

    -- * Disapproval
    Disapproval (..),
    newDisapproval,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * FilterSet
    FilterSet (..),
    newFilterSet,

    -- * FilteredBidCreativeRow
    FilteredBidCreativeRow (..),
    newFilteredBidCreativeRow,

    -- * FilteredBidDetailRow
    FilteredBidDetailRow (..),
    newFilteredBidDetailRow,

    -- * FirstPartyMobileApplicationTargeting
    FirstPartyMobileApplicationTargeting (..),
    newFirstPartyMobileApplicationTargeting,

    -- * FrequencyCap
    FrequencyCap (..),
    newFrequencyCap,

    -- * GuaranteedFixedPriceTerms
    GuaranteedFixedPriceTerms (..),
    newGuaranteedFixedPriceTerms,

    -- * HtmlContent
    HtmlContent (..),
    newHtmlContent,

    -- * Image
    Image (..),
    newImage,

    -- * ImpressionMetricsRow
    ImpressionMetricsRow (..),
    newImpressionMetricsRow,

    -- * InventorySizeTargeting
    InventorySizeTargeting (..),
    newInventorySizeTargeting,

    -- * ListBidMetricsResponse
    ListBidMetricsResponse (..),
    newListBidMetricsResponse,

    -- * ListBidResponseErrorsResponse
    ListBidResponseErrorsResponse (..),
    newListBidResponseErrorsResponse,

    -- * ListBidResponsesWithoutBidsResponse
    ListBidResponsesWithoutBidsResponse (..),
    newListBidResponsesWithoutBidsResponse,

    -- * ListClientUserInvitationsResponse
    ListClientUserInvitationsResponse (..),
    newListClientUserInvitationsResponse,

    -- * ListClientUsersResponse
    ListClientUsersResponse (..),
    newListClientUsersResponse,

    -- * ListClientsResponse
    ListClientsResponse (..),
    newListClientsResponse,

    -- * ListCreativeStatusBreakdownByCreativeResponse
    ListCreativeStatusBreakdownByCreativeResponse (..),
    newListCreativeStatusBreakdownByCreativeResponse,

    -- * ListCreativeStatusBreakdownByDetailResponse
    ListCreativeStatusBreakdownByDetailResponse (..),
    newListCreativeStatusBreakdownByDetailResponse,

    -- * ListCreativesResponse
    ListCreativesResponse (..),
    newListCreativesResponse,

    -- * ListDealAssociationsResponse
    ListDealAssociationsResponse (..),
    newListDealAssociationsResponse,

    -- * ListFilterSetsResponse
    ListFilterSetsResponse (..),
    newListFilterSetsResponse,

    -- * ListFilteredBidRequestsResponse
    ListFilteredBidRequestsResponse (..),
    newListFilteredBidRequestsResponse,

    -- * ListFilteredBidsResponse
    ListFilteredBidsResponse (..),
    newListFilteredBidsResponse,

    -- * ListImpressionMetricsResponse
    ListImpressionMetricsResponse (..),
    newListImpressionMetricsResponse,

    -- * ListLosingBidsResponse
    ListLosingBidsResponse (..),
    newListLosingBidsResponse,

    -- * ListNonBillableWinningBidsResponse
    ListNonBillableWinningBidsResponse (..),
    newListNonBillableWinningBidsResponse,

    -- * ListProductsResponse
    ListProductsResponse (..),
    newListProductsResponse,

    -- * ListProposalsResponse
    ListProposalsResponse (..),
    newListProposalsResponse,

    -- * ListPublisherProfilesResponse
    ListPublisherProfilesResponse (..),
    newListPublisherProfilesResponse,

    -- * LocationContext
    LocationContext (..),
    newLocationContext,

    -- * MarketplaceTargeting
    MarketplaceTargeting (..),
    newMarketplaceTargeting,

    -- * MetricValue
    MetricValue (..),
    newMetricValue,

    -- * MobileApplicationTargeting
    MobileApplicationTargeting (..),
    newMobileApplicationTargeting,

    -- * Money
    Money (..),
    newMoney,

    -- * NativeContent
    NativeContent (..),
    newNativeContent,

    -- * NonBillableWinningBidStatusRow
    NonBillableWinningBidStatusRow (..),
    newNonBillableWinningBidStatusRow,

    -- * NonGuaranteedAuctionTerms
    NonGuaranteedAuctionTerms (..),
    newNonGuaranteedAuctionTerms,

    -- * NonGuaranteedFixedPriceTerms
    NonGuaranteedFixedPriceTerms (..),
    newNonGuaranteedFixedPriceTerms,

    -- * Note
    Note (..),
    newNote,

    -- * OperatingSystemTargeting
    OperatingSystemTargeting (..),
    newOperatingSystemTargeting,

    -- * PauseProposalDealsRequest
    PauseProposalDealsRequest (..),
    newPauseProposalDealsRequest,

    -- * PauseProposalRequest
    PauseProposalRequest (..),
    newPauseProposalRequest,

    -- * PlacementTargeting
    PlacementTargeting (..),
    newPlacementTargeting,

    -- * PlatformContext
    PlatformContext (..),
    newPlatformContext,

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

    -- * PublisherProfile
    PublisherProfile (..),
    newPublisherProfile,

    -- * PublisherProfileMobileApplication
    PublisherProfileMobileApplication (..),
    newPublisherProfileMobileApplication,

    -- * RealtimeTimeRange
    RealtimeTimeRange (..),
    newRealtimeTimeRange,

    -- * RelativeDateRange
    RelativeDateRange (..),
    newRelativeDateRange,

    -- * RemoveDealAssociationRequest
    RemoveDealAssociationRequest (..),
    newRemoveDealAssociationRequest,

    -- * ResumeProposalDealsRequest
    ResumeProposalDealsRequest (..),
    newResumeProposalDealsRequest,

    -- * ResumeProposalRequest
    ResumeProposalRequest (..),
    newResumeProposalRequest,

    -- * RowDimensions
    RowDimensions (..),
    newRowDimensions,

    -- * SecurityContext
    SecurityContext (..),
    newSecurityContext,

    -- * Seller
    Seller (..),
    newSeller,

    -- * ServingContext
    ServingContext (..),
    newServingContext,

    -- * ServingRestriction
    ServingRestriction (..),
    newServingRestriction,

    -- * Size
    Size (..),
    newSize,

    -- * StopWatchingCreativeRequest
    StopWatchingCreativeRequest (..),
    newStopWatchingCreativeRequest,

    -- * TargetingCriteria
    TargetingCriteria (..),
    newTargetingCriteria,

    -- * TargetingValue
    TargetingValue (..),
    newTargetingValue,

    -- * TechnologyTargeting
    TechnologyTargeting (..),
    newTechnologyTargeting,

    -- * TimeInterval
    TimeInterval (..),
    newTimeInterval,

    -- * TimeOfDay'
    TimeOfDay' (..),
    newTimeOfDay,

    -- * UrlTargeting
    UrlTargeting (..),
    newUrlTargeting,

    -- * VideoContent
    VideoContent (..),
    newVideoContent,

    -- * VideoTargeting
    VideoTargeting (..),
    newVideoTargeting,

    -- * WatchCreativeRequest
    WatchCreativeRequest (..),
    newWatchCreativeRequest,
  )
where

import Gogol.AdExchangeBuyer2.Internal.Sum
import qualified Gogol.Prelude as Core

-- | An absolute date range, specified by its start date and end date. The supported range of dates begins 30 days before today and ends today. Validity checked upon filter set creation. If a filter set with an absolute date range is run at a later date more than 30 days after start_date, it will fail.
--
-- /See:/ 'newAbsoluteDateRange' smart constructor.
data AbsoluteDateRange = AbsoluteDateRange
  { -- | The end date of the range (inclusive). Must be within the 30 days leading up to current date, and must be equal to or after start_date.
    endDate :: (Core.Maybe Date),
    -- | The start date of the range (inclusive). Must be within the 30 days leading up to current date, and must be equal to or before end_date.
    startDate :: (Core.Maybe Date)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AbsoluteDateRange' with the minimum fields required to make a request.
newAbsoluteDateRange ::
  AbsoluteDateRange
newAbsoluteDateRange =
  AbsoluteDateRange {endDate = Core.Nothing, startDate = Core.Nothing}

instance Core.FromJSON AbsoluteDateRange where
  parseJSON =
    Core.withObject
      "AbsoluteDateRange"
      ( \o ->
          AbsoluteDateRange
            Core.<$> (o Core..:? "endDate")
            Core.<*> (o Core..:? "startDate")
      )

instance Core.ToJSON AbsoluteDateRange where
  toJSON AbsoluteDateRange {..} =
    Core.object
      ( Core.catMaybes
          [ ("endDate" Core..=) Core.<$> endDate,
            ("startDate" Core..=) Core.<$> startDate
          ]
      )

-- | Request to accept a proposal.
--
-- /See:/ 'newAcceptProposalRequest' smart constructor.
newtype AcceptProposalRequest = AcceptProposalRequest
  { -- | The last known client revision number of the proposal.
    proposalRevision :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AcceptProposalRequest' with the minimum fields required to make a request.
newAcceptProposalRequest ::
  AcceptProposalRequest
newAcceptProposalRequest =
  AcceptProposalRequest {proposalRevision = Core.Nothing}

instance Core.FromJSON AcceptProposalRequest where
  parseJSON =
    Core.withObject
      "AcceptProposalRequest"
      ( \o ->
          AcceptProposalRequest
            Core.<$> ( o Core..:? "proposalRevision"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON AcceptProposalRequest where
  toJSON AcceptProposalRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("proposalRevision" Core..=) Core.. Core.AsText
              Core.<$> proposalRevision
          ]
      )

-- | Represents size of a single ad slot, or a creative.
--
-- /See:/ 'newAdSize' smart constructor.
data AdSize = AdSize
  { -- | The height of the ad slot in pixels. This field will be present only when size type is @PIXEL@.
    height :: (Core.Maybe Core.Int64),
    -- | The size type of the ad slot.
    sizeType :: (Core.Maybe AdSize_SizeType),
    -- | The width of the ad slot in pixels. This field will be present only when size type is @PIXEL@.
    width :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSize' with the minimum fields required to make a request.
newAdSize ::
  AdSize
newAdSize =
  AdSize {height = Core.Nothing, sizeType = Core.Nothing, width = Core.Nothing}

instance Core.FromJSON AdSize where
  parseJSON =
    Core.withObject
      "AdSize"
      ( \o ->
          AdSize
            Core.<$> ( o Core..:? "height"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "sizeType")
            Core.<*> ( o Core..:? "width"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON AdSize where
  toJSON AdSize {..} =
    Core.object
      ( Core.catMaybes
          [ ("height" Core..=) Core.. Core.AsText
              Core.<$> height,
            ("sizeType" Core..=) Core.<$> sizeType,
            ("width" Core..=) Core.. Core.AsText Core.<$> width
          ]
      )

-- | Detected ad technology provider information.
--
-- /See:/ 'newAdTechnologyProviders' smart constructor.
data AdTechnologyProviders = AdTechnologyProviders
  { -- | The detected ad technology provider IDs for this creative. See https:\/\/storage.googleapis.com\/adx-rtb-dictionaries\/providers.csv for mapping of provider ID to provided name, a privacy policy URL, and a list of domains which can be attributed to the provider. If the creative contains provider IDs that are outside of those listed in the @BidRequest.adslot.consented_providers_settings.consented_providers@ field on the (Google bid protocol)[https:\/\/developers.google.com\/authorized-buyers\/rtb\/downloads\/realtime-bidding-proto] and the @BidRequest.user.ext.consented_providers_settings.consented_providers@ field on the (OpenRTB protocol)[https:\/\/developers.google.com\/authorized-buyers\/rtb\/downloads\/openrtb-adx-proto], and a bid is submitted with that creative for an impression that will serve to an EEA user, the bid will be filtered before the auction.
    detectedProviderIds :: (Core.Maybe [Core.Int64]),
    -- | Whether the creative contains an unidentified ad technology provider. If true for a given creative, any bid submitted with that creative for an impression that will serve to an EEA user will be filtered before the auction.
    hasUnidentifiedProvider :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdTechnologyProviders' with the minimum fields required to make a request.
newAdTechnologyProviders ::
  AdTechnologyProviders
newAdTechnologyProviders =
  AdTechnologyProviders
    { detectedProviderIds = Core.Nothing,
      hasUnidentifiedProvider = Core.Nothing
    }

instance Core.FromJSON AdTechnologyProviders where
  parseJSON =
    Core.withObject
      "AdTechnologyProviders"
      ( \o ->
          AdTechnologyProviders
            Core.<$> ( o Core..:? "detectedProviderIds"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
            Core.<*> (o Core..:? "hasUnidentifiedProvider")
      )

instance Core.ToJSON AdTechnologyProviders where
  toJSON AdTechnologyProviders {..} =
    Core.object
      ( Core.catMaybes
          [ ("detectedProviderIds" Core..=)
              Core.. Core.fmap Core.AsText
              Core.<$> detectedProviderIds,
            ("hasUnidentifiedProvider" Core..=)
              Core.<$> hasUnidentifiedProvider
          ]
      )

-- | A request for associating a deal and a creative.
--
-- /See:/ 'newAddDealAssociationRequest' smart constructor.
newtype AddDealAssociationRequest = AddDealAssociationRequest
  { -- | The association between a creative and a deal that should be added.
    association :: (Core.Maybe CreativeDealAssociation)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddDealAssociationRequest' with the minimum fields required to make a request.
newAddDealAssociationRequest ::
  AddDealAssociationRequest
newAddDealAssociationRequest =
  AddDealAssociationRequest {association = Core.Nothing}

instance Core.FromJSON AddDealAssociationRequest where
  parseJSON =
    Core.withObject
      "AddDealAssociationRequest"
      ( \o ->
          AddDealAssociationRequest
            Core.<$> (o Core..:? "association")
      )

instance Core.ToJSON AddDealAssociationRequest where
  toJSON AddDealAssociationRequest {..} =
    Core.object
      ( Core.catMaybes
          [("association" Core..=) Core.<$> association]
      )

-- | Request message for adding a note to a given proposal.
--
-- /See:/ 'newAddNoteRequest' smart constructor.
newtype AddNoteRequest = AddNoteRequest
  { -- | Details of the note to add.
    note :: (Core.Maybe Note)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddNoteRequest' with the minimum fields required to make a request.
newAddNoteRequest ::
  AddNoteRequest
newAddNoteRequest = AddNoteRequest {note = Core.Nothing}

instance Core.FromJSON AddNoteRequest where
  parseJSON =
    Core.withObject
      "AddNoteRequest"
      (\o -> AddNoteRequest Core.<$> (o Core..:? "note"))

instance Core.ToJSON AddNoteRequest where
  toJSON AddNoteRequest {..} =
    Core.object
      (Core.catMaybes [("note" Core..=) Core.<$> note])

-- | Output only. The app type the restriction applies to for mobile device.
--
-- /See:/ 'newAppContext' smart constructor.
newtype AppContext = AppContext
  { -- | The app types this restriction applies to.
    appTypes :: (Core.Maybe [AppContext_AppTypesItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppContext' with the minimum fields required to make a request.
newAppContext ::
  AppContext
newAppContext = AppContext {appTypes = Core.Nothing}

instance Core.FromJSON AppContext where
  parseJSON =
    Core.withObject
      "AppContext"
      (\o -> AppContext Core.<$> (o Core..:? "appTypes"))

instance Core.ToJSON AppContext where
  toJSON AppContext {..} =
    Core.object
      ( Core.catMaybes
          [("appTypes" Core..=) Core.<$> appTypes]
      )

-- | Output only. The auction type the restriction applies to.
--
-- /See:/ 'newAuctionContext' smart constructor.
newtype AuctionContext = AuctionContext
  { -- | The auction types this restriction applies to.
    auctionTypes :: (Core.Maybe [AuctionContext_AuctionTypesItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuctionContext' with the minimum fields required to make a request.
newAuctionContext ::
  AuctionContext
newAuctionContext = AuctionContext {auctionTypes = Core.Nothing}

instance Core.FromJSON AuctionContext where
  parseJSON =
    Core.withObject
      "AuctionContext"
      ( \o ->
          AuctionContext Core.<$> (o Core..:? "auctionTypes")
      )

instance Core.ToJSON AuctionContext where
  toJSON AuctionContext {..} =
    Core.object
      ( Core.catMaybes
          [("auctionTypes" Core..=) Core.<$> auctionTypes]
      )

-- | The set of metrics that are measured in numbers of bids, representing how many bids with the specified dimension values were considered eligible at each stage of the bidding funnel;
--
-- /See:/ 'newBidMetricsRow' smart constructor.
data BidMetricsRow = BidMetricsRow
  { -- | The number of bids that Ad Exchange received from the buyer.
    bids :: (Core.Maybe MetricValue),
    -- | The number of bids that were permitted to compete in the auction.
    bidsInAuction :: (Core.Maybe MetricValue),
    -- | The number of bids for which the buyer was billed.
    billedImpressions :: (Core.Maybe MetricValue),
    -- | The number of bids that won the auction.
    impressionsWon :: (Core.Maybe MetricValue),
    -- | The number of bids for which the corresponding impression was measurable for viewability (as defined by Active View).
    measurableImpressions :: (Core.Maybe MetricValue),
    -- | The number of bids that won the auction and also won the mediation waterfall (if any).
    reachedQueries :: (Core.Maybe MetricValue),
    -- | The values of all dimensions associated with metric values in this row.
    rowDimensions :: (Core.Maybe RowDimensions),
    -- | The number of bids for which the corresponding impression was viewable (as defined by Active View).
    viewableImpressions :: (Core.Maybe MetricValue)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BidMetricsRow' with the minimum fields required to make a request.
newBidMetricsRow ::
  BidMetricsRow
newBidMetricsRow =
  BidMetricsRow
    { bids = Core.Nothing,
      bidsInAuction = Core.Nothing,
      billedImpressions = Core.Nothing,
      impressionsWon = Core.Nothing,
      measurableImpressions = Core.Nothing,
      reachedQueries = Core.Nothing,
      rowDimensions = Core.Nothing,
      viewableImpressions = Core.Nothing
    }

instance Core.FromJSON BidMetricsRow where
  parseJSON =
    Core.withObject
      "BidMetricsRow"
      ( \o ->
          BidMetricsRow
            Core.<$> (o Core..:? "bids")
            Core.<*> (o Core..:? "bidsInAuction")
            Core.<*> (o Core..:? "billedImpressions")
            Core.<*> (o Core..:? "impressionsWon")
            Core.<*> (o Core..:? "measurableImpressions")
            Core.<*> (o Core..:? "reachedQueries")
            Core.<*> (o Core..:? "rowDimensions")
            Core.<*> (o Core..:? "viewableImpressions")
      )

instance Core.ToJSON BidMetricsRow where
  toJSON BidMetricsRow {..} =
    Core.object
      ( Core.catMaybes
          [ ("bids" Core..=) Core.<$> bids,
            ("bidsInAuction" Core..=) Core.<$> bidsInAuction,
            ("billedImpressions" Core..=)
              Core.<$> billedImpressions,
            ("impressionsWon" Core..=) Core.<$> impressionsWon,
            ("measurableImpressions" Core..=)
              Core.<$> measurableImpressions,
            ("reachedQueries" Core..=) Core.<$> reachedQueries,
            ("rowDimensions" Core..=) Core.<$> rowDimensions,
            ("viewableImpressions" Core..=)
              Core.<$> viewableImpressions
          ]
      )

-- | The number of impressions with the specified dimension values that were considered to have no applicable bids, as described by the specified status.
--
-- /See:/ 'newBidResponseWithoutBidsStatusRow' smart constructor.
data BidResponseWithoutBidsStatusRow = BidResponseWithoutBidsStatusRow
  { -- | The number of impressions for which there was a bid response with the specified status.
    impressionCount :: (Core.Maybe MetricValue),
    -- | The values of all dimensions associated with metric values in this row.
    rowDimensions :: (Core.Maybe RowDimensions),
    -- | The status specifying why the bid responses were considered to have no applicable bids.
    status :: (Core.Maybe BidResponseWithoutBidsStatusRow_Status)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BidResponseWithoutBidsStatusRow' with the minimum fields required to make a request.
newBidResponseWithoutBidsStatusRow ::
  BidResponseWithoutBidsStatusRow
newBidResponseWithoutBidsStatusRow =
  BidResponseWithoutBidsStatusRow
    { impressionCount = Core.Nothing,
      rowDimensions = Core.Nothing,
      status = Core.Nothing
    }

instance
  Core.FromJSON
    BidResponseWithoutBidsStatusRow
  where
  parseJSON =
    Core.withObject
      "BidResponseWithoutBidsStatusRow"
      ( \o ->
          BidResponseWithoutBidsStatusRow
            Core.<$> (o Core..:? "impressionCount")
            Core.<*> (o Core..:? "rowDimensions")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON BidResponseWithoutBidsStatusRow where
  toJSON BidResponseWithoutBidsStatusRow {..} =
    Core.object
      ( Core.catMaybes
          [ ("impressionCount" Core..=)
              Core.<$> impressionCount,
            ("rowDimensions" Core..=) Core.<$> rowDimensions,
            ("status" Core..=) Core.<$> status
          ]
      )

-- | Represents a buyer of inventory. Each buyer is identified by a unique Authorized Buyers account ID.
--
-- /See:/ 'newBuyer' smart constructor.
newtype Buyer = Buyer
  { -- | Authorized Buyers account ID of the buyer.
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

-- | The number of impressions with the specified dimension values where the corresponding bid request or bid response was not successful, as described by the specified callout status.
--
-- /See:/ 'newCalloutStatusRow' smart constructor.
data CalloutStatusRow = CalloutStatusRow
  { -- | The ID of the callout status. See <https://developers.google.com/authorized-buyers/rtb/downloads/callout-status-codes callout-status-codes>.
    calloutStatusId :: (Core.Maybe Core.Int32),
    -- | The number of impressions for which there was a bid request or bid response with the specified callout status.
    impressionCount :: (Core.Maybe MetricValue),
    -- | The values of all dimensions associated with metric values in this row.
    rowDimensions :: (Core.Maybe RowDimensions)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CalloutStatusRow' with the minimum fields required to make a request.
newCalloutStatusRow ::
  CalloutStatusRow
newCalloutStatusRow =
  CalloutStatusRow
    { calloutStatusId = Core.Nothing,
      impressionCount = Core.Nothing,
      rowDimensions = Core.Nothing
    }

instance Core.FromJSON CalloutStatusRow where
  parseJSON =
    Core.withObject
      "CalloutStatusRow"
      ( \o ->
          CalloutStatusRow
            Core.<$> (o Core..:? "calloutStatusId")
            Core.<*> (o Core..:? "impressionCount")
            Core.<*> (o Core..:? "rowDimensions")
      )

instance Core.ToJSON CalloutStatusRow where
  toJSON CalloutStatusRow {..} =
    Core.object
      ( Core.catMaybes
          [ ("calloutStatusId" Core..=)
              Core.<$> calloutStatusId,
            ("impressionCount" Core..=) Core.<$> impressionCount,
            ("rowDimensions" Core..=) Core.<$> rowDimensions
          ]
      )

-- | Request to cancel an ongoing negotiation.
--
-- /See:/ 'newCancelNegotiationRequest' smart constructor.
data CancelNegotiationRequest = CancelNegotiationRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CancelNegotiationRequest' with the minimum fields required to make a request.
newCancelNegotiationRequest ::
  CancelNegotiationRequest
newCancelNegotiationRequest = CancelNegotiationRequest

instance Core.FromJSON CancelNegotiationRequest where
  parseJSON =
    Core.withObject
      "CancelNegotiationRequest"
      (\o -> Core.pure CancelNegotiationRequest)

instance Core.ToJSON CancelNegotiationRequest where
  toJSON = Core.const Core.emptyObject

-- | A client resource represents a client buyer—an agency, a brand, or an advertiser customer of the sponsor buyer. Users associated with the client buyer have restricted access to the Marketplace and certain other sections of the Authorized Buyers UI based on the role granted to the client buyer. All fields are required unless otherwise specified.
--
-- /See:/ 'newClient' smart constructor.
data Client = Client
  { -- | The globally-unique numerical ID of the client. The value of this field is ignored in create and update operations.
    clientAccountId :: (Core.Maybe Core.Int64),
    -- | Name used to represent this client to publishers. You may have multiple clients that map to the same entity, but for each client the combination of @clientName@ and entity must be unique. You can specify this field as empty. Maximum length of 255 characters is allowed.
    clientName :: (Core.Maybe Core.Text),
    -- | Numerical identifier of the client entity. The entity can be an advertiser, a brand, or an agency. This identifier is unique among all the entities with the same type. The value of this field is ignored if the entity type is not provided. A list of all known advertisers with their identifiers is available in the <https://storage.googleapis.com/adx-rtb-dictionaries/advertisers.txt advertisers.txt> file. A list of all known brands with their identifiers is available in the <https://storage.googleapis.com/adx-rtb-dictionaries/brands.txt brands.txt> file. A list of all known agencies with their identifiers is available in the <https://storage.googleapis.com/adx-rtb-dictionaries/agencies.txt agencies.txt> file.
    entityId :: (Core.Maybe Core.Int64),
    -- | The name of the entity. This field is automatically fetched based on the type and ID. The value of this field is ignored in create and update operations.
    entityName :: (Core.Maybe Core.Text),
    -- | An optional field for specifying the type of the client entity: @ADVERTISER@, @BRAND@, or @AGENCY@.
    entityType :: (Core.Maybe Client_EntityType),
    -- | Optional arbitrary unique identifier of this client buyer from the standpoint of its Ad Exchange sponsor buyer. This field can be used to associate a client buyer with the identifier in the namespace of its sponsor buyer, lookup client buyers by that identifier and verify whether an Ad Exchange counterpart of a given client buyer already exists. If present, must be unique among all the client buyers for its Ad Exchange sponsor buyer.
    partnerClientId :: (Core.Maybe Core.Text),
    -- | The role which is assigned to the client buyer. Each role implies a set of permissions granted to the client. Must be one of @CLIENT_DEAL_VIEWER@, @CLIENT_DEAL_NEGOTIATOR@ or @CLIENT_DEAL_APPROVER@.
    role' :: (Core.Maybe Client_Role),
    -- | The status of the client buyer.
    status :: (Core.Maybe Client_Status),
    -- | Whether the client buyer will be visible to sellers.
    visibleToSeller :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Client' with the minimum fields required to make a request.
newClient ::
  Client
newClient =
  Client
    { clientAccountId = Core.Nothing,
      clientName = Core.Nothing,
      entityId = Core.Nothing,
      entityName = Core.Nothing,
      entityType = Core.Nothing,
      partnerClientId = Core.Nothing,
      role' = Core.Nothing,
      status = Core.Nothing,
      visibleToSeller = Core.Nothing
    }

instance Core.FromJSON Client where
  parseJSON =
    Core.withObject
      "Client"
      ( \o ->
          Client
            Core.<$> ( o Core..:? "clientAccountId"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "clientName")
            Core.<*> ( o Core..:? "entityId"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "entityName")
            Core.<*> (o Core..:? "entityType")
            Core.<*> (o Core..:? "partnerClientId")
            Core.<*> (o Core..:? "role")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "visibleToSeller")
      )

instance Core.ToJSON Client where
  toJSON Client {..} =
    Core.object
      ( Core.catMaybes
          [ ("clientAccountId" Core..=) Core.. Core.AsText
              Core.<$> clientAccountId,
            ("clientName" Core..=) Core.<$> clientName,
            ("entityId" Core..=) Core.. Core.AsText
              Core.<$> entityId,
            ("entityName" Core..=) Core.<$> entityName,
            ("entityType" Core..=) Core.<$> entityType,
            ("partnerClientId" Core..=) Core.<$> partnerClientId,
            ("role" Core..=) Core.<$> role',
            ("status" Core..=) Core.<$> status,
            ("visibleToSeller" Core..=)
              Core.<$> visibleToSeller
          ]
      )

-- | A client user is created under a client buyer and has restricted access to the Marketplace and certain other sections of the Authorized Buyers UI based on the role granted to the associated client buyer. The only way a new client user can be created is through accepting an email invitation (see the accounts.clients.invitations.create method). All fields are required unless otherwise specified.
--
-- /See:/ 'newClientUser' smart constructor.
data ClientUser = ClientUser
  { -- | Numerical account ID of the client buyer with which the user is associated; the buyer must be a client of the current sponsor buyer. The value of this field is ignored in an update operation.
    clientAccountId :: (Core.Maybe Core.Int64),
    -- | User\'s email address. The value of this field is ignored in an update operation.
    email :: (Core.Maybe Core.Text),
    -- | The status of the client user.
    status :: (Core.Maybe ClientUser_Status),
    -- | The unique numerical ID of the client user that has accepted an invitation. The value of this field is ignored in an update operation.
    userId :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClientUser' with the minimum fields required to make a request.
newClientUser ::
  ClientUser
newClientUser =
  ClientUser
    { clientAccountId = Core.Nothing,
      email = Core.Nothing,
      status = Core.Nothing,
      userId = Core.Nothing
    }

instance Core.FromJSON ClientUser where
  parseJSON =
    Core.withObject
      "ClientUser"
      ( \o ->
          ClientUser
            Core.<$> ( o Core..:? "clientAccountId"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "email")
            Core.<*> (o Core..:? "status")
            Core.<*> ( o Core..:? "userId"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON ClientUser where
  toJSON ClientUser {..} =
    Core.object
      ( Core.catMaybes
          [ ("clientAccountId" Core..=) Core.. Core.AsText
              Core.<$> clientAccountId,
            ("email" Core..=) Core.<$> email,
            ("status" Core..=) Core.<$> status,
            ("userId" Core..=) Core.. Core.AsText
              Core.<$> userId
          ]
      )

-- | An invitation for a new client user to get access to the Authorized Buyers UI. All fields are required unless otherwise specified.
--
-- /See:/ 'newClientUserInvitation' smart constructor.
data ClientUserInvitation = ClientUserInvitation
  { -- | Numerical account ID of the client buyer that the invited user is associated with. The value of this field is ignored in create operations.
    clientAccountId :: (Core.Maybe Core.Int64),
    -- | The email address to which the invitation is sent. Email addresses should be unique among all client users under each sponsor buyer.
    email :: (Core.Maybe Core.Text),
    -- | The unique numerical ID of the invitation that is sent to the user. The value of this field is ignored in create operations.
    invitationId :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClientUserInvitation' with the minimum fields required to make a request.
newClientUserInvitation ::
  ClientUserInvitation
newClientUserInvitation =
  ClientUserInvitation
    { clientAccountId = Core.Nothing,
      email = Core.Nothing,
      invitationId = Core.Nothing
    }

instance Core.FromJSON ClientUserInvitation where
  parseJSON =
    Core.withObject
      "ClientUserInvitation"
      ( \o ->
          ClientUserInvitation
            Core.<$> ( o Core..:? "clientAccountId"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "email")
            Core.<*> ( o Core..:? "invitationId"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON ClientUserInvitation where
  toJSON ClientUserInvitation {..} =
    Core.object
      ( Core.catMaybes
          [ ("clientAccountId" Core..=) Core.. Core.AsText
              Core.<$> clientAccountId,
            ("email" Core..=) Core.<$> email,
            ("invitationId" Core..=) Core.. Core.AsText
              Core.<$> invitationId
          ]
      )

-- | Request message for indicating that the proposal\'s setup step is complete.
--
-- /See:/ 'newCompleteSetupRequest' smart constructor.
data CompleteSetupRequest = CompleteSetupRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CompleteSetupRequest' with the minimum fields required to make a request.
newCompleteSetupRequest ::
  CompleteSetupRequest
newCompleteSetupRequest = CompleteSetupRequest

instance Core.FromJSON CompleteSetupRequest where
  parseJSON =
    Core.withObject
      "CompleteSetupRequest"
      (\o -> Core.pure CompleteSetupRequest)

instance Core.ToJSON CompleteSetupRequest where
  toJSON = Core.const Core.emptyObject

-- | Contains information on how a buyer or seller can be reached.
--
-- /See:/ 'newContactInformation' smart constructor.
data ContactInformation = ContactInformation
  { -- | Email address for the contact.
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

-- | Output only. Shows any corrections that were applied to this creative.
--
-- /See:/ 'newCorrection' smart constructor.
data Correction = Correction
  { -- | The contexts for the correction.
    contexts :: (Core.Maybe [ServingContext]),
    -- | Additional details about what was corrected.
    details :: (Core.Maybe [Core.Text]),
    -- | The type of correction that was applied to the creative.
    type' :: (Core.Maybe Correction_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Correction' with the minimum fields required to make a request.
newCorrection ::
  Correction
newCorrection =
  Correction
    { contexts = Core.Nothing,
      details = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Correction where
  parseJSON =
    Core.withObject
      "Correction"
      ( \o ->
          Correction
            Core.<$> (o Core..:? "contexts")
            Core.<*> (o Core..:? "details")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Correction where
  toJSON Correction {..} =
    Core.object
      ( Core.catMaybes
          [ ("contexts" Core..=) Core.<$> contexts,
            ("details" Core..=) Core.<$> details,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | A creative and its classification data.
--
-- /See:/ 'newCreative' smart constructor.
data Creative = Creative
  { -- | The account that this creative belongs to. Can be used to filter the response of the creatives.list method.
    accountId :: (Core.Maybe Core.Text),
    -- | The link to AdChoices destination page.
    adChoicesDestinationUrl :: (Core.Maybe Core.Text),
    -- | Output only. The detected ad technology providers.
    adTechnologyProviders :: (Core.Maybe AdTechnologyProviders),
    -- | The name of the company being advertised in the creative.
    advertiserName :: (Core.Maybe Core.Text),
    -- | The agency ID for this creative.
    agencyId :: (Core.Maybe Core.Int64),
    -- | Output only. The last update timestamp of the creative through the API.
    apiUpdateTime :: (Core.Maybe Core.DateTime),
    -- | All attributes for the ads that may be shown from this creative. Can be used to filter the response of the creatives.list method.
    attributes :: (Core.Maybe [Creative_AttributesItem]),
    -- | The set of destination URLs for the creative.
    clickThroughUrls :: (Core.Maybe [Core.Text]),
    -- | Output only. Shows any corrections that were applied to this creative.
    corrections :: (Core.Maybe [Correction]),
    -- | The buyer-defined creative ID of this creative. Can be used to filter the response of the creatives.list method.
    creativeId :: (Core.Maybe Core.Text),
    -- | Output only. The top-level deals status of this creative. If disapproved, an entry for \'auctionType=DIRECT/DEALS\' (or \'ALL\') in serving/restrictions will also exist. Note that this may be nuanced with other contextual restrictions, in which case, it may be preferable to read from serving_restrictions directly. Can be used to filter the response of the creatives.list method.
    dealsStatus :: (Core.Maybe Creative_DealsStatus),
    -- | The set of declared destination URLs for the creative.
    declaredClickThroughUrls :: (Core.Maybe [Core.Text]),
    -- | Output only. Detected advertiser IDs, if any.
    detectedAdvertiserIds :: (Core.Maybe [Core.Int64]),
    -- | Output only. The detected domains for this creative.
    detectedDomains :: (Core.Maybe [Core.Text]),
    -- | Output only. The detected languages for this creative. The order is arbitrary. The codes are 2 or 5 characters and are documented at https:\/\/developers.google.com\/adwords\/api\/docs\/appendix\/languagecodes.
    detectedLanguages :: (Core.Maybe [Core.Text]),
    -- | Output only. Detected product categories, if any. See the ad-product-categories.txt file in the technical documentation for a list of IDs.
    detectedProductCategories :: (Core.Maybe [Core.Int32]),
    -- | Output only. Detected sensitive categories, if any. See the ad-sensitive-categories.txt file in the technical documentation for a list of IDs. You should use these IDs along with the excluded-sensitive-category field in the bid request to filter your bids.
    detectedSensitiveCategories :: (Core.Maybe [Core.Int32]),
    -- | An HTML creative.
    html :: (Core.Maybe HtmlContent),
    -- | The set of URLs to be called to record an impression.
    impressionTrackingUrls :: (Core.Maybe [Core.Text]),
    -- | A native creative.
    native :: (Core.Maybe NativeContent),
    -- | Output only. The top-level open auction status of this creative. If disapproved, an entry for \'auctionType = OPEN/AUCTION\' (or \'ALL\') in serving/restrictions will also exist. Note that this may be nuanced with other contextual restrictions, in which case, it may be preferable to read from serving_restrictions directly. Can be used to filter the response of the creatives.list method.
    openAuctionStatus :: (Core.Maybe Creative_OpenAuctionStatus),
    -- | All restricted categories for the ads that may be shown from this creative.
    restrictedCategories :: (Core.Maybe [Creative_RestrictedCategoriesItem]),
    -- | Output only. The granular status of this ad in specific contexts. A context here relates to where something ultimately serves (for example, a physical location, a platform, an HTTPS versus HTTP request, or the type of auction).
    servingRestrictions :: (Core.Maybe [ServingRestriction]),
    -- | All vendor IDs for the ads that may be shown from this creative. See https:\/\/storage.googleapis.com\/adx-rtb-dictionaries\/vendors.txt for possible values.
    vendorIds :: (Core.Maybe [Core.Int32]),
    -- | Output only. The version of this creative.
    version :: (Core.Maybe Core.Int32),
    -- | A video creative.
    video :: (Core.Maybe VideoContent)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Creative' with the minimum fields required to make a request.
newCreative ::
  Creative
newCreative =
  Creative
    { accountId = Core.Nothing,
      adChoicesDestinationUrl = Core.Nothing,
      adTechnologyProviders = Core.Nothing,
      advertiserName = Core.Nothing,
      agencyId = Core.Nothing,
      apiUpdateTime = Core.Nothing,
      attributes = Core.Nothing,
      clickThroughUrls = Core.Nothing,
      corrections = Core.Nothing,
      creativeId = Core.Nothing,
      dealsStatus = Core.Nothing,
      declaredClickThroughUrls = Core.Nothing,
      detectedAdvertiserIds = Core.Nothing,
      detectedDomains = Core.Nothing,
      detectedLanguages = Core.Nothing,
      detectedProductCategories = Core.Nothing,
      detectedSensitiveCategories = Core.Nothing,
      html = Core.Nothing,
      impressionTrackingUrls = Core.Nothing,
      native = Core.Nothing,
      openAuctionStatus = Core.Nothing,
      restrictedCategories = Core.Nothing,
      servingRestrictions = Core.Nothing,
      vendorIds = Core.Nothing,
      version = Core.Nothing,
      video = Core.Nothing
    }

instance Core.FromJSON Creative where
  parseJSON =
    Core.withObject
      "Creative"
      ( \o ->
          Creative
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "adChoicesDestinationUrl")
            Core.<*> (o Core..:? "adTechnologyProviders")
            Core.<*> (o Core..:? "advertiserName")
            Core.<*> ( o Core..:? "agencyId"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "apiUpdateTime")
            Core.<*> (o Core..:? "attributes")
            Core.<*> (o Core..:? "clickThroughUrls")
            Core.<*> (o Core..:? "corrections")
            Core.<*> (o Core..:? "creativeId")
            Core.<*> (o Core..:? "dealsStatus")
            Core.<*> (o Core..:? "declaredClickThroughUrls")
            Core.<*> ( o Core..:? "detectedAdvertiserIds"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
            Core.<*> (o Core..:? "detectedDomains")
            Core.<*> (o Core..:? "detectedLanguages")
            Core.<*> (o Core..:? "detectedProductCategories")
            Core.<*> (o Core..:? "detectedSensitiveCategories")
            Core.<*> (o Core..:? "html")
            Core.<*> (o Core..:? "impressionTrackingUrls")
            Core.<*> (o Core..:? "native")
            Core.<*> (o Core..:? "openAuctionStatus")
            Core.<*> (o Core..:? "restrictedCategories")
            Core.<*> (o Core..:? "servingRestrictions")
            Core.<*> (o Core..:? "vendorIds")
            Core.<*> (o Core..:? "version")
            Core.<*> (o Core..:? "video")
      )

instance Core.ToJSON Creative where
  toJSON Creative {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.<$> accountId,
            ("adChoicesDestinationUrl" Core..=)
              Core.<$> adChoicesDestinationUrl,
            ("adTechnologyProviders" Core..=)
              Core.<$> adTechnologyProviders,
            ("advertiserName" Core..=) Core.<$> advertiserName,
            ("agencyId" Core..=) Core.. Core.AsText
              Core.<$> agencyId,
            ("apiUpdateTime" Core..=) Core.<$> apiUpdateTime,
            ("attributes" Core..=) Core.<$> attributes,
            ("clickThroughUrls" Core..=)
              Core.<$> clickThroughUrls,
            ("corrections" Core..=) Core.<$> corrections,
            ("creativeId" Core..=) Core.<$> creativeId,
            ("dealsStatus" Core..=) Core.<$> dealsStatus,
            ("declaredClickThroughUrls" Core..=)
              Core.<$> declaredClickThroughUrls,
            ("detectedAdvertiserIds" Core..=)
              Core.. Core.fmap Core.AsText
              Core.<$> detectedAdvertiserIds,
            ("detectedDomains" Core..=) Core.<$> detectedDomains,
            ("detectedLanguages" Core..=)
              Core.<$> detectedLanguages,
            ("detectedProductCategories" Core..=)
              Core.<$> detectedProductCategories,
            ("detectedSensitiveCategories" Core..=)
              Core.<$> detectedSensitiveCategories,
            ("html" Core..=) Core.<$> html,
            ("impressionTrackingUrls" Core..=)
              Core.<$> impressionTrackingUrls,
            ("native" Core..=) Core.<$> native,
            ("openAuctionStatus" Core..=)
              Core.<$> openAuctionStatus,
            ("restrictedCategories" Core..=)
              Core.<$> restrictedCategories,
            ("servingRestrictions" Core..=)
              Core.<$> servingRestrictions,
            ("vendorIds" Core..=) Core.<$> vendorIds,
            ("version" Core..=) Core.<$> version,
            ("video" Core..=) Core.<$> video
          ]
      )

-- | The association between a creative and a deal.
--
-- /See:/ 'newCreativeDealAssociation' smart constructor.
data CreativeDealAssociation = CreativeDealAssociation
  { -- | The account the creative belongs to.
    accountId :: (Core.Maybe Core.Text),
    -- | The ID of the creative associated with the deal.
    creativeId :: (Core.Maybe Core.Text),
    -- | The externalDealId for the deal associated with the creative.
    dealsId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreativeDealAssociation' with the minimum fields required to make a request.
newCreativeDealAssociation ::
  CreativeDealAssociation
newCreativeDealAssociation =
  CreativeDealAssociation
    { accountId = Core.Nothing,
      creativeId = Core.Nothing,
      dealsId = Core.Nothing
    }

instance Core.FromJSON CreativeDealAssociation where
  parseJSON =
    Core.withObject
      "CreativeDealAssociation"
      ( \o ->
          CreativeDealAssociation
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "creativeId")
            Core.<*> (o Core..:? "dealsId")
      )

instance Core.ToJSON CreativeDealAssociation where
  toJSON CreativeDealAssociation {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.<$> accountId,
            ("creativeId" Core..=) Core.<$> creativeId,
            ("dealsId" Core..=) Core.<$> dealsId
          ]
      )

-- | Represents creative restrictions associated to Programmatic Guaranteed\/ Preferred Deal in Ad Manager. This doesn\'t apply to Private Auction and AdX Preferred Deals.
--
-- /See:/ 'newCreativeRestrictions' smart constructor.
data CreativeRestrictions = CreativeRestrictions
  { -- | The format of the environment that the creatives will be displayed in.
    creativeFormat :: (Core.Maybe CreativeRestrictions_CreativeFormat),
    -- |
    creativeSpecifications :: (Core.Maybe [CreativeSpecification]),
    -- | Skippable video ads allow viewers to skip ads after 5 seconds.
    skippableAdType :: (Core.Maybe CreativeRestrictions_SkippableAdType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreativeRestrictions' with the minimum fields required to make a request.
newCreativeRestrictions ::
  CreativeRestrictions
newCreativeRestrictions =
  CreativeRestrictions
    { creativeFormat = Core.Nothing,
      creativeSpecifications = Core.Nothing,
      skippableAdType = Core.Nothing
    }

instance Core.FromJSON CreativeRestrictions where
  parseJSON =
    Core.withObject
      "CreativeRestrictions"
      ( \o ->
          CreativeRestrictions
            Core.<$> (o Core..:? "creativeFormat")
            Core.<*> (o Core..:? "creativeSpecifications")
            Core.<*> (o Core..:? "skippableAdType")
      )

instance Core.ToJSON CreativeRestrictions where
  toJSON CreativeRestrictions {..} =
    Core.object
      ( Core.catMaybes
          [ ("creativeFormat" Core..=) Core.<$> creativeFormat,
            ("creativeSpecifications" Core..=)
              Core.<$> creativeSpecifications,
            ("skippableAdType" Core..=)
              Core.<$> skippableAdType
          ]
      )

-- | Specifies the size of the creative.
--
-- /See:/ 'newCreativeSize' smart constructor.
data CreativeSize = CreativeSize
  { -- | What formats are allowed by the publisher. If this repeated field is empty then all formats are allowed. For example, if this field contains AllowedFormatType.AUDIO then the publisher only allows an audio ad (without any video).
    allowedFormats :: (Core.Maybe [CreativeSize_AllowedFormatsItem]),
    -- | For video creatives specifies the sizes of companion ads (if present). Companion sizes may be filled in only when creative/size/type = VIDEO
    companionSizes :: (Core.Maybe [Size]),
    -- | The creative size type.
    creativeSizeType :: (Core.Maybe CreativeSize_CreativeSizeType),
    -- | Output only. The native template for this creative. It will have a value only if creative/size/type = CreativeSizeType.NATIVE.
    nativeTemplate :: (Core.Maybe CreativeSize_NativeTemplate),
    -- | For regular or video creative size type, specifies the size of the creative
    size :: (Core.Maybe Size),
    -- | The type of skippable ad for this creative. It will have a value only if creative/size/type = CreativeSizeType.VIDEO.
    skippableAdType :: (Core.Maybe CreativeSize_SkippableAdType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreativeSize' with the minimum fields required to make a request.
newCreativeSize ::
  CreativeSize
newCreativeSize =
  CreativeSize
    { allowedFormats = Core.Nothing,
      companionSizes = Core.Nothing,
      creativeSizeType = Core.Nothing,
      nativeTemplate = Core.Nothing,
      size = Core.Nothing,
      skippableAdType = Core.Nothing
    }

instance Core.FromJSON CreativeSize where
  parseJSON =
    Core.withObject
      "CreativeSize"
      ( \o ->
          CreativeSize
            Core.<$> (o Core..:? "allowedFormats")
            Core.<*> (o Core..:? "companionSizes")
            Core.<*> (o Core..:? "creativeSizeType")
            Core.<*> (o Core..:? "nativeTemplate")
            Core.<*> (o Core..:? "size")
            Core.<*> (o Core..:? "skippableAdType")
      )

instance Core.ToJSON CreativeSize where
  toJSON CreativeSize {..} =
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

-- | Represents information for a creative that is associated with a Programmatic Guaranteed\/Preferred Deal in Ad Manager.
--
-- /See:/ 'newCreativeSpecification' smart constructor.
data CreativeSpecification = CreativeSpecification
  { -- | Companion sizes may be filled in only when this is a video creative.
    creativeCompanionSizes :: (Core.Maybe [AdSize]),
    -- | The size of the creative.
    creativeSize :: (Core.Maybe AdSize)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreativeSpecification' with the minimum fields required to make a request.
newCreativeSpecification ::
  CreativeSpecification
newCreativeSpecification =
  CreativeSpecification
    { creativeCompanionSizes = Core.Nothing,
      creativeSize = Core.Nothing
    }

instance Core.FromJSON CreativeSpecification where
  parseJSON =
    Core.withObject
      "CreativeSpecification"
      ( \o ->
          CreativeSpecification
            Core.<$> (o Core..:? "creativeCompanionSizes")
            Core.<*> (o Core..:? "creativeSize")
      )

instance Core.ToJSON CreativeSpecification where
  toJSON CreativeSpecification {..} =
    Core.object
      ( Core.catMaybes
          [ ("creativeCompanionSizes" Core..=)
              Core.<$> creativeCompanionSizes,
            ("creativeSize" Core..=) Core.<$> creativeSize
          ]
      )

-- | The number of bids with the specified dimension values that did not win the auction (either were filtered pre-auction or lost the auction), as described by the specified creative status.
--
-- /See:/ 'newCreativeStatusRow' smart constructor.
data CreativeStatusRow = CreativeStatusRow
  { -- | The number of bids with the specified status.
    bidCount :: (Core.Maybe MetricValue),
    -- | The ID of the creative status. See <https://developers.google.com/authorized-buyers/rtb/downloads/creative-status-codes creative-status-codes>.
    creativeStatusId :: (Core.Maybe Core.Int32),
    -- | The values of all dimensions associated with metric values in this row.
    rowDimensions :: (Core.Maybe RowDimensions)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreativeStatusRow' with the minimum fields required to make a request.
newCreativeStatusRow ::
  CreativeStatusRow
newCreativeStatusRow =
  CreativeStatusRow
    { bidCount = Core.Nothing,
      creativeStatusId = Core.Nothing,
      rowDimensions = Core.Nothing
    }

instance Core.FromJSON CreativeStatusRow where
  parseJSON =
    Core.withObject
      "CreativeStatusRow"
      ( \o ->
          CreativeStatusRow
            Core.<$> (o Core..:? "bidCount")
            Core.<*> (o Core..:? "creativeStatusId")
            Core.<*> (o Core..:? "rowDimensions")
      )

instance Core.ToJSON CreativeStatusRow where
  toJSON CreativeStatusRow {..} =
    Core.object
      ( Core.catMaybes
          [ ("bidCount" Core..=) Core.<$> bidCount,
            ("creativeStatusId" Core..=)
              Core.<$> creativeStatusId,
            ("rowDimensions" Core..=) Core.<$> rowDimensions
          ]
      )

-- | Generic targeting used for targeting dimensions that contains a list of included and excluded numeric IDs.
--
-- /See:/ 'newCriteriaTargeting' smart constructor.
data CriteriaTargeting = CriteriaTargeting
  { -- | A list of numeric IDs to be excluded.
    excludedCriteriaIds :: (Core.Maybe [Core.Int64]),
    -- | A list of numeric IDs to be included.
    targetedCriteriaIds :: (Core.Maybe [Core.Int64])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CriteriaTargeting' with the minimum fields required to make a request.
newCriteriaTargeting ::
  CriteriaTargeting
newCriteriaTargeting =
  CriteriaTargeting
    { excludedCriteriaIds = Core.Nothing,
      targetedCriteriaIds = Core.Nothing
    }

instance Core.FromJSON CriteriaTargeting where
  parseJSON =
    Core.withObject
      "CriteriaTargeting"
      ( \o ->
          CriteriaTargeting
            Core.<$> ( o Core..:? "excludedCriteriaIds"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
            Core.<*> ( o Core..:? "targetedCriteriaIds"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
      )

instance Core.ToJSON CriteriaTargeting where
  toJSON CriteriaTargeting {..} =
    Core.object
      ( Core.catMaybes
          [ ("excludedCriteriaIds" Core..=)
              Core.. Core.fmap Core.AsText
              Core.<$> excludedCriteriaIds,
            ("targetedCriteriaIds" Core..=)
              Core.. Core.fmap Core.AsText
              Core.<$> targetedCriteriaIds
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

-- | Daypart targeting message that specifies if the ad can be shown only during certain parts of a day\/week.
--
-- /See:/ 'newDayPart' smart constructor.
data DayPart = DayPart
  { -- | The day of the week to target. If unspecified, applicable to all days.
    dayOfWeek :: (Core.Maybe DayPart_DayOfWeek),
    -- | The ending time of the day for the ad to show (minute level granularity). The end time is exclusive. This field is not available for filtering in PQL queries.
    endTime :: (Core.Maybe TimeOfDay'),
    -- | The starting time of day for the ad to show (minute level granularity). The start time is inclusive. This field is not available for filtering in PQL queries.
    startTime :: (Core.Maybe TimeOfDay')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DayPart' with the minimum fields required to make a request.
newDayPart ::
  DayPart
newDayPart =
  DayPart
    { dayOfWeek = Core.Nothing,
      endTime = Core.Nothing,
      startTime = Core.Nothing
    }

instance Core.FromJSON DayPart where
  parseJSON =
    Core.withObject
      "DayPart"
      ( \o ->
          DayPart
            Core.<$> (o Core..:? "dayOfWeek")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON DayPart where
  toJSON DayPart {..} =
    Core.object
      ( Core.catMaybes
          [ ("dayOfWeek" Core..=) Core.<$> dayOfWeek,
            ("endTime" Core..=) Core.<$> endTime,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | Specifies the day part targeting criteria.
--
-- /See:/ 'newDayPartTargeting' smart constructor.
data DayPartTargeting = DayPartTargeting
  { -- | A list of day part targeting criterion.
    dayParts :: (Core.Maybe [DayPart]),
    -- | The timezone to use for interpreting the day part targeting.
    timeZoneType :: (Core.Maybe DayPartTargeting_TimeZoneType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DayPartTargeting' with the minimum fields required to make a request.
newDayPartTargeting ::
  DayPartTargeting
newDayPartTargeting =
  DayPartTargeting {dayParts = Core.Nothing, timeZoneType = Core.Nothing}

instance Core.FromJSON DayPartTargeting where
  parseJSON =
    Core.withObject
      "DayPartTargeting"
      ( \o ->
          DayPartTargeting
            Core.<$> (o Core..:? "dayParts")
            Core.<*> (o Core..:? "timeZoneType")
      )

instance Core.ToJSON DayPartTargeting where
  toJSON DayPartTargeting {..} =
    Core.object
      ( Core.catMaybes
          [ ("dayParts" Core..=) Core.<$> dayParts,
            ("timeZoneType" Core..=) Core.<$> timeZoneType
          ]
      )

-- | A deal represents a segment of inventory for displaying ads on. A proposal can contain multiple deals. A deal contains the terms and targeting information that is used for serving.
--
-- /See:/ 'newDeal' smart constructor.
data Deal = Deal
  { -- | Proposed flight end time of the deal. This will generally be stored in a granularity of a second. A value is not required for Private Auction deals or Preferred Deals.
    availableEndTime :: (Core.Maybe Core.DateTime),
    -- | Optional. Proposed flight start time of the deal. This will generally be stored in the granularity of one second since deal serving starts at seconds boundary. Any time specified with more granularity (for example, in milliseconds) will be truncated towards the start of time in seconds.
    availableStartTime :: (Core.Maybe Core.DateTime),
    -- | Buyer private data (hidden from seller).
    buyerPrivateData :: (Core.Maybe PrivateData),
    -- | The product ID from which this deal was created. Note: This field may be set only when creating the resource. Modifying this field while updating the resource will result in an error.
    createProductId :: (Core.Maybe Core.Text),
    -- | Optional. Revision number of the product that the deal was created from. If present on create, and the server @product_revision@ has advanced since the passed-in @create_product_revision@, an @ABORTED@ error will be returned. Note: This field may be set only when creating the resource. Modifying this field while updating the resource will result in an error.
    createProductRevision :: (Core.Maybe Core.Int64),
    -- | Output only. The time of the deal creation.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. Specifies the creative pre-approval policy.
    creativePreApprovalPolicy :: (Core.Maybe Deal_CreativePreApprovalPolicy),
    -- | Output only. Restricitions about the creatives associated with the deal (for example, size) This is available for Programmatic Guaranteed\/Preferred Deals in Ad Manager.
    creativeRestrictions :: (Core.Maybe CreativeRestrictions),
    -- | Output only. Specifies whether the creative is safeFrame compatible.
    creativeSafeFrameCompatibility :: (Core.Maybe Deal_CreativeSafeFrameCompatibility),
    -- | Output only. A unique deal ID for the deal (server-assigned).
    dealId :: (Core.Maybe Core.Text),
    -- | Output only. Metadata about the serving status of this deal.
    dealServingMetadata :: (Core.Maybe DealServingMetadata),
    -- | The negotiable terms of the deal.
    dealTerms :: (Core.Maybe DealTerms),
    -- | The set of fields around delivery control that are interesting for a buyer to see but are non-negotiable. These are set by the publisher.
    deliveryControl :: (Core.Maybe DeliveryControl),
    -- | Description for the deal terms.
    description :: (Core.Maybe Core.Text),
    -- | The name of the deal.
    displayName :: (Core.Maybe Core.Text),
    -- | Output only. The external deal ID assigned to this deal once the deal is finalized. This is the deal ID that shows up in serving\/reporting etc.
    externalDealId :: (Core.Maybe Core.Text),
    -- | Output only. True, if the buyside inventory setup is complete for this deal.
    isSetupComplete :: (Core.Maybe Core.Bool),
    -- | Output only. Specifies the creative source for programmatic deals. PUBLISHER means creative is provided by seller and ADVERTISER means creative is provided by buyer.
    programmaticCreativeSource :: (Core.Maybe Deal_ProgrammaticCreativeSource),
    -- | Output only. ID of the proposal that this deal is part of.
    proposalId :: (Core.Maybe Core.Text),
    -- | Output only. Seller contact information for the deal.
    sellerContacts :: (Core.Maybe [ContactInformation]),
    -- | The syndication product associated with the deal. Note: This field may be set only when creating the resource. Modifying this field while updating the resource will result in an error.
    syndicationProduct :: (Core.Maybe Deal_SyndicationProduct),
    -- | Output only. Specifies the subset of inventory targeted by the deal.
    targeting :: (Core.Maybe MarketplaceTargeting),
    -- | The shared targeting visible to buyers and sellers. Each shared targeting entity is AND\'d together.
    targetingCriterion :: (Core.Maybe [TargetingCriteria]),
    -- | Output only. The time when the deal was last updated.
    updateTime :: (Core.Maybe Core.DateTime),
    -- | The web property code for the seller copied over from the product.
    webPropertyCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Deal' with the minimum fields required to make a request.
newDeal ::
  Deal
newDeal =
  Deal
    { availableEndTime = Core.Nothing,
      availableStartTime = Core.Nothing,
      buyerPrivateData = Core.Nothing,
      createProductId = Core.Nothing,
      createProductRevision = Core.Nothing,
      createTime = Core.Nothing,
      creativePreApprovalPolicy = Core.Nothing,
      creativeRestrictions = Core.Nothing,
      creativeSafeFrameCompatibility = Core.Nothing,
      dealId = Core.Nothing,
      dealServingMetadata = Core.Nothing,
      dealTerms = Core.Nothing,
      deliveryControl = Core.Nothing,
      description = Core.Nothing,
      displayName = Core.Nothing,
      externalDealId = Core.Nothing,
      isSetupComplete = Core.Nothing,
      programmaticCreativeSource = Core.Nothing,
      proposalId = Core.Nothing,
      sellerContacts = Core.Nothing,
      syndicationProduct = Core.Nothing,
      targeting = Core.Nothing,
      targetingCriterion = Core.Nothing,
      updateTime = Core.Nothing,
      webPropertyCode = Core.Nothing
    }

instance Core.FromJSON Deal where
  parseJSON =
    Core.withObject
      "Deal"
      ( \o ->
          Deal
            Core.<$> (o Core..:? "availableEndTime")
            Core.<*> (o Core..:? "availableStartTime")
            Core.<*> (o Core..:? "buyerPrivateData")
            Core.<*> (o Core..:? "createProductId")
            Core.<*> ( o Core..:? "createProductRevision"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "creativePreApprovalPolicy")
            Core.<*> (o Core..:? "creativeRestrictions")
            Core.<*> (o Core..:? "creativeSafeFrameCompatibility")
            Core.<*> (o Core..:? "dealId")
            Core.<*> (o Core..:? "dealServingMetadata")
            Core.<*> (o Core..:? "dealTerms")
            Core.<*> (o Core..:? "deliveryControl")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "externalDealId")
            Core.<*> (o Core..:? "isSetupComplete")
            Core.<*> (o Core..:? "programmaticCreativeSource")
            Core.<*> (o Core..:? "proposalId")
            Core.<*> (o Core..:? "sellerContacts")
            Core.<*> (o Core..:? "syndicationProduct")
            Core.<*> (o Core..:? "targeting")
            Core.<*> (o Core..:? "targetingCriterion")
            Core.<*> (o Core..:? "updateTime")
            Core.<*> (o Core..:? "webPropertyCode")
      )

instance Core.ToJSON Deal where
  toJSON Deal {..} =
    Core.object
      ( Core.catMaybes
          [ ("availableEndTime" Core..=)
              Core.<$> availableEndTime,
            ("availableStartTime" Core..=)
              Core.<$> availableStartTime,
            ("buyerPrivateData" Core..=)
              Core.<$> buyerPrivateData,
            ("createProductId" Core..=) Core.<$> createProductId,
            ("createProductRevision" Core..=) Core.. Core.AsText
              Core.<$> createProductRevision,
            ("createTime" Core..=) Core.<$> createTime,
            ("creativePreApprovalPolicy" Core..=)
              Core.<$> creativePreApprovalPolicy,
            ("creativeRestrictions" Core..=)
              Core.<$> creativeRestrictions,
            ("creativeSafeFrameCompatibility" Core..=)
              Core.<$> creativeSafeFrameCompatibility,
            ("dealId" Core..=) Core.<$> dealId,
            ("dealServingMetadata" Core..=)
              Core.<$> dealServingMetadata,
            ("dealTerms" Core..=) Core.<$> dealTerms,
            ("deliveryControl" Core..=) Core.<$> deliveryControl,
            ("description" Core..=) Core.<$> description,
            ("displayName" Core..=) Core.<$> displayName,
            ("externalDealId" Core..=) Core.<$> externalDealId,
            ("isSetupComplete" Core..=) Core.<$> isSetupComplete,
            ("programmaticCreativeSource" Core..=)
              Core.<$> programmaticCreativeSource,
            ("proposalId" Core..=) Core.<$> proposalId,
            ("sellerContacts" Core..=) Core.<$> sellerContacts,
            ("syndicationProduct" Core..=)
              Core.<$> syndicationProduct,
            ("targeting" Core..=) Core.<$> targeting,
            ("targetingCriterion" Core..=)
              Core.<$> targetingCriterion,
            ("updateTime" Core..=) Core.<$> updateTime,
            ("webPropertyCode" Core..=)
              Core.<$> webPropertyCode
          ]
      )

-- | Tracks which parties (if any) have paused a deal. The deal is considered paused if either hasBuyerPaused or hasSellPaused is true.
--
-- /See:/ 'newDealPauseStatus' smart constructor.
data DealPauseStatus = DealPauseStatus
  { -- | The buyer\'s reason for pausing, if the buyer paused the deal.
    buyerPauseReason :: (Core.Maybe Core.Text),
    -- | The role of the person who first paused this deal.
    firstPausedBy :: (Core.Maybe DealPauseStatus_FirstPausedBy),
    -- | True, if the buyer has paused the deal unilaterally.
    hasBuyerPaused :: (Core.Maybe Core.Bool),
    -- | True, if the seller has paused the deal unilaterally.
    hasSellerPaused :: (Core.Maybe Core.Bool),
    -- | The seller\'s reason for pausing, if the seller paused the deal.
    sellerPauseReason :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DealPauseStatus' with the minimum fields required to make a request.
newDealPauseStatus ::
  DealPauseStatus
newDealPauseStatus =
  DealPauseStatus
    { buyerPauseReason = Core.Nothing,
      firstPausedBy = Core.Nothing,
      hasBuyerPaused = Core.Nothing,
      hasSellerPaused = Core.Nothing,
      sellerPauseReason = Core.Nothing
    }

instance Core.FromJSON DealPauseStatus where
  parseJSON =
    Core.withObject
      "DealPauseStatus"
      ( \o ->
          DealPauseStatus
            Core.<$> (o Core..:? "buyerPauseReason")
            Core.<*> (o Core..:? "firstPausedBy")
            Core.<*> (o Core..:? "hasBuyerPaused")
            Core.<*> (o Core..:? "hasSellerPaused")
            Core.<*> (o Core..:? "sellerPauseReason")
      )

instance Core.ToJSON DealPauseStatus where
  toJSON DealPauseStatus {..} =
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

-- | Message captures metadata about the serving status of a deal.
--
-- /See:/ 'newDealServingMetadata' smart constructor.
newtype DealServingMetadata = DealServingMetadata
  { -- | Output only. Tracks which parties (if any) have paused a deal.
    dealPauseStatus :: (Core.Maybe DealPauseStatus)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DealServingMetadata' with the minimum fields required to make a request.
newDealServingMetadata ::
  DealServingMetadata
newDealServingMetadata = DealServingMetadata {dealPauseStatus = Core.Nothing}

instance Core.FromJSON DealServingMetadata where
  parseJSON =
    Core.withObject
      "DealServingMetadata"
      ( \o ->
          DealServingMetadata
            Core.<$> (o Core..:? "dealPauseStatus")
      )

instance Core.ToJSON DealServingMetadata where
  toJSON DealServingMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("dealPauseStatus" Core..=)
              Core.<$> dealPauseStatus
          ]
      )

-- | The deal terms specify the details of a Product\/deal. They specify things like price per buyer, the type of pricing model (for example, fixed price, auction) and expected impressions from the publisher.
--
-- /See:/ 'newDealTerms' smart constructor.
data DealTerms = DealTerms
  { -- | Visibility of the URL in bid requests. (default: BRANDED)
    brandingType :: (Core.Maybe DealTerms_BrandingType),
    -- | Publisher provided description for the terms.
    description :: (Core.Maybe Core.Text),
    -- | Non-binding estimate of the estimated gross spend for this deal. Can be set by buyer or seller.
    estimatedGrossSpend :: (Core.Maybe Price),
    -- | Non-binding estimate of the impressions served per day. Can be set by buyer or seller.
    estimatedImpressionsPerDay :: (Core.Maybe Core.Int64),
    -- | The terms for guaranteed fixed price deals.
    guaranteedFixedPriceTerms :: (Core.Maybe GuaranteedFixedPriceTerms),
    -- | The terms for non-guaranteed auction deals.
    nonGuaranteedAuctionTerms :: (Core.Maybe NonGuaranteedAuctionTerms),
    -- | The terms for non-guaranteed fixed price deals.
    nonGuaranteedFixedPriceTerms :: (Core.Maybe NonGuaranteedFixedPriceTerms),
    -- | The time zone name. For deals with Cost Per Day billing, defines the time zone used to mark the boundaries of a day. It should be an IANA TZ name, such as \"America\/Los/Angeles\". For more information, see https:\/\/en.wikipedia.org\/wiki\/List/of/tz/database/time/zones.
    sellerTimeZone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DealTerms' with the minimum fields required to make a request.
newDealTerms ::
  DealTerms
newDealTerms =
  DealTerms
    { brandingType = Core.Nothing,
      description = Core.Nothing,
      estimatedGrossSpend = Core.Nothing,
      estimatedImpressionsPerDay = Core.Nothing,
      guaranteedFixedPriceTerms = Core.Nothing,
      nonGuaranteedAuctionTerms = Core.Nothing,
      nonGuaranteedFixedPriceTerms = Core.Nothing,
      sellerTimeZone = Core.Nothing
    }

instance Core.FromJSON DealTerms where
  parseJSON =
    Core.withObject
      "DealTerms"
      ( \o ->
          DealTerms
            Core.<$> (o Core..:? "brandingType")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "estimatedGrossSpend")
            Core.<*> ( o Core..:? "estimatedImpressionsPerDay"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "guaranteedFixedPriceTerms")
            Core.<*> (o Core..:? "nonGuaranteedAuctionTerms")
            Core.<*> (o Core..:? "nonGuaranteedFixedPriceTerms")
            Core.<*> (o Core..:? "sellerTimeZone")
      )

instance Core.ToJSON DealTerms where
  toJSON DealTerms {..} =
    Core.object
      ( Core.catMaybes
          [ ("brandingType" Core..=) Core.<$> brandingType,
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
            ("sellerTimeZone" Core..=) Core.<$> sellerTimeZone
          ]
      )

-- | Message contains details about how the deals will be paced.
--
-- /See:/ 'newDeliveryControl' smart constructor.
data DeliveryControl = DeliveryControl
  { -- | Output only. Specified the creative blocking levels to be applied.
    creativeBlockingLevel :: (Core.Maybe DeliveryControl_CreativeBlockingLevel),
    -- | Output only. Specifies how the impression delivery will be paced.
    deliveryRateType :: (Core.Maybe DeliveryControl_DeliveryRateType),
    -- | Output only. Specifies any frequency caps.
    frequencyCaps :: (Core.Maybe [FrequencyCap])
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

-- | Output only. The reason and details for a disapproval.
--
-- /See:/ 'newDisapproval' smart constructor.
data Disapproval = Disapproval
  { -- | Additional details about the reason for disapproval.
    details :: (Core.Maybe [Core.Text]),
    -- | The categorized reason for disapproval.
    reason :: (Core.Maybe Disapproval_Reason)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Disapproval' with the minimum fields required to make a request.
newDisapproval ::
  Disapproval
newDisapproval = Disapproval {details = Core.Nothing, reason = Core.Nothing}

instance Core.FromJSON Disapproval where
  parseJSON =
    Core.withObject
      "Disapproval"
      ( \o ->
          Disapproval
            Core.<$> (o Core..:? "details")
            Core.<*> (o Core..:? "reason")
      )

instance Core.ToJSON Disapproval where
  toJSON Disapproval {..} =
    Core.object
      ( Core.catMaybes
          [ ("details" Core..=) Core.<$> details,
            ("reason" Core..=) Core.<$> reason
          ]
      )

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON =
    Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

-- | A set of filters that is applied to a request for data. Within a filter set, an AND operation is performed across the filters represented by each field. An OR operation is performed across the filters represented by the multiple values of a repeated field, for example, \"format=VIDEO AND deal/id=12 AND (seller/network/id=34 OR seller/network_id=56)\".
--
-- /See:/ 'newFilterSet' smart constructor.
data FilterSet = FilterSet
  { -- | An absolute date range, defined by a start date and an end date. Interpreted relative to Pacific time zone.
    absoluteDateRange :: (Core.Maybe AbsoluteDateRange),
    -- | The set of dimensions along which to break down the response; may be empty. If multiple dimensions are requested, the breakdown is along the Cartesian product of the requested dimensions.
    breakdownDimensions :: (Core.Maybe [FilterSet_BreakdownDimensionsItem]),
    -- | The ID of the creative on which to filter; optional. This field may be set only for a filter set that accesses account-level troubleshooting data, for example, one whose name matches the @bidders\/*\/accounts\/*\/filterSets\/*@ pattern.
    creativeId :: (Core.Maybe Core.Text),
    -- | The ID of the deal on which to filter; optional. This field may be set only for a filter set that accesses account-level troubleshooting data, for example, one whose name matches the @bidders\/*\/accounts\/*\/filterSets\/*@ pattern.
    dealId :: (Core.Maybe Core.Int64),
    -- | The environment on which to filter; optional.
    environment :: (Core.Maybe FilterSet_Environment),
    -- | Creative format bidded on or allowed to bid on, can be empty.
    format :: (Core.Maybe FilterSet_Format),
    -- | Creative formats bidded on or allowed to bid on, can be empty. Although this field is a list, it can only be populated with a single item. A HTTP 400 bad request error will be returned in the response if you specify multiple items.
    formats :: (Core.Maybe [FilterSet_FormatsItem]),
    -- | A user-defined name of the filter set. Filter set names must be unique globally and match one of the patterns: - @bidders\/*\/filterSets\/*@ (for accessing bidder-level troubleshooting data) - @bidders\/*\/accounts\/*\/filterSets\/*@ (for accessing account-level troubleshooting data) This field is required in create operations.
    name :: (Core.Maybe Core.Text),
    -- | The list of platforms on which to filter; may be empty. The filters represented by multiple platforms are ORed together (for example, if non-empty, results must match any one of the platforms).
    platforms :: (Core.Maybe [FilterSet_PlatformsItem]),
    -- | For Open Bidding partners only. The list of publisher identifiers on which to filter; may be empty. The filters represented by multiple publisher identifiers are ORed together.
    publisherIdentifiers :: (Core.Maybe [Core.Text]),
    -- | An open-ended realtime time range, defined by the aggregation start timestamp.
    realtimeTimeRange :: (Core.Maybe RealtimeTimeRange),
    -- | A relative date range, defined by an offset from today and a duration. Interpreted relative to Pacific time zone.
    relativeDateRange :: (Core.Maybe RelativeDateRange),
    -- | For Authorized Buyers only. The list of IDs of the seller (publisher) networks on which to filter; may be empty. The filters represented by multiple seller network IDs are ORed together (for example, if non-empty, results must match any one of the publisher networks). See <https://developers.google.com/authorized-buyers/rtb/downloads/seller-network-ids seller-network-ids> file for the set of existing seller network IDs.
    sellerNetworkIds :: (Core.Maybe [Core.Int32]),
    -- | The granularity of time intervals if a time series breakdown is preferred; optional.
    timeSeriesGranularity :: (Core.Maybe FilterSet_TimeSeriesGranularity)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FilterSet' with the minimum fields required to make a request.
newFilterSet ::
  FilterSet
newFilterSet =
  FilterSet
    { absoluteDateRange = Core.Nothing,
      breakdownDimensions = Core.Nothing,
      creativeId = Core.Nothing,
      dealId = Core.Nothing,
      environment = Core.Nothing,
      format = Core.Nothing,
      formats = Core.Nothing,
      name = Core.Nothing,
      platforms = Core.Nothing,
      publisherIdentifiers = Core.Nothing,
      realtimeTimeRange = Core.Nothing,
      relativeDateRange = Core.Nothing,
      sellerNetworkIds = Core.Nothing,
      timeSeriesGranularity = Core.Nothing
    }

instance Core.FromJSON FilterSet where
  parseJSON =
    Core.withObject
      "FilterSet"
      ( \o ->
          FilterSet
            Core.<$> (o Core..:? "absoluteDateRange")
            Core.<*> (o Core..:? "breakdownDimensions")
            Core.<*> (o Core..:? "creativeId")
            Core.<*> ( o Core..:? "dealId"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "environment")
            Core.<*> (o Core..:? "format")
            Core.<*> (o Core..:? "formats")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "platforms")
            Core.<*> (o Core..:? "publisherIdentifiers")
            Core.<*> (o Core..:? "realtimeTimeRange")
            Core.<*> (o Core..:? "relativeDateRange")
            Core.<*> (o Core..:? "sellerNetworkIds")
            Core.<*> (o Core..:? "timeSeriesGranularity")
      )

instance Core.ToJSON FilterSet where
  toJSON FilterSet {..} =
    Core.object
      ( Core.catMaybes
          [ ("absoluteDateRange" Core..=)
              Core.<$> absoluteDateRange,
            ("breakdownDimensions" Core..=)
              Core.<$> breakdownDimensions,
            ("creativeId" Core..=) Core.<$> creativeId,
            ("dealId" Core..=) Core.. Core.AsText
              Core.<$> dealId,
            ("environment" Core..=) Core.<$> environment,
            ("format" Core..=) Core.<$> format,
            ("formats" Core..=) Core.<$> formats,
            ("name" Core..=) Core.<$> name,
            ("platforms" Core..=) Core.<$> platforms,
            ("publisherIdentifiers" Core..=)
              Core.<$> publisherIdentifiers,
            ("realtimeTimeRange" Core..=)
              Core.<$> realtimeTimeRange,
            ("relativeDateRange" Core..=)
              Core.<$> relativeDateRange,
            ("sellerNetworkIds" Core..=)
              Core.<$> sellerNetworkIds,
            ("timeSeriesGranularity" Core..=)
              Core.<$> timeSeriesGranularity
          ]
      )

-- | The number of filtered bids with the specified dimension values that have the specified creative.
--
-- /See:/ 'newFilteredBidCreativeRow' smart constructor.
data FilteredBidCreativeRow = FilteredBidCreativeRow
  { -- | The number of bids with the specified creative.
    bidCount :: (Core.Maybe MetricValue),
    -- | The ID of the creative.
    creativeId :: (Core.Maybe Core.Text),
    -- | The values of all dimensions associated with metric values in this row.
    rowDimensions :: (Core.Maybe RowDimensions)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FilteredBidCreativeRow' with the minimum fields required to make a request.
newFilteredBidCreativeRow ::
  FilteredBidCreativeRow
newFilteredBidCreativeRow =
  FilteredBidCreativeRow
    { bidCount = Core.Nothing,
      creativeId = Core.Nothing,
      rowDimensions = Core.Nothing
    }

instance Core.FromJSON FilteredBidCreativeRow where
  parseJSON =
    Core.withObject
      "FilteredBidCreativeRow"
      ( \o ->
          FilteredBidCreativeRow
            Core.<$> (o Core..:? "bidCount")
            Core.<*> (o Core..:? "creativeId")
            Core.<*> (o Core..:? "rowDimensions")
      )

instance Core.ToJSON FilteredBidCreativeRow where
  toJSON FilteredBidCreativeRow {..} =
    Core.object
      ( Core.catMaybes
          [ ("bidCount" Core..=) Core.<$> bidCount,
            ("creativeId" Core..=) Core.<$> creativeId,
            ("rowDimensions" Core..=) Core.<$> rowDimensions
          ]
      )

-- | The number of filtered bids with the specified dimension values, among those filtered due to the requested filtering reason (for example, creative status), that have the specified detail.
--
-- /See:/ 'newFilteredBidDetailRow' smart constructor.
data FilteredBidDetailRow = FilteredBidDetailRow
  { -- | The number of bids with the specified detail.
    bidCount :: (Core.Maybe MetricValue),
    -- | The ID of the detail, can be numeric or text. The associated value can be looked up in the dictionary file corresponding to the DetailType in the response message.
    detail :: (Core.Maybe Core.Text),
    -- | Note: this field will be deprecated, use \"detail\" field instead. When \"detail\" field represents an integer value, this field is populated as the same integer value \"detail\" field represents, otherwise this field will be 0. The ID of the detail. The associated value can be looked up in the dictionary file corresponding to the DetailType in the response message.
    detailId :: (Core.Maybe Core.Int32),
    -- | The values of all dimensions associated with metric values in this row.
    rowDimensions :: (Core.Maybe RowDimensions)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FilteredBidDetailRow' with the minimum fields required to make a request.
newFilteredBidDetailRow ::
  FilteredBidDetailRow
newFilteredBidDetailRow =
  FilteredBidDetailRow
    { bidCount = Core.Nothing,
      detail = Core.Nothing,
      detailId = Core.Nothing,
      rowDimensions = Core.Nothing
    }

instance Core.FromJSON FilteredBidDetailRow where
  parseJSON =
    Core.withObject
      "FilteredBidDetailRow"
      ( \o ->
          FilteredBidDetailRow
            Core.<$> (o Core..:? "bidCount")
            Core.<*> (o Core..:? "detail")
            Core.<*> (o Core..:? "detailId")
            Core.<*> (o Core..:? "rowDimensions")
      )

instance Core.ToJSON FilteredBidDetailRow where
  toJSON FilteredBidDetailRow {..} =
    Core.object
      ( Core.catMaybes
          [ ("bidCount" Core..=) Core.<$> bidCount,
            ("detail" Core..=) Core.<$> detail,
            ("detailId" Core..=) Core.<$> detailId,
            ("rowDimensions" Core..=) Core.<$> rowDimensions
          ]
      )

-- | Represents a list of targeted and excluded mobile application IDs that publishers own. Mobile application IDs are from App Store and Google Play Store. Android App ID, for example, com.google.android.apps.maps, can be found in Google Play Store URL. iOS App ID (which is a number) can be found at the end of iTunes store URL. First party mobile applications is either included or excluded.
--
-- /See:/ 'newFirstPartyMobileApplicationTargeting' smart constructor.
data FirstPartyMobileApplicationTargeting = FirstPartyMobileApplicationTargeting
  { -- | A list of application IDs to be excluded.
    excludedAppIds :: (Core.Maybe [Core.Text]),
    -- | A list of application IDs to be included.
    targetedAppIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FirstPartyMobileApplicationTargeting' with the minimum fields required to make a request.
newFirstPartyMobileApplicationTargeting ::
  FirstPartyMobileApplicationTargeting
newFirstPartyMobileApplicationTargeting =
  FirstPartyMobileApplicationTargeting
    { excludedAppIds = Core.Nothing,
      targetedAppIds = Core.Nothing
    }

instance
  Core.FromJSON
    FirstPartyMobileApplicationTargeting
  where
  parseJSON =
    Core.withObject
      "FirstPartyMobileApplicationTargeting"
      ( \o ->
          FirstPartyMobileApplicationTargeting
            Core.<$> (o Core..:? "excludedAppIds")
            Core.<*> (o Core..:? "targetedAppIds")
      )

instance
  Core.ToJSON
    FirstPartyMobileApplicationTargeting
  where
  toJSON FirstPartyMobileApplicationTargeting {..} =
    Core.object
      ( Core.catMaybes
          [ ("excludedAppIds" Core..=) Core.<$> excludedAppIds,
            ("targetedAppIds" Core..=) Core.<$> targetedAppIds
          ]
      )

-- | Frequency cap.
--
-- /See:/ 'newFrequencyCap' smart constructor.
data FrequencyCap = FrequencyCap
  { -- | The maximum number of impressions that can be served to a user within the specified time period.
    maxImpressions :: (Core.Maybe Core.Int32),
    -- | The amount of time, in the units specified by time/unit/type. Defines the amount of time over which impressions per user are counted and capped.
    numTimeUnits :: (Core.Maybe Core.Int32),
    -- | The time unit. Along with num/time/units defines the amount of time over which impressions per user are counted and capped.
    timeUnitType :: (Core.Maybe FrequencyCap_TimeUnitType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FrequencyCap' with the minimum fields required to make a request.
newFrequencyCap ::
  FrequencyCap
newFrequencyCap =
  FrequencyCap
    { maxImpressions = Core.Nothing,
      numTimeUnits = Core.Nothing,
      timeUnitType = Core.Nothing
    }

instance Core.FromJSON FrequencyCap where
  parseJSON =
    Core.withObject
      "FrequencyCap"
      ( \o ->
          FrequencyCap
            Core.<$> (o Core..:? "maxImpressions")
            Core.<*> (o Core..:? "numTimeUnits")
            Core.<*> (o Core..:? "timeUnitType")
      )

instance Core.ToJSON FrequencyCap where
  toJSON FrequencyCap {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxImpressions" Core..=) Core.<$> maxImpressions,
            ("numTimeUnits" Core..=) Core.<$> numTimeUnits,
            ("timeUnitType" Core..=) Core.<$> timeUnitType
          ]
      )

-- | Terms for Programmatic Guaranteed Deals.
--
-- /See:/ 'newGuaranteedFixedPriceTerms' smart constructor.
data GuaranteedFixedPriceTerms = GuaranteedFixedPriceTerms
  { -- | Fixed price for the specified buyer.
    fixedPrices :: (Core.Maybe [PricePerBuyer]),
    -- | Guaranteed impressions as a percentage. This is the percentage of guaranteed looks that the buyer is guaranteeing to buy.
    guaranteedImpressions :: (Core.Maybe Core.Int64),
    -- | Count of guaranteed looks. Required for deal, optional for product.
    guaranteedLooks :: (Core.Maybe Core.Int64),
    -- | The lifetime impression cap for CPM sponsorship deals. The deal will stop serving when the cap is reached.
    impressionCap :: (Core.Maybe Core.Int64),
    -- | Daily minimum looks for CPD deal types.
    minimumDailyLooks :: (Core.Maybe Core.Int64),
    -- | For sponsorship deals, this is the percentage of the seller\'s eligible impressions that the deal will serve until the cap is reached.
    percentShareOfVoice :: (Core.Maybe Core.Int64),
    -- | The reservation type for a Programmatic Guaranteed deal. This indicates whether the number of impressions is fixed, or a percent of available impressions. If not specified, the default reservation type is STANDARD.
    reservationType :: (Core.Maybe GuaranteedFixedPriceTerms_ReservationType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GuaranteedFixedPriceTerms' with the minimum fields required to make a request.
newGuaranteedFixedPriceTerms ::
  GuaranteedFixedPriceTerms
newGuaranteedFixedPriceTerms =
  GuaranteedFixedPriceTerms
    { fixedPrices = Core.Nothing,
      guaranteedImpressions = Core.Nothing,
      guaranteedLooks = Core.Nothing,
      impressionCap = Core.Nothing,
      minimumDailyLooks = Core.Nothing,
      percentShareOfVoice = Core.Nothing,
      reservationType = Core.Nothing
    }

instance Core.FromJSON GuaranteedFixedPriceTerms where
  parseJSON =
    Core.withObject
      "GuaranteedFixedPriceTerms"
      ( \o ->
          GuaranteedFixedPriceTerms
            Core.<$> (o Core..:? "fixedPrices")
            Core.<*> ( o Core..:? "guaranteedImpressions"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "guaranteedLooks"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "impressionCap"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "minimumDailyLooks"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "percentShareOfVoice"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "reservationType")
      )

instance Core.ToJSON GuaranteedFixedPriceTerms where
  toJSON GuaranteedFixedPriceTerms {..} =
    Core.object
      ( Core.catMaybes
          [ ("fixedPrices" Core..=) Core.<$> fixedPrices,
            ("guaranteedImpressions" Core..=) Core.. Core.AsText
              Core.<$> guaranteedImpressions,
            ("guaranteedLooks" Core..=) Core.. Core.AsText
              Core.<$> guaranteedLooks,
            ("impressionCap" Core..=) Core.. Core.AsText
              Core.<$> impressionCap,
            ("minimumDailyLooks" Core..=) Core.. Core.AsText
              Core.<$> minimumDailyLooks,
            ("percentShareOfVoice" Core..=) Core.. Core.AsText
              Core.<$> percentShareOfVoice,
            ("reservationType" Core..=)
              Core.<$> reservationType
          ]
      )

-- | HTML content for a creative.
--
-- /See:/ 'newHtmlContent' smart constructor.
data HtmlContent = HtmlContent
  { -- | The height of the HTML snippet in pixels.
    height :: (Core.Maybe Core.Int32),
    -- | The HTML snippet that displays the ad when inserted in the web page.
    snippet :: (Core.Maybe Core.Text),
    -- | The width of the HTML snippet in pixels.
    width :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HtmlContent' with the minimum fields required to make a request.
newHtmlContent ::
  HtmlContent
newHtmlContent =
  HtmlContent
    { height = Core.Nothing,
      snippet = Core.Nothing,
      width = Core.Nothing
    }

instance Core.FromJSON HtmlContent where
  parseJSON =
    Core.withObject
      "HtmlContent"
      ( \o ->
          HtmlContent
            Core.<$> (o Core..:? "height")
            Core.<*> (o Core..:? "snippet")
            Core.<*> (o Core..:? "width")
      )

instance Core.ToJSON HtmlContent where
  toJSON HtmlContent {..} =
    Core.object
      ( Core.catMaybes
          [ ("height" Core..=) Core.<$> height,
            ("snippet" Core..=) Core.<$> snippet,
            ("width" Core..=) Core.<$> width
          ]
      )

-- | An image resource. You may provide a larger image than was requested, so long as the aspect ratio is preserved.
--
-- /See:/ 'newImage' smart constructor.
data Image = Image
  { -- | Image height in pixels.
    height :: (Core.Maybe Core.Int32),
    -- | The URL of the image.
    url :: (Core.Maybe Core.Text),
    -- | Image width in pixels.
    width :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Image' with the minimum fields required to make a request.
newImage ::
  Image
newImage =
  Image {height = Core.Nothing, url = Core.Nothing, width = Core.Nothing}

instance Core.FromJSON Image where
  parseJSON =
    Core.withObject
      "Image"
      ( \o ->
          Image
            Core.<$> (o Core..:? "height")
            Core.<*> (o Core..:? "url")
            Core.<*> (o Core..:? "width")
      )

instance Core.ToJSON Image where
  toJSON Image {..} =
    Core.object
      ( Core.catMaybes
          [ ("height" Core..=) Core.<$> height,
            ("url" Core..=) Core.<$> url,
            ("width" Core..=) Core.<$> width
          ]
      )

-- | The set of metrics that are measured in numbers of impressions, representing how many impressions with the specified dimension values were considered eligible at each stage of the bidding funnel.
--
-- /See:/ 'newImpressionMetricsRow' smart constructor.
data ImpressionMetricsRow = ImpressionMetricsRow
  { -- | The number of impressions available to the buyer on Ad Exchange. In some cases this value may be unavailable.
    availableImpressions :: (Core.Maybe MetricValue),
    -- | The number of impressions for which Ad Exchange sent the buyer a bid request.
    bidRequests :: (Core.Maybe MetricValue),
    -- | The number of impressions that match the buyer\'s inventory pretargeting.
    inventoryMatches :: (Core.Maybe MetricValue),
    -- | The number of impressions for which Ad Exchange received a response from the buyer that contained at least one applicable bid.
    responsesWithBids :: (Core.Maybe MetricValue),
    -- | The values of all dimensions associated with metric values in this row.
    rowDimensions :: (Core.Maybe RowDimensions),
    -- | The number of impressions for which the buyer successfully sent a response to Ad Exchange.
    successfulResponses :: (Core.Maybe MetricValue)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImpressionMetricsRow' with the minimum fields required to make a request.
newImpressionMetricsRow ::
  ImpressionMetricsRow
newImpressionMetricsRow =
  ImpressionMetricsRow
    { availableImpressions = Core.Nothing,
      bidRequests = Core.Nothing,
      inventoryMatches = Core.Nothing,
      responsesWithBids = Core.Nothing,
      rowDimensions = Core.Nothing,
      successfulResponses = Core.Nothing
    }

instance Core.FromJSON ImpressionMetricsRow where
  parseJSON =
    Core.withObject
      "ImpressionMetricsRow"
      ( \o ->
          ImpressionMetricsRow
            Core.<$> (o Core..:? "availableImpressions")
            Core.<*> (o Core..:? "bidRequests")
            Core.<*> (o Core..:? "inventoryMatches")
            Core.<*> (o Core..:? "responsesWithBids")
            Core.<*> (o Core..:? "rowDimensions")
            Core.<*> (o Core..:? "successfulResponses")
      )

instance Core.ToJSON ImpressionMetricsRow where
  toJSON ImpressionMetricsRow {..} =
    Core.object
      ( Core.catMaybes
          [ ("availableImpressions" Core..=)
              Core.<$> availableImpressions,
            ("bidRequests" Core..=) Core.<$> bidRequests,
            ("inventoryMatches" Core..=)
              Core.<$> inventoryMatches,
            ("responsesWithBids" Core..=)
              Core.<$> responsesWithBids,
            ("rowDimensions" Core..=) Core.<$> rowDimensions,
            ("successfulResponses" Core..=)
              Core.<$> successfulResponses
          ]
      )

-- | Represents the size of an ad unit that can be targeted on an ad request. It only applies to Private Auction, AdX Preferred Deals and Auction Packages. This targeting does not apply to Programmatic Guaranteed and Preferred Deals in Ad Manager.
--
-- /See:/ 'newInventorySizeTargeting' smart constructor.
data InventorySizeTargeting = InventorySizeTargeting
  { -- | A list of inventory sizes to be excluded.
    excludedInventorySizes :: (Core.Maybe [AdSize]),
    -- | A list of inventory sizes to be included.
    targetedInventorySizes :: (Core.Maybe [AdSize])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InventorySizeTargeting' with the minimum fields required to make a request.
newInventorySizeTargeting ::
  InventorySizeTargeting
newInventorySizeTargeting =
  InventorySizeTargeting
    { excludedInventorySizes = Core.Nothing,
      targetedInventorySizes = Core.Nothing
    }

instance Core.FromJSON InventorySizeTargeting where
  parseJSON =
    Core.withObject
      "InventorySizeTargeting"
      ( \o ->
          InventorySizeTargeting
            Core.<$> (o Core..:? "excludedInventorySizes")
            Core.<*> (o Core..:? "targetedInventorySizes")
      )

instance Core.ToJSON InventorySizeTargeting where
  toJSON InventorySizeTargeting {..} =
    Core.object
      ( Core.catMaybes
          [ ("excludedInventorySizes" Core..=)
              Core.<$> excludedInventorySizes,
            ("targetedInventorySizes" Core..=)
              Core.<$> targetedInventorySizes
          ]
      )

-- | Response message for listing the metrics that are measured in number of bids.
--
-- /See:/ 'newListBidMetricsResponse' smart constructor.
data ListBidMetricsResponse = ListBidMetricsResponse
  { -- | List of rows, each containing a set of bid metrics.
    bidMetricsRows :: (Core.Maybe [BidMetricsRow]),
    -- | A token to retrieve the next page of results. Pass this value in the ListBidMetricsRequest.pageToken field in the subsequent call to the bidMetrics.list method to retrieve the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListBidMetricsResponse' with the minimum fields required to make a request.
newListBidMetricsResponse ::
  ListBidMetricsResponse
newListBidMetricsResponse =
  ListBidMetricsResponse
    { bidMetricsRows = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListBidMetricsResponse where
  parseJSON =
    Core.withObject
      "ListBidMetricsResponse"
      ( \o ->
          ListBidMetricsResponse
            Core.<$> (o Core..:? "bidMetricsRows")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListBidMetricsResponse where
  toJSON ListBidMetricsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("bidMetricsRows" Core..=) Core.<$> bidMetricsRows,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response message for listing all reasons that bid responses resulted in an error.
--
-- /See:/ 'newListBidResponseErrorsResponse' smart constructor.
data ListBidResponseErrorsResponse = ListBidResponseErrorsResponse
  { -- | List of rows, with counts of bid responses aggregated by callout status.
    calloutStatusRows :: (Core.Maybe [CalloutStatusRow]),
    -- | A token to retrieve the next page of results. Pass this value in the ListBidResponseErrorsRequest.pageToken field in the subsequent call to the bidResponseErrors.list method to retrieve the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListBidResponseErrorsResponse' with the minimum fields required to make a request.
newListBidResponseErrorsResponse ::
  ListBidResponseErrorsResponse
newListBidResponseErrorsResponse =
  ListBidResponseErrorsResponse
    { calloutStatusRows = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListBidResponseErrorsResponse where
  parseJSON =
    Core.withObject
      "ListBidResponseErrorsResponse"
      ( \o ->
          ListBidResponseErrorsResponse
            Core.<$> (o Core..:? "calloutStatusRows")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListBidResponseErrorsResponse where
  toJSON ListBidResponseErrorsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("calloutStatusRows" Core..=)
              Core.<$> calloutStatusRows,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response message for listing all reasons that bid responses were considered to have no applicable bids.
--
-- /See:/ 'newListBidResponsesWithoutBidsResponse' smart constructor.
data ListBidResponsesWithoutBidsResponse = ListBidResponsesWithoutBidsResponse
  { -- | List of rows, with counts of bid responses without bids aggregated by status.
    bidResponseWithoutBidsStatusRows :: (Core.Maybe [BidResponseWithoutBidsStatusRow]),
    -- | A token to retrieve the next page of results. Pass this value in the ListBidResponsesWithoutBidsRequest.pageToken field in the subsequent call to the bidResponsesWithoutBids.list method to retrieve the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListBidResponsesWithoutBidsResponse' with the minimum fields required to make a request.
newListBidResponsesWithoutBidsResponse ::
  ListBidResponsesWithoutBidsResponse
newListBidResponsesWithoutBidsResponse =
  ListBidResponsesWithoutBidsResponse
    { bidResponseWithoutBidsStatusRows = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance
  Core.FromJSON
    ListBidResponsesWithoutBidsResponse
  where
  parseJSON =
    Core.withObject
      "ListBidResponsesWithoutBidsResponse"
      ( \o ->
          ListBidResponsesWithoutBidsResponse
            Core.<$> (o Core..:? "bidResponseWithoutBidsStatusRows")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance
  Core.ToJSON
    ListBidResponsesWithoutBidsResponse
  where
  toJSON ListBidResponsesWithoutBidsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("bidResponseWithoutBidsStatusRows" Core..=)
              Core.<$> bidResponseWithoutBidsStatusRows,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

--
-- /See:/ 'newListClientUserInvitationsResponse' smart constructor.
data ListClientUserInvitationsResponse = ListClientUserInvitationsResponse
  { -- | The returned list of client users.
    invitations :: (Core.Maybe [ClientUserInvitation]),
    -- | A token to retrieve the next page of results. Pass this value in the ListClientUserInvitationsRequest.pageToken field in the subsequent call to the clients.invitations.list method to retrieve the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListClientUserInvitationsResponse' with the minimum fields required to make a request.
newListClientUserInvitationsResponse ::
  ListClientUserInvitationsResponse
newListClientUserInvitationsResponse =
  ListClientUserInvitationsResponse
    { invitations = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance
  Core.FromJSON
    ListClientUserInvitationsResponse
  where
  parseJSON =
    Core.withObject
      "ListClientUserInvitationsResponse"
      ( \o ->
          ListClientUserInvitationsResponse
            Core.<$> (o Core..:? "invitations")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance
  Core.ToJSON
    ListClientUserInvitationsResponse
  where
  toJSON ListClientUserInvitationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("invitations" Core..=) Core.<$> invitations,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

--
-- /See:/ 'newListClientUsersResponse' smart constructor.
data ListClientUsersResponse = ListClientUsersResponse
  { -- | A token to retrieve the next page of results. Pass this value in the ListClientUsersRequest.pageToken field in the subsequent call to the clients.invitations.list method to retrieve the next page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The returned list of client users.
    users :: (Core.Maybe [ClientUser])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListClientUsersResponse' with the minimum fields required to make a request.
newListClientUsersResponse ::
  ListClientUsersResponse
newListClientUsersResponse =
  ListClientUsersResponse {nextPageToken = Core.Nothing, users = Core.Nothing}

instance Core.FromJSON ListClientUsersResponse where
  parseJSON =
    Core.withObject
      "ListClientUsersResponse"
      ( \o ->
          ListClientUsersResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "users")
      )

instance Core.ToJSON ListClientUsersResponse where
  toJSON ListClientUsersResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("users" Core..=) Core.<$> users
          ]
      )

--
-- /See:/ 'newListClientsResponse' smart constructor.
data ListClientsResponse = ListClientsResponse
  { -- | The returned list of clients.
    clients :: (Core.Maybe [Client]),
    -- | A token to retrieve the next page of results. Pass this value in the ListClientsRequest.pageToken field in the subsequent call to the accounts.clients.list method to retrieve the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListClientsResponse' with the minimum fields required to make a request.
newListClientsResponse ::
  ListClientsResponse
newListClientsResponse =
  ListClientsResponse {clients = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListClientsResponse where
  parseJSON =
    Core.withObject
      "ListClientsResponse"
      ( \o ->
          ListClientsResponse
            Core.<$> (o Core..:? "clients")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListClientsResponse where
  toJSON ListClientsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("clients" Core..=) Core.<$> clients,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response message for listing all creatives associated with a given filtered bid reason.
--
-- /See:/ 'newListCreativeStatusBreakdownByCreativeResponse' smart constructor.
data ListCreativeStatusBreakdownByCreativeResponse = ListCreativeStatusBreakdownByCreativeResponse
  { -- | List of rows, with counts of bids with a given creative status aggregated by creative.
    filteredBidCreativeRows :: (Core.Maybe [FilteredBidCreativeRow]),
    -- | A token to retrieve the next page of results. Pass this value in the ListCreativeStatusBreakdownByCreativeRequest.pageToken field in the subsequent call to the filteredBids.creatives.list method to retrieve the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListCreativeStatusBreakdownByCreativeResponse' with the minimum fields required to make a request.
newListCreativeStatusBreakdownByCreativeResponse ::
  ListCreativeStatusBreakdownByCreativeResponse
newListCreativeStatusBreakdownByCreativeResponse =
  ListCreativeStatusBreakdownByCreativeResponse
    { filteredBidCreativeRows = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance
  Core.FromJSON
    ListCreativeStatusBreakdownByCreativeResponse
  where
  parseJSON =
    Core.withObject
      "ListCreativeStatusBreakdownByCreativeResponse"
      ( \o ->
          ListCreativeStatusBreakdownByCreativeResponse
            Core.<$> (o Core..:? "filteredBidCreativeRows")
              Core.<*> (o Core..:? "nextPageToken")
      )

instance
  Core.ToJSON
    ListCreativeStatusBreakdownByCreativeResponse
  where
  toJSON
    ListCreativeStatusBreakdownByCreativeResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("filteredBidCreativeRows" Core..=)
                Core.<$> filteredBidCreativeRows,
              ("nextPageToken" Core..=) Core.<$> nextPageToken
            ]
        )

-- | Response message for listing all details associated with a given filtered bid reason.
--
-- /See:/ 'newListCreativeStatusBreakdownByDetailResponse' smart constructor.
data ListCreativeStatusBreakdownByDetailResponse = ListCreativeStatusBreakdownByDetailResponse
  { -- | The type of detail that the detail IDs represent.
    detailType :: (Core.Maybe ListCreativeStatusBreakdownByDetailResponse_DetailType),
    -- | List of rows, with counts of bids with a given creative status aggregated by detail.
    filteredBidDetailRows :: (Core.Maybe [FilteredBidDetailRow]),
    -- | A token to retrieve the next page of results. Pass this value in the ListCreativeStatusBreakdownByDetailRequest.pageToken field in the subsequent call to the filteredBids.details.list method to retrieve the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListCreativeStatusBreakdownByDetailResponse' with the minimum fields required to make a request.
newListCreativeStatusBreakdownByDetailResponse ::
  ListCreativeStatusBreakdownByDetailResponse
newListCreativeStatusBreakdownByDetailResponse =
  ListCreativeStatusBreakdownByDetailResponse
    { detailType = Core.Nothing,
      filteredBidDetailRows = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance
  Core.FromJSON
    ListCreativeStatusBreakdownByDetailResponse
  where
  parseJSON =
    Core.withObject
      "ListCreativeStatusBreakdownByDetailResponse"
      ( \o ->
          ListCreativeStatusBreakdownByDetailResponse
            Core.<$> (o Core..:? "detailType")
            Core.<*> (o Core..:? "filteredBidDetailRows")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance
  Core.ToJSON
    ListCreativeStatusBreakdownByDetailResponse
  where
  toJSON
    ListCreativeStatusBreakdownByDetailResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("detailType" Core..=) Core.<$> detailType,
              ("filteredBidDetailRows" Core..=)
                Core.<$> filteredBidDetailRows,
              ("nextPageToken" Core..=) Core.<$> nextPageToken
            ]
        )

-- | A response for listing creatives.
--
-- /See:/ 'newListCreativesResponse' smart constructor.
data ListCreativesResponse = ListCreativesResponse
  { -- | The list of creatives.
    creatives :: (Core.Maybe [Creative]),
    -- | A token to retrieve the next page of results. Pass this value in the ListCreativesRequest.page_token field in the subsequent call to @ListCreatives@ method to retrieve the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListCreativesResponse' with the minimum fields required to make a request.
newListCreativesResponse ::
  ListCreativesResponse
newListCreativesResponse =
  ListCreativesResponse {creatives = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListCreativesResponse where
  parseJSON =
    Core.withObject
      "ListCreativesResponse"
      ( \o ->
          ListCreativesResponse
            Core.<$> (o Core..:? "creatives")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListCreativesResponse where
  toJSON ListCreativesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("creatives" Core..=) Core.<$> creatives,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | A response for listing creative and deal associations
--
-- /See:/ 'newListDealAssociationsResponse' smart constructor.
data ListDealAssociationsResponse = ListDealAssociationsResponse
  { -- | The list of associations.
    associations :: (Core.Maybe [CreativeDealAssociation]),
    -- | A token to retrieve the next page of results. Pass this value in the ListDealAssociationsRequest.page_token field in the subsequent call to \'ListDealAssociation\' method to retrieve the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListDealAssociationsResponse' with the minimum fields required to make a request.
newListDealAssociationsResponse ::
  ListDealAssociationsResponse
newListDealAssociationsResponse =
  ListDealAssociationsResponse
    { associations = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListDealAssociationsResponse where
  parseJSON =
    Core.withObject
      "ListDealAssociationsResponse"
      ( \o ->
          ListDealAssociationsResponse
            Core.<$> (o Core..:? "associations")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListDealAssociationsResponse where
  toJSON ListDealAssociationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("associations" Core..=) Core.<$> associations,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response message for listing filter sets.
--
-- /See:/ 'newListFilterSetsResponse' smart constructor.
data ListFilterSetsResponse = ListFilterSetsResponse
  { -- | The filter sets belonging to the buyer.
    filterSets :: (Core.Maybe [FilterSet]),
    -- | A token to retrieve the next page of results. Pass this value in the ListFilterSetsRequest.pageToken field in the subsequent call to the accounts.filterSets.list method to retrieve the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListFilterSetsResponse' with the minimum fields required to make a request.
newListFilterSetsResponse ::
  ListFilterSetsResponse
newListFilterSetsResponse =
  ListFilterSetsResponse
    { filterSets = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListFilterSetsResponse where
  parseJSON =
    Core.withObject
      "ListFilterSetsResponse"
      ( \o ->
          ListFilterSetsResponse
            Core.<$> (o Core..:? "filterSets")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListFilterSetsResponse where
  toJSON ListFilterSetsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("filterSets" Core..=) Core.<$> filterSets,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response message for listing all reasons that bid requests were filtered and not sent to the buyer.
--
-- /See:/ 'newListFilteredBidRequestsResponse' smart constructor.
data ListFilteredBidRequestsResponse = ListFilteredBidRequestsResponse
  { -- | List of rows, with counts of filtered bid requests aggregated by callout status.
    calloutStatusRows :: (Core.Maybe [CalloutStatusRow]),
    -- | A token to retrieve the next page of results. Pass this value in the ListFilteredBidRequestsRequest.pageToken field in the subsequent call to the filteredBidRequests.list method to retrieve the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListFilteredBidRequestsResponse' with the minimum fields required to make a request.
newListFilteredBidRequestsResponse ::
  ListFilteredBidRequestsResponse
newListFilteredBidRequestsResponse =
  ListFilteredBidRequestsResponse
    { calloutStatusRows = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance
  Core.FromJSON
    ListFilteredBidRequestsResponse
  where
  parseJSON =
    Core.withObject
      "ListFilteredBidRequestsResponse"
      ( \o ->
          ListFilteredBidRequestsResponse
            Core.<$> (o Core..:? "calloutStatusRows")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListFilteredBidRequestsResponse where
  toJSON ListFilteredBidRequestsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("calloutStatusRows" Core..=)
              Core.<$> calloutStatusRows,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response message for listing all reasons that bids were filtered from the auction.
--
-- /See:/ 'newListFilteredBidsResponse' smart constructor.
data ListFilteredBidsResponse = ListFilteredBidsResponse
  { -- | List of rows, with counts of filtered bids aggregated by filtering reason (for example, creative status).
    creativeStatusRows :: (Core.Maybe [CreativeStatusRow]),
    -- | A token to retrieve the next page of results. Pass this value in the ListFilteredBidsRequest.pageToken field in the subsequent call to the filteredBids.list method to retrieve the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListFilteredBidsResponse' with the minimum fields required to make a request.
newListFilteredBidsResponse ::
  ListFilteredBidsResponse
newListFilteredBidsResponse =
  ListFilteredBidsResponse
    { creativeStatusRows = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListFilteredBidsResponse where
  parseJSON =
    Core.withObject
      "ListFilteredBidsResponse"
      ( \o ->
          ListFilteredBidsResponse
            Core.<$> (o Core..:? "creativeStatusRows")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListFilteredBidsResponse where
  toJSON ListFilteredBidsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("creativeStatusRows" Core..=)
              Core.<$> creativeStatusRows,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response message for listing the metrics that are measured in number of impressions.
--
-- /See:/ 'newListImpressionMetricsResponse' smart constructor.
data ListImpressionMetricsResponse = ListImpressionMetricsResponse
  { -- | List of rows, each containing a set of impression metrics.
    impressionMetricsRows :: (Core.Maybe [ImpressionMetricsRow]),
    -- | A token to retrieve the next page of results. Pass this value in the ListImpressionMetricsRequest.pageToken field in the subsequent call to the impressionMetrics.list method to retrieve the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListImpressionMetricsResponse' with the minimum fields required to make a request.
newListImpressionMetricsResponse ::
  ListImpressionMetricsResponse
newListImpressionMetricsResponse =
  ListImpressionMetricsResponse
    { impressionMetricsRows = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListImpressionMetricsResponse where
  parseJSON =
    Core.withObject
      "ListImpressionMetricsResponse"
      ( \o ->
          ListImpressionMetricsResponse
            Core.<$> (o Core..:? "impressionMetricsRows")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListImpressionMetricsResponse where
  toJSON ListImpressionMetricsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("impressionMetricsRows" Core..=)
              Core.<$> impressionMetricsRows,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response message for listing all reasons that bids lost in the auction.
--
-- /See:/ 'newListLosingBidsResponse' smart constructor.
data ListLosingBidsResponse = ListLosingBidsResponse
  { -- | List of rows, with counts of losing bids aggregated by loss reason (for example, creative status).
    creativeStatusRows :: (Core.Maybe [CreativeStatusRow]),
    -- | A token to retrieve the next page of results. Pass this value in the ListLosingBidsRequest.pageToken field in the subsequent call to the losingBids.list method to retrieve the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListLosingBidsResponse' with the minimum fields required to make a request.
newListLosingBidsResponse ::
  ListLosingBidsResponse
newListLosingBidsResponse =
  ListLosingBidsResponse
    { creativeStatusRows = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListLosingBidsResponse where
  parseJSON =
    Core.withObject
      "ListLosingBidsResponse"
      ( \o ->
          ListLosingBidsResponse
            Core.<$> (o Core..:? "creativeStatusRows")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListLosingBidsResponse where
  toJSON ListLosingBidsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("creativeStatusRows" Core..=)
              Core.<$> creativeStatusRows,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response message for listing all reasons for which a buyer was not billed for a winning bid.
--
-- /See:/ 'newListNonBillableWinningBidsResponse' smart constructor.
data ListNonBillableWinningBidsResponse = ListNonBillableWinningBidsResponse
  { -- | A token to retrieve the next page of results. Pass this value in the ListNonBillableWinningBidsRequest.pageToken field in the subsequent call to the nonBillableWinningBids.list method to retrieve the next page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | List of rows, with counts of bids not billed aggregated by reason.
    nonBillableWinningBidStatusRows :: (Core.Maybe [NonBillableWinningBidStatusRow])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListNonBillableWinningBidsResponse' with the minimum fields required to make a request.
newListNonBillableWinningBidsResponse ::
  ListNonBillableWinningBidsResponse
newListNonBillableWinningBidsResponse =
  ListNonBillableWinningBidsResponse
    { nextPageToken = Core.Nothing,
      nonBillableWinningBidStatusRows = Core.Nothing
    }

instance
  Core.FromJSON
    ListNonBillableWinningBidsResponse
  where
  parseJSON =
    Core.withObject
      "ListNonBillableWinningBidsResponse"
      ( \o ->
          ListNonBillableWinningBidsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "nonBillableWinningBidStatusRows")
      )

instance
  Core.ToJSON
    ListNonBillableWinningBidsResponse
  where
  toJSON ListNonBillableWinningBidsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("nonBillableWinningBidStatusRows" Core..=)
              Core.<$> nonBillableWinningBidStatusRows
          ]
      )

-- | Response message for listing products visible to the buyer.
--
-- /See:/ 'newListProductsResponse' smart constructor.
data ListProductsResponse = ListProductsResponse
  { -- | List pagination support.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The list of matching products at their head revision number.
    products :: (Core.Maybe [Product])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListProductsResponse' with the minimum fields required to make a request.
newListProductsResponse ::
  ListProductsResponse
newListProductsResponse =
  ListProductsResponse {nextPageToken = Core.Nothing, products = Core.Nothing}

instance Core.FromJSON ListProductsResponse where
  parseJSON =
    Core.withObject
      "ListProductsResponse"
      ( \o ->
          ListProductsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "products")
      )

instance Core.ToJSON ListProductsResponse where
  toJSON ListProductsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("products" Core..=) Core.<$> products
          ]
      )

-- | Response message for listing proposals.
--
-- /See:/ 'newListProposalsResponse' smart constructor.
data ListProposalsResponse = ListProposalsResponse
  { -- | Continuation token for fetching the next page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The list of proposals.
    proposals :: (Core.Maybe [Proposal])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListProposalsResponse' with the minimum fields required to make a request.
newListProposalsResponse ::
  ListProposalsResponse
newListProposalsResponse =
  ListProposalsResponse {nextPageToken = Core.Nothing, proposals = Core.Nothing}

instance Core.FromJSON ListProposalsResponse where
  parseJSON =
    Core.withObject
      "ListProposalsResponse"
      ( \o ->
          ListProposalsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "proposals")
      )

instance Core.ToJSON ListProposalsResponse where
  toJSON ListProposalsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("proposals" Core..=) Core.<$> proposals
          ]
      )

-- | Response message for profiles visible to the buyer.
--
-- /See:/ 'newListPublisherProfilesResponse' smart constructor.
data ListPublisherProfilesResponse = ListPublisherProfilesResponse
  { -- | List pagination support
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The list of matching publisher profiles.
    publisherProfiles :: (Core.Maybe [PublisherProfile])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListPublisherProfilesResponse' with the minimum fields required to make a request.
newListPublisherProfilesResponse ::
  ListPublisherProfilesResponse
newListPublisherProfilesResponse =
  ListPublisherProfilesResponse
    { nextPageToken = Core.Nothing,
      publisherProfiles = Core.Nothing
    }

instance Core.FromJSON ListPublisherProfilesResponse where
  parseJSON =
    Core.withObject
      "ListPublisherProfilesResponse"
      ( \o ->
          ListPublisherProfilesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "publisherProfiles")
      )

instance Core.ToJSON ListPublisherProfilesResponse where
  toJSON ListPublisherProfilesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("publisherProfiles" Core..=)
              Core.<$> publisherProfiles
          ]
      )

-- | Output only. The Geo criteria the restriction applies to.
--
-- /See:/ 'newLocationContext' smart constructor.
newtype LocationContext = LocationContext
  { -- | IDs representing the geo location for this context. Refer to the <https://storage.googleapis.com/adx-rtb-dictionaries/geo-table.csv geo-table.csv> file for different geo criteria IDs.
    geoCriteriaIds :: (Core.Maybe [Core.Int32])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LocationContext' with the minimum fields required to make a request.
newLocationContext ::
  LocationContext
newLocationContext = LocationContext {geoCriteriaIds = Core.Nothing}

instance Core.FromJSON LocationContext where
  parseJSON =
    Core.withObject
      "LocationContext"
      ( \o ->
          LocationContext
            Core.<$> (o Core..:? "geoCriteriaIds")
      )

instance Core.ToJSON LocationContext where
  toJSON LocationContext {..} =
    Core.object
      ( Core.catMaybes
          [("geoCriteriaIds" Core..=) Core.<$> geoCriteriaIds]
      )

-- | Targeting represents different criteria that can be used by advertisers to target ad inventory. For example, they can choose to target ad requests only if the user is in the US. Multiple types of targeting are always applied as a logical AND, unless noted otherwise.
--
-- /See:/ 'newMarketplaceTargeting' smart constructor.
data MarketplaceTargeting = MarketplaceTargeting
  { -- | Geo criteria IDs to be included\/excluded.
    geoTargeting :: (Core.Maybe CriteriaTargeting),
    -- | Inventory sizes to be included\/excluded.
    inventorySizeTargeting :: (Core.Maybe InventorySizeTargeting),
    -- | Placement targeting information, for example, URL, mobile applications.
    placementTargeting :: (Core.Maybe PlacementTargeting),
    -- | Technology targeting information, for example, operating system, device category.
    technologyTargeting :: (Core.Maybe TechnologyTargeting),
    -- | Video targeting information.
    videoTargeting :: (Core.Maybe VideoTargeting)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MarketplaceTargeting' with the minimum fields required to make a request.
newMarketplaceTargeting ::
  MarketplaceTargeting
newMarketplaceTargeting =
  MarketplaceTargeting
    { geoTargeting = Core.Nothing,
      inventorySizeTargeting = Core.Nothing,
      placementTargeting = Core.Nothing,
      technologyTargeting = Core.Nothing,
      videoTargeting = Core.Nothing
    }

instance Core.FromJSON MarketplaceTargeting where
  parseJSON =
    Core.withObject
      "MarketplaceTargeting"
      ( \o ->
          MarketplaceTargeting
            Core.<$> (o Core..:? "geoTargeting")
            Core.<*> (o Core..:? "inventorySizeTargeting")
            Core.<*> (o Core..:? "placementTargeting")
            Core.<*> (o Core..:? "technologyTargeting")
            Core.<*> (o Core..:? "videoTargeting")
      )

instance Core.ToJSON MarketplaceTargeting where
  toJSON MarketplaceTargeting {..} =
    Core.object
      ( Core.catMaybes
          [ ("geoTargeting" Core..=) Core.<$> geoTargeting,
            ("inventorySizeTargeting" Core..=)
              Core.<$> inventorySizeTargeting,
            ("placementTargeting" Core..=)
              Core.<$> placementTargeting,
            ("technologyTargeting" Core..=)
              Core.<$> technologyTargeting,
            ("videoTargeting" Core..=) Core.<$> videoTargeting
          ]
      )

-- | A metric value, with an expected value and a variance; represents a count that may be either exact or estimated (for example, when sampled).
--
-- /See:/ 'newMetricValue' smart constructor.
data MetricValue = MetricValue
  { -- | The expected value of the metric.
    value :: (Core.Maybe Core.Int64),
    -- | The variance (for example, square of the standard deviation) of the metric value. If value is exact, variance is 0. Can be used to calculate margin of error as a percentage of value, using the following formula, where Z is the standard constant that depends on the preferred size of the confidence interval (for example, for 90% confidence interval, use Z = 1.645): marginOfError = 100 * Z * sqrt(variance) \/ value
    variance :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MetricValue' with the minimum fields required to make a request.
newMetricValue ::
  MetricValue
newMetricValue = MetricValue {value = Core.Nothing, variance = Core.Nothing}

instance Core.FromJSON MetricValue where
  parseJSON =
    Core.withObject
      "MetricValue"
      ( \o ->
          MetricValue
            Core.<$> ( o Core..:? "value"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "variance"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON MetricValue where
  toJSON MetricValue {..} =
    Core.object
      ( Core.catMaybes
          [ ("value" Core..=) Core.. Core.AsText Core.<$> value,
            ("variance" Core..=) Core.. Core.AsText
              Core.<$> variance
          ]
      )

-- | Mobile application targeting settings.
--
-- /See:/ 'newMobileApplicationTargeting' smart constructor.
newtype MobileApplicationTargeting = MobileApplicationTargeting
  { -- | Publisher owned apps to be targeted or excluded by the publisher to display the ads in.
    firstPartyTargeting :: (Core.Maybe FirstPartyMobileApplicationTargeting)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MobileApplicationTargeting' with the minimum fields required to make a request.
newMobileApplicationTargeting ::
  MobileApplicationTargeting
newMobileApplicationTargeting =
  MobileApplicationTargeting {firstPartyTargeting = Core.Nothing}

instance Core.FromJSON MobileApplicationTargeting where
  parseJSON =
    Core.withObject
      "MobileApplicationTargeting"
      ( \o ->
          MobileApplicationTargeting
            Core.<$> (o Core..:? "firstPartyTargeting")
      )

instance Core.ToJSON MobileApplicationTargeting where
  toJSON MobileApplicationTargeting {..} =
    Core.object
      ( Core.catMaybes
          [ ("firstPartyTargeting" Core..=)
              Core.<$> firstPartyTargeting
          ]
      )

-- | Represents an amount of money with its currency type.
--
-- /See:/ 'newMoney' smart constructor.
data Money = Money
  { -- | The three-letter currency code defined in ISO 4217.
    currencyCode :: (Core.Maybe Core.Text),
    -- | Number of nano (10^-9) units of the amount. The value must be between -999,999,999 and +999,999,999 inclusive. If @units@ is positive, @nanos@ must be positive or zero. If @units@ is zero, @nanos@ can be positive, zero, or negative. If @units@ is negative, @nanos@ must be negative or zero. For example $-1.75 is represented as @units@=-1 and @nanos@=-750,000,000.
    nanos :: (Core.Maybe Core.Int32),
    -- | The whole units of the amount. For example if @currencyCode@ is @\"USD\"@, then 1 unit is one US dollar.
    units :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Money' with the minimum fields required to make a request.
newMoney ::
  Money
newMoney =
  Money
    { currencyCode = Core.Nothing,
      nanos = Core.Nothing,
      units = Core.Nothing
    }

instance Core.FromJSON Money where
  parseJSON =
    Core.withObject
      "Money"
      ( \o ->
          Money
            Core.<$> (o Core..:? "currencyCode")
            Core.<*> (o Core..:? "nanos")
            Core.<*> ( o Core..:? "units"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON Money where
  toJSON Money {..} =
    Core.object
      ( Core.catMaybes
          [ ("currencyCode" Core..=) Core.<$> currencyCode,
            ("nanos" Core..=) Core.<$> nanos,
            ("units" Core..=) Core.. Core.AsText Core.<$> units
          ]
      )

-- | Native content for a creative.
--
-- /See:/ 'newNativeContent' smart constructor.
data NativeContent = NativeContent
  { -- | The name of the advertiser or sponsor, to be displayed in the ad creative.
    advertiserName :: (Core.Maybe Core.Text),
    -- | The app icon, for app download ads.
    appIcon :: (Core.Maybe Image),
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
    image :: (Core.Maybe Image),
    -- | A smaller image, for the advertiser\'s logo.
    logo :: (Core.Maybe Image),
    -- | The price of the promoted app including currency info.
    priceDisplayText :: (Core.Maybe Core.Text),
    -- | The app rating in the app store. Must be in the range [0-5].
    starRating :: (Core.Maybe Core.Double),
    -- | The URL to the app store to purchase\/download the promoted app.
    storeUrl :: (Core.Maybe Core.Text),
    -- | The URL to fetch a native video ad.
    videoUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NativeContent' with the minimum fields required to make a request.
newNativeContent ::
  NativeContent
newNativeContent =
  NativeContent
    { advertiserName = Core.Nothing,
      appIcon = Core.Nothing,
      body = Core.Nothing,
      callToAction = Core.Nothing,
      clickLinkUrl = Core.Nothing,
      clickTrackingUrl = Core.Nothing,
      headline = Core.Nothing,
      image = Core.Nothing,
      logo = Core.Nothing,
      priceDisplayText = Core.Nothing,
      starRating = Core.Nothing,
      storeUrl = Core.Nothing,
      videoUrl = Core.Nothing
    }

instance Core.FromJSON NativeContent where
  parseJSON =
    Core.withObject
      "NativeContent"
      ( \o ->
          NativeContent
            Core.<$> (o Core..:? "advertiserName")
            Core.<*> (o Core..:? "appIcon")
            Core.<*> (o Core..:? "body")
            Core.<*> (o Core..:? "callToAction")
            Core.<*> (o Core..:? "clickLinkUrl")
            Core.<*> (o Core..:? "clickTrackingUrl")
            Core.<*> (o Core..:? "headline")
            Core.<*> (o Core..:? "image")
            Core.<*> (o Core..:? "logo")
            Core.<*> (o Core..:? "priceDisplayText")
            Core.<*> (o Core..:? "starRating")
            Core.<*> (o Core..:? "storeUrl")
            Core.<*> (o Core..:? "videoUrl")
      )

instance Core.ToJSON NativeContent where
  toJSON NativeContent {..} =
    Core.object
      ( Core.catMaybes
          [ ("advertiserName" Core..=) Core.<$> advertiserName,
            ("appIcon" Core..=) Core.<$> appIcon,
            ("body" Core..=) Core.<$> body,
            ("callToAction" Core..=) Core.<$> callToAction,
            ("clickLinkUrl" Core..=) Core.<$> clickLinkUrl,
            ("clickTrackingUrl" Core..=)
              Core.<$> clickTrackingUrl,
            ("headline" Core..=) Core.<$> headline,
            ("image" Core..=) Core.<$> image,
            ("logo" Core..=) Core.<$> logo,
            ("priceDisplayText" Core..=)
              Core.<$> priceDisplayText,
            ("starRating" Core..=) Core.<$> starRating,
            ("storeUrl" Core..=) Core.<$> storeUrl,
            ("videoUrl" Core..=) Core.<$> videoUrl
          ]
      )

-- | The number of winning bids with the specified dimension values for which the buyer was not billed, as described by the specified status.
--
-- /See:/ 'newNonBillableWinningBidStatusRow' smart constructor.
data NonBillableWinningBidStatusRow = NonBillableWinningBidStatusRow
  { -- | The number of bids with the specified status.
    bidCount :: (Core.Maybe MetricValue),
    -- | The values of all dimensions associated with metric values in this row.
    rowDimensions :: (Core.Maybe RowDimensions),
    -- | The status specifying why the winning bids were not billed.
    status :: (Core.Maybe NonBillableWinningBidStatusRow_Status)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NonBillableWinningBidStatusRow' with the minimum fields required to make a request.
newNonBillableWinningBidStatusRow ::
  NonBillableWinningBidStatusRow
newNonBillableWinningBidStatusRow =
  NonBillableWinningBidStatusRow
    { bidCount = Core.Nothing,
      rowDimensions = Core.Nothing,
      status = Core.Nothing
    }

instance Core.FromJSON NonBillableWinningBidStatusRow where
  parseJSON =
    Core.withObject
      "NonBillableWinningBidStatusRow"
      ( \o ->
          NonBillableWinningBidStatusRow
            Core.<$> (o Core..:? "bidCount")
            Core.<*> (o Core..:? "rowDimensions")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON NonBillableWinningBidStatusRow where
  toJSON NonBillableWinningBidStatusRow {..} =
    Core.object
      ( Core.catMaybes
          [ ("bidCount" Core..=) Core.<$> bidCount,
            ("rowDimensions" Core..=) Core.<$> rowDimensions,
            ("status" Core..=) Core.<$> status
          ]
      )

-- | Terms for Private Auctions. Note that Private Auctions can be created only by the seller, but they can be returned in a get or list request.
--
-- /See:/ 'newNonGuaranteedAuctionTerms' smart constructor.
data NonGuaranteedAuctionTerms = NonGuaranteedAuctionTerms
  { -- | True if open auction buyers are allowed to compete with invited buyers in this private auction.
    autoOptimizePrivateAuction :: (Core.Maybe Core.Bool),
    -- | Reserve price for the specified buyer.
    reservePricesPerBuyer :: (Core.Maybe [PricePerBuyer])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NonGuaranteedAuctionTerms' with the minimum fields required to make a request.
newNonGuaranteedAuctionTerms ::
  NonGuaranteedAuctionTerms
newNonGuaranteedAuctionTerms =
  NonGuaranteedAuctionTerms
    { autoOptimizePrivateAuction = Core.Nothing,
      reservePricesPerBuyer = Core.Nothing
    }

instance Core.FromJSON NonGuaranteedAuctionTerms where
  parseJSON =
    Core.withObject
      "NonGuaranteedAuctionTerms"
      ( \o ->
          NonGuaranteedAuctionTerms
            Core.<$> (o Core..:? "autoOptimizePrivateAuction")
            Core.<*> (o Core..:? "reservePricesPerBuyer")
      )

instance Core.ToJSON NonGuaranteedAuctionTerms where
  toJSON NonGuaranteedAuctionTerms {..} =
    Core.object
      ( Core.catMaybes
          [ ("autoOptimizePrivateAuction" Core..=)
              Core.<$> autoOptimizePrivateAuction,
            ("reservePricesPerBuyer" Core..=)
              Core.<$> reservePricesPerBuyer
          ]
      )

-- | Terms for Preferred Deals.
--
-- /See:/ 'newNonGuaranteedFixedPriceTerms' smart constructor.
newtype NonGuaranteedFixedPriceTerms = NonGuaranteedFixedPriceTerms
  { -- | Fixed price for the specified buyer.
    fixedPrices :: (Core.Maybe [PricePerBuyer])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NonGuaranteedFixedPriceTerms' with the minimum fields required to make a request.
newNonGuaranteedFixedPriceTerms ::
  NonGuaranteedFixedPriceTerms
newNonGuaranteedFixedPriceTerms =
  NonGuaranteedFixedPriceTerms {fixedPrices = Core.Nothing}

instance Core.FromJSON NonGuaranteedFixedPriceTerms where
  parseJSON =
    Core.withObject
      "NonGuaranteedFixedPriceTerms"
      ( \o ->
          NonGuaranteedFixedPriceTerms
            Core.<$> (o Core..:? "fixedPrices")
      )

instance Core.ToJSON NonGuaranteedFixedPriceTerms where
  toJSON NonGuaranteedFixedPriceTerms {..} =
    Core.object
      ( Core.catMaybes
          [("fixedPrices" Core..=) Core.<$> fixedPrices]
      )

-- | A proposal may be associated to several notes.
--
-- /See:/ 'newNote' smart constructor.
data Note = Note
  { -- | Output only. The timestamp for when this note was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The role of the person (buyer\/seller) creating the note.
    creatorRole :: (Core.Maybe Note_CreatorRole),
    -- | The actual note to attach. (max-length: 1024 unicode code units) Note: This field may be set only when creating the resource. Modifying this field while updating the resource will result in an error.
    note :: (Core.Maybe Core.Text),
    -- | Output only. The unique ID for the note.
    noteId :: (Core.Maybe Core.Text),
    -- | Output only. The revision number of the proposal when the note is created.
    proposalRevision :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Note' with the minimum fields required to make a request.
newNote ::
  Note
newNote =
  Note
    { createTime = Core.Nothing,
      creatorRole = Core.Nothing,
      note = Core.Nothing,
      noteId = Core.Nothing,
      proposalRevision = Core.Nothing
    }

instance Core.FromJSON Note where
  parseJSON =
    Core.withObject
      "Note"
      ( \o ->
          Note
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "creatorRole")
            Core.<*> (o Core..:? "note")
            Core.<*> (o Core..:? "noteId")
            Core.<*> ( o Core..:? "proposalRevision"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON Note where
  toJSON Note {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("creatorRole" Core..=) Core.<$> creatorRole,
            ("note" Core..=) Core.<$> note,
            ("noteId" Core..=) Core.<$> noteId,
            ("proposalRevision" Core..=) Core.. Core.AsText
              Core.<$> proposalRevision
          ]
      )

-- | Represents targeting information for operating systems.
--
-- /See:/ 'newOperatingSystemTargeting' smart constructor.
data OperatingSystemTargeting = OperatingSystemTargeting
  { -- | IDs of operating systems to be included\/excluded.
    operatingSystemCriteria :: (Core.Maybe CriteriaTargeting),
    -- | IDs of operating system versions to be included\/excluded.
    operatingSystemVersionCriteria :: (Core.Maybe CriteriaTargeting)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OperatingSystemTargeting' with the minimum fields required to make a request.
newOperatingSystemTargeting ::
  OperatingSystemTargeting
newOperatingSystemTargeting =
  OperatingSystemTargeting
    { operatingSystemCriteria = Core.Nothing,
      operatingSystemVersionCriteria = Core.Nothing
    }

instance Core.FromJSON OperatingSystemTargeting where
  parseJSON =
    Core.withObject
      "OperatingSystemTargeting"
      ( \o ->
          OperatingSystemTargeting
            Core.<$> (o Core..:? "operatingSystemCriteria")
            Core.<*> (o Core..:? "operatingSystemVersionCriteria")
      )

instance Core.ToJSON OperatingSystemTargeting where
  toJSON OperatingSystemTargeting {..} =
    Core.object
      ( Core.catMaybes
          [ ("operatingSystemCriteria" Core..=)
              Core.<$> operatingSystemCriteria,
            ("operatingSystemVersionCriteria" Core..=)
              Core.<$> operatingSystemVersionCriteria
          ]
      )

-- | Request message to pause serving for finalized deals.
--
-- /See:/ 'newPauseProposalDealsRequest' smart constructor.
data PauseProposalDealsRequest = PauseProposalDealsRequest
  { -- | The external/deal/id\'s of the deals to be paused. If empty, all the deals in the proposal will be paused.
    externalDealIds :: (Core.Maybe [Core.Text]),
    -- | The reason why the deals are being paused. This human readable message will be displayed in the seller\'s UI. (Max length: 1000 unicode code units.)
    reason :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PauseProposalDealsRequest' with the minimum fields required to make a request.
newPauseProposalDealsRequest ::
  PauseProposalDealsRequest
newPauseProposalDealsRequest =
  PauseProposalDealsRequest
    { externalDealIds = Core.Nothing,
      reason = Core.Nothing
    }

instance Core.FromJSON PauseProposalDealsRequest where
  parseJSON =
    Core.withObject
      "PauseProposalDealsRequest"
      ( \o ->
          PauseProposalDealsRequest
            Core.<$> (o Core..:? "externalDealIds")
            Core.<*> (o Core..:? "reason")
      )

instance Core.ToJSON PauseProposalDealsRequest where
  toJSON PauseProposalDealsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("externalDealIds" Core..=)
              Core.<$> externalDealIds,
            ("reason" Core..=) Core.<$> reason
          ]
      )

-- | Request message to pause serving for an already-finalized proposal.
--
-- /See:/ 'newPauseProposalRequest' smart constructor.
newtype PauseProposalRequest = PauseProposalRequest
  { -- | The reason why the proposal is being paused. This human readable message will be displayed in the seller\'s UI. (Max length: 1000 unicode code units.)
    reason :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PauseProposalRequest' with the minimum fields required to make a request.
newPauseProposalRequest ::
  PauseProposalRequest
newPauseProposalRequest = PauseProposalRequest {reason = Core.Nothing}

instance Core.FromJSON PauseProposalRequest where
  parseJSON =
    Core.withObject
      "PauseProposalRequest"
      ( \o ->
          PauseProposalRequest Core.<$> (o Core..:? "reason")
      )

instance Core.ToJSON PauseProposalRequest where
  toJSON PauseProposalRequest {..} =
    Core.object
      (Core.catMaybes [("reason" Core..=) Core.<$> reason])

-- | Represents targeting about where the ads can appear, for example, certain sites or mobile applications. Different placement targeting types will be logically OR\'ed.
--
-- /See:/ 'newPlacementTargeting' smart constructor.
data PlacementTargeting = PlacementTargeting
  { -- | Mobile application targeting information in a deal. This doesn\'t apply to Auction Packages.
    mobileApplicationTargeting :: (Core.Maybe MobileApplicationTargeting),
    -- | URLs to be included\/excluded.
    urlTargeting :: (Core.Maybe UrlTargeting)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlacementTargeting' with the minimum fields required to make a request.
newPlacementTargeting ::
  PlacementTargeting
newPlacementTargeting =
  PlacementTargeting
    { mobileApplicationTargeting = Core.Nothing,
      urlTargeting = Core.Nothing
    }

instance Core.FromJSON PlacementTargeting where
  parseJSON =
    Core.withObject
      "PlacementTargeting"
      ( \o ->
          PlacementTargeting
            Core.<$> (o Core..:? "mobileApplicationTargeting")
            Core.<*> (o Core..:? "urlTargeting")
      )

instance Core.ToJSON PlacementTargeting where
  toJSON PlacementTargeting {..} =
    Core.object
      ( Core.catMaybes
          [ ("mobileApplicationTargeting" Core..=)
              Core.<$> mobileApplicationTargeting,
            ("urlTargeting" Core..=) Core.<$> urlTargeting
          ]
      )

-- | Output only. The type of platform the restriction applies to.
--
-- /See:/ 'newPlatformContext' smart constructor.
newtype PlatformContext = PlatformContext
  { -- | The platforms this restriction applies to.
    platforms :: (Core.Maybe [PlatformContext_PlatformsItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlatformContext' with the minimum fields required to make a request.
newPlatformContext ::
  PlatformContext
newPlatformContext = PlatformContext {platforms = Core.Nothing}

instance Core.FromJSON PlatformContext where
  parseJSON =
    Core.withObject
      "PlatformContext"
      ( \o ->
          PlatformContext Core.<$> (o Core..:? "platforms")
      )

instance Core.ToJSON PlatformContext where
  toJSON PlatformContext {..} =
    Core.object
      ( Core.catMaybes
          [("platforms" Core..=) Core.<$> platforms]
      )

-- | Represents a price and a pricing type for a product \/ deal.
--
-- /See:/ 'newPrice' smart constructor.
data Price = Price
  { -- | The actual price with currency specified.
    amount :: (Core.Maybe Money),
    -- | The pricing type for the deal\/product. (default: CPM)
    pricingType :: (Core.Maybe Price_PricingType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Price' with the minimum fields required to make a request.
newPrice ::
  Price
newPrice = Price {amount = Core.Nothing, pricingType = Core.Nothing}

instance Core.FromJSON Price where
  parseJSON =
    Core.withObject
      "Price"
      ( \o ->
          Price
            Core.<$> (o Core..:? "amount")
            Core.<*> (o Core..:? "pricingType")
      )

instance Core.ToJSON Price where
  toJSON Price {..} =
    Core.object
      ( Core.catMaybes
          [ ("amount" Core..=) Core.<$> amount,
            ("pricingType" Core..=) Core.<$> pricingType
          ]
      )

-- | Used to specify pricing rules for buyers\/advertisers. Each PricePerBuyer in a product can become 0 or 1 deals. To check if there is a PricePerBuyer for a particular buyer or buyer\/advertiser pair, we look for the most specific matching rule - we first look for a rule matching the buyer and advertiser, next a rule with the buyer but an empty advertiser list, and otherwise look for a matching rule where no buyer is set.
--
-- /See:/ 'newPricePerBuyer' smart constructor.
data PricePerBuyer = PricePerBuyer
  { -- | The list of advertisers for this price when associated with this buyer. If empty, all advertisers with this buyer pay this price.
    advertiserIds :: (Core.Maybe [Core.Text]),
    -- | The buyer who will pay this price. If unset, all buyers can pay this price (if the advertisers match, and there\'s no more specific rule matching the buyer).
    buyer :: (Core.Maybe Buyer),
    -- | The specified price.
    price :: (Core.Maybe Price)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PricePerBuyer' with the minimum fields required to make a request.
newPricePerBuyer ::
  PricePerBuyer
newPricePerBuyer =
  PricePerBuyer
    { advertiserIds = Core.Nothing,
      buyer = Core.Nothing,
      price = Core.Nothing
    }

instance Core.FromJSON PricePerBuyer where
  parseJSON =
    Core.withObject
      "PricePerBuyer"
      ( \o ->
          PricePerBuyer
            Core.<$> (o Core..:? "advertiserIds")
            Core.<*> (o Core..:? "buyer")
            Core.<*> (o Core..:? "price")
      )

instance Core.ToJSON PricePerBuyer where
  toJSON PricePerBuyer {..} =
    Core.object
      ( Core.catMaybes
          [ ("advertiserIds" Core..=) Core.<$> advertiserIds,
            ("buyer" Core..=) Core.<$> buyer,
            ("price" Core..=) Core.<$> price
          ]
      )

-- | Buyers are allowed to store certain types of private data in a proposal\/deal.
--
-- /See:/ 'newPrivateData' smart constructor.
newtype PrivateData = PrivateData
  { -- | A buyer or seller specified reference ID. This can be queried in the list operations (max-length: 1024 unicode code units).
    referenceId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PrivateData' with the minimum fields required to make a request.
newPrivateData ::
  PrivateData
newPrivateData = PrivateData {referenceId = Core.Nothing}

instance Core.FromJSON PrivateData where
  parseJSON =
    Core.withObject
      "PrivateData"
      ( \o ->
          PrivateData Core.<$> (o Core..:? "referenceId")
      )

instance Core.ToJSON PrivateData where
  toJSON PrivateData {..} =
    Core.object
      ( Core.catMaybes
          [("referenceId" Core..=) Core.<$> referenceId]
      )

-- | A product is a segment of inventory that a seller wants to sell. It is associated with certain terms and targeting information which helps the buyer know more about the inventory.
--
-- /See:/ 'newProduct' smart constructor.
data Product = Product
  { -- | The proposed end time for the deal. The field will be truncated to the order of seconds during serving.
    availableEndTime :: (Core.Maybe Core.DateTime),
    -- | Inventory availability dates. The start time will be truncated to seconds during serving. Thus, a field specified as 3:23:34.456 (HH:mm:ss.SSS) will be truncated to 3:23:34 when serving.
    availableStartTime :: (Core.Maybe Core.DateTime),
    -- | Creation time.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Optional contact information for the creator of this product.
    creatorContacts :: (Core.Maybe [ContactInformation]),
    -- | The display name for this product as set by the seller.
    displayName :: (Core.Maybe Core.Text),
    -- | If the creator has already signed off on the product, then the buyer can finalize the deal by accepting the product as is. When copying to a proposal, if any of the terms are changed, then auto_finalize is automatically set to false.
    hasCreatorSignedOff :: (Core.Maybe Core.Bool),
    -- | The unique ID for the product.
    productId :: (Core.Maybe Core.Text),
    -- | The revision number of the product (auto-assigned by Marketplace).
    productRevision :: (Core.Maybe Core.Int64),
    -- | An ID which can be used by the Publisher Profile API to get more information about the seller that created this product.
    publisherProfileId :: (Core.Maybe Core.Text),
    -- | Information about the seller that created this product.
    seller :: (Core.Maybe Seller),
    -- | The syndication product associated with the deal.
    syndicationProduct :: (Core.Maybe Product_SyndicationProduct),
    -- | Targeting that is shared between the buyer and the seller. Each targeting criterion has a specified key and for each key there is a list of inclusion value or exclusion values.
    targetingCriterion :: (Core.Maybe [TargetingCriteria]),
    -- | The negotiable terms of the deal.
    terms :: (Core.Maybe DealTerms),
    -- | Time of last update.
    updateTime :: (Core.Maybe Core.DateTime),
    -- | The web-property code for the seller. This needs to be copied as is when adding a new deal to a proposal.
    webPropertyCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Product' with the minimum fields required to make a request.
newProduct ::
  Product
newProduct =
  Product
    { availableEndTime = Core.Nothing,
      availableStartTime = Core.Nothing,
      createTime = Core.Nothing,
      creatorContacts = Core.Nothing,
      displayName = Core.Nothing,
      hasCreatorSignedOff = Core.Nothing,
      productId = Core.Nothing,
      productRevision = Core.Nothing,
      publisherProfileId = Core.Nothing,
      seller = Core.Nothing,
      syndicationProduct = Core.Nothing,
      targetingCriterion = Core.Nothing,
      terms = Core.Nothing,
      updateTime = Core.Nothing,
      webPropertyCode = Core.Nothing
    }

instance Core.FromJSON Product where
  parseJSON =
    Core.withObject
      "Product"
      ( \o ->
          Product
            Core.<$> (o Core..:? "availableEndTime")
            Core.<*> (o Core..:? "availableStartTime")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "creatorContacts")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "hasCreatorSignedOff")
            Core.<*> (o Core..:? "productId")
            Core.<*> ( o Core..:? "productRevision"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "publisherProfileId")
            Core.<*> (o Core..:? "seller")
            Core.<*> (o Core..:? "syndicationProduct")
            Core.<*> (o Core..:? "targetingCriterion")
            Core.<*> (o Core..:? "terms")
            Core.<*> (o Core..:? "updateTime")
            Core.<*> (o Core..:? "webPropertyCode")
      )

instance Core.ToJSON Product where
  toJSON Product {..} =
    Core.object
      ( Core.catMaybes
          [ ("availableEndTime" Core..=)
              Core.<$> availableEndTime,
            ("availableStartTime" Core..=)
              Core.<$> availableStartTime,
            ("createTime" Core..=) Core.<$> createTime,
            ("creatorContacts" Core..=) Core.<$> creatorContacts,
            ("displayName" Core..=) Core.<$> displayName,
            ("hasCreatorSignedOff" Core..=)
              Core.<$> hasCreatorSignedOff,
            ("productId" Core..=) Core.<$> productId,
            ("productRevision" Core..=) Core.. Core.AsText
              Core.<$> productRevision,
            ("publisherProfileId" Core..=)
              Core.<$> publisherProfileId,
            ("seller" Core..=) Core.<$> seller,
            ("syndicationProduct" Core..=)
              Core.<$> syndicationProduct,
            ("targetingCriterion" Core..=)
              Core.<$> targetingCriterion,
            ("terms" Core..=) Core.<$> terms,
            ("updateTime" Core..=) Core.<$> updateTime,
            ("webPropertyCode" Core..=)
              Core.<$> webPropertyCode
          ]
      )

-- | Represents a proposal in the Marketplace. A proposal is the unit of negotiation between a seller and a buyer and contains deals which are served. Note: You can\'t update, create, or otherwise modify Private Auction deals through the API. Fields are updatable unless noted otherwise.
--
-- /See:/ 'newProposal' smart constructor.
data Proposal = Proposal
  { -- | Output only. Reference to the buyer that will get billed for this proposal.
    billedBuyer :: (Core.Maybe Buyer),
    -- | Reference to the buyer on the proposal. Note: This field may be set only when creating the resource. Modifying this field while updating the resource will result in an error.
    buyer :: (Core.Maybe Buyer),
    -- | Contact information for the buyer.
    buyerContacts :: (Core.Maybe [ContactInformation]),
    -- | Private data for buyer. (hidden from seller).
    buyerPrivateData :: (Core.Maybe PrivateData),
    -- | The deals associated with this proposal. For Private Auction proposals (whose deals have NonGuaranteedAuctionTerms), there will only be one deal.
    deals :: (Core.Maybe [Deal]),
    -- | The name for the proposal.
    displayName :: (Core.Maybe Core.Text),
    -- | Output only. True if the proposal is being renegotiated.
    isRenegotiating :: (Core.Maybe Core.Bool),
    -- | Output only. True, if the buyside inventory setup is complete for this proposal.
    isSetupComplete :: (Core.Maybe Core.Bool),
    -- | Output only. The role of the last user that either updated the proposal or left a comment.
    lastUpdaterOrCommentorRole :: (Core.Maybe Proposal_LastUpdaterOrCommentorRole),
    -- | Output only. The notes associated with this proposal.
    notes :: (Core.Maybe [Note]),
    -- | Output only. Indicates whether the buyer\/seller created the proposal.
    originatorRole :: (Core.Maybe Proposal_OriginatorRole),
    -- | Output only. Private auction ID if this proposal is a private auction proposal.
    privateAuctionId :: (Core.Maybe Core.Text),
    -- | Output only. The unique ID of the proposal.
    proposalId :: (Core.Maybe Core.Text),
    -- | Output only. The revision number for the proposal. Each update to the proposal or the deal causes the proposal revision number to auto-increment. The buyer keeps track of the last revision number they know of and pass it in when making an update. If the head revision number on the server has since incremented, then an ABORTED error is returned during the update operation to let the buyer know that a subsequent update was made.
    proposalRevision :: (Core.Maybe Core.Int64),
    -- | Output only. The current state of the proposal.
    proposalState :: (Core.Maybe Proposal_ProposalState),
    -- | Reference to the seller on the proposal. Note: This field may be set only when creating the resource. Modifying this field while updating the resource will result in an error.
    seller :: (Core.Maybe Seller),
    -- | Output only. Contact information for the seller.
    sellerContacts :: (Core.Maybe [ContactInformation]),
    -- | Output only. The terms and conditions set by the publisher for this proposal.
    termsAndConditions :: (Core.Maybe Core.Text),
    -- | Output only. The time when the proposal was last revised.
    updateTime :: (Core.Maybe Core.DateTime)
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
      deals = Core.Nothing,
      displayName = Core.Nothing,
      isRenegotiating = Core.Nothing,
      isSetupComplete = Core.Nothing,
      lastUpdaterOrCommentorRole = Core.Nothing,
      notes = Core.Nothing,
      originatorRole = Core.Nothing,
      privateAuctionId = Core.Nothing,
      proposalId = Core.Nothing,
      proposalRevision = Core.Nothing,
      proposalState = Core.Nothing,
      seller = Core.Nothing,
      sellerContacts = Core.Nothing,
      termsAndConditions = Core.Nothing,
      updateTime = Core.Nothing
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
            Core.<*> (o Core..:? "deals")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "isRenegotiating")
            Core.<*> (o Core..:? "isSetupComplete")
            Core.<*> (o Core..:? "lastUpdaterOrCommentorRole")
            Core.<*> (o Core..:? "notes")
            Core.<*> (o Core..:? "originatorRole")
            Core.<*> (o Core..:? "privateAuctionId")
            Core.<*> (o Core..:? "proposalId")
            Core.<*> ( o Core..:? "proposalRevision"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "proposalState")
            Core.<*> (o Core..:? "seller")
            Core.<*> (o Core..:? "sellerContacts")
            Core.<*> (o Core..:? "termsAndConditions")
            Core.<*> (o Core..:? "updateTime")
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
            ("deals" Core..=) Core.<$> deals,
            ("displayName" Core..=) Core.<$> displayName,
            ("isRenegotiating" Core..=) Core.<$> isRenegotiating,
            ("isSetupComplete" Core..=) Core.<$> isSetupComplete,
            ("lastUpdaterOrCommentorRole" Core..=)
              Core.<$> lastUpdaterOrCommentorRole,
            ("notes" Core..=) Core.<$> notes,
            ("originatorRole" Core..=) Core.<$> originatorRole,
            ("privateAuctionId" Core..=)
              Core.<$> privateAuctionId,
            ("proposalId" Core..=) Core.<$> proposalId,
            ("proposalRevision" Core..=) Core.. Core.AsText
              Core.<$> proposalRevision,
            ("proposalState" Core..=) Core.<$> proposalState,
            ("seller" Core..=) Core.<$> seller,
            ("sellerContacts" Core..=) Core.<$> sellerContacts,
            ("termsAndConditions" Core..=)
              Core.<$> termsAndConditions,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | Represents a publisher profile (https:\/\/support.google.com\/admanager\/answer\/6035806) in Marketplace. All fields are read only. All string fields are free-form text entered by the publisher unless noted otherwise.
--
-- /See:/ 'newPublisherProfile' smart constructor.
data PublisherProfile = PublisherProfile
  { -- | Description on the publisher\'s audience.
    audienceDescription :: (Core.Maybe Core.Text),
    -- | Statement explaining what\'s unique about publisher\'s business, and why buyers should partner with the publisher.
    buyerPitchStatement :: (Core.Maybe Core.Text),
    -- | Contact information for direct reservation deals. This is free text entered by the publisher and may include information like names, phone numbers and email addresses.
    directDealsContact :: (Core.Maybe Core.Text),
    -- | Name of the publisher profile.
    displayName :: (Core.Maybe Core.Text),
    -- | The list of domains represented in this publisher profile. Empty if this is a parent profile. These are top private domains, meaning that these will not contain a string like \"photos.google.co.uk\/123\", but will instead contain \"google.co.uk\".
    domains :: (Core.Maybe [Core.Text]),
    -- | URL to publisher\'s Google+ page.
    googlePlusUrl :: (Core.Maybe Core.Text),
    -- | Indicates if this profile is the parent profile of the seller. A parent profile represents all the inventory from the seller, as opposed to child profile that is created to brand a portion of inventory. One seller should have only one parent publisher profile, and can have multiple child profiles. Publisher profiles for the same seller will have same value of field google.ads.adexchange.buyer.v2beta1.PublisherProfile.seller. See https:\/\/support.google.com\/admanager\/answer\/6035806 for details.
    isParent :: (Core.Maybe Core.Bool),
    -- | A Google public URL to the logo for this publisher profile. The logo is stored as a PNG, JPG, or GIF image.
    logoUrl :: (Core.Maybe Core.Text),
    -- | URL to additional marketing and sales materials.
    mediaKitUrl :: (Core.Maybe Core.Text),
    -- | The list of apps represented in this publisher profile. Empty if this is a parent profile.
    mobileApps :: (Core.Maybe [PublisherProfileMobileApplication]),
    -- | Overview of the publisher.
    overview :: (Core.Maybe Core.Text),
    -- | Contact information for programmatic deals. This is free text entered by the publisher and may include information like names, phone numbers and email addresses.
    programmaticDealsContact :: (Core.Maybe Core.Text),
    -- | Unique ID for publisher profile.
    publisherProfileId :: (Core.Maybe Core.Text),
    -- | URL to a publisher rate card.
    rateCardInfoUrl :: (Core.Maybe Core.Text),
    -- | URL to a sample content page.
    samplePageUrl :: (Core.Maybe Core.Text),
    -- | Seller of the publisher profile.
    seller :: (Core.Maybe Seller),
    -- | Up to three key metrics and rankings. Max 100 characters each. For example \"#1 Mobile News Site for 20 Straight Months\".
    topHeadlines :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PublisherProfile' with the minimum fields required to make a request.
newPublisherProfile ::
  PublisherProfile
newPublisherProfile =
  PublisherProfile
    { audienceDescription = Core.Nothing,
      buyerPitchStatement = Core.Nothing,
      directDealsContact = Core.Nothing,
      displayName = Core.Nothing,
      domains = Core.Nothing,
      googlePlusUrl = Core.Nothing,
      isParent = Core.Nothing,
      logoUrl = Core.Nothing,
      mediaKitUrl = Core.Nothing,
      mobileApps = Core.Nothing,
      overview = Core.Nothing,
      programmaticDealsContact = Core.Nothing,
      publisherProfileId = Core.Nothing,
      rateCardInfoUrl = Core.Nothing,
      samplePageUrl = Core.Nothing,
      seller = Core.Nothing,
      topHeadlines = Core.Nothing
    }

instance Core.FromJSON PublisherProfile where
  parseJSON =
    Core.withObject
      "PublisherProfile"
      ( \o ->
          PublisherProfile
            Core.<$> (o Core..:? "audienceDescription")
            Core.<*> (o Core..:? "buyerPitchStatement")
            Core.<*> (o Core..:? "directDealsContact")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "domains")
            Core.<*> (o Core..:? "googlePlusUrl")
            Core.<*> (o Core..:? "isParent")
            Core.<*> (o Core..:? "logoUrl")
            Core.<*> (o Core..:? "mediaKitUrl")
            Core.<*> (o Core..:? "mobileApps")
            Core.<*> (o Core..:? "overview")
            Core.<*> (o Core..:? "programmaticDealsContact")
            Core.<*> (o Core..:? "publisherProfileId")
            Core.<*> (o Core..:? "rateCardInfoUrl")
            Core.<*> (o Core..:? "samplePageUrl")
            Core.<*> (o Core..:? "seller")
            Core.<*> (o Core..:? "topHeadlines")
      )

instance Core.ToJSON PublisherProfile where
  toJSON PublisherProfile {..} =
    Core.object
      ( Core.catMaybes
          [ ("audienceDescription" Core..=)
              Core.<$> audienceDescription,
            ("buyerPitchStatement" Core..=)
              Core.<$> buyerPitchStatement,
            ("directDealsContact" Core..=)
              Core.<$> directDealsContact,
            ("displayName" Core..=) Core.<$> displayName,
            ("domains" Core..=) Core.<$> domains,
            ("googlePlusUrl" Core..=) Core.<$> googlePlusUrl,
            ("isParent" Core..=) Core.<$> isParent,
            ("logoUrl" Core..=) Core.<$> logoUrl,
            ("mediaKitUrl" Core..=) Core.<$> mediaKitUrl,
            ("mobileApps" Core..=) Core.<$> mobileApps,
            ("overview" Core..=) Core.<$> overview,
            ("programmaticDealsContact" Core..=)
              Core.<$> programmaticDealsContact,
            ("publisherProfileId" Core..=)
              Core.<$> publisherProfileId,
            ("rateCardInfoUrl" Core..=) Core.<$> rateCardInfoUrl,
            ("samplePageUrl" Core..=) Core.<$> samplePageUrl,
            ("seller" Core..=) Core.<$> seller,
            ("topHeadlines" Core..=) Core.<$> topHeadlines
          ]
      )

-- | A mobile application that contains a external app ID, name, and app store.
--
-- /See:/ 'newPublisherProfileMobileApplication' smart constructor.
data PublisherProfileMobileApplication = PublisherProfileMobileApplication
  { -- | The app store the app belongs to.
    appStore :: (Core.Maybe PublisherProfileMobileApplication_AppStore),
    -- | The external ID for the app from its app store.
    externalAppId :: (Core.Maybe Core.Text),
    -- | The name of the app.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PublisherProfileMobileApplication' with the minimum fields required to make a request.
newPublisherProfileMobileApplication ::
  PublisherProfileMobileApplication
newPublisherProfileMobileApplication =
  PublisherProfileMobileApplication
    { appStore = Core.Nothing,
      externalAppId = Core.Nothing,
      name = Core.Nothing
    }

instance
  Core.FromJSON
    PublisherProfileMobileApplication
  where
  parseJSON =
    Core.withObject
      "PublisherProfileMobileApplication"
      ( \o ->
          PublisherProfileMobileApplication
            Core.<$> (o Core..:? "appStore")
            Core.<*> (o Core..:? "externalAppId")
            Core.<*> (o Core..:? "name")
      )

instance
  Core.ToJSON
    PublisherProfileMobileApplication
  where
  toJSON PublisherProfileMobileApplication {..} =
    Core.object
      ( Core.catMaybes
          [ ("appStore" Core..=) Core.<$> appStore,
            ("externalAppId" Core..=) Core.<$> externalAppId,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | An open-ended realtime time range specified by the start timestamp. For filter sets that specify a realtime time range RTB metrics continue to be aggregated throughout the lifetime of the filter set.
--
-- /See:/ 'newRealtimeTimeRange' smart constructor.
newtype RealtimeTimeRange = RealtimeTimeRange
  { -- | The start timestamp of the real-time RTB metrics aggregation.
    startTimestamp :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RealtimeTimeRange' with the minimum fields required to make a request.
newRealtimeTimeRange ::
  RealtimeTimeRange
newRealtimeTimeRange = RealtimeTimeRange {startTimestamp = Core.Nothing}

instance Core.FromJSON RealtimeTimeRange where
  parseJSON =
    Core.withObject
      "RealtimeTimeRange"
      ( \o ->
          RealtimeTimeRange
            Core.<$> (o Core..:? "startTimestamp")
      )

instance Core.ToJSON RealtimeTimeRange where
  toJSON RealtimeTimeRange {..} =
    Core.object
      ( Core.catMaybes
          [("startTimestamp" Core..=) Core.<$> startTimestamp]
      )

-- | A relative date range, specified by an offset and a duration. The supported range of dates begins 30 days before today and ends today, for example, the limits for these values are: offset/days >= 0 duration/days >= 1 offset/days + duration/days \<= 30
--
-- /See:/ 'newRelativeDateRange' smart constructor.
data RelativeDateRange = RelativeDateRange
  { -- | The number of days in the requested date range, for example, for a range spanning today: 1. For a range spanning the last 7 days: 7.
    durationDays :: (Core.Maybe Core.Int32),
    -- | The end date of the filter set, specified as the number of days before today, for example, for a range where the last date is today: 0.
    offsetDays :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RelativeDateRange' with the minimum fields required to make a request.
newRelativeDateRange ::
  RelativeDateRange
newRelativeDateRange =
  RelativeDateRange {durationDays = Core.Nothing, offsetDays = Core.Nothing}

instance Core.FromJSON RelativeDateRange where
  parseJSON =
    Core.withObject
      "RelativeDateRange"
      ( \o ->
          RelativeDateRange
            Core.<$> (o Core..:? "durationDays")
            Core.<*> (o Core..:? "offsetDays")
      )

instance Core.ToJSON RelativeDateRange where
  toJSON RelativeDateRange {..} =
    Core.object
      ( Core.catMaybes
          [ ("durationDays" Core..=) Core.<$> durationDays,
            ("offsetDays" Core..=) Core.<$> offsetDays
          ]
      )

-- | A request for removing the association between a deal and a creative.
--
-- /See:/ 'newRemoveDealAssociationRequest' smart constructor.
newtype RemoveDealAssociationRequest = RemoveDealAssociationRequest
  { -- | The association between a creative and a deal that should be removed.
    association :: (Core.Maybe CreativeDealAssociation)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RemoveDealAssociationRequest' with the minimum fields required to make a request.
newRemoveDealAssociationRequest ::
  RemoveDealAssociationRequest
newRemoveDealAssociationRequest =
  RemoveDealAssociationRequest {association = Core.Nothing}

instance Core.FromJSON RemoveDealAssociationRequest where
  parseJSON =
    Core.withObject
      "RemoveDealAssociationRequest"
      ( \o ->
          RemoveDealAssociationRequest
            Core.<$> (o Core..:? "association")
      )

instance Core.ToJSON RemoveDealAssociationRequest where
  toJSON RemoveDealAssociationRequest {..} =
    Core.object
      ( Core.catMaybes
          [("association" Core..=) Core.<$> association]
      )

-- | Request message to resume (unpause) serving for already-finalized deals.
--
-- /See:/ 'newResumeProposalDealsRequest' smart constructor.
newtype ResumeProposalDealsRequest = ResumeProposalDealsRequest
  { -- | The external/deal/id\'s of the deals to resume. If empty, all the deals in the proposal will be resumed.
    externalDealIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResumeProposalDealsRequest' with the minimum fields required to make a request.
newResumeProposalDealsRequest ::
  ResumeProposalDealsRequest
newResumeProposalDealsRequest =
  ResumeProposalDealsRequest {externalDealIds = Core.Nothing}

instance Core.FromJSON ResumeProposalDealsRequest where
  parseJSON =
    Core.withObject
      "ResumeProposalDealsRequest"
      ( \o ->
          ResumeProposalDealsRequest
            Core.<$> (o Core..:? "externalDealIds")
      )

instance Core.ToJSON ResumeProposalDealsRequest where
  toJSON ResumeProposalDealsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("externalDealIds" Core..=)
              Core.<$> externalDealIds
          ]
      )

-- | Request message to resume (unpause) serving for an already-finalized proposal.
--
-- /See:/ 'newResumeProposalRequest' smart constructor.
data ResumeProposalRequest = ResumeProposalRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResumeProposalRequest' with the minimum fields required to make a request.
newResumeProposalRequest ::
  ResumeProposalRequest
newResumeProposalRequest = ResumeProposalRequest

instance Core.FromJSON ResumeProposalRequest where
  parseJSON =
    Core.withObject
      "ResumeProposalRequest"
      (\o -> Core.pure ResumeProposalRequest)

instance Core.ToJSON ResumeProposalRequest where
  toJSON = Core.const Core.emptyObject

-- | A response may include multiple rows, breaking down along various dimensions. Encapsulates the values of all dimensions for a given row.
--
-- /See:/ 'newRowDimensions' smart constructor.
data RowDimensions = RowDimensions
  { -- | The publisher identifier for this row, if a breakdown by <https://developers.google.com/authorized-buyers/apis/reference/rest/v2beta1/bidders.accounts.filterSets#FilterSet.BreakdownDimension BreakdownDimension.PUBLISHER_IDENTIFIER> was requested.
    publisherIdentifier :: (Core.Maybe Core.Text),
    -- | The time interval that this row represents.
    timeInterval :: (Core.Maybe TimeInterval)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RowDimensions' with the minimum fields required to make a request.
newRowDimensions ::
  RowDimensions
newRowDimensions =
  RowDimensions
    { publisherIdentifier = Core.Nothing,
      timeInterval = Core.Nothing
    }

instance Core.FromJSON RowDimensions where
  parseJSON =
    Core.withObject
      "RowDimensions"
      ( \o ->
          RowDimensions
            Core.<$> (o Core..:? "publisherIdentifier")
            Core.<*> (o Core..:? "timeInterval")
      )

instance Core.ToJSON RowDimensions where
  toJSON RowDimensions {..} =
    Core.object
      ( Core.catMaybes
          [ ("publisherIdentifier" Core..=)
              Core.<$> publisherIdentifier,
            ("timeInterval" Core..=) Core.<$> timeInterval
          ]
      )

-- | Output only. A security context.
--
-- /See:/ 'newSecurityContext' smart constructor.
newtype SecurityContext = SecurityContext
  { -- | The security types in this context.
    securities :: (Core.Maybe [SecurityContext_SecuritiesItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecurityContext' with the minimum fields required to make a request.
newSecurityContext ::
  SecurityContext
newSecurityContext = SecurityContext {securities = Core.Nothing}

instance Core.FromJSON SecurityContext where
  parseJSON =
    Core.withObject
      "SecurityContext"
      ( \o ->
          SecurityContext Core.<$> (o Core..:? "securities")
      )

instance Core.ToJSON SecurityContext where
  toJSON SecurityContext {..} =
    Core.object
      ( Core.catMaybes
          [("securities" Core..=) Core.<$> securities]
      )

-- | Represents a seller of inventory. Each seller is identified by a unique Ad Manager account ID.
--
-- /See:/ 'newSeller' smart constructor.
data Seller = Seller
  { -- | The unique ID for the seller. The seller fills in this field. The seller account ID is then available to buyer in the product.
    accountId :: (Core.Maybe Core.Text),
    -- | Output only. Ad manager network code for the seller.
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

-- | The serving context for this restriction.
--
-- /See:/ 'newServingContext' smart constructor.
data ServingContext = ServingContext
  { -- | Matches all contexts.
    all :: (Core.Maybe ServingContext_All),
    -- | Matches impressions for a particular app type.
    appType :: (Core.Maybe AppContext),
    -- | Matches impressions for a particular auction type.
    auctionType :: (Core.Maybe AuctionContext),
    -- | Matches impressions coming from users /or/ publishers in a specific location.
    location :: (Core.Maybe LocationContext),
    -- | Matches impressions coming from a particular platform.
    platform :: (Core.Maybe PlatformContext),
    -- | Matches impressions for a particular security type.
    securityType :: (Core.Maybe SecurityContext)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServingContext' with the minimum fields required to make a request.
newServingContext ::
  ServingContext
newServingContext =
  ServingContext
    { all = Core.Nothing,
      appType = Core.Nothing,
      auctionType = Core.Nothing,
      location = Core.Nothing,
      platform = Core.Nothing,
      securityType = Core.Nothing
    }

instance Core.FromJSON ServingContext where
  parseJSON =
    Core.withObject
      "ServingContext"
      ( \o ->
          ServingContext
            Core.<$> (o Core..:? "all")
            Core.<*> (o Core..:? "appType")
            Core.<*> (o Core..:? "auctionType")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "platform")
            Core.<*> (o Core..:? "securityType")
      )

instance Core.ToJSON ServingContext where
  toJSON ServingContext {..} =
    Core.object
      ( Core.catMaybes
          [ ("all" Core..=) Core.<$> all,
            ("appType" Core..=) Core.<$> appType,
            ("auctionType" Core..=) Core.<$> auctionType,
            ("location" Core..=) Core.<$> location,
            ("platform" Core..=) Core.<$> platform,
            ("securityType" Core..=) Core.<$> securityType
          ]
      )

-- | Output only. A representation of the status of an ad in a specific context. A context here relates to where something ultimately serves (for example, a user or publisher geo, a platform, an HTTPS versus HTTP request, or the type of auction).
--
-- /See:/ 'newServingRestriction' smart constructor.
data ServingRestriction = ServingRestriction
  { -- | The contexts for the restriction.
    contexts :: (Core.Maybe [ServingContext]),
    -- | Disapproval bound to this restriction. Only present if status=DISAPPROVED. Can be used to filter the response of the creatives.list method.
    disapproval :: (Core.Maybe Disapproval),
    -- | Any disapprovals bound to this restriction. Only present if status=DISAPPROVED. Can be used to filter the response of the creatives.list method. Deprecated; use disapproval field instead.
    disapprovalReasons :: (Core.Maybe [Disapproval]),
    -- | The status of the creative in this context (for example, it has been explicitly disapproved or is pending review).
    status :: (Core.Maybe ServingRestriction_Status)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServingRestriction' with the minimum fields required to make a request.
newServingRestriction ::
  ServingRestriction
newServingRestriction =
  ServingRestriction
    { contexts = Core.Nothing,
      disapproval = Core.Nothing,
      disapprovalReasons = Core.Nothing,
      status = Core.Nothing
    }

instance Core.FromJSON ServingRestriction where
  parseJSON =
    Core.withObject
      "ServingRestriction"
      ( \o ->
          ServingRestriction
            Core.<$> (o Core..:? "contexts")
            Core.<*> (o Core..:? "disapproval")
            Core.<*> (o Core..:? "disapprovalReasons")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON ServingRestriction where
  toJSON ServingRestriction {..} =
    Core.object
      ( Core.catMaybes
          [ ("contexts" Core..=) Core.<$> contexts,
            ("disapproval" Core..=) Core.<$> disapproval,
            ("disapprovalReasons" Core..=)
              Core.<$> disapprovalReasons,
            ("status" Core..=) Core.<$> status
          ]
      )

-- | Message depicting the size of the creative. The units of width and height depend on the type of the targeting.
--
-- /See:/ 'newSize' smart constructor.
data Size = Size
  { -- | The height of the creative.
    height :: (Core.Maybe Core.Int32),
    -- | The width of the creative
    width :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Size' with the minimum fields required to make a request.
newSize ::
  Size
newSize = Size {height = Core.Nothing, width = Core.Nothing}

instance Core.FromJSON Size where
  parseJSON =
    Core.withObject
      "Size"
      ( \o ->
          Size
            Core.<$> (o Core..:? "height") Core.<*> (o Core..:? "width")
      )

instance Core.ToJSON Size where
  toJSON Size {..} =
    Core.object
      ( Core.catMaybes
          [ ("height" Core..=) Core.<$> height,
            ("width" Core..=) Core.<$> width
          ]
      )

-- | A request for stopping notifications for changes to creative Status.
--
-- /See:/ 'newStopWatchingCreativeRequest' smart constructor.
data StopWatchingCreativeRequest = StopWatchingCreativeRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StopWatchingCreativeRequest' with the minimum fields required to make a request.
newStopWatchingCreativeRequest ::
  StopWatchingCreativeRequest
newStopWatchingCreativeRequest = StopWatchingCreativeRequest

instance Core.FromJSON StopWatchingCreativeRequest where
  parseJSON =
    Core.withObject
      "StopWatchingCreativeRequest"
      (\o -> Core.pure StopWatchingCreativeRequest)

instance Core.ToJSON StopWatchingCreativeRequest where
  toJSON = Core.const Core.emptyObject

-- | Advertisers can target different attributes of an ad slot. For example, they can choose to show ads only if the user is in the U.S. Such targeting criteria can be specified as part of Shared Targeting.
--
-- /See:/ 'newTargetingCriteria' smart constructor.
data TargetingCriteria = TargetingCriteria
  { -- | The list of values to exclude from targeting. Each value is AND\'d together.
    exclusions :: (Core.Maybe [TargetingValue]),
    -- | The list of value to include as part of the targeting. Each value is OR\'d together.
    inclusions :: (Core.Maybe [TargetingValue]),
    -- | The key representing the shared targeting criterion. Targeting criteria defined by Google ad servers will begin with GOOG_. Third parties may define their own keys. A list of permissible keys along with the acceptable values will be provided as part of the external documentation.
    key :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TargetingCriteria' with the minimum fields required to make a request.
newTargetingCriteria ::
  TargetingCriteria
newTargetingCriteria =
  TargetingCriteria
    { exclusions = Core.Nothing,
      inclusions = Core.Nothing,
      key = Core.Nothing
    }

instance Core.FromJSON TargetingCriteria where
  parseJSON =
    Core.withObject
      "TargetingCriteria"
      ( \o ->
          TargetingCriteria
            Core.<$> (o Core..:? "exclusions")
            Core.<*> (o Core..:? "inclusions")
            Core.<*> (o Core..:? "key")
      )

instance Core.ToJSON TargetingCriteria where
  toJSON TargetingCriteria {..} =
    Core.object
      ( Core.catMaybes
          [ ("exclusions" Core..=) Core.<$> exclusions,
            ("inclusions" Core..=) Core.<$> inclusions,
            ("key" Core..=) Core.<$> key
          ]
      )

-- | A polymorphic targeting value used as part of Shared Targeting.
--
-- /See:/ 'newTargetingValue' smart constructor.
data TargetingValue = TargetingValue
  { -- | The creative size value to include\/exclude. Filled in when key = GOOG/CREATIVE/SIZE
    creativeSizeValue :: (Core.Maybe CreativeSize),
    -- | The daypart targeting to include \/ exclude. Filled in when the key is GOOG/DAYPART/TARGETING. The definition of this targeting is derived from the structure used by Ad Manager.
    dayPartTargetingValue :: (Core.Maybe DayPartTargeting),
    -- | The long value to include\/exclude.
    longValue :: (Core.Maybe Core.Int64),
    -- | The string value to include\/exclude.
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
      longValue = Core.Nothing,
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
            Core.<*> ( o Core..:? "longValue"
                         Core.<&> Core.fmap Core.fromAsText
                     )
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
            ("longValue" Core..=) Core.. Core.AsText
              Core.<$> longValue,
            ("stringValue" Core..=) Core.<$> stringValue
          ]
      )

-- | Represents targeting about various types of technology.
--
-- /See:/ 'newTechnologyTargeting' smart constructor.
data TechnologyTargeting = TechnologyTargeting
  { -- | IDs of device capabilities to be included\/excluded.
    deviceCapabilityTargeting :: (Core.Maybe CriteriaTargeting),
    -- | IDs of device categories to be included\/excluded.
    deviceCategoryTargeting :: (Core.Maybe CriteriaTargeting),
    -- | Operating system related targeting information.
    operatingSystemTargeting :: (Core.Maybe OperatingSystemTargeting)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TechnologyTargeting' with the minimum fields required to make a request.
newTechnologyTargeting ::
  TechnologyTargeting
newTechnologyTargeting =
  TechnologyTargeting
    { deviceCapabilityTargeting = Core.Nothing,
      deviceCategoryTargeting = Core.Nothing,
      operatingSystemTargeting = Core.Nothing
    }

instance Core.FromJSON TechnologyTargeting where
  parseJSON =
    Core.withObject
      "TechnologyTargeting"
      ( \o ->
          TechnologyTargeting
            Core.<$> (o Core..:? "deviceCapabilityTargeting")
            Core.<*> (o Core..:? "deviceCategoryTargeting")
            Core.<*> (o Core..:? "operatingSystemTargeting")
      )

instance Core.ToJSON TechnologyTargeting where
  toJSON TechnologyTargeting {..} =
    Core.object
      ( Core.catMaybes
          [ ("deviceCapabilityTargeting" Core..=)
              Core.<$> deviceCapabilityTargeting,
            ("deviceCategoryTargeting" Core..=)
              Core.<$> deviceCategoryTargeting,
            ("operatingSystemTargeting" Core..=)
              Core.<$> operatingSystemTargeting
          ]
      )

-- | An interval of time, with an absolute start and end.
--
-- /See:/ 'newTimeInterval' smart constructor.
data TimeInterval = TimeInterval
  { -- | The timestamp marking the end of the range (exclusive) for which data is included.
    endTime :: (Core.Maybe Core.DateTime),
    -- | The timestamp marking the start of the range (inclusive) for which data is included.
    startTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimeInterval' with the minimum fields required to make a request.
newTimeInterval ::
  TimeInterval
newTimeInterval =
  TimeInterval {endTime = Core.Nothing, startTime = Core.Nothing}

instance Core.FromJSON TimeInterval where
  parseJSON =
    Core.withObject
      "TimeInterval"
      ( \o ->
          TimeInterval
            Core.<$> (o Core..:? "endTime")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON TimeInterval where
  toJSON TimeInterval {..} =
    Core.object
      ( Core.catMaybes
          [ ("endTime" Core..=) Core.<$> endTime,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and @google.protobuf.Timestamp@.
--
-- /See:/ 'newTimeOfDay' smart constructor.
data TimeOfDay' = TimeOfDay'
  { -- | Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value \"24:00:00\" for scenarios like business closing time.
    hours :: (Core.Maybe Core.Int32),
    -- | Minutes of hour of day. Must be from 0 to 59.
    minutes :: (Core.Maybe Core.Int32),
    -- | Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
    nanos :: (Core.Maybe Core.Int32),
    -- | Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds.
    seconds :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimeOfDay' with the minimum fields required to make a request.
newTimeOfDay ::
  TimeOfDay'
newTimeOfDay =
  TimeOfDay'
    { hours = Core.Nothing,
      minutes = Core.Nothing,
      nanos = Core.Nothing,
      seconds = Core.Nothing
    }

instance Core.FromJSON TimeOfDay' where
  parseJSON =
    Core.withObject
      "TimeOfDay'"
      ( \o ->
          TimeOfDay'
            Core.<$> (o Core..:? "hours")
            Core.<*> (o Core..:? "minutes")
            Core.<*> (o Core..:? "nanos")
            Core.<*> (o Core..:? "seconds")
      )

instance Core.ToJSON TimeOfDay' where
  toJSON TimeOfDay' {..} =
    Core.object
      ( Core.catMaybes
          [ ("hours" Core..=) Core.<$> hours,
            ("minutes" Core..=) Core.<$> minutes,
            ("nanos" Core..=) Core.<$> nanos,
            ("seconds" Core..=) Core.<$> seconds
          ]
      )

-- | Represents a list of targeted and excluded URLs (for example, google.com). For Private Auction and AdX Preferred Deals, URLs are either included or excluded. For Programmatic Guaranteed and Preferred Deals, this doesn\'t apply.
--
-- /See:/ 'newUrlTargeting' smart constructor.
data UrlTargeting = UrlTargeting
  { -- | A list of URLs to be excluded.
    excludedUrls :: (Core.Maybe [Core.Text]),
    -- | A list of URLs to be included.
    targetedUrls :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UrlTargeting' with the minimum fields required to make a request.
newUrlTargeting ::
  UrlTargeting
newUrlTargeting =
  UrlTargeting {excludedUrls = Core.Nothing, targetedUrls = Core.Nothing}

instance Core.FromJSON UrlTargeting where
  parseJSON =
    Core.withObject
      "UrlTargeting"
      ( \o ->
          UrlTargeting
            Core.<$> (o Core..:? "excludedUrls")
            Core.<*> (o Core..:? "targetedUrls")
      )

instance Core.ToJSON UrlTargeting where
  toJSON UrlTargeting {..} =
    Core.object
      ( Core.catMaybes
          [ ("excludedUrls" Core..=) Core.<$> excludedUrls,
            ("targetedUrls" Core..=) Core.<$> targetedUrls
          ]
      )

-- | Video content for a creative.
--
-- /See:/ 'newVideoContent' smart constructor.
data VideoContent = VideoContent
  { -- | The URL to fetch a video ad.
    videoUrl :: (Core.Maybe Core.Text),
    -- | The contents of a VAST document for a video ad. This document should conform to the VAST 2.0 or 3.0 standard.
    videoVastXml :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VideoContent' with the minimum fields required to make a request.
newVideoContent ::
  VideoContent
newVideoContent =
  VideoContent {videoUrl = Core.Nothing, videoVastXml = Core.Nothing}

instance Core.FromJSON VideoContent where
  parseJSON =
    Core.withObject
      "VideoContent"
      ( \o ->
          VideoContent
            Core.<$> (o Core..:? "videoUrl")
            Core.<*> (o Core..:? "videoVastXml")
      )

instance Core.ToJSON VideoContent where
  toJSON VideoContent {..} =
    Core.object
      ( Core.catMaybes
          [ ("videoUrl" Core..=) Core.<$> videoUrl,
            ("videoVastXml" Core..=) Core.<$> videoVastXml
          ]
      )

-- | Represents targeting information about video.
--
-- /See:/ 'newVideoTargeting' smart constructor.
data VideoTargeting = VideoTargeting
  { -- | A list of video positions to be excluded. Position types can either be included or excluded (XOR).
    excludedPositionTypes :: (Core.Maybe [VideoTargeting_ExcludedPositionTypesItem]),
    -- | A list of video positions to be included. When the included list is present, the excluded list must be empty. When the excluded list is present, the included list must be empty.
    targetedPositionTypes :: (Core.Maybe [VideoTargeting_TargetedPositionTypesItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VideoTargeting' with the minimum fields required to make a request.
newVideoTargeting ::
  VideoTargeting
newVideoTargeting =
  VideoTargeting
    { excludedPositionTypes = Core.Nothing,
      targetedPositionTypes = Core.Nothing
    }

instance Core.FromJSON VideoTargeting where
  parseJSON =
    Core.withObject
      "VideoTargeting"
      ( \o ->
          VideoTargeting
            Core.<$> (o Core..:? "excludedPositionTypes")
            Core.<*> (o Core..:? "targetedPositionTypes")
      )

instance Core.ToJSON VideoTargeting where
  toJSON VideoTargeting {..} =
    Core.object
      ( Core.catMaybes
          [ ("excludedPositionTypes" Core..=)
              Core.<$> excludedPositionTypes,
            ("targetedPositionTypes" Core..=)
              Core.<$> targetedPositionTypes
          ]
      )

-- | A request for watching changes to creative Status.
--
-- /See:/ 'newWatchCreativeRequest' smart constructor.
newtype WatchCreativeRequest = WatchCreativeRequest
  { -- | The Pub\/Sub topic to publish notifications to. This topic must already exist and must give permission to ad-exchange-buyside-reports\@google.com to write to the topic. This should be the full resource name in \"projects\/{project/id}\/topics\/{topic/id}\" format.
    topic :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WatchCreativeRequest' with the minimum fields required to make a request.
newWatchCreativeRequest ::
  WatchCreativeRequest
newWatchCreativeRequest = WatchCreativeRequest {topic = Core.Nothing}

instance Core.FromJSON WatchCreativeRequest where
  parseJSON =
    Core.withObject
      "WatchCreativeRequest"
      ( \o ->
          WatchCreativeRequest Core.<$> (o Core..:? "topic")
      )

instance Core.ToJSON WatchCreativeRequest where
  toJSON WatchCreativeRequest {..} =
    Core.object
      (Core.catMaybes [("topic" Core..=) Core.<$> topic])
