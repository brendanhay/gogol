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
-- Module      : Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a queue. This command will delete the queue even if it has tasks
-- in it. Note: If you delete a queue, a queue with the same name can\'t be
-- created for 7 days. WARNING: Using this method may have unintended side
-- effects if you are using an App Engine \`queue.yaml\` or \`queue.xml\`
-- file to manage your queues. Read [Overview of Queue Management and
-- queue.yaml](https:\/\/cloud.google.com\/tasks\/docs\/queue-yaml) before
-- using this method.
--
-- /See:/ <https://cloud.google.com/tasks/ Cloud Tasks API Reference> for @cloudtasks.projects.locations.queues.delete@.
module Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Delete
    (
    -- * REST Resource
      ProjectsLocationsQueuesDeleteResource

    -- * Creating a Request
    , projectsLocationsQueuesDelete
    , ProjectsLocationsQueuesDelete

    -- * Request Lenses
    , plqdXgafv
    , plqdUploadProtocol
    , plqdAccessToken
    , plqdUploadType
    , plqdName
    , plqdCallback
    ) where

import Network.Google.CloudTasks.Types
import Network.Google.Prelude

-- | A resource alias for @cloudtasks.projects.locations.queues.delete@ method which the
-- 'ProjectsLocationsQueuesDelete' request conforms to.
type ProjectsLocationsQueuesDeleteResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a queue. This command will delete the queue even if it has tasks
-- in it. Note: If you delete a queue, a queue with the same name can\'t be
-- created for 7 days. WARNING: Using this method may have unintended side
-- effects if you are using an App Engine \`queue.yaml\` or \`queue.xml\`
-- file to manage your queues. Read [Overview of Queue Management and
-- queue.yaml](https:\/\/cloud.google.com\/tasks\/docs\/queue-yaml) before
-- using this method.
--
-- /See:/ 'projectsLocationsQueuesDelete' smart constructor.
data ProjectsLocationsQueuesDelete =
  ProjectsLocationsQueuesDelete'
    { _plqdXgafv :: !(Maybe Xgafv)
    , _plqdUploadProtocol :: !(Maybe Text)
    , _plqdAccessToken :: !(Maybe Text)
    , _plqdUploadType :: !(Maybe Text)
    , _plqdName :: !Text
    , _plqdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsQueuesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plqdXgafv'
--
-- * 'plqdUploadProtocol'
--
-- * 'plqdAccessToken'
--
-- * 'plqdUploadType'
--
-- * 'plqdName'
--
-- * 'plqdCallback'
projectsLocationsQueuesDelete
    :: Text -- ^ 'plqdName'
    -> ProjectsLocationsQueuesDelete
projectsLocationsQueuesDelete pPlqdName_ =
  ProjectsLocationsQueuesDelete'
    { _plqdXgafv = Nothing
    , _plqdUploadProtocol = Nothing
    , _plqdAccessToken = Nothing
    , _plqdUploadType = Nothing
    , _plqdName = pPlqdName_
    , _plqdCallback = Nothing
    }


-- | V1 error format.
plqdXgafv :: Lens' ProjectsLocationsQueuesDelete (Maybe Xgafv)
plqdXgafv
  = lens _plqdXgafv (\ s a -> s{_plqdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plqdUploadProtocol :: Lens' ProjectsLocationsQueuesDelete (Maybe Text)
plqdUploadProtocol
  = lens _plqdUploadProtocol
      (\ s a -> s{_plqdUploadProtocol = a})

-- | OAuth access token.
plqdAccessToken :: Lens' ProjectsLocationsQueuesDelete (Maybe Text)
plqdAccessToken
  = lens _plqdAccessToken
      (\ s a -> s{_plqdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plqdUploadType :: Lens' ProjectsLocationsQueuesDelete (Maybe Text)
plqdUploadType
  = lens _plqdUploadType
      (\ s a -> s{_plqdUploadType = a})

-- | Required. The queue name. For example:
-- \`projects\/PROJECT_ID\/locations\/LOCATION_ID\/queues\/QUEUE_ID\`
plqdName :: Lens' ProjectsLocationsQueuesDelete Text
plqdName = lens _plqdName (\ s a -> s{_plqdName = a})

-- | JSONP
plqdCallback :: Lens' ProjectsLocationsQueuesDelete (Maybe Text)
plqdCallback
  = lens _plqdCallback (\ s a -> s{_plqdCallback = a})

instance GoogleRequest ProjectsLocationsQueuesDelete
         where
        type Rs ProjectsLocationsQueuesDelete = Empty
        type Scopes ProjectsLocationsQueuesDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsQueuesDelete'{..}
          = go _plqdName _plqdXgafv _plqdUploadProtocol
              _plqdAccessToken
              _plqdUploadType
              _plqdCallback
              (Just AltJSON)
              cloudTasksService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsQueuesDeleteResource)
                      mempty
