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
-- Module      : Network.Google.Resource.Cloudbuild.Projects.Locations.Triggers.Webhook
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- ReceiveTriggerWebhook [Experimental] is called when the API receives a
-- webhook request targeted at a specific trigger.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.triggers.webhook@.
module Network.Google.Resource.Cloudbuild.Projects.Locations.Triggers.Webhook
    (
    -- * REST Resource
      ProjectsLocationsTriggersWebhookResource

    -- * Creating a Request
    , projectsLocationsTriggersWebhook
    , ProjectsLocationsTriggersWebhook

    -- * Request Lenses
    , pltwXgafv
    , pltwUploadProtocol
    , pltwAccessToken
    , pltwUploadType
    , pltwSecret
    , pltwPayload
    , pltwName
    , pltwTrigger
    , pltwProjectId
    , pltwCallback
    ) where

import Network.Google.ContainerBuilder.Types
import Network.Google.Prelude

-- | A resource alias for @cloudbuild.projects.locations.triggers.webhook@ method which the
-- 'ProjectsLocationsTriggersWebhook' request conforms to.
type ProjectsLocationsTriggersWebhookResource =
     "v1" :>
       CaptureMode "name" "webhook" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "secret" Text :>
                   QueryParam "trigger" Text :>
                     QueryParam "projectId" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] HTTPBody :>
                             Post '[JSON] ReceiveTriggerWebhookResponse

-- | ReceiveTriggerWebhook [Experimental] is called when the API receives a
-- webhook request targeted at a specific trigger.
--
-- /See:/ 'projectsLocationsTriggersWebhook' smart constructor.
data ProjectsLocationsTriggersWebhook =
  ProjectsLocationsTriggersWebhook'
    { _pltwXgafv :: !(Maybe Xgafv)
    , _pltwUploadProtocol :: !(Maybe Text)
    , _pltwAccessToken :: !(Maybe Text)
    , _pltwUploadType :: !(Maybe Text)
    , _pltwSecret :: !(Maybe Text)
    , _pltwPayload :: !HTTPBody
    , _pltwName :: !Text
    , _pltwTrigger :: !(Maybe Text)
    , _pltwProjectId :: !(Maybe Text)
    , _pltwCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsTriggersWebhook' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pltwXgafv'
--
-- * 'pltwUploadProtocol'
--
-- * 'pltwAccessToken'
--
-- * 'pltwUploadType'
--
-- * 'pltwSecret'
--
-- * 'pltwPayload'
--
-- * 'pltwName'
--
-- * 'pltwTrigger'
--
-- * 'pltwProjectId'
--
-- * 'pltwCallback'
projectsLocationsTriggersWebhook
    :: HTTPBody -- ^ 'pltwPayload'
    -> Text -- ^ 'pltwName'
    -> ProjectsLocationsTriggersWebhook
projectsLocationsTriggersWebhook pPltwPayload_ pPltwName_ =
  ProjectsLocationsTriggersWebhook'
    { _pltwXgafv = Nothing
    , _pltwUploadProtocol = Nothing
    , _pltwAccessToken = Nothing
    , _pltwUploadType = Nothing
    , _pltwSecret = Nothing
    , _pltwPayload = pPltwPayload_
    , _pltwName = pPltwName_
    , _pltwTrigger = Nothing
    , _pltwProjectId = Nothing
    , _pltwCallback = Nothing
    }


-- | V1 error format.
pltwXgafv :: Lens' ProjectsLocationsTriggersWebhook (Maybe Xgafv)
pltwXgafv
  = lens _pltwXgafv (\ s a -> s{_pltwXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pltwUploadProtocol :: Lens' ProjectsLocationsTriggersWebhook (Maybe Text)
pltwUploadProtocol
  = lens _pltwUploadProtocol
      (\ s a -> s{_pltwUploadProtocol = a})

-- | OAuth access token.
pltwAccessToken :: Lens' ProjectsLocationsTriggersWebhook (Maybe Text)
pltwAccessToken
  = lens _pltwAccessToken
      (\ s a -> s{_pltwAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pltwUploadType :: Lens' ProjectsLocationsTriggersWebhook (Maybe Text)
pltwUploadType
  = lens _pltwUploadType
      (\ s a -> s{_pltwUploadType = a})

-- | Secret token used for authorization if an OAuth token isn\'t provided.
pltwSecret :: Lens' ProjectsLocationsTriggersWebhook (Maybe Text)
pltwSecret
  = lens _pltwSecret (\ s a -> s{_pltwSecret = a})

-- | Multipart request metadata.
pltwPayload :: Lens' ProjectsLocationsTriggersWebhook HTTPBody
pltwPayload
  = lens _pltwPayload (\ s a -> s{_pltwPayload = a})

-- | The name of the \`ReceiveTriggerWebhook\` to retrieve. Format:
-- \`projects\/{project}\/locations\/{location}\/triggers\/{trigger}\`
pltwName :: Lens' ProjectsLocationsTriggersWebhook Text
pltwName = lens _pltwName (\ s a -> s{_pltwName = a})

-- | Name of the trigger to run the payload against
pltwTrigger :: Lens' ProjectsLocationsTriggersWebhook (Maybe Text)
pltwTrigger
  = lens _pltwTrigger (\ s a -> s{_pltwTrigger = a})

-- | Project in which the specified trigger lives
pltwProjectId :: Lens' ProjectsLocationsTriggersWebhook (Maybe Text)
pltwProjectId
  = lens _pltwProjectId
      (\ s a -> s{_pltwProjectId = a})

-- | JSONP
pltwCallback :: Lens' ProjectsLocationsTriggersWebhook (Maybe Text)
pltwCallback
  = lens _pltwCallback (\ s a -> s{_pltwCallback = a})

instance GoogleRequest
           ProjectsLocationsTriggersWebhook
         where
        type Rs ProjectsLocationsTriggersWebhook =
             ReceiveTriggerWebhookResponse
        type Scopes ProjectsLocationsTriggersWebhook = '[]
        requestClient ProjectsLocationsTriggersWebhook'{..}
          = go _pltwName _pltwXgafv _pltwUploadProtocol
              _pltwAccessToken
              _pltwUploadType
              _pltwSecret
              _pltwTrigger
              _pltwProjectId
              _pltwCallback
              (Just AltJSON)
              _pltwPayload
              containerBuilderService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsTriggersWebhookResource)
                      mempty
