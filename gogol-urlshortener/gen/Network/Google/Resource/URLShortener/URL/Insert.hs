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
-- Module      : Network.Google.Resource.URLShortener.URL.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new short URL.
--
-- /See:/ <https://developers.google.com/url-shortener/v1/getting_started URL Shortener API Reference> for @URLshortenerURLInsert@.
module Network.Google.Resource.URLShortener.URL.Insert
    (
    -- * REST Resource
      UrlInsertResource

    -- * Creating a Request
    , uRLInsert'
    , URLInsert'

    -- * Request Lenses
    , uiQuotaUser
    , uiPrettyPrint
    , uiUserIP
    , uiURL
    , uiKey
    , uiOAuthToken
    , uiFields
    ) where

import           Network.Google.Prelude
import           Network.Google.URLShortener.Types

-- | A resource alias for @URLshortenerURLInsert@ which the
-- 'URLInsert'' request conforms to.
type UrlInsertResource =
     "url" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Key :>
               QueryParam "oauth_token" OAuthToken :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] URL :> Post '[JSON] URL

-- | Creates a new short URL.
--
-- /See:/ 'uRLInsert'' smart constructor.
data URLInsert' = URLInsert'
    { _uiQuotaUser   :: !(Maybe Text)
    , _uiPrettyPrint :: !Bool
    , _uiUserIP      :: !(Maybe Text)
    , _uiURL         :: !URL
    , _uiKey         :: !(Maybe Key)
    , _uiOAuthToken  :: !(Maybe OAuthToken)
    , _uiFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uiQuotaUser'
--
-- * 'uiPrettyPrint'
--
-- * 'uiUserIP'
--
-- * 'uiURL'
--
-- * 'uiKey'
--
-- * 'uiOAuthToken'
--
-- * 'uiFields'
uRLInsert'
    :: URL -- ^ 'URL'
    -> URLInsert'
uRLInsert' pUiURL_ =
    URLInsert'
    { _uiQuotaUser = Nothing
    , _uiPrettyPrint = True
    , _uiUserIP = Nothing
    , _uiURL = pUiURL_
    , _uiKey = Nothing
    , _uiOAuthToken = Nothing
    , _uiFields = Nothing
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
uiUserIP :: Lens' URLInsert' (Maybe Text)
uiUserIP = lens _uiUserIP (\ s a -> s{_uiUserIP = a})

-- | Multipart request metadata.
uiURL :: Lens' URLInsert' URL
uiURL = lens _uiURL (\ s a -> s{_uiURL = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uiKey :: Lens' URLInsert' (Maybe Key)
uiKey = lens _uiKey (\ s a -> s{_uiKey = a})

-- | OAuth 2.0 token for the current user.
uiOAuthToken :: Lens' URLInsert' (Maybe OAuthToken)
uiOAuthToken
  = lens _uiOAuthToken (\ s a -> s{_uiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
uiFields :: Lens' URLInsert' (Maybe Text)
uiFields = lens _uiFields (\ s a -> s{_uiFields = a})

instance GoogleAuth URLInsert' where
        authKey = uiKey . _Just
        authToken = uiOAuthToken . _Just

instance GoogleRequest URLInsert' where
        type Rs URLInsert' = URL
        request = requestWithRoute defReq uRLShortenerURL
        requestWithRoute r u URLInsert'{..}
          = go _uiQuotaUser (Just _uiPrettyPrint) _uiUserIP
              _uiKey
              _uiOAuthToken
              _uiFields
              (Just AltJSON)
              _uiURL
          where go
                  = clientWithRoute (Proxy :: Proxy UrlInsertResource)
                      r
                      u
