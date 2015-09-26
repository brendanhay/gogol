{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Affiliates
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Lets you have programmatic access to your Google Affiliate Network data.
--
-- /See:/ <https://developers.google.com/affiliate-network/ Google Affiliate Network API Reference>
module Network.Google.Affiliates
    (
    -- * Resources
      Affiliates
    , ReportsAPI
    , ReportsGet
    , CcOffersAPI
    , CcOffersList
    , AdvertisersAPI
    , AdvertisersList
    , AdvertisersGet
    , EventsAPI
    , EventsList
    , PublishersAPI
    , PublishersList
    , PublishersGet
    , LinksAPI
    , LinksInsert
    , LinksList
    , LinksGet

    -- * Types

    -- ** Advertiser
    , Advertiser
    , advertiser
    , aAllowPublisherCreatedLinks
    , aContactPhone
    , aContactEmail
    , aStatus
    , aLogoUrl
    , aKind
    , aCategory
    , aSiteUrl
    , aPayoutRank
    , aJoinDate
    , aDefaultLinkId
    , aRedirectDomains
    , aName
    , aProductFeedsEnabled
    , aMerchantCenterIds
    , aEpcSevenDayAverage
    , aItem
    , aId
    , aEpcNinetyDayAverage
    , aCommissionDuration
    , aDescription

    -- ** Advertisers
    , Advertisers
    , advertisers
    , advNextPageToken
    , advKind
    , advItems

    -- ** CcOffer
    , CcOffer
    , ccOffer
    , coMinimumFinanceCharge
    , coTrackingUrl
    , coProhibitedCategories
    , coBalanceComputationMethod
    , coInitialSetupAndProcessingFee
    , coReturnedPaymentFee
    , coAgeMinimumDetails
    , coVariableRatesUpdateFrequency
    , coCreditLimitMin
    , coTravelInsurance
    , coApprovedCategories
    , coAnnualFeeDisplay
    , coOverLimitFee
    , coMaxPurchaseRate
    , coAgeMinimum
    , coVariableRatesLastUpdated
    , coIntroCashAdvanceTerms
    , coIssuerWebsite
    , coLuggageInsurance
    , coKind
    , coRewardsHaveBlackoutDates
    , coDisclaimer
    , coAdditionalCardHolderFee
    , coExistingCustomerOnly
    , coEmergencyInsurance
    , coNetwork
    , coCashAdvanceTerms
    , coStatementCopyFee
    , coAprDisplay
    , coOffersImmediateCashReward
    , coRewards
    , coCardType
    , coImageUrl
    , coCreditLimitMax
    , coLandingPageUrl
    , coAnnualFee
    , coRewardsExpire
    , coFirstYearAnnualFee
    , coCarRentalInsurance
    , coPurchaseRateAdditionalDetails
    , coOfferId
    , coGracePeriodDisplay
    , coIntroPurchaseTerms
    , coCreditRatingDisplay
    , coBalanceTransferTerms
    , coLatePaymentFee
    , coCardBenefits
    , coIssuer
    , coCardName
    , coMinPurchaseRate
    , coFraudLiability
    , coForeignCurrencyTransactionFee
    , coExtendedWarranty
    , coAnnualRewardMaximum
    , coIssuerId
    , coIntroBalanceTransferTerms
    , coDefaultFees
    , coAdditionalCardBenefits
    , coRewardUnit
    , coBonusRewards
    , coFlightAccidentInsurance
    , coRewardPartner
    , coPurchaseRateType

    -- ** CcOfferItemBonusRewards
    , CcOfferItemBonusRewards
    , ccOfferItemBonusRewards
    , coibrAmount
    , coibrDetails

    -- ** CcOfferItemDefaultFees
    , CcOfferItemDefaultFees
    , ccOfferItemDefaultFees
    , coidfRateType
    , coidfMinRate
    , coidfCategory
    , coidfMaxRate

    -- ** CcOfferItemRewards
    , CcOfferItemRewards
    , ccOfferItemRewards
    , coirAmount
    , coirExpirationMonths
    , coirCategory
    , coirAdditionalDetails
    , coirMaxRewardTier
    , coirMinRewardTier

    -- ** CcOffers
    , CcOffers
    , ccOffers
    , cKind
    , cItems

    -- ** Event
    , Event
    , event
    , eveModifyDate
    , eveStatus
    , eveCommissionableSales
    , eveChargeId
    , eveAdvertiserName
    , eveChargeType
    , eveMemberId
    , eveKind
    , eveNetworkFee
    , eveAdvertiserId
    , eveEventDate
    , eveProducts
    , evePublisherFee
    , eveType
    , eveOrderId
    , evePublisherId
    , eveEarnings
    , evePublisherName

    -- ** EventItemProducts
    , EventItemProducts
    , eventItemProducts
    , eipSkuName
    , eipNetworkFee
    , eipQuantity
    , eipCategoryName
    , eipCategoryId
    , eipSku
    , eipPublisherFee
    , eipUnitPrice
    , eipEarnings

    -- ** Events
    , Events
    , events
    , eNextPageToken
    , eKind
    , eItems

    -- ** Link
    , Link
    , link
    , linAuthorship
    , linDestinationUrl
    , linClickTrackingUrl
    , linCreateDate
    , linKind
    , linAdvertiserId
    , linEndDate
    , linImageAltText
    , linPromotionType
    , linAvailability
    , linStartDate
    , linName
    , linImpressionTrackingUrl
    , linSpecialOffers
    , linEpcSevenDayAverage
    , linId
    , linEpcNinetyDayAverage
    , linLinkType
    , linIsActive
    , linDuration
    , linDescription

    -- ** LinkSpecialOffers
    , LinkSpecialOffers
    , linkSpecialOffers
    , lsoFreeShippingMin
    , lsoPercentOff
    , lsoPriceCut
    , lsoPriceCutMin
    , lsoPercentOffMin
    , lsoFreeShipping
    , lsoPromotionCodes
    , lsoFreeGift

    -- ** Links
    , Links
    , links
    , lNextPageToken
    , lKind
    , lItems

    -- ** Money
    , Money
    , money
    , mAmount
    , mCurrencyCode

    -- ** Publisher
    , Publisher
    , publisher
    , pubStatus
    , pubKind
    , pubPayoutRank
    , pubJoinDate
    , pubClassification
    , pubName
    , pubEpcSevenDayAverage
    , pubItem
    , pubId
    , pubEpcNinetyDayAverage
    , pubSites

    -- ** Publishers
    , Publishers
    , publishers
    , pNextPageToken
    , pKind
    , pItems

    -- ** Report
    , Report
    , report
    , rEndDate
    , rTotalsRows
    , rKind
    , rStartDate
    , rRows
    , rMatchingRowCount
    , rColumnNames
    , rType
    ) where

import           Network.Google.Affiliates.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type Affiliates =
     ReportsAPI :<|> CcOffersAPI :<|> AdvertisersAPI :<|>
       EventsAPI
       :<|> PublishersAPI
       :<|> LinksAPI

type ReportsAPI = ReportsGet

-- | Retrieves a report of the specified type.
type ReportsGet =
     "gan" :> "v1beta1" :> Capture "role" Text :>
       Capture "roleId" Text
       :> "report"
       :> Capture "reportType" Text
       :> QueryParam "status" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "advertiserId" Text
       :> QueryParam "endDate" Text
       :> QueryParam "eventType" Text
       :> QueryParam "startDate" Text
       :> QueryParam "key" Text
       :> QueryParam "calculateTotals" Bool
       :> QueryParam "linkId" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "orderId" Text
       :> QueryParam "publisherId" Text
       :> QueryParam "startIndex" Word32
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type CcOffersAPI = CcOffersList

-- | Retrieves credit card offers for the given publisher.
type CcOffersList =
     "gan" :> "v1beta1" :> "publishers" :>
       Capture "publisher" Text
       :> "ccOffers"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "advertiser" Text
       :> QueryParam "projection" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type AdvertisersAPI =
     AdvertisersList :<|> AdvertisersGet

-- | Retrieves data about all advertisers that the requesting
-- advertiser\/publisher has access to.
type AdvertisersList =
     "gan" :> "v1beta1" :> Capture "role" Text :>
       Capture "roleId" Text
       :> "advertisers"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "relationshipStatus" Text
       :> QueryParam "minSevenDayEpc" Double
       :> QueryParam "minNinetyDayEpc" Double
       :> QueryParam "key" Text
       :> QueryParam "minPayoutRank" Natural
       :> QueryParam "advertiserCategory" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves data about a single advertiser if that the requesting
-- advertiser\/publisher has access to it. Only publishers can lookup
-- advertisers. Advertisers can request information about themselves by
-- omitting the advertiserId query parameter.
type AdvertisersGet =
     "gan" :> "v1beta1" :> Capture "role" Text :>
       Capture "roleId" Text
       :> "advertiser"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "advertiserId" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type EventsAPI = EventsList

-- | Retrieves event data for a given advertiser\/publisher.
type EventsList =
     "gan" :> "v1beta1" :> Capture "role" Text :>
       Capture "roleId" Text
       :> "events"
       :> QueryParam "status" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "eventDateMin" Text
       :> QueryParam "chargeType" Text
       :> QueryParam "memberId" Text
       :> QueryParam "userIp" Text
       :> QueryParam "modifyDateMax" Text
       :> QueryParam "advertiserId" Text
       :> QueryParam "modifyDateMin" Text
       :> QueryParam "eventDateMax" Text
       :> QueryParam "key" Text
       :> QueryParam "sku" Text
       :> QueryParam "linkId" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "type" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "orderId" Text
       :> QueryParam "publisherId" Text
       :> QueryParam "productCategory" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type PublishersAPI =
     PublishersList :<|> PublishersGet

-- | Retrieves data about all publishers that the requesting
-- advertiser\/publisher has access to.
type PublishersList =
     "gan" :> "v1beta1" :> Capture "role" Text :>
       Capture "roleId" Text
       :> "publishers"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "relationshipStatus" Text
       :> QueryParam "minSevenDayEpc" Double
       :> QueryParam "minNinetyDayEpc" Double
       :> QueryParam "key" Text
       :> QueryParam "minPayoutRank" Natural
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "publisherCategory" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves data about a single advertiser if that the requesting
-- advertiser\/publisher has access to it. Only advertisers can look up
-- publishers. Publishers can request information about themselves by
-- omitting the publisherId query parameter.
type PublishersGet =
     "gan" :> "v1beta1" :> Capture "role" Text :>
       Capture "roleId" Text
       :> "publisher"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "publisherId" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type LinksAPI =
     LinksInsert :<|> LinksList :<|> LinksGet

-- | Inserts a new link.
type LinksInsert =
     "gan" :> "v1beta1" :> Capture "role" Text :>
       Capture "roleId" Text
       :> "link"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves all links that match the query parameters.
type LinksList =
     "gan" :> "v1beta1" :> Capture "role" Text :>
       Capture "roleId" Text
       :> "links"
       :> QueryParam "createDateMax" Text
       :> QueryParam "authorship" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "assetSize" Text
       :> QueryParam "userIp" Text
       :> QueryParam "relationshipStatus" Text
       :> QueryParam "advertiserId" Int64
       :> QueryParam "searchText" Text
       :> QueryParam "promotionType" Text
       :> QueryParam "key" Text
       :> QueryParam "createDateMin" Text
       :> QueryParam "linkType" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "startDateMax" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "startDateMin" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves data about a single link if the requesting
-- advertiser\/publisher has access to it. Advertisers can look up their
-- own links. Publishers can look up visible links or links belonging to
-- advertisers they are in a relationship with.
type LinksGet =
     "gan" :> "v1beta1" :> Capture "role" Text :>
       Capture "roleId" Text
       :> "link"
       :> Capture "linkId" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
