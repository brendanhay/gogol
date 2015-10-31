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
-- Module      : Network.Google.Resource.Directory.Notifications.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a notification
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.notifications.delete@.
module Network.Google.Resource.Directory.Notifications.Delete
    (
    -- * REST Resource
      NotificationsDeleteResource

    -- * Creating a Request
    , notificationsDelete
    , NotificationsDelete

    -- * Request Lenses
    , ndCustomer
    , ndNotificationId
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.notifications.delete@ method which the
-- 'NotificationsDelete' request conforms to.
type NotificationsDeleteResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "notifications" :>
                 Capture "notificationId" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a notification
--
-- /See:/ 'notificationsDelete' smart constructor.
data NotificationsDelete = NotificationsDelete
    { _ndCustomer       :: !Text
    , _ndNotificationId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NotificationsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ndCustomer'
--
-- * 'ndNotificationId'
notificationsDelete
    :: Text -- ^ 'ndCustomer'
    -> Text -- ^ 'ndNotificationId'
    -> NotificationsDelete
notificationsDelete pNdCustomer_ pNdNotificationId_ =
    NotificationsDelete
    { _ndCustomer = pNdCustomer_
    , _ndNotificationId = pNdNotificationId_
    }

-- | The unique ID for the customer\'s Google account. The customerId is also
-- returned as part of the Users resource.
ndCustomer :: Lens' NotificationsDelete Text
ndCustomer
  = lens _ndCustomer (\ s a -> s{_ndCustomer = a})

-- | The unique ID of the notification.
ndNotificationId :: Lens' NotificationsDelete Text
ndNotificationId
  = lens _ndNotificationId
      (\ s a -> s{_ndNotificationId = a})

instance GoogleRequest NotificationsDelete where
        type Rs NotificationsDelete = ()
        type Scopes NotificationsDelete =
             '["https://www.googleapis.com/auth/admin.directory.notifications"]
        requestClient NotificationsDelete{..}
          = go _ndCustomer _ndNotificationId (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy NotificationsDeleteResource)
                      mempty
