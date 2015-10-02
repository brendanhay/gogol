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
    , ulcUserIP
    , ulcUserId
    , ulcKey
    , ulcOAuthToken
    , ulcLabel
    , ulcFields
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
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Label :> Post '[JSON] Label

-- | Creates a new label.
--
-- /See:/ 'usersLabelsCreate'' smart constructor.
data UsersLabelsCreate' = UsersLabelsCreate'
    { _ulcQuotaUser   :: !(Maybe Text)
    , _ulcPrettyPrint :: !Bool
    , _ulcUserIP      :: !(Maybe Text)
    , _ulcUserId      :: !Text
    , _ulcKey         :: !(Maybe Key)
    , _ulcOAuthToken  :: !(Maybe OAuthToken)
    , _ulcLabel       :: !Label
    , _ulcFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersLabelsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulcQuotaUser'
--
-- * 'ulcPrettyPrint'
--
-- * 'ulcUserIP'
--
-- * 'ulcUserId'
--
-- * 'ulcKey'
--
-- * 'ulcOAuthToken'
--
-- * 'ulcLabel'
--
-- * 'ulcFields'
usersLabelsCreate'
    :: Text -- ^ 'Label'
    -> Label
    -> UsersLabelsCreate'
usersLabelsCreate' pUlcUserId_ pUlcLabel_ =
    UsersLabelsCreate'
    { _ulcQuotaUser = Nothing
    , _ulcPrettyPrint = True
    , _ulcUserIP = Nothing
    , _ulcUserId = pUlcUserId_
    , _ulcKey = Nothing
    , _ulcOAuthToken = Nothing
    , _ulcLabel = pUlcLabel_
    , _ulcFields = Nothing
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
ulcUserIP :: Lens' UsersLabelsCreate' (Maybe Text)
ulcUserIP
  = lens _ulcUserIP (\ s a -> s{_ulcUserIP = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
ulcUserId :: Lens' UsersLabelsCreate' Text
ulcUserId
  = lens _ulcUserId (\ s a -> s{_ulcUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ulcKey :: Lens' UsersLabelsCreate' (Maybe Key)
ulcKey = lens _ulcKey (\ s a -> s{_ulcKey = a})

-- | OAuth 2.0 token for the current user.
ulcOAuthToken :: Lens' UsersLabelsCreate' (Maybe OAuthToken)
ulcOAuthToken
  = lens _ulcOAuthToken
      (\ s a -> s{_ulcOAuthToken = a})

-- | Multipart request metadata.
ulcLabel :: Lens' UsersLabelsCreate' Label
ulcLabel = lens _ulcLabel (\ s a -> s{_ulcLabel = a})

-- | Selector specifying which fields to include in a partial response.
ulcFields :: Lens' UsersLabelsCreate' (Maybe Text)
ulcFields
  = lens _ulcFields (\ s a -> s{_ulcFields = a})

instance GoogleAuth UsersLabelsCreate' where
        authKey = ulcKey . _Just
        authToken = ulcOAuthToken . _Just

instance GoogleRequest UsersLabelsCreate' where
        type Rs UsersLabelsCreate' = Label
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersLabelsCreate'{..}
          = go _ulcQuotaUser (Just _ulcPrettyPrint) _ulcUserIP
              _ulcUserId
              _ulcKey
              _ulcOAuthToken
              _ulcFields
              (Just AltJSON)
              _ulcLabel
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersLabelsCreateResource)
                      r
                      u
