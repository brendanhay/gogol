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
-- Module      : Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a queue. This method creates the queue if it does not exist and
-- updates the queue if it does exist. Queues created with this method
-- allow tasks to live for a maximum of 31 days. After a task is 31 days
-- old, the task will be deleted regardless of whether it was dispatched or
-- not. WARNING: Using this method may have unintended side effects if you
-- are using an App Engine \`queue.yaml\` or \`queue.xml\` file to manage
-- your queues. Read [Overview of Queue Management and
-- queue.yaml](https:\/\/cloud.google.com\/tasks\/docs\/queue-yaml) before
-- using this method.
--
-- /See:/ <https://cloud.google.com/tasks/ Cloud Tasks API Reference> for @cloudtasks.projects.locations.queues.patch@.
module Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Patch
    (
    -- * REST Resource
      ProjectsLocationsQueuesPatchResource

    -- * Creating a Request
    , projectsLocationsQueuesPatch
    , ProjectsLocationsQueuesPatch

    -- * Request Lenses
    , plqpXgafv
    , plqpUploadProtocol
    , plqpUpdateMask
    , plqpAccessToken
    , plqpUploadType
    , plqpPayload
    , plqpName
    , plqpCallback
    ) where

import Network.Google.CloudTasks.Types
import Network.Google.Prelude

-- | A resource alias for @cloudtasks.projects.locations.queues.patch@ method which the
-- 'ProjectsLocationsQueuesPatch' request conforms to.
type ProjectsLocationsQueuesPatchResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Queue :> Patch '[JSON] Queue

-- | Updates a queue. This method creates the queue if it does not exist and
-- updates the queue if it does exist. Queues created with this method
-- allow tasks to live for a maximum of 31 days. After a task is 31 days
-- old, the task will be deleted regardless of whether it was dispatched or
-- not. WARNING: Using this method may have unintended side effects if you
-- are using an App Engine \`queue.yaml\` or \`queue.xml\` file to manage
-- your queues. Read [Overview of Queue Management and
-- queue.yaml](https:\/\/cloud.google.com\/tasks\/docs\/queue-yaml) before
-- using this method.
--
-- /See:/ 'projectsLocationsQueuesPatch' smart constructor.
data ProjectsLocationsQueuesPatch =
  ProjectsLocationsQueuesPatch'
    { _plqpXgafv :: !(Maybe Xgafv)
    , _plqpUploadProtocol :: !(Maybe Text)
    , _plqpUpdateMask :: !(Maybe GFieldMask)
    , _plqpAccessToken :: !(Maybe Text)
    , _plqpUploadType :: !(Maybe Text)
    , _plqpPayload :: !Queue
    , _plqpName :: !Text
    , _plqpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsQueuesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plqpXgafv'
--
-- * 'plqpUploadProtocol'
--
-- * 'plqpUpdateMask'
--
-- * 'plqpAccessToken'
--
-- * 'plqpUploadType'
--
-- * 'plqpPayload'
--
-- * 'plqpName'
--
-- * 'plqpCallback'
projectsLocationsQueuesPatch
    :: Queue -- ^ 'plqpPayload'
    -> Text -- ^ 'plqpName'
    -> ProjectsLocationsQueuesPatch
projectsLocationsQueuesPatch pPlqpPayload_ pPlqpName_ =
  ProjectsLocationsQueuesPatch'
    { _plqpXgafv = Nothing
    , _plqpUploadProtocol = Nothing
    , _plqpUpdateMask = Nothing
    , _plqpAccessToken = Nothing
    , _plqpUploadType = Nothing
    , _plqpPayload = pPlqpPayload_
    , _plqpName = pPlqpName_
    , _plqpCallback = Nothing
    }


-- | V1 error format.
plqpXgafv :: Lens' ProjectsLocationsQueuesPatch (Maybe Xgafv)
plqpXgafv
  = lens _plqpXgafv (\ s a -> s{_plqpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plqpUploadProtocol :: Lens' ProjectsLocationsQueuesPatch (Maybe Text)
plqpUploadProtocol
  = lens _plqpUploadProtocol
      (\ s a -> s{_plqpUploadProtocol = a})

-- | A mask used to specify which fields of the queue are being updated. If
-- empty, then all fields will be updated.
plqpUpdateMask :: Lens' ProjectsLocationsQueuesPatch (Maybe GFieldMask)
plqpUpdateMask
  = lens _plqpUpdateMask
      (\ s a -> s{_plqpUpdateMask = a})

-- | OAuth access token.
plqpAccessToken :: Lens' ProjectsLocationsQueuesPatch (Maybe Text)
plqpAccessToken
  = lens _plqpAccessToken
      (\ s a -> s{_plqpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plqpUploadType :: Lens' ProjectsLocationsQueuesPatch (Maybe Text)
plqpUploadType
  = lens _plqpUploadType
      (\ s a -> s{_plqpUploadType = a})

-- | Multipart request metadata.
plqpPayload :: Lens' ProjectsLocationsQueuesPatch Queue
plqpPayload
  = lens _plqpPayload (\ s a -> s{_plqpPayload = a})

-- | Caller-specified and required in CreateQueue, after which it becomes
-- output only. The queue name. The queue name must have the following
-- format:
-- \`projects\/PROJECT_ID\/locations\/LOCATION_ID\/queues\/QUEUE_ID\` *
-- \`PROJECT_ID\` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens
-- (-), colons (:), or periods (.). For more information, see [Identifying
-- projects](https:\/\/cloud.google.com\/resource-manager\/docs\/creating-managing-projects#identifying_projects)
-- * \`LOCATION_ID\` is the canonical ID for the queue\'s location. The
-- list of available locations can be obtained by calling ListLocations.
-- For more information, see
-- https:\/\/cloud.google.com\/about\/locations\/. * \`QUEUE_ID\` can
-- contain letters ([A-Za-z]), numbers ([0-9]), or hyphens (-). The maximum
-- length is 100 characters.
plqpName :: Lens' ProjectsLocationsQueuesPatch Text
plqpName = lens _plqpName (\ s a -> s{_plqpName = a})

-- | JSONP
plqpCallback :: Lens' ProjectsLocationsQueuesPatch (Maybe Text)
plqpCallback
  = lens _plqpCallback (\ s a -> s{_plqpCallback = a})

instance GoogleRequest ProjectsLocationsQueuesPatch
         where
        type Rs ProjectsLocationsQueuesPatch = Queue
        type Scopes ProjectsLocationsQueuesPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsQueuesPatch'{..}
          = go _plqpName _plqpXgafv _plqpUploadProtocol
              _plqpUpdateMask
              _plqpAccessToken
              _plqpUploadType
              _plqpCallback
              (Just AltJSON)
              _plqpPayload
              cloudTasksService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsQueuesPatchResource)
                      mempty
