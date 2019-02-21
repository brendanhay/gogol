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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Agent.EntityTypes.Entities.BatchDelete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes entities in the specified entity type. Operation
--
-- /See:/ <https://cloud.google.com/dialogflow-enterprise/ Dialogflow API Reference> for @dialogflow.projects.agent.entityTypes.entities.batchDelete@.
module Network.Google.Resource.DialogFlow.Projects.Agent.EntityTypes.Entities.BatchDelete
    (
    -- * REST Resource
      ProjectsAgentEntityTypesEntitiesBatchDeleteResource

    -- * Creating a Request
    , projectsAgentEntityTypesEntitiesBatchDelete
    , ProjectsAgentEntityTypesEntitiesBatchDelete

    -- * Request Lenses
    , paetebdParent
    , paetebdXgafv
    , paetebdUploadProtocol
    , paetebdAccessToken
    , paetebdUploadType
    , paetebdPayload
    , paetebdCallback
    ) where

import           Network.Google.DialogFlow.Types
import           Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.agent.entityTypes.entities.batchDelete@ method which the
-- 'ProjectsAgentEntityTypesEntitiesBatchDelete' request conforms to.
type ProjectsAgentEntityTypesEntitiesBatchDeleteResource
     =
     "v2" :>
       Capture "parent" Text :>
         "entities:batchDelete" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GoogleCloudDialogflowV2BatchDeleteEntitiesRequest
                         :> Post '[JSON] GoogleLongrunningOperation

-- | Deletes entities in the specified entity type. Operation
--
-- /See:/ 'projectsAgentEntityTypesEntitiesBatchDelete' smart constructor.
data ProjectsAgentEntityTypesEntitiesBatchDelete =
  ProjectsAgentEntityTypesEntitiesBatchDelete'
    { _paetebdParent         :: !Text
    , _paetebdXgafv          :: !(Maybe Xgafv)
    , _paetebdUploadProtocol :: !(Maybe Text)
    , _paetebdAccessToken    :: !(Maybe Text)
    , _paetebdUploadType     :: !(Maybe Text)
    , _paetebdPayload        :: !GoogleCloudDialogflowV2BatchDeleteEntitiesRequest
    , _paetebdCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsAgentEntityTypesEntitiesBatchDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paetebdParent'
--
-- * 'paetebdXgafv'
--
-- * 'paetebdUploadProtocol'
--
-- * 'paetebdAccessToken'
--
-- * 'paetebdUploadType'
--
-- * 'paetebdPayload'
--
-- * 'paetebdCallback'
projectsAgentEntityTypesEntitiesBatchDelete
    :: Text -- ^ 'paetebdParent'
    -> GoogleCloudDialogflowV2BatchDeleteEntitiesRequest -- ^ 'paetebdPayload'
    -> ProjectsAgentEntityTypesEntitiesBatchDelete
projectsAgentEntityTypesEntitiesBatchDelete pPaetebdParent_ pPaetebdPayload_ =
  ProjectsAgentEntityTypesEntitiesBatchDelete'
    { _paetebdParent = pPaetebdParent_
    , _paetebdXgafv = Nothing
    , _paetebdUploadProtocol = Nothing
    , _paetebdAccessToken = Nothing
    , _paetebdUploadType = Nothing
    , _paetebdPayload = pPaetebdPayload_
    , _paetebdCallback = Nothing
    }


-- | Required. The name of the entity type to delete entries for. Format:
-- \`projects\/\/agent\/entityTypes\/\`.
paetebdParent :: Lens' ProjectsAgentEntityTypesEntitiesBatchDelete Text
paetebdParent
  = lens _paetebdParent
      (\ s a -> s{_paetebdParent = a})

-- | V1 error format.
paetebdXgafv :: Lens' ProjectsAgentEntityTypesEntitiesBatchDelete (Maybe Xgafv)
paetebdXgafv
  = lens _paetebdXgafv (\ s a -> s{_paetebdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
paetebdUploadProtocol :: Lens' ProjectsAgentEntityTypesEntitiesBatchDelete (Maybe Text)
paetebdUploadProtocol
  = lens _paetebdUploadProtocol
      (\ s a -> s{_paetebdUploadProtocol = a})

-- | OAuth access token.
paetebdAccessToken :: Lens' ProjectsAgentEntityTypesEntitiesBatchDelete (Maybe Text)
paetebdAccessToken
  = lens _paetebdAccessToken
      (\ s a -> s{_paetebdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
paetebdUploadType :: Lens' ProjectsAgentEntityTypesEntitiesBatchDelete (Maybe Text)
paetebdUploadType
  = lens _paetebdUploadType
      (\ s a -> s{_paetebdUploadType = a})

-- | Multipart request metadata.
paetebdPayload :: Lens' ProjectsAgentEntityTypesEntitiesBatchDelete GoogleCloudDialogflowV2BatchDeleteEntitiesRequest
paetebdPayload
  = lens _paetebdPayload
      (\ s a -> s{_paetebdPayload = a})

-- | JSONP
paetebdCallback :: Lens' ProjectsAgentEntityTypesEntitiesBatchDelete (Maybe Text)
paetebdCallback
  = lens _paetebdCallback
      (\ s a -> s{_paetebdCallback = a})

instance GoogleRequest
           ProjectsAgentEntityTypesEntitiesBatchDelete
         where
        type Rs ProjectsAgentEntityTypesEntitiesBatchDelete =
             GoogleLongrunningOperation
        type Scopes
               ProjectsAgentEntityTypesEntitiesBatchDelete
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsAgentEntityTypesEntitiesBatchDelete'{..}
          = go _paetebdParent _paetebdXgafv
              _paetebdUploadProtocol
              _paetebdAccessToken
              _paetebdUploadType
              _paetebdCallback
              (Just AltJSON)
              _paetebdPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsAgentEntityTypesEntitiesBatchDeleteResource)
                      mempty
