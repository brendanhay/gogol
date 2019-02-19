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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Agent.Intents.BatchUpdate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates\/Creates multiple intents in the specified agent. Operation
--
-- /See:/ <https://cloud.google.com/dialogflow-enterprise/ Dialogflow API Reference> for @dialogflow.projects.agent.intents.batchUpdate@.
module Network.Google.Resource.DialogFlow.Projects.Agent.Intents.BatchUpdate
    (
    -- * REST Resource
      ProjectsAgentIntentsBatchUpdateResource

    -- * Creating a Request
    , projectsAgentIntentsBatchUpdate
    , ProjectsAgentIntentsBatchUpdate

    -- * Request Lenses
    , paibuParent
    , paibuXgafv
    , paibuUploadProtocol
    , paibuAccessToken
    , paibuUploadType
    , paibuPayload
    , paibuCallback
    ) where

import           Network.Google.DialogFlow.Types
import           Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.agent.intents.batchUpdate@ method which the
-- 'ProjectsAgentIntentsBatchUpdate' request conforms to.
type ProjectsAgentIntentsBatchUpdateResource =
     "v2" :>
       Capture "parent" Text :>
         "intents:batchUpdate" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GoogleCloudDialogflowV2BatchUpdateIntentsRequest
                         :> Post '[JSON] GoogleLongrunningOperation

-- | Updates\/Creates multiple intents in the specified agent. Operation
--
-- /See:/ 'projectsAgentIntentsBatchUpdate' smart constructor.
data ProjectsAgentIntentsBatchUpdate =
  ProjectsAgentIntentsBatchUpdate'
    { _paibuParent         :: !Text
    , _paibuXgafv          :: !(Maybe Xgafv)
    , _paibuUploadProtocol :: !(Maybe Text)
    , _paibuAccessToken    :: !(Maybe Text)
    , _paibuUploadType     :: !(Maybe Text)
    , _paibuPayload        :: !GoogleCloudDialogflowV2BatchUpdateIntentsRequest
    , _paibuCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsAgentIntentsBatchUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paibuParent'
--
-- * 'paibuXgafv'
--
-- * 'paibuUploadProtocol'
--
-- * 'paibuAccessToken'
--
-- * 'paibuUploadType'
--
-- * 'paibuPayload'
--
-- * 'paibuCallback'
projectsAgentIntentsBatchUpdate
    :: Text -- ^ 'paibuParent'
    -> GoogleCloudDialogflowV2BatchUpdateIntentsRequest -- ^ 'paibuPayload'
    -> ProjectsAgentIntentsBatchUpdate
projectsAgentIntentsBatchUpdate pPaibuParent_ pPaibuPayload_ =
  ProjectsAgentIntentsBatchUpdate'
    { _paibuParent = pPaibuParent_
    , _paibuXgafv = Nothing
    , _paibuUploadProtocol = Nothing
    , _paibuAccessToken = Nothing
    , _paibuUploadType = Nothing
    , _paibuPayload = pPaibuPayload_
    , _paibuCallback = Nothing
    }


-- | Required. The name of the agent to update or create intents in. Format:
-- \`projects\/\/agent\`.
paibuParent :: Lens' ProjectsAgentIntentsBatchUpdate Text
paibuParent
  = lens _paibuParent (\ s a -> s{_paibuParent = a})

-- | V1 error format.
paibuXgafv :: Lens' ProjectsAgentIntentsBatchUpdate (Maybe Xgafv)
paibuXgafv
  = lens _paibuXgafv (\ s a -> s{_paibuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
paibuUploadProtocol :: Lens' ProjectsAgentIntentsBatchUpdate (Maybe Text)
paibuUploadProtocol
  = lens _paibuUploadProtocol
      (\ s a -> s{_paibuUploadProtocol = a})

-- | OAuth access token.
paibuAccessToken :: Lens' ProjectsAgentIntentsBatchUpdate (Maybe Text)
paibuAccessToken
  = lens _paibuAccessToken
      (\ s a -> s{_paibuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
paibuUploadType :: Lens' ProjectsAgentIntentsBatchUpdate (Maybe Text)
paibuUploadType
  = lens _paibuUploadType
      (\ s a -> s{_paibuUploadType = a})

-- | Multipart request metadata.
paibuPayload :: Lens' ProjectsAgentIntentsBatchUpdate GoogleCloudDialogflowV2BatchUpdateIntentsRequest
paibuPayload
  = lens _paibuPayload (\ s a -> s{_paibuPayload = a})

-- | JSONP
paibuCallback :: Lens' ProjectsAgentIntentsBatchUpdate (Maybe Text)
paibuCallback
  = lens _paibuCallback
      (\ s a -> s{_paibuCallback = a})

instance GoogleRequest
           ProjectsAgentIntentsBatchUpdate
         where
        type Rs ProjectsAgentIntentsBatchUpdate =
             GoogleLongrunningOperation
        type Scopes ProjectsAgentIntentsBatchUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsAgentIntentsBatchUpdate'{..}
          = go _paibuParent _paibuXgafv _paibuUploadProtocol
              _paibuAccessToken
              _paibuUploadType
              _paibuCallback
              (Just AltJSON)
              _paibuPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsAgentIntentsBatchUpdateResource)
                      mempty
