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
-- Module      : Network.Google.Resource.CloudScheduler.Projects.Locations.Jobs.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a job.
--
-- /See:/ <https://cloud.google.com/scheduler/ Cloud Scheduler API Reference> for @cloudscheduler.projects.locations.jobs.delete@.
module Network.Google.Resource.CloudScheduler.Projects.Locations.Jobs.Delete
    (
    -- * REST Resource
      ProjectsLocationsJobsDeleteResource

    -- * Creating a Request
    , projectsLocationsJobsDelete
    , ProjectsLocationsJobsDelete

    -- * Request Lenses
    , pljdXgafv
    , pljdUploadProtocol
    , pljdAccessToken
    , pljdUploadType
    , pljdName
    , pljdCallback
    ) where

import           Network.Google.CloudScheduler.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudscheduler.projects.locations.jobs.delete@ method which the
-- 'ProjectsLocationsJobsDelete' request conforms to.
type ProjectsLocationsJobsDeleteResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a job.
--
-- /See:/ 'projectsLocationsJobsDelete' smart constructor.
data ProjectsLocationsJobsDelete = ProjectsLocationsJobsDelete'
    { _pljdXgafv          :: !(Maybe Xgafv)
    , _pljdUploadProtocol :: !(Maybe Text)
    , _pljdAccessToken    :: !(Maybe Text)
    , _pljdUploadType     :: !(Maybe Text)
    , _pljdName           :: !Text
    , _pljdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLocationsJobsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pljdXgafv'
--
-- * 'pljdUploadProtocol'
--
-- * 'pljdAccessToken'
--
-- * 'pljdUploadType'
--
-- * 'pljdName'
--
-- * 'pljdCallback'
projectsLocationsJobsDelete
    :: Text -- ^ 'pljdName'
    -> ProjectsLocationsJobsDelete
projectsLocationsJobsDelete pPljdName_ =
    ProjectsLocationsJobsDelete'
    { _pljdXgafv = Nothing
    , _pljdUploadProtocol = Nothing
    , _pljdAccessToken = Nothing
    , _pljdUploadType = Nothing
    , _pljdName = pPljdName_
    , _pljdCallback = Nothing
    }

-- | V1 error format.
pljdXgafv :: Lens' ProjectsLocationsJobsDelete (Maybe Xgafv)
pljdXgafv
  = lens _pljdXgafv (\ s a -> s{_pljdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pljdUploadProtocol :: Lens' ProjectsLocationsJobsDelete (Maybe Text)
pljdUploadProtocol
  = lens _pljdUploadProtocol
      (\ s a -> s{_pljdUploadProtocol = a})

-- | OAuth access token.
pljdAccessToken :: Lens' ProjectsLocationsJobsDelete (Maybe Text)
pljdAccessToken
  = lens _pljdAccessToken
      (\ s a -> s{_pljdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pljdUploadType :: Lens' ProjectsLocationsJobsDelete (Maybe Text)
pljdUploadType
  = lens _pljdUploadType
      (\ s a -> s{_pljdUploadType = a})

-- | Required. The job name. For example:
-- \`projects\/PROJECT_ID\/locations\/LOCATION_ID\/jobs\/JOB_ID\`.
pljdName :: Lens' ProjectsLocationsJobsDelete Text
pljdName = lens _pljdName (\ s a -> s{_pljdName = a})

-- | JSONP
pljdCallback :: Lens' ProjectsLocationsJobsDelete (Maybe Text)
pljdCallback
  = lens _pljdCallback (\ s a -> s{_pljdCallback = a})

instance GoogleRequest ProjectsLocationsJobsDelete
         where
        type Rs ProjectsLocationsJobsDelete = Empty
        type Scopes ProjectsLocationsJobsDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsJobsDelete'{..}
          = go _pljdName _pljdXgafv _pljdUploadProtocol
              _pljdAccessToken
              _pljdUploadType
              _pljdCallback
              (Just AltJSON)
              cloudSchedulerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsJobsDeleteResource)
                      mempty
