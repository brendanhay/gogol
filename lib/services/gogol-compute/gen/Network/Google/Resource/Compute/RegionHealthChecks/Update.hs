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
-- Module      : Network.Google.Resource.Compute.RegionHealthChecks.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a HealthCheck resource in the specified project using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionHealthChecks.update@.
module Network.Google.Resource.Compute.RegionHealthChecks.Update
    (
    -- * REST Resource
      RegionHealthChecksUpdateResource

    -- * Creating a Request
    , regionHealthChecksUpdate
    , RegionHealthChecksUpdate

    -- * Request Lenses
    , rhcuRequestId
    , rhcuHealthCheck
    , rhcuProject
    , rhcuPayload
    , rhcuRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionHealthChecks.update@ method which the
-- 'RegionHealthChecksUpdate' request conforms to.
type RegionHealthChecksUpdateResource =
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
                         ReqBody '[JSON] HealthCheck :> Put '[JSON] Operation

-- | Updates a HealthCheck resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'regionHealthChecksUpdate' smart constructor.
data RegionHealthChecksUpdate =
  RegionHealthChecksUpdate'
    { _rhcuRequestId :: !(Maybe Text)
    , _rhcuHealthCheck :: !Text
    , _rhcuProject :: !Text
    , _rhcuPayload :: !HealthCheck
    , _rhcuRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionHealthChecksUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rhcuRequestId'
--
-- * 'rhcuHealthCheck'
--
-- * 'rhcuProject'
--
-- * 'rhcuPayload'
--
-- * 'rhcuRegion'
regionHealthChecksUpdate
    :: Text -- ^ 'rhcuHealthCheck'
    -> Text -- ^ 'rhcuProject'
    -> HealthCheck -- ^ 'rhcuPayload'
    -> Text -- ^ 'rhcuRegion'
    -> RegionHealthChecksUpdate
regionHealthChecksUpdate pRhcuHealthCheck_ pRhcuProject_ pRhcuPayload_ pRhcuRegion_ =
  RegionHealthChecksUpdate'
    { _rhcuRequestId = Nothing
    , _rhcuHealthCheck = pRhcuHealthCheck_
    , _rhcuProject = pRhcuProject_
    , _rhcuPayload = pRhcuPayload_
    , _rhcuRegion = pRhcuRegion_
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
rhcuRequestId :: Lens' RegionHealthChecksUpdate (Maybe Text)
rhcuRequestId
  = lens _rhcuRequestId
      (\ s a -> s{_rhcuRequestId = a})

-- | Name of the HealthCheck resource to update.
rhcuHealthCheck :: Lens' RegionHealthChecksUpdate Text
rhcuHealthCheck
  = lens _rhcuHealthCheck
      (\ s a -> s{_rhcuHealthCheck = a})

-- | Project ID for this request.
rhcuProject :: Lens' RegionHealthChecksUpdate Text
rhcuProject
  = lens _rhcuProject (\ s a -> s{_rhcuProject = a})

-- | Multipart request metadata.
rhcuPayload :: Lens' RegionHealthChecksUpdate HealthCheck
rhcuPayload
  = lens _rhcuPayload (\ s a -> s{_rhcuPayload = a})

-- | Name of the region scoping this request.
rhcuRegion :: Lens' RegionHealthChecksUpdate Text
rhcuRegion
  = lens _rhcuRegion (\ s a -> s{_rhcuRegion = a})

instance GoogleRequest RegionHealthChecksUpdate where
        type Rs RegionHealthChecksUpdate = Operation
        type Scopes RegionHealthChecksUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionHealthChecksUpdate'{..}
          = go _rhcuProject _rhcuRegion _rhcuHealthCheck
              _rhcuRequestId
              (Just AltJSON)
              _rhcuPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionHealthChecksUpdateResource)
                      mempty
