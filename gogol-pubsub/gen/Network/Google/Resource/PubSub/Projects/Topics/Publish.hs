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
-- Module      : Network.Google.Resource.PubSub.Projects.Topics.Publish
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds one or more messages to the topic. Returns \`NOT_FOUND\` if the
-- topic does not exist. The message payload must not be empty; it must
-- contain either a non-empty data field, or at least one attribute.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Google Cloud Pub/Sub API Reference> for @pubsub.projects.topics.publish@.
module Network.Google.Resource.PubSub.Projects.Topics.Publish
    (
    -- * REST Resource
      ProjectsTopicsPublishResource

    -- * Creating a Request
    , projectsTopicsPublish
    , ProjectsTopicsPublish

    -- * Request Lenses
    , ptpXgafv
    , ptpUploadProtocol
    , ptpPp
    , ptpAccessToken
    , ptpUploadType
    , ptpPayload
    , ptpTopic
    , ptpBearerToken
    , ptpCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.topics.publish@ method which the
-- 'ProjectsTopicsPublish' request conforms to.
type ProjectsTopicsPublishResource =
     "v1" :>
       CaptureMode "topic" "publish" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] PublishRequest :>
                           Post '[JSON] PublishResponse

-- | Adds one or more messages to the topic. Returns \`NOT_FOUND\` if the
-- topic does not exist. The message payload must not be empty; it must
-- contain either a non-empty data field, or at least one attribute.
--
-- /See:/ 'projectsTopicsPublish' smart constructor.
data ProjectsTopicsPublish = ProjectsTopicsPublish
    { _ptpXgafv          :: !(Maybe Text)
    , _ptpUploadProtocol :: !(Maybe Text)
    , _ptpPp             :: !Bool
    , _ptpAccessToken    :: !(Maybe Text)
    , _ptpUploadType     :: !(Maybe Text)
    , _ptpPayload        :: !PublishRequest
    , _ptpTopic          :: !Text
    , _ptpBearerToken    :: !(Maybe Text)
    , _ptpCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsTopicsPublish' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptpXgafv'
--
-- * 'ptpUploadProtocol'
--
-- * 'ptpPp'
--
-- * 'ptpAccessToken'
--
-- * 'ptpUploadType'
--
-- * 'ptpPayload'
--
-- * 'ptpTopic'
--
-- * 'ptpBearerToken'
--
-- * 'ptpCallback'
projectsTopicsPublish
    :: PublishRequest -- ^ 'ptpPayload'
    -> Text -- ^ 'ptpTopic'
    -> ProjectsTopicsPublish
projectsTopicsPublish pPtpPayload_ pPtpTopic_ =
    ProjectsTopicsPublish
    { _ptpXgafv = Nothing
    , _ptpUploadProtocol = Nothing
    , _ptpPp = True
    , _ptpAccessToken = Nothing
    , _ptpUploadType = Nothing
    , _ptpPayload = pPtpPayload_
    , _ptpTopic = pPtpTopic_
    , _ptpBearerToken = Nothing
    , _ptpCallback = Nothing
    }

-- | V1 error format.
ptpXgafv :: Lens' ProjectsTopicsPublish (Maybe Text)
ptpXgafv = lens _ptpXgafv (\ s a -> s{_ptpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptpUploadProtocol :: Lens' ProjectsTopicsPublish (Maybe Text)
ptpUploadProtocol
  = lens _ptpUploadProtocol
      (\ s a -> s{_ptpUploadProtocol = a})

-- | Pretty-print response.
ptpPp :: Lens' ProjectsTopicsPublish Bool
ptpPp = lens _ptpPp (\ s a -> s{_ptpPp = a})

-- | OAuth access token.
ptpAccessToken :: Lens' ProjectsTopicsPublish (Maybe Text)
ptpAccessToken
  = lens _ptpAccessToken
      (\ s a -> s{_ptpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptpUploadType :: Lens' ProjectsTopicsPublish (Maybe Text)
ptpUploadType
  = lens _ptpUploadType
      (\ s a -> s{_ptpUploadType = a})

-- | Multipart request metadata.
ptpPayload :: Lens' ProjectsTopicsPublish PublishRequest
ptpPayload
  = lens _ptpPayload (\ s a -> s{_ptpPayload = a})

-- | The messages in the request will be published on this topic.
ptpTopic :: Lens' ProjectsTopicsPublish Text
ptpTopic = lens _ptpTopic (\ s a -> s{_ptpTopic = a})

-- | OAuth bearer token.
ptpBearerToken :: Lens' ProjectsTopicsPublish (Maybe Text)
ptpBearerToken
  = lens _ptpBearerToken
      (\ s a -> s{_ptpBearerToken = a})

-- | JSONP
ptpCallback :: Lens' ProjectsTopicsPublish (Maybe Text)
ptpCallback
  = lens _ptpCallback (\ s a -> s{_ptpCallback = a})

instance GoogleRequest ProjectsTopicsPublish where
        type Rs ProjectsTopicsPublish = PublishResponse
        requestClient ProjectsTopicsPublish{..}
          = go _ptpTopic _ptpXgafv _ptpUploadProtocol
              (Just _ptpPp)
              _ptpAccessToken
              _ptpUploadType
              _ptpBearerToken
              _ptpCallback
              (Just AltJSON)
              _ptpPayload
              pubSubService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTopicsPublishResource)
                      mempty
