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
-- Module      : Network.Google.Resource.Drive.Permissions.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a permission for a file or shared drive.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.permissions.create@.
module Network.Google.Resource.Drive.Permissions.Create
    (
    -- * REST Resource
      PermissionsCreateResource

    -- * Creating a Request
    , permissionsCreate
    , PermissionsCreate

    -- * Request Lenses
    , pcSendNotificationEmail
    , pcPayload
    , pcEmailMessage
    , pcMoveToNewOwnersRoot
    , pcSupportsAllDrives
    , pcEnforceSingleParent
    , pcUseDomainAdminAccess
    , pcTransferOwnership
    , pcFileId
    , pcSupportsTeamDrives
    ) where

import Network.Google.Drive.Types
import Network.Google.Prelude

-- | A resource alias for @drive.permissions.create@ method which the
-- 'PermissionsCreate' request conforms to.
type PermissionsCreateResource =
     "drive" :>
       "v3" :>
         "files" :>
           Capture "fileId" Text :>
             "permissions" :>
               QueryParam "sendNotificationEmail" Bool :>
                 QueryParam "emailMessage" Text :>
                   QueryParam "moveToNewOwnersRoot" Bool :>
                     QueryParam "supportsAllDrives" Bool :>
                       QueryParam "enforceSingleParent" Bool :>
                         QueryParam "useDomainAdminAccess" Bool :>
                           QueryParam "transferOwnership" Bool :>
                             QueryParam "supportsTeamDrives" Bool :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] Permission :>
                                   Post '[JSON] Permission

-- | Creates a permission for a file or shared drive.
--
-- /See:/ 'permissionsCreate' smart constructor.
data PermissionsCreate =
  PermissionsCreate'
    { _pcSendNotificationEmail :: !(Maybe Bool)
    , _pcPayload :: !Permission
    , _pcEmailMessage :: !(Maybe Text)
    , _pcMoveToNewOwnersRoot :: !Bool
    , _pcSupportsAllDrives :: !Bool
    , _pcEnforceSingleParent :: !Bool
    , _pcUseDomainAdminAccess :: !Bool
    , _pcTransferOwnership :: !Bool
    , _pcFileId :: !Text
    , _pcSupportsTeamDrives :: !Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PermissionsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcSendNotificationEmail'
--
-- * 'pcPayload'
--
-- * 'pcEmailMessage'
--
-- * 'pcMoveToNewOwnersRoot'
--
-- * 'pcSupportsAllDrives'
--
-- * 'pcEnforceSingleParent'
--
-- * 'pcUseDomainAdminAccess'
--
-- * 'pcTransferOwnership'
--
-- * 'pcFileId'
--
-- * 'pcSupportsTeamDrives'
permissionsCreate
    :: Permission -- ^ 'pcPayload'
    -> Text -- ^ 'pcFileId'
    -> PermissionsCreate
permissionsCreate pPcPayload_ pPcFileId_ =
  PermissionsCreate'
    { _pcSendNotificationEmail = Nothing
    , _pcPayload = pPcPayload_
    , _pcEmailMessage = Nothing
    , _pcMoveToNewOwnersRoot = False
    , _pcSupportsAllDrives = False
    , _pcEnforceSingleParent = False
    , _pcUseDomainAdminAccess = False
    , _pcTransferOwnership = False
    , _pcFileId = pPcFileId_
    , _pcSupportsTeamDrives = False
    }


-- | Whether to send a notification email when sharing to users or groups.
-- This defaults to true for users and groups, and is not allowed for other
-- requests. It must not be disabled for ownership transfers.
pcSendNotificationEmail :: Lens' PermissionsCreate (Maybe Bool)
pcSendNotificationEmail
  = lens _pcSendNotificationEmail
      (\ s a -> s{_pcSendNotificationEmail = a})

-- | Multipart request metadata.
pcPayload :: Lens' PermissionsCreate Permission
pcPayload
  = lens _pcPayload (\ s a -> s{_pcPayload = a})

-- | A plain text custom message to include in the notification email.
pcEmailMessage :: Lens' PermissionsCreate (Maybe Text)
pcEmailMessage
  = lens _pcEmailMessage
      (\ s a -> s{_pcEmailMessage = a})

-- | This parameter will only take effect if the item is not in a shared
-- drive and the request is attempting to transfer the ownership of the
-- item. If set to true, the item will be moved to the new owner\'s My
-- Drive root folder and all prior parents removed. If set to false,
-- parents are not changed.
pcMoveToNewOwnersRoot :: Lens' PermissionsCreate Bool
pcMoveToNewOwnersRoot
  = lens _pcMoveToNewOwnersRoot
      (\ s a -> s{_pcMoveToNewOwnersRoot = a})

-- | Whether the requesting application supports both My Drives and shared
-- drives.
pcSupportsAllDrives :: Lens' PermissionsCreate Bool
pcSupportsAllDrives
  = lens _pcSupportsAllDrives
      (\ s a -> s{_pcSupportsAllDrives = a})

-- | Deprecated. See moveToNewOwnersRoot for details.
pcEnforceSingleParent :: Lens' PermissionsCreate Bool
pcEnforceSingleParent
  = lens _pcEnforceSingleParent
      (\ s a -> s{_pcEnforceSingleParent = a})

-- | Issue the request as a domain administrator; if set to true, then the
-- requester will be granted access if the file ID parameter refers to a
-- shared drive and the requester is an administrator of the domain to
-- which the shared drive belongs.
pcUseDomainAdminAccess :: Lens' PermissionsCreate Bool
pcUseDomainAdminAccess
  = lens _pcUseDomainAdminAccess
      (\ s a -> s{_pcUseDomainAdminAccess = a})

-- | Whether to transfer ownership to the specified user and downgrade the
-- current owner to a writer. This parameter is required as an
-- acknowledgement of the side effect. File owners can only transfer
-- ownership of files existing on My Drive. Files existing in a shared
-- drive are owned by the organization that owns that shared drive.
-- Ownership transfers are not supported for files and folders in shared
-- drives. Organizers of a shared drive can move items from that shared
-- drive into their My Drive which transfers the ownership to them.
pcTransferOwnership :: Lens' PermissionsCreate Bool
pcTransferOwnership
  = lens _pcTransferOwnership
      (\ s a -> s{_pcTransferOwnership = a})

-- | The ID of the file or shared drive.
pcFileId :: Lens' PermissionsCreate Text
pcFileId = lens _pcFileId (\ s a -> s{_pcFileId = a})

-- | Deprecated use supportsAllDrives instead.
pcSupportsTeamDrives :: Lens' PermissionsCreate Bool
pcSupportsTeamDrives
  = lens _pcSupportsTeamDrives
      (\ s a -> s{_pcSupportsTeamDrives = a})

instance GoogleRequest PermissionsCreate where
        type Rs PermissionsCreate = Permission
        type Scopes PermissionsCreate =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file"]
        requestClient PermissionsCreate'{..}
          = go _pcFileId _pcSendNotificationEmail
              _pcEmailMessage
              (Just _pcMoveToNewOwnersRoot)
              (Just _pcSupportsAllDrives)
              (Just _pcEnforceSingleParent)
              (Just _pcUseDomainAdminAccess)
              (Just _pcTransferOwnership)
              (Just _pcSupportsTeamDrives)
              (Just AltJSON)
              _pcPayload
              driveService
          where go
                  = buildClient
                      (Proxy :: Proxy PermissionsCreateResource)
                      mempty
