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
-- Module      : Network.Google.Resource.CloudScheduler.Projects.Locations.Jobs.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a job.
--
-- /See:/ <https://cloud.google.com/scheduler/ Cloud Scheduler API Reference> for @cloudscheduler.projects.locations.jobs.create@.
module Network.Google.Resource.CloudScheduler.Projects.Locations.Jobs.Create
    (
    -- * REST Resource
      ProjectsLocationsJobsCreateResource

    -- * Creating a Request
    , projectsLocationsJobsCreate
    , ProjectsLocationsJobsCreate

    -- * Request Lenses
    , pljcParent
    , pljcXgafv
    , pljcUploadProtocol
    , pljcAccessToken
    , pljcUploadType
    , pljcPayload
    , pljcCallback
    ) where

import Network.Google.CloudScheduler.Types
import Network.Google.Prelude

-- | A resource alias for @cloudscheduler.projects.locations.jobs.create@ method which the
-- 'ProjectsLocationsJobsCreate' request conforms to.
type ProjectsLocationsJobsCreateResource =
     "v1" :>
       Capture "parent" Text :>
         "jobs" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Job :> Post '[JSON] Job

-- | Creates a job.
--
-- /See:/ 'projectsLocationsJobsCreate' smart constructor.
data ProjectsLocationsJobsCreate =
  ProjectsLocationsJobsCreate'
    { _pljcParent :: !Text
    , _pljcXgafv :: !(Maybe Xgafv)
    , _pljcUploadProtocol :: !(Maybe Text)
    , _pljcAccessToken :: !(Maybe Text)
    , _pljcUploadType :: !(Maybe Text)
    , _pljcPayload :: !Job
    , _pljcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsJobsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pljcParent'
--
-- * 'pljcXgafv'
--
-- * 'pljcUploadProtocol'
--
-- * 'pljcAccessToken'
--
-- * 'pljcUploadType'
--
-- * 'pljcPayload'
--
-- * 'pljcCallback'
projectsLocationsJobsCreate
    :: Text -- ^ 'pljcParent'
    -> Job -- ^ 'pljcPayload'
    -> ProjectsLocationsJobsCreate
projectsLocationsJobsCreate pPljcParent_ pPljcPayload_ =
  ProjectsLocationsJobsCreate'
    { _pljcParent = pPljcParent_
    , _pljcXgafv = Nothing
    , _pljcUploadProtocol = Nothing
    , _pljcAccessToken = Nothing
    , _pljcUploadType = Nothing
    , _pljcPayload = pPljcPayload_
    , _pljcCallback = Nothing
    }


-- | Required. The location name. For example:
-- \`projects\/PROJECT_ID\/locations\/LOCATION_ID\`.
pljcParent :: Lens' ProjectsLocationsJobsCreate Text
pljcParent
  = lens _pljcParent (\ s a -> s{_pljcParent = a})

-- | V1 error format.
pljcXgafv :: Lens' ProjectsLocationsJobsCreate (Maybe Xgafv)
pljcXgafv
  = lens _pljcXgafv (\ s a -> s{_pljcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pljcUploadProtocol :: Lens' ProjectsLocationsJobsCreate (Maybe Text)
pljcUploadProtocol
  = lens _pljcUploadProtocol
      (\ s a -> s{_pljcUploadProtocol = a})

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

-- | JSONP
pljcCallback :: Lens' ProjectsLocationsJobsCreate (Maybe Text)
pljcCallback
  = lens _pljcCallback (\ s a -> s{_pljcCallback = a})

instance GoogleRequest ProjectsLocationsJobsCreate
         where
        type Rs ProjectsLocationsJobsCreate = Job
        type Scopes ProjectsLocationsJobsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsJobsCreate'{..}
          = go _pljcParent _pljcXgafv _pljcUploadProtocol
              _pljcAccessToken
              _pljcUploadType
              _pljcCallback
              (Just AltJSON)
              _pljcPayload
              cloudSchedulerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsJobsCreateResource)
                      mempty
