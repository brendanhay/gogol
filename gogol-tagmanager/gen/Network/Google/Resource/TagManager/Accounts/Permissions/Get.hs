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
-- Module      : Network.Google.Resource.TagManager.Accounts.Permissions.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a user\'s Account & Container Permissions.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsPermissionsGet@.
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
    , apgUserIP
    , apgAccountId
    , apgKey
    , apgOAuthToken
    , apgPermissionId
    , apgFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsPermissionsGet@ method which the
-- 'AccountsPermissionsGet'' request conforms to.
type AccountsPermissionsGetResource =
     "accounts" :>
       Capture "accountId" Text :>
         "permissions" :>
           Capture "permissionId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] UserAccess

-- | Gets a user\'s Account & Container Permissions.
--
-- /See:/ 'accountsPermissionsGet'' smart constructor.
data AccountsPermissionsGet' = AccountsPermissionsGet'
    { _apgQuotaUser    :: !(Maybe Text)
    , _apgPrettyPrint  :: !Bool
    , _apgUserIP       :: !(Maybe Text)
    , _apgAccountId    :: !Text
    , _apgKey          :: !(Maybe AuthKey)
    , _apgOAuthToken   :: !(Maybe OAuthToken)
    , _apgPermissionId :: !Text
    , _apgFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsPermissionsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apgQuotaUser'
--
-- * 'apgPrettyPrint'
--
-- * 'apgUserIP'
--
-- * 'apgAccountId'
--
-- * 'apgKey'
--
-- * 'apgOAuthToken'
--
-- * 'apgPermissionId'
--
-- * 'apgFields'
accountsPermissionsGet'
    :: Text -- ^ 'accountId'
    -> Text -- ^ 'permissionId'
    -> AccountsPermissionsGet'
accountsPermissionsGet' pApgAccountId_ pApgPermissionId_ =
    AccountsPermissionsGet'
    { _apgQuotaUser = Nothing
    , _apgPrettyPrint = True
    , _apgUserIP = Nothing
    , _apgAccountId = pApgAccountId_
    , _apgKey = Nothing
    , _apgOAuthToken = Nothing
    , _apgPermissionId = pApgPermissionId_
    , _apgFields = Nothing
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
apgUserIP :: Lens' AccountsPermissionsGet' (Maybe Text)
apgUserIP
  = lens _apgUserIP (\ s a -> s{_apgUserIP = a})

-- | The GTM Account ID.
apgAccountId :: Lens' AccountsPermissionsGet' Text
apgAccountId
  = lens _apgAccountId (\ s a -> s{_apgAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
apgKey :: Lens' AccountsPermissionsGet' (Maybe AuthKey)
apgKey = lens _apgKey (\ s a -> s{_apgKey = a})

-- | OAuth 2.0 token for the current user.
apgOAuthToken :: Lens' AccountsPermissionsGet' (Maybe OAuthToken)
apgOAuthToken
  = lens _apgOAuthToken
      (\ s a -> s{_apgOAuthToken = a})

-- | The GTM User ID.
apgPermissionId :: Lens' AccountsPermissionsGet' Text
apgPermissionId
  = lens _apgPermissionId
      (\ s a -> s{_apgPermissionId = a})

-- | Selector specifying which fields to include in a partial response.
apgFields :: Lens' AccountsPermissionsGet' (Maybe Text)
apgFields
  = lens _apgFields (\ s a -> s{_apgFields = a})

instance GoogleAuth AccountsPermissionsGet' where
        _AuthKey = apgKey . _Just
        _AuthToken = apgOAuthToken . _Just

instance GoogleRequest AccountsPermissionsGet' where
        type Rs AccountsPermissionsGet' = UserAccess
        request = requestWith tagManagerRequest
        requestWith rq AccountsPermissionsGet'{..}
          = go _apgAccountId _apgPermissionId _apgQuotaUser
              (Just _apgPrettyPrint)
              _apgUserIP
              _apgFields
              _apgKey
              _apgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy AccountsPermissionsGetResource)
                      rq
