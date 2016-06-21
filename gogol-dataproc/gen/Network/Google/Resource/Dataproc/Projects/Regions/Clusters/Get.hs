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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.Clusters.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the resource representation for a cluster in a project.
--
-- /See:/ <https://cloud.google.com/dataproc/ Google Cloud Dataproc API Reference> for @dataproc.projects.regions.clusters.get@.
module Network.Google.Resource.Dataproc.Projects.Regions.Clusters.Get
    (
    -- * REST Resource
      ProjectsRegionsClustersGetResource

    -- * Creating a Request
    , projectsRegionsClustersGet
    , ProjectsRegionsClustersGet

    -- * Request Lenses
    , prcgXgafv
    , prcgUploadProtocol
    , prcgPp
    , prcgAccessToken
    , prcgUploadType
    , prcgBearerToken
    , prcgClusterName
    , prcgRegion
    , prcgProjectId
    , prcgCallback
    ) where

import           Network.Google.Dataproc.Types
import           Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.clusters.get@ method which the
-- 'ProjectsRegionsClustersGet' request conforms to.
type ProjectsRegionsClustersGetResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "regions" :>
             Capture "region" Text :>
               "clusters" :>
                 Capture "clusterName" Text :>
                   QueryParam "$.xgafv" Text :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "pp" Bool :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "bearer_token" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :> Get '[JSON] Cluster

-- | Gets the resource representation for a cluster in a project.
--
-- /See:/ 'projectsRegionsClustersGet' smart constructor.
data ProjectsRegionsClustersGet = ProjectsRegionsClustersGet'
    { _prcgXgafv          :: !(Maybe Text)
    , _prcgUploadProtocol :: !(Maybe Text)
    , _prcgPp             :: !Bool
    , _prcgAccessToken    :: !(Maybe Text)
    , _prcgUploadType     :: !(Maybe Text)
    , _prcgBearerToken    :: !(Maybe Text)
    , _prcgClusterName    :: !Text
    , _prcgRegion         :: !Text
    , _prcgProjectId      :: !Text
    , _prcgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsRegionsClustersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prcgXgafv'
--
-- * 'prcgUploadProtocol'
--
-- * 'prcgPp'
--
-- * 'prcgAccessToken'
--
-- * 'prcgUploadType'
--
-- * 'prcgBearerToken'
--
-- * 'prcgClusterName'
--
-- * 'prcgRegion'
--
-- * 'prcgProjectId'
--
-- * 'prcgCallback'
projectsRegionsClustersGet
    :: Text -- ^ 'prcgClusterName'
    -> Text -- ^ 'prcgRegion'
    -> Text -- ^ 'prcgProjectId'
    -> ProjectsRegionsClustersGet
projectsRegionsClustersGet pPrcgClusterName_ pPrcgRegion_ pPrcgProjectId_ =
    ProjectsRegionsClustersGet'
    { _prcgXgafv = Nothing
    , _prcgUploadProtocol = Nothing
    , _prcgPp = True
    , _prcgAccessToken = Nothing
    , _prcgUploadType = Nothing
    , _prcgBearerToken = Nothing
    , _prcgClusterName = pPrcgClusterName_
    , _prcgRegion = pPrcgRegion_
    , _prcgProjectId = pPrcgProjectId_
    , _prcgCallback = Nothing
    }

-- | V1 error format.
prcgXgafv :: Lens' ProjectsRegionsClustersGet (Maybe Text)
prcgXgafv
  = lens _prcgXgafv (\ s a -> s{_prcgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prcgUploadProtocol :: Lens' ProjectsRegionsClustersGet (Maybe Text)
prcgUploadProtocol
  = lens _prcgUploadProtocol
      (\ s a -> s{_prcgUploadProtocol = a})

-- | Pretty-print response.
prcgPp :: Lens' ProjectsRegionsClustersGet Bool
prcgPp = lens _prcgPp (\ s a -> s{_prcgPp = a})

-- | OAuth access token.
prcgAccessToken :: Lens' ProjectsRegionsClustersGet (Maybe Text)
prcgAccessToken
  = lens _prcgAccessToken
      (\ s a -> s{_prcgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prcgUploadType :: Lens' ProjectsRegionsClustersGet (Maybe Text)
prcgUploadType
  = lens _prcgUploadType
      (\ s a -> s{_prcgUploadType = a})

-- | OAuth bearer token.
prcgBearerToken :: Lens' ProjectsRegionsClustersGet (Maybe Text)
prcgBearerToken
  = lens _prcgBearerToken
      (\ s a -> s{_prcgBearerToken = a})

-- | [Required] The cluster name.
prcgClusterName :: Lens' ProjectsRegionsClustersGet Text
prcgClusterName
  = lens _prcgClusterName
      (\ s a -> s{_prcgClusterName = a})

-- | [Required] The Cloud Dataproc region in which to handle the request.
prcgRegion :: Lens' ProjectsRegionsClustersGet Text
prcgRegion
  = lens _prcgRegion (\ s a -> s{_prcgRegion = a})

-- | [Required] The ID of the Google Cloud Platform project that the cluster
-- belongs to.
prcgProjectId :: Lens' ProjectsRegionsClustersGet Text
prcgProjectId
  = lens _prcgProjectId
      (\ s a -> s{_prcgProjectId = a})

-- | JSONP
prcgCallback :: Lens' ProjectsRegionsClustersGet (Maybe Text)
prcgCallback
  = lens _prcgCallback (\ s a -> s{_prcgCallback = a})

instance GoogleRequest ProjectsRegionsClustersGet
         where
        type Rs ProjectsRegionsClustersGet = Cluster
        type Scopes ProjectsRegionsClustersGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsRegionsClustersGet'{..}
          = go _prcgProjectId _prcgRegion _prcgClusterName
              _prcgXgafv
              _prcgUploadProtocol
              (Just _prcgPp)
              _prcgAccessToken
              _prcgUploadType
              _prcgBearerToken
              _prcgCallback
              (Just AltJSON)
              dataprocService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsRegionsClustersGetResource)
                      mempty
