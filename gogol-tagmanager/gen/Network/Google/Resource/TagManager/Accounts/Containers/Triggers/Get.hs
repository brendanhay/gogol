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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a GTM Trigger.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersTriggersGet@.
module Network.Google.Resource.TagManager.Accounts.Containers.Triggers.Get
    (
    -- * REST Resource
      AccountsContainersTriggersGetResource

    -- * Creating a Request
    , accountsContainersTriggersGet'
    , AccountsContainersTriggersGet'

    -- * Request Lenses
    , actgContainerId
    , actgTriggerId
    , actgAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersTriggersGet@ method which the
-- 'AccountsContainersTriggersGet'' request conforms to.
type AccountsContainersTriggersGetResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "triggers" :>
               Capture "triggerId" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Trigger

-- | Gets a GTM Trigger.
--
-- /See:/ 'accountsContainersTriggersGet'' smart constructor.
data AccountsContainersTriggersGet' = AccountsContainersTriggersGet'
    { _actgContainerId :: !Text
    , _actgTriggerId   :: !Text
    , _actgAccountId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersTriggersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actgContainerId'
--
-- * 'actgTriggerId'
--
-- * 'actgAccountId'
accountsContainersTriggersGet'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'triggerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersTriggersGet'
accountsContainersTriggersGet' pActgContainerId_ pActgTriggerId_ pActgAccountId_ =
    AccountsContainersTriggersGet'
    { _actgContainerId = pActgContainerId_
    , _actgTriggerId = pActgTriggerId_
    , _actgAccountId = pActgAccountId_
    }

-- | The GTM Container ID.
actgContainerId :: Lens' AccountsContainersTriggersGet' Text
actgContainerId
  = lens _actgContainerId
      (\ s a -> s{_actgContainerId = a})

-- | The GTM Trigger ID.
actgTriggerId :: Lens' AccountsContainersTriggersGet' Text
actgTriggerId
  = lens _actgTriggerId
      (\ s a -> s{_actgTriggerId = a})

-- | The GTM Account ID.
actgAccountId :: Lens' AccountsContainersTriggersGet' Text
actgAccountId
  = lens _actgAccountId
      (\ s a -> s{_actgAccountId = a})

instance GoogleRequest AccountsContainersTriggersGet'
         where
        type Rs AccountsContainersTriggersGet' = Trigger
        requestClient AccountsContainersTriggersGet'{..}
          = go _actgAccountId _actgContainerId _actgTriggerId
              (Just AltJSON)
              tagManager
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersTriggersGetResource)
                      mempty
