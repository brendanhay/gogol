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
-- Module      : Network.Google.Resource.Compute.RegionTargetHTTPProxies.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a TargetHttpProxy resource in the specified project and region
-- using the data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionTargetHttpProxies.insert@.
module Network.Google.Resource.Compute.RegionTargetHTTPProxies.Insert
    (
    -- * REST Resource
      RegionTargetHTTPProxiesInsertResource

    -- * Creating a Request
    , regionTargetHTTPProxiesInsert
    , RegionTargetHTTPProxiesInsert

    -- * Request Lenses
    , rthttppiRequestId
    , rthttppiProject
    , rthttppiPayload
    , rthttppiRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionTargetHttpProxies.insert@ method which the
-- 'RegionTargetHTTPProxiesInsert' request conforms to.
type RegionTargetHTTPProxiesInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "targetHttpProxies" :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] TargetHTTPProxy :>
                         Post '[JSON] Operation

-- | Creates a TargetHttpProxy resource in the specified project and region
-- using the data included in the request.
--
-- /See:/ 'regionTargetHTTPProxiesInsert' smart constructor.
data RegionTargetHTTPProxiesInsert =
  RegionTargetHTTPProxiesInsert'
    { _rthttppiRequestId :: !(Maybe Text)
    , _rthttppiProject :: !Text
    , _rthttppiPayload :: !TargetHTTPProxy
    , _rthttppiRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionTargetHTTPProxiesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rthttppiRequestId'
--
-- * 'rthttppiProject'
--
-- * 'rthttppiPayload'
--
-- * 'rthttppiRegion'
regionTargetHTTPProxiesInsert
    :: Text -- ^ 'rthttppiProject'
    -> TargetHTTPProxy -- ^ 'rthttppiPayload'
    -> Text -- ^ 'rthttppiRegion'
    -> RegionTargetHTTPProxiesInsert
regionTargetHTTPProxiesInsert pRthttppiProject_ pRthttppiPayload_ pRthttppiRegion_ =
  RegionTargetHTTPProxiesInsert'
    { _rthttppiRequestId = Nothing
    , _rthttppiProject = pRthttppiProject_
    , _rthttppiPayload = pRthttppiPayload_
    , _rthttppiRegion = pRthttppiRegion_
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
rthttppiRequestId :: Lens' RegionTargetHTTPProxiesInsert (Maybe Text)
rthttppiRequestId
  = lens _rthttppiRequestId
      (\ s a -> s{_rthttppiRequestId = a})

-- | Project ID for this request.
rthttppiProject :: Lens' RegionTargetHTTPProxiesInsert Text
rthttppiProject
  = lens _rthttppiProject
      (\ s a -> s{_rthttppiProject = a})

-- | Multipart request metadata.
rthttppiPayload :: Lens' RegionTargetHTTPProxiesInsert TargetHTTPProxy
rthttppiPayload
  = lens _rthttppiPayload
      (\ s a -> s{_rthttppiPayload = a})

-- | Name of the region scoping this request.
rthttppiRegion :: Lens' RegionTargetHTTPProxiesInsert Text
rthttppiRegion
  = lens _rthttppiRegion
      (\ s a -> s{_rthttppiRegion = a})

instance GoogleRequest RegionTargetHTTPProxiesInsert
         where
        type Rs RegionTargetHTTPProxiesInsert = Operation
        type Scopes RegionTargetHTTPProxiesInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionTargetHTTPProxiesInsert'{..}
          = go _rthttppiProject _rthttppiRegion
              _rthttppiRequestId
              (Just AltJSON)
              _rthttppiPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RegionTargetHTTPProxiesInsertResource)
                      mempty
