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
-- Module      : Network.Google.Resource.Compute.RegionTargetHTTPSProxies.SetURLMap
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes the URL map for TargetHttpsProxy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionTargetHttpsProxies.setUrlMap@.
module Network.Google.Resource.Compute.RegionTargetHTTPSProxies.SetURLMap
    (
    -- * REST Resource
      RegionTargetHTTPSProxiesSetURLMapResource

    -- * Creating a Request
    , regionTargetHTTPSProxiesSetURLMap
    , RegionTargetHTTPSProxiesSetURLMap

    -- * Request Lenses
    , rthpsumRequestId
    , rthpsumProject
    , rthpsumPayload
    , rthpsumRegion
    , rthpsumTargetHTTPSProxy
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionTargetHttpsProxies.setUrlMap@ method which the
-- 'RegionTargetHTTPSProxiesSetURLMap' request conforms to.
type RegionTargetHTTPSProxiesSetURLMapResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "targetHttpsProxies" :>
                   Capture "targetHttpsProxy" Text :>
                     "setUrlMap" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] URLMapReference :>
                             Post '[JSON] Operation

-- | Changes the URL map for TargetHttpsProxy.
--
-- /See:/ 'regionTargetHTTPSProxiesSetURLMap' smart constructor.
data RegionTargetHTTPSProxiesSetURLMap =
  RegionTargetHTTPSProxiesSetURLMap'
    { _rthpsumRequestId :: !(Maybe Text)
    , _rthpsumProject :: !Text
    , _rthpsumPayload :: !URLMapReference
    , _rthpsumRegion :: !Text
    , _rthpsumTargetHTTPSProxy :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionTargetHTTPSProxiesSetURLMap' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rthpsumRequestId'
--
-- * 'rthpsumProject'
--
-- * 'rthpsumPayload'
--
-- * 'rthpsumRegion'
--
-- * 'rthpsumTargetHTTPSProxy'
regionTargetHTTPSProxiesSetURLMap
    :: Text -- ^ 'rthpsumProject'
    -> URLMapReference -- ^ 'rthpsumPayload'
    -> Text -- ^ 'rthpsumRegion'
    -> Text -- ^ 'rthpsumTargetHTTPSProxy'
    -> RegionTargetHTTPSProxiesSetURLMap
regionTargetHTTPSProxiesSetURLMap pRthpsumProject_ pRthpsumPayload_ pRthpsumRegion_ pRthpsumTargetHTTPSProxy_ =
  RegionTargetHTTPSProxiesSetURLMap'
    { _rthpsumRequestId = Nothing
    , _rthpsumProject = pRthpsumProject_
    , _rthpsumPayload = pRthpsumPayload_
    , _rthpsumRegion = pRthpsumRegion_
    , _rthpsumTargetHTTPSProxy = pRthpsumTargetHTTPSProxy_
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
rthpsumRequestId :: Lens' RegionTargetHTTPSProxiesSetURLMap (Maybe Text)
rthpsumRequestId
  = lens _rthpsumRequestId
      (\ s a -> s{_rthpsumRequestId = a})

-- | Project ID for this request.
rthpsumProject :: Lens' RegionTargetHTTPSProxiesSetURLMap Text
rthpsumProject
  = lens _rthpsumProject
      (\ s a -> s{_rthpsumProject = a})

-- | Multipart request metadata.
rthpsumPayload :: Lens' RegionTargetHTTPSProxiesSetURLMap URLMapReference
rthpsumPayload
  = lens _rthpsumPayload
      (\ s a -> s{_rthpsumPayload = a})

-- | Name of the region scoping this request.
rthpsumRegion :: Lens' RegionTargetHTTPSProxiesSetURLMap Text
rthpsumRegion
  = lens _rthpsumRegion
      (\ s a -> s{_rthpsumRegion = a})

-- | Name of the TargetHttpsProxy to set a URL map for.
rthpsumTargetHTTPSProxy :: Lens' RegionTargetHTTPSProxiesSetURLMap Text
rthpsumTargetHTTPSProxy
  = lens _rthpsumTargetHTTPSProxy
      (\ s a -> s{_rthpsumTargetHTTPSProxy = a})

instance GoogleRequest
           RegionTargetHTTPSProxiesSetURLMap
         where
        type Rs RegionTargetHTTPSProxiesSetURLMap = Operation
        type Scopes RegionTargetHTTPSProxiesSetURLMap =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionTargetHTTPSProxiesSetURLMap'{..}
          = go _rthpsumProject _rthpsumRegion
              _rthpsumTargetHTTPSProxy
              _rthpsumRequestId
              (Just AltJSON)
              _rthpsumPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RegionTargetHTTPSProxiesSetURLMapResource)
                      mempty
