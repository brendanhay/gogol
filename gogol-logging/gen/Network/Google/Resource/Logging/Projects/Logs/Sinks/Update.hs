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
    , plsuQuotaUser
    , plsuPrettyPrint
    , plsuUploadProtocol
    , plsuLogsId
    , plsuPp
    , plsuAccessToken
    , plsuUploadType
    , plsuPayload
    , plsuBearerToken
    , plsuKey
    , plsuOAuthToken
    , plsuProjectsId
    , plsuSinksId
    , plsuFields
    , plsuCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @LoggingProjectsLogsSinksUpdate@ which the
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
                                 QueryParam "quotaUser" Text :>
                                   QueryParam "prettyPrint" Bool :>
                                     QueryParam "fields" Text :>
                                       QueryParam "key" Key :>
                                         QueryParam "oauth_token" OAuthToken :>
                                           QueryParam "alt" AltJSON :>
                                             ReqBody '[JSON] LogSink :>
                                               Put '[JSON] LogSink

-- | Updates a log sink. If the sink does not exist, it is created.
--
-- /See:/ 'projectsLogsSinksUpdate'' smart constructor.
data ProjectsLogsSinksUpdate' = ProjectsLogsSinksUpdate'
    { _plsuXgafv          :: !(Maybe Text)
    , _plsuQuotaUser      :: !(Maybe Text)
    , _plsuPrettyPrint    :: !Bool
    , _plsuUploadProtocol :: !(Maybe Text)
    , _plsuLogsId         :: !Text
    , _plsuPp             :: !Bool
    , _plsuAccessToken    :: !(Maybe Text)
    , _plsuUploadType     :: !(Maybe Text)
    , _plsuPayload        :: !LogSink
    , _plsuBearerToken    :: !(Maybe Text)
    , _plsuKey            :: !(Maybe Key)
    , _plsuOAuthToken     :: !(Maybe OAuthToken)
    , _plsuProjectsId     :: !Text
    , _plsuSinksId        :: !Text
    , _plsuFields         :: !(Maybe Text)
    , _plsuCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLogsSinksUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plsuXgafv'
--
-- * 'plsuQuotaUser'
--
-- * 'plsuPrettyPrint'
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
-- * 'plsuKey'
--
-- * 'plsuOAuthToken'
--
-- * 'plsuProjectsId'
--
-- * 'plsuSinksId'
--
-- * 'plsuFields'
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
    , _plsuQuotaUser = Nothing
    , _plsuPrettyPrint = True
    , _plsuUploadProtocol = Nothing
    , _plsuLogsId = pPlsuLogsId_
    , _plsuPp = True
    , _plsuAccessToken = Nothing
    , _plsuUploadType = Nothing
    , _plsuPayload = pPlsuPayload_
    , _plsuBearerToken = Nothing
    , _plsuKey = Nothing
    , _plsuOAuthToken = Nothing
    , _plsuProjectsId = pPlsuProjectsId_
    , _plsuSinksId = pPlsuSinksId_
    , _plsuFields = Nothing
    , _plsuCallback = Nothing
    }

-- | V1 error format.
plsuXgafv :: Lens' ProjectsLogsSinksUpdate' (Maybe Text)
plsuXgafv
  = lens _plsuXgafv (\ s a -> s{_plsuXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
plsuQuotaUser :: Lens' ProjectsLogsSinksUpdate' (Maybe Text)
plsuQuotaUser
  = lens _plsuQuotaUser
      (\ s a -> s{_plsuQuotaUser = a})

-- | Returns response with indentations and line breaks.
plsuPrettyPrint :: Lens' ProjectsLogsSinksUpdate' Bool
plsuPrettyPrint
  = lens _plsuPrettyPrint
      (\ s a -> s{_plsuPrettyPrint = a})

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

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
plsuKey :: Lens' ProjectsLogsSinksUpdate' (Maybe Key)
plsuKey = lens _plsuKey (\ s a -> s{_plsuKey = a})

-- | OAuth 2.0 token for the current user.
plsuOAuthToken :: Lens' ProjectsLogsSinksUpdate' (Maybe OAuthToken)
plsuOAuthToken
  = lens _plsuOAuthToken
      (\ s a -> s{_plsuOAuthToken = a})

-- | Part of \`sinkName\`. The resource name of the sink to update.
plsuProjectsId :: Lens' ProjectsLogsSinksUpdate' Text
plsuProjectsId
  = lens _plsuProjectsId
      (\ s a -> s{_plsuProjectsId = a})

-- | Part of \`sinkName\`. See documentation of \`projectsId\`.
plsuSinksId :: Lens' ProjectsLogsSinksUpdate' Text
plsuSinksId
  = lens _plsuSinksId (\ s a -> s{_plsuSinksId = a})

-- | Selector specifying which fields to include in a partial response.
plsuFields :: Lens' ProjectsLogsSinksUpdate' (Maybe Text)
plsuFields
  = lens _plsuFields (\ s a -> s{_plsuFields = a})

-- | JSONP
plsuCallback :: Lens' ProjectsLogsSinksUpdate' (Maybe Text)
plsuCallback
  = lens _plsuCallback (\ s a -> s{_plsuCallback = a})

instance GoogleAuth ProjectsLogsSinksUpdate' where
        authKey = plsuKey . _Just
        authToken = plsuOAuthToken . _Just

instance GoogleRequest ProjectsLogsSinksUpdate' where
        type Rs ProjectsLogsSinksUpdate' = LogSink
        request = requestWithRoute defReq loggingURL
        requestWithRoute r u ProjectsLogsSinksUpdate'{..}
          = go _plsuProjectsId _plsuLogsId _plsuSinksId
              _plsuXgafv
              _plsuUploadProtocol
              (Just _plsuPp)
              _plsuAccessToken
              _plsuUploadType
              _plsuBearerToken
              _plsuCallback
              _plsuQuotaUser
              (Just _plsuPrettyPrint)
              _plsuFields
              _plsuKey
              _plsuOAuthToken
              (Just AltJSON)
              _plsuPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsLogsSinksUpdateResource)
                      r
                      u
