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
-- Module      : Network.Google.Resource.Drive.Permissions.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists a file\'s or Team Drive\'s permissions.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.permissions.list@.
module Network.Google.Resource.Drive.Permissions.List
    (
    -- * REST Resource
      PermissionsListResource

    -- * Creating a Request
    , permissionsList
    , PermissionsList

    -- * Request Lenses
    , plPageToken
    , plUseDomainAdminAccess
    , plFileId
    , plPageSize
    , plSupportsTeamDrives
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.permissions.list@ method which the
-- 'PermissionsList' request conforms to.
type PermissionsListResource =
     "drive" :>
       "v3" :>
         "files" :>
           Capture "fileId" Text :>
             "permissions" :>
               QueryParam "pageToken" Text :>
                 QueryParam "useDomainAdminAccess" Bool :>
                   QueryParam "pageSize" (Textual Int32) :>
                     QueryParam "supportsTeamDrives" Bool :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] PermissionList

-- | Lists a file\'s or Team Drive\'s permissions.
--
-- /See:/ 'permissionsList' smart constructor.
data PermissionsList =
  PermissionsList'
    { _plPageToken            :: !(Maybe Text)
    , _plUseDomainAdminAccess :: !Bool
    , _plFileId               :: !Text
    , _plPageSize             :: !(Maybe (Textual Int32))
    , _plSupportsTeamDrives   :: !Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PermissionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plPageToken'
--
-- * 'plUseDomainAdminAccess'
--
-- * 'plFileId'
--
-- * 'plPageSize'
--
-- * 'plSupportsTeamDrives'
permissionsList
    :: Text -- ^ 'plFileId'
    -> PermissionsList
permissionsList pPlFileId_ =
  PermissionsList'
    { _plPageToken = Nothing
    , _plUseDomainAdminAccess = False
    , _plFileId = pPlFileId_
    , _plPageSize = Nothing
    , _plSupportsTeamDrives = False
    }

-- | The token for continuing a previous list request on the next page. This
-- should be set to the value of \'nextPageToken\' from the previous
-- response.
plPageToken :: Lens' PermissionsList (Maybe Text)
plPageToken
  = lens _plPageToken (\ s a -> s{_plPageToken = a})

-- | Issue the request as a domain administrator; if set to true, then the
-- requester will be granted access if they are an administrator of the
-- domain to which the item belongs.
plUseDomainAdminAccess :: Lens' PermissionsList Bool
plUseDomainAdminAccess
  = lens _plUseDomainAdminAccess
      (\ s a -> s{_plUseDomainAdminAccess = a})

-- | The ID of the file or Team Drive.
plFileId :: Lens' PermissionsList Text
plFileId = lens _plFileId (\ s a -> s{_plFileId = a})

-- | The maximum number of permissions to return per page. When not set for
-- files in a Team Drive, at most 100 results will be returned. When not
-- set for files that are not in a Team Drive, the entire list will be
-- returned.
plPageSize :: Lens' PermissionsList (Maybe Int32)
plPageSize
  = lens _plPageSize (\ s a -> s{_plPageSize = a}) .
      mapping _Coerce

-- | Whether the requesting application supports Team Drives.
plSupportsTeamDrives :: Lens' PermissionsList Bool
plSupportsTeamDrives
  = lens _plSupportsTeamDrives
      (\ s a -> s{_plSupportsTeamDrives = a})

instance GoogleRequest PermissionsList where
        type Rs PermissionsList = PermissionList
        type Scopes PermissionsList =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/drive.metadata",
               "https://www.googleapis.com/auth/drive.metadata.readonly",
               "https://www.googleapis.com/auth/drive.photos.readonly",
               "https://www.googleapis.com/auth/drive.readonly"]
        requestClient PermissionsList'{..}
          = go _plFileId _plPageToken
              (Just _plUseDomainAdminAccess)
              _plPageSize
              (Just _plSupportsTeamDrives)
              (Just AltJSON)
              driveService
          where go
                  = buildClient
                      (Proxy :: Proxy PermissionsListResource)
                      mempty
