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
-- Module      : Network.Google.Resource.PubSub.Projects.Topics.Publish
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds one or more messages to the topic. Returns NOT_FOUND if the topic
-- does not exist. The message payload must not be empty; it must contain
-- either a non-empty data field, or at least one attribute.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Google Cloud Pub/Sub API Reference> for @PubsubProjectsTopicsPublish@.
module Network.Google.Resource.PubSub.Projects.Topics.Publish
    (
    -- * REST Resource
      ProjectsTopicsPublishResource

    -- * Creating a Request
    , projectsTopicsPublish'
    , ProjectsTopicsPublish'

    -- * Request Lenses
    , ptpXgafv
    , ptpQuotaUser
    , ptpPrettyPrint
    , ptpUploadProtocol
    , ptpPp
    , ptpAccessToken
    , ptpUploadType
    , ptpTopic
    , ptpBearerToken
    , ptpKey
    , ptpPublishRequest
    , ptpOAuthToken
    , ptpFields
    , ptpCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @PubsubProjectsTopicsPublish@ which the
-- 'ProjectsTopicsPublish'' request conforms to.
type ProjectsTopicsPublishResource =
     "v1beta2" :>
       "{+topic}:publish" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "fields" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] PublishRequest :>
                                     Post '[JSON] PublishResponse

-- | Adds one or more messages to the topic. Returns NOT_FOUND if the topic
-- does not exist. The message payload must not be empty; it must contain
-- either a non-empty data field, or at least one attribute.
--
-- /See:/ 'projectsTopicsPublish'' smart constructor.
data ProjectsTopicsPublish' = ProjectsTopicsPublish'
    { _ptpXgafv          :: !(Maybe Text)
    , _ptpQuotaUser      :: !(Maybe Text)
    , _ptpPrettyPrint    :: !Bool
    , _ptpUploadProtocol :: !(Maybe Text)
    , _ptpPp             :: !Bool
    , _ptpAccessToken    :: !(Maybe Text)
    , _ptpUploadType     :: !(Maybe Text)
    , _ptpTopic          :: !Text
    , _ptpBearerToken    :: !(Maybe Text)
    , _ptpKey            :: !(Maybe Key)
    , _ptpPublishRequest :: !PublishRequest
    , _ptpOAuthToken     :: !(Maybe OAuthToken)
    , _ptpFields         :: !(Maybe Text)
    , _ptpCallback       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsTopicsPublish'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptpXgafv'
--
-- * 'ptpQuotaUser'
--
-- * 'ptpPrettyPrint'
--
-- * 'ptpUploadProtocol'
--
-- * 'ptpPp'
--
-- * 'ptpAccessToken'
--
-- * 'ptpUploadType'
--
-- * 'ptpTopic'
--
-- * 'ptpBearerToken'
--
-- * 'ptpKey'
--
-- * 'ptpPublishRequest'
--
-- * 'ptpOAuthToken'
--
-- * 'ptpFields'
--
-- * 'ptpCallback'
projectsTopicsPublish'
    :: Text -- ^ 'topic'
    -> PublishRequest -- ^ 'PublishRequest'
    -> ProjectsTopicsPublish'
projectsTopicsPublish' pPtpTopic_ pPtpPublishRequest_ =
    ProjectsTopicsPublish'
    { _ptpXgafv = Nothing
    , _ptpQuotaUser = Nothing
    , _ptpPrettyPrint = True
    , _ptpUploadProtocol = Nothing
    , _ptpPp = True
    , _ptpAccessToken = Nothing
    , _ptpUploadType = Nothing
    , _ptpTopic = pPtpTopic_
    , _ptpBearerToken = Nothing
    , _ptpKey = Nothing
    , _ptpPublishRequest = pPtpPublishRequest_
    , _ptpOAuthToken = Nothing
    , _ptpFields = Nothing
    , _ptpCallback = Nothing
    }

-- | V1 error format.
ptpXgafv :: Lens' ProjectsTopicsPublish' (Maybe Text)
ptpXgafv = lens _ptpXgafv (\ s a -> s{_ptpXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
ptpQuotaUser :: Lens' ProjectsTopicsPublish' (Maybe Text)
ptpQuotaUser
  = lens _ptpQuotaUser (\ s a -> s{_ptpQuotaUser = a})

-- | Returns response with indentations and line breaks.
ptpPrettyPrint :: Lens' ProjectsTopicsPublish' Bool
ptpPrettyPrint
  = lens _ptpPrettyPrint
      (\ s a -> s{_ptpPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptpUploadProtocol :: Lens' ProjectsTopicsPublish' (Maybe Text)
ptpUploadProtocol
  = lens _ptpUploadProtocol
      (\ s a -> s{_ptpUploadProtocol = a})

-- | Pretty-print response.
ptpPp :: Lens' ProjectsTopicsPublish' Bool
ptpPp = lens _ptpPp (\ s a -> s{_ptpPp = a})

-- | OAuth access token.
ptpAccessToken :: Lens' ProjectsTopicsPublish' (Maybe Text)
ptpAccessToken
  = lens _ptpAccessToken
      (\ s a -> s{_ptpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptpUploadType :: Lens' ProjectsTopicsPublish' (Maybe Text)
ptpUploadType
  = lens _ptpUploadType
      (\ s a -> s{_ptpUploadType = a})

-- | The messages in the request will be published on this topic.
ptpTopic :: Lens' ProjectsTopicsPublish' Text
ptpTopic = lens _ptpTopic (\ s a -> s{_ptpTopic = a})

-- | OAuth bearer token.
ptpBearerToken :: Lens' ProjectsTopicsPublish' (Maybe Text)
ptpBearerToken
  = lens _ptpBearerToken
      (\ s a -> s{_ptpBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ptpKey :: Lens' ProjectsTopicsPublish' (Maybe Key)
ptpKey = lens _ptpKey (\ s a -> s{_ptpKey = a})

-- | Multipart request metadata.
ptpPublishRequest :: Lens' ProjectsTopicsPublish' PublishRequest
ptpPublishRequest
  = lens _ptpPublishRequest
      (\ s a -> s{_ptpPublishRequest = a})

-- | OAuth 2.0 token for the current user.
ptpOAuthToken :: Lens' ProjectsTopicsPublish' (Maybe OAuthToken)
ptpOAuthToken
  = lens _ptpOAuthToken
      (\ s a -> s{_ptpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ptpFields :: Lens' ProjectsTopicsPublish' (Maybe Text)
ptpFields
  = lens _ptpFields (\ s a -> s{_ptpFields = a})

-- | JSONP
ptpCallback :: Lens' ProjectsTopicsPublish' (Maybe Text)
ptpCallback
  = lens _ptpCallback (\ s a -> s{_ptpCallback = a})

instance GoogleAuth ProjectsTopicsPublish' where
        authKey = ptpKey . _Just
        authToken = ptpOAuthToken . _Just

instance GoogleRequest ProjectsTopicsPublish' where
        type Rs ProjectsTopicsPublish' = PublishResponse
        request = requestWithRoute defReq pubSubURL
        requestWithRoute r u ProjectsTopicsPublish'{..}
          = go _ptpXgafv _ptpQuotaUser (Just _ptpPrettyPrint)
              _ptpUploadProtocol
              (Just _ptpPp)
              _ptpAccessToken
              _ptpUploadType
              _ptpTopic
              _ptpBearerToken
              _ptpKey
              _ptpOAuthToken
              _ptpFields
              _ptpCallback
              (Just AltJSON)
              _ptpPublishRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsTopicsPublishResource)
                      r
                      u
