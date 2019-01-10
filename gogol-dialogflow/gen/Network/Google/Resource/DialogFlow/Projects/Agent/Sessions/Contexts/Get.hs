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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.Contexts.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified context.
--
-- /See:/ <https://cloud.google.com/dialogflow-enterprise/ Dialogflow API Reference> for @dialogflow.projects.agent.sessions.contexts.get@.
module Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.Contexts.Get
    (
    -- * REST Resource
      ProjectsAgentSessionsContextsGetResource

    -- * Creating a Request
    , projectsAgentSessionsContextsGet
    , ProjectsAgentSessionsContextsGet

    -- * Request Lenses
    , pascgXgafv
    , pascgUploadProtocol
    , pascgAccessToken
    , pascgUploadType
    , pascgName
    , pascgCallback
    ) where

import           Network.Google.DialogFlow.Types
import           Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.agent.sessions.contexts.get@ method which the
-- 'ProjectsAgentSessionsContextsGet' request conforms to.
type ProjectsAgentSessionsContextsGetResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GoogleCloudDialogflowV2Context

-- | Retrieves the specified context.
--
-- /See:/ 'projectsAgentSessionsContextsGet' smart constructor.
data ProjectsAgentSessionsContextsGet = ProjectsAgentSessionsContextsGet'
    { _pascgXgafv          :: !(Maybe Xgafv)
    , _pascgUploadProtocol :: !(Maybe Text)
    , _pascgAccessToken    :: !(Maybe Text)
    , _pascgUploadType     :: !(Maybe Text)
    , _pascgName           :: !Text
    , _pascgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsAgentSessionsContextsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pascgXgafv'
--
-- * 'pascgUploadProtocol'
--
-- * 'pascgAccessToken'
--
-- * 'pascgUploadType'
--
-- * 'pascgName'
--
-- * 'pascgCallback'
projectsAgentSessionsContextsGet
    :: Text -- ^ 'pascgName'
    -> ProjectsAgentSessionsContextsGet
projectsAgentSessionsContextsGet pPascgName_ =
    ProjectsAgentSessionsContextsGet'
    { _pascgXgafv = Nothing
    , _pascgUploadProtocol = Nothing
    , _pascgAccessToken = Nothing
    , _pascgUploadType = Nothing
    , _pascgName = pPascgName_
    , _pascgCallback = Nothing
    }

-- | V1 error format.
pascgXgafv :: Lens' ProjectsAgentSessionsContextsGet (Maybe Xgafv)
pascgXgafv
  = lens _pascgXgafv (\ s a -> s{_pascgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pascgUploadProtocol :: Lens' ProjectsAgentSessionsContextsGet (Maybe Text)
pascgUploadProtocol
  = lens _pascgUploadProtocol
      (\ s a -> s{_pascgUploadProtocol = a})

-- | OAuth access token.
pascgAccessToken :: Lens' ProjectsAgentSessionsContextsGet (Maybe Text)
pascgAccessToken
  = lens _pascgAccessToken
      (\ s a -> s{_pascgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pascgUploadType :: Lens' ProjectsAgentSessionsContextsGet (Maybe Text)
pascgUploadType
  = lens _pascgUploadType
      (\ s a -> s{_pascgUploadType = a})

-- | Required. The name of the context. Format:
-- \`projects\/\/agent\/sessions\/\/contexts\/\`.
pascgName :: Lens' ProjectsAgentSessionsContextsGet Text
pascgName
  = lens _pascgName (\ s a -> s{_pascgName = a})

-- | JSONP
pascgCallback :: Lens' ProjectsAgentSessionsContextsGet (Maybe Text)
pascgCallback
  = lens _pascgCallback
      (\ s a -> s{_pascgCallback = a})

instance GoogleRequest
         ProjectsAgentSessionsContextsGet where
        type Rs ProjectsAgentSessionsContextsGet =
             GoogleCloudDialogflowV2Context
        type Scopes ProjectsAgentSessionsContextsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsAgentSessionsContextsGet'{..}
          = go _pascgName _pascgXgafv _pascgUploadProtocol
              _pascgAccessToken
              _pascgUploadType
              _pascgCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsAgentSessionsContextsGetResource)
                      mempty
