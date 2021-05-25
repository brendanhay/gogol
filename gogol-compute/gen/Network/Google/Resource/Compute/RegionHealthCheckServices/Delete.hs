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
-- Module      : Network.Google.Resource.Compute.RegionHealthCheckServices.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified regional HealthCheckService.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionHealthCheckServices.delete@.
module Network.Google.Resource.Compute.RegionHealthCheckServices.Delete
    (
    -- * REST Resource
      RegionHealthCheckServicesDeleteResource

    -- * Creating a Request
    , regionHealthCheckServicesDelete
    , RegionHealthCheckServicesDelete

    -- * Request Lenses
    , rhcsdRequestId
    , rhcsdHealthCheckService
    , rhcsdProject
    , rhcsdRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionHealthCheckServices.delete@ method which the
-- 'RegionHealthCheckServicesDelete' request conforms to.
type RegionHealthCheckServicesDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "healthCheckServices" :>
                   Capture "healthCheckService" Text :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified regional HealthCheckService.
--
-- /See:/ 'regionHealthCheckServicesDelete' smart constructor.
data RegionHealthCheckServicesDelete =
  RegionHealthCheckServicesDelete'
    { _rhcsdRequestId :: !(Maybe Text)
    , _rhcsdHealthCheckService :: !Text
    , _rhcsdProject :: !Text
    , _rhcsdRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionHealthCheckServicesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rhcsdRequestId'
--
-- * 'rhcsdHealthCheckService'
--
-- * 'rhcsdProject'
--
-- * 'rhcsdRegion'
regionHealthCheckServicesDelete
    :: Text -- ^ 'rhcsdHealthCheckService'
    -> Text -- ^ 'rhcsdProject'
    -> Text -- ^ 'rhcsdRegion'
    -> RegionHealthCheckServicesDelete
regionHealthCheckServicesDelete pRhcsdHealthCheckService_ pRhcsdProject_ pRhcsdRegion_ =
  RegionHealthCheckServicesDelete'
    { _rhcsdRequestId = Nothing
    , _rhcsdHealthCheckService = pRhcsdHealthCheckService_
    , _rhcsdProject = pRhcsdProject_
    , _rhcsdRegion = pRhcsdRegion_
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
rhcsdRequestId :: Lens' RegionHealthCheckServicesDelete (Maybe Text)
rhcsdRequestId
  = lens _rhcsdRequestId
      (\ s a -> s{_rhcsdRequestId = a})

-- | Name of the HealthCheckService to delete. The name must be 1-63
-- characters long, and comply with RFC1035.
rhcsdHealthCheckService :: Lens' RegionHealthCheckServicesDelete Text
rhcsdHealthCheckService
  = lens _rhcsdHealthCheckService
      (\ s a -> s{_rhcsdHealthCheckService = a})

-- | Project ID for this request.
rhcsdProject :: Lens' RegionHealthCheckServicesDelete Text
rhcsdProject
  = lens _rhcsdProject (\ s a -> s{_rhcsdProject = a})

-- | Name of the region scoping this request.
rhcsdRegion :: Lens' RegionHealthCheckServicesDelete Text
rhcsdRegion
  = lens _rhcsdRegion (\ s a -> s{_rhcsdRegion = a})

instance GoogleRequest
           RegionHealthCheckServicesDelete
         where
        type Rs RegionHealthCheckServicesDelete = Operation
        type Scopes RegionHealthCheckServicesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionHealthCheckServicesDelete'{..}
          = go _rhcsdProject _rhcsdRegion
              _rhcsdHealthCheckService
              _rhcsdRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RegionHealthCheckServicesDeleteResource)
                      mempty
