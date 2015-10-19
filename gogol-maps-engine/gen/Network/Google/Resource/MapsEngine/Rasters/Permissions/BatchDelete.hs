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
-- Module      : Network.Google.Resource.MapsEngine.Rasters.Permissions.BatchDelete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Remove permission entries from an already existing asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.rasters.permissions.batchDelete@.
module Network.Google.Resource.MapsEngine.Rasters.Permissions.BatchDelete
    (
    -- * REST Resource
      RastersPermissionsBatchDeleteResource

    -- * Creating a Request
    , rastersPermissionsBatchDelete'
    , RastersPermissionsBatchDelete'

    -- * Request Lenses
    , rpbdPayload
    , rpbdId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.rasters.permissions.batchDelete@ method which the
-- 'RastersPermissionsBatchDelete'' request conforms to.
type RastersPermissionsBatchDeleteResource =
     "rasters" :>
       Capture "id" Text :>
         "permissions" :>
           "batchDelete" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] PermissionsBatchDeleteRequest :>
                 Post '[JSON] PermissionsBatchDeleteResponse

-- | Remove permission entries from an already existing asset.
--
-- /See:/ 'rastersPermissionsBatchDelete'' smart constructor.
data RastersPermissionsBatchDelete' = RastersPermissionsBatchDelete'
    { _rpbdPayload :: !PermissionsBatchDeleteRequest
    , _rpbdId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RastersPermissionsBatchDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpbdPayload'
--
-- * 'rpbdId'
rastersPermissionsBatchDelete'
    :: PermissionsBatchDeleteRequest -- ^ 'rpbdPayload'
    -> Text -- ^ 'rpbdId'
    -> RastersPermissionsBatchDelete'
rastersPermissionsBatchDelete' pRpbdPayload_ pRpbdId_ =
    RastersPermissionsBatchDelete'
    { _rpbdPayload = pRpbdPayload_
    , _rpbdId = pRpbdId_
    }

-- | Multipart request metadata.
rpbdPayload :: Lens' RastersPermissionsBatchDelete' PermissionsBatchDeleteRequest
rpbdPayload
  = lens _rpbdPayload (\ s a -> s{_rpbdPayload = a})

-- | The ID of the asset from which permissions will be removed.
rpbdId :: Lens' RastersPermissionsBatchDelete' Text
rpbdId = lens _rpbdId (\ s a -> s{_rpbdId = a})

instance GoogleRequest RastersPermissionsBatchDelete'
         where
        type Rs RastersPermissionsBatchDelete' =
             PermissionsBatchDeleteResponse
        requestClient RastersPermissionsBatchDelete'{..}
          = go _rpbdId (Just AltJSON) _rpbdPayload
              mapsEngineService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RastersPermissionsBatchDeleteResource)
                      mempty
