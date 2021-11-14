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
-- Module      : Network.Google.Resource.PubSub.Projects.Subscriptions.Seek
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Seeks an existing subscription to a point in time or to a given
-- snapshot, whichever is provided in the request. Snapshots are used in
-- [Seek] (https:\/\/cloud.google.com\/pubsub\/docs\/replay-overview)
-- operations, which allow you to manage message acknowledgments in bulk.
-- That is, you can set the acknowledgment state of messages in an existing
-- subscription to the state captured by a snapshot. Note that both the
-- subscription and the snapshot must be on the same topic.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.subscriptions.seek@.
module Network.Google.Resource.PubSub.Projects.Subscriptions.Seek
    (
    -- * REST Resource
      ProjectsSubscriptionsSeekResource

    -- * Creating a Request
    , projectsSubscriptionsSeek
    , ProjectsSubscriptionsSeek

    -- * Request Lenses
    , pssXgafv
    , pssUploadProtocol
    , pssAccessToken
    , pssUploadType
    , pssPayload
    , pssSubscription
    , pssCallback
    ) where

import Network.Google.Prelude
import Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.subscriptions.seek@ method which the
-- 'ProjectsSubscriptionsSeek' request conforms to.
type ProjectsSubscriptionsSeekResource =
     "v1" :>
       CaptureMode "subscription" "seek" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SeekRequest :>
                       Post '[JSON] SeekResponse

-- | Seeks an existing subscription to a point in time or to a given
-- snapshot, whichever is provided in the request. Snapshots are used in
-- [Seek] (https:\/\/cloud.google.com\/pubsub\/docs\/replay-overview)
-- operations, which allow you to manage message acknowledgments in bulk.
-- That is, you can set the acknowledgment state of messages in an existing
-- subscription to the state captured by a snapshot. Note that both the
-- subscription and the snapshot must be on the same topic.
--
-- /See:/ 'projectsSubscriptionsSeek' smart constructor.
data ProjectsSubscriptionsSeek =
  ProjectsSubscriptionsSeek'
    { _pssXgafv :: !(Maybe Xgafv)
    , _pssUploadProtocol :: !(Maybe Text)
    , _pssAccessToken :: !(Maybe Text)
    , _pssUploadType :: !(Maybe Text)
    , _pssPayload :: !SeekRequest
    , _pssSubscription :: !Text
    , _pssCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSubscriptionsSeek' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pssXgafv'
--
-- * 'pssUploadProtocol'
--
-- * 'pssAccessToken'
--
-- * 'pssUploadType'
--
-- * 'pssPayload'
--
-- * 'pssSubscription'
--
-- * 'pssCallback'
projectsSubscriptionsSeek
    :: SeekRequest -- ^ 'pssPayload'
    -> Text -- ^ 'pssSubscription'
    -> ProjectsSubscriptionsSeek
projectsSubscriptionsSeek pPssPayload_ pPssSubscription_ =
  ProjectsSubscriptionsSeek'
    { _pssXgafv = Nothing
    , _pssUploadProtocol = Nothing
    , _pssAccessToken = Nothing
    , _pssUploadType = Nothing
    , _pssPayload = pPssPayload_
    , _pssSubscription = pPssSubscription_
    , _pssCallback = Nothing
    }


-- | V1 error format.
pssXgafv :: Lens' ProjectsSubscriptionsSeek (Maybe Xgafv)
pssXgafv = lens _pssXgafv (\ s a -> s{_pssXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pssUploadProtocol :: Lens' ProjectsSubscriptionsSeek (Maybe Text)
pssUploadProtocol
  = lens _pssUploadProtocol
      (\ s a -> s{_pssUploadProtocol = a})

-- | OAuth access token.
pssAccessToken :: Lens' ProjectsSubscriptionsSeek (Maybe Text)
pssAccessToken
  = lens _pssAccessToken
      (\ s a -> s{_pssAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pssUploadType :: Lens' ProjectsSubscriptionsSeek (Maybe Text)
pssUploadType
  = lens _pssUploadType
      (\ s a -> s{_pssUploadType = a})

-- | Multipart request metadata.
pssPayload :: Lens' ProjectsSubscriptionsSeek SeekRequest
pssPayload
  = lens _pssPayload (\ s a -> s{_pssPayload = a})

-- | Required. The subscription to affect.
pssSubscription :: Lens' ProjectsSubscriptionsSeek Text
pssSubscription
  = lens _pssSubscription
      (\ s a -> s{_pssSubscription = a})

-- | JSONP
pssCallback :: Lens' ProjectsSubscriptionsSeek (Maybe Text)
pssCallback
  = lens _pssCallback (\ s a -> s{_pssCallback = a})

instance GoogleRequest ProjectsSubscriptionsSeek
         where
        type Rs ProjectsSubscriptionsSeek = SeekResponse
        type Scopes ProjectsSubscriptionsSeek =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient ProjectsSubscriptionsSeek'{..}
          = go _pssSubscription _pssXgafv _pssUploadProtocol
              _pssAccessToken
              _pssUploadType
              _pssCallback
              (Just AltJSON)
              _pssPayload
              pubSubService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSubscriptionsSeekResource)
                      mempty
