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
-- Module      : Network.Google.Resource.Dataflow.Projects.Jobs.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Cloud Dataflow job.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.jobs.create@.
module Network.Google.Resource.Dataflow.Projects.Jobs.Create
    (
    -- * REST Resource
      ProjectsJobsCreateResource

    -- * Creating a Request
    , projectsJobsCreate
    , ProjectsJobsCreate

    -- * Request Lenses
    , pjcXgafv
    , pjcUploadProtocol
    , pjcLocation
    , pjcAccessToken
    , pjcUploadType
    , pjcPayload
    , pjcView
    , pjcProjectId
    , pjcReplaceJobId
    , pjcCallback
    ) where

import           Network.Google.Dataflow.Types
import           Network.Google.Prelude

-- | A resource alias for @dataflow.projects.jobs.create@ method which the
-- 'ProjectsJobsCreate' request conforms to.
type ProjectsJobsCreateResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "jobs" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "location" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "view" Text :>
                         QueryParam "replaceJobId" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] Job :> Post '[JSON] Job

-- | Creates a Cloud Dataflow job.
--
-- /See:/ 'projectsJobsCreate' smart constructor.
data ProjectsJobsCreate = ProjectsJobsCreate'
    { _pjcXgafv          :: !(Maybe Xgafv)
    , _pjcUploadProtocol :: !(Maybe Text)
    , _pjcLocation       :: !(Maybe Text)
    , _pjcAccessToken    :: !(Maybe Text)
    , _pjcUploadType     :: !(Maybe Text)
    , _pjcPayload        :: !Job
    , _pjcView           :: !(Maybe Text)
    , _pjcProjectId      :: !Text
    , _pjcReplaceJobId   :: !(Maybe Text)
    , _pjcCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsJobsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjcXgafv'
--
-- * 'pjcUploadProtocol'
--
-- * 'pjcLocation'
--
-- * 'pjcAccessToken'
--
-- * 'pjcUploadType'
--
-- * 'pjcPayload'
--
-- * 'pjcView'
--
-- * 'pjcProjectId'
--
-- * 'pjcReplaceJobId'
--
-- * 'pjcCallback'
projectsJobsCreate
    :: Job -- ^ 'pjcPayload'
    -> Text -- ^ 'pjcProjectId'
    -> ProjectsJobsCreate
projectsJobsCreate pPjcPayload_ pPjcProjectId_ =
    ProjectsJobsCreate'
    { _pjcXgafv = Nothing
    , _pjcUploadProtocol = Nothing
    , _pjcLocation = Nothing
    , _pjcAccessToken = Nothing
    , _pjcUploadType = Nothing
    , _pjcPayload = pPjcPayload_
    , _pjcView = Nothing
    , _pjcProjectId = pPjcProjectId_
    , _pjcReplaceJobId = Nothing
    , _pjcCallback = Nothing
    }

-- | V1 error format.
pjcXgafv :: Lens' ProjectsJobsCreate (Maybe Xgafv)
pjcXgafv = lens _pjcXgafv (\ s a -> s{_pjcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjcUploadProtocol :: Lens' ProjectsJobsCreate (Maybe Text)
pjcUploadProtocol
  = lens _pjcUploadProtocol
      (\ s a -> s{_pjcUploadProtocol = a})

-- | The location that contains this job.
pjcLocation :: Lens' ProjectsJobsCreate (Maybe Text)
pjcLocation
  = lens _pjcLocation (\ s a -> s{_pjcLocation = a})

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
pjcPayload :: Lens' ProjectsJobsCreate Job
pjcPayload
  = lens _pjcPayload (\ s a -> s{_pjcPayload = a})

-- | The level of information requested in response.
pjcView :: Lens' ProjectsJobsCreate (Maybe Text)
pjcView = lens _pjcView (\ s a -> s{_pjcView = a})

-- | The ID of the Cloud Platform project that the job belongs to.
pjcProjectId :: Lens' ProjectsJobsCreate Text
pjcProjectId
  = lens _pjcProjectId (\ s a -> s{_pjcProjectId = a})

-- | Deprecated. This field is now in the Job message.
pjcReplaceJobId :: Lens' ProjectsJobsCreate (Maybe Text)
pjcReplaceJobId
  = lens _pjcReplaceJobId
      (\ s a -> s{_pjcReplaceJobId = a})

-- | JSONP
pjcCallback :: Lens' ProjectsJobsCreate (Maybe Text)
pjcCallback
  = lens _pjcCallback (\ s a -> s{_pjcCallback = a})

instance GoogleRequest ProjectsJobsCreate where
        type Rs ProjectsJobsCreate = Job
        type Scopes ProjectsJobsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ProjectsJobsCreate'{..}
          = go _pjcProjectId _pjcXgafv _pjcUploadProtocol
              _pjcLocation
              _pjcAccessToken
              _pjcUploadType
              _pjcView
              _pjcReplaceJobId
              _pjcCallback
              (Just AltJSON)
              _pjcPayload
              dataflowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsJobsCreateResource)
                      mempty
