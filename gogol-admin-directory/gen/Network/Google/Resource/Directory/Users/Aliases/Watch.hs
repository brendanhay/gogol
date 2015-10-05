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
-- Module      : Network.Google.Resource.Directory.Users.Aliases.Watch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Watch for changes in user aliases list
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryUsersAliasesWatch@.
module Network.Google.Resource.Directory.Users.Aliases.Watch
    (
    -- * REST Resource
      UsersAliasesWatchResource

    -- * Creating a Request
    , usersAliasesWatch'
    , UsersAliasesWatch'

    -- * Request Lenses
    , uawEvent
    , uawQuotaUser
    , uawPrettyPrint
    , uawUserIP
    , uawPayload
    , uawKey
    , uawOAuthToken
    , uawUserKey
    , uawFields
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryUsersAliasesWatch@ which the
-- 'UsersAliasesWatch'' request conforms to.
type UsersAliasesWatchResource =
     "users" :>
       Capture "userKey" Text :>
         "aliases" :>
           "watch" :>
             QueryParam "event" UsersAliasesWatchEvent :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Channel :> Post '[JSON] Channel

-- | Watch for changes in user aliases list
--
-- /See:/ 'usersAliasesWatch'' smart constructor.
data UsersAliasesWatch' = UsersAliasesWatch'
    { _uawEvent       :: !(Maybe UsersAliasesWatchEvent)
    , _uawQuotaUser   :: !(Maybe Text)
    , _uawPrettyPrint :: !Bool
    , _uawUserIP      :: !(Maybe Text)
    , _uawPayload     :: !Channel
    , _uawKey         :: !(Maybe Key)
    , _uawOAuthToken  :: !(Maybe OAuthToken)
    , _uawUserKey     :: !Text
    , _uawFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersAliasesWatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uawEvent'
--
-- * 'uawQuotaUser'
--
-- * 'uawPrettyPrint'
--
-- * 'uawUserIP'
--
-- * 'uawPayload'
--
-- * 'uawKey'
--
-- * 'uawOAuthToken'
--
-- * 'uawUserKey'
--
-- * 'uawFields'
usersAliasesWatch'
    :: Channel -- ^ 'payload'
    -> Text -- ^ 'userKey'
    -> UsersAliasesWatch'
usersAliasesWatch' pUawPayload_ pUawUserKey_ =
    UsersAliasesWatch'
    { _uawEvent = Nothing
    , _uawQuotaUser = Nothing
    , _uawPrettyPrint = True
    , _uawUserIP = Nothing
    , _uawPayload = pUawPayload_
    , _uawKey = Nothing
    , _uawOAuthToken = Nothing
    , _uawUserKey = pUawUserKey_
    , _uawFields = Nothing
    }

-- | Event on which subscription is intended (if subscribing)
uawEvent :: Lens' UsersAliasesWatch' (Maybe UsersAliasesWatchEvent)
uawEvent = lens _uawEvent (\ s a -> s{_uawEvent = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uawQuotaUser :: Lens' UsersAliasesWatch' (Maybe Text)
uawQuotaUser
  = lens _uawQuotaUser (\ s a -> s{_uawQuotaUser = a})

-- | Returns response with indentations and line breaks.
uawPrettyPrint :: Lens' UsersAliasesWatch' Bool
uawPrettyPrint
  = lens _uawPrettyPrint
      (\ s a -> s{_uawPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uawUserIP :: Lens' UsersAliasesWatch' (Maybe Text)
uawUserIP
  = lens _uawUserIP (\ s a -> s{_uawUserIP = a})

-- | Multipart request metadata.
uawPayload :: Lens' UsersAliasesWatch' Channel
uawPayload
  = lens _uawPayload (\ s a -> s{_uawPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uawKey :: Lens' UsersAliasesWatch' (Maybe Key)
uawKey = lens _uawKey (\ s a -> s{_uawKey = a})

-- | OAuth 2.0 token for the current user.
uawOAuthToken :: Lens' UsersAliasesWatch' (Maybe OAuthToken)
uawOAuthToken
  = lens _uawOAuthToken
      (\ s a -> s{_uawOAuthToken = a})

-- | Email or immutable Id of the user
uawUserKey :: Lens' UsersAliasesWatch' Text
uawUserKey
  = lens _uawUserKey (\ s a -> s{_uawUserKey = a})

-- | Selector specifying which fields to include in a partial response.
uawFields :: Lens' UsersAliasesWatch' (Maybe Text)
uawFields
  = lens _uawFields (\ s a -> s{_uawFields = a})

instance GoogleAuth UsersAliasesWatch' where
        authKey = uawKey . _Just
        authToken = uawOAuthToken . _Just

instance GoogleRequest UsersAliasesWatch' where
        type Rs UsersAliasesWatch' = Channel
        request = requestWithRoute defReq directoryURL
        requestWithRoute r u UsersAliasesWatch'{..}
          = go _uawUserKey _uawEvent _uawQuotaUser
              (Just _uawPrettyPrint)
              _uawUserIP
              _uawFields
              _uawKey
              _uawOAuthToken
              (Just AltJSON)
              _uawPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersAliasesWatchResource)
                      r
                      u
