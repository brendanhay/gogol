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
-- Module      : Network.Google.Resource.Reseller.Subscriptions.ChangeSeats
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes the seats configuration of a subscription
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Enterprise Apps Reseller API Reference> for @ResellerSubscriptionsChangeSeats@.
module Network.Google.Resource.Reseller.Subscriptions.ChangeSeats
    (
    -- * REST Resource
      SubscriptionsChangeSeatsResource

    -- * Creating a Request
    , subscriptionsChangeSeats'
    , SubscriptionsChangeSeats'

    -- * Request Lenses
    , scsPayload
    , scsCustomerId
    , scsSubscriptionId
    ) where

import           Network.Google.AppsReseller.Types
import           Network.Google.Prelude

-- | A resource alias for @ResellerSubscriptionsChangeSeats@ method which the
-- 'SubscriptionsChangeSeats'' request conforms to.
type SubscriptionsChangeSeatsResource =
     "customers" :>
       Capture "customerId" Text :>
         "subscriptions" :>
           Capture "subscriptionId" Text :>
             "changeSeats" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Seats :> Post '[JSON] Subscription

-- | Changes the seats configuration of a subscription
--
-- /See:/ 'subscriptionsChangeSeats'' smart constructor.
data SubscriptionsChangeSeats' = SubscriptionsChangeSeats'
    { _scsPayload        :: !Seats
    , _scsCustomerId     :: !Text
    , _scsSubscriptionId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionsChangeSeats'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scsPayload'
--
-- * 'scsCustomerId'
--
-- * 'scsSubscriptionId'
subscriptionsChangeSeats'
    :: Seats -- ^ 'payload'
    -> Text -- ^ 'customerId'
    -> Text -- ^ 'subscriptionId'
    -> SubscriptionsChangeSeats'
subscriptionsChangeSeats' pScsPayload_ pScsCustomerId_ pScsSubscriptionId_ =
    SubscriptionsChangeSeats'
    { _scsPayload = pScsPayload_
    , _scsCustomerId = pScsCustomerId_
    , _scsSubscriptionId = pScsSubscriptionId_
    }

-- | Multipart request metadata.
scsPayload :: Lens' SubscriptionsChangeSeats' Seats
scsPayload
  = lens _scsPayload (\ s a -> s{_scsPayload = a})

-- | Id of the Customer
scsCustomerId :: Lens' SubscriptionsChangeSeats' Text
scsCustomerId
  = lens _scsCustomerId
      (\ s a -> s{_scsCustomerId = a})

-- | Id of the subscription, which is unique for a customer
scsSubscriptionId :: Lens' SubscriptionsChangeSeats' Text
scsSubscriptionId
  = lens _scsSubscriptionId
      (\ s a -> s{_scsSubscriptionId = a})

instance GoogleRequest SubscriptionsChangeSeats'
         where
        type Rs SubscriptionsChangeSeats' = Subscription
        requestClient SubscriptionsChangeSeats'{..}
          = go _scsCustomerId _scsSubscriptionId (Just AltJSON)
              _scsPayload
              appsResellerService
          where go
                  = buildClient
                      (Proxy :: Proxy SubscriptionsChangeSeatsResource)
                      mempty
