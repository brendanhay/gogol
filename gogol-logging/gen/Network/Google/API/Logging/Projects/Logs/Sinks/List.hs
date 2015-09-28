{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Logging.Projects.Logs.Sinks.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists log sinks associated with a log.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference> for @logging.projects.logs.sinks.list@.
module Network.Google.API.Logging.Projects.Logs.Sinks.List
    (
    -- * REST Resource
      ProjectsLogsSinksListAPI

    -- * Creating a Request
    , projectsLogsSinksList'
    , ProjectsLogsSinksList'

    -- * Request Lenses
    , plslXgafv
    , plslQuotaUser
    , plslPrettyPrint
    , plslUploadProtocol
    , plslLogsId
    , plslPp
    , plslAccessToken
    , plslUploadType
    , plslBearerToken
    , plslKey
    , plslOauthToken
    , plslProjectsId
    , plslFields
    , plslCallback
    , plslAlt
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for logging.projects.logs.sinks.list which the
-- 'ProjectsLogsSinksList'' request conforms to.
type ProjectsLogsSinksListAPI =
     "v1beta3" :>
       "projects" :>
         Capture "projectsId" Text :>
           "logs" :>
             Capture "logsId" Text :>
               "sinks" :>
                 QueryParam "$.xgafv" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "pp" Bool :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "bearer_token" Text :>
                                 QueryParam "key" Text :>
                                   QueryParam "oauth_token" Text :>
                                     QueryParam "fields" Text :>
                                       QueryParam "callback" Text :>
                                         QueryParam "alt" Text :>
                                           Get '[JSON] ListLogSinksResponse

-- | Lists log sinks associated with a log.
--
-- /See:/ 'projectsLogsSinksList'' smart constructor.
data ProjectsLogsSinksList' = ProjectsLogsSinksList'
    { _plslXgafv          :: !(Maybe Text)
    , _plslQuotaUser      :: !(Maybe Text)
    , _plslPrettyPrint    :: !Bool
    , _plslUploadProtocol :: !(Maybe Text)
    , _plslLogsId         :: !Text
    , _plslPp             :: !Bool
    , _plslAccessToken    :: !(Maybe Text)
    , _plslUploadType     :: !(Maybe Text)
    , _plslBearerToken    :: !(Maybe Text)
    , _plslKey            :: !(Maybe Text)
    , _plslOauthToken     :: !(Maybe Text)
    , _plslProjectsId     :: !Text
    , _plslFields         :: !(Maybe Text)
    , _plslCallback       :: !(Maybe Text)
    , _plslAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLogsSinksList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plslXgafv'
--
-- * 'plslQuotaUser'
--
-- * 'plslPrettyPrint'
--
-- * 'plslUploadProtocol'
--
-- * 'plslLogsId'
--
-- * 'plslPp'
--
-- * 'plslAccessToken'
--
-- * 'plslUploadType'
--
-- * 'plslBearerToken'
--
-- * 'plslKey'
--
-- * 'plslOauthToken'
--
-- * 'plslProjectsId'
--
-- * 'plslFields'
--
-- * 'plslCallback'
--
-- * 'plslAlt'
projectsLogsSinksList'
    :: Text -- ^ 'logsId'
    -> Text -- ^ 'projectsId'
    -> ProjectsLogsSinksList'
projectsLogsSinksList' pPlslLogsId_ pPlslProjectsId_ =
    ProjectsLogsSinksList'
    { _plslXgafv = Nothing
    , _plslQuotaUser = Nothing
    , _plslPrettyPrint = True
    , _plslUploadProtocol = Nothing
    , _plslLogsId = pPlslLogsId_
    , _plslPp = True
    , _plslAccessToken = Nothing
    , _plslUploadType = Nothing
    , _plslBearerToken = Nothing
    , _plslKey = Nothing
    , _plslOauthToken = Nothing
    , _plslProjectsId = pPlslProjectsId_
    , _plslFields = Nothing
    , _plslCallback = Nothing
    , _plslAlt = "json"
    }

-- | V1 error format.
plslXgafv :: Lens' ProjectsLogsSinksList' (Maybe Text)
plslXgafv
  = lens _plslXgafv (\ s a -> s{_plslXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
plslQuotaUser :: Lens' ProjectsLogsSinksList' (Maybe Text)
plslQuotaUser
  = lens _plslQuotaUser
      (\ s a -> s{_plslQuotaUser = a})

-- | Returns response with indentations and line breaks.
plslPrettyPrint :: Lens' ProjectsLogsSinksList' Bool
plslPrettyPrint
  = lens _plslPrettyPrint
      (\ s a -> s{_plslPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plslUploadProtocol :: Lens' ProjectsLogsSinksList' (Maybe Text)
plslUploadProtocol
  = lens _plslUploadProtocol
      (\ s a -> s{_plslUploadProtocol = a})

-- | Part of \`logName\`. See documentation of \`projectsId\`.
plslLogsId :: Lens' ProjectsLogsSinksList' Text
plslLogsId
  = lens _plslLogsId (\ s a -> s{_plslLogsId = a})

-- | Pretty-print response.
plslPp :: Lens' ProjectsLogsSinksList' Bool
plslPp = lens _plslPp (\ s a -> s{_plslPp = a})

-- | OAuth access token.
plslAccessToken :: Lens' ProjectsLogsSinksList' (Maybe Text)
plslAccessToken
  = lens _plslAccessToken
      (\ s a -> s{_plslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plslUploadType :: Lens' ProjectsLogsSinksList' (Maybe Text)
plslUploadType
  = lens _plslUploadType
      (\ s a -> s{_plslUploadType = a})

-- | OAuth bearer token.
plslBearerToken :: Lens' ProjectsLogsSinksList' (Maybe Text)
plslBearerToken
  = lens _plslBearerToken
      (\ s a -> s{_plslBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
plslKey :: Lens' ProjectsLogsSinksList' (Maybe Text)
plslKey = lens _plslKey (\ s a -> s{_plslKey = a})

-- | OAuth 2.0 token for the current user.
plslOauthToken :: Lens' ProjectsLogsSinksList' (Maybe Text)
plslOauthToken
  = lens _plslOauthToken
      (\ s a -> s{_plslOauthToken = a})

-- | Part of \`logName\`. The log whose sinks are wanted. For example,
-- \`\"compute.google.com\/syslog\"\`.
plslProjectsId :: Lens' ProjectsLogsSinksList' Text
plslProjectsId
  = lens _plslProjectsId
      (\ s a -> s{_plslProjectsId = a})

-- | Selector specifying which fields to include in a partial response.
plslFields :: Lens' ProjectsLogsSinksList' (Maybe Text)
plslFields
  = lens _plslFields (\ s a -> s{_plslFields = a})

-- | JSONP
plslCallback :: Lens' ProjectsLogsSinksList' (Maybe Text)
plslCallback
  = lens _plslCallback (\ s a -> s{_plslCallback = a})

-- | Data format for response.
plslAlt :: Lens' ProjectsLogsSinksList' Text
plslAlt = lens _plslAlt (\ s a -> s{_plslAlt = a})

instance GoogleRequest ProjectsLogsSinksList' where
        type Rs ProjectsLogsSinksList' = ListLogSinksResponse
        request = requestWithRoute defReq loggingURL
        requestWithRoute r u ProjectsLogsSinksList'{..}
          = go _plslXgafv _plslQuotaUser
              (Just _plslPrettyPrint)
              _plslUploadProtocol
              _plslLogsId
              (Just _plslPp)
              _plslAccessToken
              _plslUploadType
              _plslBearerToken
              _plslKey
              _plslOauthToken
              _plslProjectsId
              _plslFields
              _plslCallback
              (Just _plslAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsLogsSinksListAPI)
                      r
                      u
