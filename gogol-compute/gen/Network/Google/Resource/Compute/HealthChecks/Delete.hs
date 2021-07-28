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
-- Module      : Network.Google.Resource.Compute.HealthChecks.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified HealthCheck resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.healthChecks.delete@.
module Network.Google.Resource.Compute.HealthChecks.Delete
    (
    -- * REST Resource
      HealthChecksDeleteResource

    -- * Creating a Request
    , healthChecksDelete
    , HealthChecksDelete

    -- * Request Lenses
    , hcdRequestId
    , hcdHealthCheck
    , hcdProject
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.healthChecks.delete@ method which the
-- 'HealthChecksDelete' request conforms to.
type HealthChecksDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "healthChecks" :>
                 Capture "healthCheck" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified HealthCheck resource.
--
-- /See:/ 'healthChecksDelete' smart constructor.
data HealthChecksDelete =
  HealthChecksDelete'
    { _hcdRequestId :: !(Maybe Text)
    , _hcdHealthCheck :: !Text
    , _hcdProject :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HealthChecksDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hcdRequestId'
--
-- * 'hcdHealthCheck'
--
-- * 'hcdProject'
healthChecksDelete
    :: Text -- ^ 'hcdHealthCheck'
    -> Text -- ^ 'hcdProject'
    -> HealthChecksDelete
healthChecksDelete pHcdHealthCheck_ pHcdProject_ =
  HealthChecksDelete'
    { _hcdRequestId = Nothing
    , _hcdHealthCheck = pHcdHealthCheck_
    , _hcdProject = pHcdProject_
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
hcdRequestId :: Lens' HealthChecksDelete (Maybe Text)
hcdRequestId
  = lens _hcdRequestId (\ s a -> s{_hcdRequestId = a})

-- | Name of the HealthCheck resource to delete.
hcdHealthCheck :: Lens' HealthChecksDelete Text
hcdHealthCheck
  = lens _hcdHealthCheck
      (\ s a -> s{_hcdHealthCheck = a})

-- | Project ID for this request.
hcdProject :: Lens' HealthChecksDelete Text
hcdProject
  = lens _hcdProject (\ s a -> s{_hcdProject = a})

instance GoogleRequest HealthChecksDelete where
        type Rs HealthChecksDelete = Operation
        type Scopes HealthChecksDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient HealthChecksDelete'{..}
          = go _hcdProject _hcdHealthCheck _hcdRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy HealthChecksDeleteResource)
                      mempty
