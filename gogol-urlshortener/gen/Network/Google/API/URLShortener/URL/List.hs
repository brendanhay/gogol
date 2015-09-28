{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.URLShortener.URL.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of URLs shortened by a user.
--
-- /See:/ <https://developers.google.com/url-shortener/v1/getting_started URL Shortener API Reference> for @urlshortener.url.list@.
module Network.Google.API.URLShortener.URL.List
    (
    -- * REST Resource
      URLListAPI

    -- * Creating a Request
    , uRLList'
    , URLList'

    -- * Request Lenses
    , ulQuotaUser
    , ulPrettyPrint
    , ulUserIp
    , ulStartToken
    , ulKey
    , ulProjection
    , ulOauthToken
    , ulFields
    , ulAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.URLShortener.Types

-- | A resource alias for urlshortener.url.list which the
-- 'URLList'' request conforms to.
type URLListAPI =
     "url" :>
       "history" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "start-token" Text :>
                 QueryParam "key" Text :>
                   QueryParam "projection" URLList'Projection :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] UrlHistory

-- | Retrieves a list of URLs shortened by a user.
--
-- /See:/ 'uRLList'' smart constructor.
data URLList' = URLList'
    { _ulQuotaUser   :: !(Maybe Text)
    , _ulPrettyPrint :: !Bool
    , _ulUserIp      :: !(Maybe Text)
    , _ulStartToken  :: !(Maybe Text)
    , _ulKey         :: !(Maybe Text)
    , _ulProjection  :: !(Maybe URLList'Projection)
    , _ulOauthToken  :: !(Maybe Text)
    , _ulFields      :: !(Maybe Text)
    , _ulAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulQuotaUser'
--
-- * 'ulPrettyPrint'
--
-- * 'ulUserIp'
--
-- * 'ulStartToken'
--
-- * 'ulKey'
--
-- * 'ulProjection'
--
-- * 'ulOauthToken'
--
-- * 'ulFields'
--
-- * 'ulAlt'
uRLList'
    :: URLList'
uRLList' =
    URLList'
    { _ulQuotaUser = Nothing
    , _ulPrettyPrint = True
    , _ulUserIp = Nothing
    , _ulStartToken = Nothing
    , _ulKey = Nothing
    , _ulProjection = Nothing
    , _ulOauthToken = Nothing
    , _ulFields = Nothing
    , _ulAlt = JSON
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
ulUserIp :: Lens' URLList' (Maybe Text)
ulUserIp = lens _ulUserIp (\ s a -> s{_ulUserIp = a})

-- | Token for requesting successive pages of results.
ulStartToken :: Lens' URLList' (Maybe Text)
ulStartToken
  = lens _ulStartToken (\ s a -> s{_ulStartToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ulKey :: Lens' URLList' (Maybe Text)
ulKey = lens _ulKey (\ s a -> s{_ulKey = a})

-- | Additional information to return.
ulProjection :: Lens' URLList' (Maybe URLList'Projection)
ulProjection
  = lens _ulProjection (\ s a -> s{_ulProjection = a})

-- | OAuth 2.0 token for the current user.
ulOauthToken :: Lens' URLList' (Maybe Text)
ulOauthToken
  = lens _ulOauthToken (\ s a -> s{_ulOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ulFields :: Lens' URLList' (Maybe Text)
ulFields = lens _ulFields (\ s a -> s{_ulFields = a})

-- | Data format for the response.
ulAlt :: Lens' URLList' Alt
ulAlt = lens _ulAlt (\ s a -> s{_ulAlt = a})

instance GoogleRequest URLList' where
        type Rs URLList' = UrlHistory
        request = requestWithRoute defReq uRLShortenerURL
        requestWithRoute r u URLList'{..}
          = go _ulQuotaUser (Just _ulPrettyPrint) _ulUserIp
              _ulStartToken
              _ulKey
              _ulProjection
              _ulOauthToken
              _ulFields
              (Just _ulAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy URLListAPI) r u
