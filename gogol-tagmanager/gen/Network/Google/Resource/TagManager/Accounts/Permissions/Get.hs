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
-- Module      : Network.Google.Resource.TagManager.Accounts.Permissions.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a user\'s Account & Container Permissions.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsPermissionsGet@.
module Network.Google.Resource.TagManager.Accounts.Permissions.Get
    (
    -- * REST Resource
      AccountsPermissionsGetResource

    -- * Creating a Request
    , accountsPermissionsGet'
    , AccountsPermissionsGet'

    -- * Request Lenses
    , apgQuotaUser
    , apgPrettyPrint
    , apgUserIp
    , apgAccountId
    , apgKey
    , apgOauthToken
    , apgPermissionId
    , apgFields
    , apgAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsPermissionsGet@ which the
-- 'AccountsPermissionsGet'' request conforms to.
type AccountsPermissionsGetResource =
     "accounts" :>
       Capture "accountId" Text :>
         "permissions" :>
           Capture "permissionId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] UserAccess

-- | Gets a user\'s Account & Container Permissions.
--
-- /See:/ 'accountsPermissionsGet'' smart constructor.
data AccountsPermissionsGet' = AccountsPermissionsGet'
    { _apgQuotaUser    :: !(Maybe Text)
    , _apgPrettyPrint  :: !Bool
    , _apgUserIp       :: !(Maybe Text)
    , _apgAccountId    :: !Text
    , _apgKey          :: !(Maybe Text)
    , _apgOauthToken   :: !(Maybe Text)
    , _apgPermissionId :: !Text
    , _apgFields       :: !(Maybe Text)
    , _apgAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsPermissionsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apgQuotaUser'
--
-- * 'apgPrettyPrint'
--
-- * 'apgUserIp'
--
-- * 'apgAccountId'
--
-- * 'apgKey'
--
-- * 'apgOauthToken'
--
-- * 'apgPermissionId'
--
-- * 'apgFields'
--
-- * 'apgAlt'
accountsPermissionsGet'
    :: Text -- ^ 'accountId'
    -> Text -- ^ 'permissionId'
    -> AccountsPermissionsGet'
accountsPermissionsGet' pApgAccountId_ pApgPermissionId_ =
    AccountsPermissionsGet'
    { _apgQuotaUser = Nothing
    , _apgPrettyPrint = True
    , _apgUserIp = Nothing
    , _apgAccountId = pApgAccountId_
    , _apgKey = Nothing
    , _apgOauthToken = Nothing
    , _apgPermissionId = pApgPermissionId_
    , _apgFields = Nothing
    , _apgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
apgQuotaUser :: Lens' AccountsPermissionsGet' (Maybe Text)
apgQuotaUser
  = lens _apgQuotaUser (\ s a -> s{_apgQuotaUser = a})

-- | Returns response with indentations and line breaks.
apgPrettyPrint :: Lens' AccountsPermissionsGet' Bool
apgPrettyPrint
  = lens _apgPrettyPrint
      (\ s a -> s{_apgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
apgUserIp :: Lens' AccountsPermissionsGet' (Maybe Text)
apgUserIp
  = lens _apgUserIp (\ s a -> s{_apgUserIp = a})

-- | The GTM Account ID.
apgAccountId :: Lens' AccountsPermissionsGet' Text
apgAccountId
  = lens _apgAccountId (\ s a -> s{_apgAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
apgKey :: Lens' AccountsPermissionsGet' (Maybe Text)
apgKey = lens _apgKey (\ s a -> s{_apgKey = a})

-- | OAuth 2.0 token for the current user.
apgOauthToken :: Lens' AccountsPermissionsGet' (Maybe Text)
apgOauthToken
  = lens _apgOauthToken
      (\ s a -> s{_apgOauthToken = a})

-- | The GTM User ID.
apgPermissionId :: Lens' AccountsPermissionsGet' Text
apgPermissionId
  = lens _apgPermissionId
      (\ s a -> s{_apgPermissionId = a})

-- | Selector specifying which fields to include in a partial response.
apgFields :: Lens' AccountsPermissionsGet' (Maybe Text)
apgFields
  = lens _apgFields (\ s a -> s{_apgFields = a})

-- | Data format for the response.
apgAlt :: Lens' AccountsPermissionsGet' Alt
apgAlt = lens _apgAlt (\ s a -> s{_apgAlt = a})

instance GoogleRequest AccountsPermissionsGet' where
        type Rs AccountsPermissionsGet' = UserAccess
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u AccountsPermissionsGet'{..}
          = go _apgQuotaUser (Just _apgPrettyPrint) _apgUserIp
              _apgAccountId
              _apgKey
              _apgOauthToken
              _apgPermissionId
              _apgFields
              (Just _apgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsPermissionsGetResource)
                      r
                      u
