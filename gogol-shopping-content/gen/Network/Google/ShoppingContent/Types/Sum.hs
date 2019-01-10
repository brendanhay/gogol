{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ShoppingContent.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ShoppingContent.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OrdersGettestOrdertemplateTemplateName

instance FromHttpApiData OrdersGettestOrdertemplateTemplateName where
    parseQueryParam = \case
        "template1" -> Right TEMPLATE1
        "template1a" -> Right Template1a
        "template1b" -> Right Template1b
        "template2" -> Right TEMPLATE2
        x -> Left ("Unable to parse OrdersGettestOrdertemplateTemplateName from: " <> x)

instance ToHttpApiData OrdersGettestOrdertemplateTemplateName where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OrdersListOrderBy

instance FromHttpApiData OrdersListOrderBy where
    parseQueryParam = \case
        "placedDate asc" -> Right PlacedDateAsc
        "placedDate desc" -> Right PlacedDateDesc
        x -> Left ("Unable to parse OrdersListOrderBy from: " <> x)

instance ToHttpApiData OrdersListOrderBy where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OrdersListStatuses

instance FromHttpApiData OrdersListStatuses where
    parseQueryParam = \case
        "active" -> Right Active
        "canceled" -> Right Canceled
        "completed" -> Right Completed
        "delivered" -> Right Delivered
        "inProgress" -> Right InProgress
        "partiallyDelivered" -> Right PartiallyDelivered
        "partiallyReturned" -> Right PartiallyReturned
        "partiallyShipped" -> Right PartiallyShipped
        "pendingShipment" -> Right PendingShipment
        "returned" -> Right Returned
        "shipped" -> Right Shipped
        x -> Left ("Unable to parse OrdersListStatuses from: " <> x)

instance ToHttpApiData OrdersListStatuses where
    toQueryParam = \case
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

-- | Return the results in the specified order.
data OrderreturnsListOrderBy
    = ReturnCreationTimeAsc
      -- ^ @returnCreationTimeAsc@
    | ReturnCreationTimeDesc
      -- ^ @returnCreationTimeDesc@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OrderreturnsListOrderBy

instance FromHttpApiData OrderreturnsListOrderBy where
    parseQueryParam = \case
        "returnCreationTimeAsc" -> Right ReturnCreationTimeAsc
        "returnCreationTimeDesc" -> Right ReturnCreationTimeDesc
        x -> Left ("Unable to parse OrderreturnsListOrderBy from: " <> x)

instance ToHttpApiData OrderreturnsListOrderBy where
    toQueryParam = \case
        ReturnCreationTimeAsc -> "returnCreationTimeAsc"
        ReturnCreationTimeDesc -> "returnCreationTimeDesc"

instance FromJSON OrderreturnsListOrderBy where
    parseJSON = parseJSONText "OrderreturnsListOrderBy"

instance ToJSON OrderreturnsListOrderBy where
    toJSON = toJSONText
