{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Affiliates.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Affiliates.Types.Sum where

import           Network.Google.Prelude

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
data PublishersGetRole
    = PGRAdvertisers
      -- ^ @advertisers@
      -- The requester is requesting as an advertiser.
    | PGRPublishers
      -- ^ @publishers@
      -- The requester is requesting as a publisher.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PublishersGetRole

instance FromHttpApiData PublishersGetRole where
    parseQueryParam = \case
        "advertisers" -> Right PGRAdvertisers
        "publishers" -> Right PGRPublishers
        x -> Left ("Unable to parse PublishersGetRole from: " <> x)

instance ToHttpApiData PublishersGetRole where
    toQueryParam = \case
        PGRAdvertisers -> "advertisers"
        PGRPublishers -> "publishers"

instance FromJSON PublishersGetRole where
    parseJSON = parseJSONText "PublishersGetRole"

instance ToJSON PublishersGetRole where
    toJSON = toJSONText

-- | Filters out all events that are not of the given type. Valid values:
-- \'action\', \'transaction\', or \'charge\'. Optional.
data ReportsGetEventType
    = Action
      -- ^ @action@
      -- Event type is action.
    | Charge
      -- ^ @charge@
      -- Event type is charge.
    | Transaction
      -- ^ @transaction@
      -- Event type is transaction.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ReportsGetEventType

instance FromHttpApiData ReportsGetEventType where
    parseQueryParam = \case
        "action" -> Right Action
        "charge" -> Right Charge
        "transaction" -> Right Transaction
        x -> Left ("Unable to parse ReportsGetEventType from: " <> x)

instance ToHttpApiData ReportsGetEventType where
    toQueryParam = \case
        Action -> "action"
        Charge -> "charge"
        Transaction -> "transaction"

instance FromJSON ReportsGetEventType where
    parseJSON = parseJSONText "ReportsGetEventType"

instance ToJSON ReportsGetEventType where
    toJSON = toJSONText

-- | Filters out all events that do not have the given status. Valid values:
-- \'active\', \'canceled\', or \'invalid\'. Optional.
data ReportsGetStatus
    = Active
      -- ^ @active@
      -- Event is currently active.
    | Canceled
      -- ^ @canceled@
      -- Event is currently canceled.
    | Invalid
      -- ^ @invalid@
      -- Event is currently invalid.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ReportsGetStatus

instance FromHttpApiData ReportsGetStatus where
    parseQueryParam = \case
        "active" -> Right Active
        "canceled" -> Right Canceled
        "invalid" -> Right Invalid
        x -> Left ("Unable to parse ReportsGetStatus from: " <> x)

instance ToHttpApiData ReportsGetStatus where
    toQueryParam = \case
        Active -> "active"
        Canceled -> "canceled"
        Invalid -> "invalid"

instance FromJSON ReportsGetStatus where
    parseJSON = parseJSONText "ReportsGetStatus"

instance ToJSON ReportsGetStatus where
    toJSON = toJSONText

-- | The promotion type.
data LinksListPromotionType
    = Coupon
      -- ^ @coupon@
    | FreeGift
      -- ^ @free_gift@
    | FreeShipping
      -- ^ @free_shipping@
    | PercentOff
      -- ^ @percent_off@
    | PriceCut
      -- ^ @price_cut@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LinksListPromotionType

instance FromHttpApiData LinksListPromotionType where
    parseQueryParam = \case
        "coupon" -> Right Coupon
        "free_gift" -> Right FreeGift
        "free_shipping" -> Right FreeShipping
        "percent_off" -> Right PercentOff
        "price_cut" -> Right PriceCut
        x -> Left ("Unable to parse LinksListPromotionType from: " <> x)

instance ToHttpApiData LinksListPromotionType where
    toQueryParam = \case
        Coupon -> "coupon"
        FreeGift -> "free_gift"
        FreeShipping -> "free_shipping"
        PercentOff -> "percent_off"
        PriceCut -> "price_cut"

instance FromJSON LinksListPromotionType where
    parseJSON = parseJSONText "LinksListPromotionType"

instance ToJSON LinksListPromotionType where
    toJSON = toJSONText

-- | Filters out all events that are not of the given type. Valid values:
-- \'action\', \'transaction\', \'charge\'. Optional.
data EventsListType
    = ELTAction
      -- ^ @action@
      -- The completion of an application, sign-up, or other process. For
      -- example, an action occurs if a user clicks an ad for a credit card and
      -- completes an application for that card.
    | ELTCharge
      -- ^ @charge@
      -- A charge event is typically a payment between an advertiser, publisher
      -- or Google.
    | ELTTransaction
      -- ^ @transaction@
      -- A conversion event, typically an e-commerce transaction. Some
      -- advertisers use a transaction to record other types of events, such as
      -- magazine subscriptions.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EventsListType

instance FromHttpApiData EventsListType where
    parseQueryParam = \case
        "action" -> Right ELTAction
        "charge" -> Right ELTCharge
        "transaction" -> Right ELTTransaction
        x -> Left ("Unable to parse EventsListType from: " <> x)

instance ToHttpApiData EventsListType where
    toQueryParam = \case
        ELTAction -> "action"
        ELTCharge -> "charge"
        ELTTransaction -> "transaction"

instance FromJSON EventsListType where
    parseJSON = parseJSONText "EventsListType"

instance ToJSON EventsListType where
    toJSON = toJSONText

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
data LinksListRole
    = LLRAdvertisers
      -- ^ @advertisers@
      -- The requester is requesting as an advertiser.
    | LLRPublishers
      -- ^ @publishers@
      -- The requester is requesting as a publisher.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LinksListRole

instance FromHttpApiData LinksListRole where
    parseQueryParam = \case
        "advertisers" -> Right LLRAdvertisers
        "publishers" -> Right LLRPublishers
        x -> Left ("Unable to parse LinksListRole from: " <> x)

instance ToHttpApiData LinksListRole where
    toQueryParam = \case
        LLRAdvertisers -> "advertisers"
        LLRPublishers -> "publishers"

instance FromJSON LinksListRole where
    parseJSON = parseJSONText "LinksListRole"

instance ToJSON LinksListRole where
    toJSON = toJSONText

-- | The type of report being requested. Valid values: \'order_delta\'.
-- Required.
data ReportsGetReportType
    = OrderDelta
      -- ^ @order_delta@
      -- The order delta report type.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ReportsGetReportType

instance FromHttpApiData ReportsGetReportType where
    parseQueryParam = \case
        "order_delta" -> Right OrderDelta
        x -> Left ("Unable to parse ReportsGetReportType from: " <> x)

instance ToHttpApiData ReportsGetReportType where
    toQueryParam = \case
        OrderDelta -> "order_delta"

instance FromJSON ReportsGetReportType where
    parseJSON = parseJSONText "ReportsGetReportType"

instance ToJSON ReportsGetReportType where
    toJSON = toJSONText

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
data AdvertisersListRole
    = ALRAdvertisers
      -- ^ @advertisers@
      -- The requester is requesting as an advertiser.
    | ALRPublishers
      -- ^ @publishers@
      -- The requester is requesting as a publisher.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AdvertisersListRole

instance FromHttpApiData AdvertisersListRole where
    parseQueryParam = \case
        "advertisers" -> Right ALRAdvertisers
        "publishers" -> Right ALRPublishers
        x -> Left ("Unable to parse AdvertisersListRole from: " <> x)

instance ToHttpApiData AdvertisersListRole where
    toQueryParam = \case
        ALRAdvertisers -> "advertisers"
        ALRPublishers -> "publishers"

instance FromJSON AdvertisersListRole where
    parseJSON = parseJSONText "AdvertisersListRole"

instance ToJSON AdvertisersListRole where
    toJSON = toJSONText

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
data LinksInsertRole
    = LIRAdvertisers
      -- ^ @advertisers@
      -- The requester is requesting as an advertiser.
    | LIRPublishers
      -- ^ @publishers@
      -- The requester is requesting as a publisher.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LinksInsertRole

instance FromHttpApiData LinksInsertRole where
    parseQueryParam = \case
        "advertisers" -> Right LIRAdvertisers
        "publishers" -> Right LIRPublishers
        x -> Left ("Unable to parse LinksInsertRole from: " <> x)

instance ToHttpApiData LinksInsertRole where
    toQueryParam = \case
        LIRAdvertisers -> "advertisers"
        LIRPublishers -> "publishers"

instance FromJSON LinksInsertRole where
    parseJSON = parseJSONText "LinksInsertRole"

instance ToJSON LinksInsertRole where
    toJSON = toJSONText

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
data PublishersListRole
    = PLRAdvertisers
      -- ^ @advertisers@
      -- The requester is requesting as an advertiser.
    | PLRPublishers
      -- ^ @publishers@
      -- The requester is requesting as a publisher.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PublishersListRole

instance FromHttpApiData PublishersListRole where
    parseQueryParam = \case
        "advertisers" -> Right PLRAdvertisers
        "publishers" -> Right PLRPublishers
        x -> Left ("Unable to parse PublishersListRole from: " <> x)

instance ToHttpApiData PublishersListRole where
    toQueryParam = \case
        PLRAdvertisers -> "advertisers"
        PLRPublishers -> "publishers"

instance FromJSON PublishersListRole where
    parseJSON = parseJSONText "PublishersListRole"

instance ToJSON PublishersListRole where
    toJSON = toJSONText

-- | The role of the author of the link.
data LinksListAuthorship
    = LLAAdvertiser
      -- ^ @advertiser@
    | LLAPublisher
      -- ^ @publisher@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LinksListAuthorship

instance FromHttpApiData LinksListAuthorship where
    parseQueryParam = \case
        "advertiser" -> Right LLAAdvertiser
        "publisher" -> Right LLAPublisher
        x -> Left ("Unable to parse LinksListAuthorship from: " <> x)

instance ToHttpApiData LinksListAuthorship where
    toQueryParam = \case
        LLAAdvertiser -> "advertiser"
        LLAPublisher -> "publisher"

instance FromJSON LinksListAuthorship where
    parseJSON = parseJSONText "LinksListAuthorship"

instance ToJSON LinksListAuthorship where
    toJSON = toJSONText

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
data LinksGetRole
    = LGRAdvertisers
      -- ^ @advertisers@
      -- The requester is requesting as an advertiser.
    | LGRPublishers
      -- ^ @publishers@
      -- The requester is requesting as a publisher.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LinksGetRole

instance FromHttpApiData LinksGetRole where
    parseQueryParam = \case
        "advertisers" -> Right LGRAdvertisers
        "publishers" -> Right LGRPublishers
        x -> Left ("Unable to parse LinksGetRole from: " <> x)

instance ToHttpApiData LinksGetRole where
    toQueryParam = \case
        LGRAdvertisers -> "advertisers"
        LGRPublishers -> "publishers"

instance FromJSON LinksGetRole where
    parseJSON = parseJSONText "LinksGetRole"

instance ToJSON LinksGetRole where
    toJSON = toJSONText

-- | The type of the link.
data LinksListLinkType
    = Banner
      -- ^ @banner@
    | Text
      -- ^ @text@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LinksListLinkType

instance FromHttpApiData LinksListLinkType where
    parseQueryParam = \case
        "banner" -> Right Banner
        "text" -> Right Text
        x -> Left ("Unable to parse LinksListLinkType from: " <> x)

instance ToHttpApiData LinksListLinkType where
    toQueryParam = \case
        Banner -> "banner"
        Text -> "text"

instance FromJSON LinksListLinkType where
    parseJSON = parseJSONText "LinksListLinkType"

instance ToJSON LinksListLinkType where
    toJSON = toJSONText

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
data EventsListRole
    = ELRAdvertisers
      -- ^ @advertisers@
      -- The requester is requesting as an advertiser.
    | ELRPublishers
      -- ^ @publishers@
      -- The requester is requesting as a publisher.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EventsListRole

instance FromHttpApiData EventsListRole where
    parseQueryParam = \case
        "advertisers" -> Right ELRAdvertisers
        "publishers" -> Right ELRPublishers
        x -> Left ("Unable to parse EventsListRole from: " <> x)

instance ToHttpApiData EventsListRole where
    toQueryParam = \case
        ELRAdvertisers -> "advertisers"
        ELRPublishers -> "publishers"

instance FromJSON EventsListRole where
    parseJSON = parseJSONText "EventsListRole"

instance ToJSON EventsListRole where
    toJSON = toJSONText

-- | Filters out all advertisers for which do not have the given relationship
-- status with the requesting publisher.
data AdvertisersListRelationshipStatus
    = Approved
      -- ^ @approved@
      -- An advertiser that has approved your application.
    | Available
      -- ^ @available@
      -- An advertiser program that\'s accepting new publishers.
    | Deactivated
      -- ^ @deactivated@
      -- Deactivated means either the advertiser has removed you from their
      -- program, or it could also mean that you chose to remove yourself from
      -- the advertiser\'s program.
    | Declined
      -- ^ @declined@
      -- An advertiser that did not approve your application.
    | Pending
      -- ^ @pending@
      -- An advertiser program that you\'ve already applied to, but they haven\'t
      -- yet decided to approve or decline your application.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AdvertisersListRelationshipStatus

instance FromHttpApiData AdvertisersListRelationshipStatus where
    parseQueryParam = \case
        "approved" -> Right Approved
        "available" -> Right Available
        "deactivated" -> Right Deactivated
        "declined" -> Right Declined
        "pending" -> Right Pending
        x -> Left ("Unable to parse AdvertisersListRelationshipStatus from: " <> x)

instance ToHttpApiData AdvertisersListRelationshipStatus where
    toQueryParam = \case
        Approved -> "approved"
        Available -> "available"
        Deactivated -> "deactivated"
        Declined -> "declined"
        Pending -> "pending"

instance FromJSON AdvertisersListRelationshipStatus where
    parseJSON = parseJSONText "AdvertisersListRelationshipStatus"

instance ToJSON AdvertisersListRelationshipStatus where
    toJSON = toJSONText

-- | The set of fields to return.
data CcOffersListProjection
    = Full
      -- ^ @full@
      -- Include all offer fields. This is the default.
    | Summary
      -- ^ @summary@
      -- Include only the basic fields needed to display an offer.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CcOffersListProjection

instance FromHttpApiData CcOffersListProjection where
    parseQueryParam = \case
        "full" -> Right Full
        "summary" -> Right Summary
        x -> Left ("Unable to parse CcOffersListProjection from: " <> x)

instance ToHttpApiData CcOffersListProjection where
    toQueryParam = \case
        Full -> "full"
        Summary -> "summary"

instance FromJSON CcOffersListProjection where
    parseJSON = parseJSONText "CcOffersListProjection"

instance ToJSON CcOffersListProjection where
    toJSON = toJSONText

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
data AdvertisersGetRole
    = AGRAdvertisers
      -- ^ @advertisers@
      -- The requester is requesting as an advertiser.
    | AGRPublishers
      -- ^ @publishers@
      -- The requester is requesting as a publisher.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AdvertisersGetRole

instance FromHttpApiData AdvertisersGetRole where
    parseQueryParam = \case
        "advertisers" -> Right AGRAdvertisers
        "publishers" -> Right AGRPublishers
        x -> Left ("Unable to parse AdvertisersGetRole from: " <> x)

instance ToHttpApiData AdvertisersGetRole where
    toQueryParam = \case
        AGRAdvertisers -> "advertisers"
        AGRPublishers -> "publishers"

instance FromJSON AdvertisersGetRole where
    parseJSON = parseJSONText "AdvertisersGetRole"

instance ToJSON AdvertisersGetRole where
    toJSON = toJSONText

-- | Filters out all charge events that are not of the given charge type.
-- Valid values: \'other\', \'slotting_fee\', \'monthly_minimum\',
-- \'tier_bonus\', \'credit\', \'debit\'. Optional.
data EventsListChargeType
    = Credit
      -- ^ @credit@
      -- A credit increases the publisher\'s payout amount and decreases the
      -- advertiser\'s invoice amount.
    | Debit
      -- ^ @debit@
      -- A debit reduces the publisher\'s payout and increases the advertiser\'s
      -- invoice amount.
    | MonthlyMinimum
      -- ^ @monthly_minimum@
      -- A payment made to Google by an advertiser as a minimum monthly network
      -- fee.
    | Other
      -- ^ @other@
      -- Catch all. Default if unset
    | SlottingFee
      -- ^ @slotting_fee@
      -- A one time payment made from an advertiser to a publisher.
    | TierBonus
      -- ^ @tier_bonus@
      -- A payment from an advertiser to a publisher for the publisher
      -- maintaining a high tier level
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EventsListChargeType

instance FromHttpApiData EventsListChargeType where
    parseQueryParam = \case
        "credit" -> Right Credit
        "debit" -> Right Debit
        "monthly_minimum" -> Right MonthlyMinimum
        "other" -> Right Other
        "slotting_fee" -> Right SlottingFee
        "tier_bonus" -> Right TierBonus
        x -> Left ("Unable to parse EventsListChargeType from: " <> x)

instance ToHttpApiData EventsListChargeType where
    toQueryParam = \case
        Credit -> "credit"
        Debit -> "debit"
        MonthlyMinimum -> "monthly_minimum"
        Other -> "other"
        SlottingFee -> "slotting_fee"
        TierBonus -> "tier_bonus"

instance FromJSON EventsListChargeType where
    parseJSON = parseJSONText "EventsListChargeType"

instance ToJSON EventsListChargeType where
    toJSON = toJSONText

-- | Filters out all publishers for which do not have the given relationship
-- status with the requesting publisher.
data PublishersListRelationshipStatus
    = PLRSApproved
      -- ^ @approved@
      -- Publishers you\'ve approved to your program.
    | PLRSAvailable
      -- ^ @available@
      -- Publishers available for you to recruit.
    | PLRSDeactivated
      -- ^ @deactivated@
      -- A publisher that you terminated from your program. Publishers also have
      -- the ability to remove themselves from your program.
    | PLRSDeclined
      -- ^ @declined@
      -- A publisher that you did not approve to your program.
    | PLRSPending
      -- ^ @pending@
      -- Publishers that have applied to your program. We recommend reviewing and
      -- deciding on pending publishers on a weekly basis.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PublishersListRelationshipStatus

instance FromHttpApiData PublishersListRelationshipStatus where
    parseQueryParam = \case
        "approved" -> Right PLRSApproved
        "available" -> Right PLRSAvailable
        "deactivated" -> Right PLRSDeactivated
        "declined" -> Right PLRSDeclined
        "pending" -> Right PLRSPending
        x -> Left ("Unable to parse PublishersListRelationshipStatus from: " <> x)

instance ToHttpApiData PublishersListRelationshipStatus where
    toQueryParam = \case
        PLRSApproved -> "approved"
        PLRSAvailable -> "available"
        PLRSDeactivated -> "deactivated"
        PLRSDeclined -> "declined"
        PLRSPending -> "pending"

instance FromJSON PublishersListRelationshipStatus where
    parseJSON = parseJSONText "PublishersListRelationshipStatus"

instance ToJSON PublishersListRelationshipStatus where
    toJSON = toJSONText

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
data ReportsGetRole
    = RGRAdvertisers
      -- ^ @advertisers@
      -- The requester is requesting as an advertiser.
    | RGRPublishers
      -- ^ @publishers@
      -- The requester is requesting as a publisher.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ReportsGetRole

instance FromHttpApiData ReportsGetRole where
    parseQueryParam = \case
        "advertisers" -> Right RGRAdvertisers
        "publishers" -> Right RGRPublishers
        x -> Left ("Unable to parse ReportsGetRole from: " <> x)

instance ToHttpApiData ReportsGetRole where
    toQueryParam = \case
        RGRAdvertisers -> "advertisers"
        RGRPublishers -> "publishers"

instance FromJSON ReportsGetRole where
    parseJSON = parseJSONText "ReportsGetRole"

instance ToJSON ReportsGetRole where
    toJSON = toJSONText

-- | The status of the relationship.
data LinksListRelationshipStatus
    = LLRSApproved
      -- ^ @approved@
    | LLRSAvailable
      -- ^ @available@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LinksListRelationshipStatus

instance FromHttpApiData LinksListRelationshipStatus where
    parseQueryParam = \case
        "approved" -> Right LLRSApproved
        "available" -> Right LLRSAvailable
        x -> Left ("Unable to parse LinksListRelationshipStatus from: " <> x)

instance ToHttpApiData LinksListRelationshipStatus where
    toQueryParam = \case
        LLRSApproved -> "approved"
        LLRSAvailable -> "available"

instance FromJSON LinksListRelationshipStatus where
    parseJSON = parseJSONText "LinksListRelationshipStatus"

instance ToJSON LinksListRelationshipStatus where
    toJSON = toJSONText

-- | Filters out all events that do not have the given status. Valid values:
-- \'active\', \'canceled\'. Optional.
data EventsListStatus
    = ELSActive
      -- ^ @active@
      -- Event is currently active.
    | ELSCanceled
      -- ^ @canceled@
      -- Event is currently canceled.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EventsListStatus

instance FromHttpApiData EventsListStatus where
    parseQueryParam = \case
        "active" -> Right ELSActive
        "canceled" -> Right ELSCanceled
        x -> Left ("Unable to parse EventsListStatus from: " <> x)

instance ToHttpApiData EventsListStatus where
    toQueryParam = \case
        ELSActive -> "active"
        ELSCanceled -> "canceled"

instance FromJSON EventsListStatus where
    parseJSON = parseJSONText "EventsListStatus"

instance ToJSON EventsListStatus where
    toJSON = toJSONText
