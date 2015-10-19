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
-- Module      : Network.Google.Resource.Dataflow.Projects.Jobs.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the jobs of a project
--
-- /See:/ <https://cloud.google.com/dataflow Google Dataflow API Reference> for @DataflowProjectsJobsList@.
module Network.Google.Resource.Dataflow.Projects.Jobs.List
    (
    -- * REST Resource
      ProjectsJobsListResource

    -- * Creating a Request
    , projectsJobsList'
    , ProjectsJobsList'

    -- * Request Lenses
    , pjlXgafv
    , pjlUploadProtocol
    , pjlPp
    , pjlAccessToken
    , pjlUploadType
    , pjlBearerToken
    , pjlView
    , pjlPageToken
    , pjlProjectId
    , pjlPageSize
    , pjlCallback
    ) where

import           Network.Google.Dataflow.Types
import           Network.Google.Prelude

-- | A resource alias for @DataflowProjectsJobsList@ method which the
-- 'ProjectsJobsList'' request conforms to.
type ProjectsJobsListResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "jobs" :>
             QueryParam "$.xgafv" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "view" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "pageSize" Int32 :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] ListJobsResponse

-- | List the jobs of a project
--
-- /See:/ 'projectsJobsList'' smart constructor.
data ProjectsJobsList' = ProjectsJobsList'
    { _pjlXgafv          :: !(Maybe Text)
    , _pjlUploadProtocol :: !(Maybe Text)
    , _pjlPp             :: !Bool
    , _pjlAccessToken    :: !(Maybe Text)
    , _pjlUploadType     :: !(Maybe Text)
    , _pjlBearerToken    :: !(Maybe Text)
    , _pjlView           :: !(Maybe Text)
    , _pjlPageToken      :: !(Maybe Text)
    , _pjlProjectId      :: !Text
    , _pjlPageSize       :: !(Maybe Int32)
    , _pjlCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsJobsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
-- * 'pjlView'
--
-- * 'pjlPageToken'
--
-- * 'pjlProjectId'
--
-- * 'pjlPageSize'
--
-- * 'pjlCallback'
projectsJobsList'
    :: Text -- ^ 'projectId'
    -> ProjectsJobsList'
projectsJobsList' pPjlProjectId_ =
    ProjectsJobsList'
    { _pjlXgafv = Nothing
    , _pjlUploadProtocol = Nothing
    , _pjlPp = True
    , _pjlAccessToken = Nothing
    , _pjlUploadType = Nothing
    , _pjlBearerToken = Nothing
    , _pjlView = Nothing
    , _pjlPageToken = Nothing
    , _pjlProjectId = pPjlProjectId_
    , _pjlPageSize = Nothing
    , _pjlCallback = Nothing
    }

-- | V1 error format.
pjlXgafv :: Lens' ProjectsJobsList' (Maybe Text)
pjlXgafv = lens _pjlXgafv (\ s a -> s{_pjlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjlUploadProtocol :: Lens' ProjectsJobsList' (Maybe Text)
pjlUploadProtocol
  = lens _pjlUploadProtocol
      (\ s a -> s{_pjlUploadProtocol = a})

-- | Pretty-print response.
pjlPp :: Lens' ProjectsJobsList' Bool
pjlPp = lens _pjlPp (\ s a -> s{_pjlPp = a})

-- | OAuth access token.
pjlAccessToken :: Lens' ProjectsJobsList' (Maybe Text)
pjlAccessToken
  = lens _pjlAccessToken
      (\ s a -> s{_pjlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pjlUploadType :: Lens' ProjectsJobsList' (Maybe Text)
pjlUploadType
  = lens _pjlUploadType
      (\ s a -> s{_pjlUploadType = a})

-- | OAuth bearer token.
pjlBearerToken :: Lens' ProjectsJobsList' (Maybe Text)
pjlBearerToken
  = lens _pjlBearerToken
      (\ s a -> s{_pjlBearerToken = a})

-- | Level of information requested in response. Default is SUMMARY.
pjlView :: Lens' ProjectsJobsList' (Maybe Text)
pjlView = lens _pjlView (\ s a -> s{_pjlView = a})

-- | Set this to the \'next_page_token\' field of a previous response to
-- request additional results in a long list.
pjlPageToken :: Lens' ProjectsJobsList' (Maybe Text)
pjlPageToken
  = lens _pjlPageToken (\ s a -> s{_pjlPageToken = a})

-- | The project which owns the jobs.
pjlProjectId :: Lens' ProjectsJobsList' Text
pjlProjectId
  = lens _pjlProjectId (\ s a -> s{_pjlProjectId = a})

-- | If there are many jobs, limit response to at most this many. The actual
-- number of jobs returned will be the lesser of max_responses and an
-- unspecified server-defined limit.
pjlPageSize :: Lens' ProjectsJobsList' (Maybe Int32)
pjlPageSize
  = lens _pjlPageSize (\ s a -> s{_pjlPageSize = a})

-- | JSONP
pjlCallback :: Lens' ProjectsJobsList' (Maybe Text)
pjlCallback
  = lens _pjlCallback (\ s a -> s{_pjlCallback = a})

instance GoogleRequest ProjectsJobsList' where
        type Rs ProjectsJobsList' = ListJobsResponse
        requestClient ProjectsJobsList'{..}
          = go _pjlProjectId _pjlXgafv _pjlUploadProtocol
              (Just _pjlPp)
              _pjlAccessToken
              _pjlUploadType
              _pjlBearerToken
              _pjlView
              _pjlPageToken
              _pjlPageSize
              _pjlCallback
              (Just AltJSON)
              dataflowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsJobsListResource)
                      mempty
