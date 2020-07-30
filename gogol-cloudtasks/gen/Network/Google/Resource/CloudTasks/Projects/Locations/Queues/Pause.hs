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
-- Module      : Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Pause
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Pauses the queue. If a queue is paused then the system will stop
-- dispatching tasks until the queue is resumed via ResumeQueue. Tasks can
-- still be added when the queue is paused. A queue is paused if its state
-- is PAUSED.
--
-- /See:/ <https://cloud.google.com/tasks/ Cloud Tasks API Reference> for @cloudtasks.projects.locations.queues.pause@.
module Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Pause
    (
    -- * REST Resource
      ProjectsLocationsQueuesPauseResource

    -- * Creating a Request
    , projectsLocationsQueuesPause
    , ProjectsLocationsQueuesPause

    -- * Request Lenses
    , proXgafv
    , proUploadProtocol
    , proAccessToken
    , proUploadType
    , proPayload
    , proName
    , proCallback
    ) where

import Network.Google.CloudTasks.Types
import Network.Google.Prelude

-- | A resource alias for @cloudtasks.projects.locations.queues.pause@ method which the
-- 'ProjectsLocationsQueuesPause' request conforms to.
type ProjectsLocationsQueuesPauseResource =
     "v2" :>
       CaptureMode "name" "pause" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] PauseQueueRequest :>
                       Post '[JSON] Queue

-- | Pauses the queue. If a queue is paused then the system will stop
-- dispatching tasks until the queue is resumed via ResumeQueue. Tasks can
-- still be added when the queue is paused. A queue is paused if its state
-- is PAUSED.
--
-- /See:/ 'projectsLocationsQueuesPause' smart constructor.
data ProjectsLocationsQueuesPause =
  ProjectsLocationsQueuesPause'
    { _proXgafv :: !(Maybe Xgafv)
    , _proUploadProtocol :: !(Maybe Text)
    , _proAccessToken :: !(Maybe Text)
    , _proUploadType :: !(Maybe Text)
    , _proPayload :: !PauseQueueRequest
    , _proName :: !Text
    , _proCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsQueuesPause' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proXgafv'
--
-- * 'proUploadProtocol'
--
-- * 'proAccessToken'
--
-- * 'proUploadType'
--
-- * 'proPayload'
--
-- * 'proName'
--
-- * 'proCallback'
projectsLocationsQueuesPause
    :: PauseQueueRequest -- ^ 'proPayload'
    -> Text -- ^ 'proName'
    -> ProjectsLocationsQueuesPause
projectsLocationsQueuesPause pProPayload_ pProName_ =
  ProjectsLocationsQueuesPause'
    { _proXgafv = Nothing
    , _proUploadProtocol = Nothing
    , _proAccessToken = Nothing
    , _proUploadType = Nothing
    , _proPayload = pProPayload_
    , _proName = pProName_
    , _proCallback = Nothing
    }


-- | V1 error format.
proXgafv :: Lens' ProjectsLocationsQueuesPause (Maybe Xgafv)
proXgafv = lens _proXgafv (\ s a -> s{_proXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
proUploadProtocol :: Lens' ProjectsLocationsQueuesPause (Maybe Text)
proUploadProtocol
  = lens _proUploadProtocol
      (\ s a -> s{_proUploadProtocol = a})

-- | OAuth access token.
proAccessToken :: Lens' ProjectsLocationsQueuesPause (Maybe Text)
proAccessToken
  = lens _proAccessToken
      (\ s a -> s{_proAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
proUploadType :: Lens' ProjectsLocationsQueuesPause (Maybe Text)
proUploadType
  = lens _proUploadType
      (\ s a -> s{_proUploadType = a})

-- | Multipart request metadata.
proPayload :: Lens' ProjectsLocationsQueuesPause PauseQueueRequest
proPayload
  = lens _proPayload (\ s a -> s{_proPayload = a})

-- | Required. The queue name. For example:
-- \`projects\/PROJECT_ID\/location\/LOCATION_ID\/queues\/QUEUE_ID\`
proName :: Lens' ProjectsLocationsQueuesPause Text
proName = lens _proName (\ s a -> s{_proName = a})

-- | JSONP
proCallback :: Lens' ProjectsLocationsQueuesPause (Maybe Text)
proCallback
  = lens _proCallback (\ s a -> s{_proCallback = a})

instance GoogleRequest ProjectsLocationsQueuesPause
         where
        type Rs ProjectsLocationsQueuesPause = Queue
        type Scopes ProjectsLocationsQueuesPause =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsQueuesPause'{..}
          = go _proName _proXgafv _proUploadProtocol
              _proAccessToken
              _proUploadType
              _proCallback
              (Just AltJSON)
              _proPayload
              cloudTasksService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsQueuesPauseResource)
                      mempty
