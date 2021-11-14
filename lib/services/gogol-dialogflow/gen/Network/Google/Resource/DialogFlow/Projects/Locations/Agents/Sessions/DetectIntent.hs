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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Sessions.DetectIntent
-- Copyright   : (c) 2015-2021 Brendan Hay
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
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.sessions.detectIntent@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Sessions.DetectIntent
    (
    -- * REST Resource
      ProjectsLocationsAgentsSessionsDetectIntentResource

    -- * Creating a Request
    , projectsLocationsAgentsSessionsDetectIntent
    , ProjectsLocationsAgentsSessionsDetectIntent

    -- * Request Lenses
    , plasdiXgafv
    , plasdiUploadProtocol
    , plasdiAccessToken
    , plasdiUploadType
    , plasdiPayload
    , plasdiSession
    , plasdiCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.sessions.detectIntent@ method which the
-- 'ProjectsLocationsAgentsSessionsDetectIntent' request conforms to.
type ProjectsLocationsAgentsSessionsDetectIntentResource
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
-- /See:/ 'projectsLocationsAgentsSessionsDetectIntent' smart constructor.
data ProjectsLocationsAgentsSessionsDetectIntent =
  ProjectsLocationsAgentsSessionsDetectIntent'
    { _plasdiXgafv :: !(Maybe Xgafv)
    , _plasdiUploadProtocol :: !(Maybe Text)
    , _plasdiAccessToken :: !(Maybe Text)
    , _plasdiUploadType :: !(Maybe Text)
    , _plasdiPayload :: !GoogleCloudDialogflowCxV3DetectIntentRequest
    , _plasdiSession :: !Text
    , _plasdiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsSessionsDetectIntent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plasdiXgafv'
--
-- * 'plasdiUploadProtocol'
--
-- * 'plasdiAccessToken'
--
-- * 'plasdiUploadType'
--
-- * 'plasdiPayload'
--
-- * 'plasdiSession'
--
-- * 'plasdiCallback'
projectsLocationsAgentsSessionsDetectIntent
    :: GoogleCloudDialogflowCxV3DetectIntentRequest -- ^ 'plasdiPayload'
    -> Text -- ^ 'plasdiSession'
    -> ProjectsLocationsAgentsSessionsDetectIntent
projectsLocationsAgentsSessionsDetectIntent pPlasdiPayload_ pPlasdiSession_ =
  ProjectsLocationsAgentsSessionsDetectIntent'
    { _plasdiXgafv = Nothing
    , _plasdiUploadProtocol = Nothing
    , _plasdiAccessToken = Nothing
    , _plasdiUploadType = Nothing
    , _plasdiPayload = pPlasdiPayload_
    , _plasdiSession = pPlasdiSession_
    , _plasdiCallback = Nothing
    }


-- | V1 error format.
plasdiXgafv :: Lens' ProjectsLocationsAgentsSessionsDetectIntent (Maybe Xgafv)
plasdiXgafv
  = lens _plasdiXgafv (\ s a -> s{_plasdiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plasdiUploadProtocol :: Lens' ProjectsLocationsAgentsSessionsDetectIntent (Maybe Text)
plasdiUploadProtocol
  = lens _plasdiUploadProtocol
      (\ s a -> s{_plasdiUploadProtocol = a})

-- | OAuth access token.
plasdiAccessToken :: Lens' ProjectsLocationsAgentsSessionsDetectIntent (Maybe Text)
plasdiAccessToken
  = lens _plasdiAccessToken
      (\ s a -> s{_plasdiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plasdiUploadType :: Lens' ProjectsLocationsAgentsSessionsDetectIntent (Maybe Text)
plasdiUploadType
  = lens _plasdiUploadType
      (\ s a -> s{_plasdiUploadType = a})

-- | Multipart request metadata.
plasdiPayload :: Lens' ProjectsLocationsAgentsSessionsDetectIntent GoogleCloudDialogflowCxV3DetectIntentRequest
plasdiPayload
  = lens _plasdiPayload
      (\ s a -> s{_plasdiPayload = a})

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
plasdiSession :: Lens' ProjectsLocationsAgentsSessionsDetectIntent Text
plasdiSession
  = lens _plasdiSession
      (\ s a -> s{_plasdiSession = a})

-- | JSONP
plasdiCallback :: Lens' ProjectsLocationsAgentsSessionsDetectIntent (Maybe Text)
plasdiCallback
  = lens _plasdiCallback
      (\ s a -> s{_plasdiCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsSessionsDetectIntent
         where
        type Rs ProjectsLocationsAgentsSessionsDetectIntent =
             GoogleCloudDialogflowCxV3DetectIntentResponse
        type Scopes
               ProjectsLocationsAgentsSessionsDetectIntent
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsSessionsDetectIntent'{..}
          = go _plasdiSession _plasdiXgafv
              _plasdiUploadProtocol
              _plasdiAccessToken
              _plasdiUploadType
              _plasdiCallback
              (Just AltJSON)
              _plasdiPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsSessionsDetectIntentResource)
                      mempty
