{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
    -- * Service URL
      adExchangeBuyerURL

    -- * GetOrderDealsResponse
    , GetOrderDealsResponse
    , getOrderDealsResponse
    , godrDeals

    -- * TargetingValueCreativeSize
    , TargetingValueCreativeSize
    , targetingValueCreativeSize
    , tvcsSize
    , tvcsCompanionSizes
    , tvcsCreativeSizeType

    -- * NegotiationDto
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

    -- * ContactInformation
    , ContactInformation
    , contactInformation
    , ciEmail
    , ciName

    -- * CreativeFilteringReasons
    , CreativeFilteringReasons
    , creativeFilteringReasons
    , cfrReasons
    , cfrDate

    -- * MarketplaceOffer
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

    -- * CreativeLogoNativeAd
    , CreativeLogoNativeAd
    , creativeLogoNativeAd
    , clnaHeight
    , clnaUrl
    , clnaWidth

    -- * AudienceSegment
    , AudienceSegment
    , audienceSegment
    , asNumCookies
    , asName
    , asId
    , asDescription

    -- * BillingInfoList
    , BillingInfoList
    , billingInfoList
    , bilKind
    , bilItems

    -- * MarketplaceordersPatch'UpdateAction
    , MarketplaceordersPatch'UpdateAction (..)

    -- * OfferDto
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

    -- * MoneyDto
    , MoneyDto
    , moneyDto
    , mdCurrencyCode
    , mdMicros

    -- * TargetingValueSize
    , TargetingValueSize
    , targetingValueSize
    , tvsHeight
    , tvsWidth

    -- * AddOrderNotesResponse
    , AddOrderNotesResponse
    , addOrderNotesResponse
    , aonrNotes

    -- * GetNegotiationsRequest
    , GetNegotiationsRequest
    , getNegotiationsRequest
    , gnrSinceTimestampMillis
    , gnrFinalized
    , gnrIncludePrivateAuctions

    -- * CreateOrdersResponse
    , CreateOrdersResponse
    , createOrdersResponse
    , corOrders

    -- * TermsDto
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

    -- * Alt
    , Alt (..)

    -- * PretargetingConfigItemExcludedPlacements
    , PretargetingConfigItemExcludedPlacements
    , pretargetingConfigItemExcludedPlacements
    , pciepToken
    , pciepType

    -- * CreativesList
    , CreativesList
    , creativesList
    , clNextPageToken
    , clKind
    , clItems

    -- * BillingInfo
    , BillingInfo
    , billingInfo
    , biKind
    , biAccountName
    , biAccountId
    , biBillingId

    -- * CreativeItemReasonsFilteringReasons
    , CreativeItemReasonsFilteringReasons
    , creativeItemReasonsFilteringReasons
    , cirfrFilteringStatus
    , cirfrFilteringCount

    -- * Price
    , Price
    , price
    , pCurrencyCode
    , pAmountMicros

    -- * EditAllOrderDealsRequest
    , EditAllOrderDealsRequest
    , editAllOrderDealsRequest
    , eaodrUpdateAction
    , eaodrDeals
    , eaodrOrder
    , eaodrOrderRevisionNumber

    -- * CreativesList'DealsStatusFilter
    , CreativesList'DealsStatusFilter (..)

    -- * InventorySegmentTargeting
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

    -- * SharedTargeting
    , SharedTargeting
    , sharedTargeting
    , stKey
    , stExclusions
    , stInclusions

    -- * WebPropertyDto
    , WebPropertyDto
    , webPropertyDto
    , wpdEnabledForPreferredDeals
    , wpdSyndicationProduct
    , wpdName
    , wpdPropertyCode
    , wpdId
    , wpdSiteUrls
    , wpdAllowInterestTargetedAds

    -- * ListClientAccessCapabilitiesRequest
    , ListClientAccessCapabilitiesRequest
    , listClientAccessCapabilitiesRequest
    , lcacrSponsorAccountId

    -- * TargetingValueDayPartTargeting
    , TargetingValueDayPartTargeting
    , targetingValueDayPartTargeting
    , tvdptTimeZoneType
    , tvdptDayParts

    -- * CreativeItemServingRestrictions
    , CreativeItemServingRestrictions
    , creativeItemServingRestrictions
    , cisrContexts
    , cisrReason
    , cisrDisapprovalReasons

    -- * ListOffersRequest
    , ListOffersRequest
    , listOffersRequest
    , lorSinceTimestampMillis

    -- * MarketplaceordersUpdate'UpdateAction
    , MarketplaceordersUpdate'UpdateAction (..)

    -- * PretargetingConfigItemPlacements
    , PretargetingConfigItemPlacements
    , pretargetingConfigItemPlacements
    , pcipToken
    , pcipType

    -- * CreativeItemDisapprovalReasonsItemServingRestrictions
    , CreativeItemDisapprovalReasonsItemServingRestrictions
    , creativeItemDisapprovalReasonsItemServingRestrictions
    , cidrisrReason
    , cidrisrDetails

    -- * MarketplaceDeal
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

    -- * ClientAccessCapabilities
    , ClientAccessCapabilities
    , clientAccessCapabilities
    , cacClientAccountId
    , cacCapabilities

    -- * DeleteOrderDealsResponse
    , DeleteOrderDealsResponse
    , deleteOrderDealsResponse
    , dodrDeals
    , dodrOrderRevisionNumber

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

    -- * BuyerDto
    , BuyerDto
    , buyerDto
    , bdSponsorAccountId
    , bdEnabledForInterestTargetingDeals
    , bdCustomerId
    , bdEnabledForPreferredDeals
    , bdAccountId
    , bdDisplayName
    , bdId

    -- * PretargetingConfigList
    , PretargetingConfigList
    , pretargetingConfigList
    , pclKind
    , pclItems

    -- * DealTermsNonGuaranteedFixedPriceTerms
    , DealTermsNonGuaranteedFixedPriceTerms
    , dealTermsNonGuaranteedFixedPriceTerms
    , dtngfptFixedPrices

    -- * AdSlotDto
    , AdSlotDto
    , adSlotDto
    , asdWebPropertyId
    , asdSize
    , asdChannelCode
    , asdChannelId
    , asdName
    , asdDescription

    -- * AccountItemBidderLocation
    , AccountItemBidderLocation
    , accountItemBidderLocation
    , aiblUrl
    , aiblMaximumQps
    , aiblRegion

    -- * MarketplaceOrder
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

    -- * MarketplaceLabel
    , MarketplaceLabel
    , marketplaceLabel
    , mlDeprecatedMarketplaceDealParty
    , mlAccountId
    , mlCreateTimeMs
    , mlLabel

    -- * DateTime
    , DateTime
    , dateTime
    , dtSecond
    , dtDay
    , dtYear
    , dtHour
    , dtMonth
    , dtMinute
    , dtTimeZoneId

    -- * DealTermsGuaranteedFixedPriceTerms
    , DealTermsGuaranteedFixedPriceTerms
    , dealTermsGuaranteedFixedPriceTerms
    , dtgfptGuaranteedLooks
    , dtgfptGuaranteedImpressions
    , dtgfptFixedPrices

    -- * CreativeItemContextsItemServingRestrictions
    , CreativeItemContextsItemServingRestrictions
    , creativeItemContextsItemServingRestrictions
    , cicisrPlatform
    , cicisrContextType
    , cicisrAuctionType
    , cicisrGeoCriteriaId

    -- * PretargetingConfigItemDimensions
    , PretargetingConfigItemDimensions
    , pretargetingConfigItemDimensions
    , pcidHeight
    , pcidWidth

    -- * AddOrderDealsRequest
    , AddOrderDealsRequest
    , addOrderDealsRequest
    , aodrUpdateAction
    , aodrDeals
    , aodrOrderRevisionNumber

    -- * DealTerms
    , DealTerms
    , dealTerms
    , dtNonGuaranteedFixedPriceTerms
    , dtNonGuaranteedAuctionTerms
    , dtGuaranteedFixedPriceTerms
    , dtDescription

    -- * EditHistoryDto
    , EditHistoryDto
    , editHistoryDto
    , ehdLastUpdatedByLoginName
    , ehdCreatedByLoginName
    , ehdLastUpdateTimeStamp
    , ehdCreatedTimeStamp

    -- * Buyer
    , Buyer
    , buyer
    , bAccountId

    -- * CreativeNativeAd
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

    -- * BrandDto
    , BrandDto
    , brandDto
    , bAdvertiserId
    , bName
    , bId

    -- * EditAllOrderDealsResponse
    , EditAllOrderDealsResponse
    , editAllOrderDealsResponse
    , eDeals

    -- * MarketplaceNote
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

    -- * GetNegotiationByIdRequest
    , GetNegotiationByIdRequest
    , getNegotiationByIdRequest
    , gnbirIncludePrivateAuctions

    -- * AdvertiserDto
    , AdvertiserDto
    , advertiserDto
    , adStatus
    , adBrands
    , adName
    , adId

    -- * ListClientAccessCapabilitiesResponse
    , ListClientAccessCapabilitiesResponse
    , listClientAccessCapabilitiesResponse
    , lcacrClientAccessPermissions

    -- * ListOffersResponse
    , ListOffersResponse
    , listOffersResponse
    , lorKind
    , lorOffers

    -- * TargetingValue
    , TargetingValue
    , targetingValue
    , tvCreativeSizeValue
    , tvStringValue
    , tvLongValue
    , tvDayPartTargetingValue

    -- * GetFinalizedNegotiationByExternalDealIdRequest
    , GetFinalizedNegotiationByExternalDealIdRequest
    , getFinalizedNegotiationByExternalDealIdRequest
    , gfnbedirIncludePrivateAuctions

    -- * GetNegotiationsResponse
    , GetNegotiationsResponse
    , getNegotiationsResponse
    , gnrKind
    , gnrNegotiations

    -- * CreativesList'OpenAuctionStatusFilter
    , CreativesList'OpenAuctionStatusFilter (..)

    -- * PrivateData
    , PrivateData
    , privateData
    , pdReferencePayload
    , pdReferenceId

    -- * DeliveryControlFrequencyCap
    , DeliveryControlFrequencyCap
    , deliveryControlFrequencyCap
    , dcfcMaxImpressions
    , dcfcNumTimeUnits
    , dcfcTimeUnitType

    -- * Budget
    , Budget
    , budget
    , budCurrencyCode
    , budKind
    , budBudgetAmount
    , budAccountId
    , budId
    , budBillingId

    -- * MarketplaceDealParty
    , MarketplaceDealParty
    , marketplaceDealParty
    , mdpSeller
    , mdpBuyer

    -- * DealPartyDto
    , DealPartyDto
    , dealPartyDto
    , dpdBuyerSellerRole
    , dpdCustomerId
    , dpdName
    , dpdWebProperty
    , dpdBuyer

    -- * AddOrderNotesRequest
    , AddOrderNotesRequest
    , addOrderNotesRequest
    , aNotes

    -- * CreativeItemCorrections
    , CreativeItemCorrections
    , creativeItemCorrections
    , cicReason
    , cicDetails

    -- * CreateOrdersRequest
    , CreateOrdersRequest
    , createOrdersRequest
    , cWebPropertyCode
    , cOrders

    -- * AccountsList
    , AccountsList
    , accountsList
    , alKind
    , alItems

    -- * GetOrdersResponse
    , GetOrdersResponse
    , getOrdersResponse
    , gorOrders

    -- * RuleKeyValuePair
    , RuleKeyValuePair
    , ruleKeyValuePair
    , rkvpKeyName
    , rkvpValue

    -- * AdSize
    , AdSize
    , adSize
    , asHeight
    , asWidth

    -- * GetOrderNotesResponse
    , GetOrderNotesResponse
    , getOrderNotesResponse
    , gonrNotes

    -- * Creative
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

    -- * PricePerBuyer
    , PricePerBuyer
    , pricePerBuyer
    , ppbPrice
    , ppbBuyer

    -- * AddOrderDealsResponse
    , AddOrderDealsResponse
    , addOrderDealsResponse
    , aDeals
    , aOrderRevisionNumber

    -- * DeliveryControl
    , DeliveryControl
    , deliveryControl
    , dcFrequencyCaps
    , dcDeliveryRateType

    -- * CreativeImageNativeAd
    , CreativeImageNativeAd
    , creativeImageNativeAd
    , cinaHeight
    , cinaUrl
    , cinaWidth

    -- * TargetingValueDayPartTargetingDayPart
    , TargetingValueDayPartTargetingDayPart
    , targetingValueDayPartTargetingDayPart
    , tvdptdpEndHour
    , tvdptdpStartHour
    , tvdptdpStartMinute
    , tvdptdpDayOfWeek
    , tvdptdpEndMinute

    -- * NegotiationRoundDto
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

    -- * DealTermsNonGuaranteedAuctionTerms
    , DealTermsNonGuaranteedAuctionTerms
    , dealTermsNonGuaranteedAuctionTerms
    , dtngatReservePricePerBuyers
    , dtngatPrivateAuctionId

    -- * StatsDto
    , StatsDto
    , statsDto
    , sdBids
    , sdSpend
    , sdImpressions
    , sdGoodBids
    , sdRevenue
    , sdRequests

    -- * GetOffersResponse
    , GetOffersResponse
    , getOffersResponse
    , gorOffers

    -- * CreativeAppIconNativeAd
    , CreativeAppIconNativeAd
    , creativeAppIconNativeAd
    , cainaHeight
    , cainaUrl
    , cainaWidth

    -- * Account
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

    -- * Seller
    , Seller
    , seller
    , sAccountId
    , sSubAccountId

    -- * DeleteOrderDealsRequest
    , DeleteOrderDealsRequest
    , deleteOrderDealsRequest
    , dUpdateAction
    , dDealIds
    , dOrderRevisionNumber
    ) where

import           Network.Google.AdExchangeBuyer.Types.Product
import           Network.Google.AdExchangeBuyer.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1.4' of the Ad Exchange Buyer API.
adExchangeBuyerURL :: BaseUrl
adExchangeBuyerURL
  = BaseUrl Https
      "https://www.googleapis.com/adexchangebuyer/v1.4/"
      443
