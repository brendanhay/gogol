{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Reseller.Subscriptions.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create or transfer a subscription.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Enterprise Apps Reseller API Reference> for @reseller.subscriptions.insert@.
module Network.Google.Resource.Reseller.Subscriptions.Insert
    (
    -- * REST Resource
      SubscriptionsInsertResource

    -- * Creating a Request
    , subscriptionsInsert
    , SubscriptionsInsert

    -- * Request Lenses
    , siPayload
    , siCustomerId
    , siCustomerAuthToken
    ) where

import           Network.Google.AppsReseller.Types
import           Network.Google.Prelude

-- | A resource alias for @reseller.subscriptions.insert@ method which the
-- 'SubscriptionsInsert' request conforms to.
type SubscriptionsInsertResource =
     "apps" :>
       "reseller" :>
         "v1" :>
           "customers" :>
             Capture "customerId" Text :>
               "subscriptions" :>
                 QueryParam "customerAuthToken" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Subscription :>
                       Post '[JSON] Subscription

-- | Create or transfer a subscription.
--
-- /See:/ 'subscriptionsInsert' smart constructor.
data SubscriptionsInsert = SubscriptionsInsert'
    { _siPayload           :: !Subscription
    , _siCustomerId        :: !Text
    , _siCustomerAuthToken :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siPayload'
--
-- * 'siCustomerId'
--
-- * 'siCustomerAuthToken'
subscriptionsInsert
    :: Subscription -- ^ 'siPayload'
    -> Text -- ^ 'siCustomerId'
    -> SubscriptionsInsert
subscriptionsInsert pSiPayload_ pSiCustomerId_ =
    SubscriptionsInsert'
    { _siPayload = pSiPayload_
    , _siCustomerId = pSiCustomerId_
    , _siCustomerAuthToken = Nothing
    }

-- | Multipart request metadata.
siPayload :: Lens' SubscriptionsInsert Subscription
siPayload
  = lens _siPayload (\ s a -> s{_siPayload = a})

-- | Either the customer\'s primary domain name or the customer\'s unique
-- identifier. If using the domain name, we do not recommend using a
-- customerId as a key for persistent data. If the domain name for a
-- customerId is changed, the Google system automatically updates.
siCustomerId :: Lens' SubscriptionsInsert Text
siCustomerId
  = lens _siCustomerId (\ s a -> s{_siCustomerId = a})

-- | The customerAuthToken query string is required when creating a resold
-- account that transfers a direct customer\'s subscription or transfers
-- another reseller customer\'s subscription to your reseller management.
-- This is a hexadecimal authentication token needed to complete the
-- subscription transfer. For more information, see the administrator help
-- center.
siCustomerAuthToken :: Lens' SubscriptionsInsert (Maybe Text)
siCustomerAuthToken
  = lens _siCustomerAuthToken
      (\ s a -> s{_siCustomerAuthToken = a})

instance GoogleRequest SubscriptionsInsert where
        type Rs SubscriptionsInsert = Subscription
        type Scopes SubscriptionsInsert =
             '["https://www.googleapis.com/auth/apps.order"]
        requestClient SubscriptionsInsert'{..}
          = go _siCustomerId _siCustomerAuthToken
              (Just AltJSON)
              _siPayload
              appsResellerService
          where go
                  = buildClient
                      (Proxy :: Proxy SubscriptionsInsertResource)
                      mempty
