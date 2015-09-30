{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Gmail.Users.Drafts.Send
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sends the specified, existing draft to the recipients in the To, Cc, and
-- Bcc headers.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersDraftsSend@.
module Gmail.Users.Drafts.Send
    (
    -- * REST Resource
      UsersDraftsSendAPI

    -- * Creating a Request
    , usersDraftsSend
    , UsersDraftsSend

    -- * Request Lenses
    , udsQuotaUser
    , udsPrettyPrint
    , udsUserIp
    , udsUserId
    , udsKey
    , udsOauthToken
    , udsFields
    , udsAlt
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersDraftsSend@ which the
-- 'UsersDraftsSend' request conforms to.
type UsersDraftsSendAPI =
     Capture "userId" Text :>
       "drafts" :> "send" :> Post '[JSON] Message

-- | Sends the specified, existing draft to the recipients in the To, Cc, and
-- Bcc headers.
--
-- /See:/ 'usersDraftsSend' smart constructor.
data UsersDraftsSend = UsersDraftsSend
    { _udsQuotaUser   :: !(Maybe Text)
    , _udsPrettyPrint :: !Bool
    , _udsUserIp      :: !(Maybe Text)
    , _udsUserId      :: !Text
    , _udsKey         :: !(Maybe Text)
    , _udsOauthToken  :: !(Maybe Text)
    , _udsFields      :: !(Maybe Text)
    , _udsAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDraftsSend'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udsQuotaUser'
--
-- * 'udsPrettyPrint'
--
-- * 'udsUserIp'
--
-- * 'udsUserId'
--
-- * 'udsKey'
--
-- * 'udsOauthToken'
--
-- * 'udsFields'
--
-- * 'udsAlt'
usersDraftsSend
    :: Text
    -> UsersDraftsSend
usersDraftsSend pUdsUserId_ =
    UsersDraftsSend
    { _udsQuotaUser = Nothing
    , _udsPrettyPrint = True
    , _udsUserIp = Nothing
    , _udsUserId = pUdsUserId_
    , _udsKey = Nothing
    , _udsOauthToken = Nothing
    , _udsFields = Nothing
    , _udsAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
udsQuotaUser :: Lens' UsersDraftsSend' (Maybe Text)
udsQuotaUser
  = lens _udsQuotaUser (\ s a -> s{_udsQuotaUser = a})

-- | Returns response with indentations and line breaks.
udsPrettyPrint :: Lens' UsersDraftsSend' Bool
udsPrettyPrint
  = lens _udsPrettyPrint
      (\ s a -> s{_udsPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
udsUserIp :: Lens' UsersDraftsSend' (Maybe Text)
udsUserIp
  = lens _udsUserIp (\ s a -> s{_udsUserIp = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
udsUserId :: Lens' UsersDraftsSend' Text
udsUserId
  = lens _udsUserId (\ s a -> s{_udsUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
udsKey :: Lens' UsersDraftsSend' (Maybe Text)
udsKey = lens _udsKey (\ s a -> s{_udsKey = a})

-- | OAuth 2.0 token for the current user.
udsOauthToken :: Lens' UsersDraftsSend' (Maybe Text)
udsOauthToken
  = lens _udsOauthToken
      (\ s a -> s{_udsOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
udsFields :: Lens' UsersDraftsSend' (Maybe Text)
udsFields
  = lens _udsFields (\ s a -> s{_udsFields = a})

-- | Data format for the response.
udsAlt :: Lens' UsersDraftsSend' Text
udsAlt = lens _udsAlt (\ s a -> s{_udsAlt = a})

instance GoogleRequest UsersDraftsSend' where
        type Rs UsersDraftsSend' = Message
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersDraftsSend{..}
          = go _udsQuotaUser _udsPrettyPrint _udsUserIp
              _udsUserId
              _udsKey
              _udsOauthToken
              _udsFields
              _udsAlt
          where go
                  = clientWithRoute (Proxy :: Proxy UsersDraftsSendAPI)
                      r
                      u
