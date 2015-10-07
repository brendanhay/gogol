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
      URLInsertResource

    -- * Creating a Request
    , urlInsert'
    , URLInsert'

    -- * Request Lenses
    , uiQuotaUser
    , uiPrettyPrint
    , uiUserIP
    , uiPayload
    , uiKey
    , uiOAuthToken
    , uiFields
    ) where

import           Network.Google.Prelude
import           Network.Google.URLShortener.Types

-- | A resource alias for @URLshortenerURLInsert@ method which the
-- 'URLInsert'' request conforms to.
type URLInsertResource =
     "url" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" AuthKey :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] URL :> Post '[JSON] URL

-- | Creates a new short URL.
--
-- /See:/ 'urlInsert'' smart constructor.
data URLInsert' = URLInsert'
    { _uiQuotaUser   :: !(Maybe Text)
    , _uiPrettyPrint :: !Bool
    , _uiUserIP      :: !(Maybe Text)
    , _uiPayload     :: !URL
    , _uiKey         :: !(Maybe AuthKey)
    , _uiOAuthToken  :: !(Maybe OAuthToken)
    , _uiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'uiPayload'
--
-- * 'uiKey'
--
-- * 'uiOAuthToken'
--
-- * 'uiFields'
urlInsert'
    :: URL -- ^ 'payload'
    -> URLInsert'
urlInsert' pUiPayload_ =
    URLInsert'
    { _uiQuotaUser = Nothing
    , _uiPrettyPrint = True
    , _uiUserIP = Nothing
    , _uiPayload = pUiPayload_
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
uiPayload :: Lens' URLInsert' URL
uiPayload
  = lens _uiPayload (\ s a -> s{_uiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uiKey :: Lens' URLInsert' (Maybe AuthKey)
uiKey = lens _uiKey (\ s a -> s{_uiKey = a})

-- | OAuth 2.0 token for the current user.
uiOAuthToken :: Lens' URLInsert' (Maybe OAuthToken)
uiOAuthToken
  = lens _uiOAuthToken (\ s a -> s{_uiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
uiFields :: Lens' URLInsert' (Maybe Text)
uiFields = lens _uiFields (\ s a -> s{_uiFields = a})

instance GoogleAuth URLInsert' where
        _AuthKey = uiKey . _Just
        _AuthToken = uiOAuthToken . _Just

instance GoogleRequest URLInsert' where
        type Rs URLInsert' = URL
        request = requestWith uRLShortenerRequest
        requestWith rq URLInsert'{..}
          = go _uiQuotaUser (Just _uiPrettyPrint) _uiUserIP
              _uiFields
              _uiKey
              _uiOAuthToken
              (Just AltJSON)
              _uiPayload
          where go
                  = clientBuild (Proxy :: Proxy URLInsertResource) rq
