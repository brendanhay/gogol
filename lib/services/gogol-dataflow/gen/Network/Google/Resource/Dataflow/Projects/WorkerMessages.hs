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
-- Module      : Network.Google.Resource.Dataflow.Projects.WorkerMessages
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Send a worker_message to the service.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.workerMessages@.
module Network.Google.Resource.Dataflow.Projects.WorkerMessages
    (
    -- * REST Resource
      ProjectsWorkerMessagesResource

    -- * Creating a Request
    , projectsWorkerMessages
    , ProjectsWorkerMessages

    -- * Request Lenses
    , pwmXgafv
    , pwmUploadProtocol
    , pwmAccessToken
    , pwmUploadType
    , pwmPayload
    , pwmProjectId
    , pwmCallback
    ) where

import Network.Google.Dataflow.Types
import Network.Google.Prelude

-- | A resource alias for @dataflow.projects.workerMessages@ method which the
-- 'ProjectsWorkerMessages' request conforms to.
type ProjectsWorkerMessagesResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "WorkerMessages" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] SendWorkerMessagesRequest :>
                           Post '[JSON] SendWorkerMessagesResponse

-- | Send a worker_message to the service.
--
-- /See:/ 'projectsWorkerMessages' smart constructor.
data ProjectsWorkerMessages =
  ProjectsWorkerMessages'
    { _pwmXgafv :: !(Maybe Xgafv)
    , _pwmUploadProtocol :: !(Maybe Text)
    , _pwmAccessToken :: !(Maybe Text)
    , _pwmUploadType :: !(Maybe Text)
    , _pwmPayload :: !SendWorkerMessagesRequest
    , _pwmProjectId :: !Text
    , _pwmCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsWorkerMessages' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pwmXgafv'
--
-- * 'pwmUploadProtocol'
--
-- * 'pwmAccessToken'
--
-- * 'pwmUploadType'
--
-- * 'pwmPayload'
--
-- * 'pwmProjectId'
--
-- * 'pwmCallback'
projectsWorkerMessages
    :: SendWorkerMessagesRequest -- ^ 'pwmPayload'
    -> Text -- ^ 'pwmProjectId'
    -> ProjectsWorkerMessages
projectsWorkerMessages pPwmPayload_ pPwmProjectId_ =
  ProjectsWorkerMessages'
    { _pwmXgafv = Nothing
    , _pwmUploadProtocol = Nothing
    , _pwmAccessToken = Nothing
    , _pwmUploadType = Nothing
    , _pwmPayload = pPwmPayload_
    , _pwmProjectId = pPwmProjectId_
    , _pwmCallback = Nothing
    }


-- | V1 error format.
pwmXgafv :: Lens' ProjectsWorkerMessages (Maybe Xgafv)
pwmXgafv = lens _pwmXgafv (\ s a -> s{_pwmXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pwmUploadProtocol :: Lens' ProjectsWorkerMessages (Maybe Text)
pwmUploadProtocol
  = lens _pwmUploadProtocol
      (\ s a -> s{_pwmUploadProtocol = a})

-- | OAuth access token.
pwmAccessToken :: Lens' ProjectsWorkerMessages (Maybe Text)
pwmAccessToken
  = lens _pwmAccessToken
      (\ s a -> s{_pwmAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pwmUploadType :: Lens' ProjectsWorkerMessages (Maybe Text)
pwmUploadType
  = lens _pwmUploadType
      (\ s a -> s{_pwmUploadType = a})

-- | Multipart request metadata.
pwmPayload :: Lens' ProjectsWorkerMessages SendWorkerMessagesRequest
pwmPayload
  = lens _pwmPayload (\ s a -> s{_pwmPayload = a})

-- | The project to send the WorkerMessages to.
pwmProjectId :: Lens' ProjectsWorkerMessages Text
pwmProjectId
  = lens _pwmProjectId (\ s a -> s{_pwmProjectId = a})

-- | JSONP
pwmCallback :: Lens' ProjectsWorkerMessages (Maybe Text)
pwmCallback
  = lens _pwmCallback (\ s a -> s{_pwmCallback = a})

instance GoogleRequest ProjectsWorkerMessages where
        type Rs ProjectsWorkerMessages =
             SendWorkerMessagesResponse
        type Scopes ProjectsWorkerMessages =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ProjectsWorkerMessages'{..}
          = go _pwmProjectId _pwmXgafv _pwmUploadProtocol
              _pwmAccessToken
              _pwmUploadType
              _pwmCallback
              (Just AltJSON)
              _pwmPayload
              dataflowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsWorkerMessagesResource)
                      mempty
