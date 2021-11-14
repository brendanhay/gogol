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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.Pages.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified page.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.pages.get@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.Pages.Get
    (
    -- * REST Resource
      ProjectsLocationsAgentsFlowsPagesGetResource

    -- * Creating a Request
    , projectsLocationsAgentsFlowsPagesGet
    , ProjectsLocationsAgentsFlowsPagesGet

    -- * Request Lenses
    , plafpgXgafv
    , plafpgLanguageCode
    , plafpgUploadProtocol
    , plafpgAccessToken
    , plafpgUploadType
    , plafpgName
    , plafpgCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.flows.pages.get@ method which the
-- 'ProjectsLocationsAgentsFlowsPagesGet' request conforms to.
type ProjectsLocationsAgentsFlowsPagesGetResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "languageCode" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] GoogleCloudDialogflowCxV3Page

-- | Retrieves the specified page.
--
-- /See:/ 'projectsLocationsAgentsFlowsPagesGet' smart constructor.
data ProjectsLocationsAgentsFlowsPagesGet =
  ProjectsLocationsAgentsFlowsPagesGet'
    { _plafpgXgafv :: !(Maybe Xgafv)
    , _plafpgLanguageCode :: !(Maybe Text)
    , _plafpgUploadProtocol :: !(Maybe Text)
    , _plafpgAccessToken :: !(Maybe Text)
    , _plafpgUploadType :: !(Maybe Text)
    , _plafpgName :: !Text
    , _plafpgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsFlowsPagesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plafpgXgafv'
--
-- * 'plafpgLanguageCode'
--
-- * 'plafpgUploadProtocol'
--
-- * 'plafpgAccessToken'
--
-- * 'plafpgUploadType'
--
-- * 'plafpgName'
--
-- * 'plafpgCallback'
projectsLocationsAgentsFlowsPagesGet
    :: Text -- ^ 'plafpgName'
    -> ProjectsLocationsAgentsFlowsPagesGet
projectsLocationsAgentsFlowsPagesGet pPlafpgName_ =
  ProjectsLocationsAgentsFlowsPagesGet'
    { _plafpgXgafv = Nothing
    , _plafpgLanguageCode = Nothing
    , _plafpgUploadProtocol = Nothing
    , _plafpgAccessToken = Nothing
    , _plafpgUploadType = Nothing
    , _plafpgName = pPlafpgName_
    , _plafpgCallback = Nothing
    }


-- | V1 error format.
plafpgXgafv :: Lens' ProjectsLocationsAgentsFlowsPagesGet (Maybe Xgafv)
plafpgXgafv
  = lens _plafpgXgafv (\ s a -> s{_plafpgXgafv = a})

-- | The language to retrieve the page for. The following fields are language
-- dependent: * \`Page.entry_fulfillment.messages\` *
-- \`Page.entry_fulfillment.conditional_cases\` *
-- \`Page.event_handlers.trigger_fulfillment.messages\` *
-- \`Page.event_handlers.trigger_fulfillment.conditional_cases\` *
-- \`Page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages\`
-- *
-- \`Page.form.parameters.fill_behavior.initial_prompt_fulfillment.conditional_cases\`
-- *
-- \`Page.form.parameters.fill_behavior.reprompt_event_handlers.messages\`
-- *
-- \`Page.form.parameters.fill_behavior.reprompt_event_handlers.conditional_cases\`
-- * \`Page.transition_routes.trigger_fulfillment.messages\` *
-- \`Page.transition_routes.trigger_fulfillment.conditional_cases\` If not
-- specified, the agent\'s default language is used. [Many
-- languages](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/reference\/language)
-- are supported. Note: languages must be enabled in the agent before they
-- can be used.
plafpgLanguageCode :: Lens' ProjectsLocationsAgentsFlowsPagesGet (Maybe Text)
plafpgLanguageCode
  = lens _plafpgLanguageCode
      (\ s a -> s{_plafpgLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plafpgUploadProtocol :: Lens' ProjectsLocationsAgentsFlowsPagesGet (Maybe Text)
plafpgUploadProtocol
  = lens _plafpgUploadProtocol
      (\ s a -> s{_plafpgUploadProtocol = a})

-- | OAuth access token.
plafpgAccessToken :: Lens' ProjectsLocationsAgentsFlowsPagesGet (Maybe Text)
plafpgAccessToken
  = lens _plafpgAccessToken
      (\ s a -> s{_plafpgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plafpgUploadType :: Lens' ProjectsLocationsAgentsFlowsPagesGet (Maybe Text)
plafpgUploadType
  = lens _plafpgUploadType
      (\ s a -> s{_plafpgUploadType = a})

-- | Required. The name of the page. Format:
-- \`projects\/\/locations\/\/agents\/\/flows\/\/pages\/\`.
plafpgName :: Lens' ProjectsLocationsAgentsFlowsPagesGet Text
plafpgName
  = lens _plafpgName (\ s a -> s{_plafpgName = a})

-- | JSONP
plafpgCallback :: Lens' ProjectsLocationsAgentsFlowsPagesGet (Maybe Text)
plafpgCallback
  = lens _plafpgCallback
      (\ s a -> s{_plafpgCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsFlowsPagesGet
         where
        type Rs ProjectsLocationsAgentsFlowsPagesGet =
             GoogleCloudDialogflowCxV3Page
        type Scopes ProjectsLocationsAgentsFlowsPagesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsFlowsPagesGet'{..}
          = go _plafpgName _plafpgXgafv _plafpgLanguageCode
              _plafpgUploadProtocol
              _plafpgAccessToken
              _plafpgUploadType
              _plafpgCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsAgentsFlowsPagesGetResource)
                      mempty
