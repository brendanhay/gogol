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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.TransitionRouteGroups.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of all transition route groups in the specified flow.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.transitionRouteGroups.list@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.TransitionRouteGroups.List
    (
    -- * REST Resource
      ProjectsLocationsAgentsFlowsTransitionRouteGroupsListResource

    -- * Creating a Request
    , projectsLocationsAgentsFlowsTransitionRouteGroupsList
    , ProjectsLocationsAgentsFlowsTransitionRouteGroupsList

    -- * Request Lenses
    , plaftrglParent
    , plaftrglXgafv
    , plaftrglLanguageCode
    , plaftrglUploadProtocol
    , plaftrglAccessToken
    , plaftrglUploadType
    , plaftrglPageToken
    , plaftrglPageSize
    , plaftrglCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.flows.transitionRouteGroups.list@ method which the
-- 'ProjectsLocationsAgentsFlowsTransitionRouteGroupsList' request conforms to.
type ProjectsLocationsAgentsFlowsTransitionRouteGroupsListResource
     =
     "v3" :>
       Capture "parent" Text :>
         "transitionRouteGroups" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "languageCode" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON]
                               GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse

-- | Returns the list of all transition route groups in the specified flow.
--
-- /See:/ 'projectsLocationsAgentsFlowsTransitionRouteGroupsList' smart constructor.
data ProjectsLocationsAgentsFlowsTransitionRouteGroupsList =
  ProjectsLocationsAgentsFlowsTransitionRouteGroupsList'
    { _plaftrglParent :: !Text
    , _plaftrglXgafv :: !(Maybe Xgafv)
    , _plaftrglLanguageCode :: !(Maybe Text)
    , _plaftrglUploadProtocol :: !(Maybe Text)
    , _plaftrglAccessToken :: !(Maybe Text)
    , _plaftrglUploadType :: !(Maybe Text)
    , _plaftrglPageToken :: !(Maybe Text)
    , _plaftrglPageSize :: !(Maybe (Textual Int32))
    , _plaftrglCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsFlowsTransitionRouteGroupsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaftrglParent'
--
-- * 'plaftrglXgafv'
--
-- * 'plaftrglLanguageCode'
--
-- * 'plaftrglUploadProtocol'
--
-- * 'plaftrglAccessToken'
--
-- * 'plaftrglUploadType'
--
-- * 'plaftrglPageToken'
--
-- * 'plaftrglPageSize'
--
-- * 'plaftrglCallback'
projectsLocationsAgentsFlowsTransitionRouteGroupsList
    :: Text -- ^ 'plaftrglParent'
    -> ProjectsLocationsAgentsFlowsTransitionRouteGroupsList
projectsLocationsAgentsFlowsTransitionRouteGroupsList pPlaftrglParent_ =
  ProjectsLocationsAgentsFlowsTransitionRouteGroupsList'
    { _plaftrglParent = pPlaftrglParent_
    , _plaftrglXgafv = Nothing
    , _plaftrglLanguageCode = Nothing
    , _plaftrglUploadProtocol = Nothing
    , _plaftrglAccessToken = Nothing
    , _plaftrglUploadType = Nothing
    , _plaftrglPageToken = Nothing
    , _plaftrglPageSize = Nothing
    , _plaftrglCallback = Nothing
    }


-- | Required. The flow to list all transition route groups for. Format:
-- \`projects\/\/locations\/\/agents\/\/flows\/\`.
plaftrglParent :: Lens' ProjectsLocationsAgentsFlowsTransitionRouteGroupsList Text
plaftrglParent
  = lens _plaftrglParent
      (\ s a -> s{_plaftrglParent = a})

-- | V1 error format.
plaftrglXgafv :: Lens' ProjectsLocationsAgentsFlowsTransitionRouteGroupsList (Maybe Xgafv)
plaftrglXgafv
  = lens _plaftrglXgafv
      (\ s a -> s{_plaftrglXgafv = a})

-- | The language to list transition route groups for. The following fields
-- are language dependent: *
-- \`TransitionRouteGroup.transition_routes.trigger_fulfillment.messages\`
-- *
-- \`TransitionRouteGroup.transition_routes.trigger_fulfillment.conditional_cases\`
-- If not specified, the agent\'s default language is used. [Many
-- languages](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/reference\/language)
-- are supported. Note: languages must be enabled in the agent before they
-- can be used.
plaftrglLanguageCode :: Lens' ProjectsLocationsAgentsFlowsTransitionRouteGroupsList (Maybe Text)
plaftrglLanguageCode
  = lens _plaftrglLanguageCode
      (\ s a -> s{_plaftrglLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaftrglUploadProtocol :: Lens' ProjectsLocationsAgentsFlowsTransitionRouteGroupsList (Maybe Text)
plaftrglUploadProtocol
  = lens _plaftrglUploadProtocol
      (\ s a -> s{_plaftrglUploadProtocol = a})

-- | OAuth access token.
plaftrglAccessToken :: Lens' ProjectsLocationsAgentsFlowsTransitionRouteGroupsList (Maybe Text)
plaftrglAccessToken
  = lens _plaftrglAccessToken
      (\ s a -> s{_plaftrglAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaftrglUploadType :: Lens' ProjectsLocationsAgentsFlowsTransitionRouteGroupsList (Maybe Text)
plaftrglUploadType
  = lens _plaftrglUploadType
      (\ s a -> s{_plaftrglUploadType = a})

-- | The next_page_token value returned from a previous list request.
plaftrglPageToken :: Lens' ProjectsLocationsAgentsFlowsTransitionRouteGroupsList (Maybe Text)
plaftrglPageToken
  = lens _plaftrglPageToken
      (\ s a -> s{_plaftrglPageToken = a})

-- | The maximum number of items to return in a single page. By default 100
-- and at most 1000.
plaftrglPageSize :: Lens' ProjectsLocationsAgentsFlowsTransitionRouteGroupsList (Maybe Int32)
plaftrglPageSize
  = lens _plaftrglPageSize
      (\ s a -> s{_plaftrglPageSize = a})
      . mapping _Coerce

-- | JSONP
plaftrglCallback :: Lens' ProjectsLocationsAgentsFlowsTransitionRouteGroupsList (Maybe Text)
plaftrglCallback
  = lens _plaftrglCallback
      (\ s a -> s{_plaftrglCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsFlowsTransitionRouteGroupsList
         where
        type Rs
               ProjectsLocationsAgentsFlowsTransitionRouteGroupsList
             =
             GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse
        type Scopes
               ProjectsLocationsAgentsFlowsTransitionRouteGroupsList
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsFlowsTransitionRouteGroupsList'{..}
          = go _plaftrglParent _plaftrglXgafv
              _plaftrglLanguageCode
              _plaftrglUploadProtocol
              _plaftrglAccessToken
              _plaftrglUploadType
              _plaftrglPageToken
              _plaftrglPageSize
              _plaftrglCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsFlowsTransitionRouteGroupsListResource)
                      mempty
