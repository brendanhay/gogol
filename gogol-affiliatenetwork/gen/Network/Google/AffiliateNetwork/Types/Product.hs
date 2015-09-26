{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AffiliateNetwork.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AffiliateNetwork.Types.Product where

import           Network.Google.AffiliateNetwork.Types.Sum
import           Network.Google.Prelude

-- | An AdvertiserResource.
--
-- /See:/ 'advertiser' smart constructor.
data Advertiser = Advertiser
    { _aAllowPublisherCreatedLinks :: !(Maybe Bool)
    , _aContactPhone               :: !(Maybe Text)
    , _aContactEmail               :: !(Maybe Text)
    , _aStatus                     :: !(Maybe Text)
    , _aLogoUrl                    :: !(Maybe Text)
    , _aKind                       :: !Text
    , _aCategory                   :: !(Maybe Text)
    , _aSiteUrl                    :: !(Maybe Text)
    , _aPayoutRank                 :: !(Maybe Text)
    , _aJoinDate                   :: !(Maybe UTCTime)
    , _aDefaultLinkId              :: !(Maybe Int64)
    , _aRedirectDomains            :: !(Maybe [Text])
    , _aName                       :: !(Maybe Text)
    , _aProductFeedsEnabled        :: !(Maybe Bool)
    , _aMerchantCenterIds          :: !(Maybe [Int64])
    , _aEpcSevenDayAverage         :: !(Maybe (Maybe Money))
    , _aItem                       :: !(Maybe (Maybe Advertiser))
    , _aId                         :: !(Maybe Int64)
    , _aEpcNinetyDayAverage        :: !(Maybe (Maybe Money))
    , _aCommissionDuration         :: !(Maybe Int32)
    , _aDescription                :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Advertiser' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aAllowPublisherCreatedLinks'
--
-- * 'aContactPhone'
--
-- * 'aContactEmail'
--
-- * 'aStatus'
--
-- * 'aLogoUrl'
--
-- * 'aKind'
--
-- * 'aCategory'
--
-- * 'aSiteUrl'
--
-- * 'aPayoutRank'
--
-- * 'aJoinDate'
--
-- * 'aDefaultLinkId'
--
-- * 'aRedirectDomains'
--
-- * 'aName'
--
-- * 'aProductFeedsEnabled'
--
-- * 'aMerchantCenterIds'
--
-- * 'aEpcSevenDayAverage'
--
-- * 'aItem'
--
-- * 'aId'
--
-- * 'aEpcNinetyDayAverage'
--
-- * 'aCommissionDuration'
--
-- * 'aDescription'
advertiser
    :: Advertiser
advertiser =
    Advertiser
    { _aAllowPublisherCreatedLinks = Nothing
    , _aContactPhone = Nothing
    , _aContactEmail = Nothing
    , _aStatus = Nothing
    , _aLogoUrl = Nothing
    , _aKind = "gan#advertiser"
    , _aCategory = Nothing
    , _aSiteUrl = Nothing
    , _aPayoutRank = Nothing
    , _aJoinDate = Nothing
    , _aDefaultLinkId = Nothing
    , _aRedirectDomains = Nothing
    , _aName = Nothing
    , _aProductFeedsEnabled = Nothing
    , _aMerchantCenterIds = Nothing
    , _aEpcSevenDayAverage = Nothing
    , _aItem = Nothing
    , _aId = Nothing
    , _aEpcNinetyDayAverage = Nothing
    , _aCommissionDuration = Nothing
    , _aDescription = Nothing
    }

-- | True if the advertiser allows publisher created links, otherwise false.
aAllowPublisherCreatedLinks :: Lens' Advertiser (Maybe Bool)
aAllowPublisherCreatedLinks
  = lens _aAllowPublisherCreatedLinks
      (\ s a -> s{_aAllowPublisherCreatedLinks = a})

-- | Phone that this advertiser would like publishers to contact them with.
aContactPhone :: Lens' Advertiser (Maybe Text)
aContactPhone
  = lens _aContactPhone
      (\ s a -> s{_aContactPhone = a})

-- | Email that this advertiser would like publishers to contact them with.
aContactEmail :: Lens' Advertiser (Maybe Text)
aContactEmail
  = lens _aContactEmail
      (\ s a -> s{_aContactEmail = a})

-- | The status of the requesting publisher\'s relationship this advertiser.
aStatus :: Lens' Advertiser (Maybe Text)
aStatus = lens _aStatus (\ s a -> s{_aStatus = a})

-- | URL to the logo this advertiser uses on the Google Affiliate Network.
aLogoUrl :: Lens' Advertiser (Maybe Text)
aLogoUrl = lens _aLogoUrl (\ s a -> s{_aLogoUrl = a})

-- | The kind for an advertiser.
aKind :: Lens' Advertiser Text
aKind = lens _aKind (\ s a -> s{_aKind = a})

-- | Category that this advertiser belongs to. A valid list of categories can
-- be found here:
-- http:\/\/www.google.com\/support\/affiliatenetwork\/advertiser\/bin\/answer.py?hl=en&answer=107581
aCategory :: Lens' Advertiser (Maybe Text)
aCategory
  = lens _aCategory (\ s a -> s{_aCategory = a})

-- | URL of the website this advertiser advertises from.
aSiteUrl :: Lens' Advertiser (Maybe Text)
aSiteUrl = lens _aSiteUrl (\ s a -> s{_aSiteUrl = a})

-- | A rank based on commissions paid to publishers over the past 90 days. A
-- number between 1 and 4 where 4 means the top quartile (most money paid)
-- and 1 means the bottom quartile (least money paid).
aPayoutRank :: Lens' Advertiser (Maybe Text)
aPayoutRank
  = lens _aPayoutRank (\ s a -> s{_aPayoutRank = a})

-- | Date that this advertiser was approved as a Google Affiliate Network
-- advertiser.
aJoinDate :: Lens' Advertiser (Maybe UTCTime)
aJoinDate
  = lens _aJoinDate (\ s a -> s{_aJoinDate = a})

-- | The default link id for this advertiser.
aDefaultLinkId :: Lens' Advertiser (Maybe Int64)
aDefaultLinkId
  = lens _aDefaultLinkId
      (\ s a -> s{_aDefaultLinkId = a})

-- | List of redirect URLs for this advertiser
aRedirectDomains :: Lens' Advertiser [Text]
aRedirectDomains
  = lens _aRedirectDomains
      (\ s a -> s{_aRedirectDomains = a})
      . _Default
      . _Coerce

-- | The name of this advertiser.
aName :: Lens' Advertiser (Maybe Text)
aName = lens _aName (\ s a -> s{_aName = a})

-- | Allows advertisers to submit product listings to Google Product Search.
aProductFeedsEnabled :: Lens' Advertiser (Maybe Bool)
aProductFeedsEnabled
  = lens _aProductFeedsEnabled
      (\ s a -> s{_aProductFeedsEnabled = a})

-- | List of merchant center ids for this advertiser
aMerchantCenterIds :: Lens' Advertiser [Int64]
aMerchantCenterIds
  = lens _aMerchantCenterIds
      (\ s a -> s{_aMerchantCenterIds = a})
      . _Default
      . _Coerce

-- | The sum of fees paid to publishers divided by the total number of clicks
-- over the past seven days. This value should be multiplied by 100 at the
-- time of display.
aEpcSevenDayAverage :: Lens' Advertiser (Maybe (Maybe Money))
aEpcSevenDayAverage
  = lens _aEpcSevenDayAverage
      (\ s a -> s{_aEpcSevenDayAverage = a})

-- | The requested advertiser.
aItem :: Lens' Advertiser (Maybe (Maybe Advertiser))
aItem = lens _aItem (\ s a -> s{_aItem = a})

-- | The ID of this advertiser.
aId :: Lens' Advertiser (Maybe Int64)
aId = lens _aId (\ s a -> s{_aId = a})

-- | The sum of fees paid to publishers divided by the total number of clicks
-- over the past three months. This value should be multiplied by 100 at
-- the time of display.
aEpcNinetyDayAverage :: Lens' Advertiser (Maybe (Maybe Money))
aEpcNinetyDayAverage
  = lens _aEpcNinetyDayAverage
      (\ s a -> s{_aEpcNinetyDayAverage = a})

-- | The longest possible length of a commission (how long the cookies on the
-- customer\'s browser last before they expire).
aCommissionDuration :: Lens' Advertiser (Maybe Int32)
aCommissionDuration
  = lens _aCommissionDuration
      (\ s a -> s{_aCommissionDuration = a})

-- | Description of the website the advertiser advertises from.
aDescription :: Lens' Advertiser (Maybe Text)
aDescription
  = lens _aDescription (\ s a -> s{_aDescription = a})

--
-- /See:/ 'advertisers' smart constructor.
data Advertisers = Advertisers
    { _advNextPageToken :: !(Maybe Text)
    , _advKind          :: !Text
    , _advItems         :: !(Maybe [Maybe Advertiser])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Advertisers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'advNextPageToken'
--
-- * 'advKind'
--
-- * 'advItems'
advertisers
    :: Advertisers
advertisers =
    Advertisers
    { _advNextPageToken = Nothing
    , _advKind = "gan#advertisers"
    , _advItems = Nothing
    }

-- | The \'pageToken\' to pass to the next request to get the next page, if
-- there are more to retrieve.
advNextPageToken :: Lens' Advertisers (Maybe Text)
advNextPageToken
  = lens _advNextPageToken
      (\ s a -> s{_advNextPageToken = a})

-- | The kind for a page of advertisers.
advKind :: Lens' Advertisers Text
advKind = lens _advKind (\ s a -> s{_advKind = a})

-- | The advertiser list.
advItems :: Lens' Advertisers [Maybe Advertiser]
advItems
  = lens _advItems (\ s a -> s{_advItems = a}) .
      _Default
      . _Coerce

-- | A credit card offer. There are many possible result fields. We provide
-- two different views of the data, or \"projections.\" The \"full\"
-- projection includes every result field. And the \"summary\" projection,
-- which is the default, includes a smaller subset of the fields. The
-- fields included in the summary projection are marked as such in their
-- descriptions.
--
-- /See:/ 'ccOffer' smart constructor.
data CcOffer = CcOffer
    { _coMinimumFinanceCharge          :: !(Maybe Text)
    , _coTrackingUrl                   :: !(Maybe Text)
    , _coProhibitedCategories          :: !(Maybe [Text])
    , _coBalanceComputationMethod      :: !(Maybe Text)
    , _coInitialSetupAndProcessingFee  :: !(Maybe Text)
    , _coReturnedPaymentFee            :: !(Maybe Text)
    , _coAgeMinimumDetails             :: !(Maybe Text)
    , _coVariableRatesUpdateFrequency  :: !(Maybe Text)
    , _coCreditLimitMin                :: !(Maybe Double)
    , _coTravelInsurance               :: !(Maybe Text)
    , _coApprovedCategories            :: !(Maybe [Text])
    , _coAnnualFeeDisplay              :: !(Maybe Text)
    , _coOverLimitFee                  :: !(Maybe Text)
    , _coMaxPurchaseRate               :: !(Maybe Double)
    , _coAgeMinimum                    :: !(Maybe Double)
    , _coVariableRatesLastUpdated      :: !(Maybe Text)
    , _coIntroCashAdvanceTerms         :: !(Maybe Text)
    , _coIssuerWebsite                 :: !(Maybe Text)
    , _coLuggageInsurance              :: !(Maybe Text)
    , _coKind                          :: !Text
    , _coRewardsHaveBlackoutDates      :: !(Maybe Bool)
    , _coDisclaimer                    :: !(Maybe Text)
    , _coAdditionalCardHolderFee       :: !(Maybe Text)
    , _coExistingCustomerOnly          :: !(Maybe Bool)
    , _coEmergencyInsurance            :: !(Maybe Text)
    , _coNetwork                       :: !(Maybe Text)
    , _coCashAdvanceTerms              :: !(Maybe Text)
    , _coStatementCopyFee              :: !(Maybe Text)
    , _coAprDisplay                    :: !(Maybe Text)
    , _coOffersImmediateCashReward     :: !(Maybe Bool)
    , _coRewards                       :: !(Maybe [CcOfferItemRewards])
    , _coCardType                      :: !(Maybe Text)
    , _coImageUrl                      :: !(Maybe Text)
    , _coCreditLimitMax                :: !(Maybe Double)
    , _coLandingPageUrl                :: !(Maybe Text)
    , _coAnnualFee                     :: !(Maybe Double)
    , _coRewardsExpire                 :: !(Maybe Bool)
    , _coFirstYearAnnualFee            :: !(Maybe Double)
    , _coCarRentalInsurance            :: !(Maybe Text)
    , _coPurchaseRateAdditionalDetails :: !(Maybe Text)
    , _coOfferId                       :: !(Maybe Text)
    , _coGracePeriodDisplay            :: !(Maybe Text)
    , _coIntroPurchaseTerms            :: !(Maybe Text)
    , _coCreditRatingDisplay           :: !(Maybe Text)
    , _coBalanceTransferTerms          :: !(Maybe Text)
    , _coLatePaymentFee                :: !(Maybe Text)
    , _coCardBenefits                  :: !(Maybe [Text])
    , _coIssuer                        :: !(Maybe Text)
    , _coCardName                      :: !(Maybe Text)
    , _coMinPurchaseRate               :: !(Maybe Double)
    , _coFraudLiability                :: !(Maybe Text)
    , _coForeignCurrencyTransactionFee :: !(Maybe Text)
    , _coExtendedWarranty              :: !(Maybe Text)
    , _coAnnualRewardMaximum           :: !(Maybe Double)
    , _coIssuerId                      :: !(Maybe Text)
    , _coIntroBalanceTransferTerms     :: !(Maybe Text)
    , _coDefaultFees                   :: !(Maybe [CcOfferItemDefaultFees])
    , _coAdditionalCardBenefits        :: !(Maybe [Text])
    , _coRewardUnit                    :: !(Maybe Text)
    , _coBonusRewards                  :: !(Maybe [CcOfferItemBonusRewards])
    , _coFlightAccidentInsurance       :: !(Maybe Text)
    , _coRewardPartner                 :: !(Maybe Text)
    , _coPurchaseRateType              :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CcOffer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'coMinimumFinanceCharge'
--
-- * 'coTrackingUrl'
--
-- * 'coProhibitedCategories'
--
-- * 'coBalanceComputationMethod'
--
-- * 'coInitialSetupAndProcessingFee'
--
-- * 'coReturnedPaymentFee'
--
-- * 'coAgeMinimumDetails'
--
-- * 'coVariableRatesUpdateFrequency'
--
-- * 'coCreditLimitMin'
--
-- * 'coTravelInsurance'
--
-- * 'coApprovedCategories'
--
-- * 'coAnnualFeeDisplay'
--
-- * 'coOverLimitFee'
--
-- * 'coMaxPurchaseRate'
--
-- * 'coAgeMinimum'
--
-- * 'coVariableRatesLastUpdated'
--
-- * 'coIntroCashAdvanceTerms'
--
-- * 'coIssuerWebsite'
--
-- * 'coLuggageInsurance'
--
-- * 'coKind'
--
-- * 'coRewardsHaveBlackoutDates'
--
-- * 'coDisclaimer'
--
-- * 'coAdditionalCardHolderFee'
--
-- * 'coExistingCustomerOnly'
--
-- * 'coEmergencyInsurance'
--
-- * 'coNetwork'
--
-- * 'coCashAdvanceTerms'
--
-- * 'coStatementCopyFee'
--
-- * 'coAprDisplay'
--
-- * 'coOffersImmediateCashReward'
--
-- * 'coRewards'
--
-- * 'coCardType'
--
-- * 'coImageUrl'
--
-- * 'coCreditLimitMax'
--
-- * 'coLandingPageUrl'
--
-- * 'coAnnualFee'
--
-- * 'coRewardsExpire'
--
-- * 'coFirstYearAnnualFee'
--
-- * 'coCarRentalInsurance'
--
-- * 'coPurchaseRateAdditionalDetails'
--
-- * 'coOfferId'
--
-- * 'coGracePeriodDisplay'
--
-- * 'coIntroPurchaseTerms'
--
-- * 'coCreditRatingDisplay'
--
-- * 'coBalanceTransferTerms'
--
-- * 'coLatePaymentFee'
--
-- * 'coCardBenefits'
--
-- * 'coIssuer'
--
-- * 'coCardName'
--
-- * 'coMinPurchaseRate'
--
-- * 'coFraudLiability'
--
-- * 'coForeignCurrencyTransactionFee'
--
-- * 'coExtendedWarranty'
--
-- * 'coAnnualRewardMaximum'
--
-- * 'coIssuerId'
--
-- * 'coIntroBalanceTransferTerms'
--
-- * 'coDefaultFees'
--
-- * 'coAdditionalCardBenefits'
--
-- * 'coRewardUnit'
--
-- * 'coBonusRewards'
--
-- * 'coFlightAccidentInsurance'
--
-- * 'coRewardPartner'
--
-- * 'coPurchaseRateType'
ccOffer
    :: CcOffer
ccOffer =
    CcOffer
    { _coMinimumFinanceCharge = Nothing
    , _coTrackingUrl = Nothing
    , _coProhibitedCategories = Nothing
    , _coBalanceComputationMethod = Nothing
    , _coInitialSetupAndProcessingFee = Nothing
    , _coReturnedPaymentFee = Nothing
    , _coAgeMinimumDetails = Nothing
    , _coVariableRatesUpdateFrequency = Nothing
    , _coCreditLimitMin = Nothing
    , _coTravelInsurance = Nothing
    , _coApprovedCategories = Nothing
    , _coAnnualFeeDisplay = Nothing
    , _coOverLimitFee = Nothing
    , _coMaxPurchaseRate = Nothing
    , _coAgeMinimum = Nothing
    , _coVariableRatesLastUpdated = Nothing
    , _coIntroCashAdvanceTerms = Nothing
    , _coIssuerWebsite = Nothing
    , _coLuggageInsurance = Nothing
    , _coKind = "gan#ccOffer"
    , _coRewardsHaveBlackoutDates = Nothing
    , _coDisclaimer = Nothing
    , _coAdditionalCardHolderFee = Nothing
    , _coExistingCustomerOnly = Nothing
    , _coEmergencyInsurance = Nothing
    , _coNetwork = Nothing
    , _coCashAdvanceTerms = Nothing
    , _coStatementCopyFee = Nothing
    , _coAprDisplay = Nothing
    , _coOffersImmediateCashReward = Nothing
    , _coRewards = Nothing
    , _coCardType = Nothing
    , _coImageUrl = Nothing
    , _coCreditLimitMax = Nothing
    , _coLandingPageUrl = Nothing
    , _coAnnualFee = Nothing
    , _coRewardsExpire = Nothing
    , _coFirstYearAnnualFee = Nothing
    , _coCarRentalInsurance = Nothing
    , _coPurchaseRateAdditionalDetails = Nothing
    , _coOfferId = Nothing
    , _coGracePeriodDisplay = Nothing
    , _coIntroPurchaseTerms = Nothing
    , _coCreditRatingDisplay = Nothing
    , _coBalanceTransferTerms = Nothing
    , _coLatePaymentFee = Nothing
    , _coCardBenefits = Nothing
    , _coIssuer = Nothing
    , _coCardName = Nothing
    , _coMinPurchaseRate = Nothing
    , _coFraudLiability = Nothing
    , _coForeignCurrencyTransactionFee = Nothing
    , _coExtendedWarranty = Nothing
    , _coAnnualRewardMaximum = Nothing
    , _coIssuerId = Nothing
    , _coIntroBalanceTransferTerms = Nothing
    , _coDefaultFees = Nothing
    , _coAdditionalCardBenefits = Nothing
    , _coRewardUnit = Nothing
    , _coBonusRewards = Nothing
    , _coFlightAccidentInsurance = Nothing
    , _coRewardPartner = Nothing
    , _coPurchaseRateType = Nothing
    }

-- | Text describing how much missing the grace period will cost.
coMinimumFinanceCharge :: Lens' CcOffer (Maybe Text)
coMinimumFinanceCharge
  = lens _coMinimumFinanceCharge
      (\ s a -> s{_coMinimumFinanceCharge = a})

-- | The link to ping to register a click on this offer. A summary field.
coTrackingUrl :: Lens' CcOffer (Maybe Text)
coTrackingUrl
  = lens _coTrackingUrl
      (\ s a -> s{_coTrackingUrl = a})

-- | Categories in which the issuer does not wish the card to be displayed. A
-- summary field.
coProhibitedCategories :: Lens' CcOffer [Text]
coProhibitedCategories
  = lens _coProhibitedCategories
      (\ s a -> s{_coProhibitedCategories = a})
      . _Default
      . _Coerce

-- | Text describing how the balance is computed. A summary field.
coBalanceComputationMethod :: Lens' CcOffer (Maybe Text)
coBalanceComputationMethod
  = lens _coBalanceComputationMethod
      (\ s a -> s{_coBalanceComputationMethod = a})

-- | Fee for setting up the card.
coInitialSetupAndProcessingFee :: Lens' CcOffer (Maybe Text)
coInitialSetupAndProcessingFee
  = lens _coInitialSetupAndProcessingFee
      (\ s a -> s{_coInitialSetupAndProcessingFee = a})

-- | Text describing the fee for a payment that doesn\'t clear. A summary
-- field.
coReturnedPaymentFee :: Lens' CcOffer (Maybe Text)
coReturnedPaymentFee
  = lens _coReturnedPaymentFee
      (\ s a -> s{_coReturnedPaymentFee = a})

-- | Text describing the details of the age minimum restriction.
coAgeMinimumDetails :: Lens' CcOffer (Maybe Text)
coAgeMinimumDetails
  = lens _coAgeMinimumDetails
      (\ s a -> s{_coAgeMinimumDetails = a})

-- | How often variable rates are updated.
coVariableRatesUpdateFrequency :: Lens' CcOffer (Maybe Text)
coVariableRatesUpdateFrequency
  = lens _coVariableRatesUpdateFrequency
      (\ s a -> s{_coVariableRatesUpdateFrequency = a})

-- | The low end for credit limits the issuer imposes on recipients of this
-- card.
coCreditLimitMin :: Lens' CcOffer (Maybe Double)
coCreditLimitMin
  = lens _coCreditLimitMin
      (\ s a -> s{_coCreditLimitMin = a})

-- | If you get coverage when you use the card for the given activity, this
-- field describes it.
coTravelInsurance :: Lens' CcOffer (Maybe Text)
coTravelInsurance
  = lens _coTravelInsurance
      (\ s a -> s{_coTravelInsurance = a})

-- | Possible categories for this card, eg \"Low Interest\" or \"Good.\" A
-- summary field.
coApprovedCategories :: Lens' CcOffer [Text]
coApprovedCategories
  = lens _coApprovedCategories
      (\ s a -> s{_coApprovedCategories = a})
      . _Default
      . _Coerce

-- | Text describing the annual fee, including any difference for the first
-- year. A summary field.
coAnnualFeeDisplay :: Lens' CcOffer (Maybe Text)
coAnnualFeeDisplay
  = lens _coAnnualFeeDisplay
      (\ s a -> s{_coAnnualFeeDisplay = a})

-- | Fee for exceeding the card\'s charge limit.
coOverLimitFee :: Lens' CcOffer (Maybe Text)
coOverLimitFee
  = lens _coOverLimitFee
      (\ s a -> s{_coOverLimitFee = a})

-- | The highest interest rate the issuer charges on this card. Expressed as
-- an absolute number, not as a percentage.
coMaxPurchaseRate :: Lens' CcOffer (Maybe Double)
coMaxPurchaseRate
  = lens _coMaxPurchaseRate
      (\ s a -> s{_coMaxPurchaseRate = a})

-- | The youngest a recipient of this card may be.
coAgeMinimum :: Lens' CcOffer (Maybe Double)
coAgeMinimum
  = lens _coAgeMinimum (\ s a -> s{_coAgeMinimum = a})

-- | When variable rates were last updated.
coVariableRatesLastUpdated :: Lens' CcOffer (Maybe Text)
coVariableRatesLastUpdated
  = lens _coVariableRatesLastUpdated
      (\ s a -> s{_coVariableRatesLastUpdated = a})

-- | Text describing the terms for introductory period cash advances. A
-- summary field.
coIntroCashAdvanceTerms :: Lens' CcOffer (Maybe Text)
coIntroCashAdvanceTerms
  = lens _coIntroCashAdvanceTerms
      (\ s a -> s{_coIntroCashAdvanceTerms = a})

-- | The generic link to the issuer\'s site.
coIssuerWebsite :: Lens' CcOffer (Maybe Text)
coIssuerWebsite
  = lens _coIssuerWebsite
      (\ s a -> s{_coIssuerWebsite = a})

-- | If you get coverage when you use the card for the given activity, this
-- field describes it.
coLuggageInsurance :: Lens' CcOffer (Maybe Text)
coLuggageInsurance
  = lens _coLuggageInsurance
      (\ s a -> s{_coLuggageInsurance = a})

-- | The kind for one credit card offer. A summary field.
coKind :: Lens' CcOffer Text
coKind = lens _coKind (\ s a -> s{_coKind = a})

-- | For airline miles rewards, tells whether blackout dates apply to the
-- miles.
coRewardsHaveBlackoutDates :: Lens' CcOffer (Maybe Bool)
coRewardsHaveBlackoutDates
  = lens _coRewardsHaveBlackoutDates
      (\ s a -> s{_coRewardsHaveBlackoutDates = a})

-- | A notice that, if present, is referenced via an asterisk by many of the
-- other summary fields. If this field is present, it will always start
-- with an asterisk (\"*\"), and must be prominently displayed with the
-- offer. A summary field.
coDisclaimer :: Lens' CcOffer (Maybe Text)
coDisclaimer
  = lens _coDisclaimer (\ s a -> s{_coDisclaimer = a})

-- | Any extra fees levied on card holders.
coAdditionalCardHolderFee :: Lens' CcOffer (Maybe Text)
coAdditionalCardHolderFee
  = lens _coAdditionalCardHolderFee
      (\ s a -> s{_coAdditionalCardHolderFee = a})

-- | Whether this card is only available to existing customers of the issuer.
coExistingCustomerOnly :: Lens' CcOffer (Maybe Bool)
coExistingCustomerOnly
  = lens _coExistingCustomerOnly
      (\ s a -> s{_coExistingCustomerOnly = a})

-- | If you get coverage when you use the card for the given activity, this
-- field describes it.
coEmergencyInsurance :: Lens' CcOffer (Maybe Text)
coEmergencyInsurance
  = lens _coEmergencyInsurance
      (\ s a -> s{_coEmergencyInsurance = a})

-- | Which network (eg Visa) the card belongs to. A summary field.
coNetwork :: Lens' CcOffer (Maybe Text)
coNetwork
  = lens _coNetwork (\ s a -> s{_coNetwork = a})

-- | Text describing the terms for cash advances. A summary field.
coCashAdvanceTerms :: Lens' CcOffer (Maybe Text)
coCashAdvanceTerms
  = lens _coCashAdvanceTerms
      (\ s a -> s{_coCashAdvanceTerms = a})

-- | Fee for requesting a copy of your statement.
coStatementCopyFee :: Lens' CcOffer (Maybe Text)
coStatementCopyFee
  = lens _coStatementCopyFee
      (\ s a -> s{_coStatementCopyFee = a})

-- | Text describing the purchase APR. A summary field.
coAprDisplay :: Lens' CcOffer (Maybe Text)
coAprDisplay
  = lens _coAprDisplay (\ s a -> s{_coAprDisplay = a})

-- | Whether a cash reward program lets you get cash back sooner than end of
-- year or other longish period.
coOffersImmediateCashReward :: Lens' CcOffer (Maybe Bool)
coOffersImmediateCashReward
  = lens _coOffersImmediateCashReward
      (\ s a -> s{_coOffersImmediateCashReward = a})

-- | For cards with rewards programs, detailed rules about how the program
-- works.
coRewards :: Lens' CcOffer [CcOfferItemRewards]
coRewards
  = lens _coRewards (\ s a -> s{_coRewards = a}) .
      _Default
      . _Coerce

-- | What kind of credit card this is, for example secured or unsecured.
coCardType :: Lens' CcOffer (Maybe Text)
coCardType
  = lens _coCardType (\ s a -> s{_coCardType = a})

-- | The link to the image of the card that is shown on Connect Commerce. A
-- summary field.
coImageUrl :: Lens' CcOffer (Maybe Text)
coImageUrl
  = lens _coImageUrl (\ s a -> s{_coImageUrl = a})

-- | The high end for credit limits the issuer imposes on recipients of this
-- card.
coCreditLimitMax :: Lens' CcOffer (Maybe Double)
coCreditLimitMax
  = lens _coCreditLimitMax
      (\ s a -> s{_coCreditLimitMax = a})

-- | The link to the issuer\'s page for this card. A summary field.
coLandingPageUrl :: Lens' CcOffer (Maybe Text)
coLandingPageUrl
  = lens _coLandingPageUrl
      (\ s a -> s{_coLandingPageUrl = a})

-- | The ongoing annual fee, in dollars.
coAnnualFee :: Lens' CcOffer (Maybe Double)
coAnnualFee
  = lens _coAnnualFee (\ s a -> s{_coAnnualFee = a})

-- | Whether accumulated rewards ever expire.
coRewardsExpire :: Lens' CcOffer (Maybe Bool)
coRewardsExpire
  = lens _coRewardsExpire
      (\ s a -> s{_coRewardsExpire = a})

-- | The annual fee for the first year, if different from the ongoing fee.
-- Optional.
coFirstYearAnnualFee :: Lens' CcOffer (Maybe Double)
coFirstYearAnnualFee
  = lens _coFirstYearAnnualFee
      (\ s a -> s{_coFirstYearAnnualFee = a})

-- | If you get coverage when you use the card for the given activity, this
-- field describes it.
coCarRentalInsurance :: Lens' CcOffer (Maybe Text)
coCarRentalInsurance
  = lens _coCarRentalInsurance
      (\ s a -> s{_coCarRentalInsurance = a})

-- | Text describing any additional details for the purchase rate. A summary
-- field.
coPurchaseRateAdditionalDetails :: Lens' CcOffer (Maybe Text)
coPurchaseRateAdditionalDetails
  = lens _coPurchaseRateAdditionalDetails
      (\ s a -> s{_coPurchaseRateAdditionalDetails = a})

-- | This offer\'s ID. A summary field.
coOfferId :: Lens' CcOffer (Maybe Text)
coOfferId
  = lens _coOfferId (\ s a -> s{_coOfferId = a})

-- | Text describing the grace period before finance charges apply. A summary
-- field.
coGracePeriodDisplay :: Lens' CcOffer (Maybe Text)
coGracePeriodDisplay
  = lens _coGracePeriodDisplay
      (\ s a -> s{_coGracePeriodDisplay = a})

-- | Text describing the terms for introductory period purchases. A summary
-- field.
coIntroPurchaseTerms :: Lens' CcOffer (Maybe Text)
coIntroPurchaseTerms
  = lens _coIntroPurchaseTerms
      (\ s a -> s{_coIntroPurchaseTerms = a})

-- | Text describing the credit ratings required for recipients of this card,
-- for example \"Excellent\/Good.\" A summary field.
coCreditRatingDisplay :: Lens' CcOffer (Maybe Text)
coCreditRatingDisplay
  = lens _coCreditRatingDisplay
      (\ s a -> s{_coCreditRatingDisplay = a})

-- | Text describing the terms for balance transfers. A summary field.
coBalanceTransferTerms :: Lens' CcOffer (Maybe Text)
coBalanceTransferTerms
  = lens _coBalanceTransferTerms
      (\ s a -> s{_coBalanceTransferTerms = a})

-- | Text describing how much a late payment will cost, eg \"up to $35.\" A
-- summary field.
coLatePaymentFee :: Lens' CcOffer (Maybe Text)
coLatePaymentFee
  = lens _coLatePaymentFee
      (\ s a -> s{_coLatePaymentFee = a})

-- | A list of what the issuer thinks are the most important benefits of the
-- card. Usually summarizes the rewards program, if there is one. A summary
-- field.
coCardBenefits :: Lens' CcOffer [Text]
coCardBenefits
  = lens _coCardBenefits
      (\ s a -> s{_coCardBenefits = a})
      . _Default
      . _Coerce

-- | Name of card issuer. A summary field.
coIssuer :: Lens' CcOffer (Maybe Text)
coIssuer = lens _coIssuer (\ s a -> s{_coIssuer = a})

-- | The issuer\'s name for the card, including any trademark or service mark
-- designators. A summary field.
coCardName :: Lens' CcOffer (Maybe Text)
coCardName
  = lens _coCardName (\ s a -> s{_coCardName = a})

-- | The lowest interest rate the issuer charges on this card. Expressed as
-- an absolute number, not as a percentage.
coMinPurchaseRate :: Lens' CcOffer (Maybe Double)
coMinPurchaseRate
  = lens _coMinPurchaseRate
      (\ s a -> s{_coMinPurchaseRate = a})

-- | If you get coverage when you use the card for the given activity, this
-- field describes it.
coFraudLiability :: Lens' CcOffer (Maybe Text)
coFraudLiability
  = lens _coFraudLiability
      (\ s a -> s{_coFraudLiability = a})

-- | Fee for each transaction involving a foreign currency.
coForeignCurrencyTransactionFee :: Lens' CcOffer (Maybe Text)
coForeignCurrencyTransactionFee
  = lens _coForeignCurrencyTransactionFee
      (\ s a -> s{_coForeignCurrencyTransactionFee = a})

-- | If you get coverage when you use the card for the given activity, this
-- field describes it.
coExtendedWarranty :: Lens' CcOffer (Maybe Text)
coExtendedWarranty
  = lens _coExtendedWarranty
      (\ s a -> s{_coExtendedWarranty = a})

-- | The largest number of units you may accumulate in a year.
coAnnualRewardMaximum :: Lens' CcOffer (Maybe Double)
coAnnualRewardMaximum
  = lens _coAnnualRewardMaximum
      (\ s a -> s{_coAnnualRewardMaximum = a})

-- | The Google Affiliate Network ID of the advertiser making this offer.
coIssuerId :: Lens' CcOffer (Maybe Text)
coIssuerId
  = lens _coIssuerId (\ s a -> s{_coIssuerId = a})

-- | Text describing the terms for introductory period balance transfers. A
-- summary field.
coIntroBalanceTransferTerms :: Lens' CcOffer (Maybe Text)
coIntroBalanceTransferTerms
  = lens _coIntroBalanceTransferTerms
      (\ s a -> s{_coIntroBalanceTransferTerms = a})

-- | Fees for defaulting on your payments.
coDefaultFees :: Lens' CcOffer [CcOfferItemDefaultFees]
coDefaultFees
  = lens _coDefaultFees
      (\ s a -> s{_coDefaultFees = a})
      . _Default
      . _Coerce

-- | More marketing copy about the card\'s benefits. A summary field.
coAdditionalCardBenefits :: Lens' CcOffer [Text]
coAdditionalCardBenefits
  = lens _coAdditionalCardBenefits
      (\ s a -> s{_coAdditionalCardBenefits = a})
      . _Default
      . _Coerce

-- | For cards with rewards programs, the unit of reward. For example, miles,
-- cash back, points.
coRewardUnit :: Lens' CcOffer (Maybe Text)
coRewardUnit
  = lens _coRewardUnit (\ s a -> s{_coRewardUnit = a})

-- | For cards with rewards programs, extra circumstances whereby additional
-- rewards may be granted.
coBonusRewards :: Lens' CcOffer [CcOfferItemBonusRewards]
coBonusRewards
  = lens _coBonusRewards
      (\ s a -> s{_coBonusRewards = a})
      . _Default
      . _Coerce

-- | If you get coverage when you use the card for the given activity, this
-- field describes it.
coFlightAccidentInsurance :: Lens' CcOffer (Maybe Text)
coFlightAccidentInsurance
  = lens _coFlightAccidentInsurance
      (\ s a -> s{_coFlightAccidentInsurance = a})

-- | The company that redeems the rewards, if different from the issuer.
coRewardPartner :: Lens' CcOffer (Maybe Text)
coRewardPartner
  = lens _coRewardPartner
      (\ s a -> s{_coRewardPartner = a})

-- | Fixed or variable.
coPurchaseRateType :: Lens' CcOffer (Maybe Text)
coPurchaseRateType
  = lens _coPurchaseRateType
      (\ s a -> s{_coPurchaseRateType = a})

--
-- /See:/ 'ccOfferItemBonusRewards' smart constructor.
data CcOfferItemBonusRewards = CcOfferItemBonusRewards
    { _coibrAmount  :: !(Maybe Double)
    , _coibrDetails :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CcOfferItemBonusRewards' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'coibrAmount'
--
-- * 'coibrDetails'
ccOfferItemBonusRewards
    :: CcOfferItemBonusRewards
ccOfferItemBonusRewards =
    CcOfferItemBonusRewards
    { _coibrAmount = Nothing
    , _coibrDetails = Nothing
    }

-- | How many units of reward will be granted.
coibrAmount :: Lens' CcOfferItemBonusRewards (Maybe Double)
coibrAmount
  = lens _coibrAmount (\ s a -> s{_coibrAmount = a})

-- | The circumstances under which this rule applies, for example, booking a
-- flight via Orbitz.
coibrDetails :: Lens' CcOfferItemBonusRewards (Maybe Text)
coibrDetails
  = lens _coibrDetails (\ s a -> s{_coibrDetails = a})

--
-- /See:/ 'ccOfferItemDefaultFees' smart constructor.
data CcOfferItemDefaultFees = CcOfferItemDefaultFees
    { _coidfRateType :: !(Maybe Text)
    , _coidfMinRate  :: !(Maybe Double)
    , _coidfCategory :: !(Maybe Text)
    , _coidfMaxRate  :: !(Maybe Double)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CcOfferItemDefaultFees' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'coidfRateType'
--
-- * 'coidfMinRate'
--
-- * 'coidfCategory'
--
-- * 'coidfMaxRate'
ccOfferItemDefaultFees
    :: CcOfferItemDefaultFees
ccOfferItemDefaultFees =
    CcOfferItemDefaultFees
    { _coidfRateType = Nothing
    , _coidfMinRate = Nothing
    , _coidfCategory = Nothing
    , _coidfMaxRate = Nothing
    }

-- | Fixed or variable.
coidfRateType :: Lens' CcOfferItemDefaultFees (Maybe Text)
coidfRateType
  = lens _coidfRateType
      (\ s a -> s{_coidfRateType = a})

-- | The lowest rate the issuer may charge for defaulting on debt in this
-- category. Expressed as an absolute number, not as a percentage.
coidfMinRate :: Lens' CcOfferItemDefaultFees (Maybe Double)
coidfMinRate
  = lens _coidfMinRate (\ s a -> s{_coidfMinRate = a})

-- | The type of charge, for example Purchases.
coidfCategory :: Lens' CcOfferItemDefaultFees (Maybe Text)
coidfCategory
  = lens _coidfCategory
      (\ s a -> s{_coidfCategory = a})

-- | The highest rate the issuer may charge for defaulting on debt in this
-- category. Expressed as an absolute number, not as a percentage.
coidfMaxRate :: Lens' CcOfferItemDefaultFees (Maybe Double)
coidfMaxRate
  = lens _coidfMaxRate (\ s a -> s{_coidfMaxRate = a})

--
-- /See:/ 'ccOfferItemRewards' smart constructor.
data CcOfferItemRewards = CcOfferItemRewards
    { _coirAmount            :: !(Maybe Double)
    , _coirExpirationMonths  :: !(Maybe Double)
    , _coirCategory          :: !(Maybe Text)
    , _coirAdditionalDetails :: !(Maybe Text)
    , _coirMaxRewardTier     :: !(Maybe Double)
    , _coirMinRewardTier     :: !(Maybe Double)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CcOfferItemRewards' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'coirAmount'
--
-- * 'coirExpirationMonths'
--
-- * 'coirCategory'
--
-- * 'coirAdditionalDetails'
--
-- * 'coirMaxRewardTier'
--
-- * 'coirMinRewardTier'
ccOfferItemRewards
    :: CcOfferItemRewards
ccOfferItemRewards =
    CcOfferItemRewards
    { _coirAmount = Nothing
    , _coirExpirationMonths = Nothing
    , _coirCategory = Nothing
    , _coirAdditionalDetails = Nothing
    , _coirMaxRewardTier = Nothing
    , _coirMinRewardTier = Nothing
    }

-- | The number of units rewarded per purchase dollar.
coirAmount :: Lens' CcOfferItemRewards (Maybe Double)
coirAmount
  = lens _coirAmount (\ s a -> s{_coirAmount = a})

-- | How long rewards granted by this rule last.
coirExpirationMonths :: Lens' CcOfferItemRewards (Maybe Double)
coirExpirationMonths
  = lens _coirExpirationMonths
      (\ s a -> s{_coirExpirationMonths = a})

-- | The kind of purchases covered by this rule.
coirCategory :: Lens' CcOfferItemRewards (Maybe Text)
coirCategory
  = lens _coirCategory (\ s a -> s{_coirCategory = a})

-- | Other limits, for example, if this rule only applies during an
-- introductory period.
coirAdditionalDetails :: Lens' CcOfferItemRewards (Maybe Text)
coirAdditionalDetails
  = lens _coirAdditionalDetails
      (\ s a -> s{_coirAdditionalDetails = a})

-- | The maximum purchase amount in the given category for this rule to
-- apply.
coirMaxRewardTier :: Lens' CcOfferItemRewards (Maybe Double)
coirMaxRewardTier
  = lens _coirMaxRewardTier
      (\ s a -> s{_coirMaxRewardTier = a})

-- | The minimum purchase amount in the given category before this rule
-- applies.
coirMinRewardTier :: Lens' CcOfferItemRewards (Maybe Double)
coirMinRewardTier
  = lens _coirMinRewardTier
      (\ s a -> s{_coirMinRewardTier = a})

--
-- /See:/ 'ccOffers' smart constructor.
data CcOffers = CcOffers
    { _cKind  :: !Text
    , _cItems :: !(Maybe [Maybe CcOffer])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CcOffers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cKind'
--
-- * 'cItems'
ccOffers
    :: CcOffers
ccOffers =
    CcOffers
    { _cKind = "gan#ccOffers"
    , _cItems = Nothing
    }

-- | The kind for a page of credit card offers.
cKind :: Lens' CcOffers Text
cKind = lens _cKind (\ s a -> s{_cKind = a})

-- | The credit card offers.
cItems :: Lens' CcOffers [Maybe CcOffer]
cItems
  = lens _cItems (\ s a -> s{_cItems = a}) . _Default .
      _Coerce

-- | An EventResource.
--
-- /See:/ 'event' smart constructor.
data Event = Event
    { _eveModifyDate          :: !(Maybe UTCTime)
    , _eveStatus              :: !(Maybe Text)
    , _eveCommissionableSales :: !(Maybe (Maybe Money))
    , _eveChargeId            :: !(Maybe Text)
    , _eveAdvertiserName      :: !(Maybe Text)
    , _eveChargeType          :: !(Maybe Text)
    , _eveMemberId            :: !(Maybe Text)
    , _eveKind                :: !Text
    , _eveNetworkFee          :: !(Maybe (Maybe Money))
    , _eveAdvertiserId        :: !(Maybe Int64)
    , _eveEventDate           :: !(Maybe UTCTime)
    , _eveProducts            :: !(Maybe [EventItemProducts])
    , _evePublisherFee        :: !(Maybe (Maybe Money))
    , _eveType                :: !(Maybe Text)
    , _eveOrderId             :: !(Maybe Text)
    , _evePublisherId         :: !(Maybe Int64)
    , _eveEarnings            :: !(Maybe (Maybe Money))
    , _evePublisherName       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Event' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eveModifyDate'
--
-- * 'eveStatus'
--
-- * 'eveCommissionableSales'
--
-- * 'eveChargeId'
--
-- * 'eveAdvertiserName'
--
-- * 'eveChargeType'
--
-- * 'eveMemberId'
--
-- * 'eveKind'
--
-- * 'eveNetworkFee'
--
-- * 'eveAdvertiserId'
--
-- * 'eveEventDate'
--
-- * 'eveProducts'
--
-- * 'evePublisherFee'
--
-- * 'eveType'
--
-- * 'eveOrderId'
--
-- * 'evePublisherId'
--
-- * 'eveEarnings'
--
-- * 'evePublisherName'
event
    :: Event
event =
    Event
    { _eveModifyDate = Nothing
    , _eveStatus = Nothing
    , _eveCommissionableSales = Nothing
    , _eveChargeId = Nothing
    , _eveAdvertiserName = Nothing
    , _eveChargeType = Nothing
    , _eveMemberId = Nothing
    , _eveKind = "gan#event"
    , _eveNetworkFee = Nothing
    , _eveAdvertiserId = Nothing
    , _eveEventDate = Nothing
    , _eveProducts = Nothing
    , _evePublisherFee = Nothing
    , _eveType = Nothing
    , _eveOrderId = Nothing
    , _evePublisherId = Nothing
    , _eveEarnings = Nothing
    , _evePublisherName = Nothing
    }

-- | The date-time this event was last modified as a RFC 3339 date-time
-- value.
eveModifyDate :: Lens' Event (Maybe UTCTime)
eveModifyDate
  = lens _eveModifyDate
      (\ s a -> s{_eveModifyDate = a})

-- | Status of the event (active|canceled). Only returned for charge and
-- conversion events.
eveStatus :: Lens' Event (Maybe Text)
eveStatus
  = lens _eveStatus (\ s a -> s{_eveStatus = a})

-- | Amount of money exchanged during the transaction. Only returned for
-- charge and conversion events.
eveCommissionableSales :: Lens' Event (Maybe (Maybe Money))
eveCommissionableSales
  = lens _eveCommissionableSales
      (\ s a -> s{_eveCommissionableSales = a})

-- | The charge ID for this event. Only returned for charge events.
eveChargeId :: Lens' Event (Maybe Text)
eveChargeId
  = lens _eveChargeId (\ s a -> s{_eveChargeId = a})

-- | The name of the advertiser for this event.
eveAdvertiserName :: Lens' Event (Maybe Text)
eveAdvertiserName
  = lens _eveAdvertiserName
      (\ s a -> s{_eveAdvertiserName = a})

-- | Charge type of the event
-- (other|slotting_fee|monthly_minimum|tier_bonus|debit|credit). Only
-- returned for charge events.
eveChargeType :: Lens' Event (Maybe Text)
eveChargeType
  = lens _eveChargeType
      (\ s a -> s{_eveChargeType = a})

-- | The ID of the member attached to this event. Only returned for
-- conversion events.
eveMemberId :: Lens' Event (Maybe Text)
eveMemberId
  = lens _eveMemberId (\ s a -> s{_eveMemberId = a})

-- | The kind for one event.
eveKind :: Lens' Event Text
eveKind = lens _eveKind (\ s a -> s{_eveKind = a})

-- | Fee that the advertiser paid to the Google Affiliate Network.
eveNetworkFee :: Lens' Event (Maybe (Maybe Money))
eveNetworkFee
  = lens _eveNetworkFee
      (\ s a -> s{_eveNetworkFee = a})

-- | The ID of advertiser for this event.
eveAdvertiserId :: Lens' Event (Maybe Int64)
eveAdvertiserId
  = lens _eveAdvertiserId
      (\ s a -> s{_eveAdvertiserId = a})

-- | The date-time this event was initiated as a RFC 3339 date-time value.
eveEventDate :: Lens' Event (Maybe UTCTime)
eveEventDate
  = lens _eveEventDate (\ s a -> s{_eveEventDate = a})

-- | Products associated with the event.
eveProducts :: Lens' Event [EventItemProducts]
eveProducts
  = lens _eveProducts (\ s a -> s{_eveProducts = a}) .
      _Default
      . _Coerce

-- | Fee that the advertiser paid to the publisher.
evePublisherFee :: Lens' Event (Maybe (Maybe Money))
evePublisherFee
  = lens _evePublisherFee
      (\ s a -> s{_evePublisherFee = a})

-- | Type of the event (action|transaction|charge).
eveType :: Lens' Event (Maybe Text)
eveType = lens _eveType (\ s a -> s{_eveType = a})

-- | The order ID for this event. Only returned for conversion events.
eveOrderId :: Lens' Event (Maybe Text)
eveOrderId
  = lens _eveOrderId (\ s a -> s{_eveOrderId = a})

-- | The ID of the publisher for this event.
evePublisherId :: Lens' Event (Maybe Int64)
evePublisherId
  = lens _evePublisherId
      (\ s a -> s{_evePublisherId = a})

-- | Earnings by the publisher.
eveEarnings :: Lens' Event (Maybe (Maybe Money))
eveEarnings
  = lens _eveEarnings (\ s a -> s{_eveEarnings = a})

-- | The name of the publisher for this event.
evePublisherName :: Lens' Event (Maybe Text)
evePublisherName
  = lens _evePublisherName
      (\ s a -> s{_evePublisherName = a})

--
-- /See:/ 'eventItemProducts' smart constructor.
data EventItemProducts = EventItemProducts
    { _eipSkuName      :: !(Maybe Text)
    , _eipNetworkFee   :: !(Maybe (Maybe Money))
    , _eipQuantity     :: !(Maybe Int64)
    , _eipCategoryName :: !(Maybe Text)
    , _eipCategoryId   :: !(Maybe Text)
    , _eipSku          :: !(Maybe Text)
    , _eipPublisherFee :: !(Maybe (Maybe Money))
    , _eipUnitPrice    :: !(Maybe (Maybe Money))
    , _eipEarnings     :: !(Maybe (Maybe Money))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventItemProducts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eipSkuName'
--
-- * 'eipNetworkFee'
--
-- * 'eipQuantity'
--
-- * 'eipCategoryName'
--
-- * 'eipCategoryId'
--
-- * 'eipSku'
--
-- * 'eipPublisherFee'
--
-- * 'eipUnitPrice'
--
-- * 'eipEarnings'
eventItemProducts
    :: EventItemProducts
eventItemProducts =
    EventItemProducts
    { _eipSkuName = Nothing
    , _eipNetworkFee = Nothing
    , _eipQuantity = Nothing
    , _eipCategoryName = Nothing
    , _eipCategoryId = Nothing
    , _eipSku = Nothing
    , _eipPublisherFee = Nothing
    , _eipUnitPrice = Nothing
    , _eipEarnings = Nothing
    }

-- | Sku name of this product.
eipSkuName :: Lens' EventItemProducts (Maybe Text)
eipSkuName
  = lens _eipSkuName (\ s a -> s{_eipSkuName = a})

-- | Fee that the advertiser paid to the Google Affiliate Network for this
-- product.
eipNetworkFee :: Lens' EventItemProducts (Maybe (Maybe Money))
eipNetworkFee
  = lens _eipNetworkFee
      (\ s a -> s{_eipNetworkFee = a})

-- | Quantity of this product bought\/exchanged.
eipQuantity :: Lens' EventItemProducts (Maybe Int64)
eipQuantity
  = lens _eipQuantity (\ s a -> s{_eipQuantity = a})

-- | Name of the category this product belongs to.
eipCategoryName :: Lens' EventItemProducts (Maybe Text)
eipCategoryName
  = lens _eipCategoryName
      (\ s a -> s{_eipCategoryName = a})

-- | Id of the category this product belongs to.
eipCategoryId :: Lens' EventItemProducts (Maybe Text)
eipCategoryId
  = lens _eipCategoryId
      (\ s a -> s{_eipCategoryId = a})

-- | Sku of this product.
eipSku :: Lens' EventItemProducts (Maybe Text)
eipSku = lens _eipSku (\ s a -> s{_eipSku = a})

-- | Fee that the advertiser paid to the publisehr for this product.
eipPublisherFee :: Lens' EventItemProducts (Maybe (Maybe Money))
eipPublisherFee
  = lens _eipPublisherFee
      (\ s a -> s{_eipPublisherFee = a})

-- | Price per unit of this product.
eipUnitPrice :: Lens' EventItemProducts (Maybe (Maybe Money))
eipUnitPrice
  = lens _eipUnitPrice (\ s a -> s{_eipUnitPrice = a})

-- | Amount earned by the publisher on this product.
eipEarnings :: Lens' EventItemProducts (Maybe (Maybe Money))
eipEarnings
  = lens _eipEarnings (\ s a -> s{_eipEarnings = a})

--
-- /See:/ 'events' smart constructor.
data Events = Events
    { _eNextPageToken :: !(Maybe Text)
    , _eKind          :: !Text
    , _eItems         :: !(Maybe [Maybe Event])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Events' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eNextPageToken'
--
-- * 'eKind'
--
-- * 'eItems'
events
    :: Events
events =
    Events
    { _eNextPageToken = Nothing
    , _eKind = "gan#events"
    , _eItems = Nothing
    }

-- | The \'pageToken\' to pass to the next request to get the next page, if
-- there are more to retrieve.
eNextPageToken :: Lens' Events (Maybe Text)
eNextPageToken
  = lens _eNextPageToken
      (\ s a -> s{_eNextPageToken = a})

-- | The kind for a page of events.
eKind :: Lens' Events Text
eKind = lens _eKind (\ s a -> s{_eKind = a})

-- | The event list.
eItems :: Lens' Events [Maybe Event]
eItems
  = lens _eItems (\ s a -> s{_eItems = a}) . _Default .
      _Coerce

-- | A LinkResource.
--
-- /See:/ 'link' smart constructor.
data Link = Link
    { _linAuthorship            :: !(Maybe Text)
    , _linDestinationUrl        :: !(Maybe Text)
    , _linClickTrackingUrl      :: !(Maybe Text)
    , _linCreateDate            :: !(Maybe UTCTime)
    , _linKind                  :: !Text
    , _linAdvertiserId          :: !(Maybe Int64)
    , _linEndDate               :: !(Maybe UTCTime)
    , _linImageAltText          :: !(Maybe Text)
    , _linPromotionType         :: !(Maybe Text)
    , _linAvailability          :: !(Maybe Text)
    , _linStartDate             :: !(Maybe UTCTime)
    , _linName                  :: !(Maybe Text)
    , _linImpressionTrackingUrl :: !(Maybe Text)
    , _linSpecialOffers         :: !(Maybe LinkSpecialOffers)
    , _linEpcSevenDayAverage    :: !(Maybe (Maybe Money))
    , _linId                    :: !(Maybe Int64)
    , _linEpcNinetyDayAverage   :: !(Maybe (Maybe Money))
    , _linLinkType              :: !(Maybe Text)
    , _linIsActive              :: !(Maybe Bool)
    , _linDuration              :: !(Maybe Text)
    , _linDescription           :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Link' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'linAuthorship'
--
-- * 'linDestinationUrl'
--
-- * 'linClickTrackingUrl'
--
-- * 'linCreateDate'
--
-- * 'linKind'
--
-- * 'linAdvertiserId'
--
-- * 'linEndDate'
--
-- * 'linImageAltText'
--
-- * 'linPromotionType'
--
-- * 'linAvailability'
--
-- * 'linStartDate'
--
-- * 'linName'
--
-- * 'linImpressionTrackingUrl'
--
-- * 'linSpecialOffers'
--
-- * 'linEpcSevenDayAverage'
--
-- * 'linId'
--
-- * 'linEpcNinetyDayAverage'
--
-- * 'linLinkType'
--
-- * 'linIsActive'
--
-- * 'linDuration'
--
-- * 'linDescription'
link
    :: Link
link =
    Link
    { _linAuthorship = Nothing
    , _linDestinationUrl = Nothing
    , _linClickTrackingUrl = Nothing
    , _linCreateDate = Nothing
    , _linKind = "gan#link"
    , _linAdvertiserId = Nothing
    , _linEndDate = Nothing
    , _linImageAltText = Nothing
    , _linPromotionType = Nothing
    , _linAvailability = Nothing
    , _linStartDate = Nothing
    , _linName = Nothing
    , _linImpressionTrackingUrl = Nothing
    , _linSpecialOffers = Nothing
    , _linEpcSevenDayAverage = Nothing
    , _linId = Nothing
    , _linEpcNinetyDayAverage = Nothing
    , _linLinkType = Nothing
    , _linIsActive = Nothing
    , _linDuration = Nothing
    , _linDescription = Nothing
    }

-- | Authorship
linAuthorship :: Lens' Link (Maybe Text)
linAuthorship
  = lens _linAuthorship
      (\ s a -> s{_linAuthorship = a})

-- | The destination URL for the link.
linDestinationUrl :: Lens' Link (Maybe Text)
linDestinationUrl
  = lens _linDestinationUrl
      (\ s a -> s{_linDestinationUrl = a})

-- | Tracking url for clicks.
linClickTrackingUrl :: Lens' Link (Maybe Text)
linClickTrackingUrl
  = lens _linClickTrackingUrl
      (\ s a -> s{_linClickTrackingUrl = a})

-- | Date that this link was created.
linCreateDate :: Lens' Link (Maybe UTCTime)
linCreateDate
  = lens _linCreateDate
      (\ s a -> s{_linCreateDate = a})

-- | The kind for one entity.
linKind :: Lens' Link Text
linKind = lens _linKind (\ s a -> s{_linKind = a})

-- | The advertiser id for the advertiser who owns this link.
linAdvertiserId :: Lens' Link (Maybe Int64)
linAdvertiserId
  = lens _linAdvertiserId
      (\ s a -> s{_linAdvertiserId = a})

-- | Date that this link becomes inactive.
linEndDate :: Lens' Link (Maybe UTCTime)
linEndDate
  = lens _linEndDate (\ s a -> s{_linEndDate = a})

-- | image alt text.
linImageAltText :: Lens' Link (Maybe Text)
linImageAltText
  = lens _linImageAltText
      (\ s a -> s{_linImageAltText = a})

-- | Promotion Type
linPromotionType :: Lens' Link (Maybe Text)
linPromotionType
  = lens _linPromotionType
      (\ s a -> s{_linPromotionType = a})

-- | Availability.
linAvailability :: Lens' Link (Maybe Text)
linAvailability
  = lens _linAvailability
      (\ s a -> s{_linAvailability = a})

-- | Date that this link becomes active.
linStartDate :: Lens' Link (Maybe UTCTime)
linStartDate
  = lens _linStartDate (\ s a -> s{_linStartDate = a})

-- | The logical name for this link.
linName :: Lens' Link (Maybe Text)
linName = lens _linName (\ s a -> s{_linName = a})

-- | Tracking url for impressions.
linImpressionTrackingUrl :: Lens' Link (Maybe Text)
linImpressionTrackingUrl
  = lens _linImpressionTrackingUrl
      (\ s a -> s{_linImpressionTrackingUrl = a})

-- | Special offers on the link.
linSpecialOffers :: Lens' Link (Maybe LinkSpecialOffers)
linSpecialOffers
  = lens _linSpecialOffers
      (\ s a -> s{_linSpecialOffers = a})

-- | The sum of fees paid to publishers divided by the total number of clicks
-- over the past seven days on this link. This value should be multiplied
-- by 100 at the time of display.
linEpcSevenDayAverage :: Lens' Link (Maybe (Maybe Money))
linEpcSevenDayAverage
  = lens _linEpcSevenDayAverage
      (\ s a -> s{_linEpcSevenDayAverage = a})

-- | The ID of this link.
linId :: Lens' Link (Maybe Int64)
linId = lens _linId (\ s a -> s{_linId = a})

-- | The sum of fees paid to publishers divided by the total number of clicks
-- over the past three months on this link. This value should be multiplied
-- by 100 at the time of display.
linEpcNinetyDayAverage :: Lens' Link (Maybe (Maybe Money))
linEpcNinetyDayAverage
  = lens _linEpcNinetyDayAverage
      (\ s a -> s{_linEpcNinetyDayAverage = a})

-- | The link type.
linLinkType :: Lens' Link (Maybe Text)
linLinkType
  = lens _linLinkType (\ s a -> s{_linLinkType = a})

-- | Flag for if this link is active.
linIsActive :: Lens' Link (Maybe Bool)
linIsActive
  = lens _linIsActive (\ s a -> s{_linIsActive = a})

-- | Duration
linDuration :: Lens' Link (Maybe Text)
linDuration
  = lens _linDuration (\ s a -> s{_linDuration = a})

-- | Description.
linDescription :: Lens' Link (Maybe Text)
linDescription
  = lens _linDescription
      (\ s a -> s{_linDescription = a})

-- | Special offers on the link.
--
-- /See:/ 'linkSpecialOffers' smart constructor.
data LinkSpecialOffers = LinkSpecialOffers
    { _lsoFreeShippingMin :: !(Maybe (Maybe Money))
    , _lsoPercentOff      :: !(Maybe Double)
    , _lsoPriceCut        :: !(Maybe (Maybe Money))
    , _lsoPriceCutMin     :: !(Maybe (Maybe Money))
    , _lsoPercentOffMin   :: !(Maybe (Maybe Money))
    , _lsoFreeShipping    :: !(Maybe Bool)
    , _lsoPromotionCodes  :: !(Maybe [Text])
    , _lsoFreeGift        :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LinkSpecialOffers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsoFreeShippingMin'
--
-- * 'lsoPercentOff'
--
-- * 'lsoPriceCut'
--
-- * 'lsoPriceCutMin'
--
-- * 'lsoPercentOffMin'
--
-- * 'lsoFreeShipping'
--
-- * 'lsoPromotionCodes'
--
-- * 'lsoFreeGift'
linkSpecialOffers
    :: LinkSpecialOffers
linkSpecialOffers =
    LinkSpecialOffers
    { _lsoFreeShippingMin = Nothing
    , _lsoPercentOff = Nothing
    , _lsoPriceCut = Nothing
    , _lsoPriceCutMin = Nothing
    , _lsoPercentOffMin = Nothing
    , _lsoFreeShipping = Nothing
    , _lsoPromotionCodes = Nothing
    , _lsoFreeGift = Nothing
    }

-- | Minimum purchase amount for free shipping promotion
lsoFreeShippingMin :: Lens' LinkSpecialOffers (Maybe (Maybe Money))
lsoFreeShippingMin
  = lens _lsoFreeShippingMin
      (\ s a -> s{_lsoFreeShippingMin = a})

-- | Percent off on the purchase
lsoPercentOff :: Lens' LinkSpecialOffers (Maybe Double)
lsoPercentOff
  = lens _lsoPercentOff
      (\ s a -> s{_lsoPercentOff = a})

-- | Price cut on the purchase
lsoPriceCut :: Lens' LinkSpecialOffers (Maybe (Maybe Money))
lsoPriceCut
  = lens _lsoPriceCut (\ s a -> s{_lsoPriceCut = a})

-- | Minimum purchase amount for price cut promotion
lsoPriceCutMin :: Lens' LinkSpecialOffers (Maybe (Maybe Money))
lsoPriceCutMin
  = lens _lsoPriceCutMin
      (\ s a -> s{_lsoPriceCutMin = a})

-- | Minimum purchase amount for percent off promotion
lsoPercentOffMin :: Lens' LinkSpecialOffers (Maybe (Maybe Money))
lsoPercentOffMin
  = lens _lsoPercentOffMin
      (\ s a -> s{_lsoPercentOffMin = a})

-- | Whether there is free shipping
lsoFreeShipping :: Lens' LinkSpecialOffers (Maybe Bool)
lsoFreeShipping
  = lens _lsoFreeShipping
      (\ s a -> s{_lsoFreeShipping = a})

-- | List of promotion code associated with the link
lsoPromotionCodes :: Lens' LinkSpecialOffers [Text]
lsoPromotionCodes
  = lens _lsoPromotionCodes
      (\ s a -> s{_lsoPromotionCodes = a})
      . _Default
      . _Coerce

-- | Whether there is a free gift
lsoFreeGift :: Lens' LinkSpecialOffers (Maybe Bool)
lsoFreeGift
  = lens _lsoFreeGift (\ s a -> s{_lsoFreeGift = a})

--
-- /See:/ 'links' smart constructor.
data Links = Links
    { _lNextPageToken :: !(Maybe Text)
    , _lKind          :: !Text
    , _lItems         :: !(Maybe [Maybe Link])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Links' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lNextPageToken'
--
-- * 'lKind'
--
-- * 'lItems'
links
    :: Links
links =
    Links
    { _lNextPageToken = Nothing
    , _lKind = "gan#links"
    , _lItems = Nothing
    }

-- | The next page token.
lNextPageToken :: Lens' Links (Maybe Text)
lNextPageToken
  = lens _lNextPageToken
      (\ s a -> s{_lNextPageToken = a})

-- | The kind for a page of links.
lKind :: Lens' Links Text
lKind = lens _lKind (\ s a -> s{_lKind = a})

-- | The links.
lItems :: Lens' Links [Maybe Link]
lItems
  = lens _lItems (\ s a -> s{_lItems = a}) . _Default .
      _Coerce

-- | An ApiMoneyProto.
--
-- /See:/ 'money' smart constructor.
data Money = Money
    { _mAmount       :: !(Maybe Double)
    , _mCurrencyCode :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Money' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mAmount'
--
-- * 'mCurrencyCode'
money
    :: Money
money =
    Money
    { _mAmount = Nothing
    , _mCurrencyCode = Nothing
    }

-- | The amount of money.
mAmount :: Lens' Money (Maybe Double)
mAmount = lens _mAmount (\ s a -> s{_mAmount = a})

-- | The 3-letter code of the currency in question.
mCurrencyCode :: Lens' Money (Maybe Text)
mCurrencyCode
  = lens _mCurrencyCode
      (\ s a -> s{_mCurrencyCode = a})

-- | A PublisherResource.
--
-- /See:/ 'publisher' smart constructor.
data Publisher = Publisher
    { _pubStatus              :: !(Maybe Text)
    , _pubKind                :: !Text
    , _pubPayoutRank          :: !(Maybe Text)
    , _pubJoinDate            :: !(Maybe UTCTime)
    , _pubClassification      :: !(Maybe Text)
    , _pubName                :: !(Maybe Text)
    , _pubEpcSevenDayAverage  :: !(Maybe (Maybe Money))
    , _pubItem                :: !(Maybe (Maybe Publisher))
    , _pubId                  :: !(Maybe Int64)
    , _pubEpcNinetyDayAverage :: !(Maybe (Maybe Money))
    , _pubSites               :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Publisher' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pubStatus'
--
-- * 'pubKind'
--
-- * 'pubPayoutRank'
--
-- * 'pubJoinDate'
--
-- * 'pubClassification'
--
-- * 'pubName'
--
-- * 'pubEpcSevenDayAverage'
--
-- * 'pubItem'
--
-- * 'pubId'
--
-- * 'pubEpcNinetyDayAverage'
--
-- * 'pubSites'
publisher
    :: Publisher
publisher =
    Publisher
    { _pubStatus = Nothing
    , _pubKind = "gan#publisher"
    , _pubPayoutRank = Nothing
    , _pubJoinDate = Nothing
    , _pubClassification = Nothing
    , _pubName = Nothing
    , _pubEpcSevenDayAverage = Nothing
    , _pubItem = Nothing
    , _pubId = Nothing
    , _pubEpcNinetyDayAverage = Nothing
    , _pubSites = Nothing
    }

-- | The status of the requesting advertiser\'s relationship with this
-- publisher.
pubStatus :: Lens' Publisher (Maybe Text)
pubStatus
  = lens _pubStatus (\ s a -> s{_pubStatus = a})

-- | The kind for a publisher.
pubKind :: Lens' Publisher Text
pubKind = lens _pubKind (\ s a -> s{_pubKind = a})

-- | A rank based on commissions paid to this publisher over the past 90
-- days. A number between 1 and 4 where 4 means the top quartile (most
-- money paid) and 1 means the bottom quartile (least money paid).
pubPayoutRank :: Lens' Publisher (Maybe Text)
pubPayoutRank
  = lens _pubPayoutRank
      (\ s a -> s{_pubPayoutRank = a})

-- | Date that this publisher was approved as a Google Affiliate Network
-- publisher.
pubJoinDate :: Lens' Publisher (Maybe UTCTime)
pubJoinDate
  = lens _pubJoinDate (\ s a -> s{_pubJoinDate = a})

-- | Classification that this publisher belongs to. See this link for all
-- publisher classifications:
-- http:\/\/www.google.com\/support\/affiliatenetwork\/advertiser\/bin\/answer.py?hl=en&answer=107625&ctx=cb&src=cb&cbid=-k5fihzthfaik&cbrank=4
pubClassification :: Lens' Publisher (Maybe Text)
pubClassification
  = lens _pubClassification
      (\ s a -> s{_pubClassification = a})

-- | The name of this publisher.
pubName :: Lens' Publisher (Maybe Text)
pubName = lens _pubName (\ s a -> s{_pubName = a})

-- | The sum of fees paid to this publisher divided by the total number of
-- clicks over the past seven days. Values are multiplied by 100 for
-- display purposes.
pubEpcSevenDayAverage :: Lens' Publisher (Maybe (Maybe Money))
pubEpcSevenDayAverage
  = lens _pubEpcSevenDayAverage
      (\ s a -> s{_pubEpcSevenDayAverage = a})

-- | The requested publisher.
pubItem :: Lens' Publisher (Maybe (Maybe Publisher))
pubItem = lens _pubItem (\ s a -> s{_pubItem = a})

-- | The ID of this publisher.
pubId :: Lens' Publisher (Maybe Int64)
pubId = lens _pubId (\ s a -> s{_pubId = a})

-- | The sum of fees paid to this publisher divided by the total number of
-- clicks over the past three months. Values are multiplied by 100 for
-- display purposes.
pubEpcNinetyDayAverage :: Lens' Publisher (Maybe (Maybe Money))
pubEpcNinetyDayAverage
  = lens _pubEpcNinetyDayAverage
      (\ s a -> s{_pubEpcNinetyDayAverage = a})

-- | Websites that this publisher uses to advertise.
pubSites :: Lens' Publisher [Text]
pubSites
  = lens _pubSites (\ s a -> s{_pubSites = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'publishers' smart constructor.
data Publishers = Publishers
    { _pNextPageToken :: !(Maybe Text)
    , _pKind          :: !Text
    , _pItems         :: !(Maybe [Maybe Publisher])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Publishers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pNextPageToken'
--
-- * 'pKind'
--
-- * 'pItems'
publishers
    :: Publishers
publishers =
    Publishers
    { _pNextPageToken = Nothing
    , _pKind = "gan#publishers"
    , _pItems = Nothing
    }

-- | The \'pageToken\' to pass to the next request to get the next page, if
-- there are more to retrieve.
pNextPageToken :: Lens' Publishers (Maybe Text)
pNextPageToken
  = lens _pNextPageToken
      (\ s a -> s{_pNextPageToken = a})

-- | The kind for a page of entities.
pKind :: Lens' Publishers Text
pKind = lens _pKind (\ s a -> s{_pKind = a})

-- | The entity list.
pItems :: Lens' Publishers [Maybe Publisher]
pItems
  = lens _pItems (\ s a -> s{_pItems = a}) . _Default .
      _Coerce

-- | A ReportResource representing a report of a certain type either for an
-- advertiser or publisher.
--
-- /See:/ 'report' smart constructor.
data Report = Report
    { _rEndDate          :: !(Maybe Text)
    , _rTotalsRows       :: !(Maybe [[Either Text Int64]])
    , _rKind             :: !Text
    , _rStartDate        :: !(Maybe Text)
    , _rRows             :: !(Maybe [[Either Text Int64]])
    , _rMatchingRowCount :: !(Maybe Int64)
    , _rColumnNames      :: !(Maybe [Text])
    , _rType             :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Report' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rEndDate'
--
-- * 'rTotalsRows'
--
-- * 'rKind'
--
-- * 'rStartDate'
--
-- * 'rRows'
--
-- * 'rMatchingRowCount'
--
-- * 'rColumnNames'
--
-- * 'rType'
report
    :: Report
report =
    Report
    { _rEndDate = Nothing
    , _rTotalsRows = Nothing
    , _rKind = "gan#report"
    , _rStartDate = Nothing
    , _rRows = Nothing
    , _rMatchingRowCount = Nothing
    , _rColumnNames = Nothing
    , _rType = Nothing
    }

-- | The end of the date range for this report, exclusive.
rEndDate :: Lens' Report (Maybe Text)
rEndDate = lens _rEndDate (\ s a -> s{_rEndDate = a})

-- | The totals rows for the report
rTotalsRows :: Lens' Report [[Either Text Int64]]
rTotalsRows
  = lens _rTotalsRows (\ s a -> s{_rTotalsRows = a}) .
      _Default
      . _Coerce

-- | The kind for a report.
rKind :: Lens' Report Text
rKind = lens _rKind (\ s a -> s{_rKind = a})

-- | The start of the date range for this report, inclusive.
rStartDate :: Lens' Report (Maybe Text)
rStartDate
  = lens _rStartDate (\ s a -> s{_rStartDate = a})

-- | The rows of data for the report
rRows :: Lens' Report [[Either Text Int64]]
rRows
  = lens _rRows (\ s a -> s{_rRows = a}) . _Default .
      _Coerce

-- | The number of matching rows before paging is applied.
rMatchingRowCount :: Lens' Report (Maybe Int64)
rMatchingRowCount
  = lens _rMatchingRowCount
      (\ s a -> s{_rMatchingRowCount = a})

-- | The column names for the report
rColumnNames :: Lens' Report [Text]
rColumnNames
  = lens _rColumnNames (\ s a -> s{_rColumnNames = a})
      . _Default
      . _Coerce

-- | The report type.
rType :: Lens' Report (Maybe Text)
rType = lens _rType (\ s a -> s{_rType = a})
