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
-- Module      : Network.Google.Resource.Dataflow.Projects.Jobs.Aggregated
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the jobs of a project across all regions.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.jobs.aggregated@.
module Network.Google.Resource.Dataflow.Projects.Jobs.Aggregated
    (
    -- * REST Resource
      ProjectsJobsAggregatedResource

    -- * Creating a Request
    , projectsJobsAggregated
    , ProjectsJobsAggregated

    -- * Request Lenses
    , pjaXgafv
    , pjaUploadProtocol
    , pjaLocation
    , pjaAccessToken
    , pjaUploadType
    , pjaView
    , pjaFilter
    , pjaPageToken
    , pjaProjectId
    , pjaPageSize
    , pjaCallback
    ) where

import           Network.Google.Dataflow.Types
import           Network.Google.Prelude

-- | A resource alias for @dataflow.projects.jobs.aggregated@ method which the
-- 'ProjectsJobsAggregated' request conforms to.
type ProjectsJobsAggregatedResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "jobs:aggregated" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "location" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "view" Text :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "pageSize" (Textual Int32) :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] ListJobsResponse

-- | List the jobs of a project across all regions.
--
-- /See:/ 'projectsJobsAggregated' smart constructor.
data ProjectsJobsAggregated =
  ProjectsJobsAggregated'
    { _pjaXgafv          :: !(Maybe Xgafv)
    , _pjaUploadProtocol :: !(Maybe Text)
    , _pjaLocation       :: !(Maybe Text)
    , _pjaAccessToken    :: !(Maybe Text)
    , _pjaUploadType     :: !(Maybe Text)
    , _pjaView           :: !(Maybe Text)
    , _pjaFilter         :: !(Maybe Text)
    , _pjaPageToken      :: !(Maybe Text)
    , _pjaProjectId      :: !Text
    , _pjaPageSize       :: !(Maybe (Textual Int32))
    , _pjaCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsJobsAggregated' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjaXgafv'
--
-- * 'pjaUploadProtocol'
--
-- * 'pjaLocation'
--
-- * 'pjaAccessToken'
--
-- * 'pjaUploadType'
--
-- * 'pjaView'
--
-- * 'pjaFilter'
--
-- * 'pjaPageToken'
--
-- * 'pjaProjectId'
--
-- * 'pjaPageSize'
--
-- * 'pjaCallback'
projectsJobsAggregated
    :: Text -- ^ 'pjaProjectId'
    -> ProjectsJobsAggregated
projectsJobsAggregated pPjaProjectId_ =
  ProjectsJobsAggregated'
    { _pjaXgafv = Nothing
    , _pjaUploadProtocol = Nothing
    , _pjaLocation = Nothing
    , _pjaAccessToken = Nothing
    , _pjaUploadType = Nothing
    , _pjaView = Nothing
    , _pjaFilter = Nothing
    , _pjaPageToken = Nothing
    , _pjaProjectId = pPjaProjectId_
    , _pjaPageSize = Nothing
    , _pjaCallback = Nothing
    }


-- | V1 error format.
pjaXgafv :: Lens' ProjectsJobsAggregated (Maybe Xgafv)
pjaXgafv = lens _pjaXgafv (\ s a -> s{_pjaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjaUploadProtocol :: Lens' ProjectsJobsAggregated (Maybe Text)
pjaUploadProtocol
  = lens _pjaUploadProtocol
      (\ s a -> s{_pjaUploadProtocol = a})

-- | The location that contains this job.
pjaLocation :: Lens' ProjectsJobsAggregated (Maybe Text)
pjaLocation
  = lens _pjaLocation (\ s a -> s{_pjaLocation = a})

-- | OAuth access token.
pjaAccessToken :: Lens' ProjectsJobsAggregated (Maybe Text)
pjaAccessToken
  = lens _pjaAccessToken
      (\ s a -> s{_pjaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pjaUploadType :: Lens' ProjectsJobsAggregated (Maybe Text)
pjaUploadType
  = lens _pjaUploadType
      (\ s a -> s{_pjaUploadType = a})

-- | Level of information requested in response. Default is
-- \`JOB_VIEW_SUMMARY\`.
pjaView :: Lens' ProjectsJobsAggregated (Maybe Text)
pjaView = lens _pjaView (\ s a -> s{_pjaView = a})

-- | The kind of filter to use.
pjaFilter :: Lens' ProjectsJobsAggregated (Maybe Text)
pjaFilter
  = lens _pjaFilter (\ s a -> s{_pjaFilter = a})

-- | Set this to the \'next_page_token\' field of a previous response to
-- request additional results in a long list.
pjaPageToken :: Lens' ProjectsJobsAggregated (Maybe Text)
pjaPageToken
  = lens _pjaPageToken (\ s a -> s{_pjaPageToken = a})

-- | The project which owns the jobs.
pjaProjectId :: Lens' ProjectsJobsAggregated Text
pjaProjectId
  = lens _pjaProjectId (\ s a -> s{_pjaProjectId = a})

-- | If there are many jobs, limit response to at most this many. The actual
-- number of jobs returned will be the lesser of max_responses and an
-- unspecified server-defined limit.
pjaPageSize :: Lens' ProjectsJobsAggregated (Maybe Int32)
pjaPageSize
  = lens _pjaPageSize (\ s a -> s{_pjaPageSize = a}) .
      mapping _Coerce

-- | JSONP
pjaCallback :: Lens' ProjectsJobsAggregated (Maybe Text)
pjaCallback
  = lens _pjaCallback (\ s a -> s{_pjaCallback = a})

instance GoogleRequest ProjectsJobsAggregated where
        type Rs ProjectsJobsAggregated = ListJobsResponse
        type Scopes ProjectsJobsAggregated =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ProjectsJobsAggregated'{..}
          = go _pjaProjectId _pjaXgafv _pjaUploadProtocol
              _pjaLocation
              _pjaAccessToken
              _pjaUploadType
              _pjaView
              _pjaFilter
              _pjaPageToken
              _pjaPageSize
              _pjaCallback
              (Just AltJSON)
              dataflowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsJobsAggregatedResource)
                      mempty
