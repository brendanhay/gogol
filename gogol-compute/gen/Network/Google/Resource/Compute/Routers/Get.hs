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
-- Module      : Network.Google.Resource.Compute.Routers.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified Router resource. Get a list of available routers
-- by making a list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.routers.get@.
module Network.Google.Resource.Compute.Routers.Get
    (
    -- * REST Resource
      RoutersGetResource

    -- * Creating a Request
    , routersGet
    , RoutersGet

    -- * Request Lenses
    , rggProject
    , rggRouter
    , rggRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.routers.get@ method which the
-- 'RoutersGet' request conforms to.
type RoutersGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "routers" :>
                   Capture "router" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Router

-- | Returns the specified Router resource. Get a list of available routers
-- by making a list() request.
--
-- /See:/ 'routersGet' smart constructor.
data RoutersGet = RoutersGet'
    { _rggProject :: !Text
    , _rggRouter  :: !Text
    , _rggRegion  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoutersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rggProject'
--
-- * 'rggRouter'
--
-- * 'rggRegion'
routersGet
    :: Text -- ^ 'rggProject'
    -> Text -- ^ 'rggRouter'
    -> Text -- ^ 'rggRegion'
    -> RoutersGet
routersGet pRggProject_ pRggRouter_ pRggRegion_ =
    RoutersGet'
    { _rggProject = pRggProject_
    , _rggRouter = pRggRouter_
    , _rggRegion = pRggRegion_
    }

-- | Project ID for this request.
rggProject :: Lens' RoutersGet Text
rggProject
  = lens _rggProject (\ s a -> s{_rggProject = a})

-- | Name of the Router resource to return.
rggRouter :: Lens' RoutersGet Text
rggRouter
  = lens _rggRouter (\ s a -> s{_rggRouter = a})

-- | Name of the region for this request.
rggRegion :: Lens' RoutersGet Text
rggRegion
  = lens _rggRegion (\ s a -> s{_rggRegion = a})

instance GoogleRequest RoutersGet where
        type Rs RoutersGet = Router
        type Scopes RoutersGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RoutersGet'{..}
          = go _rggProject _rggRegion _rggRouter (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy RoutersGetResource)
                      mempty
