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
-- Module      : Network.Google.Resource.PubSub.Projects.Subscriptions.Pull
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Pulls messages from the server. Returns an empty list if there are no
-- messages available in the backlog. The server may return \`UNAVAILABLE\`
-- if there are too many concurrent pull requests pending for the given
-- subscription.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Google Cloud Pub/Sub API Reference> for @pubsub.projects.subscriptions.pull@.
module Network.Google.Resource.PubSub.Projects.Subscriptions.Pull
    (
    -- * REST Resource
      ProjectsSubscriptionsPullResource

    -- * Creating a Request
    , projectsSubscriptionsPull
    , ProjectsSubscriptionsPull

    -- * Request Lenses
    , pspXgafv
    , pspUploadProtocol
    , pspPp
    , pspAccessToken
    , pspUploadType
    , pspPayload
    , pspBearerToken
    , pspSubscription
    , pspCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.subscriptions.pull@ method which the
-- 'ProjectsSubscriptionsPull' request conforms to.
type ProjectsSubscriptionsPullResource =
     "v1" :>
       CaptureMode "subscription" "pull" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] PullRequest :>
                           Post '[JSON] PullResponse

-- | Pulls messages from the server. Returns an empty list if there are no
-- messages available in the backlog. The server may return \`UNAVAILABLE\`
-- if there are too many concurrent pull requests pending for the given
-- subscription.
--
-- /See:/ 'projectsSubscriptionsPull' smart constructor.
data ProjectsSubscriptionsPull = ProjectsSubscriptionsPull'
    { _pspXgafv          :: !(Maybe Xgafv)
    , _pspUploadProtocol :: !(Maybe Text)
    , _pspPp             :: !Bool
    , _pspAccessToken    :: !(Maybe Text)
    , _pspUploadType     :: !(Maybe Text)
    , _pspPayload        :: !PullRequest
    , _pspBearerToken    :: !(Maybe Text)
    , _pspSubscription   :: !Text
    , _pspCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSubscriptionsPull' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pspXgafv'
--
-- * 'pspUploadProtocol'
--
-- * 'pspPp'
--
-- * 'pspAccessToken'
--
-- * 'pspUploadType'
--
-- * 'pspPayload'
--
-- * 'pspBearerToken'
--
-- * 'pspSubscription'
--
-- * 'pspCallback'
projectsSubscriptionsPull
    :: PullRequest -- ^ 'pspPayload'
    -> Text -- ^ 'pspSubscription'
    -> ProjectsSubscriptionsPull
projectsSubscriptionsPull pPspPayload_ pPspSubscription_ =
    ProjectsSubscriptionsPull'
    { _pspXgafv = Nothing
    , _pspUploadProtocol = Nothing
    , _pspPp = True
    , _pspAccessToken = Nothing
    , _pspUploadType = Nothing
    , _pspPayload = pPspPayload_
    , _pspBearerToken = Nothing
    , _pspSubscription = pPspSubscription_
    , _pspCallback = Nothing
    }

-- | V1 error format.
pspXgafv :: Lens' ProjectsSubscriptionsPull (Maybe Xgafv)
pspXgafv = lens _pspXgafv (\ s a -> s{_pspXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pspUploadProtocol :: Lens' ProjectsSubscriptionsPull (Maybe Text)
pspUploadProtocol
  = lens _pspUploadProtocol
      (\ s a -> s{_pspUploadProtocol = a})

-- | Pretty-print response.
pspPp :: Lens' ProjectsSubscriptionsPull Bool
pspPp = lens _pspPp (\ s a -> s{_pspPp = a})

-- | OAuth access token.
pspAccessToken :: Lens' ProjectsSubscriptionsPull (Maybe Text)
pspAccessToken
  = lens _pspAccessToken
      (\ s a -> s{_pspAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pspUploadType :: Lens' ProjectsSubscriptionsPull (Maybe Text)
pspUploadType
  = lens _pspUploadType
      (\ s a -> s{_pspUploadType = a})

-- | Multipart request metadata.
pspPayload :: Lens' ProjectsSubscriptionsPull PullRequest
pspPayload
  = lens _pspPayload (\ s a -> s{_pspPayload = a})

-- | OAuth bearer token.
pspBearerToken :: Lens' ProjectsSubscriptionsPull (Maybe Text)
pspBearerToken
  = lens _pspBearerToken
      (\ s a -> s{_pspBearerToken = a})

-- | The subscription from which messages should be pulled. Format is
-- \`projects\/{project}\/subscriptions\/{sub}\`.
pspSubscription :: Lens' ProjectsSubscriptionsPull Text
pspSubscription
  = lens _pspSubscription
      (\ s a -> s{_pspSubscription = a})

-- | JSONP
pspCallback :: Lens' ProjectsSubscriptionsPull (Maybe Text)
pspCallback
  = lens _pspCallback (\ s a -> s{_pspCallback = a})

instance GoogleRequest ProjectsSubscriptionsPull
         where
        type Rs ProjectsSubscriptionsPull = PullResponse
        type Scopes ProjectsSubscriptionsPull =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient ProjectsSubscriptionsPull'{..}
          = go _pspSubscription _pspXgafv _pspUploadProtocol
              (Just _pspPp)
              _pspAccessToken
              _pspUploadType
              _pspBearerToken
              _pspCallback
              (Just AltJSON)
              _pspPayload
              pubSubService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSubscriptionsPullResource)
                      mempty
