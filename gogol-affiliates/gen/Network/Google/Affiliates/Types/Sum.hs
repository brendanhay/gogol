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

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
data GanPublishersGetRole
    = Advertisers
      -- ^ @advertisers@
      -- The requester is requesting as an advertiser.
    | Publishers
      -- ^ @publishers@
      -- The requester is requesting as a publisher.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GanPublishersGetRole

instance FromText GanPublishersGetRole where
    fromText = \case
        "advertisers" -> Just Advertisers
        "publishers" -> Just Publishers
        _ -> Nothing

instance ToText GanPublishersGetRole where
    toText = \case
        Advertisers -> "advertisers"
        Publishers -> "publishers"

instance FromJSON GanPublishersGetRole where
    parseJSON = parseJSONText "GanPublishersGetRole"

instance ToJSON GanPublishersGetRole where
    toJSON = toJSONText

-- | Filters out all events that are not of the given type. Valid values:
-- \'action\', \'transaction\', or \'charge\'. Optional.
data GanReportsGetEventType
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

instance Hashable GanReportsGetEventType

instance FromText GanReportsGetEventType where
    fromText = \case
        "action" -> Just Action
        "charge" -> Just Charge
        "transaction" -> Just Transaction
        _ -> Nothing

instance ToText GanReportsGetEventType where
    toText = \case
        Action -> "action"
        Charge -> "charge"
        Transaction -> "transaction"

instance FromJSON GanReportsGetEventType where
    parseJSON = parseJSONText "GanReportsGetEventType"

instance ToJSON GanReportsGetEventType where
    toJSON = toJSONText

-- | Filters out all events that do not have the given status. Valid values:
-- \'active\', \'canceled\', or \'invalid\'. Optional.
data GanReportsGetStatus
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

instance Hashable GanReportsGetStatus

instance FromText GanReportsGetStatus where
    fromText = \case
        "active" -> Just Active
        "canceled" -> Just Canceled
        "invalid" -> Just Invalid
        _ -> Nothing

instance ToText GanReportsGetStatus where
    toText = \case
        Active -> "active"
        Canceled -> "canceled"
        Invalid -> "invalid"

instance FromJSON GanReportsGetStatus where
    parseJSON = parseJSONText "GanReportsGetStatus"

instance ToJSON GanReportsGetStatus where
    toJSON = toJSONText

-- | The promotion type.
data GanLinksListPromotionType
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

instance Hashable GanLinksListPromotionType

instance FromText GanLinksListPromotionType where
    fromText = \case
        "coupon" -> Just Coupon
        "free_gift" -> Just FreeGift
        "free_shipping" -> Just FreeShipping
        "percent_off" -> Just PercentOff
        "price_cut" -> Just PriceCut
        _ -> Nothing

instance ToText GanLinksListPromotionType where
    toText = \case
        Coupon -> "coupon"
        FreeGift -> "free_gift"
        FreeShipping -> "free_shipping"
        PercentOff -> "percent_off"
        PriceCut -> "price_cut"

instance FromJSON GanLinksListPromotionType where
    parseJSON = parseJSONText "GanLinksListPromotionType"

instance ToJSON GanLinksListPromotionType where
    toJSON = toJSONText

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
data GanLinksListRole
    = GLLRAdvertisers
      -- ^ @advertisers@
      -- The requester is requesting as an advertiser.
    | GLLRPublishers
      -- ^ @publishers@
      -- The requester is requesting as a publisher.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GanLinksListRole

instance FromText GanLinksListRole where
    fromText = \case
        "advertisers" -> Just GLLRAdvertisers
        "publishers" -> Just GLLRPublishers
        _ -> Nothing

instance ToText GanLinksListRole where
    toText = \case
        GLLRAdvertisers -> "advertisers"
        GLLRPublishers -> "publishers"

instance FromJSON GanLinksListRole where
    parseJSON = parseJSONText "GanLinksListRole"

instance ToJSON GanLinksListRole where
    toJSON = toJSONText

-- | Filters out all events that are not of the given type. Valid values:
-- \'action\', \'transaction\', \'charge\'. Optional.
data GanEventsListType
    = GELTAction
      -- ^ @action@
      -- The completion of an application, sign-up, or other process. For
      -- example, an action occurs if a user clicks an ad for a credit card and
      -- completes an application for that card.
    | GELTCharge
      -- ^ @charge@
      -- A charge event is typically a payment between an advertiser, publisher
      -- or Google.
    | GELTTransaction
      -- ^ @transaction@
      -- A conversion event, typically an e-commerce transaction. Some
      -- advertisers use a transaction to record other types of events, such as
      -- magazine subscriptions.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GanEventsListType

