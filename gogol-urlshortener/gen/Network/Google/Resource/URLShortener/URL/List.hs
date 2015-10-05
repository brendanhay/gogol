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
      URLListResource

    -- * Creating a Request
    , urlList'
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
type URLListResource =
     "url" :>
       "history" :>
         QueryParam "start-token" Text :>
           QueryParam "projection" URLListProjection :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] URLHistory

-- | Retrieves a list of URLs shortened by a user.
--
-- /See:/ 'urlList'' smart constructor.
data URLList' = URLList'
    { _ulQuotaUser   :: !(Maybe Text)
    , _ulPrettyPrint :: !Bool
    , _ulUserIP      :: !(Maybe Text)
    , _ulStartToken  :: !(Maybe Text)
    , _ulKey         :: !(Maybe AuthKey)
    , _ulProjection  :: !(Maybe URLListProjection)
    , _ulOAuthToken  :: !(Maybe OAuthToken)
    , _ulFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
urlList'
    :: URLList'
urlList' =
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
ulKey :: Lens' URLList' (Maybe AuthKey)
ulKey = lens _ulKey (\ s a -> s{_ulKey = a})

-- | Additional information to return.
ulProjection :: Lens' URLList' (Maybe URLListProjection)
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
          = go _ulStartToken _ulProjection _ulQuotaUser
              (Just _ulPrettyPrint)
              _ulUserIP
              _ulFields
              _ulKey
              _ulOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy URLListResource) r
                      u
