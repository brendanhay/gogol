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
-- Module      : Network.Google.Resource.MapsEngine.Rasters.Permissions.BatchUpdate
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
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.rasters.permissions.batchUpdate@.
module Network.Google.Resource.MapsEngine.Rasters.Permissions.BatchUpdate
    (
    -- * REST Resource
      RastersPermissionsBatchUpdateResource

    -- * Creating a Request
    , rastersPermissionsBatchUpdate
    , RastersPermissionsBatchUpdate

    -- * Request Lenses
    , rpbuPayload
    , rpbuId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.rasters.permissions.batchUpdate@ method which the
-- 'RastersPermissionsBatchUpdate' request conforms to.
type RastersPermissionsBatchUpdateResource =
     "mapsengine" :>
       "v1" :>
         "rasters" :>
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
-- /See:/ 'rastersPermissionsBatchUpdate' smart constructor.
data RastersPermissionsBatchUpdate = RastersPermissionsBatchUpdate
    { _rpbuPayload :: !PermissionsBatchUpdateRequest
    , _rpbuId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RastersPermissionsBatchUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpbuPayload'
--
-- * 'rpbuId'
rastersPermissionsBatchUpdate
    :: PermissionsBatchUpdateRequest -- ^ 'rpbuPayload'
    -> Text -- ^ 'rpbuId'
    -> RastersPermissionsBatchUpdate
rastersPermissionsBatchUpdate pRpbuPayload_ pRpbuId_ =
    RastersPermissionsBatchUpdate
    { _rpbuPayload = pRpbuPayload_
    , _rpbuId = pRpbuId_
    }

-- | Multipart request metadata.
rpbuPayload :: Lens' RastersPermissionsBatchUpdate PermissionsBatchUpdateRequest
rpbuPayload
  = lens _rpbuPayload (\ s a -> s{_rpbuPayload = a})

-- | The ID of the asset to which permissions will be added.
rpbuId :: Lens' RastersPermissionsBatchUpdate Text
rpbuId = lens _rpbuId (\ s a -> s{_rpbuId = a})

instance GoogleRequest RastersPermissionsBatchUpdate
         where
        type Rs RastersPermissionsBatchUpdate =
             PermissionsBatchUpdateResponse
        requestClient RastersPermissionsBatchUpdate{..}
          = go _rpbuId (Just AltJSON) _rpbuPayload
              mapsEngineService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RastersPermissionsBatchUpdateResource)
                      mempty
