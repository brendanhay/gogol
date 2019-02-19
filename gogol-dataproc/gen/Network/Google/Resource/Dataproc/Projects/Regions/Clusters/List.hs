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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all regions\/{region}\/clusters in a project.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.clusters.list@.
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
    , prclAccessToken
    , prclUploadType
    , prclFilter
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
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "pageSize" (Textual Int32) :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] ListClustersResponse

-- | Lists all regions\/{region}\/clusters in a project.
--
-- /See:/ 'projectsRegionsClustersList' smart constructor.
data ProjectsRegionsClustersList =
  ProjectsRegionsClustersList'
    { _prclXgafv          :: !(Maybe Xgafv)
    , _prclUploadProtocol :: !(Maybe Text)
    , _prclAccessToken    :: !(Maybe Text)
    , _prclUploadType     :: !(Maybe Text)
    , _prclFilter         :: !(Maybe Text)
    , _prclRegion         :: !Text
    , _prclPageToken      :: !(Maybe Text)
    , _prclProjectId      :: !Text
    , _prclPageSize       :: !(Maybe (Textual Int32))
    , _prclCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsRegionsClustersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prclXgafv'
--
-- * 'prclUploadProtocol'
--
-- * 'prclAccessToken'
--
-- * 'prclUploadType'
--
-- * 'prclFilter'
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
  ProjectsRegionsClustersList'
    { _prclXgafv = Nothing
    , _prclUploadProtocol = Nothing
    , _prclAccessToken = Nothing
    , _prclUploadType = Nothing
    , _prclFilter = Nothing
    , _prclRegion = pPrclRegion_
    , _prclPageToken = Nothing
    , _prclProjectId = pPrclProjectId_
    , _prclPageSize = Nothing
    , _prclCallback = Nothing
    }

-- | V1 error format.
prclXgafv :: Lens' ProjectsRegionsClustersList (Maybe Xgafv)
prclXgafv
  = lens _prclXgafv (\ s a -> s{_prclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prclUploadProtocol :: Lens' ProjectsRegionsClustersList (Maybe Text)
prclUploadProtocol
  = lens _prclUploadProtocol
      (\ s a -> s{_prclUploadProtocol = a})

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

-- | Optional. A filter constraining the clusters to list. Filters are
-- case-sensitive and have the following syntax:field = value AND field =
-- value ...where field is one of status.state, clusterName, or
-- labels.[KEY], and [KEY] is a label key. value can be * to match all
-- values. status.state can be one of the following: ACTIVE, INACTIVE,
-- CREATING, RUNNING, ERROR, DELETING, or UPDATING. ACTIVE contains the
-- CREATING, UPDATING, and RUNNING states. INACTIVE contains the DELETING
-- and ERROR states. clusterName is the name of the cluster provided at
-- creation time. Only the logical AND operator is supported;
-- space-separated items are treated as having an implicit AND
-- operator.Example filter:status.state = ACTIVE AND clusterName =
-- mycluster AND labels.env = staging AND labels.starred = *
prclFilter :: Lens' ProjectsRegionsClustersList (Maybe Text)
prclFilter
  = lens _prclFilter (\ s a -> s{_prclFilter = a})

-- | Required. The Cloud Dataproc region in which to handle the request.
prclRegion :: Lens' ProjectsRegionsClustersList Text
prclRegion
  = lens _prclRegion (\ s a -> s{_prclRegion = a})

-- | Optional. The standard List page token.
prclPageToken :: Lens' ProjectsRegionsClustersList (Maybe Text)
prclPageToken
  = lens _prclPageToken
      (\ s a -> s{_prclPageToken = a})

-- | Required. The ID of the Google Cloud Platform project that the cluster
-- belongs to.
prclProjectId :: Lens' ProjectsRegionsClustersList Text
prclProjectId
  = lens _prclProjectId
      (\ s a -> s{_prclProjectId = a})

-- | Optional. The standard List page size.
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
        type Scopes ProjectsRegionsClustersList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsRegionsClustersList'{..}
          = go _prclProjectId _prclRegion _prclXgafv
              _prclUploadProtocol
              _prclAccessToken
              _prclUploadType
              _prclFilter
              _prclPageToken
              _prclPageSize
              _prclCallback
              (Just AltJSON)
              dataprocService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsRegionsClustersListResource)
                      mempty
