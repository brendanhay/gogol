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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.Contexts.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a context. If the specified context already exists, overrides
-- the context.
--
-- /See:/ <https://cloud.google.com/dialogflow-enterprise/ Dialogflow API Reference> for @dialogflow.projects.agent.sessions.contexts.create@.
module Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.Contexts.Create
    (
    -- * REST Resource
      ProjectsAgentSessionsContextsCreateResource

    -- * Creating a Request
    , projectsAgentSessionsContextsCreate
    , ProjectsAgentSessionsContextsCreate

    -- * Request Lenses
    , pasccParent
    , pasccXgafv
    , pasccUploadProtocol
    , pasccAccessToken
    , pasccUploadType
    , pasccPayload
    , pasccCallback
    ) where

import           Network.Google.DialogFlow.Types
import           Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.agent.sessions.contexts.create@ method which the
-- 'ProjectsAgentSessionsContextsCreate' request conforms to.
type ProjectsAgentSessionsContextsCreateResource =
     "v2" :>
       Capture "parent" Text :>
         "contexts" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GoogleCloudDialogflowV2Context :>
                         Post '[JSON] GoogleCloudDialogflowV2Context

-- | Creates a context. If the specified context already exists, overrides
-- the context.
--
-- /See:/ 'projectsAgentSessionsContextsCreate' smart constructor.
data ProjectsAgentSessionsContextsCreate = ProjectsAgentSessionsContextsCreate'
    { _pasccParent         :: !Text
    , _pasccXgafv          :: !(Maybe Xgafv)
    , _pasccUploadProtocol :: !(Maybe Text)
    , _pasccAccessToken    :: !(Maybe Text)
    , _pasccUploadType     :: !(Maybe Text)
    , _pasccPayload        :: !GoogleCloudDialogflowV2Context
    , _pasccCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsAgentSessionsContextsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pasccParent'
--
-- * 'pasccXgafv'
--
-- * 'pasccUploadProtocol'
--
-- * 'pasccAccessToken'
--
-- * 'pasccUploadType'
--
-- * 'pasccPayload'
--
-- * 'pasccCallback'
projectsAgentSessionsContextsCreate
    :: Text -- ^ 'pasccParent'
    -> GoogleCloudDialogflowV2Context -- ^ 'pasccPayload'
    -> ProjectsAgentSessionsContextsCreate
projectsAgentSessionsContextsCreate pPasccParent_ pPasccPayload_ =
    ProjectsAgentSessionsContextsCreate'
    { _pasccParent = pPasccParent_
    , _pasccXgafv = Nothing
    , _pasccUploadProtocol = Nothing
    , _pasccAccessToken = Nothing
    , _pasccUploadType = Nothing
    , _pasccPayload = pPasccPayload_
    , _pasccCallback = Nothing
    }

-- | Required. The session to create a context for. Format:
-- \`projects\/\/agent\/sessions\/\`.
pasccParent :: Lens' ProjectsAgentSessionsContextsCreate Text
pasccParent
  = lens _pasccParent (\ s a -> s{_pasccParent = a})

-- | V1 error format.
pasccXgafv :: Lens' ProjectsAgentSessionsContextsCreate (Maybe Xgafv)
pasccXgafv
  = lens _pasccXgafv (\ s a -> s{_pasccXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pasccUploadProtocol :: Lens' ProjectsAgentSessionsContextsCreate (Maybe Text)
pasccUploadProtocol
  = lens _pasccUploadProtocol
      (\ s a -> s{_pasccUploadProtocol = a})

-- | OAuth access token.
pasccAccessToken :: Lens' ProjectsAgentSessionsContextsCreate (Maybe Text)
pasccAccessToken
  = lens _pasccAccessToken
      (\ s a -> s{_pasccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pasccUploadType :: Lens' ProjectsAgentSessionsContextsCreate (Maybe Text)
pasccUploadType
  = lens _pasccUploadType
      (\ s a -> s{_pasccUploadType = a})

-- | Multipart request metadata.
pasccPayload :: Lens' ProjectsAgentSessionsContextsCreate GoogleCloudDialogflowV2Context
pasccPayload
  = lens _pasccPayload (\ s a -> s{_pasccPayload = a})

-- | JSONP
pasccCallback :: Lens' ProjectsAgentSessionsContextsCreate (Maybe Text)
pasccCallback
  = lens _pasccCallback
      (\ s a -> s{_pasccCallback = a})

instance GoogleRequest
         ProjectsAgentSessionsContextsCreate where
        type Rs ProjectsAgentSessionsContextsCreate =
             GoogleCloudDialogflowV2Context
        type Scopes ProjectsAgentSessionsContextsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsAgentSessionsContextsCreate'{..}
          = go _pasccParent _pasccXgafv _pasccUploadProtocol
              _pasccAccessToken
              _pasccUploadType
              _pasccCallback
              (Just AltJSON)
              _pasccPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsAgentSessionsContextsCreateResource)
                      mempty
