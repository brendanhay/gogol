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
-- Creates\/Transfers a subscription for the customer.
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

-- | Creates\/Transfers a subscription for the customer.
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

-- | Id of the Customer
siCustomerId :: Lens' SubscriptionsInsert Text
siCustomerId
  = lens _siCustomerId (\ s a -> s{_siCustomerId = a})

-- | An auth token needed for transferring a subscription. Can be generated
-- at https:\/\/www.google.com\/a\/cpanel\/customer-domain\/TransferToken.
-- Optional.
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
