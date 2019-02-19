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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Agent.EntityTypes.Entities.BatchUpdate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates or creates multiple entities in the specified entity type. This
-- method does not affect entities in the entity type that aren\'t
-- explicitly specified in the request. Operation
--
-- /See:/ <https://cloud.google.com/dialogflow-enterprise/ Dialogflow API Reference> for @dialogflow.projects.agent.entityTypes.entities.batchUpdate@.
module Network.Google.Resource.DialogFlow.Projects.Agent.EntityTypes.Entities.BatchUpdate
    (
    -- * REST Resource
      ProjectsAgentEntityTypesEntitiesBatchUpdateResource

    -- * Creating a Request
    , projectsAgentEntityTypesEntitiesBatchUpdate
    , ProjectsAgentEntityTypesEntitiesBatchUpdate

    -- * Request Lenses
    , paetebuParent
    , paetebuXgafv
    , paetebuUploadProtocol
    , paetebuAccessToken
    , paetebuUploadType
    , paetebuPayload
    , paetebuCallback
    ) where

import           Network.Google.DialogFlow.Types
import           Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.agent.entityTypes.entities.batchUpdate@ method which the
-- 'ProjectsAgentEntityTypesEntitiesBatchUpdate' request conforms to.
type ProjectsAgentEntityTypesEntitiesBatchUpdateResource
     =
     "v2" :>
       Capture "parent" Text :>
         "entities:batchUpdate" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GoogleCloudDialogflowV2BatchUpdateEntitiesRequest
                         :> Post '[JSON] GoogleLongrunningOperation

-- | Updates or creates multiple entities in the specified entity type. This
-- method does not affect entities in the entity type that aren\'t
-- explicitly specified in the request. Operation
--
-- /See:/ 'projectsAgentEntityTypesEntitiesBatchUpdate' smart constructor.
data ProjectsAgentEntityTypesEntitiesBatchUpdate =
  ProjectsAgentEntityTypesEntitiesBatchUpdate'
    { _paetebuParent         :: !Text
    , _paetebuXgafv          :: !(Maybe Xgafv)
    , _paetebuUploadProtocol :: !(Maybe Text)
    , _paetebuAccessToken    :: !(Maybe Text)
    , _paetebuUploadType     :: !(Maybe Text)
    , _paetebuPayload        :: !GoogleCloudDialogflowV2BatchUpdateEntitiesRequest
    , _paetebuCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsAgentEntityTypesEntitiesBatchUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paetebuParent'
--
-- * 'paetebuXgafv'
--
-- * 'paetebuUploadProtocol'
--
-- * 'paetebuAccessToken'
--
-- * 'paetebuUploadType'
--
-- * 'paetebuPayload'
--
-- * 'paetebuCallback'
projectsAgentEntityTypesEntitiesBatchUpdate
    :: Text -- ^ 'paetebuParent'
    -> GoogleCloudDialogflowV2BatchUpdateEntitiesRequest -- ^ 'paetebuPayload'
    -> ProjectsAgentEntityTypesEntitiesBatchUpdate
projectsAgentEntityTypesEntitiesBatchUpdate pPaetebuParent_ pPaetebuPayload_ =
  ProjectsAgentEntityTypesEntitiesBatchUpdate'
    { _paetebuParent = pPaetebuParent_
    , _paetebuXgafv = Nothing
    , _paetebuUploadProtocol = Nothing
    , _paetebuAccessToken = Nothing
    , _paetebuUploadType = Nothing
    , _paetebuPayload = pPaetebuPayload_
    , _paetebuCallback = Nothing
    }

-- | Required. The name of the entity type to update or create entities in.
-- Format: \`projects\/\/agent\/entityTypes\/\`.
paetebuParent :: Lens' ProjectsAgentEntityTypesEntitiesBatchUpdate Text
paetebuParent
  = lens _paetebuParent
      (\ s a -> s{_paetebuParent = a})

-- | V1 error format.
paetebuXgafv :: Lens' ProjectsAgentEntityTypesEntitiesBatchUpdate (Maybe Xgafv)
paetebuXgafv
  = lens _paetebuXgafv (\ s a -> s{_paetebuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
paetebuUploadProtocol :: Lens' ProjectsAgentEntityTypesEntitiesBatchUpdate (Maybe Text)
paetebuUploadProtocol
  = lens _paetebuUploadProtocol
      (\ s a -> s{_paetebuUploadProtocol = a})

-- | OAuth access token.
paetebuAccessToken :: Lens' ProjectsAgentEntityTypesEntitiesBatchUpdate (Maybe Text)
paetebuAccessToken
  = lens _paetebuAccessToken
      (\ s a -> s{_paetebuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
paetebuUploadType :: Lens' ProjectsAgentEntityTypesEntitiesBatchUpdate (Maybe Text)
paetebuUploadType
  = lens _paetebuUploadType
      (\ s a -> s{_paetebuUploadType = a})

-- | Multipart request metadata.
paetebuPayload :: Lens' ProjectsAgentEntityTypesEntitiesBatchUpdate GoogleCloudDialogflowV2BatchUpdateEntitiesRequest
paetebuPayload
  = lens _paetebuPayload
      (\ s a -> s{_paetebuPayload = a})

-- | JSONP
paetebuCallback :: Lens' ProjectsAgentEntityTypesEntitiesBatchUpdate (Maybe Text)
paetebuCallback
  = lens _paetebuCallback
      (\ s a -> s{_paetebuCallback = a})

instance GoogleRequest
           ProjectsAgentEntityTypesEntitiesBatchUpdate
         where
        type Rs ProjectsAgentEntityTypesEntitiesBatchUpdate =
             GoogleLongrunningOperation
        type Scopes
               ProjectsAgentEntityTypesEntitiesBatchUpdate
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsAgentEntityTypesEntitiesBatchUpdate'{..}
          = go _paetebuParent _paetebuXgafv
              _paetebuUploadProtocol
              _paetebuAccessToken
              _paetebuUploadType
              _paetebuCallback
              (Just AltJSON)
              _paetebuPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsAgentEntityTypesEntitiesBatchUpdateResource)
                      mempty
