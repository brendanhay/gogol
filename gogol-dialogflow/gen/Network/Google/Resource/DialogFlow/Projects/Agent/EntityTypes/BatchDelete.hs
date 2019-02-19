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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Agent.EntityTypes.BatchDelete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes entity types in the specified agent. Operation
--
-- /See:/ <https://cloud.google.com/dialogflow-enterprise/ Dialogflow API Reference> for @dialogflow.projects.agent.entityTypes.batchDelete@.
module Network.Google.Resource.DialogFlow.Projects.Agent.EntityTypes.BatchDelete
    (
    -- * REST Resource
      ProjectsAgentEntityTypesBatchDeleteResource

    -- * Creating a Request
    , projectsAgentEntityTypesBatchDelete
    , ProjectsAgentEntityTypesBatchDelete

    -- * Request Lenses
    , paetbdParent
    , paetbdXgafv
    , paetbdUploadProtocol
    , paetbdAccessToken
    , paetbdUploadType
    , paetbdPayload
    , paetbdCallback
    ) where

import           Network.Google.DialogFlow.Types
import           Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.agent.entityTypes.batchDelete@ method which the
-- 'ProjectsAgentEntityTypesBatchDelete' request conforms to.
type ProjectsAgentEntityTypesBatchDeleteResource =
     "v2" :>
       Capture "parent" Text :>
         "entityTypes:batchDelete" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest
                         :> Post '[JSON] GoogleLongrunningOperation

-- | Deletes entity types in the specified agent. Operation
--
-- /See:/ 'projectsAgentEntityTypesBatchDelete' smart constructor.
data ProjectsAgentEntityTypesBatchDelete =
  ProjectsAgentEntityTypesBatchDelete'
    { _paetbdParent         :: !Text
    , _paetbdXgafv          :: !(Maybe Xgafv)
    , _paetbdUploadProtocol :: !(Maybe Text)
    , _paetbdAccessToken    :: !(Maybe Text)
    , _paetbdUploadType     :: !(Maybe Text)
    , _paetbdPayload        :: !GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest
    , _paetbdCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsAgentEntityTypesBatchDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paetbdParent'
--
-- * 'paetbdXgafv'
--
-- * 'paetbdUploadProtocol'
--
-- * 'paetbdAccessToken'
--
-- * 'paetbdUploadType'
--
-- * 'paetbdPayload'
--
-- * 'paetbdCallback'
projectsAgentEntityTypesBatchDelete
    :: Text -- ^ 'paetbdParent'
    -> GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest -- ^ 'paetbdPayload'
    -> ProjectsAgentEntityTypesBatchDelete
projectsAgentEntityTypesBatchDelete pPaetbdParent_ pPaetbdPayload_ =
  ProjectsAgentEntityTypesBatchDelete'
    { _paetbdParent = pPaetbdParent_
    , _paetbdXgafv = Nothing
    , _paetbdUploadProtocol = Nothing
    , _paetbdAccessToken = Nothing
    , _paetbdUploadType = Nothing
    , _paetbdPayload = pPaetbdPayload_
    , _paetbdCallback = Nothing
    }

-- | Required. The name of the agent to delete all entities types for.
-- Format: \`projects\/\/agent\`.
paetbdParent :: Lens' ProjectsAgentEntityTypesBatchDelete Text
paetbdParent
  = lens _paetbdParent (\ s a -> s{_paetbdParent = a})

-- | V1 error format.
paetbdXgafv :: Lens' ProjectsAgentEntityTypesBatchDelete (Maybe Xgafv)
paetbdXgafv
  = lens _paetbdXgafv (\ s a -> s{_paetbdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
paetbdUploadProtocol :: Lens' ProjectsAgentEntityTypesBatchDelete (Maybe Text)
paetbdUploadProtocol
  = lens _paetbdUploadProtocol
      (\ s a -> s{_paetbdUploadProtocol = a})

-- | OAuth access token.
paetbdAccessToken :: Lens' ProjectsAgentEntityTypesBatchDelete (Maybe Text)
paetbdAccessToken
  = lens _paetbdAccessToken
      (\ s a -> s{_paetbdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
paetbdUploadType :: Lens' ProjectsAgentEntityTypesBatchDelete (Maybe Text)
paetbdUploadType
  = lens _paetbdUploadType
      (\ s a -> s{_paetbdUploadType = a})

-- | Multipart request metadata.
paetbdPayload :: Lens' ProjectsAgentEntityTypesBatchDelete GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest
paetbdPayload
  = lens _paetbdPayload
      (\ s a -> s{_paetbdPayload = a})

-- | JSONP
paetbdCallback :: Lens' ProjectsAgentEntityTypesBatchDelete (Maybe Text)
paetbdCallback
  = lens _paetbdCallback
      (\ s a -> s{_paetbdCallback = a})

instance GoogleRequest
           ProjectsAgentEntityTypesBatchDelete
         where
        type Rs ProjectsAgentEntityTypesBatchDelete =
             GoogleLongrunningOperation
        type Scopes ProjectsAgentEntityTypesBatchDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsAgentEntityTypesBatchDelete'{..}
          = go _paetbdParent _paetbdXgafv _paetbdUploadProtocol
              _paetbdAccessToken
              _paetbdUploadType
              _paetbdCallback
              (Just AltJSON)
              _paetbdPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsAgentEntityTypesBatchDeleteResource)
                      mempty
