{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.CloudUserAccounts.Users.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a User resource in the specified project using the data included
-- in the request.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @CloudUserAccountsUsersInsert@.
module Network.Google.Resource.CloudUserAccounts.Users.Insert
    (
    -- * REST Resource
      UsersInsertResource

    -- * Creating a Request
    , usersInsert'
    , UsersInsert'

    -- * Request Lenses
    , uiQuotaUser
    , uiPrettyPrint
    , uiProject
    , uiUserIP
    , uiPayload
    , uiKey
    , uiOAuthToken
    , uiFields
    ) where

import           Network.Google.Prelude
import           Network.Google.UserAccounts.Types

-- | A resource alias for @CloudUserAccountsUsersInsert@ which the
-- 'UsersInsert'' request conforms to.
type UsersInsertResource =
     Capture "project" Text :>
       "global" :>
         "users" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] User :> Post '[JSON] Operation

-- | Creates a User resource in the specified project using the data included
-- in the request.
--
-- /See:/ 'usersInsert'' smart constructor.
data UsersInsert' = UsersInsert'
    { _uiQuotaUser   :: !(Maybe Text)
    , _uiPrettyPrint :: !Bool
    , _uiProject     :: !Text
    , _uiUserIP      :: !(Maybe Text)
    , _uiPayload     :: !User
    , _uiKey         :: !(Maybe Key)
    , _uiOAuthToken  :: !(Maybe OAuthToken)
    , _uiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uiQuotaUser'
--
-- * 'uiPrettyPrint'
--
-- * 'uiProject'
--
-- * 'uiUserIP'
--
-- * 'uiPayload'
--
-- * 'uiKey'
--
-- * 'uiOAuthToken'
--
-- * 'uiFields'
usersInsert'
    :: Text -- ^ 'project'
    -> User -- ^ 'payload'
    -> UsersInsert'
usersInsert' pUiProject_ pUiPayload_ =
    UsersInsert'
    { _uiQuotaUser = Nothing
    , _uiPrettyPrint = True
    , _uiProject = pUiProject_
    , _uiUserIP = Nothing
    , _uiPayload = pUiPayload_
    , _uiKey = Nothing
    , _uiOAuthToken = Nothing
    , _uiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uiQuotaUser :: Lens' UsersInsert' (Maybe Text)
uiQuotaUser
  = lens _uiQuotaUser (\ s a -> s{_uiQuotaUser = a})

-- | Returns response with indentations and line breaks.
uiPrettyPrint :: Lens' UsersInsert' Bool
uiPrettyPrint
  = lens _uiPrettyPrint
      (\ s a -> s{_uiPrettyPrint = a})

-- | Project ID for this request.
uiProject :: Lens' UsersInsert' Text
uiProject
  = lens _uiProject (\ s a -> s{_uiProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uiUserIP :: Lens' UsersInsert' (Maybe Text)
uiUserIP = lens _uiUserIP (\ s a -> s{_uiUserIP = a})

-- | Multipart request metadata.
uiPayload :: Lens' UsersInsert' User
uiPayload
  = lens _uiPayload (\ s a -> s{_uiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uiKey :: Lens' UsersInsert' (Maybe Key)
uiKey = lens _uiKey (\ s a -> s{_uiKey = a})

-- | OAuth 2.0 token for the current user.
uiOAuthToken :: Lens' UsersInsert' (Maybe OAuthToken)
uiOAuthToken
  = lens _uiOAuthToken (\ s a -> s{_uiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
uiFields :: Lens' UsersInsert' (Maybe Text)
uiFields = lens _uiFields (\ s a -> s{_uiFields = a})

instance GoogleAuth UsersInsert' where
        authKey = uiKey . _Just
        authToken = uiOAuthToken . _Just

instance GoogleRequest UsersInsert' where
        type Rs UsersInsert' = Operation
        request = requestWithRoute defReq userAccountsURL
        requestWithRoute r u UsersInsert'{..}
          = go _uiProject _uiQuotaUser (Just _uiPrettyPrint)
              _uiUserIP
              _uiFields
              _uiKey
              _uiOAuthToken
              (Just AltJSON)
              _uiPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersInsertResource)
                      r
                      u
