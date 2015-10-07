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
-- Module      : Network.Google.Resource.Logging.Projects.LogServices.Sinks.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists log service sinks associated with a log service.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference> for @LoggingProjectsLogServicesSinksList@.
module Network.Google.Resource.Logging.Projects.LogServices.Sinks.List
    (
    -- * REST Resource
      ProjectsLogServicesSinksListResource

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
    , plsslOAuthToken
    , plsslProjectsId
    , plsslFields
    , plsslCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @LoggingProjectsLogServicesSinksList@ method which the
-- 'ProjectsLogServicesSinksList'' request conforms to.
type ProjectsLogServicesSinksListResource =
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
                                     QueryParam "key" AuthKey :>
                                       QueryParam "oauth_token" OAuthToken :>
                                         QueryParam "alt" AltJSON :>
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
    , _plsslKey            :: !(Maybe AuthKey)
    , _plsslLogServicesId  :: !Text
    , _plsslOAuthToken     :: !(Maybe OAuthToken)
    , _plsslProjectsId     :: !Text
    , _plsslFields         :: !(Maybe Text)
    , _plsslCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'plsslOAuthToken'
--
-- * 'plsslProjectsId'
--
-- * 'plsslFields'
--
-- * 'plsslCallback'
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
    , _plsslOAuthToken = Nothing
    , _plsslProjectsId = pPlsslProjectsId_
    , _plsslFields = Nothing
    , _plsslCallback = Nothing
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
plsslKey :: Lens' ProjectsLogServicesSinksList' (Maybe AuthKey)
plsslKey = lens _plsslKey (\ s a -> s{_plsslKey = a})

-- | Part of \`serviceName\`. See documentation of \`projectsId\`.
plsslLogServicesId :: Lens' ProjectsLogServicesSinksList' Text
plsslLogServicesId
  = lens _plsslLogServicesId
      (\ s a -> s{_plsslLogServicesId = a})

-- | OAuth 2.0 token for the current user.
plsslOAuthToken :: Lens' ProjectsLogServicesSinksList' (Maybe OAuthToken)
plsslOAuthToken
  = lens _plsslOAuthToken
      (\ s a -> s{_plsslOAuthToken = a})

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

instance GoogleAuth ProjectsLogServicesSinksList'
         where
        _AuthKey = plsslKey . _Just
        _AuthToken = plsslOAuthToken . _Just

instance GoogleRequest ProjectsLogServicesSinksList'
         where
        type Rs ProjectsLogServicesSinksList' =
             ListLogServiceSinksResponse
        request = requestWith loggingRequest
        requestWith rq ProjectsLogServicesSinksList'{..}
          = go _plsslProjectsId _plsslLogServicesId _plsslXgafv
              _plsslUploadProtocol
              (Just _plsslPp)
              _plsslAccessToken
              _plsslUploadType
              _plsslBearerToken
              _plsslCallback
              _plsslQuotaUser
              (Just _plsslPrettyPrint)
              _plsslFields
              _plsslKey
              _plsslOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ProjectsLogServicesSinksListResource)
                      rq
