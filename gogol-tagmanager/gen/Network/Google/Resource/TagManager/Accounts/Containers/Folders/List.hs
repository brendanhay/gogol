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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Folders.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all GTM Folders of a Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.folders.list@.
module Network.Google.Resource.TagManager.Accounts.Containers.Folders.List
    (
    -- * REST Resource
      AccountsContainersFoldersListResource

    -- * Creating a Request
    , accountsContainersFoldersList
    , AccountsContainersFoldersList

    -- * Request Lenses
    , acflContainerId
    , acflAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.folders.list@ method which the
-- 'AccountsContainersFoldersList' request conforms to.
type AccountsContainersFoldersListResource =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "folders" :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] ListFoldersResponse

-- | Lists all GTM Folders of a Container.
--
-- /See:/ 'accountsContainersFoldersList' smart constructor.
data AccountsContainersFoldersList = AccountsContainersFoldersList'
    { _acflContainerId :: !Text
    , _acflAccountId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersFoldersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acflContainerId'
--
-- * 'acflAccountId'
accountsContainersFoldersList
    :: Text -- ^ 'acflContainerId'
    -> Text -- ^ 'acflAccountId'
    -> AccountsContainersFoldersList
accountsContainersFoldersList pAcflContainerId_ pAcflAccountId_ =
    AccountsContainersFoldersList'
    { _acflContainerId = pAcflContainerId_
    , _acflAccountId = pAcflAccountId_
    }

-- | The GTM Container ID.
acflContainerId :: Lens' AccountsContainersFoldersList Text
acflContainerId
  = lens _acflContainerId
      (\ s a -> s{_acflContainerId = a})

-- | The GTM Account ID.
acflAccountId :: Lens' AccountsContainersFoldersList Text
acflAccountId
  = lens _acflAccountId
      (\ s a -> s{_acflAccountId = a})

instance GoogleRequest AccountsContainersFoldersList
         where
        type Rs AccountsContainersFoldersList =
             ListFoldersResponse
        type Scopes AccountsContainersFoldersList =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient AccountsContainersFoldersList'{..}
          = go _acflAccountId _acflContainerId (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersFoldersListResource)
                      mempty
