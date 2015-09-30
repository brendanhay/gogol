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
    -- * API
      AffiliatesAPI
    , affiliatesAPI
    , affiliatesURL

    -- * Service Methods

    -- * REST Resources

    -- ** GanAdvertisersGet
    , module Network.Google.Resource.Gan.Advertisers.Get

    -- ** GanAdvertisersList
    , module Network.Google.Resource.Gan.Advertisers.List

    -- ** GanCcOffersList
    , module Network.Google.Resource.Gan.CcOffers.List

    -- ** GanEventsList
    , module Network.Google.Resource.Gan.Events.List

    -- ** GanLinksGet
    , module Network.Google.Resource.Gan.Links.Get

    -- ** GanLinksInsert
    , module Network.Google.Resource.Gan.Links.Insert

    -- ** GanLinksList
    , module Network.Google.Resource.Gan.Links.List

    -- ** GanPublishersGet
    , module Network.Google.Resource.Gan.Publishers.Get

    -- ** GanPublishersList
    , module Network.Google.Resource.Gan.Publishers.List

    -- ** GanReportsGet
    , module Network.Google.Resource.Gan.Reports.Get

    -- * Types

    -- ** CcOfferRewards
    , CcOfferRewards
    , ccOfferRewards
    , corAmount
    , corExpirationMonths
    , corCategory
    , corAdditionalDetails
    , corMaxRewardTier
    , corMinRewardTier

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

    -- ** GanPublishersGetRole
    , GanPublishersGetRole (..)

    -- ** GanReportsGetEventType
    , GanReportsGetEventType (..)

    -- ** GanReportsGetStatus
    , GanReportsGetStatus (..)

    -- ** GanLinksListPromotionType
    , GanLinksListPromotionType (..)

    -- ** GanLinksListRole
    , GanLinksListRole (..)

    -- ** GanEventsListType
    , GanEventsListType (..)

    -- ** GanReportsGetReportType
    , GanReportsGetReportType (..)

    -- ** Link
    , Link
    , link
    , lAuthorship
    , lDestinationUrl
    , lClickTrackingUrl
    , lCreateDate
    , lKind
    , lAdvertiserId
    , lEndDate
    , lImageAltText
    , lPromotionType
    , lAvailability
    , lStartDate
    , lName
    , lImpressionTrackingUrl
    , lSpecialOffers
    , lEpcSevenDayAverage
    , lId
    , lEpcNinetyDayAverage
    , lLinkType
    , lIsActive
    , lDuration
    , lDescription

    -- ** Money
    , Money
    , money
    , mAmount
    , mCurrencyCode

    -- ** GanLinksInsertRole
    , GanLinksInsertRole (..)

    -- ** GanAdvertisersListRole
    , GanAdvertisersListRole (..)

    -- ** CcOffers
    , CcOffers
    , ccOffers
    , coKind
    , coItems

    -- ** GanPublishersListRole
    , GanPublishersListRole (..)

    -- ** Advertisers
    , Advertisers
    , advertisers
    , aNextPageToken
    , aKind
    , aItems

    -- ** CcOfferDefaultFees
    , CcOfferDefaultFees
    , ccOfferDefaultFees
    , codfRateType
    , codfMinRate
    , codfCategory
    , codfMaxRate

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

    -- ** GanLinksListAuthorship
    , GanLinksListAuthorship (..)

    -- ** GanLinksGetRole
    , GanLinksGetRole (..)

    -- ** CcOfferBonusRewards
    , CcOfferBonusRewards
    , ccOfferBonusRewards
    , cobrAmount
    , cobrDetails

    -- ** GanEventsListRole
    , GanEventsListRole (..)

    -- ** GanLinksListLinkType
    , GanLinksListLinkType (..)

    -- ** GanAdvertisersGetRole
    , GanAdvertisersGetRole (..)

    -- ** EventProducts
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

    -- ** GanAdvertisersListRelationshipStatus
    , GanAdvertisersListRelationshipStatus (..)

    -- ** GanCcOffersListProjection
    , GanCcOffersListProjection (..)

    -- ** GanReportsGetRole
    , GanReportsGetRole (..)

    -- ** Events
    , Events
    , events
    , eveNextPageToken
    , eveKind
    , eveItems

    -- ** GanEventsListChargeType
    , GanEventsListChargeType (..)

    -- ** GanPublishersListRelationshipStatus
    , GanPublishersListRelationshipStatus (..)

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
    , advLogoUrl
    , advKind
    , advCategory
    , advSiteUrl
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
    , cTrackingUrl
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
    , cImageUrl
    , cCreditLimitMax
    , cLandingPageUrl
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

    -- ** GanLinksListRelationshipStatus
    , GanLinksListRelationshipStatus (..)

    -- ** GanEventsListStatus
    , GanEventsListStatus (..)

    -- ** Alt
    , Alt (..)
    ) where

import           Network.Google.Affiliates.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Gan.Advertisers.Get
import           Network.Google.Resource.Gan.Advertisers.List
import           Network.Google.Resource.Gan.CcOffers.List
import           Network.Google.Resource.Gan.Events.List
import           Network.Google.Resource.Gan.Links.Get
import           Network.Google.Resource.Gan.Links.Insert
import           Network.Google.Resource.Gan.Links.List
import           Network.Google.Resource.Gan.Publishers.Get
import           Network.Google.Resource.Gan.Publishers.List
import           Network.Google.Resource.Gan.Reports.Get

{- $resources
TODO
-}

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

affiliatesAPI :: Proxy AffiliatesAPI
affiliatesAPI = Proxy
