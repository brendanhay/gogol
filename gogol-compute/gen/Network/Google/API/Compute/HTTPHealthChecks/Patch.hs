{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.HTTPHealthChecks.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a HttpHealthCheck resource in the specified project using the
-- data included in the request. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.httpHealthChecks.patch@.
module Network.Google.API.Compute.HTTPHealthChecks.Patch
    (
    -- * REST Resource
      HTTPHealthChecksPatchAPI

    -- * Creating a Request
    , hTTPHealthChecksPatch'
    , HTTPHealthChecksPatch'

    -- * Request Lenses
    , httphcpQuotaUser
    , httphcpPrettyPrint
    , httphcpProject
    , httphcpUserIp
    , httphcpKey
    , httphcpHttpHealthCheck
    , httphcpOauthToken
    , httphcpFields
    , httphcpAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.httpHealthChecks.patch which the
-- 'HTTPHealthChecksPatch'' request conforms to.
type HTTPHealthChecksPatchAPI =
     Capture "project" Text :>
       "global" :>
         "httpHealthChecks" :>
           Capture "httpHealthCheck" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Patch '[JSON] Operation

-- | Updates a HttpHealthCheck resource in the specified project using the
-- data included in the request. This method supports patch semantics.
--
-- /See:/ 'hTTPHealthChecksPatch'' smart constructor.
data HTTPHealthChecksPatch' = HTTPHealthChecksPatch'
    { _httphcpQuotaUser       :: !(Maybe Text)
    , _httphcpPrettyPrint     :: !Bool
    , _httphcpProject         :: !Text
    , _httphcpUserIp          :: !(Maybe Text)
    , _httphcpKey             :: !(Maybe Text)
    , _httphcpHttpHealthCheck :: !Text
    , _httphcpOauthToken      :: !(Maybe Text)
    , _httphcpFields          :: !(Maybe Text)
    , _httphcpAlt             :: !Alt
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
-- * 'httphcpUserIp'
--
-- * 'httphcpKey'
--
-- * 'httphcpHttpHealthCheck'
--
-- * 'httphcpOauthToken'
--
-- * 'httphcpFields'
--
-- * 'httphcpAlt'
hTTPHealthChecksPatch'
    :: Text -- ^ 'project'
    -> Text -- ^ 'httpHealthCheck'
    -> HTTPHealthChecksPatch'
hTTPHealthChecksPatch' pHttphcpProject_ pHttphcpHttpHealthCheck_ =
    HTTPHealthChecksPatch'
    { _httphcpQuotaUser = Nothing
    , _httphcpPrettyPrint = True
    , _httphcpProject = pHttphcpProject_
    , _httphcpUserIp = Nothing
    , _httphcpKey = Nothing
    , _httphcpHttpHealthCheck = pHttphcpHttpHealthCheck_
    , _httphcpOauthToken = Nothing
    , _httphcpFields = Nothing
    , _httphcpAlt = JSON
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
httphcpUserIp :: Lens' HTTPHealthChecksPatch' (Maybe Text)
httphcpUserIp
  = lens _httphcpUserIp
      (\ s a -> s{_httphcpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
httphcpKey :: Lens' HTTPHealthChecksPatch' (Maybe Text)
httphcpKey
  = lens _httphcpKey (\ s a -> s{_httphcpKey = a})

-- | Name of the HttpHealthCheck resource to update.
httphcpHttpHealthCheck :: Lens' HTTPHealthChecksPatch' Text
httphcpHttpHealthCheck
  = lens _httphcpHttpHealthCheck
      (\ s a -> s{_httphcpHttpHealthCheck = a})

-- | OAuth 2.0 token for the current user.
httphcpOauthToken :: Lens' HTTPHealthChecksPatch' (Maybe Text)
httphcpOauthToken
  = lens _httphcpOauthToken
      (\ s a -> s{_httphcpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
httphcpFields :: Lens' HTTPHealthChecksPatch' (Maybe Text)
httphcpFields
  = lens _httphcpFields
      (\ s a -> s{_httphcpFields = a})

-- | Data format for the response.
httphcpAlt :: Lens' HTTPHealthChecksPatch' Alt
httphcpAlt
  = lens _httphcpAlt (\ s a -> s{_httphcpAlt = a})

instance GoogleRequest HTTPHealthChecksPatch' where
        type Rs HTTPHealthChecksPatch' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u HTTPHealthChecksPatch'{..}
          = go _httphcpQuotaUser (Just _httphcpPrettyPrint)
              _httphcpProject
              _httphcpUserIp
              _httphcpKey
              _httphcpHttpHealthCheck
              _httphcpOauthToken
              _httphcpFields
              (Just _httphcpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy HTTPHealthChecksPatchAPI)
                      r
                      u
