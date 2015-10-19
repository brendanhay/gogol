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
-- Module      : Network.Google.Resource.Directory.Notifications.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a notification.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryNotificationsUpdate@.
module Network.Google.Resource.Directory.Notifications.Update
    (
    -- * REST Resource
      NotificationsUpdateResource

    -- * Creating a Request
    , notificationsUpdate'
    , NotificationsUpdate'

    -- * Request Lenses
    , nuPayload
    , nuCustomer
    , nuNotificationId
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryNotificationsUpdate@ method which the
-- 'NotificationsUpdate'' request conforms to.
type NotificationsUpdateResource =
     "customer" :>
       Capture "customer" Text :>
         "notifications" :>
           Capture "notificationId" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Notification :>
                 Put '[JSON] Notification

-- | Updates a notification.
--
-- /See:/ 'notificationsUpdate'' smart constructor.
data NotificationsUpdate' = NotificationsUpdate'
    { _nuPayload        :: !Notification
    , _nuCustomer       :: !Text
    , _nuNotificationId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NotificationsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nuPayload'
--
-- * 'nuCustomer'
--
-- * 'nuNotificationId'
notificationsUpdate'
    :: Notification -- ^ 'payload'
    -> Text -- ^ 'customer'
    -> Text -- ^ 'notificationId'
    -> NotificationsUpdate'
notificationsUpdate' pNuPayload_ pNuCustomer_ pNuNotificationId_ =
    NotificationsUpdate'
    { _nuPayload = pNuPayload_
    , _nuCustomer = pNuCustomer_
    , _nuNotificationId = pNuNotificationId_
    }

-- | Multipart request metadata.
nuPayload :: Lens' NotificationsUpdate' Notification
nuPayload
  = lens _nuPayload (\ s a -> s{_nuPayload = a})

-- | The unique ID for the customer\'s Google account.
nuCustomer :: Lens' NotificationsUpdate' Text
nuCustomer
  = lens _nuCustomer (\ s a -> s{_nuCustomer = a})

-- | The unique ID of the notification.
nuNotificationId :: Lens' NotificationsUpdate' Text
nuNotificationId
  = lens _nuNotificationId
      (\ s a -> s{_nuNotificationId = a})

instance GoogleRequest NotificationsUpdate' where
        type Rs NotificationsUpdate' = Notification
        requestClient NotificationsUpdate'{..}
          = go _nuCustomer _nuNotificationId (Just AltJSON)
              _nuPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy NotificationsUpdateResource)
                      mempty
