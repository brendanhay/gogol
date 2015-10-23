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
-- Module      : Network.Google.Resource.Directory.Notifications.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of notifications.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.notifications.list@.
module Network.Google.Resource.Directory.Notifications.List
    (
    -- * REST Resource
      NotificationsListResource

    -- * Creating a Request
    , notificationsList
    , NotificationsList

    -- * Request Lenses
    , nlCustomer
    , nlLanguage
    , nlPageToken
    , nlMaxResults
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.notifications.list@ method which the
-- 'NotificationsList' request conforms to.
type NotificationsListResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "notifications" :>
                 QueryParam "language" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (JSONText Word32) :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Notifications

-- | Retrieves a list of notifications.
--
-- /See:/ 'notificationsList' smart constructor.
data NotificationsList = NotificationsList
    { _nlCustomer   :: !Text
    , _nlLanguage   :: !(Maybe Text)
    , _nlPageToken  :: !(Maybe Text)
    , _nlMaxResults :: !(Maybe (JSONText Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NotificationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nlCustomer'
--
-- * 'nlLanguage'
--
-- * 'nlPageToken'
--
-- * 'nlMaxResults'
notificationsList
    :: Text -- ^ 'nlCustomer'
    -> NotificationsList
notificationsList pNlCustomer_ =
    NotificationsList
    { _nlCustomer = pNlCustomer_
    , _nlLanguage = Nothing
    , _nlPageToken = Nothing
    , _nlMaxResults = Nothing
    }

-- | The unique ID for the customer\'s Google account.
nlCustomer :: Lens' NotificationsList Text
nlCustomer
  = lens _nlCustomer (\ s a -> s{_nlCustomer = a})

-- | The ISO 639-1 code of the language notifications are returned in. The
-- default is English (en).
nlLanguage :: Lens' NotificationsList (Maybe Text)
nlLanguage
  = lens _nlLanguage (\ s a -> s{_nlLanguage = a})

-- | The token to specify the page of results to retrieve.
nlPageToken :: Lens' NotificationsList (Maybe Text)
nlPageToken
  = lens _nlPageToken (\ s a -> s{_nlPageToken = a})

-- | Maximum number of notifications to return per page. The default is 100.
nlMaxResults :: Lens' NotificationsList (Maybe Word32)
nlMaxResults
  = lens _nlMaxResults (\ s a -> s{_nlMaxResults = a})
      . mapping _Coerce

instance GoogleRequest NotificationsList where
        type Rs NotificationsList = Notifications
        requestClient NotificationsList{..}
          = go _nlCustomer _nlLanguage _nlPageToken
              _nlMaxResults
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy NotificationsListResource)
                      mempty
