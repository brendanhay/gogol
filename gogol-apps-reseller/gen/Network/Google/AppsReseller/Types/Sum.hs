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
    | Downgrade
      -- ^ @downgrade@
      -- Downgrades a G Suite subscription to a Google Apps Free edition
      -- subscription only if the customer was initially subscribed to a Google
      -- Apps Free edition (also known as the Standard edition). Once downgraded,
      -- the customer no longer has access to the previous G Suite subscription
      -- and is no longer managed by the reseller. A G Suite subscription\'s
      -- downgrade cannot be invoked if an active or suspended Google Drive or
      -- Google Vault subscription is present. The Google Drive or Google Vault
      -- subscription must be cancelled before the G Suite subscription\'s
      -- downgrade is invoked. The downgrade deletionType does not apply to other
      -- products or G Suite SKUs.
    | Suspend
      -- ^ @suspend@
      -- (DEPRECATED) The G Suite account is suspended for four days and then
      -- cancelled. Once suspended, an administrator has access to the suspended
      -- account, but the account users can not access their services. A
      -- suspension can be lifted, using the reseller tools. A G Suite
      -- subscription\'s suspension can not be invoked if an active or suspended
      -- Google Drive or Google Vault subscription is present. The Google Drive
      -- or Google Vault subscription must be cancelled before the G Suite
      -- subscription\'s suspension is invoked.
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
