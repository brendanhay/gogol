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
-- Module      : Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Tasks.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a task and adds it to a queue. Tasks cannot be updated after
-- creation; there is no UpdateTask command. * The maximum task size is
-- 100KB.
--
-- /See:/ <https://cloud.google.com/tasks/ Cloud Tasks API Reference> for @cloudtasks.projects.locations.queues.tasks.create@.
module Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Tasks.Create
    (
    -- * REST Resource
      ProjectsLocationsQueuesTasksCreateResource

    -- * Creating a Request
    , projectsLocationsQueuesTasksCreate
    , ProjectsLocationsQueuesTasksCreate

    -- * Request Lenses
    , plqtcParent
    , plqtcXgafv
    , plqtcUploadProtocol
    , plqtcAccessToken
    , plqtcUploadType
    , plqtcPayload
    , plqtcCallback
    ) where

import Network.Google.CloudTasks.Types
import Network.Google.Prelude

-- | A resource alias for @cloudtasks.projects.locations.queues.tasks.create@ method which the
-- 'ProjectsLocationsQueuesTasksCreate' request conforms to.
type ProjectsLocationsQueuesTasksCreateResource =
     "v2" :>
       Capture "parent" Text :>
         "tasks" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] CreateTaskRequest :>
                         Post '[JSON] Task

-- | Creates a task and adds it to a queue. Tasks cannot be updated after
-- creation; there is no UpdateTask command. * The maximum task size is
-- 100KB.
--
-- /See:/ 'projectsLocationsQueuesTasksCreate' smart constructor.
data ProjectsLocationsQueuesTasksCreate =
  ProjectsLocationsQueuesTasksCreate'
    { _plqtcParent :: !Text
    , _plqtcXgafv :: !(Maybe Xgafv)
    , _plqtcUploadProtocol :: !(Maybe Text)
    , _plqtcAccessToken :: !(Maybe Text)
    , _plqtcUploadType :: !(Maybe Text)
    , _plqtcPayload :: !CreateTaskRequest
    , _plqtcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsQueuesTasksCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plqtcParent'
--
-- * 'plqtcXgafv'
--
-- * 'plqtcUploadProtocol'
--
-- * 'plqtcAccessToken'
--
-- * 'plqtcUploadType'
--
-- * 'plqtcPayload'
--
-- * 'plqtcCallback'
projectsLocationsQueuesTasksCreate
    :: Text -- ^ 'plqtcParent'
    -> CreateTaskRequest -- ^ 'plqtcPayload'
    -> ProjectsLocationsQueuesTasksCreate
projectsLocationsQueuesTasksCreate pPlqtcParent_ pPlqtcPayload_ =
  ProjectsLocationsQueuesTasksCreate'
    { _plqtcParent = pPlqtcParent_
    , _plqtcXgafv = Nothing
    , _plqtcUploadProtocol = Nothing
    , _plqtcAccessToken = Nothing
    , _plqtcUploadType = Nothing
    , _plqtcPayload = pPlqtcPayload_
    , _plqtcCallback = Nothing
    }


-- | Required. The queue name. For example:
-- \`projects\/PROJECT_ID\/locations\/LOCATION_ID\/queues\/QUEUE_ID\` The
-- queue must already exist.
plqtcParent :: Lens' ProjectsLocationsQueuesTasksCreate Text
plqtcParent
  = lens _plqtcParent (\ s a -> s{_plqtcParent = a})

-- | V1 error format.
plqtcXgafv :: Lens' ProjectsLocationsQueuesTasksCreate (Maybe Xgafv)
plqtcXgafv
  = lens _plqtcXgafv (\ s a -> s{_plqtcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plqtcUploadProtocol :: Lens' ProjectsLocationsQueuesTasksCreate (Maybe Text)
plqtcUploadProtocol
  = lens _plqtcUploadProtocol
      (\ s a -> s{_plqtcUploadProtocol = a})

-- | OAuth access token.
plqtcAccessToken :: Lens' ProjectsLocationsQueuesTasksCreate (Maybe Text)
plqtcAccessToken
  = lens _plqtcAccessToken
      (\ s a -> s{_plqtcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plqtcUploadType :: Lens' ProjectsLocationsQueuesTasksCreate (Maybe Text)
plqtcUploadType
  = lens _plqtcUploadType
      (\ s a -> s{_plqtcUploadType = a})

-- | Multipart request metadata.
plqtcPayload :: Lens' ProjectsLocationsQueuesTasksCreate CreateTaskRequest
plqtcPayload
  = lens _plqtcPayload (\ s a -> s{_plqtcPayload = a})

-- | JSONP
plqtcCallback :: Lens' ProjectsLocationsQueuesTasksCreate (Maybe Text)
plqtcCallback
  = lens _plqtcCallback
      (\ s a -> s{_plqtcCallback = a})

instance GoogleRequest
           ProjectsLocationsQueuesTasksCreate
         where
        type Rs ProjectsLocationsQueuesTasksCreate = Task
        type Scopes ProjectsLocationsQueuesTasksCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsQueuesTasksCreate'{..}
          = go _plqtcParent _plqtcXgafv _plqtcUploadProtocol
              _plqtcAccessToken
              _plqtcUploadType
              _plqtcCallback
              (Just AltJSON)
              _plqtcPayload
              cloudTasksService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsQueuesTasksCreateResource)
                      mempty
