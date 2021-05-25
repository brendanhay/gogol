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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Webhooks.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a webhook in the specified agent.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.webhooks.create@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Webhooks.Create
    (
    -- * REST Resource
      ProjectsLocationsAgentsWebhooksCreateResource

    -- * Creating a Request
    , projectsLocationsAgentsWebhooksCreate
    , ProjectsLocationsAgentsWebhooksCreate

    -- * Request Lenses
    , plawcParent
    , plawcXgafv
    , plawcUploadProtocol
    , plawcAccessToken
    , plawcUploadType
    , plawcPayload
    , plawcCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.webhooks.create@ method which the
-- 'ProjectsLocationsAgentsWebhooksCreate' request conforms to.
type ProjectsLocationsAgentsWebhooksCreateResource =
     "v3" :>
       Capture "parent" Text :>
         "webhooks" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GoogleCloudDialogflowCxV3Webhook :>
                         Post '[JSON] GoogleCloudDialogflowCxV3Webhook

-- | Creates a webhook in the specified agent.
--
-- /See:/ 'projectsLocationsAgentsWebhooksCreate' smart constructor.
data ProjectsLocationsAgentsWebhooksCreate =
  ProjectsLocationsAgentsWebhooksCreate'
    { _plawcParent :: !Text
    , _plawcXgafv :: !(Maybe Xgafv)
    , _plawcUploadProtocol :: !(Maybe Text)
    , _plawcAccessToken :: !(Maybe Text)
    , _plawcUploadType :: !(Maybe Text)
    , _plawcPayload :: !GoogleCloudDialogflowCxV3Webhook
    , _plawcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsWebhooksCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plawcParent'
--
-- * 'plawcXgafv'
--
-- * 'plawcUploadProtocol'
--
-- * 'plawcAccessToken'
--
-- * 'plawcUploadType'
--
-- * 'plawcPayload'
--
-- * 'plawcCallback'
projectsLocationsAgentsWebhooksCreate
    :: Text -- ^ 'plawcParent'
    -> GoogleCloudDialogflowCxV3Webhook -- ^ 'plawcPayload'
    -> ProjectsLocationsAgentsWebhooksCreate
projectsLocationsAgentsWebhooksCreate pPlawcParent_ pPlawcPayload_ =
  ProjectsLocationsAgentsWebhooksCreate'
    { _plawcParent = pPlawcParent_
    , _plawcXgafv = Nothing
    , _plawcUploadProtocol = Nothing
    , _plawcAccessToken = Nothing
    , _plawcUploadType = Nothing
    , _plawcPayload = pPlawcPayload_
    , _plawcCallback = Nothing
    }


-- | Required. The agent to create a webhook for. Format:
-- \`projects\/\/locations\/\/agents\/\`.
plawcParent :: Lens' ProjectsLocationsAgentsWebhooksCreate Text
plawcParent
  = lens _plawcParent (\ s a -> s{_plawcParent = a})

-- | V1 error format.
plawcXgafv :: Lens' ProjectsLocationsAgentsWebhooksCreate (Maybe Xgafv)
plawcXgafv
  = lens _plawcXgafv (\ s a -> s{_plawcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plawcUploadProtocol :: Lens' ProjectsLocationsAgentsWebhooksCreate (Maybe Text)
plawcUploadProtocol
  = lens _plawcUploadProtocol
      (\ s a -> s{_plawcUploadProtocol = a})

-- | OAuth access token.
plawcAccessToken :: Lens' ProjectsLocationsAgentsWebhooksCreate (Maybe Text)
plawcAccessToken
  = lens _plawcAccessToken
      (\ s a -> s{_plawcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plawcUploadType :: Lens' ProjectsLocationsAgentsWebhooksCreate (Maybe Text)
plawcUploadType
  = lens _plawcUploadType
      (\ s a -> s{_plawcUploadType = a})

-- | Multipart request metadata.
plawcPayload :: Lens' ProjectsLocationsAgentsWebhooksCreate GoogleCloudDialogflowCxV3Webhook
plawcPayload
  = lens _plawcPayload (\ s a -> s{_plawcPayload = a})

-- | JSONP
plawcCallback :: Lens' ProjectsLocationsAgentsWebhooksCreate (Maybe Text)
plawcCallback
  = lens _plawcCallback
      (\ s a -> s{_plawcCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsWebhooksCreate
         where
        type Rs ProjectsLocationsAgentsWebhooksCreate =
             GoogleCloudDialogflowCxV3Webhook
        type Scopes ProjectsLocationsAgentsWebhooksCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsWebhooksCreate'{..}
          = go _plawcParent _plawcXgafv _plawcUploadProtocol
              _plawcAccessToken
              _plawcUploadType
              _plawcCallback
              (Just AltJSON)
              _plawcPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsAgentsWebhooksCreateResource)
                      mempty
