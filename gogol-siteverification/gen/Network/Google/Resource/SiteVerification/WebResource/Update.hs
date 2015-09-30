{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module SiteVerification.WebResource.Update
    (
    -- * REST Resource
      WebResourceUpdateAPI

    -- * Creating a Request
    , webResourceUpdate
    , WebResourceUpdate

    -- * Request Lenses
    , wruQuotaUser
    , wruPrettyPrint
    , wruUserIp
    , wruKey
    , wruId
    , wruOauthToken
    , wruFields
    , wruAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.SiteVerification.Types

-- | A resource alias for @SiteVerificationWebResourceUpdate@ which the
-- 'WebResourceUpdate' request conforms to.
type WebResourceUpdateAPI =
     "webResource" :>
       Capture "id" Text :>
         Put '[JSON] SiteVerificationWebResourceResource

-- | Modify the list of owners for your website or domain.
--
-- /See:/ 'webResourceUpdate' smart constructor.
data WebResourceUpdate = WebResourceUpdate
    { _wruQuotaUser   :: !(Maybe Text)
    , _wruPrettyPrint :: !Bool
    , _wruUserIp      :: !(Maybe Text)
    , _wruKey         :: !(Maybe Text)
    , _wruId          :: !Text
    , _wruOauthToken  :: !(Maybe Text)
    , _wruFields      :: !(Maybe Text)
    , _wruAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WebResourceUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wruQuotaUser'
--
-- * 'wruPrettyPrint'
--
-- * 'wruUserIp'
--
-- * 'wruKey'
--
-- * 'wruId'
--
-- * 'wruOauthToken'
--
-- * 'wruFields'
--
-- * 'wruAlt'
webResourceUpdate
    :: Text -- ^ 'id'
    -> WebResourceUpdate
webResourceUpdate pWruId_ =
    WebResourceUpdate
    { _wruQuotaUser = Nothing
    , _wruPrettyPrint = False
    , _wruUserIp = Nothing
    , _wruKey = Nothing
    , _wruId = pWruId_
    , _wruOauthToken = Nothing
    , _wruFields = Nothing
    , _wruAlt = "json"
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
wruUserIp :: Lens' WebResourceUpdate' (Maybe Text)
wruUserIp
  = lens _wruUserIp (\ s a -> s{_wruUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
wruKey :: Lens' WebResourceUpdate' (Maybe Text)
wruKey = lens _wruKey (\ s a -> s{_wruKey = a})

-- | The id of a verified site or domain.
wruId :: Lens' WebResourceUpdate' Text
wruId = lens _wruId (\ s a -> s{_wruId = a})

-- | OAuth 2.0 token for the current user.
wruOauthToken :: Lens' WebResourceUpdate' (Maybe Text)
wruOauthToken
  = lens _wruOauthToken
      (\ s a -> s{_wruOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
wruFields :: Lens' WebResourceUpdate' (Maybe Text)
wruFields
  = lens _wruFields (\ s a -> s{_wruFields = a})

-- | Data format for the response.
wruAlt :: Lens' WebResourceUpdate' Text
wruAlt = lens _wruAlt (\ s a -> s{_wruAlt = a})

instance GoogleRequest WebResourceUpdate' where
        type Rs WebResourceUpdate' =
             SiteVerificationWebResourceResource
        request = requestWithRoute defReq siteVerificationURL
        requestWithRoute r u WebResourceUpdate{..}
          = go _wruQuotaUser _wruPrettyPrint _wruUserIp _wruKey
              _wruId
              _wruOauthToken
              _wruFields
              _wruAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy WebResourceUpdateAPI)
                      r
                      u
