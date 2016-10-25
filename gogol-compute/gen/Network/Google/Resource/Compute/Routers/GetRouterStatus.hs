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
-- Module      : Network.Google.Resource.Compute.Routers.GetRouterStatus
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves runtime information of the specified router.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.routers.getRouterStatus@.
module Network.Google.Resource.Compute.Routers.GetRouterStatus
    (
    -- * REST Resource
      RoutersGetRouterStatusResource

    -- * Creating a Request
    , routersGetRouterStatus
    , RoutersGetRouterStatus

    -- * Request Lenses
    , rgrsProject
    , rgrsRouter
    , rgrsRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.routers.getRouterStatus@ method which the
-- 'RoutersGetRouterStatus' request conforms to.
type RoutersGetRouterStatusResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "routers" :>
                   Capture "router" Text :>
                     "getRouterStatus" :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] RouterStatusResponse

-- | Retrieves runtime information of the specified router.
--
-- /See:/ 'routersGetRouterStatus' smart constructor.
data RoutersGetRouterStatus = RoutersGetRouterStatus'
    { _rgrsProject :: !Text
    , _rgrsRouter  :: !Text
    , _rgrsRegion  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoutersGetRouterStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgrsProject'
--
-- * 'rgrsRouter'
--
-- * 'rgrsRegion'
routersGetRouterStatus
    :: Text -- ^ 'rgrsProject'
    -> Text -- ^ 'rgrsRouter'
    -> Text -- ^ 'rgrsRegion'
    -> RoutersGetRouterStatus
routersGetRouterStatus pRgrsProject_ pRgrsRouter_ pRgrsRegion_ =
    RoutersGetRouterStatus'
    { _rgrsProject = pRgrsProject_
    , _rgrsRouter = pRgrsRouter_
    , _rgrsRegion = pRgrsRegion_
    }

-- | Project ID for this request.
rgrsProject :: Lens' RoutersGetRouterStatus Text
rgrsProject
  = lens _rgrsProject (\ s a -> s{_rgrsProject = a})

-- | Name of the Router resource to query.
rgrsRouter :: Lens' RoutersGetRouterStatus Text
rgrsRouter
  = lens _rgrsRouter (\ s a -> s{_rgrsRouter = a})

-- | Name of the region for this request.
rgrsRegion :: Lens' RoutersGetRouterStatus Text
rgrsRegion
  = lens _rgrsRegion (\ s a -> s{_rgrsRegion = a})

instance GoogleRequest RoutersGetRouterStatus where
        type Rs RoutersGetRouterStatus = RouterStatusResponse
        type Scopes RoutersGetRouterStatus =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RoutersGetRouterStatus'{..}
          = go _rgrsProject _rgrsRegion _rgrsRouter
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RoutersGetRouterStatusResource)
                      mempty
