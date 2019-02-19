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
-- Module      : Network.Google.Resource.Reseller.Subscriptions.Suspend
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Suspends an active subscription.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Enterprise Apps Reseller API Reference> for @reseller.subscriptions.suspend@.
module Network.Google.Resource.Reseller.Subscriptions.Suspend
    (
    -- * REST Resource
      SubscriptionsSuspendResource

    -- * Creating a Request
    , subscriptionsSuspend
    , SubscriptionsSuspend

    -- * Request Lenses
    , ssCustomerId
    , ssSubscriptionId
    ) where

import           Network.Google.AppsReseller.Types
import           Network.Google.Prelude

-- | A resource alias for @reseller.subscriptions.suspend@ method which the
-- 'SubscriptionsSuspend' request conforms to.
type SubscriptionsSuspendResource =
     "apps" :>
       "reseller" :>
         "v1" :>
           "customers" :>
             Capture "customerId" Text :>
               "subscriptions" :>
                 Capture "subscriptionId" Text :>
                   "suspend" :>
                     QueryParam "alt" AltJSON :> Post '[JSON] Subscription

-- | Suspends an active subscription.
--
-- /See:/ 'subscriptionsSuspend' smart constructor.
data SubscriptionsSuspend =
  SubscriptionsSuspend'
    { _ssCustomerId     :: !Text
    , _ssSubscriptionId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SubscriptionsSuspend' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssCustomerId'
--
-- * 'ssSubscriptionId'
subscriptionsSuspend
    :: Text -- ^ 'ssCustomerId'
    -> Text -- ^ 'ssSubscriptionId'
    -> SubscriptionsSuspend
subscriptionsSuspend pSsCustomerId_ pSsSubscriptionId_ =
  SubscriptionsSuspend'
    {_ssCustomerId = pSsCustomerId_, _ssSubscriptionId = pSsSubscriptionId_}

-- | Either the customer\'s primary domain name or the customer\'s unique
-- identifier. If using the domain name, we do not recommend using a
-- customerId as a key for persistent data. If the domain name for a
-- customerId is changed, the Google system automatically updates.
ssCustomerId :: Lens' SubscriptionsSuspend Text
ssCustomerId
  = lens _ssCustomerId (\ s a -> s{_ssCustomerId = a})

-- | This is a required property. The subscriptionId is the subscription
-- identifier and is unique for each customer. Since a subscriptionId
-- changes when a subscription is updated, we recommend to not use this ID
-- as a key for persistent data. And the subscriptionId can be found using
-- the retrieve all reseller subscriptions method.
ssSubscriptionId :: Lens' SubscriptionsSuspend Text
ssSubscriptionId
  = lens _ssSubscriptionId
      (\ s a -> s{_ssSubscriptionId = a})

instance GoogleRequest SubscriptionsSuspend where
        type Rs SubscriptionsSuspend = Subscription
        type Scopes SubscriptionsSuspend =
             '["https://www.googleapis.com/auth/apps.order"]
        requestClient SubscriptionsSuspend'{..}
          = go _ssCustomerId _ssSubscriptionId (Just AltJSON)
              appsResellerService
          where go
                  = buildClient
                      (Proxy :: Proxy SubscriptionsSuspendResource)
                      mempty
