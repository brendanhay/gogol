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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Environments.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a GTM Environment.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.environments.delete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Environments.Delete
    (
    -- * REST Resource
      AccountsContainersEnvironmentsDeleteResource

    -- * Creating a Request
    , accountsContainersEnvironmentsDelete
    , AccountsContainersEnvironmentsDelete

    -- * Request Lenses
    , acedContainerId
    , acedAccountId
    , acedEnvironmentId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.environments.delete@ method which the
-- 'AccountsContainersEnvironmentsDelete' request conforms to.
type AccountsContainersEnvironmentsDeleteResource =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "environments" :>
                   Capture "environmentId" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a GTM Environment.
--
-- /See:/ 'accountsContainersEnvironmentsDelete' smart constructor.
data AccountsContainersEnvironmentsDelete = AccountsContainersEnvironmentsDelete'
    { _acedContainerId   :: !Text
    , _acedAccountId     :: !Text
    , _acedEnvironmentId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersEnvironmentsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acedContainerId'
--
-- * 'acedAccountId'
--
-- * 'acedEnvironmentId'
accountsContainersEnvironmentsDelete
    :: Text -- ^ 'acedContainerId'
    -> Text -- ^ 'acedAccountId'
    -> Text -- ^ 'acedEnvironmentId'
    -> AccountsContainersEnvironmentsDelete
accountsContainersEnvironmentsDelete pAcedContainerId_ pAcedAccountId_ pAcedEnvironmentId_ =
    AccountsContainersEnvironmentsDelete'
    { _acedContainerId = pAcedContainerId_
    , _acedAccountId = pAcedAccountId_
    , _acedEnvironmentId = pAcedEnvironmentId_
    }

-- | The GTM Container ID.
acedContainerId :: Lens' AccountsContainersEnvironmentsDelete Text
acedContainerId
  = lens _acedContainerId
      (\ s a -> s{_acedContainerId = a})

-- | The GTM Account ID.
acedAccountId :: Lens' AccountsContainersEnvironmentsDelete Text
acedAccountId
  = lens _acedAccountId
      (\ s a -> s{_acedAccountId = a})

-- | The GTM Environment ID.
acedEnvironmentId :: Lens' AccountsContainersEnvironmentsDelete Text
acedEnvironmentId
  = lens _acedEnvironmentId
      (\ s a -> s{_acedEnvironmentId = a})

instance GoogleRequest
         AccountsContainersEnvironmentsDelete where
        type Rs AccountsContainersEnvironmentsDelete = ()
        type Scopes AccountsContainersEnvironmentsDelete =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersEnvironmentsDelete'{..}
          = go _acedAccountId _acedContainerId
              _acedEnvironmentId
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersEnvironmentsDeleteResource)
                      mempty
