{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AdExchangeBuyer.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AdExchangeBuyer.Types
    (
    -- * Service Configuration
      adExchangeBuyerService

    -- * OAuth Scopes
    , adexchangeBuyerScope

    -- * MarketplaceNote
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

    -- * CreativeNATiveAd
    , CreativeNATiveAd
    , creativeNATiveAd
    , cnataImage
    , cnataAppIcon
    , cnataClickTrackingURL
    , cnataBody
    , cnataHeadline
    , cnataImpressionTrackingURL
    , cnataCallToAction
    , cnataStore
    , cnataPrice
    , cnataAdvertiser
    , cnataStarRating
    , cnataLogo

    -- * EditAllOrderDealsResponse
    , EditAllOrderDealsResponse
    , editAllOrderDealsResponse
    , eaodrDeals

    -- * CreativesList
    , CreativesList
    , creativesList
    , clNextPageToken
    , clKind
    , clItems

    -- * CreativeServingRestrictionsItemContextsItem
    , CreativeServingRestrictionsItemContextsItem
    , creativeServingRestrictionsItemContextsItem
    , csriciPlatform
    , csriciContextType
    , csriciAuctionType
    , csriciGeoCriteriaId

    -- * CreateOrdersResponse
    , CreateOrdersResponse
    , createOrdersResponse
    , corProposals

    -- * AccountBidderLocationItem
    , AccountBidderLocationItem
    , accountBidderLocationItem
    , abliURL
    , abliMaximumQps
    , abliRegion

    -- * PrivateData
    , PrivateData
    , privateData
    , pdReferencePayload
    , pdReferenceId

    -- * Budget
    , Budget
    , budget
    , bCurrencyCode
    , bKind
    , bBudgetAmount
    , bAccountId
    , bId
    , bBillingId

    -- * AddOrderNotesRequest
    , AddOrderNotesRequest
    , addOrderNotesRequest
    , aonrNotes

    -- * DeliveryControlFrequencyCap
    , DeliveryControlFrequencyCap
    , deliveryControlFrequencyCap
    , dcfcMaxImpressions
    , dcfcNumTimeUnits
    , dcfcTimeUnitType

    -- * MarketplaceDealParty
    , MarketplaceDealParty
    , marketplaceDealParty
    , mdpSeller
    , mdpBuyer

    -- * GetOrderNotesResponse
    , GetOrderNotesResponse
    , getOrderNotesResponse
    , gonrNotes

    -- * GetOrdersResponse
    , GetOrdersResponse
    , getOrdersResponse
    , gorProposals

    -- * CreativeServingRestrictionsItemDisApprovalReasonsItem
    , CreativeServingRestrictionsItemDisApprovalReasonsItem
    , creativeServingRestrictionsItemDisApprovalReasonsItem
    , csridariReason
    , csridariDetails

    -- * AccountsList
    , AccountsList
    , accountsList
    , alKind
    , alItems

    -- * CreateOrdersRequest
    , CreateOrdersRequest
    , createOrdersRequest
    , cProposals
    , cWebPropertyCode

    -- * CreativeCorrectionsItem
    , CreativeCorrectionsItem
    , creativeCorrectionsItem
    , cciReason
    , cciDetails

    -- * AddOrderDealsResponse
    , AddOrderDealsResponse
    , addOrderDealsResponse
    , aodrDeals
    , aodrProposalRevisionNumber

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
    , ppbBuyer

    -- * Creative
    , Creative
    , creative
    , cAttribute
    , cNATiveAd
    , cHeight
    , cBuyerCreativeId
    , cAdvertiserName
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
    , cVendorType
    , cAccountId
    , cImpressionTrackingURL
    , cFilteringReasons
    , cVersion
    , cSensitiveCategories
    , cVideoURL
    , cAPIUploadTimestamp
    , cServingRestrictions
    , cOpenAuctionStatus

    -- * TargetingValueDayPartTargetingDayPart
    , TargetingValueDayPartTargetingDayPart
    , targetingValueDayPartTargetingDayPart
    , tvdptdpEndHour
    , tvdptdpStartHour
    , tvdptdpStartMinute
    , tvdptdpDayOfWeek
    , tvdptdpEndMinute

    -- * PretargetingConfigList
    , PretargetingConfigList
    , pretargetingConfigList
    , pclKind
    , pclItems

    -- * DealTermsNonGuaranteedFixedPriceTerms
    , DealTermsNonGuaranteedFixedPriceTerms
    , dealTermsNonGuaranteedFixedPriceTerms
    , dtngfptFixedPrices

    -- * PerformanceReport
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

    -- * PretargetingConfigExcludedPlacementsItem
    , PretargetingConfigExcludedPlacementsItem
    , pretargetingConfigExcludedPlacementsItem
    , pcepiToken
    , pcepiType

    -- * Seller
    , Seller
    , seller
    , sAccountId
    , sSubAccountId

    -- * Account
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

    -- * DeleteOrderDealsRequest
    , DeleteOrderDealsRequest
    , deleteOrderDealsRequest
    , dodrUpdateAction
    , dodrDealIds
    , dodrProposalRevisionNumber

    -- * CreativesListOpenAuctionStatusFilter
    , CreativesListOpenAuctionStatusFilter (..)

    -- * ContactInformation
    , ContactInformation
    , contactInformation
    , ciEmail
    , ciName

    -- * CreativeNATiveAdLogo
    , CreativeNATiveAdLogo
    , creativeNATiveAdLogo
    , cnatalHeight
    , cnatalURL
    , cnatalWidth

    -- * GetOrderDealsResponse
    , GetOrderDealsResponse
    , getOrderDealsResponse
    , godrDeals

    -- * PerformanceReportList
    , PerformanceReportList
    , performanceReportList
    , prlKind
    , prlPerformanceReport

    -- * PretargetingConfig
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

    -- * CreativeFilteringReasons
    , CreativeFilteringReasons
    , creativeFilteringReasons
    , cfrReasons
    , cfrDate

    -- * TargetingValueCreativeSize
    , TargetingValueCreativeSize
    , targetingValueCreativeSize
    , tvcsSize
    , tvcsCompanionSizes
    , tvcsCreativeSizeType

    -- * Proposal
    , Proposal
    , proposal
    , pBuyerPrivateData
    , pIsSetupComplete
    , pInventorySource
    , pBuyerContacts
    , pKind
    , pOriginatorRole
    , pRevisionNumber
    , pBilledBuyer
    , pIsRenegotiating
    , pHasSellerSignedOff
    , pSeller
    , pProposalId
    , pName
    , pSellerContacts
    , pLastUpdaterRole
    , pLabels
    , pRevisionTimeMs
    , pProposalState
    , pLastUpdaterOrCommentorRole
    , pHasBuyerSignedOff
    , pBuyer

    -- * BillingInfoList
    , BillingInfoList
    , billingInfoList
    , bilKind
    , bilItems

    -- * AddOrderNotesResponse
    , AddOrderNotesResponse
    , addOrderNotesResponse
    , aNotes

    -- * TargetingValueSize
    , TargetingValueSize
    , targetingValueSize
    , tvsHeight
    , tvsWidth

    -- * PretargetingConfigDimensionsItem
    , PretargetingConfigDimensionsItem
    , pretargetingConfigDimensionsItem
    , pcdiHeight
    , pcdiWidth

    -- * TargetingValue
    , TargetingValue
    , targetingValue
    , tvCreativeSizeValue
    , tvStringValue
    , tvLongValue
    , tvDayPartTargetingValue

    -- * CreativeNATiveAdAppIcon
    , CreativeNATiveAdAppIcon
    , creativeNATiveAdAppIcon
    , cnataaiHeight
    , cnataaiURL
    , cnataaiWidth

    -- * Price
    , Price
    , price
    , pCurrencyCode
    , pAmountMicros
    , pPricingType

    -- * PretargetingConfigVideoPlayerSizesItem
    , PretargetingConfigVideoPlayerSizesItem
    , pretargetingConfigVideoPlayerSizesItem
    , pcvpsiMinWidth
    , pcvpsiAspectRatio
    , pcvpsiMinHeight

    -- * EditAllOrderDealsRequest
    , EditAllOrderDealsRequest
    , editAllOrderDealsRequest
    , eUpdateAction
    , eDeals
    , eProposalRevisionNumber
    , eProposal

    -- * BillingInfo
    , BillingInfo
    , billingInfo
    , biKind
    , biAccountName
    , biAccountId
    , biBillingId

    -- * TargetingValueDayPartTargeting
    , TargetingValueDayPartTargeting
    , targetingValueDayPartTargeting
    , tvdptTimeZoneType
    , tvdptDayParts

    -- * SharedTargeting
    , SharedTargeting
    , sharedTargeting
    , stKey
    , stExclusions
    , stInclusions

    -- * CreativeNATiveAdImage
    , CreativeNATiveAdImage
    , creativeNATiveAdImage
    , cnataiHeight
    , cnataiURL
    , cnataiWidth

    -- * Product
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
    , proHasCreatorSignedOff
    , proFlightStartTimeMs
    , proSharedTargetings
    , proSeller
    , proSyndicationProduct
    , proFlightEndTimeMs
    , proName
    , proCreatorContacts
    , proLabels
    , proProductId

    -- * CreativeServingRestrictionsItem
    , CreativeServingRestrictionsItem
    , creativeServingRestrictionsItem
    , csriContexts
    , csriReason
    , csriDisApprovalReasons

    -- * DeleteOrderDealsResponse
    , DeleteOrderDealsResponse
    , deleteOrderDealsResponse
    , dDeals
    , dProposalRevisionNumber

    -- * PretargetingConfigPlacementsItem
    , PretargetingConfigPlacementsItem
    , pretargetingConfigPlacementsItem
    , pcpiToken
    , pcpiType

    -- * MarketplaceDeal
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
    , mdFlightStartTimeMs
    , mdSharedTargetings
    , mdProposalId
    , mdDealId
    , mdInventoryDescription
    , mdSyndicationProduct
    , mdFlightEndTimeMs
    , mdName
    , mdSellerContacts
    , mdCreativePreApprovalPolicy
    , mdProductRevisionNumber
    , mdProductId

    -- * GetOffersResponse
    , GetOffersResponse
    , getOffersResponse
    , gorProducts

    -- * DealTermsNonGuaranteedAuctionTerms
    , DealTermsNonGuaranteedAuctionTerms
    , dealTermsNonGuaranteedAuctionTerms
    , dtngatReservePricePerBuyers
    , dtngatPrivateAuctionId

    -- * CreativeFilteringReasonsReasonsItem
    , CreativeFilteringReasonsReasonsItem
    , creativeFilteringReasonsReasonsItem
    , cfrriFilteringStatus
    , cfrriFilteringCount

    -- * ProposalsPatchUpdateAction
    , ProposalsPatchUpdateAction (..)

    -- * CreativesListDealsStatusFilter
    , CreativesListDealsStatusFilter (..)

    -- * DealTerms
    , DealTerms
    , dealTerms
    , dtEstimatedGrossSpend
    , dtNonGuaranteedFixedPriceTerms
    , dtNonGuaranteedAuctionTerms
    , dtBrandingType
    , dtEstimatedImpressionsPerDay
    , dtGuaranteedFixedPriceTerms
    , dtDescription

    -- * MarketplaceLabel
    , MarketplaceLabel
    , marketplaceLabel
    , mlDeprecatedMarketplaceDealParty
    , mlAccountId
    , mlCreateTimeMs
    , mlLabel

    -- * Buyer
    , Buyer
    , buyer
    , buyAccountId

    -- * ProposalsUpdateUpdateAction
    , ProposalsUpdateUpdateAction (..)

    -- * AddOrderDealsRequest
    , AddOrderDealsRequest
    , addOrderDealsRequest
    , aUpdateAction
    , aDeals
    , aProposalRevisionNumber

    -- * DealTermsGuaranteedFixedPriceTerms
    , DealTermsGuaranteedFixedPriceTerms
    , dealTermsGuaranteedFixedPriceTerms
    , dtgfptGuaranteedLooks
    , dtgfptGuaranteedImpressions
    , dtgfptFixedPrices
    ) where

import           Network.Google.AdExchangeBuyer.Types.Product
import           Network.Google.AdExchangeBuyer.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1.4' of the Ad Exchange Buyer API. This contains the host and root path used as a starting point for constructing service requests.
adExchangeBuyerService :: ServiceConfig
adExchangeBuyerService
  = defaultService (ServiceId "adexchangebuyer:v1.4")
      "www.googleapis.com"

-- | Manage your Ad Exchange buyer account configuration
adexchangeBuyerScope :: OAuthScope
adexchangeBuyerScope = "https://www.googleapis.com/auth/adexchange.buyer";
