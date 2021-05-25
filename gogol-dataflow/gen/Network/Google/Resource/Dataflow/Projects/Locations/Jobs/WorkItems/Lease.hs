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
-- Module      : Network.Google.Resource.Dataflow.Projects.Locations.Jobs.WorkItems.Lease
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Leases a dataflow WorkItem to run.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.locations.jobs.workItems.lease@.
module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.WorkItems.Lease
    (
    -- * REST Resource
      ProjectsLocationsJobsWorkItemsLeaseResource

    -- * Creating a Request
    , projectsLocationsJobsWorkItemsLease
    , ProjectsLocationsJobsWorkItemsLease

    -- * Request Lenses
    , pljwilXgafv
    , pljwilJobId
    , pljwilUploadProtocol
    , pljwilLocation
    , pljwilAccessToken
    , pljwilUploadType
    , pljwilPayload
    , pljwilProjectId
    , pljwilCallback
    ) where

import Network.Google.Dataflow.Types
import Network.Google.Prelude

-- | A resource alias for @dataflow.projects.locations.jobs.workItems.lease@ method which the
-- 'ProjectsLocationsJobsWorkItemsLease' request conforms to.
type ProjectsLocationsJobsWorkItemsLeaseResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "locations" :>
             Capture "location" Text :>
               "jobs" :>
                 Capture "jobId" Text :>
                   "workItems:lease" :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] LeaseWorkItemRequest :>
                                   Post '[JSON] LeaseWorkItemResponse

-- | Leases a dataflow WorkItem to run.
--
-- /See:/ 'projectsLocationsJobsWorkItemsLease' smart constructor.
data ProjectsLocationsJobsWorkItemsLease =
  ProjectsLocationsJobsWorkItemsLease'
    { _pljwilXgafv :: !(Maybe Xgafv)
    , _pljwilJobId :: !Text
    , _pljwilUploadProtocol :: !(Maybe Text)
    , _pljwilLocation :: !Text
    , _pljwilAccessToken :: !(Maybe Text)
    , _pljwilUploadType :: !(Maybe Text)
    , _pljwilPayload :: !LeaseWorkItemRequest
    , _pljwilProjectId :: !Text
    , _pljwilCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsJobsWorkItemsLease' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pljwilXgafv'
--
-- * 'pljwilJobId'
--
-- * 'pljwilUploadProtocol'
--
-- * 'pljwilLocation'
--
-- * 'pljwilAccessToken'
--
-- * 'pljwilUploadType'
--
-- * 'pljwilPayload'
--
-- * 'pljwilProjectId'
--
-- * 'pljwilCallback'
projectsLocationsJobsWorkItemsLease
    :: Text -- ^ 'pljwilJobId'
    -> Text -- ^ 'pljwilLocation'
    -> LeaseWorkItemRequest -- ^ 'pljwilPayload'
    -> Text -- ^ 'pljwilProjectId'
    -> ProjectsLocationsJobsWorkItemsLease
projectsLocationsJobsWorkItemsLease pPljwilJobId_ pPljwilLocation_ pPljwilPayload_ pPljwilProjectId_ =
  ProjectsLocationsJobsWorkItemsLease'
    { _pljwilXgafv = Nothing
    , _pljwilJobId = pPljwilJobId_
    , _pljwilUploadProtocol = Nothing
    , _pljwilLocation = pPljwilLocation_
    , _pljwilAccessToken = Nothing
    , _pljwilUploadType = Nothing
    , _pljwilPayload = pPljwilPayload_
    , _pljwilProjectId = pPljwilProjectId_
    , _pljwilCallback = Nothing
    }


-- | V1 error format.
pljwilXgafv :: Lens' ProjectsLocationsJobsWorkItemsLease (Maybe Xgafv)
pljwilXgafv
  = lens _pljwilXgafv (\ s a -> s{_pljwilXgafv = a})

-- | Identifies the workflow job this worker belongs to.
pljwilJobId :: Lens' ProjectsLocationsJobsWorkItemsLease Text
pljwilJobId
  = lens _pljwilJobId (\ s a -> s{_pljwilJobId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pljwilUploadProtocol :: Lens' ProjectsLocationsJobsWorkItemsLease (Maybe Text)
pljwilUploadProtocol
  = lens _pljwilUploadProtocol
      (\ s a -> s{_pljwilUploadProtocol = a})

-- | The [regional endpoint]
-- (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints)
-- that contains the WorkItem\'s job.
pljwilLocation :: Lens' ProjectsLocationsJobsWorkItemsLease Text
pljwilLocation
  = lens _pljwilLocation
      (\ s a -> s{_pljwilLocation = a})

-- | OAuth access token.
pljwilAccessToken :: Lens' ProjectsLocationsJobsWorkItemsLease (Maybe Text)
pljwilAccessToken
  = lens _pljwilAccessToken
      (\ s a -> s{_pljwilAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pljwilUploadType :: Lens' ProjectsLocationsJobsWorkItemsLease (Maybe Text)
pljwilUploadType
  = lens _pljwilUploadType
      (\ s a -> s{_pljwilUploadType = a})

-- | Multipart request metadata.
pljwilPayload :: Lens' ProjectsLocationsJobsWorkItemsLease LeaseWorkItemRequest
pljwilPayload
  = lens _pljwilPayload
      (\ s a -> s{_pljwilPayload = a})

-- | Identifies the project this worker belongs to.
pljwilProjectId :: Lens' ProjectsLocationsJobsWorkItemsLease Text
pljwilProjectId
  = lens _pljwilProjectId
      (\ s a -> s{_pljwilProjectId = a})

-- | JSONP
pljwilCallback :: Lens' ProjectsLocationsJobsWorkItemsLease (Maybe Text)
pljwilCallback
  = lens _pljwilCallback
      (\ s a -> s{_pljwilCallback = a})

instance GoogleRequest
           ProjectsLocationsJobsWorkItemsLease
         where
        type Rs ProjectsLocationsJobsWorkItemsLease =
             LeaseWorkItemResponse
        type Scopes ProjectsLocationsJobsWorkItemsLease =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient
          ProjectsLocationsJobsWorkItemsLease'{..}
          = go _pljwilProjectId _pljwilLocation _pljwilJobId
              _pljwilXgafv
              _pljwilUploadProtocol
              _pljwilAccessToken
              _pljwilUploadType
              _pljwilCallback
              (Just AltJSON)
              _pljwilPayload
              dataflowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsJobsWorkItemsLeaseResource)
                      mempty
