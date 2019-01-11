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
-- Module      : Network.Google.Resource.Reseller.Subscriptions.ChangePlan
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update a subscription plan. Use this method to update a plan for a
-- 30-day trial or a flexible plan subscription to an annual commitment
-- plan with monthly or yearly payments.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Enterprise Apps Reseller API Reference> for @reseller.subscriptions.changePlan@.
module Network.Google.Resource.Reseller.Subscriptions.ChangePlan
    (
    -- * REST Resource
      SubscriptionsChangePlanResource

    -- * Creating a Request
    , subscriptionsChangePlan
    , SubscriptionsChangePlan

    -- * Request Lenses
    , scpPayload
    , scpCustomerId
    , scpSubscriptionId
    ) where

import           Network.Google.AppsReseller.Types
import           Network.Google.Prelude

-- | A resource alias for @reseller.subscriptions.changePlan@ method which the
-- 'SubscriptionsChangePlan' request conforms to.
type SubscriptionsChangePlanResource =
     "apps" :>
       "reseller" :>
         "v1" :>
           "customers" :>
             Capture "customerId" Text :>
               "subscriptions" :>
                 Capture "subscriptionId" Text :>
                   "changePlan" :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ChangePlanRequest :>
                         Post '[JSON] Subscription

-- | Update a subscription plan. Use this method to update a plan for a
-- 30-day trial or a flexible plan subscription to an annual commitment
-- plan with monthly or yearly payments.
--
-- /See:/ 'subscriptionsChangePlan' smart constructor.
data SubscriptionsChangePlan = SubscriptionsChangePlan'
    { _scpPayload        :: !ChangePlanRequest
    , _scpCustomerId     :: !Text
    , _scpSubscriptionId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionsChangePlan' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scpPayload'
--
-- * 'scpCustomerId'
--
-- * 'scpSubscriptionId'
subscriptionsChangePlan
    :: ChangePlanRequest -- ^ 'scpPayload'
    -> Text -- ^ 'scpCustomerId'
    -> Text -- ^ 'scpSubscriptionId'
    -> SubscriptionsChangePlan
subscriptionsChangePlan pScpPayload_ pScpCustomerId_ pScpSubscriptionId_ =
    SubscriptionsChangePlan'
    { _scpPayload = pScpPayload_
    , _scpCustomerId = pScpCustomerId_
    , _scpSubscriptionId = pScpSubscriptionId_
    }

-- | Multipart request metadata.
scpPayload :: Lens' SubscriptionsChangePlan ChangePlanRequest
scpPayload
  = lens _scpPayload (\ s a -> s{_scpPayload = a})

-- | Either the customer\'s primary domain name or the customer\'s unique
-- identifier. If using the domain name, we do not recommend using a
-- customerId as a key for persistent data. If the domain name for a
-- customerId is changed, the Google system automatically updates.
scpCustomerId :: Lens' SubscriptionsChangePlan Text
scpCustomerId
  = lens _scpCustomerId
      (\ s a -> s{_scpCustomerId = a})

-- | This is a required property. The subscriptionId is the subscription
-- identifier and is unique for each customer. Since a subscriptionId
-- changes when a subscription is updated, we recommend to not use this ID
-- as a key for persistent data. And the subscriptionId can be found using
-- the retrieve all reseller subscriptions method.
scpSubscriptionId :: Lens' SubscriptionsChangePlan Text
scpSubscriptionId
  = lens _scpSubscriptionId
      (\ s a -> s{_scpSubscriptionId = a})

instance GoogleRequest SubscriptionsChangePlan where
        type Rs SubscriptionsChangePlan = Subscription
        type Scopes SubscriptionsChangePlan =
             '["https://www.googleapis.com/auth/apps.order"]
        requestClient SubscriptionsChangePlan'{..}
          = go _scpCustomerId _scpSubscriptionId (Just AltJSON)
              _scpPayload
              appsResellerService
          where go
                  = buildClient
                      (Proxy :: Proxy SubscriptionsChangePlanResource)
                      mempty
