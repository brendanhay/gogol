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
-- Module      : Network.Google.Resource.Compute.TargetHTTPProxies.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified TargetHttpProxy resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetHttpProxies.delete@.
module Network.Google.Resource.Compute.TargetHTTPProxies.Delete
    (
    -- * REST Resource
      TargetHTTPProxiesDeleteResource

    -- * Creating a Request
    , targetHTTPProxiesDelete
    , TargetHTTPProxiesDelete

    -- * Request Lenses
    , thttppdProject
    , thttppdTargetHTTPProxy
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.targetHttpProxies.delete@ method which the
-- 'TargetHTTPProxiesDelete' request conforms to.
type TargetHTTPProxiesDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "targetHttpProxies" :>
                 Capture "targetHttpProxy" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified TargetHttpProxy resource.
--
-- /See:/ 'targetHTTPProxiesDelete' smart constructor.
data TargetHTTPProxiesDelete = TargetHTTPProxiesDelete'
    { _thttppdProject         :: !Text
    , _thttppdTargetHTTPProxy :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetHTTPProxiesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'thttppdProject'
--
-- * 'thttppdTargetHTTPProxy'
targetHTTPProxiesDelete
    :: Text -- ^ 'thttppdProject'
    -> Text -- ^ 'thttppdTargetHTTPProxy'
    -> TargetHTTPProxiesDelete
targetHTTPProxiesDelete pThttppdProject_ pThttppdTargetHTTPProxy_ =
    TargetHTTPProxiesDelete'
    { _thttppdProject = pThttppdProject_
    , _thttppdTargetHTTPProxy = pThttppdTargetHTTPProxy_
    }

-- | Project ID for this request.
thttppdProject :: Lens' TargetHTTPProxiesDelete Text
thttppdProject
  = lens _thttppdProject
      (\ s a -> s{_thttppdProject = a})

-- | Name of the TargetHttpProxy resource to delete.
thttppdTargetHTTPProxy :: Lens' TargetHTTPProxiesDelete Text
thttppdTargetHTTPProxy
  = lens _thttppdTargetHTTPProxy
      (\ s a -> s{_thttppdTargetHTTPProxy = a})

instance GoogleRequest TargetHTTPProxiesDelete where
        type Rs TargetHTTPProxiesDelete = Operation
        type Scopes TargetHTTPProxiesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient TargetHTTPProxiesDelete'{..}
          = go _thttppdProject _thttppdTargetHTTPProxy
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetHTTPProxiesDeleteResource)
                      mempty
