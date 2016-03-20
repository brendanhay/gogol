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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a cluster in a project.
--
-- /See:/ <https://cloud.google.com/dataproc/ Google Cloud Dataproc API Reference> for @dataproc.projects.regions.clusters.delete@.
module Network.Google.Resource.Dataproc.Projects.Regions.Clusters.Delete
    (
    -- * REST Resource
      ProjectsRegionsClustersDeleteResource

    -- * Creating a Request
    , projectsRegionsClustersDelete
    , ProjectsRegionsClustersDelete

    -- * Request Lenses
    , prcdXgafv
    , prcdUploadProtocol
    , prcdPp
    , prcdAccessToken
    , prcdUploadType
    , prcdBearerToken
    , prcdClusterName
    , prcdRegion
    , prcdProjectId
    , prcdCallback
    ) where

import           Network.Google.Dataproc.Types
import           Network.Google.Prelude

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
                   QueryParam "$.xgafv" Text :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "pp" Bool :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "bearer_token" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Delete '[JSON] Operation

-- | Deletes a cluster in a project.
--
-- /See:/ 'projectsRegionsClustersDelete' smart constructor.
data ProjectsRegionsClustersDelete = ProjectsRegionsClustersDelete
    { _prcdXgafv          :: !(Maybe Text)
    , _prcdUploadProtocol :: !(Maybe Text)
    , _prcdPp             :: !Bool
    , _prcdAccessToken    :: !(Maybe Text)
    , _prcdUploadType     :: !(Maybe Text)
    , _prcdBearerToken    :: !(Maybe Text)
    , _prcdClusterName    :: !Text
    , _prcdRegion         :: !Text
    , _prcdProjectId      :: !Text
    , _prcdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsRegionsClustersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prcdXgafv'
--
-- * 'prcdUploadProtocol'
--
-- * 'prcdPp'
--
-- * 'prcdAccessToken'
--
-- * 'prcdUploadType'
--
-- * 'prcdBearerToken'
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
    ProjectsRegionsClustersDelete
    { _prcdXgafv = Nothing
    , _prcdUploadProtocol = Nothing
    , _prcdPp = True
    , _prcdAccessToken = Nothing
    , _prcdUploadType = Nothing
    , _prcdBearerToken = Nothing
    , _prcdClusterName = pPrcdClusterName_
    , _prcdRegion = pPrcdRegion_
    , _prcdProjectId = pPrcdProjectId_
    , _prcdCallback = Nothing
    }

-- | V1 error format.
prcdXgafv :: Lens' ProjectsRegionsClustersDelete (Maybe Text)
prcdXgafv
  = lens _prcdXgafv (\ s a -> s{_prcdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prcdUploadProtocol :: Lens' ProjectsRegionsClustersDelete (Maybe Text)
prcdUploadProtocol
  = lens _prcdUploadProtocol
      (\ s a -> s{_prcdUploadProtocol = a})

-- | Pretty-print response.
prcdPp :: Lens' ProjectsRegionsClustersDelete Bool
prcdPp = lens _prcdPp (\ s a -> s{_prcdPp = a})

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

-- | OAuth bearer token.
prcdBearerToken :: Lens' ProjectsRegionsClustersDelete (Maybe Text)
prcdBearerToken
  = lens _prcdBearerToken
      (\ s a -> s{_prcdBearerToken = a})

-- | [Required] The cluster name.
prcdClusterName :: Lens' ProjectsRegionsClustersDelete Text
prcdClusterName
  = lens _prcdClusterName
      (\ s a -> s{_prcdClusterName = a})

-- | [Required] The Cloud Dataproc region in which to handle the request.
prcdRegion :: Lens' ProjectsRegionsClustersDelete Text
prcdRegion
  = lens _prcdRegion (\ s a -> s{_prcdRegion = a})

-- | [Required] The ID of the Google Cloud Platform project that the cluster
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
        requestClient ProjectsRegionsClustersDelete{..}
          = go _prcdProjectId _prcdRegion _prcdClusterName
              _prcdXgafv
              _prcdUploadProtocol
              (Just _prcdPp)
              _prcdAccessToken
              _prcdUploadType
              _prcdBearerToken
              _prcdCallback
              (Just AltJSON)
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsRegionsClustersDeleteResource)
                      mempty
