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
-- Module      : Network.Google.Resource.MapsEngine.Layers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return metadata for a particular layer.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineLayersGet@.
module Network.Google.Resource.MapsEngine.Layers.Get
    (
    -- * REST Resource
      LayersGetResource

    -- * Creating a Request
    , layersGet'
    , LayersGet'

    -- * Request Lenses
    , lgVersion
    , lgId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineLayersGet@ method which the
-- 'LayersGet'' request conforms to.
type LayersGetResource =
     "layers" :>
       Capture "id" Text :>
         QueryParam "version" LayersGetVersion :>
           QueryParam "alt" AltJSON :> Get '[JSON] Layer

-- | Return metadata for a particular layer.
--
-- /See:/ 'layersGet'' smart constructor.
data LayersGet' = LayersGet'
    { _lgVersion :: !(Maybe LayersGetVersion)
    , _lgId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgVersion'
--
-- * 'lgId'
layersGet'
    :: Text -- ^ 'id'
    -> LayersGet'
layersGet' pLgId_ =
    LayersGet'
    { _lgVersion = Nothing
    , _lgId = pLgId_
    }

-- | Deprecated: The version parameter indicates which version of the layer
-- should be returned. When version is set to published, the published
-- version of the layer will be returned. Please use the
-- layers.getPublished endpoint instead.
lgVersion :: Lens' LayersGet' (Maybe LayersGetVersion)
lgVersion
  = lens _lgVersion (\ s a -> s{_lgVersion = a})

-- | The ID of the layer.
lgId :: Lens' LayersGet' Text
lgId = lens _lgId (\ s a -> s{_lgId = a})

instance GoogleRequest LayersGet' where
        type Rs LayersGet' = Layer
        requestClient LayersGet'{..}
          = go _lgId _lgVersion (Just AltJSON) mapsEngine
          where go
                  = buildClient (Proxy :: Proxy LayersGetResource)
                      mempty
