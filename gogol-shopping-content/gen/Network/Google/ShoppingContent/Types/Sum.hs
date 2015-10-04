{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ShoppingContent.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ShoppingContent.Types.Sum where

import           Network.Google.Prelude

-- | The name of the template to retrieve.
data TemplateName
    = TEMPLATE1
      -- ^ @template1@
    | TEMPLATE2
      -- ^ @template2@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TemplateName

instance FromText TemplateName where
    fromText = \case
        "template1" -> Just TEMPLATE1
        "template2" -> Just TEMPLATE2
        _ -> Nothing

instance ToText TemplateName where
    toText = \case
        TEMPLATE1 -> "template1"
        TEMPLATE2 -> "template2"

instance FromJSON TemplateName where
    parseJSON = parseJSONText "TemplateName"

instance ToJSON TemplateName where
    toJSON = toJSONText

-- | The ordering of the returned list. The only supported value are
-- placedDate desc and placedDate asc for now, which returns orders sorted
-- by placement date. \"placedDate desc\" stands for listing orders by
-- placement date, from oldest to most recent. \"placedDate asc\" stands
-- for listing orders by placement date, from most recent to oldest. In
-- future releases we\'ll support other sorting criteria.
data OrderBy
    = PlacedDateAsc
      -- ^ @placedDate asc@
    | PlacedDateDesc
      -- ^ @placedDate desc@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OrderBy

instance FromText OrderBy where
    fromText = \case
        "placedDate asc" -> Just PlacedDateAsc
        "placedDate desc" -> Just PlacedDateDesc
        _ -> Nothing

instance ToText OrderBy where
    toText = \case
        PlacedDateAsc -> "placedDate asc"
        PlacedDateDesc -> "placedDate desc"

instance FromJSON OrderBy where
    parseJSON = parseJSONText "OrderBy"

instance ToJSON OrderBy where
    toJSON = toJSONText

-- | Obtains orders that match any of the specified statuses. Multiple values
-- can be specified with comma separation. Additionally, please note that
-- active is a shortcut for pendingShipment and partiallyShipped, and
-- completed is a shortcut for shipped , partiallyDelivered, delivered,
-- partiallyReturned, returned, and canceled.
data Statuses
    = Active
      -- ^ @active@
    | Canceled
      -- ^ @canceled@
    | Completed
      -- ^ @completed@
    | Delivered
      -- ^ @delivered@
    | InProgress
      -- ^ @inProgress@
    | PartiallyDelivered
      -- ^ @partiallyDelivered@
    | PartiallyReturned
      -- ^ @partiallyReturned@
    | PartiallyShipped
      -- ^ @partiallyShipped@
    | PendingShipment
      -- ^ @pendingShipment@
    | Returned
      -- ^ @returned@
    | Shipped
      -- ^ @shipped@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Statuses

instance FromText Statuses where
    fromText = \case
        "active" -> Just Active
        "canceled" -> Just Canceled
        "completed" -> Just Completed
        "delivered" -> Just Delivered
        "inProgress" -> Just InProgress
        "partiallyDelivered" -> Just PartiallyDelivered
        "partiallyReturned" -> Just PartiallyReturned
        "partiallyShipped" -> Just PartiallyShipped
        "pendingShipment" -> Just PendingShipment
        "returned" -> Just Returned
        "shipped" -> Just Shipped
        _ -> Nothing

instance ToText Statuses where
    toText = \case
        Active -> "active"
        Canceled -> "canceled"
        Completed -> "completed"
        Delivered -> "delivered"
        InProgress -> "inProgress"
        PartiallyDelivered -> "partiallyDelivered"
        PartiallyReturned -> "partiallyReturned"
        PartiallyShipped -> "partiallyShipped"
        PendingShipment -> "pendingShipment"
        Returned -> "returned"
        Shipped -> "shipped"

instance FromJSON Statuses where
    parseJSON = parseJSONText "Statuses"

instance ToJSON Statuses where
    toJSON = toJSONText
