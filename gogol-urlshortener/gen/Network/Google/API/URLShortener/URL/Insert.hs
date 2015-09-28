{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.URLShortener.URL.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new short URL.
--
-- /See:/ <https://developers.google.com/url-shortener/v1/getting_started URL Shortener API Reference> for @urlshortener.url.insert@.
module Network.Google.API.URLShortener.URL.Insert
    (
    -- * REST Resource
      URLInsertAPI

    -- * Creating a Request
    , uRLInsert'
    , URLInsert'

    -- * Request Lenses
    , uiQuotaUser
    , uiPrettyPrint
    , uiUserIp
    , uiKey
    , uiOauthToken
    , uiFields
    , uiAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.URLShortener.Types

-- | A resource alias for urlshortener.url.insert which the
-- 'URLInsert'' request conforms to.
type URLInsertAPI =
     "url" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "oauth_token" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" Alt :> Post '[JSON] Url

-- | Creates a new short URL.
--
-- /See:/ 'uRLInsert'' smart constructor.
data URLInsert' = URLInsert'
    { _uiQuotaUser   :: !(Maybe Text)
    , _uiPrettyPrint :: !Bool
    , _uiUserIp      :: !(Maybe Text)
    , _uiKey         :: !(Maybe Text)
    , _uiOauthToken  :: !(Maybe Text)
    , _uiFields      :: !(Maybe Text)
    , _uiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uiQuotaUser'
--
-- * 'uiPrettyPrint'
--
-- * 'uiUserIp'
--
-- * 'uiKey'
--
-- * 'uiOauthToken'
--
-- * 'uiFields'
--
-- * 'uiAlt'
uRLInsert'
    :: URLInsert'
uRLInsert' =
    URLInsert'
    { _uiQuotaUser = Nothing
    , _uiPrettyPrint = True
    , _uiUserIp = Nothing
    , _uiKey = Nothing
    , _uiOauthToken = Nothing
    , _uiFields = Nothing
    , _uiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uiQuotaUser :: Lens' URLInsert' (Maybe Text)
uiQuotaUser
  = lens _uiQuotaUser (\ s a -> s{_uiQuotaUser = a})

-- | Returns response with indentations and line breaks.
uiPrettyPrint :: Lens' URLInsert' Bool
uiPrettyPrint
  = lens _uiPrettyPrint
      (\ s a -> s{_uiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uiUserIp :: Lens' URLInsert' (Maybe Text)
uiUserIp = lens _uiUserIp (\ s a -> s{_uiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uiKey :: Lens' URLInsert' (Maybe Text)
uiKey = lens _uiKey (\ s a -> s{_uiKey = a})

-- | OAuth 2.0 token for the current user.
uiOauthToken :: Lens' URLInsert' (Maybe Text)
uiOauthToken
  = lens _uiOauthToken (\ s a -> s{_uiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
uiFields :: Lens' URLInsert' (Maybe Text)
uiFields = lens _uiFields (\ s a -> s{_uiFields = a})

-- | Data format for the response.
uiAlt :: Lens' URLInsert' Alt
uiAlt = lens _uiAlt (\ s a -> s{_uiAlt = a})

instance GoogleRequest URLInsert' where
        type Rs URLInsert' = Url
        request = requestWithRoute defReq uRLShortenerURL
        requestWithRoute r u URLInsert'{..}
          = go _uiQuotaUser (Just _uiPrettyPrint) _uiUserIp
              _uiKey
              _uiOauthToken
              _uiFields
              (Just _uiAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy URLInsertAPI) r u
