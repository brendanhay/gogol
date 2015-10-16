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
-- Module      : Network.Google.Resource.Logging.Projects.LogServices.Sinks.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a log service sink.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference> for @LoggingProjectsLogServicesSinksGet@.
module Network.Google.Resource.Logging.Projects.LogServices.Sinks.Get
    (
    -- * REST Resource
      ProjectsLogServicesSinksGetResource

    -- * Creating a Request
    , projectsLogServicesSinksGet'
    , ProjectsLogServicesSinksGet'

    -- * Request Lenses
    , plssgXgafv
    , plssgUploadProtocol
    , plssgPp
    , plssgAccessToken
    , plssgUploadType
    , plssgBearerToken
    , plssgLogServicesId
    , plssgProjectsId
    , plssgSinksId
    , plssgCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @LoggingProjectsLogServicesSinksGet@ method which the
-- 'ProjectsLogServicesSinksGet'' request conforms to.
type ProjectsLogServicesSinksGetResource =
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
                                 QueryParam "alt" AltJSON :> Get '[JSON] LogSink

-- | Gets a log service sink.
--
-- /See:/ 'projectsLogServicesSinksGet'' smart constructor.
data ProjectsLogServicesSinksGet' = ProjectsLogServicesSinksGet'
    { _plssgXgafv          :: !(Maybe Text)
    , _plssgUploadProtocol :: !(Maybe Text)
    , _plssgPp             :: !Bool
    , _plssgAccessToken    :: !(Maybe Text)
    , _plssgUploadType     :: !(Maybe Text)
    , _plssgBearerToken    :: !(Maybe Text)
    , _plssgLogServicesId  :: !Text
    , _plssgProjectsId     :: !Text
    , _plssgSinksId        :: !Text
    , _plssgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLogServicesSinksGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plssgXgafv'
--
-- * 'plssgUploadProtocol'
--
-- * 'plssgPp'
--
-- * 'plssgAccessToken'
--
-- * 'plssgUploadType'
--
-- * 'plssgBearerToken'
--
-- * 'plssgLogServicesId'
--
-- * 'plssgProjectsId'
--
-- * 'plssgSinksId'
--
-- * 'plssgCallback'
projectsLogServicesSinksGet'
    :: Text -- ^ 'logServicesId'
    -> Text -- ^ 'projectsId'
    -> Text -- ^ 'sinksId'
    -> ProjectsLogServicesSinksGet'
projectsLogServicesSinksGet' pPlssgLogServicesId_ pPlssgProjectsId_ pPlssgSinksId_ =
    ProjectsLogServicesSinksGet'
    { _plssgXgafv = Nothing
    , _plssgUploadProtocol = Nothing
    , _plssgPp = True
    , _plssgAccessToken = Nothing
    , _plssgUploadType = Nothing
    , _plssgBearerToken = Nothing
    , _plssgLogServicesId = pPlssgLogServicesId_
    , _plssgProjectsId = pPlssgProjectsId_
    , _plssgSinksId = pPlssgSinksId_
    , _plssgCallback = Nothing
    }

-- | V1 error format.
plssgXgafv :: Lens' ProjectsLogServicesSinksGet' (Maybe Text)
plssgXgafv
  = lens _plssgXgafv (\ s a -> s{_plssgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plssgUploadProtocol :: Lens' ProjectsLogServicesSinksGet' (Maybe Text)
plssgUploadProtocol
  = lens _plssgUploadProtocol
      (\ s a -> s{_plssgUploadProtocol = a})

-- | Pretty-print response.
plssgPp :: Lens' ProjectsLogServicesSinksGet' Bool
plssgPp = lens _plssgPp (\ s a -> s{_plssgPp = a})

-- | OAuth access token.
plssgAccessToken :: Lens' ProjectsLogServicesSinksGet' (Maybe Text)
plssgAccessToken
  = lens _plssgAccessToken
      (\ s a -> s{_plssgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plssgUploadType :: Lens' ProjectsLogServicesSinksGet' (Maybe Text)
plssgUploadType
  = lens _plssgUploadType
      (\ s a -> s{_plssgUploadType = a})

-- | OAuth bearer token.
plssgBearerToken :: Lens' ProjectsLogServicesSinksGet' (Maybe Text)
plssgBearerToken
  = lens _plssgBearerToken
      (\ s a -> s{_plssgBearerToken = a})

-- | Part of \`sinkName\`. See documentation of \`projectsId\`.
plssgLogServicesId :: Lens' ProjectsLogServicesSinksGet' Text
plssgLogServicesId
  = lens _plssgLogServicesId
      (\ s a -> s{_plssgLogServicesId = a})

-- | Part of \`sinkName\`. The resource name of the log service sink to
-- return.
plssgProjectsId :: Lens' ProjectsLogServicesSinksGet' Text
plssgProjectsId
  = lens _plssgProjectsId
      (\ s a -> s{_plssgProjectsId = a})

-- | Part of \`sinkName\`. See documentation of \`projectsId\`.
plssgSinksId :: Lens' ProjectsLogServicesSinksGet' Text
plssgSinksId
  = lens _plssgSinksId (\ s a -> s{_plssgSinksId = a})

-- | JSONP
plssgCallback :: Lens' ProjectsLogServicesSinksGet' (Maybe Text)
plssgCallback
  = lens _plssgCallback
      (\ s a -> s{_plssgCallback = a})

instance GoogleRequest ProjectsLogServicesSinksGet'
         where
        type Rs ProjectsLogServicesSinksGet' = LogSink
        requestClient ProjectsLogServicesSinksGet'{..}
          = go _plssgProjectsId _plssgLogServicesId
              _plssgSinksId
              _plssgXgafv
              _plssgUploadProtocol
              (Just _plssgPp)
              _plssgAccessToken
              _plssgUploadType
              _plssgBearerToken
              _plssgCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLogServicesSinksGetResource)
                      mempty
