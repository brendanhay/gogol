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
-- Module      : Network.Google.Resource.Logging.Projects.Sinks.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a project sink.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference> for @LoggingProjectsSinksGet@.
module Network.Google.Resource.Logging.Projects.Sinks.Get
    (
    -- * REST Resource
      ProjectsSinksGetResource

    -- * Creating a Request
    , projectsSinksGet'
    , ProjectsSinksGet'

    -- * Request Lenses
    , psgXgafv
    , psgQuotaUser
    , psgPrettyPrint
    , psgUploadProtocol
    , psgPp
    , psgAccessToken
    , psgUploadType
    , psgBearerToken
    , psgKey
    , psgOauthToken
    , psgProjectsId
    , psgSinksId
    , psgFields
    , psgCallback
    , psgAlt
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @LoggingProjectsSinksGet@ which the
-- 'ProjectsSinksGet'' request conforms to.
type ProjectsSinksGetResource =
     "v1beta3" :>
       "projects" :>
         Capture "projectsId" Text :>
           "sinks" :>
             Capture "sinksId" Text :>
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
                                         Get '[JSON] LogSink

-- | Gets a project sink.
--
-- /See:/ 'projectsSinksGet'' smart constructor.
data ProjectsSinksGet' = ProjectsSinksGet'
    { _psgXgafv          :: !(Maybe Text)
    , _psgQuotaUser      :: !(Maybe Text)
    , _psgPrettyPrint    :: !Bool
    , _psgUploadProtocol :: !(Maybe Text)
    , _psgPp             :: !Bool
    , _psgAccessToken    :: !(Maybe Text)
    , _psgUploadType     :: !(Maybe Text)
    , _psgBearerToken    :: !(Maybe Text)
    , _psgKey            :: !(Maybe Text)
    , _psgOauthToken     :: !(Maybe Text)
    , _psgProjectsId     :: !Text
    , _psgSinksId        :: !Text
    , _psgFields         :: !(Maybe Text)
    , _psgCallback       :: !(Maybe Text)
    , _psgAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSinksGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psgXgafv'
--
-- * 'psgQuotaUser'
--
-- * 'psgPrettyPrint'
--
-- * 'psgUploadProtocol'
--
-- * 'psgPp'
--
-- * 'psgAccessToken'
--
-- * 'psgUploadType'
--
-- * 'psgBearerToken'
--
-- * 'psgKey'
--
-- * 'psgOauthToken'
--
-- * 'psgProjectsId'
--
-- * 'psgSinksId'
--
-- * 'psgFields'
--
-- * 'psgCallback'
--
-- * 'psgAlt'
projectsSinksGet'
    :: Text -- ^ 'projectsId'
    -> Text -- ^ 'sinksId'
    -> ProjectsSinksGet'
projectsSinksGet' pPsgProjectsId_ pPsgSinksId_ =
    ProjectsSinksGet'
    { _psgXgafv = Nothing
    , _psgQuotaUser = Nothing
    , _psgPrettyPrint = True
    , _psgUploadProtocol = Nothing
    , _psgPp = True
    , _psgAccessToken = Nothing
    , _psgUploadType = Nothing
    , _psgBearerToken = Nothing
    , _psgKey = Nothing
    , _psgOauthToken = Nothing
    , _psgProjectsId = pPsgProjectsId_
    , _psgSinksId = pPsgSinksId_
    , _psgFields = Nothing
    , _psgCallback = Nothing
    , _psgAlt = "json"
    }

-- | V1 error format.
psgXgafv :: Lens' ProjectsSinksGet' (Maybe Text)
psgXgafv = lens _psgXgafv (\ s a -> s{_psgXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
psgQuotaUser :: Lens' ProjectsSinksGet' (Maybe Text)
psgQuotaUser
  = lens _psgQuotaUser (\ s a -> s{_psgQuotaUser = a})

-- | Returns response with indentations and line breaks.
psgPrettyPrint :: Lens' ProjectsSinksGet' Bool
psgPrettyPrint
  = lens _psgPrettyPrint
      (\ s a -> s{_psgPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psgUploadProtocol :: Lens' ProjectsSinksGet' (Maybe Text)
psgUploadProtocol
  = lens _psgUploadProtocol
      (\ s a -> s{_psgUploadProtocol = a})

-- | Pretty-print response.
psgPp :: Lens' ProjectsSinksGet' Bool
psgPp = lens _psgPp (\ s a -> s{_psgPp = a})

-- | OAuth access token.
psgAccessToken :: Lens' ProjectsSinksGet' (Maybe Text)
psgAccessToken
  = lens _psgAccessToken
      (\ s a -> s{_psgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psgUploadType :: Lens' ProjectsSinksGet' (Maybe Text)
psgUploadType
  = lens _psgUploadType
      (\ s a -> s{_psgUploadType = a})

-- | OAuth bearer token.
psgBearerToken :: Lens' ProjectsSinksGet' (Maybe Text)
psgBearerToken
  = lens _psgBearerToken
      (\ s a -> s{_psgBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
psgKey :: Lens' ProjectsSinksGet' (Maybe Text)
psgKey = lens _psgKey (\ s a -> s{_psgKey = a})

-- | OAuth 2.0 token for the current user.
psgOauthToken :: Lens' ProjectsSinksGet' (Maybe Text)
psgOauthToken
  = lens _psgOauthToken
      (\ s a -> s{_psgOauthToken = a})

-- | Part of \`sinkName\`. The resource name of the project sink to return.
psgProjectsId :: Lens' ProjectsSinksGet' Text
psgProjectsId
  = lens _psgProjectsId
      (\ s a -> s{_psgProjectsId = a})

-- | Part of \`sinkName\`. See documentation of \`projectsId\`.
psgSinksId :: Lens' ProjectsSinksGet' Text
psgSinksId
  = lens _psgSinksId (\ s a -> s{_psgSinksId = a})

-- | Selector specifying which fields to include in a partial response.
psgFields :: Lens' ProjectsSinksGet' (Maybe Text)
psgFields
  = lens _psgFields (\ s a -> s{_psgFields = a})

-- | JSONP
psgCallback :: Lens' ProjectsSinksGet' (Maybe Text)
psgCallback
  = lens _psgCallback (\ s a -> s{_psgCallback = a})

-- | Data format for response.
psgAlt :: Lens' ProjectsSinksGet' Text
psgAlt = lens _psgAlt (\ s a -> s{_psgAlt = a})

instance GoogleRequest ProjectsSinksGet' where
        type Rs ProjectsSinksGet' = LogSink
        request = requestWithRoute defReq loggingURL
        requestWithRoute r u ProjectsSinksGet'{..}
          = go _psgXgafv _psgQuotaUser (Just _psgPrettyPrint)
              _psgUploadProtocol
              (Just _psgPp)
              _psgAccessToken
              _psgUploadType
              _psgBearerToken
              _psgKey
              _psgOauthToken
              _psgProjectsId
              _psgSinksId
              _psgFields
              _psgCallback
              (Just _psgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsSinksGetResource)
                      r
                      u
