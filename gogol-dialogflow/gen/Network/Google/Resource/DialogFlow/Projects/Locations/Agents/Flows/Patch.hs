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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified flow. Note: You should always train a flow prior
-- to sending it queries. See the [training
-- documentation](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/training).
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.patch@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.Patch
    (
    -- * REST Resource
      ProjectsLocationsAgentsFlowsPatchResource

    -- * Creating a Request
    , projectsLocationsAgentsFlowsPatch
    , ProjectsLocationsAgentsFlowsPatch

    -- * Request Lenses
    , plafpXgafv
    , plafpLanguageCode
    , plafpUploadProtocol
    , plafpUpdateMask
    , plafpAccessToken
    , plafpUploadType
    , plafpPayload
    , plafpName
    , plafpCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.flows.patch@ method which the
-- 'ProjectsLocationsAgentsFlowsPatch' request conforms to.
type ProjectsLocationsAgentsFlowsPatchResource =
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
                         ReqBody '[JSON] GoogleCloudDialogflowCxV3Flow :>
                           Patch '[JSON] GoogleCloudDialogflowCxV3Flow

-- | Updates the specified flow. Note: You should always train a flow prior
-- to sending it queries. See the [training
-- documentation](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/training).
--
-- /See:/ 'projectsLocationsAgentsFlowsPatch' smart constructor.
data ProjectsLocationsAgentsFlowsPatch =
  ProjectsLocationsAgentsFlowsPatch'
    { _plafpXgafv :: !(Maybe Xgafv)
    , _plafpLanguageCode :: !(Maybe Text)
    , _plafpUploadProtocol :: !(Maybe Text)
    , _plafpUpdateMask :: !(Maybe GFieldMask)
    , _plafpAccessToken :: !(Maybe Text)
    , _plafpUploadType :: !(Maybe Text)
    , _plafpPayload :: !GoogleCloudDialogflowCxV3Flow
    , _plafpName :: !Text
    , _plafpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsFlowsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plafpXgafv'
--
-- * 'plafpLanguageCode'
--
-- * 'plafpUploadProtocol'
--
-- * 'plafpUpdateMask'
--
-- * 'plafpAccessToken'
--
-- * 'plafpUploadType'
--
-- * 'plafpPayload'
--
-- * 'plafpName'
--
-- * 'plafpCallback'
projectsLocationsAgentsFlowsPatch
    :: GoogleCloudDialogflowCxV3Flow -- ^ 'plafpPayload'
    -> Text -- ^ 'plafpName'
    -> ProjectsLocationsAgentsFlowsPatch
projectsLocationsAgentsFlowsPatch pPlafpPayload_ pPlafpName_ =
  ProjectsLocationsAgentsFlowsPatch'
    { _plafpXgafv = Nothing
    , _plafpLanguageCode = Nothing
    , _plafpUploadProtocol = Nothing
    , _plafpUpdateMask = Nothing
    , _plafpAccessToken = Nothing
    , _plafpUploadType = Nothing
    , _plafpPayload = pPlafpPayload_
    , _plafpName = pPlafpName_
    , _plafpCallback = Nothing
    }


-- | V1 error format.
plafpXgafv :: Lens' ProjectsLocationsAgentsFlowsPatch (Maybe Xgafv)
plafpXgafv
  = lens _plafpXgafv (\ s a -> s{_plafpXgafv = a})

-- | The language of the following fields in \`flow\`: *
-- \`Flow.event_handlers.trigger_fulfillment.messages\` *
-- \`Flow.event_handlers.trigger_fulfillment.conditional_cases\` *
-- \`Flow.transition_routes.trigger_fulfillment.messages\` *
-- \`Flow.transition_routes.trigger_fulfillment.conditional_cases\` If not
-- specified, the agent\'s default language is used. [Many
-- languages](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/reference\/language)
-- are supported. Note: languages must be enabled in the agent before they
-- can be used.
plafpLanguageCode :: Lens' ProjectsLocationsAgentsFlowsPatch (Maybe Text)
plafpLanguageCode
  = lens _plafpLanguageCode
      (\ s a -> s{_plafpLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plafpUploadProtocol :: Lens' ProjectsLocationsAgentsFlowsPatch (Maybe Text)
plafpUploadProtocol
  = lens _plafpUploadProtocol
      (\ s a -> s{_plafpUploadProtocol = a})

-- | Required. The mask to control which fields get updated. If
-- \`update_mask\` is not specified, an error will be returned.
plafpUpdateMask :: Lens' ProjectsLocationsAgentsFlowsPatch (Maybe GFieldMask)
plafpUpdateMask
  = lens _plafpUpdateMask
      (\ s a -> s{_plafpUpdateMask = a})

-- | OAuth access token.
plafpAccessToken :: Lens' ProjectsLocationsAgentsFlowsPatch (Maybe Text)
plafpAccessToken
  = lens _plafpAccessToken
      (\ s a -> s{_plafpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plafpUploadType :: Lens' ProjectsLocationsAgentsFlowsPatch (Maybe Text)
plafpUploadType
  = lens _plafpUploadType
      (\ s a -> s{_plafpUploadType = a})

-- | Multipart request metadata.
plafpPayload :: Lens' ProjectsLocationsAgentsFlowsPatch GoogleCloudDialogflowCxV3Flow
plafpPayload
  = lens _plafpPayload (\ s a -> s{_plafpPayload = a})

-- | The unique identifier of the flow. Format:
-- \`projects\/\/locations\/\/agents\/\/flows\/\`.
plafpName :: Lens' ProjectsLocationsAgentsFlowsPatch Text
plafpName
  = lens _plafpName (\ s a -> s{_plafpName = a})

-- | JSONP
plafpCallback :: Lens' ProjectsLocationsAgentsFlowsPatch (Maybe Text)
plafpCallback
  = lens _plafpCallback
      (\ s a -> s{_plafpCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsFlowsPatch
         where
        type Rs ProjectsLocationsAgentsFlowsPatch =
             GoogleCloudDialogflowCxV3Flow
        type Scopes ProjectsLocationsAgentsFlowsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsLocationsAgentsFlowsPatch'{..}
          = go _plafpName _plafpXgafv _plafpLanguageCode
              _plafpUploadProtocol
              _plafpUpdateMask
              _plafpAccessToken
              _plafpUploadType
              _plafpCallback
              (Just AltJSON)
              _plafpPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsAgentsFlowsPatchResource)
                      mempty
