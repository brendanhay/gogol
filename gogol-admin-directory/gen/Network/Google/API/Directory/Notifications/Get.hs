{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Directory.Notifications.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a notification.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.notifications.get@.
module Network.Google.API.Directory.Notifications.Get
    (
    -- * REST Resource
      NotificationsGetAPI

    -- * Creating a Request
    , notificationsGet'
    , NotificationsGet'

    -- * Request Lenses
    , ngQuotaUser
    , ngPrettyPrint
    , ngUserIp
    , ngCustomer
    , ngKey
    , ngNotificationId
    , ngOauthToken
    , ngFields
    , ngAlt
    ) where

import           Network.Google.Admin.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for directory.notifications.get which the
-- 'NotificationsGet'' request conforms to.
type NotificationsGetAPI =
     "customer" :>
       Capture "customer" Text :>
         "notifications" :>
           Capture "notificationId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] Notification

-- | Retrieves a notification.
--
-- /See:/ 'notificationsGet'' smart constructor.
data NotificationsGet' = NotificationsGet'
    { _ngQuotaUser      :: !(Maybe Text)
    , _ngPrettyPrint    :: !Bool
    , _ngUserIp         :: !(Maybe Text)
    , _ngCustomer       :: !Text
    , _ngKey            :: !(Maybe Text)
    , _ngNotificationId :: !Text
    , _ngOauthToken     :: !(Maybe Text)
    , _ngFields         :: !(Maybe Text)
    , _ngAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'NotificationsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ngQuotaUser'
--
-- * 'ngPrettyPrint'
--
-- * 'ngUserIp'
--
-- * 'ngCustomer'
--
-- * 'ngKey'
--
-- * 'ngNotificationId'
--
-- * 'ngOauthToken'
--
-- * 'ngFields'
--
-- * 'ngAlt'
notificationsGet'
    :: Text -- ^ 'customer'
    -> Text -- ^ 'notificationId'
    -> NotificationsGet'
notificationsGet' pNgCustomer_ pNgNotificationId_ =
    NotificationsGet'
    { _ngQuotaUser = Nothing
    , _ngPrettyPrint = True
    , _ngUserIp = Nothing
    , _ngCustomer = pNgCustomer_
    , _ngKey = Nothing
    , _ngNotificationId = pNgNotificationId_
    , _ngOauthToken = Nothing
    , _ngFields = Nothing
    , _ngAlt = JSON
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
ngUserIp :: Lens' NotificationsGet' (Maybe Text)
ngUserIp = lens _ngUserIp (\ s a -> s{_ngUserIp = a})

-- | The unique ID for the customer\'s Google account. The customerId is also
-- returned as part of the Users resource.
ngCustomer :: Lens' NotificationsGet' Text
ngCustomer
  = lens _ngCustomer (\ s a -> s{_ngCustomer = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ngKey :: Lens' NotificationsGet' (Maybe Text)
ngKey = lens _ngKey (\ s a -> s{_ngKey = a})

-- | The unique ID of the notification.
ngNotificationId :: Lens' NotificationsGet' Text
ngNotificationId
  = lens _ngNotificationId
      (\ s a -> s{_ngNotificationId = a})

-- | OAuth 2.0 token for the current user.
ngOauthToken :: Lens' NotificationsGet' (Maybe Text)
ngOauthToken
  = lens _ngOauthToken (\ s a -> s{_ngOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ngFields :: Lens' NotificationsGet' (Maybe Text)
ngFields = lens _ngFields (\ s a -> s{_ngFields = a})

-- | Data format for the response.
ngAlt :: Lens' NotificationsGet' Alt
ngAlt = lens _ngAlt (\ s a -> s{_ngAlt = a})

instance GoogleRequest NotificationsGet' where
        type Rs NotificationsGet' = Notification
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u NotificationsGet'{..}
          = go _ngQuotaUser (Just _ngPrettyPrint) _ngUserIp
              _ngCustomer
              _ngKey
              _ngNotificationId
              _ngOauthToken
              _ngFields
              (Just _ngAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy NotificationsGetAPI)
                      r
                      u
