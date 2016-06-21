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
-- Module      : Network.Google.Resource.MapsEngine.RasterCollections.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a raster collection.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.rasterCollections.delete@.
module Network.Google.Resource.MapsEngine.RasterCollections.Delete
    (
    -- * REST Resource
      RasterCollectionsDeleteResource

    -- * Creating a Request
    , rasterCollectionsDelete
    , RasterCollectionsDelete

    -- * Request Lenses
    , rcdId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.rasterCollections.delete@ method which the
-- 'RasterCollectionsDelete' request conforms to.
type RasterCollectionsDeleteResource =
     "mapsengine" :>
       "v1" :>
         "rasterCollections" :>
           Capture "id" Text :>
             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete a raster collection.
--
-- /See:/ 'rasterCollectionsDelete' smart constructor.
newtype RasterCollectionsDelete = RasterCollectionsDelete'
    { _rcdId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcdId'
rasterCollectionsDelete
    :: Text -- ^ 'rcdId'
    -> RasterCollectionsDelete
rasterCollectionsDelete pRcdId_ =
    RasterCollectionsDelete'
    { _rcdId = pRcdId_
    }

-- | The ID of the raster collection. Only the raster collection creator or
-- project owner are permitted to delete. If the rastor collection is
-- included in a layer, the request will fail. Remove the raster collection
-- from all layers prior to deleting.
rcdId :: Lens' RasterCollectionsDelete Text
rcdId = lens _rcdId (\ s a -> s{_rcdId = a})

instance GoogleRequest RasterCollectionsDelete where
        type Rs RasterCollectionsDelete = ()
        type Scopes RasterCollectionsDelete =
             '["https://www.googleapis.com/auth/mapsengine"]
        requestClient RasterCollectionsDelete'{..}
          = go _rcdId (Just AltJSON) mapsEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy RasterCollectionsDeleteResource)
                      mempty
