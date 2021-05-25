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
-- Module      : Network.Google.Resource.PubSub.Projects.Topics.Subscriptions.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the names of the attached subscriptions on this topic.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.topics.subscriptions.list@.
module Network.Google.Resource.PubSub.Projects.Topics.Subscriptions.List
    (
    -- * REST Resource
      ProjectsTopicsSubscriptionsListResource

    -- * Creating a Request
    , projectsTopicsSubscriptionsList
    , ProjectsTopicsSubscriptionsList

    -- * Request Lenses
    , ptslXgafv
    , ptslUploadProtocol
    , ptslAccessToken
    , ptslUploadType
    , ptslTopic
    , ptslPageToken
    , ptslPageSize
    , ptslCallback
    ) where

import Network.Google.Prelude
import Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.topics.subscriptions.list@ method which the
-- 'ProjectsTopicsSubscriptionsList' request conforms to.
type ProjectsTopicsSubscriptionsListResource =
     "v1" :>
       Capture "topic" Text :>
         "subscriptions" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListTopicSubscriptionsResponse

-- | Lists the names of the attached subscriptions on this topic.
--
-- /See:/ 'projectsTopicsSubscriptionsList' smart constructor.
data ProjectsTopicsSubscriptionsList =
  ProjectsTopicsSubscriptionsList'
    { _ptslXgafv :: !(Maybe Xgafv)
    , _ptslUploadProtocol :: !(Maybe Text)
    , _ptslAccessToken :: !(Maybe Text)
    , _ptslUploadType :: !(Maybe Text)
    , _ptslTopic :: !Text
    , _ptslPageToken :: !(Maybe Text)
    , _ptslPageSize :: !(Maybe (Textual Int32))
    , _ptslCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTopicsSubscriptionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptslXgafv'
--
-- * 'ptslUploadProtocol'
--
-- * 'ptslAccessToken'
--
-- * 'ptslUploadType'
--
-- * 'ptslTopic'
--
-- * 'ptslPageToken'
--
-- * 'ptslPageSize'
--
-- * 'ptslCallback'
projectsTopicsSubscriptionsList
    :: Text -- ^ 'ptslTopic'
    -> ProjectsTopicsSubscriptionsList
projectsTopicsSubscriptionsList pPtslTopic_ =
  ProjectsTopicsSubscriptionsList'
    { _ptslXgafv = Nothing
    , _ptslUploadProtocol = Nothing
    , _ptslAccessToken = Nothing
    , _ptslUploadType = Nothing
    , _ptslTopic = pPtslTopic_
    , _ptslPageToken = Nothing
    , _ptslPageSize = Nothing
    , _ptslCallback = Nothing
    }


-- | V1 error format.
ptslXgafv :: Lens' ProjectsTopicsSubscriptionsList (Maybe Xgafv)
ptslXgafv
  = lens _ptslXgafv (\ s a -> s{_ptslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptslUploadProtocol :: Lens' ProjectsTopicsSubscriptionsList (Maybe Text)
ptslUploadProtocol
  = lens _ptslUploadProtocol
      (\ s a -> s{_ptslUploadProtocol = a})

-- | OAuth access token.
ptslAccessToken :: Lens' ProjectsTopicsSubscriptionsList (Maybe Text)
ptslAccessToken
  = lens _ptslAccessToken
      (\ s a -> s{_ptslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptslUploadType :: Lens' ProjectsTopicsSubscriptionsList (Maybe Text)
ptslUploadType
  = lens _ptslUploadType
      (\ s a -> s{_ptslUploadType = a})

-- | Required. The name of the topic that subscriptions are attached to.
-- Format is \`projects\/{project}\/topics\/{topic}\`.
ptslTopic :: Lens' ProjectsTopicsSubscriptionsList Text
ptslTopic
  = lens _ptslTopic (\ s a -> s{_ptslTopic = a})

-- | The value returned by the last \`ListTopicSubscriptionsResponse\`;
-- indicates that this is a continuation of a prior
-- \`ListTopicSubscriptions\` call, and that the system should return the
-- next page of data.
ptslPageToken :: Lens' ProjectsTopicsSubscriptionsList (Maybe Text)
ptslPageToken
  = lens _ptslPageToken
      (\ s a -> s{_ptslPageToken = a})

-- | Maximum number of subscription names to return.
ptslPageSize :: Lens' ProjectsTopicsSubscriptionsList (Maybe Int32)
ptslPageSize
  = lens _ptslPageSize (\ s a -> s{_ptslPageSize = a})
      . mapping _Coerce

-- | JSONP
ptslCallback :: Lens' ProjectsTopicsSubscriptionsList (Maybe Text)
ptslCallback
  = lens _ptslCallback (\ s a -> s{_ptslCallback = a})

instance GoogleRequest
           ProjectsTopicsSubscriptionsList
         where
        type Rs ProjectsTopicsSubscriptionsList =
             ListTopicSubscriptionsResponse
        type Scopes ProjectsTopicsSubscriptionsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient ProjectsTopicsSubscriptionsList'{..}
          = go _ptslTopic _ptslXgafv _ptslUploadProtocol
              _ptslAccessToken
              _ptslUploadType
              _ptslPageToken
              _ptslPageSize
              _ptslCallback
              (Just AltJSON)
              pubSubService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsTopicsSubscriptionsListResource)
                      mempty
