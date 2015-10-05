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
-- Module      : Network.Google.Resource.Gmail.Users.Stop
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Stop receiving push notifications for the given user mailbox.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersStop@.
module Network.Google.Resource.Gmail.Users.Stop
    (
    -- * REST Resource
      UsersStopResource

    -- * Creating a Request
    , usersStop'
    , UsersStop'

    -- * Request Lenses
    , usQuotaUser
    , usPrettyPrint
    , usUserIP
    , usUserId
    , usKey
    , usOAuthToken
    , usFields
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersStop@ which the
-- 'UsersStop'' request conforms to.
type UsersStopResource =
     Capture "userId" Text :>
       "stop" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Stop receiving push notifications for the given user mailbox.
--
-- /See:/ 'usersStop'' smart constructor.
data UsersStop' = UsersStop'
    { _usQuotaUser   :: !(Maybe Text)
    , _usPrettyPrint :: !Bool
    , _usUserIP      :: !(Maybe Text)
    , _usUserId      :: !Text
    , _usKey         :: !(Maybe Key)
    , _usOAuthToken  :: !(Maybe OAuthToken)
    , _usFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersStop'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usQuotaUser'
--
-- * 'usPrettyPrint'
--
-- * 'usUserIP'
--
-- * 'usUserId'
--
-- * 'usKey'
--
-- * 'usOAuthToken'
--
-- * 'usFields'
usersStop'
    :: Text
    -> UsersStop'
usersStop' pUsUserId_ =
    UsersStop'
    { _usQuotaUser = Nothing
    , _usPrettyPrint = True
    , _usUserIP = Nothing
    , _usUserId = pUsUserId_
    , _usKey = Nothing
    , _usOAuthToken = Nothing
    , _usFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
usQuotaUser :: Lens' UsersStop' (Maybe Text)
usQuotaUser
  = lens _usQuotaUser (\ s a -> s{_usQuotaUser = a})

-- | Returns response with indentations and line breaks.
usPrettyPrint :: Lens' UsersStop' Bool
usPrettyPrint
  = lens _usPrettyPrint
      (\ s a -> s{_usPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
usUserIP :: Lens' UsersStop' (Maybe Text)
usUserIP = lens _usUserIP (\ s a -> s{_usUserIP = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
usUserId :: Lens' UsersStop' Text
usUserId = lens _usUserId (\ s a -> s{_usUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
usKey :: Lens' UsersStop' (Maybe Key)
usKey = lens _usKey (\ s a -> s{_usKey = a})

-- | OAuth 2.0 token for the current user.
usOAuthToken :: Lens' UsersStop' (Maybe OAuthToken)
usOAuthToken
  = lens _usOAuthToken (\ s a -> s{_usOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
usFields :: Lens' UsersStop' (Maybe Text)
usFields = lens _usFields (\ s a -> s{_usFields = a})

instance GoogleAuth UsersStop' where
        authKey = usKey . _Just
        authToken = usOAuthToken . _Just

instance GoogleRequest UsersStop' where
        type Rs UsersStop' = ()
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersStop'{..}
          = go _usUserId _usQuotaUser (Just _usPrettyPrint)
              _usUserIP
              _usFields
              _usKey
              _usOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy UsersStopResource)
                      r
                      u
