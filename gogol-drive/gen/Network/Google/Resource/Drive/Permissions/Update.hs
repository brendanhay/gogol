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
-- Module      : Network.Google.Resource.Drive.Permissions.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a permission.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DrivePermissionsUpdate@.
module Network.Google.Resource.Drive.Permissions.Update
    (
    -- * REST Resource
      PermissionsUpdateResource

    -- * Creating a Request
    , permissionsUpdate'
    , PermissionsUpdate'

    -- * Request Lenses
    , puuPayload
    , puuTransferOwnership
    , puuFileId
    , puuPermissionId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DrivePermissionsUpdate@ method which the
-- 'PermissionsUpdate'' request conforms to.
type PermissionsUpdateResource =
     "files" :>
       Capture "fileId" Text :>
         "permissions" :>
           Capture "permissionId" Text :>
             QueryParam "transferOwnership" Bool :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Permission :> Put '[JSON] Permission

-- | Updates a permission.
--
-- /See:/ 'permissionsUpdate'' smart constructor.
data PermissionsUpdate' = PermissionsUpdate'
    { _puuPayload           :: !Permission
    , _puuTransferOwnership :: !Bool
    , _puuFileId            :: !Text
    , _puuPermissionId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puuPayload'
--
-- * 'puuTransferOwnership'
--
-- * 'puuFileId'
--
-- * 'puuPermissionId'
permissionsUpdate'
    :: Permission -- ^ 'payload'
    -> Text -- ^ 'fileId'
    -> Text -- ^ 'permissionId'
    -> PermissionsUpdate'
permissionsUpdate' pPuuPayload_ pPuuFileId_ pPuuPermissionId_ =
    PermissionsUpdate'
    { _puuPayload = pPuuPayload_
    , _puuTransferOwnership = False
    , _puuFileId = pPuuFileId_
    , _puuPermissionId = pPuuPermissionId_
    }

-- | Multipart request metadata.
puuPayload :: Lens' PermissionsUpdate' Permission
puuPayload
  = lens _puuPayload (\ s a -> s{_puuPayload = a})

-- | Whether changing a role to \'owner\' downgrades the current owners to
-- writers. Does nothing if the specified role is not \'owner\'.
puuTransferOwnership :: Lens' PermissionsUpdate' Bool
puuTransferOwnership
  = lens _puuTransferOwnership
      (\ s a -> s{_puuTransferOwnership = a})

-- | The ID for the file.
puuFileId :: Lens' PermissionsUpdate' Text
puuFileId
  = lens _puuFileId (\ s a -> s{_puuFileId = a})

-- | The ID for the permission.
puuPermissionId :: Lens' PermissionsUpdate' Text
puuPermissionId
  = lens _puuPermissionId
      (\ s a -> s{_puuPermissionId = a})

instance GoogleRequest PermissionsUpdate' where
        type Rs PermissionsUpdate' = Permission
        requestClient PermissionsUpdate'{..}
          = go _puuFileId _puuPermissionId
              (Just _puuTransferOwnership)
              (Just AltJSON)
              _puuPayload
              drive
          where go
                  = buildClient
                      (Proxy :: Proxy PermissionsUpdateResource)
                      mempty
