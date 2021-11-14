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
-- Module      : Network.Google.Resource.Jobs.Projects.Jobs.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new job. Typically, the job becomes searchable within 10
-- seconds, but it may take up to 5 minutes.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.jobs.create@.
module Network.Google.Resource.Jobs.Projects.Jobs.Create
    (
    -- * REST Resource
      ProjectsJobsCreateResource

    -- * Creating a Request
    , projectsJobsCreate
    , ProjectsJobsCreate

    -- * Request Lenses
    , pjcParent
    , pjcXgafv
    , pjcUploadProtocol
    , pjcAccessToken
    , pjcUploadType
    , pjcPayload
    , pjcCallback
    ) where

import           Network.Google.Jobs.Types
import           Network.Google.Prelude

-- | A resource alias for @jobs.projects.jobs.create@ method which the
-- 'ProjectsJobsCreate' request conforms to.
type ProjectsJobsCreateResource =
     "v3p1beta1" :>
       Capture "parent" Text :>
         "jobs" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] CreateJobRequest :> Post '[JSON] Job

-- | Creates a new job. Typically, the job becomes searchable within 10
-- seconds, but it may take up to 5 minutes.
--
-- /See:/ 'projectsJobsCreate' smart constructor.
data ProjectsJobsCreate =
  ProjectsJobsCreate'
    { _pjcParent         :: !Text
    , _pjcXgafv          :: !(Maybe Xgafv)
    , _pjcUploadProtocol :: !(Maybe Text)
    , _pjcAccessToken    :: !(Maybe Text)
    , _pjcUploadType     :: !(Maybe Text)
    , _pjcPayload        :: !CreateJobRequest
    , _pjcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsJobsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjcParent'
--
-- * 'pjcXgafv'
--
-- * 'pjcUploadProtocol'
--
-- * 'pjcAccessToken'
--
-- * 'pjcUploadType'
--
-- * 'pjcPayload'
--
-- * 'pjcCallback'
projectsJobsCreate
    :: Text -- ^ 'pjcParent'
    -> CreateJobRequest -- ^ 'pjcPayload'
    -> ProjectsJobsCreate
projectsJobsCreate pPjcParent_ pPjcPayload_ =
  ProjectsJobsCreate'
    { _pjcParent = pPjcParent_
    , _pjcXgafv = Nothing
    , _pjcUploadProtocol = Nothing
    , _pjcAccessToken = Nothing
    , _pjcUploadType = Nothing
    , _pjcPayload = pPjcPayload_
    , _pjcCallback = Nothing
    }


-- | Required. The resource name of the project under which the job is
-- created. The format is \"projects\/{project_id}\", for example,
-- \"projects\/api-test-project\".
pjcParent :: Lens' ProjectsJobsCreate Text
pjcParent
  = lens _pjcParent (\ s a -> s{_pjcParent = a})

-- | V1 error format.
pjcXgafv :: Lens' ProjectsJobsCreate (Maybe Xgafv)
pjcXgafv = lens _pjcXgafv (\ s a -> s{_pjcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjcUploadProtocol :: Lens' ProjectsJobsCreate (Maybe Text)
pjcUploadProtocol
  = lens _pjcUploadProtocol
      (\ s a -> s{_pjcUploadProtocol = a})

-- | OAuth access token.
pjcAccessToken :: Lens' ProjectsJobsCreate (Maybe Text)
pjcAccessToken
  = lens _pjcAccessToken
      (\ s a -> s{_pjcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pjcUploadType :: Lens' ProjectsJobsCreate (Maybe Text)
pjcUploadType
  = lens _pjcUploadType
      (\ s a -> s{_pjcUploadType = a})

-- | Multipart request metadata.
pjcPayload :: Lens' ProjectsJobsCreate CreateJobRequest
pjcPayload
  = lens _pjcPayload (\ s a -> s{_pjcPayload = a})

-- | JSONP
pjcCallback :: Lens' ProjectsJobsCreate (Maybe Text)
pjcCallback
  = lens _pjcCallback (\ s a -> s{_pjcCallback = a})

instance GoogleRequest ProjectsJobsCreate where
        type Rs ProjectsJobsCreate = Job
        type Scopes ProjectsJobsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/jobs"]
        requestClient ProjectsJobsCreate'{..}
          = go _pjcParent _pjcXgafv _pjcUploadProtocol
              _pjcAccessToken
              _pjcUploadType
              _pjcCallback
              (Just AltJSON)
              _pjcPayload
              jobsService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsJobsCreateResource)
                      mempty
