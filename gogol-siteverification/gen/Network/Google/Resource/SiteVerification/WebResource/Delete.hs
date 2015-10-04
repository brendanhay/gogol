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
-- Module      : Network.Google.Resource.SiteVerification.WebResource.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Relinquish ownership of a website or domain.
--
-- /See:/ <https://developers.google.com/site-verification/ Google Site Verification API Reference> for @SiteVerificationWebResourceDelete@.
module Network.Google.Resource.SiteVerification.WebResource.Delete
    (
    -- * REST Resource
      WebResourceDeleteResource

    -- * Creating a Request
    , webResourceDelete'
    , WebResourceDelete'

    -- * Request Lenses
    , wrdQuotaUser
    , wrdPrettyPrint
    , wrdUserIP
    , wrdKey
    , wrdId
    , wrdOAuthToken
    , wrdFields
    ) where

import           Network.Google.Prelude
import           Network.Google.SiteVerification.Types

-- | A resource alias for @SiteVerificationWebResourceDelete@ which the
-- 'WebResourceDelete'' request conforms to.
type WebResourceDeleteResource =
     "webResource" :>
       Capture "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Relinquish ownership of a website or domain.
--
-- /See:/ 'webResourceDelete'' smart constructor.
data WebResourceDelete' = WebResourceDelete'
    { _wrdQuotaUser   :: !(Maybe Text)
    , _wrdPrettyPrint :: !Bool
    , _wrdUserIP      :: !(Maybe Text)
    , _wrdKey         :: !(Maybe Key)
    , _wrdId          :: !Text
    , _wrdOAuthToken  :: !(Maybe OAuthToken)
    , _wrdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WebResourceDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wrdQuotaUser'
--
-- * 'wrdPrettyPrint'
--
-- * 'wrdUserIP'
--
-- * 'wrdKey'
--
-- * 'wrdId'
--
-- * 'wrdOAuthToken'
--
-- * 'wrdFields'
webResourceDelete'
    :: Text -- ^ 'id'
    -> WebResourceDelete'
webResourceDelete' pWrdId_ =
    WebResourceDelete'
    { _wrdQuotaUser = Nothing
    , _wrdPrettyPrint = False
    , _wrdUserIP = Nothing
    , _wrdKey = Nothing
    , _wrdId = pWrdId_
    , _wrdOAuthToken = Nothing
    , _wrdFields = Nothing
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
wrdUserIP :: Lens' WebResourceDelete' (Maybe Text)
wrdUserIP
  = lens _wrdUserIP (\ s a -> s{_wrdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
wrdKey :: Lens' WebResourceDelete' (Maybe Key)
wrdKey = lens _wrdKey (\ s a -> s{_wrdKey = a})

-- | The id of a verified site or domain.
wrdId :: Lens' WebResourceDelete' Text
wrdId = lens _wrdId (\ s a -> s{_wrdId = a})

-- | OAuth 2.0 token for the current user.
wrdOAuthToken :: Lens' WebResourceDelete' (Maybe OAuthToken)
wrdOAuthToken
  = lens _wrdOAuthToken
      (\ s a -> s{_wrdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
wrdFields :: Lens' WebResourceDelete' (Maybe Text)
wrdFields
  = lens _wrdFields (\ s a -> s{_wrdFields = a})

instance GoogleAuth WebResourceDelete' where
        authKey = wrdKey . _Just
        authToken = wrdOAuthToken . _Just

instance GoogleRequest WebResourceDelete' where
        type Rs WebResourceDelete' = ()
        request = requestWithRoute defReq siteVerificationURL
        requestWithRoute r u WebResourceDelete'{..}
          = go _wrdId _wrdQuotaUser (Just _wrdPrettyPrint)
              _wrdUserIP
              _wrdFields
              _wrdKey
              _wrdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy WebResourceDeleteResource)
                      r
                      u
