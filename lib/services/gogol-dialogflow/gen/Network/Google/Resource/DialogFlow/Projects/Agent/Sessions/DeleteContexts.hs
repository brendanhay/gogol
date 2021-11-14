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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.DeleteContexts
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes all active contexts in the specified session.
--
-- /See:/ <https://cloud.google.com/dialogflow-enterprise/ Dialogflow API Reference> for @dialogflow.projects.agent.sessions.deleteContexts@.
module Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.DeleteContexts
    (
    -- * REST Resource
      ProjectsAgentSessionsDeleteContextsResource

    -- * Creating a Request
    , projectsAgentSessionsDeleteContexts
    , ProjectsAgentSessionsDeleteContexts

    -- * Request Lenses
    , pasdcParent
    , pasdcXgafv
    , pasdcUploadProtocol
    , pasdcAccessToken
    , pasdcUploadType
    , pasdcCallback
    ) where

import           Network.Google.DialogFlow.Types
import           Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.agent.sessions.deleteContexts@ method which the
-- 'ProjectsAgentSessionsDeleteContexts' request conforms to.
type ProjectsAgentSessionsDeleteContextsResource =
     "v2" :>
       Capture "parent" Text :>
         "contexts" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Delete '[JSON] GoogleProtobufEmpty

-- | Deletes all active contexts in the specified session.
--
-- /See:/ 'projectsAgentSessionsDeleteContexts' smart constructor.
data ProjectsAgentSessionsDeleteContexts =
  ProjectsAgentSessionsDeleteContexts'
    { _pasdcParent         :: !Text
    , _pasdcXgafv          :: !(Maybe Xgafv)
    , _pasdcUploadProtocol :: !(Maybe Text)
    , _pasdcAccessToken    :: !(Maybe Text)
    , _pasdcUploadType     :: !(Maybe Text)
    , _pasdcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsAgentSessionsDeleteContexts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pasdcParent'
--
-- * 'pasdcXgafv'
--
-- * 'pasdcUploadProtocol'
--
-- * 'pasdcAccessToken'
--
-- * 'pasdcUploadType'
--
-- * 'pasdcCallback'
projectsAgentSessionsDeleteContexts
    :: Text -- ^ 'pasdcParent'
    -> ProjectsAgentSessionsDeleteContexts
projectsAgentSessionsDeleteContexts pPasdcParent_ =
  ProjectsAgentSessionsDeleteContexts'
    { _pasdcParent = pPasdcParent_
    , _pasdcXgafv = Nothing
    , _pasdcUploadProtocol = Nothing
    , _pasdcAccessToken = Nothing
    , _pasdcUploadType = Nothing
    , _pasdcCallback = Nothing
    }


-- | Required. The name of the session to delete all contexts from. Format:
-- \`projects\/\/agent\/sessions\/\`.
pasdcParent :: Lens' ProjectsAgentSessionsDeleteContexts Text
pasdcParent
  = lens _pasdcParent (\ s a -> s{_pasdcParent = a})

-- | V1 error format.
pasdcXgafv :: Lens' ProjectsAgentSessionsDeleteContexts (Maybe Xgafv)
pasdcXgafv
  = lens _pasdcXgafv (\ s a -> s{_pasdcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pasdcUploadProtocol :: Lens' ProjectsAgentSessionsDeleteContexts (Maybe Text)
pasdcUploadProtocol
  = lens _pasdcUploadProtocol
      (\ s a -> s{_pasdcUploadProtocol = a})

-- | OAuth access token.
pasdcAccessToken :: Lens' ProjectsAgentSessionsDeleteContexts (Maybe Text)
pasdcAccessToken
  = lens _pasdcAccessToken
      (\ s a -> s{_pasdcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pasdcUploadType :: Lens' ProjectsAgentSessionsDeleteContexts (Maybe Text)
pasdcUploadType
  = lens _pasdcUploadType
      (\ s a -> s{_pasdcUploadType = a})

-- | JSONP
pasdcCallback :: Lens' ProjectsAgentSessionsDeleteContexts (Maybe Text)
pasdcCallback
  = lens _pasdcCallback
      (\ s a -> s{_pasdcCallback = a})

instance GoogleRequest
           ProjectsAgentSessionsDeleteContexts
         where
        type Rs ProjectsAgentSessionsDeleteContexts =
             GoogleProtobufEmpty
        type Scopes ProjectsAgentSessionsDeleteContexts =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsAgentSessionsDeleteContexts'{..}
          = go _pasdcParent _pasdcXgafv _pasdcUploadProtocol
              _pasdcAccessToken
              _pasdcUploadType
              _pasdcCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsAgentSessionsDeleteContextsResource)
                      mempty
