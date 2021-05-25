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
-- Module      : Network.Google.Resource.Jobs.Projects.Tenants.Jobs.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists jobs by filter.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.tenants.jobs.list@.
module Network.Google.Resource.Jobs.Projects.Tenants.Jobs.List
    (
    -- * REST Resource
      ProjectsTenantsJobsListResource

    -- * Creating a Request
    , projectsTenantsJobsList
    , ProjectsTenantsJobsList

    -- * Request Lenses
    , ptjlParent
    , ptjlXgafv
    , ptjlJobView
    , ptjlUploadProtocol
    , ptjlAccessToken
    , ptjlUploadType
    , ptjlFilter
    , ptjlPageToken
    , ptjlPageSize
    , ptjlCallback
    ) where

import Network.Google.Jobs.Types
import Network.Google.Prelude

-- | A resource alias for @jobs.projects.tenants.jobs.list@ method which the
-- 'ProjectsTenantsJobsList' request conforms to.
type ProjectsTenantsJobsListResource =
     "v4" :>
       Capture "parent" Text :>
         "jobs" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "jobView" ProjectsTenantsJobsListJobView
               :>
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
-- /See:/ 'projectsTenantsJobsList' smart constructor.
data ProjectsTenantsJobsList =
  ProjectsTenantsJobsList'
    { _ptjlParent :: !Text
    , _ptjlXgafv :: !(Maybe Xgafv)
    , _ptjlJobView :: !(Maybe ProjectsTenantsJobsListJobView)
    , _ptjlUploadProtocol :: !(Maybe Text)
    , _ptjlAccessToken :: !(Maybe Text)
    , _ptjlUploadType :: !(Maybe Text)
    , _ptjlFilter :: !(Maybe Text)
    , _ptjlPageToken :: !(Maybe Text)
    , _ptjlPageSize :: !(Maybe (Textual Int32))
    , _ptjlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTenantsJobsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptjlParent'
--
-- * 'ptjlXgafv'
--
-- * 'ptjlJobView'
--
-- * 'ptjlUploadProtocol'
--
-- * 'ptjlAccessToken'
--
-- * 'ptjlUploadType'
--
-- * 'ptjlFilter'
--
-- * 'ptjlPageToken'
--
-- * 'ptjlPageSize'
--
-- * 'ptjlCallback'
projectsTenantsJobsList
    :: Text -- ^ 'ptjlParent'
    -> ProjectsTenantsJobsList
projectsTenantsJobsList pPtjlParent_ =
  ProjectsTenantsJobsList'
    { _ptjlParent = pPtjlParent_
    , _ptjlXgafv = Nothing
    , _ptjlJobView = Nothing
    , _ptjlUploadProtocol = Nothing
    , _ptjlAccessToken = Nothing
    , _ptjlUploadType = Nothing
    , _ptjlFilter = Nothing
    , _ptjlPageToken = Nothing
    , _ptjlPageSize = Nothing
    , _ptjlCallback = Nothing
    }


-- | Required. The resource name of the tenant under which the job is
-- created. The format is \"projects\/{project_id}\/tenants\/{tenant_id}\".
-- For example, \"projects\/foo\/tenants\/bar\".
ptjlParent :: Lens' ProjectsTenantsJobsList Text
ptjlParent
  = lens _ptjlParent (\ s a -> s{_ptjlParent = a})

-- | V1 error format.
ptjlXgafv :: Lens' ProjectsTenantsJobsList (Maybe Xgafv)
ptjlXgafv
  = lens _ptjlXgafv (\ s a -> s{_ptjlXgafv = a})

-- | The desired job attributes returned for jobs in the search response.
-- Defaults to JobView.JOB_VIEW_FULL if no value is specified.
ptjlJobView :: Lens' ProjectsTenantsJobsList (Maybe ProjectsTenantsJobsListJobView)
ptjlJobView
  = lens _ptjlJobView (\ s a -> s{_ptjlJobView = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptjlUploadProtocol :: Lens' ProjectsTenantsJobsList (Maybe Text)
ptjlUploadProtocol
  = lens _ptjlUploadProtocol
      (\ s a -> s{_ptjlUploadProtocol = a})

-- | OAuth access token.
ptjlAccessToken :: Lens' ProjectsTenantsJobsList (Maybe Text)
ptjlAccessToken
  = lens _ptjlAccessToken
      (\ s a -> s{_ptjlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptjlUploadType :: Lens' ProjectsTenantsJobsList (Maybe Text)
ptjlUploadType
  = lens _ptjlUploadType
      (\ s a -> s{_ptjlUploadType = a})

-- | Required. The filter string specifies the jobs to be enumerated.
-- Supported operator: =, AND The fields eligible for filtering are: *
-- \`companyName\` (Required) * \`requisitionId\` * \`status\` Available
-- values: OPEN, EXPIRED, ALL. Defaults to OPEN if no value is specified.
-- Sample Query: * companyName =
-- \"projects\/foo\/tenants\/bar\/companies\/baz\" * companyName =
-- \"projects\/foo\/tenants\/bar\/companies\/baz\" AND requisitionId =
-- \"req-1\" * companyName =
-- \"projects\/foo\/tenants\/bar\/companies\/baz\" AND status = \"EXPIRED\"
ptjlFilter :: Lens' ProjectsTenantsJobsList (Maybe Text)
ptjlFilter
  = lens _ptjlFilter (\ s a -> s{_ptjlFilter = a})

-- | The starting point of a query result.
ptjlPageToken :: Lens' ProjectsTenantsJobsList (Maybe Text)
ptjlPageToken
  = lens _ptjlPageToken
      (\ s a -> s{_ptjlPageToken = a})

-- | The maximum number of jobs to be returned per page of results. If
-- job_view is set to JobView.JOB_VIEW_ID_ONLY, the maximum allowed page
-- size is 1000. Otherwise, the maximum allowed page size is 100. Default
-- is 100 if empty or a number \< 1 is specified.
ptjlPageSize :: Lens' ProjectsTenantsJobsList (Maybe Int32)
ptjlPageSize
  = lens _ptjlPageSize (\ s a -> s{_ptjlPageSize = a})
      . mapping _Coerce

-- | JSONP
ptjlCallback :: Lens' ProjectsTenantsJobsList (Maybe Text)
ptjlCallback
  = lens _ptjlCallback (\ s a -> s{_ptjlCallback = a})

instance GoogleRequest ProjectsTenantsJobsList where
        type Rs ProjectsTenantsJobsList = ListJobsResponse
        type Scopes ProjectsTenantsJobsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/jobs"]
        requestClient ProjectsTenantsJobsList'{..}
          = go _ptjlParent _ptjlXgafv _ptjlJobView
              _ptjlUploadProtocol
              _ptjlAccessToken
              _ptjlUploadType
              _ptjlFilter
              _ptjlPageToken
              _ptjlPageSize
              _ptjlCallback
              (Just AltJSON)
              jobsService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTenantsJobsListResource)
                      mempty
