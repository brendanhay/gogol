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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Agent.EntityTypes.BatchUpdate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates\/Creates multiple entity types in the specified agent. Operation
--
-- /See:/ <https://cloud.google.com/dialogflow-enterprise/ Dialogflow API Reference> for @dialogflow.projects.agent.entityTypes.batchUpdate@.
module Network.Google.Resource.DialogFlow.Projects.Agent.EntityTypes.BatchUpdate
    (
    -- * REST Resource
      ProjectsAgentEntityTypesBatchUpdateResource

    -- * Creating a Request
    , projectsAgentEntityTypesBatchUpdate
    , ProjectsAgentEntityTypesBatchUpdate

    -- * Request Lenses
    , paetbuParent
    , paetbuXgafv
    , paetbuUploadProtocol
    , paetbuAccessToken
    , paetbuUploadType
    , paetbuPayload
    , paetbuCallback
    ) where

import           Network.Google.DialogFlow.Types
import           Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.agent.entityTypes.batchUpdate@ method which the
-- 'ProjectsAgentEntityTypesBatchUpdate' request conforms to.
type ProjectsAgentEntityTypesBatchUpdateResource =
     "v2" :>
       Capture "parent" Text :>
         "entityTypes:batchUpdate" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest
                         :> Post '[JSON] GoogleLongrunningOperation

-- | Updates\/Creates multiple entity types in the specified agent. Operation
--
-- /See:/ 'projectsAgentEntityTypesBatchUpdate' smart constructor.
data ProjectsAgentEntityTypesBatchUpdate =
  ProjectsAgentEntityTypesBatchUpdate'
    { _paetbuParent         :: !Text
    , _paetbuXgafv          :: !(Maybe Xgafv)
    , _paetbuUploadProtocol :: !(Maybe Text)
    , _paetbuAccessToken    :: !(Maybe Text)
    , _paetbuUploadType     :: !(Maybe Text)
    , _paetbuPayload        :: !GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest
    , _paetbuCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsAgentEntityTypesBatchUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paetbuParent'
--
-- * 'paetbuXgafv'
--
-- * 'paetbuUploadProtocol'
--
-- * 'paetbuAccessToken'
--
-- * 'paetbuUploadType'
--
-- * 'paetbuPayload'
--
-- * 'paetbuCallback'
projectsAgentEntityTypesBatchUpdate
    :: Text -- ^ 'paetbuParent'
    -> GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest -- ^ 'paetbuPayload'
    -> ProjectsAgentEntityTypesBatchUpdate
projectsAgentEntityTypesBatchUpdate pPaetbuParent_ pPaetbuPayload_ =
  ProjectsAgentEntityTypesBatchUpdate'
    { _paetbuParent = pPaetbuParent_
    , _paetbuXgafv = Nothing
    , _paetbuUploadProtocol = Nothing
    , _paetbuAccessToken = Nothing
    , _paetbuUploadType = Nothing
    , _paetbuPayload = pPaetbuPayload_
    , _paetbuCallback = Nothing
    }


-- | Required. The name of the agent to update or create entity types in.
-- Format: \`projects\/\/agent\`.
paetbuParent :: Lens' ProjectsAgentEntityTypesBatchUpdate Text
paetbuParent
  = lens _paetbuParent (\ s a -> s{_paetbuParent = a})

-- | V1 error format.
paetbuXgafv :: Lens' ProjectsAgentEntityTypesBatchUpdate (Maybe Xgafv)
paetbuXgafv
  = lens _paetbuXgafv (\ s a -> s{_paetbuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
paetbuUploadProtocol :: Lens' ProjectsAgentEntityTypesBatchUpdate (Maybe Text)
paetbuUploadProtocol
  = lens _paetbuUploadProtocol
      (\ s a -> s{_paetbuUploadProtocol = a})

-- | OAuth access token.
paetbuAccessToken :: Lens' ProjectsAgentEntityTypesBatchUpdate (Maybe Text)
paetbuAccessToken
  = lens _paetbuAccessToken
      (\ s a -> s{_paetbuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
paetbuUploadType :: Lens' ProjectsAgentEntityTypesBatchUpdate (Maybe Text)
paetbuUploadType
  = lens _paetbuUploadType
      (\ s a -> s{_paetbuUploadType = a})

-- | Multipart request metadata.
paetbuPayload :: Lens' ProjectsAgentEntityTypesBatchUpdate GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest
paetbuPayload
  = lens _paetbuPayload
      (\ s a -> s{_paetbuPayload = a})

-- | JSONP
paetbuCallback :: Lens' ProjectsAgentEntityTypesBatchUpdate (Maybe Text)
paetbuCallback
  = lens _paetbuCallback
      (\ s a -> s{_paetbuCallback = a})

instance GoogleRequest
           ProjectsAgentEntityTypesBatchUpdate
         where
        type Rs ProjectsAgentEntityTypesBatchUpdate =
             GoogleLongrunningOperation
        type Scopes ProjectsAgentEntityTypesBatchUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsAgentEntityTypesBatchUpdate'{..}
          = go _paetbuParent _paetbuXgafv _paetbuUploadProtocol
              _paetbuAccessToken
              _paetbuUploadType
              _paetbuCallback
              (Just AltJSON)
              _paetbuPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsAgentEntityTypesBatchUpdateResource)
                      mempty
