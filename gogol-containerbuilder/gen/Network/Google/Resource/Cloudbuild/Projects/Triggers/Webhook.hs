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
-- Module      : Network.Google.Resource.Cloudbuild.Projects.Triggers.Webhook
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- ReceiveTriggerWebhook [Experimental] is called when the API receives a
-- webhook request targeted at a specific trigger.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.triggers.webhook@.
module Network.Google.Resource.Cloudbuild.Projects.Triggers.Webhook
    (
    -- * REST Resource
      ProjectsTriggersWebhookResource

    -- * Creating a Request
    , projectsTriggersWebhook
    , ProjectsTriggersWebhook

    -- * Request Lenses
    , ptwXgafv
    , ptwUploadProtocol
    , ptwAccessToken
    , ptwUploadType
    , ptwSecret
    , ptwPayload
    , ptwName
    , ptwTrigger
    , ptwProjectId
    , ptwCallback
    ) where

import Network.Google.ContainerBuilder.Types
import Network.Google.Prelude

-- | A resource alias for @cloudbuild.projects.triggers.webhook@ method which the
-- 'ProjectsTriggersWebhook' request conforms to.
type ProjectsTriggersWebhookResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "triggers" :>
             CaptureMode "trigger" "webhook" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "secret" Text :>
                         QueryParam "name" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] HTTPBody :>
                                 Post '[JSON] ReceiveTriggerWebhookResponse

-- | ReceiveTriggerWebhook [Experimental] is called when the API receives a
-- webhook request targeted at a specific trigger.
--
-- /See:/ 'projectsTriggersWebhook' smart constructor.
data ProjectsTriggersWebhook =
  ProjectsTriggersWebhook'
    { _ptwXgafv :: !(Maybe Xgafv)
    , _ptwUploadProtocol :: !(Maybe Text)
    , _ptwAccessToken :: !(Maybe Text)
    , _ptwUploadType :: !(Maybe Text)
    , _ptwSecret :: !(Maybe Text)
    , _ptwPayload :: !HTTPBody
    , _ptwName :: !(Maybe Text)
    , _ptwTrigger :: !Text
    , _ptwProjectId :: !Text
    , _ptwCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTriggersWebhook' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptwXgafv'
--
-- * 'ptwUploadProtocol'
--
-- * 'ptwAccessToken'
--
-- * 'ptwUploadType'
--
-- * 'ptwSecret'
--
-- * 'ptwPayload'
--
-- * 'ptwName'
--
-- * 'ptwTrigger'
--
-- * 'ptwProjectId'
--
-- * 'ptwCallback'
projectsTriggersWebhook
    :: HTTPBody -- ^ 'ptwPayload'
    -> Text -- ^ 'ptwTrigger'
    -> Text -- ^ 'ptwProjectId'
    -> ProjectsTriggersWebhook
projectsTriggersWebhook pPtwPayload_ pPtwTrigger_ pPtwProjectId_ =
  ProjectsTriggersWebhook'
    { _ptwXgafv = Nothing
    , _ptwUploadProtocol = Nothing
    , _ptwAccessToken = Nothing
    , _ptwUploadType = Nothing
    , _ptwSecret = Nothing
    , _ptwPayload = pPtwPayload_
    , _ptwName = Nothing
    , _ptwTrigger = pPtwTrigger_
    , _ptwProjectId = pPtwProjectId_
    , _ptwCallback = Nothing
    }


-- | V1 error format.
ptwXgafv :: Lens' ProjectsTriggersWebhook (Maybe Xgafv)
ptwXgafv = lens _ptwXgafv (\ s a -> s{_ptwXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptwUploadProtocol :: Lens' ProjectsTriggersWebhook (Maybe Text)
ptwUploadProtocol
  = lens _ptwUploadProtocol
      (\ s a -> s{_ptwUploadProtocol = a})

-- | OAuth access token.
ptwAccessToken :: Lens' ProjectsTriggersWebhook (Maybe Text)
ptwAccessToken
  = lens _ptwAccessToken
      (\ s a -> s{_ptwAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptwUploadType :: Lens' ProjectsTriggersWebhook (Maybe Text)
ptwUploadType
  = lens _ptwUploadType
      (\ s a -> s{_ptwUploadType = a})

-- | Secret token used for authorization if an OAuth token isn\'t provided.
ptwSecret :: Lens' ProjectsTriggersWebhook (Maybe Text)
ptwSecret
  = lens _ptwSecret (\ s a -> s{_ptwSecret = a})

-- | Multipart request metadata.
ptwPayload :: Lens' ProjectsTriggersWebhook HTTPBody
ptwPayload
  = lens _ptwPayload (\ s a -> s{_ptwPayload = a})

-- | The name of the \`ReceiveTriggerWebhook\` to retrieve. Format:
-- \`projects\/{project}\/locations\/{location}\/triggers\/{trigger}\`
ptwName :: Lens' ProjectsTriggersWebhook (Maybe Text)
ptwName = lens _ptwName (\ s a -> s{_ptwName = a})

-- | Name of the trigger to run the payload against
ptwTrigger :: Lens' ProjectsTriggersWebhook Text
ptwTrigger
  = lens _ptwTrigger (\ s a -> s{_ptwTrigger = a})

-- | Project in which the specified trigger lives
ptwProjectId :: Lens' ProjectsTriggersWebhook Text
ptwProjectId
  = lens _ptwProjectId (\ s a -> s{_ptwProjectId = a})

-- | JSONP
ptwCallback :: Lens' ProjectsTriggersWebhook (Maybe Text)
ptwCallback
  = lens _ptwCallback (\ s a -> s{_ptwCallback = a})

instance GoogleRequest ProjectsTriggersWebhook where
        type Rs ProjectsTriggersWebhook =
             ReceiveTriggerWebhookResponse
        type Scopes ProjectsTriggersWebhook = '[]
        requestClient ProjectsTriggersWebhook'{..}
          = go _ptwProjectId _ptwTrigger _ptwXgafv
              _ptwUploadProtocol
              _ptwAccessToken
              _ptwUploadType
              _ptwSecret
              _ptwName
              _ptwCallback
              (Just AltJSON)
              _ptwPayload
              containerBuilderService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTriggersWebhookResource)
                      mempty
