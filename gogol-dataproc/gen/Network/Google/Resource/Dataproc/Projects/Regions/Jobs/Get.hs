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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.Jobs.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the resource representation for a job in a project.
--
-- /See:/ <https://cloud.google.com/dataproc/ Google Cloud Dataproc API Reference> for @dataproc.projects.regions.jobs.get@.
module Network.Google.Resource.Dataproc.Projects.Regions.Jobs.Get
    (
    -- * REST Resource
      ProjectsRegionsJobsGetResource

    -- * Creating a Request
    , projectsRegionsJobsGet
    , ProjectsRegionsJobsGet

    -- * Request Lenses
    , prjgXgafv
    , prjgJobId
    , prjgUploadProtocol
    , prjgPp
    , prjgAccessToken
    , prjgUploadType
    , prjgBearerToken
    , prjgRegion
    , prjgProjectId
    , prjgCallback
    ) where

import           Network.Google.Dataproc.Types
import           Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.jobs.get@ method which the
-- 'ProjectsRegionsJobsGet' request conforms to.
type ProjectsRegionsJobsGetResource =
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
                                 QueryParam "alt" AltJSON :> Get '[JSON] Job

-- | Gets the resource representation for a job in a project.
--
-- /See:/ 'projectsRegionsJobsGet' smart constructor.
data ProjectsRegionsJobsGet = ProjectsRegionsJobsGet
    { _prjgXgafv          :: !(Maybe Text)
    , _prjgJobId          :: !Text
    , _prjgUploadProtocol :: !(Maybe Text)
    , _prjgPp             :: !Bool
    , _prjgAccessToken    :: !(Maybe Text)
    , _prjgUploadType     :: !(Maybe Text)
    , _prjgBearerToken    :: !(Maybe Text)
    , _prjgRegion         :: !Text
    , _prjgProjectId      :: !Text
    , _prjgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsRegionsJobsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prjgXgafv'
--
-- * 'prjgJobId'
--
-- * 'prjgUploadProtocol'
--
-- * 'prjgPp'
--
-- * 'prjgAccessToken'
--
-- * 'prjgUploadType'
--
-- * 'prjgBearerToken'
--
-- * 'prjgRegion'
--
-- * 'prjgProjectId'
--
-- * 'prjgCallback'
projectsRegionsJobsGet
    :: Text -- ^ 'prjgJobId'
    -> Text -- ^ 'prjgRegion'
    -> Text -- ^ 'prjgProjectId'
    -> ProjectsRegionsJobsGet
projectsRegionsJobsGet pPrjgJobId_ pPrjgRegion_ pPrjgProjectId_ =
    ProjectsRegionsJobsGet
    { _prjgXgafv = Nothing
    , _prjgJobId = pPrjgJobId_
    , _prjgUploadProtocol = Nothing
    , _prjgPp = True
    , _prjgAccessToken = Nothing
    , _prjgUploadType = Nothing
    , _prjgBearerToken = Nothing
    , _prjgRegion = pPrjgRegion_
    , _prjgProjectId = pPrjgProjectId_
    , _prjgCallback = Nothing
    }

-- | V1 error format.
prjgXgafv :: Lens' ProjectsRegionsJobsGet (Maybe Text)
prjgXgafv
  = lens _prjgXgafv (\ s a -> s{_prjgXgafv = a})

-- | [Required] The job ID.
prjgJobId :: Lens' ProjectsRegionsJobsGet Text
prjgJobId
  = lens _prjgJobId (\ s a -> s{_prjgJobId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prjgUploadProtocol :: Lens' ProjectsRegionsJobsGet (Maybe Text)
prjgUploadProtocol
  = lens _prjgUploadProtocol
      (\ s a -> s{_prjgUploadProtocol = a})

-- | Pretty-print response.
prjgPp :: Lens' ProjectsRegionsJobsGet Bool
prjgPp = lens _prjgPp (\ s a -> s{_prjgPp = a})

-- | OAuth access token.
prjgAccessToken :: Lens' ProjectsRegionsJobsGet (Maybe Text)
prjgAccessToken
  = lens _prjgAccessToken
      (\ s a -> s{_prjgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prjgUploadType :: Lens' ProjectsRegionsJobsGet (Maybe Text)
prjgUploadType
  = lens _prjgUploadType
      (\ s a -> s{_prjgUploadType = a})

-- | OAuth bearer token.
prjgBearerToken :: Lens' ProjectsRegionsJobsGet (Maybe Text)
prjgBearerToken
  = lens _prjgBearerToken
      (\ s a -> s{_prjgBearerToken = a})

-- | [Required] The Cloud Dataproc region in which to handle the request.
prjgRegion :: Lens' ProjectsRegionsJobsGet Text
prjgRegion
  = lens _prjgRegion (\ s a -> s{_prjgRegion = a})

-- | [Required] The ID of the Google Cloud Platform project that the job
-- belongs to.
prjgProjectId :: Lens' ProjectsRegionsJobsGet Text
prjgProjectId
  = lens _prjgProjectId
      (\ s a -> s{_prjgProjectId = a})

-- | JSONP
prjgCallback :: Lens' ProjectsRegionsJobsGet (Maybe Text)
prjgCallback
  = lens _prjgCallback (\ s a -> s{_prjgCallback = a})

instance GoogleRequest ProjectsRegionsJobsGet where
        type Rs ProjectsRegionsJobsGet = Job
        requestClient ProjectsRegionsJobsGet{..}
          = go _prjgProjectId _prjgRegion _prjgJobId _prjgXgafv
              _prjgUploadProtocol
              (Just _prjgPp)
              _prjgAccessToken
              _prjgUploadType
              _prjgBearerToken
              _prjgCallback
              (Just AltJSON)
              dataprocService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsRegionsJobsGetResource)
                      mempty
