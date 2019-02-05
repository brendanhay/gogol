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
-- Module      : Network.Google.Resource.PubSub.Projects.Topics.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the configuration of a topic.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.topics.get@.
module Network.Google.Resource.PubSub.Projects.Topics.Get
    (
    -- * REST Resource
      ProjectsTopicsGetResource

    -- * Creating a Request
    , projectsTopicsGet
    , ProjectsTopicsGet

    -- * Request Lenses
    , ptgXgafv
    , ptgUploadProtocol
    , ptgAccessToken
    , ptgUploadType
    , ptgTopic
    , ptgCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.topics.get@ method which the
-- 'ProjectsTopicsGet' request conforms to.
type ProjectsTopicsGetResource =
     "v1" :>
       Capture "topic" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Topic

-- | Gets the configuration of a topic.
--
-- /See:/ 'projectsTopicsGet' smart constructor.
data ProjectsTopicsGet = ProjectsTopicsGet'
    { _ptgXgafv          :: !(Maybe Xgafv)
    , _ptgUploadProtocol :: !(Maybe Text)
    , _ptgAccessToken    :: !(Maybe Text)
    , _ptgUploadType     :: !(Maybe Text)
    , _ptgTopic          :: !Text
    , _ptgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsTopicsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptgXgafv'
--
-- * 'ptgUploadProtocol'
--
-- * 'ptgAccessToken'
--
-- * 'ptgUploadType'
--
-- * 'ptgTopic'
--
-- * 'ptgCallback'
projectsTopicsGet
    :: Text -- ^ 'ptgTopic'
    -> ProjectsTopicsGet
projectsTopicsGet pPtgTopic_ =
    ProjectsTopicsGet'
    { _ptgXgafv = Nothing
    , _ptgUploadProtocol = Nothing
    , _ptgAccessToken = Nothing
    , _ptgUploadType = Nothing
    , _ptgTopic = pPtgTopic_
    , _ptgCallback = Nothing
    }

-- | V1 error format.
ptgXgafv :: Lens' ProjectsTopicsGet (Maybe Xgafv)
ptgXgafv = lens _ptgXgafv (\ s a -> s{_ptgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptgUploadProtocol :: Lens' ProjectsTopicsGet (Maybe Text)
ptgUploadProtocol
  = lens _ptgUploadProtocol
      (\ s a -> s{_ptgUploadProtocol = a})

-- | OAuth access token.
ptgAccessToken :: Lens' ProjectsTopicsGet (Maybe Text)
ptgAccessToken
  = lens _ptgAccessToken
      (\ s a -> s{_ptgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptgUploadType :: Lens' ProjectsTopicsGet (Maybe Text)
ptgUploadType
  = lens _ptgUploadType
      (\ s a -> s{_ptgUploadType = a})

-- | The name of the topic to get. Format is
-- \`projects\/{project}\/topics\/{topic}\`.
ptgTopic :: Lens' ProjectsTopicsGet Text
ptgTopic = lens _ptgTopic (\ s a -> s{_ptgTopic = a})

-- | JSONP
ptgCallback :: Lens' ProjectsTopicsGet (Maybe Text)
ptgCallback
  = lens _ptgCallback (\ s a -> s{_ptgCallback = a})

instance GoogleRequest ProjectsTopicsGet where
        type Rs ProjectsTopicsGet = Topic
        type Scopes ProjectsTopicsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient ProjectsTopicsGet'{..}
          = go _ptgTopic _ptgXgafv _ptgUploadProtocol
              _ptgAccessToken
              _ptgUploadType
              _ptgCallback
              (Just AltJSON)
              pubSubService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTopicsGetResource)
                      mempty
