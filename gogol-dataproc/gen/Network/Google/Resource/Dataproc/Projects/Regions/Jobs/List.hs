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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.Jobs.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists regions\/{region}\/jobs in a project.
--
-- /See:/ <https://cloud.google.com/dataproc/ Google Cloud Dataproc API Reference> for @dataproc.projects.regions.jobs.list@.
module Network.Google.Resource.Dataproc.Projects.Regions.Jobs.List
    (
    -- * REST Resource
      ProjectsRegionsJobsListResource

    -- * Creating a Request
    , projectsRegionsJobsList
    , ProjectsRegionsJobsList

    -- * Request Lenses
    , prjlJobStateMatcher
    , prjlXgafv
    , prjlUploadProtocol
    , prjlPp
    , prjlAccessToken
    , prjlUploadType
    , prjlBearerToken
    , prjlClusterName
    , prjlRegion
    , prjlPageToken
    , prjlProjectId
    , prjlPageSize
    , prjlCallback
    ) where

import           Network.Google.Dataproc.Types
import           Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.jobs.list@ method which the
-- 'ProjectsRegionsJobsList' request conforms to.
type ProjectsRegionsJobsListResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "regions" :>
             Capture "region" Text :>
               "jobs" :>
                 QueryParam "jobStateMatcher" Text :>
                   QueryParam "$.xgafv" Text :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "pp" Bool :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "bearer_token" Text :>
                               QueryParam "clusterName" Text :>
                                 QueryParam "pageToken" Text :>
                                   QueryParam "pageSize" (Textual Int32) :>
                                     QueryParam "callback" Text :>
                                       QueryParam "alt" AltJSON :>
                                         Get '[JSON] ListJobsResponse

