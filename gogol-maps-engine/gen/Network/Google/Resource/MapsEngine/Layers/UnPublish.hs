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
-- Module      : Network.Google.Resource.MapsEngine.Layers.UnPublish
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Unpublish a layer asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineLayersUnPublish@.
module Network.Google.Resource.MapsEngine.Layers.UnPublish
    (
    -- * REST Resource
      LayersUnPublishResource

    -- * Creating a Request
    , layersUnPublish'
    , LayersUnPublish'

    -- * Request Lenses
    , lupId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineLayersUnPublish@ method which the
-- 'LayersUnPublish'' request conforms to.
type LayersUnPublishResource =
     "layers" :>
       Capture "id" Text :>
         "unpublish" :>
           QueryParam "alt" AltJSON :>
             Post '[JSON] PublishResponse

-- | Unpublish a layer asset.
--
-- /See:/ 'layersUnPublish'' smart constructor.
newtype LayersUnPublish' = LayersUnPublish'
    { _lupId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersUnPublish'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lupId'
layersUnPublish'
    :: Text -- ^ 'id'
    -> LayersUnPublish'
layersUnPublish' pLupId_ =
    LayersUnPublish'
    { _lupId = pLupId_
    }

-- | The ID of the layer.
lupId :: Lens' LayersUnPublish' Text
lupId = lens _lupId (\ s a -> s{_lupId = a})

instance GoogleRequest LayersUnPublish' where
        type Rs LayersUnPublish' = PublishResponse
        requestClient LayersUnPublish'{..}
          = go _lupId (Just AltJSON) mapsEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy LayersUnPublishResource)
                      mempty
