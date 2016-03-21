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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a permission with patch semantics.
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
    , puPayload
    , puTransferOwnership
    , puFileId
    , puPermissionId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.permissions.update@ method which the
-- 'PermissionsUpdate' request conforms to.
type PermissionsUpdateResource =
     "drive" :>
       "v3" :>
         "files" :>
           Capture "fileId" Text :>
             "permissions" :>
               Capture "permissionId" Text :>
                 QueryParam "transferOwnership" Bool :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Permission :>
                       Patch '[JSON] Permission

-- | Updates a permission with patch semantics.
--
-- /See:/ 'permissionsUpdate' smart constructor.
data PermissionsUpdate = PermissionsUpdate'
    { _puPayload           :: !Permission
    , _puTransferOwnership :: !Bool
    , _puFileId            :: !Text
    , _puPermissionId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puPayload'
--
-- * 'puTransferOwnership'
--
-- * 'puFileId'
--
-- * 'puPermissionId'
permissionsUpdate
    :: Permission -- ^ 'puPayload'
    -> Text -- ^ 'puFileId'
    -> Text -- ^ 'puPermissionId'
    -> PermissionsUpdate
permissionsUpdate pPuPayload_ pPuFileId_ pPuPermissionId_ =
    PermissionsUpdate'
    { _puPayload = pPuPayload_
    , _puTransferOwnership = False
    , _puFileId = pPuFileId_
    , _puPermissionId = pPuPermissionId_
    }

-- | Multipart request metadata.
puPayload :: Lens' PermissionsUpdate Permission
puPayload
  = lens _puPayload (\ s a -> s{_puPayload = a})

-- | Whether to transfer ownership to the specified user and downgrade the
-- current owner to a writer. This parameter is required as an
-- acknowledgement of the side effect.
puTransferOwnership :: Lens' PermissionsUpdate Bool
puTransferOwnership
  = lens _puTransferOwnership
      (\ s a -> s{_puTransferOwnership = a})

-- | The ID of the file.
puFileId :: Lens' PermissionsUpdate Text
puFileId = lens _puFileId (\ s a -> s{_puFileId = a})

-- | The ID of the permission.
puPermissionId :: Lens' PermissionsUpdate Text
puPermissionId
  = lens _puPermissionId
      (\ s a -> s{_puPermissionId = a})

instance GoogleRequest PermissionsUpdate where
        type Rs PermissionsUpdate = Permission
        type Scopes PermissionsUpdate =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file"]
        requestClient PermissionsUpdate'{..}
          = go _puFileId _puPermissionId
              (Just _puTransferOwnership)
              (Just AltJSON)
              _puPayload
              driveService
          where go
                  = buildClient
                      (Proxy :: Proxy PermissionsUpdateResource)
                      mempty
