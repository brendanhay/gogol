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
-- Module      : Network.Google.Resource.MapsEngine.Tables.Permissions.BatchDelete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Remove permission entries from an already existing asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.tables.permissions.batchDelete@.
module Network.Google.Resource.MapsEngine.Tables.Permissions.BatchDelete
    (
    -- * REST Resource
      TablesPermissionsBatchDeleteResource

    -- * Creating a Request
    , tablesPermissionsBatchDelete
    , TablesPermissionsBatchDelete

    -- * Request Lenses
    , tpbdPayload
    , tpbdId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.tables.permissions.batchDelete@ method which the
-- 'TablesPermissionsBatchDelete' request conforms to.
type TablesPermissionsBatchDeleteResource =
     "mapsengine" :>
       "v1" :>
         "tables" :>
           Capture "id" Text :>
             "permissions" :>
               "batchDelete" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] PermissionsBatchDeleteRequest :>
                     Post '[JSON] PermissionsBatchDeleteResponse

-- | Remove permission entries from an already existing asset.
--
-- /See:/ 'tablesPermissionsBatchDelete' smart constructor.
data TablesPermissionsBatchDelete = TablesPermissionsBatchDelete
    { _tpbdPayload :: !PermissionsBatchDeleteRequest
    , _tpbdId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesPermissionsBatchDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpbdPayload'
--
-- * 'tpbdId'
tablesPermissionsBatchDelete
    :: PermissionsBatchDeleteRequest -- ^ 'tpbdPayload'
    -> Text -- ^ 'tpbdId'
    -> TablesPermissionsBatchDelete
tablesPermissionsBatchDelete pTpbdPayload_ pTpbdId_ =
    TablesPermissionsBatchDelete
    { _tpbdPayload = pTpbdPayload_
    , _tpbdId = pTpbdId_
    }

-- | Multipart request metadata.
tpbdPayload :: Lens' TablesPermissionsBatchDelete PermissionsBatchDeleteRequest
tpbdPayload
  = lens _tpbdPayload (\ s a -> s{_tpbdPayload = a})

-- | The ID of the asset from which permissions will be removed.
tpbdId :: Lens' TablesPermissionsBatchDelete Text
tpbdId = lens _tpbdId (\ s a -> s{_tpbdId = a})

instance GoogleRequest TablesPermissionsBatchDelete
         where
        type Rs TablesPermissionsBatchDelete =
             PermissionsBatchDeleteResponse
        type Scopes TablesPermissionsBatchDelete =
             '["https://www.googleapis.com/auth/mapsengine"]
        requestClient TablesPermissionsBatchDelete{..}
          = go _tpbdId (Just AltJSON) _tpbdPayload
              mapsEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy TablesPermissionsBatchDeleteResource)
                      mempty
