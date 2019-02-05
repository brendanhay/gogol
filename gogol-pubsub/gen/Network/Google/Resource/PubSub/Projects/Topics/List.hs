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
-- Module      : Network.Google.Resource.PubSub.Projects.Topics.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists matching topics.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.topics.list@.
module Network.Google.Resource.PubSub.Projects.Topics.List
    (
    -- * REST Resource
      ProjectsTopicsListResource

    -- * Creating a Request
    , projectsTopicsList
    , ProjectsTopicsList

    -- * Request Lenses
    , ptlXgafv
    , ptlUploadProtocol
    , ptlProject
    , ptlAccessToken
    , ptlUploadType
    , ptlPageToken
    , ptlPageSize
    , ptlCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.topics.list@ method which the
-- 'ProjectsTopicsList' request conforms to.
type ProjectsTopicsListResource =
     "v1" :>
       Capture "project" Text :>
         "topics" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListTopicsResponse

-- | Lists matching topics.
--
-- /See:/ 'projectsTopicsList' smart constructor.
data ProjectsTopicsList = ProjectsTopicsList'
    { _ptlXgafv          :: !(Maybe Xgafv)
    , _ptlUploadProtocol :: !(Maybe Text)
    , _ptlProject        :: !Text
    , _ptlAccessToken    :: !(Maybe Text)
    , _ptlUploadType     :: !(Maybe Text)
    , _ptlPageToken      :: !(Maybe Text)
    , _ptlPageSize       :: !(Maybe (Textual Int32))
    , _ptlCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsTopicsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptlXgafv'
--
-- * 'ptlUploadProtocol'
--
-- * 'ptlProject'
--
-- * 'ptlAccessToken'
--
-- * 'ptlUploadType'
--
-- * 'ptlPageToken'
--
-- * 'ptlPageSize'
--
-- * 'ptlCallback'
projectsTopicsList
    :: Text -- ^ 'ptlProject'
    -> ProjectsTopicsList
projectsTopicsList pPtlProject_ =
    ProjectsTopicsList'
    { _ptlXgafv = Nothing
    , _ptlUploadProtocol = Nothing
    , _ptlProject = pPtlProject_
    , _ptlAccessToken = Nothing
    , _ptlUploadType = Nothing
    , _ptlPageToken = Nothing
    , _ptlPageSize = Nothing
    , _ptlCallback = Nothing
    }

-- | V1 error format.
ptlXgafv :: Lens' ProjectsTopicsList (Maybe Xgafv)
ptlXgafv = lens _ptlXgafv (\ s a -> s{_ptlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptlUploadProtocol :: Lens' ProjectsTopicsList (Maybe Text)
ptlUploadProtocol
  = lens _ptlUploadProtocol
      (\ s a -> s{_ptlUploadProtocol = a})

-- | The name of the project in which to list topics. Format is
-- \`projects\/{project-id}\`.
ptlProject :: Lens' ProjectsTopicsList Text
ptlProject
  = lens _ptlProject (\ s a -> s{_ptlProject = a})

-- | OAuth access token.
ptlAccessToken :: Lens' ProjectsTopicsList (Maybe Text)
ptlAccessToken
  = lens _ptlAccessToken
      (\ s a -> s{_ptlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptlUploadType :: Lens' ProjectsTopicsList (Maybe Text)
ptlUploadType
  = lens _ptlUploadType
      (\ s a -> s{_ptlUploadType = a})

-- | The value returned by the last \`ListTopicsResponse\`; indicates that
-- this is a continuation of a prior \`ListTopics\` call, and that the
-- system should return the next page of data.
ptlPageToken :: Lens' ProjectsTopicsList (Maybe Text)
ptlPageToken
  = lens _ptlPageToken (\ s a -> s{_ptlPageToken = a})

-- | Maximum number of topics to return.
ptlPageSize :: Lens' ProjectsTopicsList (Maybe Int32)
ptlPageSize
  = lens _ptlPageSize (\ s a -> s{_ptlPageSize = a}) .
      mapping _Coerce

-- | JSONP
ptlCallback :: Lens' ProjectsTopicsList (Maybe Text)
ptlCallback
  = lens _ptlCallback (\ s a -> s{_ptlCallback = a})

instance GoogleRequest ProjectsTopicsList where
        type Rs ProjectsTopicsList = ListTopicsResponse
        type Scopes ProjectsTopicsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient ProjectsTopicsList'{..}
          = go _ptlProject _ptlXgafv _ptlUploadProtocol
              _ptlAccessToken
              _ptlUploadType
              _ptlPageToken
              _ptlPageSize
              _ptlCallback
              (Just AltJSON)
              pubSubService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTopicsListResource)
                      mempty
