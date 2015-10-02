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
-- Module      : Network.Google.Resource.Compute.HTTPHealthChecks.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a HttpHealthCheck resource in the specified project using the
-- data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeHTTPHealthChecksInsert@.
module Network.Google.Resource.Compute.HTTPHealthChecks.Insert
    (
    -- * REST Resource
      HttpHealthChecksInsertResource

    -- * Creating a Request
    , hTTPHealthChecksInsert'
    , HTTPHealthChecksInsert'

    -- * Request Lenses
    , httphciQuotaUser
    , httphciPrettyPrint
    , httphciProject
    , httphciUserIP
    , httphciKey
    , httphciHTTPHealthCheck
    , httphciOAuthToken
    , httphciFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeHTTPHealthChecksInsert@ which the
-- 'HTTPHealthChecksInsert'' request conforms to.
type HttpHealthChecksInsertResource =
     Capture "project" Text :>
       "global" :>
         "httpHealthChecks" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] HTTPHealthCheck :>
                           Post '[JSON] Operation

-- | Creates a HttpHealthCheck resource in the specified project using the
-- data included in the request.
--
-- /See:/ 'hTTPHealthChecksInsert'' smart constructor.
data HTTPHealthChecksInsert' = HTTPHealthChecksInsert'
    { _httphciQuotaUser       :: !(Maybe Text)
    , _httphciPrettyPrint     :: !Bool
    , _httphciProject         :: !Text
    , _httphciUserIP          :: !(Maybe Text)
    , _httphciKey             :: !(Maybe Key)
    , _httphciHTTPHealthCheck :: !HTTPHealthCheck
    , _httphciOAuthToken      :: !(Maybe OAuthToken)
    , _httphciFields          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'HTTPHealthChecksInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httphciQuotaUser'
--
-- * 'httphciPrettyPrint'
--
-- * 'httphciProject'
--
-- * 'httphciUserIP'
--
-- * 'httphciKey'
--
-- * 'httphciHTTPHealthCheck'
--
-- * 'httphciOAuthToken'
--
-- * 'httphciFields'
hTTPHealthChecksInsert'
    :: Text -- ^ 'project'
    -> HTTPHealthCheck -- ^ 'HTTPHealthCheck'
    -> HTTPHealthChecksInsert'
hTTPHealthChecksInsert' pHttphciProject_ pHttphciHTTPHealthCheck_ =
    HTTPHealthChecksInsert'
    { _httphciQuotaUser = Nothing
    , _httphciPrettyPrint = True
    , _httphciProject = pHttphciProject_
    , _httphciUserIP = Nothing
    , _httphciKey = Nothing
    , _httphciHTTPHealthCheck = pHttphciHTTPHealthCheck_
    , _httphciOAuthToken = Nothing
    , _httphciFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
httphciQuotaUser :: Lens' HTTPHealthChecksInsert' (Maybe Text)
httphciQuotaUser
  = lens _httphciQuotaUser
      (\ s a -> s{_httphciQuotaUser = a})

-- | Returns response with indentations and line breaks.
httphciPrettyPrint :: Lens' HTTPHealthChecksInsert' Bool
httphciPrettyPrint
  = lens _httphciPrettyPrint
      (\ s a -> s{_httphciPrettyPrint = a})

-- | Name of the project scoping this request.
httphciProject :: Lens' HTTPHealthChecksInsert' Text
httphciProject
  = lens _httphciProject
      (\ s a -> s{_httphciProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
httphciUserIP :: Lens' HTTPHealthChecksInsert' (Maybe Text)
httphciUserIP
  = lens _httphciUserIP
      (\ s a -> s{_httphciUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
httphciKey :: Lens' HTTPHealthChecksInsert' (Maybe Key)
httphciKey
  = lens _httphciKey (\ s a -> s{_httphciKey = a})

-- | Multipart request metadata.
httphciHTTPHealthCheck :: Lens' HTTPHealthChecksInsert' HTTPHealthCheck
httphciHTTPHealthCheck
  = lens _httphciHTTPHealthCheck
      (\ s a -> s{_httphciHTTPHealthCheck = a})

-- | OAuth 2.0 token for the current user.
httphciOAuthToken :: Lens' HTTPHealthChecksInsert' (Maybe OAuthToken)
httphciOAuthToken
  = lens _httphciOAuthToken
      (\ s a -> s{_httphciOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
httphciFields :: Lens' HTTPHealthChecksInsert' (Maybe Text)
httphciFields
  = lens _httphciFields
      (\ s a -> s{_httphciFields = a})

instance GoogleAuth HTTPHealthChecksInsert' where
        authKey = httphciKey . _Just
        authToken = httphciOAuthToken . _Just

instance GoogleRequest HTTPHealthChecksInsert' where
        type Rs HTTPHealthChecksInsert' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u HTTPHealthChecksInsert'{..}
          = go _httphciQuotaUser (Just _httphciPrettyPrint)
              _httphciProject
              _httphciUserIP
              _httphciKey
              _httphciOAuthToken
              _httphciFields
              (Just AltJSON)
              _httphciHTTPHealthCheck
          where go
                  = clientWithRoute
                      (Proxy :: Proxy HttpHealthChecksInsertResource)
                      r
                      u