instance FromText GanEventsListType where
    fromText = \case
        "action" -> Just GELTAction
        "charge" -> Just GELTCharge
        "transaction" -> Just GELTTransaction
        _ -> Nothing

instance ToText GanEventsListType where
    toText = \case
        GELTAction -> "action"
        GELTCharge -> "charge"
        GELTTransaction -> "transaction"

instance FromJSON GanEventsListType where
    parseJSON = parseJSONText "GanEventsListType"

instance ToJSON GanEventsListType where
    toJSON = toJSONText

-- | The type of report being requested. Valid values: \'order_delta\'.
-- Required.
data GanReportsGetReportType
    = OrderDelta
      -- ^ @order_delta@
      -- The order delta report type.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GanReportsGetReportType

instance FromText GanReportsGetReportType where
    fromText = \case
        "order_delta" -> Just OrderDelta
        _ -> Nothing

instance ToText GanReportsGetReportType where
    toText = \case
        OrderDelta -> "order_delta"

instance FromJSON GanReportsGetReportType where
    parseJSON = parseJSONText "GanReportsGetReportType"

instance ToJSON GanReportsGetReportType where
    toJSON = toJSONText

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
data GanLinksInsertRole
    = GLIRAdvertisers
      -- ^ @advertisers@
      -- The requester is requesting as an advertiser.
    | GLIRPublishers
      -- ^ @publishers@
      -- The requester is requesting as a publisher.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GanLinksInsertRole

instance FromText GanLinksInsertRole where
    fromText = \case
        "advertisers" -> Just GLIRAdvertisers
        "publishers" -> Just GLIRPublishers
        _ -> Nothing

instance ToText GanLinksInsertRole where
    toText = \case
        GLIRAdvertisers -> "advertisers"
        GLIRPublishers -> "publishers"

instance FromJSON GanLinksInsertRole where
    parseJSON = parseJSONText "GanLinksInsertRole"

instance ToJSON GanLinksInsertRole where
    toJSON = toJSONText

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
data GanAdvertisersListRole
    = GALRAdvertisers
      -- ^ @advertisers@
      -- The requester is requesting as an advertiser.
    | GALRPublishers
      -- ^ @publishers@
      -- The requester is requesting as a publisher.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GanAdvertisersListRole

instance FromText GanAdvertisersListRole where
    fromText = \case
        "advertisers" -> Just GALRAdvertisers
        "publishers" -> Just GALRPublishers
        _ -> Nothing

instance ToText GanAdvertisersListRole where
    toText = \case
        GALRAdvertisers -> "advertisers"
        GALRPublishers -> "publishers"

instance FromJSON GanAdvertisersListRole where
    parseJSON = parseJSONText "GanAdvertisersListRole"

instance ToJSON GanAdvertisersListRole where
    toJSON = toJSONText

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
data GanPublishersListRole
    = GPLRAdvertisers
      -- ^ @advertisers@
      -- The requester is requesting as an advertiser.
    | GPLRPublishers
      -- ^ @publishers@
      -- The requester is requesting as a publisher.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GanPublishersListRole

instance FromText GanPublishersListRole where
    fromText = \case
        "advertisers" -> Just GPLRAdvertisers
        "publishers" -> Just GPLRPublishers
        _ -> Nothing

instance ToText GanPublishersListRole where
    toText = \case
        GPLRAdvertisers -> "advertisers"
        GPLRPublishers -> "publishers"

instance FromJSON GanPublishersListRole where
    parseJSON = parseJSONText "GanPublishersListRole"

instance ToJSON GanPublishersListRole where
    toJSON = toJSONText

-- | The role of the author of the link.
data GanLinksListAuthorship
    = Advertiser
      -- ^ @advertiser@
    | Publisher
      -- ^ @publisher@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GanLinksListAuthorship

instance FromText GanLinksListAuthorship where
    fromText = \case
        "advertiser" -> Just Advertiser
        "publisher" -> Just Publisher
        _ -> Nothing

instance ToText GanLinksListAuthorship where
    toText = \case
        Advertiser -> "advertiser"
        Publisher -> "publisher"

instance FromJSON GanLinksListAuthorship where
    parseJSON = parseJSONText "GanLinksListAuthorship"

instance ToJSON GanLinksListAuthorship where
    toJSON = toJSONText

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
data GanLinksGetRole
    = GLGRAdvertisers
      -- ^ @advertisers@
      -- The requester is requesting as an advertiser.
    | GLGRPublishers
      -- ^ @publishers@
      -- The requester is requesting as a publisher.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GanLinksGetRole

instance FromText GanLinksGetRole where
    fromText = \case
        "advertisers" -> Just GLGRAdvertisers
        "publishers" -> Just GLGRPublishers
        _ -> Nothing

