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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Agent.Train
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Trains the specified agent. Operation
--
-- /See:/ <https://cloud.google.com/dialogflow-enterprise/ Dialogflow API Reference> for @dialogflow.projects.agent.train@.
module Network.Google.Resource.DialogFlow.Projects.Agent.Train
    (
    -- * REST Resource
      ProjectsAgentTrainResource

    -- * Creating a Request
    , projectsAgentTrain
    , ProjectsAgentTrain

    -- * Request Lenses
    , patParent
    , patXgafv
    , patUploadProtocol
    , patAccessToken
    , patUploadType
    , patPayload
    , patCallback
    ) where

import           Network.Google.DialogFlow.Types
import           Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.agent.train@ method which the
-- 'ProjectsAgentTrain' request conforms to.
type ProjectsAgentTrainResource =
     "v2" :>
       Capture "parent" Text :>
         "agent:train" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GoogleCloudDialogflowV2TrainAgentRequest
                         :> Post '[JSON] GoogleLongrunningOperation

-- | Trains the specified agent. Operation
--
-- /See:/ 'projectsAgentTrain' smart constructor.
data ProjectsAgentTrain =
  ProjectsAgentTrain'
    { _patParent         :: !Text
    , _patXgafv          :: !(Maybe Xgafv)
    , _patUploadProtocol :: !(Maybe Text)
    , _patAccessToken    :: !(Maybe Text)
    , _patUploadType     :: !(Maybe Text)
    , _patPayload        :: !GoogleCloudDialogflowV2TrainAgentRequest
    , _patCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsAgentTrain' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'patParent'
--
-- * 'patXgafv'
--
-- * 'patUploadProtocol'
--
-- * 'patAccessToken'
--
-- * 'patUploadType'
--
-- * 'patPayload'
--
-- * 'patCallback'
projectsAgentTrain
    :: Text -- ^ 'patParent'
    -> GoogleCloudDialogflowV2TrainAgentRequest -- ^ 'patPayload'
    -> ProjectsAgentTrain
projectsAgentTrain pPatParent_ pPatPayload_ =
  ProjectsAgentTrain'
    { _patParent = pPatParent_
    , _patXgafv = Nothing
    , _patUploadProtocol = Nothing
    , _patAccessToken = Nothing
    , _patUploadType = Nothing
    , _patPayload = pPatPayload_
    , _patCallback = Nothing
    }

-- | Required. The project that the agent to train is associated with.
-- Format: \`projects\/\`.
patParent :: Lens' ProjectsAgentTrain Text
patParent
  = lens _patParent (\ s a -> s{_patParent = a})

-- | V1 error format.
patXgafv :: Lens' ProjectsAgentTrain (Maybe Xgafv)
patXgafv = lens _patXgafv (\ s a -> s{_patXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
patUploadProtocol :: Lens' ProjectsAgentTrain (Maybe Text)
patUploadProtocol
  = lens _patUploadProtocol
      (\ s a -> s{_patUploadProtocol = a})

-- | OAuth access token.
patAccessToken :: Lens' ProjectsAgentTrain (Maybe Text)
patAccessToken
  = lens _patAccessToken
      (\ s a -> s{_patAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
patUploadType :: Lens' ProjectsAgentTrain (Maybe Text)
patUploadType
  = lens _patUploadType
      (\ s a -> s{_patUploadType = a})

-- | Multipart request metadata.
patPayload :: Lens' ProjectsAgentTrain GoogleCloudDialogflowV2TrainAgentRequest
patPayload
  = lens _patPayload (\ s a -> s{_patPayload = a})

-- | JSONP
patCallback :: Lens' ProjectsAgentTrain (Maybe Text)
patCallback
  = lens _patCallback (\ s a -> s{_patCallback = a})

instance GoogleRequest ProjectsAgentTrain where
        type Rs ProjectsAgentTrain =
             GoogleLongrunningOperation
        type Scopes ProjectsAgentTrain =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsAgentTrain'{..}
          = go _patParent _patXgafv _patUploadProtocol
              _patAccessToken
              _patUploadType
              _patCallback
              (Just AltJSON)
              _patPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsAgentTrainResource)
                      mempty
