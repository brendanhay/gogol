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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.Clusters.Start
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a cluster in a project.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.clusters.start@.
module Network.Google.Resource.Dataproc.Projects.Regions.Clusters.Start
    (
    -- * REST Resource
      ProjectsRegionsClustersStartResource

    -- * Creating a Request
    , projectsRegionsClustersStart
    , ProjectsRegionsClustersStart

    -- * Request Lenses
    , pXgafv
    , pUploadProtocol
    , pAccessToken
    , pUploadType
    , pPayload
    , pClusterName
    , pRegion
    , pProjectId
    , pCallback
    ) where

import Network.Google.Dataproc.Types
import Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.clusters.start@ method which the
-- 'ProjectsRegionsClustersStart' request conforms to.
type ProjectsRegionsClustersStartResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "regions" :>
             Capture "region" Text :>
               "clusters" :>
                 CaptureMode "clusterName" "start" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] StartClusterRequest :>
                                 Post '[JSON] Operation

-- | Starts a cluster in a project.
--
-- /See:/ 'projectsRegionsClustersStart' smart constructor.
data ProjectsRegionsClustersStart =
  ProjectsRegionsClustersStart'
    { _pXgafv :: !(Maybe Xgafv)
    , _pUploadProtocol :: !(Maybe Text)
    , _pAccessToken :: !(Maybe Text)
    , _pUploadType :: !(Maybe Text)
    , _pPayload :: !StartClusterRequest
    , _pClusterName :: !Text
    , _pRegion :: !Text
    , _pProjectId :: !Text
    , _pCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsRegionsClustersStart' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pXgafv'
--
-- * 'pUploadProtocol'
--
-- * 'pAccessToken'
--
-- * 'pUploadType'
--
-- * 'pPayload'
--
-- * 'pClusterName'
--
-- * 'pRegion'
--
-- * 'pProjectId'
--
-- * 'pCallback'
projectsRegionsClustersStart
    :: StartClusterRequest -- ^ 'pPayload'
    -> Text -- ^ 'pClusterName'
    -> Text -- ^ 'pRegion'
    -> Text -- ^ 'pProjectId'
    -> ProjectsRegionsClustersStart
projectsRegionsClustersStart pPPayload_ pPClusterName_ pPRegion_ pPProjectId_ =
  ProjectsRegionsClustersStart'
    { _pXgafv = Nothing
    , _pUploadProtocol = Nothing
    , _pAccessToken = Nothing
    , _pUploadType = Nothing
    , _pPayload = pPPayload_
    , _pClusterName = pPClusterName_
    , _pRegion = pPRegion_
    , _pProjectId = pPProjectId_
    , _pCallback = Nothing
    }


-- | V1 error format.
pXgafv :: Lens' ProjectsRegionsClustersStart (Maybe Xgafv)
pXgafv = lens _pXgafv (\ s a -> s{_pXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pUploadProtocol :: Lens' ProjectsRegionsClustersStart (Maybe Text)
pUploadProtocol
  = lens _pUploadProtocol
      (\ s a -> s{_pUploadProtocol = a})

-- | OAuth access token.
pAccessToken :: Lens' ProjectsRegionsClustersStart (Maybe Text)
pAccessToken
  = lens _pAccessToken (\ s a -> s{_pAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pUploadType :: Lens' ProjectsRegionsClustersStart (Maybe Text)
pUploadType
  = lens _pUploadType (\ s a -> s{_pUploadType = a})

-- | Multipart request metadata.
pPayload :: Lens' ProjectsRegionsClustersStart StartClusterRequest
pPayload = lens _pPayload (\ s a -> s{_pPayload = a})

-- | Required. The cluster name.
pClusterName :: Lens' ProjectsRegionsClustersStart Text
pClusterName
  = lens _pClusterName (\ s a -> s{_pClusterName = a})

-- | Required. The Dataproc region in which to handle the request.
pRegion :: Lens' ProjectsRegionsClustersStart Text
pRegion = lens _pRegion (\ s a -> s{_pRegion = a})

-- | Required. The ID of the Google Cloud Platform project the cluster
-- belongs to.
pProjectId :: Lens' ProjectsRegionsClustersStart Text
pProjectId
  = lens _pProjectId (\ s a -> s{_pProjectId = a})

-- | JSONP
pCallback :: Lens' ProjectsRegionsClustersStart (Maybe Text)
pCallback
  = lens _pCallback (\ s a -> s{_pCallback = a})

instance GoogleRequest ProjectsRegionsClustersStart
         where
        type Rs ProjectsRegionsClustersStart = Operation
        type Scopes ProjectsRegionsClustersStart =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsRegionsClustersStart'{..}
          = go _pProjectId _pRegion _pClusterName _pXgafv
              _pUploadProtocol
              _pAccessToken
              _pUploadType
              _pCallback
              (Just AltJSON)
              _pPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsRegionsClustersStartResource)
                      mempty
