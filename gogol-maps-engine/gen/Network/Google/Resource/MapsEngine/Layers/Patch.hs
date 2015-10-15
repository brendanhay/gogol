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
-- Module      : Network.Google.Resource.MapsEngine.Layers.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Mutate a layer asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineLayersPatch@.
module Network.Google.Resource.MapsEngine.Layers.Patch
    (
    -- * REST Resource
      LayersPatchResource

    -- * Creating a Request
    , layersPatch'
    , LayersPatch'

    -- * Request Lenses
    , layPayload
    , layId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineLayersPatch@ method which the
-- 'LayersPatch'' request conforms to.
type LayersPatchResource =
     "layers" :>
       Capture "id" Text :>
         QueryParam "alt" AltJSON :>
           ReqBody '[JSON] Layer :> Patch '[JSON] ()

-- | Mutate a layer asset.
--
-- /See:/ 'layersPatch'' smart constructor.
data LayersPatch' = LayersPatch'
    { _layPayload :: !Layer
    , _layId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'layPayload'
--
-- * 'layId'
layersPatch'
    :: Layer -- ^ 'payload'
    -> Text -- ^ 'id'
    -> LayersPatch'
layersPatch' pLayPayload_ pLayId_ =
    LayersPatch'
    { _layPayload = pLayPayload_
    , _layId = pLayId_
    }

-- | Multipart request metadata.
layPayload :: Lens' LayersPatch' Layer
layPayload
  = lens _layPayload (\ s a -> s{_layPayload = a})

-- | The ID of the layer.
layId :: Lens' LayersPatch' Text
layId = lens _layId (\ s a -> s{_layId = a})

instance GoogleRequest LayersPatch' where
        type Rs LayersPatch' = ()
        requestClient LayersPatch'{..}
          = go _layId (Just AltJSON) _layPayload mapsEngine
          where go
                  = buildClient (Proxy :: Proxy LayersPatchResource)
                      mempty
