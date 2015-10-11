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
-- Module      : Network.Google.Resource.Gmail.Users.Watch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Set up or update a push notification watch on the given user mailbox.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersWatch@.
module Network.Google.Resource.Gmail.Users.Watch
    (
    -- * REST Resource
      UsersWatchResource

    -- * Creating a Request
    , usersWatch'
    , UsersWatch'

    -- * Request Lenses
    , uwQuotaUser
    , uwPrettyPrint
    , uwUserIP
    , uwPayload
    , uwUserId
    , uwKey
    , uwOAuthToken
    , uwFields
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersWatch@ method which the
-- 'UsersWatch'' request conforms to.
type UsersWatchResource =
     Capture "userId" Text :>
       "watch" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   Header "Authorization" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] WatchRequest :>
                         Post '[JSON] WatchResponse

-- | Set up or update a push notification watch on the given user mailbox.
--
-- /See:/ 'usersWatch'' smart constructor.
data UsersWatch' = UsersWatch'
    { _uwQuotaUser   :: !(Maybe Text)
    , _uwPrettyPrint :: !Bool
    , _uwUserIP      :: !(Maybe Text)
    , _uwPayload     :: !WatchRequest
    , _uwUserId      :: !Text
    , _uwKey         :: !(Maybe AuthKey)
    , _uwOAuthToken  :: !(Maybe OAuthToken)
    , _uwFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersWatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uwQuotaUser'
--
-- * 'uwPrettyPrint'
--
-- * 'uwUserIP'
--
-- * 'uwPayload'
--
-- * 'uwUserId'
--
-- * 'uwKey'
--
-- * 'uwOAuthToken'
--
-- * 'uwFields'
usersWatch'
    :: WatchRequest -- ^ 'payload'
    -> Text
    -> UsersWatch'
usersWatch' pUwPayload_ pUwUserId_ =
    UsersWatch'
    { _uwQuotaUser = Nothing
    , _uwPrettyPrint = True
    , _uwUserIP = Nothing
    , _uwPayload = pUwPayload_
    , _uwUserId = pUwUserId_
    , _uwKey = Nothing
    , _uwOAuthToken = Nothing
    , _uwFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uwQuotaUser :: Lens' UsersWatch' (Maybe Text)
uwQuotaUser
  = lens _uwQuotaUser (\ s a -> s{_uwQuotaUser = a})

-- | Returns response with indentations and line breaks.
uwPrettyPrint :: Lens' UsersWatch' Bool
uwPrettyPrint
  = lens _uwPrettyPrint
      (\ s a -> s{_uwPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uwUserIP :: Lens' UsersWatch' (Maybe Text)
uwUserIP = lens _uwUserIP (\ s a -> s{_uwUserIP = a})

-- | Multipart request metadata.
uwPayload :: Lens' UsersWatch' WatchRequest
uwPayload
  = lens _uwPayload (\ s a -> s{_uwPayload = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
uwUserId :: Lens' UsersWatch' Text
uwUserId = lens _uwUserId (\ s a -> s{_uwUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uwKey :: Lens' UsersWatch' (Maybe AuthKey)
uwKey = lens _uwKey (\ s a -> s{_uwKey = a})

-- | OAuth 2.0 token for the current user.
uwOAuthToken :: Lens' UsersWatch' (Maybe OAuthToken)
uwOAuthToken
  = lens _uwOAuthToken (\ s a -> s{_uwOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
uwFields :: Lens' UsersWatch' (Maybe Text)
uwFields = lens _uwFields (\ s a -> s{_uwFields = a})

instance GoogleAuth UsersWatch' where
        _AuthKey = uwKey . _Just
        _AuthToken = uwOAuthToken . _Just

instance GoogleRequest UsersWatch' where
        type Rs UsersWatch' = WatchResponse
        request = requestWith gmailRequest
        requestWith rq UsersWatch'{..}
          = go _uwUserId _uwQuotaUser (Just _uwPrettyPrint)
              _uwUserIP
              _uwFields
              _uwKey
              _uwOAuthToken
              (Just AltJSON)
              _uwPayload
          where go
                  = clientBuild (Proxy :: Proxy UsersWatchResource) rq
