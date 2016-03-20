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
-- Module      : Network.Google.Resource.MapsEngine.Layers.Permissions.BatchDelete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Remove permission entries from an already existing asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.layers.permissions.batchDelete@.
module Network.Google.Resource.MapsEngine.Layers.Permissions.BatchDelete
    (
    -- * REST Resource
      LayersPermissionsBatchDeleteResource

    -- * Creating a Request
    , layersPermissionsBatchDelete
    , LayersPermissionsBatchDelete

    -- * Request Lenses
    , lpbdPayload
    , lpbdId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.layers.permissions.batchDelete@ method which the
-- 'LayersPermissionsBatchDelete' request conforms to.
type LayersPermissionsBatchDeleteResource =
     "mapsengine" :>
       "v1" :>
         "layers" :>
           Capture "id" Text :>
             "permissions" :>
               "batchDelete" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] PermissionsBatchDeleteRequest :>
                     Post '[JSON] PermissionsBatchDeleteResponse

-- | Remove permission entries from an already existing asset.
--
-- /See:/ 'layersPermissionsBatchDelete' smart constructor.
data LayersPermissionsBatchDelete = LayersPermissionsBatchDelete
    { _lpbdPayload :: !PermissionsBatchDeleteRequest
    , _lpbdId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersPermissionsBatchDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpbdPayload'
--
-- * 'lpbdId'
layersPermissionsBatchDelete
    :: PermissionsBatchDeleteRequest -- ^ 'lpbdPayload'
    -> Text -- ^ 'lpbdId'
    -> LayersPermissionsBatchDelete
layersPermissionsBatchDelete pLpbdPayload_ pLpbdId_ =
    LayersPermissionsBatchDelete
    { _lpbdPayload = pLpbdPayload_
    , _lpbdId = pLpbdId_
    }

-- | Multipart request metadata.
lpbdPayload :: Lens' LayersPermissionsBatchDelete PermissionsBatchDeleteRequest
lpbdPayload
  = lens _lpbdPayload (\ s a -> s{_lpbdPayload = a})

-- | The ID of the asset from which permissions will be removed.
lpbdId :: Lens' LayersPermissionsBatchDelete Text
lpbdId = lens _lpbdId (\ s a -> s{_lpbdId = a})

instance GoogleRequest LayersPermissionsBatchDelete
         where
        type Rs LayersPermissionsBatchDelete =
             PermissionsBatchDeleteResponse
        requestClient LayersPermissionsBatchDelete{..}
          = go _lpbdId (Just AltJSON) _lpbdPayload
              mapsEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy LayersPermissionsBatchDeleteResource)
                      mempty
