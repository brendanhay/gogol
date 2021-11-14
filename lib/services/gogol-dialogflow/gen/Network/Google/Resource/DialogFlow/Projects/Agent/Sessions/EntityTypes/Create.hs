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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.EntityTypes.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a session entity type. If the specified session entity type
-- already exists, overrides the session entity type.
--
-- /See:/ <https://cloud.google.com/dialogflow-enterprise/ Dialogflow API Reference> for @dialogflow.projects.agent.sessions.entityTypes.create@.
module Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.EntityTypes.Create
    (
    -- * REST Resource
      ProjectsAgentSessionsEntityTypesCreateResource

    -- * Creating a Request
    , projectsAgentSessionsEntityTypesCreate
    , ProjectsAgentSessionsEntityTypesCreate

    -- * Request Lenses
    , paSetcParent
    , paSetcXgafv
    , paSetcUploadProtocol
    , paSetcAccessToken
    , paSetcUploadType
    , paSetcPayload
    , paSetcCallback
    ) where

import           Network.Google.DialogFlow.Types
import           Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.agent.sessions.entityTypes.create@ method which the
-- 'ProjectsAgentSessionsEntityTypesCreate' request conforms to.
type ProjectsAgentSessionsEntityTypesCreateResource =
     "v2" :>
       Capture "parent" Text :>
         "entityTypes" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GoogleCloudDialogflowV2SessionEntityType
                         :>
                         Post '[JSON] GoogleCloudDialogflowV2SessionEntityType

-- | Creates a session entity type. If the specified session entity type
-- already exists, overrides the session entity type.
--
-- /See:/ 'projectsAgentSessionsEntityTypesCreate' smart constructor.
data ProjectsAgentSessionsEntityTypesCreate =
  ProjectsAgentSessionsEntityTypesCreate'
    { _paSetcParent         :: !Text
    , _paSetcXgafv          :: !(Maybe Xgafv)
    , _paSetcUploadProtocol :: !(Maybe Text)
    , _paSetcAccessToken    :: !(Maybe Text)
    , _paSetcUploadType     :: !(Maybe Text)
    , _paSetcPayload        :: !GoogleCloudDialogflowV2SessionEntityType
    , _paSetcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsAgentSessionsEntityTypesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paSetcParent'
--
-- * 'paSetcXgafv'
--
-- * 'paSetcUploadProtocol'
--
-- * 'paSetcAccessToken'
--
-- * 'paSetcUploadType'
--
-- * 'paSetcPayload'
--
-- * 'paSetcCallback'
projectsAgentSessionsEntityTypesCreate
    :: Text -- ^ 'paSetcParent'
    -> GoogleCloudDialogflowV2SessionEntityType -- ^ 'paSetcPayload'
    -> ProjectsAgentSessionsEntityTypesCreate
projectsAgentSessionsEntityTypesCreate pPaSetcParent_ pPaSetcPayload_ =
  ProjectsAgentSessionsEntityTypesCreate'
    { _paSetcParent = pPaSetcParent_
    , _paSetcXgafv = Nothing
    , _paSetcUploadProtocol = Nothing
    , _paSetcAccessToken = Nothing
    , _paSetcUploadType = Nothing
    , _paSetcPayload = pPaSetcPayload_
    , _paSetcCallback = Nothing
    }


-- | Required. The session to create a session entity type for. Format:
-- \`projects\/\/agent\/sessions\/\`.
paSetcParent :: Lens' ProjectsAgentSessionsEntityTypesCreate Text
paSetcParent
  = lens _paSetcParent (\ s a -> s{_paSetcParent = a})

-- | V1 error format.
paSetcXgafv :: Lens' ProjectsAgentSessionsEntityTypesCreate (Maybe Xgafv)
paSetcXgafv
  = lens _paSetcXgafv (\ s a -> s{_paSetcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
paSetcUploadProtocol :: Lens' ProjectsAgentSessionsEntityTypesCreate (Maybe Text)
paSetcUploadProtocol
  = lens _paSetcUploadProtocol
      (\ s a -> s{_paSetcUploadProtocol = a})

-- | OAuth access token.
paSetcAccessToken :: Lens' ProjectsAgentSessionsEntityTypesCreate (Maybe Text)
paSetcAccessToken
  = lens _paSetcAccessToken
      (\ s a -> s{_paSetcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
paSetcUploadType :: Lens' ProjectsAgentSessionsEntityTypesCreate (Maybe Text)
paSetcUploadType
  = lens _paSetcUploadType
      (\ s a -> s{_paSetcUploadType = a})

-- | Multipart request metadata.
paSetcPayload :: Lens' ProjectsAgentSessionsEntityTypesCreate GoogleCloudDialogflowV2SessionEntityType
paSetcPayload
  = lens _paSetcPayload
      (\ s a -> s{_paSetcPayload = a})

-- | JSONP
paSetcCallback :: Lens' ProjectsAgentSessionsEntityTypesCreate (Maybe Text)
paSetcCallback
  = lens _paSetcCallback
      (\ s a -> s{_paSetcCallback = a})

instance GoogleRequest
           ProjectsAgentSessionsEntityTypesCreate
         where
        type Rs ProjectsAgentSessionsEntityTypesCreate =
             GoogleCloudDialogflowV2SessionEntityType
        type Scopes ProjectsAgentSessionsEntityTypesCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsAgentSessionsEntityTypesCreate'{..}
          = go _paSetcParent _paSetcXgafv _paSetcUploadProtocol
              _paSetcAccessToken
              _paSetcUploadType
              _paSetcCallback
              (Just AltJSON)
              _paSetcPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsAgentSessionsEntityTypesCreateResource)
                      mempty
