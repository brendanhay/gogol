{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AdExchangeBuyer2
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Accesses the latest features for managing Authorized Buyers accounts,
-- Real-Time Bidding configurations and auction metrics, and Marketplace
-- programmatic deals.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference>
module Network.Google.AdExchangeBuyer2
    (
    -- * Service Configuration
      adExchangeBuyer2Service

    -- * OAuth Scopes
    , adExchangeBuyerScope

    -- * API Declaration
    , AdExchangeBuyer2API

    -- * Resources

    -- ** adexchangebuyer2.accounts.clients.create
    , module Network.Google.Resource.AdExchangeBuyer2.Accounts.Clients.Create

    -- ** adexchangebuyer2.accounts.clients.get
    , module Network.Google.Resource.AdExchangeBuyer2.Accounts.Clients.Get

    -- ** adexchangebuyer2.accounts.clients.invitations.create
    , module Network.Google.Resource.AdExchangeBuyer2.Accounts.Clients.Invitations.Create

    -- ** adexchangebuyer2.accounts.clients.invitations.get
    , module Network.Google.Resource.AdExchangeBuyer2.Accounts.Clients.Invitations.Get

    -- ** adexchangebuyer2.accounts.clients.invitations.list
    , module Network.Google.Resource.AdExchangeBuyer2.Accounts.Clients.Invitations.List

    -- ** adexchangebuyer2.accounts.clients.list
    , module Network.Google.Resource.AdExchangeBuyer2.Accounts.Clients.List

    -- ** adexchangebuyer2.accounts.clients.update
    , module Network.Google.Resource.AdExchangeBuyer2.Accounts.Clients.Update

    -- ** adexchangebuyer2.accounts.clients.users.get
    , module Network.Google.Resource.AdExchangeBuyer2.Accounts.Clients.Users.Get

    -- ** adexchangebuyer2.accounts.clients.users.list
    , module Network.Google.Resource.AdExchangeBuyer2.Accounts.Clients.Users.List

    -- ** adexchangebuyer2.accounts.clients.users.update
    , module Network.Google.Resource.AdExchangeBuyer2.Accounts.Clients.Users.Update

    -- ** adexchangebuyer2.accounts.creatives.create
    , module Network.Google.Resource.AdExchangeBuyer2.Accounts.Creatives.Create

    -- ** adexchangebuyer2.accounts.creatives.dealAssociations.add
    , module Network.Google.Resource.AdExchangeBuyer2.Accounts.Creatives.DealAssociations.Add

    -- ** adexchangebuyer2.accounts.creatives.dealAssociations.list
    , module Network.Google.Resource.AdExchangeBuyer2.Accounts.Creatives.DealAssociations.List

    -- ** adexchangebuyer2.accounts.creatives.dealAssociations.remove
    , module Network.Google.Resource.AdExchangeBuyer2.Accounts.Creatives.DealAssociations.Remove

    -- ** adexchangebuyer2.accounts.creatives.get
    , module Network.Google.Resource.AdExchangeBuyer2.Accounts.Creatives.Get

    -- ** adexchangebuyer2.accounts.creatives.list
    , module Network.Google.Resource.AdExchangeBuyer2.Accounts.Creatives.List

    -- ** adexchangebuyer2.accounts.creatives.stopWatching
    , module Network.Google.Resource.AdExchangeBuyer2.Accounts.Creatives.StopWatching

    -- ** adexchangebuyer2.accounts.creatives.update
    , module Network.Google.Resource.AdExchangeBuyer2.Accounts.Creatives.Update

    -- ** adexchangebuyer2.accounts.creatives.watch
    , module Network.Google.Resource.AdExchangeBuyer2.Accounts.Creatives.Watch

    -- ** adexchangebuyer2.accounts.finalizedProposals.list
    , module Network.Google.Resource.AdExchangeBuyer2.Accounts.FinalizedProposals.List

    -- ** adexchangebuyer2.accounts.finalizedProposals.pause
    , module Network.Google.Resource.AdExchangeBuyer2.Accounts.FinalizedProposals.Pause

    -- ** adexchangebuyer2.accounts.finalizedProposals.resume
    , module Network.Google.Resource.AdExchangeBuyer2.Accounts.FinalizedProposals.Resume

    -- ** adexchangebuyer2.accounts.products.get
    , module Network.Google.Resource.AdExchangeBuyer2.Accounts.Products.Get

    -- ** adexchangebuyer2.accounts.products.list
    , module Network.Google.Resource.AdExchangeBuyer2.Accounts.Products.List

    -- ** adexchangebuyer2.accounts.proposals.accept
    , module Network.Google.Resource.AdExchangeBuyer2.Accounts.Proposals.Accept

    -- ** adexchangebuyer2.accounts.proposals.addNote
    , module Network.Google.Resource.AdExchangeBuyer2.Accounts.Proposals.AddNote

    -- ** adexchangebuyer2.accounts.proposals.cancelNegotiation
    , module Network.Google.Resource.AdExchangeBuyer2.Accounts.Proposals.CancelNegotiation

    -- ** adexchangebuyer2.accounts.proposals.completeSetup
    , module Network.Google.Resource.AdExchangeBuyer2.Accounts.Proposals.CompleteSetup

    -- ** adexchangebuyer2.accounts.proposals.create
    , module Network.Google.Resource.AdExchangeBuyer2.Accounts.Proposals.Create

    -- ** adexchangebuyer2.accounts.proposals.get
    , module Network.Google.Resource.AdExchangeBuyer2.Accounts.Proposals.Get

    -- ** adexchangebuyer2.accounts.proposals.list
    , module Network.Google.Resource.AdExchangeBuyer2.Accounts.Proposals.List

    -- ** adexchangebuyer2.accounts.proposals.pause
    , module Network.Google.Resource.AdExchangeBuyer2.Accounts.Proposals.Pause

    -- ** adexchangebuyer2.accounts.proposals.resume
    , module Network.Google.Resource.AdExchangeBuyer2.Accounts.Proposals.Resume

    -- ** adexchangebuyer2.accounts.proposals.update
    , module Network.Google.Resource.AdExchangeBuyer2.Accounts.Proposals.Update

    -- ** adexchangebuyer2.accounts.publisherProfiles.get
    , module Network.Google.Resource.AdExchangeBuyer2.Accounts.PublisherProFiles.Get

    -- ** adexchangebuyer2.accounts.publisherProfiles.list
    , module Network.Google.Resource.AdExchangeBuyer2.Accounts.PublisherProFiles.List

    -- ** adexchangebuyer2.bidders.accounts.filterSets.bidMetrics.list
    , module Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.BidMetrics.List

    -- ** adexchangebuyer2.bidders.accounts.filterSets.bidResponseErrors.list
    , module Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.BidResponseErrors.List

    -- ** adexchangebuyer2.bidders.accounts.filterSets.bidResponsesWithoutBids.list
    , module Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.BidResponsesWithoutBids.List

    -- ** adexchangebuyer2.bidders.accounts.filterSets.create
    , module Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.Create

    -- ** adexchangebuyer2.bidders.accounts.filterSets.delete
    , module Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.Delete

    -- ** adexchangebuyer2.bidders.accounts.filterSets.filteredBidRequests.list
    , module Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.FilteredBidRequests.List

    -- ** adexchangebuyer2.bidders.accounts.filterSets.filteredBids.creatives.list
    , module Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.FilteredBids.Creatives.List

    -- ** adexchangebuyer2.bidders.accounts.filterSets.filteredBids.details.list
    , module Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.FilteredBids.Details.List

    -- ** adexchangebuyer2.bidders.accounts.filterSets.filteredBids.list
    , module Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.FilteredBids.List

    -- ** adexchangebuyer2.bidders.accounts.filterSets.get
    , module Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.Get

    -- ** adexchangebuyer2.bidders.accounts.filterSets.impressionMetrics.list
    , module Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.ImpressionMetrics.List

    -- ** adexchangebuyer2.bidders.accounts.filterSets.list
    , module Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.List

    -- ** adexchangebuyer2.bidders.accounts.filterSets.losingBids.list
    , module Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.LosingBids.List

    -- ** adexchangebuyer2.bidders.accounts.filterSets.nonBillableWinningBids.list
    , module Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.NonBillableWinningBids.List

    -- ** adexchangebuyer2.bidders.filterSets.bidMetrics.list
    , module Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.BidMetrics.List

    -- ** adexchangebuyer2.bidders.filterSets.bidResponseErrors.list
    , module Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.BidResponseErrors.List

    -- ** adexchangebuyer2.bidders.filterSets.bidResponsesWithoutBids.list
    , module Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.BidResponsesWithoutBids.List

    -- ** adexchangebuyer2.bidders.filterSets.create
    , module Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.Create

    -- ** adexchangebuyer2.bidders.filterSets.delete
    , module Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.Delete

    -- ** adexchangebuyer2.bidders.filterSets.filteredBidRequests.list
    , module Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.FilteredBidRequests.List

    -- ** adexchangebuyer2.bidders.filterSets.filteredBids.creatives.list
    , module Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.FilteredBids.Creatives.List

    -- ** adexchangebuyer2.bidders.filterSets.filteredBids.details.list
    , module Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.FilteredBids.Details.List

    -- ** adexchangebuyer2.bidders.filterSets.filteredBids.list
    , module Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.FilteredBids.List

    -- ** adexchangebuyer2.bidders.filterSets.get
    , module Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.Get

    -- ** adexchangebuyer2.bidders.filterSets.impressionMetrics.list
    , module Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.ImpressionMetrics.List

    -- ** adexchangebuyer2.bidders.filterSets.list
    , module Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.List

    -- ** adexchangebuyer2.bidders.filterSets.losingBids.list
    , module Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.LosingBids.List

    -- ** adexchangebuyer2.bidders.filterSets.nonBillableWinningBids.list
    , module Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.NonBillableWinningBids.List

    -- * Types

    -- ** HTMLContent
    , HTMLContent
    , htmlContent
    , hcHeight
    , hcSnippet
    , hcWidth

    -- ** ListFilteredBidsResponse
    , ListFilteredBidsResponse
    , listFilteredBidsResponse
    , lfbrNextPageToken
    , lfbrCreativeStatusRows

    -- ** ResumeProposalRequest
    , ResumeProposalRequest
    , resumeProposalRequest

    -- ** DealProgrammaticCreativeSource
    , DealProgrammaticCreativeSource (..)

    -- ** SecurityContextSecuritiesItem
    , SecurityContextSecuritiesItem (..)

    -- ** DealCreativePreApprovalPolicy
    , DealCreativePreApprovalPolicy (..)

    -- ** NonGuaranteedFixedPriceTerms
    , NonGuaranteedFixedPriceTerms
    , nonGuaranteedFixedPriceTerms
    , ngfptFixedPrices

    -- ** VideoTargetingTargetedPositionTypesItem
    , VideoTargetingTargetedPositionTypesItem (..)

    -- ** DeliveryControlCreativeBlockingLevel
    , DeliveryControlCreativeBlockingLevel (..)

    -- ** ListDealAssociationsResponse
    , ListDealAssociationsResponse
    , listDealAssociationsResponse
    , ldarNextPageToken
    , ldarAssociations

    -- ** ProposalProposalState
    , ProposalProposalState (..)

    -- ** Image
    , Image
    , image
    , iHeight
    , iURL
    , iWidth

    -- ** TechnologyTargeting
    , TechnologyTargeting
    , technologyTargeting
    , ttDeviceCategoryTargeting
    , ttOperatingSystemTargeting
    , ttDeviceCapabilityTargeting

    -- ** ProductSyndicationProduct
    , ProductSyndicationProduct (..)

    -- ** ListPublisherProFilesResponse
    , ListPublisherProFilesResponse
    , listPublisherProFilesResponse
    , lppfrNextPageToken
    , lppfrPublisherProFiles

    -- ** NonGuaranteedAuctionTerms
    , NonGuaranteedAuctionTerms
    , nonGuaranteedAuctionTerms
    , ngatReservePricesPerBuyer
    , ngatAutoOptimizePrivateAuction

    -- ** AccountsCreativesCreateDuplicateIdMode
    , AccountsCreativesCreateDuplicateIdMode (..)

    -- ** FilterSetFormatsItem
    , FilterSetFormatsItem (..)

    -- ** PublisherProFileMobileApplication
    , PublisherProFileMobileApplication
    , publisherProFileMobileApplication
    , ppfmaExternalAppId
    , ppfmaName
    , ppfmaAppStore

    -- ** CreativeRestrictionsSkippableAdType
    , CreativeRestrictionsSkippableAdType (..)

    -- ** ListClientUsersResponse
    , ListClientUsersResponse
    , listClientUsersResponse
    , lcurNextPageToken
    , lcurUsers

    -- ** BidMetricsRow
    , BidMetricsRow
    , bidMetricsRow
    , bmrBids
    , bmrBidsInAuction
    , bmrImpressionsWon
    , bmrRowDimensions
    , bmrMeasurableImpressions
    , bmrViewableImpressions
    , bmrBilledImpressions
    , bmrReachedQueries

    -- ** ServingRestrictionStatus
    , ServingRestrictionStatus (..)

    -- ** DayPartTargeting
    , DayPartTargeting
    , dayPartTargeting
    , dptTimeZoneType
    , dptDayParts

    -- ** CriteriaTargeting
    , CriteriaTargeting
    , criteriaTargeting
    , ctExcludedCriteriaIds
    , ctTargetedCriteriaIds

    -- ** DealPauseStatus
    , DealPauseStatus
    , dealPauseStatus
    , dpsFirstPausedBy
    , dpsBuyerPauseReason
    , dpsHasBuyerPaused
    , dpsSellerPauseReason
    , dpsHasSellerPaused

    -- ** DisApprovalReason
    , DisApprovalReason (..)

    -- ** FilteredBidDetailRow
    , FilteredBidDetailRow
    , filteredBidDetailRow
    , fbdrDetailId
    , fbdrRowDimensions
    , fbdrBidCount
    , fbdrDetail

    -- ** PrivateData
    , PrivateData
    , privateData
    , pdReferenceId

    -- ** ClientRole
    , ClientRole (..)

    -- ** DealCreativeSafeFrameCompatibility
    , DealCreativeSafeFrameCompatibility (..)

    -- ** DeliveryControlDeliveryRateType
    , DeliveryControlDeliveryRateType (..)

    -- ** Empty
    , Empty
    , empty

    -- ** ServingContext
    , ServingContext
    , servingContext
    , scPlatform
    , scLocation
    , scSecurityType
    , scAll
    , scAuctionType
    , scAppType

    -- ** PublisherProFile
    , PublisherProFile
    , publisherProFile
    , ppfDirectDealsContact
    , ppfAudienceDescription
    , ppfLogoURL
    , ppfOverview
    , ppfIsParent
    , ppfSamplePageURL
    , ppfSeller
    , ppfMediaKitURL
    , ppfMobileApps
    , ppfBuyerPitchStatement
    , ppfDisplayName
    , ppfPublisherProFileId
    , ppfGooglePlusURL
    , ppfDomains
    , ppfRateCardInfoURL
    , ppfTopHeadlines
    , ppfProgrammaticDealsContact

    -- ** AcceptProposalRequest
    , AcceptProposalRequest
    , acceptProposalRequest
    , aprProposalRevision

    -- ** Size
    , Size
    , size
    , sHeight
    , sWidth

    -- ** ListFilteredBidRequestsResponse
    , ListFilteredBidRequestsResponse
    , listFilteredBidRequestsResponse
    , lfbrrNextPageToken
    , lfbrrCalloutStatusRows

    -- ** AddDealAssociationRequest
    , AddDealAssociationRequest
    , addDealAssociationRequest
    , adarAssociation

    -- ** CreativeStatusRow
    , CreativeStatusRow
    , creativeStatusRow
    , csrRowDimensions
    , csrBidCount
    , csrCreativeStatusId

    -- ** RealtimeTimeRange
    , RealtimeTimeRange
    , realtimeTimeRange
    , rtrStartTimestamp

    -- ** DealPauseStatusFirstPausedBy
    , DealPauseStatusFirstPausedBy (..)

    -- ** Note
    , Note
    , note
    , nProposalRevision
    , nNote
    , nNoteId
    , nCreatorRole
    , nCreateTime

    -- ** CreativeOpenAuctionStatus
    , CreativeOpenAuctionStatus (..)

    -- ** DealSyndicationProduct
    , DealSyndicationProduct (..)

    -- ** GuaranteedFixedPriceTermsReservationType
    , GuaranteedFixedPriceTermsReservationType (..)

    -- ** ListFilterSetsResponse
    , ListFilterSetsResponse
    , listFilterSetsResponse
    , lfsrNextPageToken
    , lfsrFilterSets

    -- ** Money
    , Money
    , money
    , mCurrencyCode
    , mNanos
    , mUnits

    -- ** AddNoteRequest
    , AddNoteRequest
    , addNoteRequest
    , anrNote

    -- ** PlacementTargeting
    , PlacementTargeting
    , placementTargeting
    , ptURLTargeting
    , ptMobileApplicationTargeting

    -- ** PauseProposalDealsRequest
    , PauseProposalDealsRequest
    , pauseProposalDealsRequest
    , ppdrReason
    , ppdrExternalDealIds

    -- ** FilterSetTimeSeriesGranularity
    , FilterSetTimeSeriesGranularity (..)

    -- ** ListCreativeStatusBreakdownByDetailResponseDetailType
    , ListCreativeStatusBreakdownByDetailResponseDetailType (..)

    -- ** AdSize
    , AdSize
    , adSize
    , asHeight
    , asWidth
    , asSizeType

    -- ** StopWatchingCreativeRequest
    , StopWatchingCreativeRequest
    , stopWatchingCreativeRequest

    -- ** FilterSetPlatformsItem
    , FilterSetPlatformsItem (..)

    -- ** CreativeSizeAllowedFormatsItem
    , CreativeSizeAllowedFormatsItem (..)

    -- ** WatchCreativeRequest
    , WatchCreativeRequest
    , watchCreativeRequest
    , wcrTopic

    -- ** DealServingMetadata
    , DealServingMetadata
    , dealServingMetadata
    , dsmDealPauseStatus

    -- ** DeliveryControl
    , DeliveryControl
    , deliveryControl
    , dcCreativeBlockingLevel
    , dcFrequencyCaps
    , dcDeliveryRateType

    -- ** ResumeProposalDealsRequest
    , ResumeProposalDealsRequest
    , resumeProposalDealsRequest
    , rpdrExternalDealIds

    -- ** PricePerBuyer
    , PricePerBuyer
    , pricePerBuyer
    , ppbPrice
    , ppbAdvertiserIds
    , ppbBuyer

    -- ** Creative
    , Creative
    , creative
    , cAPIUpdateTime
    , cDetectedLanguages
    , cAdvertiserName
    , cAdChoicesDestinationURL
    , cAgencyId
    , cCorrections
    , cClickThroughURLs
    , cRestrictedCategories
    , cDetectedProductCategories
    , cDealsStatus
    , cCreativeId
    , cVideo
    , cAdTechnologyProviders
    , cNATive
    , cDetectedSensitiveCategories
    , cImpressionTrackingURLs
    , cAccountId
    , cAttributes
    , cVersion
    , cVendorIds
    , cDetectedAdvertiserIds
    , cHTML
    , cServingRestrictions
    , cDetectedDomains
    , cOpenAuctionStatus
    , cDeclaredClickThroughURLs

    -- ** AppContext
    , AppContext
    , appContext
    , acAppTypes

    -- ** MarketplaceTargeting
    , MarketplaceTargeting
    , marketplaceTargeting
    , mtGeoTargeting
    , mtTechnologyTargeting
    , mtPlacementTargeting
    , mtVideoTargeting
    , mtInventorySizeTargeting

    -- ** BidResponseWithoutBidsStatusRowStatus
    , BidResponseWithoutBidsStatusRowStatus (..)

    -- ** ListBidResponseErrorsResponse
    , ListBidResponseErrorsResponse
    , listBidResponseErrorsResponse
    , lbrerNextPageToken
    , lbrerCalloutStatusRows

    -- ** Correction
    , Correction
    , correction
    , cContexts
    , cDetails
    , cType

    -- ** CreativeDealAssociation
    , CreativeDealAssociation
    , creativeDealAssociation
    , cdaCreativeId
    , cdaAccountId
    , cdaDealsId

    -- ** Seller
    , Seller
    , seller
    , sAccountId
    , sSubAccountId

    -- ** PublisherProFileMobileApplicationAppStore
    , PublisherProFileMobileApplicationAppStore (..)

    -- ** CreativeAttributesItem
    , CreativeAttributesItem (..)

    -- ** ListCreativesResponse
    , ListCreativesResponse
    , listCreativesResponse
    , lcrNextPageToken
    , lcrCreatives

    -- ** AdTechnologyProviders
    , AdTechnologyProviders
    , adTechnologyProviders
    , atpHasUnidentifiedProvider
    , atpDetectedProviderIds

    -- ** RowDimensions
    , RowDimensions
    , rowDimensions
    , rdPublisherIdentifier
    , rdTimeInterval

    -- ** OperatingSystemTargeting
    , OperatingSystemTargeting
    , operatingSystemTargeting
    , ostOperatingSystemVersionCriteria
    , ostOperatingSystemCriteria

    -- ** ListCreativeStatusBreakdownByDetailResponse
    , ListCreativeStatusBreakdownByDetailResponse
    , listCreativeStatusBreakdownByDetailResponse
    , lcsbbdrNextPageToken
    , lcsbbdrDetailType
    , lcsbbdrFilteredBidDetailRows

    -- ** DayPartTargetingTimeZoneType
    , DayPartTargetingTimeZoneType (..)

    -- ** SecurityContext
    , SecurityContext
    , securityContext
    , scSecurities

    -- ** PlatformContextPlatformsItem
    , PlatformContextPlatformsItem (..)

    -- ** Date
    , Date
    , date
    , dDay
    , dYear
    , dMonth

    -- ** ClientUserStatus
    , ClientUserStatus (..)

    -- ** CancelNegotiationRequest
    , CancelNegotiationRequest
    , cancelNegotiationRequest

    -- ** ContactInformation
    , ContactInformation
    , contactInformation
    , ciEmail
    , ciName

    -- ** ServingContextAll
    , ServingContextAll (..)

    -- ** AbsoluteDateRange
    , AbsoluteDateRange
    , absoluteDateRange
    , adrEndDate
    , adrStartDate

    -- ** CreativeRestrictionsCreativeFormat
    , CreativeRestrictionsCreativeFormat (..)

    -- ** AuctionContext
    , AuctionContext
    , auctionContext
    , acAuctionTypes

    -- ** Deal
    , Deal
    , deal
    , dAvailableStartTime
    , dExternalDealId
    , dBuyerPrivateData
    , dIsSetupComplete
    , dWebPropertyCode
    , dDeliveryControl
    , dDealServingMetadata
    , dProposalId
    , dTargeting
    , dDealId
    , dCreativeRestrictions
    , dSyndicationProduct
    , dCreateProductRevision
    , dUpdateTime
    , dTargetingCriterion
    , dSellerContacts
    , dCreateProductId
    , dDisplayName
    , dProgrammaticCreativeSource
    , dAvailableEndTime
    , dCreativePreApprovalPolicy
    , dDescription
    , dCreateTime
    , dCreativeSafeFrameCompatibility
    , dDealTerms

    -- ** CreativeRestrictions
    , CreativeRestrictions
    , creativeRestrictions
    , crCreativeFormat
    , crSkippableAdType
    , crCreativeSpecifications

    -- ** ProposalOriginatorRole
    , ProposalOriginatorRole (..)

    -- ** Proposal
    , Proposal
    , proposal
    , pBuyerPrivateData
    , pIsSetupComplete
    , pDeals
    , pProposalRevision
    , pBuyerContacts
    , pOriginatorRole
    , pBilledBuyer
    , pPrivateAuctionId
    , pIsRenegotiating
    , pSeller
    , pProposalId
    , pUpdateTime
    , pSellerContacts
    , pDisplayName
    , pNotes
    , pProposalState
    , pLastUpdaterOrCommentorRole
    , pTermsAndConditions
    , pBuyer

    -- ** RelativeDateRange
    , RelativeDateRange
    , relativeDateRange
    , rdrOffSetDays
    , rdrDurationDays

    -- ** CreativeSizeNATiveTemplate
    , CreativeSizeNATiveTemplate (..)

    -- ** PauseProposalRequest
    , PauseProposalRequest
    , pauseProposalRequest
    , pprReason

    -- ** FirstPartyMobileApplicationTargeting
    , FirstPartyMobileApplicationTargeting
    , firstPartyMobileApplicationTargeting
    , fpmatTargetedAppIds
    , fpmatExcludedAppIds

    -- ** MetricValue
    , MetricValue
    , metricValue
    , mvValue
    , mvVariance

    -- ** FilterSetEnvironment
    , FilterSetEnvironment (..)

    -- ** CompleteSetupRequest
    , CompleteSetupRequest
    , completeSetupRequest

    -- ** FilteredBidCreativeRow
    , FilteredBidCreativeRow
    , filteredBidCreativeRow
    , fbcrCreativeId
    , fbcrRowDimensions
    , fbcrBidCount

    -- ** LocationContext
    , LocationContext
    , locationContext
    , lcGeoCriteriaIds

    -- ** DayPartDayOfWeek
    , DayPartDayOfWeek (..)

    -- ** Xgafv
    , Xgafv (..)

    -- ** TargetingCriteria
    , TargetingCriteria
    , targetingCriteria
    , tcKey
    , tcExclusions
    , tcInclusions

    -- ** DealTermsBrandingType
    , DealTermsBrandingType (..)

    -- ** CalloutStatusRow
    , CalloutStatusRow
    , calloutStatusRow
    , cRowDimensions
    , cCalloutStatusId
    , cImpressionCount

    -- ** URLTargeting
    , URLTargeting
    , urlTargeting
    , utTargetedURLs
    , utExcludedURLs

    -- ** BidResponseWithoutBidsStatusRow
    , BidResponseWithoutBidsStatusRow
    , bidResponseWithoutBidsStatusRow
    , brwbsrStatus
    , brwbsrRowDimensions
    , brwbsrImpressionCount

    -- ** FilterSet
    , FilterSet
    , filterSet
    , fsPlatforms
    , fsRealtimeTimeRange
    , fsEnvironment
    , fsFormats
    , fsFormat
    , fsCreativeId
    , fsBreakdownDimensions
    , fsSellerNetworkIds
    , fsDealId
    , fsAbsoluteDateRange
    , fsName
    , fsRelativeDateRange
    , fsTimeSeriesGranularity
    , fsPublisherIdentifiers

    -- ** TimeInterval
    , TimeInterval
    , timeInterval
    , tiStartTime
    , tiEndTime

    -- ** ProposalLastUpdaterOrCommentorRole
    , ProposalLastUpdaterOrCommentorRole (..)

    -- ** RemoveDealAssociationRequest
    , RemoveDealAssociationRequest
    , removeDealAssociationRequest
    , rdarAssociation

    -- ** ClientEntityType
    , ClientEntityType (..)

    -- ** TargetingValue
    , TargetingValue
    , targetingValue
    , tvCreativeSizeValue
    , tvStringValue
    , tvLongValue
    , tvDayPartTargetingValue

    -- ** ListNonBillableWinningBidsResponse
    , ListNonBillableWinningBidsResponse
    , listNonBillableWinningBidsResponse
    , lnbwbrNextPageToken
    , lnbwbrNonBillableWinningBidStatusRows

    -- ** FrequencyCapTimeUnitType
    , FrequencyCapTimeUnitType (..)

    -- ** CreativeRestrictedCategoriesItem
    , CreativeRestrictedCategoriesItem (..)

    -- ** ListLosingBidsResponse
    , ListLosingBidsResponse
    , listLosingBidsResponse
    , llbrNextPageToken
    , llbrCreativeStatusRows

    -- ** PricePricingType
    , PricePricingType (..)

    -- ** NonBillableWinningBidStatusRowStatus
    , NonBillableWinningBidStatusRowStatus (..)

    -- ** VideoTargetingExcludedPositionTypesItem
    , VideoTargetingExcludedPositionTypesItem (..)

    -- ** ClientStatus
    , ClientStatus (..)

    -- ** Price
    , Price
    , price
    , pAmount
    , pPricingType

    -- ** ListImpressionMetricsResponse
    , ListImpressionMetricsResponse
    , listImpressionMetricsResponse
    , limrNextPageToken
    , limrImpressionMetricsRows

    -- ** AdSizeSizeType
    , AdSizeSizeType (..)

    -- ** CreativeDealsStatus
    , CreativeDealsStatus (..)

    -- ** CreativeSizeSkippableAdType
    , CreativeSizeSkippableAdType (..)

    -- ** PlatformContext
    , PlatformContext
    , platformContext
    , pcPlatforms

    -- ** AccountsFinalizedProposalsListFilterSyntax
    , AccountsFinalizedProposalsListFilterSyntax (..)

    -- ** VideoContent
    , VideoContent
    , videoContent
    , vcVideoVastXML
    , vcVideoURL

    -- ** TimeOfDay'
    , TimeOfDay'
    , timeOfDay
    , todNanos
    , todHours
    , todMinutes
    , todSeconds

    -- ** NoteCreatorRole
    , NoteCreatorRole (..)

    -- ** CreativeSizeCreativeSizeType
    , CreativeSizeCreativeSizeType (..)

    -- ** GuaranteedFixedPriceTerms
    , GuaranteedFixedPriceTerms
    , guaranteedFixedPriceTerms
    , gfptGuaranteedLooks
    , gfptGuaranteedImpressions
    , gfptPercentShareOfVoice
    , gfptReservationType
    , gfptFixedPrices
    , gfptMinimumDailyLooks
    , gfptImpressionCap

    -- ** NATiveContent
    , NATiveContent
    , nATiveContent
    , natcStoreURL
    , natcImage
    , natcAdvertiserName
    , natcAppIcon
    , natcPriceDisplayText
    , natcClickTrackingURL
    , natcClickLinkURL
    , natcBody
    , natcHeadline
    , natcCallToAction
    , natcVideoURL
    , natcStarRating
    , natcLogo

    -- ** VideoTargeting
    , VideoTargeting
    , videoTargeting
    , vtTargetedPositionTypes
    , vtExcludedPositionTypes

    -- ** ClientUser
    , ClientUser
    , clientUser
    , cuEmail
    , cuStatus
    , cuUserId
    , cuClientAccountId

    -- ** Product
    , Product
    , product
    , proAvailableStartTime
    , proWebPropertyCode
    , proTerms
    , proProductRevision
    , proHasCreatorSignedOff
    , proSeller
    , proSyndicationProduct
    , proUpdateTime
    , proCreatorContacts
    , proTargetingCriterion
    , proDisplayName
    , proPublisherProFileId
    , proAvailableEndTime
    , proProductId
    , proCreateTime

    -- ** ListClientUserInvitationsResponse
    , ListClientUserInvitationsResponse
    , listClientUserInvitationsResponse
    , lcuirNextPageToken
    , lcuirInvitations

    -- ** DayPart
    , DayPart
    , dayPart
    , dpStartTime
    , dpEndTime
    , dpDayOfWeek

    -- ** MobileApplicationTargeting
    , MobileApplicationTargeting
    , mobileApplicationTargeting
    , matFirstPartyTargeting

    -- ** ListClientsResponse
    , ListClientsResponse
    , listClientsResponse
    , lNextPageToken
    , lClients

    -- ** ListCreativeStatusBreakdownByCreativeResponse
    , ListCreativeStatusBreakdownByCreativeResponse
    , listCreativeStatusBreakdownByCreativeResponse
    , lcsbbcrNextPageToken
    , lcsbbcrFilteredBidCreativeRows

    -- ** FrequencyCap
    , FrequencyCap
    , frequencyCap
    , fcMaxImpressions
    , fcNumTimeUnits
    , fcTimeUnitType

    -- ** ListBidResponsesWithoutBidsResponse
    , ListBidResponsesWithoutBidsResponse
    , listBidResponsesWithoutBidsResponse
    , lbrwbrNextPageToken
    , lbrwbrBidResponseWithoutBidsStatusRows

    -- ** ServingRestriction
    , ServingRestriction
    , servingRestriction
    , srStatus
    , srContexts
    , srDisApprovalReasons
    , srDisApproval

    -- ** CreativeSpecification
    , CreativeSpecification
    , creativeSpecification
    , csCreativeCompanionSizes
    , csCreativeSize

    -- ** ImpressionMetricsRow
    , ImpressionMetricsRow
    , impressionMetricsRow
    , imrRowDimensions
    , imrAvailableImpressions
    , imrSuccessfulResponses
    , imrInventoryMatches
    , imrBidRequests
    , imrResponsesWithBids

    -- ** AccountsProposalsListFilterSyntax
    , AccountsProposalsListFilterSyntax (..)

    -- ** CreativeSize
    , CreativeSize
    , creativeSize
    , csSize
    , csCompanionSizes
    , csSkippableAdType
    , csCreativeSizeType
    , csAllowedFormats
    , csNATiveTemplate

    -- ** CorrectionType
    , CorrectionType (..)

    -- ** ListProposalsResponse
    , ListProposalsResponse
    , listProposalsResponse
    , lprProposals
    , lprNextPageToken

    -- ** InventorySizeTargeting
    , InventorySizeTargeting
    , inventorySizeTargeting
    , istTargetedInventorySizes
    , istExcludedInventorySizes

    -- ** DealTerms
    , DealTerms
    , dealTerms
    , dtEstimatedGrossSpend
    , dtNonGuaranteedFixedPriceTerms
    , dtNonGuaranteedAuctionTerms
    , dtBrandingType
    , dtEstimatedImpressionsPerDay
    , dtSellerTimeZone
    , dtGuaranteedFixedPriceTerms
    , dtDescription

    -- ** AuctionContextAuctionTypesItem
    , AuctionContextAuctionTypesItem (..)

    -- ** ClientUserInvitation
    , ClientUserInvitation
    , clientUserInvitation
    , cuiEmail
    , cuiInvitationId
    , cuiClientAccountId

    -- ** NonBillableWinningBidStatusRow
    , NonBillableWinningBidStatusRow
    , nonBillableWinningBidStatusRow
    , nbwbsrStatus
    , nbwbsrRowDimensions
    , nbwbsrBidCount

    -- ** ListProductsResponse
    , ListProductsResponse
    , listProductsResponse
    , lisNextPageToken
    , lisProducts

    -- ** FilterSetFormat
    , FilterSetFormat (..)

    -- ** Buyer
    , Buyer
    , buyer
    , bAccountId

    -- ** ListBidMetricsResponse
    , ListBidMetricsResponse
    , listBidMetricsResponse
    , lbmrNextPageToken
    , lbmrBidMetricsRows

    -- ** Client
    , Client
    , client
    , cEntityName
    , cStatus
    , cEntityType
    , cRole
    , cVisibleToSeller
    , cPartnerClientId
    , cClientAccountId
    , cClientName
    , cEntityId

    -- ** DisApproval
    , DisApproval
    , disApproval
    , daReason
    , daDetails

    -- ** AppContextAppTypesItem
    , AppContextAppTypesItem (..)

    -- ** FilterSetBreakdownDimensionsItem
    , FilterSetBreakdownDimensionsItem (..)
    ) where

import Network.Google.Prelude
import Network.Google.AdExchangeBuyer2.Types
import Network.Google.Resource.AdExchangeBuyer2.Accounts.Clients.Create
import Network.Google.Resource.AdExchangeBuyer2.Accounts.Clients.Get
import Network.Google.Resource.AdExchangeBuyer2.Accounts.Clients.Invitations.Create
import Network.Google.Resource.AdExchangeBuyer2.Accounts.Clients.Invitations.Get
import Network.Google.Resource.AdExchangeBuyer2.Accounts.Clients.Invitations.List
import Network.Google.Resource.AdExchangeBuyer2.Accounts.Clients.List
import Network.Google.Resource.AdExchangeBuyer2.Accounts.Clients.Update
import Network.Google.Resource.AdExchangeBuyer2.Accounts.Clients.Users.Get
import Network.Google.Resource.AdExchangeBuyer2.Accounts.Clients.Users.List
import Network.Google.Resource.AdExchangeBuyer2.Accounts.Clients.Users.Update
import Network.Google.Resource.AdExchangeBuyer2.Accounts.Creatives.Create
import Network.Google.Resource.AdExchangeBuyer2.Accounts.Creatives.DealAssociations.Add
import Network.Google.Resource.AdExchangeBuyer2.Accounts.Creatives.DealAssociations.List
import Network.Google.Resource.AdExchangeBuyer2.Accounts.Creatives.DealAssociations.Remove
import Network.Google.Resource.AdExchangeBuyer2.Accounts.Creatives.Get
import Network.Google.Resource.AdExchangeBuyer2.Accounts.Creatives.List
import Network.Google.Resource.AdExchangeBuyer2.Accounts.Creatives.StopWatching
import Network.Google.Resource.AdExchangeBuyer2.Accounts.Creatives.Update
import Network.Google.Resource.AdExchangeBuyer2.Accounts.Creatives.Watch
import Network.Google.Resource.AdExchangeBuyer2.Accounts.FinalizedProposals.List
import Network.Google.Resource.AdExchangeBuyer2.Accounts.FinalizedProposals.Pause
import Network.Google.Resource.AdExchangeBuyer2.Accounts.FinalizedProposals.Resume
import Network.Google.Resource.AdExchangeBuyer2.Accounts.Products.Get
import Network.Google.Resource.AdExchangeBuyer2.Accounts.Products.List
import Network.Google.Resource.AdExchangeBuyer2.Accounts.Proposals.Accept
import Network.Google.Resource.AdExchangeBuyer2.Accounts.Proposals.AddNote
import Network.Google.Resource.AdExchangeBuyer2.Accounts.Proposals.CancelNegotiation
import Network.Google.Resource.AdExchangeBuyer2.Accounts.Proposals.CompleteSetup
import Network.Google.Resource.AdExchangeBuyer2.Accounts.Proposals.Create
import Network.Google.Resource.AdExchangeBuyer2.Accounts.Proposals.Get
import Network.Google.Resource.AdExchangeBuyer2.Accounts.Proposals.List
import Network.Google.Resource.AdExchangeBuyer2.Accounts.Proposals.Pause
import Network.Google.Resource.AdExchangeBuyer2.Accounts.Proposals.Resume
import Network.Google.Resource.AdExchangeBuyer2.Accounts.Proposals.Update
import Network.Google.Resource.AdExchangeBuyer2.Accounts.PublisherProFiles.Get
import Network.Google.Resource.AdExchangeBuyer2.Accounts.PublisherProFiles.List
import Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.BidMetrics.List
import Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.BidResponseErrors.List
import Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.BidResponsesWithoutBids.List
import Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.Create
import Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.Delete
import Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.FilteredBidRequests.List
import Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.FilteredBids.Creatives.List
import Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.FilteredBids.Details.List
import Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.FilteredBids.List
import Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.Get
import Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.ImpressionMetrics.List
import Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.List
import Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.LosingBids.List
import Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.NonBillableWinningBids.List
import Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.BidMetrics.List
import Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.BidResponseErrors.List
import Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.BidResponsesWithoutBids.List
import Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.Create
import Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.Delete
import Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.FilteredBidRequests.List
import Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.FilteredBids.Creatives.List
import Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.FilteredBids.Details.List
import Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.FilteredBids.List
import Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.Get
import Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.ImpressionMetrics.List
import Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.List
import Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.LosingBids.List
import Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.NonBillableWinningBids.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Ad Exchange Buyer API II service.
type AdExchangeBuyer2API =
     BiddersAccountsFilterSetsFilteredBidRequestsListResource
       :<|>
       BiddersAccountsFilterSetsBidResponsesWithoutBidsListResource
       :<|>
       BiddersAccountsFilterSetsFilteredBidsCreativesListResource
       :<|>
       BiddersAccountsFilterSetsFilteredBidsDetailsListResource
       :<|>
       BiddersAccountsFilterSetsFilteredBidsListResource
       :<|>
       BiddersAccountsFilterSetsNonBillableWinningBidsListResource
       :<|> BiddersAccountsFilterSetsLosingBidsListResource
       :<|>
       BiddersAccountsFilterSetsImpressionMetricsListResource
       :<|>
       BiddersAccountsFilterSetsBidResponseErrorsListResource
       :<|> BiddersAccountsFilterSetsBidMetricsListResource
       :<|> BiddersAccountsFilterSetsListResource
       :<|> BiddersAccountsFilterSetsGetResource
       :<|> BiddersAccountsFilterSetsCreateResource
       :<|> BiddersAccountsFilterSetsDeleteResource
       :<|> BiddersFilterSetsFilteredBidRequestsListResource
       :<|>
       BiddersFilterSetsBidResponsesWithoutBidsListResource
       :<|>
       BiddersFilterSetsFilteredBidsCreativesListResource
       :<|> BiddersFilterSetsFilteredBidsDetailsListResource
       :<|> BiddersFilterSetsFilteredBidsListResource
       :<|>
       BiddersFilterSetsNonBillableWinningBidsListResource
       :<|> BiddersFilterSetsLosingBidsListResource
       :<|> BiddersFilterSetsImpressionMetricsListResource
       :<|> BiddersFilterSetsBidResponseErrorsListResource
       :<|> BiddersFilterSetsBidMetricsListResource
       :<|> BiddersFilterSetsListResource
       :<|> BiddersFilterSetsGetResource
       :<|> BiddersFilterSetsCreateResource
       :<|> BiddersFilterSetsDeleteResource
       :<|> AccountsProposalsListResource
       :<|> AccountsProposalsAcceptResource
       :<|> AccountsProposalsGetResource
       :<|> AccountsProposalsAddNoteResource
       :<|> AccountsProposalsCreateResource
       :<|> AccountsProposalsPauseResource
       :<|> AccountsProposalsCancelNegotiationResource
       :<|> AccountsProposalsCompleteSetupResource
       :<|> AccountsProposalsUpdateResource
       :<|> AccountsProposalsResumeResource
       :<|> AccountsCreativesDealAssociationsListResource
       :<|> AccountsCreativesDealAssociationsRemoveResource
       :<|> AccountsCreativesDealAssociationsAddResource
       :<|> AccountsCreativesListResource
       :<|> AccountsCreativesGetResource
       :<|> AccountsCreativesCreateResource
       :<|> AccountsCreativesUpdateResource
       :<|> AccountsCreativesWatchResource
       :<|> AccountsCreativesStopWatchingResource
       :<|> AccountsClientsInvitationsListResource
       :<|> AccountsClientsInvitationsGetResource
       :<|> AccountsClientsInvitationsCreateResource
       :<|> AccountsClientsUsersListResource
       :<|> AccountsClientsUsersGetResource
       :<|> AccountsClientsUsersUpdateResource
       :<|> AccountsClientsListResource
       :<|> AccountsClientsGetResource
       :<|> AccountsClientsCreateResource
       :<|> AccountsClientsUpdateResource
       :<|> AccountsProductsListResource
       :<|> AccountsProductsGetResource
       :<|> AccountsPublisherProFilesListResource
       :<|> AccountsPublisherProFilesGetResource
       :<|> AccountsFinalizedProposalsListResource
       :<|> AccountsFinalizedProposalsPauseResource
       :<|> AccountsFinalizedProposalsResumeResource
