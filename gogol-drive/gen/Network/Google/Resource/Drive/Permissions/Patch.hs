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
-- Module      : Network.Google.Resource.Drive.Permissions.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a permission using patch semantics.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.permissions.patch@.
module Network.Google.Resource.Drive.Permissions.Patch
    (
    -- * REST Resource
      PermissionsPatchResource

    -- * Creating a Request
    , permissionsPatch
    , PermissionsPatch

    -- * Request Lenses
    , pppPayload
    , pppTransferOwnership
    , pppFileId
    , pppPermissionId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.permissions.patch@ method which the
-- 'PermissionsPatch' request conforms to.
type PermissionsPatchResource =
     "drive" :>
       "v2" :>
         "files" :>
           Capture "fileId" Text :>
             "permissions" :>
               Capture "permissionId" Text :>
                 QueryParam "transferOwnership" Bool :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Permission :>
                       Patch '[JSON] Permission

-- | Updates a permission using patch semantics.
--
-- /See:/ 'permissionsPatch' smart constructor.
data PermissionsPatch = PermissionsPatch
    { _pppPayload           :: !Permission
    , _pppTransferOwnership :: !Bool
    , _pppFileId            :: !Text
    , _pppPermissionId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pppPayload'
--
-- * 'pppTransferOwnership'
--
-- * 'pppFileId'
--
-- * 'pppPermissionId'
permissionsPatch
    :: Permission -- ^ 'pppPayload'
    -> Text -- ^ 'pppFileId'
    -> Text -- ^ 'pppPermissionId'
    -> PermissionsPatch
permissionsPatch pPppPayload_ pPppFileId_ pPppPermissionId_ =
    PermissionsPatch
    { _pppPayload = pPppPayload_
    , _pppTransferOwnership = False
    , _pppFileId = pPppFileId_
    , _pppPermissionId = pPppPermissionId_
    }

-- | Multipart request metadata.
pppPayload :: Lens' PermissionsPatch Permission
pppPayload
  = lens _pppPayload (\ s a -> s{_pppPayload = a})

-- | Whether changing a role to \'owner\' downgrades the current owners to
-- writers. Does nothing if the specified role is not \'owner\'.
pppTransferOwnership :: Lens' PermissionsPatch Bool
pppTransferOwnership
  = lens _pppTransferOwnership
      (\ s a -> s{_pppTransferOwnership = a})

-- | The ID for the file.
pppFileId :: Lens' PermissionsPatch Text
pppFileId
  = lens _pppFileId (\ s a -> s{_pppFileId = a})

-- | The ID for the permission.
pppPermissionId :: Lens' PermissionsPatch Text
pppPermissionId
  = lens _pppPermissionId
      (\ s a -> s{_pppPermissionId = a})

instance GoogleRequest PermissionsPatch where
        type Rs PermissionsPatch = Permission
        type Scopes PermissionsPatch =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file"]
        requestClient PermissionsPatch{..}
          = go _pppFileId _pppPermissionId
              (Just _pppTransferOwnership)
              (Just AltJSON)
              _pppPayload
              driveService
          where go
                  = buildClient
                      (Proxy :: Proxy PermissionsPatchResource)
                      mempty
