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
    , wrgtPayload
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
             QueryParam "fields" Text :>
               QueryParam "key" AuthKey :>
                 QueryParam "oauth_token" OAuthToken :>
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
    { _wrgtQuotaUser   :: !(Maybe Text)
    , _wrgtPrettyPrint :: !Bool
    , _wrgtUserIP      :: !(Maybe Text)
    , _wrgtPayload     :: !SiteVerificationWebResourceGettokenRequest
    , _wrgtKey         :: !(Maybe AuthKey)
    , _wrgtOAuthToken  :: !(Maybe OAuthToken)
    , _wrgtFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'wrgtPayload'
--
-- * 'wrgtKey'
--
-- * 'wrgtOAuthToken'
--
-- * 'wrgtFields'
webResourceGetToken'
    :: SiteVerificationWebResourceGettokenRequest -- ^ 'payload'
    -> WebResourceGetToken'
webResourceGetToken' pWrgtPayload_ =
    WebResourceGetToken'
    { _wrgtQuotaUser = Nothing
    , _wrgtPrettyPrint = False
    , _wrgtUserIP = Nothing
    , _wrgtPayload = pWrgtPayload_
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
wrgtPayload :: Lens' WebResourceGetToken' SiteVerificationWebResourceGettokenRequest
wrgtPayload
  = lens _wrgtPayload (\ s a -> s{_wrgtPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
wrgtKey :: Lens' WebResourceGetToken' (Maybe AuthKey)
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
        _AuthKey = wrgtKey . _Just
        _AuthToken = wrgtOAuthToken . _Just

instance GoogleRequest WebResourceGetToken' where
        type Rs WebResourceGetToken' =
             SiteVerificationWebResourceGettokenResponse
        request = requestWith siteVerificationRequest
        requestWith rq WebResourceGetToken'{..}
          = go _wrgtQuotaUser (Just _wrgtPrettyPrint)
              _wrgtUserIP
              _wrgtFields
              _wrgtKey
              _wrgtOAuthToken
              (Just AltJSON)
              _wrgtPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy WebResourceGetTokenResource)
                      rq
