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
-- Module      : Network.Google.Resource.Directory.Notifications.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a notification. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.notifications.patch@.
module Network.Google.Resource.Directory.Notifications.Patch
    (
    -- * REST Resource
      NotificationsPatchResource

    -- * Creating a Request
    , notificationsPatch
    , NotificationsPatch

    -- * Request Lenses
    , npPayload
    , npCustomer
    , npNotificationId
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.notifications.patch@ method which the
-- 'NotificationsPatch' request conforms to.
type NotificationsPatchResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "notifications" :>
                 Capture "notificationId" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Notification :>
                       Patch '[JSON] Notification

-- | Updates a notification. This method supports patch semantics.
--
-- /See:/ 'notificationsPatch' smart constructor.
data NotificationsPatch = NotificationsPatch
    { _npPayload        :: !Notification
    , _npCustomer       :: !Text
    , _npNotificationId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NotificationsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'npPayload'
--
-- * 'npCustomer'
--
-- * 'npNotificationId'
notificationsPatch
    :: Notification -- ^ 'npPayload'
    -> Text -- ^ 'npCustomer'
    -> Text -- ^ 'npNotificationId'
    -> NotificationsPatch
notificationsPatch pNpPayload_ pNpCustomer_ pNpNotificationId_ =
    NotificationsPatch
    { _npPayload = pNpPayload_
    , _npCustomer = pNpCustomer_
    , _npNotificationId = pNpNotificationId_
    }

-- | Multipart request metadata.
npPayload :: Lens' NotificationsPatch Notification
npPayload
  = lens _npPayload (\ s a -> s{_npPayload = a})

-- | The unique ID for the customer\'s Google account.
npCustomer :: Lens' NotificationsPatch Text
npCustomer
  = lens _npCustomer (\ s a -> s{_npCustomer = a})

-- | The unique ID of the notification.
npNotificationId :: Lens' NotificationsPatch Text
npNotificationId
  = lens _npNotificationId
      (\ s a -> s{_npNotificationId = a})

instance GoogleRequest NotificationsPatch where
        type Rs NotificationsPatch = Notification
        requestClient NotificationsPatch{..}
          = go _npCustomer _npNotificationId (Just AltJSON)
              _npPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy NotificationsPatchResource)
                      mempty
