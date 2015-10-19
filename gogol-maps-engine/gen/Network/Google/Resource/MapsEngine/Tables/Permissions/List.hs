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
-- Module      : Network.Google.Resource.MapsEngine.Tables.Permissions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return all of the permissions for the specified asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.tables.permissions.list@.
module Network.Google.Resource.MapsEngine.Tables.Permissions.List
    (
    -- * REST Resource
      TablesPermissionsListResource

    -- * Creating a Request
    , tablesPermissionsList'
    , TablesPermissionsList'

    -- * Request Lenses
    , tplId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.tables.permissions.list@ method which the
-- 'TablesPermissionsList'' request conforms to.
type TablesPermissionsListResource =
     "tables" :>
       Capture "id" Text :>
         "permissions" :>
           QueryParam "alt" AltJSON :>
             Get '[JSON] PermissionsListResponse

-- | Return all of the permissions for the specified asset.
--
-- /See:/ 'tablesPermissionsList'' smart constructor.
newtype TablesPermissionsList' = TablesPermissionsList'
    { _tplId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesPermissionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tplId'
tablesPermissionsList'
    :: Text -- ^ 'tplId'
    -> TablesPermissionsList'
tablesPermissionsList' pTplId_ =
    TablesPermissionsList'
    { _tplId = pTplId_
    }

-- | The ID of the asset whose permissions will be listed.
tplId :: Lens' TablesPermissionsList' Text
tplId = lens _tplId (\ s a -> s{_tplId = a})

instance GoogleRequest TablesPermissionsList' where
        type Rs TablesPermissionsList' =
             PermissionsListResponse
        requestClient TablesPermissionsList'{..}
          = go _tplId (Just AltJSON) mapsEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy TablesPermissionsListResource)
                      mempty
