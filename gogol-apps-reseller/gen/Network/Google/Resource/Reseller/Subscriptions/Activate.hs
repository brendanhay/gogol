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
-- Module      : Network.Google.Resource.Reseller.Subscriptions.Activate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Activates a subscription previously suspended by the reseller
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Enterprise Apps Reseller API Reference> for @ResellerSubscriptionsActivate@.
module Network.Google.Resource.Reseller.Subscriptions.Activate
    (
    -- * REST Resource
      SubscriptionsActivateResource

    -- * Creating a Request
    , subscriptionsActivate'
    , SubscriptionsActivate'

    -- * Request Lenses
    , saCustomerId
    , saSubscriptionId
    ) where

import           Network.Google.AppsReseller.Types
import           Network.Google.Prelude

-- | A resource alias for @ResellerSubscriptionsActivate@ method which the
-- 'SubscriptionsActivate'' request conforms to.
type SubscriptionsActivateResource =
     "customers" :>
       Capture "customerId" Text :>
         "subscriptions" :>
           Capture "subscriptionId" Text :>
             "activate" :>
               QueryParam "alt" AltJSON :> Post '[JSON] Subscription

-- | Activates a subscription previously suspended by the reseller
--
-- /See:/ 'subscriptionsActivate'' smart constructor.
data SubscriptionsActivate' = SubscriptionsActivate'
    { _saCustomerId     :: !Text
    , _saSubscriptionId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionsActivate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saCustomerId'
--
-- * 'saSubscriptionId'
subscriptionsActivate'
    :: Text -- ^ 'customerId'
    -> Text -- ^ 'subscriptionId'
    -> SubscriptionsActivate'
subscriptionsActivate' pSaCustomerId_ pSaSubscriptionId_ =
    SubscriptionsActivate'
    { _saCustomerId = pSaCustomerId_
    , _saSubscriptionId = pSaSubscriptionId_
    }

-- | Id of the Customer
saCustomerId :: Lens' SubscriptionsActivate' Text
saCustomerId
  = lens _saCustomerId (\ s a -> s{_saCustomerId = a})

-- | Id of the subscription, which is unique for a customer
saSubscriptionId :: Lens' SubscriptionsActivate' Text
saSubscriptionId
  = lens _saSubscriptionId
      (\ s a -> s{_saSubscriptionId = a})

instance GoogleRequest SubscriptionsActivate' where
        type Rs SubscriptionsActivate' = Subscription
        requestClient SubscriptionsActivate'{..}
          = go _saCustomerId _saSubscriptionId (Just AltJSON)
              appsResellerService
          where go
                  = buildClient
                      (Proxy :: Proxy SubscriptionsActivateResource)
                      mempty
