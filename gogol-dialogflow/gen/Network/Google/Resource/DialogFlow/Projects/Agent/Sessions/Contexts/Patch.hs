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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.Contexts.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified context.
--
-- /See:/ <https://cloud.google.com/dialogflow-enterprise/ Dialogflow API Reference> for @dialogflow.projects.agent.sessions.contexts.patch@.
module Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.Contexts.Patch
    (
    -- * REST Resource
      ProjectsAgentSessionsContextsPatchResource

    -- * Creating a Request
    , projectsAgentSessionsContextsPatch
    , ProjectsAgentSessionsContextsPatch

    -- * Request Lenses
    , pascpXgafv
    , pascpUploadProtocol
    , pascpUpdateMask
    , pascpAccessToken
    , pascpUploadType
    , pascpPayload
    , pascpName
    , pascpCallback
    ) where

import           Network.Google.DialogFlow.Types
import           Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.agent.sessions.contexts.patch@ method which the
-- 'ProjectsAgentSessionsContextsPatch' request conforms to.
type ProjectsAgentSessionsContextsPatchResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GoogleCloudDialogflowV2Context :>
                         Patch '[JSON] GoogleCloudDialogflowV2Context

-- | Updates the specified context.
--
-- /See:/ 'projectsAgentSessionsContextsPatch' smart constructor.
data ProjectsAgentSessionsContextsPatch =
  ProjectsAgentSessionsContextsPatch'
    { _pascpXgafv          :: !(Maybe Xgafv)
    , _pascpUploadProtocol :: !(Maybe Text)
    , _pascpUpdateMask     :: !(Maybe GFieldMask)
    , _pascpAccessToken    :: !(Maybe Text)
    , _pascpUploadType     :: !(Maybe Text)
    , _pascpPayload        :: !GoogleCloudDialogflowV2Context
    , _pascpName           :: !Text
    , _pascpCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsAgentSessionsContextsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pascpXgafv'
--
-- * 'pascpUploadProtocol'
--
-- * 'pascpUpdateMask'
--
-- * 'pascpAccessToken'
--
-- * 'pascpUploadType'
--
-- * 'pascpPayload'
--
-- * 'pascpName'
--
-- * 'pascpCallback'
projectsAgentSessionsContextsPatch
    :: GoogleCloudDialogflowV2Context -- ^ 'pascpPayload'
    -> Text -- ^ 'pascpName'
    -> ProjectsAgentSessionsContextsPatch
projectsAgentSessionsContextsPatch pPascpPayload_ pPascpName_ =
  ProjectsAgentSessionsContextsPatch'
    { _pascpXgafv = Nothing
    , _pascpUploadProtocol = Nothing
    , _pascpUpdateMask = Nothing
    , _pascpAccessToken = Nothing
    , _pascpUploadType = Nothing
    , _pascpPayload = pPascpPayload_
    , _pascpName = pPascpName_
    , _pascpCallback = Nothing
    }


-- | V1 error format.
pascpXgafv :: Lens' ProjectsAgentSessionsContextsPatch (Maybe Xgafv)
pascpXgafv
  = lens _pascpXgafv (\ s a -> s{_pascpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pascpUploadProtocol :: Lens' ProjectsAgentSessionsContextsPatch (Maybe Text)
pascpUploadProtocol
  = lens _pascpUploadProtocol
      (\ s a -> s{_pascpUploadProtocol = a})

-- | Optional. The mask to control which fields get updated.
pascpUpdateMask :: Lens' ProjectsAgentSessionsContextsPatch (Maybe GFieldMask)
pascpUpdateMask
  = lens _pascpUpdateMask
      (\ s a -> s{_pascpUpdateMask = a})

-- | OAuth access token.
pascpAccessToken :: Lens' ProjectsAgentSessionsContextsPatch (Maybe Text)
pascpAccessToken
  = lens _pascpAccessToken
      (\ s a -> s{_pascpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pascpUploadType :: Lens' ProjectsAgentSessionsContextsPatch (Maybe Text)
pascpUploadType
  = lens _pascpUploadType
      (\ s a -> s{_pascpUploadType = a})

-- | Multipart request metadata.
pascpPayload :: Lens' ProjectsAgentSessionsContextsPatch GoogleCloudDialogflowV2Context
pascpPayload
  = lens _pascpPayload (\ s a -> s{_pascpPayload = a})

-- | Required. The unique identifier of the context. Format:
-- \`projects\/\/agent\/sessions\/\/contexts\/\`. The \`Context ID\` is
-- always converted to lowercase, may only contain characters in
-- [a-zA-Z0-9_-%] and may be at most 250 bytes long.
pascpName :: Lens' ProjectsAgentSessionsContextsPatch Text
pascpName
  = lens _pascpName (\ s a -> s{_pascpName = a})

-- | JSONP
pascpCallback :: Lens' ProjectsAgentSessionsContextsPatch (Maybe Text)
pascpCallback
  = lens _pascpCallback
      (\ s a -> s{_pascpCallback = a})

instance GoogleRequest
           ProjectsAgentSessionsContextsPatch
         where
        type Rs ProjectsAgentSessionsContextsPatch =
             GoogleCloudDialogflowV2Context
        type Scopes ProjectsAgentSessionsContextsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsAgentSessionsContextsPatch'{..}
          = go _pascpName _pascpXgafv _pascpUploadProtocol
              _pascpUpdateMask
              _pascpAccessToken
              _pascpUploadType
              _pascpCallback
              (Just AltJSON)
              _pascpPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsAgentSessionsContextsPatchResource)
                      mempty
