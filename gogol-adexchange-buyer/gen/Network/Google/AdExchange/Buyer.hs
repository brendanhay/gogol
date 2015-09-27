{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AdExchange.Buyer
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
module Network.Google.AdExchange.Buyer
    (
    -- * Resources
      AdExchangeBuyer
    , MarketplacenotesAPI
    , MarketplacenotesInsert
    , MarketplacenotesList
    , DealsAPI
    , DealsGet
    , NegotiationroundsAPI
    , NegotiationroundsInsert
    , AccountsAPI
    , AccountsList
    , AccountsPatch
    , AccountsGet
    , AccountsUpdate
    , BudgetAPI
    , BudgetPatch
    , BudgetGet
    , BudgetUpdate
    , CreativesAPI
    , CreativesInsert
    , CreativesList
    , CreativesGet
    , PerformanceReportAPI
    , PerformanceReportList
    , MarketplaceoffersAPI
    , MarketplaceoffersGet
    , MarketplaceoffersSearch
    , PretargetingConfigAPI
    , PretargetingConfigInsert
    , PretargetingConfigList
    , PretargetingConfigPatch
    , PretargetingConfigGet
    , PretargetingConfigDelete
    , PretargetingConfigUpdate
    , MarketplaceordersAPI
    , MarketplaceordersInsert
    , MarketplaceordersPatch
    , MarketplaceordersGet
    , MarketplaceordersSearch
    , MarketplaceordersUpdate
    , ClientaccessAPI
    , ClientaccessInsert
    , ClientaccessList
    , ClientaccessPatch
    , ClientaccessGet
    , ClientaccessDelete
    , ClientaccessUpdate
    , BillingInfoAPI
    , BillingInfoList
    , BillingInfoGet
    , MarketplacedealsAPI
    , MarketplacedealsInsert
    , MarketplacedealsList
    , MarketplacedealsDelete
    , MarketplacedealsUpdate
    , NegotiationsAPI
    , NegotiationsInsert
    , NegotiationsList
    , NegotiationsGet
    , OffersAPI
    , OffersInsert
    , OffersList
    , OffersGet

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

import           Network.Google.AdExchange.Buyer.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type AdExchangeBuyer =
     MarketplacenotesAPI :<|> DealsAPI :<|>
       NegotiationroundsAPI
       :<|> AccountsAPI
       :<|> BudgetAPI
       :<|> CreativesAPI
       :<|> PerformanceReportAPI
       :<|> MarketplaceoffersAPI
       :<|> PretargetingConfigAPI
       :<|> MarketplaceordersAPI
       :<|> ClientaccessAPI
       :<|> BillingInfoAPI
       :<|> MarketplacedealsAPI
       :<|> NegotiationsAPI
       :<|> OffersAPI

type MarketplacenotesAPI =
     MarketplacenotesInsert :<|> MarketplacenotesList

-- | Add notes to the order
type MarketplacenotesInsert =
     "adexchangebuyer" :>
       "v1.4" :>
         "marketplaceOrders" :>
           Capture "orderId" Text :>
             "notes" :>
               "insert" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :>
                               Post '[JSON] AddOrderNotesResponse

-- | Get all the notes associated with an order
type MarketplacenotesList =
     "adexchangebuyer" :>
       "v1.4" :>
         "marketplaceOrders" :>
           Capture "orderId" Text :>
             "notes" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :>
                             Get '[JSON] GetOrderNotesResponse

type DealsAPI = DealsGet

-- | Gets the requested deal.
type DealsGet =
     "adexchangebuyer" :>
       "v1.4" :>
         "deals" :>
           Capture "dealId" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Text :> Get '[JSON] NegotiationDto

type NegotiationroundsAPI = NegotiationroundsInsert

-- | Adds the requested negotiationRound to the requested negotiation.
type NegotiationroundsInsert =
     "adexchangebuyer" :>
       "v1.4" :>
         "negotiations" :>
           Capture "negotiationId" Int64 :>
             "negotiationrounds" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :>
                             Post '[JSON] NegotiationRoundDto

type AccountsAPI =
     AccountsList :<|> AccountsPatch :<|> AccountsGet :<|>
       AccountsUpdate

-- | Retrieves the authenticated user\'s list of accounts.
type AccountsList =
     "adexchangebuyer" :>
       "v1.4" :>
         "accounts" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Text :> Get '[JSON] AccountsList

-- | Updates an existing account. This method supports patch semantics.
type AccountsPatch =
     "adexchangebuyer" :>
       "v1.4" :>
         "accounts" :>
           Capture "id" Int32 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Text :> Patch '[JSON] Account

-- | Gets one account by ID.
type AccountsGet =
     "adexchangebuyer" :>
       "v1.4" :>
         "accounts" :>
           Capture "id" Int32 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Text :> Get '[JSON] Account

-- | Updates an existing account.
type AccountsUpdate =
     "adexchangebuyer" :>
       "v1.4" :>
         "accounts" :>
           Capture "id" Int32 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Text :> Put '[JSON] Account

type BudgetAPI =
     BudgetPatch :<|> BudgetGet :<|> BudgetUpdate

-- | Updates the budget amount for the budget of the adgroup specified by the
-- accountId and billingId, with the budget amount in the request. This
-- method supports patch semantics.
type BudgetPatch =
     "adexchangebuyer" :>
       "v1.4" :>
         "billinginfo" :>
           Capture "accountId" Int64 :>
             Capture "billingId" Int64 :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :> Patch '[JSON] Budget

-- | Returns the budget information for the adgroup specified by the
-- accountId and billingId.
type BudgetGet =
     "adexchangebuyer" :>
       "v1.4" :>
         "billinginfo" :>
           Capture "accountId" Int64 :>
             Capture "billingId" Int64 :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :> Get '[JSON] Budget

-- | Updates the budget amount for the budget of the adgroup specified by the
-- accountId and billingId, with the budget amount in the request.
type BudgetUpdate =
     "adexchangebuyer" :>
       "v1.4" :>
         "billinginfo" :>
           Capture "accountId" Int64 :>
             Capture "billingId" Int64 :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :> Put '[JSON] Budget

type CreativesAPI =
     CreativesInsert :<|> CreativesList :<|> CreativesGet

-- | Submit a new creative.
type CreativesInsert =
     "adexchangebuyer" :>
       "v1.4" :>
         "creatives" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Text :> Post '[JSON] Creative

-- | Retrieves a list of the authenticated user\'s active creatives. A
-- creative will be available 30-40 minutes after submission.
type CreativesList =
     "adexchangebuyer" :>
       "v1.4" :>
         "creatives" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "buyerCreativeId" Text :>
                 QueryParam "userIp" Text :>
                   QueryParam "openAuctionStatusFilter" Text :>
                     QueryParam "accountId" Int32 :>
                       QueryParam "key" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "dealsStatusFilter" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Natural :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] CreativesList

-- | Gets the status for a single creative. A creative will be available
-- 30-40 minutes after submission.
type CreativesGet =
     "adexchangebuyer" :>
       "v1.4" :>
         "creatives" :>
           Capture "accountId" Int32 :>
             Capture "buyerCreativeId" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :> Get '[JSON] Creative

type PerformanceReportAPI = PerformanceReportList

-- | Retrieves the authenticated user\'s list of performance metrics.
type PerformanceReportList =
     "adexchangebuyer" :>
       "v1.4" :>
         "performancereport" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "accountId" Int64 :>
                   QueryParam "key" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "endDateTime" Text :>
                           QueryParam "maxResults" Natural :>
                             QueryParam "startDateTime" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :>
                                   Get '[JSON] PerformanceReportList

type MarketplaceoffersAPI =
     MarketplaceoffersGet :<|> MarketplaceoffersSearch

-- | Gets the requested negotiation.
type MarketplaceoffersGet =
     "adexchangebuyer" :>
       "v1.4" :>
         "marketplaceOffers" :>
           Capture "offerId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Text :> Get '[JSON] MarketplaceOffer

-- | Gets the requested negotiation.
type MarketplaceoffersSearch =
     "adexchangebuyer" :>
       "v1.4" :>
         "marketplaceOffers" :>
           "search" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "pqlQuery" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :>
                             Get '[JSON] GetOffersResponse

type PretargetingConfigAPI =
     PretargetingConfigInsert :<|> PretargetingConfigList
       :<|> PretargetingConfigPatch
       :<|> PretargetingConfigGet
       :<|> PretargetingConfigDelete
       :<|> PretargetingConfigUpdate

-- | Inserts a new pretargeting configuration.
type PretargetingConfigInsert =
     "adexchangebuyer" :>
       "v1.4" :>
         "pretargetingconfigs" :>
           Capture "accountId" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Text :>
                           Post '[JSON] PretargetingConfig

-- | Retrieves a list of the authenticated user\'s pretargeting
-- configurations.
type PretargetingConfigList =
     "adexchangebuyer" :>
       "v1.4" :>
         "pretargetingconfigs" :>
           Capture "accountId" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Text :>
                           Get '[JSON] PretargetingConfigList

-- | Updates an existing pretargeting config. This method supports patch
-- semantics.
type PretargetingConfigPatch =
     "adexchangebuyer" :>
       "v1.4" :>
         "pretargetingconfigs" :>
           Capture "accountId" Int64 :>
             Capture "configId" Int64 :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :>
                             Patch '[JSON] PretargetingConfig

-- | Gets a specific pretargeting configuration
type PretargetingConfigGet =
     "adexchangebuyer" :>
       "v1.4" :>
         "pretargetingconfigs" :>
           Capture "accountId" Int64 :>
             Capture "configId" Int64 :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :>
                             Get '[JSON] PretargetingConfig

-- | Deletes an existing pretargeting config.
type PretargetingConfigDelete =
     "adexchangebuyer" :>
       "v1.4" :>
         "pretargetingconfigs" :>
           Capture "accountId" Int64 :>
             Capture "configId" Int64 :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :> Delete '[JSON] ()

-- | Updates an existing pretargeting config.
type PretargetingConfigUpdate =
     "adexchangebuyer" :>
       "v1.4" :>
         "pretargetingconfigs" :>
           Capture "accountId" Int64 :>
             Capture "configId" Int64 :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :>
                             Put '[JSON] PretargetingConfig

type MarketplaceordersAPI =
     MarketplaceordersInsert :<|> MarketplaceordersPatch
       :<|> MarketplaceordersGet
       :<|> MarketplaceordersSearch
       :<|> MarketplaceordersUpdate

-- | Create the given list of orders
type MarketplaceordersInsert =
     "adexchangebuyer" :>
       "v1.4" :>
         "marketplaceOrders" :>
           "insert" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Text :>
                           Post '[JSON] CreateOrdersResponse

-- | Update the given order. This method supports patch semantics.
type MarketplaceordersPatch =
     "adexchangebuyer" :>
       "v1.4" :>
         "marketplaceOrders" :>
           Capture "orderId" Text :>
             Capture "revisionNumber" Int64 :>
               Capture "updateAction" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :>
                               Patch '[JSON] MarketplaceOrder

-- | Get an order given its id
type MarketplaceordersGet =
     "adexchangebuyer" :>
       "v1.4" :>
         "marketplaceOrders" :>
           Capture "orderId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Text :> Get '[JSON] MarketplaceOrder

-- | Search for orders using pql query
type MarketplaceordersSearch =
     "adexchangebuyer" :>
       "v1.4" :>
         "marketplaceOrders" :>
           "search" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "pqlQuery" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :>
                             Get '[JSON] GetOrdersResponse

-- | Update the given order
type MarketplaceordersUpdate =
     "adexchangebuyer" :>
       "v1.4" :>
         "marketplaceOrders" :>
           Capture "orderId" Text :>
             Capture "revisionNumber" Int64 :>
               Capture "updateAction" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :>
                               Put '[JSON] MarketplaceOrder

type ClientaccessAPI =
     ClientaccessInsert :<|> ClientaccessList :<|>
       ClientaccessPatch
       :<|> ClientaccessGet
       :<|> ClientaccessDelete
       :<|> ClientaccessUpdate

type ClientaccessInsert =
     "adexchangebuyer" :>
       "v1.4" :>
         "clientAccess" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "sponsorAccountId" Int32 :>
                   QueryParam "key" Text :>
                     QueryParam "clientAccountId" Int64 :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :>
                             Post '[JSON] ClientAccessCapabilities

type ClientaccessList =
     "adexchangebuyer" :>
       "v1.4" :>
         "clientAccess" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Text :>
                         Get '[JSON] ListClientAccessCapabilitiesResponse

type ClientaccessPatch =
     "adexchangebuyer" :>
       "v1.4" :>
         "clientAccess" :>
           Capture "clientAccountId" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "sponsorAccountId" Int32 :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :>
                             Patch '[JSON] ClientAccessCapabilities

type ClientaccessGet =
     "adexchangebuyer" :>
       "v1.4" :>
         "clientAccess" :>
           Capture "clientAccountId" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "sponsorAccountId" Int32 :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :>
                             Get '[JSON] ClientAccessCapabilities

type ClientaccessDelete =
     "adexchangebuyer" :>
       "v1.4" :>
         "clientAccess" :>
           Capture "clientAccountId" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "sponsorAccountId" Int32 :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :> Delete '[JSON] ()

type ClientaccessUpdate =
     "adexchangebuyer" :>
       "v1.4" :>
         "clientAccess" :>
           Capture "clientAccountId" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "sponsorAccountId" Int32 :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :>
                             Put '[JSON] ClientAccessCapabilities

type BillingInfoAPI =
     BillingInfoList :<|> BillingInfoGet

-- | Retrieves a list of billing information for all accounts of the
-- authenticated user.
type BillingInfoList =
     "adexchangebuyer" :>
       "v1.4" :>
         "billinginfo" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Text :> Get '[JSON] BillingInfoList

-- | Returns the billing information for one account specified by account ID.
type BillingInfoGet =
     "adexchangebuyer" :>
       "v1.4" :>
         "billinginfo" :>
           Capture "accountId" Int32 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Text :> Get '[JSON] BillingInfo

type MarketplacedealsAPI =
     MarketplacedealsInsert :<|> MarketplacedealsList :<|>
       MarketplacedealsDelete
       :<|> MarketplacedealsUpdate

-- | Add new deals for the specified order
type MarketplacedealsInsert =
     "adexchangebuyer" :>
       "v1.4" :>
         "marketplaceOrders" :>
           Capture "orderId" Text :>
             "deals" :>
               "insert" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :>
                               Post '[JSON] AddOrderDealsResponse

-- | List all the deals for a given order
type MarketplacedealsList =
     "adexchangebuyer" :>
       "v1.4" :>
         "marketplaceOrders" :>
           Capture "orderId" Text :>
             "deals" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :>
                             Get '[JSON] GetOrderDealsResponse

-- | Delete the specified deals from the order
type MarketplacedealsDelete =
     "adexchangebuyer" :>
       "v1.4" :>
         "marketplaceOrders" :>
           Capture "orderId" Text :>
             "deals" :>
               "delete" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :>
                               Post '[JSON] DeleteOrderDealsResponse

-- | Replaces all the deals in the order with the passed in deals
type MarketplacedealsUpdate =
     "adexchangebuyer" :>
       "v1.4" :>
         "marketplaceOrders" :>
           Capture "orderId" Text :>
             "deals" :>
               "update" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :>
                               Post '[JSON] EditAllOrderDealsResponse

type NegotiationsAPI =
     NegotiationsInsert :<|> NegotiationsList :<|>
       NegotiationsGet

-- | Creates or updates the requested negotiation.
type NegotiationsInsert =
     "adexchangebuyer" :>
       "v1.4" :>
         "negotiations" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Text :> Post '[JSON] NegotiationDto

-- | Lists all negotiations the authenticated user has access to.
type NegotiationsList =
     "adexchangebuyer" :>
       "v1.4" :>
         "negotiations" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Text :>
                         Get '[JSON] GetNegotiationsResponse

-- | Gets the requested negotiation.
type NegotiationsGet =
     "adexchangebuyer" :>
       "v1.4" :>
         "negotiations" :>
           Capture "negotiationId" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Text :> Get '[JSON] NegotiationDto

type OffersAPI =
     OffersInsert :<|> OffersList :<|> OffersGet

-- | Creates or updates the requested offer.
type OffersInsert =
     "adexchangebuyer" :>
       "v1.4" :>
         "offers" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Text :> Post '[JSON] OfferDto

-- | Lists all offers the authenticated user has access to.
type OffersList =
     "adexchangebuyer" :>
       "v1.4" :>
         "offers" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Text :>
                         Get '[JSON] ListOffersResponse

-- | Gets the requested offer.
type OffersGet =
     "adexchangebuyer" :>
       "v1.4" :>
         "offers" :>
           Capture "offerId" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Text :> Get '[JSON] OfferDto
