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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Folders.Entities.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all entities in a GTM Folder.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.folders.entities.list@.
module Network.Google.Resource.TagManager.Accounts.Containers.Folders.Entities.List
    (
    -- * REST Resource
      AccountsContainersFoldersEntitiesListResource

    -- * Creating a Request
    , accountsContainersFoldersEntitiesList'
    , AccountsContainersFoldersEntitiesList'

    -- * Request Lenses
    , acfelContainerId
    , acfelFolderId
    , acfelAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.folders.entities.list@ method which the
-- 'AccountsContainersFoldersEntitiesList'' request conforms to.
type AccountsContainersFoldersEntitiesListResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "folders" :>
               Capture "folderId" Text :>
                 "entities" :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] FolderEntities

-- | List all entities in a GTM Folder.
--
-- /See:/ 'accountsContainersFoldersEntitiesList'' smart constructor.
data AccountsContainersFoldersEntitiesList' = AccountsContainersFoldersEntitiesList'
    { _acfelContainerId :: !Text
    , _acfelFolderId    :: !Text
    , _acfelAccountId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersFoldersEntitiesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acfelContainerId'
--
-- * 'acfelFolderId'
--
-- * 'acfelAccountId'
accountsContainersFoldersEntitiesList'
    :: Text -- ^ 'acfelContainerId'
    -> Text -- ^ 'acfelFolderId'
    -> Text -- ^ 'acfelAccountId'
    -> AccountsContainersFoldersEntitiesList'
accountsContainersFoldersEntitiesList' pAcfelContainerId_ pAcfelFolderId_ pAcfelAccountId_ =
    AccountsContainersFoldersEntitiesList'
    { _acfelContainerId = pAcfelContainerId_
    , _acfelFolderId = pAcfelFolderId_
    , _acfelAccountId = pAcfelAccountId_
    }

-- | The GTM Container ID.
acfelContainerId :: Lens' AccountsContainersFoldersEntitiesList' Text
acfelContainerId
  = lens _acfelContainerId
      (\ s a -> s{_acfelContainerId = a})

-- | The GTM Folder ID.
acfelFolderId :: Lens' AccountsContainersFoldersEntitiesList' Text
acfelFolderId
  = lens _acfelFolderId
      (\ s a -> s{_acfelFolderId = a})

-- | The GTM Account ID.
acfelAccountId :: Lens' AccountsContainersFoldersEntitiesList' Text
acfelAccountId
  = lens _acfelAccountId
      (\ s a -> s{_acfelAccountId = a})

instance GoogleRequest
         AccountsContainersFoldersEntitiesList' where
        type Rs AccountsContainersFoldersEntitiesList' =
             FolderEntities
        requestClient
          AccountsContainersFoldersEntitiesList'{..}
          = go _acfelAccountId _acfelContainerId _acfelFolderId
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersFoldersEntitiesListResource)
                      mempty
