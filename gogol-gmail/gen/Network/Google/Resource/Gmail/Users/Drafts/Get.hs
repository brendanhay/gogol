{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Gmail.Users.Drafts.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the specified draft.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersDraftsGet@.
module Gmail.Users.Drafts.Get
    (
    -- * REST Resource
      UsersDraftsGetAPI

    -- * Creating a Request
    , usersDraftsGet
    , UsersDraftsGet

    -- * Request Lenses
    , udgQuotaUser
    , udgPrettyPrint
    , udgUserIp
    , udgFormat
    , udgUserId
    , udgKey
    , udgId
    , udgOauthToken
    , udgFields
    , udgAlt
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersDraftsGet@ which the
-- 'UsersDraftsGet' request conforms to.
type UsersDraftsGetAPI =
     Capture "userId" Text :>
       "drafts" :>
         Capture "id" Text :>
           QueryParam "format" Text :> Get '[JSON] Draft

-- | Gets the specified draft.
--
-- /See:/ 'usersDraftsGet' smart constructor.
data UsersDraftsGet = UsersDraftsGet
    { _udgQuotaUser   :: !(Maybe Text)
    , _udgPrettyPrint :: !Bool
    , _udgUserIp      :: !(Maybe Text)
    , _udgFormat      :: !Text
    , _udgUserId      :: !Text
    , _udgKey         :: !(Maybe Text)
    , _udgId          :: !Text
    , _udgOauthToken  :: !(Maybe Text)
    , _udgFields      :: !(Maybe Text)
    , _udgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDraftsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udgQuotaUser'
--
-- * 'udgPrettyPrint'
--
-- * 'udgUserIp'
--
-- * 'udgFormat'
--
-- * 'udgUserId'
--
-- * 'udgKey'
--
-- * 'udgId'
--
-- * 'udgOauthToken'
--
-- * 'udgFields'
--
-- * 'udgAlt'
usersDraftsGet
    :: Text -- ^ 'id'
    -> Text
    -> UsersDraftsGet
usersDraftsGet pUdgUserId_ pUdgId_ =
    UsersDraftsGet
    { _udgQuotaUser = Nothing
    , _udgPrettyPrint = True
    , _udgUserIp = Nothing
    , _udgFormat = "full"
    , _udgUserId = pUdgUserId_
    , _udgKey = Nothing
    , _udgId = pUdgId_
    , _udgOauthToken = Nothing
    , _udgFields = Nothing
    , _udgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
udgQuotaUser :: Lens' UsersDraftsGet' (Maybe Text)
udgQuotaUser
  = lens _udgQuotaUser (\ s a -> s{_udgQuotaUser = a})

-- | Returns response with indentations and line breaks.
udgPrettyPrint :: Lens' UsersDraftsGet' Bool
udgPrettyPrint
  = lens _udgPrettyPrint
      (\ s a -> s{_udgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
udgUserIp :: Lens' UsersDraftsGet' (Maybe Text)
udgUserIp
  = lens _udgUserIp (\ s a -> s{_udgUserIp = a})

-- | The format to return the draft in.
udgFormat :: Lens' UsersDraftsGet' Text
udgFormat
  = lens _udgFormat (\ s a -> s{_udgFormat = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
udgUserId :: Lens' UsersDraftsGet' Text
udgUserId
  = lens _udgUserId (\ s a -> s{_udgUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
udgKey :: Lens' UsersDraftsGet' (Maybe Text)
udgKey = lens _udgKey (\ s a -> s{_udgKey = a})

-- | The ID of the draft to retrieve.
udgId :: Lens' UsersDraftsGet' Text
udgId = lens _udgId (\ s a -> s{_udgId = a})

-- | OAuth 2.0 token for the current user.
udgOauthToken :: Lens' UsersDraftsGet' (Maybe Text)
udgOauthToken
  = lens _udgOauthToken
      (\ s a -> s{_udgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
udgFields :: Lens' UsersDraftsGet' (Maybe Text)
udgFields
  = lens _udgFields (\ s a -> s{_udgFields = a})

-- | Data format for the response.
udgAlt :: Lens' UsersDraftsGet' Text
udgAlt = lens _udgAlt (\ s a -> s{_udgAlt = a})

instance GoogleRequest UsersDraftsGet' where
        type Rs UsersDraftsGet' = Draft
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersDraftsGet{..}
          = go _udgQuotaUser _udgPrettyPrint _udgUserIp
              (Just _udgFormat)
              _udgUserId
              _udgKey
              _udgId
              _udgOauthToken
              _udgFields
              _udgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy UsersDraftsGetAPI)
                      r
                      u
