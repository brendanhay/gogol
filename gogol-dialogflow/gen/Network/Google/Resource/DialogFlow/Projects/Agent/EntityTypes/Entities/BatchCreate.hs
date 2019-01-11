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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Agent.EntityTypes.Entities.BatchCreate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates multiple new entities in the specified entity type. Operation
--
-- /See:/ <https://cloud.google.com/dialogflow-enterprise/ Dialogflow API Reference> for @dialogflow.projects.agent.entityTypes.entities.batchCreate@.
module Network.Google.Resource.DialogFlow.Projects.Agent.EntityTypes.Entities.BatchCreate
    (
    -- * REST Resource
      ProjectsAgentEntityTypesEntitiesBatchCreateResource

    -- * Creating a Request
    , projectsAgentEntityTypesEntitiesBatchCreate
    , ProjectsAgentEntityTypesEntitiesBatchCreate

    -- * Request Lenses
    , paetebcParent
    , paetebcXgafv
    , paetebcUploadProtocol
    , paetebcAccessToken
    , paetebcUploadType
    , paetebcPayload
    , paetebcCallback
    ) where

import           Network.Google.DialogFlow.Types
import           Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.agent.entityTypes.entities.batchCreate@ method which the
-- 'ProjectsAgentEntityTypesEntitiesBatchCreate' request conforms to.
type ProjectsAgentEntityTypesEntitiesBatchCreateResource
     =
     "v2" :>
       Capture "parent" Text :>
         "entities:batchCreate" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GoogleCloudDialogflowV2BatchCreateEntitiesRequest
                         :> Post '[JSON] GoogleLongrunningOperation

-- | Creates multiple new entities in the specified entity type. Operation
--
-- /See:/ 'projectsAgentEntityTypesEntitiesBatchCreate' smart constructor.
data ProjectsAgentEntityTypesEntitiesBatchCreate = ProjectsAgentEntityTypesEntitiesBatchCreate'
    { _paetebcParent         :: !Text
    , _paetebcXgafv          :: !(Maybe Xgafv)
    , _paetebcUploadProtocol :: !(Maybe Text)
    , _paetebcAccessToken    :: !(Maybe Text)
    , _paetebcUploadType     :: !(Maybe Text)
    , _paetebcPayload        :: !GoogleCloudDialogflowV2BatchCreateEntitiesRequest
    , _paetebcCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsAgentEntityTypesEntitiesBatchCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paetebcParent'
--
-- * 'paetebcXgafv'
--
-- * 'paetebcUploadProtocol'
--
-- * 'paetebcAccessToken'
--
-- * 'paetebcUploadType'
--
-- * 'paetebcPayload'
--
-- * 'paetebcCallback'
projectsAgentEntityTypesEntitiesBatchCreate
    :: Text -- ^ 'paetebcParent'
    -> GoogleCloudDialogflowV2BatchCreateEntitiesRequest -- ^ 'paetebcPayload'
    -> ProjectsAgentEntityTypesEntitiesBatchCreate
projectsAgentEntityTypesEntitiesBatchCreate pPaetebcParent_ pPaetebcPayload_ =
    ProjectsAgentEntityTypesEntitiesBatchCreate'
    { _paetebcParent = pPaetebcParent_
    , _paetebcXgafv = Nothing
    , _paetebcUploadProtocol = Nothing
    , _paetebcAccessToken = Nothing
    , _paetebcUploadType = Nothing
    , _paetebcPayload = pPaetebcPayload_
    , _paetebcCallback = Nothing
    }

-- | Required. The name of the entity type to create entities in. Format:
-- \`projects\/\/agent\/entityTypes\/\`.
paetebcParent :: Lens' ProjectsAgentEntityTypesEntitiesBatchCreate Text
paetebcParent
  = lens _paetebcParent
      (\ s a -> s{_paetebcParent = a})

-- | V1 error format.
paetebcXgafv :: Lens' ProjectsAgentEntityTypesEntitiesBatchCreate (Maybe Xgafv)
paetebcXgafv
  = lens _paetebcXgafv (\ s a -> s{_paetebcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
paetebcUploadProtocol :: Lens' ProjectsAgentEntityTypesEntitiesBatchCreate (Maybe Text)
paetebcUploadProtocol
  = lens _paetebcUploadProtocol
      (\ s a -> s{_paetebcUploadProtocol = a})

-- | OAuth access token.
paetebcAccessToken :: Lens' ProjectsAgentEntityTypesEntitiesBatchCreate (Maybe Text)
paetebcAccessToken
  = lens _paetebcAccessToken
      (\ s a -> s{_paetebcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
paetebcUploadType :: Lens' ProjectsAgentEntityTypesEntitiesBatchCreate (Maybe Text)
paetebcUploadType
  = lens _paetebcUploadType
      (\ s a -> s{_paetebcUploadType = a})

-- | Multipart request metadata.
paetebcPayload :: Lens' ProjectsAgentEntityTypesEntitiesBatchCreate GoogleCloudDialogflowV2BatchCreateEntitiesRequest
paetebcPayload
  = lens _paetebcPayload
      (\ s a -> s{_paetebcPayload = a})

-- | JSONP
paetebcCallback :: Lens' ProjectsAgentEntityTypesEntitiesBatchCreate (Maybe Text)
paetebcCallback
  = lens _paetebcCallback
      (\ s a -> s{_paetebcCallback = a})

instance GoogleRequest
         ProjectsAgentEntityTypesEntitiesBatchCreate where
        type Rs ProjectsAgentEntityTypesEntitiesBatchCreate =
             GoogleLongrunningOperation
        type Scopes
               ProjectsAgentEntityTypesEntitiesBatchCreate
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsAgentEntityTypesEntitiesBatchCreate'{..}
          = go _paetebcParent _paetebcXgafv
              _paetebcUploadProtocol
              _paetebcAccessToken
              _paetebcUploadType
              _paetebcCallback
              (Just AltJSON)
              _paetebcPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsAgentEntityTypesEntitiesBatchCreateResource)
                      mempty
