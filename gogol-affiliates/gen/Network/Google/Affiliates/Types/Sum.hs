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

-- | Filters out all events that do not have the given status. Valid values:
-- \'active\', \'canceled\', or \'invalid\'. Optional.
data Status
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

instance Hashable Status

instance FromText Status where
    fromText = \case
        "active" -> Just Active
        "canceled" -> Just Canceled
        "invalid" -> Just Invalid
        _ -> Nothing

instance ToText Status where
    toText = \case
        Active -> "active"
        Canceled -> "canceled"
        Invalid -> "invalid"

instance FromJSON Status where
    parseJSON = parseJSONText "Status"

instance ToJSON Status where
    toJSON = toJSONText

-- | The role of the author of the link.
data Authorship
    = AAdvertiser
      -- ^ @advertiser@
    | APublisher
      -- ^ @publisher@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Authorship

instance FromText Authorship where
    fromText = \case
        "advertiser" -> Just AAdvertiser
        "publisher" -> Just APublisher
        _ -> Nothing

instance ToText Authorship where
    toText = \case
        AAdvertiser -> "advertiser"
        APublisher -> "publisher"

instance FromJSON Authorship where
    parseJSON = parseJSONText "Authorship"

instance ToJSON Authorship where
    toJSON = toJSONText

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
data GANPublishersGetRole
    = GANPGRAdvertisers
      -- ^ @advertisers@
      -- The requester is requesting as an advertiser.
    | GANPGRPublishers
      -- ^ @publishers@
      -- The requester is requesting as a publisher.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GANPublishersGetRole

instance FromText GANPublishersGetRole where
    fromText = \case
        "advertisers" -> Just GANPGRAdvertisers
        "publishers" -> Just GANPGRPublishers
        _ -> Nothing

instance ToText GANPublishersGetRole where
    toText = \case
        GANPGRAdvertisers -> "advertisers"
        GANPGRPublishers -> "publishers"

instance FromJSON GANPublishersGetRole where
    parseJSON = parseJSONText "GANPublishersGetRole"

instance ToJSON GANPublishersGetRole where
    toJSON = toJSONText

-- | Filters out all charge events that are not of the given charge type.
-- Valid values: \'other\', \'slotting_fee\', \'monthly_minimum\',
-- \'tier_bonus\', \'credit\', \'debit\'. Optional.
data ChargeType
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

instance Hashable ChargeType

instance FromText ChargeType where
    fromText = \case
        "credit" -> Just Credit
        "debit" -> Just Debit
        "monthly_minimum" -> Just MonthlyMinimum
        "other" -> Just Other
        "slotting_fee" -> Just SlottingFee
        "tier_bonus" -> Just TierBonus
        _ -> Nothing

instance ToText ChargeType where
    toText = \case
        Credit -> "credit"
        Debit -> "debit"
        MonthlyMinimum -> "monthly_minimum"
        Other -> "other"
        SlottingFee -> "slotting_fee"
        TierBonus -> "tier_bonus"

instance FromJSON ChargeType where
    parseJSON = parseJSONText "ChargeType"

instance ToJSON ChargeType where
    toJSON = toJSONText

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
data GANLinksListRole
    = GANLLRAdvertisers
      -- ^ @advertisers@
      -- The requester is requesting as an advertiser.
    | GANLLRPublishers
      -- ^ @publishers@
      -- The requester is requesting as a publisher.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GANLinksListRole

instance FromText GANLinksListRole where
    fromText = \case
        "advertisers" -> Just GANLLRAdvertisers
        "publishers" -> Just GANLLRPublishers
        _ -> Nothing

instance ToText GANLinksListRole where
    toText = \case
        GANLLRAdvertisers -> "advertisers"
        GANLLRPublishers -> "publishers"

instance FromJSON GANLinksListRole where
    parseJSON = parseJSONText "GANLinksListRole"

instance ToJSON GANLinksListRole where
    toJSON = toJSONText

-- | Filters out all advertisers for which do not have the given relationship
-- status with the requesting publisher.
data RelationshipStatus
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

instance Hashable RelationshipStatus

instance FromText RelationshipStatus where
    fromText = \case
        "approved" -> Just Approved
        "available" -> Just Available
        "deactivated" -> Just Deactivated
        "declined" -> Just Declined
        "pending" -> Just Pending
        _ -> Nothing

