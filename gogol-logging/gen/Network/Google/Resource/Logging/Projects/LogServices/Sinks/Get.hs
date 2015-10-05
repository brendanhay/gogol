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
    , plssgQuotaUser
    , plssgPrettyPrint
    , plssgUploadProtocol
    , plssgPp
    , plssgAccessToken
    , plssgUploadType
    , plssgBearerToken
    , plssgKey
    , plssgLogServicesId
    , plssgOAuthToken
    , plssgProjectsId
    , plssgSinksId
    , plssgFields
    , plssgCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @LoggingProjectsLogServicesSinksGet@ which the
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
                                 QueryParam "quotaUser" Text :>
                                   QueryParam "prettyPrint" Bool :>
                                     QueryParam "fields" Text :>
                                       QueryParam "key" AuthKey :>
                                         QueryParam "oauth_token" OAuthToken :>
                                           QueryParam "alt" AltJSON :>
                                             Get '[JSON] LogSink

-- | Gets a log service sink.
--
-- /See:/ 'projectsLogServicesSinksGet'' smart constructor.
data ProjectsLogServicesSinksGet' = ProjectsLogServicesSinksGet'
    { _plssgXgafv          :: !(Maybe Text)
    , _plssgQuotaUser      :: !(Maybe Text)
    , _plssgPrettyPrint    :: !Bool
    , _plssgUploadProtocol :: !(Maybe Text)
    , _plssgPp             :: !Bool
    , _plssgAccessToken    :: !(Maybe Text)
    , _plssgUploadType     :: !(Maybe Text)
    , _plssgBearerToken    :: !(Maybe Text)
    , _plssgKey            :: !(Maybe AuthKey)
    , _plssgLogServicesId  :: !Text
    , _plssgOAuthToken     :: !(Maybe OAuthToken)
    , _plssgProjectsId     :: !Text
    , _plssgSinksId        :: !Text
    , _plssgFields         :: !(Maybe Text)
    , _plssgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLogServicesSinksGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plssgXgafv'
--
-- * 'plssgQuotaUser'
--
-- * 'plssgPrettyPrint'
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
-- * 'plssgKey'
--
-- * 'plssgLogServicesId'
--
-- * 'plssgOAuthToken'
--
-- * 'plssgProjectsId'
--
-- * 'plssgSinksId'
--
-- * 'plssgFields'
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
    , _plssgQuotaUser = Nothing
    , _plssgPrettyPrint = True
    , _plssgUploadProtocol = Nothing
    , _plssgPp = True
    , _plssgAccessToken = Nothing
    , _plssgUploadType = Nothing
    , _plssgBearerToken = Nothing
    , _plssgKey = Nothing
    , _plssgLogServicesId = pPlssgLogServicesId_
    , _plssgOAuthToken = Nothing
    , _plssgProjectsId = pPlssgProjectsId_
    , _plssgSinksId = pPlssgSinksId_
    , _plssgFields = Nothing
    , _plssgCallback = Nothing
    }

-- | V1 error format.
plssgXgafv :: Lens' ProjectsLogServicesSinksGet' (Maybe Text)
plssgXgafv
  = lens _plssgXgafv (\ s a -> s{_plssgXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
plssgQuotaUser :: Lens' ProjectsLogServicesSinksGet' (Maybe Text)
plssgQuotaUser
  = lens _plssgQuotaUser
      (\ s a -> s{_plssgQuotaUser = a})

-- | Returns response with indentations and line breaks.
plssgPrettyPrint :: Lens' ProjectsLogServicesSinksGet' Bool
plssgPrettyPrint
  = lens _plssgPrettyPrint
      (\ s a -> s{_plssgPrettyPrint = a})

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

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
plssgKey :: Lens' ProjectsLogServicesSinksGet' (Maybe AuthKey)
plssgKey = lens _plssgKey (\ s a -> s{_plssgKey = a})

-- | Part of \`sinkName\`. See documentation of \`projectsId\`.
plssgLogServicesId :: Lens' ProjectsLogServicesSinksGet' Text
plssgLogServicesId
  = lens _plssgLogServicesId
      (\ s a -> s{_plssgLogServicesId = a})

-- | OAuth 2.0 token for the current user.
plssgOAuthToken :: Lens' ProjectsLogServicesSinksGet' (Maybe OAuthToken)
plssgOAuthToken
  = lens _plssgOAuthToken
      (\ s a -> s{_plssgOAuthToken = a})

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

-- | Selector specifying which fields to include in a partial response.
plssgFields :: Lens' ProjectsLogServicesSinksGet' (Maybe Text)
plssgFields
  = lens _plssgFields (\ s a -> s{_plssgFields = a})

-- | JSONP
plssgCallback :: Lens' ProjectsLogServicesSinksGet' (Maybe Text)
plssgCallback
  = lens _plssgCallback
      (\ s a -> s{_plssgCallback = a})

instance GoogleAuth ProjectsLogServicesSinksGet'
         where
        authKey = plssgKey . _Just
        authToken = plssgOAuthToken . _Just

instance GoogleRequest ProjectsLogServicesSinksGet'
         where
        type Rs ProjectsLogServicesSinksGet' = LogSink
        request = requestWithRoute defReq loggingURL
        requestWithRoute r u ProjectsLogServicesSinksGet'{..}
          = go _plssgProjectsId _plssgLogServicesId
              _plssgSinksId
              _plssgXgafv
              _plssgUploadProtocol
              (Just _plssgPp)
              _plssgAccessToken
              _plssgUploadType
              _plssgBearerToken
              _plssgCallback
              _plssgQuotaUser
              (Just _plssgPrettyPrint)
              _plssgFields
              _plssgKey
              _plssgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsLogServicesSinksGetResource)
                      r
                      u
