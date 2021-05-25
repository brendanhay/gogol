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
-- Module      : Network.Google.Resource.Compute.TargetTCPProxies.SetBackendService
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes the BackendService for TargetTcpProxy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetTcpProxies.setBackendService@.
module Network.Google.Resource.Compute.TargetTCPProxies.SetBackendService
    (
    -- * REST Resource
      TargetTCPProxiesSetBackendServiceResource

    -- * Creating a Request
    , targetTCPProxiesSetBackendService
    , TargetTCPProxiesSetBackendService

    -- * Request Lenses
    , ttpsbsRequestId
    , ttpsbsProject
    , ttpsbsPayload
    , ttpsbsTargetTCPProxy
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.targetTcpProxies.setBackendService@ method which the
-- 'TargetTCPProxiesSetBackendService' request conforms to.
type TargetTCPProxiesSetBackendServiceResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "targetTcpProxies" :>
                 Capture "targetTcpProxy" Text :>
                   "setBackendService" :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON]
                           TargetTCPProxiesSetBackendServiceRequest
                           :> Post '[JSON] Operation

-- | Changes the BackendService for TargetTcpProxy.
--
-- /See:/ 'targetTCPProxiesSetBackendService' smart constructor.
data TargetTCPProxiesSetBackendService =
  TargetTCPProxiesSetBackendService'
    { _ttpsbsRequestId :: !(Maybe Text)
    , _ttpsbsProject :: !Text
    , _ttpsbsPayload :: !TargetTCPProxiesSetBackendServiceRequest
    , _ttpsbsTargetTCPProxy :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetTCPProxiesSetBackendService' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttpsbsRequestId'
--
-- * 'ttpsbsProject'
--
-- * 'ttpsbsPayload'
--
-- * 'ttpsbsTargetTCPProxy'
targetTCPProxiesSetBackendService
    :: Text -- ^ 'ttpsbsProject'
    -> TargetTCPProxiesSetBackendServiceRequest -- ^ 'ttpsbsPayload'
    -> Text -- ^ 'ttpsbsTargetTCPProxy'
    -> TargetTCPProxiesSetBackendService
targetTCPProxiesSetBackendService pTtpsbsProject_ pTtpsbsPayload_ pTtpsbsTargetTCPProxy_ =
  TargetTCPProxiesSetBackendService'
    { _ttpsbsRequestId = Nothing
    , _ttpsbsProject = pTtpsbsProject_
    , _ttpsbsPayload = pTtpsbsPayload_
    , _ttpsbsTargetTCPProxy = pTtpsbsTargetTCPProxy_
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
ttpsbsRequestId :: Lens' TargetTCPProxiesSetBackendService (Maybe Text)
ttpsbsRequestId
  = lens _ttpsbsRequestId
      (\ s a -> s{_ttpsbsRequestId = a})

-- | Project ID for this request.
ttpsbsProject :: Lens' TargetTCPProxiesSetBackendService Text
ttpsbsProject
  = lens _ttpsbsProject
      (\ s a -> s{_ttpsbsProject = a})

-- | Multipart request metadata.
ttpsbsPayload :: Lens' TargetTCPProxiesSetBackendService TargetTCPProxiesSetBackendServiceRequest
ttpsbsPayload
  = lens _ttpsbsPayload
      (\ s a -> s{_ttpsbsPayload = a})

-- | Name of the TargetTcpProxy resource whose BackendService resource is to
-- be set.
ttpsbsTargetTCPProxy :: Lens' TargetTCPProxiesSetBackendService Text
ttpsbsTargetTCPProxy
  = lens _ttpsbsTargetTCPProxy
      (\ s a -> s{_ttpsbsTargetTCPProxy = a})

instance GoogleRequest
           TargetTCPProxiesSetBackendService
         where
        type Rs TargetTCPProxiesSetBackendService = Operation
        type Scopes TargetTCPProxiesSetBackendService =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient TargetTCPProxiesSetBackendService'{..}
          = go _ttpsbsProject _ttpsbsTargetTCPProxy
              _ttpsbsRequestId
              (Just AltJSON)
              _ttpsbsPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy TargetTCPProxiesSetBackendServiceResource)
                      mempty
