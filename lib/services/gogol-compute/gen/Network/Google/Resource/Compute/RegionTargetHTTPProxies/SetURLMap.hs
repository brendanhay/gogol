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
-- Module      : Network.Google.Resource.Compute.RegionTargetHTTPProxies.SetURLMap
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes the URL map for TargetHttpProxy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionTargetHttpProxies.setUrlMap@.
module Network.Google.Resource.Compute.RegionTargetHTTPProxies.SetURLMap
    (
    -- * REST Resource
      RegionTargetHTTPProxiesSetURLMapResource

    -- * Creating a Request
    , regionTargetHTTPProxiesSetURLMap
    , RegionTargetHTTPProxiesSetURLMap

    -- * Request Lenses
    , rthttppsumRequestId
    , rthttppsumProject
    , rthttppsumPayload
    , rthttppsumTargetHTTPProxy
    , rthttppsumRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionTargetHttpProxies.setUrlMap@ method which the
-- 'RegionTargetHTTPProxiesSetURLMap' request conforms to.
type RegionTargetHTTPProxiesSetURLMapResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "targetHttpProxies" :>
                   Capture "targetHttpProxy" Text :>
                     "setUrlMap" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] URLMapReference :>
                             Post '[JSON] Operation

-- | Changes the URL map for TargetHttpProxy.
--
-- /See:/ 'regionTargetHTTPProxiesSetURLMap' smart constructor.
data RegionTargetHTTPProxiesSetURLMap =
  RegionTargetHTTPProxiesSetURLMap'
    { _rthttppsumRequestId :: !(Maybe Text)
    , _rthttppsumProject :: !Text
    , _rthttppsumPayload :: !URLMapReference
    , _rthttppsumTargetHTTPProxy :: !Text
    , _rthttppsumRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionTargetHTTPProxiesSetURLMap' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rthttppsumRequestId'
--
-- * 'rthttppsumProject'
--
-- * 'rthttppsumPayload'
--
-- * 'rthttppsumTargetHTTPProxy'
--
-- * 'rthttppsumRegion'
regionTargetHTTPProxiesSetURLMap
    :: Text -- ^ 'rthttppsumProject'
    -> URLMapReference -- ^ 'rthttppsumPayload'
    -> Text -- ^ 'rthttppsumTargetHTTPProxy'
    -> Text -- ^ 'rthttppsumRegion'
    -> RegionTargetHTTPProxiesSetURLMap
regionTargetHTTPProxiesSetURLMap pRthttppsumProject_ pRthttppsumPayload_ pRthttppsumTargetHTTPProxy_ pRthttppsumRegion_ =
  RegionTargetHTTPProxiesSetURLMap'
    { _rthttppsumRequestId = Nothing
    , _rthttppsumProject = pRthttppsumProject_
    , _rthttppsumPayload = pRthttppsumPayload_
    , _rthttppsumTargetHTTPProxy = pRthttppsumTargetHTTPProxy_
    , _rthttppsumRegion = pRthttppsumRegion_
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
rthttppsumRequestId :: Lens' RegionTargetHTTPProxiesSetURLMap (Maybe Text)
rthttppsumRequestId
  = lens _rthttppsumRequestId
      (\ s a -> s{_rthttppsumRequestId = a})

-- | Project ID for this request.
rthttppsumProject :: Lens' RegionTargetHTTPProxiesSetURLMap Text
rthttppsumProject
  = lens _rthttppsumProject
      (\ s a -> s{_rthttppsumProject = a})

-- | Multipart request metadata.
rthttppsumPayload :: Lens' RegionTargetHTTPProxiesSetURLMap URLMapReference
rthttppsumPayload
  = lens _rthttppsumPayload
      (\ s a -> s{_rthttppsumPayload = a})

-- | Name of the TargetHttpProxy to set a URL map for.
rthttppsumTargetHTTPProxy :: Lens' RegionTargetHTTPProxiesSetURLMap Text
rthttppsumTargetHTTPProxy
  = lens _rthttppsumTargetHTTPProxy
      (\ s a -> s{_rthttppsumTargetHTTPProxy = a})

-- | Name of the region scoping this request.
rthttppsumRegion :: Lens' RegionTargetHTTPProxiesSetURLMap Text
rthttppsumRegion
  = lens _rthttppsumRegion
      (\ s a -> s{_rthttppsumRegion = a})

instance GoogleRequest
           RegionTargetHTTPProxiesSetURLMap
         where
        type Rs RegionTargetHTTPProxiesSetURLMap = Operation
        type Scopes RegionTargetHTTPProxiesSetURLMap =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionTargetHTTPProxiesSetURLMap'{..}
          = go _rthttppsumProject _rthttppsumRegion
              _rthttppsumTargetHTTPProxy
              _rthttppsumRequestId
              (Just AltJSON)
              _rthttppsumPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RegionTargetHTTPProxiesSetURLMapResource)
                      mempty
