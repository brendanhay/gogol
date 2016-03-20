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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Folders.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a GTM Folder.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.folders.delete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Folders.Delete
    (
    -- * REST Resource
      AccountsContainersFoldersDeleteResource

    -- * Creating a Request
    , accountsContainersFoldersDelete
    , AccountsContainersFoldersDelete

    -- * Request Lenses
    , acfdContainerId
    , acfdFolderId
    , acfdAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.folders.delete@ method which the
-- 'AccountsContainersFoldersDelete' request conforms to.
type AccountsContainersFoldersDeleteResource =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "folders" :>
                   Capture "folderId" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a GTM Folder.
--
-- /See:/ 'accountsContainersFoldersDelete' smart constructor.
data AccountsContainersFoldersDelete = AccountsContainersFoldersDelete
    { _acfdContainerId :: !Text
    , _acfdFolderId    :: !Text
    , _acfdAccountId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersFoldersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acfdContainerId'
--
-- * 'acfdFolderId'
--
-- * 'acfdAccountId'
accountsContainersFoldersDelete
    :: Text -- ^ 'acfdContainerId'
    -> Text -- ^ 'acfdFolderId'
    -> Text -- ^ 'acfdAccountId'
    -> AccountsContainersFoldersDelete
accountsContainersFoldersDelete pAcfdContainerId_ pAcfdFolderId_ pAcfdAccountId_ =
    AccountsContainersFoldersDelete
    { _acfdContainerId = pAcfdContainerId_
    , _acfdFolderId = pAcfdFolderId_
    , _acfdAccountId = pAcfdAccountId_
    }

-- | The GTM Container ID.
acfdContainerId :: Lens' AccountsContainersFoldersDelete Text
acfdContainerId
  = lens _acfdContainerId
      (\ s a -> s{_acfdContainerId = a})

-- | The GTM Folder ID.
acfdFolderId :: Lens' AccountsContainersFoldersDelete Text
acfdFolderId
  = lens _acfdFolderId (\ s a -> s{_acfdFolderId = a})

-- | The GTM Account ID.
acfdAccountId :: Lens' AccountsContainersFoldersDelete Text
acfdAccountId
  = lens _acfdAccountId
      (\ s a -> s{_acfdAccountId = a})

instance GoogleRequest
         AccountsContainersFoldersDelete where
        type Rs AccountsContainersFoldersDelete = ()
        requestClient AccountsContainersFoldersDelete{..}
          = go _acfdAccountId _acfdContainerId _acfdFolderId
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersFoldersDeleteResource)
                      mempty
