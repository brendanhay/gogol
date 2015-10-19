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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an existing subscription. All pending messages in the
-- subscription are immediately dropped. Calls to \`Pull\` after deletion
-- will return \`NOT_FOUND\`. After a subscription is deleted, a new one
-- may be created with the same name, but the new one has no association
-- with the old subscription, or its topic unless the same topic is
-- specified.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Google Cloud Pub/Sub API Reference> for @PubsubProjectsSubscriptionsDelete@.
module Network.Google.Resource.PubSub.Projects.Subscriptions.Delete
    (
    -- * REST Resource
      ProjectsSubscriptionsDeleteResource

    -- * Creating a Request
    , projectsSubscriptionsDelete'
    , ProjectsSubscriptionsDelete'

    -- * Request Lenses
    , psdXgafv
    , psdUploadProtocol
    , psdPp
    , psdAccessToken
    , psdUploadType
    , psdBearerToken
    , psdSubscription
    , psdCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @PubsubProjectsSubscriptionsDelete@ method which the
-- 'ProjectsSubscriptionsDelete'' request conforms to.
type ProjectsSubscriptionsDeleteResource =
     "v1" :>
       Capture "subscription" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes an existing subscription. All pending messages in the
-- subscription are immediately dropped. Calls to \`Pull\` after deletion
-- will return \`NOT_FOUND\`. After a subscription is deleted, a new one
-- may be created with the same name, but the new one has no association
-- with the old subscription, or its topic unless the same topic is
-- specified.
--
-- /See:/ 'projectsSubscriptionsDelete'' smart constructor.
data ProjectsSubscriptionsDelete' = ProjectsSubscriptionsDelete'
    { _psdXgafv          :: !(Maybe Text)
    , _psdUploadProtocol :: !(Maybe Text)
    , _psdPp             :: !Bool
    , _psdAccessToken    :: !(Maybe Text)
    , _psdUploadType     :: !(Maybe Text)
    , _psdBearerToken    :: !(Maybe Text)
    , _psdSubscription   :: !Text
    , _psdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSubscriptionsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psdXgafv'
--
-- * 'psdUploadProtocol'
--
-- * 'psdPp'
--
-- * 'psdAccessToken'
--
-- * 'psdUploadType'
--
-- * 'psdBearerToken'
--
-- * 'psdSubscription'
--
-- * 'psdCallback'
projectsSubscriptionsDelete'
    :: Text -- ^ 'subscription'
    -> ProjectsSubscriptionsDelete'
projectsSubscriptionsDelete' pPsdSubscription_ =
    ProjectsSubscriptionsDelete'
    { _psdXgafv = Nothing
    , _psdUploadProtocol = Nothing
    , _psdPp = True
    , _psdAccessToken = Nothing
    , _psdUploadType = Nothing
    , _psdBearerToken = Nothing
    , _psdSubscription = pPsdSubscription_
    , _psdCallback = Nothing
    }

-- | V1 error format.
psdXgafv :: Lens' ProjectsSubscriptionsDelete' (Maybe Text)
psdXgafv = lens _psdXgafv (\ s a -> s{_psdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psdUploadProtocol :: Lens' ProjectsSubscriptionsDelete' (Maybe Text)
psdUploadProtocol
  = lens _psdUploadProtocol
      (\ s a -> s{_psdUploadProtocol = a})

-- | Pretty-print response.
psdPp :: Lens' ProjectsSubscriptionsDelete' Bool
psdPp = lens _psdPp (\ s a -> s{_psdPp = a})

-- | OAuth access token.
psdAccessToken :: Lens' ProjectsSubscriptionsDelete' (Maybe Text)
psdAccessToken
  = lens _psdAccessToken
      (\ s a -> s{_psdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psdUploadType :: Lens' ProjectsSubscriptionsDelete' (Maybe Text)
psdUploadType
  = lens _psdUploadType
      (\ s a -> s{_psdUploadType = a})

-- | OAuth bearer token.
psdBearerToken :: Lens' ProjectsSubscriptionsDelete' (Maybe Text)
psdBearerToken
  = lens _psdBearerToken
      (\ s a -> s{_psdBearerToken = a})

-- | The subscription to delete.
psdSubscription :: Lens' ProjectsSubscriptionsDelete' Text
psdSubscription
  = lens _psdSubscription
      (\ s a -> s{_psdSubscription = a})

-- | JSONP
psdCallback :: Lens' ProjectsSubscriptionsDelete' (Maybe Text)
psdCallback
  = lens _psdCallback (\ s a -> s{_psdCallback = a})

instance GoogleRequest ProjectsSubscriptionsDelete'
         where
        type Rs ProjectsSubscriptionsDelete' = Empty
        requestClient ProjectsSubscriptionsDelete'{..}
          = go _psdSubscription _psdXgafv _psdUploadProtocol
              (Just _psdPp)
              _psdAccessToken
              _psdUploadType
              _psdBearerToken
              _psdCallback
              (Just AltJSON)
              pubSubService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSubscriptionsDeleteResource)
                      mempty
