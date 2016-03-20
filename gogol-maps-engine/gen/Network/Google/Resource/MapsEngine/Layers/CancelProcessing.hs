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
-- Module      : Network.Google.Resource.MapsEngine.Layers.CancelProcessing
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancel processing on a layer asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.layers.cancelProcessing@.
module Network.Google.Resource.MapsEngine.Layers.CancelProcessing
    (
    -- * REST Resource
      LayersCancelProcessingResource

    -- * Creating a Request
    , layersCancelProcessing
    , LayersCancelProcessing

    -- * Request Lenses
    , lcpId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.layers.cancelProcessing@ method which the
-- 'LayersCancelProcessing' request conforms to.
type LayersCancelProcessingResource =
     "mapsengine" :>
       "v1" :>
         "layers" :>
           Capture "id" Text :>
             "cancelProcessing" :>
               QueryParam "alt" AltJSON :>
                 Post '[JSON] ProcessResponse

-- | Cancel processing on a layer asset.
--
-- /See:/ 'layersCancelProcessing' smart constructor.
newtype LayersCancelProcessing = LayersCancelProcessing
    { _lcpId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersCancelProcessing' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcpId'
layersCancelProcessing
    :: Text -- ^ 'lcpId'
    -> LayersCancelProcessing
layersCancelProcessing pLcpId_ =
    LayersCancelProcessing
    { _lcpId = pLcpId_
    }

-- | The ID of the layer.
lcpId :: Lens' LayersCancelProcessing Text
lcpId = lens _lcpId (\ s a -> s{_lcpId = a})

instance GoogleRequest LayersCancelProcessing where
        type Rs LayersCancelProcessing = ProcessResponse
        requestClient LayersCancelProcessing{..}
          = go _lcpId (Just AltJSON) mapsEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy LayersCancelProcessingResource)
                      mempty
