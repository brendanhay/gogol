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
    -- * REST Resources

    -- ** Ad Exchange Buyer API
      AdExchangeBuyer
    , adExchangeBuyer
    , adExchangeBuyerURL

    -- ** adexchangebuyer.accounts.get
    , module Network.Google.API.AdExchangeBuyer.Accounts.Get

    -- ** adexchangebuyer.accounts.list
    , module Network.Google.API.AdExchangeBuyer.Accounts.List

    -- ** adexchangebuyer.accounts.patch
    , module Network.Google.API.AdExchangeBuyer.Accounts.Patch

    -- ** adexchangebuyer.accounts.update
    , module Network.Google.API.AdExchangeBuyer.Accounts.Update

    -- ** adexchangebuyer.billingInfo.get
    , module Network.Google.API.AdExchangeBuyer.BillingInfo.Get

    -- ** adexchangebuyer.billingInfo.list
    , module Network.Google.API.AdExchangeBuyer.BillingInfo.List

    -- ** adexchangebuyer.budget.get
    , module Network.Google.API.AdExchangeBuyer.Budget.Get

    -- ** adexchangebuyer.budget.patch
    , module Network.Google.API.AdExchangeBuyer.Budget.Patch

    -- ** adexchangebuyer.budget.update
    , module Network.Google.API.AdExchangeBuyer.Budget.Update

    -- ** adexchangebuyer.clientaccess.delete
    , module Network.Google.API.AdExchangeBuyer.Clientaccess.Delete

    -- ** adexchangebuyer.clientaccess.get
    , module Network.Google.API.AdExchangeBuyer.Clientaccess.Get

    -- ** adexchangebuyer.clientaccess.insert
    , module Network.Google.API.AdExchangeBuyer.Clientaccess.Insert

    -- ** adexchangebuyer.clientaccess.list
    , module Network.Google.API.AdExchangeBuyer.Clientaccess.List

    -- ** adexchangebuyer.clientaccess.patch
    , module Network.Google.API.AdExchangeBuyer.Clientaccess.Patch

    -- ** adexchangebuyer.clientaccess.update
    , module Network.Google.API.AdExchangeBuyer.Clientaccess.Update

    -- ** adexchangebuyer.creatives.get
    , module Network.Google.API.AdExchangeBuyer.Creatives.Get

    -- ** adexchangebuyer.creatives.insert
    , module Network.Google.API.AdExchangeBuyer.Creatives.Insert

    -- ** adexchangebuyer.creatives.list
    , module Network.Google.API.AdExchangeBuyer.Creatives.List

    -- ** adexchangebuyer.deals.get
    , module Network.Google.API.AdExchangeBuyer.Deals.Get

    -- ** adexchangebuyer.marketplacedeals.delete
    , module Network.Google.API.AdExchangeBuyer.Marketplacedeals.Delete

    -- ** adexchangebuyer.marketplacedeals.insert
    , module Network.Google.API.AdExchangeBuyer.Marketplacedeals.Insert

    -- ** adexchangebuyer.marketplacedeals.list
    , module Network.Google.API.AdExchangeBuyer.Marketplacedeals.List

    -- ** adexchangebuyer.marketplacedeals.update
    , module Network.Google.API.AdExchangeBuyer.Marketplacedeals.Update

    -- ** adexchangebuyer.marketplacenotes.insert
    , module Network.Google.API.AdExchangeBuyer.Marketplacenotes.Insert

    -- ** adexchangebuyer.marketplacenotes.list
    , module Network.Google.API.AdExchangeBuyer.Marketplacenotes.List

    -- ** adexchangebuyer.marketplaceoffers.get
    , module Network.Google.API.AdExchangeBuyer.Marketplaceoffers.Get

    -- ** adexchangebuyer.marketplaceoffers.search
    , module Network.Google.API.AdExchangeBuyer.Marketplaceoffers.Search

    -- ** adexchangebuyer.marketplaceorders.get
    , module Network.Google.API.AdExchangeBuyer.Marketplaceorders.Get

    -- ** adexchangebuyer.marketplaceorders.insert
    , module Network.Google.API.AdExchangeBuyer.Marketplaceorders.Insert

    -- ** adexchangebuyer.marketplaceorders.patch
    , module Network.Google.API.AdExchangeBuyer.Marketplaceorders.Patch

    -- ** adexchangebuyer.marketplaceorders.search
    , module Network.Google.API.AdExchangeBuyer.Marketplaceorders.Search

    -- ** adexchangebuyer.marketplaceorders.update
    , module Network.Google.API.AdExchangeBuyer.Marketplaceorders.Update

    -- ** adexchangebuyer.negotiationrounds.insert
    , module Network.Google.API.AdExchangeBuyer.Negotiationrounds.Insert

    -- ** adexchangebuyer.negotiations.get
    , module Network.Google.API.AdExchangeBuyer.Negotiations.Get

    -- ** adexchangebuyer.negotiations.insert
    , module Network.Google.API.AdExchangeBuyer.Negotiations.Insert

    -- ** adexchangebuyer.negotiations.list
    , module Network.Google.API.AdExchangeBuyer.Negotiations.List

    -- ** adexchangebuyer.offers.get
    , module Network.Google.API.AdExchangeBuyer.Offers.Get

    -- ** adexchangebuyer.offers.insert
    , module Network.Google.API.AdExchangeBuyer.Offers.Insert

    -- ** adexchangebuyer.offers.list
    , module Network.Google.API.AdExchangeBuyer.Offers.List

    -- ** adexchangebuyer.performanceReport.list
    , module Network.Google.API.AdExchangeBuyer.PerformanceReport.List

    -- ** adexchangebuyer.pretargetingConfig.delete
    , module Network.Google.API.AdExchangeBuyer.PretargetingConfig.Delete

    -- ** adexchangebuyer.pretargetingConfig.get
    , module Network.Google.API.AdExchangeBuyer.PretargetingConfig.Get

    -- ** adexchangebuyer.pretargetingConfig.insert
    , module Network.Google.API.AdExchangeBuyer.PretargetingConfig.Insert

    -- ** adexchangebuyer.pretargetingConfig.list
    , module Network.Google.API.AdExchangeBuyer.PretargetingConfig.List

    -- ** adexchangebuyer.pretargetingConfig.patch
    , module Network.Google.API.AdExchangeBuyer.PretargetingConfig.Patch

    -- ** adexchangebuyer.pretargetingConfig.update
    , module Network.Google.API.AdExchangeBuyer.PretargetingConfig.Update

    -- * Types

    -- ** GetOrderDealsResponse
    , GetOrderDealsResponse
    , getOrderDealsResponse
    , godrDeals

    -- ** TargetingValueCreativeSize
    , TargetingValueCreativeSize
    , targetingValueCreativeSize
    , tvcsSize
    , tvcsCompanionSizes
    , tvcsCreativeSizeType

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

    -- ** ContactInformation
    , ContactInformation
    , contactInformation
    , ciEmail
    , ciName

    -- ** CreativeFilteringReasons
    , CreativeFilteringReasons
    , creativeFilteringReasons
    , cfrReasons
    , cfrDate

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

    -- ** CreativeLogoNativeAd
    , CreativeLogoNativeAd
    , creativeLogoNativeAd
    , clnaHeight
    , clnaUrl
    , clnaWidth

    -- ** AudienceSegment
    , AudienceSegment
    , audienceSegment
    , asNumCookies
    , asName
    , asId
    , asDescription

    -- ** BillingInfoList
    , BillingInfoList
    , billingInfoList
    , bilKind
    , bilItems

    -- ** MarketplaceordersPatch'UpdateAction
    , MarketplaceordersPatch'UpdateAction (..)

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

    -- ** MoneyDto
    , MoneyDto
    , moneyDto
    , mdCurrencyCode
    , mdMicros

    -- ** TargetingValueSize
    , TargetingValueSize
    , targetingValueSize
    , tvsHeight
    , tvsWidth

    -- ** AddOrderNotesResponse
    , AddOrderNotesResponse
    , addOrderNotesResponse
    , aonrNotes

    -- ** GetNegotiationsRequest
    , GetNegotiationsRequest
    , getNegotiationsRequest
    , gnrSinceTimestampMillis
    , gnrFinalized
    , gnrIncludePrivateAuctions

    -- ** CreateOrdersResponse
    , CreateOrdersResponse
    , createOrdersResponse
    , corOrders

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

    -- ** Alt
    , Alt (..)

    -- ** PretargetingConfigItemExcludedPlacements
    , PretargetingConfigItemExcludedPlacements
    , pretargetingConfigItemExcludedPlacements
    , pciepToken
    , pciepType

    -- ** CreativesList
    , CreativesList
    , creativesList
    , clNextPageToken
    , clKind
    , clItems

    -- ** BillingInfo
    , BillingInfo
    , billingInfo
    , biKind
    , biAccountName
    , biAccountId
    , biBillingId

    -- ** CreativeItemReasonsFilteringReasons
    , CreativeItemReasonsFilteringReasons
    , creativeItemReasonsFilteringReasons
    , cirfrFilteringStatus
    , cirfrFilteringCount

    -- ** Price
    , Price
    , price
    , pCurrencyCode
    , pAmountMicros

    -- ** EditAllOrderDealsRequest
    , EditAllOrderDealsRequest
    , editAllOrderDealsRequest
    , eaodrUpdateAction
    , eaodrDeals
    , eaodrOrder
    , eaodrOrderRevisionNumber

    -- ** CreativesList'DealsStatusFilter
    , CreativesList'DealsStatusFilter (..)

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

    -- ** ListClientAccessCapabilitiesRequest
    , ListClientAccessCapabilitiesRequest
    , listClientAccessCapabilitiesRequest
    , lcacrSponsorAccountId

    -- ** TargetingValueDayPartTargeting
    , TargetingValueDayPartTargeting
    , targetingValueDayPartTargeting
    , tvdptTimeZoneType
    , tvdptDayParts

    -- ** CreativeItemServingRestrictions
    , CreativeItemServingRestrictions
    , creativeItemServingRestrictions
    , cisrContexts
    , cisrReason
    , cisrDisapprovalReasons

    -- ** ListOffersRequest
    , ListOffersRequest
    , listOffersRequest
    , lorSinceTimestampMillis

    -- ** MarketplaceordersUpdate'UpdateAction
    , MarketplaceordersUpdate'UpdateAction (..)

    -- ** PretargetingConfigItemPlacements
    , PretargetingConfigItemPlacements
    , pretargetingConfigItemPlacements
    , pcipToken
    , pcipType

    -- ** CreativeItemDisapprovalReasonsItemServingRestrictions
    , CreativeItemDisapprovalReasonsItemServingRestrictions
    , creativeItemDisapprovalReasonsItemServingRestrictions
    , cidrisrReason
    , cidrisrDetails

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

    -- ** ClientAccessCapabilities
    , ClientAccessCapabilities
    , clientAccessCapabilities
    , cacClientAccountId
    , cacCapabilities

    -- ** DeleteOrderDealsResponse
    , DeleteOrderDealsResponse
    , deleteOrderDealsResponse
    , dodrDeals
    , dodrOrderRevisionNumber

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

    -- ** PretargetingConfigList
    , PretargetingConfigList
    , pretargetingConfigList
    , pclKind
    , pclItems

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

    -- ** AccountItemBidderLocation
    , AccountItemBidderLocation
    , accountItemBidderLocation
    , aiblUrl
    , aiblMaximumQps
    , aiblRegion

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

    -- ** CreativeItemContextsItemServingRestrictions
    , CreativeItemContextsItemServingRestrictions
    , creativeItemContextsItemServingRestrictions
    , cicisrPlatform
    , cicisrContextType
    , cicisrAuctionType
    , cicisrGeoCriteriaId

    -- ** PretargetingConfigItemDimensions
    , PretargetingConfigItemDimensions
    , pretargetingConfigItemDimensions
    , pcidHeight
    , pcidWidth

    -- ** AddOrderDealsRequest
    , AddOrderDealsRequest
    , addOrderDealsRequest
    , aodrUpdateAction
    , aodrDeals
    , aodrOrderRevisionNumber

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

    -- ** Buyer
    , Buyer
    , buyer
    , bAccountId

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

    -- ** BrandDto
    , BrandDto
    , brandDto
    , bAdvertiserId
    , bName
    , bId

    -- ** EditAllOrderDealsResponse
    , EditAllOrderDealsResponse
    , editAllOrderDealsResponse
    , eDeals

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

    -- ** GetNegotiationByIdRequest
    , GetNegotiationByIdRequest
    , getNegotiationByIdRequest
    , gnbirIncludePrivateAuctions

    -- ** AdvertiserDto
    , AdvertiserDto
    , advertiserDto
    , adStatus
    , adBrands
    , adName
    , adId

    -- ** ListClientAccessCapabilitiesResponse
    , ListClientAccessCapabilitiesResponse
    , listClientAccessCapabilitiesResponse
    , lcacrClientAccessPermissions

    -- ** ListOffersResponse
    , ListOffersResponse
    , listOffersResponse
    , lorKind
    , lorOffers

    -- ** TargetingValue
    , TargetingValue
    , targetingValue
    , tvCreativeSizeValue
    , tvStringValue
    , tvLongValue
    , tvDayPartTargetingValue

    -- ** GetFinalizedNegotiationByExternalDealIdRequest
    , GetFinalizedNegotiationByExternalDealIdRequest
    , getFinalizedNegotiationByExternalDealIdRequest
    , gfnbedirIncludePrivateAuctions

    -- ** GetNegotiationsResponse
    , GetNegotiationsResponse
    , getNegotiationsResponse
    , gnrKind
    , gnrNegotiations

    -- ** CreativesList'OpenAuctionStatusFilter
    , CreativesList'OpenAuctionStatusFilter (..)

    -- ** PrivateData
    , PrivateData
    , privateData
    , pdReferencePayload
    , pdReferenceId

    -- ** DeliveryControlFrequencyCap
    , DeliveryControlFrequencyCap
    , deliveryControlFrequencyCap
    , dcfcMaxImpressions
    , dcfcNumTimeUnits
    , dcfcTimeUnitType

    -- ** Budget
    , Budget
    , budget
    , budCurrencyCode
    , budKind
    , budBudgetAmount
    , budAccountId
    , budId
    , budBillingId

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

    -- ** AddOrderNotesRequest
    , AddOrderNotesRequest
    , addOrderNotesRequest
    , aNotes

    -- ** CreativeItemCorrections
    , CreativeItemCorrections
    , creativeItemCorrections
    , cicReason
    , cicDetails

    -- ** CreateOrdersRequest
    , CreateOrdersRequest
    , createOrdersRequest
    , cWebPropertyCode
    , cOrders

    -- ** AccountsList
    , AccountsList
    , accountsList
    , alKind
    , alItems

    -- ** GetOrdersResponse
    , GetOrdersResponse
    , getOrdersResponse
    , gorOrders

    -- ** RuleKeyValuePair
    , RuleKeyValuePair
    , ruleKeyValuePair
    , rkvpKeyName
    , rkvpValue

    -- ** AdSize
    , AdSize
    , adSize
    , asHeight
    , asWidth

    -- ** GetOrderNotesResponse
    , GetOrderNotesResponse
    , getOrderNotesResponse
    , gonrNotes

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

    -- ** PricePerBuyer
    , PricePerBuyer
    , pricePerBuyer
    , ppbPrice
    , ppbBuyer

    -- ** AddOrderDealsResponse
    , AddOrderDealsResponse
    , addOrderDealsResponse
    , aDeals
    , aOrderRevisionNumber

    -- ** DeliveryControl
    , DeliveryControl
    , deliveryControl
    , dcFrequencyCaps
    , dcDeliveryRateType

    -- ** CreativeImageNativeAd
    , CreativeImageNativeAd
    , creativeImageNativeAd
    , cinaHeight
    , cinaUrl
    , cinaWidth

    -- ** TargetingValueDayPartTargetingDayPart
    , TargetingValueDayPartTargetingDayPart
    , targetingValueDayPartTargetingDayPart
    , tvdptdpEndHour
    , tvdptdpStartHour
    , tvdptdpStartMinute
    , tvdptdpDayOfWeek
    , tvdptdpEndMinute

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

    -- ** DealTermsNonGuaranteedAuctionTerms
    , DealTermsNonGuaranteedAuctionTerms
    , dealTermsNonGuaranteedAuctionTerms
    , dtngatReservePricePerBuyers
    , dtngatPrivateAuctionId

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

    -- ** CreativeAppIconNativeAd
    , CreativeAppIconNativeAd
    , creativeAppIconNativeAd
    , cainaHeight
    , cainaUrl
    , cainaWidth

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
    , dUpdateAction
    , dDealIds
    , dOrderRevisionNumber
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.API.AdExchangeBuyer.Accounts.Get
import           Network.Google.API.AdExchangeBuyer.Accounts.List
import           Network.Google.API.AdExchangeBuyer.Accounts.Patch
import           Network.Google.API.AdExchangeBuyer.Accounts.Update
import           Network.Google.API.AdExchangeBuyer.BillingInfo.Get
import           Network.Google.API.AdExchangeBuyer.BillingInfo.List
import           Network.Google.API.AdExchangeBuyer.Budget.Get
import           Network.Google.API.AdExchangeBuyer.Budget.Patch
import           Network.Google.API.AdExchangeBuyer.Budget.Update
import           Network.Google.API.AdExchangeBuyer.Clientaccess.Delete
import           Network.Google.API.AdExchangeBuyer.Clientaccess.Get
import           Network.Google.API.AdExchangeBuyer.Clientaccess.Insert
import           Network.Google.API.AdExchangeBuyer.Clientaccess.List
import           Network.Google.API.AdExchangeBuyer.Clientaccess.Patch
import           Network.Google.API.AdExchangeBuyer.Clientaccess.Update
import           Network.Google.API.AdExchangeBuyer.Creatives.Get
import           Network.Google.API.AdExchangeBuyer.Creatives.Insert
import           Network.Google.API.AdExchangeBuyer.Creatives.List
import           Network.Google.API.AdExchangeBuyer.Deals.Get
import           Network.Google.API.AdExchangeBuyer.Marketplacedeals.Delete
import           Network.Google.API.AdExchangeBuyer.Marketplacedeals.Insert
import           Network.Google.API.AdExchangeBuyer.Marketplacedeals.List
import           Network.Google.API.AdExchangeBuyer.Marketplacedeals.Update
import           Network.Google.API.AdExchangeBuyer.Marketplacenotes.Insert
import           Network.Google.API.AdExchangeBuyer.Marketplacenotes.List
import           Network.Google.API.AdExchangeBuyer.Marketplaceoffers.Get
import           Network.Google.API.AdExchangeBuyer.Marketplaceoffers.Search
import           Network.Google.API.AdExchangeBuyer.Marketplaceorders.Get
import           Network.Google.API.AdExchangeBuyer.Marketplaceorders.Insert
import           Network.Google.API.AdExchangeBuyer.Marketplaceorders.Patch
import           Network.Google.API.AdExchangeBuyer.Marketplaceorders.Search
import           Network.Google.API.AdExchangeBuyer.Marketplaceorders.Update
import           Network.Google.API.AdExchangeBuyer.Negotiationrounds.Insert
import           Network.Google.API.AdExchangeBuyer.Negotiations.Get
import           Network.Google.API.AdExchangeBuyer.Negotiations.Insert
import           Network.Google.API.AdExchangeBuyer.Negotiations.List
import           Network.Google.API.AdExchangeBuyer.Offers.Get
import           Network.Google.API.AdExchangeBuyer.Offers.Insert
import           Network.Google.API.AdExchangeBuyer.Offers.List
import           Network.Google.API.AdExchangeBuyer.PerformanceReport.List
import           Network.Google.API.AdExchangeBuyer.PretargetingConfig.Delete
import           Network.Google.API.AdExchangeBuyer.PretargetingConfig.Get
import           Network.Google.API.AdExchangeBuyer.PretargetingConfig.Insert
import           Network.Google.API.AdExchangeBuyer.PretargetingConfig.List
import           Network.Google.API.AdExchangeBuyer.PretargetingConfig.Patch
import           Network.Google.API.AdExchangeBuyer.PretargetingConfig.Update
import           Network.Google.Prelude

