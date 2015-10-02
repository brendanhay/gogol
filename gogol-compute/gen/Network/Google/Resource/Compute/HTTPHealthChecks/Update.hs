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
-- Module      : Network.Google.Resource.Compute.HTTPHealthChecks.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a HttpHealthCheck resource in the specified project using the
-- data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeHTTPHealthChecksUpdate@.
module Network.Google.Resource.Compute.HTTPHealthChecks.Update
    (
    -- * REST Resource
      HttpHealthChecksUpdateResource

    -- * Creating a Request
    , hTTPHealthChecksUpdate'
    , HTTPHealthChecksUpdate'

    -- * Request Lenses
    , httphcuQuotaUser
    , httphcuPrettyPrint
    , httphcuProject
    , httphcuUserIP
    , httphcuKey
    , httphcuHTTPHealthCheck
    , httphcuHTTPHealthCheck
    , httphcuOAuthToken
    , httphcuFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeHTTPHealthChecksUpdate@ which the
-- 'HTTPHealthChecksUpdate'' request conforms to.
type HttpHealthChecksUpdateResource =
     Capture "project" Text :>
       "global" :>
         "httpHealthChecks" :>
           Capture "httpHealthCheck" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] HTTPHealthCheck :>
                             Put '[JSON] Operation

-- | Updates a HttpHealthCheck resource in the specified project using the
-- data included in the request.
--
-- /See:/ 'hTTPHealthChecksUpdate'' smart constructor.
data HTTPHealthChecksUpdate' = HTTPHealthChecksUpdate'
    { _httphcuQuotaUser       :: !(Maybe Text)
    , _httphcuPrettyPrint     :: !Bool
    , _httphcuProject         :: !Text
    , _httphcuUserIP          :: !(Maybe Text)
    , _httphcuKey             :: !(Maybe Key)
    , _httphcuHTTPHealthCheck :: !HTTPHealthCheck
    , _httphcuHTTPHealthCheck :: !Text
    , _httphcuOAuthToken      :: !(Maybe OAuthToken)
    , _httphcuFields          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'HTTPHealthChecksUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httphcuQuotaUser'
--
-- * 'httphcuPrettyPrint'
--
-- * 'httphcuProject'
--
-- * 'httphcuUserIP'
--
-- * 'httphcuKey'
--
-- * 'httphcuHTTPHealthCheck'
--
-- * 'httphcuHTTPHealthCheck'
--
-- * 'httphcuOAuthToken'
--
-- * 'httphcuFields'
hTTPHealthChecksUpdate'
    :: Text -- ^ 'project'
    -> HTTPHealthCheck -- ^ 'HTTPHealthCheck'
    -> Text -- ^ 'httpHealthCheck'
    -> HTTPHealthChecksUpdate'
hTTPHealthChecksUpdate' pHttphcuProject_ pHttphcuHTTPHealthCheck_ pHttphcuHTTPHealthCheck_ =
    HTTPHealthChecksUpdate'
    { _httphcuQuotaUser = Nothing
    , _httphcuPrettyPrint = True
    , _httphcuProject = pHttphcuProject_
    , _httphcuUserIP = Nothing
    , _httphcuKey = Nothing
    , _httphcuHTTPHealthCheck = pHttphcuHTTPHealthCheck_
    , _httphcuHTTPHealthCheck = pHttphcuHTTPHealthCheck_
    , _httphcuOAuthToken = Nothing
    , _httphcuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
httphcuQuotaUser :: Lens' HTTPHealthChecksUpdate' (Maybe Text)
httphcuQuotaUser
  = lens _httphcuQuotaUser
      (\ s a -> s{_httphcuQuotaUser = a})

-- | Returns response with indentations and line breaks.
httphcuPrettyPrint :: Lens' HTTPHealthChecksUpdate' Bool
httphcuPrettyPrint
  = lens _httphcuPrettyPrint
      (\ s a -> s{_httphcuPrettyPrint = a})

-- | Name of the project scoping this request.
httphcuProject :: Lens' HTTPHealthChecksUpdate' Text
httphcuProject
  = lens _httphcuProject
      (\ s a -> s{_httphcuProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
httphcuUserIP :: Lens' HTTPHealthChecksUpdate' (Maybe Text)
httphcuUserIP
  = lens _httphcuUserIP
      (\ s a -> s{_httphcuUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
httphcuKey :: Lens' HTTPHealthChecksUpdate' (Maybe Key)
httphcuKey
  = lens _httphcuKey (\ s a -> s{_httphcuKey = a})

-- | Multipart request metadata.
httphcuHTTPHealthCheck :: Lens' HTTPHealthChecksUpdate' HTTPHealthCheck
httphcuHTTPHealthCheck
  = lens _httphcuHTTPHealthCheck
      (\ s a -> s{_httphcuHTTPHealthCheck = a})

-- | Name of the HttpHealthCheck resource to update.
httphcuHTTPHealthCheck :: Lens' HTTPHealthChecksUpdate' Text
httphcuHTTPHealthCheck
  = lens _httphcuHTTPHealthCheck
      (\ s a -> s{_httphcuHTTPHealthCheck = a})

-- | OAuth 2.0 token for the current user.
httphcuOAuthToken :: Lens' HTTPHealthChecksUpdate' (Maybe OAuthToken)
httphcuOAuthToken
  = lens _httphcuOAuthToken
      (\ s a -> s{_httphcuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
httphcuFields :: Lens' HTTPHealthChecksUpdate' (Maybe Text)
httphcuFields
  = lens _httphcuFields
      (\ s a -> s{_httphcuFields = a})

instance GoogleAuth HTTPHealthChecksUpdate' where
        authKey = httphcuKey . _Just
        authToken = httphcuOAuthToken . _Just

instance GoogleRequest HTTPHealthChecksUpdate' where
        type Rs HTTPHealthChecksUpdate' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u HTTPHealthChecksUpdate'{..}
          = go _httphcuQuotaUser (Just _httphcuPrettyPrint)
              _httphcuProject
              _httphcuUserIP
              _httphcuKey
              _httphcuHTTPHealthCheck
              _httphcuOAuthToken
              _httphcuFields
              (Just AltJSON)
              _httphcuHTTPHealthCheck
          where go
                  = clientWithRoute
                      (Proxy :: Proxy HttpHealthChecksUpdateResource)
                      r
                      u
