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
-- Module      : Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a queue. Queues created with this method allow tasks to live for
-- a maximum of 31 days. After a task is 31 days old, the task will be
-- deleted regardless of whether it was dispatched or not. WARNING: Using
-- this method may have unintended side effects if you are using an App
-- Engine \`queue.yaml\` or \`queue.xml\` file to manage your queues. Read
-- [Overview of Queue Management and
-- queue.yaml](https:\/\/cloud.google.com\/tasks\/docs\/queue-yaml) before
-- using this method.
--
-- /See:/ <https://cloud.google.com/tasks/ Cloud Tasks API Reference> for @cloudtasks.projects.locations.queues.create@.
module Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Create
    (
    -- * REST Resource
      ProjectsLocationsQueuesCreateResource

    -- * Creating a Request
    , projectsLocationsQueuesCreate
    , ProjectsLocationsQueuesCreate

    -- * Request Lenses
    , plqcParent
    , plqcXgafv
    , plqcUploadProtocol
    , plqcAccessToken
    , plqcUploadType
    , plqcPayload
    , plqcCallback
    ) where

import Network.Google.CloudTasks.Types
import Network.Google.Prelude

-- | A resource alias for @cloudtasks.projects.locations.queues.create@ method which the
-- 'ProjectsLocationsQueuesCreate' request conforms to.
type ProjectsLocationsQueuesCreateResource =
     "v2" :>
       Capture "parent" Text :>
         "queues" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Queue :> Post '[JSON] Queue

-- | Creates a queue. Queues created with this method allow tasks to live for
-- a maximum of 31 days. After a task is 31 days old, the task will be
-- deleted regardless of whether it was dispatched or not. WARNING: Using
-- this method may have unintended side effects if you are using an App
-- Engine \`queue.yaml\` or \`queue.xml\` file to manage your queues. Read
-- [Overview of Queue Management and
-- queue.yaml](https:\/\/cloud.google.com\/tasks\/docs\/queue-yaml) before
-- using this method.
--
-- /See:/ 'projectsLocationsQueuesCreate' smart constructor.
data ProjectsLocationsQueuesCreate =
  ProjectsLocationsQueuesCreate'
    { _plqcParent :: !Text
    , _plqcXgafv :: !(Maybe Xgafv)
    , _plqcUploadProtocol :: !(Maybe Text)
    , _plqcAccessToken :: !(Maybe Text)
    , _plqcUploadType :: !(Maybe Text)
    , _plqcPayload :: !Queue
    , _plqcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsQueuesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plqcParent'
--
-- * 'plqcXgafv'
--
-- * 'plqcUploadProtocol'
--
-- * 'plqcAccessToken'
--
-- * 'plqcUploadType'
--
-- * 'plqcPayload'
--
-- * 'plqcCallback'
projectsLocationsQueuesCreate
    :: Text -- ^ 'plqcParent'
    -> Queue -- ^ 'plqcPayload'
    -> ProjectsLocationsQueuesCreate
projectsLocationsQueuesCreate pPlqcParent_ pPlqcPayload_ =
  ProjectsLocationsQueuesCreate'
    { _plqcParent = pPlqcParent_
    , _plqcXgafv = Nothing
    , _plqcUploadProtocol = Nothing
    , _plqcAccessToken = Nothing
    , _plqcUploadType = Nothing
    , _plqcPayload = pPlqcPayload_
    , _plqcCallback = Nothing
    }


-- | Required. The location name in which the queue will be created. For
-- example: \`projects\/PROJECT_ID\/locations\/LOCATION_ID\` The list of
-- allowed locations can be obtained by calling Cloud Tasks\'
-- implementation of ListLocations.
plqcParent :: Lens' ProjectsLocationsQueuesCreate Text
plqcParent
  = lens _plqcParent (\ s a -> s{_plqcParent = a})

-- | V1 error format.
plqcXgafv :: Lens' ProjectsLocationsQueuesCreate (Maybe Xgafv)
plqcXgafv
  = lens _plqcXgafv (\ s a -> s{_plqcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plqcUploadProtocol :: Lens' ProjectsLocationsQueuesCreate (Maybe Text)
plqcUploadProtocol
  = lens _plqcUploadProtocol
      (\ s a -> s{_plqcUploadProtocol = a})

-- | OAuth access token.
plqcAccessToken :: Lens' ProjectsLocationsQueuesCreate (Maybe Text)
plqcAccessToken
  = lens _plqcAccessToken
      (\ s a -> s{_plqcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plqcUploadType :: Lens' ProjectsLocationsQueuesCreate (Maybe Text)
plqcUploadType
  = lens _plqcUploadType
      (\ s a -> s{_plqcUploadType = a})

-- | Multipart request metadata.
plqcPayload :: Lens' ProjectsLocationsQueuesCreate Queue
plqcPayload
  = lens _plqcPayload (\ s a -> s{_plqcPayload = a})

-- | JSONP
plqcCallback :: Lens' ProjectsLocationsQueuesCreate (Maybe Text)
plqcCallback
  = lens _plqcCallback (\ s a -> s{_plqcCallback = a})

instance GoogleRequest ProjectsLocationsQueuesCreate
         where
        type Rs ProjectsLocationsQueuesCreate = Queue
        type Scopes ProjectsLocationsQueuesCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsQueuesCreate'{..}
          = go _plqcParent _plqcXgafv _plqcUploadProtocol
              _plqcAccessToken
              _plqcUploadType
              _plqcCallback
              (Just AltJSON)
              _plqcPayload
              cloudTasksService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsQueuesCreateResource)
                      mempty
