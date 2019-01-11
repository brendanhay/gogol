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
-- Module      : Network.Google.Resource.Reseller.Subscriptions.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a specific subscription.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Enterprise Apps Reseller API Reference> for @reseller.subscriptions.get@.
module Network.Google.Resource.Reseller.Subscriptions.Get
    (
    -- * REST Resource
      SubscriptionsGetResource

    -- * Creating a Request
    , subscriptionsGet
    , SubscriptionsGet

    -- * Request Lenses
    , sgCustomerId
    , sgSubscriptionId
    ) where

import           Network.Google.AppsReseller.Types
import           Network.Google.Prelude

-- | A resource alias for @reseller.subscriptions.get@ method which the
-- 'SubscriptionsGet' request conforms to.
type SubscriptionsGetResource =
     "apps" :>
       "reseller" :>
         "v1" :>
           "customers" :>
             Capture "customerId" Text :>
               "subscriptions" :>
                 Capture "subscriptionId" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Subscription

-- | Get a specific subscription.
--
-- /See:/ 'subscriptionsGet' smart constructor.
data SubscriptionsGet = SubscriptionsGet'
    { _sgCustomerId     :: !Text
    , _sgSubscriptionId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgCustomerId'
--
-- * 'sgSubscriptionId'
subscriptionsGet
    :: Text -- ^ 'sgCustomerId'
    -> Text -- ^ 'sgSubscriptionId'
    -> SubscriptionsGet
subscriptionsGet pSgCustomerId_ pSgSubscriptionId_ =
    SubscriptionsGet'
    { _sgCustomerId = pSgCustomerId_
    , _sgSubscriptionId = pSgSubscriptionId_
    }

-- | Either the customer\'s primary domain name or the customer\'s unique
-- identifier. If using the domain name, we do not recommend using a
-- customerId as a key for persistent data. If the domain name for a
-- customerId is changed, the Google system automatically updates.
sgCustomerId :: Lens' SubscriptionsGet Text
sgCustomerId
  = lens _sgCustomerId (\ s a -> s{_sgCustomerId = a})

-- | This is a required property. The subscriptionId is the subscription
-- identifier and is unique for each customer. Since a subscriptionId
-- changes when a subscription is updated, we recommend to not use this ID
-- as a key for persistent data. And the subscriptionId can be found using
-- the retrieve all reseller subscriptions method.
sgSubscriptionId :: Lens' SubscriptionsGet Text
sgSubscriptionId
  = lens _sgSubscriptionId
      (\ s a -> s{_sgSubscriptionId = a})

instance GoogleRequest SubscriptionsGet where
        type Rs SubscriptionsGet = Subscription
        type Scopes SubscriptionsGet =
             '["https://www.googleapis.com/auth/apps.order",
               "https://www.googleapis.com/auth/apps.order.readonly"]
        requestClient SubscriptionsGet'{..}
          = go _sgCustomerId _sgSubscriptionId (Just AltJSON)
              appsResellerService
          where go
                  = buildClient
                      (Proxy :: Proxy SubscriptionsGetResource)
                      mempty
