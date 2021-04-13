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
-- Module      : Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Purge
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Purges a queue by deleting all of its tasks. All tasks created before
-- this method is called are permanently deleted. Purge operations can take
-- up to one minute to take effect. Tasks might be dispatched before the
-- purge takes effect. A purge is irreversible.
--
-- /See:/ <https://cloud.google.com/tasks/ Cloud Tasks API Reference> for @cloudtasks.projects.locations.queues.purge@.
module Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Purge
    (
    -- * REST Resource
      ProjectsLocationsQueuesPurgeResource

    -- * Creating a Request
    , projectsLocationsQueuesPurge
    , ProjectsLocationsQueuesPurge

    -- * Request Lenses
    , pXgafv
    , pUploadProtocol
    , pAccessToken
    , pUploadType
    , pPayload
    , pName
    , pCallback
    ) where

import Network.Google.CloudTasks.Types
import Network.Google.Prelude

-- | A resource alias for @cloudtasks.projects.locations.queues.purge@ method which the
-- 'ProjectsLocationsQueuesPurge' request conforms to.
type ProjectsLocationsQueuesPurgeResource =
     "v2" :>
       CaptureMode "name" "purge" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] PurgeQueueRequest :>
                       Post '[JSON] Queue

-- | Purges a queue by deleting all of its tasks. All tasks created before
-- this method is called are permanently deleted. Purge operations can take
-- up to one minute to take effect. Tasks might be dispatched before the
-- purge takes effect. A purge is irreversible.
--
-- /See:/ 'projectsLocationsQueuesPurge' smart constructor.
data ProjectsLocationsQueuesPurge =
  ProjectsLocationsQueuesPurge'
    { _pXgafv :: !(Maybe Xgafv)
    , _pUploadProtocol :: !(Maybe Text)
    , _pAccessToken :: !(Maybe Text)
    , _pUploadType :: !(Maybe Text)
    , _pPayload :: !PurgeQueueRequest
    , _pName :: !Text
    , _pCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsQueuesPurge' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pXgafv'
--
-- * 'pUploadProtocol'
--
-- * 'pAccessToken'
--
-- * 'pUploadType'
--
-- * 'pPayload'
--
-- * 'pName'
--
-- * 'pCallback'
projectsLocationsQueuesPurge
    :: PurgeQueueRequest -- ^ 'pPayload'
    -> Text -- ^ 'pName'
    -> ProjectsLocationsQueuesPurge
projectsLocationsQueuesPurge pPPayload_ pPName_ =
  ProjectsLocationsQueuesPurge'
    { _pXgafv = Nothing
    , _pUploadProtocol = Nothing
    , _pAccessToken = Nothing
    , _pUploadType = Nothing
    , _pPayload = pPPayload_
    , _pName = pPName_
    , _pCallback = Nothing
    }


-- | V1 error format.
pXgafv :: Lens' ProjectsLocationsQueuesPurge (Maybe Xgafv)
pXgafv = lens _pXgafv (\ s a -> s{_pXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pUploadProtocol :: Lens' ProjectsLocationsQueuesPurge (Maybe Text)
pUploadProtocol
  = lens _pUploadProtocol
      (\ s a -> s{_pUploadProtocol = a})

-- | OAuth access token.
pAccessToken :: Lens' ProjectsLocationsQueuesPurge (Maybe Text)
pAccessToken
  = lens _pAccessToken (\ s a -> s{_pAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pUploadType :: Lens' ProjectsLocationsQueuesPurge (Maybe Text)
pUploadType
  = lens _pUploadType (\ s a -> s{_pUploadType = a})

-- | Multipart request metadata.
pPayload :: Lens' ProjectsLocationsQueuesPurge PurgeQueueRequest
pPayload = lens _pPayload (\ s a -> s{_pPayload = a})

-- | Required. The queue name. For example:
-- \`projects\/PROJECT_ID\/location\/LOCATION_ID\/queues\/QUEUE_ID\`
pName :: Lens' ProjectsLocationsQueuesPurge Text
pName = lens _pName (\ s a -> s{_pName = a})

-- | JSONP
pCallback :: Lens' ProjectsLocationsQueuesPurge (Maybe Text)
pCallback
  = lens _pCallback (\ s a -> s{_pCallback = a})

instance GoogleRequest ProjectsLocationsQueuesPurge
         where
        type Rs ProjectsLocationsQueuesPurge = Queue
        type Scopes ProjectsLocationsQueuesPurge =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsQueuesPurge'{..}
          = go _pName _pXgafv _pUploadProtocol _pAccessToken
              _pUploadType
              _pCallback
              (Just AltJSON)
              _pPayload
              cloudTasksService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsQueuesPurgeResource)
                      mempty
