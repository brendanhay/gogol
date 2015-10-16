{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

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
-- | Lets you have programmatic access to your Google Affiliate Network data.
--
-- /See:/ <https://developers.google.com/affiliate-network/ Google Affiliate Network API Reference>
module Network.Google.Affiliates
    (
    -- * Service Configuration
      affiliatesService

    -- * API Declaration
    , AffiliatesAPI

    -- * Resources

    -- ** GANAdvertisersGet
    , module Network.Google.Resource.GAN.Advertisers.Get

    -- ** GANAdvertisersList
    , module Network.Google.Resource.GAN.Advertisers.List

    -- ** GANCcOffersList
    , module Network.Google.Resource.GAN.CcOffers.List

    -- ** GANEventsList
    , module Network.Google.Resource.GAN.Events.List

    -- ** GANLinksGet
    , module Network.Google.Resource.GAN.Links.Get

    -- ** GANLinksInsert
    , module Network.Google.Resource.GAN.Links.Insert

    -- ** GANLinksList
    , module Network.Google.Resource.GAN.Links.List

    -- ** GANPublishersGet
    , module Network.Google.Resource.GAN.Publishers.Get

    -- ** GANPublishersList
    , module Network.Google.Resource.GAN.Publishers.List

    -- ** GANReportsGet
    , module Network.Google.Resource.GAN.Reports.Get

    -- * Types

    -- ** Event
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

    -- ** PublishersGetRole
    , PublishersGetRole (..)

    -- ** ReportsGetEventType
    , ReportsGetEventType (..)

    -- ** ReportsGetStatus
    , ReportsGetStatus (..)

    -- ** LinksListPromotionType
    , LinksListPromotionType (..)

    -- ** EventsListType
    , EventsListType (..)

    -- ** LinksListRole
    , LinksListRole (..)

    -- ** ReportsGetReportType
    , ReportsGetReportType (..)

    -- ** AdvertisersListRole
    , AdvertisersListRole (..)

    -- ** Money
    , Money
    , money
    , mAmount
    , mCurrencyCode

    -- ** Link
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

    -- ** LinksInsertRole
    , LinksInsertRole (..)

    -- ** CcOffers
    , CcOffers
    , ccOffers
    , coKind
    , coItems

    -- ** PublishersListRole
    , PublishersListRole (..)

    -- ** CcOfferDefaultFeesItem
    , CcOfferDefaultFeesItem
    , ccOfferDefaultFeesItem
    , codfiRateType
    , codfiMinRate
    , codfiCategory
    , codfiMaxRate

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

    -- ** LinksListAuthorship
    , LinksListAuthorship (..)

    -- ** Advertisers
    , Advertisers
    , advertisers
    , aNextPageToken
    , aKind
    , aItems

    -- ** LinksGetRole
    , LinksGetRole (..)

    -- ** LinksListLinkType
    , LinksListLinkType (..)

    -- ** EventsListRole
    , EventsListRole (..)

    -- ** EventProductsItem
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

    -- ** AdvertisersListRelationshipStatus
    , AdvertisersListRelationshipStatus (..)

    -- ** CcOffersListProjection
    , CcOffersListProjection (..)

    -- ** CcOfferBonusRewardsItem
    , CcOfferBonusRewardsItem
    , ccOfferBonusRewardsItem
    , cobriAmount
    , cobriDetails

    -- ** AdvertisersGetRole
    , AdvertisersGetRole (..)

    -- ** EventsListChargeType
    , EventsListChargeType (..)

    -- ** PublishersListRelationshipStatus
    , PublishersListRelationshipStatus (..)

    -- ** ReportsGetRole
    , ReportsGetRole (..)

    -- ** Events
    , Events
    , events
    , eveNextPageToken
    , eveKind
    , eveItems

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

    -- ** Publishers
    , Publishers
    , publishers
    , pNextPageToken
    , pKind
    , pItems

    -- ** Advertiser
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

    -- ** CcOffer
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

    -- ** Links
    , Links
    , links
    , linNextPageToken
    , linKind
    , linItems

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

    -- ** CcOfferRewardsItem
    , CcOfferRewardsItem
    , ccOfferRewardsItem
    , coriAmount
    , coriExpirationMonths
    , coriCategory
    , coriAdditionalDetails
    , coriMaxRewardTier
    , coriMinRewardTier

    -- ** LinksListRelationshipStatus
    , LinksListRelationshipStatus (..)

    -- ** EventsListStatus
    , EventsListStatus (..)
    ) where

import           Network.Google.Affiliates.Types
import           Network.Google.Prelude
import           Network.Google.Resource.GAN.Advertisers.Get
import           Network.Google.Resource.GAN.Advertisers.List
import           Network.Google.Resource.GAN.CcOffers.List
import           Network.Google.Resource.GAN.Events.List
import           Network.Google.Resource.GAN.Links.Get
import           Network.Google.Resource.GAN.Links.Insert
import           Network.Google.Resource.GAN.Links.List
import           Network.Google.Resource.GAN.Publishers.Get
import           Network.Google.Resource.GAN.Publishers.List
import           Network.Google.Resource.GAN.Reports.Get

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Affiliate Network API service.
type AffiliatesAPI =
     ReportsGetResource :<|> CcOffersListResource :<|>
       AdvertisersListResource
       :<|> AdvertisersGetResource
       :<|> EventsListResource
       :<|> PublishersListResource
       :<|> PublishersGetResource
       :<|> LinksInsertResource
       :<|> LinksListResource
       :<|> LinksGetResource
