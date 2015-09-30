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
-- Module      : Network.Google.Resource.Gmail.Users.Labels.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the specified label.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersLabelsUpdate@.
module Network.Google.Resource.Gmail.Users.Labels.Update
    (
    -- * REST Resource
      UsersLabelsUpdateResource

    -- * Creating a Request
    , usersLabelsUpdate'
    , UsersLabelsUpdate'

    -- * Request Lenses
    , uluQuotaUser
    , uluPrettyPrint
    , uluUserIp
    , uluUserId
    , uluKey
    , uluId
    , uluOauthToken
    , uluFields
    , uluAlt
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersLabelsUpdate@ which the
-- 'UsersLabelsUpdate'' request conforms to.
type UsersLabelsUpdateResource =
     Capture "userId" Text :>
       "labels" :>
         Capture "id" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Put '[JSON] Label

-- | Updates the specified label.
--
-- /See:/ 'usersLabelsUpdate'' smart constructor.
data UsersLabelsUpdate' = UsersLabelsUpdate'
    { _uluQuotaUser   :: !(Maybe Text)
    , _uluPrettyPrint :: !Bool
    , _uluUserIp      :: !(Maybe Text)
    , _uluUserId      :: !Text
    , _uluKey         :: !(Maybe Text)
    , _uluId          :: !Text
    , _uluOauthToken  :: !(Maybe Text)
    , _uluFields      :: !(Maybe Text)
    , _uluAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersLabelsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uluQuotaUser'
--
-- * 'uluPrettyPrint'
--
-- * 'uluUserIp'
--
-- * 'uluUserId'
--
-- * 'uluKey'
--
-- * 'uluId'
--
-- * 'uluOauthToken'
--
-- * 'uluFields'
--
-- * 'uluAlt'
usersLabelsUpdate'
    :: Text -- ^ 'id'
    -> Text
    -> UsersLabelsUpdate'
usersLabelsUpdate' pUluUserId_ pUluId_ =
    UsersLabelsUpdate'
    { _uluQuotaUser = Nothing
    , _uluPrettyPrint = True
    , _uluUserIp = Nothing
    , _uluUserId = pUluUserId_
    , _uluKey = Nothing
    , _uluId = pUluId_
    , _uluOauthToken = Nothing
    , _uluFields = Nothing
    , _uluAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uluQuotaUser :: Lens' UsersLabelsUpdate' (Maybe Text)
uluQuotaUser
  = lens _uluQuotaUser (\ s a -> s{_uluQuotaUser = a})

-- | Returns response with indentations and line breaks.
uluPrettyPrint :: Lens' UsersLabelsUpdate' Bool
uluPrettyPrint
  = lens _uluPrettyPrint
      (\ s a -> s{_uluPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uluUserIp :: Lens' UsersLabelsUpdate' (Maybe Text)
uluUserIp
  = lens _uluUserIp (\ s a -> s{_uluUserIp = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
uluUserId :: Lens' UsersLabelsUpdate' Text
uluUserId
  = lens _uluUserId (\ s a -> s{_uluUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uluKey :: Lens' UsersLabelsUpdate' (Maybe Text)
uluKey = lens _uluKey (\ s a -> s{_uluKey = a})

-- | The ID of the label to update.
uluId :: Lens' UsersLabelsUpdate' Text
uluId = lens _uluId (\ s a -> s{_uluId = a})

-- | OAuth 2.0 token for the current user.
uluOauthToken :: Lens' UsersLabelsUpdate' (Maybe Text)
uluOauthToken
  = lens _uluOauthToken
      (\ s a -> s{_uluOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
uluFields :: Lens' UsersLabelsUpdate' (Maybe Text)
uluFields
  = lens _uluFields (\ s a -> s{_uluFields = a})

-- | Data format for the response.
uluAlt :: Lens' UsersLabelsUpdate' Alt
uluAlt = lens _uluAlt (\ s a -> s{_uluAlt = a})

instance GoogleRequest UsersLabelsUpdate' where
        type Rs UsersLabelsUpdate' = Label
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersLabelsUpdate'{..}
          = go _uluQuotaUser (Just _uluPrettyPrint) _uluUserIp
              _uluUserId
              _uluKey
              _uluId
              _uluOauthToken
              _uluFields
              (Just _uluAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersLabelsUpdateResource)
                      r
                      u
