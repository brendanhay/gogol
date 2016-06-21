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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.delete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Delete
    (
    -- * REST Resource
      AccountsContainersDeleteResource

    -- * Creating a Request
    , accountsContainersDelete
    , AccountsContainersDelete

    -- * Request Lenses
    , acdContainerId
    , acdAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.delete@ method which the
-- 'AccountsContainersDelete' request conforms to.
type AccountsContainersDeleteResource =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a Container.
--
-- /See:/ 'accountsContainersDelete' smart constructor.
data AccountsContainersDelete = AccountsContainersDelete'
    { _acdContainerId :: !Text
    , _acdAccountId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acdContainerId'
--
-- * 'acdAccountId'
accountsContainersDelete
    :: Text -- ^ 'acdContainerId'
    -> Text -- ^ 'acdAccountId'
    -> AccountsContainersDelete
accountsContainersDelete pAcdContainerId_ pAcdAccountId_ =
    AccountsContainersDelete'
    { _acdContainerId = pAcdContainerId_
    , _acdAccountId = pAcdAccountId_
    }

-- | The GTM Container ID.
acdContainerId :: Lens' AccountsContainersDelete Text
acdContainerId
  = lens _acdContainerId
      (\ s a -> s{_acdContainerId = a})

-- | The GTM Account ID.
acdAccountId :: Lens' AccountsContainersDelete Text
acdAccountId
  = lens _acdAccountId (\ s a -> s{_acdAccountId = a})

instance GoogleRequest AccountsContainersDelete where
        type Rs AccountsContainersDelete = ()
        type Scopes AccountsContainersDelete =
             '["https://www.googleapis.com/auth/tagmanager.delete.containers"]
        requestClient AccountsContainersDelete'{..}
          = go _acdAccountId _acdContainerId (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsContainersDeleteResource)
                      mempty
