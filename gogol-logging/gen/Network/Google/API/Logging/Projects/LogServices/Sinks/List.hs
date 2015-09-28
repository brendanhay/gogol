{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Logging.Projects.LogServices.Sinks.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists log service sinks associated with a log service.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference> for @logging.projects.logServices.sinks.list@.
module Network.Google.API.Logging.Projects.LogServices.Sinks.List
    (
    -- * REST Resource
      ProjectsLogServicesSinksListAPI

    -- * Creating a Request
    , projectsLogServicesSinksList'
    , ProjectsLogServicesSinksList'

    -- * Request Lenses
    , plsslXgafv
    , plsslQuotaUser
    , plsslPrettyPrint
    , plsslUploadProtocol
    , plsslPp
    , plsslAccessToken
    , plsslUploadType
    , plsslBearerToken
    , plsslKey
    , plsslLogServicesId
    , plsslOauthToken
    , plsslProjectsId
    , plsslFields
    , plsslCallback
    , plsslAlt
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for logging.projects.logServices.sinks.list which the
-- 'ProjectsLogServicesSinksList'' request conforms to.
type ProjectsLogServicesSinksListAPI =
     "v1beta3" :>
       "projects" :>
         Capture "projectsId" Text :>
           "logServices" :>
             Capture "logServicesId" Text :>
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
                                           Get '[JSON]
                                             ListLogServiceSinksResponse

-- | Lists log service sinks associated with a log service.
--
-- /See:/ 'projectsLogServicesSinksList'' smart constructor.
data ProjectsLogServicesSinksList' = ProjectsLogServicesSinksList'
    { _plsslXgafv          :: !(Maybe Text)
    , _plsslQuotaUser      :: !(Maybe Text)
    , _plsslPrettyPrint    :: !Bool
    , _plsslUploadProtocol :: !(Maybe Text)
    , _plsslPp             :: !Bool
    , _plsslAccessToken    :: !(Maybe Text)
    , _plsslUploadType     :: !(Maybe Text)
    , _plsslBearerToken    :: !(Maybe Text)
    , _plsslKey            :: !(Maybe Text)
    , _plsslLogServicesId  :: !Text
    , _plsslOauthToken     :: !(Maybe Text)
    , _plsslProjectsId     :: !Text
    , _plsslFields         :: !(Maybe Text)
    , _plsslCallback       :: !(Maybe Text)
    , _plsslAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLogServicesSinksList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plsslXgafv'
--
-- * 'plsslQuotaUser'
--
-- * 'plsslPrettyPrint'
--
-- * 'plsslUploadProtocol'
--
-- * 'plsslPp'
--
-- * 'plsslAccessToken'
--
-- * 'plsslUploadType'
--
-- * 'plsslBearerToken'
--
-- * 'plsslKey'
--
-- * 'plsslLogServicesId'
--
-- * 'plsslOauthToken'
--
-- * 'plsslProjectsId'
--
-- * 'plsslFields'
--
-- * 'plsslCallback'
--
-- * 'plsslAlt'
projectsLogServicesSinksList'
    :: Text -- ^ 'logServicesId'
    -> Text -- ^ 'projectsId'
    -> ProjectsLogServicesSinksList'
projectsLogServicesSinksList' pPlsslLogServicesId_ pPlsslProjectsId_ =
    ProjectsLogServicesSinksList'
    { _plsslXgafv = Nothing
    , _plsslQuotaUser = Nothing
    , _plsslPrettyPrint = True
    , _plsslUploadProtocol = Nothing
    , _plsslPp = True
    , _plsslAccessToken = Nothing
    , _plsslUploadType = Nothing
    , _plsslBearerToken = Nothing
    , _plsslKey = Nothing
    , _plsslLogServicesId = pPlsslLogServicesId_
    , _plsslOauthToken = Nothing
    , _plsslProjectsId = pPlsslProjectsId_
    , _plsslFields = Nothing
    , _plsslCallback = Nothing
    , _plsslAlt = "json"
    }

-- | V1 error format.
plsslXgafv :: Lens' ProjectsLogServicesSinksList' (Maybe Text)
plsslXgafv
  = lens _plsslXgafv (\ s a -> s{_plsslXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
plsslQuotaUser :: Lens' ProjectsLogServicesSinksList' (Maybe Text)
plsslQuotaUser
  = lens _plsslQuotaUser
      (\ s a -> s{_plsslQuotaUser = a})

-- | Returns response with indentations and line breaks.
plsslPrettyPrint :: Lens' ProjectsLogServicesSinksList' Bool
plsslPrettyPrint
  = lens _plsslPrettyPrint
      (\ s a -> s{_plsslPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plsslUploadProtocol :: Lens' ProjectsLogServicesSinksList' (Maybe Text)
plsslUploadProtocol
  = lens _plsslUploadProtocol
      (\ s a -> s{_plsslUploadProtocol = a})

-- | Pretty-print response.
plsslPp :: Lens' ProjectsLogServicesSinksList' Bool
plsslPp = lens _plsslPp (\ s a -> s{_plsslPp = a})

-- | OAuth access token.
plsslAccessToken :: Lens' ProjectsLogServicesSinksList' (Maybe Text)
plsslAccessToken
  = lens _plsslAccessToken
      (\ s a -> s{_plsslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plsslUploadType :: Lens' ProjectsLogServicesSinksList' (Maybe Text)
plsslUploadType
  = lens _plsslUploadType
      (\ s a -> s{_plsslUploadType = a})

-- | OAuth bearer token.
plsslBearerToken :: Lens' ProjectsLogServicesSinksList' (Maybe Text)
plsslBearerToken
  = lens _plsslBearerToken
      (\ s a -> s{_plsslBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
plsslKey :: Lens' ProjectsLogServicesSinksList' (Maybe Text)
plsslKey = lens _plsslKey (\ s a -> s{_plsslKey = a})

-- | Part of \`serviceName\`. See documentation of \`projectsId\`.
plsslLogServicesId :: Lens' ProjectsLogServicesSinksList' Text
plsslLogServicesId
  = lens _plsslLogServicesId
      (\ s a -> s{_plsslLogServicesId = a})

-- | OAuth 2.0 token for the current user.
plsslOauthToken :: Lens' ProjectsLogServicesSinksList' (Maybe Text)
plsslOauthToken
  = lens _plsslOauthToken
      (\ s a -> s{_plsslOauthToken = a})

-- | Part of \`serviceName\`. The log service whose sinks are wanted.
plsslProjectsId :: Lens' ProjectsLogServicesSinksList' Text
plsslProjectsId
  = lens _plsslProjectsId
      (\ s a -> s{_plsslProjectsId = a})

-- | Selector specifying which fields to include in a partial response.
plsslFields :: Lens' ProjectsLogServicesSinksList' (Maybe Text)
plsslFields
  = lens _plsslFields (\ s a -> s{_plsslFields = a})

-- | JSONP
plsslCallback :: Lens' ProjectsLogServicesSinksList' (Maybe Text)
plsslCallback
  = lens _plsslCallback
      (\ s a -> s{_plsslCallback = a})

-- | Data format for response.
plsslAlt :: Lens' ProjectsLogServicesSinksList' Text
plsslAlt = lens _plsslAlt (\ s a -> s{_plsslAlt = a})

instance GoogleRequest ProjectsLogServicesSinksList'
         where
        type Rs ProjectsLogServicesSinksList' =
             ListLogServiceSinksResponse
        request = requestWithRoute defReq loggingURL
        requestWithRoute r u
          ProjectsLogServicesSinksList'{..}
          = go _plsslXgafv _plsslQuotaUser
              (Just _plsslPrettyPrint)
              _plsslUploadProtocol
              (Just _plsslPp)
              _plsslAccessToken
              _plsslUploadType
              _plsslBearerToken
              _plsslKey
              _plsslLogServicesId
              _plsslOauthToken
              _plsslProjectsId
              _plsslFields
              _plsslCallback
              (Just _plsslAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsLogServicesSinksListAPI)
                      r
                      u
