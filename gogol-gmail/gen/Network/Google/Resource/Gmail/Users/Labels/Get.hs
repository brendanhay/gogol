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
-- Module      : Network.Google.Resource.Gmail.Users.Labels.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the specified label.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersLabelsGet@.
module Network.Google.Resource.Gmail.Users.Labels.Get
    (
    -- * REST Resource
      UsersLabelsGetResource

    -- * Creating a Request
    , usersLabelsGet'
    , UsersLabelsGet'

    -- * Request Lenses
    , ulgQuotaUser
    , ulgPrettyPrint
    , ulgUserIp
    , ulgUserId
    , ulgKey
    , ulgId
    , ulgOauthToken
    , ulgFields
    , ulgAlt
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersLabelsGet@ which the
-- 'UsersLabelsGet'' request conforms to.
type UsersLabelsGetResource =
     Capture "userId" Text :>
       "labels" :>
         Capture "id" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Get '[JSON] Label

-- | Gets the specified label.
--
-- /See:/ 'usersLabelsGet'' smart constructor.
data UsersLabelsGet' = UsersLabelsGet'
    { _ulgQuotaUser   :: !(Maybe Text)
    , _ulgPrettyPrint :: !Bool
    , _ulgUserIp      :: !(Maybe Text)
    , _ulgUserId      :: !Text
    , _ulgKey         :: !(Maybe Text)
    , _ulgId          :: !Text
    , _ulgOauthToken  :: !(Maybe Text)
    , _ulgFields      :: !(Maybe Text)
    , _ulgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersLabelsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulgQuotaUser'
--
-- * 'ulgPrettyPrint'
--
-- * 'ulgUserIp'
--
-- * 'ulgUserId'
--
-- * 'ulgKey'
--
-- * 'ulgId'
--
-- * 'ulgOauthToken'
--
-- * 'ulgFields'
--
-- * 'ulgAlt'
usersLabelsGet'
    :: Text -- ^ 'id'
    -> Text
    -> UsersLabelsGet'
usersLabelsGet' pUlgUserId_ pUlgId_ =
    UsersLabelsGet'
    { _ulgQuotaUser = Nothing
    , _ulgPrettyPrint = True
    , _ulgUserIp = Nothing
    , _ulgUserId = pUlgUserId_
    , _ulgKey = Nothing
    , _ulgId = pUlgId_
    , _ulgOauthToken = Nothing
    , _ulgFields = Nothing
    , _ulgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ulgQuotaUser :: Lens' UsersLabelsGet' (Maybe Text)
ulgQuotaUser
  = lens _ulgQuotaUser (\ s a -> s{_ulgQuotaUser = a})

-- | Returns response with indentations and line breaks.
ulgPrettyPrint :: Lens' UsersLabelsGet' Bool
ulgPrettyPrint
  = lens _ulgPrettyPrint
      (\ s a -> s{_ulgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ulgUserIp :: Lens' UsersLabelsGet' (Maybe Text)
ulgUserIp
  = lens _ulgUserIp (\ s a -> s{_ulgUserIp = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
ulgUserId :: Lens' UsersLabelsGet' Text
ulgUserId
  = lens _ulgUserId (\ s a -> s{_ulgUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ulgKey :: Lens' UsersLabelsGet' (Maybe Text)
ulgKey = lens _ulgKey (\ s a -> s{_ulgKey = a})

-- | The ID of the label to retrieve.
ulgId :: Lens' UsersLabelsGet' Text
ulgId = lens _ulgId (\ s a -> s{_ulgId = a})

-- | OAuth 2.0 token for the current user.
ulgOauthToken :: Lens' UsersLabelsGet' (Maybe Text)
ulgOauthToken
  = lens _ulgOauthToken
      (\ s a -> s{_ulgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ulgFields :: Lens' UsersLabelsGet' (Maybe Text)
ulgFields
  = lens _ulgFields (\ s a -> s{_ulgFields = a})

-- | Data format for the response.
ulgAlt :: Lens' UsersLabelsGet' Alt
ulgAlt = lens _ulgAlt (\ s a -> s{_ulgAlt = a})

instance GoogleRequest UsersLabelsGet' where
        type Rs UsersLabelsGet' = Label
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersLabelsGet'{..}
          = go _ulgQuotaUser (Just _ulgPrettyPrint) _ulgUserIp
              _ulgUserId
              _ulgKey
              _ulgId
              _ulgOauthToken
              _ulgFields
              (Just _ulgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersLabelsGetResource)
                      r
                      u