instance ToText RelationshipStatus where
    toText = \case
        Approved -> "approved"
        Available -> "available"
        Deactivated -> "deactivated"
        Declined -> "declined"
        Pending -> "pending"

instance FromJSON RelationshipStatus where
    parseJSON = parseJSONText "RelationshipStatus"

instance ToJSON RelationshipStatus where
    toJSON = toJSONText

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
data GANLinksInsertRole
    = GANLIRAdvertisers
      -- ^ @advertisers@
      -- The requester is requesting as an advertiser.
    | GANLIRPublishers
      -- ^ @publishers@
      -- The requester is requesting as a publisher.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GANLinksInsertRole

instance FromText GANLinksInsertRole where
    fromText = \case
        "advertisers" -> Just GANLIRAdvertisers
        "publishers" -> Just GANLIRPublishers
        _ -> Nothing

instance ToText GANLinksInsertRole where
    toText = \case
        GANLIRAdvertisers -> "advertisers"
        GANLIRPublishers -> "publishers"

instance FromJSON GANLinksInsertRole where
    parseJSON = parseJSONText "GANLinksInsertRole"

instance ToJSON GANLinksInsertRole where
    toJSON = toJSONText

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
data GANAdvertisersListRole
    = GANALRAdvertisers
      -- ^ @advertisers@
      -- The requester is requesting as an advertiser.
    | GANALRPublishers
      -- ^ @publishers@
      -- The requester is requesting as a publisher.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GANAdvertisersListRole

instance FromText GANAdvertisersListRole where
    fromText = \case
        "advertisers" -> Just GANALRAdvertisers
        "publishers" -> Just GANALRPublishers
        _ -> Nothing

instance ToText GANAdvertisersListRole where
    toText = \case
        GANALRAdvertisers -> "advertisers"
        GANALRPublishers -> "publishers"

instance FromJSON GANAdvertisersListRole where
    parseJSON = parseJSONText "GANAdvertisersListRole"

instance ToJSON GANAdvertisersListRole where
    toJSON = toJSONText

-- | The promotion type.
data PromotionType
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

instance Hashable PromotionType

instance FromText PromotionType where
    fromText = \case
        "coupon" -> Just Coupon
        "free_gift" -> Just FreeGift
        "free_shipping" -> Just FreeShipping
        "percent_off" -> Just PercentOff
        "price_cut" -> Just PriceCut
        _ -> Nothing

instance ToText PromotionType where
    toText = \case
        Coupon -> "coupon"
        FreeGift -> "free_gift"
        FreeShipping -> "free_shipping"
        PercentOff -> "percent_off"
        PriceCut -> "price_cut"

instance FromJSON PromotionType where
    parseJSON = parseJSONText "PromotionType"

instance ToJSON PromotionType where
    toJSON = toJSONText

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
data GANPublishersListRole
    = GANPLRAdvertisers
      -- ^ @advertisers@
      -- The requester is requesting as an advertiser.
    | GANPLRPublishers
      -- ^ @publishers@
      -- The requester is requesting as a publisher.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GANPublishersListRole

instance FromText GANPublishersListRole where
    fromText = \case
        "advertisers" -> Just GANPLRAdvertisers
        "publishers" -> Just GANPLRPublishers
        _ -> Nothing

instance ToText GANPublishersListRole where
    toText = \case
        GANPLRAdvertisers -> "advertisers"
        GANPLRPublishers -> "publishers"

instance FromJSON GANPublishersListRole where
    parseJSON = parseJSONText "GANPublishersListRole"

instance ToJSON GANPublishersListRole where
    toJSON = toJSONText

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
data GANLinksGetRole
    = GANLGRAdvertisers
      -- ^ @advertisers@
      -- The requester is requesting as an advertiser.
    | GANLGRPublishers
      -- ^ @publishers@
      -- The requester is requesting as a publisher.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GANLinksGetRole

instance FromText GANLinksGetRole where
    fromText = \case
        "advertisers" -> Just GANLGRAdvertisers
        "publishers" -> Just GANLGRPublishers
        _ -> Nothing

instance ToText GANLinksGetRole where
    toText = \case
        GANLGRAdvertisers -> "advertisers"
        GANLGRPublishers -> "publishers"

instance FromJSON GANLinksGetRole where
    parseJSON = parseJSONText "GANLinksGetRole"

