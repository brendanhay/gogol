{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Affiliates.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Affiliates.Types.Sum where

import           Network.Google.Prelude

-- | Data format for the response.
data Alt
    = JSON
      -- ^ @json@
      -- Responses with Content-Type of application\/json
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Alt

instance FromText Alt where
    fromText = \case
        "json" -> Just JSON
        _ -> Nothing

instance ToText Alt where
    toText = \case
        JSON -> "json"

instance FromJSON Alt where
    parseJSON = parseJSONText "Alt"

instance ToJSON Alt where
    toJSON = toJSONText

-- | The role of the author of the link.
data LinksList'Authorship
    = LLAAdvertiser
      -- ^ @advertiser@
    | LLAPublisher
      -- ^ @publisher@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LinksList'Authorship

instance FromText LinksList'Authorship where
    fromText = \case
        "advertiser" -> Just LLAAdvertiser
        "publisher" -> Just LLAPublisher
        _ -> Nothing

instance ToText LinksList'Authorship where
    toText = \case
        LLAAdvertiser -> "advertiser"
        LLAPublisher -> "publisher"

instance FromJSON LinksList'Authorship where
    parseJSON = parseJSONText "LinksList'Authorship"

instance ToJSON LinksList'Authorship where
    toJSON = toJSONText

-- | The type of the link.
data LinksList'LinkType
    = Banner
      -- ^ @banner@
    | Text
      -- ^ @text@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LinksList'LinkType

instance FromText LinksList'LinkType where
    fromText = \case
        "banner" -> Just Banner
        "text" -> Just Text
        _ -> Nothing

instance ToText LinksList'LinkType where
    toText = \case
        Banner -> "banner"
        Text -> "text"

instance FromJSON LinksList'LinkType where
    parseJSON = parseJSONText "LinksList'LinkType"

instance ToJSON LinksList'LinkType where
    toJSON = toJSONText

-- | Filters out all events that do not have the given status. Valid values:
-- \'active\', \'canceled\'. Optional.
data EventsList'Status
    = Active
      -- ^ @active@
      -- Event is currently active.
    | Canceled
      -- ^ @canceled@
      -- Event is currently canceled.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EventsList'Status

instance FromText EventsList'Status where
    fromText = \case
        "active" -> Just Active
        "canceled" -> Just Canceled
        _ -> Nothing

instance ToText EventsList'Status where
    toText = \case
        Active -> "active"
        Canceled -> "canceled"

instance FromJSON EventsList'Status where
    parseJSON = parseJSONText "EventsList'Status"

instance ToJSON EventsList'Status where
    toJSON = toJSONText

-- | Filters out all advertisers for which do not have the given relationship
-- status with the requesting publisher.
data AdvertisersList'RelationshipStatus
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

instance Hashable AdvertisersList'RelationshipStatus

instance FromText AdvertisersList'RelationshipStatus where
    fromText = \case
        "approved" -> Just Approved
        "available" -> Just Available
        "deactivated" -> Just Deactivated
        "declined" -> Just Declined
        "pending" -> Just Pending
        _ -> Nothing

instance ToText AdvertisersList'RelationshipStatus where
    toText = \case
        Approved -> "approved"
        Available -> "available"
        Deactivated -> "deactivated"
        Declined -> "declined"
        Pending -> "pending"

instance FromJSON AdvertisersList'RelationshipStatus where
    parseJSON = parseJSONText "AdvertisersList'RelationshipStatus"

instance ToJSON AdvertisersList'RelationshipStatus where
    toJSON = toJSONText

-- | The set of fields to return.
data CcOffersList'Projection
    = Full
      -- ^ @full@
      -- Include all offer fields. This is the default.
    | Summary
      -- ^ @summary@
      -- Include only the basic fields needed to display an offer.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CcOffersList'Projection

instance FromText CcOffersList'Projection where
    fromText = \case
        "full" -> Just Full
        "summary" -> Just Summary
        _ -> Nothing

instance ToText CcOffersList'Projection where
    toText = \case
        Full -> "full"
        Summary -> "summary"

instance FromJSON CcOffersList'Projection where
    parseJSON = parseJSONText "CcOffersList'Projection"

instance ToJSON CcOffersList'Projection where
    toJSON = toJSONText

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
data ReportsGet'Role
    = RGRAdvertisers
      -- ^ @advertisers@
      -- The requester is requesting as an advertiser.
    | RGRPublishers
      -- ^ @publishers@
      -- The requester is requesting as a publisher.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ReportsGet'Role

instance FromText ReportsGet'Role where
    fromText = \case
        "advertisers" -> Just RGRAdvertisers
        "publishers" -> Just RGRPublishers
        _ -> Nothing

instance ToText ReportsGet'Role where
    toText = \case
        RGRAdvertisers -> "advertisers"
        RGRPublishers -> "publishers"

instance FromJSON ReportsGet'Role where
    parseJSON = parseJSONText "ReportsGet'Role"

instance ToJSON ReportsGet'Role where
    toJSON = toJSONText

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
data PublishersGet'Role
    = PGRAdvertisers
      -- ^ @advertisers@
      -- The requester is requesting as an advertiser.
    | PGRPublishers
      -- ^ @publishers@
      -- The requester is requesting as a publisher.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PublishersGet'Role

instance FromText PublishersGet'Role where
    fromText = \case
        "advertisers" -> Just PGRAdvertisers
        "publishers" -> Just PGRPublishers
        _ -> Nothing

instance ToText PublishersGet'Role where
    toText = \case
        PGRAdvertisers -> "advertisers"
        PGRPublishers -> "publishers"

instance FromJSON PublishersGet'Role where
    parseJSON = parseJSONText "PublishersGet'Role"

instance ToJSON PublishersGet'Role where
    toJSON = toJSONText

-- | Filters out all charge events that are not of the given charge type.
-- Valid values: \'other\', \'slotting_fee\', \'monthly_minimum\',
-- \'tier_bonus\', \'credit\', \'debit\'. Optional.
data EventsList'ChargeType
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

instance Hashable EventsList'ChargeType

instance FromText EventsList'ChargeType where
    fromText = \case
        "credit" -> Just Credit
        "debit" -> Just Debit
        "monthly_minimum" -> Just MonthlyMinimum
        "other" -> Just Other
        "slotting_fee" -> Just SlottingFee
        "tier_bonus" -> Just TierBonus
        _ -> Nothing

instance ToText EventsList'ChargeType where
    toText = \case
        Credit -> "credit"
        Debit -> "debit"
        MonthlyMinimum -> "monthly_minimum"
        Other -> "other"
        SlottingFee -> "slotting_fee"
        TierBonus -> "tier_bonus"

instance FromJSON EventsList'ChargeType where
    parseJSON = parseJSONText "EventsList'ChargeType"

instance ToJSON EventsList'ChargeType where
    toJSON = toJSONText

-- | Filters out all publishers for which do not have the given relationship
-- status with the requesting publisher.
data PublishersList'RelationshipStatus
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

instance Hashable PublishersList'RelationshipStatus

instance FromText PublishersList'RelationshipStatus where
    fromText = \case
        "approved" -> Just PLRSApproved
        "available" -> Just PLRSAvailable
        "deactivated" -> Just PLRSDeactivated
        "declined" -> Just PLRSDeclined
        "pending" -> Just PLRSPending
        _ -> Nothing

instance ToText PublishersList'RelationshipStatus where
    toText = \case
        PLRSApproved -> "approved"
        PLRSAvailable -> "available"
        PLRSDeactivated -> "deactivated"
        PLRSDeclined -> "declined"
        PLRSPending -> "pending"

instance FromJSON PublishersList'RelationshipStatus where
    parseJSON = parseJSONText "PublishersList'RelationshipStatus"

instance ToJSON PublishersList'RelationshipStatus where
    toJSON = toJSONText

-- | The promotion type.
data LinksList'PromotionType
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

instance Hashable LinksList'PromotionType

instance FromText LinksList'PromotionType where
    fromText = \case
        "coupon" -> Just Coupon
        "free_gift" -> Just FreeGift
        "free_shipping" -> Just FreeShipping
        "percent_off" -> Just PercentOff
        "price_cut" -> Just PriceCut
        _ -> Nothing

instance ToText LinksList'PromotionType where
    toText = \case
        Coupon -> "coupon"
        FreeGift -> "free_gift"
        FreeShipping -> "free_shipping"
        PercentOff -> "percent_off"
        PriceCut -> "price_cut"

instance FromJSON LinksList'PromotionType where
    parseJSON = parseJSONText "LinksList'PromotionType"

instance ToJSON LinksList'PromotionType where
    toJSON = toJSONText

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
data LinksList'Role
    = LLRAdvertisers
      -- ^ @advertisers@
      -- The requester is requesting as an advertiser.
    | LLRPublishers
      -- ^ @publishers@
      -- The requester is requesting as a publisher.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LinksList'Role

instance FromText LinksList'Role where
    fromText = \case
        "advertisers" -> Just LLRAdvertisers
        "publishers" -> Just LLRPublishers
        _ -> Nothing

instance ToText LinksList'Role where
    toText = \case
        LLRAdvertisers -> "advertisers"
        LLRPublishers -> "publishers"

instance FromJSON LinksList'Role where
    parseJSON = parseJSONText "LinksList'Role"

instance ToJSON LinksList'Role where
    toJSON = toJSONText

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
data AdvertisersList'Role
    = ALRAdvertisers
      -- ^ @advertisers@
      -- The requester is requesting as an advertiser.
    | ALRPublishers
      -- ^ @publishers@
      -- The requester is requesting as a publisher.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AdvertisersList'Role

instance FromText AdvertisersList'Role where
    fromText = \case
        "advertisers" -> Just ALRAdvertisers
        "publishers" -> Just ALRPublishers
        _ -> Nothing

instance ToText AdvertisersList'Role where
    toText = \case
        ALRAdvertisers -> "advertisers"
        ALRPublishers -> "publishers"

instance FromJSON AdvertisersList'Role where
    parseJSON = parseJSONText "AdvertisersList'Role"

instance ToJSON AdvertisersList'Role where
    toJSON = toJSONText

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
data LinksInsert'Role
    = LIRAdvertisers
      -- ^ @advertisers@
      -- The requester is requesting as an advertiser.
    | LIRPublishers
      -- ^ @publishers@
      -- The requester is requesting as a publisher.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LinksInsert'Role

instance FromText LinksInsert'Role where
    fromText = \case
        "advertisers" -> Just LIRAdvertisers
        "publishers" -> Just LIRPublishers
        _ -> Nothing

instance ToText LinksInsert'Role where
    toText = \case
        LIRAdvertisers -> "advertisers"
        LIRPublishers -> "publishers"

instance FromJSON LinksInsert'Role where
    parseJSON = parseJSONText "LinksInsert'Role"

instance ToJSON LinksInsert'Role where
    toJSON = toJSONText

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
data PublishersList'Role
    = PLRAdvertisers
      -- ^ @advertisers@
      -- The requester is requesting as an advertiser.
    | PLRPublishers
      -- ^ @publishers@
      -- The requester is requesting as a publisher.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PublishersList'Role

instance FromText PublishersList'Role where
    fromText = \case
        "advertisers" -> Just PLRAdvertisers
        "publishers" -> Just PLRPublishers
        _ -> Nothing

instance ToText PublishersList'Role where
    toText = \case
        PLRAdvertisers -> "advertisers"
        PLRPublishers -> "publishers"

instance FromJSON PublishersList'Role where
    parseJSON = parseJSONText "PublishersList'Role"

instance ToJSON PublishersList'Role where
    toJSON = toJSONText

-- | The status of the relationship.
data LinksList'RelationshipStatus
    = LLRSApproved
      -- ^ @approved@
    | LLRSAvailable
      -- ^ @available@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LinksList'RelationshipStatus

instance FromText LinksList'RelationshipStatus where
    fromText = \case
        "approved" -> Just LLRSApproved
        "available" -> Just LLRSAvailable
        _ -> Nothing

instance ToText LinksList'RelationshipStatus where
    toText = \case
        LLRSApproved -> "approved"
        LLRSAvailable -> "available"

instance FromJSON LinksList'RelationshipStatus where
    parseJSON = parseJSONText "LinksList'RelationshipStatus"

instance ToJSON LinksList'RelationshipStatus where
    toJSON = toJSONText

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
data EventsList'Role
    = ELRAdvertisers
      -- ^ @advertisers@
      -- The requester is requesting as an advertiser.
    | ELRPublishers
      -- ^ @publishers@
      -- The requester is requesting as a publisher.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EventsList'Role

instance FromText EventsList'Role where
    fromText = \case
        "advertisers" -> Just ELRAdvertisers
        "publishers" -> Just ELRPublishers
        _ -> Nothing

instance ToText EventsList'Role where
    toText = \case
        ELRAdvertisers -> "advertisers"
        ELRPublishers -> "publishers"

instance FromJSON EventsList'Role where
    parseJSON = parseJSONText "EventsList'Role"

instance ToJSON EventsList'Role where
    toJSON = toJSONText

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
data LinksGet'Role
    = LGRAdvertisers
      -- ^ @advertisers@
      -- The requester is requesting as an advertiser.
    | LGRPublishers
      -- ^ @publishers@
      -- The requester is requesting as a publisher.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LinksGet'Role

instance FromText LinksGet'Role where
    fromText = \case
        "advertisers" -> Just LGRAdvertisers
        "publishers" -> Just LGRPublishers
        _ -> Nothing

instance ToText LinksGet'Role where
    toText = \case
        LGRAdvertisers -> "advertisers"
        LGRPublishers -> "publishers"

instance FromJSON LinksGet'Role where
    parseJSON = parseJSONText "LinksGet'Role"

instance ToJSON LinksGet'Role where
    toJSON = toJSONText

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
data AdvertisersGet'Role
    = AGRAdvertisers
      -- ^ @advertisers@
      -- The requester is requesting as an advertiser.
    | AGRPublishers
      -- ^ @publishers@
      -- The requester is requesting as a publisher.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AdvertisersGet'Role

instance FromText AdvertisersGet'Role where
    fromText = \case
        "advertisers" -> Just AGRAdvertisers
        "publishers" -> Just AGRPublishers
        _ -> Nothing

instance ToText AdvertisersGet'Role where
    toText = \case
        AGRAdvertisers -> "advertisers"
        AGRPublishers -> "publishers"

instance FromJSON AdvertisersGet'Role where
    parseJSON = parseJSONText "AdvertisersGet'Role"

instance ToJSON AdvertisersGet'Role where
    toJSON = toJSONText

-- | Filters out all events that are not of the given type. Valid values:
-- \'action\', \'transaction\', or \'charge\'. Optional.
data ReportsGet'EventType
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

instance Hashable ReportsGet'EventType

instance FromText ReportsGet'EventType where
    fromText = \case
        "action" -> Just Action
        "charge" -> Just Charge
        "transaction" -> Just Transaction
        _ -> Nothing

instance ToText ReportsGet'EventType where
    toText = \case
        Action -> "action"
        Charge -> "charge"
        Transaction -> "transaction"

instance FromJSON ReportsGet'EventType where
    parseJSON = parseJSONText "ReportsGet'EventType"

instance ToJSON ReportsGet'EventType where
    toJSON = toJSONText

-- | Filters out all events that do not have the given status. Valid values:
-- \'active\', \'canceled\', or \'invalid\'. Optional.
data ReportsGet'Status
    = RGSActive
      -- ^ @active@
      -- Event is currently active.
    | RGSCanceled
      -- ^ @canceled@
      -- Event is currently canceled.
    | RGSInvalid
      -- ^ @invalid@
      -- Event is currently invalid.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ReportsGet'Status

instance FromText ReportsGet'Status where
    fromText = \case
        "active" -> Just RGSActive
        "canceled" -> Just RGSCanceled
        "invalid" -> Just RGSInvalid
        _ -> Nothing

instance ToText ReportsGet'Status where
    toText = \case
        RGSActive -> "active"
        RGSCanceled -> "canceled"
        RGSInvalid -> "invalid"

instance FromJSON ReportsGet'Status where
    parseJSON = parseJSONText "ReportsGet'Status"

instance ToJSON ReportsGet'Status where
    toJSON = toJSONText

-- | The type of report being requested. Valid values: \'order_delta\'.
-- Required.
data ReportsGet'ReportType
    = OrderDelta
      -- ^ @order_delta@
      -- The order delta report type.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ReportsGet'ReportType

instance FromText ReportsGet'ReportType where
    fromText = \case
        "order_delta" -> Just OrderDelta
        _ -> Nothing

instance ToText ReportsGet'ReportType where
    toText = \case
        OrderDelta -> "order_delta"

instance FromJSON ReportsGet'ReportType where
    parseJSON = parseJSONText "ReportsGet'ReportType"

instance ToJSON ReportsGet'ReportType where
    toJSON = toJSONText

-- | Filters out all events that are not of the given type. Valid values:
-- \'action\', \'transaction\', \'charge\'. Optional.
data EventsList'Type
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

instance Hashable EventsList'Type

instance FromText EventsList'Type where
    fromText = \case
        "action" -> Just ELTAction
        "charge" -> Just ELTCharge
        "transaction" -> Just ELTTransaction
        _ -> Nothing

instance ToText EventsList'Type where
    toText = \case
        ELTAction -> "action"
        ELTCharge -> "charge"
        ELTTransaction -> "transaction"

instance FromJSON EventsList'Type where
    parseJSON = parseJSONText "EventsList'Type"

instance ToJSON EventsList'Type where
    toJSON = toJSONText
