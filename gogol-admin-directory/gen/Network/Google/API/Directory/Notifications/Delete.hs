{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Directory.Notifications.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a notification
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.notifications.delete@.
module Network.Google.API.Directory.Notifications.Delete
    (
    -- * REST Resource
      NotificationsDeleteAPI

    -- * Creating a Request
    , notificationsDelete'
    , NotificationsDelete'

    -- * Request Lenses
    , ndQuotaUser
    , ndPrettyPrint
    , ndUserIp
    , ndCustomer
    , ndKey
    , ndNotificationId
    , ndOauthToken
    , ndFields
    , ndAlt
    ) where

import           Network.Google.Admin.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for directory.notifications.delete which the
-- 'NotificationsDelete'' request conforms to.
type NotificationsDeleteAPI =
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
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes a notification
--
-- /See:/ 'notificationsDelete'' smart constructor.
data NotificationsDelete' = NotificationsDelete'
    { _ndQuotaUser      :: !(Maybe Text)
    , _ndPrettyPrint    :: !Bool
    , _ndUserIp         :: !(Maybe Text)
    , _ndCustomer       :: !Text
    , _ndKey            :: !(Maybe Text)
    , _ndNotificationId :: !Text
    , _ndOauthToken     :: !(Maybe Text)
    , _ndFields         :: !(Maybe Text)
    , _ndAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'NotificationsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ndQuotaUser'
--
-- * 'ndPrettyPrint'
--
-- * 'ndUserIp'
--
-- * 'ndCustomer'
--
-- * 'ndKey'
--
-- * 'ndNotificationId'
--
-- * 'ndOauthToken'
--
-- * 'ndFields'
--
-- * 'ndAlt'
notificationsDelete'
    :: Text -- ^ 'customer'
    -> Text -- ^ 'notificationId'
    -> NotificationsDelete'
notificationsDelete' pNdCustomer_ pNdNotificationId_ =
    NotificationsDelete'
    { _ndQuotaUser = Nothing
    , _ndPrettyPrint = True
    , _ndUserIp = Nothing
    , _ndCustomer = pNdCustomer_
    , _ndKey = Nothing
    , _ndNotificationId = pNdNotificationId_
    , _ndOauthToken = Nothing
    , _ndFields = Nothing
    , _ndAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ndQuotaUser :: Lens' NotificationsDelete' (Maybe Text)
ndQuotaUser
  = lens _ndQuotaUser (\ s a -> s{_ndQuotaUser = a})

-- | Returns response with indentations and line breaks.
ndPrettyPrint :: Lens' NotificationsDelete' Bool
ndPrettyPrint
  = lens _ndPrettyPrint
      (\ s a -> s{_ndPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ndUserIp :: Lens' NotificationsDelete' (Maybe Text)
ndUserIp = lens _ndUserIp (\ s a -> s{_ndUserIp = a})

-- | The unique ID for the customer\'s Google account. The customerId is also
-- returned as part of the Users resource.
ndCustomer :: Lens' NotificationsDelete' Text
ndCustomer
  = lens _ndCustomer (\ s a -> s{_ndCustomer = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ndKey :: Lens' NotificationsDelete' (Maybe Text)
ndKey = lens _ndKey (\ s a -> s{_ndKey = a})

-- | The unique ID of the notification.
ndNotificationId :: Lens' NotificationsDelete' Text
ndNotificationId
  = lens _ndNotificationId
      (\ s a -> s{_ndNotificationId = a})

-- | OAuth 2.0 token for the current user.
ndOauthToken :: Lens' NotificationsDelete' (Maybe Text)
ndOauthToken
  = lens _ndOauthToken (\ s a -> s{_ndOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ndFields :: Lens' NotificationsDelete' (Maybe Text)
ndFields = lens _ndFields (\ s a -> s{_ndFields = a})

-- | Data format for the response.
ndAlt :: Lens' NotificationsDelete' Alt
ndAlt = lens _ndAlt (\ s a -> s{_ndAlt = a})

instance GoogleRequest NotificationsDelete' where
        type Rs NotificationsDelete' = ()
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u NotificationsDelete'{..}
          = go _ndQuotaUser (Just _ndPrettyPrint) _ndUserIp
              _ndCustomer
              _ndKey
              _ndNotificationId
              _ndOauthToken
              _ndFields
              (Just _ndAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy NotificationsDeleteAPI)
                      r
                      u