instance ToJSON GANLinksGetRole where
    toJSON = toJSONText

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
data GANEventsListRole
    = GANELRAdvertisers
      -- ^ @advertisers@
      -- The requester is requesting as an advertiser.
    | GANELRPublishers
      -- ^ @publishers@
      -- The requester is requesting as a publisher.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GANEventsListRole

instance FromText GANEventsListRole where
    fromText = \case
        "advertisers" -> Just GANELRAdvertisers
        "publishers" -> Just GANELRPublishers
        _ -> Nothing

instance ToText GANEventsListRole where
    toText = \case
        GANELRAdvertisers -> "advertisers"
        GANELRPublishers -> "publishers"

instance FromJSON GANEventsListRole where
    parseJSON = parseJSONText "GANEventsListRole"

instance ToJSON GANEventsListRole where
    toJSON = toJSONText

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
data Role
    = RAdvertisers
      -- ^ @advertisers@
      -- The requester is requesting as an advertiser.
    | RPublishers
      -- ^ @publishers@
      -- The requester is requesting as a publisher.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Role

instance FromText Role where
    fromText = \case
        "advertisers" -> Just RAdvertisers
        "publishers" -> Just RPublishers
        _ -> Nothing

instance ToText Role where
    toText = \case
        RAdvertisers -> "advertisers"
        RPublishers -> "publishers"

instance FromJSON Role where
    parseJSON = parseJSONText "Role"

instance ToJSON Role where
    toJSON = toJSONText

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
data GANAdvertisersGetRole
    = GANAGRAdvertisers
      -- ^ @advertisers@
      -- The requester is requesting as an advertiser.
    | GANAGRPublishers
      -- ^ @publishers@
      -- The requester is requesting as a publisher.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GANAdvertisersGetRole

instance FromText GANAdvertisersGetRole where
    fromText = \case
        "advertisers" -> Just GANAGRAdvertisers
        "publishers" -> Just GANAGRPublishers
        _ -> Nothing

instance ToText GANAdvertisersGetRole where
    toText = \case
        GANAGRAdvertisers -> "advertisers"
        GANAGRPublishers -> "publishers"

instance FromJSON GANAdvertisersGetRole where
    parseJSON = parseJSONText "GANAdvertisersGetRole"

instance ToJSON GANAdvertisersGetRole where
    toJSON = toJSONText

-- | Filters out all events that are not of the given type. Valid values:
-- \'action\', \'transaction\', or \'charge\'. Optional.
data EventType
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

instance Hashable EventType

instance FromText EventType where
    fromText = \case
        "action" -> Just Action
        "charge" -> Just Charge
        "transaction" -> Just Transaction
        _ -> Nothing

instance ToText EventType where
    toText = \case
        Action -> "action"
        Charge -> "charge"
        Transaction -> "transaction"

instance FromJSON EventType where
    parseJSON = parseJSONText "EventType"

instance ToJSON EventType where
    toJSON = toJSONText

-- | Filters out all publishers for which do not have the given relationship
-- status with the requesting publisher.
data GANPublishersListRelationshipStatus
    = GANPLRSApproved
      -- ^ @approved@
      -- Publishers you\'ve approved to your program.
    | GANPLRSAvailable
      -- ^ @available@
      -- Publishers available for you to recruit.
    | GANPLRSDeactivated
      -- ^ @deactivated@
      -- A publisher that you terminated from your program. Publishers also have
      -- the ability to remove themselves from your program.
    | GANPLRSDeclined
      -- ^ @declined@
      -- A publisher that you did not approve to your program.
    | GANPLRSPending
      -- ^ @pending@
      -- Publishers that have applied to your program. We recommend reviewing and
      -- deciding on pending publishers on a weekly basis.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GANPublishersListRelationshipStatus

instance FromText GANPublishersListRelationshipStatus where
    fromText = \case
        "approved" -> Just GANPLRSApproved
        "available" -> Just GANPLRSAvailable
        "deactivated" -> Just GANPLRSDeactivated
        "declined" -> Just GANPLRSDeclined
        "pending" -> Just GANPLRSPending
        _ -> Nothing

instance ToText GANPublishersListRelationshipStatus where
    toText = \case
        GANPLRSApproved -> "approved"
        GANPLRSAvailable -> "available"
        GANPLRSDeactivated -> "deactivated"
        GANPLRSDeclined -> "declined"
        GANPLRSPending -> "pending"

instance FromJSON GANPublishersListRelationshipStatus where
    parseJSON = parseJSONText "GANPublishersListRelationshipStatus"

