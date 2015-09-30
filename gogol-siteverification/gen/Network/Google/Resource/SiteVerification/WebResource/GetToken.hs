{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.SiteVerification.WebResource.GetToken
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get a verification token for placing on a website or domain.
--
-- /See:/ <https://developers.google.com/site-verification/ Google Site Verification API Reference> for @SiteVerificationWebResourceGetToken@.
module SiteVerification.WebResource.GetToken
    (
    -- * REST Resource
      WebResourceGetTokenAPI

    -- * Creating a Request
    , webResourceGetToken
    , WebResourceGetToken

    -- * Request Lenses
    , wrgtQuotaUser
    , wrgtPrettyPrint
    , wrgtUserIp
    , wrgtKey
    , wrgtOauthToken
    , wrgtFields
    , wrgtAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.SiteVerification.Types

-- | A resource alias for @SiteVerificationWebResourceGetToken@ which the
-- 'WebResourceGetToken' request conforms to.
type WebResourceGetTokenAPI =
     "token" :>
       Post '[JSON]
         SiteVerificationWebResourceGettokenResponse

-- | Get a verification token for placing on a website or domain.
--
-- /See:/ 'webResourceGetToken' smart constructor.
data WebResourceGetToken = WebResourceGetToken
    { _wrgtQuotaUser   :: !(Maybe Text)
    , _wrgtPrettyPrint :: !Bool
    , _wrgtUserIp      :: !(Maybe Text)
    , _wrgtKey         :: !(Maybe Text)
    , _wrgtOauthToken  :: !(Maybe Text)
    , _wrgtFields      :: !(Maybe Text)
    , _wrgtAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WebResourceGetToken'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wrgtQuotaUser'
--
-- * 'wrgtPrettyPrint'
--
-- * 'wrgtUserIp'
--
-- * 'wrgtKey'
--
-- * 'wrgtOauthToken'
--
-- * 'wrgtFields'
--
-- * 'wrgtAlt'
webResourceGetToken
    :: WebResourceGetToken
webResourceGetToken =
    WebResourceGetToken
    { _wrgtQuotaUser = Nothing
    , _wrgtPrettyPrint = False
    , _wrgtUserIp = Nothing
    , _wrgtKey = Nothing
    , _wrgtOauthToken = Nothing
    , _wrgtFields = Nothing
    , _wrgtAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
wrgtQuotaUser :: Lens' WebResourceGetToken' (Maybe Text)
wrgtQuotaUser
  = lens _wrgtQuotaUser
      (\ s a -> s{_wrgtQuotaUser = a})

-- | Returns response with indentations and line breaks.
wrgtPrettyPrint :: Lens' WebResourceGetToken' Bool
wrgtPrettyPrint
  = lens _wrgtPrettyPrint
      (\ s a -> s{_wrgtPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
wrgtUserIp :: Lens' WebResourceGetToken' (Maybe Text)
wrgtUserIp
  = lens _wrgtUserIp (\ s a -> s{_wrgtUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
wrgtKey :: Lens' WebResourceGetToken' (Maybe Text)
wrgtKey = lens _wrgtKey (\ s a -> s{_wrgtKey = a})

-- | OAuth 2.0 token for the current user.
wrgtOauthToken :: Lens' WebResourceGetToken' (Maybe Text)
wrgtOauthToken
  = lens _wrgtOauthToken
      (\ s a -> s{_wrgtOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
wrgtFields :: Lens' WebResourceGetToken' (Maybe Text)
wrgtFields
  = lens _wrgtFields (\ s a -> s{_wrgtFields = a})

-- | Data format for the response.
wrgtAlt :: Lens' WebResourceGetToken' Text
wrgtAlt = lens _wrgtAlt (\ s a -> s{_wrgtAlt = a})

instance GoogleRequest WebResourceGetToken' where
        type Rs WebResourceGetToken' =
             SiteVerificationWebResourceGettokenResponse
        request = requestWithRoute defReq siteVerificationURL
        requestWithRoute r u WebResourceGetToken{..}
          = go _wrgtQuotaUser _wrgtPrettyPrint _wrgtUserIp
              _wrgtKey
              _wrgtOauthToken
              _wrgtFields
              _wrgtAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy WebResourceGetTokenAPI)
                      r
                      u
