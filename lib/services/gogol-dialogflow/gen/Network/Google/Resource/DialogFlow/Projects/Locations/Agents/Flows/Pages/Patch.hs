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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.Pages.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified page. Note: You should always train a flow prior
-- to sending it queries. See the [training
-- documentation](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/training).
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.pages.patch@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.Pages.Patch
    (
    -- * REST Resource
      ProjectsLocationsAgentsFlowsPagesPatchResource

    -- * Creating a Request
    , projectsLocationsAgentsFlowsPagesPatch
    , ProjectsLocationsAgentsFlowsPagesPatch

    -- * Request Lenses
    , plafppXgafv
    , plafppLanguageCode
    , plafppUploadProtocol
    , plafppUpdateMask
    , plafppAccessToken
    , plafppUploadType
    , plafppPayload
    , plafppName
    , plafppCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.flows.pages.patch@ method which the
-- 'ProjectsLocationsAgentsFlowsPagesPatch' request conforms to.
type ProjectsLocationsAgentsFlowsPagesPatchResource =
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
                         ReqBody '[JSON] GoogleCloudDialogflowCxV3Page :>
                           Patch '[JSON] GoogleCloudDialogflowCxV3Page

-- | Updates the specified page. Note: You should always train a flow prior
-- to sending it queries. See the [training
-- documentation](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/training).
--
-- /See:/ 'projectsLocationsAgentsFlowsPagesPatch' smart constructor.
data ProjectsLocationsAgentsFlowsPagesPatch =
  ProjectsLocationsAgentsFlowsPagesPatch'
    { _plafppXgafv :: !(Maybe Xgafv)
    , _plafppLanguageCode :: !(Maybe Text)
    , _plafppUploadProtocol :: !(Maybe Text)
    , _plafppUpdateMask :: !(Maybe GFieldMask)
    , _plafppAccessToken :: !(Maybe Text)
    , _plafppUploadType :: !(Maybe Text)
    , _plafppPayload :: !GoogleCloudDialogflowCxV3Page
    , _plafppName :: !Text
    , _plafppCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsFlowsPagesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plafppXgafv'
--
-- * 'plafppLanguageCode'
--
-- * 'plafppUploadProtocol'
--
-- * 'plafppUpdateMask'
--
-- * 'plafppAccessToken'
--
-- * 'plafppUploadType'
--
-- * 'plafppPayload'
--
-- * 'plafppName'
--
-- * 'plafppCallback'
projectsLocationsAgentsFlowsPagesPatch
    :: GoogleCloudDialogflowCxV3Page -- ^ 'plafppPayload'
    -> Text -- ^ 'plafppName'
    -> ProjectsLocationsAgentsFlowsPagesPatch
projectsLocationsAgentsFlowsPagesPatch pPlafppPayload_ pPlafppName_ =
  ProjectsLocationsAgentsFlowsPagesPatch'
    { _plafppXgafv = Nothing
    , _plafppLanguageCode = Nothing
    , _plafppUploadProtocol = Nothing
    , _plafppUpdateMask = Nothing
    , _plafppAccessToken = Nothing
    , _plafppUploadType = Nothing
    , _plafppPayload = pPlafppPayload_
    , _plafppName = pPlafppName_
    , _plafppCallback = Nothing
    }


-- | V1 error format.
plafppXgafv :: Lens' ProjectsLocationsAgentsFlowsPagesPatch (Maybe Xgafv)
plafppXgafv
  = lens _plafppXgafv (\ s a -> s{_plafppXgafv = a})

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
plafppLanguageCode :: Lens' ProjectsLocationsAgentsFlowsPagesPatch (Maybe Text)
plafppLanguageCode
  = lens _plafppLanguageCode
      (\ s a -> s{_plafppLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plafppUploadProtocol :: Lens' ProjectsLocationsAgentsFlowsPagesPatch (Maybe Text)
plafppUploadProtocol
  = lens _plafppUploadProtocol
      (\ s a -> s{_plafppUploadProtocol = a})

-- | The mask to control which fields get updated. If the mask is not
-- present, all fields will be updated.
plafppUpdateMask :: Lens' ProjectsLocationsAgentsFlowsPagesPatch (Maybe GFieldMask)
plafppUpdateMask
  = lens _plafppUpdateMask
      (\ s a -> s{_plafppUpdateMask = a})

-- | OAuth access token.
plafppAccessToken :: Lens' ProjectsLocationsAgentsFlowsPagesPatch (Maybe Text)
plafppAccessToken
  = lens _plafppAccessToken
      (\ s a -> s{_plafppAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plafppUploadType :: Lens' ProjectsLocationsAgentsFlowsPagesPatch (Maybe Text)
plafppUploadType
  = lens _plafppUploadType
      (\ s a -> s{_plafppUploadType = a})

-- | Multipart request metadata.
plafppPayload :: Lens' ProjectsLocationsAgentsFlowsPagesPatch GoogleCloudDialogflowCxV3Page
plafppPayload
  = lens _plafppPayload
      (\ s a -> s{_plafppPayload = a})

-- | The unique identifier of the page. Required for the Pages.UpdatePage
-- method. Pages.CreatePage populates the name automatically. Format:
-- \`projects\/\/locations\/\/agents\/\/flows\/\/pages\/\`.
plafppName :: Lens' ProjectsLocationsAgentsFlowsPagesPatch Text
plafppName
  = lens _plafppName (\ s a -> s{_plafppName = a})

-- | JSONP
plafppCallback :: Lens' ProjectsLocationsAgentsFlowsPagesPatch (Maybe Text)
plafppCallback
  = lens _plafppCallback
      (\ s a -> s{_plafppCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsFlowsPagesPatch
         where
        type Rs ProjectsLocationsAgentsFlowsPagesPatch =
             GoogleCloudDialogflowCxV3Page
        type Scopes ProjectsLocationsAgentsFlowsPagesPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsFlowsPagesPatch'{..}
          = go _plafppName _plafppXgafv _plafppLanguageCode
              _plafppUploadProtocol
              _plafppUpdateMask
              _plafppAccessToken
              _plafppUploadType
              _plafppCallback
              (Just AltJSON)
              _plafppPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsAgentsFlowsPagesPatchResource)
                      mempty
