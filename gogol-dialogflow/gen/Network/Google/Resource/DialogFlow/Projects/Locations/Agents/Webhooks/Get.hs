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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Webhooks.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified webhook.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.webhooks.get@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Webhooks.Get
    (
    -- * REST Resource
      ProjectsLocationsAgentsWebhooksGetResource

    -- * Creating a Request
    , projectsLocationsAgentsWebhooksGet
    , ProjectsLocationsAgentsWebhooksGet

    -- * Request Lenses
    , plawgXgafv
    , plawgUploadProtocol
    , plawgAccessToken
    , plawgUploadType
    , plawgName
    , plawgCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.webhooks.get@ method which the
-- 'ProjectsLocationsAgentsWebhooksGet' request conforms to.
type ProjectsLocationsAgentsWebhooksGetResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GoogleCloudDialogflowCxV3Webhook

-- | Retrieves the specified webhook.
--
-- /See:/ 'projectsLocationsAgentsWebhooksGet' smart constructor.
data ProjectsLocationsAgentsWebhooksGet =
  ProjectsLocationsAgentsWebhooksGet'
    { _plawgXgafv :: !(Maybe Xgafv)
    , _plawgUploadProtocol :: !(Maybe Text)
    , _plawgAccessToken :: !(Maybe Text)
    , _plawgUploadType :: !(Maybe Text)
    , _plawgName :: !Text
    , _plawgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsWebhooksGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plawgXgafv'
--
-- * 'plawgUploadProtocol'
--
-- * 'plawgAccessToken'
--
-- * 'plawgUploadType'
--
-- * 'plawgName'
--
-- * 'plawgCallback'
projectsLocationsAgentsWebhooksGet
    :: Text -- ^ 'plawgName'
    -> ProjectsLocationsAgentsWebhooksGet
projectsLocationsAgentsWebhooksGet pPlawgName_ =
  ProjectsLocationsAgentsWebhooksGet'
    { _plawgXgafv = Nothing
    , _plawgUploadProtocol = Nothing
    , _plawgAccessToken = Nothing
    , _plawgUploadType = Nothing
    , _plawgName = pPlawgName_
    , _plawgCallback = Nothing
    }


-- | V1 error format.
plawgXgafv :: Lens' ProjectsLocationsAgentsWebhooksGet (Maybe Xgafv)
plawgXgafv
  = lens _plawgXgafv (\ s a -> s{_plawgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plawgUploadProtocol :: Lens' ProjectsLocationsAgentsWebhooksGet (Maybe Text)
plawgUploadProtocol
  = lens _plawgUploadProtocol
      (\ s a -> s{_plawgUploadProtocol = a})

-- | OAuth access token.
plawgAccessToken :: Lens' ProjectsLocationsAgentsWebhooksGet (Maybe Text)
plawgAccessToken
  = lens _plawgAccessToken
      (\ s a -> s{_plawgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plawgUploadType :: Lens' ProjectsLocationsAgentsWebhooksGet (Maybe Text)
plawgUploadType
  = lens _plawgUploadType
      (\ s a -> s{_plawgUploadType = a})

-- | Required. The name of the webhook. Format:
-- \`projects\/\/locations\/\/agents\/\/webhooks\/\`.
plawgName :: Lens' ProjectsLocationsAgentsWebhooksGet Text
plawgName
  = lens _plawgName (\ s a -> s{_plawgName = a})

-- | JSONP
plawgCallback :: Lens' ProjectsLocationsAgentsWebhooksGet (Maybe Text)
plawgCallback
  = lens _plawgCallback
      (\ s a -> s{_plawgCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsWebhooksGet
         where
        type Rs ProjectsLocationsAgentsWebhooksGet =
             GoogleCloudDialogflowCxV3Webhook
        type Scopes ProjectsLocationsAgentsWebhooksGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsLocationsAgentsWebhooksGet'{..}
          = go _plawgName _plawgXgafv _plawgUploadProtocol
              _plawgAccessToken
              _plawgUploadType
              _plawgCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsAgentsWebhooksGetResource)
                      mempty
