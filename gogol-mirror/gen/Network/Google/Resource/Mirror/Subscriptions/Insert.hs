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
-- Module      : Network.Google.Resource.Mirror.Subscriptions.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new subscription.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @MirrorSubscriptionsInsert@.
module Network.Google.Resource.Mirror.Subscriptions.Insert
    (
    -- * REST Resource
      SubscriptionsInsertResource

    -- * Creating a Request
    , subscriptionsInsert'
    , SubscriptionsInsert'

    -- * Request Lenses
    , siQuotaUser
    , siPrettyPrint
    , siUserIP
    , siKey
    , siOAuthToken
    , siSubscription
    , siFields
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @MirrorSubscriptionsInsert@ which the
-- 'SubscriptionsInsert'' request conforms to.
type SubscriptionsInsertResource =
     "subscriptions" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Subscription :>
                       Post '[JSON] Subscription

-- | Creates a new subscription.
--
-- /See:/ 'subscriptionsInsert'' smart constructor.
data SubscriptionsInsert' = SubscriptionsInsert'
    { _siQuotaUser    :: !(Maybe Text)
    , _siPrettyPrint  :: !Bool
    , _siUserIP       :: !(Maybe Text)
    , _siKey          :: !(Maybe Key)
    , _siOAuthToken   :: !(Maybe OAuthToken)
    , _siSubscription :: !Subscription
    , _siFields       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siQuotaUser'
--
-- * 'siPrettyPrint'
--
-- * 'siUserIP'
--
-- * 'siKey'
--
-- * 'siOAuthToken'
--
-- * 'siSubscription'
--
-- * 'siFields'
subscriptionsInsert'
    :: Subscription -- ^ 'Subscription'
    -> SubscriptionsInsert'
subscriptionsInsert' pSiSubscription_ =
    SubscriptionsInsert'
    { _siQuotaUser = Nothing
    , _siPrettyPrint = True
    , _siUserIP = Nothing
    , _siKey = Nothing
    , _siOAuthToken = Nothing
    , _siSubscription = pSiSubscription_
    , _siFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
siQuotaUser :: Lens' SubscriptionsInsert' (Maybe Text)
siQuotaUser
  = lens _siQuotaUser (\ s a -> s{_siQuotaUser = a})

-- | Returns response with indentations and line breaks.
siPrettyPrint :: Lens' SubscriptionsInsert' Bool
siPrettyPrint
  = lens _siPrettyPrint
      (\ s a -> s{_siPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
siUserIP :: Lens' SubscriptionsInsert' (Maybe Text)
siUserIP = lens _siUserIP (\ s a -> s{_siUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
siKey :: Lens' SubscriptionsInsert' (Maybe Key)
siKey = lens _siKey (\ s a -> s{_siKey = a})

-- | OAuth 2.0 token for the current user.
siOAuthToken :: Lens' SubscriptionsInsert' (Maybe OAuthToken)
siOAuthToken
  = lens _siOAuthToken (\ s a -> s{_siOAuthToken = a})

-- | Multipart request metadata.
siSubscription :: Lens' SubscriptionsInsert' Subscription
siSubscription
  = lens _siSubscription
      (\ s a -> s{_siSubscription = a})

-- | Selector specifying which fields to include in a partial response.
siFields :: Lens' SubscriptionsInsert' (Maybe Text)
siFields = lens _siFields (\ s a -> s{_siFields = a})

instance GoogleAuth SubscriptionsInsert' where
        authKey = siKey . _Just
        authToken = siOAuthToken . _Just

instance GoogleRequest SubscriptionsInsert' where
        type Rs SubscriptionsInsert' = Subscription
        request = requestWithRoute defReq mirrorURL
        requestWithRoute r u SubscriptionsInsert'{..}
          = go _siQuotaUser (Just _siPrettyPrint) _siUserIP
              _siFields
              _siKey
              _siOAuthToken
              (Just AltJSON)
              _siSubscription
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SubscriptionsInsertResource)
                      r
                      u
