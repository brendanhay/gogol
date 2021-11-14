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
-- Module      : Network.Google.Resource.PubSub.Projects.Subscriptions.Detach
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Detaches a subscription from this topic. All messages retained in the
-- subscription are dropped. Subsequent \`Pull\` and \`StreamingPull\`
-- requests will return FAILED_PRECONDITION. If the subscription is a push
-- subscription, pushes to the endpoint will stop.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.subscriptions.detach@.
module Network.Google.Resource.PubSub.Projects.Subscriptions.Detach
    (
    -- * REST Resource
      ProjectsSubscriptionsDetachResource

    -- * Creating a Request
    , projectsSubscriptionsDetach
    , ProjectsSubscriptionsDetach

    -- * Request Lenses
    , psd1Xgafv
    , psd1UploadProtocol
    , psd1AccessToken
    , psd1UploadType
    , psd1Subscription
    , psd1Callback
    ) where

import Network.Google.Prelude
import Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.subscriptions.detach@ method which the
-- 'ProjectsSubscriptionsDetach' request conforms to.
type ProjectsSubscriptionsDetachResource =
     "v1" :>
       CaptureMode "subscription" "detach" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Post '[JSON] DetachSubscriptionResponse

-- | Detaches a subscription from this topic. All messages retained in the
-- subscription are dropped. Subsequent \`Pull\` and \`StreamingPull\`
-- requests will return FAILED_PRECONDITION. If the subscription is a push
-- subscription, pushes to the endpoint will stop.
--
-- /See:/ 'projectsSubscriptionsDetach' smart constructor.
data ProjectsSubscriptionsDetach =
  ProjectsSubscriptionsDetach'
    { _psd1Xgafv :: !(Maybe Xgafv)
    , _psd1UploadProtocol :: !(Maybe Text)
    , _psd1AccessToken :: !(Maybe Text)
    , _psd1UploadType :: !(Maybe Text)
    , _psd1Subscription :: !Text
    , _psd1Callback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSubscriptionsDetach' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psd1Xgafv'
--
-- * 'psd1UploadProtocol'
--
-- * 'psd1AccessToken'
--
-- * 'psd1UploadType'
--
-- * 'psd1Subscription'
--
-- * 'psd1Callback'
projectsSubscriptionsDetach
    :: Text -- ^ 'psd1Subscription'
    -> ProjectsSubscriptionsDetach
projectsSubscriptionsDetach pPsd1Subscription_ =
  ProjectsSubscriptionsDetach'
    { _psd1Xgafv = Nothing
    , _psd1UploadProtocol = Nothing
    , _psd1AccessToken = Nothing
    , _psd1UploadType = Nothing
    , _psd1Subscription = pPsd1Subscription_
    , _psd1Callback = Nothing
    }


-- | V1 error format.
psd1Xgafv :: Lens' ProjectsSubscriptionsDetach (Maybe Xgafv)
psd1Xgafv
  = lens _psd1Xgafv (\ s a -> s{_psd1Xgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psd1UploadProtocol :: Lens' ProjectsSubscriptionsDetach (Maybe Text)
psd1UploadProtocol
  = lens _psd1UploadProtocol
      (\ s a -> s{_psd1UploadProtocol = a})

-- | OAuth access token.
psd1AccessToken :: Lens' ProjectsSubscriptionsDetach (Maybe Text)
psd1AccessToken
  = lens _psd1AccessToken
      (\ s a -> s{_psd1AccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psd1UploadType :: Lens' ProjectsSubscriptionsDetach (Maybe Text)
psd1UploadType
  = lens _psd1UploadType
      (\ s a -> s{_psd1UploadType = a})

-- | Required. The subscription to detach. Format is
-- \`projects\/{project}\/subscriptions\/{subscription}\`.
psd1Subscription :: Lens' ProjectsSubscriptionsDetach Text
psd1Subscription
  = lens _psd1Subscription
      (\ s a -> s{_psd1Subscription = a})

-- | JSONP
psd1Callback :: Lens' ProjectsSubscriptionsDetach (Maybe Text)
psd1Callback
  = lens _psd1Callback (\ s a -> s{_psd1Callback = a})

instance GoogleRequest ProjectsSubscriptionsDetach
         where
        type Rs ProjectsSubscriptionsDetach =
             DetachSubscriptionResponse
        type Scopes ProjectsSubscriptionsDetach =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient ProjectsSubscriptionsDetach'{..}
          = go _psd1Subscription _psd1Xgafv _psd1UploadProtocol
              _psd1AccessToken
              _psd1UploadType
              _psd1Callback
              (Just AltJSON)
              pubSubService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSubscriptionsDetachResource)
                      mempty
