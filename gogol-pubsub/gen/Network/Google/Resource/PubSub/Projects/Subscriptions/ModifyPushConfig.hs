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
-- Module      : Network.Google.Resource.PubSub.Projects.Subscriptions.ModifyPushConfig
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the \`PushConfig\` for a specified subscription. This may be
-- used to change a push subscription to a pull one (signified by an empty
-- \`PushConfig\`) or vice versa, or change the endpoint URL and other
-- attributes of a push subscription. Messages will accumulate for delivery
-- continuously through the call regardless of changes to the
-- \`PushConfig\`.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.subscriptions.modifyPushConfig@.
module Network.Google.Resource.PubSub.Projects.Subscriptions.ModifyPushConfig
    (
    -- * REST Resource
      ProjectsSubscriptionsModifyPushConfigResource

    -- * Creating a Request
    , projectsSubscriptionsModifyPushConfig
    , ProjectsSubscriptionsModifyPushConfig

    -- * Request Lenses
    , psmpcXgafv
    , psmpcUploadProtocol
    , psmpcAccessToken
    , psmpcUploadType
    , psmpcPayload
    , psmpcSubscription
    , psmpcCallback
    ) where

import Network.Google.Prelude
import Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.subscriptions.modifyPushConfig@ method which the
-- 'ProjectsSubscriptionsModifyPushConfig' request conforms to.
type ProjectsSubscriptionsModifyPushConfigResource =
     "v1" :>
       CaptureMode "subscription" "modifyPushConfig" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ModifyPushConfigRequest :>
                       Post '[JSON] Empty

-- | Modifies the \`PushConfig\` for a specified subscription. This may be
-- used to change a push subscription to a pull one (signified by an empty
-- \`PushConfig\`) or vice versa, or change the endpoint URL and other
-- attributes of a push subscription. Messages will accumulate for delivery
-- continuously through the call regardless of changes to the
-- \`PushConfig\`.
--
-- /See:/ 'projectsSubscriptionsModifyPushConfig' smart constructor.
data ProjectsSubscriptionsModifyPushConfig =
  ProjectsSubscriptionsModifyPushConfig'
    { _psmpcXgafv :: !(Maybe Xgafv)
    , _psmpcUploadProtocol :: !(Maybe Text)
    , _psmpcAccessToken :: !(Maybe Text)
    , _psmpcUploadType :: !(Maybe Text)
    , _psmpcPayload :: !ModifyPushConfigRequest
    , _psmpcSubscription :: !Text
    , _psmpcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSubscriptionsModifyPushConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psmpcXgafv'
--
-- * 'psmpcUploadProtocol'
--
-- * 'psmpcAccessToken'
--
-- * 'psmpcUploadType'
--
-- * 'psmpcPayload'
--
-- * 'psmpcSubscription'
--
-- * 'psmpcCallback'
projectsSubscriptionsModifyPushConfig
    :: ModifyPushConfigRequest -- ^ 'psmpcPayload'
    -> Text -- ^ 'psmpcSubscription'
    -> ProjectsSubscriptionsModifyPushConfig
projectsSubscriptionsModifyPushConfig pPsmpcPayload_ pPsmpcSubscription_ =
  ProjectsSubscriptionsModifyPushConfig'
    { _psmpcXgafv = Nothing
    , _psmpcUploadProtocol = Nothing
    , _psmpcAccessToken = Nothing
    , _psmpcUploadType = Nothing
    , _psmpcPayload = pPsmpcPayload_
    , _psmpcSubscription = pPsmpcSubscription_
    , _psmpcCallback = Nothing
    }


-- | V1 error format.
psmpcXgafv :: Lens' ProjectsSubscriptionsModifyPushConfig (Maybe Xgafv)
psmpcXgafv
  = lens _psmpcXgafv (\ s a -> s{_psmpcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psmpcUploadProtocol :: Lens' ProjectsSubscriptionsModifyPushConfig (Maybe Text)
psmpcUploadProtocol
  = lens _psmpcUploadProtocol
      (\ s a -> s{_psmpcUploadProtocol = a})

-- | OAuth access token.
psmpcAccessToken :: Lens' ProjectsSubscriptionsModifyPushConfig (Maybe Text)
psmpcAccessToken
  = lens _psmpcAccessToken
      (\ s a -> s{_psmpcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psmpcUploadType :: Lens' ProjectsSubscriptionsModifyPushConfig (Maybe Text)
psmpcUploadType
  = lens _psmpcUploadType
      (\ s a -> s{_psmpcUploadType = a})

-- | Multipart request metadata.
psmpcPayload :: Lens' ProjectsSubscriptionsModifyPushConfig ModifyPushConfigRequest
psmpcPayload
  = lens _psmpcPayload (\ s a -> s{_psmpcPayload = a})

-- | Required. The name of the subscription. Format is
-- \`projects\/{project}\/subscriptions\/{sub}\`.
psmpcSubscription :: Lens' ProjectsSubscriptionsModifyPushConfig Text
psmpcSubscription
  = lens _psmpcSubscription
      (\ s a -> s{_psmpcSubscription = a})

-- | JSONP
psmpcCallback :: Lens' ProjectsSubscriptionsModifyPushConfig (Maybe Text)
psmpcCallback
  = lens _psmpcCallback
      (\ s a -> s{_psmpcCallback = a})

instance GoogleRequest
           ProjectsSubscriptionsModifyPushConfig
         where
        type Rs ProjectsSubscriptionsModifyPushConfig = Empty
        type Scopes ProjectsSubscriptionsModifyPushConfig =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient
          ProjectsSubscriptionsModifyPushConfig'{..}
          = go _psmpcSubscription _psmpcXgafv
              _psmpcUploadProtocol
              _psmpcAccessToken
              _psmpcUploadType
              _psmpcCallback
              (Just AltJSON)
              _psmpcPayload
              pubSubService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsSubscriptionsModifyPushConfigResource)
                      mempty
