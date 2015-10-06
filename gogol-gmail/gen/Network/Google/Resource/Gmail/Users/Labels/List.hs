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
    , ullUserIP
    , ullUserId
    , ullKey
    , ullOAuthToken
    , ullFields
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
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] ListLabelsResponse

-- | Lists all labels in the user\'s mailbox.
--
-- /See:/ 'usersLabelsList'' smart constructor.
data UsersLabelsList' = UsersLabelsList'
    { _ullQuotaUser   :: !(Maybe Text)
    , _ullPrettyPrint :: !Bool
    , _ullUserIP      :: !(Maybe Text)
    , _ullUserId      :: !Text
    , _ullKey         :: !(Maybe AuthKey)
    , _ullOAuthToken  :: !(Maybe OAuthToken)
    , _ullFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersLabelsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ullQuotaUser'
--
-- * 'ullPrettyPrint'
--
-- * 'ullUserIP'
--
-- * 'ullUserId'
--
-- * 'ullKey'
--
-- * 'ullOAuthToken'
--
-- * 'ullFields'
usersLabelsList'
    :: Text
    -> UsersLabelsList'
usersLabelsList' pUllUserId_ =
    UsersLabelsList'
    { _ullQuotaUser = Nothing
    , _ullPrettyPrint = True
    , _ullUserIP = Nothing
    , _ullUserId = pUllUserId_
    , _ullKey = Nothing
    , _ullOAuthToken = Nothing
    , _ullFields = Nothing
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
ullUserIP :: Lens' UsersLabelsList' (Maybe Text)
ullUserIP
  = lens _ullUserIP (\ s a -> s{_ullUserIP = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
ullUserId :: Lens' UsersLabelsList' Text
ullUserId
  = lens _ullUserId (\ s a -> s{_ullUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ullKey :: Lens' UsersLabelsList' (Maybe AuthKey)
ullKey = lens _ullKey (\ s a -> s{_ullKey = a})

-- | OAuth 2.0 token for the current user.
ullOAuthToken :: Lens' UsersLabelsList' (Maybe OAuthToken)
ullOAuthToken
  = lens _ullOAuthToken
      (\ s a -> s{_ullOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ullFields :: Lens' UsersLabelsList' (Maybe Text)
ullFields
  = lens _ullFields (\ s a -> s{_ullFields = a})

instance GoogleAuth UsersLabelsList' where
        authKey = ullKey . _Just
        authToken = ullOAuthToken . _Just

instance GoogleRequest UsersLabelsList' where
        type Rs UsersLabelsList' = ListLabelsResponse
        request = requestWith gmailRequest
        requestWith rq UsersLabelsList'{..}
          = go _ullUserId _ullQuotaUser (Just _ullPrettyPrint)
              _ullUserIP
              _ullFields
              _ullKey
              _ullOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy UsersLabelsListResource)
                      rq
