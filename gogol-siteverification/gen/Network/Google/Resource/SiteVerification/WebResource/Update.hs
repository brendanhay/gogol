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
-- Module      : Network.Google.Resource.SiteVerification.WebResource.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Modify the list of owners for your website or domain.
--
-- /See:/ <https://developers.google.com/site-verification/ Google Site Verification API Reference> for @SiteVerificationWebResourceUpdate@.
module Network.Google.Resource.SiteVerification.WebResource.Update
    (
    -- * REST Resource
      WebResourceUpdateResource

    -- * Creating a Request
    , webResourceUpdate'
    , WebResourceUpdate'

    -- * Request Lenses
    , wruQuotaUser
    , wruPrettyPrint
    , wruUserIP
    , wruPayload
    , wruKey
    , wruId
    , wruOAuthToken
    , wruFields
    ) where

import           Network.Google.Prelude
import           Network.Google.SiteVerification.Types

-- | A resource alias for @SiteVerificationWebResourceUpdate@ which the
-- 'WebResourceUpdate'' request conforms to.
type WebResourceUpdateResource =
     "webResource" :>
       Capture "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[OctetStream]
                         SiteVerificationWebResourceResource
                         :> Put '[JSON] SiteVerificationWebResourceResource

-- | Modify the list of owners for your website or domain.
--
-- /See:/ 'webResourceUpdate'' smart constructor.
data WebResourceUpdate' = WebResourceUpdate'
    { _wruQuotaUser   :: !(Maybe Text)
    , _wruPrettyPrint :: !Bool
    , _wruUserIP      :: !(Maybe Text)
    , _wruPayload     :: !SiteVerificationWebResourceResource
    , _wruKey         :: !(Maybe Key)
    , _wruId          :: !Text
    , _wruOAuthToken  :: !(Maybe OAuthToken)
    , _wruFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WebResourceUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wruQuotaUser'
--
-- * 'wruPrettyPrint'
--
-- * 'wruUserIP'
--
-- * 'wruPayload'
--
-- * 'wruKey'
--
-- * 'wruId'
--
-- * 'wruOAuthToken'
--
-- * 'wruFields'
webResourceUpdate'
    :: SiteVerificationWebResourceResource -- ^ 'payload'
    -> Text -- ^ 'id'
    -> WebResourceUpdate'
webResourceUpdate' pWruPayload_ pWruId_ =
    WebResourceUpdate'
    { _wruQuotaUser = Nothing
    , _wruPrettyPrint = False
    , _wruUserIP = Nothing
    , _wruPayload = pWruPayload_
    , _wruKey = Nothing
    , _wruId = pWruId_
    , _wruOAuthToken = Nothing
    , _wruFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
wruQuotaUser :: Lens' WebResourceUpdate' (Maybe Text)
wruQuotaUser
  = lens _wruQuotaUser (\ s a -> s{_wruQuotaUser = a})

-- | Returns response with indentations and line breaks.
wruPrettyPrint :: Lens' WebResourceUpdate' Bool
wruPrettyPrint
  = lens _wruPrettyPrint
      (\ s a -> s{_wruPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
wruUserIP :: Lens' WebResourceUpdate' (Maybe Text)
wruUserIP
  = lens _wruUserIP (\ s a -> s{_wruUserIP = a})

-- | Multipart request metadata.
wruPayload :: Lens' WebResourceUpdate' SiteVerificationWebResourceResource
wruPayload
  = lens _wruPayload (\ s a -> s{_wruPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
wruKey :: Lens' WebResourceUpdate' (Maybe Key)
wruKey = lens _wruKey (\ s a -> s{_wruKey = a})

-- | The id of a verified site or domain.
wruId :: Lens' WebResourceUpdate' Text
wruId = lens _wruId (\ s a -> s{_wruId = a})

-- | OAuth 2.0 token for the current user.
wruOAuthToken :: Lens' WebResourceUpdate' (Maybe OAuthToken)
wruOAuthToken
  = lens _wruOAuthToken
      (\ s a -> s{_wruOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
wruFields :: Lens' WebResourceUpdate' (Maybe Text)
wruFields
  = lens _wruFields (\ s a -> s{_wruFields = a})

instance GoogleAuth WebResourceUpdate' where
        authKey = wruKey . _Just
        authToken = wruOAuthToken . _Just

instance GoogleRequest WebResourceUpdate' where
        type Rs WebResourceUpdate' =
             SiteVerificationWebResourceResource
        request = requestWithRoute defReq siteVerificationURL
        requestWithRoute r u WebResourceUpdate'{..}
          = go _wruId _wruQuotaUser (Just _wruPrettyPrint)
              _wruUserIP
              _wruFields
              _wruKey
              _wruOAuthToken
              (Just AltJSON)
              _wruPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy WebResourceUpdateResource)
                      r
                      u
