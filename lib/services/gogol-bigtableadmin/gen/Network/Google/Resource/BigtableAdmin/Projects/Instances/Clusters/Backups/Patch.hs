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
-- Module      : Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Backups.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a pending or completed Cloud Bigtable Backup.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.clusters.backups.patch@.
module Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Backups.Patch
    (
    -- * REST Resource
      ProjectsInstancesClustersBackupsPatchResource

    -- * Creating a Request
    , projectsInstancesClustersBackupsPatch
    , ProjectsInstancesClustersBackupsPatch

    -- * Request Lenses
    , picbpXgafv
    , picbpUploadProtocol
    , picbpUpdateMask
    , picbpAccessToken
    , picbpUploadType
    , picbpPayload
    , picbpName
    , picbpCallback
    ) where

import Network.Google.BigtableAdmin.Types
import Network.Google.Prelude

-- | A resource alias for @bigtableadmin.projects.instances.clusters.backups.patch@ method which the
-- 'ProjectsInstancesClustersBackupsPatch' request conforms to.
type ProjectsInstancesClustersBackupsPatchResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Backup :> Patch '[JSON] Backup

-- | Updates a pending or completed Cloud Bigtable Backup.
--
-- /See:/ 'projectsInstancesClustersBackupsPatch' smart constructor.
data ProjectsInstancesClustersBackupsPatch =
  ProjectsInstancesClustersBackupsPatch'
    { _picbpXgafv :: !(Maybe Xgafv)
    , _picbpUploadProtocol :: !(Maybe Text)
    , _picbpUpdateMask :: !(Maybe GFieldMask)
    , _picbpAccessToken :: !(Maybe Text)
    , _picbpUploadType :: !(Maybe Text)
    , _picbpPayload :: !Backup
    , _picbpName :: !Text
    , _picbpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesClustersBackupsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'picbpXgafv'
--
-- * 'picbpUploadProtocol'
--
-- * 'picbpUpdateMask'
--
-- * 'picbpAccessToken'
--
-- * 'picbpUploadType'
--
-- * 'picbpPayload'
--
-- * 'picbpName'
--
-- * 'picbpCallback'
projectsInstancesClustersBackupsPatch
    :: Backup -- ^ 'picbpPayload'
    -> Text -- ^ 'picbpName'
    -> ProjectsInstancesClustersBackupsPatch
projectsInstancesClustersBackupsPatch pPicbpPayload_ pPicbpName_ =
  ProjectsInstancesClustersBackupsPatch'
    { _picbpXgafv = Nothing
    , _picbpUploadProtocol = Nothing
    , _picbpUpdateMask = Nothing
    , _picbpAccessToken = Nothing
    , _picbpUploadType = Nothing
    , _picbpPayload = pPicbpPayload_
    , _picbpName = pPicbpName_
    , _picbpCallback = Nothing
    }


-- | V1 error format.
picbpXgafv :: Lens' ProjectsInstancesClustersBackupsPatch (Maybe Xgafv)
picbpXgafv
  = lens _picbpXgafv (\ s a -> s{_picbpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
picbpUploadProtocol :: Lens' ProjectsInstancesClustersBackupsPatch (Maybe Text)
picbpUploadProtocol
  = lens _picbpUploadProtocol
      (\ s a -> s{_picbpUploadProtocol = a})

-- | Required. A mask specifying which fields (e.g. \`expire_time\`) in the
-- Backup resource should be updated. This mask is relative to the Backup
-- resource, not to the request message. The field mask must always be
-- specified; this prevents any future fields from being erased
-- accidentally by clients that do not know about them.
picbpUpdateMask :: Lens' ProjectsInstancesClustersBackupsPatch (Maybe GFieldMask)
picbpUpdateMask
  = lens _picbpUpdateMask
      (\ s a -> s{_picbpUpdateMask = a})

-- | OAuth access token.
picbpAccessToken :: Lens' ProjectsInstancesClustersBackupsPatch (Maybe Text)
picbpAccessToken
  = lens _picbpAccessToken
      (\ s a -> s{_picbpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
picbpUploadType :: Lens' ProjectsInstancesClustersBackupsPatch (Maybe Text)
picbpUploadType
  = lens _picbpUploadType
      (\ s a -> s{_picbpUploadType = a})

-- | Multipart request metadata.
picbpPayload :: Lens' ProjectsInstancesClustersBackupsPatch Backup
picbpPayload
  = lens _picbpPayload (\ s a -> s{_picbpPayload = a})

-- | A globally unique identifier for the backup which cannot be changed.
-- Values are of the form
-- \`projects\/{project}\/instances\/{instance}\/clusters\/{cluster}\/
-- backups\/_a-zA-Z0-9*\` The final segment of the name must be between 1
-- and 50 characters in length. The backup is stored in the cluster
-- identified by the prefix of the backup name of the form
-- \`projects\/{project}\/instances\/{instance}\/clusters\/{cluster}\`.
picbpName :: Lens' ProjectsInstancesClustersBackupsPatch Text
picbpName
  = lens _picbpName (\ s a -> s{_picbpName = a})

-- | JSONP
picbpCallback :: Lens' ProjectsInstancesClustersBackupsPatch (Maybe Text)
picbpCallback
  = lens _picbpCallback
      (\ s a -> s{_picbpCallback = a})

instance GoogleRequest
           ProjectsInstancesClustersBackupsPatch
         where
        type Rs ProjectsInstancesClustersBackupsPatch =
             Backup
        type Scopes ProjectsInstancesClustersBackupsPatch =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.table",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsInstancesClustersBackupsPatch'{..}
          = go _picbpName _picbpXgafv _picbpUploadProtocol
              _picbpUpdateMask
              _picbpAccessToken
              _picbpUploadType
              _picbpCallback
              (Just AltJSON)
              _picbpPayload
              bigtableAdminService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesClustersBackupsPatchResource)
                      mempty
