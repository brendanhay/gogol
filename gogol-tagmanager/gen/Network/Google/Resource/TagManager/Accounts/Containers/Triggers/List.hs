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
-- Lists all GTM Triggers of a Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.triggers.list@.
module Network.Google.Resource.TagManager.Accounts.Containers.Triggers.List
    (
    -- * REST Resource
      AccountsContainersTriggersListResource

    -- * Creating a Request
    , accountsContainersTriggersList
    , AccountsContainersTriggersList

    -- * Request Lenses
    , actlcContainerId
    , actlcAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.triggers.list@ method which the
-- 'AccountsContainersTriggersList' request conforms to.
type AccountsContainersTriggersListResource =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "triggers" :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] ListTriggersResponse

-- | Lists all GTM Triggers of a Container.
--
-- /See:/ 'accountsContainersTriggersList' smart constructor.
data AccountsContainersTriggersList = AccountsContainersTriggersList
    { _actlcContainerId :: !Text
    , _actlcAccountId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersTriggersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actlcContainerId'
--
-- * 'actlcAccountId'
accountsContainersTriggersList
    :: Text -- ^ 'actlcContainerId'
    -> Text -- ^ 'actlcAccountId'
    -> AccountsContainersTriggersList
accountsContainersTriggersList pActlcContainerId_ pActlcAccountId_ =
    AccountsContainersTriggersList
    { _actlcContainerId = pActlcContainerId_
    , _actlcAccountId = pActlcAccountId_
    }

-- | The GTM Container ID.
actlcContainerId :: Lens' AccountsContainersTriggersList Text
actlcContainerId
  = lens _actlcContainerId
      (\ s a -> s{_actlcContainerId = a})

-- | The GTM Account ID.
actlcAccountId :: Lens' AccountsContainersTriggersList Text
actlcAccountId
  = lens _actlcAccountId
      (\ s a -> s{_actlcAccountId = a})

instance GoogleRequest AccountsContainersTriggersList
         where
        type Rs AccountsContainersTriggersList =
             ListTriggersResponse
        requestClient AccountsContainersTriggersList{..}
          = go _actlcAccountId _actlcContainerId (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersTriggersListResource)
                      mempty
