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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Mutate a layer asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.layers.patch@.
module Network.Google.Resource.MapsEngine.Layers.Patch
    (
    -- * REST Resource
      LayersPatchResource

    -- * Creating a Request
    , layersPatch
    , LayersPatch

    -- * Request Lenses
    , lppPayload
    , lppId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.layers.patch@ method which the
-- 'LayersPatch' request conforms to.
type LayersPatchResource =
     "mapsengine" :>
       "v1" :>
         "layers" :>
           Capture "id" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Layer :> Patch '[JSON] ()

-- | Mutate a layer asset.
--
-- /See:/ 'layersPatch' smart constructor.
data LayersPatch = LayersPatch'
    { _lppPayload :: !Layer
    , _lppId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lppPayload'
--
-- * 'lppId'
layersPatch
    :: Layer -- ^ 'lppPayload'
    -> Text -- ^ 'lppId'
    -> LayersPatch
layersPatch pLppPayload_ pLppId_ =
    LayersPatch'
    { _lppPayload = pLppPayload_
    , _lppId = pLppId_
    }

-- | Multipart request metadata.
lppPayload :: Lens' LayersPatch Layer
lppPayload
  = lens _lppPayload (\ s a -> s{_lppPayload = a})

-- | The ID of the layer.
lppId :: Lens' LayersPatch Text
lppId = lens _lppId (\ s a -> s{_lppId = a})

instance GoogleRequest LayersPatch where
        type Rs LayersPatch = ()
        type Scopes LayersPatch =
             '["https://www.googleapis.com/auth/mapsengine"]
        requestClient LayersPatch'{..}
          = go _lppId (Just AltJSON) _lppPayload
              mapsEngineService
          where go
                  = buildClient (Proxy :: Proxy LayersPatchResource)
                      mempty
