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
-- Module      : Network.Google.Resource.TagManager.Accounts.Permissions.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Removes a user from the account, revoking access to it and all of its
-- containers.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsPermissionsDelete@.
module Network.Google.Resource.TagManager.Accounts.Permissions.Delete
    (
    -- * REST Resource
      AccountsPermissionsDeleteResource

    -- * Creating a Request
    , accountsPermissionsDelete'
    , AccountsPermissionsDelete'

    -- * Request Lenses
    , apdQuotaUser
    , apdPrettyPrint
    , apdUserIp
    , apdAccountId
    , apdKey
    , apdOauthToken
    , apdPermissionId
    , apdFields
    , apdAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsPermissionsDelete@ which the
-- 'AccountsPermissionsDelete'' request conforms to.
type AccountsPermissionsDeleteResource =
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
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Removes a user from the account, revoking access to it and all of its
-- containers.
--
-- /See:/ 'accountsPermissionsDelete'' smart constructor.
data AccountsPermissionsDelete' = AccountsPermissionsDelete'
    { _apdQuotaUser    :: !(Maybe Text)
    , _apdPrettyPrint  :: !Bool
    , _apdUserIp       :: !(Maybe Text)
    , _apdAccountId    :: !Text
    , _apdKey          :: !(Maybe Text)
    , _apdOauthToken   :: !(Maybe Text)
    , _apdPermissionId :: !Text
    , _apdFields       :: !(Maybe Text)
    , _apdAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsPermissionsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apdQuotaUser'
--
-- * 'apdPrettyPrint'
--
-- * 'apdUserIp'
--
-- * 'apdAccountId'
--
-- * 'apdKey'
--
-- * 'apdOauthToken'
--
-- * 'apdPermissionId'
--
-- * 'apdFields'
--
-- * 'apdAlt'
accountsPermissionsDelete'
    :: Text -- ^ 'accountId'
    -> Text -- ^ 'permissionId'
    -> AccountsPermissionsDelete'
accountsPermissionsDelete' pApdAccountId_ pApdPermissionId_ =
    AccountsPermissionsDelete'
    { _apdQuotaUser = Nothing
    , _apdPrettyPrint = True
    , _apdUserIp = Nothing
    , _apdAccountId = pApdAccountId_
    , _apdKey = Nothing
    , _apdOauthToken = Nothing
    , _apdPermissionId = pApdPermissionId_
    , _apdFields = Nothing
    , _apdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
apdQuotaUser :: Lens' AccountsPermissionsDelete' (Maybe Text)
apdQuotaUser
  = lens _apdQuotaUser (\ s a -> s{_apdQuotaUser = a})

-- | Returns response with indentations and line breaks.
apdPrettyPrint :: Lens' AccountsPermissionsDelete' Bool
apdPrettyPrint
  = lens _apdPrettyPrint
      (\ s a -> s{_apdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
apdUserIp :: Lens' AccountsPermissionsDelete' (Maybe Text)
apdUserIp
  = lens _apdUserIp (\ s a -> s{_apdUserIp = a})

-- | The GTM Account ID.
apdAccountId :: Lens' AccountsPermissionsDelete' Text
apdAccountId
  = lens _apdAccountId (\ s a -> s{_apdAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
apdKey :: Lens' AccountsPermissionsDelete' (Maybe Text)
apdKey = lens _apdKey (\ s a -> s{_apdKey = a})

-- | OAuth 2.0 token for the current user.
apdOauthToken :: Lens' AccountsPermissionsDelete' (Maybe Text)
apdOauthToken
  = lens _apdOauthToken
      (\ s a -> s{_apdOauthToken = a})

-- | The GTM User ID.
apdPermissionId :: Lens' AccountsPermissionsDelete' Text
apdPermissionId
  = lens _apdPermissionId
      (\ s a -> s{_apdPermissionId = a})

-- | Selector specifying which fields to include in a partial response.
apdFields :: Lens' AccountsPermissionsDelete' (Maybe Text)
apdFields
  = lens _apdFields (\ s a -> s{_apdFields = a})

-- | Data format for the response.
apdAlt :: Lens' AccountsPermissionsDelete' Alt
apdAlt = lens _apdAlt (\ s a -> s{_apdAlt = a})

instance GoogleRequest AccountsPermissionsDelete'
         where
        type Rs AccountsPermissionsDelete' = ()
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u AccountsPermissionsDelete'{..}
          = go _apdQuotaUser (Just _apdPrettyPrint) _apdUserIp
              _apdAccountId
              _apdKey
              _apdOauthToken
              _apdPermissionId
              _apdFields
              (Just _apdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsPermissionsDeleteResource)
                      r
                      u
