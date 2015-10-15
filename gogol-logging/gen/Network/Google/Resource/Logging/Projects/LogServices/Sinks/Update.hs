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
-- Module      : Network.Google.Resource.Logging.Projects.LogServices.Sinks.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a log service sink. If the sink does not exist, it is created.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference> for @LoggingProjectsLogServicesSinksUpdate@.
module Network.Google.Resource.Logging.Projects.LogServices.Sinks.Update
    (
    -- * REST Resource
      ProjectsLogServicesSinksUpdateResource

    -- * Creating a Request
    , projectsLogServicesSinksUpdate'
    , ProjectsLogServicesSinksUpdate'

    -- * Request Lenses
    , plssuXgafv
    , plssuUploadProtocol
    , plssuPp
    , plssuAccessToken
    , plssuUploadType
    , plssuPayload
    , plssuBearerToken
    , plssuLogServicesId
    , plssuProjectsId
    , plssuSinksId
    , plssuCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @LoggingProjectsLogServicesSinksUpdate@ method which the
-- 'ProjectsLogServicesSinksUpdate'' request conforms to.
type ProjectsLogServicesSinksUpdateResource =
     "v1beta3" :>
       "projects" :>
         Capture "projectsId" Text :>
           "logServices" :>
             Capture "logServicesId" Text :>
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

-- | Updates a log service sink. If the sink does not exist, it is created.
--
-- /See:/ 'projectsLogServicesSinksUpdate'' smart constructor.
data ProjectsLogServicesSinksUpdate' = ProjectsLogServicesSinksUpdate'
    { _plssuXgafv          :: !(Maybe Text)
    , _plssuUploadProtocol :: !(Maybe Text)
    , _plssuPp             :: !Bool
    , _plssuAccessToken    :: !(Maybe Text)
    , _plssuUploadType     :: !(Maybe Text)
    , _plssuPayload        :: !LogSink
    , _plssuBearerToken    :: !(Maybe Text)
    , _plssuLogServicesId  :: !Text
    , _plssuProjectsId     :: !Text
    , _plssuSinksId        :: !Text
    , _plssuCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLogServicesSinksUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plssuXgafv'
--
-- * 'plssuUploadProtocol'
--
-- * 'plssuPp'
--
-- * 'plssuAccessToken'
--
-- * 'plssuUploadType'
--
-- * 'plssuPayload'
--
-- * 'plssuBearerToken'
--
-- * 'plssuLogServicesId'
--
-- * 'plssuProjectsId'
--
-- * 'plssuSinksId'
--
-- * 'plssuCallback'
projectsLogServicesSinksUpdate'
    :: LogSink -- ^ 'payload'
    -> Text -- ^ 'logServicesId'
    -> Text -- ^ 'projectsId'
    -> Text -- ^ 'sinksId'
    -> ProjectsLogServicesSinksUpdate'
projectsLogServicesSinksUpdate' pPlssuPayload_ pPlssuLogServicesId_ pPlssuProjectsId_ pPlssuSinksId_ =
    ProjectsLogServicesSinksUpdate'
    { _plssuXgafv = Nothing
    , _plssuUploadProtocol = Nothing
    , _plssuPp = True
    , _plssuAccessToken = Nothing
    , _plssuUploadType = Nothing
    , _plssuPayload = pPlssuPayload_
    , _plssuBearerToken = Nothing
    , _plssuLogServicesId = pPlssuLogServicesId_
    , _plssuProjectsId = pPlssuProjectsId_
    , _plssuSinksId = pPlssuSinksId_
    , _plssuCallback = Nothing
    }

-- | V1 error format.
plssuXgafv :: Lens' ProjectsLogServicesSinksUpdate' (Maybe Text)
plssuXgafv
  = lens _plssuXgafv (\ s a -> s{_plssuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plssuUploadProtocol :: Lens' ProjectsLogServicesSinksUpdate' (Maybe Text)
plssuUploadProtocol
  = lens _plssuUploadProtocol
      (\ s a -> s{_plssuUploadProtocol = a})

-- | Pretty-print response.
plssuPp :: Lens' ProjectsLogServicesSinksUpdate' Bool
plssuPp = lens _plssuPp (\ s a -> s{_plssuPp = a})

-- | OAuth access token.
plssuAccessToken :: Lens' ProjectsLogServicesSinksUpdate' (Maybe Text)
plssuAccessToken
  = lens _plssuAccessToken
      (\ s a -> s{_plssuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plssuUploadType :: Lens' ProjectsLogServicesSinksUpdate' (Maybe Text)
plssuUploadType
  = lens _plssuUploadType
      (\ s a -> s{_plssuUploadType = a})

-- | Multipart request metadata.
plssuPayload :: Lens' ProjectsLogServicesSinksUpdate' LogSink
plssuPayload
  = lens _plssuPayload (\ s a -> s{_plssuPayload = a})

-- | OAuth bearer token.
plssuBearerToken :: Lens' ProjectsLogServicesSinksUpdate' (Maybe Text)
plssuBearerToken
  = lens _plssuBearerToken
      (\ s a -> s{_plssuBearerToken = a})

-- | Part of \`sinkName\`. See documentation of \`projectsId\`.
plssuLogServicesId :: Lens' ProjectsLogServicesSinksUpdate' Text
plssuLogServicesId
  = lens _plssuLogServicesId
      (\ s a -> s{_plssuLogServicesId = a})

-- | Part of \`sinkName\`. The resource name of the log service sink to
-- update.
plssuProjectsId :: Lens' ProjectsLogServicesSinksUpdate' Text
plssuProjectsId
  = lens _plssuProjectsId
      (\ s a -> s{_plssuProjectsId = a})

-- | Part of \`sinkName\`. See documentation of \`projectsId\`.
plssuSinksId :: Lens' ProjectsLogServicesSinksUpdate' Text
plssuSinksId
  = lens _plssuSinksId (\ s a -> s{_plssuSinksId = a})

-- | JSONP
plssuCallback :: Lens' ProjectsLogServicesSinksUpdate' (Maybe Text)
plssuCallback
  = lens _plssuCallback
      (\ s a -> s{_plssuCallback = a})

instance GoogleRequest
         ProjectsLogServicesSinksUpdate' where
        type Rs ProjectsLogServicesSinksUpdate' = LogSink
        requestClient ProjectsLogServicesSinksUpdate'{..}
          = go _plssuProjectsId _plssuLogServicesId
              _plssuSinksId
              _plssuXgafv
              _plssuUploadProtocol
              (Just _plssuPp)
              _plssuAccessToken
              _plssuUploadType
              _plssuBearerToken
              _plssuCallback
              (Just AltJSON)
              _plssuPayload
              logging
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLogServicesSinksUpdateResource)
                      mempty
