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
-- Module      : Network.Google.Resource.Books.Notification.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns notification details for a given notification id.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.notification.get@.
module Network.Google.Resource.Books.Notification.Get
    (
    -- * REST Resource
      NotificationGetResource

    -- * Creating a Request
    , notificationGet
    , NotificationGet

    -- * Request Lenses
    , ngLocale
    , ngNotificationId
    , ngSource
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @books.notification.get@ method which the
-- 'NotificationGet' request conforms to.
type NotificationGetResource =
     "books" :>
       "v1" :>
         "notification" :>
           "get" :>
             QueryParam "notification_id" Text :>
               QueryParam "locale" Text :>
                 QueryParam "source" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Notification

-- | Returns notification details for a given notification id.
--
-- /See:/ 'notificationGet' smart constructor.
data NotificationGet =
  NotificationGet'
    { _ngLocale         :: !(Maybe Text)
    , _ngNotificationId :: !Text
    , _ngSource         :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'NotificationGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ngLocale'
--
-- * 'ngNotificationId'
--
-- * 'ngSource'
notificationGet
    :: Text -- ^ 'ngNotificationId'
    -> NotificationGet
notificationGet pNgNotificationId_ =
  NotificationGet'
    { _ngLocale = Nothing
    , _ngNotificationId = pNgNotificationId_
    , _ngSource = Nothing
    }

-- | ISO-639-1 language and ISO-3166-1 country code. Ex: \'en_US\'. Used for
-- generating notification title and body.
ngLocale :: Lens' NotificationGet (Maybe Text)
ngLocale = lens _ngLocale (\ s a -> s{_ngLocale = a})

-- | String to identify the notification.
ngNotificationId :: Lens' NotificationGet Text
ngNotificationId
  = lens _ngNotificationId
      (\ s a -> s{_ngNotificationId = a})

-- | String to identify the originator of this request.
ngSource :: Lens' NotificationGet (Maybe Text)
ngSource = lens _ngSource (\ s a -> s{_ngSource = a})

instance GoogleRequest NotificationGet where
        type Rs NotificationGet = Notification
        type Scopes NotificationGet =
             '["https://www.googleapis.com/auth/books"]
        requestClient NotificationGet'{..}
          = go (Just _ngNotificationId) _ngLocale _ngSource
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy NotificationGetResource)
                      mempty
