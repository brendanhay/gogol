{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module Logging.Projects.LogServices.Sinks.Get
    (
    -- * REST Resource
      ProjectsLogServicesSinksGetAPI

    -- * Creating a Request
    , projectsLogServicesSinksGet
    , ProjectsLogServicesSinksGet

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
    , plssgOauthToken
    , plssgProjectsId
    , plssgSinksId
    , plssgFields
    , plssgCallback
    , plssgAlt
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @LoggingProjectsLogServicesSinksGet@ which the
-- 'ProjectsLogServicesSinksGet' request conforms to.
type ProjectsLogServicesSinksGetAPI =
     "v1beta3" :>
       "projects" :>
         Capture "projectsId" Text :>
           "logServices" :>
             Capture "logServicesId" Text :>
               "sinks" :>
                 Capture "sinksId" Text :> Get '[JSON] LogSink

-- | Gets a log service sink.
--
-- /See:/ 'projectsLogServicesSinksGet' smart constructor.
data ProjectsLogServicesSinksGet = ProjectsLogServicesSinksGet
    { _plssgXgafv          :: !(Maybe Text)
    , _plssgQuotaUser      :: !(Maybe Text)
    , _plssgPrettyPrint    :: !Bool
    , _plssgUploadProtocol :: !(Maybe Text)
    , _plssgPp             :: !Bool
    , _plssgAccessToken    :: !(Maybe Text)
    , _plssgUploadType     :: !(Maybe Text)
    , _plssgBearerToken    :: !(Maybe Text)
    , _plssgKey            :: !(Maybe Text)
    , _plssgLogServicesId  :: !Text
    , _plssgOauthToken     :: !(Maybe Text)
    , _plssgProjectsId     :: !Text
    , _plssgSinksId        :: !Text
    , _plssgFields         :: !(Maybe Text)
    , _plssgCallback       :: !(Maybe Text)
    , _plssgAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'plssgOauthToken'
--
-- * 'plssgProjectsId'
--
-- * 'plssgSinksId'
--
-- * 'plssgFields'
--
-- * 'plssgCallback'
--
-- * 'plssgAlt'
projectsLogServicesSinksGet
    :: Text -- ^ 'logServicesId'
    -> Text -- ^ 'projectsId'
    -> Text -- ^ 'sinksId'
    -> ProjectsLogServicesSinksGet
projectsLogServicesSinksGet pPlssgLogServicesId_ pPlssgProjectsId_ pPlssgSinksId_ =
    ProjectsLogServicesSinksGet
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
    , _plssgOauthToken = Nothing
    , _plssgProjectsId = pPlssgProjectsId_
    , _plssgSinksId = pPlssgSinksId_
    , _plssgFields = Nothing
    , _plssgCallback = Nothing
    , _plssgAlt = "json"
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
plssgKey :: Lens' ProjectsLogServicesSinksGet' (Maybe Text)
plssgKey = lens _plssgKey (\ s a -> s{_plssgKey = a})

-- | Part of \`sinkName\`. See documentation of \`projectsId\`.
plssgLogServicesId :: Lens' ProjectsLogServicesSinksGet' Text
plssgLogServicesId
  = lens _plssgLogServicesId
      (\ s a -> s{_plssgLogServicesId = a})

-- | OAuth 2.0 token for the current user.
plssgOauthToken :: Lens' ProjectsLogServicesSinksGet' (Maybe Text)
plssgOauthToken
  = lens _plssgOauthToken
      (\ s a -> s{_plssgOauthToken = a})

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

-- | Data format for response.
plssgAlt :: Lens' ProjectsLogServicesSinksGet' Text
plssgAlt = lens _plssgAlt (\ s a -> s{_plssgAlt = a})

instance GoogleRequest ProjectsLogServicesSinksGet'
         where
        type Rs ProjectsLogServicesSinksGet' = LogSink
        request = requestWithRoute defReq loggingURL
        requestWithRoute r u ProjectsLogServicesSinksGet{..}
          = go _plssgXgafv _plssgQuotaUser _plssgPrettyPrint
              _plssgUploadProtocol
              _plssgPp
              _plssgAccessToken
              _plssgUploadType
              _plssgBearerToken
              _plssgKey
              _plssgLogServicesId
              _plssgOauthToken
              _plssgProjectsId
              _plssgSinksId
              _plssgFields
              _plssgCallback
              _plssgAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsLogServicesSinksGetAPI)
                      r
                      u
