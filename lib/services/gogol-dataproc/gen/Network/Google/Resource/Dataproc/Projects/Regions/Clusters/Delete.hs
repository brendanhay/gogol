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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.Clusters.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a cluster in a project. The returned Operation.metadata will be
-- ClusterOperationMetadata
-- (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#clusteroperationmetadata).
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.clusters.delete@.
module Network.Google.Resource.Dataproc.Projects.Regions.Clusters.Delete
    (
    -- * REST Resource
      ProjectsRegionsClustersDeleteResource

    -- * Creating a Request
    , projectsRegionsClustersDelete
    , ProjectsRegionsClustersDelete

    -- * Request Lenses
    , prcdXgafv
    , prcdRequestId
    , prcdClusterUuid
    , prcdUploadProtocol
    , prcdAccessToken
    , prcdUploadType
    , prcdClusterName
    , prcdRegion
    , prcdProjectId
    , prcdCallback
    ) where

import Network.Google.Dataproc.Types
import Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.clusters.delete@ method which the
-- 'ProjectsRegionsClustersDelete' request conforms to.
type ProjectsRegionsClustersDeleteResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "regions" :>
             Capture "region" Text :>
               "clusters" :>
                 Capture "clusterName" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "requestId" Text :>
                       QueryParam "clusterUuid" Text :>
                         QueryParam "upload_protocol" Text :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Delete '[JSON] Operation

-- | Deletes a cluster in a project. The returned Operation.metadata will be
-- ClusterOperationMetadata
-- (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#clusteroperationmetadata).
--
-- /See:/ 'projectsRegionsClustersDelete' smart constructor.
data ProjectsRegionsClustersDelete =
  ProjectsRegionsClustersDelete'
    { _prcdXgafv :: !(Maybe Xgafv)
    , _prcdRequestId :: !(Maybe Text)
    , _prcdClusterUuid :: !(Maybe Text)
    , _prcdUploadProtocol :: !(Maybe Text)
    , _prcdAccessToken :: !(Maybe Text)
    , _prcdUploadType :: !(Maybe Text)
    , _prcdClusterName :: !Text
    , _prcdRegion :: !Text
    , _prcdProjectId :: !Text
    , _prcdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsRegionsClustersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prcdXgafv'
--
-- * 'prcdRequestId'
--
-- * 'prcdClusterUuid'
--
-- * 'prcdUploadProtocol'
--
-- * 'prcdAccessToken'
--
-- * 'prcdUploadType'
--
-- * 'prcdClusterName'
--
-- * 'prcdRegion'
--
-- * 'prcdProjectId'
--
-- * 'prcdCallback'
projectsRegionsClustersDelete
    :: Text -- ^ 'prcdClusterName'
    -> Text -- ^ 'prcdRegion'
    -> Text -- ^ 'prcdProjectId'
    -> ProjectsRegionsClustersDelete
projectsRegionsClustersDelete pPrcdClusterName_ pPrcdRegion_ pPrcdProjectId_ =
  ProjectsRegionsClustersDelete'
    { _prcdXgafv = Nothing
    , _prcdRequestId = Nothing
    , _prcdClusterUuid = Nothing
    , _prcdUploadProtocol = Nothing
    , _prcdAccessToken = Nothing
    , _prcdUploadType = Nothing
    , _prcdClusterName = pPrcdClusterName_
    , _prcdRegion = pPrcdRegion_
    , _prcdProjectId = pPrcdProjectId_
    , _prcdCallback = Nothing
    }


-- | V1 error format.
prcdXgafv :: Lens' ProjectsRegionsClustersDelete (Maybe Xgafv)
prcdXgafv
  = lens _prcdXgafv (\ s a -> s{_prcdXgafv = a})

-- | Optional. A unique ID used to identify the request. If the server
-- receives two DeleteClusterRequest
-- (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#google.cloud.dataproc.v1.DeleteClusterRequest)s
-- with the same id, then the second request will be ignored and the first
-- google.longrunning.Operation created and stored in the backend is
-- returned.It is recommended to always set this value to a UUID
-- (https:\/\/en.wikipedia.org\/wiki\/Universally_unique_identifier).The ID
-- must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
-- and hyphens (-). The maximum length is 40 characters.
prcdRequestId :: Lens' ProjectsRegionsClustersDelete (Maybe Text)
prcdRequestId
  = lens _prcdRequestId
      (\ s a -> s{_prcdRequestId = a})

-- | Optional. Specifying the cluster_uuid means the RPC should fail (with
-- error NOT_FOUND) if cluster with specified UUID does not exist.
prcdClusterUuid :: Lens' ProjectsRegionsClustersDelete (Maybe Text)
prcdClusterUuid
  = lens _prcdClusterUuid
      (\ s a -> s{_prcdClusterUuid = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prcdUploadProtocol :: Lens' ProjectsRegionsClustersDelete (Maybe Text)
prcdUploadProtocol
  = lens _prcdUploadProtocol
      (\ s a -> s{_prcdUploadProtocol = a})

-- | OAuth access token.
prcdAccessToken :: Lens' ProjectsRegionsClustersDelete (Maybe Text)
prcdAccessToken
  = lens _prcdAccessToken
      (\ s a -> s{_prcdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prcdUploadType :: Lens' ProjectsRegionsClustersDelete (Maybe Text)
prcdUploadType
  = lens _prcdUploadType
      (\ s a -> s{_prcdUploadType = a})

-- | Required. The cluster name.
prcdClusterName :: Lens' ProjectsRegionsClustersDelete Text
prcdClusterName
  = lens _prcdClusterName
      (\ s a -> s{_prcdClusterName = a})

-- | Required. The Dataproc region in which to handle the request.
prcdRegion :: Lens' ProjectsRegionsClustersDelete Text
prcdRegion
  = lens _prcdRegion (\ s a -> s{_prcdRegion = a})

-- | Required. The ID of the Google Cloud Platform project that the cluster
-- belongs to.
prcdProjectId :: Lens' ProjectsRegionsClustersDelete Text
prcdProjectId
  = lens _prcdProjectId
      (\ s a -> s{_prcdProjectId = a})

-- | JSONP
prcdCallback :: Lens' ProjectsRegionsClustersDelete (Maybe Text)
prcdCallback
  = lens _prcdCallback (\ s a -> s{_prcdCallback = a})

instance GoogleRequest ProjectsRegionsClustersDelete
         where
        type Rs ProjectsRegionsClustersDelete = Operation
        type Scopes ProjectsRegionsClustersDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsRegionsClustersDelete'{..}
          = go _prcdProjectId _prcdRegion _prcdClusterName
              _prcdXgafv
              _prcdRequestId
              _prcdClusterUuid
              _prcdUploadProtocol
              _prcdAccessToken
              _prcdUploadType
              _prcdCallback
              (Just AltJSON)
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsRegionsClustersDeleteResource)
                      mempty
