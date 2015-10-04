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
-- Module      : Network.Google.Resource.Directory.Notifications.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a notification. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryNotificationsPatch@.
module Network.Google.Resource.Directory.Notifications.Patch
    (
    -- * REST Resource
      NotificationsPatchResource

    -- * Creating a Request
    , notificationsPatch'
    , NotificationsPatch'

    -- * Request Lenses
    , npQuotaUser
    , npPrettyPrint
    , npUserIP
    , npPayload
    , npCustomer
    , npKey
    , npNotificationId
    , npOAuthToken
    , npFields
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryNotificationsPatch@ which the
-- 'NotificationsPatch'' request conforms to.
type NotificationsPatchResource =
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
                             Patch '[JSON] Notification

-- | Updates a notification. This method supports patch semantics.
--
-- /See:/ 'notificationsPatch'' smart constructor.
data NotificationsPatch' = NotificationsPatch'
    { _npQuotaUser      :: !(Maybe Text)
    , _npPrettyPrint    :: !Bool
    , _npUserIP         :: !(Maybe Text)
    , _npPayload        :: !Notification
    , _npCustomer       :: !Text
    , _npKey            :: !(Maybe Key)
    , _npNotificationId :: !Text
    , _npOAuthToken     :: !(Maybe OAuthToken)
    , _npFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NotificationsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'npQuotaUser'
--
-- * 'npPrettyPrint'
--
-- * 'npUserIP'
--
-- * 'npPayload'
--
-- * 'npCustomer'
--
-- * 'npKey'
--
-- * 'npNotificationId'
--
-- * 'npOAuthToken'
--
-- * 'npFields'
notificationsPatch'
    :: Notification -- ^ 'payload'
    -> Text -- ^ 'customer'
    -> Text -- ^ 'notificationId'
    -> NotificationsPatch'
notificationsPatch' pNpPayload_ pNpCustomer_ pNpNotificationId_ =
    NotificationsPatch'
    { _npQuotaUser = Nothing
    , _npPrettyPrint = True
    , _npUserIP = Nothing
    , _npPayload = pNpPayload_
    , _npCustomer = pNpCustomer_
    , _npKey = Nothing
    , _npNotificationId = pNpNotificationId_
    , _npOAuthToken = Nothing
    , _npFields = Nothing
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
npUserIP :: Lens' NotificationsPatch' (Maybe Text)
npUserIP = lens _npUserIP (\ s a -> s{_npUserIP = a})

-- | Multipart request metadata.
npPayload :: Lens' NotificationsPatch' Notification
npPayload
  = lens _npPayload (\ s a -> s{_npPayload = a})

-- | The unique ID for the customer\'s Google account.
npCustomer :: Lens' NotificationsPatch' Text
npCustomer
  = lens _npCustomer (\ s a -> s{_npCustomer = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
npKey :: Lens' NotificationsPatch' (Maybe Key)
npKey = lens _npKey (\ s a -> s{_npKey = a})

-- | The unique ID of the notification.
npNotificationId :: Lens' NotificationsPatch' Text
npNotificationId
  = lens _npNotificationId
      (\ s a -> s{_npNotificationId = a})

-- | OAuth 2.0 token for the current user.
npOAuthToken :: Lens' NotificationsPatch' (Maybe OAuthToken)
npOAuthToken
  = lens _npOAuthToken (\ s a -> s{_npOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
npFields :: Lens' NotificationsPatch' (Maybe Text)
npFields = lens _npFields (\ s a -> s{_npFields = a})

instance GoogleAuth NotificationsPatch' where
        authKey = npKey . _Just
        authToken = npOAuthToken . _Just

instance GoogleRequest NotificationsPatch' where
        type Rs NotificationsPatch' = Notification
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u NotificationsPatch'{..}
          = go _npCustomer _npNotificationId _npQuotaUser
              (Just _npPrettyPrint)
              _npUserIP
              _npFields
              _npKey
              _npOAuthToken
              (Just AltJSON)
              _npPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy NotificationsPatchResource)
                      r
                      u
