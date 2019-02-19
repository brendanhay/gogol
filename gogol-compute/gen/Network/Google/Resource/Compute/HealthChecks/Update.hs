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
-- Module      : Network.Google.Resource.Compute.HealthChecks.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a HealthCheck resource in the specified project using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.healthChecks.update@.
module Network.Google.Resource.Compute.HealthChecks.Update
    (
    -- * REST Resource
      HealthChecksUpdateResource

    -- * Creating a Request
    , healthChecksUpdate
    , HealthChecksUpdate

    -- * Request Lenses
    , hcuRequestId
    , hcuHealthCheck
    , hcuProject
    , hcuPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.healthChecks.update@ method which the
-- 'HealthChecksUpdate' request conforms to.
type HealthChecksUpdateResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "healthChecks" :>
                 Capture "healthCheck" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] HealthCheck :> Put '[JSON] Operation

-- | Updates a HealthCheck resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'healthChecksUpdate' smart constructor.
data HealthChecksUpdate =
  HealthChecksUpdate'
    { _hcuRequestId   :: !(Maybe Text)
    , _hcuHealthCheck :: !Text
    , _hcuProject     :: !Text
    , _hcuPayload     :: !HealthCheck
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'HealthChecksUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hcuRequestId'
--
-- * 'hcuHealthCheck'
--
-- * 'hcuProject'
--
-- * 'hcuPayload'
healthChecksUpdate
    :: Text -- ^ 'hcuHealthCheck'
    -> Text -- ^ 'hcuProject'
    -> HealthCheck -- ^ 'hcuPayload'
    -> HealthChecksUpdate
healthChecksUpdate pHcuHealthCheck_ pHcuProject_ pHcuPayload_ =
  HealthChecksUpdate'
    { _hcuRequestId = Nothing
    , _hcuHealthCheck = pHcuHealthCheck_
    , _hcuProject = pHcuProject_
    , _hcuPayload = pHcuPayload_
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
hcuRequestId :: Lens' HealthChecksUpdate (Maybe Text)
hcuRequestId
  = lens _hcuRequestId (\ s a -> s{_hcuRequestId = a})

-- | Name of the HealthCheck resource to update.
hcuHealthCheck :: Lens' HealthChecksUpdate Text
hcuHealthCheck
  = lens _hcuHealthCheck
      (\ s a -> s{_hcuHealthCheck = a})

-- | Project ID for this request.
hcuProject :: Lens' HealthChecksUpdate Text
hcuProject
  = lens _hcuProject (\ s a -> s{_hcuProject = a})

-- | Multipart request metadata.
hcuPayload :: Lens' HealthChecksUpdate HealthCheck
hcuPayload
  = lens _hcuPayload (\ s a -> s{_hcuPayload = a})

instance GoogleRequest HealthChecksUpdate where
        type Rs HealthChecksUpdate = Operation
        type Scopes HealthChecksUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient HealthChecksUpdate'{..}
          = go _hcuProject _hcuHealthCheck _hcuRequestId
              (Just AltJSON)
              _hcuPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy HealthChecksUpdateResource)
                      mempty
