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
-- Module      : Gogol.AdExchangeBuyer2
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Accesses the latest features for managing Authorized Buyers accounts, Real-Time Bidding configurations and auction metrics, and Marketplace programmatic deals.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference>
module Gogol.AdExchangeBuyer2
  ( -- * Configuration
    adExchangeBuyer2Service,

    -- * OAuth Scopes
    Adexchange'Buyer,

    -- * Resources

    -- ** adexchangebuyer2.accounts.clients.create
    AdExchangeBuyer2AccountsClientsCreateResource,
    newAdExchangeBuyer2AccountsClientsCreate,
    AdExchangeBuyer2AccountsClientsCreate,

    -- ** adexchangebuyer2.accounts.clients.get
    AdExchangeBuyer2AccountsClientsGetResource,
    newAdExchangeBuyer2AccountsClientsGet,
    AdExchangeBuyer2AccountsClientsGet,

    -- ** adexchangebuyer2.accounts.clients.invitations.create
    AdExchangeBuyer2AccountsClientsInvitationsCreateResource,
    newAdExchangeBuyer2AccountsClientsInvitationsCreate,
    AdExchangeBuyer2AccountsClientsInvitationsCreate,

    -- ** adexchangebuyer2.accounts.clients.invitations.get
    AdExchangeBuyer2AccountsClientsInvitationsGetResource,
    newAdExchangeBuyer2AccountsClientsInvitationsGet,
    AdExchangeBuyer2AccountsClientsInvitationsGet,

    -- ** adexchangebuyer2.accounts.clients.invitations.list
    AdExchangeBuyer2AccountsClientsInvitationsListResource,
    newAdExchangeBuyer2AccountsClientsInvitationsList,
    AdExchangeBuyer2AccountsClientsInvitationsList,

    -- ** adexchangebuyer2.accounts.clients.list
    AdExchangeBuyer2AccountsClientsListResource,
    newAdExchangeBuyer2AccountsClientsList,
    AdExchangeBuyer2AccountsClientsList,

    -- ** adexchangebuyer2.accounts.clients.update
    AdExchangeBuyer2AccountsClientsUpdateResource,
    newAdExchangeBuyer2AccountsClientsUpdate,
    AdExchangeBuyer2AccountsClientsUpdate,

    -- ** adexchangebuyer2.accounts.clients.users.get
    AdExchangeBuyer2AccountsClientsUsersGetResource,
    newAdExchangeBuyer2AccountsClientsUsersGet,
    AdExchangeBuyer2AccountsClientsUsersGet,

    -- ** adexchangebuyer2.accounts.clients.users.list
    AdExchangeBuyer2AccountsClientsUsersListResource,
    newAdExchangeBuyer2AccountsClientsUsersList,
    AdExchangeBuyer2AccountsClientsUsersList,

    -- ** adexchangebuyer2.accounts.clients.users.update
    AdExchangeBuyer2AccountsClientsUsersUpdateResource,
    newAdExchangeBuyer2AccountsClientsUsersUpdate,
    AdExchangeBuyer2AccountsClientsUsersUpdate,

    -- ** adexchangebuyer2.accounts.creatives.create
    AdExchangeBuyer2AccountsCreativesCreateResource,
    newAdExchangeBuyer2AccountsCreativesCreate,
    AdExchangeBuyer2AccountsCreativesCreate,

    -- ** adexchangebuyer2.accounts.creatives.dealAssociations.add
    AdExchangeBuyer2AccountsCreativesDealAssociationsAddResource,
    newAdExchangeBuyer2AccountsCreativesDealAssociationsAdd,
    AdExchangeBuyer2AccountsCreativesDealAssociationsAdd,

    -- ** adexchangebuyer2.accounts.creatives.dealAssociations.list
    AdExchangeBuyer2AccountsCreativesDealAssociationsListResource,
    newAdExchangeBuyer2AccountsCreativesDealAssociationsList,
    AdExchangeBuyer2AccountsCreativesDealAssociationsList,

    -- ** adexchangebuyer2.accounts.creatives.dealAssociations.remove
    AdExchangeBuyer2AccountsCreativesDealAssociationsRemoveResource,
    newAdExchangeBuyer2AccountsCreativesDealAssociationsRemove,
    AdExchangeBuyer2AccountsCreativesDealAssociationsRemove,

    -- ** adexchangebuyer2.accounts.creatives.get
    AdExchangeBuyer2AccountsCreativesGetResource,
    newAdExchangeBuyer2AccountsCreativesGet,
    AdExchangeBuyer2AccountsCreativesGet,

    -- ** adexchangebuyer2.accounts.creatives.list
    AdExchangeBuyer2AccountsCreativesListResource,
    newAdExchangeBuyer2AccountsCreativesList,
    AdExchangeBuyer2AccountsCreativesList,

    -- ** adexchangebuyer2.accounts.creatives.stopWatching
    AdExchangeBuyer2AccountsCreativesStopWatchingResource,
    newAdExchangeBuyer2AccountsCreativesStopWatching,
    AdExchangeBuyer2AccountsCreativesStopWatching,

    -- ** adexchangebuyer2.accounts.creatives.update
    AdExchangeBuyer2AccountsCreativesUpdateResource,
    newAdExchangeBuyer2AccountsCreativesUpdate,
    AdExchangeBuyer2AccountsCreativesUpdate,

    -- ** adexchangebuyer2.accounts.creatives.watch
    AdExchangeBuyer2AccountsCreativesWatchResource,
    newAdExchangeBuyer2AccountsCreativesWatch,
    AdExchangeBuyer2AccountsCreativesWatch,

    -- ** adexchangebuyer2.accounts.finalizedProposals.list
    AdExchangeBuyer2AccountsFinalizedProposalsListResource,
    newAdExchangeBuyer2AccountsFinalizedProposalsList,
    AdExchangeBuyer2AccountsFinalizedProposalsList,

    -- ** adexchangebuyer2.accounts.finalizedProposals.pause
    AdExchangeBuyer2AccountsFinalizedProposalsPauseResource,
    newAdExchangeBuyer2AccountsFinalizedProposalsPause,
    AdExchangeBuyer2AccountsFinalizedProposalsPause,

    -- ** adexchangebuyer2.accounts.finalizedProposals.resume
    AdExchangeBuyer2AccountsFinalizedProposalsResumeResource,
    newAdExchangeBuyer2AccountsFinalizedProposalsResume,
    AdExchangeBuyer2AccountsFinalizedProposalsResume,

    -- ** adexchangebuyer2.accounts.products.get
    AdExchangeBuyer2AccountsProductsGetResource,
    newAdExchangeBuyer2AccountsProductsGet,
    AdExchangeBuyer2AccountsProductsGet,

    -- ** adexchangebuyer2.accounts.products.list
    AdExchangeBuyer2AccountsProductsListResource,
    newAdExchangeBuyer2AccountsProductsList,
    AdExchangeBuyer2AccountsProductsList,

    -- ** adexchangebuyer2.accounts.proposals.accept
    AdExchangeBuyer2AccountsProposalsAcceptResource,
    newAdExchangeBuyer2AccountsProposalsAccept,
    AdExchangeBuyer2AccountsProposalsAccept,

    -- ** adexchangebuyer2.accounts.proposals.addNote
    AdExchangeBuyer2AccountsProposalsAddNoteResource,
    newAdExchangeBuyer2AccountsProposalsAddNote,
    AdExchangeBuyer2AccountsProposalsAddNote,

    -- ** adexchangebuyer2.accounts.proposals.cancelNegotiation
    AdExchangeBuyer2AccountsProposalsCancelNegotiationResource,
    newAdExchangeBuyer2AccountsProposalsCancelNegotiation,
    AdExchangeBuyer2AccountsProposalsCancelNegotiation,

    -- ** adexchangebuyer2.accounts.proposals.completeSetup
    AdExchangeBuyer2AccountsProposalsCompleteSetupResource,
    newAdExchangeBuyer2AccountsProposalsCompleteSetup,
    AdExchangeBuyer2AccountsProposalsCompleteSetup,

    -- ** adexchangebuyer2.accounts.proposals.create
    AdExchangeBuyer2AccountsProposalsCreateResource,
    newAdExchangeBuyer2AccountsProposalsCreate,
    AdExchangeBuyer2AccountsProposalsCreate,

    -- ** adexchangebuyer2.accounts.proposals.get
    AdExchangeBuyer2AccountsProposalsGetResource,
    newAdExchangeBuyer2AccountsProposalsGet,
    AdExchangeBuyer2AccountsProposalsGet,

    -- ** adexchangebuyer2.accounts.proposals.list
    AdExchangeBuyer2AccountsProposalsListResource,
    newAdExchangeBuyer2AccountsProposalsList,
    AdExchangeBuyer2AccountsProposalsList,

    -- ** adexchangebuyer2.accounts.proposals.pause
    AdExchangeBuyer2AccountsProposalsPauseResource,
    newAdExchangeBuyer2AccountsProposalsPause,
    AdExchangeBuyer2AccountsProposalsPause,

    -- ** adexchangebuyer2.accounts.proposals.resume
    AdExchangeBuyer2AccountsProposalsResumeResource,
    newAdExchangeBuyer2AccountsProposalsResume,
    AdExchangeBuyer2AccountsProposalsResume,

    -- ** adexchangebuyer2.accounts.proposals.update
    AdExchangeBuyer2AccountsProposalsUpdateResource,
    newAdExchangeBuyer2AccountsProposalsUpdate,
    AdExchangeBuyer2AccountsProposalsUpdate,

    -- ** adexchangebuyer2.accounts.publisherProfiles.get
    AdExchangeBuyer2AccountsPublisherProfilesGetResource,
    newAdExchangeBuyer2AccountsPublisherProfilesGet,
    AdExchangeBuyer2AccountsPublisherProfilesGet,

    -- ** adexchangebuyer2.accounts.publisherProfiles.list
    AdExchangeBuyer2AccountsPublisherProfilesListResource,
    newAdExchangeBuyer2AccountsPublisherProfilesList,
    AdExchangeBuyer2AccountsPublisherProfilesList,

    -- ** adexchangebuyer2.bidders.accounts.filterSets.bidMetrics.list
    AdExchangeBuyer2BiddersAccountsFilterSetsBidMetricsListResource,
    newAdExchangeBuyer2BiddersAccountsFilterSetsBidMetricsList,
    AdExchangeBuyer2BiddersAccountsFilterSetsBidMetricsList,

    -- ** adexchangebuyer2.bidders.accounts.filterSets.bidResponseErrors.list
    AdExchangeBuyer2BiddersAccountsFilterSetsBidResponseErrorsListResource,
    newAdExchangeBuyer2BiddersAccountsFilterSetsBidResponseErrorsList,
    AdExchangeBuyer2BiddersAccountsFilterSetsBidResponseErrorsList,

    -- ** adexchangebuyer2.bidders.accounts.filterSets.bidResponsesWithoutBids.list
    AdExchangeBuyer2BiddersAccountsFilterSetsBidResponsesWithoutBidsListResource,
    newAdExchangeBuyer2BiddersAccountsFilterSetsBidResponsesWithoutBidsList,
    AdExchangeBuyer2BiddersAccountsFilterSetsBidResponsesWithoutBidsList,

    -- ** adexchangebuyer2.bidders.accounts.filterSets.create
    AdExchangeBuyer2BiddersAccountsFilterSetsCreateResource,
    newAdExchangeBuyer2BiddersAccountsFilterSetsCreate,
    AdExchangeBuyer2BiddersAccountsFilterSetsCreate,

    -- ** adexchangebuyer2.bidders.accounts.filterSets.delete
    AdExchangeBuyer2BiddersAccountsFilterSetsDeleteResource,
    newAdExchangeBuyer2BiddersAccountsFilterSetsDelete,
    AdExchangeBuyer2BiddersAccountsFilterSetsDelete,

    -- ** adexchangebuyer2.bidders.accounts.filterSets.filteredBidRequests.list
    AdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidRequestsListResource,
    newAdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidRequestsList,
    AdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidRequestsList,

    -- ** adexchangebuyer2.bidders.accounts.filterSets.filteredBids.creatives.list
    AdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidsCreativesListResource,
    newAdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidsCreativesList,
    AdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidsCreativesList,

    -- ** adexchangebuyer2.bidders.accounts.filterSets.filteredBids.details.list
    AdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidsDetailsListResource,
    newAdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidsDetailsList,
    AdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidsDetailsList,

    -- ** adexchangebuyer2.bidders.accounts.filterSets.filteredBids.list
    AdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidsListResource,
    newAdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidsList,
    AdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidsList,

    -- ** adexchangebuyer2.bidders.accounts.filterSets.get
    AdExchangeBuyer2BiddersAccountsFilterSetsGetResource,
    newAdExchangeBuyer2BiddersAccountsFilterSetsGet,
    AdExchangeBuyer2BiddersAccountsFilterSetsGet,

    -- ** adexchangebuyer2.bidders.accounts.filterSets.impressionMetrics.list
    AdExchangeBuyer2BiddersAccountsFilterSetsImpressionMetricsListResource,
    newAdExchangeBuyer2BiddersAccountsFilterSetsImpressionMetricsList,
    AdExchangeBuyer2BiddersAccountsFilterSetsImpressionMetricsList,

    -- ** adexchangebuyer2.bidders.accounts.filterSets.list
    AdExchangeBuyer2BiddersAccountsFilterSetsListResource,
    newAdExchangeBuyer2BiddersAccountsFilterSetsList,
    AdExchangeBuyer2BiddersAccountsFilterSetsList,

    -- ** adexchangebuyer2.bidders.accounts.filterSets.losingBids.list
    AdExchangeBuyer2BiddersAccountsFilterSetsLosingBidsListResource,
    newAdExchangeBuyer2BiddersAccountsFilterSetsLosingBidsList,
    AdExchangeBuyer2BiddersAccountsFilterSetsLosingBidsList,

    -- ** adexchangebuyer2.bidders.accounts.filterSets.nonBillableWinningBids.list
    AdExchangeBuyer2BiddersAccountsFilterSetsNonBillableWinningBidsListResource,
    newAdExchangeBuyer2BiddersAccountsFilterSetsNonBillableWinningBidsList,
    AdExchangeBuyer2BiddersAccountsFilterSetsNonBillableWinningBidsList,

    -- ** adexchangebuyer2.bidders.filterSets.bidMetrics.list
    AdExchangeBuyer2BiddersFilterSetsBidMetricsListResource,
    newAdExchangeBuyer2BiddersFilterSetsBidMetricsList,
    AdExchangeBuyer2BiddersFilterSetsBidMetricsList,

    -- ** adexchangebuyer2.bidders.filterSets.bidResponseErrors.list
    AdExchangeBuyer2BiddersFilterSetsBidResponseErrorsListResource,
    newAdExchangeBuyer2BiddersFilterSetsBidResponseErrorsList,
    AdExchangeBuyer2BiddersFilterSetsBidResponseErrorsList,

    -- ** adexchangebuyer2.bidders.filterSets.bidResponsesWithoutBids.list
    AdExchangeBuyer2BiddersFilterSetsBidResponsesWithoutBidsListResource,
    newAdExchangeBuyer2BiddersFilterSetsBidResponsesWithoutBidsList,
    AdExchangeBuyer2BiddersFilterSetsBidResponsesWithoutBidsList,

    -- ** adexchangebuyer2.bidders.filterSets.create
    AdExchangeBuyer2BiddersFilterSetsCreateResource,
    newAdExchangeBuyer2BiddersFilterSetsCreate,
    AdExchangeBuyer2BiddersFilterSetsCreate,

    -- ** adexchangebuyer2.bidders.filterSets.delete
    AdExchangeBuyer2BiddersFilterSetsDeleteResource,
    newAdExchangeBuyer2BiddersFilterSetsDelete,
    AdExchangeBuyer2BiddersFilterSetsDelete,

    -- ** adexchangebuyer2.bidders.filterSets.filteredBidRequests.list
    AdExchangeBuyer2BiddersFilterSetsFilteredBidRequestsListResource,
    newAdExchangeBuyer2BiddersFilterSetsFilteredBidRequestsList,
    AdExchangeBuyer2BiddersFilterSetsFilteredBidRequestsList,

    -- ** adexchangebuyer2.bidders.filterSets.filteredBids.creatives.list
    AdExchangeBuyer2BiddersFilterSetsFilteredBidsCreativesListResource,
    newAdExchangeBuyer2BiddersFilterSetsFilteredBidsCreativesList,
    AdExchangeBuyer2BiddersFilterSetsFilteredBidsCreativesList,

    -- ** adexchangebuyer2.bidders.filterSets.filteredBids.details.list
    AdExchangeBuyer2BiddersFilterSetsFilteredBidsDetailsListResource,
    newAdExchangeBuyer2BiddersFilterSetsFilteredBidsDetailsList,
    AdExchangeBuyer2BiddersFilterSetsFilteredBidsDetailsList,

    -- ** adexchangebuyer2.bidders.filterSets.filteredBids.list
    AdExchangeBuyer2BiddersFilterSetsFilteredBidsListResource,
    newAdExchangeBuyer2BiddersFilterSetsFilteredBidsList,
    AdExchangeBuyer2BiddersFilterSetsFilteredBidsList,

    -- ** adexchangebuyer2.bidders.filterSets.get
    AdExchangeBuyer2BiddersFilterSetsGetResource,
    newAdExchangeBuyer2BiddersFilterSetsGet,
    AdExchangeBuyer2BiddersFilterSetsGet,

    -- ** adexchangebuyer2.bidders.filterSets.impressionMetrics.list
    AdExchangeBuyer2BiddersFilterSetsImpressionMetricsListResource,
    newAdExchangeBuyer2BiddersFilterSetsImpressionMetricsList,
    AdExchangeBuyer2BiddersFilterSetsImpressionMetricsList,

    -- ** adexchangebuyer2.bidders.filterSets.list
    AdExchangeBuyer2BiddersFilterSetsListResource,
    newAdExchangeBuyer2BiddersFilterSetsList,
    AdExchangeBuyer2BiddersFilterSetsList,

    -- ** adexchangebuyer2.bidders.filterSets.losingBids.list
    AdExchangeBuyer2BiddersFilterSetsLosingBidsListResource,
    newAdExchangeBuyer2BiddersFilterSetsLosingBidsList,
    AdExchangeBuyer2BiddersFilterSetsLosingBidsList,

    -- ** adexchangebuyer2.bidders.filterSets.nonBillableWinningBids.list
    AdExchangeBuyer2BiddersFilterSetsNonBillableWinningBidsListResource,
    newAdExchangeBuyer2BiddersFilterSetsNonBillableWinningBidsList,
    AdExchangeBuyer2BiddersFilterSetsNonBillableWinningBidsList,

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

import Gogol.AdExchangeBuyer2.Accounts.Clients.Create
import Gogol.AdExchangeBuyer2.Accounts.Clients.Get
import Gogol.AdExchangeBuyer2.Accounts.Clients.Invitations.Create
import Gogol.AdExchangeBuyer2.Accounts.Clients.Invitations.Get
import Gogol.AdExchangeBuyer2.Accounts.Clients.Invitations.List
import Gogol.AdExchangeBuyer2.Accounts.Clients.List
import Gogol.AdExchangeBuyer2.Accounts.Clients.Update
import Gogol.AdExchangeBuyer2.Accounts.Clients.Users.Get
import Gogol.AdExchangeBuyer2.Accounts.Clients.Users.List
import Gogol.AdExchangeBuyer2.Accounts.Clients.Users.Update
import Gogol.AdExchangeBuyer2.Accounts.Creatives.Create
import Gogol.AdExchangeBuyer2.Accounts.Creatives.DealAssociations.Add
import Gogol.AdExchangeBuyer2.Accounts.Creatives.DealAssociations.List
import Gogol.AdExchangeBuyer2.Accounts.Creatives.DealAssociations.Remove
import Gogol.AdExchangeBuyer2.Accounts.Creatives.Get
import Gogol.AdExchangeBuyer2.Accounts.Creatives.List
import Gogol.AdExchangeBuyer2.Accounts.Creatives.StopWatching
import Gogol.AdExchangeBuyer2.Accounts.Creatives.Update
import Gogol.AdExchangeBuyer2.Accounts.Creatives.Watch
import Gogol.AdExchangeBuyer2.Accounts.FinalizedProposals.List
import Gogol.AdExchangeBuyer2.Accounts.FinalizedProposals.Pause
import Gogol.AdExchangeBuyer2.Accounts.FinalizedProposals.Resume
import Gogol.AdExchangeBuyer2.Accounts.Products.Get
import Gogol.AdExchangeBuyer2.Accounts.Products.List
import Gogol.AdExchangeBuyer2.Accounts.Proposals.Accept
import Gogol.AdExchangeBuyer2.Accounts.Proposals.AddNote
import Gogol.AdExchangeBuyer2.Accounts.Proposals.CancelNegotiation
import Gogol.AdExchangeBuyer2.Accounts.Proposals.CompleteSetup
import Gogol.AdExchangeBuyer2.Accounts.Proposals.Create
import Gogol.AdExchangeBuyer2.Accounts.Proposals.Get
import Gogol.AdExchangeBuyer2.Accounts.Proposals.List
import Gogol.AdExchangeBuyer2.Accounts.Proposals.Pause
import Gogol.AdExchangeBuyer2.Accounts.Proposals.Resume
import Gogol.AdExchangeBuyer2.Accounts.Proposals.Update
import Gogol.AdExchangeBuyer2.Accounts.PublisherProfiles.Get
import Gogol.AdExchangeBuyer2.Accounts.PublisherProfiles.List
import Gogol.AdExchangeBuyer2.Bidders.Accounts.FilterSets.BidMetrics.List
import Gogol.AdExchangeBuyer2.Bidders.Accounts.FilterSets.BidResponseErrors.List
import Gogol.AdExchangeBuyer2.Bidders.Accounts.FilterSets.BidResponsesWithoutBids.List
import Gogol.AdExchangeBuyer2.Bidders.Accounts.FilterSets.Create
import Gogol.AdExchangeBuyer2.Bidders.Accounts.FilterSets.Delete
import Gogol.AdExchangeBuyer2.Bidders.Accounts.FilterSets.FilteredBidRequests.List
import Gogol.AdExchangeBuyer2.Bidders.Accounts.FilterSets.FilteredBids.Creatives.List
import Gogol.AdExchangeBuyer2.Bidders.Accounts.FilterSets.FilteredBids.Details.List
import Gogol.AdExchangeBuyer2.Bidders.Accounts.FilterSets.FilteredBids.List
import Gogol.AdExchangeBuyer2.Bidders.Accounts.FilterSets.Get
import Gogol.AdExchangeBuyer2.Bidders.Accounts.FilterSets.ImpressionMetrics.List
import Gogol.AdExchangeBuyer2.Bidders.Accounts.FilterSets.List
import Gogol.AdExchangeBuyer2.Bidders.Accounts.FilterSets.LosingBids.List
import Gogol.AdExchangeBuyer2.Bidders.Accounts.FilterSets.NonBillableWinningBids.List
import Gogol.AdExchangeBuyer2.Bidders.FilterSets.BidMetrics.List
import Gogol.AdExchangeBuyer2.Bidders.FilterSets.BidResponseErrors.List
import Gogol.AdExchangeBuyer2.Bidders.FilterSets.BidResponsesWithoutBids.List
import Gogol.AdExchangeBuyer2.Bidders.FilterSets.Create
import Gogol.AdExchangeBuyer2.Bidders.FilterSets.Delete
import Gogol.AdExchangeBuyer2.Bidders.FilterSets.FilteredBidRequests.List
import Gogol.AdExchangeBuyer2.Bidders.FilterSets.FilteredBids.Creatives.List
import Gogol.AdExchangeBuyer2.Bidders.FilterSets.FilteredBids.Details.List
import Gogol.AdExchangeBuyer2.Bidders.FilterSets.FilteredBids.List
import Gogol.AdExchangeBuyer2.Bidders.FilterSets.Get
import Gogol.AdExchangeBuyer2.Bidders.FilterSets.ImpressionMetrics.List
import Gogol.AdExchangeBuyer2.Bidders.FilterSets.List
import Gogol.AdExchangeBuyer2.Bidders.FilterSets.LosingBids.List
import Gogol.AdExchangeBuyer2.Bidders.FilterSets.NonBillableWinningBids.List
import Gogol.AdExchangeBuyer2.Types
