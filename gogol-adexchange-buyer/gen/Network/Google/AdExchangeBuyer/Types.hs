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
      adExchangeBuyer

    -- * OAuth Scopes
    , adexchangeBuyerScope

    -- * BrandDTO
    , BrandDTO
    , brandDTO
    , bdtoAdvertiserId
    , bdtoName
    , bdtoId

    -- * MarketplaceOrdersUpdateUpdateAction
    , MarketplaceOrdersUpdateUpdateAction (..)

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

    -- * TermsDTO
    , TermsDTO
    , termsDTO
    , tdtoFinalizeAutomatically
    , tdtoBuyerBillingType
    , tdtoTargetingAllAdSlots
    , tdtoURLs
    , tdtoEndDate
    , tdtoCpm
    , tdtoEstimatedSpend
    , tdtoAdvertisers
    , tdtoEstimatedImpressionsPerDay
    , tdtoMonetizerType
    , tdtoAudienceSegmentDescription
    , tdtoCreativeReviewPolicy
    , tdtoMinimumTrueLooks
    , tdtoStartDate
    , tdtoCreativeBlockingLevel
    , tdtoSemiTransparent
    , tdtoAudienceSegment
    , tdtoDealPremium
    , tdtoIsReservation
    , tdtoAdSlots
    , tdtoTermsAttributes
    , tdtoInventorySegmentTargeting
    , tdtoDescriptiveName
    , tdtoMinimumSpendMicros
    , tdtoTargetByDealId
    , tdtoBillingTerms
    , tdtoDescription

    -- * CreateOrdersResponse
    , CreateOrdersResponse
    , createOrdersResponse
    , corOrders

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

    -- * GetFinalizedNegotiationByExternalDealIdRequest
    , GetFinalizedNegotiationByExternalDealIdRequest
    , getFinalizedNegotiationByExternalDealIdRequest
    , gfnbedirIncludePrivateAuctions

    -- * DeliveryControlFrequencyCap
    , DeliveryControlFrequencyCap
    , deliveryControlFrequencyCap
    , dcfcMaxImpressions
    , dcfcNumTimeUnits
    , dcfcTimeUnitType

    -- * DealPartyDTO
    , DealPartyDTO
    , dealPartyDTO
    , dpdtoBuyerSellerRole
    , dpdtoCustomerId
    , dpdtoName
    , dpdtoWebProperty
    , dpdtoBuyer

    -- * GetNegotiationsResponse
    , GetNegotiationsResponse
    , getNegotiationsResponse
    , gnrKind
    , gnrNegotiations

    -- * MarketplaceDealParty
    , MarketplaceDealParty
    , marketplaceDealParty
    , mdpSeller
    , mdpBuyer

    -- * GetOrderNotesResponse
    , GetOrderNotesResponse
    , getOrderNotesResponse
    , gonrNotes

    -- * RuleKeyValuePair
    , RuleKeyValuePair
    , ruleKeyValuePair
    , rkvpKeyName
    , rkvpValue

    -- * GetOrdersResponse
    , GetOrdersResponse
    , getOrdersResponse
    , gorOrders

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
    , cWebPropertyCode
    , cOrders

    -- * AdSize
    , AdSize
    , adSize
    , asHeight
    , asWidth

    -- * MarketplaceOrdersPatchUpdateAction
    , MarketplaceOrdersPatchUpdateAction (..)

    -- * CreativeCorrectionsItem
    , CreativeCorrectionsItem
    , creativeCorrectionsItem
    , cciReason
    , cciDetails

    -- * AddOrderDealsResponse
    , AddOrderDealsResponse
    , addOrderDealsResponse
    , aodrDeals
    , aodrOrderRevisionNumber

    -- * DeliveryControl
    , DeliveryControl
    , deliveryControl
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

    -- * BuyerDTO
    , BuyerDTO
    , buyerDTO
    , buySponsorAccountId
    , buyEnabledForInterestTargetingDeals
    , buyCustomerId
    , buyEnabledForPreferredDeals
    , buyAccountId
    , buyDisplayName
    , buyId

    -- * AdSlotDTO
    , AdSlotDTO
    , adSlotDTO
    , asdtoWebPropertyId
    , asdtoSize
    , asdtoChannelCode
    , asdtoChannelId
    , asdtoName
    , asdtoDescription

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
    , dodrOrderRevisionNumber

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

    -- * NegotiationDTO
    , NegotiationDTO
    , negotiationDTO
    , ndtoNegotiationState
    , ndtoExternalDealId
    , ndtoStatus
    , ndtoDealType
    , ndtoNegotiationRounds
    , ndtoKind
    , ndtoBilledBuyer
    , ndtoBuyerEmailContacts
    , ndtoStats
    , ndtoSeller
    , ndtoLabelNames
    , ndtoOfferId
    , ndtoNegotiationId
    , ndtoSellerEmailContacts
    , ndtoBuyer

    -- * OfferDTO
    , OfferDTO
    , offerDTO
    , odtoCreator
    , odtoStatus
    , odtoOfferState
    , odtoPointOfContact
    , odtoTerms
    , odtoKind
    , odtoBilledBuyer
    , odtoOpenToDealParties
    , odtoEmailContacts
    , odtoLabelNames
    , odtoOfferId
    , odtoClosedToDealParties
    , odtoAnonymous
    , odtoIsOpen

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

    -- * AddOrderNotesResponse
    , AddOrderNotesResponse
    , addOrderNotesResponse
    , aNotes

    -- * TargetingValueSize
    , TargetingValueSize
    , targetingValueSize
    , tvsHeight
    , tvsWidth

    -- * GetNegotiationsRequest
    , GetNegotiationsRequest
    , getNegotiationsRequest
    , gnrSinceTimestampMillis
    , gnrFinalized
    , gnrIncludePrivateAuctions

    -- * MoneyDTO
    , MoneyDTO
    , moneyDTO
    , mdtoCurrencyCode
    , mdtoMicros

    -- * GetNegotiationByIdRequest
    , GetNegotiationByIdRequest
    , getNegotiationByIdRequest
    , gnbirIncludePrivateAuctions

    -- * ListOffersResponse
    , ListOffersResponse
    , listOffersResponse
    , lorKind
    , lorOffers

    -- * PretargetingConfigDimensionsItem
    , PretargetingConfigDimensionsItem
    , pretargetingConfigDimensionsItem
    , pcdiHeight
    , pcdiWidth

    -- * AdvertiserDTO
    , AdvertiserDTO
    , advertiserDTO
    , adtoStatus
    , adtoBrands
    , adtoName
    , adtoId

    -- * ListClientAccessCapabilitiesResponse
    , ListClientAccessCapabilitiesResponse
    , listClientAccessCapabilitiesResponse
    , lcacrClientAccessPermissions

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

    -- * EditAllOrderDealsRequest
    , EditAllOrderDealsRequest
    , editAllOrderDealsRequest
    , eUpdateAction
    , eDeals
    , eOrder
    , eOrderRevisionNumber

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

    -- * ListClientAccessCapabilitiesRequest
    , ListClientAccessCapabilitiesRequest
    , listClientAccessCapabilitiesRequest
    , lcacrSponsorAccountId

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
    , istPositiveSiteURLs
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
    , istNegativeSiteURLs
    , istNegativeAdTypeSegments
    , istPositiveVideoAdPositionSegments
    , istPositiveInventorySlots
    , istNegativeMobileApps
    , istNegativeIcmInterests

    -- * CreativeNATiveAdImage
    , CreativeNATiveAdImage
    , creativeNATiveAdImage
    , cnataiHeight
    , cnataiURL
    , cnataiWidth

    -- * WebPropertyDTO
    , WebPropertyDTO
    , webPropertyDTO
    , wpdtoEnabledForPreferredDeals
    , wpdtoSyndicationProduct
    , wpdtoName
    , wpdtoPropertyCode
    , wpdtoId
    , wpdtoSiteURLs
    , wpdtoAllowInterestTargetedAds

    -- * ListOffersRequest
    , ListOffersRequest
    , listOffersRequest
    , lorSinceTimestampMillis

    -- * ClientAccessCapabilities
    , ClientAccessCapabilities
    , clientAccessCapabilities
    , cacClientAccountId
    , cacCapabilities

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
    , dOrderRevisionNumber

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

    -- * GetOffersResponse
    , GetOffersResponse
    , getOffersResponse
    , gorOffers

    -- * StatsDTO
    , StatsDTO
    , statsDTO
    , sdtoBids
    , sdtoSpend
    , sdtoImpressions
    , sdtoGoodBids
    , sdtoRevenue
    , sdtoRequests

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

    -- * NegotiationRoundDTO
    , NegotiationRoundDTO
    , negotiationRoundDTO
    , nrdtoTerms
    , nrdtoKind
    , nrdtoOriginatorRole
    , nrdtoAction
    , nrdtoDBmPartnerId
    , nrdtoNotes
    , nrdtoNegotiationId
    , nrdtoEditHistory
    , nrdtoRoundNumber

    -- * CreativesListDealsStatusFilter
    , CreativesListDealsStatusFilter (..)

    -- * DealTerms
    , DealTerms
    , dealTerms
    , dtNonGuaranteedFixedPriceTerms
    , dtNonGuaranteedAuctionTerms
    , dtGuaranteedFixedPriceTerms
    , dtDescription

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

    -- * MarketplaceLabel
    , MarketplaceLabel
    , marketplaceLabel
    , mlDeprecatedMarketplaceDealParty
    , mlAccountId
    , mlCreateTimeMs
    , mlLabel

    -- * EditHistoryDTO
    , EditHistoryDTO
    , editHistoryDTO
    , ehdtoLastUpdatedByLoginName
    , ehdtoCreatedByLoginName
    , ehdtoLastUpdateTimeStamp
    , ehdtoCreatedTimeStamp

    -- * Buyer
    , Buyer
    , buyer
    , bbAccountId

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

    -- * AddOrderDealsRequest
    , AddOrderDealsRequest
    , addOrderDealsRequest
    , aUpdateAction
    , aDeals
    , aOrderRevisionNumber

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
adExchangeBuyer :: Service
adExchangeBuyer
  = defaultService (ServiceId "adexchangebuyer:v1.4")
      "www.googleapis.com"
      "adexchangebuyer/v1.4/"

-- | Manage your Ad Exchange buyer account configuration
adexchangeBuyerScope :: OAuthScope
adexchangeBuyerScope = "https://www.googleapis.com/auth/adexchange.buyer";
