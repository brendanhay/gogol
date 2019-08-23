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
-- Module      : Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Cloud Dataflow job. To create a job, we recommend using
-- \`projects.locations.jobs.create\` with a [regional endpoint]
-- (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints).
-- Using \`projects.jobs.create\` is not recommended, as your job will
-- always start in \`us-central1\`.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.locations.jobs.create@.
module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Create
    (
    -- * REST Resource
      ProjectsLocationsJobsCreateResource

    -- * Creating a Request
    , projectsLocationsJobsCreate
    , ProjectsLocationsJobsCreate

    -- * Request Lenses
    , pljcXgafv
    , pljcUploadProtocol
    , pljcLocation
    , pljcAccessToken
    , pljcUploadType
    , pljcPayload
    , pljcView
    , pljcProjectId
    , pljcReplaceJobId
    , pljcCallback
    ) where

import           Network.Google.Dataflow.Types
import           Network.Google.Prelude

-- | A resource alias for @dataflow.projects.locations.jobs.create@ method which the
-- 'ProjectsLocationsJobsCreate' request conforms to.
type ProjectsLocationsJobsCreateResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "locations" :>
             Capture "location" Text :>
               "jobs" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "view" Text :>
                           QueryParam "replaceJobId" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] Job :> Post '[JSON] Job

-- | Creates a Cloud Dataflow job. To create a job, we recommend using
-- \`projects.locations.jobs.create\` with a [regional endpoint]
-- (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints).
-- Using \`projects.jobs.create\` is not recommended, as your job will
-- always start in \`us-central1\`.
--
-- /See:/ 'projectsLocationsJobsCreate' smart constructor.
data ProjectsLocationsJobsCreate =
  ProjectsLocationsJobsCreate'
    { _pljcXgafv          :: !(Maybe Xgafv)
    , _pljcUploadProtocol :: !(Maybe Text)
    , _pljcLocation       :: !Text
    , _pljcAccessToken    :: !(Maybe Text)
    , _pljcUploadType     :: !(Maybe Text)
    , _pljcPayload        :: !Job
    , _pljcView           :: !(Maybe Text)
    , _pljcProjectId      :: !Text
    , _pljcReplaceJobId   :: !(Maybe Text)
    , _pljcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsJobsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pljcXgafv'
--
-- * 'pljcUploadProtocol'
--
-- * 'pljcLocation'
--
-- * 'pljcAccessToken'
--
-- * 'pljcUploadType'
--
-- * 'pljcPayload'
--
-- * 'pljcView'
--
-- * 'pljcProjectId'
--
-- * 'pljcReplaceJobId'
--
-- * 'pljcCallback'
projectsLocationsJobsCreate
    :: Text -- ^ 'pljcLocation'
    -> Job -- ^ 'pljcPayload'
    -> Text -- ^ 'pljcProjectId'
    -> ProjectsLocationsJobsCreate
projectsLocationsJobsCreate pPljcLocation_ pPljcPayload_ pPljcProjectId_ =
  ProjectsLocationsJobsCreate'
    { _pljcXgafv = Nothing
    , _pljcUploadProtocol = Nothing
    , _pljcLocation = pPljcLocation_
    , _pljcAccessToken = Nothing
    , _pljcUploadType = Nothing
    , _pljcPayload = pPljcPayload_
    , _pljcView = Nothing
    , _pljcProjectId = pPljcProjectId_
    , _pljcReplaceJobId = Nothing
    , _pljcCallback = Nothing
    }


-- | V1 error format.
pljcXgafv :: Lens' ProjectsLocationsJobsCreate (Maybe Xgafv)
pljcXgafv
  = lens _pljcXgafv (\ s a -> s{_pljcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pljcUploadProtocol :: Lens' ProjectsLocationsJobsCreate (Maybe Text)
pljcUploadProtocol
  = lens _pljcUploadProtocol
      (\ s a -> s{_pljcUploadProtocol = a})

-- | The [regional endpoint]
-- (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints)
-- that contains this job.
pljcLocation :: Lens' ProjectsLocationsJobsCreate Text
pljcLocation
  = lens _pljcLocation (\ s a -> s{_pljcLocation = a})

-- | OAuth access token.
pljcAccessToken :: Lens' ProjectsLocationsJobsCreate (Maybe Text)
pljcAccessToken
  = lens _pljcAccessToken
      (\ s a -> s{_pljcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pljcUploadType :: Lens' ProjectsLocationsJobsCreate (Maybe Text)
pljcUploadType
  = lens _pljcUploadType
      (\ s a -> s{_pljcUploadType = a})

-- | Multipart request metadata.
pljcPayload :: Lens' ProjectsLocationsJobsCreate Job
pljcPayload
  = lens _pljcPayload (\ s a -> s{_pljcPayload = a})

-- | The level of information requested in response.
pljcView :: Lens' ProjectsLocationsJobsCreate (Maybe Text)
pljcView = lens _pljcView (\ s a -> s{_pljcView = a})

-- | The ID of the Cloud Platform project that the job belongs to.
pljcProjectId :: Lens' ProjectsLocationsJobsCreate Text
pljcProjectId
  = lens _pljcProjectId
      (\ s a -> s{_pljcProjectId = a})

-- | Deprecated. This field is now in the Job message.
pljcReplaceJobId :: Lens' ProjectsLocationsJobsCreate (Maybe Text)
pljcReplaceJobId
  = lens _pljcReplaceJobId
      (\ s a -> s{_pljcReplaceJobId = a})

-- | JSONP
pljcCallback :: Lens' ProjectsLocationsJobsCreate (Maybe Text)
pljcCallback
  = lens _pljcCallback (\ s a -> s{_pljcCallback = a})

instance GoogleRequest ProjectsLocationsJobsCreate
         where
        type Rs ProjectsLocationsJobsCreate = Job
        type Scopes ProjectsLocationsJobsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ProjectsLocationsJobsCreate'{..}
          = go _pljcProjectId _pljcLocation _pljcXgafv
              _pljcUploadProtocol
              _pljcAccessToken
              _pljcUploadType
              _pljcView
              _pljcReplaceJobId
              _pljcCallback
              (Just AltJSON)
              _pljcPayload
              dataflowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsJobsCreateResource)
                      mempty
