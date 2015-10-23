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
-- Module      : Network.Google.Resource.MapsEngine.Assets.Permissions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return all of the permissions for the specified asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.assets.permissions.list@.
module Network.Google.Resource.MapsEngine.Assets.Permissions.List
    (
    -- * REST Resource
      AssetsPermissionsListResource

    -- * Creating a Request
    , assetsPermissionsList
    , AssetsPermissionsList

    -- * Request Lenses
    , assId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.assets.permissions.list@ method which the
-- 'AssetsPermissionsList' request conforms to.
type AssetsPermissionsListResource =
     "mapsengine" :>
       "v1" :>
         "assets" :>
           Capture "id" Text :>
             "permissions" :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] PermissionsListResponse

-- | Return all of the permissions for the specified asset.
--
-- /See:/ 'assetsPermissionsList' smart constructor.
newtype AssetsPermissionsList = AssetsPermissionsList
    { _assId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AssetsPermissionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'assId'
assetsPermissionsList
    :: Text -- ^ 'assId'
    -> AssetsPermissionsList
assetsPermissionsList pAssId_ =
    AssetsPermissionsList
    { _assId = pAssId_
    }

-- | The ID of the asset whose permissions will be listed.
assId :: Lens' AssetsPermissionsList Text
assId = lens _assId (\ s a -> s{_assId = a})

instance GoogleRequest AssetsPermissionsList where
        type Rs AssetsPermissionsList =
             PermissionsListResponse
        requestClient AssetsPermissionsList{..}
          = go _assId (Just AltJSON) mapsEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy AssetsPermissionsListResource)
                      mempty
