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
-- Module      : Network.Google.Resource.SiteVerification.WebResource.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Modify the list of owners for your website or domain. This method
-- supports patch semantics.
--
-- /See:/ <https://developers.google.com/site-verification/ Google Site Verification API Reference> for @SiteVerificationWebResourcePatch@.
module Network.Google.Resource.SiteVerification.WebResource.Patch
    (
    -- * REST Resource
      WebResourcePatchResource

    -- * Creating a Request
    , webResourcePatch'
    , WebResourcePatch'

    -- * Request Lenses
    , wrpQuotaUser
    , wrpPrettyPrint
    , wrpUserIP
    , wrpPayload
    , wrpKey
    , wrpId
    , wrpOAuthToken
    , wrpFields
    ) where

import           Network.Google.Prelude
import           Network.Google.SiteVerification.Types

-- | A resource alias for @SiteVerificationWebResourcePatch@ which the
-- 'WebResourcePatch'' request conforms to.
type WebResourcePatchResource =
     "webResource" :>
       Capture "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] SiteVerificationWebResourceResource
                         :> Patch '[JSON] SiteVerificationWebResourceResource

-- | Modify the list of owners for your website or domain. This method
-- supports patch semantics.
--
-- /See:/ 'webResourcePatch'' smart constructor.
data WebResourcePatch' = WebResourcePatch'
    { _wrpQuotaUser   :: !(Maybe Text)
    , _wrpPrettyPrint :: !Bool
    , _wrpUserIP      :: !(Maybe Text)
    , _wrpPayload     :: !SiteVerificationWebResourceResource
    , _wrpKey         :: !(Maybe AuthKey)
    , _wrpId          :: !Text
    , _wrpOAuthToken  :: !(Maybe OAuthToken)
    , _wrpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WebResourcePatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wrpQuotaUser'
--
-- * 'wrpPrettyPrint'
--
-- * 'wrpUserIP'
--
-- * 'wrpPayload'
--
-- * 'wrpKey'
--
-- * 'wrpId'
--
-- * 'wrpOAuthToken'
--
-- * 'wrpFields'
webResourcePatch'
    :: SiteVerificationWebResourceResource -- ^ 'payload'
    -> Text -- ^ 'id'
    -> WebResourcePatch'
webResourcePatch' pWrpPayload_ pWrpId_ =
    WebResourcePatch'
    { _wrpQuotaUser = Nothing
    , _wrpPrettyPrint = False
    , _wrpUserIP = Nothing
    , _wrpPayload = pWrpPayload_
    , _wrpKey = Nothing
    , _wrpId = pWrpId_
    , _wrpOAuthToken = Nothing
    , _wrpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
wrpQuotaUser :: Lens' WebResourcePatch' (Maybe Text)
wrpQuotaUser
  = lens _wrpQuotaUser (\ s a -> s{_wrpQuotaUser = a})

-- | Returns response with indentations and line breaks.
wrpPrettyPrint :: Lens' WebResourcePatch' Bool
wrpPrettyPrint
  = lens _wrpPrettyPrint
      (\ s a -> s{_wrpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
wrpUserIP :: Lens' WebResourcePatch' (Maybe Text)
wrpUserIP
  = lens _wrpUserIP (\ s a -> s{_wrpUserIP = a})

-- | Multipart request metadata.
wrpPayload :: Lens' WebResourcePatch' SiteVerificationWebResourceResource
wrpPayload
  = lens _wrpPayload (\ s a -> s{_wrpPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
wrpKey :: Lens' WebResourcePatch' (Maybe AuthKey)
wrpKey = lens _wrpKey (\ s a -> s{_wrpKey = a})

-- | The id of a verified site or domain.
wrpId :: Lens' WebResourcePatch' Text
wrpId = lens _wrpId (\ s a -> s{_wrpId = a})

-- | OAuth 2.0 token for the current user.
wrpOAuthToken :: Lens' WebResourcePatch' (Maybe OAuthToken)
wrpOAuthToken
  = lens _wrpOAuthToken
      (\ s a -> s{_wrpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
wrpFields :: Lens' WebResourcePatch' (Maybe Text)
wrpFields
  = lens _wrpFields (\ s a -> s{_wrpFields = a})

instance GoogleAuth WebResourcePatch' where
        _AuthKey = wrpKey . _Just
        _AuthToken = wrpOAuthToken . _Just

instance GoogleRequest WebResourcePatch' where
        type Rs WebResourcePatch' =
             SiteVerificationWebResourceResource
        request = requestWith siteVerificationRequest
        requestWith rq WebResourcePatch'{..}
          = go _wrpId _wrpQuotaUser (Just _wrpPrettyPrint)
              _wrpUserIP
              _wrpFields
              _wrpKey
              _wrpOAuthToken
              (Just AltJSON)
              _wrpPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy WebResourcePatchResource)
                      rq
