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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.Pages.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of all pages in the specified flow.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.pages.list@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.Pages.List
    (
    -- * REST Resource
      ProjectsLocationsAgentsFlowsPagesListResource

    -- * Creating a Request
    , projectsLocationsAgentsFlowsPagesList
    , ProjectsLocationsAgentsFlowsPagesList

    -- * Request Lenses
    , plafplParent
    , plafplXgafv
    , plafplLanguageCode
    , plafplUploadProtocol
    , plafplAccessToken
    , plafplUploadType
    , plafplPageToken
    , plafplPageSize
    , plafplCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.flows.pages.list@ method which the
-- 'ProjectsLocationsAgentsFlowsPagesList' request conforms to.
type ProjectsLocationsAgentsFlowsPagesListResource =
     "v3" :>
       Capture "parent" Text :>
         "pages" :>
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
                               GoogleCloudDialogflowCxV3ListPagesResponse

-- | Returns the list of all pages in the specified flow.
--
-- /See:/ 'projectsLocationsAgentsFlowsPagesList' smart constructor.
data ProjectsLocationsAgentsFlowsPagesList =
  ProjectsLocationsAgentsFlowsPagesList'
    { _plafplParent :: !Text
    , _plafplXgafv :: !(Maybe Xgafv)
    , _plafplLanguageCode :: !(Maybe Text)
    , _plafplUploadProtocol :: !(Maybe Text)
    , _plafplAccessToken :: !(Maybe Text)
    , _plafplUploadType :: !(Maybe Text)
    , _plafplPageToken :: !(Maybe Text)
    , _plafplPageSize :: !(Maybe (Textual Int32))
    , _plafplCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsFlowsPagesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plafplParent'
--
-- * 'plafplXgafv'
--
-- * 'plafplLanguageCode'
--
-- * 'plafplUploadProtocol'
--
-- * 'plafplAccessToken'
--
-- * 'plafplUploadType'
--
-- * 'plafplPageToken'
--
-- * 'plafplPageSize'
--
-- * 'plafplCallback'
projectsLocationsAgentsFlowsPagesList
    :: Text -- ^ 'plafplParent'
    -> ProjectsLocationsAgentsFlowsPagesList
projectsLocationsAgentsFlowsPagesList pPlafplParent_ =
  ProjectsLocationsAgentsFlowsPagesList'
    { _plafplParent = pPlafplParent_
    , _plafplXgafv = Nothing
    , _plafplLanguageCode = Nothing
    , _plafplUploadProtocol = Nothing
    , _plafplAccessToken = Nothing
    , _plafplUploadType = Nothing
    , _plafplPageToken = Nothing
    , _plafplPageSize = Nothing
    , _plafplCallback = Nothing
    }


-- | Required. The flow to list all pages for. Format:
-- \`projects\/\/locations\/\/agents\/\/flows\/\`.
plafplParent :: Lens' ProjectsLocationsAgentsFlowsPagesList Text
plafplParent
  = lens _plafplParent (\ s a -> s{_plafplParent = a})

-- | V1 error format.
plafplXgafv :: Lens' ProjectsLocationsAgentsFlowsPagesList (Maybe Xgafv)
plafplXgafv
  = lens _plafplXgafv (\ s a -> s{_plafplXgafv = a})

-- | The language to list pages for. The following fields are language
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
plafplLanguageCode :: Lens' ProjectsLocationsAgentsFlowsPagesList (Maybe Text)
plafplLanguageCode
  = lens _plafplLanguageCode
      (\ s a -> s{_plafplLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plafplUploadProtocol :: Lens' ProjectsLocationsAgentsFlowsPagesList (Maybe Text)
plafplUploadProtocol
  = lens _plafplUploadProtocol
      (\ s a -> s{_plafplUploadProtocol = a})

-- | OAuth access token.
plafplAccessToken :: Lens' ProjectsLocationsAgentsFlowsPagesList (Maybe Text)
plafplAccessToken
  = lens _plafplAccessToken
      (\ s a -> s{_plafplAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plafplUploadType :: Lens' ProjectsLocationsAgentsFlowsPagesList (Maybe Text)
plafplUploadType
  = lens _plafplUploadType
      (\ s a -> s{_plafplUploadType = a})

-- | The next_page_token value returned from a previous list request.
plafplPageToken :: Lens' ProjectsLocationsAgentsFlowsPagesList (Maybe Text)
plafplPageToken
  = lens _plafplPageToken
      (\ s a -> s{_plafplPageToken = a})

-- | The maximum number of items to return in a single page. By default 100
-- and at most 1000.
plafplPageSize :: Lens' ProjectsLocationsAgentsFlowsPagesList (Maybe Int32)
plafplPageSize
  = lens _plafplPageSize
      (\ s a -> s{_plafplPageSize = a})
      . mapping _Coerce

-- | JSONP
plafplCallback :: Lens' ProjectsLocationsAgentsFlowsPagesList (Maybe Text)
plafplCallback
  = lens _plafplCallback
      (\ s a -> s{_plafplCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsFlowsPagesList
         where
        type Rs ProjectsLocationsAgentsFlowsPagesList =
             GoogleCloudDialogflowCxV3ListPagesResponse
        type Scopes ProjectsLocationsAgentsFlowsPagesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsFlowsPagesList'{..}
          = go _plafplParent _plafplXgafv _plafplLanguageCode
              _plafplUploadProtocol
              _plafplAccessToken
              _plafplUploadType
              _plafplPageToken
              _plafplPageSize
              _plafplCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsAgentsFlowsPagesListResource)
                      mempty
