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
-- Module      : Network.Google.Resource.PubSub.Projects.Subscriptions.ModifyAckDeadline
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the ack deadline for a specific message. This method is useful
-- to indicate that more time is needed to process a message by the
-- subscriber, or to make the message available for redelivery if the
-- processing was interrupted.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Google Cloud Pub/Sub API Reference> for @pubsub.projects.subscriptions.modifyAckDeadline@.
module Network.Google.Resource.PubSub.Projects.Subscriptions.ModifyAckDeadline
    (
    -- * REST Resource
      ProjectsSubscriptionsModifyAckDeadlineResource

    -- * Creating a Request
    , projectsSubscriptionsModifyAckDeadline
    , ProjectsSubscriptionsModifyAckDeadline

    -- * Request Lenses
    , psmadXgafv
    , psmadUploadProtocol
    , psmadPp
    , psmadAccessToken
    , psmadUploadType
    , psmadPayload
    , psmadBearerToken
    , psmadSubscription
    , psmadCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.subscriptions.modifyAckDeadline@ method which the
-- 'ProjectsSubscriptionsModifyAckDeadline' request conforms to.
type ProjectsSubscriptionsModifyAckDeadlineResource =
     "v1" :>
       CaptureMode "subscription" "modifyAckDeadline" Text
         :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ModifyAckDeadlineRequest :>
                           Post '[JSON] Empty

-- | Modifies the ack deadline for a specific message. This method is useful
-- to indicate that more time is needed to process a message by the
-- subscriber, or to make the message available for redelivery if the
-- processing was interrupted.
--
-- /See:/ 'projectsSubscriptionsModifyAckDeadline' smart constructor.
data ProjectsSubscriptionsModifyAckDeadline = ProjectsSubscriptionsModifyAckDeadline
    { _psmadXgafv          :: !(Maybe Text)
    , _psmadUploadProtocol :: !(Maybe Text)
    , _psmadPp             :: !Bool
    , _psmadAccessToken    :: !(Maybe Text)
    , _psmadUploadType     :: !(Maybe Text)
    , _psmadPayload        :: !ModifyAckDeadlineRequest
    , _psmadBearerToken    :: !(Maybe Text)
    , _psmadSubscription   :: !Text
    , _psmadCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSubscriptionsModifyAckDeadline' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psmadXgafv'
--
-- * 'psmadUploadProtocol'
--
-- * 'psmadPp'
--
-- * 'psmadAccessToken'
--
-- * 'psmadUploadType'
--
-- * 'psmadPayload'
--
-- * 'psmadBearerToken'
--
-- * 'psmadSubscription'
--
-- * 'psmadCallback'
projectsSubscriptionsModifyAckDeadline
    :: ModifyAckDeadlineRequest -- ^ 'psmadPayload'
    -> Text -- ^ 'psmadSubscription'
    -> ProjectsSubscriptionsModifyAckDeadline
projectsSubscriptionsModifyAckDeadline pPsmadPayload_ pPsmadSubscription_ =
    ProjectsSubscriptionsModifyAckDeadline
    { _psmadXgafv = Nothing
    , _psmadUploadProtocol = Nothing
    , _psmadPp = True
    , _psmadAccessToken = Nothing
    , _psmadUploadType = Nothing
    , _psmadPayload = pPsmadPayload_
    , _psmadBearerToken = Nothing
    , _psmadSubscription = pPsmadSubscription_
    , _psmadCallback = Nothing
    }

-- | V1 error format.
psmadXgafv :: Lens' ProjectsSubscriptionsModifyAckDeadline (Maybe Text)
psmadXgafv
  = lens _psmadXgafv (\ s a -> s{_psmadXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psmadUploadProtocol :: Lens' ProjectsSubscriptionsModifyAckDeadline (Maybe Text)
psmadUploadProtocol
  = lens _psmadUploadProtocol
      (\ s a -> s{_psmadUploadProtocol = a})

-- | Pretty-print response.
psmadPp :: Lens' ProjectsSubscriptionsModifyAckDeadline Bool
psmadPp = lens _psmadPp (\ s a -> s{_psmadPp = a})

-- | OAuth access token.
psmadAccessToken :: Lens' ProjectsSubscriptionsModifyAckDeadline (Maybe Text)
psmadAccessToken
  = lens _psmadAccessToken
      (\ s a -> s{_psmadAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psmadUploadType :: Lens' ProjectsSubscriptionsModifyAckDeadline (Maybe Text)
psmadUploadType
  = lens _psmadUploadType
      (\ s a -> s{_psmadUploadType = a})

-- | Multipart request metadata.
psmadPayload :: Lens' ProjectsSubscriptionsModifyAckDeadline ModifyAckDeadlineRequest
psmadPayload
  = lens _psmadPayload (\ s a -> s{_psmadPayload = a})

-- | OAuth bearer token.
psmadBearerToken :: Lens' ProjectsSubscriptionsModifyAckDeadline (Maybe Text)
psmadBearerToken
  = lens _psmadBearerToken
      (\ s a -> s{_psmadBearerToken = a})

-- | The name of the subscription.
psmadSubscription :: Lens' ProjectsSubscriptionsModifyAckDeadline Text
psmadSubscription
  = lens _psmadSubscription
      (\ s a -> s{_psmadSubscription = a})

-- | JSONP
psmadCallback :: Lens' ProjectsSubscriptionsModifyAckDeadline (Maybe Text)
psmadCallback
  = lens _psmadCallback
      (\ s a -> s{_psmadCallback = a})

instance GoogleRequest
         ProjectsSubscriptionsModifyAckDeadline where
        type Rs ProjectsSubscriptionsModifyAckDeadline =
             Empty
        type Scopes ProjectsSubscriptionsModifyAckDeadline =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient
          ProjectsSubscriptionsModifyAckDeadline{..}
          = go _psmadSubscription _psmadXgafv
              _psmadUploadProtocol
              (Just _psmadPp)
              _psmadAccessToken
              _psmadUploadType
              _psmadBearerToken
              _psmadCallback
              (Just AltJSON)
              _psmadPayload
              pubSubService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsSubscriptionsModifyAckDeadlineResource)
                      mempty