-- | Lists regions\/{region}\/jobs in a project.
--
-- /See:/ 'projectsRegionsJobsList' smart constructor.
data ProjectsRegionsJobsList = ProjectsRegionsJobsList
    { _prjlJobStateMatcher :: !(Maybe Text)
    , _prjlXgafv           :: !(Maybe Text)
    , _prjlUploadProtocol  :: !(Maybe Text)
    , _prjlPp              :: !Bool
    , _prjlAccessToken     :: !(Maybe Text)
    , _prjlUploadType      :: !(Maybe Text)
    , _prjlBearerToken     :: !(Maybe Text)
    , _prjlClusterName     :: !(Maybe Text)
    , _prjlRegion          :: !Text
    , _prjlPageToken       :: !(Maybe Text)
    , _prjlProjectId       :: !Text
    , _prjlPageSize        :: !(Maybe (Textual Int32))
    , _prjlCallback        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsRegionsJobsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prjlJobStateMatcher'
--
-- * 'prjlXgafv'
--
-- * 'prjlUploadProtocol'
--
-- * 'prjlPp'
--
-- * 'prjlAccessToken'
--
-- * 'prjlUploadType'
--
-- * 'prjlBearerToken'
--
-- * 'prjlClusterName'
--
-- * 'prjlRegion'
--
-- * 'prjlPageToken'
--
-- * 'prjlProjectId'
--
-- * 'prjlPageSize'
--
-- * 'prjlCallback'
projectsRegionsJobsList
    :: Text -- ^ 'prjlRegion'
    -> Text -- ^ 'prjlProjectId'
    -> ProjectsRegionsJobsList
projectsRegionsJobsList pPrjlRegion_ pPrjlProjectId_ =
    ProjectsRegionsJobsList
    { _prjlJobStateMatcher = Nothing
    , _prjlXgafv = Nothing
    , _prjlUploadProtocol = Nothing
    , _prjlPp = True
    , _prjlAccessToken = Nothing
    , _prjlUploadType = Nothing
    , _prjlBearerToken = Nothing
    , _prjlClusterName = Nothing
    , _prjlRegion = pPrjlRegion_
    , _prjlPageToken = Nothing
    , _prjlProjectId = pPrjlProjectId_
    , _prjlPageSize = Nothing
    , _prjlCallback = Nothing
    }

-- | [Optional] Specifies enumerated categories of jobs to list.
prjlJobStateMatcher :: Lens' ProjectsRegionsJobsList (Maybe Text)
prjlJobStateMatcher
  = lens _prjlJobStateMatcher
      (\ s a -> s{_prjlJobStateMatcher = a})

-- | V1 error format.
prjlXgafv :: Lens' ProjectsRegionsJobsList (Maybe Text)
prjlXgafv
  = lens _prjlXgafv (\ s a -> s{_prjlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prjlUploadProtocol :: Lens' ProjectsRegionsJobsList (Maybe Text)
prjlUploadProtocol
  = lens _prjlUploadProtocol
      (\ s a -> s{_prjlUploadProtocol = a})

-- | Pretty-print response.
prjlPp :: Lens' ProjectsRegionsJobsList Bool
prjlPp = lens _prjlPp (\ s a -> s{_prjlPp = a})

-- | OAuth access token.
prjlAccessToken :: Lens' ProjectsRegionsJobsList (Maybe Text)
prjlAccessToken
  = lens _prjlAccessToken
      (\ s a -> s{_prjlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prjlUploadType :: Lens' ProjectsRegionsJobsList (Maybe Text)
prjlUploadType
  = lens _prjlUploadType
      (\ s a -> s{_prjlUploadType = a})

-- | OAuth bearer token.
prjlBearerToken :: Lens' ProjectsRegionsJobsList (Maybe Text)
prjlBearerToken
  = lens _prjlBearerToken
      (\ s a -> s{_prjlBearerToken = a})

-- | [Optional] If set, the returned jobs list includes only jobs that were
-- submitted to the named cluster.
prjlClusterName :: Lens' ProjectsRegionsJobsList (Maybe Text)
prjlClusterName
  = lens _prjlClusterName
      (\ s a -> s{_prjlClusterName = a})

-- | [Required] The Cloud Dataproc region in which to handle the request.
prjlRegion :: Lens' ProjectsRegionsJobsList Text
prjlRegion
  = lens _prjlRegion (\ s a -> s{_prjlRegion = a})

-- | [Optional] The page token, returned by a previous call, to request the
-- next page of results.
prjlPageToken :: Lens' ProjectsRegionsJobsList (Maybe Text)
prjlPageToken
  = lens _prjlPageToken
      (\ s a -> s{_prjlPageToken = a})

-- | [Required] The ID of the Google Cloud Platform project that the job
-- belongs to.
prjlProjectId :: Lens' ProjectsRegionsJobsList Text
prjlProjectId
  = lens _prjlProjectId
      (\ s a -> s{_prjlProjectId = a})

-- | [Optional] The number of results to return in each response.
prjlPageSize :: Lens' ProjectsRegionsJobsList (Maybe Int32)
prjlPageSize
  = lens _prjlPageSize (\ s a -> s{_prjlPageSize = a})
      . mapping _Coerce

-- | JSONP
prjlCallback :: Lens' ProjectsRegionsJobsList (Maybe Text)
prjlCallback
  = lens _prjlCallback (\ s a -> s{_prjlCallback = a})

instance GoogleRequest ProjectsRegionsJobsList where
        type Rs ProjectsRegionsJobsList = ListJobsResponse
        requestClient ProjectsRegionsJobsList{..}
          = go _prjlProjectId _prjlRegion _prjlJobStateMatcher
              _prjlXgafv
              _prjlUploadProtocol
              (Just _prjlPp)
              _prjlAccessToken
              _prjlUploadType
              _prjlBearerToken
              _prjlClusterName
              _prjlPageToken
              _prjlPageSize
              _prjlCallback
              (Just AltJSON)
              dataprocService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsRegionsJobsListResource)
                      mempty
