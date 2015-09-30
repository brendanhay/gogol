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
-- Module      : Network.Google.Resource.Gmail.Users.Drafts.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Replaces a draft\'s content.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersDraftsUpdate@.
module Network.Google.Resource.Gmail.Users.Drafts.Update
    (
    -- * REST Resource
      UsersDraftsUpdateResource

    -- * Creating a Request
    , usersDraftsUpdate'
    , UsersDraftsUpdate'

    -- * Request Lenses
    , uduQuotaUser
    , uduPrettyPrint
    , uduUserIp
    , uduUserId
    , uduKey
    , uduId
    , uduOauthToken
    , uduFields
    , uduAlt
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersDraftsUpdate@ which the
-- 'UsersDraftsUpdate'' request conforms to.
type UsersDraftsUpdateResource =
     Capture "userId" Text :>
       "drafts" :>
         Capture "id" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Put '[JSON] Draft

-- | Replaces a draft\'s content.
--
-- /See:/ 'usersDraftsUpdate'' smart constructor.
data UsersDraftsUpdate' = UsersDraftsUpdate'
    { _uduQuotaUser   :: !(Maybe Text)
    , _uduPrettyPrint :: !Bool
    , _uduUserIp      :: !(Maybe Text)
    , _uduUserId      :: !Text
    , _uduKey         :: !(Maybe Text)
    , _uduId          :: !Text
    , _uduOauthToken  :: !(Maybe Text)
    , _uduFields      :: !(Maybe Text)
    , _uduAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDraftsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uduQuotaUser'
--
-- * 'uduPrettyPrint'
--
-- * 'uduUserIp'
--
-- * 'uduUserId'
--
-- * 'uduKey'
--
-- * 'uduId'
--
-- * 'uduOauthToken'
--
-- * 'uduFields'
--
-- * 'uduAlt'
usersDraftsUpdate'
    :: Text -- ^ 'id'
    -> Text
    -> UsersDraftsUpdate'
usersDraftsUpdate' pUduUserId_ pUduId_ =
    UsersDraftsUpdate'
    { _uduQuotaUser = Nothing
    , _uduPrettyPrint = True
    , _uduUserIp = Nothing
    , _uduUserId = pUduUserId_
    , _uduKey = Nothing
    , _uduId = pUduId_
    , _uduOauthToken = Nothing
    , _uduFields = Nothing
    , _uduAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uduQuotaUser :: Lens' UsersDraftsUpdate' (Maybe Text)
uduQuotaUser
  = lens _uduQuotaUser (\ s a -> s{_uduQuotaUser = a})

-- | Returns response with indentations and line breaks.
uduPrettyPrint :: Lens' UsersDraftsUpdate' Bool
uduPrettyPrint
  = lens _uduPrettyPrint
      (\ s a -> s{_uduPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uduUserIp :: Lens' UsersDraftsUpdate' (Maybe Text)
uduUserIp
  = lens _uduUserIp (\ s a -> s{_uduUserIp = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
uduUserId :: Lens' UsersDraftsUpdate' Text
uduUserId
  = lens _uduUserId (\ s a -> s{_uduUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uduKey :: Lens' UsersDraftsUpdate' (Maybe Text)
uduKey = lens _uduKey (\ s a -> s{_uduKey = a})

-- | The ID of the draft to update.
uduId :: Lens' UsersDraftsUpdate' Text
uduId = lens _uduId (\ s a -> s{_uduId = a})

-- | OAuth 2.0 token for the current user.
uduOauthToken :: Lens' UsersDraftsUpdate' (Maybe Text)
uduOauthToken
  = lens _uduOauthToken
      (\ s a -> s{_uduOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
uduFields :: Lens' UsersDraftsUpdate' (Maybe Text)
uduFields
  = lens _uduFields (\ s a -> s{_uduFields = a})

-- | Data format for the response.
uduAlt :: Lens' UsersDraftsUpdate' Alt
uduAlt = lens _uduAlt (\ s a -> s{_uduAlt = a})

instance GoogleRequest UsersDraftsUpdate' where
        type Rs UsersDraftsUpdate' = Draft
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersDraftsUpdate'{..}
          = go _uduQuotaUser (Just _uduPrettyPrint) _uduUserIp
              _uduUserId
              _uduKey
              _uduId
              _uduOauthToken
              _uduFields
              (Just _uduAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersDraftsUpdateResource)
                      r
                      u
