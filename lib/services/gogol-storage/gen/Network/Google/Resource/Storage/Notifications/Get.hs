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
-- Module      : Network.Google.Resource.Storage.Notifications.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- View a notification configuration.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.notifications.get@.
module Network.Google.Resource.Storage.Notifications.Get
    (
    -- * REST Resource
      NotificationsGetResource

    -- * Creating a Request
    , notificationsGet
    , NotificationsGet

    -- * Request Lenses
    , ngNotification
    , ngBucket
    , ngUserProject
    , ngProvisionalUserProject
    ) where

import Network.Google.Prelude
import Network.Google.Storage.Types

-- | A resource alias for @storage.notifications.get@ method which the
-- 'NotificationsGet' request conforms to.
type NotificationsGetResource =
     "storage" :>
       "v1" :>
         "b" :>
           Capture "bucket" Text :>
             "notificationConfigs" :>
               Capture "notification" Text :>
                 QueryParam "userProject" Text :>
                   QueryParam "provisionalUserProject" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Notification

-- | View a notification configuration.
--
-- /See:/ 'notificationsGet' smart constructor.
data NotificationsGet =
  NotificationsGet'
    { _ngNotification :: !Text
    , _ngBucket :: !Text
    , _ngUserProject :: !(Maybe Text)
    , _ngProvisionalUserProject :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NotificationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ngNotification'
--
-- * 'ngBucket'
--
-- * 'ngUserProject'
--
-- * 'ngProvisionalUserProject'
notificationsGet
    :: Text -- ^ 'ngNotification'
    -> Text -- ^ 'ngBucket'
    -> NotificationsGet
notificationsGet pNgNotification_ pNgBucket_ =
  NotificationsGet'
    { _ngNotification = pNgNotification_
    , _ngBucket = pNgBucket_
    , _ngUserProject = Nothing
    , _ngProvisionalUserProject = Nothing
    }


-- | Notification ID
ngNotification :: Lens' NotificationsGet Text
ngNotification
  = lens _ngNotification
      (\ s a -> s{_ngNotification = a})

-- | The parent bucket of the notification.
ngBucket :: Lens' NotificationsGet Text
ngBucket = lens _ngBucket (\ s a -> s{_ngBucket = a})

-- | The project to be billed for this request. Required for Requester Pays
-- buckets.
ngUserProject :: Lens' NotificationsGet (Maybe Text)
ngUserProject
  = lens _ngUserProject
      (\ s a -> s{_ngUserProject = a})

-- | The project to be billed for this request if the target bucket is
-- requester-pays bucket.
ngProvisionalUserProject :: Lens' NotificationsGet (Maybe Text)
ngProvisionalUserProject
  = lens _ngProvisionalUserProject
      (\ s a -> s{_ngProvisionalUserProject = a})

instance GoogleRequest NotificationsGet where
        type Rs NotificationsGet = Notification
        type Scopes NotificationsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/devstorage.full_control",
               "https://www.googleapis.com/auth/devstorage.read_only",
               "https://www.googleapis.com/auth/devstorage.read_write"]
        requestClient NotificationsGet'{..}
          = go _ngBucket _ngNotification _ngUserProject
              _ngProvisionalUserProject
              (Just AltJSON)
              storageService
          where go
                  = buildClient
                      (Proxy :: Proxy NotificationsGetResource)
                      mempty
