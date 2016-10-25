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
-- Module      : Network.Google.Resource.Compute.Routers.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified Router resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.routers.delete@.
module Network.Google.Resource.Compute.Routers.Delete
    (
    -- * REST Resource
      RoutersDeleteResource

    -- * Creating a Request
    , routersDelete
    , RoutersDelete

    -- * Request Lenses
    , rddProject
    , rddRouter
    , rddRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.routers.delete@ method which the
-- 'RoutersDelete' request conforms to.
type RoutersDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "routers" :>
                   Capture "router" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified Router resource.
--
-- /See:/ 'routersDelete' smart constructor.
data RoutersDelete = RoutersDelete'
    { _rddProject :: !Text
    , _rddRouter  :: !Text
    , _rddRegion  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoutersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rddProject'
--
-- * 'rddRouter'
--
-- * 'rddRegion'
routersDelete
    :: Text -- ^ 'rddProject'
    -> Text -- ^ 'rddRouter'
    -> Text -- ^ 'rddRegion'
    -> RoutersDelete
routersDelete pRddProject_ pRddRouter_ pRddRegion_ =
    RoutersDelete'
    { _rddProject = pRddProject_
    , _rddRouter = pRddRouter_
    , _rddRegion = pRddRegion_
    }

-- | Project ID for this request.
rddProject :: Lens' RoutersDelete Text
rddProject
  = lens _rddProject (\ s a -> s{_rddProject = a})

-- | Name of the Router resource to delete.
rddRouter :: Lens' RoutersDelete Text
rddRouter
  = lens _rddRouter (\ s a -> s{_rddRouter = a})

-- | Name of the region for this request.
rddRegion :: Lens' RoutersDelete Text
rddRegion
  = lens _rddRegion (\ s a -> s{_rddRegion = a})

instance GoogleRequest RoutersDelete where
        type Rs RoutersDelete = Operation
        type Scopes RoutersDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RoutersDelete'{..}
          = go _rddProject _rddRegion _rddRouter (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy RoutersDeleteResource)
                      mempty
