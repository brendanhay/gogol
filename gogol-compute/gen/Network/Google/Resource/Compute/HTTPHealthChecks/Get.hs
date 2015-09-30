{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.HTTPHealthChecks.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified HttpHealthCheck resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeHTTPHealthChecksGet@.
module Compute.HTTPHealthChecks.Get
    (
    -- * REST Resource
      HttpHealthChecksGetAPI

    -- * Creating a Request
    , hTTPHealthChecksGet
    , HTTPHealthChecksGet

    -- * Request Lenses
    , httphcgQuotaUser
    , httphcgPrettyPrint
    , httphcgProject
    , httphcgUserIp
    , httphcgKey
    , httphcgHttpHealthCheck
    , httphcgOauthToken
    , httphcgFields
    , httphcgAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeHTTPHealthChecksGet@ which the
-- 'HTTPHealthChecksGet' request conforms to.
type HttpHealthChecksGetAPI =
     Capture "project" Text :>
       "global" :>
         "httpHealthChecks" :>
           Capture "httpHealthCheck" Text :>
             Get '[JSON] HTTPHealthCheck

-- | Returns the specified HttpHealthCheck resource.
--
-- /See:/ 'hTTPHealthChecksGet' smart constructor.
data HTTPHealthChecksGet = HTTPHealthChecksGet
    { _httphcgQuotaUser       :: !(Maybe Text)
    , _httphcgPrettyPrint     :: !Bool
    , _httphcgProject         :: !Text
    , _httphcgUserIp          :: !(Maybe Text)
    , _httphcgKey             :: !(Maybe Text)
    , _httphcgHttpHealthCheck :: !Text
    , _httphcgOauthToken      :: !(Maybe Text)
    , _httphcgFields          :: !(Maybe Text)
    , _httphcgAlt             :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'HTTPHealthChecksGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httphcgQuotaUser'
--
-- * 'httphcgPrettyPrint'
--
-- * 'httphcgProject'
--
-- * 'httphcgUserIp'
--
-- * 'httphcgKey'
--
-- * 'httphcgHttpHealthCheck'
--
-- * 'httphcgOauthToken'
--
-- * 'httphcgFields'
--
-- * 'httphcgAlt'
hTTPHealthChecksGet
    :: Text -- ^ 'project'
    -> Text -- ^ 'httpHealthCheck'
    -> HTTPHealthChecksGet
hTTPHealthChecksGet pHttphcgProject_ pHttphcgHttpHealthCheck_ =
    HTTPHealthChecksGet
    { _httphcgQuotaUser = Nothing
    , _httphcgPrettyPrint = True
    , _httphcgProject = pHttphcgProject_
    , _httphcgUserIp = Nothing
    , _httphcgKey = Nothing
    , _httphcgHttpHealthCheck = pHttphcgHttpHealthCheck_
    , _httphcgOauthToken = Nothing
    , _httphcgFields = Nothing
    , _httphcgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
httphcgQuotaUser :: Lens' HTTPHealthChecksGet' (Maybe Text)
httphcgQuotaUser
  = lens _httphcgQuotaUser
      (\ s a -> s{_httphcgQuotaUser = a})

-- | Returns response with indentations and line breaks.
httphcgPrettyPrint :: Lens' HTTPHealthChecksGet' Bool
httphcgPrettyPrint
  = lens _httphcgPrettyPrint
      (\ s a -> s{_httphcgPrettyPrint = a})

-- | Name of the project scoping this request.
httphcgProject :: Lens' HTTPHealthChecksGet' Text
httphcgProject
  = lens _httphcgProject
      (\ s a -> s{_httphcgProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
httphcgUserIp :: Lens' HTTPHealthChecksGet' (Maybe Text)
httphcgUserIp
  = lens _httphcgUserIp
      (\ s a -> s{_httphcgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
httphcgKey :: Lens' HTTPHealthChecksGet' (Maybe Text)
httphcgKey
  = lens _httphcgKey (\ s a -> s{_httphcgKey = a})

-- | Name of the HttpHealthCheck resource to return.
httphcgHttpHealthCheck :: Lens' HTTPHealthChecksGet' Text
httphcgHttpHealthCheck
  = lens _httphcgHttpHealthCheck
      (\ s a -> s{_httphcgHttpHealthCheck = a})

-- | OAuth 2.0 token for the current user.
httphcgOauthToken :: Lens' HTTPHealthChecksGet' (Maybe Text)
httphcgOauthToken
  = lens _httphcgOauthToken
      (\ s a -> s{_httphcgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
httphcgFields :: Lens' HTTPHealthChecksGet' (Maybe Text)
httphcgFields
  = lens _httphcgFields
      (\ s a -> s{_httphcgFields = a})

-- | Data format for the response.
httphcgAlt :: Lens' HTTPHealthChecksGet' Text
httphcgAlt
  = lens _httphcgAlt (\ s a -> s{_httphcgAlt = a})

instance GoogleRequest HTTPHealthChecksGet' where
        type Rs HTTPHealthChecksGet' = HTTPHealthCheck
        request = requestWithRoute defReq computeURL
        requestWithRoute r u HTTPHealthChecksGet{..}
          = go _httphcgQuotaUser _httphcgPrettyPrint
              _httphcgProject
              _httphcgUserIp
              _httphcgKey
              _httphcgHttpHealthCheck
              _httphcgOauthToken
              _httphcgFields
              _httphcgAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy HttpHealthChecksGetAPI)
                      r
                      u
