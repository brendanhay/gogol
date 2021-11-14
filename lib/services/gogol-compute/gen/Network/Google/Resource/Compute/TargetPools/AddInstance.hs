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
-- Module      : Network.Google.Resource.Compute.TargetPools.AddInstance
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds an instance to a target pool.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetPools.addInstance@.
module Network.Google.Resource.Compute.TargetPools.AddInstance
    (
    -- * REST Resource
      TargetPoolsAddInstanceResource

    -- * Creating a Request
    , targetPoolsAddInstance
    , TargetPoolsAddInstance

    -- * Request Lenses
    , tpaiRequestId
    , tpaiProject
    , tpaiTargetPool
    , tpaiPayload
    , tpaiRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.targetPools.addInstance@ method which the
-- 'TargetPoolsAddInstance' request conforms to.
type TargetPoolsAddInstanceResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "targetPools" :>
                   Capture "targetPool" Text :>
                     "addInstance" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] TargetPoolsAddInstanceRequest :>
                             Post '[JSON] Operation

-- | Adds an instance to a target pool.
--
-- /See:/ 'targetPoolsAddInstance' smart constructor.
data TargetPoolsAddInstance =
  TargetPoolsAddInstance'
    { _tpaiRequestId :: !(Maybe Text)
    , _tpaiProject :: !Text
    , _tpaiTargetPool :: !Text
    , _tpaiPayload :: !TargetPoolsAddInstanceRequest
    , _tpaiRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetPoolsAddInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpaiRequestId'
--
-- * 'tpaiProject'
--
-- * 'tpaiTargetPool'
--
-- * 'tpaiPayload'
--
-- * 'tpaiRegion'
targetPoolsAddInstance
    :: Text -- ^ 'tpaiProject'
    -> Text -- ^ 'tpaiTargetPool'
    -> TargetPoolsAddInstanceRequest -- ^ 'tpaiPayload'
    -> Text -- ^ 'tpaiRegion'
    -> TargetPoolsAddInstance
targetPoolsAddInstance pTpaiProject_ pTpaiTargetPool_ pTpaiPayload_ pTpaiRegion_ =
  TargetPoolsAddInstance'
    { _tpaiRequestId = Nothing
    , _tpaiProject = pTpaiProject_
    , _tpaiTargetPool = pTpaiTargetPool_
    , _tpaiPayload = pTpaiPayload_
    , _tpaiRegion = pTpaiRegion_
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
tpaiRequestId :: Lens' TargetPoolsAddInstance (Maybe Text)
tpaiRequestId
  = lens _tpaiRequestId
      (\ s a -> s{_tpaiRequestId = a})

-- | Project ID for this request.
tpaiProject :: Lens' TargetPoolsAddInstance Text
tpaiProject
  = lens _tpaiProject (\ s a -> s{_tpaiProject = a})

-- | Name of the TargetPool resource to add instances to.
tpaiTargetPool :: Lens' TargetPoolsAddInstance Text
tpaiTargetPool
  = lens _tpaiTargetPool
      (\ s a -> s{_tpaiTargetPool = a})

-- | Multipart request metadata.
tpaiPayload :: Lens' TargetPoolsAddInstance TargetPoolsAddInstanceRequest
tpaiPayload
  = lens _tpaiPayload (\ s a -> s{_tpaiPayload = a})

-- | Name of the region scoping this request.
tpaiRegion :: Lens' TargetPoolsAddInstance Text
tpaiRegion
  = lens _tpaiRegion (\ s a -> s{_tpaiRegion = a})

instance GoogleRequest TargetPoolsAddInstance where
        type Rs TargetPoolsAddInstance = Operation
        type Scopes TargetPoolsAddInstance =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient TargetPoolsAddInstance'{..}
          = go _tpaiProject _tpaiRegion _tpaiTargetPool
              _tpaiRequestId
              (Just AltJSON)
              _tpaiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetPoolsAddInstanceResource)
                      mempty
