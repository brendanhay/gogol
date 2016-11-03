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
-- Module      : Network.Google.Resource.Compute.TargetSSLProxies.SetProxyHeader
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes the ProxyHeaderType for TargetSslProxy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetSslProxies.setProxyHeader@.
module Network.Google.Resource.Compute.TargetSSLProxies.SetProxyHeader
    (
    -- * REST Resource
      TargetSSLProxiesSetProxyHeaderResource

    -- * Creating a Request
    , targetSSLProxiesSetProxyHeader
    , TargetSSLProxiesSetProxyHeader

    -- * Request Lenses
    , tspsphProject
    , tspsphPayload
    , tspsphTargetSSLProxy
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.targetSslProxies.setProxyHeader@ method which the
-- 'TargetSSLProxiesSetProxyHeader' request conforms to.
type TargetSSLProxiesSetProxyHeaderResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "targetSslProxies" :>
                 Capture "targetSslProxy" Text :>
                   "setProxyHeader" :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] TargetSSLProxiesSetProxyHeaderRequest
                         :> Post '[JSON] Operation

-- | Changes the ProxyHeaderType for TargetSslProxy.
--
-- /See:/ 'targetSSLProxiesSetProxyHeader' smart constructor.
data TargetSSLProxiesSetProxyHeader = TargetSSLProxiesSetProxyHeader'
    { _tspsphProject        :: !Text
    , _tspsphPayload        :: !TargetSSLProxiesSetProxyHeaderRequest
    , _tspsphTargetSSLProxy :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetSSLProxiesSetProxyHeader' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tspsphProject'
--
-- * 'tspsphPayload'
--
-- * 'tspsphTargetSSLProxy'
targetSSLProxiesSetProxyHeader
    :: Text -- ^ 'tspsphProject'
    -> TargetSSLProxiesSetProxyHeaderRequest -- ^ 'tspsphPayload'
    -> Text -- ^ 'tspsphTargetSSLProxy'
    -> TargetSSLProxiesSetProxyHeader
targetSSLProxiesSetProxyHeader pTspsphProject_ pTspsphPayload_ pTspsphTargetSSLProxy_ =
    TargetSSLProxiesSetProxyHeader'
    { _tspsphProject = pTspsphProject_
    , _tspsphPayload = pTspsphPayload_
    , _tspsphTargetSSLProxy = pTspsphTargetSSLProxy_
    }

-- | Project ID for this request.
tspsphProject :: Lens' TargetSSLProxiesSetProxyHeader Text
tspsphProject
  = lens _tspsphProject
      (\ s a -> s{_tspsphProject = a})

-- | Multipart request metadata.
tspsphPayload :: Lens' TargetSSLProxiesSetProxyHeader TargetSSLProxiesSetProxyHeaderRequest
tspsphPayload
  = lens _tspsphPayload
      (\ s a -> s{_tspsphPayload = a})

-- | Name of the TargetSslProxy resource whose ProxyHeader is to be set.
tspsphTargetSSLProxy :: Lens' TargetSSLProxiesSetProxyHeader Text
tspsphTargetSSLProxy
  = lens _tspsphTargetSSLProxy
      (\ s a -> s{_tspsphTargetSSLProxy = a})

instance GoogleRequest TargetSSLProxiesSetProxyHeader
         where
        type Rs TargetSSLProxiesSetProxyHeader = Operation
        type Scopes TargetSSLProxiesSetProxyHeader =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient TargetSSLProxiesSetProxyHeader'{..}
          = go _tspsphProject _tspsphTargetSSLProxy
              (Just AltJSON)
              _tspsphPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy TargetSSLProxiesSetProxyHeaderResource)
                      mempty
