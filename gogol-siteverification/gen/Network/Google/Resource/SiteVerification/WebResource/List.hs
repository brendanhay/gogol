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
-- Module      : Network.Google.Resource.SiteVerification.WebResource.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get the list of your verified websites and domains.
--
-- /See:/ <https://developers.google.com/site-verification/ Google Site Verification API Reference> for @SiteVerificationWebResourceList@.
module Network.Google.Resource.SiteVerification.WebResource.List
    (
    -- * REST Resource
      WebResourceListResource

    -- * Creating a Request
    , webResourceList'
    , WebResourceList'

    -- * Request Lenses
    , wrlQuotaUser
    , wrlPrettyPrint
    , wrlUserIP
    , wrlKey
    , wrlOAuthToken
    , wrlFields
    ) where

import           Network.Google.Prelude
import           Network.Google.SiteVerification.Types

-- | A resource alias for @SiteVerificationWebResourceList@ which the
-- 'WebResourceList'' request conforms to.
type WebResourceListResource =
     "webResource" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" AuthKey :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] SiteVerificationWebResourceListResponse

-- | Get the list of your verified websites and domains.
--
-- /See:/ 'webResourceList'' smart constructor.
data WebResourceList' = WebResourceList'
    { _wrlQuotaUser   :: !(Maybe Text)
    , _wrlPrettyPrint :: !Bool
    , _wrlUserIP      :: !(Maybe Text)
    , _wrlKey         :: !(Maybe AuthKey)
    , _wrlOAuthToken  :: !(Maybe OAuthToken)
    , _wrlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WebResourceList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wrlQuotaUser'
--
-- * 'wrlPrettyPrint'
--
-- * 'wrlUserIP'
--
-- * 'wrlKey'
--
-- * 'wrlOAuthToken'
--
-- * 'wrlFields'
webResourceList'
    :: WebResourceList'
webResourceList' =
    WebResourceList'
    { _wrlQuotaUser = Nothing
    , _wrlPrettyPrint = False
    , _wrlUserIP = Nothing
    , _wrlKey = Nothing
    , _wrlOAuthToken = Nothing
    , _wrlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
wrlQuotaUser :: Lens' WebResourceList' (Maybe Text)
wrlQuotaUser
  = lens _wrlQuotaUser (\ s a -> s{_wrlQuotaUser = a})

-- | Returns response with indentations and line breaks.
wrlPrettyPrint :: Lens' WebResourceList' Bool
wrlPrettyPrint
  = lens _wrlPrettyPrint
      (\ s a -> s{_wrlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
wrlUserIP :: Lens' WebResourceList' (Maybe Text)
wrlUserIP
  = lens _wrlUserIP (\ s a -> s{_wrlUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
wrlKey :: Lens' WebResourceList' (Maybe AuthKey)
wrlKey = lens _wrlKey (\ s a -> s{_wrlKey = a})

-- | OAuth 2.0 token for the current user.
wrlOAuthToken :: Lens' WebResourceList' (Maybe OAuthToken)
wrlOAuthToken
  = lens _wrlOAuthToken
      (\ s a -> s{_wrlOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
wrlFields :: Lens' WebResourceList' (Maybe Text)
wrlFields
  = lens _wrlFields (\ s a -> s{_wrlFields = a})

instance GoogleAuth WebResourceList' where
        authKey = wrlKey . _Just
        authToken = wrlOAuthToken . _Just

instance GoogleRequest WebResourceList' where
        type Rs WebResourceList' =
             SiteVerificationWebResourceListResponse
        request = requestWith siteVerificationRequest
        requestWith rq WebResourceList'{..}
          = go _wrlQuotaUser (Just _wrlPrettyPrint) _wrlUserIP
              _wrlFields
              _wrlKey
              _wrlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy WebResourceListResource)
                      rq
