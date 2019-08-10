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

import           Network.Google.Prelude hiding (Bytes)

-- | The deletionType query string enables the cancellation, downgrade, or
-- suspension of a subscription.
data SubscriptionsDeleteDeletionType
    = Cancel
      -- ^ @cancel@
      -- Cancels the subscription immediately. This does not apply to a G Suite
      -- subscription.
    | TransferToDirect
      -- ^ @transfer_to_direct@
      -- Transfers a subscription directly to Google.  The customer is
      -- immediately transferred to a direct billing relationship with Google and
      -- is given a short amount of time with no service interruption. The
      -- customer can then choose to set up billing directly with Google by using
      -- a credit card, or they can transfer to another reseller.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SubscriptionsDeleteDeletionType

instance FromHttpApiData SubscriptionsDeleteDeletionType where
    parseQueryParam = \case
        "cancel" -> Right Cancel
        "transfer_to_direct" -> Right TransferToDirect
        x -> Left ("Unable to parse SubscriptionsDeleteDeletionType from: " <> x)

instance ToHttpApiData SubscriptionsDeleteDeletionType where
    toQueryParam = \case
        Cancel -> "cancel"
        TransferToDirect -> "transfer_to_direct"

instance FromJSON SubscriptionsDeleteDeletionType where
    parseJSON = parseJSONText "SubscriptionsDeleteDeletionType"

instance ToJSON SubscriptionsDeleteDeletionType where
    toJSON = toJSONText
