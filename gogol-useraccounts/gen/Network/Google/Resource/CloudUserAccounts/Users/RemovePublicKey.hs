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
-- Module      : Network.Google.Resource.CloudUserAccounts.Users.RemovePublicKey
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Removes the specified public key from the user.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @CloudUserAccountsUsersRemovePublicKey@.
module Network.Google.Resource.CloudUserAccounts.Users.RemovePublicKey
    (
    -- * REST Resource
      UsersRemovePublicKeyResource

    -- * Creating a Request
    , usersRemovePublicKey'
    , UsersRemovePublicKey'

    -- * Request Lenses
    , urpkQuotaUser
    , urpkPrettyPrint
    , urpkProject
    , urpkUserIP
    , urpkFingerprint
    , urpkUser
    , urpkKey
    , urpkOAuthToken
    , urpkFields
    ) where

import           Network.Google.Prelude
import           Network.Google.UserAccounts.Types

-- | A resource alias for @CloudUserAccountsUsersRemovePublicKey@ which the
-- 'UsersRemovePublicKey'' request conforms to.
type UsersRemovePublicKeyResource =
     Capture "project" Text :>
       "global" :>
         "users" :>
           Capture "user" Text :>
             "removePublicKey" :>
               QueryParam "fingerprint" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Removes the specified public key from the user.
--
-- /See:/ 'usersRemovePublicKey'' smart constructor.
data UsersRemovePublicKey' = UsersRemovePublicKey'
    { _urpkQuotaUser   :: !(Maybe Text)
    , _urpkPrettyPrint :: !Bool
    , _urpkProject     :: !Text
    , _urpkUserIP      :: !(Maybe Text)
    , _urpkFingerprint :: !Text
    , _urpkUser        :: !Text
    , _urpkKey         :: !(Maybe Key)
    , _urpkOAuthToken  :: !(Maybe OAuthToken)
    , _urpkFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersRemovePublicKey'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urpkQuotaUser'
--
-- * 'urpkPrettyPrint'
--
-- * 'urpkProject'
--
-- * 'urpkUserIP'
--
-- * 'urpkFingerprint'
--
-- * 'urpkUser'
--
-- * 'urpkKey'
--
-- * 'urpkOAuthToken'
--
-- * 'urpkFields'
usersRemovePublicKey'
    :: Text -- ^ 'project'
    -> Text -- ^ 'fingerprint'
    -> Text -- ^ 'user'
    -> UsersRemovePublicKey'
usersRemovePublicKey' pUrpkProject_ pUrpkFingerprint_ pUrpkUser_ =
    UsersRemovePublicKey'
    { _urpkQuotaUser = Nothing
    , _urpkPrettyPrint = True
    , _urpkProject = pUrpkProject_
    , _urpkUserIP = Nothing
    , _urpkFingerprint = pUrpkFingerprint_
    , _urpkUser = pUrpkUser_
    , _urpkKey = Nothing
    , _urpkOAuthToken = Nothing
    , _urpkFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
urpkQuotaUser :: Lens' UsersRemovePublicKey' (Maybe Text)
urpkQuotaUser
  = lens _urpkQuotaUser
      (\ s a -> s{_urpkQuotaUser = a})

-- | Returns response with indentations and line breaks.
urpkPrettyPrint :: Lens' UsersRemovePublicKey' Bool
urpkPrettyPrint
  = lens _urpkPrettyPrint
      (\ s a -> s{_urpkPrettyPrint = a})

-- | Project ID for this request.
urpkProject :: Lens' UsersRemovePublicKey' Text
urpkProject
  = lens _urpkProject (\ s a -> s{_urpkProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
urpkUserIP :: Lens' UsersRemovePublicKey' (Maybe Text)
urpkUserIP
  = lens _urpkUserIP (\ s a -> s{_urpkUserIP = a})

-- | The fingerprint of the public key to delete. Public keys are identified
-- by their fingerprint, which is defined by RFC4716 to be the MD5 digest
-- of the public key.
urpkFingerprint :: Lens' UsersRemovePublicKey' Text
urpkFingerprint
  = lens _urpkFingerprint
      (\ s a -> s{_urpkFingerprint = a})

-- | Name of the user for this request.
urpkUser :: Lens' UsersRemovePublicKey' Text
urpkUser = lens _urpkUser (\ s a -> s{_urpkUser = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
urpkKey :: Lens' UsersRemovePublicKey' (Maybe Key)
urpkKey = lens _urpkKey (\ s a -> s{_urpkKey = a})

-- | OAuth 2.0 token for the current user.
urpkOAuthToken :: Lens' UsersRemovePublicKey' (Maybe OAuthToken)
urpkOAuthToken
  = lens _urpkOAuthToken
      (\ s a -> s{_urpkOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
urpkFields :: Lens' UsersRemovePublicKey' (Maybe Text)
urpkFields
  = lens _urpkFields (\ s a -> s{_urpkFields = a})

instance GoogleAuth UsersRemovePublicKey' where
        authKey = urpkKey . _Just
        authToken = urpkOAuthToken . _Just

instance GoogleRequest UsersRemovePublicKey' where
        type Rs UsersRemovePublicKey' = Operation
        request = requestWithRoute defReq userAccountsURL
        requestWithRoute r u UsersRemovePublicKey'{..}
          = go _urpkProject _urpkUser (Just _urpkFingerprint)
              _urpkQuotaUser
              (Just _urpkPrettyPrint)
              _urpkUserIP
              _urpkFields
              _urpkKey
              _urpkOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersRemovePublicKeyResource)
                      r
                      u
