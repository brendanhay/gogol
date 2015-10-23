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
-- Updates a user\'s Account & Container Permissions.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.permissions.update@.
module Network.Google.Resource.TagManager.Accounts.Permissions.Update
    (
    -- * REST Resource
      AccountsPermissionsUpdateResource

    -- * Creating a Request
    , accountsPermissionsUpdate
    , AccountsPermissionsUpdate

    -- * Request Lenses
    , apuPayload
    , apuAccountId
    , apuPermissionId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.permissions.update@ method which the
-- 'AccountsPermissionsUpdate' request conforms to.
type AccountsPermissionsUpdateResource =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "permissions" :>
               Capture "permissionId" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] UserAccess :> Put '[JSON] UserAccess

-- | Updates a user\'s Account & Container Permissions.
--
-- /See:/ 'accountsPermissionsUpdate' smart constructor.
data AccountsPermissionsUpdate = AccountsPermissionsUpdate
    { _apuPayload      :: !UserAccess
    , _apuAccountId    :: !Text
    , _apuPermissionId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsPermissionsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apuPayload'
--
-- * 'apuAccountId'
--
-- * 'apuPermissionId'
accountsPermissionsUpdate
    :: UserAccess -- ^ 'apuPayload'
    -> Text -- ^ 'apuAccountId'
    -> Text -- ^ 'apuPermissionId'
    -> AccountsPermissionsUpdate
accountsPermissionsUpdate pApuPayload_ pApuAccountId_ pApuPermissionId_ =
    AccountsPermissionsUpdate
    { _apuPayload = pApuPayload_
    , _apuAccountId = pApuAccountId_
    , _apuPermissionId = pApuPermissionId_
    }

-- | Multipart request metadata.
apuPayload :: Lens' AccountsPermissionsUpdate UserAccess
apuPayload
  = lens _apuPayload (\ s a -> s{_apuPayload = a})

-- | The GTM Account ID.
apuAccountId :: Lens' AccountsPermissionsUpdate Text
apuAccountId
  = lens _apuAccountId (\ s a -> s{_apuAccountId = a})

-- | The GTM User ID.
apuPermissionId :: Lens' AccountsPermissionsUpdate Text
apuPermissionId
  = lens _apuPermissionId
      (\ s a -> s{_apuPermissionId = a})

instance GoogleRequest AccountsPermissionsUpdate
         where
        type Rs AccountsPermissionsUpdate = UserAccess
        requestClient AccountsPermissionsUpdate{..}
          = go _apuAccountId _apuPermissionId (Just AltJSON)
              _apuPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsPermissionsUpdateResource)
                      mempty
