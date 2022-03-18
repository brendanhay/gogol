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
-- Module      : Network.Google.AdExchangeBuyer2.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.AdExchangeBuyer2.Types
  ( -- * Configuration
    adExchangeBuyer2Service,

    -- * OAuth Scopes
    adexchangeBuyerScope,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AbsoluteDateRange
    AbsoluteDateRange (..),
    newAbsoluteDateRange,

    -- ** AcceptProposalRequest
    AcceptProposalRequest (..),
    newAcceptProposalRequest,

    -- ** AdSize
    AdSize (..),
    newAdSize,

    -- ** AdSize_SizeType
    AdSize_SizeType (..),

    -- ** AdTechnologyProviders
    AdTechnologyProviders (..),
    newAdTechnologyProviders,

    -- ** AddDealAssociationRequest
    AddDealAssociationRequest (..),
    newAddDealAssociationRequest,

    -- ** AddNoteRequest
    AddNoteRequest (..),
    newAddNoteRequest,

    -- ** AppContext
    AppContext (..),
    newAppContext,

    -- ** AppContext_AppTypesItem
    AppContext_AppTypesItem (..),

    -- ** AuctionContext
    AuctionContext (..),
    newAuctionContext,

    -- ** AuctionContext_AuctionTypesItem
    AuctionContext_AuctionTypesItem (..),

    -- ** BidMetricsRow
    BidMetricsRow (..),
    newBidMetricsRow,

    -- ** BidResponseWithoutBidsStatusRow
    BidResponseWithoutBidsStatusRow (..),
    newBidResponseWithoutBidsStatusRow,

    -- ** BidResponseWithoutBidsStatusRow_Status
    BidResponseWithoutBidsStatusRow_Status (..),

    -- ** Buyer
    Buyer (..),
    newBuyer,

    -- ** CalloutStatusRow
    CalloutStatusRow (..),
    newCalloutStatusRow,

    -- ** CancelNegotiationRequest
    CancelNegotiationRequest (..),
    newCancelNegotiationRequest,

    -- ** Client
    Client (..),
    newClient,

    -- ** Client_EntityType
    Client_EntityType (..),

    -- ** Client_Role
    Client_Role (..),

    -- ** Client_Status
    Client_Status (..),

    -- ** ClientUser
    ClientUser (..),
    newClientUser,

    -- ** ClientUser_Status
    ClientUser_Status (..),

    -- ** ClientUserInvitation
    ClientUserInvitation (..),
    newClientUserInvitation,

    -- ** CompleteSetupRequest
    CompleteSetupRequest (..),
    newCompleteSetupRequest,

    -- ** ContactInformation
    ContactInformation (..),
    newContactInformation,

    -- ** Correction
    Correction (..),
    newCorrection,

    -- ** Correction_Type
    Correction_Type (..),

    -- ** Creative
    Creative (..),
    newCreative,

    -- ** Creative_AttributesItem
    Creative_AttributesItem (..),

    -- ** Creative_DealsStatus
    Creative_DealsStatus (..),

    -- ** Creative_OpenAuctionStatus
    Creative_OpenAuctionStatus (..),

    -- ** Creative_RestrictedCategoriesItem
    Creative_RestrictedCategoriesItem (..),

    -- ** CreativeDealAssociation
    CreativeDealAssociation (..),
    newCreativeDealAssociation,

    -- ** CreativeRestrictions
    CreativeRestrictions (..),
    newCreativeRestrictions,

    -- ** CreativeRestrictions_CreativeFormat
    CreativeRestrictions_CreativeFormat (..),

    -- ** CreativeRestrictions_SkippableAdType
    CreativeRestrictions_SkippableAdType (..),

    -- ** CreativeSize
    CreativeSize (..),
    newCreativeSize,

    -- ** CreativeSize_AllowedFormatsItem
    CreativeSize_AllowedFormatsItem (..),

    -- ** CreativeSize_CreativeSizeType
    CreativeSize_CreativeSizeType (..),

    -- ** CreativeSize_NativeTemplate
    CreativeSize_NativeTemplate (..),

    -- ** CreativeSize_SkippableAdType
    CreativeSize_SkippableAdType (..),

    -- ** CreativeSpecification
    CreativeSpecification (..),
    newCreativeSpecification,

    -- ** CreativeStatusRow
    CreativeStatusRow (..),
    newCreativeStatusRow,

    -- ** CriteriaTargeting
    CriteriaTargeting (..),
    newCriteriaTargeting,

    -- ** Date
    Date (..),
    newDate,

    -- ** DayPart
    DayPart (..),
    newDayPart,

    -- ** DayPart_DayOfWeek
    DayPart_DayOfWeek (..),

    -- ** DayPartTargeting
    DayPartTargeting (..),
    newDayPartTargeting,

    -- ** DayPartTargeting_TimeZoneType
    DayPartTargeting_TimeZoneType (..),

    -- ** Deal
    Deal (..),
    newDeal,

    -- ** Deal_CreativePreApprovalPolicy
    Deal_CreativePreApprovalPolicy (..),

    -- ** Deal_CreativeSafeFrameCompatibility
    Deal_CreativeSafeFrameCompatibility (..),

    -- ** Deal_ProgrammaticCreativeSource
    Deal_ProgrammaticCreativeSource (..),

    -- ** Deal_SyndicationProduct
    Deal_SyndicationProduct (..),

    -- ** DealPauseStatus
    DealPauseStatus (..),
    newDealPauseStatus,

    -- ** DealPauseStatus_FirstPausedBy
    DealPauseStatus_FirstPausedBy (..),

    -- ** DealServingMetadata
    DealServingMetadata (..),
    newDealServingMetadata,

    -- ** DealTerms
    DealTerms (..),
    newDealTerms,

    -- ** DealTerms_BrandingType
    DealTerms_BrandingType (..),

    -- ** DeliveryControl
    DeliveryControl (..),
    newDeliveryControl,

    -- ** DeliveryControl_CreativeBlockingLevel
    DeliveryControl_CreativeBlockingLevel (..),

    -- ** DeliveryControl_DeliveryRateType
    DeliveryControl_DeliveryRateType (..),

    -- ** Disapproval
    Disapproval (..),
    newDisapproval,

    -- ** Disapproval_Reason
    Disapproval_Reason (..),

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** FilterSet
    FilterSet (..),
    newFilterSet,

    -- ** FilterSet_BreakdownDimensionsItem
    FilterSet_BreakdownDimensionsItem (..),

    -- ** FilterSet_Environment
    FilterSet_Environment (..),

    -- ** FilterSet_Format
    FilterSet_Format (..),

    -- ** FilterSet_FormatsItem
    FilterSet_FormatsItem (..),

    -- ** FilterSet_PlatformsItem
    FilterSet_PlatformsItem (..),

    -- ** FilterSet_TimeSeriesGranularity
    FilterSet_TimeSeriesGranularity (..),

    -- ** FilteredBidCreativeRow
    FilteredBidCreativeRow (..),
    newFilteredBidCreativeRow,

    -- ** FilteredBidDetailRow
    FilteredBidDetailRow (..),
    newFilteredBidDetailRow,

    -- ** FirstPartyMobileApplicationTargeting
    FirstPartyMobileApplicationTargeting (..),
    newFirstPartyMobileApplicationTargeting,

    -- ** FrequencyCap
    FrequencyCap (..),
    newFrequencyCap,

    -- ** FrequencyCap_TimeUnitType
    FrequencyCap_TimeUnitType (..),

    -- ** GuaranteedFixedPriceTerms
    GuaranteedFixedPriceTerms (..),
    newGuaranteedFixedPriceTerms,

    -- ** GuaranteedFixedPriceTerms_ReservationType
    GuaranteedFixedPriceTerms_ReservationType (..),

    -- ** HtmlContent
    HtmlContent (..),
    newHtmlContent,

    -- ** Image
    Image (..),
    newImage,

    -- ** ImpressionMetricsRow
    ImpressionMetricsRow (..),
    newImpressionMetricsRow,

    -- ** InventorySizeTargeting
    InventorySizeTargeting (..),
    newInventorySizeTargeting,

    -- ** ListBidMetricsResponse
    ListBidMetricsResponse (..),
    newListBidMetricsResponse,

    -- ** ListBidResponseErrorsResponse
    ListBidResponseErrorsResponse (..),
    newListBidResponseErrorsResponse,

    -- ** ListBidResponsesWithoutBidsResponse
    ListBidResponsesWithoutBidsResponse (..),
    newListBidResponsesWithoutBidsResponse,

    -- ** ListClientUserInvitationsResponse
    ListClientUserInvitationsResponse (..),
    newListClientUserInvitationsResponse,

    -- ** ListClientUsersResponse
    ListClientUsersResponse (..),
    newListClientUsersResponse,

    -- ** ListClientsResponse
    ListClientsResponse (..),
    newListClientsResponse,

    -- ** ListCreativeStatusBreakdownByCreativeResponse
    ListCreativeStatusBreakdownByCreativeResponse (..),
    newListCreativeStatusBreakdownByCreativeResponse,

    -- ** ListCreativeStatusBreakdownByDetailResponse
    ListCreativeStatusBreakdownByDetailResponse (..),
    newListCreativeStatusBreakdownByDetailResponse,

    -- ** ListCreativeStatusBreakdownByDetailResponse_DetailType
    ListCreativeStatusBreakdownByDetailResponse_DetailType (..),

    -- ** ListCreativesResponse
    ListCreativesResponse (..),
    newListCreativesResponse,

    -- ** ListDealAssociationsResponse
    ListDealAssociationsResponse (..),
    newListDealAssociationsResponse,

    -- ** ListFilterSetsResponse
    ListFilterSetsResponse (..),
    newListFilterSetsResponse,

    -- ** ListFilteredBidRequestsResponse
    ListFilteredBidRequestsResponse (..),
    newListFilteredBidRequestsResponse,

    -- ** ListFilteredBidsResponse
    ListFilteredBidsResponse (..),
    newListFilteredBidsResponse,

    -- ** ListImpressionMetricsResponse
    ListImpressionMetricsResponse (..),
    newListImpressionMetricsResponse,

    -- ** ListLosingBidsResponse
    ListLosingBidsResponse (..),
    newListLosingBidsResponse,

    -- ** ListNonBillableWinningBidsResponse
    ListNonBillableWinningBidsResponse (..),
    newListNonBillableWinningBidsResponse,

    -- ** ListProductsResponse
    ListProductsResponse (..),
    newListProductsResponse,

    -- ** ListProposalsResponse
    ListProposalsResponse (..),
    newListProposalsResponse,

    -- ** ListPublisherProfilesResponse
    ListPublisherProfilesResponse (..),
    newListPublisherProfilesResponse,

    -- ** LocationContext
    LocationContext (..),
    newLocationContext,

    -- ** MarketplaceTargeting
    MarketplaceTargeting (..),
    newMarketplaceTargeting,

    -- ** MetricValue
    MetricValue (..),
    newMetricValue,

    -- ** MobileApplicationTargeting
    MobileApplicationTargeting (..),
    newMobileApplicationTargeting,

    -- ** Money
    Money (..),
    newMoney,

    -- ** NativeContent
    NativeContent (..),
    newNativeContent,

    -- ** NonBillableWinningBidStatusRow
    NonBillableWinningBidStatusRow (..),
    newNonBillableWinningBidStatusRow,

    -- ** NonBillableWinningBidStatusRow_Status
    NonBillableWinningBidStatusRow_Status (..),

    -- ** NonGuaranteedAuctionTerms
    NonGuaranteedAuctionTerms (..),
    newNonGuaranteedAuctionTerms,

    -- ** NonGuaranteedFixedPriceTerms
    NonGuaranteedFixedPriceTerms (..),
    newNonGuaranteedFixedPriceTerms,

    -- ** Note
    Note (..),
    newNote,

    -- ** Note_CreatorRole
    Note_CreatorRole (..),

    -- ** OperatingSystemTargeting
    OperatingSystemTargeting (..),
    newOperatingSystemTargeting,

    -- ** PauseProposalDealsRequest
    PauseProposalDealsRequest (..),
    newPauseProposalDealsRequest,

    -- ** PauseProposalRequest
    PauseProposalRequest (..),
    newPauseProposalRequest,

    -- ** PlacementTargeting
    PlacementTargeting (..),
    newPlacementTargeting,

    -- ** PlatformContext
    PlatformContext (..),
    newPlatformContext,

    -- ** PlatformContext_PlatformsItem
    PlatformContext_PlatformsItem (..),

    -- ** Price
    Price (..),
    newPrice,

    -- ** Price_PricingType
    Price_PricingType (..),

    -- ** PricePerBuyer
    PricePerBuyer (..),
    newPricePerBuyer,

    -- ** PrivateData
    PrivateData (..),
    newPrivateData,

    -- ** Product
    Product (..),
    newProduct,

    -- ** Product_SyndicationProduct
    Product_SyndicationProduct (..),

    -- ** Proposal
    Proposal (..),
    newProposal,

    -- ** Proposal_LastUpdaterOrCommentorRole
    Proposal_LastUpdaterOrCommentorRole (..),

    -- ** Proposal_OriginatorRole
    Proposal_OriginatorRole (..),

    -- ** Proposal_ProposalState
    Proposal_ProposalState (..),

    -- ** PublisherProfile
    PublisherProfile (..),
    newPublisherProfile,

    -- ** PublisherProfileMobileApplication
    PublisherProfileMobileApplication (..),
    newPublisherProfileMobileApplication,

    -- ** PublisherProfileMobileApplication_AppStore
    PublisherProfileMobileApplication_AppStore (..),

    -- ** RealtimeTimeRange
    RealtimeTimeRange (..),
    newRealtimeTimeRange,

    -- ** RelativeDateRange
    RelativeDateRange (..),
    newRelativeDateRange,

    -- ** RemoveDealAssociationRequest
    RemoveDealAssociationRequest (..),
    newRemoveDealAssociationRequest,

    -- ** ResumeProposalDealsRequest
    ResumeProposalDealsRequest (..),
    newResumeProposalDealsRequest,

    -- ** ResumeProposalRequest
    ResumeProposalRequest (..),
    newResumeProposalRequest,

    -- ** RowDimensions
    RowDimensions (..),
    newRowDimensions,

    -- ** SecurityContext
    SecurityContext (..),
    newSecurityContext,

    -- ** SecurityContext_SecuritiesItem
    SecurityContext_SecuritiesItem (..),

    -- ** Seller
    Seller (..),
    newSeller,

    -- ** ServingContext
    ServingContext (..),
    newServingContext,

    -- ** ServingContext_All
    ServingContext_All (..),

    -- ** ServingRestriction
    ServingRestriction (..),
    newServingRestriction,

    -- ** ServingRestriction_Status
    ServingRestriction_Status (..),

    -- ** Size
    Size (..),
    newSize,

    -- ** StopWatchingCreativeRequest
    StopWatchingCreativeRequest (..),
    newStopWatchingCreativeRequest,

    -- ** TargetingCriteria
    TargetingCriteria (..),
    newTargetingCriteria,

    -- ** TargetingValue
    TargetingValue (..),
    newTargetingValue,

    -- ** TechnologyTargeting
    TechnologyTargeting (..),
    newTechnologyTargeting,

    -- ** TimeInterval
    TimeInterval (..),
    newTimeInterval,

    -- ** TimeOfDay'
    TimeOfDay' (..),
    newTimeOfDay,

    -- ** UrlTargeting
    UrlTargeting (..),
    newUrlTargeting,

    -- ** VideoContent
    VideoContent (..),
    newVideoContent,

    -- ** VideoTargeting
    VideoTargeting (..),
    newVideoTargeting,

    -- ** VideoTargeting_ExcludedPositionTypesItem
    VideoTargeting_ExcludedPositionTypesItem (..),

    -- ** VideoTargeting_TargetedPositionTypesItem
    VideoTargeting_TargetedPositionTypesItem (..),

    -- ** WatchCreativeRequest
    WatchCreativeRequest (..),
    newWatchCreativeRequest,

    -- ** AccountsCreativesCreateDuplicateIdMode
    AccountsCreativesCreateDuplicateIdMode (..),

    -- ** AccountsFinalizedProposalsListFilterSyntax
    AccountsFinalizedProposalsListFilterSyntax (..),

    -- ** AccountsProposalsListFilterSyntax
    AccountsProposalsListFilterSyntax (..),
  )
where

import Network.Google.AdExchangeBuyer2.Internal.Product
import Network.Google.AdExchangeBuyer2.Internal.Sum
import qualified Network.Google.Prelude as Core

-- | Default request referring to version @v2beta1@ of the Ad Exchange Buyer API II. This contains the host and root path used as a starting point for constructing service requests.
adExchangeBuyer2Service :: Core.ServiceConfig
adExchangeBuyer2Service =
  Core.defaultService
    (Core.ServiceId "adexchangebuyer2:v2beta1")
    "adexchangebuyer.googleapis.com"

-- | Manage your Ad Exchange buyer account configuration
adexchangeBuyerScope :: Core.Proxy '["https://www.googleapis.com/auth/adexchange.buyer"]
adexchangeBuyerScope = Core.Proxy
