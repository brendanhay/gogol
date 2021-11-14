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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.TransitionRouteGroups.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an TransitionRouteGroup in the specified flow. Note: You should
-- always train a flow prior to sending it queries. See the [training
-- documentation](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/training).
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.transitionRouteGroups.create@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.TransitionRouteGroups.Create
    (
    -- * REST Resource
      ProjectsLocationsAgentsFlowsTransitionRouteGroupsCreateResource

    -- * Creating a Request
    , projectsLocationsAgentsFlowsTransitionRouteGroupsCreate
    , ProjectsLocationsAgentsFlowsTransitionRouteGroupsCreate

    -- * Request Lenses
    , plaftrgcParent
    , plaftrgcXgafv
    , plaftrgcLanguageCode
    , plaftrgcUploadProtocol
    , plaftrgcAccessToken
    , plaftrgcUploadType
    , plaftrgcPayload
    , plaftrgcCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.flows.transitionRouteGroups.create@ method which the
-- 'ProjectsLocationsAgentsFlowsTransitionRouteGroupsCreate' request conforms to.
type ProjectsLocationsAgentsFlowsTransitionRouteGroupsCreateResource
     =
     "v3" :>
       Capture "parent" Text :>
         "transitionRouteGroups" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "languageCode" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON]
                           GoogleCloudDialogflowCxV3TransitionRouteGroup
                           :>
                           Post '[JSON]
                             GoogleCloudDialogflowCxV3TransitionRouteGroup

-- | Creates an TransitionRouteGroup in the specified flow. Note: You should
-- always train a flow prior to sending it queries. See the [training
-- documentation](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/training).
--
-- /See:/ 'projectsLocationsAgentsFlowsTransitionRouteGroupsCreate' smart constructor.
data ProjectsLocationsAgentsFlowsTransitionRouteGroupsCreate =
  ProjectsLocationsAgentsFlowsTransitionRouteGroupsCreate'
    { _plaftrgcParent :: !Text
    , _plaftrgcXgafv :: !(Maybe Xgafv)
    , _plaftrgcLanguageCode :: !(Maybe Text)
    , _plaftrgcUploadProtocol :: !(Maybe Text)
    , _plaftrgcAccessToken :: !(Maybe Text)
    , _plaftrgcUploadType :: !(Maybe Text)
    , _plaftrgcPayload :: !GoogleCloudDialogflowCxV3TransitionRouteGroup
    , _plaftrgcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsFlowsTransitionRouteGroupsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaftrgcParent'
--
-- * 'plaftrgcXgafv'
--
-- * 'plaftrgcLanguageCode'
--
-- * 'plaftrgcUploadProtocol'
--
-- * 'plaftrgcAccessToken'
--
-- * 'plaftrgcUploadType'
--
-- * 'plaftrgcPayload'
--
-- * 'plaftrgcCallback'
projectsLocationsAgentsFlowsTransitionRouteGroupsCreate
    :: Text -- ^ 'plaftrgcParent'
    -> GoogleCloudDialogflowCxV3TransitionRouteGroup -- ^ 'plaftrgcPayload'
    -> ProjectsLocationsAgentsFlowsTransitionRouteGroupsCreate
projectsLocationsAgentsFlowsTransitionRouteGroupsCreate pPlaftrgcParent_ pPlaftrgcPayload_ =
  ProjectsLocationsAgentsFlowsTransitionRouteGroupsCreate'
    { _plaftrgcParent = pPlaftrgcParent_
    , _plaftrgcXgafv = Nothing
    , _plaftrgcLanguageCode = Nothing
    , _plaftrgcUploadProtocol = Nothing
    , _plaftrgcAccessToken = Nothing
    , _plaftrgcUploadType = Nothing
    , _plaftrgcPayload = pPlaftrgcPayload_
    , _plaftrgcCallback = Nothing
    }


-- | Required. The flow to create an TransitionRouteGroup for. Format:
-- \`projects\/\/locations\/\/agents\/\/flows\/\`.
plaftrgcParent :: Lens' ProjectsLocationsAgentsFlowsTransitionRouteGroupsCreate Text
plaftrgcParent
  = lens _plaftrgcParent
      (\ s a -> s{_plaftrgcParent = a})

-- | V1 error format.
plaftrgcXgafv :: Lens' ProjectsLocationsAgentsFlowsTransitionRouteGroupsCreate (Maybe Xgafv)
plaftrgcXgafv
  = lens _plaftrgcXgafv
      (\ s a -> s{_plaftrgcXgafv = a})

-- | The language of the following fields in \`TransitionRouteGroup\`: *
-- \`TransitionRouteGroup.transition_routes.trigger_fulfillment.messages\`
-- *
-- \`TransitionRouteGroup.transition_routes.trigger_fulfillment.conditional_cases\`
-- If not specified, the agent\'s default language is used. [Many
-- languages](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/reference\/language)
-- are supported. Note: languages must be enabled in the agent before they
-- can be used.
plaftrgcLanguageCode :: Lens' ProjectsLocationsAgentsFlowsTransitionRouteGroupsCreate (Maybe Text)
plaftrgcLanguageCode
  = lens _plaftrgcLanguageCode
      (\ s a -> s{_plaftrgcLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaftrgcUploadProtocol :: Lens' ProjectsLocationsAgentsFlowsTransitionRouteGroupsCreate (Maybe Text)
plaftrgcUploadProtocol
  = lens _plaftrgcUploadProtocol
      (\ s a -> s{_plaftrgcUploadProtocol = a})

-- | OAuth access token.
plaftrgcAccessToken :: Lens' ProjectsLocationsAgentsFlowsTransitionRouteGroupsCreate (Maybe Text)
plaftrgcAccessToken
  = lens _plaftrgcAccessToken
      (\ s a -> s{_plaftrgcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaftrgcUploadType :: Lens' ProjectsLocationsAgentsFlowsTransitionRouteGroupsCreate (Maybe Text)
plaftrgcUploadType
  = lens _plaftrgcUploadType
      (\ s a -> s{_plaftrgcUploadType = a})

-- | Multipart request metadata.
plaftrgcPayload :: Lens' ProjectsLocationsAgentsFlowsTransitionRouteGroupsCreate GoogleCloudDialogflowCxV3TransitionRouteGroup
plaftrgcPayload
  = lens _plaftrgcPayload
      (\ s a -> s{_plaftrgcPayload = a})

-- | JSONP
plaftrgcCallback :: Lens' ProjectsLocationsAgentsFlowsTransitionRouteGroupsCreate (Maybe Text)
plaftrgcCallback
  = lens _plaftrgcCallback
      (\ s a -> s{_plaftrgcCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsFlowsTransitionRouteGroupsCreate
         where
        type Rs
               ProjectsLocationsAgentsFlowsTransitionRouteGroupsCreate
             = GoogleCloudDialogflowCxV3TransitionRouteGroup
        type Scopes
               ProjectsLocationsAgentsFlowsTransitionRouteGroupsCreate
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsFlowsTransitionRouteGroupsCreate'{..}
          = go _plaftrgcParent _plaftrgcXgafv
              _plaftrgcLanguageCode
              _plaftrgcUploadProtocol
              _plaftrgcAccessToken
              _plaftrgcUploadType
              _plaftrgcCallback
              (Just AltJSON)
              _plaftrgcPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsFlowsTransitionRouteGroupsCreateResource)
                      mempty
