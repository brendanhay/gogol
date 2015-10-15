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
-- Module      : Network.Google.Resource.Logging.Projects.Logs.Sinks.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a log sink. All log entries for a specified log are written to
-- the destination.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference> for @LoggingProjectsLogsSinksCreate@.
module Network.Google.Resource.Logging.Projects.Logs.Sinks.Create
    (
    -- * REST Resource
      ProjectsLogsSinksCreateResource

    -- * Creating a Request
    , projectsLogsSinksCreate'
    , ProjectsLogsSinksCreate'

    -- * Request Lenses
    , plscXgafv
    , plscUploadProtocol
    , plscLogsId
    , plscPp
    , plscAccessToken
    , plscUploadType
    , plscPayload
    , plscBearerToken
    , plscProjectsId
    , plscCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @LoggingProjectsLogsSinksCreate@ method which the
-- 'ProjectsLogsSinksCreate'' request conforms to.
type ProjectsLogsSinksCreateResource =
     "v1beta3" :>
       "projects" :>
         Capture "projectsId" Text :>
           "logs" :>
             Capture "logsId" Text :>
               "sinks" :>
                 QueryParam "$.xgafv" Text :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "pp" Bool :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "bearer_token" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] LogSink :> Post '[JSON] LogSink

-- | Creates a log sink. All log entries for a specified log are written to
-- the destination.
--
-- /See:/ 'projectsLogsSinksCreate'' smart constructor.
data ProjectsLogsSinksCreate' = ProjectsLogsSinksCreate'
    { _plscXgafv          :: !(Maybe Text)
    , _plscUploadProtocol :: !(Maybe Text)
    , _plscLogsId         :: !Text
    , _plscPp             :: !Bool
    , _plscAccessToken    :: !(Maybe Text)
    , _plscUploadType     :: !(Maybe Text)
    , _plscPayload        :: !LogSink
    , _plscBearerToken    :: !(Maybe Text)
    , _plscProjectsId     :: !Text
    , _plscCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLogsSinksCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plscXgafv'
--
-- * 'plscUploadProtocol'
--
-- * 'plscLogsId'
--
-- * 'plscPp'
--
-- * 'plscAccessToken'
--
-- * 'plscUploadType'
--
-- * 'plscPayload'
--
-- * 'plscBearerToken'
--
-- * 'plscProjectsId'
--
-- * 'plscCallback'
projectsLogsSinksCreate'
    :: Text -- ^ 'logsId'
    -> LogSink -- ^ 'payload'
    -> Text -- ^ 'projectsId'
    -> ProjectsLogsSinksCreate'
projectsLogsSinksCreate' pPlscLogsId_ pPlscPayload_ pPlscProjectsId_ =
    ProjectsLogsSinksCreate'
    { _plscXgafv = Nothing
    , _plscUploadProtocol = Nothing
    , _plscLogsId = pPlscLogsId_
    , _plscPp = True
    , _plscAccessToken = Nothing
    , _plscUploadType = Nothing
    , _plscPayload = pPlscPayload_
    , _plscBearerToken = Nothing
    , _plscProjectsId = pPlscProjectsId_
    , _plscCallback = Nothing
    }

-- | V1 error format.
plscXgafv :: Lens' ProjectsLogsSinksCreate' (Maybe Text)
plscXgafv
  = lens _plscXgafv (\ s a -> s{_plscXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plscUploadProtocol :: Lens' ProjectsLogsSinksCreate' (Maybe Text)
plscUploadProtocol
  = lens _plscUploadProtocol
      (\ s a -> s{_plscUploadProtocol = a})

-- | Part of \`logName\`. See documentation of \`projectsId\`.
plscLogsId :: Lens' ProjectsLogsSinksCreate' Text
plscLogsId
  = lens _plscLogsId (\ s a -> s{_plscLogsId = a})

-- | Pretty-print response.
plscPp :: Lens' ProjectsLogsSinksCreate' Bool
plscPp = lens _plscPp (\ s a -> s{_plscPp = a})

-- | OAuth access token.
plscAccessToken :: Lens' ProjectsLogsSinksCreate' (Maybe Text)
plscAccessToken
  = lens _plscAccessToken
      (\ s a -> s{_plscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plscUploadType :: Lens' ProjectsLogsSinksCreate' (Maybe Text)
plscUploadType
  = lens _plscUploadType
      (\ s a -> s{_plscUploadType = a})

-- | Multipart request metadata.
plscPayload :: Lens' ProjectsLogsSinksCreate' LogSink
plscPayload
  = lens _plscPayload (\ s a -> s{_plscPayload = a})

-- | OAuth bearer token.
plscBearerToken :: Lens' ProjectsLogsSinksCreate' (Maybe Text)
plscBearerToken
  = lens _plscBearerToken
      (\ s a -> s{_plscBearerToken = a})

-- | Part of \`logName\`. The resource name of the log to which to the sink
-- is bound.
plscProjectsId :: Lens' ProjectsLogsSinksCreate' Text
plscProjectsId
  = lens _plscProjectsId
      (\ s a -> s{_plscProjectsId = a})

-- | JSONP
plscCallback :: Lens' ProjectsLogsSinksCreate' (Maybe Text)
plscCallback
  = lens _plscCallback (\ s a -> s{_plscCallback = a})

instance GoogleRequest ProjectsLogsSinksCreate' where
        type Rs ProjectsLogsSinksCreate' = LogSink
        requestClient ProjectsLogsSinksCreate'{..}
          = go _plscProjectsId _plscLogsId _plscXgafv
              _plscUploadProtocol
              (Just _plscPp)
              _plscAccessToken
              _plscUploadType
              _plscBearerToken
              _plscCallback
              (Just AltJSON)
              _plscPayload
              logging
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLogsSinksCreateResource)
                      mempty
