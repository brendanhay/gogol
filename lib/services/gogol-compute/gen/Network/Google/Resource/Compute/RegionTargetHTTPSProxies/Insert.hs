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
-- Module      : Network.Google.Resource.Compute.RegionTargetHTTPSProxies.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a TargetHttpsProxy resource in the specified project and region
-- using the data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionTargetHttpsProxies.insert@.
module Network.Google.Resource.Compute.RegionTargetHTTPSProxies.Insert
    (
    -- * REST Resource
      RegionTargetHTTPSProxiesInsertResource

    -- * Creating a Request
    , regionTargetHTTPSProxiesInsert
    , RegionTargetHTTPSProxiesInsert

    -- * Request Lenses
    , rthpiRequestId
    , rthpiProject
    , rthpiPayload
    , rthpiRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionTargetHttpsProxies.insert@ method which the
-- 'RegionTargetHTTPSProxiesInsert' request conforms to.
type RegionTargetHTTPSProxiesInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "targetHttpsProxies" :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] TargetHTTPSProxy :>
                         Post '[JSON] Operation

-- | Creates a TargetHttpsProxy resource in the specified project and region
-- using the data included in the request.
--
-- /See:/ 'regionTargetHTTPSProxiesInsert' smart constructor.
data RegionTargetHTTPSProxiesInsert =
  RegionTargetHTTPSProxiesInsert'
    { _rthpiRequestId :: !(Maybe Text)
    , _rthpiProject :: !Text
    , _rthpiPayload :: !TargetHTTPSProxy
    , _rthpiRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionTargetHTTPSProxiesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rthpiRequestId'
--
-- * 'rthpiProject'
--
-- * 'rthpiPayload'
--
-- * 'rthpiRegion'
regionTargetHTTPSProxiesInsert
    :: Text -- ^ 'rthpiProject'
    -> TargetHTTPSProxy -- ^ 'rthpiPayload'
    -> Text -- ^ 'rthpiRegion'
    -> RegionTargetHTTPSProxiesInsert
regionTargetHTTPSProxiesInsert pRthpiProject_ pRthpiPayload_ pRthpiRegion_ =
  RegionTargetHTTPSProxiesInsert'
    { _rthpiRequestId = Nothing
    , _rthpiProject = pRthpiProject_
    , _rthpiPayload = pRthpiPayload_
    , _rthpiRegion = pRthpiRegion_
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
rthpiRequestId :: Lens' RegionTargetHTTPSProxiesInsert (Maybe Text)
rthpiRequestId
  = lens _rthpiRequestId
      (\ s a -> s{_rthpiRequestId = a})

-- | Project ID for this request.
rthpiProject :: Lens' RegionTargetHTTPSProxiesInsert Text
rthpiProject
  = lens _rthpiProject (\ s a -> s{_rthpiProject = a})

-- | Multipart request metadata.
rthpiPayload :: Lens' RegionTargetHTTPSProxiesInsert TargetHTTPSProxy
rthpiPayload
  = lens _rthpiPayload (\ s a -> s{_rthpiPayload = a})

-- | Name of the region scoping this request.
rthpiRegion :: Lens' RegionTargetHTTPSProxiesInsert Text
rthpiRegion
  = lens _rthpiRegion (\ s a -> s{_rthpiRegion = a})

instance GoogleRequest RegionTargetHTTPSProxiesInsert
         where
        type Rs RegionTargetHTTPSProxiesInsert = Operation
        type Scopes RegionTargetHTTPSProxiesInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionTargetHTTPSProxiesInsert'{..}
          = go _rthpiProject _rthpiRegion _rthpiRequestId
              (Just AltJSON)
              _rthpiPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RegionTargetHTTPSProxiesInsertResource)
                      mempty
