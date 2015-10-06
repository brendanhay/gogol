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
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsPermissionsDelete@.
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
    , apdUserIP
    , apdAccountId
    , apdKey
    , apdOAuthToken
    , apdPermissionId
    , apdFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsPermissionsDelete@ which the
-- 'AccountsPermissionsDelete'' request conforms to.
type AccountsPermissionsDeleteResource =
     "accounts" :>
       Capture "accountId" Text :>
         "permissions" :>
           Capture "permissionId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes a user from the account, revoking access to it and all of its
-- containers.
--
-- /See:/ 'accountsPermissionsDelete'' smart constructor.
data AccountsPermissionsDelete' = AccountsPermissionsDelete'
    { _apdQuotaUser    :: !(Maybe Text)
    , _apdPrettyPrint  :: !Bool
    , _apdUserIP       :: !(Maybe Text)
    , _apdAccountId    :: !Text
    , _apdKey          :: !(Maybe AuthKey)
    , _apdOAuthToken   :: !(Maybe OAuthToken)
    , _apdPermissionId :: !Text
    , _apdFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsPermissionsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apdQuotaUser'
--
-- * 'apdPrettyPrint'
--
-- * 'apdUserIP'
--
-- * 'apdAccountId'
--
-- * 'apdKey'
--
-- * 'apdOAuthToken'
--
-- * 'apdPermissionId'
--
-- * 'apdFields'
accountsPermissionsDelete'
    :: Text -- ^ 'accountId'
    -> Text -- ^ 'permissionId'
    -> AccountsPermissionsDelete'
accountsPermissionsDelete' pApdAccountId_ pApdPermissionId_ =
    AccountsPermissionsDelete'
    { _apdQuotaUser = Nothing
    , _apdPrettyPrint = True
    , _apdUserIP = Nothing
    , _apdAccountId = pApdAccountId_
    , _apdKey = Nothing
    , _apdOAuthToken = Nothing
    , _apdPermissionId = pApdPermissionId_
    , _apdFields = Nothing
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
apdUserIP :: Lens' AccountsPermissionsDelete' (Maybe Text)
apdUserIP
  = lens _apdUserIP (\ s a -> s{_apdUserIP = a})

-- | The GTM Account ID.
apdAccountId :: Lens' AccountsPermissionsDelete' Text
apdAccountId
  = lens _apdAccountId (\ s a -> s{_apdAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
apdKey :: Lens' AccountsPermissionsDelete' (Maybe AuthKey)
apdKey = lens _apdKey (\ s a -> s{_apdKey = a})

-- | OAuth 2.0 token for the current user.
apdOAuthToken :: Lens' AccountsPermissionsDelete' (Maybe OAuthToken)
apdOAuthToken
  = lens _apdOAuthToken
      (\ s a -> s{_apdOAuthToken = a})

-- | The GTM User ID.
apdPermissionId :: Lens' AccountsPermissionsDelete' Text
apdPermissionId
  = lens _apdPermissionId
      (\ s a -> s{_apdPermissionId = a})

-- | Selector specifying which fields to include in a partial response.
apdFields :: Lens' AccountsPermissionsDelete' (Maybe Text)
apdFields
  = lens _apdFields (\ s a -> s{_apdFields = a})

instance GoogleAuth AccountsPermissionsDelete' where
        _AuthKey = apdKey . _Just
        _AuthToken = apdOAuthToken . _Just

instance GoogleRequest AccountsPermissionsDelete'
         where
        type Rs AccountsPermissionsDelete' = ()
        request = requestWith tagManagerRequest
        requestWith rq AccountsPermissionsDelete'{..}
          = go _apdAccountId _apdPermissionId _apdQuotaUser
              (Just _apdPrettyPrint)
              _apdUserIP
              _apdFields
              _apdKey
              _apdOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy AccountsPermissionsDeleteResource)
                      rq
