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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a permission from a file.
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
    , pFileId
    , pPermissionId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.permissions.delete@ method which the
-- 'PermissionsDelete' request conforms to.
type PermissionsDeleteResource =
     "files" :>
       Capture "fileId" Text :>
         "permissions" :>
           Capture "permissionId" Text :>
             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a permission from a file.
--
-- /See:/ 'permissionsDelete' smart constructor.
data PermissionsDelete = PermissionsDelete
    { _pFileId       :: !Text
    , _pPermissionId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pFileId'
--
-- * 'pPermissionId'
permissionsDelete
    :: Text -- ^ 'pFileId'
    -> Text -- ^ 'pPermissionId'
    -> PermissionsDelete
permissionsDelete pPFileId_ pPPermissionId_ =
    PermissionsDelete
    { _pFileId = pPFileId_
    , _pPermissionId = pPPermissionId_
    }

-- | The ID for the file.
pFileId :: Lens' PermissionsDelete Text
pFileId = lens _pFileId (\ s a -> s{_pFileId = a})

-- | The ID for the permission.
pPermissionId :: Lens' PermissionsDelete Text
pPermissionId
  = lens _pPermissionId
      (\ s a -> s{_pPermissionId = a})

instance GoogleRequest PermissionsDelete where
        type Rs PermissionsDelete = ()
        requestClient PermissionsDelete{..}
          = go _pFileId _pPermissionId (Just AltJSON)
              driveService
          where go
                  = buildClient
                      (Proxy :: Proxy PermissionsDeleteResource)
                      mempty
