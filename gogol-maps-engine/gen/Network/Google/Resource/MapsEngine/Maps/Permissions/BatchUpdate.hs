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
-- Module      : Network.Google.Resource.MapsEngine.Maps.Permissions.BatchUpdate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Add or update permission entries to an already existing asset. An asset
-- can hold up to 20 different permission entries. Each batchInsert request
-- is atomic.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.maps.permissions.batchUpdate@.
module Network.Google.Resource.MapsEngine.Maps.Permissions.BatchUpdate
    (
    -- * REST Resource
      MapsPermissionsBatchUpdateResource

    -- * Creating a Request
    , mapsPermissionsBatchUpdate
    , MapsPermissionsBatchUpdate

    -- * Request Lenses
    , mpbuPayload
    , mpbuId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.maps.permissions.batchUpdate@ method which the
-- 'MapsPermissionsBatchUpdate' request conforms to.
type MapsPermissionsBatchUpdateResource =
     "maps" :>
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
-- /See:/ 'mapsPermissionsBatchUpdate' smart constructor.
data MapsPermissionsBatchUpdate = MapsPermissionsBatchUpdate
    { _mpbuPayload :: !PermissionsBatchUpdateRequest
    , _mpbuId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapsPermissionsBatchUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpbuPayload'
--
-- * 'mpbuId'
mapsPermissionsBatchUpdate
    :: PermissionsBatchUpdateRequest -- ^ 'mpbuPayload'
    -> Text -- ^ 'mpbuId'
    -> MapsPermissionsBatchUpdate
mapsPermissionsBatchUpdate pMpbuPayload_ pMpbuId_ =
    MapsPermissionsBatchUpdate
    { _mpbuPayload = pMpbuPayload_
    , _mpbuId = pMpbuId_
    }

-- | Multipart request metadata.
mpbuPayload :: Lens' MapsPermissionsBatchUpdate PermissionsBatchUpdateRequest
mpbuPayload
  = lens _mpbuPayload (\ s a -> s{_mpbuPayload = a})

-- | The ID of the asset to which permissions will be added.
mpbuId :: Lens' MapsPermissionsBatchUpdate Text
mpbuId = lens _mpbuId (\ s a -> s{_mpbuId = a})

instance GoogleRequest MapsPermissionsBatchUpdate
         where
        type Rs MapsPermissionsBatchUpdate =
             PermissionsBatchUpdateResponse
        requestClient MapsPermissionsBatchUpdate{..}
          = go _mpbuId (Just AltJSON) _mpbuPayload
              mapsEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy MapsPermissionsBatchUpdateResource)
                      mempty
