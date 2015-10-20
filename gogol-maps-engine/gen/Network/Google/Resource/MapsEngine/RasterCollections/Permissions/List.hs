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
-- Module      : Network.Google.Resource.MapsEngine.RasterCollections.Permissions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return all of the permissions for the specified asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.rasterCollections.permissions.list@.
module Network.Google.Resource.MapsEngine.RasterCollections.Permissions.List
    (
    -- * REST Resource
      RasterCollectionsPermissionsListResource

    -- * Creating a Request
    , rasterCollectionsPermissionsList
    , RasterCollectionsPermissionsList

    -- * Request Lenses
    , rcplId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.rasterCollections.permissions.list@ method which the
-- 'RasterCollectionsPermissionsList' request conforms to.
type RasterCollectionsPermissionsListResource =
     "rasterCollections" :>
       Capture "id" Text :>
         "permissions" :>
           QueryParam "alt" AltJSON :>
             Get '[JSON] PermissionsListResponse

-- | Return all of the permissions for the specified asset.
--
-- /See:/ 'rasterCollectionsPermissionsList' smart constructor.
newtype RasterCollectionsPermissionsList = RasterCollectionsPermissionsList
    { _rcplId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsPermissionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcplId'
rasterCollectionsPermissionsList
    :: Text -- ^ 'rcplId'
    -> RasterCollectionsPermissionsList
rasterCollectionsPermissionsList pRcplId_ =
    RasterCollectionsPermissionsList
    { _rcplId = pRcplId_
    }

-- | The ID of the asset whose permissions will be listed.
rcplId :: Lens' RasterCollectionsPermissionsList Text
rcplId = lens _rcplId (\ s a -> s{_rcplId = a})

instance GoogleRequest
         RasterCollectionsPermissionsList where
        type Rs RasterCollectionsPermissionsList =
             PermissionsListResponse
        requestClient RasterCollectionsPermissionsList{..}
          = go _rcplId (Just AltJSON) mapsEngineService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RasterCollectionsPermissionsListResource)
                      mempty
