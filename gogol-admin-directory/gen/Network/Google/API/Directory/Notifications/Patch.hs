{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Directory.Notifications.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a notification. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.notifications.patch@.
module Network.Google.API.Directory.Notifications.Patch
    (
    -- * REST Resource
      NotificationsPatchAPI

    -- * Creating a Request
    , notificationsPatch'
    , NotificationsPatch'

    -- * Request Lenses
    , npQuotaUser
    , npPrettyPrint
    , npUserIp
    , npCustomer
    , npKey
    , npNotificationId
    , npOauthToken
    , npFields
    , npAlt
    ) where

import           Network.Google.Admin.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for directory.notifications.patch which the
-- 'NotificationsPatch'' request conforms to.
type NotificationsPatchAPI =
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
                         QueryParam "alt" Alt :> Patch '[JSON] Notification

-- | Updates a notification. This method supports patch semantics.
--
-- /See:/ 'notificationsPatch'' smart constructor.
data NotificationsPatch' = NotificationsPatch'
    { _npQuotaUser      :: !(Maybe Text)
    , _npPrettyPrint    :: !Bool
    , _npUserIp         :: !(Maybe Text)
    , _npCustomer       :: !Text
    , _npKey            :: !(Maybe Text)
    , _npNotificationId :: !Text
    , _npOauthToken     :: !(Maybe Text)
    , _npFields         :: !(Maybe Text)
    , _npAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'NotificationsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'npQuotaUser'
--
-- * 'npPrettyPrint'
--
-- * 'npUserIp'
--
-- * 'npCustomer'
--
-- * 'npKey'
--
-- * 'npNotificationId'
--
-- * 'npOauthToken'
--
-- * 'npFields'
--
-- * 'npAlt'
notificationsPatch'
    :: Text -- ^ 'customer'
    -> Text -- ^ 'notificationId'
    -> NotificationsPatch'
notificationsPatch' pNpCustomer_ pNpNotificationId_ =
    NotificationsPatch'
    { _npQuotaUser = Nothing
    , _npPrettyPrint = True
    , _npUserIp = Nothing
    , _npCustomer = pNpCustomer_
    , _npKey = Nothing
    , _npNotificationId = pNpNotificationId_
    , _npOauthToken = Nothing
    , _npFields = Nothing
    , _npAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
npQuotaUser :: Lens' NotificationsPatch' (Maybe Text)
npQuotaUser
  = lens _npQuotaUser (\ s a -> s{_npQuotaUser = a})

-- | Returns response with indentations and line breaks.
npPrettyPrint :: Lens' NotificationsPatch' Bool
npPrettyPrint
  = lens _npPrettyPrint
      (\ s a -> s{_npPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
npUserIp :: Lens' NotificationsPatch' (Maybe Text)
npUserIp = lens _npUserIp (\ s a -> s{_npUserIp = a})

-- | The unique ID for the customer\'s Google account.
npCustomer :: Lens' NotificationsPatch' Text
npCustomer
  = lens _npCustomer (\ s a -> s{_npCustomer = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
npKey :: Lens' NotificationsPatch' (Maybe Text)
npKey = lens _npKey (\ s a -> s{_npKey = a})

-- | The unique ID of the notification.
npNotificationId :: Lens' NotificationsPatch' Text
npNotificationId
  = lens _npNotificationId
      (\ s a -> s{_npNotificationId = a})

-- | OAuth 2.0 token for the current user.
npOauthToken :: Lens' NotificationsPatch' (Maybe Text)
npOauthToken
  = lens _npOauthToken (\ s a -> s{_npOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
npFields :: Lens' NotificationsPatch' (Maybe Text)
npFields = lens _npFields (\ s a -> s{_npFields = a})

-- | Data format for the response.
npAlt :: Lens' NotificationsPatch' Alt
npAlt = lens _npAlt (\ s a -> s{_npAlt = a})

instance GoogleRequest NotificationsPatch' where
        type Rs NotificationsPatch' = Notification
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u NotificationsPatch'{..}
          = go _npQuotaUser (Just _npPrettyPrint) _npUserIp
              _npCustomer
              _npKey
              _npNotificationId
              _npOauthToken
              _npFields
              (Just _npAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy NotificationsPatchAPI)
                      r
                      u
