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
-- Module      : Network.Google.Resource.Directory.Users.Aliases.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Add a alias for the user
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryUsersAliasesInsert@.
module Network.Google.Resource.Directory.Users.Aliases.Insert
    (
    -- * REST Resource
      UsersAliasesInsertResource

    -- * Creating a Request
    , usersAliasesInsert'
    , UsersAliasesInsert'

    -- * Request Lenses
    , uaiQuotaUser
    , uaiPrettyPrint
    , uaiUserIP
    , uaiPayload
    , uaiKey
    , uaiOAuthToken
    , uaiUserKey
    , uaiFields
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryUsersAliasesInsert@ which the
-- 'UsersAliasesInsert'' request conforms to.
type UsersAliasesInsertResource =
     "users" :>
       Capture "userKey" Text :>
         "aliases" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Alias :> Post '[JSON] Alias

-- | Add a alias for the user
--
-- /See:/ 'usersAliasesInsert'' smart constructor.
data UsersAliasesInsert' = UsersAliasesInsert'
    { _uaiQuotaUser   :: !(Maybe Text)
    , _uaiPrettyPrint :: !Bool
    , _uaiUserIP      :: !(Maybe Text)
    , _uaiPayload     :: !Alias
    , _uaiKey         :: !(Maybe AuthKey)
    , _uaiOAuthToken  :: !(Maybe OAuthToken)
    , _uaiUserKey     :: !Text
    , _uaiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersAliasesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uaiQuotaUser'
--
-- * 'uaiPrettyPrint'
--
-- * 'uaiUserIP'
--
-- * 'uaiPayload'
--
-- * 'uaiKey'
--
-- * 'uaiOAuthToken'
--
-- * 'uaiUserKey'
--
-- * 'uaiFields'
usersAliasesInsert'
    :: Alias -- ^ 'payload'
    -> Text -- ^ 'userKey'
    -> UsersAliasesInsert'
usersAliasesInsert' pUaiPayload_ pUaiUserKey_ =
    UsersAliasesInsert'
    { _uaiQuotaUser = Nothing
    , _uaiPrettyPrint = True
    , _uaiUserIP = Nothing
    , _uaiPayload = pUaiPayload_
    , _uaiKey = Nothing
    , _uaiOAuthToken = Nothing
    , _uaiUserKey = pUaiUserKey_
    , _uaiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uaiQuotaUser :: Lens' UsersAliasesInsert' (Maybe Text)
uaiQuotaUser
  = lens _uaiQuotaUser (\ s a -> s{_uaiQuotaUser = a})

-- | Returns response with indentations and line breaks.
uaiPrettyPrint :: Lens' UsersAliasesInsert' Bool
uaiPrettyPrint
  = lens _uaiPrettyPrint
      (\ s a -> s{_uaiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uaiUserIP :: Lens' UsersAliasesInsert' (Maybe Text)
uaiUserIP
  = lens _uaiUserIP (\ s a -> s{_uaiUserIP = a})

-- | Multipart request metadata.
uaiPayload :: Lens' UsersAliasesInsert' Alias
uaiPayload
  = lens _uaiPayload (\ s a -> s{_uaiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uaiKey :: Lens' UsersAliasesInsert' (Maybe AuthKey)
uaiKey = lens _uaiKey (\ s a -> s{_uaiKey = a})

-- | OAuth 2.0 token for the current user.
uaiOAuthToken :: Lens' UsersAliasesInsert' (Maybe OAuthToken)
uaiOAuthToken
  = lens _uaiOAuthToken
      (\ s a -> s{_uaiOAuthToken = a})

-- | Email or immutable Id of the user
uaiUserKey :: Lens' UsersAliasesInsert' Text
uaiUserKey
  = lens _uaiUserKey (\ s a -> s{_uaiUserKey = a})

-- | Selector specifying which fields to include in a partial response.
uaiFields :: Lens' UsersAliasesInsert' (Maybe Text)
uaiFields
  = lens _uaiFields (\ s a -> s{_uaiFields = a})

instance GoogleAuth UsersAliasesInsert' where
        authKey = uaiKey . _Just
        authToken = uaiOAuthToken . _Just

instance GoogleRequest UsersAliasesInsert' where
        type Rs UsersAliasesInsert' = Alias
        request = requestWith directoryRequest
        requestWith rq UsersAliasesInsert'{..}
          = go _uaiUserKey _uaiQuotaUser (Just _uaiPrettyPrint)
              _uaiUserIP
              _uaiFields
              _uaiKey
              _uaiOAuthToken
              (Just AltJSON)
              _uaiPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy UsersAliasesInsertResource)
                      rq
