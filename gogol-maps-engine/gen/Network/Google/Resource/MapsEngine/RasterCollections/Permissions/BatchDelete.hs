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
-- Module      : Network.Google.Resource.MapsEngine.RasterCollections.Permissions.BatchDelete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Remove permission entries from an already existing asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.rasterCollections.permissions.batchDelete@.
module Network.Google.Resource.MapsEngine.RasterCollections.Permissions.BatchDelete
    (
    -- * REST Resource
      RasterCollectionsPermissionsBatchDeleteResource

    -- * Creating a Request
    , rasterCollectionsPermissionsBatchDelete
    , RasterCollectionsPermissionsBatchDelete

    -- * Request Lenses
    , rcpbdPayload
    , rcpbdId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.rasterCollections.permissions.batchDelete@ method which the
-- 'RasterCollectionsPermissionsBatchDelete' request conforms to.
type RasterCollectionsPermissionsBatchDeleteResource
     =
     "mapsengine" :>
       "v1" :>
         "rasterCollections" :>
           Capture "id" Text :>
             "permissions" :>
               "batchDelete" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] PermissionsBatchDeleteRequest :>
                     Post '[JSON] PermissionsBatchDeleteResponse

-- | Remove permission entries from an already existing asset.
--
-- /See:/ 'rasterCollectionsPermissionsBatchDelete' smart constructor.
data RasterCollectionsPermissionsBatchDelete = RasterCollectionsPermissionsBatchDelete
    { _rcpbdPayload :: !PermissionsBatchDeleteRequest
    , _rcpbdId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsPermissionsBatchDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcpbdPayload'
--
-- * 'rcpbdId'
rasterCollectionsPermissionsBatchDelete
    :: PermissionsBatchDeleteRequest -- ^ 'rcpbdPayload'
    -> Text -- ^ 'rcpbdId'
    -> RasterCollectionsPermissionsBatchDelete
rasterCollectionsPermissionsBatchDelete pRcpbdPayload_ pRcpbdId_ =
    RasterCollectionsPermissionsBatchDelete
    { _rcpbdPayload = pRcpbdPayload_
    , _rcpbdId = pRcpbdId_
    }

-- | Multipart request metadata.
rcpbdPayload :: Lens' RasterCollectionsPermissionsBatchDelete PermissionsBatchDeleteRequest
rcpbdPayload
  = lens _rcpbdPayload (\ s a -> s{_rcpbdPayload = a})

-- | The ID of the asset from which permissions will be removed.
rcpbdId :: Lens' RasterCollectionsPermissionsBatchDelete Text
rcpbdId = lens _rcpbdId (\ s a -> s{_rcpbdId = a})

instance GoogleRequest
         RasterCollectionsPermissionsBatchDelete where
        type Rs RasterCollectionsPermissionsBatchDelete =
             PermissionsBatchDeleteResponse
        type Scopes RasterCollectionsPermissionsBatchDelete =
             '["https://www.googleapis.com/auth/mapsengine"]
        requestClient
          RasterCollectionsPermissionsBatchDelete{..}
          = go _rcpbdId (Just AltJSON) _rcpbdPayload
              mapsEngineService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           RasterCollectionsPermissionsBatchDeleteResource)
                      mempty