instance ToText GanLinksGetRole where
    toText = \case
        GLGRAdvertisers -> "advertisers"
        GLGRPublishers -> "publishers"

instance FromJSON GanLinksGetRole where
    parseJSON = parseJSONText "GanLinksGetRole"

instance ToJSON GanLinksGetRole where
    toJSON = toJSONText

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
data GanEventsListRole
    = GELRAdvertisers
      -- ^ @advertisers@
      -- The requester is requesting as an advertiser.
    | GELRPublishers
      -- ^ @publishers@
      -- The requester is requesting as a publisher.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GanEventsListRole

instance FromText GanEventsListRole where
    fromText = \case
        "advertisers" -> Just GELRAdvertisers
        "publishers" -> Just GELRPublishers
        _ -> Nothing

instance ToText GanEventsListRole where
    toText = \case
        GELRAdvertisers -> "advertisers"
        GELRPublishers -> "publishers"

instance FromJSON GanEventsListRole where
    parseJSON = parseJSONText "GanEventsListRole"

instance ToJSON GanEventsListRole where
    toJSON = toJSONText

-- | The type of the link.
data GanLinksListLinkType
    = Banner
      -- ^ @banner@
    | Text
      -- ^ @text@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GanLinksListLinkType

instance FromText GanLinksListLinkType where
    fromText = \case
        "banner" -> Just Banner
        "text" -> Just Text
        _ -> Nothing

instance ToText GanLinksListLinkType where
    toText = \case
        Banner -> "banner"
        Text -> "text"

instance FromJSON GanLinksListLinkType where
    parseJSON = parseJSONText "GanLinksListLinkType"

instance ToJSON GanLinksListLinkType where
    toJSON = toJSONText

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
data GanAdvertisersGetRole
    = GAGRAdvertisers
      -- ^ @advertisers@
      -- The requester is requesting as an advertiser.
    | GAGRPublishers
      -- ^ @publishers@
      -- The requester is requesting as a publisher.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GanAdvertisersGetRole

instance FromText GanAdvertisersGetRole where
    fromText = \case
        "advertisers" -> Just GAGRAdvertisers
        "publishers" -> Just GAGRPublishers
        _ -> Nothing

instance ToText GanAdvertisersGetRole where
    toText = \case
        GAGRAdvertisers -> "advertisers"
        GAGRPublishers -> "publishers"

instance FromJSON GanAdvertisersGetRole where
    parseJSON = parseJSONText "GanAdvertisersGetRole"

instance ToJSON GanAdvertisersGetRole where
    toJSON = toJSONText

-- | Filters out all advertisers for which do not have the given relationship
-- status with the requesting publisher.
data GanAdvertisersListRelationshipStatus
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

instance Hashable GanAdvertisersListRelationshipStatus

instance FromText GanAdvertisersListRelationshipStatus where
    fromText = \case
        "approved" -> Just Approved
        "available" -> Just Available
        "deactivated" -> Just Deactivated
        "declined" -> Just Declined
        "pending" -> Just Pending
        _ -> Nothing

instance ToText GanAdvertisersListRelationshipStatus where
    toText = \case
        Approved -> "approved"
        Available -> "available"
        Deactivated -> "deactivated"
        Declined -> "declined"
        Pending -> "pending"

instance FromJSON GanAdvertisersListRelationshipStatus where
    parseJSON = parseJSONText "GanAdvertisersListRelationshipStatus"

instance ToJSON GanAdvertisersListRelationshipStatus where
    toJSON = toJSONText

-- | The set of fields to return.
data GanCcOffersListProjection
    = Full
      -- ^ @full@
      -- Include all offer fields. This is the default.
    | Summary
      -- ^ @summary@
      -- Include only the basic fields needed to display an offer.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GanCcOffersListProjection

instance FromText GanCcOffersListProjection where
    fromText = \case
        "full" -> Just Full
        "summary" -> Just Summary
        _ -> Nothing

instance ToText GanCcOffersListProjection where
    toText = \case
        Full -> "full"
        Summary -> "summary"

instance FromJSON GanCcOffersListProjection where
    parseJSON = parseJSONText "GanCcOffersListProjection"

instance ToJSON GanCcOffersListProjection where
    toJSON = toJSONText

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
data GanReportsGetRole
    = GRGRAdvertisers
      -- ^ @advertisers@
      -- The requester is requesting as an advertiser.
    | GRGRPublishers
      -- ^ @publishers@
      -- The requester is requesting as a publisher.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GanReportsGetRole

instance FromText GanReportsGetRole where
    fromText = \case
        "advertisers" -> Just GRGRAdvertisers
        "publishers" -> Just GRGRPublishers
        _ -> Nothing

