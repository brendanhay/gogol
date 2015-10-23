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
-- Copyright   : (c) 2015 Brendan Hay
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
    , pggFileId
    , pggPermissionId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.permissions.get@ method which the
-- 'PermissionsGet' request conforms to.
type PermissionsGetResource =
     "drive" :>
       "v2" :>
         "files" :>
           Capture "fileId" Text :>
             "permissions" :>
               Capture "permissionId" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Permission

-- | Gets a permission by ID.
--
-- /See:/ 'permissionsGet' smart constructor.
data PermissionsGet = PermissionsGet
    { _pggFileId       :: !Text
    , _pggPermissionId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pggFileId'
--
-- * 'pggPermissionId'
permissionsGet
    :: Text -- ^ 'pggFileId'
    -> Text -- ^ 'pggPermissionId'
    -> PermissionsGet
permissionsGet pPggFileId_ pPggPermissionId_ =
    PermissionsGet
    { _pggFileId = pPggFileId_
    , _pggPermissionId = pPggPermissionId_
    }

-- | The ID for the file.
pggFileId :: Lens' PermissionsGet Text
pggFileId
  = lens _pggFileId (\ s a -> s{_pggFileId = a})

-- | The ID for the permission.
pggPermissionId :: Lens' PermissionsGet Text
pggPermissionId
  = lens _pggPermissionId
      (\ s a -> s{_pggPermissionId = a})

instance GoogleRequest PermissionsGet where
        type Rs PermissionsGet = Permission
        requestClient PermissionsGet{..}
          = go _pggFileId _pggPermissionId (Just AltJSON)
              driveService
          where go
                  = buildClient (Proxy :: Proxy PermissionsGetResource)
                      mempty
