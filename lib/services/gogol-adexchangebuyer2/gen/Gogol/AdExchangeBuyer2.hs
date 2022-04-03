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
    AdExchangeBuyer2AccountsClientsCreate (..),
    newAdExchangeBuyer2AccountsClientsCreate,

    -- ** adexchangebuyer2.accounts.clients.get
    AdExchangeBuyer2AccountsClientsGetResource,
    AdExchangeBuyer2AccountsClientsGet (..),
    newAdExchangeBuyer2AccountsClientsGet,

    -- ** adexchangebuyer2.accounts.clients.invitations.create
    AdExchangeBuyer2AccountsClientsInvitationsCreateResource,
    AdExchangeBuyer2AccountsClientsInvitationsCreate (..),
    newAdExchangeBuyer2AccountsClientsInvitationsCreate,

    -- ** adexchangebuyer2.accounts.clients.invitations.get
    AdExchangeBuyer2AccountsClientsInvitationsGetResource,
    AdExchangeBuyer2AccountsClientsInvitationsGet (..),
    newAdExchangeBuyer2AccountsClientsInvitationsGet,

    -- ** adexchangebuyer2.accounts.clients.invitations.list
    AdExchangeBuyer2AccountsClientsInvitationsListResource,
    AdExchangeBuyer2AccountsClientsInvitationsList (..),
    newAdExchangeBuyer2AccountsClientsInvitationsList,

    -- ** adexchangebuyer2.accounts.clients.list
    AdExchangeBuyer2AccountsClientsListResource,
    AdExchangeBuyer2AccountsClientsList (..),
    newAdExchangeBuyer2AccountsClientsList,

    -- ** adexchangebuyer2.accounts.clients.update
    AdExchangeBuyer2AccountsClientsUpdateResource,
    AdExchangeBuyer2AccountsClientsUpdate (..),
    newAdExchangeBuyer2AccountsClientsUpdate,

    -- ** adexchangebuyer2.accounts.clients.users.get
    AdExchangeBuyer2AccountsClientsUsersGetResource,
    AdExchangeBuyer2AccountsClientsUsersGet (..),
    newAdExchangeBuyer2AccountsClientsUsersGet,

    -- ** adexchangebuyer2.accounts.clients.users.list
    AdExchangeBuyer2AccountsClientsUsersListResource,
    AdExchangeBuyer2AccountsClientsUsersList (..),
    newAdExchangeBuyer2AccountsClientsUsersList,

    -- ** adexchangebuyer2.accounts.clients.users.update
    AdExchangeBuyer2AccountsClientsUsersUpdateResource,
    AdExchangeBuyer2AccountsClientsUsersUpdate (..),
    newAdExchangeBuyer2AccountsClientsUsersUpdate,

    -- ** adexchangebuyer2.accounts.creatives.create
    AdExchangeBuyer2AccountsCreativesCreateResource,
    AdExchangeBuyer2AccountsCreativesCreate (..),
    newAdExchangeBuyer2AccountsCreativesCreate,

    -- ** adexchangebuyer2.accounts.creatives.dealAssociations.add
    AdExchangeBuyer2AccountsCreativesDealAssociationsAddResource,
    AdExchangeBuyer2AccountsCreativesDealAssociationsAdd (..),
    newAdExchangeBuyer2AccountsCreativesDealAssociationsAdd,

    -- ** adexchangebuyer2.accounts.creatives.dealAssociations.list
    AdExchangeBuyer2AccountsCreativesDealAssociationsListResource,
    AdExchangeBuyer2AccountsCreativesDealAssociationsList (..),
    newAdExchangeBuyer2AccountsCreativesDealAssociationsList,

    -- ** adexchangebuyer2.accounts.creatives.dealAssociations.remove
    AdExchangeBuyer2AccountsCreativesDealAssociationsRemoveResource,
    AdExchangeBuyer2AccountsCreativesDealAssociationsRemove (..),
    newAdExchangeBuyer2AccountsCreativesDealAssociationsRemove,

    -- ** adexchangebuyer2.accounts.creatives.get
    AdExchangeBuyer2AccountsCreativesGetResource,
    AdExchangeBuyer2AccountsCreativesGet (..),
    newAdExchangeBuyer2AccountsCreativesGet,

    -- ** adexchangebuyer2.accounts.creatives.list
    AdExchangeBuyer2AccountsCreativesListResource,
    AdExchangeBuyer2AccountsCreativesList (..),
    newAdExchangeBuyer2AccountsCreativesList,

    -- ** adexchangebuyer2.accounts.creatives.stopWatching
    AdExchangeBuyer2AccountsCreativesStopWatchingResource,
    AdExchangeBuyer2AccountsCreativesStopWatching (..),
    newAdExchangeBuyer2AccountsCreativesStopWatching,

    -- ** adexchangebuyer2.accounts.creatives.update
    AdExchangeBuyer2AccountsCreativesUpdateResource,
    AdExchangeBuyer2AccountsCreativesUpdate (..),
    newAdExchangeBuyer2AccountsCreativesUpdate,

    -- ** adexchangebuyer2.accounts.creatives.watch
    AdExchangeBuyer2AccountsCreativesWatchResource,
    AdExchangeBuyer2AccountsCreativesWatch (..),
    newAdExchangeBuyer2AccountsCreativesWatch,

    -- ** adexchangebuyer2.accounts.finalizedProposals.list
    AdExchangeBuyer2AccountsFinalizedProposalsListResource,
    AdExchangeBuyer2AccountsFinalizedProposalsList (..),
    newAdExchangeBuyer2AccountsFinalizedProposalsList,

    -- ** adexchangebuyer2.accounts.finalizedProposals.pause
    AdExchangeBuyer2AccountsFinalizedProposalsPauseResource,
    AdExchangeBuyer2AccountsFinalizedProposalsPause (..),
    newAdExchangeBuyer2AccountsFinalizedProposalsPause,

    -- ** adexchangebuyer2.accounts.finalizedProposals.resume
    AdExchangeBuyer2AccountsFinalizedProposalsResumeResource,
    AdExchangeBuyer2AccountsFinalizedProposalsResume (..),
    newAdExchangeBuyer2AccountsFinalizedProposalsResume,

    -- ** adexchangebuyer2.accounts.products.get
    AdExchangeBuyer2AccountsProductsGetResource,
    AdExchangeBuyer2AccountsProductsGet (..),
    newAdExchangeBuyer2AccountsProductsGet,

    -- ** adexchangebuyer2.accounts.products.list
    AdExchangeBuyer2AccountsProductsListResource,
    AdExchangeBuyer2AccountsProductsList (..),
    newAdExchangeBuyer2AccountsProductsList,

    -- ** adexchangebuyer2.accounts.proposals.accept
    AdExchangeBuyer2AccountsProposalsAcceptResource,
    AdExchangeBuyer2AccountsProposalsAccept (..),
    newAdExchangeBuyer2AccountsProposalsAccept,

    -- ** adexchangebuyer2.accounts.proposals.addNote
    AdExchangeBuyer2AccountsProposalsAddNoteResource,
    AdExchangeBuyer2AccountsProposalsAddNote (..),
    newAdExchangeBuyer2AccountsProposalsAddNote,

    -- ** adexchangebuyer2.accounts.proposals.cancelNegotiation
    AdExchangeBuyer2AccountsProposalsCancelNegotiationResource,
    AdExchangeBuyer2AccountsProposalsCancelNegotiation (..),
    newAdExchangeBuyer2AccountsProposalsCancelNegotiation,

    -- ** adexchangebuyer2.accounts.proposals.completeSetup
    AdExchangeBuyer2AccountsProposalsCompleteSetupResource,
    AdExchangeBuyer2AccountsProposalsCompleteSetup (..),
    newAdExchangeBuyer2AccountsProposalsCompleteSetup,

    -- ** adexchangebuyer2.accounts.proposals.create
    AdExchangeBuyer2AccountsProposalsCreateResource,
    AdExchangeBuyer2AccountsProposalsCreate (..),
    newAdExchangeBuyer2AccountsProposalsCreate,

    -- ** adexchangebuyer2.accounts.proposals.get
    AdExchangeBuyer2AccountsProposalsGetResource,
    AdExchangeBuyer2AccountsProposalsGet (..),
    newAdExchangeBuyer2AccountsProposalsGet,

    -- ** adexchangebuyer2.accounts.proposals.list
    AdExchangeBuyer2AccountsProposalsListResource,
    AdExchangeBuyer2AccountsProposalsList (..),
    newAdExchangeBuyer2AccountsProposalsList,

    -- ** adexchangebuyer2.accounts.proposals.pause
    AdExchangeBuyer2AccountsProposalsPauseResource,
    AdExchangeBuyer2AccountsProposalsPause (..),
    newAdExchangeBuyer2AccountsProposalsPause,

    -- ** adexchangebuyer2.accounts.proposals.resume
    AdExchangeBuyer2AccountsProposalsResumeResource,
    AdExchangeBuyer2AccountsProposalsResume (..),
    newAdExchangeBuyer2AccountsProposalsResume,

    -- ** adexchangebuyer2.accounts.proposals.update
    AdExchangeBuyer2AccountsProposalsUpdateResource,
    AdExchangeBuyer2AccountsProposalsUpdate (..),
    newAdExchangeBuyer2AccountsProposalsUpdate,

    -- ** adexchangebuyer2.accounts.publisherProfiles.get
    AdExchangeBuyer2AccountsPublisherProfilesGetResource,
    AdExchangeBuyer2AccountsPublisherProfilesGet (..),
    newAdExchangeBuyer2AccountsPublisherProfilesGet,

    -- ** adexchangebuyer2.accounts.publisherProfiles.list
    AdExchangeBuyer2AccountsPublisherProfilesListResource,
    AdExchangeBuyer2AccountsPublisherProfilesList (..),
    newAdExchangeBuyer2AccountsPublisherProfilesList,

    -- ** adexchangebuyer2.bidders.accounts.filterSets.bidMetrics.list
    AdExchangeBuyer2BiddersAccountsFilterSetsBidMetricsListResource,
    AdExchangeBuyer2BiddersAccountsFilterSetsBidMetricsList (..),
    newAdExchangeBuyer2BiddersAccountsFilterSetsBidMetricsList,

    -- ** adexchangebuyer2.bidders.accounts.filterSets.bidResponseErrors.list
    AdExchangeBuyer2BiddersAccountsFilterSetsBidResponseErrorsListResource,
    AdExchangeBuyer2BiddersAccountsFilterSetsBidResponseErrorsList (..),
    newAdExchangeBuyer2BiddersAccountsFilterSetsBidResponseErrorsList,

    -- ** adexchangebuyer2.bidders.accounts.filterSets.bidResponsesWithoutBids.list
    AdExchangeBuyer2BiddersAccountsFilterSetsBidResponsesWithoutBidsListResource,
    AdExchangeBuyer2BiddersAccountsFilterSetsBidResponsesWithoutBidsList (..),
    newAdExchangeBuyer2BiddersAccountsFilterSetsBidResponsesWithoutBidsList,

    -- ** adexchangebuyer2.bidders.accounts.filterSets.create
    AdExchangeBuyer2BiddersAccountsFilterSetsCreateResource,
    AdExchangeBuyer2BiddersAccountsFilterSetsCreate (..),
    newAdExchangeBuyer2BiddersAccountsFilterSetsCreate,

    -- ** adexchangebuyer2.bidders.accounts.filterSets.delete
    AdExchangeBuyer2BiddersAccountsFilterSetsDeleteResource,
    AdExchangeBuyer2BiddersAccountsFilterSetsDelete (..),
    newAdExchangeBuyer2BiddersAccountsFilterSetsDelete,

    -- ** adexchangebuyer2.bidders.accounts.filterSets.filteredBidRequests.list
    AdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidRequestsListResource,
    AdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidRequestsList (..),
    newAdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidRequestsList,

    -- ** adexchangebuyer2.bidders.accounts.filterSets.filteredBids.creatives.list
    AdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidsCreativesListResource,
    AdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidsCreativesList (..),
    newAdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidsCreativesList,

    -- ** adexchangebuyer2.bidders.accounts.filterSets.filteredBids.details.list
    AdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidsDetailsListResource,
    AdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidsDetailsList (..),
    newAdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidsDetailsList,

    -- ** adexchangebuyer2.bidders.accounts.filterSets.filteredBids.list
    AdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidsListResource,
    AdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidsList (..),
    newAdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidsList,

    -- ** adexchangebuyer2.bidders.accounts.filterSets.get
    AdExchangeBuyer2BiddersAccountsFilterSetsGetResource,
    AdExchangeBuyer2BiddersAccountsFilterSetsGet (..),
    newAdExchangeBuyer2BiddersAccountsFilterSetsGet,

    -- ** adexchangebuyer2.bidders.accounts.filterSets.impressionMetrics.list
    AdExchangeBuyer2BiddersAccountsFilterSetsImpressionMetricsListResource,
    AdExchangeBuyer2BiddersAccountsFilterSetsImpressionMetricsList (..),
    newAdExchangeBuyer2BiddersAccountsFilterSetsImpressionMetricsList,

    -- ** adexchangebuyer2.bidders.accounts.filterSets.list
    AdExchangeBuyer2BiddersAccountsFilterSetsListResource,
    AdExchangeBuyer2BiddersAccountsFilterSetsList (..),
    newAdExchangeBuyer2BiddersAccountsFilterSetsList,

    -- ** adexchangebuyer2.bidders.accounts.filterSets.losingBids.list
    AdExchangeBuyer2BiddersAccountsFilterSetsLosingBidsListResource,
    AdExchangeBuyer2BiddersAccountsFilterSetsLosingBidsList (..),
    newAdExchangeBuyer2BiddersAccountsFilterSetsLosingBidsList,

    -- ** adexchangebuyer2.bidders.accounts.filterSets.nonBillableWinningBids.list
    AdExchangeBuyer2BiddersAccountsFilterSetsNonBillableWinningBidsListResource,
    AdExchangeBuyer2BiddersAccountsFilterSetsNonBillableWinningBidsList (..),
    newAdExchangeBuyer2BiddersAccountsFilterSetsNonBillableWinningBidsList,

    -- ** adexchangebuyer2.bidders.filterSets.bidMetrics.list
    AdExchangeBuyer2BiddersFilterSetsBidMetricsListResource,
    AdExchangeBuyer2BiddersFilterSetsBidMetricsList (..),
    newAdExchangeBuyer2BiddersFilterSetsBidMetricsList,

    -- ** adexchangebuyer2.bidders.filterSets.bidResponseErrors.list
    AdExchangeBuyer2BiddersFilterSetsBidResponseErrorsListResource,
    AdExchangeBuyer2BiddersFilterSetsBidResponseErrorsList (..),
    newAdExchangeBuyer2BiddersFilterSetsBidResponseErrorsList,

    -- ** adexchangebuyer2.bidders.filterSets.bidResponsesWithoutBids.list
    AdExchangeBuyer2BiddersFilterSetsBidResponsesWithoutBidsListResource,
    AdExchangeBuyer2BiddersFilterSetsBidResponsesWithoutBidsList (..),
    newAdExchangeBuyer2BiddersFilterSetsBidResponsesWithoutBidsList,

    -- ** adexchangebuyer2.bidders.filterSets.create
    AdExchangeBuyer2BiddersFilterSetsCreateResource,
    AdExchangeBuyer2BiddersFilterSetsCreate (..),
    newAdExchangeBuyer2BiddersFilterSetsCreate,

    -- ** adexchangebuyer2.bidders.filterSets.delete
    AdExchangeBuyer2BiddersFilterSetsDeleteResource,
    AdExchangeBuyer2BiddersFilterSetsDelete (..),
    newAdExchangeBuyer2BiddersFilterSetsDelete,

    -- ** adexchangebuyer2.bidders.filterSets.filteredBidRequests.list
    AdExchangeBuyer2BiddersFilterSetsFilteredBidRequestsListResource,
    AdExchangeBuyer2BiddersFilterSetsFilteredBidRequestsList (..),
    newAdExchangeBuyer2BiddersFilterSetsFilteredBidRequestsList,

    -- ** adexchangebuyer2.bidders.filterSets.filteredBids.creatives.list
    AdExchangeBuyer2BiddersFilterSetsFilteredBidsCreativesListResource,
    AdExchangeBuyer2BiddersFilterSetsFilteredBidsCreativesList (..),
    newAdExchangeBuyer2BiddersFilterSetsFilteredBidsCreativesList,

    -- ** adexchangebuyer2.bidders.filterSets.filteredBids.details.list
    AdExchangeBuyer2BiddersFilterSetsFilteredBidsDetailsListResource,
    AdExchangeBuyer2BiddersFilterSetsFilteredBidsDetailsList (..),
    newAdExchangeBuyer2BiddersFilterSetsFilteredBidsDetailsList,

    -- ** adexchangebuyer2.bidders.filterSets.filteredBids.list
    AdExchangeBuyer2BiddersFilterSetsFilteredBidsListResource,
    AdExchangeBuyer2BiddersFilterSetsFilteredBidsList (..),
    newAdExchangeBuyer2BiddersFilterSetsFilteredBidsList,

    -- ** adexchangebuyer2.bidders.filterSets.get
    AdExchangeBuyer2BiddersFilterSetsGetResource,
    AdExchangeBuyer2BiddersFilterSetsGet (..),
    newAdExchangeBuyer2BiddersFilterSetsGet,

    -- ** adexchangebuyer2.bidders.filterSets.impressionMetrics.list
    AdExchangeBuyer2BiddersFilterSetsImpressionMetricsListResource,
    AdExchangeBuyer2BiddersFilterSetsImpressionMetricsList (..),
    newAdExchangeBuyer2BiddersFilterSetsImpressionMetricsList,

    -- ** adexchangebuyer2.bidders.filterSets.list
    AdExchangeBuyer2BiddersFilterSetsListResource,
    AdExchangeBuyer2BiddersFilterSetsList (..),
    newAdExchangeBuyer2BiddersFilterSetsList,

    -- ** adexchangebuyer2.bidders.filterSets.losingBids.list
    AdExchangeBuyer2BiddersFilterSetsLosingBidsListResource,
    AdExchangeBuyer2BiddersFilterSetsLosingBidsList (..),
    newAdExchangeBuyer2BiddersFilterSetsLosingBidsList,

    -- ** adexchangebuyer2.bidders.filterSets.nonBillableWinningBids.list
    AdExchangeBuyer2BiddersFilterSetsNonBillableWinningBidsListResource,
    AdExchangeBuyer2BiddersFilterSetsNonBillableWinningBidsList (..),
    newAdExchangeBuyer2BiddersFilterSetsNonBillableWinningBidsList,

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
