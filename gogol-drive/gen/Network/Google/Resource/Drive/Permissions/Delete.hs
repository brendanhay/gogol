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
-- Module      : Network.Google.Resource.Drive.Permissions.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a permission.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.permissions.delete@.
module Network.Google.Resource.Drive.Permissions.Delete
    (
    -- * REST Resource
      PermissionsDeleteResource

    -- * Creating a Request
    , permissionsDelete
    , PermissionsDelete

    -- * Request Lenses
    , pdUseDomainAdminAccess
    , pdFileId
    , pdSupportsTeamDrives
    , pdPermissionId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.permissions.delete@ method which the
-- 'PermissionsDelete' request conforms to.
type PermissionsDeleteResource =
     "drive" :>
       "v3" :>
         "files" :>
           Capture "fileId" Text :>
             "permissions" :>
               Capture "permissionId" Text :>
                 QueryParam "useDomainAdminAccess" Bool :>
                   QueryParam "supportsTeamDrives" Bool :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a permission.
--
-- /See:/ 'permissionsDelete' smart constructor.
data PermissionsDelete =
  PermissionsDelete'
    { _pdUseDomainAdminAccess :: !Bool
    , _pdFileId               :: !Text
    , _pdSupportsTeamDrives   :: !Bool
    , _pdPermissionId         :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PermissionsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdUseDomainAdminAccess'
--
-- * 'pdFileId'
--
-- * 'pdSupportsTeamDrives'
--
-- * 'pdPermissionId'
permissionsDelete
    :: Text -- ^ 'pdFileId'
    -> Text -- ^ 'pdPermissionId'
    -> PermissionsDelete
permissionsDelete pPdFileId_ pPdPermissionId_ =
  PermissionsDelete'
    { _pdUseDomainAdminAccess = False
    , _pdFileId = pPdFileId_
    , _pdSupportsTeamDrives = False
    , _pdPermissionId = pPdPermissionId_
    }

-- | Issue the request as a domain administrator; if set to true, then the
-- requester will be granted access if they are an administrator of the
-- domain to which the item belongs.
pdUseDomainAdminAccess :: Lens' PermissionsDelete Bool
pdUseDomainAdminAccess
  = lens _pdUseDomainAdminAccess
      (\ s a -> s{_pdUseDomainAdminAccess = a})

-- | The ID of the file or Team Drive.
pdFileId :: Lens' PermissionsDelete Text
pdFileId = lens _pdFileId (\ s a -> s{_pdFileId = a})

-- | Whether the requesting application supports Team Drives.
pdSupportsTeamDrives :: Lens' PermissionsDelete Bool
pdSupportsTeamDrives
  = lens _pdSupportsTeamDrives
      (\ s a -> s{_pdSupportsTeamDrives = a})

-- | The ID of the permission.
pdPermissionId :: Lens' PermissionsDelete Text
pdPermissionId
  = lens _pdPermissionId
      (\ s a -> s{_pdPermissionId = a})

instance GoogleRequest PermissionsDelete where
        type Rs PermissionsDelete = ()
        type Scopes PermissionsDelete =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file"]
        requestClient PermissionsDelete'{..}
          = go _pdFileId _pdPermissionId
              (Just _pdUseDomainAdminAccess)
              (Just _pdSupportsTeamDrives)
              (Just AltJSON)
              driveService
          where go
                  = buildClient
                      (Proxy :: Proxy PermissionsDeleteResource)
                      mempty
