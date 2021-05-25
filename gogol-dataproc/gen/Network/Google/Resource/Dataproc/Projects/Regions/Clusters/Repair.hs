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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.Clusters.Repair
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Repairs a cluster.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.clusters.repair@.
module Network.Google.Resource.Dataproc.Projects.Regions.Clusters.Repair
    (
    -- * REST Resource
      ProjectsRegionsClustersRepairResource

    -- * Creating a Request
    , projectsRegionsClustersRepair
    , ProjectsRegionsClustersRepair

    -- * Request Lenses
    , prcrXgafv
    , prcrUploadProtocol
    , prcrAccessToken
    , prcrUploadType
    , prcrPayload
    , prcrClusterName
    , prcrRegion
    , prcrProjectId
    , prcrCallback
    ) where

import Network.Google.Dataproc.Types
import Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.clusters.repair@ method which the
-- 'ProjectsRegionsClustersRepair' request conforms to.
type ProjectsRegionsClustersRepairResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "regions" :>
             Capture "region" Text :>
               "clusters" :>
                 CaptureMode "clusterName" "repair" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] RepairClusterRequest :>
                                 Post '[JSON] Operation

-- | Repairs a cluster.
--
-- /See:/ 'projectsRegionsClustersRepair' smart constructor.
data ProjectsRegionsClustersRepair =
  ProjectsRegionsClustersRepair'
    { _prcrXgafv :: !(Maybe Xgafv)
    , _prcrUploadProtocol :: !(Maybe Text)
    , _prcrAccessToken :: !(Maybe Text)
    , _prcrUploadType :: !(Maybe Text)
    , _prcrPayload :: !RepairClusterRequest
    , _prcrClusterName :: !Text
    , _prcrRegion :: !Text
    , _prcrProjectId :: !Text
    , _prcrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsRegionsClustersRepair' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prcrXgafv'
--
-- * 'prcrUploadProtocol'
--
-- * 'prcrAccessToken'
--
-- * 'prcrUploadType'
--
-- * 'prcrPayload'
--
-- * 'prcrClusterName'
--
-- * 'prcrRegion'
--
-- * 'prcrProjectId'
--
-- * 'prcrCallback'
projectsRegionsClustersRepair
    :: RepairClusterRequest -- ^ 'prcrPayload'
    -> Text -- ^ 'prcrClusterName'
    -> Text -- ^ 'prcrRegion'
    -> Text -- ^ 'prcrProjectId'
    -> ProjectsRegionsClustersRepair
projectsRegionsClustersRepair pPrcrPayload_ pPrcrClusterName_ pPrcrRegion_ pPrcrProjectId_ =
  ProjectsRegionsClustersRepair'
    { _prcrXgafv = Nothing
    , _prcrUploadProtocol = Nothing
    , _prcrAccessToken = Nothing
    , _prcrUploadType = Nothing
    , _prcrPayload = pPrcrPayload_
    , _prcrClusterName = pPrcrClusterName_
    , _prcrRegion = pPrcrRegion_
    , _prcrProjectId = pPrcrProjectId_
    , _prcrCallback = Nothing
    }


-- | V1 error format.
prcrXgafv :: Lens' ProjectsRegionsClustersRepair (Maybe Xgafv)
prcrXgafv
  = lens _prcrXgafv (\ s a -> s{_prcrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prcrUploadProtocol :: Lens' ProjectsRegionsClustersRepair (Maybe Text)
prcrUploadProtocol
  = lens _prcrUploadProtocol
      (\ s a -> s{_prcrUploadProtocol = a})

-- | OAuth access token.
prcrAccessToken :: Lens' ProjectsRegionsClustersRepair (Maybe Text)
prcrAccessToken
  = lens _prcrAccessToken
      (\ s a -> s{_prcrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prcrUploadType :: Lens' ProjectsRegionsClustersRepair (Maybe Text)
prcrUploadType
  = lens _prcrUploadType
      (\ s a -> s{_prcrUploadType = a})

-- | Multipart request metadata.
prcrPayload :: Lens' ProjectsRegionsClustersRepair RepairClusterRequest
prcrPayload
  = lens _prcrPayload (\ s a -> s{_prcrPayload = a})

-- | Required. The cluster name.
prcrClusterName :: Lens' ProjectsRegionsClustersRepair Text
prcrClusterName
  = lens _prcrClusterName
      (\ s a -> s{_prcrClusterName = a})

-- | Required. The Dataproc region in which to handle the request.
prcrRegion :: Lens' ProjectsRegionsClustersRepair Text
prcrRegion
  = lens _prcrRegion (\ s a -> s{_prcrRegion = a})

-- | Required. The ID of the Google Cloud Platform project the cluster
-- belongs to.
prcrProjectId :: Lens' ProjectsRegionsClustersRepair Text
prcrProjectId
  = lens _prcrProjectId
      (\ s a -> s{_prcrProjectId = a})

-- | JSONP
prcrCallback :: Lens' ProjectsRegionsClustersRepair (Maybe Text)
prcrCallback
  = lens _prcrCallback (\ s a -> s{_prcrCallback = a})

instance GoogleRequest ProjectsRegionsClustersRepair
         where
        type Rs ProjectsRegionsClustersRepair = Operation
        type Scopes ProjectsRegionsClustersRepair =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsRegionsClustersRepair'{..}
          = go _prcrProjectId _prcrRegion _prcrClusterName
              _prcrXgafv
              _prcrUploadProtocol
              _prcrAccessToken
              _prcrUploadType
              _prcrCallback
              (Just AltJSON)
              _prcrPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsRegionsClustersRepairResource)
                      mempty
