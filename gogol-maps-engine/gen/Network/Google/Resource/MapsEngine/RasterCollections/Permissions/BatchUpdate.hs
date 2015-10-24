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
-- Module      : Network.Google.Resource.MapsEngine.RasterCollections.Permissions.BatchUpdate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Add or update permission entries to an already existing asset. An asset
-- can hold up to 20 different permission entries. Each batchInsert request
-- is atomic.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.rasterCollections.permissions.batchUpdate@.
module Network.Google.Resource.MapsEngine.RasterCollections.Permissions.BatchUpdate
    (
    -- * REST Resource
      RasterCollectionsPermissionsBatchUpdateResource

    -- * Creating a Request
    , rasterCollectionsPermissionsBatchUpdate
    , RasterCollectionsPermissionsBatchUpdate

    -- * Request Lenses
    , rcpbuPayload
    , rcpbuId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.rasterCollections.permissions.batchUpdate@ method which the
-- 'RasterCollectionsPermissionsBatchUpdate' request conforms to.
type RasterCollectionsPermissionsBatchUpdateResource
     =
     "mapsengine" :>
       "v1" :>
         "rasterCollections" :>
           Capture "id" Text :>
             "permissions" :>
               "batchUpdate" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] PermissionsBatchUpdateRequest :>
                     Post '[JSON] PermissionsBatchUpdateResponse

-- | Add or update permission entries to an already existing asset. An asset
-- can hold up to 20 different permission entries. Each batchInsert request
-- is atomic.
--
-- /See:/ 'rasterCollectionsPermissionsBatchUpdate' smart constructor.
data RasterCollectionsPermissionsBatchUpdate = RasterCollectionsPermissionsBatchUpdate
    { _rcpbuPayload :: !PermissionsBatchUpdateRequest
    , _rcpbuId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsPermissionsBatchUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcpbuPayload'
--
-- * 'rcpbuId'
rasterCollectionsPermissionsBatchUpdate
    :: PermissionsBatchUpdateRequest -- ^ 'rcpbuPayload'
    -> Text -- ^ 'rcpbuId'
    -> RasterCollectionsPermissionsBatchUpdate
rasterCollectionsPermissionsBatchUpdate pRcpbuPayload_ pRcpbuId_ =
    RasterCollectionsPermissionsBatchUpdate
    { _rcpbuPayload = pRcpbuPayload_
    , _rcpbuId = pRcpbuId_
    }

-- | Multipart request metadata.
rcpbuPayload :: Lens' RasterCollectionsPermissionsBatchUpdate PermissionsBatchUpdateRequest
rcpbuPayload
  = lens _rcpbuPayload (\ s a -> s{_rcpbuPayload = a})

-- | The ID of the asset to which permissions will be added.
rcpbuId :: Lens' RasterCollectionsPermissionsBatchUpdate Text
rcpbuId = lens _rcpbuId (\ s a -> s{_rcpbuId = a})

instance GoogleRequest
         RasterCollectionsPermissionsBatchUpdate where
        type Rs RasterCollectionsPermissionsBatchUpdate =
             PermissionsBatchUpdateResponse
        requestClient
          RasterCollectionsPermissionsBatchUpdate{..}
          = go _rcpbuId (Just AltJSON) _rcpbuPayload
              mapsEngineService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           RasterCollectionsPermissionsBatchUpdateResource)
                      mempty
