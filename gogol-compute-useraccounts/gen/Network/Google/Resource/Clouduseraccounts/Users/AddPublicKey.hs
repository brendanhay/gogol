{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Clouduseraccounts.Users.AddPublicKey
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds a public key to the specified User resource with the data included
-- in the request.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @ClouduseraccountsUsersAddPublicKey@.
module Clouduseraccounts.Users.AddPublicKey
    (
    -- * REST Resource
      UsersAddPublicKeyAPI

    -- * Creating a Request
    , usersAddPublicKey
    , UsersAddPublicKey

    -- * Request Lenses
    , uapkQuotaUser
    , uapkPrettyPrint
    , uapkProject
    , uapkUserIp
    , uapkUser
    , uapkKey
    , uapkOauthToken
    , uapkFields
    , uapkAlt
    ) where

import           Network.Google.ComputeUserAccounts.Types
import           Network.Google.Prelude

-- | A resource alias for @ClouduseraccountsUsersAddPublicKey@ which the
-- 'UsersAddPublicKey' request conforms to.
type UsersAddPublicKeyAPI =
     Capture "project" Text :>
       "global" :>
         "users" :>
           Capture "user" Text :>
             "addPublicKey" :> Post '[JSON] Operation

-- | Adds a public key to the specified User resource with the data included
-- in the request.
--
-- /See:/ 'usersAddPublicKey' smart constructor.
data UsersAddPublicKey = UsersAddPublicKey
    { _uapkQuotaUser   :: !(Maybe Text)
    , _uapkPrettyPrint :: !Bool
    , _uapkProject     :: !Text
    , _uapkUserIp      :: !(Maybe Text)
    , _uapkUser        :: !Text
    , _uapkKey         :: !(Maybe Text)
    , _uapkOauthToken  :: !(Maybe Text)
    , _uapkFields      :: !(Maybe Text)
    , _uapkAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'uapkUserIp'
--
-- * 'uapkUser'
--
-- * 'uapkKey'
--
-- * 'uapkOauthToken'
--
-- * 'uapkFields'
--
-- * 'uapkAlt'
usersAddPublicKey
    :: Text -- ^ 'project'
    -> Text -- ^ 'user'
    -> UsersAddPublicKey
usersAddPublicKey pUapkProject_ pUapkUser_ =
    UsersAddPublicKey
    { _uapkQuotaUser = Nothing
    , _uapkPrettyPrint = True
    , _uapkProject = pUapkProject_
    , _uapkUserIp = Nothing
    , _uapkUser = pUapkUser_
    , _uapkKey = Nothing
    , _uapkOauthToken = Nothing
    , _uapkFields = Nothing
    , _uapkAlt = "json"
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
uapkUserIp :: Lens' UsersAddPublicKey' (Maybe Text)
uapkUserIp
  = lens _uapkUserIp (\ s a -> s{_uapkUserIp = a})

-- | Name of the user for this request.
uapkUser :: Lens' UsersAddPublicKey' Text
uapkUser = lens _uapkUser (\ s a -> s{_uapkUser = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uapkKey :: Lens' UsersAddPublicKey' (Maybe Text)
uapkKey = lens _uapkKey (\ s a -> s{_uapkKey = a})

-- | OAuth 2.0 token for the current user.
uapkOauthToken :: Lens' UsersAddPublicKey' (Maybe Text)
uapkOauthToken
  = lens _uapkOauthToken
      (\ s a -> s{_uapkOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
uapkFields :: Lens' UsersAddPublicKey' (Maybe Text)
uapkFields
  = lens _uapkFields (\ s a -> s{_uapkFields = a})

-- | Data format for the response.
uapkAlt :: Lens' UsersAddPublicKey' Text
uapkAlt = lens _uapkAlt (\ s a -> s{_uapkAlt = a})

instance GoogleRequest UsersAddPublicKey' where
        type Rs UsersAddPublicKey' = Operation
        request
          = requestWithRoute defReq computeUserAccountsURL
        requestWithRoute r u UsersAddPublicKey{..}
          = go _uapkQuotaUser _uapkPrettyPrint _uapkProject
              _uapkUserIp
              _uapkUser
              _uapkKey
              _uapkOauthToken
              _uapkFields
              _uapkAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersAddPublicKeyAPI)
                      r
                      u
