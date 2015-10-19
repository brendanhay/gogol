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
-- Module      : Network.Google.Resource.MapsEngine.Layers.Process
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Process a layer asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.layers.process@.
module Network.Google.Resource.MapsEngine.Layers.Process
    (
    -- * REST Resource
      LayersProcessResource

    -- * Creating a Request
    , layersProcess'
    , LayersProcess'

    -- * Request Lenses
    , lpId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.layers.process@ method which the
-- 'LayersProcess'' request conforms to.
type LayersProcessResource =
     "layers" :>
       Capture "id" Text :>
         "process" :>
           QueryParam "alt" AltJSON :>
             Post '[JSON] ProcessResponse

-- | Process a layer asset.
--
-- /See:/ 'layersProcess'' smart constructor.
newtype LayersProcess' = LayersProcess'
    { _lpId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersProcess'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpId'
layersProcess'
    :: Text -- ^ 'lpId'
    -> LayersProcess'
layersProcess' pLpId_ =
    LayersProcess'
    { _lpId = pLpId_
    }

-- | The ID of the layer.
lpId :: Lens' LayersProcess' Text
lpId = lens _lpId (\ s a -> s{_lpId = a})

instance GoogleRequest LayersProcess' where
        type Rs LayersProcess' = ProcessResponse
        requestClient LayersProcess'{..}
          = go _lpId (Just AltJSON) mapsEngineService
          where go
                  = buildClient (Proxy :: Proxy LayersProcessResource)
                      mempty