{- $resources
TODO
-}

type AdExchangeBuyer =
     PerformanceReportListAPI :<|> AccountsListAPI :<|>
       ClientaccessUpdateAPI
       :<|> BudgetPatchAPI
       :<|> PretargetingConfigDeleteAPI
       :<|> AccountsUpdateAPI
       :<|> CreativesListAPI
       :<|> CreativesGetAPI
       :<|> MarketplacedealsListAPI
       :<|> OffersListAPI
       :<|> NegotiationsInsertAPI
       :<|> MarketplaceoffersSearchAPI
       :<|> ClientaccessPatchAPI
       :<|> NegotiationroundsInsertAPI
       :<|> BillingInfoGetAPI
       :<|> BudgetGetAPI
       :<|> MarketplaceordersUpdateAPI
       :<|> MarketplaceordersInsertAPI
       :<|> PretargetingConfigInsertAPI
       :<|> PretargetingConfigUpdateAPI
       :<|> MarketplacedealsDeleteAPI
       :<|> MarketplacenotesInsertAPI
       :<|> PretargetingConfigGetAPI
       :<|> PretargetingConfigListAPI
       :<|> MarketplaceordersGetAPI
       :<|> OffersInsertAPI
       :<|> ClientaccessGetAPI
       :<|> BillingInfoListAPI
       :<|> AccountsGetAPI
       :<|> BudgetUpdateAPI
       :<|> ClientaccessInsertAPI
       :<|> MarketplaceordersPatchAPI
       :<|> MarketplaceoffersGetAPI
       :<|> MarketplacenotesListAPI
       :<|> PretargetingConfigPatchAPI
       :<|> OffersGetAPI
       :<|> ClientaccessListAPI
       :<|> DealsGetAPI
       :<|> NegotiationsGetAPI
       :<|> NegotiationsListAPI
       :<|> MarketplaceordersSearchAPI
       :<|> AccountsPatchAPI
       :<|> ClientaccessDeleteAPI
       :<|> MarketplacedealsUpdateAPI
       :<|> CreativesInsertAPI
       :<|> MarketplacedealsInsertAPI

adExchangeBuyer :: Proxy AdExchangeBuyer
adExchangeBuyer = Proxy
