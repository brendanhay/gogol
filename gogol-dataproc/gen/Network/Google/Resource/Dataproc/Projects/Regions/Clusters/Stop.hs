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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.Clusters.Stop
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops a cluster in a project.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.clusters.stop@.
module Network.Google.Resource.Dataproc.Projects.Regions.Clusters.Stop
    (
    -- * REST Resource
      ProjectsRegionsClustersStopResource

    -- * Creating a Request
    , projectsRegionsClustersStop
    , ProjectsRegionsClustersStop

    -- * Request Lenses
    , prcsXgafv
    , prcsUploadProtocol
    , prcsAccessToken
    , prcsUploadType
    , prcsPayload
    , prcsClusterName
    , prcsRegion
    , prcsProjectId
    , prcsCallback
    ) where

import Network.Google.Dataproc.Types
import Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.clusters.stop@ method which the
-- 'ProjectsRegionsClustersStop' request conforms to.
type ProjectsRegionsClustersStopResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "regions" :>
             Capture "region" Text :>
               "clusters" :>
                 CaptureMode "clusterName" "stop" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] StopClusterRequest :>
                                 Post '[JSON] Operation

-- | Stops a cluster in a project.
--
-- /See:/ 'projectsRegionsClustersStop' smart constructor.
data ProjectsRegionsClustersStop =
  ProjectsRegionsClustersStop'
    { _prcsXgafv :: !(Maybe Xgafv)
    , _prcsUploadProtocol :: !(Maybe Text)
    , _prcsAccessToken :: !(Maybe Text)
    , _prcsUploadType :: !(Maybe Text)
    , _prcsPayload :: !StopClusterRequest
    , _prcsClusterName :: !Text
    , _prcsRegion :: !Text
    , _prcsProjectId :: !Text
    , _prcsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsRegionsClustersStop' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prcsXgafv'
--
-- * 'prcsUploadProtocol'
--
-- * 'prcsAccessToken'
--
-- * 'prcsUploadType'
--
-- * 'prcsPayload'
--
-- * 'prcsClusterName'
--
-- * 'prcsRegion'
--
-- * 'prcsProjectId'
--
-- * 'prcsCallback'
projectsRegionsClustersStop
    :: StopClusterRequest -- ^ 'prcsPayload'
    -> Text -- ^ 'prcsClusterName'
    -> Text -- ^ 'prcsRegion'
    -> Text -- ^ 'prcsProjectId'
    -> ProjectsRegionsClustersStop
projectsRegionsClustersStop pPrcsPayload_ pPrcsClusterName_ pPrcsRegion_ pPrcsProjectId_ =
  ProjectsRegionsClustersStop'
    { _prcsXgafv = Nothing
    , _prcsUploadProtocol = Nothing
    , _prcsAccessToken = Nothing
    , _prcsUploadType = Nothing
    , _prcsPayload = pPrcsPayload_
    , _prcsClusterName = pPrcsClusterName_
    , _prcsRegion = pPrcsRegion_
    , _prcsProjectId = pPrcsProjectId_
    , _prcsCallback = Nothing
    }


-- | V1 error format.
prcsXgafv :: Lens' ProjectsRegionsClustersStop (Maybe Xgafv)
prcsXgafv
  = lens _prcsXgafv (\ s a -> s{_prcsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prcsUploadProtocol :: Lens' ProjectsRegionsClustersStop (Maybe Text)
prcsUploadProtocol
  = lens _prcsUploadProtocol
      (\ s a -> s{_prcsUploadProtocol = a})

-- | OAuth access token.
prcsAccessToken :: Lens' ProjectsRegionsClustersStop (Maybe Text)
prcsAccessToken
  = lens _prcsAccessToken
      (\ s a -> s{_prcsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prcsUploadType :: Lens' ProjectsRegionsClustersStop (Maybe Text)
prcsUploadType
  = lens _prcsUploadType
      (\ s a -> s{_prcsUploadType = a})

-- | Multipart request metadata.
prcsPayload :: Lens' ProjectsRegionsClustersStop StopClusterRequest
prcsPayload
  = lens _prcsPayload (\ s a -> s{_prcsPayload = a})

-- | Required. The cluster name.
prcsClusterName :: Lens' ProjectsRegionsClustersStop Text
prcsClusterName
  = lens _prcsClusterName
      (\ s a -> s{_prcsClusterName = a})

-- | Required. The Dataproc region in which to handle the request.
prcsRegion :: Lens' ProjectsRegionsClustersStop Text
prcsRegion
  = lens _prcsRegion (\ s a -> s{_prcsRegion = a})

-- | Required. The ID of the Google Cloud Platform project the cluster
-- belongs to.
prcsProjectId :: Lens' ProjectsRegionsClustersStop Text
prcsProjectId
  = lens _prcsProjectId
      (\ s a -> s{_prcsProjectId = a})

-- | JSONP
prcsCallback :: Lens' ProjectsRegionsClustersStop (Maybe Text)
prcsCallback
  = lens _prcsCallback (\ s a -> s{_prcsCallback = a})

instance GoogleRequest ProjectsRegionsClustersStop
         where
        type Rs ProjectsRegionsClustersStop = Operation
        type Scopes ProjectsRegionsClustersStop =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsRegionsClustersStop'{..}
          = go _prcsProjectId _prcsRegion _prcsClusterName
              _prcsXgafv
              _prcsUploadProtocol
              _prcsAccessToken
              _prcsUploadType
              _prcsCallback
              (Just AltJSON)
              _prcsPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsRegionsClustersStopResource)
                      mempty
