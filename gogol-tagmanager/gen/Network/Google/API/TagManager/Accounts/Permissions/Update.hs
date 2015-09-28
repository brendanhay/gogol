{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.TagManager.Accounts.Permissions.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a user\'s Account & Container Permissions.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.permissions.update@.
module Network.Google.API.TagManager.Accounts.Permissions.Update
    (
    -- * REST Resource
      AccountsPermissionsUpdateAPI

    -- * Creating a Request
    , accountsPermissionsUpdate'
    , AccountsPermissionsUpdate'

    -- * Request Lenses
    , apuQuotaUser
    , apuPrettyPrint
    , apuUserIp
    , apuAccountId
    , apuKey
    , apuOauthToken
    , apuPermissionId
    , apuFields
    , apuAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for tagmanager.accounts.permissions.update which the
-- 'AccountsPermissionsUpdate'' request conforms to.
type AccountsPermissionsUpdateAPI =
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
                         QueryParam "alt" Alt :> Put '[JSON] UserAccess

-- | Updates a user\'s Account & Container Permissions.
--
-- /See:/ 'accountsPermissionsUpdate'' smart constructor.
data AccountsPermissionsUpdate' = AccountsPermissionsUpdate'
    { _apuQuotaUser    :: !(Maybe Text)
    , _apuPrettyPrint  :: !Bool
    , _apuUserIp       :: !(Maybe Text)
    , _apuAccountId    :: !Text
    , _apuKey          :: !(Maybe Text)
    , _apuOauthToken   :: !(Maybe Text)
    , _apuPermissionId :: !Text
    , _apuFields       :: !(Maybe Text)
    , _apuAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsPermissionsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apuQuotaUser'
--
-- * 'apuPrettyPrint'
--
-- * 'apuUserIp'
--
-- * 'apuAccountId'
--
-- * 'apuKey'
--
-- * 'apuOauthToken'
--
-- * 'apuPermissionId'
--
-- * 'apuFields'
--
-- * 'apuAlt'
accountsPermissionsUpdate'
    :: Text -- ^ 'accountId'
    -> Text -- ^ 'permissionId'
    -> AccountsPermissionsUpdate'
accountsPermissionsUpdate' pApuAccountId_ pApuPermissionId_ =
    AccountsPermissionsUpdate'
    { _apuQuotaUser = Nothing
    , _apuPrettyPrint = True
    , _apuUserIp = Nothing
    , _apuAccountId = pApuAccountId_
    , _apuKey = Nothing
    , _apuOauthToken = Nothing
    , _apuPermissionId = pApuPermissionId_
    , _apuFields = Nothing
    , _apuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
apuQuotaUser :: Lens' AccountsPermissionsUpdate' (Maybe Text)
apuQuotaUser
  = lens _apuQuotaUser (\ s a -> s{_apuQuotaUser = a})

-- | Returns response with indentations and line breaks.
apuPrettyPrint :: Lens' AccountsPermissionsUpdate' Bool
apuPrettyPrint
  = lens _apuPrettyPrint
      (\ s a -> s{_apuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
apuUserIp :: Lens' AccountsPermissionsUpdate' (Maybe Text)
apuUserIp
  = lens _apuUserIp (\ s a -> s{_apuUserIp = a})

-- | The GTM Account ID.
apuAccountId :: Lens' AccountsPermissionsUpdate' Text
apuAccountId
  = lens _apuAccountId (\ s a -> s{_apuAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
apuKey :: Lens' AccountsPermissionsUpdate' (Maybe Text)
apuKey = lens _apuKey (\ s a -> s{_apuKey = a})

-- | OAuth 2.0 token for the current user.
apuOauthToken :: Lens' AccountsPermissionsUpdate' (Maybe Text)
apuOauthToken
  = lens _apuOauthToken
      (\ s a -> s{_apuOauthToken = a})

-- | The GTM User ID.
apuPermissionId :: Lens' AccountsPermissionsUpdate' Text
apuPermissionId
  = lens _apuPermissionId
      (\ s a -> s{_apuPermissionId = a})

-- | Selector specifying which fields to include in a partial response.
apuFields :: Lens' AccountsPermissionsUpdate' (Maybe Text)
apuFields
  = lens _apuFields (\ s a -> s{_apuFields = a})

-- | Data format for the response.
apuAlt :: Lens' AccountsPermissionsUpdate' Alt
apuAlt = lens _apuAlt (\ s a -> s{_apuAlt = a})

instance GoogleRequest AccountsPermissionsUpdate'
         where
        type Rs AccountsPermissionsUpdate' = UserAccess
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u AccountsPermissionsUpdate'{..}
          = go _apuQuotaUser (Just _apuPrettyPrint) _apuUserIp
              _apuAccountId
              _apuKey
              _apuOauthToken
              _apuPermissionId
              _apuFields
              (Just _apuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsPermissionsUpdateAPI)
                      r
                      u
