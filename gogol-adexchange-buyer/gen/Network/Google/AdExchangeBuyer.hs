{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AdExchangeBuyer
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Accesses your bidding-account information, submits creatives for
-- validation, finds available direct deals, and retrieves performance
-- reports.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference>
module Network.Google.AdExchangeBuyer
    (
    -- * Service Configuration
      adExchangeBuyerService

    -- * OAuth Scopes
    , adExchangeBuyerScope

    -- * API Declaration
    , AdExchangeBuyerAPI

    -- * Resources

    -- ** adexchangebuyer.accounts.get
    , module Network.Google.Resource.AdExchangeBuyer.Accounts.Get

    -- ** adexchangebuyer.accounts.list
    , module Network.Google.Resource.AdExchangeBuyer.Accounts.List

    -- ** adexchangebuyer.accounts.patch
    , module Network.Google.Resource.AdExchangeBuyer.Accounts.Patch

    -- ** adexchangebuyer.accounts.update
    , module Network.Google.Resource.AdExchangeBuyer.Accounts.Update

    -- ** adexchangebuyer.billingInfo.get
    , module Network.Google.Resource.AdExchangeBuyer.BillingInfo.Get

    -- ** adexchangebuyer.billingInfo.list
    , module Network.Google.Resource.AdExchangeBuyer.BillingInfo.List

    -- ** adexchangebuyer.budget.get
    , module Network.Google.Resource.AdExchangeBuyer.Budget.Get

    -- ** adexchangebuyer.budget.patch
    , module Network.Google.Resource.AdExchangeBuyer.Budget.Patch

    -- ** adexchangebuyer.budget.update
    , module Network.Google.Resource.AdExchangeBuyer.Budget.Update

    -- ** adexchangebuyer.creatives.addDeal
    , module Network.Google.Resource.AdExchangeBuyer.Creatives.AddDeal

    -- ** adexchangebuyer.creatives.get
    , module Network.Google.Resource.AdExchangeBuyer.Creatives.Get

    -- ** adexchangebuyer.creatives.insert
    , module Network.Google.Resource.AdExchangeBuyer.Creatives.Insert

    -- ** adexchangebuyer.creatives.list
    , module Network.Google.Resource.AdExchangeBuyer.Creatives.List

    -- ** adexchangebuyer.creatives.listDeals
    , module Network.Google.Resource.AdExchangeBuyer.Creatives.ListDeals

    -- ** adexchangebuyer.creatives.removeDeal
    , module Network.Google.Resource.AdExchangeBuyer.Creatives.RemoveDeal

    -- ** adexchangebuyer.marketplacedeals.delete
    , module Network.Google.Resource.AdExchangeBuyer.MarketplaceDeals.Delete

    -- ** adexchangebuyer.marketplacedeals.insert
    , module Network.Google.Resource.AdExchangeBuyer.MarketplaceDeals.Insert

    -- ** adexchangebuyer.marketplacedeals.list
    , module Network.Google.Resource.AdExchangeBuyer.MarketplaceDeals.List

    -- ** adexchangebuyer.marketplacedeals.update
    , module Network.Google.Resource.AdExchangeBuyer.MarketplaceDeals.Update

    -- ** adexchangebuyer.marketplacenotes.insert
    , module Network.Google.Resource.AdExchangeBuyer.MarketplaceNotes.Insert

    -- ** adexchangebuyer.marketplacenotes.list
    , module Network.Google.Resource.AdExchangeBuyer.MarketplaceNotes.List

    -- ** adexchangebuyer.marketplaceprivateauction.updateproposal
    , module Network.Google.Resource.AdExchangeBuyer.Marketplaceprivateauction.Updateproposal

    -- ** adexchangebuyer.performanceReport.list
    , module Network.Google.Resource.AdExchangeBuyer.PerformanceReport.List

    -- ** adexchangebuyer.pretargetingConfig.delete
    , module Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Delete

    -- ** adexchangebuyer.pretargetingConfig.get
    , module Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Get

    -- ** adexchangebuyer.pretargetingConfig.insert
    , module Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Insert

    -- ** adexchangebuyer.pretargetingConfig.list
    , module Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.List

    -- ** adexchangebuyer.pretargetingConfig.patch
    , module Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Patch

    -- ** adexchangebuyer.pretargetingConfig.update
    , module Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Update

    -- ** adexchangebuyer.products.get
    , module Network.Google.Resource.AdExchangeBuyer.Products.Get

    -- ** adexchangebuyer.products.search
    , module Network.Google.Resource.AdExchangeBuyer.Products.Search

    -- ** adexchangebuyer.proposals.get
    , module Network.Google.Resource.AdExchangeBuyer.Proposals.Get

    -- ** adexchangebuyer.proposals.insert
    , module Network.Google.Resource.AdExchangeBuyer.Proposals.Insert

    -- ** adexchangebuyer.proposals.patch
    , module Network.Google.Resource.AdExchangeBuyer.Proposals.Patch

    -- ** adexchangebuyer.proposals.search
    , module Network.Google.Resource.AdExchangeBuyer.Proposals.Search

    -- ** adexchangebuyer.proposals.setupcomplete
    , module Network.Google.Resource.AdExchangeBuyer.Proposals.Setupcomplete

    -- ** adexchangebuyer.proposals.update
    , module Network.Google.Resource.AdExchangeBuyer.Proposals.Update

    -- ** adexchangebuyer.pubprofiles.list
    , module Network.Google.Resource.AdExchangeBuyer.PubproFiles.List

    -- * Types

    -- ** MarketplaceNote
    , MarketplaceNote
    , marketplaceNote
    , mnNote
    , mnKind
    , mnTimestampMs
    , mnProposalId
    , mnDealId
    , mnProposalRevisionNumber
    , mnNoteId
    , mnCreatorRole

    -- ** CreativeNATiveAd
    , CreativeNATiveAd
    , creativeNATiveAd
    , cnataImage
    , cnataAppIcon
    , cnataClickTrackingURL
    , cnataClickLinkURL
    , cnataBody
    , cnataHeadline
    , cnataImpressionTrackingURL
    , cnataCallToAction
    , cnataStore
    , cnataVideoURL
    , cnataPrice
    , cnataAdvertiser
    , cnataStarRating
    , cnataLogo

    -- ** EditAllOrderDealsResponse
    , EditAllOrderDealsResponse
    , editAllOrderDealsResponse
    , eaodrDeals
    , eaodrOrderRevisionNumber

    -- ** CreativesList
    , CreativesList
    , creativesList
    , clNextPageToken
    , clKind
    , clItems

    -- ** CreativeDealIdsDealStatusesItem
    , CreativeDealIdsDealStatusesItem
    , creativeDealIdsDealStatusesItem
    , cdidsiArcStatus
    , cdidsiWebPropertyId
    , cdidsiDealId

    -- ** CreativeServingRestrictionsItemContextsItem
    , CreativeServingRestrictionsItemContextsItem
    , creativeServingRestrictionsItemContextsItem
    , csriciPlatform
    , csriciContextType
    , csriciAuctionType
    , csriciGeoCriteriaId

    -- ** CreateOrdersResponse
    , CreateOrdersResponse
    , createOrdersResponse
    , corProposals

    -- ** AccountBidderLocationItem
    , AccountBidderLocationItem
    , accountBidderLocationItem
    , abliURL
    , abliMaximumQps
    , abliRegion
    , abliBidProtocol

    -- ** PrivateData
    , PrivateData
    , privateData
    , pdReferencePayload
    , pdReferenceId

    -- ** Budget
    , Budget
    , budget
    , bCurrencyCode
    , bKind
    , bBudgetAmount
    , bAccountId
    , bId
    , bBillingId

    -- ** AddOrderNotesRequest
    , AddOrderNotesRequest
    , addOrderNotesRequest
    , aonrNotes

    -- ** DeliveryControlFrequencyCap
    , DeliveryControlFrequencyCap
    , deliveryControlFrequencyCap
    , dcfcMaxImpressions
    , dcfcNumTimeUnits
    , dcfcTimeUnitType

    -- ** MarketplaceDealParty
    , MarketplaceDealParty
    , marketplaceDealParty
    , mdpSeller
    , mdpBuyer

    -- ** GetOrderNotesResponse
    , GetOrderNotesResponse
    , getOrderNotesResponse
    , gonrNotes

    -- ** GetOrdersResponse
    , GetOrdersResponse
    , getOrdersResponse
    , gorProposals

    -- ** CreativeServingRestrictionsItemDisApprovalReasonsItem
    , CreativeServingRestrictionsItemDisApprovalReasonsItem
    , creativeServingRestrictionsItemDisApprovalReasonsItem
    , csridariReason
    , csridariDetails

    -- ** AccountsList
    , AccountsList
    , accountsList
    , alKind
    , alItems

    -- ** Dimension
    , Dimension
    , dimension
    , dDimensionValues
    , dDimensionType

    -- ** CreateOrdersRequest
    , CreateOrdersRequest
    , createOrdersRequest
    , cProposals
    , cWebPropertyCode

    -- ** CreativeCorrectionsItem
    , CreativeCorrectionsItem
    , creativeCorrectionsItem
    , cciContexts
    , cciReason
    , cciDetails

    -- ** DealTermsRubiconNonGuaranteedTerms
    , DealTermsRubiconNonGuaranteedTerms
    , dealTermsRubiconNonGuaranteedTerms
    , dtrngtPriorityPrice
    , dtrngtStandardPrice

    -- ** DealServingMetadata
    , DealServingMetadata
    , dealServingMetadata
    , dsmDealPauseStatus

    -- ** AddOrderDealsResponse
    , AddOrderDealsResponse
    , addOrderDealsResponse
    , aodrDeals
    , aodrProposalRevisionNumber

    -- ** DeliveryControl
    , DeliveryControl
    , deliveryControl
    , dcCreativeBlockingLevel
    , dcFrequencyCaps
    , dcDeliveryRateType

    -- ** PricePerBuyer
    , PricePerBuyer
    , pricePerBuyer
    , ppbPrice
    , ppbAuctionTier
    , ppbBuyer

    -- ** Creative
    , Creative
    , creative
    , cAttribute
    , cNATiveAd
    , cHeight
    , cBuyerCreativeId
    , cAdvertiserName
    , cAdChoicesDestinationURL
    , cAgencyId
    , cCorrections
    , cProductCategories
    , cKind
    , cHTMLSnippet
    , cAdvertiserId
    , cRestrictedCategories
    , cDealsStatus
    , cWidth
    , cClickThroughURL
    , cLanguages
    , cVendorType
    , cAccountId
    , cImpressionTrackingURL
    , cFilteringReasons
    , cVersion
    , cSensitiveCategories
    , cVideoURL
    , cAPIUploadTimestamp
    , cServingRestrictions
    , cDetectedDomains
    , cOpenAuctionStatus

    -- ** TargetingValueDayPartTargetingDayPart
    , TargetingValueDayPartTargetingDayPart
    , targetingValueDayPartTargetingDayPart
    , tvdptdpEndHour
    , tvdptdpStartHour
    , tvdptdpStartMinute
    , tvdptdpDayOfWeek
    , tvdptdpEndMinute

    -- ** DimensionDimensionValue
    , DimensionDimensionValue
    , dimensionDimensionValue
    , ddvName
    , ddvId
    , ddvPercentage

    -- ** PretargetingConfigList
    , PretargetingConfigList
    , pretargetingConfigList
    , pclKind
    , pclItems

    -- ** DealTermsNonGuaranteedFixedPriceTerms
    , DealTermsNonGuaranteedFixedPriceTerms
    , dealTermsNonGuaranteedFixedPriceTerms
    , dtngfptFixedPrices

    -- ** PerformanceReport
    , PerformanceReport
    , performanceReport
    , prFilteredBidRate
    , prKind
    , prLatency95thPercentile
    , prCookieMatcherStatusRate
    , prHostedMatchStatusRate
    , prUnsuccessfulRequestRate
    , prBidRequestRate
    , prQuotaThrottledLimit
    , prQuotaConfiguredLimit
    , prSuccessfulRequestRate
    , prLatency85thPercentile
    , prCalloutStatusRate
    , prLatency50thPercentile
    , prBidRate
    , prCreativeStatusRate
    , prNoQuotaInRegion
    , prRegion
    , prInventoryMatchRate
    , prPixelMatchResponses
    , prTimestamp
    , prPixelMatchRequests
    , prOutOfQuota

    -- ** PretargetingConfigExcludedPlacementsItem
    , PretargetingConfigExcludedPlacementsItem
    , pretargetingConfigExcludedPlacementsItem
    , pcepiToken
    , pcepiType

    -- ** Seller
    , Seller
    , seller
    , sAccountId
    , sSubAccountId

    -- ** Account
    , Account
    , account
    , aMaximumTotalQps
    , aKind
    , aCookieMatchingURL
    , aMaximumActiveCreatives
    , aCookieMatchingNid
    , aNumberActiveCreatives
    , aId
    , aBidderLocation

    -- ** DeleteOrderDealsRequest
    , DeleteOrderDealsRequest
    , deleteOrderDealsRequest
    , dodrUpdateAction
    , dodrDealIds
    , dodrProposalRevisionNumber

    -- ** CreativesListOpenAuctionStatusFilter
    , CreativesListOpenAuctionStatusFilter (..)

    -- ** ContactInformation
    , ContactInformation
    , contactInformation
    , ciEmail
    , ciName

    -- ** CreativeNATiveAdLogo
    , CreativeNATiveAdLogo
    , creativeNATiveAdLogo
    , cnatalHeight
    , cnatalURL
    , cnatalWidth

    -- ** GetOrderDealsResponse
    , GetOrderDealsResponse
    , getOrderDealsResponse
    , godrDeals

    -- ** PerformanceReportList
    , PerformanceReportList
    , performanceReportList
    , prlKind
    , prlPerformanceReport

    -- ** PretargetingConfig
    , PretargetingConfig
    , pretargetingConfig
    , pcPlatforms
    , pcMobileCarriers
    , pcVendorTypes
    , pcExcludedGeoCriteriaIds
    , pcSupportedCreativeAttributes
    , pcUserLists
    , pcKind
    , pcExcludedPlacements
    , pcUserIdentifierDataRequired
    , pcMinimumViewabilityDecile
    , pcMobileDevices
    , pcLanguages
    , pcVerticals
    , pcVideoPlayerSizes
    , pcConfigId
    , pcPlacements
    , pcExcludedUserLists
    , pcConfigName
    , pcGeoCriteriaIds
    , pcDimensions
    , pcExcludedVerticals
    , pcCreativeType
    , pcIsActive
    , pcExcludedContentLabels
    , pcBillingId
    , pcMobileOperatingSystemVersions

    -- ** CreativeFilteringReasons
    , CreativeFilteringReasons
    , creativeFilteringReasons
    , cfrReasons
    , cfrDate

    -- ** TargetingValueCreativeSize
    , TargetingValueCreativeSize
    , targetingValueCreativeSize
    , tvcsSize
    , tvcsCompanionSizes
    , tvcsSkippableAdType
    , tvcsCreativeSizeType

    -- ** DealTermsGuaranteedFixedPriceTermsBillingInfo
    , DealTermsGuaranteedFixedPriceTermsBillingInfo
    , dealTermsGuaranteedFixedPriceTermsBillingInfo
    , dtgfptbiCurrencyConversionTimeMs
    , dtgfptbiDfpLineItemId
    , dtgfptbiPrice
    , dtgfptbiOriginalContractedQuantity

    -- ** GetPublisherProFilesByAccountIdResponse
    , GetPublisherProFilesByAccountIdResponse
    , getPublisherProFilesByAccountIdResponse
    , gppfbairProFiles

    -- ** Proposal
    , Proposal
    , proposal
    , pBuyerPrivateData
    , pIsSetupComplete
    , pInventorySource
    , pBuyerContacts
    , pKind
    , pOriginatorRole
    , pDBmAdvertiserIds
    , pRevisionNumber
    , pBilledBuyer
    , pPrivateAuctionId
    , pIsRenegotiating
    , pHasSellerSignedOff
    , pSeller
    , pProposalId
    , pName
    , pSellerContacts
    , pLabels
    , pRevisionTimeMs
    , pProposalState
    , pLastUpdaterOrCommentorRole
    , pNegotiationId
    , pHasBuyerSignedOff
    , pBuyer

    -- ** BillingInfoList
    , BillingInfoList
    , billingInfoList
    , bilKind
    , bilItems

    -- ** AddOrderNotesResponse
    , AddOrderNotesResponse
    , addOrderNotesResponse
    , aNotes

    -- ** TargetingValueSize
    , TargetingValueSize
    , targetingValueSize
    , tvsHeight
    , tvsWidth

    -- ** UpdatePrivateAuctionProposalRequest
    , UpdatePrivateAuctionProposalRequest
    , updatePrivateAuctionProposalRequest
    , upaprExternalDealId
    , upaprUpdateAction
    , upaprNote
    , upaprProposalRevisionNumber

    -- ** PretargetingConfigDimensionsItem
    , PretargetingConfigDimensionsItem
    , pretargetingConfigDimensionsItem
    , pcdiHeight
    , pcdiWidth

    -- ** CreativeCorrectionsItemContextsItem
    , CreativeCorrectionsItemContextsItem
    , creativeCorrectionsItemContextsItem
    , cciciPlatform
    , cciciContextType
    , cciciAuctionType
    , cciciGeoCriteriaId

    -- ** PublisherProvidedForecast
    , PublisherProvidedForecast
    , publisherProvidedForecast
    , ppfWeeklyImpressions
    , ppfWeeklyUniques
    , ppfDimensions

    -- ** TargetingValue
    , TargetingValue
    , targetingValue
    , tvCreativeSizeValue
    , tvStringValue
    , tvLongValue
    , tvDayPartTargetingValue

    -- ** CreativeNATiveAdAppIcon
    , CreativeNATiveAdAppIcon
    , creativeNATiveAdAppIcon
    , cnataaiHeight
    , cnataaiURL
    , cnataaiWidth

    -- ** Price
    , Price
    , price
    , pCurrencyCode
    , pAmountMicros
    , pPricingType
    , pExpectedCpmMicros

    -- ** PretargetingConfigVideoPlayerSizesItem
    , PretargetingConfigVideoPlayerSizesItem
    , pretargetingConfigVideoPlayerSizesItem
    , pcvpsiMinWidth
    , pcvpsiAspectRatio
    , pcvpsiMinHeight

    -- ** EditAllOrderDealsRequest
    , EditAllOrderDealsRequest
    , editAllOrderDealsRequest
    , eUpdateAction
    , eDeals
    , eProposalRevisionNumber
    , eProposal

    -- ** BillingInfo
    , BillingInfo
    , billingInfo
    , biKind
    , biAccountName
    , biAccountId
    , biBillingId

    -- ** TargetingValueDayPartTargeting
    , TargetingValueDayPartTargeting
    , targetingValueDayPartTargeting
    , tvdptTimeZoneType
    , tvdptDayParts

    -- ** SharedTargeting
    , SharedTargeting
    , sharedTargeting
    , stKey
    , stExclusions
    , stInclusions

    -- ** CreativeNATiveAdImage
    , CreativeNATiveAdImage
    , creativeNATiveAdImage
    , cnataiHeight
    , cnataiURL
    , cnataiWidth

    -- ** Product
    , Product
    , product
    , proState
    , proInventorySource
    , proWebPropertyCode
    , proCreationTimeMs
    , proTerms
    , proLastUpdateTimeMs
    , proKind
    , proRevisionNumber
    , proPrivateAuctionId
    , proDeliveryControl
    , proHasCreatorSignedOff
    , proFlightStartTimeMs
    , proSharedTargetings
    , proSeller
    , proSyndicationProduct
    , proFlightEndTimeMs
    , proName
    , proCreatorContacts
    , proMarketplacePublisherProFileId
    , proPublisherProvidedForecast
    , proLabels
    , proPublisherProFileId
    , proLegacyOfferId
    , proProductId

    -- ** CreativeServingRestrictionsItem
    , CreativeServingRestrictionsItem
    , creativeServingRestrictionsItem
    , csriContexts
    , csriReason
    , csriDisApprovalReasons

    -- ** DeleteOrderDealsResponse
    , DeleteOrderDealsResponse
    , deleteOrderDealsResponse
    , dDeals
    , dProposalRevisionNumber

    -- ** PretargetingConfigPlacementsItem
    , PretargetingConfigPlacementsItem
    , pretargetingConfigPlacementsItem
    , pcpiToken
    , pcpiType

    -- ** PublisherProFileAPIProto
    , PublisherProFileAPIProto
    , publisherProFileAPIProto
    , ppfapAudience
    , ppfapState
    , ppfapMediaKitLink
    , ppfapDirectContact
    , ppfapSamplePageLink
    , ppfapLogoURL
    , ppfapKind
    , ppfapExchange
    , ppfapOverview
    , ppfapGooglePlusLink
    , ppfapProFileId
    , ppfapIsParent
    , ppfapSeller
    , ppfapAccountId
    , ppfapName
    , ppfapBuyerPitchStatement
    , ppfapPublisherProvidedForecast
    , ppfapIsPublished
    , ppfapPublisherDomains
    , ppfapPublisherProFileId
    , ppfapRateCardInfoLink
    , ppfapTopHeadlines
    , ppfapProgrammaticContact

    -- ** MarketplaceDeal
    , MarketplaceDeal
    , marketplaceDeal
    , mdExternalDealId
    , mdBuyerPrivateData
    , mdWebPropertyCode
    , mdCreationTimeMs
    , mdTerms
    , mdLastUpdateTimeMs
    , mdKind
    , mdDeliveryControl
    , mdDealServingMetadata
    , mdFlightStartTimeMs
    , mdSharedTargetings
    , mdIsRfpTemplate
    , mdProposalId
    , mdDealId
    , mdInventoryDescription
    , mdSyndicationProduct
    , mdFlightEndTimeMs
    , mdName
    , mdSellerContacts
    , mdProgrammaticCreativeSource
    , mdCreativePreApprovalPolicy
    , mdProductRevisionNumber
    , mdProductId
    , mdCreativeSafeFrameCompatibility

    -- ** GetOffersResponse
    , GetOffersResponse
    , getOffersResponse
    , gorProducts

    -- ** DealTermsNonGuaranteedAuctionTerms
    , DealTermsNonGuaranteedAuctionTerms
    , dealTermsNonGuaranteedAuctionTerms
    , dtngatReservePricePerBuyers
    , dtngatAutoOptimizePrivateAuction

    -- ** CreativeFilteringReasonsReasonsItem
    , CreativeFilteringReasonsReasonsItem
    , creativeFilteringReasonsReasonsItem
    , cfrriFilteringStatus
    , cfrriFilteringCount

    -- ** ProposalsPatchUpdateAction
    , ProposalsPatchUpdateAction (..)

    -- ** CreativesListDealsStatusFilter
    , CreativesListDealsStatusFilter (..)

    -- ** DealTerms
    , DealTerms
    , dealTerms
    , dtEstimatedGrossSpend
    , dtNonGuaranteedFixedPriceTerms
    , dtNonGuaranteedAuctionTerms
    , dtRubiconNonGuaranteedTerms
    , dtBrandingType
    , dtCrossListedExternalDealIdType
    , dtEstimatedImpressionsPerDay
    , dtSellerTimeZone
    , dtGuaranteedFixedPriceTerms
    , dtDescription

    -- ** CreativeDealIds
    , CreativeDealIds
    , creativeDealIds
    , cdiKind
    , cdiDealStatuses

    -- ** MarketplaceLabel
    , MarketplaceLabel
    , marketplaceLabel
    , mlDeprecatedMarketplaceDealParty
    , mlAccountId
    , mlCreateTimeMs
    , mlLabel

    -- ** Buyer
    , Buyer
    , buyer
    , buyAccountId

    -- ** ProposalsUpdateUpdateAction
    , ProposalsUpdateUpdateAction (..)

    -- ** AddOrderDealsRequest
    , AddOrderDealsRequest
    , addOrderDealsRequest
    , aUpdateAction
    , aDeals
    , aProposalRevisionNumber

    -- ** DealServingMetadataDealPauseStatus
    , DealServingMetadataDealPauseStatus
    , dealServingMetadataDealPauseStatus
    , dsmdpsFirstPausedBy
    , dsmdpsBuyerPauseReason
    , dsmdpsHasBuyerPaused
    , dsmdpsSellerPauseReason
    , dsmdpsHasSellerPaused

    -- ** DealTermsGuaranteedFixedPriceTerms
    , DealTermsGuaranteedFixedPriceTerms
    , dealTermsGuaranteedFixedPriceTerms
    , dtgfptGuaranteedLooks
    , dtgfptGuaranteedImpressions
    , dtgfptBillingInfo
    , dtgfptFixedPrices
    , dtgfptMinimumDailyLooks
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude
import           Network.Google.Resource.AdExchangeBuyer.Accounts.Get
import           Network.Google.Resource.AdExchangeBuyer.Accounts.List
import           Network.Google.Resource.AdExchangeBuyer.Accounts.Patch
import           Network.Google.Resource.AdExchangeBuyer.Accounts.Update
import           Network.Google.Resource.AdExchangeBuyer.BillingInfo.Get
import           Network.Google.Resource.AdExchangeBuyer.BillingInfo.List
import           Network.Google.Resource.AdExchangeBuyer.Budget.Get
import           Network.Google.Resource.AdExchangeBuyer.Budget.Patch
import           Network.Google.Resource.AdExchangeBuyer.Budget.Update
import           Network.Google.Resource.AdExchangeBuyer.Creatives.AddDeal
import           Network.Google.Resource.AdExchangeBuyer.Creatives.Get
import           Network.Google.Resource.AdExchangeBuyer.Creatives.Insert
import           Network.Google.Resource.AdExchangeBuyer.Creatives.List
import           Network.Google.Resource.AdExchangeBuyer.Creatives.ListDeals
import           Network.Google.Resource.AdExchangeBuyer.Creatives.RemoveDeal
import           Network.Google.Resource.AdExchangeBuyer.MarketplaceDeals.Delete
import           Network.Google.Resource.AdExchangeBuyer.MarketplaceDeals.Insert
import           Network.Google.Resource.AdExchangeBuyer.MarketplaceDeals.List
import           Network.Google.Resource.AdExchangeBuyer.MarketplaceDeals.Update
import           Network.Google.Resource.AdExchangeBuyer.MarketplaceNotes.Insert
import           Network.Google.Resource.AdExchangeBuyer.MarketplaceNotes.List
import           Network.Google.Resource.AdExchangeBuyer.Marketplaceprivateauction.Updateproposal
import           Network.Google.Resource.AdExchangeBuyer.PerformanceReport.List
import           Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Delete
import           Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Get
import           Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Insert
import           Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.List
import           Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Patch
import           Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Update
import           Network.Google.Resource.AdExchangeBuyer.Products.Get
import           Network.Google.Resource.AdExchangeBuyer.Products.Search
import           Network.Google.Resource.AdExchangeBuyer.Proposals.Get
import           Network.Google.Resource.AdExchangeBuyer.Proposals.Insert
import           Network.Google.Resource.AdExchangeBuyer.Proposals.Patch
import           Network.Google.Resource.AdExchangeBuyer.Proposals.Search
import           Network.Google.Resource.AdExchangeBuyer.Proposals.Setupcomplete
import           Network.Google.Resource.AdExchangeBuyer.Proposals.Update
import           Network.Google.Resource.AdExchangeBuyer.PubproFiles.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Ad Exchange Buyer API service.
type AdExchangeBuyerAPI =
     MarketplaceNotesInsertResource :<|>
       MarketplaceNotesListResource
       :<|> ProposalsInsertResource
       :<|> ProposalsPatchResource
       :<|> ProposalsSetupcompleteResource
       :<|> ProposalsGetResource
       :<|> ProposalsSearchResource
       :<|> ProposalsUpdateResource
       :<|> AccountsListResource
       :<|> AccountsPatchResource
       :<|> AccountsGetResource
       :<|> AccountsUpdateResource
       :<|> BudgetPatchResource
       :<|> BudgetGetResource
       :<|> BudgetUpdateResource
       :<|> CreativesInsertResource
       :<|> CreativesRemoveDealResource
       :<|> CreativesListResource
       :<|> CreativesListDealsResource
       :<|> CreativesGetResource
       :<|> CreativesAddDealResource
       :<|> PerformanceReportListResource
       :<|> PretargetingConfigInsertResource
       :<|> PretargetingConfigListResource
       :<|> PretargetingConfigPatchResource
       :<|> PretargetingConfigGetResource
       :<|> PretargetingConfigDeleteResource
       :<|> PretargetingConfigUpdateResource
       :<|> PubproFilesListResource
       :<|> BillingInfoListResource
       :<|> BillingInfoGetResource
       :<|> ProductsGetResource
       :<|> ProductsSearchResource
       :<|> MarketplaceDealsInsertResource
       :<|> MarketplaceDealsListResource
       :<|> MarketplaceDealsDeleteResource
       :<|> MarketplaceDealsUpdateResource
       :<|> MarketplaceprivateauctionUpdateproposalResource
