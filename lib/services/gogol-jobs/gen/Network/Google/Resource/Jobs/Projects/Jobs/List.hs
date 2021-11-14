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
-- Module      : Network.Google.Resource.Jobs.Projects.Jobs.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists jobs by filter.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.jobs.list@.
module Network.Google.Resource.Jobs.Projects.Jobs.List
    (
    -- * REST Resource
      ProjectsJobsListResource

    -- * Creating a Request
    , projectsJobsList
    , ProjectsJobsList

    -- * Request Lenses
    , pjlParent
    , pjlXgafv
    , pjlJobView
    , pjlUploadProtocol
    , pjlAccessToken
    , pjlUploadType
    , pjlFilter
    , pjlPageToken
    , pjlPageSize
    , pjlCallback
    ) where

import           Network.Google.Jobs.Types
import           Network.Google.Prelude

-- | A resource alias for @jobs.projects.jobs.list@ method which the
-- 'ProjectsJobsList' request conforms to.
type ProjectsJobsListResource =
     "v3p1beta1" :>
       Capture "parent" Text :>
         "jobs" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "jobView" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListJobsResponse

-- | Lists jobs by filter.
--
-- /See:/ 'projectsJobsList' smart constructor.
data ProjectsJobsList =
  ProjectsJobsList'
    { _pjlParent         :: !Text
    , _pjlXgafv          :: !(Maybe Xgafv)
    , _pjlJobView        :: !(Maybe Text)
    , _pjlUploadProtocol :: !(Maybe Text)
    , _pjlAccessToken    :: !(Maybe Text)
    , _pjlUploadType     :: !(Maybe Text)
    , _pjlFilter         :: !(Maybe Text)
    , _pjlPageToken      :: !(Maybe Text)
    , _pjlPageSize       :: !(Maybe (Textual Int32))
    , _pjlCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsJobsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjlParent'
--
-- * 'pjlXgafv'
--
-- * 'pjlJobView'
--
-- * 'pjlUploadProtocol'
--
-- * 'pjlAccessToken'
--
-- * 'pjlUploadType'
--
-- * 'pjlFilter'
--
-- * 'pjlPageToken'
--
-- * 'pjlPageSize'
--
-- * 'pjlCallback'
projectsJobsList
    :: Text -- ^ 'pjlParent'
    -> ProjectsJobsList
projectsJobsList pPjlParent_ =
  ProjectsJobsList'
    { _pjlParent = pPjlParent_
    , _pjlXgafv = Nothing
    , _pjlJobView = Nothing
    , _pjlUploadProtocol = Nothing
    , _pjlAccessToken = Nothing
    , _pjlUploadType = Nothing
    , _pjlFilter = Nothing
    , _pjlPageToken = Nothing
    , _pjlPageSize = Nothing
    , _pjlCallback = Nothing
    }


-- | Required. The resource name of the project under which the job is
-- created. The format is \"projects\/{project_id}\", for example,
-- \"projects\/api-test-project\".
pjlParent :: Lens' ProjectsJobsList Text
pjlParent
  = lens _pjlParent (\ s a -> s{_pjlParent = a})

-- | V1 error format.
pjlXgafv :: Lens' ProjectsJobsList (Maybe Xgafv)
pjlXgafv = lens _pjlXgafv (\ s a -> s{_pjlXgafv = a})

-- | Optional. The desired job attributes returned for jobs in the search
-- response. Defaults to JobView.JOB_VIEW_FULL if no value is specified.
pjlJobView :: Lens' ProjectsJobsList (Maybe Text)
pjlJobView
  = lens _pjlJobView (\ s a -> s{_pjlJobView = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjlUploadProtocol :: Lens' ProjectsJobsList (Maybe Text)
pjlUploadProtocol
  = lens _pjlUploadProtocol
      (\ s a -> s{_pjlUploadProtocol = a})

-- | OAuth access token.
pjlAccessToken :: Lens' ProjectsJobsList (Maybe Text)
pjlAccessToken
  = lens _pjlAccessToken
      (\ s a -> s{_pjlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pjlUploadType :: Lens' ProjectsJobsList (Maybe Text)
pjlUploadType
  = lens _pjlUploadType
      (\ s a -> s{_pjlUploadType = a})

-- | Required. The filter string specifies the jobs to be enumerated.
-- Supported operator: =, AND The fields eligible for filtering are: *
-- \`companyName\` (Required) * \`requisitionId\` (Optional) Sample Query:
-- * companyName = \"projects\/api-test-project\/companies\/123\" *
-- companyName = \"projects\/api-test-project\/companies\/123\" AND
-- requisitionId = \"req-1\"
pjlFilter :: Lens' ProjectsJobsList (Maybe Text)
pjlFilter
  = lens _pjlFilter (\ s a -> s{_pjlFilter = a})

-- | Optional. The starting point of a query result.
pjlPageToken :: Lens' ProjectsJobsList (Maybe Text)
pjlPageToken
  = lens _pjlPageToken (\ s a -> s{_pjlPageToken = a})

-- | Optional. The maximum number of jobs to be returned per page of results.
-- If job_view is set to JobView.JOB_VIEW_ID_ONLY, the maximum allowed page
-- size is 1000. Otherwise, the maximum allowed page size is 100. Default
-- is 100 if empty or a number \< 1 is specified.
pjlPageSize :: Lens' ProjectsJobsList (Maybe Int32)
pjlPageSize
  = lens _pjlPageSize (\ s a -> s{_pjlPageSize = a}) .
      mapping _Coerce

-- | JSONP
pjlCallback :: Lens' ProjectsJobsList (Maybe Text)
pjlCallback
  = lens _pjlCallback (\ s a -> s{_pjlCallback = a})

instance GoogleRequest ProjectsJobsList where
        type Rs ProjectsJobsList = ListJobsResponse
        type Scopes ProjectsJobsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/jobs"]
        requestClient ProjectsJobsList'{..}
          = go _pjlParent _pjlXgafv _pjlJobView
              _pjlUploadProtocol
              _pjlAccessToken
              _pjlUploadType
              _pjlFilter
              _pjlPageToken
              _pjlPageSize
              _pjlCallback
              (Just AltJSON)
              jobsService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsJobsListResource)
                      mempty
