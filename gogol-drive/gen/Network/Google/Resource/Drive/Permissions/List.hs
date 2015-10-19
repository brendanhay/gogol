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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists a file\'s permissions.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DrivePermissionsList@.
module Network.Google.Resource.Drive.Permissions.List
    (
    -- * REST Resource
      PermissionsListResource

    -- * Creating a Request
    , permissionsList'
    , PermissionsList'

    -- * Request Lenses
    , pllFileId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DrivePermissionsList@ method which the
-- 'PermissionsList'' request conforms to.
type PermissionsListResource =
     "files" :>
       Capture "fileId" Text :>
         "permissions" :>
           QueryParam "alt" AltJSON :>
             Get '[JSON] PermissionList

-- | Lists a file\'s permissions.
--
-- /See:/ 'permissionsList'' smart constructor.
newtype PermissionsList' = PermissionsList'
    { _pllFileId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pllFileId'
permissionsList'
    :: Text -- ^ 'fileId'
    -> PermissionsList'
permissionsList' pPllFileId_ =
    PermissionsList'
    { _pllFileId = pPllFileId_
    }

-- | The ID for the file.
pllFileId :: Lens' PermissionsList' Text
pllFileId
  = lens _pllFileId (\ s a -> s{_pllFileId = a})

instance GoogleRequest PermissionsList' where
        type Rs PermissionsList' = PermissionList
        requestClient PermissionsList'{..}
          = go _pllFileId (Just AltJSON) driveService
          where go
                  = buildClient
                      (Proxy :: Proxy PermissionsListResource)
                      mempty
