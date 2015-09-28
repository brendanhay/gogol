{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Gmail.Users.Drafts.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new draft with the DRAFT label.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.drafts.create@.
module Network.Google.API.Gmail.Users.Drafts.Create
    (
    -- * REST Resource
      UsersDraftsCreateAPI

    -- * Creating a Request
    , usersDraftsCreate'
    , UsersDraftsCreate'

    -- * Request Lenses
    , udcQuotaUser
    , udcPrettyPrint
    , udcUserIp
    , udcUserId
    , udcKey
    , udcOauthToken
    , udcFields
    , udcAlt
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for gmail.users.drafts.create which the
-- 'UsersDraftsCreate'' request conforms to.
type UsersDraftsCreateAPI =
     Capture "userId" Text :>
       "drafts" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Post '[JSON] Draft

-- | Creates a new draft with the DRAFT label.
--
-- /See:/ 'usersDraftsCreate'' smart constructor.
data UsersDraftsCreate' = UsersDraftsCreate'
    { _udcQuotaUser   :: !(Maybe Text)
    , _udcPrettyPrint :: !Bool
    , _udcUserIp      :: !(Maybe Text)
    , _udcUserId      :: !Text
    , _udcKey         :: !(Maybe Text)
    , _udcOauthToken  :: !(Maybe Text)
    , _udcFields      :: !(Maybe Text)
    , _udcAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDraftsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udcQuotaUser'
--
-- * 'udcPrettyPrint'
--
-- * 'udcUserIp'
--
-- * 'udcUserId'
--
-- * 'udcKey'
--
-- * 'udcOauthToken'
--
-- * 'udcFields'
--
-- * 'udcAlt'
usersDraftsCreate'
    :: Text
    -> UsersDraftsCreate'
usersDraftsCreate' pUdcUserId_ =
    UsersDraftsCreate'
    { _udcQuotaUser = Nothing
    , _udcPrettyPrint = True
    , _udcUserIp = Nothing
    , _udcUserId = pUdcUserId_
    , _udcKey = Nothing
    , _udcOauthToken = Nothing
    , _udcFields = Nothing
    , _udcAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
udcQuotaUser :: Lens' UsersDraftsCreate' (Maybe Text)
udcQuotaUser
  = lens _udcQuotaUser (\ s a -> s{_udcQuotaUser = a})

-- | Returns response with indentations and line breaks.
udcPrettyPrint :: Lens' UsersDraftsCreate' Bool
udcPrettyPrint
  = lens _udcPrettyPrint
      (\ s a -> s{_udcPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
udcUserIp :: Lens' UsersDraftsCreate' (Maybe Text)
udcUserIp
  = lens _udcUserIp (\ s a -> s{_udcUserIp = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
udcUserId :: Lens' UsersDraftsCreate' Text
udcUserId
  = lens _udcUserId (\ s a -> s{_udcUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
udcKey :: Lens' UsersDraftsCreate' (Maybe Text)
udcKey = lens _udcKey (\ s a -> s{_udcKey = a})

-- | OAuth 2.0 token for the current user.
udcOauthToken :: Lens' UsersDraftsCreate' (Maybe Text)
udcOauthToken
  = lens _udcOauthToken
      (\ s a -> s{_udcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
udcFields :: Lens' UsersDraftsCreate' (Maybe Text)
udcFields
  = lens _udcFields (\ s a -> s{_udcFields = a})

-- | Data format for the response.
udcAlt :: Lens' UsersDraftsCreate' Alt
udcAlt = lens _udcAlt (\ s a -> s{_udcAlt = a})

instance GoogleRequest UsersDraftsCreate' where
        type Rs UsersDraftsCreate' = Draft
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersDraftsCreate'{..}
          = go _udcQuotaUser (Just _udcPrettyPrint) _udcUserIp
              _udcUserId
              _udcKey
              _udcOauthToken
              _udcFields
              (Just _udcAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersDraftsCreateAPI)
                      r
                      u
