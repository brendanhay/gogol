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
-- Module      : Network.Google.Resource.MapsEngine.Layers.Permissions.BatchUpdate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Add or update permission entries to an already existing asset. An asset
-- can hold up to 20 different permission entries. Each batchInsert request
-- is atomic.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineLayersPermissionsBatchUpdate@.
module Network.Google.Resource.MapsEngine.Layers.Permissions.BatchUpdate
    (
    -- * REST Resource
      LayersPermissionsBatchUpdateResource

    -- * Creating a Request
    , layersPermissionsBatchUpdate'
    , LayersPermissionsBatchUpdate'

    -- * Request Lenses
    , lpbuPayload
    , lpbuId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineLayersPermissionsBatchUpdate@ method which the
-- 'LayersPermissionsBatchUpdate'' request conforms to.
type LayersPermissionsBatchUpdateResource =
     "layers" :>
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
-- /See:/ 'layersPermissionsBatchUpdate'' smart constructor.
data LayersPermissionsBatchUpdate' = LayersPermissionsBatchUpdate'
    { _lpbuPayload :: !PermissionsBatchUpdateRequest
    , _lpbuId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersPermissionsBatchUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpbuPayload'
--
-- * 'lpbuId'
layersPermissionsBatchUpdate'
    :: PermissionsBatchUpdateRequest -- ^ 'payload'
    -> Text -- ^ 'id'
    -> LayersPermissionsBatchUpdate'
layersPermissionsBatchUpdate' pLpbuPayload_ pLpbuId_ =
    LayersPermissionsBatchUpdate'
    { _lpbuPayload = pLpbuPayload_
    , _lpbuId = pLpbuId_
    }

-- | Multipart request metadata.
lpbuPayload :: Lens' LayersPermissionsBatchUpdate' PermissionsBatchUpdateRequest
lpbuPayload
  = lens _lpbuPayload (\ s a -> s{_lpbuPayload = a})

-- | The ID of the asset to which permissions will be added.
lpbuId :: Lens' LayersPermissionsBatchUpdate' Text
lpbuId = lens _lpbuId (\ s a -> s{_lpbuId = a})

instance GoogleRequest LayersPermissionsBatchUpdate'
         where
        type Rs LayersPermissionsBatchUpdate' =
             PermissionsBatchUpdateResponse
        requestClient LayersPermissionsBatchUpdate'{..}
          = go _lpbuId (Just AltJSON) _lpbuPayload mapsEngine
          where go
                  = buildClient
                      (Proxy :: Proxy LayersPermissionsBatchUpdateResource)
                      mempty
