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
-- Module      : Network.Google.Resource.PubSub.Projects.Topics.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates the given topic with the given name. See the [resource name
-- rules] (https:\/\/cloud.google.com\/pubsub\/docs\/admin#resource_names).
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.topics.create@.
module Network.Google.Resource.PubSub.Projects.Topics.Create
    (
    -- * REST Resource
      ProjectsTopicsCreateResource

    -- * Creating a Request
    , projectsTopicsCreate
    , ProjectsTopicsCreate

    -- * Request Lenses
    , ptcXgafv
    , ptcUploadProtocol
    , ptcAccessToken
    , ptcUploadType
    , ptcPayload
    , ptcName
    , ptcCallback
    ) where

import Network.Google.Prelude
import Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.topics.create@ method which the
-- 'ProjectsTopicsCreate' request conforms to.
type ProjectsTopicsCreateResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Topic :> Put '[JSON] Topic

-- | Creates the given topic with the given name. See the [resource name
-- rules] (https:\/\/cloud.google.com\/pubsub\/docs\/admin#resource_names).
--
-- /See:/ 'projectsTopicsCreate' smart constructor.
data ProjectsTopicsCreate =
  ProjectsTopicsCreate'
    { _ptcXgafv :: !(Maybe Xgafv)
    , _ptcUploadProtocol :: !(Maybe Text)
    , _ptcAccessToken :: !(Maybe Text)
    , _ptcUploadType :: !(Maybe Text)
    , _ptcPayload :: !Topic
    , _ptcName :: !Text
    , _ptcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTopicsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptcXgafv'
--
-- * 'ptcUploadProtocol'
--
-- * 'ptcAccessToken'
--
-- * 'ptcUploadType'
--
-- * 'ptcPayload'
--
-- * 'ptcName'
--
-- * 'ptcCallback'
projectsTopicsCreate
    :: Topic -- ^ 'ptcPayload'
    -> Text -- ^ 'ptcName'
    -> ProjectsTopicsCreate
projectsTopicsCreate pPtcPayload_ pPtcName_ =
  ProjectsTopicsCreate'
    { _ptcXgafv = Nothing
    , _ptcUploadProtocol = Nothing
    , _ptcAccessToken = Nothing
    , _ptcUploadType = Nothing
    , _ptcPayload = pPtcPayload_
    , _ptcName = pPtcName_
    , _ptcCallback = Nothing
    }


-- | V1 error format.
ptcXgafv :: Lens' ProjectsTopicsCreate (Maybe Xgafv)
ptcXgafv = lens _ptcXgafv (\ s a -> s{_ptcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptcUploadProtocol :: Lens' ProjectsTopicsCreate (Maybe Text)
ptcUploadProtocol
  = lens _ptcUploadProtocol
      (\ s a -> s{_ptcUploadProtocol = a})

-- | OAuth access token.
ptcAccessToken :: Lens' ProjectsTopicsCreate (Maybe Text)
ptcAccessToken
  = lens _ptcAccessToken
      (\ s a -> s{_ptcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptcUploadType :: Lens' ProjectsTopicsCreate (Maybe Text)
ptcUploadType
  = lens _ptcUploadType
      (\ s a -> s{_ptcUploadType = a})

-- | Multipart request metadata.
ptcPayload :: Lens' ProjectsTopicsCreate Topic
ptcPayload
  = lens _ptcPayload (\ s a -> s{_ptcPayload = a})

-- | Required. The name of the topic. It must have the format
-- \`\"projects\/{project}\/topics\/{topic}\"\`. \`{topic}\` must start
-- with a letter, and contain only letters (\`[A-Za-z]\`), numbers
-- (\`[0-9]\`), dashes (\`-\`), underscores (\`_\`), periods (\`.\`),
-- tildes (\`~\`), plus (\`+\`) or percent signs (\`%\`). It must be
-- between 3 and 255 characters in length, and it must not start with
-- \`\"goog\"\`.
ptcName :: Lens' ProjectsTopicsCreate Text
ptcName = lens _ptcName (\ s a -> s{_ptcName = a})

-- | JSONP
ptcCallback :: Lens' ProjectsTopicsCreate (Maybe Text)
ptcCallback
  = lens _ptcCallback (\ s a -> s{_ptcCallback = a})

instance GoogleRequest ProjectsTopicsCreate where
        type Rs ProjectsTopicsCreate = Topic
        type Scopes ProjectsTopicsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient ProjectsTopicsCreate'{..}
          = go _ptcName _ptcXgafv _ptcUploadProtocol
              _ptcAccessToken
              _ptcUploadType
              _ptcCallback
              (Just AltJSON)
              _ptcPayload
              pubSubService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTopicsCreateResource)
                      mempty
