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
-- Module      : Network.Google.Resource.Compute.HealthChecks.Patch
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
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.healthChecks.patch@.
module Network.Google.Resource.Compute.HealthChecks.Patch
    (
    -- * REST Resource
      HealthChecksPatchResource

    -- * Creating a Request
    , healthChecksPatch
    , HealthChecksPatch

    -- * Request Lenses
    , hcpRequestId
    , hcpHealthCheck
    , hcpProject
    , hcpPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.healthChecks.patch@ method which the
-- 'HealthChecksPatch' request conforms to.
type HealthChecksPatchResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
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
-- /See:/ 'healthChecksPatch' smart constructor.
data HealthChecksPatch =
  HealthChecksPatch'
    { _hcpRequestId   :: !(Maybe Text)
    , _hcpHealthCheck :: !Text
    , _hcpProject     :: !Text
    , _hcpPayload     :: !HealthCheck
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'HealthChecksPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hcpRequestId'
--
-- * 'hcpHealthCheck'
--
-- * 'hcpProject'
--
-- * 'hcpPayload'
healthChecksPatch
    :: Text -- ^ 'hcpHealthCheck'
    -> Text -- ^ 'hcpProject'
    -> HealthCheck -- ^ 'hcpPayload'
    -> HealthChecksPatch
healthChecksPatch pHcpHealthCheck_ pHcpProject_ pHcpPayload_ =
  HealthChecksPatch'
    { _hcpRequestId = Nothing
    , _hcpHealthCheck = pHcpHealthCheck_
    , _hcpProject = pHcpProject_
    , _hcpPayload = pHcpPayload_
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
hcpRequestId :: Lens' HealthChecksPatch (Maybe Text)
hcpRequestId
  = lens _hcpRequestId (\ s a -> s{_hcpRequestId = a})

-- | Name of the HealthCheck resource to patch.
hcpHealthCheck :: Lens' HealthChecksPatch Text
hcpHealthCheck
  = lens _hcpHealthCheck
      (\ s a -> s{_hcpHealthCheck = a})

-- | Project ID for this request.
hcpProject :: Lens' HealthChecksPatch Text
hcpProject
  = lens _hcpProject (\ s a -> s{_hcpProject = a})

-- | Multipart request metadata.
hcpPayload :: Lens' HealthChecksPatch HealthCheck
hcpPayload
  = lens _hcpPayload (\ s a -> s{_hcpPayload = a})

instance GoogleRequest HealthChecksPatch where
        type Rs HealthChecksPatch = Operation
        type Scopes HealthChecksPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient HealthChecksPatch'{..}
          = go _hcpProject _hcpHealthCheck _hcpRequestId
              (Just AltJSON)
              _hcpPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy HealthChecksPatchResource)
                      mempty
