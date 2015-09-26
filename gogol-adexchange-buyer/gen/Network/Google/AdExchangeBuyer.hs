-- |
-- Module      : Network.Google.AdExchangeBuyer
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Accesses your bidding-account information, submits creatives for validation, finds available direct deals, and retrieves performance reports.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference>
module Network.Google.AdExchangeBuyer
    (
    -- * API Definition
      AdExchangeBuyer



    -- * Types

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

    -- ** AccountItemBidderLocation
    , AccountItemBidderLocation
    , accountItemBidderLocation
    , aiblUrl
    , aiblMaximumQps
    , aiblRegion

    -- ** AccountsList
    , AccountsList
    , accountsList
    , alKind
    , alItems

    -- ** AdSize
    , AdSize
    , adSize
    , asHeight
    , asWidth

    -- ** AdSlotDto
    , AdSlotDto
    , adSlotDto
    , asdWebPropertyId
    , asdSize
    , asdChannelCode
    , asdChannelId
    , asdName
    , asdDescription

    -- ** AddOrderDealsRequest
    , AddOrderDealsRequest
    , addOrderDealsRequest
    , aodrUpdateAction
    , aodrDeals
    , aodrOrderRevisionNumber

    -- ** AddOrderDealsResponse
    , AddOrderDealsResponse
    , addOrderDealsResponse
    , aDeals
    , aOrderRevisionNumber

    -- ** AddOrderNotesRequest
    , AddOrderNotesRequest
    , addOrderNotesRequest
    , aNotes

    -- ** AddOrderNotesResponse
    , AddOrderNotesResponse
    , addOrderNotesResponse
    , aonrNotes

    -- ** AdvertiserDto
    , AdvertiserDto
    , advertiserDto
    , adStatus
    , adBrands
    , adName
    , adId

    -- ** AudienceSegment
    , AudienceSegment
    , audienceSegment
    , asNumCookies
    , asName
    , asId
    , asDescription

    -- ** BillingInfo
    , BillingInfo
    , billingInfo
    , biKind
    , biAccountName
    , biAccountId
    , biBillingId

    -- ** BillingInfoList
    , BillingInfoList
    , billingInfoList
    , bilKind
    , bilItems

    -- ** BrandDto
    , BrandDto
    , brandDto
    , bAdvertiserId
    , bName
    , bId

    -- ** Budget
    , Budget
    , budget
    , budCurrencyCode
    , budKind
    , budBudgetAmount
    , budAccountId
    , budId
    , budBillingId

    -- ** Buyer
    , Buyer
    , buyer
    , bAccountId

    -- ** BuyerDto
    , BuyerDto
    , buyerDto
    , bdSponsorAccountId
    , bdEnabledForInterestTargetingDeals
    , bdCustomerId
    , bdEnabledForPreferredDeals
    , bdAccountId
    , bdDisplayName
    , bdId

    -- ** ClientAccessCapabilities
    , ClientAccessCapabilities
    , clientAccessCapabilities
    , cacClientAccountId
    , cacCapabilities

    -- ** ContactInformation
    , ContactInformation
    , contactInformation
    , ciEmail
    , ciName

    -- ** CreateOrdersRequest
    , CreateOrdersRequest
    , createOrdersRequest
    , cWebPropertyCode
    , cOrders

    -- ** CreateOrdersResponse
    , CreateOrdersResponse
    , createOrdersResponse
    , corOrders

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

    -- ** CreativeAppIconNativeAd
    , CreativeAppIconNativeAd
    , creativeAppIconNativeAd
    , cainaHeight
    , cainaUrl
    , cainaWidth

    -- ** CreativeFilteringReasons
    , CreativeFilteringReasons
    , creativeFilteringReasons
    , cfrReasons
    , cfrDate

    -- ** CreativeImageNativeAd
    , CreativeImageNativeAd
    , creativeImageNativeAd
    , cinaHeight
    , cinaUrl
    , cinaWidth

    -- ** CreativeItemContextsItemServingRestrictions
    , CreativeItemContextsItemServingRestrictions
    , creativeItemContextsItemServingRestrictions
    , cicisrPlatform
    , cicisrContextType
    , cicisrAuctionType
    , cicisrGeoCriteriaId

    -- ** CreativeItemCorrections
    , CreativeItemCorrections
    , creativeItemCorrections
    , cicReason
    , cicDetails

    -- ** CreativeItemDisapprovalReasonsItemServingRestrictions
    , CreativeItemDisapprovalReasonsItemServingRestrictions
    , creativeItemDisapprovalReasonsItemServingRestrictions
    , cidrisrReason
    , cidrisrDetails

    -- ** CreativeItemReasonsFilteringReasons
    , CreativeItemReasonsFilteringReasons
    , creativeItemReasonsFilteringReasons
    , cirfrFilteringStatus
    , cirfrFilteringCount

    -- ** CreativeItemServingRestrictions
    , CreativeItemServingRestrictions
    , creativeItemServingRestrictions
    , cisrContexts
    , cisrReason
    , cisrDisapprovalReasons

    -- ** CreativeLogoNativeAd
    , CreativeLogoNativeAd
    , creativeLogoNativeAd
    , clnaHeight
    , clnaUrl
    , clnaWidth

    -- ** CreativeNativeAd
    , CreativeNativeAd
    , creativeNativeAd
    , cnaImage
    , cnaAppIcon
    , cnaClickTrackingUrl
    , cnaBody
    , cnaHeadline
    , cnaImpressionTrackingUrl
    , cnaCallToAction
    , cnaStore
    , cnaPrice
    , cnaAdvertiser
    , cnaStarRating
    , cnaLogo

    -- ** CreativesList
    , CreativesList
    , creativesList
    , clNextPageToken
    , clKind
    , clItems

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

    -- ** DealPartyDto
    , DealPartyDto
    , dealPartyDto
    , dpdBuyerSellerRole
    , dpdCustomerId
    , dpdName
    , dpdWebProperty
    , dpdBuyer

    -- ** DealTerms
    , DealTerms
    , dealTerms
    , dtNonGuaranteedFixedPriceTerms
    , dtNonGuaranteedAuctionTerms
    , dtGuaranteedFixedPriceTerms
    , dtDescription

    -- ** DealTermsGuaranteedFixedPriceTerms
    , DealTermsGuaranteedFixedPriceTerms
    , dealTermsGuaranteedFixedPriceTerms
    , dtgfptGuaranteedLooks
    , dtgfptGuaranteedImpressions
    , dtgfptFixedPrices

    -- ** DealTermsNonGuaranteedAuctionTerms
    , DealTermsNonGuaranteedAuctionTerms
    , dealTermsNonGuaranteedAuctionTerms
    , dtngatReservePricePerBuyers
    , dtngatPrivateAuctionId

    -- ** DealTermsNonGuaranteedFixedPriceTerms
    , DealTermsNonGuaranteedFixedPriceTerms
    , dealTermsNonGuaranteedFixedPriceTerms
    , dtngfptFixedPrices

    -- ** DeleteOrderDealsRequest
    , DeleteOrderDealsRequest
    , deleteOrderDealsRequest
    , dUpdateAction
    , dDealIds
    , dOrderRevisionNumber

    -- ** DeleteOrderDealsResponse
    , DeleteOrderDealsResponse
    , deleteOrderDealsResponse
    , dodrDeals
    , dodrOrderRevisionNumber

    -- ** DeliveryControl
    , DeliveryControl
    , deliveryControl
    , dcFrequencyCaps
    , dcDeliveryRateType

    -- ** DeliveryControlFrequencyCap
    , DeliveryControlFrequencyCap
    , deliveryControlFrequencyCap
    , dcfcMaxImpressions
    , dcfcNumTimeUnits
    , dcfcTimeUnitType

    -- ** EditAllOrderDealsRequest
    , EditAllOrderDealsRequest
    , editAllOrderDealsRequest
    , eaodrUpdateAction
    , eaodrDeals
    , eaodrOrder
    , eaodrOrderRevisionNumber

    -- ** EditAllOrderDealsResponse
    , EditAllOrderDealsResponse
    , editAllOrderDealsResponse
    , eDeals

    -- ** EditHistoryDto
    , EditHistoryDto
    , editHistoryDto
    , ehdLastUpdatedByLoginName
    , ehdCreatedByLoginName
    , ehdLastUpdateTimeStamp
    , ehdCreatedTimeStamp

    -- ** GetFinalizedNegotiationByExternalDealIdRequest
    , GetFinalizedNegotiationByExternalDealIdRequest
    , getFinalizedNegotiationByExternalDealIdRequest
    , gfnbedirIncludePrivateAuctions

    -- ** GetNegotiationByIdRequest
    , GetNegotiationByIdRequest
    , getNegotiationByIdRequest
    , gnbirIncludePrivateAuctions

    -- ** GetNegotiationsRequest
    , GetNegotiationsRequest
    , getNegotiationsRequest
    , gnrSinceTimestampMillis
    , gnrFinalized
    , gnrIncludePrivateAuctions

    -- ** GetNegotiationsResponse
    , GetNegotiationsResponse
    , getNegotiationsResponse
    , gnrKind
    , gnrNegotiations

    -- ** GetOffersResponse
    , GetOffersResponse
    , getOffersResponse
    , gorOffers

    -- ** GetOrderDealsResponse
    , GetOrderDealsResponse
    , getOrderDealsResponse
    , godrDeals

    -- ** GetOrderNotesResponse
    , GetOrderNotesResponse
    , getOrderNotesResponse
    , gonrNotes

    -- ** GetOrdersResponse
    , GetOrdersResponse
    , getOrdersResponse
    , gorOrders

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

    -- ** ListClientAccessCapabilitiesRequest
    , ListClientAccessCapabilitiesRequest
    , listClientAccessCapabilitiesRequest
    , lcacrSponsorAccountId

    -- ** ListClientAccessCapabilitiesResponse
    , ListClientAccessCapabilitiesResponse
    , listClientAccessCapabilitiesResponse
    , lcacrClientAccessPermissions

    -- ** ListOffersRequest
    , ListOffersRequest
    , listOffersRequest
    , lorSinceTimestampMillis

    -- ** ListOffersResponse
    , ListOffersResponse
    , listOffersResponse
    , lorKind
    , lorOffers

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

    -- ** MarketplaceDealParty
    , MarketplaceDealParty
    , marketplaceDealParty
    , mdpSeller
    , mdpBuyer

    -- ** MarketplaceLabel
    , MarketplaceLabel
    , marketplaceLabel
    , mlDeprecatedMarketplaceDealParty
    , mlAccountId
    , mlCreateTimeMs
    , mlLabel

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

    -- ** MoneyDto
    , MoneyDto
    , moneyDto
    , mdCurrencyCode
    , mdMicros

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

    -- ** PretargetingConfigItemDimensions
    , PretargetingConfigItemDimensions
    , pretargetingConfigItemDimensions
    , pcidHeight
    , pcidWidth

    -- ** PretargetingConfigItemExcludedPlacements
    , PretargetingConfigItemExcludedPlacements
    , pretargetingConfigItemExcludedPlacements
    , pciepToken
    , pciepType

    -- ** PretargetingConfigItemPlacements
    , PretargetingConfigItemPlacements
    , pretargetingConfigItemPlacements
    , pcipToken
    , pcipType

    -- ** PretargetingConfigList
    , PretargetingConfigList
    , pretargetingConfigList
    , pclKind
    , pclItems

    -- ** Price
    , Price
    , price
    , pCurrencyCode
    , pAmountMicros

    -- ** PricePerBuyer
    , PricePerBuyer
    , pricePerBuyer
    , ppbPrice
    , ppbBuyer

    -- ** PrivateData
    , PrivateData
    , privateData
    , pdReferencePayload
    , pdReferenceId

    -- ** RuleKeyValuePair
    , RuleKeyValuePair
    , ruleKeyValuePair
    , rkvpKeyName
    , rkvpValue

    -- ** Seller
    , Seller
    , seller
    , sAccountId
    , sSubAccountId

    -- ** SharedTargeting
    , SharedTargeting
    , sharedTargeting
    , stKey
    , stExclusions
    , stInclusions

    -- ** StatsDto
    , StatsDto
    , statsDto
    , sdBids
    , sdSpend
    , sdImpressions
    , sdGoodBids
    , sdRevenue
    , sdRequests

    -- ** TargetingValue
    , TargetingValue
    , targetingValue
    , tvCreativeSizeValue
    , tvStringValue
    , tvLongValue
    , tvDayPartTargetingValue

    -- ** TargetingValueCreativeSize
    , TargetingValueCreativeSize
    , targetingValueCreativeSize
    , tvcsSize
    , tvcsCompanionSizes
    , tvcsCreativeSizeType

    -- ** TargetingValueDayPartTargeting
    , TargetingValueDayPartTargeting
    , targetingValueDayPartTargeting
    , tvdptTimeZoneType
    , tvdptDayParts

    -- ** TargetingValueDayPartTargetingDayPart
    , TargetingValueDayPartTargetingDayPart
    , targetingValueDayPartTargetingDayPart
    , tvdptdpEndHour
    , tvdptdpStartHour
    , tvdptdpStartMinute
    , tvdptdpDayOfWeek
    , tvdptdpEndMinute

    -- ** TargetingValueSize
    , TargetingValueSize
    , targetingValueSize
    , tvsHeight
    , tvsWidth

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
    ) where

import           Network.Google.AdExchangeBuyer.Types

{- $resources
TODO
-}

type AdExchangeBuyer = ()

adExchangeBuyer :: Proxy AdExchangeBuyer
adExchangeBuyer = Proxy




