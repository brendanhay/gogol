{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Affiliates.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Affiliates.Types
    (
    -- * Service URL
      affiliatesURL

    -- * Events
    , Events
    , events
    , eNextPageToken
    , eKind
    , eItems

    -- * CcOfferItemRewards
    , CcOfferItemRewards
    , ccOfferItemRewards
    , coirAmount
    , coirExpirationMonths
    , coirCategory
    , coirAdditionalDetails
    , coirMaxRewardTier
    , coirMinRewardTier

    -- * Alt
    , Alt (..)

    -- * LinksList'Authorship
    , LinksList'Authorship (..)

    -- * Publishers
    , Publishers
    , publishers
    , pNextPageToken
    , pKind
    , pItems

    -- * Advertiser
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

    -- * LinksList'LinkType
    , LinksList'LinkType (..)

    -- * EventsList'Status
    , EventsList'Status (..)

    -- * CcOffer
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

    -- * CcOfferItemDefaultFees
    , CcOfferItemDefaultFees
    , ccOfferItemDefaultFees
    , coidfRateType
    , coidfMinRate
    , coidfCategory
    , coidfMaxRate

    -- * AdvertisersList'RelationshipStatus
    , AdvertisersList'RelationshipStatus (..)

    -- * CcOffersList'Projection
    , CcOffersList'Projection (..)

    -- * ReportsGet'Role
    , ReportsGet'Role (..)

    -- * PublishersGet'Role
    , PublishersGet'Role (..)

    -- * EventsList'ChargeType
    , EventsList'ChargeType (..)

    -- * PublishersList'RelationshipStatus
    , PublishersList'RelationshipStatus (..)

    -- * Links
    , Links
    , links
    , lNextPageToken
    , lKind
    , lItems

    -- * Report
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

    -- * Advertisers
    , Advertisers
    , advertisers
    , advNextPageToken
    , advKind
    , advItems

    -- * LinksList'PromotionType
    , LinksList'PromotionType (..)

    -- * LinksList'Role
    , LinksList'Role (..)

    -- * Event
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

    -- * AdvertisersList'Role
    , AdvertisersList'Role (..)

    -- * LinksInsert'Role
    , LinksInsert'Role (..)

    -- * CcOfferItemBonusRewards
    , CcOfferItemBonusRewards
    , ccOfferItemBonusRewards
    , coibrAmount
    , coibrDetails

    -- * PublishersList'Role
    , PublishersList'Role (..)

    -- * EventItemProducts
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

    -- * LinksList'RelationshipStatus
    , LinksList'RelationshipStatus (..)

    -- * EventsList'Role
    , EventsList'Role (..)

    -- * LinksGet'Role
    , LinksGet'Role (..)

    -- * AdvertisersGet'Role
    , AdvertisersGet'Role (..)

    -- * Link
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

    -- * Money
    , Money
    , money
    , mAmount
    , mCurrencyCode

    -- * CcOffers
    , CcOffers
    , ccOffers
    , cKind
    , cItems

    -- * ReportsGet'EventType
    , ReportsGet'EventType (..)

    -- * ReportsGet'Status
    , ReportsGet'Status (..)

    -- * Publisher
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

    -- * ReportsGet'ReportType
    , ReportsGet'ReportType (..)

    -- * LinkSpecialOffers
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

    -- * EventsList'Type
    , EventsList'Type (..)
    ) where

import           Network.Google.Affiliates.Types.Product
import           Network.Google.Affiliates.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1beta1' of the Google Affiliate Network API.
affiliatesURL :: BaseUrl
affiliatesURL
  = BaseUrl Https
      "https://www.googleapis.com/gan/v1beta1/"
      443
