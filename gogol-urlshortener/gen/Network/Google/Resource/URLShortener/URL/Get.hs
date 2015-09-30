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
-- Module      : Network.Google.Resource.URLShortener.URL.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Expands a short URL or gets creation time and analytics.
--
-- /See:/ <https://developers.google.com/url-shortener/v1/getting_started URL Shortener API Reference> for @URLshortenerURLGet@.
module Network.Google.Resource.URLShortener.URL.Get
    (
    -- * REST Resource
      UrlGetResource

    -- * Creating a Request
    , uRLGet'
    , URLGet'

    -- * Request Lenses
    , ugQuotaUser
    , ugPrettyPrint
    , ugUserIp
    , ugKey
    , ugProjection
    , ugOauthToken
    , ugShortUrl
    , ugFields
    , ugAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.URLShortener.Types

-- | A resource alias for @URLshortenerURLGet@ which the
-- 'URLGet'' request conforms to.
type UrlGetResource =
     "url" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "projection" URLshortenerURLGetProjection
                 :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "shortUrl" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Get '[JSON] URL

-- | Expands a short URL or gets creation time and analytics.
--
-- /See:/ 'uRLGet'' smart constructor.
data URLGet' = URLGet'
    { _ugQuotaUser   :: !(Maybe Text)
    , _ugPrettyPrint :: !Bool
    , _ugUserIp      :: !(Maybe Text)
    , _ugKey         :: !(Maybe Text)
    , _ugProjection  :: !(Maybe URLshortenerURLGetProjection)
    , _ugOauthToken  :: !(Maybe Text)
    , _ugShortUrl    :: !Text
    , _ugFields      :: !(Maybe Text)
    , _ugAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugQuotaUser'
--
-- * 'ugPrettyPrint'
--
-- * 'ugUserIp'
--
-- * 'ugKey'
--
-- * 'ugProjection'
--
-- * 'ugOauthToken'
--
-- * 'ugShortUrl'
--
-- * 'ugFields'
--
-- * 'ugAlt'
uRLGet'
    :: Text -- ^ 'shortUrl'
    -> URLGet'
uRLGet' pUgShortUrl_ =
    URLGet'
    { _ugQuotaUser = Nothing
    , _ugPrettyPrint = True
    , _ugUserIp = Nothing
    , _ugKey = Nothing
    , _ugProjection = Nothing
    , _ugOauthToken = Nothing
    , _ugShortUrl = pUgShortUrl_
    , _ugFields = Nothing
    , _ugAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ugQuotaUser :: Lens' URLGet' (Maybe Text)
ugQuotaUser
  = lens _ugQuotaUser (\ s a -> s{_ugQuotaUser = a})

-- | Returns response with indentations and line breaks.
ugPrettyPrint :: Lens' URLGet' Bool
ugPrettyPrint
  = lens _ugPrettyPrint
      (\ s a -> s{_ugPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ugUserIp :: Lens' URLGet' (Maybe Text)
ugUserIp = lens _ugUserIp (\ s a -> s{_ugUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ugKey :: Lens' URLGet' (Maybe Text)
ugKey = lens _ugKey (\ s a -> s{_ugKey = a})

-- | Additional information to return.
ugProjection :: Lens' URLGet' (Maybe URLshortenerURLGetProjection)
ugProjection
  = lens _ugProjection (\ s a -> s{_ugProjection = a})

-- | OAuth 2.0 token for the current user.
ugOauthToken :: Lens' URLGet' (Maybe Text)
ugOauthToken
  = lens _ugOauthToken (\ s a -> s{_ugOauthToken = a})

-- | The short URL, including the protocol.
ugShortUrl :: Lens' URLGet' Text
ugShortUrl
  = lens _ugShortUrl (\ s a -> s{_ugShortUrl = a})

-- | Selector specifying which fields to include in a partial response.
ugFields :: Lens' URLGet' (Maybe Text)
ugFields = lens _ugFields (\ s a -> s{_ugFields = a})

-- | Data format for the response.
ugAlt :: Lens' URLGet' Alt
ugAlt = lens _ugAlt (\ s a -> s{_ugAlt = a})

instance GoogleRequest URLGet' where
        type Rs URLGet' = URL
        request = requestWithRoute defReq uRLShortenerURL
        requestWithRoute r u URLGet'{..}
          = go _ugQuotaUser (Just _ugPrettyPrint) _ugUserIp
              _ugKey
              _ugProjection
              _ugOauthToken
              (Just _ugShortUrl)
              _ugFields
              (Just _ugAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy UrlGetResource) r u
