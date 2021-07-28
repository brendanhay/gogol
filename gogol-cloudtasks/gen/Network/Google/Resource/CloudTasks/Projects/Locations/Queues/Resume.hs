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
-- Module      : Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Resume
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resume a queue. This method resumes a queue after it has been PAUSED or
-- DISABLED. The state of a queue is stored in the queue\'s state; after
-- calling this method it will be set to RUNNING. WARNING: Resuming many
-- high-QPS queues at the same time can lead to target overloading. If you
-- are resuming high-QPS queues, follow the 500\/50\/5 pattern described in
-- [Managing Cloud Tasks Scaling
-- Risks](https:\/\/cloud.google.com\/tasks\/docs\/manage-cloud-task-scaling).
--
-- /See:/ <https://cloud.google.com/tasks/ Cloud Tasks API Reference> for @cloudtasks.projects.locations.queues.resume@.
module Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Resume
    (
    -- * REST Resource
      ProjectsLocationsQueuesResumeResource

    -- * Creating a Request
    , projectsLocationsQueuesResume
    , ProjectsLocationsQueuesResume

    -- * Request Lenses
    , plqrXgafv
    , plqrUploadProtocol
    , plqrAccessToken
    , plqrUploadType
    , plqrPayload
    , plqrName
    , plqrCallback
    ) where

import Network.Google.CloudTasks.Types
import Network.Google.Prelude

-- | A resource alias for @cloudtasks.projects.locations.queues.resume@ method which the
-- 'ProjectsLocationsQueuesResume' request conforms to.
type ProjectsLocationsQueuesResumeResource =
     "v2" :>
       CaptureMode "name" "resume" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ResumeQueueRequest :>
                       Post '[JSON] Queue

-- | Resume a queue. This method resumes a queue after it has been PAUSED or
-- DISABLED. The state of a queue is stored in the queue\'s state; after
-- calling this method it will be set to RUNNING. WARNING: Resuming many
-- high-QPS queues at the same time can lead to target overloading. If you
-- are resuming high-QPS queues, follow the 500\/50\/5 pattern described in
-- [Managing Cloud Tasks Scaling
-- Risks](https:\/\/cloud.google.com\/tasks\/docs\/manage-cloud-task-scaling).
--
-- /See:/ 'projectsLocationsQueuesResume' smart constructor.
data ProjectsLocationsQueuesResume =
  ProjectsLocationsQueuesResume'
    { _plqrXgafv :: !(Maybe Xgafv)
    , _plqrUploadProtocol :: !(Maybe Text)
    , _plqrAccessToken :: !(Maybe Text)
    , _plqrUploadType :: !(Maybe Text)
    , _plqrPayload :: !ResumeQueueRequest
    , _plqrName :: !Text
    , _plqrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsQueuesResume' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plqrXgafv'
--
-- * 'plqrUploadProtocol'
--
-- * 'plqrAccessToken'
--
-- * 'plqrUploadType'
--
-- * 'plqrPayload'
--
-- * 'plqrName'
--
-- * 'plqrCallback'
projectsLocationsQueuesResume
    :: ResumeQueueRequest -- ^ 'plqrPayload'
    -> Text -- ^ 'plqrName'
    -> ProjectsLocationsQueuesResume
projectsLocationsQueuesResume pPlqrPayload_ pPlqrName_ =
  ProjectsLocationsQueuesResume'
    { _plqrXgafv = Nothing
    , _plqrUploadProtocol = Nothing
    , _plqrAccessToken = Nothing
    , _plqrUploadType = Nothing
    , _plqrPayload = pPlqrPayload_
    , _plqrName = pPlqrName_
    , _plqrCallback = Nothing
    }


-- | V1 error format.
plqrXgafv :: Lens' ProjectsLocationsQueuesResume (Maybe Xgafv)
plqrXgafv
  = lens _plqrXgafv (\ s a -> s{_plqrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plqrUploadProtocol :: Lens' ProjectsLocationsQueuesResume (Maybe Text)
plqrUploadProtocol
  = lens _plqrUploadProtocol
      (\ s a -> s{_plqrUploadProtocol = a})

-- | OAuth access token.
plqrAccessToken :: Lens' ProjectsLocationsQueuesResume (Maybe Text)
plqrAccessToken
  = lens _plqrAccessToken
      (\ s a -> s{_plqrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plqrUploadType :: Lens' ProjectsLocationsQueuesResume (Maybe Text)
plqrUploadType
  = lens _plqrUploadType
      (\ s a -> s{_plqrUploadType = a})

-- | Multipart request metadata.
plqrPayload :: Lens' ProjectsLocationsQueuesResume ResumeQueueRequest
plqrPayload
  = lens _plqrPayload (\ s a -> s{_plqrPayload = a})

-- | Required. The queue name. For example:
-- \`projects\/PROJECT_ID\/location\/LOCATION_ID\/queues\/QUEUE_ID\`
plqrName :: Lens' ProjectsLocationsQueuesResume Text
plqrName = lens _plqrName (\ s a -> s{_plqrName = a})

-- | JSONP
plqrCallback :: Lens' ProjectsLocationsQueuesResume (Maybe Text)
plqrCallback
  = lens _plqrCallback (\ s a -> s{_plqrCallback = a})

instance GoogleRequest ProjectsLocationsQueuesResume
         where
        type Rs ProjectsLocationsQueuesResume = Queue
        type Scopes ProjectsLocationsQueuesResume =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsQueuesResume'{..}
          = go _plqrName _plqrXgafv _plqrUploadProtocol
              _plqrAccessToken
              _plqrUploadType
              _plqrCallback
              (Just AltJSON)
              _plqrPayload
              cloudTasksService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsQueuesResumeResource)
                      mempty
