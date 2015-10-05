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
    , ulcPayload
    , ulcUserId
    , ulcKey
    , ulcOAuthToken
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
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Label :> Post '[JSON] Label

-- | Creates a new label.
--
-- /See:/ 'usersLabelsCreate'' smart constructor.
data UsersLabelsCreate' = UsersLabelsCreate'
    { _ulcQuotaUser   :: !(Maybe Text)
    , _ulcPrettyPrint :: !Bool
    , _ulcUserIP      :: !(Maybe Text)
    , _ulcPayload     :: !Label
    , _ulcUserId      :: !Text
    , _ulcKey         :: !(Maybe Key)
    , _ulcOAuthToken  :: !(Maybe OAuthToken)
    , _ulcFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'ulcPayload'
--
-- * 'ulcUserId'
--
-- * 'ulcKey'
--
-- * 'ulcOAuthToken'
--
-- * 'ulcFields'
usersLabelsCreate'
    :: Label -- ^ 'payload'
    -> Text
    -> UsersLabelsCreate'
usersLabelsCreate' pUlcPayload_ pUlcUserId_ =
    UsersLabelsCreate'
    { _ulcQuotaUser = Nothing
    , _ulcPrettyPrint = True
    , _ulcUserIP = Nothing
    , _ulcPayload = pUlcPayload_
    , _ulcUserId = pUlcUserId_
    , _ulcKey = Nothing
    , _ulcOAuthToken = Nothing
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

-- | Multipart request metadata.
ulcPayload :: Lens' UsersLabelsCreate' Label
ulcPayload
  = lens _ulcPayload (\ s a -> s{_ulcPayload = a})

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
          = go _ulcUserId _ulcQuotaUser (Just _ulcPrettyPrint)
              _ulcUserIP
              _ulcFields
              _ulcKey
              _ulcOAuthToken
              (Just AltJSON)
              _ulcPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersLabelsCreateResource)
                      r
                      u
