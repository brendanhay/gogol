{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

-- |
-- Module      : Network.Google.AffiliateNetwork.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AffiliateNetwork.Types
    (
    -- * API Definition
      gan


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

    -- * Advertisers
    , Advertisers
    , advertisers
    , advNextPageToken
    , advKind
    , advItems

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

    -- * CcOfferItemBonusRewards
    , CcOfferItemBonusRewards
    , ccOfferItemBonusRewards
    , coibrAmount
    , coibrDetails

    -- * CcOfferItemDefaultFees
    , CcOfferItemDefaultFees
    , ccOfferItemDefaultFees
    , coidfRateType
    , coidfMinRate
    , coidfCategory
    , coidfMaxRate

    -- * CcOfferItemRewards
    , CcOfferItemRewards
    , ccOfferItemRewards
    , coirAmount
    , coirExpirationMonths
    , coirCategory
    , coirAdditionalDetails
    , coirMaxRewardTier
    , coirMinRewardTier

    -- * CcOffers
    , CcOffers
    , ccOffers
    , cKind
    , cItems

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

    -- * Events
    , Events
    , events
    , eNextPageToken
    , eKind
    , eItems

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

    -- * Links
    , Links
    , links
    , lNextPageToken
    , lKind
    , lItems

    -- * Money
    , Money
    , money
    , mAmount
    , mCurrencyCode

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

    -- * Publishers
    , Publishers
    , publishers
    , pNextPageToken
    , pKind
    , pItems

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
    ) where

import           Network.Google.AffiliateNetwork.Types.Product
import           Network.Google.AffiliateNetwork.Types.Sum
import           Network.Google.Prelude

gan :: a
gan = error "gan"
