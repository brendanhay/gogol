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
-- Module      : Network.Google.Resource.Compute.HTTPHealthChecks.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified HttpHealthCheck resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeHTTPHealthChecksDelete@.
module Network.Google.Resource.Compute.HTTPHealthChecks.Delete
    (
    -- * REST Resource
      HTTPHealthChecksDeleteResource

    -- * Creating a Request
    , hTTPHealthChecksDelete'
    , HTTPHealthChecksDelete'

    -- * Request Lenses
    , httphcdQuotaUser
    , httphcdPrettyPrint
    , httphcdProject
    , httphcdUserIP
    , httphcdKey
    , httphcdHTTPHealthCheck
    , httphcdOAuthToken
    , httphcdFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeHTTPHealthChecksDelete@ which the
-- 'HTTPHealthChecksDelete'' request conforms to.
type HTTPHealthChecksDeleteResource =
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
                         QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified HttpHealthCheck resource.
--
-- /See:/ 'hTTPHealthChecksDelete'' smart constructor.
data HTTPHealthChecksDelete' = HTTPHealthChecksDelete'
    { _httphcdQuotaUser       :: !(Maybe Text)
    , _httphcdPrettyPrint     :: !Bool
    , _httphcdProject         :: !Text
    , _httphcdUserIP          :: !(Maybe Text)
    , _httphcdKey             :: !(Maybe Key)
    , _httphcdHTTPHealthCheck :: !Text
    , _httphcdOAuthToken      :: !(Maybe OAuthToken)
    , _httphcdFields          :: !(Maybe Text)
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
-- * 'httphcdUserIP'
--
-- * 'httphcdKey'
--
-- * 'httphcdHTTPHealthCheck'
--
-- * 'httphcdOAuthToken'
--
-- * 'httphcdFields'
hTTPHealthChecksDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'httpHealthCheck'
    -> HTTPHealthChecksDelete'
hTTPHealthChecksDelete' pHttphcdProject_ pHttphcdHTTPHealthCheck_ =
    HTTPHealthChecksDelete'
    { _httphcdQuotaUser = Nothing
    , _httphcdPrettyPrint = True
    , _httphcdProject = pHttphcdProject_
    , _httphcdUserIP = Nothing
    , _httphcdKey = Nothing
    , _httphcdHTTPHealthCheck = pHttphcdHTTPHealthCheck_
    , _httphcdOAuthToken = Nothing
    , _httphcdFields = Nothing
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
httphcdUserIP :: Lens' HTTPHealthChecksDelete' (Maybe Text)
httphcdUserIP
  = lens _httphcdUserIP
      (\ s a -> s{_httphcdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
httphcdKey :: Lens' HTTPHealthChecksDelete' (Maybe Key)
httphcdKey
  = lens _httphcdKey (\ s a -> s{_httphcdKey = a})

-- | Name of the HttpHealthCheck resource to delete.
httphcdHTTPHealthCheck :: Lens' HTTPHealthChecksDelete' Text
httphcdHTTPHealthCheck
  = lens _httphcdHTTPHealthCheck
      (\ s a -> s{_httphcdHTTPHealthCheck = a})

-- | OAuth 2.0 token for the current user.
httphcdOAuthToken :: Lens' HTTPHealthChecksDelete' (Maybe OAuthToken)
httphcdOAuthToken
  = lens _httphcdOAuthToken
      (\ s a -> s{_httphcdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
httphcdFields :: Lens' HTTPHealthChecksDelete' (Maybe Text)
httphcdFields
  = lens _httphcdFields
      (\ s a -> s{_httphcdFields = a})

instance GoogleAuth HTTPHealthChecksDelete' where
        authKey = httphcdKey . _Just
        authToken = httphcdOAuthToken . _Just

instance GoogleRequest HTTPHealthChecksDelete' where
        type Rs HTTPHealthChecksDelete' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u HTTPHealthChecksDelete'{..}
          = go _httphcdProject _httphcdHTTPHealthCheck
              _httphcdQuotaUser
              (Just _httphcdPrettyPrint)
              _httphcdUserIP
              _httphcdFields
              _httphcdKey
              _httphcdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy HTTPHealthChecksDeleteResource)
                      r
                      u
