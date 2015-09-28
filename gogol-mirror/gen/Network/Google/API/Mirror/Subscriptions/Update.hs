{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Mirror.Subscriptions.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing subscription in place.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.subscriptions.update@.
module Network.Google.API.Mirror.Subscriptions.Update
    (
    -- * REST Resource
      SubscriptionsUpdateAPI

    -- * Creating a Request
    , subscriptionsUpdate'
    , SubscriptionsUpdate'

    -- * Request Lenses
    , suQuotaUser
    , suPrettyPrint
    , suUserIp
    , suKey
    , suId
    , suOauthToken
    , suFields
    , suAlt
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for mirror.subscriptions.update which the
-- 'SubscriptionsUpdate'' request conforms to.
type SubscriptionsUpdateAPI =
     "subscriptions" :>
       Capture "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Put '[JSON] Subscription

-- | Updates an existing subscription in place.
--
-- /See:/ 'subscriptionsUpdate'' smart constructor.
data SubscriptionsUpdate' = SubscriptionsUpdate'
    { _suQuotaUser   :: !(Maybe Text)
    , _suPrettyPrint :: !Bool
    , _suUserIp      :: !(Maybe Text)
    , _suKey         :: !(Maybe Text)
    , _suId          :: !Text
    , _suOauthToken  :: !(Maybe Text)
    , _suFields      :: !(Maybe Text)
    , _suAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suQuotaUser'
--
-- * 'suPrettyPrint'
--
-- * 'suUserIp'
--
-- * 'suKey'
--
-- * 'suId'
--
-- * 'suOauthToken'
--
-- * 'suFields'
--
-- * 'suAlt'
subscriptionsUpdate'
    :: Text -- ^ 'id'
    -> SubscriptionsUpdate'
subscriptionsUpdate' pSuId_ =
    SubscriptionsUpdate'
    { _suQuotaUser = Nothing
    , _suPrettyPrint = True
    , _suUserIp = Nothing
    , _suKey = Nothing
    , _suId = pSuId_
    , _suOauthToken = Nothing
    , _suFields = Nothing
    , _suAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
suQuotaUser :: Lens' SubscriptionsUpdate' (Maybe Text)
suQuotaUser
  = lens _suQuotaUser (\ s a -> s{_suQuotaUser = a})

-- | Returns response with indentations and line breaks.
suPrettyPrint :: Lens' SubscriptionsUpdate' Bool
suPrettyPrint
  = lens _suPrettyPrint
      (\ s a -> s{_suPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
suUserIp :: Lens' SubscriptionsUpdate' (Maybe Text)
suUserIp = lens _suUserIp (\ s a -> s{_suUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
suKey :: Lens' SubscriptionsUpdate' (Maybe Text)
suKey = lens _suKey (\ s a -> s{_suKey = a})

-- | The ID of the subscription.
suId :: Lens' SubscriptionsUpdate' Text
suId = lens _suId (\ s a -> s{_suId = a})

-- | OAuth 2.0 token for the current user.
suOauthToken :: Lens' SubscriptionsUpdate' (Maybe Text)
suOauthToken
  = lens _suOauthToken (\ s a -> s{_suOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
suFields :: Lens' SubscriptionsUpdate' (Maybe Text)
suFields = lens _suFields (\ s a -> s{_suFields = a})

-- | Data format for the response.
suAlt :: Lens' SubscriptionsUpdate' Alt
suAlt = lens _suAlt (\ s a -> s{_suAlt = a})

instance GoogleRequest SubscriptionsUpdate' where
        type Rs SubscriptionsUpdate' = Subscription
        request = requestWithRoute defReq mirrorURL
        requestWithRoute r u SubscriptionsUpdate'{..}
          = go _suQuotaUser (Just _suPrettyPrint) _suUserIp
              _suKey
              _suId
              _suOauthToken
              _suFields
              (Just _suAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SubscriptionsUpdateAPI)
                      r
                      u
