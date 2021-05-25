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
-- Module      : Network.Google.Resource.Compute.TargetTCPProxies.SetProxyHeader
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes the ProxyHeaderType for TargetTcpProxy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetTcpProxies.setProxyHeader@.
module Network.Google.Resource.Compute.TargetTCPProxies.SetProxyHeader
    (
    -- * REST Resource
      TargetTCPProxiesSetProxyHeaderResource

    -- * Creating a Request
    , targetTCPProxiesSetProxyHeader
    , TargetTCPProxiesSetProxyHeader

    -- * Request Lenses
    , ttpsphRequestId
    , ttpsphProject
    , ttpsphPayload
    , ttpsphTargetTCPProxy
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.targetTcpProxies.setProxyHeader@ method which the
-- 'TargetTCPProxiesSetProxyHeader' request conforms to.
type TargetTCPProxiesSetProxyHeaderResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "targetTcpProxies" :>
                 Capture "targetTcpProxy" Text :>
                   "setProxyHeader" :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] TargetTCPProxiesSetProxyHeaderRequest
                           :> Post '[JSON] Operation

-- | Changes the ProxyHeaderType for TargetTcpProxy.
--
-- /See:/ 'targetTCPProxiesSetProxyHeader' smart constructor.
data TargetTCPProxiesSetProxyHeader =
  TargetTCPProxiesSetProxyHeader'
    { _ttpsphRequestId :: !(Maybe Text)
    , _ttpsphProject :: !Text
    , _ttpsphPayload :: !TargetTCPProxiesSetProxyHeaderRequest
    , _ttpsphTargetTCPProxy :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetTCPProxiesSetProxyHeader' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttpsphRequestId'
--
-- * 'ttpsphProject'
--
-- * 'ttpsphPayload'
--
-- * 'ttpsphTargetTCPProxy'
targetTCPProxiesSetProxyHeader
    :: Text -- ^ 'ttpsphProject'
    -> TargetTCPProxiesSetProxyHeaderRequest -- ^ 'ttpsphPayload'
    -> Text -- ^ 'ttpsphTargetTCPProxy'
    -> TargetTCPProxiesSetProxyHeader
targetTCPProxiesSetProxyHeader pTtpsphProject_ pTtpsphPayload_ pTtpsphTargetTCPProxy_ =
  TargetTCPProxiesSetProxyHeader'
    { _ttpsphRequestId = Nothing
    , _ttpsphProject = pTtpsphProject_
    , _ttpsphPayload = pTtpsphPayload_
    , _ttpsphTargetTCPProxy = pTtpsphTargetTCPProxy_
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
ttpsphRequestId :: Lens' TargetTCPProxiesSetProxyHeader (Maybe Text)
ttpsphRequestId
  = lens _ttpsphRequestId
      (\ s a -> s{_ttpsphRequestId = a})

-- | Project ID for this request.
ttpsphProject :: Lens' TargetTCPProxiesSetProxyHeader Text
ttpsphProject
  = lens _ttpsphProject
      (\ s a -> s{_ttpsphProject = a})

-- | Multipart request metadata.
ttpsphPayload :: Lens' TargetTCPProxiesSetProxyHeader TargetTCPProxiesSetProxyHeaderRequest
ttpsphPayload
  = lens _ttpsphPayload
      (\ s a -> s{_ttpsphPayload = a})

-- | Name of the TargetTcpProxy resource whose ProxyHeader is to be set.
ttpsphTargetTCPProxy :: Lens' TargetTCPProxiesSetProxyHeader Text
ttpsphTargetTCPProxy
  = lens _ttpsphTargetTCPProxy
      (\ s a -> s{_ttpsphTargetTCPProxy = a})

instance GoogleRequest TargetTCPProxiesSetProxyHeader
         where
        type Rs TargetTCPProxiesSetProxyHeader = Operation
        type Scopes TargetTCPProxiesSetProxyHeader =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient TargetTCPProxiesSetProxyHeader'{..}
          = go _ttpsphProject _ttpsphTargetTCPProxy
              _ttpsphRequestId
              (Just AltJSON)
              _ttpsphPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy TargetTCPProxiesSetProxyHeaderResource)
                      mempty
