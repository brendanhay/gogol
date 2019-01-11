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
-- Module      : Network.Google.Resource.PubSub.Projects.Subscriptions.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing subscription. All messages retained in the
-- subscription are immediately dropped. Calls to \`Pull\` after deletion
-- will return \`NOT_FOUND\`. After a subscription is deleted, a new one
-- may be created with the same name, but the new one has no association
-- with the old subscription or its topic unless the same topic is
-- specified.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.subscriptions.delete@.
module Network.Google.Resource.PubSub.Projects.Subscriptions.Delete
    (
    -- * REST Resource
      ProjectsSubscriptionsDeleteResource

    -- * Creating a Request
    , projectsSubscriptionsDelete
    , ProjectsSubscriptionsDelete

    -- * Request Lenses
    , psdXgafv
    , psdUploadProtocol
    , psdAccessToken
    , psdUploadType
    , psdSubscription
    , psdCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.subscriptions.delete@ method which the
-- 'ProjectsSubscriptionsDelete' request conforms to.
type ProjectsSubscriptionsDeleteResource =
     "v1" :>
       Capture "subscription" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes an existing subscription. All messages retained in the
-- subscription are immediately dropped. Calls to \`Pull\` after deletion
-- will return \`NOT_FOUND\`. After a subscription is deleted, a new one
-- may be created with the same name, but the new one has no association
-- with the old subscription or its topic unless the same topic is
-- specified.
--
-- /See:/ 'projectsSubscriptionsDelete' smart constructor.
data ProjectsSubscriptionsDelete = ProjectsSubscriptionsDelete'
    { _psdXgafv          :: !(Maybe Xgafv)
    , _psdUploadProtocol :: !(Maybe Text)
    , _psdAccessToken    :: !(Maybe Text)
    , _psdUploadType     :: !(Maybe Text)
    , _psdSubscription   :: !Text
    , _psdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSubscriptionsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psdXgafv'
--
-- * 'psdUploadProtocol'
--
-- * 'psdAccessToken'
--
-- * 'psdUploadType'
--
-- * 'psdSubscription'
--
-- * 'psdCallback'
projectsSubscriptionsDelete
    :: Text -- ^ 'psdSubscription'
    -> ProjectsSubscriptionsDelete
projectsSubscriptionsDelete pPsdSubscription_ =
    ProjectsSubscriptionsDelete'
    { _psdXgafv = Nothing
    , _psdUploadProtocol = Nothing
    , _psdAccessToken = Nothing
    , _psdUploadType = Nothing
    , _psdSubscription = pPsdSubscription_
    , _psdCallback = Nothing
    }

-- | V1 error format.
psdXgafv :: Lens' ProjectsSubscriptionsDelete (Maybe Xgafv)
psdXgafv = lens _psdXgafv (\ s a -> s{_psdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psdUploadProtocol :: Lens' ProjectsSubscriptionsDelete (Maybe Text)
psdUploadProtocol
  = lens _psdUploadProtocol
      (\ s a -> s{_psdUploadProtocol = a})

-- | OAuth access token.
psdAccessToken :: Lens' ProjectsSubscriptionsDelete (Maybe Text)
psdAccessToken
  = lens _psdAccessToken
      (\ s a -> s{_psdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psdUploadType :: Lens' ProjectsSubscriptionsDelete (Maybe Text)
psdUploadType
  = lens _psdUploadType
      (\ s a -> s{_psdUploadType = a})

-- | The subscription to delete. Format is
-- \`projects\/{project}\/subscriptions\/{sub}\`.
psdSubscription :: Lens' ProjectsSubscriptionsDelete Text
psdSubscription
  = lens _psdSubscription
      (\ s a -> s{_psdSubscription = a})

-- | JSONP
psdCallback :: Lens' ProjectsSubscriptionsDelete (Maybe Text)
psdCallback
  = lens _psdCallback (\ s a -> s{_psdCallback = a})

instance GoogleRequest ProjectsSubscriptionsDelete
         where
        type Rs ProjectsSubscriptionsDelete = Empty
        type Scopes ProjectsSubscriptionsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient ProjectsSubscriptionsDelete'{..}
          = go _psdSubscription _psdXgafv _psdUploadProtocol
              _psdAccessToken
              _psdUploadType
              _psdCallback
              (Just AltJSON)
              pubSubService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSubscriptionsDeleteResource)
                      mempty
