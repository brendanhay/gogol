{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

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
-- Accesses your bidding-account information, submits creatives for
-- validation, finds available direct deals, and retrieves performance
-- reports.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference>
module Network.Google.AdExchangeBuyer
    (
    -- * Service Configuration
      adExchangeBuyerService

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

    -- ** adexchangebuyer.clientaccess.delete
    , module Network.Google.Resource.AdExchangeBuyer.ClientAccess.Delete

    -- ** adexchangebuyer.clientaccess.get
    , module Network.Google.Resource.AdExchangeBuyer.ClientAccess.Get

    -- ** adexchangebuyer.clientaccess.insert
    , module Network.Google.Resource.AdExchangeBuyer.ClientAccess.Insert

    -- ** adexchangebuyer.clientaccess.list
    , module Network.Google.Resource.AdExchangeBuyer.ClientAccess.List

    -- ** adexchangebuyer.clientaccess.patch
    , module Network.Google.Resource.AdExchangeBuyer.ClientAccess.Patch

    -- ** adexchangebuyer.clientaccess.update
    , module Network.Google.Resource.AdExchangeBuyer.ClientAccess.Update

    -- ** adexchangebuyer.creatives.get
    , module Network.Google.Resource.AdExchangeBuyer.Creatives.Get

    -- ** adexchangebuyer.creatives.insert
    , module Network.Google.Resource.AdExchangeBuyer.Creatives.Insert

    -- ** adexchangebuyer.creatives.list
    , module Network.Google.Resource.AdExchangeBuyer.Creatives.List

    -- ** adexchangebuyer.deals.get
    , module Network.Google.Resource.AdExchangeBuyer.Deals.Get

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

    -- ** adexchangebuyer.marketplaceoffers.get
    , module Network.Google.Resource.AdExchangeBuyer.MarketplaceOffers.Get

    -- ** adexchangebuyer.marketplaceoffers.search
    , module Network.Google.Resource.AdExchangeBuyer.MarketplaceOffers.Search

    -- ** adexchangebuyer.marketplaceorders.get
    , module Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Get

    -- ** adexchangebuyer.marketplaceorders.insert
    , module Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Insert

    -- ** adexchangebuyer.marketplaceorders.patch
    , module Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Patch

    -- ** adexchangebuyer.marketplaceorders.search
    , module Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Search

    -- ** adexchangebuyer.marketplaceorders.update
    , module Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Update

    -- ** adexchangebuyer.negotiationrounds.insert
    , module Network.Google.Resource.AdExchangeBuyer.NegotiationRounds.Insert

    -- ** adexchangebuyer.negotiations.get
    , module Network.Google.Resource.AdExchangeBuyer.Negotiations.Get

    -- ** adexchangebuyer.negotiations.insert
    , module Network.Google.Resource.AdExchangeBuyer.Negotiations.Insert

    -- ** adexchangebuyer.negotiations.list
    , module Network.Google.Resource.AdExchangeBuyer.Negotiations.List

    -- ** adexchangebuyer.offers.get
    , module Network.Google.Resource.AdExchangeBuyer.Offers.Get

    -- ** adexchangebuyer.offers.insert
    , module Network.Google.Resource.AdExchangeBuyer.Offers.Insert

    -- ** adexchangebuyer.offers.list
    , module Network.Google.Resource.AdExchangeBuyer.Offers.List

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

    -- * Types

    -- ** BrandDTO
    , BrandDTO
    , brandDTO
    , bdtoAdvertiserId
    , bdtoName
    , bdtoId

    -- ** MarketplaceOrdersUpdateUpdateAction
    , MarketplaceOrdersUpdateUpdateAction (..)

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

    -- ** CreativeNATiveAd
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

    -- ** EditAllOrderDealsResponse
    , EditAllOrderDealsResponse
    , editAllOrderDealsResponse
    , eaodrDeals

    -- ** CreativesList
    , CreativesList
    , creativesList
    , clNextPageToken
    , clKind
    , clItems

    -- ** CreativeServingRestrictionsItemContextsItem
    , CreativeServingRestrictionsItemContextsItem
    , creativeServingRestrictionsItemContextsItem
    , csriciPlatform
    , csriciContextType
    , csriciAuctionType
    , csriciGeoCriteriaId

    -- ** TermsDTO
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

    -- ** CreateOrdersResponse
    , CreateOrdersResponse
    , createOrdersResponse
    , corOrders

    -- ** AccountBidderLocationItem
    , AccountBidderLocationItem
    , accountBidderLocationItem
    , abliURL
    , abliMaximumQps
    , abliRegion

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

    -- ** GetFinalizedNegotiationByExternalDealIdRequest
    , GetFinalizedNegotiationByExternalDealIdRequest
    , getFinalizedNegotiationByExternalDealIdRequest
    , gfnbedirIncludePrivateAuctions

    -- ** DeliveryControlFrequencyCap
    , DeliveryControlFrequencyCap
    , deliveryControlFrequencyCap
    , dcfcMaxImpressions
    , dcfcNumTimeUnits
    , dcfcTimeUnitType

    -- ** DealPartyDTO
    , DealPartyDTO
    , dealPartyDTO
    , dpdtoBuyerSellerRole
    , dpdtoCustomerId
    , dpdtoName
    , dpdtoWebProperty
    , dpdtoBuyer

    -- ** GetNegotiationsResponse
    , GetNegotiationsResponse
    , getNegotiationsResponse
    , gnrKind
    , gnrNegotiations

    -- ** MarketplaceDealParty
    , MarketplaceDealParty
    , marketplaceDealParty
    , mdpSeller
    , mdpBuyer

    -- ** GetOrderNotesResponse
    , GetOrderNotesResponse
    , getOrderNotesResponse
    , gonrNotes

    -- ** RuleKeyValuePair
    , RuleKeyValuePair
    , ruleKeyValuePair
    , rkvpKeyName
    , rkvpValue

    -- ** GetOrdersResponse
    , GetOrdersResponse
    , getOrdersResponse
    , gorOrders

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

    -- ** CreateOrdersRequest
    , CreateOrdersRequest
    , createOrdersRequest
    , cWebPropertyCode
    , cOrders

    -- ** AdSize
    , AdSize
    , adSize
    , asHeight
    , asWidth

    -- ** MarketplaceOrdersPatchUpdateAction
    , MarketplaceOrdersPatchUpdateAction (..)

    -- ** CreativeCorrectionsItem
    , CreativeCorrectionsItem
    , creativeCorrectionsItem
    , cciReason
    , cciDetails

    -- ** AddOrderDealsResponse
    , AddOrderDealsResponse
    , addOrderDealsResponse
    , aodrDeals
    , aodrOrderRevisionNumber

    -- ** DeliveryControl
    , DeliveryControl
    , deliveryControl
    , dcFrequencyCaps
    , dcDeliveryRateType

    -- ** PricePerBuyer
    , PricePerBuyer
    , pricePerBuyer
    , ppbPrice
    , ppbBuyer

    -- ** Creative
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

    -- ** TargetingValueDayPartTargetingDayPart
    , TargetingValueDayPartTargetingDayPart
    , targetingValueDayPartTargetingDayPart
    , tvdptdpEndHour
    , tvdptdpStartHour
    , tvdptdpStartMinute
    , tvdptdpDayOfWeek
    , tvdptdpEndMinute

    -- ** PretargetingConfigList
    , PretargetingConfigList
    , pretargetingConfigList
    , pclKind
    , pclItems

    -- ** BuyerDTO
    , BuyerDTO
    , buyerDTO
    , buySponsorAccountId
    , buyEnabledForInterestTargetingDeals
    , buyCustomerId
    , buyEnabledForPreferredDeals
    , buyAccountId
    , buyDisplayName
    , buyId

    -- ** AdSlotDTO
    , AdSlotDTO
    , adSlotDTO
    , asdtoWebPropertyId
    , asdtoSize
    , asdtoChannelCode
    , asdtoChannelId
    , asdtoName
    , asdtoDescription

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
    , dodrOrderRevisionNumber

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
    , tvcsCreativeSizeType

    -- ** NegotiationDTO
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

    -- ** OfferDTO
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

    -- ** AddOrderNotesResponse
    , AddOrderNotesResponse
    , addOrderNotesResponse
    , aNotes

    -- ** TargetingValueSize
    , TargetingValueSize
    , targetingValueSize
    , tvsHeight
    , tvsWidth

    -- ** GetNegotiationsRequest
    , GetNegotiationsRequest
    , getNegotiationsRequest
    , gnrSinceTimestampMillis
    , gnrFinalized
    , gnrIncludePrivateAuctions

    -- ** MoneyDTO
    , MoneyDTO
    , moneyDTO
    , mdtoCurrencyCode
    , mdtoMicros

    -- ** GetNegotiationByIdRequest
    , GetNegotiationByIdRequest
    , getNegotiationByIdRequest
    , gnbirIncludePrivateAuctions

    -- ** ListOffersResponse
    , ListOffersResponse
    , listOffersResponse
    , lorKind
    , lorOffers

    -- ** PretargetingConfigDimensionsItem
    , PretargetingConfigDimensionsItem
    , pretargetingConfigDimensionsItem
    , pcdiHeight
    , pcdiWidth

    -- ** AdvertiserDTO
    , AdvertiserDTO
    , advertiserDTO
    , adtoStatus
    , adtoBrands
    , adtoName
    , adtoId

    -- ** ListClientAccessCapabilitiesResponse
    , ListClientAccessCapabilitiesResponse
    , listClientAccessCapabilitiesResponse
    , lcacrClientAccessPermissions

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

    -- ** CreativeNATiveAdImage
    , CreativeNATiveAdImage
    , creativeNATiveAdImage
    , cnataiHeight
    , cnataiURL
    , cnataiWidth

    -- ** WebPropertyDTO
    , WebPropertyDTO
    , webPropertyDTO
    , wpdtoEnabledForPreferredDeals
    , wpdtoSyndicationProduct
    , wpdtoName
    , wpdtoPropertyCode
    , wpdtoId
    , wpdtoSiteURLs
    , wpdtoAllowInterestTargetedAds

    -- ** ListOffersRequest
    , ListOffersRequest
    , listOffersRequest
    , lorSinceTimestampMillis

    -- ** ClientAccessCapabilities
    , ClientAccessCapabilities
    , clientAccessCapabilities
    , cacClientAccountId
    , cacCapabilities

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
    , dOrderRevisionNumber

    -- ** PretargetingConfigPlacementsItem
    , PretargetingConfigPlacementsItem
    , pretargetingConfigPlacementsItem
    , pcpiToken
    , pcpiType

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

    -- ** GetOffersResponse
    , GetOffersResponse
    , getOffersResponse
    , gorOffers

    -- ** StatsDTO
    , StatsDTO
    , statsDTO
    , sdtoBids
    , sdtoSpend
    , sdtoImpressions
    , sdtoGoodBids
    , sdtoRevenue
    , sdtoRequests

    -- ** DealTermsNonGuaranteedAuctionTerms
    , DealTermsNonGuaranteedAuctionTerms
    , dealTermsNonGuaranteedAuctionTerms
    , dtngatReservePricePerBuyers
    , dtngatPrivateAuctionId

    -- ** CreativeFilteringReasonsReasonsItem
    , CreativeFilteringReasonsReasonsItem
    , creativeFilteringReasonsReasonsItem
    , cfrriFilteringStatus
    , cfrriFilteringCount

    -- ** NegotiationRoundDTO
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

    -- ** CreativesListDealsStatusFilter
    , CreativesListDealsStatusFilter (..)

    -- ** DealTerms
    , DealTerms
    , dealTerms
    , dtNonGuaranteedFixedPriceTerms
    , dtNonGuaranteedAuctionTerms
    , dtGuaranteedFixedPriceTerms
    , dtDescription

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

    -- ** MarketplaceLabel
    , MarketplaceLabel
    , marketplaceLabel
    , mlDeprecatedMarketplaceDealParty
    , mlAccountId
    , mlCreateTimeMs
    , mlLabel

    -- ** EditHistoryDTO
    , EditHistoryDTO
    , editHistoryDTO
    , ehdtoLastUpdatedByLoginName
    , ehdtoCreatedByLoginName
    , ehdtoLastUpdateTimeStamp
    , ehdtoCreatedTimeStamp

    -- ** Buyer
    , Buyer
    , buyer
    , bbAccountId

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

    -- ** DealTermsGuaranteedFixedPriceTerms
    , DealTermsGuaranteedFixedPriceTerms
    , dealTermsGuaranteedFixedPriceTerms
    , dtgfptGuaranteedLooks
    , dtgfptGuaranteedImpressions
    , dtgfptFixedPrices
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
import           Network.Google.Resource.AdExchangeBuyer.ClientAccess.Delete
import           Network.Google.Resource.AdExchangeBuyer.ClientAccess.Get
import           Network.Google.Resource.AdExchangeBuyer.ClientAccess.Insert
import           Network.Google.Resource.AdExchangeBuyer.ClientAccess.List
import           Network.Google.Resource.AdExchangeBuyer.ClientAccess.Patch
import           Network.Google.Resource.AdExchangeBuyer.ClientAccess.Update
import           Network.Google.Resource.AdExchangeBuyer.Creatives.Get
import           Network.Google.Resource.AdExchangeBuyer.Creatives.Insert
import           Network.Google.Resource.AdExchangeBuyer.Creatives.List
import           Network.Google.Resource.AdExchangeBuyer.Deals.Get
import           Network.Google.Resource.AdExchangeBuyer.MarketplaceDeals.Delete
import           Network.Google.Resource.AdExchangeBuyer.MarketplaceDeals.Insert
import           Network.Google.Resource.AdExchangeBuyer.MarketplaceDeals.List
import           Network.Google.Resource.AdExchangeBuyer.MarketplaceDeals.Update
import           Network.Google.Resource.AdExchangeBuyer.MarketplaceNotes.Insert
import           Network.Google.Resource.AdExchangeBuyer.MarketplaceNotes.List
import           Network.Google.Resource.AdExchangeBuyer.MarketplaceOffers.Get
import           Network.Google.Resource.AdExchangeBuyer.MarketplaceOffers.Search
import           Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Get
import           Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Insert
import           Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Patch
import           Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Search
import           Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Update
import           Network.Google.Resource.AdExchangeBuyer.NegotiationRounds.Insert
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

-- | Represents the entirety of the methods and resources available for the Ad Exchange Buyer API service.
type AdExchangeBuyerAPI =
     MarketplaceNotesInsertResource :<|>
       MarketplaceNotesListResource
       :<|> DealsGetResource
       :<|> NegotiationRoundsInsertResource
       :<|> AccountsListResource
       :<|> AccountsPatchResource
       :<|> AccountsGetResource
       :<|> AccountsUpdateResource
       :<|> BudgetPatchResource
       :<|> BudgetGetResource
       :<|> BudgetUpdateResource
       :<|> CreativesInsertResource
       :<|> CreativesListResource
       :<|> CreativesGetResource
       :<|> PerformanceReportListResource
       :<|> MarketplaceOffersGetResource
       :<|> MarketplaceOffersSearchResource
       :<|> PretargetingConfigInsertResource
       :<|> PretargetingConfigListResource
       :<|> PretargetingConfigPatchResource
       :<|> PretargetingConfigGetResource
       :<|> PretargetingConfigDeleteResource
       :<|> PretargetingConfigUpdateResource
       :<|> MarketplaceOrdersInsertResource
       :<|> MarketplaceOrdersPatchResource
       :<|> MarketplaceOrdersGetResource
       :<|> MarketplaceOrdersSearchResource
       :<|> MarketplaceOrdersUpdateResource
       :<|> ClientAccessInsertResource
       :<|> ClientAccessListResource
       :<|> ClientAccessPatchResource
       :<|> ClientAccessGetResource
       :<|> ClientAccessDeleteResource
       :<|> ClientAccessUpdateResource
       :<|> BillingInfoListResource
       :<|> BillingInfoGetResource
       :<|> MarketplaceDealsInsertResource
       :<|> MarketplaceDealsListResource
       :<|> MarketplaceDealsDeleteResource
       :<|> MarketplaceDealsUpdateResource
       :<|> NegotiationsInsertResource
       :<|> NegotiationsListResource
       :<|> NegotiationsGetResource
       :<|> OffersInsertResource
       :<|> OffersListResource
       :<|> OffersGetResource
