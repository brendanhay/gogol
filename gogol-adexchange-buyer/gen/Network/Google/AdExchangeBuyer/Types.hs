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

    -- * BidderLocationItem
    , BidderLocationItem
    , bidderLocationItem
    , bliURL
    , bliMaximumQps
    , bliRegion

    -- * NATiveAd
    , NATiveAd
    , nATiveAd
    , nataImage
    , nataAppIcon
    , nataClickTrackingURL
    , nataBody
    , nataHeadline
    , nataImpressionTrackingURL
    , nataCallToAction
    , nataStore
    , nataPrice
    , nataAdvertiser
    , nataStarRating
    , nataLogo

    -- * BrandDTO
    , BrandDTO
    , brandDTO
    , bdtoAdvertiserId
    , bdtoName
    , bdtoId

    -- * PlacementsItem
    , PlacementsItem
    , placementsItem
    , piToken
    , piType

    -- * UpdateAction
    , UpdateAction (..)

    -- * EditAllOrderDealsResponse
    , EditAllOrderDealsResponse
    , editAllOrderDealsResponse
    , eaodrDeals

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

    -- * Image
    , Image
    , image
    , iHeight
    , iURL
    , iWidth

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

    -- * AppIcon
    , AppIcon
    , appIcon
    , aiHeight
    , aiURL
    , aiWidth

    -- * CreativesList
    , CreativesList
    , creativesList
    , clNextPageToken
    , clKind
    , clItems

    -- * CreateOrdersResponse
    , CreateOrdersResponse
    , createOrdersResponse
    , corOrders

    -- * AddOrderNotesRequest
    , AddOrderNotesRequest
    , addOrderNotesRequest
    , aonrNotes

    -- * MarketplaceDealParty
    , MarketplaceDealParty
    , marketplaceDealParty
    , mdpSeller
    , mdpBuyer

    -- * DealPartyDTO
    , DealPartyDTO
    , dealPartyDTO
    , dpdtoBuyerSellerRole
    , dpdtoCustomerId
    , dpdtoName
    , dpdtoWebProperty
    , dpdtoBuyer

    -- * DeliveryControlFrequencyCap
    , DeliveryControlFrequencyCap
    , deliveryControlFrequencyCap
    , dcfcMaxImpressions
    , dcfcNumTimeUnits
    , dcfcTimeUnitType

    -- * GetNegotiationsResponse
    , GetNegotiationsResponse
    , getNegotiationsResponse
    , gnrKind
    , gnrNegotiations

    -- * Budget
    , Budget
    , budget
    , bCurrencyCode
    , bKind
    , bBudgetAmount
    , bAccountId
    , bId
    , bBillingId

    -- * GetFinalizedNegotiationByExternalDealIdRequest
    , GetFinalizedNegotiationByExternalDealIdRequest
    , getFinalizedNegotiationByExternalDealIdRequest
    , gfnbedirIncludePrivateAuctions

    -- * PrivateData
    , PrivateData
    , privateData
    , pdReferencePayload
    , pdReferenceId

    -- * AdSize
    , AdSize
    , adSize
    , asHeight
    , asWidth

    -- * RuleKeyValuePair
    , RuleKeyValuePair
    , ruleKeyValuePair
    , rkvpKeyName
    , rkvpValue

    -- * GetOrdersResponse
    , GetOrdersResponse
    , getOrdersResponse
    , gorOrders

    -- * AccountsList
    , AccountsList
    , accountsList
    , alKind
    , alItems

    -- * ServingRestrictionsItem
    , ServingRestrictionsItem
    , servingRestrictionsItem
    , sriContexts
    , sriReason
    , sriDisapprovalReasons

    -- * GetOrderNotesResponse
    , GetOrderNotesResponse
    , getOrderNotesResponse
    , gonrNotes

    -- * CreateOrdersRequest
    , CreateOrdersRequest
    , createOrdersRequest
    , cWebPropertyCode
    , cOrders

    -- * PricePerBuyer
    , PricePerBuyer
    , pricePerBuyer
    , ppbPrice
    , ppbBuyer

    -- * TargetingValueDayPartTargetingDayPart
    , TargetingValueDayPartTargetingDayPart
    , targetingValueDayPartTargetingDayPart
    , tvdptdpEndHour
    , tvdptdpStartHour
    , tvdptdpStartMinute
    , tvdptdpDayOfWeek
    , tvdptdpEndMinute

    -- * OpenAuctionStatusFilter
    , OpenAuctionStatusFilter (..)

    -- * DeliveryControl
    , DeliveryControl
    , deliveryControl
    , dcFrequencyCaps
    , dcDeliveryRateType

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

    -- * AdexchangebuyerMarketplaceOrdersUpdateUpdateAction
    , AdexchangebuyerMarketplaceOrdersUpdateUpdateAction (..)

    -- * AddOrderDealsResponse
    , AddOrderDealsResponse
    , addOrderDealsResponse
    , aodrDeals
    , aodrOrderRevisionNumber

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

    -- * DealTermsNonGuaranteedFixedPriceTerms
    , DealTermsNonGuaranteedFixedPriceTerms
    , dealTermsNonGuaranteedFixedPriceTerms
    , dtngfptFixedPrices

    -- * AdSlotDTO
    , AdSlotDTO
    , adSlotDTO
    , asdtoWebPropertyId
    , asdtoSize
    , asdtoChannelCode
    , asdtoChannelId
    , asdtoName
    , asdtoDescription

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

    -- * Seller
    , Seller
    , seller
    , sAccountId
    , sSubAccountId

    -- * DeleteOrderDealsRequest
    , DeleteOrderDealsRequest
    , deleteOrderDealsRequest
    , dodrUpdateAction
    , dodrDealIds
    , dodrOrderRevisionNumber

    -- * GetOrderDealsResponse
    , GetOrderDealsResponse
    , getOrderDealsResponse
    , godrDeals

    -- * ContactInformation
    , ContactInformation
    , contactInformation
    , ciEmail
    , ciName

    -- * TargetingValueCreativeSize
    , TargetingValueCreativeSize
    , targetingValueCreativeSize
    , tvcsSize
    , tvcsCompanionSizes
    , tvcsCreativeSizeType

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

    -- * PerformanceReportList
    , PerformanceReportList
    , performanceReportList
    , prlKind
    , prlPerformanceReport

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

    -- * AudienceSegment
    , AudienceSegment
    , audienceSegment
    , asNumCookies
    , asName
    , asId
    , asDescription

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

    -- * TargetingValueSize
    , TargetingValueSize
    , targetingValueSize
    , tvsHeight
    , tvsWidth

    -- * FilteringReasons
    , FilteringReasons
    , filteringReasons
    , frReasons
    , frDate

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

    -- * GetNegotiationsRequest
    , GetNegotiationsRequest
    , getNegotiationsRequest
    , gnrSinceTimestampMillis
    , gnrFinalized
    , gnrIncludePrivateAuctions

    -- * BillingInfoList
    , BillingInfoList
    , billingInfoList
    , bilKind
    , bilItems

    -- * AddOrderNotesResponse
    , AddOrderNotesResponse
    , addOrderNotesResponse
    , aNotes

    -- * MoneyDTO
    , MoneyDTO
    , moneyDTO
    , mdtoCurrencyCode
    , mdtoMicros

    -- * ListClientAccessCapabilitiesResponse
    , ListClientAccessCapabilitiesResponse
    , listClientAccessCapabilitiesResponse
    , lcacrClientAccessPermissions

    -- * GetNegotiationByIdRequest
    , GetNegotiationByIdRequest
    , getNegotiationByIdRequest
    , gnbirIncludePrivateAuctions

    -- * ListOffersResponse
    , ListOffersResponse
    , listOffersResponse
    , lorKind
    , lorOffers

    -- * ReasonsItem
    , ReasonsItem
    , reasonsItem
    , riFilteringStatus
    , riFilteringCount

    -- * AdvertiserDTO
    , AdvertiserDTO
    , advertiserDTO
    , adtoStatus
    , adtoBrands
    , adtoName
    , adtoId

    -- * TargetingValue
    , TargetingValue
    , targetingValue
    , tvCreativeSizeValue
    , tvStringValue
    , tvLongValue
    , tvDayPartTargetingValue

    -- * Price
    , Price
    , price
    , pCurrencyCode
    , pAmountMicros

    -- * ExcludedPlacementsItem
    , ExcludedPlacementsItem
    , excludedPlacementsItem
    , epiToken
    , epiType

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

    -- * TargetingValueDayPartTargeting
    , TargetingValueDayPartTargeting
    , targetingValueDayPartTargeting
    , tvdptTimeZoneType
    , tvdptDayParts

    -- * ListOffersRequest
    , ListOffersRequest
    , listOffersRequest
    , lorSinceTimestampMillis

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

    -- * SharedTargeting
    , SharedTargeting
    , sharedTargeting
    , stKey
    , stExclusions
    , stInclusions

    -- * CorrectionsItem
    , CorrectionsItem
    , correctionsItem
    , ciReason
    , ciDetails

    -- * DealsStatusFilter
    , DealsStatusFilter (..)

    -- * Logo
    , Logo
    , logo
    , lHeight
    , lURL
    , lWidth

    -- * ClientAccessCapabilities
    , ClientAccessCapabilities
    , clientAccessCapabilities
    , cacClientAccountId
    , cacCapabilities

    -- * DisapprovalReasonsItem
    , DisapprovalReasonsItem
    , disapprovalReasonsItem
    , driReason
    , driDetails

    -- * DeleteOrderDealsResponse
    , DeleteOrderDealsResponse
    , deleteOrderDealsResponse
    , dDeals
    , dOrderRevisionNumber

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

    -- * DimensionsItem
    , DimensionsItem
    , dimensionsItem
    , diHeight
    , diWidth

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

    -- * StatsDTO
    , StatsDTO
    , statsDTO
    , sdtoBids
    , sdtoSpend
    , sdtoImpressions
    , sdtoGoodBids
    , sdtoRevenue
    , sdtoRequests

    -- * GetOffersResponse
    , GetOffersResponse
    , getOffersResponse
    , gorOffers

    -- * DealTermsNonGuaranteedAuctionTerms
    , DealTermsNonGuaranteedAuctionTerms
    , dealTermsNonGuaranteedAuctionTerms
    , dtngatReservePricePerBuyers
    , dtngatPrivateAuctionId

    -- * Buyer
    , Buyer
    , buyer
    , bbAccountId

    -- * ContextsItem
    , ContextsItem
    , contextsItem
    , ciPlatform
    , ciContextType
    , ciAuctionType
    , ciGeoCriteriaId

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

    -- * MarketplaceOrder
    , MarketplaceOrder
    , marketplaceOrder
    , marBuyerPrivateData
    , marIsSetupComplete
    , marBuyerContacts
    , marKind
    , marOriginatorRole
    , marRevisionNumber
    , marBilledBuyer
    , marIsRenegotiating
    , marHasSellerSignedOff
    , marSeller
    , marOrderState
    , marName
    , marSellerContacts
    , marLastUpdaterRole
    , marLabels
    , marRevisionTimeMs
    , marOrderId
    , marLastUpdaterOrCommentorRole
    , marHasBuyerSignedOff
    , marBuyer

    -- * AddOrderDealsRequest
    , AddOrderDealsRequest
    , addOrderDealsRequest
    , aUpdateAction
    , aDeals
    , aOrderRevisionNumber

    -- * DealTerms
    , DealTerms
    , dealTerms
    , dtNonGuaranteedFixedPriceTerms
    , dtNonGuaranteedAuctionTerms
    , dtGuaranteedFixedPriceTerms
    , dtDescription

    -- * EditHistoryDTO
    , EditHistoryDTO
    , editHistoryDTO
    , ehdtoLastUpdatedByLoginName
    , ehdtoCreatedByLoginName
    , ehdtoLastUpdateTimeStamp
    , ehdtoCreatedTimeStamp
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
