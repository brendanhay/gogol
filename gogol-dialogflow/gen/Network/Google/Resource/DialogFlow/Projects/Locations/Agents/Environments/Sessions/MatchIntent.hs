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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.Sessions.MatchIntent
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns preliminary intent match results, doesn\'t change the session
-- status.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.environments.sessions.matchIntent@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.Sessions.MatchIntent
    (
    -- * REST Resource
      ProjectsLocationsAgentsEnvironmentsSessionsMatchIntentResource

    -- * Creating a Request
    , projectsLocationsAgentsEnvironmentsSessionsMatchIntent
    , ProjectsLocationsAgentsEnvironmentsSessionsMatchIntent

    -- * Request Lenses
    , plaesmiXgafv
    , plaesmiUploadProtocol
    , plaesmiAccessToken
    , plaesmiUploadType
    , plaesmiPayload
    , plaesmiSession
    , plaesmiCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.environments.sessions.matchIntent@ method which the
-- 'ProjectsLocationsAgentsEnvironmentsSessionsMatchIntent' request conforms to.
type ProjectsLocationsAgentsEnvironmentsSessionsMatchIntentResource
     =
     "v3" :>
       CaptureMode "session" "matchIntent" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GoogleCloudDialogflowCxV3MatchIntentRequest
                       :>
                       Post '[JSON]
                         GoogleCloudDialogflowCxV3MatchIntentResponse

-- | Returns preliminary intent match results, doesn\'t change the session
-- status.
--
-- /See:/ 'projectsLocationsAgentsEnvironmentsSessionsMatchIntent' smart constructor.
data ProjectsLocationsAgentsEnvironmentsSessionsMatchIntent =
  ProjectsLocationsAgentsEnvironmentsSessionsMatchIntent'
    { _plaesmiXgafv :: !(Maybe Xgafv)
    , _plaesmiUploadProtocol :: !(Maybe Text)
    , _plaesmiAccessToken :: !(Maybe Text)
    , _plaesmiUploadType :: !(Maybe Text)
    , _plaesmiPayload :: !GoogleCloudDialogflowCxV3MatchIntentRequest
    , _plaesmiSession :: !Text
    , _plaesmiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsEnvironmentsSessionsMatchIntent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaesmiXgafv'
--
-- * 'plaesmiUploadProtocol'
--
-- * 'plaesmiAccessToken'
--
-- * 'plaesmiUploadType'
--
-- * 'plaesmiPayload'
--
-- * 'plaesmiSession'
--
-- * 'plaesmiCallback'
projectsLocationsAgentsEnvironmentsSessionsMatchIntent
    :: GoogleCloudDialogflowCxV3MatchIntentRequest -- ^ 'plaesmiPayload'
    -> Text -- ^ 'plaesmiSession'
    -> ProjectsLocationsAgentsEnvironmentsSessionsMatchIntent
projectsLocationsAgentsEnvironmentsSessionsMatchIntent pPlaesmiPayload_ pPlaesmiSession_ =
  ProjectsLocationsAgentsEnvironmentsSessionsMatchIntent'
    { _plaesmiXgafv = Nothing
    , _plaesmiUploadProtocol = Nothing
    , _plaesmiAccessToken = Nothing
    , _plaesmiUploadType = Nothing
    , _plaesmiPayload = pPlaesmiPayload_
    , _plaesmiSession = pPlaesmiSession_
    , _plaesmiCallback = Nothing
    }


-- | V1 error format.
plaesmiXgafv :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsMatchIntent (Maybe Xgafv)
plaesmiXgafv
  = lens _plaesmiXgafv (\ s a -> s{_plaesmiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaesmiUploadProtocol :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsMatchIntent (Maybe Text)
plaesmiUploadProtocol
  = lens _plaesmiUploadProtocol
      (\ s a -> s{_plaesmiUploadProtocol = a})

-- | OAuth access token.
plaesmiAccessToken :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsMatchIntent (Maybe Text)
plaesmiAccessToken
  = lens _plaesmiAccessToken
      (\ s a -> s{_plaesmiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaesmiUploadType :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsMatchIntent (Maybe Text)
plaesmiUploadType
  = lens _plaesmiUploadType
      (\ s a -> s{_plaesmiUploadType = a})

-- | Multipart request metadata.
plaesmiPayload :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsMatchIntent GoogleCloudDialogflowCxV3MatchIntentRequest
plaesmiPayload
  = lens _plaesmiPayload
      (\ s a -> s{_plaesmiPayload = a})

-- | Required. The name of the session this query is sent to. Format:
-- \`projects\/\/locations\/\/agents\/\/sessions\/\` or
-- \`projects\/\/locations\/\/agents\/\/environments\/\/sessions\/\`. If
-- \`Environment ID\` is not specified, we assume default \'draft\'
-- environment. It\'s up to the API caller to choose an appropriate
-- \`Session ID\`. It can be a random number or some type of session
-- identifiers (preferably hashed). The length of the \`Session ID\` must
-- not exceed 36 characters. For more information, see the [sessions
-- guide](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/session).
plaesmiSession :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsMatchIntent Text
plaesmiSession
  = lens _plaesmiSession
      (\ s a -> s{_plaesmiSession = a})

-- | JSONP
plaesmiCallback :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsMatchIntent (Maybe Text)
plaesmiCallback
  = lens _plaesmiCallback
      (\ s a -> s{_plaesmiCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsEnvironmentsSessionsMatchIntent
         where
        type Rs
               ProjectsLocationsAgentsEnvironmentsSessionsMatchIntent
             = GoogleCloudDialogflowCxV3MatchIntentResponse
        type Scopes
               ProjectsLocationsAgentsEnvironmentsSessionsMatchIntent
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsEnvironmentsSessionsMatchIntent'{..}
          = go _plaesmiSession _plaesmiXgafv
              _plaesmiUploadProtocol
              _plaesmiAccessToken
              _plaesmiUploadType
              _plaesmiCallback
              (Just AltJSON)
              _plaesmiPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsEnvironmentsSessionsMatchIntentResource)
                      mempty
