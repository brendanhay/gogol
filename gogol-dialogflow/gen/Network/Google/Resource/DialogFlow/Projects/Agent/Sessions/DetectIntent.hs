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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.DetectIntent
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Processes a natural language query and returns structured, actionable
-- data as a result. This method is not idempotent, because it may cause
-- contexts and session entity types to be updated, which in turn might
-- affect results of future queries.
--
-- /See:/ <https://cloud.google.com/dialogflow-enterprise/ Dialogflow API Reference> for @dialogflow.projects.agent.sessions.detectIntent@.
module Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.DetectIntent
    (
    -- * REST Resource
      ProjectsAgentSessionsDetectIntentResource

    -- * Creating a Request
    , projectsAgentSessionsDetectIntent
    , ProjectsAgentSessionsDetectIntent

    -- * Request Lenses
    , pasdiXgafv
    , pasdiUploadProtocol
    , pasdiAccessToken
    , pasdiUploadType
    , pasdiPayload
    , pasdiSession
    , pasdiCallback
    ) where

import           Network.Google.DialogFlow.Types
import           Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.agent.sessions.detectIntent@ method which the
-- 'ProjectsAgentSessionsDetectIntent' request conforms to.
type ProjectsAgentSessionsDetectIntentResource =
     "v2" :>
       CaptureMode "session" "detectIntent" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GoogleCloudDialogflowV2DetectIntentRequest
                       :>
                       Post '[JSON]
                         GoogleCloudDialogflowV2DetectIntentResponse

-- | Processes a natural language query and returns structured, actionable
-- data as a result. This method is not idempotent, because it may cause
-- contexts and session entity types to be updated, which in turn might
-- affect results of future queries.
--
-- /See:/ 'projectsAgentSessionsDetectIntent' smart constructor.
data ProjectsAgentSessionsDetectIntent = ProjectsAgentSessionsDetectIntent'
    { _pasdiXgafv          :: !(Maybe Xgafv)
    , _pasdiUploadProtocol :: !(Maybe Text)
    , _pasdiAccessToken    :: !(Maybe Text)
    , _pasdiUploadType     :: !(Maybe Text)
    , _pasdiPayload        :: !GoogleCloudDialogflowV2DetectIntentRequest
    , _pasdiSession        :: !Text
    , _pasdiCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsAgentSessionsDetectIntent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pasdiXgafv'
--
-- * 'pasdiUploadProtocol'
--
-- * 'pasdiAccessToken'
--
-- * 'pasdiUploadType'
--
-- * 'pasdiPayload'
--
-- * 'pasdiSession'
--
-- * 'pasdiCallback'
projectsAgentSessionsDetectIntent
    :: GoogleCloudDialogflowV2DetectIntentRequest -- ^ 'pasdiPayload'
    -> Text -- ^ 'pasdiSession'
    -> ProjectsAgentSessionsDetectIntent
projectsAgentSessionsDetectIntent pPasdiPayload_ pPasdiSession_ =
    ProjectsAgentSessionsDetectIntent'
    { _pasdiXgafv = Nothing
    , _pasdiUploadProtocol = Nothing
    , _pasdiAccessToken = Nothing
    , _pasdiUploadType = Nothing
    , _pasdiPayload = pPasdiPayload_
    , _pasdiSession = pPasdiSession_
    , _pasdiCallback = Nothing
    }

-- | V1 error format.
pasdiXgafv :: Lens' ProjectsAgentSessionsDetectIntent (Maybe Xgafv)
pasdiXgafv
  = lens _pasdiXgafv (\ s a -> s{_pasdiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pasdiUploadProtocol :: Lens' ProjectsAgentSessionsDetectIntent (Maybe Text)
pasdiUploadProtocol
  = lens _pasdiUploadProtocol
      (\ s a -> s{_pasdiUploadProtocol = a})

-- | OAuth access token.
pasdiAccessToken :: Lens' ProjectsAgentSessionsDetectIntent (Maybe Text)
pasdiAccessToken
  = lens _pasdiAccessToken
      (\ s a -> s{_pasdiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pasdiUploadType :: Lens' ProjectsAgentSessionsDetectIntent (Maybe Text)
pasdiUploadType
  = lens _pasdiUploadType
      (\ s a -> s{_pasdiUploadType = a})

-- | Multipart request metadata.
pasdiPayload :: Lens' ProjectsAgentSessionsDetectIntent GoogleCloudDialogflowV2DetectIntentRequest
pasdiPayload
  = lens _pasdiPayload (\ s a -> s{_pasdiPayload = a})

-- | Required. The name of the session this query is sent to. Format:
-- \`projects\/\/agent\/sessions\/\`. It\'s up to the API caller to choose
-- an appropriate session ID. It can be a random number or some type of
-- user identifier (preferably hashed). The length of the session ID must
-- not exceed 36 bytes.
pasdiSession :: Lens' ProjectsAgentSessionsDetectIntent Text
pasdiSession
  = lens _pasdiSession (\ s a -> s{_pasdiSession = a})

-- | JSONP
pasdiCallback :: Lens' ProjectsAgentSessionsDetectIntent (Maybe Text)
pasdiCallback
  = lens _pasdiCallback
      (\ s a -> s{_pasdiCallback = a})

instance GoogleRequest
         ProjectsAgentSessionsDetectIntent where
        type Rs ProjectsAgentSessionsDetectIntent =
             GoogleCloudDialogflowV2DetectIntentResponse
        type Scopes ProjectsAgentSessionsDetectIntent =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsAgentSessionsDetectIntent'{..}
          = go _pasdiSession _pasdiXgafv _pasdiUploadProtocol
              _pasdiAccessToken
              _pasdiUploadType
              _pasdiCallback
              (Just AltJSON)
              _pasdiPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsAgentSessionsDetectIntentResource)
                      mempty
