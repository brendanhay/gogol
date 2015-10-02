{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
    , plsgQuotaUser
    , plsgPrettyPrint
    , plsgUploadProtocol
    , plsgLogsId
    , plsgPp
    , plsgAccessToken
    , plsgUploadType
    , plsgBearerToken
    , plsgKey
    , plsgOAuthToken
    , plsgProjectsId
    , plsgSinksId
    , plsgFields
    , plsgCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @LoggingProjectsLogsSinksGet@ which the
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
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "upload_protocol" Text :>
                           QueryParam "pp" Bool :>
                             QueryParam "access_token" Text :>
                               QueryParam "uploadType" Text :>
                                 QueryParam "bearer_token" Text :>
                                   QueryParam "key" Key :>
                                     QueryParam "oauth_token" OAuthToken :>
                                       QueryParam "fields" Text :>
                                         QueryParam "callback" Text :>
                                           QueryParam "alt" AltJSON :>
                                             Get '[JSON] LogSink

-- | Gets a log sink.
--
-- /See:/ 'projectsLogsSinksGet'' smart constructor.
data ProjectsLogsSinksGet' = ProjectsLogsSinksGet'
    { _plsgXgafv          :: !(Maybe Text)
    , _plsgQuotaUser      :: !(Maybe Text)
    , _plsgPrettyPrint    :: !Bool
    , _plsgUploadProtocol :: !(Maybe Text)
    , _plsgLogsId         :: !Text
    , _plsgPp             :: !Bool
    , _plsgAccessToken    :: !(Maybe Text)
    , _plsgUploadType     :: !(Maybe Text)
    , _plsgBearerToken    :: !(Maybe Text)
    , _plsgKey            :: !(Maybe Key)
    , _plsgOAuthToken     :: !(Maybe OAuthToken)
    , _plsgProjectsId     :: !Text
    , _plsgSinksId        :: !Text
    , _plsgFields         :: !(Maybe Text)
    , _plsgCallback       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLogsSinksGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plsgXgafv'
--
-- * 'plsgQuotaUser'
--
-- * 'plsgPrettyPrint'
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
-- * 'plsgKey'
--
-- * 'plsgOAuthToken'
--
-- * 'plsgProjectsId'
--
-- * 'plsgSinksId'
--
-- * 'plsgFields'
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
    , _plsgQuotaUser = Nothing
    , _plsgPrettyPrint = True
    , _plsgUploadProtocol = Nothing
    , _plsgLogsId = pPlsgLogsId_
    , _plsgPp = True
    , _plsgAccessToken = Nothing
    , _plsgUploadType = Nothing
    , _plsgBearerToken = Nothing
    , _plsgKey = Nothing
    , _plsgOAuthToken = Nothing
    , _plsgProjectsId = pPlsgProjectsId_
    , _plsgSinksId = pPlsgSinksId_
    , _plsgFields = Nothing
    , _plsgCallback = Nothing
    }

-- | V1 error format.
plsgXgafv :: Lens' ProjectsLogsSinksGet' (Maybe Text)
plsgXgafv
  = lens _plsgXgafv (\ s a -> s{_plsgXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
plsgQuotaUser :: Lens' ProjectsLogsSinksGet' (Maybe Text)
plsgQuotaUser
  = lens _plsgQuotaUser
      (\ s a -> s{_plsgQuotaUser = a})

-- | Returns response with indentations and line breaks.
plsgPrettyPrint :: Lens' ProjectsLogsSinksGet' Bool
plsgPrettyPrint
  = lens _plsgPrettyPrint
      (\ s a -> s{_plsgPrettyPrint = a})

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

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
plsgKey :: Lens' ProjectsLogsSinksGet' (Maybe Key)
plsgKey = lens _plsgKey (\ s a -> s{_plsgKey = a})

-- | OAuth 2.0 token for the current user.
plsgOAuthToken :: Lens' ProjectsLogsSinksGet' (Maybe OAuthToken)
plsgOAuthToken
  = lens _plsgOAuthToken
      (\ s a -> s{_plsgOAuthToken = a})

-- | Part of \`sinkName\`. The resource name of the log sink to return.
plsgProjectsId :: Lens' ProjectsLogsSinksGet' Text
plsgProjectsId
  = lens _plsgProjectsId
      (\ s a -> s{_plsgProjectsId = a})

-- | Part of \`sinkName\`. See documentation of \`projectsId\`.
plsgSinksId :: Lens' ProjectsLogsSinksGet' Text
plsgSinksId
  = lens _plsgSinksId (\ s a -> s{_plsgSinksId = a})

-- | Selector specifying which fields to include in a partial response.
plsgFields :: Lens' ProjectsLogsSinksGet' (Maybe Text)
plsgFields
  = lens _plsgFields (\ s a -> s{_plsgFields = a})

-- | JSONP
plsgCallback :: Lens' ProjectsLogsSinksGet' (Maybe Text)
plsgCallback
  = lens _plsgCallback (\ s a -> s{_plsgCallback = a})

instance GoogleAuth ProjectsLogsSinksGet' where
        authKey = plsgKey . _Just
        authToken = plsgOAuthToken . _Just

instance GoogleRequest ProjectsLogsSinksGet' where
        type Rs ProjectsLogsSinksGet' = LogSink
        request = requestWithRoute defReq loggingURL
        requestWithRoute r u ProjectsLogsSinksGet'{..}
          = go _plsgXgafv _plsgQuotaUser
              (Just _plsgPrettyPrint)
              _plsgUploadProtocol
              _plsgLogsId
              (Just _plsgPp)
              _plsgAccessToken
              _plsgUploadType
              _plsgBearerToken
              _plsgKey
              _plsgOAuthToken
              _plsgProjectsId
              _plsgSinksId
              _plsgFields
              _plsgCallback
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsLogsSinksGetResource)
                      r
                      u
