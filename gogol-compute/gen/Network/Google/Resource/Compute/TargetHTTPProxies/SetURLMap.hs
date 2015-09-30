{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.TargetHTTPProxies.SetURLMap
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Changes the URL map for TargetHttpProxy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeTargetHTTPProxiesSetURLMap@.
module Compute.TargetHTTPProxies.SetURLMap
    (
    -- * REST Resource
      TargetHTTPProxiesSetURLMapAPI

    -- * Creating a Request
    , targetHTTPProxiesSetURLMap
    , TargetHTTPProxiesSetURLMap

    -- * Request Lenses
    , thttppsumQuotaUser
    , thttppsumPrettyPrint
    , thttppsumProject
    , thttppsumUserIp
    , thttppsumKey
    , thttppsumTargetHttpProxy
    , thttppsumOauthToken
    , thttppsumFields
    , thttppsumAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetHTTPProxiesSetURLMap@ which the
-- 'TargetHTTPProxiesSetURLMap' request conforms to.
type TargetHTTPProxiesSetURLMapAPI =
     Capture "project" Text :>
       "targetHttpProxies" :>
         Capture "targetHttpProxy" Text :>
           "setUrlMap" :> Post '[JSON] Operation

-- | Changes the URL map for TargetHttpProxy.
--
-- /See:/ 'targetHTTPProxiesSetURLMap' smart constructor.
data TargetHTTPProxiesSetURLMap = TargetHTTPProxiesSetURLMap
    { _thttppsumQuotaUser       :: !(Maybe Text)
    , _thttppsumPrettyPrint     :: !Bool
    , _thttppsumProject         :: !Text
    , _thttppsumUserIp          :: !(Maybe Text)
    , _thttppsumKey             :: !(Maybe Text)
    , _thttppsumTargetHttpProxy :: !Text
    , _thttppsumOauthToken      :: !(Maybe Text)
    , _thttppsumFields          :: !(Maybe Text)
    , _thttppsumAlt             :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetHTTPProxiesSetURLMap'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'thttppsumQuotaUser'
--
-- * 'thttppsumPrettyPrint'
--
-- * 'thttppsumProject'
--
-- * 'thttppsumUserIp'
--
-- * 'thttppsumKey'
--
-- * 'thttppsumTargetHttpProxy'
--
-- * 'thttppsumOauthToken'
--
-- * 'thttppsumFields'
--
-- * 'thttppsumAlt'
targetHTTPProxiesSetURLMap
    :: Text -- ^ 'project'
    -> Text -- ^ 'targetHttpProxy'
    -> TargetHTTPProxiesSetURLMap
targetHTTPProxiesSetURLMap pThttppsumProject_ pThttppsumTargetHttpProxy_ =
    TargetHTTPProxiesSetURLMap
    { _thttppsumQuotaUser = Nothing
    , _thttppsumPrettyPrint = True
    , _thttppsumProject = pThttppsumProject_
    , _thttppsumUserIp = Nothing
    , _thttppsumKey = Nothing
    , _thttppsumTargetHttpProxy = pThttppsumTargetHttpProxy_
    , _thttppsumOauthToken = Nothing
    , _thttppsumFields = Nothing
    , _thttppsumAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
thttppsumQuotaUser :: Lens' TargetHTTPProxiesSetURLMap' (Maybe Text)
thttppsumQuotaUser
  = lens _thttppsumQuotaUser
      (\ s a -> s{_thttppsumQuotaUser = a})

-- | Returns response with indentations and line breaks.
thttppsumPrettyPrint :: Lens' TargetHTTPProxiesSetURLMap' Bool
thttppsumPrettyPrint
  = lens _thttppsumPrettyPrint
      (\ s a -> s{_thttppsumPrettyPrint = a})

-- | Name of the project scoping this request.
thttppsumProject :: Lens' TargetHTTPProxiesSetURLMap' Text
thttppsumProject
  = lens _thttppsumProject
      (\ s a -> s{_thttppsumProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
thttppsumUserIp :: Lens' TargetHTTPProxiesSetURLMap' (Maybe Text)
thttppsumUserIp
  = lens _thttppsumUserIp
      (\ s a -> s{_thttppsumUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
thttppsumKey :: Lens' TargetHTTPProxiesSetURLMap' (Maybe Text)
thttppsumKey
  = lens _thttppsumKey (\ s a -> s{_thttppsumKey = a})

-- | Name of the TargetHttpProxy resource whose URL map is to be set.
thttppsumTargetHttpProxy :: Lens' TargetHTTPProxiesSetURLMap' Text
thttppsumTargetHttpProxy
  = lens _thttppsumTargetHttpProxy
      (\ s a -> s{_thttppsumTargetHttpProxy = a})

-- | OAuth 2.0 token for the current user.
thttppsumOauthToken :: Lens' TargetHTTPProxiesSetURLMap' (Maybe Text)
thttppsumOauthToken
  = lens _thttppsumOauthToken
      (\ s a -> s{_thttppsumOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
thttppsumFields :: Lens' TargetHTTPProxiesSetURLMap' (Maybe Text)
thttppsumFields
  = lens _thttppsumFields
      (\ s a -> s{_thttppsumFields = a})

-- | Data format for the response.
thttppsumAlt :: Lens' TargetHTTPProxiesSetURLMap' Text
thttppsumAlt
  = lens _thttppsumAlt (\ s a -> s{_thttppsumAlt = a})

instance GoogleRequest TargetHTTPProxiesSetURLMap'
         where
        type Rs TargetHTTPProxiesSetURLMap' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u TargetHTTPProxiesSetURLMap{..}
          = go _thttppsumQuotaUser _thttppsumPrettyPrint
              _thttppsumProject
              _thttppsumUserIp
              _thttppsumKey
              _thttppsumTargetHttpProxy
              _thttppsumOauthToken
              _thttppsumFields
              _thttppsumAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TargetHTTPProxiesSetURLMapAPI)
                      r
                      u
