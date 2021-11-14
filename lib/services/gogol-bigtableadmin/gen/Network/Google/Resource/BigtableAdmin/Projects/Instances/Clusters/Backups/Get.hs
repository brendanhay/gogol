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
-- Module      : Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Backups.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets metadata on a pending or completed Cloud Bigtable Backup.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.clusters.backups.get@.
module Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Backups.Get
    (
    -- * REST Resource
      ProjectsInstancesClustersBackupsGetResource

    -- * Creating a Request
    , projectsInstancesClustersBackupsGet
    , ProjectsInstancesClustersBackupsGet

    -- * Request Lenses
    , picbgXgafv
    , picbgUploadProtocol
    , picbgAccessToken
    , picbgUploadType
    , picbgName
    , picbgCallback
    ) where

import Network.Google.BigtableAdmin.Types
import Network.Google.Prelude

-- | A resource alias for @bigtableadmin.projects.instances.clusters.backups.get@ method which the
-- 'ProjectsInstancesClustersBackupsGet' request conforms to.
type ProjectsInstancesClustersBackupsGetResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Backup

-- | Gets metadata on a pending or completed Cloud Bigtable Backup.
--
-- /See:/ 'projectsInstancesClustersBackupsGet' smart constructor.
data ProjectsInstancesClustersBackupsGet =
  ProjectsInstancesClustersBackupsGet'
    { _picbgXgafv :: !(Maybe Xgafv)
    , _picbgUploadProtocol :: !(Maybe Text)
    , _picbgAccessToken :: !(Maybe Text)
    , _picbgUploadType :: !(Maybe Text)
    , _picbgName :: !Text
    , _picbgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesClustersBackupsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'picbgXgafv'
--
-- * 'picbgUploadProtocol'
--
-- * 'picbgAccessToken'
--
-- * 'picbgUploadType'
--
-- * 'picbgName'
--
-- * 'picbgCallback'
projectsInstancesClustersBackupsGet
    :: Text -- ^ 'picbgName'
    -> ProjectsInstancesClustersBackupsGet
projectsInstancesClustersBackupsGet pPicbgName_ =
  ProjectsInstancesClustersBackupsGet'
    { _picbgXgafv = Nothing
    , _picbgUploadProtocol = Nothing
    , _picbgAccessToken = Nothing
    , _picbgUploadType = Nothing
    , _picbgName = pPicbgName_
    , _picbgCallback = Nothing
    }


-- | V1 error format.
picbgXgafv :: Lens' ProjectsInstancesClustersBackupsGet (Maybe Xgafv)
picbgXgafv
  = lens _picbgXgafv (\ s a -> s{_picbgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
picbgUploadProtocol :: Lens' ProjectsInstancesClustersBackupsGet (Maybe Text)
picbgUploadProtocol
  = lens _picbgUploadProtocol
      (\ s a -> s{_picbgUploadProtocol = a})

-- | OAuth access token.
picbgAccessToken :: Lens' ProjectsInstancesClustersBackupsGet (Maybe Text)
picbgAccessToken
  = lens _picbgAccessToken
      (\ s a -> s{_picbgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
picbgUploadType :: Lens' ProjectsInstancesClustersBackupsGet (Maybe Text)
picbgUploadType
  = lens _picbgUploadType
      (\ s a -> s{_picbgUploadType = a})

-- | Required. Name of the backup. Values are of the form
-- \`projects\/{project}\/instances\/{instance}\/clusters\/{cluster}\/backups\/{backup}\`.
picbgName :: Lens' ProjectsInstancesClustersBackupsGet Text
picbgName
  = lens _picbgName (\ s a -> s{_picbgName = a})

-- | JSONP
picbgCallback :: Lens' ProjectsInstancesClustersBackupsGet (Maybe Text)
picbgCallback
  = lens _picbgCallback
      (\ s a -> s{_picbgCallback = a})

instance GoogleRequest
           ProjectsInstancesClustersBackupsGet
         where
        type Rs ProjectsInstancesClustersBackupsGet = Backup
        type Scopes ProjectsInstancesClustersBackupsGet =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.table",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsInstancesClustersBackupsGet'{..}
          = go _picbgName _picbgXgafv _picbgUploadProtocol
              _picbgAccessToken
              _picbgUploadType
              _picbgCallback
              (Just AltJSON)
              bigtableAdminService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesClustersBackupsGetResource)
                      mempty
