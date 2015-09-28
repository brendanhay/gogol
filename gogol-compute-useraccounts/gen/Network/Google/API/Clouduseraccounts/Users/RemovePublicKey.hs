{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Clouduseraccounts.Users.RemovePublicKey
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Removes the specified public key from the user.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @clouduseraccounts.users.removePublicKey@.
module Network.Google.API.Clouduseraccounts.Users.RemovePublicKey
    (
    -- * REST Resource
      UsersRemovePublicKeyAPI

    -- * Creating a Request
    , usersRemovePublicKey'
    , UsersRemovePublicKey'

    -- * Request Lenses
    , urpkQuotaUser
    , urpkPrettyPrint
    , urpkProject
    , urpkUserIp
    , urpkFingerprint
    , urpkUser
    , urpkKey
    , urpkOauthToken
    , urpkFields
    , urpkAlt
    ) where

import           Network.Google.Compute.UserAccounts.Types
import           Network.Google.Prelude

-- | A resource alias for clouduseraccounts.users.removePublicKey which the
-- 'UsersRemovePublicKey'' request conforms to.
type UsersRemovePublicKeyAPI =
     Capture "project" Text :>
       "global" :>
         "users" :>
           Capture "user" Text :>
             "removePublicKey" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fingerprint" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Removes the specified public key from the user.
--
-- /See:/ 'usersRemovePublicKey'' smart constructor.
data UsersRemovePublicKey' = UsersRemovePublicKey'
    { _urpkQuotaUser   :: !(Maybe Text)
    , _urpkPrettyPrint :: !Bool
    , _urpkProject     :: !Text
    , _urpkUserIp      :: !(Maybe Text)
    , _urpkFingerprint :: !Text
    , _urpkUser        :: !Text
    , _urpkKey         :: !(Maybe Text)
    , _urpkOauthToken  :: !(Maybe Text)
    , _urpkFields      :: !(Maybe Text)
    , _urpkAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'urpkUserIp'
--
-- * 'urpkFingerprint'
--
-- * 'urpkUser'
--
-- * 'urpkKey'
--
-- * 'urpkOauthToken'
--
-- * 'urpkFields'
--
-- * 'urpkAlt'
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
    , _urpkUserIp = Nothing
    , _urpkFingerprint = pUrpkFingerprint_
    , _urpkUser = pUrpkUser_
    , _urpkKey = Nothing
    , _urpkOauthToken = Nothing
    , _urpkFields = Nothing
    , _urpkAlt = JSON
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
urpkUserIp :: Lens' UsersRemovePublicKey' (Maybe Text)
urpkUserIp
  = lens _urpkUserIp (\ s a -> s{_urpkUserIp = a})

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
urpkKey :: Lens' UsersRemovePublicKey' (Maybe Text)
urpkKey = lens _urpkKey (\ s a -> s{_urpkKey = a})

-- | OAuth 2.0 token for the current user.
urpkOauthToken :: Lens' UsersRemovePublicKey' (Maybe Text)
urpkOauthToken
  = lens _urpkOauthToken
      (\ s a -> s{_urpkOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
urpkFields :: Lens' UsersRemovePublicKey' (Maybe Text)
urpkFields
  = lens _urpkFields (\ s a -> s{_urpkFields = a})

-- | Data format for the response.
urpkAlt :: Lens' UsersRemovePublicKey' Alt
urpkAlt = lens _urpkAlt (\ s a -> s{_urpkAlt = a})

instance GoogleRequest UsersRemovePublicKey' where
        type Rs UsersRemovePublicKey' = Operation
        request
          = requestWithRoute defReq computeUserAccountsURL
        requestWithRoute r u UsersRemovePublicKey'{..}
          = go _urpkQuotaUser (Just _urpkPrettyPrint)
              _urpkProject
              _urpkUserIp
              (Just _urpkFingerprint)
              _urpkUser
              _urpkKey
              _urpkOauthToken
              _urpkFields
              (Just _urpkAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersRemovePublicKeyAPI)
                      r
                      u
