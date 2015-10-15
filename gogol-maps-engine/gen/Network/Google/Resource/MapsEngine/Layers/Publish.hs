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
-- Module      : Network.Google.Resource.MapsEngine.Layers.Publish
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Publish a layer asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineLayersPublish@.
module Network.Google.Resource.MapsEngine.Layers.Publish
    (
    -- * REST Resource
      LayersPublishResource

    -- * Creating a Request
    , layersPublish'
    , LayersPublish'

    -- * Request Lenses
    , lForce
    , lId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineLayersPublish@ method which the
-- 'LayersPublish'' request conforms to.
type LayersPublishResource =
     "layers" :>
       Capture "id" Text :>
         "publish" :>
           QueryParam "force" Bool :>
             QueryParam "alt" AltJSON :>
               Post '[JSON] PublishResponse

-- | Publish a layer asset.
--
-- /See:/ 'layersPublish'' smart constructor.
data LayersPublish' = LayersPublish'
    { _lForce :: !(Maybe Bool)
    , _lId    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersPublish'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lForce'
--
-- * 'lId'
layersPublish'
    :: Text -- ^ 'id'
    -> LayersPublish'
layersPublish' pLId_ =
    LayersPublish'
    { _lForce = Nothing
    , _lId = pLId_
    }

-- | If set to true, the API will allow publication of the layer even if
-- it\'s out of date. If not true, you\'ll need to reprocess any
-- out-of-date layer before publishing.
lForce :: Lens' LayersPublish' (Maybe Bool)
lForce = lens _lForce (\ s a -> s{_lForce = a})

-- | The ID of the layer.
lId :: Lens' LayersPublish' Text
lId = lens _lId (\ s a -> s{_lId = a})

instance GoogleRequest LayersPublish' where
        type Rs LayersPublish' = PublishResponse
        requestClient LayersPublish'{..}
          = go _lId _lForce (Just AltJSON) mapsEngine
          where go
                  = buildClient (Proxy :: Proxy LayersPublishResource)
                      mempty
