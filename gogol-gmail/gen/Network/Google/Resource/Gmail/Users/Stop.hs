{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module Gmail.Users.Stop
    (
    -- * REST Resource
      UsersStopAPI

    -- * Creating a Request
    , usersStop
    , UsersStop

    -- * Request Lenses
    , usQuotaUser
    , usPrettyPrint
    , usUserIp
    , usUserId
    , usKey
    , usOauthToken
    , usFields
    , usAlt
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersStop@ which the
-- 'UsersStop' request conforms to.
type UsersStopAPI =
     Capture "userId" Text :> "stop" :> Post '[JSON] ()

-- | Stop receiving push notifications for the given user mailbox.
--
-- /See:/ 'usersStop' smart constructor.
data UsersStop = UsersStop
    { _usQuotaUser   :: !(Maybe Text)
    , _usPrettyPrint :: !Bool
    , _usUserIp      :: !(Maybe Text)
    , _usUserId      :: !Text
    , _usKey         :: !(Maybe Text)
    , _usOauthToken  :: !(Maybe Text)
    , _usFields      :: !(Maybe Text)
    , _usAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersStop'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usQuotaUser'
--
-- * 'usPrettyPrint'
--
-- * 'usUserIp'
--
-- * 'usUserId'
--
-- * 'usKey'
--
-- * 'usOauthToken'
--
-- * 'usFields'
--
-- * 'usAlt'
usersStop
    :: Text
    -> UsersStop
usersStop pUsUserId_ =
    UsersStop
    { _usQuotaUser = Nothing
    , _usPrettyPrint = True
    , _usUserIp = Nothing
    , _usUserId = pUsUserId_
    , _usKey = Nothing
    , _usOauthToken = Nothing
    , _usFields = Nothing
    , _usAlt = "json"
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
usUserIp :: Lens' UsersStop' (Maybe Text)
usUserIp = lens _usUserIp (\ s a -> s{_usUserIp = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
usUserId :: Lens' UsersStop' Text
usUserId = lens _usUserId (\ s a -> s{_usUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
usKey :: Lens' UsersStop' (Maybe Text)
usKey = lens _usKey (\ s a -> s{_usKey = a})

-- | OAuth 2.0 token for the current user.
usOauthToken :: Lens' UsersStop' (Maybe Text)
usOauthToken
  = lens _usOauthToken (\ s a -> s{_usOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
usFields :: Lens' UsersStop' (Maybe Text)
usFields = lens _usFields (\ s a -> s{_usFields = a})

-- | Data format for the response.
usAlt :: Lens' UsersStop' Text
usAlt = lens _usAlt (\ s a -> s{_usAlt = a})

instance GoogleRequest UsersStop' where
        type Rs UsersStop' = ()
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersStop{..}
          = go _usQuotaUser _usPrettyPrint _usUserIp _usUserId
              _usKey
              _usOauthToken
              _usFields
              _usAlt
          where go
                  = clientWithRoute (Proxy :: Proxy UsersStopAPI) r u
