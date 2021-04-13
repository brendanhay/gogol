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
-- Module      : Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Tasks.Run
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Forces a task to run now. When this method is called, Cloud Tasks will
-- dispatch the task, even if the task is already running, the queue has
-- reached its RateLimits or is PAUSED. This command is meant to be used
-- for manual debugging. For example, RunTask can be used to retry a failed
-- task after a fix has been made or to manually force a task to be
-- dispatched now. The dispatched task is returned. That is, the task that
-- is returned contains the status after the task is dispatched but before
-- the task is received by its target. If Cloud Tasks receives a successful
-- response from the task\'s target, then the task will be deleted;
-- otherwise the task\'s schedule_time will be reset to the time that
-- RunTask was called plus the retry delay specified in the queue\'s
-- RetryConfig. RunTask returns NOT_FOUND when it is called on a task that
-- has already succeeded or permanently failed.
--
-- /See:/ <https://cloud.google.com/tasks/ Cloud Tasks API Reference> for @cloudtasks.projects.locations.queues.tasks.run@.
module Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Tasks.Run
    (
    -- * REST Resource
      ProjectsLocationsQueuesTasksRunResource

    -- * Creating a Request
    , projectsLocationsQueuesTasksRun
    , ProjectsLocationsQueuesTasksRun

    -- * Request Lenses
    , plqtrXgafv
    , plqtrUploadProtocol
    , plqtrAccessToken
    , plqtrUploadType
    , plqtrPayload
    , plqtrName
    , plqtrCallback
    ) where

import Network.Google.CloudTasks.Types
import Network.Google.Prelude

-- | A resource alias for @cloudtasks.projects.locations.queues.tasks.run@ method which the
-- 'ProjectsLocationsQueuesTasksRun' request conforms to.
type ProjectsLocationsQueuesTasksRunResource =
     "v2" :>
       CaptureMode "name" "run" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] RunTaskRequest :> Post '[JSON] Task

-- | Forces a task to run now. When this method is called, Cloud Tasks will
-- dispatch the task, even if the task is already running, the queue has
-- reached its RateLimits or is PAUSED. This command is meant to be used
-- for manual debugging. For example, RunTask can be used to retry a failed
-- task after a fix has been made or to manually force a task to be
-- dispatched now. The dispatched task is returned. That is, the task that
-- is returned contains the status after the task is dispatched but before
-- the task is received by its target. If Cloud Tasks receives a successful
-- response from the task\'s target, then the task will be deleted;
-- otherwise the task\'s schedule_time will be reset to the time that
-- RunTask was called plus the retry delay specified in the queue\'s
-- RetryConfig. RunTask returns NOT_FOUND when it is called on a task that
-- has already succeeded or permanently failed.
--
-- /See:/ 'projectsLocationsQueuesTasksRun' smart constructor.
data ProjectsLocationsQueuesTasksRun =
  ProjectsLocationsQueuesTasksRun'
    { _plqtrXgafv :: !(Maybe Xgafv)
    , _plqtrUploadProtocol :: !(Maybe Text)
    , _plqtrAccessToken :: !(Maybe Text)
    , _plqtrUploadType :: !(Maybe Text)
    , _plqtrPayload :: !RunTaskRequest
    , _plqtrName :: !Text
    , _plqtrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsQueuesTasksRun' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plqtrXgafv'
--
-- * 'plqtrUploadProtocol'
--
-- * 'plqtrAccessToken'
--
-- * 'plqtrUploadType'
--
-- * 'plqtrPayload'
--
-- * 'plqtrName'
--
-- * 'plqtrCallback'
projectsLocationsQueuesTasksRun
    :: RunTaskRequest -- ^ 'plqtrPayload'
    -> Text -- ^ 'plqtrName'
    -> ProjectsLocationsQueuesTasksRun
projectsLocationsQueuesTasksRun pPlqtrPayload_ pPlqtrName_ =
  ProjectsLocationsQueuesTasksRun'
    { _plqtrXgafv = Nothing
    , _plqtrUploadProtocol = Nothing
    , _plqtrAccessToken = Nothing
    , _plqtrUploadType = Nothing
    , _plqtrPayload = pPlqtrPayload_
    , _plqtrName = pPlqtrName_
    , _plqtrCallback = Nothing
    }


-- | V1 error format.
plqtrXgafv :: Lens' ProjectsLocationsQueuesTasksRun (Maybe Xgafv)
plqtrXgafv
  = lens _plqtrXgafv (\ s a -> s{_plqtrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plqtrUploadProtocol :: Lens' ProjectsLocationsQueuesTasksRun (Maybe Text)
plqtrUploadProtocol
  = lens _plqtrUploadProtocol
      (\ s a -> s{_plqtrUploadProtocol = a})

-- | OAuth access token.
plqtrAccessToken :: Lens' ProjectsLocationsQueuesTasksRun (Maybe Text)
plqtrAccessToken
  = lens _plqtrAccessToken
      (\ s a -> s{_plqtrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plqtrUploadType :: Lens' ProjectsLocationsQueuesTasksRun (Maybe Text)
plqtrUploadType
  = lens _plqtrUploadType
      (\ s a -> s{_plqtrUploadType = a})

-- | Multipart request metadata.
plqtrPayload :: Lens' ProjectsLocationsQueuesTasksRun RunTaskRequest
plqtrPayload
  = lens _plqtrPayload (\ s a -> s{_plqtrPayload = a})

-- | Required. The task name. For example:
-- \`projects\/PROJECT_ID\/locations\/LOCATION_ID\/queues\/QUEUE_ID\/tasks\/TASK_ID\`
plqtrName :: Lens' ProjectsLocationsQueuesTasksRun Text
plqtrName
  = lens _plqtrName (\ s a -> s{_plqtrName = a})

-- | JSONP
plqtrCallback :: Lens' ProjectsLocationsQueuesTasksRun (Maybe Text)
plqtrCallback
  = lens _plqtrCallback
      (\ s a -> s{_plqtrCallback = a})

instance GoogleRequest
           ProjectsLocationsQueuesTasksRun
         where
        type Rs ProjectsLocationsQueuesTasksRun = Task
        type Scopes ProjectsLocationsQueuesTasksRun =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsQueuesTasksRun'{..}
          = go _plqtrName _plqtrXgafv _plqtrUploadProtocol
              _plqtrAccessToken
              _plqtrUploadType
              _plqtrCallback
              (Just AltJSON)
              _plqtrPayload
              cloudTasksService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsQueuesTasksRunResource)
                      mempty
