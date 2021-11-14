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
-- Module      : Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Backups.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a pending or completed Cloud Bigtable backup.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.clusters.backups.delete@.
module Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Backups.Delete
    (
    -- * REST Resource
      ProjectsInstancesClustersBackupsDeleteResource

    -- * Creating a Request
    , projectsInstancesClustersBackupsDelete
    , ProjectsInstancesClustersBackupsDelete

    -- * Request Lenses
    , picbdXgafv
    , picbdUploadProtocol
    , picbdAccessToken
    , picbdUploadType
    , picbdName
    , picbdCallback
    ) where

import Network.Google.BigtableAdmin.Types
import Network.Google.Prelude

-- | A resource alias for @bigtableadmin.projects.instances.clusters.backups.delete@ method which the
-- 'ProjectsInstancesClustersBackupsDelete' request conforms to.
type ProjectsInstancesClustersBackupsDeleteResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a pending or completed Cloud Bigtable backup.
--
-- /See:/ 'projectsInstancesClustersBackupsDelete' smart constructor.
data ProjectsInstancesClustersBackupsDelete =
  ProjectsInstancesClustersBackupsDelete'
    { _picbdXgafv :: !(Maybe Xgafv)
    , _picbdUploadProtocol :: !(Maybe Text)
    , _picbdAccessToken :: !(Maybe Text)
    , _picbdUploadType :: !(Maybe Text)
    , _picbdName :: !Text
    , _picbdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesClustersBackupsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'picbdXgafv'
--
-- * 'picbdUploadProtocol'
--
-- * 'picbdAccessToken'
--
-- * 'picbdUploadType'
--
-- * 'picbdName'
--
-- * 'picbdCallback'
projectsInstancesClustersBackupsDelete
    :: Text -- ^ 'picbdName'
    -> ProjectsInstancesClustersBackupsDelete
projectsInstancesClustersBackupsDelete pPicbdName_ =
  ProjectsInstancesClustersBackupsDelete'
    { _picbdXgafv = Nothing
    , _picbdUploadProtocol = Nothing
    , _picbdAccessToken = Nothing
    , _picbdUploadType = Nothing
    , _picbdName = pPicbdName_
    , _picbdCallback = Nothing
    }


-- | V1 error format.
picbdXgafv :: Lens' ProjectsInstancesClustersBackupsDelete (Maybe Xgafv)
picbdXgafv
  = lens _picbdXgafv (\ s a -> s{_picbdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
picbdUploadProtocol :: Lens' ProjectsInstancesClustersBackupsDelete (Maybe Text)
picbdUploadProtocol
  = lens _picbdUploadProtocol
      (\ s a -> s{_picbdUploadProtocol = a})

-- | OAuth access token.
picbdAccessToken :: Lens' ProjectsInstancesClustersBackupsDelete (Maybe Text)
picbdAccessToken
  = lens _picbdAccessToken
      (\ s a -> s{_picbdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
picbdUploadType :: Lens' ProjectsInstancesClustersBackupsDelete (Maybe Text)
picbdUploadType
  = lens _picbdUploadType
      (\ s a -> s{_picbdUploadType = a})

-- | Required. Name of the backup to delete. Values are of the form
-- \`projects\/{project}\/instances\/{instance}\/clusters\/{cluster}\/backups\/{backup}\`.
picbdName :: Lens' ProjectsInstancesClustersBackupsDelete Text
picbdName
  = lens _picbdName (\ s a -> s{_picbdName = a})

-- | JSONP
picbdCallback :: Lens' ProjectsInstancesClustersBackupsDelete (Maybe Text)
picbdCallback
  = lens _picbdCallback
      (\ s a -> s{_picbdCallback = a})

instance GoogleRequest
           ProjectsInstancesClustersBackupsDelete
         where
        type Rs ProjectsInstancesClustersBackupsDelete =
             Empty
        type Scopes ProjectsInstancesClustersBackupsDelete =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.table",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsInstancesClustersBackupsDelete'{..}
          = go _picbdName _picbdXgafv _picbdUploadProtocol
              _picbdAccessToken
              _picbdUploadType
              _picbdCallback
              (Just AltJSON)
              bigtableAdminService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesClustersBackupsDeleteResource)
                      mempty
