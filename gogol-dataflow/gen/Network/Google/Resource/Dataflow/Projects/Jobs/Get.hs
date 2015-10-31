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
-- Module      : Network.Google.Resource.Dataflow.Projects.Jobs.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the state of the specified dataflow job.
--
-- /See:/ <https://cloud.google.com/dataflow Google Dataflow API Reference> for @dataflow.projects.jobs.get@.
module Network.Google.Resource.Dataflow.Projects.Jobs.Get
    (
    -- * REST Resource
      ProjectsJobsGetResource

    -- * Creating a Request
    , projectsJobsGet
    , ProjectsJobsGet

    -- * Request Lenses
    , pjgXgafv
    , pjgJobId
    , pjgUploadProtocol
    , pjgPp
    , pjgAccessToken
    , pjgUploadType
    , pjgBearerToken
    , pjgView
    , pjgProjectId
    , pjgCallback
    ) where

import           Network.Google.Dataflow.Types
import           Network.Google.Prelude

-- | A resource alias for @dataflow.projects.jobs.get@ method which the
-- 'ProjectsJobsGet' request conforms to.
type ProjectsJobsGetResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "jobs" :>
             Capture "jobId" Text :>
               QueryParam "$.xgafv" Text :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "view" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :> Get '[JSON] Job

-- | Gets the state of the specified dataflow job.
--
-- /See:/ 'projectsJobsGet' smart constructor.
data ProjectsJobsGet = ProjectsJobsGet
    { _pjgXgafv          :: !(Maybe Text)
    , _pjgJobId          :: !Text
    , _pjgUploadProtocol :: !(Maybe Text)
    , _pjgPp             :: !Bool
    , _pjgAccessToken    :: !(Maybe Text)
    , _pjgUploadType     :: !(Maybe Text)
    , _pjgBearerToken    :: !(Maybe Text)
    , _pjgView           :: !(Maybe Text)
    , _pjgProjectId      :: !Text
    , _pjgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsJobsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjgXgafv'
--
-- * 'pjgJobId'
--
-- * 'pjgUploadProtocol'
--
-- * 'pjgPp'
--
-- * 'pjgAccessToken'
--
-- * 'pjgUploadType'
--
-- * 'pjgBearerToken'
--
-- * 'pjgView'
--
-- * 'pjgProjectId'
--
-- * 'pjgCallback'
projectsJobsGet
    :: Text -- ^ 'pjgJobId'
    -> Text -- ^ 'pjgProjectId'
    -> ProjectsJobsGet
projectsJobsGet pPjgJobId_ pPjgProjectId_ =
    ProjectsJobsGet
    { _pjgXgafv = Nothing
    , _pjgJobId = pPjgJobId_
    , _pjgUploadProtocol = Nothing
    , _pjgPp = True
    , _pjgAccessToken = Nothing
    , _pjgUploadType = Nothing
    , _pjgBearerToken = Nothing
    , _pjgView = Nothing
    , _pjgProjectId = pPjgProjectId_
    , _pjgCallback = Nothing
    }

-- | V1 error format.
pjgXgafv :: Lens' ProjectsJobsGet (Maybe Text)
pjgXgafv = lens _pjgXgafv (\ s a -> s{_pjgXgafv = a})

-- | Identifies a single job.
pjgJobId :: Lens' ProjectsJobsGet Text
pjgJobId = lens _pjgJobId (\ s a -> s{_pjgJobId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjgUploadProtocol :: Lens' ProjectsJobsGet (Maybe Text)
pjgUploadProtocol
  = lens _pjgUploadProtocol
      (\ s a -> s{_pjgUploadProtocol = a})

-- | Pretty-print response.
pjgPp :: Lens' ProjectsJobsGet Bool
pjgPp = lens _pjgPp (\ s a -> s{_pjgPp = a})

-- | OAuth access token.
pjgAccessToken :: Lens' ProjectsJobsGet (Maybe Text)
pjgAccessToken
  = lens _pjgAccessToken
      (\ s a -> s{_pjgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pjgUploadType :: Lens' ProjectsJobsGet (Maybe Text)
pjgUploadType
  = lens _pjgUploadType
      (\ s a -> s{_pjgUploadType = a})

-- | OAuth bearer token.
pjgBearerToken :: Lens' ProjectsJobsGet (Maybe Text)
pjgBearerToken
  = lens _pjgBearerToken
      (\ s a -> s{_pjgBearerToken = a})

-- | Level of information requested in response.
pjgView :: Lens' ProjectsJobsGet (Maybe Text)
pjgView = lens _pjgView (\ s a -> s{_pjgView = a})

-- | The project which owns the job.
pjgProjectId :: Lens' ProjectsJobsGet Text
pjgProjectId
  = lens _pjgProjectId (\ s a -> s{_pjgProjectId = a})

-- | JSONP
pjgCallback :: Lens' ProjectsJobsGet (Maybe Text)
pjgCallback
  = lens _pjgCallback (\ s a -> s{_pjgCallback = a})

instance GoogleRequest ProjectsJobsGet where
        type Rs ProjectsJobsGet = Job
        type Scopes ProjectsJobsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ProjectsJobsGet{..}
          = go _pjgProjectId _pjgJobId _pjgXgafv
              _pjgUploadProtocol
              (Just _pjgPp)
              _pjgAccessToken
              _pjgUploadType
              _pjgBearerToken
              _pjgView
              _pjgCallback
              (Just AltJSON)
              dataflowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsJobsGetResource)
                      mempty
