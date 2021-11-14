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
-- Module      : Network.Google.Resource.Jobs.Projects.Jobs.Search
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches for jobs using the provided SearchJobsRequest. This call
-- constrains the visibility of jobs present in the database, and only
-- returns jobs that the caller has permission to search against.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.jobs.search@.
module Network.Google.Resource.Jobs.Projects.Jobs.Search
    (
    -- * REST Resource
      ProjectsJobsSearchResource

    -- * Creating a Request
    , projectsJobsSearch
    , ProjectsJobsSearch

    -- * Request Lenses
    , pjsParent
    , pjsXgafv
    , pjsUploadProtocol
    , pjsAccessToken
    , pjsUploadType
    , pjsPayload
    , pjsCallback
    ) where

import           Network.Google.Jobs.Types
import           Network.Google.Prelude

-- | A resource alias for @jobs.projects.jobs.search@ method which the
-- 'ProjectsJobsSearch' request conforms to.
type ProjectsJobsSearchResource =
     "v3p1beta1" :>
       Capture "parent" Text :>
         "jobs:search" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] SearchJobsRequest :>
                         Post '[JSON] SearchJobsResponse

-- | Searches for jobs using the provided SearchJobsRequest. This call
-- constrains the visibility of jobs present in the database, and only
-- returns jobs that the caller has permission to search against.
--
-- /See:/ 'projectsJobsSearch' smart constructor.
data ProjectsJobsSearch =
  ProjectsJobsSearch'
    { _pjsParent         :: !Text
    , _pjsXgafv          :: !(Maybe Xgafv)
    , _pjsUploadProtocol :: !(Maybe Text)
    , _pjsAccessToken    :: !(Maybe Text)
    , _pjsUploadType     :: !(Maybe Text)
    , _pjsPayload        :: !SearchJobsRequest
    , _pjsCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsJobsSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjsParent'
--
-- * 'pjsXgafv'
--
-- * 'pjsUploadProtocol'
--
-- * 'pjsAccessToken'
--
-- * 'pjsUploadType'
--
-- * 'pjsPayload'
--
-- * 'pjsCallback'
projectsJobsSearch
    :: Text -- ^ 'pjsParent'
    -> SearchJobsRequest -- ^ 'pjsPayload'
    -> ProjectsJobsSearch
projectsJobsSearch pPjsParent_ pPjsPayload_ =
  ProjectsJobsSearch'
    { _pjsParent = pPjsParent_
    , _pjsXgafv = Nothing
    , _pjsUploadProtocol = Nothing
    , _pjsAccessToken = Nothing
    , _pjsUploadType = Nothing
    , _pjsPayload = pPjsPayload_
    , _pjsCallback = Nothing
    }


-- | Required. The resource name of the project to search within. The format
-- is \"projects\/{project_id}\", for example,
-- \"projects\/api-test-project\".
pjsParent :: Lens' ProjectsJobsSearch Text
pjsParent
  = lens _pjsParent (\ s a -> s{_pjsParent = a})

-- | V1 error format.
pjsXgafv :: Lens' ProjectsJobsSearch (Maybe Xgafv)
pjsXgafv = lens _pjsXgafv (\ s a -> s{_pjsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjsUploadProtocol :: Lens' ProjectsJobsSearch (Maybe Text)
pjsUploadProtocol
  = lens _pjsUploadProtocol
      (\ s a -> s{_pjsUploadProtocol = a})

-- | OAuth access token.
pjsAccessToken :: Lens' ProjectsJobsSearch (Maybe Text)
pjsAccessToken
  = lens _pjsAccessToken
      (\ s a -> s{_pjsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pjsUploadType :: Lens' ProjectsJobsSearch (Maybe Text)
pjsUploadType
  = lens _pjsUploadType
      (\ s a -> s{_pjsUploadType = a})

-- | Multipart request metadata.
pjsPayload :: Lens' ProjectsJobsSearch SearchJobsRequest
pjsPayload
  = lens _pjsPayload (\ s a -> s{_pjsPayload = a})

-- | JSONP
pjsCallback :: Lens' ProjectsJobsSearch (Maybe Text)
pjsCallback
  = lens _pjsCallback (\ s a -> s{_pjsCallback = a})

instance GoogleRequest ProjectsJobsSearch where
        type Rs ProjectsJobsSearch = SearchJobsResponse
        type Scopes ProjectsJobsSearch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/jobs"]
        requestClient ProjectsJobsSearch'{..}
          = go _pjsParent _pjsXgafv _pjsUploadProtocol
              _pjsAccessToken
              _pjsUploadType
              _pjsCallback
              (Just AltJSON)
              _pjsPayload
              jobsService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsJobsSearchResource)
                      mempty
