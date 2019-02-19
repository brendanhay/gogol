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
-- Module      : Network.Google.Resource.TagManager.Accounts.UserPermissions.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a user\'s Account & Container access.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.user_permissions.update@.
module Network.Google.Resource.TagManager.Accounts.UserPermissions.Update
    (
    -- * REST Resource
      AccountsUserPermissionsUpdateResource

    -- * Creating a Request
    , accountsUserPermissionsUpdate
    , AccountsUserPermissionsUpdate

    -- * Request Lenses
    , aupuPath
    , aupuPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.user_permissions.update@ method which the
-- 'AccountsUserPermissionsUpdate' request conforms to.
type AccountsUserPermissionsUpdateResource =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] UserPermission :>
               Put '[JSON] UserPermission

-- | Updates a user\'s Account & Container access.
--
-- /See:/ 'accountsUserPermissionsUpdate' smart constructor.
data AccountsUserPermissionsUpdate =
  AccountsUserPermissionsUpdate'
    { _aupuPath    :: !Text
    , _aupuPayload :: !UserPermission
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsUserPermissionsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aupuPath'
--
-- * 'aupuPayload'
accountsUserPermissionsUpdate
    :: Text -- ^ 'aupuPath'
    -> UserPermission -- ^ 'aupuPayload'
    -> AccountsUserPermissionsUpdate
accountsUserPermissionsUpdate pAupuPath_ pAupuPayload_ =
  AccountsUserPermissionsUpdate'
    {_aupuPath = pAupuPath_, _aupuPayload = pAupuPayload_}

-- | GTM UserPermission\'s API relative path. Example:
-- accounts\/{account_id}\/user_permissions\/{user_permission_id}
aupuPath :: Lens' AccountsUserPermissionsUpdate Text
aupuPath = lens _aupuPath (\ s a -> s{_aupuPath = a})

-- | Multipart request metadata.
aupuPayload :: Lens' AccountsUserPermissionsUpdate UserPermission
aupuPayload
  = lens _aupuPayload (\ s a -> s{_aupuPayload = a})

instance GoogleRequest AccountsUserPermissionsUpdate
         where
        type Rs AccountsUserPermissionsUpdate =
             UserPermission
        type Scopes AccountsUserPermissionsUpdate =
             '["https://www.googleapis.com/auth/tagmanager.manage.users"]
        requestClient AccountsUserPermissionsUpdate'{..}
          = go _aupuPath (Just AltJSON) _aupuPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsUserPermissionsUpdateResource)
                      mempty
