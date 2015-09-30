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
-- Module      : Network.Google.Resource.Gmail.Users.Labels.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all labels in the user\'s mailbox.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersLabelsList@.
module Network.Google.Resource.Gmail.Users.Labels.List
    (
    -- * REST Resource
      UsersLabelsListResource

    -- * Creating a Request
    , usersLabelsList'
    , UsersLabelsList'

    -- * Request Lenses
    , ullQuotaUser
    , ullPrettyPrint
    , ullUserIp
    , ullUserId
    , ullKey
    , ullOauthToken
    , ullFields
    , ullAlt
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersLabelsList@ which the
-- 'UsersLabelsList'' request conforms to.
type UsersLabelsListResource =
     Capture "userId" Text :>
       "labels" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :>
                       Get '[JSON] ListLabelsResponse

-- | Lists all labels in the user\'s mailbox.
--
-- /See:/ 'usersLabelsList'' smart constructor.
data UsersLabelsList' = UsersLabelsList'
    { _ullQuotaUser   :: !(Maybe Text)
    , _ullPrettyPrint :: !Bool
    , _ullUserIp      :: !(Maybe Text)
    , _ullUserId      :: !Text
    , _ullKey         :: !(Maybe Text)
    , _ullOauthToken  :: !(Maybe Text)
    , _ullFields      :: !(Maybe Text)
    , _ullAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersLabelsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ullQuotaUser'
--
-- * 'ullPrettyPrint'
--
-- * 'ullUserIp'
--
-- * 'ullUserId'
--
-- * 'ullKey'
--
-- * 'ullOauthToken'
--
-- * 'ullFields'
--
-- * 'ullAlt'
usersLabelsList'
    :: Text
    -> UsersLabelsList'
usersLabelsList' pUllUserId_ =
    UsersLabelsList'
    { _ullQuotaUser = Nothing
    , _ullPrettyPrint = True
    , _ullUserIp = Nothing
    , _ullUserId = pUllUserId_
    , _ullKey = Nothing
    , _ullOauthToken = Nothing
    , _ullFields = Nothing
    , _ullAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ullQuotaUser :: Lens' UsersLabelsList' (Maybe Text)
ullQuotaUser
  = lens _ullQuotaUser (\ s a -> s{_ullQuotaUser = a})

-- | Returns response with indentations and line breaks.
ullPrettyPrint :: Lens' UsersLabelsList' Bool
ullPrettyPrint
  = lens _ullPrettyPrint
      (\ s a -> s{_ullPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ullUserIp :: Lens' UsersLabelsList' (Maybe Text)
ullUserIp
  = lens _ullUserIp (\ s a -> s{_ullUserIp = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
ullUserId :: Lens' UsersLabelsList' Text
ullUserId
  = lens _ullUserId (\ s a -> s{_ullUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ullKey :: Lens' UsersLabelsList' (Maybe Text)
ullKey = lens _ullKey (\ s a -> s{_ullKey = a})

-- | OAuth 2.0 token for the current user.
ullOauthToken :: Lens' UsersLabelsList' (Maybe Text)
ullOauthToken
  = lens _ullOauthToken
      (\ s a -> s{_ullOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ullFields :: Lens' UsersLabelsList' (Maybe Text)
ullFields
  = lens _ullFields (\ s a -> s{_ullFields = a})

-- | Data format for the response.
ullAlt :: Lens' UsersLabelsList' Alt
ullAlt = lens _ullAlt (\ s a -> s{_ullAlt = a})

instance GoogleRequest UsersLabelsList' where
        type Rs UsersLabelsList' = ListLabelsResponse
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersLabelsList'{..}
          = go _ullQuotaUser (Just _ullPrettyPrint) _ullUserIp
              _ullUserId
              _ullKey
              _ullOauthToken
              _ullFields
              (Just _ullAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersLabelsListResource)
                      r
                      u
