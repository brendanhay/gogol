{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Reseller.Subscriptions.Suspend
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Suspends an active subscription
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Enterprise Apps Reseller API Reference> for @ResellerSubscriptionsSuspend@.
module Network.Google.Resource.Reseller.Subscriptions.Suspend
    (
    -- * REST Resource
      SubscriptionsSuspendResource

    -- * Creating a Request
    , subscriptionsSuspend'
    , SubscriptionsSuspend'

    -- * Request Lenses
    , ssQuotaUser
    , ssPrettyPrint
    , ssUserIp
    , ssCustomerId
    , ssKey
    , ssOauthToken
    , ssSubscriptionId
    , ssFields
    , ssAlt
    ) where

import           Network.Google.AppsReseller.Types
import           Network.Google.Prelude

-- | A resource alias for @ResellerSubscriptionsSuspend@ which the
-- 'SubscriptionsSuspend'' request conforms to.
type SubscriptionsSuspendResource =
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
    { _ssQuotaUser      :: !(Maybe Text)
    , _ssPrettyPrint    :: !Bool
    , _ssUserIp         :: !(Maybe Text)
    , _ssCustomerId     :: !Text
    , _ssKey            :: !(Maybe Text)
    , _ssOauthToken     :: !(Maybe Text)
    , _ssSubscriptionId :: !Text
    , _ssFields         :: !(Maybe Text)
    , _ssAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionsSuspend'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssQuotaUser'
--
-- * 'ssPrettyPrint'
--
-- * 'ssUserIp'
--
-- * 'ssCustomerId'
--
-- * 'ssKey'
--
-- * 'ssOauthToken'
--
-- * 'ssSubscriptionId'
--
-- * 'ssFields'
--
-- * 'ssAlt'
subscriptionsSuspend'
    :: Text -- ^ 'customerId'
    -> Text -- ^ 'subscriptionId'
    -> SubscriptionsSuspend'
subscriptionsSuspend' pSsCustomerId_ pSsSubscriptionId_ =
    SubscriptionsSuspend'
    { _ssQuotaUser = Nothing
    , _ssPrettyPrint = True
    , _ssUserIp = Nothing
    , _ssCustomerId = pSsCustomerId_
    , _ssKey = Nothing
    , _ssOauthToken = Nothing
    , _ssSubscriptionId = pSsSubscriptionId_
    , _ssFields = Nothing
    , _ssAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ssQuotaUser :: Lens' SubscriptionsSuspend' (Maybe Text)
ssQuotaUser
  = lens _ssQuotaUser (\ s a -> s{_ssQuotaUser = a})

-- | Returns response with indentations and line breaks.
ssPrettyPrint :: Lens' SubscriptionsSuspend' Bool
ssPrettyPrint
  = lens _ssPrettyPrint
      (\ s a -> s{_ssPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ssUserIp :: Lens' SubscriptionsSuspend' (Maybe Text)
ssUserIp = lens _ssUserIp (\ s a -> s{_ssUserIp = a})

-- | Id of the Customer
ssCustomerId :: Lens' SubscriptionsSuspend' Text
ssCustomerId
  = lens _ssCustomerId (\ s a -> s{_ssCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ssKey :: Lens' SubscriptionsSuspend' (Maybe Text)
ssKey = lens _ssKey (\ s a -> s{_ssKey = a})

-- | OAuth 2.0 token for the current user.
ssOauthToken :: Lens' SubscriptionsSuspend' (Maybe Text)
ssOauthToken
  = lens _ssOauthToken (\ s a -> s{_ssOauthToken = a})

-- | Id of the subscription, which is unique for a customer
ssSubscriptionId :: Lens' SubscriptionsSuspend' Text
ssSubscriptionId
  = lens _ssSubscriptionId
      (\ s a -> s{_ssSubscriptionId = a})

-- | Selector specifying which fields to include in a partial response.
ssFields :: Lens' SubscriptionsSuspend' (Maybe Text)
ssFields = lens _ssFields (\ s a -> s{_ssFields = a})

-- | Data format for the response.
ssAlt :: Lens' SubscriptionsSuspend' Alt
ssAlt = lens _ssAlt (\ s a -> s{_ssAlt = a})

instance GoogleRequest SubscriptionsSuspend' where
        type Rs SubscriptionsSuspend' = Subscription
        request = requestWithRoute defReq appsResellerURL
        requestWithRoute r u SubscriptionsSuspend'{..}
          = go _ssQuotaUser (Just _ssPrettyPrint) _ssUserIp
              _ssCustomerId
              _ssKey
              _ssOauthToken
              _ssSubscriptionId
              _ssFields
              (Just _ssAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SubscriptionsSuspendResource)
                      r
                      u
