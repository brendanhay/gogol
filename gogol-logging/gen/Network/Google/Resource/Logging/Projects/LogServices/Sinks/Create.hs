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
-- Module      : Network.Google.Resource.Logging.Projects.LogServices.Sinks.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a log service sink. All log entries from a specified log service
-- are written to the destination.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference> for @LoggingProjectsLogServicesSinksCreate@.
module Network.Google.Resource.Logging.Projects.LogServices.Sinks.Create
    (
    -- * REST Resource
      ProjectsLogServicesSinksCreateResource

    -- * Creating a Request
    , projectsLogServicesSinksCreate'
    , ProjectsLogServicesSinksCreate'

    -- * Request Lenses
    , plsscXgafv
    , plsscUploadProtocol
    , plsscPp
    , plsscAccessToken
    , plsscUploadType
    , plsscPayload
    , plsscBearerToken
    , plsscLogServicesId
    , plsscProjectsId
    , plsscCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @LoggingProjectsLogServicesSinksCreate@ method which the
-- 'ProjectsLogServicesSinksCreate'' request conforms to.
type ProjectsLogServicesSinksCreateResource =
     "v1beta3" :>
       "projects" :>
         Capture "projectsId" Text :>
           "logServices" :>
             Capture "logServicesId" Text :>
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

-- | Creates a log service sink. All log entries from a specified log service
-- are written to the destination.
--
-- /See:/ 'projectsLogServicesSinksCreate'' smart constructor.
data ProjectsLogServicesSinksCreate' = ProjectsLogServicesSinksCreate'
    { _plsscXgafv          :: !(Maybe Text)
    , _plsscUploadProtocol :: !(Maybe Text)
    , _plsscPp             :: !Bool
    , _plsscAccessToken    :: !(Maybe Text)
    , _plsscUploadType     :: !(Maybe Text)
    , _plsscPayload        :: !LogSink
    , _plsscBearerToken    :: !(Maybe Text)
    , _plsscLogServicesId  :: !Text
    , _plsscProjectsId     :: !Text
    , _plsscCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLogServicesSinksCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plsscXgafv'
--
-- * 'plsscUploadProtocol'
--
-- * 'plsscPp'
--
-- * 'plsscAccessToken'
--
-- * 'plsscUploadType'
--
-- * 'plsscPayload'
--
-- * 'plsscBearerToken'
--
-- * 'plsscLogServicesId'
--
-- * 'plsscProjectsId'
--
-- * 'plsscCallback'
projectsLogServicesSinksCreate'
    :: LogSink -- ^ 'payload'
    -> Text -- ^ 'logServicesId'
    -> Text -- ^ 'projectsId'
    -> ProjectsLogServicesSinksCreate'
projectsLogServicesSinksCreate' pPlsscPayload_ pPlsscLogServicesId_ pPlsscProjectsId_ =
    ProjectsLogServicesSinksCreate'
    { _plsscXgafv = Nothing
    , _plsscUploadProtocol = Nothing
    , _plsscPp = True
    , _plsscAccessToken = Nothing
    , _plsscUploadType = Nothing
    , _plsscPayload = pPlsscPayload_
    , _plsscBearerToken = Nothing
    , _plsscLogServicesId = pPlsscLogServicesId_
    , _plsscProjectsId = pPlsscProjectsId_
    , _plsscCallback = Nothing
    }

-- | V1 error format.
plsscXgafv :: Lens' ProjectsLogServicesSinksCreate' (Maybe Text)
plsscXgafv
  = lens _plsscXgafv (\ s a -> s{_plsscXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plsscUploadProtocol :: Lens' ProjectsLogServicesSinksCreate' (Maybe Text)
plsscUploadProtocol
  = lens _plsscUploadProtocol
      (\ s a -> s{_plsscUploadProtocol = a})

-- | Pretty-print response.
plsscPp :: Lens' ProjectsLogServicesSinksCreate' Bool
plsscPp = lens _plsscPp (\ s a -> s{_plsscPp = a})

-- | OAuth access token.
plsscAccessToken :: Lens' ProjectsLogServicesSinksCreate' (Maybe Text)
plsscAccessToken
  = lens _plsscAccessToken
      (\ s a -> s{_plsscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plsscUploadType :: Lens' ProjectsLogServicesSinksCreate' (Maybe Text)
plsscUploadType
  = lens _plsscUploadType
      (\ s a -> s{_plsscUploadType = a})

-- | Multipart request metadata.
plsscPayload :: Lens' ProjectsLogServicesSinksCreate' LogSink
plsscPayload
  = lens _plsscPayload (\ s a -> s{_plsscPayload = a})

-- | OAuth bearer token.
plsscBearerToken :: Lens' ProjectsLogServicesSinksCreate' (Maybe Text)
plsscBearerToken
  = lens _plsscBearerToken
      (\ s a -> s{_plsscBearerToken = a})

-- | Part of \`serviceName\`. See documentation of \`projectsId\`.
plsscLogServicesId :: Lens' ProjectsLogServicesSinksCreate' Text
plsscLogServicesId
  = lens _plsscLogServicesId
      (\ s a -> s{_plsscLogServicesId = a})

-- | Part of \`serviceName\`. The resource name of the log service to which
-- the sink is bound.
plsscProjectsId :: Lens' ProjectsLogServicesSinksCreate' Text
plsscProjectsId
  = lens _plsscProjectsId
      (\ s a -> s{_plsscProjectsId = a})

-- | JSONP
plsscCallback :: Lens' ProjectsLogServicesSinksCreate' (Maybe Text)
plsscCallback
  = lens _plsscCallback
      (\ s a -> s{_plsscCallback = a})

instance GoogleRequest
         ProjectsLogServicesSinksCreate' where
        type Rs ProjectsLogServicesSinksCreate' = LogSink
        requestClient ProjectsLogServicesSinksCreate'{..}
          = go _plsscProjectsId _plsscLogServicesId _plsscXgafv
              _plsscUploadProtocol
              (Just _plsscPp)
              _plsscAccessToken
              _plsscUploadType
              _plsscBearerToken
              _plsscCallback
              (Just AltJSON)
              _plsscPayload
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLogServicesSinksCreateResource)
                      mempty
