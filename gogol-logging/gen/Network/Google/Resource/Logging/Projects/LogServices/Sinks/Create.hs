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
    , plsscQuotaUser
    , plsscPrettyPrint
    , plsscUploadProtocol
    , plsscPp
    , plsscAccessToken
    , plsscUploadType
    , plsscPayload
    , plsscBearerToken
    , plsscKey
    , plsscLogServicesId
    , plsscOAuthToken
    , plsscProjectsId
    , plsscFields
    , plsscCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @LoggingProjectsLogServicesSinksCreate@ which the
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
                               QueryParam "quotaUser" Text :>
                                 QueryParam "prettyPrint" Bool :>
                                   QueryParam "fields" Text :>
                                     QueryParam "key" Key :>
                                       QueryParam "oauth_token" OAuthToken :>
                                         QueryParam "alt" AltJSON :>
                                           ReqBody '[JSON] LogSink :>
                                             Post '[JSON] LogSink

-- | Creates a log service sink. All log entries from a specified log service
-- are written to the destination.
--
-- /See:/ 'projectsLogServicesSinksCreate'' smart constructor.
data ProjectsLogServicesSinksCreate' = ProjectsLogServicesSinksCreate'
    { _plsscXgafv          :: !(Maybe Text)
    , _plsscQuotaUser      :: !(Maybe Text)
    , _plsscPrettyPrint    :: !Bool
    , _plsscUploadProtocol :: !(Maybe Text)
    , _plsscPp             :: !Bool
    , _plsscAccessToken    :: !(Maybe Text)
    , _plsscUploadType     :: !(Maybe Text)
    , _plsscPayload        :: !LogSink
    , _plsscBearerToken    :: !(Maybe Text)
    , _plsscKey            :: !(Maybe Key)
    , _plsscLogServicesId  :: !Text
    , _plsscOAuthToken     :: !(Maybe OAuthToken)
    , _plsscProjectsId     :: !Text
    , _plsscFields         :: !(Maybe Text)
    , _plsscCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLogServicesSinksCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plsscXgafv'
--
-- * 'plsscQuotaUser'
--
-- * 'plsscPrettyPrint'
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
-- * 'plsscKey'
--
-- * 'plsscLogServicesId'
--
-- * 'plsscOAuthToken'
--
-- * 'plsscProjectsId'
--
-- * 'plsscFields'
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
    , _plsscQuotaUser = Nothing
    , _plsscPrettyPrint = True
    , _plsscUploadProtocol = Nothing
    , _plsscPp = True
    , _plsscAccessToken = Nothing
    , _plsscUploadType = Nothing
    , _plsscPayload = pPlsscPayload_
    , _plsscBearerToken = Nothing
    , _plsscKey = Nothing
    , _plsscLogServicesId = pPlsscLogServicesId_
    , _plsscOAuthToken = Nothing
    , _plsscProjectsId = pPlsscProjectsId_
    , _plsscFields = Nothing
    , _plsscCallback = Nothing
    }

-- | V1 error format.
plsscXgafv :: Lens' ProjectsLogServicesSinksCreate' (Maybe Text)
plsscXgafv
  = lens _plsscXgafv (\ s a -> s{_plsscXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
plsscQuotaUser :: Lens' ProjectsLogServicesSinksCreate' (Maybe Text)
plsscQuotaUser
  = lens _plsscQuotaUser
      (\ s a -> s{_plsscQuotaUser = a})

-- | Returns response with indentations and line breaks.
plsscPrettyPrint :: Lens' ProjectsLogServicesSinksCreate' Bool
plsscPrettyPrint
  = lens _plsscPrettyPrint
      (\ s a -> s{_plsscPrettyPrint = a})

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

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
plsscKey :: Lens' ProjectsLogServicesSinksCreate' (Maybe Key)
plsscKey = lens _plsscKey (\ s a -> s{_plsscKey = a})

-- | Part of \`serviceName\`. See documentation of \`projectsId\`.
plsscLogServicesId :: Lens' ProjectsLogServicesSinksCreate' Text
plsscLogServicesId
  = lens _plsscLogServicesId
      (\ s a -> s{_plsscLogServicesId = a})

-- | OAuth 2.0 token for the current user.
plsscOAuthToken :: Lens' ProjectsLogServicesSinksCreate' (Maybe OAuthToken)
plsscOAuthToken
  = lens _plsscOAuthToken
      (\ s a -> s{_plsscOAuthToken = a})

-- | Part of \`serviceName\`. The resource name of the log service to which
-- the sink is bound.
plsscProjectsId :: Lens' ProjectsLogServicesSinksCreate' Text
plsscProjectsId
  = lens _plsscProjectsId
      (\ s a -> s{_plsscProjectsId = a})

-- | Selector specifying which fields to include in a partial response.
plsscFields :: Lens' ProjectsLogServicesSinksCreate' (Maybe Text)
plsscFields
  = lens _plsscFields (\ s a -> s{_plsscFields = a})

-- | JSONP
plsscCallback :: Lens' ProjectsLogServicesSinksCreate' (Maybe Text)
plsscCallback
  = lens _plsscCallback
      (\ s a -> s{_plsscCallback = a})

instance GoogleAuth ProjectsLogServicesSinksCreate'
         where
        authKey = plsscKey . _Just
        authToken = plsscOAuthToken . _Just

instance GoogleRequest
         ProjectsLogServicesSinksCreate' where
        type Rs ProjectsLogServicesSinksCreate' = LogSink
        request = requestWithRoute defReq loggingURL
        requestWithRoute r u
          ProjectsLogServicesSinksCreate'{..}
          = go _plsscProjectsId _plsscLogServicesId _plsscXgafv
              _plsscUploadProtocol
              (Just _plsscPp)
              _plsscAccessToken
              _plsscUploadType
              _plsscBearerToken
              _plsscCallback
              _plsscQuotaUser
              (Just _plsscPrettyPrint)
              _plsscFields
              _plsscKey
              _plsscOAuthToken
              (Just AltJSON)
              _plsscPayload
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ProjectsLogServicesSinksCreateResource)
                      r
                      u
