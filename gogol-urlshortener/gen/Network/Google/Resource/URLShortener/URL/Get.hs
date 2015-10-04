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
      URLGetResource

    -- * Creating a Request
    , urlGet'
    , URLGet'

    -- * Request Lenses
    , ugQuotaUser
    , ugPrettyPrint
    , ugUserIP
    , ugKey
    , ugProjection
    , ugOAuthToken
    , ugShortURL
    , ugFields
    ) where

import           Network.Google.Prelude
import           Network.Google.URLShortener.Types

-- | A resource alias for @URLshortenerURLGet@ which the
-- 'URLGet'' request conforms to.
type URLGetResource =
     "url" :>
       QueryParam "shortUrl" Text :>
         QueryParam "projection" URLshortenerURLGetProjection
           :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] URL

-- | Expands a short URL or gets creation time and analytics.
--
-- /See:/ 'urlGet'' smart constructor.
data URLGet' = URLGet'
    { _ugQuotaUser   :: !(Maybe Text)
    , _ugPrettyPrint :: !Bool
    , _ugUserIP      :: !(Maybe Text)
    , _ugKey         :: !(Maybe Key)
    , _ugProjection  :: !(Maybe URLshortenerURLGetProjection)
    , _ugOAuthToken  :: !(Maybe OAuthToken)
    , _ugShortURL    :: !Text
    , _ugFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugQuotaUser'
--
-- * 'ugPrettyPrint'
--
-- * 'ugUserIP'
--
-- * 'ugKey'
--
-- * 'ugProjection'
--
-- * 'ugOAuthToken'
--
-- * 'ugShortURL'
--
-- * 'ugFields'
urlGet'
    :: Text -- ^ 'shortUrl'
    -> URLGet'
urlGet' pUgShortURL_ =
    URLGet'
    { _ugQuotaUser = Nothing
    , _ugPrettyPrint = True
    , _ugUserIP = Nothing
    , _ugKey = Nothing
    , _ugProjection = Nothing
    , _ugOAuthToken = Nothing
    , _ugShortURL = pUgShortURL_
    , _ugFields = Nothing
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
ugUserIP :: Lens' URLGet' (Maybe Text)
ugUserIP = lens _ugUserIP (\ s a -> s{_ugUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ugKey :: Lens' URLGet' (Maybe Key)
ugKey = lens _ugKey (\ s a -> s{_ugKey = a})

-- | Additional information to return.
ugProjection :: Lens' URLGet' (Maybe URLshortenerURLGetProjection)
ugProjection
  = lens _ugProjection (\ s a -> s{_ugProjection = a})

-- | OAuth 2.0 token for the current user.
ugOAuthToken :: Lens' URLGet' (Maybe OAuthToken)
ugOAuthToken
  = lens _ugOAuthToken (\ s a -> s{_ugOAuthToken = a})

-- | The short URL, including the protocol.
ugShortURL :: Lens' URLGet' Text
ugShortURL
  = lens _ugShortURL (\ s a -> s{_ugShortURL = a})

-- | Selector specifying which fields to include in a partial response.
ugFields :: Lens' URLGet' (Maybe Text)
ugFields = lens _ugFields (\ s a -> s{_ugFields = a})

instance GoogleAuth URLGet' where
        authKey = ugKey . _Just
        authToken = ugOAuthToken . _Just

instance GoogleRequest URLGet' where
        type Rs URLGet' = URL
        request = requestWithRoute defReq uRLShortenerURL
        requestWithRoute r u URLGet'{..}
          = go (Just _ugShortURL) _ugProjection _ugQuotaUser
              (Just _ugPrettyPrint)
              _ugUserIP
              _ugFields
              _ugKey
              _ugOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy URLGetResource) r u
