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
-- Module      : Network.Google.Resource.MapsEngine.Layers.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a layer.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.layers.delete@.
module Network.Google.Resource.MapsEngine.Layers.Delete
    (
    -- * REST Resource
      LayersDeleteResource

    -- * Creating a Request
    , layersDelete
    , LayersDelete

    -- * Request Lenses
    , ldId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.layers.delete@ method which the
-- 'LayersDelete' request conforms to.
type LayersDeleteResource =
     "mapsengine" :>
       "v1" :>
         "layers" :>
           Capture "id" Text :>
             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete a layer.
--
-- /See:/ 'layersDelete' smart constructor.
newtype LayersDelete = LayersDelete
    { _ldId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldId'
layersDelete
    :: Text -- ^ 'ldId'
    -> LayersDelete
layersDelete pLdId_ =
    LayersDelete
    { _ldId = pLdId_
    }

-- | The ID of the layer. Only the layer creator or project owner are
-- permitted to delete. If the layer is published, or included in a map,
-- the request will fail. Unpublish the layer, and remove it from all maps
-- prior to deleting.
ldId :: Lens' LayersDelete Text
ldId = lens _ldId (\ s a -> s{_ldId = a})

instance GoogleRequest LayersDelete where
        type Rs LayersDelete = ()
        requestClient LayersDelete{..}
          = go _ldId (Just AltJSON) mapsEngineService
          where go
                  = buildClient (Proxy :: Proxy LayersDeleteResource)
                      mempty
