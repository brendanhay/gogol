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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.Sessions.FulfillIntent
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fulfills a matched intent returned by MatchIntent. Must be called after
-- MatchIntent, with input from MatchIntentResponse. Otherwise, the
-- behavior is undefined.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.environments.sessions.fulfillIntent@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.Sessions.FulfillIntent
    (
    -- * REST Resource
      ProjectsLocationsAgentsEnvironmentsSessionsFulfillIntentResource

    -- * Creating a Request
    , projectsLocationsAgentsEnvironmentsSessionsFulfillIntent
    , ProjectsLocationsAgentsEnvironmentsSessionsFulfillIntent

    -- * Request Lenses
    , plaesfiXgafv
    , plaesfiUploadProtocol
    , plaesfiAccessToken
    , plaesfiUploadType
    , plaesfiPayload
    , plaesfiSession
    , plaesfiCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.environments.sessions.fulfillIntent@ method which the
-- 'ProjectsLocationsAgentsEnvironmentsSessionsFulfillIntent' request conforms to.
type ProjectsLocationsAgentsEnvironmentsSessionsFulfillIntentResource
     =
     "v3" :>
       CaptureMode "session" "fulfillIntent" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GoogleCloudDialogflowCxV3FulfillIntentRequest
                       :>
                       Post '[JSON]
                         GoogleCloudDialogflowCxV3FulfillIntentResponse

-- | Fulfills a matched intent returned by MatchIntent. Must be called after
-- MatchIntent, with input from MatchIntentResponse. Otherwise, the
-- behavior is undefined.
--
-- /See:/ 'projectsLocationsAgentsEnvironmentsSessionsFulfillIntent' smart constructor.
data ProjectsLocationsAgentsEnvironmentsSessionsFulfillIntent =
  ProjectsLocationsAgentsEnvironmentsSessionsFulfillIntent'
    { _plaesfiXgafv :: !(Maybe Xgafv)
    , _plaesfiUploadProtocol :: !(Maybe Text)
    , _plaesfiAccessToken :: !(Maybe Text)
    , _plaesfiUploadType :: !(Maybe Text)
    , _plaesfiPayload :: !GoogleCloudDialogflowCxV3FulfillIntentRequest
    , _plaesfiSession :: !Text
    , _plaesfiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsEnvironmentsSessionsFulfillIntent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaesfiXgafv'
--
-- * 'plaesfiUploadProtocol'
--
-- * 'plaesfiAccessToken'
--
-- * 'plaesfiUploadType'
--
-- * 'plaesfiPayload'
--
-- * 'plaesfiSession'
--
-- * 'plaesfiCallback'
projectsLocationsAgentsEnvironmentsSessionsFulfillIntent
    :: GoogleCloudDialogflowCxV3FulfillIntentRequest -- ^ 'plaesfiPayload'
    -> Text -- ^ 'plaesfiSession'
    -> ProjectsLocationsAgentsEnvironmentsSessionsFulfillIntent
projectsLocationsAgentsEnvironmentsSessionsFulfillIntent pPlaesfiPayload_ pPlaesfiSession_ =
  ProjectsLocationsAgentsEnvironmentsSessionsFulfillIntent'
    { _plaesfiXgafv = Nothing
    , _plaesfiUploadProtocol = Nothing
    , _plaesfiAccessToken = Nothing
    , _plaesfiUploadType = Nothing
    , _plaesfiPayload = pPlaesfiPayload_
    , _plaesfiSession = pPlaesfiSession_
    , _plaesfiCallback = Nothing
    }


-- | V1 error format.
plaesfiXgafv :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsFulfillIntent (Maybe Xgafv)
plaesfiXgafv
  = lens _plaesfiXgafv (\ s a -> s{_plaesfiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaesfiUploadProtocol :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsFulfillIntent (Maybe Text)
plaesfiUploadProtocol
  = lens _plaesfiUploadProtocol
      (\ s a -> s{_plaesfiUploadProtocol = a})

-- | OAuth access token.
plaesfiAccessToken :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsFulfillIntent (Maybe Text)
plaesfiAccessToken
  = lens _plaesfiAccessToken
      (\ s a -> s{_plaesfiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaesfiUploadType :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsFulfillIntent (Maybe Text)
plaesfiUploadType
  = lens _plaesfiUploadType
      (\ s a -> s{_plaesfiUploadType = a})

-- | Multipart request metadata.
plaesfiPayload :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsFulfillIntent GoogleCloudDialogflowCxV3FulfillIntentRequest
plaesfiPayload
  = lens _plaesfiPayload
      (\ s a -> s{_plaesfiPayload = a})

-- | Required. The name of the session this query is sent to. Format:
-- \`projects\/\/locations\/\/agents\/\/sessions\/\` or
-- \`projects\/\/locations\/\/agents\/\/environments\/\/sessions\/\`. If
-- \`Environment ID\` is not specified, we assume default \'draft\'
-- environment. It\'s up to the API caller to choose an appropriate
-- \`Session ID\`. It can be a random number or some type of session
-- identifiers (preferably hashed). The length of the \`Session ID\` must
-- not exceed 36 characters. For more information, see the [sessions
-- guide](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/session).
plaesfiSession :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsFulfillIntent Text
plaesfiSession
  = lens _plaesfiSession
      (\ s a -> s{_plaesfiSession = a})

-- | JSONP
plaesfiCallback :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsFulfillIntent (Maybe Text)
plaesfiCallback
  = lens _plaesfiCallback
      (\ s a -> s{_plaesfiCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsEnvironmentsSessionsFulfillIntent
         where
        type Rs
               ProjectsLocationsAgentsEnvironmentsSessionsFulfillIntent
             = GoogleCloudDialogflowCxV3FulfillIntentResponse
        type Scopes
               ProjectsLocationsAgentsEnvironmentsSessionsFulfillIntent
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsEnvironmentsSessionsFulfillIntent'{..}
          = go _plaesfiSession _plaesfiXgafv
              _plaesfiUploadProtocol
              _plaesfiAccessToken
              _plaesfiUploadType
              _plaesfiCallback
              (Just AltJSON)
              _plaesfiPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsEnvironmentsSessionsFulfillIntentResource)
                      mempty
