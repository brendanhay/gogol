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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.Jobs.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the job from the project. If the job is active, the delete
-- fails, and the response returns \`FAILED_PRECONDITION\`.
--
-- /See:/ <https://cloud.google.com/dataproc/ Google Cloud Dataproc API Reference> for @dataproc.projects.regions.jobs.delete@.
module Network.Google.Resource.Dataproc.Projects.Regions.Jobs.Delete
    (
    -- * REST Resource
      ProjectsRegionsJobsDeleteResource

    -- * Creating a Request
    , projectsRegionsJobsDelete
    , ProjectsRegionsJobsDelete

    -- * Request Lenses
    , prjdXgafv
    , prjdJobId
    , prjdUploadProtocol
    , prjdPp
    , prjdAccessToken
    , prjdUploadType
    , prjdBearerToken
    , prjdRegion
    , prjdProjectId
    , prjdCallback
    ) where

import           Network.Google.Dataproc.Types
import           Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.jobs.delete@ method which the
-- 'ProjectsRegionsJobsDelete' request conforms to.
type ProjectsRegionsJobsDeleteResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "regions" :>
             Capture "region" Text :>
               "jobs" :>
                 Capture "jobId" Text :>
                   QueryParam "$.xgafv" Text :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "pp" Bool :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "bearer_token" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Delete '[JSON] Empty

-- | Deletes the job from the project. If the job is active, the delete
-- fails, and the response returns \`FAILED_PRECONDITION\`.
--
-- /See:/ 'projectsRegionsJobsDelete' smart constructor.
data ProjectsRegionsJobsDelete = ProjectsRegionsJobsDelete'
    { _prjdXgafv          :: !(Maybe Text)
    , _prjdJobId          :: !Text
    , _prjdUploadProtocol :: !(Maybe Text)
    , _prjdPp             :: !Bool
    , _prjdAccessToken    :: !(Maybe Text)
    , _prjdUploadType     :: !(Maybe Text)
    , _prjdBearerToken    :: !(Maybe Text)
    , _prjdRegion         :: !Text
    , _prjdProjectId      :: !Text
    , _prjdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsRegionsJobsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prjdXgafv'
--
-- * 'prjdJobId'
--
-- * 'prjdUploadProtocol'
--
-- * 'prjdPp'
--
-- * 'prjdAccessToken'
--
-- * 'prjdUploadType'
--
-- * 'prjdBearerToken'
--
-- * 'prjdRegion'
--
-- * 'prjdProjectId'
--
-- * 'prjdCallback'
projectsRegionsJobsDelete
    :: Text -- ^ 'prjdJobId'
    -> Text -- ^ 'prjdRegion'
    -> Text -- ^ 'prjdProjectId'
    -> ProjectsRegionsJobsDelete
projectsRegionsJobsDelete pPrjdJobId_ pPrjdRegion_ pPrjdProjectId_ =
    ProjectsRegionsJobsDelete'
    { _prjdXgafv = Nothing
    , _prjdJobId = pPrjdJobId_
    , _prjdUploadProtocol = Nothing
    , _prjdPp = True
    , _prjdAccessToken = Nothing
    , _prjdUploadType = Nothing
    , _prjdBearerToken = Nothing
    , _prjdRegion = pPrjdRegion_
    , _prjdProjectId = pPrjdProjectId_
    , _prjdCallback = Nothing
    }

-- | V1 error format.
prjdXgafv :: Lens' ProjectsRegionsJobsDelete (Maybe Text)
prjdXgafv
  = lens _prjdXgafv (\ s a -> s{_prjdXgafv = a})

-- | [Required] The job ID.
prjdJobId :: Lens' ProjectsRegionsJobsDelete Text
prjdJobId
  = lens _prjdJobId (\ s a -> s{_prjdJobId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prjdUploadProtocol :: Lens' ProjectsRegionsJobsDelete (Maybe Text)
prjdUploadProtocol
  = lens _prjdUploadProtocol
      (\ s a -> s{_prjdUploadProtocol = a})

-- | Pretty-print response.
prjdPp :: Lens' ProjectsRegionsJobsDelete Bool
prjdPp = lens _prjdPp (\ s a -> s{_prjdPp = a})

-- | OAuth access token.
prjdAccessToken :: Lens' ProjectsRegionsJobsDelete (Maybe Text)
prjdAccessToken
  = lens _prjdAccessToken
      (\ s a -> s{_prjdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prjdUploadType :: Lens' ProjectsRegionsJobsDelete (Maybe Text)
prjdUploadType
  = lens _prjdUploadType
      (\ s a -> s{_prjdUploadType = a})

-- | OAuth bearer token.
prjdBearerToken :: Lens' ProjectsRegionsJobsDelete (Maybe Text)
prjdBearerToken
  = lens _prjdBearerToken
      (\ s a -> s{_prjdBearerToken = a})

-- | [Required] The Cloud Dataproc region in which to handle the request.
prjdRegion :: Lens' ProjectsRegionsJobsDelete Text
prjdRegion
  = lens _prjdRegion (\ s a -> s{_prjdRegion = a})

-- | [Required] The ID of the Google Cloud Platform project that the job
-- belongs to.
prjdProjectId :: Lens' ProjectsRegionsJobsDelete Text
prjdProjectId
  = lens _prjdProjectId
      (\ s a -> s{_prjdProjectId = a})

-- | JSONP
prjdCallback :: Lens' ProjectsRegionsJobsDelete (Maybe Text)
prjdCallback
  = lens _prjdCallback (\ s a -> s{_prjdCallback = a})

instance GoogleRequest ProjectsRegionsJobsDelete
         where
        type Rs ProjectsRegionsJobsDelete = Empty
        type Scopes ProjectsRegionsJobsDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsRegionsJobsDelete'{..}
          = go _prjdProjectId _prjdRegion _prjdJobId _prjdXgafv
              _prjdUploadProtocol
              (Just _prjdPp)
              _prjdAccessToken
              _prjdUploadType
              _prjdBearerToken
              _prjdCallback
              (Just AltJSON)
              dataprocService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsRegionsJobsDeleteResource)
                      mempty
