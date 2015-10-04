{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Directory.Notifications.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a notification.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryNotificationsUpdate@.
module Network.Google.Resource.Directory.Notifications.Update
    (
    -- * REST Resource
      NotificationsUpdateResource

    -- * Creating a Request
    , notificationsUpdate'
    , NotificationsUpdate'

    -- * Request Lenses
    , nuQuotaUser
    , nuPrettyPrint
    , nuUserIP
    , nuPayload
    , nuCustomer
    , nuKey
    , nuNotificationId
    , nuOAuthToken
    , nuFields
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryNotificationsUpdate@ which the
-- 'NotificationsUpdate'' request conforms to.
type NotificationsUpdateResource =
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
                         QueryParam "alt" AltJSON :>
                           ReqBody '[OctetStream] Notification :>
                             Put '[JSON] Notification

-- | Updates a notification.
--
-- /See:/ 'notificationsUpdate'' smart constructor.
data NotificationsUpdate' = NotificationsUpdate'
    { _nuQuotaUser      :: !(Maybe Text)
    , _nuPrettyPrint    :: !Bool
    , _nuUserIP         :: !(Maybe Text)
    , _nuPayload        :: !Notification
    , _nuCustomer       :: !Text
    , _nuKey            :: !(Maybe Key)
    , _nuNotificationId :: !Text
    , _nuOAuthToken     :: !(Maybe OAuthToken)
    , _nuFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NotificationsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nuQuotaUser'
--
-- * 'nuPrettyPrint'
--
-- * 'nuUserIP'
--
-- * 'nuPayload'
--
-- * 'nuCustomer'
--
-- * 'nuKey'
--
-- * 'nuNotificationId'
--
-- * 'nuOAuthToken'
--
-- * 'nuFields'
notificationsUpdate'
    :: Notification -- ^ 'payload'
    -> Text -- ^ 'customer'
    -> Text -- ^ 'notificationId'
    -> NotificationsUpdate'
notificationsUpdate' pNuPayload_ pNuCustomer_ pNuNotificationId_ =
    NotificationsUpdate'
    { _nuQuotaUser = Nothing
    , _nuPrettyPrint = True
    , _nuUserIP = Nothing
    , _nuPayload = pNuPayload_
    , _nuCustomer = pNuCustomer_
    , _nuKey = Nothing
    , _nuNotificationId = pNuNotificationId_
    , _nuOAuthToken = Nothing
    , _nuFields = Nothing
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
nuUserIP :: Lens' NotificationsUpdate' (Maybe Text)
nuUserIP = lens _nuUserIP (\ s a -> s{_nuUserIP = a})

-- | Multipart request metadata.
nuPayload :: Lens' NotificationsUpdate' Notification
nuPayload
  = lens _nuPayload (\ s a -> s{_nuPayload = a})

-- | The unique ID for the customer\'s Google account.
nuCustomer :: Lens' NotificationsUpdate' Text
nuCustomer
  = lens _nuCustomer (\ s a -> s{_nuCustomer = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
nuKey :: Lens' NotificationsUpdate' (Maybe Key)
nuKey = lens _nuKey (\ s a -> s{_nuKey = a})

-- | The unique ID of the notification.
nuNotificationId :: Lens' NotificationsUpdate' Text
nuNotificationId
  = lens _nuNotificationId
      (\ s a -> s{_nuNotificationId = a})

-- | OAuth 2.0 token for the current user.
nuOAuthToken :: Lens' NotificationsUpdate' (Maybe OAuthToken)
nuOAuthToken
  = lens _nuOAuthToken (\ s a -> s{_nuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
nuFields :: Lens' NotificationsUpdate' (Maybe Text)
nuFields = lens _nuFields (\ s a -> s{_nuFields = a})

instance GoogleAuth NotificationsUpdate' where
        authKey = nuKey . _Just
        authToken = nuOAuthToken . _Just

instance GoogleRequest NotificationsUpdate' where
        type Rs NotificationsUpdate' = Notification
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u NotificationsUpdate'{..}
          = go _nuCustomer _nuNotificationId _nuQuotaUser
              (Just _nuPrettyPrint)
              _nuUserIP
              _nuFields
              _nuKey
              _nuOAuthToken
              (Just AltJSON)
              _nuPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy NotificationsUpdateResource)
                      r
                      u
