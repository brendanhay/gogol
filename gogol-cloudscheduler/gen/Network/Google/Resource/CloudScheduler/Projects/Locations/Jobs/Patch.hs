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
-- Module      : Network.Google.Resource.CloudScheduler.Projects.Locations.Jobs.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a job. If successful, the updated Job is returned. If the job
-- does not exist, \`NOT_FOUND\` is returned. If UpdateJob does not
-- successfully return, it is possible for the job to be in an
-- Job.State.UPDATE_FAILED state. A job in this state may not be executed.
-- If this happens, retry the UpdateJob request until a successful response
-- is received.
--
-- /See:/ <https://cloud.google.com/scheduler/ Cloud Scheduler API Reference> for @cloudscheduler.projects.locations.jobs.patch@.
module Network.Google.Resource.CloudScheduler.Projects.Locations.Jobs.Patch
    (
    -- * REST Resource
      ProjectsLocationsJobsPatchResource

    -- * Creating a Request
    , projectsLocationsJobsPatch
    , ProjectsLocationsJobsPatch

    -- * Request Lenses
    , pljpXgafv
    , pljpUploadProtocol
    , pljpUpdateMask
    , pljpAccessToken
    , pljpUploadType
    , pljpPayload
    , pljpName
    , pljpCallback
    ) where

import           Network.Google.CloudScheduler.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudscheduler.projects.locations.jobs.patch@ method which the
-- 'ProjectsLocationsJobsPatch' request conforms to.
type ProjectsLocationsJobsPatchResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Job :> Patch '[JSON] Job

-- | Updates a job. If successful, the updated Job is returned. If the job
-- does not exist, \`NOT_FOUND\` is returned. If UpdateJob does not
-- successfully return, it is possible for the job to be in an
-- Job.State.UPDATE_FAILED state. A job in this state may not be executed.
-- If this happens, retry the UpdateJob request until a successful response
-- is received.
--
-- /See:/ 'projectsLocationsJobsPatch' smart constructor.
data ProjectsLocationsJobsPatch = ProjectsLocationsJobsPatch'
    { _pljpXgafv          :: !(Maybe Xgafv)
    , _pljpUploadProtocol :: !(Maybe Text)
    , _pljpUpdateMask     :: !(Maybe GFieldMask)
    , _pljpAccessToken    :: !(Maybe Text)
    , _pljpUploadType     :: !(Maybe Text)
    , _pljpPayload        :: !Job
    , _pljpName           :: !Text
    , _pljpCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLocationsJobsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pljpXgafv'
--
-- * 'pljpUploadProtocol'
--
-- * 'pljpUpdateMask'
--
-- * 'pljpAccessToken'
--
-- * 'pljpUploadType'
--
-- * 'pljpPayload'
--
-- * 'pljpName'
--
-- * 'pljpCallback'
projectsLocationsJobsPatch
    :: Job -- ^ 'pljpPayload'
    -> Text -- ^ 'pljpName'
    -> ProjectsLocationsJobsPatch
projectsLocationsJobsPatch pPljpPayload_ pPljpName_ =
    ProjectsLocationsJobsPatch'
    { _pljpXgafv = Nothing
    , _pljpUploadProtocol = Nothing
    , _pljpUpdateMask = Nothing
    , _pljpAccessToken = Nothing
    , _pljpUploadType = Nothing
    , _pljpPayload = pPljpPayload_
    , _pljpName = pPljpName_
    , _pljpCallback = Nothing
    }

-- | V1 error format.
pljpXgafv :: Lens' ProjectsLocationsJobsPatch (Maybe Xgafv)
pljpXgafv
  = lens _pljpXgafv (\ s a -> s{_pljpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pljpUploadProtocol :: Lens' ProjectsLocationsJobsPatch (Maybe Text)
pljpUploadProtocol
  = lens _pljpUploadProtocol
      (\ s a -> s{_pljpUploadProtocol = a})

-- | A mask used to specify which fields of the job are being updated.
pljpUpdateMask :: Lens' ProjectsLocationsJobsPatch (Maybe GFieldMask)
pljpUpdateMask
  = lens _pljpUpdateMask
      (\ s a -> s{_pljpUpdateMask = a})

-- | OAuth access token.
pljpAccessToken :: Lens' ProjectsLocationsJobsPatch (Maybe Text)
pljpAccessToken
  = lens _pljpAccessToken
      (\ s a -> s{_pljpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pljpUploadType :: Lens' ProjectsLocationsJobsPatch (Maybe Text)
pljpUploadType
  = lens _pljpUploadType
      (\ s a -> s{_pljpUploadType = a})

-- | Multipart request metadata.
pljpPayload :: Lens' ProjectsLocationsJobsPatch Job
pljpPayload
  = lens _pljpPayload (\ s a -> s{_pljpPayload = a})

-- | The job name. For example:
-- \`projects\/PROJECT_ID\/locations\/LOCATION_ID\/jobs\/JOB_ID\`. *
-- \`PROJECT_ID\` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens
-- (-), colons (:), or periods (.). For more information, see [Identifying
-- projects](https:\/\/cloud.google.com\/resource-manager\/docs\/creating-managing-projects#identifying_projects)
-- * \`LOCATION_ID\` is the canonical ID for the job\'s location. The list
-- of available locations can be obtained by calling ListLocations. For
-- more information, see https:\/\/cloud.google.com\/about\/locations\/. *
-- \`JOB_ID\` can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens
-- (-), or underscores (_). The maximum length is 500 characters.
pljpName :: Lens' ProjectsLocationsJobsPatch Text
pljpName = lens _pljpName (\ s a -> s{_pljpName = a})

-- | JSONP
pljpCallback :: Lens' ProjectsLocationsJobsPatch (Maybe Text)
pljpCallback
  = lens _pljpCallback (\ s a -> s{_pljpCallback = a})

instance GoogleRequest ProjectsLocationsJobsPatch
         where
        type Rs ProjectsLocationsJobsPatch = Job
        type Scopes ProjectsLocationsJobsPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsJobsPatch'{..}
          = go _pljpName _pljpXgafv _pljpUploadProtocol
              _pljpUpdateMask
              _pljpAccessToken
              _pljpUploadType
              _pljpCallback
              (Just AltJSON)
              _pljpPayload
              cloudSchedulerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsJobsPatchResource)
                      mempty
