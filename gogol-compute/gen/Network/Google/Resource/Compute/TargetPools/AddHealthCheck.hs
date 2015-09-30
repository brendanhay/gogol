{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.TargetPools.AddHealthCheck
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds health check URL to targetPool.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeTargetPoolsAddHealthCheck@.
module Compute.TargetPools.AddHealthCheck
    (
    -- * REST Resource
      TargetPoolsAddHealthCheckAPI

    -- * Creating a Request
    , targetPoolsAddHealthCheck
    , TargetPoolsAddHealthCheck

    -- * Request Lenses
    , tpahcQuotaUser
    , tpahcPrettyPrint
    , tpahcProject
    , tpahcTargetPool
    , tpahcUserIp
    , tpahcKey
    , tpahcRegion
    , tpahcOauthToken
    , tpahcFields
    , tpahcAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetPoolsAddHealthCheck@ which the
-- 'TargetPoolsAddHealthCheck' request conforms to.
type TargetPoolsAddHealthCheckAPI =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "targetPools" :>
             Capture "targetPool" Text :>
               "addHealthCheck" :> Post '[JSON] Operation

-- | Adds health check URL to targetPool.
--
-- /See:/ 'targetPoolsAddHealthCheck' smart constructor.
data TargetPoolsAddHealthCheck = TargetPoolsAddHealthCheck
    { _tpahcQuotaUser   :: !(Maybe Text)
    , _tpahcPrettyPrint :: !Bool
    , _tpahcProject     :: !Text
    , _tpahcTargetPool  :: !Text
    , _tpahcUserIp      :: !(Maybe Text)
    , _tpahcKey         :: !(Maybe Text)
    , _tpahcRegion      :: !Text
    , _tpahcOauthToken  :: !(Maybe Text)
    , _tpahcFields      :: !(Maybe Text)
    , _tpahcAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolsAddHealthCheck'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpahcQuotaUser'
--
-- * 'tpahcPrettyPrint'
--
-- * 'tpahcProject'
--
-- * 'tpahcTargetPool'
--
-- * 'tpahcUserIp'
--
-- * 'tpahcKey'
--
-- * 'tpahcRegion'
--
-- * 'tpahcOauthToken'
--
-- * 'tpahcFields'
--
-- * 'tpahcAlt'
targetPoolsAddHealthCheck
    :: Text -- ^ 'project'
    -> Text -- ^ 'targetPool'
    -> Text -- ^ 'region'
    -> TargetPoolsAddHealthCheck
targetPoolsAddHealthCheck pTpahcProject_ pTpahcTargetPool_ pTpahcRegion_ =
    TargetPoolsAddHealthCheck
    { _tpahcQuotaUser = Nothing
    , _tpahcPrettyPrint = True
    , _tpahcProject = pTpahcProject_
    , _tpahcTargetPool = pTpahcTargetPool_
    , _tpahcUserIp = Nothing
    , _tpahcKey = Nothing
    , _tpahcRegion = pTpahcRegion_
    , _tpahcOauthToken = Nothing
    , _tpahcFields = Nothing
    , _tpahcAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tpahcQuotaUser :: Lens' TargetPoolsAddHealthCheck' (Maybe Text)
tpahcQuotaUser
  = lens _tpahcQuotaUser
      (\ s a -> s{_tpahcQuotaUser = a})

-- | Returns response with indentations and line breaks.
tpahcPrettyPrint :: Lens' TargetPoolsAddHealthCheck' Bool
tpahcPrettyPrint
  = lens _tpahcPrettyPrint
      (\ s a -> s{_tpahcPrettyPrint = a})

tpahcProject :: Lens' TargetPoolsAddHealthCheck' Text
tpahcProject
  = lens _tpahcProject (\ s a -> s{_tpahcProject = a})

-- | Name of the TargetPool resource to which health_check_url is to be
-- added.
tpahcTargetPool :: Lens' TargetPoolsAddHealthCheck' Text
tpahcTargetPool
  = lens _tpahcTargetPool
      (\ s a -> s{_tpahcTargetPool = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tpahcUserIp :: Lens' TargetPoolsAddHealthCheck' (Maybe Text)
tpahcUserIp
  = lens _tpahcUserIp (\ s a -> s{_tpahcUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tpahcKey :: Lens' TargetPoolsAddHealthCheck' (Maybe Text)
tpahcKey = lens _tpahcKey (\ s a -> s{_tpahcKey = a})

-- | Name of the region scoping this request.
tpahcRegion :: Lens' TargetPoolsAddHealthCheck' Text
tpahcRegion
  = lens _tpahcRegion (\ s a -> s{_tpahcRegion = a})

-- | OAuth 2.0 token for the current user.
tpahcOauthToken :: Lens' TargetPoolsAddHealthCheck' (Maybe Text)
tpahcOauthToken
  = lens _tpahcOauthToken
      (\ s a -> s{_tpahcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tpahcFields :: Lens' TargetPoolsAddHealthCheck' (Maybe Text)
tpahcFields
  = lens _tpahcFields (\ s a -> s{_tpahcFields = a})

-- | Data format for the response.
tpahcAlt :: Lens' TargetPoolsAddHealthCheck' Text
tpahcAlt = lens _tpahcAlt (\ s a -> s{_tpahcAlt = a})

instance GoogleRequest TargetPoolsAddHealthCheck'
         where
        type Rs TargetPoolsAddHealthCheck' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u TargetPoolsAddHealthCheck{..}
          = go _tpahcQuotaUser _tpahcPrettyPrint _tpahcProject
              _tpahcTargetPool
              _tpahcUserIp
              _tpahcKey
              _tpahcRegion
              _tpahcOauthToken
              _tpahcFields
              _tpahcAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TargetPoolsAddHealthCheckAPI)
                      r
                      u
