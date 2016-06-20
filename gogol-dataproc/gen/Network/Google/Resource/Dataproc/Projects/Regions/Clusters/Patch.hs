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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a cluster in a project.
--
-- /See:/ <https://cloud.google.com/dataproc/ Google Cloud Dataproc API Reference> for @dataproc.projects.regions.clusters.patch@.
module Network.Google.Resource.Dataproc.Projects.Regions.Clusters.Patch
    (
    -- * REST Resource
      ProjectsRegionsClustersPatchResource

    -- * Creating a Request
    , projectsRegionsClustersPatch
    , ProjectsRegionsClustersPatch

    -- * Request Lenses
    , prcpXgafv
    , prcpUploadProtocol
    , prcpUpdateMask
    , prcpPp
    , prcpAccessToken
    , prcpUploadType
    , prcpPayload
    , prcpBearerToken
    , prcpClusterName
    , prcpRegion
    , prcpProjectId
    , prcpCallback
    ) where

import           Network.Google.Dataproc.Types
import           Network.Google.Prelude

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
                   QueryParam "$.xgafv" Text :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "updateMask" Text :>
                         QueryParam "pp" Bool :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "bearer_token" Text :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     ReqBody '[JSON] Cluster :>
                                       Patch '[JSON] Operation

-- | Updates a cluster in a project.
--
-- /See:/ 'projectsRegionsClustersPatch' smart constructor.
data ProjectsRegionsClustersPatch = ProjectsRegionsClustersPatch'
    { _prcpXgafv          :: !(Maybe Text)
    , _prcpUploadProtocol :: !(Maybe Text)
    , _prcpUpdateMask     :: !(Maybe Text)
    , _prcpPp             :: !Bool
    , _prcpAccessToken    :: !(Maybe Text)
    , _prcpUploadType     :: !(Maybe Text)
    , _prcpPayload        :: !Cluster
    , _prcpBearerToken    :: !(Maybe Text)
    , _prcpClusterName    :: !Text
    , _prcpRegion         :: !Text
    , _prcpProjectId      :: !Text
    , _prcpCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsRegionsClustersPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prcpXgafv'
--
-- * 'prcpUploadProtocol'
--
-- * 'prcpUpdateMask'
--
-- * 'prcpPp'
--
-- * 'prcpAccessToken'
--
-- * 'prcpUploadType'
--
-- * 'prcpPayload'
--
-- * 'prcpBearerToken'
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
    , _prcpUploadProtocol = Nothing
    , _prcpUpdateMask = Nothing
    , _prcpPp = True
    , _prcpAccessToken = Nothing
    , _prcpUploadType = Nothing
    , _prcpPayload = pPrcpPayload_
    , _prcpBearerToken = Nothing
    , _prcpClusterName = pPrcpClusterName_
    , _prcpRegion = pPrcpRegion_
    , _prcpProjectId = pPrcpProjectId_
    , _prcpCallback = Nothing
    }

-- | V1 error format.
prcpXgafv :: Lens' ProjectsRegionsClustersPatch (Maybe Text)
prcpXgafv
  = lens _prcpXgafv (\ s a -> s{_prcpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prcpUploadProtocol :: Lens' ProjectsRegionsClustersPatch (Maybe Text)
prcpUploadProtocol
  = lens _prcpUploadProtocol
      (\ s a -> s{_prcpUploadProtocol = a})

-- | [Required] Specifies the path, relative to Cluster, of the field to
-- update. For example, to change the number of workers in a cluster to 5,
-- the update_mask parameter would be specified as
-- config.worker_config.num_instances, and the \`PATCH\` request body would
-- specify the new value, as follows: { \"config\":{ \"workerConfig\":{
-- \"numInstances\":\"5\" } } } Similarly, to change the number of
-- preemptible workers in a cluster to 5, the update_mask parameter would
-- be config.secondary_worker_config.num_instances, and the \`PATCH\`
-- request body would be set as follows: { \"config\":{
-- \"secondaryWorkerConfig\":{ \"numInstances\":\"5\" } } } Note:
-- Currently, config.worker_config.num_instances and
-- config.secondary_worker_config.num_instances are the only fields that
-- can be updated.
prcpUpdateMask :: Lens' ProjectsRegionsClustersPatch (Maybe Text)
prcpUpdateMask
  = lens _prcpUpdateMask
      (\ s a -> s{_prcpUpdateMask = a})

-- | Pretty-print response.
prcpPp :: Lens' ProjectsRegionsClustersPatch Bool
prcpPp = lens _prcpPp (\ s a -> s{_prcpPp = a})

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

-- | OAuth bearer token.
prcpBearerToken :: Lens' ProjectsRegionsClustersPatch (Maybe Text)
prcpBearerToken
  = lens _prcpBearerToken
      (\ s a -> s{_prcpBearerToken = a})

-- | [Required] The cluster name.
prcpClusterName :: Lens' ProjectsRegionsClustersPatch Text
prcpClusterName
  = lens _prcpClusterName
      (\ s a -> s{_prcpClusterName = a})

-- | [Required] The Cloud Dataproc region in which to handle the request.
prcpRegion :: Lens' ProjectsRegionsClustersPatch Text
prcpRegion
  = lens _prcpRegion (\ s a -> s{_prcpRegion = a})

-- | [Required] The ID of the Google Cloud Platform project the cluster
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
              _prcpUploadProtocol
              _prcpUpdateMask
              (Just _prcpPp)
              _prcpAccessToken
              _prcpUploadType
              _prcpBearerToken
              _prcpCallback
              (Just AltJSON)
              _prcpPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsRegionsClustersPatchResource)
                      mempty
