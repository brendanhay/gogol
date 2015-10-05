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
-- Module      : Network.Google.Resource.SiteVerification.WebResource.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get the most current data for a website or domain.
--
-- /See:/ <https://developers.google.com/site-verification/ Google Site Verification API Reference> for @SiteVerificationWebResourceGet@.
module Network.Google.Resource.SiteVerification.WebResource.Get
    (
    -- * REST Resource
      WebResourceGetResource

    -- * Creating a Request
    , webResourceGet'
    , WebResourceGet'

    -- * Request Lenses
    , wrgQuotaUser
    , wrgPrettyPrint
    , wrgUserIP
    , wrgKey
    , wrgId
    , wrgOAuthToken
    , wrgFields
    ) where

import           Network.Google.Prelude
import           Network.Google.SiteVerification.Types

-- | A resource alias for @SiteVerificationWebResourceGet@ which the
-- 'WebResourceGet'' request conforms to.
type WebResourceGetResource =
     "webResource" :>
       Capture "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] SiteVerificationWebResourceResource

-- | Get the most current data for a website or domain.
--
-- /See:/ 'webResourceGet'' smart constructor.
data WebResourceGet' = WebResourceGet'
    { _wrgQuotaUser   :: !(Maybe Text)
    , _wrgPrettyPrint :: !Bool
    , _wrgUserIP      :: !(Maybe Text)
    , _wrgKey         :: !(Maybe Key)
    , _wrgId          :: !Text
    , _wrgOAuthToken  :: !(Maybe OAuthToken)
    , _wrgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WebResourceGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wrgQuotaUser'
--
-- * 'wrgPrettyPrint'
--
-- * 'wrgUserIP'
--
-- * 'wrgKey'
--
-- * 'wrgId'
--
-- * 'wrgOAuthToken'
--
-- * 'wrgFields'
webResourceGet'
    :: Text -- ^ 'id'
    -> WebResourceGet'
webResourceGet' pWrgId_ =
    WebResourceGet'
    { _wrgQuotaUser = Nothing
    , _wrgPrettyPrint = False
    , _wrgUserIP = Nothing
    , _wrgKey = Nothing
    , _wrgId = pWrgId_
    , _wrgOAuthToken = Nothing
    , _wrgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
wrgQuotaUser :: Lens' WebResourceGet' (Maybe Text)
wrgQuotaUser
  = lens _wrgQuotaUser (\ s a -> s{_wrgQuotaUser = a})

-- | Returns response with indentations and line breaks.
wrgPrettyPrint :: Lens' WebResourceGet' Bool
wrgPrettyPrint
  = lens _wrgPrettyPrint
      (\ s a -> s{_wrgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
wrgUserIP :: Lens' WebResourceGet' (Maybe Text)
wrgUserIP
  = lens _wrgUserIP (\ s a -> s{_wrgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
wrgKey :: Lens' WebResourceGet' (Maybe Key)
wrgKey = lens _wrgKey (\ s a -> s{_wrgKey = a})

-- | The id of a verified site or domain.
wrgId :: Lens' WebResourceGet' Text
wrgId = lens _wrgId (\ s a -> s{_wrgId = a})

-- | OAuth 2.0 token for the current user.
wrgOAuthToken :: Lens' WebResourceGet' (Maybe OAuthToken)
wrgOAuthToken
  = lens _wrgOAuthToken
      (\ s a -> s{_wrgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
wrgFields :: Lens' WebResourceGet' (Maybe Text)
wrgFields
  = lens _wrgFields (\ s a -> s{_wrgFields = a})

instance GoogleAuth WebResourceGet' where
        authKey = wrgKey . _Just
        authToken = wrgOAuthToken . _Just

instance GoogleRequest WebResourceGet' where
        type Rs WebResourceGet' =
             SiteVerificationWebResourceResource
        request = requestWithRoute defReq siteVerificationURL
        requestWithRoute r u WebResourceGet'{..}
          = go _wrgId _wrgQuotaUser (Just _wrgPrettyPrint)
              _wrgUserIP
              _wrgFields
              _wrgKey
              _wrgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy WebResourceGetResource)
                      r
                      u
