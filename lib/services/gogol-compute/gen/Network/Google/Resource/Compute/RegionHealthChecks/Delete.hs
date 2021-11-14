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
-- Module      : Network.Google.Resource.Compute.RegionHealthChecks.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified HealthCheck resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionHealthChecks.delete@.
module Network.Google.Resource.Compute.RegionHealthChecks.Delete
    (
    -- * REST Resource
      RegionHealthChecksDeleteResource

    -- * Creating a Request
    , regionHealthChecksDelete
    , RegionHealthChecksDelete

    -- * Request Lenses
    , rhcdRequestId
    , rhcdHealthCheck
    , rhcdProject
    , rhcdRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionHealthChecks.delete@ method which the
-- 'RegionHealthChecksDelete' request conforms to.
type RegionHealthChecksDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "healthChecks" :>
                   Capture "healthCheck" Text :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified HealthCheck resource.
--
-- /See:/ 'regionHealthChecksDelete' smart constructor.
data RegionHealthChecksDelete =
  RegionHealthChecksDelete'
    { _rhcdRequestId :: !(Maybe Text)
    , _rhcdHealthCheck :: !Text
    , _rhcdProject :: !Text
    , _rhcdRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionHealthChecksDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rhcdRequestId'
--
-- * 'rhcdHealthCheck'
--
-- * 'rhcdProject'
--
-- * 'rhcdRegion'
regionHealthChecksDelete
    :: Text -- ^ 'rhcdHealthCheck'
    -> Text -- ^ 'rhcdProject'
    -> Text -- ^ 'rhcdRegion'
    -> RegionHealthChecksDelete
regionHealthChecksDelete pRhcdHealthCheck_ pRhcdProject_ pRhcdRegion_ =
  RegionHealthChecksDelete'
    { _rhcdRequestId = Nothing
    , _rhcdHealthCheck = pRhcdHealthCheck_
    , _rhcdProject = pRhcdProject_
    , _rhcdRegion = pRhcdRegion_
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
rhcdRequestId :: Lens' RegionHealthChecksDelete (Maybe Text)
rhcdRequestId
  = lens _rhcdRequestId
      (\ s a -> s{_rhcdRequestId = a})

-- | Name of the HealthCheck resource to delete.
rhcdHealthCheck :: Lens' RegionHealthChecksDelete Text
rhcdHealthCheck
  = lens _rhcdHealthCheck
      (\ s a -> s{_rhcdHealthCheck = a})

-- | Project ID for this request.
rhcdProject :: Lens' RegionHealthChecksDelete Text
rhcdProject
  = lens _rhcdProject (\ s a -> s{_rhcdProject = a})

-- | Name of the region scoping this request.
rhcdRegion :: Lens' RegionHealthChecksDelete Text
rhcdRegion
  = lens _rhcdRegion (\ s a -> s{_rhcdRegion = a})

instance GoogleRequest RegionHealthChecksDelete where
        type Rs RegionHealthChecksDelete = Operation
        type Scopes RegionHealthChecksDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionHealthChecksDelete'{..}
          = go _rhcdProject _rhcdRegion _rhcdHealthCheck
              _rhcdRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionHealthChecksDeleteResource)
                      mempty
