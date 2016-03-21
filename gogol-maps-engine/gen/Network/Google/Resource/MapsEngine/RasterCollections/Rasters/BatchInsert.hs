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
-- Module      : Network.Google.Resource.MapsEngine.RasterCollections.Rasters.BatchInsert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Add rasters to an existing raster collection. Rasters must be
-- successfully processed in order to be added to a raster collection. Up
-- to 50 rasters can be included in a single batchInsert request. Each
-- batchInsert request is atomic.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.rasterCollections.rasters.batchInsert@.
module Network.Google.Resource.MapsEngine.RasterCollections.Rasters.BatchInsert
    (
    -- * REST Resource
      RasterCollectionsRastersBatchInsertResource

    -- * Creating a Request
    , rasterCollectionsRastersBatchInsert
    , RasterCollectionsRastersBatchInsert

    -- * Request Lenses
    , rcrbiPayload
    , rcrbiId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.rasterCollections.rasters.batchInsert@ method which the
-- 'RasterCollectionsRastersBatchInsert' request conforms to.
type RasterCollectionsRastersBatchInsertResource =
     "mapsengine" :>
       "v1" :>
         "rasterCollections" :>
           Capture "id" Text :>
             "rasters" :>
               "batchInsert" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON]
                     RasterCollectionsRastersBatchInsertRequest
                     :>
                     Post '[JSON]
                       RasterCollectionsRastersBatchInsertResponse

-- | Add rasters to an existing raster collection. Rasters must be
-- successfully processed in order to be added to a raster collection. Up
-- to 50 rasters can be included in a single batchInsert request. Each
-- batchInsert request is atomic.
--
-- /See:/ 'rasterCollectionsRastersBatchInsert' smart constructor.
data RasterCollectionsRastersBatchInsert = RasterCollectionsRastersBatchInsert'
    { _rcrbiPayload :: !RasterCollectionsRastersBatchInsertRequest
    , _rcrbiId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsRastersBatchInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcrbiPayload'
--
-- * 'rcrbiId'
rasterCollectionsRastersBatchInsert
    :: RasterCollectionsRastersBatchInsertRequest -- ^ 'rcrbiPayload'
    -> Text -- ^ 'rcrbiId'
    -> RasterCollectionsRastersBatchInsert
rasterCollectionsRastersBatchInsert pRcrbiPayload_ pRcrbiId_ =
    RasterCollectionsRastersBatchInsert'
    { _rcrbiPayload = pRcrbiPayload_
    , _rcrbiId = pRcrbiId_
    }

-- | Multipart request metadata.
rcrbiPayload :: Lens' RasterCollectionsRastersBatchInsert RasterCollectionsRastersBatchInsertRequest
rcrbiPayload
  = lens _rcrbiPayload (\ s a -> s{_rcrbiPayload = a})

-- | The ID of the raster collection to which these rasters belong.
rcrbiId :: Lens' RasterCollectionsRastersBatchInsert Text
rcrbiId = lens _rcrbiId (\ s a -> s{_rcrbiId = a})

instance GoogleRequest
         RasterCollectionsRastersBatchInsert where
        type Rs RasterCollectionsRastersBatchInsert =
             RasterCollectionsRastersBatchInsertResponse
        type Scopes RasterCollectionsRastersBatchInsert =
             '["https://www.googleapis.com/auth/mapsengine"]
        requestClient
          RasterCollectionsRastersBatchInsert'{..}
          = go _rcrbiId (Just AltJSON) _rcrbiPayload
              mapsEngineService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RasterCollectionsRastersBatchInsertResource)
                      mempty
