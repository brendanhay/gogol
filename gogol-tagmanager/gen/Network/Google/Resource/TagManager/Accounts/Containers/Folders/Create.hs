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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Folders.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a GTM Folder.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersFoldersCreate@.
module Network.Google.Resource.TagManager.Accounts.Containers.Folders.Create
    (
    -- * REST Resource
      AccountsContainersFoldersCreateResource

    -- * Creating a Request
    , accountsContainersFoldersCreate'
    , AccountsContainersFoldersCreate'

    -- * Request Lenses
    , acfcContainerId
    , acfcPayload
    , acfcAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersFoldersCreate@ method which the
-- 'AccountsContainersFoldersCreate'' request conforms to.
type AccountsContainersFoldersCreateResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "folders" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Folder :> Post '[JSON] Folder

-- | Creates a GTM Folder.
--
-- /See:/ 'accountsContainersFoldersCreate'' smart constructor.
data AccountsContainersFoldersCreate' = AccountsContainersFoldersCreate'
    { _acfcContainerId :: !Text
    , _acfcPayload     :: !Folder
    , _acfcAccountId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersFoldersCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acfcContainerId'
--
-- * 'acfcPayload'
--
-- * 'acfcAccountId'
accountsContainersFoldersCreate'
    :: Text -- ^ 'containerId'
    -> Folder -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> AccountsContainersFoldersCreate'
accountsContainersFoldersCreate' pAcfcContainerId_ pAcfcPayload_ pAcfcAccountId_ =
    AccountsContainersFoldersCreate'
    { _acfcContainerId = pAcfcContainerId_
    , _acfcPayload = pAcfcPayload_
    , _acfcAccountId = pAcfcAccountId_
    }

-- | The GTM Container ID.
acfcContainerId :: Lens' AccountsContainersFoldersCreate' Text
acfcContainerId
  = lens _acfcContainerId
      (\ s a -> s{_acfcContainerId = a})

-- | Multipart request metadata.
acfcPayload :: Lens' AccountsContainersFoldersCreate' Folder
acfcPayload
  = lens _acfcPayload (\ s a -> s{_acfcPayload = a})

-- | The GTM Account ID.
acfcAccountId :: Lens' AccountsContainersFoldersCreate' Text
acfcAccountId
  = lens _acfcAccountId
      (\ s a -> s{_acfcAccountId = a})

instance GoogleRequest
         AccountsContainersFoldersCreate' where
        type Rs AccountsContainersFoldersCreate' = Folder
        requestClient AccountsContainersFoldersCreate'{..}
          = go _acfcAccountId _acfcContainerId (Just AltJSON)
              _acfcPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersFoldersCreateResource)
                      mempty
