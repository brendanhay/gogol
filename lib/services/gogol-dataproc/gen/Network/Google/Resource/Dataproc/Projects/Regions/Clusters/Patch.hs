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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.Clusters.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a cluster in a project. The returned Operation.metadata will be
-- ClusterOperationMetadata
-- (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#clusteroperationmetadata).
-- The cluster must be in a RUNNING state or an error is returned.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.clusters.patch@.
module Network.Google.Resource.Dataproc.Projects.Regions.Clusters.Patch
    (
    -- * REST Resource
      ProjectsRegionsClustersPatchResource

    -- * Creating a Request
    , projectsRegionsClustersPatch
    , ProjectsRegionsClustersPatch

    -- * Request Lenses
    , prcpXgafv
    , prcpRequestId
    , prcpUploadProtocol
    , prcpUpdateMask
    , prcpAccessToken
    , prcpUploadType
    , prcpPayload
    , prcpGracefulDecommissionTimeout
    , prcpClusterName
    , prcpRegion
    , prcpProjectId
    , prcpCallback
    ) where

import Network.Google.Dataproc.Types
import Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.clusters.patch@ method which the
-- 'ProjectsRegionsClustersPatch' request conforms to.
type ProjectsRegionsClustersPatchResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "regions" :>
             Capture "region" Text :>
               "clusters" :>
                 Capture "clusterName" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "requestId" Text :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "updateMask" GFieldMask :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "gracefulDecommissionTimeout"
                                 GDuration
                                 :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     ReqBody '[JSON] Cluster :>
                                       Patch '[JSON] Operation

-- | Updates a cluster in a project. The returned Operation.metadata will be
-- ClusterOperationMetadata
-- (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#clusteroperationmetadata).
-- The cluster must be in a RUNNING state or an error is returned.
--
-- /See:/ 'projectsRegionsClustersPatch' smart constructor.
data ProjectsRegionsClustersPatch =
  ProjectsRegionsClustersPatch'
    { _prcpXgafv :: !(Maybe Xgafv)
    , _prcpRequestId :: !(Maybe Text)
    , _prcpUploadProtocol :: !(Maybe Text)
    , _prcpUpdateMask :: !(Maybe GFieldMask)
    , _prcpAccessToken :: !(Maybe Text)
    , _prcpUploadType :: !(Maybe Text)
    , _prcpPayload :: !Cluster
    , _prcpGracefulDecommissionTimeout :: !(Maybe GDuration)
    , _prcpClusterName :: !Text
    , _prcpRegion :: !Text
    , _prcpProjectId :: !Text
    , _prcpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsRegionsClustersPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prcpXgafv'
--
-- * 'prcpRequestId'
--
-- * 'prcpUploadProtocol'
--
-- * 'prcpUpdateMask'
--
-- * 'prcpAccessToken'
--
-- * 'prcpUploadType'
--
-- * 'prcpPayload'
--
-- * 'prcpGracefulDecommissionTimeout'
--
-- * 'prcpClusterName'
--
-- * 'prcpRegion'
--
-- * 'prcpProjectId'
--
-- * 'prcpCallback'
projectsRegionsClustersPatch
    :: Cluster -- ^ 'prcpPayload'
    -> Text -- ^ 'prcpClusterName'
    -> Text -- ^ 'prcpRegion'
    -> Text -- ^ 'prcpProjectId'
    -> ProjectsRegionsClustersPatch
projectsRegionsClustersPatch pPrcpPayload_ pPrcpClusterName_ pPrcpRegion_ pPrcpProjectId_ =
  ProjectsRegionsClustersPatch'
    { _prcpXgafv = Nothing
    , _prcpRequestId = Nothing
    , _prcpUploadProtocol = Nothing
    , _prcpUpdateMask = Nothing
    , _prcpAccessToken = Nothing
    , _prcpUploadType = Nothing
    , _prcpPayload = pPrcpPayload_
    , _prcpGracefulDecommissionTimeout = Nothing
    , _prcpClusterName = pPrcpClusterName_
    , _prcpRegion = pPrcpRegion_
    , _prcpProjectId = pPrcpProjectId_
    , _prcpCallback = Nothing
    }


-- | V1 error format.
prcpXgafv :: Lens' ProjectsRegionsClustersPatch (Maybe Xgafv)
prcpXgafv
  = lens _prcpXgafv (\ s a -> s{_prcpXgafv = a})

-- | Optional. A unique ID used to identify the request. If the server
-- receives two UpdateClusterRequest
-- (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#google.cloud.dataproc.v1.UpdateClusterRequest)s
-- with the same id, then the second request will be ignored and the first
-- google.longrunning.Operation created and stored in the backend is
-- returned.It is recommended to always set this value to a UUID
-- (https:\/\/en.wikipedia.org\/wiki\/Universally_unique_identifier).The ID
-- must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
-- and hyphens (-). The maximum length is 40 characters.
prcpRequestId :: Lens' ProjectsRegionsClustersPatch (Maybe Text)
prcpRequestId
  = lens _prcpRequestId
      (\ s a -> s{_prcpRequestId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prcpUploadProtocol :: Lens' ProjectsRegionsClustersPatch (Maybe Text)
prcpUploadProtocol
  = lens _prcpUploadProtocol
      (\ s a -> s{_prcpUploadProtocol = a})

-- | Required. Specifies the path, relative to Cluster, of the field to
-- update. For example, to change the number of workers in a cluster to 5,
-- the update_mask parameter would be specified as
-- config.worker_config.num_instances, and the PATCH request body would
-- specify the new value, as follows: { \"config\":{ \"workerConfig\":{
-- \"numInstances\":\"5\" } } } Similarly, to change the number of
-- preemptible workers in a cluster to 5, the update_mask parameter would
-- be config.secondary_worker_config.num_instances, and the PATCH request
-- body would be set as follows: { \"config\":{ \"secondaryWorkerConfig\":{
-- \"numInstances\":\"5\" } } } *Note:* Currently, only the following
-- fields can be updated: *Mask* *Purpose* *labels* Update labels
-- *config.worker_config.num_instances* Resize primary worker group
-- *config.secondary_worker_config.num_instances* Resize secondary worker
-- group config.autoscaling_config.policy_uri Use, stop using, or change
-- autoscaling policies
prcpUpdateMask :: Lens' ProjectsRegionsClustersPatch (Maybe GFieldMask)
prcpUpdateMask
  = lens _prcpUpdateMask
      (\ s a -> s{_prcpUpdateMask = a})

-- | OAuth access token.
prcpAccessToken :: Lens' ProjectsRegionsClustersPatch (Maybe Text)
prcpAccessToken
  = lens _prcpAccessToken
      (\ s a -> s{_prcpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prcpUploadType :: Lens' ProjectsRegionsClustersPatch (Maybe Text)
prcpUploadType
  = lens _prcpUploadType
      (\ s a -> s{_prcpUploadType = a})

-- | Multipart request metadata.
prcpPayload :: Lens' ProjectsRegionsClustersPatch Cluster
prcpPayload
  = lens _prcpPayload (\ s a -> s{_prcpPayload = a})

-- | Optional. Timeout for graceful YARN decomissioning. Graceful
-- decommissioning allows removing nodes from the cluster without
-- interrupting jobs in progress. Timeout specifies how long to wait for
-- jobs in progress to finish before forcefully removing nodes (and
-- potentially interrupting jobs). Default timeout is 0 (for forceful
-- decommission), and the maximum allowed timeout is 1 day. (see JSON
-- representation of Duration
-- (https:\/\/developers.google.com\/protocol-buffers\/docs\/proto3#json)).Only
-- supported on Dataproc image versions 1.2 and higher.
prcpGracefulDecommissionTimeout :: Lens' ProjectsRegionsClustersPatch (Maybe Scientific)
prcpGracefulDecommissionTimeout
  = lens _prcpGracefulDecommissionTimeout
      (\ s a -> s{_prcpGracefulDecommissionTimeout = a})
      . mapping _GDuration

-- | Required. The cluster name.
prcpClusterName :: Lens' ProjectsRegionsClustersPatch Text
prcpClusterName
  = lens _prcpClusterName
      (\ s a -> s{_prcpClusterName = a})

-- | Required. The Dataproc region in which to handle the request.
prcpRegion :: Lens' ProjectsRegionsClustersPatch Text
prcpRegion
  = lens _prcpRegion (\ s a -> s{_prcpRegion = a})

-- | Required. The ID of the Google Cloud Platform project the cluster
-- belongs to.
prcpProjectId :: Lens' ProjectsRegionsClustersPatch Text
prcpProjectId
  = lens _prcpProjectId
      (\ s a -> s{_prcpProjectId = a})

-- | JSONP
prcpCallback :: Lens' ProjectsRegionsClustersPatch (Maybe Text)
prcpCallback
  = lens _prcpCallback (\ s a -> s{_prcpCallback = a})

instance GoogleRequest ProjectsRegionsClustersPatch
         where
        type Rs ProjectsRegionsClustersPatch = Operation
        type Scopes ProjectsRegionsClustersPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsRegionsClustersPatch'{..}
          = go _prcpProjectId _prcpRegion _prcpClusterName
              _prcpXgafv
              _prcpRequestId
              _prcpUploadProtocol
              _prcpUpdateMask
              _prcpAccessToken
              _prcpUploadType
              _prcpGracefulDecommissionTimeout
              _prcpCallback
              (Just AltJSON)
              _prcpPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsRegionsClustersPatchResource)
                      mempty
