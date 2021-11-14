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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a specified flow.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.delete@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.Delete
    (
    -- * REST Resource
      ProjectsLocationsAgentsFlowsDeleteResource

    -- * Creating a Request
    , projectsLocationsAgentsFlowsDelete
    , ProjectsLocationsAgentsFlowsDelete

    -- * Request Lenses
    , plafdXgafv
    , plafdUploadProtocol
    , plafdForce
    , plafdAccessToken
    , plafdUploadType
    , plafdName
    , plafdCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.flows.delete@ method which the
-- 'ProjectsLocationsAgentsFlowsDelete' request conforms to.
type ProjectsLocationsAgentsFlowsDeleteResource =
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

-- | Deletes a specified flow.
--
-- /See:/ 'projectsLocationsAgentsFlowsDelete' smart constructor.
data ProjectsLocationsAgentsFlowsDelete =
  ProjectsLocationsAgentsFlowsDelete'
    { _plafdXgafv :: !(Maybe Xgafv)
    , _plafdUploadProtocol :: !(Maybe Text)
    , _plafdForce :: !(Maybe Bool)
    , _plafdAccessToken :: !(Maybe Text)
    , _plafdUploadType :: !(Maybe Text)
    , _plafdName :: !Text
    , _plafdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsFlowsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plafdXgafv'
--
-- * 'plafdUploadProtocol'
--
-- * 'plafdForce'
--
-- * 'plafdAccessToken'
--
-- * 'plafdUploadType'
--
-- * 'plafdName'
--
-- * 'plafdCallback'
projectsLocationsAgentsFlowsDelete
    :: Text -- ^ 'plafdName'
    -> ProjectsLocationsAgentsFlowsDelete
projectsLocationsAgentsFlowsDelete pPlafdName_ =
  ProjectsLocationsAgentsFlowsDelete'
    { _plafdXgafv = Nothing
    , _plafdUploadProtocol = Nothing
    , _plafdForce = Nothing
    , _plafdAccessToken = Nothing
    , _plafdUploadType = Nothing
    , _plafdName = pPlafdName_
    , _plafdCallback = Nothing
    }


-- | V1 error format.
plafdXgafv :: Lens' ProjectsLocationsAgentsFlowsDelete (Maybe Xgafv)
plafdXgafv
  = lens _plafdXgafv (\ s a -> s{_plafdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plafdUploadProtocol :: Lens' ProjectsLocationsAgentsFlowsDelete (Maybe Text)
plafdUploadProtocol
  = lens _plafdUploadProtocol
      (\ s a -> s{_plafdUploadProtocol = a})

-- | This field has no effect for flows with no incoming transitions. For
-- flows with incoming transitions: * If \`force\` is set to false, an
-- error will be returned with message indicating the incoming transitions.
-- * If \`force\` is set to true, Dialogflow will remove the flow, as well
-- as any transitions to the flow (i.e. Target flow in event handlers or
-- Target flow in transition routes that point to this flow will be
-- cleared).
plafdForce :: Lens' ProjectsLocationsAgentsFlowsDelete (Maybe Bool)
plafdForce
  = lens _plafdForce (\ s a -> s{_plafdForce = a})

-- | OAuth access token.
plafdAccessToken :: Lens' ProjectsLocationsAgentsFlowsDelete (Maybe Text)
plafdAccessToken
  = lens _plafdAccessToken
      (\ s a -> s{_plafdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plafdUploadType :: Lens' ProjectsLocationsAgentsFlowsDelete (Maybe Text)
plafdUploadType
  = lens _plafdUploadType
      (\ s a -> s{_plafdUploadType = a})

-- | Required. The name of the flow to delete. Format:
-- \`projects\/\/locations\/\/agents\/\/flows\/\`.
plafdName :: Lens' ProjectsLocationsAgentsFlowsDelete Text
plafdName
  = lens _plafdName (\ s a -> s{_plafdName = a})

-- | JSONP
plafdCallback :: Lens' ProjectsLocationsAgentsFlowsDelete (Maybe Text)
plafdCallback
  = lens _plafdCallback
      (\ s a -> s{_plafdCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsFlowsDelete
         where
        type Rs ProjectsLocationsAgentsFlowsDelete =
             GoogleProtobufEmpty
        type Scopes ProjectsLocationsAgentsFlowsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsLocationsAgentsFlowsDelete'{..}
          = go _plafdName _plafdXgafv _plafdUploadProtocol
              _plafdForce
              _plafdAccessToken
              _plafdUploadType
              _plafdCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsAgentsFlowsDeleteResource)
                      mempty
