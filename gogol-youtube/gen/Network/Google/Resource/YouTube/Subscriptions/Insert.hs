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
-- Module      : Network.Google.Resource.YouTube.Subscriptions.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds a subscription for the authenticated user\'s channel.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeSubscriptionsInsert@.
module Network.Google.Resource.YouTube.Subscriptions.Insert
    (
    -- * REST Resource
      SubscriptionsInsertResource

    -- * Creating a Request
    , subscriptionsInsert'
    , SubscriptionsInsert'

    -- * Request Lenses
    , siQuotaUser
    , siPart
    , siPrettyPrint
    , siUserIP
    , siPayload
    , siKey
    , siOAuthToken
    , siFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeSubscriptionsInsert@ which the
-- 'SubscriptionsInsert'' request conforms to.
type SubscriptionsInsertResource =
     "subscriptions" :>
       QueryParam "part" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[OctetStream] Subscription :>
                         Post '[JSON] Subscription

-- | Adds a subscription for the authenticated user\'s channel.
--
-- /See:/ 'subscriptionsInsert'' smart constructor.
data SubscriptionsInsert' = SubscriptionsInsert'
    { _siQuotaUser   :: !(Maybe Text)
    , _siPart        :: !Text
    , _siPrettyPrint :: !Bool
    , _siUserIP      :: !(Maybe Text)
    , _siPayload     :: !Subscription
    , _siKey         :: !(Maybe Key)
    , _siOAuthToken  :: !(Maybe OAuthToken)
    , _siFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siQuotaUser'
--
-- * 'siPart'
--
-- * 'siPrettyPrint'
--
-- * 'siUserIP'
--
-- * 'siPayload'
--
-- * 'siKey'
--
-- * 'siOAuthToken'
--
-- * 'siFields'
subscriptionsInsert'
    :: Text -- ^ 'part'
    -> Subscription -- ^ 'payload'
    -> SubscriptionsInsert'
subscriptionsInsert' pSiPart_ pSiPayload_ =
    SubscriptionsInsert'
    { _siQuotaUser = Nothing
    , _siPart = pSiPart_
    , _siPrettyPrint = True
    , _siUserIP = Nothing
    , _siPayload = pSiPayload_
    , _siKey = Nothing
    , _siOAuthToken = Nothing
    , _siFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
siQuotaUser :: Lens' SubscriptionsInsert' (Maybe Text)
siQuotaUser
  = lens _siQuotaUser (\ s a -> s{_siQuotaUser = a})

-- | The part parameter serves two purposes in this operation. It identifies
-- the properties that the write operation will set as well as the
-- properties that the API response will include.
siPart :: Lens' SubscriptionsInsert' Text
siPart = lens _siPart (\ s a -> s{_siPart = a})

-- | Returns response with indentations and line breaks.
siPrettyPrint :: Lens' SubscriptionsInsert' Bool
siPrettyPrint
  = lens _siPrettyPrint
      (\ s a -> s{_siPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
siUserIP :: Lens' SubscriptionsInsert' (Maybe Text)
siUserIP = lens _siUserIP (\ s a -> s{_siUserIP = a})

-- | Multipart request metadata.
siPayload :: Lens' SubscriptionsInsert' Subscription
siPayload
  = lens _siPayload (\ s a -> s{_siPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
siKey :: Lens' SubscriptionsInsert' (Maybe Key)
siKey = lens _siKey (\ s a -> s{_siKey = a})

-- | OAuth 2.0 token for the current user.
siOAuthToken :: Lens' SubscriptionsInsert' (Maybe OAuthToken)
siOAuthToken
  = lens _siOAuthToken (\ s a -> s{_siOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
siFields :: Lens' SubscriptionsInsert' (Maybe Text)
siFields = lens _siFields (\ s a -> s{_siFields = a})

instance GoogleAuth SubscriptionsInsert' where
        authKey = siKey . _Just
        authToken = siOAuthToken . _Just

instance GoogleRequest SubscriptionsInsert' where
        type Rs SubscriptionsInsert' = Subscription
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u SubscriptionsInsert'{..}
          = go (Just _siPart) _siQuotaUser
              (Just _siPrettyPrint)
              _siUserIP
              _siFields
              _siKey
              _siOAuthToken
              (Just AltJSON)
              _siPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SubscriptionsInsertResource)
                      r
                      u
