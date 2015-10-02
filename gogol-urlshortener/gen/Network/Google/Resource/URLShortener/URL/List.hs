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
-- Module      : Network.Google.Resource.URLShortener.URL.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of URLs shortened by a user.
--
-- /See:/ <https://developers.google.com/url-shortener/v1/getting_started URL Shortener API Reference> for @URLshortenerURLList@.
module Network.Google.Resource.URLShortener.URL.List
    (
    -- * REST Resource
      UrlListResource

    -- * Creating a Request
    , uRLList'
    , URLList'

    -- * Request Lenses
    , ulQuotaUser
    , ulPrettyPrint
    , ulUserIP
    , ulStartToken
    , ulKey
    , ulProjection
    , ulOAuthToken
    , ulFields
    ) where

import           Network.Google.Prelude
import           Network.Google.URLShortener.Types

-- | A resource alias for @URLshortenerURLList@ which the
-- 'URLList'' request conforms to.
type UrlListResource =
     "url" :>
       "history" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "start-token" Text :>
                 QueryParam "key" Key :>
                   QueryParam "projection" URLshortenerURLListProjection
                     :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] URLHistory

-- | Retrieves a list of URLs shortened by a user.
--
-- /See:/ 'uRLList'' smart constructor.
data URLList' = URLList'
    { _ulQuotaUser   :: !(Maybe Text)
    , _ulPrettyPrint :: !Bool
    , _ulUserIP      :: !(Maybe Text)
    , _ulStartToken  :: !(Maybe Text)
    , _ulKey         :: !(Maybe Key)
    , _ulProjection  :: !(Maybe URLshortenerURLListProjection)
    , _ulOAuthToken  :: !(Maybe OAuthToken)
    , _ulFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulQuotaUser'
--
-- * 'ulPrettyPrint'
--
-- * 'ulUserIP'
--
-- * 'ulStartToken'
--
-- * 'ulKey'
--
-- * 'ulProjection'
--
-- * 'ulOAuthToken'
--
-- * 'ulFields'
uRLList'
    :: URLList'
uRLList' =
    URLList'
    { _ulQuotaUser = Nothing
    , _ulPrettyPrint = True
    , _ulUserIP = Nothing
    , _ulStartToken = Nothing
    , _ulKey = Nothing
    , _ulProjection = Nothing
    , _ulOAuthToken = Nothing
    , _ulFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ulQuotaUser :: Lens' URLList' (Maybe Text)
ulQuotaUser
  = lens _ulQuotaUser (\ s a -> s{_ulQuotaUser = a})

-- | Returns response with indentations and line breaks.
ulPrettyPrint :: Lens' URLList' Bool
ulPrettyPrint
  = lens _ulPrettyPrint
      (\ s a -> s{_ulPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ulUserIP :: Lens' URLList' (Maybe Text)
ulUserIP = lens _ulUserIP (\ s a -> s{_ulUserIP = a})

-- | Token for requesting successive pages of results.
ulStartToken :: Lens' URLList' (Maybe Text)
ulStartToken
  = lens _ulStartToken (\ s a -> s{_ulStartToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ulKey :: Lens' URLList' (Maybe Key)
ulKey = lens _ulKey (\ s a -> s{_ulKey = a})

-- | Additional information to return.
ulProjection :: Lens' URLList' (Maybe URLshortenerURLListProjection)
ulProjection
  = lens _ulProjection (\ s a -> s{_ulProjection = a})

-- | OAuth 2.0 token for the current user.
ulOAuthToken :: Lens' URLList' (Maybe OAuthToken)
ulOAuthToken
  = lens _ulOAuthToken (\ s a -> s{_ulOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ulFields :: Lens' URLList' (Maybe Text)
ulFields = lens _ulFields (\ s a -> s{_ulFields = a})

instance GoogleAuth URLList' where
        authKey = ulKey . _Just
        authToken = ulOAuthToken . _Just

instance GoogleRequest URLList' where
        type Rs URLList' = URLHistory
        request = requestWithRoute defReq uRLShortenerURL
        requestWithRoute r u URLList'{..}
          = go _ulQuotaUser (Just _ulPrettyPrint) _ulUserIP
              _ulStartToken
              _ulKey
              _ulProjection
              _ulOAuthToken
              _ulFields
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy UrlListResource) r
                      u
