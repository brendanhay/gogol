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
-- Module      : Network.Google.Resource.Gmail.Users.Labels.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Immediately and permanently deletes the specified label and removes it
-- from any messages and threads that it is applied to.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersLabelsDelete@.
module Network.Google.Resource.Gmail.Users.Labels.Delete
    (
    -- * REST Resource
      UsersLabelsDeleteResource

    -- * Creating a Request
    , usersLabelsDelete'
    , UsersLabelsDelete'

    -- * Request Lenses
    , uldQuotaUser
    , uldPrettyPrint
    , uldUserIP
    , uldUserId
    , uldKey
    , uldId
    , uldOAuthToken
    , uldFields
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersLabelsDelete@ which the
-- 'UsersLabelsDelete'' request conforms to.
type UsersLabelsDeleteResource =
     Capture "userId" Text :>
       "labels" :>
         Capture "id" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Immediately and permanently deletes the specified label and removes it
-- from any messages and threads that it is applied to.
--
-- /See:/ 'usersLabelsDelete'' smart constructor.
data UsersLabelsDelete' = UsersLabelsDelete'
    { _uldQuotaUser   :: !(Maybe Text)
    , _uldPrettyPrint :: !Bool
    , _uldUserIP      :: !(Maybe Text)
    , _uldUserId      :: !Text
    , _uldKey         :: !(Maybe Key)
    , _uldId          :: !Text
    , _uldOAuthToken  :: !(Maybe OAuthToken)
    , _uldFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersLabelsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uldQuotaUser'
--
-- * 'uldPrettyPrint'
--
-- * 'uldUserIP'
--
-- * 'uldUserId'
--
-- * 'uldKey'
--
-- * 'uldId'
--
-- * 'uldOAuthToken'
--
-- * 'uldFields'
usersLabelsDelete'
    :: Text -- ^ 'id'
    -> Text
    -> UsersLabelsDelete'
usersLabelsDelete' pUldUserId_ pUldId_ =
    UsersLabelsDelete'
    { _uldQuotaUser = Nothing
    , _uldPrettyPrint = True
    , _uldUserIP = Nothing
    , _uldUserId = pUldUserId_
    , _uldKey = Nothing
    , _uldId = pUldId_
    , _uldOAuthToken = Nothing
    , _uldFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uldQuotaUser :: Lens' UsersLabelsDelete' (Maybe Text)
uldQuotaUser
  = lens _uldQuotaUser (\ s a -> s{_uldQuotaUser = a})

-- | Returns response with indentations and line breaks.
uldPrettyPrint :: Lens' UsersLabelsDelete' Bool
uldPrettyPrint
  = lens _uldPrettyPrint
      (\ s a -> s{_uldPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uldUserIP :: Lens' UsersLabelsDelete' (Maybe Text)
uldUserIP
  = lens _uldUserIP (\ s a -> s{_uldUserIP = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
uldUserId :: Lens' UsersLabelsDelete' Text
uldUserId
  = lens _uldUserId (\ s a -> s{_uldUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uldKey :: Lens' UsersLabelsDelete' (Maybe Key)
uldKey = lens _uldKey (\ s a -> s{_uldKey = a})

-- | The ID of the label to delete.
uldId :: Lens' UsersLabelsDelete' Text
uldId = lens _uldId (\ s a -> s{_uldId = a})

-- | OAuth 2.0 token for the current user.
uldOAuthToken :: Lens' UsersLabelsDelete' (Maybe OAuthToken)
uldOAuthToken
  = lens _uldOAuthToken
      (\ s a -> s{_uldOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
uldFields :: Lens' UsersLabelsDelete' (Maybe Text)
uldFields
  = lens _uldFields (\ s a -> s{_uldFields = a})

instance GoogleAuth UsersLabelsDelete' where
        authKey = uldKey . _Just
        authToken = uldOAuthToken . _Just

instance GoogleRequest UsersLabelsDelete' where
        type Rs UsersLabelsDelete' = ()
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersLabelsDelete'{..}
          = go _uldQuotaUser (Just _uldPrettyPrint) _uldUserIP
              _uldUserId
              _uldKey
              _uldId
              _uldOAuthToken
              _uldFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersLabelsDeleteResource)
                      r
                      u
