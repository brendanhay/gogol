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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a subscription plan. Use this method to update a plan for a
-- 30-day trial or a flexible plan subscription to an annual commitment
-- plan with monthly or yearly payments. How a plan is updated differs
-- depending on the plan and the products. For more information, see the
-- description in [manage
-- subscriptions](\/admin-sdk\/reseller\/v1\/how-tos\/manage_subscriptions#update_subscription_plan).
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Google Workspace Reseller API Reference> for @reseller.subscriptions.changePlan@.
module Network.Google.Resource.Reseller.Subscriptions.ChangePlan
    (
    -- * REST Resource
      SubscriptionsChangePlanResource

    -- * Creating a Request
    , subscriptionsChangePlan
    , SubscriptionsChangePlan

    -- * Request Lenses
    , scpXgafv
    , scpUploadProtocol
    , scpAccessToken
    , scpUploadType
    , scpPayload
    , scpCustomerId
    , scpSubscriptionId
    , scpCallback
    ) where

import Network.Google.AppsReseller.Types
import Network.Google.Prelude

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
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] ChangePlanRequest :>
                                   Post '[JSON] Subscription

-- | Updates a subscription plan. Use this method to update a plan for a
-- 30-day trial or a flexible plan subscription to an annual commitment
-- plan with monthly or yearly payments. How a plan is updated differs
-- depending on the plan and the products. For more information, see the
-- description in [manage
-- subscriptions](\/admin-sdk\/reseller\/v1\/how-tos\/manage_subscriptions#update_subscription_plan).
--
-- /See:/ 'subscriptionsChangePlan' smart constructor.
data SubscriptionsChangePlan =
  SubscriptionsChangePlan'
    { _scpXgafv :: !(Maybe Xgafv)
    , _scpUploadProtocol :: !(Maybe Text)
    , _scpAccessToken :: !(Maybe Text)
    , _scpUploadType :: !(Maybe Text)
    , _scpPayload :: !ChangePlanRequest
    , _scpCustomerId :: !Text
    , _scpSubscriptionId :: !Text
    , _scpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubscriptionsChangePlan' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scpXgafv'
--
-- * 'scpUploadProtocol'
--
-- * 'scpAccessToken'
--
-- * 'scpUploadType'
--
-- * 'scpPayload'
--
-- * 'scpCustomerId'
--
-- * 'scpSubscriptionId'
--
-- * 'scpCallback'
subscriptionsChangePlan
    :: ChangePlanRequest -- ^ 'scpPayload'
    -> Text -- ^ 'scpCustomerId'
    -> Text -- ^ 'scpSubscriptionId'
    -> SubscriptionsChangePlan
subscriptionsChangePlan pScpPayload_ pScpCustomerId_ pScpSubscriptionId_ =
  SubscriptionsChangePlan'
    { _scpXgafv = Nothing
    , _scpUploadProtocol = Nothing
    , _scpAccessToken = Nothing
    , _scpUploadType = Nothing
    , _scpPayload = pScpPayload_
    , _scpCustomerId = pScpCustomerId_
    , _scpSubscriptionId = pScpSubscriptionId_
    , _scpCallback = Nothing
    }


-- | V1 error format.
scpXgafv :: Lens' SubscriptionsChangePlan (Maybe Xgafv)
scpXgafv = lens _scpXgafv (\ s a -> s{_scpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
scpUploadProtocol :: Lens' SubscriptionsChangePlan (Maybe Text)
scpUploadProtocol
  = lens _scpUploadProtocol
      (\ s a -> s{_scpUploadProtocol = a})

-- | OAuth access token.
scpAccessToken :: Lens' SubscriptionsChangePlan (Maybe Text)
scpAccessToken
  = lens _scpAccessToken
      (\ s a -> s{_scpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
scpUploadType :: Lens' SubscriptionsChangePlan (Maybe Text)
scpUploadType
  = lens _scpUploadType
      (\ s a -> s{_scpUploadType = a})

-- | Multipart request metadata.
scpPayload :: Lens' SubscriptionsChangePlan ChangePlanRequest
scpPayload
  = lens _scpPayload (\ s a -> s{_scpPayload = a})

-- | Either the customer\'s primary domain name or the customer\'s unique
-- identifier. If using the domain name, we do not recommend using a
-- \`customerId\` as a key for persistent data. If the domain name for a
-- \`customerId\` is changed, the Google system automatically updates.
scpCustomerId :: Lens' SubscriptionsChangePlan Text
scpCustomerId
  = lens _scpCustomerId
      (\ s a -> s{_scpCustomerId = a})

-- | This is a required property. The \`subscriptionId\` is the subscription
-- identifier and is unique for each customer. Since a \`subscriptionId\`
-- changes when a subscription is updated, we recommend to not use this ID
-- as a key for persistent data. And the \`subscriptionId\` can be found
-- using the retrieve all reseller subscriptions method.
scpSubscriptionId :: Lens' SubscriptionsChangePlan Text
scpSubscriptionId
  = lens _scpSubscriptionId
      (\ s a -> s{_scpSubscriptionId = a})

-- | JSONP
scpCallback :: Lens' SubscriptionsChangePlan (Maybe Text)
scpCallback
  = lens _scpCallback (\ s a -> s{_scpCallback = a})

instance GoogleRequest SubscriptionsChangePlan where
        type Rs SubscriptionsChangePlan = Subscription
        type Scopes SubscriptionsChangePlan =
             '["https://www.googleapis.com/auth/apps.order"]
        requestClient SubscriptionsChangePlan'{..}
          = go _scpCustomerId _scpSubscriptionId _scpXgafv
              _scpUploadProtocol
              _scpAccessToken
              _scpUploadType
              _scpCallback
              (Just AltJSON)
              _scpPayload
              appsResellerService
          where go
                  = buildClient
                      (Proxy :: Proxy SubscriptionsChangePlanResource)
                      mempty
