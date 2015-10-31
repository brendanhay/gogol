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
-- /See:/ <https://cloud.google.com/pubsub/docs Google Cloud Pub/Sub API Reference> for @pubsub.projects.topics.get@.
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
    , ptgPp
    , ptgAccessToken
    , ptgUploadType
    , ptgTopic
    , ptgBearerToken
    , ptgCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.topics.get@ method which the
-- 'ProjectsTopicsGet' request conforms to.
type ProjectsTopicsGetResource =
     "v1" :>
       Capture "topic" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Topic

-- | Gets the configuration of a topic.
--
-- /See:/ 'projectsTopicsGet' smart constructor.
data ProjectsTopicsGet = ProjectsTopicsGet
    { _ptgXgafv          :: !(Maybe Text)
    , _ptgUploadProtocol :: !(Maybe Text)
    , _ptgPp             :: !Bool
    , _ptgAccessToken    :: !(Maybe Text)
    , _ptgUploadType     :: !(Maybe Text)
    , _ptgTopic          :: !Text
    , _ptgBearerToken    :: !(Maybe Text)
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
-- * 'ptgPp'
--
-- * 'ptgAccessToken'
--
-- * 'ptgUploadType'
--
-- * 'ptgTopic'
--
-- * 'ptgBearerToken'
--
-- * 'ptgCallback'
projectsTopicsGet
    :: Text -- ^ 'ptgTopic'
    -> ProjectsTopicsGet
projectsTopicsGet pPtgTopic_ =
    ProjectsTopicsGet
    { _ptgXgafv = Nothing
    , _ptgUploadProtocol = Nothing
    , _ptgPp = True
    , _ptgAccessToken = Nothing
    , _ptgUploadType = Nothing
    , _ptgTopic = pPtgTopic_
    , _ptgBearerToken = Nothing
    , _ptgCallback = Nothing
    }

-- | V1 error format.
ptgXgafv :: Lens' ProjectsTopicsGet (Maybe Text)
ptgXgafv = lens _ptgXgafv (\ s a -> s{_ptgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptgUploadProtocol :: Lens' ProjectsTopicsGet (Maybe Text)
ptgUploadProtocol
  = lens _ptgUploadProtocol
      (\ s a -> s{_ptgUploadProtocol = a})

-- | Pretty-print response.
ptgPp :: Lens' ProjectsTopicsGet Bool
ptgPp = lens _ptgPp (\ s a -> s{_ptgPp = a})

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

-- | The name of the topic to get.
ptgTopic :: Lens' ProjectsTopicsGet Text
ptgTopic = lens _ptgTopic (\ s a -> s{_ptgTopic = a})

-- | OAuth bearer token.
ptgBearerToken :: Lens' ProjectsTopicsGet (Maybe Text)
ptgBearerToken
  = lens _ptgBearerToken
      (\ s a -> s{_ptgBearerToken = a})

-- | JSONP
ptgCallback :: Lens' ProjectsTopicsGet (Maybe Text)
ptgCallback
  = lens _ptgCallback (\ s a -> s{_ptgCallback = a})

instance GoogleRequest ProjectsTopicsGet where
        type Rs ProjectsTopicsGet = Topic
        type Scopes ProjectsTopicsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient ProjectsTopicsGet{..}
          = go _ptgTopic _ptgXgafv _ptgUploadProtocol
              (Just _ptgPp)
              _ptgAccessToken
              _ptgUploadType
              _ptgBearerToken
              _ptgCallback
              (Just AltJSON)
              pubSubService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTopicsGetResource)
                      mempty
