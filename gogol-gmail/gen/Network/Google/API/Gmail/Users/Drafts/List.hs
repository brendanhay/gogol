{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Gmail.Users.Drafts.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the drafts in the user\'s mailbox.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.drafts.list@.
module Network.Google.API.Gmail.Users.Drafts.List
    (
    -- * REST Resource
      UsersDraftsListAPI

    -- * Creating a Request
    , usersDraftsList'
    , UsersDraftsList'

    -- * Request Lenses
    , udlQuotaUser
    , udlPrettyPrint
    , udlUserIp
    , udlUserId
    , udlKey
    , udlPageToken
    , udlOauthToken
    , udlMaxResults
    , udlFields
    , udlAlt
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for gmail.users.drafts.list which the
-- 'UsersDraftsList'' request conforms to.
type UsersDraftsListAPI =
     Capture "userId" Text :>
       "drafts" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "maxResults" Word32 :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Get '[JSON] ListDraftsResponse

-- | Lists the drafts in the user\'s mailbox.
--
-- /See:/ 'usersDraftsList'' smart constructor.
data UsersDraftsList' = UsersDraftsList'
    { _udlQuotaUser   :: !(Maybe Text)
    , _udlPrettyPrint :: !Bool
    , _udlUserIp      :: !(Maybe Text)
    , _udlUserId      :: !Text
    , _udlKey         :: !(Maybe Text)
    , _udlPageToken   :: !(Maybe Text)
    , _udlOauthToken  :: !(Maybe Text)
    , _udlMaxResults  :: !Word32
    , _udlFields      :: !(Maybe Text)
    , _udlAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDraftsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udlQuotaUser'
--
-- * 'udlPrettyPrint'
--
-- * 'udlUserIp'
--
-- * 'udlUserId'
--
-- * 'udlKey'
--
-- * 'udlPageToken'
--
-- * 'udlOauthToken'
--
-- * 'udlMaxResults'
--
-- * 'udlFields'
--
-- * 'udlAlt'
usersDraftsList'
    :: Text
    -> UsersDraftsList'
usersDraftsList' pUdlUserId_ =
    UsersDraftsList'
    { _udlQuotaUser = Nothing
    , _udlPrettyPrint = True
    , _udlUserIp = Nothing
    , _udlUserId = pUdlUserId_
    , _udlKey = Nothing
    , _udlPageToken = Nothing
    , _udlOauthToken = Nothing
    , _udlMaxResults = 100
    , _udlFields = Nothing
    , _udlAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
udlQuotaUser :: Lens' UsersDraftsList' (Maybe Text)
udlQuotaUser
  = lens _udlQuotaUser (\ s a -> s{_udlQuotaUser = a})

-- | Returns response with indentations and line breaks.
udlPrettyPrint :: Lens' UsersDraftsList' Bool
udlPrettyPrint
  = lens _udlPrettyPrint
      (\ s a -> s{_udlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
udlUserIp :: Lens' UsersDraftsList' (Maybe Text)
udlUserIp
  = lens _udlUserIp (\ s a -> s{_udlUserIp = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
udlUserId :: Lens' UsersDraftsList' Text
udlUserId
  = lens _udlUserId (\ s a -> s{_udlUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
udlKey :: Lens' UsersDraftsList' (Maybe Text)
udlKey = lens _udlKey (\ s a -> s{_udlKey = a})

-- | Page token to retrieve a specific page of results in the list.
udlPageToken :: Lens' UsersDraftsList' (Maybe Text)
udlPageToken
  = lens _udlPageToken (\ s a -> s{_udlPageToken = a})

-- | OAuth 2.0 token for the current user.
udlOauthToken :: Lens' UsersDraftsList' (Maybe Text)
udlOauthToken
  = lens _udlOauthToken
      (\ s a -> s{_udlOauthToken = a})

-- | Maximum number of drafts to return.
udlMaxResults :: Lens' UsersDraftsList' Word32
udlMaxResults
  = lens _udlMaxResults
      (\ s a -> s{_udlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
udlFields :: Lens' UsersDraftsList' (Maybe Text)
udlFields
  = lens _udlFields (\ s a -> s{_udlFields = a})

-- | Data format for the response.
udlAlt :: Lens' UsersDraftsList' Alt
udlAlt = lens _udlAlt (\ s a -> s{_udlAlt = a})

instance GoogleRequest UsersDraftsList' where
        type Rs UsersDraftsList' = ListDraftsResponse
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersDraftsList'{..}
          = go _udlQuotaUser (Just _udlPrettyPrint) _udlUserIp
              _udlUserId
              _udlKey
              _udlPageToken
              _udlOauthToken
              (Just _udlMaxResults)
              _udlFields
              (Just _udlAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy UsersDraftsListAPI)
                      r
                      u
