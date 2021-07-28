{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AdExchangeBuyer.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
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
    , adExchangeBuyerScope

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
    , cnataClickLinkURL
    , cnataBody
    , cnataHeadline
    , cnataImpressionTrackingURL
    , cnataCallToAction
    , cnataVideoURL
    , cnataPrice
    , cnataAdvertiser
    , cnataStarRating
    , cnataLogo

    -- * EditAllOrderDealsResponse
    , EditAllOrderDealsResponse
    , editAllOrderDealsResponse
    , eaodrDeals
    , eaodrOrderRevisionNumber

    -- * TargetingValueDemogGenderCriteria
    , TargetingValueDemogGenderCriteria
    , targetingValueDemogGenderCriteria
    , tvdgcDemogGenderCriteriaIds

    -- * CreativesList
    , CreativesList
    , creativesList
    , clNextPageToken
    , clKind
    , clItems

    -- * CreativeDealIdsDealStatusesItem
    , CreativeDealIdsDealStatusesItem
    , creativeDealIdsDealStatusesItem
    , cdidsiArcStatus
    , cdidsiWebPropertyId
    , cdidsiDealId

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
    , abliBidProtocol

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

    -- * TargetingValueRequestPlatformTargeting
    , TargetingValueRequestPlatformTargeting
    , targetingValueRequestPlatformTargeting
    , tvrptRequestPlatforms

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

    -- * Dimension
    , Dimension
    , dimension
    , dDimensionValues
    , dDimensionType

    -- * CreateOrdersRequest
    , CreateOrdersRequest
    , createOrdersRequest
    , cProposals
    , cWebPropertyCode

    -- * CreativeCorrectionsItem
    , CreativeCorrectionsItem
    , creativeCorrectionsItem
    , cciContexts
    , cciReason
    , cciDetails

    -- * DealTermsRubiconNonGuaranteedTerms
    , DealTermsRubiconNonGuaranteedTerms
    , dealTermsRubiconNonGuaranteedTerms
    , dtrngtPriorityPrice
    , dtrngtStandardPrice

    -- * DealServingMetadata
    , DealServingMetadata
    , dealServingMetadata
    , dsmDealPauseStatus
    , dsmAlcoholAdsAllowed

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
    , ppbBilledBuyer
    , ppbPrice
    , ppbAuctionTier
    , ppbBuyer

    -- * Creative
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
    , cVideoVastXML
    , cKind
    , cHTMLSnippet
    , cAdvertiserId
    , cRestrictedCategories
    , cDealsStatus
    , cWidth
    , cClickThroughURL
    , cAdTechnologyProviders
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
    , cCreativeStatusIdentityType

    -- * TargetingValueDayPartTargetingDayPart
    , TargetingValueDayPartTargetingDayPart
    , targetingValueDayPartTargetingDayPart
    , tvdptdpEndHour
    , tvdptdpStartHour
    , tvdptdpStartMinute
    , tvdptdpDayOfWeek
    , tvdptdpEndMinute

    -- * DimensionDimensionValue
    , DimensionDimensionValue
    , dimensionDimensionValue
    , ddvName
    , ddvId
    , ddvPercentage

    -- * PretargetingConfigList
    , PretargetingConfigList
    , pretargetingConfigList
    , pclKind
    , pclItems

    -- * TargetingValueDemogAgeCriteria
    , TargetingValueDemogAgeCriteria
    , targetingValueDemogAgeCriteria
    , tvdacDemogAgeCriteriaIds

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
    , aApplyPretargetingToNonGuaranteedDeals
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
    , pcUserIdentifierDataRequired
    , pcMinimumViewabilityDecile
    , pcMobileDevices
    , pcLanguages
    , pcVerticals
    , pcVideoPlayerSizes
    , pcConfigId
    , pcPlacements
    , pcMaximumQps
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
    , tvcsSkippableAdType
    , tvcsCreativeSizeType
    , tvcsAllowedFormats
    , tvcsNATiveTemplate

    -- * DealTermsGuaranteedFixedPriceTermsBillingInfo
    , DealTermsGuaranteedFixedPriceTermsBillingInfo
    , dealTermsGuaranteedFixedPriceTermsBillingInfo
    , dtgfptbiCurrencyConversionTimeMs
    , dtgfptbiDfpLineItemId
    , dtgfptbiPrice
    , dtgfptbiOriginalContractedQuantity

    -- * GetPublisherProFilesByAccountIdResponse
    , GetPublisherProFilesByAccountIdResponse
    , getPublisherProFilesByAccountIdResponse
    , gppfbairProFiles

    -- * Proposal
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

    -- * UpdatePrivateAuctionProposalRequest
    , UpdatePrivateAuctionProposalRequest
    , updatePrivateAuctionProposalRequest
    , upaprExternalDealId
    , upaprUpdateAction
    , upaprNote
    , upaprProposalRevisionNumber

    -- * MobileApplication
    , MobileApplication
    , mobileApplication
    , maExternalAppId
    , maAppStore

    -- * PretargetingConfigDimensionsItem
    , PretargetingConfigDimensionsItem
    , pretargetingConfigDimensionsItem
    , pcdiHeight
    , pcdiWidth

    -- * CreativeCorrectionsItemContextsItem
    , CreativeCorrectionsItemContextsItem
    , creativeCorrectionsItemContextsItem
    , cciciPlatform
    , cciciContextType
    , cciciAuctionType
    , cciciGeoCriteriaId

    -- * PublisherProvidedForecast
    , PublisherProvidedForecast
    , publisherProvidedForecast
    , ppfWeeklyImpressions
    , ppfWeeklyUniques
    , ppfDimensions

    -- * CreativeAdTechnologyProviders
    , CreativeAdTechnologyProviders
    , creativeAdTechnologyProviders
    , catpHasUnidentifiedProvider
    , catpDetectedProviderIds

    -- * TargetingValue
    , TargetingValue
    , targetingValue
    , tvRequestPlatformTargetingValue
    , tvDemogAgeCriteriaValue
    , tvCreativeSizeValue
    , tvStringValue
    , tvLongValue
    , tvDayPartTargetingValue
    , tvDemogGenderCriteriaValue

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
    , pExpectedCpmMicros

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
    , proBilledBuyer
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
    , proCreatorRole
    , proPublisherProFileId
    , proLegacyOfferId
    , proProductId
    , proBuyer

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

    -- * PublisherProFileAPIProto
    , PublisherProFileAPIProto
    , publisherProFileAPIProto
    , ppfapPublisherApps
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
    , ppfapPublisherAppIds
    , ppfapForecastInventory
    , ppfapName
    , ppfapBuyerPitchStatement
    , ppfapPublisherProvidedForecast
    , ppfapIsPublished
    , ppfapPublisherDomains
    , ppfapPublisherProFileId
    , ppfapRateCardInfoLink
    , ppfapTopHeadlines
    , ppfapProgrammaticContact

    -- * MarketplaceDeal
    , MarketplaceDeal
    , marketplaceDeal
    , mdExternalDealId
    , mdBuyerPrivateData
    , mdIsSetupComplete
    , mdWebPropertyCode
    , mdCreationTimeMs
    , mdMakegoodRequestedReason
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

    -- * GetOffersResponse
    , GetOffersResponse
    , getOffersResponse
    , gorProducts

    -- * DealTermsNonGuaranteedAuctionTerms
    , DealTermsNonGuaranteedAuctionTerms
    , dealTermsNonGuaranteedAuctionTerms
    , dtngatReservePricePerBuyers
    , dtngatAutoOptimizePrivateAuction

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
    , dtRubiconNonGuaranteedTerms
    , dtBrandingType
    , dtCrossListedExternalDealIdType
    , dtEstimatedImpressionsPerDay
    , dtSellerTimeZone
    , dtGuaranteedFixedPriceTerms
    , dtDescription

    -- * CreativeDealIds
    , CreativeDealIds
    , creativeDealIds
    , cdiKind
    , cdiDealStatuses

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

    -- * DealServingMetadataDealPauseStatus
    , DealServingMetadataDealPauseStatus
    , dealServingMetadataDealPauseStatus
    , dsmdpsFirstPausedBy
    , dsmdpsBuyerPauseReason
    , dsmdpsHasBuyerPaused
    , dsmdpsSellerPauseReason
    , dsmdpsHasSellerPaused

    -- * DealTermsGuaranteedFixedPriceTerms
    , DealTermsGuaranteedFixedPriceTerms
    , dealTermsGuaranteedFixedPriceTerms
    , dtgfptGuaranteedLooks
    , dtgfptGuaranteedImpressions
    , dtgfptBillingInfo
    , dtgfptFixedPrices
    , dtgfptMinimumDailyLooks
    ) where

import Network.Google.AdExchangeBuyer.Types.Product
import Network.Google.AdExchangeBuyer.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1.4' of the Ad Exchange Buyer API. This contains the host and root path used as a starting point for constructing service requests.
adExchangeBuyerService :: ServiceConfig
adExchangeBuyerService
  = defaultService (ServiceId "adexchangebuyer:v1.4")
      "www.googleapis.com"

-- | Manage your Ad Exchange buyer account configuration
adExchangeBuyerScope :: Proxy '["https://www.googleapis.com/auth/adexchange.buyer"]
adExchangeBuyerScope = Proxy
