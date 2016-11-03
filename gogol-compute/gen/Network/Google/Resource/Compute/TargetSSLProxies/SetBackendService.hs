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
-- Module      : Network.Google.Resource.Compute.TargetSSLProxies.SetBackendService
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes the BackendService for TargetSslProxy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetSslProxies.setBackendService@.
module Network.Google.Resource.Compute.TargetSSLProxies.SetBackendService
    (
    -- * REST Resource
      TargetSSLProxiesSetBackendServiceResource

    -- * Creating a Request
    , targetSSLProxiesSetBackendService
    , TargetSSLProxiesSetBackendService

    -- * Request Lenses
    , tspsbsProject
    , tspsbsPayload
    , tspsbsTargetSSLProxy
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.targetSslProxies.setBackendService@ method which the
-- 'TargetSSLProxiesSetBackendService' request conforms to.
type TargetSSLProxiesSetBackendServiceResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "targetSslProxies" :>
                 Capture "targetSslProxy" Text :>
                   "setBackendService" :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         TargetSSLProxiesSetBackendServiceRequest
                         :> Post '[JSON] Operation

-- | Changes the BackendService for TargetSslProxy.
--
-- /See:/ 'targetSSLProxiesSetBackendService' smart constructor.
data TargetSSLProxiesSetBackendService = TargetSSLProxiesSetBackendService'
    { _tspsbsProject        :: !Text
    , _tspsbsPayload        :: !TargetSSLProxiesSetBackendServiceRequest
    , _tspsbsTargetSSLProxy :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetSSLProxiesSetBackendService' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tspsbsProject'
--
-- * 'tspsbsPayload'
--
-- * 'tspsbsTargetSSLProxy'
targetSSLProxiesSetBackendService
    :: Text -- ^ 'tspsbsProject'
    -> TargetSSLProxiesSetBackendServiceRequest -- ^ 'tspsbsPayload'
    -> Text -- ^ 'tspsbsTargetSSLProxy'
    -> TargetSSLProxiesSetBackendService
targetSSLProxiesSetBackendService pTspsbsProject_ pTspsbsPayload_ pTspsbsTargetSSLProxy_ =
    TargetSSLProxiesSetBackendService'
    { _tspsbsProject = pTspsbsProject_
    , _tspsbsPayload = pTspsbsPayload_
    , _tspsbsTargetSSLProxy = pTspsbsTargetSSLProxy_
    }

-- | Project ID for this request.
tspsbsProject :: Lens' TargetSSLProxiesSetBackendService Text
tspsbsProject
  = lens _tspsbsProject
      (\ s a -> s{_tspsbsProject = a})

-- | Multipart request metadata.
tspsbsPayload :: Lens' TargetSSLProxiesSetBackendService TargetSSLProxiesSetBackendServiceRequest
tspsbsPayload
  = lens _tspsbsPayload
      (\ s a -> s{_tspsbsPayload = a})

-- | Name of the TargetSslProxy resource whose BackendService resource is to
-- be set.
tspsbsTargetSSLProxy :: Lens' TargetSSLProxiesSetBackendService Text
tspsbsTargetSSLProxy
  = lens _tspsbsTargetSSLProxy
      (\ s a -> s{_tspsbsTargetSSLProxy = a})

instance GoogleRequest
         TargetSSLProxiesSetBackendService where
        type Rs TargetSSLProxiesSetBackendService = Operation
        type Scopes TargetSSLProxiesSetBackendService =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient TargetSSLProxiesSetBackendService'{..}
          = go _tspsbsProject _tspsbsTargetSSLProxy
              (Just AltJSON)
              _tspsbsPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy TargetSSLProxiesSetBackendServiceResource)
                      mempty
