{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.SiteVerification.WebResource.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Relinquish ownership of a website or domain.
--
-- /See:/ <https://developers.google.com/site-verification/ Google Site Verification API Reference> for @siteVerification.webResource.delete@.
module Network.Google.API.SiteVerification.WebResource.Delete
    (
    -- * REST Resource
      WebResourceDeleteAPI

    -- * Creating a Request
    , webResourceDelete'
    , WebResourceDelete'

    -- * Request Lenses
    , wrdQuotaUser
    , wrdPrettyPrint
    , wrdUserIp
    , wrdKey
    , wrdId
    , wrdOauthToken
    , wrdFields
    , wrdAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.SiteVerification.Types

-- | A resource alias for siteVerification.webResource.delete which the
-- 'WebResourceDelete'' request conforms to.
type WebResourceDeleteAPI =
     "webResource" :>
       Capture "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Relinquish ownership of a website or domain.
--
-- /See:/ 'webResourceDelete'' smart constructor.
data WebResourceDelete' = WebResourceDelete'
    { _wrdQuotaUser   :: !(Maybe Text)
    , _wrdPrettyPrint :: !Bool
    , _wrdUserIp      :: !(Maybe Text)
    , _wrdKey         :: !(Maybe Text)
    , _wrdId          :: !Text
    , _wrdOauthToken  :: !(Maybe Text)
    , _wrdFields      :: !(Maybe Text)
    , _wrdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WebResourceDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wrdQuotaUser'
--
-- * 'wrdPrettyPrint'
--
-- * 'wrdUserIp'
--
-- * 'wrdKey'
--
-- * 'wrdId'
--
-- * 'wrdOauthToken'
--
-- * 'wrdFields'
--
-- * 'wrdAlt'
webResourceDelete'
    :: Text -- ^ 'id'
    -> WebResourceDelete'
webResourceDelete' pWrdId_ =
    WebResourceDelete'
    { _wrdQuotaUser = Nothing
    , _wrdPrettyPrint = False
    , _wrdUserIp = Nothing
    , _wrdKey = Nothing
    , _wrdId = pWrdId_
    , _wrdOauthToken = Nothing
    , _wrdFields = Nothing
    , _wrdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
wrdQuotaUser :: Lens' WebResourceDelete' (Maybe Text)
wrdQuotaUser
  = lens _wrdQuotaUser (\ s a -> s{_wrdQuotaUser = a})

-- | Returns response with indentations and line breaks.
wrdPrettyPrint :: Lens' WebResourceDelete' Bool
wrdPrettyPrint
  = lens _wrdPrettyPrint
      (\ s a -> s{_wrdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
wrdUserIp :: Lens' WebResourceDelete' (Maybe Text)
wrdUserIp
  = lens _wrdUserIp (\ s a -> s{_wrdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
wrdKey :: Lens' WebResourceDelete' (Maybe Text)
wrdKey = lens _wrdKey (\ s a -> s{_wrdKey = a})

-- | The id of a verified site or domain.
wrdId :: Lens' WebResourceDelete' Text
wrdId = lens _wrdId (\ s a -> s{_wrdId = a})

-- | OAuth 2.0 token for the current user.
wrdOauthToken :: Lens' WebResourceDelete' (Maybe Text)
wrdOauthToken
  = lens _wrdOauthToken
      (\ s a -> s{_wrdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
wrdFields :: Lens' WebResourceDelete' (Maybe Text)
wrdFields
  = lens _wrdFields (\ s a -> s{_wrdFields = a})

-- | Data format for the response.
wrdAlt :: Lens' WebResourceDelete' Alt
wrdAlt = lens _wrdAlt (\ s a -> s{_wrdAlt = a})

instance GoogleRequest WebResourceDelete' where
        type Rs WebResourceDelete' = ()
        request = requestWithRoute defReq siteVerificationURL
        requestWithRoute r u WebResourceDelete'{..}
          = go _wrdQuotaUser (Just _wrdPrettyPrint) _wrdUserIp
              _wrdKey
              _wrdId
              _wrdOauthToken
              _wrdFields
              (Just _wrdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy WebResourceDeleteAPI)
                      r
                      u
