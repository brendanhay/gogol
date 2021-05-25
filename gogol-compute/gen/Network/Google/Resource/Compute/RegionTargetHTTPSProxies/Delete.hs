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
-- Module      : Network.Google.Resource.Compute.RegionTargetHTTPSProxies.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified TargetHttpsProxy resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionTargetHttpsProxies.delete@.
module Network.Google.Resource.Compute.RegionTargetHTTPSProxies.Delete
    (
    -- * REST Resource
      RegionTargetHTTPSProxiesDeleteResource

    -- * Creating a Request
    , regionTargetHTTPSProxiesDelete
    , RegionTargetHTTPSProxiesDelete

    -- * Request Lenses
    , rthpdRequestId
    , rthpdProject
    , rthpdRegion
    , rthpdTargetHTTPSProxy
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionTargetHttpsProxies.delete@ method which the
-- 'RegionTargetHTTPSProxiesDelete' request conforms to.
type RegionTargetHTTPSProxiesDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "targetHttpsProxies" :>
                   Capture "targetHttpsProxy" Text :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified TargetHttpsProxy resource.
--
-- /See:/ 'regionTargetHTTPSProxiesDelete' smart constructor.
data RegionTargetHTTPSProxiesDelete =
  RegionTargetHTTPSProxiesDelete'
    { _rthpdRequestId :: !(Maybe Text)
    , _rthpdProject :: !Text
    , _rthpdRegion :: !Text
    , _rthpdTargetHTTPSProxy :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionTargetHTTPSProxiesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rthpdRequestId'
--
-- * 'rthpdProject'
--
-- * 'rthpdRegion'
--
-- * 'rthpdTargetHTTPSProxy'
regionTargetHTTPSProxiesDelete
    :: Text -- ^ 'rthpdProject'
    -> Text -- ^ 'rthpdRegion'
    -> Text -- ^ 'rthpdTargetHTTPSProxy'
    -> RegionTargetHTTPSProxiesDelete
regionTargetHTTPSProxiesDelete pRthpdProject_ pRthpdRegion_ pRthpdTargetHTTPSProxy_ =
  RegionTargetHTTPSProxiesDelete'
    { _rthpdRequestId = Nothing
    , _rthpdProject = pRthpdProject_
    , _rthpdRegion = pRthpdRegion_
    , _rthpdTargetHTTPSProxy = pRthpdTargetHTTPSProxy_
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
rthpdRequestId :: Lens' RegionTargetHTTPSProxiesDelete (Maybe Text)
rthpdRequestId
  = lens _rthpdRequestId
      (\ s a -> s{_rthpdRequestId = a})

-- | Project ID for this request.
rthpdProject :: Lens' RegionTargetHTTPSProxiesDelete Text
rthpdProject
  = lens _rthpdProject (\ s a -> s{_rthpdProject = a})

-- | Name of the region scoping this request.
rthpdRegion :: Lens' RegionTargetHTTPSProxiesDelete Text
rthpdRegion
  = lens _rthpdRegion (\ s a -> s{_rthpdRegion = a})

-- | Name of the TargetHttpsProxy resource to delete.
rthpdTargetHTTPSProxy :: Lens' RegionTargetHTTPSProxiesDelete Text
rthpdTargetHTTPSProxy
  = lens _rthpdTargetHTTPSProxy
      (\ s a -> s{_rthpdTargetHTTPSProxy = a})

instance GoogleRequest RegionTargetHTTPSProxiesDelete
         where
        type Rs RegionTargetHTTPSProxiesDelete = Operation
        type Scopes RegionTargetHTTPSProxiesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionTargetHTTPSProxiesDelete'{..}
          = go _rthpdProject _rthpdRegion
              _rthpdTargetHTTPSProxy
              _rthpdRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RegionTargetHTTPSProxiesDeleteResource)
                      mempty
