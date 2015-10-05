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
-- Module      : Network.Google.Resource.SiteVerification.WebResource.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Attempt verification of a website or domain.
--
-- /See:/ <https://developers.google.com/site-verification/ Google Site Verification API Reference> for @SiteVerificationWebResourceInsert@.
module Network.Google.Resource.SiteVerification.WebResource.Insert
    (
    -- * REST Resource
      WebResourceInsertResource

    -- * Creating a Request
    , webResourceInsert'
    , WebResourceInsert'

    -- * Request Lenses
    , wriQuotaUser
    , wriPrettyPrint
    , wriUserIP
    , wriPayload
    , wriKey
    , wriOAuthToken
    , wriVerificationMethod
    , wriFields
    ) where

import           Network.Google.Prelude
import           Network.Google.SiteVerification.Types

-- | A resource alias for @SiteVerificationWebResourceInsert@ which the
-- 'WebResourceInsert'' request conforms to.
type WebResourceInsertResource =
     "webResource" :>
       QueryParam "verificationMethod" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] SiteVerificationWebResourceResource
                         :> Post '[JSON] SiteVerificationWebResourceResource

-- | Attempt verification of a website or domain.
--
-- /See:/ 'webResourceInsert'' smart constructor.
data WebResourceInsert' = WebResourceInsert'
    { _wriQuotaUser          :: !(Maybe Text)
    , _wriPrettyPrint        :: !Bool
    , _wriUserIP             :: !(Maybe Text)
    , _wriPayload            :: !SiteVerificationWebResourceResource
    , _wriKey                :: !(Maybe Key)
    , _wriOAuthToken         :: !(Maybe OAuthToken)
    , _wriVerificationMethod :: !Text
    , _wriFields             :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WebResourceInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wriQuotaUser'
--
-- * 'wriPrettyPrint'
--
-- * 'wriUserIP'
--
-- * 'wriPayload'
--
-- * 'wriKey'
--
-- * 'wriOAuthToken'
--
-- * 'wriVerificationMethod'
--
-- * 'wriFields'
webResourceInsert'
    :: SiteVerificationWebResourceResource -- ^ 'payload'
    -> Text -- ^ 'verificationMethod'
    -> WebResourceInsert'
webResourceInsert' pWriPayload_ pWriVerificationMethod_ =
    WebResourceInsert'
    { _wriQuotaUser = Nothing
    , _wriPrettyPrint = False
    , _wriUserIP = Nothing
    , _wriPayload = pWriPayload_
    , _wriKey = Nothing
    , _wriOAuthToken = Nothing
    , _wriVerificationMethod = pWriVerificationMethod_
    , _wriFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
wriQuotaUser :: Lens' WebResourceInsert' (Maybe Text)
wriQuotaUser
  = lens _wriQuotaUser (\ s a -> s{_wriQuotaUser = a})

-- | Returns response with indentations and line breaks.
wriPrettyPrint :: Lens' WebResourceInsert' Bool
wriPrettyPrint
  = lens _wriPrettyPrint
      (\ s a -> s{_wriPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
wriUserIP :: Lens' WebResourceInsert' (Maybe Text)
wriUserIP
  = lens _wriUserIP (\ s a -> s{_wriUserIP = a})

-- | Multipart request metadata.
wriPayload :: Lens' WebResourceInsert' SiteVerificationWebResourceResource
wriPayload
  = lens _wriPayload (\ s a -> s{_wriPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
wriKey :: Lens' WebResourceInsert' (Maybe Key)
wriKey = lens _wriKey (\ s a -> s{_wriKey = a})

-- | OAuth 2.0 token for the current user.
wriOAuthToken :: Lens' WebResourceInsert' (Maybe OAuthToken)
wriOAuthToken
  = lens _wriOAuthToken
      (\ s a -> s{_wriOAuthToken = a})

-- | The method to use for verifying a site or domain.
wriVerificationMethod :: Lens' WebResourceInsert' Text
wriVerificationMethod
  = lens _wriVerificationMethod
      (\ s a -> s{_wriVerificationMethod = a})

-- | Selector specifying which fields to include in a partial response.
wriFields :: Lens' WebResourceInsert' (Maybe Text)
wriFields
  = lens _wriFields (\ s a -> s{_wriFields = a})

instance GoogleAuth WebResourceInsert' where
        authKey = wriKey . _Just
        authToken = wriOAuthToken . _Just

instance GoogleRequest WebResourceInsert' where
        type Rs WebResourceInsert' =
             SiteVerificationWebResourceResource
        request = requestWithRoute defReq siteVerificationURL
        requestWithRoute r u WebResourceInsert'{..}
          = go (Just _wriVerificationMethod) _wriQuotaUser
              (Just _wriPrettyPrint)
              _wriUserIP
              _wriFields
              _wriKey
              _wriOAuthToken
              (Just AltJSON)
              _wriPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy WebResourceInsertResource)
                      r
                      u
