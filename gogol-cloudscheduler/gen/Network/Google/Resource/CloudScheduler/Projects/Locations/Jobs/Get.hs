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
-- Module      : Network.Google.Resource.CloudScheduler.Projects.Locations.Jobs.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a job.
--
-- /See:/ <https://cloud.google.com/scheduler/ Cloud Scheduler API Reference> for @cloudscheduler.projects.locations.jobs.get@.
module Network.Google.Resource.CloudScheduler.Projects.Locations.Jobs.Get
    (
    -- * REST Resource
      ProjectsLocationsJobsGetResource

    -- * Creating a Request
    , projectsLocationsJobsGet
    , ProjectsLocationsJobsGet

    -- * Request Lenses
    , pljgXgafv
    , pljgUploadProtocol
    , pljgAccessToken
    , pljgUploadType
    , pljgName
    , pljgCallback
    ) where

import           Network.Google.CloudScheduler.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudscheduler.projects.locations.jobs.get@ method which the
-- 'ProjectsLocationsJobsGet' request conforms to.
type ProjectsLocationsJobsGetResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Job

-- | Gets a job.
--
-- /See:/ 'projectsLocationsJobsGet' smart constructor.
data ProjectsLocationsJobsGet =
  ProjectsLocationsJobsGet'
    { _pljgXgafv          :: !(Maybe Xgafv)
    , _pljgUploadProtocol :: !(Maybe Text)
    , _pljgAccessToken    :: !(Maybe Text)
    , _pljgUploadType     :: !(Maybe Text)
    , _pljgName           :: !Text
    , _pljgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsJobsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pljgXgafv'
--
-- * 'pljgUploadProtocol'
--
-- * 'pljgAccessToken'
--
-- * 'pljgUploadType'
--
-- * 'pljgName'
--
-- * 'pljgCallback'
projectsLocationsJobsGet
    :: Text -- ^ 'pljgName'
    -> ProjectsLocationsJobsGet
projectsLocationsJobsGet pPljgName_ =
  ProjectsLocationsJobsGet'
    { _pljgXgafv = Nothing
    , _pljgUploadProtocol = Nothing
    , _pljgAccessToken = Nothing
    , _pljgUploadType = Nothing
    , _pljgName = pPljgName_
    , _pljgCallback = Nothing
    }


-- | V1 error format.
pljgXgafv :: Lens' ProjectsLocationsJobsGet (Maybe Xgafv)
pljgXgafv
  = lens _pljgXgafv (\ s a -> s{_pljgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pljgUploadProtocol :: Lens' ProjectsLocationsJobsGet (Maybe Text)
pljgUploadProtocol
  = lens _pljgUploadProtocol
      (\ s a -> s{_pljgUploadProtocol = a})

-- | OAuth access token.
pljgAccessToken :: Lens' ProjectsLocationsJobsGet (Maybe Text)
pljgAccessToken
  = lens _pljgAccessToken
      (\ s a -> s{_pljgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pljgUploadType :: Lens' ProjectsLocationsJobsGet (Maybe Text)
pljgUploadType
  = lens _pljgUploadType
      (\ s a -> s{_pljgUploadType = a})

-- | Required. The job name. For example:
-- \`projects\/PROJECT_ID\/locations\/LOCATION_ID\/jobs\/JOB_ID\`.
pljgName :: Lens' ProjectsLocationsJobsGet Text
pljgName = lens _pljgName (\ s a -> s{_pljgName = a})

-- | JSONP
pljgCallback :: Lens' ProjectsLocationsJobsGet (Maybe Text)
pljgCallback
  = lens _pljgCallback (\ s a -> s{_pljgCallback = a})

instance GoogleRequest ProjectsLocationsJobsGet where
        type Rs ProjectsLocationsJobsGet = Job
        type Scopes ProjectsLocationsJobsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsJobsGet'{..}
          = go _pljgName _pljgXgafv _pljgUploadProtocol
              _pljgAccessToken
              _pljgUploadType
              _pljgCallback
              (Just AltJSON)
              cloudSchedulerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsJobsGetResource)
                      mempty
