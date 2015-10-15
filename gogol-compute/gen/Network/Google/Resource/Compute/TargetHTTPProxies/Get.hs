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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified TargetHttpProxy resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeTargetHTTPProxiesGet@.
module Network.Google.Resource.Compute.TargetHTTPProxies.Get
    (
    -- * REST Resource
      TargetHTTPProxiesGetResource

    -- * Creating a Request
    , targetHTTPProxiesGet'
    , TargetHTTPProxiesGet'

    -- * Request Lenses
    , thttppgProject
    , thttppgTargetHTTPProxy
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetHTTPProxiesGet@ method which the
-- 'TargetHTTPProxiesGet'' request conforms to.
type TargetHTTPProxiesGetResource =
     Capture "project" Text :>
       "global" :>
         "targetHttpProxies" :>
           Capture "targetHttpProxy" Text :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] TargetHTTPProxy

-- | Returns the specified TargetHttpProxy resource.
--
-- /See:/ 'targetHTTPProxiesGet'' smart constructor.
data TargetHTTPProxiesGet' = TargetHTTPProxiesGet'
    { _thttppgProject         :: !Text
    , _thttppgTargetHTTPProxy :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetHTTPProxiesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'thttppgProject'
--
-- * 'thttppgTargetHTTPProxy'
targetHTTPProxiesGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'targetHttpProxy'
    -> TargetHTTPProxiesGet'
targetHTTPProxiesGet' pThttppgProject_ pThttppgTargetHTTPProxy_ =
    TargetHTTPProxiesGet'
    { _thttppgProject = pThttppgProject_
    , _thttppgTargetHTTPProxy = pThttppgTargetHTTPProxy_
    }

-- | Name of the project scoping this request.
thttppgProject :: Lens' TargetHTTPProxiesGet' Text
thttppgProject
  = lens _thttppgProject
      (\ s a -> s{_thttppgProject = a})

-- | Name of the TargetHttpProxy resource to return.
thttppgTargetHTTPProxy :: Lens' TargetHTTPProxiesGet' Text
thttppgTargetHTTPProxy
  = lens _thttppgTargetHTTPProxy
      (\ s a -> s{_thttppgTargetHTTPProxy = a})

instance GoogleRequest TargetHTTPProxiesGet' where
        type Rs TargetHTTPProxiesGet' = TargetHTTPProxy
        requestClient TargetHTTPProxiesGet'{..}
          = go _thttppgProject _thttppgTargetHTTPProxy
              (Just AltJSON)
              compute
          where go
                  = buildClient
                      (Proxy :: Proxy TargetHTTPProxiesGetResource)
                      mempty
