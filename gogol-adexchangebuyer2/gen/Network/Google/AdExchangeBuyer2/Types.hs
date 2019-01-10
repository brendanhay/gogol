{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AdExchangeBuyer2.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AdExchangeBuyer2.Types
    (
    -- * Service Configuration
      adExchangeBuyer2Service

    -- * OAuth Scopes
    , adExchangeBuyerScope

    -- * HTMLContent
    , HTMLContent
    , htmlContent
    , hcHeight
    , hcSnippet
    , hcWidth

    -- * ListFilteredBidsResponse
    , ListFilteredBidsResponse
    , listFilteredBidsResponse
    , lfbrNextPageToken
    , lfbrCreativeStatusRows

    -- * ResumeProposalRequest
    , ResumeProposalRequest
    , resumeProposalRequest

    -- * DealProgrammaticCreativeSource
    , DealProgrammaticCreativeSource (..)

    -- * DealCreativePreApprovalPolicy
    , DealCreativePreApprovalPolicy (..)

    -- * NonGuaranteedFixedPriceTerms
    , NonGuaranteedFixedPriceTerms
    , nonGuaranteedFixedPriceTerms
    , ngfptFixedPrices

    -- * DeliveryControlCreativeBlockingLevel
    , DeliveryControlCreativeBlockingLevel (..)

    -- * ListDealAssociationsResponse
    , ListDealAssociationsResponse
    , listDealAssociationsResponse
    , ldarNextPageToken
    , ldarAssociations

    -- * ProposalProposalState
    , ProposalProposalState (..)

    -- * Image
    , Image
    , image
    , iHeight
    , iURL
    , iWidth

    -- * TechnologyTargeting
    , TechnologyTargeting
    , technologyTargeting
    , ttDeviceCategoryTargeting
    , ttOperatingSystemTargeting
    , ttDeviceCapabilityTargeting

    -- * ProductSyndicationProduct
    , ProductSyndicationProduct (..)

    -- * ListPublisherProFilesResponse
    , ListPublisherProFilesResponse
    , listPublisherProFilesResponse
    , lppfrNextPageToken
    , lppfrPublisherProFiles

    -- * NonGuaranteedAuctionTerms
    , NonGuaranteedAuctionTerms
    , nonGuaranteedAuctionTerms
    , ngatReservePricesPerBuyer
    , ngatAutoOptimizePrivateAuction

    -- * CreativeRestrictionsSkippableAdType
    , CreativeRestrictionsSkippableAdType (..)

    -- * ListClientUsersResponse
    , ListClientUsersResponse
    , listClientUsersResponse
    , lcurNextPageToken
    , lcurUsers

    -- * BidMetricsRow
    , BidMetricsRow
    , bidMetricsRow
    , bmrBids
    , bmrBidsInAuction
    , bmrImpressionsWon
    , bmrRowDimensions
    , bmrMeasurableImpressions
    , bmrViewableImpressions
    , bmrBilledImpressions

    -- * ServingRestrictionStatus
    , ServingRestrictionStatus (..)

    -- * DayPartTargeting
    , DayPartTargeting
    , dayPartTargeting
    , dptTimeZoneType
    , dptDayParts

    -- * CriteriaTargeting
    , CriteriaTargeting
    , criteriaTargeting
    , ctExcludedCriteriaIds
    , ctTargetedCriteriaIds

    -- * DealPauseStatus
    , DealPauseStatus
    , dealPauseStatus
    , dpsFirstPausedBy
    , dpsBuyerPauseReason
    , dpsHasBuyerPaused
    , dpsSellerPauseReason
    , dpsHasSellerPaused

    -- * DisApprovalReason
    , DisApprovalReason (..)

    -- * FilteredBidDetailRow
    , FilteredBidDetailRow
    , filteredBidDetailRow
    , fbdrDetailId
    , fbdrRowDimensions
    , fbdrBidCount

    -- * PrivateData
    , PrivateData
    , privateData
    , pdReferenceId

    -- * ClientRole
    , ClientRole (..)

    -- * DealCreativeSafeFrameCompatibility
    , DealCreativeSafeFrameCompatibility (..)

    -- * DeliveryControlDeliveryRateType
    , DeliveryControlDeliveryRateType (..)

    -- * Empty
    , Empty
    , empty

    -- * ServingContext
    , ServingContext
    , servingContext
    , scPlatform
    , scLocation
    , scSecurityType
    , scAll
    , scAuctionType
    , scAppType

    -- * PublisherProFile
    , PublisherProFile
    , publisherProFile
    , ppfDirectDealsContact
    , ppfAudienceDescription
    , ppfLogoURL
    , ppfOverview
    , ppfSamplePageURL
    , ppfSeller
    , ppfMediaKitURL
    , ppfBuyerPitchStatement
    , ppfDisplayName
    , ppfPublisherProFileId
    , ppfGooglePlusURL
    , ppfDomains
    , ppfRateCardInfoURL
    , ppfTopHeadlines
    , ppfProgrammaticDealsContact

    -- * AcceptProposalRequest
    , AcceptProposalRequest
    , acceptProposalRequest
    , aprProposalRevision

    -- * Size
    , Size
    , size
    , sHeight
    , sWidth

    -- * ListFilteredBidRequestsResponse
    , ListFilteredBidRequestsResponse
    , listFilteredBidRequestsResponse
    , lfbrrNextPageToken
    , lfbrrCalloutStatusRows

    -- * AddDealAssociationRequest
    , AddDealAssociationRequest
    , addDealAssociationRequest
    , adarAssociation

    -- * CreativeStatusRow
    , CreativeStatusRow
    , creativeStatusRow
    , csrRowDimensions
    , csrBidCount
    , csrCreativeStatusId

    -- * RealtimeTimeRange
    , RealtimeTimeRange
    , realtimeTimeRange
    , rtrStartTimestamp

    -- * DealPauseStatusFirstPausedBy
    , DealPauseStatusFirstPausedBy (..)

    -- * Note
    , Note
    , note
    , nProposalRevision
    , nNote
    , nNoteId
    , nCreatorRole
    , nCreateTime

    -- * CreativeOpenAuctionStatus
    , CreativeOpenAuctionStatus (..)

    -- * DealSyndicationProduct
    , DealSyndicationProduct (..)

    -- * ListFilterSetsResponse
    , ListFilterSetsResponse
    , listFilterSetsResponse
    , lfsrNextPageToken
    , lfsrFilterSets

    -- * Money
    , Money
    , money
    , mCurrencyCode
    , mNanos
    , mUnits

    -- * AddNoteRequest
    , AddNoteRequest
    , addNoteRequest
    , anrNote

    -- * PlacementTargeting
    , PlacementTargeting
    , placementTargeting
    , ptURLTargeting
    , ptMobileApplicationTargeting

    -- * FilterSetTimeSeriesGranularity
    , FilterSetTimeSeriesGranularity (..)

    -- * ListCreativeStatusBreakdownByDetailResponseDetailType
    , ListCreativeStatusBreakdownByDetailResponseDetailType (..)

    -- * AdSize
    , AdSize
    , adSize
    , asHeight
    , asWidth
    , asSizeType

    -- * StopWatchingCreativeRequest
    , StopWatchingCreativeRequest
    , stopWatchingCreativeRequest

    -- * WatchCreativeRequest
    , WatchCreativeRequest
    , watchCreativeRequest
    , wcrTopic

    -- * DealServingMetadata
    , DealServingMetadata
    , dealServingMetadata
    , dsmDealPauseStatus

    -- * DeliveryControl
    , DeliveryControl
    , deliveryControl
    , dcCreativeBlockingLevel
    , dcFrequencyCaps
    , dcDeliveryRateType

    -- * PricePerBuyer
    , PricePerBuyer
    , pricePerBuyer
    , ppbPrice
    , ppbAdvertiserIds
    , ppbBuyer

    -- * Creative
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
    , cFilteringStats
    , cDeclaredClickThroughURLs

    -- * AppContext
    , AppContext
    , appContext
    , acAppTypes

    -- * MarketplaceTargeting
    , MarketplaceTargeting
    , marketplaceTargeting
    , mtGeoTargeting
    , mtTechnologyTargeting
    , mtPlacementTargeting
    , mtVideoTargeting
    , mtInventorySizeTargeting

    -- * BidResponseWithoutBidsStatusRowStatus
    , BidResponseWithoutBidsStatusRowStatus (..)

    -- * ListBidResponseErrorsResponse
    , ListBidResponseErrorsResponse
    , listBidResponseErrorsResponse
    , lbrerNextPageToken
    , lbrerCalloutStatusRows

    -- * Correction
    , Correction
    , correction
    , cContexts
    , cDetails
    , cType

    -- * CreativeDealAssociation
    , CreativeDealAssociation
    , creativeDealAssociation
    , cdaCreativeId
    , cdaAccountId
    , cdaDealsId

    -- * Seller
    , Seller
    , seller
    , sAccountId
    , sSubAccountId

    -- * ListCreativesResponse
    , ListCreativesResponse
    , listCreativesResponse
    , lcrNextPageToken
    , lcrCreatives

    -- * RowDimensions
    , RowDimensions
    , rowDimensions
    , rdPublisherIdentifier
    , rdTimeInterval

    -- * OperatingSystemTargeting
    , OperatingSystemTargeting
    , operatingSystemTargeting
    , ostOperatingSystemVersionCriteria
    , ostOperatingSystemCriteria

    -- * ListCreativeStatusBreakdownByDetailResponse
    , ListCreativeStatusBreakdownByDetailResponse
    , listCreativeStatusBreakdownByDetailResponse
    , lcsbbdrNextPageToken
    , lcsbbdrDetailType
    , lcsbbdrFilteredBidDetailRows

    -- * DayPartTargetingTimeZoneType
    , DayPartTargetingTimeZoneType (..)

    -- * SecurityContext
    , SecurityContext
    , securityContext
    , scSecurities

    -- * Date
    , Date
    , date
    , dDay
    , dYear
    , dMonth

    -- * ClientUserStatus
    , ClientUserStatus (..)

    -- * CancelNegotiationRequest
    , CancelNegotiationRequest
    , cancelNegotiationRequest

    -- * ContactInformation
    , ContactInformation
    , contactInformation
    , ciEmail
    , ciName

    -- * ServingContextAll
    , ServingContextAll (..)

    -- * AbsoluteDateRange
    , AbsoluteDateRange
    , absoluteDateRange
    , adrEndDate
    , adrStartDate

    -- * CreativeRestrictionsCreativeFormat
    , CreativeRestrictionsCreativeFormat (..)

    -- * Reason
    , Reason
    , reason
    , rStatus
    , rCount

    -- * AuctionContext
    , AuctionContext
    , auctionContext
    , acAuctionTypes

    -- * Deal
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

    -- * CreativeRestrictions
    , CreativeRestrictions
    , creativeRestrictions
    , crCreativeFormat
    , crSkippableAdType
    , crCreativeSpecifications

    -- * ProposalOriginatorRole
    , ProposalOriginatorRole (..)

    -- * Proposal
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
    , pBuyer

    -- * RelativeDateRange
    , RelativeDateRange
    , relativeDateRange
    , rdrOffSetDays
    , rdrDurationDays

    -- * CreativeSizeNATiveTemplate
    , CreativeSizeNATiveTemplate (..)

    -- * PauseProposalRequest
    , PauseProposalRequest
    , pauseProposalRequest
    , pprReason

    -- * FirstPartyMobileApplicationTargeting
    , FirstPartyMobileApplicationTargeting
    , firstPartyMobileApplicationTargeting
    , fpmatTargetedAppIds
    , fpmatExcludedAppIds

    -- * MetricValue
    , MetricValue
    , metricValue
    , mvValue
    , mvVariance

    -- * FilterSetEnvironment
    , FilterSetEnvironment (..)

    -- * CompleteSetupRequest
    , CompleteSetupRequest
    , completeSetupRequest

    -- * FilteredBidCreativeRow
    , FilteredBidCreativeRow
    , filteredBidCreativeRow
    , fbcrCreativeId
    , fbcrRowDimensions
    , fbcrBidCount

    -- * LocationContext
    , LocationContext
    , locationContext
    , lcGeoCriteriaIds

    -- * DayPartDayOfWeek
    , DayPartDayOfWeek (..)

    -- * Xgafv
    , Xgafv (..)

    -- * TargetingCriteria
    , TargetingCriteria
    , targetingCriteria
    , tcKey
    , tcExclusions
    , tcInclusions

    -- * DealTermsBrandingType
    , DealTermsBrandingType (..)

    -- * CalloutStatusRow
    , CalloutStatusRow
    , calloutStatusRow
    , cRowDimensions
    , cCalloutStatusId
    , cImpressionCount

    -- * URLTargeting
    , URLTargeting
    , urlTargeting
    , utTargetedURLs
    , utExcludedURLs

    -- * BidResponseWithoutBidsStatusRow
    , BidResponseWithoutBidsStatusRow
    , bidResponseWithoutBidsStatusRow
    , brwbsrStatus
    , brwbsrRowDimensions
    , brwbsrImpressionCount

    -- * FilterSet
    , FilterSet
    , filterSet
    , fsPlatforms
    , fsRealtimeTimeRange
    , fsEnvironment
    , fsFormats
    , fsCreativeId
    , fsBreakdownDimensions
    , fsSellerNetworkIds
    , fsDealId
    , fsAbsoluteDateRange
    , fsName
    , fsRelativeDateRange
    , fsTimeSeriesGranularity
    , fsPublisherIdentifiers

    -- * TimeInterval
    , TimeInterval
    , timeInterval
    , tiStartTime
    , tiEndTime

    -- * ProposalLastUpdaterOrCommentorRole
    , ProposalLastUpdaterOrCommentorRole (..)

    -- * RemoveDealAssociationRequest
    , RemoveDealAssociationRequest
    , removeDealAssociationRequest
    , rdarAssociation

    -- * ClientEntityType
    , ClientEntityType (..)

    -- * TargetingValue
    , TargetingValue
    , targetingValue
    , tvCreativeSizeValue
    , tvStringValue
    , tvLongValue
    , tvDayPartTargetingValue

    -- * ListNonBillableWinningBidsResponse
    , ListNonBillableWinningBidsResponse
    , listNonBillableWinningBidsResponse
    , lnbwbrNextPageToken
    , lnbwbrNonBillableWinningBidStatusRows

    -- * FrequencyCapTimeUnitType
    , FrequencyCapTimeUnitType (..)

    -- * ListLosingBidsResponse
    , ListLosingBidsResponse
    , listLosingBidsResponse
    , llbrNextPageToken
    , llbrCreativeStatusRows

    -- * PricePricingType
    , PricePricingType (..)

    -- * NonBillableWinningBidStatusRowStatus
    , NonBillableWinningBidStatusRowStatus (..)

    -- * ClientStatus
    , ClientStatus (..)

    -- * Price
    , Price
    , price
    , pAmount
    , pPricingType

    -- * ListImpressionMetricsResponse
    , ListImpressionMetricsResponse
    , listImpressionMetricsResponse
    , limrNextPageToken
    , limrImpressionMetricsRows

    -- * AdSizeSizeType
    , AdSizeSizeType (..)

    -- * CreativeDealsStatus
    , CreativeDealsStatus (..)

    -- * CreativeSizeSkippableAdType
    , CreativeSizeSkippableAdType (..)

    -- * PlatformContext
    , PlatformContext
    , platformContext
    , pcPlatforms

    -- * VideoContent
    , VideoContent
    , videoContent
    , vcVideoVastXML
    , vcVideoURL

    -- * TimeOfDay'
    , TimeOfDay'
    , timeOfDay
    , todNanos
    , todHours
    , todMinutes
    , todSeconds

    -- * NoteCreatorRole
    , NoteCreatorRole (..)

    -- * CreativeSizeCreativeSizeType
    , CreativeSizeCreativeSizeType (..)

    -- * GuaranteedFixedPriceTerms
    , GuaranteedFixedPriceTerms
    , guaranteedFixedPriceTerms
    , gfptGuaranteedLooks
    , gfptGuaranteedImpressions
    , gfptFixedPrices
    , gfptMinimumDailyLooks

    -- * NATiveContent
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

    -- * VideoTargeting
    , VideoTargeting
    , videoTargeting
    , vtTargetedPositionTypes
    , vtExcludedPositionTypes

    -- * ClientUser
    , ClientUser
    , clientUser
    , cuEmail
    , cuStatus
    , cuUserId
    , cuClientAccountId

    -- * Product
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

    -- * ListClientUserInvitationsResponse
    , ListClientUserInvitationsResponse
    , listClientUserInvitationsResponse
    , lcuirNextPageToken
    , lcuirInvitations

    -- * DayPart
    , DayPart
    , dayPart
    , dpStartTime
    , dpEndTime
    , dpDayOfWeek

    -- * MobileApplicationTargeting
    , MobileApplicationTargeting
    , mobileApplicationTargeting
    , matFirstPartyTargeting

    -- * ListClientsResponse
    , ListClientsResponse
    , listClientsResponse
    , lNextPageToken
    , lClients

    -- * ListCreativeStatusBreakdownByCreativeResponse
    , ListCreativeStatusBreakdownByCreativeResponse
    , listCreativeStatusBreakdownByCreativeResponse
    , lcsbbcrNextPageToken
    , lcsbbcrFilteredBidCreativeRows

    -- * FrequencyCap
    , FrequencyCap
    , frequencyCap
    , fcMaxImpressions
    , fcNumTimeUnits
    , fcTimeUnitType

    -- * ListBidResponsesWithoutBidsResponse
    , ListBidResponsesWithoutBidsResponse
    , listBidResponsesWithoutBidsResponse
    , lbrwbrNextPageToken
    , lbrwbrBidResponseWithoutBidsStatusRows

    -- * ServingRestriction
    , ServingRestriction
    , servingRestriction
    , srStatus
    , srContexts
    , srDisApprovalReasons
    , srDisApproval

    -- * CreativeSpecification
    , CreativeSpecification
    , creativeSpecification
    , csCreativeCompanionSizes
    , csCreativeSize

    -- * ImpressionMetricsRow
    , ImpressionMetricsRow
    , impressionMetricsRow
    , imrRowDimensions
    , imrAvailableImpressions
    , imrSuccessfulResponses
    , imrInventoryMatches
    , imrBidRequests
    , imrResponsesWithBids

    -- * CreativeSize
    , CreativeSize
    , creativeSize
    , csSize
    , csCompanionSizes
    , csSkippableAdType
    , csCreativeSizeType
    , csAllowedFormats
    , csNATiveTemplate

    -- * CorrectionType
    , CorrectionType (..)

    -- * ListProposalsResponse
    , ListProposalsResponse
    , listProposalsResponse
    , lprProposals
    , lprNextPageToken

    -- * InventorySizeTargeting
    , InventorySizeTargeting
    , inventorySizeTargeting
    , istTargetedInventorySizes
    , istExcludedInventorySizes

    -- * DealTerms
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

    -- * FilteringStats
    , FilteringStats
    , filteringStats
    , fsReasons
    , fsDate

    -- * ClientUserInvitation
    , ClientUserInvitation
    , clientUserInvitation
    , cuiEmail
    , cuiInvitationId
    , cuiClientAccountId

    -- * NonBillableWinningBidStatusRow
    , NonBillableWinningBidStatusRow
    , nonBillableWinningBidStatusRow
    , nbwbsrStatus
    , nbwbsrRowDimensions
    , nbwbsrBidCount

    -- * ListProductsResponse
    , ListProductsResponse
    , listProductsResponse
    , lisNextPageToken
    , lisProducts

    -- * Buyer
    , Buyer
    , buyer
    , bAccountId

    -- * ListBidMetricsResponse
    , ListBidMetricsResponse
    , listBidMetricsResponse
    , lbmrNextPageToken
    , lbmrBidMetricsRows

    -- * Client
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

    -- * DisApproval
    , DisApproval
    , disApproval
    , daReason
    , daDetails
    ) where

import           Network.Google.AdExchangeBuyer2.Types.Product
import           Network.Google.AdExchangeBuyer2.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v2beta1' of the Ad Exchange Buyer API II. This contains the host and root path used as a starting point for constructing service requests.
adExchangeBuyer2Service :: ServiceConfig
adExchangeBuyer2Service
  = defaultService
      (ServiceId "adexchangebuyer2:v2beta1")
      "adexchangebuyer.googleapis.com"

-- | Manage your Ad Exchange buyer account configuration
adExchangeBuyerScope :: Proxy '["https://www.googleapis.com/auth/adexchange.buyer"]
adExchangeBuyerScope = Proxy;
