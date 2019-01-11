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
-- Module      : Network.Google.Resource.Storage.Notifications.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of notification subscriptions for a given bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.notifications.list@.
module Network.Google.Resource.Storage.Notifications.List
    (
    -- * REST Resource
      NotificationsListResource

    -- * Creating a Request
    , notificationsList
    , NotificationsList

    -- * Request Lenses
    , nlBucket
    , nlUserProject
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @storage.notifications.list@ method which the
-- 'NotificationsList' request conforms to.
type NotificationsListResource =
     "storage" :>
       "v1" :>
         "b" :>
           Capture "bucket" Text :>
             "notificationConfigs" :>
               QueryParam "userProject" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Notifications

-- | Retrieves a list of notification subscriptions for a given bucket.
--
-- /See:/ 'notificationsList' smart constructor.
data NotificationsList = NotificationsList'
    { _nlBucket      :: !Text
    , _nlUserProject :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NotificationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nlBucket'
--
-- * 'nlUserProject'
notificationsList
    :: Text -- ^ 'nlBucket'
    -> NotificationsList
notificationsList pNlBucket_ =
    NotificationsList'
    { _nlBucket = pNlBucket_
    , _nlUserProject = Nothing
    }

-- | Name of a Google Cloud Storage bucket.
nlBucket :: Lens' NotificationsList Text
nlBucket = lens _nlBucket (\ s a -> s{_nlBucket = a})

-- | The project to be billed for this request. Required for Requester Pays
-- buckets.
nlUserProject :: Lens' NotificationsList (Maybe Text)
nlUserProject
  = lens _nlUserProject
      (\ s a -> s{_nlUserProject = a})

instance GoogleRequest NotificationsList where
        type Rs NotificationsList = Notifications
        type Scopes NotificationsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/devstorage.full_control",
               "https://www.googleapis.com/auth/devstorage.read_only",
               "https://www.googleapis.com/auth/devstorage.read_write"]
        requestClient NotificationsList'{..}
          = go _nlBucket _nlUserProject (Just AltJSON)
              storageService
          where go
                  = buildClient
                      (Proxy :: Proxy NotificationsListResource)
                      mempty
