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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.TransitionRouteGroups.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified TransitionRouteGroup. Note: You should always
-- train a flow prior to sending it queries. See the [training
-- documentation](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/training).
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.transitionRouteGroups.delete@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.TransitionRouteGroups.Delete
    (
    -- * REST Resource
      ProjectsLocationsAgentsFlowsTransitionRouteGroupsDeleteResource

    -- * Creating a Request
    , projectsLocationsAgentsFlowsTransitionRouteGroupsDelete
    , ProjectsLocationsAgentsFlowsTransitionRouteGroupsDelete

    -- * Request Lenses
    , plaftrgdXgafv
    , plaftrgdUploadProtocol
    , plaftrgdForce
    , plaftrgdAccessToken
    , plaftrgdUploadType
    , plaftrgdName
    , plaftrgdCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.flows.transitionRouteGroups.delete@ method which the
-- 'ProjectsLocationsAgentsFlowsTransitionRouteGroupsDelete' request conforms to.
type ProjectsLocationsAgentsFlowsTransitionRouteGroupsDeleteResource
     =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "force" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Delete '[JSON] GoogleProtobufEmpty

-- | Deletes the specified TransitionRouteGroup. Note: You should always
-- train a flow prior to sending it queries. See the [training
-- documentation](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/training).
--
-- /See:/ 'projectsLocationsAgentsFlowsTransitionRouteGroupsDelete' smart constructor.
data ProjectsLocationsAgentsFlowsTransitionRouteGroupsDelete =
  ProjectsLocationsAgentsFlowsTransitionRouteGroupsDelete'
    { _plaftrgdXgafv :: !(Maybe Xgafv)
    , _plaftrgdUploadProtocol :: !(Maybe Text)
    , _plaftrgdForce :: !(Maybe Bool)
    , _plaftrgdAccessToken :: !(Maybe Text)
    , _plaftrgdUploadType :: !(Maybe Text)
    , _plaftrgdName :: !Text
    , _plaftrgdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsFlowsTransitionRouteGroupsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaftrgdXgafv'
--
-- * 'plaftrgdUploadProtocol'
--
-- * 'plaftrgdForce'
--
-- * 'plaftrgdAccessToken'
--
-- * 'plaftrgdUploadType'
--
-- * 'plaftrgdName'
--
-- * 'plaftrgdCallback'
projectsLocationsAgentsFlowsTransitionRouteGroupsDelete
    :: Text -- ^ 'plaftrgdName'
    -> ProjectsLocationsAgentsFlowsTransitionRouteGroupsDelete
projectsLocationsAgentsFlowsTransitionRouteGroupsDelete pPlaftrgdName_ =
  ProjectsLocationsAgentsFlowsTransitionRouteGroupsDelete'
    { _plaftrgdXgafv = Nothing
    , _plaftrgdUploadProtocol = Nothing
    , _plaftrgdForce = Nothing
    , _plaftrgdAccessToken = Nothing
    , _plaftrgdUploadType = Nothing
    , _plaftrgdName = pPlaftrgdName_
    , _plaftrgdCallback = Nothing
    }


-- | V1 error format.
plaftrgdXgafv :: Lens' ProjectsLocationsAgentsFlowsTransitionRouteGroupsDelete (Maybe Xgafv)
plaftrgdXgafv
  = lens _plaftrgdXgafv
      (\ s a -> s{_plaftrgdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaftrgdUploadProtocol :: Lens' ProjectsLocationsAgentsFlowsTransitionRouteGroupsDelete (Maybe Text)
plaftrgdUploadProtocol
  = lens _plaftrgdUploadProtocol
      (\ s a -> s{_plaftrgdUploadProtocol = a})

-- | This field has no effect for transition route group that no page is
-- using. If the transition route group is referenced by any page: * If
-- \`force\` is set to false, an error will be returned with message
-- indicating pages that reference the transition route group. * If
-- \`force\` is set to true, Dialogflow will remove the transition route
-- group, as well as any reference to it.
plaftrgdForce :: Lens' ProjectsLocationsAgentsFlowsTransitionRouteGroupsDelete (Maybe Bool)
plaftrgdForce
  = lens _plaftrgdForce
      (\ s a -> s{_plaftrgdForce = a})

-- | OAuth access token.
plaftrgdAccessToken :: Lens' ProjectsLocationsAgentsFlowsTransitionRouteGroupsDelete (Maybe Text)
plaftrgdAccessToken
  = lens _plaftrgdAccessToken
      (\ s a -> s{_plaftrgdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaftrgdUploadType :: Lens' ProjectsLocationsAgentsFlowsTransitionRouteGroupsDelete (Maybe Text)
plaftrgdUploadType
  = lens _plaftrgdUploadType
      (\ s a -> s{_plaftrgdUploadType = a})

-- | Required. The name of the TransitionRouteGroup to delete. Format:
-- \`projects\/\/locations\/\/agents\/\/flows\/\/transitionRouteGroups\/\`.
plaftrgdName :: Lens' ProjectsLocationsAgentsFlowsTransitionRouteGroupsDelete Text
plaftrgdName
  = lens _plaftrgdName (\ s a -> s{_plaftrgdName = a})

-- | JSONP
plaftrgdCallback :: Lens' ProjectsLocationsAgentsFlowsTransitionRouteGroupsDelete (Maybe Text)
plaftrgdCallback
  = lens _plaftrgdCallback
      (\ s a -> s{_plaftrgdCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsFlowsTransitionRouteGroupsDelete
         where
        type Rs
               ProjectsLocationsAgentsFlowsTransitionRouteGroupsDelete
             = GoogleProtobufEmpty
        type Scopes
               ProjectsLocationsAgentsFlowsTransitionRouteGroupsDelete
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsFlowsTransitionRouteGroupsDelete'{..}
          = go _plaftrgdName _plaftrgdXgafv
              _plaftrgdUploadProtocol
              _plaftrgdForce
              _plaftrgdAccessToken
              _plaftrgdUploadType
              _plaftrgdCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsFlowsTransitionRouteGroupsDeleteResource)
                      mempty
