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
-- Module      : Network.Google.Resource.Storage.Notifications.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a notification subscription for a given bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.notifications.insert@.
module Network.Google.Resource.Storage.Notifications.Insert
    (
    -- * REST Resource
      NotificationsInsertResource

    -- * Creating a Request
    , notificationsInsert
    , NotificationsInsert

    -- * Request Lenses
    , niBucket
    , niPayload
    , niUserProject
    , niProvisionalUserProject
    ) where

import Network.Google.Prelude
import Network.Google.Storage.Types

-- | A resource alias for @storage.notifications.insert@ method which the
-- 'NotificationsInsert' request conforms to.
type NotificationsInsertResource =
     "storage" :>
       "v1" :>
         "b" :>
           Capture "bucket" Text :>
             "notificationConfigs" :>
               QueryParam "userProject" Text :>
                 QueryParam "provisionalUserProject" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Notification :>
                       Post '[JSON] Notification

-- | Creates a notification subscription for a given bucket.
--
-- /See:/ 'notificationsInsert' smart constructor.
data NotificationsInsert =
  NotificationsInsert'
    { _niBucket :: !Text
    , _niPayload :: !Notification
    , _niUserProject :: !(Maybe Text)
    , _niProvisionalUserProject :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NotificationsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'niBucket'
--
-- * 'niPayload'
--
-- * 'niUserProject'
--
-- * 'niProvisionalUserProject'
notificationsInsert
    :: Text -- ^ 'niBucket'
    -> Notification -- ^ 'niPayload'
    -> NotificationsInsert
notificationsInsert pNiBucket_ pNiPayload_ =
  NotificationsInsert'
    { _niBucket = pNiBucket_
    , _niPayload = pNiPayload_
    , _niUserProject = Nothing
    , _niProvisionalUserProject = Nothing
    }


-- | The parent bucket of the notification.
niBucket :: Lens' NotificationsInsert Text
niBucket = lens _niBucket (\ s a -> s{_niBucket = a})

-- | Multipart request metadata.
niPayload :: Lens' NotificationsInsert Notification
niPayload
  = lens _niPayload (\ s a -> s{_niPayload = a})

-- | The project to be billed for this request. Required for Requester Pays
-- buckets.
niUserProject :: Lens' NotificationsInsert (Maybe Text)
niUserProject
  = lens _niUserProject
      (\ s a -> s{_niUserProject = a})

-- | The project to be billed for this request if the target bucket is
-- requester-pays bucket.
niProvisionalUserProject :: Lens' NotificationsInsert (Maybe Text)
niProvisionalUserProject
  = lens _niProvisionalUserProject
      (\ s a -> s{_niProvisionalUserProject = a})

instance GoogleRequest NotificationsInsert where
        type Rs NotificationsInsert = Notification
        type Scopes NotificationsInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/devstorage.full_control",
               "https://www.googleapis.com/auth/devstorage.read_write"]
        requestClient NotificationsInsert'{..}
          = go _niBucket _niUserProject
              _niProvisionalUserProject
              (Just AltJSON)
              _niPayload
              storageService
          where go
                  = buildClient
                      (Proxy :: Proxy NotificationsInsertResource)
                      mempty
