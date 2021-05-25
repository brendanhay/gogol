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

import Network.Google.Prelude hiding (Bytes)

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | The \`deletionType\` query string enables the cancellation, downgrade,
-- or suspension of a subscription.
data SubscriptionsDeleteDeletionType
    = DeletionTypeUndefined
      -- ^ @deletion_type_undefined@
    | Cancel
      -- ^ @cancel@
      -- Cancels the subscription immediately. This does not apply to a G Suite
      -- subscription.
    | TransferToDirect
      -- ^ @transfer_to_direct@
      -- Transfers a subscription directly to Google. The customer is immediately
      -- transferred to a direct billing relationship with Google and is given a
      -- short amount of time with no service interruption. The customer can then
      -- choose to set up billing directly with Google by using a credit card, or
      -- they can transfer to another reseller.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SubscriptionsDeleteDeletionType

instance FromHttpApiData SubscriptionsDeleteDeletionType where
    parseQueryParam = \case
        "deletion_type_undefined" -> Right DeletionTypeUndefined
        "cancel" -> Right Cancel
        "transfer_to_direct" -> Right TransferToDirect
        x -> Left ("Unable to parse SubscriptionsDeleteDeletionType from: " <> x)

instance ToHttpApiData SubscriptionsDeleteDeletionType where
    toQueryParam = \case
        DeletionTypeUndefined -> "deletion_type_undefined"
        Cancel -> "cancel"
        TransferToDirect -> "transfer_to_direct"

instance FromJSON SubscriptionsDeleteDeletionType where
    parseJSON = parseJSONText "SubscriptionsDeleteDeletionType"

instance ToJSON SubscriptionsDeleteDeletionType where
    toJSON = toJSONText

-- | Identifies the type of the customer. Acceptable values include: *
-- \`domain\`: Implies a domain-verified customer (default). * \`team\`:
-- Implies an email-verified customer. For more information, see [managed
-- teams](https:\/\/support.google.com\/a\/users\/answer\/9939479).
data CustomerCustomerType
    = CustomerTypeUnspecified
      -- ^ @CUSTOMER_TYPE_UNSPECIFIED@
      -- Customer type not known
    | Domain
      -- ^ @DOMAIN@
      -- Domained or domain-owning customers
    | Team
      -- ^ @TEAM@
      -- Domainless or email-verified customers
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CustomerCustomerType

instance FromHttpApiData CustomerCustomerType where
    parseQueryParam = \case
        "CUSTOMER_TYPE_UNSPECIFIED" -> Right CustomerTypeUnspecified
        "DOMAIN" -> Right Domain
        "TEAM" -> Right Team
        x -> Left ("Unable to parse CustomerCustomerType from: " <> x)

instance ToHttpApiData CustomerCustomerType where
    toQueryParam = \case
        CustomerTypeUnspecified -> "CUSTOMER_TYPE_UNSPECIFIED"
        Domain -> "DOMAIN"
        Team -> "TEAM"

instance FromJSON CustomerCustomerType where
    parseJSON = parseJSONText "CustomerCustomerType"

instance ToJSON CustomerCustomerType where
    toJSON = toJSONText
