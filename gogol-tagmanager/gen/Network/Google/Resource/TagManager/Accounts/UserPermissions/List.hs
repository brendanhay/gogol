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
-- Module      : Network.Google.Resource.TagManager.Accounts.UserPermissions.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all users that have access to the account along with Account and
-- Container user access granted to each of them.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.user_permissions.list@.
module Network.Google.Resource.TagManager.Accounts.UserPermissions.List
    (
    -- * REST Resource
      AccountsUserPermissionsListResource

    -- * Creating a Request
    , accountsUserPermissionsList
    , AccountsUserPermissionsList

    -- * Request Lenses
    , auplParent
    , auplPageToken
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.user_permissions.list@ method which the
-- 'AccountsUserPermissionsList' request conforms to.
type AccountsUserPermissionsListResource =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "user_permissions" :>
             QueryParam "pageToken" Text :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] ListUserPermissionsResponse

-- | List all users that have access to the account along with Account and
-- Container user access granted to each of them.
--
-- /See:/ 'accountsUserPermissionsList' smart constructor.
data AccountsUserPermissionsList =
  AccountsUserPermissionsList'
    { _auplParent    :: !Text
    , _auplPageToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsUserPermissionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auplParent'
--
-- * 'auplPageToken'
accountsUserPermissionsList
    :: Text -- ^ 'auplParent'
    -> AccountsUserPermissionsList
accountsUserPermissionsList pAuplParent_ =
  AccountsUserPermissionsList'
    {_auplParent = pAuplParent_, _auplPageToken = Nothing}

-- | GTM Accounts\'s API relative path. Example: accounts\/{account_id}
auplParent :: Lens' AccountsUserPermissionsList Text
auplParent
  = lens _auplParent (\ s a -> s{_auplParent = a})

-- | Continuation token for fetching the next page of results.
auplPageToken :: Lens' AccountsUserPermissionsList (Maybe Text)
auplPageToken
  = lens _auplPageToken
      (\ s a -> s{_auplPageToken = a})

instance GoogleRequest AccountsUserPermissionsList
         where
        type Rs AccountsUserPermissionsList =
             ListUserPermissionsResponse
        type Scopes AccountsUserPermissionsList =
             '["https://www.googleapis.com/auth/tagmanager.manage.users"]
        requestClient AccountsUserPermissionsList'{..}
          = go _auplParent _auplPageToken (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsUserPermissionsListResource)
                      mempty
