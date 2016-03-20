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
-- Copyright   : (c) 2015-2016 Brendan Hay
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
    , layersProcess
    , LayersProcess

    -- * Request Lenses
    , lpsId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.layers.process@ method which the
-- 'LayersProcess' request conforms to.
type LayersProcessResource =
     "mapsengine" :>
       "v1" :>
         "layers" :>
           Capture "id" Text :>
             "process" :>
               QueryParam "alt" AltJSON :>
                 Post '[JSON] ProcessResponse

-- | Process a layer asset.
--
-- /See:/ 'layersProcess' smart constructor.
newtype LayersProcess = LayersProcess
    { _lpsId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersProcess' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpsId'
layersProcess
    :: Text -- ^ 'lpsId'
    -> LayersProcess
layersProcess pLpsId_ =
    LayersProcess
    { _lpsId = pLpsId_
    }

-- | The ID of the layer.
lpsId :: Lens' LayersProcess Text
lpsId = lens _lpsId (\ s a -> s{_lpsId = a})

instance GoogleRequest LayersProcess where
        type Rs LayersProcess = ProcessResponse
        requestClient LayersProcess{..}
          = go _lpsId (Just AltJSON) mapsEngineService
          where go
                  = buildClient (Proxy :: Proxy LayersProcessResource)
                      mempty
