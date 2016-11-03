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
-- Module      : Network.Google.Resource.Ml.Projects.Jobs.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the jobs in the project.
--
-- /See:/ <https://cloud.google.com/ml/ Google Cloud Machine Learning Reference> for @ml.projects.jobs.list@.
module Network.Google.Resource.Ml.Projects.Jobs.List
    (
    -- * REST Resource
      ProjectsJobsListResource

    -- * Creating a Request
    , projectsJobsList
    , ProjectsJobsList

    -- * Request Lenses
    , pjlParent
    , pjlXgafv
    , pjlUploadProtocol
    , pjlPp
    , pjlAccessToken
    , pjlUploadType
    , pjlBearerToken
    , pjlFilter
    , pjlPageToken
    , pjlPageSize
    , pjlCallback
    ) where

import           Network.Google.MachineLearning.Types
import           Network.Google.Prelude

-- | A resource alias for @ml.projects.jobs.list@ method which the
-- 'ProjectsJobsList' request conforms to.
type ProjectsJobsListResource =
     "v1beta1" :>
       Capture "parent" Text :>
         "jobs" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "pageSize" (Textual Int32) :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON]
                                   GoogleCloudMlV1beta1__ListJobsResponse

-- | Lists the jobs in the project.
--
-- /See:/ 'projectsJobsList' smart constructor.
data ProjectsJobsList = ProjectsJobsList'
    { _pjlParent         :: !Text
    , _pjlXgafv          :: !(Maybe Xgafv)
    , _pjlUploadProtocol :: !(Maybe Text)
    , _pjlPp             :: !Bool
    , _pjlAccessToken    :: !(Maybe Text)
    , _pjlUploadType     :: !(Maybe Text)
    , _pjlBearerToken    :: !(Maybe Text)
    , _pjlFilter         :: !(Maybe Text)
    , _pjlPageToken      :: !(Maybe Text)
    , _pjlPageSize       :: !(Maybe (Textual Int32))
    , _pjlCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsJobsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjlParent'
--
-- * 'pjlXgafv'
--
-- * 'pjlUploadProtocol'
--
-- * 'pjlPp'
--
-- * 'pjlAccessToken'
--
-- * 'pjlUploadType'
--
-- * 'pjlBearerToken'
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
    , _pjlUploadProtocol = Nothing
    , _pjlPp = True
    , _pjlAccessToken = Nothing
    , _pjlUploadType = Nothing
    , _pjlBearerToken = Nothing
    , _pjlFilter = Nothing
    , _pjlPageToken = Nothing
    , _pjlPageSize = Nothing
    , _pjlCallback = Nothing
    }

-- | Required. The name of the project for which to list jobs. Authorization:
-- requires \`Viewer\` role on the specified project.
pjlParent :: Lens' ProjectsJobsList Text
pjlParent
  = lens _pjlParent (\ s a -> s{_pjlParent = a})

-- | V1 error format.
pjlXgafv :: Lens' ProjectsJobsList (Maybe Xgafv)
pjlXgafv = lens _pjlXgafv (\ s a -> s{_pjlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjlUploadProtocol :: Lens' ProjectsJobsList (Maybe Text)
pjlUploadProtocol
  = lens _pjlUploadProtocol
      (\ s a -> s{_pjlUploadProtocol = a})

-- | Pretty-print response.
pjlPp :: Lens' ProjectsJobsList Bool
pjlPp = lens _pjlPp (\ s a -> s{_pjlPp = a})

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

-- | OAuth bearer token.
pjlBearerToken :: Lens' ProjectsJobsList (Maybe Text)
pjlBearerToken
  = lens _pjlBearerToken
      (\ s a -> s{_pjlBearerToken = a})

-- | Optional. Specifies the subset of jobs to retrieve.
pjlFilter :: Lens' ProjectsJobsList (Maybe Text)
pjlFilter
  = lens _pjlFilter (\ s a -> s{_pjlFilter = a})

-- | Optional. A page token to request the next page of results. You get the
-- token from the \`next_page_token\` field of the response from the
-- previous call.
pjlPageToken :: Lens' ProjectsJobsList (Maybe Text)
pjlPageToken
  = lens _pjlPageToken (\ s a -> s{_pjlPageToken = a})

-- | Optional. The number of jobs to retrieve per \"page\" of results. If
-- there are more remaining results than this number, the response message
-- will contain a valid value in the \`next_page_token\` field. The default
-- value is 20, and the maximum page size is 100.
pjlPageSize :: Lens' ProjectsJobsList (Maybe Int32)
pjlPageSize
  = lens _pjlPageSize (\ s a -> s{_pjlPageSize = a}) .
      mapping _Coerce

-- | JSONP
pjlCallback :: Lens' ProjectsJobsList (Maybe Text)
pjlCallback
  = lens _pjlCallback (\ s a -> s{_pjlCallback = a})

instance GoogleRequest ProjectsJobsList where
        type Rs ProjectsJobsList =
             GoogleCloudMlV1beta1__ListJobsResponse
        type Scopes ProjectsJobsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsJobsList'{..}
          = go _pjlParent _pjlXgafv _pjlUploadProtocol
              (Just _pjlPp)
              _pjlAccessToken
              _pjlUploadType
              _pjlBearerToken
              _pjlFilter
              _pjlPageToken
              _pjlPageSize
              _pjlCallback
              (Just AltJSON)
              machineLearningService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsJobsListResource)
                      mempty
