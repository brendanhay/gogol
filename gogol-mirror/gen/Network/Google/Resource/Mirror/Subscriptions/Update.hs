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
-- Module      : Network.Google.Resource.Mirror.Subscriptions.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing subscription in place.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @MirrorSubscriptionsUpdate@.
module Network.Google.Resource.Mirror.Subscriptions.Update
    (
    -- * REST Resource
      SubscriptionsUpdateResource

    -- * Creating a Request
    , subscriptionsUpdate'
    , SubscriptionsUpdate'

    -- * Request Lenses
    , suQuotaUser
    , suPrettyPrint
    , suUserIP
    , suPayload
    , suKey
    , suId
    , suOAuthToken
    , suFields
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @MirrorSubscriptionsUpdate@ which the
-- 'SubscriptionsUpdate'' request conforms to.
type SubscriptionsUpdateResource =
     "subscriptions" :>
       Capture "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Subscription :>
                         Put '[JSON] Subscription

-- | Updates an existing subscription in place.
--
-- /See:/ 'subscriptionsUpdate'' smart constructor.
data SubscriptionsUpdate' = SubscriptionsUpdate'
    { _suQuotaUser   :: !(Maybe Text)
    , _suPrettyPrint :: !Bool
    , _suUserIP      :: !(Maybe Text)
    , _suPayload     :: !Subscription
    , _suKey         :: !(Maybe AuthKey)
    , _suId          :: !Text
    , _suOAuthToken  :: !(Maybe OAuthToken)
    , _suFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suQuotaUser'
--
-- * 'suPrettyPrint'
--
-- * 'suUserIP'
--
-- * 'suPayload'
--
-- * 'suKey'
--
-- * 'suId'
--
-- * 'suOAuthToken'
--
-- * 'suFields'
subscriptionsUpdate'
    :: Subscription -- ^ 'payload'
    -> Text -- ^ 'id'
    -> SubscriptionsUpdate'
subscriptionsUpdate' pSuPayload_ pSuId_ =
    SubscriptionsUpdate'
    { _suQuotaUser = Nothing
    , _suPrettyPrint = True
    , _suUserIP = Nothing
    , _suPayload = pSuPayload_
    , _suKey = Nothing
    , _suId = pSuId_
    , _suOAuthToken = Nothing
    , _suFields = Nothing
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
suUserIP :: Lens' SubscriptionsUpdate' (Maybe Text)
suUserIP = lens _suUserIP (\ s a -> s{_suUserIP = a})

-- | Multipart request metadata.
suPayload :: Lens' SubscriptionsUpdate' Subscription
suPayload
  = lens _suPayload (\ s a -> s{_suPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
suKey :: Lens' SubscriptionsUpdate' (Maybe AuthKey)
suKey = lens _suKey (\ s a -> s{_suKey = a})

-- | The ID of the subscription.
suId :: Lens' SubscriptionsUpdate' Text
suId = lens _suId (\ s a -> s{_suId = a})

-- | OAuth 2.0 token for the current user.
suOAuthToken :: Lens' SubscriptionsUpdate' (Maybe OAuthToken)
suOAuthToken
  = lens _suOAuthToken (\ s a -> s{_suOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
suFields :: Lens' SubscriptionsUpdate' (Maybe Text)
suFields = lens _suFields (\ s a -> s{_suFields = a})

instance GoogleAuth SubscriptionsUpdate' where
        authKey = suKey . _Just
        authToken = suOAuthToken . _Just

instance GoogleRequest SubscriptionsUpdate' where
        type Rs SubscriptionsUpdate' = Subscription
        request = requestWithRoute defReq mirrorURL
        requestWithRoute r u SubscriptionsUpdate'{..}
          = go _suId _suQuotaUser (Just _suPrettyPrint)
              _suUserIP
              _suFields
              _suKey
              _suOAuthToken
              (Just AltJSON)
              _suPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SubscriptionsUpdateResource)
                      r
                      u
