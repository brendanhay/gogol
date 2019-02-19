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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.Contexts.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified context.
--
-- /See:/ <https://cloud.google.com/dialogflow-enterprise/ Dialogflow API Reference> for @dialogflow.projects.agent.sessions.contexts.delete@.
module Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.Contexts.Delete
    (
    -- * REST Resource
      ProjectsAgentSessionsContextsDeleteResource

    -- * Creating a Request
    , projectsAgentSessionsContextsDelete
    , ProjectsAgentSessionsContextsDelete

    -- * Request Lenses
    , pascdXgafv
    , pascdUploadProtocol
    , pascdAccessToken
    , pascdUploadType
    , pascdName
    , pascdCallback
    ) where

import           Network.Google.DialogFlow.Types
import           Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.agent.sessions.contexts.delete@ method which the
-- 'ProjectsAgentSessionsContextsDelete' request conforms to.
type ProjectsAgentSessionsContextsDeleteResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Delete '[JSON] GoogleProtobufEmpty

-- | Deletes the specified context.
--
-- /See:/ 'projectsAgentSessionsContextsDelete' smart constructor.
data ProjectsAgentSessionsContextsDelete =
  ProjectsAgentSessionsContextsDelete'
    { _pascdXgafv          :: !(Maybe Xgafv)
    , _pascdUploadProtocol :: !(Maybe Text)
    , _pascdAccessToken    :: !(Maybe Text)
    , _pascdUploadType     :: !(Maybe Text)
    , _pascdName           :: !Text
    , _pascdCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsAgentSessionsContextsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pascdXgafv'
--
-- * 'pascdUploadProtocol'
--
-- * 'pascdAccessToken'
--
-- * 'pascdUploadType'
--
-- * 'pascdName'
--
-- * 'pascdCallback'
projectsAgentSessionsContextsDelete
    :: Text -- ^ 'pascdName'
    -> ProjectsAgentSessionsContextsDelete
projectsAgentSessionsContextsDelete pPascdName_ =
  ProjectsAgentSessionsContextsDelete'
    { _pascdXgafv = Nothing
    , _pascdUploadProtocol = Nothing
    , _pascdAccessToken = Nothing
    , _pascdUploadType = Nothing
    , _pascdName = pPascdName_
    , _pascdCallback = Nothing
    }

-- | V1 error format.
pascdXgafv :: Lens' ProjectsAgentSessionsContextsDelete (Maybe Xgafv)
pascdXgafv
  = lens _pascdXgafv (\ s a -> s{_pascdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pascdUploadProtocol :: Lens' ProjectsAgentSessionsContextsDelete (Maybe Text)
pascdUploadProtocol
  = lens _pascdUploadProtocol
      (\ s a -> s{_pascdUploadProtocol = a})

-- | OAuth access token.
pascdAccessToken :: Lens' ProjectsAgentSessionsContextsDelete (Maybe Text)
pascdAccessToken
  = lens _pascdAccessToken
      (\ s a -> s{_pascdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pascdUploadType :: Lens' ProjectsAgentSessionsContextsDelete (Maybe Text)
pascdUploadType
  = lens _pascdUploadType
      (\ s a -> s{_pascdUploadType = a})

-- | Required. The name of the context to delete. Format:
-- \`projects\/\/agent\/sessions\/\/contexts\/\`.
pascdName :: Lens' ProjectsAgentSessionsContextsDelete Text
pascdName
  = lens _pascdName (\ s a -> s{_pascdName = a})

-- | JSONP
pascdCallback :: Lens' ProjectsAgentSessionsContextsDelete (Maybe Text)
pascdCallback
  = lens _pascdCallback
      (\ s a -> s{_pascdCallback = a})

instance GoogleRequest
           ProjectsAgentSessionsContextsDelete
         where
        type Rs ProjectsAgentSessionsContextsDelete =
             GoogleProtobufEmpty
        type Scopes ProjectsAgentSessionsContextsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsAgentSessionsContextsDelete'{..}
          = go _pascdName _pascdXgafv _pascdUploadProtocol
              _pascdAccessToken
              _pascdUploadType
              _pascdCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsAgentSessionsContextsDeleteResource)
                      mempty
