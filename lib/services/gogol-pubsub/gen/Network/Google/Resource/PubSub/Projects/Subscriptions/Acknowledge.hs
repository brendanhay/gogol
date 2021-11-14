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
-- Module      : Network.Google.Resource.PubSub.Projects.Subscriptions.Acknowledge
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Acknowledges the messages associated with the \`ack_ids\` in the
-- \`AcknowledgeRequest\`. The Pub\/Sub system can remove the relevant
-- messages from the subscription. Acknowledging a message whose ack
-- deadline has expired may succeed, but such a message may be redelivered
-- later. Acknowledging a message more than once will not result in an
-- error.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.subscriptions.acknowledge@.
module Network.Google.Resource.PubSub.Projects.Subscriptions.Acknowledge
    (
    -- * REST Resource
      ProjectsSubscriptionsAcknowledgeResource

    -- * Creating a Request
    , projectsSubscriptionsAcknowledge
    , ProjectsSubscriptionsAcknowledge

    -- * Request Lenses
    , psaXgafv
    , psaUploadProtocol
    , psaAccessToken
    , psaUploadType
    , psaPayload
    , psaSubscription
    , psaCallback
    ) where

import Network.Google.Prelude
import Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.subscriptions.acknowledge@ method which the
-- 'ProjectsSubscriptionsAcknowledge' request conforms to.
type ProjectsSubscriptionsAcknowledgeResource =
     "v1" :>
       CaptureMode "subscription" "acknowledge" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] AcknowledgeRequest :>
                       Post '[JSON] Empty

-- | Acknowledges the messages associated with the \`ack_ids\` in the
-- \`AcknowledgeRequest\`. The Pub\/Sub system can remove the relevant
-- messages from the subscription. Acknowledging a message whose ack
-- deadline has expired may succeed, but such a message may be redelivered
-- later. Acknowledging a message more than once will not result in an
-- error.
--
-- /See:/ 'projectsSubscriptionsAcknowledge' smart constructor.
data ProjectsSubscriptionsAcknowledge =
  ProjectsSubscriptionsAcknowledge'
    { _psaXgafv :: !(Maybe Xgafv)
    , _psaUploadProtocol :: !(Maybe Text)
    , _psaAccessToken :: !(Maybe Text)
    , _psaUploadType :: !(Maybe Text)
    , _psaPayload :: !AcknowledgeRequest
    , _psaSubscription :: !Text
    , _psaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSubscriptionsAcknowledge' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psaXgafv'
--
-- * 'psaUploadProtocol'
--
-- * 'psaAccessToken'
--
-- * 'psaUploadType'
--
-- * 'psaPayload'
--
-- * 'psaSubscription'
--
-- * 'psaCallback'
projectsSubscriptionsAcknowledge
    :: AcknowledgeRequest -- ^ 'psaPayload'
    -> Text -- ^ 'psaSubscription'
    -> ProjectsSubscriptionsAcknowledge
projectsSubscriptionsAcknowledge pPsaPayload_ pPsaSubscription_ =
  ProjectsSubscriptionsAcknowledge'
    { _psaXgafv = Nothing
    , _psaUploadProtocol = Nothing
    , _psaAccessToken = Nothing
    , _psaUploadType = Nothing
    , _psaPayload = pPsaPayload_
    , _psaSubscription = pPsaSubscription_
    , _psaCallback = Nothing
    }


-- | V1 error format.
psaXgafv :: Lens' ProjectsSubscriptionsAcknowledge (Maybe Xgafv)
psaXgafv = lens _psaXgafv (\ s a -> s{_psaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psaUploadProtocol :: Lens' ProjectsSubscriptionsAcknowledge (Maybe Text)
psaUploadProtocol
  = lens _psaUploadProtocol
      (\ s a -> s{_psaUploadProtocol = a})

-- | OAuth access token.
psaAccessToken :: Lens' ProjectsSubscriptionsAcknowledge (Maybe Text)
psaAccessToken
  = lens _psaAccessToken
      (\ s a -> s{_psaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psaUploadType :: Lens' ProjectsSubscriptionsAcknowledge (Maybe Text)
psaUploadType
  = lens _psaUploadType
      (\ s a -> s{_psaUploadType = a})

-- | Multipart request metadata.
psaPayload :: Lens' ProjectsSubscriptionsAcknowledge AcknowledgeRequest
psaPayload
  = lens _psaPayload (\ s a -> s{_psaPayload = a})

-- | Required. The subscription whose message is being acknowledged. Format
-- is \`projects\/{project}\/subscriptions\/{sub}\`.
psaSubscription :: Lens' ProjectsSubscriptionsAcknowledge Text
psaSubscription
  = lens _psaSubscription
      (\ s a -> s{_psaSubscription = a})

-- | JSONP
psaCallback :: Lens' ProjectsSubscriptionsAcknowledge (Maybe Text)
psaCallback
  = lens _psaCallback (\ s a -> s{_psaCallback = a})

instance GoogleRequest
           ProjectsSubscriptionsAcknowledge
         where
        type Rs ProjectsSubscriptionsAcknowledge = Empty
        type Scopes ProjectsSubscriptionsAcknowledge =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient ProjectsSubscriptionsAcknowledge'{..}
          = go _psaSubscription _psaXgafv _psaUploadProtocol
              _psaAccessToken
              _psaUploadType
              _psaCallback
              (Just AltJSON)
              _psaPayload
              pubSubService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsSubscriptionsAcknowledgeResource)
                      mempty
