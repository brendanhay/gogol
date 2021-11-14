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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.TransitionRouteGroups.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified TransitionRouteGroup. Note: You should always
-- train a flow prior to sending it queries. See the [training
-- documentation](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/training).
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.transitionRouteGroups.patch@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.TransitionRouteGroups.Patch
    (
    -- * REST Resource
      ProjectsLocationsAgentsFlowsTransitionRouteGroupsPatchResource

    -- * Creating a Request
    , projectsLocationsAgentsFlowsTransitionRouteGroupsPatch
    , ProjectsLocationsAgentsFlowsTransitionRouteGroupsPatch

    -- * Request Lenses
    , plaftrgpXgafv
    , plaftrgpLanguageCode
    , plaftrgpUploadProtocol
    , plaftrgpUpdateMask
    , plaftrgpAccessToken
    , plaftrgpUploadType
    , plaftrgpPayload
    , plaftrgpName
    , plaftrgpCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.flows.transitionRouteGroups.patch@ method which the
-- 'ProjectsLocationsAgentsFlowsTransitionRouteGroupsPatch' request conforms to.
type ProjectsLocationsAgentsFlowsTransitionRouteGroupsPatchResource
     =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "languageCode" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "updateMask" GFieldMask :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON]
                           GoogleCloudDialogflowCxV3TransitionRouteGroup
                           :>
                           Patch '[JSON]
                             GoogleCloudDialogflowCxV3TransitionRouteGroup

