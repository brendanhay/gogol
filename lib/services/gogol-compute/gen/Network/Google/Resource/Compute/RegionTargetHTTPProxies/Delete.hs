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
-- Module      : Network.Google.Resource.Compute.RegionTargetHTTPProxies.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified TargetHttpProxy resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionTargetHttpProxies.delete@.
module Network.Google.Resource.Compute.RegionTargetHTTPProxies.Delete
    (
    -- * REST Resource
      RegionTargetHTTPProxiesDeleteResource

    -- * Creating a Request
    , regionTargetHTTPProxiesDelete
    , RegionTargetHTTPProxiesDelete

    -- * Request Lenses
    , rthttppdRequestId
    , rthttppdProject
    , rthttppdTargetHTTPProxy
    , rthttppdRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionTargetHttpProxies.delete@ method which the
-- 'RegionTargetHTTPProxiesDelete' request conforms to.
type RegionTargetHTTPProxiesDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "targetHttpProxies" :>
                   Capture "targetHttpProxy" Text :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified TargetHttpProxy resource.
--
-- /See:/ 'regionTargetHTTPProxiesDelete' smart constructor.
data RegionTargetHTTPProxiesDelete =
  RegionTargetHTTPProxiesDelete'
    { _rthttppdRequestId :: !(Maybe Text)
    , _rthttppdProject :: !Text
    , _rthttppdTargetHTTPProxy :: !Text
    , _rthttppdRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionTargetHTTPProxiesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rthttppdRequestId'
--
-- * 'rthttppdProject'
--
-- * 'rthttppdTargetHTTPProxy'
--
-- * 'rthttppdRegion'
regionTargetHTTPProxiesDelete
    :: Text -- ^ 'rthttppdProject'
    -> Text -- ^ 'rthttppdTargetHTTPProxy'
    -> Text -- ^ 'rthttppdRegion'
    -> RegionTargetHTTPProxiesDelete
regionTargetHTTPProxiesDelete pRthttppdProject_ pRthttppdTargetHTTPProxy_ pRthttppdRegion_ =
  RegionTargetHTTPProxiesDelete'
    { _rthttppdRequestId = Nothing
    , _rthttppdProject = pRthttppdProject_
    , _rthttppdTargetHTTPProxy = pRthttppdTargetHTTPProxy_
    , _rthttppdRegion = pRthttppdRegion_
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
rthttppdRequestId :: Lens' RegionTargetHTTPProxiesDelete (Maybe Text)
rthttppdRequestId
  = lens _rthttppdRequestId
      (\ s a -> s{_rthttppdRequestId = a})

-- | Project ID for this request.
rthttppdProject :: Lens' RegionTargetHTTPProxiesDelete Text
rthttppdProject
  = lens _rthttppdProject
      (\ s a -> s{_rthttppdProject = a})

-- | Name of the TargetHttpProxy resource to delete.
rthttppdTargetHTTPProxy :: Lens' RegionTargetHTTPProxiesDelete Text
rthttppdTargetHTTPProxy
  = lens _rthttppdTargetHTTPProxy
      (\ s a -> s{_rthttppdTargetHTTPProxy = a})

-- | Name of the region scoping this request.
rthttppdRegion :: Lens' RegionTargetHTTPProxiesDelete Text
rthttppdRegion
  = lens _rthttppdRegion
      (\ s a -> s{_rthttppdRegion = a})

instance GoogleRequest RegionTargetHTTPProxiesDelete
         where
        type Rs RegionTargetHTTPProxiesDelete = Operation
        type Scopes RegionTargetHTTPProxiesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionTargetHTTPProxiesDelete'{..}
          = go _rthttppdProject _rthttppdRegion
              _rthttppdTargetHTTPProxy
              _rthttppdRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RegionTargetHTTPProxiesDeleteResource)
                      mempty
