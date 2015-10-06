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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Changes the plan of a subscription
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Enterprise Apps Reseller API Reference> for @ResellerSubscriptionsChangePlan@.
module Network.Google.Resource.Reseller.Subscriptions.ChangePlan
    (
    -- * REST Resource
      SubscriptionsChangePlanResource

    -- * Creating a Request
    , subscriptionsChangePlan'
    , SubscriptionsChangePlan'

    -- * Request Lenses
    , scpQuotaUser
    , scpPrettyPrint
    , scpUserIP
    , scpPayload
    , scpCustomerId
    , scpKey
    , scpOAuthToken
    , scpSubscriptionId
    , scpFields
    ) where

import           Network.Google.AppsReseller.Types
import           Network.Google.Prelude

-- | A resource alias for @ResellerSubscriptionsChangePlan@ which the
-- 'SubscriptionsChangePlan'' request conforms to.
type SubscriptionsChangePlanResource =
     "customers" :>
       Capture "customerId" Text :>
         "subscriptions" :>
           Capture "subscriptionId" Text :>
             "changePlan" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] ChangePlanRequest :>
                               Post '[JSON] Subscription

-- | Changes the plan of a subscription
--
-- /See:/ 'subscriptionsChangePlan'' smart constructor.
data SubscriptionsChangePlan' = SubscriptionsChangePlan'
    { _scpQuotaUser      :: !(Maybe Text)
    , _scpPrettyPrint    :: !Bool
    , _scpUserIP         :: !(Maybe Text)
    , _scpPayload        :: !ChangePlanRequest
    , _scpCustomerId     :: !Text
    , _scpKey            :: !(Maybe AuthKey)
    , _scpOAuthToken     :: !(Maybe OAuthToken)
    , _scpSubscriptionId :: !Text
    , _scpFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionsChangePlan'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scpQuotaUser'
--
-- * 'scpPrettyPrint'
--
-- * 'scpUserIP'
--
-- * 'scpPayload'
--
-- * 'scpCustomerId'
--
-- * 'scpKey'
--
-- * 'scpOAuthToken'
--
-- * 'scpSubscriptionId'
--
-- * 'scpFields'
subscriptionsChangePlan'
    :: ChangePlanRequest -- ^ 'payload'
    -> Text -- ^ 'customerId'
    -> Text -- ^ 'subscriptionId'
    -> SubscriptionsChangePlan'
subscriptionsChangePlan' pScpPayload_ pScpCustomerId_ pScpSubscriptionId_ =
    SubscriptionsChangePlan'
    { _scpQuotaUser = Nothing
    , _scpPrettyPrint = True
    , _scpUserIP = Nothing
    , _scpPayload = pScpPayload_
    , _scpCustomerId = pScpCustomerId_
    , _scpKey = Nothing
    , _scpOAuthToken = Nothing
    , _scpSubscriptionId = pScpSubscriptionId_
    , _scpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
scpQuotaUser :: Lens' SubscriptionsChangePlan' (Maybe Text)
scpQuotaUser
  = lens _scpQuotaUser (\ s a -> s{_scpQuotaUser = a})

-- | Returns response with indentations and line breaks.
scpPrettyPrint :: Lens' SubscriptionsChangePlan' Bool
scpPrettyPrint
  = lens _scpPrettyPrint
      (\ s a -> s{_scpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
scpUserIP :: Lens' SubscriptionsChangePlan' (Maybe Text)
scpUserIP
  = lens _scpUserIP (\ s a -> s{_scpUserIP = a})

-- | Multipart request metadata.
scpPayload :: Lens' SubscriptionsChangePlan' ChangePlanRequest
scpPayload
  = lens _scpPayload (\ s a -> s{_scpPayload = a})

-- | Id of the Customer
scpCustomerId :: Lens' SubscriptionsChangePlan' Text
scpCustomerId
  = lens _scpCustomerId
      (\ s a -> s{_scpCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
scpKey :: Lens' SubscriptionsChangePlan' (Maybe AuthKey)
scpKey = lens _scpKey (\ s a -> s{_scpKey = a})

-- | OAuth 2.0 token for the current user.
scpOAuthToken :: Lens' SubscriptionsChangePlan' (Maybe OAuthToken)
scpOAuthToken
  = lens _scpOAuthToken
      (\ s a -> s{_scpOAuthToken = a})

-- | Id of the subscription, which is unique for a customer
scpSubscriptionId :: Lens' SubscriptionsChangePlan' Text
scpSubscriptionId
  = lens _scpSubscriptionId
      (\ s a -> s{_scpSubscriptionId = a})

-- | Selector specifying which fields to include in a partial response.
scpFields :: Lens' SubscriptionsChangePlan' (Maybe Text)
scpFields
  = lens _scpFields (\ s a -> s{_scpFields = a})

instance GoogleAuth SubscriptionsChangePlan' where
        authKey = scpKey . _Just
        authToken = scpOAuthToken . _Just

instance GoogleRequest SubscriptionsChangePlan' where
        type Rs SubscriptionsChangePlan' = Subscription
        request = requestWith appsResellerRequest
        requestWith rq SubscriptionsChangePlan'{..}
          = go _scpCustomerId _scpSubscriptionId _scpQuotaUser
              (Just _scpPrettyPrint)
              _scpUserIP
              _scpFields
              _scpKey
              _scpOAuthToken
              (Just AltJSON)
              _scpPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy SubscriptionsChangePlanResource)
                      rq
