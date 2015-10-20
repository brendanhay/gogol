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
-- Removes a user from the account, revoking access to it and all of its
-- containers.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.permissions.delete@.
module Network.Google.Resource.TagManager.Accounts.Permissions.Delete
    (
    -- * REST Resource
      AccountsPermissionsDeleteResource

    -- * Creating a Request
    , accountsPermissionsDelete
    , AccountsPermissionsDelete

    -- * Request Lenses
    , apdAccountId
    , apdPermissionId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.permissions.delete@ method which the
-- 'AccountsPermissionsDelete' request conforms to.
type AccountsPermissionsDeleteResource =
     "accounts" :>
       Capture "accountId" Text :>
         "permissions" :>
           Capture "permissionId" Text :>
             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes a user from the account, revoking access to it and all of its
-- containers.
--
-- /See:/ 'accountsPermissionsDelete' smart constructor.
data AccountsPermissionsDelete = AccountsPermissionsDelete
    { _apdAccountId    :: !Text
    , _apdPermissionId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsPermissionsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apdAccountId'
--
-- * 'apdPermissionId'
accountsPermissionsDelete
    :: Text -- ^ 'apdAccountId'
    -> Text -- ^ 'apdPermissionId'
    -> AccountsPermissionsDelete
accountsPermissionsDelete pApdAccountId_ pApdPermissionId_ =
    AccountsPermissionsDelete
    { _apdAccountId = pApdAccountId_
    , _apdPermissionId = pApdPermissionId_
    }

-- | The GTM Account ID.
apdAccountId :: Lens' AccountsPermissionsDelete Text
apdAccountId
  = lens _apdAccountId (\ s a -> s{_apdAccountId = a})

-- | The GTM User ID.
apdPermissionId :: Lens' AccountsPermissionsDelete Text
apdPermissionId
  = lens _apdPermissionId
      (\ s a -> s{_apdPermissionId = a})

instance GoogleRequest AccountsPermissionsDelete
         where
        type Rs AccountsPermissionsDelete = ()
        requestClient AccountsPermissionsDelete{..}
          = go _apdAccountId _apdPermissionId (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsPermissionsDeleteResource)
                      mempty
