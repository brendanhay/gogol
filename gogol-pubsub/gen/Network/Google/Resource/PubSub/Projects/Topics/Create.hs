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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates the given topic with the given name.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Google Cloud Pub/Sub API Reference> for @PubsubProjectsTopicsCreate@.
module Network.Google.Resource.PubSub.Projects.Topics.Create
    (
    -- * REST Resource
      ProjectsTopicsCreateResource

    -- * Creating a Request
    , projectsTopicsCreate'
    , ProjectsTopicsCreate'

    -- * Request Lenses
    , ptcXgafv
    , ptcUploadProtocol
    , ptcPp
    , ptcAccessToken
    , ptcUploadType
    , ptcPayload
    , ptcBearerToken
    , ptcName
    , ptcCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @PubsubProjectsTopicsCreate@ method which the
-- 'ProjectsTopicsCreate'' request conforms to.
type ProjectsTopicsCreateResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Topic :> Put '[JSON] Topic

-- | Creates the given topic with the given name.
--
-- /See:/ 'projectsTopicsCreate'' smart constructor.
data ProjectsTopicsCreate' = ProjectsTopicsCreate'
    { _ptcXgafv          :: !(Maybe Text)
    , _ptcUploadProtocol :: !(Maybe Text)
    , _ptcPp             :: !Bool
    , _ptcAccessToken    :: !(Maybe Text)
    , _ptcUploadType     :: !(Maybe Text)
    , _ptcPayload        :: !Topic
    , _ptcBearerToken    :: !(Maybe Text)
    , _ptcName           :: !Text
    , _ptcCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsTopicsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptcXgafv'
--
-- * 'ptcUploadProtocol'
--
-- * 'ptcPp'
--
-- * 'ptcAccessToken'
--
-- * 'ptcUploadType'
--
-- * 'ptcPayload'
--
-- * 'ptcBearerToken'
--
-- * 'ptcName'
--
-- * 'ptcCallback'
projectsTopicsCreate'
    :: Topic -- ^ 'payload'
    -> Text -- ^ 'name'
    -> ProjectsTopicsCreate'
projectsTopicsCreate' pPtcPayload_ pPtcName_ =
    ProjectsTopicsCreate'
    { _ptcXgafv = Nothing
    , _ptcUploadProtocol = Nothing
    , _ptcPp = True
    , _ptcAccessToken = Nothing
    , _ptcUploadType = Nothing
    , _ptcPayload = pPtcPayload_
    , _ptcBearerToken = Nothing
    , _ptcName = pPtcName_
    , _ptcCallback = Nothing
    }

-- | V1 error format.
ptcXgafv :: Lens' ProjectsTopicsCreate' (Maybe Text)
ptcXgafv = lens _ptcXgafv (\ s a -> s{_ptcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptcUploadProtocol :: Lens' ProjectsTopicsCreate' (Maybe Text)
ptcUploadProtocol
  = lens _ptcUploadProtocol
      (\ s a -> s{_ptcUploadProtocol = a})

-- | Pretty-print response.
ptcPp :: Lens' ProjectsTopicsCreate' Bool
ptcPp = lens _ptcPp (\ s a -> s{_ptcPp = a})

-- | OAuth access token.
ptcAccessToken :: Lens' ProjectsTopicsCreate' (Maybe Text)
ptcAccessToken
  = lens _ptcAccessToken
      (\ s a -> s{_ptcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptcUploadType :: Lens' ProjectsTopicsCreate' (Maybe Text)
ptcUploadType
  = lens _ptcUploadType
      (\ s a -> s{_ptcUploadType = a})

-- | Multipart request metadata.
ptcPayload :: Lens' ProjectsTopicsCreate' Topic
ptcPayload
  = lens _ptcPayload (\ s a -> s{_ptcPayload = a})

-- | OAuth bearer token.
ptcBearerToken :: Lens' ProjectsTopicsCreate' (Maybe Text)
ptcBearerToken
  = lens _ptcBearerToken
      (\ s a -> s{_ptcBearerToken = a})

-- | The name of the topic. It must have the format
-- \`\"projects\/{project}\/topics\/{topic}\"\`. \`{topic}\` must start
-- with a letter, and contain only letters (\`[A-Za-z]\`), numbers
-- (\`[0-9]\`), dashes (\`-\`), underscores (\`_\`), periods (\`.\`),
-- tildes (\`~\`), plus (\`+\`) or percent signs (\`%\`). It must be
-- between 3 and 255 characters in length, and it must not start with
-- \`\"goog\"\`.
ptcName :: Lens' ProjectsTopicsCreate' Text
ptcName = lens _ptcName (\ s a -> s{_ptcName = a})

-- | JSONP
ptcCallback :: Lens' ProjectsTopicsCreate' (Maybe Text)
ptcCallback
  = lens _ptcCallback (\ s a -> s{_ptcCallback = a})

instance GoogleRequest ProjectsTopicsCreate' where
        type Rs ProjectsTopicsCreate' = Topic
        requestClient ProjectsTopicsCreate'{..}
          = go _ptcName _ptcXgafv _ptcUploadProtocol
              (Just _ptcPp)
              _ptcAccessToken
              _ptcUploadType
              _ptcBearerToken
              _ptcCallback
              (Just AltJSON)
              _ptcPayload
              pubSub
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTopicsCreateResource)
                      mempty
