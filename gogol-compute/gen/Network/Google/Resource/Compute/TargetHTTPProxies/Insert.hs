{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module Compute.TargetHTTPProxies.Insert
    (
    -- * REST Resource
      TargetHTTPProxiesInsertAPI

    -- * Creating a Request
    , targetHTTPProxiesInsert
    , TargetHTTPProxiesInsert

    -- * Request Lenses
    , thttppiQuotaUser
    , thttppiPrettyPrint
    , thttppiProject
    , thttppiUserIp
    , thttppiKey
    , thttppiOauthToken
    , thttppiFields
    , thttppiAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetHTTPProxiesInsert@ which the
-- 'TargetHTTPProxiesInsert' request conforms to.
type TargetHTTPProxiesInsertAPI =
     Capture "project" Text :>
       "global" :>
         "targetHttpProxies" :> Post '[JSON] Operation

-- | Creates a TargetHttpProxy resource in the specified project using the
-- data included in the request.
--
-- /See:/ 'targetHTTPProxiesInsert' smart constructor.
data TargetHTTPProxiesInsert = TargetHTTPProxiesInsert
    { _thttppiQuotaUser   :: !(Maybe Text)
    , _thttppiPrettyPrint :: !Bool
    , _thttppiProject     :: !Text
    , _thttppiUserIp      :: !(Maybe Text)
    , _thttppiKey         :: !(Maybe Text)
    , _thttppiOauthToken  :: !(Maybe Text)
    , _thttppiFields      :: !(Maybe Text)
    , _thttppiAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'thttppiUserIp'
--
-- * 'thttppiKey'
--
-- * 'thttppiOauthToken'
--
-- * 'thttppiFields'
--
-- * 'thttppiAlt'
targetHTTPProxiesInsert
    :: Text -- ^ 'project'
    -> TargetHTTPProxiesInsert
targetHTTPProxiesInsert pThttppiProject_ =
    TargetHTTPProxiesInsert
    { _thttppiQuotaUser = Nothing
    , _thttppiPrettyPrint = True
    , _thttppiProject = pThttppiProject_
    , _thttppiUserIp = Nothing
    , _thttppiKey = Nothing
    , _thttppiOauthToken = Nothing
    , _thttppiFields = Nothing
    , _thttppiAlt = "json"
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
thttppiUserIp :: Lens' TargetHTTPProxiesInsert' (Maybe Text)
thttppiUserIp
  = lens _thttppiUserIp
      (\ s a -> s{_thttppiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
thttppiKey :: Lens' TargetHTTPProxiesInsert' (Maybe Text)
thttppiKey
  = lens _thttppiKey (\ s a -> s{_thttppiKey = a})

-- | OAuth 2.0 token for the current user.
thttppiOauthToken :: Lens' TargetHTTPProxiesInsert' (Maybe Text)
thttppiOauthToken
  = lens _thttppiOauthToken
      (\ s a -> s{_thttppiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
thttppiFields :: Lens' TargetHTTPProxiesInsert' (Maybe Text)
thttppiFields
  = lens _thttppiFields
      (\ s a -> s{_thttppiFields = a})

-- | Data format for the response.
thttppiAlt :: Lens' TargetHTTPProxiesInsert' Text
thttppiAlt
  = lens _thttppiAlt (\ s a -> s{_thttppiAlt = a})

instance GoogleRequest TargetHTTPProxiesInsert' where
        type Rs TargetHTTPProxiesInsert' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u TargetHTTPProxiesInsert{..}
          = go _thttppiQuotaUser _thttppiPrettyPrint
              _thttppiProject
              _thttppiUserIp
              _thttppiKey
              _thttppiOauthToken
              _thttppiFields
              _thttppiAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TargetHTTPProxiesInsertAPI)
                      r
                      u
