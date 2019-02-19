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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Agent.Intents.BatchDelete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes intents in the specified agent. Operation
--
-- /See:/ <https://cloud.google.com/dialogflow-enterprise/ Dialogflow API Reference> for @dialogflow.projects.agent.intents.batchDelete@.
module Network.Google.Resource.DialogFlow.Projects.Agent.Intents.BatchDelete
    (
    -- * REST Resource
      ProjectsAgentIntentsBatchDeleteResource

    -- * Creating a Request
    , projectsAgentIntentsBatchDelete
    , ProjectsAgentIntentsBatchDelete

    -- * Request Lenses
    , paibdParent
    , paibdXgafv
    , paibdUploadProtocol
    , paibdAccessToken
    , paibdUploadType
    , paibdPayload
    , paibdCallback
    ) where

import           Network.Google.DialogFlow.Types
import           Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.agent.intents.batchDelete@ method which the
-- 'ProjectsAgentIntentsBatchDelete' request conforms to.
type ProjectsAgentIntentsBatchDeleteResource =
     "v2" :>
       Capture "parent" Text :>
         "intents:batchDelete" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GoogleCloudDialogflowV2BatchDeleteIntentsRequest
                         :> Post '[JSON] GoogleLongrunningOperation

-- | Deletes intents in the specified agent. Operation
--
-- /See:/ 'projectsAgentIntentsBatchDelete' smart constructor.
data ProjectsAgentIntentsBatchDelete =
  ProjectsAgentIntentsBatchDelete'
    { _paibdParent         :: !Text
    , _paibdXgafv          :: !(Maybe Xgafv)
    , _paibdUploadProtocol :: !(Maybe Text)
    , _paibdAccessToken    :: !(Maybe Text)
    , _paibdUploadType     :: !(Maybe Text)
    , _paibdPayload        :: !GoogleCloudDialogflowV2BatchDeleteIntentsRequest
    , _paibdCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsAgentIntentsBatchDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paibdParent'
--
-- * 'paibdXgafv'
--
-- * 'paibdUploadProtocol'
--
-- * 'paibdAccessToken'
--
-- * 'paibdUploadType'
--
-- * 'paibdPayload'
--
-- * 'paibdCallback'
projectsAgentIntentsBatchDelete
    :: Text -- ^ 'paibdParent'
    -> GoogleCloudDialogflowV2BatchDeleteIntentsRequest -- ^ 'paibdPayload'
    -> ProjectsAgentIntentsBatchDelete
projectsAgentIntentsBatchDelete pPaibdParent_ pPaibdPayload_ =
  ProjectsAgentIntentsBatchDelete'
    { _paibdParent = pPaibdParent_
    , _paibdXgafv = Nothing
    , _paibdUploadProtocol = Nothing
    , _paibdAccessToken = Nothing
    , _paibdUploadType = Nothing
    , _paibdPayload = pPaibdPayload_
    , _paibdCallback = Nothing
    }

-- | Required. The name of the agent to delete all entities types for.
-- Format: \`projects\/\/agent\`.
paibdParent :: Lens' ProjectsAgentIntentsBatchDelete Text
paibdParent
  = lens _paibdParent (\ s a -> s{_paibdParent = a})

-- | V1 error format.
paibdXgafv :: Lens' ProjectsAgentIntentsBatchDelete (Maybe Xgafv)
paibdXgafv
  = lens _paibdXgafv (\ s a -> s{_paibdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
paibdUploadProtocol :: Lens' ProjectsAgentIntentsBatchDelete (Maybe Text)
paibdUploadProtocol
  = lens _paibdUploadProtocol
      (\ s a -> s{_paibdUploadProtocol = a})

-- | OAuth access token.
paibdAccessToken :: Lens' ProjectsAgentIntentsBatchDelete (Maybe Text)
paibdAccessToken
  = lens _paibdAccessToken
      (\ s a -> s{_paibdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
paibdUploadType :: Lens' ProjectsAgentIntentsBatchDelete (Maybe Text)
paibdUploadType
  = lens _paibdUploadType
      (\ s a -> s{_paibdUploadType = a})

-- | Multipart request metadata.
paibdPayload :: Lens' ProjectsAgentIntentsBatchDelete GoogleCloudDialogflowV2BatchDeleteIntentsRequest
paibdPayload
  = lens _paibdPayload (\ s a -> s{_paibdPayload = a})

-- | JSONP
paibdCallback :: Lens' ProjectsAgentIntentsBatchDelete (Maybe Text)
paibdCallback
  = lens _paibdCallback
      (\ s a -> s{_paibdCallback = a})

instance GoogleRequest
           ProjectsAgentIntentsBatchDelete
         where
        type Rs ProjectsAgentIntentsBatchDelete =
             GoogleLongrunningOperation
        type Scopes ProjectsAgentIntentsBatchDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsAgentIntentsBatchDelete'{..}
          = go _paibdParent _paibdXgafv _paibdUploadProtocol
              _paibdAccessToken
              _paibdUploadType
              _paibdCallback
              (Just AltJSON)
              _paibdPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsAgentIntentsBatchDeleteResource)
                      mempty
