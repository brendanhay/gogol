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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.Sessions.DetectIntent
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Processes a natural language query and returns structured, actionable
-- data as a result. This method is not idempotent, because it may cause
-- session entity types to be updated, which in turn might affect results
-- of future queries. Note: Always use agent versions for production
-- traffic. See [Versions and
-- environments](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/version).
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.environments.sessions.detectIntent@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.Sessions.DetectIntent
    (
    -- * REST Resource
      ProjectsLocationsAgentsEnvironmentsSessionsDetectIntentResource

    -- * Creating a Request
    , projectsLocationsAgentsEnvironmentsSessionsDetectIntent
    , ProjectsLocationsAgentsEnvironmentsSessionsDetectIntent

    -- * Request Lenses
    , plaesdiXgafv
    , plaesdiUploadProtocol
    , plaesdiAccessToken
    , plaesdiUploadType
    , plaesdiPayload
    , plaesdiSession
    , plaesdiCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.environments.sessions.detectIntent@ method which the
-- 'ProjectsLocationsAgentsEnvironmentsSessionsDetectIntent' request conforms to.
type ProjectsLocationsAgentsEnvironmentsSessionsDetectIntentResource
     =
     "v3" :>
       CaptureMode "session" "detectIntent" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GoogleCloudDialogflowCxV3DetectIntentRequest
                       :>
                       Post '[JSON]
                         GoogleCloudDialogflowCxV3DetectIntentResponse

-- | Processes a natural language query and returns structured, actionable
-- data as a result. This method is not idempotent, because it may cause
-- session entity types to be updated, which in turn might affect results
-- of future queries. Note: Always use agent versions for production
-- traffic. See [Versions and
-- environments](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/version).
--
-- /See:/ 'projectsLocationsAgentsEnvironmentsSessionsDetectIntent' smart constructor.
data ProjectsLocationsAgentsEnvironmentsSessionsDetectIntent =
  ProjectsLocationsAgentsEnvironmentsSessionsDetectIntent'
    { _plaesdiXgafv :: !(Maybe Xgafv)
    , _plaesdiUploadProtocol :: !(Maybe Text)
    , _plaesdiAccessToken :: !(Maybe Text)
    , _plaesdiUploadType :: !(Maybe Text)
    , _plaesdiPayload :: !GoogleCloudDialogflowCxV3DetectIntentRequest
    , _plaesdiSession :: !Text
    , _plaesdiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsEnvironmentsSessionsDetectIntent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaesdiXgafv'
--
-- * 'plaesdiUploadProtocol'
--
-- * 'plaesdiAccessToken'
--
-- * 'plaesdiUploadType'
--
-- * 'plaesdiPayload'
--
-- * 'plaesdiSession'
--
-- * 'plaesdiCallback'
projectsLocationsAgentsEnvironmentsSessionsDetectIntent
    :: GoogleCloudDialogflowCxV3DetectIntentRequest -- ^ 'plaesdiPayload'
    -> Text -- ^ 'plaesdiSession'
    -> ProjectsLocationsAgentsEnvironmentsSessionsDetectIntent
projectsLocationsAgentsEnvironmentsSessionsDetectIntent pPlaesdiPayload_ pPlaesdiSession_ =
  ProjectsLocationsAgentsEnvironmentsSessionsDetectIntent'
    { _plaesdiXgafv = Nothing
    , _plaesdiUploadProtocol = Nothing
    , _plaesdiAccessToken = Nothing
    , _plaesdiUploadType = Nothing
    , _plaesdiPayload = pPlaesdiPayload_
    , _plaesdiSession = pPlaesdiSession_
    , _plaesdiCallback = Nothing
    }


-- | V1 error format.
plaesdiXgafv :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsDetectIntent (Maybe Xgafv)
plaesdiXgafv
  = lens _plaesdiXgafv (\ s a -> s{_plaesdiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaesdiUploadProtocol :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsDetectIntent (Maybe Text)
plaesdiUploadProtocol
  = lens _plaesdiUploadProtocol
      (\ s a -> s{_plaesdiUploadProtocol = a})

-- | OAuth access token.
plaesdiAccessToken :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsDetectIntent (Maybe Text)
plaesdiAccessToken
  = lens _plaesdiAccessToken
      (\ s a -> s{_plaesdiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaesdiUploadType :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsDetectIntent (Maybe Text)
plaesdiUploadType
  = lens _plaesdiUploadType
      (\ s a -> s{_plaesdiUploadType = a})

-- | Multipart request metadata.
plaesdiPayload :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsDetectIntent GoogleCloudDialogflowCxV3DetectIntentRequest
plaesdiPayload
  = lens _plaesdiPayload
      (\ s a -> s{_plaesdiPayload = a})

-- | Required. The name of the session this query is sent to. Format:
-- \`projects\/\/locations\/\/agents\/\/sessions\/\` or
-- \`projects\/\/locations\/\/agents\/\/environments\/\/sessions\/\`. If
-- \`Environment ID\` is not specified, we assume default \'draft\'
-- environment. It\'s up to the API caller to choose an appropriate
-- \`Session ID\`. It can be a random number or some type of session
-- identifiers (preferably hashed). The length of the \`Session ID\` must
-- not exceed 36 characters. For more information, see the [sessions
-- guide](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/session).
-- Note: Always use agent versions for production traffic. See [Versions
-- and
-- environments](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/version).
plaesdiSession :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsDetectIntent Text
plaesdiSession
  = lens _plaesdiSession
      (\ s a -> s{_plaesdiSession = a})

-- | JSONP
plaesdiCallback :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsDetectIntent (Maybe Text)
plaesdiCallback
  = lens _plaesdiCallback
      (\ s a -> s{_plaesdiCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsEnvironmentsSessionsDetectIntent
         where
        type Rs
               ProjectsLocationsAgentsEnvironmentsSessionsDetectIntent
             = GoogleCloudDialogflowCxV3DetectIntentResponse
        type Scopes
               ProjectsLocationsAgentsEnvironmentsSessionsDetectIntent
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsEnvironmentsSessionsDetectIntent'{..}
          = go _plaesdiSession _plaesdiXgafv
              _plaesdiUploadProtocol
              _plaesdiAccessToken
              _plaesdiUploadType
              _plaesdiCallback
              (Just AltJSON)
              _plaesdiPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsEnvironmentsSessionsDetectIntentResource)
                      mempty
