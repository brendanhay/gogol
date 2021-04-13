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
-- Module      : Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a queue.
--
-- /See:/ <https://cloud.google.com/tasks/ Cloud Tasks API Reference> for @cloudtasks.projects.locations.queues.get@.
module Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Get
    (
    -- * REST Resource
      ProjectsLocationsQueuesGetResource

    -- * Creating a Request
    , projectsLocationsQueuesGet
    , ProjectsLocationsQueuesGet

    -- * Request Lenses
    , plqgXgafv
    , plqgUploadProtocol
    , plqgAccessToken
    , plqgUploadType
    , plqgName
    , plqgCallback
    ) where

import Network.Google.CloudTasks.Types
import Network.Google.Prelude

-- | A resource alias for @cloudtasks.projects.locations.queues.get@ method which the
-- 'ProjectsLocationsQueuesGet' request conforms to.
type ProjectsLocationsQueuesGetResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Queue

-- | Gets a queue.
--
-- /See:/ 'projectsLocationsQueuesGet' smart constructor.
data ProjectsLocationsQueuesGet =
  ProjectsLocationsQueuesGet'
    { _plqgXgafv :: !(Maybe Xgafv)
    , _plqgUploadProtocol :: !(Maybe Text)
    , _plqgAccessToken :: !(Maybe Text)
    , _plqgUploadType :: !(Maybe Text)
    , _plqgName :: !Text
    , _plqgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsQueuesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plqgXgafv'
--
-- * 'plqgUploadProtocol'
--
-- * 'plqgAccessToken'
--
-- * 'plqgUploadType'
--
-- * 'plqgName'
--
-- * 'plqgCallback'
projectsLocationsQueuesGet
    :: Text -- ^ 'plqgName'
    -> ProjectsLocationsQueuesGet
projectsLocationsQueuesGet pPlqgName_ =
  ProjectsLocationsQueuesGet'
    { _plqgXgafv = Nothing
    , _plqgUploadProtocol = Nothing
    , _plqgAccessToken = Nothing
    , _plqgUploadType = Nothing
    , _plqgName = pPlqgName_
    , _plqgCallback = Nothing
    }


-- | V1 error format.
plqgXgafv :: Lens' ProjectsLocationsQueuesGet (Maybe Xgafv)
plqgXgafv
  = lens _plqgXgafv (\ s a -> s{_plqgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plqgUploadProtocol :: Lens' ProjectsLocationsQueuesGet (Maybe Text)
plqgUploadProtocol
  = lens _plqgUploadProtocol
      (\ s a -> s{_plqgUploadProtocol = a})

-- | OAuth access token.
plqgAccessToken :: Lens' ProjectsLocationsQueuesGet (Maybe Text)
plqgAccessToken
  = lens _plqgAccessToken
      (\ s a -> s{_plqgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plqgUploadType :: Lens' ProjectsLocationsQueuesGet (Maybe Text)
plqgUploadType
  = lens _plqgUploadType
      (\ s a -> s{_plqgUploadType = a})

-- | Required. The resource name of the queue. For example:
-- \`projects\/PROJECT_ID\/locations\/LOCATION_ID\/queues\/QUEUE_ID\`
plqgName :: Lens' ProjectsLocationsQueuesGet Text
plqgName = lens _plqgName (\ s a -> s{_plqgName = a})

-- | JSONP
plqgCallback :: Lens' ProjectsLocationsQueuesGet (Maybe Text)
plqgCallback
  = lens _plqgCallback (\ s a -> s{_plqgCallback = a})

instance GoogleRequest ProjectsLocationsQueuesGet
         where
        type Rs ProjectsLocationsQueuesGet = Queue
        type Scopes ProjectsLocationsQueuesGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsQueuesGet'{..}
          = go _plqgName _plqgXgafv _plqgUploadProtocol
              _plqgAccessToken
              _plqgUploadType
              _plqgCallback
              (Just AltJSON)
              cloudTasksService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsQueuesGetResource)
                      mempty
