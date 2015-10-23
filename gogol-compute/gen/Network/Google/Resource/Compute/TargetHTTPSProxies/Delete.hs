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
-- Module      : Network.Google.Resource.Compute.TargetHTTPSProxies.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified TargetHttpsProxy resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetHttpsProxies.delete@.
module Network.Google.Resource.Compute.TargetHTTPSProxies.Delete
    (
    -- * REST Resource
      TargetHTTPSProxiesDeleteResource

    -- * Creating a Request
    , targetHTTPSProxiesDelete
    , TargetHTTPSProxiesDelete

    -- * Request Lenses
    , thpdProject
    , thpdTargetHTTPSProxy
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.targetHttpsProxies.delete@ method which the
-- 'TargetHTTPSProxiesDelete' request conforms to.
type TargetHTTPSProxiesDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "targetHttpsProxies" :>
                 Capture "targetHttpsProxy" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified TargetHttpsProxy resource.
--
-- /See:/ 'targetHTTPSProxiesDelete' smart constructor.
data TargetHTTPSProxiesDelete = TargetHTTPSProxiesDelete
    { _thpdProject          :: !Text
    , _thpdTargetHTTPSProxy :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetHTTPSProxiesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'thpdProject'
--
-- * 'thpdTargetHTTPSProxy'
targetHTTPSProxiesDelete
    :: Text -- ^ 'thpdProject'
    -> Text -- ^ 'thpdTargetHTTPSProxy'
    -> TargetHTTPSProxiesDelete
targetHTTPSProxiesDelete pThpdProject_ pThpdTargetHTTPSProxy_ =
    TargetHTTPSProxiesDelete
    { _thpdProject = pThpdProject_
    , _thpdTargetHTTPSProxy = pThpdTargetHTTPSProxy_
    }

-- | Name of the project scoping this request.
thpdProject :: Lens' TargetHTTPSProxiesDelete Text
thpdProject
  = lens _thpdProject (\ s a -> s{_thpdProject = a})

-- | Name of the TargetHttpsProxy resource to delete.
thpdTargetHTTPSProxy :: Lens' TargetHTTPSProxiesDelete Text
thpdTargetHTTPSProxy
  = lens _thpdTargetHTTPSProxy
      (\ s a -> s{_thpdTargetHTTPSProxy = a})

instance GoogleRequest TargetHTTPSProxiesDelete where
        type Rs TargetHTTPSProxiesDelete = Operation
        requestClient TargetHTTPSProxiesDelete{..}
          = go _thpdProject _thpdTargetHTTPSProxy
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetHTTPSProxiesDeleteResource)
                      mempty
