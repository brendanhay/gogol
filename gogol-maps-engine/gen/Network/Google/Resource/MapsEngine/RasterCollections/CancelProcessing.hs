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
-- Module      : Network.Google.Resource.MapsEngine.RasterCollections.CancelProcessing
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancel processing on a raster collection asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.rasterCollections.cancelProcessing@.
module Network.Google.Resource.MapsEngine.RasterCollections.CancelProcessing
    (
    -- * REST Resource
      RasterCollectionsCancelProcessingResource

    -- * Creating a Request
    , rasterCollectionsCancelProcessing
    , RasterCollectionsCancelProcessing

    -- * Request Lenses
    , rccpId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.rasterCollections.cancelProcessing@ method which the
-- 'RasterCollectionsCancelProcessing' request conforms to.
type RasterCollectionsCancelProcessingResource =
     "rasterCollections" :>
       Capture "id" Text :>
         "cancelProcessing" :>
           QueryParam "alt" AltJSON :>
             Post '[JSON] ProcessResponse

-- | Cancel processing on a raster collection asset.
--
-- /See:/ 'rasterCollectionsCancelProcessing' smart constructor.
newtype RasterCollectionsCancelProcessing = RasterCollectionsCancelProcessing
    { _rccpId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsCancelProcessing' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rccpId'
rasterCollectionsCancelProcessing
    :: Text -- ^ 'rccpId'
    -> RasterCollectionsCancelProcessing
rasterCollectionsCancelProcessing pRccpId_ =
    RasterCollectionsCancelProcessing
    { _rccpId = pRccpId_
    }

-- | The ID of the raster collection.
rccpId :: Lens' RasterCollectionsCancelProcessing Text
rccpId = lens _rccpId (\ s a -> s{_rccpId = a})

instance GoogleRequest
         RasterCollectionsCancelProcessing where
        type Rs RasterCollectionsCancelProcessing =
             ProcessResponse
        requestClient RasterCollectionsCancelProcessing{..}
          = go _rccpId (Just AltJSON) mapsEngineService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RasterCollectionsCancelProcessingResource)
                      mempty
