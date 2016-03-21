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
-- Module      : Network.Google.Resource.MapsEngine.RasterCollections.Rasters.BatchDelete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Remove rasters from an existing raster collection. Up to 50 rasters can
-- be included in a single batchDelete request. Each batchDelete request is
-- atomic.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.rasterCollections.rasters.batchDelete@.
module Network.Google.Resource.MapsEngine.RasterCollections.Rasters.BatchDelete
    (
    -- * REST Resource
      RasterCollectionsRastersBatchDeleteResource

    -- * Creating a Request
    , rasterCollectionsRastersBatchDelete
    , RasterCollectionsRastersBatchDelete

    -- * Request Lenses
    , rcrbdPayload
    , rcrbdId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.rasterCollections.rasters.batchDelete@ method which the
-- 'RasterCollectionsRastersBatchDelete' request conforms to.
type RasterCollectionsRastersBatchDeleteResource =
     "mapsengine" :>
       "v1" :>
         "rasterCollections" :>
           Capture "id" Text :>
             "rasters" :>
               "batchDelete" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON]
                     RasterCollectionsRasterBatchDeleteRequest
                     :>
                     Post '[JSON]
                       RasterCollectionsRastersBatchDeleteResponse

-- | Remove rasters from an existing raster collection. Up to 50 rasters can
-- be included in a single batchDelete request. Each batchDelete request is
-- atomic.
--
-- /See:/ 'rasterCollectionsRastersBatchDelete' smart constructor.
data RasterCollectionsRastersBatchDelete = RasterCollectionsRastersBatchDelete'
    { _rcrbdPayload :: !RasterCollectionsRasterBatchDeleteRequest
    , _rcrbdId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsRastersBatchDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcrbdPayload'
--
-- * 'rcrbdId'
rasterCollectionsRastersBatchDelete
    :: RasterCollectionsRasterBatchDeleteRequest -- ^ 'rcrbdPayload'
    -> Text -- ^ 'rcrbdId'
    -> RasterCollectionsRastersBatchDelete
rasterCollectionsRastersBatchDelete pRcrbdPayload_ pRcrbdId_ =
    RasterCollectionsRastersBatchDelete'
    { _rcrbdPayload = pRcrbdPayload_
    , _rcrbdId = pRcrbdId_
    }

-- | Multipart request metadata.
rcrbdPayload :: Lens' RasterCollectionsRastersBatchDelete RasterCollectionsRasterBatchDeleteRequest
rcrbdPayload
  = lens _rcrbdPayload (\ s a -> s{_rcrbdPayload = a})

-- | The ID of the raster collection to which these rasters belong.
rcrbdId :: Lens' RasterCollectionsRastersBatchDelete Text
rcrbdId = lens _rcrbdId (\ s a -> s{_rcrbdId = a})

instance GoogleRequest
         RasterCollectionsRastersBatchDelete where
        type Rs RasterCollectionsRastersBatchDelete =
             RasterCollectionsRastersBatchDeleteResponse
        type Scopes RasterCollectionsRastersBatchDelete =
             '["https://www.googleapis.com/auth/mapsengine"]
        requestClient
          RasterCollectionsRastersBatchDelete'{..}
          = go _rcrbdId (Just AltJSON) _rcrbdPayload
              mapsEngineService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RasterCollectionsRastersBatchDeleteResource)
                      mempty
