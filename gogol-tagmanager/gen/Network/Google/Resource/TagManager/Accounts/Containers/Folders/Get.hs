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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Folders.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a GTM Folder.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersFoldersGet@.
module Network.Google.Resource.TagManager.Accounts.Containers.Folders.Get
    (
    -- * REST Resource
      AccountsContainersFoldersGetResource

    -- * Creating a Request
    , accountsContainersFoldersGet'
    , AccountsContainersFoldersGet'

    -- * Request Lenses
    , acfgContainerId
    , acfgFolderId
    , acfgAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersFoldersGet@ method which the
-- 'AccountsContainersFoldersGet'' request conforms to.
type AccountsContainersFoldersGetResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "folders" :>
               Capture "folderId" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Folder

-- | Gets a GTM Folder.
--
-- /See:/ 'accountsContainersFoldersGet'' smart constructor.
data AccountsContainersFoldersGet' = AccountsContainersFoldersGet'
    { _acfgContainerId :: !Text
    , _acfgFolderId    :: !Text
    , _acfgAccountId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersFoldersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acfgContainerId'
--
-- * 'acfgFolderId'
--
-- * 'acfgAccountId'
accountsContainersFoldersGet'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'folderId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersFoldersGet'
accountsContainersFoldersGet' pAcfgContainerId_ pAcfgFolderId_ pAcfgAccountId_ =
    AccountsContainersFoldersGet'
    { _acfgContainerId = pAcfgContainerId_
    , _acfgFolderId = pAcfgFolderId_
    , _acfgAccountId = pAcfgAccountId_
    }

-- | The GTM Container ID.
acfgContainerId :: Lens' AccountsContainersFoldersGet' Text
acfgContainerId
  = lens _acfgContainerId
      (\ s a -> s{_acfgContainerId = a})

-- | The GTM Folder ID.
acfgFolderId :: Lens' AccountsContainersFoldersGet' Text
acfgFolderId
  = lens _acfgFolderId (\ s a -> s{_acfgFolderId = a})

-- | The GTM Account ID.
acfgAccountId :: Lens' AccountsContainersFoldersGet' Text
acfgAccountId
  = lens _acfgAccountId
      (\ s a -> s{_acfgAccountId = a})

instance GoogleRequest AccountsContainersFoldersGet'
         where
        type Rs AccountsContainersFoldersGet' = Folder
        requestClient AccountsContainersFoldersGet'{..}
          = go _acfgAccountId _acfgContainerId _acfgFolderId
              (Just AltJSON)
              tagManager
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsContainersFoldersGetResource)
                      mempty
