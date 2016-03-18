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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.Clusters.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all regions\/{region}\/clusters in a project.
--
-- /See:/ <https://cloud.google.com/dataproc/ Google Cloud Dataproc API Reference> for @dataproc.projects.regions.clusters.list@.
module Network.Google.Resource.Dataproc.Projects.Regions.Clusters.List
    (
    -- * REST Resource
      ProjectsRegionsClustersListResource

    -- * Creating a Request
    , projectsRegionsClustersList
    , ProjectsRegionsClustersList

    -- * Request Lenses
    , prclXgafv
    , prclUploadProtocol
    , prclPp
    , prclAccessToken
    , prclUploadType
    , prclBearerToken
    , prclRegion
    , prclPageToken
    , prclProjectId
    , prclPageSize
    , prclCallback
    ) where

import           Network.Google.Dataproc.Types
import           Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.clusters.list@ method which the
-- 'ProjectsRegionsClustersList' request conforms to.
type ProjectsRegionsClustersListResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "regions" :>
             Capture "region" Text :>
               "clusters" :>
                 QueryParam "$.xgafv" Text :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "pp" Bool :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "bearer_token" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "pageSize" (Textual Int32) :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] ListClustersResponse

-- | Lists all regions\/{region}\/clusters in a project.
--
-- /See:/ 'projectsRegionsClustersList' smart constructor.
data ProjectsRegionsClustersList = ProjectsRegionsClustersList
    { _prclXgafv          :: !(Maybe Text)
    , _prclUploadProtocol :: !(Maybe Text)
    , _prclPp             :: !Bool
    , _prclAccessToken    :: !(Maybe Text)
    , _prclUploadType     :: !(Maybe Text)
    , _prclBearerToken    :: !(Maybe Text)
    , _prclRegion         :: !Text
    , _prclPageToken      :: !(Maybe Text)
    , _prclProjectId      :: !Text
    , _prclPageSize       :: !(Maybe (Textual Int32))
    , _prclCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsRegionsClustersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prclXgafv'
--
-- * 'prclUploadProtocol'
--
-- * 'prclPp'
--
-- * 'prclAccessToken'
--
-- * 'prclUploadType'
--
-- * 'prclBearerToken'
--
-- * 'prclRegion'
--
-- * 'prclPageToken'
--
-- * 'prclProjectId'
--
-- * 'prclPageSize'
--
-- * 'prclCallback'
projectsRegionsClustersList
    :: Text -- ^ 'prclRegion'
    -> Text -- ^ 'prclProjectId'
    -> ProjectsRegionsClustersList
projectsRegionsClustersList pPrclRegion_ pPrclProjectId_ =
    ProjectsRegionsClustersList
    { _prclXgafv = Nothing
    , _prclUploadProtocol = Nothing
    , _prclPp = True
    , _prclAccessToken = Nothing
    , _prclUploadType = Nothing
    , _prclBearerToken = Nothing
    , _prclRegion = pPrclRegion_
    , _prclPageToken = Nothing
    , _prclProjectId = pPrclProjectId_
    , _prclPageSize = Nothing
    , _prclCallback = Nothing
    }

-- | V1 error format.
prclXgafv :: Lens' ProjectsRegionsClustersList (Maybe Text)
prclXgafv
  = lens _prclXgafv (\ s a -> s{_prclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prclUploadProtocol :: Lens' ProjectsRegionsClustersList (Maybe Text)
prclUploadProtocol
  = lens _prclUploadProtocol
      (\ s a -> s{_prclUploadProtocol = a})

-- | Pretty-print response.
prclPp :: Lens' ProjectsRegionsClustersList Bool
prclPp = lens _prclPp (\ s a -> s{_prclPp = a})

-- | OAuth access token.
prclAccessToken :: Lens' ProjectsRegionsClustersList (Maybe Text)
prclAccessToken
  = lens _prclAccessToken
      (\ s a -> s{_prclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prclUploadType :: Lens' ProjectsRegionsClustersList (Maybe Text)
prclUploadType
  = lens _prclUploadType
      (\ s a -> s{_prclUploadType = a})

-- | OAuth bearer token.
prclBearerToken :: Lens' ProjectsRegionsClustersList (Maybe Text)
prclBearerToken
  = lens _prclBearerToken
      (\ s a -> s{_prclBearerToken = a})

-- | [Required] The Cloud Dataproc region in which to handle the request.
prclRegion :: Lens' ProjectsRegionsClustersList Text
prclRegion
  = lens _prclRegion (\ s a -> s{_prclRegion = a})

-- | The standard List page token.
prclPageToken :: Lens' ProjectsRegionsClustersList (Maybe Text)
prclPageToken
  = lens _prclPageToken
      (\ s a -> s{_prclPageToken = a})

-- | [Required] The ID of the Google Cloud Platform project that the cluster
-- belongs to.
prclProjectId :: Lens' ProjectsRegionsClustersList Text
prclProjectId
  = lens _prclProjectId
      (\ s a -> s{_prclProjectId = a})

-- | The standard List page size.
prclPageSize :: Lens' ProjectsRegionsClustersList (Maybe Int32)
prclPageSize
  = lens _prclPageSize (\ s a -> s{_prclPageSize = a})
      . mapping _Coerce

-- | JSONP
prclCallback :: Lens' ProjectsRegionsClustersList (Maybe Text)
prclCallback
  = lens _prclCallback (\ s a -> s{_prclCallback = a})

instance GoogleRequest ProjectsRegionsClustersList
         where
        type Rs ProjectsRegionsClustersList =
             ListClustersResponse
        requestClient ProjectsRegionsClustersList{..}
          = go _prclProjectId _prclRegion _prclXgafv
              _prclUploadProtocol
              (Just _prclPp)
              _prclAccessToken
              _prclUploadType
              _prclBearerToken
              _prclPageToken
              _prclPageSize
              _prclCallback
              (Just AltJSON)
              dataprocService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsRegionsClustersListResource)
                      mempty
