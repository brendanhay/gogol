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
-- Module      : Network.Google.Resource.MapsEngine.Layers.GetPublished
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return the published metadata for a particular layer.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineLayersGetPublished@.
module Network.Google.Resource.MapsEngine.Layers.GetPublished
    (
    -- * REST Resource
      LayersGetPublishedResource

    -- * Creating a Request
    , layersGetPublished'
    , LayersGetPublished'

    -- * Request Lenses
    , lgpId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineLayersGetPublished@ method which the
-- 'LayersGetPublished'' request conforms to.
type LayersGetPublishedResource =
     "layers" :>
       Capture "id" Text :>
         "published" :>
           QueryParam "alt" AltJSON :>
             Get '[JSON] PublishedLayer

-- | Return the published metadata for a particular layer.
--
-- /See:/ 'layersGetPublished'' smart constructor.
newtype LayersGetPublished' = LayersGetPublished'
    { _lgpId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersGetPublished'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgpId'
layersGetPublished'
    :: Text -- ^ 'id'
    -> LayersGetPublished'
layersGetPublished' pLgpId_ =
    LayersGetPublished'
    { _lgpId = pLgpId_
    }

-- | The ID of the layer.
lgpId :: Lens' LayersGetPublished' Text
lgpId = lens _lgpId (\ s a -> s{_lgpId = a})

instance GoogleRequest LayersGetPublished' where
        type Rs LayersGetPublished' = PublishedLayer
        requestClient LayersGetPublished'{..}
          = go _lgpId (Just AltJSON) mapsEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy LayersGetPublishedResource)
                      mempty
