{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.TargetPools.RemoveHealthCheck
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Removes health check URL from targetPool.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeTargetPoolsRemoveHealthCheck@.
module Network.Google.Resource.Compute.TargetPools.RemoveHealthCheck
    (
    -- * REST Resource
      TargetPoolsRemoveHealthCheckResource

    -- * Creating a Request
    , targetPoolsRemoveHealthCheck'
    , TargetPoolsRemoveHealthCheck'

    -- * Request Lenses
    , tprhcQuotaUser
    , tprhcPrettyPrint
    , tprhcProject
    , tprhcTargetPool
    , tprhcUserIP
    , tprhcPayload
    , tprhcKey
    , tprhcRegion
    , tprhcOAuthToken
    , tprhcFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetPoolsRemoveHealthCheck@ which the
-- 'TargetPoolsRemoveHealthCheck'' request conforms to.
type TargetPoolsRemoveHealthCheckResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "targetPools" :>
             Capture "targetPool" Text :>
               "removeHealthCheck" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[OctetStream]
                                 TargetPoolsRemoveHealthCheckRequest
                                 :> Post '[JSON] Operation

-- | Removes health check URL from targetPool.
--
-- /See:/ 'targetPoolsRemoveHealthCheck'' smart constructor.
data TargetPoolsRemoveHealthCheck' = TargetPoolsRemoveHealthCheck'
    { _tprhcQuotaUser   :: !(Maybe Text)
    , _tprhcPrettyPrint :: !Bool
    , _tprhcProject     :: !Text
    , _tprhcTargetPool  :: !Text
    , _tprhcUserIP      :: !(Maybe Text)
    , _tprhcPayload     :: !TargetPoolsRemoveHealthCheckRequest
    , _tprhcKey         :: !(Maybe Key)
    , _tprhcRegion      :: !Text
    , _tprhcOAuthToken  :: !(Maybe OAuthToken)
    , _tprhcFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolsRemoveHealthCheck'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tprhcQuotaUser'
--
-- * 'tprhcPrettyPrint'
--
-- * 'tprhcProject'
--
-- * 'tprhcTargetPool'
--
-- * 'tprhcUserIP'
--
-- * 'tprhcPayload'
--
-- * 'tprhcKey'
--
-- * 'tprhcRegion'
--
-- * 'tprhcOAuthToken'
--
-- * 'tprhcFields'
targetPoolsRemoveHealthCheck'
    :: Text -- ^ 'project'
    -> Text -- ^ 'targetPool'
    -> TargetPoolsRemoveHealthCheckRequest -- ^ 'payload'
    -> Text -- ^ 'region'
    -> TargetPoolsRemoveHealthCheck'
targetPoolsRemoveHealthCheck' pTprhcProject_ pTprhcTargetPool_ pTprhcPayload_ pTprhcRegion_ =
    TargetPoolsRemoveHealthCheck'
    { _tprhcQuotaUser = Nothing
    , _tprhcPrettyPrint = True
    , _tprhcProject = pTprhcProject_
    , _tprhcTargetPool = pTprhcTargetPool_
    , _tprhcUserIP = Nothing
    , _tprhcPayload = pTprhcPayload_
    , _tprhcKey = Nothing
    , _tprhcRegion = pTprhcRegion_
    , _tprhcOAuthToken = Nothing
    , _tprhcFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tprhcQuotaUser :: Lens' TargetPoolsRemoveHealthCheck' (Maybe Text)
tprhcQuotaUser
  = lens _tprhcQuotaUser
      (\ s a -> s{_tprhcQuotaUser = a})

-- | Returns response with indentations and line breaks.
tprhcPrettyPrint :: Lens' TargetPoolsRemoveHealthCheck' Bool
tprhcPrettyPrint
  = lens _tprhcPrettyPrint
      (\ s a -> s{_tprhcPrettyPrint = a})

tprhcProject :: Lens' TargetPoolsRemoveHealthCheck' Text
tprhcProject
  = lens _tprhcProject (\ s a -> s{_tprhcProject = a})

-- | Name of the TargetPool resource to which health_check_url is to be
-- removed.
tprhcTargetPool :: Lens' TargetPoolsRemoveHealthCheck' Text
tprhcTargetPool
  = lens _tprhcTargetPool
      (\ s a -> s{_tprhcTargetPool = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tprhcUserIP :: Lens' TargetPoolsRemoveHealthCheck' (Maybe Text)
tprhcUserIP
  = lens _tprhcUserIP (\ s a -> s{_tprhcUserIP = a})

-- | Multipart request metadata.
tprhcPayload :: Lens' TargetPoolsRemoveHealthCheck' TargetPoolsRemoveHealthCheckRequest
tprhcPayload
  = lens _tprhcPayload (\ s a -> s{_tprhcPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tprhcKey :: Lens' TargetPoolsRemoveHealthCheck' (Maybe Key)
tprhcKey = lens _tprhcKey (\ s a -> s{_tprhcKey = a})

-- | Name of the region scoping this request.
tprhcRegion :: Lens' TargetPoolsRemoveHealthCheck' Text
tprhcRegion
  = lens _tprhcRegion (\ s a -> s{_tprhcRegion = a})

-- | OAuth 2.0 token for the current user.
tprhcOAuthToken :: Lens' TargetPoolsRemoveHealthCheck' (Maybe OAuthToken)
tprhcOAuthToken
  = lens _tprhcOAuthToken
      (\ s a -> s{_tprhcOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tprhcFields :: Lens' TargetPoolsRemoveHealthCheck' (Maybe Text)
tprhcFields
  = lens _tprhcFields (\ s a -> s{_tprhcFields = a})

instance GoogleAuth TargetPoolsRemoveHealthCheck'
         where
        authKey = tprhcKey . _Just
        authToken = tprhcOAuthToken . _Just

instance GoogleRequest TargetPoolsRemoveHealthCheck'
         where
        type Rs TargetPoolsRemoveHealthCheck' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u
          TargetPoolsRemoveHealthCheck'{..}
          = go _tprhcProject _tprhcRegion _tprhcTargetPool
              _tprhcQuotaUser
              (Just _tprhcPrettyPrint)
              _tprhcUserIP
              _tprhcFields
              _tprhcKey
              _tprhcOAuthToken
              (Just AltJSON)
              _tprhcPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TargetPoolsRemoveHealthCheckResource)
                      r
                      u
