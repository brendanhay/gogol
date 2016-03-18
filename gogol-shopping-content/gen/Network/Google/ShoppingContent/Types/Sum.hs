{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
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
data OrdersGettestOrdertemplateTemplateName
    = TEMPLATE1
      -- ^ @template1@
    | Template1a
      -- ^ @template1a@
    | Template1b
      -- ^ @template1b@
    | TEMPLATE2
      -- ^ @template2@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OrdersGettestOrdertemplateTemplateName

instance FromText OrdersGettestOrdertemplateTemplateName where
    fromText = \case
        "template1" -> Just TEMPLATE1
        "template1a" -> Just Template1a
        "template1b" -> Just Template1b
        "template2" -> Just TEMPLATE2
        _ -> Nothing

instance ToText OrdersGettestOrdertemplateTemplateName where
    toText = \case
        TEMPLATE1 -> "template1"
        Template1a -> "template1a"
        Template1b -> "template1b"
        TEMPLATE2 -> "template2"

instance FromJSON OrdersGettestOrdertemplateTemplateName where
    parseJSON = parseJSONText "OrdersGettestOrdertemplateTemplateName"

instance ToJSON OrdersGettestOrdertemplateTemplateName where
    toJSON = toJSONText

-- | The ordering of the returned list. The only supported value are
-- placedDate desc and placedDate asc for now, which returns orders sorted
-- by placement date. \"placedDate desc\" stands for listing orders by
-- placement date, from oldest to most recent. \"placedDate asc\" stands
-- for listing orders by placement date, from most recent to oldest. In
-- future releases we\'ll support other sorting criteria.
data OrdersListOrderBy
    = PlacedDateAsc
      -- ^ @placedDate asc@
    | PlacedDateDesc
      -- ^ @placedDate desc@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OrdersListOrderBy

instance FromText OrdersListOrderBy where
    fromText = \case
        "placedDate asc" -> Just PlacedDateAsc
        "placedDate desc" -> Just PlacedDateDesc
        _ -> Nothing

instance ToText OrdersListOrderBy where
    toText = \case
        PlacedDateAsc -> "placedDate asc"
        PlacedDateDesc -> "placedDate desc"

instance FromJSON OrdersListOrderBy where
    parseJSON = parseJSONText "OrdersListOrderBy"

instance ToJSON OrdersListOrderBy where
    toJSON = toJSONText

-- | Obtains orders that match any of the specified statuses. Multiple values
-- can be specified with comma separation. Additionally, please note that
-- active is a shortcut for pendingShipment and partiallyShipped, and
-- completed is a shortcut for shipped , partiallyDelivered, delivered,
-- partiallyReturned, returned, and canceled.
data OrdersListStatuses
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

instance Hashable OrdersListStatuses

instance FromText OrdersListStatuses where
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

instance ToText OrdersListStatuses where
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

instance FromJSON OrdersListStatuses where
    parseJSON = parseJSONText "OrdersListStatuses"

instance ToJSON OrdersListStatuses where
    toJSON = toJSONText
