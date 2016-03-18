{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
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
    -- * Service Configuration
      affiliatesService

    -- * Event
    , Event
    , event
    , eModifyDate
    , eStatus
    , eCommissionableSales
    , eChargeId
    , eAdvertiserName
    , eChargeType
    , eMemberId
    , eKind
    , eNetworkFee
    , eAdvertiserId
    , eEventDate
    , eProducts
    , ePublisherFee
    , eType
    , eOrderId
    , ePublisherId
    , eEarnings
    , ePublisherName

    -- * PublishersGetRole
    , PublishersGetRole (..)

    -- * ReportsGetEventType
    , ReportsGetEventType (..)

    -- * ReportsGetStatus
    , ReportsGetStatus (..)

    -- * LinksListPromotionType
    , LinksListPromotionType (..)

    -- * EventsListType
    , EventsListType (..)

    -- * LinksListRole
    , LinksListRole (..)

    -- * ReportsGetReportType
    , ReportsGetReportType (..)

    -- * AdvertisersListRole
    , AdvertisersListRole (..)

    -- * Money
    , Money
    , money
    , mAmount
    , mCurrencyCode

    -- * Link
    , Link
    , link
    , lAuthorship
    , lDestinationURL
    , lClickTrackingURL
    , lCreateDate
    , lKind
    , lAdvertiserId
    , lEndDate
    , lImageAltText
    , lPromotionType
    , lAvailability
    , lStartDate
    , lName
    , lImpressionTrackingURL
    , lSpecialOffers
    , lEpcSevenDayAverage
    , lId
    , lEpcNinetyDayAverage
    , lLinkType
    , lIsActive
    , lDuration
    , lDescription

    -- * LinksInsertRole
    , LinksInsertRole (..)

    -- * CcOffers
    , CcOffers
    , ccOffers
    , coKind
    , coItems

    -- * PublishersListRole
    , PublishersListRole (..)

    -- * CcOfferDefaultFeesItem
    , CcOfferDefaultFeesItem
    , ccOfferDefaultFeesItem
    , codfiRateType
    , codfiMinRate
    , codfiCategory
    , codfiMaxRate

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

    -- * LinksListAuthorship
    , LinksListAuthorship (..)

    -- * Advertisers
    , Advertisers
    , advertisers
    , aNextPageToken
    , aKind
    , aItems

    -- * LinksGetRole
    , LinksGetRole (..)

    -- * LinksListLinkType
    , LinksListLinkType (..)

    -- * EventsListRole
    , EventsListRole (..)

    -- * EventProductsItem
    , EventProductsItem
    , eventProductsItem
    , epiSKUName
    , epiNetworkFee
    , epiQuantity
    , epiCategoryName
    , epiCategoryId
    , epiSKU
    , epiPublisherFee
    , epiUnitPrice
    , epiEarnings

    -- * AdvertisersListRelationshipStatus
    , AdvertisersListRelationshipStatus (..)

    -- * CcOffersListProjection
    , CcOffersListProjection (..)

    -- * CcOfferBonusRewardsItem
    , CcOfferBonusRewardsItem
    , ccOfferBonusRewardsItem
    , cobriAmount
    , cobriDetails

    -- * AdvertisersGetRole
    , AdvertisersGetRole (..)

    -- * EventsListChargeType
    , EventsListChargeType (..)

    -- * PublishersListRelationshipStatus
    , PublishersListRelationshipStatus (..)

    -- * ReportsGetRole
    , ReportsGetRole (..)

    -- * Events
    , Events
    , events
    , eveNextPageToken
    , eveKind
    , eveItems

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

    -- * Publishers
    , Publishers
    , publishers
    , pNextPageToken
    , pKind
    , pItems

    -- * Advertiser
    , Advertiser
    , advertiser
    , advAllowPublisherCreatedLinks
    , advContactPhone
    , advContactEmail
    , advStatus
    , advLogoURL
    , advKind
    , advCategory
    , advSiteURL
    , advPayoutRank
    , advJoinDate
    , advDefaultLinkId
    , advRedirectDomains
    , advName
    , advProductFeedsEnabled
    , advMerchantCenterIds
    , advEpcSevenDayAverage
    , advItem
    , advId
    , advEpcNinetyDayAverage
    , advCommissionDuration
    , advDescription

    -- * CcOffer
    , CcOffer
    , ccOffer
    , cMinimumFinanceCharge
    , cTrackingURL
    , cProhibitedCategories
    , cBalanceComputationMethod
    , cInitialSetupAndProcessingFee
    , cReturnedPaymentFee
    , cAgeMinimumDetails
    , cVariableRatesUpdateFrequency
    , cCreditLimitMin
    , cTravelInsurance
    , cApprovedCategories
    , cAnnualFeeDisplay
    , cOverLimitFee
    , cMaxPurchaseRate
    , cAgeMinimum
    , cVariableRatesLastUpdated
    , cIntroCashAdvanceTerms
    , cIssuerWebsite
    , cLuggageInsurance
    , cKind
    , cRewardsHaveBlackoutDates
    , cDisclaimer
    , cAdditionalCardHolderFee
    , cExistingCustomerOnly
    , cEmergencyInsurance
    , cNetwork
    , cCashAdvanceTerms
    , cStatementCopyFee
    , cAprDisplay
    , cOffersImmediateCashReward
    , cRewards
    , cCardType
    , cImageURL
    , cCreditLimitMax
    , cLandingPageURL
    , cAnnualFee
    , cRewardsExpire
    , cFirstYearAnnualFee
    , cCarRentalInsurance
    , cPurchaseRateAdditionalDetails
    , cOfferId
    , cGracePeriodDisplay
    , cIntroPurchaseTerms
    , cCreditRatingDisplay
    , cBalanceTransferTerms
    , cLatePaymentFee
    , cCardBenefits
    , cIssuer
    , cCardName
    , cMinPurchaseRate
    , cFraudLiability
    , cForeignCurrencyTransactionFee
    , cExtendedWarranty
    , cAnnualRewardMaximum
    , cIssuerId
    , cIntroBalanceTransferTerms
    , cDefaultFees
    , cAdditionalCardBenefits
    , cRewardUnit
    , cBonusRewards
    , cFlightAccidentInsurance
    , cRewardPartner
    , cPurchaseRateType

    -- * Links
    , Links
    , links
    , linNextPageToken
    , linKind
    , linItems

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

    -- * CcOfferRewardsItem
    , CcOfferRewardsItem
    , ccOfferRewardsItem
    , coriAmount
    , coriExpirationMonths
    , coriCategory
    , coriAdditionalDetails
    , coriMaxRewardTier
    , coriMinRewardTier

    -- * LinksListRelationshipStatus
    , LinksListRelationshipStatus (..)

    -- * EventsListStatus
    , EventsListStatus (..)
    ) where

import           Network.Google.Affiliates.Types.Product
import           Network.Google.Affiliates.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1beta1' of the Google Affiliate Network API. This contains the host and root path used as a starting point for constructing service requests.
affiliatesService :: ServiceConfig
affiliatesService
  = defaultService (ServiceId "gan:v1beta1")
      "www.googleapis.com"
