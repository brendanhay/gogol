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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified flow.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.get@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.Get
    (
    -- * REST Resource
      ProjectsLocationsAgentsFlowsGetResource

    -- * Creating a Request
    , projectsLocationsAgentsFlowsGet
    , ProjectsLocationsAgentsFlowsGet

    -- * Request Lenses
    , plafgXgafv
    , plafgLanguageCode
    , plafgUploadProtocol
    , plafgAccessToken
    , plafgUploadType
    , plafgName
    , plafgCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.flows.get@ method which the
-- 'ProjectsLocationsAgentsFlowsGet' request conforms to.
type ProjectsLocationsAgentsFlowsGetResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "languageCode" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] GoogleCloudDialogflowCxV3Flow

-- | Retrieves the specified flow.
--
-- /See:/ 'projectsLocationsAgentsFlowsGet' smart constructor.
data ProjectsLocationsAgentsFlowsGet =
  ProjectsLocationsAgentsFlowsGet'
    { _plafgXgafv :: !(Maybe Xgafv)
    , _plafgLanguageCode :: !(Maybe Text)
    , _plafgUploadProtocol :: !(Maybe Text)
    , _plafgAccessToken :: !(Maybe Text)
    , _plafgUploadType :: !(Maybe Text)
    , _plafgName :: !Text
    , _plafgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsFlowsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plafgXgafv'
--
-- * 'plafgLanguageCode'
--
-- * 'plafgUploadProtocol'
--
-- * 'plafgAccessToken'
--
-- * 'plafgUploadType'
--
-- * 'plafgName'
--
-- * 'plafgCallback'
projectsLocationsAgentsFlowsGet
    :: Text -- ^ 'plafgName'
    -> ProjectsLocationsAgentsFlowsGet
projectsLocationsAgentsFlowsGet pPlafgName_ =
  ProjectsLocationsAgentsFlowsGet'
    { _plafgXgafv = Nothing
    , _plafgLanguageCode = Nothing
    , _plafgUploadProtocol = Nothing
    , _plafgAccessToken = Nothing
    , _plafgUploadType = Nothing
    , _plafgName = pPlafgName_
    , _plafgCallback = Nothing
    }


-- | V1 error format.
plafgXgafv :: Lens' ProjectsLocationsAgentsFlowsGet (Maybe Xgafv)
plafgXgafv
  = lens _plafgXgafv (\ s a -> s{_plafgXgafv = a})

-- | The language to retrieve the flow for. The following fields are language
-- dependent: * \`Flow.event_handlers.trigger_fulfillment.messages\` *
-- \`Flow.event_handlers.trigger_fulfillment.conditional_cases\` *
-- \`Flow.transition_routes.trigger_fulfillment.messages\` *
-- \`Flow.transition_routes.trigger_fulfillment.conditional_cases\` If not
-- specified, the agent\'s default language is used. [Many
-- languages](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/reference\/language)
-- are supported. Note: languages must be enabled in the agent before they
-- can be used.
plafgLanguageCode :: Lens' ProjectsLocationsAgentsFlowsGet (Maybe Text)
plafgLanguageCode
  = lens _plafgLanguageCode
      (\ s a -> s{_plafgLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plafgUploadProtocol :: Lens' ProjectsLocationsAgentsFlowsGet (Maybe Text)
plafgUploadProtocol
  = lens _plafgUploadProtocol
      (\ s a -> s{_plafgUploadProtocol = a})

-- | OAuth access token.
plafgAccessToken :: Lens' ProjectsLocationsAgentsFlowsGet (Maybe Text)
plafgAccessToken
  = lens _plafgAccessToken
      (\ s a -> s{_plafgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plafgUploadType :: Lens' ProjectsLocationsAgentsFlowsGet (Maybe Text)
plafgUploadType
  = lens _plafgUploadType
      (\ s a -> s{_plafgUploadType = a})

-- | Required. The name of the flow to get. Format:
-- \`projects\/\/locations\/\/agents\/\/flows\/\`.
plafgName :: Lens' ProjectsLocationsAgentsFlowsGet Text
plafgName
  = lens _plafgName (\ s a -> s{_plafgName = a})

-- | JSONP
plafgCallback :: Lens' ProjectsLocationsAgentsFlowsGet (Maybe Text)
plafgCallback
  = lens _plafgCallback
      (\ s a -> s{_plafgCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsFlowsGet
         where
        type Rs ProjectsLocationsAgentsFlowsGet =
             GoogleCloudDialogflowCxV3Flow
        type Scopes ProjectsLocationsAgentsFlowsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsLocationsAgentsFlowsGet'{..}
          = go _plafgName _plafgXgafv _plafgLanguageCode
              _plafgUploadProtocol
              _plafgAccessToken
              _plafgUploadType
              _plafgCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsAgentsFlowsGetResource)
                      mempty
