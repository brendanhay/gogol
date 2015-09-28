{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.HTTPHealthChecks.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a HttpHealthCheck resource in the specified project using the
-- data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.httpHealthChecks.update@.
module Network.Google.API.Compute.HTTPHealthChecks.Update
    (
    -- * REST Resource
      HTTPHealthChecksUpdateAPI

    -- * Creating a Request
    , hTTPHealthChecksUpdate'
    , HTTPHealthChecksUpdate'

    -- * Request Lenses
    , httphcuQuotaUser
    , httphcuPrettyPrint
    , httphcuProject
    , httphcuUserIp
    , httphcuKey
    , httphcuHttpHealthCheck
    , httphcuOauthToken
    , httphcuFields
    , httphcuAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.httpHealthChecks.update which the
-- 'HTTPHealthChecksUpdate'' request conforms to.
type HTTPHealthChecksUpdateAPI =
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
                         QueryParam "alt" Alt :> Put '[JSON] Operation

-- | Updates a HttpHealthCheck resource in the specified project using the
-- data included in the request.
--
-- /See:/ 'hTTPHealthChecksUpdate'' smart constructor.
data HTTPHealthChecksUpdate' = HTTPHealthChecksUpdate'
    { _httphcuQuotaUser       :: !(Maybe Text)
    , _httphcuPrettyPrint     :: !Bool
    , _httphcuProject         :: !Text
    , _httphcuUserIp          :: !(Maybe Text)
    , _httphcuKey             :: !(Maybe Text)
    , _httphcuHttpHealthCheck :: !Text
    , _httphcuOauthToken      :: !(Maybe Text)
    , _httphcuFields          :: !(Maybe Text)
    , _httphcuAlt             :: !Alt
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
-- * 'httphcuUserIp'
--
-- * 'httphcuKey'
--
-- * 'httphcuHttpHealthCheck'
--
-- * 'httphcuOauthToken'
--
-- * 'httphcuFields'
--
-- * 'httphcuAlt'
hTTPHealthChecksUpdate'
    :: Text -- ^ 'project'
    -> Text -- ^ 'httpHealthCheck'
    -> HTTPHealthChecksUpdate'
hTTPHealthChecksUpdate' pHttphcuProject_ pHttphcuHttpHealthCheck_ =
    HTTPHealthChecksUpdate'
    { _httphcuQuotaUser = Nothing
    , _httphcuPrettyPrint = True
    , _httphcuProject = pHttphcuProject_
    , _httphcuUserIp = Nothing
    , _httphcuKey = Nothing
    , _httphcuHttpHealthCheck = pHttphcuHttpHealthCheck_
    , _httphcuOauthToken = Nothing
    , _httphcuFields = Nothing
    , _httphcuAlt = JSON
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
httphcuUserIp :: Lens' HTTPHealthChecksUpdate' (Maybe Text)
httphcuUserIp
  = lens _httphcuUserIp
      (\ s a -> s{_httphcuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
httphcuKey :: Lens' HTTPHealthChecksUpdate' (Maybe Text)
httphcuKey
  = lens _httphcuKey (\ s a -> s{_httphcuKey = a})

-- | Name of the HttpHealthCheck resource to update.
httphcuHttpHealthCheck :: Lens' HTTPHealthChecksUpdate' Text
httphcuHttpHealthCheck
  = lens _httphcuHttpHealthCheck
      (\ s a -> s{_httphcuHttpHealthCheck = a})

-- | OAuth 2.0 token for the current user.
httphcuOauthToken :: Lens' HTTPHealthChecksUpdate' (Maybe Text)
httphcuOauthToken
  = lens _httphcuOauthToken
      (\ s a -> s{_httphcuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
httphcuFields :: Lens' HTTPHealthChecksUpdate' (Maybe Text)
httphcuFields
  = lens _httphcuFields
      (\ s a -> s{_httphcuFields = a})

-- | Data format for the response.
httphcuAlt :: Lens' HTTPHealthChecksUpdate' Alt
httphcuAlt
  = lens _httphcuAlt (\ s a -> s{_httphcuAlt = a})

instance GoogleRequest HTTPHealthChecksUpdate' where
        type Rs HTTPHealthChecksUpdate' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u HTTPHealthChecksUpdate'{..}
          = go _httphcuQuotaUser (Just _httphcuPrettyPrint)
              _httphcuProject
              _httphcuUserIp
              _httphcuKey
              _httphcuHttpHealthCheck
              _httphcuOauthToken
              _httphcuFields
              (Just _httphcuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy HTTPHealthChecksUpdateAPI)
                      r
                      u
