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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds one or more messages to the topic. Returns \`NOT_FOUND\` if the
-- topic does not exist.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.topics.publish@.
module Network.Google.Resource.PubSub.Projects.Topics.Publish
    (
    -- * REST Resource
      ProjectsTopicsPublishResource

    -- * Creating a Request
    , projectsTopicsPublish
    , ProjectsTopicsPublish

    -- * Request Lenses
    , ptptXgafv
    , ptptUploadProtocol
    , ptptAccessToken
    , ptptUploadType
    , ptptPayload
    , ptptTopic
    , ptptCallback
    ) where

import Network.Google.Prelude
import Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.topics.publish@ method which the
-- 'ProjectsTopicsPublish' request conforms to.
type ProjectsTopicsPublishResource =
     "v1" :>
       CaptureMode "topic" "publish" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] PublishRequest :>
                       Post '[JSON] PublishResponse

-- | Adds one or more messages to the topic. Returns \`NOT_FOUND\` if the
-- topic does not exist.
--
-- /See:/ 'projectsTopicsPublish' smart constructor.
data ProjectsTopicsPublish =
  ProjectsTopicsPublish'
    { _ptptXgafv :: !(Maybe Xgafv)
    , _ptptUploadProtocol :: !(Maybe Text)
    , _ptptAccessToken :: !(Maybe Text)
    , _ptptUploadType :: !(Maybe Text)
    , _ptptPayload :: !PublishRequest
    , _ptptTopic :: !Text
    , _ptptCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTopicsPublish' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptptXgafv'
--
-- * 'ptptUploadProtocol'
--
-- * 'ptptAccessToken'
--
-- * 'ptptUploadType'
--
-- * 'ptptPayload'
--
-- * 'ptptTopic'
--
-- * 'ptptCallback'
projectsTopicsPublish
    :: PublishRequest -- ^ 'ptptPayload'
    -> Text -- ^ 'ptptTopic'
    -> ProjectsTopicsPublish
projectsTopicsPublish pPtptPayload_ pPtptTopic_ =
  ProjectsTopicsPublish'
    { _ptptXgafv = Nothing
    , _ptptUploadProtocol = Nothing
    , _ptptAccessToken = Nothing
    , _ptptUploadType = Nothing
    , _ptptPayload = pPtptPayload_
    , _ptptTopic = pPtptTopic_
    , _ptptCallback = Nothing
    }


-- | V1 error format.
ptptXgafv :: Lens' ProjectsTopicsPublish (Maybe Xgafv)
ptptXgafv
  = lens _ptptXgafv (\ s a -> s{_ptptXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptptUploadProtocol :: Lens' ProjectsTopicsPublish (Maybe Text)
ptptUploadProtocol
  = lens _ptptUploadProtocol
      (\ s a -> s{_ptptUploadProtocol = a})

-- | OAuth access token.
ptptAccessToken :: Lens' ProjectsTopicsPublish (Maybe Text)
ptptAccessToken
  = lens _ptptAccessToken
      (\ s a -> s{_ptptAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptptUploadType :: Lens' ProjectsTopicsPublish (Maybe Text)
ptptUploadType
  = lens _ptptUploadType
      (\ s a -> s{_ptptUploadType = a})

-- | Multipart request metadata.
ptptPayload :: Lens' ProjectsTopicsPublish PublishRequest
ptptPayload
  = lens _ptptPayload (\ s a -> s{_ptptPayload = a})

-- | Required. The messages in the request will be published on this topic.
-- Format is \`projects\/{project}\/topics\/{topic}\`.
ptptTopic :: Lens' ProjectsTopicsPublish Text
ptptTopic
  = lens _ptptTopic (\ s a -> s{_ptptTopic = a})

-- | JSONP
ptptCallback :: Lens' ProjectsTopicsPublish (Maybe Text)
ptptCallback
  = lens _ptptCallback (\ s a -> s{_ptptCallback = a})

instance GoogleRequest ProjectsTopicsPublish where
        type Rs ProjectsTopicsPublish = PublishResponse
        type Scopes ProjectsTopicsPublish =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient ProjectsTopicsPublish'{..}
          = go _ptptTopic _ptptXgafv _ptptUploadProtocol
              _ptptAccessToken
              _ptptUploadType
              _ptptCallback
              (Just AltJSON)
              _ptptPayload
              pubSubService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTopicsPublishResource)
                      mempty
