{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module SiteVerification.WebResource.Insert
    (
    -- * REST Resource
      WebResourceInsertAPI

    -- * Creating a Request
    , webResourceInsert
    , WebResourceInsert

    -- * Request Lenses
    , wriQuotaUser
    , wriPrettyPrint
    , wriUserIp
    , wriKey
    , wriOauthToken
    , wriVerificationMethod
    , wriFields
    , wriAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.SiteVerification.Types

-- | A resource alias for @SiteVerificationWebResourceInsert@ which the
-- 'WebResourceInsert' request conforms to.
type WebResourceInsertAPI =
     "webResource" :>
       QueryParam "verificationMethod" Text :>
         Post '[JSON] SiteVerificationWebResourceResource

-- | Attempt verification of a website or domain.
--
-- /See:/ 'webResourceInsert' smart constructor.
data WebResourceInsert = WebResourceInsert
    { _wriQuotaUser          :: !(Maybe Text)
    , _wriPrettyPrint        :: !Bool
    , _wriUserIp             :: !(Maybe Text)
    , _wriKey                :: !(Maybe Text)
    , _wriOauthToken         :: !(Maybe Text)
    , _wriVerificationMethod :: !Text
    , _wriFields             :: !(Maybe Text)
    , _wriAlt                :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WebResourceInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wriQuotaUser'
--
-- * 'wriPrettyPrint'
--
-- * 'wriUserIp'
--
-- * 'wriKey'
--
-- * 'wriOauthToken'
--
-- * 'wriVerificationMethod'
--
-- * 'wriFields'
--
-- * 'wriAlt'
webResourceInsert
    :: Text -- ^ 'verificationMethod'
    -> WebResourceInsert
webResourceInsert pWriVerificationMethod_ =
    WebResourceInsert
    { _wriQuotaUser = Nothing
    , _wriPrettyPrint = False
    , _wriUserIp = Nothing
    , _wriKey = Nothing
    , _wriOauthToken = Nothing
    , _wriVerificationMethod = pWriVerificationMethod_
    , _wriFields = Nothing
    , _wriAlt = "json"
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
wriUserIp :: Lens' WebResourceInsert' (Maybe Text)
wriUserIp
  = lens _wriUserIp (\ s a -> s{_wriUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
wriKey :: Lens' WebResourceInsert' (Maybe Text)
wriKey = lens _wriKey (\ s a -> s{_wriKey = a})

-- | OAuth 2.0 token for the current user.
wriOauthToken :: Lens' WebResourceInsert' (Maybe Text)
wriOauthToken
  = lens _wriOauthToken
      (\ s a -> s{_wriOauthToken = a})

-- | The method to use for verifying a site or domain.
wriVerificationMethod :: Lens' WebResourceInsert' Text
wriVerificationMethod
  = lens _wriVerificationMethod
      (\ s a -> s{_wriVerificationMethod = a})

-- | Selector specifying which fields to include in a partial response.
wriFields :: Lens' WebResourceInsert' (Maybe Text)
wriFields
  = lens _wriFields (\ s a -> s{_wriFields = a})

-- | Data format for the response.
wriAlt :: Lens' WebResourceInsert' Text
wriAlt = lens _wriAlt (\ s a -> s{_wriAlt = a})

instance GoogleRequest WebResourceInsert' where
        type Rs WebResourceInsert' =
             SiteVerificationWebResourceResource
        request = requestWithRoute defReq siteVerificationURL
        requestWithRoute r u WebResourceInsert{..}
          = go _wriQuotaUser _wriPrettyPrint _wriUserIp _wriKey
              _wriOauthToken
              (Just _wriVerificationMethod)
              _wriFields
              _wriAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy WebResourceInsertAPI)
                      r
                      u
