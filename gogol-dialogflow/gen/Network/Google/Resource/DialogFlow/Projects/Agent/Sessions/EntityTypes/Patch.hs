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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.EntityTypes.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified session entity type.
--
-- /See:/ <https://cloud.google.com/dialogflow-enterprise/ Dialogflow API Reference> for @dialogflow.projects.agent.sessions.entityTypes.patch@.
module Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.EntityTypes.Patch
    (
    -- * REST Resource
      ProjectsAgentSessionsEntityTypesPatchResource

    -- * Creating a Request
    , projectsAgentSessionsEntityTypesPatch
    , ProjectsAgentSessionsEntityTypesPatch

    -- * Request Lenses
    , paSetpXgafv
    , paSetpUploadProtocol
    , paSetpUpdateMask
    , paSetpAccessToken
    , paSetpUploadType
    , paSetpPayload
    , paSetpName
    , paSetpCallback
    ) where

import           Network.Google.DialogFlow.Types
import           Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.agent.sessions.entityTypes.patch@ method which the
-- 'ProjectsAgentSessionsEntityTypesPatch' request conforms to.
type ProjectsAgentSessionsEntityTypesPatchResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GoogleCloudDialogflowV2SessionEntityType
                         :>
                         Patch '[JSON]
                           GoogleCloudDialogflowV2SessionEntityType

-- | Updates the specified session entity type.
--
-- /See:/ 'projectsAgentSessionsEntityTypesPatch' smart constructor.
data ProjectsAgentSessionsEntityTypesPatch =
  ProjectsAgentSessionsEntityTypesPatch'
    { _paSetpXgafv          :: !(Maybe Xgafv)
    , _paSetpUploadProtocol :: !(Maybe Text)
    , _paSetpUpdateMask     :: !(Maybe GFieldMask)
    , _paSetpAccessToken    :: !(Maybe Text)
    , _paSetpUploadType     :: !(Maybe Text)
    , _paSetpPayload        :: !GoogleCloudDialogflowV2SessionEntityType
    , _paSetpName           :: !Text
    , _paSetpCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsAgentSessionsEntityTypesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paSetpXgafv'
--
-- * 'paSetpUploadProtocol'
--
-- * 'paSetpUpdateMask'
--
-- * 'paSetpAccessToken'
--
-- * 'paSetpUploadType'
--
-- * 'paSetpPayload'
--
-- * 'paSetpName'
--
-- * 'paSetpCallback'
projectsAgentSessionsEntityTypesPatch
    :: GoogleCloudDialogflowV2SessionEntityType -- ^ 'paSetpPayload'
    -> Text -- ^ 'paSetpName'
    -> ProjectsAgentSessionsEntityTypesPatch
projectsAgentSessionsEntityTypesPatch pPaSetpPayload_ pPaSetpName_ =
  ProjectsAgentSessionsEntityTypesPatch'
    { _paSetpXgafv = Nothing
    , _paSetpUploadProtocol = Nothing
    , _paSetpUpdateMask = Nothing
    , _paSetpAccessToken = Nothing
    , _paSetpUploadType = Nothing
    , _paSetpPayload = pPaSetpPayload_
    , _paSetpName = pPaSetpName_
    , _paSetpCallback = Nothing
    }

-- | V1 error format.
paSetpXgafv :: Lens' ProjectsAgentSessionsEntityTypesPatch (Maybe Xgafv)
paSetpXgafv
  = lens _paSetpXgafv (\ s a -> s{_paSetpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
paSetpUploadProtocol :: Lens' ProjectsAgentSessionsEntityTypesPatch (Maybe Text)
paSetpUploadProtocol
  = lens _paSetpUploadProtocol
      (\ s a -> s{_paSetpUploadProtocol = a})

-- | Optional. The mask to control which fields get updated.
paSetpUpdateMask :: Lens' ProjectsAgentSessionsEntityTypesPatch (Maybe GFieldMask)
paSetpUpdateMask
  = lens _paSetpUpdateMask
      (\ s a -> s{_paSetpUpdateMask = a})

-- | OAuth access token.
paSetpAccessToken :: Lens' ProjectsAgentSessionsEntityTypesPatch (Maybe Text)
paSetpAccessToken
  = lens _paSetpAccessToken
      (\ s a -> s{_paSetpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
paSetpUploadType :: Lens' ProjectsAgentSessionsEntityTypesPatch (Maybe Text)
paSetpUploadType
  = lens _paSetpUploadType
      (\ s a -> s{_paSetpUploadType = a})

-- | Multipart request metadata.
paSetpPayload :: Lens' ProjectsAgentSessionsEntityTypesPatch GoogleCloudDialogflowV2SessionEntityType
paSetpPayload
  = lens _paSetpPayload
      (\ s a -> s{_paSetpPayload = a})

-- | Required. The unique identifier of this session entity type. Format:
-- \`projects\/\/agent\/sessions\/\/entityTypes\/\`. \`\` must be the
-- display name of an existing entity type in the same agent that will be
-- overridden or supplemented.
paSetpName :: Lens' ProjectsAgentSessionsEntityTypesPatch Text
paSetpName
  = lens _paSetpName (\ s a -> s{_paSetpName = a})

-- | JSONP
paSetpCallback :: Lens' ProjectsAgentSessionsEntityTypesPatch (Maybe Text)
paSetpCallback
  = lens _paSetpCallback
      (\ s a -> s{_paSetpCallback = a})

instance GoogleRequest
           ProjectsAgentSessionsEntityTypesPatch
         where
        type Rs ProjectsAgentSessionsEntityTypesPatch =
             GoogleCloudDialogflowV2SessionEntityType
        type Scopes ProjectsAgentSessionsEntityTypesPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsAgentSessionsEntityTypesPatch'{..}
          = go _paSetpName _paSetpXgafv _paSetpUploadProtocol
              _paSetpUpdateMask
              _paSetpAccessToken
              _paSetpUploadType
              _paSetpCallback
              (Just AltJSON)
              _paSetpPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsAgentSessionsEntityTypesPatchResource)
                      mempty
