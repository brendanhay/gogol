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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a flow in the specified agent. Note: You should always train a
-- flow prior to sending it queries. See the [training
-- documentation](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/training).
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.create@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.Create
    (
    -- * REST Resource
      ProjectsLocationsAgentsFlowsCreateResource

    -- * Creating a Request
    , projectsLocationsAgentsFlowsCreate
    , ProjectsLocationsAgentsFlowsCreate

    -- * Request Lenses
    , plafcParent
    , plafcXgafv
    , plafcLanguageCode
    , plafcUploadProtocol
    , plafcAccessToken
    , plafcUploadType
    , plafcPayload
    , plafcCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.flows.create@ method which the
-- 'ProjectsLocationsAgentsFlowsCreate' request conforms to.
type ProjectsLocationsAgentsFlowsCreateResource =
     "v3" :>
       Capture "parent" Text :>
         "flows" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "languageCode" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] GoogleCloudDialogflowCxV3Flow :>
                           Post '[JSON] GoogleCloudDialogflowCxV3Flow

-- | Creates a flow in the specified agent. Note: You should always train a
-- flow prior to sending it queries. See the [training
-- documentation](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/training).
--
-- /See:/ 'projectsLocationsAgentsFlowsCreate' smart constructor.
data ProjectsLocationsAgentsFlowsCreate =
  ProjectsLocationsAgentsFlowsCreate'
    { _plafcParent :: !Text
    , _plafcXgafv :: !(Maybe Xgafv)
    , _plafcLanguageCode :: !(Maybe Text)
    , _plafcUploadProtocol :: !(Maybe Text)
    , _plafcAccessToken :: !(Maybe Text)
    , _plafcUploadType :: !(Maybe Text)
    , _plafcPayload :: !GoogleCloudDialogflowCxV3Flow
    , _plafcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsFlowsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plafcParent'
--
-- * 'plafcXgafv'
--
-- * 'plafcLanguageCode'
--
-- * 'plafcUploadProtocol'
--
-- * 'plafcAccessToken'
--
-- * 'plafcUploadType'
--
-- * 'plafcPayload'
--
-- * 'plafcCallback'
projectsLocationsAgentsFlowsCreate
    :: Text -- ^ 'plafcParent'
    -> GoogleCloudDialogflowCxV3Flow -- ^ 'plafcPayload'
    -> ProjectsLocationsAgentsFlowsCreate
projectsLocationsAgentsFlowsCreate pPlafcParent_ pPlafcPayload_ =
  ProjectsLocationsAgentsFlowsCreate'
    { _plafcParent = pPlafcParent_
    , _plafcXgafv = Nothing
    , _plafcLanguageCode = Nothing
    , _plafcUploadProtocol = Nothing
    , _plafcAccessToken = Nothing
    , _plafcUploadType = Nothing
    , _plafcPayload = pPlafcPayload_
    , _plafcCallback = Nothing
    }


-- | Required. The agent to create a flow for. Format:
-- \`projects\/\/locations\/\/agents\/\`.
plafcParent :: Lens' ProjectsLocationsAgentsFlowsCreate Text
plafcParent
  = lens _plafcParent (\ s a -> s{_plafcParent = a})

-- | V1 error format.
plafcXgafv :: Lens' ProjectsLocationsAgentsFlowsCreate (Maybe Xgafv)
plafcXgafv
  = lens _plafcXgafv (\ s a -> s{_plafcXgafv = a})

-- | The language of the following fields in \`flow\`: *
-- \`Flow.event_handlers.trigger_fulfillment.messages\` *
-- \`Flow.event_handlers.trigger_fulfillment.conditional_cases\` *
-- \`Flow.transition_routes.trigger_fulfillment.messages\` *
-- \`Flow.transition_routes.trigger_fulfillment.conditional_cases\` If not
-- specified, the agent\'s default language is used. [Many
-- languages](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/reference\/language)
-- are supported. Note: languages must be enabled in the agent before they
-- can be used.
plafcLanguageCode :: Lens' ProjectsLocationsAgentsFlowsCreate (Maybe Text)
plafcLanguageCode
  = lens _plafcLanguageCode
      (\ s a -> s{_plafcLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plafcUploadProtocol :: Lens' ProjectsLocationsAgentsFlowsCreate (Maybe Text)
plafcUploadProtocol
  = lens _plafcUploadProtocol
      (\ s a -> s{_plafcUploadProtocol = a})

-- | OAuth access token.
plafcAccessToken :: Lens' ProjectsLocationsAgentsFlowsCreate (Maybe Text)
plafcAccessToken
  = lens _plafcAccessToken
      (\ s a -> s{_plafcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plafcUploadType :: Lens' ProjectsLocationsAgentsFlowsCreate (Maybe Text)
plafcUploadType
  = lens _plafcUploadType
      (\ s a -> s{_plafcUploadType = a})

-- | Multipart request metadata.
plafcPayload :: Lens' ProjectsLocationsAgentsFlowsCreate GoogleCloudDialogflowCxV3Flow
plafcPayload
  = lens _plafcPayload (\ s a -> s{_plafcPayload = a})

-- | JSONP
plafcCallback :: Lens' ProjectsLocationsAgentsFlowsCreate (Maybe Text)
plafcCallback
  = lens _plafcCallback
      (\ s a -> s{_plafcCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsFlowsCreate
         where
        type Rs ProjectsLocationsAgentsFlowsCreate =
             GoogleCloudDialogflowCxV3Flow
        type Scopes ProjectsLocationsAgentsFlowsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsLocationsAgentsFlowsCreate'{..}
          = go _plafcParent _plafcXgafv _plafcLanguageCode
              _plafcUploadProtocol
              _plafcAccessToken
              _plafcUploadType
              _plafcCallback
              (Just AltJSON)
              _plafcPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsAgentsFlowsCreateResource)
                      mempty
