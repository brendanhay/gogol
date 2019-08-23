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
-- Module      : Network.Google.Resource.Compute.Routes.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified Route resource. Gets a list of available routes by
-- making a list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.routes.get@.
module Network.Google.Resource.Compute.Routes.Get
    (
    -- * REST Resource
      RoutesGetResource

    -- * Creating a Request
    , routesGet
    , RoutesGet

    -- * Request Lenses
    , rrProject
    , rrRoute
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.routes.get@ method which the
-- 'RoutesGet' request conforms to.
type RoutesGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "routes" :>
                 Capture "route" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Route

-- | Returns the specified Route resource. Gets a list of available routes by
-- making a list() request.
--
-- /See:/ 'routesGet' smart constructor.
data RoutesGet =
  RoutesGet'
    { _rrProject :: !Text
    , _rrRoute   :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RoutesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrProject'
--
-- * 'rrRoute'
routesGet
    :: Text -- ^ 'rrProject'
    -> Text -- ^ 'rrRoute'
    -> RoutesGet
routesGet pRrProject_ pRrRoute_ =
  RoutesGet' {_rrProject = pRrProject_, _rrRoute = pRrRoute_}


-- | Project ID for this request.
rrProject :: Lens' RoutesGet Text
rrProject
  = lens _rrProject (\ s a -> s{_rrProject = a})

-- | Name of the Route resource to return.
rrRoute :: Lens' RoutesGet Text
rrRoute = lens _rrRoute (\ s a -> s{_rrRoute = a})

instance GoogleRequest RoutesGet where
        type Rs RoutesGet = Route
        type Scopes RoutesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RoutesGet'{..}
          = go _rrProject _rrRoute (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy RoutesGetResource)
                      mempty
