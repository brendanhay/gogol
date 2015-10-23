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
-- Gets a user\'s Account & Container Permissions.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.permissions.get@.
module Network.Google.Resource.TagManager.Accounts.Permissions.Get
    (
    -- * REST Resource
      AccountsPermissionsGetResource

    -- * Creating a Request
    , accountsPermissionsGet
    , AccountsPermissionsGet

    -- * Request Lenses
    , apgAccountId
    , apgPermissionId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.permissions.get@ method which the
-- 'AccountsPermissionsGet' request conforms to.
type AccountsPermissionsGetResource =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "permissions" :>
               Capture "permissionId" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] UserAccess

-- | Gets a user\'s Account & Container Permissions.
--
-- /See:/ 'accountsPermissionsGet' smart constructor.
data AccountsPermissionsGet = AccountsPermissionsGet
    { _apgAccountId    :: !Text
    , _apgPermissionId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsPermissionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apgAccountId'
--
-- * 'apgPermissionId'
accountsPermissionsGet
    :: Text -- ^ 'apgAccountId'
    -> Text -- ^ 'apgPermissionId'
    -> AccountsPermissionsGet
accountsPermissionsGet pApgAccountId_ pApgPermissionId_ =
    AccountsPermissionsGet
    { _apgAccountId = pApgAccountId_
    , _apgPermissionId = pApgPermissionId_
    }

-- | The GTM Account ID.
apgAccountId :: Lens' AccountsPermissionsGet Text
apgAccountId
  = lens _apgAccountId (\ s a -> s{_apgAccountId = a})

-- | The GTM User ID.
apgPermissionId :: Lens' AccountsPermissionsGet Text
apgPermissionId
  = lens _apgPermissionId
      (\ s a -> s{_apgPermissionId = a})

instance GoogleRequest AccountsPermissionsGet where
        type Rs AccountsPermissionsGet = UserAccess
        requestClient AccountsPermissionsGet{..}
          = go _apgAccountId _apgPermissionId (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsPermissionsGetResource)
                      mempty
