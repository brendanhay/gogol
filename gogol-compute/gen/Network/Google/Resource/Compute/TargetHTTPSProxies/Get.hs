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
-- Module      : Network.Google.Resource.Compute.TargetHTTPSProxies.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified TargetHttpsProxy resource. Gets a list of
-- available target HTTPS proxies by making a list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetHttpsProxies.get@.
module Network.Google.Resource.Compute.TargetHTTPSProxies.Get
    (
    -- * REST Resource
      TargetHTTPSProxiesGetResource

    -- * Creating a Request
    , targetHTTPSProxiesGet
    , TargetHTTPSProxiesGet

    -- * Request Lenses
    , thpgProject
    , thpgTargetHTTPSProxy
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.targetHttpsProxies.get@ method which the
-- 'TargetHTTPSProxiesGet' request conforms to.
type TargetHTTPSProxiesGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "targetHttpsProxies" :>
                 Capture "targetHttpsProxy" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] TargetHTTPSProxy

-- | Returns the specified TargetHttpsProxy resource. Gets a list of
-- available target HTTPS proxies by making a list() request.
--
-- /See:/ 'targetHTTPSProxiesGet' smart constructor.
data TargetHTTPSProxiesGet =
  TargetHTTPSProxiesGet'
    { _thpgProject          :: !Text
    , _thpgTargetHTTPSProxy :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetHTTPSProxiesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'thpgProject'
--
-- * 'thpgTargetHTTPSProxy'
targetHTTPSProxiesGet
    :: Text -- ^ 'thpgProject'
    -> Text -- ^ 'thpgTargetHTTPSProxy'
    -> TargetHTTPSProxiesGet
targetHTTPSProxiesGet pThpgProject_ pThpgTargetHTTPSProxy_ =
  TargetHTTPSProxiesGet'
    { _thpgProject = pThpgProject_
    , _thpgTargetHTTPSProxy = pThpgTargetHTTPSProxy_
    }


-- | Project ID for this request.
thpgProject :: Lens' TargetHTTPSProxiesGet Text
thpgProject
  = lens _thpgProject (\ s a -> s{_thpgProject = a})

-- | Name of the TargetHttpsProxy resource to return.
thpgTargetHTTPSProxy :: Lens' TargetHTTPSProxiesGet Text
thpgTargetHTTPSProxy
  = lens _thpgTargetHTTPSProxy
      (\ s a -> s{_thpgTargetHTTPSProxy = a})

instance GoogleRequest TargetHTTPSProxiesGet where
        type Rs TargetHTTPSProxiesGet = TargetHTTPSProxy
        type Scopes TargetHTTPSProxiesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient TargetHTTPSProxiesGet'{..}
          = go _thpgProject _thpgTargetHTTPSProxy
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetHTTPSProxiesGetResource)
                      mempty
