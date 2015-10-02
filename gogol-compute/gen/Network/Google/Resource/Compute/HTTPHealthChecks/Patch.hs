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
-- Module      : Network.Google.Resource.Compute.HTTPHealthChecks.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a HttpHealthCheck resource in the specified project using the
-- data included in the request. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeHTTPHealthChecksPatch@.
module Network.Google.Resource.Compute.HTTPHealthChecks.Patch
    (
    -- * REST Resource
      HTTPHealthChecksPatchResource

    -- * Creating a Request
    , hTTPHealthChecksPatch'
    , HTTPHealthChecksPatch'

    -- * Request Lenses
    , httphcpQuotaUser
    , httphcpPrettyPrint
    , httphcpProject
    , httphcpUserIP
    , httphcpKey
    , httphcpHTTPHealthCheck
    , httphcpHTTPHealthCheck
    , httphcpOAuthToken
    , httphcpFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeHTTPHealthChecksPatch@ which the
-- 'HTTPHealthChecksPatch'' request conforms to.
type HTTPHealthChecksPatchResource =
     Capture "project" Text :>
       "global" :>
         "httpHealthChecks" :>
           Capture "httpHealthCheck" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] HTTPHealthCheck :>
                             Patch '[JSON] Operation

-- | Updates a HttpHealthCheck resource in the specified project using the
-- data included in the request. This method supports patch semantics.
--
-- /See:/ 'hTTPHealthChecksPatch'' smart constructor.
data HTTPHealthChecksPatch' = HTTPHealthChecksPatch'
    { _httphcpQuotaUser       :: !(Maybe Text)
    , _httphcpPrettyPrint     :: !Bool
    , _httphcpProject         :: !Text
    , _httphcpUserIP          :: !(Maybe Text)
    , _httphcpKey             :: !(Maybe Key)
    , _httphcpHTTPHealthCheck :: !HTTPHealthCheck
    , _httphcpHTTPHealthCheck :: !Text
    , _httphcpOAuthToken      :: !(Maybe OAuthToken)
    , _httphcpFields          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'HTTPHealthChecksPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httphcpQuotaUser'
--
-- * 'httphcpPrettyPrint'
--
-- * 'httphcpProject'
--
-- * 'httphcpUserIP'
--
-- * 'httphcpKey'
--
-- * 'httphcpHTTPHealthCheck'
--
-- * 'httphcpHTTPHealthCheck'
--
-- * 'httphcpOAuthToken'
--
-- * 'httphcpFields'
hTTPHealthChecksPatch'
    :: Text -- ^ 'project'
    -> HTTPHealthCheck -- ^ 'HTTPHealthCheck'
    -> Text -- ^ 'httpHealthCheck'
    -> HTTPHealthChecksPatch'
hTTPHealthChecksPatch' pHttphcpProject_ pHttphcpHTTPHealthCheck_ pHttphcpHTTPHealthCheck_ =
    HTTPHealthChecksPatch'
    { _httphcpQuotaUser = Nothing
    , _httphcpPrettyPrint = True
    , _httphcpProject = pHttphcpProject_
    , _httphcpUserIP = Nothing
    , _httphcpKey = Nothing
    , _httphcpHTTPHealthCheck = pHttphcpHTTPHealthCheck_
    , _httphcpHTTPHealthCheck = pHttphcpHTTPHealthCheck_
    , _httphcpOAuthToken = Nothing
    , _httphcpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
httphcpQuotaUser :: Lens' HTTPHealthChecksPatch' (Maybe Text)
httphcpQuotaUser
  = lens _httphcpQuotaUser
      (\ s a -> s{_httphcpQuotaUser = a})

-- | Returns response with indentations and line breaks.
httphcpPrettyPrint :: Lens' HTTPHealthChecksPatch' Bool
httphcpPrettyPrint
  = lens _httphcpPrettyPrint
      (\ s a -> s{_httphcpPrettyPrint = a})

-- | Name of the project scoping this request.
httphcpProject :: Lens' HTTPHealthChecksPatch' Text
httphcpProject
  = lens _httphcpProject
      (\ s a -> s{_httphcpProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
httphcpUserIP :: Lens' HTTPHealthChecksPatch' (Maybe Text)
httphcpUserIP
  = lens _httphcpUserIP
      (\ s a -> s{_httphcpUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
httphcpKey :: Lens' HTTPHealthChecksPatch' (Maybe Key)
httphcpKey
  = lens _httphcpKey (\ s a -> s{_httphcpKey = a})

-- | Multipart request metadata.
httphcpHTTPHealthCheck :: Lens' HTTPHealthChecksPatch' HTTPHealthCheck
httphcpHTTPHealthCheck
  = lens _httphcpHTTPHealthCheck
      (\ s a -> s{_httphcpHTTPHealthCheck = a})

-- | Name of the HttpHealthCheck resource to update.
httphcpHTTPHealthCheck :: Lens' HTTPHealthChecksPatch' Text
httphcpHTTPHealthCheck
  = lens _httphcpHTTPHealthCheck
      (\ s a -> s{_httphcpHTTPHealthCheck = a})

-- | OAuth 2.0 token for the current user.
httphcpOAuthToken :: Lens' HTTPHealthChecksPatch' (Maybe OAuthToken)
httphcpOAuthToken
  = lens _httphcpOAuthToken
      (\ s a -> s{_httphcpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
httphcpFields :: Lens' HTTPHealthChecksPatch' (Maybe Text)
httphcpFields
  = lens _httphcpFields
      (\ s a -> s{_httphcpFields = a})

instance GoogleAuth HTTPHealthChecksPatch' where
        authKey = httphcpKey . _Just
        authToken = httphcpOAuthToken . _Just

instance GoogleRequest HTTPHealthChecksPatch' where
        type Rs HTTPHealthChecksPatch' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u HTTPHealthChecksPatch'{..}
          = go _httphcpProject _httphcpHTTPHealthCheck
              _httphcpQuotaUser
              (Just _httphcpPrettyPrint)
              _httphcpUserIP
              _httphcpFields
              _httphcpKey
              _httphcpOAuthToken
              (Just AltJSON)
              _httphcpHTTPHealthCheck
          where go
                  = clientWithRoute
                      (Proxy :: Proxy HTTPHealthChecksPatchResource)
                      r
                      u
