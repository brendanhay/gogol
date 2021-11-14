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
-- Module      : Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.PartialUpdateCluster
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Partially updates a cluster within a project. This method is the
-- preferred way to update a Cluster.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.clusters.partialUpdateCluster@.
module Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.PartialUpdateCluster
    (
    -- * REST Resource
      ProjectsInstancesClustersPartialUpdateClusterResource

    -- * Creating a Request
    , projectsInstancesClustersPartialUpdateCluster
    , ProjectsInstancesClustersPartialUpdateCluster

    -- * Request Lenses
    , picpucXgafv
    , picpucUploadProtocol
    , picpucUpdateMask
    , picpucAccessToken
    , picpucUploadType
    , picpucPayload
    , picpucName
    , picpucCallback
    ) where

import Network.Google.BigtableAdmin.Types
import Network.Google.Prelude

-- | A resource alias for @bigtableadmin.projects.instances.clusters.partialUpdateCluster@ method which the
-- 'ProjectsInstancesClustersPartialUpdateCluster' request conforms to.
type ProjectsInstancesClustersPartialUpdateClusterResource
     =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Cluster :> Patch '[JSON] Operation

-- | Partially updates a cluster within a project. This method is the
-- preferred way to update a Cluster.
--
-- /See:/ 'projectsInstancesClustersPartialUpdateCluster' smart constructor.
data ProjectsInstancesClustersPartialUpdateCluster =
  ProjectsInstancesClustersPartialUpdateCluster'
    { _picpucXgafv :: !(Maybe Xgafv)
    , _picpucUploadProtocol :: !(Maybe Text)
    , _picpucUpdateMask :: !(Maybe GFieldMask)
    , _picpucAccessToken :: !(Maybe Text)
    , _picpucUploadType :: !(Maybe Text)
    , _picpucPayload :: !Cluster
    , _picpucName :: !Text
    , _picpucCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesClustersPartialUpdateCluster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'picpucXgafv'
--
-- * 'picpucUploadProtocol'
--
-- * 'picpucUpdateMask'
--
-- * 'picpucAccessToken'
--
-- * 'picpucUploadType'
--
-- * 'picpucPayload'
--
-- * 'picpucName'
--
-- * 'picpucCallback'
projectsInstancesClustersPartialUpdateCluster
    :: Cluster -- ^ 'picpucPayload'
    -> Text -- ^ 'picpucName'
    -> ProjectsInstancesClustersPartialUpdateCluster
projectsInstancesClustersPartialUpdateCluster pPicpucPayload_ pPicpucName_ =
  ProjectsInstancesClustersPartialUpdateCluster'
    { _picpucXgafv = Nothing
    , _picpucUploadProtocol = Nothing
    , _picpucUpdateMask = Nothing
    , _picpucAccessToken = Nothing
    , _picpucUploadType = Nothing
    , _picpucPayload = pPicpucPayload_
    , _picpucName = pPicpucName_
    , _picpucCallback = Nothing
    }


-- | V1 error format.
picpucXgafv :: Lens' ProjectsInstancesClustersPartialUpdateCluster (Maybe Xgafv)
picpucXgafv
  = lens _picpucXgafv (\ s a -> s{_picpucXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
picpucUploadProtocol :: Lens' ProjectsInstancesClustersPartialUpdateCluster (Maybe Text)
picpucUploadProtocol
  = lens _picpucUploadProtocol
      (\ s a -> s{_picpucUploadProtocol = a})

-- | Required. The subset of Cluster fields which should be replaced. Must be
-- explicitly set.
picpucUpdateMask :: Lens' ProjectsInstancesClustersPartialUpdateCluster (Maybe GFieldMask)
picpucUpdateMask
  = lens _picpucUpdateMask
      (\ s a -> s{_picpucUpdateMask = a})

-- | OAuth access token.
picpucAccessToken :: Lens' ProjectsInstancesClustersPartialUpdateCluster (Maybe Text)
picpucAccessToken
  = lens _picpucAccessToken
      (\ s a -> s{_picpucAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
picpucUploadType :: Lens' ProjectsInstancesClustersPartialUpdateCluster (Maybe Text)
picpucUploadType
  = lens _picpucUploadType
      (\ s a -> s{_picpucUploadType = a})

-- | Multipart request metadata.
picpucPayload :: Lens' ProjectsInstancesClustersPartialUpdateCluster Cluster
picpucPayload
  = lens _picpucPayload
      (\ s a -> s{_picpucPayload = a})

-- | The unique name of the cluster. Values are of the form
-- \`projects\/{project}\/instances\/{instance}\/clusters\/a-z*\`.
picpucName :: Lens' ProjectsInstancesClustersPartialUpdateCluster Text
picpucName
  = lens _picpucName (\ s a -> s{_picpucName = a})

-- | JSONP
picpucCallback :: Lens' ProjectsInstancesClustersPartialUpdateCluster (Maybe Text)
picpucCallback
  = lens _picpucCallback
      (\ s a -> s{_picpucCallback = a})

instance GoogleRequest
           ProjectsInstancesClustersPartialUpdateCluster
         where
        type Rs ProjectsInstancesClustersPartialUpdateCluster
             = Operation
        type Scopes
               ProjectsInstancesClustersPartialUpdateCluster
             =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.cluster",
               "https://www.googleapis.com/auth/bigtable.admin.instance",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsInstancesClustersPartialUpdateCluster'{..}
          = go _picpucName _picpucXgafv _picpucUploadProtocol
              _picpucUpdateMask
              _picpucAccessToken
              _picpucUploadType
              _picpucCallback
              (Just AltJSON)
              _picpucPayload
              bigtableAdminService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsInstancesClustersPartialUpdateClusterResource)
                      mempty
