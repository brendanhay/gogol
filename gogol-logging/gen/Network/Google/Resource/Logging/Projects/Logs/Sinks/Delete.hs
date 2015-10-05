{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Logging.Projects.Logs.Sinks.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a log sink. After deletion, no new log entries are written to
-- the destination.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference> for @LoggingProjectsLogsSinksDelete@.
module Network.Google.Resource.Logging.Projects.Logs.Sinks.Delete
    (
    -- * REST Resource
      ProjectsLogsSinksDeleteResource

    -- * Creating a Request
    , projectsLogsSinksDelete'
    , ProjectsLogsSinksDelete'

    -- * Request Lenses
    , plsdXgafv
    , plsdQuotaUser
    , plsdPrettyPrint
    , plsdUploadProtocol
    , plsdLogsId
    , plsdPp
    , plsdAccessToken
    , plsdUploadType
    , plsdBearerToken
    , plsdKey
    , plsdOAuthToken
    , plsdProjectsId
    , plsdSinksId
    , plsdFields
    , plsdCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @LoggingProjectsLogsSinksDelete@ which the
-- 'ProjectsLogsSinksDelete'' request conforms to.
type ProjectsLogsSinksDeleteResource =
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
                                             Delete '[JSON] Empty

-- | Deletes a log sink. After deletion, no new log entries are written to
-- the destination.
--
-- /See:/ 'projectsLogsSinksDelete'' smart constructor.
data ProjectsLogsSinksDelete' = ProjectsLogsSinksDelete'
    { _plsdXgafv          :: !(Maybe Text)
    , _plsdQuotaUser      :: !(Maybe Text)
    , _plsdPrettyPrint    :: !Bool
    , _plsdUploadProtocol :: !(Maybe Text)
    , _plsdLogsId         :: !Text
    , _plsdPp             :: !Bool
    , _plsdAccessToken    :: !(Maybe Text)
    , _plsdUploadType     :: !(Maybe Text)
    , _plsdBearerToken    :: !(Maybe Text)
    , _plsdKey            :: !(Maybe Key)
    , _plsdOAuthToken     :: !(Maybe OAuthToken)
    , _plsdProjectsId     :: !Text
    , _plsdSinksId        :: !Text
    , _plsdFields         :: !(Maybe Text)
    , _plsdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLogsSinksDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plsdXgafv'
--
-- * 'plsdQuotaUser'
--
-- * 'plsdPrettyPrint'
--
-- * 'plsdUploadProtocol'
--
-- * 'plsdLogsId'
--
-- * 'plsdPp'
--
-- * 'plsdAccessToken'
--
-- * 'plsdUploadType'
--
-- * 'plsdBearerToken'
--
-- * 'plsdKey'
--
-- * 'plsdOAuthToken'
--
-- * 'plsdProjectsId'
--
-- * 'plsdSinksId'
--
-- * 'plsdFields'
--
-- * 'plsdCallback'
projectsLogsSinksDelete'
    :: Text -- ^ 'logsId'
    -> Text -- ^ 'projectsId'
    -> Text -- ^ 'sinksId'
    -> ProjectsLogsSinksDelete'
projectsLogsSinksDelete' pPlsdLogsId_ pPlsdProjectsId_ pPlsdSinksId_ =
    ProjectsLogsSinksDelete'
    { _plsdXgafv = Nothing
    , _plsdQuotaUser = Nothing
    , _plsdPrettyPrint = True
    , _plsdUploadProtocol = Nothing
    , _plsdLogsId = pPlsdLogsId_
    , _plsdPp = True
    , _plsdAccessToken = Nothing
    , _plsdUploadType = Nothing
    , _plsdBearerToken = Nothing
    , _plsdKey = Nothing
    , _plsdOAuthToken = Nothing
    , _plsdProjectsId = pPlsdProjectsId_
    , _plsdSinksId = pPlsdSinksId_
    , _plsdFields = Nothing
    , _plsdCallback = Nothing
    }

-- | V1 error format.
plsdXgafv :: Lens' ProjectsLogsSinksDelete' (Maybe Text)
plsdXgafv
  = lens _plsdXgafv (\ s a -> s{_plsdXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
plsdQuotaUser :: Lens' ProjectsLogsSinksDelete' (Maybe Text)
plsdQuotaUser
  = lens _plsdQuotaUser
      (\ s a -> s{_plsdQuotaUser = a})

-- | Returns response with indentations and line breaks.
plsdPrettyPrint :: Lens' ProjectsLogsSinksDelete' Bool
plsdPrettyPrint
  = lens _plsdPrettyPrint
      (\ s a -> s{_plsdPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plsdUploadProtocol :: Lens' ProjectsLogsSinksDelete' (Maybe Text)
plsdUploadProtocol
  = lens _plsdUploadProtocol
      (\ s a -> s{_plsdUploadProtocol = a})

-- | Part of \`sinkName\`. See documentation of \`projectsId\`.
plsdLogsId :: Lens' ProjectsLogsSinksDelete' Text
plsdLogsId
  = lens _plsdLogsId (\ s a -> s{_plsdLogsId = a})

-- | Pretty-print response.
plsdPp :: Lens' ProjectsLogsSinksDelete' Bool
plsdPp = lens _plsdPp (\ s a -> s{_plsdPp = a})

-- | OAuth access token.
plsdAccessToken :: Lens' ProjectsLogsSinksDelete' (Maybe Text)
plsdAccessToken
  = lens _plsdAccessToken
      (\ s a -> s{_plsdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plsdUploadType :: Lens' ProjectsLogsSinksDelete' (Maybe Text)
plsdUploadType
  = lens _plsdUploadType
      (\ s a -> s{_plsdUploadType = a})

-- | OAuth bearer token.
plsdBearerToken :: Lens' ProjectsLogsSinksDelete' (Maybe Text)
plsdBearerToken
  = lens _plsdBearerToken
      (\ s a -> s{_plsdBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
plsdKey :: Lens' ProjectsLogsSinksDelete' (Maybe Key)
plsdKey = lens _plsdKey (\ s a -> s{_plsdKey = a})

-- | OAuth 2.0 token for the current user.
plsdOAuthToken :: Lens' ProjectsLogsSinksDelete' (Maybe OAuthToken)
plsdOAuthToken
  = lens _plsdOAuthToken
      (\ s a -> s{_plsdOAuthToken = a})

-- | Part of \`sinkName\`. The resource name of the log sink to delete.
plsdProjectsId :: Lens' ProjectsLogsSinksDelete' Text
plsdProjectsId
  = lens _plsdProjectsId
      (\ s a -> s{_plsdProjectsId = a})

-- | Part of \`sinkName\`. See documentation of \`projectsId\`.
plsdSinksId :: Lens' ProjectsLogsSinksDelete' Text
plsdSinksId
  = lens _plsdSinksId (\ s a -> s{_plsdSinksId = a})

-- | Selector specifying which fields to include in a partial response.
plsdFields :: Lens' ProjectsLogsSinksDelete' (Maybe Text)
plsdFields
  = lens _plsdFields (\ s a -> s{_plsdFields = a})

-- | JSONP
plsdCallback :: Lens' ProjectsLogsSinksDelete' (Maybe Text)
plsdCallback
  = lens _plsdCallback (\ s a -> s{_plsdCallback = a})

instance GoogleAuth ProjectsLogsSinksDelete' where
        authKey = plsdKey . _Just
        authToken = plsdOAuthToken . _Just

instance GoogleRequest ProjectsLogsSinksDelete' where
        type Rs ProjectsLogsSinksDelete' = Empty
        request = requestWithRoute defReq loggingURL
        requestWithRoute r u ProjectsLogsSinksDelete'{..}
          = go _plsdProjectsId _plsdLogsId _plsdSinksId
              _plsdXgafv
              _plsdUploadProtocol
              (Just _plsdPp)
              _plsdAccessToken
              _plsdUploadType
              _plsdBearerToken
              _plsdCallback
              _plsdQuotaUser
              (Just _plsdPrettyPrint)
              _plsdFields
              _plsdKey
              _plsdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsLogsSinksDeleteResource)
                      r
                      u
