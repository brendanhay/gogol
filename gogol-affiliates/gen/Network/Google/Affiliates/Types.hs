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

    -- * CcOfferRewards
    , CcOfferRewards
    , ccOfferRewards
    , corAmount
    , corExpirationMonths
    , corCategory
    , corAdditionalDetails
    , corMaxRewardTier
    , corMinRewardTier

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

    -- * GanPublishersGetRole
    , GanPublishersGetRole (..)

    -- * GanReportsGetEventType
    , GanReportsGetEventType (..)

    -- * GanReportsGetStatus
    , GanReportsGetStatus (..)

    -- * GanLinksListPromotionType
    , GanLinksListPromotionType (..)

    -- * GanLinksListRole
    , GanLinksListRole (..)

    -- * GanEventsListType
    , GanEventsListType (..)

    -- * GanReportsGetReportType
    , GanReportsGetReportType (..)

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

    -- * Money
    , Money
    , money
    , mAmount
    , mCurrencyCode

    -- * GanLinksInsertRole
    , GanLinksInsertRole (..)

    -- * GanAdvertisersListRole
    , GanAdvertisersListRole (..)

    -- * CcOffers
    , CcOffers
    , ccOffers
    , coKind
    , coItems

    -- * GanPublishersListRole
    , GanPublishersListRole (..)

    -- * Advertisers
    , Advertisers
    , advertisers
    , aNextPageToken
    , aKind
    , aItems

    -- * CcOfferDefaultFees
    , CcOfferDefaultFees
    , ccOfferDefaultFees
    , codfRateType
    , codfMinRate
    , codfCategory
    , codfMaxRate

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

    -- * GanLinksListAuthorship
    , GanLinksListAuthorship (..)

    -- * GanLinksGetRole
    , GanLinksGetRole (..)

    -- * CcOfferBonusRewards
    , CcOfferBonusRewards
    , ccOfferBonusRewards
    , cobrAmount
    , cobrDetails

    -- * GanEventsListRole
    , GanEventsListRole (..)

    -- * GanLinksListLinkType
    , GanLinksListLinkType (..)

    -- * GanAdvertisersGetRole
    , GanAdvertisersGetRole (..)

    -- * EventProducts
    , EventProducts
    , eventProducts
    , epSkuName
    , epNetworkFee
    , epQuantity
    , epCategoryName
    , epCategoryId
    , epSku
    , epPublisherFee
    , epUnitPrice
    , epEarnings

    -- * GanAdvertisersListRelationshipStatus
    , GanAdvertisersListRelationshipStatus (..)

    -- * GanCcOffersListProjection
    , GanCcOffersListProjection (..)

    -- * GanReportsGetRole
    , GanReportsGetRole (..)

    -- * Events
    , Events
    , events
    , eveNextPageToken
    , eveKind
    , eveItems

    -- * GanEventsListChargeType
    , GanEventsListChargeType (..)

    -- * GanPublishersListRelationshipStatus
    , GanPublishersListRelationshipStatus (..)

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

    -- * GanLinksListRelationshipStatus
    , GanLinksListRelationshipStatus (..)

    -- * GanEventsListStatus
    , GanEventsListStatus (..)
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
