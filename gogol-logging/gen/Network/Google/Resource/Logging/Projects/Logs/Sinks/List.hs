{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Logging.Projects.Logs.Sinks.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists log sinks associated with a log.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference> for @LoggingProjectsLogsSinksList@.
module Logging.Projects.Logs.Sinks.List
    (
    -- * REST Resource
      ProjectsLogsSinksListAPI

    -- * Creating a Request
    , projectsLogsSinksList
    , ProjectsLogsSinksList

    -- * Request Lenses
    , pXgafv
    , pQuotaUser
    , pPrettyPrint
    , pUploadProtocol
    , pLogsId
    , pPp
    , pAccessToken
    , pUploadType
    , pBearerToken
    , pKey
    , pOauthToken
    , pProjectsId
    , pFields
    , pCallback
    , pAlt
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @LoggingProjectsLogsSinksList@ which the
-- 'ProjectsLogsSinksList' request conforms to.
type ProjectsLogsSinksListAPI =
     "v1beta3" :>
       "projects" :>
         Capture "projectsId" Text :>
           "logs" :>
             Capture "logsId" Text :>
               "sinks" :> Get '[JSON] ListLogSinksResponse

-- | Lists log sinks associated with a log.
--
-- /See:/ 'projectsLogsSinksList' smart constructor.
data ProjectsLogsSinksList = ProjectsLogsSinksList
    { _pXgafv          :: !(Maybe Text)
    , _pQuotaUser      :: !(Maybe Text)
    , _pPrettyPrint    :: !Bool
    , _pUploadProtocol :: !(Maybe Text)
    , _pLogsId         :: !Text
    , _pPp             :: !Bool
    , _pAccessToken    :: !(Maybe Text)
    , _pUploadType     :: !(Maybe Text)
    , _pBearerToken    :: !(Maybe Text)
    , _pKey            :: !(Maybe Text)
    , _pOauthToken     :: !(Maybe Text)
    , _pProjectsId     :: !Text
    , _pFields         :: !(Maybe Text)
    , _pCallback       :: !(Maybe Text)
    , _pAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLogsSinksList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pXgafv'
--
-- * 'pQuotaUser'
--
-- * 'pPrettyPrint'
--
-- * 'pUploadProtocol'
--
-- * 'pLogsId'
--
-- * 'pPp'
--
-- * 'pAccessToken'
--
-- * 'pUploadType'
--
-- * 'pBearerToken'
--
-- * 'pKey'
--
-- * 'pOauthToken'
--
-- * 'pProjectsId'
--
-- * 'pFields'
--
-- * 'pCallback'
--
-- * 'pAlt'
projectsLogsSinksList
    :: Text -- ^ 'logsId'
    -> Text -- ^ 'projectsId'
    -> ProjectsLogsSinksList
projectsLogsSinksList pPLogsId_ pPProjectsId_ =
    ProjectsLogsSinksList
    { _pXgafv = Nothing
    , _pQuotaUser = Nothing
    , _pPrettyPrint = True
    , _pUploadProtocol = Nothing
    , _pLogsId = pPLogsId_
    , _pPp = True
    , _pAccessToken = Nothing
    , _pUploadType = Nothing
    , _pBearerToken = Nothing
    , _pKey = Nothing
    , _pOauthToken = Nothing
    , _pProjectsId = pPProjectsId_
    , _pFields = Nothing
    , _pCallback = Nothing
    , _pAlt = "json"
    }

-- | V1 error format.
pXgafv :: Lens' ProjectsLogsSinksList' (Maybe Text)
pXgafv = lens _pXgafv (\ s a -> s{_pXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
pQuotaUser :: Lens' ProjectsLogsSinksList' (Maybe Text)
pQuotaUser
  = lens _pQuotaUser (\ s a -> s{_pQuotaUser = a})

-- | Returns response with indentations and line breaks.
pPrettyPrint :: Lens' ProjectsLogsSinksList' Bool
pPrettyPrint
  = lens _pPrettyPrint (\ s a -> s{_pPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pUploadProtocol :: Lens' ProjectsLogsSinksList' (Maybe Text)
pUploadProtocol
  = lens _pUploadProtocol
      (\ s a -> s{_pUploadProtocol = a})

-- | Part of \`logName\`. See documentation of \`projectsId\`.
pLogsId :: Lens' ProjectsLogsSinksList' Text
pLogsId = lens _pLogsId (\ s a -> s{_pLogsId = a})

-- | Pretty-print response.
pPp :: Lens' ProjectsLogsSinksList' Bool
pPp = lens _pPp (\ s a -> s{_pPp = a})

-- | OAuth access token.
pAccessToken :: Lens' ProjectsLogsSinksList' (Maybe Text)
pAccessToken
  = lens _pAccessToken (\ s a -> s{_pAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pUploadType :: Lens' ProjectsLogsSinksList' (Maybe Text)
pUploadType
  = lens _pUploadType (\ s a -> s{_pUploadType = a})

-- | OAuth bearer token.
pBearerToken :: Lens' ProjectsLogsSinksList' (Maybe Text)
pBearerToken
  = lens _pBearerToken (\ s a -> s{_pBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pKey :: Lens' ProjectsLogsSinksList' (Maybe Text)
pKey = lens _pKey (\ s a -> s{_pKey = a})

-- | OAuth 2.0 token for the current user.
pOauthToken :: Lens' ProjectsLogsSinksList' (Maybe Text)
pOauthToken
  = lens _pOauthToken (\ s a -> s{_pOauthToken = a})

-- | Part of \`logName\`. The log whose sinks are wanted. For example,
-- \`\"compute.google.com\/syslog\"\`.
pProjectsId :: Lens' ProjectsLogsSinksList' Text
pProjectsId
  = lens _pProjectsId (\ s a -> s{_pProjectsId = a})

-- | Selector specifying which fields to include in a partial response.
pFields :: Lens' ProjectsLogsSinksList' (Maybe Text)
pFields = lens _pFields (\ s a -> s{_pFields = a})

-- | JSONP
pCallback :: Lens' ProjectsLogsSinksList' (Maybe Text)
pCallback
  = lens _pCallback (\ s a -> s{_pCallback = a})

-- | Data format for response.
pAlt :: Lens' ProjectsLogsSinksList' Text
pAlt = lens _pAlt (\ s a -> s{_pAlt = a})

instance GoogleRequest ProjectsLogsSinksList' where
        type Rs ProjectsLogsSinksList' = ListLogSinksResponse
        request = requestWithRoute defReq loggingURL
        requestWithRoute r u ProjectsLogsSinksList{..}
          = go _pXgafv _pQuotaUser _pPrettyPrint
              _pUploadProtocol
              _pLogsId
              _pPp
              _pAccessToken
              _pUploadType
              _pBearerToken
              _pKey
              _pOauthToken
              _pProjectsId
              _pFields
              _pCallback
              _pAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsLogsSinksListAPI)
                      r
                      u