instance ToJSON GANPublishersListRelationshipStatus where
    toJSON = toJSONText

-- | The set of fields to return.
data Projection
    = Full
      -- ^ @full@
      -- Include all offer fields. This is the default.
    | Summary
      -- ^ @summary@
      -- Include only the basic fields needed to display an offer.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Projection

instance FromText Projection where
    fromText = \case
        "full" -> Just Full
        "summary" -> Just Summary
        _ -> Nothing

instance ToText Projection where
    toText = \case
        Full -> "full"
        Summary -> "summary"

instance FromJSON Projection where
    parseJSON = parseJSONText "Projection"

instance ToJSON Projection where
    toJSON = toJSONText

-- | The type of the link.
data LinkType
    = Banner
      -- ^ @banner@
    | Text
      -- ^ @text@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LinkType

instance FromText LinkType where
    fromText = \case
        "banner" -> Just Banner
        "text" -> Just Text
        _ -> Nothing

instance ToText LinkType where
    toText = \case
        Banner -> "banner"
        Text -> "text"

instance FromJSON LinkType where
    parseJSON = parseJSONText "LinkType"

instance ToJSON LinkType where
    toJSON = toJSONText

-- | Filters out all events that are not of the given type. Valid values:
-- \'action\', \'transaction\', \'charge\'. Optional.
data Type
    = TAction
      -- ^ @action@
      -- The completion of an application, sign-up, or other process. For
      -- example, an action occurs if a user clicks an ad for a credit card and
      -- completes an application for that card.
    | TCharge
      -- ^ @charge@
      -- A charge event is typically a payment between an advertiser, publisher
      -- or Google.
    | TTransaction
      -- ^ @transaction@
      -- A conversion event, typically an e-commerce transaction. Some
      -- advertisers use a transaction to record other types of events, such as
      -- magazine subscriptions.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Type

instance FromText Type where
    fromText = \case
        "action" -> Just TAction
        "charge" -> Just TCharge
        "transaction" -> Just TTransaction
        _ -> Nothing

instance ToText Type where
    toText = \case
        TAction -> "action"
        TCharge -> "charge"
        TTransaction -> "transaction"

instance FromJSON Type where
    parseJSON = parseJSONText "Type"

instance ToJSON Type where
    toJSON = toJSONText

-- | The type of report being requested. Valid values: \'order_delta\'.
-- Required.
data ReportType
    = OrderDelta
      -- ^ @order_delta@
      -- The order delta report type.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ReportType

instance FromText ReportType where
    fromText = \case
        "order_delta" -> Just OrderDelta
        _ -> Nothing

instance ToText ReportType where
    toText = \case
        OrderDelta -> "order_delta"

instance FromJSON ReportType where
    parseJSON = parseJSONText "ReportType"

instance ToJSON ReportType where
    toJSON = toJSONText

-- | The status of the relationship.
data GANLinksListRelationshipStatus
    = GANLLRSApproved
      -- ^ @approved@
    | GANLLRSAvailable
      -- ^ @available@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GANLinksListRelationshipStatus

instance FromText GANLinksListRelationshipStatus where
    fromText = \case
        "approved" -> Just GANLLRSApproved
        "available" -> Just GANLLRSAvailable
        _ -> Nothing

instance ToText GANLinksListRelationshipStatus where
    toText = \case
        GANLLRSApproved -> "approved"
        GANLLRSAvailable -> "available"

instance FromJSON GANLinksListRelationshipStatus where
    parseJSON = parseJSONText "GANLinksListRelationshipStatus"

instance ToJSON GANLinksListRelationshipStatus where
    toJSON = toJSONText

-- | Filters out all events that do not have the given status. Valid values:
-- \'active\', \'canceled\'. Optional.
data GANEventsListStatus
    = GANELSActive
      -- ^ @active@
      -- Event is currently active.
    | GANELSCanceled
      -- ^ @canceled@
      -- Event is currently canceled.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GANEventsListStatus

instance FromText GANEventsListStatus where
    fromText = \case
        "active" -> Just GANELSActive
        "canceled" -> Just GANELSCanceled
        _ -> Nothing

instance ToText GANEventsListStatus where
    toText = \case
        GANELSActive -> "active"
        GANELSCanceled -> "canceled"

instance FromJSON GANEventsListStatus where
    parseJSON = parseJSONText "GANEventsListStatus"

instance ToJSON GANEventsListStatus where
    toJSON = toJSONText
