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
-- Module      : Network.Google.Resource.Storage.Notifications.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently deletes a notification subscription.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.notifications.delete@.
module Network.Google.Resource.Storage.Notifications.Delete
    (
    -- * REST Resource
      NotificationsDeleteResource

    -- * Creating a Request
    , notificationsDelete
    , NotificationsDelete

    -- * Request Lenses
    , ndNotification
    , ndBucket
    , ndUserProject
    , ndProvisionalUserProject
    ) where

import Network.Google.Prelude
import Network.Google.Storage.Types

-- | A resource alias for @storage.notifications.delete@ method which the
-- 'NotificationsDelete' request conforms to.
type NotificationsDeleteResource =
     "storage" :>
       "v1" :>
         "b" :>
           Capture "bucket" Text :>
             "notificationConfigs" :>
               Capture "notification" Text :>
                 QueryParam "userProject" Text :>
                   QueryParam "provisionalUserProject" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Permanently deletes a notification subscription.
--
-- /See:/ 'notificationsDelete' smart constructor.
data NotificationsDelete =
  NotificationsDelete'
    { _ndNotification :: !Text
    , _ndBucket :: !Text
    , _ndUserProject :: !(Maybe Text)
    , _ndProvisionalUserProject :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NotificationsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ndNotification'
--
-- * 'ndBucket'
--
-- * 'ndUserProject'
--
-- * 'ndProvisionalUserProject'
notificationsDelete
    :: Text -- ^ 'ndNotification'
    -> Text -- ^ 'ndBucket'
    -> NotificationsDelete
notificationsDelete pNdNotification_ pNdBucket_ =
  NotificationsDelete'
    { _ndNotification = pNdNotification_
    , _ndBucket = pNdBucket_
    , _ndUserProject = Nothing
    , _ndProvisionalUserProject = Nothing
    }


-- | ID of the notification to delete.
ndNotification :: Lens' NotificationsDelete Text
ndNotification
  = lens _ndNotification
      (\ s a -> s{_ndNotification = a})

-- | The parent bucket of the notification.
ndBucket :: Lens' NotificationsDelete Text
ndBucket = lens _ndBucket (\ s a -> s{_ndBucket = a})

-- | The project to be billed for this request. Required for Requester Pays
-- buckets.
ndUserProject :: Lens' NotificationsDelete (Maybe Text)
ndUserProject
  = lens _ndUserProject
      (\ s a -> s{_ndUserProject = a})

-- | The project to be billed for this request if the target bucket is
-- requester-pays bucket.
ndProvisionalUserProject :: Lens' NotificationsDelete (Maybe Text)
ndProvisionalUserProject
  = lens _ndProvisionalUserProject
      (\ s a -> s{_ndProvisionalUserProject = a})

instance GoogleRequest NotificationsDelete where
        type Rs NotificationsDelete = ()
        type Scopes NotificationsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/devstorage.full_control",
               "https://www.googleapis.com/auth/devstorage.read_write"]
        requestClient NotificationsDelete'{..}
          = go _ndBucket _ndNotification _ndUserProject
              _ndProvisionalUserProject
              (Just AltJSON)
              storageService
          where go
                  = buildClient
                      (Proxy :: Proxy NotificationsDeleteResource)
                      mempty
