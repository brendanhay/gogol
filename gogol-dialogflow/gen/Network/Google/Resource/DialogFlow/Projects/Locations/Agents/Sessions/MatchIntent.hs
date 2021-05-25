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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Sessions.MatchIntent
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns preliminary intent match results, doesn\'t change the session
-- status.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.sessions.matchIntent@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Sessions.MatchIntent
    (
    -- * REST Resource
      ProjectsLocationsAgentsSessionsMatchIntentResource

    -- * Creating a Request
    , projectsLocationsAgentsSessionsMatchIntent
    , ProjectsLocationsAgentsSessionsMatchIntent

    -- * Request Lenses
    , plasmiXgafv
    , plasmiUploadProtocol
    , plasmiAccessToken
    , plasmiUploadType
    , plasmiPayload
    , plasmiSession
    , plasmiCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.sessions.matchIntent@ method which the
-- 'ProjectsLocationsAgentsSessionsMatchIntent' request conforms to.
type ProjectsLocationsAgentsSessionsMatchIntentResource
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
-- /See:/ 'projectsLocationsAgentsSessionsMatchIntent' smart constructor.
data ProjectsLocationsAgentsSessionsMatchIntent =
  ProjectsLocationsAgentsSessionsMatchIntent'
    { _plasmiXgafv :: !(Maybe Xgafv)
    , _plasmiUploadProtocol :: !(Maybe Text)
    , _plasmiAccessToken :: !(Maybe Text)
    , _plasmiUploadType :: !(Maybe Text)
    , _plasmiPayload :: !GoogleCloudDialogflowCxV3MatchIntentRequest
    , _plasmiSession :: !Text
    , _plasmiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsSessionsMatchIntent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plasmiXgafv'
--
-- * 'plasmiUploadProtocol'
--
-- * 'plasmiAccessToken'
--
-- * 'plasmiUploadType'
--
-- * 'plasmiPayload'
--
-- * 'plasmiSession'
--
-- * 'plasmiCallback'
projectsLocationsAgentsSessionsMatchIntent
    :: GoogleCloudDialogflowCxV3MatchIntentRequest -- ^ 'plasmiPayload'
    -> Text -- ^ 'plasmiSession'
    -> ProjectsLocationsAgentsSessionsMatchIntent
projectsLocationsAgentsSessionsMatchIntent pPlasmiPayload_ pPlasmiSession_ =
  ProjectsLocationsAgentsSessionsMatchIntent'
    { _plasmiXgafv = Nothing
    , _plasmiUploadProtocol = Nothing
    , _plasmiAccessToken = Nothing
    , _plasmiUploadType = Nothing
    , _plasmiPayload = pPlasmiPayload_
    , _plasmiSession = pPlasmiSession_
    , _plasmiCallback = Nothing
    }


-- | V1 error format.
plasmiXgafv :: Lens' ProjectsLocationsAgentsSessionsMatchIntent (Maybe Xgafv)
plasmiXgafv
  = lens _plasmiXgafv (\ s a -> s{_plasmiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plasmiUploadProtocol :: Lens' ProjectsLocationsAgentsSessionsMatchIntent (Maybe Text)
plasmiUploadProtocol
  = lens _plasmiUploadProtocol
      (\ s a -> s{_plasmiUploadProtocol = a})

-- | OAuth access token.
plasmiAccessToken :: Lens' ProjectsLocationsAgentsSessionsMatchIntent (Maybe Text)
plasmiAccessToken
  = lens _plasmiAccessToken
      (\ s a -> s{_plasmiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plasmiUploadType :: Lens' ProjectsLocationsAgentsSessionsMatchIntent (Maybe Text)
plasmiUploadType
  = lens _plasmiUploadType
      (\ s a -> s{_plasmiUploadType = a})

-- | Multipart request metadata.
plasmiPayload :: Lens' ProjectsLocationsAgentsSessionsMatchIntent GoogleCloudDialogflowCxV3MatchIntentRequest
plasmiPayload
  = lens _plasmiPayload
      (\ s a -> s{_plasmiPayload = a})

-- | Required. The name of the session this query is sent to. Format:
-- \`projects\/\/locations\/\/agents\/\/sessions\/\` or
-- \`projects\/\/locations\/\/agents\/\/environments\/\/sessions\/\`. If
-- \`Environment ID\` is not specified, we assume default \'draft\'
-- environment. It\'s up to the API caller to choose an appropriate
-- \`Session ID\`. It can be a random number or some type of session
-- identifiers (preferably hashed). The length of the \`Session ID\` must
-- not exceed 36 characters. For more information, see the [sessions
-- guide](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/session).
plasmiSession :: Lens' ProjectsLocationsAgentsSessionsMatchIntent Text
plasmiSession
  = lens _plasmiSession
      (\ s a -> s{_plasmiSession = a})

-- | JSONP
plasmiCallback :: Lens' ProjectsLocationsAgentsSessionsMatchIntent (Maybe Text)
plasmiCallback
  = lens _plasmiCallback
      (\ s a -> s{_plasmiCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsSessionsMatchIntent
         where
        type Rs ProjectsLocationsAgentsSessionsMatchIntent =
             GoogleCloudDialogflowCxV3MatchIntentResponse
        type Scopes
               ProjectsLocationsAgentsSessionsMatchIntent
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsSessionsMatchIntent'{..}
          = go _plasmiSession _plasmiXgafv
              _plasmiUploadProtocol
              _plasmiAccessToken
              _plasmiUploadType
              _plasmiCallback
              (Just AltJSON)
              _plasmiPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsSessionsMatchIntentResource)
                      mempty
