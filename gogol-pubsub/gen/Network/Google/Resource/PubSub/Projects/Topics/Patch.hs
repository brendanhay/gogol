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
-- Module      : Network.Google.Resource.PubSub.Projects.Topics.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing topic. Note that certain properties of a topic are
-- not modifiable.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.topics.patch@.
module Network.Google.Resource.PubSub.Projects.Topics.Patch
    (
    -- * REST Resource
      ProjectsTopicsPatchResource

    -- * Creating a Request
    , projectsTopicsPatch
    , ProjectsTopicsPatch

    -- * Request Lenses
    , ptpXgafv
    , ptpUploadProtocol
    , ptpAccessToken
    , ptpUploadType
    , ptpPayload
    , ptpName
    , ptpCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.topics.patch@ method which the
-- 'ProjectsTopicsPatch' request conforms to.
type ProjectsTopicsPatchResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] UpdateTopicRequest :>
                       Patch '[JSON] Topic

-- | Updates an existing topic. Note that certain properties of a topic are
-- not modifiable.
--
-- /See:/ 'projectsTopicsPatch' smart constructor.
data ProjectsTopicsPatch = ProjectsTopicsPatch'
    { _ptpXgafv          :: !(Maybe Xgafv)
    , _ptpUploadProtocol :: !(Maybe Text)
    , _ptpAccessToken    :: !(Maybe Text)
    , _ptpUploadType     :: !(Maybe Text)
    , _ptpPayload        :: !UpdateTopicRequest
    , _ptpName           :: !Text
    , _ptpCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsTopicsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptpXgafv'
--
-- * 'ptpUploadProtocol'
--
-- * 'ptpAccessToken'
--
-- * 'ptpUploadType'
--
-- * 'ptpPayload'
--
-- * 'ptpName'
--
-- * 'ptpCallback'
projectsTopicsPatch
    :: UpdateTopicRequest -- ^ 'ptpPayload'
    -> Text -- ^ 'ptpName'
    -> ProjectsTopicsPatch
projectsTopicsPatch pPtpPayload_ pPtpName_ =
    ProjectsTopicsPatch'
    { _ptpXgafv = Nothing
    , _ptpUploadProtocol = Nothing
    , _ptpAccessToken = Nothing
    , _ptpUploadType = Nothing
    , _ptpPayload = pPtpPayload_
    , _ptpName = pPtpName_
    , _ptpCallback = Nothing
    }

-- | V1 error format.
ptpXgafv :: Lens' ProjectsTopicsPatch (Maybe Xgafv)
ptpXgafv = lens _ptpXgafv (\ s a -> s{_ptpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptpUploadProtocol :: Lens' ProjectsTopicsPatch (Maybe Text)
ptpUploadProtocol
  = lens _ptpUploadProtocol
      (\ s a -> s{_ptpUploadProtocol = a})

-- | OAuth access token.
ptpAccessToken :: Lens' ProjectsTopicsPatch (Maybe Text)
ptpAccessToken
  = lens _ptpAccessToken
      (\ s a -> s{_ptpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptpUploadType :: Lens' ProjectsTopicsPatch (Maybe Text)
ptpUploadType
  = lens _ptpUploadType
      (\ s a -> s{_ptpUploadType = a})

-- | Multipart request metadata.
ptpPayload :: Lens' ProjectsTopicsPatch UpdateTopicRequest
ptpPayload
  = lens _ptpPayload (\ s a -> s{_ptpPayload = a})

-- | The name of the topic. It must have the format
-- \`\"projects\/{project}\/topics\/{topic}\"\`. \`{topic}\` must start
-- with a letter, and contain only letters (\`[A-Za-z]\`), numbers
-- (\`[0-9]\`), dashes (\`-\`), underscores (\`_\`), periods (\`.\`),
-- tildes (\`~\`), plus (\`+\`) or percent signs (\`%\`). It must be
-- between 3 and 255 characters in length, and it must not start with
-- \`\"goog\"\`.
ptpName :: Lens' ProjectsTopicsPatch Text
ptpName = lens _ptpName (\ s a -> s{_ptpName = a})

-- | JSONP
ptpCallback :: Lens' ProjectsTopicsPatch (Maybe Text)
ptpCallback
  = lens _ptpCallback (\ s a -> s{_ptpCallback = a})

instance GoogleRequest ProjectsTopicsPatch where
        type Rs ProjectsTopicsPatch = Topic
        type Scopes ProjectsTopicsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient ProjectsTopicsPatch'{..}
          = go _ptpName _ptpXgafv _ptpUploadProtocol
              _ptpAccessToken
              _ptpUploadType
              _ptpCallback
              (Just AltJSON)
              _ptpPayload
              pubSubService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTopicsPatchResource)
                      mempty
