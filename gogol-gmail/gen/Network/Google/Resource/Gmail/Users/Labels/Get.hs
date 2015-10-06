{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

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
    , ulgUserIP
    , ulgUserId
    , ulgKey
    , ulgId
    , ulgOAuthToken
    , ulgFields
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
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Label

-- | Gets the specified label.
--
-- /See:/ 'usersLabelsGet'' smart constructor.
data UsersLabelsGet' = UsersLabelsGet'
    { _ulgQuotaUser   :: !(Maybe Text)
    , _ulgPrettyPrint :: !Bool
    , _ulgUserIP      :: !(Maybe Text)
    , _ulgUserId      :: !Text
    , _ulgKey         :: !(Maybe AuthKey)
    , _ulgId          :: !Text
    , _ulgOAuthToken  :: !(Maybe OAuthToken)
    , _ulgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersLabelsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulgQuotaUser'
--
-- * 'ulgPrettyPrint'
--
-- * 'ulgUserIP'
--
-- * 'ulgUserId'
--
-- * 'ulgKey'
--
-- * 'ulgId'
--
-- * 'ulgOAuthToken'
--
-- * 'ulgFields'
usersLabelsGet'
    :: Text -- ^ 'id'
    -> Text
    -> UsersLabelsGet'
usersLabelsGet' pUlgUserId_ pUlgId_ =
    UsersLabelsGet'
    { _ulgQuotaUser = Nothing
    , _ulgPrettyPrint = True
    , _ulgUserIP = Nothing
    , _ulgUserId = pUlgUserId_
    , _ulgKey = Nothing
    , _ulgId = pUlgId_
    , _ulgOAuthToken = Nothing
    , _ulgFields = Nothing
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
ulgUserIP :: Lens' UsersLabelsGet' (Maybe Text)
ulgUserIP
  = lens _ulgUserIP (\ s a -> s{_ulgUserIP = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
ulgUserId :: Lens' UsersLabelsGet' Text
ulgUserId
  = lens _ulgUserId (\ s a -> s{_ulgUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ulgKey :: Lens' UsersLabelsGet' (Maybe AuthKey)
ulgKey = lens _ulgKey (\ s a -> s{_ulgKey = a})

-- | The ID of the label to retrieve.
ulgId :: Lens' UsersLabelsGet' Text
ulgId = lens _ulgId (\ s a -> s{_ulgId = a})

-- | OAuth 2.0 token for the current user.
ulgOAuthToken :: Lens' UsersLabelsGet' (Maybe OAuthToken)
ulgOAuthToken
  = lens _ulgOAuthToken
      (\ s a -> s{_ulgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ulgFields :: Lens' UsersLabelsGet' (Maybe Text)
ulgFields
  = lens _ulgFields (\ s a -> s{_ulgFields = a})

instance GoogleAuth UsersLabelsGet' where
        authKey = ulgKey . _Just
        authToken = ulgOAuthToken . _Just

instance GoogleRequest UsersLabelsGet' where
        type Rs UsersLabelsGet' = Label
        request = requestWith gmailRequest
        requestWith rq UsersLabelsGet'{..}
          = go _ulgUserId _ulgId _ulgQuotaUser
              (Just _ulgPrettyPrint)
              _ulgUserIP
              _ulgFields
              _ulgKey
              _ulgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy UsersLabelsGetResource)
                      rq
