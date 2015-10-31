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
-- Module      : Network.Google.Resource.MapsEngine.Layers.Permissions.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return all of the permissions for the specified asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.layers.permissions.list@.
module Network.Google.Resource.MapsEngine.Layers.Permissions.List
    (
    -- * REST Resource
      LayersPermissionsListResource

    -- * Creating a Request
    , layersPermissionsList
    , LayersPermissionsList

    -- * Request Lenses
    , lplId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.layers.permissions.list@ method which the
-- 'LayersPermissionsList' request conforms to.
type LayersPermissionsListResource =
     "mapsengine" :>
       "v1" :>
         "layers" :>
           Capture "id" Text :>
             "permissions" :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] PermissionsListResponse

-- | Return all of the permissions for the specified asset.
--
-- /See:/ 'layersPermissionsList' smart constructor.
newtype LayersPermissionsList = LayersPermissionsList
    { _lplId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersPermissionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lplId'
layersPermissionsList
    :: Text -- ^ 'lplId'
    -> LayersPermissionsList
layersPermissionsList pLplId_ =
    LayersPermissionsList
    { _lplId = pLplId_
    }

-- | The ID of the asset whose permissions will be listed.
lplId :: Lens' LayersPermissionsList Text
lplId = lens _lplId (\ s a -> s{_lplId = a})

instance GoogleRequest LayersPermissionsList where
        type Rs LayersPermissionsList =
             PermissionsListResponse
        type Scopes LayersPermissionsList =
             '["https://www.googleapis.com/auth/mapsengine",
               "https://www.googleapis.com/auth/mapsengine.readonly"]
        requestClient LayersPermissionsList{..}
          = go _lplId (Just AltJSON) mapsEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy LayersPermissionsListResource)
                      mempty
