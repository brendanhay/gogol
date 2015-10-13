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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Triggers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all GTM Triggers of a Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersTriggersList@.
module Network.Google.Resource.TagManager.Accounts.Containers.Triggers.List
    (
    -- * REST Resource
      AccountsContainersTriggersListResource

    -- * Creating a Request
    , accountsContainersTriggersList'
    , AccountsContainersTriggersList'

    -- * Request Lenses
    , actlContainerId
    , actlAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersTriggersList@ method which the
-- 'AccountsContainersTriggersList'' request conforms to.
type AccountsContainersTriggersListResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "triggers" :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] ListTriggersResponse

-- | Lists all GTM Triggers of a Container.
--
-- /See:/ 'accountsContainersTriggersList'' smart constructor.
data AccountsContainersTriggersList' = AccountsContainersTriggersList'
    { _actlContainerId :: !Text
    , _actlAccountId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersTriggersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actlContainerId'
--
-- * 'actlAccountId'
accountsContainersTriggersList'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersTriggersList'
accountsContainersTriggersList' pActlContainerId_ pActlAccountId_ =
    AccountsContainersTriggersList'
    { _actlContainerId = pActlContainerId_
    , _actlAccountId = pActlAccountId_
    }

-- | The GTM Container ID.
actlContainerId :: Lens' AccountsContainersTriggersList' Text
actlContainerId
  = lens _actlContainerId
      (\ s a -> s{_actlContainerId = a})

-- | The GTM Account ID.
actlAccountId :: Lens' AccountsContainersTriggersList' Text
actlAccountId
  = lens _actlAccountId
      (\ s a -> s{_actlAccountId = a})

instance GoogleRequest
         AccountsContainersTriggersList' where
        type Rs AccountsContainersTriggersList' =
             ListTriggersResponse
        requestClient AccountsContainersTriggersList'{..}
          = go _actlAccountId _actlContainerId (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersTriggersListResource)
                      mempty
