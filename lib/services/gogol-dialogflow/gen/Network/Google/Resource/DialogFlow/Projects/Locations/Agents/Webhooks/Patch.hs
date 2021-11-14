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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Webhooks.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified webhook.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.webhooks.patch@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Webhooks.Patch
    (
    -- * REST Resource
      ProjectsLocationsAgentsWebhooksPatchResource

    -- * Creating a Request
    , projectsLocationsAgentsWebhooksPatch
    , ProjectsLocationsAgentsWebhooksPatch

    -- * Request Lenses
    , plawpXgafv
    , plawpUploadProtocol
    , plawpUpdateMask
    , plawpAccessToken
    , plawpUploadType
    , plawpPayload
    , plawpName
    , plawpCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.webhooks.patch@ method which the
-- 'ProjectsLocationsAgentsWebhooksPatch' request conforms to.
type ProjectsLocationsAgentsWebhooksPatchResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GoogleCloudDialogflowCxV3Webhook :>
                         Patch '[JSON] GoogleCloudDialogflowCxV3Webhook

-- | Updates the specified webhook.
--
-- /See:/ 'projectsLocationsAgentsWebhooksPatch' smart constructor.
data ProjectsLocationsAgentsWebhooksPatch =
  ProjectsLocationsAgentsWebhooksPatch'
    { _plawpXgafv :: !(Maybe Xgafv)
    , _plawpUploadProtocol :: !(Maybe Text)
    , _plawpUpdateMask :: !(Maybe GFieldMask)
    , _plawpAccessToken :: !(Maybe Text)
    , _plawpUploadType :: !(Maybe Text)
    , _plawpPayload :: !GoogleCloudDialogflowCxV3Webhook
    , _plawpName :: !Text
    , _plawpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsWebhooksPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plawpXgafv'
--
-- * 'plawpUploadProtocol'
--
-- * 'plawpUpdateMask'
--
-- * 'plawpAccessToken'
--
-- * 'plawpUploadType'
--
-- * 'plawpPayload'
--
-- * 'plawpName'
--
-- * 'plawpCallback'
projectsLocationsAgentsWebhooksPatch
    :: GoogleCloudDialogflowCxV3Webhook -- ^ 'plawpPayload'
    -> Text -- ^ 'plawpName'
    -> ProjectsLocationsAgentsWebhooksPatch
projectsLocationsAgentsWebhooksPatch pPlawpPayload_ pPlawpName_ =
  ProjectsLocationsAgentsWebhooksPatch'
    { _plawpXgafv = Nothing
    , _plawpUploadProtocol = Nothing
    , _plawpUpdateMask = Nothing
    , _plawpAccessToken = Nothing
    , _plawpUploadType = Nothing
    , _plawpPayload = pPlawpPayload_
    , _plawpName = pPlawpName_
    , _plawpCallback = Nothing
    }


-- | V1 error format.
plawpXgafv :: Lens' ProjectsLocationsAgentsWebhooksPatch (Maybe Xgafv)
plawpXgafv
  = lens _plawpXgafv (\ s a -> s{_plawpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plawpUploadProtocol :: Lens' ProjectsLocationsAgentsWebhooksPatch (Maybe Text)
plawpUploadProtocol
  = lens _plawpUploadProtocol
      (\ s a -> s{_plawpUploadProtocol = a})

-- | The mask to control which fields get updated. If the mask is not
-- present, all fields will be updated.
plawpUpdateMask :: Lens' ProjectsLocationsAgentsWebhooksPatch (Maybe GFieldMask)
plawpUpdateMask
  = lens _plawpUpdateMask
      (\ s a -> s{_plawpUpdateMask = a})

-- | OAuth access token.
plawpAccessToken :: Lens' ProjectsLocationsAgentsWebhooksPatch (Maybe Text)
plawpAccessToken
  = lens _plawpAccessToken
      (\ s a -> s{_plawpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plawpUploadType :: Lens' ProjectsLocationsAgentsWebhooksPatch (Maybe Text)
plawpUploadType
  = lens _plawpUploadType
      (\ s a -> s{_plawpUploadType = a})

-- | Multipart request metadata.
plawpPayload :: Lens' ProjectsLocationsAgentsWebhooksPatch GoogleCloudDialogflowCxV3Webhook
plawpPayload
  = lens _plawpPayload (\ s a -> s{_plawpPayload = a})

-- | The unique identifier of the webhook. Required for the
-- Webhooks.UpdateWebhook method. Webhooks.CreateWebhook populates the name
-- automatically. Format:
-- \`projects\/\/locations\/\/agents\/\/webhooks\/\`.
plawpName :: Lens' ProjectsLocationsAgentsWebhooksPatch Text
plawpName
  = lens _plawpName (\ s a -> s{_plawpName = a})

-- | JSONP
plawpCallback :: Lens' ProjectsLocationsAgentsWebhooksPatch (Maybe Text)
plawpCallback
  = lens _plawpCallback
      (\ s a -> s{_plawpCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsWebhooksPatch
         where
        type Rs ProjectsLocationsAgentsWebhooksPatch =
             GoogleCloudDialogflowCxV3Webhook
        type Scopes ProjectsLocationsAgentsWebhooksPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsWebhooksPatch'{..}
          = go _plawpName _plawpXgafv _plawpUploadProtocol
              _plawpUpdateMask
              _plawpAccessToken
              _plawpUploadType
              _plawpCallback
              (Just AltJSON)
              _plawpPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsAgentsWebhooksPatchResource)
                      mempty
