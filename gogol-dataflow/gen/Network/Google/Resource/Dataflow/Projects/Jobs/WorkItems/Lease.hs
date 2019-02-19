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
-- Module      : Network.Google.Resource.Dataflow.Projects.Jobs.WorkItems.Lease
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Leases a dataflow WorkItem to run.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.jobs.workItems.lease@.
module Network.Google.Resource.Dataflow.Projects.Jobs.WorkItems.Lease
    (
    -- * REST Resource
      ProjectsJobsWorkItemsLeaseResource

    -- * Creating a Request
    , projectsJobsWorkItemsLease
    , ProjectsJobsWorkItemsLease

    -- * Request Lenses
    , pjwilXgafv
    , pjwilJobId
    , pjwilUploadProtocol
    , pjwilAccessToken
    , pjwilUploadType
    , pjwilPayload
    , pjwilProjectId
    , pjwilCallback
    ) where

import           Network.Google.Dataflow.Types
import           Network.Google.Prelude

-- | A resource alias for @dataflow.projects.jobs.workItems.lease@ method which the
-- 'ProjectsJobsWorkItemsLease' request conforms to.
type ProjectsJobsWorkItemsLeaseResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
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
-- /See:/ 'projectsJobsWorkItemsLease' smart constructor.
data ProjectsJobsWorkItemsLease =
  ProjectsJobsWorkItemsLease'
    { _pjwilXgafv          :: !(Maybe Xgafv)
    , _pjwilJobId          :: !Text
    , _pjwilUploadProtocol :: !(Maybe Text)
    , _pjwilAccessToken    :: !(Maybe Text)
    , _pjwilUploadType     :: !(Maybe Text)
    , _pjwilPayload        :: !LeaseWorkItemRequest
    , _pjwilProjectId      :: !Text
    , _pjwilCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsJobsWorkItemsLease' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjwilXgafv'
--
-- * 'pjwilJobId'
--
-- * 'pjwilUploadProtocol'
--
-- * 'pjwilAccessToken'
--
-- * 'pjwilUploadType'
--
-- * 'pjwilPayload'
--
-- * 'pjwilProjectId'
--
-- * 'pjwilCallback'
projectsJobsWorkItemsLease
    :: Text -- ^ 'pjwilJobId'
    -> LeaseWorkItemRequest -- ^ 'pjwilPayload'
    -> Text -- ^ 'pjwilProjectId'
    -> ProjectsJobsWorkItemsLease
projectsJobsWorkItemsLease pPjwilJobId_ pPjwilPayload_ pPjwilProjectId_ =
  ProjectsJobsWorkItemsLease'
    { _pjwilXgafv = Nothing
    , _pjwilJobId = pPjwilJobId_
    , _pjwilUploadProtocol = Nothing
    , _pjwilAccessToken = Nothing
    , _pjwilUploadType = Nothing
    , _pjwilPayload = pPjwilPayload_
    , _pjwilProjectId = pPjwilProjectId_
    , _pjwilCallback = Nothing
    }

-- | V1 error format.
pjwilXgafv :: Lens' ProjectsJobsWorkItemsLease (Maybe Xgafv)
pjwilXgafv
  = lens _pjwilXgafv (\ s a -> s{_pjwilXgafv = a})

-- | Identifies the workflow job this worker belongs to.
pjwilJobId :: Lens' ProjectsJobsWorkItemsLease Text
pjwilJobId
  = lens _pjwilJobId (\ s a -> s{_pjwilJobId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjwilUploadProtocol :: Lens' ProjectsJobsWorkItemsLease (Maybe Text)
pjwilUploadProtocol
  = lens _pjwilUploadProtocol
      (\ s a -> s{_pjwilUploadProtocol = a})

-- | OAuth access token.
pjwilAccessToken :: Lens' ProjectsJobsWorkItemsLease (Maybe Text)
pjwilAccessToken
  = lens _pjwilAccessToken
      (\ s a -> s{_pjwilAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pjwilUploadType :: Lens' ProjectsJobsWorkItemsLease (Maybe Text)
pjwilUploadType
  = lens _pjwilUploadType
      (\ s a -> s{_pjwilUploadType = a})

-- | Multipart request metadata.
pjwilPayload :: Lens' ProjectsJobsWorkItemsLease LeaseWorkItemRequest
pjwilPayload
  = lens _pjwilPayload (\ s a -> s{_pjwilPayload = a})

-- | Identifies the project this worker belongs to.
pjwilProjectId :: Lens' ProjectsJobsWorkItemsLease Text
pjwilProjectId
  = lens _pjwilProjectId
      (\ s a -> s{_pjwilProjectId = a})

-- | JSONP
pjwilCallback :: Lens' ProjectsJobsWorkItemsLease (Maybe Text)
pjwilCallback
  = lens _pjwilCallback
      (\ s a -> s{_pjwilCallback = a})

instance GoogleRequest ProjectsJobsWorkItemsLease
         where
        type Rs ProjectsJobsWorkItemsLease =
             LeaseWorkItemResponse
        type Scopes ProjectsJobsWorkItemsLease =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ProjectsJobsWorkItemsLease'{..}
          = go _pjwilProjectId _pjwilJobId _pjwilXgafv
              _pjwilUploadProtocol
              _pjwilAccessToken
              _pjwilUploadType
              _pjwilCallback
              (Just AltJSON)
              _pjwilPayload
              dataflowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsJobsWorkItemsLeaseResource)
                      mempty
