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
-- Module      : Network.Google.Resource.PubSub.Projects.Subscriptions.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the configuration details of a subscription.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.subscriptions.get@.
module Network.Google.Resource.PubSub.Projects.Subscriptions.Get
    (
    -- * REST Resource
      ProjectsSubscriptionsGetResource

    -- * Creating a Request
    , projectsSubscriptionsGet
    , ProjectsSubscriptionsGet

    -- * Request Lenses
    , psgXgafv
    , psgUploadProtocol
    , psgAccessToken
    , psgUploadType
    , psgSubscription
    , psgCallback
    ) where

import Network.Google.Prelude
import Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.subscriptions.get@ method which the
-- 'ProjectsSubscriptionsGet' request conforms to.
type ProjectsSubscriptionsGetResource =
     "v1" :>
       Capture "subscription" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Subscription

-- | Gets the configuration details of a subscription.
--
-- /See:/ 'projectsSubscriptionsGet' smart constructor.
data ProjectsSubscriptionsGet =
  ProjectsSubscriptionsGet'
    { _psgXgafv :: !(Maybe Xgafv)
    , _psgUploadProtocol :: !(Maybe Text)
    , _psgAccessToken :: !(Maybe Text)
    , _psgUploadType :: !(Maybe Text)
    , _psgSubscription :: !Text
    , _psgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSubscriptionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psgXgafv'
--
-- * 'psgUploadProtocol'
--
-- * 'psgAccessToken'
--
-- * 'psgUploadType'
--
-- * 'psgSubscription'
--
-- * 'psgCallback'
projectsSubscriptionsGet
    :: Text -- ^ 'psgSubscription'
    -> ProjectsSubscriptionsGet
projectsSubscriptionsGet pPsgSubscription_ =
  ProjectsSubscriptionsGet'
    { _psgXgafv = Nothing
    , _psgUploadProtocol = Nothing
    , _psgAccessToken = Nothing
    , _psgUploadType = Nothing
    , _psgSubscription = pPsgSubscription_
    , _psgCallback = Nothing
    }


-- | V1 error format.
psgXgafv :: Lens' ProjectsSubscriptionsGet (Maybe Xgafv)
psgXgafv = lens _psgXgafv (\ s a -> s{_psgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psgUploadProtocol :: Lens' ProjectsSubscriptionsGet (Maybe Text)
psgUploadProtocol
  = lens _psgUploadProtocol
      (\ s a -> s{_psgUploadProtocol = a})

-- | OAuth access token.
psgAccessToken :: Lens' ProjectsSubscriptionsGet (Maybe Text)
psgAccessToken
  = lens _psgAccessToken
      (\ s a -> s{_psgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psgUploadType :: Lens' ProjectsSubscriptionsGet (Maybe Text)
psgUploadType
  = lens _psgUploadType
      (\ s a -> s{_psgUploadType = a})

-- | Required. The name of the subscription to get. Format is
-- \`projects\/{project}\/subscriptions\/{sub}\`.
psgSubscription :: Lens' ProjectsSubscriptionsGet Text
psgSubscription
  = lens _psgSubscription
      (\ s a -> s{_psgSubscription = a})

-- | JSONP
psgCallback :: Lens' ProjectsSubscriptionsGet (Maybe Text)
psgCallback
  = lens _psgCallback (\ s a -> s{_psgCallback = a})

instance GoogleRequest ProjectsSubscriptionsGet where
        type Rs ProjectsSubscriptionsGet = Subscription
        type Scopes ProjectsSubscriptionsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient ProjectsSubscriptionsGet'{..}
          = go _psgSubscription _psgXgafv _psgUploadProtocol
              _psgAccessToken
              _psgUploadType
              _psgCallback
              (Just AltJSON)
              pubSubService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSubscriptionsGetResource)
                      mempty
