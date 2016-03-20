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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Folders.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a GTM Folder.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.folders.update@.
module Network.Google.Resource.TagManager.Accounts.Containers.Folders.Update
    (
    -- * REST Resource
      AccountsContainersFoldersUpdateResource

    -- * Creating a Request
    , accountsContainersFoldersUpdate
    , AccountsContainersFoldersUpdate

    -- * Request Lenses
    , acfuContainerId
    , acfuFingerprint
    , acfuFolderId
    , acfuPayload
    , acfuAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.folders.update@ method which the
-- 'AccountsContainersFoldersUpdate' request conforms to.
type AccountsContainersFoldersUpdateResource =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "folders" :>
                   Capture "folderId" Text :>
                     QueryParam "fingerprint" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Folder :> Put '[JSON] Folder

-- | Updates a GTM Folder.
--
-- /See:/ 'accountsContainersFoldersUpdate' smart constructor.
data AccountsContainersFoldersUpdate = AccountsContainersFoldersUpdate
    { _acfuContainerId :: !Text
    , _acfuFingerprint :: !(Maybe Text)
    , _acfuFolderId    :: !Text
    , _acfuPayload     :: !Folder
    , _acfuAccountId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersFoldersUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acfuContainerId'
--
-- * 'acfuFingerprint'
--
-- * 'acfuFolderId'
--
-- * 'acfuPayload'
--
-- * 'acfuAccountId'
accountsContainersFoldersUpdate
    :: Text -- ^ 'acfuContainerId'
    -> Text -- ^ 'acfuFolderId'
    -> Folder -- ^ 'acfuPayload'
    -> Text -- ^ 'acfuAccountId'
    -> AccountsContainersFoldersUpdate
accountsContainersFoldersUpdate pAcfuContainerId_ pAcfuFolderId_ pAcfuPayload_ pAcfuAccountId_ =
    AccountsContainersFoldersUpdate
    { _acfuContainerId = pAcfuContainerId_
    , _acfuFingerprint = Nothing
    , _acfuFolderId = pAcfuFolderId_
    , _acfuPayload = pAcfuPayload_
    , _acfuAccountId = pAcfuAccountId_
    }

-- | The GTM Container ID.
acfuContainerId :: Lens' AccountsContainersFoldersUpdate Text
acfuContainerId
  = lens _acfuContainerId
      (\ s a -> s{_acfuContainerId = a})

-- | When provided, this fingerprint must match the fingerprint of the folder
-- in storage.
acfuFingerprint :: Lens' AccountsContainersFoldersUpdate (Maybe Text)
acfuFingerprint
  = lens _acfuFingerprint
      (\ s a -> s{_acfuFingerprint = a})

-- | The GTM Folder ID.
acfuFolderId :: Lens' AccountsContainersFoldersUpdate Text
acfuFolderId
  = lens _acfuFolderId (\ s a -> s{_acfuFolderId = a})

-- | Multipart request metadata.
acfuPayload :: Lens' AccountsContainersFoldersUpdate Folder
acfuPayload
  = lens _acfuPayload (\ s a -> s{_acfuPayload = a})

-- | The GTM Account ID.
acfuAccountId :: Lens' AccountsContainersFoldersUpdate Text
acfuAccountId
  = lens _acfuAccountId
      (\ s a -> s{_acfuAccountId = a})

instance GoogleRequest
         AccountsContainersFoldersUpdate where
        type Rs AccountsContainersFoldersUpdate = Folder
        requestClient AccountsContainersFoldersUpdate{..}
          = go _acfuAccountId _acfuContainerId _acfuFolderId
              _acfuFingerprint
              (Just AltJSON)
              _acfuPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersFoldersUpdateResource)
                      mempty