instance ToText GanReportsGetRole where
    toText = \case
        GRGRAdvertisers -> "advertisers"
        GRGRPublishers -> "publishers"

instance FromJSON GanReportsGetRole where
    parseJSON = parseJSONText "GanReportsGetRole"

instance ToJSON GanReportsGetRole where
    toJSON = toJSONText

-- | Filters out all charge events that are not of the given charge type.
-- Valid values: \'other\', \'slotting_fee\', \'monthly_minimum\',
-- \'tier_bonus\', \'credit\', \'debit\'. Optional.
data GanEventsListChargeType
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

instance Hashable GanEventsListChargeType

instance FromText GanEventsListChargeType where
    fromText = \case
        "credit" -> Just Credit
        "debit" -> Just Debit
        "monthly_minimum" -> Just MonthlyMinimum
        "other" -> Just Other
        "slotting_fee" -> Just SlottingFee
        "tier_bonus" -> Just TierBonus
        _ -> Nothing

instance ToText GanEventsListChargeType where
    toText = \case
        Credit -> "credit"
        Debit -> "debit"
        MonthlyMinimum -> "monthly_minimum"
        Other -> "other"
        SlottingFee -> "slotting_fee"
        TierBonus -> "tier_bonus"

instance FromJSON GanEventsListChargeType where
    parseJSON = parseJSONText "GanEventsListChargeType"

instance ToJSON GanEventsListChargeType where
    toJSON = toJSONText

-- | Filters out all publishers for which do not have the given relationship
-- status with the requesting publisher.
data GanPublishersListRelationshipStatus
    = GPLRSApproved
      -- ^ @approved@
      -- Publishers you\'ve approved to your program.
    | GPLRSAvailable
      -- ^ @available@
      -- Publishers available for you to recruit.
    | GPLRSDeactivated
      -- ^ @deactivated@
      -- A publisher that you terminated from your program. Publishers also have
      -- the ability to remove themselves from your program.
    | GPLRSDeclined
      -- ^ @declined@
      -- A publisher that you did not approve to your program.
    | GPLRSPending
      -- ^ @pending@
      -- Publishers that have applied to your program. We recommend reviewing and
      -- deciding on pending publishers on a weekly basis.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GanPublishersListRelationshipStatus

instance FromText GanPublishersListRelationshipStatus where
    fromText = \case
        "approved" -> Just GPLRSApproved
        "available" -> Just GPLRSAvailable
        "deactivated" -> Just GPLRSDeactivated
        "declined" -> Just GPLRSDeclined
        "pending" -> Just GPLRSPending
        _ -> Nothing

instance ToText GanPublishersListRelationshipStatus where
    toText = \case
        GPLRSApproved -> "approved"
        GPLRSAvailable -> "available"
        GPLRSDeactivated -> "deactivated"
        GPLRSDeclined -> "declined"
        GPLRSPending -> "pending"

instance FromJSON GanPublishersListRelationshipStatus where
    parseJSON = parseJSONText "GanPublishersListRelationshipStatus"

instance ToJSON GanPublishersListRelationshipStatus where
    toJSON = toJSONText

-- | The status of the relationship.
data GanLinksListRelationshipStatus
    = GLLRSApproved
      -- ^ @approved@
    | GLLRSAvailable
      -- ^ @available@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GanLinksListRelationshipStatus

instance FromText GanLinksListRelationshipStatus where
    fromText = \case
        "approved" -> Just GLLRSApproved
        "available" -> Just GLLRSAvailable
        _ -> Nothing

instance ToText GanLinksListRelationshipStatus where
    toText = \case
        GLLRSApproved -> "approved"
        GLLRSAvailable -> "available"

instance FromJSON GanLinksListRelationshipStatus where
    parseJSON = parseJSONText "GanLinksListRelationshipStatus"

instance ToJSON GanLinksListRelationshipStatus where
    toJSON = toJSONText

-- | Filters out all events that do not have the given status. Valid values:
-- \'active\', \'canceled\'. Optional.
data GanEventsListStatus
    = GELSActive
      -- ^ @active@
      -- Event is currently active.
    | GELSCanceled
      -- ^ @canceled@
      -- Event is currently canceled.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GanEventsListStatus

instance FromText GanEventsListStatus where
    fromText = \case
        "active" -> Just GELSActive
        "canceled" -> Just GELSCanceled
        _ -> Nothing

instance ToText GanEventsListStatus where
    toText = \case
        GELSActive -> "active"
        GELSCanceled -> "canceled"

instance FromJSON GanEventsListStatus where
    parseJSON = parseJSONText "GanEventsListStatus"

instance ToJSON GanEventsListStatus where
    toJSON = toJSONText
