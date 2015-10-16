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
-- Module      : Network.Google.Resource.Logging.Projects.Logs.Sinks.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a log sink.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference> for @LoggingProjectsLogsSinksGet@.
module Network.Google.Resource.Logging.Projects.Logs.Sinks.Get
    (
    -- * REST Resource
      ProjectsLogsSinksGetResource

    -- * Creating a Request
    , projectsLogsSinksGet'
    , ProjectsLogsSinksGet'

    -- * Request Lenses
    , plsgXgafv
    , plsgUploadProtocol
    , plsgLogsId
    , plsgPp
    , plsgAccessToken
    , plsgUploadType
    , plsgBearerToken
    , plsgProjectsId
    , plsgSinksId
    , plsgCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @LoggingProjectsLogsSinksGet@ method which the
-- 'ProjectsLogsSinksGet'' request conforms to.
type ProjectsLogsSinksGetResource =
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
                                 QueryParam "alt" AltJSON :> Get '[JSON] LogSink

-- | Gets a log sink.
--
-- /See:/ 'projectsLogsSinksGet'' smart constructor.
data ProjectsLogsSinksGet' = ProjectsLogsSinksGet'
    { _plsgXgafv          :: !(Maybe Text)
    , _plsgUploadProtocol :: !(Maybe Text)
    , _plsgLogsId         :: !Text
    , _plsgPp             :: !Bool
    , _plsgAccessToken    :: !(Maybe Text)
    , _plsgUploadType     :: !(Maybe Text)
    , _plsgBearerToken    :: !(Maybe Text)
    , _plsgProjectsId     :: !Text
    , _plsgSinksId        :: !Text
    , _plsgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLogsSinksGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plsgXgafv'
--
-- * 'plsgUploadProtocol'
--
-- * 'plsgLogsId'
--
-- * 'plsgPp'
--
-- * 'plsgAccessToken'
--
-- * 'plsgUploadType'
--
-- * 'plsgBearerToken'
--
-- * 'plsgProjectsId'
--
-- * 'plsgSinksId'
--
-- * 'plsgCallback'
projectsLogsSinksGet'
    :: Text -- ^ 'logsId'
    -> Text -- ^ 'projectsId'
    -> Text -- ^ 'sinksId'
    -> ProjectsLogsSinksGet'
projectsLogsSinksGet' pPlsgLogsId_ pPlsgProjectsId_ pPlsgSinksId_ =
    ProjectsLogsSinksGet'
    { _plsgXgafv = Nothing
    , _plsgUploadProtocol = Nothing
    , _plsgLogsId = pPlsgLogsId_
    , _plsgPp = True
    , _plsgAccessToken = Nothing
    , _plsgUploadType = Nothing
    , _plsgBearerToken = Nothing
    , _plsgProjectsId = pPlsgProjectsId_
    , _plsgSinksId = pPlsgSinksId_
    , _plsgCallback = Nothing
    }

-- | V1 error format.
plsgXgafv :: Lens' ProjectsLogsSinksGet' (Maybe Text)
plsgXgafv
  = lens _plsgXgafv (\ s a -> s{_plsgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plsgUploadProtocol :: Lens' ProjectsLogsSinksGet' (Maybe Text)
plsgUploadProtocol
  = lens _plsgUploadProtocol
      (\ s a -> s{_plsgUploadProtocol = a})

-- | Part of \`sinkName\`. See documentation of \`projectsId\`.
plsgLogsId :: Lens' ProjectsLogsSinksGet' Text
plsgLogsId
  = lens _plsgLogsId (\ s a -> s{_plsgLogsId = a})

-- | Pretty-print response.
plsgPp :: Lens' ProjectsLogsSinksGet' Bool
plsgPp = lens _plsgPp (\ s a -> s{_plsgPp = a})

-- | OAuth access token.
plsgAccessToken :: Lens' ProjectsLogsSinksGet' (Maybe Text)
plsgAccessToken
  = lens _plsgAccessToken
      (\ s a -> s{_plsgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plsgUploadType :: Lens' ProjectsLogsSinksGet' (Maybe Text)
plsgUploadType
  = lens _plsgUploadType
      (\ s a -> s{_plsgUploadType = a})

-- | OAuth bearer token.
plsgBearerToken :: Lens' ProjectsLogsSinksGet' (Maybe Text)
plsgBearerToken
  = lens _plsgBearerToken
      (\ s a -> s{_plsgBearerToken = a})

-- | Part of \`sinkName\`. The resource name of the log sink to return.
plsgProjectsId :: Lens' ProjectsLogsSinksGet' Text
plsgProjectsId
  = lens _plsgProjectsId
      (\ s a -> s{_plsgProjectsId = a})

-- | Part of \`sinkName\`. See documentation of \`projectsId\`.
plsgSinksId :: Lens' ProjectsLogsSinksGet' Text
plsgSinksId
  = lens _plsgSinksId (\ s a -> s{_plsgSinksId = a})

-- | JSONP
plsgCallback :: Lens' ProjectsLogsSinksGet' (Maybe Text)
plsgCallback
  = lens _plsgCallback (\ s a -> s{_plsgCallback = a})

instance GoogleRequest ProjectsLogsSinksGet' where
        type Rs ProjectsLogsSinksGet' = LogSink
        requestClient ProjectsLogsSinksGet'{..}
          = go _plsgProjectsId _plsgLogsId _plsgSinksId
              _plsgXgafv
              _plsgUploadProtocol
              (Just _plsgPp)
              _plsgAccessToken
              _plsgUploadType
              _plsgBearerToken
              _plsgCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLogsSinksGetResource)
                      mempty
