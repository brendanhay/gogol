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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Webhooks.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified webhook.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.webhooks.delete@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Webhooks.Delete
    (
    -- * REST Resource
      ProjectsLocationsAgentsWebhooksDeleteResource

    -- * Creating a Request
    , projectsLocationsAgentsWebhooksDelete
    , ProjectsLocationsAgentsWebhooksDelete

    -- * Request Lenses
    , plawdXgafv
    , plawdUploadProtocol
    , plawdForce
    , plawdAccessToken
    , plawdUploadType
    , plawdName
    , plawdCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.webhooks.delete@ method which the
-- 'ProjectsLocationsAgentsWebhooksDelete' request conforms to.
type ProjectsLocationsAgentsWebhooksDeleteResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "force" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Delete '[JSON] GoogleProtobufEmpty

-- | Deletes the specified webhook.
--
-- /See:/ 'projectsLocationsAgentsWebhooksDelete' smart constructor.
data ProjectsLocationsAgentsWebhooksDelete =
  ProjectsLocationsAgentsWebhooksDelete'
    { _plawdXgafv :: !(Maybe Xgafv)
    , _plawdUploadProtocol :: !(Maybe Text)
    , _plawdForce :: !(Maybe Bool)
    , _plawdAccessToken :: !(Maybe Text)
    , _plawdUploadType :: !(Maybe Text)
    , _plawdName :: !Text
    , _plawdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsWebhooksDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plawdXgafv'
--
-- * 'plawdUploadProtocol'
--
-- * 'plawdForce'
--
-- * 'plawdAccessToken'
--
-- * 'plawdUploadType'
--
-- * 'plawdName'
--
-- * 'plawdCallback'
projectsLocationsAgentsWebhooksDelete
    :: Text -- ^ 'plawdName'
    -> ProjectsLocationsAgentsWebhooksDelete
projectsLocationsAgentsWebhooksDelete pPlawdName_ =
  ProjectsLocationsAgentsWebhooksDelete'
    { _plawdXgafv = Nothing
    , _plawdUploadProtocol = Nothing
    , _plawdForce = Nothing
    , _plawdAccessToken = Nothing
    , _plawdUploadType = Nothing
    , _plawdName = pPlawdName_
    , _plawdCallback = Nothing
    }


-- | V1 error format.
plawdXgafv :: Lens' ProjectsLocationsAgentsWebhooksDelete (Maybe Xgafv)
plawdXgafv
  = lens _plawdXgafv (\ s a -> s{_plawdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plawdUploadProtocol :: Lens' ProjectsLocationsAgentsWebhooksDelete (Maybe Text)
plawdUploadProtocol
  = lens _plawdUploadProtocol
      (\ s a -> s{_plawdUploadProtocol = a})

-- | This field has no effect for webhook not being used. For webhooks that
-- are used by pages\/flows\/transition route groups: * If \`force\` is set
-- to false, an error will be returned with message indicating the
-- referenced resources. * If \`force\` is set to true, Dialogflow will
-- remove the webhook, as well as any references to the webhook (i.e.
-- Webhook and tagin fulfillments that point to this webhook will be
-- removed).
plawdForce :: Lens' ProjectsLocationsAgentsWebhooksDelete (Maybe Bool)
plawdForce
  = lens _plawdForce (\ s a -> s{_plawdForce = a})

-- | OAuth access token.
plawdAccessToken :: Lens' ProjectsLocationsAgentsWebhooksDelete (Maybe Text)
plawdAccessToken
  = lens _plawdAccessToken
      (\ s a -> s{_plawdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plawdUploadType :: Lens' ProjectsLocationsAgentsWebhooksDelete (Maybe Text)
plawdUploadType
  = lens _plawdUploadType
      (\ s a -> s{_plawdUploadType = a})

-- | Required. The name of the webhook to delete. Format:
-- \`projects\/\/locations\/\/agents\/\/webhooks\/\`.
plawdName :: Lens' ProjectsLocationsAgentsWebhooksDelete Text
plawdName
  = lens _plawdName (\ s a -> s{_plawdName = a})

-- | JSONP
plawdCallback :: Lens' ProjectsLocationsAgentsWebhooksDelete (Maybe Text)
plawdCallback
  = lens _plawdCallback
      (\ s a -> s{_plawdCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsWebhooksDelete
         where
        type Rs ProjectsLocationsAgentsWebhooksDelete =
             GoogleProtobufEmpty
        type Scopes ProjectsLocationsAgentsWebhooksDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsWebhooksDelete'{..}
          = go _plawdName _plawdXgafv _plawdUploadProtocol
              _plawdForce
              _plawdAccessToken
              _plawdUploadType
              _plawdCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsAgentsWebhooksDeleteResource)
                      mempty
