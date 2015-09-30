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
-- Module      : Network.Google.Resource.Logging.Projects.Sinks.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a project sink. A logs filter determines which log entries are
-- written to the destination.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference> for @LoggingProjectsSinksCreate@.
module Network.Google.Resource.Logging.Projects.Sinks.Create
    (
    -- * REST Resource
      ProjectsSinksCreateResource

    -- * Creating a Request
    , projectsSinksCreate'
    , ProjectsSinksCreate'

    -- * Request Lenses
    , pscXgafv
    , pscQuotaUser
    , pscPrettyPrint
    , pscUploadProtocol
    , pscPp
    , pscAccessToken
    , pscUploadType
    , pscBearerToken
    , pscKey
    , pscOauthToken
    , pscProjectsId
    , pscFields
    , pscCallback
    , pscAlt
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @LoggingProjectsSinksCreate@ which the
-- 'ProjectsSinksCreate'' request conforms to.
type ProjectsSinksCreateResource =
     "v1beta3" :>
       "projects" :>
         Capture "projectsId" Text :>
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
                                       Post '[JSON] LogSink

-- | Creates a project sink. A logs filter determines which log entries are
-- written to the destination.
--
-- /See:/ 'projectsSinksCreate'' smart constructor.
data ProjectsSinksCreate' = ProjectsSinksCreate'
    { _pscXgafv          :: !(Maybe Text)
    , _pscQuotaUser      :: !(Maybe Text)
    , _pscPrettyPrint    :: !Bool
    , _pscUploadProtocol :: !(Maybe Text)
    , _pscPp             :: !Bool
    , _pscAccessToken    :: !(Maybe Text)
    , _pscUploadType     :: !(Maybe Text)
    , _pscBearerToken    :: !(Maybe Text)
    , _pscKey            :: !(Maybe Text)
    , _pscOauthToken     :: !(Maybe Text)
    , _pscProjectsId     :: !Text
    , _pscFields         :: !(Maybe Text)
    , _pscCallback       :: !(Maybe Text)
    , _pscAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSinksCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pscXgafv'
--
-- * 'pscQuotaUser'
--
-- * 'pscPrettyPrint'
--
-- * 'pscUploadProtocol'
--
-- * 'pscPp'
--
-- * 'pscAccessToken'
--
-- * 'pscUploadType'
--
-- * 'pscBearerToken'
--
-- * 'pscKey'
--
-- * 'pscOauthToken'
--
-- * 'pscProjectsId'
--
-- * 'pscFields'
--
-- * 'pscCallback'
--
-- * 'pscAlt'
projectsSinksCreate'
    :: Text -- ^ 'projectsId'
    -> ProjectsSinksCreate'
projectsSinksCreate' pPscProjectsId_ =
    ProjectsSinksCreate'
    { _pscXgafv = Nothing
    , _pscQuotaUser = Nothing
    , _pscPrettyPrint = True
    , _pscUploadProtocol = Nothing
    , _pscPp = True
    , _pscAccessToken = Nothing
    , _pscUploadType = Nothing
    , _pscBearerToken = Nothing
    , _pscKey = Nothing
    , _pscOauthToken = Nothing
    , _pscProjectsId = pPscProjectsId_
    , _pscFields = Nothing
    , _pscCallback = Nothing
    , _pscAlt = "json"
    }

-- | V1 error format.
pscXgafv :: Lens' ProjectsSinksCreate' (Maybe Text)
pscXgafv = lens _pscXgafv (\ s a -> s{_pscXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
pscQuotaUser :: Lens' ProjectsSinksCreate' (Maybe Text)
pscQuotaUser
  = lens _pscQuotaUser (\ s a -> s{_pscQuotaUser = a})

-- | Returns response with indentations and line breaks.
pscPrettyPrint :: Lens' ProjectsSinksCreate' Bool
pscPrettyPrint
  = lens _pscPrettyPrint
      (\ s a -> s{_pscPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pscUploadProtocol :: Lens' ProjectsSinksCreate' (Maybe Text)
pscUploadProtocol
  = lens _pscUploadProtocol
      (\ s a -> s{_pscUploadProtocol = a})

-- | Pretty-print response.
pscPp :: Lens' ProjectsSinksCreate' Bool
pscPp = lens _pscPp (\ s a -> s{_pscPp = a})

-- | OAuth access token.
pscAccessToken :: Lens' ProjectsSinksCreate' (Maybe Text)
pscAccessToken
  = lens _pscAccessToken
      (\ s a -> s{_pscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pscUploadType :: Lens' ProjectsSinksCreate' (Maybe Text)
pscUploadType
  = lens _pscUploadType
      (\ s a -> s{_pscUploadType = a})

-- | OAuth bearer token.
pscBearerToken :: Lens' ProjectsSinksCreate' (Maybe Text)
pscBearerToken
  = lens _pscBearerToken
      (\ s a -> s{_pscBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pscKey :: Lens' ProjectsSinksCreate' (Maybe Text)
pscKey = lens _pscKey (\ s a -> s{_pscKey = a})

-- | OAuth 2.0 token for the current user.
pscOauthToken :: Lens' ProjectsSinksCreate' (Maybe Text)
pscOauthToken
  = lens _pscOauthToken
      (\ s a -> s{_pscOauthToken = a})

-- | Part of \`projectName\`. The resource name of the project to which the
-- sink is bound.
pscProjectsId :: Lens' ProjectsSinksCreate' Text
pscProjectsId
  = lens _pscProjectsId
      (\ s a -> s{_pscProjectsId = a})

-- | Selector specifying which fields to include in a partial response.
pscFields :: Lens' ProjectsSinksCreate' (Maybe Text)
pscFields
  = lens _pscFields (\ s a -> s{_pscFields = a})

-- | JSONP
pscCallback :: Lens' ProjectsSinksCreate' (Maybe Text)
pscCallback
  = lens _pscCallback (\ s a -> s{_pscCallback = a})

-- | Data format for response.
pscAlt :: Lens' ProjectsSinksCreate' Text
pscAlt = lens _pscAlt (\ s a -> s{_pscAlt = a})

instance GoogleRequest ProjectsSinksCreate' where
        type Rs ProjectsSinksCreate' = LogSink
        request = requestWithRoute defReq loggingURL
        requestWithRoute r u ProjectsSinksCreate'{..}
          = go _pscXgafv _pscQuotaUser (Just _pscPrettyPrint)
              _pscUploadProtocol
              (Just _pscPp)
              _pscAccessToken
              _pscUploadType
              _pscBearerToken
              _pscKey
              _pscOauthToken
              _pscProjectsId
              _pscFields
              _pscCallback
              (Just _pscAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsSinksCreateResource)
                      r
                      u