-- | Updates the specified TransitionRouteGroup. Note: You should always
-- train a flow prior to sending it queries. See the [training
-- documentation](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/training).
--
-- /See:/ 'projectsLocationsAgentsFlowsTransitionRouteGroupsPatch' smart constructor.
data ProjectsLocationsAgentsFlowsTransitionRouteGroupsPatch =
  ProjectsLocationsAgentsFlowsTransitionRouteGroupsPatch'
    { _plaftrgpXgafv :: !(Maybe Xgafv)
    , _plaftrgpLanguageCode :: !(Maybe Text)
    , _plaftrgpUploadProtocol :: !(Maybe Text)
    , _plaftrgpUpdateMask :: !(Maybe GFieldMask)
    , _plaftrgpAccessToken :: !(Maybe Text)
    , _plaftrgpUploadType :: !(Maybe Text)
    , _plaftrgpPayload :: !GoogleCloudDialogflowCxV3TransitionRouteGroup
    , _plaftrgpName :: !Text
    , _plaftrgpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsFlowsTransitionRouteGroupsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaftrgpXgafv'
--
-- * 'plaftrgpLanguageCode'
--
-- * 'plaftrgpUploadProtocol'
--
-- * 'plaftrgpUpdateMask'
--
-- * 'plaftrgpAccessToken'
--
-- * 'plaftrgpUploadType'
--
-- * 'plaftrgpPayload'
--
-- * 'plaftrgpName'
--
-- * 'plaftrgpCallback'
projectsLocationsAgentsFlowsTransitionRouteGroupsPatch
    :: GoogleCloudDialogflowCxV3TransitionRouteGroup -- ^ 'plaftrgpPayload'
    -> Text -- ^ 'plaftrgpName'
    -> ProjectsLocationsAgentsFlowsTransitionRouteGroupsPatch
projectsLocationsAgentsFlowsTransitionRouteGroupsPatch pPlaftrgpPayload_ pPlaftrgpName_ =
  ProjectsLocationsAgentsFlowsTransitionRouteGroupsPatch'
    { _plaftrgpXgafv = Nothing
    , _plaftrgpLanguageCode = Nothing
    , _plaftrgpUploadProtocol = Nothing
    , _plaftrgpUpdateMask = Nothing
    , _plaftrgpAccessToken = Nothing
    , _plaftrgpUploadType = Nothing
    , _plaftrgpPayload = pPlaftrgpPayload_
    , _plaftrgpName = pPlaftrgpName_
    , _plaftrgpCallback = Nothing
    }


-- | V1 error format.
plaftrgpXgafv :: Lens' ProjectsLocationsAgentsFlowsTransitionRouteGroupsPatch (Maybe Xgafv)
plaftrgpXgafv
  = lens _plaftrgpXgafv
      (\ s a -> s{_plaftrgpXgafv = a})

-- | The language of the following fields in \`TransitionRouteGroup\`: *
-- \`TransitionRouteGroup.transition_routes.trigger_fulfillment.messages\`
-- *
-- \`TransitionRouteGroup.transition_routes.trigger_fulfillment.conditional_cases\`
-- If not specified, the agent\'s default language is used. [Many
-- languages](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/reference\/language)
-- are supported. Note: languages must be enabled in the agent before they
-- can be used.
plaftrgpLanguageCode :: Lens' ProjectsLocationsAgentsFlowsTransitionRouteGroupsPatch (Maybe Text)
plaftrgpLanguageCode
  = lens _plaftrgpLanguageCode
      (\ s a -> s{_plaftrgpLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaftrgpUploadProtocol :: Lens' ProjectsLocationsAgentsFlowsTransitionRouteGroupsPatch (Maybe Text)
plaftrgpUploadProtocol
  = lens _plaftrgpUploadProtocol
      (\ s a -> s{_plaftrgpUploadProtocol = a})

-- | The mask to control which fields get updated.
plaftrgpUpdateMask :: Lens' ProjectsLocationsAgentsFlowsTransitionRouteGroupsPatch (Maybe GFieldMask)
plaftrgpUpdateMask
  = lens _plaftrgpUpdateMask
      (\ s a -> s{_plaftrgpUpdateMask = a})

-- | OAuth access token.
plaftrgpAccessToken :: Lens' ProjectsLocationsAgentsFlowsTransitionRouteGroupsPatch (Maybe Text)
plaftrgpAccessToken
  = lens _plaftrgpAccessToken
      (\ s a -> s{_plaftrgpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaftrgpUploadType :: Lens' ProjectsLocationsAgentsFlowsTransitionRouteGroupsPatch (Maybe Text)
plaftrgpUploadType
  = lens _plaftrgpUploadType
      (\ s a -> s{_plaftrgpUploadType = a})

-- | Multipart request metadata.
plaftrgpPayload :: Lens' ProjectsLocationsAgentsFlowsTransitionRouteGroupsPatch GoogleCloudDialogflowCxV3TransitionRouteGroup
plaftrgpPayload
  = lens _plaftrgpPayload
      (\ s a -> s{_plaftrgpPayload = a})

-- | The unique identifier of the transition route group.
-- TransitionRouteGroups.CreateTransitionRouteGroup populates the name
-- automatically. Format:
-- \`projects\/\/locations\/\/agents\/\/flows\/\/transitionRouteGroups\/\`.
plaftrgpName :: Lens' ProjectsLocationsAgentsFlowsTransitionRouteGroupsPatch Text
plaftrgpName
  = lens _plaftrgpName (\ s a -> s{_plaftrgpName = a})

-- | JSONP
plaftrgpCallback :: Lens' ProjectsLocationsAgentsFlowsTransitionRouteGroupsPatch (Maybe Text)
plaftrgpCallback
  = lens _plaftrgpCallback
      (\ s a -> s{_plaftrgpCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsFlowsTransitionRouteGroupsPatch
         where
        type Rs
               ProjectsLocationsAgentsFlowsTransitionRouteGroupsPatch
             = GoogleCloudDialogflowCxV3TransitionRouteGroup
        type Scopes
               ProjectsLocationsAgentsFlowsTransitionRouteGroupsPatch
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsFlowsTransitionRouteGroupsPatch'{..}
          = go _plaftrgpName _plaftrgpXgafv
              _plaftrgpLanguageCode
              _plaftrgpUploadProtocol
              _plaftrgpUpdateMask
              _plaftrgpAccessToken
              _plaftrgpUploadType
              _plaftrgpCallback
              (Just AltJSON)
              _plaftrgpPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsFlowsTransitionRouteGroupsPatchResource)
                      mempty
