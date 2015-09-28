{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Apps.Reseller.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Apps.Reseller.Types.Sum where

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

-- | Whether the subscription is to be fully cancelled or downgraded
data SubscriptionsDelete'DeletionType
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

instance Hashable SubscriptionsDelete'DeletionType

instance FromText SubscriptionsDelete'DeletionType where
    fromText = \case
        "cancel" -> Just Cancel
        "downgrade" -> Just Downgrade
        "suspend" -> Just Suspend
        "transfer_to_direct" -> Just TransferToDirect
        _ -> Nothing

instance ToText SubscriptionsDelete'DeletionType where
    toText = \case
        Cancel -> "cancel"
        Downgrade -> "downgrade"
        Suspend -> "suspend"
        TransferToDirect -> "transfer_to_direct"

instance FromJSON SubscriptionsDelete'DeletionType where
    parseJSON = parseJSONText "SubscriptionsDelete'DeletionType"

instance ToJSON SubscriptionsDelete'DeletionType where
    toJSON = toJSONText
