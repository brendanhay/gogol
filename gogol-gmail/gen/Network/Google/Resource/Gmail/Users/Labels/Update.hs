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
    , uluUserIP
    , uluPayload
    , uluUserId
    , uluKey
    , uluId
    , uluOAuthToken
    , uluFields
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
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Label :> Put '[JSON] Label

-- | Updates the specified label.
--
-- /See:/ 'usersLabelsUpdate'' smart constructor.
data UsersLabelsUpdate' = UsersLabelsUpdate'
    { _uluQuotaUser   :: !(Maybe Text)
    , _uluPrettyPrint :: !Bool
    , _uluUserIP      :: !(Maybe Text)
    , _uluPayload     :: !Label
    , _uluUserId      :: !Text
    , _uluKey         :: !(Maybe AuthKey)
    , _uluId          :: !Text
    , _uluOAuthToken  :: !(Maybe OAuthToken)
    , _uluFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersLabelsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uluQuotaUser'
--
-- * 'uluPrettyPrint'
--
-- * 'uluUserIP'
--
-- * 'uluPayload'
--
-- * 'uluUserId'
--
-- * 'uluKey'
--
-- * 'uluId'
--
-- * 'uluOAuthToken'
--
-- * 'uluFields'
usersLabelsUpdate'
    :: Label -- ^ 'payload'
    -> Text -- ^ 'id'
    -> Text
    -> UsersLabelsUpdate'
usersLabelsUpdate' pUluPayload_ pUluUserId_ pUluId_ =
    UsersLabelsUpdate'
    { _uluQuotaUser = Nothing
    , _uluPrettyPrint = True
    , _uluUserIP = Nothing
    , _uluPayload = pUluPayload_
    , _uluUserId = pUluUserId_
    , _uluKey = Nothing
    , _uluId = pUluId_
    , _uluOAuthToken = Nothing
    , _uluFields = Nothing
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
uluUserIP :: Lens' UsersLabelsUpdate' (Maybe Text)
uluUserIP
  = lens _uluUserIP (\ s a -> s{_uluUserIP = a})

-- | Multipart request metadata.
uluPayload :: Lens' UsersLabelsUpdate' Label
uluPayload
  = lens _uluPayload (\ s a -> s{_uluPayload = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
uluUserId :: Lens' UsersLabelsUpdate' Text
uluUserId
  = lens _uluUserId (\ s a -> s{_uluUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uluKey :: Lens' UsersLabelsUpdate' (Maybe AuthKey)
uluKey = lens _uluKey (\ s a -> s{_uluKey = a})

-- | The ID of the label to update.
uluId :: Lens' UsersLabelsUpdate' Text
uluId = lens _uluId (\ s a -> s{_uluId = a})

-- | OAuth 2.0 token for the current user.
uluOAuthToken :: Lens' UsersLabelsUpdate' (Maybe OAuthToken)
uluOAuthToken
  = lens _uluOAuthToken
      (\ s a -> s{_uluOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
uluFields :: Lens' UsersLabelsUpdate' (Maybe Text)
uluFields
  = lens _uluFields (\ s a -> s{_uluFields = a})

instance GoogleAuth UsersLabelsUpdate' where
        authKey = uluKey . _Just
        authToken = uluOAuthToken . _Just

instance GoogleRequest UsersLabelsUpdate' where
        type Rs UsersLabelsUpdate' = Label
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersLabelsUpdate'{..}
          = go _uluUserId _uluId _uluQuotaUser
              (Just _uluPrettyPrint)
              _uluUserIP
              _uluFields
              _uluKey
              _uluOAuthToken
              (Just AltJSON)
              _uluPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersLabelsUpdateResource)
                      r
                      u
