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
-- Module      : Network.Google.Resource.TagManager.Accounts.Permissions.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a user\'s Account & Container Permissions.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsPermissionsCreate@.
module Network.Google.Resource.TagManager.Accounts.Permissions.Create
    (
    -- * REST Resource
      AccountsPermissionsCreateResource

    -- * Creating a Request
    , accountsPermissionsCreate'
    , AccountsPermissionsCreate'

    -- * Request Lenses
    , apcPayload
    , apcAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsPermissionsCreate@ method which the
-- 'AccountsPermissionsCreate'' request conforms to.
type AccountsPermissionsCreateResource =
     "accounts" :>
       Capture "accountId" Text :>
         "permissions" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] UserAccess :> Post '[JSON] UserAccess

-- | Creates a user\'s Account & Container Permissions.
--
-- /See:/ 'accountsPermissionsCreate'' smart constructor.
data AccountsPermissionsCreate' = AccountsPermissionsCreate'
    { _apcPayload   :: !UserAccess
    , _apcAccountId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsPermissionsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apcPayload'
--
-- * 'apcAccountId'
accountsPermissionsCreate'
    :: UserAccess -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> AccountsPermissionsCreate'
accountsPermissionsCreate' pApcPayload_ pApcAccountId_ =
    AccountsPermissionsCreate'
    { _apcPayload = pApcPayload_
    , _apcAccountId = pApcAccountId_
    }

-- | Multipart request metadata.
apcPayload :: Lens' AccountsPermissionsCreate' UserAccess
apcPayload
  = lens _apcPayload (\ s a -> s{_apcPayload = a})

-- | The GTM Account ID.
apcAccountId :: Lens' AccountsPermissionsCreate' Text
apcAccountId
  = lens _apcAccountId (\ s a -> s{_apcAccountId = a})

instance GoogleRequest AccountsPermissionsCreate'
         where
        type Rs AccountsPermissionsCreate' = UserAccess
        requestClient AccountsPermissionsCreate'{..}
          = go _apcAccountId (Just AltJSON) _apcPayload
              tagManager
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsPermissionsCreateResource)
                      mempty
