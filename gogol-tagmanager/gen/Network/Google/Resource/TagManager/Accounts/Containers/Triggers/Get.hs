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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Triggers.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a GTM Trigger.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.triggers.get@.
module Network.Google.Resource.TagManager.Accounts.Containers.Triggers.Get
    (
    -- * REST Resource
      AccountsContainersTriggersGetResource

    -- * Creating a Request
    , accountsContainersTriggersGet
    , AccountsContainersTriggersGet

    -- * Request Lenses
    , actgcContainerId
    , actgcTriggerId
    , actgcAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.triggers.get@ method which the
-- 'AccountsContainersTriggersGet' request conforms to.
type AccountsContainersTriggersGetResource =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "triggers" :>
                   Capture "triggerId" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Trigger

-- | Gets a GTM Trigger.
--
-- /See:/ 'accountsContainersTriggersGet' smart constructor.
data AccountsContainersTriggersGet = AccountsContainersTriggersGet
    { _actgcContainerId :: !Text
    , _actgcTriggerId   :: !Text
    , _actgcAccountId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersTriggersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actgcContainerId'
--
-- * 'actgcTriggerId'
--
-- * 'actgcAccountId'
accountsContainersTriggersGet
    :: Text -- ^ 'actgcContainerId'
    -> Text -- ^ 'actgcTriggerId'
    -> Text -- ^ 'actgcAccountId'
    -> AccountsContainersTriggersGet
accountsContainersTriggersGet pActgcContainerId_ pActgcTriggerId_ pActgcAccountId_ =
    AccountsContainersTriggersGet
    { _actgcContainerId = pActgcContainerId_
    , _actgcTriggerId = pActgcTriggerId_
    , _actgcAccountId = pActgcAccountId_
    }

-- | The GTM Container ID.
actgcContainerId :: Lens' AccountsContainersTriggersGet Text
actgcContainerId
  = lens _actgcContainerId
      (\ s a -> s{_actgcContainerId = a})

-- | The GTM Trigger ID.
actgcTriggerId :: Lens' AccountsContainersTriggersGet Text
actgcTriggerId
  = lens _actgcTriggerId
      (\ s a -> s{_actgcTriggerId = a})

-- | The GTM Account ID.
actgcAccountId :: Lens' AccountsContainersTriggersGet Text
actgcAccountId
  = lens _actgcAccountId
      (\ s a -> s{_actgcAccountId = a})

instance GoogleRequest AccountsContainersTriggersGet
         where
        type Rs AccountsContainersTriggersGet = Trigger
        type Scopes AccountsContainersTriggersGet =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient AccountsContainersTriggersGet{..}
          = go _actgcAccountId _actgcContainerId
              _actgcTriggerId
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersTriggersGetResource)
                      mempty
