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
-- Module      : Network.Google.Resource.MapsEngine.Rasters.Permissions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return all of the permissions for the specified asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.rasters.permissions.list@.
module Network.Google.Resource.MapsEngine.Rasters.Permissions.List
    (
    -- * REST Resource
      RastersPermissionsListResource

    -- * Creating a Request
    , rastersPermissionsList
    , RastersPermissionsList

    -- * Request Lenses
    , rplId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.rasters.permissions.list@ method which the
-- 'RastersPermissionsList' request conforms to.
type RastersPermissionsListResource =
     "rasters" :>
       Capture "id" Text :>
         "permissions" :>
           QueryParam "alt" AltJSON :>
             Get '[JSON] PermissionsListResponse

-- | Return all of the permissions for the specified asset.
--
-- /See:/ 'rastersPermissionsList' smart constructor.
newtype RastersPermissionsList = RastersPermissionsList
    { _rplId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RastersPermissionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rplId'
rastersPermissionsList
    :: Text -- ^ 'rplId'
    -> RastersPermissionsList
rastersPermissionsList pRplId_ =
    RastersPermissionsList
    { _rplId = pRplId_
    }

-- | The ID of the asset whose permissions will be listed.
rplId :: Lens' RastersPermissionsList Text
rplId = lens _rplId (\ s a -> s{_rplId = a})

instance GoogleRequest RastersPermissionsList where
        type Rs RastersPermissionsList =
             PermissionsListResponse
        requestClient RastersPermissionsList{..}
          = go _rplId (Just AltJSON) mapsEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy RastersPermissionsListResource)
                      mempty
