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
    , puSupportsAllDrives
    , puRemoveExpiration
    , puUseDomainAdminAccess
    , puTransferOwnership
    , puFileId
    , puSupportsTeamDrives
    , puPermissionId
    ) where

import Network.Google.Drive.Types
import Network.Google.Prelude

-- | A resource alias for @drive.permissions.update@ method which the
-- 'PermissionsUpdate' request conforms to.
type PermissionsUpdateResource =
     "drive" :>
       "v3" :>
         "files" :>
           Capture "fileId" Text :>
             "permissions" :>
               Capture "permissionId" Text :>
                 QueryParam "supportsAllDrives" Bool :>
                   QueryParam "removeExpiration" Bool :>
                     QueryParam "useDomainAdminAccess" Bool :>
                       QueryParam "transferOwnership" Bool :>
                         QueryParam "supportsTeamDrives" Bool :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Permission :>
                               Patch '[JSON] Permission

-- | Updates a permission with patch semantics.
--
-- /See:/ 'permissionsUpdate' smart constructor.
data PermissionsUpdate =
  PermissionsUpdate'
    { _puPayload :: !Permission
    , _puSupportsAllDrives :: !Bool
    , _puRemoveExpiration :: !Bool
    , _puUseDomainAdminAccess :: !Bool
    , _puTransferOwnership :: !Bool
    , _puFileId :: !Text
    , _puSupportsTeamDrives :: !Bool
    , _puPermissionId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PermissionsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puPayload'
--
-- * 'puSupportsAllDrives'
--
-- * 'puRemoveExpiration'
--
-- * 'puUseDomainAdminAccess'
--
-- * 'puTransferOwnership'
--
-- * 'puFileId'
--
-- * 'puSupportsTeamDrives'
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
    , _puSupportsAllDrives = False
    , _puRemoveExpiration = False
    , _puUseDomainAdminAccess = False
    , _puTransferOwnership = False
    , _puFileId = pPuFileId_
    , _puSupportsTeamDrives = False
    , _puPermissionId = pPuPermissionId_
    }


-- | Multipart request metadata.
puPayload :: Lens' PermissionsUpdate Permission
puPayload
  = lens _puPayload (\ s a -> s{_puPayload = a})

-- | Whether the requesting application supports both My Drives and shared
-- drives.
puSupportsAllDrives :: Lens' PermissionsUpdate Bool
puSupportsAllDrives
  = lens _puSupportsAllDrives
      (\ s a -> s{_puSupportsAllDrives = a})

-- | Whether to remove the expiration date.
puRemoveExpiration :: Lens' PermissionsUpdate Bool
puRemoveExpiration
  = lens _puRemoveExpiration
      (\ s a -> s{_puRemoveExpiration = a})

-- | Issue the request as a domain administrator; if set to true, then the
-- requester will be granted access if the file ID parameter refers to a
-- shared drive and the requester is an administrator of the domain to
-- which the shared drive belongs.
puUseDomainAdminAccess :: Lens' PermissionsUpdate Bool
puUseDomainAdminAccess
  = lens _puUseDomainAdminAccess
      (\ s a -> s{_puUseDomainAdminAccess = a})

-- | Whether to transfer ownership to the specified user and downgrade the
-- current owner to a writer. This parameter is required as an
-- acknowledgement of the side effect. File owners can only transfer
-- ownership of files existing on My Drive. Files existing in a shared
-- drive are owned by the organization that owns that shared drive.
-- Ownership transfers are not supported for files and folders in shared
-- drives. Organizers of a shared drive can move items from that shared
-- drive into their My Drive which transfers the ownership to them.
puTransferOwnership :: Lens' PermissionsUpdate Bool
puTransferOwnership
  = lens _puTransferOwnership
      (\ s a -> s{_puTransferOwnership = a})

-- | The ID of the file or shared drive.
puFileId :: Lens' PermissionsUpdate Text
puFileId = lens _puFileId (\ s a -> s{_puFileId = a})

-- | Deprecated use supportsAllDrives instead.
puSupportsTeamDrives :: Lens' PermissionsUpdate Bool
puSupportsTeamDrives
  = lens _puSupportsTeamDrives
      (\ s a -> s{_puSupportsTeamDrives = a})

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
              (Just _puSupportsAllDrives)
              (Just _puRemoveExpiration)
              (Just _puUseDomainAdminAccess)
              (Just _puTransferOwnership)
              (Just _puSupportsTeamDrives)
              (Just AltJSON)
              _puPayload
              driveService
          where go
                  = buildClient
                      (Proxy :: Proxy PermissionsUpdateResource)
                      mempty
