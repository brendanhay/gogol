{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.CloudUserAccounts.Users.AddPublicKey
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds a public key to the specified User resource with the data included
-- in the request.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @CloudUserAccountsUsersAddPublicKey@.
module Network.Google.Resource.CloudUserAccounts.Users.AddPublicKey
    (
    -- * REST Resource
      UsersAddPublicKeyResource

    -- * Creating a Request
    , usersAddPublicKey'
    , UsersAddPublicKey'

    -- * Request Lenses
    , uapkQuotaUser
    , uapkPrettyPrint
    , uapkProject
    , uapkUserIP
    , uapkPayload
    , uapkUser
    , uapkKey
    , uapkOAuthToken
    , uapkFields
    ) where

import           Network.Google.Prelude
import           Network.Google.UserAccounts.Types

-- | A resource alias for @CloudUserAccountsUsersAddPublicKey@ which the
-- 'UsersAddPublicKey'' request conforms to.
type UsersAddPublicKeyResource =
     Capture "project" Text :>
       "global" :>
         "users" :>
           Capture "user" Text :>
             "addPublicKey" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] PublicKey :> Post '[JSON] Operation

-- | Adds a public key to the specified User resource with the data included
-- in the request.
--
-- /See:/ 'usersAddPublicKey'' smart constructor.
data UsersAddPublicKey' = UsersAddPublicKey'
    { _uapkQuotaUser   :: !(Maybe Text)
    , _uapkPrettyPrint :: !Bool
    , _uapkProject     :: !Text
    , _uapkUserIP      :: !(Maybe Text)
    , _uapkPayload     :: !PublicKey
    , _uapkUser        :: !Text
    , _uapkKey         :: !(Maybe Key)
    , _uapkOAuthToken  :: !(Maybe OAuthToken)
    , _uapkFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersAddPublicKey'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uapkQuotaUser'
--
-- * 'uapkPrettyPrint'
--
-- * 'uapkProject'
--
-- * 'uapkUserIP'
--
-- * 'uapkPayload'
--
-- * 'uapkUser'
--
-- * 'uapkKey'
--
-- * 'uapkOAuthToken'
--
-- * 'uapkFields'
usersAddPublicKey'
    :: Text -- ^ 'project'
    -> PublicKey -- ^ 'payload'
    -> Text -- ^ 'user'
    -> UsersAddPublicKey'
usersAddPublicKey' pUapkProject_ pUapkPayload_ pUapkUser_ =
    UsersAddPublicKey'
    { _uapkQuotaUser = Nothing
    , _uapkPrettyPrint = True
    , _uapkProject = pUapkProject_
    , _uapkUserIP = Nothing
    , _uapkPayload = pUapkPayload_
    , _uapkUser = pUapkUser_
    , _uapkKey = Nothing
    , _uapkOAuthToken = Nothing
    , _uapkFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uapkQuotaUser :: Lens' UsersAddPublicKey' (Maybe Text)
uapkQuotaUser
  = lens _uapkQuotaUser
      (\ s a -> s{_uapkQuotaUser = a})

-- | Returns response with indentations and line breaks.
uapkPrettyPrint :: Lens' UsersAddPublicKey' Bool
uapkPrettyPrint
  = lens _uapkPrettyPrint
      (\ s a -> s{_uapkPrettyPrint = a})

-- | Project ID for this request.
uapkProject :: Lens' UsersAddPublicKey' Text
uapkProject
  = lens _uapkProject (\ s a -> s{_uapkProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uapkUserIP :: Lens' UsersAddPublicKey' (Maybe Text)
uapkUserIP
  = lens _uapkUserIP (\ s a -> s{_uapkUserIP = a})

-- | Multipart request metadata.
uapkPayload :: Lens' UsersAddPublicKey' PublicKey
uapkPayload
  = lens _uapkPayload (\ s a -> s{_uapkPayload = a})

-- | Name of the user for this request.
uapkUser :: Lens' UsersAddPublicKey' Text
uapkUser = lens _uapkUser (\ s a -> s{_uapkUser = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uapkKey :: Lens' UsersAddPublicKey' (Maybe Key)
uapkKey = lens _uapkKey (\ s a -> s{_uapkKey = a})

-- | OAuth 2.0 token for the current user.
uapkOAuthToken :: Lens' UsersAddPublicKey' (Maybe OAuthToken)
uapkOAuthToken
  = lens _uapkOAuthToken
      (\ s a -> s{_uapkOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
uapkFields :: Lens' UsersAddPublicKey' (Maybe Text)
uapkFields
  = lens _uapkFields (\ s a -> s{_uapkFields = a})

instance GoogleAuth UsersAddPublicKey' where
        authKey = uapkKey . _Just
        authToken = uapkOAuthToken . _Just

instance GoogleRequest UsersAddPublicKey' where
        type Rs UsersAddPublicKey' = Operation
        request = requestWithRoute defReq userAccountsURL
        requestWithRoute r u UsersAddPublicKey'{..}
          = go _uapkProject _uapkUser _uapkQuotaUser
              (Just _uapkPrettyPrint)
              _uapkUserIP
              _uapkFields
              _uapkKey
              _uapkOAuthToken
              (Just AltJSON)
              _uapkPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersAddPublicKeyResource)
                      r
                      u
