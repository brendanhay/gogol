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
    , ngQuotaUser
    , ngPrettyPrint
    , ngUserIP
    , ngCustomer
    , ngKey
    , ngNotificationId
    , ngOAuthToken
    , ngFields
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
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Notification

-- | Retrieves a notification.
--
-- /See:/ 'notificationsGet'' smart constructor.
data NotificationsGet' = NotificationsGet'
    { _ngQuotaUser      :: !(Maybe Text)
    , _ngPrettyPrint    :: !Bool
    , _ngUserIP         :: !(Maybe Text)
    , _ngCustomer       :: !Text
    , _ngKey            :: !(Maybe AuthKey)
    , _ngNotificationId :: !Text
    , _ngOAuthToken     :: !(Maybe OAuthToken)
    , _ngFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NotificationsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ngQuotaUser'
--
-- * 'ngPrettyPrint'
--
-- * 'ngUserIP'
--
-- * 'ngCustomer'
--
-- * 'ngKey'
--
-- * 'ngNotificationId'
--
-- * 'ngOAuthToken'
--
-- * 'ngFields'
notificationsGet'
    :: Text -- ^ 'customer'
    -> Text -- ^ 'notificationId'
    -> NotificationsGet'
notificationsGet' pNgCustomer_ pNgNotificationId_ =
    NotificationsGet'
    { _ngQuotaUser = Nothing
    , _ngPrettyPrint = True
    , _ngUserIP = Nothing
    , _ngCustomer = pNgCustomer_
    , _ngKey = Nothing
    , _ngNotificationId = pNgNotificationId_
    , _ngOAuthToken = Nothing
    , _ngFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ngQuotaUser :: Lens' NotificationsGet' (Maybe Text)
ngQuotaUser
  = lens _ngQuotaUser (\ s a -> s{_ngQuotaUser = a})

-- | Returns response with indentations and line breaks.
ngPrettyPrint :: Lens' NotificationsGet' Bool
ngPrettyPrint
  = lens _ngPrettyPrint
      (\ s a -> s{_ngPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ngUserIP :: Lens' NotificationsGet' (Maybe Text)
ngUserIP = lens _ngUserIP (\ s a -> s{_ngUserIP = a})

-- | The unique ID for the customer\'s Google account. The customerId is also
-- returned as part of the Users resource.
ngCustomer :: Lens' NotificationsGet' Text
ngCustomer
  = lens _ngCustomer (\ s a -> s{_ngCustomer = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ngKey :: Lens' NotificationsGet' (Maybe AuthKey)
ngKey = lens _ngKey (\ s a -> s{_ngKey = a})

-- | The unique ID of the notification.
ngNotificationId :: Lens' NotificationsGet' Text
ngNotificationId
  = lens _ngNotificationId
      (\ s a -> s{_ngNotificationId = a})

-- | OAuth 2.0 token for the current user.
ngOAuthToken :: Lens' NotificationsGet' (Maybe OAuthToken)
ngOAuthToken
  = lens _ngOAuthToken (\ s a -> s{_ngOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ngFields :: Lens' NotificationsGet' (Maybe Text)
ngFields = lens _ngFields (\ s a -> s{_ngFields = a})

instance GoogleAuth NotificationsGet' where
        _AuthKey = ngKey . _Just
        _AuthToken = ngOAuthToken . _Just

instance GoogleRequest NotificationsGet' where
        type Rs NotificationsGet' = Notification
        request = requestWith directoryRequest
        requestWith rq NotificationsGet'{..}
          = go _ngCustomer _ngNotificationId _ngQuotaUser
              (Just _ngPrettyPrint)
              _ngUserIP
              _ngFields
              _ngKey
              _ngOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy NotificationsGetResource)
                      rq
