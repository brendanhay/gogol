{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Reseller.Subscriptions.ChangePlan
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Changes the plan of a subscription
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Enterprise Apps Reseller API Reference> for @reseller.subscriptions.changePlan@.
module Network.Google.API.Reseller.Subscriptions.ChangePlan
    (
    -- * REST Resource
      SubscriptionsChangePlanAPI

    -- * Creating a Request
    , subscriptionsChangePlan'
    , SubscriptionsChangePlan'

    -- * Request Lenses
    , scpQuotaUser
    , scpPrettyPrint
    , scpUserIp
    , scpCustomerId
    , scpKey
    , scpOauthToken
    , scpSubscriptionId
    , scpFields
    , scpAlt
    ) where

import           Network.Google.Apps.Reseller.Types
import           Network.Google.Prelude

-- | A resource alias for reseller.subscriptions.changePlan which the
-- 'SubscriptionsChangePlan'' request conforms to.
type SubscriptionsChangePlanAPI =
     "customers" :>
       Capture "customerId" Text :>
         "subscriptions" :>
           Capture "subscriptionId" Text :>
             "changePlan" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Post '[JSON] Subscription

-- | Changes the plan of a subscription
--
-- /See:/ 'subscriptionsChangePlan'' smart constructor.
data SubscriptionsChangePlan' = SubscriptionsChangePlan'
    { _scpQuotaUser      :: !(Maybe Text)
    , _scpPrettyPrint    :: !Bool
    , _scpUserIp         :: !(Maybe Text)
    , _scpCustomerId     :: !Text
    , _scpKey            :: !(Maybe Text)
    , _scpOauthToken     :: !(Maybe Text)
    , _scpSubscriptionId :: !Text
    , _scpFields         :: !(Maybe Text)
    , _scpAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionsChangePlan'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scpQuotaUser'
--
-- * 'scpPrettyPrint'
--
-- * 'scpUserIp'
--
-- * 'scpCustomerId'
--
-- * 'scpKey'
--
-- * 'scpOauthToken'
--
-- * 'scpSubscriptionId'
--
-- * 'scpFields'
--
-- * 'scpAlt'
subscriptionsChangePlan'
    :: Text -- ^ 'customerId'
    -> Text -- ^ 'subscriptionId'
    -> SubscriptionsChangePlan'
subscriptionsChangePlan' pScpCustomerId_ pScpSubscriptionId_ =
    SubscriptionsChangePlan'
    { _scpQuotaUser = Nothing
    , _scpPrettyPrint = True
    , _scpUserIp = Nothing
    , _scpCustomerId = pScpCustomerId_
    , _scpKey = Nothing
    , _scpOauthToken = Nothing
    , _scpSubscriptionId = pScpSubscriptionId_
    , _scpFields = Nothing
    , _scpAlt = JSON
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
scpUserIp :: Lens' SubscriptionsChangePlan' (Maybe Text)
scpUserIp
  = lens _scpUserIp (\ s a -> s{_scpUserIp = a})

-- | Id of the Customer
scpCustomerId :: Lens' SubscriptionsChangePlan' Text
scpCustomerId
  = lens _scpCustomerId
      (\ s a -> s{_scpCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
scpKey :: Lens' SubscriptionsChangePlan' (Maybe Text)
scpKey = lens _scpKey (\ s a -> s{_scpKey = a})

-- | OAuth 2.0 token for the current user.
scpOauthToken :: Lens' SubscriptionsChangePlan' (Maybe Text)
scpOauthToken
  = lens _scpOauthToken
      (\ s a -> s{_scpOauthToken = a})

-- | Id of the subscription, which is unique for a customer
scpSubscriptionId :: Lens' SubscriptionsChangePlan' Text
scpSubscriptionId
  = lens _scpSubscriptionId
      (\ s a -> s{_scpSubscriptionId = a})

-- | Selector specifying which fields to include in a partial response.
scpFields :: Lens' SubscriptionsChangePlan' (Maybe Text)
scpFields
  = lens _scpFields (\ s a -> s{_scpFields = a})

-- | Data format for the response.
scpAlt :: Lens' SubscriptionsChangePlan' Alt
scpAlt = lens _scpAlt (\ s a -> s{_scpAlt = a})

instance GoogleRequest SubscriptionsChangePlan' where
        type Rs SubscriptionsChangePlan' = Subscription
        request = requestWithRoute defReq appsResellerURL
        requestWithRoute r u SubscriptionsChangePlan'{..}
          = go _scpQuotaUser (Just _scpPrettyPrint) _scpUserIp
              _scpCustomerId
              _scpKey
              _scpOauthToken
              _scpSubscriptionId
              _scpFields
              (Just _scpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SubscriptionsChangePlanAPI)
                      r
                      u
