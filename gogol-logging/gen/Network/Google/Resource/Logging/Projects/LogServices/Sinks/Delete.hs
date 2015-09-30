{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Logging.Projects.LogServices.Sinks.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a log service sink. After deletion, no new log entries are
-- written to the destination.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference> for @LoggingProjectsLogServicesSinksDelete@.
module Logging.Projects.LogServices.Sinks.Delete
    (
    -- * REST Resource
      ProjectsLogServicesSinksDeleteAPI

    -- * Creating a Request
    , projectsLogServicesSinksDelete
    , ProjectsLogServicesSinksDelete

    -- * Request Lenses
    , plssdXgafv
    , plssdQuotaUser
    , plssdPrettyPrint
    , plssdUploadProtocol
    , plssdPp
    , plssdAccessToken
    , plssdUploadType
    , plssdBearerToken
    , plssdKey
    , plssdLogServicesId
    , plssdOauthToken
    , plssdProjectsId
    , plssdSinksId
    , plssdFields
    , plssdCallback
    , plssdAlt
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @LoggingProjectsLogServicesSinksDelete@ which the
-- 'ProjectsLogServicesSinksDelete' request conforms to.
type ProjectsLogServicesSinksDeleteAPI =
     "v1beta3" :>
       "projects" :>
         Capture "projectsId" Text :>
           "logServices" :>
             Capture "logServicesId" Text :>
               "sinks" :>
                 Capture "sinksId" Text :> Delete '[JSON] Empty

-- | Deletes a log service sink. After deletion, no new log entries are
-- written to the destination.
--
-- /See:/ 'projectsLogServicesSinksDelete' smart constructor.
data ProjectsLogServicesSinksDelete = ProjectsLogServicesSinksDelete
    { _plssdXgafv          :: !(Maybe Text)
    , _plssdQuotaUser      :: !(Maybe Text)
    , _plssdPrettyPrint    :: !Bool
    , _plssdUploadProtocol :: !(Maybe Text)
    , _plssdPp             :: !Bool
    , _plssdAccessToken    :: !(Maybe Text)
    , _plssdUploadType     :: !(Maybe Text)
    , _plssdBearerToken    :: !(Maybe Text)
    , _plssdKey            :: !(Maybe Text)
    , _plssdLogServicesId  :: !Text
    , _plssdOauthToken     :: !(Maybe Text)
    , _plssdProjectsId     :: !Text
    , _plssdSinksId        :: !Text
    , _plssdFields         :: !(Maybe Text)
    , _plssdCallback       :: !(Maybe Text)
    , _plssdAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLogServicesSinksDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plssdXgafv'
--
-- * 'plssdQuotaUser'
--
-- * 'plssdPrettyPrint'
--
-- * 'plssdUploadProtocol'
--
-- * 'plssdPp'
--
-- * 'plssdAccessToken'
--
-- * 'plssdUploadType'
--
-- * 'plssdBearerToken'
--
-- * 'plssdKey'
--
-- * 'plssdLogServicesId'
--
-- * 'plssdOauthToken'
--
-- * 'plssdProjectsId'
--
-- * 'plssdSinksId'
--
-- * 'plssdFields'
--
-- * 'plssdCallback'
--
-- * 'plssdAlt'
projectsLogServicesSinksDelete
    :: Text -- ^ 'logServicesId'
    -> Text -- ^ 'projectsId'
    -> Text -- ^ 'sinksId'
    -> ProjectsLogServicesSinksDelete
projectsLogServicesSinksDelete pPlssdLogServicesId_ pPlssdProjectsId_ pPlssdSinksId_ =
    ProjectsLogServicesSinksDelete
    { _plssdXgafv = Nothing
    , _plssdQuotaUser = Nothing
    , _plssdPrettyPrint = True
    , _plssdUploadProtocol = Nothing
    , _plssdPp = True
    , _plssdAccessToken = Nothing
    , _plssdUploadType = Nothing
    , _plssdBearerToken = Nothing
    , _plssdKey = Nothing
    , _plssdLogServicesId = pPlssdLogServicesId_
    , _plssdOauthToken = Nothing
    , _plssdProjectsId = pPlssdProjectsId_
    , _plssdSinksId = pPlssdSinksId_
    , _plssdFields = Nothing
    , _plssdCallback = Nothing
    , _plssdAlt = "json"
    }

-- | V1 error format.
plssdXgafv :: Lens' ProjectsLogServicesSinksDelete' (Maybe Text)
plssdXgafv
  = lens _plssdXgafv (\ s a -> s{_plssdXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
plssdQuotaUser :: Lens' ProjectsLogServicesSinksDelete' (Maybe Text)
plssdQuotaUser
  = lens _plssdQuotaUser
      (\ s a -> s{_plssdQuotaUser = a})

-- | Returns response with indentations and line breaks.
plssdPrettyPrint :: Lens' ProjectsLogServicesSinksDelete' Bool
plssdPrettyPrint
  = lens _plssdPrettyPrint
      (\ s a -> s{_plssdPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plssdUploadProtocol :: Lens' ProjectsLogServicesSinksDelete' (Maybe Text)
plssdUploadProtocol
  = lens _plssdUploadProtocol
      (\ s a -> s{_plssdUploadProtocol = a})

-- | Pretty-print response.
plssdPp :: Lens' ProjectsLogServicesSinksDelete' Bool
plssdPp = lens _plssdPp (\ s a -> s{_plssdPp = a})

-- | OAuth access token.
plssdAccessToken :: Lens' ProjectsLogServicesSinksDelete' (Maybe Text)
plssdAccessToken
  = lens _plssdAccessToken
      (\ s a -> s{_plssdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plssdUploadType :: Lens' ProjectsLogServicesSinksDelete' (Maybe Text)
plssdUploadType
  = lens _plssdUploadType
      (\ s a -> s{_plssdUploadType = a})

-- | OAuth bearer token.
plssdBearerToken :: Lens' ProjectsLogServicesSinksDelete' (Maybe Text)
plssdBearerToken
  = lens _plssdBearerToken
      (\ s a -> s{_plssdBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
plssdKey :: Lens' ProjectsLogServicesSinksDelete' (Maybe Text)
plssdKey = lens _plssdKey (\ s a -> s{_plssdKey = a})

-- | Part of \`sinkName\`. See documentation of \`projectsId\`.
plssdLogServicesId :: Lens' ProjectsLogServicesSinksDelete' Text
plssdLogServicesId
  = lens _plssdLogServicesId
      (\ s a -> s{_plssdLogServicesId = a})

-- | OAuth 2.0 token for the current user.
plssdOauthToken :: Lens' ProjectsLogServicesSinksDelete' (Maybe Text)
plssdOauthToken
  = lens _plssdOauthToken
      (\ s a -> s{_plssdOauthToken = a})

-- | Part of \`sinkName\`. The resource name of the log service sink to
-- delete.
plssdProjectsId :: Lens' ProjectsLogServicesSinksDelete' Text
plssdProjectsId
  = lens _plssdProjectsId
      (\ s a -> s{_plssdProjectsId = a})

-- | Part of \`sinkName\`. See documentation of \`projectsId\`.
plssdSinksId :: Lens' ProjectsLogServicesSinksDelete' Text
plssdSinksId
  = lens _plssdSinksId (\ s a -> s{_plssdSinksId = a})

-- | Selector specifying which fields to include in a partial response.
plssdFields :: Lens' ProjectsLogServicesSinksDelete' (Maybe Text)
plssdFields
  = lens _plssdFields (\ s a -> s{_plssdFields = a})

-- | JSONP
plssdCallback :: Lens' ProjectsLogServicesSinksDelete' (Maybe Text)
plssdCallback
  = lens _plssdCallback
      (\ s a -> s{_plssdCallback = a})

-- | Data format for response.
plssdAlt :: Lens' ProjectsLogServicesSinksDelete' Text
plssdAlt = lens _plssdAlt (\ s a -> s{_plssdAlt = a})

instance GoogleRequest
         ProjectsLogServicesSinksDelete' where
        type Rs ProjectsLogServicesSinksDelete' = Empty
        request = requestWithRoute defReq loggingURL
        requestWithRoute r u
          ProjectsLogServicesSinksDelete{..}
          = go _plssdXgafv _plssdQuotaUser _plssdPrettyPrint
              _plssdUploadProtocol
              _plssdPp
              _plssdAccessToken
              _plssdUploadType
              _plssdBearerToken
              _plssdKey
              _plssdLogServicesId
              _plssdOauthToken
              _plssdProjectsId
              _plssdSinksId
              _plssdFields
              _plssdCallback
              _plssdAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsLogServicesSinksDeleteAPI)
                      r
                      u
