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
-- Module      : Network.Google.Resource.Compute.TargetHTTPProxies.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a TargetHttpProxy resource in the specified project using the
-- data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeTargetHTTPProxiesInsert@.
module Network.Google.Resource.Compute.TargetHTTPProxies.Insert
    (
    -- * REST Resource
      TargetHTTPProxiesInsertResource

    -- * Creating a Request
    , targetHTTPProxiesInsert'
    , TargetHTTPProxiesInsert'

    -- * Request Lenses
    , thttppiQuotaUser
    , thttppiPrettyPrint
    , thttppiProject
    , thttppiUserIP
    , thttppiPayload
    , thttppiKey
    , thttppiOAuthToken
    , thttppiFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetHTTPProxiesInsert@ method which the
-- 'TargetHTTPProxiesInsert'' request conforms to.
type TargetHTTPProxiesInsertResource =
     Capture "project" Text :>
       "global" :>
         "targetHttpProxies" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     Header "Authorization" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] TargetHTTPProxy :>
                           Post '[JSON] Operation

-- | Creates a TargetHttpProxy resource in the specified project using the
-- data included in the request.
--
-- /See:/ 'targetHTTPProxiesInsert'' smart constructor.
data TargetHTTPProxiesInsert' = TargetHTTPProxiesInsert'
    { _thttppiQuotaUser   :: !(Maybe Text)
    , _thttppiPrettyPrint :: !Bool
    , _thttppiProject     :: !Text
    , _thttppiUserIP      :: !(Maybe Text)
    , _thttppiPayload     :: !TargetHTTPProxy
    , _thttppiKey         :: !(Maybe AuthKey)
    , _thttppiOAuthToken  :: !(Maybe OAuthToken)
    , _thttppiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetHTTPProxiesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'thttppiQuotaUser'
--
-- * 'thttppiPrettyPrint'
--
-- * 'thttppiProject'
--
-- * 'thttppiUserIP'
--
-- * 'thttppiPayload'
--
-- * 'thttppiKey'
--
-- * 'thttppiOAuthToken'
--
-- * 'thttppiFields'
targetHTTPProxiesInsert'
    :: Text -- ^ 'project'
    -> TargetHTTPProxy -- ^ 'payload'
    -> TargetHTTPProxiesInsert'
targetHTTPProxiesInsert' pThttppiProject_ pThttppiPayload_ =
    TargetHTTPProxiesInsert'
    { _thttppiQuotaUser = Nothing
    , _thttppiPrettyPrint = True
    , _thttppiProject = pThttppiProject_
    , _thttppiUserIP = Nothing
    , _thttppiPayload = pThttppiPayload_
    , _thttppiKey = Nothing
    , _thttppiOAuthToken = Nothing
    , _thttppiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
thttppiQuotaUser :: Lens' TargetHTTPProxiesInsert' (Maybe Text)
thttppiQuotaUser
  = lens _thttppiQuotaUser
      (\ s a -> s{_thttppiQuotaUser = a})

-- | Returns response with indentations and line breaks.
thttppiPrettyPrint :: Lens' TargetHTTPProxiesInsert' Bool
thttppiPrettyPrint
  = lens _thttppiPrettyPrint
      (\ s a -> s{_thttppiPrettyPrint = a})

-- | Name of the project scoping this request.
thttppiProject :: Lens' TargetHTTPProxiesInsert' Text
thttppiProject
  = lens _thttppiProject
      (\ s a -> s{_thttppiProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
thttppiUserIP :: Lens' TargetHTTPProxiesInsert' (Maybe Text)
thttppiUserIP
  = lens _thttppiUserIP
      (\ s a -> s{_thttppiUserIP = a})

-- | Multipart request metadata.
thttppiPayload :: Lens' TargetHTTPProxiesInsert' TargetHTTPProxy
thttppiPayload
  = lens _thttppiPayload
      (\ s a -> s{_thttppiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
thttppiKey :: Lens' TargetHTTPProxiesInsert' (Maybe AuthKey)
thttppiKey
  = lens _thttppiKey (\ s a -> s{_thttppiKey = a})

-- | OAuth 2.0 token for the current user.
thttppiOAuthToken :: Lens' TargetHTTPProxiesInsert' (Maybe OAuthToken)
thttppiOAuthToken
  = lens _thttppiOAuthToken
      (\ s a -> s{_thttppiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
thttppiFields :: Lens' TargetHTTPProxiesInsert' (Maybe Text)
thttppiFields
  = lens _thttppiFields
      (\ s a -> s{_thttppiFields = a})

instance GoogleAuth TargetHTTPProxiesInsert' where
        _AuthKey = thttppiKey . _Just
        _AuthToken = thttppiOAuthToken . _Just

instance GoogleRequest TargetHTTPProxiesInsert' where
        type Rs TargetHTTPProxiesInsert' = Operation
        request = requestWith computeRequest
        requestWith rq TargetHTTPProxiesInsert'{..}
          = go _thttppiProject _thttppiQuotaUser
              (Just _thttppiPrettyPrint)
              _thttppiUserIP
              _thttppiFields
              _thttppiKey
              _thttppiOAuthToken
              (Just AltJSON)
              _thttppiPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy TargetHTTPProxiesInsertResource)
                      rq
