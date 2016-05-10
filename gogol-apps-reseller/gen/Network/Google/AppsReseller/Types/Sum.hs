{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AppsReseller.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AppsReseller.Types.Sum where

import           Network.Google.Prelude

-- | Whether the subscription is to be fully cancelled or downgraded
data SubscriptionsDeleteDeletionType
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

instance Hashable SubscriptionsDeleteDeletionType

instance FromHttpApiData SubscriptionsDeleteDeletionType where
    parseQueryParam = \case
        "cancel" -> Right Cancel
        "downgrade" -> Right Downgrade
        "suspend" -> Right Suspend
        "transfer_to_direct" -> Right TransferToDirect
        x -> Left ("Unable to parse SubscriptionsDeleteDeletionType from: " <> x)

instance ToHttpApiData SubscriptionsDeleteDeletionType where
    toQueryParam = \case
        Cancel -> "cancel"
        Downgrade -> "downgrade"
        Suspend -> "suspend"
        TransferToDirect -> "transfer_to_direct"

instance FromJSON SubscriptionsDeleteDeletionType where
    parseJSON = parseJSONText "SubscriptionsDeleteDeletionType"

instance ToJSON SubscriptionsDeleteDeletionType where
    toJSON = toJSONText
