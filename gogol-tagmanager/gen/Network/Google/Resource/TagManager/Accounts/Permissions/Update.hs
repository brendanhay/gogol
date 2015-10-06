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
-- Module      : Network.Google.Resource.TagManager.Accounts.Permissions.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a user\'s Account & Container Permissions.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsPermissionsUpdate@.
module Network.Google.Resource.TagManager.Accounts.Permissions.Update
    (
    -- * REST Resource
      AccountsPermissionsUpdateResource

    -- * Creating a Request
    , accountsPermissionsUpdate'
    , AccountsPermissionsUpdate'

    -- * Request Lenses
    , apuQuotaUser
    , apuPrettyPrint
    , apuUserIP
    , apuPayload
    , apuAccountId
    , apuKey
    , apuOAuthToken
    , apuPermissionId
    , apuFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsPermissionsUpdate@ which the
-- 'AccountsPermissionsUpdate'' request conforms to.
type AccountsPermissionsUpdateResource =
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
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] UserAccess :> Put '[JSON] UserAccess

-- | Updates a user\'s Account & Container Permissions.
--
-- /See:/ 'accountsPermissionsUpdate'' smart constructor.
data AccountsPermissionsUpdate' = AccountsPermissionsUpdate'
    { _apuQuotaUser    :: !(Maybe Text)
    , _apuPrettyPrint  :: !Bool
    , _apuUserIP       :: !(Maybe Text)
    , _apuPayload      :: !UserAccess
    , _apuAccountId    :: !Text
    , _apuKey          :: !(Maybe AuthKey)
    , _apuOAuthToken   :: !(Maybe OAuthToken)
    , _apuPermissionId :: !Text
    , _apuFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsPermissionsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apuQuotaUser'
--
-- * 'apuPrettyPrint'
--
-- * 'apuUserIP'
--
-- * 'apuPayload'
--
-- * 'apuAccountId'
--
-- * 'apuKey'
--
-- * 'apuOAuthToken'
--
-- * 'apuPermissionId'
--
-- * 'apuFields'
accountsPermissionsUpdate'
    :: UserAccess -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'permissionId'
    -> AccountsPermissionsUpdate'
accountsPermissionsUpdate' pApuPayload_ pApuAccountId_ pApuPermissionId_ =
    AccountsPermissionsUpdate'
    { _apuQuotaUser = Nothing
    , _apuPrettyPrint = True
    , _apuUserIP = Nothing
    , _apuPayload = pApuPayload_
    , _apuAccountId = pApuAccountId_
    , _apuKey = Nothing
    , _apuOAuthToken = Nothing
    , _apuPermissionId = pApuPermissionId_
    , _apuFields = Nothing
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
apuUserIP :: Lens' AccountsPermissionsUpdate' (Maybe Text)
apuUserIP
  = lens _apuUserIP (\ s a -> s{_apuUserIP = a})

-- | Multipart request metadata.
apuPayload :: Lens' AccountsPermissionsUpdate' UserAccess
apuPayload
  = lens _apuPayload (\ s a -> s{_apuPayload = a})

-- | The GTM Account ID.
apuAccountId :: Lens' AccountsPermissionsUpdate' Text
apuAccountId
  = lens _apuAccountId (\ s a -> s{_apuAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
apuKey :: Lens' AccountsPermissionsUpdate' (Maybe AuthKey)
apuKey = lens _apuKey (\ s a -> s{_apuKey = a})

-- | OAuth 2.0 token for the current user.
apuOAuthToken :: Lens' AccountsPermissionsUpdate' (Maybe OAuthToken)
apuOAuthToken
  = lens _apuOAuthToken
      (\ s a -> s{_apuOAuthToken = a})

-- | The GTM User ID.
apuPermissionId :: Lens' AccountsPermissionsUpdate' Text
apuPermissionId
  = lens _apuPermissionId
      (\ s a -> s{_apuPermissionId = a})

-- | Selector specifying which fields to include in a partial response.
apuFields :: Lens' AccountsPermissionsUpdate' (Maybe Text)
apuFields
  = lens _apuFields (\ s a -> s{_apuFields = a})

instance GoogleAuth AccountsPermissionsUpdate' where
        authKey = apuKey . _Just
        authToken = apuOAuthToken . _Just

instance GoogleRequest AccountsPermissionsUpdate'
         where
        type Rs AccountsPermissionsUpdate' = UserAccess
        request = requestWith tagManagerRequest
        requestWith rq AccountsPermissionsUpdate'{..}
          = go _apuAccountId _apuPermissionId _apuQuotaUser
              (Just _apuPrettyPrint)
              _apuUserIP
              _apuFields
              _apuKey
              _apuOAuthToken
              (Just AltJSON)
              _apuPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy AccountsPermissionsUpdateResource)
                      rq
