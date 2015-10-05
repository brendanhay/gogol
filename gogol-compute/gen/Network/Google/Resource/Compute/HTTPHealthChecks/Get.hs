{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

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
module Network.Google.Resource.Compute.HTTPHealthChecks.Get
    (
    -- * REST Resource
      HTTPHealthChecksGetResource

    -- * Creating a Request
    , hTTPHealthChecksGet'
    , HTTPHealthChecksGet'

    -- * Request Lenses
    , httphcgQuotaUser
    , httphcgPrettyPrint
    , httphcgProject
    , httphcgUserIP
    , httphcgKey
    , httphcgHTTPHealthCheck
    , httphcgOAuthToken
    , httphcgFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeHTTPHealthChecksGet@ which the
-- 'HTTPHealthChecksGet'' request conforms to.
type HTTPHealthChecksGetResource =
     Capture "project" Text :>
       "global" :>
         "httpHealthChecks" :>
           Capture "httpHealthCheck" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] HTTPHealthCheck

-- | Returns the specified HttpHealthCheck resource.
--
-- /See:/ 'hTTPHealthChecksGet'' smart constructor.
data HTTPHealthChecksGet' = HTTPHealthChecksGet'
    { _httphcgQuotaUser       :: !(Maybe Text)
    , _httphcgPrettyPrint     :: !Bool
    , _httphcgProject         :: !Text
    , _httphcgUserIP          :: !(Maybe Text)
    , _httphcgKey             :: !(Maybe AuthKey)
    , _httphcgHTTPHealthCheck :: !Text
    , _httphcgOAuthToken      :: !(Maybe OAuthToken)
    , _httphcgFields          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'httphcgUserIP'
--
-- * 'httphcgKey'
--
-- * 'httphcgHTTPHealthCheck'
--
-- * 'httphcgOAuthToken'
--
-- * 'httphcgFields'
hTTPHealthChecksGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'httpHealthCheck'
    -> HTTPHealthChecksGet'
hTTPHealthChecksGet' pHttphcgProject_ pHttphcgHTTPHealthCheck_ =
    HTTPHealthChecksGet'
    { _httphcgQuotaUser = Nothing
    , _httphcgPrettyPrint = True
    , _httphcgProject = pHttphcgProject_
    , _httphcgUserIP = Nothing
    , _httphcgKey = Nothing
    , _httphcgHTTPHealthCheck = pHttphcgHTTPHealthCheck_
    , _httphcgOAuthToken = Nothing
    , _httphcgFields = Nothing
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
httphcgUserIP :: Lens' HTTPHealthChecksGet' (Maybe Text)
httphcgUserIP
  = lens _httphcgUserIP
      (\ s a -> s{_httphcgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
httphcgKey :: Lens' HTTPHealthChecksGet' (Maybe AuthKey)
httphcgKey
  = lens _httphcgKey (\ s a -> s{_httphcgKey = a})

-- | Name of the HttpHealthCheck resource to return.
httphcgHTTPHealthCheck :: Lens' HTTPHealthChecksGet' Text
httphcgHTTPHealthCheck
  = lens _httphcgHTTPHealthCheck
      (\ s a -> s{_httphcgHTTPHealthCheck = a})

-- | OAuth 2.0 token for the current user.
httphcgOAuthToken :: Lens' HTTPHealthChecksGet' (Maybe OAuthToken)
httphcgOAuthToken
  = lens _httphcgOAuthToken
      (\ s a -> s{_httphcgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
httphcgFields :: Lens' HTTPHealthChecksGet' (Maybe Text)
httphcgFields
  = lens _httphcgFields
      (\ s a -> s{_httphcgFields = a})

instance GoogleAuth HTTPHealthChecksGet' where
        authKey = httphcgKey . _Just
        authToken = httphcgOAuthToken . _Just

instance GoogleRequest HTTPHealthChecksGet' where
        type Rs HTTPHealthChecksGet' = HTTPHealthCheck
        request = requestWithRoute defReq computeURL
        requestWithRoute r u HTTPHealthChecksGet'{..}
          = go _httphcgProject _httphcgHTTPHealthCheck
              _httphcgQuotaUser
              (Just _httphcgPrettyPrint)
              _httphcgUserIP
              _httphcgFields
              _httphcgKey
              _httphcgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy HTTPHealthChecksGetResource)
                      r
                      u
