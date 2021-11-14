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
-- Module      : Network.Google.Resource.Drive.Permissions.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a permission by ID.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.permissions.get@.
module Network.Google.Resource.Drive.Permissions.Get
    (
    -- * REST Resource
      PermissionsGetResource

    -- * Creating a Request
    , permissionsGet
    , PermissionsGet

    -- * Request Lenses
    , pgSupportsAllDrives
    , pgUseDomainAdminAccess
    , pgFileId
    , pgSupportsTeamDrives
    , pgPermissionId
    ) where

import Network.Google.Drive.Types
import Network.Google.Prelude

-- | A resource alias for @drive.permissions.get@ method which the
-- 'PermissionsGet' request conforms to.
type PermissionsGetResource =
     "drive" :>
       "v3" :>
         "files" :>
           Capture "fileId" Text :>
             "permissions" :>
               Capture "permissionId" Text :>
                 QueryParam "supportsAllDrives" Bool :>
                   QueryParam "useDomainAdminAccess" Bool :>
                     QueryParam "supportsTeamDrives" Bool :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Permission

-- | Gets a permission by ID.
--
-- /See:/ 'permissionsGet' smart constructor.
data PermissionsGet =
  PermissionsGet'
    { _pgSupportsAllDrives :: !Bool
    , _pgUseDomainAdminAccess :: !Bool
    , _pgFileId :: !Text
    , _pgSupportsTeamDrives :: !Bool
    , _pgPermissionId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PermissionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgSupportsAllDrives'
--
-- * 'pgUseDomainAdminAccess'
--
-- * 'pgFileId'
--
-- * 'pgSupportsTeamDrives'
--
-- * 'pgPermissionId'
permissionsGet
    :: Text -- ^ 'pgFileId'
    -> Text -- ^ 'pgPermissionId'
    -> PermissionsGet
permissionsGet pPgFileId_ pPgPermissionId_ =
  PermissionsGet'
    { _pgSupportsAllDrives = False
    , _pgUseDomainAdminAccess = False
    , _pgFileId = pPgFileId_
    , _pgSupportsTeamDrives = False
    , _pgPermissionId = pPgPermissionId_
    }


-- | Whether the requesting application supports both My Drives and shared
-- drives.
pgSupportsAllDrives :: Lens' PermissionsGet Bool
pgSupportsAllDrives
  = lens _pgSupportsAllDrives
      (\ s a -> s{_pgSupportsAllDrives = a})

-- | Issue the request as a domain administrator; if set to true, then the
-- requester will be granted access if the file ID parameter refers to a
-- shared drive and the requester is an administrator of the domain to
-- which the shared drive belongs.
pgUseDomainAdminAccess :: Lens' PermissionsGet Bool
pgUseDomainAdminAccess
  = lens _pgUseDomainAdminAccess
      (\ s a -> s{_pgUseDomainAdminAccess = a})

-- | The ID of the file.
pgFileId :: Lens' PermissionsGet Text
pgFileId = lens _pgFileId (\ s a -> s{_pgFileId = a})

-- | Deprecated use supportsAllDrives instead.
pgSupportsTeamDrives :: Lens' PermissionsGet Bool
pgSupportsTeamDrives
  = lens _pgSupportsTeamDrives
      (\ s a -> s{_pgSupportsTeamDrives = a})

-- | The ID of the permission.
pgPermissionId :: Lens' PermissionsGet Text
pgPermissionId
  = lens _pgPermissionId
      (\ s a -> s{_pgPermissionId = a})

instance GoogleRequest PermissionsGet where
        type Rs PermissionsGet = Permission
        type Scopes PermissionsGet =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/drive.metadata",
               "https://www.googleapis.com/auth/drive.metadata.readonly",
               "https://www.googleapis.com/auth/drive.photos.readonly",
               "https://www.googleapis.com/auth/drive.readonly"]
        requestClient PermissionsGet'{..}
          = go _pgFileId _pgPermissionId
              (Just _pgSupportsAllDrives)
              (Just _pgUseDomainAdminAccess)
              (Just _pgSupportsTeamDrives)
              (Just AltJSON)
              driveService
          where go
                  = buildClient (Proxy :: Proxy PermissionsGetResource)
                      mempty
