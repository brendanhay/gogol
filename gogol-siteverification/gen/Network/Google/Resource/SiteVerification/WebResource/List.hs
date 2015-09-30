{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module SiteVerification.WebResource.List
    (
    -- * REST Resource
      WebResourceListAPI

    -- * Creating a Request
    , webResourceList
    , WebResourceList

    -- * Request Lenses
    , wrlQuotaUser
    , wrlPrettyPrint
    , wrlUserIp
    , wrlKey
    , wrlOauthToken
    , wrlFields
    , wrlAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.SiteVerification.Types

-- | A resource alias for @SiteVerificationWebResourceList@ which the
-- 'WebResourceList' request conforms to.
type WebResourceListAPI =
     "webResource" :>
       Get '[JSON] SiteVerificationWebResourceListResponse

-- | Get the list of your verified websites and domains.
--
-- /See:/ 'webResourceList' smart constructor.
data WebResourceList = WebResourceList
    { _wrlQuotaUser   :: !(Maybe Text)
    , _wrlPrettyPrint :: !Bool
    , _wrlUserIp      :: !(Maybe Text)
    , _wrlKey         :: !(Maybe Text)
    , _wrlOauthToken  :: !(Maybe Text)
    , _wrlFields      :: !(Maybe Text)
    , _wrlAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WebResourceList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wrlQuotaUser'
--
-- * 'wrlPrettyPrint'
--
-- * 'wrlUserIp'
--
-- * 'wrlKey'
--
-- * 'wrlOauthToken'
--
-- * 'wrlFields'
--
-- * 'wrlAlt'
webResourceList
    :: WebResourceList
webResourceList =
    WebResourceList
    { _wrlQuotaUser = Nothing
    , _wrlPrettyPrint = False
    , _wrlUserIp = Nothing
    , _wrlKey = Nothing
    , _wrlOauthToken = Nothing
    , _wrlFields = Nothing
    , _wrlAlt = "json"
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
wrlUserIp :: Lens' WebResourceList' (Maybe Text)
wrlUserIp
  = lens _wrlUserIp (\ s a -> s{_wrlUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
wrlKey :: Lens' WebResourceList' (Maybe Text)
wrlKey = lens _wrlKey (\ s a -> s{_wrlKey = a})

-- | OAuth 2.0 token for the current user.
wrlOauthToken :: Lens' WebResourceList' (Maybe Text)
wrlOauthToken
  = lens _wrlOauthToken
      (\ s a -> s{_wrlOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
wrlFields :: Lens' WebResourceList' (Maybe Text)
wrlFields
  = lens _wrlFields (\ s a -> s{_wrlFields = a})

-- | Data format for the response.
wrlAlt :: Lens' WebResourceList' Text
wrlAlt = lens _wrlAlt (\ s a -> s{_wrlAlt = a})

instance GoogleRequest WebResourceList' where
        type Rs WebResourceList' =
             SiteVerificationWebResourceListResponse
        request = requestWithRoute defReq siteVerificationURL
        requestWithRoute r u WebResourceList{..}
          = go _wrlQuotaUser _wrlPrettyPrint _wrlUserIp _wrlKey
              _wrlOauthToken
              _wrlFields
              _wrlAlt
          where go
                  = clientWithRoute (Proxy :: Proxy WebResourceListAPI)
                      r
                      u
