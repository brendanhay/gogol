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
-- Module      : Network.Google.Resource.PubSub.Projects.Topics.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the topic with the given name. Returns \`NOT_FOUND\` if the
-- topic does not exist. After a topic is deleted, a new topic may be
-- created with the same name; this is an entirely new topic with none of
-- the old configuration or subscriptions. Existing subscriptions to this
-- topic are not deleted, but their \`topic\` field is set to
-- \`_deleted-topic_\`.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.topics.delete@.
module Network.Google.Resource.PubSub.Projects.Topics.Delete
    (
    -- * REST Resource
      ProjectsTopicsDeleteResource

    -- * Creating a Request
    , projectsTopicsDelete
    , ProjectsTopicsDelete

    -- * Request Lenses
    , ptdXgafv
    , ptdUploadProtocol
    , ptdAccessToken
    , ptdUploadType
    , ptdTopic
    , ptdCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.topics.delete@ method which the
-- 'ProjectsTopicsDelete' request conforms to.
type ProjectsTopicsDeleteResource =
     "v1" :>
       Capture "topic" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes the topic with the given name. Returns \`NOT_FOUND\` if the
-- topic does not exist. After a topic is deleted, a new topic may be
-- created with the same name; this is an entirely new topic with none of
-- the old configuration or subscriptions. Existing subscriptions to this
-- topic are not deleted, but their \`topic\` field is set to
-- \`_deleted-topic_\`.
--
-- /See:/ 'projectsTopicsDelete' smart constructor.
data ProjectsTopicsDelete = ProjectsTopicsDelete'
    { _ptdXgafv          :: !(Maybe Xgafv)
    , _ptdUploadProtocol :: !(Maybe Text)
    , _ptdAccessToken    :: !(Maybe Text)
    , _ptdUploadType     :: !(Maybe Text)
    , _ptdTopic          :: !Text
    , _ptdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsTopicsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptdXgafv'
--
-- * 'ptdUploadProtocol'
--
-- * 'ptdAccessToken'
--
-- * 'ptdUploadType'
--
-- * 'ptdTopic'
--
-- * 'ptdCallback'
projectsTopicsDelete
    :: Text -- ^ 'ptdTopic'
    -> ProjectsTopicsDelete
projectsTopicsDelete pPtdTopic_ =
    ProjectsTopicsDelete'
    { _ptdXgafv = Nothing
    , _ptdUploadProtocol = Nothing
    , _ptdAccessToken = Nothing
    , _ptdUploadType = Nothing
    , _ptdTopic = pPtdTopic_
    , _ptdCallback = Nothing
    }

-- | V1 error format.
ptdXgafv :: Lens' ProjectsTopicsDelete (Maybe Xgafv)
ptdXgafv = lens _ptdXgafv (\ s a -> s{_ptdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptdUploadProtocol :: Lens' ProjectsTopicsDelete (Maybe Text)
ptdUploadProtocol
  = lens _ptdUploadProtocol
      (\ s a -> s{_ptdUploadProtocol = a})

-- | OAuth access token.
ptdAccessToken :: Lens' ProjectsTopicsDelete (Maybe Text)
ptdAccessToken
  = lens _ptdAccessToken
      (\ s a -> s{_ptdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptdUploadType :: Lens' ProjectsTopicsDelete (Maybe Text)
ptdUploadType
  = lens _ptdUploadType
      (\ s a -> s{_ptdUploadType = a})

-- | Name of the topic to delete. Format is
-- \`projects\/{project}\/topics\/{topic}\`.
ptdTopic :: Lens' ProjectsTopicsDelete Text
ptdTopic = lens _ptdTopic (\ s a -> s{_ptdTopic = a})

-- | JSONP
ptdCallback :: Lens' ProjectsTopicsDelete (Maybe Text)
ptdCallback
  = lens _ptdCallback (\ s a -> s{_ptdCallback = a})

instance GoogleRequest ProjectsTopicsDelete where
        type Rs ProjectsTopicsDelete = Empty
        type Scopes ProjectsTopicsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient ProjectsTopicsDelete'{..}
          = go _ptdTopic _ptdXgafv _ptdUploadProtocol
              _ptdAccessToken
              _ptdUploadType
              _ptdCallback
              (Just AltJSON)
              pubSubService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTopicsDeleteResource)
                      mempty
