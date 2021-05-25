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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Sessions.FulfillIntent
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fulfills a matched intent returned by MatchIntent. Must be called after
-- MatchIntent, with input from MatchIntentResponse. Otherwise, the
-- behavior is undefined.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.sessions.fulfillIntent@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Sessions.FulfillIntent
    (
    -- * REST Resource
      ProjectsLocationsAgentsSessionsFulfillIntentResource

    -- * Creating a Request
    , projectsLocationsAgentsSessionsFulfillIntent
    , ProjectsLocationsAgentsSessionsFulfillIntent

    -- * Request Lenses
    , plasfiXgafv
    , plasfiUploadProtocol
    , plasfiAccessToken
    , plasfiUploadType
    , plasfiPayload
    , plasfiSession
    , plasfiCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.sessions.fulfillIntent@ method which the
-- 'ProjectsLocationsAgentsSessionsFulfillIntent' request conforms to.
type ProjectsLocationsAgentsSessionsFulfillIntentResource
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
-- /See:/ 'projectsLocationsAgentsSessionsFulfillIntent' smart constructor.
data ProjectsLocationsAgentsSessionsFulfillIntent =
  ProjectsLocationsAgentsSessionsFulfillIntent'
    { _plasfiXgafv :: !(Maybe Xgafv)
    , _plasfiUploadProtocol :: !(Maybe Text)
    , _plasfiAccessToken :: !(Maybe Text)
    , _plasfiUploadType :: !(Maybe Text)
    , _plasfiPayload :: !GoogleCloudDialogflowCxV3FulfillIntentRequest
    , _plasfiSession :: !Text
    , _plasfiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsSessionsFulfillIntent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plasfiXgafv'
--
-- * 'plasfiUploadProtocol'
--
-- * 'plasfiAccessToken'
--
-- * 'plasfiUploadType'
--
-- * 'plasfiPayload'
--
-- * 'plasfiSession'
--
-- * 'plasfiCallback'
projectsLocationsAgentsSessionsFulfillIntent
    :: GoogleCloudDialogflowCxV3FulfillIntentRequest -- ^ 'plasfiPayload'
    -> Text -- ^ 'plasfiSession'
    -> ProjectsLocationsAgentsSessionsFulfillIntent
projectsLocationsAgentsSessionsFulfillIntent pPlasfiPayload_ pPlasfiSession_ =
  ProjectsLocationsAgentsSessionsFulfillIntent'
    { _plasfiXgafv = Nothing
    , _plasfiUploadProtocol = Nothing
    , _plasfiAccessToken = Nothing
    , _plasfiUploadType = Nothing
    , _plasfiPayload = pPlasfiPayload_
    , _plasfiSession = pPlasfiSession_
    , _plasfiCallback = Nothing
    }


-- | V1 error format.
plasfiXgafv :: Lens' ProjectsLocationsAgentsSessionsFulfillIntent (Maybe Xgafv)
plasfiXgafv
  = lens _plasfiXgafv (\ s a -> s{_plasfiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plasfiUploadProtocol :: Lens' ProjectsLocationsAgentsSessionsFulfillIntent (Maybe Text)
plasfiUploadProtocol
  = lens _plasfiUploadProtocol
      (\ s a -> s{_plasfiUploadProtocol = a})

-- | OAuth access token.
plasfiAccessToken :: Lens' ProjectsLocationsAgentsSessionsFulfillIntent (Maybe Text)
plasfiAccessToken
  = lens _plasfiAccessToken
      (\ s a -> s{_plasfiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plasfiUploadType :: Lens' ProjectsLocationsAgentsSessionsFulfillIntent (Maybe Text)
plasfiUploadType
  = lens _plasfiUploadType
      (\ s a -> s{_plasfiUploadType = a})

-- | Multipart request metadata.
plasfiPayload :: Lens' ProjectsLocationsAgentsSessionsFulfillIntent GoogleCloudDialogflowCxV3FulfillIntentRequest
plasfiPayload
  = lens _plasfiPayload
      (\ s a -> s{_plasfiPayload = a})

-- | Required. The name of the session this query is sent to. Format:
-- \`projects\/\/locations\/\/agents\/\/sessions\/\` or
-- \`projects\/\/locations\/\/agents\/\/environments\/\/sessions\/\`. If
-- \`Environment ID\` is not specified, we assume default \'draft\'
-- environment. It\'s up to the API caller to choose an appropriate
-- \`Session ID\`. It can be a random number or some type of session
-- identifiers (preferably hashed). The length of the \`Session ID\` must
-- not exceed 36 characters. For more information, see the [sessions
-- guide](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/session).
plasfiSession :: Lens' ProjectsLocationsAgentsSessionsFulfillIntent Text
plasfiSession
  = lens _plasfiSession
      (\ s a -> s{_plasfiSession = a})

-- | JSONP
plasfiCallback :: Lens' ProjectsLocationsAgentsSessionsFulfillIntent (Maybe Text)
plasfiCallback
  = lens _plasfiCallback
      (\ s a -> s{_plasfiCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsSessionsFulfillIntent
         where
        type Rs ProjectsLocationsAgentsSessionsFulfillIntent
             = GoogleCloudDialogflowCxV3FulfillIntentResponse
        type Scopes
               ProjectsLocationsAgentsSessionsFulfillIntent
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsSessionsFulfillIntent'{..}
          = go _plasfiSession _plasfiXgafv
              _plasfiUploadProtocol
              _plasfiAccessToken
              _plasfiUploadType
              _plasfiCallback
              (Just AltJSON)
              _plasfiPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsSessionsFulfillIntentResource)
                      mempty
