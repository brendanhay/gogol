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
-- Module      : Network.Google.Resource.TagManager.Accounts.UserPermissions.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a user\'s Account & Container access.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.user_permissions.get@.
module Network.Google.Resource.TagManager.Accounts.UserPermissions.Get
    (
    -- * REST Resource
      AccountsUserPermissionsGetResource

    -- * Creating a Request
    , accountsUserPermissionsGet
    , AccountsUserPermissionsGet

    -- * Request Lenses
    , aupgPath
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.user_permissions.get@ method which the
-- 'AccountsUserPermissionsGet' request conforms to.
type AccountsUserPermissionsGetResource =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "alt" AltJSON :>
             Get '[JSON] UserPermission

-- | Gets a user\'s Account & Container access.
--
-- /See:/ 'accountsUserPermissionsGet' smart constructor.
newtype AccountsUserPermissionsGet =
  AccountsUserPermissionsGet'
    { _aupgPath :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsUserPermissionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aupgPath'
accountsUserPermissionsGet
    :: Text -- ^ 'aupgPath'
    -> AccountsUserPermissionsGet
accountsUserPermissionsGet pAupgPath_ =
  AccountsUserPermissionsGet' {_aupgPath = pAupgPath_}


-- | GTM UserPermission\'s API relative path. Example:
-- accounts\/{account_id}\/user_permissions\/{user_permission_id}
aupgPath :: Lens' AccountsUserPermissionsGet Text
aupgPath = lens _aupgPath (\ s a -> s{_aupgPath = a})

instance GoogleRequest AccountsUserPermissionsGet
         where
        type Rs AccountsUserPermissionsGet = UserPermission
        type Scopes AccountsUserPermissionsGet =
             '["https://www.googleapis.com/auth/tagmanager.manage.users"]
        requestClient AccountsUserPermissionsGet'{..}
          = go _aupgPath (Just AltJSON) tagManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsUserPermissionsGetResource)
                      mempty
