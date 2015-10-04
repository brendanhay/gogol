{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
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
    , ssUserIP
    , ssCustomerId
    , ssKey
    , ssOAuthToken
    , ssSubscriptionId
    , ssFields
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
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Post '[JSON] Subscription

-- | Suspends an active subscription
--
-- /See:/ 'subscriptionsSuspend'' smart constructor.
data SubscriptionsSuspend' = SubscriptionsSuspend'
    { _ssQuotaUser      :: !(Maybe Text)
    , _ssPrettyPrint    :: !Bool
    , _ssUserIP         :: !(Maybe Text)
    , _ssCustomerId     :: !Text
    , _ssKey            :: !(Maybe Key)
    , _ssOAuthToken     :: !(Maybe OAuthToken)
    , _ssSubscriptionId :: !Text
    , _ssFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionsSuspend'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssQuotaUser'
--
-- * 'ssPrettyPrint'
--
-- * 'ssUserIP'
--
-- * 'ssCustomerId'
--
-- * 'ssKey'
--
-- * 'ssOAuthToken'
--
-- * 'ssSubscriptionId'
--
-- * 'ssFields'
subscriptionsSuspend'
    :: Text -- ^ 'customerId'
    -> Text -- ^ 'subscriptionId'
    -> SubscriptionsSuspend'
subscriptionsSuspend' pSsCustomerId_ pSsSubscriptionId_ =
    SubscriptionsSuspend'
    { _ssQuotaUser = Nothing
    , _ssPrettyPrint = True
    , _ssUserIP = Nothing
    , _ssCustomerId = pSsCustomerId_
    , _ssKey = Nothing
    , _ssOAuthToken = Nothing
    , _ssSubscriptionId = pSsSubscriptionId_
    , _ssFields = Nothing
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
ssUserIP :: Lens' SubscriptionsSuspend' (Maybe Text)
ssUserIP = lens _ssUserIP (\ s a -> s{_ssUserIP = a})

-- | Id of the Customer
ssCustomerId :: Lens' SubscriptionsSuspend' Text
ssCustomerId
  = lens _ssCustomerId (\ s a -> s{_ssCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ssKey :: Lens' SubscriptionsSuspend' (Maybe Key)
ssKey = lens _ssKey (\ s a -> s{_ssKey = a})

-- | OAuth 2.0 token for the current user.
ssOAuthToken :: Lens' SubscriptionsSuspend' (Maybe OAuthToken)
ssOAuthToken
  = lens _ssOAuthToken (\ s a -> s{_ssOAuthToken = a})

-- | Id of the subscription, which is unique for a customer
ssSubscriptionId :: Lens' SubscriptionsSuspend' Text
ssSubscriptionId
  = lens _ssSubscriptionId
      (\ s a -> s{_ssSubscriptionId = a})

-- | Selector specifying which fields to include in a partial response.
ssFields :: Lens' SubscriptionsSuspend' (Maybe Text)
ssFields = lens _ssFields (\ s a -> s{_ssFields = a})

instance GoogleAuth SubscriptionsSuspend' where
        authKey = ssKey . _Just
        authToken = ssOAuthToken . _Just

instance GoogleRequest SubscriptionsSuspend' where
        type Rs SubscriptionsSuspend' = Subscription
        request = requestWithRoute defReq appsResellerURL
        requestWithRoute r u SubscriptionsSuspend'{..}
          = go _ssCustomerId _ssSubscriptionId _ssQuotaUser
              (Just _ssPrettyPrint)
              _ssUserIP
              _ssFields
              _ssKey
              _ssOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SubscriptionsSuspendResource)
                      r
                      u
