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
-- Module      : Network.Google.Resource.MapsEngine.Maps.Permissions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return all of the permissions for the specified asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.maps.permissions.list@.
module Network.Google.Resource.MapsEngine.Maps.Permissions.List
    (
    -- * REST Resource
      MapsPermissionsListResource

    -- * Creating a Request
    , mapsPermissionsList'
    , MapsPermissionsList'

    -- * Request Lenses
    , mplId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.maps.permissions.list@ method which the
-- 'MapsPermissionsList'' request conforms to.
type MapsPermissionsListResource =
     "maps" :>
       Capture "id" Text :>
         "permissions" :>
           QueryParam "alt" AltJSON :>
             Get '[JSON] PermissionsListResponse

-- | Return all of the permissions for the specified asset.
--
-- /See:/ 'mapsPermissionsList'' smart constructor.
newtype MapsPermissionsList' = MapsPermissionsList'
    { _mplId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapsPermissionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mplId'
mapsPermissionsList'
    :: Text -- ^ 'mplId'
    -> MapsPermissionsList'
mapsPermissionsList' pMplId_ =
    MapsPermissionsList'
    { _mplId = pMplId_
    }

-- | The ID of the asset whose permissions will be listed.
mplId :: Lens' MapsPermissionsList' Text
mplId = lens _mplId (\ s a -> s{_mplId = a})

instance GoogleRequest MapsPermissionsList' where
        type Rs MapsPermissionsList' =
             PermissionsListResponse
        requestClient MapsPermissionsList'{..}
          = go _mplId (Just AltJSON) mapsEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy MapsPermissionsListResource)
                      mempty
