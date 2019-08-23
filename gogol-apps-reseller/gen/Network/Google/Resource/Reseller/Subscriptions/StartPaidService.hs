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
-- Module      : Network.Google.Resource.Reseller.Subscriptions.StartPaidService
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Immediately move a 30-day free trial subscription to a paid service
-- subscription.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Enterprise Apps Reseller API Reference> for @reseller.subscriptions.startPaidService@.
module Network.Google.Resource.Reseller.Subscriptions.StartPaidService
    (
    -- * REST Resource
      SubscriptionsStartPaidServiceResource

    -- * Creating a Request
    , subscriptionsStartPaidService
    , SubscriptionsStartPaidService

    -- * Request Lenses
    , sspsCustomerId
    , sspsSubscriptionId
    ) where

import           Network.Google.AppsReseller.Types
import           Network.Google.Prelude

-- | A resource alias for @reseller.subscriptions.startPaidService@ method which the
-- 'SubscriptionsStartPaidService' request conforms to.
type SubscriptionsStartPaidServiceResource =
     "apps" :>
       "reseller" :>
         "v1" :>
           "customers" :>
             Capture "customerId" Text :>
               "subscriptions" :>
                 Capture "subscriptionId" Text :>
                   "startPaidService" :>
                     QueryParam "alt" AltJSON :> Post '[JSON] Subscription

-- | Immediately move a 30-day free trial subscription to a paid service
-- subscription.
--
-- /See:/ 'subscriptionsStartPaidService' smart constructor.
data SubscriptionsStartPaidService =
  SubscriptionsStartPaidService'
    { _sspsCustomerId     :: !Text
    , _sspsSubscriptionId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubscriptionsStartPaidService' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sspsCustomerId'
--
-- * 'sspsSubscriptionId'
subscriptionsStartPaidService
    :: Text -- ^ 'sspsCustomerId'
    -> Text -- ^ 'sspsSubscriptionId'
    -> SubscriptionsStartPaidService
subscriptionsStartPaidService pSspsCustomerId_ pSspsSubscriptionId_ =
  SubscriptionsStartPaidService'
    { _sspsCustomerId = pSspsCustomerId_
    , _sspsSubscriptionId = pSspsSubscriptionId_
    }


-- | Either the customer\'s primary domain name or the customer\'s unique
-- identifier. If using the domain name, we do not recommend using a
-- customerId as a key for persistent data. If the domain name for a
-- customerId is changed, the Google system automatically updates.
sspsCustomerId :: Lens' SubscriptionsStartPaidService Text
sspsCustomerId
  = lens _sspsCustomerId
      (\ s a -> s{_sspsCustomerId = a})

-- | This is a required property. The subscriptionId is the subscription
-- identifier and is unique for each customer. Since a subscriptionId
-- changes when a subscription is updated, we recommend to not use this ID
-- as a key for persistent data. And the subscriptionId can be found using
-- the retrieve all reseller subscriptions method.
sspsSubscriptionId :: Lens' SubscriptionsStartPaidService Text
sspsSubscriptionId
  = lens _sspsSubscriptionId
      (\ s a -> s{_sspsSubscriptionId = a})

instance GoogleRequest SubscriptionsStartPaidService
         where
        type Rs SubscriptionsStartPaidService = Subscription
        type Scopes SubscriptionsStartPaidService =
             '["https://www.googleapis.com/auth/apps.order"]
        requestClient SubscriptionsStartPaidService'{..}
          = go _sspsCustomerId _sspsSubscriptionId
              (Just AltJSON)
              appsResellerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy SubscriptionsStartPaidServiceResource)
                      mempty
