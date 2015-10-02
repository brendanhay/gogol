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
module Network.Google.Resource.SiteVerification.WebResource.GetToken
    (
    -- * REST Resource
      WebResourceGetTokenResource

    -- * Creating a Request
    , webResourceGetToken'
    , WebResourceGetToken'

    -- * Request Lenses
    , wrgtQuotaUser
    , wrgtPrettyPrint
    , wrgtUserIP
    , wrgtSiteVerificationWebResourceGettokenRequest
    , wrgtKey
    , wrgtOAuthToken
    , wrgtFields
    ) where

import           Network.Google.Prelude
import           Network.Google.SiteVerification.Types

-- | A resource alias for @SiteVerificationWebResourceGetToken@ which the
-- 'WebResourceGetToken'' request conforms to.
type WebResourceGetTokenResource =
     "token" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Key :>
               QueryParam "oauth_token" OAuthToken :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       SiteVerificationWebResourceGettokenRequest
                       :>
                       Post '[JSON]
                         SiteVerificationWebResourceGettokenResponse

-- | Get a verification token for placing on a website or domain.
--
-- /See:/ 'webResourceGetToken'' smart constructor.
data WebResourceGetToken' = WebResourceGetToken'
    { _wrgtQuotaUser                                  :: !(Maybe Text)
    , _wrgtPrettyPrint                                :: !Bool
    , _wrgtUserIP                                     :: !(Maybe Text)
    , _wrgtSiteVerificationWebResourceGettokenRequest :: !SiteVerificationWebResourceGettokenRequest
    , _wrgtKey                                        :: !(Maybe Key)
    , _wrgtOAuthToken                                 :: !(Maybe OAuthToken)
    , _wrgtFields                                     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WebResourceGetToken'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wrgtQuotaUser'
--
-- * 'wrgtPrettyPrint'
--
-- * 'wrgtUserIP'
--
-- * 'wrgtSiteVerificationWebResourceGettokenRequest'
--
-- * 'wrgtKey'
--
-- * 'wrgtOAuthToken'
--
-- * 'wrgtFields'
webResourceGetToken'
    :: SiteVerificationWebResourceGettokenRequest -- ^ 'SiteVerificationWebResourceGettokenRequest'
    -> WebResourceGetToken'
webResourceGetToken' pWrgtSiteVerificationWebResourceGettokenRequest_ =
    WebResourceGetToken'
    { _wrgtQuotaUser = Nothing
    , _wrgtPrettyPrint = False
    , _wrgtUserIP = Nothing
    , _wrgtSiteVerificationWebResourceGettokenRequest = pWrgtSiteVerificationWebResourceGettokenRequest_
    , _wrgtKey = Nothing
    , _wrgtOAuthToken = Nothing
    , _wrgtFields = Nothing
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
wrgtUserIP :: Lens' WebResourceGetToken' (Maybe Text)
wrgtUserIP
  = lens _wrgtUserIP (\ s a -> s{_wrgtUserIP = a})

-- | Multipart request metadata.
wrgtSiteVerificationWebResourceGettokenRequest :: Lens' WebResourceGetToken' SiteVerificationWebResourceGettokenRequest
wrgtSiteVerificationWebResourceGettokenRequest
  = lens
      _wrgtSiteVerificationWebResourceGettokenRequest
      (\ s a ->
         s{_wrgtSiteVerificationWebResourceGettokenRequest =
             a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
wrgtKey :: Lens' WebResourceGetToken' (Maybe Key)
wrgtKey = lens _wrgtKey (\ s a -> s{_wrgtKey = a})

-- | OAuth 2.0 token for the current user.
wrgtOAuthToken :: Lens' WebResourceGetToken' (Maybe OAuthToken)
wrgtOAuthToken
  = lens _wrgtOAuthToken
      (\ s a -> s{_wrgtOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
wrgtFields :: Lens' WebResourceGetToken' (Maybe Text)
wrgtFields
  = lens _wrgtFields (\ s a -> s{_wrgtFields = a})

instance GoogleAuth WebResourceGetToken' where
        authKey = wrgtKey . _Just
        authToken = wrgtOAuthToken . _Just

instance GoogleRequest WebResourceGetToken' where
        type Rs WebResourceGetToken' =
             SiteVerificationWebResourceGettokenResponse
        request = requestWithRoute defReq siteVerificationURL
        requestWithRoute r u WebResourceGetToken'{..}
          = go _wrgtQuotaUser (Just _wrgtPrettyPrint)
              _wrgtUserIP
              _wrgtKey
              _wrgtOAuthToken
              _wrgtFields
              (Just AltJSON)
              _wrgtSiteVerificationWebResourceGettokenRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy WebResourceGetTokenResource)
                      r
                      u
