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
-- Module      : Network.Google.Resource.Compute.TargetHTTPProxies.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified TargetHttpProxy resource. Get a list of available
-- target HTTP proxies by making a list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetHttpProxies.get@.
module Network.Google.Resource.Compute.TargetHTTPProxies.Get
    (
    -- * REST Resource
      TargetHTTPProxiesGetResource

    -- * Creating a Request
    , targetHTTPProxiesGet
    , TargetHTTPProxiesGet

    -- * Request Lenses
    , thttppgProject
    , thttppgTargetHTTPProxy
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.targetHttpProxies.get@ method which the
-- 'TargetHTTPProxiesGet' request conforms to.
type TargetHTTPProxiesGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "targetHttpProxies" :>
                 Capture "targetHttpProxy" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] TargetHTTPProxy

-- | Returns the specified TargetHttpProxy resource. Get a list of available
-- target HTTP proxies by making a list() request.
--
-- /See:/ 'targetHTTPProxiesGet' smart constructor.
data TargetHTTPProxiesGet = TargetHTTPProxiesGet
    { _thttppgProject         :: !Text
    , _thttppgTargetHTTPProxy :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetHTTPProxiesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'thttppgProject'
--
-- * 'thttppgTargetHTTPProxy'
targetHTTPProxiesGet
    :: Text -- ^ 'thttppgProject'
    -> Text -- ^ 'thttppgTargetHTTPProxy'
    -> TargetHTTPProxiesGet
targetHTTPProxiesGet pThttppgProject_ pThttppgTargetHTTPProxy_ =
    TargetHTTPProxiesGet
    { _thttppgProject = pThttppgProject_
    , _thttppgTargetHTTPProxy = pThttppgTargetHTTPProxy_
    }

-- | Project ID for this request.
thttppgProject :: Lens' TargetHTTPProxiesGet Text
thttppgProject
  = lens _thttppgProject
      (\ s a -> s{_thttppgProject = a})

-- | Name of the TargetHttpProxy resource to return.
thttppgTargetHTTPProxy :: Lens' TargetHTTPProxiesGet Text
thttppgTargetHTTPProxy
  = lens _thttppgTargetHTTPProxy
      (\ s a -> s{_thttppgTargetHTTPProxy = a})

instance GoogleRequest TargetHTTPProxiesGet where
        type Rs TargetHTTPProxiesGet = TargetHTTPProxy
        type Scopes TargetHTTPProxiesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient TargetHTTPProxiesGet{..}
          = go _thttppgProject _thttppgTargetHTTPProxy
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetHTTPProxiesGetResource)
                      mempty
