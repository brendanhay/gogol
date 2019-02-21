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
-- Module      : Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the state of the specified Cloud Dataflow job.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.locations.jobs.get@.
module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Get
    (
    -- * REST Resource
      ProjectsLocationsJobsGetResource

    -- * Creating a Request
    , projectsLocationsJobsGet
    , ProjectsLocationsJobsGet

    -- * Request Lenses
    , pljgXgafv
    , pljgJobId
    , pljgUploadProtocol
    , pljgLocation
    , pljgAccessToken
    , pljgUploadType
    , pljgView
    , pljgProjectId
    , pljgCallback
    ) where

import           Network.Google.Dataflow.Types
import           Network.Google.Prelude

-- | A resource alias for @dataflow.projects.locations.jobs.get@ method which the
-- 'ProjectsLocationsJobsGet' request conforms to.
type ProjectsLocationsJobsGetResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "locations" :>
             Capture "location" Text :>
               "jobs" :>
                 Capture "jobId" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "view" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :> Get '[JSON] Job

-- | Gets the state of the specified Cloud Dataflow job.
--
-- /See:/ 'projectsLocationsJobsGet' smart constructor.
data ProjectsLocationsJobsGet =
  ProjectsLocationsJobsGet'
    { _pljgXgafv          :: !(Maybe Xgafv)
    , _pljgJobId          :: !Text
    , _pljgUploadProtocol :: !(Maybe Text)
    , _pljgLocation       :: !Text
    , _pljgAccessToken    :: !(Maybe Text)
    , _pljgUploadType     :: !(Maybe Text)
    , _pljgView           :: !(Maybe Text)
    , _pljgProjectId      :: !Text
    , _pljgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsJobsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pljgXgafv'
--
-- * 'pljgJobId'
--
-- * 'pljgUploadProtocol'
--
-- * 'pljgLocation'
--
-- * 'pljgAccessToken'
--
-- * 'pljgUploadType'
--
-- * 'pljgView'
--
-- * 'pljgProjectId'
--
-- * 'pljgCallback'
projectsLocationsJobsGet
    :: Text -- ^ 'pljgJobId'
    -> Text -- ^ 'pljgLocation'
    -> Text -- ^ 'pljgProjectId'
    -> ProjectsLocationsJobsGet
projectsLocationsJobsGet pPljgJobId_ pPljgLocation_ pPljgProjectId_ =
  ProjectsLocationsJobsGet'
    { _pljgXgafv = Nothing
    , _pljgJobId = pPljgJobId_
    , _pljgUploadProtocol = Nothing
    , _pljgLocation = pPljgLocation_
    , _pljgAccessToken = Nothing
    , _pljgUploadType = Nothing
    , _pljgView = Nothing
    , _pljgProjectId = pPljgProjectId_
    , _pljgCallback = Nothing
    }


-- | V1 error format.
pljgXgafv :: Lens' ProjectsLocationsJobsGet (Maybe Xgafv)
pljgXgafv
  = lens _pljgXgafv (\ s a -> s{_pljgXgafv = a})

-- | The job ID.
pljgJobId :: Lens' ProjectsLocationsJobsGet Text
pljgJobId
  = lens _pljgJobId (\ s a -> s{_pljgJobId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pljgUploadProtocol :: Lens' ProjectsLocationsJobsGet (Maybe Text)
pljgUploadProtocol
  = lens _pljgUploadProtocol
      (\ s a -> s{_pljgUploadProtocol = a})

-- | The location that contains this job.
pljgLocation :: Lens' ProjectsLocationsJobsGet Text
pljgLocation
  = lens _pljgLocation (\ s a -> s{_pljgLocation = a})

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

-- | The level of information requested in response.
pljgView :: Lens' ProjectsLocationsJobsGet (Maybe Text)
pljgView = lens _pljgView (\ s a -> s{_pljgView = a})

-- | The ID of the Cloud Platform project that the job belongs to.
pljgProjectId :: Lens' ProjectsLocationsJobsGet Text
pljgProjectId
  = lens _pljgProjectId
      (\ s a -> s{_pljgProjectId = a})

-- | JSONP
pljgCallback :: Lens' ProjectsLocationsJobsGet (Maybe Text)
pljgCallback
  = lens _pljgCallback (\ s a -> s{_pljgCallback = a})

instance GoogleRequest ProjectsLocationsJobsGet where
        type Rs ProjectsLocationsJobsGet = Job
        type Scopes ProjectsLocationsJobsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ProjectsLocationsJobsGet'{..}
          = go _pljgProjectId _pljgLocation _pljgJobId
              _pljgXgafv
              _pljgUploadProtocol
              _pljgAccessToken
              _pljgUploadType
              _pljgView
              _pljgCallback
              (Just AltJSON)
              dataflowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsJobsGetResource)
                      mempty
