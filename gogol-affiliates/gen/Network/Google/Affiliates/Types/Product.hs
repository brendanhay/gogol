{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Affiliates.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Affiliates.Types.Product where

import           Network.Google.Affiliates.Types.Sum
import           Network.Google.Prelude

-- | An EventResource.
--
-- /See:/ 'event' smart constructor.
data Event = Event
    { _eModifyDate          :: !(Maybe DateTime')
    , _eStatus              :: !(Maybe Text)
    , _eCommissionableSales :: !(Maybe Money)
    , _eChargeId            :: !(Maybe Text)
    , _eAdvertiserName      :: !(Maybe Text)
    , _eChargeType          :: !(Maybe Text)
    , _eMemberId            :: !(Maybe Text)
    , _eKind                :: !Text
    , _eNetworkFee          :: !(Maybe Money)
    , _eAdvertiserId        :: !(Maybe (Textual Int64))
    , _eEventDate           :: !(Maybe DateTime')
    , _eProducts            :: !(Maybe [EventProductsItem])
    , _ePublisherFee        :: !(Maybe Money)
    , _eType                :: !(Maybe Text)
    , _eOrderId             :: !(Maybe Text)
    , _ePublisherId         :: !(Maybe (Textual Int64))
    , _eEarnings            :: !(Maybe Money)
    , _ePublisherName       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Event' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eModifyDate'
--
-- * 'eStatus'
--
-- * 'eCommissionableSales'
--
-- * 'eChargeId'
--
-- * 'eAdvertiserName'
--
-- * 'eChargeType'
--
-- * 'eMemberId'
--
-- * 'eKind'
--
-- * 'eNetworkFee'
--
-- * 'eAdvertiserId'
--
-- * 'eEventDate'
--
-- * 'eProducts'
--
-- * 'ePublisherFee'
--
-- * 'eType'
--
-- * 'eOrderId'
--
-- * 'ePublisherId'
--
-- * 'eEarnings'
--
-- * 'ePublisherName'
event
    :: Event
event =
    Event
    { _eModifyDate = Nothing
    , _eStatus = Nothing
    , _eCommissionableSales = Nothing
    , _eChargeId = Nothing
    , _eAdvertiserName = Nothing
    , _eChargeType = Nothing
    , _eMemberId = Nothing
    , _eKind = "gan#event"
    , _eNetworkFee = Nothing
    , _eAdvertiserId = Nothing
    , _eEventDate = Nothing
    , _eProducts = Nothing
    , _ePublisherFee = Nothing
    , _eType = Nothing
    , _eOrderId = Nothing
    , _ePublisherId = Nothing
    , _eEarnings = Nothing
    , _ePublisherName = Nothing
    }

-- | The date-time this event was last modified as a RFC 3339 date-time
-- value.
eModifyDate :: Lens' Event (Maybe UTCTime)
eModifyDate
  = lens _eModifyDate (\ s a -> s{_eModifyDate = a}) .
      mapping _DateTime

-- | Status of the event (active|canceled). Only returned for charge and
-- conversion events.
eStatus :: Lens' Event (Maybe Text)
eStatus = lens _eStatus (\ s a -> s{_eStatus = a})

-- | Amount of money exchanged during the transaction. Only returned for
-- charge and conversion events.
eCommissionableSales :: Lens' Event (Maybe Money)
eCommissionableSales
  = lens _eCommissionableSales
      (\ s a -> s{_eCommissionableSales = a})

-- | The charge ID for this event. Only returned for charge events.
eChargeId :: Lens' Event (Maybe Text)
eChargeId
  = lens _eChargeId (\ s a -> s{_eChargeId = a})

-- | The name of the advertiser for this event.
eAdvertiserName :: Lens' Event (Maybe Text)
eAdvertiserName
  = lens _eAdvertiserName
      (\ s a -> s{_eAdvertiserName = a})

-- | Charge type of the event
-- (other|slotting_fee|monthly_minimum|tier_bonus|debit|credit). Only
-- returned for charge events.
eChargeType :: Lens' Event (Maybe Text)
eChargeType
  = lens _eChargeType (\ s a -> s{_eChargeType = a})

-- | The ID of the member attached to this event. Only returned for
-- conversion events.
eMemberId :: Lens' Event (Maybe Text)
eMemberId
  = lens _eMemberId (\ s a -> s{_eMemberId = a})

-- | The kind for one event.
eKind :: Lens' Event Text
eKind = lens _eKind (\ s a -> s{_eKind = a})

-- | Fee that the advertiser paid to the Google Affiliate Network.
eNetworkFee :: Lens' Event (Maybe Money)
eNetworkFee
  = lens _eNetworkFee (\ s a -> s{_eNetworkFee = a})

-- | The ID of advertiser for this event.
eAdvertiserId :: Lens' Event (Maybe Int64)
eAdvertiserId
  = lens _eAdvertiserId
      (\ s a -> s{_eAdvertiserId = a})
      . mapping _Coerce

-- | The date-time this event was initiated as a RFC 3339 date-time value.
eEventDate :: Lens' Event (Maybe UTCTime)
eEventDate
  = lens _eEventDate (\ s a -> s{_eEventDate = a}) .
      mapping _DateTime

-- | Products associated with the event.
eProducts :: Lens' Event [EventProductsItem]
eProducts
  = lens _eProducts (\ s a -> s{_eProducts = a}) .
      _Default
      . _Coerce

-- | Fee that the advertiser paid to the publisher.
ePublisherFee :: Lens' Event (Maybe Money)
ePublisherFee
  = lens _ePublisherFee
      (\ s a -> s{_ePublisherFee = a})

-- | Type of the event (action|transaction|charge).
eType :: Lens' Event (Maybe Text)
eType = lens _eType (\ s a -> s{_eType = a})

-- | The order ID for this event. Only returned for conversion events.
eOrderId :: Lens' Event (Maybe Text)
eOrderId = lens _eOrderId (\ s a -> s{_eOrderId = a})

-- | The ID of the publisher for this event.
ePublisherId :: Lens' Event (Maybe Int64)
ePublisherId
  = lens _ePublisherId (\ s a -> s{_ePublisherId = a})
      . mapping _Coerce

-- | Earnings by the publisher.
eEarnings :: Lens' Event (Maybe Money)
eEarnings
  = lens _eEarnings (\ s a -> s{_eEarnings = a})

-- | The name of the publisher for this event.
ePublisherName :: Lens' Event (Maybe Text)
ePublisherName
  = lens _ePublisherName
      (\ s a -> s{_ePublisherName = a})

instance FromJSON Event where
        parseJSON
          = withObject "Event"
              (\ o ->
                 Event <$>
                   (o .:? "modifyDate") <*> (o .:? "status") <*>
                     (o .:? "commissionableSales")
                     <*> (o .:? "chargeId")
                     <*> (o .:? "advertiserName")
                     <*> (o .:? "chargeType")
                     <*> (o .:? "memberId")
                     <*> (o .:? "kind" .!= "gan#event")
                     <*> (o .:? "networkFee")
                     <*> (o .:? "advertiserId")
                     <*> (o .:? "eventDate")
                     <*> (o .:? "products" .!= mempty)
                     <*> (o .:? "publisherFee")
                     <*> (o .:? "type")
                     <*> (o .:? "orderId")
                     <*> (o .:? "publisherId")
                     <*> (o .:? "earnings")
                     <*> (o .:? "publisherName"))

instance ToJSON Event where
        toJSON Event{..}
          = object
              (catMaybes
                 [("modifyDate" .=) <$> _eModifyDate,
                  ("status" .=) <$> _eStatus,
                  ("commissionableSales" .=) <$> _eCommissionableSales,
                  ("chargeId" .=) <$> _eChargeId,
                  ("advertiserName" .=) <$> _eAdvertiserName,
                  ("chargeType" .=) <$> _eChargeType,
                  ("memberId" .=) <$> _eMemberId,
                  Just ("kind" .= _eKind),
                  ("networkFee" .=) <$> _eNetworkFee,
                  ("advertiserId" .=) <$> _eAdvertiserId,
                  ("eventDate" .=) <$> _eEventDate,
                  ("products" .=) <$> _eProducts,
                  ("publisherFee" .=) <$> _ePublisherFee,
                  ("type" .=) <$> _eType, ("orderId" .=) <$> _eOrderId,
                  ("publisherId" .=) <$> _ePublisherId,
                  ("earnings" .=) <$> _eEarnings,
                  ("publisherName" .=) <$> _ePublisherName])

-- | An ApiMoneyProto.
--
-- /See:/ 'money' smart constructor.
data Money = Money
    { _mAmount       :: !(Maybe (Textual Double))
    , _mCurrencyCode :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
mAmount
  = lens _mAmount (\ s a -> s{_mAmount = a}) .
      mapping _Coerce

-- | The 3-letter code of the currency in question.
mCurrencyCode :: Lens' Money (Maybe Text)
mCurrencyCode
  = lens _mCurrencyCode
      (\ s a -> s{_mCurrencyCode = a})

instance FromJSON Money where
        parseJSON
          = withObject "Money"
              (\ o ->
                 Money <$>
                   (o .:? "amount") <*> (o .:? "currencyCode"))

instance ToJSON Money where
        toJSON Money{..}
          = object
              (catMaybes
                 [("amount" .=) <$> _mAmount,
                  ("currencyCode" .=) <$> _mCurrencyCode])

-- | A LinkResource.
--
-- /See:/ 'link' smart constructor.
data Link = Link
    { _lAuthorship            :: !(Maybe Text)
    , _lDestinationURL        :: !(Maybe Text)
    , _lClickTrackingURL      :: !(Maybe Text)
    , _lCreateDate            :: !(Maybe DateTime')
    , _lKind                  :: !Text
    , _lAdvertiserId          :: !(Maybe (Textual Int64))
    , _lEndDate               :: !(Maybe DateTime')
    , _lImageAltText          :: !(Maybe Text)
    , _lPromotionType         :: !(Maybe Text)
    , _lAvailability          :: !(Maybe Text)
    , _lStartDate             :: !(Maybe DateTime')
    , _lName                  :: !(Maybe Text)
    , _lImpressionTrackingURL :: !(Maybe Text)
    , _lSpecialOffers         :: !(Maybe LinkSpecialOffers)
    , _lEpcSevenDayAverage    :: !(Maybe Money)
    , _lId                    :: !(Maybe (Textual Int64))
    , _lEpcNinetyDayAverage   :: !(Maybe Money)
    , _lLinkType              :: !(Maybe Text)
    , _lIsActive              :: !(Maybe Bool)
    , _lDuration              :: !(Maybe Text)
    , _lDescription           :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Link' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lAuthorship'
--
-- * 'lDestinationURL'
--
-- * 'lClickTrackingURL'
--
-- * 'lCreateDate'
--
-- * 'lKind'
--
-- * 'lAdvertiserId'
--
-- * 'lEndDate'
--
-- * 'lImageAltText'
--
-- * 'lPromotionType'
--
-- * 'lAvailability'
--
-- * 'lStartDate'
--
-- * 'lName'
--
-- * 'lImpressionTrackingURL'
--
-- * 'lSpecialOffers'
--
-- * 'lEpcSevenDayAverage'
--
-- * 'lId'
--
-- * 'lEpcNinetyDayAverage'
--
-- * 'lLinkType'
--
-- * 'lIsActive'
--
-- * 'lDuration'
--
-- * 'lDescription'
link
    :: Link
link =
    Link
    { _lAuthorship = Nothing
    , _lDestinationURL = Nothing
    , _lClickTrackingURL = Nothing
    , _lCreateDate = Nothing
    , _lKind = "gan#link"
    , _lAdvertiserId = Nothing
    , _lEndDate = Nothing
    , _lImageAltText = Nothing
    , _lPromotionType = Nothing
    , _lAvailability = Nothing
    , _lStartDate = Nothing
    , _lName = Nothing
    , _lImpressionTrackingURL = Nothing
    , _lSpecialOffers = Nothing
    , _lEpcSevenDayAverage = Nothing
    , _lId = Nothing
    , _lEpcNinetyDayAverage = Nothing
    , _lLinkType = Nothing
    , _lIsActive = Nothing
    , _lDuration = Nothing
    , _lDescription = Nothing
    }

-- | Authorship
lAuthorship :: Lens' Link (Maybe Text)
lAuthorship
  = lens _lAuthorship (\ s a -> s{_lAuthorship = a})

-- | The destination URL for the link.
lDestinationURL :: Lens' Link (Maybe Text)
lDestinationURL
  = lens _lDestinationURL
      (\ s a -> s{_lDestinationURL = a})

-- | Tracking url for clicks.
lClickTrackingURL :: Lens' Link (Maybe Text)
lClickTrackingURL
  = lens _lClickTrackingURL
      (\ s a -> s{_lClickTrackingURL = a})

-- | Date that this link was created.
lCreateDate :: Lens' Link (Maybe UTCTime)
lCreateDate
  = lens _lCreateDate (\ s a -> s{_lCreateDate = a}) .
      mapping _DateTime

-- | The kind for one entity.
lKind :: Lens' Link Text
lKind = lens _lKind (\ s a -> s{_lKind = a})

-- | The advertiser id for the advertiser who owns this link.
lAdvertiserId :: Lens' Link (Maybe Int64)
lAdvertiserId
  = lens _lAdvertiserId
      (\ s a -> s{_lAdvertiserId = a})
      . mapping _Coerce

-- | Date that this link becomes inactive.
lEndDate :: Lens' Link (Maybe UTCTime)
lEndDate
  = lens _lEndDate (\ s a -> s{_lEndDate = a}) .
      mapping _DateTime

-- | image alt text.
lImageAltText :: Lens' Link (Maybe Text)
lImageAltText
  = lens _lImageAltText
      (\ s a -> s{_lImageAltText = a})

-- | Promotion Type
lPromotionType :: Lens' Link (Maybe Text)
lPromotionType
  = lens _lPromotionType
      (\ s a -> s{_lPromotionType = a})

-- | Availability.
lAvailability :: Lens' Link (Maybe Text)
lAvailability
  = lens _lAvailability
      (\ s a -> s{_lAvailability = a})

-- | Date that this link becomes active.
lStartDate :: Lens' Link (Maybe UTCTime)
lStartDate
  = lens _lStartDate (\ s a -> s{_lStartDate = a}) .
      mapping _DateTime

-- | The logical name for this link.
lName :: Lens' Link (Maybe Text)
lName = lens _lName (\ s a -> s{_lName = a})

-- | Tracking url for impressions.
lImpressionTrackingURL :: Lens' Link (Maybe Text)
lImpressionTrackingURL
  = lens _lImpressionTrackingURL
      (\ s a -> s{_lImpressionTrackingURL = a})

-- | Special offers on the link.
lSpecialOffers :: Lens' Link (Maybe LinkSpecialOffers)
lSpecialOffers
  = lens _lSpecialOffers
      (\ s a -> s{_lSpecialOffers = a})

-- | The sum of fees paid to publishers divided by the total number of clicks
-- over the past seven days on this link. This value should be multiplied
-- by 100 at the time of display.
lEpcSevenDayAverage :: Lens' Link (Maybe Money)
lEpcSevenDayAverage
  = lens _lEpcSevenDayAverage
      (\ s a -> s{_lEpcSevenDayAverage = a})

-- | The ID of this link.
lId :: Lens' Link (Maybe Int64)
lId
  = lens _lId (\ s a -> s{_lId = a}) . mapping _Coerce

-- | The sum of fees paid to publishers divided by the total number of clicks
-- over the past three months on this link. This value should be multiplied
-- by 100 at the time of display.
lEpcNinetyDayAverage :: Lens' Link (Maybe Money)
lEpcNinetyDayAverage
  = lens _lEpcNinetyDayAverage
      (\ s a -> s{_lEpcNinetyDayAverage = a})

-- | The link type.
lLinkType :: Lens' Link (Maybe Text)
lLinkType
  = lens _lLinkType (\ s a -> s{_lLinkType = a})

-- | Flag for if this link is active.
lIsActive :: Lens' Link (Maybe Bool)
lIsActive
  = lens _lIsActive (\ s a -> s{_lIsActive = a})

-- | Duration
lDuration :: Lens' Link (Maybe Text)
lDuration
  = lens _lDuration (\ s a -> s{_lDuration = a})

-- | Description.
lDescription :: Lens' Link (Maybe Text)
lDescription
  = lens _lDescription (\ s a -> s{_lDescription = a})

instance FromJSON Link where
        parseJSON
          = withObject "Link"
              (\ o ->
                 Link <$>
                   (o .:? "authorship") <*> (o .:? "destinationUrl") <*>
                     (o .:? "clickTrackingUrl")
                     <*> (o .:? "createDate")
                     <*> (o .:? "kind" .!= "gan#link")
                     <*> (o .:? "advertiserId")
                     <*> (o .:? "endDate")
                     <*> (o .:? "imageAltText")
                     <*> (o .:? "promotionType")
                     <*> (o .:? "availability")
                     <*> (o .:? "startDate")
                     <*> (o .:? "name")
                     <*> (o .:? "impressionTrackingUrl")
                     <*> (o .:? "specialOffers")
                     <*> (o .:? "epcSevenDayAverage")
                     <*> (o .:? "id")
                     <*> (o .:? "epcNinetyDayAverage")
                     <*> (o .:? "linkType")
                     <*> (o .:? "isActive")
                     <*> (o .:? "duration")
                     <*> (o .:? "description"))

instance ToJSON Link where
        toJSON Link{..}
          = object
              (catMaybes
                 [("authorship" .=) <$> _lAuthorship,
                  ("destinationUrl" .=) <$> _lDestinationURL,
                  ("clickTrackingUrl" .=) <$> _lClickTrackingURL,
                  ("createDate" .=) <$> _lCreateDate,
                  Just ("kind" .= _lKind),
                  ("advertiserId" .=) <$> _lAdvertiserId,
                  ("endDate" .=) <$> _lEndDate,
                  ("imageAltText" .=) <$> _lImageAltText,
                  ("promotionType" .=) <$> _lPromotionType,
                  ("availability" .=) <$> _lAvailability,
                  ("startDate" .=) <$> _lStartDate,
                  ("name" .=) <$> _lName,
                  ("impressionTrackingUrl" .=) <$>
                    _lImpressionTrackingURL,
                  ("specialOffers" .=) <$> _lSpecialOffers,
                  ("epcSevenDayAverage" .=) <$> _lEpcSevenDayAverage,
                  ("id" .=) <$> _lId,
                  ("epcNinetyDayAverage" .=) <$> _lEpcNinetyDayAverage,
                  ("linkType" .=) <$> _lLinkType,
                  ("isActive" .=) <$> _lIsActive,
                  ("duration" .=) <$> _lDuration,
                  ("description" .=) <$> _lDescription])

--
-- /See:/ 'ccOffers' smart constructor.
data CcOffers = CcOffers
    { _coKind  :: !Text
    , _coItems :: !(Maybe [CcOffer])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CcOffers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'coKind'
--
-- * 'coItems'
ccOffers
    :: CcOffers
ccOffers =
    CcOffers
    { _coKind = "gan#ccOffers"
    , _coItems = Nothing
    }

-- | The kind for a page of credit card offers.
coKind :: Lens' CcOffers Text
coKind = lens _coKind (\ s a -> s{_coKind = a})

-- | The credit card offers.
coItems :: Lens' CcOffers [CcOffer]
coItems
  = lens _coItems (\ s a -> s{_coItems = a}) . _Default
      . _Coerce

instance FromJSON CcOffers where
        parseJSON
          = withObject "CcOffers"
              (\ o ->
                 CcOffers <$>
                   (o .:? "kind" .!= "gan#ccOffers") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON CcOffers where
        toJSON CcOffers{..}
          = object
              (catMaybes
                 [Just ("kind" .= _coKind),
                  ("items" .=) <$> _coItems])

--
-- /See:/ 'ccOfferDefaultFeesItem' smart constructor.
data CcOfferDefaultFeesItem = CcOfferDefaultFeesItem
    { _codfiRateType :: !(Maybe Text)
    , _codfiMinRate  :: !(Maybe (Textual Double))
    , _codfiCategory :: !(Maybe Text)
    , _codfiMaxRate  :: !(Maybe (Textual Double))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CcOfferDefaultFeesItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'codfiRateType'
--
-- * 'codfiMinRate'
--
-- * 'codfiCategory'
--
-- * 'codfiMaxRate'
ccOfferDefaultFeesItem
    :: CcOfferDefaultFeesItem
ccOfferDefaultFeesItem =
    CcOfferDefaultFeesItem
    { _codfiRateType = Nothing
    , _codfiMinRate = Nothing
    , _codfiCategory = Nothing
    , _codfiMaxRate = Nothing
    }

-- | Fixed or variable.
codfiRateType :: Lens' CcOfferDefaultFeesItem (Maybe Text)
codfiRateType
  = lens _codfiRateType
      (\ s a -> s{_codfiRateType = a})

-- | The lowest rate the issuer may charge for defaulting on debt in this
-- category. Expressed as an absolute number, not as a percentage.
codfiMinRate :: Lens' CcOfferDefaultFeesItem (Maybe Double)
codfiMinRate
  = lens _codfiMinRate (\ s a -> s{_codfiMinRate = a})
      . mapping _Coerce

-- | The type of charge, for example Purchases.
codfiCategory :: Lens' CcOfferDefaultFeesItem (Maybe Text)
codfiCategory
  = lens _codfiCategory
      (\ s a -> s{_codfiCategory = a})

-- | The highest rate the issuer may charge for defaulting on debt in this
-- category. Expressed as an absolute number, not as a percentage.
codfiMaxRate :: Lens' CcOfferDefaultFeesItem (Maybe Double)
codfiMaxRate
  = lens _codfiMaxRate (\ s a -> s{_codfiMaxRate = a})
      . mapping _Coerce

instance FromJSON CcOfferDefaultFeesItem where
        parseJSON
          = withObject "CcOfferDefaultFeesItem"
              (\ o ->
                 CcOfferDefaultFeesItem <$>
                   (o .:? "rateType") <*> (o .:? "minRate") <*>
                     (o .:? "category")
                     <*> (o .:? "maxRate"))

instance ToJSON CcOfferDefaultFeesItem where
        toJSON CcOfferDefaultFeesItem{..}
          = object
              (catMaybes
                 [("rateType" .=) <$> _codfiRateType,
                  ("minRate" .=) <$> _codfiMinRate,
                  ("category" .=) <$> _codfiCategory,
                  ("maxRate" .=) <$> _codfiMaxRate])

-- | A ReportResource representing a report of a certain type either for an
-- advertiser or publisher.
--
-- /See:/ 'report' smart constructor.
data Report = Report
    { _rEndDate          :: !(Maybe Text)
    , _rTotalsRows       :: !(Maybe [[JSONValue]])
    , _rKind             :: !Text
    , _rStartDate        :: !(Maybe Text)
    , _rRows             :: !(Maybe [[JSONValue]])
    , _rMatchingRowCount :: !(Maybe (Textual Int64))
    , _rColumnNames      :: !(Maybe [Text])
    , _rType             :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
rTotalsRows :: Lens' Report [[JSONValue]]
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
rRows :: Lens' Report [[JSONValue]]
rRows
  = lens _rRows (\ s a -> s{_rRows = a}) . _Default .
      _Coerce

-- | The number of matching rows before paging is applied.
rMatchingRowCount :: Lens' Report (Maybe Int64)
rMatchingRowCount
  = lens _rMatchingRowCount
      (\ s a -> s{_rMatchingRowCount = a})
      . mapping _Coerce

-- | The column names for the report
rColumnNames :: Lens' Report [Text]
rColumnNames
  = lens _rColumnNames (\ s a -> s{_rColumnNames = a})
      . _Default
      . _Coerce

-- | The report type.
rType :: Lens' Report (Maybe Text)
rType = lens _rType (\ s a -> s{_rType = a})

instance FromJSON Report where
        parseJSON
          = withObject "Report"
              (\ o ->
                 Report <$>
                   (o .:? "end_date") <*>
                     (o .:? "totals_rows" .!= mempty)
                     <*> (o .:? "kind" .!= "gan#report")
                     <*> (o .:? "start_date")
                     <*> (o .:? "rows" .!= mempty)
                     <*> (o .:? "matching_row_count")
                     <*> (o .:? "column_names" .!= mempty)
                     <*> (o .:? "type"))

instance ToJSON Report where
        toJSON Report{..}
          = object
              (catMaybes
                 [("end_date" .=) <$> _rEndDate,
                  ("totals_rows" .=) <$> _rTotalsRows,
                  Just ("kind" .= _rKind),
                  ("start_date" .=) <$> _rStartDate,
                  ("rows" .=) <$> _rRows,
                  ("matching_row_count" .=) <$> _rMatchingRowCount,
                  ("column_names" .=) <$> _rColumnNames,
                  ("type" .=) <$> _rType])

--
-- /See:/ 'advertisers' smart constructor.
data Advertisers = Advertisers
    { _aNextPageToken :: !(Maybe Text)
    , _aKind          :: !Text
    , _aItems         :: !(Maybe [Advertiser])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Advertisers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aNextPageToken'
--
-- * 'aKind'
--
-- * 'aItems'
advertisers
    :: Advertisers
advertisers =
    Advertisers
    { _aNextPageToken = Nothing
    , _aKind = "gan#advertisers"
    , _aItems = Nothing
    }

-- | The \'pageToken\' to pass to the next request to get the next page, if
-- there are more to retrieve.
aNextPageToken :: Lens' Advertisers (Maybe Text)
aNextPageToken
  = lens _aNextPageToken
      (\ s a -> s{_aNextPageToken = a})

-- | The kind for a page of advertisers.
aKind :: Lens' Advertisers Text
aKind = lens _aKind (\ s a -> s{_aKind = a})

-- | The advertiser list.
aItems :: Lens' Advertisers [Advertiser]
aItems
  = lens _aItems (\ s a -> s{_aItems = a}) . _Default .
      _Coerce

instance FromJSON Advertisers where
        parseJSON
          = withObject "Advertisers"
              (\ o ->
                 Advertisers <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "gan#advertisers")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON Advertisers where
        toJSON Advertisers{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _aNextPageToken,
                  Just ("kind" .= _aKind), ("items" .=) <$> _aItems])

--
-- /See:/ 'eventProductsItem' smart constructor.
data EventProductsItem = EventProductsItem
    { _epiSKUName      :: !(Maybe Text)
    , _epiNetworkFee   :: !(Maybe Money)
    , _epiQuantity     :: !(Maybe (Textual Int64))
    , _epiCategoryName :: !(Maybe Text)
    , _epiCategoryId   :: !(Maybe Text)
    , _epiSKU          :: !(Maybe Text)
    , _epiPublisherFee :: !(Maybe Money)
    , _epiUnitPrice    :: !(Maybe Money)
    , _epiEarnings     :: !(Maybe Money)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventProductsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'epiSKUName'
--
-- * 'epiNetworkFee'
--
-- * 'epiQuantity'
--
-- * 'epiCategoryName'
--
-- * 'epiCategoryId'
--
-- * 'epiSKU'
--
-- * 'epiPublisherFee'
--
-- * 'epiUnitPrice'
--
-- * 'epiEarnings'
eventProductsItem
    :: EventProductsItem
eventProductsItem =
    EventProductsItem
    { _epiSKUName = Nothing
    , _epiNetworkFee = Nothing
    , _epiQuantity = Nothing
    , _epiCategoryName = Nothing
    , _epiCategoryId = Nothing
    , _epiSKU = Nothing
    , _epiPublisherFee = Nothing
    , _epiUnitPrice = Nothing
    , _epiEarnings = Nothing
    }

-- | Sku name of this product.
epiSKUName :: Lens' EventProductsItem (Maybe Text)
epiSKUName
  = lens _epiSKUName (\ s a -> s{_epiSKUName = a})

-- | Fee that the advertiser paid to the Google Affiliate Network for this
-- product.
epiNetworkFee :: Lens' EventProductsItem (Maybe Money)
epiNetworkFee
  = lens _epiNetworkFee
      (\ s a -> s{_epiNetworkFee = a})

-- | Quantity of this product bought\/exchanged.
epiQuantity :: Lens' EventProductsItem (Maybe Int64)
epiQuantity
  = lens _epiQuantity (\ s a -> s{_epiQuantity = a}) .
      mapping _Coerce

-- | Name of the category this product belongs to.
epiCategoryName :: Lens' EventProductsItem (Maybe Text)
epiCategoryName
  = lens _epiCategoryName
      (\ s a -> s{_epiCategoryName = a})

-- | Id of the category this product belongs to.
epiCategoryId :: Lens' EventProductsItem (Maybe Text)
epiCategoryId
  = lens _epiCategoryId
      (\ s a -> s{_epiCategoryId = a})

-- | Sku of this product.
epiSKU :: Lens' EventProductsItem (Maybe Text)
epiSKU = lens _epiSKU (\ s a -> s{_epiSKU = a})

-- | Fee that the advertiser paid to the publisehr for this product.
epiPublisherFee :: Lens' EventProductsItem (Maybe Money)
epiPublisherFee
  = lens _epiPublisherFee
      (\ s a -> s{_epiPublisherFee = a})

-- | Price per unit of this product.
epiUnitPrice :: Lens' EventProductsItem (Maybe Money)
epiUnitPrice
  = lens _epiUnitPrice (\ s a -> s{_epiUnitPrice = a})

-- | Amount earned by the publisher on this product.
epiEarnings :: Lens' EventProductsItem (Maybe Money)
epiEarnings
  = lens _epiEarnings (\ s a -> s{_epiEarnings = a})

instance FromJSON EventProductsItem where
        parseJSON
          = withObject "EventProductsItem"
              (\ o ->
                 EventProductsItem <$>
                   (o .:? "skuName") <*> (o .:? "networkFee") <*>
                     (o .:? "quantity")
                     <*> (o .:? "categoryName")
                     <*> (o .:? "categoryId")
                     <*> (o .:? "sku")
                     <*> (o .:? "publisherFee")
                     <*> (o .:? "unitPrice")
                     <*> (o .:? "earnings"))

instance ToJSON EventProductsItem where
        toJSON EventProductsItem{..}
          = object
              (catMaybes
                 [("skuName" .=) <$> _epiSKUName,
                  ("networkFee" .=) <$> _epiNetworkFee,
                  ("quantity" .=) <$> _epiQuantity,
                  ("categoryName" .=) <$> _epiCategoryName,
                  ("categoryId" .=) <$> _epiCategoryId,
                  ("sku" .=) <$> _epiSKU,
                  ("publisherFee" .=) <$> _epiPublisherFee,
                  ("unitPrice" .=) <$> _epiUnitPrice,
                  ("earnings" .=) <$> _epiEarnings])

--
-- /See:/ 'ccOfferBonusRewardsItem' smart constructor.
data CcOfferBonusRewardsItem = CcOfferBonusRewardsItem
    { _cobriAmount  :: !(Maybe (Textual Double))
    , _cobriDetails :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CcOfferBonusRewardsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cobriAmount'
--
-- * 'cobriDetails'
ccOfferBonusRewardsItem
    :: CcOfferBonusRewardsItem
ccOfferBonusRewardsItem =
    CcOfferBonusRewardsItem
    { _cobriAmount = Nothing
    , _cobriDetails = Nothing
    }

-- | How many units of reward will be granted.
cobriAmount :: Lens' CcOfferBonusRewardsItem (Maybe Double)
cobriAmount
  = lens _cobriAmount (\ s a -> s{_cobriAmount = a}) .
      mapping _Coerce

-- | The circumstances under which this rule applies, for example, booking a
-- flight via Orbitz.
cobriDetails :: Lens' CcOfferBonusRewardsItem (Maybe Text)
cobriDetails
  = lens _cobriDetails (\ s a -> s{_cobriDetails = a})

instance FromJSON CcOfferBonusRewardsItem where
        parseJSON
          = withObject "CcOfferBonusRewardsItem"
              (\ o ->
                 CcOfferBonusRewardsItem <$>
                   (o .:? "amount") <*> (o .:? "details"))

instance ToJSON CcOfferBonusRewardsItem where
        toJSON CcOfferBonusRewardsItem{..}
          = object
              (catMaybes
                 [("amount" .=) <$> _cobriAmount,
                  ("details" .=) <$> _cobriDetails])

--
-- /See:/ 'events' smart constructor.
data Events = Events
    { _eveNextPageToken :: !(Maybe Text)
    , _eveKind          :: !Text
    , _eveItems         :: !(Maybe [Event])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Events' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eveNextPageToken'
--
-- * 'eveKind'
--
-- * 'eveItems'
events
    :: Events
events =
    Events
    { _eveNextPageToken = Nothing
    , _eveKind = "gan#events"
    , _eveItems = Nothing
    }

-- | The \'pageToken\' to pass to the next request to get the next page, if
-- there are more to retrieve.
eveNextPageToken :: Lens' Events (Maybe Text)
eveNextPageToken
  = lens _eveNextPageToken
      (\ s a -> s{_eveNextPageToken = a})

-- | The kind for a page of events.
eveKind :: Lens' Events Text
eveKind = lens _eveKind (\ s a -> s{_eveKind = a})

-- | The event list.
eveItems :: Lens' Events [Event]
eveItems
  = lens _eveItems (\ s a -> s{_eveItems = a}) .
      _Default
      . _Coerce

instance FromJSON Events where
        parseJSON
          = withObject "Events"
              (\ o ->
                 Events <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "gan#events")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON Events where
        toJSON Events{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _eveNextPageToken,
                  Just ("kind" .= _eveKind),
                  ("items" .=) <$> _eveItems])

-- | Special offers on the link.
--
-- /See:/ 'linkSpecialOffers' smart constructor.
data LinkSpecialOffers = LinkSpecialOffers
    { _lsoFreeShippingMin :: !(Maybe Money)
    , _lsoPercentOff      :: !(Maybe (Textual Double))
    , _lsoPriceCut        :: !(Maybe Money)
    , _lsoPriceCutMin     :: !(Maybe Money)
    , _lsoPercentOffMin   :: !(Maybe Money)
    , _lsoFreeShipping    :: !(Maybe Bool)
    , _lsoPromotionCodes  :: !(Maybe [Text])
    , _lsoFreeGift        :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
lsoFreeShippingMin :: Lens' LinkSpecialOffers (Maybe Money)
lsoFreeShippingMin
  = lens _lsoFreeShippingMin
      (\ s a -> s{_lsoFreeShippingMin = a})

-- | Percent off on the purchase
lsoPercentOff :: Lens' LinkSpecialOffers (Maybe Double)
lsoPercentOff
  = lens _lsoPercentOff
      (\ s a -> s{_lsoPercentOff = a})
      . mapping _Coerce

-- | Price cut on the purchase
lsoPriceCut :: Lens' LinkSpecialOffers (Maybe Money)
lsoPriceCut
  = lens _lsoPriceCut (\ s a -> s{_lsoPriceCut = a})

-- | Minimum purchase amount for price cut promotion
lsoPriceCutMin :: Lens' LinkSpecialOffers (Maybe Money)
lsoPriceCutMin
  = lens _lsoPriceCutMin
      (\ s a -> s{_lsoPriceCutMin = a})

-- | Minimum purchase amount for percent off promotion
lsoPercentOffMin :: Lens' LinkSpecialOffers (Maybe Money)
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

instance FromJSON LinkSpecialOffers where
        parseJSON
          = withObject "LinkSpecialOffers"
              (\ o ->
                 LinkSpecialOffers <$>
                   (o .:? "freeShippingMin") <*> (o .:? "percentOff")
                     <*> (o .:? "priceCut")
                     <*> (o .:? "priceCutMin")
                     <*> (o .:? "percentOffMin")
                     <*> (o .:? "freeShipping")
                     <*> (o .:? "promotionCodes" .!= mempty)
                     <*> (o .:? "freeGift"))

instance ToJSON LinkSpecialOffers where
        toJSON LinkSpecialOffers{..}
          = object
              (catMaybes
                 [("freeShippingMin" .=) <$> _lsoFreeShippingMin,
                  ("percentOff" .=) <$> _lsoPercentOff,
                  ("priceCut" .=) <$> _lsoPriceCut,
                  ("priceCutMin" .=) <$> _lsoPriceCutMin,
                  ("percentOffMin" .=) <$> _lsoPercentOffMin,
                  ("freeShipping" .=) <$> _lsoFreeShipping,
                  ("promotionCodes" .=) <$> _lsoPromotionCodes,
                  ("freeGift" .=) <$> _lsoFreeGift])

--
-- /See:/ 'publishers' smart constructor.
data Publishers = Publishers
    { _pNextPageToken :: !(Maybe Text)
    , _pKind          :: !Text
    , _pItems         :: !(Maybe [Publisher])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
pItems :: Lens' Publishers [Publisher]
pItems
  = lens _pItems (\ s a -> s{_pItems = a}) . _Default .
      _Coerce

instance FromJSON Publishers where
        parseJSON
          = withObject "Publishers"
              (\ o ->
                 Publishers <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "gan#publishers")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON Publishers where
        toJSON Publishers{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _pNextPageToken,
                  Just ("kind" .= _pKind), ("items" .=) <$> _pItems])

-- | An AdvertiserResource.
--
-- /See:/ 'advertiser' smart constructor.
data Advertiser = Advertiser
    { _advAllowPublisherCreatedLinks :: !(Maybe Bool)
    , _advContactPhone               :: !(Maybe Text)
    , _advContactEmail               :: !(Maybe Text)
    , _advStatus                     :: !(Maybe Text)
    , _advLogoURL                    :: !(Maybe Text)
    , _advKind                       :: !Text
    , _advCategory                   :: !(Maybe Text)
    , _advSiteURL                    :: !(Maybe Text)
    , _advPayoutRank                 :: !(Maybe Text)
    , _advJoinDate                   :: !(Maybe DateTime')
    , _advDefaultLinkId              :: !(Maybe (Textual Int64))
    , _advRedirectDomains            :: !(Maybe [Text])
    , _advName                       :: !(Maybe Text)
    , _advProductFeedsEnabled        :: !(Maybe Bool)
    , _advMerchantCenterIds          :: !(Maybe [Textual Int64])
    , _advEpcSevenDayAverage         :: !(Maybe Money)
    , _advItem                       :: !(Maybe Advertiser)
    , _advId                         :: !(Maybe (Textual Int64))
    , _advEpcNinetyDayAverage        :: !(Maybe Money)
    , _advCommissionDuration         :: !(Maybe (Textual Int32))
    , _advDescription                :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Advertiser' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'advAllowPublisherCreatedLinks'
--
-- * 'advContactPhone'
--
-- * 'advContactEmail'
--
-- * 'advStatus'
--
-- * 'advLogoURL'
--
-- * 'advKind'
--
-- * 'advCategory'
--
-- * 'advSiteURL'
--
-- * 'advPayoutRank'
--
-- * 'advJoinDate'
--
-- * 'advDefaultLinkId'
--
-- * 'advRedirectDomains'
--
-- * 'advName'
--
-- * 'advProductFeedsEnabled'
--
-- * 'advMerchantCenterIds'
--
-- * 'advEpcSevenDayAverage'
--
-- * 'advItem'
--
-- * 'advId'
--
-- * 'advEpcNinetyDayAverage'
--
-- * 'advCommissionDuration'
--
-- * 'advDescription'
advertiser
    :: Advertiser
advertiser =
    Advertiser
    { _advAllowPublisherCreatedLinks = Nothing
    , _advContactPhone = Nothing
    , _advContactEmail = Nothing
    , _advStatus = Nothing
    , _advLogoURL = Nothing
    , _advKind = "gan#advertiser"
    , _advCategory = Nothing
    , _advSiteURL = Nothing
    , _advPayoutRank = Nothing
    , _advJoinDate = Nothing
    , _advDefaultLinkId = Nothing
    , _advRedirectDomains = Nothing
    , _advName = Nothing
    , _advProductFeedsEnabled = Nothing
    , _advMerchantCenterIds = Nothing
    , _advEpcSevenDayAverage = Nothing
    , _advItem = Nothing
    , _advId = Nothing
    , _advEpcNinetyDayAverage = Nothing
    , _advCommissionDuration = Nothing
    , _advDescription = Nothing
    }

-- | True if the advertiser allows publisher created links, otherwise false.
advAllowPublisherCreatedLinks :: Lens' Advertiser (Maybe Bool)
advAllowPublisherCreatedLinks
  = lens _advAllowPublisherCreatedLinks
      (\ s a -> s{_advAllowPublisherCreatedLinks = a})

-- | Phone that this advertiser would like publishers to contact them with.
advContactPhone :: Lens' Advertiser (Maybe Text)
advContactPhone
  = lens _advContactPhone
      (\ s a -> s{_advContactPhone = a})

-- | Email that this advertiser would like publishers to contact them with.
advContactEmail :: Lens' Advertiser (Maybe Text)
advContactEmail
  = lens _advContactEmail
      (\ s a -> s{_advContactEmail = a})

-- | The status of the requesting publisher\'s relationship this advertiser.
advStatus :: Lens' Advertiser (Maybe Text)
advStatus
  = lens _advStatus (\ s a -> s{_advStatus = a})

-- | URL to the logo this advertiser uses on the Google Affiliate Network.
advLogoURL :: Lens' Advertiser (Maybe Text)
advLogoURL
  = lens _advLogoURL (\ s a -> s{_advLogoURL = a})

-- | The kind for an advertiser.
advKind :: Lens' Advertiser Text
advKind = lens _advKind (\ s a -> s{_advKind = a})

-- | Category that this advertiser belongs to. A valid list of categories can
-- be found here:
-- http:\/\/www.google.com\/support\/affiliatenetwork\/advertiser\/bin\/answer.py?hl=en&answer=107581
advCategory :: Lens' Advertiser (Maybe Text)
advCategory
  = lens _advCategory (\ s a -> s{_advCategory = a})

-- | URL of the website this advertiser advertises from.
advSiteURL :: Lens' Advertiser (Maybe Text)
advSiteURL
  = lens _advSiteURL (\ s a -> s{_advSiteURL = a})

-- | A rank based on commissions paid to publishers over the past 90 days. A
-- number between 1 and 4 where 4 means the top quartile (most money paid)
-- and 1 means the bottom quartile (least money paid).
advPayoutRank :: Lens' Advertiser (Maybe Text)
advPayoutRank
  = lens _advPayoutRank
      (\ s a -> s{_advPayoutRank = a})

-- | Date that this advertiser was approved as a Google Affiliate Network
-- advertiser.
advJoinDate :: Lens' Advertiser (Maybe UTCTime)
advJoinDate
  = lens _advJoinDate (\ s a -> s{_advJoinDate = a}) .
      mapping _DateTime

-- | The default link id for this advertiser.
advDefaultLinkId :: Lens' Advertiser (Maybe Int64)
advDefaultLinkId
  = lens _advDefaultLinkId
      (\ s a -> s{_advDefaultLinkId = a})
      . mapping _Coerce

-- | List of redirect URLs for this advertiser
advRedirectDomains :: Lens' Advertiser [Text]
advRedirectDomains
  = lens _advRedirectDomains
      (\ s a -> s{_advRedirectDomains = a})
      . _Default
      . _Coerce

-- | The name of this advertiser.
advName :: Lens' Advertiser (Maybe Text)
advName = lens _advName (\ s a -> s{_advName = a})

-- | Allows advertisers to submit product listings to Google Product Search.
advProductFeedsEnabled :: Lens' Advertiser (Maybe Bool)
advProductFeedsEnabled
  = lens _advProductFeedsEnabled
      (\ s a -> s{_advProductFeedsEnabled = a})

-- | List of merchant center ids for this advertiser
advMerchantCenterIds :: Lens' Advertiser [Int64]
advMerchantCenterIds
  = lens _advMerchantCenterIds
      (\ s a -> s{_advMerchantCenterIds = a})
      . _Default
      . _Coerce

-- | The sum of fees paid to publishers divided by the total number of clicks
-- over the past seven days. This value should be multiplied by 100 at the
-- time of display.
advEpcSevenDayAverage :: Lens' Advertiser (Maybe Money)
advEpcSevenDayAverage
  = lens _advEpcSevenDayAverage
      (\ s a -> s{_advEpcSevenDayAverage = a})

-- | The requested advertiser.
advItem :: Lens' Advertiser (Maybe Advertiser)
advItem = lens _advItem (\ s a -> s{_advItem = a})

-- | The ID of this advertiser.
advId :: Lens' Advertiser (Maybe Int64)
advId
  = lens _advId (\ s a -> s{_advId = a}) .
      mapping _Coerce

-- | The sum of fees paid to publishers divided by the total number of clicks
-- over the past three months. This value should be multiplied by 100 at
-- the time of display.
advEpcNinetyDayAverage :: Lens' Advertiser (Maybe Money)
advEpcNinetyDayAverage
  = lens _advEpcNinetyDayAverage
      (\ s a -> s{_advEpcNinetyDayAverage = a})

-- | The longest possible length of a commission (how long the cookies on the
-- customer\'s browser last before they expire).
advCommissionDuration :: Lens' Advertiser (Maybe Int32)
advCommissionDuration
  = lens _advCommissionDuration
      (\ s a -> s{_advCommissionDuration = a})
      . mapping _Coerce

-- | Description of the website the advertiser advertises from.
advDescription :: Lens' Advertiser (Maybe Text)
advDescription
  = lens _advDescription
      (\ s a -> s{_advDescription = a})

instance FromJSON Advertiser where
        parseJSON
          = withObject "Advertiser"
              (\ o ->
                 Advertiser <$>
                   (o .:? "allowPublisherCreatedLinks") <*>
                     (o .:? "contactPhone")
                     <*> (o .:? "contactEmail")
                     <*> (o .:? "status")
                     <*> (o .:? "logoUrl")
                     <*> (o .:? "kind" .!= "gan#advertiser")
                     <*> (o .:? "category")
                     <*> (o .:? "siteUrl")
                     <*> (o .:? "payoutRank")
                     <*> (o .:? "joinDate")
                     <*> (o .:? "defaultLinkId")
                     <*> (o .:? "redirectDomains" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "productFeedsEnabled")
                     <*> (o .:? "merchantCenterIds" .!= mempty)
                     <*> (o .:? "epcSevenDayAverage")
                     <*> (o .:? "item")
                     <*> (o .:? "id")
                     <*> (o .:? "epcNinetyDayAverage")
                     <*> (o .:? "commissionDuration")
                     <*> (o .:? "description"))

instance ToJSON Advertiser where
        toJSON Advertiser{..}
          = object
              (catMaybes
                 [("allowPublisherCreatedLinks" .=) <$>
                    _advAllowPublisherCreatedLinks,
                  ("contactPhone" .=) <$> _advContactPhone,
                  ("contactEmail" .=) <$> _advContactEmail,
                  ("status" .=) <$> _advStatus,
                  ("logoUrl" .=) <$> _advLogoURL,
                  Just ("kind" .= _advKind),
                  ("category" .=) <$> _advCategory,
                  ("siteUrl" .=) <$> _advSiteURL,
                  ("payoutRank" .=) <$> _advPayoutRank,
                  ("joinDate" .=) <$> _advJoinDate,
                  ("defaultLinkId" .=) <$> _advDefaultLinkId,
                  ("redirectDomains" .=) <$> _advRedirectDomains,
                  ("name" .=) <$> _advName,
                  ("productFeedsEnabled" .=) <$>
                    _advProductFeedsEnabled,
                  ("merchantCenterIds" .=) <$> _advMerchantCenterIds,
                  ("epcSevenDayAverage" .=) <$> _advEpcSevenDayAverage,
                  ("item" .=) <$> _advItem, ("id" .=) <$> _advId,
                  ("epcNinetyDayAverage" .=) <$>
                    _advEpcNinetyDayAverage,
                  ("commissionDuration" .=) <$> _advCommissionDuration,
                  ("description" .=) <$> _advDescription])

-- | A credit card offer. There are many possible result fields. We provide
-- two different views of the data, or \"projections.\" The \"full\"
-- projection includes every result field. And the \"summary\" projection,
-- which is the default, includes a smaller subset of the fields. The
-- fields included in the summary projection are marked as such in their
-- descriptions.
--
-- /See:/ 'ccOffer' smart constructor.
data CcOffer = CcOffer
    { _cMinimumFinanceCharge          :: !(Maybe Text)
    , _cTrackingURL                   :: !(Maybe Text)
    , _cProhibitedCategories          :: !(Maybe [Text])
    , _cBalanceComputationMethod      :: !(Maybe Text)
    , _cInitialSetupAndProcessingFee  :: !(Maybe Text)
    , _cReturnedPaymentFee            :: !(Maybe Text)
    , _cAgeMinimumDetails             :: !(Maybe Text)
    , _cVariableRatesUpdateFrequency  :: !(Maybe Text)
    , _cCreditLimitMin                :: !(Maybe (Textual Double))
    , _cTravelInsurance               :: !(Maybe Text)
    , _cApprovedCategories            :: !(Maybe [Text])
    , _cAnnualFeeDisplay              :: !(Maybe Text)
    , _cOverLimitFee                  :: !(Maybe Text)
    , _cMaxPurchaseRate               :: !(Maybe (Textual Double))
    , _cAgeMinimum                    :: !(Maybe (Textual Double))
    , _cVariableRatesLastUpdated      :: !(Maybe Text)
    , _cIntroCashAdvanceTerms         :: !(Maybe Text)
    , _cIssuerWebsite                 :: !(Maybe Text)
    , _cLuggageInsurance              :: !(Maybe Text)
    , _cKind                          :: !Text
    , _cRewardsHaveBlackoutDates      :: !(Maybe Bool)
    , _cDisclaimer                    :: !(Maybe Text)
    , _cAdditionalCardHolderFee       :: !(Maybe Text)
    , _cExistingCustomerOnly          :: !(Maybe Bool)
    , _cEmergencyInsurance            :: !(Maybe Text)
    , _cNetwork                       :: !(Maybe Text)
    , _cCashAdvanceTerms              :: !(Maybe Text)
    , _cStatementCopyFee              :: !(Maybe Text)
    , _cAprDisplay                    :: !(Maybe Text)
    , _cOffersImmediateCashReward     :: !(Maybe Bool)
    , _cRewards                       :: !(Maybe [CcOfferRewardsItem])
    , _cCardType                      :: !(Maybe Text)
    , _cImageURL                      :: !(Maybe Text)
    , _cCreditLimitMax                :: !(Maybe (Textual Double))
    , _cLandingPageURL                :: !(Maybe Text)
    , _cAnnualFee                     :: !(Maybe (Textual Double))
    , _cRewardsExpire                 :: !(Maybe Bool)
    , _cFirstYearAnnualFee            :: !(Maybe (Textual Double))
    , _cCarRentalInsurance            :: !(Maybe Text)
    , _cPurchaseRateAdditionalDetails :: !(Maybe Text)
    , _cOfferId                       :: !(Maybe Text)
    , _cGracePeriodDisplay            :: !(Maybe Text)
    , _cIntroPurchaseTerms            :: !(Maybe Text)
    , _cCreditRatingDisplay           :: !(Maybe Text)
    , _cBalanceTransferTerms          :: !(Maybe Text)
    , _cLatePaymentFee                :: !(Maybe Text)
    , _cCardBenefits                  :: !(Maybe [Text])
    , _cIssuer                        :: !(Maybe Text)
    , _cCardName                      :: !(Maybe Text)
    , _cMinPurchaseRate               :: !(Maybe (Textual Double))
    , _cFraudLiability                :: !(Maybe Text)
    , _cForeignCurrencyTransactionFee :: !(Maybe Text)
    , _cExtendedWarranty              :: !(Maybe Text)
    , _cAnnualRewardMaximum           :: !(Maybe (Textual Double))
    , _cIssuerId                      :: !(Maybe Text)
    , _cIntroBalanceTransferTerms     :: !(Maybe Text)
    , _cDefaultFees                   :: !(Maybe [CcOfferDefaultFeesItem])
    , _cAdditionalCardBenefits        :: !(Maybe [Text])
    , _cRewardUnit                    :: !(Maybe Text)
    , _cBonusRewards                  :: !(Maybe [CcOfferBonusRewardsItem])
    , _cFlightAccidentInsurance       :: !(Maybe Text)
    , _cRewardPartner                 :: !(Maybe Text)
    , _cPurchaseRateType              :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CcOffer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cMinimumFinanceCharge'
--
-- * 'cTrackingURL'
--
-- * 'cProhibitedCategories'
--
-- * 'cBalanceComputationMethod'
--
-- * 'cInitialSetupAndProcessingFee'
--
-- * 'cReturnedPaymentFee'
--
-- * 'cAgeMinimumDetails'
--
-- * 'cVariableRatesUpdateFrequency'
--
-- * 'cCreditLimitMin'
--
-- * 'cTravelInsurance'
--
-- * 'cApprovedCategories'
--
-- * 'cAnnualFeeDisplay'
--
-- * 'cOverLimitFee'
--
-- * 'cMaxPurchaseRate'
--
-- * 'cAgeMinimum'
--
-- * 'cVariableRatesLastUpdated'
--
-- * 'cIntroCashAdvanceTerms'
--
-- * 'cIssuerWebsite'
--
-- * 'cLuggageInsurance'
--
-- * 'cKind'
--
-- * 'cRewardsHaveBlackoutDates'
--
-- * 'cDisclaimer'
--
-- * 'cAdditionalCardHolderFee'
--
-- * 'cExistingCustomerOnly'
--
-- * 'cEmergencyInsurance'
--
-- * 'cNetwork'
--
-- * 'cCashAdvanceTerms'
--
-- * 'cStatementCopyFee'
--
-- * 'cAprDisplay'
--
-- * 'cOffersImmediateCashReward'
--
-- * 'cRewards'
--
-- * 'cCardType'
--
-- * 'cImageURL'
--
-- * 'cCreditLimitMax'
--
-- * 'cLandingPageURL'
--
-- * 'cAnnualFee'
--
-- * 'cRewardsExpire'
--
-- * 'cFirstYearAnnualFee'
--
-- * 'cCarRentalInsurance'
--
-- * 'cPurchaseRateAdditionalDetails'
--
-- * 'cOfferId'
--
-- * 'cGracePeriodDisplay'
--
-- * 'cIntroPurchaseTerms'
--
-- * 'cCreditRatingDisplay'
--
-- * 'cBalanceTransferTerms'
--
-- * 'cLatePaymentFee'
--
-- * 'cCardBenefits'
--
-- * 'cIssuer'
--
-- * 'cCardName'
--
-- * 'cMinPurchaseRate'
--
-- * 'cFraudLiability'
--
-- * 'cForeignCurrencyTransactionFee'
--
-- * 'cExtendedWarranty'
--
-- * 'cAnnualRewardMaximum'
--
-- * 'cIssuerId'
--
-- * 'cIntroBalanceTransferTerms'
--
-- * 'cDefaultFees'
--
-- * 'cAdditionalCardBenefits'
--
-- * 'cRewardUnit'
--
-- * 'cBonusRewards'
--
-- * 'cFlightAccidentInsurance'
--
-- * 'cRewardPartner'
--
-- * 'cPurchaseRateType'
ccOffer
    :: CcOffer
ccOffer =
    CcOffer
    { _cMinimumFinanceCharge = Nothing
    , _cTrackingURL = Nothing
    , _cProhibitedCategories = Nothing
    , _cBalanceComputationMethod = Nothing
    , _cInitialSetupAndProcessingFee = Nothing
    , _cReturnedPaymentFee = Nothing
    , _cAgeMinimumDetails = Nothing
    , _cVariableRatesUpdateFrequency = Nothing
    , _cCreditLimitMin = Nothing
    , _cTravelInsurance = Nothing
    , _cApprovedCategories = Nothing
    , _cAnnualFeeDisplay = Nothing
    , _cOverLimitFee = Nothing
    , _cMaxPurchaseRate = Nothing
    , _cAgeMinimum = Nothing
    , _cVariableRatesLastUpdated = Nothing
    , _cIntroCashAdvanceTerms = Nothing
    , _cIssuerWebsite = Nothing
    , _cLuggageInsurance = Nothing
    , _cKind = "gan#ccOffer"
    , _cRewardsHaveBlackoutDates = Nothing
    , _cDisclaimer = Nothing
    , _cAdditionalCardHolderFee = Nothing
    , _cExistingCustomerOnly = Nothing
    , _cEmergencyInsurance = Nothing
    , _cNetwork = Nothing
    , _cCashAdvanceTerms = Nothing
    , _cStatementCopyFee = Nothing
    , _cAprDisplay = Nothing
    , _cOffersImmediateCashReward = Nothing
    , _cRewards = Nothing
    , _cCardType = Nothing
    , _cImageURL = Nothing
    , _cCreditLimitMax = Nothing
    , _cLandingPageURL = Nothing
    , _cAnnualFee = Nothing
    , _cRewardsExpire = Nothing
    , _cFirstYearAnnualFee = Nothing
    , _cCarRentalInsurance = Nothing
    , _cPurchaseRateAdditionalDetails = Nothing
    , _cOfferId = Nothing
    , _cGracePeriodDisplay = Nothing
    , _cIntroPurchaseTerms = Nothing
    , _cCreditRatingDisplay = Nothing
    , _cBalanceTransferTerms = Nothing
    , _cLatePaymentFee = Nothing
    , _cCardBenefits = Nothing
    , _cIssuer = Nothing
    , _cCardName = Nothing
    , _cMinPurchaseRate = Nothing
    , _cFraudLiability = Nothing
    , _cForeignCurrencyTransactionFee = Nothing
    , _cExtendedWarranty = Nothing
    , _cAnnualRewardMaximum = Nothing
    , _cIssuerId = Nothing
    , _cIntroBalanceTransferTerms = Nothing
    , _cDefaultFees = Nothing
    , _cAdditionalCardBenefits = Nothing
    , _cRewardUnit = Nothing
    , _cBonusRewards = Nothing
    , _cFlightAccidentInsurance = Nothing
    , _cRewardPartner = Nothing
    , _cPurchaseRateType = Nothing
    }

-- | Text describing how much missing the grace period will cost.
cMinimumFinanceCharge :: Lens' CcOffer (Maybe Text)
cMinimumFinanceCharge
  = lens _cMinimumFinanceCharge
      (\ s a -> s{_cMinimumFinanceCharge = a})

-- | The link to ping to register a click on this offer. A summary field.
cTrackingURL :: Lens' CcOffer (Maybe Text)
cTrackingURL
  = lens _cTrackingURL (\ s a -> s{_cTrackingURL = a})

-- | Categories in which the issuer does not wish the card to be displayed. A
-- summary field.
cProhibitedCategories :: Lens' CcOffer [Text]
cProhibitedCategories
  = lens _cProhibitedCategories
      (\ s a -> s{_cProhibitedCategories = a})
      . _Default
      . _Coerce

-- | Text describing how the balance is computed. A summary field.
cBalanceComputationMethod :: Lens' CcOffer (Maybe Text)
cBalanceComputationMethod
  = lens _cBalanceComputationMethod
      (\ s a -> s{_cBalanceComputationMethod = a})

-- | Fee for setting up the card.
cInitialSetupAndProcessingFee :: Lens' CcOffer (Maybe Text)
cInitialSetupAndProcessingFee
  = lens _cInitialSetupAndProcessingFee
      (\ s a -> s{_cInitialSetupAndProcessingFee = a})

-- | Text describing the fee for a payment that doesn\'t clear. A summary
-- field.
cReturnedPaymentFee :: Lens' CcOffer (Maybe Text)
cReturnedPaymentFee
  = lens _cReturnedPaymentFee
      (\ s a -> s{_cReturnedPaymentFee = a})

-- | Text describing the details of the age minimum restriction.
cAgeMinimumDetails :: Lens' CcOffer (Maybe Text)
cAgeMinimumDetails
  = lens _cAgeMinimumDetails
      (\ s a -> s{_cAgeMinimumDetails = a})

-- | How often variable rates are updated.
cVariableRatesUpdateFrequency :: Lens' CcOffer (Maybe Text)
cVariableRatesUpdateFrequency
  = lens _cVariableRatesUpdateFrequency
      (\ s a -> s{_cVariableRatesUpdateFrequency = a})

-- | The low end for credit limits the issuer imposes on recipients of this
-- card.
cCreditLimitMin :: Lens' CcOffer (Maybe Double)
cCreditLimitMin
  = lens _cCreditLimitMin
      (\ s a -> s{_cCreditLimitMin = a})
      . mapping _Coerce

-- | If you get coverage when you use the card for the given activity, this
-- field describes it.
cTravelInsurance :: Lens' CcOffer (Maybe Text)
cTravelInsurance
  = lens _cTravelInsurance
      (\ s a -> s{_cTravelInsurance = a})

-- | Possible categories for this card, eg \"Low Interest\" or \"Good.\" A
-- summary field.
cApprovedCategories :: Lens' CcOffer [Text]
cApprovedCategories
  = lens _cApprovedCategories
      (\ s a -> s{_cApprovedCategories = a})
      . _Default
      . _Coerce

-- | Text describing the annual fee, including any difference for the first
-- year. A summary field.
cAnnualFeeDisplay :: Lens' CcOffer (Maybe Text)
cAnnualFeeDisplay
  = lens _cAnnualFeeDisplay
      (\ s a -> s{_cAnnualFeeDisplay = a})

-- | Fee for exceeding the card\'s charge limit.
cOverLimitFee :: Lens' CcOffer (Maybe Text)
cOverLimitFee
  = lens _cOverLimitFee
      (\ s a -> s{_cOverLimitFee = a})

-- | The highest interest rate the issuer charges on this card. Expressed as
-- an absolute number, not as a percentage.
cMaxPurchaseRate :: Lens' CcOffer (Maybe Double)
cMaxPurchaseRate
  = lens _cMaxPurchaseRate
      (\ s a -> s{_cMaxPurchaseRate = a})
      . mapping _Coerce

-- | The youngest a recipient of this card may be.
cAgeMinimum :: Lens' CcOffer (Maybe Double)
cAgeMinimum
  = lens _cAgeMinimum (\ s a -> s{_cAgeMinimum = a}) .
      mapping _Coerce

-- | When variable rates were last updated.
cVariableRatesLastUpdated :: Lens' CcOffer (Maybe Text)
cVariableRatesLastUpdated
  = lens _cVariableRatesLastUpdated
      (\ s a -> s{_cVariableRatesLastUpdated = a})

-- | Text describing the terms for introductory period cash advances. A
-- summary field.
cIntroCashAdvanceTerms :: Lens' CcOffer (Maybe Text)
cIntroCashAdvanceTerms
  = lens _cIntroCashAdvanceTerms
      (\ s a -> s{_cIntroCashAdvanceTerms = a})

-- | The generic link to the issuer\'s site.
cIssuerWebsite :: Lens' CcOffer (Maybe Text)
cIssuerWebsite
  = lens _cIssuerWebsite
      (\ s a -> s{_cIssuerWebsite = a})

-- | If you get coverage when you use the card for the given activity, this
-- field describes it.
cLuggageInsurance :: Lens' CcOffer (Maybe Text)
cLuggageInsurance
  = lens _cLuggageInsurance
      (\ s a -> s{_cLuggageInsurance = a})

-- | The kind for one credit card offer. A summary field.
cKind :: Lens' CcOffer Text
cKind = lens _cKind (\ s a -> s{_cKind = a})

-- | For airline miles rewards, tells whether blackout dates apply to the
-- miles.
cRewardsHaveBlackoutDates :: Lens' CcOffer (Maybe Bool)
cRewardsHaveBlackoutDates
  = lens _cRewardsHaveBlackoutDates
      (\ s a -> s{_cRewardsHaveBlackoutDates = a})

-- | A notice that, if present, is referenced via an asterisk by many of the
-- other summary fields. If this field is present, it will always start
-- with an asterisk (\"*\"), and must be prominently displayed with the
-- offer. A summary field.
cDisclaimer :: Lens' CcOffer (Maybe Text)
cDisclaimer
  = lens _cDisclaimer (\ s a -> s{_cDisclaimer = a})

-- | Any extra fees levied on card holders.
cAdditionalCardHolderFee :: Lens' CcOffer (Maybe Text)
cAdditionalCardHolderFee
  = lens _cAdditionalCardHolderFee
      (\ s a -> s{_cAdditionalCardHolderFee = a})

-- | Whether this card is only available to existing customers of the issuer.
cExistingCustomerOnly :: Lens' CcOffer (Maybe Bool)
cExistingCustomerOnly
  = lens _cExistingCustomerOnly
      (\ s a -> s{_cExistingCustomerOnly = a})

-- | If you get coverage when you use the card for the given activity, this
-- field describes it.
cEmergencyInsurance :: Lens' CcOffer (Maybe Text)
cEmergencyInsurance
  = lens _cEmergencyInsurance
      (\ s a -> s{_cEmergencyInsurance = a})

-- | Which network (eg Visa) the card belongs to. A summary field.
cNetwork :: Lens' CcOffer (Maybe Text)
cNetwork = lens _cNetwork (\ s a -> s{_cNetwork = a})

-- | Text describing the terms for cash advances. A summary field.
cCashAdvanceTerms :: Lens' CcOffer (Maybe Text)
cCashAdvanceTerms
  = lens _cCashAdvanceTerms
      (\ s a -> s{_cCashAdvanceTerms = a})

-- | Fee for requesting a copy of your statement.
cStatementCopyFee :: Lens' CcOffer (Maybe Text)
cStatementCopyFee
  = lens _cStatementCopyFee
      (\ s a -> s{_cStatementCopyFee = a})

-- | Text describing the purchase APR. A summary field.
cAprDisplay :: Lens' CcOffer (Maybe Text)
cAprDisplay
  = lens _cAprDisplay (\ s a -> s{_cAprDisplay = a})

-- | Whether a cash reward program lets you get cash back sooner than end of
-- year or other longish period.
cOffersImmediateCashReward :: Lens' CcOffer (Maybe Bool)
cOffersImmediateCashReward
  = lens _cOffersImmediateCashReward
      (\ s a -> s{_cOffersImmediateCashReward = a})

-- | For cards with rewards programs, detailed rules about how the program
-- works.
cRewards :: Lens' CcOffer [CcOfferRewardsItem]
cRewards
  = lens _cRewards (\ s a -> s{_cRewards = a}) .
      _Default
      . _Coerce

-- | What kind of credit card this is, for example secured or unsecured.
cCardType :: Lens' CcOffer (Maybe Text)
cCardType
  = lens _cCardType (\ s a -> s{_cCardType = a})

-- | The link to the image of the card that is shown on Connect Commerce. A
-- summary field.
cImageURL :: Lens' CcOffer (Maybe Text)
cImageURL
  = lens _cImageURL (\ s a -> s{_cImageURL = a})

-- | The high end for credit limits the issuer imposes on recipients of this
-- card.
cCreditLimitMax :: Lens' CcOffer (Maybe Double)
cCreditLimitMax
  = lens _cCreditLimitMax
      (\ s a -> s{_cCreditLimitMax = a})
      . mapping _Coerce

-- | The link to the issuer\'s page for this card. A summary field.
cLandingPageURL :: Lens' CcOffer (Maybe Text)
cLandingPageURL
  = lens _cLandingPageURL
      (\ s a -> s{_cLandingPageURL = a})

-- | The ongoing annual fee, in dollars.
cAnnualFee :: Lens' CcOffer (Maybe Double)
cAnnualFee
  = lens _cAnnualFee (\ s a -> s{_cAnnualFee = a}) .
      mapping _Coerce

-- | Whether accumulated rewards ever expire.
cRewardsExpire :: Lens' CcOffer (Maybe Bool)
cRewardsExpire
  = lens _cRewardsExpire
      (\ s a -> s{_cRewardsExpire = a})

-- | The annual fee for the first year, if different from the ongoing fee.
-- Optional.
cFirstYearAnnualFee :: Lens' CcOffer (Maybe Double)
cFirstYearAnnualFee
  = lens _cFirstYearAnnualFee
      (\ s a -> s{_cFirstYearAnnualFee = a})
      . mapping _Coerce

-- | If you get coverage when you use the card for the given activity, this
-- field describes it.
cCarRentalInsurance :: Lens' CcOffer (Maybe Text)
cCarRentalInsurance
  = lens _cCarRentalInsurance
      (\ s a -> s{_cCarRentalInsurance = a})

-- | Text describing any additional details for the purchase rate. A summary
-- field.
cPurchaseRateAdditionalDetails :: Lens' CcOffer (Maybe Text)
cPurchaseRateAdditionalDetails
  = lens _cPurchaseRateAdditionalDetails
      (\ s a -> s{_cPurchaseRateAdditionalDetails = a})

-- | This offer\'s ID. A summary field.
cOfferId :: Lens' CcOffer (Maybe Text)
cOfferId = lens _cOfferId (\ s a -> s{_cOfferId = a})

-- | Text describing the grace period before finance charges apply. A summary
-- field.
cGracePeriodDisplay :: Lens' CcOffer (Maybe Text)
cGracePeriodDisplay
  = lens _cGracePeriodDisplay
      (\ s a -> s{_cGracePeriodDisplay = a})

-- | Text describing the terms for introductory period purchases. A summary
-- field.
cIntroPurchaseTerms :: Lens' CcOffer (Maybe Text)
cIntroPurchaseTerms
  = lens _cIntroPurchaseTerms
      (\ s a -> s{_cIntroPurchaseTerms = a})

-- | Text describing the credit ratings required for recipients of this card,
-- for example \"Excellent\/Good.\" A summary field.
cCreditRatingDisplay :: Lens' CcOffer (Maybe Text)
cCreditRatingDisplay
  = lens _cCreditRatingDisplay
      (\ s a -> s{_cCreditRatingDisplay = a})

-- | Text describing the terms for balance transfers. A summary field.
cBalanceTransferTerms :: Lens' CcOffer (Maybe Text)
cBalanceTransferTerms
  = lens _cBalanceTransferTerms
      (\ s a -> s{_cBalanceTransferTerms = a})

-- | Text describing how much a late payment will cost, eg \"up to $35.\" A
-- summary field.
cLatePaymentFee :: Lens' CcOffer (Maybe Text)
cLatePaymentFee
  = lens _cLatePaymentFee
      (\ s a -> s{_cLatePaymentFee = a})

-- | A list of what the issuer thinks are the most important benefits of the
-- card. Usually summarizes the rewards program, if there is one. A summary
-- field.
cCardBenefits :: Lens' CcOffer [Text]
cCardBenefits
  = lens _cCardBenefits
      (\ s a -> s{_cCardBenefits = a})
      . _Default
      . _Coerce

-- | Name of card issuer. A summary field.
cIssuer :: Lens' CcOffer (Maybe Text)
cIssuer = lens _cIssuer (\ s a -> s{_cIssuer = a})

-- | The issuer\'s name for the card, including any trademark or service mark
-- designators. A summary field.
cCardName :: Lens' CcOffer (Maybe Text)
cCardName
  = lens _cCardName (\ s a -> s{_cCardName = a})

-- | The lowest interest rate the issuer charges on this card. Expressed as
-- an absolute number, not as a percentage.
cMinPurchaseRate :: Lens' CcOffer (Maybe Double)
cMinPurchaseRate
  = lens _cMinPurchaseRate
      (\ s a -> s{_cMinPurchaseRate = a})
      . mapping _Coerce

-- | If you get coverage when you use the card for the given activity, this
-- field describes it.
cFraudLiability :: Lens' CcOffer (Maybe Text)
cFraudLiability
  = lens _cFraudLiability
      (\ s a -> s{_cFraudLiability = a})

-- | Fee for each transaction involving a foreign currency.
cForeignCurrencyTransactionFee :: Lens' CcOffer (Maybe Text)
cForeignCurrencyTransactionFee
  = lens _cForeignCurrencyTransactionFee
      (\ s a -> s{_cForeignCurrencyTransactionFee = a})

-- | If you get coverage when you use the card for the given activity, this
-- field describes it.
cExtendedWarranty :: Lens' CcOffer (Maybe Text)
cExtendedWarranty
  = lens _cExtendedWarranty
      (\ s a -> s{_cExtendedWarranty = a})

-- | The largest number of units you may accumulate in a year.
cAnnualRewardMaximum :: Lens' CcOffer (Maybe Double)
cAnnualRewardMaximum
  = lens _cAnnualRewardMaximum
      (\ s a -> s{_cAnnualRewardMaximum = a})
      . mapping _Coerce

-- | The Google Affiliate Network ID of the advertiser making this offer.
cIssuerId :: Lens' CcOffer (Maybe Text)
cIssuerId
  = lens _cIssuerId (\ s a -> s{_cIssuerId = a})

-- | Text describing the terms for introductory period balance transfers. A
-- summary field.
cIntroBalanceTransferTerms :: Lens' CcOffer (Maybe Text)
cIntroBalanceTransferTerms
  = lens _cIntroBalanceTransferTerms
      (\ s a -> s{_cIntroBalanceTransferTerms = a})

-- | Fees for defaulting on your payments.
cDefaultFees :: Lens' CcOffer [CcOfferDefaultFeesItem]
cDefaultFees
  = lens _cDefaultFees (\ s a -> s{_cDefaultFees = a})
      . _Default
      . _Coerce

-- | More marketing copy about the card\'s benefits. A summary field.
cAdditionalCardBenefits :: Lens' CcOffer [Text]
cAdditionalCardBenefits
  = lens _cAdditionalCardBenefits
      (\ s a -> s{_cAdditionalCardBenefits = a})
      . _Default
      . _Coerce

-- | For cards with rewards programs, the unit of reward. For example, miles,
-- cash back, points.
cRewardUnit :: Lens' CcOffer (Maybe Text)
cRewardUnit
  = lens _cRewardUnit (\ s a -> s{_cRewardUnit = a})

-- | For cards with rewards programs, extra circumstances whereby additional
-- rewards may be granted.
cBonusRewards :: Lens' CcOffer [CcOfferBonusRewardsItem]
cBonusRewards
  = lens _cBonusRewards
      (\ s a -> s{_cBonusRewards = a})
      . _Default
      . _Coerce

-- | If you get coverage when you use the card for the given activity, this
-- field describes it.
cFlightAccidentInsurance :: Lens' CcOffer (Maybe Text)
cFlightAccidentInsurance
  = lens _cFlightAccidentInsurance
      (\ s a -> s{_cFlightAccidentInsurance = a})

-- | The company that redeems the rewards, if different from the issuer.
cRewardPartner :: Lens' CcOffer (Maybe Text)
cRewardPartner
  = lens _cRewardPartner
      (\ s a -> s{_cRewardPartner = a})

-- | Fixed or variable.
cPurchaseRateType :: Lens' CcOffer (Maybe Text)
cPurchaseRateType
  = lens _cPurchaseRateType
      (\ s a -> s{_cPurchaseRateType = a})

instance FromJSON CcOffer where
        parseJSON
          = withObject "CcOffer"
              (\ o ->
                 CcOffer <$>
                   (o .:? "minimumFinanceCharge") <*>
                     (o .:? "trackingUrl")
                     <*> (o .:? "prohibitedCategories" .!= mempty)
                     <*> (o .:? "balanceComputationMethod")
                     <*> (o .:? "initialSetupAndProcessingFee")
                     <*> (o .:? "returnedPaymentFee")
                     <*> (o .:? "ageMinimumDetails")
                     <*> (o .:? "variableRatesUpdateFrequency")
                     <*> (o .:? "creditLimitMin")
                     <*> (o .:? "travelInsurance")
                     <*> (o .:? "approvedCategories" .!= mempty)
                     <*> (o .:? "annualFeeDisplay")
                     <*> (o .:? "overLimitFee")
                     <*> (o .:? "maxPurchaseRate")
                     <*> (o .:? "ageMinimum")
                     <*> (o .:? "variableRatesLastUpdated")
                     <*> (o .:? "introCashAdvanceTerms")
                     <*> (o .:? "issuerWebsite")
                     <*> (o .:? "luggageInsurance")
                     <*> (o .:? "kind" .!= "gan#ccOffer")
                     <*> (o .:? "rewardsHaveBlackoutDates")
                     <*> (o .:? "disclaimer")
                     <*> (o .:? "additionalCardHolderFee")
                     <*> (o .:? "existingCustomerOnly")
                     <*> (o .:? "emergencyInsurance")
                     <*> (o .:? "network")
                     <*> (o .:? "cashAdvanceTerms")
                     <*> (o .:? "statementCopyFee")
                     <*> (o .:? "aprDisplay")
                     <*> (o .:? "offersImmediateCashReward")
                     <*> (o .:? "rewards" .!= mempty)
                     <*> (o .:? "cardType")
                     <*> (o .:? "imageUrl")
                     <*> (o .:? "creditLimitMax")
                     <*> (o .:? "landingPageUrl")
                     <*> (o .:? "annualFee")
                     <*> (o .:? "rewardsExpire")
                     <*> (o .:? "firstYearAnnualFee")
                     <*> (o .:? "carRentalInsurance")
                     <*> (o .:? "purchaseRateAdditionalDetails")
                     <*> (o .:? "offerId")
                     <*> (o .:? "gracePeriodDisplay")
                     <*> (o .:? "introPurchaseTerms")
                     <*> (o .:? "creditRatingDisplay")
                     <*> (o .:? "balanceTransferTerms")
                     <*> (o .:? "latePaymentFee")
                     <*> (o .:? "cardBenefits" .!= mempty)
                     <*> (o .:? "issuer")
                     <*> (o .:? "cardName")
                     <*> (o .:? "minPurchaseRate")
                     <*> (o .:? "fraudLiability")
                     <*> (o .:? "foreignCurrencyTransactionFee")
                     <*> (o .:? "extendedWarranty")
                     <*> (o .:? "annualRewardMaximum")
                     <*> (o .:? "issuerId")
                     <*> (o .:? "introBalanceTransferTerms")
                     <*> (o .:? "defaultFees" .!= mempty)
                     <*> (o .:? "additionalCardBenefits" .!= mempty)
                     <*> (o .:? "rewardUnit")
                     <*> (o .:? "bonusRewards" .!= mempty)
                     <*> (o .:? "flightAccidentInsurance")
                     <*> (o .:? "rewardPartner")
                     <*> (o .:? "purchaseRateType"))

instance ToJSON CcOffer where
        toJSON CcOffer{..}
          = object
              (catMaybes
                 [("minimumFinanceCharge" .=) <$>
                    _cMinimumFinanceCharge,
                  ("trackingUrl" .=) <$> _cTrackingURL,
                  ("prohibitedCategories" .=) <$>
                    _cProhibitedCategories,
                  ("balanceComputationMethod" .=) <$>
                    _cBalanceComputationMethod,
                  ("initialSetupAndProcessingFee" .=) <$>
                    _cInitialSetupAndProcessingFee,
                  ("returnedPaymentFee" .=) <$> _cReturnedPaymentFee,
                  ("ageMinimumDetails" .=) <$> _cAgeMinimumDetails,
                  ("variableRatesUpdateFrequency" .=) <$>
                    _cVariableRatesUpdateFrequency,
                  ("creditLimitMin" .=) <$> _cCreditLimitMin,
                  ("travelInsurance" .=) <$> _cTravelInsurance,
                  ("approvedCategories" .=) <$> _cApprovedCategories,
                  ("annualFeeDisplay" .=) <$> _cAnnualFeeDisplay,
                  ("overLimitFee" .=) <$> _cOverLimitFee,
                  ("maxPurchaseRate" .=) <$> _cMaxPurchaseRate,
                  ("ageMinimum" .=) <$> _cAgeMinimum,
                  ("variableRatesLastUpdated" .=) <$>
                    _cVariableRatesLastUpdated,
                  ("introCashAdvanceTerms" .=) <$>
                    _cIntroCashAdvanceTerms,
                  ("issuerWebsite" .=) <$> _cIssuerWebsite,
                  ("luggageInsurance" .=) <$> _cLuggageInsurance,
                  Just ("kind" .= _cKind),
                  ("rewardsHaveBlackoutDates" .=) <$>
                    _cRewardsHaveBlackoutDates,
                  ("disclaimer" .=) <$> _cDisclaimer,
                  ("additionalCardHolderFee" .=) <$>
                    _cAdditionalCardHolderFee,
                  ("existingCustomerOnly" .=) <$>
                    _cExistingCustomerOnly,
                  ("emergencyInsurance" .=) <$> _cEmergencyInsurance,
                  ("network" .=) <$> _cNetwork,
                  ("cashAdvanceTerms" .=) <$> _cCashAdvanceTerms,
                  ("statementCopyFee" .=) <$> _cStatementCopyFee,
                  ("aprDisplay" .=) <$> _cAprDisplay,
                  ("offersImmediateCashReward" .=) <$>
                    _cOffersImmediateCashReward,
                  ("rewards" .=) <$> _cRewards,
                  ("cardType" .=) <$> _cCardType,
                  ("imageUrl" .=) <$> _cImageURL,
                  ("creditLimitMax" .=) <$> _cCreditLimitMax,
                  ("landingPageUrl" .=) <$> _cLandingPageURL,
                  ("annualFee" .=) <$> _cAnnualFee,
                  ("rewardsExpire" .=) <$> _cRewardsExpire,
                  ("firstYearAnnualFee" .=) <$> _cFirstYearAnnualFee,
                  ("carRentalInsurance" .=) <$> _cCarRentalInsurance,
                  ("purchaseRateAdditionalDetails" .=) <$>
                    _cPurchaseRateAdditionalDetails,
                  ("offerId" .=) <$> _cOfferId,
                  ("gracePeriodDisplay" .=) <$> _cGracePeriodDisplay,
                  ("introPurchaseTerms" .=) <$> _cIntroPurchaseTerms,
                  ("creditRatingDisplay" .=) <$> _cCreditRatingDisplay,
                  ("balanceTransferTerms" .=) <$>
                    _cBalanceTransferTerms,
                  ("latePaymentFee" .=) <$> _cLatePaymentFee,
                  ("cardBenefits" .=) <$> _cCardBenefits,
                  ("issuer" .=) <$> _cIssuer,
                  ("cardName" .=) <$> _cCardName,
                  ("minPurchaseRate" .=) <$> _cMinPurchaseRate,
                  ("fraudLiability" .=) <$> _cFraudLiability,
                  ("foreignCurrencyTransactionFee" .=) <$>
                    _cForeignCurrencyTransactionFee,
                  ("extendedWarranty" .=) <$> _cExtendedWarranty,
                  ("annualRewardMaximum" .=) <$> _cAnnualRewardMaximum,
                  ("issuerId" .=) <$> _cIssuerId,
                  ("introBalanceTransferTerms" .=) <$>
                    _cIntroBalanceTransferTerms,
                  ("defaultFees" .=) <$> _cDefaultFees,
                  ("additionalCardBenefits" .=) <$>
                    _cAdditionalCardBenefits,
                  ("rewardUnit" .=) <$> _cRewardUnit,
                  ("bonusRewards" .=) <$> _cBonusRewards,
                  ("flightAccidentInsurance" .=) <$>
                    _cFlightAccidentInsurance,
                  ("rewardPartner" .=) <$> _cRewardPartner,
                  ("purchaseRateType" .=) <$> _cPurchaseRateType])

--
-- /See:/ 'links' smart constructor.
data Links = Links
    { _linNextPageToken :: !(Maybe Text)
    , _linKind          :: !Text
    , _linItems         :: !(Maybe [Link])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Links' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'linNextPageToken'
--
-- * 'linKind'
--
-- * 'linItems'
links
    :: Links
links =
    Links
    { _linNextPageToken = Nothing
    , _linKind = "gan#links"
    , _linItems = Nothing
    }

-- | The next page token.
linNextPageToken :: Lens' Links (Maybe Text)
linNextPageToken
  = lens _linNextPageToken
      (\ s a -> s{_linNextPageToken = a})

-- | The kind for a page of links.
linKind :: Lens' Links Text
linKind = lens _linKind (\ s a -> s{_linKind = a})

-- | The links.
linItems :: Lens' Links [Link]
linItems
  = lens _linItems (\ s a -> s{_linItems = a}) .
      _Default
      . _Coerce

instance FromJSON Links where
        parseJSON
          = withObject "Links"
              (\ o ->
                 Links <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "gan#links")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON Links where
        toJSON Links{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _linNextPageToken,
                  Just ("kind" .= _linKind),
                  ("items" .=) <$> _linItems])

-- | A PublisherResource.
--
-- /See:/ 'publisher' smart constructor.
data Publisher = Publisher
    { _pubStatus              :: !(Maybe Text)
    , _pubKind                :: !Text
    , _pubPayoutRank          :: !(Maybe Text)
    , _pubJoinDate            :: !(Maybe DateTime')
    , _pubClassification      :: !(Maybe Text)
    , _pubName                :: !(Maybe Text)
    , _pubEpcSevenDayAverage  :: !(Maybe Money)
    , _pubItem                :: !(Maybe Publisher)
    , _pubId                  :: !(Maybe (Textual Int64))
    , _pubEpcNinetyDayAverage :: !(Maybe Money)
    , _pubSites               :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
  = lens _pubJoinDate (\ s a -> s{_pubJoinDate = a}) .
      mapping _DateTime

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
pubEpcSevenDayAverage :: Lens' Publisher (Maybe Money)
pubEpcSevenDayAverage
  = lens _pubEpcSevenDayAverage
      (\ s a -> s{_pubEpcSevenDayAverage = a})

-- | The requested publisher.
pubItem :: Lens' Publisher (Maybe Publisher)
pubItem = lens _pubItem (\ s a -> s{_pubItem = a})

-- | The ID of this publisher.
pubId :: Lens' Publisher (Maybe Int64)
pubId
  = lens _pubId (\ s a -> s{_pubId = a}) .
      mapping _Coerce

-- | The sum of fees paid to this publisher divided by the total number of
-- clicks over the past three months. Values are multiplied by 100 for
-- display purposes.
pubEpcNinetyDayAverage :: Lens' Publisher (Maybe Money)
pubEpcNinetyDayAverage
  = lens _pubEpcNinetyDayAverage
      (\ s a -> s{_pubEpcNinetyDayAverage = a})

-- | Websites that this publisher uses to advertise.
pubSites :: Lens' Publisher [Text]
pubSites
  = lens _pubSites (\ s a -> s{_pubSites = a}) .
      _Default
      . _Coerce

instance FromJSON Publisher where
        parseJSON
          = withObject "Publisher"
              (\ o ->
                 Publisher <$>
                   (o .:? "status") <*>
                     (o .:? "kind" .!= "gan#publisher")
                     <*> (o .:? "payoutRank")
                     <*> (o .:? "joinDate")
                     <*> (o .:? "classification")
                     <*> (o .:? "name")
                     <*> (o .:? "epcSevenDayAverage")
                     <*> (o .:? "item")
                     <*> (o .:? "id")
                     <*> (o .:? "epcNinetyDayAverage")
                     <*> (o .:? "sites" .!= mempty))

instance ToJSON Publisher where
        toJSON Publisher{..}
          = object
              (catMaybes
                 [("status" .=) <$> _pubStatus,
                  Just ("kind" .= _pubKind),
                  ("payoutRank" .=) <$> _pubPayoutRank,
                  ("joinDate" .=) <$> _pubJoinDate,
                  ("classification" .=) <$> _pubClassification,
                  ("name" .=) <$> _pubName,
                  ("epcSevenDayAverage" .=) <$> _pubEpcSevenDayAverage,
                  ("item" .=) <$> _pubItem, ("id" .=) <$> _pubId,
                  ("epcNinetyDayAverage" .=) <$>
                    _pubEpcNinetyDayAverage,
                  ("sites" .=) <$> _pubSites])

--
-- /See:/ 'ccOfferRewardsItem' smart constructor.
data CcOfferRewardsItem = CcOfferRewardsItem
    { _coriAmount            :: !(Maybe (Textual Double))
    , _coriExpirationMonths  :: !(Maybe (Textual Double))
    , _coriCategory          :: !(Maybe Text)
    , _coriAdditionalDetails :: !(Maybe Text)
    , _coriMaxRewardTier     :: !(Maybe (Textual Double))
    , _coriMinRewardTier     :: !(Maybe (Textual Double))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CcOfferRewardsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'coriAmount'
--
-- * 'coriExpirationMonths'
--
-- * 'coriCategory'
--
-- * 'coriAdditionalDetails'
--
-- * 'coriMaxRewardTier'
--
-- * 'coriMinRewardTier'
ccOfferRewardsItem
    :: CcOfferRewardsItem
ccOfferRewardsItem =
    CcOfferRewardsItem
    { _coriAmount = Nothing
    , _coriExpirationMonths = Nothing
    , _coriCategory = Nothing
    , _coriAdditionalDetails = Nothing
    , _coriMaxRewardTier = Nothing
    , _coriMinRewardTier = Nothing
    }

-- | The number of units rewarded per purchase dollar.
coriAmount :: Lens' CcOfferRewardsItem (Maybe Double)
coriAmount
  = lens _coriAmount (\ s a -> s{_coriAmount = a}) .
      mapping _Coerce

-- | How long rewards granted by this rule last.
coriExpirationMonths :: Lens' CcOfferRewardsItem (Maybe Double)
coriExpirationMonths
  = lens _coriExpirationMonths
      (\ s a -> s{_coriExpirationMonths = a})
      . mapping _Coerce

-- | The kind of purchases covered by this rule.
coriCategory :: Lens' CcOfferRewardsItem (Maybe Text)
coriCategory
  = lens _coriCategory (\ s a -> s{_coriCategory = a})

-- | Other limits, for example, if this rule only applies during an
-- introductory period.
coriAdditionalDetails :: Lens' CcOfferRewardsItem (Maybe Text)
coriAdditionalDetails
  = lens _coriAdditionalDetails
      (\ s a -> s{_coriAdditionalDetails = a})

-- | The maximum purchase amount in the given category for this rule to
-- apply.
coriMaxRewardTier :: Lens' CcOfferRewardsItem (Maybe Double)
coriMaxRewardTier
  = lens _coriMaxRewardTier
      (\ s a -> s{_coriMaxRewardTier = a})
      . mapping _Coerce

-- | The minimum purchase amount in the given category before this rule
-- applies.
coriMinRewardTier :: Lens' CcOfferRewardsItem (Maybe Double)
coriMinRewardTier
  = lens _coriMinRewardTier
      (\ s a -> s{_coriMinRewardTier = a})
      . mapping _Coerce

instance FromJSON CcOfferRewardsItem where
        parseJSON
          = withObject "CcOfferRewardsItem"
              (\ o ->
                 CcOfferRewardsItem <$>
                   (o .:? "amount") <*> (o .:? "expirationMonths") <*>
                     (o .:? "category")
                     <*> (o .:? "additionalDetails")
                     <*> (o .:? "maxRewardTier")
                     <*> (o .:? "minRewardTier"))

instance ToJSON CcOfferRewardsItem where
        toJSON CcOfferRewardsItem{..}
          = object
              (catMaybes
                 [("amount" .=) <$> _coriAmount,
                  ("expirationMonths" .=) <$> _coriExpirationMonths,
                  ("category" .=) <$> _coriCategory,
                  ("additionalDetails" .=) <$> _coriAdditionalDetails,
                  ("maxRewardTier" .=) <$> _coriMaxRewardTier,
                  ("minRewardTier" .=) <$> _coriMinRewardTier])
