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
-- Module      : Network.Google.Resource.Logging.Projects.Logs.Sinks.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a log sink. If the sink does not exist, it is created.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference> for @LoggingProjectsLogsSinksUpdate@.
module Network.Google.Resource.Logging.Projects.Logs.Sinks.Update
    (
    -- * REST Resource
      ProjectsLogsSinksUpdateResource

    -- * Creating a Request
    , projectsLogsSinksUpdate'
    , ProjectsLogsSinksUpdate'

    -- * Request Lenses
    , plsuXgafv
    , plsuUploadProtocol
    , plsuLogsId
    , plsuPp
    , plsuAccessToken
    , plsuUploadType
    , plsuPayload
    , plsuBearerToken
    , plsuProjectsId
    , plsuSinksId
    , plsuCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @LoggingProjectsLogsSinksUpdate@ method which the
-- 'ProjectsLogsSinksUpdate'' request conforms to.
type ProjectsLogsSinksUpdateResource =
     "v1beta3" :>
       "projects" :>
         Capture "projectsId" Text :>
           "logs" :>
             Capture "logsId" Text :>
               "sinks" :>
                 Capture "sinksId" Text :>
                   QueryParam "$.xgafv" Text :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "pp" Bool :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "bearer_token" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] LogSink :>
                                     Put '[JSON] LogSink

-- | Updates a log sink. If the sink does not exist, it is created.
--
-- /See:/ 'projectsLogsSinksUpdate'' smart constructor.
data ProjectsLogsSinksUpdate' = ProjectsLogsSinksUpdate'
    { _plsuXgafv          :: !(Maybe Text)
    , _plsuUploadProtocol :: !(Maybe Text)
    , _plsuLogsId         :: !Text
    , _plsuPp             :: !Bool
    , _plsuAccessToken    :: !(Maybe Text)
    , _plsuUploadType     :: !(Maybe Text)
    , _plsuPayload        :: !LogSink
    , _plsuBearerToken    :: !(Maybe Text)
    , _plsuProjectsId     :: !Text
    , _plsuSinksId        :: !Text
    , _plsuCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLogsSinksUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plsuXgafv'
--
-- * 'plsuUploadProtocol'
--
-- * 'plsuLogsId'
--
-- * 'plsuPp'
--
-- * 'plsuAccessToken'
--
-- * 'plsuUploadType'
--
-- * 'plsuPayload'
--
-- * 'plsuBearerToken'
--
-- * 'plsuProjectsId'
--
-- * 'plsuSinksId'
--
-- * 'plsuCallback'
projectsLogsSinksUpdate'
    :: Text -- ^ 'logsId'
    -> LogSink -- ^ 'payload'
    -> Text -- ^ 'projectsId'
    -> Text -- ^ 'sinksId'
    -> ProjectsLogsSinksUpdate'
projectsLogsSinksUpdate' pPlsuLogsId_ pPlsuPayload_ pPlsuProjectsId_ pPlsuSinksId_ =
    ProjectsLogsSinksUpdate'
    { _plsuXgafv = Nothing
    , _plsuUploadProtocol = Nothing
    , _plsuLogsId = pPlsuLogsId_
    , _plsuPp = True
    , _plsuAccessToken = Nothing
    , _plsuUploadType = Nothing
    , _plsuPayload = pPlsuPayload_
    , _plsuBearerToken = Nothing
    , _plsuProjectsId = pPlsuProjectsId_
    , _plsuSinksId = pPlsuSinksId_
    , _plsuCallback = Nothing
    }

-- | V1 error format.
plsuXgafv :: Lens' ProjectsLogsSinksUpdate' (Maybe Text)
plsuXgafv
  = lens _plsuXgafv (\ s a -> s{_plsuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plsuUploadProtocol :: Lens' ProjectsLogsSinksUpdate' (Maybe Text)
plsuUploadProtocol
  = lens _plsuUploadProtocol
      (\ s a -> s{_plsuUploadProtocol = a})

-- | Part of \`sinkName\`. See documentation of \`projectsId\`.
plsuLogsId :: Lens' ProjectsLogsSinksUpdate' Text
plsuLogsId
  = lens _plsuLogsId (\ s a -> s{_plsuLogsId = a})

-- | Pretty-print response.
plsuPp :: Lens' ProjectsLogsSinksUpdate' Bool
plsuPp = lens _plsuPp (\ s a -> s{_plsuPp = a})

-- | OAuth access token.
plsuAccessToken :: Lens' ProjectsLogsSinksUpdate' (Maybe Text)
plsuAccessToken
  = lens _plsuAccessToken
      (\ s a -> s{_plsuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plsuUploadType :: Lens' ProjectsLogsSinksUpdate' (Maybe Text)
plsuUploadType
  = lens _plsuUploadType
      (\ s a -> s{_plsuUploadType = a})

-- | Multipart request metadata.
plsuPayload :: Lens' ProjectsLogsSinksUpdate' LogSink
plsuPayload
  = lens _plsuPayload (\ s a -> s{_plsuPayload = a})

-- | OAuth bearer token.
plsuBearerToken :: Lens' ProjectsLogsSinksUpdate' (Maybe Text)
plsuBearerToken
  = lens _plsuBearerToken
      (\ s a -> s{_plsuBearerToken = a})

-- | Part of \`sinkName\`. The resource name of the sink to update.
plsuProjectsId :: Lens' ProjectsLogsSinksUpdate' Text
plsuProjectsId
  = lens _plsuProjectsId
      (\ s a -> s{_plsuProjectsId = a})

-- | Part of \`sinkName\`. See documentation of \`projectsId\`.
plsuSinksId :: Lens' ProjectsLogsSinksUpdate' Text
plsuSinksId
  = lens _plsuSinksId (\ s a -> s{_plsuSinksId = a})

-- | JSONP
plsuCallback :: Lens' ProjectsLogsSinksUpdate' (Maybe Text)
plsuCallback
  = lens _plsuCallback (\ s a -> s{_plsuCallback = a})

instance GoogleRequest ProjectsLogsSinksUpdate' where
        type Rs ProjectsLogsSinksUpdate' = LogSink
        requestClient ProjectsLogsSinksUpdate'{..}
          = go _plsuProjectsId _plsuLogsId _plsuSinksId
              _plsuXgafv
              _plsuUploadProtocol
              (Just _plsuPp)
              _plsuAccessToken
              _plsuUploadType
              _plsuBearerToken
              _plsuCallback
              (Just AltJSON)
              _plsuPayload
              logging
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLogsSinksUpdateResource)
                      mempty
