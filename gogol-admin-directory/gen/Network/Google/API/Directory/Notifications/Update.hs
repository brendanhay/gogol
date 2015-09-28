{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Directory.Notifications.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a notification.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.notifications.update@.
module Network.Google.API.Directory.Notifications.Update
    (
    -- * REST Resource
      NotificationsUpdateAPI

    -- * Creating a Request
    , notificationsUpdate'
    , NotificationsUpdate'

    -- * Request Lenses
    , nuQuotaUser
    , nuPrettyPrint
    , nuUserIp
    , nuCustomer
    , nuKey
    , nuNotificationId
    , nuOauthToken
    , nuFields
    , nuAlt
    ) where

import           Network.Google.Admin.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for directory.notifications.update which the
-- 'NotificationsUpdate'' request conforms to.
type NotificationsUpdateAPI =
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
                         QueryParam "alt" Alt :> Put '[JSON] Notification

-- | Updates a notification.
--
-- /See:/ 'notificationsUpdate'' smart constructor.
data NotificationsUpdate' = NotificationsUpdate'
    { _nuQuotaUser      :: !(Maybe Text)
    , _nuPrettyPrint    :: !Bool
    , _nuUserIp         :: !(Maybe Text)
    , _nuCustomer       :: !Text
    , _nuKey            :: !(Maybe Text)
    , _nuNotificationId :: !Text
    , _nuOauthToken     :: !(Maybe Text)
    , _nuFields         :: !(Maybe Text)
    , _nuAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'NotificationsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nuQuotaUser'
--
-- * 'nuPrettyPrint'
--
-- * 'nuUserIp'
--
-- * 'nuCustomer'
--
-- * 'nuKey'
--
-- * 'nuNotificationId'
--
-- * 'nuOauthToken'
--
-- * 'nuFields'
--
-- * 'nuAlt'
notificationsUpdate'
    :: Text -- ^ 'customer'
    -> Text -- ^ 'notificationId'
    -> NotificationsUpdate'
notificationsUpdate' pNuCustomer_ pNuNotificationId_ =
    NotificationsUpdate'
    { _nuQuotaUser = Nothing
    , _nuPrettyPrint = True
    , _nuUserIp = Nothing
    , _nuCustomer = pNuCustomer_
    , _nuKey = Nothing
    , _nuNotificationId = pNuNotificationId_
    , _nuOauthToken = Nothing
    , _nuFields = Nothing
    , _nuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
nuQuotaUser :: Lens' NotificationsUpdate' (Maybe Text)
nuQuotaUser
  = lens _nuQuotaUser (\ s a -> s{_nuQuotaUser = a})

-- | Returns response with indentations and line breaks.
nuPrettyPrint :: Lens' NotificationsUpdate' Bool
nuPrettyPrint
  = lens _nuPrettyPrint
      (\ s a -> s{_nuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
nuUserIp :: Lens' NotificationsUpdate' (Maybe Text)
nuUserIp = lens _nuUserIp (\ s a -> s{_nuUserIp = a})

-- | The unique ID for the customer\'s Google account.
nuCustomer :: Lens' NotificationsUpdate' Text
nuCustomer
  = lens _nuCustomer (\ s a -> s{_nuCustomer = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
nuKey :: Lens' NotificationsUpdate' (Maybe Text)
nuKey = lens _nuKey (\ s a -> s{_nuKey = a})

-- | The unique ID of the notification.
nuNotificationId :: Lens' NotificationsUpdate' Text
nuNotificationId
  = lens _nuNotificationId
      (\ s a -> s{_nuNotificationId = a})

-- | OAuth 2.0 token for the current user.
nuOauthToken :: Lens' NotificationsUpdate' (Maybe Text)
nuOauthToken
  = lens _nuOauthToken (\ s a -> s{_nuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
nuFields :: Lens' NotificationsUpdate' (Maybe Text)
nuFields = lens _nuFields (\ s a -> s{_nuFields = a})

-- | Data format for the response.
nuAlt :: Lens' NotificationsUpdate' Alt
nuAlt = lens _nuAlt (\ s a -> s{_nuAlt = a})

instance GoogleRequest NotificationsUpdate' where
        type Rs NotificationsUpdate' = Notification
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u NotificationsUpdate'{..}
          = go _nuQuotaUser (Just _nuPrettyPrint) _nuUserIp
              _nuCustomer
              _nuKey
              _nuNotificationId
              _nuOauthToken
              _nuFields
              (Just _nuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy NotificationsUpdateAPI)
                      r
                      u
