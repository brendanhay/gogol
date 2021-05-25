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
-- Module      : Network.Google.Resource.Compute.RegionHealthChecks.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a HealthCheck resource in the specified project using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionHealthChecks.insert@.
module Network.Google.Resource.Compute.RegionHealthChecks.Insert
    (
    -- * REST Resource
      RegionHealthChecksInsertResource

    -- * Creating a Request
    , regionHealthChecksInsert
    , RegionHealthChecksInsert

    -- * Request Lenses
    , rhciRequestId
    , rhciProject
    , rhciPayload
    , rhciRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionHealthChecks.insert@ method which the
-- 'RegionHealthChecksInsert' request conforms to.
type RegionHealthChecksInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "healthChecks" :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] HealthCheck :> Post '[JSON] Operation

-- | Creates a HealthCheck resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'regionHealthChecksInsert' smart constructor.
data RegionHealthChecksInsert =
  RegionHealthChecksInsert'
    { _rhciRequestId :: !(Maybe Text)
    , _rhciProject :: !Text
    , _rhciPayload :: !HealthCheck
    , _rhciRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionHealthChecksInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rhciRequestId'
--
-- * 'rhciProject'
--
-- * 'rhciPayload'
--
-- * 'rhciRegion'
regionHealthChecksInsert
    :: Text -- ^ 'rhciProject'
    -> HealthCheck -- ^ 'rhciPayload'
    -> Text -- ^ 'rhciRegion'
    -> RegionHealthChecksInsert
regionHealthChecksInsert pRhciProject_ pRhciPayload_ pRhciRegion_ =
  RegionHealthChecksInsert'
    { _rhciRequestId = Nothing
    , _rhciProject = pRhciProject_
    , _rhciPayload = pRhciPayload_
    , _rhciRegion = pRhciRegion_
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
rhciRequestId :: Lens' RegionHealthChecksInsert (Maybe Text)
rhciRequestId
  = lens _rhciRequestId
      (\ s a -> s{_rhciRequestId = a})

-- | Project ID for this request.
rhciProject :: Lens' RegionHealthChecksInsert Text
rhciProject
  = lens _rhciProject (\ s a -> s{_rhciProject = a})

-- | Multipart request metadata.
rhciPayload :: Lens' RegionHealthChecksInsert HealthCheck
rhciPayload
  = lens _rhciPayload (\ s a -> s{_rhciPayload = a})

-- | Name of the region scoping this request.
rhciRegion :: Lens' RegionHealthChecksInsert Text
rhciRegion
  = lens _rhciRegion (\ s a -> s{_rhciRegion = a})

instance GoogleRequest RegionHealthChecksInsert where
        type Rs RegionHealthChecksInsert = Operation
        type Scopes RegionHealthChecksInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionHealthChecksInsert'{..}
          = go _rhciProject _rhciRegion _rhciRequestId
              (Just AltJSON)
              _rhciPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionHealthChecksInsertResource)
                      mempty
