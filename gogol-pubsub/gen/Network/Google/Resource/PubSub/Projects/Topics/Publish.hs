{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module PubSub.Projects.Topics.Publish
    (
    -- * REST Resource
      ProjectsTopicsPublishAPI

    -- * Creating a Request
    , projectsTopicsPublish
    , ProjectsTopicsPublish

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
    , ptpOauthToken
    , ptpFields
    , ptpCallback
    , ptpAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @PubsubProjectsTopicsPublish@ which the
-- 'ProjectsTopicsPublish' request conforms to.
type ProjectsTopicsPublishAPI =
     "v1beta2" :>
       "{+topic}:publish" :> Post '[JSON] PublishResponse

-- | Adds one or more messages to the topic. Returns NOT_FOUND if the topic
-- does not exist. The message payload must not be empty; it must contain
-- either a non-empty data field, or at least one attribute.
--
-- /See:/ 'projectsTopicsPublish' smart constructor.
data ProjectsTopicsPublish = ProjectsTopicsPublish
    { _ptpXgafv          :: !(Maybe Text)
    , _ptpQuotaUser      :: !(Maybe Text)
    , _ptpPrettyPrint    :: !Bool
    , _ptpUploadProtocol :: !(Maybe Text)
    , _ptpPp             :: !Bool
    , _ptpAccessToken    :: !(Maybe Text)
    , _ptpUploadType     :: !(Maybe Text)
    , _ptpTopic          :: !Text
    , _ptpBearerToken    :: !(Maybe Text)
    , _ptpKey            :: !(Maybe Text)
    , _ptpOauthToken     :: !(Maybe Text)
    , _ptpFields         :: !(Maybe Text)
    , _ptpCallback       :: !(Maybe Text)
    , _ptpAlt            :: !Text
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
-- * 'ptpOauthToken'
--
-- * 'ptpFields'
--
-- * 'ptpCallback'
--
-- * 'ptpAlt'
projectsTopicsPublish
    :: Text -- ^ 'topic'
    -> ProjectsTopicsPublish
projectsTopicsPublish pPtpTopic_ =
    ProjectsTopicsPublish
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
    , _ptpOauthToken = Nothing
    , _ptpFields = Nothing
    , _ptpCallback = Nothing
    , _ptpAlt = "json"
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
ptpKey :: Lens' ProjectsTopicsPublish' (Maybe Text)
ptpKey = lens _ptpKey (\ s a -> s{_ptpKey = a})

-- | OAuth 2.0 token for the current user.
ptpOauthToken :: Lens' ProjectsTopicsPublish' (Maybe Text)
ptpOauthToken
  = lens _ptpOauthToken
      (\ s a -> s{_ptpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ptpFields :: Lens' ProjectsTopicsPublish' (Maybe Text)
ptpFields
  = lens _ptpFields (\ s a -> s{_ptpFields = a})

-- | JSONP
ptpCallback :: Lens' ProjectsTopicsPublish' (Maybe Text)
ptpCallback
  = lens _ptpCallback (\ s a -> s{_ptpCallback = a})

-- | Data format for response.
ptpAlt :: Lens' ProjectsTopicsPublish' Text
ptpAlt = lens _ptpAlt (\ s a -> s{_ptpAlt = a})

instance GoogleRequest ProjectsTopicsPublish' where
        type Rs ProjectsTopicsPublish' = PublishResponse
        request = requestWithRoute defReq pubSubURL
        requestWithRoute r u ProjectsTopicsPublish{..}
          = go _ptpXgafv _ptpQuotaUser _ptpPrettyPrint
              _ptpUploadProtocol
              _ptpPp
              _ptpAccessToken
              _ptpUploadType
              _ptpTopic
              _ptpBearerToken
              _ptpKey
              _ptpOauthToken
              _ptpFields
              _ptpCallback
              _ptpAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsTopicsPublishAPI)
                      r
                      u
