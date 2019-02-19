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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.Jobs.Submit
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Submits a job to a cluster.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.jobs.submit@.
module Network.Google.Resource.Dataproc.Projects.Regions.Jobs.Submit
    (
    -- * REST Resource
      ProjectsRegionsJobsSubmitResource

    -- * Creating a Request
    , projectsRegionsJobsSubmit
    , ProjectsRegionsJobsSubmit

    -- * Request Lenses
    , prjsXgafv
    , prjsUploadProtocol
    , prjsAccessToken
    , prjsUploadType
    , prjsPayload
    , prjsRegion
    , prjsProjectId
    , prjsCallback
    ) where

import           Network.Google.Dataproc.Types
import           Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.jobs.submit@ method which the
-- 'ProjectsRegionsJobsSubmit' request conforms to.
type ProjectsRegionsJobsSubmitResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "regions" :>
             Capture "region" Text :>
               "jobs:submit" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] SubmitJobRequest :>
                               Post '[JSON] Job

-- | Submits a job to a cluster.
--
-- /See:/ 'projectsRegionsJobsSubmit' smart constructor.
data ProjectsRegionsJobsSubmit =
  ProjectsRegionsJobsSubmit'
    { _prjsXgafv          :: !(Maybe Xgafv)
    , _prjsUploadProtocol :: !(Maybe Text)
    , _prjsAccessToken    :: !(Maybe Text)
    , _prjsUploadType     :: !(Maybe Text)
    , _prjsPayload        :: !SubmitJobRequest
    , _prjsRegion         :: !Text
    , _prjsProjectId      :: !Text
    , _prjsCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsRegionsJobsSubmit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prjsXgafv'
--
-- * 'prjsUploadProtocol'
--
-- * 'prjsAccessToken'
--
-- * 'prjsUploadType'
--
-- * 'prjsPayload'
--
-- * 'prjsRegion'
--
-- * 'prjsProjectId'
--
-- * 'prjsCallback'
projectsRegionsJobsSubmit
    :: SubmitJobRequest -- ^ 'prjsPayload'
    -> Text -- ^ 'prjsRegion'
    -> Text -- ^ 'prjsProjectId'
    -> ProjectsRegionsJobsSubmit
projectsRegionsJobsSubmit pPrjsPayload_ pPrjsRegion_ pPrjsProjectId_ =
  ProjectsRegionsJobsSubmit'
    { _prjsXgafv = Nothing
    , _prjsUploadProtocol = Nothing
    , _prjsAccessToken = Nothing
    , _prjsUploadType = Nothing
    , _prjsPayload = pPrjsPayload_
    , _prjsRegion = pPrjsRegion_
    , _prjsProjectId = pPrjsProjectId_
    , _prjsCallback = Nothing
    }


-- | V1 error format.
prjsXgafv :: Lens' ProjectsRegionsJobsSubmit (Maybe Xgafv)
prjsXgafv
  = lens _prjsXgafv (\ s a -> s{_prjsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prjsUploadProtocol :: Lens' ProjectsRegionsJobsSubmit (Maybe Text)
prjsUploadProtocol
  = lens _prjsUploadProtocol
      (\ s a -> s{_prjsUploadProtocol = a})

-- | OAuth access token.
prjsAccessToken :: Lens' ProjectsRegionsJobsSubmit (Maybe Text)
prjsAccessToken
  = lens _prjsAccessToken
      (\ s a -> s{_prjsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prjsUploadType :: Lens' ProjectsRegionsJobsSubmit (Maybe Text)
prjsUploadType
  = lens _prjsUploadType
      (\ s a -> s{_prjsUploadType = a})

-- | Multipart request metadata.
prjsPayload :: Lens' ProjectsRegionsJobsSubmit SubmitJobRequest
prjsPayload
  = lens _prjsPayload (\ s a -> s{_prjsPayload = a})

-- | Required. The Cloud Dataproc region in which to handle the request.
prjsRegion :: Lens' ProjectsRegionsJobsSubmit Text
prjsRegion
  = lens _prjsRegion (\ s a -> s{_prjsRegion = a})

-- | Required. The ID of the Google Cloud Platform project that the job
-- belongs to.
prjsProjectId :: Lens' ProjectsRegionsJobsSubmit Text
prjsProjectId
  = lens _prjsProjectId
      (\ s a -> s{_prjsProjectId = a})

-- | JSONP
prjsCallback :: Lens' ProjectsRegionsJobsSubmit (Maybe Text)
prjsCallback
  = lens _prjsCallback (\ s a -> s{_prjsCallback = a})

instance GoogleRequest ProjectsRegionsJobsSubmit
         where
        type Rs ProjectsRegionsJobsSubmit = Job
        type Scopes ProjectsRegionsJobsSubmit =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsRegionsJobsSubmit'{..}
          = go _prjsProjectId _prjsRegion _prjsXgafv
              _prjsUploadProtocol
              _prjsAccessToken
              _prjsUploadType
              _prjsCallback
              (Just AltJSON)
              _prjsPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsRegionsJobsSubmitResource)
                      mempty
