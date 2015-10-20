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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.MoveFolders.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Moves entities to a GTM Folder.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.move_folders.update@.
module Network.Google.Resource.TagManager.Accounts.Containers.MoveFolders.Update
    (
    -- * REST Resource
      AccountsContainersMoveFoldersUpdateResource

    -- * Creating a Request
    , accountsContainersMoveFoldersUpdate
    , AccountsContainersMoveFoldersUpdate

    -- * Request Lenses
    , acmfuContainerId
    , acmfuTriggerId
    , acmfuVariableId
    , acmfuFolderId
    , acmfuAccountId
    , acmfuTagId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.move_folders.update@ method which the
-- 'AccountsContainersMoveFoldersUpdate' request conforms to.
type AccountsContainersMoveFoldersUpdateResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "move_folders" :>
               Capture "folderId" Text :>
                 QueryParams "triggerId" Text :>
                   QueryParams "variableId" Text :>
                     QueryParams "tagId" Text :>
                       QueryParam "alt" AltJSON :> Put '[JSON] ()

-- | Moves entities to a GTM Folder.
--
-- /See:/ 'accountsContainersMoveFoldersUpdate' smart constructor.
data AccountsContainersMoveFoldersUpdate = AccountsContainersMoveFoldersUpdate
    { _acmfuContainerId :: !Text
    , _acmfuTriggerId   :: !(Maybe [Text])
    , _acmfuVariableId  :: !(Maybe [Text])
    , _acmfuFolderId    :: !Text
    , _acmfuAccountId   :: !Text
    , _acmfuTagId       :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersMoveFoldersUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acmfuContainerId'
--
-- * 'acmfuTriggerId'
--
-- * 'acmfuVariableId'
--
-- * 'acmfuFolderId'
--
-- * 'acmfuAccountId'
--
-- * 'acmfuTagId'
accountsContainersMoveFoldersUpdate
    :: Text -- ^ 'acmfuContainerId'
    -> Text -- ^ 'acmfuFolderId'
    -> Text -- ^ 'acmfuAccountId'
    -> AccountsContainersMoveFoldersUpdate
accountsContainersMoveFoldersUpdate pAcmfuContainerId_ pAcmfuFolderId_ pAcmfuAccountId_ =
    AccountsContainersMoveFoldersUpdate
    { _acmfuContainerId = pAcmfuContainerId_
    , _acmfuTriggerId = Nothing
    , _acmfuVariableId = Nothing
    , _acmfuFolderId = pAcmfuFolderId_
    , _acmfuAccountId = pAcmfuAccountId_
    , _acmfuTagId = Nothing
    }

-- | The GTM Container ID.
acmfuContainerId :: Lens' AccountsContainersMoveFoldersUpdate Text
acmfuContainerId
  = lens _acmfuContainerId
      (\ s a -> s{_acmfuContainerId = a})

-- | The triggers to be moved to the folder.
acmfuTriggerId :: Lens' AccountsContainersMoveFoldersUpdate [Text]
acmfuTriggerId
  = lens _acmfuTriggerId
      (\ s a -> s{_acmfuTriggerId = a})
      . _Default
      . _Coerce

-- | The variables to be moved to the folder.
acmfuVariableId :: Lens' AccountsContainersMoveFoldersUpdate [Text]
acmfuVariableId
  = lens _acmfuVariableId
      (\ s a -> s{_acmfuVariableId = a})
      . _Default
      . _Coerce

-- | The GTM Folder ID.
acmfuFolderId :: Lens' AccountsContainersMoveFoldersUpdate Text
acmfuFolderId
  = lens _acmfuFolderId
      (\ s a -> s{_acmfuFolderId = a})

-- | The GTM Account ID.
acmfuAccountId :: Lens' AccountsContainersMoveFoldersUpdate Text
acmfuAccountId
  = lens _acmfuAccountId
      (\ s a -> s{_acmfuAccountId = a})

-- | The tags to be moved to the folder.
acmfuTagId :: Lens' AccountsContainersMoveFoldersUpdate [Text]
acmfuTagId
  = lens _acmfuTagId (\ s a -> s{_acmfuTagId = a}) .
      _Default
      . _Coerce

instance GoogleRequest
         AccountsContainersMoveFoldersUpdate where
        type Rs AccountsContainersMoveFoldersUpdate = ()
        requestClient AccountsContainersMoveFoldersUpdate{..}
          = go _acmfuAccountId _acmfuContainerId _acmfuFolderId
              (_acmfuTriggerId ^. _Default)
              (_acmfuVariableId ^. _Default)
              (_acmfuTagId ^. _Default)
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersMoveFoldersUpdateResource)
                      mempty
