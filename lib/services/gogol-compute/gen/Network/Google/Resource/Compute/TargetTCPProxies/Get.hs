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
-- Module      : Network.Google.Resource.Compute.TargetTCPProxies.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified TargetTcpProxy resource. Gets a list of available
-- target TCP proxies by making a list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetTcpProxies.get@.
module Network.Google.Resource.Compute.TargetTCPProxies.Get
    (
    -- * REST Resource
      TargetTCPProxiesGetResource

    -- * Creating a Request
    , targetTCPProxiesGet
    , TargetTCPProxiesGet

    -- * Request Lenses
    , ttpgProject
    , ttpgTargetTCPProxy
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.targetTcpProxies.get@ method which the
-- 'TargetTCPProxiesGet' request conforms to.
type TargetTCPProxiesGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "targetTcpProxies" :>
                 Capture "targetTcpProxy" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] TargetTCPProxy

-- | Returns the specified TargetTcpProxy resource. Gets a list of available
-- target TCP proxies by making a list() request.
--
-- /See:/ 'targetTCPProxiesGet' smart constructor.
data TargetTCPProxiesGet =
  TargetTCPProxiesGet'
    { _ttpgProject :: !Text
    , _ttpgTargetTCPProxy :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetTCPProxiesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttpgProject'
--
-- * 'ttpgTargetTCPProxy'
targetTCPProxiesGet
    :: Text -- ^ 'ttpgProject'
    -> Text -- ^ 'ttpgTargetTCPProxy'
    -> TargetTCPProxiesGet
targetTCPProxiesGet pTtpgProject_ pTtpgTargetTCPProxy_ =
  TargetTCPProxiesGet'
    {_ttpgProject = pTtpgProject_, _ttpgTargetTCPProxy = pTtpgTargetTCPProxy_}


-- | Project ID for this request.
ttpgProject :: Lens' TargetTCPProxiesGet Text
ttpgProject
  = lens _ttpgProject (\ s a -> s{_ttpgProject = a})

-- | Name of the TargetTcpProxy resource to return.
ttpgTargetTCPProxy :: Lens' TargetTCPProxiesGet Text
ttpgTargetTCPProxy
  = lens _ttpgTargetTCPProxy
      (\ s a -> s{_ttpgTargetTCPProxy = a})

instance GoogleRequest TargetTCPProxiesGet where
        type Rs TargetTCPProxiesGet = TargetTCPProxy
        type Scopes TargetTCPProxiesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient TargetTCPProxiesGet'{..}
          = go _ttpgProject _ttpgTargetTCPProxy (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetTCPProxiesGetResource)
                      mempty
