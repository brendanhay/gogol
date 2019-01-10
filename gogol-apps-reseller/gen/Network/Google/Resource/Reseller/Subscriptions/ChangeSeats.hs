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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update a subscription\'s user license settings.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Enterprise Apps Reseller API Reference> for @reseller.subscriptions.changeSeats@.
module Network.Google.Resource.Reseller.Subscriptions.ChangeSeats
    (
    -- * REST Resource
      SubscriptionsChangeSeatsResource

    -- * Creating a Request
    , subscriptionsChangeSeats
    , SubscriptionsChangeSeats

    -- * Request Lenses
    , scsPayload
    , scsCustomerId
    , scsSubscriptionId
    ) where

import           Network.Google.AppsReseller.Types
import           Network.Google.Prelude

-- | A resource alias for @reseller.subscriptions.changeSeats@ method which the
-- 'SubscriptionsChangeSeats' request conforms to.
type SubscriptionsChangeSeatsResource =
     "apps" :>
       "reseller" :>
         "v1" :>
           "customers" :>
             Capture "customerId" Text :>
               "subscriptions" :>
                 Capture "subscriptionId" Text :>
                   "changeSeats" :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Seats :> Post '[JSON] Subscription

-- | Update a subscription\'s user license settings.
--
-- /See:/ 'subscriptionsChangeSeats' smart constructor.
data SubscriptionsChangeSeats = SubscriptionsChangeSeats'
    { _scsPayload        :: !Seats
    , _scsCustomerId     :: !Text
    , _scsSubscriptionId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionsChangeSeats' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scsPayload'
--
-- * 'scsCustomerId'
--
-- * 'scsSubscriptionId'
subscriptionsChangeSeats
    :: Seats -- ^ 'scsPayload'
    -> Text -- ^ 'scsCustomerId'
    -> Text -- ^ 'scsSubscriptionId'
    -> SubscriptionsChangeSeats
subscriptionsChangeSeats pScsPayload_ pScsCustomerId_ pScsSubscriptionId_ =
    SubscriptionsChangeSeats'
    { _scsPayload = pScsPayload_
    , _scsCustomerId = pScsCustomerId_
    , _scsSubscriptionId = pScsSubscriptionId_
    }

-- | Multipart request metadata.
scsPayload :: Lens' SubscriptionsChangeSeats Seats
scsPayload
  = lens _scsPayload (\ s a -> s{_scsPayload = a})

-- | Either the customer\'s primary domain name or the customer\'s unique
-- identifier. If using the domain name, we do not recommend using a
-- customerId as a key for persistent data. If the domain name for a
-- customerId is changed, the Google system automatically updates.
scsCustomerId :: Lens' SubscriptionsChangeSeats Text
scsCustomerId
  = lens _scsCustomerId
      (\ s a -> s{_scsCustomerId = a})

-- | This is a required property. The subscriptionId is the subscription
-- identifier and is unique for each customer. Since a subscriptionId
-- changes when a subscription is updated, we recommend to not use this ID
-- as a key for persistent data. And the subscriptionId can be found using
-- the retrieve all reseller subscriptions method.
scsSubscriptionId :: Lens' SubscriptionsChangeSeats Text
scsSubscriptionId
  = lens _scsSubscriptionId
      (\ s a -> s{_scsSubscriptionId = a})

instance GoogleRequest SubscriptionsChangeSeats where
        type Rs SubscriptionsChangeSeats = Subscription
        type Scopes SubscriptionsChangeSeats =
             '["https://www.googleapis.com/auth/apps.order"]
        requestClient SubscriptionsChangeSeats'{..}
          = go _scsCustomerId _scsSubscriptionId (Just AltJSON)
              _scsPayload
              appsResellerService
          where go
                  = buildClient
                      (Proxy :: Proxy SubscriptionsChangeSeatsResource)
                      mempty
