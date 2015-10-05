{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
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
module Network.Google.Resource.Compute.TargetPools.AddHealthCheck
    (
    -- * REST Resource
      TargetPoolsAddHealthCheckResource

    -- * Creating a Request
    , targetPoolsAddHealthCheck'
    , TargetPoolsAddHealthCheck'

    -- * Request Lenses
    , tpahcQuotaUser
    , tpahcPrettyPrint
    , tpahcProject
    , tpahcTargetPool
    , tpahcUserIP
    , tpahcPayload
    , tpahcKey
    , tpahcRegion
    , tpahcOAuthToken
    , tpahcFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetPoolsAddHealthCheck@ which the
-- 'TargetPoolsAddHealthCheck'' request conforms to.
type TargetPoolsAddHealthCheckResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "targetPools" :>
             Capture "targetPool" Text :>
               "addHealthCheck" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] TargetPoolsAddHealthCheckRequest
                                 :> Post '[JSON] Operation

-- | Adds health check URL to targetPool.
--
-- /See:/ 'targetPoolsAddHealthCheck'' smart constructor.
data TargetPoolsAddHealthCheck' = TargetPoolsAddHealthCheck'
    { _tpahcQuotaUser   :: !(Maybe Text)
    , _tpahcPrettyPrint :: !Bool
    , _tpahcProject     :: !Text
    , _tpahcTargetPool  :: !Text
    , _tpahcUserIP      :: !(Maybe Text)
    , _tpahcPayload     :: !TargetPoolsAddHealthCheckRequest
    , _tpahcKey         :: !(Maybe Key)
    , _tpahcRegion      :: !Text
    , _tpahcOAuthToken  :: !(Maybe OAuthToken)
    , _tpahcFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'tpahcUserIP'
--
-- * 'tpahcPayload'
--
-- * 'tpahcKey'
--
-- * 'tpahcRegion'
--
-- * 'tpahcOAuthToken'
--
-- * 'tpahcFields'
targetPoolsAddHealthCheck'
    :: Text -- ^ 'project'
    -> Text -- ^ 'targetPool'
    -> TargetPoolsAddHealthCheckRequest -- ^ 'payload'
    -> Text -- ^ 'region'
    -> TargetPoolsAddHealthCheck'
targetPoolsAddHealthCheck' pTpahcProject_ pTpahcTargetPool_ pTpahcPayload_ pTpahcRegion_ =
    TargetPoolsAddHealthCheck'
    { _tpahcQuotaUser = Nothing
    , _tpahcPrettyPrint = True
    , _tpahcProject = pTpahcProject_
    , _tpahcTargetPool = pTpahcTargetPool_
    , _tpahcUserIP = Nothing
    , _tpahcPayload = pTpahcPayload_
    , _tpahcKey = Nothing
    , _tpahcRegion = pTpahcRegion_
    , _tpahcOAuthToken = Nothing
    , _tpahcFields = Nothing
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
tpahcUserIP :: Lens' TargetPoolsAddHealthCheck' (Maybe Text)
tpahcUserIP
  = lens _tpahcUserIP (\ s a -> s{_tpahcUserIP = a})

-- | Multipart request metadata.
tpahcPayload :: Lens' TargetPoolsAddHealthCheck' TargetPoolsAddHealthCheckRequest
tpahcPayload
  = lens _tpahcPayload (\ s a -> s{_tpahcPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tpahcKey :: Lens' TargetPoolsAddHealthCheck' (Maybe Key)
tpahcKey = lens _tpahcKey (\ s a -> s{_tpahcKey = a})

-- | Name of the region scoping this request.
tpahcRegion :: Lens' TargetPoolsAddHealthCheck' Text
tpahcRegion
  = lens _tpahcRegion (\ s a -> s{_tpahcRegion = a})

-- | OAuth 2.0 token for the current user.
tpahcOAuthToken :: Lens' TargetPoolsAddHealthCheck' (Maybe OAuthToken)
tpahcOAuthToken
  = lens _tpahcOAuthToken
      (\ s a -> s{_tpahcOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tpahcFields :: Lens' TargetPoolsAddHealthCheck' (Maybe Text)
tpahcFields
  = lens _tpahcFields (\ s a -> s{_tpahcFields = a})

instance GoogleAuth TargetPoolsAddHealthCheck' where
        authKey = tpahcKey . _Just
        authToken = tpahcOAuthToken . _Just

instance GoogleRequest TargetPoolsAddHealthCheck'
         where
        type Rs TargetPoolsAddHealthCheck' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u TargetPoolsAddHealthCheck'{..}
          = go _tpahcProject _tpahcRegion _tpahcTargetPool
              _tpahcQuotaUser
              (Just _tpahcPrettyPrint)
              _tpahcUserIP
              _tpahcFields
              _tpahcKey
              _tpahcOAuthToken
              (Just AltJSON)
              _tpahcPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TargetPoolsAddHealthCheckResource)
                      r
                      u
