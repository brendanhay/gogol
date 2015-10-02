{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Directory.Notifications.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a notification
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryNotificationsDelete@.
module Network.Google.Resource.Directory.Notifications.Delete
    (
    -- * REST Resource
      NotificationsDeleteResource

    -- * Creating a Request
    , notificationsDelete'
    , NotificationsDelete'

    -- * Request Lenses
    , ndQuotaUser
    , ndPrettyPrint
    , ndUserIP
    , ndCustomer
    , ndKey
    , ndNotificationId
    , ndOAuthToken
    , ndFields
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryNotificationsDelete@ which the
-- 'NotificationsDelete'' request conforms to.
type NotificationsDeleteResource =
     "customer" :>
       Capture "customer" Text :>
         "notifications" :>
           Capture "notificationId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a notification
--
-- /See:/ 'notificationsDelete'' smart constructor.
data NotificationsDelete' = NotificationsDelete'
    { _ndQuotaUser      :: !(Maybe Text)
    , _ndPrettyPrint    :: !Bool
    , _ndUserIP         :: !(Maybe Text)
    , _ndCustomer       :: !Text
    , _ndKey            :: !(Maybe Key)
    , _ndNotificationId :: !Text
    , _ndOAuthToken     :: !(Maybe OAuthToken)
    , _ndFields         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'NotificationsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ndQuotaUser'
--
-- * 'ndPrettyPrint'
--
-- * 'ndUserIP'
--
-- * 'ndCustomer'
--
-- * 'ndKey'
--
-- * 'ndNotificationId'
--
-- * 'ndOAuthToken'
--
-- * 'ndFields'
notificationsDelete'
    :: Text -- ^ 'customer'
    -> Text -- ^ 'notificationId'
    -> NotificationsDelete'
notificationsDelete' pNdCustomer_ pNdNotificationId_ =
    NotificationsDelete'
    { _ndQuotaUser = Nothing
    , _ndPrettyPrint = True
    , _ndUserIP = Nothing
    , _ndCustomer = pNdCustomer_
    , _ndKey = Nothing
    , _ndNotificationId = pNdNotificationId_
    , _ndOAuthToken = Nothing
    , _ndFields = Nothing
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
ndUserIP :: Lens' NotificationsDelete' (Maybe Text)
ndUserIP = lens _ndUserIP (\ s a -> s{_ndUserIP = a})

-- | The unique ID for the customer\'s Google account. The customerId is also
-- returned as part of the Users resource.
ndCustomer :: Lens' NotificationsDelete' Text
ndCustomer
  = lens _ndCustomer (\ s a -> s{_ndCustomer = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ndKey :: Lens' NotificationsDelete' (Maybe Key)
ndKey = lens _ndKey (\ s a -> s{_ndKey = a})

-- | The unique ID of the notification.
ndNotificationId :: Lens' NotificationsDelete' Text
ndNotificationId
  = lens _ndNotificationId
      (\ s a -> s{_ndNotificationId = a})

-- | OAuth 2.0 token for the current user.
ndOAuthToken :: Lens' NotificationsDelete' (Maybe OAuthToken)
ndOAuthToken
  = lens _ndOAuthToken (\ s a -> s{_ndOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ndFields :: Lens' NotificationsDelete' (Maybe Text)
ndFields = lens _ndFields (\ s a -> s{_ndFields = a})

instance GoogleAuth NotificationsDelete' where
        authKey = ndKey . _Just
        authToken = ndOAuthToken . _Just

instance GoogleRequest NotificationsDelete' where
        type Rs NotificationsDelete' = ()
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u NotificationsDelete'{..}
          = go _ndCustomer _ndNotificationId _ndQuotaUser
              (Just _ndPrettyPrint)
              _ndUserIP
              _ndFields
              _ndKey
              _ndOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy NotificationsDeleteResource)
                      r
                      u
