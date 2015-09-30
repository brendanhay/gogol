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
-- Module      : Network.Google.Resource.Gmail.Users.Labels.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new label.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersLabelsCreate@.
module Network.Google.Resource.Gmail.Users.Labels.Create
    (
    -- * REST Resource
      UsersLabelsCreateResource

    -- * Creating a Request
    , usersLabelsCreate'
    , UsersLabelsCreate'

    -- * Request Lenses
    , ulcQuotaUser
    , ulcPrettyPrint
    , ulcUserIp
    , ulcUserId
    , ulcKey
    , ulcOauthToken
    , ulcFields
    , ulcAlt
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersLabelsCreate@ which the
-- 'UsersLabelsCreate'' request conforms to.
type UsersLabelsCreateResource =
     Capture "userId" Text :>
       "labels" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Post '[JSON] Label

-- | Creates a new label.
--
-- /See:/ 'usersLabelsCreate'' smart constructor.
data UsersLabelsCreate' = UsersLabelsCreate'
    { _ulcQuotaUser   :: !(Maybe Text)
    , _ulcPrettyPrint :: !Bool
    , _ulcUserIp      :: !(Maybe Text)
    , _ulcUserId      :: !Text
    , _ulcKey         :: !(Maybe Text)
    , _ulcOauthToken  :: !(Maybe Text)
    , _ulcFields      :: !(Maybe Text)
    , _ulcAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersLabelsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulcQuotaUser'
--
-- * 'ulcPrettyPrint'
--
-- * 'ulcUserIp'
--
-- * 'ulcUserId'
--
-- * 'ulcKey'
--
-- * 'ulcOauthToken'
--
-- * 'ulcFields'
--
-- * 'ulcAlt'
usersLabelsCreate'
    :: Text
    -> UsersLabelsCreate'
usersLabelsCreate' pUlcUserId_ =
    UsersLabelsCreate'
    { _ulcQuotaUser = Nothing
    , _ulcPrettyPrint = True
    , _ulcUserIp = Nothing
    , _ulcUserId = pUlcUserId_
    , _ulcKey = Nothing
    , _ulcOauthToken = Nothing
    , _ulcFields = Nothing
    , _ulcAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ulcQuotaUser :: Lens' UsersLabelsCreate' (Maybe Text)
ulcQuotaUser
  = lens _ulcQuotaUser (\ s a -> s{_ulcQuotaUser = a})

-- | Returns response with indentations and line breaks.
ulcPrettyPrint :: Lens' UsersLabelsCreate' Bool
ulcPrettyPrint
  = lens _ulcPrettyPrint
      (\ s a -> s{_ulcPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ulcUserIp :: Lens' UsersLabelsCreate' (Maybe Text)
ulcUserIp
  = lens _ulcUserIp (\ s a -> s{_ulcUserIp = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
ulcUserId :: Lens' UsersLabelsCreate' Text
ulcUserId
  = lens _ulcUserId (\ s a -> s{_ulcUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ulcKey :: Lens' UsersLabelsCreate' (Maybe Text)
ulcKey = lens _ulcKey (\ s a -> s{_ulcKey = a})

-- | OAuth 2.0 token for the current user.
ulcOauthToken :: Lens' UsersLabelsCreate' (Maybe Text)
ulcOauthToken
  = lens _ulcOauthToken
      (\ s a -> s{_ulcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ulcFields :: Lens' UsersLabelsCreate' (Maybe Text)
ulcFields
  = lens _ulcFields (\ s a -> s{_ulcFields = a})

-- | Data format for the response.
ulcAlt :: Lens' UsersLabelsCreate' Alt
ulcAlt = lens _ulcAlt (\ s a -> s{_ulcAlt = a})

instance GoogleRequest UsersLabelsCreate' where
        type Rs UsersLabelsCreate' = Label
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersLabelsCreate'{..}
          = go _ulcQuotaUser (Just _ulcPrettyPrint) _ulcUserIp
              _ulcUserId
              _ulcKey
              _ulcOauthToken
              _ulcFields
              (Just _ulcAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersLabelsCreateResource)
                      r
                      u
