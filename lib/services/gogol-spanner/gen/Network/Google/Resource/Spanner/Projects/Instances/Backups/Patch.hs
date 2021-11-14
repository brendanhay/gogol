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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Backups.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a pending or completed Backup.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.backups.patch@.
module Network.Google.Resource.Spanner.Projects.Instances.Backups.Patch
    (
    -- * REST Resource
      ProjectsInstancesBackupsPatchResource

    -- * Creating a Request
    , projectsInstancesBackupsPatch
    , ProjectsInstancesBackupsPatch

    -- * Request Lenses
    , pibpXgafv
    , pibpUploadProtocol
    , pibpUpdateMask
    , pibpAccessToken
    , pibpUploadType
    , pibpPayload
    , pibpName
    , pibpCallback
    ) where

import Network.Google.Prelude
import Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.backups.patch@ method which the
-- 'ProjectsInstancesBackupsPatch' request conforms to.
type ProjectsInstancesBackupsPatchResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Backup :> Patch '[JSON] Backup

-- | Updates a pending or completed Backup.
--
-- /See:/ 'projectsInstancesBackupsPatch' smart constructor.
data ProjectsInstancesBackupsPatch =
  ProjectsInstancesBackupsPatch'
    { _pibpXgafv :: !(Maybe Xgafv)
    , _pibpUploadProtocol :: !(Maybe Text)
    , _pibpUpdateMask :: !(Maybe GFieldMask)
    , _pibpAccessToken :: !(Maybe Text)
    , _pibpUploadType :: !(Maybe Text)
    , _pibpPayload :: !Backup
    , _pibpName :: !Text
    , _pibpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesBackupsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pibpXgafv'
--
-- * 'pibpUploadProtocol'
--
-- * 'pibpUpdateMask'
--
-- * 'pibpAccessToken'
--
-- * 'pibpUploadType'
--
-- * 'pibpPayload'
--
-- * 'pibpName'
--
-- * 'pibpCallback'
projectsInstancesBackupsPatch
    :: Backup -- ^ 'pibpPayload'
    -> Text -- ^ 'pibpName'
    -> ProjectsInstancesBackupsPatch
projectsInstancesBackupsPatch pPibpPayload_ pPibpName_ =
  ProjectsInstancesBackupsPatch'
    { _pibpXgafv = Nothing
    , _pibpUploadProtocol = Nothing
    , _pibpUpdateMask = Nothing
    , _pibpAccessToken = Nothing
    , _pibpUploadType = Nothing
    , _pibpPayload = pPibpPayload_
    , _pibpName = pPibpName_
    , _pibpCallback = Nothing
    }


-- | V1 error format.
pibpXgafv :: Lens' ProjectsInstancesBackupsPatch (Maybe Xgafv)
pibpXgafv
  = lens _pibpXgafv (\ s a -> s{_pibpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pibpUploadProtocol :: Lens' ProjectsInstancesBackupsPatch (Maybe Text)
pibpUploadProtocol
  = lens _pibpUploadProtocol
      (\ s a -> s{_pibpUploadProtocol = a})

-- | Required. A mask specifying which fields (e.g. \`expire_time\`) in the
-- Backup resource should be updated. This mask is relative to the Backup
-- resource, not to the request message. The field mask must always be
-- specified; this prevents any future fields from being erased
-- accidentally by clients that do not know about them.
pibpUpdateMask :: Lens' ProjectsInstancesBackupsPatch (Maybe GFieldMask)
pibpUpdateMask
  = lens _pibpUpdateMask
      (\ s a -> s{_pibpUpdateMask = a})

-- | OAuth access token.
pibpAccessToken :: Lens' ProjectsInstancesBackupsPatch (Maybe Text)
pibpAccessToken
  = lens _pibpAccessToken
      (\ s a -> s{_pibpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pibpUploadType :: Lens' ProjectsInstancesBackupsPatch (Maybe Text)
pibpUploadType
  = lens _pibpUploadType
      (\ s a -> s{_pibpUploadType = a})

-- | Multipart request metadata.
pibpPayload :: Lens' ProjectsInstancesBackupsPatch Backup
pibpPayload
  = lens _pibpPayload (\ s a -> s{_pibpPayload = a})

-- | Output only for the CreateBackup operation. Required for the
-- UpdateBackup operation. A globally unique identifier for the backup
-- which cannot be changed. Values are of the form
-- \`projects\/\/instances\/\/backups\/a-z*[a-z0-9]\` The final segment of
-- the name must be between 2 and 60 characters in length. The backup is
-- stored in the location(s) specified in the instance configuration of the
-- instance containing the backup, identified by the prefix of the backup
-- name of the form \`projects\/\/instances\/\`.
pibpName :: Lens' ProjectsInstancesBackupsPatch Text
pibpName = lens _pibpName (\ s a -> s{_pibpName = a})

-- | JSONP
pibpCallback :: Lens' ProjectsInstancesBackupsPatch (Maybe Text)
pibpCallback
  = lens _pibpCallback (\ s a -> s{_pibpCallback = a})

instance GoogleRequest ProjectsInstancesBackupsPatch
         where
        type Rs ProjectsInstancesBackupsPatch = Backup
        type Scopes ProjectsInstancesBackupsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.admin"]
        requestClient ProjectsInstancesBackupsPatch'{..}
          = go _pibpName _pibpXgafv _pibpUploadProtocol
              _pibpUpdateMask
              _pibpAccessToken
              _pibpUploadType
              _pibpCallback
              (Just AltJSON)
              _pibpPayload
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesBackupsPatchResource)
                      mempty
