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
-- Module      : Network.Google.Resource.Compute.TargetPools.AddHealthCheck
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds health check URLs to a target pool.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetPools.addHealthCheck@.
module Network.Google.Resource.Compute.TargetPools.AddHealthCheck
    (
    -- * REST Resource
      TargetPoolsAddHealthCheckResource

    -- * Creating a Request
    , targetPoolsAddHealthCheck
    , TargetPoolsAddHealthCheck

    -- * Request Lenses
    , tpahcRequestId
    , tpahcProject
    , tpahcTargetPool
    , tpahcPayload
    , tpahcRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.targetPools.addHealthCheck@ method which the
-- 'TargetPoolsAddHealthCheck' request conforms to.
type TargetPoolsAddHealthCheckResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "targetPools" :>
                   Capture "targetPool" Text :>
                     "addHealthCheck" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] TargetPoolsAddHealthCheckRequest :>
                             Post '[JSON] Operation

-- | Adds health check URLs to a target pool.
--
-- /See:/ 'targetPoolsAddHealthCheck' smart constructor.
data TargetPoolsAddHealthCheck =
  TargetPoolsAddHealthCheck'
    { _tpahcRequestId :: !(Maybe Text)
    , _tpahcProject :: !Text
    , _tpahcTargetPool :: !Text
    , _tpahcPayload :: !TargetPoolsAddHealthCheckRequest
    , _tpahcRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetPoolsAddHealthCheck' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpahcRequestId'
--
-- * 'tpahcProject'
--
-- * 'tpahcTargetPool'
--
-- * 'tpahcPayload'
--
-- * 'tpahcRegion'
targetPoolsAddHealthCheck
    :: Text -- ^ 'tpahcProject'
    -> Text -- ^ 'tpahcTargetPool'
    -> TargetPoolsAddHealthCheckRequest -- ^ 'tpahcPayload'
    -> Text -- ^ 'tpahcRegion'
    -> TargetPoolsAddHealthCheck
targetPoolsAddHealthCheck pTpahcProject_ pTpahcTargetPool_ pTpahcPayload_ pTpahcRegion_ =
  TargetPoolsAddHealthCheck'
    { _tpahcRequestId = Nothing
    , _tpahcProject = pTpahcProject_
    , _tpahcTargetPool = pTpahcTargetPool_
    , _tpahcPayload = pTpahcPayload_
    , _tpahcRegion = pTpahcRegion_
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
tpahcRequestId :: Lens' TargetPoolsAddHealthCheck (Maybe Text)
tpahcRequestId
  = lens _tpahcRequestId
      (\ s a -> s{_tpahcRequestId = a})

-- | Project ID for this request.
tpahcProject :: Lens' TargetPoolsAddHealthCheck Text
tpahcProject
  = lens _tpahcProject (\ s a -> s{_tpahcProject = a})

-- | Name of the target pool to add a health check to.
tpahcTargetPool :: Lens' TargetPoolsAddHealthCheck Text
tpahcTargetPool
  = lens _tpahcTargetPool
      (\ s a -> s{_tpahcTargetPool = a})

-- | Multipart request metadata.
tpahcPayload :: Lens' TargetPoolsAddHealthCheck TargetPoolsAddHealthCheckRequest
tpahcPayload
  = lens _tpahcPayload (\ s a -> s{_tpahcPayload = a})

-- | Name of the region scoping this request.
tpahcRegion :: Lens' TargetPoolsAddHealthCheck Text
tpahcRegion
  = lens _tpahcRegion (\ s a -> s{_tpahcRegion = a})

instance GoogleRequest TargetPoolsAddHealthCheck
         where
        type Rs TargetPoolsAddHealthCheck = Operation
        type Scopes TargetPoolsAddHealthCheck =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient TargetPoolsAddHealthCheck'{..}
          = go _tpahcProject _tpahcRegion _tpahcTargetPool
              _tpahcRequestId
              (Just AltJSON)
              _tpahcPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetPoolsAddHealthCheckResource)
                      mempty
