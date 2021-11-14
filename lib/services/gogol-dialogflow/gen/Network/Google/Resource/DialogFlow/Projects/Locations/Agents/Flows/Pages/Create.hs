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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.Pages.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a page in the specified flow. Note: You should always train a
-- flow prior to sending it queries. See the [training
-- documentation](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/training).
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.pages.create@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.Pages.Create
    (
    -- * REST Resource
      ProjectsLocationsAgentsFlowsPagesCreateResource

    -- * Creating a Request
    , projectsLocationsAgentsFlowsPagesCreate
    , ProjectsLocationsAgentsFlowsPagesCreate

    -- * Request Lenses
    , plafpcParent
    , plafpcXgafv
    , plafpcLanguageCode
    , plafpcUploadProtocol
    , plafpcAccessToken
    , plafpcUploadType
    , plafpcPayload
    , plafpcCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.flows.pages.create@ method which the
-- 'ProjectsLocationsAgentsFlowsPagesCreate' request conforms to.
type ProjectsLocationsAgentsFlowsPagesCreateResource
     =
     "v3" :>
       Capture "parent" Text :>
         "pages" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "languageCode" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] GoogleCloudDialogflowCxV3Page :>
                           Post '[JSON] GoogleCloudDialogflowCxV3Page

-- | Creates a page in the specified flow. Note: You should always train a
-- flow prior to sending it queries. See the [training
-- documentation](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/training).
--
-- /See:/ 'projectsLocationsAgentsFlowsPagesCreate' smart constructor.
data ProjectsLocationsAgentsFlowsPagesCreate =
  ProjectsLocationsAgentsFlowsPagesCreate'
    { _plafpcParent :: !Text
    , _plafpcXgafv :: !(Maybe Xgafv)
    , _plafpcLanguageCode :: !(Maybe Text)
    , _plafpcUploadProtocol :: !(Maybe Text)
    , _plafpcAccessToken :: !(Maybe Text)
    , _plafpcUploadType :: !(Maybe Text)
    , _plafpcPayload :: !GoogleCloudDialogflowCxV3Page
    , _plafpcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsFlowsPagesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plafpcParent'
--
-- * 'plafpcXgafv'
--
-- * 'plafpcLanguageCode'
--
-- * 'plafpcUploadProtocol'
--
-- * 'plafpcAccessToken'
--
-- * 'plafpcUploadType'
--
-- * 'plafpcPayload'
--
-- * 'plafpcCallback'
projectsLocationsAgentsFlowsPagesCreate
    :: Text -- ^ 'plafpcParent'
    -> GoogleCloudDialogflowCxV3Page -- ^ 'plafpcPayload'
    -> ProjectsLocationsAgentsFlowsPagesCreate
projectsLocationsAgentsFlowsPagesCreate pPlafpcParent_ pPlafpcPayload_ =
  ProjectsLocationsAgentsFlowsPagesCreate'
    { _plafpcParent = pPlafpcParent_
    , _plafpcXgafv = Nothing
    , _plafpcLanguageCode = Nothing
    , _plafpcUploadProtocol = Nothing
    , _plafpcAccessToken = Nothing
    , _plafpcUploadType = Nothing
    , _plafpcPayload = pPlafpcPayload_
    , _plafpcCallback = Nothing
    }


-- | Required. The flow to create a page for. Format:
-- \`projects\/\/locations\/\/agents\/\/flows\/\`.
plafpcParent :: Lens' ProjectsLocationsAgentsFlowsPagesCreate Text
plafpcParent
  = lens _plafpcParent (\ s a -> s{_plafpcParent = a})

-- | V1 error format.
plafpcXgafv :: Lens' ProjectsLocationsAgentsFlowsPagesCreate (Maybe Xgafv)
plafpcXgafv
  = lens _plafpcXgafv (\ s a -> s{_plafpcXgafv = a})

-- | The language of the following fields in \`page\`: *
-- \`Page.entry_fulfillment.messages\` *
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
plafpcLanguageCode :: Lens' ProjectsLocationsAgentsFlowsPagesCreate (Maybe Text)
plafpcLanguageCode
  = lens _plafpcLanguageCode
      (\ s a -> s{_plafpcLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plafpcUploadProtocol :: Lens' ProjectsLocationsAgentsFlowsPagesCreate (Maybe Text)
plafpcUploadProtocol
  = lens _plafpcUploadProtocol
      (\ s a -> s{_plafpcUploadProtocol = a})

-- | OAuth access token.
plafpcAccessToken :: Lens' ProjectsLocationsAgentsFlowsPagesCreate (Maybe Text)
plafpcAccessToken
  = lens _plafpcAccessToken
      (\ s a -> s{_plafpcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plafpcUploadType :: Lens' ProjectsLocationsAgentsFlowsPagesCreate (Maybe Text)
plafpcUploadType
  = lens _plafpcUploadType
      (\ s a -> s{_plafpcUploadType = a})

-- | Multipart request metadata.
plafpcPayload :: Lens' ProjectsLocationsAgentsFlowsPagesCreate GoogleCloudDialogflowCxV3Page
plafpcPayload
  = lens _plafpcPayload
      (\ s a -> s{_plafpcPayload = a})

-- | JSONP
plafpcCallback :: Lens' ProjectsLocationsAgentsFlowsPagesCreate (Maybe Text)
plafpcCallback
  = lens _plafpcCallback
      (\ s a -> s{_plafpcCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsFlowsPagesCreate
         where
        type Rs ProjectsLocationsAgentsFlowsPagesCreate =
             GoogleCloudDialogflowCxV3Page
        type Scopes ProjectsLocationsAgentsFlowsPagesCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsFlowsPagesCreate'{..}
          = go _plafpcParent _plafpcXgafv _plafpcLanguageCode
              _plafpcUploadProtocol
              _plafpcAccessToken
              _plafpcUploadType
              _plafpcCallback
              (Just AltJSON)
              _plafpcPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsFlowsPagesCreateResource)
                      mempty
