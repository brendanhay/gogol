{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AppsReseller.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AppsReseller.Types.Sum where

import           Network.Google.Prelude

-- | Whether the subscription is to be fully cancelled or downgraded
data ResellerSubscriptionsDeleteDeletionType
    = Cancel
      -- ^ @cancel@
      -- Cancels the subscription immediately
    | Downgrade
      -- ^ @downgrade@
      -- Downgrades a Google Apps for Business subscription to Google Apps
    | Suspend
      -- ^ @suspend@
      -- Suspends the subscriptions for 4 days before cancelling it
    | TransferToDirect
      -- ^ @transfer_to_direct@
      -- Transfers a subscription directly to Google
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ResellerSubscriptionsDeleteDeletionType

instance FromText ResellerSubscriptionsDeleteDeletionType where
    fromText = \case
        "cancel" -> Just Cancel
        "downgrade" -> Just Downgrade
        "suspend" -> Just Suspend
        "transfer_to_direct" -> Just TransferToDirect
        _ -> Nothing

instance ToText ResellerSubscriptionsDeleteDeletionType where
    toText = \case
        Cancel -> "cancel"
        Downgrade -> "downgrade"
        Suspend -> "suspend"
        TransferToDirect -> "transfer_to_direct"

instance FromJSON ResellerSubscriptionsDeleteDeletionType where
    parseJSON = parseJSONText "ResellerSubscriptionsDeleteDeletionType"

instance ToJSON ResellerSubscriptionsDeleteDeletionType where
    toJSON = toJSONText

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
