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
-- Publish a layer asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.layers.publish@.
module Network.Google.Resource.MapsEngine.Layers.Publish
    (
    -- * REST Resource
      LayersPublishResource

    -- * Creating a Request
    , layersPublish
    , LayersPublish

    -- * Request Lenses
    , lpForce
    , lpId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.layers.publish@ method which the
-- 'LayersPublish' request conforms to.
type LayersPublishResource =
     "mapsengine" :>
       "v1" :>
         "layers" :>
           Capture "id" Text :>
             "publish" :>
               QueryParam "force" Bool :>
                 QueryParam "alt" AltJSON :>
                   Post '[JSON] PublishResponse

-- | Publish a layer asset.
--
-- /See:/ 'layersPublish' smart constructor.
data LayersPublish = LayersPublish
    { _lpForce :: !(Maybe Bool)
    , _lpId    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersPublish' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpForce'
--
-- * 'lpId'
layersPublish
    :: Text -- ^ 'lpId'
    -> LayersPublish
layersPublish pLpId_ =
    LayersPublish
    { _lpForce = Nothing
    , _lpId = pLpId_
    }

-- | If set to true, the API will allow publication of the layer even if
-- it\'s out of date. If not true, you\'ll need to reprocess any
-- out-of-date layer before publishing.
lpForce :: Lens' LayersPublish (Maybe Bool)
lpForce = lens _lpForce (\ s a -> s{_lpForce = a})

-- | The ID of the layer.
lpId :: Lens' LayersPublish Text
lpId = lens _lpId (\ s a -> s{_lpId = a})

instance GoogleRequest LayersPublish where
        type Rs LayersPublish = PublishResponse
        requestClient LayersPublish{..}
          = go _lpId _lpForce (Just AltJSON) mapsEngineService
          where go
                  = buildClient (Proxy :: Proxy LayersPublishResource)
                      mempty
