{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.HTTPHealthChecks.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified HttpHealthCheck resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.httpHealthChecks.delete@.
module Network.Google.API.Compute.HTTPHealthChecks.Delete
    (
    -- * REST Resource
      HTTPHealthChecksDeleteAPI

    -- * Creating a Request
    , hTTPHealthChecksDelete'
    , HTTPHealthChecksDelete'

    -- * Request Lenses
    , httphcdQuotaUser
    , httphcdPrettyPrint
    , httphcdProject
    , httphcdUserIp
    , httphcdKey
    , httphcdHttpHealthCheck
    , httphcdOauthToken
    , httphcdFields
    , httphcdAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.httpHealthChecks.delete which the
-- 'HTTPHealthChecksDelete'' request conforms to.
type HTTPHealthChecksDeleteAPI =
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
                         QueryParam "alt" Alt :> Delete '[JSON] Operation

-- | Deletes the specified HttpHealthCheck resource.
--
-- /See:/ 'hTTPHealthChecksDelete'' smart constructor.
data HTTPHealthChecksDelete' = HTTPHealthChecksDelete'
    { _httphcdQuotaUser       :: !(Maybe Text)
    , _httphcdPrettyPrint     :: !Bool
    , _httphcdProject         :: !Text
    , _httphcdUserIp          :: !(Maybe Text)
    , _httphcdKey             :: !(Maybe Text)
    , _httphcdHttpHealthCheck :: !Text
    , _httphcdOauthToken      :: !(Maybe Text)
    , _httphcdFields          :: !(Maybe Text)
    , _httphcdAlt             :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'HTTPHealthChecksDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httphcdQuotaUser'
--
-- * 'httphcdPrettyPrint'
--
-- * 'httphcdProject'
--
-- * 'httphcdUserIp'
--
-- * 'httphcdKey'
--
-- * 'httphcdHttpHealthCheck'
--
-- * 'httphcdOauthToken'
--
-- * 'httphcdFields'
--
-- * 'httphcdAlt'
hTTPHealthChecksDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'httpHealthCheck'
    -> HTTPHealthChecksDelete'
hTTPHealthChecksDelete' pHttphcdProject_ pHttphcdHttpHealthCheck_ =
    HTTPHealthChecksDelete'
    { _httphcdQuotaUser = Nothing
    , _httphcdPrettyPrint = True
    , _httphcdProject = pHttphcdProject_
    , _httphcdUserIp = Nothing
    , _httphcdKey = Nothing
    , _httphcdHttpHealthCheck = pHttphcdHttpHealthCheck_
    , _httphcdOauthToken = Nothing
    , _httphcdFields = Nothing
    , _httphcdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
httphcdQuotaUser :: Lens' HTTPHealthChecksDelete' (Maybe Text)
httphcdQuotaUser
  = lens _httphcdQuotaUser
      (\ s a -> s{_httphcdQuotaUser = a})

-- | Returns response with indentations and line breaks.
httphcdPrettyPrint :: Lens' HTTPHealthChecksDelete' Bool
httphcdPrettyPrint
  = lens _httphcdPrettyPrint
      (\ s a -> s{_httphcdPrettyPrint = a})

-- | Name of the project scoping this request.
httphcdProject :: Lens' HTTPHealthChecksDelete' Text
httphcdProject
  = lens _httphcdProject
      (\ s a -> s{_httphcdProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
httphcdUserIp :: Lens' HTTPHealthChecksDelete' (Maybe Text)
httphcdUserIp
  = lens _httphcdUserIp
      (\ s a -> s{_httphcdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
httphcdKey :: Lens' HTTPHealthChecksDelete' (Maybe Text)
httphcdKey
  = lens _httphcdKey (\ s a -> s{_httphcdKey = a})

-- | Name of the HttpHealthCheck resource to delete.
httphcdHttpHealthCheck :: Lens' HTTPHealthChecksDelete' Text
httphcdHttpHealthCheck
  = lens _httphcdHttpHealthCheck
      (\ s a -> s{_httphcdHttpHealthCheck = a})

-- | OAuth 2.0 token for the current user.
httphcdOauthToken :: Lens' HTTPHealthChecksDelete' (Maybe Text)
httphcdOauthToken
  = lens _httphcdOauthToken
      (\ s a -> s{_httphcdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
httphcdFields :: Lens' HTTPHealthChecksDelete' (Maybe Text)
httphcdFields
  = lens _httphcdFields
      (\ s a -> s{_httphcdFields = a})

-- | Data format for the response.
httphcdAlt :: Lens' HTTPHealthChecksDelete' Alt
httphcdAlt
  = lens _httphcdAlt (\ s a -> s{_httphcdAlt = a})

instance GoogleRequest HTTPHealthChecksDelete' where
        type Rs HTTPHealthChecksDelete' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u HTTPHealthChecksDelete'{..}
          = go _httphcdQuotaUser (Just _httphcdPrettyPrint)
              _httphcdProject
              _httphcdUserIp
              _httphcdKey
              _httphcdHttpHealthCheck
              _httphcdOauthToken
              _httphcdFields
              (Just _httphcdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy HTTPHealthChecksDeleteAPI)
                      r
                      u
