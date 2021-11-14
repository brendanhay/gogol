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
-- Module      : Network.Google.Resource.Compute.RegionHealthCheckServices.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a regional HealthCheckService resource in the specified project
-- and region using the data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionHealthCheckServices.insert@.
module Network.Google.Resource.Compute.RegionHealthCheckServices.Insert
    (
    -- * REST Resource
      RegionHealthCheckServicesInsertResource

    -- * Creating a Request
    , regionHealthCheckServicesInsert
    , RegionHealthCheckServicesInsert

    -- * Request Lenses
    , rhcsiRequestId
    , rhcsiProject
    , rhcsiPayload
    , rhcsiRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionHealthCheckServices.insert@ method which the
-- 'RegionHealthCheckServicesInsert' request conforms to.
type RegionHealthCheckServicesInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "healthCheckServices" :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] HealthCheckService :>
                         Post '[JSON] Operation

-- | Creates a regional HealthCheckService resource in the specified project
-- and region using the data included in the request.
--
-- /See:/ 'regionHealthCheckServicesInsert' smart constructor.
data RegionHealthCheckServicesInsert =
  RegionHealthCheckServicesInsert'
    { _rhcsiRequestId :: !(Maybe Text)
    , _rhcsiProject :: !Text
    , _rhcsiPayload :: !HealthCheckService
    , _rhcsiRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionHealthCheckServicesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rhcsiRequestId'
--
-- * 'rhcsiProject'
--
-- * 'rhcsiPayload'
--
-- * 'rhcsiRegion'
regionHealthCheckServicesInsert
    :: Text -- ^ 'rhcsiProject'
    -> HealthCheckService -- ^ 'rhcsiPayload'
    -> Text -- ^ 'rhcsiRegion'
    -> RegionHealthCheckServicesInsert
regionHealthCheckServicesInsert pRhcsiProject_ pRhcsiPayload_ pRhcsiRegion_ =
  RegionHealthCheckServicesInsert'
    { _rhcsiRequestId = Nothing
    , _rhcsiProject = pRhcsiProject_
    , _rhcsiPayload = pRhcsiPayload_
    , _rhcsiRegion = pRhcsiRegion_
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
rhcsiRequestId :: Lens' RegionHealthCheckServicesInsert (Maybe Text)
rhcsiRequestId
  = lens _rhcsiRequestId
      (\ s a -> s{_rhcsiRequestId = a})

-- | Project ID for this request.
rhcsiProject :: Lens' RegionHealthCheckServicesInsert Text
rhcsiProject
  = lens _rhcsiProject (\ s a -> s{_rhcsiProject = a})

-- | Multipart request metadata.
rhcsiPayload :: Lens' RegionHealthCheckServicesInsert HealthCheckService
rhcsiPayload
  = lens _rhcsiPayload (\ s a -> s{_rhcsiPayload = a})

-- | Name of the region scoping this request.
rhcsiRegion :: Lens' RegionHealthCheckServicesInsert Text
rhcsiRegion
  = lens _rhcsiRegion (\ s a -> s{_rhcsiRegion = a})

instance GoogleRequest
           RegionHealthCheckServicesInsert
         where
        type Rs RegionHealthCheckServicesInsert = Operation
        type Scopes RegionHealthCheckServicesInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionHealthCheckServicesInsert'{..}
          = go _rhcsiProject _rhcsiRegion _rhcsiRequestId
              (Just AltJSON)
              _rhcsiPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RegionHealthCheckServicesInsertResource)
                      mempty
