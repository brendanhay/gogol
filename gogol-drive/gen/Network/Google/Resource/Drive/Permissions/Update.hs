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
-- Updates a permission.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.permissions.update@.
module Network.Google.Resource.Drive.Permissions.Update
    (
    -- * REST Resource
      PermissionsUpdateResource

    -- * Creating a Request
    , permissionsUpdate
    , PermissionsUpdate

    -- * Request Lenses
    , perPayload
    , perTransferOwnership
    , perFileId
    , perPermissionId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.permissions.update@ method which the
-- 'PermissionsUpdate' request conforms to.
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
-- /See:/ 'permissionsUpdate' smart constructor.
data PermissionsUpdate = PermissionsUpdate
    { _perPayload           :: !Permission
    , _perTransferOwnership :: !Bool
    , _perFileId            :: !Text
    , _perPermissionId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'perPayload'
--
-- * 'perTransferOwnership'
--
-- * 'perFileId'
--
-- * 'perPermissionId'
permissionsUpdate
    :: Permission -- ^ 'perPayload'
    -> Text -- ^ 'perFileId'
    -> Text -- ^ 'perPermissionId'
    -> PermissionsUpdate
permissionsUpdate pPerPayload_ pPerFileId_ pPerPermissionId_ =
    PermissionsUpdate
    { _perPayload = pPerPayload_
    , _perTransferOwnership = False
    , _perFileId = pPerFileId_
    , _perPermissionId = pPerPermissionId_
    }

-- | Multipart request metadata.
perPayload :: Lens' PermissionsUpdate Permission
perPayload
  = lens _perPayload (\ s a -> s{_perPayload = a})

-- | Whether changing a role to \'owner\' downgrades the current owners to
-- writers. Does nothing if the specified role is not \'owner\'.
perTransferOwnership :: Lens' PermissionsUpdate Bool
perTransferOwnership
  = lens _perTransferOwnership
      (\ s a -> s{_perTransferOwnership = a})

-- | The ID for the file.
perFileId :: Lens' PermissionsUpdate Text
perFileId
  = lens _perFileId (\ s a -> s{_perFileId = a})

-- | The ID for the permission.
perPermissionId :: Lens' PermissionsUpdate Text
perPermissionId
  = lens _perPermissionId
      (\ s a -> s{_perPermissionId = a})

instance GoogleRequest PermissionsUpdate where
        type Rs PermissionsUpdate = Permission
        requestClient PermissionsUpdate{..}
          = go _perFileId _perPermissionId
              (Just _perTransferOwnership)
              (Just AltJSON)
              _perPayload
              driveService
          where go
                  = buildClient
                      (Proxy :: Proxy PermissionsUpdateResource)
                      mempty
