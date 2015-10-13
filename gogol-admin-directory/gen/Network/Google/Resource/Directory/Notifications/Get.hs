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
-- Module      : Network.Google.Resource.Directory.Notifications.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a notification.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryNotificationsGet@.
module Network.Google.Resource.Directory.Notifications.Get
    (
    -- * REST Resource
      NotificationsGetResource

    -- * Creating a Request
    , notificationsGet'
    , NotificationsGet'

    -- * Request Lenses
    , ngCustomer
    , ngNotificationId
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryNotificationsGet@ method which the
-- 'NotificationsGet'' request conforms to.
type NotificationsGetResource =
     "customer" :>
       Capture "customer" Text :>
         "notifications" :>
           Capture "notificationId" Text :>
             QueryParam "alt" AltJSON :> Get '[JSON] Notification

-- | Retrieves a notification.
--
-- /See:/ 'notificationsGet'' smart constructor.
data NotificationsGet' = NotificationsGet'
    { _ngCustomer       :: !Text
    , _ngNotificationId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NotificationsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ngCustomer'
--
-- * 'ngNotificationId'
notificationsGet'
    :: Text -- ^ 'customer'
    -> Text -- ^ 'notificationId'
    -> NotificationsGet'
notificationsGet' pNgCustomer_ pNgNotificationId_ =
    NotificationsGet'
    { _ngCustomer = pNgCustomer_
    , _ngNotificationId = pNgNotificationId_
    }

-- | The unique ID for the customer\'s Google account. The customerId is also
-- returned as part of the Users resource.
ngCustomer :: Lens' NotificationsGet' Text
ngCustomer
  = lens _ngCustomer (\ s a -> s{_ngCustomer = a})

-- | The unique ID of the notification.
ngNotificationId :: Lens' NotificationsGet' Text
ngNotificationId
  = lens _ngNotificationId
      (\ s a -> s{_ngNotificationId = a})

instance GoogleRequest NotificationsGet' where
        type Rs NotificationsGet' = Notification
        requestClient NotificationsGet'{..}
          = go _ngCustomer _ngNotificationId (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy NotificationsGetResource)
                      mempty
