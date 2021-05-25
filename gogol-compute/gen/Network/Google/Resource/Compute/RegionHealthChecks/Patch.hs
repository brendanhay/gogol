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
-- Module      : Network.Google.Resource.Compute.RegionHealthChecks.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a HealthCheck resource in the specified project using the data
-- included in the request. This method supports PATCH semantics and uses
-- the JSON merge patch format and processing rules.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionHealthChecks.patch@.
module Network.Google.Resource.Compute.RegionHealthChecks.Patch
    (
    -- * REST Resource
      RegionHealthChecksPatchResource

    -- * Creating a Request
    , regionHealthChecksPatch
    , RegionHealthChecksPatch

    -- * Request Lenses
    , rhcpRequestId
    , rhcpHealthCheck
    , rhcpProject
    , rhcpPayload
    , rhcpRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionHealthChecks.patch@ method which the
-- 'RegionHealthChecksPatch' request conforms to.
type RegionHealthChecksPatchResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "healthChecks" :>
                   Capture "healthCheck" Text :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] HealthCheck :>
                           Patch '[JSON] Operation

-- | Updates a HealthCheck resource in the specified project using the data
-- included in the request. This method supports PATCH semantics and uses
-- the JSON merge patch format and processing rules.
--
-- /See:/ 'regionHealthChecksPatch' smart constructor.
data RegionHealthChecksPatch =
  RegionHealthChecksPatch'
    { _rhcpRequestId :: !(Maybe Text)
    , _rhcpHealthCheck :: !Text
    , _rhcpProject :: !Text
    , _rhcpPayload :: !HealthCheck
    , _rhcpRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionHealthChecksPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rhcpRequestId'
--
-- * 'rhcpHealthCheck'
--
-- * 'rhcpProject'
--
-- * 'rhcpPayload'
--
-- * 'rhcpRegion'
regionHealthChecksPatch
    :: Text -- ^ 'rhcpHealthCheck'
    -> Text -- ^ 'rhcpProject'
    -> HealthCheck -- ^ 'rhcpPayload'
    -> Text -- ^ 'rhcpRegion'
    -> RegionHealthChecksPatch
regionHealthChecksPatch pRhcpHealthCheck_ pRhcpProject_ pRhcpPayload_ pRhcpRegion_ =
  RegionHealthChecksPatch'
    { _rhcpRequestId = Nothing
    , _rhcpHealthCheck = pRhcpHealthCheck_
    , _rhcpProject = pRhcpProject_
    , _rhcpPayload = pRhcpPayload_
    , _rhcpRegion = pRhcpRegion_
    }


-- | An optional request ID to identify requests. Specify a unique request ID
-- so that if you must retry your request, the server will know to ignore
-- the request if it has already been completed. For example, consider a
-- situation where you make an initial request and the request times out.
-- If you make the request again with the same request ID, the server can
-- check if original operation with the same request ID was received, and
-- if so, will ignore the second request. This prevents clients from
-- accidentally creating duplicate commitments. The request ID must be a
-- valid UUID with the exception that zero UUID is not supported
-- (00000000-0000-0000-0000-000000000000).
rhcpRequestId :: Lens' RegionHealthChecksPatch (Maybe Text)
rhcpRequestId
  = lens _rhcpRequestId
      (\ s a -> s{_rhcpRequestId = a})

-- | Name of the HealthCheck resource to patch.
rhcpHealthCheck :: Lens' RegionHealthChecksPatch Text
rhcpHealthCheck
  = lens _rhcpHealthCheck
      (\ s a -> s{_rhcpHealthCheck = a})

-- | Project ID for this request.
rhcpProject :: Lens' RegionHealthChecksPatch Text
rhcpProject
  = lens _rhcpProject (\ s a -> s{_rhcpProject = a})

-- | Multipart request metadata.
rhcpPayload :: Lens' RegionHealthChecksPatch HealthCheck
rhcpPayload
  = lens _rhcpPayload (\ s a -> s{_rhcpPayload = a})

-- | Name of the region scoping this request.
rhcpRegion :: Lens' RegionHealthChecksPatch Text
rhcpRegion
  = lens _rhcpRegion (\ s a -> s{_rhcpRegion = a})

instance GoogleRequest RegionHealthChecksPatch where
        type Rs RegionHealthChecksPatch = Operation
        type Scopes RegionHealthChecksPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionHealthChecksPatch'{..}
          = go _rhcpProject _rhcpRegion _rhcpHealthCheck
              _rhcpRequestId
              (Just AltJSON)
              _rhcpPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionHealthChecksPatchResource)
                      mempty
