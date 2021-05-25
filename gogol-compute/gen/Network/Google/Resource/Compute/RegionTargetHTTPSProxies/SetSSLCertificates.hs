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
-- Module      : Network.Google.Resource.Compute.RegionTargetHTTPSProxies.SetSSLCertificates
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Replaces SslCertificates for TargetHttpsProxy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionTargetHttpsProxies.setSslCertificates@.
module Network.Google.Resource.Compute.RegionTargetHTTPSProxies.SetSSLCertificates
    (
    -- * REST Resource
      RegionTargetHTTPSProxiesSetSSLCertificatesResource

    -- * Creating a Request
    , regionTargetHTTPSProxiesSetSSLCertificates
    , RegionTargetHTTPSProxiesSetSSLCertificates

    -- * Request Lenses
    , rthpsscRequestId
    , rthpsscProject
    , rthpsscPayload
    , rthpsscRegion
    , rthpsscTargetHTTPSProxy
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionTargetHttpsProxies.setSslCertificates@ method which the
-- 'RegionTargetHTTPSProxiesSetSSLCertificates' request conforms to.
type RegionTargetHTTPSProxiesSetSSLCertificatesResource
     =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "targetHttpsProxies" :>
                   Capture "targetHttpsProxy" Text :>
                     "setSslCertificates" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON]
                             RegionTargetHTTPSProxiesSetSSLCertificatesRequest
                             :> Post '[JSON] Operation

-- | Replaces SslCertificates for TargetHttpsProxy.
--
-- /See:/ 'regionTargetHTTPSProxiesSetSSLCertificates' smart constructor.
data RegionTargetHTTPSProxiesSetSSLCertificates =
  RegionTargetHTTPSProxiesSetSSLCertificates'
    { _rthpsscRequestId :: !(Maybe Text)
    , _rthpsscProject :: !Text
    , _rthpsscPayload :: !RegionTargetHTTPSProxiesSetSSLCertificatesRequest
    , _rthpsscRegion :: !Text
    , _rthpsscTargetHTTPSProxy :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionTargetHTTPSProxiesSetSSLCertificates' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rthpsscRequestId'
--
-- * 'rthpsscProject'
--
-- * 'rthpsscPayload'
--
-- * 'rthpsscRegion'
--
-- * 'rthpsscTargetHTTPSProxy'
regionTargetHTTPSProxiesSetSSLCertificates
    :: Text -- ^ 'rthpsscProject'
    -> RegionTargetHTTPSProxiesSetSSLCertificatesRequest -- ^ 'rthpsscPayload'
    -> Text -- ^ 'rthpsscRegion'
    -> Text -- ^ 'rthpsscTargetHTTPSProxy'
    -> RegionTargetHTTPSProxiesSetSSLCertificates
regionTargetHTTPSProxiesSetSSLCertificates pRthpsscProject_ pRthpsscPayload_ pRthpsscRegion_ pRthpsscTargetHTTPSProxy_ =
  RegionTargetHTTPSProxiesSetSSLCertificates'
    { _rthpsscRequestId = Nothing
    , _rthpsscProject = pRthpsscProject_
    , _rthpsscPayload = pRthpsscPayload_
    , _rthpsscRegion = pRthpsscRegion_
    , _rthpsscTargetHTTPSProxy = pRthpsscTargetHTTPSProxy_
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
rthpsscRequestId :: Lens' RegionTargetHTTPSProxiesSetSSLCertificates (Maybe Text)
rthpsscRequestId
  = lens _rthpsscRequestId
      (\ s a -> s{_rthpsscRequestId = a})

-- | Project ID for this request.
rthpsscProject :: Lens' RegionTargetHTTPSProxiesSetSSLCertificates Text
rthpsscProject
  = lens _rthpsscProject
      (\ s a -> s{_rthpsscProject = a})

-- | Multipart request metadata.
rthpsscPayload :: Lens' RegionTargetHTTPSProxiesSetSSLCertificates RegionTargetHTTPSProxiesSetSSLCertificatesRequest
rthpsscPayload
  = lens _rthpsscPayload
      (\ s a -> s{_rthpsscPayload = a})

-- | Name of the region scoping this request.
rthpsscRegion :: Lens' RegionTargetHTTPSProxiesSetSSLCertificates Text
rthpsscRegion
  = lens _rthpsscRegion
      (\ s a -> s{_rthpsscRegion = a})

-- | Name of the TargetHttpsProxy resource to set an SslCertificates resource
-- for.
rthpsscTargetHTTPSProxy :: Lens' RegionTargetHTTPSProxiesSetSSLCertificates Text
rthpsscTargetHTTPSProxy
  = lens _rthpsscTargetHTTPSProxy
      (\ s a -> s{_rthpsscTargetHTTPSProxy = a})

instance GoogleRequest
           RegionTargetHTTPSProxiesSetSSLCertificates
         where
        type Rs RegionTargetHTTPSProxiesSetSSLCertificates =
             Operation
        type Scopes
               RegionTargetHTTPSProxiesSetSSLCertificates
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient
          RegionTargetHTTPSProxiesSetSSLCertificates'{..}
          = go _rthpsscProject _rthpsscRegion
              _rthpsscTargetHTTPSProxy
              _rthpsscRequestId
              (Just AltJSON)
              _rthpsscPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           RegionTargetHTTPSProxiesSetSSLCertificatesResource)
                      mempty
