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
-- Module      : Network.Google.Resource.MapsEngine.Maps.Permissions.BatchDelete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Remove permission entries from an already existing asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.maps.permissions.batchDelete@.
module Network.Google.Resource.MapsEngine.Maps.Permissions.BatchDelete
    (
    -- * REST Resource
      MapsPermissionsBatchDeleteResource

    -- * Creating a Request
    , mapsPermissionsBatchDelete
    , MapsPermissionsBatchDelete

    -- * Request Lenses
    , mpbdPayload
    , mpbdId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.maps.permissions.batchDelete@ method which the
-- 'MapsPermissionsBatchDelete' request conforms to.
type MapsPermissionsBatchDeleteResource =
     "mapsengine" :>
       "v1" :>
         "maps" :>
           Capture "id" Text :>
             "permissions" :>
               "batchDelete" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] PermissionsBatchDeleteRequest :>
                     Post '[JSON] PermissionsBatchDeleteResponse

-- | Remove permission entries from an already existing asset.
--
-- /See:/ 'mapsPermissionsBatchDelete' smart constructor.
data MapsPermissionsBatchDelete = MapsPermissionsBatchDelete'
    { _mpbdPayload :: !PermissionsBatchDeleteRequest
    , _mpbdId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapsPermissionsBatchDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpbdPayload'
--
-- * 'mpbdId'
mapsPermissionsBatchDelete
    :: PermissionsBatchDeleteRequest -- ^ 'mpbdPayload'
    -> Text -- ^ 'mpbdId'
    -> MapsPermissionsBatchDelete
mapsPermissionsBatchDelete pMpbdPayload_ pMpbdId_ =
    MapsPermissionsBatchDelete'
    { _mpbdPayload = pMpbdPayload_
    , _mpbdId = pMpbdId_
    }

-- | Multipart request metadata.
mpbdPayload :: Lens' MapsPermissionsBatchDelete PermissionsBatchDeleteRequest
mpbdPayload
  = lens _mpbdPayload (\ s a -> s{_mpbdPayload = a})

-- | The ID of the asset from which permissions will be removed.
mpbdId :: Lens' MapsPermissionsBatchDelete Text
mpbdId = lens _mpbdId (\ s a -> s{_mpbdId = a})

instance GoogleRequest MapsPermissionsBatchDelete
         where
        type Rs MapsPermissionsBatchDelete =
             PermissionsBatchDeleteResponse
        type Scopes MapsPermissionsBatchDelete =
             '["https://www.googleapis.com/auth/mapsengine"]
        requestClient MapsPermissionsBatchDelete'{..}
          = go _mpbdId (Just AltJSON) _mpbdPayload
              mapsEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy MapsPermissionsBatchDeleteResource)
                      mempty
