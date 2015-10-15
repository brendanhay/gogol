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
-- Module      : Network.Google.Resource.MapsEngine.Tables.Permissions.BatchUpdate
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
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineTablesPermissionsBatchUpdate@.
module Network.Google.Resource.MapsEngine.Tables.Permissions.BatchUpdate
    (
    -- * REST Resource
      TablesPermissionsBatchUpdateResource

    -- * Creating a Request
    , tablesPermissionsBatchUpdate'
    , TablesPermissionsBatchUpdate'

    -- * Request Lenses
    , tpbuPayload
    , tpbuId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineTablesPermissionsBatchUpdate@ method which the
-- 'TablesPermissionsBatchUpdate'' request conforms to.
type TablesPermissionsBatchUpdateResource =
     "tables" :>
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
-- /See:/ 'tablesPermissionsBatchUpdate'' smart constructor.
data TablesPermissionsBatchUpdate' = TablesPermissionsBatchUpdate'
    { _tpbuPayload :: !PermissionsBatchUpdateRequest
    , _tpbuId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesPermissionsBatchUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpbuPayload'
--
-- * 'tpbuId'
tablesPermissionsBatchUpdate'
    :: PermissionsBatchUpdateRequest -- ^ 'payload'
    -> Text -- ^ 'id'
    -> TablesPermissionsBatchUpdate'
tablesPermissionsBatchUpdate' pTpbuPayload_ pTpbuId_ =
    TablesPermissionsBatchUpdate'
    { _tpbuPayload = pTpbuPayload_
    , _tpbuId = pTpbuId_
    }

-- | Multipart request metadata.
tpbuPayload :: Lens' TablesPermissionsBatchUpdate' PermissionsBatchUpdateRequest
tpbuPayload
  = lens _tpbuPayload (\ s a -> s{_tpbuPayload = a})

-- | The ID of the asset to which permissions will be added.
tpbuId :: Lens' TablesPermissionsBatchUpdate' Text
tpbuId = lens _tpbuId (\ s a -> s{_tpbuId = a})

instance GoogleRequest TablesPermissionsBatchUpdate'
         where
        type Rs TablesPermissionsBatchUpdate' =
             PermissionsBatchUpdateResponse
        requestClient TablesPermissionsBatchUpdate'{..}
          = go _tpbuId (Just AltJSON) _tpbuPayload mapsEngine
          where go
                  = buildClient
                      (Proxy :: Proxy TablesPermissionsBatchUpdateResource)
                      mempty
