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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.Jobs.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a job in a project.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.jobs.patch@.
module Network.Google.Resource.Dataproc.Projects.Regions.Jobs.Patch
    (
    -- * REST Resource
      ProjectsRegionsJobsPatchResource

    -- * Creating a Request
    , projectsRegionsJobsPatch
    , ProjectsRegionsJobsPatch

    -- * Request Lenses
    , prjpXgafv
    , prjpJobId
    , prjpUploadProtocol
    , prjpUpdateMask
    , prjpAccessToken
    , prjpUploadType
    , prjpPayload
    , prjpRegion
    , prjpProjectId
    , prjpCallback
    ) where

import           Network.Google.Dataproc.Types
import           Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.jobs.patch@ method which the
-- 'ProjectsRegionsJobsPatch' request conforms to.
type ProjectsRegionsJobsPatchResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "regions" :>
             Capture "region" Text :>
               "jobs" :>
                 Capture "jobId" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "updateMask" GFieldMask :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] Job :> Patch '[JSON] Job

-- | Updates a job in a project.
--
-- /See:/ 'projectsRegionsJobsPatch' smart constructor.
data ProjectsRegionsJobsPatch =
  ProjectsRegionsJobsPatch'
    { _prjpXgafv          :: !(Maybe Xgafv)
    , _prjpJobId          :: !Text
    , _prjpUploadProtocol :: !(Maybe Text)
    , _prjpUpdateMask     :: !(Maybe GFieldMask)
    , _prjpAccessToken    :: !(Maybe Text)
    , _prjpUploadType     :: !(Maybe Text)
    , _prjpPayload        :: !Job
    , _prjpRegion         :: !Text
    , _prjpProjectId      :: !Text
    , _prjpCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsRegionsJobsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prjpXgafv'
--
-- * 'prjpJobId'
--
-- * 'prjpUploadProtocol'
--
-- * 'prjpUpdateMask'
--
-- * 'prjpAccessToken'
--
-- * 'prjpUploadType'
--
-- * 'prjpPayload'
--
-- * 'prjpRegion'
--
-- * 'prjpProjectId'
--
-- * 'prjpCallback'
projectsRegionsJobsPatch
    :: Text -- ^ 'prjpJobId'
    -> Job -- ^ 'prjpPayload'
    -> Text -- ^ 'prjpRegion'
    -> Text -- ^ 'prjpProjectId'
    -> ProjectsRegionsJobsPatch
projectsRegionsJobsPatch pPrjpJobId_ pPrjpPayload_ pPrjpRegion_ pPrjpProjectId_ =
  ProjectsRegionsJobsPatch'
    { _prjpXgafv = Nothing
    , _prjpJobId = pPrjpJobId_
    , _prjpUploadProtocol = Nothing
    , _prjpUpdateMask = Nothing
    , _prjpAccessToken = Nothing
    , _prjpUploadType = Nothing
    , _prjpPayload = pPrjpPayload_
    , _prjpRegion = pPrjpRegion_
    , _prjpProjectId = pPrjpProjectId_
    , _prjpCallback = Nothing
    }


-- | V1 error format.
prjpXgafv :: Lens' ProjectsRegionsJobsPatch (Maybe Xgafv)
prjpXgafv
  = lens _prjpXgafv (\ s a -> s{_prjpXgafv = a})

-- | Required. The job ID.
prjpJobId :: Lens' ProjectsRegionsJobsPatch Text
prjpJobId
  = lens _prjpJobId (\ s a -> s{_prjpJobId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prjpUploadProtocol :: Lens' ProjectsRegionsJobsPatch (Maybe Text)
prjpUploadProtocol
  = lens _prjpUploadProtocol
      (\ s a -> s{_prjpUploadProtocol = a})

-- | Required. Specifies the path, relative to 'Job', of the field to update.
-- For example, to update the labels of a Job the 'update_mask' parameter
-- would be specified as 'labels', and the PATCH request body would specify
-- the new value. __Note:__ Currently, 'labels' is the only field that can
-- be updated.
prjpUpdateMask :: Lens' ProjectsRegionsJobsPatch (Maybe GFieldMask)
prjpUpdateMask
  = lens _prjpUpdateMask
      (\ s a -> s{_prjpUpdateMask = a})

-- | OAuth access token.
prjpAccessToken :: Lens' ProjectsRegionsJobsPatch (Maybe Text)
prjpAccessToken
  = lens _prjpAccessToken
      (\ s a -> s{_prjpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prjpUploadType :: Lens' ProjectsRegionsJobsPatch (Maybe Text)
prjpUploadType
  = lens _prjpUploadType
      (\ s a -> s{_prjpUploadType = a})

-- | Multipart request metadata.
prjpPayload :: Lens' ProjectsRegionsJobsPatch Job
prjpPayload
  = lens _prjpPayload (\ s a -> s{_prjpPayload = a})

-- | Required. The Cloud Dataproc region in which to handle the request.
prjpRegion :: Lens' ProjectsRegionsJobsPatch Text
prjpRegion
  = lens _prjpRegion (\ s a -> s{_prjpRegion = a})

-- | Required. The ID of the Google Cloud Platform project that the job
-- belongs to.
prjpProjectId :: Lens' ProjectsRegionsJobsPatch Text
prjpProjectId
  = lens _prjpProjectId
      (\ s a -> s{_prjpProjectId = a})

-- | JSONP
prjpCallback :: Lens' ProjectsRegionsJobsPatch (Maybe Text)
prjpCallback
  = lens _prjpCallback (\ s a -> s{_prjpCallback = a})

instance GoogleRequest ProjectsRegionsJobsPatch where
        type Rs ProjectsRegionsJobsPatch = Job
        type Scopes ProjectsRegionsJobsPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsRegionsJobsPatch'{..}
          = go _prjpProjectId _prjpRegion _prjpJobId _prjpXgafv
              _prjpUploadProtocol
              _prjpUpdateMask
              _prjpAccessToken
              _prjpUploadType
              _prjpCallback
              (Just AltJSON)
              _prjpPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsRegionsJobsPatchResource)
                      mempty
