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
-- Module      : Network.Google.Resource.TagManager.Accounts.Permissions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all users that have access to the account along with Account and
-- Container Permissions granted to each of them.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsPermissionsList@.
module Network.Google.Resource.TagManager.Accounts.Permissions.List
    (
    -- * REST Resource
      AccountsPermissionsListResource

    -- * Creating a Request
    , accountsPermissionsList'
    , AccountsPermissionsList'

    -- * Request Lenses
    , aplAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsPermissionsList@ method which the
-- 'AccountsPermissionsList'' request conforms to.
type AccountsPermissionsListResource =
     "accounts" :>
       Capture "accountId" Text :>
         "permissions" :>
           QueryParam "alt" AltJSON :>
             Get '[JSON] ListAccountUsersResponse

-- | List all users that have access to the account along with Account and
-- Container Permissions granted to each of them.
--
-- /See:/ 'accountsPermissionsList'' smart constructor.
newtype AccountsPermissionsList' = AccountsPermissionsList'
    { _aplAccountId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsPermissionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aplAccountId'
accountsPermissionsList'
    :: Text -- ^ 'accountId'
    -> AccountsPermissionsList'
accountsPermissionsList' pAplAccountId_ =
    AccountsPermissionsList'
    { _aplAccountId = pAplAccountId_
    }

-- | The GTM Account ID. \'required tagmanager.accounts.permissions.list
aplAccountId :: Lens' AccountsPermissionsList' Text
aplAccountId
  = lens _aplAccountId (\ s a -> s{_aplAccountId = a})

instance GoogleRequest AccountsPermissionsList' where
        type Rs AccountsPermissionsList' =
             ListAccountUsersResponse
        requestClient AccountsPermissionsList'{..}
          = go _aplAccountId (Just AltJSON) tagManager
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsPermissionsListResource)
                      mempty
