{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AdExchangeBuyer
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Accesses your bidding-account information, submits creatives for
-- validation, finds available direct deals, and retrieves performance
-- reports.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference>
module Network.Google.AdExchangeBuyer
    (
    -- * API
      AdExchangeBuyerAPI
    , adExchangeBuyerAPI
    , adExchangeBuyerURL

    -- * Service Methods

    -- * REST Resources

    -- ** AdexchangebuyerAccountsGet
    , module AdExchangeBuyer.Accounts.Get

    -- ** AdexchangebuyerAccountsList
    , module AdExchangeBuyer.Accounts.List

    -- ** AdexchangebuyerAccountsPatch
    , module AdExchangeBuyer.Accounts.Patch

    -- ** AdexchangebuyerAccountsUpdate
    , module AdExchangeBuyer.Accounts.Update

    -- ** AdexchangebuyerBillingInfoGet
    , module AdExchangeBuyer.BillingInfo.Get

    -- ** AdexchangebuyerBillingInfoList
    , module AdExchangeBuyer.BillingInfo.List

    -- ** AdexchangebuyerBudgetGet
    , module AdExchangeBuyer.Budget.Get

    -- ** AdexchangebuyerBudgetPatch
    , module AdExchangeBuyer.Budget.Patch

    -- ** AdexchangebuyerBudgetUpdate
    , module AdExchangeBuyer.Budget.Update

    -- ** AdexchangebuyerClientaccessDelete
    , module AdExchangeBuyer.Clientaccess.Delete

    -- ** AdexchangebuyerClientaccessGet
    , module AdExchangeBuyer.Clientaccess.Get

    -- ** AdexchangebuyerClientaccessInsert
    , module AdExchangeBuyer.Clientaccess.Insert

    -- ** AdexchangebuyerClientaccessList
    , module AdExchangeBuyer.Clientaccess.List

    -- ** AdexchangebuyerClientaccessPatch
    , module AdExchangeBuyer.Clientaccess.Patch

    -- ** AdexchangebuyerClientaccessUpdate
    , module AdExchangeBuyer.Clientaccess.Update

    -- ** AdexchangebuyerCreativesGet
    , module AdExchangeBuyer.Creatives.Get

    -- ** AdexchangebuyerCreativesInsert
    , module AdExchangeBuyer.Creatives.Insert

    -- ** AdexchangebuyerCreativesList
    , module AdExchangeBuyer.Creatives.List

    -- ** AdexchangebuyerDealsGet
    , module AdExchangeBuyer.Deals.Get

    -- ** AdexchangebuyerMarketplacedealsDelete
    , module AdExchangeBuyer.Marketplacedeals.Delete

    -- ** AdexchangebuyerMarketplacedealsInsert
    , module AdExchangeBuyer.Marketplacedeals.Insert

    -- ** AdexchangebuyerMarketplacedealsList
    , module AdExchangeBuyer.Marketplacedeals.List

    -- ** AdexchangebuyerMarketplacedealsUpdate
    , module AdExchangeBuyer.Marketplacedeals.Update

    -- ** AdexchangebuyerMarketplacenotesInsert
    , module AdExchangeBuyer.Marketplacenotes.Insert

    -- ** AdexchangebuyerMarketplacenotesList
    , module AdExchangeBuyer.Marketplacenotes.List

    -- ** AdexchangebuyerMarketplaceoffersGet
    , module AdExchangeBuyer.Marketplaceoffers.Get

    -- ** AdexchangebuyerMarketplaceoffersSearch
    , module AdExchangeBuyer.Marketplaceoffers.Search

    -- ** AdexchangebuyerMarketplaceordersGet
    , module AdExchangeBuyer.Marketplaceorders.Get

    -- ** AdexchangebuyerMarketplaceordersInsert
    , module AdExchangeBuyer.Marketplaceorders.Insert

    -- ** AdexchangebuyerMarketplaceordersPatch
    , module AdExchangeBuyer.Marketplaceorders.Patch

    -- ** AdexchangebuyerMarketplaceordersSearch
    , module AdExchangeBuyer.Marketplaceorders.Search

    -- ** AdexchangebuyerMarketplaceordersUpdate
    , module AdExchangeBuyer.Marketplaceorders.Update

    -- ** AdexchangebuyerNegotiationroundsInsert
    , module AdExchangeBuyer.Negotiationrounds.Insert

    -- ** AdexchangebuyerNegotiationsGet
    , module AdExchangeBuyer.Negotiations.Get

    -- ** AdexchangebuyerNegotiationsInsert
    , module AdExchangeBuyer.Negotiations.Insert

    -- ** AdexchangebuyerNegotiationsList
    , module AdExchangeBuyer.Negotiations.List

    -- ** AdexchangebuyerOffersGet
    , module AdExchangeBuyer.Offers.Get

    -- ** AdexchangebuyerOffersInsert
    , module AdExchangeBuyer.Offers.Insert

    -- ** AdexchangebuyerOffersList
    , module AdExchangeBuyer.Offers.List

    -- ** AdexchangebuyerPerformanceReportList
    , module AdExchangeBuyer.PerformanceReport.List

    -- ** AdexchangebuyerPretargetingConfigDelete
    , module AdExchangeBuyer.PretargetingConfig.Delete

    -- ** AdexchangebuyerPretargetingConfigGet
    , module AdExchangeBuyer.PretargetingConfig.Get

    -- ** AdexchangebuyerPretargetingConfigInsert
    , module AdExchangeBuyer.PretargetingConfig.Insert

    -- ** AdexchangebuyerPretargetingConfigList
    , module AdExchangeBuyer.PretargetingConfig.List

    -- ** AdexchangebuyerPretargetingConfigPatch
    , module AdExchangeBuyer.PretargetingConfig.Patch

    -- ** AdexchangebuyerPretargetingConfigUpdate
    , module AdExchangeBuyer.PretargetingConfig.Update

    -- * Types

    -- ** BrandDto
    , BrandDto
    , brandDto
    , bdAdvertiserId
    , bdName
    , bdId

    -- ** EditAllOrderDealsResponse
    , EditAllOrderDealsResponse
    , editAllOrderDealsResponse
    , eaodrDeals

    -- ** MarketplaceNote
    , MarketplaceNote
    , marketplaceNote
    , mnNote
    , mnKind
    , mnTimestampMs
    , mnDealId
    , mnNoteId
    , mnCreatorRole
    , mnOrderId
    , mnOrderRevisionNumber

    -- ** TermsDto
    , TermsDto
    , termsDto
    , tdFinalizeAutomatically
    , tdBuyerBillingType
    , tdTargetingAllAdSlots
    , tdUrls
    , tdEndDate
    , tdCpm
    , tdEstimatedSpend
    , tdAdvertisers
    , tdEstimatedImpressionsPerDay
    , tdMonetizerType
    , tdAudienceSegmentDescription
    , tdCreativeReviewPolicy
    , tdMinimumTrueLooks
    , tdStartDate
    , tdCreativeBlockingLevel
    , tdSemiTransparent
    , tdAudienceSegment
    , tdDealPremium
    , tdIsReservation
    , tdAdSlots
    , tdTermsAttributes
    , tdInventorySegmentTargeting
    , tdDescriptiveName
    , tdMinimumSpendMicros
    , tdTargetByDealId
    , tdBillingTerms
    , tdDescription

    -- ** CreativesList
    , CreativesList
    , creativesList
    , clNextPageToken
    , clKind
    , clItems

    -- ** CreateOrdersResponse
    , CreateOrdersResponse
    , createOrdersResponse
    , corOrders

    -- ** AddOrderNotesRequest
    , AddOrderNotesRequest
    , addOrderNotesRequest
    , aonrNotes

    -- ** MarketplaceDealParty
    , MarketplaceDealParty
    , marketplaceDealParty
    , mdpSeller
    , mdpBuyer

    -- ** DealPartyDto
    , DealPartyDto
    , dealPartyDto
    , dpdBuyerSellerRole
    , dpdCustomerId
    , dpdName
    , dpdWebProperty
    , dpdBuyer

    -- ** DeliveryControlFrequencyCap
    , DeliveryControlFrequencyCap
    , deliveryControlFrequencyCap
    , dcfcMaxImpressions
    , dcfcNumTimeUnits
    , dcfcTimeUnitType

    -- ** GetNegotiationsResponse
    , GetNegotiationsResponse
    , getNegotiationsResponse
    , gnrKind
    , gnrNegotiations

    -- ** Budget
    , Budget
    , budget
    , bCurrencyCode
    , bKind
    , bBudgetAmount
    , bAccountId
    , bId
    , bBillingId

    -- ** GetFinalizedNegotiationByExternalDealIdRequest
    , GetFinalizedNegotiationByExternalDealIdRequest
    , getFinalizedNegotiationByExternalDealIdRequest
    , gfnbedirIncludePrivateAuctions

    -- ** PrivateData
    , PrivateData
    , privateData
    , pdReferencePayload
    , pdReferenceId

    -- ** AdSize
    , AdSize
    , adSize
    , asHeight
    , asWidth

    -- ** RuleKeyValuePair
    , RuleKeyValuePair
    , ruleKeyValuePair
    , rkvpKeyName
    , rkvpValue

    -- ** GetOrdersResponse
    , GetOrdersResponse
    , getOrdersResponse
    , gorOrders

    -- ** AccountsList
    , AccountsList
    , accountsList
    , alKind
    , alItems

    -- ** GetOrderNotesResponse
    , GetOrderNotesResponse
    , getOrderNotesResponse
    , gonrNotes

    -- ** CreateOrdersRequest
    , CreateOrdersRequest
    , createOrdersRequest
    , cWebPropertyCode
    , cOrders

    -- ** PricePerBuyer
    , PricePerBuyer
    , pricePerBuyer
    , ppbPrice
    , ppbBuyer

    -- ** TargetingValueDayPartTargetingDayPart
    , TargetingValueDayPartTargetingDayPart
    , targetingValueDayPartTargetingDayPart
    , tvdptdpEndHour
    , tvdptdpStartHour
    , tvdptdpStartMinute
    , tvdptdpDayOfWeek
    , tvdptdpEndMinute

    -- ** DeliveryControl
    , DeliveryControl
    , deliveryControl
    , dcFrequencyCaps
    , dcDeliveryRateType

    -- ** Creative
    , Creative
    , creative
    , cAttribute
    , cNativeAd
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
    , cClickThroughUrl
    , cVendorType
    , cAccountId
    , cImpressionTrackingUrl
    , cFilteringReasons
    , cVersion
    , cSensitiveCategories
    , cVideoURL
    , cApiUploadTimestamp
    , cServingRestrictions
    , cOpenAuctionStatus

    -- ** AddOrderDealsResponse
    , AddOrderDealsResponse
    , addOrderDealsResponse
    , aodrDeals
    , aodrOrderRevisionNumber

    -- ** PretargetingConfigList
    , PretargetingConfigList
    , pretargetingConfigList
    , pclKind
    , pclItems

    -- ** BuyerDto
    , BuyerDto
    , buyerDto
    , buySponsorAccountId
    , buyEnabledForInterestTargetingDeals
    , buyCustomerId
    , buyEnabledForPreferredDeals
    , buyAccountId
    , buyDisplayName
    , buyId

    -- ** DealTermsNonGuaranteedFixedPriceTerms
    , DealTermsNonGuaranteedFixedPriceTerms
    , dealTermsNonGuaranteedFixedPriceTerms
    , dtngfptFixedPrices

    -- ** AdSlotDto
    , AdSlotDto
    , adSlotDto
    , asdWebPropertyId
    , asdSize
    , asdChannelCode
    , asdChannelId
    , asdName
    , asdDescription

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

    -- ** Account
    , Account
    , account
    , aMaximumTotalQps
    , aKind
    , aCookieMatchingUrl
    , aMaximumActiveCreatives
    , aCookieMatchingNid
    , aNumberActiveCreatives
    , aId
    , aBidderLocation

    -- ** Seller
    , Seller
    , seller
    , sAccountId
    , sSubAccountId

    -- ** DeleteOrderDealsRequest
    , DeleteOrderDealsRequest
    , deleteOrderDealsRequest
    , dodrUpdateAction
    , dodrDealIds
    , dodrOrderRevisionNumber

    -- ** GetOrderDealsResponse
    , GetOrderDealsResponse
    , getOrderDealsResponse
    , godrDeals

    -- ** ContactInformation
    , ContactInformation
    , contactInformation
    , ciEmail
    , ciName

    -- ** TargetingValueCreativeSize
    , TargetingValueCreativeSize
    , targetingValueCreativeSize
    , tvcsSize
    , tvcsCompanionSizes
    , tvcsCreativeSizeType

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
    , pcMobileDevices
    , pcLanguages
    , pcVerticals
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

    -- ** PerformanceReportList
    , PerformanceReportList
    , performanceReportList
    , prlKind
    , prlPerformanceReport

    -- ** NegotiationDto
    , NegotiationDto
    , negotiationDto
    , ndNegotiationState
    , ndExternalDealId
    , ndStatus
    , ndDealType
    , ndNegotiationRounds
    , ndKind
    , ndBilledBuyer
    , ndBuyerEmailContacts
    , ndStats
    , ndSeller
    , ndLabelNames
    , ndOfferId
    , ndNegotiationId
    , ndSellerEmailContacts
    , ndBuyer

    -- ** AudienceSegment
    , AudienceSegment
    , audienceSegment
    , asNumCookies
    , asName
    , asId
    , asDescription

    -- ** OfferDto
    , OfferDto
    , offerDto
    , odCreator
    , odStatus
    , odOfferState
    , odPointOfContact
    , odTerms
    , odKind
    , odBilledBuyer
    , odOpenToDealParties
    , odEmailContacts
    , odLabelNames
    , odOfferId
    , odClosedToDealParties
    , odAnonymous
    , odIsOpen

    -- ** TargetingValueSize
    , TargetingValueSize
    , targetingValueSize
    , tvsHeight
    , tvsWidth

    -- ** MarketplaceOffer
    , MarketplaceOffer
    , marketplaceOffer
    , moState
    , moWebPropertyCode
    , moCreationTimeMs
    , moTerms
    , moLastUpdateTimeMs
    , moKind
    , moRevisionNumber
    , moHasCreatorSignedOff
    , moFlightStartTimeMs
    , moSharedTargetings
    , moSeller
    , moSyndicationProduct
    , moFlightEndTimeMs
    , moName
    , moCreatorContacts
    , moOfferId
    , moLabels

    -- ** GetNegotiationsRequest
    , GetNegotiationsRequest
    , getNegotiationsRequest
    , gnrSinceTimestampMillis
    , gnrFinalized
    , gnrIncludePrivateAuctions

    -- ** BillingInfoList
    , BillingInfoList
    , billingInfoList
    , bilKind
    , bilItems

    -- ** AddOrderNotesResponse
    , AddOrderNotesResponse
    , addOrderNotesResponse
    , aNotes

    -- ** MoneyDto
    , MoneyDto
    , moneyDto
    , mdCurrencyCode
    , mdMicros

    -- ** ListClientAccessCapabilitiesResponse
    , ListClientAccessCapabilitiesResponse
    , listClientAccessCapabilitiesResponse
    , lcacrClientAccessPermissions

    -- ** GetNegotiationByIdRequest
    , GetNegotiationByIdRequest
    , getNegotiationByIdRequest
    , gnbirIncludePrivateAuctions

    -- ** ListOffersResponse
    , ListOffersResponse
    , listOffersResponse
    , lorKind
    , lorOffers

    -- ** AdvertiserDto
    , AdvertiserDto
    , advertiserDto
    , adStatus
    , adBrands
    , adName
    , adId

    -- ** TargetingValue
    , TargetingValue
    , targetingValue
    , tvCreativeSizeValue
    , tvStringValue
    , tvLongValue
    , tvDayPartTargetingValue

    -- ** Price
    , Price
    , price
    , pCurrencyCode
    , pAmountMicros

    -- ** EditAllOrderDealsRequest
    , EditAllOrderDealsRequest
    , editAllOrderDealsRequest
    , eUpdateAction
    , eDeals
    , eOrder
    , eOrderRevisionNumber

    -- ** BillingInfo
    , BillingInfo
    , billingInfo
    , biKind
    , biAccountName
    , biAccountId
    , biBillingId

    -- ** WebPropertyDto
    , WebPropertyDto
    , webPropertyDto
    , wpdEnabledForPreferredDeals
    , wpdSyndicationProduct
    , wpdName
    , wpdPropertyCode
    , wpdId
    , wpdSiteUrls
    , wpdAllowInterestTargetedAds

    -- ** TargetingValueDayPartTargeting
    , TargetingValueDayPartTargeting
    , targetingValueDayPartTargeting
    , tvdptTimeZoneType
    , tvdptDayParts

    -- ** ListOffersRequest
    , ListOffersRequest
    , listOffersRequest
    , lorSinceTimestampMillis

    -- ** ListClientAccessCapabilitiesRequest
    , ListClientAccessCapabilitiesRequest
    , listClientAccessCapabilitiesRequest
    , lcacrSponsorAccountId

    -- ** InventorySegmentTargeting
    , InventorySegmentTargeting
    , inventorySegmentTargeting
    , istNegativeVideoDurationSegments
    , istNegativeIcmBrands
    , istNegativeKeyValues
    , istPositiveAudienceSegments
    , istPositiveXfpPlacements
    , istNegativeXfpAdSlots
    , istPositiveOperatingSystemVersions
    , istPositiveSizes
    , istPositiveDeviceCategories
    , istPositiveLocations
    , istNegativeAdSizes
    , istPositiveOperatingSystems
    , istPositiveSiteUrls
    , istNegativeInventorySlots
    , istNegativeVideoAdPositionSegments
    , istPositiveAdTypeSegments
    , istPositiveIcmInterests
    , istPositiveMobileApps
    , istPositiveKeyValues
    , istPositiveIcmBrands
    , istPositiveVideoDurationSegments
    , istNegativeAudienceSegments
    , istNegativeXfpPlacements
    , istPositiveXfpAdSlots
    , istNegativeOperatingSystemVersions
    , istNegativeSizes
    , istNegativeLocations
    , istNegativeDeviceCategories
    , istNegativeOperatingSystems
    , istPositiveAdSizes
    , istNegativeSiteUrls
    , istNegativeAdTypeSegments
    , istPositiveVideoAdPositionSegments
    , istPositiveInventorySlots
    , istNegativeMobileApps
    , istNegativeIcmInterests

    -- ** SharedTargeting
    , SharedTargeting
    , sharedTargeting
    , stKey
    , stExclusions
    , stInclusions

    -- ** ClientAccessCapabilities
    , ClientAccessCapabilities
    , clientAccessCapabilities
    , cacClientAccountId
    , cacCapabilities

    -- ** DeleteOrderDealsResponse
    , DeleteOrderDealsResponse
    , deleteOrderDealsResponse
    , dDeals
    , dOrderRevisionNumber

    -- ** MarketplaceDeal
    , MarketplaceDeal
    , marketplaceDeal
    , mdExternalDealId
    , mdBuyerPrivateData
    , mdWebPropertyCode
    , mdCreationTimeMs
    , mdTerms
    , mdOfferRevisionNumber
    , mdLastUpdateTimeMs
    , mdKind
    , mdDeliveryControl
    , mdFlightStartTimeMs
    , mdSharedTargetings
    , mdDealId
    , mdInventoryDescription
    , mdSyndicationProduct
    , mdFlightEndTimeMs
    , mdName
    , mdSellerContacts
    , mdOfferId
    , mdOrderId

    -- ** NegotiationRoundDto
    , NegotiationRoundDto
    , negotiationRoundDto
    , nrdTerms
    , nrdKind
    , nrdOriginatorRole
    , nrdAction
    , nrdDbmPartnerId
    , nrdNotes
    , nrdNegotiationId
    , nrdEditHistory
    , nrdRoundNumber

    -- ** StatsDto
    , StatsDto
    , statsDto
    , sdBids
    , sdSpend
    , sdImpressions
    , sdGoodBids
    , sdRevenue
    , sdRequests

    -- ** GetOffersResponse
    , GetOffersResponse
    , getOffersResponse
    , gorOffers

    -- ** DealTermsNonGuaranteedAuctionTerms
    , DealTermsNonGuaranteedAuctionTerms
    , dealTermsNonGuaranteedAuctionTerms
    , dtngatReservePricePerBuyers
    , dtngatPrivateAuctionId

    -- ** Buyer
    , Buyer
    , buyer
    , bbAccountId

    -- ** MarketplaceLabel
    , MarketplaceLabel
    , marketplaceLabel
    , mlDeprecatedMarketplaceDealParty
    , mlAccountId
    , mlCreateTimeMs
    , mlLabel

    -- ** DateTime
    , DateTime
    , dateTime
    , dtSecond
    , dtDay
    , dtYear
    , dtHour
    , dtMonth
    , dtMinute
    , dtTimeZoneId

    -- ** DealTermsGuaranteedFixedPriceTerms
    , DealTermsGuaranteedFixedPriceTerms
    , dealTermsGuaranteedFixedPriceTerms
    , dtgfptGuaranteedLooks
    , dtgfptGuaranteedImpressions
    , dtgfptFixedPrices

    -- ** MarketplaceOrder
    , MarketplaceOrder
    , marketplaceOrder
    , mBuyerPrivateData
    , mIsSetupComplete
    , mBuyerContacts
    , mKind
    , mOriginatorRole
    , mRevisionNumber
    , mBilledBuyer
    , mIsRenegotiating
    , mHasSellerSignedOff
    , mSeller
    , mOrderState
    , mName
    , mSellerContacts
    , mLastUpdaterRole
    , mLabels
    , mRevisionTimeMs
    , mOrderId
    , mLastUpdaterOrCommentorRole
    , mHasBuyerSignedOff
    , mBuyer

    -- ** AddOrderDealsRequest
    , AddOrderDealsRequest
    , addOrderDealsRequest
    , aUpdateAction
    , aDeals
    , aOrderRevisionNumber

    -- ** DealTerms
    , DealTerms
    , dealTerms
    , dtNonGuaranteedFixedPriceTerms
    , dtNonGuaranteedAuctionTerms
    , dtGuaranteedFixedPriceTerms
    , dtDescription

    -- ** EditHistoryDto
    , EditHistoryDto
    , editHistoryDto
    , ehdLastUpdatedByLoginName
    , ehdCreatedByLoginName
    , ehdLastUpdateTimeStamp
    , ehdCreatedTimeStamp
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
import           Network.Google.Resource.AdExchangeBuyer.Clientaccess.Delete
import           Network.Google.Resource.AdExchangeBuyer.Clientaccess.Get
import           Network.Google.Resource.AdExchangeBuyer.Clientaccess.Insert
import           Network.Google.Resource.AdExchangeBuyer.Clientaccess.List
import           Network.Google.Resource.AdExchangeBuyer.Clientaccess.Patch
import           Network.Google.Resource.AdExchangeBuyer.Clientaccess.Update
import           Network.Google.Resource.AdExchangeBuyer.Creatives.Get
import           Network.Google.Resource.AdExchangeBuyer.Creatives.Insert
import           Network.Google.Resource.AdExchangeBuyer.Creatives.List
import           Network.Google.Resource.AdExchangeBuyer.Deals.Get
import           Network.Google.Resource.AdExchangeBuyer.Marketplacedeals.Delete
import           Network.Google.Resource.AdExchangeBuyer.Marketplacedeals.Insert
import           Network.Google.Resource.AdExchangeBuyer.Marketplacedeals.List
import           Network.Google.Resource.AdExchangeBuyer.Marketplacedeals.Update
import           Network.Google.Resource.AdExchangeBuyer.Marketplacenotes.Insert
import           Network.Google.Resource.AdExchangeBuyer.Marketplacenotes.List
import           Network.Google.Resource.AdExchangeBuyer.Marketplaceoffers.Get
import           Network.Google.Resource.AdExchangeBuyer.Marketplaceoffers.Search
import           Network.Google.Resource.AdExchangeBuyer.Marketplaceorders.Get
import           Network.Google.Resource.AdExchangeBuyer.Marketplaceorders.Insert
import           Network.Google.Resource.AdExchangeBuyer.Marketplaceorders.Patch
import           Network.Google.Resource.AdExchangeBuyer.Marketplaceorders.Search
import           Network.Google.Resource.AdExchangeBuyer.Marketplaceorders.Update
import           Network.Google.Resource.AdExchangeBuyer.Negotiationrounds.Insert
import           Network.Google.Resource.AdExchangeBuyer.Negotiations.Get
import           Network.Google.Resource.AdExchangeBuyer.Negotiations.Insert
import           Network.Google.Resource.AdExchangeBuyer.Negotiations.List
import           Network.Google.Resource.AdExchangeBuyer.Offers.Get
import           Network.Google.Resource.AdExchangeBuyer.Offers.Insert
import           Network.Google.Resource.AdExchangeBuyer.Offers.List
import           Network.Google.Resource.AdExchangeBuyer.PerformanceReport.List
import           Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Delete
import           Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Get
import           Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Insert
import           Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.List
import           Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Patch
import           Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Update

{- $resources
TODO
-}

type AdExchangeBuyerAPI =
     Marketplacenotes :<|> Deals :<|> Negotiationrounds
       :<|> Accounts
       :<|> Budget
       :<|> Creatives
       :<|> PerformanceReport
       :<|> Marketplaceoffers
       :<|> PretargetingConfig
       :<|> Marketplaceorders
       :<|> Clientaccess
       :<|> BillingInfo
       :<|> Marketplacedeals
       :<|> Negotiations
       :<|> Offers

adExchangeBuyerAPI :: Proxy AdExchangeBuyerAPI
adExchangeBuyerAPI = Proxy
