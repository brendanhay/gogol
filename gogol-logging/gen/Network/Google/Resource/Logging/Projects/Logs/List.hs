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
-- Module      : Network.Google.Resource.Logging.Projects.Logs.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the logs in the project. Only logs that have entries are listed.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference> for @LoggingProjectsLogsList@.
module Network.Google.Resource.Logging.Projects.Logs.List
    (
    -- * REST Resource
      ProjectsLogsListResource

    -- * Creating a Request
    , projectsLogsList'
    , ProjectsLogsList'

    -- * Request Lenses
    , pllXgafv
    , pllQuotaUser
    , pllPrettyPrint
    , pllUploadProtocol
    , pllPp
    , pllAccessToken
    , pllUploadType
    , pllBearerToken
    , pllKey
    , pllServiceName
    , pllPageToken
    , pllOAuthToken
    , pllServiceIndexPrefix
    , pllProjectsId
    , pllPageSize
    , pllFields
    , pllCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @LoggingProjectsLogsList@ which the
-- 'ProjectsLogsList'' request conforms to.
type ProjectsLogsListResource =
     "v1beta3" :>
       "projects" :>
         Capture "projectsId" Text :>
           "logs" :>
             QueryParam "$.xgafv" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "pp" Bool :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "bearer_token" Text :>
                             QueryParam "key" Key :>
                               QueryParam "serviceName" Text :>
                                 QueryParam "pageToken" Text :>
                                   QueryParam "oauth_token" OAuthToken :>
                                     QueryParam "serviceIndexPrefix" Text :>
                                       QueryParam "pageSize" Int32 :>
                                         QueryParam "fields" Text :>
                                           QueryParam "callback" Text :>
                                             QueryParam "alt" AltJSON :>
                                               Get '[JSON] ListLogsResponse

-- | Lists the logs in the project. Only logs that have entries are listed.
--
-- /See:/ 'projectsLogsList'' smart constructor.
data ProjectsLogsList' = ProjectsLogsList'
    { _pllXgafv              :: !(Maybe Text)
    , _pllQuotaUser          :: !(Maybe Text)
    , _pllPrettyPrint        :: !Bool
    , _pllUploadProtocol     :: !(Maybe Text)
    , _pllPp                 :: !Bool
    , _pllAccessToken        :: !(Maybe Text)
    , _pllUploadType         :: !(Maybe Text)
    , _pllBearerToken        :: !(Maybe Text)
    , _pllKey                :: !(Maybe Key)
    , _pllServiceName        :: !(Maybe Text)
    , _pllPageToken          :: !(Maybe Text)
    , _pllOAuthToken         :: !(Maybe OAuthToken)
    , _pllServiceIndexPrefix :: !(Maybe Text)
    , _pllProjectsId         :: !Text
    , _pllPageSize           :: !(Maybe Int32)
    , _pllFields             :: !(Maybe Text)
    , _pllCallback           :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLogsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pllXgafv'
--
-- * 'pllQuotaUser'
--
-- * 'pllPrettyPrint'
--
-- * 'pllUploadProtocol'
--
-- * 'pllPp'
--
-- * 'pllAccessToken'
--
-- * 'pllUploadType'
--
-- * 'pllBearerToken'
--
-- * 'pllKey'
--
-- * 'pllServiceName'
--
-- * 'pllPageToken'
--
-- * 'pllOAuthToken'
--
-- * 'pllServiceIndexPrefix'
--
-- * 'pllProjectsId'
--
-- * 'pllPageSize'
--
-- * 'pllFields'
--
-- * 'pllCallback'
projectsLogsList'
    :: Text -- ^ 'projectsId'
    -> ProjectsLogsList'
projectsLogsList' pPllProjectsId_ =
    ProjectsLogsList'
    { _pllXgafv = Nothing
    , _pllQuotaUser = Nothing
    , _pllPrettyPrint = True
    , _pllUploadProtocol = Nothing
    , _pllPp = True
    , _pllAccessToken = Nothing
    , _pllUploadType = Nothing
    , _pllBearerToken = Nothing
    , _pllKey = Nothing
    , _pllServiceName = Nothing
    , _pllPageToken = Nothing
    , _pllOAuthToken = Nothing
    , _pllServiceIndexPrefix = Nothing
    , _pllProjectsId = pPllProjectsId_
    , _pllPageSize = Nothing
    , _pllFields = Nothing
    , _pllCallback = Nothing
    }

-- | V1 error format.
pllXgafv :: Lens' ProjectsLogsList' (Maybe Text)
pllXgafv = lens _pllXgafv (\ s a -> s{_pllXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
pllQuotaUser :: Lens' ProjectsLogsList' (Maybe Text)
pllQuotaUser
  = lens _pllQuotaUser (\ s a -> s{_pllQuotaUser = a})

-- | Returns response with indentations and line breaks.
pllPrettyPrint :: Lens' ProjectsLogsList' Bool
pllPrettyPrint
  = lens _pllPrettyPrint
      (\ s a -> s{_pllPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pllUploadProtocol :: Lens' ProjectsLogsList' (Maybe Text)
pllUploadProtocol
  = lens _pllUploadProtocol
      (\ s a -> s{_pllUploadProtocol = a})

-- | Pretty-print response.
pllPp :: Lens' ProjectsLogsList' Bool
pllPp = lens _pllPp (\ s a -> s{_pllPp = a})

-- | OAuth access token.
pllAccessToken :: Lens' ProjectsLogsList' (Maybe Text)
pllAccessToken
  = lens _pllAccessToken
      (\ s a -> s{_pllAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pllUploadType :: Lens' ProjectsLogsList' (Maybe Text)
pllUploadType
  = lens _pllUploadType
      (\ s a -> s{_pllUploadType = a})

-- | OAuth bearer token.
pllBearerToken :: Lens' ProjectsLogsList' (Maybe Text)
pllBearerToken
  = lens _pllBearerToken
      (\ s a -> s{_pllBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pllKey :: Lens' ProjectsLogsList' (Maybe Key)
pllKey = lens _pllKey (\ s a -> s{_pllKey = a})

-- | If not empty, this field must be a log service name such as
-- \`\"compute.googleapis.com\"\`. Only logs associated with that that log
-- service are listed.
pllServiceName :: Lens' ProjectsLogsList' (Maybe Text)
pllServiceName
  = lens _pllServiceName
      (\ s a -> s{_pllServiceName = a})

-- | An opaque token, returned as \`nextPageToken\` by a prior \`ListLogs\`
-- operation. If \`pageToken\` is supplied, then the other fields of this
-- request are ignored, and instead the previous \`ListLogs\` operation is
-- continued.
pllPageToken :: Lens' ProjectsLogsList' (Maybe Text)
pllPageToken
  = lens _pllPageToken (\ s a -> s{_pllPageToken = a})

-- | OAuth 2.0 token for the current user.
pllOAuthToken :: Lens' ProjectsLogsList' (Maybe OAuthToken)
pllOAuthToken
  = lens _pllOAuthToken
      (\ s a -> s{_pllOAuthToken = a})

-- | The purpose of this field is to restrict the listed logs to those with
-- entries of a certain kind. If \`serviceName\` is the name of a log
-- service, then this field may contain values for the log service\'s
-- indexes. Only logs that have entries whose indexes include the values
-- are listed. The format for this field is \`\"\/val1\/val2...\/valN\"\`,
-- where \`val1\` is a value for the first index, \`val2\` for the second
-- index, etc. An empty value (a single slash) for an index matches all
-- values, and you can omit values for later indexes entirely.
pllServiceIndexPrefix :: Lens' ProjectsLogsList' (Maybe Text)
pllServiceIndexPrefix
  = lens _pllServiceIndexPrefix
      (\ s a -> s{_pllServiceIndexPrefix = a})

-- | Part of \`projectName\`. The resource name of the project whose logs are
-- requested. If both \`serviceName\` and \`serviceIndexPrefix\` are empty,
-- then all logs with entries in this project are listed.
pllProjectsId :: Lens' ProjectsLogsList' Text
pllProjectsId
  = lens _pllProjectsId
      (\ s a -> s{_pllProjectsId = a})

-- | The maximum number of results to return.
pllPageSize :: Lens' ProjectsLogsList' (Maybe Int32)
pllPageSize
  = lens _pllPageSize (\ s a -> s{_pllPageSize = a})

-- | Selector specifying which fields to include in a partial response.
pllFields :: Lens' ProjectsLogsList' (Maybe Text)
pllFields
  = lens _pllFields (\ s a -> s{_pllFields = a})

-- | JSONP
pllCallback :: Lens' ProjectsLogsList' (Maybe Text)
pllCallback
  = lens _pllCallback (\ s a -> s{_pllCallback = a})

instance GoogleAuth ProjectsLogsList' where
        authKey = pllKey . _Just
        authToken = pllOAuthToken . _Just

instance GoogleRequest ProjectsLogsList' where
        type Rs ProjectsLogsList' = ListLogsResponse
        request = requestWithRoute defReq loggingURL
        requestWithRoute r u ProjectsLogsList'{..}
          = go _pllXgafv _pllQuotaUser (Just _pllPrettyPrint)
              _pllUploadProtocol
              (Just _pllPp)
              _pllAccessToken
              _pllUploadType
              _pllBearerToken
              _pllKey
              _pllServiceName
              _pllPageToken
              _pllOAuthToken
              _pllServiceIndexPrefix
              _pllProjectsId
              _pllPageSize
              _pllFields
              _pllCallback
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsLogsListResource)
                      r
                      u
