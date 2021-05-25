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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.TransitionRouteGroups.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified TransitionRouteGroup.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.transitionRouteGroups.get@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.TransitionRouteGroups.Get
    (
    -- * REST Resource
      ProjectsLocationsAgentsFlowsTransitionRouteGroupsGetResource

    -- * Creating a Request
    , projectsLocationsAgentsFlowsTransitionRouteGroupsGet
    , ProjectsLocationsAgentsFlowsTransitionRouteGroupsGet

    -- * Request Lenses
    , plaftrggXgafv
    , plaftrggLanguageCode
    , plaftrggUploadProtocol
    , plaftrggAccessToken
    , plaftrggUploadType
    , plaftrggName
    , plaftrggCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.flows.transitionRouteGroups.get@ method which the
-- 'ProjectsLocationsAgentsFlowsTransitionRouteGroupsGet' request conforms to.
type ProjectsLocationsAgentsFlowsTransitionRouteGroupsGetResource
     =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "languageCode" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON]
                         GoogleCloudDialogflowCxV3TransitionRouteGroup

-- | Retrieves the specified TransitionRouteGroup.
--
-- /See:/ 'projectsLocationsAgentsFlowsTransitionRouteGroupsGet' smart constructor.
data ProjectsLocationsAgentsFlowsTransitionRouteGroupsGet =
  ProjectsLocationsAgentsFlowsTransitionRouteGroupsGet'
    { _plaftrggXgafv :: !(Maybe Xgafv)
    , _plaftrggLanguageCode :: !(Maybe Text)
    , _plaftrggUploadProtocol :: !(Maybe Text)
    , _plaftrggAccessToken :: !(Maybe Text)
    , _plaftrggUploadType :: !(Maybe Text)
    , _plaftrggName :: !Text
    , _plaftrggCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsFlowsTransitionRouteGroupsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaftrggXgafv'
--
-- * 'plaftrggLanguageCode'
--
-- * 'plaftrggUploadProtocol'
--
-- * 'plaftrggAccessToken'
--
-- * 'plaftrggUploadType'
--
-- * 'plaftrggName'
--
-- * 'plaftrggCallback'
projectsLocationsAgentsFlowsTransitionRouteGroupsGet
    :: Text -- ^ 'plaftrggName'
    -> ProjectsLocationsAgentsFlowsTransitionRouteGroupsGet
projectsLocationsAgentsFlowsTransitionRouteGroupsGet pPlaftrggName_ =
  ProjectsLocationsAgentsFlowsTransitionRouteGroupsGet'
    { _plaftrggXgafv = Nothing
    , _plaftrggLanguageCode = Nothing
    , _plaftrggUploadProtocol = Nothing
    , _plaftrggAccessToken = Nothing
    , _plaftrggUploadType = Nothing
    , _plaftrggName = pPlaftrggName_
    , _plaftrggCallback = Nothing
    }


-- | V1 error format.
plaftrggXgafv :: Lens' ProjectsLocationsAgentsFlowsTransitionRouteGroupsGet (Maybe Xgafv)
plaftrggXgafv
  = lens _plaftrggXgafv
      (\ s a -> s{_plaftrggXgafv = a})

-- | The language to retrieve the transition route group for. The following
-- fields are language dependent: *
-- \`TransitionRouteGroup.transition_routes.trigger_fulfillment.messages\`
-- *
-- \`TransitionRouteGroup.transition_routes.trigger_fulfillment.conditional_cases\`
-- If not specified, the agent\'s default language is used. [Many
-- languages](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/reference\/language)
-- are supported. Note: languages must be enabled in the agent before they
-- can be used.
plaftrggLanguageCode :: Lens' ProjectsLocationsAgentsFlowsTransitionRouteGroupsGet (Maybe Text)
plaftrggLanguageCode
  = lens _plaftrggLanguageCode
      (\ s a -> s{_plaftrggLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaftrggUploadProtocol :: Lens' ProjectsLocationsAgentsFlowsTransitionRouteGroupsGet (Maybe Text)
plaftrggUploadProtocol
  = lens _plaftrggUploadProtocol
      (\ s a -> s{_plaftrggUploadProtocol = a})

-- | OAuth access token.
plaftrggAccessToken :: Lens' ProjectsLocationsAgentsFlowsTransitionRouteGroupsGet (Maybe Text)
plaftrggAccessToken
  = lens _plaftrggAccessToken
      (\ s a -> s{_plaftrggAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaftrggUploadType :: Lens' ProjectsLocationsAgentsFlowsTransitionRouteGroupsGet (Maybe Text)
plaftrggUploadType
  = lens _plaftrggUploadType
      (\ s a -> s{_plaftrggUploadType = a})

-- | Required. The name of the TransitionRouteGroup. Format:
-- \`projects\/\/locations\/\/agents\/\/flows\/\/transitionRouteGroups\/\`.
plaftrggName :: Lens' ProjectsLocationsAgentsFlowsTransitionRouteGroupsGet Text
plaftrggName
  = lens _plaftrggName (\ s a -> s{_plaftrggName = a})

-- | JSONP
plaftrggCallback :: Lens' ProjectsLocationsAgentsFlowsTransitionRouteGroupsGet (Maybe Text)
plaftrggCallback
  = lens _plaftrggCallback
      (\ s a -> s{_plaftrggCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsFlowsTransitionRouteGroupsGet
         where
        type Rs
               ProjectsLocationsAgentsFlowsTransitionRouteGroupsGet
             = GoogleCloudDialogflowCxV3TransitionRouteGroup
        type Scopes
               ProjectsLocationsAgentsFlowsTransitionRouteGroupsGet
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsFlowsTransitionRouteGroupsGet'{..}
          = go _plaftrggName _plaftrggXgafv
              _plaftrggLanguageCode
              _plaftrggUploadProtocol
              _plaftrggAccessToken
              _plaftrggUploadType
              _plaftrggCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsFlowsTransitionRouteGroupsGetResource)
                      mempty
