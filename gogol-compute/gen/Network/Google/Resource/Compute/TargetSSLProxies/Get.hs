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
-- Module      : Network.Google.Resource.Compute.TargetSSLProxies.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified TargetSslProxy resource. Gets a list of available
-- target SSL proxies by making a list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetSslProxies.get@.
module Network.Google.Resource.Compute.TargetSSLProxies.Get
    (
    -- * REST Resource
      TargetSSLProxiesGetResource

    -- * Creating a Request
    , targetSSLProxiesGet
    , TargetSSLProxiesGet

    -- * Request Lenses
    , tspgProject
    , tspgTargetSSLProxy
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.targetSslProxies.get@ method which the
-- 'TargetSSLProxiesGet' request conforms to.
type TargetSSLProxiesGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "targetSslProxies" :>
                 Capture "targetSslProxy" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] TargetSSLProxy

-- | Returns the specified TargetSslProxy resource. Gets a list of available
-- target SSL proxies by making a list() request.
--
-- /See:/ 'targetSSLProxiesGet' smart constructor.
data TargetSSLProxiesGet =
  TargetSSLProxiesGet'
    { _tspgProject :: !Text
    , _tspgTargetSSLProxy :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetSSLProxiesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tspgProject'
--
-- * 'tspgTargetSSLProxy'
targetSSLProxiesGet
    :: Text -- ^ 'tspgProject'
    -> Text -- ^ 'tspgTargetSSLProxy'
    -> TargetSSLProxiesGet
targetSSLProxiesGet pTspgProject_ pTspgTargetSSLProxy_ =
  TargetSSLProxiesGet'
    {_tspgProject = pTspgProject_, _tspgTargetSSLProxy = pTspgTargetSSLProxy_}


-- | Project ID for this request.
tspgProject :: Lens' TargetSSLProxiesGet Text
tspgProject
  = lens _tspgProject (\ s a -> s{_tspgProject = a})

-- | Name of the TargetSslProxy resource to return.
tspgTargetSSLProxy :: Lens' TargetSSLProxiesGet Text
tspgTargetSSLProxy
  = lens _tspgTargetSSLProxy
      (\ s a -> s{_tspgTargetSSLProxy = a})

instance GoogleRequest TargetSSLProxiesGet where
        type Rs TargetSSLProxiesGet = TargetSSLProxy
        type Scopes TargetSSLProxiesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient TargetSSLProxiesGet'{..}
          = go _tspgProject _tspgTargetSSLProxy (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetSSLProxiesGetResource)
                      mempty
