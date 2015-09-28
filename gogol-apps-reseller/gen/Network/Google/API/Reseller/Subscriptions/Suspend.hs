{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Reseller.Subscriptions.Suspend
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Suspends an active subscription
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Enterprise Apps Reseller API Reference> for @reseller.subscriptions.suspend@.
module Network.Google.API.Reseller.Subscriptions.Suspend
    (
    -- * REST Resource
      SubscriptionsSuspendAPI

    -- * Creating a Request
    , subscriptionsSuspend'
    , SubscriptionsSuspend'

    -- * Request Lenses
    , sQuotaUser
    , sPrettyPrint
    , sUserIp
    , sCustomerId
    , sKey
    , sOauthToken
    , sSubscriptionId
    , sFields
    , sAlt
    ) where

import           Network.Google.Apps.Reseller.Types
import           Network.Google.Prelude

-- | A resource alias for reseller.subscriptions.suspend which the
-- 'SubscriptionsSuspend'' request conforms to.
type SubscriptionsSuspendAPI =
     "customers" :>
       Capture "customerId" Text :>
         "subscriptions" :>
           Capture "subscriptionId" Text :>
             "suspend" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Post '[JSON] Subscription

-- | Suspends an active subscription
--
-- /See:/ 'subscriptionsSuspend'' smart constructor.
data SubscriptionsSuspend' = SubscriptionsSuspend'
    { _sQuotaUser      :: !(Maybe Text)
    , _sPrettyPrint    :: !Bool
    , _sUserIp         :: !(Maybe Text)
    , _sCustomerId     :: !Text
    , _sKey            :: !(Maybe Text)
    , _sOauthToken     :: !(Maybe Text)
    , _sSubscriptionId :: !Text
    , _sFields         :: !(Maybe Text)
    , _sAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionsSuspend'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sQuotaUser'
--
-- * 'sPrettyPrint'
--
-- * 'sUserIp'
--
-- * 'sCustomerId'
--
-- * 'sKey'
--
-- * 'sOauthToken'
--
-- * 'sSubscriptionId'
--
-- * 'sFields'
--
-- * 'sAlt'
subscriptionsSuspend'
    :: Text -- ^ 'customerId'
    -> Text -- ^ 'subscriptionId'
    -> SubscriptionsSuspend'
subscriptionsSuspend' pSCustomerId_ pSSubscriptionId_ =
    SubscriptionsSuspend'
    { _sQuotaUser = Nothing
    , _sPrettyPrint = True
    , _sUserIp = Nothing
    , _sCustomerId = pSCustomerId_
    , _sKey = Nothing
    , _sOauthToken = Nothing
    , _sSubscriptionId = pSSubscriptionId_
    , _sFields = Nothing
    , _sAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sQuotaUser :: Lens' SubscriptionsSuspend' (Maybe Text)
sQuotaUser
  = lens _sQuotaUser (\ s a -> s{_sQuotaUser = a})

-- | Returns response with indentations and line breaks.
sPrettyPrint :: Lens' SubscriptionsSuspend' Bool
sPrettyPrint
  = lens _sPrettyPrint (\ s a -> s{_sPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sUserIp :: Lens' SubscriptionsSuspend' (Maybe Text)
sUserIp = lens _sUserIp (\ s a -> s{_sUserIp = a})

-- | Id of the Customer
sCustomerId :: Lens' SubscriptionsSuspend' Text
sCustomerId
  = lens _sCustomerId (\ s a -> s{_sCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sKey :: Lens' SubscriptionsSuspend' (Maybe Text)
sKey = lens _sKey (\ s a -> s{_sKey = a})

-- | OAuth 2.0 token for the current user.
sOauthToken :: Lens' SubscriptionsSuspend' (Maybe Text)
sOauthToken
  = lens _sOauthToken (\ s a -> s{_sOauthToken = a})

-- | Id of the subscription, which is unique for a customer
sSubscriptionId :: Lens' SubscriptionsSuspend' Text
sSubscriptionId
  = lens _sSubscriptionId
      (\ s a -> s{_sSubscriptionId = a})

-- | Selector specifying which fields to include in a partial response.
sFields :: Lens' SubscriptionsSuspend' (Maybe Text)
sFields = lens _sFields (\ s a -> s{_sFields = a})

-- | Data format for the response.
sAlt :: Lens' SubscriptionsSuspend' Alt
sAlt = lens _sAlt (\ s a -> s{_sAlt = a})

instance GoogleRequest SubscriptionsSuspend' where
        type Rs SubscriptionsSuspend' = Subscription
        request = requestWithRoute defReq appsResellerURL
        requestWithRoute r u SubscriptionsSuspend'{..}
          = go _sQuotaUser (Just _sPrettyPrint) _sUserIp
              _sCustomerId
              _sKey
              _sOauthToken
              _sSubscriptionId
              _sFields
              (Just _sAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SubscriptionsSuspendAPI)
                      r
                      u
